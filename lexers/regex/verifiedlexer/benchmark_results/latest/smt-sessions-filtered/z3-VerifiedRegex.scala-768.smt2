; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43006 () Bool)

(assert start!43006)

(declare-fun b!454206 () Bool)

(declare-fun b_free!12673 () Bool)

(declare-fun b_next!12673 () Bool)

(assert (=> b!454206 (= b_free!12673 (not b_next!12673))))

(declare-fun tp!126314 () Bool)

(declare-fun b_and!48785 () Bool)

(assert (=> b!454206 (= tp!126314 b_and!48785)))

(declare-fun b_free!12675 () Bool)

(declare-fun b_next!12675 () Bool)

(assert (=> b!454206 (= b_free!12675 (not b_next!12675))))

(declare-fun tp!126317 () Bool)

(declare-fun b_and!48787 () Bool)

(assert (=> b!454206 (= tp!126317 b_and!48787)))

(declare-fun b!454224 () Bool)

(declare-fun b_free!12677 () Bool)

(declare-fun b_next!12677 () Bool)

(assert (=> b!454224 (= b_free!12677 (not b_next!12677))))

(declare-fun tp!126324 () Bool)

(declare-fun b_and!48789 () Bool)

(assert (=> b!454224 (= tp!126324 b_and!48789)))

(declare-fun b_free!12679 () Bool)

(declare-fun b_next!12679 () Bool)

(assert (=> b!454224 (= b_free!12679 (not b_next!12679))))

(declare-fun tp!126316 () Bool)

(declare-fun b_and!48791 () Bool)

(assert (=> b!454224 (= tp!126316 b_and!48791)))

(declare-fun b!454228 () Bool)

(declare-fun b_free!12681 () Bool)

(declare-fun b_next!12681 () Bool)

(assert (=> b!454228 (= b_free!12681 (not b_next!12681))))

(declare-fun tp!126321 () Bool)

(declare-fun b_and!48793 () Bool)

(assert (=> b!454228 (= tp!126321 b_and!48793)))

(declare-fun b_free!12683 () Bool)

(declare-fun b_next!12683 () Bool)

(assert (=> b!454228 (= b_free!12683 (not b_next!12683))))

(declare-fun tp!126319 () Bool)

(declare-fun b_and!48795 () Bool)

(assert (=> b!454228 (= tp!126319 b_and!48795)))

(declare-fun bs!56146 () Bool)

(declare-fun b!454217 () Bool)

(declare-fun b!454216 () Bool)

(assert (= bs!56146 (and b!454217 b!454216)))

(declare-fun lambda!13278 () Int)

(declare-fun lambda!13277 () Int)

(assert (=> bs!56146 (not (= lambda!13278 lambda!13277))))

(declare-fun b!454244 () Bool)

(declare-fun e!277964 () Bool)

(assert (=> b!454244 (= e!277964 true)))

(declare-fun b!454243 () Bool)

(declare-fun e!277963 () Bool)

(assert (=> b!454243 (= e!277963 e!277964)))

(declare-fun b!454242 () Bool)

(declare-fun e!277962 () Bool)

(assert (=> b!454242 (= e!277962 e!277963)))

(assert (=> b!454217 e!277962))

(assert (= b!454243 b!454244))

(assert (= b!454242 b!454243))

(declare-datatypes ((List!4430 0))(
  ( (Nil!4420) (Cons!4420 (h!9817 (_ BitVec 16)) (t!71130 List!4430)) )
))
(declare-datatypes ((TokenValue!881 0))(
  ( (FloatLiteralValue!1762 (text!6612 List!4430)) (TokenValueExt!880 (__x!3249 Int)) (Broken!4405 (value!28771 List!4430)) (Object!890) (End!881) (Def!881) (Underscore!881) (Match!881) (Else!881) (Error!881) (Case!881) (If!881) (Extends!881) (Abstract!881) (Class!881) (Val!881) (DelimiterValue!1762 (del!941 List!4430)) (KeywordValue!887 (value!28772 List!4430)) (CommentValue!1762 (value!28773 List!4430)) (WhitespaceValue!1762 (value!28774 List!4430)) (IndentationValue!881 (value!28775 List!4430)) (String!5484) (Int32!881) (Broken!4406 (value!28776 List!4430)) (Boolean!882) (Unit!7960) (OperatorValue!884 (op!941 List!4430)) (IdentifierValue!1762 (value!28777 List!4430)) (IdentifierValue!1763 (value!28778 List!4430)) (WhitespaceValue!1763 (value!28779 List!4430)) (True!1762) (False!1762) (Broken!4407 (value!28780 List!4430)) (Broken!4408 (value!28781 List!4430)) (True!1763) (RightBrace!881) (RightBracket!881) (Colon!881) (Null!881) (Comma!881) (LeftBracket!881) (False!1763) (LeftBrace!881) (ImaginaryLiteralValue!881 (text!6613 List!4430)) (StringLiteralValue!2643 (value!28782 List!4430)) (EOFValue!881 (value!28783 List!4430)) (IdentValue!881 (value!28784 List!4430)) (DelimiterValue!1763 (value!28785 List!4430)) (DedentValue!881 (value!28786 List!4430)) (NewLineValue!881 (value!28787 List!4430)) (IntegerValue!2643 (value!28788 (_ BitVec 32)) (text!6614 List!4430)) (IntegerValue!2644 (value!28789 Int) (text!6615 List!4430)) (Times!881) (Or!881) (Equal!881) (Minus!881) (Broken!4409 (value!28790 List!4430)) (And!881) (Div!881) (LessEqual!881) (Mod!881) (Concat!1964) (Not!881) (Plus!881) (SpaceValue!881 (value!28791 List!4430)) (IntegerValue!2645 (value!28792 Int) (text!6616 List!4430)) (StringLiteralValue!2644 (text!6617 List!4430)) (FloatLiteralValue!1763 (text!6618 List!4430)) (BytesLiteralValue!881 (value!28793 List!4430)) (CommentValue!1763 (value!28794 List!4430)) (StringLiteralValue!2645 (value!28795 List!4430)) (ErrorTokenValue!881 (msg!942 List!4430)) )
))
(declare-datatypes ((C!3088 0))(
  ( (C!3089 (val!1430 Int)) )
))
(declare-datatypes ((List!4431 0))(
  ( (Nil!4421) (Cons!4421 (h!9818 C!3088) (t!71131 List!4431)) )
))
(declare-datatypes ((IArray!3081 0))(
  ( (IArray!3082 (innerList!1598 List!4431)) )
))
(declare-datatypes ((Conc!1540 0))(
  ( (Node!1540 (left!3728 Conc!1540) (right!4058 Conc!1540) (csize!3310 Int) (cheight!1751 Int)) (Leaf!2309 (xs!4171 IArray!3081) (csize!3311 Int)) (Empty!1540) )
))
(declare-datatypes ((BalanceConc!3088 0))(
  ( (BalanceConc!3089 (c!91744 Conc!1540)) )
))
(declare-datatypes ((TokenValueInjection!1534 0))(
  ( (TokenValueInjection!1535 (toValue!1674 Int) (toChars!1533 Int)) )
))
(declare-datatypes ((String!5485 0))(
  ( (String!5486 (value!28796 String)) )
))
(declare-datatypes ((Regex!1083 0))(
  ( (ElementMatch!1083 (c!91745 C!3088)) (Concat!1965 (regOne!2678 Regex!1083) (regTwo!2678 Regex!1083)) (EmptyExpr!1083) (Star!1083 (reg!1412 Regex!1083)) (EmptyLang!1083) (Union!1083 (regOne!2679 Regex!1083) (regTwo!2679 Regex!1083)) )
))
(declare-datatypes ((Rule!1518 0))(
  ( (Rule!1519 (regex!859 Regex!1083) (tag!1119 String!5485) (isSeparator!859 Bool) (transformation!859 TokenValueInjection!1534)) )
))
(declare-datatypes ((List!4432 0))(
  ( (Nil!4422) (Cons!4422 (h!9819 Rule!1518) (t!71132 List!4432)) )
))
(declare-fun rules!1920 () List!4432)

(get-info :version)

(assert (= (and b!454217 ((_ is Cons!4422) rules!1920)) b!454242))

(declare-fun order!3907 () Int)

(declare-fun order!3905 () Int)

(declare-fun dynLambda!2674 (Int Int) Int)

(declare-fun dynLambda!2675 (Int Int) Int)

(assert (=> b!454244 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13278))))

(declare-fun order!3909 () Int)

(declare-fun dynLambda!2676 (Int Int) Int)

(assert (=> b!454244 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13278))))

(assert (=> b!454217 true))

(declare-fun lt!202023 () List!4431)

(declare-fun b!454201 () Bool)

(declare-fun lt!202021 () List!4431)

(declare-fun lt!202016 () List!4431)

(declare-fun e!277941 () Bool)

(declare-fun ++!1284 (List!4431 List!4431) List!4431)

(assert (=> b!454201 (= e!277941 (not (= lt!202016 (++!1284 lt!202023 lt!202021))))))

(declare-fun b!454202 () Bool)

(declare-fun e!277943 () Bool)

(declare-fun e!277942 () Bool)

(assert (=> b!454202 (= e!277943 e!277942)))

(declare-fun res!201945 () Bool)

(assert (=> b!454202 (=> (not res!201945) (not e!277942))))

(declare-datatypes ((Token!1462 0))(
  ( (Token!1463 (value!28797 TokenValue!881) (rule!1550 Rule!1518) (size!3619 Int) (originalCharacters!902 List!4431)) )
))
(declare-datatypes ((tuple2!5370 0))(
  ( (tuple2!5371 (_1!2901 Token!1462) (_2!2901 List!4431)) )
))
(declare-datatypes ((Option!1150 0))(
  ( (None!1149) (Some!1149 (v!15470 tuple2!5370)) )
))
(declare-fun lt!202018 () Option!1150)

(declare-fun isDefined!989 (Option!1150) Bool)

(assert (=> b!454202 (= res!201945 (isDefined!989 lt!202018))))

(declare-datatypes ((LexerInterface!745 0))(
  ( (LexerInterfaceExt!742 (__x!3250 Int)) (Lexer!743) )
))
(declare-fun thiss!17480 () LexerInterface!745)

(declare-fun maxPrefix!461 (LexerInterface!745 List!4432 List!4431) Option!1150)

(assert (=> b!454202 (= lt!202018 (maxPrefix!461 thiss!17480 rules!1920 lt!202016))))

(declare-fun e!277948 () Bool)

(declare-datatypes ((List!4433 0))(
  ( (Nil!4423) (Cons!4423 (h!9820 Token!1462) (t!71133 List!4433)) )
))
(declare-fun tokens!465 () List!4433)

(declare-fun tp!126325 () Bool)

(declare-fun b!454203 () Bool)

(declare-fun e!277930 () Bool)

(declare-fun inv!5492 (String!5485) Bool)

(declare-fun inv!5495 (TokenValueInjection!1534) Bool)

(assert (=> b!454203 (= e!277948 (and tp!126325 (inv!5492 (tag!1119 (rule!1550 (h!9820 tokens!465)))) (inv!5495 (transformation!859 (rule!1550 (h!9820 tokens!465)))) e!277930))))

(declare-fun tp!126322 () Bool)

(declare-fun e!277949 () Bool)

(declare-fun b!454204 () Bool)

(declare-fun e!277937 () Bool)

(declare-fun inv!5496 (Token!1462) Bool)

(assert (=> b!454204 (= e!277949 (and (inv!5496 (h!9820 tokens!465)) e!277937 tp!126322))))

(declare-fun b!454205 () Bool)

(declare-fun e!277944 () Bool)

(declare-fun e!277935 () Bool)

(assert (=> b!454205 (= e!277944 (not e!277935))))

(declare-fun res!201956 () Bool)

(assert (=> b!454205 (=> res!201956 e!277935)))

(declare-fun separatorToken!170 () Token!1462)

(declare-datatypes ((IArray!3083 0))(
  ( (IArray!3084 (innerList!1599 List!4433)) )
))
(declare-datatypes ((Conc!1541 0))(
  ( (Node!1541 (left!3729 Conc!1541) (right!4059 Conc!1541) (csize!3312 Int) (cheight!1752 Int)) (Leaf!2310 (xs!4172 IArray!3083) (csize!3313 Int)) (Empty!1541) )
))
(declare-datatypes ((BalanceConc!3090 0))(
  ( (BalanceConc!3091 (c!91746 Conc!1541)) )
))
(declare-fun lt!202020 () BalanceConc!3090)

(declare-fun list!1959 (BalanceConc!3088) List!4431)

(declare-fun printWithSeparatorTokenWhenNeededRec!418 (LexerInterface!745 List!4432 BalanceConc!3090 Token!1462 Int) BalanceConc!3088)

(assert (=> b!454205 (= res!201956 (not (= lt!202021 (list!1959 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 0)))))))

(declare-fun seqFromList!1083 (List!4433) BalanceConc!3090)

(assert (=> b!454205 (= lt!202020 (seqFromList!1083 (t!71133 tokens!465)))))

(declare-fun lt!202017 () List!4431)

(declare-fun lt!202025 () List!4431)

(assert (=> b!454205 (= lt!202017 lt!202025)))

(declare-fun lt!202030 () List!4431)

(assert (=> b!454205 (= lt!202025 (++!1284 lt!202023 lt!202030))))

(declare-fun lt!202032 () List!4431)

(assert (=> b!454205 (= lt!202017 (++!1284 (++!1284 lt!202023 lt!202032) lt!202021))))

(declare-datatypes ((Unit!7961 0))(
  ( (Unit!7962) )
))
(declare-fun lt!202027 () Unit!7961)

(declare-fun lemmaConcatAssociativity!594 (List!4431 List!4431 List!4431) Unit!7961)

(assert (=> b!454205 (= lt!202027 (lemmaConcatAssociativity!594 lt!202023 lt!202032 lt!202021))))

(declare-fun charsOf!502 (Token!1462) BalanceConc!3088)

(assert (=> b!454205 (= lt!202023 (list!1959 (charsOf!502 (h!9820 tokens!465))))))

(assert (=> b!454205 (= lt!202030 (++!1284 lt!202032 lt!202021))))

(declare-fun printWithSeparatorTokenWhenNeededList!426 (LexerInterface!745 List!4432 List!4433 Token!1462) List!4431)

(assert (=> b!454205 (= lt!202021 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (t!71133 tokens!465) separatorToken!170))))

(assert (=> b!454205 (= lt!202032 (list!1959 (charsOf!502 separatorToken!170)))))

(declare-fun res!201939 () Bool)

(declare-fun e!277954 () Bool)

(assert (=> start!43006 (=> (not res!201939) (not e!277954))))

(assert (=> start!43006 (= res!201939 ((_ is Lexer!743) thiss!17480))))

(assert (=> start!43006 e!277954))

(assert (=> start!43006 true))

(declare-fun e!277945 () Bool)

(assert (=> start!43006 e!277945))

(declare-fun e!277929 () Bool)

(assert (=> start!43006 (and (inv!5496 separatorToken!170) e!277929)))

(assert (=> start!43006 e!277949))

(declare-fun e!277947 () Bool)

(assert (=> b!454206 (= e!277947 (and tp!126314 tp!126317))))

(declare-fun b!454207 () Bool)

(declare-fun res!201958 () Bool)

(declare-fun e!277940 () Bool)

(assert (=> b!454207 (=> (not res!201958) (not e!277940))))

(declare-fun rulesProduceIndividualToken!494 (LexerInterface!745 List!4432 Token!1462) Bool)

(assert (=> b!454207 (= res!201958 (rulesProduceIndividualToken!494 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!126323 () Bool)

(declare-fun b!454208 () Bool)

(declare-fun inv!21 (TokenValue!881) Bool)

(assert (=> b!454208 (= e!277937 (and (inv!21 (value!28797 (h!9820 tokens!465))) e!277948 tp!126323))))

(declare-fun b!454209 () Bool)

(declare-fun e!277934 () Bool)

(assert (=> b!454209 (= e!277935 e!277934)))

(declare-fun res!201941 () Bool)

(assert (=> b!454209 (=> res!201941 e!277934)))

(assert (=> b!454209 (= res!201941 e!277941)))

(declare-fun res!201953 () Bool)

(assert (=> b!454209 (=> (not res!201953) (not e!277941))))

(declare-fun lt!202013 () Bool)

(assert (=> b!454209 (= res!201953 (not lt!202013))))

(assert (=> b!454209 (= lt!202013 (= lt!202016 lt!202025))))

(declare-fun b!454210 () Bool)

(declare-fun e!277933 () Bool)

(assert (=> b!454210 (= e!277934 e!277933)))

(declare-fun res!201942 () Bool)

(assert (=> b!454210 (=> res!201942 e!277933)))

(declare-fun lt!202024 () List!4431)

(declare-fun lt!202014 () List!4431)

(assert (=> b!454210 (= res!201942 (or (not (= lt!202014 lt!202024)) (not (= lt!202024 lt!202023)) (not (= lt!202014 lt!202023))))))

(declare-fun printList!419 (LexerInterface!745 List!4433) List!4431)

(assert (=> b!454210 (= lt!202024 (printList!419 thiss!17480 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))

(declare-fun lt!202028 () BalanceConc!3088)

(assert (=> b!454210 (= lt!202014 (list!1959 lt!202028))))

(declare-fun lt!202031 () BalanceConc!3090)

(declare-fun printTailRec!431 (LexerInterface!745 BalanceConc!3090 Int BalanceConc!3088) BalanceConc!3088)

(assert (=> b!454210 (= lt!202028 (printTailRec!431 thiss!17480 lt!202031 0 (BalanceConc!3089 Empty!1540)))))

(declare-fun print!470 (LexerInterface!745 BalanceConc!3090) BalanceConc!3088)

(assert (=> b!454210 (= lt!202028 (print!470 thiss!17480 lt!202031))))

(declare-fun singletonSeq!405 (Token!1462) BalanceConc!3090)

(assert (=> b!454210 (= lt!202031 (singletonSeq!405 (h!9820 tokens!465)))))

(declare-fun e!277955 () Bool)

(declare-fun tp!126318 () Bool)

(declare-fun b!454211 () Bool)

(assert (=> b!454211 (= e!277955 (and tp!126318 (inv!5492 (tag!1119 (h!9819 rules!1920))) (inv!5495 (transformation!859 (h!9819 rules!1920))) e!277947))))

(declare-fun b!454212 () Bool)

(declare-fun res!201957 () Bool)

(assert (=> b!454212 (=> (not res!201957) (not e!277940))))

(assert (=> b!454212 (= res!201957 (isSeparator!859 (rule!1550 separatorToken!170)))))

(declare-fun b!454213 () Bool)

(declare-fun res!201949 () Bool)

(assert (=> b!454213 (=> (not res!201949) (not e!277940))))

(declare-fun sepAndNonSepRulesDisjointChars!448 (List!4432 List!4432) Bool)

(assert (=> b!454213 (= res!201949 (sepAndNonSepRulesDisjointChars!448 rules!1920 rules!1920))))

(declare-fun b!454214 () Bool)

(assert (=> b!454214 (= e!277940 e!277944)))

(declare-fun res!201943 () Bool)

(assert (=> b!454214 (=> (not res!201943) (not e!277944))))

(declare-fun lt!202026 () List!4431)

(assert (=> b!454214 (= res!201943 (= lt!202016 lt!202026))))

(declare-fun lt!202015 () BalanceConc!3090)

(assert (=> b!454214 (= lt!202026 (list!1959 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 0)))))

(assert (=> b!454214 (= lt!202016 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!454215 () Bool)

(declare-fun res!201948 () Bool)

(assert (=> b!454215 (=> (not res!201948) (not e!277940))))

(assert (=> b!454215 (= res!201948 ((_ is Cons!4423) tokens!465))))

(declare-fun res!201936 () Bool)

(assert (=> b!454216 (=> (not res!201936) (not e!277940))))

(declare-fun forall!1280 (List!4433 Int) Bool)

(assert (=> b!454216 (= res!201936 (forall!1280 tokens!465 lambda!13277))))

(declare-fun e!277953 () Bool)

(assert (=> b!454217 (= e!277933 e!277953)))

(declare-fun res!201938 () Bool)

(assert (=> b!454217 (=> res!201938 e!277953)))

(declare-datatypes ((tuple2!5372 0))(
  ( (tuple2!5373 (_1!2902 Token!1462) (_2!2902 BalanceConc!3088)) )
))
(declare-datatypes ((Option!1151 0))(
  ( (None!1150) (Some!1150 (v!15471 tuple2!5372)) )
))
(declare-fun isDefined!990 (Option!1151) Bool)

(declare-fun maxPrefixZipperSequence!424 (LexerInterface!745 List!4432 BalanceConc!3088) Option!1151)

(declare-fun seqFromList!1084 (List!4431) BalanceConc!3088)

(assert (=> b!454217 (= res!201938 (not (isDefined!990 (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))

(declare-fun lt!202012 () Unit!7961)

(declare-fun forallContained!412 (List!4433 Int Token!1462) Unit!7961)

(assert (=> b!454217 (= lt!202012 (forallContained!412 tokens!465 lambda!13278 (h!9820 tokens!465)))))

(assert (=> b!454217 (= lt!202023 (originalCharacters!902 (h!9820 tokens!465)))))

(declare-fun b!454218 () Bool)

(declare-fun e!277951 () Bool)

(declare-fun matchR!401 (Regex!1083 List!4431) Bool)

(assert (=> b!454218 (= e!277951 (matchR!401 (regex!859 (rule!1550 (h!9820 tokens!465))) lt!202023))))

(declare-fun b!454219 () Bool)

(assert (=> b!454219 (= e!277954 e!277940)))

(declare-fun res!201955 () Bool)

(assert (=> b!454219 (=> (not res!201955) (not e!277940))))

(declare-fun rulesProduceEachTokenIndividually!537 (LexerInterface!745 List!4432 BalanceConc!3090) Bool)

(assert (=> b!454219 (= res!201955 (rulesProduceEachTokenIndividually!537 thiss!17480 rules!1920 lt!202015))))

(assert (=> b!454219 (= lt!202015 (seqFromList!1083 tokens!465))))

(declare-fun b!454220 () Bool)

(declare-fun e!277936 () Bool)

(assert (=> b!454220 (= e!277936 (rulesProduceEachTokenIndividually!537 thiss!17480 rules!1920 lt!202020))))

(assert (=> b!454220 e!277943))

(declare-fun res!201952 () Bool)

(assert (=> b!454220 (=> res!201952 e!277943)))

(declare-fun isEmpty!3384 (List!4433) Bool)

(assert (=> b!454220 (= res!201952 (isEmpty!3384 tokens!465))))

(declare-fun lt!202022 () Unit!7961)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!260 (LexerInterface!745 List!4432 List!4433 Token!1462) Unit!7961)

(assert (=> b!454220 (= lt!202022 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!260 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!454221 () Bool)

(declare-fun get!1618 (Option!1150) tuple2!5370)

(declare-fun head!1108 (List!4433) Token!1462)

(assert (=> b!454221 (= e!277942 (= (_1!2901 (get!1618 lt!202018)) (head!1108 tokens!465)))))

(declare-fun b!454222 () Bool)

(declare-fun res!201940 () Bool)

(assert (=> b!454222 (=> res!201940 e!277933)))

(declare-fun isEmpty!3385 (BalanceConc!3090) Bool)

(declare-datatypes ((tuple2!5374 0))(
  ( (tuple2!5375 (_1!2903 BalanceConc!3090) (_2!2903 BalanceConc!3088)) )
))
(declare-fun lex!537 (LexerInterface!745 List!4432 BalanceConc!3088) tuple2!5374)

(assert (=> b!454222 (= res!201940 (isEmpty!3385 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023)))))))

(declare-fun b!454223 () Bool)

(declare-fun res!201947 () Bool)

(assert (=> b!454223 (=> (not res!201947) (not e!277951))))

(declare-fun lt!202019 () tuple2!5370)

(declare-fun isEmpty!3386 (List!4431) Bool)

(assert (=> b!454223 (= res!201947 (isEmpty!3386 (_2!2901 lt!202019)))))

(assert (=> b!454224 (= e!277930 (and tp!126324 tp!126316))))

(declare-fun b!454225 () Bool)

(declare-fun tp!126313 () Bool)

(assert (=> b!454225 (= e!277945 (and e!277955 tp!126313))))

(declare-fun b!454226 () Bool)

(declare-fun res!201937 () Bool)

(assert (=> b!454226 (=> (not res!201937) (not e!277944))))

(assert (=> b!454226 (= res!201937 (= (list!1959 (seqFromList!1084 lt!202016)) lt!202026))))

(declare-fun b!454227 () Bool)

(declare-fun res!201951 () Bool)

(assert (=> b!454227 (=> (not res!201951) (not e!277954))))

(declare-fun rulesInvariant!711 (LexerInterface!745 List!4432) Bool)

(assert (=> b!454227 (= res!201951 (rulesInvariant!711 thiss!17480 rules!1920))))

(declare-fun e!277931 () Bool)

(assert (=> b!454228 (= e!277931 (and tp!126321 tp!126319))))

(declare-fun b!454229 () Bool)

(declare-fun res!201946 () Bool)

(assert (=> b!454229 (=> res!201946 e!277933)))

(assert (=> b!454229 (= res!201946 (not (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (h!9820 tokens!465))))))

(declare-fun e!277952 () Bool)

(declare-fun tp!126320 () Bool)

(declare-fun b!454230 () Bool)

(assert (=> b!454230 (= e!277929 (and (inv!21 (value!28797 separatorToken!170)) e!277952 tp!126320))))

(declare-fun b!454231 () Bool)

(declare-fun tp!126315 () Bool)

(assert (=> b!454231 (= e!277952 (and tp!126315 (inv!5492 (tag!1119 (rule!1550 separatorToken!170))) (inv!5495 (transformation!859 (rule!1550 separatorToken!170))) e!277931))))

(declare-fun b!454232 () Bool)

(assert (=> b!454232 (= e!277953 e!277936)))

(declare-fun res!201954 () Bool)

(assert (=> b!454232 (=> res!201954 e!277936)))

(assert (=> b!454232 (= res!201954 lt!202013)))

(assert (=> b!454232 e!277951))

(declare-fun res!201944 () Bool)

(assert (=> b!454232 (=> (not res!201944) (not e!277951))))

(assert (=> b!454232 (= res!201944 (= (_1!2901 lt!202019) (h!9820 tokens!465)))))

(declare-fun lt!202029 () Option!1150)

(assert (=> b!454232 (= lt!202019 (get!1618 lt!202029))))

(assert (=> b!454232 (isDefined!989 lt!202029)))

(assert (=> b!454232 (= lt!202029 (maxPrefix!461 thiss!17480 rules!1920 lt!202023))))

(declare-fun b!454233 () Bool)

(declare-fun res!201950 () Bool)

(assert (=> b!454233 (=> (not res!201950) (not e!277954))))

(declare-fun isEmpty!3387 (List!4432) Bool)

(assert (=> b!454233 (= res!201950 (not (isEmpty!3387 rules!1920)))))

(assert (= (and start!43006 res!201939) b!454233))

(assert (= (and b!454233 res!201950) b!454227))

(assert (= (and b!454227 res!201951) b!454219))

(assert (= (and b!454219 res!201955) b!454207))

(assert (= (and b!454207 res!201958) b!454212))

(assert (= (and b!454212 res!201957) b!454216))

(assert (= (and b!454216 res!201936) b!454213))

(assert (= (and b!454213 res!201949) b!454215))

(assert (= (and b!454215 res!201948) b!454214))

(assert (= (and b!454214 res!201943) b!454226))

(assert (= (and b!454226 res!201937) b!454205))

(assert (= (and b!454205 (not res!201956)) b!454209))

(assert (= (and b!454209 res!201953) b!454201))

(assert (= (and b!454209 (not res!201941)) b!454210))

(assert (= (and b!454210 (not res!201942)) b!454229))

(assert (= (and b!454229 (not res!201946)) b!454222))

(assert (= (and b!454222 (not res!201940)) b!454217))

(assert (= (and b!454217 (not res!201938)) b!454232))

(assert (= (and b!454232 res!201944) b!454223))

(assert (= (and b!454223 res!201947) b!454218))

(assert (= (and b!454232 (not res!201954)) b!454220))

(assert (= (and b!454220 (not res!201952)) b!454202))

(assert (= (and b!454202 res!201945) b!454221))

(assert (= b!454211 b!454206))

(assert (= b!454225 b!454211))

(assert (= (and start!43006 ((_ is Cons!4422) rules!1920)) b!454225))

(assert (= b!454231 b!454228))

(assert (= b!454230 b!454231))

(assert (= start!43006 b!454230))

(assert (= b!454203 b!454224))

(assert (= b!454208 b!454203))

(assert (= b!454204 b!454208))

(assert (= (and start!43006 ((_ is Cons!4423) tokens!465)) b!454204))

(declare-fun m!718413 () Bool)

(assert (=> b!454231 m!718413))

(declare-fun m!718415 () Bool)

(assert (=> b!454231 m!718415))

(declare-fun m!718417 () Bool)

(assert (=> b!454201 m!718417))

(declare-fun m!718419 () Bool)

(assert (=> b!454232 m!718419))

(declare-fun m!718421 () Bool)

(assert (=> b!454232 m!718421))

(declare-fun m!718423 () Bool)

(assert (=> b!454232 m!718423))

(declare-fun m!718425 () Bool)

(assert (=> b!454229 m!718425))

(declare-fun m!718427 () Bool)

(assert (=> b!454207 m!718427))

(declare-fun m!718429 () Bool)

(assert (=> b!454210 m!718429))

(declare-fun m!718431 () Bool)

(assert (=> b!454210 m!718431))

(declare-fun m!718433 () Bool)

(assert (=> b!454210 m!718433))

(declare-fun m!718435 () Bool)

(assert (=> b!454210 m!718435))

(declare-fun m!718437 () Bool)

(assert (=> b!454210 m!718437))

(declare-fun m!718439 () Bool)

(assert (=> b!454202 m!718439))

(declare-fun m!718441 () Bool)

(assert (=> b!454202 m!718441))

(declare-fun m!718443 () Bool)

(assert (=> start!43006 m!718443))

(declare-fun m!718445 () Bool)

(assert (=> b!454218 m!718445))

(declare-fun m!718447 () Bool)

(assert (=> b!454208 m!718447))

(declare-fun m!718449 () Bool)

(assert (=> b!454221 m!718449))

(declare-fun m!718451 () Bool)

(assert (=> b!454221 m!718451))

(declare-fun m!718453 () Bool)

(assert (=> b!454205 m!718453))

(declare-fun m!718455 () Bool)

(assert (=> b!454205 m!718455))

(declare-fun m!718457 () Bool)

(assert (=> b!454205 m!718457))

(declare-fun m!718459 () Bool)

(assert (=> b!454205 m!718459))

(declare-fun m!718461 () Bool)

(assert (=> b!454205 m!718461))

(assert (=> b!454205 m!718457))

(declare-fun m!718463 () Bool)

(assert (=> b!454205 m!718463))

(declare-fun m!718465 () Bool)

(assert (=> b!454205 m!718465))

(declare-fun m!718467 () Bool)

(assert (=> b!454205 m!718467))

(declare-fun m!718469 () Bool)

(assert (=> b!454205 m!718469))

(declare-fun m!718471 () Bool)

(assert (=> b!454205 m!718471))

(declare-fun m!718473 () Bool)

(assert (=> b!454205 m!718473))

(assert (=> b!454205 m!718469))

(assert (=> b!454205 m!718463))

(assert (=> b!454205 m!718467))

(declare-fun m!718475 () Bool)

(assert (=> b!454205 m!718475))

(declare-fun m!718477 () Bool)

(assert (=> b!454205 m!718477))

(declare-fun m!718479 () Bool)

(assert (=> b!454219 m!718479))

(declare-fun m!718481 () Bool)

(assert (=> b!454219 m!718481))

(declare-fun m!718483 () Bool)

(assert (=> b!454227 m!718483))

(declare-fun m!718485 () Bool)

(assert (=> b!454233 m!718485))

(declare-fun m!718487 () Bool)

(assert (=> b!454230 m!718487))

(declare-fun m!718489 () Bool)

(assert (=> b!454217 m!718489))

(assert (=> b!454217 m!718489))

(declare-fun m!718491 () Bool)

(assert (=> b!454217 m!718491))

(assert (=> b!454217 m!718491))

(declare-fun m!718493 () Bool)

(assert (=> b!454217 m!718493))

(declare-fun m!718495 () Bool)

(assert (=> b!454217 m!718495))

(declare-fun m!718497 () Bool)

(assert (=> b!454222 m!718497))

(assert (=> b!454222 m!718497))

(declare-fun m!718499 () Bool)

(assert (=> b!454222 m!718499))

(declare-fun m!718501 () Bool)

(assert (=> b!454222 m!718501))

(declare-fun m!718503 () Bool)

(assert (=> b!454220 m!718503))

(declare-fun m!718505 () Bool)

(assert (=> b!454220 m!718505))

(declare-fun m!718507 () Bool)

(assert (=> b!454220 m!718507))

(declare-fun m!718509 () Bool)

(assert (=> b!454204 m!718509))

(declare-fun m!718511 () Bool)

(assert (=> b!454213 m!718511))

(declare-fun m!718513 () Bool)

(assert (=> b!454226 m!718513))

(assert (=> b!454226 m!718513))

(declare-fun m!718515 () Bool)

(assert (=> b!454226 m!718515))

(declare-fun m!718517 () Bool)

(assert (=> b!454214 m!718517))

(assert (=> b!454214 m!718517))

(declare-fun m!718519 () Bool)

(assert (=> b!454214 m!718519))

(declare-fun m!718521 () Bool)

(assert (=> b!454214 m!718521))

(declare-fun m!718523 () Bool)

(assert (=> b!454223 m!718523))

(declare-fun m!718525 () Bool)

(assert (=> b!454211 m!718525))

(declare-fun m!718527 () Bool)

(assert (=> b!454211 m!718527))

(declare-fun m!718529 () Bool)

(assert (=> b!454203 m!718529))

(declare-fun m!718531 () Bool)

(assert (=> b!454203 m!718531))

(declare-fun m!718533 () Bool)

(assert (=> b!454216 m!718533))

(check-sat b_and!48785 (not b!454232) (not b_next!12679) b_and!48789 (not b!454208) (not b!454201) (not b!454233) b_and!48791 (not b!454203) (not b!454221) (not b!454226) (not b_next!12683) (not b_next!12675) b_and!48793 (not b!454227) (not b!454242) (not b!454204) (not b!454210) (not b!454214) (not b_next!12677) (not b_next!12673) (not b!454229) (not start!43006) (not b!454219) (not b!454205) (not b!454202) (not b!454218) (not b!454220) (not b!454213) (not b!454222) (not b!454231) (not b!454223) b_and!48787 (not b!454207) (not b_next!12681) (not b!454216) b_and!48795 (not b!454230) (not b!454225) (not b!454217) (not b!454211))
(check-sat b_and!48785 (not b_next!12679) b_and!48789 b_and!48791 b_and!48795 (not b_next!12683) (not b_next!12675) b_and!48793 (not b_next!12677) (not b_next!12673) b_and!48787 (not b_next!12681))
(get-model)

(declare-fun d!173241 () Bool)

(declare-fun list!1962 (Conc!1540) List!4431)

(assert (=> d!173241 (= (list!1959 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 0)) (list!1962 (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 0))))))

(declare-fun bs!56150 () Bool)

(assert (= bs!56150 d!173241))

(declare-fun m!718541 () Bool)

(assert (=> bs!56150 m!718541))

(assert (=> b!454214 d!173241))

(declare-fun bs!56155 () Bool)

(declare-fun d!173243 () Bool)

(assert (= bs!56155 (and d!173243 b!454216)))

(declare-fun lambda!13283 () Int)

(assert (=> bs!56155 (= lambda!13283 lambda!13277)))

(declare-fun bs!56156 () Bool)

(assert (= bs!56156 (and d!173243 b!454217)))

(assert (=> bs!56156 (not (= lambda!13283 lambda!13278))))

(declare-fun bs!56157 () Bool)

(declare-fun b!454367 () Bool)

(assert (= bs!56157 (and b!454367 b!454216)))

(declare-fun lambda!13284 () Int)

(assert (=> bs!56157 (not (= lambda!13284 lambda!13277))))

(declare-fun bs!56158 () Bool)

(assert (= bs!56158 (and b!454367 b!454217)))

(assert (=> bs!56158 (= lambda!13284 lambda!13278)))

(declare-fun bs!56159 () Bool)

(assert (= bs!56159 (and b!454367 d!173243)))

(assert (=> bs!56159 (not (= lambda!13284 lambda!13283))))

(declare-fun b!454374 () Bool)

(declare-fun e!278045 () Bool)

(assert (=> b!454374 (= e!278045 true)))

(declare-fun b!454373 () Bool)

(declare-fun e!278044 () Bool)

(assert (=> b!454373 (= e!278044 e!278045)))

(declare-fun b!454372 () Bool)

(declare-fun e!278043 () Bool)

(assert (=> b!454372 (= e!278043 e!278044)))

(assert (=> b!454367 e!278043))

(assert (= b!454373 b!454374))

(assert (= b!454372 b!454373))

(assert (= (and b!454367 ((_ is Cons!4422) rules!1920)) b!454372))

(assert (=> b!454374 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13284))))

(assert (=> b!454374 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13284))))

(assert (=> b!454367 true))

(declare-fun call!31436 () Token!1462)

(declare-fun call!31437 () Token!1462)

(declare-fun c!91769 () Bool)

(declare-fun call!31438 () BalanceConc!3088)

(declare-fun bm!31430 () Bool)

(declare-fun c!91770 () Bool)

(assert (=> bm!31430 (= call!31438 (charsOf!502 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436))))))

(declare-fun b!454361 () Bool)

(declare-fun e!278037 () Bool)

(declare-fun size!3622 (BalanceConc!3090) Int)

(assert (=> b!454361 (= e!278037 (<= 0 (size!3622 lt!202015)))))

(declare-fun b!454362 () Bool)

(declare-fun e!278039 () BalanceConc!3088)

(assert (=> b!454362 (= e!278039 (charsOf!502 call!31436))))

(declare-fun b!454363 () Bool)

(declare-fun e!278038 () BalanceConc!3088)

(assert (=> b!454363 (= e!278038 (BalanceConc!3089 Empty!1540))))

(assert (=> b!454363 (= (print!470 thiss!17480 (singletonSeq!405 call!31436)) (printTailRec!431 thiss!17480 (singletonSeq!405 call!31436) 0 (BalanceConc!3089 Empty!1540)))))

(declare-fun lt!202140 () Unit!7961)

(declare-fun Unit!7963 () Unit!7961)

(assert (=> b!454363 (= lt!202140 Unit!7963)))

(declare-fun lt!202130 () BalanceConc!3088)

(declare-fun lt!202135 () Unit!7961)

(declare-fun call!31435 () BalanceConc!3088)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 (LexerInterface!745 List!4432 List!4431 List!4431) Unit!7961)

(assert (=> b!454363 (= lt!202135 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 (list!1959 call!31435) (list!1959 lt!202130)))))

(assert (=> b!454363 false))

(declare-fun lt!202136 () Unit!7961)

(declare-fun Unit!7964 () Unit!7961)

(assert (=> b!454363 (= lt!202136 Unit!7964)))

(declare-fun lt!202131 () BalanceConc!3088)

(declare-fun dropList!244 (BalanceConc!3090 Int) List!4433)

(assert (=> d!173243 (= (list!1959 lt!202131) (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (dropList!244 lt!202015 0) separatorToken!170))))

(declare-fun e!278042 () BalanceConc!3088)

(assert (=> d!173243 (= lt!202131 e!278042)))

(declare-fun c!91768 () Bool)

(assert (=> d!173243 (= c!91768 (>= 0 (size!3622 lt!202015)))))

(declare-fun lt!202134 () Unit!7961)

(declare-fun lemmaContentSubsetPreservesForall!187 (List!4433 List!4433 Int) Unit!7961)

(declare-fun list!1963 (BalanceConc!3090) List!4433)

(assert (=> d!173243 (= lt!202134 (lemmaContentSubsetPreservesForall!187 (list!1963 lt!202015) (dropList!244 lt!202015 0) lambda!13283))))

(assert (=> d!173243 e!278037))

(declare-fun res!202038 () Bool)

(assert (=> d!173243 (=> (not res!202038) (not e!278037))))

(assert (=> d!173243 (= res!202038 (>= 0 0))))

(assert (=> d!173243 (= (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 0) lt!202131)))

(declare-fun bm!31431 () Bool)

(assert (=> bm!31431 (= call!31435 call!31438)))

(declare-fun b!454364 () Bool)

(declare-fun e!278040 () Bool)

(declare-fun lt!202132 () Option!1151)

(declare-fun apply!1130 (BalanceConc!3090 Int) Token!1462)

(assert (=> b!454364 (= e!278040 (= (_1!2902 (v!15471 lt!202132)) (apply!1130 lt!202015 0)))))

(declare-fun b!454365 () Bool)

(declare-fun e!278036 () Bool)

(assert (=> b!454365 (= c!91769 e!278036)))

(declare-fun res!202040 () Bool)

(assert (=> b!454365 (=> (not res!202040) (not e!278036))))

(assert (=> b!454365 (= res!202040 ((_ is Some!1150) lt!202132))))

(declare-fun e!278041 () BalanceConc!3088)

(assert (=> b!454365 (= e!278041 e!278038)))

(declare-fun b!454366 () Bool)

(declare-fun call!31439 () BalanceConc!3088)

(assert (=> b!454366 (= e!278041 call!31439)))

(assert (=> b!454367 (= e!278042 e!278041)))

(declare-fun lt!202129 () List!4433)

(assert (=> b!454367 (= lt!202129 (list!1963 lt!202015))))

(declare-fun lt!202138 () Unit!7961)

(declare-fun lemmaDropApply!284 (List!4433 Int) Unit!7961)

(assert (=> b!454367 (= lt!202138 (lemmaDropApply!284 lt!202129 0))))

(declare-fun drop!313 (List!4433 Int) List!4433)

(declare-fun apply!1131 (List!4433 Int) Token!1462)

(assert (=> b!454367 (= (head!1108 (drop!313 lt!202129 0)) (apply!1131 lt!202129 0))))

(declare-fun lt!202127 () Unit!7961)

(assert (=> b!454367 (= lt!202127 lt!202138)))

(declare-fun lt!202128 () List!4433)

(assert (=> b!454367 (= lt!202128 (list!1963 lt!202015))))

(declare-fun lt!202137 () Unit!7961)

(declare-fun lemmaDropTail!276 (List!4433 Int) Unit!7961)

(assert (=> b!454367 (= lt!202137 (lemmaDropTail!276 lt!202128 0))))

(declare-fun tail!636 (List!4433) List!4433)

(assert (=> b!454367 (= (tail!636 (drop!313 lt!202128 0)) (drop!313 lt!202128 (+ 0 1)))))

(declare-fun lt!202139 () Unit!7961)

(assert (=> b!454367 (= lt!202139 lt!202137)))

(declare-fun lt!202133 () Unit!7961)

(assert (=> b!454367 (= lt!202133 (forallContained!412 (list!1963 lt!202015) lambda!13284 (apply!1130 lt!202015 0)))))

(assert (=> b!454367 (= lt!202130 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 (+ 0 1)))))

(declare-fun ++!1286 (BalanceConc!3088 BalanceConc!3088) BalanceConc!3088)

(assert (=> b!454367 (= lt!202132 (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130)))))

(declare-fun res!202039 () Bool)

(assert (=> b!454367 (= res!202039 ((_ is Some!1150) lt!202132))))

(assert (=> b!454367 (=> (not res!202039) (not e!278040))))

(assert (=> b!454367 (= c!91770 e!278040)))

(declare-fun bm!31432 () Bool)

(declare-fun c!91767 () Bool)

(assert (=> bm!31432 (= c!91767 c!91770)))

(assert (=> bm!31432 (= call!31439 (++!1286 e!278039 (ite c!91770 lt!202130 call!31435)))))

(declare-fun bm!31433 () Bool)

(assert (=> bm!31433 (= call!31436 call!31437)))

(declare-fun b!454368 () Bool)

(assert (=> b!454368 (= e!278038 (++!1286 call!31439 lt!202130))))

(declare-fun b!454369 () Bool)

(assert (=> b!454369 (= e!278039 call!31438)))

(declare-fun bm!31434 () Bool)

(assert (=> bm!31434 (= call!31437 (apply!1130 lt!202015 0))))

(declare-fun b!454370 () Bool)

(assert (=> b!454370 (= e!278036 (not (= (_1!2902 (v!15471 lt!202132)) call!31437)))))

(declare-fun b!454371 () Bool)

(assert (=> b!454371 (= e!278042 (BalanceConc!3089 Empty!1540))))

(assert (= (and d!173243 res!202038) b!454361))

(assert (= (and d!173243 c!91768) b!454371))

(assert (= (and d!173243 (not c!91768)) b!454367))

(assert (= (and b!454367 res!202039) b!454364))

(assert (= (and b!454367 c!91770) b!454366))

(assert (= (and b!454367 (not c!91770)) b!454365))

(assert (= (and b!454365 res!202040) b!454370))

(assert (= (and b!454365 c!91769) b!454368))

(assert (= (and b!454365 (not c!91769)) b!454363))

(assert (= (or b!454368 b!454363) bm!31433))

(assert (= (or b!454368 b!454363) bm!31431))

(assert (= (or b!454366 b!454370 bm!31433) bm!31434))

(assert (= (or b!454366 bm!31431) bm!31430))

(assert (= (or b!454366 b!454368) bm!31432))

(assert (= (and bm!31432 c!91767) b!454369))

(assert (= (and bm!31432 (not c!91767)) b!454362))

(declare-fun m!718691 () Bool)

(assert (=> b!454364 m!718691))

(declare-fun m!718693 () Bool)

(assert (=> b!454368 m!718693))

(declare-fun m!718695 () Bool)

(assert (=> b!454367 m!718695))

(declare-fun m!718697 () Bool)

(assert (=> b!454367 m!718697))

(assert (=> b!454367 m!718691))

(declare-fun m!718699 () Bool)

(assert (=> b!454367 m!718699))

(declare-fun m!718701 () Bool)

(assert (=> b!454367 m!718701))

(assert (=> b!454367 m!718691))

(declare-fun m!718703 () Bool)

(assert (=> b!454367 m!718703))

(assert (=> b!454367 m!718697))

(declare-fun m!718705 () Bool)

(assert (=> b!454367 m!718705))

(declare-fun m!718707 () Bool)

(assert (=> b!454367 m!718707))

(declare-fun m!718709 () Bool)

(assert (=> b!454367 m!718709))

(declare-fun m!718711 () Bool)

(assert (=> b!454367 m!718711))

(assert (=> b!454367 m!718701))

(declare-fun m!718713 () Bool)

(assert (=> b!454367 m!718713))

(declare-fun m!718715 () Bool)

(assert (=> b!454367 m!718715))

(declare-fun m!718717 () Bool)

(assert (=> b!454367 m!718717))

(declare-fun m!718719 () Bool)

(assert (=> b!454367 m!718719))

(declare-fun m!718721 () Bool)

(assert (=> b!454367 m!718721))

(assert (=> b!454367 m!718719))

(assert (=> b!454367 m!718691))

(assert (=> b!454367 m!718699))

(assert (=> b!454367 m!718709))

(declare-fun m!718723 () Bool)

(assert (=> b!454361 m!718723))

(declare-fun m!718725 () Bool)

(assert (=> bm!31432 m!718725))

(declare-fun m!718727 () Bool)

(assert (=> bm!31430 m!718727))

(declare-fun m!718729 () Bool)

(assert (=> b!454362 m!718729))

(declare-fun m!718731 () Bool)

(assert (=> b!454363 m!718731))

(declare-fun m!718733 () Bool)

(assert (=> b!454363 m!718733))

(assert (=> b!454363 m!718731))

(declare-fun m!718735 () Bool)

(assert (=> b!454363 m!718735))

(declare-fun m!718737 () Bool)

(assert (=> b!454363 m!718737))

(assert (=> b!454363 m!718731))

(declare-fun m!718739 () Bool)

(assert (=> b!454363 m!718739))

(assert (=> b!454363 m!718737))

(assert (=> b!454363 m!718739))

(declare-fun m!718741 () Bool)

(assert (=> b!454363 m!718741))

(assert (=> bm!31434 m!718691))

(assert (=> d!173243 m!718701))

(declare-fun m!718743 () Bool)

(assert (=> d!173243 m!718743))

(declare-fun m!718745 () Bool)

(assert (=> d!173243 m!718745))

(assert (=> d!173243 m!718743))

(declare-fun m!718747 () Bool)

(assert (=> d!173243 m!718747))

(assert (=> d!173243 m!718701))

(declare-fun m!718749 () Bool)

(assert (=> d!173243 m!718749))

(assert (=> d!173243 m!718723))

(assert (=> d!173243 m!718743))

(assert (=> b!454214 d!173243))

(declare-fun bs!56162 () Bool)

(declare-fun b!454399 () Bool)

(assert (= bs!56162 (and b!454399 b!454216)))

(declare-fun lambda!13292 () Int)

(assert (=> bs!56162 (not (= lambda!13292 lambda!13277))))

(declare-fun bs!56163 () Bool)

(assert (= bs!56163 (and b!454399 b!454217)))

(assert (=> bs!56163 (= lambda!13292 lambda!13278)))

(declare-fun bs!56164 () Bool)

(assert (= bs!56164 (and b!454399 d!173243)))

(assert (=> bs!56164 (not (= lambda!13292 lambda!13283))))

(declare-fun bs!56165 () Bool)

(assert (= bs!56165 (and b!454399 b!454367)))

(assert (=> bs!56165 (= lambda!13292 lambda!13284)))

(declare-fun b!454407 () Bool)

(declare-fun e!278066 () Bool)

(assert (=> b!454407 (= e!278066 true)))

(declare-fun b!454406 () Bool)

(declare-fun e!278065 () Bool)

(assert (=> b!454406 (= e!278065 e!278066)))

(declare-fun b!454405 () Bool)

(declare-fun e!278064 () Bool)

(assert (=> b!454405 (= e!278064 e!278065)))

(assert (=> b!454399 e!278064))

(assert (= b!454406 b!454407))

(assert (= b!454405 b!454406))

(assert (= (and b!454399 ((_ is Cons!4422) rules!1920)) b!454405))

(assert (=> b!454407 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13292))))

(assert (=> b!454407 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13292))))

(assert (=> b!454399 true))

(declare-fun b!454397 () Bool)

(declare-fun e!278061 () BalanceConc!3088)

(assert (=> b!454397 (= e!278061 (charsOf!502 separatorToken!170))))

(declare-fun d!173275 () Bool)

(declare-fun c!91780 () Bool)

(assert (=> d!173275 (= c!91780 ((_ is Cons!4423) tokens!465))))

(declare-fun e!278063 () List!4431)

(assert (=> d!173275 (= (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!278063)))

(declare-fun bm!31445 () Bool)

(declare-fun call!31454 () BalanceConc!3088)

(assert (=> bm!31445 (= call!31454 (charsOf!502 (h!9820 tokens!465)))))

(declare-fun b!454398 () Bool)

(declare-fun e!278060 () List!4431)

(declare-fun call!31452 () List!4431)

(assert (=> b!454398 (= e!278060 call!31452)))

(declare-fun bm!31446 () Bool)

(declare-fun call!31450 () BalanceConc!3088)

(assert (=> bm!31446 (= call!31450 call!31454)))

(declare-fun bm!31447 () Bool)

(declare-fun c!91782 () Bool)

(declare-fun call!31451 () List!4431)

(assert (=> bm!31447 (= call!31451 (list!1959 (ite c!91782 call!31454 call!31450)))))

(assert (=> b!454399 (= e!278063 e!278060)))

(declare-fun lt!202156 () Unit!7961)

(assert (=> b!454399 (= lt!202156 (forallContained!412 tokens!465 lambda!13292 (h!9820 tokens!465)))))

(declare-fun lt!202159 () List!4431)

(assert (=> b!454399 (= lt!202159 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (t!71133 tokens!465) separatorToken!170))))

(declare-fun lt!202161 () Option!1150)

(assert (=> b!454399 (= lt!202161 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159)))))

(assert (=> b!454399 (= c!91782 (and ((_ is Some!1149) lt!202161) (= (_1!2901 (v!15470 lt!202161)) (h!9820 tokens!465))))))

(declare-fun bm!31448 () Bool)

(declare-fun call!31453 () List!4431)

(assert (=> bm!31448 (= call!31453 (list!1959 e!278061))))

(declare-fun c!91779 () Bool)

(declare-fun c!91781 () Bool)

(assert (=> bm!31448 (= c!91779 c!91781)))

(declare-fun b!454400 () Bool)

(declare-fun e!278062 () List!4431)

(assert (=> b!454400 (= e!278062 Nil!4421)))

(assert (=> b!454400 (= (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465))) (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)) 0 (BalanceConc!3089 Empty!1540)))))

(declare-fun lt!202157 () Unit!7961)

(declare-fun Unit!7965 () Unit!7961)

(assert (=> b!454400 (= lt!202157 Unit!7965)))

(declare-fun lt!202160 () Unit!7961)

(assert (=> b!454400 (= lt!202160 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 call!31453 lt!202159))))

(assert (=> b!454400 false))

(declare-fun lt!202158 () Unit!7961)

(declare-fun Unit!7966 () Unit!7961)

(assert (=> b!454400 (= lt!202158 Unit!7966)))

(declare-fun b!454401 () Bool)

(assert (=> b!454401 (= e!278062 (++!1284 call!31452 lt!202159))))

(declare-fun b!454402 () Bool)

(assert (=> b!454402 (= e!278061 call!31450)))

(declare-fun bm!31449 () Bool)

(assert (=> bm!31449 (= call!31452 (++!1284 call!31451 (ite c!91782 lt!202159 call!31453)))))

(declare-fun b!454403 () Bool)

(assert (=> b!454403 (= e!278063 Nil!4421)))

(declare-fun b!454404 () Bool)

(assert (=> b!454404 (= c!91781 (and ((_ is Some!1149) lt!202161) (not (= (_1!2901 (v!15470 lt!202161)) (h!9820 tokens!465)))))))

(assert (=> b!454404 (= e!278060 e!278062)))

(assert (= (and d!173275 c!91780) b!454399))

(assert (= (and d!173275 (not c!91780)) b!454403))

(assert (= (and b!454399 c!91782) b!454398))

(assert (= (and b!454399 (not c!91782)) b!454404))

(assert (= (and b!454404 c!91781) b!454401))

(assert (= (and b!454404 (not c!91781)) b!454400))

(assert (= (or b!454401 b!454400) bm!31446))

(assert (= (or b!454401 b!454400) bm!31448))

(assert (= (and bm!31448 c!91779) b!454397))

(assert (= (and bm!31448 (not c!91779)) b!454402))

(assert (= (or b!454398 bm!31446) bm!31445))

(assert (= (or b!454398 b!454401) bm!31447))

(assert (= (or b!454398 b!454401) bm!31449))

(assert (=> bm!31445 m!718469))

(assert (=> b!454397 m!718457))

(assert (=> b!454399 m!718471))

(declare-fun m!718759 () Bool)

(assert (=> b!454399 m!718759))

(assert (=> b!454399 m!718469))

(declare-fun m!718761 () Bool)

(assert (=> b!454399 m!718761))

(assert (=> b!454399 m!718759))

(declare-fun m!718763 () Bool)

(assert (=> b!454399 m!718763))

(assert (=> b!454399 m!718455))

(assert (=> b!454399 m!718469))

(assert (=> b!454399 m!718471))

(declare-fun m!718765 () Bool)

(assert (=> bm!31448 m!718765))

(declare-fun m!718767 () Bool)

(assert (=> b!454401 m!718767))

(assert (=> b!454400 m!718433))

(assert (=> b!454400 m!718433))

(declare-fun m!718769 () Bool)

(assert (=> b!454400 m!718769))

(assert (=> b!454400 m!718433))

(declare-fun m!718771 () Bool)

(assert (=> b!454400 m!718771))

(declare-fun m!718773 () Bool)

(assert (=> b!454400 m!718773))

(declare-fun m!718775 () Bool)

(assert (=> bm!31449 m!718775))

(declare-fun m!718777 () Bool)

(assert (=> bm!31447 m!718777))

(assert (=> b!454214 d!173275))

(declare-fun d!173281 () Bool)

(declare-fun res!202048 () Bool)

(declare-fun e!278071 () Bool)

(assert (=> d!173281 (=> res!202048 e!278071)))

(assert (=> d!173281 (= res!202048 (not ((_ is Cons!4422) rules!1920)))))

(assert (=> d!173281 (= (sepAndNonSepRulesDisjointChars!448 rules!1920 rules!1920) e!278071)))

(declare-fun b!454412 () Bool)

(declare-fun e!278072 () Bool)

(assert (=> b!454412 (= e!278071 e!278072)))

(declare-fun res!202049 () Bool)

(assert (=> b!454412 (=> (not res!202049) (not e!278072))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!198 (Rule!1518 List!4432) Bool)

(assert (=> b!454412 (= res!202049 (ruleDisjointCharsFromAllFromOtherType!198 (h!9819 rules!1920) rules!1920))))

(declare-fun b!454413 () Bool)

(assert (=> b!454413 (= e!278072 (sepAndNonSepRulesDisjointChars!448 rules!1920 (t!71132 rules!1920)))))

(assert (= (and d!173281 (not res!202048)) b!454412))

(assert (= (and b!454412 res!202049) b!454413))

(declare-fun m!718779 () Bool)

(assert (=> b!454412 m!718779))

(declare-fun m!718781 () Bool)

(assert (=> b!454413 m!718781))

(assert (=> b!454213 d!173281))

(declare-fun d!173283 () Bool)

(assert (=> d!173283 (= (inv!5492 (tag!1119 (h!9819 rules!1920))) (= (mod (str.len (value!28796 (tag!1119 (h!9819 rules!1920)))) 2) 0))))

(assert (=> b!454211 d!173283))

(declare-fun d!173285 () Bool)

(declare-fun res!202056 () Bool)

(declare-fun e!278079 () Bool)

(assert (=> d!173285 (=> (not res!202056) (not e!278079))))

(declare-fun semiInverseModEq!341 (Int Int) Bool)

(assert (=> d!173285 (= res!202056 (semiInverseModEq!341 (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toValue!1674 (transformation!859 (h!9819 rules!1920)))))))

(assert (=> d!173285 (= (inv!5495 (transformation!859 (h!9819 rules!1920))) e!278079)))

(declare-fun b!454420 () Bool)

(declare-fun equivClasses!324 (Int Int) Bool)

(assert (=> b!454420 (= e!278079 (equivClasses!324 (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toValue!1674 (transformation!859 (h!9819 rules!1920)))))))

(assert (= (and d!173285 res!202056) b!454420))

(declare-fun m!718783 () Bool)

(assert (=> d!173285 m!718783))

(declare-fun m!718785 () Bool)

(assert (=> b!454420 m!718785))

(assert (=> b!454211 d!173285))

(declare-fun d!173287 () Bool)

(assert (=> d!173287 (= (isEmpty!3387 rules!1920) ((_ is Nil!4422) rules!1920))))

(assert (=> b!454233 d!173287))

(declare-fun d!173289 () Bool)

(declare-fun lt!202188 () BalanceConc!3088)

(declare-fun printListTailRec!209 (LexerInterface!745 List!4433 List!4431) List!4431)

(assert (=> d!173289 (= (list!1959 lt!202188) (printListTailRec!209 thiss!17480 (dropList!244 lt!202031 0) (list!1959 (BalanceConc!3089 Empty!1540))))))

(declare-fun e!278100 () BalanceConc!3088)

(assert (=> d!173289 (= lt!202188 e!278100)))

(declare-fun c!91791 () Bool)

(assert (=> d!173289 (= c!91791 (>= 0 (size!3622 lt!202031)))))

(declare-fun e!278101 () Bool)

(assert (=> d!173289 e!278101))

(declare-fun res!202069 () Bool)

(assert (=> d!173289 (=> (not res!202069) (not e!278101))))

(assert (=> d!173289 (= res!202069 (>= 0 0))))

(assert (=> d!173289 (= (printTailRec!431 thiss!17480 lt!202031 0 (BalanceConc!3089 Empty!1540)) lt!202188)))

(declare-fun b!454450 () Bool)

(assert (=> b!454450 (= e!278101 (<= 0 (size!3622 lt!202031)))))

(declare-fun b!454451 () Bool)

(assert (=> b!454451 (= e!278100 (BalanceConc!3089 Empty!1540))))

(declare-fun b!454452 () Bool)

(assert (=> b!454452 (= e!278100 (printTailRec!431 thiss!17480 lt!202031 (+ 0 1) (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (apply!1130 lt!202031 0)))))))

(declare-fun lt!202190 () List!4433)

(assert (=> b!454452 (= lt!202190 (list!1963 lt!202031))))

(declare-fun lt!202189 () Unit!7961)

(assert (=> b!454452 (= lt!202189 (lemmaDropApply!284 lt!202190 0))))

(assert (=> b!454452 (= (head!1108 (drop!313 lt!202190 0)) (apply!1131 lt!202190 0))))

(declare-fun lt!202192 () Unit!7961)

(assert (=> b!454452 (= lt!202192 lt!202189)))

(declare-fun lt!202191 () List!4433)

(assert (=> b!454452 (= lt!202191 (list!1963 lt!202031))))

(declare-fun lt!202186 () Unit!7961)

(assert (=> b!454452 (= lt!202186 (lemmaDropTail!276 lt!202191 0))))

(assert (=> b!454452 (= (tail!636 (drop!313 lt!202191 0)) (drop!313 lt!202191 (+ 0 1)))))

(declare-fun lt!202187 () Unit!7961)

(assert (=> b!454452 (= lt!202187 lt!202186)))

(assert (= (and d!173289 res!202069) b!454450))

(assert (= (and d!173289 c!91791) b!454451))

(assert (= (and d!173289 (not c!91791)) b!454452))

(declare-fun m!718833 () Bool)

(assert (=> d!173289 m!718833))

(declare-fun m!718835 () Bool)

(assert (=> d!173289 m!718835))

(declare-fun m!718837 () Bool)

(assert (=> d!173289 m!718837))

(assert (=> d!173289 m!718833))

(assert (=> d!173289 m!718835))

(declare-fun m!718839 () Bool)

(assert (=> d!173289 m!718839))

(declare-fun m!718841 () Bool)

(assert (=> d!173289 m!718841))

(assert (=> b!454450 m!718841))

(declare-fun m!718843 () Bool)

(assert (=> b!454452 m!718843))

(declare-fun m!718845 () Bool)

(assert (=> b!454452 m!718845))

(declare-fun m!718847 () Bool)

(assert (=> b!454452 m!718847))

(declare-fun m!718849 () Bool)

(assert (=> b!454452 m!718849))

(declare-fun m!718851 () Bool)

(assert (=> b!454452 m!718851))

(declare-fun m!718853 () Bool)

(assert (=> b!454452 m!718853))

(declare-fun m!718855 () Bool)

(assert (=> b!454452 m!718855))

(declare-fun m!718857 () Bool)

(assert (=> b!454452 m!718857))

(declare-fun m!718859 () Bool)

(assert (=> b!454452 m!718859))

(declare-fun m!718861 () Bool)

(assert (=> b!454452 m!718861))

(declare-fun m!718863 () Bool)

(assert (=> b!454452 m!718863))

(declare-fun m!718865 () Bool)

(assert (=> b!454452 m!718865))

(assert (=> b!454452 m!718845))

(assert (=> b!454452 m!718861))

(assert (=> b!454452 m!718849))

(declare-fun m!718867 () Bool)

(assert (=> b!454452 m!718867))

(assert (=> b!454452 m!718847))

(assert (=> b!454452 m!718857))

(assert (=> b!454210 d!173289))

(declare-fun d!173315 () Bool)

(assert (=> d!173315 (= (list!1959 lt!202028) (list!1962 (c!91744 lt!202028)))))

(declare-fun bs!56171 () Bool)

(assert (= bs!56171 d!173315))

(declare-fun m!718869 () Bool)

(assert (=> bs!56171 m!718869))

(assert (=> b!454210 d!173315))

(declare-fun d!173317 () Bool)

(declare-fun lt!202195 () BalanceConc!3088)

(assert (=> d!173317 (= (list!1959 lt!202195) (printList!419 thiss!17480 (list!1963 lt!202031)))))

(assert (=> d!173317 (= lt!202195 (printTailRec!431 thiss!17480 lt!202031 0 (BalanceConc!3089 Empty!1540)))))

(assert (=> d!173317 (= (print!470 thiss!17480 lt!202031) lt!202195)))

(declare-fun bs!56172 () Bool)

(assert (= bs!56172 d!173317))

(declare-fun m!718871 () Bool)

(assert (=> bs!56172 m!718871))

(assert (=> bs!56172 m!718851))

(assert (=> bs!56172 m!718851))

(declare-fun m!718873 () Bool)

(assert (=> bs!56172 m!718873))

(assert (=> bs!56172 m!718431))

(assert (=> b!454210 d!173317))

(declare-fun d!173319 () Bool)

(declare-fun e!278104 () Bool)

(assert (=> d!173319 e!278104))

(declare-fun res!202072 () Bool)

(assert (=> d!173319 (=> (not res!202072) (not e!278104))))

(declare-fun lt!202198 () BalanceConc!3090)

(assert (=> d!173319 (= res!202072 (= (list!1963 lt!202198) (Cons!4423 (h!9820 tokens!465) Nil!4423)))))

(declare-fun singleton!194 (Token!1462) BalanceConc!3090)

(assert (=> d!173319 (= lt!202198 (singleton!194 (h!9820 tokens!465)))))

(assert (=> d!173319 (= (singletonSeq!405 (h!9820 tokens!465)) lt!202198)))

(declare-fun b!454455 () Bool)

(declare-fun isBalanced!471 (Conc!1541) Bool)

(assert (=> b!454455 (= e!278104 (isBalanced!471 (c!91746 lt!202198)))))

(assert (= (and d!173319 res!202072) b!454455))

(declare-fun m!718875 () Bool)

(assert (=> d!173319 m!718875))

(declare-fun m!718877 () Bool)

(assert (=> d!173319 m!718877))

(declare-fun m!718879 () Bool)

(assert (=> b!454455 m!718879))

(assert (=> b!454210 d!173319))

(declare-fun d!173321 () Bool)

(declare-fun c!91794 () Bool)

(assert (=> d!173321 (= c!91794 ((_ is Cons!4423) (Cons!4423 (h!9820 tokens!465) Nil!4423)))))

(declare-fun e!278107 () List!4431)

(assert (=> d!173321 (= (printList!419 thiss!17480 (Cons!4423 (h!9820 tokens!465) Nil!4423)) e!278107)))

(declare-fun b!454460 () Bool)

(assert (=> b!454460 (= e!278107 (++!1284 (list!1959 (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))) (printList!419 thiss!17480 (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))))

(declare-fun b!454461 () Bool)

(assert (=> b!454461 (= e!278107 Nil!4421)))

(assert (= (and d!173321 c!91794) b!454460))

(assert (= (and d!173321 (not c!91794)) b!454461))

(declare-fun m!718881 () Bool)

(assert (=> b!454460 m!718881))

(assert (=> b!454460 m!718881))

(declare-fun m!718883 () Bool)

(assert (=> b!454460 m!718883))

(declare-fun m!718885 () Bool)

(assert (=> b!454460 m!718885))

(assert (=> b!454460 m!718883))

(assert (=> b!454460 m!718885))

(declare-fun m!718887 () Bool)

(assert (=> b!454460 m!718887))

(assert (=> b!454210 d!173321))

(declare-fun d!173323 () Bool)

(assert (=> d!173323 (= (inv!5492 (tag!1119 (rule!1550 separatorToken!170))) (= (mod (str.len (value!28796 (tag!1119 (rule!1550 separatorToken!170)))) 2) 0))))

(assert (=> b!454231 d!173323))

(declare-fun d!173325 () Bool)

(declare-fun res!202073 () Bool)

(declare-fun e!278108 () Bool)

(assert (=> d!173325 (=> (not res!202073) (not e!278108))))

(assert (=> d!173325 (= res!202073 (semiInverseModEq!341 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toValue!1674 (transformation!859 (rule!1550 separatorToken!170)))))))

(assert (=> d!173325 (= (inv!5495 (transformation!859 (rule!1550 separatorToken!170))) e!278108)))

(declare-fun b!454462 () Bool)

(assert (=> b!454462 (= e!278108 (equivClasses!324 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toValue!1674 (transformation!859 (rule!1550 separatorToken!170)))))))

(assert (= (and d!173325 res!202073) b!454462))

(declare-fun m!718889 () Bool)

(assert (=> d!173325 m!718889))

(declare-fun m!718891 () Bool)

(assert (=> b!454462 m!718891))

(assert (=> b!454231 d!173325))

(declare-fun d!173327 () Bool)

(assert (=> d!173327 (= (get!1618 lt!202029) (v!15470 lt!202029))))

(assert (=> b!454232 d!173327))

(declare-fun d!173329 () Bool)

(declare-fun isEmpty!3390 (Option!1150) Bool)

(assert (=> d!173329 (= (isDefined!989 lt!202029) (not (isEmpty!3390 lt!202029)))))

(declare-fun bs!56173 () Bool)

(assert (= bs!56173 d!173329))

(declare-fun m!718893 () Bool)

(assert (=> bs!56173 m!718893))

(assert (=> b!454232 d!173329))

(declare-fun b!454481 () Bool)

(declare-fun e!278117 () Option!1150)

(declare-fun lt!202209 () Option!1150)

(declare-fun lt!202210 () Option!1150)

(assert (=> b!454481 (= e!278117 (ite (and ((_ is None!1149) lt!202209) ((_ is None!1149) lt!202210)) None!1149 (ite ((_ is None!1149) lt!202210) lt!202209 (ite ((_ is None!1149) lt!202209) lt!202210 (ite (>= (size!3619 (_1!2901 (v!15470 lt!202209))) (size!3619 (_1!2901 (v!15470 lt!202210)))) lt!202209 lt!202210)))))))

(declare-fun call!31457 () Option!1150)

(assert (=> b!454481 (= lt!202209 call!31457)))

(assert (=> b!454481 (= lt!202210 (maxPrefix!461 thiss!17480 (t!71132 rules!1920) lt!202023))))

(declare-fun b!454482 () Bool)

(declare-fun res!202089 () Bool)

(declare-fun e!278116 () Bool)

(assert (=> b!454482 (=> (not res!202089) (not e!278116))))

(declare-fun lt!202212 () Option!1150)

(assert (=> b!454482 (= res!202089 (matchR!401 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))))))

(declare-fun b!454483 () Bool)

(declare-fun res!202090 () Bool)

(assert (=> b!454483 (=> (not res!202090) (not e!278116))))

(declare-fun apply!1132 (TokenValueInjection!1534 BalanceConc!3088) TokenValue!881)

(assert (=> b!454483 (= res!202090 (= (value!28797 (_1!2901 (get!1618 lt!202212))) (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202212)))))))))

(declare-fun b!454484 () Bool)

(declare-fun contains!990 (List!4432 Rule!1518) Bool)

(assert (=> b!454484 (= e!278116 (contains!990 rules!1920 (rule!1550 (_1!2901 (get!1618 lt!202212)))))))

(declare-fun b!454485 () Bool)

(assert (=> b!454485 (= e!278117 call!31457)))

(declare-fun b!454486 () Bool)

(declare-fun e!278115 () Bool)

(assert (=> b!454486 (= e!278115 e!278116)))

(declare-fun res!202092 () Bool)

(assert (=> b!454486 (=> (not res!202092) (not e!278116))))

(assert (=> b!454486 (= res!202092 (isDefined!989 lt!202212))))

(declare-fun d!173331 () Bool)

(assert (=> d!173331 e!278115))

(declare-fun res!202091 () Bool)

(assert (=> d!173331 (=> res!202091 e!278115)))

(assert (=> d!173331 (= res!202091 (isEmpty!3390 lt!202212))))

(assert (=> d!173331 (= lt!202212 e!278117)))

(declare-fun c!91797 () Bool)

(assert (=> d!173331 (= c!91797 (and ((_ is Cons!4422) rules!1920) ((_ is Nil!4422) (t!71132 rules!1920))))))

(declare-fun lt!202211 () Unit!7961)

(declare-fun lt!202213 () Unit!7961)

(assert (=> d!173331 (= lt!202211 lt!202213)))

(declare-fun isPrefix!513 (List!4431 List!4431) Bool)

(assert (=> d!173331 (isPrefix!513 lt!202023 lt!202023)))

(declare-fun lemmaIsPrefixRefl!287 (List!4431 List!4431) Unit!7961)

(assert (=> d!173331 (= lt!202213 (lemmaIsPrefixRefl!287 lt!202023 lt!202023))))

(declare-fun rulesValidInductive!282 (LexerInterface!745 List!4432) Bool)

(assert (=> d!173331 (rulesValidInductive!282 thiss!17480 rules!1920)))

(assert (=> d!173331 (= (maxPrefix!461 thiss!17480 rules!1920 lt!202023) lt!202212)))

(declare-fun b!454487 () Bool)

(declare-fun res!202094 () Bool)

(assert (=> b!454487 (=> (not res!202094) (not e!278116))))

(declare-fun size!3623 (List!4431) Int)

(assert (=> b!454487 (= res!202094 (< (size!3623 (_2!2901 (get!1618 lt!202212))) (size!3623 lt!202023)))))

(declare-fun b!454488 () Bool)

(declare-fun res!202093 () Bool)

(assert (=> b!454488 (=> (not res!202093) (not e!278116))))

(assert (=> b!454488 (= res!202093 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212)))) (_2!2901 (get!1618 lt!202212))) lt!202023))))

(declare-fun b!454489 () Bool)

(declare-fun res!202088 () Bool)

(assert (=> b!454489 (=> (not res!202088) (not e!278116))))

(assert (=> b!454489 (= res!202088 (= (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212)))) (originalCharacters!902 (_1!2901 (get!1618 lt!202212)))))))

(declare-fun bm!31452 () Bool)

(declare-fun maxPrefixOneRule!221 (LexerInterface!745 Rule!1518 List!4431) Option!1150)

(assert (=> bm!31452 (= call!31457 (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) lt!202023))))

(assert (= (and d!173331 c!91797) b!454485))

(assert (= (and d!173331 (not c!91797)) b!454481))

(assert (= (or b!454485 b!454481) bm!31452))

(assert (= (and d!173331 (not res!202091)) b!454486))

(assert (= (and b!454486 res!202092) b!454489))

(assert (= (and b!454489 res!202088) b!454487))

(assert (= (and b!454487 res!202094) b!454488))

(assert (= (and b!454488 res!202093) b!454483))

(assert (= (and b!454483 res!202090) b!454482))

(assert (= (and b!454482 res!202089) b!454484))

(declare-fun m!718895 () Bool)

(assert (=> b!454489 m!718895))

(declare-fun m!718897 () Bool)

(assert (=> b!454489 m!718897))

(assert (=> b!454489 m!718897))

(declare-fun m!718899 () Bool)

(assert (=> b!454489 m!718899))

(assert (=> b!454487 m!718895))

(declare-fun m!718901 () Bool)

(assert (=> b!454487 m!718901))

(declare-fun m!718903 () Bool)

(assert (=> b!454487 m!718903))

(assert (=> b!454482 m!718895))

(assert (=> b!454482 m!718897))

(assert (=> b!454482 m!718897))

(assert (=> b!454482 m!718899))

(assert (=> b!454482 m!718899))

(declare-fun m!718905 () Bool)

(assert (=> b!454482 m!718905))

(assert (=> b!454488 m!718895))

(assert (=> b!454488 m!718897))

(assert (=> b!454488 m!718897))

(assert (=> b!454488 m!718899))

(assert (=> b!454488 m!718899))

(declare-fun m!718907 () Bool)

(assert (=> b!454488 m!718907))

(assert (=> b!454483 m!718895))

(declare-fun m!718909 () Bool)

(assert (=> b!454483 m!718909))

(assert (=> b!454483 m!718909))

(declare-fun m!718911 () Bool)

(assert (=> b!454483 m!718911))

(declare-fun m!718913 () Bool)

(assert (=> b!454486 m!718913))

(declare-fun m!718915 () Bool)

(assert (=> d!173331 m!718915))

(declare-fun m!718917 () Bool)

(assert (=> d!173331 m!718917))

(declare-fun m!718919 () Bool)

(assert (=> d!173331 m!718919))

(declare-fun m!718921 () Bool)

(assert (=> d!173331 m!718921))

(assert (=> b!454484 m!718895))

(declare-fun m!718923 () Bool)

(assert (=> b!454484 m!718923))

(declare-fun m!718925 () Bool)

(assert (=> bm!31452 m!718925))

(declare-fun m!718927 () Bool)

(assert (=> b!454481 m!718927))

(assert (=> b!454232 d!173331))

(declare-fun d!173333 () Bool)

(declare-fun c!91803 () Bool)

(assert (=> d!173333 (= c!91803 ((_ is IntegerValue!2643) (value!28797 separatorToken!170)))))

(declare-fun e!278125 () Bool)

(assert (=> d!173333 (= (inv!21 (value!28797 separatorToken!170)) e!278125)))

(declare-fun b!454500 () Bool)

(declare-fun inv!16 (TokenValue!881) Bool)

(assert (=> b!454500 (= e!278125 (inv!16 (value!28797 separatorToken!170)))))

(declare-fun b!454501 () Bool)

(declare-fun e!278126 () Bool)

(assert (=> b!454501 (= e!278125 e!278126)))

(declare-fun c!91802 () Bool)

(assert (=> b!454501 (= c!91802 ((_ is IntegerValue!2644) (value!28797 separatorToken!170)))))

(declare-fun b!454502 () Bool)

(declare-fun e!278124 () Bool)

(declare-fun inv!15 (TokenValue!881) Bool)

(assert (=> b!454502 (= e!278124 (inv!15 (value!28797 separatorToken!170)))))

(declare-fun b!454503 () Bool)

(declare-fun inv!17 (TokenValue!881) Bool)

(assert (=> b!454503 (= e!278126 (inv!17 (value!28797 separatorToken!170)))))

(declare-fun b!454504 () Bool)

(declare-fun res!202097 () Bool)

(assert (=> b!454504 (=> res!202097 e!278124)))

(assert (=> b!454504 (= res!202097 (not ((_ is IntegerValue!2645) (value!28797 separatorToken!170))))))

(assert (=> b!454504 (= e!278126 e!278124)))

(assert (= (and d!173333 c!91803) b!454500))

(assert (= (and d!173333 (not c!91803)) b!454501))

(assert (= (and b!454501 c!91802) b!454503))

(assert (= (and b!454501 (not c!91802)) b!454504))

(assert (= (and b!454504 (not res!202097)) b!454502))

(declare-fun m!718929 () Bool)

(assert (=> b!454500 m!718929))

(declare-fun m!718931 () Bool)

(assert (=> b!454502 m!718931))

(declare-fun m!718933 () Bool)

(assert (=> b!454503 m!718933))

(assert (=> b!454230 d!173333))

(declare-fun d!173335 () Bool)

(declare-fun lt!202260 () Bool)

(declare-fun e!278155 () Bool)

(assert (=> d!173335 (= lt!202260 e!278155)))

(declare-fun res!202114 () Bool)

(assert (=> d!173335 (=> (not res!202114) (not e!278155))))

(assert (=> d!173335 (= res!202114 (= (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170))))) (list!1963 (singletonSeq!405 separatorToken!170))))))

(declare-fun e!278156 () Bool)

(assert (=> d!173335 (= lt!202260 e!278156)))

(declare-fun res!202113 () Bool)

(assert (=> d!173335 (=> (not res!202113) (not e!278156))))

(declare-fun lt!202261 () tuple2!5374)

(assert (=> d!173335 (= res!202113 (= (size!3622 (_1!2903 lt!202261)) 1))))

(assert (=> d!173335 (= lt!202261 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170))))))

(assert (=> d!173335 (not (isEmpty!3387 rules!1920))))

(assert (=> d!173335 (= (rulesProduceIndividualToken!494 thiss!17480 rules!1920 separatorToken!170) lt!202260)))

(declare-fun b!454547 () Bool)

(declare-fun res!202115 () Bool)

(assert (=> b!454547 (=> (not res!202115) (not e!278156))))

(assert (=> b!454547 (= res!202115 (= (apply!1130 (_1!2903 lt!202261) 0) separatorToken!170))))

(declare-fun b!454548 () Bool)

(declare-fun isEmpty!3391 (BalanceConc!3088) Bool)

(assert (=> b!454548 (= e!278156 (isEmpty!3391 (_2!2903 lt!202261)))))

(declare-fun b!454549 () Bool)

(assert (=> b!454549 (= e!278155 (isEmpty!3391 (_2!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170))))))))

(assert (= (and d!173335 res!202113) b!454547))

(assert (= (and b!454547 res!202115) b!454548))

(assert (= (and d!173335 res!202114) b!454549))

(declare-fun m!718993 () Bool)

(assert (=> d!173335 m!718993))

(declare-fun m!718995 () Bool)

(assert (=> d!173335 m!718995))

(declare-fun m!718997 () Bool)

(assert (=> d!173335 m!718997))

(declare-fun m!718999 () Bool)

(assert (=> d!173335 m!718999))

(assert (=> d!173335 m!718999))

(declare-fun m!719001 () Bool)

(assert (=> d!173335 m!719001))

(declare-fun m!719003 () Bool)

(assert (=> d!173335 m!719003))

(assert (=> d!173335 m!718485))

(assert (=> d!173335 m!718999))

(assert (=> d!173335 m!718995))

(declare-fun m!719005 () Bool)

(assert (=> b!454547 m!719005))

(declare-fun m!719007 () Bool)

(assert (=> b!454548 m!719007))

(assert (=> b!454549 m!718999))

(assert (=> b!454549 m!718999))

(assert (=> b!454549 m!718995))

(assert (=> b!454549 m!718995))

(assert (=> b!454549 m!718997))

(declare-fun m!719009 () Bool)

(assert (=> b!454549 m!719009))

(assert (=> b!454207 d!173335))

(declare-fun d!173339 () Bool)

(declare-fun c!91817 () Bool)

(assert (=> d!173339 (= c!91817 ((_ is IntegerValue!2643) (value!28797 (h!9820 tokens!465))))))

(declare-fun e!278158 () Bool)

(assert (=> d!173339 (= (inv!21 (value!28797 (h!9820 tokens!465))) e!278158)))

(declare-fun b!454550 () Bool)

(assert (=> b!454550 (= e!278158 (inv!16 (value!28797 (h!9820 tokens!465))))))

(declare-fun b!454551 () Bool)

(declare-fun e!278159 () Bool)

(assert (=> b!454551 (= e!278158 e!278159)))

(declare-fun c!91816 () Bool)

(assert (=> b!454551 (= c!91816 ((_ is IntegerValue!2644) (value!28797 (h!9820 tokens!465))))))

(declare-fun b!454552 () Bool)

(declare-fun e!278157 () Bool)

(assert (=> b!454552 (= e!278157 (inv!15 (value!28797 (h!9820 tokens!465))))))

(declare-fun b!454553 () Bool)

(assert (=> b!454553 (= e!278159 (inv!17 (value!28797 (h!9820 tokens!465))))))

(declare-fun b!454554 () Bool)

(declare-fun res!202116 () Bool)

(assert (=> b!454554 (=> res!202116 e!278157)))

(assert (=> b!454554 (= res!202116 (not ((_ is IntegerValue!2645) (value!28797 (h!9820 tokens!465)))))))

(assert (=> b!454554 (= e!278159 e!278157)))

(assert (= (and d!173339 c!91817) b!454550))

(assert (= (and d!173339 (not c!91817)) b!454551))

(assert (= (and b!454551 c!91816) b!454553))

(assert (= (and b!454551 (not c!91816)) b!454554))

(assert (= (and b!454554 (not res!202116)) b!454552))

(declare-fun m!719011 () Bool)

(assert (=> b!454550 m!719011))

(declare-fun m!719013 () Bool)

(assert (=> b!454552 m!719013))

(declare-fun m!719015 () Bool)

(assert (=> b!454553 m!719015))

(assert (=> b!454208 d!173339))

(declare-fun d!173341 () Bool)

(declare-fun lt!202262 () Bool)

(declare-fun e!278160 () Bool)

(assert (=> d!173341 (= lt!202262 e!278160)))

(declare-fun res!202118 () Bool)

(assert (=> d!173341 (=> (not res!202118) (not e!278160))))

(assert (=> d!173341 (= res!202118 (= (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)))))) (list!1963 (singletonSeq!405 (h!9820 tokens!465)))))))

(declare-fun e!278161 () Bool)

(assert (=> d!173341 (= lt!202262 e!278161)))

(declare-fun res!202117 () Bool)

(assert (=> d!173341 (=> (not res!202117) (not e!278161))))

(declare-fun lt!202263 () tuple2!5374)

(assert (=> d!173341 (= res!202117 (= (size!3622 (_1!2903 lt!202263)) 1))))

(assert (=> d!173341 (= lt!202263 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)))))))

(assert (=> d!173341 (not (isEmpty!3387 rules!1920))))

(assert (=> d!173341 (= (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (h!9820 tokens!465)) lt!202262)))

(declare-fun b!454555 () Bool)

(declare-fun res!202119 () Bool)

(assert (=> b!454555 (=> (not res!202119) (not e!278161))))

(assert (=> b!454555 (= res!202119 (= (apply!1130 (_1!2903 lt!202263) 0) (h!9820 tokens!465)))))

(declare-fun b!454556 () Bool)

(assert (=> b!454556 (= e!278161 (isEmpty!3391 (_2!2903 lt!202263)))))

(declare-fun b!454557 () Bool)

(assert (=> b!454557 (= e!278160 (isEmpty!3391 (_2!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)))))))))

(assert (= (and d!173341 res!202117) b!454555))

(assert (= (and b!454555 res!202119) b!454556))

(assert (= (and d!173341 res!202118) b!454557))

(declare-fun m!719017 () Bool)

(assert (=> d!173341 m!719017))

(assert (=> d!173341 m!718769))

(declare-fun m!719019 () Bool)

(assert (=> d!173341 m!719019))

(assert (=> d!173341 m!718433))

(assert (=> d!173341 m!718433))

(declare-fun m!719021 () Bool)

(assert (=> d!173341 m!719021))

(declare-fun m!719023 () Bool)

(assert (=> d!173341 m!719023))

(assert (=> d!173341 m!718485))

(assert (=> d!173341 m!718433))

(assert (=> d!173341 m!718769))

(declare-fun m!719025 () Bool)

(assert (=> b!454555 m!719025))

(declare-fun m!719027 () Bool)

(assert (=> b!454556 m!719027))

(assert (=> b!454557 m!718433))

(assert (=> b!454557 m!718433))

(assert (=> b!454557 m!718769))

(assert (=> b!454557 m!718769))

(assert (=> b!454557 m!719019))

(declare-fun m!719029 () Bool)

(assert (=> b!454557 m!719029))

(assert (=> b!454229 d!173341))

(declare-fun d!173343 () Bool)

(declare-fun res!202130 () Bool)

(declare-fun e!278172 () Bool)

(assert (=> d!173343 (=> (not res!202130) (not e!278172))))

(declare-fun rulesValid!306 (LexerInterface!745 List!4432) Bool)

(assert (=> d!173343 (= res!202130 (rulesValid!306 thiss!17480 rules!1920))))

(assert (=> d!173343 (= (rulesInvariant!711 thiss!17480 rules!1920) e!278172)))

(declare-fun b!454576 () Bool)

(declare-datatypes ((List!4435 0))(
  ( (Nil!4425) (Cons!4425 (h!9822 String!5485) (t!71199 List!4435)) )
))
(declare-fun noDuplicateTag!306 (LexerInterface!745 List!4432 List!4435) Bool)

(assert (=> b!454576 (= e!278172 (noDuplicateTag!306 thiss!17480 rules!1920 Nil!4425))))

(assert (= (and d!173343 res!202130) b!454576))

(declare-fun m!719055 () Bool)

(assert (=> d!173343 m!719055))

(declare-fun m!719057 () Bool)

(assert (=> b!454576 m!719057))

(assert (=> b!454227 d!173343))

(declare-fun d!173349 () Bool)

(declare-fun res!202135 () Bool)

(declare-fun e!278175 () Bool)

(assert (=> d!173349 (=> (not res!202135) (not e!278175))))

(assert (=> d!173349 (= res!202135 (not (isEmpty!3386 (originalCharacters!902 separatorToken!170))))))

(assert (=> d!173349 (= (inv!5496 separatorToken!170) e!278175)))

(declare-fun b!454581 () Bool)

(declare-fun res!202136 () Bool)

(assert (=> b!454581 (=> (not res!202136) (not e!278175))))

(declare-fun dynLambda!2679 (Int TokenValue!881) BalanceConc!3088)

(assert (=> b!454581 (= res!202136 (= (originalCharacters!902 separatorToken!170) (list!1959 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170)))))))

(declare-fun b!454582 () Bool)

(assert (=> b!454582 (= e!278175 (= (size!3619 separatorToken!170) (size!3623 (originalCharacters!902 separatorToken!170))))))

(assert (= (and d!173349 res!202135) b!454581))

(assert (= (and b!454581 res!202136) b!454582))

(declare-fun b_lambda!18803 () Bool)

(assert (=> (not b_lambda!18803) (not b!454581)))

(declare-fun tb!45553 () Bool)

(declare-fun t!71164 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170)))) t!71164) tb!45553))

(declare-fun b!454587 () Bool)

(declare-fun e!278178 () Bool)

(declare-fun tp!126332 () Bool)

(declare-fun inv!5499 (Conc!1540) Bool)

(assert (=> b!454587 (= e!278178 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170)))) tp!126332))))

(declare-fun result!50130 () Bool)

(declare-fun inv!5500 (BalanceConc!3088) Bool)

(assert (=> tb!45553 (= result!50130 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170))) e!278178))))

(assert (= tb!45553 b!454587))

(declare-fun m!719059 () Bool)

(assert (=> b!454587 m!719059))

(declare-fun m!719061 () Bool)

(assert (=> tb!45553 m!719061))

(assert (=> b!454581 t!71164))

(declare-fun b_and!48821 () Bool)

(assert (= b_and!48787 (and (=> t!71164 result!50130) b_and!48821)))

(declare-fun tb!45555 () Bool)

(declare-fun t!71166 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170)))) t!71166) tb!45555))

(declare-fun result!50134 () Bool)

(assert (= result!50134 result!50130))

(assert (=> b!454581 t!71166))

(declare-fun b_and!48823 () Bool)

(assert (= b_and!48791 (and (=> t!71166 result!50134) b_and!48823)))

(declare-fun t!71168 () Bool)

(declare-fun tb!45557 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170)))) t!71168) tb!45557))

(declare-fun result!50136 () Bool)

(assert (= result!50136 result!50130))

(assert (=> b!454581 t!71168))

(declare-fun b_and!48825 () Bool)

(assert (= b_and!48795 (and (=> t!71168 result!50136) b_and!48825)))

(declare-fun m!719063 () Bool)

(assert (=> d!173349 m!719063))

(declare-fun m!719065 () Bool)

(assert (=> b!454581 m!719065))

(assert (=> b!454581 m!719065))

(declare-fun m!719067 () Bool)

(assert (=> b!454581 m!719067))

(declare-fun m!719069 () Bool)

(assert (=> b!454582 m!719069))

(assert (=> start!43006 d!173349))

(declare-fun d!173351 () Bool)

(assert (=> d!173351 (= (list!1959 (seqFromList!1084 lt!202016)) (list!1962 (c!91744 (seqFromList!1084 lt!202016))))))

(declare-fun bs!56181 () Bool)

(assert (= bs!56181 d!173351))

(declare-fun m!719071 () Bool)

(assert (=> bs!56181 m!719071))

(assert (=> b!454226 d!173351))

(declare-fun d!173353 () Bool)

(declare-fun fromListB!482 (List!4431) BalanceConc!3088)

(assert (=> d!173353 (= (seqFromList!1084 lt!202016) (fromListB!482 lt!202016))))

(declare-fun bs!56182 () Bool)

(assert (= bs!56182 d!173353))

(declare-fun m!719073 () Bool)

(assert (=> bs!56182 m!719073))

(assert (=> b!454226 d!173353))

(declare-fun d!173355 () Bool)

(declare-fun fromListB!483 (List!4433) BalanceConc!3090)

(assert (=> d!173355 (= (seqFromList!1083 (t!71133 tokens!465)) (fromListB!483 (t!71133 tokens!465)))))

(declare-fun bs!56183 () Bool)

(assert (= bs!56183 d!173355))

(declare-fun m!719075 () Bool)

(assert (=> bs!56183 m!719075))

(assert (=> b!454205 d!173355))

(declare-fun b!454596 () Bool)

(declare-fun e!278184 () List!4431)

(assert (=> b!454596 (= e!278184 lt!202030)))

(declare-fun d!173357 () Bool)

(declare-fun e!278183 () Bool)

(assert (=> d!173357 e!278183))

(declare-fun res!202141 () Bool)

(assert (=> d!173357 (=> (not res!202141) (not e!278183))))

(declare-fun lt!202270 () List!4431)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!737 (List!4431) (InoxSet C!3088))

(assert (=> d!173357 (= res!202141 (= (content!737 lt!202270) ((_ map or) (content!737 lt!202023) (content!737 lt!202030))))))

(assert (=> d!173357 (= lt!202270 e!278184)))

(declare-fun c!91824 () Bool)

(assert (=> d!173357 (= c!91824 ((_ is Nil!4421) lt!202023))))

(assert (=> d!173357 (= (++!1284 lt!202023 lt!202030) lt!202270)))

(declare-fun b!454598 () Bool)

(declare-fun res!202142 () Bool)

(assert (=> b!454598 (=> (not res!202142) (not e!278183))))

(assert (=> b!454598 (= res!202142 (= (size!3623 lt!202270) (+ (size!3623 lt!202023) (size!3623 lt!202030))))))

(declare-fun b!454599 () Bool)

(assert (=> b!454599 (= e!278183 (or (not (= lt!202030 Nil!4421)) (= lt!202270 lt!202023)))))

(declare-fun b!454597 () Bool)

(assert (=> b!454597 (= e!278184 (Cons!4421 (h!9818 lt!202023) (++!1284 (t!71131 lt!202023) lt!202030)))))

(assert (= (and d!173357 c!91824) b!454596))

(assert (= (and d!173357 (not c!91824)) b!454597))

(assert (= (and d!173357 res!202141) b!454598))

(assert (= (and b!454598 res!202142) b!454599))

(declare-fun m!719077 () Bool)

(assert (=> d!173357 m!719077))

(declare-fun m!719079 () Bool)

(assert (=> d!173357 m!719079))

(declare-fun m!719081 () Bool)

(assert (=> d!173357 m!719081))

(declare-fun m!719083 () Bool)

(assert (=> b!454598 m!719083))

(assert (=> b!454598 m!718903))

(declare-fun m!719085 () Bool)

(assert (=> b!454598 m!719085))

(declare-fun m!719087 () Bool)

(assert (=> b!454597 m!719087))

(assert (=> b!454205 d!173357))

(declare-fun bs!56184 () Bool)

(declare-fun b!454602 () Bool)

(assert (= bs!56184 (and b!454602 d!173243)))

(declare-fun lambda!13299 () Int)

(assert (=> bs!56184 (not (= lambda!13299 lambda!13283))))

(declare-fun bs!56185 () Bool)

(assert (= bs!56185 (and b!454602 b!454399)))

(assert (=> bs!56185 (= lambda!13299 lambda!13292)))

(declare-fun bs!56186 () Bool)

(assert (= bs!56186 (and b!454602 b!454216)))

(assert (=> bs!56186 (not (= lambda!13299 lambda!13277))))

(declare-fun bs!56187 () Bool)

(assert (= bs!56187 (and b!454602 b!454217)))

(assert (=> bs!56187 (= lambda!13299 lambda!13278)))

(declare-fun bs!56188 () Bool)

(assert (= bs!56188 (and b!454602 b!454367)))

(assert (=> bs!56188 (= lambda!13299 lambda!13284)))

(declare-fun b!454610 () Bool)

(declare-fun e!278191 () Bool)

(assert (=> b!454610 (= e!278191 true)))

(declare-fun b!454609 () Bool)

(declare-fun e!278190 () Bool)

(assert (=> b!454609 (= e!278190 e!278191)))

(declare-fun b!454608 () Bool)

(declare-fun e!278189 () Bool)

(assert (=> b!454608 (= e!278189 e!278190)))

(assert (=> b!454602 e!278189))

(assert (= b!454609 b!454610))

(assert (= b!454608 b!454609))

(assert (= (and b!454602 ((_ is Cons!4422) rules!1920)) b!454608))

(assert (=> b!454610 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13299))))

(assert (=> b!454610 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13299))))

(assert (=> b!454602 true))

(declare-fun b!454600 () Bool)

(declare-fun e!278186 () BalanceConc!3088)

(assert (=> b!454600 (= e!278186 (charsOf!502 separatorToken!170))))

(declare-fun d!173359 () Bool)

(declare-fun c!91826 () Bool)

(assert (=> d!173359 (= c!91826 ((_ is Cons!4423) (t!71133 tokens!465)))))

(declare-fun e!278188 () List!4431)

(assert (=> d!173359 (= (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (t!71133 tokens!465) separatorToken!170) e!278188)))

(declare-fun bm!31468 () Bool)

(declare-fun call!31477 () BalanceConc!3088)

(assert (=> bm!31468 (= call!31477 (charsOf!502 (h!9820 (t!71133 tokens!465))))))

(declare-fun b!454601 () Bool)

(declare-fun e!278185 () List!4431)

(declare-fun call!31475 () List!4431)

(assert (=> b!454601 (= e!278185 call!31475)))

(declare-fun bm!31469 () Bool)

(declare-fun call!31473 () BalanceConc!3088)

(assert (=> bm!31469 (= call!31473 call!31477)))

(declare-fun c!91828 () Bool)

(declare-fun call!31474 () List!4431)

(declare-fun bm!31470 () Bool)

(assert (=> bm!31470 (= call!31474 (list!1959 (ite c!91828 call!31477 call!31473)))))

(assert (=> b!454602 (= e!278188 e!278185)))

(declare-fun lt!202271 () Unit!7961)

(assert (=> b!454602 (= lt!202271 (forallContained!412 (t!71133 tokens!465) lambda!13299 (h!9820 (t!71133 tokens!465))))))

(declare-fun lt!202274 () List!4431)

(assert (=> b!454602 (= lt!202274 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (t!71133 (t!71133 tokens!465)) separatorToken!170))))

(declare-fun lt!202276 () Option!1150)

(assert (=> b!454602 (= lt!202276 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274)))))

(assert (=> b!454602 (= c!91828 (and ((_ is Some!1149) lt!202276) (= (_1!2901 (v!15470 lt!202276)) (h!9820 (t!71133 tokens!465)))))))

(declare-fun bm!31471 () Bool)

(declare-fun call!31476 () List!4431)

(assert (=> bm!31471 (= call!31476 (list!1959 e!278186))))

(declare-fun c!91825 () Bool)

(declare-fun c!91827 () Bool)

(assert (=> bm!31471 (= c!91825 c!91827)))

(declare-fun b!454603 () Bool)

(declare-fun e!278187 () List!4431)

(assert (=> b!454603 (= e!278187 Nil!4421)))

(assert (=> b!454603 (= (print!470 thiss!17480 (singletonSeq!405 (h!9820 (t!71133 tokens!465)))) (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 (t!71133 tokens!465))) 0 (BalanceConc!3089 Empty!1540)))))

(declare-fun lt!202272 () Unit!7961)

(declare-fun Unit!7971 () Unit!7961)

(assert (=> b!454603 (= lt!202272 Unit!7971)))

(declare-fun lt!202275 () Unit!7961)

(assert (=> b!454603 (= lt!202275 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 call!31476 lt!202274))))

(assert (=> b!454603 false))

(declare-fun lt!202273 () Unit!7961)

(declare-fun Unit!7972 () Unit!7961)

(assert (=> b!454603 (= lt!202273 Unit!7972)))

(declare-fun b!454604 () Bool)

(assert (=> b!454604 (= e!278187 (++!1284 call!31475 lt!202274))))

(declare-fun b!454605 () Bool)

(assert (=> b!454605 (= e!278186 call!31473)))

(declare-fun bm!31472 () Bool)

(assert (=> bm!31472 (= call!31475 (++!1284 call!31474 (ite c!91828 lt!202274 call!31476)))))

(declare-fun b!454606 () Bool)

(assert (=> b!454606 (= e!278188 Nil!4421)))

(declare-fun b!454607 () Bool)

(assert (=> b!454607 (= c!91827 (and ((_ is Some!1149) lt!202276) (not (= (_1!2901 (v!15470 lt!202276)) (h!9820 (t!71133 tokens!465))))))))

(assert (=> b!454607 (= e!278185 e!278187)))

(assert (= (and d!173359 c!91826) b!454602))

(assert (= (and d!173359 (not c!91826)) b!454606))

(assert (= (and b!454602 c!91828) b!454601))

(assert (= (and b!454602 (not c!91828)) b!454607))

(assert (= (and b!454607 c!91827) b!454604))

(assert (= (and b!454607 (not c!91827)) b!454603))

(assert (= (or b!454604 b!454603) bm!31469))

(assert (= (or b!454604 b!454603) bm!31471))

(assert (= (and bm!31471 c!91825) b!454600))

(assert (= (and bm!31471 (not c!91825)) b!454605))

(assert (= (or b!454601 bm!31469) bm!31468))

(assert (= (or b!454601 b!454604) bm!31470))

(assert (= (or b!454601 b!454604) bm!31472))

(declare-fun m!719089 () Bool)

(assert (=> bm!31468 m!719089))

(assert (=> b!454600 m!718457))

(declare-fun m!719091 () Bool)

(assert (=> b!454602 m!719091))

(declare-fun m!719093 () Bool)

(assert (=> b!454602 m!719093))

(assert (=> b!454602 m!719089))

(declare-fun m!719095 () Bool)

(assert (=> b!454602 m!719095))

(assert (=> b!454602 m!719093))

(declare-fun m!719097 () Bool)

(assert (=> b!454602 m!719097))

(declare-fun m!719099 () Bool)

(assert (=> b!454602 m!719099))

(assert (=> b!454602 m!719089))

(assert (=> b!454602 m!719091))

(declare-fun m!719101 () Bool)

(assert (=> bm!31471 m!719101))

(declare-fun m!719103 () Bool)

(assert (=> b!454604 m!719103))

(declare-fun m!719105 () Bool)

(assert (=> b!454603 m!719105))

(assert (=> b!454603 m!719105))

(declare-fun m!719107 () Bool)

(assert (=> b!454603 m!719107))

(assert (=> b!454603 m!719105))

(declare-fun m!719109 () Bool)

(assert (=> b!454603 m!719109))

(declare-fun m!719111 () Bool)

(assert (=> b!454603 m!719111))

(declare-fun m!719113 () Bool)

(assert (=> bm!31472 m!719113))

(declare-fun m!719115 () Bool)

(assert (=> bm!31470 m!719115))

(assert (=> b!454205 d!173359))

(declare-fun b!454611 () Bool)

(declare-fun e!278193 () List!4431)

(assert (=> b!454611 (= e!278193 lt!202021)))

(declare-fun d!173361 () Bool)

(declare-fun e!278192 () Bool)

(assert (=> d!173361 e!278192))

(declare-fun res!202143 () Bool)

(assert (=> d!173361 (=> (not res!202143) (not e!278192))))

(declare-fun lt!202277 () List!4431)

(assert (=> d!173361 (= res!202143 (= (content!737 lt!202277) ((_ map or) (content!737 (++!1284 lt!202023 lt!202032)) (content!737 lt!202021))))))

(assert (=> d!173361 (= lt!202277 e!278193)))

(declare-fun c!91829 () Bool)

(assert (=> d!173361 (= c!91829 ((_ is Nil!4421) (++!1284 lt!202023 lt!202032)))))

(assert (=> d!173361 (= (++!1284 (++!1284 lt!202023 lt!202032) lt!202021) lt!202277)))

(declare-fun b!454613 () Bool)

(declare-fun res!202144 () Bool)

(assert (=> b!454613 (=> (not res!202144) (not e!278192))))

(assert (=> b!454613 (= res!202144 (= (size!3623 lt!202277) (+ (size!3623 (++!1284 lt!202023 lt!202032)) (size!3623 lt!202021))))))

(declare-fun b!454614 () Bool)

(assert (=> b!454614 (= e!278192 (or (not (= lt!202021 Nil!4421)) (= lt!202277 (++!1284 lt!202023 lt!202032))))))

(declare-fun b!454612 () Bool)

(assert (=> b!454612 (= e!278193 (Cons!4421 (h!9818 (++!1284 lt!202023 lt!202032)) (++!1284 (t!71131 (++!1284 lt!202023 lt!202032)) lt!202021)))))

(assert (= (and d!173361 c!91829) b!454611))

(assert (= (and d!173361 (not c!91829)) b!454612))

(assert (= (and d!173361 res!202143) b!454613))

(assert (= (and b!454613 res!202144) b!454614))

(declare-fun m!719117 () Bool)

(assert (=> d!173361 m!719117))

(assert (=> d!173361 m!718467))

(declare-fun m!719119 () Bool)

(assert (=> d!173361 m!719119))

(declare-fun m!719121 () Bool)

(assert (=> d!173361 m!719121))

(declare-fun m!719123 () Bool)

(assert (=> b!454613 m!719123))

(assert (=> b!454613 m!718467))

(declare-fun m!719125 () Bool)

(assert (=> b!454613 m!719125))

(declare-fun m!719127 () Bool)

(assert (=> b!454613 m!719127))

(declare-fun m!719129 () Bool)

(assert (=> b!454612 m!719129))

(assert (=> b!454205 d!173361))

(declare-fun d!173363 () Bool)

(declare-fun lt!202280 () BalanceConc!3088)

(assert (=> d!173363 (= (list!1959 lt!202280) (originalCharacters!902 separatorToken!170))))

(assert (=> d!173363 (= lt!202280 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170)))))

(assert (=> d!173363 (= (charsOf!502 separatorToken!170) lt!202280)))

(declare-fun b_lambda!18805 () Bool)

(assert (=> (not b_lambda!18805) (not d!173363)))

(assert (=> d!173363 t!71164))

(declare-fun b_and!48827 () Bool)

(assert (= b_and!48821 (and (=> t!71164 result!50130) b_and!48827)))

(assert (=> d!173363 t!71166))

(declare-fun b_and!48829 () Bool)

(assert (= b_and!48823 (and (=> t!71166 result!50134) b_and!48829)))

(assert (=> d!173363 t!71168))

(declare-fun b_and!48831 () Bool)

(assert (= b_and!48825 (and (=> t!71168 result!50136) b_and!48831)))

(declare-fun m!719131 () Bool)

(assert (=> d!173363 m!719131))

(assert (=> d!173363 m!719065))

(assert (=> b!454205 d!173363))

(declare-fun bs!56189 () Bool)

(declare-fun d!173365 () Bool)

(assert (= bs!56189 (and d!173365 d!173243)))

(declare-fun lambda!13300 () Int)

(assert (=> bs!56189 (= lambda!13300 lambda!13283)))

(declare-fun bs!56190 () Bool)

(assert (= bs!56190 (and d!173365 b!454399)))

(assert (=> bs!56190 (not (= lambda!13300 lambda!13292))))

(declare-fun bs!56191 () Bool)

(assert (= bs!56191 (and d!173365 b!454602)))

(assert (=> bs!56191 (not (= lambda!13300 lambda!13299))))

(declare-fun bs!56192 () Bool)

(assert (= bs!56192 (and d!173365 b!454216)))

(assert (=> bs!56192 (= lambda!13300 lambda!13277)))

(declare-fun bs!56193 () Bool)

(assert (= bs!56193 (and d!173365 b!454217)))

(assert (=> bs!56193 (not (= lambda!13300 lambda!13278))))

(declare-fun bs!56194 () Bool)

(assert (= bs!56194 (and d!173365 b!454367)))

(assert (=> bs!56194 (not (= lambda!13300 lambda!13284))))

(declare-fun bs!56195 () Bool)

(declare-fun b!454621 () Bool)

(assert (= bs!56195 (and b!454621 d!173243)))

(declare-fun lambda!13301 () Int)

(assert (=> bs!56195 (not (= lambda!13301 lambda!13283))))

(declare-fun bs!56196 () Bool)

(assert (= bs!56196 (and b!454621 b!454399)))

(assert (=> bs!56196 (= lambda!13301 lambda!13292)))

(declare-fun bs!56197 () Bool)

(assert (= bs!56197 (and b!454621 b!454602)))

(assert (=> bs!56197 (= lambda!13301 lambda!13299)))

(declare-fun bs!56198 () Bool)

(assert (= bs!56198 (and b!454621 b!454216)))

(assert (=> bs!56198 (not (= lambda!13301 lambda!13277))))

(declare-fun bs!56199 () Bool)

(assert (= bs!56199 (and b!454621 b!454217)))

(assert (=> bs!56199 (= lambda!13301 lambda!13278)))

(declare-fun bs!56200 () Bool)

(assert (= bs!56200 (and b!454621 b!454367)))

(assert (=> bs!56200 (= lambda!13301 lambda!13284)))

(declare-fun bs!56201 () Bool)

(assert (= bs!56201 (and b!454621 d!173365)))

(assert (=> bs!56201 (not (= lambda!13301 lambda!13300))))

(declare-fun b!454628 () Bool)

(declare-fun e!278203 () Bool)

(assert (=> b!454628 (= e!278203 true)))

(declare-fun b!454627 () Bool)

(declare-fun e!278202 () Bool)

(assert (=> b!454627 (= e!278202 e!278203)))

(declare-fun b!454626 () Bool)

(declare-fun e!278201 () Bool)

(assert (=> b!454626 (= e!278201 e!278202)))

(assert (=> b!454621 e!278201))

(assert (= b!454627 b!454628))

(assert (= b!454626 b!454627))

(assert (= (and b!454621 ((_ is Cons!4422) rules!1920)) b!454626))

(assert (=> b!454628 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13301))))

(assert (=> b!454628 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13301))))

(assert (=> b!454621 true))

(declare-fun c!91832 () Bool)

(declare-fun call!31480 () Token!1462)

(declare-fun bm!31473 () Bool)

(declare-fun call!31479 () Token!1462)

(declare-fun c!91833 () Bool)

(declare-fun call!31481 () BalanceConc!3088)

(assert (=> bm!31473 (= call!31481 (charsOf!502 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479))))))

(declare-fun b!454615 () Bool)

(declare-fun e!278195 () Bool)

(assert (=> b!454615 (= e!278195 (<= 0 (size!3622 lt!202020)))))

(declare-fun b!454616 () Bool)

(declare-fun e!278197 () BalanceConc!3088)

(assert (=> b!454616 (= e!278197 (charsOf!502 call!31479))))

(declare-fun b!454617 () Bool)

(declare-fun e!278196 () BalanceConc!3088)

(assert (=> b!454617 (= e!278196 (BalanceConc!3089 Empty!1540))))

(assert (=> b!454617 (= (print!470 thiss!17480 (singletonSeq!405 call!31479)) (printTailRec!431 thiss!17480 (singletonSeq!405 call!31479) 0 (BalanceConc!3089 Empty!1540)))))

(declare-fun lt!202294 () Unit!7961)

(declare-fun Unit!7973 () Unit!7961)

(assert (=> b!454617 (= lt!202294 Unit!7973)))

(declare-fun call!31478 () BalanceConc!3088)

(declare-fun lt!202289 () Unit!7961)

(declare-fun lt!202284 () BalanceConc!3088)

(assert (=> b!454617 (= lt!202289 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 (list!1959 call!31478) (list!1959 lt!202284)))))

(assert (=> b!454617 false))

(declare-fun lt!202290 () Unit!7961)

(declare-fun Unit!7974 () Unit!7961)

(assert (=> b!454617 (= lt!202290 Unit!7974)))

(declare-fun lt!202285 () BalanceConc!3088)

(assert (=> d!173365 (= (list!1959 lt!202285) (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (dropList!244 lt!202020 0) separatorToken!170))))

(declare-fun e!278200 () BalanceConc!3088)

(assert (=> d!173365 (= lt!202285 e!278200)))

(declare-fun c!91831 () Bool)

(assert (=> d!173365 (= c!91831 (>= 0 (size!3622 lt!202020)))))

(declare-fun lt!202288 () Unit!7961)

(assert (=> d!173365 (= lt!202288 (lemmaContentSubsetPreservesForall!187 (list!1963 lt!202020) (dropList!244 lt!202020 0) lambda!13300))))

(assert (=> d!173365 e!278195))

(declare-fun res!202145 () Bool)

(assert (=> d!173365 (=> (not res!202145) (not e!278195))))

(assert (=> d!173365 (= res!202145 (>= 0 0))))

(assert (=> d!173365 (= (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 0) lt!202285)))

(declare-fun bm!31474 () Bool)

(assert (=> bm!31474 (= call!31478 call!31481)))

(declare-fun b!454618 () Bool)

(declare-fun e!278198 () Bool)

(declare-fun lt!202286 () Option!1151)

(assert (=> b!454618 (= e!278198 (= (_1!2902 (v!15471 lt!202286)) (apply!1130 lt!202020 0)))))

(declare-fun b!454619 () Bool)

(declare-fun e!278194 () Bool)

(assert (=> b!454619 (= c!91832 e!278194)))

(declare-fun res!202147 () Bool)

(assert (=> b!454619 (=> (not res!202147) (not e!278194))))

(assert (=> b!454619 (= res!202147 ((_ is Some!1150) lt!202286))))

(declare-fun e!278199 () BalanceConc!3088)

(assert (=> b!454619 (= e!278199 e!278196)))

(declare-fun b!454620 () Bool)

(declare-fun call!31482 () BalanceConc!3088)

(assert (=> b!454620 (= e!278199 call!31482)))

(assert (=> b!454621 (= e!278200 e!278199)))

(declare-fun lt!202283 () List!4433)

(assert (=> b!454621 (= lt!202283 (list!1963 lt!202020))))

(declare-fun lt!202292 () Unit!7961)

(assert (=> b!454621 (= lt!202292 (lemmaDropApply!284 lt!202283 0))))

(assert (=> b!454621 (= (head!1108 (drop!313 lt!202283 0)) (apply!1131 lt!202283 0))))

(declare-fun lt!202281 () Unit!7961)

(assert (=> b!454621 (= lt!202281 lt!202292)))

(declare-fun lt!202282 () List!4433)

(assert (=> b!454621 (= lt!202282 (list!1963 lt!202020))))

(declare-fun lt!202291 () Unit!7961)

(assert (=> b!454621 (= lt!202291 (lemmaDropTail!276 lt!202282 0))))

(assert (=> b!454621 (= (tail!636 (drop!313 lt!202282 0)) (drop!313 lt!202282 (+ 0 1)))))

(declare-fun lt!202293 () Unit!7961)

(assert (=> b!454621 (= lt!202293 lt!202291)))

(declare-fun lt!202287 () Unit!7961)

(assert (=> b!454621 (= lt!202287 (forallContained!412 (list!1963 lt!202020) lambda!13301 (apply!1130 lt!202020 0)))))

(assert (=> b!454621 (= lt!202284 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 (+ 0 1)))))

(assert (=> b!454621 (= lt!202286 (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284)))))

(declare-fun res!202146 () Bool)

(assert (=> b!454621 (= res!202146 ((_ is Some!1150) lt!202286))))

(assert (=> b!454621 (=> (not res!202146) (not e!278198))))

(assert (=> b!454621 (= c!91833 e!278198)))

(declare-fun bm!31475 () Bool)

(declare-fun c!91830 () Bool)

(assert (=> bm!31475 (= c!91830 c!91833)))

(assert (=> bm!31475 (= call!31482 (++!1286 e!278197 (ite c!91833 lt!202284 call!31478)))))

(declare-fun bm!31476 () Bool)

(assert (=> bm!31476 (= call!31479 call!31480)))

(declare-fun b!454622 () Bool)

(assert (=> b!454622 (= e!278196 (++!1286 call!31482 lt!202284))))

(declare-fun b!454623 () Bool)

(assert (=> b!454623 (= e!278197 call!31481)))

(declare-fun bm!31477 () Bool)

(assert (=> bm!31477 (= call!31480 (apply!1130 lt!202020 0))))

(declare-fun b!454624 () Bool)

(assert (=> b!454624 (= e!278194 (not (= (_1!2902 (v!15471 lt!202286)) call!31480)))))

(declare-fun b!454625 () Bool)

(assert (=> b!454625 (= e!278200 (BalanceConc!3089 Empty!1540))))

(assert (= (and d!173365 res!202145) b!454615))

(assert (= (and d!173365 c!91831) b!454625))

(assert (= (and d!173365 (not c!91831)) b!454621))

(assert (= (and b!454621 res!202146) b!454618))

(assert (= (and b!454621 c!91833) b!454620))

(assert (= (and b!454621 (not c!91833)) b!454619))

(assert (= (and b!454619 res!202147) b!454624))

(assert (= (and b!454619 c!91832) b!454622))

(assert (= (and b!454619 (not c!91832)) b!454617))

(assert (= (or b!454622 b!454617) bm!31476))

(assert (= (or b!454622 b!454617) bm!31474))

(assert (= (or b!454620 b!454624 bm!31476) bm!31477))

(assert (= (or b!454620 bm!31474) bm!31473))

(assert (= (or b!454620 b!454622) bm!31475))

(assert (= (and bm!31475 c!91830) b!454623))

(assert (= (and bm!31475 (not c!91830)) b!454616))

(declare-fun m!719133 () Bool)

(assert (=> b!454618 m!719133))

(declare-fun m!719135 () Bool)

(assert (=> b!454622 m!719135))

(declare-fun m!719137 () Bool)

(assert (=> b!454621 m!719137))

(declare-fun m!719139 () Bool)

(assert (=> b!454621 m!719139))

(assert (=> b!454621 m!719133))

(declare-fun m!719141 () Bool)

(assert (=> b!454621 m!719141))

(declare-fun m!719143 () Bool)

(assert (=> b!454621 m!719143))

(assert (=> b!454621 m!719133))

(declare-fun m!719145 () Bool)

(assert (=> b!454621 m!719145))

(assert (=> b!454621 m!719139))

(declare-fun m!719147 () Bool)

(assert (=> b!454621 m!719147))

(declare-fun m!719149 () Bool)

(assert (=> b!454621 m!719149))

(declare-fun m!719151 () Bool)

(assert (=> b!454621 m!719151))

(declare-fun m!719153 () Bool)

(assert (=> b!454621 m!719153))

(assert (=> b!454621 m!719143))

(declare-fun m!719155 () Bool)

(assert (=> b!454621 m!719155))

(declare-fun m!719157 () Bool)

(assert (=> b!454621 m!719157))

(declare-fun m!719159 () Bool)

(assert (=> b!454621 m!719159))

(declare-fun m!719161 () Bool)

(assert (=> b!454621 m!719161))

(declare-fun m!719163 () Bool)

(assert (=> b!454621 m!719163))

(assert (=> b!454621 m!719161))

(assert (=> b!454621 m!719133))

(assert (=> b!454621 m!719141))

(assert (=> b!454621 m!719151))

(declare-fun m!719165 () Bool)

(assert (=> b!454615 m!719165))

(declare-fun m!719167 () Bool)

(assert (=> bm!31475 m!719167))

(declare-fun m!719169 () Bool)

(assert (=> bm!31473 m!719169))

(declare-fun m!719171 () Bool)

(assert (=> b!454616 m!719171))

(declare-fun m!719173 () Bool)

(assert (=> b!454617 m!719173))

(declare-fun m!719175 () Bool)

(assert (=> b!454617 m!719175))

(assert (=> b!454617 m!719173))

(declare-fun m!719177 () Bool)

(assert (=> b!454617 m!719177))

(declare-fun m!719179 () Bool)

(assert (=> b!454617 m!719179))

(assert (=> b!454617 m!719173))

(declare-fun m!719181 () Bool)

(assert (=> b!454617 m!719181))

(assert (=> b!454617 m!719179))

(assert (=> b!454617 m!719181))

(declare-fun m!719183 () Bool)

(assert (=> b!454617 m!719183))

(assert (=> bm!31477 m!719133))

(assert (=> d!173365 m!719143))

(declare-fun m!719185 () Bool)

(assert (=> d!173365 m!719185))

(declare-fun m!719187 () Bool)

(assert (=> d!173365 m!719187))

(assert (=> d!173365 m!719185))

(declare-fun m!719189 () Bool)

(assert (=> d!173365 m!719189))

(assert (=> d!173365 m!719143))

(declare-fun m!719191 () Bool)

(assert (=> d!173365 m!719191))

(assert (=> d!173365 m!719165))

(assert (=> d!173365 m!719185))

(assert (=> b!454205 d!173365))

(declare-fun d!173367 () Bool)

(assert (=> d!173367 (= (++!1284 (++!1284 lt!202023 lt!202032) lt!202021) (++!1284 lt!202023 (++!1284 lt!202032 lt!202021)))))

(declare-fun lt!202297 () Unit!7961)

(declare-fun choose!3429 (List!4431 List!4431 List!4431) Unit!7961)

(assert (=> d!173367 (= lt!202297 (choose!3429 lt!202023 lt!202032 lt!202021))))

(assert (=> d!173367 (= (lemmaConcatAssociativity!594 lt!202023 lt!202032 lt!202021) lt!202297)))

(declare-fun bs!56202 () Bool)

(assert (= bs!56202 d!173367))

(assert (=> bs!56202 m!718461))

(assert (=> bs!56202 m!718461))

(declare-fun m!719193 () Bool)

(assert (=> bs!56202 m!719193))

(assert (=> bs!56202 m!718467))

(assert (=> bs!56202 m!718475))

(assert (=> bs!56202 m!718467))

(declare-fun m!719195 () Bool)

(assert (=> bs!56202 m!719195))

(assert (=> b!454205 d!173367))

(declare-fun d!173369 () Bool)

(assert (=> d!173369 (= (list!1959 (charsOf!502 (h!9820 tokens!465))) (list!1962 (c!91744 (charsOf!502 (h!9820 tokens!465)))))))

(declare-fun bs!56203 () Bool)

(assert (= bs!56203 d!173369))

(declare-fun m!719197 () Bool)

(assert (=> bs!56203 m!719197))

(assert (=> b!454205 d!173369))

(declare-fun d!173371 () Bool)

(declare-fun lt!202298 () BalanceConc!3088)

(assert (=> d!173371 (= (list!1959 lt!202298) (originalCharacters!902 (h!9820 tokens!465)))))

(assert (=> d!173371 (= lt!202298 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465))))))

(assert (=> d!173371 (= (charsOf!502 (h!9820 tokens!465)) lt!202298)))

(declare-fun b_lambda!18807 () Bool)

(assert (=> (not b_lambda!18807) (not d!173371)))

(declare-fun t!71170 () Bool)

(declare-fun tb!45559 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) t!71170) tb!45559))

(declare-fun b!454629 () Bool)

(declare-fun e!278204 () Bool)

(declare-fun tp!126333 () Bool)

(assert (=> b!454629 (= e!278204 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465))))) tp!126333))))

(declare-fun result!50138 () Bool)

(assert (=> tb!45559 (= result!50138 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465)))) e!278204))))

(assert (= tb!45559 b!454629))

(declare-fun m!719199 () Bool)

(assert (=> b!454629 m!719199))

(declare-fun m!719201 () Bool)

(assert (=> tb!45559 m!719201))

(assert (=> d!173371 t!71170))

(declare-fun b_and!48833 () Bool)

(assert (= b_and!48827 (and (=> t!71170 result!50138) b_and!48833)))

(declare-fun t!71172 () Bool)

(declare-fun tb!45561 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) t!71172) tb!45561))

(declare-fun result!50140 () Bool)

(assert (= result!50140 result!50138))

(assert (=> d!173371 t!71172))

(declare-fun b_and!48835 () Bool)

(assert (= b_and!48829 (and (=> t!71172 result!50140) b_and!48835)))

(declare-fun t!71174 () Bool)

(declare-fun tb!45563 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) t!71174) tb!45563))

(declare-fun result!50142 () Bool)

(assert (= result!50142 result!50138))

(assert (=> d!173371 t!71174))

(declare-fun b_and!48837 () Bool)

(assert (= b_and!48831 (and (=> t!71174 result!50142) b_and!48837)))

(declare-fun m!719203 () Bool)

(assert (=> d!173371 m!719203))

(declare-fun m!719205 () Bool)

(assert (=> d!173371 m!719205))

(assert (=> b!454205 d!173371))

(declare-fun d!173373 () Bool)

(assert (=> d!173373 (= (list!1959 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 0)) (list!1962 (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 0))))))

(declare-fun bs!56204 () Bool)

(assert (= bs!56204 d!173373))

(declare-fun m!719207 () Bool)

(assert (=> bs!56204 m!719207))

(assert (=> b!454205 d!173373))

(declare-fun b!454630 () Bool)

(declare-fun e!278206 () List!4431)

(assert (=> b!454630 (= e!278206 lt!202032)))

(declare-fun d!173375 () Bool)

(declare-fun e!278205 () Bool)

(assert (=> d!173375 e!278205))

(declare-fun res!202148 () Bool)

(assert (=> d!173375 (=> (not res!202148) (not e!278205))))

(declare-fun lt!202299 () List!4431)

(assert (=> d!173375 (= res!202148 (= (content!737 lt!202299) ((_ map or) (content!737 lt!202023) (content!737 lt!202032))))))

(assert (=> d!173375 (= lt!202299 e!278206)))

(declare-fun c!91834 () Bool)

(assert (=> d!173375 (= c!91834 ((_ is Nil!4421) lt!202023))))

(assert (=> d!173375 (= (++!1284 lt!202023 lt!202032) lt!202299)))

(declare-fun b!454632 () Bool)

(declare-fun res!202149 () Bool)

(assert (=> b!454632 (=> (not res!202149) (not e!278205))))

(assert (=> b!454632 (= res!202149 (= (size!3623 lt!202299) (+ (size!3623 lt!202023) (size!3623 lt!202032))))))

(declare-fun b!454633 () Bool)

(assert (=> b!454633 (= e!278205 (or (not (= lt!202032 Nil!4421)) (= lt!202299 lt!202023)))))

(declare-fun b!454631 () Bool)

(assert (=> b!454631 (= e!278206 (Cons!4421 (h!9818 lt!202023) (++!1284 (t!71131 lt!202023) lt!202032)))))

(assert (= (and d!173375 c!91834) b!454630))

(assert (= (and d!173375 (not c!91834)) b!454631))

(assert (= (and d!173375 res!202148) b!454632))

(assert (= (and b!454632 res!202149) b!454633))

(declare-fun m!719209 () Bool)

(assert (=> d!173375 m!719209))

(assert (=> d!173375 m!719079))

(declare-fun m!719211 () Bool)

(assert (=> d!173375 m!719211))

(declare-fun m!719213 () Bool)

(assert (=> b!454632 m!719213))

(assert (=> b!454632 m!718903))

(declare-fun m!719215 () Bool)

(assert (=> b!454632 m!719215))

(declare-fun m!719217 () Bool)

(assert (=> b!454631 m!719217))

(assert (=> b!454205 d!173375))

(declare-fun d!173377 () Bool)

(assert (=> d!173377 (= (list!1959 (charsOf!502 separatorToken!170)) (list!1962 (c!91744 (charsOf!502 separatorToken!170))))))

(declare-fun bs!56205 () Bool)

(assert (= bs!56205 d!173377))

(declare-fun m!719219 () Bool)

(assert (=> bs!56205 m!719219))

(assert (=> b!454205 d!173377))

(declare-fun b!454634 () Bool)

(declare-fun e!278208 () List!4431)

(assert (=> b!454634 (= e!278208 lt!202021)))

(declare-fun d!173379 () Bool)

(declare-fun e!278207 () Bool)

(assert (=> d!173379 e!278207))

(declare-fun res!202150 () Bool)

(assert (=> d!173379 (=> (not res!202150) (not e!278207))))

(declare-fun lt!202300 () List!4431)

(assert (=> d!173379 (= res!202150 (= (content!737 lt!202300) ((_ map or) (content!737 lt!202032) (content!737 lt!202021))))))

(assert (=> d!173379 (= lt!202300 e!278208)))

(declare-fun c!91835 () Bool)

(assert (=> d!173379 (= c!91835 ((_ is Nil!4421) lt!202032))))

(assert (=> d!173379 (= (++!1284 lt!202032 lt!202021) lt!202300)))

(declare-fun b!454636 () Bool)

(declare-fun res!202151 () Bool)

(assert (=> b!454636 (=> (not res!202151) (not e!278207))))

(assert (=> b!454636 (= res!202151 (= (size!3623 lt!202300) (+ (size!3623 lt!202032) (size!3623 lt!202021))))))

(declare-fun b!454637 () Bool)

(assert (=> b!454637 (= e!278207 (or (not (= lt!202021 Nil!4421)) (= lt!202300 lt!202032)))))

(declare-fun b!454635 () Bool)

(assert (=> b!454635 (= e!278208 (Cons!4421 (h!9818 lt!202032) (++!1284 (t!71131 lt!202032) lt!202021)))))

(assert (= (and d!173379 c!91835) b!454634))

(assert (= (and d!173379 (not c!91835)) b!454635))

(assert (= (and d!173379 res!202150) b!454636))

(assert (= (and b!454636 res!202151) b!454637))

(declare-fun m!719221 () Bool)

(assert (=> d!173379 m!719221))

(assert (=> d!173379 m!719211))

(assert (=> d!173379 m!719121))

(declare-fun m!719223 () Bool)

(assert (=> b!454636 m!719223))

(assert (=> b!454636 m!719215))

(assert (=> b!454636 m!719127))

(declare-fun m!719225 () Bool)

(assert (=> b!454635 m!719225))

(assert (=> b!454205 d!173379))

(declare-fun d!173381 () Bool)

(assert (=> d!173381 (= (inv!5492 (tag!1119 (rule!1550 (h!9820 tokens!465)))) (= (mod (str.len (value!28796 (tag!1119 (rule!1550 (h!9820 tokens!465))))) 2) 0))))

(assert (=> b!454203 d!173381))

(declare-fun d!173383 () Bool)

(declare-fun res!202152 () Bool)

(declare-fun e!278209 () Bool)

(assert (=> d!173383 (=> (not res!202152) (not e!278209))))

(assert (=> d!173383 (= res!202152 (semiInverseModEq!341 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465))))))))

(assert (=> d!173383 (= (inv!5495 (transformation!859 (rule!1550 (h!9820 tokens!465)))) e!278209)))

(declare-fun b!454638 () Bool)

(assert (=> b!454638 (= e!278209 (equivClasses!324 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465))))))))

(assert (= (and d!173383 res!202152) b!454638))

(declare-fun m!719227 () Bool)

(assert (=> d!173383 m!719227))

(declare-fun m!719229 () Bool)

(assert (=> b!454638 m!719229))

(assert (=> b!454203 d!173383))

(declare-fun d!173385 () Bool)

(declare-fun res!202153 () Bool)

(declare-fun e!278210 () Bool)

(assert (=> d!173385 (=> (not res!202153) (not e!278210))))

(assert (=> d!173385 (= res!202153 (not (isEmpty!3386 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (=> d!173385 (= (inv!5496 (h!9820 tokens!465)) e!278210)))

(declare-fun b!454639 () Bool)

(declare-fun res!202154 () Bool)

(assert (=> b!454639 (=> (not res!202154) (not e!278210))))

(assert (=> b!454639 (= res!202154 (= (originalCharacters!902 (h!9820 tokens!465)) (list!1959 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465))))))))

(declare-fun b!454640 () Bool)

(assert (=> b!454640 (= e!278210 (= (size!3619 (h!9820 tokens!465)) (size!3623 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (= (and d!173385 res!202153) b!454639))

(assert (= (and b!454639 res!202154) b!454640))

(declare-fun b_lambda!18809 () Bool)

(assert (=> (not b_lambda!18809) (not b!454639)))

(assert (=> b!454639 t!71170))

(declare-fun b_and!48839 () Bool)

(assert (= b_and!48833 (and (=> t!71170 result!50138) b_and!48839)))

(assert (=> b!454639 t!71172))

(declare-fun b_and!48841 () Bool)

(assert (= b_and!48835 (and (=> t!71172 result!50140) b_and!48841)))

(assert (=> b!454639 t!71174))

(declare-fun b_and!48843 () Bool)

(assert (= b_and!48837 (and (=> t!71174 result!50142) b_and!48843)))

(declare-fun m!719231 () Bool)

(assert (=> d!173385 m!719231))

(assert (=> b!454639 m!719205))

(assert (=> b!454639 m!719205))

(declare-fun m!719233 () Bool)

(assert (=> b!454639 m!719233))

(declare-fun m!719235 () Bool)

(assert (=> b!454640 m!719235))

(assert (=> b!454204 d!173385))

(declare-fun d!173387 () Bool)

(assert (=> d!173387 (= (isDefined!989 lt!202018) (not (isEmpty!3390 lt!202018)))))

(declare-fun bs!56206 () Bool)

(assert (= bs!56206 d!173387))

(declare-fun m!719237 () Bool)

(assert (=> bs!56206 m!719237))

(assert (=> b!454202 d!173387))

(declare-fun b!454641 () Bool)

(declare-fun e!278213 () Option!1150)

(declare-fun lt!202301 () Option!1150)

(declare-fun lt!202302 () Option!1150)

(assert (=> b!454641 (= e!278213 (ite (and ((_ is None!1149) lt!202301) ((_ is None!1149) lt!202302)) None!1149 (ite ((_ is None!1149) lt!202302) lt!202301 (ite ((_ is None!1149) lt!202301) lt!202302 (ite (>= (size!3619 (_1!2901 (v!15470 lt!202301))) (size!3619 (_1!2901 (v!15470 lt!202302)))) lt!202301 lt!202302)))))))

(declare-fun call!31483 () Option!1150)

(assert (=> b!454641 (= lt!202301 call!31483)))

(assert (=> b!454641 (= lt!202302 (maxPrefix!461 thiss!17480 (t!71132 rules!1920) lt!202016))))

(declare-fun b!454642 () Bool)

(declare-fun res!202156 () Bool)

(declare-fun e!278212 () Bool)

(assert (=> b!454642 (=> (not res!202156) (not e!278212))))

(declare-fun lt!202304 () Option!1150)

(assert (=> b!454642 (= res!202156 (matchR!401 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))))))

(declare-fun b!454643 () Bool)

(declare-fun res!202157 () Bool)

(assert (=> b!454643 (=> (not res!202157) (not e!278212))))

(assert (=> b!454643 (= res!202157 (= (value!28797 (_1!2901 (get!1618 lt!202304))) (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202304)))))))))

(declare-fun b!454644 () Bool)

(assert (=> b!454644 (= e!278212 (contains!990 rules!1920 (rule!1550 (_1!2901 (get!1618 lt!202304)))))))

(declare-fun b!454645 () Bool)

(assert (=> b!454645 (= e!278213 call!31483)))

(declare-fun b!454646 () Bool)

(declare-fun e!278211 () Bool)

(assert (=> b!454646 (= e!278211 e!278212)))

(declare-fun res!202159 () Bool)

(assert (=> b!454646 (=> (not res!202159) (not e!278212))))

(assert (=> b!454646 (= res!202159 (isDefined!989 lt!202304))))

(declare-fun d!173389 () Bool)

(assert (=> d!173389 e!278211))

(declare-fun res!202158 () Bool)

(assert (=> d!173389 (=> res!202158 e!278211)))

(assert (=> d!173389 (= res!202158 (isEmpty!3390 lt!202304))))

(assert (=> d!173389 (= lt!202304 e!278213)))

(declare-fun c!91836 () Bool)

(assert (=> d!173389 (= c!91836 (and ((_ is Cons!4422) rules!1920) ((_ is Nil!4422) (t!71132 rules!1920))))))

(declare-fun lt!202303 () Unit!7961)

(declare-fun lt!202305 () Unit!7961)

(assert (=> d!173389 (= lt!202303 lt!202305)))

(assert (=> d!173389 (isPrefix!513 lt!202016 lt!202016)))

(assert (=> d!173389 (= lt!202305 (lemmaIsPrefixRefl!287 lt!202016 lt!202016))))

(assert (=> d!173389 (rulesValidInductive!282 thiss!17480 rules!1920)))

(assert (=> d!173389 (= (maxPrefix!461 thiss!17480 rules!1920 lt!202016) lt!202304)))

(declare-fun b!454647 () Bool)

(declare-fun res!202161 () Bool)

(assert (=> b!454647 (=> (not res!202161) (not e!278212))))

(assert (=> b!454647 (= res!202161 (< (size!3623 (_2!2901 (get!1618 lt!202304))) (size!3623 lt!202016)))))

(declare-fun b!454648 () Bool)

(declare-fun res!202160 () Bool)

(assert (=> b!454648 (=> (not res!202160) (not e!278212))))

(assert (=> b!454648 (= res!202160 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304)))) (_2!2901 (get!1618 lt!202304))) lt!202016))))

(declare-fun b!454649 () Bool)

(declare-fun res!202155 () Bool)

(assert (=> b!454649 (=> (not res!202155) (not e!278212))))

(assert (=> b!454649 (= res!202155 (= (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304)))) (originalCharacters!902 (_1!2901 (get!1618 lt!202304)))))))

(declare-fun bm!31478 () Bool)

(assert (=> bm!31478 (= call!31483 (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) lt!202016))))

(assert (= (and d!173389 c!91836) b!454645))

(assert (= (and d!173389 (not c!91836)) b!454641))

(assert (= (or b!454645 b!454641) bm!31478))

(assert (= (and d!173389 (not res!202158)) b!454646))

(assert (= (and b!454646 res!202159) b!454649))

(assert (= (and b!454649 res!202155) b!454647))

(assert (= (and b!454647 res!202161) b!454648))

(assert (= (and b!454648 res!202160) b!454643))

(assert (= (and b!454643 res!202157) b!454642))

(assert (= (and b!454642 res!202156) b!454644))

(declare-fun m!719239 () Bool)

(assert (=> b!454649 m!719239))

(declare-fun m!719241 () Bool)

(assert (=> b!454649 m!719241))

(assert (=> b!454649 m!719241))

(declare-fun m!719243 () Bool)

(assert (=> b!454649 m!719243))

(assert (=> b!454647 m!719239))

(declare-fun m!719245 () Bool)

(assert (=> b!454647 m!719245))

(declare-fun m!719247 () Bool)

(assert (=> b!454647 m!719247))

(assert (=> b!454642 m!719239))

(assert (=> b!454642 m!719241))

(assert (=> b!454642 m!719241))

(assert (=> b!454642 m!719243))

(assert (=> b!454642 m!719243))

(declare-fun m!719249 () Bool)

(assert (=> b!454642 m!719249))

(assert (=> b!454648 m!719239))

(assert (=> b!454648 m!719241))

(assert (=> b!454648 m!719241))

(assert (=> b!454648 m!719243))

(assert (=> b!454648 m!719243))

(declare-fun m!719251 () Bool)

(assert (=> b!454648 m!719251))

(assert (=> b!454643 m!719239))

(declare-fun m!719253 () Bool)

(assert (=> b!454643 m!719253))

(assert (=> b!454643 m!719253))

(declare-fun m!719255 () Bool)

(assert (=> b!454643 m!719255))

(declare-fun m!719257 () Bool)

(assert (=> b!454646 m!719257))

(declare-fun m!719259 () Bool)

(assert (=> d!173389 m!719259))

(declare-fun m!719261 () Bool)

(assert (=> d!173389 m!719261))

(declare-fun m!719263 () Bool)

(assert (=> d!173389 m!719263))

(assert (=> d!173389 m!718921))

(assert (=> b!454644 m!719239))

(declare-fun m!719265 () Bool)

(assert (=> b!454644 m!719265))

(declare-fun m!719267 () Bool)

(assert (=> bm!31478 m!719267))

(declare-fun m!719269 () Bool)

(assert (=> b!454641 m!719269))

(assert (=> b!454202 d!173389))

(declare-fun d!173391 () Bool)

(assert (=> d!173391 (= (isEmpty!3386 (_2!2901 lt!202019)) ((_ is Nil!4421) (_2!2901 lt!202019)))))

(assert (=> b!454223 d!173391))

(declare-fun lt!202308 () Bool)

(declare-fun d!173393 () Bool)

(assert (=> d!173393 (= lt!202308 (isEmpty!3384 (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023))))))))

(declare-fun isEmpty!3393 (Conc!1541) Bool)

(assert (=> d!173393 (= lt!202308 (isEmpty!3393 (c!91746 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023))))))))

(assert (=> d!173393 (= (isEmpty!3385 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023)))) lt!202308)))

(declare-fun bs!56207 () Bool)

(assert (= bs!56207 d!173393))

(declare-fun m!719271 () Bool)

(assert (=> bs!56207 m!719271))

(assert (=> bs!56207 m!719271))

(declare-fun m!719273 () Bool)

(assert (=> bs!56207 m!719273))

(declare-fun m!719275 () Bool)

(assert (=> bs!56207 m!719275))

(assert (=> b!454222 d!173393))

(declare-fun b!454684 () Bool)

(declare-fun res!202169 () Bool)

(declare-fun e!278233 () Bool)

(assert (=> b!454684 (=> (not res!202169) (not e!278233))))

(declare-fun lt!202329 () tuple2!5374)

(declare-datatypes ((tuple2!5378 0))(
  ( (tuple2!5379 (_1!2905 List!4433) (_2!2905 List!4431)) )
))
(declare-fun lexList!291 (LexerInterface!745 List!4432 List!4431) tuple2!5378)

(assert (=> b!454684 (= res!202169 (= (list!1963 (_1!2903 lt!202329)) (_1!2905 (lexList!291 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 lt!202023))))))))

(declare-fun b!454685 () Bool)

(assert (=> b!454685 (= e!278233 (= (list!1959 (_2!2903 lt!202329)) (_2!2905 (lexList!291 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 lt!202023))))))))

(declare-fun b!454686 () Bool)

(declare-fun e!278232 () Bool)

(assert (=> b!454686 (= e!278232 (not (isEmpty!3385 (_1!2903 lt!202329))))))

(declare-fun b!454687 () Bool)

(declare-fun e!278234 () Bool)

(assert (=> b!454687 (= e!278234 e!278232)))

(declare-fun res!202168 () Bool)

(declare-fun size!3625 (BalanceConc!3088) Int)

(assert (=> b!454687 (= res!202168 (< (size!3625 (_2!2903 lt!202329)) (size!3625 (seqFromList!1084 lt!202023))))))

(assert (=> b!454687 (=> (not res!202168) (not e!278232))))

(declare-fun b!454688 () Bool)

(assert (=> b!454688 (= e!278234 (= (_2!2903 lt!202329) (seqFromList!1084 lt!202023)))))

(declare-fun d!173395 () Bool)

(assert (=> d!173395 e!278233))

(declare-fun res!202170 () Bool)

(assert (=> d!173395 (=> (not res!202170) (not e!278233))))

(assert (=> d!173395 (= res!202170 e!278234)))

(declare-fun c!91851 () Bool)

(assert (=> d!173395 (= c!91851 (> (size!3622 (_1!2903 lt!202329)) 0))))

(declare-fun lexTailRecV2!256 (LexerInterface!745 List!4432 BalanceConc!3088 BalanceConc!3088 BalanceConc!3088 BalanceConc!3090) tuple2!5374)

(assert (=> d!173395 (= lt!202329 (lexTailRecV2!256 thiss!17480 rules!1920 (seqFromList!1084 lt!202023) (BalanceConc!3089 Empty!1540) (seqFromList!1084 lt!202023) (BalanceConc!3091 Empty!1541)))))

(assert (=> d!173395 (= (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023)) lt!202329)))

(assert (= (and d!173395 c!91851) b!454687))

(assert (= (and d!173395 (not c!91851)) b!454688))

(assert (= (and b!454687 res!202168) b!454686))

(assert (= (and d!173395 res!202170) b!454684))

(assert (= (and b!454684 res!202169) b!454685))

(declare-fun m!719277 () Bool)

(assert (=> d!173395 m!719277))

(assert (=> d!173395 m!718497))

(assert (=> d!173395 m!718497))

(declare-fun m!719279 () Bool)

(assert (=> d!173395 m!719279))

(declare-fun m!719281 () Bool)

(assert (=> b!454685 m!719281))

(assert (=> b!454685 m!718497))

(declare-fun m!719283 () Bool)

(assert (=> b!454685 m!719283))

(assert (=> b!454685 m!719283))

(declare-fun m!719285 () Bool)

(assert (=> b!454685 m!719285))

(declare-fun m!719287 () Bool)

(assert (=> b!454687 m!719287))

(assert (=> b!454687 m!718497))

(declare-fun m!719289 () Bool)

(assert (=> b!454687 m!719289))

(declare-fun m!719291 () Bool)

(assert (=> b!454684 m!719291))

(assert (=> b!454684 m!718497))

(assert (=> b!454684 m!719283))

(assert (=> b!454684 m!719283))

(assert (=> b!454684 m!719285))

(declare-fun m!719293 () Bool)

(assert (=> b!454686 m!719293))

(assert (=> b!454222 d!173395))

(declare-fun d!173397 () Bool)

(assert (=> d!173397 (= (seqFromList!1084 lt!202023) (fromListB!482 lt!202023))))

(declare-fun bs!56213 () Bool)

(assert (= bs!56213 d!173397))

(declare-fun m!719295 () Bool)

(assert (=> bs!56213 m!719295))

(assert (=> b!454222 d!173397))

(declare-fun b!454692 () Bool)

(declare-fun e!278239 () List!4431)

(assert (=> b!454692 (= e!278239 lt!202021)))

(declare-fun d!173399 () Bool)

(declare-fun e!278238 () Bool)

(assert (=> d!173399 e!278238))

(declare-fun res!202171 () Bool)

(assert (=> d!173399 (=> (not res!202171) (not e!278238))))

(declare-fun lt!202330 () List!4431)

(assert (=> d!173399 (= res!202171 (= (content!737 lt!202330) ((_ map or) (content!737 lt!202023) (content!737 lt!202021))))))

(assert (=> d!173399 (= lt!202330 e!278239)))

(declare-fun c!91852 () Bool)

(assert (=> d!173399 (= c!91852 ((_ is Nil!4421) lt!202023))))

(assert (=> d!173399 (= (++!1284 lt!202023 lt!202021) lt!202330)))

(declare-fun b!454694 () Bool)

(declare-fun res!202172 () Bool)

(assert (=> b!454694 (=> (not res!202172) (not e!278238))))

(assert (=> b!454694 (= res!202172 (= (size!3623 lt!202330) (+ (size!3623 lt!202023) (size!3623 lt!202021))))))

(declare-fun b!454695 () Bool)

(assert (=> b!454695 (= e!278238 (or (not (= lt!202021 Nil!4421)) (= lt!202330 lt!202023)))))

(declare-fun b!454693 () Bool)

(assert (=> b!454693 (= e!278239 (Cons!4421 (h!9818 lt!202023) (++!1284 (t!71131 lt!202023) lt!202021)))))

(assert (= (and d!173399 c!91852) b!454692))

(assert (= (and d!173399 (not c!91852)) b!454693))

(assert (= (and d!173399 res!202171) b!454694))

(assert (= (and b!454694 res!202172) b!454695))

(declare-fun m!719297 () Bool)

(assert (=> d!173399 m!719297))

(assert (=> d!173399 m!719079))

(assert (=> d!173399 m!719121))

(declare-fun m!719299 () Bool)

(assert (=> b!454694 m!719299))

(assert (=> b!454694 m!718903))

(assert (=> b!454694 m!719127))

(declare-fun m!719301 () Bool)

(assert (=> b!454693 m!719301))

(assert (=> b!454201 d!173399))

(declare-fun d!173401 () Bool)

(assert (=> d!173401 (= (get!1618 lt!202018) (v!15470 lt!202018))))

(assert (=> b!454221 d!173401))

(declare-fun d!173403 () Bool)

(assert (=> d!173403 (= (head!1108 tokens!465) (h!9820 tokens!465))))

(assert (=> b!454221 d!173403))

(declare-fun bs!56231 () Bool)

(declare-fun d!173405 () Bool)

(assert (= bs!56231 (and d!173405 b!454621)))

(declare-fun lambda!13311 () Int)

(assert (=> bs!56231 (= lambda!13311 lambda!13301)))

(declare-fun bs!56232 () Bool)

(assert (= bs!56232 (and d!173405 d!173243)))

(assert (=> bs!56232 (not (= lambda!13311 lambda!13283))))

(declare-fun bs!56233 () Bool)

(assert (= bs!56233 (and d!173405 b!454399)))

(assert (=> bs!56233 (= lambda!13311 lambda!13292)))

(declare-fun bs!56234 () Bool)

(assert (= bs!56234 (and d!173405 b!454602)))

(assert (=> bs!56234 (= lambda!13311 lambda!13299)))

(declare-fun bs!56235 () Bool)

(assert (= bs!56235 (and d!173405 b!454216)))

(assert (=> bs!56235 (not (= lambda!13311 lambda!13277))))

(declare-fun bs!56236 () Bool)

(assert (= bs!56236 (and d!173405 b!454217)))

(assert (=> bs!56236 (= lambda!13311 lambda!13278)))

(declare-fun bs!56237 () Bool)

(assert (= bs!56237 (and d!173405 b!454367)))

(assert (=> bs!56237 (= lambda!13311 lambda!13284)))

(declare-fun bs!56238 () Bool)

(assert (= bs!56238 (and d!173405 d!173365)))

(assert (=> bs!56238 (not (= lambda!13311 lambda!13300))))

(declare-fun b!454752 () Bool)

(declare-fun e!278274 () Bool)

(assert (=> b!454752 (= e!278274 true)))

(declare-fun b!454751 () Bool)

(declare-fun e!278273 () Bool)

(assert (=> b!454751 (= e!278273 e!278274)))

(declare-fun b!454750 () Bool)

(declare-fun e!278272 () Bool)

(assert (=> b!454750 (= e!278272 e!278273)))

(assert (=> d!173405 e!278272))

(assert (= b!454751 b!454752))

(assert (= b!454750 b!454751))

(assert (= (and d!173405 ((_ is Cons!4422) rules!1920)) b!454750))

(assert (=> b!454752 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13311))))

(assert (=> b!454752 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13311))))

(assert (=> d!173405 true))

(declare-fun e!278271 () Bool)

(assert (=> d!173405 e!278271))

(declare-fun res!202199 () Bool)

(assert (=> d!173405 (=> (not res!202199) (not e!278271))))

(declare-fun lt!202360 () Bool)

(assert (=> d!173405 (= res!202199 (= lt!202360 (forall!1280 (list!1963 lt!202015) lambda!13311)))))

(declare-fun forall!1282 (BalanceConc!3090 Int) Bool)

(assert (=> d!173405 (= lt!202360 (forall!1282 lt!202015 lambda!13311))))

(assert (=> d!173405 (not (isEmpty!3387 rules!1920))))

(assert (=> d!173405 (= (rulesProduceEachTokenIndividually!537 thiss!17480 rules!1920 lt!202015) lt!202360)))

(declare-fun b!454749 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!319 (LexerInterface!745 List!4432 List!4433) Bool)

(assert (=> b!454749 (= e!278271 (= lt!202360 (rulesProduceEachTokenIndividuallyList!319 thiss!17480 rules!1920 (list!1963 lt!202015))))))

(assert (= (and d!173405 res!202199) b!454749))

(assert (=> d!173405 m!718701))

(assert (=> d!173405 m!718701))

(declare-fun m!719477 () Bool)

(assert (=> d!173405 m!719477))

(declare-fun m!719479 () Bool)

(assert (=> d!173405 m!719479))

(assert (=> d!173405 m!718485))

(assert (=> b!454749 m!718701))

(assert (=> b!454749 m!718701))

(declare-fun m!719481 () Bool)

(assert (=> b!454749 m!719481))

(assert (=> b!454219 d!173405))

(declare-fun d!173431 () Bool)

(assert (=> d!173431 (= (seqFromList!1083 tokens!465) (fromListB!483 tokens!465))))

(declare-fun bs!56239 () Bool)

(assert (= bs!56239 d!173431))

(declare-fun m!719483 () Bool)

(assert (=> bs!56239 m!719483))

(assert (=> b!454219 d!173431))

(declare-fun bs!56247 () Bool)

(declare-fun d!173433 () Bool)

(assert (= bs!56247 (and d!173433 b!454621)))

(declare-fun lambda!13313 () Int)

(assert (=> bs!56247 (= lambda!13313 lambda!13301)))

(declare-fun bs!56249 () Bool)

(assert (= bs!56249 (and d!173433 d!173243)))

(assert (=> bs!56249 (not (= lambda!13313 lambda!13283))))

(declare-fun bs!56250 () Bool)

(assert (= bs!56250 (and d!173433 b!454399)))

(assert (=> bs!56250 (= lambda!13313 lambda!13292)))

(declare-fun bs!56251 () Bool)

(assert (= bs!56251 (and d!173433 d!173405)))

(assert (=> bs!56251 (= lambda!13313 lambda!13311)))

(declare-fun bs!56252 () Bool)

(assert (= bs!56252 (and d!173433 b!454602)))

(assert (=> bs!56252 (= lambda!13313 lambda!13299)))

(declare-fun bs!56253 () Bool)

(assert (= bs!56253 (and d!173433 b!454216)))

(assert (=> bs!56253 (not (= lambda!13313 lambda!13277))))

(declare-fun bs!56254 () Bool)

(assert (= bs!56254 (and d!173433 b!454217)))

(assert (=> bs!56254 (= lambda!13313 lambda!13278)))

(declare-fun bs!56255 () Bool)

(assert (= bs!56255 (and d!173433 b!454367)))

(assert (=> bs!56255 (= lambda!13313 lambda!13284)))

(declare-fun bs!56256 () Bool)

(assert (= bs!56256 (and d!173433 d!173365)))

(assert (=> bs!56256 (not (= lambda!13313 lambda!13300))))

(declare-fun b!454767 () Bool)

(declare-fun e!278285 () Bool)

(assert (=> b!454767 (= e!278285 true)))

(declare-fun b!454766 () Bool)

(declare-fun e!278284 () Bool)

(assert (=> b!454766 (= e!278284 e!278285)))

(declare-fun b!454765 () Bool)

(declare-fun e!278283 () Bool)

(assert (=> b!454765 (= e!278283 e!278284)))

(assert (=> d!173433 e!278283))

(assert (= b!454766 b!454767))

(assert (= b!454765 b!454766))

(assert (= (and d!173433 ((_ is Cons!4422) rules!1920)) b!454765))

(assert (=> b!454767 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13313))))

(assert (=> b!454767 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13313))))

(assert (=> d!173433 true))

(declare-fun e!278282 () Bool)

(assert (=> d!173433 e!278282))

(declare-fun res!202200 () Bool)

(assert (=> d!173433 (=> (not res!202200) (not e!278282))))

(declare-fun lt!202367 () Bool)

(assert (=> d!173433 (= res!202200 (= lt!202367 (forall!1280 (list!1963 lt!202020) lambda!13313)))))

(assert (=> d!173433 (= lt!202367 (forall!1282 lt!202020 lambda!13313))))

(assert (=> d!173433 (not (isEmpty!3387 rules!1920))))

(assert (=> d!173433 (= (rulesProduceEachTokenIndividually!537 thiss!17480 rules!1920 lt!202020) lt!202367)))

(declare-fun b!454764 () Bool)

(assert (=> b!454764 (= e!278282 (= lt!202367 (rulesProduceEachTokenIndividuallyList!319 thiss!17480 rules!1920 (list!1963 lt!202020))))))

(assert (= (and d!173433 res!202200) b!454764))

(assert (=> d!173433 m!719143))

(assert (=> d!173433 m!719143))

(declare-fun m!719485 () Bool)

(assert (=> d!173433 m!719485))

(declare-fun m!719489 () Bool)

(assert (=> d!173433 m!719489))

(assert (=> d!173433 m!718485))

(assert (=> b!454764 m!719143))

(assert (=> b!454764 m!719143))

(declare-fun m!719493 () Bool)

(assert (=> b!454764 m!719493))

(assert (=> b!454220 d!173433))

(declare-fun d!173435 () Bool)

(assert (=> d!173435 (= (isEmpty!3384 tokens!465) ((_ is Nil!4423) tokens!465))))

(assert (=> b!454220 d!173435))

(declare-fun d!173439 () Bool)

(declare-fun e!278326 () Bool)

(assert (=> d!173439 e!278326))

(declare-fun res!202249 () Bool)

(assert (=> d!173439 (=> res!202249 e!278326)))

(assert (=> d!173439 (= res!202249 (isEmpty!3384 tokens!465))))

(declare-fun lt!202382 () Unit!7961)

(declare-fun choose!3430 (LexerInterface!745 List!4432 List!4433 Token!1462) Unit!7961)

(assert (=> d!173439 (= lt!202382 (choose!3430 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!173439 (not (isEmpty!3387 rules!1920))))

(assert (=> d!173439 (= (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!260 thiss!17480 rules!1920 tokens!465 separatorToken!170) lt!202382)))

(declare-fun b!454833 () Bool)

(declare-fun e!278327 () Bool)

(assert (=> b!454833 (= e!278326 e!278327)))

(declare-fun res!202248 () Bool)

(assert (=> b!454833 (=> (not res!202248) (not e!278327))))

(assert (=> b!454833 (= res!202248 (isDefined!989 (maxPrefix!461 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!454834 () Bool)

(assert (=> b!454834 (= e!278327 (= (_1!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1108 tokens!465)))))

(assert (= (and d!173439 (not res!202249)) b!454833))

(assert (= (and b!454833 res!202248) b!454834))

(assert (=> d!173439 m!718505))

(declare-fun m!719563 () Bool)

(assert (=> d!173439 m!719563))

(assert (=> d!173439 m!718485))

(assert (=> b!454833 m!718521))

(assert (=> b!454833 m!718521))

(declare-fun m!719565 () Bool)

(assert (=> b!454833 m!719565))

(assert (=> b!454833 m!719565))

(declare-fun m!719567 () Bool)

(assert (=> b!454833 m!719567))

(assert (=> b!454834 m!718521))

(assert (=> b!454834 m!718521))

(assert (=> b!454834 m!719565))

(assert (=> b!454834 m!719565))

(declare-fun m!719569 () Bool)

(assert (=> b!454834 m!719569))

(assert (=> b!454834 m!718451))

(assert (=> b!454220 d!173439))

(declare-fun b!454928 () Bool)

(declare-fun e!278396 () Bool)

(declare-fun head!1109 (List!4431) C!3088)

(assert (=> b!454928 (= e!278396 (= (head!1109 lt!202023) (c!91745 (regex!859 (rule!1550 (h!9820 tokens!465))))))))

(declare-fun b!454929 () Bool)

(declare-fun e!278391 () Bool)

(declare-fun nullable!243 (Regex!1083) Bool)

(assert (=> b!454929 (= e!278391 (nullable!243 (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(declare-fun b!454930 () Bool)

(declare-fun res!202273 () Bool)

(declare-fun e!278394 () Bool)

(assert (=> b!454930 (=> res!202273 e!278394)))

(assert (=> b!454930 (= res!202273 e!278396)))

(declare-fun res!202277 () Bool)

(assert (=> b!454930 (=> (not res!202277) (not e!278396))))

(declare-fun lt!202386 () Bool)

(assert (=> b!454930 (= res!202277 lt!202386)))

(declare-fun b!454931 () Bool)

(declare-fun res!202270 () Bool)

(assert (=> b!454931 (=> (not res!202270) (not e!278396))))

(declare-fun tail!637 (List!4431) List!4431)

(assert (=> b!454931 (= res!202270 (isEmpty!3386 (tail!637 lt!202023)))))

(declare-fun b!454932 () Bool)

(declare-fun e!278397 () Bool)

(assert (=> b!454932 (= e!278397 (not lt!202386))))

(declare-fun b!454933 () Bool)

(declare-fun res!202272 () Bool)

(declare-fun e!278395 () Bool)

(assert (=> b!454933 (=> res!202272 e!278395)))

(assert (=> b!454933 (= res!202272 (not (isEmpty!3386 (tail!637 lt!202023))))))

(declare-fun b!454934 () Bool)

(assert (=> b!454934 (= e!278395 (not (= (head!1109 lt!202023) (c!91745 (regex!859 (rule!1550 (h!9820 tokens!465)))))))))

(declare-fun b!454935 () Bool)

(declare-fun e!278392 () Bool)

(assert (=> b!454935 (= e!278392 e!278397)))

(declare-fun c!91885 () Bool)

(assert (=> b!454935 (= c!91885 ((_ is EmptyLang!1083) (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(declare-fun b!454936 () Bool)

(declare-fun call!31515 () Bool)

(assert (=> b!454936 (= e!278392 (= lt!202386 call!31515))))

(declare-fun b!454938 () Bool)

(declare-fun e!278393 () Bool)

(assert (=> b!454938 (= e!278393 e!278395)))

(declare-fun res!202275 () Bool)

(assert (=> b!454938 (=> res!202275 e!278395)))

(assert (=> b!454938 (= res!202275 call!31515)))

(declare-fun b!454939 () Bool)

(assert (=> b!454939 (= e!278394 e!278393)))

(declare-fun res!202274 () Bool)

(assert (=> b!454939 (=> (not res!202274) (not e!278393))))

(assert (=> b!454939 (= res!202274 (not lt!202386))))

(declare-fun b!454940 () Bool)

(declare-fun res!202271 () Bool)

(assert (=> b!454940 (=> res!202271 e!278394)))

(assert (=> b!454940 (= res!202271 (not ((_ is ElementMatch!1083) (regex!859 (rule!1550 (h!9820 tokens!465))))))))

(assert (=> b!454940 (= e!278397 e!278394)))

(declare-fun b!454937 () Bool)

(declare-fun res!202276 () Bool)

(assert (=> b!454937 (=> (not res!202276) (not e!278396))))

(assert (=> b!454937 (= res!202276 (not call!31515))))

(declare-fun d!173453 () Bool)

(assert (=> d!173453 e!278392))

(declare-fun c!91886 () Bool)

(assert (=> d!173453 (= c!91886 ((_ is EmptyExpr!1083) (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(assert (=> d!173453 (= lt!202386 e!278391)))

(declare-fun c!91887 () Bool)

(assert (=> d!173453 (= c!91887 (isEmpty!3386 lt!202023))))

(declare-fun validRegex!318 (Regex!1083) Bool)

(assert (=> d!173453 (validRegex!318 (regex!859 (rule!1550 (h!9820 tokens!465))))))

(assert (=> d!173453 (= (matchR!401 (regex!859 (rule!1550 (h!9820 tokens!465))) lt!202023) lt!202386)))

(declare-fun b!454941 () Bool)

(declare-fun derivativeStep!210 (Regex!1083 C!3088) Regex!1083)

(assert (=> b!454941 (= e!278391 (matchR!401 (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023)) (tail!637 lt!202023)))))

(declare-fun bm!31510 () Bool)

(assert (=> bm!31510 (= call!31515 (isEmpty!3386 lt!202023))))

(assert (= (and d!173453 c!91887) b!454929))

(assert (= (and d!173453 (not c!91887)) b!454941))

(assert (= (and d!173453 c!91886) b!454936))

(assert (= (and d!173453 (not c!91886)) b!454935))

(assert (= (and b!454935 c!91885) b!454932))

(assert (= (and b!454935 (not c!91885)) b!454940))

(assert (= (and b!454940 (not res!202271)) b!454930))

(assert (= (and b!454930 res!202277) b!454937))

(assert (= (and b!454937 res!202276) b!454931))

(assert (= (and b!454931 res!202270) b!454928))

(assert (= (and b!454930 (not res!202273)) b!454939))

(assert (= (and b!454939 res!202274) b!454938))

(assert (= (and b!454938 (not res!202275)) b!454933))

(assert (= (and b!454933 (not res!202272)) b!454934))

(assert (= (or b!454936 b!454937 b!454938) bm!31510))

(declare-fun m!719605 () Bool)

(assert (=> b!454934 m!719605))

(assert (=> b!454928 m!719605))

(declare-fun m!719607 () Bool)

(assert (=> b!454929 m!719607))

(assert (=> b!454941 m!719605))

(assert (=> b!454941 m!719605))

(declare-fun m!719609 () Bool)

(assert (=> b!454941 m!719609))

(declare-fun m!719611 () Bool)

(assert (=> b!454941 m!719611))

(assert (=> b!454941 m!719609))

(assert (=> b!454941 m!719611))

(declare-fun m!719613 () Bool)

(assert (=> b!454941 m!719613))

(declare-fun m!719615 () Bool)

(assert (=> d!173453 m!719615))

(declare-fun m!719617 () Bool)

(assert (=> d!173453 m!719617))

(assert (=> b!454933 m!719611))

(assert (=> b!454933 m!719611))

(declare-fun m!719619 () Bool)

(assert (=> b!454933 m!719619))

(assert (=> bm!31510 m!719615))

(assert (=> b!454931 m!719611))

(assert (=> b!454931 m!719611))

(assert (=> b!454931 m!719619))

(assert (=> b!454218 d!173453))

(declare-fun d!173471 () Bool)

(declare-fun isEmpty!3394 (Option!1151) Bool)

(assert (=> d!173471 (= (isDefined!990 (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))) (not (isEmpty!3394 (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))

(declare-fun bs!56269 () Bool)

(assert (= bs!56269 d!173471))

(assert (=> bs!56269 m!718491))

(declare-fun m!719621 () Bool)

(assert (=> bs!56269 m!719621))

(assert (=> b!454217 d!173471))

(declare-fun b!454958 () Bool)

(declare-fun e!278410 () Bool)

(declare-fun e!278411 () Bool)

(assert (=> b!454958 (= e!278410 e!278411)))

(declare-fun res!202294 () Bool)

(assert (=> b!454958 (=> (not res!202294) (not e!278411))))

(declare-fun lt!202401 () Option!1151)

(declare-fun get!1620 (Option!1151) tuple2!5372)

(assert (=> b!454958 (= res!202294 (= (_1!2902 (get!1620 lt!202401)) (_1!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))))

(declare-fun b!454959 () Bool)

(declare-fun e!278413 () Bool)

(declare-fun maxPrefixZipper!190 (LexerInterface!745 List!4432 List!4431) Option!1150)

(assert (=> b!454959 (= e!278413 (= (list!1959 (_2!2902 (get!1620 lt!202401))) (_2!2901 (get!1618 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))))

(declare-fun b!454960 () Bool)

(assert (=> b!454960 (= e!278411 (= (list!1959 (_2!2902 (get!1620 lt!202401))) (_2!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))))

(declare-fun d!173473 () Bool)

(declare-fun e!278414 () Bool)

(assert (=> d!173473 e!278414))

(declare-fun res!202295 () Bool)

(assert (=> d!173473 (=> (not res!202295) (not e!278414))))

(assert (=> d!173473 (= res!202295 (= (isDefined!990 lt!202401) (isDefined!989 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))))

(declare-fun e!278412 () Option!1151)

(assert (=> d!173473 (= lt!202401 e!278412)))

(declare-fun c!91890 () Bool)

(assert (=> d!173473 (= c!91890 (and ((_ is Cons!4422) rules!1920) ((_ is Nil!4422) (t!71132 rules!1920))))))

(declare-fun lt!202403 () Unit!7961)

(declare-fun lt!202407 () Unit!7961)

(assert (=> d!173473 (= lt!202403 lt!202407)))

(declare-fun lt!202402 () List!4431)

(declare-fun lt!202406 () List!4431)

(assert (=> d!173473 (isPrefix!513 lt!202402 lt!202406)))

(assert (=> d!173473 (= lt!202407 (lemmaIsPrefixRefl!287 lt!202402 lt!202406))))

(assert (=> d!173473 (= lt!202406 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (=> d!173473 (= lt!202402 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (=> d!173473 (rulesValidInductive!282 thiss!17480 rules!1920)))

(assert (=> d!173473 (= (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))) lt!202401)))

(declare-fun b!454961 () Bool)

(declare-fun call!31518 () Option!1151)

(assert (=> b!454961 (= e!278412 call!31518)))

(declare-fun bm!31513 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!191 (LexerInterface!745 Rule!1518 BalanceConc!3088) Option!1151)

(assert (=> bm!31513 (= call!31518 (maxPrefixOneRuleZipperSequence!191 thiss!17480 (h!9819 rules!1920) (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(declare-fun b!454962 () Bool)

(declare-fun e!278415 () Bool)

(assert (=> b!454962 (= e!278415 e!278413)))

(declare-fun res!202291 () Bool)

(assert (=> b!454962 (=> (not res!202291) (not e!278413))))

(assert (=> b!454962 (= res!202291 (= (_1!2902 (get!1620 lt!202401)) (_1!2901 (get!1618 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))))

(declare-fun b!454963 () Bool)

(declare-fun lt!202404 () Option!1151)

(declare-fun lt!202405 () Option!1151)

(assert (=> b!454963 (= e!278412 (ite (and ((_ is None!1150) lt!202404) ((_ is None!1150) lt!202405)) None!1150 (ite ((_ is None!1150) lt!202405) lt!202404 (ite ((_ is None!1150) lt!202404) lt!202405 (ite (>= (size!3619 (_1!2902 (v!15471 lt!202404))) (size!3619 (_1!2902 (v!15471 lt!202405)))) lt!202404 lt!202405)))))))

(assert (=> b!454963 (= lt!202404 call!31518)))

(assert (=> b!454963 (= lt!202405 (maxPrefixZipperSequence!424 thiss!17480 (t!71132 rules!1920) (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(declare-fun b!454964 () Bool)

(declare-fun res!202292 () Bool)

(assert (=> b!454964 (=> (not res!202292) (not e!278414))))

(assert (=> b!454964 (= res!202292 e!278415)))

(declare-fun res!202293 () Bool)

(assert (=> b!454964 (=> res!202293 e!278415)))

(assert (=> b!454964 (= res!202293 (not (isDefined!990 lt!202401)))))

(declare-fun b!454965 () Bool)

(assert (=> b!454965 (= e!278414 e!278410)))

(declare-fun res!202290 () Bool)

(assert (=> b!454965 (=> res!202290 e!278410)))

(assert (=> b!454965 (= res!202290 (not (isDefined!990 lt!202401)))))

(assert (= (and d!173473 c!91890) b!454961))

(assert (= (and d!173473 (not c!91890)) b!454963))

(assert (= (or b!454961 b!454963) bm!31513))

(assert (= (and d!173473 res!202295) b!454964))

(assert (= (and b!454964 (not res!202293)) b!454962))

(assert (= (and b!454962 res!202291) b!454959))

(assert (= (and b!454964 res!202292) b!454965))

(assert (= (and b!454965 (not res!202290)) b!454958))

(assert (= (and b!454958 res!202294) b!454960))

(assert (=> b!454963 m!718489))

(declare-fun m!719623 () Bool)

(assert (=> b!454963 m!719623))

(assert (=> bm!31513 m!718489))

(declare-fun m!719625 () Bool)

(assert (=> bm!31513 m!719625))

(declare-fun m!719627 () Bool)

(assert (=> d!173473 m!719627))

(declare-fun m!719629 () Bool)

(assert (=> d!173473 m!719629))

(declare-fun m!719631 () Bool)

(assert (=> d!173473 m!719631))

(declare-fun m!719633 () Bool)

(assert (=> d!173473 m!719633))

(declare-fun m!719635 () Bool)

(assert (=> d!173473 m!719635))

(assert (=> d!173473 m!718489))

(assert (=> d!173473 m!719631))

(assert (=> d!173473 m!719633))

(declare-fun m!719637 () Bool)

(assert (=> d!173473 m!719637))

(assert (=> d!173473 m!718921))

(declare-fun m!719639 () Bool)

(assert (=> b!454958 m!719639))

(assert (=> b!454958 m!718489))

(assert (=> b!454958 m!719631))

(assert (=> b!454958 m!719631))

(declare-fun m!719641 () Bool)

(assert (=> b!454958 m!719641))

(assert (=> b!454958 m!719641))

(declare-fun m!719643 () Bool)

(assert (=> b!454958 m!719643))

(assert (=> b!454965 m!719627))

(assert (=> b!454960 m!719639))

(assert (=> b!454960 m!719641))

(assert (=> b!454960 m!719643))

(declare-fun m!719645 () Bool)

(assert (=> b!454960 m!719645))

(assert (=> b!454960 m!718489))

(assert (=> b!454960 m!719631))

(assert (=> b!454960 m!719631))

(assert (=> b!454960 m!719641))

(assert (=> b!454964 m!719627))

(assert (=> b!454962 m!719639))

(assert (=> b!454962 m!718489))

(assert (=> b!454962 m!719631))

(assert (=> b!454962 m!719631))

(assert (=> b!454962 m!719633))

(assert (=> b!454962 m!719633))

(declare-fun m!719647 () Bool)

(assert (=> b!454962 m!719647))

(assert (=> b!454959 m!719633))

(assert (=> b!454959 m!719647))

(assert (=> b!454959 m!719639))

(assert (=> b!454959 m!719631))

(assert (=> b!454959 m!719633))

(assert (=> b!454959 m!718489))

(assert (=> b!454959 m!719631))

(assert (=> b!454959 m!719645))

(assert (=> b!454217 d!173473))

(declare-fun d!173475 () Bool)

(assert (=> d!173475 (= (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))) (fromListB!482 (originalCharacters!902 (h!9820 tokens!465))))))

(declare-fun bs!56270 () Bool)

(assert (= bs!56270 d!173475))

(declare-fun m!719649 () Bool)

(assert (=> bs!56270 m!719649))

(assert (=> b!454217 d!173475))

(declare-fun d!173477 () Bool)

(declare-fun dynLambda!2680 (Int Token!1462) Bool)

(assert (=> d!173477 (dynLambda!2680 lambda!13278 (h!9820 tokens!465))))

(declare-fun lt!202410 () Unit!7961)

(declare-fun choose!3431 (List!4433 Int Token!1462) Unit!7961)

(assert (=> d!173477 (= lt!202410 (choose!3431 tokens!465 lambda!13278 (h!9820 tokens!465)))))

(declare-fun e!278418 () Bool)

(assert (=> d!173477 e!278418))

(declare-fun res!202298 () Bool)

(assert (=> d!173477 (=> (not res!202298) (not e!278418))))

(assert (=> d!173477 (= res!202298 (forall!1280 tokens!465 lambda!13278))))

(assert (=> d!173477 (= (forallContained!412 tokens!465 lambda!13278 (h!9820 tokens!465)) lt!202410)))

(declare-fun b!454968 () Bool)

(declare-fun contains!991 (List!4433 Token!1462) Bool)

(assert (=> b!454968 (= e!278418 (contains!991 tokens!465 (h!9820 tokens!465)))))

(assert (= (and d!173477 res!202298) b!454968))

(declare-fun b_lambda!18823 () Bool)

(assert (=> (not b_lambda!18823) (not d!173477)))

(declare-fun m!719651 () Bool)

(assert (=> d!173477 m!719651))

(declare-fun m!719653 () Bool)

(assert (=> d!173477 m!719653))

(declare-fun m!719655 () Bool)

(assert (=> d!173477 m!719655))

(declare-fun m!719657 () Bool)

(assert (=> b!454968 m!719657))

(assert (=> b!454217 d!173477))

(declare-fun d!173479 () Bool)

(declare-fun res!202303 () Bool)

(declare-fun e!278423 () Bool)

(assert (=> d!173479 (=> res!202303 e!278423)))

(assert (=> d!173479 (= res!202303 ((_ is Nil!4423) tokens!465))))

(assert (=> d!173479 (= (forall!1280 tokens!465 lambda!13277) e!278423)))

(declare-fun b!454973 () Bool)

(declare-fun e!278424 () Bool)

(assert (=> b!454973 (= e!278423 e!278424)))

(declare-fun res!202304 () Bool)

(assert (=> b!454973 (=> (not res!202304) (not e!278424))))

(assert (=> b!454973 (= res!202304 (dynLambda!2680 lambda!13277 (h!9820 tokens!465)))))

(declare-fun b!454974 () Bool)

(assert (=> b!454974 (= e!278424 (forall!1280 (t!71133 tokens!465) lambda!13277))))

(assert (= (and d!173479 (not res!202303)) b!454973))

(assert (= (and b!454973 res!202304) b!454974))

(declare-fun b_lambda!18825 () Bool)

(assert (=> (not b_lambda!18825) (not b!454973)))

(declare-fun m!719659 () Bool)

(assert (=> b!454973 m!719659))

(declare-fun m!719661 () Bool)

(assert (=> b!454974 m!719661))

(assert (=> b!454216 d!173479))

(declare-fun b!454985 () Bool)

(declare-fun e!278427 () Bool)

(declare-fun tp_is_empty!1979 () Bool)

(assert (=> b!454985 (= e!278427 tp_is_empty!1979)))

(assert (=> b!454203 (= tp!126325 e!278427)))

(declare-fun b!454988 () Bool)

(declare-fun tp!126403 () Bool)

(declare-fun tp!126401 () Bool)

(assert (=> b!454988 (= e!278427 (and tp!126403 tp!126401))))

(declare-fun b!454986 () Bool)

(declare-fun tp!126402 () Bool)

(declare-fun tp!126400 () Bool)

(assert (=> b!454986 (= e!278427 (and tp!126402 tp!126400))))

(declare-fun b!454987 () Bool)

(declare-fun tp!126404 () Bool)

(assert (=> b!454987 (= e!278427 tp!126404)))

(assert (= (and b!454203 ((_ is ElementMatch!1083) (regex!859 (rule!1550 (h!9820 tokens!465))))) b!454985))

(assert (= (and b!454203 ((_ is Concat!1965) (regex!859 (rule!1550 (h!9820 tokens!465))))) b!454986))

(assert (= (and b!454203 ((_ is Star!1083) (regex!859 (rule!1550 (h!9820 tokens!465))))) b!454987))

(assert (= (and b!454203 ((_ is Union!1083) (regex!859 (rule!1550 (h!9820 tokens!465))))) b!454988))

(declare-fun b!455002 () Bool)

(declare-fun b_free!12693 () Bool)

(declare-fun b_next!12693 () Bool)

(assert (=> b!455002 (= b_free!12693 (not b_next!12693))))

(declare-fun tp!126416 () Bool)

(declare-fun b_and!48853 () Bool)

(assert (=> b!455002 (= tp!126416 b_and!48853)))

(declare-fun b_free!12695 () Bool)

(declare-fun b_next!12695 () Bool)

(assert (=> b!455002 (= b_free!12695 (not b_next!12695))))

(declare-fun tb!45573 () Bool)

(declare-fun t!71191 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170)))) t!71191) tb!45573))

(declare-fun result!50164 () Bool)

(assert (= result!50164 result!50130))

(assert (=> b!454581 t!71191))

(assert (=> d!173363 t!71191))

(declare-fun t!71193 () Bool)

(declare-fun tb!45575 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) t!71193) tb!45575))

(declare-fun result!50166 () Bool)

(assert (= result!50166 result!50138))

(assert (=> d!173371 t!71193))

(assert (=> b!454639 t!71193))

(declare-fun b_and!48855 () Bool)

(declare-fun tp!126419 () Bool)

(assert (=> b!455002 (= tp!126419 (and (=> t!71191 result!50164) (=> t!71193 result!50166) b_and!48855))))

(declare-fun e!278442 () Bool)

(assert (=> b!455002 (= e!278442 (and tp!126416 tp!126419))))

(declare-fun tp!126417 () Bool)

(declare-fun b!455001 () Bool)

(declare-fun e!278440 () Bool)

(assert (=> b!455001 (= e!278440 (and tp!126417 (inv!5492 (tag!1119 (rule!1550 (h!9820 (t!71133 tokens!465))))) (inv!5495 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) e!278442))))

(declare-fun b!454999 () Bool)

(declare-fun e!278443 () Bool)

(declare-fun e!278444 () Bool)

(declare-fun tp!126418 () Bool)

(assert (=> b!454999 (= e!278443 (and (inv!5496 (h!9820 (t!71133 tokens!465))) e!278444 tp!126418))))

(declare-fun tp!126415 () Bool)

(declare-fun b!455000 () Bool)

(assert (=> b!455000 (= e!278444 (and (inv!21 (value!28797 (h!9820 (t!71133 tokens!465)))) e!278440 tp!126415))))

(assert (=> b!454204 (= tp!126322 e!278443)))

(assert (= b!455001 b!455002))

(assert (= b!455000 b!455001))

(assert (= b!454999 b!455000))

(assert (= (and b!454204 ((_ is Cons!4423) (t!71133 tokens!465))) b!454999))

(declare-fun m!719663 () Bool)

(assert (=> b!455001 m!719663))

(declare-fun m!719665 () Bool)

(assert (=> b!455001 m!719665))

(declare-fun m!719667 () Bool)

(assert (=> b!454999 m!719667))

(declare-fun m!719669 () Bool)

(assert (=> b!455000 m!719669))

(declare-fun b!455013 () Bool)

(declare-fun b_free!12697 () Bool)

(declare-fun b_next!12697 () Bool)

(assert (=> b!455013 (= b_free!12697 (not b_next!12697))))

(declare-fun tp!126431 () Bool)

(declare-fun b_and!48857 () Bool)

(assert (=> b!455013 (= tp!126431 b_and!48857)))

(declare-fun b_free!12699 () Bool)

(declare-fun b_next!12699 () Bool)

(assert (=> b!455013 (= b_free!12699 (not b_next!12699))))

(declare-fun t!71195 () Bool)

(declare-fun tb!45577 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170)))) t!71195) tb!45577))

(declare-fun result!50170 () Bool)

(assert (= result!50170 result!50130))

(assert (=> b!454581 t!71195))

(assert (=> d!173363 t!71195))

(declare-fun tb!45579 () Bool)

(declare-fun t!71197 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) t!71197) tb!45579))

(declare-fun result!50172 () Bool)

(assert (= result!50172 result!50138))

(assert (=> d!173371 t!71197))

(assert (=> b!454639 t!71197))

(declare-fun tp!126430 () Bool)

(declare-fun b_and!48859 () Bool)

(assert (=> b!455013 (= tp!126430 (and (=> t!71195 result!50170) (=> t!71197 result!50172) b_and!48859))))

(declare-fun e!278454 () Bool)

(assert (=> b!455013 (= e!278454 (and tp!126431 tp!126430))))

(declare-fun tp!126428 () Bool)

(declare-fun b!455012 () Bool)

(declare-fun e!278457 () Bool)

(assert (=> b!455012 (= e!278457 (and tp!126428 (inv!5492 (tag!1119 (h!9819 (t!71132 rules!1920)))) (inv!5495 (transformation!859 (h!9819 (t!71132 rules!1920)))) e!278454))))

(declare-fun b!455011 () Bool)

(declare-fun e!278455 () Bool)

(declare-fun tp!126429 () Bool)

(assert (=> b!455011 (= e!278455 (and e!278457 tp!126429))))

(assert (=> b!454225 (= tp!126313 e!278455)))

(assert (= b!455012 b!455013))

(assert (= b!455011 b!455012))

(assert (= (and b!454225 ((_ is Cons!4422) (t!71132 rules!1920))) b!455011))

(declare-fun m!719671 () Bool)

(assert (=> b!455012 m!719671))

(declare-fun m!719673 () Bool)

(assert (=> b!455012 m!719673))

(declare-fun b!455016 () Bool)

(declare-fun e!278460 () Bool)

(assert (=> b!455016 (= e!278460 true)))

(declare-fun b!455015 () Bool)

(declare-fun e!278459 () Bool)

(assert (=> b!455015 (= e!278459 e!278460)))

(declare-fun b!455014 () Bool)

(declare-fun e!278458 () Bool)

(assert (=> b!455014 (= e!278458 e!278459)))

(assert (=> b!454242 e!278458))

(assert (= b!455015 b!455016))

(assert (= b!455014 b!455015))

(assert (= (and b!454242 ((_ is Cons!4422) (t!71132 rules!1920))) b!455014))

(assert (=> b!455016 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13278))))

(assert (=> b!455016 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13278))))

(declare-fun b!455017 () Bool)

(declare-fun e!278461 () Bool)

(assert (=> b!455017 (= e!278461 tp_is_empty!1979)))

(assert (=> b!454211 (= tp!126318 e!278461)))

(declare-fun b!455020 () Bool)

(declare-fun tp!126435 () Bool)

(declare-fun tp!126433 () Bool)

(assert (=> b!455020 (= e!278461 (and tp!126435 tp!126433))))

(declare-fun b!455018 () Bool)

(declare-fun tp!126434 () Bool)

(declare-fun tp!126432 () Bool)

(assert (=> b!455018 (= e!278461 (and tp!126434 tp!126432))))

(declare-fun b!455019 () Bool)

(declare-fun tp!126436 () Bool)

(assert (=> b!455019 (= e!278461 tp!126436)))

(assert (= (and b!454211 ((_ is ElementMatch!1083) (regex!859 (h!9819 rules!1920)))) b!455017))

(assert (= (and b!454211 ((_ is Concat!1965) (regex!859 (h!9819 rules!1920)))) b!455018))

(assert (= (and b!454211 ((_ is Star!1083) (regex!859 (h!9819 rules!1920)))) b!455019))

(assert (= (and b!454211 ((_ is Union!1083) (regex!859 (h!9819 rules!1920)))) b!455020))

(declare-fun b!455021 () Bool)

(declare-fun e!278462 () Bool)

(assert (=> b!455021 (= e!278462 tp_is_empty!1979)))

(assert (=> b!454231 (= tp!126315 e!278462)))

(declare-fun b!455024 () Bool)

(declare-fun tp!126440 () Bool)

(declare-fun tp!126438 () Bool)

(assert (=> b!455024 (= e!278462 (and tp!126440 tp!126438))))

(declare-fun b!455022 () Bool)

(declare-fun tp!126439 () Bool)

(declare-fun tp!126437 () Bool)

(assert (=> b!455022 (= e!278462 (and tp!126439 tp!126437))))

(declare-fun b!455023 () Bool)

(declare-fun tp!126441 () Bool)

(assert (=> b!455023 (= e!278462 tp!126441)))

(assert (= (and b!454231 ((_ is ElementMatch!1083) (regex!859 (rule!1550 separatorToken!170)))) b!455021))

(assert (= (and b!454231 ((_ is Concat!1965) (regex!859 (rule!1550 separatorToken!170)))) b!455022))

(assert (= (and b!454231 ((_ is Star!1083) (regex!859 (rule!1550 separatorToken!170)))) b!455023))

(assert (= (and b!454231 ((_ is Union!1083) (regex!859 (rule!1550 separatorToken!170)))) b!455024))

(declare-fun b!455029 () Bool)

(declare-fun e!278465 () Bool)

(declare-fun tp!126444 () Bool)

(assert (=> b!455029 (= e!278465 (and tp_is_empty!1979 tp!126444))))

(assert (=> b!454230 (= tp!126320 e!278465)))

(assert (= (and b!454230 ((_ is Cons!4421) (originalCharacters!902 separatorToken!170))) b!455029))

(declare-fun b!455030 () Bool)

(declare-fun e!278466 () Bool)

(declare-fun tp!126445 () Bool)

(assert (=> b!455030 (= e!278466 (and tp_is_empty!1979 tp!126445))))

(assert (=> b!454208 (= tp!126323 e!278466)))

(assert (= (and b!454208 ((_ is Cons!4421) (originalCharacters!902 (h!9820 tokens!465)))) b!455030))

(declare-fun b_lambda!18827 () Bool)

(assert (= b_lambda!18803 (or (and b!455002 b_free!12695 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))))) (and b!454224 b_free!12679 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))))) (and b!455013 b_free!12699 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))))) (and b!454206 b_free!12675 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))))) (and b!454228 b_free!12683) b_lambda!18827)))

(declare-fun b_lambda!18829 () Bool)

(assert (= b_lambda!18805 (or (and b!455002 b_free!12695 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))))) (and b!454224 b_free!12679 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))))) (and b!455013 b_free!12699 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))))) (and b!454206 b_free!12675 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))))) (and b!454228 b_free!12683) b_lambda!18829)))

(declare-fun b_lambda!18831 () Bool)

(assert (= b_lambda!18825 (or b!454216 b_lambda!18831)))

(declare-fun bs!56271 () Bool)

(declare-fun d!173481 () Bool)

(assert (= bs!56271 (and d!173481 b!454216)))

(assert (=> bs!56271 (= (dynLambda!2680 lambda!13277 (h!9820 tokens!465)) (not (isSeparator!859 (rule!1550 (h!9820 tokens!465)))))))

(assert (=> b!454973 d!173481))

(declare-fun b_lambda!18833 () Bool)

(assert (= b_lambda!18809 (or (and b!455002 b_free!12695 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (and b!455013 b_free!12699 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (and b!454206 b_free!12675 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (and b!454228 b_free!12683 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (and b!454224 b_free!12679) b_lambda!18833)))

(declare-fun b_lambda!18835 () Bool)

(assert (= b_lambda!18823 (or b!454217 b_lambda!18835)))

(declare-fun bs!56272 () Bool)

(declare-fun d!173483 () Bool)

(assert (= bs!56272 (and d!173483 b!454217)))

(assert (=> bs!56272 (= (dynLambda!2680 lambda!13278 (h!9820 tokens!465)) (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (h!9820 tokens!465)))))

(assert (=> bs!56272 m!718425))

(assert (=> d!173477 d!173483))

(declare-fun b_lambda!18837 () Bool)

(assert (= b_lambda!18807 (or (and b!455002 b_free!12695 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (and b!455013 b_free!12699 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (and b!454206 b_free!12675 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (and b!454228 b_free!12683 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (and b!454224 b_free!12679) b_lambda!18837)))

(check-sat (not b!454685) (not d!173335) (not b_next!12683) (not b!454642) (not d!173453) (not b_next!12675) b_and!48793 (not b!454372) (not d!173389) (not b!455001) (not d!173341) (not b!454484) (not b!454363) (not b!454765) (not d!173349) (not b!454617) (not d!173431) (not b!454644) (not b!454648) (not d!173361) (not b!454503) (not b!454635) (not b!454638) (not bm!31445) (not d!173325) (not b!454959) (not b!454488) (not b_lambda!18837) (not b!455019) (not d!173377) (not d!173289) b_and!48785 (not b!454368) (not b!454962) (not d!173371) (not b!454929) (not b!455030) (not b!454482) (not bm!31510) (not b!454968) (not b!454361) (not b!454622) (not b!454362) (not b_next!12679) (not d!173397) b_and!48789 (not b!454646) (not b!454629) (not b!455022) (not b_lambda!18831) (not b!454631) (not d!173385) (not b!454450) (not b!454420) (not d!173405) (not d!173471) (not b!454460) (not d!173353) (not b!454602) b_and!48857 (not d!173395) (not b!454640) (not d!173387) (not b!454687) (not bm!31475) (not b_next!12677) (not b_next!12673) (not b!454462) (not b!454413) (not b!454931) (not d!173367) (not b!454693) b_and!48853 (not d!173343) (not b!455024) (not d!173375) (not d!173355) (not b!454636) (not d!173243) (not b!455023) (not b!454684) (not b!454581) (not b!454397) (not b!454486) (not b!454364) (not b!455029) (not b_next!12697) (not b!454556) (not b!455020) (not b!454597) (not d!173379) (not bm!31434) (not b!454455) (not d!173475) (not b!455012) (not b!454986) (not b!454582) (not b!455011) (not b!454960) (not b!454547) (not b!455014) (not d!173433) (not b!454608) (not b!454548) (not b!454694) b_and!48843 (not d!173399) (not bm!31470) (not b!454833) (not b!454552) (not b!454502) (not bm!31432) (not d!173241) (not b!454557) (not b!454958) (not d!173329) (not b!454988) (not b_lambda!18833) (not d!173357) (not bm!31468) (not b!454764) (not b!454367) (not b!454489) (not b!454604) (not b!454400) (not d!173393) (not b!454481) (not b_next!12699) (not b!454987) (not b!454550) (not b!454600) (not bm!31477) (not bm!31449) (not bm!31448) (not b!454613) b_and!48855 (not b!454934) (not b!454399) (not b_next!12693) (not b!454615) (not b!454405) (not b!454621) (not b!454649) (not b_next!12695) (not b!454643) (not b!454974) (not b!454553) (not b!454587) (not b!454555) (not d!173439) (not b!454618) (not b!454576) (not b!455000) (not b!454549) (not b!454639) (not bm!31447) (not bm!31471) (not d!173473) (not b!454965) (not tb!45559) (not b!454632) (not d!173477) (not bm!31513) (not b!454616) (not d!173369) (not bm!31473) (not b_lambda!18835) (not b_lambda!18827) (not d!173365) (not b!454834) (not d!173331) (not d!173383) (not d!173351) (not b!454933) b_and!48839 (not b!454750) (not b!454483) (not b!454941) (not d!173319) (not bm!31452) (not b!454964) (not b!454749) (not b!454500) (not d!173373) (not bm!31472) (not b!454626) (not d!173285) (not b!454928) (not b!454686) (not b!454999) (not bm!31430) (not b_lambda!18829) (not d!173317) tp_is_empty!1979 (not b!454412) (not b_next!12681) (not bs!56272) (not b!455018) (not b!454487) (not b!454612) (not bm!31478) (not b!454598) (not d!173363) (not b!454401) (not b!454963) (not b!454641) b_and!48841 (not b!454452) (not b!454603) (not b!454647) b_and!48859 (not tb!45553) (not d!173315))
(check-sat b_and!48785 (not b_next!12679) b_and!48789 b_and!48857 b_and!48853 (not b_next!12697) b_and!48843 (not b_next!12699) (not b_next!12695) b_and!48839 (not b_next!12681) (not b_next!12683) (not b_next!12675) b_and!48793 (not b_next!12677) (not b_next!12673) b_and!48855 (not b_next!12693) b_and!48841 b_and!48859)
(get-model)

(declare-fun d!173499 () Bool)

(assert (=> d!173499 (= (list!1959 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170))) (list!1962 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170)))))))

(declare-fun bs!56287 () Bool)

(assert (= bs!56287 d!173499))

(declare-fun m!719725 () Bool)

(assert (=> bs!56287 m!719725))

(assert (=> b!454581 d!173499))

(declare-fun lt!202421 () BalanceConc!3088)

(declare-fun d!173501 () Bool)

(assert (=> d!173501 (= (list!1959 lt!202421) (originalCharacters!902 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479))))))

(assert (=> d!173501 (= lt!202421 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479))))) (value!28797 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479)))))))

(assert (=> d!173501 (= (charsOf!502 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479))) lt!202421)))

(declare-fun b_lambda!18841 () Bool)

(assert (=> (not b_lambda!18841) (not d!173501)))

(declare-fun t!71211 () Bool)

(declare-fun tb!45591 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479)))))) t!71211) tb!45591))

(declare-fun b!455043 () Bool)

(declare-fun e!278475 () Bool)

(declare-fun tp!126447 () Bool)

(assert (=> b!455043 (= e!278475 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479))))) (value!28797 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479)))))) tp!126447))))

(declare-fun result!50186 () Bool)

(assert (=> tb!45591 (= result!50186 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479))))) (value!28797 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479))))) e!278475))))

(assert (= tb!45591 b!455043))

(declare-fun m!719727 () Bool)

(assert (=> b!455043 m!719727))

(declare-fun m!719729 () Bool)

(assert (=> tb!45591 m!719729))

(assert (=> d!173501 t!71211))

(declare-fun b_and!48871 () Bool)

(assert (= b_and!48859 (and (=> t!71211 result!50186) b_and!48871)))

(declare-fun tb!45593 () Bool)

(declare-fun t!71213 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479)))))) t!71213) tb!45593))

(declare-fun result!50188 () Bool)

(assert (= result!50188 result!50186))

(assert (=> d!173501 t!71213))

(declare-fun b_and!48873 () Bool)

(assert (= b_and!48841 (and (=> t!71213 result!50188) b_and!48873)))

(declare-fun tb!45595 () Bool)

(declare-fun t!71215 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479)))))) t!71215) tb!45595))

(declare-fun result!50190 () Bool)

(assert (= result!50190 result!50186))

(assert (=> d!173501 t!71215))

(declare-fun b_and!48875 () Bool)

(assert (= b_and!48839 (and (=> t!71215 result!50190) b_and!48875)))

(declare-fun tb!45597 () Bool)

(declare-fun t!71217 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479)))))) t!71217) tb!45597))

(declare-fun result!50192 () Bool)

(assert (= result!50192 result!50186))

(assert (=> d!173501 t!71217))

(declare-fun b_and!48877 () Bool)

(assert (= b_and!48855 (and (=> t!71217 result!50192) b_and!48877)))

(declare-fun tb!45599 () Bool)

(declare-fun t!71219 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479)))))) t!71219) tb!45599))

(declare-fun result!50194 () Bool)

(assert (= result!50194 result!50186))

(assert (=> d!173501 t!71219))

(declare-fun b_and!48879 () Bool)

(assert (= b_and!48843 (and (=> t!71219 result!50194) b_and!48879)))

(declare-fun m!719731 () Bool)

(assert (=> d!173501 m!719731))

(declare-fun m!719733 () Bool)

(assert (=> d!173501 m!719733))

(assert (=> bm!31473 d!173501))

(declare-fun d!173505 () Bool)

(assert (=> d!173505 (= (isEmpty!3386 (tail!637 lt!202023)) ((_ is Nil!4421) (tail!637 lt!202023)))))

(assert (=> b!454933 d!173505))

(declare-fun d!173507 () Bool)

(assert (=> d!173507 (= (tail!637 lt!202023) (t!71131 lt!202023))))

(assert (=> b!454933 d!173507))

(declare-fun d!173509 () Bool)

(declare-fun e!278480 () Bool)

(assert (=> d!173509 e!278480))

(declare-fun res!202320 () Bool)

(assert (=> d!173509 (=> (not res!202320) (not e!278480))))

(declare-fun lt!202435 () BalanceConc!3090)

(assert (=> d!173509 (= res!202320 (= (list!1963 lt!202435) tokens!465))))

(declare-fun fromList!254 (List!4433) Conc!1541)

(assert (=> d!173509 (= lt!202435 (BalanceConc!3091 (fromList!254 tokens!465)))))

(assert (=> d!173509 (= (fromListB!483 tokens!465) lt!202435)))

(declare-fun b!455049 () Bool)

(assert (=> b!455049 (= e!278480 (isBalanced!471 (fromList!254 tokens!465)))))

(assert (= (and d!173509 res!202320) b!455049))

(declare-fun m!719743 () Bool)

(assert (=> d!173509 m!719743))

(declare-fun m!719745 () Bool)

(assert (=> d!173509 m!719745))

(assert (=> b!455049 m!719745))

(assert (=> b!455049 m!719745))

(declare-fun m!719747 () Bool)

(assert (=> b!455049 m!719747))

(assert (=> d!173431 d!173509))

(declare-fun d!173515 () Bool)

(assert (=> d!173515 (= (head!1108 (drop!313 lt!202190 0)) (h!9820 (drop!313 lt!202190 0)))))

(assert (=> b!454452 d!173515))

(declare-fun d!173517 () Bool)

(assert (=> d!173517 (= (head!1108 (drop!313 lt!202190 0)) (apply!1131 lt!202190 0))))

(declare-fun lt!202438 () Unit!7961)

(declare-fun choose!3432 (List!4433 Int) Unit!7961)

(assert (=> d!173517 (= lt!202438 (choose!3432 lt!202190 0))))

(declare-fun e!278483 () Bool)

(assert (=> d!173517 e!278483))

(declare-fun res!202323 () Bool)

(assert (=> d!173517 (=> (not res!202323) (not e!278483))))

(assert (=> d!173517 (= res!202323 (>= 0 0))))

(assert (=> d!173517 (= (lemmaDropApply!284 lt!202190 0) lt!202438)))

(declare-fun b!455052 () Bool)

(declare-fun size!3626 (List!4433) Int)

(assert (=> b!455052 (= e!278483 (< 0 (size!3626 lt!202190)))))

(assert (= (and d!173517 res!202323) b!455052))

(assert (=> d!173517 m!718849))

(assert (=> d!173517 m!718849))

(assert (=> d!173517 m!718867))

(assert (=> d!173517 m!718843))

(declare-fun m!719781 () Bool)

(assert (=> d!173517 m!719781))

(declare-fun m!719783 () Bool)

(assert (=> b!455052 m!719783))

(assert (=> b!454452 d!173517))

(declare-fun b!455064 () Bool)

(declare-fun e!278486 () Bool)

(declare-fun lt!202441 () BalanceConc!3088)

(assert (=> b!455064 (= e!278486 (= (list!1959 lt!202441) (++!1284 (list!1959 (BalanceConc!3089 Empty!1540)) (list!1959 (charsOf!502 (apply!1130 lt!202031 0))))))))

(declare-fun b!455062 () Bool)

(declare-fun res!202332 () Bool)

(assert (=> b!455062 (=> (not res!202332) (not e!278486))))

(declare-fun height!233 (Conc!1540) Int)

(declare-fun ++!1287 (Conc!1540 Conc!1540) Conc!1540)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!455062 (= res!202332 (<= (height!233 (++!1287 (c!91744 (BalanceConc!3089 Empty!1540)) (c!91744 (charsOf!502 (apply!1130 lt!202031 0))))) (+ (max!0 (height!233 (c!91744 (BalanceConc!3089 Empty!1540))) (height!233 (c!91744 (charsOf!502 (apply!1130 lt!202031 0))))) 1)))))

(declare-fun d!173521 () Bool)

(assert (=> d!173521 e!278486))

(declare-fun res!202334 () Bool)

(assert (=> d!173521 (=> (not res!202334) (not e!278486))))

(declare-fun appendAssocInst!102 (Conc!1540 Conc!1540) Bool)

(assert (=> d!173521 (= res!202334 (appendAssocInst!102 (c!91744 (BalanceConc!3089 Empty!1540)) (c!91744 (charsOf!502 (apply!1130 lt!202031 0)))))))

(assert (=> d!173521 (= lt!202441 (BalanceConc!3089 (++!1287 (c!91744 (BalanceConc!3089 Empty!1540)) (c!91744 (charsOf!502 (apply!1130 lt!202031 0))))))))

(assert (=> d!173521 (= (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (apply!1130 lt!202031 0))) lt!202441)))

(declare-fun b!455063 () Bool)

(declare-fun res!202335 () Bool)

(assert (=> b!455063 (=> (not res!202335) (not e!278486))))

(assert (=> b!455063 (= res!202335 (>= (height!233 (++!1287 (c!91744 (BalanceConc!3089 Empty!1540)) (c!91744 (charsOf!502 (apply!1130 lt!202031 0))))) (max!0 (height!233 (c!91744 (BalanceConc!3089 Empty!1540))) (height!233 (c!91744 (charsOf!502 (apply!1130 lt!202031 0)))))))))

(declare-fun b!455061 () Bool)

(declare-fun res!202333 () Bool)

(assert (=> b!455061 (=> (not res!202333) (not e!278486))))

(declare-fun isBalanced!472 (Conc!1540) Bool)

(assert (=> b!455061 (= res!202333 (isBalanced!472 (++!1287 (c!91744 (BalanceConc!3089 Empty!1540)) (c!91744 (charsOf!502 (apply!1130 lt!202031 0))))))))

(assert (= (and d!173521 res!202334) b!455061))

(assert (= (and b!455061 res!202333) b!455062))

(assert (= (and b!455062 res!202332) b!455063))

(assert (= (and b!455063 res!202335) b!455064))

(declare-fun m!719785 () Bool)

(assert (=> b!455062 m!719785))

(declare-fun m!719787 () Bool)

(assert (=> b!455062 m!719787))

(declare-fun m!719789 () Bool)

(assert (=> b!455062 m!719789))

(declare-fun m!719791 () Bool)

(assert (=> b!455062 m!719791))

(declare-fun m!719793 () Bool)

(assert (=> b!455062 m!719793))

(assert (=> b!455062 m!719785))

(assert (=> b!455062 m!719791))

(assert (=> b!455062 m!719787))

(declare-fun m!719795 () Bool)

(assert (=> b!455064 m!719795))

(assert (=> b!455064 m!718835))

(assert (=> b!455064 m!718847))

(declare-fun m!719797 () Bool)

(assert (=> b!455064 m!719797))

(assert (=> b!455064 m!718835))

(assert (=> b!455064 m!719797))

(declare-fun m!719799 () Bool)

(assert (=> b!455064 m!719799))

(assert (=> b!455061 m!719791))

(assert (=> b!455061 m!719791))

(declare-fun m!719801 () Bool)

(assert (=> b!455061 m!719801))

(assert (=> b!455063 m!719785))

(assert (=> b!455063 m!719787))

(assert (=> b!455063 m!719789))

(assert (=> b!455063 m!719791))

(assert (=> b!455063 m!719793))

(assert (=> b!455063 m!719785))

(assert (=> b!455063 m!719791))

(assert (=> b!455063 m!719787))

(declare-fun m!719803 () Bool)

(assert (=> d!173521 m!719803))

(assert (=> d!173521 m!719791))

(assert (=> b!454452 d!173521))

(declare-fun b!455083 () Bool)

(declare-fun e!278500 () List!4433)

(assert (=> b!455083 (= e!278500 lt!202191)))

(declare-fun bm!31521 () Bool)

(declare-fun call!31526 () Int)

(assert (=> bm!31521 (= call!31526 (size!3626 lt!202191))))

(declare-fun b!455084 () Bool)

(declare-fun e!278501 () List!4433)

(assert (=> b!455084 (= e!278501 Nil!4423)))

(declare-fun b!455085 () Bool)

(declare-fun e!278498 () Int)

(assert (=> b!455085 (= e!278498 call!31526)))

(declare-fun b!455086 () Bool)

(declare-fun e!278499 () Int)

(assert (=> b!455086 (= e!278499 0)))

(declare-fun b!455087 () Bool)

(assert (=> b!455087 (= e!278500 (drop!313 (t!71133 lt!202191) (- (+ 0 1) 1)))))

(declare-fun b!455088 () Bool)

(assert (=> b!455088 (= e!278498 e!278499)))

(declare-fun c!91911 () Bool)

(assert (=> b!455088 (= c!91911 (>= (+ 0 1) call!31526))))

(declare-fun b!455089 () Bool)

(assert (=> b!455089 (= e!278501 e!278500)))

(declare-fun c!91909 () Bool)

(assert (=> b!455089 (= c!91909 (<= (+ 0 1) 0))))

(declare-fun b!455090 () Bool)

(declare-fun e!278497 () Bool)

(declare-fun lt!202444 () List!4433)

(assert (=> b!455090 (= e!278497 (= (size!3626 lt!202444) e!278498))))

(declare-fun c!91908 () Bool)

(assert (=> b!455090 (= c!91908 (<= (+ 0 1) 0))))

(declare-fun d!173523 () Bool)

(assert (=> d!173523 e!278497))

(declare-fun res!202338 () Bool)

(assert (=> d!173523 (=> (not res!202338) (not e!278497))))

(declare-fun content!738 (List!4433) (InoxSet Token!1462))

(assert (=> d!173523 (= res!202338 (= ((_ map implies) (content!738 lt!202444) (content!738 lt!202191)) ((as const (InoxSet Token!1462)) true)))))

(assert (=> d!173523 (= lt!202444 e!278501)))

(declare-fun c!91910 () Bool)

(assert (=> d!173523 (= c!91910 ((_ is Nil!4423) lt!202191))))

(assert (=> d!173523 (= (drop!313 lt!202191 (+ 0 1)) lt!202444)))

(declare-fun b!455091 () Bool)

(assert (=> b!455091 (= e!278499 (- call!31526 (+ 0 1)))))

(assert (= (and d!173523 c!91910) b!455084))

(assert (= (and d!173523 (not c!91910)) b!455089))

(assert (= (and b!455089 c!91909) b!455083))

(assert (= (and b!455089 (not c!91909)) b!455087))

(assert (= (and d!173523 res!202338) b!455090))

(assert (= (and b!455090 c!91908) b!455085))

(assert (= (and b!455090 (not c!91908)) b!455088))

(assert (= (and b!455088 c!91911) b!455086))

(assert (= (and b!455088 (not c!91911)) b!455091))

(assert (= (or b!455085 b!455088 b!455091) bm!31521))

(declare-fun m!719805 () Bool)

(assert (=> bm!31521 m!719805))

(declare-fun m!719807 () Bool)

(assert (=> b!455087 m!719807))

(declare-fun m!719809 () Bool)

(assert (=> b!455090 m!719809))

(declare-fun m!719811 () Bool)

(assert (=> d!173523 m!719811))

(declare-fun m!719813 () Bool)

(assert (=> d!173523 m!719813))

(assert (=> b!454452 d!173523))

(declare-fun d!173525 () Bool)

(declare-fun lt!202447 () Token!1462)

(assert (=> d!173525 (contains!991 lt!202190 lt!202447)))

(declare-fun e!278506 () Token!1462)

(assert (=> d!173525 (= lt!202447 e!278506)))

(declare-fun c!91914 () Bool)

(assert (=> d!173525 (= c!91914 (= 0 0))))

(declare-fun e!278507 () Bool)

(assert (=> d!173525 e!278507))

(declare-fun res!202341 () Bool)

(assert (=> d!173525 (=> (not res!202341) (not e!278507))))

(assert (=> d!173525 (= res!202341 (<= 0 0))))

(assert (=> d!173525 (= (apply!1131 lt!202190 0) lt!202447)))

(declare-fun b!455098 () Bool)

(assert (=> b!455098 (= e!278507 (< 0 (size!3626 lt!202190)))))

(declare-fun b!455099 () Bool)

(assert (=> b!455099 (= e!278506 (head!1108 lt!202190))))

(declare-fun b!455100 () Bool)

(assert (=> b!455100 (= e!278506 (apply!1131 (tail!636 lt!202190) (- 0 1)))))

(assert (= (and d!173525 res!202341) b!455098))

(assert (= (and d!173525 c!91914) b!455099))

(assert (= (and d!173525 (not c!91914)) b!455100))

(declare-fun m!719815 () Bool)

(assert (=> d!173525 m!719815))

(assert (=> b!455098 m!719783))

(declare-fun m!719817 () Bool)

(assert (=> b!455099 m!719817))

(declare-fun m!719819 () Bool)

(assert (=> b!455100 m!719819))

(assert (=> b!455100 m!719819))

(declare-fun m!719821 () Bool)

(assert (=> b!455100 m!719821))

(assert (=> b!454452 d!173525))

(declare-fun d!173527 () Bool)

(assert (=> d!173527 (= (tail!636 (drop!313 lt!202191 0)) (drop!313 lt!202191 (+ 0 1)))))

(declare-fun lt!202450 () Unit!7961)

(declare-fun choose!3434 (List!4433 Int) Unit!7961)

(assert (=> d!173527 (= lt!202450 (choose!3434 lt!202191 0))))

(declare-fun e!278510 () Bool)

(assert (=> d!173527 e!278510))

(declare-fun res!202344 () Bool)

(assert (=> d!173527 (=> (not res!202344) (not e!278510))))

(assert (=> d!173527 (= res!202344 (>= 0 0))))

(assert (=> d!173527 (= (lemmaDropTail!276 lt!202191 0) lt!202450)))

(declare-fun b!455103 () Bool)

(assert (=> b!455103 (= e!278510 (< 0 (size!3626 lt!202191)))))

(assert (= (and d!173527 res!202344) b!455103))

(assert (=> d!173527 m!718861))

(assert (=> d!173527 m!718861))

(assert (=> d!173527 m!718863))

(assert (=> d!173527 m!718853))

(declare-fun m!719823 () Bool)

(assert (=> d!173527 m!719823))

(assert (=> b!455103 m!719805))

(assert (=> b!454452 d!173527))

(declare-fun d!173529 () Bool)

(declare-fun lt!202453 () Token!1462)

(assert (=> d!173529 (= lt!202453 (apply!1131 (list!1963 lt!202031) 0))))

(declare-fun apply!1133 (Conc!1541 Int) Token!1462)

(assert (=> d!173529 (= lt!202453 (apply!1133 (c!91746 lt!202031) 0))))

(declare-fun e!278513 () Bool)

(assert (=> d!173529 e!278513))

(declare-fun res!202347 () Bool)

(assert (=> d!173529 (=> (not res!202347) (not e!278513))))

(assert (=> d!173529 (= res!202347 (<= 0 0))))

(assert (=> d!173529 (= (apply!1130 lt!202031 0) lt!202453)))

(declare-fun b!455106 () Bool)

(assert (=> b!455106 (= e!278513 (< 0 (size!3622 lt!202031)))))

(assert (= (and d!173529 res!202347) b!455106))

(assert (=> d!173529 m!718851))

(assert (=> d!173529 m!718851))

(declare-fun m!719825 () Bool)

(assert (=> d!173529 m!719825))

(declare-fun m!719827 () Bool)

(assert (=> d!173529 m!719827))

(assert (=> b!455106 m!718841))

(assert (=> b!454452 d!173529))

(declare-fun d!173531 () Bool)

(declare-fun list!1964 (Conc!1541) List!4433)

(assert (=> d!173531 (= (list!1963 lt!202031) (list!1964 (c!91746 lt!202031)))))

(declare-fun bs!56291 () Bool)

(assert (= bs!56291 d!173531))

(declare-fun m!719829 () Bool)

(assert (=> bs!56291 m!719829))

(assert (=> b!454452 d!173531))

(declare-fun b!455107 () Bool)

(declare-fun e!278517 () List!4433)

(assert (=> b!455107 (= e!278517 lt!202190)))

(declare-fun bm!31522 () Bool)

(declare-fun call!31527 () Int)

(assert (=> bm!31522 (= call!31527 (size!3626 lt!202190))))

(declare-fun b!455108 () Bool)

(declare-fun e!278518 () List!4433)

(assert (=> b!455108 (= e!278518 Nil!4423)))

(declare-fun b!455109 () Bool)

(declare-fun e!278515 () Int)

(assert (=> b!455109 (= e!278515 call!31527)))

(declare-fun b!455110 () Bool)

(declare-fun e!278516 () Int)

(assert (=> b!455110 (= e!278516 0)))

(declare-fun b!455111 () Bool)

(assert (=> b!455111 (= e!278517 (drop!313 (t!71133 lt!202190) (- 0 1)))))

(declare-fun b!455112 () Bool)

(assert (=> b!455112 (= e!278515 e!278516)))

(declare-fun c!91918 () Bool)

(assert (=> b!455112 (= c!91918 (>= 0 call!31527))))

(declare-fun b!455113 () Bool)

(assert (=> b!455113 (= e!278518 e!278517)))

(declare-fun c!91916 () Bool)

(assert (=> b!455113 (= c!91916 (<= 0 0))))

(declare-fun b!455114 () Bool)

(declare-fun e!278514 () Bool)

(declare-fun lt!202454 () List!4433)

(assert (=> b!455114 (= e!278514 (= (size!3626 lt!202454) e!278515))))

(declare-fun c!91915 () Bool)

(assert (=> b!455114 (= c!91915 (<= 0 0))))

(declare-fun d!173533 () Bool)

(assert (=> d!173533 e!278514))

(declare-fun res!202348 () Bool)

(assert (=> d!173533 (=> (not res!202348) (not e!278514))))

(assert (=> d!173533 (= res!202348 (= ((_ map implies) (content!738 lt!202454) (content!738 lt!202190)) ((as const (InoxSet Token!1462)) true)))))

(assert (=> d!173533 (= lt!202454 e!278518)))

(declare-fun c!91917 () Bool)

(assert (=> d!173533 (= c!91917 ((_ is Nil!4423) lt!202190))))

(assert (=> d!173533 (= (drop!313 lt!202190 0) lt!202454)))

(declare-fun b!455115 () Bool)

(assert (=> b!455115 (= e!278516 (- call!31527 0))))

(assert (= (and d!173533 c!91917) b!455108))

(assert (= (and d!173533 (not c!91917)) b!455113))

(assert (= (and b!455113 c!91916) b!455107))

(assert (= (and b!455113 (not c!91916)) b!455111))

(assert (= (and d!173533 res!202348) b!455114))

(assert (= (and b!455114 c!91915) b!455109))

(assert (= (and b!455114 (not c!91915)) b!455112))

(assert (= (and b!455112 c!91918) b!455110))

(assert (= (and b!455112 (not c!91918)) b!455115))

(assert (= (or b!455109 b!455112 b!455115) bm!31522))

(assert (=> bm!31522 m!719783))

(declare-fun m!719831 () Bool)

(assert (=> b!455111 m!719831))

(declare-fun m!719833 () Bool)

(assert (=> b!455114 m!719833))

(declare-fun m!719835 () Bool)

(assert (=> d!173533 m!719835))

(declare-fun m!719837 () Bool)

(assert (=> d!173533 m!719837))

(assert (=> b!454452 d!173533))

(declare-fun d!173535 () Bool)

(declare-fun lt!202457 () BalanceConc!3088)

(assert (=> d!173535 (= (list!1959 lt!202457) (printListTailRec!209 thiss!17480 (dropList!244 lt!202031 (+ 0 1)) (list!1959 (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (apply!1130 lt!202031 0))))))))

(declare-fun e!278519 () BalanceConc!3088)

(assert (=> d!173535 (= lt!202457 e!278519)))

(declare-fun c!91919 () Bool)

(assert (=> d!173535 (= c!91919 (>= (+ 0 1) (size!3622 lt!202031)))))

(declare-fun e!278520 () Bool)

(assert (=> d!173535 e!278520))

(declare-fun res!202349 () Bool)

(assert (=> d!173535 (=> (not res!202349) (not e!278520))))

(assert (=> d!173535 (= res!202349 (>= (+ 0 1) 0))))

(assert (=> d!173535 (= (printTailRec!431 thiss!17480 lt!202031 (+ 0 1) (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (apply!1130 lt!202031 0)))) lt!202457)))

(declare-fun b!455116 () Bool)

(assert (=> b!455116 (= e!278520 (<= (+ 0 1) (size!3622 lt!202031)))))

(declare-fun b!455117 () Bool)

(assert (=> b!455117 (= e!278519 (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (apply!1130 lt!202031 0))))))

(declare-fun b!455118 () Bool)

(assert (=> b!455118 (= e!278519 (printTailRec!431 thiss!17480 lt!202031 (+ 0 1 1) (++!1286 (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (apply!1130 lt!202031 0))) (charsOf!502 (apply!1130 lt!202031 (+ 0 1))))))))

(declare-fun lt!202459 () List!4433)

(assert (=> b!455118 (= lt!202459 (list!1963 lt!202031))))

(declare-fun lt!202458 () Unit!7961)

(assert (=> b!455118 (= lt!202458 (lemmaDropApply!284 lt!202459 (+ 0 1)))))

(assert (=> b!455118 (= (head!1108 (drop!313 lt!202459 (+ 0 1))) (apply!1131 lt!202459 (+ 0 1)))))

(declare-fun lt!202461 () Unit!7961)

(assert (=> b!455118 (= lt!202461 lt!202458)))

(declare-fun lt!202460 () List!4433)

(assert (=> b!455118 (= lt!202460 (list!1963 lt!202031))))

(declare-fun lt!202455 () Unit!7961)

(assert (=> b!455118 (= lt!202455 (lemmaDropTail!276 lt!202460 (+ 0 1)))))

(assert (=> b!455118 (= (tail!636 (drop!313 lt!202460 (+ 0 1))) (drop!313 lt!202460 (+ 0 1 1)))))

(declare-fun lt!202456 () Unit!7961)

(assert (=> b!455118 (= lt!202456 lt!202455)))

(assert (= (and d!173535 res!202349) b!455116))

(assert (= (and d!173535 c!91919) b!455117))

(assert (= (and d!173535 (not c!91919)) b!455118))

(declare-fun m!719839 () Bool)

(assert (=> d!173535 m!719839))

(assert (=> d!173535 m!718857))

(declare-fun m!719841 () Bool)

(assert (=> d!173535 m!719841))

(declare-fun m!719843 () Bool)

(assert (=> d!173535 m!719843))

(assert (=> d!173535 m!719839))

(assert (=> d!173535 m!719841))

(declare-fun m!719845 () Bool)

(assert (=> d!173535 m!719845))

(assert (=> d!173535 m!718841))

(assert (=> b!455116 m!718841))

(declare-fun m!719847 () Bool)

(assert (=> b!455118 m!719847))

(declare-fun m!719849 () Bool)

(assert (=> b!455118 m!719849))

(declare-fun m!719851 () Bool)

(assert (=> b!455118 m!719851))

(declare-fun m!719853 () Bool)

(assert (=> b!455118 m!719853))

(assert (=> b!455118 m!718851))

(declare-fun m!719855 () Bool)

(assert (=> b!455118 m!719855))

(declare-fun m!719857 () Bool)

(assert (=> b!455118 m!719857))

(declare-fun m!719859 () Bool)

(assert (=> b!455118 m!719859))

(declare-fun m!719861 () Bool)

(assert (=> b!455118 m!719861))

(declare-fun m!719863 () Bool)

(assert (=> b!455118 m!719863))

(declare-fun m!719865 () Bool)

(assert (=> b!455118 m!719865))

(declare-fun m!719867 () Bool)

(assert (=> b!455118 m!719867))

(assert (=> b!455118 m!719849))

(assert (=> b!455118 m!719863))

(assert (=> b!455118 m!719853))

(declare-fun m!719869 () Bool)

(assert (=> b!455118 m!719869))

(assert (=> b!455118 m!718857))

(assert (=> b!455118 m!719851))

(assert (=> b!455118 m!719859))

(assert (=> b!454452 d!173535))

(declare-fun b!455119 () Bool)

(declare-fun e!278524 () List!4433)

(assert (=> b!455119 (= e!278524 lt!202191)))

(declare-fun bm!31523 () Bool)

(declare-fun call!31528 () Int)

(assert (=> bm!31523 (= call!31528 (size!3626 lt!202191))))

(declare-fun b!455120 () Bool)

(declare-fun e!278525 () List!4433)

(assert (=> b!455120 (= e!278525 Nil!4423)))

(declare-fun b!455121 () Bool)

(declare-fun e!278522 () Int)

(assert (=> b!455121 (= e!278522 call!31528)))

(declare-fun b!455122 () Bool)

(declare-fun e!278523 () Int)

(assert (=> b!455122 (= e!278523 0)))

(declare-fun b!455123 () Bool)

(assert (=> b!455123 (= e!278524 (drop!313 (t!71133 lt!202191) (- 0 1)))))

(declare-fun b!455124 () Bool)

(assert (=> b!455124 (= e!278522 e!278523)))

(declare-fun c!91923 () Bool)

(assert (=> b!455124 (= c!91923 (>= 0 call!31528))))

(declare-fun b!455125 () Bool)

(assert (=> b!455125 (= e!278525 e!278524)))

(declare-fun c!91921 () Bool)

(assert (=> b!455125 (= c!91921 (<= 0 0))))

(declare-fun b!455126 () Bool)

(declare-fun e!278521 () Bool)

(declare-fun lt!202462 () List!4433)

(assert (=> b!455126 (= e!278521 (= (size!3626 lt!202462) e!278522))))

(declare-fun c!91920 () Bool)

(assert (=> b!455126 (= c!91920 (<= 0 0))))

(declare-fun d!173537 () Bool)

(assert (=> d!173537 e!278521))

(declare-fun res!202350 () Bool)

(assert (=> d!173537 (=> (not res!202350) (not e!278521))))

(assert (=> d!173537 (= res!202350 (= ((_ map implies) (content!738 lt!202462) (content!738 lt!202191)) ((as const (InoxSet Token!1462)) true)))))

(assert (=> d!173537 (= lt!202462 e!278525)))

(declare-fun c!91922 () Bool)

(assert (=> d!173537 (= c!91922 ((_ is Nil!4423) lt!202191))))

(assert (=> d!173537 (= (drop!313 lt!202191 0) lt!202462)))

(declare-fun b!455127 () Bool)

(assert (=> b!455127 (= e!278523 (- call!31528 0))))

(assert (= (and d!173537 c!91922) b!455120))

(assert (= (and d!173537 (not c!91922)) b!455125))

(assert (= (and b!455125 c!91921) b!455119))

(assert (= (and b!455125 (not c!91921)) b!455123))

(assert (= (and d!173537 res!202350) b!455126))

(assert (= (and b!455126 c!91920) b!455121))

(assert (= (and b!455126 (not c!91920)) b!455124))

(assert (= (and b!455124 c!91923) b!455122))

(assert (= (and b!455124 (not c!91923)) b!455127))

(assert (= (or b!455121 b!455124 b!455127) bm!31523))

(assert (=> bm!31523 m!719805))

(declare-fun m!719871 () Bool)

(assert (=> b!455123 m!719871))

(declare-fun m!719873 () Bool)

(assert (=> b!455126 m!719873))

(declare-fun m!719875 () Bool)

(assert (=> d!173537 m!719875))

(assert (=> d!173537 m!719813))

(assert (=> b!454452 d!173537))

(declare-fun d!173539 () Bool)

(assert (=> d!173539 (= (tail!636 (drop!313 lt!202191 0)) (t!71133 (drop!313 lt!202191 0)))))

(assert (=> b!454452 d!173539))

(declare-fun d!173541 () Bool)

(declare-fun lt!202463 () BalanceConc!3088)

(assert (=> d!173541 (= (list!1959 lt!202463) (originalCharacters!902 (apply!1130 lt!202031 0)))))

(assert (=> d!173541 (= lt!202463 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202031 0)))) (value!28797 (apply!1130 lt!202031 0))))))

(assert (=> d!173541 (= (charsOf!502 (apply!1130 lt!202031 0)) lt!202463)))

(declare-fun b_lambda!18843 () Bool)

(assert (=> (not b_lambda!18843) (not d!173541)))

(declare-fun t!71221 () Bool)

(declare-fun tb!45601 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202031 0))))) t!71221) tb!45601))

(declare-fun b!455128 () Bool)

(declare-fun e!278526 () Bool)

(declare-fun tp!126448 () Bool)

(assert (=> b!455128 (= e!278526 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202031 0)))) (value!28797 (apply!1130 lt!202031 0))))) tp!126448))))

(declare-fun result!50196 () Bool)

(assert (=> tb!45601 (= result!50196 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202031 0)))) (value!28797 (apply!1130 lt!202031 0)))) e!278526))))

(assert (= tb!45601 b!455128))

(declare-fun m!719877 () Bool)

(assert (=> b!455128 m!719877))

(declare-fun m!719879 () Bool)

(assert (=> tb!45601 m!719879))

(assert (=> d!173541 t!71221))

(declare-fun b_and!48881 () Bool)

(assert (= b_and!48879 (and (=> t!71221 result!50196) b_and!48881)))

(declare-fun tb!45603 () Bool)

(declare-fun t!71223 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202031 0))))) t!71223) tb!45603))

(declare-fun result!50198 () Bool)

(assert (= result!50198 result!50196))

(assert (=> d!173541 t!71223))

(declare-fun b_and!48883 () Bool)

(assert (= b_and!48875 (and (=> t!71223 result!50198) b_and!48883)))

(declare-fun t!71225 () Bool)

(declare-fun tb!45605 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202031 0))))) t!71225) tb!45605))

(declare-fun result!50200 () Bool)

(assert (= result!50200 result!50196))

(assert (=> d!173541 t!71225))

(declare-fun b_and!48885 () Bool)

(assert (= b_and!48873 (and (=> t!71225 result!50200) b_and!48885)))

(declare-fun t!71227 () Bool)

(declare-fun tb!45607 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202031 0))))) t!71227) tb!45607))

(declare-fun result!50202 () Bool)

(assert (= result!50202 result!50196))

(assert (=> d!173541 t!71227))

(declare-fun b_and!48887 () Bool)

(assert (= b_and!48877 (and (=> t!71227 result!50202) b_and!48887)))

(declare-fun t!71229 () Bool)

(declare-fun tb!45609 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202031 0))))) t!71229) tb!45609))

(declare-fun result!50204 () Bool)

(assert (= result!50204 result!50196))

(assert (=> d!173541 t!71229))

(declare-fun b_and!48889 () Bool)

(assert (= b_and!48871 (and (=> t!71229 result!50204) b_and!48889)))

(declare-fun m!719881 () Bool)

(assert (=> d!173541 m!719881))

(declare-fun m!719883 () Bool)

(assert (=> d!173541 m!719883))

(assert (=> b!454452 d!173541))

(declare-fun d!173543 () Bool)

(declare-fun nullableFct!84 (Regex!1083) Bool)

(assert (=> d!173543 (= (nullable!243 (regex!859 (rule!1550 (h!9820 tokens!465)))) (nullableFct!84 (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(declare-fun bs!56292 () Bool)

(assert (= bs!56292 d!173543))

(declare-fun m!719885 () Bool)

(assert (=> bs!56292 m!719885))

(assert (=> b!454929 d!173543))

(declare-fun d!173545 () Bool)

(declare-fun e!278527 () Bool)

(assert (=> d!173545 e!278527))

(declare-fun res!202351 () Bool)

(assert (=> d!173545 (=> (not res!202351) (not e!278527))))

(declare-fun lt!202464 () BalanceConc!3090)

(assert (=> d!173545 (= res!202351 (= (list!1963 lt!202464) (Cons!4423 separatorToken!170 Nil!4423)))))

(assert (=> d!173545 (= lt!202464 (singleton!194 separatorToken!170))))

(assert (=> d!173545 (= (singletonSeq!405 separatorToken!170) lt!202464)))

(declare-fun b!455129 () Bool)

(assert (=> b!455129 (= e!278527 (isBalanced!471 (c!91746 lt!202464)))))

(assert (= (and d!173545 res!202351) b!455129))

(declare-fun m!719887 () Bool)

(assert (=> d!173545 m!719887))

(declare-fun m!719889 () Bool)

(assert (=> d!173545 m!719889))

(declare-fun m!719891 () Bool)

(assert (=> b!455129 m!719891))

(assert (=> d!173335 d!173545))

(declare-fun d!173547 () Bool)

(assert (=> d!173547 (= (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170))))) (list!1964 (c!91746 (_1!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170)))))))))

(declare-fun bs!56293 () Bool)

(assert (= bs!56293 d!173547))

(declare-fun m!719893 () Bool)

(assert (=> bs!56293 m!719893))

(assert (=> d!173335 d!173547))

(declare-fun b!455130 () Bool)

(declare-fun res!202353 () Bool)

(declare-fun e!278529 () Bool)

(assert (=> b!455130 (=> (not res!202353) (not e!278529))))

(declare-fun lt!202465 () tuple2!5374)

(assert (=> b!455130 (= res!202353 (= (list!1963 (_1!2903 lt!202465)) (_1!2905 (lexList!291 thiss!17480 rules!1920 (list!1959 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170)))))))))

(declare-fun b!455131 () Bool)

(assert (=> b!455131 (= e!278529 (= (list!1959 (_2!2903 lt!202465)) (_2!2905 (lexList!291 thiss!17480 rules!1920 (list!1959 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170)))))))))

(declare-fun b!455132 () Bool)

(declare-fun e!278528 () Bool)

(assert (=> b!455132 (= e!278528 (not (isEmpty!3385 (_1!2903 lt!202465))))))

(declare-fun b!455133 () Bool)

(declare-fun e!278530 () Bool)

(assert (=> b!455133 (= e!278530 e!278528)))

(declare-fun res!202352 () Bool)

(assert (=> b!455133 (= res!202352 (< (size!3625 (_2!2903 lt!202465)) (size!3625 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170)))))))

(assert (=> b!455133 (=> (not res!202352) (not e!278528))))

(declare-fun b!455134 () Bool)

(assert (=> b!455134 (= e!278530 (= (_2!2903 lt!202465) (print!470 thiss!17480 (singletonSeq!405 separatorToken!170))))))

(declare-fun d!173549 () Bool)

(assert (=> d!173549 e!278529))

(declare-fun res!202354 () Bool)

(assert (=> d!173549 (=> (not res!202354) (not e!278529))))

(assert (=> d!173549 (= res!202354 e!278530)))

(declare-fun c!91924 () Bool)

(assert (=> d!173549 (= c!91924 (> (size!3622 (_1!2903 lt!202465)) 0))))

(assert (=> d!173549 (= lt!202465 (lexTailRecV2!256 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170)) (BalanceConc!3089 Empty!1540) (print!470 thiss!17480 (singletonSeq!405 separatorToken!170)) (BalanceConc!3091 Empty!1541)))))

(assert (=> d!173549 (= (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170))) lt!202465)))

(assert (= (and d!173549 c!91924) b!455133))

(assert (= (and d!173549 (not c!91924)) b!455134))

(assert (= (and b!455133 res!202352) b!455132))

(assert (= (and d!173549 res!202354) b!455130))

(assert (= (and b!455130 res!202353) b!455131))

(declare-fun m!719895 () Bool)

(assert (=> d!173549 m!719895))

(assert (=> d!173549 m!718995))

(assert (=> d!173549 m!718995))

(declare-fun m!719897 () Bool)

(assert (=> d!173549 m!719897))

(declare-fun m!719899 () Bool)

(assert (=> b!455131 m!719899))

(assert (=> b!455131 m!718995))

(declare-fun m!719901 () Bool)

(assert (=> b!455131 m!719901))

(assert (=> b!455131 m!719901))

(declare-fun m!719903 () Bool)

(assert (=> b!455131 m!719903))

(declare-fun m!719905 () Bool)

(assert (=> b!455133 m!719905))

(assert (=> b!455133 m!718995))

(declare-fun m!719907 () Bool)

(assert (=> b!455133 m!719907))

(declare-fun m!719909 () Bool)

(assert (=> b!455130 m!719909))

(assert (=> b!455130 m!718995))

(assert (=> b!455130 m!719901))

(assert (=> b!455130 m!719901))

(assert (=> b!455130 m!719903))

(declare-fun m!719911 () Bool)

(assert (=> b!455132 m!719911))

(assert (=> d!173335 d!173549))

(declare-fun d!173551 () Bool)

(assert (=> d!173551 (= (list!1963 (singletonSeq!405 separatorToken!170)) (list!1964 (c!91746 (singletonSeq!405 separatorToken!170))))))

(declare-fun bs!56294 () Bool)

(assert (= bs!56294 d!173551))

(declare-fun m!719913 () Bool)

(assert (=> bs!56294 m!719913))

(assert (=> d!173335 d!173551))

(assert (=> d!173335 d!173287))

(declare-fun d!173553 () Bool)

(declare-fun lt!202466 () BalanceConc!3088)

(assert (=> d!173553 (= (list!1959 lt!202466) (printList!419 thiss!17480 (list!1963 (singletonSeq!405 separatorToken!170))))))

(assert (=> d!173553 (= lt!202466 (printTailRec!431 thiss!17480 (singletonSeq!405 separatorToken!170) 0 (BalanceConc!3089 Empty!1540)))))

(assert (=> d!173553 (= (print!470 thiss!17480 (singletonSeq!405 separatorToken!170)) lt!202466)))

(declare-fun bs!56295 () Bool)

(assert (= bs!56295 d!173553))

(declare-fun m!719915 () Bool)

(assert (=> bs!56295 m!719915))

(assert (=> bs!56295 m!718999))

(assert (=> bs!56295 m!719001))

(assert (=> bs!56295 m!719001))

(declare-fun m!719917 () Bool)

(assert (=> bs!56295 m!719917))

(assert (=> bs!56295 m!718999))

(declare-fun m!719919 () Bool)

(assert (=> bs!56295 m!719919))

(assert (=> d!173335 d!173553))

(declare-fun d!173555 () Bool)

(declare-fun lt!202469 () Int)

(assert (=> d!173555 (= lt!202469 (size!3626 (list!1963 (_1!2903 lt!202261))))))

(declare-fun size!3629 (Conc!1541) Int)

(assert (=> d!173555 (= lt!202469 (size!3629 (c!91746 (_1!2903 lt!202261))))))

(assert (=> d!173555 (= (size!3622 (_1!2903 lt!202261)) lt!202469)))

(declare-fun bs!56296 () Bool)

(assert (= bs!56296 d!173555))

(declare-fun m!719921 () Bool)

(assert (=> bs!56296 m!719921))

(assert (=> bs!56296 m!719921))

(declare-fun m!719923 () Bool)

(assert (=> bs!56296 m!719923))

(declare-fun m!719925 () Bool)

(assert (=> bs!56296 m!719925))

(assert (=> d!173335 d!173555))

(declare-fun b!455135 () Bool)

(declare-fun e!278532 () List!4431)

(assert (=> b!455135 (= e!278532 lt!202021)))

(declare-fun d!173557 () Bool)

(declare-fun e!278531 () Bool)

(assert (=> d!173557 e!278531))

(declare-fun res!202355 () Bool)

(assert (=> d!173557 (=> (not res!202355) (not e!278531))))

(declare-fun lt!202470 () List!4431)

(assert (=> d!173557 (= res!202355 (= (content!737 lt!202470) ((_ map or) (content!737 (t!71131 lt!202023)) (content!737 lt!202021))))))

(assert (=> d!173557 (= lt!202470 e!278532)))

(declare-fun c!91925 () Bool)

(assert (=> d!173557 (= c!91925 ((_ is Nil!4421) (t!71131 lt!202023)))))

(assert (=> d!173557 (= (++!1284 (t!71131 lt!202023) lt!202021) lt!202470)))

(declare-fun b!455137 () Bool)

(declare-fun res!202356 () Bool)

(assert (=> b!455137 (=> (not res!202356) (not e!278531))))

(assert (=> b!455137 (= res!202356 (= (size!3623 lt!202470) (+ (size!3623 (t!71131 lt!202023)) (size!3623 lt!202021))))))

(declare-fun b!455138 () Bool)

(assert (=> b!455138 (= e!278531 (or (not (= lt!202021 Nil!4421)) (= lt!202470 (t!71131 lt!202023))))))

(declare-fun b!455136 () Bool)

(assert (=> b!455136 (= e!278532 (Cons!4421 (h!9818 (t!71131 lt!202023)) (++!1284 (t!71131 (t!71131 lt!202023)) lt!202021)))))

(assert (= (and d!173557 c!91925) b!455135))

(assert (= (and d!173557 (not c!91925)) b!455136))

(assert (= (and d!173557 res!202355) b!455137))

(assert (= (and b!455137 res!202356) b!455138))

(declare-fun m!719927 () Bool)

(assert (=> d!173557 m!719927))

(declare-fun m!719929 () Bool)

(assert (=> d!173557 m!719929))

(assert (=> d!173557 m!719121))

(declare-fun m!719931 () Bool)

(assert (=> b!455137 m!719931))

(declare-fun m!719933 () Bool)

(assert (=> b!455137 m!719933))

(assert (=> b!455137 m!719127))

(declare-fun m!719935 () Bool)

(assert (=> b!455136 m!719935))

(assert (=> b!454693 d!173557))

(declare-fun d!173559 () Bool)

(declare-fun lt!202473 () Bool)

(assert (=> d!173559 (= lt!202473 (select (content!738 tokens!465) (h!9820 tokens!465)))))

(declare-fun e!278537 () Bool)

(assert (=> d!173559 (= lt!202473 e!278537)))

(declare-fun res!202362 () Bool)

(assert (=> d!173559 (=> (not res!202362) (not e!278537))))

(assert (=> d!173559 (= res!202362 ((_ is Cons!4423) tokens!465))))

(assert (=> d!173559 (= (contains!991 tokens!465 (h!9820 tokens!465)) lt!202473)))

(declare-fun b!455143 () Bool)

(declare-fun e!278538 () Bool)

(assert (=> b!455143 (= e!278537 e!278538)))

(declare-fun res!202361 () Bool)

(assert (=> b!455143 (=> res!202361 e!278538)))

(assert (=> b!455143 (= res!202361 (= (h!9820 tokens!465) (h!9820 tokens!465)))))

(declare-fun b!455144 () Bool)

(assert (=> b!455144 (= e!278538 (contains!991 (t!71133 tokens!465) (h!9820 tokens!465)))))

(assert (= (and d!173559 res!202362) b!455143))

(assert (= (and b!455143 (not res!202361)) b!455144))

(declare-fun m!719937 () Bool)

(assert (=> d!173559 m!719937))

(declare-fun m!719939 () Bool)

(assert (=> d!173559 m!719939))

(declare-fun m!719941 () Bool)

(assert (=> b!455144 m!719941))

(assert (=> b!454968 d!173559))

(declare-fun d!173561 () Bool)

(assert (=> d!173561 true))

(declare-fun order!3911 () Int)

(declare-fun lambda!13318 () Int)

(declare-fun dynLambda!2681 (Int Int) Int)

(assert (=> d!173561 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) (dynLambda!2681 order!3911 lambda!13318))))

(assert (=> d!173561 true))

(assert (=> d!173561 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465))))) (dynLambda!2681 order!3911 lambda!13318))))

(declare-fun Forall!211 (Int) Bool)

(assert (=> d!173561 (= (semiInverseModEq!341 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465))))) (Forall!211 lambda!13318))))

(declare-fun bs!56297 () Bool)

(assert (= bs!56297 d!173561))

(declare-fun m!719943 () Bool)

(assert (=> bs!56297 m!719943))

(assert (=> d!173383 d!173561))

(declare-fun d!173563 () Bool)

(assert (=> d!173563 (= (isDefined!989 lt!202212) (not (isEmpty!3390 lt!202212)))))

(declare-fun bs!56298 () Bool)

(assert (= bs!56298 d!173563))

(assert (=> bs!56298 m!718915))

(assert (=> b!454486 d!173563))

(declare-fun b!455149 () Bool)

(declare-fun e!278544 () Bool)

(assert (=> b!455149 (= e!278544 (= (head!1109 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))) (c!91745 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))))))

(declare-fun b!455150 () Bool)

(declare-fun e!278539 () Bool)

(assert (=> b!455150 (= e!278539 (nullable!243 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202212))))))))

(declare-fun b!455151 () Bool)

(declare-fun res!202366 () Bool)

(declare-fun e!278542 () Bool)

(assert (=> b!455151 (=> res!202366 e!278542)))

(assert (=> b!455151 (= res!202366 e!278544)))

(declare-fun res!202370 () Bool)

(assert (=> b!455151 (=> (not res!202370) (not e!278544))))

(declare-fun lt!202474 () Bool)

(assert (=> b!455151 (= res!202370 lt!202474)))

(declare-fun b!455152 () Bool)

(declare-fun res!202363 () Bool)

(assert (=> b!455152 (=> (not res!202363) (not e!278544))))

(assert (=> b!455152 (= res!202363 (isEmpty!3386 (tail!637 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212)))))))))

(declare-fun b!455153 () Bool)

(declare-fun e!278545 () Bool)

(assert (=> b!455153 (= e!278545 (not lt!202474))))

(declare-fun b!455154 () Bool)

(declare-fun res!202365 () Bool)

(declare-fun e!278543 () Bool)

(assert (=> b!455154 (=> res!202365 e!278543)))

(assert (=> b!455154 (= res!202365 (not (isEmpty!3386 (tail!637 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))))))))

(declare-fun b!455155 () Bool)

(assert (=> b!455155 (= e!278543 (not (= (head!1109 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))) (c!91745 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202212))))))))))

(declare-fun b!455156 () Bool)

(declare-fun e!278540 () Bool)

(assert (=> b!455156 (= e!278540 e!278545)))

(declare-fun c!91926 () Bool)

(assert (=> b!455156 (= c!91926 ((_ is EmptyLang!1083) (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202212))))))))

(declare-fun b!455157 () Bool)

(declare-fun call!31529 () Bool)

(assert (=> b!455157 (= e!278540 (= lt!202474 call!31529))))

(declare-fun b!455159 () Bool)

(declare-fun e!278541 () Bool)

(assert (=> b!455159 (= e!278541 e!278543)))

(declare-fun res!202368 () Bool)

(assert (=> b!455159 (=> res!202368 e!278543)))

(assert (=> b!455159 (= res!202368 call!31529)))

(declare-fun b!455160 () Bool)

(assert (=> b!455160 (= e!278542 e!278541)))

(declare-fun res!202367 () Bool)

(assert (=> b!455160 (=> (not res!202367) (not e!278541))))

(assert (=> b!455160 (= res!202367 (not lt!202474))))

(declare-fun b!455161 () Bool)

(declare-fun res!202364 () Bool)

(assert (=> b!455161 (=> res!202364 e!278542)))

(assert (=> b!455161 (= res!202364 (not ((_ is ElementMatch!1083) (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))))))

(assert (=> b!455161 (= e!278545 e!278542)))

(declare-fun b!455158 () Bool)

(declare-fun res!202369 () Bool)

(assert (=> b!455158 (=> (not res!202369) (not e!278544))))

(assert (=> b!455158 (= res!202369 (not call!31529))))

(declare-fun d!173565 () Bool)

(assert (=> d!173565 e!278540))

(declare-fun c!91927 () Bool)

(assert (=> d!173565 (= c!91927 ((_ is EmptyExpr!1083) (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202212))))))))

(assert (=> d!173565 (= lt!202474 e!278539)))

(declare-fun c!91928 () Bool)

(assert (=> d!173565 (= c!91928 (isEmpty!3386 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))))))

(assert (=> d!173565 (validRegex!318 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))))

(assert (=> d!173565 (= (matchR!401 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))) lt!202474)))

(declare-fun b!455162 () Bool)

(assert (=> b!455162 (= e!278539 (matchR!401 (derivativeStep!210 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))) (head!1109 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212)))))) (tail!637 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212)))))))))

(declare-fun bm!31524 () Bool)

(assert (=> bm!31524 (= call!31529 (isEmpty!3386 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))))))

(assert (= (and d!173565 c!91928) b!455150))

(assert (= (and d!173565 (not c!91928)) b!455162))

(assert (= (and d!173565 c!91927) b!455157))

(assert (= (and d!173565 (not c!91927)) b!455156))

(assert (= (and b!455156 c!91926) b!455153))

(assert (= (and b!455156 (not c!91926)) b!455161))

(assert (= (and b!455161 (not res!202364)) b!455151))

(assert (= (and b!455151 res!202370) b!455158))

(assert (= (and b!455158 res!202369) b!455152))

(assert (= (and b!455152 res!202363) b!455149))

(assert (= (and b!455151 (not res!202366)) b!455160))

(assert (= (and b!455160 res!202367) b!455159))

(assert (= (and b!455159 (not res!202368)) b!455154))

(assert (= (and b!455154 (not res!202365)) b!455155))

(assert (= (or b!455157 b!455158 b!455159) bm!31524))

(assert (=> b!455155 m!718899))

(declare-fun m!719945 () Bool)

(assert (=> b!455155 m!719945))

(assert (=> b!455149 m!718899))

(assert (=> b!455149 m!719945))

(declare-fun m!719947 () Bool)

(assert (=> b!455150 m!719947))

(assert (=> b!455162 m!718899))

(assert (=> b!455162 m!719945))

(assert (=> b!455162 m!719945))

(declare-fun m!719949 () Bool)

(assert (=> b!455162 m!719949))

(assert (=> b!455162 m!718899))

(declare-fun m!719951 () Bool)

(assert (=> b!455162 m!719951))

(assert (=> b!455162 m!719949))

(assert (=> b!455162 m!719951))

(declare-fun m!719953 () Bool)

(assert (=> b!455162 m!719953))

(assert (=> d!173565 m!718899))

(declare-fun m!719955 () Bool)

(assert (=> d!173565 m!719955))

(declare-fun m!719957 () Bool)

(assert (=> d!173565 m!719957))

(assert (=> b!455154 m!718899))

(assert (=> b!455154 m!719951))

(assert (=> b!455154 m!719951))

(declare-fun m!719959 () Bool)

(assert (=> b!455154 m!719959))

(assert (=> bm!31524 m!718899))

(assert (=> bm!31524 m!719955))

(assert (=> b!455152 m!718899))

(assert (=> b!455152 m!719951))

(assert (=> b!455152 m!719951))

(assert (=> b!455152 m!719959))

(assert (=> b!454482 d!173565))

(declare-fun d!173567 () Bool)

(assert (=> d!173567 (= (get!1618 lt!202212) (v!15470 lt!202212))))

(assert (=> b!454482 d!173567))

(declare-fun d!173569 () Bool)

(assert (=> d!173569 (= (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212)))) (list!1962 (c!91744 (charsOf!502 (_1!2901 (get!1618 lt!202212))))))))

(declare-fun bs!56299 () Bool)

(assert (= bs!56299 d!173569))

(declare-fun m!719961 () Bool)

(assert (=> bs!56299 m!719961))

(assert (=> b!454482 d!173569))

(declare-fun d!173571 () Bool)

(declare-fun lt!202475 () BalanceConc!3088)

(assert (=> d!173571 (= (list!1959 lt!202475) (originalCharacters!902 (_1!2901 (get!1618 lt!202212))))))

(assert (=> d!173571 (= lt!202475 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212))))) (value!28797 (_1!2901 (get!1618 lt!202212)))))))

(assert (=> d!173571 (= (charsOf!502 (_1!2901 (get!1618 lt!202212))) lt!202475)))

(declare-fun b_lambda!18845 () Bool)

(assert (=> (not b_lambda!18845) (not d!173571)))

(declare-fun t!71231 () Bool)

(declare-fun tb!45611 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71231) tb!45611))

(declare-fun b!455163 () Bool)

(declare-fun e!278546 () Bool)

(declare-fun tp!126449 () Bool)

(assert (=> b!455163 (= e!278546 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212))))) (value!28797 (_1!2901 (get!1618 lt!202212)))))) tp!126449))))

(declare-fun result!50206 () Bool)

(assert (=> tb!45611 (= result!50206 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212))))) (value!28797 (_1!2901 (get!1618 lt!202212))))) e!278546))))

(assert (= tb!45611 b!455163))

(declare-fun m!719963 () Bool)

(assert (=> b!455163 m!719963))

(declare-fun m!719965 () Bool)

(assert (=> tb!45611 m!719965))

(assert (=> d!173571 t!71231))

(declare-fun b_and!48891 () Bool)

(assert (= b_and!48883 (and (=> t!71231 result!50206) b_and!48891)))

(declare-fun tb!45613 () Bool)

(declare-fun t!71233 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71233) tb!45613))

(declare-fun result!50208 () Bool)

(assert (= result!50208 result!50206))

(assert (=> d!173571 t!71233))

(declare-fun b_and!48893 () Bool)

(assert (= b_and!48885 (and (=> t!71233 result!50208) b_and!48893)))

(declare-fun tb!45615 () Bool)

(declare-fun t!71235 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71235) tb!45615))

(declare-fun result!50210 () Bool)

(assert (= result!50210 result!50206))

(assert (=> d!173571 t!71235))

(declare-fun b_and!48895 () Bool)

(assert (= b_and!48889 (and (=> t!71235 result!50210) b_and!48895)))

(declare-fun tb!45617 () Bool)

(declare-fun t!71237 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71237) tb!45617))

(declare-fun result!50212 () Bool)

(assert (= result!50212 result!50206))

(assert (=> d!173571 t!71237))

(declare-fun b_and!48897 () Bool)

(assert (= b_and!48887 (and (=> t!71237 result!50212) b_and!48897)))

(declare-fun t!71239 () Bool)

(declare-fun tb!45619 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71239) tb!45619))

(declare-fun result!50214 () Bool)

(assert (= result!50214 result!50206))

(assert (=> d!173571 t!71239))

(declare-fun b_and!48899 () Bool)

(assert (= b_and!48881 (and (=> t!71239 result!50214) b_and!48899)))

(declare-fun m!719967 () Bool)

(assert (=> d!173571 m!719967))

(declare-fun m!719969 () Bool)

(assert (=> d!173571 m!719969))

(assert (=> b!454482 d!173571))

(declare-fun b!455172 () Bool)

(declare-fun e!278551 () List!4431)

(assert (=> b!455172 (= e!278551 Nil!4421)))

(declare-fun b!455175 () Bool)

(declare-fun e!278552 () List!4431)

(assert (=> b!455175 (= e!278552 (++!1284 (list!1962 (left!3728 (c!91744 (charsOf!502 separatorToken!170)))) (list!1962 (right!4058 (c!91744 (charsOf!502 separatorToken!170))))))))

(declare-fun b!455174 () Bool)

(declare-fun list!1966 (IArray!3081) List!4431)

(assert (=> b!455174 (= e!278552 (list!1966 (xs!4171 (c!91744 (charsOf!502 separatorToken!170)))))))

(declare-fun b!455173 () Bool)

(assert (=> b!455173 (= e!278551 e!278552)))

(declare-fun c!91934 () Bool)

(assert (=> b!455173 (= c!91934 ((_ is Leaf!2309) (c!91744 (charsOf!502 separatorToken!170))))))

(declare-fun d!173573 () Bool)

(declare-fun c!91933 () Bool)

(assert (=> d!173573 (= c!91933 ((_ is Empty!1540) (c!91744 (charsOf!502 separatorToken!170))))))

(assert (=> d!173573 (= (list!1962 (c!91744 (charsOf!502 separatorToken!170))) e!278551)))

(assert (= (and d!173573 c!91933) b!455172))

(assert (= (and d!173573 (not c!91933)) b!455173))

(assert (= (and b!455173 c!91934) b!455174))

(assert (= (and b!455173 (not c!91934)) b!455175))

(declare-fun m!719971 () Bool)

(assert (=> b!455175 m!719971))

(declare-fun m!719973 () Bool)

(assert (=> b!455175 m!719973))

(assert (=> b!455175 m!719971))

(assert (=> b!455175 m!719973))

(declare-fun m!719975 () Bool)

(assert (=> b!455175 m!719975))

(declare-fun m!719977 () Bool)

(assert (=> b!455174 m!719977))

(assert (=> d!173377 d!173573))

(assert (=> d!173341 d!173319))

(declare-fun d!173575 () Bool)

(declare-fun lt!202476 () Int)

(assert (=> d!173575 (= lt!202476 (size!3626 (list!1963 (_1!2903 lt!202263))))))

(assert (=> d!173575 (= lt!202476 (size!3629 (c!91746 (_1!2903 lt!202263))))))

(assert (=> d!173575 (= (size!3622 (_1!2903 lt!202263)) lt!202476)))

(declare-fun bs!56300 () Bool)

(assert (= bs!56300 d!173575))

(declare-fun m!719979 () Bool)

(assert (=> bs!56300 m!719979))

(assert (=> bs!56300 m!719979))

(declare-fun m!719981 () Bool)

(assert (=> bs!56300 m!719981))

(declare-fun m!719983 () Bool)

(assert (=> bs!56300 m!719983))

(assert (=> d!173341 d!173575))

(declare-fun d!173577 () Bool)

(assert (=> d!173577 (= (list!1963 (singletonSeq!405 (h!9820 tokens!465))) (list!1964 (c!91746 (singletonSeq!405 (h!9820 tokens!465)))))))

(declare-fun bs!56301 () Bool)

(assert (= bs!56301 d!173577))

(declare-fun m!719985 () Bool)

(assert (=> bs!56301 m!719985))

(assert (=> d!173341 d!173577))

(declare-fun b!455176 () Bool)

(declare-fun res!202372 () Bool)

(declare-fun e!278554 () Bool)

(assert (=> b!455176 (=> (not res!202372) (not e!278554))))

(declare-fun lt!202477 () tuple2!5374)

(assert (=> b!455176 (= res!202372 (= (list!1963 (_1!2903 lt!202477)) (_1!2905 (lexList!291 thiss!17480 rules!1920 (list!1959 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465))))))))))

(declare-fun b!455177 () Bool)

(assert (=> b!455177 (= e!278554 (= (list!1959 (_2!2903 lt!202477)) (_2!2905 (lexList!291 thiss!17480 rules!1920 (list!1959 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465))))))))))

(declare-fun b!455178 () Bool)

(declare-fun e!278553 () Bool)

(assert (=> b!455178 (= e!278553 (not (isEmpty!3385 (_1!2903 lt!202477))))))

(declare-fun b!455179 () Bool)

(declare-fun e!278555 () Bool)

(assert (=> b!455179 (= e!278555 e!278553)))

(declare-fun res!202371 () Bool)

(assert (=> b!455179 (= res!202371 (< (size!3625 (_2!2903 lt!202477)) (size!3625 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465))))))))

(assert (=> b!455179 (=> (not res!202371) (not e!278553))))

(declare-fun b!455180 () Bool)

(assert (=> b!455180 (= e!278555 (= (_2!2903 lt!202477) (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)))))))

(declare-fun d!173579 () Bool)

(assert (=> d!173579 e!278554))

(declare-fun res!202373 () Bool)

(assert (=> d!173579 (=> (not res!202373) (not e!278554))))

(assert (=> d!173579 (= res!202373 e!278555)))

(declare-fun c!91935 () Bool)

(assert (=> d!173579 (= c!91935 (> (size!3622 (_1!2903 lt!202477)) 0))))

(assert (=> d!173579 (= lt!202477 (lexTailRecV2!256 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465))) (BalanceConc!3089 Empty!1540) (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465))) (BalanceConc!3091 Empty!1541)))))

(assert (=> d!173579 (= (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)))) lt!202477)))

(assert (= (and d!173579 c!91935) b!455179))

(assert (= (and d!173579 (not c!91935)) b!455180))

(assert (= (and b!455179 res!202371) b!455178))

(assert (= (and d!173579 res!202373) b!455176))

(assert (= (and b!455176 res!202372) b!455177))

(declare-fun m!719987 () Bool)

(assert (=> d!173579 m!719987))

(assert (=> d!173579 m!718769))

(assert (=> d!173579 m!718769))

(declare-fun m!719989 () Bool)

(assert (=> d!173579 m!719989))

(declare-fun m!719991 () Bool)

(assert (=> b!455177 m!719991))

(assert (=> b!455177 m!718769))

(declare-fun m!719993 () Bool)

(assert (=> b!455177 m!719993))

(assert (=> b!455177 m!719993))

(declare-fun m!719995 () Bool)

(assert (=> b!455177 m!719995))

(declare-fun m!719997 () Bool)

(assert (=> b!455179 m!719997))

(assert (=> b!455179 m!718769))

(declare-fun m!719999 () Bool)

(assert (=> b!455179 m!719999))

(declare-fun m!720001 () Bool)

(assert (=> b!455176 m!720001))

(assert (=> b!455176 m!718769))

(assert (=> b!455176 m!719993))

(assert (=> b!455176 m!719993))

(assert (=> b!455176 m!719995))

(declare-fun m!720003 () Bool)

(assert (=> b!455178 m!720003))

(assert (=> d!173341 d!173579))

(declare-fun d!173581 () Bool)

(assert (=> d!173581 (= (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)))))) (list!1964 (c!91746 (_1!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465))))))))))

(declare-fun bs!56302 () Bool)

(assert (= bs!56302 d!173581))

(declare-fun m!720005 () Bool)

(assert (=> bs!56302 m!720005))

(assert (=> d!173341 d!173581))

(assert (=> d!173341 d!173287))

(declare-fun d!173583 () Bool)

(declare-fun lt!202478 () BalanceConc!3088)

(assert (=> d!173583 (= (list!1959 lt!202478) (printList!419 thiss!17480 (list!1963 (singletonSeq!405 (h!9820 tokens!465)))))))

(assert (=> d!173583 (= lt!202478 (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)) 0 (BalanceConc!3089 Empty!1540)))))

(assert (=> d!173583 (= (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465))) lt!202478)))

(declare-fun bs!56303 () Bool)

(assert (= bs!56303 d!173583))

(declare-fun m!720007 () Bool)

(assert (=> bs!56303 m!720007))

(assert (=> bs!56303 m!718433))

(assert (=> bs!56303 m!719021))

(assert (=> bs!56303 m!719021))

(declare-fun m!720009 () Bool)

(assert (=> bs!56303 m!720009))

(assert (=> bs!56303 m!718433))

(assert (=> bs!56303 m!718771))

(assert (=> d!173341 d!173583))

(declare-fun d!173585 () Bool)

(declare-fun res!202374 () Bool)

(declare-fun e!278556 () Bool)

(assert (=> d!173585 (=> (not res!202374) (not e!278556))))

(assert (=> d!173585 (= res!202374 (not (isEmpty!3386 (originalCharacters!902 (h!9820 (t!71133 tokens!465))))))))

(assert (=> d!173585 (= (inv!5496 (h!9820 (t!71133 tokens!465))) e!278556)))

(declare-fun b!455181 () Bool)

(declare-fun res!202375 () Bool)

(assert (=> b!455181 (=> (not res!202375) (not e!278556))))

(assert (=> b!455181 (= res!202375 (= (originalCharacters!902 (h!9820 (t!71133 tokens!465))) (list!1959 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (value!28797 (h!9820 (t!71133 tokens!465)))))))))

(declare-fun b!455182 () Bool)

(assert (=> b!455182 (= e!278556 (= (size!3619 (h!9820 (t!71133 tokens!465))) (size!3623 (originalCharacters!902 (h!9820 (t!71133 tokens!465))))))))

(assert (= (and d!173585 res!202374) b!455181))

(assert (= (and b!455181 res!202375) b!455182))

(declare-fun b_lambda!18847 () Bool)

(assert (=> (not b_lambda!18847) (not b!455181)))

(declare-fun t!71242 () Bool)

(declare-fun tb!45621 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) t!71242) tb!45621))

(declare-fun b!455183 () Bool)

(declare-fun e!278557 () Bool)

(declare-fun tp!126450 () Bool)

(assert (=> b!455183 (= e!278557 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (value!28797 (h!9820 (t!71133 tokens!465)))))) tp!126450))))

(declare-fun result!50216 () Bool)

(assert (=> tb!45621 (= result!50216 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (value!28797 (h!9820 (t!71133 tokens!465))))) e!278557))))

(assert (= tb!45621 b!455183))

(declare-fun m!720011 () Bool)

(assert (=> b!455183 m!720011))

(declare-fun m!720013 () Bool)

(assert (=> tb!45621 m!720013))

(assert (=> b!455181 t!71242))

(declare-fun b_and!48901 () Bool)

(assert (= b_and!48891 (and (=> t!71242 result!50216) b_and!48901)))

(declare-fun tb!45623 () Bool)

(declare-fun t!71244 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) t!71244) tb!45623))

(declare-fun result!50218 () Bool)

(assert (= result!50218 result!50216))

(assert (=> b!455181 t!71244))

(declare-fun b_and!48903 () Bool)

(assert (= b_and!48895 (and (=> t!71244 result!50218) b_and!48903)))

(declare-fun t!71246 () Bool)

(declare-fun tb!45625 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) t!71246) tb!45625))

(declare-fun result!50220 () Bool)

(assert (= result!50220 result!50216))

(assert (=> b!455181 t!71246))

(declare-fun b_and!48905 () Bool)

(assert (= b_and!48897 (and (=> t!71246 result!50220) b_and!48905)))

(declare-fun t!71248 () Bool)

(declare-fun tb!45627 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) t!71248) tb!45627))

(declare-fun result!50222 () Bool)

(assert (= result!50222 result!50216))

(assert (=> b!455181 t!71248))

(declare-fun b_and!48907 () Bool)

(assert (= b_and!48893 (and (=> t!71248 result!50222) b_and!48907)))

(declare-fun tb!45629 () Bool)

(declare-fun t!71250 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) t!71250) tb!45629))

(declare-fun result!50224 () Bool)

(assert (= result!50224 result!50216))

(assert (=> b!455181 t!71250))

(declare-fun b_and!48909 () Bool)

(assert (= b_and!48899 (and (=> t!71250 result!50224) b_and!48909)))

(declare-fun m!720015 () Bool)

(assert (=> d!173585 m!720015))

(declare-fun m!720017 () Bool)

(assert (=> b!455181 m!720017))

(assert (=> b!455181 m!720017))

(declare-fun m!720019 () Bool)

(assert (=> b!455181 m!720019))

(declare-fun m!720021 () Bool)

(assert (=> b!455182 m!720021))

(assert (=> b!454999 d!173585))

(declare-fun b!455184 () Bool)

(declare-fun e!278559 () List!4431)

(assert (=> b!455184 (= e!278559 lt!202159)))

(declare-fun d!173587 () Bool)

(declare-fun e!278558 () Bool)

(assert (=> d!173587 e!278558))

(declare-fun res!202376 () Bool)

(assert (=> d!173587 (=> (not res!202376) (not e!278558))))

(declare-fun lt!202479 () List!4431)

(assert (=> d!173587 (= res!202376 (= (content!737 lt!202479) ((_ map or) (content!737 call!31452) (content!737 lt!202159))))))

(assert (=> d!173587 (= lt!202479 e!278559)))

(declare-fun c!91936 () Bool)

(assert (=> d!173587 (= c!91936 ((_ is Nil!4421) call!31452))))

(assert (=> d!173587 (= (++!1284 call!31452 lt!202159) lt!202479)))

(declare-fun b!455186 () Bool)

(declare-fun res!202377 () Bool)

(assert (=> b!455186 (=> (not res!202377) (not e!278558))))

(assert (=> b!455186 (= res!202377 (= (size!3623 lt!202479) (+ (size!3623 call!31452) (size!3623 lt!202159))))))

(declare-fun b!455187 () Bool)

(assert (=> b!455187 (= e!278558 (or (not (= lt!202159 Nil!4421)) (= lt!202479 call!31452)))))

(declare-fun b!455185 () Bool)

(assert (=> b!455185 (= e!278559 (Cons!4421 (h!9818 call!31452) (++!1284 (t!71131 call!31452) lt!202159)))))

(assert (= (and d!173587 c!91936) b!455184))

(assert (= (and d!173587 (not c!91936)) b!455185))

(assert (= (and d!173587 res!202376) b!455186))

(assert (= (and b!455186 res!202377) b!455187))

(declare-fun m!720023 () Bool)

(assert (=> d!173587 m!720023))

(declare-fun m!720025 () Bool)

(assert (=> d!173587 m!720025))

(declare-fun m!720027 () Bool)

(assert (=> d!173587 m!720027))

(declare-fun m!720029 () Bool)

(assert (=> b!455186 m!720029))

(declare-fun m!720031 () Bool)

(assert (=> b!455186 m!720031))

(declare-fun m!720033 () Bool)

(assert (=> b!455186 m!720033))

(declare-fun m!720035 () Bool)

(assert (=> b!455185 m!720035))

(assert (=> b!454401 d!173587))

(declare-fun d!173589 () Bool)

(assert (=> d!173589 (= (list!1963 lt!202198) (list!1964 (c!91746 lt!202198)))))

(declare-fun bs!56304 () Bool)

(assert (= bs!56304 d!173589))

(declare-fun m!720037 () Bool)

(assert (=> bs!56304 m!720037))

(assert (=> d!173319 d!173589))

(declare-fun d!173591 () Bool)

(declare-fun e!278562 () Bool)

(assert (=> d!173591 e!278562))

(declare-fun res!202380 () Bool)

(assert (=> d!173591 (=> (not res!202380) (not e!278562))))

(declare-fun lt!202482 () BalanceConc!3090)

(assert (=> d!173591 (= res!202380 (= (list!1963 lt!202482) (Cons!4423 (h!9820 tokens!465) Nil!4423)))))

(declare-fun choose!3435 (Token!1462) BalanceConc!3090)

(assert (=> d!173591 (= lt!202482 (choose!3435 (h!9820 tokens!465)))))

(assert (=> d!173591 (= (singleton!194 (h!9820 tokens!465)) lt!202482)))

(declare-fun b!455190 () Bool)

(assert (=> b!455190 (= e!278562 (isBalanced!471 (c!91746 lt!202482)))))

(assert (= (and d!173591 res!202380) b!455190))

(declare-fun m!720039 () Bool)

(assert (=> d!173591 m!720039))

(declare-fun m!720041 () Bool)

(assert (=> d!173591 m!720041))

(declare-fun m!720043 () Bool)

(assert (=> b!455190 m!720043))

(assert (=> d!173319 d!173591))

(declare-fun d!173593 () Bool)

(assert (=> d!173593 (= (isEmpty!3384 (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023))))) ((_ is Nil!4423) (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023))))))))

(assert (=> d!173393 d!173593))

(declare-fun d!173595 () Bool)

(assert (=> d!173595 (= (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023)))) (list!1964 (c!91746 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023))))))))

(declare-fun bs!56305 () Bool)

(assert (= bs!56305 d!173595))

(declare-fun m!720045 () Bool)

(assert (=> bs!56305 m!720045))

(assert (=> d!173393 d!173595))

(declare-fun d!173597 () Bool)

(declare-fun lt!202485 () Bool)

(assert (=> d!173597 (= lt!202485 (isEmpty!3384 (list!1964 (c!91746 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023)))))))))

(assert (=> d!173597 (= lt!202485 (= (size!3629 (c!91746 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023))))) 0))))

(assert (=> d!173597 (= (isEmpty!3393 (c!91746 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 lt!202023))))) lt!202485)))

(declare-fun bs!56306 () Bool)

(assert (= bs!56306 d!173597))

(assert (=> bs!56306 m!720045))

(assert (=> bs!56306 m!720045))

(declare-fun m!720047 () Bool)

(assert (=> bs!56306 m!720047))

(declare-fun m!720049 () Bool)

(assert (=> bs!56306 m!720049))

(assert (=> d!173393 d!173597))

(declare-fun d!173599 () Bool)

(assert (=> d!173599 (= (list!1959 lt!202298) (list!1962 (c!91744 lt!202298)))))

(declare-fun bs!56307 () Bool)

(assert (= bs!56307 d!173599))

(declare-fun m!720051 () Bool)

(assert (=> bs!56307 m!720051))

(assert (=> d!173371 d!173599))

(declare-fun d!173601 () Bool)

(declare-fun lt!202488 () Int)

(assert (=> d!173601 (= lt!202488 (size!3623 (list!1959 (_2!2903 lt!202329))))))

(declare-fun size!3630 (Conc!1540) Int)

(assert (=> d!173601 (= lt!202488 (size!3630 (c!91744 (_2!2903 lt!202329))))))

(assert (=> d!173601 (= (size!3625 (_2!2903 lt!202329)) lt!202488)))

(declare-fun bs!56308 () Bool)

(assert (= bs!56308 d!173601))

(assert (=> bs!56308 m!719281))

(assert (=> bs!56308 m!719281))

(declare-fun m!720053 () Bool)

(assert (=> bs!56308 m!720053))

(declare-fun m!720055 () Bool)

(assert (=> bs!56308 m!720055))

(assert (=> b!454687 d!173601))

(declare-fun d!173603 () Bool)

(declare-fun lt!202489 () Int)

(assert (=> d!173603 (= lt!202489 (size!3623 (list!1959 (seqFromList!1084 lt!202023))))))

(assert (=> d!173603 (= lt!202489 (size!3630 (c!91744 (seqFromList!1084 lt!202023))))))

(assert (=> d!173603 (= (size!3625 (seqFromList!1084 lt!202023)) lt!202489)))

(declare-fun bs!56309 () Bool)

(assert (= bs!56309 d!173603))

(assert (=> bs!56309 m!718497))

(assert (=> bs!56309 m!719283))

(assert (=> bs!56309 m!719283))

(declare-fun m!720057 () Bool)

(assert (=> bs!56309 m!720057))

(declare-fun m!720059 () Bool)

(assert (=> bs!56309 m!720059))

(assert (=> b!454687 d!173603))

(declare-fun b!455191 () Bool)

(declare-fun e!278563 () List!4431)

(assert (=> b!455191 (= e!278563 Nil!4421)))

(declare-fun b!455194 () Bool)

(declare-fun e!278564 () List!4431)

(assert (=> b!455194 (= e!278564 (++!1284 (list!1962 (left!3728 (c!91744 lt!202028))) (list!1962 (right!4058 (c!91744 lt!202028)))))))

(declare-fun b!455193 () Bool)

(assert (=> b!455193 (= e!278564 (list!1966 (xs!4171 (c!91744 lt!202028))))))

(declare-fun b!455192 () Bool)

(assert (=> b!455192 (= e!278563 e!278564)))

(declare-fun c!91938 () Bool)

(assert (=> b!455192 (= c!91938 ((_ is Leaf!2309) (c!91744 lt!202028)))))

(declare-fun d!173605 () Bool)

(declare-fun c!91937 () Bool)

(assert (=> d!173605 (= c!91937 ((_ is Empty!1540) (c!91744 lt!202028)))))

(assert (=> d!173605 (= (list!1962 (c!91744 lt!202028)) e!278563)))

(assert (= (and d!173605 c!91937) b!455191))

(assert (= (and d!173605 (not c!91937)) b!455192))

(assert (= (and b!455192 c!91938) b!455193))

(assert (= (and b!455192 (not c!91938)) b!455194))

(declare-fun m!720061 () Bool)

(assert (=> b!455194 m!720061))

(declare-fun m!720063 () Bool)

(assert (=> b!455194 m!720063))

(assert (=> b!455194 m!720061))

(assert (=> b!455194 m!720063))

(declare-fun m!720065 () Bool)

(assert (=> b!455194 m!720065))

(declare-fun m!720067 () Bool)

(assert (=> b!455193 m!720067))

(assert (=> d!173315 d!173605))

(declare-fun d!173607 () Bool)

(declare-fun lt!202492 () Int)

(assert (=> d!173607 (>= lt!202492 0)))

(declare-fun e!278567 () Int)

(assert (=> d!173607 (= lt!202492 e!278567)))

(declare-fun c!91941 () Bool)

(assert (=> d!173607 (= c!91941 ((_ is Nil!4421) (_2!2901 (get!1618 lt!202304))))))

(assert (=> d!173607 (= (size!3623 (_2!2901 (get!1618 lt!202304))) lt!202492)))

(declare-fun b!455199 () Bool)

(assert (=> b!455199 (= e!278567 0)))

(declare-fun b!455200 () Bool)

(assert (=> b!455200 (= e!278567 (+ 1 (size!3623 (t!71131 (_2!2901 (get!1618 lt!202304))))))))

(assert (= (and d!173607 c!91941) b!455199))

(assert (= (and d!173607 (not c!91941)) b!455200))

(declare-fun m!720069 () Bool)

(assert (=> b!455200 m!720069))

(assert (=> b!454647 d!173607))

(declare-fun d!173609 () Bool)

(assert (=> d!173609 (= (get!1618 lt!202304) (v!15470 lt!202304))))

(assert (=> b!454647 d!173609))

(declare-fun d!173611 () Bool)

(declare-fun lt!202493 () Int)

(assert (=> d!173611 (>= lt!202493 0)))

(declare-fun e!278568 () Int)

(assert (=> d!173611 (= lt!202493 e!278568)))

(declare-fun c!91942 () Bool)

(assert (=> d!173611 (= c!91942 ((_ is Nil!4421) lt!202016))))

(assert (=> d!173611 (= (size!3623 lt!202016) lt!202493)))

(declare-fun b!455201 () Bool)

(assert (=> b!455201 (= e!278568 0)))

(declare-fun b!455202 () Bool)

(assert (=> b!455202 (= e!278568 (+ 1 (size!3623 (t!71131 lt!202016))))))

(assert (= (and d!173611 c!91942) b!455201))

(assert (= (and d!173611 (not c!91942)) b!455202))

(declare-fun m!720071 () Bool)

(assert (=> b!455202 m!720071))

(assert (=> b!454647 d!173611))

(declare-fun d!173613 () Bool)

(declare-fun lt!202494 () Token!1462)

(assert (=> d!173613 (= lt!202494 (apply!1131 (list!1963 lt!202020) 0))))

(assert (=> d!173613 (= lt!202494 (apply!1133 (c!91746 lt!202020) 0))))

(declare-fun e!278569 () Bool)

(assert (=> d!173613 e!278569))

(declare-fun res!202381 () Bool)

(assert (=> d!173613 (=> (not res!202381) (not e!278569))))

(assert (=> d!173613 (= res!202381 (<= 0 0))))

(assert (=> d!173613 (= (apply!1130 lt!202020 0) lt!202494)))

(declare-fun b!455203 () Bool)

(assert (=> b!455203 (= e!278569 (< 0 (size!3622 lt!202020)))))

(assert (= (and d!173613 res!202381) b!455203))

(assert (=> d!173613 m!719143))

(assert (=> d!173613 m!719143))

(declare-fun m!720073 () Bool)

(assert (=> d!173613 m!720073))

(declare-fun m!720075 () Bool)

(assert (=> d!173613 m!720075))

(assert (=> b!455203 m!719165))

(assert (=> bm!31477 d!173613))

(declare-fun d!173615 () Bool)

(declare-fun res!202382 () Bool)

(declare-fun e!278570 () Bool)

(assert (=> d!173615 (=> res!202382 e!278570)))

(assert (=> d!173615 (= res!202382 (not ((_ is Cons!4422) (t!71132 rules!1920))))))

(assert (=> d!173615 (= (sepAndNonSepRulesDisjointChars!448 rules!1920 (t!71132 rules!1920)) e!278570)))

(declare-fun b!455204 () Bool)

(declare-fun e!278571 () Bool)

(assert (=> b!455204 (= e!278570 e!278571)))

(declare-fun res!202383 () Bool)

(assert (=> b!455204 (=> (not res!202383) (not e!278571))))

(assert (=> b!455204 (= res!202383 (ruleDisjointCharsFromAllFromOtherType!198 (h!9819 (t!71132 rules!1920)) rules!1920))))

(declare-fun b!455205 () Bool)

(assert (=> b!455205 (= e!278571 (sepAndNonSepRulesDisjointChars!448 rules!1920 (t!71132 (t!71132 rules!1920))))))

(assert (= (and d!173615 (not res!202382)) b!455204))

(assert (= (and b!455204 res!202383) b!455205))

(declare-fun m!720077 () Bool)

(assert (=> b!455204 m!720077))

(declare-fun m!720079 () Bool)

(assert (=> b!455205 m!720079))

(assert (=> b!454413 d!173615))

(declare-fun d!173617 () Bool)

(assert (=> d!173617 (= (list!1959 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465)))) (list!1962 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465))))))))

(declare-fun bs!56310 () Bool)

(assert (= bs!56310 d!173617))

(declare-fun m!720081 () Bool)

(assert (=> bs!56310 m!720081))

(assert (=> b!454639 d!173617))

(assert (=> bs!56272 d!173341))

(declare-fun d!173619 () Bool)

(declare-fun res!202384 () Bool)

(declare-fun e!278572 () Bool)

(assert (=> d!173619 (=> res!202384 e!278572)))

(assert (=> d!173619 (= res!202384 ((_ is Nil!4423) (t!71133 tokens!465)))))

(assert (=> d!173619 (= (forall!1280 (t!71133 tokens!465) lambda!13277) e!278572)))

(declare-fun b!455206 () Bool)

(declare-fun e!278573 () Bool)

(assert (=> b!455206 (= e!278572 e!278573)))

(declare-fun res!202385 () Bool)

(assert (=> b!455206 (=> (not res!202385) (not e!278573))))

(assert (=> b!455206 (= res!202385 (dynLambda!2680 lambda!13277 (h!9820 (t!71133 tokens!465))))))

(declare-fun b!455207 () Bool)

(assert (=> b!455207 (= e!278573 (forall!1280 (t!71133 (t!71133 tokens!465)) lambda!13277))))

(assert (= (and d!173619 (not res!202384)) b!455206))

(assert (= (and b!455206 res!202385) b!455207))

(declare-fun b_lambda!18849 () Bool)

(assert (=> (not b_lambda!18849) (not b!455206)))

(declare-fun m!720083 () Bool)

(assert (=> b!455206 m!720083))

(declare-fun m!720085 () Bool)

(assert (=> b!455207 m!720085))

(assert (=> b!454974 d!173619))

(declare-fun d!173621 () Bool)

(assert (=> d!173621 (= (list!1959 (ite c!91782 call!31454 call!31450)) (list!1962 (c!91744 (ite c!91782 call!31454 call!31450))))))

(declare-fun bs!56311 () Bool)

(assert (= bs!56311 d!173621))

(declare-fun m!720087 () Bool)

(assert (=> bs!56311 m!720087))

(assert (=> bm!31447 d!173621))

(declare-fun d!173623 () Bool)

(declare-fun c!91945 () Bool)

(assert (=> d!173623 (= c!91945 ((_ is Nil!4421) lt!202330))))

(declare-fun e!278576 () (InoxSet C!3088))

(assert (=> d!173623 (= (content!737 lt!202330) e!278576)))

(declare-fun b!455212 () Bool)

(assert (=> b!455212 (= e!278576 ((as const (Array C!3088 Bool)) false))))

(declare-fun b!455213 () Bool)

(assert (=> b!455213 (= e!278576 ((_ map or) (store ((as const (Array C!3088 Bool)) false) (h!9818 lt!202330) true) (content!737 (t!71131 lt!202330))))))

(assert (= (and d!173623 c!91945) b!455212))

(assert (= (and d!173623 (not c!91945)) b!455213))

(declare-fun m!720089 () Bool)

(assert (=> b!455213 m!720089))

(declare-fun m!720091 () Bool)

(assert (=> b!455213 m!720091))

(assert (=> d!173399 d!173623))

(declare-fun d!173625 () Bool)

(declare-fun c!91946 () Bool)

(assert (=> d!173625 (= c!91946 ((_ is Nil!4421) lt!202023))))

(declare-fun e!278577 () (InoxSet C!3088))

(assert (=> d!173625 (= (content!737 lt!202023) e!278577)))

(declare-fun b!455214 () Bool)

(assert (=> b!455214 (= e!278577 ((as const (Array C!3088 Bool)) false))))

(declare-fun b!455215 () Bool)

(assert (=> b!455215 (= e!278577 ((_ map or) (store ((as const (Array C!3088 Bool)) false) (h!9818 lt!202023) true) (content!737 (t!71131 lt!202023))))))

(assert (= (and d!173625 c!91946) b!455214))

(assert (= (and d!173625 (not c!91946)) b!455215))

(declare-fun m!720093 () Bool)

(assert (=> b!455215 m!720093))

(assert (=> b!455215 m!719929))

(assert (=> d!173399 d!173625))

(declare-fun d!173627 () Bool)

(declare-fun c!91947 () Bool)

(assert (=> d!173627 (= c!91947 ((_ is Nil!4421) lt!202021))))

(declare-fun e!278578 () (InoxSet C!3088))

(assert (=> d!173627 (= (content!737 lt!202021) e!278578)))

(declare-fun b!455216 () Bool)

(assert (=> b!455216 (= e!278578 ((as const (Array C!3088 Bool)) false))))

(declare-fun b!455217 () Bool)

(assert (=> b!455217 (= e!278578 ((_ map or) (store ((as const (Array C!3088 Bool)) false) (h!9818 lt!202021) true) (content!737 (t!71131 lt!202021))))))

(assert (= (and d!173627 c!91947) b!455216))

(assert (= (and d!173627 (not c!91947)) b!455217))

(declare-fun m!720095 () Bool)

(assert (=> b!455217 m!720095))

(declare-fun m!720097 () Bool)

(assert (=> b!455217 m!720097))

(assert (=> d!173399 d!173627))

(assert (=> b!454643 d!173609))

(declare-fun d!173629 () Bool)

(declare-fun dynLambda!2682 (Int BalanceConc!3088) TokenValue!881)

(assert (=> d!173629 (= (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202304))))) (dynLambda!2682 (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304))))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202304))))))))

(declare-fun b_lambda!18851 () Bool)

(assert (=> (not b_lambda!18851) (not d!173629)))

(declare-fun t!71254 () Bool)

(declare-fun tb!45631 () Bool)

(assert (=> (and b!455002 (= (toValue!1674 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71254) tb!45631))

(declare-fun result!50226 () Bool)

(assert (=> tb!45631 (= result!50226 (inv!21 (dynLambda!2682 (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304))))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202304)))))))))

(declare-fun m!720099 () Bool)

(assert (=> tb!45631 m!720099))

(assert (=> d!173629 t!71254))

(declare-fun b_and!48911 () Bool)

(assert (= b_and!48853 (and (=> t!71254 result!50226) b_and!48911)))

(declare-fun tb!45633 () Bool)

(declare-fun t!71256 () Bool)

(assert (=> (and b!455013 (= (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71256) tb!45633))

(declare-fun result!50230 () Bool)

(assert (= result!50230 result!50226))

(assert (=> d!173629 t!71256))

(declare-fun b_and!48913 () Bool)

(assert (= b_and!48857 (and (=> t!71256 result!50230) b_and!48913)))

(declare-fun tb!45635 () Bool)

(declare-fun t!71258 () Bool)

(assert (=> (and b!454228 (= (toValue!1674 (transformation!859 (rule!1550 separatorToken!170))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71258) tb!45635))

(declare-fun result!50232 () Bool)

(assert (= result!50232 result!50226))

(assert (=> d!173629 t!71258))

(declare-fun b_and!48915 () Bool)

(assert (= b_and!48793 (and (=> t!71258 result!50232) b_and!48915)))

(declare-fun t!71260 () Bool)

(declare-fun tb!45637 () Bool)

(assert (=> (and b!454224 (= (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71260) tb!45637))

(declare-fun result!50234 () Bool)

(assert (= result!50234 result!50226))

(assert (=> d!173629 t!71260))

(declare-fun b_and!48917 () Bool)

(assert (= b_and!48789 (and (=> t!71260 result!50234) b_and!48917)))

(declare-fun tb!45639 () Bool)

(declare-fun t!71262 () Bool)

(assert (=> (and b!454206 (= (toValue!1674 (transformation!859 (h!9819 rules!1920))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71262) tb!45639))

(declare-fun result!50236 () Bool)

(assert (= result!50236 result!50226))

(assert (=> d!173629 t!71262))

(declare-fun b_and!48919 () Bool)

(assert (= b_and!48785 (and (=> t!71262 result!50236) b_and!48919)))

(assert (=> d!173629 m!719253))

(declare-fun m!720101 () Bool)

(assert (=> d!173629 m!720101))

(assert (=> b!454643 d!173629))

(declare-fun d!173631 () Bool)

(assert (=> d!173631 (= (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202304)))) (fromListB!482 (originalCharacters!902 (_1!2901 (get!1618 lt!202304)))))))

(declare-fun bs!56312 () Bool)

(assert (= bs!56312 d!173631))

(declare-fun m!720103 () Bool)

(assert (=> bs!56312 m!720103))

(assert (=> b!454643 d!173631))

(declare-fun e!278582 () Bool)

(declare-fun lt!202495 () BalanceConc!3088)

(declare-fun b!455223 () Bool)

(assert (=> b!455223 (= e!278582 (= (list!1959 lt!202495) (++!1284 (list!1959 e!278197) (list!1959 (ite c!91833 lt!202284 call!31478)))))))

(declare-fun b!455221 () Bool)

(declare-fun res!202386 () Bool)

(assert (=> b!455221 (=> (not res!202386) (not e!278582))))

(assert (=> b!455221 (= res!202386 (<= (height!233 (++!1287 (c!91744 e!278197) (c!91744 (ite c!91833 lt!202284 call!31478)))) (+ (max!0 (height!233 (c!91744 e!278197)) (height!233 (c!91744 (ite c!91833 lt!202284 call!31478)))) 1)))))

(declare-fun d!173633 () Bool)

(assert (=> d!173633 e!278582))

(declare-fun res!202388 () Bool)

(assert (=> d!173633 (=> (not res!202388) (not e!278582))))

(assert (=> d!173633 (= res!202388 (appendAssocInst!102 (c!91744 e!278197) (c!91744 (ite c!91833 lt!202284 call!31478))))))

(assert (=> d!173633 (= lt!202495 (BalanceConc!3089 (++!1287 (c!91744 e!278197) (c!91744 (ite c!91833 lt!202284 call!31478)))))))

(assert (=> d!173633 (= (++!1286 e!278197 (ite c!91833 lt!202284 call!31478)) lt!202495)))

(declare-fun b!455222 () Bool)

(declare-fun res!202389 () Bool)

(assert (=> b!455222 (=> (not res!202389) (not e!278582))))

(assert (=> b!455222 (= res!202389 (>= (height!233 (++!1287 (c!91744 e!278197) (c!91744 (ite c!91833 lt!202284 call!31478)))) (max!0 (height!233 (c!91744 e!278197)) (height!233 (c!91744 (ite c!91833 lt!202284 call!31478))))))))

(declare-fun b!455220 () Bool)

(declare-fun res!202387 () Bool)

(assert (=> b!455220 (=> (not res!202387) (not e!278582))))

(assert (=> b!455220 (= res!202387 (isBalanced!472 (++!1287 (c!91744 e!278197) (c!91744 (ite c!91833 lt!202284 call!31478)))))))

(assert (= (and d!173633 res!202388) b!455220))

(assert (= (and b!455220 res!202387) b!455221))

(assert (= (and b!455221 res!202386) b!455222))

(assert (= (and b!455222 res!202389) b!455223))

(declare-fun m!720105 () Bool)

(assert (=> b!455221 m!720105))

(declare-fun m!720107 () Bool)

(assert (=> b!455221 m!720107))

(declare-fun m!720109 () Bool)

(assert (=> b!455221 m!720109))

(declare-fun m!720111 () Bool)

(assert (=> b!455221 m!720111))

(declare-fun m!720113 () Bool)

(assert (=> b!455221 m!720113))

(assert (=> b!455221 m!720105))

(assert (=> b!455221 m!720111))

(assert (=> b!455221 m!720107))

(declare-fun m!720115 () Bool)

(assert (=> b!455223 m!720115))

(declare-fun m!720117 () Bool)

(assert (=> b!455223 m!720117))

(declare-fun m!720119 () Bool)

(assert (=> b!455223 m!720119))

(assert (=> b!455223 m!720117))

(assert (=> b!455223 m!720119))

(declare-fun m!720121 () Bool)

(assert (=> b!455223 m!720121))

(assert (=> b!455220 m!720111))

(assert (=> b!455220 m!720111))

(declare-fun m!720123 () Bool)

(assert (=> b!455220 m!720123))

(assert (=> b!455222 m!720105))

(assert (=> b!455222 m!720107))

(assert (=> b!455222 m!720109))

(assert (=> b!455222 m!720111))

(assert (=> b!455222 m!720113))

(assert (=> b!455222 m!720105))

(assert (=> b!455222 m!720111))

(assert (=> b!455222 m!720107))

(declare-fun m!720125 () Bool)

(assert (=> d!173633 m!720125))

(assert (=> d!173633 m!720111))

(assert (=> bm!31475 d!173633))

(declare-fun d!173635 () Bool)

(assert (=> d!173635 (= (isEmpty!3386 lt!202023) ((_ is Nil!4421) lt!202023))))

(assert (=> bm!31510 d!173635))

(declare-fun b!455224 () Bool)

(declare-fun e!278584 () List!4431)

(assert (=> b!455224 (= e!278584 lt!202021)))

(declare-fun d!173637 () Bool)

(declare-fun e!278583 () Bool)

(assert (=> d!173637 e!278583))

(declare-fun res!202390 () Bool)

(assert (=> d!173637 (=> (not res!202390) (not e!278583))))

(declare-fun lt!202496 () List!4431)

(assert (=> d!173637 (= res!202390 (= (content!737 lt!202496) ((_ map or) (content!737 (t!71131 lt!202032)) (content!737 lt!202021))))))

(assert (=> d!173637 (= lt!202496 e!278584)))

(declare-fun c!91948 () Bool)

(assert (=> d!173637 (= c!91948 ((_ is Nil!4421) (t!71131 lt!202032)))))

(assert (=> d!173637 (= (++!1284 (t!71131 lt!202032) lt!202021) lt!202496)))

(declare-fun b!455226 () Bool)

(declare-fun res!202391 () Bool)

(assert (=> b!455226 (=> (not res!202391) (not e!278583))))

(assert (=> b!455226 (= res!202391 (= (size!3623 lt!202496) (+ (size!3623 (t!71131 lt!202032)) (size!3623 lt!202021))))))

(declare-fun b!455227 () Bool)

(assert (=> b!455227 (= e!278583 (or (not (= lt!202021 Nil!4421)) (= lt!202496 (t!71131 lt!202032))))))

(declare-fun b!455225 () Bool)

(assert (=> b!455225 (= e!278584 (Cons!4421 (h!9818 (t!71131 lt!202032)) (++!1284 (t!71131 (t!71131 lt!202032)) lt!202021)))))

(assert (= (and d!173637 c!91948) b!455224))

(assert (= (and d!173637 (not c!91948)) b!455225))

(assert (= (and d!173637 res!202390) b!455226))

(assert (= (and b!455226 res!202391) b!455227))

(declare-fun m!720127 () Bool)

(assert (=> d!173637 m!720127))

(declare-fun m!720129 () Bool)

(assert (=> d!173637 m!720129))

(assert (=> d!173637 m!719121))

(declare-fun m!720131 () Bool)

(assert (=> b!455226 m!720131))

(declare-fun m!720133 () Bool)

(assert (=> b!455226 m!720133))

(assert (=> b!455226 m!719127))

(declare-fun m!720135 () Bool)

(assert (=> b!455225 m!720135))

(assert (=> b!454635 d!173637))

(declare-fun d!173639 () Bool)

(assert (=> d!173639 (= (get!1620 lt!202401) (v!15471 lt!202401))))

(assert (=> b!454962 d!173639))

(declare-fun d!173641 () Bool)

(assert (=> d!173641 (= (get!1618 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))) (v!15470 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))

(assert (=> b!454962 d!173641))

(declare-fun lt!202507 () Option!1150)

(declare-fun d!173643 () Bool)

(assert (=> d!173643 (= lt!202507 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))

(declare-fun e!278587 () Option!1150)

(assert (=> d!173643 (= lt!202507 e!278587)))

(declare-fun c!91951 () Bool)

(assert (=> d!173643 (= c!91951 (and ((_ is Cons!4422) rules!1920) ((_ is Nil!4422) (t!71132 rules!1920))))))

(declare-fun lt!202508 () Unit!7961)

(declare-fun lt!202511 () Unit!7961)

(assert (=> d!173643 (= lt!202508 lt!202511)))

(assert (=> d!173643 (isPrefix!513 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (=> d!173643 (= lt!202511 (lemmaIsPrefixRefl!287 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))

(assert (=> d!173643 (rulesValidInductive!282 thiss!17480 rules!1920)))

(assert (=> d!173643 (= (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))) lt!202507)))

(declare-fun bm!31527 () Bool)

(declare-fun call!31532 () Option!1150)

(declare-fun maxPrefixOneRuleZipper!72 (LexerInterface!745 Rule!1518 List!4431) Option!1150)

(assert (=> bm!31527 (= call!31532 (maxPrefixOneRuleZipper!72 thiss!17480 (h!9819 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))

(declare-fun b!455232 () Bool)

(assert (=> b!455232 (= e!278587 call!31532)))

(declare-fun b!455233 () Bool)

(declare-fun lt!202509 () Option!1150)

(declare-fun lt!202510 () Option!1150)

(assert (=> b!455233 (= e!278587 (ite (and ((_ is None!1149) lt!202509) ((_ is None!1149) lt!202510)) None!1149 (ite ((_ is None!1149) lt!202510) lt!202509 (ite ((_ is None!1149) lt!202509) lt!202510 (ite (>= (size!3619 (_1!2901 (v!15470 lt!202509))) (size!3619 (_1!2901 (v!15470 lt!202510)))) lt!202509 lt!202510)))))))

(assert (=> b!455233 (= lt!202509 call!31532)))

(assert (=> b!455233 (= lt!202510 (maxPrefixZipper!190 thiss!17480 (t!71132 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))

(assert (= (and d!173643 c!91951) b!455232))

(assert (= (and d!173643 (not c!91951)) b!455233))

(assert (= (or b!455232 b!455233) bm!31527))

(assert (=> d!173643 m!719631))

(assert (=> d!173643 m!719641))

(assert (=> d!173643 m!719631))

(assert (=> d!173643 m!719631))

(declare-fun m!720137 () Bool)

(assert (=> d!173643 m!720137))

(assert (=> d!173643 m!719631))

(assert (=> d!173643 m!719631))

(declare-fun m!720139 () Bool)

(assert (=> d!173643 m!720139))

(assert (=> d!173643 m!718921))

(assert (=> bm!31527 m!719631))

(declare-fun m!720141 () Bool)

(assert (=> bm!31527 m!720141))

(assert (=> b!455233 m!719631))

(declare-fun m!720143 () Bool)

(assert (=> b!455233 m!720143))

(assert (=> b!454962 d!173643))

(declare-fun d!173645 () Bool)

(assert (=> d!173645 (= (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))) (list!1962 (c!91744 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))

(declare-fun bs!56313 () Bool)

(assert (= bs!56313 d!173645))

(declare-fun m!720145 () Bool)

(assert (=> bs!56313 m!720145))

(assert (=> b!454962 d!173645))

(declare-fun b!455234 () Bool)

(declare-fun e!278589 () List!4431)

(assert (=> b!455234 (= e!278589 (printList!419 thiss!17480 (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423))))))

(declare-fun d!173647 () Bool)

(declare-fun e!278588 () Bool)

(assert (=> d!173647 e!278588))

(declare-fun res!202392 () Bool)

(assert (=> d!173647 (=> (not res!202392) (not e!278588))))

(declare-fun lt!202512 () List!4431)

(assert (=> d!173647 (= res!202392 (= (content!737 lt!202512) ((_ map or) (content!737 (list!1959 (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))) (content!737 (printList!419 thiss!17480 (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))))))

(assert (=> d!173647 (= lt!202512 e!278589)))

(declare-fun c!91952 () Bool)

(assert (=> d!173647 (= c!91952 ((_ is Nil!4421) (list!1959 (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))))))

(assert (=> d!173647 (= (++!1284 (list!1959 (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))) (printList!419 thiss!17480 (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423)))) lt!202512)))

(declare-fun b!455236 () Bool)

(declare-fun res!202393 () Bool)

(assert (=> b!455236 (=> (not res!202393) (not e!278588))))

(assert (=> b!455236 (= res!202393 (= (size!3623 lt!202512) (+ (size!3623 (list!1959 (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))) (size!3623 (printList!419 thiss!17480 (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))))))

(declare-fun b!455237 () Bool)

(assert (=> b!455237 (= e!278588 (or (not (= (printList!419 thiss!17480 (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423))) Nil!4421)) (= lt!202512 (list!1959 (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))))))

(declare-fun b!455235 () Bool)

(assert (=> b!455235 (= e!278589 (Cons!4421 (h!9818 (list!1959 (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))) (++!1284 (t!71131 (list!1959 (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))) (printList!419 thiss!17480 (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423))))))))

(assert (= (and d!173647 c!91952) b!455234))

(assert (= (and d!173647 (not c!91952)) b!455235))

(assert (= (and d!173647 res!202392) b!455236))

(assert (= (and b!455236 res!202393) b!455237))

(declare-fun m!720147 () Bool)

(assert (=> d!173647 m!720147))

(assert (=> d!173647 m!718883))

(declare-fun m!720149 () Bool)

(assert (=> d!173647 m!720149))

(assert (=> d!173647 m!718885))

(declare-fun m!720151 () Bool)

(assert (=> d!173647 m!720151))

(declare-fun m!720153 () Bool)

(assert (=> b!455236 m!720153))

(assert (=> b!455236 m!718883))

(declare-fun m!720155 () Bool)

(assert (=> b!455236 m!720155))

(assert (=> b!455236 m!718885))

(declare-fun m!720157 () Bool)

(assert (=> b!455236 m!720157))

(assert (=> b!455235 m!718885))

(declare-fun m!720159 () Bool)

(assert (=> b!455235 m!720159))

(assert (=> b!454460 d!173647))

(declare-fun d!173649 () Bool)

(assert (=> d!173649 (= (list!1959 (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))) (list!1962 (c!91744 (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))))))

(declare-fun bs!56314 () Bool)

(assert (= bs!56314 d!173649))

(declare-fun m!720161 () Bool)

(assert (=> bs!56314 m!720161))

(assert (=> b!454460 d!173649))

(declare-fun d!173651 () Bool)

(declare-fun lt!202513 () BalanceConc!3088)

(assert (=> d!173651 (= (list!1959 lt!202513) (originalCharacters!902 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))))

(assert (=> d!173651 (= lt!202513 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))) (value!28797 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))))

(assert (=> d!173651 (= (charsOf!502 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))) lt!202513)))

(declare-fun b_lambda!18853 () Bool)

(assert (=> (not b_lambda!18853) (not d!173651)))

(declare-fun tb!45641 () Bool)

(declare-fun t!71264 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))) t!71264) tb!45641))

(declare-fun b!455238 () Bool)

(declare-fun e!278590 () Bool)

(declare-fun tp!126451 () Bool)

(assert (=> b!455238 (= e!278590 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))) (value!28797 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))) tp!126451))))

(declare-fun result!50238 () Bool)

(assert (=> tb!45641 (= result!50238 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))) (value!28797 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423))))) e!278590))))

(assert (= tb!45641 b!455238))

(declare-fun m!720163 () Bool)

(assert (=> b!455238 m!720163))

(declare-fun m!720165 () Bool)

(assert (=> tb!45641 m!720165))

(assert (=> d!173651 t!71264))

(declare-fun b_and!48921 () Bool)

(assert (= b_and!48909 (and (=> t!71264 result!50238) b_and!48921)))

(declare-fun t!71266 () Bool)

(declare-fun tb!45643 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))) t!71266) tb!45643))

(declare-fun result!50240 () Bool)

(assert (= result!50240 result!50238))

(assert (=> d!173651 t!71266))

(declare-fun b_and!48923 () Bool)

(assert (= b_and!48907 (and (=> t!71266 result!50240) b_and!48923)))

(declare-fun t!71268 () Bool)

(declare-fun tb!45645 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))) t!71268) tb!45645))

(declare-fun result!50242 () Bool)

(assert (= result!50242 result!50238))

(assert (=> d!173651 t!71268))

(declare-fun b_and!48925 () Bool)

(assert (= b_and!48903 (and (=> t!71268 result!50242) b_and!48925)))

(declare-fun t!71270 () Bool)

(declare-fun tb!45647 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))) t!71270) tb!45647))

(declare-fun result!50244 () Bool)

(assert (= result!50244 result!50238))

(assert (=> d!173651 t!71270))

(declare-fun b_and!48927 () Bool)

(assert (= b_and!48905 (and (=> t!71270 result!50244) b_and!48927)))

(declare-fun t!71272 () Bool)

(declare-fun tb!45649 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))) t!71272) tb!45649))

(declare-fun result!50246 () Bool)

(assert (= result!50246 result!50238))

(assert (=> d!173651 t!71272))

(declare-fun b_and!48929 () Bool)

(assert (= b_and!48901 (and (=> t!71272 result!50246) b_and!48929)))

(declare-fun m!720167 () Bool)

(assert (=> d!173651 m!720167))

(declare-fun m!720169 () Bool)

(assert (=> d!173651 m!720169))

(assert (=> b!454460 d!173651))

(declare-fun d!173653 () Bool)

(declare-fun c!91953 () Bool)

(assert (=> d!173653 (= c!91953 ((_ is Cons!4423) (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423))))))

(declare-fun e!278591 () List!4431)

(assert (=> d!173653 (= (printList!419 thiss!17480 (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423))) e!278591)))

(declare-fun b!455239 () Bool)

(assert (=> b!455239 (= e!278591 (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423))))) (printList!419 thiss!17480 (t!71133 (t!71133 (Cons!4423 (h!9820 tokens!465) Nil!4423))))))))

(declare-fun b!455240 () Bool)

(assert (=> b!455240 (= e!278591 Nil!4421)))

(assert (= (and d!173653 c!91953) b!455239))

(assert (= (and d!173653 (not c!91953)) b!455240))

(declare-fun m!720171 () Bool)

(assert (=> b!455239 m!720171))

(assert (=> b!455239 m!720171))

(declare-fun m!720173 () Bool)

(assert (=> b!455239 m!720173))

(declare-fun m!720175 () Bool)

(assert (=> b!455239 m!720175))

(assert (=> b!455239 m!720173))

(assert (=> b!455239 m!720175))

(declare-fun m!720177 () Bool)

(assert (=> b!455239 m!720177))

(assert (=> b!454460 d!173653))

(assert (=> b!454397 d!173363))

(declare-fun d!173655 () Bool)

(declare-fun charsToInt!0 (List!4430) (_ BitVec 32))

(assert (=> d!173655 (= (inv!16 (value!28797 (h!9820 tokens!465))) (= (charsToInt!0 (text!6614 (value!28797 (h!9820 tokens!465)))) (value!28788 (value!28797 (h!9820 tokens!465)))))))

(declare-fun bs!56315 () Bool)

(assert (= bs!56315 d!173655))

(declare-fun m!720179 () Bool)

(assert (=> bs!56315 m!720179))

(assert (=> b!454550 d!173655))

(declare-fun d!173657 () Bool)

(declare-fun lt!202516 () Bool)

(assert (=> d!173657 (= lt!202516 (isEmpty!3386 (list!1959 (_2!2903 lt!202263))))))

(declare-fun isEmpty!3396 (Conc!1540) Bool)

(assert (=> d!173657 (= lt!202516 (isEmpty!3396 (c!91744 (_2!2903 lt!202263))))))

(assert (=> d!173657 (= (isEmpty!3391 (_2!2903 lt!202263)) lt!202516)))

(declare-fun bs!56316 () Bool)

(assert (= bs!56316 d!173657))

(declare-fun m!720181 () Bool)

(assert (=> bs!56316 m!720181))

(assert (=> bs!56316 m!720181))

(declare-fun m!720183 () Bool)

(assert (=> bs!56316 m!720183))

(declare-fun m!720185 () Bool)

(assert (=> bs!56316 m!720185))

(assert (=> b!454556 d!173657))

(declare-fun d!173659 () Bool)

(declare-fun lt!202521 () Int)

(assert (=> d!173659 (>= lt!202521 0)))

(declare-fun e!278592 () Int)

(assert (=> d!173659 (= lt!202521 e!278592)))

(declare-fun c!91954 () Bool)

(assert (=> d!173659 (= c!91954 ((_ is Nil!4421) lt!202270))))

(assert (=> d!173659 (= (size!3623 lt!202270) lt!202521)))

(declare-fun b!455241 () Bool)

(assert (=> b!455241 (= e!278592 0)))

(declare-fun b!455242 () Bool)

(assert (=> b!455242 (= e!278592 (+ 1 (size!3623 (t!71131 lt!202270))))))

(assert (= (and d!173659 c!91954) b!455241))

(assert (= (and d!173659 (not c!91954)) b!455242))

(declare-fun m!720187 () Bool)

(assert (=> b!455242 m!720187))

(assert (=> b!454598 d!173659))

(declare-fun d!173661 () Bool)

(declare-fun lt!202528 () Int)

(assert (=> d!173661 (>= lt!202528 0)))

(declare-fun e!278593 () Int)

(assert (=> d!173661 (= lt!202528 e!278593)))

(declare-fun c!91955 () Bool)

(assert (=> d!173661 (= c!91955 ((_ is Nil!4421) lt!202023))))

(assert (=> d!173661 (= (size!3623 lt!202023) lt!202528)))

(declare-fun b!455243 () Bool)

(assert (=> b!455243 (= e!278593 0)))

(declare-fun b!455244 () Bool)

(assert (=> b!455244 (= e!278593 (+ 1 (size!3623 (t!71131 lt!202023))))))

(assert (= (and d!173661 c!91955) b!455243))

(assert (= (and d!173661 (not c!91955)) b!455244))

(assert (=> b!455244 m!719933))

(assert (=> b!454598 d!173661))

(declare-fun d!173663 () Bool)

(declare-fun lt!202535 () Int)

(assert (=> d!173663 (>= lt!202535 0)))

(declare-fun e!278594 () Int)

(assert (=> d!173663 (= lt!202535 e!278594)))

(declare-fun c!91956 () Bool)

(assert (=> d!173663 (= c!91956 ((_ is Nil!4421) lt!202030))))

(assert (=> d!173663 (= (size!3623 lt!202030) lt!202535)))

(declare-fun b!455245 () Bool)

(assert (=> b!455245 (= e!278594 0)))

(declare-fun b!455246 () Bool)

(assert (=> b!455246 (= e!278594 (+ 1 (size!3623 (t!71131 lt!202030))))))

(assert (= (and d!173663 c!91956) b!455245))

(assert (= (and d!173663 (not c!91956)) b!455246))

(declare-fun m!720189 () Bool)

(assert (=> b!455246 m!720189))

(assert (=> b!454598 d!173663))

(assert (=> d!173439 d!173435))

(declare-fun d!173665 () Bool)

(declare-fun e!278637 () Bool)

(assert (=> d!173665 e!278637))

(declare-fun res!202424 () Bool)

(assert (=> d!173665 (=> res!202424 e!278637)))

(assert (=> d!173665 (= res!202424 (isEmpty!3384 tokens!465))))

(assert (=> d!173665 true))

(declare-fun _$48!683 () Unit!7961)

(assert (=> d!173665 (= (choose!3430 thiss!17480 rules!1920 tokens!465 separatorToken!170) _$48!683)))

(declare-fun b!455313 () Bool)

(declare-fun e!278636 () Bool)

(assert (=> b!455313 (= e!278637 e!278636)))

(declare-fun res!202423 () Bool)

(assert (=> b!455313 (=> (not res!202423) (not e!278636))))

(assert (=> b!455313 (= res!202423 (isDefined!989 (maxPrefix!461 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!455314 () Bool)

(assert (=> b!455314 (= e!278636 (= (_1!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170)))) (head!1108 tokens!465)))))

(assert (= (and d!173665 (not res!202424)) b!455313))

(assert (= (and b!455313 res!202423) b!455314))

(assert (=> d!173665 m!718505))

(assert (=> b!455313 m!718521))

(assert (=> b!455313 m!718521))

(assert (=> b!455313 m!719565))

(assert (=> b!455313 m!719565))

(assert (=> b!455313 m!719567))

(assert (=> b!455314 m!718521))

(assert (=> b!455314 m!718521))

(assert (=> b!455314 m!719565))

(assert (=> b!455314 m!719565))

(assert (=> b!455314 m!719569))

(assert (=> b!455314 m!718451))

(assert (=> d!173439 d!173665))

(assert (=> d!173439 d!173287))

(declare-fun d!173699 () Bool)

(assert (=> d!173699 (= (isEmpty!3390 lt!202018) (not ((_ is Some!1149) lt!202018)))))

(assert (=> d!173387 d!173699))

(declare-fun d!173701 () Bool)

(assert (=> d!173701 (= (isEmpty!3386 (originalCharacters!902 (h!9820 tokens!465))) ((_ is Nil!4421) (originalCharacters!902 (h!9820 tokens!465))))))

(assert (=> d!173385 d!173701))

(declare-fun d!173703 () Bool)

(assert (=> d!173703 (= (inv!16 (value!28797 separatorToken!170)) (= (charsToInt!0 (text!6614 (value!28797 separatorToken!170))) (value!28788 (value!28797 separatorToken!170))))))

(declare-fun bs!56331 () Bool)

(assert (= bs!56331 d!173703))

(declare-fun m!720363 () Bool)

(assert (=> bs!56331 m!720363))

(assert (=> b!454500 d!173703))

(assert (=> b!454618 d!173613))

(declare-fun d!173705 () Bool)

(declare-fun lt!202593 () Int)

(assert (=> d!173705 (>= lt!202593 0)))

(declare-fun e!278638 () Int)

(assert (=> d!173705 (= lt!202593 e!278638)))

(declare-fun c!91973 () Bool)

(assert (=> d!173705 (= c!91973 ((_ is Nil!4421) (originalCharacters!902 separatorToken!170)))))

(assert (=> d!173705 (= (size!3623 (originalCharacters!902 separatorToken!170)) lt!202593)))

(declare-fun b!455315 () Bool)

(assert (=> b!455315 (= e!278638 0)))

(declare-fun b!455316 () Bool)

(assert (=> b!455316 (= e!278638 (+ 1 (size!3623 (t!71131 (originalCharacters!902 separatorToken!170)))))))

(assert (= (and d!173705 c!91973) b!455315))

(assert (= (and d!173705 (not c!91973)) b!455316))

(declare-fun m!720365 () Bool)

(assert (=> b!455316 m!720365))

(assert (=> b!454582 d!173705))

(declare-fun d!173707 () Bool)

(declare-fun lt!202594 () BalanceConc!3088)

(assert (=> d!173707 (= (list!1959 lt!202594) (originalCharacters!902 call!31436))))

(assert (=> d!173707 (= lt!202594 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 call!31436))) (value!28797 call!31436)))))

(assert (=> d!173707 (= (charsOf!502 call!31436) lt!202594)))

(declare-fun b_lambda!18861 () Bool)

(assert (=> (not b_lambda!18861) (not d!173707)))

(declare-fun tb!45671 () Bool)

(declare-fun t!71294 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 call!31436)))) t!71294) tb!45671))

(declare-fun b!455317 () Bool)

(declare-fun e!278639 () Bool)

(declare-fun tp!126454 () Bool)

(assert (=> b!455317 (= e!278639 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 call!31436))) (value!28797 call!31436)))) tp!126454))))

(declare-fun result!50268 () Bool)

(assert (=> tb!45671 (= result!50268 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 call!31436))) (value!28797 call!31436))) e!278639))))

(assert (= tb!45671 b!455317))

(declare-fun m!720367 () Bool)

(assert (=> b!455317 m!720367))

(declare-fun m!720369 () Bool)

(assert (=> tb!45671 m!720369))

(assert (=> d!173707 t!71294))

(declare-fun b_and!48951 () Bool)

(assert (= b_and!48927 (and (=> t!71294 result!50268) b_and!48951)))

(declare-fun t!71296 () Bool)

(declare-fun tb!45673 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 call!31436)))) t!71296) tb!45673))

(declare-fun result!50270 () Bool)

(assert (= result!50270 result!50268))

(assert (=> d!173707 t!71296))

(declare-fun b_and!48953 () Bool)

(assert (= b_and!48925 (and (=> t!71296 result!50270) b_and!48953)))

(declare-fun tb!45675 () Bool)

(declare-fun t!71298 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 call!31436)))) t!71298) tb!45675))

(declare-fun result!50272 () Bool)

(assert (= result!50272 result!50268))

(assert (=> d!173707 t!71298))

(declare-fun b_and!48955 () Bool)

(assert (= b_and!48929 (and (=> t!71298 result!50272) b_and!48955)))

(declare-fun t!71300 () Bool)

(declare-fun tb!45677 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 call!31436)))) t!71300) tb!45677))

(declare-fun result!50274 () Bool)

(assert (= result!50274 result!50268))

(assert (=> d!173707 t!71300))

(declare-fun b_and!48957 () Bool)

(assert (= b_and!48921 (and (=> t!71300 result!50274) b_and!48957)))

(declare-fun t!71302 () Bool)

(declare-fun tb!45679 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 call!31436)))) t!71302) tb!45679))

(declare-fun result!50276 () Bool)

(assert (= result!50276 result!50268))

(assert (=> d!173707 t!71302))

(declare-fun b_and!48959 () Bool)

(assert (= b_and!48923 (and (=> t!71302 result!50276) b_and!48959)))

(declare-fun m!720371 () Bool)

(assert (=> d!173707 m!720371))

(declare-fun m!720373 () Bool)

(assert (=> d!173707 m!720373))

(assert (=> b!454362 d!173707))

(declare-fun d!173709 () Bool)

(declare-fun lt!202595 () Int)

(assert (=> d!173709 (= lt!202595 (size!3626 (list!1963 lt!202020)))))

(assert (=> d!173709 (= lt!202595 (size!3629 (c!91746 lt!202020)))))

(assert (=> d!173709 (= (size!3622 lt!202020) lt!202595)))

(declare-fun bs!56332 () Bool)

(assert (= bs!56332 d!173709))

(assert (=> bs!56332 m!719143))

(assert (=> bs!56332 m!719143))

(declare-fun m!720375 () Bool)

(assert (=> bs!56332 m!720375))

(declare-fun m!720377 () Bool)

(assert (=> bs!56332 m!720377))

(assert (=> b!454615 d!173709))

(declare-fun d!173711 () Bool)

(assert (=> d!173711 (= (head!1109 lt!202023) (h!9818 lt!202023))))

(assert (=> b!454934 d!173711))

(declare-fun d!173713 () Bool)

(declare-fun lt!202596 () BalanceConc!3088)

(assert (=> d!173713 (= (list!1959 lt!202596) (printList!419 thiss!17480 (list!1963 (singletonSeq!405 (h!9820 (t!71133 tokens!465))))))))

(assert (=> d!173713 (= lt!202596 (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 (t!71133 tokens!465))) 0 (BalanceConc!3089 Empty!1540)))))

(assert (=> d!173713 (= (print!470 thiss!17480 (singletonSeq!405 (h!9820 (t!71133 tokens!465)))) lt!202596)))

(declare-fun bs!56333 () Bool)

(assert (= bs!56333 d!173713))

(declare-fun m!720379 () Bool)

(assert (=> bs!56333 m!720379))

(assert (=> bs!56333 m!719105))

(declare-fun m!720381 () Bool)

(assert (=> bs!56333 m!720381))

(assert (=> bs!56333 m!720381))

(declare-fun m!720383 () Bool)

(assert (=> bs!56333 m!720383))

(assert (=> bs!56333 m!719105))

(assert (=> bs!56333 m!719109))

(assert (=> b!454603 d!173713))

(declare-fun d!173715 () Bool)

(declare-fun e!278640 () Bool)

(assert (=> d!173715 e!278640))

(declare-fun res!202425 () Bool)

(assert (=> d!173715 (=> (not res!202425) (not e!278640))))

(declare-fun lt!202597 () BalanceConc!3090)

(assert (=> d!173715 (= res!202425 (= (list!1963 lt!202597) (Cons!4423 (h!9820 (t!71133 tokens!465)) Nil!4423)))))

(assert (=> d!173715 (= lt!202597 (singleton!194 (h!9820 (t!71133 tokens!465))))))

(assert (=> d!173715 (= (singletonSeq!405 (h!9820 (t!71133 tokens!465))) lt!202597)))

(declare-fun b!455318 () Bool)

(assert (=> b!455318 (= e!278640 (isBalanced!471 (c!91746 lt!202597)))))

(assert (= (and d!173715 res!202425) b!455318))

(declare-fun m!720385 () Bool)

(assert (=> d!173715 m!720385))

(declare-fun m!720387 () Bool)

(assert (=> d!173715 m!720387))

(declare-fun m!720389 () Bool)

(assert (=> b!455318 m!720389))

(assert (=> b!454603 d!173715))

(declare-fun d!173717 () Bool)

(declare-fun lt!202600 () BalanceConc!3088)

(assert (=> d!173717 (= (list!1959 lt!202600) (printListTailRec!209 thiss!17480 (dropList!244 (singletonSeq!405 (h!9820 (t!71133 tokens!465))) 0) (list!1959 (BalanceConc!3089 Empty!1540))))))

(declare-fun e!278641 () BalanceConc!3088)

(assert (=> d!173717 (= lt!202600 e!278641)))

(declare-fun c!91974 () Bool)

(assert (=> d!173717 (= c!91974 (>= 0 (size!3622 (singletonSeq!405 (h!9820 (t!71133 tokens!465))))))))

(declare-fun e!278642 () Bool)

(assert (=> d!173717 e!278642))

(declare-fun res!202426 () Bool)

(assert (=> d!173717 (=> (not res!202426) (not e!278642))))

(assert (=> d!173717 (= res!202426 (>= 0 0))))

(assert (=> d!173717 (= (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 (t!71133 tokens!465))) 0 (BalanceConc!3089 Empty!1540)) lt!202600)))

(declare-fun b!455319 () Bool)

(assert (=> b!455319 (= e!278642 (<= 0 (size!3622 (singletonSeq!405 (h!9820 (t!71133 tokens!465))))))))

(declare-fun b!455320 () Bool)

(assert (=> b!455320 (= e!278641 (BalanceConc!3089 Empty!1540))))

(declare-fun b!455321 () Bool)

(assert (=> b!455321 (= e!278641 (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 (t!71133 tokens!465))) (+ 0 1) (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (apply!1130 (singletonSeq!405 (h!9820 (t!71133 tokens!465))) 0)))))))

(declare-fun lt!202602 () List!4433)

(assert (=> b!455321 (= lt!202602 (list!1963 (singletonSeq!405 (h!9820 (t!71133 tokens!465)))))))

(declare-fun lt!202601 () Unit!7961)

(assert (=> b!455321 (= lt!202601 (lemmaDropApply!284 lt!202602 0))))

(assert (=> b!455321 (= (head!1108 (drop!313 lt!202602 0)) (apply!1131 lt!202602 0))))

(declare-fun lt!202604 () Unit!7961)

(assert (=> b!455321 (= lt!202604 lt!202601)))

(declare-fun lt!202603 () List!4433)

(assert (=> b!455321 (= lt!202603 (list!1963 (singletonSeq!405 (h!9820 (t!71133 tokens!465)))))))

(declare-fun lt!202598 () Unit!7961)

(assert (=> b!455321 (= lt!202598 (lemmaDropTail!276 lt!202603 0))))

(assert (=> b!455321 (= (tail!636 (drop!313 lt!202603 0)) (drop!313 lt!202603 (+ 0 1)))))

(declare-fun lt!202599 () Unit!7961)

(assert (=> b!455321 (= lt!202599 lt!202598)))

(assert (= (and d!173717 res!202426) b!455319))

(assert (= (and d!173717 c!91974) b!455320))

(assert (= (and d!173717 (not c!91974)) b!455321))

(assert (=> d!173717 m!719105))

(declare-fun m!720391 () Bool)

(assert (=> d!173717 m!720391))

(assert (=> d!173717 m!718835))

(declare-fun m!720393 () Bool)

(assert (=> d!173717 m!720393))

(assert (=> d!173717 m!720391))

(assert (=> d!173717 m!718835))

(declare-fun m!720395 () Bool)

(assert (=> d!173717 m!720395))

(assert (=> d!173717 m!719105))

(declare-fun m!720397 () Bool)

(assert (=> d!173717 m!720397))

(assert (=> b!455319 m!719105))

(assert (=> b!455319 m!720397))

(declare-fun m!720399 () Bool)

(assert (=> b!455321 m!720399))

(declare-fun m!720401 () Bool)

(assert (=> b!455321 m!720401))

(declare-fun m!720403 () Bool)

(assert (=> b!455321 m!720403))

(declare-fun m!720405 () Bool)

(assert (=> b!455321 m!720405))

(assert (=> b!455321 m!719105))

(assert (=> b!455321 m!720381))

(declare-fun m!720407 () Bool)

(assert (=> b!455321 m!720407))

(declare-fun m!720409 () Bool)

(assert (=> b!455321 m!720409))

(assert (=> b!455321 m!719105))

(declare-fun m!720411 () Bool)

(assert (=> b!455321 m!720411))

(declare-fun m!720413 () Bool)

(assert (=> b!455321 m!720413))

(declare-fun m!720415 () Bool)

(assert (=> b!455321 m!720415))

(declare-fun m!720417 () Bool)

(assert (=> b!455321 m!720417))

(declare-fun m!720419 () Bool)

(assert (=> b!455321 m!720419))

(assert (=> b!455321 m!719105))

(assert (=> b!455321 m!720401))

(assert (=> b!455321 m!720415))

(assert (=> b!455321 m!720405))

(declare-fun m!720421 () Bool)

(assert (=> b!455321 m!720421))

(assert (=> b!455321 m!720403))

(assert (=> b!455321 m!720411))

(assert (=> b!454603 d!173717))

(declare-fun d!173719 () Bool)

(assert (=> d!173719 (isDefined!989 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 call!31476 lt!202274)))))

(declare-fun lt!202731 () Unit!7961)

(declare-fun e!278743 () Unit!7961)

(assert (=> d!173719 (= lt!202731 e!278743)))

(declare-fun c!92013 () Bool)

(assert (=> d!173719 (= c!92013 (isEmpty!3390 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 call!31476 lt!202274))))))

(declare-fun lt!202734 () Unit!7961)

(declare-fun lt!202738 () Unit!7961)

(assert (=> d!173719 (= lt!202734 lt!202738)))

(declare-fun e!278742 () Bool)

(assert (=> d!173719 e!278742))

(declare-fun res!202527 () Bool)

(assert (=> d!173719 (=> (not res!202527) (not e!278742))))

(declare-fun lt!202739 () Token!1462)

(declare-datatypes ((Option!1153 0))(
  ( (None!1152) (Some!1152 (v!15483 Rule!1518)) )
))
(declare-fun isDefined!992 (Option!1153) Bool)

(declare-fun getRuleFromTag!210 (LexerInterface!745 List!4432 String!5485) Option!1153)

(assert (=> d!173719 (= res!202527 (isDefined!992 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!202739)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!210 (LexerInterface!745 List!4432 List!4431 Token!1462) Unit!7961)

(assert (=> d!173719 (= lt!202738 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!210 thiss!17480 rules!1920 call!31476 lt!202739))))

(declare-fun lt!202732 () Unit!7961)

(declare-fun lt!202736 () Unit!7961)

(assert (=> d!173719 (= lt!202732 lt!202736)))

(declare-fun lt!202724 () List!4431)

(assert (=> d!173719 (isPrefix!513 lt!202724 (++!1284 call!31476 lt!202274))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!96 (List!4431 List!4431 List!4431) Unit!7961)

(assert (=> d!173719 (= lt!202736 (lemmaPrefixStaysPrefixWhenAddingToSuffix!96 lt!202724 call!31476 lt!202274))))

(assert (=> d!173719 (= lt!202724 (list!1959 (charsOf!502 lt!202739)))))

(declare-fun lt!202737 () Unit!7961)

(declare-fun lt!202723 () Unit!7961)

(assert (=> d!173719 (= lt!202737 lt!202723)))

(declare-fun lt!202728 () List!4431)

(declare-fun lt!202727 () List!4431)

(assert (=> d!173719 (isPrefix!513 lt!202728 (++!1284 lt!202728 lt!202727))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!402 (List!4431 List!4431) Unit!7961)

(assert (=> d!173719 (= lt!202723 (lemmaConcatTwoListThenFirstIsPrefix!402 lt!202728 lt!202727))))

(assert (=> d!173719 (= lt!202727 (_2!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 call!31476))))))

(assert (=> d!173719 (= lt!202728 (list!1959 (charsOf!502 lt!202739)))))

(assert (=> d!173719 (= lt!202739 (head!1108 (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 call!31476))))))))

(assert (=> d!173719 (not (isEmpty!3387 rules!1920))))

(assert (=> d!173719 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 call!31476 lt!202274) lt!202731)))

(declare-fun b!455500 () Bool)

(declare-fun res!202528 () Bool)

(assert (=> b!455500 (=> (not res!202528) (not e!278742))))

(declare-fun get!1622 (Option!1153) Rule!1518)

(assert (=> b!455500 (= res!202528 (matchR!401 (regex!859 (get!1622 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!202739))))) (list!1959 (charsOf!502 lt!202739))))))

(declare-fun b!455502 () Bool)

(declare-fun Unit!7985 () Unit!7961)

(assert (=> b!455502 (= e!278743 Unit!7985)))

(declare-fun lt!202725 () List!4431)

(assert (=> b!455502 (= lt!202725 (++!1284 call!31476 lt!202274))))

(declare-fun lt!202733 () Unit!7961)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!96 (LexerInterface!745 Rule!1518 List!4432 List!4431) Unit!7961)

(assert (=> b!455502 (= lt!202733 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!96 thiss!17480 (rule!1550 lt!202739) rules!1920 lt!202725))))

(assert (=> b!455502 (isEmpty!3390 (maxPrefixOneRule!221 thiss!17480 (rule!1550 lt!202739) lt!202725))))

(declare-fun lt!202726 () Unit!7961)

(assert (=> b!455502 (= lt!202726 lt!202733)))

(declare-fun lt!202735 () List!4431)

(assert (=> b!455502 (= lt!202735 (list!1959 (charsOf!502 lt!202739)))))

(declare-fun lt!202730 () Unit!7961)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!96 (LexerInterface!745 Rule!1518 List!4431 List!4431) Unit!7961)

(assert (=> b!455502 (= lt!202730 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!96 thiss!17480 (rule!1550 lt!202739) lt!202735 (++!1284 call!31476 lt!202274)))))

(assert (=> b!455502 (not (matchR!401 (regex!859 (rule!1550 lt!202739)) lt!202735))))

(declare-fun lt!202729 () Unit!7961)

(assert (=> b!455502 (= lt!202729 lt!202730)))

(assert (=> b!455502 false))

(declare-fun b!455501 () Bool)

(assert (=> b!455501 (= e!278742 (= (rule!1550 lt!202739) (get!1622 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!202739))))))))

(declare-fun b!455503 () Bool)

(declare-fun Unit!7986 () Unit!7961)

(assert (=> b!455503 (= e!278743 Unit!7986)))

(assert (= (and d!173719 res!202527) b!455500))

(assert (= (and b!455500 res!202528) b!455501))

(assert (= (and d!173719 c!92013) b!455502))

(assert (= (and d!173719 (not c!92013)) b!455503))

(declare-fun m!720859 () Bool)

(assert (=> d!173719 m!720859))

(declare-fun m!720861 () Bool)

(assert (=> d!173719 m!720861))

(assert (=> d!173719 m!720861))

(declare-fun m!720863 () Bool)

(assert (=> d!173719 m!720863))

(assert (=> d!173719 m!720861))

(declare-fun m!720865 () Bool)

(assert (=> d!173719 m!720865))

(declare-fun m!720867 () Bool)

(assert (=> d!173719 m!720867))

(declare-fun m!720869 () Bool)

(assert (=> d!173719 m!720869))

(declare-fun m!720871 () Bool)

(assert (=> d!173719 m!720871))

(declare-fun m!720873 () Bool)

(assert (=> d!173719 m!720873))

(assert (=> d!173719 m!720867))

(declare-fun m!720875 () Bool)

(assert (=> d!173719 m!720875))

(declare-fun m!720877 () Bool)

(assert (=> d!173719 m!720877))

(assert (=> d!173719 m!718485))

(declare-fun m!720879 () Bool)

(assert (=> d!173719 m!720879))

(declare-fun m!720881 () Bool)

(assert (=> d!173719 m!720881))

(assert (=> d!173719 m!720859))

(declare-fun m!720883 () Bool)

(assert (=> d!173719 m!720883))

(assert (=> d!173719 m!720871))

(declare-fun m!720885 () Bool)

(assert (=> d!173719 m!720885))

(assert (=> d!173719 m!720859))

(assert (=> d!173719 m!720875))

(declare-fun m!720887 () Bool)

(assert (=> d!173719 m!720887))

(assert (=> d!173719 m!720879))

(declare-fun m!720889 () Bool)

(assert (=> d!173719 m!720889))

(declare-fun m!720891 () Bool)

(assert (=> d!173719 m!720891))

(declare-fun m!720893 () Bool)

(assert (=> d!173719 m!720893))

(assert (=> d!173719 m!720873))

(declare-fun m!720895 () Bool)

(assert (=> d!173719 m!720895))

(assert (=> d!173719 m!720891))

(declare-fun m!720897 () Bool)

(assert (=> d!173719 m!720897))

(assert (=> b!455500 m!720869))

(declare-fun m!720899 () Bool)

(assert (=> b!455500 m!720899))

(assert (=> b!455500 m!720867))

(assert (=> b!455500 m!720869))

(assert (=> b!455500 m!720875))

(declare-fun m!720901 () Bool)

(assert (=> b!455500 m!720901))

(assert (=> b!455500 m!720867))

(assert (=> b!455500 m!720875))

(assert (=> b!455502 m!720867))

(declare-fun m!720903 () Bool)

(assert (=> b!455502 m!720903))

(declare-fun m!720905 () Bool)

(assert (=> b!455502 m!720905))

(declare-fun m!720907 () Bool)

(assert (=> b!455502 m!720907))

(declare-fun m!720909 () Bool)

(assert (=> b!455502 m!720909))

(assert (=> b!455502 m!720867))

(assert (=> b!455502 m!720869))

(assert (=> b!455502 m!720859))

(declare-fun m!720911 () Bool)

(assert (=> b!455502 m!720911))

(assert (=> b!455502 m!720859))

(assert (=> b!455502 m!720903))

(assert (=> b!455501 m!720875))

(assert (=> b!455501 m!720875))

(assert (=> b!455501 m!720901))

(assert (=> b!454603 d!173719))

(assert (=> b!454959 d!173643))

(assert (=> b!454959 d!173639))

(declare-fun d!173829 () Bool)

(assert (=> d!173829 (= (list!1959 (_2!2902 (get!1620 lt!202401))) (list!1962 (c!91744 (_2!2902 (get!1620 lt!202401)))))))

(declare-fun bs!56365 () Bool)

(assert (= bs!56365 d!173829))

(declare-fun m!720913 () Bool)

(assert (=> bs!56365 m!720913))

(assert (=> b!454959 d!173829))

(assert (=> b!454959 d!173641))

(assert (=> b!454959 d!173645))

(declare-fun d!173831 () Bool)

(declare-fun c!92014 () Bool)

(assert (=> d!173831 (= c!92014 ((_ is Nil!4421) lt!202300))))

(declare-fun e!278744 () (InoxSet C!3088))

(assert (=> d!173831 (= (content!737 lt!202300) e!278744)))

(declare-fun b!455504 () Bool)

(assert (=> b!455504 (= e!278744 ((as const (Array C!3088 Bool)) false))))

(declare-fun b!455505 () Bool)

(assert (=> b!455505 (= e!278744 ((_ map or) (store ((as const (Array C!3088 Bool)) false) (h!9818 lt!202300) true) (content!737 (t!71131 lt!202300))))))

(assert (= (and d!173831 c!92014) b!455504))

(assert (= (and d!173831 (not c!92014)) b!455505))

(declare-fun m!720915 () Bool)

(assert (=> b!455505 m!720915))

(declare-fun m!720917 () Bool)

(assert (=> b!455505 m!720917))

(assert (=> d!173379 d!173831))

(declare-fun d!173833 () Bool)

(declare-fun c!92015 () Bool)

(assert (=> d!173833 (= c!92015 ((_ is Nil!4421) lt!202032))))

(declare-fun e!278745 () (InoxSet C!3088))

(assert (=> d!173833 (= (content!737 lt!202032) e!278745)))

(declare-fun b!455506 () Bool)

(assert (=> b!455506 (= e!278745 ((as const (Array C!3088 Bool)) false))))

(declare-fun b!455507 () Bool)

(assert (=> b!455507 (= e!278745 ((_ map or) (store ((as const (Array C!3088 Bool)) false) (h!9818 lt!202032) true) (content!737 (t!71131 lt!202032))))))

(assert (= (and d!173833 c!92015) b!455506))

(assert (= (and d!173833 (not c!92015)) b!455507))

(declare-fun m!720919 () Bool)

(assert (=> b!455507 m!720919))

(assert (=> b!455507 m!720129))

(assert (=> d!173379 d!173833))

(assert (=> d!173379 d!173627))

(declare-fun bs!56366 () Bool)

(declare-fun d!173835 () Bool)

(assert (= bs!56366 (and d!173835 d!173561)))

(declare-fun lambda!13330 () Int)

(assert (=> bs!56366 (= (and (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) (= (toValue!1674 (transformation!859 (rule!1550 separatorToken!170))) (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (= lambda!13330 lambda!13318))))

(assert (=> d!173835 true))

(assert (=> d!173835 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170)))) (dynLambda!2681 order!3911 lambda!13330))))

(assert (=> d!173835 true))

(assert (=> d!173835 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (rule!1550 separatorToken!170)))) (dynLambda!2681 order!3911 lambda!13330))))

(assert (=> d!173835 (= (semiInverseModEq!341 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toValue!1674 (transformation!859 (rule!1550 separatorToken!170)))) (Forall!211 lambda!13330))))

(declare-fun bs!56367 () Bool)

(assert (= bs!56367 d!173835))

(declare-fun m!720921 () Bool)

(assert (=> bs!56367 m!720921))

(assert (=> d!173325 d!173835))

(declare-fun d!173837 () Bool)

(assert (=> d!173837 (= (list!1959 lt!202195) (list!1962 (c!91744 lt!202195)))))

(declare-fun bs!56368 () Bool)

(assert (= bs!56368 d!173837))

(declare-fun m!720923 () Bool)

(assert (=> bs!56368 m!720923))

(assert (=> d!173317 d!173837))

(declare-fun d!173839 () Bool)

(declare-fun c!92016 () Bool)

(assert (=> d!173839 (= c!92016 ((_ is Cons!4423) (list!1963 lt!202031)))))

(declare-fun e!278746 () List!4431)

(assert (=> d!173839 (= (printList!419 thiss!17480 (list!1963 lt!202031)) e!278746)))

(declare-fun b!455508 () Bool)

(assert (=> b!455508 (= e!278746 (++!1284 (list!1959 (charsOf!502 (h!9820 (list!1963 lt!202031)))) (printList!419 thiss!17480 (t!71133 (list!1963 lt!202031)))))))

(declare-fun b!455509 () Bool)

(assert (=> b!455509 (= e!278746 Nil!4421)))

(assert (= (and d!173839 c!92016) b!455508))

(assert (= (and d!173839 (not c!92016)) b!455509))

(declare-fun m!720925 () Bool)

(assert (=> b!455508 m!720925))

(assert (=> b!455508 m!720925))

(declare-fun m!720927 () Bool)

(assert (=> b!455508 m!720927))

(declare-fun m!720929 () Bool)

(assert (=> b!455508 m!720929))

(assert (=> b!455508 m!720927))

(assert (=> b!455508 m!720929))

(declare-fun m!720931 () Bool)

(assert (=> b!455508 m!720931))

(assert (=> d!173317 d!173839))

(assert (=> d!173317 d!173531))

(assert (=> d!173317 d!173289))

(declare-fun d!173841 () Bool)

(declare-fun lt!202740 () Token!1462)

(assert (=> d!173841 (= lt!202740 (apply!1131 (list!1963 (_1!2903 lt!202261)) 0))))

(assert (=> d!173841 (= lt!202740 (apply!1133 (c!91746 (_1!2903 lt!202261)) 0))))

(declare-fun e!278747 () Bool)

(assert (=> d!173841 e!278747))

(declare-fun res!202529 () Bool)

(assert (=> d!173841 (=> (not res!202529) (not e!278747))))

(assert (=> d!173841 (= res!202529 (<= 0 0))))

(assert (=> d!173841 (= (apply!1130 (_1!2903 lt!202261) 0) lt!202740)))

(declare-fun b!455510 () Bool)

(assert (=> b!455510 (= e!278747 (< 0 (size!3622 (_1!2903 lt!202261))))))

(assert (= (and d!173841 res!202529) b!455510))

(assert (=> d!173841 m!719921))

(assert (=> d!173841 m!719921))

(declare-fun m!720933 () Bool)

(assert (=> d!173841 m!720933))

(declare-fun m!720935 () Bool)

(assert (=> d!173841 m!720935))

(assert (=> b!455510 m!719003))

(assert (=> b!454547 d!173841))

(declare-fun d!173843 () Bool)

(declare-fun c!92018 () Bool)

(assert (=> d!173843 (= c!92018 ((_ is IntegerValue!2643) (value!28797 (h!9820 (t!71133 tokens!465)))))))

(declare-fun e!278749 () Bool)

(assert (=> d!173843 (= (inv!21 (value!28797 (h!9820 (t!71133 tokens!465)))) e!278749)))

(declare-fun b!455511 () Bool)

(assert (=> b!455511 (= e!278749 (inv!16 (value!28797 (h!9820 (t!71133 tokens!465)))))))

(declare-fun b!455512 () Bool)

(declare-fun e!278750 () Bool)

(assert (=> b!455512 (= e!278749 e!278750)))

(declare-fun c!92017 () Bool)

(assert (=> b!455512 (= c!92017 ((_ is IntegerValue!2644) (value!28797 (h!9820 (t!71133 tokens!465)))))))

(declare-fun b!455513 () Bool)

(declare-fun e!278748 () Bool)

(assert (=> b!455513 (= e!278748 (inv!15 (value!28797 (h!9820 (t!71133 tokens!465)))))))

(declare-fun b!455514 () Bool)

(assert (=> b!455514 (= e!278750 (inv!17 (value!28797 (h!9820 (t!71133 tokens!465)))))))

(declare-fun b!455515 () Bool)

(declare-fun res!202530 () Bool)

(assert (=> b!455515 (=> res!202530 e!278748)))

(assert (=> b!455515 (= res!202530 (not ((_ is IntegerValue!2645) (value!28797 (h!9820 (t!71133 tokens!465))))))))

(assert (=> b!455515 (= e!278750 e!278748)))

(assert (= (and d!173843 c!92018) b!455511))

(assert (= (and d!173843 (not c!92018)) b!455512))

(assert (= (and b!455512 c!92017) b!455514))

(assert (= (and b!455512 (not c!92017)) b!455515))

(assert (= (and b!455515 (not res!202530)) b!455513))

(declare-fun m!720937 () Bool)

(assert (=> b!455511 m!720937))

(declare-fun m!720939 () Bool)

(assert (=> b!455513 m!720939))

(declare-fun m!720941 () Bool)

(assert (=> b!455514 m!720941))

(assert (=> b!455000 d!173843))

(declare-fun d!173845 () Bool)

(declare-fun lt!202741 () Int)

(assert (=> d!173845 (>= lt!202741 0)))

(declare-fun e!278751 () Int)

(assert (=> d!173845 (= lt!202741 e!278751)))

(declare-fun c!92019 () Bool)

(assert (=> d!173845 (= c!92019 ((_ is Nil!4421) (_2!2901 (get!1618 lt!202212))))))

(assert (=> d!173845 (= (size!3623 (_2!2901 (get!1618 lt!202212))) lt!202741)))

(declare-fun b!455516 () Bool)

(assert (=> b!455516 (= e!278751 0)))

(declare-fun b!455517 () Bool)

(assert (=> b!455517 (= e!278751 (+ 1 (size!3623 (t!71131 (_2!2901 (get!1618 lt!202212))))))))

(assert (= (and d!173845 c!92019) b!455516))

(assert (= (and d!173845 (not c!92019)) b!455517))

(declare-fun m!720943 () Bool)

(assert (=> b!455517 m!720943))

(assert (=> b!454487 d!173845))

(assert (=> b!454487 d!173567))

(assert (=> b!454487 d!173661))

(declare-fun d!173847 () Bool)

(declare-fun lt!202742 () Int)

(assert (=> d!173847 (>= lt!202742 0)))

(declare-fun e!278752 () Int)

(assert (=> d!173847 (= lt!202742 e!278752)))

(declare-fun c!92020 () Bool)

(assert (=> d!173847 (= c!92020 ((_ is Nil!4421) lt!202330))))

(assert (=> d!173847 (= (size!3623 lt!202330) lt!202742)))

(declare-fun b!455518 () Bool)

(assert (=> b!455518 (= e!278752 0)))

(declare-fun b!455519 () Bool)

(assert (=> b!455519 (= e!278752 (+ 1 (size!3623 (t!71131 lt!202330))))))

(assert (= (and d!173847 c!92020) b!455518))

(assert (= (and d!173847 (not c!92020)) b!455519))

(declare-fun m!720945 () Bool)

(assert (=> b!455519 m!720945))

(assert (=> b!454694 d!173847))

(assert (=> b!454694 d!173661))

(declare-fun d!173849 () Bool)

(declare-fun lt!202743 () Int)

(assert (=> d!173849 (>= lt!202743 0)))

(declare-fun e!278753 () Int)

(assert (=> d!173849 (= lt!202743 e!278753)))

(declare-fun c!92021 () Bool)

(assert (=> d!173849 (= c!92021 ((_ is Nil!4421) lt!202021))))

(assert (=> d!173849 (= (size!3623 lt!202021) lt!202743)))

(declare-fun b!455520 () Bool)

(assert (=> b!455520 (= e!278753 0)))

(declare-fun b!455521 () Bool)

(assert (=> b!455521 (= e!278753 (+ 1 (size!3623 (t!71131 lt!202021))))))

(assert (= (and d!173849 c!92021) b!455520))

(assert (= (and d!173849 (not c!92021)) b!455521))

(declare-fun m!720947 () Bool)

(assert (=> b!455521 m!720947))

(assert (=> b!454694 d!173849))

(assert (=> b!454483 d!173567))

(declare-fun d!173851 () Bool)

(assert (=> d!173851 (= (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202212))))) (dynLambda!2682 (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212))))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202212))))))))

(declare-fun b_lambda!18867 () Bool)

(assert (=> (not b_lambda!18867) (not d!173851)))

(declare-fun tb!45691 () Bool)

(declare-fun t!71317 () Bool)

(assert (=> (and b!455002 (= (toValue!1674 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71317) tb!45691))

(declare-fun result!50288 () Bool)

(assert (=> tb!45691 (= result!50288 (inv!21 (dynLambda!2682 (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212))))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202212)))))))))

(declare-fun m!720949 () Bool)

(assert (=> tb!45691 m!720949))

(assert (=> d!173851 t!71317))

(declare-fun b_and!48971 () Bool)

(assert (= b_and!48911 (and (=> t!71317 result!50288) b_and!48971)))

(declare-fun t!71319 () Bool)

(declare-fun tb!45693 () Bool)

(assert (=> (and b!454228 (= (toValue!1674 (transformation!859 (rule!1550 separatorToken!170))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71319) tb!45693))

(declare-fun result!50290 () Bool)

(assert (= result!50290 result!50288))

(assert (=> d!173851 t!71319))

(declare-fun b_and!48973 () Bool)

(assert (= b_and!48915 (and (=> t!71319 result!50290) b_and!48973)))

(declare-fun t!71321 () Bool)

(declare-fun tb!45695 () Bool)

(assert (=> (and b!454206 (= (toValue!1674 (transformation!859 (h!9819 rules!1920))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71321) tb!45695))

(declare-fun result!50292 () Bool)

(assert (= result!50292 result!50288))

(assert (=> d!173851 t!71321))

(declare-fun b_and!48975 () Bool)

(assert (= b_and!48919 (and (=> t!71321 result!50292) b_and!48975)))

(declare-fun tb!45697 () Bool)

(declare-fun t!71323 () Bool)

(assert (=> (and b!455013 (= (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71323) tb!45697))

(declare-fun result!50294 () Bool)

(assert (= result!50294 result!50288))

(assert (=> d!173851 t!71323))

(declare-fun b_and!48977 () Bool)

(assert (= b_and!48913 (and (=> t!71323 result!50294) b_and!48977)))

(declare-fun t!71325 () Bool)

(declare-fun tb!45699 () Bool)

(assert (=> (and b!454224 (= (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71325) tb!45699))

(declare-fun result!50296 () Bool)

(assert (= result!50296 result!50288))

(assert (=> d!173851 t!71325))

(declare-fun b_and!48979 () Bool)

(assert (= b_and!48917 (and (=> t!71325 result!50296) b_and!48979)))

(assert (=> d!173851 m!718909))

(declare-fun m!720951 () Bool)

(assert (=> d!173851 m!720951))

(assert (=> b!454483 d!173851))

(declare-fun d!173853 () Bool)

(assert (=> d!173853 (= (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202212)))) (fromListB!482 (originalCharacters!902 (_1!2901 (get!1618 lt!202212)))))))

(declare-fun bs!56369 () Bool)

(assert (= bs!56369 d!173853))

(declare-fun m!720953 () Bool)

(assert (=> bs!56369 m!720953))

(assert (=> b!454483 d!173853))

(declare-fun b!455522 () Bool)

(declare-fun e!278756 () List!4431)

(assert (=> b!455522 (= e!278756 (_2!2901 (get!1618 lt!202304)))))

(declare-fun d!173855 () Bool)

(declare-fun e!278755 () Bool)

(assert (=> d!173855 e!278755))

(declare-fun res!202531 () Bool)

(assert (=> d!173855 (=> (not res!202531) (not e!278755))))

(declare-fun lt!202744 () List!4431)

(assert (=> d!173855 (= res!202531 (= (content!737 lt!202744) ((_ map or) (content!737 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))) (content!737 (_2!2901 (get!1618 lt!202304))))))))

(assert (=> d!173855 (= lt!202744 e!278756)))

(declare-fun c!92022 () Bool)

(assert (=> d!173855 (= c!92022 ((_ is Nil!4421) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))))))

(assert (=> d!173855 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304)))) (_2!2901 (get!1618 lt!202304))) lt!202744)))

(declare-fun b!455524 () Bool)

(declare-fun res!202532 () Bool)

(assert (=> b!455524 (=> (not res!202532) (not e!278755))))

(assert (=> b!455524 (= res!202532 (= (size!3623 lt!202744) (+ (size!3623 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))) (size!3623 (_2!2901 (get!1618 lt!202304))))))))

(declare-fun b!455525 () Bool)

(assert (=> b!455525 (= e!278755 (or (not (= (_2!2901 (get!1618 lt!202304)) Nil!4421)) (= lt!202744 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304)))))))))

(declare-fun b!455523 () Bool)

(assert (=> b!455523 (= e!278756 (Cons!4421 (h!9818 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))) (++!1284 (t!71131 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))) (_2!2901 (get!1618 lt!202304)))))))

(assert (= (and d!173855 c!92022) b!455522))

(assert (= (and d!173855 (not c!92022)) b!455523))

(assert (= (and d!173855 res!202531) b!455524))

(assert (= (and b!455524 res!202532) b!455525))

(declare-fun m!720955 () Bool)

(assert (=> d!173855 m!720955))

(assert (=> d!173855 m!719243))

(declare-fun m!720957 () Bool)

(assert (=> d!173855 m!720957))

(declare-fun m!720959 () Bool)

(assert (=> d!173855 m!720959))

(declare-fun m!720961 () Bool)

(assert (=> b!455524 m!720961))

(assert (=> b!455524 m!719243))

(declare-fun m!720963 () Bool)

(assert (=> b!455524 m!720963))

(assert (=> b!455524 m!719245))

(declare-fun m!720965 () Bool)

(assert (=> b!455523 m!720965))

(assert (=> b!454648 d!173855))

(declare-fun d!173857 () Bool)

(assert (=> d!173857 (= (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304)))) (list!1962 (c!91744 (charsOf!502 (_1!2901 (get!1618 lt!202304))))))))

(declare-fun bs!56370 () Bool)

(assert (= bs!56370 d!173857))

(declare-fun m!720967 () Bool)

(assert (=> bs!56370 m!720967))

(assert (=> b!454648 d!173857))

(declare-fun d!173859 () Bool)

(declare-fun lt!202745 () BalanceConc!3088)

(assert (=> d!173859 (= (list!1959 lt!202745) (originalCharacters!902 (_1!2901 (get!1618 lt!202304))))))

(assert (=> d!173859 (= lt!202745 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304))))) (value!28797 (_1!2901 (get!1618 lt!202304)))))))

(assert (=> d!173859 (= (charsOf!502 (_1!2901 (get!1618 lt!202304))) lt!202745)))

(declare-fun b_lambda!18869 () Bool)

(assert (=> (not b_lambda!18869) (not d!173859)))

(declare-fun tb!45701 () Bool)

(declare-fun t!71327 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71327) tb!45701))

(declare-fun b!455526 () Bool)

(declare-fun e!278757 () Bool)

(declare-fun tp!126456 () Bool)

(assert (=> b!455526 (= e!278757 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304))))) (value!28797 (_1!2901 (get!1618 lt!202304)))))) tp!126456))))

(declare-fun result!50298 () Bool)

(assert (=> tb!45701 (= result!50298 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304))))) (value!28797 (_1!2901 (get!1618 lt!202304))))) e!278757))))

(assert (= tb!45701 b!455526))

(declare-fun m!720969 () Bool)

(assert (=> b!455526 m!720969))

(declare-fun m!720971 () Bool)

(assert (=> tb!45701 m!720971))

(assert (=> d!173859 t!71327))

(declare-fun b_and!48981 () Bool)

(assert (= b_and!48951 (and (=> t!71327 result!50298) b_and!48981)))

(declare-fun tb!45703 () Bool)

(declare-fun t!71329 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71329) tb!45703))

(declare-fun result!50300 () Bool)

(assert (= result!50300 result!50298))

(assert (=> d!173859 t!71329))

(declare-fun b_and!48983 () Bool)

(assert (= b_and!48953 (and (=> t!71329 result!50300) b_and!48983)))

(declare-fun t!71331 () Bool)

(declare-fun tb!45705 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71331) tb!45705))

(declare-fun result!50302 () Bool)

(assert (= result!50302 result!50298))

(assert (=> d!173859 t!71331))

(declare-fun b_and!48985 () Bool)

(assert (= b_and!48955 (and (=> t!71331 result!50302) b_and!48985)))

(declare-fun tb!45707 () Bool)

(declare-fun t!71333 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71333) tb!45707))

(declare-fun result!50304 () Bool)

(assert (= result!50304 result!50298))

(assert (=> d!173859 t!71333))

(declare-fun b_and!48987 () Bool)

(assert (= b_and!48957 (and (=> t!71333 result!50304) b_and!48987)))

(declare-fun t!71335 () Bool)

(declare-fun tb!45709 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71335) tb!45709))

(declare-fun result!50306 () Bool)

(assert (= result!50306 result!50298))

(assert (=> d!173859 t!71335))

(declare-fun b_and!48989 () Bool)

(assert (= b_and!48959 (and (=> t!71335 result!50306) b_and!48989)))

(declare-fun m!720973 () Bool)

(assert (=> d!173859 m!720973))

(declare-fun m!720975 () Bool)

(assert (=> d!173859 m!720975))

(assert (=> b!454648 d!173859))

(assert (=> b!454648 d!173609))

(declare-fun b!455527 () Bool)

(declare-fun e!278759 () List!4431)

(assert (=> b!455527 (= e!278759 lt!202021)))

(declare-fun d!173861 () Bool)

(declare-fun e!278758 () Bool)

(assert (=> d!173861 e!278758))

(declare-fun res!202533 () Bool)

(assert (=> d!173861 (=> (not res!202533) (not e!278758))))

(declare-fun lt!202746 () List!4431)

(assert (=> d!173861 (= res!202533 (= (content!737 lt!202746) ((_ map or) (content!737 (t!71131 (++!1284 lt!202023 lt!202032))) (content!737 lt!202021))))))

(assert (=> d!173861 (= lt!202746 e!278759)))

(declare-fun c!92023 () Bool)

(assert (=> d!173861 (= c!92023 ((_ is Nil!4421) (t!71131 (++!1284 lt!202023 lt!202032))))))

(assert (=> d!173861 (= (++!1284 (t!71131 (++!1284 lt!202023 lt!202032)) lt!202021) lt!202746)))

(declare-fun b!455529 () Bool)

(declare-fun res!202534 () Bool)

(assert (=> b!455529 (=> (not res!202534) (not e!278758))))

(assert (=> b!455529 (= res!202534 (= (size!3623 lt!202746) (+ (size!3623 (t!71131 (++!1284 lt!202023 lt!202032))) (size!3623 lt!202021))))))

(declare-fun b!455530 () Bool)

(assert (=> b!455530 (= e!278758 (or (not (= lt!202021 Nil!4421)) (= lt!202746 (t!71131 (++!1284 lt!202023 lt!202032)))))))

(declare-fun b!455528 () Bool)

(assert (=> b!455528 (= e!278759 (Cons!4421 (h!9818 (t!71131 (++!1284 lt!202023 lt!202032))) (++!1284 (t!71131 (t!71131 (++!1284 lt!202023 lt!202032))) lt!202021)))))

(assert (= (and d!173861 c!92023) b!455527))

(assert (= (and d!173861 (not c!92023)) b!455528))

(assert (= (and d!173861 res!202533) b!455529))

(assert (= (and b!455529 res!202534) b!455530))

(declare-fun m!720977 () Bool)

(assert (=> d!173861 m!720977))

(declare-fun m!720979 () Bool)

(assert (=> d!173861 m!720979))

(assert (=> d!173861 m!719121))

(declare-fun m!720981 () Bool)

(assert (=> b!455529 m!720981))

(declare-fun m!720983 () Bool)

(assert (=> b!455529 m!720983))

(assert (=> b!455529 m!719127))

(declare-fun m!720985 () Bool)

(assert (=> b!455528 m!720985))

(assert (=> b!454612 d!173861))

(declare-fun b!455531 () Bool)

(declare-fun e!278760 () List!4431)

(assert (=> b!455531 (= e!278760 Nil!4421)))

(declare-fun b!455534 () Bool)

(declare-fun e!278761 () List!4431)

(assert (=> b!455534 (= e!278761 (++!1284 (list!1962 (left!3728 (c!91744 (seqFromList!1084 lt!202016)))) (list!1962 (right!4058 (c!91744 (seqFromList!1084 lt!202016))))))))

(declare-fun b!455533 () Bool)

(assert (=> b!455533 (= e!278761 (list!1966 (xs!4171 (c!91744 (seqFromList!1084 lt!202016)))))))

(declare-fun b!455532 () Bool)

(assert (=> b!455532 (= e!278760 e!278761)))

(declare-fun c!92025 () Bool)

(assert (=> b!455532 (= c!92025 ((_ is Leaf!2309) (c!91744 (seqFromList!1084 lt!202016))))))

(declare-fun d!173863 () Bool)

(declare-fun c!92024 () Bool)

(assert (=> d!173863 (= c!92024 ((_ is Empty!1540) (c!91744 (seqFromList!1084 lt!202016))))))

(assert (=> d!173863 (= (list!1962 (c!91744 (seqFromList!1084 lt!202016))) e!278760)))

(assert (= (and d!173863 c!92024) b!455531))

(assert (= (and d!173863 (not c!92024)) b!455532))

(assert (= (and b!455532 c!92025) b!455533))

(assert (= (and b!455532 (not c!92025)) b!455534))

(declare-fun m!720987 () Bool)

(assert (=> b!455534 m!720987))

(declare-fun m!720989 () Bool)

(assert (=> b!455534 m!720989))

(assert (=> b!455534 m!720987))

(assert (=> b!455534 m!720989))

(declare-fun m!720991 () Bool)

(assert (=> b!455534 m!720991))

(declare-fun m!720993 () Bool)

(assert (=> b!455533 m!720993))

(assert (=> d!173351 d!173863))

(declare-fun d!173865 () Bool)

(declare-fun c!92026 () Bool)

(assert (=> d!173865 (= c!92026 ((_ is Nil!4421) lt!202270))))

(declare-fun e!278762 () (InoxSet C!3088))

(assert (=> d!173865 (= (content!737 lt!202270) e!278762)))

(declare-fun b!455535 () Bool)

(assert (=> b!455535 (= e!278762 ((as const (Array C!3088 Bool)) false))))

(declare-fun b!455536 () Bool)

(assert (=> b!455536 (= e!278762 ((_ map or) (store ((as const (Array C!3088 Bool)) false) (h!9818 lt!202270) true) (content!737 (t!71131 lt!202270))))))

(assert (= (and d!173865 c!92026) b!455535))

(assert (= (and d!173865 (not c!92026)) b!455536))

(declare-fun m!720995 () Bool)

(assert (=> b!455536 m!720995))

(declare-fun m!720997 () Bool)

(assert (=> b!455536 m!720997))

(assert (=> d!173357 d!173865))

(assert (=> d!173357 d!173625))

(declare-fun d!173867 () Bool)

(declare-fun c!92027 () Bool)

(assert (=> d!173867 (= c!92027 ((_ is Nil!4421) lt!202030))))

(declare-fun e!278763 () (InoxSet C!3088))

(assert (=> d!173867 (= (content!737 lt!202030) e!278763)))

(declare-fun b!455537 () Bool)

(assert (=> b!455537 (= e!278763 ((as const (Array C!3088 Bool)) false))))

(declare-fun b!455538 () Bool)

(assert (=> b!455538 (= e!278763 ((_ map or) (store ((as const (Array C!3088 Bool)) false) (h!9818 lt!202030) true) (content!737 (t!71131 lt!202030))))))

(assert (= (and d!173867 c!92027) b!455537))

(assert (= (and d!173867 (not c!92027)) b!455538))

(declare-fun m!720999 () Bool)

(assert (=> b!455538 m!720999))

(declare-fun m!721001 () Bool)

(assert (=> b!455538 m!721001))

(assert (=> d!173357 d!173867))

(declare-fun lt!202747 () BalanceConc!3088)

(declare-fun b!455542 () Bool)

(declare-fun e!278764 () Bool)

(assert (=> b!455542 (= e!278764 (= (list!1959 lt!202747) (++!1284 (list!1959 call!31439) (list!1959 lt!202130))))))

(declare-fun b!455540 () Bool)

(declare-fun res!202535 () Bool)

(assert (=> b!455540 (=> (not res!202535) (not e!278764))))

(assert (=> b!455540 (= res!202535 (<= (height!233 (++!1287 (c!91744 call!31439) (c!91744 lt!202130))) (+ (max!0 (height!233 (c!91744 call!31439)) (height!233 (c!91744 lt!202130))) 1)))))

(declare-fun d!173869 () Bool)

(assert (=> d!173869 e!278764))

(declare-fun res!202537 () Bool)

(assert (=> d!173869 (=> (not res!202537) (not e!278764))))

(assert (=> d!173869 (= res!202537 (appendAssocInst!102 (c!91744 call!31439) (c!91744 lt!202130)))))

(assert (=> d!173869 (= lt!202747 (BalanceConc!3089 (++!1287 (c!91744 call!31439) (c!91744 lt!202130))))))

(assert (=> d!173869 (= (++!1286 call!31439 lt!202130) lt!202747)))

(declare-fun b!455541 () Bool)

(declare-fun res!202538 () Bool)

(assert (=> b!455541 (=> (not res!202538) (not e!278764))))

(assert (=> b!455541 (= res!202538 (>= (height!233 (++!1287 (c!91744 call!31439) (c!91744 lt!202130))) (max!0 (height!233 (c!91744 call!31439)) (height!233 (c!91744 lt!202130)))))))

(declare-fun b!455539 () Bool)

(declare-fun res!202536 () Bool)

(assert (=> b!455539 (=> (not res!202536) (not e!278764))))

(assert (=> b!455539 (= res!202536 (isBalanced!472 (++!1287 (c!91744 call!31439) (c!91744 lt!202130))))))

(assert (= (and d!173869 res!202537) b!455539))

(assert (= (and b!455539 res!202536) b!455540))

(assert (= (and b!455540 res!202535) b!455541))

(assert (= (and b!455541 res!202538) b!455542))

(declare-fun m!721003 () Bool)

(assert (=> b!455540 m!721003))

(declare-fun m!721005 () Bool)

(assert (=> b!455540 m!721005))

(declare-fun m!721007 () Bool)

(assert (=> b!455540 m!721007))

(declare-fun m!721009 () Bool)

(assert (=> b!455540 m!721009))

(declare-fun m!721011 () Bool)

(assert (=> b!455540 m!721011))

(assert (=> b!455540 m!721003))

(assert (=> b!455540 m!721009))

(assert (=> b!455540 m!721005))

(declare-fun m!721013 () Bool)

(assert (=> b!455542 m!721013))

(declare-fun m!721015 () Bool)

(assert (=> b!455542 m!721015))

(assert (=> b!455542 m!718739))

(assert (=> b!455542 m!721015))

(assert (=> b!455542 m!718739))

(declare-fun m!721017 () Bool)

(assert (=> b!455542 m!721017))

(assert (=> b!455539 m!721009))

(assert (=> b!455539 m!721009))

(declare-fun m!721019 () Bool)

(assert (=> b!455539 m!721019))

(assert (=> b!455541 m!721003))

(assert (=> b!455541 m!721005))

(assert (=> b!455541 m!721007))

(assert (=> b!455541 m!721009))

(assert (=> b!455541 m!721011))

(assert (=> b!455541 m!721003))

(assert (=> b!455541 m!721009))

(assert (=> b!455541 m!721005))

(declare-fun m!721021 () Bool)

(assert (=> d!173869 m!721021))

(assert (=> d!173869 m!721009))

(assert (=> b!454368 d!173869))

(assert (=> b!454399 d!173359))

(declare-fun b!455543 () Bool)

(declare-fun e!278767 () Option!1150)

(declare-fun lt!202748 () Option!1150)

(declare-fun lt!202749 () Option!1150)

(assert (=> b!455543 (= e!278767 (ite (and ((_ is None!1149) lt!202748) ((_ is None!1149) lt!202749)) None!1149 (ite ((_ is None!1149) lt!202749) lt!202748 (ite ((_ is None!1149) lt!202748) lt!202749 (ite (>= (size!3619 (_1!2901 (v!15470 lt!202748))) (size!3619 (_1!2901 (v!15470 lt!202749)))) lt!202748 lt!202749)))))))

(declare-fun call!31546 () Option!1150)

(assert (=> b!455543 (= lt!202748 call!31546)))

(assert (=> b!455543 (= lt!202749 (maxPrefix!461 thiss!17480 (t!71132 rules!1920) (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159)))))

(declare-fun b!455544 () Bool)

(declare-fun res!202540 () Bool)

(declare-fun e!278766 () Bool)

(assert (=> b!455544 (=> (not res!202540) (not e!278766))))

(declare-fun lt!202751 () Option!1150)

(assert (=> b!455544 (= res!202540 (matchR!401 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202751)))) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202751))))))))

(declare-fun b!455545 () Bool)

(declare-fun res!202541 () Bool)

(assert (=> b!455545 (=> (not res!202541) (not e!278766))))

(assert (=> b!455545 (= res!202541 (= (value!28797 (_1!2901 (get!1618 lt!202751))) (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202751)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202751)))))))))

(declare-fun b!455546 () Bool)

(assert (=> b!455546 (= e!278766 (contains!990 rules!1920 (rule!1550 (_1!2901 (get!1618 lt!202751)))))))

(declare-fun b!455547 () Bool)

(assert (=> b!455547 (= e!278767 call!31546)))

(declare-fun b!455548 () Bool)

(declare-fun e!278765 () Bool)

(assert (=> b!455548 (= e!278765 e!278766)))

(declare-fun res!202543 () Bool)

(assert (=> b!455548 (=> (not res!202543) (not e!278766))))

(assert (=> b!455548 (= res!202543 (isDefined!989 lt!202751))))

(declare-fun d!173871 () Bool)

(assert (=> d!173871 e!278765))

(declare-fun res!202542 () Bool)

(assert (=> d!173871 (=> res!202542 e!278765)))

(assert (=> d!173871 (= res!202542 (isEmpty!3390 lt!202751))))

(assert (=> d!173871 (= lt!202751 e!278767)))

(declare-fun c!92028 () Bool)

(assert (=> d!173871 (= c!92028 (and ((_ is Cons!4422) rules!1920) ((_ is Nil!4422) (t!71132 rules!1920))))))

(declare-fun lt!202750 () Unit!7961)

(declare-fun lt!202752 () Unit!7961)

(assert (=> d!173871 (= lt!202750 lt!202752)))

(assert (=> d!173871 (isPrefix!513 (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159) (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159))))

(assert (=> d!173871 (= lt!202752 (lemmaIsPrefixRefl!287 (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159) (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159)))))

(assert (=> d!173871 (rulesValidInductive!282 thiss!17480 rules!1920)))

(assert (=> d!173871 (= (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159)) lt!202751)))

(declare-fun b!455549 () Bool)

(declare-fun res!202545 () Bool)

(assert (=> b!455549 (=> (not res!202545) (not e!278766))))

(assert (=> b!455549 (= res!202545 (< (size!3623 (_2!2901 (get!1618 lt!202751))) (size!3623 (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159))))))

(declare-fun b!455550 () Bool)

(declare-fun res!202544 () Bool)

(assert (=> b!455550 (=> (not res!202544) (not e!278766))))

(assert (=> b!455550 (= res!202544 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202751)))) (_2!2901 (get!1618 lt!202751))) (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159)))))

(declare-fun b!455551 () Bool)

(declare-fun res!202539 () Bool)

(assert (=> b!455551 (=> (not res!202539) (not e!278766))))

(assert (=> b!455551 (= res!202539 (= (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202751)))) (originalCharacters!902 (_1!2901 (get!1618 lt!202751)))))))

(declare-fun bm!31541 () Bool)

(assert (=> bm!31541 (= call!31546 (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159)))))

(assert (= (and d!173871 c!92028) b!455547))

(assert (= (and d!173871 (not c!92028)) b!455543))

(assert (= (or b!455547 b!455543) bm!31541))

(assert (= (and d!173871 (not res!202542)) b!455548))

(assert (= (and b!455548 res!202543) b!455551))

(assert (= (and b!455551 res!202539) b!455549))

(assert (= (and b!455549 res!202545) b!455550))

(assert (= (and b!455550 res!202544) b!455545))

(assert (= (and b!455545 res!202541) b!455544))

(assert (= (and b!455544 res!202540) b!455546))

(declare-fun m!721023 () Bool)

(assert (=> b!455551 m!721023))

(declare-fun m!721025 () Bool)

(assert (=> b!455551 m!721025))

(assert (=> b!455551 m!721025))

(declare-fun m!721027 () Bool)

(assert (=> b!455551 m!721027))

(assert (=> b!455549 m!721023))

(declare-fun m!721029 () Bool)

(assert (=> b!455549 m!721029))

(assert (=> b!455549 m!718759))

(declare-fun m!721031 () Bool)

(assert (=> b!455549 m!721031))

(assert (=> b!455544 m!721023))

(assert (=> b!455544 m!721025))

(assert (=> b!455544 m!721025))

(assert (=> b!455544 m!721027))

(assert (=> b!455544 m!721027))

(declare-fun m!721033 () Bool)

(assert (=> b!455544 m!721033))

(assert (=> b!455550 m!721023))

(assert (=> b!455550 m!721025))

(assert (=> b!455550 m!721025))

(assert (=> b!455550 m!721027))

(assert (=> b!455550 m!721027))

(declare-fun m!721035 () Bool)

(assert (=> b!455550 m!721035))

(assert (=> b!455545 m!721023))

(declare-fun m!721037 () Bool)

(assert (=> b!455545 m!721037))

(assert (=> b!455545 m!721037))

(declare-fun m!721039 () Bool)

(assert (=> b!455545 m!721039))

(declare-fun m!721041 () Bool)

(assert (=> b!455548 m!721041))

(declare-fun m!721043 () Bool)

(assert (=> d!173871 m!721043))

(assert (=> d!173871 m!718759))

(assert (=> d!173871 m!718759))

(declare-fun m!721045 () Bool)

(assert (=> d!173871 m!721045))

(assert (=> d!173871 m!718759))

(assert (=> d!173871 m!718759))

(declare-fun m!721047 () Bool)

(assert (=> d!173871 m!721047))

(assert (=> d!173871 m!718921))

(assert (=> b!455546 m!721023))

(declare-fun m!721049 () Bool)

(assert (=> b!455546 m!721049))

(assert (=> bm!31541 m!718759))

(declare-fun m!721051 () Bool)

(assert (=> bm!31541 m!721051))

(assert (=> b!455543 m!718759))

(declare-fun m!721053 () Bool)

(assert (=> b!455543 m!721053))

(assert (=> b!454399 d!173871))

(assert (=> b!454399 d!173369))

(assert (=> b!454399 d!173371))

(declare-fun b!455552 () Bool)

(declare-fun e!278769 () List!4431)

(assert (=> b!455552 (= e!278769 lt!202159)))

(declare-fun d!173873 () Bool)

(declare-fun e!278768 () Bool)

(assert (=> d!173873 e!278768))

(declare-fun res!202546 () Bool)

(assert (=> d!173873 (=> (not res!202546) (not e!278768))))

(declare-fun lt!202753 () List!4431)

(assert (=> d!173873 (= res!202546 (= (content!737 lt!202753) ((_ map or) (content!737 (list!1959 (charsOf!502 (h!9820 tokens!465)))) (content!737 lt!202159))))))

(assert (=> d!173873 (= lt!202753 e!278769)))

(declare-fun c!92029 () Bool)

(assert (=> d!173873 (= c!92029 ((_ is Nil!4421) (list!1959 (charsOf!502 (h!9820 tokens!465)))))))

(assert (=> d!173873 (= (++!1284 (list!1959 (charsOf!502 (h!9820 tokens!465))) lt!202159) lt!202753)))

(declare-fun b!455554 () Bool)

(declare-fun res!202547 () Bool)

(assert (=> b!455554 (=> (not res!202547) (not e!278768))))

(assert (=> b!455554 (= res!202547 (= (size!3623 lt!202753) (+ (size!3623 (list!1959 (charsOf!502 (h!9820 tokens!465)))) (size!3623 lt!202159))))))

(declare-fun b!455555 () Bool)

(assert (=> b!455555 (= e!278768 (or (not (= lt!202159 Nil!4421)) (= lt!202753 (list!1959 (charsOf!502 (h!9820 tokens!465))))))))

(declare-fun b!455553 () Bool)

(assert (=> b!455553 (= e!278769 (Cons!4421 (h!9818 (list!1959 (charsOf!502 (h!9820 tokens!465)))) (++!1284 (t!71131 (list!1959 (charsOf!502 (h!9820 tokens!465)))) lt!202159)))))

(assert (= (and d!173873 c!92029) b!455552))

(assert (= (and d!173873 (not c!92029)) b!455553))

(assert (= (and d!173873 res!202546) b!455554))

(assert (= (and b!455554 res!202547) b!455555))

(declare-fun m!721055 () Bool)

(assert (=> d!173873 m!721055))

(assert (=> d!173873 m!718471))

(declare-fun m!721057 () Bool)

(assert (=> d!173873 m!721057))

(assert (=> d!173873 m!720027))

(declare-fun m!721059 () Bool)

(assert (=> b!455554 m!721059))

(assert (=> b!455554 m!718471))

(declare-fun m!721061 () Bool)

(assert (=> b!455554 m!721061))

(assert (=> b!455554 m!720033))

(declare-fun m!721063 () Bool)

(assert (=> b!455553 m!721063))

(assert (=> b!454399 d!173873))

(declare-fun d!173875 () Bool)

(assert (=> d!173875 (dynLambda!2680 lambda!13292 (h!9820 tokens!465))))

(declare-fun lt!202754 () Unit!7961)

(assert (=> d!173875 (= lt!202754 (choose!3431 tokens!465 lambda!13292 (h!9820 tokens!465)))))

(declare-fun e!278770 () Bool)

(assert (=> d!173875 e!278770))

(declare-fun res!202548 () Bool)

(assert (=> d!173875 (=> (not res!202548) (not e!278770))))

(assert (=> d!173875 (= res!202548 (forall!1280 tokens!465 lambda!13292))))

(assert (=> d!173875 (= (forallContained!412 tokens!465 lambda!13292 (h!9820 tokens!465)) lt!202754)))

(declare-fun b!455556 () Bool)

(assert (=> b!455556 (= e!278770 (contains!991 tokens!465 (h!9820 tokens!465)))))

(assert (= (and d!173875 res!202548) b!455556))

(declare-fun b_lambda!18871 () Bool)

(assert (=> (not b_lambda!18871) (not d!173875)))

(declare-fun m!721065 () Bool)

(assert (=> d!173875 m!721065))

(declare-fun m!721067 () Bool)

(assert (=> d!173875 m!721067))

(declare-fun m!721069 () Bool)

(assert (=> d!173875 m!721069))

(assert (=> b!455556 m!719657))

(assert (=> b!454399 d!173875))

(assert (=> d!173367 d!173379))

(declare-fun b!455557 () Bool)

(declare-fun e!278772 () List!4431)

(assert (=> b!455557 (= e!278772 (++!1284 lt!202032 lt!202021))))

(declare-fun d!173877 () Bool)

(declare-fun e!278771 () Bool)

(assert (=> d!173877 e!278771))

(declare-fun res!202549 () Bool)

(assert (=> d!173877 (=> (not res!202549) (not e!278771))))

(declare-fun lt!202755 () List!4431)

(assert (=> d!173877 (= res!202549 (= (content!737 lt!202755) ((_ map or) (content!737 lt!202023) (content!737 (++!1284 lt!202032 lt!202021)))))))

(assert (=> d!173877 (= lt!202755 e!278772)))

(declare-fun c!92030 () Bool)

(assert (=> d!173877 (= c!92030 ((_ is Nil!4421) lt!202023))))

(assert (=> d!173877 (= (++!1284 lt!202023 (++!1284 lt!202032 lt!202021)) lt!202755)))

(declare-fun b!455559 () Bool)

(declare-fun res!202550 () Bool)

(assert (=> b!455559 (=> (not res!202550) (not e!278771))))

(assert (=> b!455559 (= res!202550 (= (size!3623 lt!202755) (+ (size!3623 lt!202023) (size!3623 (++!1284 lt!202032 lt!202021)))))))

(declare-fun b!455560 () Bool)

(assert (=> b!455560 (= e!278771 (or (not (= (++!1284 lt!202032 lt!202021) Nil!4421)) (= lt!202755 lt!202023)))))

(declare-fun b!455558 () Bool)

(assert (=> b!455558 (= e!278772 (Cons!4421 (h!9818 lt!202023) (++!1284 (t!71131 lt!202023) (++!1284 lt!202032 lt!202021))))))

(assert (= (and d!173877 c!92030) b!455557))

(assert (= (and d!173877 (not c!92030)) b!455558))

(assert (= (and d!173877 res!202549) b!455559))

(assert (= (and b!455559 res!202550) b!455560))

(declare-fun m!721071 () Bool)

(assert (=> d!173877 m!721071))

(assert (=> d!173877 m!719079))

(assert (=> d!173877 m!718461))

(declare-fun m!721073 () Bool)

(assert (=> d!173877 m!721073))

(declare-fun m!721075 () Bool)

(assert (=> b!455559 m!721075))

(assert (=> b!455559 m!718903))

(assert (=> b!455559 m!718461))

(declare-fun m!721077 () Bool)

(assert (=> b!455559 m!721077))

(assert (=> b!455558 m!718461))

(declare-fun m!721079 () Bool)

(assert (=> b!455558 m!721079))

(assert (=> d!173367 d!173877))

(declare-fun d!173879 () Bool)

(assert (=> d!173879 (= (++!1284 (++!1284 lt!202023 lt!202032) lt!202021) (++!1284 lt!202023 (++!1284 lt!202032 lt!202021)))))

(assert (=> d!173879 true))

(declare-fun _$52!955 () Unit!7961)

(assert (=> d!173879 (= (choose!3429 lt!202023 lt!202032 lt!202021) _$52!955)))

(declare-fun bs!56371 () Bool)

(assert (= bs!56371 d!173879))

(assert (=> bs!56371 m!718467))

(assert (=> bs!56371 m!718467))

(assert (=> bs!56371 m!718475))

(assert (=> bs!56371 m!718461))

(assert (=> bs!56371 m!718461))

(assert (=> bs!56371 m!719193))

(assert (=> d!173367 d!173879))

(assert (=> d!173367 d!173361))

(assert (=> d!173367 d!173375))

(declare-fun d!173881 () Bool)

(assert (=> d!173881 true))

(declare-fun lambda!13333 () Int)

(declare-fun order!3915 () Int)

(declare-fun dynLambda!2684 (Int Int) Int)

(assert (=> d!173881 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2684 order!3915 lambda!13333))))

(declare-fun Forall2!187 (Int) Bool)

(assert (=> d!173881 (= (equivClasses!324 (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (Forall2!187 lambda!13333))))

(declare-fun bs!56374 () Bool)

(assert (= bs!56374 d!173881))

(declare-fun m!721091 () Bool)

(assert (=> bs!56374 m!721091))

(assert (=> b!454420 d!173881))

(declare-fun d!173891 () Bool)

(assert (=> d!173891 (= (list!1963 (_1!2903 lt!202329)) (list!1964 (c!91746 (_1!2903 lt!202329))))))

(declare-fun bs!56375 () Bool)

(assert (= bs!56375 d!173891))

(declare-fun m!721093 () Bool)

(assert (=> bs!56375 m!721093))

(assert (=> b!454684 d!173891))

(declare-fun b!455581 () Bool)

(declare-fun e!278784 () Bool)

(declare-fun e!278785 () Bool)

(assert (=> b!455581 (= e!278784 e!278785)))

(declare-fun res!202555 () Bool)

(declare-fun lt!202778 () tuple2!5378)

(assert (=> b!455581 (= res!202555 (< (size!3623 (_2!2905 lt!202778)) (size!3623 (list!1959 (seqFromList!1084 lt!202023)))))))

(assert (=> b!455581 (=> (not res!202555) (not e!278785))))

(declare-fun b!455582 () Bool)

(declare-fun e!278786 () tuple2!5378)

(declare-fun lt!202780 () Option!1150)

(declare-fun lt!202779 () tuple2!5378)

(assert (=> b!455582 (= e!278786 (tuple2!5379 (Cons!4423 (_1!2901 (v!15470 lt!202780)) (_1!2905 lt!202779)) (_2!2905 lt!202779)))))

(assert (=> b!455582 (= lt!202779 (lexList!291 thiss!17480 rules!1920 (_2!2901 (v!15470 lt!202780))))))

(declare-fun b!455583 () Bool)

(assert (=> b!455583 (= e!278786 (tuple2!5379 Nil!4423 (list!1959 (seqFromList!1084 lt!202023))))))

(declare-fun b!455584 () Bool)

(assert (=> b!455584 (= e!278785 (not (isEmpty!3384 (_1!2905 lt!202778))))))

(declare-fun b!455585 () Bool)

(assert (=> b!455585 (= e!278784 (= (_2!2905 lt!202778) (list!1959 (seqFromList!1084 lt!202023))))))

(declare-fun d!173893 () Bool)

(assert (=> d!173893 e!278784))

(declare-fun c!92039 () Bool)

(assert (=> d!173893 (= c!92039 (> (size!3626 (_1!2905 lt!202778)) 0))))

(assert (=> d!173893 (= lt!202778 e!278786)))

(declare-fun c!92038 () Bool)

(assert (=> d!173893 (= c!92038 ((_ is Some!1149) lt!202780))))

(assert (=> d!173893 (= lt!202780 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 lt!202023))))))

(assert (=> d!173893 (= (lexList!291 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 lt!202023))) lt!202778)))

(assert (= (and d!173893 c!92038) b!455582))

(assert (= (and d!173893 (not c!92038)) b!455583))

(assert (= (and d!173893 c!92039) b!455581))

(assert (= (and d!173893 (not c!92039)) b!455585))

(assert (= (and b!455581 res!202555) b!455584))

(declare-fun m!721095 () Bool)

(assert (=> b!455581 m!721095))

(assert (=> b!455581 m!719283))

(assert (=> b!455581 m!720057))

(declare-fun m!721097 () Bool)

(assert (=> b!455582 m!721097))

(declare-fun m!721099 () Bool)

(assert (=> b!455584 m!721099))

(declare-fun m!721101 () Bool)

(assert (=> d!173893 m!721101))

(assert (=> d!173893 m!719283))

(declare-fun m!721103 () Bool)

(assert (=> d!173893 m!721103))

(assert (=> b!454684 d!173893))

(declare-fun d!173895 () Bool)

(assert (=> d!173895 (= (list!1959 (seqFromList!1084 lt!202023)) (list!1962 (c!91744 (seqFromList!1084 lt!202023))))))

(declare-fun bs!56376 () Bool)

(assert (= bs!56376 d!173895))

(declare-fun m!721105 () Bool)

(assert (=> bs!56376 m!721105))

(assert (=> b!454684 d!173895))

(declare-fun d!173897 () Bool)

(declare-fun lt!202781 () Int)

(assert (=> d!173897 (>= lt!202781 0)))

(declare-fun e!278787 () Int)

(assert (=> d!173897 (= lt!202781 e!278787)))

(declare-fun c!92040 () Bool)

(assert (=> d!173897 (= c!92040 ((_ is Nil!4421) (originalCharacters!902 (h!9820 tokens!465))))))

(assert (=> d!173897 (= (size!3623 (originalCharacters!902 (h!9820 tokens!465))) lt!202781)))

(declare-fun b!455586 () Bool)

(assert (=> b!455586 (= e!278787 0)))

(declare-fun b!455587 () Bool)

(assert (=> b!455587 (= e!278787 (+ 1 (size!3623 (t!71131 (originalCharacters!902 (h!9820 tokens!465))))))))

(assert (= (and d!173897 c!92040) b!455586))

(assert (= (and d!173897 (not c!92040)) b!455587))

(declare-fun m!721107 () Bool)

(assert (=> b!455587 m!721107))

(assert (=> b!454640 d!173897))

(declare-fun bs!56377 () Bool)

(declare-fun d!173899 () Bool)

(assert (= bs!56377 (and d!173899 b!454621)))

(declare-fun lambda!13336 () Int)

(assert (=> bs!56377 (= lambda!13336 lambda!13301)))

(declare-fun bs!56378 () Bool)

(assert (= bs!56378 (and d!173899 d!173243)))

(assert (=> bs!56378 (not (= lambda!13336 lambda!13283))))

(declare-fun bs!56379 () Bool)

(assert (= bs!56379 (and d!173899 b!454399)))

(assert (=> bs!56379 (= lambda!13336 lambda!13292)))

(declare-fun bs!56380 () Bool)

(assert (= bs!56380 (and d!173899 d!173405)))

(assert (=> bs!56380 (= lambda!13336 lambda!13311)))

(declare-fun bs!56381 () Bool)

(assert (= bs!56381 (and d!173899 b!454602)))

(assert (=> bs!56381 (= lambda!13336 lambda!13299)))

(declare-fun bs!56382 () Bool)

(assert (= bs!56382 (and d!173899 b!454216)))

(assert (=> bs!56382 (not (= lambda!13336 lambda!13277))))

(declare-fun bs!56383 () Bool)

(assert (= bs!56383 (and d!173899 d!173433)))

(assert (=> bs!56383 (= lambda!13336 lambda!13313)))

(declare-fun bs!56384 () Bool)

(assert (= bs!56384 (and d!173899 b!454217)))

(assert (=> bs!56384 (= lambda!13336 lambda!13278)))

(declare-fun bs!56385 () Bool)

(assert (= bs!56385 (and d!173899 b!454367)))

(assert (=> bs!56385 (= lambda!13336 lambda!13284)))

(declare-fun bs!56386 () Bool)

(assert (= bs!56386 (and d!173899 d!173365)))

(assert (=> bs!56386 (not (= lambda!13336 lambda!13300))))

(declare-fun b!455596 () Bool)

(declare-fun e!278796 () Bool)

(assert (=> b!455596 (= e!278796 true)))

(declare-fun b!455595 () Bool)

(declare-fun e!278795 () Bool)

(assert (=> b!455595 (= e!278795 e!278796)))

(declare-fun b!455594 () Bool)

(declare-fun e!278794 () Bool)

(assert (=> b!455594 (= e!278794 e!278795)))

(assert (=> d!173899 e!278794))

(assert (= b!455595 b!455596))

(assert (= b!455594 b!455595))

(assert (= (and d!173899 ((_ is Cons!4422) rules!1920)) b!455594))

(assert (=> b!455596 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13336))))

(assert (=> b!455596 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13336))))

(assert (=> d!173899 true))

(declare-fun lt!202784 () Bool)

(assert (=> d!173899 (= lt!202784 (forall!1280 (list!1963 lt!202020) lambda!13336))))

(declare-fun e!278793 () Bool)

(assert (=> d!173899 (= lt!202784 e!278793)))

(declare-fun res!202560 () Bool)

(assert (=> d!173899 (=> res!202560 e!278793)))

(assert (=> d!173899 (= res!202560 (not ((_ is Cons!4423) (list!1963 lt!202020))))))

(assert (=> d!173899 (not (isEmpty!3387 rules!1920))))

(assert (=> d!173899 (= (rulesProduceEachTokenIndividuallyList!319 thiss!17480 rules!1920 (list!1963 lt!202020)) lt!202784)))

(declare-fun b!455592 () Bool)

(declare-fun e!278792 () Bool)

(assert (=> b!455592 (= e!278793 e!278792)))

(declare-fun res!202561 () Bool)

(assert (=> b!455592 (=> (not res!202561) (not e!278792))))

(assert (=> b!455592 (= res!202561 (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (h!9820 (list!1963 lt!202020))))))

(declare-fun b!455593 () Bool)

(assert (=> b!455593 (= e!278792 (rulesProduceEachTokenIndividuallyList!319 thiss!17480 rules!1920 (t!71133 (list!1963 lt!202020))))))

(assert (= (and d!173899 (not res!202560)) b!455592))

(assert (= (and b!455592 res!202561) b!455593))

(assert (=> d!173899 m!719143))

(declare-fun m!721109 () Bool)

(assert (=> d!173899 m!721109))

(assert (=> d!173899 m!718485))

(declare-fun m!721111 () Bool)

(assert (=> b!455592 m!721111))

(declare-fun m!721113 () Bool)

(assert (=> b!455593 m!721113))

(assert (=> b!454764 d!173899))

(declare-fun d!173901 () Bool)

(assert (=> d!173901 (= (list!1963 lt!202020) (list!1964 (c!91746 lt!202020)))))

(declare-fun bs!56387 () Bool)

(assert (= bs!56387 d!173901))

(declare-fun m!721115 () Bool)

(assert (=> bs!56387 m!721115))

(assert (=> b!454764 d!173901))

(declare-fun d!173903 () Bool)

(declare-fun lt!202787 () Bool)

(declare-fun content!740 (List!4432) (InoxSet Rule!1518))

(assert (=> d!173903 (= lt!202787 (select (content!740 rules!1920) (rule!1550 (_1!2901 (get!1618 lt!202304)))))))

(declare-fun e!278802 () Bool)

(assert (=> d!173903 (= lt!202787 e!278802)))

(declare-fun res!202567 () Bool)

(assert (=> d!173903 (=> (not res!202567) (not e!278802))))

(assert (=> d!173903 (= res!202567 ((_ is Cons!4422) rules!1920))))

(assert (=> d!173903 (= (contains!990 rules!1920 (rule!1550 (_1!2901 (get!1618 lt!202304)))) lt!202787)))

(declare-fun b!455601 () Bool)

(declare-fun e!278801 () Bool)

(assert (=> b!455601 (= e!278802 e!278801)))

(declare-fun res!202566 () Bool)

(assert (=> b!455601 (=> res!202566 e!278801)))

(assert (=> b!455601 (= res!202566 (= (h!9819 rules!1920) (rule!1550 (_1!2901 (get!1618 lt!202304)))))))

(declare-fun b!455602 () Bool)

(assert (=> b!455602 (= e!278801 (contains!990 (t!71132 rules!1920) (rule!1550 (_1!2901 (get!1618 lt!202304)))))))

(assert (= (and d!173903 res!202567) b!455601))

(assert (= (and b!455601 (not res!202566)) b!455602))

(declare-fun m!721117 () Bool)

(assert (=> d!173903 m!721117))

(declare-fun m!721119 () Bool)

(assert (=> d!173903 m!721119))

(declare-fun m!721121 () Bool)

(assert (=> b!455602 m!721121))

(assert (=> b!454644 d!173903))

(assert (=> b!454644 d!173609))

(declare-fun d!173905 () Bool)

(assert (=> d!173905 (= (isEmpty!3390 lt!202304) (not ((_ is Some!1149) lt!202304)))))

(assert (=> d!173389 d!173905))

(declare-fun b!455611 () Bool)

(declare-fun e!278811 () Bool)

(declare-fun e!278809 () Bool)

(assert (=> b!455611 (= e!278811 e!278809)))

(declare-fun res!202578 () Bool)

(assert (=> b!455611 (=> (not res!202578) (not e!278809))))

(assert (=> b!455611 (= res!202578 (not ((_ is Nil!4421) lt!202016)))))

(declare-fun b!455613 () Bool)

(assert (=> b!455613 (= e!278809 (isPrefix!513 (tail!637 lt!202016) (tail!637 lt!202016)))))

(declare-fun b!455614 () Bool)

(declare-fun e!278810 () Bool)

(assert (=> b!455614 (= e!278810 (>= (size!3623 lt!202016) (size!3623 lt!202016)))))

(declare-fun d!173907 () Bool)

(assert (=> d!173907 e!278810))

(declare-fun res!202579 () Bool)

(assert (=> d!173907 (=> res!202579 e!278810)))

(declare-fun lt!202790 () Bool)

(assert (=> d!173907 (= res!202579 (not lt!202790))))

(assert (=> d!173907 (= lt!202790 e!278811)))

(declare-fun res!202577 () Bool)

(assert (=> d!173907 (=> res!202577 e!278811)))

(assert (=> d!173907 (= res!202577 ((_ is Nil!4421) lt!202016))))

(assert (=> d!173907 (= (isPrefix!513 lt!202016 lt!202016) lt!202790)))

(declare-fun b!455612 () Bool)

(declare-fun res!202576 () Bool)

(assert (=> b!455612 (=> (not res!202576) (not e!278809))))

(assert (=> b!455612 (= res!202576 (= (head!1109 lt!202016) (head!1109 lt!202016)))))

(assert (= (and d!173907 (not res!202577)) b!455611))

(assert (= (and b!455611 res!202578) b!455612))

(assert (= (and b!455612 res!202576) b!455613))

(assert (= (and d!173907 (not res!202579)) b!455614))

(declare-fun m!721123 () Bool)

(assert (=> b!455613 m!721123))

(assert (=> b!455613 m!721123))

(assert (=> b!455613 m!721123))

(assert (=> b!455613 m!721123))

(declare-fun m!721125 () Bool)

(assert (=> b!455613 m!721125))

(assert (=> b!455614 m!719247))

(assert (=> b!455614 m!719247))

(declare-fun m!721127 () Bool)

(assert (=> b!455612 m!721127))

(assert (=> b!455612 m!721127))

(assert (=> d!173389 d!173907))

(declare-fun d!173909 () Bool)

(assert (=> d!173909 (isPrefix!513 lt!202016 lt!202016)))

(declare-fun lt!202793 () Unit!7961)

(declare-fun choose!3437 (List!4431 List!4431) Unit!7961)

(assert (=> d!173909 (= lt!202793 (choose!3437 lt!202016 lt!202016))))

(assert (=> d!173909 (= (lemmaIsPrefixRefl!287 lt!202016 lt!202016) lt!202793)))

(declare-fun bs!56388 () Bool)

(assert (= bs!56388 d!173909))

(assert (=> bs!56388 m!719261))

(declare-fun m!721129 () Bool)

(assert (=> bs!56388 m!721129))

(assert (=> d!173389 d!173909))

(declare-fun d!173911 () Bool)

(assert (=> d!173911 true))

(declare-fun lt!202796 () Bool)

(declare-fun lambda!13339 () Int)

(declare-fun forall!1284 (List!4432 Int) Bool)

(assert (=> d!173911 (= lt!202796 (forall!1284 rules!1920 lambda!13339))))

(declare-fun e!278817 () Bool)

(assert (=> d!173911 (= lt!202796 e!278817)))

(declare-fun res!202585 () Bool)

(assert (=> d!173911 (=> res!202585 e!278817)))

(assert (=> d!173911 (= res!202585 (not ((_ is Cons!4422) rules!1920)))))

(assert (=> d!173911 (= (rulesValidInductive!282 thiss!17480 rules!1920) lt!202796)))

(declare-fun b!455619 () Bool)

(declare-fun e!278816 () Bool)

(assert (=> b!455619 (= e!278817 e!278816)))

(declare-fun res!202584 () Bool)

(assert (=> b!455619 (=> (not res!202584) (not e!278816))))

(declare-fun ruleValid!134 (LexerInterface!745 Rule!1518) Bool)

(assert (=> b!455619 (= res!202584 (ruleValid!134 thiss!17480 (h!9819 rules!1920)))))

(declare-fun b!455620 () Bool)

(assert (=> b!455620 (= e!278816 (rulesValidInductive!282 thiss!17480 (t!71132 rules!1920)))))

(assert (= (and d!173911 (not res!202585)) b!455619))

(assert (= (and b!455619 res!202584) b!455620))

(declare-fun m!721131 () Bool)

(assert (=> d!173911 m!721131))

(declare-fun m!721133 () Bool)

(assert (=> b!455619 m!721133))

(declare-fun m!721135 () Bool)

(assert (=> b!455620 m!721135))

(assert (=> d!173389 d!173911))

(declare-fun d!173913 () Bool)

(declare-fun lt!202797 () Int)

(assert (=> d!173913 (>= lt!202797 0)))

(declare-fun e!278818 () Int)

(assert (=> d!173913 (= lt!202797 e!278818)))

(declare-fun c!92041 () Bool)

(assert (=> d!173913 (= c!92041 ((_ is Nil!4421) lt!202300))))

(assert (=> d!173913 (= (size!3623 lt!202300) lt!202797)))

(declare-fun b!455623 () Bool)

(assert (=> b!455623 (= e!278818 0)))

(declare-fun b!455624 () Bool)

(assert (=> b!455624 (= e!278818 (+ 1 (size!3623 (t!71131 lt!202300))))))

(assert (= (and d!173913 c!92041) b!455623))

(assert (= (and d!173913 (not c!92041)) b!455624))

(declare-fun m!721137 () Bool)

(assert (=> b!455624 m!721137))

(assert (=> b!454636 d!173913))

(declare-fun d!173915 () Bool)

(declare-fun lt!202798 () Int)

(assert (=> d!173915 (>= lt!202798 0)))

(declare-fun e!278819 () Int)

(assert (=> d!173915 (= lt!202798 e!278819)))

(declare-fun c!92042 () Bool)

(assert (=> d!173915 (= c!92042 ((_ is Nil!4421) lt!202032))))

(assert (=> d!173915 (= (size!3623 lt!202032) lt!202798)))

(declare-fun b!455625 () Bool)

(assert (=> b!455625 (= e!278819 0)))

(declare-fun b!455626 () Bool)

(assert (=> b!455626 (= e!278819 (+ 1 (size!3623 (t!71131 lt!202032))))))

(assert (= (and d!173915 c!92042) b!455625))

(assert (= (and d!173915 (not c!92042)) b!455626))

(assert (=> b!455626 m!720133))

(assert (=> b!454636 d!173915))

(assert (=> b!454636 d!173849))

(declare-fun d!173917 () Bool)

(declare-fun res!202586 () Bool)

(declare-fun e!278820 () Bool)

(assert (=> d!173917 (=> res!202586 e!278820)))

(assert (=> d!173917 (= res!202586 ((_ is Nil!4423) (list!1963 lt!202020)))))

(assert (=> d!173917 (= (forall!1280 (list!1963 lt!202020) lambda!13313) e!278820)))

(declare-fun b!455627 () Bool)

(declare-fun e!278821 () Bool)

(assert (=> b!455627 (= e!278820 e!278821)))

(declare-fun res!202587 () Bool)

(assert (=> b!455627 (=> (not res!202587) (not e!278821))))

(assert (=> b!455627 (= res!202587 (dynLambda!2680 lambda!13313 (h!9820 (list!1963 lt!202020))))))

(declare-fun b!455628 () Bool)

(assert (=> b!455628 (= e!278821 (forall!1280 (t!71133 (list!1963 lt!202020)) lambda!13313))))

(assert (= (and d!173917 (not res!202586)) b!455627))

(assert (= (and b!455627 res!202587) b!455628))

(declare-fun b_lambda!18873 () Bool)

(assert (=> (not b_lambda!18873) (not b!455627)))

(declare-fun m!721139 () Bool)

(assert (=> b!455627 m!721139))

(declare-fun m!721141 () Bool)

(assert (=> b!455628 m!721141))

(assert (=> d!173433 d!173917))

(assert (=> d!173433 d!173901))

(declare-fun d!173919 () Bool)

(declare-fun lt!202841 () Bool)

(assert (=> d!173919 (= lt!202841 (forall!1280 (list!1963 lt!202020) lambda!13313))))

(declare-fun forall!1285 (Conc!1541 Int) Bool)

(assert (=> d!173919 (= lt!202841 (forall!1285 (c!91746 lt!202020) lambda!13313))))

(assert (=> d!173919 (= (forall!1282 lt!202020 lambda!13313) lt!202841)))

(declare-fun bs!56389 () Bool)

(assert (= bs!56389 d!173919))

(assert (=> bs!56389 m!719143))

(assert (=> bs!56389 m!719143))

(assert (=> bs!56389 m!719485))

(declare-fun m!721143 () Bool)

(assert (=> bs!56389 m!721143))

(assert (=> d!173433 d!173919))

(assert (=> d!173433 d!173287))

(assert (=> bm!31445 d!173371))

(declare-fun b!455637 () Bool)

(declare-fun e!278826 () Bool)

(declare-fun e!278827 () Bool)

(assert (=> b!455637 (= e!278826 e!278827)))

(declare-fun res!202592 () Bool)

(assert (=> b!455637 (=> (not res!202592) (not e!278827))))

(declare-fun lt!202856 () Option!1151)

(assert (=> b!455637 (= res!202592 (= (_1!2902 (get!1620 lt!202856)) (_1!2901 (get!1618 (maxPrefix!461 thiss!17480 (t!71132 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))))

(declare-fun b!455638 () Bool)

(declare-fun e!278829 () Bool)

(assert (=> b!455638 (= e!278829 (= (list!1959 (_2!2902 (get!1620 lt!202856))) (_2!2901 (get!1618 (maxPrefixZipper!190 thiss!17480 (t!71132 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))))

(declare-fun b!455639 () Bool)

(assert (=> b!455639 (= e!278827 (= (list!1959 (_2!2902 (get!1620 lt!202856))) (_2!2901 (get!1618 (maxPrefix!461 thiss!17480 (t!71132 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))))

(declare-fun d!173921 () Bool)

(declare-fun e!278830 () Bool)

(assert (=> d!173921 e!278830))

(declare-fun res!202593 () Bool)

(assert (=> d!173921 (=> (not res!202593) (not e!278830))))

(assert (=> d!173921 (= res!202593 (= (isDefined!990 lt!202856) (isDefined!989 (maxPrefixZipper!190 thiss!17480 (t!71132 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))))

(declare-fun e!278828 () Option!1151)

(assert (=> d!173921 (= lt!202856 e!278828)))

(declare-fun c!92047 () Bool)

(assert (=> d!173921 (= c!92047 (and ((_ is Cons!4422) (t!71132 rules!1920)) ((_ is Nil!4422) (t!71132 (t!71132 rules!1920)))))))

(declare-fun lt!202858 () Unit!7961)

(declare-fun lt!202864 () Unit!7961)

(assert (=> d!173921 (= lt!202858 lt!202864)))

(declare-fun lt!202857 () List!4431)

(declare-fun lt!202863 () List!4431)

(assert (=> d!173921 (isPrefix!513 lt!202857 lt!202863)))

(assert (=> d!173921 (= lt!202864 (lemmaIsPrefixRefl!287 lt!202857 lt!202863))))

(assert (=> d!173921 (= lt!202863 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (=> d!173921 (= lt!202857 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (=> d!173921 (rulesValidInductive!282 thiss!17480 (t!71132 rules!1920))))

(assert (=> d!173921 (= (maxPrefixZipperSequence!424 thiss!17480 (t!71132 rules!1920) (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))) lt!202856)))

(declare-fun b!455640 () Bool)

(declare-fun call!31550 () Option!1151)

(assert (=> b!455640 (= e!278828 call!31550)))

(declare-fun bm!31545 () Bool)

(assert (=> bm!31545 (= call!31550 (maxPrefixOneRuleZipperSequence!191 thiss!17480 (h!9819 (t!71132 rules!1920)) (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(declare-fun b!455641 () Bool)

(declare-fun e!278831 () Bool)

(assert (=> b!455641 (= e!278831 e!278829)))

(declare-fun res!202589 () Bool)

(assert (=> b!455641 (=> (not res!202589) (not e!278829))))

(assert (=> b!455641 (= res!202589 (= (_1!2902 (get!1620 lt!202856)) (_1!2901 (get!1618 (maxPrefixZipper!190 thiss!17480 (t!71132 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))))

(declare-fun b!455642 () Bool)

(declare-fun lt!202859 () Option!1151)

(declare-fun lt!202862 () Option!1151)

(assert (=> b!455642 (= e!278828 (ite (and ((_ is None!1150) lt!202859) ((_ is None!1150) lt!202862)) None!1150 (ite ((_ is None!1150) lt!202862) lt!202859 (ite ((_ is None!1150) lt!202859) lt!202862 (ite (>= (size!3619 (_1!2902 (v!15471 lt!202859))) (size!3619 (_1!2902 (v!15471 lt!202862)))) lt!202859 lt!202862)))))))

(assert (=> b!455642 (= lt!202859 call!31550)))

(assert (=> b!455642 (= lt!202862 (maxPrefixZipperSequence!424 thiss!17480 (t!71132 (t!71132 rules!1920)) (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(declare-fun b!455643 () Bool)

(declare-fun res!202590 () Bool)

(assert (=> b!455643 (=> (not res!202590) (not e!278830))))

(assert (=> b!455643 (= res!202590 e!278831)))

(declare-fun res!202591 () Bool)

(assert (=> b!455643 (=> res!202591 e!278831)))

(assert (=> b!455643 (= res!202591 (not (isDefined!990 lt!202856)))))

(declare-fun b!455644 () Bool)

(assert (=> b!455644 (= e!278830 e!278826)))

(declare-fun res!202588 () Bool)

(assert (=> b!455644 (=> res!202588 e!278826)))

(assert (=> b!455644 (= res!202588 (not (isDefined!990 lt!202856)))))

(assert (= (and d!173921 c!92047) b!455640))

(assert (= (and d!173921 (not c!92047)) b!455642))

(assert (= (or b!455640 b!455642) bm!31545))

(assert (= (and d!173921 res!202593) b!455643))

(assert (= (and b!455643 (not res!202591)) b!455641))

(assert (= (and b!455641 res!202589) b!455638))

(assert (= (and b!455643 res!202590) b!455644))

(assert (= (and b!455644 (not res!202588)) b!455637))

(assert (= (and b!455637 res!202592) b!455639))

(assert (=> b!455642 m!718489))

(declare-fun m!721145 () Bool)

(assert (=> b!455642 m!721145))

(assert (=> bm!31545 m!718489))

(declare-fun m!721147 () Bool)

(assert (=> bm!31545 m!721147))

(declare-fun m!721149 () Bool)

(assert (=> d!173921 m!721149))

(declare-fun m!721151 () Bool)

(assert (=> d!173921 m!721151))

(assert (=> d!173921 m!719631))

(assert (=> d!173921 m!720143))

(declare-fun m!721153 () Bool)

(assert (=> d!173921 m!721153))

(assert (=> d!173921 m!718489))

(assert (=> d!173921 m!719631))

(assert (=> d!173921 m!720143))

(declare-fun m!721155 () Bool)

(assert (=> d!173921 m!721155))

(assert (=> d!173921 m!721135))

(declare-fun m!721157 () Bool)

(assert (=> b!455637 m!721157))

(assert (=> b!455637 m!718489))

(assert (=> b!455637 m!719631))

(assert (=> b!455637 m!719631))

(declare-fun m!721159 () Bool)

(assert (=> b!455637 m!721159))

(assert (=> b!455637 m!721159))

(declare-fun m!721161 () Bool)

(assert (=> b!455637 m!721161))

(assert (=> b!455644 m!721149))

(assert (=> b!455639 m!721157))

(assert (=> b!455639 m!721159))

(assert (=> b!455639 m!721161))

(declare-fun m!721163 () Bool)

(assert (=> b!455639 m!721163))

(assert (=> b!455639 m!718489))

(assert (=> b!455639 m!719631))

(assert (=> b!455639 m!719631))

(assert (=> b!455639 m!721159))

(assert (=> b!455643 m!721149))

(assert (=> b!455641 m!721157))

(assert (=> b!455641 m!718489))

(assert (=> b!455641 m!719631))

(assert (=> b!455641 m!719631))

(assert (=> b!455641 m!720143))

(assert (=> b!455641 m!720143))

(declare-fun m!721165 () Bool)

(assert (=> b!455641 m!721165))

(assert (=> b!455638 m!720143))

(assert (=> b!455638 m!721165))

(assert (=> b!455638 m!721157))

(assert (=> b!455638 m!719631))

(assert (=> b!455638 m!720143))

(assert (=> b!455638 m!718489))

(assert (=> b!455638 m!719631))

(assert (=> b!455638 m!721163))

(assert (=> b!454963 d!173921))

(declare-fun d!173923 () Bool)

(declare-fun c!92050 () Bool)

(assert (=> d!173923 (= c!92050 ((_ is Nil!4421) lt!202277))))

(declare-fun e!278834 () (InoxSet C!3088))

(assert (=> d!173923 (= (content!737 lt!202277) e!278834)))

(declare-fun b!455649 () Bool)

(assert (=> b!455649 (= e!278834 ((as const (Array C!3088 Bool)) false))))

(declare-fun b!455650 () Bool)

(assert (=> b!455650 (= e!278834 ((_ map or) (store ((as const (Array C!3088 Bool)) false) (h!9818 lt!202277) true) (content!737 (t!71131 lt!202277))))))

(assert (= (and d!173923 c!92050) b!455649))

(assert (= (and d!173923 (not c!92050)) b!455650))

(declare-fun m!721167 () Bool)

(assert (=> b!455650 m!721167))

(declare-fun m!721169 () Bool)

(assert (=> b!455650 m!721169))

(assert (=> d!173361 d!173923))

(declare-fun d!173925 () Bool)

(declare-fun c!92051 () Bool)

(assert (=> d!173925 (= c!92051 ((_ is Nil!4421) (++!1284 lt!202023 lt!202032)))))

(declare-fun e!278837 () (InoxSet C!3088))

(assert (=> d!173925 (= (content!737 (++!1284 lt!202023 lt!202032)) e!278837)))

(declare-fun b!455653 () Bool)

(assert (=> b!455653 (= e!278837 ((as const (Array C!3088 Bool)) false))))

(declare-fun b!455654 () Bool)

(assert (=> b!455654 (= e!278837 ((_ map or) (store ((as const (Array C!3088 Bool)) false) (h!9818 (++!1284 lt!202023 lt!202032)) true) (content!737 (t!71131 (++!1284 lt!202023 lt!202032)))))))

(assert (= (and d!173925 c!92051) b!455653))

(assert (= (and d!173925 (not c!92051)) b!455654))

(declare-fun m!721171 () Bool)

(assert (=> b!455654 m!721171))

(assert (=> b!455654 m!720979))

(assert (=> d!173361 d!173925))

(assert (=> d!173361 d!173627))

(declare-fun d!173927 () Bool)

(declare-fun lt!202877 () Bool)

(assert (=> d!173927 (= lt!202877 (isEmpty!3386 (list!1959 (_2!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465))))))))))

(assert (=> d!173927 (= lt!202877 (isEmpty!3396 (c!91744 (_2!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465))))))))))

(assert (=> d!173927 (= (isEmpty!3391 (_2!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)))))) lt!202877)))

(declare-fun bs!56390 () Bool)

(assert (= bs!56390 d!173927))

(declare-fun m!721173 () Bool)

(assert (=> bs!56390 m!721173))

(assert (=> bs!56390 m!721173))

(declare-fun m!721175 () Bool)

(assert (=> bs!56390 m!721175))

(declare-fun m!721177 () Bool)

(assert (=> bs!56390 m!721177))

(assert (=> b!454557 d!173927))

(assert (=> b!454557 d!173579))

(assert (=> b!454557 d!173583))

(assert (=> b!454557 d!173319))

(declare-fun b!455655 () Bool)

(declare-fun e!278839 () List!4431)

(assert (=> b!455655 (= e!278839 lt!202274)))

(declare-fun d!173929 () Bool)

(declare-fun e!278838 () Bool)

(assert (=> d!173929 e!278838))

(declare-fun res!202596 () Bool)

(assert (=> d!173929 (=> (not res!202596) (not e!278838))))

(declare-fun lt!202878 () List!4431)

(assert (=> d!173929 (= res!202596 (= (content!737 lt!202878) ((_ map or) (content!737 call!31475) (content!737 lt!202274))))))

(assert (=> d!173929 (= lt!202878 e!278839)))

(declare-fun c!92052 () Bool)

(assert (=> d!173929 (= c!92052 ((_ is Nil!4421) call!31475))))

(assert (=> d!173929 (= (++!1284 call!31475 lt!202274) lt!202878)))

(declare-fun b!455657 () Bool)

(declare-fun res!202597 () Bool)

(assert (=> b!455657 (=> (not res!202597) (not e!278838))))

(assert (=> b!455657 (= res!202597 (= (size!3623 lt!202878) (+ (size!3623 call!31475) (size!3623 lt!202274))))))

(declare-fun b!455658 () Bool)

(assert (=> b!455658 (= e!278838 (or (not (= lt!202274 Nil!4421)) (= lt!202878 call!31475)))))

(declare-fun b!455656 () Bool)

(assert (=> b!455656 (= e!278839 (Cons!4421 (h!9818 call!31475) (++!1284 (t!71131 call!31475) lt!202274)))))

(assert (= (and d!173929 c!92052) b!455655))

(assert (= (and d!173929 (not c!92052)) b!455656))

(assert (= (and d!173929 res!202596) b!455657))

(assert (= (and b!455657 res!202597) b!455658))

(declare-fun m!721179 () Bool)

(assert (=> d!173929 m!721179))

(declare-fun m!721181 () Bool)

(assert (=> d!173929 m!721181))

(declare-fun m!721183 () Bool)

(assert (=> d!173929 m!721183))

(declare-fun m!721185 () Bool)

(assert (=> b!455657 m!721185))

(declare-fun m!721187 () Bool)

(assert (=> b!455657 m!721187))

(declare-fun m!721189 () Bool)

(assert (=> b!455657 m!721189))

(declare-fun m!721191 () Bool)

(assert (=> b!455656 m!721191))

(assert (=> b!454604 d!173929))

(declare-fun d!173931 () Bool)

(assert (=> d!173931 (= (inv!5492 (tag!1119 (h!9819 (t!71132 rules!1920)))) (= (mod (str.len (value!28796 (tag!1119 (h!9819 (t!71132 rules!1920))))) 2) 0))))

(assert (=> b!455012 d!173931))

(declare-fun d!173933 () Bool)

(declare-fun res!202598 () Bool)

(declare-fun e!278840 () Bool)

(assert (=> d!173933 (=> (not res!202598) (not e!278840))))

(assert (=> d!173933 (= res!202598 (semiInverseModEq!341 (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920))))))))

(assert (=> d!173933 (= (inv!5495 (transformation!859 (h!9819 (t!71132 rules!1920)))) e!278840)))

(declare-fun b!455659 () Bool)

(assert (=> b!455659 (= e!278840 (equivClasses!324 (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920))))))))

(assert (= (and d!173933 res!202598) b!455659))

(declare-fun m!721193 () Bool)

(assert (=> d!173933 m!721193))

(declare-fun m!721195 () Bool)

(assert (=> b!455659 m!721195))

(assert (=> b!455012 d!173933))

(assert (=> b!454960 d!173639))

(assert (=> b!454960 d!173829))

(declare-fun b!455660 () Bool)

(declare-fun e!278843 () Option!1150)

(declare-fun lt!202879 () Option!1150)

(declare-fun lt!202880 () Option!1150)

(assert (=> b!455660 (= e!278843 (ite (and ((_ is None!1149) lt!202879) ((_ is None!1149) lt!202880)) None!1149 (ite ((_ is None!1149) lt!202880) lt!202879 (ite ((_ is None!1149) lt!202879) lt!202880 (ite (>= (size!3619 (_1!2901 (v!15470 lt!202879))) (size!3619 (_1!2901 (v!15470 lt!202880)))) lt!202879 lt!202880)))))))

(declare-fun call!31551 () Option!1150)

(assert (=> b!455660 (= lt!202879 call!31551)))

(assert (=> b!455660 (= lt!202880 (maxPrefix!461 thiss!17480 (t!71132 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))

(declare-fun b!455661 () Bool)

(declare-fun res!202600 () Bool)

(declare-fun e!278842 () Bool)

(assert (=> b!455661 (=> (not res!202600) (not e!278842))))

(declare-fun lt!202882 () Option!1150)

(assert (=> b!455661 (= res!202600 (matchR!401 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202882)))) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202882))))))))

(declare-fun b!455662 () Bool)

(declare-fun res!202601 () Bool)

(assert (=> b!455662 (=> (not res!202601) (not e!278842))))

(assert (=> b!455662 (= res!202601 (= (value!28797 (_1!2901 (get!1618 lt!202882))) (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202882)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202882)))))))))

(declare-fun b!455663 () Bool)

(assert (=> b!455663 (= e!278842 (contains!990 rules!1920 (rule!1550 (_1!2901 (get!1618 lt!202882)))))))

(declare-fun b!455664 () Bool)

(assert (=> b!455664 (= e!278843 call!31551)))

(declare-fun b!455665 () Bool)

(declare-fun e!278841 () Bool)

(assert (=> b!455665 (= e!278841 e!278842)))

(declare-fun res!202603 () Bool)

(assert (=> b!455665 (=> (not res!202603) (not e!278842))))

(assert (=> b!455665 (= res!202603 (isDefined!989 lt!202882))))

(declare-fun d!173935 () Bool)

(assert (=> d!173935 e!278841))

(declare-fun res!202602 () Bool)

(assert (=> d!173935 (=> res!202602 e!278841)))

(assert (=> d!173935 (= res!202602 (isEmpty!3390 lt!202882))))

(assert (=> d!173935 (= lt!202882 e!278843)))

(declare-fun c!92053 () Bool)

(assert (=> d!173935 (= c!92053 (and ((_ is Cons!4422) rules!1920) ((_ is Nil!4422) (t!71132 rules!1920))))))

(declare-fun lt!202881 () Unit!7961)

(declare-fun lt!202883 () Unit!7961)

(assert (=> d!173935 (= lt!202881 lt!202883)))

(assert (=> d!173935 (isPrefix!513 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (=> d!173935 (= lt!202883 (lemmaIsPrefixRefl!287 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))

(assert (=> d!173935 (rulesValidInductive!282 thiss!17480 rules!1920)))

(assert (=> d!173935 (= (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))) lt!202882)))

(declare-fun b!455666 () Bool)

(declare-fun res!202605 () Bool)

(assert (=> b!455666 (=> (not res!202605) (not e!278842))))

(assert (=> b!455666 (= res!202605 (< (size!3623 (_2!2901 (get!1618 lt!202882))) (size!3623 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))

(declare-fun b!455667 () Bool)

(declare-fun res!202604 () Bool)

(assert (=> b!455667 (=> (not res!202604) (not e!278842))))

(assert (=> b!455667 (= res!202604 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202882)))) (_2!2901 (get!1618 lt!202882))) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))

(declare-fun b!455668 () Bool)

(declare-fun res!202599 () Bool)

(assert (=> b!455668 (=> (not res!202599) (not e!278842))))

(assert (=> b!455668 (= res!202599 (= (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202882)))) (originalCharacters!902 (_1!2901 (get!1618 lt!202882)))))))

(declare-fun bm!31546 () Bool)

(assert (=> bm!31546 (= call!31551 (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))

(assert (= (and d!173935 c!92053) b!455664))

(assert (= (and d!173935 (not c!92053)) b!455660))

(assert (= (or b!455664 b!455660) bm!31546))

(assert (= (and d!173935 (not res!202602)) b!455665))

(assert (= (and b!455665 res!202603) b!455668))

(assert (= (and b!455668 res!202599) b!455666))

(assert (= (and b!455666 res!202605) b!455667))

(assert (= (and b!455667 res!202604) b!455662))

(assert (= (and b!455662 res!202601) b!455661))

(assert (= (and b!455661 res!202600) b!455663))

(declare-fun m!721197 () Bool)

(assert (=> b!455668 m!721197))

(declare-fun m!721199 () Bool)

(assert (=> b!455668 m!721199))

(assert (=> b!455668 m!721199))

(declare-fun m!721201 () Bool)

(assert (=> b!455668 m!721201))

(assert (=> b!455666 m!721197))

(declare-fun m!721203 () Bool)

(assert (=> b!455666 m!721203))

(assert (=> b!455666 m!719631))

(declare-fun m!721205 () Bool)

(assert (=> b!455666 m!721205))

(assert (=> b!455661 m!721197))

(assert (=> b!455661 m!721199))

(assert (=> b!455661 m!721199))

(assert (=> b!455661 m!721201))

(assert (=> b!455661 m!721201))

(declare-fun m!721207 () Bool)

(assert (=> b!455661 m!721207))

(assert (=> b!455667 m!721197))

(assert (=> b!455667 m!721199))

(assert (=> b!455667 m!721199))

(assert (=> b!455667 m!721201))

(assert (=> b!455667 m!721201))

(declare-fun m!721209 () Bool)

(assert (=> b!455667 m!721209))

(assert (=> b!455662 m!721197))

(declare-fun m!721211 () Bool)

(assert (=> b!455662 m!721211))

(assert (=> b!455662 m!721211))

(declare-fun m!721213 () Bool)

(assert (=> b!455662 m!721213))

(declare-fun m!721215 () Bool)

(assert (=> b!455665 m!721215))

(declare-fun m!721217 () Bool)

(assert (=> d!173935 m!721217))

(assert (=> d!173935 m!719631))

(assert (=> d!173935 m!719631))

(assert (=> d!173935 m!720137))

(assert (=> d!173935 m!719631))

(assert (=> d!173935 m!719631))

(assert (=> d!173935 m!720139))

(assert (=> d!173935 m!718921))

(assert (=> b!455663 m!721197))

(declare-fun m!721219 () Bool)

(assert (=> b!455663 m!721219))

(assert (=> bm!31546 m!719631))

(declare-fun m!721221 () Bool)

(assert (=> bm!31546 m!721221))

(assert (=> b!455660 m!719631))

(assert (=> b!455660 m!721159))

(assert (=> b!454960 d!173935))

(declare-fun d!173937 () Bool)

(assert (=> d!173937 (= (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))) (v!15470 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))

(assert (=> b!454960 d!173937))

(assert (=> b!454960 d!173645))

(declare-fun bs!56391 () Bool)

(declare-fun d!173939 () Bool)

(assert (= bs!56391 (and d!173939 b!454621)))

(declare-fun lambda!13340 () Int)

(assert (=> bs!56391 (= lambda!13340 lambda!13301)))

(declare-fun bs!56392 () Bool)

(assert (= bs!56392 (and d!173939 d!173243)))

(assert (=> bs!56392 (not (= lambda!13340 lambda!13283))))

(declare-fun bs!56393 () Bool)

(assert (= bs!56393 (and d!173939 b!454399)))

(assert (=> bs!56393 (= lambda!13340 lambda!13292)))

(declare-fun bs!56394 () Bool)

(assert (= bs!56394 (and d!173939 d!173405)))

(assert (=> bs!56394 (= lambda!13340 lambda!13311)))

(declare-fun bs!56395 () Bool)

(assert (= bs!56395 (and d!173939 b!454602)))

(assert (=> bs!56395 (= lambda!13340 lambda!13299)))

(declare-fun bs!56396 () Bool)

(assert (= bs!56396 (and d!173939 b!454216)))

(assert (=> bs!56396 (not (= lambda!13340 lambda!13277))))

(declare-fun bs!56397 () Bool)

(assert (= bs!56397 (and d!173939 d!173433)))

(assert (=> bs!56397 (= lambda!13340 lambda!13313)))

(declare-fun bs!56398 () Bool)

(assert (= bs!56398 (and d!173939 d!173899)))

(assert (=> bs!56398 (= lambda!13340 lambda!13336)))

(declare-fun bs!56399 () Bool)

(assert (= bs!56399 (and d!173939 b!454217)))

(assert (=> bs!56399 (= lambda!13340 lambda!13278)))

(declare-fun bs!56400 () Bool)

(assert (= bs!56400 (and d!173939 b!454367)))

(assert (=> bs!56400 (= lambda!13340 lambda!13284)))

(declare-fun bs!56401 () Bool)

(assert (= bs!56401 (and d!173939 d!173365)))

(assert (=> bs!56401 (not (= lambda!13340 lambda!13300))))

(declare-fun b!455673 () Bool)

(declare-fun e!278848 () Bool)

(assert (=> b!455673 (= e!278848 true)))

(declare-fun b!455672 () Bool)

(declare-fun e!278847 () Bool)

(assert (=> b!455672 (= e!278847 e!278848)))

(declare-fun b!455671 () Bool)

(declare-fun e!278846 () Bool)

(assert (=> b!455671 (= e!278846 e!278847)))

(assert (=> d!173939 e!278846))

(assert (= b!455672 b!455673))

(assert (= b!455671 b!455672))

(assert (= (and d!173939 ((_ is Cons!4422) rules!1920)) b!455671))

(assert (=> b!455673 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13340))))

(assert (=> b!455673 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13340))))

(assert (=> d!173939 true))

(declare-fun lt!202884 () Bool)

(assert (=> d!173939 (= lt!202884 (forall!1280 (list!1963 lt!202015) lambda!13340))))

(declare-fun e!278845 () Bool)

(assert (=> d!173939 (= lt!202884 e!278845)))

(declare-fun res!202606 () Bool)

(assert (=> d!173939 (=> res!202606 e!278845)))

(assert (=> d!173939 (= res!202606 (not ((_ is Cons!4423) (list!1963 lt!202015))))))

(assert (=> d!173939 (not (isEmpty!3387 rules!1920))))

(assert (=> d!173939 (= (rulesProduceEachTokenIndividuallyList!319 thiss!17480 rules!1920 (list!1963 lt!202015)) lt!202884)))

(declare-fun b!455669 () Bool)

(declare-fun e!278844 () Bool)

(assert (=> b!455669 (= e!278845 e!278844)))

(declare-fun res!202607 () Bool)

(assert (=> b!455669 (=> (not res!202607) (not e!278844))))

(assert (=> b!455669 (= res!202607 (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (h!9820 (list!1963 lt!202015))))))

(declare-fun b!455670 () Bool)

(assert (=> b!455670 (= e!278844 (rulesProduceEachTokenIndividuallyList!319 thiss!17480 rules!1920 (t!71133 (list!1963 lt!202015))))))

(assert (= (and d!173939 (not res!202606)) b!455669))

(assert (= (and b!455669 res!202607) b!455670))

(assert (=> d!173939 m!718701))

(declare-fun m!721223 () Bool)

(assert (=> d!173939 m!721223))

(assert (=> d!173939 m!718485))

(declare-fun m!721225 () Bool)

(assert (=> b!455669 m!721225))

(declare-fun m!721227 () Bool)

(assert (=> b!455670 m!721227))

(assert (=> b!454749 d!173939))

(declare-fun d!173941 () Bool)

(assert (=> d!173941 (= (list!1963 lt!202015) (list!1964 (c!91746 lt!202015)))))

(declare-fun bs!56402 () Bool)

(assert (= bs!56402 d!173941))

(declare-fun m!721229 () Bool)

(assert (=> bs!56402 m!721229))

(assert (=> b!454749 d!173941))

(declare-fun d!173943 () Bool)

(declare-fun e!278849 () Bool)

(assert (=> d!173943 e!278849))

(declare-fun res!202608 () Bool)

(assert (=> d!173943 (=> (not res!202608) (not e!278849))))

(declare-fun lt!202885 () BalanceConc!3090)

(assert (=> d!173943 (= res!202608 (= (list!1963 lt!202885) (t!71133 tokens!465)))))

(assert (=> d!173943 (= lt!202885 (BalanceConc!3091 (fromList!254 (t!71133 tokens!465))))))

(assert (=> d!173943 (= (fromListB!483 (t!71133 tokens!465)) lt!202885)))

(declare-fun b!455674 () Bool)

(assert (=> b!455674 (= e!278849 (isBalanced!471 (fromList!254 (t!71133 tokens!465))))))

(assert (= (and d!173943 res!202608) b!455674))

(declare-fun m!721231 () Bool)

(assert (=> d!173943 m!721231))

(declare-fun m!721233 () Bool)

(assert (=> d!173943 m!721233))

(assert (=> b!455674 m!721233))

(assert (=> b!455674 m!721233))

(declare-fun m!721235 () Bool)

(assert (=> b!455674 m!721235))

(assert (=> d!173355 d!173943))

(declare-fun d!173945 () Bool)

(declare-fun lt!202888 () BalanceConc!3088)

(assert (=> d!173945 (= (list!1959 lt!202888) (printListTailRec!209 thiss!17480 (dropList!244 (singletonSeq!405 call!31436) 0) (list!1959 (BalanceConc!3089 Empty!1540))))))

(declare-fun e!278850 () BalanceConc!3088)

(assert (=> d!173945 (= lt!202888 e!278850)))

(declare-fun c!92054 () Bool)

(assert (=> d!173945 (= c!92054 (>= 0 (size!3622 (singletonSeq!405 call!31436))))))

(declare-fun e!278851 () Bool)

(assert (=> d!173945 e!278851))

(declare-fun res!202609 () Bool)

(assert (=> d!173945 (=> (not res!202609) (not e!278851))))

(assert (=> d!173945 (= res!202609 (>= 0 0))))

(assert (=> d!173945 (= (printTailRec!431 thiss!17480 (singletonSeq!405 call!31436) 0 (BalanceConc!3089 Empty!1540)) lt!202888)))

(declare-fun b!455675 () Bool)

(assert (=> b!455675 (= e!278851 (<= 0 (size!3622 (singletonSeq!405 call!31436))))))

(declare-fun b!455676 () Bool)

(assert (=> b!455676 (= e!278850 (BalanceConc!3089 Empty!1540))))

(declare-fun b!455677 () Bool)

(assert (=> b!455677 (= e!278850 (printTailRec!431 thiss!17480 (singletonSeq!405 call!31436) (+ 0 1) (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (apply!1130 (singletonSeq!405 call!31436) 0)))))))

(declare-fun lt!202890 () List!4433)

(assert (=> b!455677 (= lt!202890 (list!1963 (singletonSeq!405 call!31436)))))

(declare-fun lt!202889 () Unit!7961)

(assert (=> b!455677 (= lt!202889 (lemmaDropApply!284 lt!202890 0))))

(assert (=> b!455677 (= (head!1108 (drop!313 lt!202890 0)) (apply!1131 lt!202890 0))))

(declare-fun lt!202892 () Unit!7961)

(assert (=> b!455677 (= lt!202892 lt!202889)))

(declare-fun lt!202891 () List!4433)

(assert (=> b!455677 (= lt!202891 (list!1963 (singletonSeq!405 call!31436)))))

(declare-fun lt!202886 () Unit!7961)

(assert (=> b!455677 (= lt!202886 (lemmaDropTail!276 lt!202891 0))))

(assert (=> b!455677 (= (tail!636 (drop!313 lt!202891 0)) (drop!313 lt!202891 (+ 0 1)))))

(declare-fun lt!202887 () Unit!7961)

(assert (=> b!455677 (= lt!202887 lt!202886)))

(assert (= (and d!173945 res!202609) b!455675))

(assert (= (and d!173945 c!92054) b!455676))

(assert (= (and d!173945 (not c!92054)) b!455677))

(assert (=> d!173945 m!718731))

(declare-fun m!721237 () Bool)

(assert (=> d!173945 m!721237))

(assert (=> d!173945 m!718835))

(declare-fun m!721239 () Bool)

(assert (=> d!173945 m!721239))

(assert (=> d!173945 m!721237))

(assert (=> d!173945 m!718835))

(declare-fun m!721241 () Bool)

(assert (=> d!173945 m!721241))

(assert (=> d!173945 m!718731))

(declare-fun m!721243 () Bool)

(assert (=> d!173945 m!721243))

(assert (=> b!455675 m!718731))

(assert (=> b!455675 m!721243))

(declare-fun m!721245 () Bool)

(assert (=> b!455677 m!721245))

(declare-fun m!721247 () Bool)

(assert (=> b!455677 m!721247))

(declare-fun m!721249 () Bool)

(assert (=> b!455677 m!721249))

(declare-fun m!721251 () Bool)

(assert (=> b!455677 m!721251))

(assert (=> b!455677 m!718731))

(declare-fun m!721253 () Bool)

(assert (=> b!455677 m!721253))

(declare-fun m!721255 () Bool)

(assert (=> b!455677 m!721255))

(declare-fun m!721257 () Bool)

(assert (=> b!455677 m!721257))

(assert (=> b!455677 m!718731))

(declare-fun m!721259 () Bool)

(assert (=> b!455677 m!721259))

(declare-fun m!721261 () Bool)

(assert (=> b!455677 m!721261))

(declare-fun m!721263 () Bool)

(assert (=> b!455677 m!721263))

(declare-fun m!721265 () Bool)

(assert (=> b!455677 m!721265))

(declare-fun m!721267 () Bool)

(assert (=> b!455677 m!721267))

(assert (=> b!455677 m!718731))

(assert (=> b!455677 m!721247))

(assert (=> b!455677 m!721263))

(assert (=> b!455677 m!721251))

(declare-fun m!721269 () Bool)

(assert (=> b!455677 m!721269))

(assert (=> b!455677 m!721249))

(assert (=> b!455677 m!721259))

(assert (=> b!454363 d!173945))

(declare-fun d!173947 () Bool)

(assert (=> d!173947 (isDefined!989 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 call!31435) (list!1959 lt!202130))))))

(declare-fun lt!202935 () Unit!7961)

(declare-fun e!278857 () Unit!7961)

(assert (=> d!173947 (= lt!202935 e!278857)))

(declare-fun c!92058 () Bool)

(assert (=> d!173947 (= c!92058 (isEmpty!3390 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 call!31435) (list!1959 lt!202130)))))))

(declare-fun lt!202938 () Unit!7961)

(declare-fun lt!202942 () Unit!7961)

(assert (=> d!173947 (= lt!202938 lt!202942)))

(declare-fun e!278856 () Bool)

(assert (=> d!173947 e!278856))

(declare-fun res!202611 () Bool)

(assert (=> d!173947 (=> (not res!202611) (not e!278856))))

(declare-fun lt!202943 () Token!1462)

(assert (=> d!173947 (= res!202611 (isDefined!992 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!202943)))))))

(assert (=> d!173947 (= lt!202942 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!210 thiss!17480 rules!1920 (list!1959 call!31435) lt!202943))))

(declare-fun lt!202936 () Unit!7961)

(declare-fun lt!202940 () Unit!7961)

(assert (=> d!173947 (= lt!202936 lt!202940)))

(declare-fun lt!202928 () List!4431)

(assert (=> d!173947 (isPrefix!513 lt!202928 (++!1284 (list!1959 call!31435) (list!1959 lt!202130)))))

(assert (=> d!173947 (= lt!202940 (lemmaPrefixStaysPrefixWhenAddingToSuffix!96 lt!202928 (list!1959 call!31435) (list!1959 lt!202130)))))

(assert (=> d!173947 (= lt!202928 (list!1959 (charsOf!502 lt!202943)))))

(declare-fun lt!202941 () Unit!7961)

(declare-fun lt!202927 () Unit!7961)

(assert (=> d!173947 (= lt!202941 lt!202927)))

(declare-fun lt!202932 () List!4431)

(declare-fun lt!202931 () List!4431)

(assert (=> d!173947 (isPrefix!513 lt!202932 (++!1284 lt!202932 lt!202931))))

(assert (=> d!173947 (= lt!202927 (lemmaConcatTwoListThenFirstIsPrefix!402 lt!202932 lt!202931))))

(assert (=> d!173947 (= lt!202931 (_2!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 call!31435)))))))

(assert (=> d!173947 (= lt!202932 (list!1959 (charsOf!502 lt!202943)))))

(assert (=> d!173947 (= lt!202943 (head!1108 (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 (list!1959 call!31435)))))))))

(assert (=> d!173947 (not (isEmpty!3387 rules!1920))))

(assert (=> d!173947 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 (list!1959 call!31435) (list!1959 lt!202130)) lt!202935)))

(declare-fun b!455685 () Bool)

(declare-fun res!202612 () Bool)

(assert (=> b!455685 (=> (not res!202612) (not e!278856))))

(assert (=> b!455685 (= res!202612 (matchR!401 (regex!859 (get!1622 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!202943))))) (list!1959 (charsOf!502 lt!202943))))))

(declare-fun b!455687 () Bool)

(declare-fun Unit!7991 () Unit!7961)

(assert (=> b!455687 (= e!278857 Unit!7991)))

(declare-fun lt!202929 () List!4431)

(assert (=> b!455687 (= lt!202929 (++!1284 (list!1959 call!31435) (list!1959 lt!202130)))))

(declare-fun lt!202937 () Unit!7961)

(assert (=> b!455687 (= lt!202937 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!96 thiss!17480 (rule!1550 lt!202943) rules!1920 lt!202929))))

(assert (=> b!455687 (isEmpty!3390 (maxPrefixOneRule!221 thiss!17480 (rule!1550 lt!202943) lt!202929))))

(declare-fun lt!202930 () Unit!7961)

(assert (=> b!455687 (= lt!202930 lt!202937)))

(declare-fun lt!202939 () List!4431)

(assert (=> b!455687 (= lt!202939 (list!1959 (charsOf!502 lt!202943)))))

(declare-fun lt!202934 () Unit!7961)

(assert (=> b!455687 (= lt!202934 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!96 thiss!17480 (rule!1550 lt!202943) lt!202939 (++!1284 (list!1959 call!31435) (list!1959 lt!202130))))))

(assert (=> b!455687 (not (matchR!401 (regex!859 (rule!1550 lt!202943)) lt!202939))))

(declare-fun lt!202933 () Unit!7961)

(assert (=> b!455687 (= lt!202933 lt!202934)))

(assert (=> b!455687 false))

(declare-fun b!455686 () Bool)

(assert (=> b!455686 (= e!278856 (= (rule!1550 lt!202943) (get!1622 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!202943))))))))

(declare-fun b!455688 () Bool)

(declare-fun Unit!7992 () Unit!7961)

(assert (=> b!455688 (= e!278857 Unit!7992)))

(assert (= (and d!173947 res!202611) b!455685))

(assert (= (and b!455685 res!202612) b!455686))

(assert (= (and d!173947 c!92058) b!455687))

(assert (= (and d!173947 (not c!92058)) b!455688))

(declare-fun m!721271 () Bool)

(assert (=> d!173947 m!721271))

(declare-fun m!721273 () Bool)

(assert (=> d!173947 m!721273))

(assert (=> d!173947 m!721273))

(declare-fun m!721275 () Bool)

(assert (=> d!173947 m!721275))

(assert (=> d!173947 m!721273))

(declare-fun m!721277 () Bool)

(assert (=> d!173947 m!721277))

(declare-fun m!721281 () Bool)

(assert (=> d!173947 m!721281))

(declare-fun m!721283 () Bool)

(assert (=> d!173947 m!721283))

(assert (=> d!173947 m!718737))

(declare-fun m!721287 () Bool)

(assert (=> d!173947 m!721287))

(declare-fun m!721289 () Bool)

(assert (=> d!173947 m!721289))

(assert (=> d!173947 m!721281))

(declare-fun m!721293 () Bool)

(assert (=> d!173947 m!721293))

(assert (=> d!173947 m!718737))

(declare-fun m!721297 () Bool)

(assert (=> d!173947 m!721297))

(assert (=> d!173947 m!718485))

(assert (=> d!173947 m!718737))

(declare-fun m!721301 () Bool)

(assert (=> d!173947 m!721301))

(declare-fun m!721305 () Bool)

(assert (=> d!173947 m!721305))

(assert (=> d!173947 m!721271))

(declare-fun m!721309 () Bool)

(assert (=> d!173947 m!721309))

(assert (=> d!173947 m!721287))

(declare-fun m!721313 () Bool)

(assert (=> d!173947 m!721313))

(assert (=> d!173947 m!718737))

(assert (=> d!173947 m!718739))

(assert (=> d!173947 m!721271))

(assert (=> d!173947 m!721293))

(declare-fun m!721317 () Bool)

(assert (=> d!173947 m!721317))

(assert (=> d!173947 m!721301))

(declare-fun m!721321 () Bool)

(assert (=> d!173947 m!721321))

(declare-fun m!721325 () Bool)

(assert (=> d!173947 m!721325))

(declare-fun m!721329 () Bool)

(assert (=> d!173947 m!721329))

(assert (=> d!173947 m!721289))

(declare-fun m!721333 () Bool)

(assert (=> d!173947 m!721333))

(assert (=> d!173947 m!721325))

(assert (=> d!173947 m!718737))

(assert (=> d!173947 m!718739))

(declare-fun m!721341 () Bool)

(assert (=> d!173947 m!721341))

(assert (=> b!455685 m!721283))

(declare-fun m!721349 () Bool)

(assert (=> b!455685 m!721349))

(assert (=> b!455685 m!721281))

(assert (=> b!455685 m!721283))

(assert (=> b!455685 m!721293))

(declare-fun m!721355 () Bool)

(assert (=> b!455685 m!721355))

(assert (=> b!455685 m!721281))

(assert (=> b!455685 m!721293))

(assert (=> b!455687 m!721281))

(declare-fun m!721361 () Bool)

(assert (=> b!455687 m!721361))

(declare-fun m!721363 () Bool)

(assert (=> b!455687 m!721363))

(declare-fun m!721369 () Bool)

(assert (=> b!455687 m!721369))

(declare-fun m!721373 () Bool)

(assert (=> b!455687 m!721373))

(assert (=> b!455687 m!721281))

(assert (=> b!455687 m!721283))

(assert (=> b!455687 m!721271))

(declare-fun m!721379 () Bool)

(assert (=> b!455687 m!721379))

(assert (=> b!455687 m!718737))

(assert (=> b!455687 m!718739))

(assert (=> b!455687 m!721271))

(assert (=> b!455687 m!721361))

(assert (=> b!455686 m!721293))

(assert (=> b!455686 m!721293))

(assert (=> b!455686 m!721355))

(assert (=> b!454363 d!173947))

(declare-fun d!173949 () Bool)

(declare-fun e!278858 () Bool)

(assert (=> d!173949 e!278858))

(declare-fun res!202613 () Bool)

(assert (=> d!173949 (=> (not res!202613) (not e!278858))))

(declare-fun lt!202944 () BalanceConc!3090)

(assert (=> d!173949 (= res!202613 (= (list!1963 lt!202944) (Cons!4423 call!31436 Nil!4423)))))

(assert (=> d!173949 (= lt!202944 (singleton!194 call!31436))))

(assert (=> d!173949 (= (singletonSeq!405 call!31436) lt!202944)))

(declare-fun b!455689 () Bool)

(assert (=> b!455689 (= e!278858 (isBalanced!471 (c!91746 lt!202944)))))

(assert (= (and d!173949 res!202613) b!455689))

(declare-fun m!721401 () Bool)

(assert (=> d!173949 m!721401))

(declare-fun m!721403 () Bool)

(assert (=> d!173949 m!721403))

(declare-fun m!721407 () Bool)

(assert (=> b!455689 m!721407))

(assert (=> b!454363 d!173949))

(declare-fun d!173951 () Bool)

(assert (=> d!173951 (= (list!1959 lt!202130) (list!1962 (c!91744 lt!202130)))))

(declare-fun bs!56403 () Bool)

(assert (= bs!56403 d!173951))

(declare-fun m!721411 () Bool)

(assert (=> bs!56403 m!721411))

(assert (=> b!454363 d!173951))

(declare-fun d!173953 () Bool)

(assert (=> d!173953 (= (list!1959 call!31435) (list!1962 (c!91744 call!31435)))))

(declare-fun bs!56404 () Bool)

(assert (= bs!56404 d!173953))

(declare-fun m!721415 () Bool)

(assert (=> bs!56404 m!721415))

(assert (=> b!454363 d!173953))

(declare-fun d!173955 () Bool)

(declare-fun lt!202945 () BalanceConc!3088)

(assert (=> d!173955 (= (list!1959 lt!202945) (printList!419 thiss!17480 (list!1963 (singletonSeq!405 call!31436))))))

(assert (=> d!173955 (= lt!202945 (printTailRec!431 thiss!17480 (singletonSeq!405 call!31436) 0 (BalanceConc!3089 Empty!1540)))))

(assert (=> d!173955 (= (print!470 thiss!17480 (singletonSeq!405 call!31436)) lt!202945)))

(declare-fun bs!56405 () Bool)

(assert (= bs!56405 d!173955))

(declare-fun m!721423 () Bool)

(assert (=> bs!56405 m!721423))

(assert (=> bs!56405 m!718731))

(assert (=> bs!56405 m!721253))

(assert (=> bs!56405 m!721253))

(declare-fun m!721425 () Bool)

(assert (=> bs!56405 m!721425))

(assert (=> bs!56405 m!718731))

(assert (=> bs!56405 m!718735))

(assert (=> b!454363 d!173955))

(declare-fun d!173959 () Bool)

(declare-fun res!202616 () Bool)

(declare-fun e!278861 () Bool)

(assert (=> d!173959 (=> res!202616 e!278861)))

(assert (=> d!173959 (= res!202616 ((_ is Nil!4423) (list!1963 lt!202015)))))

(assert (=> d!173959 (= (forall!1280 (list!1963 lt!202015) lambda!13311) e!278861)))

(declare-fun b!455694 () Bool)

(declare-fun e!278862 () Bool)

(assert (=> b!455694 (= e!278861 e!278862)))

(declare-fun res!202617 () Bool)

(assert (=> b!455694 (=> (not res!202617) (not e!278862))))

(assert (=> b!455694 (= res!202617 (dynLambda!2680 lambda!13311 (h!9820 (list!1963 lt!202015))))))

(declare-fun b!455695 () Bool)

(assert (=> b!455695 (= e!278862 (forall!1280 (t!71133 (list!1963 lt!202015)) lambda!13311))))

(assert (= (and d!173959 (not res!202616)) b!455694))

(assert (= (and b!455694 res!202617) b!455695))

(declare-fun b_lambda!18875 () Bool)

(assert (=> (not b_lambda!18875) (not b!455694)))

(declare-fun m!721427 () Bool)

(assert (=> b!455694 m!721427))

(declare-fun m!721429 () Bool)

(assert (=> b!455695 m!721429))

(assert (=> d!173405 d!173959))

(assert (=> d!173405 d!173941))

(declare-fun d!173961 () Bool)

(declare-fun lt!202947 () Bool)

(assert (=> d!173961 (= lt!202947 (forall!1280 (list!1963 lt!202015) lambda!13311))))

(assert (=> d!173961 (= lt!202947 (forall!1285 (c!91746 lt!202015) lambda!13311))))

(assert (=> d!173961 (= (forall!1282 lt!202015 lambda!13311) lt!202947)))

(declare-fun bs!56406 () Bool)

(assert (= bs!56406 d!173961))

(assert (=> bs!56406 m!718701))

(assert (=> bs!56406 m!718701))

(assert (=> bs!56406 m!719477))

(declare-fun m!721441 () Bool)

(assert (=> bs!56406 m!721441))

(assert (=> d!173405 d!173961))

(assert (=> d!173405 d!173287))

(declare-fun d!173965 () Bool)

(assert (=> d!173965 (= (isDefined!989 (maxPrefix!461 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170))) (not (isEmpty!3390 (maxPrefix!461 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))))

(declare-fun bs!56408 () Bool)

(assert (= bs!56408 d!173965))

(assert (=> bs!56408 m!719565))

(declare-fun m!721445 () Bool)

(assert (=> bs!56408 m!721445))

(assert (=> b!454833 d!173965))

(declare-fun b!455696 () Bool)

(declare-fun e!278865 () Option!1150)

(declare-fun lt!202948 () Option!1150)

(declare-fun lt!202949 () Option!1150)

(assert (=> b!455696 (= e!278865 (ite (and ((_ is None!1149) lt!202948) ((_ is None!1149) lt!202949)) None!1149 (ite ((_ is None!1149) lt!202949) lt!202948 (ite ((_ is None!1149) lt!202948) lt!202949 (ite (>= (size!3619 (_1!2901 (v!15470 lt!202948))) (size!3619 (_1!2901 (v!15470 lt!202949)))) lt!202948 lt!202949)))))))

(declare-fun call!31552 () Option!1150)

(assert (=> b!455696 (= lt!202948 call!31552)))

(assert (=> b!455696 (= lt!202949 (maxPrefix!461 thiss!17480 (t!71132 rules!1920) (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun b!455697 () Bool)

(declare-fun res!202619 () Bool)

(declare-fun e!278864 () Bool)

(assert (=> b!455697 (=> (not res!202619) (not e!278864))))

(declare-fun lt!202951 () Option!1150)

(assert (=> b!455697 (= res!202619 (matchR!401 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202951)))) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202951))))))))

(declare-fun b!455698 () Bool)

(declare-fun res!202620 () Bool)

(assert (=> b!455698 (=> (not res!202620) (not e!278864))))

(assert (=> b!455698 (= res!202620 (= (value!28797 (_1!2901 (get!1618 lt!202951))) (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202951)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!202951)))))))))

(declare-fun b!455699 () Bool)

(assert (=> b!455699 (= e!278864 (contains!990 rules!1920 (rule!1550 (_1!2901 (get!1618 lt!202951)))))))

(declare-fun b!455700 () Bool)

(assert (=> b!455700 (= e!278865 call!31552)))

(declare-fun b!455701 () Bool)

(declare-fun e!278863 () Bool)

(assert (=> b!455701 (= e!278863 e!278864)))

(declare-fun res!202622 () Bool)

(assert (=> b!455701 (=> (not res!202622) (not e!278864))))

(assert (=> b!455701 (= res!202622 (isDefined!989 lt!202951))))

(declare-fun d!173969 () Bool)

(assert (=> d!173969 e!278863))

(declare-fun res!202621 () Bool)

(assert (=> d!173969 (=> res!202621 e!278863)))

(assert (=> d!173969 (= res!202621 (isEmpty!3390 lt!202951))))

(assert (=> d!173969 (= lt!202951 e!278865)))

(declare-fun c!92060 () Bool)

(assert (=> d!173969 (= c!92060 (and ((_ is Cons!4422) rules!1920) ((_ is Nil!4422) (t!71132 rules!1920))))))

(declare-fun lt!202950 () Unit!7961)

(declare-fun lt!202952 () Unit!7961)

(assert (=> d!173969 (= lt!202950 lt!202952)))

(assert (=> d!173969 (isPrefix!513 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170) (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> d!173969 (= lt!202952 (lemmaIsPrefixRefl!287 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170) (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(assert (=> d!173969 (rulesValidInductive!282 thiss!17480 rules!1920)))

(assert (=> d!173969 (= (maxPrefix!461 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170)) lt!202951)))

(declare-fun b!455702 () Bool)

(declare-fun res!202624 () Bool)

(assert (=> b!455702 (=> (not res!202624) (not e!278864))))

(assert (=> b!455702 (= res!202624 (< (size!3623 (_2!2901 (get!1618 lt!202951))) (size!3623 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(declare-fun b!455703 () Bool)

(declare-fun res!202623 () Bool)

(assert (=> b!455703 (=> (not res!202623) (not e!278864))))

(assert (=> b!455703 (= res!202623 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202951)))) (_2!2901 (get!1618 lt!202951))) (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(declare-fun b!455704 () Bool)

(declare-fun res!202618 () Bool)

(assert (=> b!455704 (=> (not res!202618) (not e!278864))))

(assert (=> b!455704 (= res!202618 (= (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202951)))) (originalCharacters!902 (_1!2901 (get!1618 lt!202951)))))))

(declare-fun bm!31547 () Bool)

(assert (=> bm!31547 (= call!31552 (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170)))))

(assert (= (and d!173969 c!92060) b!455700))

(assert (= (and d!173969 (not c!92060)) b!455696))

(assert (= (or b!455700 b!455696) bm!31547))

(assert (= (and d!173969 (not res!202621)) b!455701))

(assert (= (and b!455701 res!202622) b!455704))

(assert (= (and b!455704 res!202618) b!455702))

(assert (= (and b!455702 res!202624) b!455703))

(assert (= (and b!455703 res!202623) b!455698))

(assert (= (and b!455698 res!202620) b!455697))

(assert (= (and b!455697 res!202619) b!455699))

(declare-fun m!721447 () Bool)

(assert (=> b!455704 m!721447))

(declare-fun m!721449 () Bool)

(assert (=> b!455704 m!721449))

(assert (=> b!455704 m!721449))

(declare-fun m!721451 () Bool)

(assert (=> b!455704 m!721451))

(assert (=> b!455702 m!721447))

(declare-fun m!721453 () Bool)

(assert (=> b!455702 m!721453))

(assert (=> b!455702 m!718521))

(declare-fun m!721455 () Bool)

(assert (=> b!455702 m!721455))

(assert (=> b!455697 m!721447))

(assert (=> b!455697 m!721449))

(assert (=> b!455697 m!721449))

(assert (=> b!455697 m!721451))

(assert (=> b!455697 m!721451))

(declare-fun m!721459 () Bool)

(assert (=> b!455697 m!721459))

(assert (=> b!455703 m!721447))

(assert (=> b!455703 m!721449))

(assert (=> b!455703 m!721449))

(assert (=> b!455703 m!721451))

(assert (=> b!455703 m!721451))

(declare-fun m!721461 () Bool)

(assert (=> b!455703 m!721461))

(assert (=> b!455698 m!721447))

(declare-fun m!721463 () Bool)

(assert (=> b!455698 m!721463))

(assert (=> b!455698 m!721463))

(declare-fun m!721465 () Bool)

(assert (=> b!455698 m!721465))

(declare-fun m!721467 () Bool)

(assert (=> b!455701 m!721467))

(declare-fun m!721469 () Bool)

(assert (=> d!173969 m!721469))

(assert (=> d!173969 m!718521))

(assert (=> d!173969 m!718521))

(declare-fun m!721471 () Bool)

(assert (=> d!173969 m!721471))

(assert (=> d!173969 m!718521))

(assert (=> d!173969 m!718521))

(declare-fun m!721473 () Bool)

(assert (=> d!173969 m!721473))

(assert (=> d!173969 m!718921))

(assert (=> b!455699 m!721447))

(declare-fun m!721475 () Bool)

(assert (=> b!455699 m!721475))

(assert (=> bm!31547 m!718521))

(declare-fun m!721479 () Bool)

(assert (=> bm!31547 m!721479))

(assert (=> b!455696 m!718521))

(declare-fun m!721481 () Bool)

(assert (=> b!455696 m!721481))

(assert (=> b!454833 d!173969))

(assert (=> b!454833 d!173275))

(declare-fun d!173973 () Bool)

(declare-fun lt!202953 () BalanceConc!3088)

(assert (=> d!173973 (= (list!1959 lt!202953) (originalCharacters!902 call!31479))))

(assert (=> d!173973 (= lt!202953 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 call!31479))) (value!28797 call!31479)))))

(assert (=> d!173973 (= (charsOf!502 call!31479) lt!202953)))

(declare-fun b_lambda!18879 () Bool)

(assert (=> (not b_lambda!18879) (not d!173973)))

(declare-fun tb!45721 () Bool)

(declare-fun t!71349 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 call!31479)))) t!71349) tb!45721))

(declare-fun b!455707 () Bool)

(declare-fun e!278869 () Bool)

(declare-fun tp!126457 () Bool)

(assert (=> b!455707 (= e!278869 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 call!31479))) (value!28797 call!31479)))) tp!126457))))

(declare-fun result!50320 () Bool)

(assert (=> tb!45721 (= result!50320 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 call!31479))) (value!28797 call!31479))) e!278869))))

(assert (= tb!45721 b!455707))

(declare-fun m!721485 () Bool)

(assert (=> b!455707 m!721485))

(declare-fun m!721487 () Bool)

(assert (=> tb!45721 m!721487))

(assert (=> d!173973 t!71349))

(declare-fun b_and!49001 () Bool)

(assert (= b_and!48985 (and (=> t!71349 result!50320) b_and!49001)))

(declare-fun t!71351 () Bool)

(declare-fun tb!45723 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 call!31479)))) t!71351) tb!45723))

(declare-fun result!50322 () Bool)

(assert (= result!50322 result!50320))

(assert (=> d!173973 t!71351))

(declare-fun b_and!49003 () Bool)

(assert (= b_and!48983 (and (=> t!71351 result!50322) b_and!49003)))

(declare-fun t!71353 () Bool)

(declare-fun tb!45725 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 call!31479)))) t!71353) tb!45725))

(declare-fun result!50324 () Bool)

(assert (= result!50324 result!50320))

(assert (=> d!173973 t!71353))

(declare-fun b_and!49005 () Bool)

(assert (= b_and!48981 (and (=> t!71353 result!50324) b_and!49005)))

(declare-fun tb!45727 () Bool)

(declare-fun t!71355 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 call!31479)))) t!71355) tb!45727))

(declare-fun result!50326 () Bool)

(assert (= result!50326 result!50320))

(assert (=> d!173973 t!71355))

(declare-fun b_and!49007 () Bool)

(assert (= b_and!48989 (and (=> t!71355 result!50326) b_and!49007)))

(declare-fun tb!45729 () Bool)

(declare-fun t!71357 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 call!31479)))) t!71357) tb!45729))

(declare-fun result!50328 () Bool)

(assert (= result!50328 result!50320))

(assert (=> d!173973 t!71357))

(declare-fun b_and!49009 () Bool)

(assert (= b_and!48987 (and (=> t!71357 result!50328) b_and!49009)))

(declare-fun m!721489 () Bool)

(assert (=> d!173973 m!721489))

(declare-fun m!721491 () Bool)

(assert (=> d!173973 m!721491))

(assert (=> b!454616 d!173973))

(assert (=> b!454931 d!173505))

(assert (=> b!454931 d!173507))

(declare-fun d!173977 () Bool)

(declare-fun res!202631 () Bool)

(declare-fun e!278876 () Bool)

(assert (=> d!173977 (=> res!202631 e!278876)))

(assert (=> d!173977 (= res!202631 ((_ is Nil!4422) rules!1920))))

(assert (=> d!173977 (= (noDuplicateTag!306 thiss!17480 rules!1920 Nil!4425) e!278876)))

(declare-fun b!455716 () Bool)

(declare-fun e!278877 () Bool)

(assert (=> b!455716 (= e!278876 e!278877)))

(declare-fun res!202632 () Bool)

(assert (=> b!455716 (=> (not res!202632) (not e!278877))))

(declare-fun contains!992 (List!4435 String!5485) Bool)

(assert (=> b!455716 (= res!202632 (not (contains!992 Nil!4425 (tag!1119 (h!9819 rules!1920)))))))

(declare-fun b!455717 () Bool)

(assert (=> b!455717 (= e!278877 (noDuplicateTag!306 thiss!17480 (t!71132 rules!1920) (Cons!4425 (tag!1119 (h!9819 rules!1920)) Nil!4425)))))

(assert (= (and d!173977 (not res!202631)) b!455716))

(assert (= (and b!455716 res!202632) b!455717))

(declare-fun m!721501 () Bool)

(assert (=> b!455716 m!721501))

(declare-fun m!721503 () Bool)

(assert (=> b!455717 m!721503))

(assert (=> b!454576 d!173977))

(declare-fun b!455718 () Bool)

(declare-fun e!278879 () List!4431)

(assert (=> b!455718 (= e!278879 (_2!2901 (get!1618 lt!202212)))))

(declare-fun d!173983 () Bool)

(declare-fun e!278878 () Bool)

(assert (=> d!173983 e!278878))

(declare-fun res!202633 () Bool)

(assert (=> d!173983 (=> (not res!202633) (not e!278878))))

(declare-fun lt!202955 () List!4431)

(assert (=> d!173983 (= res!202633 (= (content!737 lt!202955) ((_ map or) (content!737 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))) (content!737 (_2!2901 (get!1618 lt!202212))))))))

(assert (=> d!173983 (= lt!202955 e!278879)))

(declare-fun c!92062 () Bool)

(assert (=> d!173983 (= c!92062 ((_ is Nil!4421) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))))))

(assert (=> d!173983 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212)))) (_2!2901 (get!1618 lt!202212))) lt!202955)))

(declare-fun b!455720 () Bool)

(declare-fun res!202634 () Bool)

(assert (=> b!455720 (=> (not res!202634) (not e!278878))))

(assert (=> b!455720 (= res!202634 (= (size!3623 lt!202955) (+ (size!3623 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))) (size!3623 (_2!2901 (get!1618 lt!202212))))))))

(declare-fun b!455721 () Bool)

(assert (=> b!455721 (= e!278878 (or (not (= (_2!2901 (get!1618 lt!202212)) Nil!4421)) (= lt!202955 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212)))))))))

(declare-fun b!455719 () Bool)

(assert (=> b!455719 (= e!278879 (Cons!4421 (h!9818 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))) (++!1284 (t!71131 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202212))))) (_2!2901 (get!1618 lt!202212)))))))

(assert (= (and d!173983 c!92062) b!455718))

(assert (= (and d!173983 (not c!92062)) b!455719))

(assert (= (and d!173983 res!202633) b!455720))

(assert (= (and b!455720 res!202634) b!455721))

(declare-fun m!721505 () Bool)

(assert (=> d!173983 m!721505))

(assert (=> d!173983 m!718899))

(declare-fun m!721507 () Bool)

(assert (=> d!173983 m!721507))

(declare-fun m!721509 () Bool)

(assert (=> d!173983 m!721509))

(declare-fun m!721511 () Bool)

(assert (=> b!455720 m!721511))

(assert (=> b!455720 m!718899))

(declare-fun m!721513 () Bool)

(assert (=> b!455720 m!721513))

(assert (=> b!455720 m!718901))

(declare-fun m!721515 () Bool)

(assert (=> b!455719 m!721515))

(assert (=> b!454488 d!173983))

(assert (=> b!454488 d!173569))

(assert (=> b!454488 d!173571))

(assert (=> b!454488 d!173567))

(declare-fun d!173985 () Bool)

(assert (=> d!173985 (= (list!1959 (ite c!91828 call!31477 call!31473)) (list!1962 (c!91744 (ite c!91828 call!31477 call!31473))))))

(declare-fun bs!56411 () Bool)

(assert (= bs!56411 d!173985))

(declare-fun m!721517 () Bool)

(assert (=> bs!56411 m!721517))

(assert (=> bm!31470 d!173985))

(declare-fun d!173987 () Bool)

(assert (=> d!173987 (= (isEmpty!3390 lt!202212) (not ((_ is Some!1149) lt!202212)))))

(assert (=> d!173331 d!173987))

(declare-fun b!455722 () Bool)

(declare-fun e!278882 () Bool)

(declare-fun e!278880 () Bool)

(assert (=> b!455722 (= e!278882 e!278880)))

(declare-fun res!202637 () Bool)

(assert (=> b!455722 (=> (not res!202637) (not e!278880))))

(assert (=> b!455722 (= res!202637 (not ((_ is Nil!4421) lt!202023)))))

(declare-fun b!455724 () Bool)

(assert (=> b!455724 (= e!278880 (isPrefix!513 (tail!637 lt!202023) (tail!637 lt!202023)))))

(declare-fun b!455725 () Bool)

(declare-fun e!278881 () Bool)

(assert (=> b!455725 (= e!278881 (>= (size!3623 lt!202023) (size!3623 lt!202023)))))

(declare-fun d!173989 () Bool)

(assert (=> d!173989 e!278881))

(declare-fun res!202638 () Bool)

(assert (=> d!173989 (=> res!202638 e!278881)))

(declare-fun lt!202956 () Bool)

(assert (=> d!173989 (= res!202638 (not lt!202956))))

(assert (=> d!173989 (= lt!202956 e!278882)))

(declare-fun res!202636 () Bool)

(assert (=> d!173989 (=> res!202636 e!278882)))

(assert (=> d!173989 (= res!202636 ((_ is Nil!4421) lt!202023))))

(assert (=> d!173989 (= (isPrefix!513 lt!202023 lt!202023) lt!202956)))

(declare-fun b!455723 () Bool)

(declare-fun res!202635 () Bool)

(assert (=> b!455723 (=> (not res!202635) (not e!278880))))

(assert (=> b!455723 (= res!202635 (= (head!1109 lt!202023) (head!1109 lt!202023)))))

(assert (= (and d!173989 (not res!202636)) b!455722))

(assert (= (and b!455722 res!202637) b!455723))

(assert (= (and b!455723 res!202635) b!455724))

(assert (= (and d!173989 (not res!202638)) b!455725))

(assert (=> b!455724 m!719611))

(assert (=> b!455724 m!719611))

(assert (=> b!455724 m!719611))

(assert (=> b!455724 m!719611))

(declare-fun m!721519 () Bool)

(assert (=> b!455724 m!721519))

(assert (=> b!455725 m!718903))

(assert (=> b!455725 m!718903))

(assert (=> b!455723 m!719605))

(assert (=> b!455723 m!719605))

(assert (=> d!173331 d!173989))

(declare-fun d!173991 () Bool)

(assert (=> d!173991 (isPrefix!513 lt!202023 lt!202023)))

(declare-fun lt!202957 () Unit!7961)

(assert (=> d!173991 (= lt!202957 (choose!3437 lt!202023 lt!202023))))

(assert (=> d!173991 (= (lemmaIsPrefixRefl!287 lt!202023 lt!202023) lt!202957)))

(declare-fun bs!56412 () Bool)

(assert (= bs!56412 d!173991))

(assert (=> bs!56412 m!718917))

(declare-fun m!721521 () Bool)

(assert (=> bs!56412 m!721521))

(assert (=> d!173331 d!173991))

(assert (=> d!173331 d!173911))

(assert (=> b!454600 d!173363))

(declare-fun d!173993 () Bool)

(declare-fun e!278885 () Bool)

(assert (=> d!173993 e!278885))

(declare-fun res!202641 () Bool)

(assert (=> d!173993 (=> (not res!202641) (not e!278885))))

(declare-fun lt!202960 () BalanceConc!3088)

(assert (=> d!173993 (= res!202641 (= (list!1959 lt!202960) lt!202016))))

(declare-fun fromList!257 (List!4431) Conc!1540)

(assert (=> d!173993 (= lt!202960 (BalanceConc!3089 (fromList!257 lt!202016)))))

(assert (=> d!173993 (= (fromListB!482 lt!202016) lt!202960)))

(declare-fun b!455728 () Bool)

(assert (=> b!455728 (= e!278885 (isBalanced!472 (fromList!257 lt!202016)))))

(assert (= (and d!173993 res!202641) b!455728))

(declare-fun m!721523 () Bool)

(assert (=> d!173993 m!721523))

(declare-fun m!721525 () Bool)

(assert (=> d!173993 m!721525))

(assert (=> b!455728 m!721525))

(assert (=> b!455728 m!721525))

(declare-fun m!721527 () Bool)

(assert (=> b!455728 m!721527))

(assert (=> d!173353 d!173993))

(declare-fun d!173995 () Bool)

(assert (=> d!173995 (= (inv!5492 (tag!1119 (rule!1550 (h!9820 (t!71133 tokens!465))))) (= (mod (str.len (value!28796 (tag!1119 (rule!1550 (h!9820 (t!71133 tokens!465)))))) 2) 0))))

(assert (=> b!455001 d!173995))

(declare-fun d!173997 () Bool)

(declare-fun res!202642 () Bool)

(declare-fun e!278886 () Bool)

(assert (=> d!173997 (=> (not res!202642) (not e!278886))))

(assert (=> d!173997 (= res!202642 (semiInverseModEq!341 (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toValue!1674 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))))))

(assert (=> d!173997 (= (inv!5495 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) e!278886)))

(declare-fun b!455729 () Bool)

(assert (=> b!455729 (= e!278886 (equivClasses!324 (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toValue!1674 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))))))

(assert (= (and d!173997 res!202642) b!455729))

(declare-fun m!721529 () Bool)

(assert (=> d!173997 m!721529))

(declare-fun m!721531 () Bool)

(assert (=> b!455729 m!721531))

(assert (=> b!455001 d!173997))

(declare-fun e!278888 () List!4431)

(declare-fun b!455730 () Bool)

(assert (=> b!455730 (= e!278888 (ite c!91782 lt!202159 call!31453))))

(declare-fun d!173999 () Bool)

(declare-fun e!278887 () Bool)

(assert (=> d!173999 e!278887))

(declare-fun res!202643 () Bool)

(assert (=> d!173999 (=> (not res!202643) (not e!278887))))

(declare-fun lt!202961 () List!4431)

(assert (=> d!173999 (= res!202643 (= (content!737 lt!202961) ((_ map or) (content!737 call!31451) (content!737 (ite c!91782 lt!202159 call!31453)))))))

(assert (=> d!173999 (= lt!202961 e!278888)))

(declare-fun c!92064 () Bool)

(assert (=> d!173999 (= c!92064 ((_ is Nil!4421) call!31451))))

(assert (=> d!173999 (= (++!1284 call!31451 (ite c!91782 lt!202159 call!31453)) lt!202961)))

(declare-fun b!455732 () Bool)

(declare-fun res!202644 () Bool)

(assert (=> b!455732 (=> (not res!202644) (not e!278887))))

(assert (=> b!455732 (= res!202644 (= (size!3623 lt!202961) (+ (size!3623 call!31451) (size!3623 (ite c!91782 lt!202159 call!31453)))))))

(declare-fun b!455733 () Bool)

(assert (=> b!455733 (= e!278887 (or (not (= (ite c!91782 lt!202159 call!31453) Nil!4421)) (= lt!202961 call!31451)))))

(declare-fun b!455731 () Bool)

(assert (=> b!455731 (= e!278888 (Cons!4421 (h!9818 call!31451) (++!1284 (t!71131 call!31451) (ite c!91782 lt!202159 call!31453))))))

(assert (= (and d!173999 c!92064) b!455730))

(assert (= (and d!173999 (not c!92064)) b!455731))

(assert (= (and d!173999 res!202643) b!455732))

(assert (= (and b!455732 res!202644) b!455733))

(declare-fun m!721533 () Bool)

(assert (=> d!173999 m!721533))

(declare-fun m!721535 () Bool)

(assert (=> d!173999 m!721535))

(declare-fun m!721537 () Bool)

(assert (=> d!173999 m!721537))

(declare-fun m!721539 () Bool)

(assert (=> b!455732 m!721539))

(declare-fun m!721541 () Bool)

(assert (=> b!455732 m!721541))

(declare-fun m!721543 () Bool)

(assert (=> b!455732 m!721543))

(declare-fun m!721545 () Bool)

(assert (=> b!455731 m!721545))

(assert (=> bm!31449 d!173999))

(declare-fun d!174001 () Bool)

(declare-fun lt!202962 () Bool)

(assert (=> d!174001 (= lt!202962 (isEmpty!3386 (list!1959 (_2!2903 lt!202261))))))

(assert (=> d!174001 (= lt!202962 (isEmpty!3396 (c!91744 (_2!2903 lt!202261))))))

(assert (=> d!174001 (= (isEmpty!3391 (_2!2903 lt!202261)) lt!202962)))

(declare-fun bs!56413 () Bool)

(assert (= bs!56413 d!174001))

(declare-fun m!721547 () Bool)

(assert (=> bs!56413 m!721547))

(assert (=> bs!56413 m!721547))

(declare-fun m!721549 () Bool)

(assert (=> bs!56413 m!721549))

(declare-fun m!721551 () Bool)

(assert (=> bs!56413 m!721551))

(assert (=> b!454548 d!174001))

(assert (=> b!454649 d!173857))

(assert (=> b!454649 d!173859))

(assert (=> b!454649 d!173609))

(declare-fun d!174003 () Bool)

(declare-fun lt!202963 () Int)

(assert (=> d!174003 (= lt!202963 (size!3626 (list!1963 lt!202015)))))

(assert (=> d!174003 (= lt!202963 (size!3629 (c!91746 lt!202015)))))

(assert (=> d!174003 (= (size!3622 lt!202015) lt!202963)))

(declare-fun bs!56414 () Bool)

(assert (= bs!56414 d!174003))

(assert (=> bs!56414 m!718701))

(assert (=> bs!56414 m!718701))

(declare-fun m!721553 () Bool)

(assert (=> bs!56414 m!721553))

(declare-fun m!721555 () Bool)

(assert (=> bs!56414 m!721555))

(assert (=> d!173243 d!174003))

(declare-fun bs!56415 () Bool)

(declare-fun b!455736 () Bool)

(assert (= bs!56415 (and b!455736 b!454621)))

(declare-fun lambda!13341 () Int)

(assert (=> bs!56415 (= lambda!13341 lambda!13301)))

(declare-fun bs!56416 () Bool)

(assert (= bs!56416 (and b!455736 d!173243)))

(assert (=> bs!56416 (not (= lambda!13341 lambda!13283))))

(declare-fun bs!56417 () Bool)

(assert (= bs!56417 (and b!455736 b!454399)))

(assert (=> bs!56417 (= lambda!13341 lambda!13292)))

(declare-fun bs!56418 () Bool)

(assert (= bs!56418 (and b!455736 d!173405)))

(assert (=> bs!56418 (= lambda!13341 lambda!13311)))

(declare-fun bs!56419 () Bool)

(assert (= bs!56419 (and b!455736 d!173939)))

(assert (=> bs!56419 (= lambda!13341 lambda!13340)))

(declare-fun bs!56420 () Bool)

(assert (= bs!56420 (and b!455736 b!454602)))

(assert (=> bs!56420 (= lambda!13341 lambda!13299)))

(declare-fun bs!56421 () Bool)

(assert (= bs!56421 (and b!455736 b!454216)))

(assert (=> bs!56421 (not (= lambda!13341 lambda!13277))))

(declare-fun bs!56422 () Bool)

(assert (= bs!56422 (and b!455736 d!173433)))

(assert (=> bs!56422 (= lambda!13341 lambda!13313)))

(declare-fun bs!56423 () Bool)

(assert (= bs!56423 (and b!455736 d!173899)))

(assert (=> bs!56423 (= lambda!13341 lambda!13336)))

(declare-fun bs!56424 () Bool)

(assert (= bs!56424 (and b!455736 b!454217)))

(assert (=> bs!56424 (= lambda!13341 lambda!13278)))

(declare-fun bs!56425 () Bool)

(assert (= bs!56425 (and b!455736 b!454367)))

(assert (=> bs!56425 (= lambda!13341 lambda!13284)))

(declare-fun bs!56426 () Bool)

(assert (= bs!56426 (and b!455736 d!173365)))

(assert (=> bs!56426 (not (= lambda!13341 lambda!13300))))

(declare-fun b!455744 () Bool)

(declare-fun e!278895 () Bool)

(assert (=> b!455744 (= e!278895 true)))

(declare-fun b!455743 () Bool)

(declare-fun e!278894 () Bool)

(assert (=> b!455743 (= e!278894 e!278895)))

(declare-fun b!455742 () Bool)

(declare-fun e!278893 () Bool)

(assert (=> b!455742 (= e!278893 e!278894)))

(assert (=> b!455736 e!278893))

(assert (= b!455743 b!455744))

(assert (= b!455742 b!455743))

(assert (= (and b!455736 ((_ is Cons!4422) rules!1920)) b!455742))

(assert (=> b!455744 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13341))))

(assert (=> b!455744 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13341))))

(assert (=> b!455736 true))

(declare-fun b!455734 () Bool)

(declare-fun e!278890 () BalanceConc!3088)

(assert (=> b!455734 (= e!278890 (charsOf!502 separatorToken!170))))

(declare-fun d!174005 () Bool)

(declare-fun c!92066 () Bool)

(assert (=> d!174005 (= c!92066 ((_ is Cons!4423) (dropList!244 lt!202015 0)))))

(declare-fun e!278892 () List!4431)

(assert (=> d!174005 (= (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (dropList!244 lt!202015 0) separatorToken!170) e!278892)))

(declare-fun bm!31548 () Bool)

(declare-fun call!31557 () BalanceConc!3088)

(assert (=> bm!31548 (= call!31557 (charsOf!502 (h!9820 (dropList!244 lt!202015 0))))))

(declare-fun b!455735 () Bool)

(declare-fun e!278889 () List!4431)

(declare-fun call!31555 () List!4431)

(assert (=> b!455735 (= e!278889 call!31555)))

(declare-fun bm!31549 () Bool)

(declare-fun call!31553 () BalanceConc!3088)

(assert (=> bm!31549 (= call!31553 call!31557)))

(declare-fun c!92068 () Bool)

(declare-fun bm!31550 () Bool)

(declare-fun call!31554 () List!4431)

(assert (=> bm!31550 (= call!31554 (list!1959 (ite c!92068 call!31557 call!31553)))))

(assert (=> b!455736 (= e!278892 e!278889)))

(declare-fun lt!202964 () Unit!7961)

(assert (=> b!455736 (= lt!202964 (forallContained!412 (dropList!244 lt!202015 0) lambda!13341 (h!9820 (dropList!244 lt!202015 0))))))

(declare-fun lt!202967 () List!4431)

(assert (=> b!455736 (= lt!202967 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (t!71133 (dropList!244 lt!202015 0)) separatorToken!170))))

(declare-fun lt!202969 () Option!1150)

(assert (=> b!455736 (= lt!202969 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 (charsOf!502 (h!9820 (dropList!244 lt!202015 0)))) lt!202967)))))

(assert (=> b!455736 (= c!92068 (and ((_ is Some!1149) lt!202969) (= (_1!2901 (v!15470 lt!202969)) (h!9820 (dropList!244 lt!202015 0)))))))

(declare-fun bm!31551 () Bool)

(declare-fun call!31556 () List!4431)

(assert (=> bm!31551 (= call!31556 (list!1959 e!278890))))

(declare-fun c!92065 () Bool)

(declare-fun c!92067 () Bool)

(assert (=> bm!31551 (= c!92065 c!92067)))

(declare-fun b!455737 () Bool)

(declare-fun e!278891 () List!4431)

(assert (=> b!455737 (= e!278891 Nil!4421)))

(assert (=> b!455737 (= (print!470 thiss!17480 (singletonSeq!405 (h!9820 (dropList!244 lt!202015 0)))) (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 (dropList!244 lt!202015 0))) 0 (BalanceConc!3089 Empty!1540)))))

(declare-fun lt!202965 () Unit!7961)

(declare-fun Unit!7993 () Unit!7961)

(assert (=> b!455737 (= lt!202965 Unit!7993)))

(declare-fun lt!202968 () Unit!7961)

(assert (=> b!455737 (= lt!202968 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 call!31556 lt!202967))))

(assert (=> b!455737 false))

(declare-fun lt!202966 () Unit!7961)

(declare-fun Unit!7994 () Unit!7961)

(assert (=> b!455737 (= lt!202966 Unit!7994)))

(declare-fun b!455738 () Bool)

(assert (=> b!455738 (= e!278891 (++!1284 call!31555 lt!202967))))

(declare-fun b!455739 () Bool)

(assert (=> b!455739 (= e!278890 call!31553)))

(declare-fun bm!31552 () Bool)

(assert (=> bm!31552 (= call!31555 (++!1284 call!31554 (ite c!92068 lt!202967 call!31556)))))

(declare-fun b!455740 () Bool)

(assert (=> b!455740 (= e!278892 Nil!4421)))

(declare-fun b!455741 () Bool)

(assert (=> b!455741 (= c!92067 (and ((_ is Some!1149) lt!202969) (not (= (_1!2901 (v!15470 lt!202969)) (h!9820 (dropList!244 lt!202015 0))))))))

(assert (=> b!455741 (= e!278889 e!278891)))

(assert (= (and d!174005 c!92066) b!455736))

(assert (= (and d!174005 (not c!92066)) b!455740))

(assert (= (and b!455736 c!92068) b!455735))

(assert (= (and b!455736 (not c!92068)) b!455741))

(assert (= (and b!455741 c!92067) b!455738))

(assert (= (and b!455741 (not c!92067)) b!455737))

(assert (= (or b!455738 b!455737) bm!31549))

(assert (= (or b!455738 b!455737) bm!31551))

(assert (= (and bm!31551 c!92065) b!455734))

(assert (= (and bm!31551 (not c!92065)) b!455739))

(assert (= (or b!455735 bm!31549) bm!31548))

(assert (= (or b!455735 b!455738) bm!31550))

(assert (= (or b!455735 b!455738) bm!31552))

(declare-fun m!721557 () Bool)

(assert (=> bm!31548 m!721557))

(assert (=> b!455734 m!718457))

(declare-fun m!721559 () Bool)

(assert (=> b!455736 m!721559))

(declare-fun m!721561 () Bool)

(assert (=> b!455736 m!721561))

(assert (=> b!455736 m!721557))

(assert (=> b!455736 m!718743))

(declare-fun m!721563 () Bool)

(assert (=> b!455736 m!721563))

(assert (=> b!455736 m!721561))

(declare-fun m!721565 () Bool)

(assert (=> b!455736 m!721565))

(declare-fun m!721567 () Bool)

(assert (=> b!455736 m!721567))

(assert (=> b!455736 m!721557))

(assert (=> b!455736 m!721559))

(declare-fun m!721569 () Bool)

(assert (=> bm!31551 m!721569))

(declare-fun m!721571 () Bool)

(assert (=> b!455738 m!721571))

(declare-fun m!721573 () Bool)

(assert (=> b!455737 m!721573))

(assert (=> b!455737 m!721573))

(declare-fun m!721575 () Bool)

(assert (=> b!455737 m!721575))

(assert (=> b!455737 m!721573))

(declare-fun m!721577 () Bool)

(assert (=> b!455737 m!721577))

(declare-fun m!721579 () Bool)

(assert (=> b!455737 m!721579))

(declare-fun m!721581 () Bool)

(assert (=> bm!31552 m!721581))

(declare-fun m!721583 () Bool)

(assert (=> bm!31550 m!721583))

(assert (=> d!173243 d!174005))

(assert (=> d!173243 d!173941))

(declare-fun d!174007 () Bool)

(assert (=> d!174007 (= (list!1959 lt!202131) (list!1962 (c!91744 lt!202131)))))

(declare-fun bs!56427 () Bool)

(assert (= bs!56427 d!174007))

(declare-fun m!721585 () Bool)

(assert (=> bs!56427 m!721585))

(assert (=> d!173243 d!174007))

(declare-fun d!174009 () Bool)

(assert (=> d!174009 (= (dropList!244 lt!202015 0) (drop!313 (list!1964 (c!91746 lt!202015)) 0))))

(declare-fun bs!56428 () Bool)

(assert (= bs!56428 d!174009))

(assert (=> bs!56428 m!721229))

(assert (=> bs!56428 m!721229))

(declare-fun m!721587 () Bool)

(assert (=> bs!56428 m!721587))

(assert (=> d!173243 d!174009))

(declare-fun d!174011 () Bool)

(assert (=> d!174011 (forall!1280 (dropList!244 lt!202015 0) lambda!13283)))

(declare-fun lt!202972 () Unit!7961)

(declare-fun choose!3438 (List!4433 List!4433 Int) Unit!7961)

(assert (=> d!174011 (= lt!202972 (choose!3438 (list!1963 lt!202015) (dropList!244 lt!202015 0) lambda!13283))))

(assert (=> d!174011 (forall!1280 (list!1963 lt!202015) lambda!13283)))

(assert (=> d!174011 (= (lemmaContentSubsetPreservesForall!187 (list!1963 lt!202015) (dropList!244 lt!202015 0) lambda!13283) lt!202972)))

(declare-fun bs!56429 () Bool)

(assert (= bs!56429 d!174011))

(assert (=> bs!56429 m!718743))

(declare-fun m!721589 () Bool)

(assert (=> bs!56429 m!721589))

(assert (=> bs!56429 m!718701))

(assert (=> bs!56429 m!718743))

(declare-fun m!721591 () Bool)

(assert (=> bs!56429 m!721591))

(assert (=> bs!56429 m!718701))

(declare-fun m!721593 () Bool)

(assert (=> bs!56429 m!721593))

(assert (=> d!173243 d!174011))

(declare-fun d!174013 () Bool)

(declare-fun lt!202973 () Bool)

(assert (=> d!174013 (= lt!202973 (select (content!740 rules!1920) (rule!1550 (_1!2901 (get!1618 lt!202212)))))))

(declare-fun e!278897 () Bool)

(assert (=> d!174013 (= lt!202973 e!278897)))

(declare-fun res!202646 () Bool)

(assert (=> d!174013 (=> (not res!202646) (not e!278897))))

(assert (=> d!174013 (= res!202646 ((_ is Cons!4422) rules!1920))))

(assert (=> d!174013 (= (contains!990 rules!1920 (rule!1550 (_1!2901 (get!1618 lt!202212)))) lt!202973)))

(declare-fun b!455745 () Bool)

(declare-fun e!278896 () Bool)

(assert (=> b!455745 (= e!278897 e!278896)))

(declare-fun res!202645 () Bool)

(assert (=> b!455745 (=> res!202645 e!278896)))

(assert (=> b!455745 (= res!202645 (= (h!9819 rules!1920) (rule!1550 (_1!2901 (get!1618 lt!202212)))))))

(declare-fun b!455746 () Bool)

(assert (=> b!455746 (= e!278896 (contains!990 (t!71132 rules!1920) (rule!1550 (_1!2901 (get!1618 lt!202212)))))))

(assert (= (and d!174013 res!202646) b!455745))

(assert (= (and b!455745 (not res!202645)) b!455746))

(assert (=> d!174013 m!721117))

(declare-fun m!721595 () Bool)

(assert (=> d!174013 m!721595))

(declare-fun m!721597 () Bool)

(assert (=> b!455746 m!721597))

(assert (=> b!454484 d!174013))

(assert (=> b!454484 d!173567))

(declare-fun d!174015 () Bool)

(declare-fun lt!202974 () Int)

(assert (=> d!174015 (>= lt!202974 0)))

(declare-fun e!278898 () Int)

(assert (=> d!174015 (= lt!202974 e!278898)))

(declare-fun c!92069 () Bool)

(assert (=> d!174015 (= c!92069 ((_ is Nil!4421) lt!202277))))

(assert (=> d!174015 (= (size!3623 lt!202277) lt!202974)))

(declare-fun b!455747 () Bool)

(assert (=> b!455747 (= e!278898 0)))

(declare-fun b!455748 () Bool)

(assert (=> b!455748 (= e!278898 (+ 1 (size!3623 (t!71131 lt!202277))))))

(assert (= (and d!174015 c!92069) b!455747))

(assert (= (and d!174015 (not c!92069)) b!455748))

(declare-fun m!721599 () Bool)

(assert (=> b!455748 m!721599))

(assert (=> b!454613 d!174015))

(declare-fun d!174017 () Bool)

(declare-fun lt!202975 () Int)

(assert (=> d!174017 (>= lt!202975 0)))

(declare-fun e!278899 () Int)

(assert (=> d!174017 (= lt!202975 e!278899)))

(declare-fun c!92070 () Bool)

(assert (=> d!174017 (= c!92070 ((_ is Nil!4421) (++!1284 lt!202023 lt!202032)))))

(assert (=> d!174017 (= (size!3623 (++!1284 lt!202023 lt!202032)) lt!202975)))

(declare-fun b!455749 () Bool)

(assert (=> b!455749 (= e!278899 0)))

(declare-fun b!455750 () Bool)

(assert (=> b!455750 (= e!278899 (+ 1 (size!3623 (t!71131 (++!1284 lt!202023 lt!202032)))))))

(assert (= (and d!174017 c!92070) b!455749))

(assert (= (and d!174017 (not c!92070)) b!455750))

(assert (=> b!455750 m!720983))

(assert (=> b!454613 d!174017))

(assert (=> b!454613 d!173849))

(declare-fun d!174019 () Bool)

(declare-fun lt!202976 () Int)

(assert (=> d!174019 (= lt!202976 (size!3626 (list!1963 lt!202031)))))

(assert (=> d!174019 (= lt!202976 (size!3629 (c!91746 lt!202031)))))

(assert (=> d!174019 (= (size!3622 lt!202031) lt!202976)))

(declare-fun bs!56430 () Bool)

(assert (= bs!56430 d!174019))

(assert (=> bs!56430 m!718851))

(assert (=> bs!56430 m!718851))

(declare-fun m!721601 () Bool)

(assert (=> bs!56430 m!721601))

(declare-fun m!721603 () Bool)

(assert (=> bs!56430 m!721603))

(assert (=> b!454450 d!174019))

(declare-fun d!174021 () Bool)

(assert (=> d!174021 (= (list!1959 lt!202280) (list!1962 (c!91744 lt!202280)))))

(declare-fun bs!56431 () Bool)

(assert (= bs!56431 d!174021))

(declare-fun m!721605 () Bool)

(assert (=> bs!56431 m!721605))

(assert (=> d!173363 d!174021))

(declare-fun d!174023 () Bool)

(assert (=> d!174023 (= (list!1959 e!278061) (list!1962 (c!91744 e!278061)))))

(declare-fun bs!56432 () Bool)

(assert (= bs!56432 d!174023))

(declare-fun m!721607 () Bool)

(assert (=> bs!56432 m!721607))

(assert (=> bm!31448 d!174023))

(declare-fun d!174025 () Bool)

(assert (=> d!174025 (= (list!1959 (_2!2903 lt!202329)) (list!1962 (c!91744 (_2!2903 lt!202329))))))

(declare-fun bs!56433 () Bool)

(assert (= bs!56433 d!174025))

(declare-fun m!721609 () Bool)

(assert (=> bs!56433 m!721609))

(assert (=> b!454685 d!174025))

(assert (=> b!454685 d!173893))

(assert (=> b!454685 d!173895))

(declare-fun d!174027 () Bool)

(assert (=> d!174027 (= (isEmpty!3390 lt!202029) (not ((_ is Some!1149) lt!202029)))))

(assert (=> d!173329 d!174027))

(declare-fun d!174029 () Bool)

(assert (=> d!174029 (= (isDefined!990 lt!202401) (not (isEmpty!3394 lt!202401)))))

(declare-fun bs!56434 () Bool)

(assert (= bs!56434 d!174029))

(declare-fun m!721611 () Bool)

(assert (=> bs!56434 m!721611))

(assert (=> b!454964 d!174029))

(declare-fun b!455751 () Bool)

(declare-fun e!278900 () List!4431)

(assert (=> b!455751 (= e!278900 Nil!4421)))

(declare-fun b!455754 () Bool)

(declare-fun e!278901 () List!4431)

(assert (=> b!455754 (= e!278901 (++!1284 (list!1962 (left!3728 (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 0)))) (list!1962 (right!4058 (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 0))))))))

(declare-fun b!455753 () Bool)

(assert (=> b!455753 (= e!278901 (list!1966 (xs!4171 (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 0)))))))

(declare-fun b!455752 () Bool)

(assert (=> b!455752 (= e!278900 e!278901)))

(declare-fun c!92072 () Bool)

(assert (=> b!455752 (= c!92072 ((_ is Leaf!2309) (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 0))))))

(declare-fun d!174031 () Bool)

(declare-fun c!92071 () Bool)

(assert (=> d!174031 (= c!92071 ((_ is Empty!1540) (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 0))))))

(assert (=> d!174031 (= (list!1962 (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 0))) e!278900)))

(assert (= (and d!174031 c!92071) b!455751))

(assert (= (and d!174031 (not c!92071)) b!455752))

(assert (= (and b!455752 c!92072) b!455753))

(assert (= (and b!455752 (not c!92072)) b!455754))

(declare-fun m!721613 () Bool)

(assert (=> b!455754 m!721613))

(declare-fun m!721615 () Bool)

(assert (=> b!455754 m!721615))

(assert (=> b!455754 m!721613))

(assert (=> b!455754 m!721615))

(declare-fun m!721617 () Bool)

(assert (=> b!455754 m!721617))

(declare-fun m!721619 () Bool)

(assert (=> b!455753 m!721619))

(assert (=> d!173373 d!174031))

(declare-fun d!174033 () Bool)

(assert (=> d!174033 (= (head!1108 (drop!313 lt!202129 0)) (apply!1131 lt!202129 0))))

(declare-fun lt!202977 () Unit!7961)

(assert (=> d!174033 (= lt!202977 (choose!3432 lt!202129 0))))

(declare-fun e!278902 () Bool)

(assert (=> d!174033 e!278902))

(declare-fun res!202647 () Bool)

(assert (=> d!174033 (=> (not res!202647) (not e!278902))))

(assert (=> d!174033 (= res!202647 (>= 0 0))))

(assert (=> d!174033 (= (lemmaDropApply!284 lt!202129 0) lt!202977)))

(declare-fun b!455755 () Bool)

(assert (=> b!455755 (= e!278902 (< 0 (size!3626 lt!202129)))))

(assert (= (and d!174033 res!202647) b!455755))

(assert (=> d!174033 m!718697))

(assert (=> d!174033 m!718697))

(assert (=> d!174033 m!718705))

(assert (=> d!174033 m!718707))

(declare-fun m!721621 () Bool)

(assert (=> d!174033 m!721621))

(declare-fun m!721623 () Bool)

(assert (=> b!455755 m!721623))

(assert (=> b!454367 d!174033))

(declare-fun b!455756 () Bool)

(declare-fun e!278906 () List!4433)

(assert (=> b!455756 (= e!278906 lt!202128)))

(declare-fun bm!31553 () Bool)

(declare-fun call!31558 () Int)

(assert (=> bm!31553 (= call!31558 (size!3626 lt!202128))))

(declare-fun b!455757 () Bool)

(declare-fun e!278907 () List!4433)

(assert (=> b!455757 (= e!278907 Nil!4423)))

(declare-fun b!455758 () Bool)

(declare-fun e!278904 () Int)

(assert (=> b!455758 (= e!278904 call!31558)))

(declare-fun b!455759 () Bool)

(declare-fun e!278905 () Int)

(assert (=> b!455759 (= e!278905 0)))

(declare-fun b!455760 () Bool)

(assert (=> b!455760 (= e!278906 (drop!313 (t!71133 lt!202128) (- 0 1)))))

(declare-fun b!455761 () Bool)

(assert (=> b!455761 (= e!278904 e!278905)))

(declare-fun c!92076 () Bool)

(assert (=> b!455761 (= c!92076 (>= 0 call!31558))))

(declare-fun b!455762 () Bool)

(assert (=> b!455762 (= e!278907 e!278906)))

(declare-fun c!92074 () Bool)

(assert (=> b!455762 (= c!92074 (<= 0 0))))

(declare-fun b!455763 () Bool)

(declare-fun e!278903 () Bool)

(declare-fun lt!202978 () List!4433)

(assert (=> b!455763 (= e!278903 (= (size!3626 lt!202978) e!278904))))

(declare-fun c!92073 () Bool)

(assert (=> b!455763 (= c!92073 (<= 0 0))))

(declare-fun d!174035 () Bool)

(assert (=> d!174035 e!278903))

(declare-fun res!202648 () Bool)

(assert (=> d!174035 (=> (not res!202648) (not e!278903))))

(assert (=> d!174035 (= res!202648 (= ((_ map implies) (content!738 lt!202978) (content!738 lt!202128)) ((as const (InoxSet Token!1462)) true)))))

(assert (=> d!174035 (= lt!202978 e!278907)))

(declare-fun c!92075 () Bool)

(assert (=> d!174035 (= c!92075 ((_ is Nil!4423) lt!202128))))

(assert (=> d!174035 (= (drop!313 lt!202128 0) lt!202978)))

(declare-fun b!455764 () Bool)

(assert (=> b!455764 (= e!278905 (- call!31558 0))))

(assert (= (and d!174035 c!92075) b!455757))

(assert (= (and d!174035 (not c!92075)) b!455762))

(assert (= (and b!455762 c!92074) b!455756))

(assert (= (and b!455762 (not c!92074)) b!455760))

(assert (= (and d!174035 res!202648) b!455763))

(assert (= (and b!455763 c!92073) b!455758))

(assert (= (and b!455763 (not c!92073)) b!455761))

(assert (= (and b!455761 c!92076) b!455759))

(assert (= (and b!455761 (not c!92076)) b!455764))

(assert (= (or b!455758 b!455761 b!455764) bm!31553))

(declare-fun m!721625 () Bool)

(assert (=> bm!31553 m!721625))

(declare-fun m!721627 () Bool)

(assert (=> b!455760 m!721627))

(declare-fun m!721629 () Bool)

(assert (=> b!455763 m!721629))

(declare-fun m!721631 () Bool)

(assert (=> d!174035 m!721631))

(declare-fun m!721633 () Bool)

(assert (=> d!174035 m!721633))

(assert (=> b!454367 d!174035))

(declare-fun b!455765 () Bool)

(declare-fun e!278908 () Bool)

(declare-fun e!278909 () Bool)

(assert (=> b!455765 (= e!278908 e!278909)))

(declare-fun res!202653 () Bool)

(assert (=> b!455765 (=> (not res!202653) (not e!278909))))

(declare-fun lt!202979 () Option!1151)

(assert (=> b!455765 (= res!202653 (= (_1!2902 (get!1620 lt!202979)) (_1!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130)))))))))

(declare-fun e!278911 () Bool)

(declare-fun b!455766 () Bool)

(assert (=> b!455766 (= e!278911 (= (list!1959 (_2!2902 (get!1620 lt!202979))) (_2!2901 (get!1618 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130)))))))))

(declare-fun b!455767 () Bool)

(assert (=> b!455767 (= e!278909 (= (list!1959 (_2!2902 (get!1620 lt!202979))) (_2!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130)))))))))

(declare-fun d!174037 () Bool)

(declare-fun e!278912 () Bool)

(assert (=> d!174037 e!278912))

(declare-fun res!202654 () Bool)

(assert (=> d!174037 (=> (not res!202654) (not e!278912))))

(assert (=> d!174037 (= res!202654 (= (isDefined!990 lt!202979) (isDefined!989 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130))))))))

(declare-fun e!278910 () Option!1151)

(assert (=> d!174037 (= lt!202979 e!278910)))

(declare-fun c!92077 () Bool)

(assert (=> d!174037 (= c!92077 (and ((_ is Cons!4422) rules!1920) ((_ is Nil!4422) (t!71132 rules!1920))))))

(declare-fun lt!202981 () Unit!7961)

(declare-fun lt!202985 () Unit!7961)

(assert (=> d!174037 (= lt!202981 lt!202985)))

(declare-fun lt!202980 () List!4431)

(declare-fun lt!202984 () List!4431)

(assert (=> d!174037 (isPrefix!513 lt!202980 lt!202984)))

(assert (=> d!174037 (= lt!202985 (lemmaIsPrefixRefl!287 lt!202980 lt!202984))))

(assert (=> d!174037 (= lt!202984 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130)))))

(assert (=> d!174037 (= lt!202980 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130)))))

(assert (=> d!174037 (rulesValidInductive!282 thiss!17480 rules!1920)))

(assert (=> d!174037 (= (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130)) lt!202979)))

(declare-fun b!455768 () Bool)

(declare-fun call!31559 () Option!1151)

(assert (=> b!455768 (= e!278910 call!31559)))

(declare-fun bm!31554 () Bool)

(assert (=> bm!31554 (= call!31559 (maxPrefixOneRuleZipperSequence!191 thiss!17480 (h!9819 rules!1920) (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130)))))

(declare-fun b!455769 () Bool)

(declare-fun e!278913 () Bool)

(assert (=> b!455769 (= e!278913 e!278911)))

(declare-fun res!202650 () Bool)

(assert (=> b!455769 (=> (not res!202650) (not e!278911))))

(assert (=> b!455769 (= res!202650 (= (_1!2902 (get!1620 lt!202979)) (_1!2901 (get!1618 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130)))))))))

(declare-fun b!455770 () Bool)

(declare-fun lt!202982 () Option!1151)

(declare-fun lt!202983 () Option!1151)

(assert (=> b!455770 (= e!278910 (ite (and ((_ is None!1150) lt!202982) ((_ is None!1150) lt!202983)) None!1150 (ite ((_ is None!1150) lt!202983) lt!202982 (ite ((_ is None!1150) lt!202982) lt!202983 (ite (>= (size!3619 (_1!2902 (v!15471 lt!202982))) (size!3619 (_1!2902 (v!15471 lt!202983)))) lt!202982 lt!202983)))))))

(assert (=> b!455770 (= lt!202982 call!31559)))

(assert (=> b!455770 (= lt!202983 (maxPrefixZipperSequence!424 thiss!17480 (t!71132 rules!1920) (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130)))))

(declare-fun b!455771 () Bool)

(declare-fun res!202651 () Bool)

(assert (=> b!455771 (=> (not res!202651) (not e!278912))))

(assert (=> b!455771 (= res!202651 e!278913)))

(declare-fun res!202652 () Bool)

(assert (=> b!455771 (=> res!202652 e!278913)))

(assert (=> b!455771 (= res!202652 (not (isDefined!990 lt!202979)))))

(declare-fun b!455772 () Bool)

(assert (=> b!455772 (= e!278912 e!278908)))

(declare-fun res!202649 () Bool)

(assert (=> b!455772 (=> res!202649 e!278908)))

(assert (=> b!455772 (= res!202649 (not (isDefined!990 lt!202979)))))

(assert (= (and d!174037 c!92077) b!455768))

(assert (= (and d!174037 (not c!92077)) b!455770))

(assert (= (or b!455768 b!455770) bm!31554))

(assert (= (and d!174037 res!202654) b!455771))

(assert (= (and b!455771 (not res!202652)) b!455769))

(assert (= (and b!455769 res!202650) b!455766))

(assert (= (and b!455771 res!202651) b!455772))

(assert (= (and b!455772 (not res!202649)) b!455765))

(assert (= (and b!455765 res!202653) b!455767))

(assert (=> b!455770 m!718709))

(declare-fun m!721635 () Bool)

(assert (=> b!455770 m!721635))

(assert (=> bm!31554 m!718709))

(declare-fun m!721637 () Bool)

(assert (=> bm!31554 m!721637))

(declare-fun m!721639 () Bool)

(assert (=> d!174037 m!721639))

(declare-fun m!721641 () Bool)

(assert (=> d!174037 m!721641))

(declare-fun m!721643 () Bool)

(assert (=> d!174037 m!721643))

(declare-fun m!721645 () Bool)

(assert (=> d!174037 m!721645))

(declare-fun m!721647 () Bool)

(assert (=> d!174037 m!721647))

(assert (=> d!174037 m!718709))

(assert (=> d!174037 m!721643))

(assert (=> d!174037 m!721645))

(declare-fun m!721649 () Bool)

(assert (=> d!174037 m!721649))

(assert (=> d!174037 m!718921))

(declare-fun m!721651 () Bool)

(assert (=> b!455765 m!721651))

(assert (=> b!455765 m!718709))

(assert (=> b!455765 m!721643))

(assert (=> b!455765 m!721643))

(declare-fun m!721653 () Bool)

(assert (=> b!455765 m!721653))

(assert (=> b!455765 m!721653))

(declare-fun m!721655 () Bool)

(assert (=> b!455765 m!721655))

(assert (=> b!455772 m!721639))

(assert (=> b!455767 m!721651))

(assert (=> b!455767 m!721653))

(assert (=> b!455767 m!721655))

(declare-fun m!721657 () Bool)

(assert (=> b!455767 m!721657))

(assert (=> b!455767 m!718709))

(assert (=> b!455767 m!721643))

(assert (=> b!455767 m!721643))

(assert (=> b!455767 m!721653))

(assert (=> b!455771 m!721639))

(assert (=> b!455769 m!721651))

(assert (=> b!455769 m!718709))

(assert (=> b!455769 m!721643))

(assert (=> b!455769 m!721643))

(assert (=> b!455769 m!721645))

(assert (=> b!455769 m!721645))

(declare-fun m!721659 () Bool)

(assert (=> b!455769 m!721659))

(assert (=> b!455766 m!721645))

(assert (=> b!455766 m!721659))

(assert (=> b!455766 m!721651))

(assert (=> b!455766 m!721643))

(assert (=> b!455766 m!721645))

(assert (=> b!455766 m!718709))

(assert (=> b!455766 m!721643))

(assert (=> b!455766 m!721657))

(assert (=> b!454367 d!174037))

(declare-fun b!455773 () Bool)

(declare-fun e!278917 () List!4433)

(assert (=> b!455773 (= e!278917 lt!202128)))

(declare-fun bm!31555 () Bool)

(declare-fun call!31560 () Int)

(assert (=> bm!31555 (= call!31560 (size!3626 lt!202128))))

(declare-fun b!455774 () Bool)

(declare-fun e!278918 () List!4433)

(assert (=> b!455774 (= e!278918 Nil!4423)))

(declare-fun b!455775 () Bool)

(declare-fun e!278915 () Int)

(assert (=> b!455775 (= e!278915 call!31560)))

(declare-fun b!455776 () Bool)

(declare-fun e!278916 () Int)

(assert (=> b!455776 (= e!278916 0)))

(declare-fun b!455777 () Bool)

(assert (=> b!455777 (= e!278917 (drop!313 (t!71133 lt!202128) (- (+ 0 1) 1)))))

(declare-fun b!455778 () Bool)

(assert (=> b!455778 (= e!278915 e!278916)))

(declare-fun c!92081 () Bool)

(assert (=> b!455778 (= c!92081 (>= (+ 0 1) call!31560))))

(declare-fun b!455779 () Bool)

(assert (=> b!455779 (= e!278918 e!278917)))

(declare-fun c!92079 () Bool)

(assert (=> b!455779 (= c!92079 (<= (+ 0 1) 0))))

(declare-fun b!455780 () Bool)

(declare-fun e!278914 () Bool)

(declare-fun lt!202986 () List!4433)

(assert (=> b!455780 (= e!278914 (= (size!3626 lt!202986) e!278915))))

(declare-fun c!92078 () Bool)

(assert (=> b!455780 (= c!92078 (<= (+ 0 1) 0))))

(declare-fun d!174039 () Bool)

(assert (=> d!174039 e!278914))

(declare-fun res!202655 () Bool)

(assert (=> d!174039 (=> (not res!202655) (not e!278914))))

(assert (=> d!174039 (= res!202655 (= ((_ map implies) (content!738 lt!202986) (content!738 lt!202128)) ((as const (InoxSet Token!1462)) true)))))

(assert (=> d!174039 (= lt!202986 e!278918)))

(declare-fun c!92080 () Bool)

(assert (=> d!174039 (= c!92080 ((_ is Nil!4423) lt!202128))))

(assert (=> d!174039 (= (drop!313 lt!202128 (+ 0 1)) lt!202986)))

(declare-fun b!455781 () Bool)

(assert (=> b!455781 (= e!278916 (- call!31560 (+ 0 1)))))

(assert (= (and d!174039 c!92080) b!455774))

(assert (= (and d!174039 (not c!92080)) b!455779))

(assert (= (and b!455779 c!92079) b!455773))

(assert (= (and b!455779 (not c!92079)) b!455777))

(assert (= (and d!174039 res!202655) b!455780))

(assert (= (and b!455780 c!92078) b!455775))

(assert (= (and b!455780 (not c!92078)) b!455778))

(assert (= (and b!455778 c!92081) b!455776))

(assert (= (and b!455778 (not c!92081)) b!455781))

(assert (= (or b!455775 b!455778 b!455781) bm!31555))

(assert (=> bm!31555 m!721625))

(declare-fun m!721661 () Bool)

(assert (=> b!455777 m!721661))

(declare-fun m!721663 () Bool)

(assert (=> b!455780 m!721663))

(declare-fun m!721665 () Bool)

(assert (=> d!174039 m!721665))

(assert (=> d!174039 m!721633))

(assert (=> b!454367 d!174039))

(declare-fun d!174041 () Bool)

(assert (=> d!174041 (= (tail!636 (drop!313 lt!202128 0)) (drop!313 lt!202128 (+ 0 1)))))

(declare-fun lt!202987 () Unit!7961)

(assert (=> d!174041 (= lt!202987 (choose!3434 lt!202128 0))))

(declare-fun e!278919 () Bool)

(assert (=> d!174041 e!278919))

(declare-fun res!202656 () Bool)

(assert (=> d!174041 (=> (not res!202656) (not e!278919))))

(assert (=> d!174041 (= res!202656 (>= 0 0))))

(assert (=> d!174041 (= (lemmaDropTail!276 lt!202128 0) lt!202987)))

(declare-fun b!455782 () Bool)

(assert (=> b!455782 (= e!278919 (< 0 (size!3626 lt!202128)))))

(assert (= (and d!174041 res!202656) b!455782))

(assert (=> d!174041 m!718719))

(assert (=> d!174041 m!718719))

(assert (=> d!174041 m!718721))

(assert (=> d!174041 m!718695))

(declare-fun m!721667 () Bool)

(assert (=> d!174041 m!721667))

(assert (=> b!455782 m!721625))

(assert (=> b!454367 d!174041))

(declare-fun b!455783 () Bool)

(declare-fun e!278923 () List!4433)

(assert (=> b!455783 (= e!278923 lt!202129)))

(declare-fun bm!31556 () Bool)

(declare-fun call!31561 () Int)

(assert (=> bm!31556 (= call!31561 (size!3626 lt!202129))))

(declare-fun b!455784 () Bool)

(declare-fun e!278924 () List!4433)

(assert (=> b!455784 (= e!278924 Nil!4423)))

(declare-fun b!455785 () Bool)

(declare-fun e!278921 () Int)

(assert (=> b!455785 (= e!278921 call!31561)))

(declare-fun b!455786 () Bool)

(declare-fun e!278922 () Int)

(assert (=> b!455786 (= e!278922 0)))

(declare-fun b!455787 () Bool)

(assert (=> b!455787 (= e!278923 (drop!313 (t!71133 lt!202129) (- 0 1)))))

(declare-fun b!455788 () Bool)

(assert (=> b!455788 (= e!278921 e!278922)))

(declare-fun c!92085 () Bool)

(assert (=> b!455788 (= c!92085 (>= 0 call!31561))))

(declare-fun b!455789 () Bool)

(assert (=> b!455789 (= e!278924 e!278923)))

(declare-fun c!92083 () Bool)

(assert (=> b!455789 (= c!92083 (<= 0 0))))

(declare-fun b!455790 () Bool)

(declare-fun e!278920 () Bool)

(declare-fun lt!202988 () List!4433)

(assert (=> b!455790 (= e!278920 (= (size!3626 lt!202988) e!278921))))

(declare-fun c!92082 () Bool)

(assert (=> b!455790 (= c!92082 (<= 0 0))))

(declare-fun d!174043 () Bool)

(assert (=> d!174043 e!278920))

(declare-fun res!202657 () Bool)

(assert (=> d!174043 (=> (not res!202657) (not e!278920))))

(assert (=> d!174043 (= res!202657 (= ((_ map implies) (content!738 lt!202988) (content!738 lt!202129)) ((as const (InoxSet Token!1462)) true)))))

(assert (=> d!174043 (= lt!202988 e!278924)))

(declare-fun c!92084 () Bool)

(assert (=> d!174043 (= c!92084 ((_ is Nil!4423) lt!202129))))

(assert (=> d!174043 (= (drop!313 lt!202129 0) lt!202988)))

(declare-fun b!455791 () Bool)

(assert (=> b!455791 (= e!278922 (- call!31561 0))))

(assert (= (and d!174043 c!92084) b!455784))

(assert (= (and d!174043 (not c!92084)) b!455789))

(assert (= (and b!455789 c!92083) b!455783))

(assert (= (and b!455789 (not c!92083)) b!455787))

(assert (= (and d!174043 res!202657) b!455790))

(assert (= (and b!455790 c!92082) b!455785))

(assert (= (and b!455790 (not c!92082)) b!455788))

(assert (= (and b!455788 c!92085) b!455786))

(assert (= (and b!455788 (not c!92085)) b!455791))

(assert (= (or b!455785 b!455788 b!455791) bm!31556))

(assert (=> bm!31556 m!721623))

(declare-fun m!721669 () Bool)

(assert (=> b!455787 m!721669))

(declare-fun m!721671 () Bool)

(assert (=> b!455790 m!721671))

(declare-fun m!721673 () Bool)

(assert (=> d!174043 m!721673))

(declare-fun m!721675 () Bool)

(assert (=> d!174043 m!721675))

(assert (=> b!454367 d!174043))

(assert (=> b!454367 d!173941))

(declare-fun d!174045 () Bool)

(assert (=> d!174045 (= (tail!636 (drop!313 lt!202128 0)) (t!71133 (drop!313 lt!202128 0)))))

(assert (=> b!454367 d!174045))

(declare-fun d!174047 () Bool)

(assert (=> d!174047 (= (head!1108 (drop!313 lt!202129 0)) (h!9820 (drop!313 lt!202129 0)))))

(assert (=> b!454367 d!174047))

(declare-fun d!174049 () Bool)

(declare-fun lt!202989 () BalanceConc!3088)

(assert (=> d!174049 (= (list!1959 lt!202989) (originalCharacters!902 (apply!1130 lt!202015 0)))))

(assert (=> d!174049 (= lt!202989 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202015 0)))) (value!28797 (apply!1130 lt!202015 0))))))

(assert (=> d!174049 (= (charsOf!502 (apply!1130 lt!202015 0)) lt!202989)))

(declare-fun b_lambda!18881 () Bool)

(assert (=> (not b_lambda!18881) (not d!174049)))

(declare-fun t!71359 () Bool)

(declare-fun tb!45731 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202015 0))))) t!71359) tb!45731))

(declare-fun b!455792 () Bool)

(declare-fun e!278925 () Bool)

(declare-fun tp!126458 () Bool)

(assert (=> b!455792 (= e!278925 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202015 0)))) (value!28797 (apply!1130 lt!202015 0))))) tp!126458))))

(declare-fun result!50330 () Bool)

(assert (=> tb!45731 (= result!50330 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202015 0)))) (value!28797 (apply!1130 lt!202015 0)))) e!278925))))

(assert (= tb!45731 b!455792))

(declare-fun m!721677 () Bool)

(assert (=> b!455792 m!721677))

(declare-fun m!721679 () Bool)

(assert (=> tb!45731 m!721679))

(assert (=> d!174049 t!71359))

(declare-fun b_and!49011 () Bool)

(assert (= b_and!49007 (and (=> t!71359 result!50330) b_and!49011)))

(declare-fun tb!45733 () Bool)

(declare-fun t!71361 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202015 0))))) t!71361) tb!45733))

(declare-fun result!50332 () Bool)

(assert (= result!50332 result!50330))

(assert (=> d!174049 t!71361))

(declare-fun b_and!49013 () Bool)

(assert (= b_and!49009 (and (=> t!71361 result!50332) b_and!49013)))

(declare-fun tb!45735 () Bool)

(declare-fun t!71363 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202015 0))))) t!71363) tb!45735))

(declare-fun result!50334 () Bool)

(assert (= result!50334 result!50330))

(assert (=> d!174049 t!71363))

(declare-fun b_and!49015 () Bool)

(assert (= b_and!49003 (and (=> t!71363 result!50334) b_and!49015)))

(declare-fun tb!45737 () Bool)

(declare-fun t!71365 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202015 0))))) t!71365) tb!45737))

(declare-fun result!50336 () Bool)

(assert (= result!50336 result!50330))

(assert (=> d!174049 t!71365))

(declare-fun b_and!49017 () Bool)

(assert (= b_and!49005 (and (=> t!71365 result!50336) b_and!49017)))

(declare-fun tb!45739 () Bool)

(declare-fun t!71367 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202015 0))))) t!71367) tb!45739))

(declare-fun result!50338 () Bool)

(assert (= result!50338 result!50330))

(assert (=> d!174049 t!71367))

(declare-fun b_and!49019 () Bool)

(assert (= b_and!49001 (and (=> t!71367 result!50338) b_and!49019)))

(declare-fun m!721681 () Bool)

(assert (=> d!174049 m!721681))

(declare-fun m!721683 () Bool)

(assert (=> d!174049 m!721683))

(assert (=> b!454367 d!174049))

(declare-fun bs!56435 () Bool)

(declare-fun d!174051 () Bool)

(assert (= bs!56435 (and d!174051 b!454621)))

(declare-fun lambda!13342 () Int)

(assert (=> bs!56435 (not (= lambda!13342 lambda!13301))))

(declare-fun bs!56436 () Bool)

(assert (= bs!56436 (and d!174051 d!173243)))

(assert (=> bs!56436 (= lambda!13342 lambda!13283)))

(declare-fun bs!56437 () Bool)

(assert (= bs!56437 (and d!174051 b!454399)))

(assert (=> bs!56437 (not (= lambda!13342 lambda!13292))))

(declare-fun bs!56438 () Bool)

(assert (= bs!56438 (and d!174051 d!173405)))

(assert (=> bs!56438 (not (= lambda!13342 lambda!13311))))

(declare-fun bs!56439 () Bool)

(assert (= bs!56439 (and d!174051 d!173939)))

(assert (=> bs!56439 (not (= lambda!13342 lambda!13340))))

(declare-fun bs!56440 () Bool)

(assert (= bs!56440 (and d!174051 b!454602)))

(assert (=> bs!56440 (not (= lambda!13342 lambda!13299))))

(declare-fun bs!56441 () Bool)

(assert (= bs!56441 (and d!174051 b!454216)))

(assert (=> bs!56441 (= lambda!13342 lambda!13277)))

(declare-fun bs!56442 () Bool)

(assert (= bs!56442 (and d!174051 b!455736)))

(assert (=> bs!56442 (not (= lambda!13342 lambda!13341))))

(declare-fun bs!56443 () Bool)

(assert (= bs!56443 (and d!174051 d!173433)))

(assert (=> bs!56443 (not (= lambda!13342 lambda!13313))))

(declare-fun bs!56444 () Bool)

(assert (= bs!56444 (and d!174051 d!173899)))

(assert (=> bs!56444 (not (= lambda!13342 lambda!13336))))

(declare-fun bs!56445 () Bool)

(assert (= bs!56445 (and d!174051 b!454217)))

(assert (=> bs!56445 (not (= lambda!13342 lambda!13278))))

(declare-fun bs!56446 () Bool)

(assert (= bs!56446 (and d!174051 b!454367)))

(assert (=> bs!56446 (not (= lambda!13342 lambda!13284))))

(declare-fun bs!56447 () Bool)

(assert (= bs!56447 (and d!174051 d!173365)))

(assert (=> bs!56447 (= lambda!13342 lambda!13300)))

(declare-fun bs!56448 () Bool)

(declare-fun b!455799 () Bool)

(assert (= bs!56448 (and b!455799 d!173243)))

(declare-fun lambda!13343 () Int)

(assert (=> bs!56448 (not (= lambda!13343 lambda!13283))))

(declare-fun bs!56449 () Bool)

(assert (= bs!56449 (and b!455799 b!454399)))

(assert (=> bs!56449 (= lambda!13343 lambda!13292)))

(declare-fun bs!56450 () Bool)

(assert (= bs!56450 (and b!455799 d!173405)))

(assert (=> bs!56450 (= lambda!13343 lambda!13311)))

(declare-fun bs!56451 () Bool)

(assert (= bs!56451 (and b!455799 d!173939)))

(assert (=> bs!56451 (= lambda!13343 lambda!13340)))

(declare-fun bs!56452 () Bool)

(assert (= bs!56452 (and b!455799 b!454602)))

(assert (=> bs!56452 (= lambda!13343 lambda!13299)))

(declare-fun bs!56453 () Bool)

(assert (= bs!56453 (and b!455799 b!454216)))

(assert (=> bs!56453 (not (= lambda!13343 lambda!13277))))

(declare-fun bs!56454 () Bool)

(assert (= bs!56454 (and b!455799 b!455736)))

(assert (=> bs!56454 (= lambda!13343 lambda!13341)))

(declare-fun bs!56455 () Bool)

(assert (= bs!56455 (and b!455799 d!173433)))

(assert (=> bs!56455 (= lambda!13343 lambda!13313)))

(declare-fun bs!56456 () Bool)

(assert (= bs!56456 (and b!455799 d!173899)))

(assert (=> bs!56456 (= lambda!13343 lambda!13336)))

(declare-fun bs!56457 () Bool)

(assert (= bs!56457 (and b!455799 b!454217)))

(assert (=> bs!56457 (= lambda!13343 lambda!13278)))

(declare-fun bs!56458 () Bool)

(assert (= bs!56458 (and b!455799 b!454367)))

(assert (=> bs!56458 (= lambda!13343 lambda!13284)))

(declare-fun bs!56459 () Bool)

(assert (= bs!56459 (and b!455799 d!173365)))

(assert (=> bs!56459 (not (= lambda!13343 lambda!13300))))

(declare-fun bs!56460 () Bool)

(assert (= bs!56460 (and b!455799 d!174051)))

(assert (=> bs!56460 (not (= lambda!13343 lambda!13342))))

(declare-fun bs!56461 () Bool)

(assert (= bs!56461 (and b!455799 b!454621)))

(assert (=> bs!56461 (= lambda!13343 lambda!13301)))

(declare-fun b!455806 () Bool)

(declare-fun e!278935 () Bool)

(assert (=> b!455806 (= e!278935 true)))

(declare-fun b!455805 () Bool)

(declare-fun e!278934 () Bool)

(assert (=> b!455805 (= e!278934 e!278935)))

(declare-fun b!455804 () Bool)

(declare-fun e!278933 () Bool)

(assert (=> b!455804 (= e!278933 e!278934)))

(assert (=> b!455799 e!278933))

(assert (= b!455805 b!455806))

(assert (= b!455804 b!455805))

(assert (= (and b!455799 ((_ is Cons!4422) rules!1920)) b!455804))

(assert (=> b!455806 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13343))))

(assert (=> b!455806 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13343))))

(assert (=> b!455799 true))

(declare-fun call!31564 () Token!1462)

(declare-fun call!31565 () BalanceConc!3088)

(declare-fun c!92088 () Bool)

(declare-fun c!92089 () Bool)

(declare-fun call!31563 () Token!1462)

(declare-fun bm!31557 () Bool)

(assert (=> bm!31557 (= call!31565 (charsOf!502 (ite c!92089 call!31564 (ite c!92088 separatorToken!170 call!31563))))))

(declare-fun b!455793 () Bool)

(declare-fun e!278927 () Bool)

(assert (=> b!455793 (= e!278927 (<= (+ 0 1) (size!3622 lt!202015)))))

(declare-fun b!455794 () Bool)

(declare-fun e!278929 () BalanceConc!3088)

(assert (=> b!455794 (= e!278929 (charsOf!502 call!31563))))

(declare-fun b!455795 () Bool)

(declare-fun e!278928 () BalanceConc!3088)

(assert (=> b!455795 (= e!278928 (BalanceConc!3089 Empty!1540))))

(assert (=> b!455795 (= (print!470 thiss!17480 (singletonSeq!405 call!31563)) (printTailRec!431 thiss!17480 (singletonSeq!405 call!31563) 0 (BalanceConc!3089 Empty!1540)))))

(declare-fun lt!203003 () Unit!7961)

(declare-fun Unit!7997 () Unit!7961)

(assert (=> b!455795 (= lt!203003 Unit!7997)))

(declare-fun call!31562 () BalanceConc!3088)

(declare-fun lt!202993 () BalanceConc!3088)

(declare-fun lt!202998 () Unit!7961)

(assert (=> b!455795 (= lt!202998 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 (list!1959 call!31562) (list!1959 lt!202993)))))

(assert (=> b!455795 false))

(declare-fun lt!202999 () Unit!7961)

(declare-fun Unit!7998 () Unit!7961)

(assert (=> b!455795 (= lt!202999 Unit!7998)))

(declare-fun lt!202994 () BalanceConc!3088)

(assert (=> d!174051 (= (list!1959 lt!202994) (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (dropList!244 lt!202015 (+ 0 1)) separatorToken!170))))

(declare-fun e!278932 () BalanceConc!3088)

(assert (=> d!174051 (= lt!202994 e!278932)))

(declare-fun c!92087 () Bool)

(assert (=> d!174051 (= c!92087 (>= (+ 0 1) (size!3622 lt!202015)))))

(declare-fun lt!202997 () Unit!7961)

(assert (=> d!174051 (= lt!202997 (lemmaContentSubsetPreservesForall!187 (list!1963 lt!202015) (dropList!244 lt!202015 (+ 0 1)) lambda!13342))))

(assert (=> d!174051 e!278927))

(declare-fun res!202658 () Bool)

(assert (=> d!174051 (=> (not res!202658) (not e!278927))))

(assert (=> d!174051 (= res!202658 (>= (+ 0 1) 0))))

(assert (=> d!174051 (= (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 (+ 0 1)) lt!202994)))

(declare-fun bm!31558 () Bool)

(assert (=> bm!31558 (= call!31562 call!31565)))

(declare-fun b!455796 () Bool)

(declare-fun e!278930 () Bool)

(declare-fun lt!202995 () Option!1151)

(assert (=> b!455796 (= e!278930 (= (_1!2902 (v!15471 lt!202995)) (apply!1130 lt!202015 (+ 0 1))))))

(declare-fun b!455797 () Bool)

(declare-fun e!278926 () Bool)

(assert (=> b!455797 (= c!92088 e!278926)))

(declare-fun res!202660 () Bool)

(assert (=> b!455797 (=> (not res!202660) (not e!278926))))

(assert (=> b!455797 (= res!202660 ((_ is Some!1150) lt!202995))))

(declare-fun e!278931 () BalanceConc!3088)

(assert (=> b!455797 (= e!278931 e!278928)))

(declare-fun b!455798 () Bool)

(declare-fun call!31566 () BalanceConc!3088)

(assert (=> b!455798 (= e!278931 call!31566)))

(assert (=> b!455799 (= e!278932 e!278931)))

(declare-fun lt!202992 () List!4433)

(assert (=> b!455799 (= lt!202992 (list!1963 lt!202015))))

(declare-fun lt!203001 () Unit!7961)

(assert (=> b!455799 (= lt!203001 (lemmaDropApply!284 lt!202992 (+ 0 1)))))

(assert (=> b!455799 (= (head!1108 (drop!313 lt!202992 (+ 0 1))) (apply!1131 lt!202992 (+ 0 1)))))

(declare-fun lt!202990 () Unit!7961)

(assert (=> b!455799 (= lt!202990 lt!203001)))

(declare-fun lt!202991 () List!4433)

(assert (=> b!455799 (= lt!202991 (list!1963 lt!202015))))

(declare-fun lt!203000 () Unit!7961)

(assert (=> b!455799 (= lt!203000 (lemmaDropTail!276 lt!202991 (+ 0 1)))))

(assert (=> b!455799 (= (tail!636 (drop!313 lt!202991 (+ 0 1))) (drop!313 lt!202991 (+ 0 1 1)))))

(declare-fun lt!203002 () Unit!7961)

(assert (=> b!455799 (= lt!203002 lt!203000)))

(declare-fun lt!202996 () Unit!7961)

(assert (=> b!455799 (= lt!202996 (forallContained!412 (list!1963 lt!202015) lambda!13343 (apply!1130 lt!202015 (+ 0 1))))))

(assert (=> b!455799 (= lt!202993 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!455799 (= lt!202995 (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (++!1286 (charsOf!502 (apply!1130 lt!202015 (+ 0 1))) lt!202993)))))

(declare-fun res!202659 () Bool)

(assert (=> b!455799 (= res!202659 ((_ is Some!1150) lt!202995))))

(assert (=> b!455799 (=> (not res!202659) (not e!278930))))

(assert (=> b!455799 (= c!92089 e!278930)))

(declare-fun bm!31559 () Bool)

(declare-fun c!92086 () Bool)

(assert (=> bm!31559 (= c!92086 c!92089)))

(assert (=> bm!31559 (= call!31566 (++!1286 e!278929 (ite c!92089 lt!202993 call!31562)))))

(declare-fun bm!31560 () Bool)

(assert (=> bm!31560 (= call!31563 call!31564)))

(declare-fun b!455800 () Bool)

(assert (=> b!455800 (= e!278928 (++!1286 call!31566 lt!202993))))

(declare-fun b!455801 () Bool)

(assert (=> b!455801 (= e!278929 call!31565)))

(declare-fun bm!31561 () Bool)

(assert (=> bm!31561 (= call!31564 (apply!1130 lt!202015 (+ 0 1)))))

(declare-fun b!455802 () Bool)

(assert (=> b!455802 (= e!278926 (not (= (_1!2902 (v!15471 lt!202995)) call!31564)))))

(declare-fun b!455803 () Bool)

(assert (=> b!455803 (= e!278932 (BalanceConc!3089 Empty!1540))))

(assert (= (and d!174051 res!202658) b!455793))

(assert (= (and d!174051 c!92087) b!455803))

(assert (= (and d!174051 (not c!92087)) b!455799))

(assert (= (and b!455799 res!202659) b!455796))

(assert (= (and b!455799 c!92089) b!455798))

(assert (= (and b!455799 (not c!92089)) b!455797))

(assert (= (and b!455797 res!202660) b!455802))

(assert (= (and b!455797 c!92088) b!455800))

(assert (= (and b!455797 (not c!92088)) b!455795))

(assert (= (or b!455800 b!455795) bm!31560))

(assert (= (or b!455800 b!455795) bm!31558))

(assert (= (or b!455798 b!455802 bm!31560) bm!31561))

(assert (= (or b!455798 bm!31558) bm!31557))

(assert (= (or b!455798 b!455800) bm!31559))

(assert (= (and bm!31559 c!92086) b!455801))

(assert (= (and bm!31559 (not c!92086)) b!455794))

(declare-fun m!721685 () Bool)

(assert (=> b!455796 m!721685))

(declare-fun m!721687 () Bool)

(assert (=> b!455800 m!721687))

(declare-fun m!721689 () Bool)

(assert (=> b!455799 m!721689))

(declare-fun m!721691 () Bool)

(assert (=> b!455799 m!721691))

(assert (=> b!455799 m!721685))

(declare-fun m!721693 () Bool)

(assert (=> b!455799 m!721693))

(assert (=> b!455799 m!718701))

(assert (=> b!455799 m!721685))

(declare-fun m!721695 () Bool)

(assert (=> b!455799 m!721695))

(assert (=> b!455799 m!721691))

(declare-fun m!721697 () Bool)

(assert (=> b!455799 m!721697))

(declare-fun m!721699 () Bool)

(assert (=> b!455799 m!721699))

(declare-fun m!721701 () Bool)

(assert (=> b!455799 m!721701))

(declare-fun m!721703 () Bool)

(assert (=> b!455799 m!721703))

(assert (=> b!455799 m!718701))

(declare-fun m!721705 () Bool)

(assert (=> b!455799 m!721705))

(declare-fun m!721707 () Bool)

(assert (=> b!455799 m!721707))

(declare-fun m!721709 () Bool)

(assert (=> b!455799 m!721709))

(declare-fun m!721711 () Bool)

(assert (=> b!455799 m!721711))

(declare-fun m!721713 () Bool)

(assert (=> b!455799 m!721713))

(assert (=> b!455799 m!721711))

(assert (=> b!455799 m!721685))

(assert (=> b!455799 m!721693))

(assert (=> b!455799 m!721701))

(assert (=> b!455793 m!718723))

(declare-fun m!721715 () Bool)

(assert (=> bm!31559 m!721715))

(declare-fun m!721717 () Bool)

(assert (=> bm!31557 m!721717))

(declare-fun m!721719 () Bool)

(assert (=> b!455794 m!721719))

(declare-fun m!721721 () Bool)

(assert (=> b!455795 m!721721))

(declare-fun m!721723 () Bool)

(assert (=> b!455795 m!721723))

(assert (=> b!455795 m!721721))

(declare-fun m!721725 () Bool)

(assert (=> b!455795 m!721725))

(declare-fun m!721727 () Bool)

(assert (=> b!455795 m!721727))

(assert (=> b!455795 m!721721))

(declare-fun m!721729 () Bool)

(assert (=> b!455795 m!721729))

(assert (=> b!455795 m!721727))

(assert (=> b!455795 m!721729))

(declare-fun m!721731 () Bool)

(assert (=> b!455795 m!721731))

(assert (=> bm!31561 m!721685))

(assert (=> d!174051 m!718701))

(declare-fun m!721733 () Bool)

(assert (=> d!174051 m!721733))

(declare-fun m!721735 () Bool)

(assert (=> d!174051 m!721735))

(assert (=> d!174051 m!721733))

(declare-fun m!721737 () Bool)

(assert (=> d!174051 m!721737))

(assert (=> d!174051 m!718701))

(declare-fun m!721739 () Bool)

(assert (=> d!174051 m!721739))

(assert (=> d!174051 m!718723))

(assert (=> d!174051 m!721733))

(assert (=> b!454367 d!174051))

(declare-fun b!455810 () Bool)

(declare-fun lt!203004 () BalanceConc!3088)

(declare-fun e!278936 () Bool)

(assert (=> b!455810 (= e!278936 (= (list!1959 lt!203004) (++!1284 (list!1959 (charsOf!502 (apply!1130 lt!202015 0))) (list!1959 lt!202130))))))

(declare-fun b!455808 () Bool)

(declare-fun res!202661 () Bool)

(assert (=> b!455808 (=> (not res!202661) (not e!278936))))

(assert (=> b!455808 (= res!202661 (<= (height!233 (++!1287 (c!91744 (charsOf!502 (apply!1130 lt!202015 0))) (c!91744 lt!202130))) (+ (max!0 (height!233 (c!91744 (charsOf!502 (apply!1130 lt!202015 0)))) (height!233 (c!91744 lt!202130))) 1)))))

(declare-fun d!174053 () Bool)

(assert (=> d!174053 e!278936))

(declare-fun res!202663 () Bool)

(assert (=> d!174053 (=> (not res!202663) (not e!278936))))

(assert (=> d!174053 (= res!202663 (appendAssocInst!102 (c!91744 (charsOf!502 (apply!1130 lt!202015 0))) (c!91744 lt!202130)))))

(assert (=> d!174053 (= lt!203004 (BalanceConc!3089 (++!1287 (c!91744 (charsOf!502 (apply!1130 lt!202015 0))) (c!91744 lt!202130))))))

(assert (=> d!174053 (= (++!1286 (charsOf!502 (apply!1130 lt!202015 0)) lt!202130) lt!203004)))

(declare-fun b!455809 () Bool)

(declare-fun res!202664 () Bool)

(assert (=> b!455809 (=> (not res!202664) (not e!278936))))

(assert (=> b!455809 (= res!202664 (>= (height!233 (++!1287 (c!91744 (charsOf!502 (apply!1130 lt!202015 0))) (c!91744 lt!202130))) (max!0 (height!233 (c!91744 (charsOf!502 (apply!1130 lt!202015 0)))) (height!233 (c!91744 lt!202130)))))))

(declare-fun b!455807 () Bool)

(declare-fun res!202662 () Bool)

(assert (=> b!455807 (=> (not res!202662) (not e!278936))))

(assert (=> b!455807 (= res!202662 (isBalanced!472 (++!1287 (c!91744 (charsOf!502 (apply!1130 lt!202015 0))) (c!91744 lt!202130))))))

(assert (= (and d!174053 res!202663) b!455807))

(assert (= (and b!455807 res!202662) b!455808))

(assert (= (and b!455808 res!202661) b!455809))

(assert (= (and b!455809 res!202664) b!455810))

(declare-fun m!721741 () Bool)

(assert (=> b!455808 m!721741))

(assert (=> b!455808 m!721005))

(declare-fun m!721743 () Bool)

(assert (=> b!455808 m!721743))

(declare-fun m!721745 () Bool)

(assert (=> b!455808 m!721745))

(declare-fun m!721747 () Bool)

(assert (=> b!455808 m!721747))

(assert (=> b!455808 m!721741))

(assert (=> b!455808 m!721745))

(assert (=> b!455808 m!721005))

(declare-fun m!721749 () Bool)

(assert (=> b!455810 m!721749))

(assert (=> b!455810 m!718699))

(declare-fun m!721751 () Bool)

(assert (=> b!455810 m!721751))

(assert (=> b!455810 m!718739))

(assert (=> b!455810 m!721751))

(assert (=> b!455810 m!718739))

(declare-fun m!721753 () Bool)

(assert (=> b!455810 m!721753))

(assert (=> b!455807 m!721745))

(assert (=> b!455807 m!721745))

(declare-fun m!721755 () Bool)

(assert (=> b!455807 m!721755))

(assert (=> b!455809 m!721741))

(assert (=> b!455809 m!721005))

(assert (=> b!455809 m!721743))

(assert (=> b!455809 m!721745))

(assert (=> b!455809 m!721747))

(assert (=> b!455809 m!721741))

(assert (=> b!455809 m!721745))

(assert (=> b!455809 m!721005))

(declare-fun m!721757 () Bool)

(assert (=> d!174053 m!721757))

(assert (=> d!174053 m!721745))

(assert (=> b!454367 d!174053))

(declare-fun d!174055 () Bool)

(declare-fun lt!203005 () Token!1462)

(assert (=> d!174055 (contains!991 lt!202129 lt!203005)))

(declare-fun e!278937 () Token!1462)

(assert (=> d!174055 (= lt!203005 e!278937)))

(declare-fun c!92090 () Bool)

(assert (=> d!174055 (= c!92090 (= 0 0))))

(declare-fun e!278938 () Bool)

(assert (=> d!174055 e!278938))

(declare-fun res!202665 () Bool)

(assert (=> d!174055 (=> (not res!202665) (not e!278938))))

(assert (=> d!174055 (= res!202665 (<= 0 0))))

(assert (=> d!174055 (= (apply!1131 lt!202129 0) lt!203005)))

(declare-fun b!455811 () Bool)

(assert (=> b!455811 (= e!278938 (< 0 (size!3626 lt!202129)))))

(declare-fun b!455812 () Bool)

(assert (=> b!455812 (= e!278937 (head!1108 lt!202129))))

(declare-fun b!455813 () Bool)

(assert (=> b!455813 (= e!278937 (apply!1131 (tail!636 lt!202129) (- 0 1)))))

(assert (= (and d!174055 res!202665) b!455811))

(assert (= (and d!174055 c!92090) b!455812))

(assert (= (and d!174055 (not c!92090)) b!455813))

(declare-fun m!721759 () Bool)

(assert (=> d!174055 m!721759))

(assert (=> b!455811 m!721623))

(declare-fun m!721761 () Bool)

(assert (=> b!455812 m!721761))

(declare-fun m!721763 () Bool)

(assert (=> b!455813 m!721763))

(assert (=> b!455813 m!721763))

(declare-fun m!721765 () Bool)

(assert (=> b!455813 m!721765))

(assert (=> b!454367 d!174055))

(declare-fun d!174057 () Bool)

(declare-fun lt!203006 () Token!1462)

(assert (=> d!174057 (= lt!203006 (apply!1131 (list!1963 lt!202015) 0))))

(assert (=> d!174057 (= lt!203006 (apply!1133 (c!91746 lt!202015) 0))))

(declare-fun e!278939 () Bool)

(assert (=> d!174057 e!278939))

(declare-fun res!202666 () Bool)

(assert (=> d!174057 (=> (not res!202666) (not e!278939))))

(assert (=> d!174057 (= res!202666 (<= 0 0))))

(assert (=> d!174057 (= (apply!1130 lt!202015 0) lt!203006)))

(declare-fun b!455814 () Bool)

(assert (=> b!455814 (= e!278939 (< 0 (size!3622 lt!202015)))))

(assert (= (and d!174057 res!202666) b!455814))

(assert (=> d!174057 m!718701))

(assert (=> d!174057 m!718701))

(declare-fun m!721767 () Bool)

(assert (=> d!174057 m!721767))

(declare-fun m!721769 () Bool)

(assert (=> d!174057 m!721769))

(assert (=> b!455814 m!718723))

(assert (=> b!454367 d!174057))

(declare-fun d!174059 () Bool)

(assert (=> d!174059 (dynLambda!2680 lambda!13284 (apply!1130 lt!202015 0))))

(declare-fun lt!203007 () Unit!7961)

(assert (=> d!174059 (= lt!203007 (choose!3431 (list!1963 lt!202015) lambda!13284 (apply!1130 lt!202015 0)))))

(declare-fun e!278940 () Bool)

(assert (=> d!174059 e!278940))

(declare-fun res!202667 () Bool)

(assert (=> d!174059 (=> (not res!202667) (not e!278940))))

(assert (=> d!174059 (= res!202667 (forall!1280 (list!1963 lt!202015) lambda!13284))))

(assert (=> d!174059 (= (forallContained!412 (list!1963 lt!202015) lambda!13284 (apply!1130 lt!202015 0)) lt!203007)))

(declare-fun b!455815 () Bool)

(assert (=> b!455815 (= e!278940 (contains!991 (list!1963 lt!202015) (apply!1130 lt!202015 0)))))

(assert (= (and d!174059 res!202667) b!455815))

(declare-fun b_lambda!18883 () Bool)

(assert (=> (not b_lambda!18883) (not d!174059)))

(assert (=> d!174059 m!718691))

(declare-fun m!721771 () Bool)

(assert (=> d!174059 m!721771))

(assert (=> d!174059 m!718701))

(assert (=> d!174059 m!718691))

(declare-fun m!721773 () Bool)

(assert (=> d!174059 m!721773))

(assert (=> d!174059 m!718701))

(declare-fun m!721775 () Bool)

(assert (=> d!174059 m!721775))

(assert (=> b!455815 m!718701))

(assert (=> b!455815 m!718691))

(declare-fun m!721777 () Bool)

(assert (=> b!455815 m!721777))

(assert (=> b!454367 d!174059))

(declare-fun lt!203008 () BalanceConc!3088)

(declare-fun e!278941 () Bool)

(declare-fun b!455819 () Bool)

(assert (=> b!455819 (= e!278941 (= (list!1959 lt!203008) (++!1284 (list!1959 call!31482) (list!1959 lt!202284))))))

(declare-fun b!455817 () Bool)

(declare-fun res!202668 () Bool)

(assert (=> b!455817 (=> (not res!202668) (not e!278941))))

(assert (=> b!455817 (= res!202668 (<= (height!233 (++!1287 (c!91744 call!31482) (c!91744 lt!202284))) (+ (max!0 (height!233 (c!91744 call!31482)) (height!233 (c!91744 lt!202284))) 1)))))

(declare-fun d!174061 () Bool)

(assert (=> d!174061 e!278941))

(declare-fun res!202670 () Bool)

(assert (=> d!174061 (=> (not res!202670) (not e!278941))))

(assert (=> d!174061 (= res!202670 (appendAssocInst!102 (c!91744 call!31482) (c!91744 lt!202284)))))

(assert (=> d!174061 (= lt!203008 (BalanceConc!3089 (++!1287 (c!91744 call!31482) (c!91744 lt!202284))))))

(assert (=> d!174061 (= (++!1286 call!31482 lt!202284) lt!203008)))

(declare-fun b!455818 () Bool)

(declare-fun res!202671 () Bool)

(assert (=> b!455818 (=> (not res!202671) (not e!278941))))

(assert (=> b!455818 (= res!202671 (>= (height!233 (++!1287 (c!91744 call!31482) (c!91744 lt!202284))) (max!0 (height!233 (c!91744 call!31482)) (height!233 (c!91744 lt!202284)))))))

(declare-fun b!455816 () Bool)

(declare-fun res!202669 () Bool)

(assert (=> b!455816 (=> (not res!202669) (not e!278941))))

(assert (=> b!455816 (= res!202669 (isBalanced!472 (++!1287 (c!91744 call!31482) (c!91744 lt!202284))))))

(assert (= (and d!174061 res!202670) b!455816))

(assert (= (and b!455816 res!202669) b!455817))

(assert (= (and b!455817 res!202668) b!455818))

(assert (= (and b!455818 res!202671) b!455819))

(declare-fun m!721779 () Bool)

(assert (=> b!455817 m!721779))

(declare-fun m!721781 () Bool)

(assert (=> b!455817 m!721781))

(declare-fun m!721783 () Bool)

(assert (=> b!455817 m!721783))

(declare-fun m!721785 () Bool)

(assert (=> b!455817 m!721785))

(declare-fun m!721787 () Bool)

(assert (=> b!455817 m!721787))

(assert (=> b!455817 m!721779))

(assert (=> b!455817 m!721785))

(assert (=> b!455817 m!721781))

(declare-fun m!721789 () Bool)

(assert (=> b!455819 m!721789))

(declare-fun m!721791 () Bool)

(assert (=> b!455819 m!721791))

(assert (=> b!455819 m!719181))

(assert (=> b!455819 m!721791))

(assert (=> b!455819 m!719181))

(declare-fun m!721793 () Bool)

(assert (=> b!455819 m!721793))

(assert (=> b!455816 m!721785))

(assert (=> b!455816 m!721785))

(declare-fun m!721795 () Bool)

(assert (=> b!455816 m!721795))

(assert (=> b!455818 m!721779))

(assert (=> b!455818 m!721781))

(assert (=> b!455818 m!721783))

(assert (=> b!455818 m!721785))

(assert (=> b!455818 m!721787))

(assert (=> b!455818 m!721779))

(assert (=> b!455818 m!721785))

(assert (=> b!455818 m!721781))

(declare-fun m!721797 () Bool)

(assert (=> d!174061 m!721797))

(assert (=> d!174061 m!721785))

(assert (=> b!454622 d!174061))

(declare-fun d!174063 () Bool)

(assert (=> d!174063 (= (dropList!244 lt!202031 0) (drop!313 (list!1964 (c!91746 lt!202031)) 0))))

(declare-fun bs!56462 () Bool)

(assert (= bs!56462 d!174063))

(assert (=> bs!56462 m!719829))

(assert (=> bs!56462 m!719829))

(declare-fun m!721799 () Bool)

(assert (=> bs!56462 m!721799))

(assert (=> d!173289 d!174063))

(assert (=> d!173289 d!174019))

(declare-fun d!174065 () Bool)

(assert (=> d!174065 (= (list!1959 (BalanceConc!3089 Empty!1540)) (list!1962 (c!91744 (BalanceConc!3089 Empty!1540))))))

(declare-fun bs!56463 () Bool)

(assert (= bs!56463 d!174065))

(declare-fun m!721801 () Bool)

(assert (=> bs!56463 m!721801))

(assert (=> d!173289 d!174065))

(declare-fun d!174067 () Bool)

(declare-fun lt!203031 () List!4431)

(assert (=> d!174067 (= lt!203031 (++!1284 (list!1959 (BalanceConc!3089 Empty!1540)) (printList!419 thiss!17480 (dropList!244 lt!202031 0))))))

(declare-fun e!278952 () List!4431)

(assert (=> d!174067 (= lt!203031 e!278952)))

(declare-fun c!92095 () Bool)

(assert (=> d!174067 (= c!92095 ((_ is Cons!4423) (dropList!244 lt!202031 0)))))

(assert (=> d!174067 (= (printListTailRec!209 thiss!17480 (dropList!244 lt!202031 0) (list!1959 (BalanceConc!3089 Empty!1540))) lt!203031)))

(declare-fun b!455842 () Bool)

(assert (=> b!455842 (= e!278952 (printListTailRec!209 thiss!17480 (t!71133 (dropList!244 lt!202031 0)) (++!1284 (list!1959 (BalanceConc!3089 Empty!1540)) (list!1959 (charsOf!502 (h!9820 (dropList!244 lt!202031 0)))))))))

(declare-fun lt!203033 () List!4431)

(assert (=> b!455842 (= lt!203033 (list!1959 (charsOf!502 (h!9820 (dropList!244 lt!202031 0)))))))

(declare-fun lt!203030 () List!4431)

(assert (=> b!455842 (= lt!203030 (printList!419 thiss!17480 (t!71133 (dropList!244 lt!202031 0))))))

(declare-fun lt!203032 () Unit!7961)

(assert (=> b!455842 (= lt!203032 (lemmaConcatAssociativity!594 (list!1959 (BalanceConc!3089 Empty!1540)) lt!203033 lt!203030))))

(assert (=> b!455842 (= (++!1284 (++!1284 (list!1959 (BalanceConc!3089 Empty!1540)) lt!203033) lt!203030) (++!1284 (list!1959 (BalanceConc!3089 Empty!1540)) (++!1284 lt!203033 lt!203030)))))

(declare-fun lt!203029 () Unit!7961)

(assert (=> b!455842 (= lt!203029 lt!203032)))

(declare-fun b!455843 () Bool)

(assert (=> b!455843 (= e!278952 (list!1959 (BalanceConc!3089 Empty!1540)))))

(assert (= (and d!174067 c!92095) b!455842))

(assert (= (and d!174067 (not c!92095)) b!455843))

(assert (=> d!174067 m!718833))

(declare-fun m!721803 () Bool)

(assert (=> d!174067 m!721803))

(assert (=> d!174067 m!718835))

(assert (=> d!174067 m!721803))

(declare-fun m!721805 () Bool)

(assert (=> d!174067 m!721805))

(assert (=> b!455842 m!718835))

(declare-fun m!721807 () Bool)

(assert (=> b!455842 m!721807))

(assert (=> b!455842 m!718835))

(declare-fun m!721809 () Bool)

(assert (=> b!455842 m!721809))

(declare-fun m!721811 () Bool)

(assert (=> b!455842 m!721811))

(declare-fun m!721813 () Bool)

(assert (=> b!455842 m!721813))

(declare-fun m!721815 () Bool)

(assert (=> b!455842 m!721815))

(assert (=> b!455842 m!721809))

(assert (=> b!455842 m!721807))

(declare-fun m!721817 () Bool)

(assert (=> b!455842 m!721817))

(assert (=> b!455842 m!718835))

(assert (=> b!455842 m!721815))

(declare-fun m!721819 () Bool)

(assert (=> b!455842 m!721819))

(assert (=> b!455842 m!718835))

(declare-fun m!721821 () Bool)

(assert (=> b!455842 m!721821))

(assert (=> b!455842 m!721819))

(declare-fun m!721823 () Bool)

(assert (=> b!455842 m!721823))

(assert (=> b!455842 m!721813))

(declare-fun m!721825 () Bool)

(assert (=> b!455842 m!721825))

(assert (=> d!173289 d!174067))

(declare-fun d!174069 () Bool)

(assert (=> d!174069 (= (list!1959 lt!202188) (list!1962 (c!91744 lt!202188)))))

(declare-fun bs!56464 () Bool)

(assert (= bs!56464 d!174069))

(declare-fun m!721827 () Bool)

(assert (=> bs!56464 m!721827))

(assert (=> d!173289 d!174069))

(declare-fun d!174071 () Bool)

(declare-fun charsToBigInt!0 (List!4430 Int) Int)

(assert (=> d!174071 (= (inv!15 (value!28797 separatorToken!170)) (= (charsToBigInt!0 (text!6616 (value!28797 separatorToken!170)) 0) (value!28792 (value!28797 separatorToken!170))))))

(declare-fun bs!56465 () Bool)

(assert (= bs!56465 d!174071))

(declare-fun m!721829 () Bool)

(assert (=> bs!56465 m!721829))

(assert (=> b!454502 d!174071))

(declare-fun b!455844 () Bool)

(declare-fun e!278955 () Option!1150)

(declare-fun lt!203034 () Option!1150)

(declare-fun lt!203035 () Option!1150)

(assert (=> b!455844 (= e!278955 (ite (and ((_ is None!1149) lt!203034) ((_ is None!1149) lt!203035)) None!1149 (ite ((_ is None!1149) lt!203035) lt!203034 (ite ((_ is None!1149) lt!203034) lt!203035 (ite (>= (size!3619 (_1!2901 (v!15470 lt!203034))) (size!3619 (_1!2901 (v!15470 lt!203035)))) lt!203034 lt!203035)))))))

(declare-fun call!31567 () Option!1150)

(assert (=> b!455844 (= lt!203034 call!31567)))

(assert (=> b!455844 (= lt!203035 (maxPrefix!461 thiss!17480 (t!71132 (t!71132 rules!1920)) lt!202016))))

(declare-fun b!455845 () Bool)

(declare-fun res!202687 () Bool)

(declare-fun e!278954 () Bool)

(assert (=> b!455845 (=> (not res!202687) (not e!278954))))

(declare-fun lt!203037 () Option!1150)

(assert (=> b!455845 (= res!202687 (matchR!401 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!203037)))) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203037))))))))

(declare-fun b!455846 () Bool)

(declare-fun res!202688 () Bool)

(assert (=> b!455846 (=> (not res!202688) (not e!278954))))

(assert (=> b!455846 (= res!202688 (= (value!28797 (_1!2901 (get!1618 lt!203037))) (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!203037)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!203037)))))))))

(declare-fun b!455847 () Bool)

(assert (=> b!455847 (= e!278954 (contains!990 (t!71132 rules!1920) (rule!1550 (_1!2901 (get!1618 lt!203037)))))))

(declare-fun b!455848 () Bool)

(assert (=> b!455848 (= e!278955 call!31567)))

(declare-fun b!455849 () Bool)

(declare-fun e!278953 () Bool)

(assert (=> b!455849 (= e!278953 e!278954)))

(declare-fun res!202690 () Bool)

(assert (=> b!455849 (=> (not res!202690) (not e!278954))))

(assert (=> b!455849 (= res!202690 (isDefined!989 lt!203037))))

(declare-fun d!174073 () Bool)

(assert (=> d!174073 e!278953))

(declare-fun res!202689 () Bool)

(assert (=> d!174073 (=> res!202689 e!278953)))

(assert (=> d!174073 (= res!202689 (isEmpty!3390 lt!203037))))

(assert (=> d!174073 (= lt!203037 e!278955)))

(declare-fun c!92096 () Bool)

(assert (=> d!174073 (= c!92096 (and ((_ is Cons!4422) (t!71132 rules!1920)) ((_ is Nil!4422) (t!71132 (t!71132 rules!1920)))))))

(declare-fun lt!203036 () Unit!7961)

(declare-fun lt!203038 () Unit!7961)

(assert (=> d!174073 (= lt!203036 lt!203038)))

(assert (=> d!174073 (isPrefix!513 lt!202016 lt!202016)))

(assert (=> d!174073 (= lt!203038 (lemmaIsPrefixRefl!287 lt!202016 lt!202016))))

(assert (=> d!174073 (rulesValidInductive!282 thiss!17480 (t!71132 rules!1920))))

(assert (=> d!174073 (= (maxPrefix!461 thiss!17480 (t!71132 rules!1920) lt!202016) lt!203037)))

(declare-fun b!455850 () Bool)

(declare-fun res!202692 () Bool)

(assert (=> b!455850 (=> (not res!202692) (not e!278954))))

(assert (=> b!455850 (= res!202692 (< (size!3623 (_2!2901 (get!1618 lt!203037))) (size!3623 lt!202016)))))

(declare-fun b!455851 () Bool)

(declare-fun res!202691 () Bool)

(assert (=> b!455851 (=> (not res!202691) (not e!278954))))

(assert (=> b!455851 (= res!202691 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203037)))) (_2!2901 (get!1618 lt!203037))) lt!202016))))

(declare-fun b!455852 () Bool)

(declare-fun res!202686 () Bool)

(assert (=> b!455852 (=> (not res!202686) (not e!278954))))

(assert (=> b!455852 (= res!202686 (= (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203037)))) (originalCharacters!902 (_1!2901 (get!1618 lt!203037)))))))

(declare-fun bm!31562 () Bool)

(assert (=> bm!31562 (= call!31567 (maxPrefixOneRule!221 thiss!17480 (h!9819 (t!71132 rules!1920)) lt!202016))))

(assert (= (and d!174073 c!92096) b!455848))

(assert (= (and d!174073 (not c!92096)) b!455844))

(assert (= (or b!455848 b!455844) bm!31562))

(assert (= (and d!174073 (not res!202689)) b!455849))

(assert (= (and b!455849 res!202690) b!455852))

(assert (= (and b!455852 res!202686) b!455850))

(assert (= (and b!455850 res!202692) b!455851))

(assert (= (and b!455851 res!202691) b!455846))

(assert (= (and b!455846 res!202688) b!455845))

(assert (= (and b!455845 res!202687) b!455847))

(declare-fun m!721831 () Bool)

(assert (=> b!455852 m!721831))

(declare-fun m!721833 () Bool)

(assert (=> b!455852 m!721833))

(assert (=> b!455852 m!721833))

(declare-fun m!721835 () Bool)

(assert (=> b!455852 m!721835))

(assert (=> b!455850 m!721831))

(declare-fun m!721837 () Bool)

(assert (=> b!455850 m!721837))

(assert (=> b!455850 m!719247))

(assert (=> b!455845 m!721831))

(assert (=> b!455845 m!721833))

(assert (=> b!455845 m!721833))

(assert (=> b!455845 m!721835))

(assert (=> b!455845 m!721835))

(declare-fun m!721839 () Bool)

(assert (=> b!455845 m!721839))

(assert (=> b!455851 m!721831))

(assert (=> b!455851 m!721833))

(assert (=> b!455851 m!721833))

(assert (=> b!455851 m!721835))

(assert (=> b!455851 m!721835))

(declare-fun m!721841 () Bool)

(assert (=> b!455851 m!721841))

(assert (=> b!455846 m!721831))

(declare-fun m!721843 () Bool)

(assert (=> b!455846 m!721843))

(assert (=> b!455846 m!721843))

(declare-fun m!721845 () Bool)

(assert (=> b!455846 m!721845))

(declare-fun m!721847 () Bool)

(assert (=> b!455849 m!721847))

(declare-fun m!721849 () Bool)

(assert (=> d!174073 m!721849))

(assert (=> d!174073 m!719261))

(assert (=> d!174073 m!719263))

(assert (=> d!174073 m!721135))

(assert (=> b!455847 m!721831))

(declare-fun m!721851 () Bool)

(assert (=> b!455847 m!721851))

(declare-fun m!721853 () Bool)

(assert (=> bm!31562 m!721853))

(declare-fun m!721855 () Bool)

(assert (=> b!455844 m!721855))

(assert (=> b!454641 d!174073))

(declare-fun b!455862 () Bool)

(declare-fun e!278960 () List!4431)

(assert (=> b!455862 (= e!278960 Nil!4421)))

(declare-fun b!455865 () Bool)

(declare-fun e!278961 () List!4431)

(assert (=> b!455865 (= e!278961 (++!1284 (list!1962 (left!3728 (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 0)))) (list!1962 (right!4058 (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 0))))))))

(declare-fun b!455864 () Bool)

(assert (=> b!455864 (= e!278961 (list!1966 (xs!4171 (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 0)))))))

(declare-fun b!455863 () Bool)

(assert (=> b!455863 (= e!278960 e!278961)))

(declare-fun c!92099 () Bool)

(assert (=> b!455863 (= c!92099 ((_ is Leaf!2309) (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 0))))))

(declare-fun c!92098 () Bool)

(declare-fun d!174075 () Bool)

(assert (=> d!174075 (= c!92098 ((_ is Empty!1540) (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 0))))))

(assert (=> d!174075 (= (list!1962 (c!91744 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202015 separatorToken!170 0))) e!278960)))

(assert (= (and d!174075 c!92098) b!455862))

(assert (= (and d!174075 (not c!92098)) b!455863))

(assert (= (and b!455863 c!92099) b!455864))

(assert (= (and b!455863 (not c!92099)) b!455865))

(declare-fun m!721857 () Bool)

(assert (=> b!455865 m!721857))

(declare-fun m!721859 () Bool)

(assert (=> b!455865 m!721859))

(assert (=> b!455865 m!721857))

(assert (=> b!455865 m!721859))

(declare-fun m!721861 () Bool)

(assert (=> b!455865 m!721861))

(declare-fun m!721863 () Bool)

(assert (=> b!455864 m!721863))

(assert (=> d!173241 d!174075))

(declare-fun d!174077 () Bool)

(declare-fun lt!203044 () Int)

(assert (=> d!174077 (= lt!203044 (size!3626 (list!1963 (_1!2903 lt!202329))))))

(assert (=> d!174077 (= lt!203044 (size!3629 (c!91746 (_1!2903 lt!202329))))))

(assert (=> d!174077 (= (size!3622 (_1!2903 lt!202329)) lt!203044)))

(declare-fun bs!56466 () Bool)

(assert (= bs!56466 d!174077))

(assert (=> bs!56466 m!719291))

(assert (=> bs!56466 m!719291))

(declare-fun m!721871 () Bool)

(assert (=> bs!56466 m!721871))

(declare-fun m!721873 () Bool)

(assert (=> bs!56466 m!721873))

(assert (=> d!173395 d!174077))

(declare-fun e!279098 () tuple2!5374)

(declare-fun lt!203217 () Option!1151)

(declare-fun b!456094 () Bool)

(declare-fun lt!203213 () BalanceConc!3088)

(declare-fun append!151 (BalanceConc!3090 Token!1462) BalanceConc!3090)

(assert (=> b!456094 (= e!279098 (lexTailRecV2!256 thiss!17480 rules!1920 (seqFromList!1084 lt!202023) lt!203213 (_2!2902 (v!15471 lt!203217)) (append!151 (BalanceConc!3091 Empty!1541) (_1!2902 (v!15471 lt!203217)))))))

(declare-fun lt!203219 () tuple2!5374)

(declare-fun lexRec!130 (LexerInterface!745 List!4432 BalanceConc!3088) tuple2!5374)

(assert (=> b!456094 (= lt!203219 (lexRec!130 thiss!17480 rules!1920 (_2!2902 (v!15471 lt!203217))))))

(declare-fun lt!203228 () List!4431)

(assert (=> b!456094 (= lt!203228 (list!1959 (BalanceConc!3089 Empty!1540)))))

(declare-fun lt!203209 () List!4431)

(assert (=> b!456094 (= lt!203209 (list!1959 (charsOf!502 (_1!2902 (v!15471 lt!203217)))))))

(declare-fun lt!203227 () List!4431)

(assert (=> b!456094 (= lt!203227 (list!1959 (_2!2902 (v!15471 lt!203217))))))

(declare-fun lt!203207 () Unit!7961)

(assert (=> b!456094 (= lt!203207 (lemmaConcatAssociativity!594 lt!203228 lt!203209 lt!203227))))

(assert (=> b!456094 (= (++!1284 (++!1284 lt!203228 lt!203209) lt!203227) (++!1284 lt!203228 (++!1284 lt!203209 lt!203227)))))

(declare-fun lt!203231 () Unit!7961)

(assert (=> b!456094 (= lt!203231 lt!203207)))

(declare-fun lt!203230 () Option!1151)

(assert (=> b!456094 (= lt!203230 (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (seqFromList!1084 lt!202023)))))

(declare-fun c!92164 () Bool)

(assert (=> b!456094 (= c!92164 ((_ is Some!1150) lt!203230))))

(declare-fun e!279099 () tuple2!5374)

(assert (=> b!456094 (= (lexRec!130 thiss!17480 rules!1920 (seqFromList!1084 lt!202023)) e!279099)))

(declare-fun lt!203226 () Unit!7961)

(declare-fun Unit!7999 () Unit!7961)

(assert (=> b!456094 (= lt!203226 Unit!7999)))

(declare-fun lt!203222 () List!4433)

(assert (=> b!456094 (= lt!203222 (list!1963 (BalanceConc!3091 Empty!1541)))))

(declare-fun lt!203223 () List!4433)

(assert (=> b!456094 (= lt!203223 (Cons!4423 (_1!2902 (v!15471 lt!203217)) Nil!4423))))

(declare-fun lt!203212 () List!4433)

(assert (=> b!456094 (= lt!203212 (list!1963 (_1!2903 lt!203219)))))

(declare-fun lt!203208 () Unit!7961)

(declare-fun lemmaConcatAssociativity!596 (List!4433 List!4433 List!4433) Unit!7961)

(assert (=> b!456094 (= lt!203208 (lemmaConcatAssociativity!596 lt!203222 lt!203223 lt!203212))))

(declare-fun ++!1290 (List!4433 List!4433) List!4433)

(assert (=> b!456094 (= (++!1290 (++!1290 lt!203222 lt!203223) lt!203212) (++!1290 lt!203222 (++!1290 lt!203223 lt!203212)))))

(declare-fun lt!203229 () Unit!7961)

(assert (=> b!456094 (= lt!203229 lt!203208)))

(declare-fun lt!203202 () List!4431)

(assert (=> b!456094 (= lt!203202 (++!1284 (list!1959 (BalanceConc!3089 Empty!1540)) (list!1959 (charsOf!502 (_1!2902 (v!15471 lt!203217))))))))

(declare-fun lt!203216 () List!4431)

(assert (=> b!456094 (= lt!203216 (list!1959 (_2!2902 (v!15471 lt!203217))))))

(declare-fun lt!203210 () List!4433)

(assert (=> b!456094 (= lt!203210 (list!1963 (append!151 (BalanceConc!3091 Empty!1541) (_1!2902 (v!15471 lt!203217)))))))

(declare-fun lt!203203 () Unit!7961)

(declare-fun lemmaLexThenLexPrefix!117 (LexerInterface!745 List!4432 List!4431 List!4431 List!4433 List!4433 List!4431) Unit!7961)

(assert (=> b!456094 (= lt!203203 (lemmaLexThenLexPrefix!117 thiss!17480 rules!1920 lt!203202 lt!203216 lt!203210 (list!1963 (_1!2903 lt!203219)) (list!1959 (_2!2903 lt!203219))))))

(assert (=> b!456094 (= (lexList!291 thiss!17480 rules!1920 lt!203202) (tuple2!5379 lt!203210 Nil!4421))))

(declare-fun lt!203199 () Unit!7961)

(assert (=> b!456094 (= lt!203199 lt!203203)))

(declare-fun lt!203198 () BalanceConc!3088)

(assert (=> b!456094 (= lt!203198 (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (_1!2902 (v!15471 lt!203217)))))))

(declare-fun lt!203206 () Option!1151)

(assert (=> b!456094 (= lt!203206 (maxPrefixZipperSequence!424 thiss!17480 rules!1920 lt!203198))))

(declare-fun c!92163 () Bool)

(assert (=> b!456094 (= c!92163 ((_ is Some!1150) lt!203206))))

(declare-fun e!279100 () tuple2!5374)

(assert (=> b!456094 (= (lexRec!130 thiss!17480 rules!1920 (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (_1!2902 (v!15471 lt!203217))))) e!279100)))

(declare-fun lt!203201 () Unit!7961)

(declare-fun Unit!8000 () Unit!7961)

(assert (=> b!456094 (= lt!203201 Unit!8000)))

(assert (=> b!456094 (= lt!203213 (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (_1!2902 (v!15471 lt!203217)))))))

(declare-fun lt!203224 () List!4431)

(assert (=> b!456094 (= lt!203224 (list!1959 lt!203213))))

(declare-fun lt!203214 () List!4431)

(assert (=> b!456094 (= lt!203214 (list!1959 (_2!2902 (v!15471 lt!203217))))))

(declare-fun lt!203204 () Unit!7961)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!115 (List!4431 List!4431) Unit!7961)

(assert (=> b!456094 (= lt!203204 (lemmaConcatTwoListThenFSndIsSuffix!115 lt!203224 lt!203214))))

(declare-fun isSuffix!115 (List!4431 List!4431) Bool)

(assert (=> b!456094 (isSuffix!115 lt!203214 (++!1284 lt!203224 lt!203214))))

(declare-fun lt!203225 () Unit!7961)

(assert (=> b!456094 (= lt!203225 lt!203204)))

(declare-fun lt!203215 () tuple2!5374)

(declare-fun b!456095 () Bool)

(assert (=> b!456095 (= lt!203215 (lexRec!130 thiss!17480 rules!1920 (_2!2902 (v!15471 lt!203230))))))

(declare-fun prepend!229 (BalanceConc!3090 Token!1462) BalanceConc!3090)

(assert (=> b!456095 (= e!279099 (tuple2!5375 (prepend!229 (_1!2903 lt!203215) (_1!2902 (v!15471 lt!203230))) (_2!2903 lt!203215)))))

(declare-fun b!456096 () Bool)

(assert (=> b!456096 (= e!279099 (tuple2!5375 (BalanceConc!3091 Empty!1541) (seqFromList!1084 lt!202023)))))

(declare-fun b!456097 () Bool)

(assert (=> b!456097 (= e!279100 (tuple2!5375 (BalanceConc!3091 Empty!1541) lt!203198))))

(declare-fun b!456098 () Bool)

(assert (=> b!456098 (= e!279098 (tuple2!5375 (BalanceConc!3091 Empty!1541) (seqFromList!1084 lt!202023)))))

(declare-fun d!174079 () Bool)

(declare-fun e!279097 () Bool)

(assert (=> d!174079 e!279097))

(declare-fun res!202797 () Bool)

(assert (=> d!174079 (=> (not res!202797) (not e!279097))))

(declare-fun lt!203218 () tuple2!5374)

(assert (=> d!174079 (= res!202797 (= (list!1963 (_1!2903 lt!203218)) (list!1963 (_1!2903 (lexRec!130 thiss!17480 rules!1920 (seqFromList!1084 lt!202023))))))))

(assert (=> d!174079 (= lt!203218 e!279098)))

(declare-fun c!92162 () Bool)

(assert (=> d!174079 (= c!92162 ((_ is Some!1150) lt!203217))))

(declare-fun maxPrefixZipperSequenceV2!115 (LexerInterface!745 List!4432 BalanceConc!3088 BalanceConc!3088) Option!1151)

(assert (=> d!174079 (= lt!203217 (maxPrefixZipperSequenceV2!115 thiss!17480 rules!1920 (seqFromList!1084 lt!202023) (seqFromList!1084 lt!202023)))))

(declare-fun lt!203220 () Unit!7961)

(declare-fun lt!203221 () Unit!7961)

(assert (=> d!174079 (= lt!203220 lt!203221)))

(declare-fun lt!203205 () List!4431)

(declare-fun lt!203200 () List!4431)

(assert (=> d!174079 (isSuffix!115 lt!203205 (++!1284 lt!203200 lt!203205))))

(assert (=> d!174079 (= lt!203221 (lemmaConcatTwoListThenFSndIsSuffix!115 lt!203200 lt!203205))))

(assert (=> d!174079 (= lt!203205 (list!1959 (seqFromList!1084 lt!202023)))))

(assert (=> d!174079 (= lt!203200 (list!1959 (BalanceConc!3089 Empty!1540)))))

(assert (=> d!174079 (= (lexTailRecV2!256 thiss!17480 rules!1920 (seqFromList!1084 lt!202023) (BalanceConc!3089 Empty!1540) (seqFromList!1084 lt!202023) (BalanceConc!3091 Empty!1541)) lt!203218)))

(declare-fun lt!203211 () tuple2!5374)

(declare-fun b!456099 () Bool)

(assert (=> b!456099 (= lt!203211 (lexRec!130 thiss!17480 rules!1920 (_2!2902 (v!15471 lt!203206))))))

(assert (=> b!456099 (= e!279100 (tuple2!5375 (prepend!229 (_1!2903 lt!203211) (_1!2902 (v!15471 lt!203206))) (_2!2903 lt!203211)))))

(declare-fun b!456100 () Bool)

(assert (=> b!456100 (= e!279097 (= (list!1959 (_2!2903 lt!203218)) (list!1959 (_2!2903 (lexRec!130 thiss!17480 rules!1920 (seqFromList!1084 lt!202023))))))))

(assert (= (and d!174079 c!92162) b!456094))

(assert (= (and d!174079 (not c!92162)) b!456098))

(assert (= (and b!456094 c!92164) b!456095))

(assert (= (and b!456094 (not c!92164)) b!456096))

(assert (= (and b!456094 c!92163) b!456099))

(assert (= (and b!456094 (not c!92163)) b!456097))

(assert (= (and d!174079 res!202797) b!456100))

(declare-fun m!722307 () Bool)

(assert (=> d!174079 m!722307))

(declare-fun m!722309 () Bool)

(assert (=> d!174079 m!722309))

(assert (=> d!174079 m!722307))

(declare-fun m!722311 () Bool)

(assert (=> d!174079 m!722311))

(assert (=> d!174079 m!718497))

(declare-fun m!722313 () Bool)

(assert (=> d!174079 m!722313))

(assert (=> d!174079 m!718835))

(assert (=> d!174079 m!718497))

(assert (=> d!174079 m!718497))

(declare-fun m!722315 () Bool)

(assert (=> d!174079 m!722315))

(declare-fun m!722317 () Bool)

(assert (=> d!174079 m!722317))

(assert (=> d!174079 m!718497))

(assert (=> d!174079 m!719283))

(declare-fun m!722319 () Bool)

(assert (=> d!174079 m!722319))

(declare-fun m!722321 () Bool)

(assert (=> b!456100 m!722321))

(assert (=> b!456100 m!718497))

(assert (=> b!456100 m!722313))

(declare-fun m!722323 () Bool)

(assert (=> b!456100 m!722323))

(declare-fun m!722325 () Bool)

(assert (=> b!456095 m!722325))

(declare-fun m!722327 () Bool)

(assert (=> b!456095 m!722327))

(declare-fun m!722329 () Bool)

(assert (=> b!456099 m!722329))

(declare-fun m!722331 () Bool)

(assert (=> b!456099 m!722331))

(declare-fun m!722333 () Bool)

(assert (=> b!456094 m!722333))

(declare-fun m!722335 () Bool)

(assert (=> b!456094 m!722335))

(declare-fun m!722337 () Bool)

(assert (=> b!456094 m!722337))

(declare-fun m!722339 () Bool)

(assert (=> b!456094 m!722339))

(assert (=> b!456094 m!718835))

(declare-fun m!722341 () Bool)

(assert (=> b!456094 m!722341))

(declare-fun m!722343 () Bool)

(assert (=> b!456094 m!722343))

(declare-fun m!722345 () Bool)

(assert (=> b!456094 m!722345))

(declare-fun m!722347 () Bool)

(assert (=> b!456094 m!722347))

(declare-fun m!722349 () Bool)

(assert (=> b!456094 m!722349))

(declare-fun m!722351 () Bool)

(assert (=> b!456094 m!722351))

(assert (=> b!456094 m!722347))

(declare-fun m!722353 () Bool)

(assert (=> b!456094 m!722353))

(declare-fun m!722355 () Bool)

(assert (=> b!456094 m!722355))

(declare-fun m!722357 () Bool)

(assert (=> b!456094 m!722357))

(declare-fun m!722359 () Bool)

(assert (=> b!456094 m!722359))

(assert (=> b!456094 m!718497))

(assert (=> b!456094 m!722313))

(assert (=> b!456094 m!718497))

(declare-fun m!722361 () Bool)

(assert (=> b!456094 m!722361))

(declare-fun m!722363 () Bool)

(assert (=> b!456094 m!722363))

(assert (=> b!456094 m!718497))

(assert (=> b!456094 m!722333))

(declare-fun m!722365 () Bool)

(assert (=> b!456094 m!722365))

(declare-fun m!722367 () Bool)

(assert (=> b!456094 m!722367))

(declare-fun m!722369 () Bool)

(assert (=> b!456094 m!722369))

(declare-fun m!722371 () Bool)

(assert (=> b!456094 m!722371))

(declare-fun m!722373 () Bool)

(assert (=> b!456094 m!722373))

(declare-fun m!722375 () Bool)

(assert (=> b!456094 m!722375))

(declare-fun m!722377 () Bool)

(assert (=> b!456094 m!722377))

(declare-fun m!722379 () Bool)

(assert (=> b!456094 m!722379))

(assert (=> b!456094 m!718835))

(assert (=> b!456094 m!722345))

(assert (=> b!456094 m!722371))

(declare-fun m!722381 () Bool)

(assert (=> b!456094 m!722381))

(assert (=> b!456094 m!722333))

(assert (=> b!456094 m!722379))

(declare-fun m!722383 () Bool)

(assert (=> b!456094 m!722383))

(assert (=> b!456094 m!722377))

(declare-fun m!722385 () Bool)

(assert (=> b!456094 m!722385))

(assert (=> b!456094 m!722357))

(assert (=> b!456094 m!722353))

(declare-fun m!722387 () Bool)

(assert (=> b!456094 m!722387))

(declare-fun m!722389 () Bool)

(assert (=> b!456094 m!722389))

(assert (=> b!456094 m!722355))

(declare-fun m!722391 () Bool)

(assert (=> b!456094 m!722391))

(assert (=> b!456094 m!722347))

(assert (=> b!456094 m!722341))

(declare-fun m!722393 () Bool)

(assert (=> b!456094 m!722393))

(assert (=> b!456094 m!722373))

(assert (=> d!173395 d!174079))

(declare-fun b!456125 () Bool)

(declare-fun res!202822 () Bool)

(declare-fun e!279116 () Bool)

(assert (=> b!456125 (=> (not res!202822) (not e!279116))))

(assert (=> b!456125 (= res!202822 (isBalanced!471 (right!4059 (c!91746 lt!202198))))))

(declare-fun b!456126 () Bool)

(declare-fun res!202820 () Bool)

(assert (=> b!456126 (=> (not res!202820) (not e!279116))))

(declare-fun height!236 (Conc!1541) Int)

(assert (=> b!456126 (= res!202820 (<= (- (height!236 (left!3729 (c!91746 lt!202198))) (height!236 (right!4059 (c!91746 lt!202198)))) 1))))

(declare-fun b!456127 () Bool)

(declare-fun res!202819 () Bool)

(assert (=> b!456127 (=> (not res!202819) (not e!279116))))

(assert (=> b!456127 (= res!202819 (not (isEmpty!3393 (left!3729 (c!91746 lt!202198)))))))

(declare-fun b!456128 () Bool)

(declare-fun res!202823 () Bool)

(assert (=> b!456128 (=> (not res!202823) (not e!279116))))

(assert (=> b!456128 (= res!202823 (isBalanced!471 (left!3729 (c!91746 lt!202198))))))

(declare-fun b!456130 () Bool)

(declare-fun e!279115 () Bool)

(assert (=> b!456130 (= e!279115 e!279116)))

(declare-fun res!202821 () Bool)

(assert (=> b!456130 (=> (not res!202821) (not e!279116))))

(assert (=> b!456130 (= res!202821 (<= (- 1) (- (height!236 (left!3729 (c!91746 lt!202198))) (height!236 (right!4059 (c!91746 lt!202198))))))))

(declare-fun b!456129 () Bool)

(assert (=> b!456129 (= e!279116 (not (isEmpty!3393 (right!4059 (c!91746 lt!202198)))))))

(declare-fun d!174203 () Bool)

(declare-fun res!202818 () Bool)

(assert (=> d!174203 (=> res!202818 e!279115)))

(assert (=> d!174203 (= res!202818 (not ((_ is Node!1541) (c!91746 lt!202198))))))

(assert (=> d!174203 (= (isBalanced!471 (c!91746 lt!202198)) e!279115)))

(assert (= (and d!174203 (not res!202818)) b!456130))

(assert (= (and b!456130 res!202821) b!456126))

(assert (= (and b!456126 res!202820) b!456128))

(assert (= (and b!456128 res!202823) b!456125))

(assert (= (and b!456125 res!202822) b!456127))

(assert (= (and b!456127 res!202819) b!456129))

(declare-fun m!722395 () Bool)

(assert (=> b!456125 m!722395))

(declare-fun m!722397 () Bool)

(assert (=> b!456127 m!722397))

(declare-fun m!722399 () Bool)

(assert (=> b!456130 m!722399))

(declare-fun m!722401 () Bool)

(assert (=> b!456130 m!722401))

(declare-fun m!722403 () Bool)

(assert (=> b!456129 m!722403))

(declare-fun m!722405 () Bool)

(assert (=> b!456128 m!722405))

(assert (=> b!456126 m!722399))

(assert (=> b!456126 m!722401))

(assert (=> b!454455 d!174203))

(declare-fun d!174205 () Bool)

(assert (=> d!174205 (= (isEmpty!3394 (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))) (not ((_ is Some!1150) (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))

(assert (=> d!173471 d!174205))

(declare-fun d!174207 () Bool)

(assert (=> d!174207 (= (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170))) (isBalanced!472 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170)))))))

(declare-fun bs!56506 () Bool)

(assert (= bs!56506 d!174207))

(declare-fun m!722407 () Bool)

(assert (=> bs!56506 m!722407))

(assert (=> tb!45553 d!174207))

(declare-fun d!174209 () Bool)

(assert (=> d!174209 (= (inv!15 (value!28797 (h!9820 tokens!465))) (= (charsToBigInt!0 (text!6616 (value!28797 (h!9820 tokens!465))) 0) (value!28792 (value!28797 (h!9820 tokens!465)))))))

(declare-fun bs!56507 () Bool)

(assert (= bs!56507 d!174209))

(declare-fun m!722409 () Bool)

(assert (=> bs!56507 m!722409))

(assert (=> b!454552 d!174209))

(assert (=> d!173453 d!173635))

(declare-fun bm!31582 () Bool)

(declare-fun call!31587 () Bool)

(declare-fun c!92172 () Bool)

(assert (=> bm!31582 (= call!31587 (validRegex!318 (ite c!92172 (regTwo!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))) (regOne!2678 (regex!859 (rule!1550 (h!9820 tokens!465)))))))))

(declare-fun b!456163 () Bool)

(declare-fun res!202842 () Bool)

(declare-fun e!279147 () Bool)

(assert (=> b!456163 (=> res!202842 e!279147)))

(assert (=> b!456163 (= res!202842 (not ((_ is Concat!1965) (regex!859 (rule!1550 (h!9820 tokens!465))))))))

(declare-fun e!279144 () Bool)

(assert (=> b!456163 (= e!279144 e!279147)))

(declare-fun b!456164 () Bool)

(declare-fun res!202839 () Bool)

(declare-fun e!279145 () Bool)

(assert (=> b!456164 (=> (not res!202839) (not e!279145))))

(declare-fun call!31588 () Bool)

(assert (=> b!456164 (= res!202839 call!31588)))

(assert (=> b!456164 (= e!279144 e!279145)))

(declare-fun b!456165 () Bool)

(declare-fun e!279142 () Bool)

(declare-fun e!279146 () Bool)

(assert (=> b!456165 (= e!279142 e!279146)))

(declare-fun c!92173 () Bool)

(assert (=> b!456165 (= c!92173 ((_ is Star!1083) (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(declare-fun b!456166 () Bool)

(assert (=> b!456166 (= e!279146 e!279144)))

(assert (=> b!456166 (= c!92172 ((_ is Union!1083) (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(declare-fun b!456167 () Bool)

(declare-fun e!279148 () Bool)

(assert (=> b!456167 (= e!279146 e!279148)))

(declare-fun res!202841 () Bool)

(assert (=> b!456167 (= res!202841 (not (nullable!243 (reg!1412 (regex!859 (rule!1550 (h!9820 tokens!465)))))))))

(assert (=> b!456167 (=> (not res!202841) (not e!279148))))

(declare-fun bm!31583 () Bool)

(declare-fun call!31589 () Bool)

(assert (=> bm!31583 (= call!31588 call!31589)))

(declare-fun bm!31584 () Bool)

(assert (=> bm!31584 (= call!31589 (validRegex!318 (ite c!92173 (reg!1412 (regex!859 (rule!1550 (h!9820 tokens!465)))) (ite c!92172 (regOne!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))) (regTwo!2678 (regex!859 (rule!1550 (h!9820 tokens!465))))))))))

(declare-fun b!456168 () Bool)

(assert (=> b!456168 (= e!279148 call!31589)))

(declare-fun b!456169 () Bool)

(assert (=> b!456169 (= e!279145 call!31587)))

(declare-fun d!174211 () Bool)

(declare-fun res!202840 () Bool)

(assert (=> d!174211 (=> res!202840 e!279142)))

(assert (=> d!174211 (= res!202840 ((_ is ElementMatch!1083) (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(assert (=> d!174211 (= (validRegex!318 (regex!859 (rule!1550 (h!9820 tokens!465)))) e!279142)))

(declare-fun b!456170 () Bool)

(declare-fun e!279143 () Bool)

(assert (=> b!456170 (= e!279147 e!279143)))

(declare-fun res!202838 () Bool)

(assert (=> b!456170 (=> (not res!202838) (not e!279143))))

(assert (=> b!456170 (= res!202838 call!31587)))

(declare-fun b!456171 () Bool)

(assert (=> b!456171 (= e!279143 call!31588)))

(assert (= (and d!174211 (not res!202840)) b!456165))

(assert (= (and b!456165 c!92173) b!456167))

(assert (= (and b!456165 (not c!92173)) b!456166))

(assert (= (and b!456167 res!202841) b!456168))

(assert (= (and b!456166 c!92172) b!456164))

(assert (= (and b!456166 (not c!92172)) b!456163))

(assert (= (and b!456164 res!202839) b!456169))

(assert (= (and b!456163 (not res!202842)) b!456170))

(assert (= (and b!456170 res!202838) b!456171))

(assert (= (or b!456164 b!456171) bm!31583))

(assert (= (or b!456169 b!456170) bm!31582))

(assert (= (or b!456168 bm!31583) bm!31584))

(declare-fun m!722419 () Bool)

(assert (=> bm!31582 m!722419))

(declare-fun m!722423 () Bool)

(assert (=> b!456167 m!722423))

(declare-fun m!722429 () Bool)

(assert (=> bm!31584 m!722429))

(assert (=> d!173453 d!174211))

(declare-fun d!174213 () Bool)

(assert (=> d!174213 (= (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170))) (v!15470 (maxPrefix!461 thiss!17480 rules!1920 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 tokens!465 separatorToken!170))))))

(assert (=> b!454834 d!174213))

(assert (=> b!454834 d!173969))

(assert (=> b!454834 d!173275))

(assert (=> b!454834 d!173403))

(declare-fun bs!56510 () Bool)

(declare-fun b!456174 () Bool)

(assert (= bs!56510 (and b!456174 d!173243)))

(declare-fun lambda!13357 () Int)

(assert (=> bs!56510 (not (= lambda!13357 lambda!13283))))

(declare-fun bs!56511 () Bool)

(assert (= bs!56511 (and b!456174 b!454399)))

(assert (=> bs!56511 (= lambda!13357 lambda!13292)))

(declare-fun bs!56512 () Bool)

(assert (= bs!56512 (and b!456174 d!173405)))

(assert (=> bs!56512 (= lambda!13357 lambda!13311)))

(declare-fun bs!56514 () Bool)

(assert (= bs!56514 (and b!456174 d!173939)))

(assert (=> bs!56514 (= lambda!13357 lambda!13340)))

(declare-fun bs!56515 () Bool)

(assert (= bs!56515 (and b!456174 b!454602)))

(assert (=> bs!56515 (= lambda!13357 lambda!13299)))

(declare-fun bs!56516 () Bool)

(assert (= bs!56516 (and b!456174 b!454216)))

(assert (=> bs!56516 (not (= lambda!13357 lambda!13277))))

(declare-fun bs!56518 () Bool)

(assert (= bs!56518 (and b!456174 b!455736)))

(assert (=> bs!56518 (= lambda!13357 lambda!13341)))

(declare-fun bs!56519 () Bool)

(assert (= bs!56519 (and b!456174 d!173899)))

(assert (=> bs!56519 (= lambda!13357 lambda!13336)))

(declare-fun bs!56520 () Bool)

(assert (= bs!56520 (and b!456174 b!454217)))

(assert (=> bs!56520 (= lambda!13357 lambda!13278)))

(declare-fun bs!56521 () Bool)

(assert (= bs!56521 (and b!456174 b!454367)))

(assert (=> bs!56521 (= lambda!13357 lambda!13284)))

(declare-fun bs!56522 () Bool)

(assert (= bs!56522 (and b!456174 d!173365)))

(assert (=> bs!56522 (not (= lambda!13357 lambda!13300))))

(declare-fun bs!56523 () Bool)

(assert (= bs!56523 (and b!456174 d!174051)))

(assert (=> bs!56523 (not (= lambda!13357 lambda!13342))))

(declare-fun bs!56524 () Bool)

(assert (= bs!56524 (and b!456174 b!454621)))

(assert (=> bs!56524 (= lambda!13357 lambda!13301)))

(declare-fun bs!56525 () Bool)

(assert (= bs!56525 (and b!456174 d!173433)))

(assert (=> bs!56525 (= lambda!13357 lambda!13313)))

(declare-fun bs!56526 () Bool)

(assert (= bs!56526 (and b!456174 b!455799)))

(assert (=> bs!56526 (= lambda!13357 lambda!13343)))

(declare-fun b!456182 () Bool)

(declare-fun e!279155 () Bool)

(assert (=> b!456182 (= e!279155 true)))

(declare-fun b!456181 () Bool)

(declare-fun e!279154 () Bool)

(assert (=> b!456181 (= e!279154 e!279155)))

(declare-fun b!456180 () Bool)

(declare-fun e!279153 () Bool)

(assert (=> b!456180 (= e!279153 e!279154)))

(assert (=> b!456174 e!279153))

(assert (= b!456181 b!456182))

(assert (= b!456180 b!456181))

(assert (= (and b!456174 ((_ is Cons!4422) rules!1920)) b!456180))

(assert (=> b!456182 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13357))))

(assert (=> b!456182 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13357))))

(assert (=> b!456174 true))

(declare-fun b!456172 () Bool)

(declare-fun e!279150 () BalanceConc!3088)

(assert (=> b!456172 (= e!279150 (charsOf!502 separatorToken!170))))

(declare-fun d!174215 () Bool)

(declare-fun c!92175 () Bool)

(assert (=> d!174215 (= c!92175 ((_ is Cons!4423) (t!71133 (t!71133 tokens!465))))))

(declare-fun e!279152 () List!4431)

(assert (=> d!174215 (= (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (t!71133 (t!71133 tokens!465)) separatorToken!170) e!279152)))

(declare-fun bm!31585 () Bool)

(declare-fun call!31594 () BalanceConc!3088)

(assert (=> bm!31585 (= call!31594 (charsOf!502 (h!9820 (t!71133 (t!71133 tokens!465)))))))

(declare-fun b!456173 () Bool)

(declare-fun e!279149 () List!4431)

(declare-fun call!31592 () List!4431)

(assert (=> b!456173 (= e!279149 call!31592)))

(declare-fun bm!31586 () Bool)

(declare-fun call!31590 () BalanceConc!3088)

(assert (=> bm!31586 (= call!31590 call!31594)))

(declare-fun call!31591 () List!4431)

(declare-fun c!92177 () Bool)

(declare-fun bm!31587 () Bool)

(assert (=> bm!31587 (= call!31591 (list!1959 (ite c!92177 call!31594 call!31590)))))

(assert (=> b!456174 (= e!279152 e!279149)))

(declare-fun lt!203262 () Unit!7961)

(assert (=> b!456174 (= lt!203262 (forallContained!412 (t!71133 (t!71133 tokens!465)) lambda!13357 (h!9820 (t!71133 (t!71133 tokens!465)))))))

(declare-fun lt!203265 () List!4431)

(assert (=> b!456174 (= lt!203265 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (t!71133 (t!71133 (t!71133 tokens!465))) separatorToken!170))))

(declare-fun lt!203267 () Option!1150)

(assert (=> b!456174 (= lt!203267 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 (t!71133 tokens!465))))) lt!203265)))))

(assert (=> b!456174 (= c!92177 (and ((_ is Some!1149) lt!203267) (= (_1!2901 (v!15470 lt!203267)) (h!9820 (t!71133 (t!71133 tokens!465))))))))

(declare-fun bm!31588 () Bool)

(declare-fun call!31593 () List!4431)

(assert (=> bm!31588 (= call!31593 (list!1959 e!279150))))

(declare-fun c!92174 () Bool)

(declare-fun c!92176 () Bool)

(assert (=> bm!31588 (= c!92174 c!92176)))

(declare-fun b!456175 () Bool)

(declare-fun e!279151 () List!4431)

(assert (=> b!456175 (= e!279151 Nil!4421)))

(assert (=> b!456175 (= (print!470 thiss!17480 (singletonSeq!405 (h!9820 (t!71133 (t!71133 tokens!465))))) (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 (t!71133 (t!71133 tokens!465)))) 0 (BalanceConc!3089 Empty!1540)))))

(declare-fun lt!203263 () Unit!7961)

(declare-fun Unit!8001 () Unit!7961)

(assert (=> b!456175 (= lt!203263 Unit!8001)))

(declare-fun lt!203266 () Unit!7961)

(assert (=> b!456175 (= lt!203266 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 call!31593 lt!203265))))

(assert (=> b!456175 false))

(declare-fun lt!203264 () Unit!7961)

(declare-fun Unit!8002 () Unit!7961)

(assert (=> b!456175 (= lt!203264 Unit!8002)))

(declare-fun b!456176 () Bool)

(assert (=> b!456176 (= e!279151 (++!1284 call!31592 lt!203265))))

(declare-fun b!456177 () Bool)

(assert (=> b!456177 (= e!279150 call!31590)))

(declare-fun bm!31589 () Bool)

(assert (=> bm!31589 (= call!31592 (++!1284 call!31591 (ite c!92177 lt!203265 call!31593)))))

(declare-fun b!456178 () Bool)

(assert (=> b!456178 (= e!279152 Nil!4421)))

(declare-fun b!456179 () Bool)

(assert (=> b!456179 (= c!92176 (and ((_ is Some!1149) lt!203267) (not (= (_1!2901 (v!15470 lt!203267)) (h!9820 (t!71133 (t!71133 tokens!465)))))))))

(assert (=> b!456179 (= e!279149 e!279151)))

(assert (= (and d!174215 c!92175) b!456174))

(assert (= (and d!174215 (not c!92175)) b!456178))

(assert (= (and b!456174 c!92177) b!456173))

(assert (= (and b!456174 (not c!92177)) b!456179))

(assert (= (and b!456179 c!92176) b!456176))

(assert (= (and b!456179 (not c!92176)) b!456175))

(assert (= (or b!456176 b!456175) bm!31586))

(assert (= (or b!456176 b!456175) bm!31588))

(assert (= (and bm!31588 c!92174) b!456172))

(assert (= (and bm!31588 (not c!92174)) b!456177))

(assert (= (or b!456173 bm!31586) bm!31585))

(assert (= (or b!456173 b!456176) bm!31587))

(assert (= (or b!456173 b!456176) bm!31589))

(declare-fun m!722491 () Bool)

(assert (=> bm!31585 m!722491))

(assert (=> b!456172 m!718457))

(declare-fun m!722493 () Bool)

(assert (=> b!456174 m!722493))

(declare-fun m!722495 () Bool)

(assert (=> b!456174 m!722495))

(assert (=> b!456174 m!722491))

(declare-fun m!722497 () Bool)

(assert (=> b!456174 m!722497))

(assert (=> b!456174 m!722495))

(declare-fun m!722499 () Bool)

(assert (=> b!456174 m!722499))

(declare-fun m!722501 () Bool)

(assert (=> b!456174 m!722501))

(assert (=> b!456174 m!722491))

(assert (=> b!456174 m!722493))

(declare-fun m!722503 () Bool)

(assert (=> bm!31588 m!722503))

(declare-fun m!722505 () Bool)

(assert (=> b!456176 m!722505))

(declare-fun m!722507 () Bool)

(assert (=> b!456175 m!722507))

(assert (=> b!456175 m!722507))

(declare-fun m!722509 () Bool)

(assert (=> b!456175 m!722509))

(assert (=> b!456175 m!722507))

(declare-fun m!722511 () Bool)

(assert (=> b!456175 m!722511))

(declare-fun m!722513 () Bool)

(assert (=> b!456175 m!722513))

(declare-fun m!722515 () Bool)

(assert (=> bm!31589 m!722515))

(declare-fun m!722517 () Bool)

(assert (=> bm!31587 m!722517))

(assert (=> b!454602 d!174215))

(declare-fun b!456206 () Bool)

(declare-fun e!279171 () Option!1150)

(declare-fun lt!203272 () Option!1150)

(declare-fun lt!203273 () Option!1150)

(assert (=> b!456206 (= e!279171 (ite (and ((_ is None!1149) lt!203272) ((_ is None!1149) lt!203273)) None!1149 (ite ((_ is None!1149) lt!203273) lt!203272 (ite ((_ is None!1149) lt!203272) lt!203273 (ite (>= (size!3619 (_1!2901 (v!15470 lt!203272))) (size!3619 (_1!2901 (v!15470 lt!203273)))) lt!203272 lt!203273)))))))

(declare-fun call!31596 () Option!1150)

(assert (=> b!456206 (= lt!203272 call!31596)))

(assert (=> b!456206 (= lt!203273 (maxPrefix!461 thiss!17480 (t!71132 rules!1920) (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274)))))

(declare-fun b!456207 () Bool)

(declare-fun res!202857 () Bool)

(declare-fun e!279170 () Bool)

(assert (=> b!456207 (=> (not res!202857) (not e!279170))))

(declare-fun lt!203275 () Option!1150)

(assert (=> b!456207 (= res!202857 (matchR!401 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!203275)))) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203275))))))))

(declare-fun b!456208 () Bool)

(declare-fun res!202858 () Bool)

(assert (=> b!456208 (=> (not res!202858) (not e!279170))))

(assert (=> b!456208 (= res!202858 (= (value!28797 (_1!2901 (get!1618 lt!203275))) (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!203275)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!203275)))))))))

(declare-fun b!456209 () Bool)

(assert (=> b!456209 (= e!279170 (contains!990 rules!1920 (rule!1550 (_1!2901 (get!1618 lt!203275)))))))

(declare-fun b!456210 () Bool)

(assert (=> b!456210 (= e!279171 call!31596)))

(declare-fun b!456211 () Bool)

(declare-fun e!279169 () Bool)

(assert (=> b!456211 (= e!279169 e!279170)))

(declare-fun res!202860 () Bool)

(assert (=> b!456211 (=> (not res!202860) (not e!279170))))

(assert (=> b!456211 (= res!202860 (isDefined!989 lt!203275))))

(declare-fun d!174233 () Bool)

(assert (=> d!174233 e!279169))

(declare-fun res!202859 () Bool)

(assert (=> d!174233 (=> res!202859 e!279169)))

(assert (=> d!174233 (= res!202859 (isEmpty!3390 lt!203275))))

(assert (=> d!174233 (= lt!203275 e!279171)))

(declare-fun c!92183 () Bool)

(assert (=> d!174233 (= c!92183 (and ((_ is Cons!4422) rules!1920) ((_ is Nil!4422) (t!71132 rules!1920))))))

(declare-fun lt!203274 () Unit!7961)

(declare-fun lt!203276 () Unit!7961)

(assert (=> d!174233 (= lt!203274 lt!203276)))

(assert (=> d!174233 (isPrefix!513 (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274) (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274))))

(assert (=> d!174233 (= lt!203276 (lemmaIsPrefixRefl!287 (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274) (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274)))))

(assert (=> d!174233 (rulesValidInductive!282 thiss!17480 rules!1920)))

(assert (=> d!174233 (= (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274)) lt!203275)))

(declare-fun b!456212 () Bool)

(declare-fun res!202862 () Bool)

(assert (=> b!456212 (=> (not res!202862) (not e!279170))))

(assert (=> b!456212 (= res!202862 (< (size!3623 (_2!2901 (get!1618 lt!203275))) (size!3623 (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274))))))

(declare-fun b!456213 () Bool)

(declare-fun res!202861 () Bool)

(assert (=> b!456213 (=> (not res!202861) (not e!279170))))

(assert (=> b!456213 (= res!202861 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203275)))) (_2!2901 (get!1618 lt!203275))) (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274)))))

(declare-fun b!456214 () Bool)

(declare-fun res!202856 () Bool)

(assert (=> b!456214 (=> (not res!202856) (not e!279170))))

(assert (=> b!456214 (= res!202856 (= (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203275)))) (originalCharacters!902 (_1!2901 (get!1618 lt!203275)))))))

(declare-fun bm!31591 () Bool)

(assert (=> bm!31591 (= call!31596 (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274)))))

(assert (= (and d!174233 c!92183) b!456210))

(assert (= (and d!174233 (not c!92183)) b!456206))

(assert (= (or b!456210 b!456206) bm!31591))

(assert (= (and d!174233 (not res!202859)) b!456211))

(assert (= (and b!456211 res!202860) b!456214))

(assert (= (and b!456214 res!202856) b!456212))

(assert (= (and b!456212 res!202862) b!456213))

(assert (= (and b!456213 res!202861) b!456208))

(assert (= (and b!456208 res!202858) b!456207))

(assert (= (and b!456207 res!202857) b!456209))

(declare-fun m!722543 () Bool)

(assert (=> b!456214 m!722543))

(declare-fun m!722545 () Bool)

(assert (=> b!456214 m!722545))

(assert (=> b!456214 m!722545))

(declare-fun m!722547 () Bool)

(assert (=> b!456214 m!722547))

(assert (=> b!456212 m!722543))

(declare-fun m!722549 () Bool)

(assert (=> b!456212 m!722549))

(assert (=> b!456212 m!719093))

(declare-fun m!722551 () Bool)

(assert (=> b!456212 m!722551))

(assert (=> b!456207 m!722543))

(assert (=> b!456207 m!722545))

(assert (=> b!456207 m!722545))

(assert (=> b!456207 m!722547))

(assert (=> b!456207 m!722547))

(declare-fun m!722553 () Bool)

(assert (=> b!456207 m!722553))

(assert (=> b!456213 m!722543))

(assert (=> b!456213 m!722545))

(assert (=> b!456213 m!722545))

(assert (=> b!456213 m!722547))

(assert (=> b!456213 m!722547))

(declare-fun m!722555 () Bool)

(assert (=> b!456213 m!722555))

(assert (=> b!456208 m!722543))

(declare-fun m!722559 () Bool)

(assert (=> b!456208 m!722559))

(assert (=> b!456208 m!722559))

(declare-fun m!722565 () Bool)

(assert (=> b!456208 m!722565))

(declare-fun m!722571 () Bool)

(assert (=> b!456211 m!722571))

(declare-fun m!722573 () Bool)

(assert (=> d!174233 m!722573))

(assert (=> d!174233 m!719093))

(assert (=> d!174233 m!719093))

(declare-fun m!722577 () Bool)

(assert (=> d!174233 m!722577))

(assert (=> d!174233 m!719093))

(assert (=> d!174233 m!719093))

(declare-fun m!722579 () Bool)

(assert (=> d!174233 m!722579))

(assert (=> d!174233 m!718921))

(assert (=> b!456209 m!722543))

(declare-fun m!722581 () Bool)

(assert (=> b!456209 m!722581))

(assert (=> bm!31591 m!719093))

(declare-fun m!722583 () Bool)

(assert (=> bm!31591 m!722583))

(assert (=> b!456206 m!719093))

(declare-fun m!722589 () Bool)

(assert (=> b!456206 m!722589))

(assert (=> b!454602 d!174233))

(declare-fun b!456226 () Bool)

(declare-fun e!279180 () List!4431)

(assert (=> b!456226 (= e!279180 lt!202274)))

(declare-fun d!174249 () Bool)

(declare-fun e!279179 () Bool)

(assert (=> d!174249 e!279179))

(declare-fun res!202868 () Bool)

(assert (=> d!174249 (=> (not res!202868) (not e!279179))))

(declare-fun lt!203283 () List!4431)

(assert (=> d!174249 (= res!202868 (= (content!737 lt!203283) ((_ map or) (content!737 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465))))) (content!737 lt!202274))))))

(assert (=> d!174249 (= lt!203283 e!279180)))

(declare-fun c!92187 () Bool)

(assert (=> d!174249 (= c!92187 ((_ is Nil!4421) (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465))))))))

(assert (=> d!174249 (= (++!1284 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) lt!202274) lt!203283)))

(declare-fun b!456228 () Bool)

(declare-fun res!202869 () Bool)

(assert (=> b!456228 (=> (not res!202869) (not e!279179))))

(assert (=> b!456228 (= res!202869 (= (size!3623 lt!203283) (+ (size!3623 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465))))) (size!3623 lt!202274))))))

(declare-fun b!456229 () Bool)

(assert (=> b!456229 (= e!279179 (or (not (= lt!202274 Nil!4421)) (= lt!203283 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))))))))

(declare-fun b!456227 () Bool)

(assert (=> b!456227 (= e!279180 (Cons!4421 (h!9818 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465))))) (++!1284 (t!71131 (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465))))) lt!202274)))))

(assert (= (and d!174249 c!92187) b!456226))

(assert (= (and d!174249 (not c!92187)) b!456227))

(assert (= (and d!174249 res!202868) b!456228))

(assert (= (and b!456228 res!202869) b!456229))

(declare-fun m!722599 () Bool)

(assert (=> d!174249 m!722599))

(assert (=> d!174249 m!719091))

(declare-fun m!722601 () Bool)

(assert (=> d!174249 m!722601))

(assert (=> d!174249 m!721183))

(declare-fun m!722603 () Bool)

(assert (=> b!456228 m!722603))

(assert (=> b!456228 m!719091))

(declare-fun m!722605 () Bool)

(assert (=> b!456228 m!722605))

(assert (=> b!456228 m!721189))

(declare-fun m!722607 () Bool)

(assert (=> b!456227 m!722607))

(assert (=> b!454602 d!174249))

(declare-fun d!174253 () Bool)

(declare-fun lt!203284 () BalanceConc!3088)

(assert (=> d!174253 (= (list!1959 lt!203284) (originalCharacters!902 (h!9820 (t!71133 tokens!465))))))

(assert (=> d!174253 (= lt!203284 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (value!28797 (h!9820 (t!71133 tokens!465)))))))

(assert (=> d!174253 (= (charsOf!502 (h!9820 (t!71133 tokens!465))) lt!203284)))

(declare-fun b_lambda!18899 () Bool)

(assert (=> (not b_lambda!18899) (not d!174253)))

(assert (=> d!174253 t!71242))

(declare-fun b_and!49061 () Bool)

(assert (= b_and!49019 (and (=> t!71242 result!50216) b_and!49061)))

(assert (=> d!174253 t!71250))

(declare-fun b_and!49063 () Bool)

(assert (= b_and!49013 (and (=> t!71250 result!50224) b_and!49063)))

(assert (=> d!174253 t!71248))

(declare-fun b_and!49065 () Bool)

(assert (= b_and!49011 (and (=> t!71248 result!50222) b_and!49065)))

(assert (=> d!174253 t!71244))

(declare-fun b_and!49067 () Bool)

(assert (= b_and!49015 (and (=> t!71244 result!50218) b_and!49067)))

(assert (=> d!174253 t!71246))

(declare-fun b_and!49069 () Bool)

(assert (= b_and!49017 (and (=> t!71246 result!50220) b_and!49069)))

(declare-fun m!722609 () Bool)

(assert (=> d!174253 m!722609))

(assert (=> d!174253 m!720017))

(assert (=> b!454602 d!174253))

(declare-fun d!174255 () Bool)

(assert (=> d!174255 (dynLambda!2680 lambda!13299 (h!9820 (t!71133 tokens!465)))))

(declare-fun lt!203285 () Unit!7961)

(assert (=> d!174255 (= lt!203285 (choose!3431 (t!71133 tokens!465) lambda!13299 (h!9820 (t!71133 tokens!465))))))

(declare-fun e!279181 () Bool)

(assert (=> d!174255 e!279181))

(declare-fun res!202870 () Bool)

(assert (=> d!174255 (=> (not res!202870) (not e!279181))))

(assert (=> d!174255 (= res!202870 (forall!1280 (t!71133 tokens!465) lambda!13299))))

(assert (=> d!174255 (= (forallContained!412 (t!71133 tokens!465) lambda!13299 (h!9820 (t!71133 tokens!465))) lt!203285)))

(declare-fun b!456230 () Bool)

(assert (=> b!456230 (= e!279181 (contains!991 (t!71133 tokens!465) (h!9820 (t!71133 tokens!465))))))

(assert (= (and d!174255 res!202870) b!456230))

(declare-fun b_lambda!18901 () Bool)

(assert (=> (not b_lambda!18901) (not d!174255)))

(declare-fun m!722611 () Bool)

(assert (=> d!174255 m!722611))

(declare-fun m!722613 () Bool)

(assert (=> d!174255 m!722613))

(declare-fun m!722615 () Bool)

(assert (=> d!174255 m!722615))

(declare-fun m!722617 () Bool)

(assert (=> b!456230 m!722617))

(assert (=> b!454602 d!174255))

(declare-fun d!174257 () Bool)

(assert (=> d!174257 (= (list!1959 (charsOf!502 (h!9820 (t!71133 tokens!465)))) (list!1962 (c!91744 (charsOf!502 (h!9820 (t!71133 tokens!465))))))))

(declare-fun bs!56529 () Bool)

(assert (= bs!56529 d!174257))

(declare-fun m!722619 () Bool)

(assert (=> bs!56529 m!722619))

(assert (=> b!454602 d!174257))

(declare-fun d!174259 () Bool)

(declare-fun lt!203286 () BalanceConc!3088)

(assert (=> d!174259 (= (list!1959 lt!203286) (originalCharacters!902 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436))))))

(assert (=> d!174259 (= lt!203286 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436))))) (value!28797 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436)))))))

(assert (=> d!174259 (= (charsOf!502 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436))) lt!203286)))

(declare-fun b_lambda!18903 () Bool)

(assert (=> (not b_lambda!18903) (not d!174259)))

(declare-fun t!71411 () Bool)

(declare-fun tb!45781 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436)))))) t!71411) tb!45781))

(declare-fun e!279186 () Bool)

(declare-fun tp!126463 () Bool)

(declare-fun b!456235 () Bool)

(assert (=> b!456235 (= e!279186 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436))))) (value!28797 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436)))))) tp!126463))))

(declare-fun result!50380 () Bool)

(assert (=> tb!45781 (= result!50380 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436))))) (value!28797 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436))))) e!279186))))

(assert (= tb!45781 b!456235))

(declare-fun m!722621 () Bool)

(assert (=> b!456235 m!722621))

(declare-fun m!722623 () Bool)

(assert (=> tb!45781 m!722623))

(assert (=> d!174259 t!71411))

(declare-fun b_and!49071 () Bool)

(assert (= b_and!49061 (and (=> t!71411 result!50380) b_and!49071)))

(declare-fun t!71413 () Bool)

(declare-fun tb!45783 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436)))))) t!71413) tb!45783))

(declare-fun result!50382 () Bool)

(assert (= result!50382 result!50380))

(assert (=> d!174259 t!71413))

(declare-fun b_and!49073 () Bool)

(assert (= b_and!49065 (and (=> t!71413 result!50382) b_and!49073)))

(declare-fun t!71415 () Bool)

(declare-fun tb!45785 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436)))))) t!71415) tb!45785))

(declare-fun result!50384 () Bool)

(assert (= result!50384 result!50380))

(assert (=> d!174259 t!71415))

(declare-fun b_and!49075 () Bool)

(assert (= b_and!49069 (and (=> t!71415 result!50384) b_and!49075)))

(declare-fun t!71417 () Bool)

(declare-fun tb!45787 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436)))))) t!71417) tb!45787))

(declare-fun result!50386 () Bool)

(assert (= result!50386 result!50380))

(assert (=> d!174259 t!71417))

(declare-fun b_and!49077 () Bool)

(assert (= b_and!49067 (and (=> t!71417 result!50386) b_and!49077)))

(declare-fun tb!45789 () Bool)

(declare-fun t!71419 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436)))))) t!71419) tb!45789))

(declare-fun result!50388 () Bool)

(assert (= result!50388 result!50380))

(assert (=> d!174259 t!71419))

(declare-fun b_and!49079 () Bool)

(assert (= b_and!49063 (and (=> t!71419 result!50388) b_and!49079)))

(declare-fun m!722629 () Bool)

(assert (=> d!174259 m!722629))

(declare-fun m!722631 () Bool)

(assert (=> d!174259 m!722631))

(assert (=> bm!31430 d!174259))

(declare-fun d!174263 () Bool)

(declare-fun c!92190 () Bool)

(assert (=> d!174263 (= c!92190 ((_ is Node!1540) (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170)))))))

(declare-fun e!279194 () Bool)

(assert (=> d!174263 (= (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170)))) e!279194)))

(declare-fun b!456245 () Bool)

(declare-fun inv!5503 (Conc!1540) Bool)

(assert (=> b!456245 (= e!279194 (inv!5503 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170)))))))

(declare-fun b!456246 () Bool)

(declare-fun e!279195 () Bool)

(assert (=> b!456246 (= e!279194 e!279195)))

(declare-fun res!202880 () Bool)

(assert (=> b!456246 (= res!202880 (not ((_ is Leaf!2309) (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170))))))))

(assert (=> b!456246 (=> res!202880 e!279195)))

(declare-fun b!456247 () Bool)

(declare-fun inv!5504 (Conc!1540) Bool)

(assert (=> b!456247 (= e!279195 (inv!5504 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170)))))))

(assert (= (and d!174263 c!92190) b!456245))

(assert (= (and d!174263 (not c!92190)) b!456246))

(assert (= (and b!456246 (not res!202880)) b!456247))

(declare-fun m!722647 () Bool)

(assert (=> b!456245 m!722647))

(declare-fun m!722649 () Bool)

(assert (=> b!456247 m!722649))

(assert (=> b!454587 d!174263))

(declare-fun d!174275 () Bool)

(declare-fun lt!203295 () BalanceConc!3088)

(assert (=> d!174275 (= (list!1959 lt!203295) (printListTailRec!209 thiss!17480 (dropList!244 (singletonSeq!405 call!31479) 0) (list!1959 (BalanceConc!3089 Empty!1540))))))

(declare-fun e!279197 () BalanceConc!3088)

(assert (=> d!174275 (= lt!203295 e!279197)))

(declare-fun c!92192 () Bool)

(assert (=> d!174275 (= c!92192 (>= 0 (size!3622 (singletonSeq!405 call!31479))))))

(declare-fun e!279198 () Bool)

(assert (=> d!174275 e!279198))

(declare-fun res!202881 () Bool)

(assert (=> d!174275 (=> (not res!202881) (not e!279198))))

(assert (=> d!174275 (= res!202881 (>= 0 0))))

(assert (=> d!174275 (= (printTailRec!431 thiss!17480 (singletonSeq!405 call!31479) 0 (BalanceConc!3089 Empty!1540)) lt!203295)))

(declare-fun b!456250 () Bool)

(assert (=> b!456250 (= e!279198 (<= 0 (size!3622 (singletonSeq!405 call!31479))))))

(declare-fun b!456251 () Bool)

(assert (=> b!456251 (= e!279197 (BalanceConc!3089 Empty!1540))))

(declare-fun b!456252 () Bool)

(assert (=> b!456252 (= e!279197 (printTailRec!431 thiss!17480 (singletonSeq!405 call!31479) (+ 0 1) (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (apply!1130 (singletonSeq!405 call!31479) 0)))))))

(declare-fun lt!203297 () List!4433)

(assert (=> b!456252 (= lt!203297 (list!1963 (singletonSeq!405 call!31479)))))

(declare-fun lt!203296 () Unit!7961)

(assert (=> b!456252 (= lt!203296 (lemmaDropApply!284 lt!203297 0))))

(assert (=> b!456252 (= (head!1108 (drop!313 lt!203297 0)) (apply!1131 lt!203297 0))))

(declare-fun lt!203299 () Unit!7961)

(assert (=> b!456252 (= lt!203299 lt!203296)))

(declare-fun lt!203298 () List!4433)

(assert (=> b!456252 (= lt!203298 (list!1963 (singletonSeq!405 call!31479)))))

(declare-fun lt!203293 () Unit!7961)

(assert (=> b!456252 (= lt!203293 (lemmaDropTail!276 lt!203298 0))))

(assert (=> b!456252 (= (tail!636 (drop!313 lt!203298 0)) (drop!313 lt!203298 (+ 0 1)))))

(declare-fun lt!203294 () Unit!7961)

(assert (=> b!456252 (= lt!203294 lt!203293)))

(assert (= (and d!174275 res!202881) b!456250))

(assert (= (and d!174275 c!92192) b!456251))

(assert (= (and d!174275 (not c!92192)) b!456252))

(assert (=> d!174275 m!719173))

(declare-fun m!722657 () Bool)

(assert (=> d!174275 m!722657))

(assert (=> d!174275 m!718835))

(declare-fun m!722659 () Bool)

(assert (=> d!174275 m!722659))

(assert (=> d!174275 m!722657))

(assert (=> d!174275 m!718835))

(declare-fun m!722665 () Bool)

(assert (=> d!174275 m!722665))

(assert (=> d!174275 m!719173))

(declare-fun m!722669 () Bool)

(assert (=> d!174275 m!722669))

(assert (=> b!456250 m!719173))

(assert (=> b!456250 m!722669))

(declare-fun m!722675 () Bool)

(assert (=> b!456252 m!722675))

(declare-fun m!722677 () Bool)

(assert (=> b!456252 m!722677))

(declare-fun m!722679 () Bool)

(assert (=> b!456252 m!722679))

(declare-fun m!722683 () Bool)

(assert (=> b!456252 m!722683))

(assert (=> b!456252 m!719173))

(declare-fun m!722687 () Bool)

(assert (=> b!456252 m!722687))

(declare-fun m!722689 () Bool)

(assert (=> b!456252 m!722689))

(declare-fun m!722691 () Bool)

(assert (=> b!456252 m!722691))

(assert (=> b!456252 m!719173))

(declare-fun m!722695 () Bool)

(assert (=> b!456252 m!722695))

(declare-fun m!722697 () Bool)

(assert (=> b!456252 m!722697))

(declare-fun m!722699 () Bool)

(assert (=> b!456252 m!722699))

(declare-fun m!722701 () Bool)

(assert (=> b!456252 m!722701))

(declare-fun m!722703 () Bool)

(assert (=> b!456252 m!722703))

(assert (=> b!456252 m!719173))

(assert (=> b!456252 m!722677))

(assert (=> b!456252 m!722699))

(assert (=> b!456252 m!722683))

(declare-fun m!722707 () Bool)

(assert (=> b!456252 m!722707))

(assert (=> b!456252 m!722679))

(assert (=> b!456252 m!722695))

(assert (=> b!454617 d!174275))

(declare-fun d!174283 () Bool)

(assert (=> d!174283 (= (list!1959 call!31478) (list!1962 (c!91744 call!31478)))))

(declare-fun bs!56537 () Bool)

(assert (= bs!56537 d!174283))

(declare-fun m!722709 () Bool)

(assert (=> bs!56537 m!722709))

(assert (=> b!454617 d!174283))

(declare-fun d!174285 () Bool)

(assert (=> d!174285 (isDefined!989 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 call!31478) (list!1959 lt!202284))))))

(declare-fun lt!203309 () Unit!7961)

(declare-fun e!279201 () Unit!7961)

(assert (=> d!174285 (= lt!203309 e!279201)))

(declare-fun c!92193 () Bool)

(assert (=> d!174285 (= c!92193 (isEmpty!3390 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 call!31478) (list!1959 lt!202284)))))))

(declare-fun lt!203312 () Unit!7961)

(declare-fun lt!203316 () Unit!7961)

(assert (=> d!174285 (= lt!203312 lt!203316)))

(declare-fun e!279200 () Bool)

(assert (=> d!174285 e!279200))

(declare-fun res!202886 () Bool)

(assert (=> d!174285 (=> (not res!202886) (not e!279200))))

(declare-fun lt!203317 () Token!1462)

(assert (=> d!174285 (= res!202886 (isDefined!992 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!203317)))))))

(assert (=> d!174285 (= lt!203316 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!210 thiss!17480 rules!1920 (list!1959 call!31478) lt!203317))))

(declare-fun lt!203310 () Unit!7961)

(declare-fun lt!203314 () Unit!7961)

(assert (=> d!174285 (= lt!203310 lt!203314)))

(declare-fun lt!203302 () List!4431)

(assert (=> d!174285 (isPrefix!513 lt!203302 (++!1284 (list!1959 call!31478) (list!1959 lt!202284)))))

(assert (=> d!174285 (= lt!203314 (lemmaPrefixStaysPrefixWhenAddingToSuffix!96 lt!203302 (list!1959 call!31478) (list!1959 lt!202284)))))

(assert (=> d!174285 (= lt!203302 (list!1959 (charsOf!502 lt!203317)))))

(declare-fun lt!203315 () Unit!7961)

(declare-fun lt!203301 () Unit!7961)

(assert (=> d!174285 (= lt!203315 lt!203301)))

(declare-fun lt!203306 () List!4431)

(declare-fun lt!203305 () List!4431)

(assert (=> d!174285 (isPrefix!513 lt!203306 (++!1284 lt!203306 lt!203305))))

(assert (=> d!174285 (= lt!203301 (lemmaConcatTwoListThenFirstIsPrefix!402 lt!203306 lt!203305))))

(assert (=> d!174285 (= lt!203305 (_2!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 call!31478)))))))

(assert (=> d!174285 (= lt!203306 (list!1959 (charsOf!502 lt!203317)))))

(assert (=> d!174285 (= lt!203317 (head!1108 (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 (list!1959 call!31478)))))))))

(assert (=> d!174285 (not (isEmpty!3387 rules!1920))))

(assert (=> d!174285 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 (list!1959 call!31478) (list!1959 lt!202284)) lt!203309)))

(declare-fun b!456257 () Bool)

(declare-fun res!202887 () Bool)

(assert (=> b!456257 (=> (not res!202887) (not e!279200))))

(assert (=> b!456257 (= res!202887 (matchR!401 (regex!859 (get!1622 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!203317))))) (list!1959 (charsOf!502 lt!203317))))))

(declare-fun b!456259 () Bool)

(declare-fun Unit!8003 () Unit!7961)

(assert (=> b!456259 (= e!279201 Unit!8003)))

(declare-fun lt!203303 () List!4431)

(assert (=> b!456259 (= lt!203303 (++!1284 (list!1959 call!31478) (list!1959 lt!202284)))))

(declare-fun lt!203311 () Unit!7961)

(assert (=> b!456259 (= lt!203311 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!96 thiss!17480 (rule!1550 lt!203317) rules!1920 lt!203303))))

(assert (=> b!456259 (isEmpty!3390 (maxPrefixOneRule!221 thiss!17480 (rule!1550 lt!203317) lt!203303))))

(declare-fun lt!203304 () Unit!7961)

(assert (=> b!456259 (= lt!203304 lt!203311)))

(declare-fun lt!203313 () List!4431)

(assert (=> b!456259 (= lt!203313 (list!1959 (charsOf!502 lt!203317)))))

(declare-fun lt!203308 () Unit!7961)

(assert (=> b!456259 (= lt!203308 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!96 thiss!17480 (rule!1550 lt!203317) lt!203313 (++!1284 (list!1959 call!31478) (list!1959 lt!202284))))))

(assert (=> b!456259 (not (matchR!401 (regex!859 (rule!1550 lt!203317)) lt!203313))))

(declare-fun lt!203307 () Unit!7961)

(assert (=> b!456259 (= lt!203307 lt!203308)))

(assert (=> b!456259 false))

(declare-fun b!456258 () Bool)

(assert (=> b!456258 (= e!279200 (= (rule!1550 lt!203317) (get!1622 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!203317))))))))

(declare-fun b!456260 () Bool)

(declare-fun Unit!8004 () Unit!7961)

(assert (=> b!456260 (= e!279201 Unit!8004)))

(assert (= (and d!174285 res!202886) b!456257))

(assert (= (and b!456257 res!202887) b!456258))

(assert (= (and d!174285 c!92193) b!456259))

(assert (= (and d!174285 (not c!92193)) b!456260))

(declare-fun m!722717 () Bool)

(assert (=> d!174285 m!722717))

(declare-fun m!722719 () Bool)

(assert (=> d!174285 m!722719))

(assert (=> d!174285 m!722719))

(declare-fun m!722721 () Bool)

(assert (=> d!174285 m!722721))

(assert (=> d!174285 m!722719))

(declare-fun m!722723 () Bool)

(assert (=> d!174285 m!722723))

(declare-fun m!722725 () Bool)

(assert (=> d!174285 m!722725))

(declare-fun m!722727 () Bool)

(assert (=> d!174285 m!722727))

(assert (=> d!174285 m!719179))

(declare-fun m!722729 () Bool)

(assert (=> d!174285 m!722729))

(declare-fun m!722731 () Bool)

(assert (=> d!174285 m!722731))

(assert (=> d!174285 m!722725))

(declare-fun m!722733 () Bool)

(assert (=> d!174285 m!722733))

(assert (=> d!174285 m!719179))

(declare-fun m!722735 () Bool)

(assert (=> d!174285 m!722735))

(assert (=> d!174285 m!718485))

(assert (=> d!174285 m!719179))

(declare-fun m!722737 () Bool)

(assert (=> d!174285 m!722737))

(declare-fun m!722739 () Bool)

(assert (=> d!174285 m!722739))

(assert (=> d!174285 m!722717))

(declare-fun m!722741 () Bool)

(assert (=> d!174285 m!722741))

(assert (=> d!174285 m!722729))

(declare-fun m!722743 () Bool)

(assert (=> d!174285 m!722743))

(assert (=> d!174285 m!719179))

(assert (=> d!174285 m!719181))

(assert (=> d!174285 m!722717))

(assert (=> d!174285 m!722733))

(declare-fun m!722745 () Bool)

(assert (=> d!174285 m!722745))

(assert (=> d!174285 m!722737))

(declare-fun m!722747 () Bool)

(assert (=> d!174285 m!722747))

(declare-fun m!722749 () Bool)

(assert (=> d!174285 m!722749))

(declare-fun m!722751 () Bool)

(assert (=> d!174285 m!722751))

(assert (=> d!174285 m!722731))

(declare-fun m!722753 () Bool)

(assert (=> d!174285 m!722753))

(assert (=> d!174285 m!722749))

(assert (=> d!174285 m!719179))

(assert (=> d!174285 m!719181))

(declare-fun m!722755 () Bool)

(assert (=> d!174285 m!722755))

(assert (=> b!456257 m!722727))

(declare-fun m!722757 () Bool)

(assert (=> b!456257 m!722757))

(assert (=> b!456257 m!722725))

(assert (=> b!456257 m!722727))

(assert (=> b!456257 m!722733))

(declare-fun m!722759 () Bool)

(assert (=> b!456257 m!722759))

(assert (=> b!456257 m!722725))

(assert (=> b!456257 m!722733))

(assert (=> b!456259 m!722725))

(declare-fun m!722761 () Bool)

(assert (=> b!456259 m!722761))

(declare-fun m!722763 () Bool)

(assert (=> b!456259 m!722763))

(declare-fun m!722765 () Bool)

(assert (=> b!456259 m!722765))

(declare-fun m!722767 () Bool)

(assert (=> b!456259 m!722767))

(assert (=> b!456259 m!722725))

(assert (=> b!456259 m!722727))

(assert (=> b!456259 m!722717))

(declare-fun m!722769 () Bool)

(assert (=> b!456259 m!722769))

(assert (=> b!456259 m!719179))

(assert (=> b!456259 m!719181))

(assert (=> b!456259 m!722717))

(assert (=> b!456259 m!722761))

(assert (=> b!456258 m!722733))

(assert (=> b!456258 m!722733))

(assert (=> b!456258 m!722759))

(assert (=> b!454617 d!174285))

(declare-fun d!174293 () Bool)

(declare-fun e!279209 () Bool)

(assert (=> d!174293 e!279209))

(declare-fun res!202888 () Bool)

(assert (=> d!174293 (=> (not res!202888) (not e!279209))))

(declare-fun lt!203325 () BalanceConc!3090)

(assert (=> d!174293 (= res!202888 (= (list!1963 lt!203325) (Cons!4423 call!31479 Nil!4423)))))

(assert (=> d!174293 (= lt!203325 (singleton!194 call!31479))))

(assert (=> d!174293 (= (singletonSeq!405 call!31479) lt!203325)))

(declare-fun b!456272 () Bool)

(assert (=> b!456272 (= e!279209 (isBalanced!471 (c!91746 lt!203325)))))

(assert (= (and d!174293 res!202888) b!456272))

(declare-fun m!722771 () Bool)

(assert (=> d!174293 m!722771))

(declare-fun m!722773 () Bool)

(assert (=> d!174293 m!722773))

(declare-fun m!722775 () Bool)

(assert (=> b!456272 m!722775))

(assert (=> b!454617 d!174293))

(declare-fun d!174295 () Bool)

(declare-fun lt!203326 () BalanceConc!3088)

(assert (=> d!174295 (= (list!1959 lt!203326) (printList!419 thiss!17480 (list!1963 (singletonSeq!405 call!31479))))))

(assert (=> d!174295 (= lt!203326 (printTailRec!431 thiss!17480 (singletonSeq!405 call!31479) 0 (BalanceConc!3089 Empty!1540)))))

(assert (=> d!174295 (= (print!470 thiss!17480 (singletonSeq!405 call!31479)) lt!203326)))

(declare-fun bs!56555 () Bool)

(assert (= bs!56555 d!174295))

(declare-fun m!722777 () Bool)

(assert (=> bs!56555 m!722777))

(assert (=> bs!56555 m!719173))

(assert (=> bs!56555 m!722687))

(assert (=> bs!56555 m!722687))

(declare-fun m!722779 () Bool)

(assert (=> bs!56555 m!722779))

(assert (=> bs!56555 m!719173))

(assert (=> bs!56555 m!719177))

(assert (=> b!454617 d!174295))

(declare-fun d!174297 () Bool)

(assert (=> d!174297 (= (list!1959 lt!202284) (list!1962 (c!91744 lt!202284)))))

(declare-fun bs!56556 () Bool)

(assert (= bs!56556 d!174297))

(declare-fun m!722781 () Bool)

(assert (=> bs!56556 m!722781))

(assert (=> b!454617 d!174297))

(declare-fun bs!56557 () Bool)

(declare-fun d!174299 () Bool)

(assert (= bs!56557 (and d!174299 d!173561)))

(declare-fun lambda!13360 () Int)

(assert (=> bs!56557 (= (and (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) (= (toValue!1674 (transformation!859 (h!9819 rules!1920))) (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (= lambda!13360 lambda!13318))))

(declare-fun bs!56558 () Bool)

(assert (= bs!56558 (and d!174299 d!173835)))

(assert (=> bs!56558 (= (and (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170)))) (= (toValue!1674 (transformation!859 (h!9819 rules!1920))) (toValue!1674 (transformation!859 (rule!1550 separatorToken!170))))) (= lambda!13360 lambda!13330))))

(assert (=> d!174299 true))

(assert (=> d!174299 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2681 order!3911 lambda!13360))))

(assert (=> d!174299 true))

(assert (=> d!174299 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2681 order!3911 lambda!13360))))

(assert (=> d!174299 (= (semiInverseModEq!341 (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (Forall!211 lambda!13360))))

(declare-fun bs!56560 () Bool)

(assert (= bs!56560 d!174299))

(declare-fun m!722813 () Bool)

(assert (=> bs!56560 m!722813))

(assert (=> d!173285 d!174299))

(declare-fun lt!203328 () Bool)

(declare-fun d!174303 () Bool)

(assert (=> d!174303 (= lt!203328 (isEmpty!3386 (list!1959 (_2!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170)))))))))

(assert (=> d!174303 (= lt!203328 (isEmpty!3396 (c!91744 (_2!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170)))))))))

(assert (=> d!174303 (= (isEmpty!3391 (_2!2903 (lex!537 thiss!17480 rules!1920 (print!470 thiss!17480 (singletonSeq!405 separatorToken!170))))) lt!203328)))

(declare-fun bs!56562 () Bool)

(assert (= bs!56562 d!174303))

(declare-fun m!722819 () Bool)

(assert (=> bs!56562 m!722819))

(assert (=> bs!56562 m!722819))

(declare-fun m!722823 () Bool)

(assert (=> bs!56562 m!722823))

(declare-fun m!722825 () Bool)

(assert (=> bs!56562 m!722825))

(assert (=> b!454549 d!174303))

(assert (=> b!454549 d!173549))

(assert (=> b!454549 d!173553))

(assert (=> b!454549 d!173545))

(declare-fun b!456273 () Bool)

(declare-fun e!279211 () List!4431)

(assert (=> b!456273 (= e!279211 lt!202032)))

(declare-fun d!174309 () Bool)

(declare-fun e!279210 () Bool)

(assert (=> d!174309 e!279210))

(declare-fun res!202889 () Bool)

(assert (=> d!174309 (=> (not res!202889) (not e!279210))))

(declare-fun lt!203329 () List!4431)

(assert (=> d!174309 (= res!202889 (= (content!737 lt!203329) ((_ map or) (content!737 (t!71131 lt!202023)) (content!737 lt!202032))))))

(assert (=> d!174309 (= lt!203329 e!279211)))

(declare-fun c!92198 () Bool)

(assert (=> d!174309 (= c!92198 ((_ is Nil!4421) (t!71131 lt!202023)))))

(assert (=> d!174309 (= (++!1284 (t!71131 lt!202023) lt!202032) lt!203329)))

(declare-fun b!456275 () Bool)

(declare-fun res!202890 () Bool)

(assert (=> b!456275 (=> (not res!202890) (not e!279210))))

(assert (=> b!456275 (= res!202890 (= (size!3623 lt!203329) (+ (size!3623 (t!71131 lt!202023)) (size!3623 lt!202032))))))

(declare-fun b!456276 () Bool)

(assert (=> b!456276 (= e!279210 (or (not (= lt!202032 Nil!4421)) (= lt!203329 (t!71131 lt!202023))))))

(declare-fun b!456274 () Bool)

(assert (=> b!456274 (= e!279211 (Cons!4421 (h!9818 (t!71131 lt!202023)) (++!1284 (t!71131 (t!71131 lt!202023)) lt!202032)))))

(assert (= (and d!174309 c!92198) b!456273))

(assert (= (and d!174309 (not c!92198)) b!456274))

(assert (= (and d!174309 res!202889) b!456275))

(assert (= (and b!456275 res!202890) b!456276))

(declare-fun m!722829 () Bool)

(assert (=> d!174309 m!722829))

(assert (=> d!174309 m!719929))

(assert (=> d!174309 m!719211))

(declare-fun m!722831 () Bool)

(assert (=> b!456275 m!722831))

(assert (=> b!456275 m!719933))

(assert (=> b!456275 m!719215))

(declare-fun m!722833 () Bool)

(assert (=> b!456274 m!722833))

(assert (=> b!454631 d!174309))

(assert (=> b!454489 d!173569))

(assert (=> b!454489 d!173571))

(assert (=> b!454489 d!173567))

(declare-fun bs!56564 () Bool)

(declare-fun d!174313 () Bool)

(assert (= bs!56564 (and d!174313 d!173881)))

(declare-fun lambda!13361 () Int)

(assert (=> bs!56564 (= (= (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (= lambda!13361 lambda!13333))))

(assert (=> d!174313 true))

(assert (=> d!174313 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465))))) (dynLambda!2684 order!3915 lambda!13361))))

(assert (=> d!174313 (= (equivClasses!324 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465))))) (Forall2!187 lambda!13361))))

(declare-fun bs!56567 () Bool)

(assert (= bs!56567 d!174313))

(declare-fun m!722845 () Bool)

(assert (=> bs!56567 m!722845))

(assert (=> b!454638 d!174313))

(assert (=> b!454928 d!173711))

(declare-fun d!174323 () Bool)

(declare-fun e!279213 () Bool)

(assert (=> d!174323 e!279213))

(declare-fun res!202893 () Bool)

(assert (=> d!174323 (=> (not res!202893) (not e!279213))))

(declare-fun lt!203331 () BalanceConc!3088)

(assert (=> d!174323 (= res!202893 (= (list!1959 lt!203331) (originalCharacters!902 (h!9820 tokens!465))))))

(assert (=> d!174323 (= lt!203331 (BalanceConc!3089 (fromList!257 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (=> d!174323 (= (fromListB!482 (originalCharacters!902 (h!9820 tokens!465))) lt!203331)))

(declare-fun b!456279 () Bool)

(assert (=> b!456279 (= e!279213 (isBalanced!472 (fromList!257 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (= (and d!174323 res!202893) b!456279))

(declare-fun m!722853 () Bool)

(assert (=> d!174323 m!722853))

(declare-fun m!722855 () Bool)

(assert (=> d!174323 m!722855))

(assert (=> b!456279 m!722855))

(assert (=> b!456279 m!722855))

(declare-fun m!722857 () Bool)

(assert (=> b!456279 m!722857))

(assert (=> d!173475 d!174323))

(declare-fun d!174327 () Bool)

(assert (=> d!174327 (= (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465)))) (isBalanced!472 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465))))))))

(declare-fun bs!56569 () Bool)

(assert (= bs!56569 d!174327))

(declare-fun m!722859 () Bool)

(assert (=> bs!56569 m!722859))

(assert (=> tb!45559 d!174327))

(assert (=> bm!31468 d!174253))

(assert (=> b!454400 d!173583))

(assert (=> b!454400 d!173319))

(declare-fun d!174331 () Bool)

(declare-fun lt!203336 () BalanceConc!3088)

(assert (=> d!174331 (= (list!1959 lt!203336) (printListTailRec!209 thiss!17480 (dropList!244 (singletonSeq!405 (h!9820 tokens!465)) 0) (list!1959 (BalanceConc!3089 Empty!1540))))))

(declare-fun e!279215 () BalanceConc!3088)

(assert (=> d!174331 (= lt!203336 e!279215)))

(declare-fun c!92199 () Bool)

(assert (=> d!174331 (= c!92199 (>= 0 (size!3622 (singletonSeq!405 (h!9820 tokens!465)))))))

(declare-fun e!279217 () Bool)

(assert (=> d!174331 e!279217))

(declare-fun res!202895 () Bool)

(assert (=> d!174331 (=> (not res!202895) (not e!279217))))

(assert (=> d!174331 (= res!202895 (>= 0 0))))

(assert (=> d!174331 (= (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)) 0 (BalanceConc!3089 Empty!1540)) lt!203336)))

(declare-fun b!456281 () Bool)

(assert (=> b!456281 (= e!279217 (<= 0 (size!3622 (singletonSeq!405 (h!9820 tokens!465)))))))

(declare-fun b!456282 () Bool)

(assert (=> b!456282 (= e!279215 (BalanceConc!3089 Empty!1540))))

(declare-fun b!456283 () Bool)

(assert (=> b!456283 (= e!279215 (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 tokens!465)) (+ 0 1) (++!1286 (BalanceConc!3089 Empty!1540) (charsOf!502 (apply!1130 (singletonSeq!405 (h!9820 tokens!465)) 0)))))))

(declare-fun lt!203342 () List!4433)

(assert (=> b!456283 (= lt!203342 (list!1963 (singletonSeq!405 (h!9820 tokens!465))))))

(declare-fun lt!203339 () Unit!7961)

(assert (=> b!456283 (= lt!203339 (lemmaDropApply!284 lt!203342 0))))

(assert (=> b!456283 (= (head!1108 (drop!313 lt!203342 0)) (apply!1131 lt!203342 0))))

(declare-fun lt!203346 () Unit!7961)

(assert (=> b!456283 (= lt!203346 lt!203339)))

(declare-fun lt!203344 () List!4433)

(assert (=> b!456283 (= lt!203344 (list!1963 (singletonSeq!405 (h!9820 tokens!465))))))

(declare-fun lt!203333 () Unit!7961)

(assert (=> b!456283 (= lt!203333 (lemmaDropTail!276 lt!203344 0))))

(assert (=> b!456283 (= (tail!636 (drop!313 lt!203344 0)) (drop!313 lt!203344 (+ 0 1)))))

(declare-fun lt!203335 () Unit!7961)

(assert (=> b!456283 (= lt!203335 lt!203333)))

(assert (= (and d!174331 res!202895) b!456281))

(assert (= (and d!174331 c!92199) b!456282))

(assert (= (and d!174331 (not c!92199)) b!456283))

(assert (=> d!174331 m!718433))

(declare-fun m!722867 () Bool)

(assert (=> d!174331 m!722867))

(assert (=> d!174331 m!718835))

(declare-fun m!722877 () Bool)

(assert (=> d!174331 m!722877))

(assert (=> d!174331 m!722867))

(assert (=> d!174331 m!718835))

(declare-fun m!722879 () Bool)

(assert (=> d!174331 m!722879))

(assert (=> d!174331 m!718433))

(declare-fun m!722881 () Bool)

(assert (=> d!174331 m!722881))

(assert (=> b!456281 m!718433))

(assert (=> b!456281 m!722881))

(declare-fun m!722887 () Bool)

(assert (=> b!456283 m!722887))

(declare-fun m!722889 () Bool)

(assert (=> b!456283 m!722889))

(declare-fun m!722891 () Bool)

(assert (=> b!456283 m!722891))

(declare-fun m!722893 () Bool)

(assert (=> b!456283 m!722893))

(assert (=> b!456283 m!718433))

(assert (=> b!456283 m!719021))

(declare-fun m!722899 () Bool)

(assert (=> b!456283 m!722899))

(declare-fun m!722903 () Bool)

(assert (=> b!456283 m!722903))

(assert (=> b!456283 m!718433))

(declare-fun m!722911 () Bool)

(assert (=> b!456283 m!722911))

(declare-fun m!722915 () Bool)

(assert (=> b!456283 m!722915))

(declare-fun m!722921 () Bool)

(assert (=> b!456283 m!722921))

(declare-fun m!722923 () Bool)

(assert (=> b!456283 m!722923))

(declare-fun m!722927 () Bool)

(assert (=> b!456283 m!722927))

(assert (=> b!456283 m!718433))

(assert (=> b!456283 m!722889))

(assert (=> b!456283 m!722921))

(assert (=> b!456283 m!722893))

(declare-fun m!722929 () Bool)

(assert (=> b!456283 m!722929))

(assert (=> b!456283 m!722891))

(assert (=> b!456283 m!722911))

(assert (=> b!454400 d!174331))

(declare-fun d!174335 () Bool)

(assert (=> d!174335 (isDefined!989 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 call!31453 lt!202159)))))

(declare-fun lt!203372 () Unit!7961)

(declare-fun e!279222 () Unit!7961)

(assert (=> d!174335 (= lt!203372 e!279222)))

(declare-fun c!92202 () Bool)

(assert (=> d!174335 (= c!92202 (isEmpty!3390 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 call!31453 lt!202159))))))

(declare-fun lt!203375 () Unit!7961)

(declare-fun lt!203379 () Unit!7961)

(assert (=> d!174335 (= lt!203375 lt!203379)))

(declare-fun e!279221 () Bool)

(assert (=> d!174335 e!279221))

(declare-fun res!202899 () Bool)

(assert (=> d!174335 (=> (not res!202899) (not e!279221))))

(declare-fun lt!203380 () Token!1462)

(assert (=> d!174335 (= res!202899 (isDefined!992 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!203380)))))))

(assert (=> d!174335 (= lt!203379 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!210 thiss!17480 rules!1920 call!31453 lt!203380))))

(declare-fun lt!203373 () Unit!7961)

(declare-fun lt!203377 () Unit!7961)

(assert (=> d!174335 (= lt!203373 lt!203377)))

(declare-fun lt!203359 () List!4431)

(assert (=> d!174335 (isPrefix!513 lt!203359 (++!1284 call!31453 lt!202159))))

(assert (=> d!174335 (= lt!203377 (lemmaPrefixStaysPrefixWhenAddingToSuffix!96 lt!203359 call!31453 lt!202159))))

(assert (=> d!174335 (= lt!203359 (list!1959 (charsOf!502 lt!203380)))))

(declare-fun lt!203378 () Unit!7961)

(declare-fun lt!203358 () Unit!7961)

(assert (=> d!174335 (= lt!203378 lt!203358)))

(declare-fun lt!203367 () List!4431)

(declare-fun lt!203365 () List!4431)

(assert (=> d!174335 (isPrefix!513 lt!203367 (++!1284 lt!203367 lt!203365))))

(assert (=> d!174335 (= lt!203358 (lemmaConcatTwoListThenFirstIsPrefix!402 lt!203367 lt!203365))))

(assert (=> d!174335 (= lt!203365 (_2!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 call!31453))))))

(assert (=> d!174335 (= lt!203367 (list!1959 (charsOf!502 lt!203380)))))

(assert (=> d!174335 (= lt!203380 (head!1108 (list!1963 (_1!2903 (lex!537 thiss!17480 rules!1920 (seqFromList!1084 call!31453))))))))

(assert (=> d!174335 (not (isEmpty!3387 rules!1920))))

(assert (=> d!174335 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 call!31453 lt!202159) lt!203372)))

(declare-fun b!456291 () Bool)

(declare-fun res!202900 () Bool)

(assert (=> b!456291 (=> (not res!202900) (not e!279221))))

(assert (=> b!456291 (= res!202900 (matchR!401 (regex!859 (get!1622 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!203380))))) (list!1959 (charsOf!502 lt!203380))))))

(declare-fun b!456293 () Bool)

(declare-fun Unit!8005 () Unit!7961)

(assert (=> b!456293 (= e!279222 Unit!8005)))

(declare-fun lt!203361 () List!4431)

(assert (=> b!456293 (= lt!203361 (++!1284 call!31453 lt!202159))))

(declare-fun lt!203374 () Unit!7961)

(assert (=> b!456293 (= lt!203374 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!96 thiss!17480 (rule!1550 lt!203380) rules!1920 lt!203361))))

(assert (=> b!456293 (isEmpty!3390 (maxPrefixOneRule!221 thiss!17480 (rule!1550 lt!203380) lt!203361))))

(declare-fun lt!203363 () Unit!7961)

(assert (=> b!456293 (= lt!203363 lt!203374)))

(declare-fun lt!203376 () List!4431)

(assert (=> b!456293 (= lt!203376 (list!1959 (charsOf!502 lt!203380)))))

(declare-fun lt!203371 () Unit!7961)

(assert (=> b!456293 (= lt!203371 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!96 thiss!17480 (rule!1550 lt!203380) lt!203376 (++!1284 call!31453 lt!202159)))))

(assert (=> b!456293 (not (matchR!401 (regex!859 (rule!1550 lt!203380)) lt!203376))))

(declare-fun lt!203369 () Unit!7961)

(assert (=> b!456293 (= lt!203369 lt!203371)))

(assert (=> b!456293 false))

(declare-fun b!456292 () Bool)

(assert (=> b!456292 (= e!279221 (= (rule!1550 lt!203380) (get!1622 (getRuleFromTag!210 thiss!17480 rules!1920 (tag!1119 (rule!1550 lt!203380))))))))

(declare-fun b!456294 () Bool)

(declare-fun Unit!8006 () Unit!7961)

(assert (=> b!456294 (= e!279222 Unit!8006)))

(assert (= (and d!174335 res!202899) b!456291))

(assert (= (and b!456291 res!202900) b!456292))

(assert (= (and d!174335 c!92202) b!456293))

(assert (= (and d!174335 (not c!92202)) b!456294))

(declare-fun m!722931 () Bool)

(assert (=> d!174335 m!722931))

(declare-fun m!722933 () Bool)

(assert (=> d!174335 m!722933))

(assert (=> d!174335 m!722933))

(declare-fun m!722935 () Bool)

(assert (=> d!174335 m!722935))

(assert (=> d!174335 m!722933))

(declare-fun m!722937 () Bool)

(assert (=> d!174335 m!722937))

(declare-fun m!722939 () Bool)

(assert (=> d!174335 m!722939))

(declare-fun m!722941 () Bool)

(assert (=> d!174335 m!722941))

(declare-fun m!722943 () Bool)

(assert (=> d!174335 m!722943))

(declare-fun m!722947 () Bool)

(assert (=> d!174335 m!722947))

(assert (=> d!174335 m!722939))

(declare-fun m!722953 () Bool)

(assert (=> d!174335 m!722953))

(declare-fun m!722957 () Bool)

(assert (=> d!174335 m!722957))

(assert (=> d!174335 m!718485))

(declare-fun m!722961 () Bool)

(assert (=> d!174335 m!722961))

(declare-fun m!722963 () Bool)

(assert (=> d!174335 m!722963))

(assert (=> d!174335 m!722931))

(declare-fun m!722967 () Bool)

(assert (=> d!174335 m!722967))

(assert (=> d!174335 m!722943))

(declare-fun m!722971 () Bool)

(assert (=> d!174335 m!722971))

(assert (=> d!174335 m!722931))

(assert (=> d!174335 m!722953))

(declare-fun m!722975 () Bool)

(assert (=> d!174335 m!722975))

(assert (=> d!174335 m!722961))

(declare-fun m!722979 () Bool)

(assert (=> d!174335 m!722979))

(declare-fun m!722983 () Bool)

(assert (=> d!174335 m!722983))

(declare-fun m!722985 () Bool)

(assert (=> d!174335 m!722985))

(assert (=> d!174335 m!722947))

(declare-fun m!722987 () Bool)

(assert (=> d!174335 m!722987))

(assert (=> d!174335 m!722983))

(declare-fun m!722989 () Bool)

(assert (=> d!174335 m!722989))

(assert (=> b!456291 m!722941))

(declare-fun m!722993 () Bool)

(assert (=> b!456291 m!722993))

(assert (=> b!456291 m!722939))

(assert (=> b!456291 m!722941))

(assert (=> b!456291 m!722953))

(declare-fun m!722999 () Bool)

(assert (=> b!456291 m!722999))

(assert (=> b!456291 m!722939))

(assert (=> b!456291 m!722953))

(assert (=> b!456293 m!722939))

(declare-fun m!723005 () Bool)

(assert (=> b!456293 m!723005))

(declare-fun m!723007 () Bool)

(assert (=> b!456293 m!723007))

(declare-fun m!723009 () Bool)

(assert (=> b!456293 m!723009))

(declare-fun m!723013 () Bool)

(assert (=> b!456293 m!723013))

(assert (=> b!456293 m!722939))

(assert (=> b!456293 m!722941))

(assert (=> b!456293 m!722931))

(declare-fun m!723017 () Bool)

(assert (=> b!456293 m!723017))

(assert (=> b!456293 m!722931))

(assert (=> b!456293 m!723005))

(assert (=> b!456292 m!722953))

(assert (=> b!456292 m!722953))

(assert (=> b!456292 m!722999))

(assert (=> b!454400 d!174335))

(declare-fun b!456383 () Bool)

(declare-fun res!202939 () Bool)

(declare-fun e!279275 () Bool)

(assert (=> b!456383 (=> (not res!202939) (not e!279275))))

(declare-fun lt!203455 () Option!1150)

(assert (=> b!456383 (= res!202939 (< (size!3623 (_2!2901 (get!1618 lt!203455))) (size!3623 lt!202016)))))

(declare-fun b!456384 () Bool)

(declare-fun e!279272 () Option!1150)

(assert (=> b!456384 (= e!279272 None!1149)))

(declare-fun b!456385 () Bool)

(assert (=> b!456385 (= e!279275 (= (size!3619 (_1!2901 (get!1618 lt!203455))) (size!3623 (originalCharacters!902 (_1!2901 (get!1618 lt!203455))))))))

(declare-fun b!456386 () Bool)

(declare-fun e!279274 () Bool)

(declare-datatypes ((tuple2!5384 0))(
  ( (tuple2!5385 (_1!2908 List!4431) (_2!2908 List!4431)) )
))
(declare-fun findLongestMatchInner!114 (Regex!1083 List!4431 Int List!4431 List!4431 Int) tuple2!5384)

(assert (=> b!456386 (= e!279274 (matchR!401 (regex!859 (h!9819 rules!1920)) (_1!2908 (findLongestMatchInner!114 (regex!859 (h!9819 rules!1920)) Nil!4421 (size!3623 Nil!4421) lt!202016 lt!202016 (size!3623 lt!202016)))))))

(declare-fun b!456387 () Bool)

(declare-fun e!279273 () Bool)

(assert (=> b!456387 (= e!279273 e!279275)))

(declare-fun res!202937 () Bool)

(assert (=> b!456387 (=> (not res!202937) (not e!279275))))

(assert (=> b!456387 (= res!202937 (matchR!401 (regex!859 (h!9819 rules!1920)) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203455))))))))

(declare-fun d!174337 () Bool)

(assert (=> d!174337 e!279273))

(declare-fun res!202941 () Bool)

(assert (=> d!174337 (=> res!202941 e!279273)))

(assert (=> d!174337 (= res!202941 (isEmpty!3390 lt!203455))))

(assert (=> d!174337 (= lt!203455 e!279272)))

(declare-fun c!92229 () Bool)

(declare-fun lt!203458 () tuple2!5384)

(assert (=> d!174337 (= c!92229 (isEmpty!3386 (_1!2908 lt!203458)))))

(declare-fun findLongestMatch!94 (Regex!1083 List!4431) tuple2!5384)

(assert (=> d!174337 (= lt!203458 (findLongestMatch!94 (regex!859 (h!9819 rules!1920)) lt!202016))))

(assert (=> d!174337 (ruleValid!134 thiss!17480 (h!9819 rules!1920))))

(assert (=> d!174337 (= (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) lt!202016) lt!203455)))

(declare-fun b!456388 () Bool)

(declare-fun res!202940 () Bool)

(assert (=> b!456388 (=> (not res!202940) (not e!279275))))

(assert (=> b!456388 (= res!202940 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203455)))) (_2!2901 (get!1618 lt!203455))) lt!202016))))

(declare-fun b!456389 () Bool)

(assert (=> b!456389 (= e!279272 (Some!1149 (tuple2!5371 (Token!1463 (apply!1132 (transformation!859 (h!9819 rules!1920)) (seqFromList!1084 (_1!2908 lt!203458))) (h!9819 rules!1920) (size!3625 (seqFromList!1084 (_1!2908 lt!203458))) (_1!2908 lt!203458)) (_2!2908 lt!203458))))))

(declare-fun lt!203456 () Unit!7961)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!98 (Regex!1083 List!4431) Unit!7961)

(assert (=> b!456389 (= lt!203456 (longestMatchIsAcceptedByMatchOrIsEmpty!98 (regex!859 (h!9819 rules!1920)) lt!202016))))

(declare-fun res!202936 () Bool)

(assert (=> b!456389 (= res!202936 (isEmpty!3386 (_1!2908 (findLongestMatchInner!114 (regex!859 (h!9819 rules!1920)) Nil!4421 (size!3623 Nil!4421) lt!202016 lt!202016 (size!3623 lt!202016)))))))

(assert (=> b!456389 (=> res!202936 e!279274)))

(assert (=> b!456389 e!279274))

(declare-fun lt!203454 () Unit!7961)

(assert (=> b!456389 (= lt!203454 lt!203456)))

(declare-fun lt!203457 () Unit!7961)

(declare-fun lemmaSemiInverse!92 (TokenValueInjection!1534 BalanceConc!3088) Unit!7961)

(assert (=> b!456389 (= lt!203457 (lemmaSemiInverse!92 (transformation!859 (h!9819 rules!1920)) (seqFromList!1084 (_1!2908 lt!203458))))))

(declare-fun b!456390 () Bool)

(declare-fun res!202942 () Bool)

(assert (=> b!456390 (=> (not res!202942) (not e!279275))))

(assert (=> b!456390 (= res!202942 (= (rule!1550 (_1!2901 (get!1618 lt!203455))) (h!9819 rules!1920)))))

(declare-fun b!456391 () Bool)

(declare-fun res!202938 () Bool)

(assert (=> b!456391 (=> (not res!202938) (not e!279275))))

(assert (=> b!456391 (= res!202938 (= (value!28797 (_1!2901 (get!1618 lt!203455))) (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!203455)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!203455)))))))))

(assert (= (and d!174337 c!92229) b!456384))

(assert (= (and d!174337 (not c!92229)) b!456389))

(assert (= (and b!456389 (not res!202936)) b!456386))

(assert (= (and d!174337 (not res!202941)) b!456387))

(assert (= (and b!456387 res!202937) b!456388))

(assert (= (and b!456388 res!202940) b!456383))

(assert (= (and b!456383 res!202939) b!456390))

(assert (= (and b!456390 res!202942) b!456391))

(assert (= (and b!456391 res!202938) b!456385))

(declare-fun m!723327 () Bool)

(assert (=> b!456389 m!723327))

(declare-fun m!723329 () Bool)

(assert (=> b!456389 m!723329))

(declare-fun m!723331 () Bool)

(assert (=> b!456389 m!723331))

(declare-fun m!723333 () Bool)

(assert (=> b!456389 m!723333))

(assert (=> b!456389 m!723329))

(declare-fun m!723335 () Bool)

(assert (=> b!456389 m!723335))

(assert (=> b!456389 m!723327))

(assert (=> b!456389 m!719247))

(declare-fun m!723337 () Bool)

(assert (=> b!456389 m!723337))

(assert (=> b!456389 m!723329))

(declare-fun m!723339 () Bool)

(assert (=> b!456389 m!723339))

(assert (=> b!456389 m!723329))

(declare-fun m!723341 () Bool)

(assert (=> b!456389 m!723341))

(assert (=> b!456389 m!719247))

(declare-fun m!723343 () Bool)

(assert (=> b!456388 m!723343))

(declare-fun m!723345 () Bool)

(assert (=> b!456388 m!723345))

(assert (=> b!456388 m!723345))

(declare-fun m!723347 () Bool)

(assert (=> b!456388 m!723347))

(assert (=> b!456388 m!723347))

(declare-fun m!723349 () Bool)

(assert (=> b!456388 m!723349))

(assert (=> b!456391 m!723343))

(declare-fun m!723351 () Bool)

(assert (=> b!456391 m!723351))

(assert (=> b!456391 m!723351))

(declare-fun m!723353 () Bool)

(assert (=> b!456391 m!723353))

(assert (=> b!456387 m!723343))

(assert (=> b!456387 m!723345))

(assert (=> b!456387 m!723345))

(assert (=> b!456387 m!723347))

(assert (=> b!456387 m!723347))

(declare-fun m!723355 () Bool)

(assert (=> b!456387 m!723355))

(assert (=> b!456383 m!723343))

(declare-fun m!723357 () Bool)

(assert (=> b!456383 m!723357))

(assert (=> b!456383 m!719247))

(declare-fun m!723359 () Bool)

(assert (=> d!174337 m!723359))

(declare-fun m!723361 () Bool)

(assert (=> d!174337 m!723361))

(declare-fun m!723363 () Bool)

(assert (=> d!174337 m!723363))

(assert (=> d!174337 m!721133))

(assert (=> b!456390 m!723343))

(assert (=> b!456386 m!723327))

(assert (=> b!456386 m!719247))

(assert (=> b!456386 m!723327))

(assert (=> b!456386 m!719247))

(assert (=> b!456386 m!723337))

(declare-fun m!723365 () Bool)

(assert (=> b!456386 m!723365))

(assert (=> b!456385 m!723343))

(declare-fun m!723367 () Bool)

(assert (=> b!456385 m!723367))

(assert (=> bm!31478 d!174337))

(assert (=> d!173473 d!173911))

(assert (=> d!173473 d!173643))

(declare-fun d!174409 () Bool)

(assert (=> d!174409 (isPrefix!513 lt!202402 lt!202406)))

(declare-fun lt!203459 () Unit!7961)

(assert (=> d!174409 (= lt!203459 (choose!3437 lt!202402 lt!202406))))

(assert (=> d!174409 (= (lemmaIsPrefixRefl!287 lt!202402 lt!202406) lt!203459)))

(declare-fun bs!56583 () Bool)

(assert (= bs!56583 d!174409))

(assert (=> bs!56583 m!719635))

(declare-fun m!723369 () Bool)

(assert (=> bs!56583 m!723369))

(assert (=> d!173473 d!174409))

(declare-fun d!174411 () Bool)

(assert (=> d!174411 (= (isDefined!989 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))) (not (isEmpty!3390 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))))

(declare-fun bs!56584 () Bool)

(assert (= bs!56584 d!174411))

(assert (=> bs!56584 m!719633))

(declare-fun m!723371 () Bool)

(assert (=> bs!56584 m!723371))

(assert (=> d!173473 d!174411))

(declare-fun b!456392 () Bool)

(declare-fun e!279278 () Bool)

(declare-fun e!279276 () Bool)

(assert (=> b!456392 (= e!279278 e!279276)))

(declare-fun res!202945 () Bool)

(assert (=> b!456392 (=> (not res!202945) (not e!279276))))

(assert (=> b!456392 (= res!202945 (not ((_ is Nil!4421) lt!202406)))))

(declare-fun b!456394 () Bool)

(assert (=> b!456394 (= e!279276 (isPrefix!513 (tail!637 lt!202402) (tail!637 lt!202406)))))

(declare-fun b!456395 () Bool)

(declare-fun e!279277 () Bool)

(assert (=> b!456395 (= e!279277 (>= (size!3623 lt!202406) (size!3623 lt!202402)))))

(declare-fun d!174413 () Bool)

(assert (=> d!174413 e!279277))

(declare-fun res!202946 () Bool)

(assert (=> d!174413 (=> res!202946 e!279277)))

(declare-fun lt!203460 () Bool)

(assert (=> d!174413 (= res!202946 (not lt!203460))))

(assert (=> d!174413 (= lt!203460 e!279278)))

(declare-fun res!202944 () Bool)

(assert (=> d!174413 (=> res!202944 e!279278)))

(assert (=> d!174413 (= res!202944 ((_ is Nil!4421) lt!202402))))

(assert (=> d!174413 (= (isPrefix!513 lt!202402 lt!202406) lt!203460)))

(declare-fun b!456393 () Bool)

(declare-fun res!202943 () Bool)

(assert (=> b!456393 (=> (not res!202943) (not e!279276))))

(assert (=> b!456393 (= res!202943 (= (head!1109 lt!202402) (head!1109 lt!202406)))))

(assert (= (and d!174413 (not res!202944)) b!456392))

(assert (= (and b!456392 res!202945) b!456393))

(assert (= (and b!456393 res!202943) b!456394))

(assert (= (and d!174413 (not res!202946)) b!456395))

(declare-fun m!723373 () Bool)

(assert (=> b!456394 m!723373))

(declare-fun m!723375 () Bool)

(assert (=> b!456394 m!723375))

(assert (=> b!456394 m!723373))

(assert (=> b!456394 m!723375))

(declare-fun m!723377 () Bool)

(assert (=> b!456394 m!723377))

(declare-fun m!723379 () Bool)

(assert (=> b!456395 m!723379))

(declare-fun m!723381 () Bool)

(assert (=> b!456395 m!723381))

(declare-fun m!723383 () Bool)

(assert (=> b!456393 m!723383))

(declare-fun m!723385 () Bool)

(assert (=> b!456393 m!723385))

(assert (=> d!173473 d!174413))

(assert (=> d!173473 d!174029))

(assert (=> d!173473 d!173645))

(declare-fun d!174415 () Bool)

(assert (=> d!174415 (= (isDefined!989 lt!202304) (not (isEmpty!3390 lt!202304)))))

(declare-fun bs!56585 () Bool)

(assert (= bs!56585 d!174415))

(assert (=> bs!56585 m!719259))

(assert (=> b!454646 d!174415))

(assert (=> bm!31434 d!174057))

(declare-fun d!174417 () Bool)

(declare-fun c!92230 () Bool)

(assert (=> d!174417 (= c!92230 ((_ is Nil!4421) lt!202299))))

(declare-fun e!279279 () (InoxSet C!3088))

(assert (=> d!174417 (= (content!737 lt!202299) e!279279)))

(declare-fun b!456396 () Bool)

(assert (=> b!456396 (= e!279279 ((as const (Array C!3088 Bool)) false))))

(declare-fun b!456397 () Bool)

(assert (=> b!456397 (= e!279279 ((_ map or) (store ((as const (Array C!3088 Bool)) false) (h!9818 lt!202299) true) (content!737 (t!71131 lt!202299))))))

(assert (= (and d!174417 c!92230) b!456396))

(assert (= (and d!174417 (not c!92230)) b!456397))

(declare-fun m!723387 () Bool)

(assert (=> b!456397 m!723387))

(declare-fun m!723389 () Bool)

(assert (=> b!456397 m!723389))

(assert (=> d!173375 d!174417))

(assert (=> d!173375 d!173625))

(assert (=> d!173375 d!173833))

(declare-fun b!456398 () Bool)

(declare-fun e!279282 () Option!1150)

(declare-fun lt!203461 () Option!1150)

(declare-fun lt!203462 () Option!1150)

(assert (=> b!456398 (= e!279282 (ite (and ((_ is None!1149) lt!203461) ((_ is None!1149) lt!203462)) None!1149 (ite ((_ is None!1149) lt!203462) lt!203461 (ite ((_ is None!1149) lt!203461) lt!203462 (ite (>= (size!3619 (_1!2901 (v!15470 lt!203461))) (size!3619 (_1!2901 (v!15470 lt!203462)))) lt!203461 lt!203462)))))))

(declare-fun call!31605 () Option!1150)

(assert (=> b!456398 (= lt!203461 call!31605)))

(assert (=> b!456398 (= lt!203462 (maxPrefix!461 thiss!17480 (t!71132 (t!71132 rules!1920)) lt!202023))))

(declare-fun b!456399 () Bool)

(declare-fun res!202948 () Bool)

(declare-fun e!279281 () Bool)

(assert (=> b!456399 (=> (not res!202948) (not e!279281))))

(declare-fun lt!203464 () Option!1150)

(assert (=> b!456399 (= res!202948 (matchR!401 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!203464)))) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203464))))))))

(declare-fun b!456400 () Bool)

(declare-fun res!202949 () Bool)

(assert (=> b!456400 (=> (not res!202949) (not e!279281))))

(assert (=> b!456400 (= res!202949 (= (value!28797 (_1!2901 (get!1618 lt!203464))) (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!203464)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!203464)))))))))

(declare-fun b!456401 () Bool)

(assert (=> b!456401 (= e!279281 (contains!990 (t!71132 rules!1920) (rule!1550 (_1!2901 (get!1618 lt!203464)))))))

(declare-fun b!456402 () Bool)

(assert (=> b!456402 (= e!279282 call!31605)))

(declare-fun b!456403 () Bool)

(declare-fun e!279280 () Bool)

(assert (=> b!456403 (= e!279280 e!279281)))

(declare-fun res!202951 () Bool)

(assert (=> b!456403 (=> (not res!202951) (not e!279281))))

(assert (=> b!456403 (= res!202951 (isDefined!989 lt!203464))))

(declare-fun d!174419 () Bool)

(assert (=> d!174419 e!279280))

(declare-fun res!202950 () Bool)

(assert (=> d!174419 (=> res!202950 e!279280)))

(assert (=> d!174419 (= res!202950 (isEmpty!3390 lt!203464))))

(assert (=> d!174419 (= lt!203464 e!279282)))

(declare-fun c!92231 () Bool)

(assert (=> d!174419 (= c!92231 (and ((_ is Cons!4422) (t!71132 rules!1920)) ((_ is Nil!4422) (t!71132 (t!71132 rules!1920)))))))

(declare-fun lt!203463 () Unit!7961)

(declare-fun lt!203465 () Unit!7961)

(assert (=> d!174419 (= lt!203463 lt!203465)))

(assert (=> d!174419 (isPrefix!513 lt!202023 lt!202023)))

(assert (=> d!174419 (= lt!203465 (lemmaIsPrefixRefl!287 lt!202023 lt!202023))))

(assert (=> d!174419 (rulesValidInductive!282 thiss!17480 (t!71132 rules!1920))))

(assert (=> d!174419 (= (maxPrefix!461 thiss!17480 (t!71132 rules!1920) lt!202023) lt!203464)))

(declare-fun b!456404 () Bool)

(declare-fun res!202953 () Bool)

(assert (=> b!456404 (=> (not res!202953) (not e!279281))))

(assert (=> b!456404 (= res!202953 (< (size!3623 (_2!2901 (get!1618 lt!203464))) (size!3623 lt!202023)))))

(declare-fun b!456405 () Bool)

(declare-fun res!202952 () Bool)

(assert (=> b!456405 (=> (not res!202952) (not e!279281))))

(assert (=> b!456405 (= res!202952 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203464)))) (_2!2901 (get!1618 lt!203464))) lt!202023))))

(declare-fun b!456406 () Bool)

(declare-fun res!202947 () Bool)

(assert (=> b!456406 (=> (not res!202947) (not e!279281))))

(assert (=> b!456406 (= res!202947 (= (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203464)))) (originalCharacters!902 (_1!2901 (get!1618 lt!203464)))))))

(declare-fun bm!31600 () Bool)

(assert (=> bm!31600 (= call!31605 (maxPrefixOneRule!221 thiss!17480 (h!9819 (t!71132 rules!1920)) lt!202023))))

(assert (= (and d!174419 c!92231) b!456402))

(assert (= (and d!174419 (not c!92231)) b!456398))

(assert (= (or b!456402 b!456398) bm!31600))

(assert (= (and d!174419 (not res!202950)) b!456403))

(assert (= (and b!456403 res!202951) b!456406))

(assert (= (and b!456406 res!202947) b!456404))

(assert (= (and b!456404 res!202953) b!456405))

(assert (= (and b!456405 res!202952) b!456400))

(assert (= (and b!456400 res!202949) b!456399))

(assert (= (and b!456399 res!202948) b!456401))

(declare-fun m!723391 () Bool)

(assert (=> b!456406 m!723391))

(declare-fun m!723393 () Bool)

(assert (=> b!456406 m!723393))

(assert (=> b!456406 m!723393))

(declare-fun m!723395 () Bool)

(assert (=> b!456406 m!723395))

(assert (=> b!456404 m!723391))

(declare-fun m!723397 () Bool)

(assert (=> b!456404 m!723397))

(assert (=> b!456404 m!718903))

(assert (=> b!456399 m!723391))

(assert (=> b!456399 m!723393))

(assert (=> b!456399 m!723393))

(assert (=> b!456399 m!723395))

(assert (=> b!456399 m!723395))

(declare-fun m!723399 () Bool)

(assert (=> b!456399 m!723399))

(assert (=> b!456405 m!723391))

(assert (=> b!456405 m!723393))

(assert (=> b!456405 m!723393))

(assert (=> b!456405 m!723395))

(assert (=> b!456405 m!723395))

(declare-fun m!723401 () Bool)

(assert (=> b!456405 m!723401))

(assert (=> b!456400 m!723391))

(declare-fun m!723403 () Bool)

(assert (=> b!456400 m!723403))

(assert (=> b!456400 m!723403))

(declare-fun m!723405 () Bool)

(assert (=> b!456400 m!723405))

(declare-fun m!723407 () Bool)

(assert (=> b!456403 m!723407))

(declare-fun m!723409 () Bool)

(assert (=> d!174419 m!723409))

(assert (=> d!174419 m!718917))

(assert (=> d!174419 m!718919))

(assert (=> d!174419 m!721135))

(assert (=> b!456401 m!723391))

(declare-fun m!723411 () Bool)

(assert (=> b!456401 m!723411))

(declare-fun m!723413 () Bool)

(assert (=> bm!31600 m!723413))

(declare-fun m!723415 () Bool)

(assert (=> b!456398 m!723415))

(assert (=> b!454481 d!174419))

(declare-fun d!174421 () Bool)

(declare-fun lt!203466 () Bool)

(assert (=> d!174421 (= lt!203466 (isEmpty!3384 (list!1963 (_1!2903 lt!202329))))))

(assert (=> d!174421 (= lt!203466 (isEmpty!3393 (c!91746 (_1!2903 lt!202329))))))

(assert (=> d!174421 (= (isEmpty!3385 (_1!2903 lt!202329)) lt!203466)))

(declare-fun bs!56586 () Bool)

(assert (= bs!56586 d!174421))

(assert (=> bs!56586 m!719291))

(assert (=> bs!56586 m!719291))

(declare-fun m!723417 () Bool)

(assert (=> bs!56586 m!723417))

(declare-fun m!723419 () Bool)

(assert (=> bs!56586 m!723419))

(assert (=> b!454686 d!174421))

(assert (=> d!173365 d!173901))

(declare-fun d!174423 () Bool)

(assert (=> d!174423 (forall!1280 (dropList!244 lt!202020 0) lambda!13300)))

(declare-fun lt!203467 () Unit!7961)

(assert (=> d!174423 (= lt!203467 (choose!3438 (list!1963 lt!202020) (dropList!244 lt!202020 0) lambda!13300))))

(assert (=> d!174423 (forall!1280 (list!1963 lt!202020) lambda!13300)))

(assert (=> d!174423 (= (lemmaContentSubsetPreservesForall!187 (list!1963 lt!202020) (dropList!244 lt!202020 0) lambda!13300) lt!203467)))

(declare-fun bs!56587 () Bool)

(assert (= bs!56587 d!174423))

(assert (=> bs!56587 m!719185))

(declare-fun m!723421 () Bool)

(assert (=> bs!56587 m!723421))

(assert (=> bs!56587 m!719143))

(assert (=> bs!56587 m!719185))

(declare-fun m!723423 () Bool)

(assert (=> bs!56587 m!723423))

(assert (=> bs!56587 m!719143))

(declare-fun m!723425 () Bool)

(assert (=> bs!56587 m!723425))

(assert (=> d!173365 d!174423))

(assert (=> d!173365 d!173709))

(declare-fun bs!56588 () Bool)

(declare-fun b!456409 () Bool)

(assert (= bs!56588 (and b!456409 d!173243)))

(declare-fun lambda!13362 () Int)

(assert (=> bs!56588 (not (= lambda!13362 lambda!13283))))

(declare-fun bs!56589 () Bool)

(assert (= bs!56589 (and b!456409 b!454399)))

(assert (=> bs!56589 (= lambda!13362 lambda!13292)))

(declare-fun bs!56590 () Bool)

(assert (= bs!56590 (and b!456409 d!173405)))

(assert (=> bs!56590 (= lambda!13362 lambda!13311)))

(declare-fun bs!56591 () Bool)

(assert (= bs!56591 (and b!456409 d!173939)))

(assert (=> bs!56591 (= lambda!13362 lambda!13340)))

(declare-fun bs!56592 () Bool)

(assert (= bs!56592 (and b!456409 b!454602)))

(assert (=> bs!56592 (= lambda!13362 lambda!13299)))

(declare-fun bs!56593 () Bool)

(assert (= bs!56593 (and b!456409 b!454216)))

(assert (=> bs!56593 (not (= lambda!13362 lambda!13277))))

(declare-fun bs!56594 () Bool)

(assert (= bs!56594 (and b!456409 b!455736)))

(assert (=> bs!56594 (= lambda!13362 lambda!13341)))

(declare-fun bs!56595 () Bool)

(assert (= bs!56595 (and b!456409 d!173899)))

(assert (=> bs!56595 (= lambda!13362 lambda!13336)))

(declare-fun bs!56596 () Bool)

(assert (= bs!56596 (and b!456409 b!454217)))

(assert (=> bs!56596 (= lambda!13362 lambda!13278)))

(declare-fun bs!56597 () Bool)

(assert (= bs!56597 (and b!456409 b!454367)))

(assert (=> bs!56597 (= lambda!13362 lambda!13284)))

(declare-fun bs!56598 () Bool)

(assert (= bs!56598 (and b!456409 d!173365)))

(assert (=> bs!56598 (not (= lambda!13362 lambda!13300))))

(declare-fun bs!56599 () Bool)

(assert (= bs!56599 (and b!456409 b!456174)))

(assert (=> bs!56599 (= lambda!13362 lambda!13357)))

(declare-fun bs!56600 () Bool)

(assert (= bs!56600 (and b!456409 d!174051)))

(assert (=> bs!56600 (not (= lambda!13362 lambda!13342))))

(declare-fun bs!56601 () Bool)

(assert (= bs!56601 (and b!456409 b!454621)))

(assert (=> bs!56601 (= lambda!13362 lambda!13301)))

(declare-fun bs!56602 () Bool)

(assert (= bs!56602 (and b!456409 d!173433)))

(assert (=> bs!56602 (= lambda!13362 lambda!13313)))

(declare-fun bs!56603 () Bool)

(assert (= bs!56603 (and b!456409 b!455799)))

(assert (=> bs!56603 (= lambda!13362 lambda!13343)))

(declare-fun b!456417 () Bool)

(declare-fun e!279289 () Bool)

(assert (=> b!456417 (= e!279289 true)))

(declare-fun b!456416 () Bool)

(declare-fun e!279288 () Bool)

(assert (=> b!456416 (= e!279288 e!279289)))

(declare-fun b!456415 () Bool)

(declare-fun e!279287 () Bool)

(assert (=> b!456415 (= e!279287 e!279288)))

(assert (=> b!456409 e!279287))

(assert (= b!456416 b!456417))

(assert (= b!456415 b!456416))

(assert (= (and b!456409 ((_ is Cons!4422) rules!1920)) b!456415))

(assert (=> b!456417 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13362))))

(assert (=> b!456417 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13362))))

(assert (=> b!456409 true))

(declare-fun b!456407 () Bool)

(declare-fun e!279284 () BalanceConc!3088)

(assert (=> b!456407 (= e!279284 (charsOf!502 separatorToken!170))))

(declare-fun d!174425 () Bool)

(declare-fun c!92233 () Bool)

(assert (=> d!174425 (= c!92233 ((_ is Cons!4423) (dropList!244 lt!202020 0)))))

(declare-fun e!279286 () List!4431)

(assert (=> d!174425 (= (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (dropList!244 lt!202020 0) separatorToken!170) e!279286)))

(declare-fun bm!31601 () Bool)

(declare-fun call!31610 () BalanceConc!3088)

(assert (=> bm!31601 (= call!31610 (charsOf!502 (h!9820 (dropList!244 lt!202020 0))))))

(declare-fun b!456408 () Bool)

(declare-fun e!279283 () List!4431)

(declare-fun call!31608 () List!4431)

(assert (=> b!456408 (= e!279283 call!31608)))

(declare-fun bm!31602 () Bool)

(declare-fun call!31606 () BalanceConc!3088)

(assert (=> bm!31602 (= call!31606 call!31610)))

(declare-fun bm!31603 () Bool)

(declare-fun call!31607 () List!4431)

(declare-fun c!92235 () Bool)

(assert (=> bm!31603 (= call!31607 (list!1959 (ite c!92235 call!31610 call!31606)))))

(assert (=> b!456409 (= e!279286 e!279283)))

(declare-fun lt!203468 () Unit!7961)

(assert (=> b!456409 (= lt!203468 (forallContained!412 (dropList!244 lt!202020 0) lambda!13362 (h!9820 (dropList!244 lt!202020 0))))))

(declare-fun lt!203471 () List!4431)

(assert (=> b!456409 (= lt!203471 (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (t!71133 (dropList!244 lt!202020 0)) separatorToken!170))))

(declare-fun lt!203473 () Option!1150)

(assert (=> b!456409 (= lt!203473 (maxPrefix!461 thiss!17480 rules!1920 (++!1284 (list!1959 (charsOf!502 (h!9820 (dropList!244 lt!202020 0)))) lt!203471)))))

(assert (=> b!456409 (= c!92235 (and ((_ is Some!1149) lt!203473) (= (_1!2901 (v!15470 lt!203473)) (h!9820 (dropList!244 lt!202020 0)))))))

(declare-fun bm!31604 () Bool)

(declare-fun call!31609 () List!4431)

(assert (=> bm!31604 (= call!31609 (list!1959 e!279284))))

(declare-fun c!92232 () Bool)

(declare-fun c!92234 () Bool)

(assert (=> bm!31604 (= c!92232 c!92234)))

(declare-fun b!456410 () Bool)

(declare-fun e!279285 () List!4431)

(assert (=> b!456410 (= e!279285 Nil!4421)))

(assert (=> b!456410 (= (print!470 thiss!17480 (singletonSeq!405 (h!9820 (dropList!244 lt!202020 0)))) (printTailRec!431 thiss!17480 (singletonSeq!405 (h!9820 (dropList!244 lt!202020 0))) 0 (BalanceConc!3089 Empty!1540)))))

(declare-fun lt!203469 () Unit!7961)

(declare-fun Unit!8011 () Unit!7961)

(assert (=> b!456410 (= lt!203469 Unit!8011)))

(declare-fun lt!203472 () Unit!7961)

(assert (=> b!456410 (= lt!203472 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 call!31609 lt!203471))))

(assert (=> b!456410 false))

(declare-fun lt!203470 () Unit!7961)

(declare-fun Unit!8012 () Unit!7961)

(assert (=> b!456410 (= lt!203470 Unit!8012)))

(declare-fun b!456411 () Bool)

(assert (=> b!456411 (= e!279285 (++!1284 call!31608 lt!203471))))

(declare-fun b!456412 () Bool)

(assert (=> b!456412 (= e!279284 call!31606)))

(declare-fun bm!31605 () Bool)

(assert (=> bm!31605 (= call!31608 (++!1284 call!31607 (ite c!92235 lt!203471 call!31609)))))

(declare-fun b!456413 () Bool)

(assert (=> b!456413 (= e!279286 Nil!4421)))

(declare-fun b!456414 () Bool)

(assert (=> b!456414 (= c!92234 (and ((_ is Some!1149) lt!203473) (not (= (_1!2901 (v!15470 lt!203473)) (h!9820 (dropList!244 lt!202020 0))))))))

(assert (=> b!456414 (= e!279283 e!279285)))

(assert (= (and d!174425 c!92233) b!456409))

(assert (= (and d!174425 (not c!92233)) b!456413))

(assert (= (and b!456409 c!92235) b!456408))

(assert (= (and b!456409 (not c!92235)) b!456414))

(assert (= (and b!456414 c!92234) b!456411))

(assert (= (and b!456414 (not c!92234)) b!456410))

(assert (= (or b!456411 b!456410) bm!31602))

(assert (= (or b!456411 b!456410) bm!31604))

(assert (= (and bm!31604 c!92232) b!456407))

(assert (= (and bm!31604 (not c!92232)) b!456412))

(assert (= (or b!456408 bm!31602) bm!31601))

(assert (= (or b!456408 b!456411) bm!31603))

(assert (= (or b!456408 b!456411) bm!31605))

(declare-fun m!723427 () Bool)

(assert (=> bm!31601 m!723427))

(assert (=> b!456407 m!718457))

(declare-fun m!723429 () Bool)

(assert (=> b!456409 m!723429))

(declare-fun m!723431 () Bool)

(assert (=> b!456409 m!723431))

(assert (=> b!456409 m!723427))

(assert (=> b!456409 m!719185))

(declare-fun m!723433 () Bool)

(assert (=> b!456409 m!723433))

(assert (=> b!456409 m!723431))

(declare-fun m!723435 () Bool)

(assert (=> b!456409 m!723435))

(declare-fun m!723437 () Bool)

(assert (=> b!456409 m!723437))

(assert (=> b!456409 m!723427))

(assert (=> b!456409 m!723429))

(declare-fun m!723439 () Bool)

(assert (=> bm!31604 m!723439))

(declare-fun m!723441 () Bool)

(assert (=> b!456411 m!723441))

(declare-fun m!723443 () Bool)

(assert (=> b!456410 m!723443))

(assert (=> b!456410 m!723443))

(declare-fun m!723445 () Bool)

(assert (=> b!456410 m!723445))

(assert (=> b!456410 m!723443))

(declare-fun m!723447 () Bool)

(assert (=> b!456410 m!723447))

(declare-fun m!723449 () Bool)

(assert (=> b!456410 m!723449))

(declare-fun m!723451 () Bool)

(assert (=> bm!31605 m!723451))

(declare-fun m!723453 () Bool)

(assert (=> bm!31603 m!723453))

(assert (=> d!173365 d!174425))

(declare-fun d!174427 () Bool)

(assert (=> d!174427 (= (list!1959 lt!202285) (list!1962 (c!91744 lt!202285)))))

(declare-fun bs!56604 () Bool)

(assert (= bs!56604 d!174427))

(declare-fun m!723455 () Bool)

(assert (=> bs!56604 m!723455))

(assert (=> d!173365 d!174427))

(declare-fun d!174429 () Bool)

(assert (=> d!174429 (= (dropList!244 lt!202020 0) (drop!313 (list!1964 (c!91746 lt!202020)) 0))))

(declare-fun bs!56605 () Bool)

(assert (= bs!56605 d!174429))

(assert (=> bs!56605 m!721115))

(assert (=> bs!56605 m!721115))

(declare-fun m!723457 () Bool)

(assert (=> bs!56605 m!723457))

(assert (=> d!173365 d!174429))

(assert (=> b!454965 d!174029))

(declare-fun b!456426 () Bool)

(declare-fun e!279296 () Bool)

(declare-fun e!279298 () Bool)

(assert (=> b!456426 (= e!279296 e!279298)))

(declare-fun res!202959 () Bool)

(declare-fun rulesUseDisjointChars!102 (Rule!1518 Rule!1518) Bool)

(assert (=> b!456426 (= res!202959 (rulesUseDisjointChars!102 (h!9819 rules!1920) (h!9819 rules!1920)))))

(assert (=> b!456426 (=> (not res!202959) (not e!279298))))

(declare-fun b!456427 () Bool)

(declare-fun e!279297 () Bool)

(assert (=> b!456427 (= e!279296 e!279297)))

(declare-fun res!202958 () Bool)

(assert (=> b!456427 (= res!202958 (not ((_ is Cons!4422) rules!1920)))))

(assert (=> b!456427 (=> res!202958 e!279297)))

(declare-fun d!174431 () Bool)

(declare-fun c!92238 () Bool)

(assert (=> d!174431 (= c!92238 (and ((_ is Cons!4422) rules!1920) (not (= (isSeparator!859 (h!9819 rules!1920)) (isSeparator!859 (h!9819 rules!1920))))))))

(assert (=> d!174431 (= (ruleDisjointCharsFromAllFromOtherType!198 (h!9819 rules!1920) rules!1920) e!279296)))

(declare-fun b!456428 () Bool)

(declare-fun call!31613 () Bool)

(assert (=> b!456428 (= e!279297 call!31613)))

(declare-fun bm!31608 () Bool)

(assert (=> bm!31608 (= call!31613 (ruleDisjointCharsFromAllFromOtherType!198 (h!9819 rules!1920) (t!71132 rules!1920)))))

(declare-fun b!456429 () Bool)

(assert (=> b!456429 (= e!279298 call!31613)))

(assert (= (and d!174431 c!92238) b!456426))

(assert (= (and d!174431 (not c!92238)) b!456427))

(assert (= (and b!456426 res!202959) b!456429))

(assert (= (and b!456427 (not res!202958)) b!456428))

(assert (= (or b!456429 b!456428) bm!31608))

(declare-fun m!723459 () Bool)

(assert (=> b!456426 m!723459))

(declare-fun m!723461 () Bool)

(assert (=> bm!31608 m!723461))

(assert (=> b!454412 d!174431))

(declare-fun e!279299 () Bool)

(declare-fun lt!203474 () BalanceConc!3088)

(declare-fun b!456433 () Bool)

(assert (=> b!456433 (= e!279299 (= (list!1959 lt!203474) (++!1284 (list!1959 e!278039) (list!1959 (ite c!91770 lt!202130 call!31435)))))))

(declare-fun b!456431 () Bool)

(declare-fun res!202960 () Bool)

(assert (=> b!456431 (=> (not res!202960) (not e!279299))))

(assert (=> b!456431 (= res!202960 (<= (height!233 (++!1287 (c!91744 e!278039) (c!91744 (ite c!91770 lt!202130 call!31435)))) (+ (max!0 (height!233 (c!91744 e!278039)) (height!233 (c!91744 (ite c!91770 lt!202130 call!31435)))) 1)))))

(declare-fun d!174433 () Bool)

(assert (=> d!174433 e!279299))

(declare-fun res!202962 () Bool)

(assert (=> d!174433 (=> (not res!202962) (not e!279299))))

(assert (=> d!174433 (= res!202962 (appendAssocInst!102 (c!91744 e!278039) (c!91744 (ite c!91770 lt!202130 call!31435))))))

(assert (=> d!174433 (= lt!203474 (BalanceConc!3089 (++!1287 (c!91744 e!278039) (c!91744 (ite c!91770 lt!202130 call!31435)))))))

(assert (=> d!174433 (= (++!1286 e!278039 (ite c!91770 lt!202130 call!31435)) lt!203474)))

(declare-fun b!456432 () Bool)

(declare-fun res!202963 () Bool)

(assert (=> b!456432 (=> (not res!202963) (not e!279299))))

(assert (=> b!456432 (= res!202963 (>= (height!233 (++!1287 (c!91744 e!278039) (c!91744 (ite c!91770 lt!202130 call!31435)))) (max!0 (height!233 (c!91744 e!278039)) (height!233 (c!91744 (ite c!91770 lt!202130 call!31435))))))))

(declare-fun b!456430 () Bool)

(declare-fun res!202961 () Bool)

(assert (=> b!456430 (=> (not res!202961) (not e!279299))))

(assert (=> b!456430 (= res!202961 (isBalanced!472 (++!1287 (c!91744 e!278039) (c!91744 (ite c!91770 lt!202130 call!31435)))))))

(assert (= (and d!174433 res!202962) b!456430))

(assert (= (and b!456430 res!202961) b!456431))

(assert (= (and b!456431 res!202960) b!456432))

(assert (= (and b!456432 res!202963) b!456433))

(declare-fun m!723463 () Bool)

(assert (=> b!456431 m!723463))

(declare-fun m!723465 () Bool)

(assert (=> b!456431 m!723465))

(declare-fun m!723467 () Bool)

(assert (=> b!456431 m!723467))

(declare-fun m!723469 () Bool)

(assert (=> b!456431 m!723469))

(declare-fun m!723471 () Bool)

(assert (=> b!456431 m!723471))

(assert (=> b!456431 m!723463))

(assert (=> b!456431 m!723469))

(assert (=> b!456431 m!723465))

(declare-fun m!723473 () Bool)

(assert (=> b!456433 m!723473))

(declare-fun m!723475 () Bool)

(assert (=> b!456433 m!723475))

(declare-fun m!723477 () Bool)

(assert (=> b!456433 m!723477))

(assert (=> b!456433 m!723475))

(assert (=> b!456433 m!723477))

(declare-fun m!723479 () Bool)

(assert (=> b!456433 m!723479))

(assert (=> b!456430 m!723469))

(assert (=> b!456430 m!723469))

(declare-fun m!723481 () Bool)

(assert (=> b!456430 m!723481))

(assert (=> b!456432 m!723463))

(assert (=> b!456432 m!723465))

(assert (=> b!456432 m!723467))

(assert (=> b!456432 m!723469))

(assert (=> b!456432 m!723471))

(assert (=> b!456432 m!723463))

(assert (=> b!456432 m!723469))

(assert (=> b!456432 m!723465))

(declare-fun m!723483 () Bool)

(assert (=> d!174433 m!723483))

(assert (=> d!174433 m!723469))

(assert (=> bm!31432 d!174433))

(declare-fun d!174435 () Bool)

(declare-fun charsToBigInt!1 (List!4430) Int)

(assert (=> d!174435 (= (inv!17 (value!28797 (h!9820 tokens!465))) (= (charsToBigInt!1 (text!6615 (value!28797 (h!9820 tokens!465)))) (value!28789 (value!28797 (h!9820 tokens!465)))))))

(declare-fun bs!56606 () Bool)

(assert (= bs!56606 d!174435))

(declare-fun m!723485 () Bool)

(assert (=> bs!56606 m!723485))

(assert (=> b!454553 d!174435))

(declare-fun b!456434 () Bool)

(declare-fun e!279301 () List!4431)

(assert (=> b!456434 (= e!279301 (ite c!91828 lt!202274 call!31476))))

(declare-fun d!174437 () Bool)

(declare-fun e!279300 () Bool)

(assert (=> d!174437 e!279300))

(declare-fun res!202964 () Bool)

(assert (=> d!174437 (=> (not res!202964) (not e!279300))))

(declare-fun lt!203475 () List!4431)

(assert (=> d!174437 (= res!202964 (= (content!737 lt!203475) ((_ map or) (content!737 call!31474) (content!737 (ite c!91828 lt!202274 call!31476)))))))

(assert (=> d!174437 (= lt!203475 e!279301)))

(declare-fun c!92239 () Bool)

(assert (=> d!174437 (= c!92239 ((_ is Nil!4421) call!31474))))

(assert (=> d!174437 (= (++!1284 call!31474 (ite c!91828 lt!202274 call!31476)) lt!203475)))

(declare-fun b!456436 () Bool)

(declare-fun res!202965 () Bool)

(assert (=> b!456436 (=> (not res!202965) (not e!279300))))

(assert (=> b!456436 (= res!202965 (= (size!3623 lt!203475) (+ (size!3623 call!31474) (size!3623 (ite c!91828 lt!202274 call!31476)))))))

(declare-fun b!456437 () Bool)

(assert (=> b!456437 (= e!279300 (or (not (= (ite c!91828 lt!202274 call!31476) Nil!4421)) (= lt!203475 call!31474)))))

(declare-fun b!456435 () Bool)

(assert (=> b!456435 (= e!279301 (Cons!4421 (h!9818 call!31474) (++!1284 (t!71131 call!31474) (ite c!91828 lt!202274 call!31476))))))

(assert (= (and d!174437 c!92239) b!456434))

(assert (= (and d!174437 (not c!92239)) b!456435))

(assert (= (and d!174437 res!202964) b!456436))

(assert (= (and b!456436 res!202965) b!456437))

(declare-fun m!723487 () Bool)

(assert (=> d!174437 m!723487))

(declare-fun m!723489 () Bool)

(assert (=> d!174437 m!723489))

(declare-fun m!723491 () Bool)

(assert (=> d!174437 m!723491))

(declare-fun m!723493 () Bool)

(assert (=> b!456436 m!723493))

(declare-fun m!723495 () Bool)

(assert (=> b!456436 m!723495))

(declare-fun m!723497 () Bool)

(assert (=> b!456436 m!723497))

(declare-fun m!723499 () Bool)

(assert (=> b!456435 m!723499))

(assert (=> bm!31472 d!174437))

(declare-fun b!456438 () Bool)

(declare-fun e!279302 () List!4431)

(assert (=> b!456438 (= e!279302 Nil!4421)))

(declare-fun b!456441 () Bool)

(declare-fun e!279303 () List!4431)

(assert (=> b!456441 (= e!279303 (++!1284 (list!1962 (left!3728 (c!91744 (charsOf!502 (h!9820 tokens!465))))) (list!1962 (right!4058 (c!91744 (charsOf!502 (h!9820 tokens!465)))))))))

(declare-fun b!456440 () Bool)

(assert (=> b!456440 (= e!279303 (list!1966 (xs!4171 (c!91744 (charsOf!502 (h!9820 tokens!465))))))))

(declare-fun b!456439 () Bool)

(assert (=> b!456439 (= e!279302 e!279303)))

(declare-fun c!92241 () Bool)

(assert (=> b!456439 (= c!92241 ((_ is Leaf!2309) (c!91744 (charsOf!502 (h!9820 tokens!465)))))))

(declare-fun d!174439 () Bool)

(declare-fun c!92240 () Bool)

(assert (=> d!174439 (= c!92240 ((_ is Empty!1540) (c!91744 (charsOf!502 (h!9820 tokens!465)))))))

(assert (=> d!174439 (= (list!1962 (c!91744 (charsOf!502 (h!9820 tokens!465)))) e!279302)))

(assert (= (and d!174439 c!92240) b!456438))

(assert (= (and d!174439 (not c!92240)) b!456439))

(assert (= (and b!456439 c!92241) b!456440))

(assert (= (and b!456439 (not c!92241)) b!456441))

(declare-fun m!723501 () Bool)

(assert (=> b!456441 m!723501))

(declare-fun m!723503 () Bool)

(assert (=> b!456441 m!723503))

(assert (=> b!456441 m!723501))

(assert (=> b!456441 m!723503))

(declare-fun m!723505 () Bool)

(assert (=> b!456441 m!723505))

(declare-fun m!723507 () Bool)

(assert (=> b!456440 m!723507))

(assert (=> d!173369 d!174439))

(declare-fun b!456442 () Bool)

(declare-fun e!279309 () Bool)

(assert (=> b!456442 (= e!279309 (= (head!1109 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))) (c!91745 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))))))

(declare-fun b!456443 () Bool)

(declare-fun e!279304 () Bool)

(assert (=> b!456443 (= e!279304 (nullable!243 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202304))))))))

(declare-fun b!456444 () Bool)

(declare-fun res!202969 () Bool)

(declare-fun e!279307 () Bool)

(assert (=> b!456444 (=> res!202969 e!279307)))

(assert (=> b!456444 (= res!202969 e!279309)))

(declare-fun res!202973 () Bool)

(assert (=> b!456444 (=> (not res!202973) (not e!279309))))

(declare-fun lt!203476 () Bool)

(assert (=> b!456444 (= res!202973 lt!203476)))

(declare-fun b!456445 () Bool)

(declare-fun res!202966 () Bool)

(assert (=> b!456445 (=> (not res!202966) (not e!279309))))

(assert (=> b!456445 (= res!202966 (isEmpty!3386 (tail!637 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304)))))))))

(declare-fun b!456446 () Bool)

(declare-fun e!279310 () Bool)

(assert (=> b!456446 (= e!279310 (not lt!203476))))

(declare-fun b!456447 () Bool)

(declare-fun res!202968 () Bool)

(declare-fun e!279308 () Bool)

(assert (=> b!456447 (=> res!202968 e!279308)))

(assert (=> b!456447 (= res!202968 (not (isEmpty!3386 (tail!637 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))))))))

(declare-fun b!456448 () Bool)

(assert (=> b!456448 (= e!279308 (not (= (head!1109 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))) (c!91745 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202304))))))))))

(declare-fun b!456449 () Bool)

(declare-fun e!279305 () Bool)

(assert (=> b!456449 (= e!279305 e!279310)))

(declare-fun c!92242 () Bool)

(assert (=> b!456449 (= c!92242 ((_ is EmptyLang!1083) (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202304))))))))

(declare-fun b!456450 () Bool)

(declare-fun call!31614 () Bool)

(assert (=> b!456450 (= e!279305 (= lt!203476 call!31614))))

(declare-fun b!456452 () Bool)

(declare-fun e!279306 () Bool)

(assert (=> b!456452 (= e!279306 e!279308)))

(declare-fun res!202971 () Bool)

(assert (=> b!456452 (=> res!202971 e!279308)))

(assert (=> b!456452 (= res!202971 call!31614)))

(declare-fun b!456453 () Bool)

(assert (=> b!456453 (= e!279307 e!279306)))

(declare-fun res!202970 () Bool)

(assert (=> b!456453 (=> (not res!202970) (not e!279306))))

(assert (=> b!456453 (= res!202970 (not lt!203476))))

(declare-fun b!456454 () Bool)

(declare-fun res!202967 () Bool)

(assert (=> b!456454 (=> res!202967 e!279307)))

(assert (=> b!456454 (= res!202967 (not ((_ is ElementMatch!1083) (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))))))

(assert (=> b!456454 (= e!279310 e!279307)))

(declare-fun b!456451 () Bool)

(declare-fun res!202972 () Bool)

(assert (=> b!456451 (=> (not res!202972) (not e!279309))))

(assert (=> b!456451 (= res!202972 (not call!31614))))

(declare-fun d!174441 () Bool)

(assert (=> d!174441 e!279305))

(declare-fun c!92243 () Bool)

(assert (=> d!174441 (= c!92243 ((_ is EmptyExpr!1083) (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202304))))))))

(assert (=> d!174441 (= lt!203476 e!279304)))

(declare-fun c!92244 () Bool)

(assert (=> d!174441 (= c!92244 (isEmpty!3386 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))))))

(assert (=> d!174441 (validRegex!318 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))))

(assert (=> d!174441 (= (matchR!401 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))) lt!203476)))

(declare-fun b!456455 () Bool)

(assert (=> b!456455 (= e!279304 (matchR!401 (derivativeStep!210 (regex!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))) (head!1109 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304)))))) (tail!637 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304)))))))))

(declare-fun bm!31609 () Bool)

(assert (=> bm!31609 (= call!31614 (isEmpty!3386 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!202304))))))))

(assert (= (and d!174441 c!92244) b!456443))

(assert (= (and d!174441 (not c!92244)) b!456455))

(assert (= (and d!174441 c!92243) b!456450))

(assert (= (and d!174441 (not c!92243)) b!456449))

(assert (= (and b!456449 c!92242) b!456446))

(assert (= (and b!456449 (not c!92242)) b!456454))

(assert (= (and b!456454 (not res!202967)) b!456444))

(assert (= (and b!456444 res!202973) b!456451))

(assert (= (and b!456451 res!202972) b!456445))

(assert (= (and b!456445 res!202966) b!456442))

(assert (= (and b!456444 (not res!202969)) b!456453))

(assert (= (and b!456453 res!202970) b!456452))

(assert (= (and b!456452 (not res!202971)) b!456447))

(assert (= (and b!456447 (not res!202968)) b!456448))

(assert (= (or b!456450 b!456451 b!456452) bm!31609))

(assert (=> b!456448 m!719243))

(declare-fun m!723509 () Bool)

(assert (=> b!456448 m!723509))

(assert (=> b!456442 m!719243))

(assert (=> b!456442 m!723509))

(declare-fun m!723511 () Bool)

(assert (=> b!456443 m!723511))

(assert (=> b!456455 m!719243))

(assert (=> b!456455 m!723509))

(assert (=> b!456455 m!723509))

(declare-fun m!723513 () Bool)

(assert (=> b!456455 m!723513))

(assert (=> b!456455 m!719243))

(declare-fun m!723515 () Bool)

(assert (=> b!456455 m!723515))

(assert (=> b!456455 m!723513))

(assert (=> b!456455 m!723515))

(declare-fun m!723517 () Bool)

(assert (=> b!456455 m!723517))

(assert (=> d!174441 m!719243))

(declare-fun m!723519 () Bool)

(assert (=> d!174441 m!723519))

(declare-fun m!723521 () Bool)

(assert (=> d!174441 m!723521))

(assert (=> b!456447 m!719243))

(assert (=> b!456447 m!723515))

(assert (=> b!456447 m!723515))

(declare-fun m!723523 () Bool)

(assert (=> b!456447 m!723523))

(assert (=> bm!31609 m!719243))

(assert (=> bm!31609 m!723519))

(assert (=> b!456445 m!719243))

(assert (=> b!456445 m!723515))

(assert (=> b!456445 m!723515))

(assert (=> b!456445 m!723523))

(assert (=> b!454642 d!174441))

(assert (=> b!454642 d!173609))

(assert (=> b!454642 d!173857))

(assert (=> b!454642 d!173859))

(declare-fun d!174443 () Bool)

(assert (=> d!174443 (= (tail!636 (drop!313 lt!202282 0)) (t!71133 (drop!313 lt!202282 0)))))

(assert (=> b!454621 d!174443))

(declare-fun bs!56607 () Bool)

(declare-fun d!174445 () Bool)

(assert (= bs!56607 (and d!174445 d!173243)))

(declare-fun lambda!13363 () Int)

(assert (=> bs!56607 (= lambda!13363 lambda!13283)))

(declare-fun bs!56608 () Bool)

(assert (= bs!56608 (and d!174445 b!454399)))

(assert (=> bs!56608 (not (= lambda!13363 lambda!13292))))

(declare-fun bs!56609 () Bool)

(assert (= bs!56609 (and d!174445 d!173405)))

(assert (=> bs!56609 (not (= lambda!13363 lambda!13311))))

(declare-fun bs!56610 () Bool)

(assert (= bs!56610 (and d!174445 d!173939)))

(assert (=> bs!56610 (not (= lambda!13363 lambda!13340))))

(declare-fun bs!56611 () Bool)

(assert (= bs!56611 (and d!174445 b!454602)))

(assert (=> bs!56611 (not (= lambda!13363 lambda!13299))))

(declare-fun bs!56612 () Bool)

(assert (= bs!56612 (and d!174445 b!454216)))

(assert (=> bs!56612 (= lambda!13363 lambda!13277)))

(declare-fun bs!56613 () Bool)

(assert (= bs!56613 (and d!174445 b!455736)))

(assert (=> bs!56613 (not (= lambda!13363 lambda!13341))))

(declare-fun bs!56614 () Bool)

(assert (= bs!56614 (and d!174445 b!454217)))

(assert (=> bs!56614 (not (= lambda!13363 lambda!13278))))

(declare-fun bs!56615 () Bool)

(assert (= bs!56615 (and d!174445 b!454367)))

(assert (=> bs!56615 (not (= lambda!13363 lambda!13284))))

(declare-fun bs!56616 () Bool)

(assert (= bs!56616 (and d!174445 d!173365)))

(assert (=> bs!56616 (= lambda!13363 lambda!13300)))

(declare-fun bs!56617 () Bool)

(assert (= bs!56617 (and d!174445 b!456174)))

(assert (=> bs!56617 (not (= lambda!13363 lambda!13357))))

(declare-fun bs!56618 () Bool)

(assert (= bs!56618 (and d!174445 d!174051)))

(assert (=> bs!56618 (= lambda!13363 lambda!13342)))

(declare-fun bs!56619 () Bool)

(assert (= bs!56619 (and d!174445 b!454621)))

(assert (=> bs!56619 (not (= lambda!13363 lambda!13301))))

(declare-fun bs!56620 () Bool)

(assert (= bs!56620 (and d!174445 d!173433)))

(assert (=> bs!56620 (not (= lambda!13363 lambda!13313))))

(declare-fun bs!56621 () Bool)

(assert (= bs!56621 (and d!174445 b!455799)))

(assert (=> bs!56621 (not (= lambda!13363 lambda!13343))))

(declare-fun bs!56622 () Bool)

(assert (= bs!56622 (and d!174445 d!173899)))

(assert (=> bs!56622 (not (= lambda!13363 lambda!13336))))

(declare-fun bs!56623 () Bool)

(assert (= bs!56623 (and d!174445 b!456409)))

(assert (=> bs!56623 (not (= lambda!13363 lambda!13362))))

(declare-fun bs!56624 () Bool)

(declare-fun b!456462 () Bool)

(assert (= bs!56624 (and b!456462 d!173243)))

(declare-fun lambda!13364 () Int)

(assert (=> bs!56624 (not (= lambda!13364 lambda!13283))))

(declare-fun bs!56625 () Bool)

(assert (= bs!56625 (and b!456462 b!454399)))

(assert (=> bs!56625 (= lambda!13364 lambda!13292)))

(declare-fun bs!56626 () Bool)

(assert (= bs!56626 (and b!456462 d!173405)))

(assert (=> bs!56626 (= lambda!13364 lambda!13311)))

(declare-fun bs!56627 () Bool)

(assert (= bs!56627 (and b!456462 d!173939)))

(assert (=> bs!56627 (= lambda!13364 lambda!13340)))

(declare-fun bs!56628 () Bool)

(assert (= bs!56628 (and b!456462 d!174445)))

(assert (=> bs!56628 (not (= lambda!13364 lambda!13363))))

(declare-fun bs!56629 () Bool)

(assert (= bs!56629 (and b!456462 b!454602)))

(assert (=> bs!56629 (= lambda!13364 lambda!13299)))

(declare-fun bs!56630 () Bool)

(assert (= bs!56630 (and b!456462 b!454216)))

(assert (=> bs!56630 (not (= lambda!13364 lambda!13277))))

(declare-fun bs!56631 () Bool)

(assert (= bs!56631 (and b!456462 b!455736)))

(assert (=> bs!56631 (= lambda!13364 lambda!13341)))

(declare-fun bs!56632 () Bool)

(assert (= bs!56632 (and b!456462 b!454217)))

(assert (=> bs!56632 (= lambda!13364 lambda!13278)))

(declare-fun bs!56633 () Bool)

(assert (= bs!56633 (and b!456462 b!454367)))

(assert (=> bs!56633 (= lambda!13364 lambda!13284)))

(declare-fun bs!56634 () Bool)

(assert (= bs!56634 (and b!456462 d!173365)))

(assert (=> bs!56634 (not (= lambda!13364 lambda!13300))))

(declare-fun bs!56635 () Bool)

(assert (= bs!56635 (and b!456462 b!456174)))

(assert (=> bs!56635 (= lambda!13364 lambda!13357)))

(declare-fun bs!56636 () Bool)

(assert (= bs!56636 (and b!456462 d!174051)))

(assert (=> bs!56636 (not (= lambda!13364 lambda!13342))))

(declare-fun bs!56637 () Bool)

(assert (= bs!56637 (and b!456462 b!454621)))

(assert (=> bs!56637 (= lambda!13364 lambda!13301)))

(declare-fun bs!56638 () Bool)

(assert (= bs!56638 (and b!456462 d!173433)))

(assert (=> bs!56638 (= lambda!13364 lambda!13313)))

(declare-fun bs!56639 () Bool)

(assert (= bs!56639 (and b!456462 b!455799)))

(assert (=> bs!56639 (= lambda!13364 lambda!13343)))

(declare-fun bs!56640 () Bool)

(assert (= bs!56640 (and b!456462 d!173899)))

(assert (=> bs!56640 (= lambda!13364 lambda!13336)))

(declare-fun bs!56641 () Bool)

(assert (= bs!56641 (and b!456462 b!456409)))

(assert (=> bs!56641 (= lambda!13364 lambda!13362)))

(declare-fun b!456469 () Bool)

(declare-fun e!279320 () Bool)

(assert (=> b!456469 (= e!279320 true)))

(declare-fun b!456468 () Bool)

(declare-fun e!279319 () Bool)

(assert (=> b!456468 (= e!279319 e!279320)))

(declare-fun b!456467 () Bool)

(declare-fun e!279318 () Bool)

(assert (=> b!456467 (= e!279318 e!279319)))

(assert (=> b!456462 e!279318))

(assert (= b!456468 b!456469))

(assert (= b!456467 b!456468))

(assert (= (and b!456462 ((_ is Cons!4422) rules!1920)) b!456467))

(assert (=> b!456469 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13364))))

(assert (=> b!456469 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2675 order!3907 lambda!13364))))

(assert (=> b!456462 true))

(declare-fun bm!31610 () Bool)

(declare-fun call!31616 () Token!1462)

(declare-fun c!92248 () Bool)

(declare-fun call!31618 () BalanceConc!3088)

(declare-fun call!31617 () Token!1462)

(declare-fun c!92247 () Bool)

(assert (=> bm!31610 (= call!31618 (charsOf!502 (ite c!92248 call!31617 (ite c!92247 separatorToken!170 call!31616))))))

(declare-fun b!456456 () Bool)

(declare-fun e!279312 () Bool)

(assert (=> b!456456 (= e!279312 (<= (+ 0 1) (size!3622 lt!202020)))))

(declare-fun b!456457 () Bool)

(declare-fun e!279314 () BalanceConc!3088)

(assert (=> b!456457 (= e!279314 (charsOf!502 call!31616))))

(declare-fun b!456458 () Bool)

(declare-fun e!279313 () BalanceConc!3088)

(assert (=> b!456458 (= e!279313 (BalanceConc!3089 Empty!1540))))

(assert (=> b!456458 (= (print!470 thiss!17480 (singletonSeq!405 call!31616)) (printTailRec!431 thiss!17480 (singletonSeq!405 call!31616) 0 (BalanceConc!3089 Empty!1540)))))

(declare-fun lt!203490 () Unit!7961)

(declare-fun Unit!8013 () Unit!7961)

(assert (=> b!456458 (= lt!203490 Unit!8013)))

(declare-fun lt!203485 () Unit!7961)

(declare-fun call!31615 () BalanceConc!3088)

(declare-fun lt!203480 () BalanceConc!3088)

(assert (=> b!456458 (= lt!203485 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!191 thiss!17480 rules!1920 (list!1959 call!31615) (list!1959 lt!203480)))))

(assert (=> b!456458 false))

(declare-fun lt!203486 () Unit!7961)

(declare-fun Unit!8014 () Unit!7961)

(assert (=> b!456458 (= lt!203486 Unit!8014)))

(declare-fun lt!203481 () BalanceConc!3088)

(assert (=> d!174445 (= (list!1959 lt!203481) (printWithSeparatorTokenWhenNeededList!426 thiss!17480 rules!1920 (dropList!244 lt!202020 (+ 0 1)) separatorToken!170))))

(declare-fun e!279317 () BalanceConc!3088)

(assert (=> d!174445 (= lt!203481 e!279317)))

(declare-fun c!92246 () Bool)

(assert (=> d!174445 (= c!92246 (>= (+ 0 1) (size!3622 lt!202020)))))

(declare-fun lt!203484 () Unit!7961)

(assert (=> d!174445 (= lt!203484 (lemmaContentSubsetPreservesForall!187 (list!1963 lt!202020) (dropList!244 lt!202020 (+ 0 1)) lambda!13363))))

(assert (=> d!174445 e!279312))

(declare-fun res!202974 () Bool)

(assert (=> d!174445 (=> (not res!202974) (not e!279312))))

(assert (=> d!174445 (= res!202974 (>= (+ 0 1) 0))))

(assert (=> d!174445 (= (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 (+ 0 1)) lt!203481)))

(declare-fun bm!31611 () Bool)

(assert (=> bm!31611 (= call!31615 call!31618)))

(declare-fun b!456459 () Bool)

(declare-fun e!279315 () Bool)

(declare-fun lt!203482 () Option!1151)

(assert (=> b!456459 (= e!279315 (= (_1!2902 (v!15471 lt!203482)) (apply!1130 lt!202020 (+ 0 1))))))

(declare-fun b!456460 () Bool)

(declare-fun e!279311 () Bool)

(assert (=> b!456460 (= c!92247 e!279311)))

(declare-fun res!202976 () Bool)

(assert (=> b!456460 (=> (not res!202976) (not e!279311))))

(assert (=> b!456460 (= res!202976 ((_ is Some!1150) lt!203482))))

(declare-fun e!279316 () BalanceConc!3088)

(assert (=> b!456460 (= e!279316 e!279313)))

(declare-fun b!456461 () Bool)

(declare-fun call!31619 () BalanceConc!3088)

(assert (=> b!456461 (= e!279316 call!31619)))

(assert (=> b!456462 (= e!279317 e!279316)))

(declare-fun lt!203479 () List!4433)

(assert (=> b!456462 (= lt!203479 (list!1963 lt!202020))))

(declare-fun lt!203488 () Unit!7961)

(assert (=> b!456462 (= lt!203488 (lemmaDropApply!284 lt!203479 (+ 0 1)))))

(assert (=> b!456462 (= (head!1108 (drop!313 lt!203479 (+ 0 1))) (apply!1131 lt!203479 (+ 0 1)))))

(declare-fun lt!203477 () Unit!7961)

(assert (=> b!456462 (= lt!203477 lt!203488)))

(declare-fun lt!203478 () List!4433)

(assert (=> b!456462 (= lt!203478 (list!1963 lt!202020))))

(declare-fun lt!203487 () Unit!7961)

(assert (=> b!456462 (= lt!203487 (lemmaDropTail!276 lt!203478 (+ 0 1)))))

(assert (=> b!456462 (= (tail!636 (drop!313 lt!203478 (+ 0 1))) (drop!313 lt!203478 (+ 0 1 1)))))

(declare-fun lt!203489 () Unit!7961)

(assert (=> b!456462 (= lt!203489 lt!203487)))

(declare-fun lt!203483 () Unit!7961)

(assert (=> b!456462 (= lt!203483 (forallContained!412 (list!1963 lt!202020) lambda!13364 (apply!1130 lt!202020 (+ 0 1))))))

(assert (=> b!456462 (= lt!203480 (printWithSeparatorTokenWhenNeededRec!418 thiss!17480 rules!1920 lt!202020 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!456462 (= lt!203482 (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (++!1286 (charsOf!502 (apply!1130 lt!202020 (+ 0 1))) lt!203480)))))

(declare-fun res!202975 () Bool)

(assert (=> b!456462 (= res!202975 ((_ is Some!1150) lt!203482))))

(assert (=> b!456462 (=> (not res!202975) (not e!279315))))

(assert (=> b!456462 (= c!92248 e!279315)))

(declare-fun bm!31612 () Bool)

(declare-fun c!92245 () Bool)

(assert (=> bm!31612 (= c!92245 c!92248)))

(assert (=> bm!31612 (= call!31619 (++!1286 e!279314 (ite c!92248 lt!203480 call!31615)))))

(declare-fun bm!31613 () Bool)

(assert (=> bm!31613 (= call!31616 call!31617)))

(declare-fun b!456463 () Bool)

(assert (=> b!456463 (= e!279313 (++!1286 call!31619 lt!203480))))

(declare-fun b!456464 () Bool)

(assert (=> b!456464 (= e!279314 call!31618)))

(declare-fun bm!31614 () Bool)

(assert (=> bm!31614 (= call!31617 (apply!1130 lt!202020 (+ 0 1)))))

(declare-fun b!456465 () Bool)

(assert (=> b!456465 (= e!279311 (not (= (_1!2902 (v!15471 lt!203482)) call!31617)))))

(declare-fun b!456466 () Bool)

(assert (=> b!456466 (= e!279317 (BalanceConc!3089 Empty!1540))))

(assert (= (and d!174445 res!202974) b!456456))

(assert (= (and d!174445 c!92246) b!456466))

(assert (= (and d!174445 (not c!92246)) b!456462))

(assert (= (and b!456462 res!202975) b!456459))

(assert (= (and b!456462 c!92248) b!456461))

(assert (= (and b!456462 (not c!92248)) b!456460))

(assert (= (and b!456460 res!202976) b!456465))

(assert (= (and b!456460 c!92247) b!456463))

(assert (= (and b!456460 (not c!92247)) b!456458))

(assert (= (or b!456463 b!456458) bm!31613))

(assert (= (or b!456463 b!456458) bm!31611))

(assert (= (or b!456461 b!456465 bm!31613) bm!31614))

(assert (= (or b!456461 bm!31611) bm!31610))

(assert (= (or b!456461 b!456463) bm!31612))

(assert (= (and bm!31612 c!92245) b!456464))

(assert (= (and bm!31612 (not c!92245)) b!456457))

(declare-fun m!723525 () Bool)

(assert (=> b!456459 m!723525))

(declare-fun m!723527 () Bool)

(assert (=> b!456463 m!723527))

(declare-fun m!723529 () Bool)

(assert (=> b!456462 m!723529))

(declare-fun m!723531 () Bool)

(assert (=> b!456462 m!723531))

(assert (=> b!456462 m!723525))

(declare-fun m!723533 () Bool)

(assert (=> b!456462 m!723533))

(assert (=> b!456462 m!719143))

(assert (=> b!456462 m!723525))

(declare-fun m!723535 () Bool)

(assert (=> b!456462 m!723535))

(assert (=> b!456462 m!723531))

(declare-fun m!723537 () Bool)

(assert (=> b!456462 m!723537))

(declare-fun m!723539 () Bool)

(assert (=> b!456462 m!723539))

(declare-fun m!723541 () Bool)

(assert (=> b!456462 m!723541))

(declare-fun m!723543 () Bool)

(assert (=> b!456462 m!723543))

(assert (=> b!456462 m!719143))

(declare-fun m!723545 () Bool)

(assert (=> b!456462 m!723545))

(declare-fun m!723547 () Bool)

(assert (=> b!456462 m!723547))

(declare-fun m!723549 () Bool)

(assert (=> b!456462 m!723549))

(declare-fun m!723551 () Bool)

(assert (=> b!456462 m!723551))

(declare-fun m!723553 () Bool)

(assert (=> b!456462 m!723553))

(assert (=> b!456462 m!723551))

(assert (=> b!456462 m!723525))

(assert (=> b!456462 m!723533))

(assert (=> b!456462 m!723541))

(assert (=> b!456456 m!719165))

(declare-fun m!723555 () Bool)

(assert (=> bm!31612 m!723555))

(declare-fun m!723557 () Bool)

(assert (=> bm!31610 m!723557))

(declare-fun m!723559 () Bool)

(assert (=> b!456457 m!723559))

(declare-fun m!723561 () Bool)

(assert (=> b!456458 m!723561))

(declare-fun m!723563 () Bool)

(assert (=> b!456458 m!723563))

(assert (=> b!456458 m!723561))

(declare-fun m!723565 () Bool)

(assert (=> b!456458 m!723565))

(declare-fun m!723567 () Bool)

(assert (=> b!456458 m!723567))

(assert (=> b!456458 m!723561))

(declare-fun m!723569 () Bool)

(assert (=> b!456458 m!723569))

(assert (=> b!456458 m!723567))

(assert (=> b!456458 m!723569))

(declare-fun m!723571 () Bool)

(assert (=> b!456458 m!723571))

(assert (=> bm!31614 m!723525))

(assert (=> d!174445 m!719143))

(declare-fun m!723573 () Bool)

(assert (=> d!174445 m!723573))

(declare-fun m!723575 () Bool)

(assert (=> d!174445 m!723575))

(assert (=> d!174445 m!723573))

(declare-fun m!723577 () Bool)

(assert (=> d!174445 m!723577))

(assert (=> d!174445 m!719143))

(declare-fun m!723579 () Bool)

(assert (=> d!174445 m!723579))

(assert (=> d!174445 m!719165))

(assert (=> d!174445 m!723573))

(assert (=> b!454621 d!174445))

(assert (=> b!454621 d!173901))

(declare-fun d!174447 () Bool)

(assert (=> d!174447 (dynLambda!2680 lambda!13301 (apply!1130 lt!202020 0))))

(declare-fun lt!203491 () Unit!7961)

(assert (=> d!174447 (= lt!203491 (choose!3431 (list!1963 lt!202020) lambda!13301 (apply!1130 lt!202020 0)))))

(declare-fun e!279321 () Bool)

(assert (=> d!174447 e!279321))

(declare-fun res!202977 () Bool)

(assert (=> d!174447 (=> (not res!202977) (not e!279321))))

(assert (=> d!174447 (= res!202977 (forall!1280 (list!1963 lt!202020) lambda!13301))))

(assert (=> d!174447 (= (forallContained!412 (list!1963 lt!202020) lambda!13301 (apply!1130 lt!202020 0)) lt!203491)))

(declare-fun b!456470 () Bool)

(assert (=> b!456470 (= e!279321 (contains!991 (list!1963 lt!202020) (apply!1130 lt!202020 0)))))

(assert (= (and d!174447 res!202977) b!456470))

(declare-fun b_lambda!18909 () Bool)

(assert (=> (not b_lambda!18909) (not d!174447)))

(assert (=> d!174447 m!719133))

(declare-fun m!723581 () Bool)

(assert (=> d!174447 m!723581))

(assert (=> d!174447 m!719143))

(assert (=> d!174447 m!719133))

(declare-fun m!723583 () Bool)

(assert (=> d!174447 m!723583))

(assert (=> d!174447 m!719143))

(declare-fun m!723585 () Bool)

(assert (=> d!174447 m!723585))

(assert (=> b!456470 m!719143))

(assert (=> b!456470 m!719133))

(declare-fun m!723587 () Bool)

(assert (=> b!456470 m!723587))

(assert (=> b!454621 d!174447))

(assert (=> b!454621 d!173613))

(declare-fun b!456471 () Bool)

(declare-fun e!279325 () List!4433)

(assert (=> b!456471 (= e!279325 lt!202283)))

(declare-fun bm!31615 () Bool)

(declare-fun call!31620 () Int)

(assert (=> bm!31615 (= call!31620 (size!3626 lt!202283))))

(declare-fun b!456472 () Bool)

(declare-fun e!279326 () List!4433)

(assert (=> b!456472 (= e!279326 Nil!4423)))

(declare-fun b!456473 () Bool)

(declare-fun e!279323 () Int)

(assert (=> b!456473 (= e!279323 call!31620)))

(declare-fun b!456474 () Bool)

(declare-fun e!279324 () Int)

(assert (=> b!456474 (= e!279324 0)))

(declare-fun b!456475 () Bool)

(assert (=> b!456475 (= e!279325 (drop!313 (t!71133 lt!202283) (- 0 1)))))

(declare-fun b!456476 () Bool)

(assert (=> b!456476 (= e!279323 e!279324)))

(declare-fun c!92252 () Bool)

(assert (=> b!456476 (= c!92252 (>= 0 call!31620))))

(declare-fun b!456477 () Bool)

(assert (=> b!456477 (= e!279326 e!279325)))

(declare-fun c!92250 () Bool)

(assert (=> b!456477 (= c!92250 (<= 0 0))))

(declare-fun b!456478 () Bool)

(declare-fun e!279322 () Bool)

(declare-fun lt!203492 () List!4433)

(assert (=> b!456478 (= e!279322 (= (size!3626 lt!203492) e!279323))))

(declare-fun c!92249 () Bool)

(assert (=> b!456478 (= c!92249 (<= 0 0))))

(declare-fun d!174449 () Bool)

(assert (=> d!174449 e!279322))

(declare-fun res!202978 () Bool)

(assert (=> d!174449 (=> (not res!202978) (not e!279322))))

(assert (=> d!174449 (= res!202978 (= ((_ map implies) (content!738 lt!203492) (content!738 lt!202283)) ((as const (InoxSet Token!1462)) true)))))

(assert (=> d!174449 (= lt!203492 e!279326)))

(declare-fun c!92251 () Bool)

(assert (=> d!174449 (= c!92251 ((_ is Nil!4423) lt!202283))))

(assert (=> d!174449 (= (drop!313 lt!202283 0) lt!203492)))

(declare-fun b!456479 () Bool)

(assert (=> b!456479 (= e!279324 (- call!31620 0))))

(assert (= (and d!174449 c!92251) b!456472))

(assert (= (and d!174449 (not c!92251)) b!456477))

(assert (= (and b!456477 c!92250) b!456471))

(assert (= (and b!456477 (not c!92250)) b!456475))

(assert (= (and d!174449 res!202978) b!456478))

(assert (= (and b!456478 c!92249) b!456473))

(assert (= (and b!456478 (not c!92249)) b!456476))

(assert (= (and b!456476 c!92252) b!456474))

(assert (= (and b!456476 (not c!92252)) b!456479))

(assert (= (or b!456473 b!456476 b!456479) bm!31615))

(declare-fun m!723589 () Bool)

(assert (=> bm!31615 m!723589))

(declare-fun m!723591 () Bool)

(assert (=> b!456475 m!723591))

(declare-fun m!723593 () Bool)

(assert (=> b!456478 m!723593))

(declare-fun m!723595 () Bool)

(assert (=> d!174449 m!723595))

(declare-fun m!723597 () Bool)

(assert (=> d!174449 m!723597))

(assert (=> b!454621 d!174449))

(declare-fun d!174451 () Bool)

(assert (=> d!174451 (= (head!1108 (drop!313 lt!202283 0)) (h!9820 (drop!313 lt!202283 0)))))

(assert (=> b!454621 d!174451))

(declare-fun b!456480 () Bool)

(declare-fun e!279327 () Bool)

(declare-fun e!279328 () Bool)

(assert (=> b!456480 (= e!279327 e!279328)))

(declare-fun res!202983 () Bool)

(assert (=> b!456480 (=> (not res!202983) (not e!279328))))

(declare-fun lt!203493 () Option!1151)

(assert (=> b!456480 (= res!202983 (= (_1!2902 (get!1620 lt!203493)) (_1!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284)))))))))

(declare-fun b!456481 () Bool)

(declare-fun e!279330 () Bool)

(assert (=> b!456481 (= e!279330 (= (list!1959 (_2!2902 (get!1620 lt!203493))) (_2!2901 (get!1618 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284)))))))))

(declare-fun b!456482 () Bool)

(assert (=> b!456482 (= e!279328 (= (list!1959 (_2!2902 (get!1620 lt!203493))) (_2!2901 (get!1618 (maxPrefix!461 thiss!17480 rules!1920 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284)))))))))

(declare-fun d!174453 () Bool)

(declare-fun e!279331 () Bool)

(assert (=> d!174453 e!279331))

(declare-fun res!202984 () Bool)

(assert (=> d!174453 (=> (not res!202984) (not e!279331))))

(assert (=> d!174453 (= res!202984 (= (isDefined!990 lt!203493) (isDefined!989 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284))))))))

(declare-fun e!279329 () Option!1151)

(assert (=> d!174453 (= lt!203493 e!279329)))

(declare-fun c!92253 () Bool)

(assert (=> d!174453 (= c!92253 (and ((_ is Cons!4422) rules!1920) ((_ is Nil!4422) (t!71132 rules!1920))))))

(declare-fun lt!203495 () Unit!7961)

(declare-fun lt!203499 () Unit!7961)

(assert (=> d!174453 (= lt!203495 lt!203499)))

(declare-fun lt!203494 () List!4431)

(declare-fun lt!203498 () List!4431)

(assert (=> d!174453 (isPrefix!513 lt!203494 lt!203498)))

(assert (=> d!174453 (= lt!203499 (lemmaIsPrefixRefl!287 lt!203494 lt!203498))))

(assert (=> d!174453 (= lt!203498 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284)))))

(assert (=> d!174453 (= lt!203494 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284)))))

(assert (=> d!174453 (rulesValidInductive!282 thiss!17480 rules!1920)))

(assert (=> d!174453 (= (maxPrefixZipperSequence!424 thiss!17480 rules!1920 (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284)) lt!203493)))

(declare-fun b!456483 () Bool)

(declare-fun call!31621 () Option!1151)

(assert (=> b!456483 (= e!279329 call!31621)))

(declare-fun bm!31616 () Bool)

(assert (=> bm!31616 (= call!31621 (maxPrefixOneRuleZipperSequence!191 thiss!17480 (h!9819 rules!1920) (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284)))))

(declare-fun b!456484 () Bool)

(declare-fun e!279332 () Bool)

(assert (=> b!456484 (= e!279332 e!279330)))

(declare-fun res!202980 () Bool)

(assert (=> b!456484 (=> (not res!202980) (not e!279330))))

(assert (=> b!456484 (= res!202980 (= (_1!2902 (get!1620 lt!203493)) (_1!2901 (get!1618 (maxPrefixZipper!190 thiss!17480 rules!1920 (list!1959 (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284)))))))))

(declare-fun b!456485 () Bool)

(declare-fun lt!203496 () Option!1151)

(declare-fun lt!203497 () Option!1151)

(assert (=> b!456485 (= e!279329 (ite (and ((_ is None!1150) lt!203496) ((_ is None!1150) lt!203497)) None!1150 (ite ((_ is None!1150) lt!203497) lt!203496 (ite ((_ is None!1150) lt!203496) lt!203497 (ite (>= (size!3619 (_1!2902 (v!15471 lt!203496))) (size!3619 (_1!2902 (v!15471 lt!203497)))) lt!203496 lt!203497)))))))

(assert (=> b!456485 (= lt!203496 call!31621)))

(assert (=> b!456485 (= lt!203497 (maxPrefixZipperSequence!424 thiss!17480 (t!71132 rules!1920) (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284)))))

(declare-fun b!456486 () Bool)

(declare-fun res!202981 () Bool)

(assert (=> b!456486 (=> (not res!202981) (not e!279331))))

(assert (=> b!456486 (= res!202981 e!279332)))

(declare-fun res!202982 () Bool)

(assert (=> b!456486 (=> res!202982 e!279332)))

(assert (=> b!456486 (= res!202982 (not (isDefined!990 lt!203493)))))

(declare-fun b!456487 () Bool)

(assert (=> b!456487 (= e!279331 e!279327)))

(declare-fun res!202979 () Bool)

(assert (=> b!456487 (=> res!202979 e!279327)))

(assert (=> b!456487 (= res!202979 (not (isDefined!990 lt!203493)))))

(assert (= (and d!174453 c!92253) b!456483))

(assert (= (and d!174453 (not c!92253)) b!456485))

(assert (= (or b!456483 b!456485) bm!31616))

(assert (= (and d!174453 res!202984) b!456486))

(assert (= (and b!456486 (not res!202982)) b!456484))

(assert (= (and b!456484 res!202980) b!456481))

(assert (= (and b!456486 res!202981) b!456487))

(assert (= (and b!456487 (not res!202979)) b!456480))

(assert (= (and b!456480 res!202983) b!456482))

(assert (=> b!456485 m!719151))

(declare-fun m!723599 () Bool)

(assert (=> b!456485 m!723599))

(assert (=> bm!31616 m!719151))

(declare-fun m!723601 () Bool)

(assert (=> bm!31616 m!723601))

(declare-fun m!723603 () Bool)

(assert (=> d!174453 m!723603))

(declare-fun m!723605 () Bool)

(assert (=> d!174453 m!723605))

(declare-fun m!723607 () Bool)

(assert (=> d!174453 m!723607))

(declare-fun m!723609 () Bool)

(assert (=> d!174453 m!723609))

(declare-fun m!723611 () Bool)

(assert (=> d!174453 m!723611))

(assert (=> d!174453 m!719151))

(assert (=> d!174453 m!723607))

(assert (=> d!174453 m!723609))

(declare-fun m!723613 () Bool)

(assert (=> d!174453 m!723613))

(assert (=> d!174453 m!718921))

(declare-fun m!723615 () Bool)

(assert (=> b!456480 m!723615))

(assert (=> b!456480 m!719151))

(assert (=> b!456480 m!723607))

(assert (=> b!456480 m!723607))

(declare-fun m!723617 () Bool)

(assert (=> b!456480 m!723617))

(assert (=> b!456480 m!723617))

(declare-fun m!723619 () Bool)

(assert (=> b!456480 m!723619))

(assert (=> b!456487 m!723603))

(assert (=> b!456482 m!723615))

(assert (=> b!456482 m!723617))

(assert (=> b!456482 m!723619))

(declare-fun m!723621 () Bool)

(assert (=> b!456482 m!723621))

(assert (=> b!456482 m!719151))

(assert (=> b!456482 m!723607))

(assert (=> b!456482 m!723607))

(assert (=> b!456482 m!723617))

(assert (=> b!456486 m!723603))

(assert (=> b!456484 m!723615))

(assert (=> b!456484 m!719151))

(assert (=> b!456484 m!723607))

(assert (=> b!456484 m!723607))

(assert (=> b!456484 m!723609))

(assert (=> b!456484 m!723609))

(declare-fun m!723623 () Bool)

(assert (=> b!456484 m!723623))

(assert (=> b!456481 m!723609))

(assert (=> b!456481 m!723623))

(assert (=> b!456481 m!723615))

(assert (=> b!456481 m!723607))

(assert (=> b!456481 m!723609))

(assert (=> b!456481 m!719151))

(assert (=> b!456481 m!723607))

(assert (=> b!456481 m!723621))

(assert (=> b!454621 d!174453))

(declare-fun d!174455 () Bool)

(declare-fun lt!203500 () BalanceConc!3088)

(assert (=> d!174455 (= (list!1959 lt!203500) (originalCharacters!902 (apply!1130 lt!202020 0)))))

(assert (=> d!174455 (= lt!203500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202020 0)))) (value!28797 (apply!1130 lt!202020 0))))))

(assert (=> d!174455 (= (charsOf!502 (apply!1130 lt!202020 0)) lt!203500)))

(declare-fun b_lambda!18911 () Bool)

(assert (=> (not b_lambda!18911) (not d!174455)))

(declare-fun t!71433 () Bool)

(declare-fun tb!45801 () Bool)

(assert (=> (and b!454224 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202020 0))))) t!71433) tb!45801))

(declare-fun b!456488 () Bool)

(declare-fun e!279333 () Bool)

(declare-fun tp!126465 () Bool)

(assert (=> b!456488 (= e!279333 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202020 0)))) (value!28797 (apply!1130 lt!202020 0))))) tp!126465))))

(declare-fun result!50400 () Bool)

(assert (=> tb!45801 (= result!50400 (and (inv!5500 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202020 0)))) (value!28797 (apply!1130 lt!202020 0)))) e!279333))))

(assert (= tb!45801 b!456488))

(declare-fun m!723625 () Bool)

(assert (=> b!456488 m!723625))

(declare-fun m!723627 () Bool)

(assert (=> tb!45801 m!723627))

(assert (=> d!174455 t!71433))

(declare-fun b_and!49101 () Bool)

(assert (= b_and!49073 (and (=> t!71433 result!50400) b_and!49101)))

(declare-fun t!71435 () Bool)

(declare-fun tb!45803 () Bool)

(assert (=> (and b!454228 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202020 0))))) t!71435) tb!45803))

(declare-fun result!50402 () Bool)

(assert (= result!50402 result!50400))

(assert (=> d!174455 t!71435))

(declare-fun b_and!49103 () Bool)

(assert (= b_and!49079 (and (=> t!71435 result!50402) b_and!49103)))

(declare-fun t!71437 () Bool)

(declare-fun tb!45805 () Bool)

(assert (=> (and b!454206 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202020 0))))) t!71437) tb!45805))

(declare-fun result!50404 () Bool)

(assert (= result!50404 result!50400))

(assert (=> d!174455 t!71437))

(declare-fun b_and!49105 () Bool)

(assert (= b_and!49071 (and (=> t!71437 result!50404) b_and!49105)))

(declare-fun t!71439 () Bool)

(declare-fun tb!45807 () Bool)

(assert (=> (and b!455002 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202020 0))))) t!71439) tb!45807))

(declare-fun result!50406 () Bool)

(assert (= result!50406 result!50400))

(assert (=> d!174455 t!71439))

(declare-fun b_and!49107 () Bool)

(assert (= b_and!49075 (and (=> t!71439 result!50406) b_and!49107)))

(declare-fun tb!45809 () Bool)

(declare-fun t!71441 () Bool)

(assert (=> (and b!455013 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202020 0))))) t!71441) tb!45809))

(declare-fun result!50408 () Bool)

(assert (= result!50408 result!50400))

(assert (=> d!174455 t!71441))

(declare-fun b_and!49109 () Bool)

(assert (= b_and!49077 (and (=> t!71441 result!50408) b_and!49109)))

(declare-fun m!723629 () Bool)

(assert (=> d!174455 m!723629))

(declare-fun m!723631 () Bool)

(assert (=> d!174455 m!723631))

(assert (=> b!454621 d!174455))

(declare-fun d!174457 () Bool)

(assert (=> d!174457 (= (tail!636 (drop!313 lt!202282 0)) (drop!313 lt!202282 (+ 0 1)))))

(declare-fun lt!203501 () Unit!7961)

(assert (=> d!174457 (= lt!203501 (choose!3434 lt!202282 0))))

(declare-fun e!279334 () Bool)

(assert (=> d!174457 e!279334))

(declare-fun res!202985 () Bool)

(assert (=> d!174457 (=> (not res!202985) (not e!279334))))

(assert (=> d!174457 (= res!202985 (>= 0 0))))

(assert (=> d!174457 (= (lemmaDropTail!276 lt!202282 0) lt!203501)))

(declare-fun b!456489 () Bool)

(assert (=> b!456489 (= e!279334 (< 0 (size!3626 lt!202282)))))

(assert (= (and d!174457 res!202985) b!456489))

(assert (=> d!174457 m!719161))

(assert (=> d!174457 m!719161))

(assert (=> d!174457 m!719163))

(assert (=> d!174457 m!719137))

(declare-fun m!723633 () Bool)

(assert (=> d!174457 m!723633))

(declare-fun m!723635 () Bool)

(assert (=> b!456489 m!723635))

(assert (=> b!454621 d!174457))

(declare-fun d!174459 () Bool)

(assert (=> d!174459 (= (head!1108 (drop!313 lt!202283 0)) (apply!1131 lt!202283 0))))

(declare-fun lt!203502 () Unit!7961)

(assert (=> d!174459 (= lt!203502 (choose!3432 lt!202283 0))))

(declare-fun e!279335 () Bool)

(assert (=> d!174459 e!279335))

(declare-fun res!202986 () Bool)

(assert (=> d!174459 (=> (not res!202986) (not e!279335))))

(assert (=> d!174459 (= res!202986 (>= 0 0))))

(assert (=> d!174459 (= (lemmaDropApply!284 lt!202283 0) lt!203502)))

(declare-fun b!456490 () Bool)

(assert (=> b!456490 (= e!279335 (< 0 (size!3626 lt!202283)))))

(assert (= (and d!174459 res!202986) b!456490))

(assert (=> d!174459 m!719139))

(assert (=> d!174459 m!719139))

(assert (=> d!174459 m!719147))

(assert (=> d!174459 m!719149))

(declare-fun m!723637 () Bool)

(assert (=> d!174459 m!723637))

(assert (=> b!456490 m!723589))

(assert (=> b!454621 d!174459))

(declare-fun b!456491 () Bool)

(declare-fun e!279339 () List!4433)

(assert (=> b!456491 (= e!279339 lt!202282)))

(declare-fun bm!31617 () Bool)

(declare-fun call!31622 () Int)

(assert (=> bm!31617 (= call!31622 (size!3626 lt!202282))))

(declare-fun b!456492 () Bool)

(declare-fun e!279340 () List!4433)

(assert (=> b!456492 (= e!279340 Nil!4423)))

(declare-fun b!456493 () Bool)

(declare-fun e!279337 () Int)

(assert (=> b!456493 (= e!279337 call!31622)))

(declare-fun b!456494 () Bool)

(declare-fun e!279338 () Int)

(assert (=> b!456494 (= e!279338 0)))

(declare-fun b!456495 () Bool)

(assert (=> b!456495 (= e!279339 (drop!313 (t!71133 lt!202282) (- 0 1)))))

(declare-fun b!456496 () Bool)

(assert (=> b!456496 (= e!279337 e!279338)))

(declare-fun c!92257 () Bool)

(assert (=> b!456496 (= c!92257 (>= 0 call!31622))))

(declare-fun b!456497 () Bool)

(assert (=> b!456497 (= e!279340 e!279339)))

(declare-fun c!92255 () Bool)

(assert (=> b!456497 (= c!92255 (<= 0 0))))

(declare-fun b!456498 () Bool)

(declare-fun e!279336 () Bool)

(declare-fun lt!203503 () List!4433)

(assert (=> b!456498 (= e!279336 (= (size!3626 lt!203503) e!279337))))

(declare-fun c!92254 () Bool)

(assert (=> b!456498 (= c!92254 (<= 0 0))))

(declare-fun d!174461 () Bool)

(assert (=> d!174461 e!279336))

(declare-fun res!202987 () Bool)

(assert (=> d!174461 (=> (not res!202987) (not e!279336))))

(assert (=> d!174461 (= res!202987 (= ((_ map implies) (content!738 lt!203503) (content!738 lt!202282)) ((as const (InoxSet Token!1462)) true)))))

(assert (=> d!174461 (= lt!203503 e!279340)))

(declare-fun c!92256 () Bool)

(assert (=> d!174461 (= c!92256 ((_ is Nil!4423) lt!202282))))

(assert (=> d!174461 (= (drop!313 lt!202282 0) lt!203503)))

(declare-fun b!456499 () Bool)

(assert (=> b!456499 (= e!279338 (- call!31622 0))))

(assert (= (and d!174461 c!92256) b!456492))

(assert (= (and d!174461 (not c!92256)) b!456497))

(assert (= (and b!456497 c!92255) b!456491))

(assert (= (and b!456497 (not c!92255)) b!456495))

(assert (= (and d!174461 res!202987) b!456498))

(assert (= (and b!456498 c!92254) b!456493))

(assert (= (and b!456498 (not c!92254)) b!456496))

(assert (= (and b!456496 c!92257) b!456494))

(assert (= (and b!456496 (not c!92257)) b!456499))

(assert (= (or b!456493 b!456496 b!456499) bm!31617))

(assert (=> bm!31617 m!723635))

(declare-fun m!723639 () Bool)

(assert (=> b!456495 m!723639))

(declare-fun m!723641 () Bool)

(assert (=> b!456498 m!723641))

(declare-fun m!723643 () Bool)

(assert (=> d!174461 m!723643))

(declare-fun m!723645 () Bool)

(assert (=> d!174461 m!723645))

(assert (=> b!454621 d!174461))

(declare-fun b!456500 () Bool)

(declare-fun e!279344 () List!4433)

(assert (=> b!456500 (= e!279344 lt!202282)))

(declare-fun bm!31618 () Bool)

(declare-fun call!31623 () Int)

(assert (=> bm!31618 (= call!31623 (size!3626 lt!202282))))

(declare-fun b!456501 () Bool)

(declare-fun e!279345 () List!4433)

(assert (=> b!456501 (= e!279345 Nil!4423)))

(declare-fun b!456502 () Bool)

(declare-fun e!279342 () Int)

(assert (=> b!456502 (= e!279342 call!31623)))

(declare-fun b!456503 () Bool)

(declare-fun e!279343 () Int)

(assert (=> b!456503 (= e!279343 0)))

(declare-fun b!456504 () Bool)

(assert (=> b!456504 (= e!279344 (drop!313 (t!71133 lt!202282) (- (+ 0 1) 1)))))

(declare-fun b!456505 () Bool)

(assert (=> b!456505 (= e!279342 e!279343)))

(declare-fun c!92261 () Bool)

(assert (=> b!456505 (= c!92261 (>= (+ 0 1) call!31623))))

(declare-fun b!456506 () Bool)

(assert (=> b!456506 (= e!279345 e!279344)))

(declare-fun c!92259 () Bool)

(assert (=> b!456506 (= c!92259 (<= (+ 0 1) 0))))

(declare-fun b!456507 () Bool)

(declare-fun e!279341 () Bool)

(declare-fun lt!203504 () List!4433)

(assert (=> b!456507 (= e!279341 (= (size!3626 lt!203504) e!279342))))

(declare-fun c!92258 () Bool)

(assert (=> b!456507 (= c!92258 (<= (+ 0 1) 0))))

(declare-fun d!174463 () Bool)

(assert (=> d!174463 e!279341))

(declare-fun res!202988 () Bool)

(assert (=> d!174463 (=> (not res!202988) (not e!279341))))

(assert (=> d!174463 (= res!202988 (= ((_ map implies) (content!738 lt!203504) (content!738 lt!202282)) ((as const (InoxSet Token!1462)) true)))))

(assert (=> d!174463 (= lt!203504 e!279345)))

(declare-fun c!92260 () Bool)

(assert (=> d!174463 (= c!92260 ((_ is Nil!4423) lt!202282))))

(assert (=> d!174463 (= (drop!313 lt!202282 (+ 0 1)) lt!203504)))

(declare-fun b!456508 () Bool)

(assert (=> b!456508 (= e!279343 (- call!31623 (+ 0 1)))))

(assert (= (and d!174463 c!92260) b!456501))

(assert (= (and d!174463 (not c!92260)) b!456506))

(assert (= (and b!456506 c!92259) b!456500))

(assert (= (and b!456506 (not c!92259)) b!456504))

(assert (= (and d!174463 res!202988) b!456507))

(assert (= (and b!456507 c!92258) b!456502))

(assert (= (and b!456507 (not c!92258)) b!456505))

(assert (= (and b!456505 c!92261) b!456503))

(assert (= (and b!456505 (not c!92261)) b!456508))

(assert (= (or b!456502 b!456505 b!456508) bm!31618))

(assert (=> bm!31618 m!723635))

(declare-fun m!723647 () Bool)

(assert (=> b!456504 m!723647))

(declare-fun m!723649 () Bool)

(assert (=> b!456507 m!723649))

(declare-fun m!723651 () Bool)

(assert (=> d!174463 m!723651))

(assert (=> d!174463 m!723645))

(assert (=> b!454621 d!174463))

(declare-fun d!174465 () Bool)

(declare-fun lt!203505 () Token!1462)

(assert (=> d!174465 (contains!991 lt!202283 lt!203505)))

(declare-fun e!279346 () Token!1462)

(assert (=> d!174465 (= lt!203505 e!279346)))

(declare-fun c!92262 () Bool)

(assert (=> d!174465 (= c!92262 (= 0 0))))

(declare-fun e!279347 () Bool)

(assert (=> d!174465 e!279347))

(declare-fun res!202989 () Bool)

(assert (=> d!174465 (=> (not res!202989) (not e!279347))))

(assert (=> d!174465 (= res!202989 (<= 0 0))))

(assert (=> d!174465 (= (apply!1131 lt!202283 0) lt!203505)))

(declare-fun b!456509 () Bool)

(assert (=> b!456509 (= e!279347 (< 0 (size!3626 lt!202283)))))

(declare-fun b!456510 () Bool)

(assert (=> b!456510 (= e!279346 (head!1108 lt!202283))))

(declare-fun b!456511 () Bool)

(assert (=> b!456511 (= e!279346 (apply!1131 (tail!636 lt!202283) (- 0 1)))))

(assert (= (and d!174465 res!202989) b!456509))

(assert (= (and d!174465 c!92262) b!456510))

(assert (= (and d!174465 (not c!92262)) b!456511))

(declare-fun m!723653 () Bool)

(assert (=> d!174465 m!723653))

(assert (=> b!456509 m!723589))

(declare-fun m!723655 () Bool)

(assert (=> b!456510 m!723655))

(declare-fun m!723657 () Bool)

(assert (=> b!456511 m!723657))

(assert (=> b!456511 m!723657))

(declare-fun m!723659 () Bool)

(assert (=> b!456511 m!723659))

(assert (=> b!454621 d!174465))

(declare-fun b!456515 () Bool)

(declare-fun e!279348 () Bool)

(declare-fun lt!203506 () BalanceConc!3088)

(assert (=> b!456515 (= e!279348 (= (list!1959 lt!203506) (++!1284 (list!1959 (charsOf!502 (apply!1130 lt!202020 0))) (list!1959 lt!202284))))))

(declare-fun b!456513 () Bool)

(declare-fun res!202990 () Bool)

(assert (=> b!456513 (=> (not res!202990) (not e!279348))))

(assert (=> b!456513 (= res!202990 (<= (height!233 (++!1287 (c!91744 (charsOf!502 (apply!1130 lt!202020 0))) (c!91744 lt!202284))) (+ (max!0 (height!233 (c!91744 (charsOf!502 (apply!1130 lt!202020 0)))) (height!233 (c!91744 lt!202284))) 1)))))

(declare-fun d!174467 () Bool)

(assert (=> d!174467 e!279348))

(declare-fun res!202992 () Bool)

(assert (=> d!174467 (=> (not res!202992) (not e!279348))))

(assert (=> d!174467 (= res!202992 (appendAssocInst!102 (c!91744 (charsOf!502 (apply!1130 lt!202020 0))) (c!91744 lt!202284)))))

(assert (=> d!174467 (= lt!203506 (BalanceConc!3089 (++!1287 (c!91744 (charsOf!502 (apply!1130 lt!202020 0))) (c!91744 lt!202284))))))

(assert (=> d!174467 (= (++!1286 (charsOf!502 (apply!1130 lt!202020 0)) lt!202284) lt!203506)))

(declare-fun b!456514 () Bool)

(declare-fun res!202993 () Bool)

(assert (=> b!456514 (=> (not res!202993) (not e!279348))))

(assert (=> b!456514 (= res!202993 (>= (height!233 (++!1287 (c!91744 (charsOf!502 (apply!1130 lt!202020 0))) (c!91744 lt!202284))) (max!0 (height!233 (c!91744 (charsOf!502 (apply!1130 lt!202020 0)))) (height!233 (c!91744 lt!202284)))))))

(declare-fun b!456512 () Bool)

(declare-fun res!202991 () Bool)

(assert (=> b!456512 (=> (not res!202991) (not e!279348))))

(assert (=> b!456512 (= res!202991 (isBalanced!472 (++!1287 (c!91744 (charsOf!502 (apply!1130 lt!202020 0))) (c!91744 lt!202284))))))

(assert (= (and d!174467 res!202992) b!456512))

(assert (= (and b!456512 res!202991) b!456513))

(assert (= (and b!456513 res!202990) b!456514))

(assert (= (and b!456514 res!202993) b!456515))

(declare-fun m!723661 () Bool)

(assert (=> b!456513 m!723661))

(assert (=> b!456513 m!721781))

(declare-fun m!723663 () Bool)

(assert (=> b!456513 m!723663))

(declare-fun m!723665 () Bool)

(assert (=> b!456513 m!723665))

(declare-fun m!723667 () Bool)

(assert (=> b!456513 m!723667))

(assert (=> b!456513 m!723661))

(assert (=> b!456513 m!723665))

(assert (=> b!456513 m!721781))

(declare-fun m!723669 () Bool)

(assert (=> b!456515 m!723669))

(assert (=> b!456515 m!719141))

(declare-fun m!723671 () Bool)

(assert (=> b!456515 m!723671))

(assert (=> b!456515 m!719181))

(assert (=> b!456515 m!723671))

(assert (=> b!456515 m!719181))

(declare-fun m!723673 () Bool)

(assert (=> b!456515 m!723673))

(assert (=> b!456512 m!723665))

(assert (=> b!456512 m!723665))

(declare-fun m!723675 () Bool)

(assert (=> b!456512 m!723675))

(assert (=> b!456514 m!723661))

(assert (=> b!456514 m!721781))

(assert (=> b!456514 m!723663))

(assert (=> b!456514 m!723665))

(assert (=> b!456514 m!723667))

(assert (=> b!456514 m!723661))

(assert (=> b!456514 m!723665))

(assert (=> b!456514 m!721781))

(declare-fun m!723677 () Bool)

(assert (=> d!174467 m!723677))

(assert (=> d!174467 m!723665))

(assert (=> b!454621 d!174467))

(declare-fun d!174469 () Bool)

(assert (=> d!174469 (= (inv!17 (value!28797 separatorToken!170)) (= (charsToBigInt!1 (text!6615 (value!28797 separatorToken!170))) (value!28789 (value!28797 separatorToken!170))))))

(declare-fun bs!56642 () Bool)

(assert (= bs!56642 d!174469))

(declare-fun m!723679 () Bool)

(assert (=> bs!56642 m!723679))

(assert (=> b!454503 d!174469))

(declare-fun b!456516 () Bool)

(declare-fun e!279354 () Bool)

(assert (=> b!456516 (= e!279354 (= (head!1109 (tail!637 lt!202023)) (c!91745 (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023)))))))

(declare-fun b!456517 () Bool)

(declare-fun e!279349 () Bool)

(assert (=> b!456517 (= e!279349 (nullable!243 (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023))))))

(declare-fun b!456518 () Bool)

(declare-fun res!202997 () Bool)

(declare-fun e!279352 () Bool)

(assert (=> b!456518 (=> res!202997 e!279352)))

(assert (=> b!456518 (= res!202997 e!279354)))

(declare-fun res!203001 () Bool)

(assert (=> b!456518 (=> (not res!203001) (not e!279354))))

(declare-fun lt!203507 () Bool)

(assert (=> b!456518 (= res!203001 lt!203507)))

(declare-fun b!456519 () Bool)

(declare-fun res!202994 () Bool)

(assert (=> b!456519 (=> (not res!202994) (not e!279354))))

(assert (=> b!456519 (= res!202994 (isEmpty!3386 (tail!637 (tail!637 lt!202023))))))

(declare-fun b!456520 () Bool)

(declare-fun e!279355 () Bool)

(assert (=> b!456520 (= e!279355 (not lt!203507))))

(declare-fun b!456521 () Bool)

(declare-fun res!202996 () Bool)

(declare-fun e!279353 () Bool)

(assert (=> b!456521 (=> res!202996 e!279353)))

(assert (=> b!456521 (= res!202996 (not (isEmpty!3386 (tail!637 (tail!637 lt!202023)))))))

(declare-fun b!456522 () Bool)

(assert (=> b!456522 (= e!279353 (not (= (head!1109 (tail!637 lt!202023)) (c!91745 (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023))))))))

(declare-fun b!456523 () Bool)

(declare-fun e!279350 () Bool)

(assert (=> b!456523 (= e!279350 e!279355)))

(declare-fun c!92263 () Bool)

(assert (=> b!456523 (= c!92263 ((_ is EmptyLang!1083) (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023))))))

(declare-fun b!456524 () Bool)

(declare-fun call!31624 () Bool)

(assert (=> b!456524 (= e!279350 (= lt!203507 call!31624))))

(declare-fun b!456526 () Bool)

(declare-fun e!279351 () Bool)

(assert (=> b!456526 (= e!279351 e!279353)))

(declare-fun res!202999 () Bool)

(assert (=> b!456526 (=> res!202999 e!279353)))

(assert (=> b!456526 (= res!202999 call!31624)))

(declare-fun b!456527 () Bool)

(assert (=> b!456527 (= e!279352 e!279351)))

(declare-fun res!202998 () Bool)

(assert (=> b!456527 (=> (not res!202998) (not e!279351))))

(assert (=> b!456527 (= res!202998 (not lt!203507))))

(declare-fun b!456528 () Bool)

(declare-fun res!202995 () Bool)

(assert (=> b!456528 (=> res!202995 e!279352)))

(assert (=> b!456528 (= res!202995 (not ((_ is ElementMatch!1083) (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023)))))))

(assert (=> b!456528 (= e!279355 e!279352)))

(declare-fun b!456525 () Bool)

(declare-fun res!203000 () Bool)

(assert (=> b!456525 (=> (not res!203000) (not e!279354))))

(assert (=> b!456525 (= res!203000 (not call!31624))))

(declare-fun d!174471 () Bool)

(assert (=> d!174471 e!279350))

(declare-fun c!92264 () Bool)

(assert (=> d!174471 (= c!92264 ((_ is EmptyExpr!1083) (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023))))))

(assert (=> d!174471 (= lt!203507 e!279349)))

(declare-fun c!92265 () Bool)

(assert (=> d!174471 (= c!92265 (isEmpty!3386 (tail!637 lt!202023)))))

(assert (=> d!174471 (validRegex!318 (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023)))))

(assert (=> d!174471 (= (matchR!401 (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023)) (tail!637 lt!202023)) lt!203507)))

(declare-fun b!456529 () Bool)

(assert (=> b!456529 (= e!279349 (matchR!401 (derivativeStep!210 (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023)) (head!1109 (tail!637 lt!202023))) (tail!637 (tail!637 lt!202023))))))

(declare-fun bm!31619 () Bool)

(assert (=> bm!31619 (= call!31624 (isEmpty!3386 (tail!637 lt!202023)))))

(assert (= (and d!174471 c!92265) b!456517))

(assert (= (and d!174471 (not c!92265)) b!456529))

(assert (= (and d!174471 c!92264) b!456524))

(assert (= (and d!174471 (not c!92264)) b!456523))

(assert (= (and b!456523 c!92263) b!456520))

(assert (= (and b!456523 (not c!92263)) b!456528))

(assert (= (and b!456528 (not res!202995)) b!456518))

(assert (= (and b!456518 res!203001) b!456525))

(assert (= (and b!456525 res!203000) b!456519))

(assert (= (and b!456519 res!202994) b!456516))

(assert (= (and b!456518 (not res!202997)) b!456527))

(assert (= (and b!456527 res!202998) b!456526))

(assert (= (and b!456526 (not res!202999)) b!456521))

(assert (= (and b!456521 (not res!202996)) b!456522))

(assert (= (or b!456524 b!456525 b!456526) bm!31619))

(assert (=> b!456522 m!719611))

(declare-fun m!723681 () Bool)

(assert (=> b!456522 m!723681))

(assert (=> b!456516 m!719611))

(assert (=> b!456516 m!723681))

(assert (=> b!456517 m!719609))

(declare-fun m!723683 () Bool)

(assert (=> b!456517 m!723683))

(assert (=> b!456529 m!719611))

(assert (=> b!456529 m!723681))

(assert (=> b!456529 m!719609))

(assert (=> b!456529 m!723681))

(declare-fun m!723685 () Bool)

(assert (=> b!456529 m!723685))

(assert (=> b!456529 m!719611))

(declare-fun m!723687 () Bool)

(assert (=> b!456529 m!723687))

(assert (=> b!456529 m!723685))

(assert (=> b!456529 m!723687))

(declare-fun m!723689 () Bool)

(assert (=> b!456529 m!723689))

(assert (=> d!174471 m!719611))

(assert (=> d!174471 m!719619))

(assert (=> d!174471 m!719609))

(declare-fun m!723691 () Bool)

(assert (=> d!174471 m!723691))

(assert (=> b!456521 m!719611))

(assert (=> b!456521 m!723687))

(assert (=> b!456521 m!723687))

(declare-fun m!723693 () Bool)

(assert (=> b!456521 m!723693))

(assert (=> bm!31619 m!719611))

(assert (=> bm!31619 m!719619))

(assert (=> b!456519 m!719611))

(assert (=> b!456519 m!723687))

(assert (=> b!456519 m!723687))

(assert (=> b!456519 m!723693))

(assert (=> b!454941 d!174471))

(declare-fun b!456550 () Bool)

(declare-fun c!92277 () Bool)

(assert (=> b!456550 (= c!92277 ((_ is Union!1083) (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(declare-fun e!279369 () Regex!1083)

(declare-fun e!279367 () Regex!1083)

(assert (=> b!456550 (= e!279369 e!279367)))

(declare-fun bm!31628 () Bool)

(declare-fun c!92280 () Bool)

(declare-fun call!31636 () Regex!1083)

(assert (=> bm!31628 (= call!31636 (derivativeStep!210 (ite c!92277 (regTwo!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))) (ite c!92280 (reg!1412 (regex!859 (rule!1550 (h!9820 tokens!465)))) (regOne!2678 (regex!859 (rule!1550 (h!9820 tokens!465)))))) (head!1109 lt!202023)))))

(declare-fun b!456551 () Bool)

(declare-fun e!279366 () Regex!1083)

(declare-fun call!31633 () Regex!1083)

(assert (=> b!456551 (= e!279366 (Union!1083 (Concat!1965 call!31633 (regTwo!2678 (regex!859 (rule!1550 (h!9820 tokens!465))))) EmptyLang!1083))))

(declare-fun b!456552 () Bool)

(declare-fun e!279370 () Regex!1083)

(assert (=> b!456552 (= e!279367 e!279370)))

(assert (=> b!456552 (= c!92280 ((_ is Star!1083) (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(declare-fun b!456553 () Bool)

(assert (=> b!456553 (= e!279369 (ite (= (head!1109 lt!202023) (c!91745 (regex!859 (rule!1550 (h!9820 tokens!465))))) EmptyExpr!1083 EmptyLang!1083))))

(declare-fun d!174473 () Bool)

(declare-fun lt!203510 () Regex!1083)

(assert (=> d!174473 (validRegex!318 lt!203510)))

(declare-fun e!279368 () Regex!1083)

(assert (=> d!174473 (= lt!203510 e!279368)))

(declare-fun c!92276 () Bool)

(assert (=> d!174473 (= c!92276 (or ((_ is EmptyExpr!1083) (regex!859 (rule!1550 (h!9820 tokens!465)))) ((_ is EmptyLang!1083) (regex!859 (rule!1550 (h!9820 tokens!465))))))))

(assert (=> d!174473 (validRegex!318 (regex!859 (rule!1550 (h!9820 tokens!465))))))

(assert (=> d!174473 (= (derivativeStep!210 (regex!859 (rule!1550 (h!9820 tokens!465))) (head!1109 lt!202023)) lt!203510)))

(declare-fun bm!31629 () Bool)

(declare-fun call!31634 () Regex!1083)

(assert (=> bm!31629 (= call!31634 call!31636)))

(declare-fun b!456554 () Bool)

(declare-fun c!92278 () Bool)

(assert (=> b!456554 (= c!92278 (nullable!243 (regOne!2678 (regex!859 (rule!1550 (h!9820 tokens!465))))))))

(assert (=> b!456554 (= e!279370 e!279366)))

(declare-fun call!31635 () Regex!1083)

(declare-fun b!456555 () Bool)

(assert (=> b!456555 (= e!279366 (Union!1083 (Concat!1965 call!31633 (regTwo!2678 (regex!859 (rule!1550 (h!9820 tokens!465))))) call!31635))))

(declare-fun b!456556 () Bool)

(assert (=> b!456556 (= e!279368 EmptyLang!1083)))

(declare-fun b!456557 () Bool)

(assert (=> b!456557 (= e!279370 (Concat!1965 call!31634 (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(declare-fun b!456558 () Bool)

(assert (=> b!456558 (= e!279367 (Union!1083 call!31635 call!31636))))

(declare-fun bm!31630 () Bool)

(assert (=> bm!31630 (= call!31633 call!31634)))

(declare-fun b!456559 () Bool)

(assert (=> b!456559 (= e!279368 e!279369)))

(declare-fun c!92279 () Bool)

(assert (=> b!456559 (= c!92279 ((_ is ElementMatch!1083) (regex!859 (rule!1550 (h!9820 tokens!465)))))))

(declare-fun bm!31631 () Bool)

(assert (=> bm!31631 (= call!31635 (derivativeStep!210 (ite c!92277 (regOne!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))) (regTwo!2678 (regex!859 (rule!1550 (h!9820 tokens!465))))) (head!1109 lt!202023)))))

(assert (= (and d!174473 c!92276) b!456556))

(assert (= (and d!174473 (not c!92276)) b!456559))

(assert (= (and b!456559 c!92279) b!456553))

(assert (= (and b!456559 (not c!92279)) b!456550))

(assert (= (and b!456550 c!92277) b!456558))

(assert (= (and b!456550 (not c!92277)) b!456552))

(assert (= (and b!456552 c!92280) b!456557))

(assert (= (and b!456552 (not c!92280)) b!456554))

(assert (= (and b!456554 c!92278) b!456555))

(assert (= (and b!456554 (not c!92278)) b!456551))

(assert (= (or b!456555 b!456551) bm!31630))

(assert (= (or b!456557 bm!31630) bm!31629))

(assert (= (or b!456558 bm!31629) bm!31628))

(assert (= (or b!456558 b!456555) bm!31631))

(assert (=> bm!31628 m!719605))

(declare-fun m!723695 () Bool)

(assert (=> bm!31628 m!723695))

(declare-fun m!723697 () Bool)

(assert (=> d!174473 m!723697))

(assert (=> d!174473 m!719617))

(declare-fun m!723699 () Bool)

(assert (=> b!456554 m!723699))

(assert (=> bm!31631 m!719605))

(declare-fun m!723701 () Bool)

(assert (=> bm!31631 m!723701))

(assert (=> b!454941 d!174473))

(assert (=> b!454941 d!173711))

(assert (=> b!454941 d!173507))

(declare-fun d!174475 () Bool)

(declare-fun e!279371 () Bool)

(assert (=> d!174475 e!279371))

(declare-fun res!203002 () Bool)

(assert (=> d!174475 (=> (not res!203002) (not e!279371))))

(declare-fun lt!203511 () BalanceConc!3088)

(assert (=> d!174475 (= res!203002 (= (list!1959 lt!203511) lt!202023))))

(assert (=> d!174475 (= lt!203511 (BalanceConc!3089 (fromList!257 lt!202023)))))

(assert (=> d!174475 (= (fromListB!482 lt!202023) lt!203511)))

(declare-fun b!456560 () Bool)

(assert (=> b!456560 (= e!279371 (isBalanced!472 (fromList!257 lt!202023)))))

(assert (= (and d!174475 res!203002) b!456560))

(declare-fun m!723703 () Bool)

(assert (=> d!174475 m!723703))

(declare-fun m!723705 () Bool)

(assert (=> d!174475 m!723705))

(assert (=> b!456560 m!723705))

(assert (=> b!456560 m!723705))

(declare-fun m!723707 () Bool)

(assert (=> b!456560 m!723707))

(assert (=> d!173397 d!174475))

(assert (=> b!454364 d!174057))

(declare-fun d!174477 () Bool)

(assert (=> d!174477 (= (isEmpty!3386 (originalCharacters!902 separatorToken!170)) ((_ is Nil!4421) (originalCharacters!902 separatorToken!170)))))

(assert (=> d!173349 d!174477))

(declare-fun bs!56671 () Bool)

(declare-fun b!456648 () Bool)

(assert (= bs!56671 (and b!456648 d!173561)))

(declare-fun lambda!13371 () Int)

(assert (=> bs!56671 (= (and (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) (= (toValue!1674 (transformation!859 (h!9819 rules!1920))) (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465)))))) (= lambda!13371 lambda!13318))))

(declare-fun bs!56672 () Bool)

(assert (= bs!56672 (and b!456648 d!173835)))

(assert (=> bs!56672 (= (and (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170)))) (= (toValue!1674 (transformation!859 (h!9819 rules!1920))) (toValue!1674 (transformation!859 (rule!1550 separatorToken!170))))) (= lambda!13371 lambda!13330))))

(declare-fun bs!56673 () Bool)

(assert (= bs!56673 (and b!456648 d!174299)))

(assert (=> bs!56673 (= lambda!13371 lambda!13360)))

(declare-fun b!456661 () Bool)

(declare-fun e!279442 () Bool)

(assert (=> b!456661 (= e!279442 true)))

(declare-fun b!456660 () Bool)

(declare-fun e!279441 () Bool)

(assert (=> b!456660 (= e!279441 e!279442)))

(assert (=> b!456648 e!279441))

(assert (= b!456660 b!456661))

(assert (= b!456648 b!456660))

(assert (=> b!456661 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2681 order!3911 lambda!13371))))

(assert (=> b!456661 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 rules!1920)))) (dynLambda!2681 order!3911 lambda!13371))))

(declare-fun e!279435 () Option!1151)

(declare-datatypes ((tuple2!5386 0))(
  ( (tuple2!5387 (_1!2909 BalanceConc!3088) (_2!2909 BalanceConc!3088)) )
))
(declare-fun lt!203561 () tuple2!5386)

(assert (=> b!456648 (= e!279435 (Some!1150 (tuple2!5373 (Token!1463 (apply!1132 (transformation!859 (h!9819 rules!1920)) (_1!2909 lt!203561)) (h!9819 rules!1920) (size!3625 (_1!2909 lt!203561)) (list!1959 (_1!2909 lt!203561))) (_2!2909 lt!203561))))))

(declare-fun lt!203556 () List!4431)

(assert (=> b!456648 (= lt!203556 (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(declare-fun lt!203558 () Unit!7961)

(assert (=> b!456648 (= lt!203558 (longestMatchIsAcceptedByMatchOrIsEmpty!98 (regex!859 (h!9819 rules!1920)) lt!203556))))

(declare-fun res!203061 () Bool)

(assert (=> b!456648 (= res!203061 (isEmpty!3386 (_1!2908 (findLongestMatchInner!114 (regex!859 (h!9819 rules!1920)) Nil!4421 (size!3623 Nil!4421) lt!203556 lt!203556 (size!3623 lt!203556)))))))

(declare-fun e!279434 () Bool)

(assert (=> b!456648 (=> res!203061 e!279434)))

(assert (=> b!456648 e!279434))

(declare-fun lt!203562 () Unit!7961)

(assert (=> b!456648 (= lt!203562 lt!203558)))

(declare-fun lt!203555 () Unit!7961)

(declare-fun lemmaInv!76 (TokenValueInjection!1534) Unit!7961)

(assert (=> b!456648 (= lt!203555 (lemmaInv!76 (transformation!859 (h!9819 rules!1920))))))

(declare-fun lt!203557 () Unit!7961)

(declare-fun ForallOf!73 (Int BalanceConc!3088) Unit!7961)

(assert (=> b!456648 (= lt!203557 (ForallOf!73 lambda!13371 (_1!2909 lt!203561)))))

(declare-fun lt!203563 () Unit!7961)

(assert (=> b!456648 (= lt!203563 (ForallOf!73 lambda!13371 (seqFromList!1084 (list!1959 (_1!2909 lt!203561)))))))

(declare-fun lt!203554 () Option!1151)

(assert (=> b!456648 (= lt!203554 (Some!1150 (tuple2!5373 (Token!1463 (apply!1132 (transformation!859 (h!9819 rules!1920)) (_1!2909 lt!203561)) (h!9819 rules!1920) (size!3625 (_1!2909 lt!203561)) (list!1959 (_1!2909 lt!203561))) (_2!2909 lt!203561))))))

(declare-fun lt!203559 () Unit!7961)

(declare-fun lemmaEqSameImage!73 (TokenValueInjection!1534 BalanceConc!3088 BalanceConc!3088) Unit!7961)

(assert (=> b!456648 (= lt!203559 (lemmaEqSameImage!73 (transformation!859 (h!9819 rules!1920)) (_1!2909 lt!203561) (seqFromList!1084 (list!1959 (_1!2909 lt!203561)))))))

(declare-fun lt!203560 () Option!1151)

(declare-fun b!456649 () Bool)

(declare-fun e!279433 () Bool)

(assert (=> b!456649 (= e!279433 (= (list!1959 (_2!2902 (get!1620 lt!203560))) (_2!2901 (get!1618 (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))))

(declare-fun b!456650 () Bool)

(declare-fun e!279432 () Bool)

(assert (=> b!456650 (= e!279432 e!279433)))

(declare-fun res!203060 () Bool)

(assert (=> b!456650 (=> (not res!203060) (not e!279433))))

(assert (=> b!456650 (= res!203060 (= (_1!2902 (get!1620 lt!203560)) (_1!2901 (get!1618 (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))))))

(declare-fun b!456651 () Bool)

(assert (=> b!456651 (= e!279435 None!1150)))

(declare-fun d!174479 () Bool)

(declare-fun e!279436 () Bool)

(assert (=> d!174479 e!279436))

(declare-fun res!203062 () Bool)

(assert (=> d!174479 (=> (not res!203062) (not e!279436))))

(assert (=> d!174479 (= res!203062 (= (isDefined!990 lt!203560) (isDefined!989 (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) (list!1959 (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465))))))))))

(assert (=> d!174479 (= lt!203560 e!279435)))

(declare-fun c!92294 () Bool)

(assert (=> d!174479 (= c!92294 (isEmpty!3391 (_1!2909 lt!203561)))))

(declare-fun findLongestMatchWithZipperSequence!73 (Regex!1083 BalanceConc!3088) tuple2!5386)

(assert (=> d!174479 (= lt!203561 (findLongestMatchWithZipperSequence!73 (regex!859 (h!9819 rules!1920)) (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))))))

(assert (=> d!174479 (ruleValid!134 thiss!17480 (h!9819 rules!1920))))

(assert (=> d!174479 (= (maxPrefixOneRuleZipperSequence!191 thiss!17480 (h!9819 rules!1920) (seqFromList!1084 (originalCharacters!902 (h!9820 tokens!465)))) lt!203560)))

(declare-fun b!456652 () Bool)

(assert (=> b!456652 (= e!279434 (matchR!401 (regex!859 (h!9819 rules!1920)) (_1!2908 (findLongestMatchInner!114 (regex!859 (h!9819 rules!1920)) Nil!4421 (size!3623 Nil!4421) lt!203556 lt!203556 (size!3623 lt!203556)))))))

(declare-fun b!456653 () Bool)

(assert (=> b!456653 (= e!279436 e!279432)))

(declare-fun res!203063 () Bool)

(assert (=> b!456653 (=> res!203063 e!279432)))

(assert (=> b!456653 (= res!203063 (not (isDefined!990 lt!203560)))))

(assert (= (and d!174479 c!92294) b!456651))

(assert (= (and d!174479 (not c!92294)) b!456648))

(assert (= (and b!456648 (not res!203061)) b!456652))

(assert (= (and d!174479 res!203062) b!456653))

(assert (= (and b!456653 (not res!203063)) b!456650))

(assert (= (and b!456650 res!203060) b!456649))

(assert (=> b!456652 m!723327))

(declare-fun m!723915 () Bool)

(assert (=> b!456652 m!723915))

(assert (=> b!456652 m!723327))

(assert (=> b!456652 m!723915))

(declare-fun m!723919 () Bool)

(assert (=> b!456652 m!723919))

(declare-fun m!723925 () Bool)

(assert (=> b!456652 m!723925))

(declare-fun m!723927 () Bool)

(assert (=> b!456653 m!723927))

(assert (=> b!456649 m!718489))

(assert (=> b!456649 m!719631))

(assert (=> b!456649 m!721221))

(declare-fun m!723931 () Bool)

(assert (=> b!456649 m!723931))

(assert (=> b!456649 m!719631))

(assert (=> b!456649 m!721221))

(declare-fun m!723933 () Bool)

(assert (=> b!456649 m!723933))

(declare-fun m!723935 () Bool)

(assert (=> b!456649 m!723935))

(assert (=> b!456648 m!723327))

(declare-fun m!723939 () Bool)

(assert (=> b!456648 m!723939))

(declare-fun m!723941 () Bool)

(assert (=> b!456648 m!723941))

(declare-fun m!723945 () Bool)

(assert (=> b!456648 m!723945))

(declare-fun m!723949 () Bool)

(assert (=> b!456648 m!723949))

(assert (=> b!456648 m!723915))

(assert (=> b!456648 m!723327))

(assert (=> b!456648 m!723915))

(assert (=> b!456648 m!723919))

(declare-fun m!723951 () Bool)

(assert (=> b!456648 m!723951))

(assert (=> b!456648 m!723939))

(declare-fun m!723953 () Bool)

(assert (=> b!456648 m!723953))

(declare-fun m!723955 () Bool)

(assert (=> b!456648 m!723955))

(assert (=> b!456648 m!723941))

(declare-fun m!723957 () Bool)

(assert (=> b!456648 m!723957))

(assert (=> b!456648 m!718489))

(assert (=> b!456648 m!719631))

(declare-fun m!723959 () Bool)

(assert (=> b!456648 m!723959))

(assert (=> b!456648 m!723941))

(declare-fun m!723961 () Bool)

(assert (=> b!456648 m!723961))

(assert (=> b!456650 m!723935))

(assert (=> b!456650 m!718489))

(assert (=> b!456650 m!719631))

(assert (=> b!456650 m!719631))

(assert (=> b!456650 m!721221))

(assert (=> b!456650 m!721221))

(assert (=> b!456650 m!723931))

(declare-fun m!723963 () Bool)

(assert (=> d!174479 m!723963))

(assert (=> d!174479 m!718489))

(assert (=> d!174479 m!719631))

(assert (=> d!174479 m!721221))

(declare-fun m!723965 () Bool)

(assert (=> d!174479 m!723965))

(assert (=> d!174479 m!721133))

(assert (=> d!174479 m!718489))

(declare-fun m!723967 () Bool)

(assert (=> d!174479 m!723967))

(assert (=> d!174479 m!719631))

(assert (=> d!174479 m!721221))

(assert (=> d!174479 m!723927))

(assert (=> bm!31513 d!174479))

(declare-fun bs!56676 () Bool)

(declare-fun d!174551 () Bool)

(assert (= bs!56676 (and d!174551 d!173911)))

(declare-fun lambda!13374 () Int)

(assert (=> bs!56676 (= lambda!13374 lambda!13339)))

(assert (=> d!174551 true))

(declare-fun lt!203569 () Bool)

(assert (=> d!174551 (= lt!203569 (rulesValidInductive!282 thiss!17480 rules!1920))))

(assert (=> d!174551 (= lt!203569 (forall!1284 rules!1920 lambda!13374))))

(assert (=> d!174551 (= (rulesValid!306 thiss!17480 rules!1920) lt!203569)))

(declare-fun bs!56677 () Bool)

(assert (= bs!56677 d!174551))

(assert (=> bs!56677 m!718921))

(declare-fun m!723983 () Bool)

(assert (=> bs!56677 m!723983))

(assert (=> d!173343 d!174551))

(declare-fun d!174555 () Bool)

(declare-fun lt!203570 () Int)

(assert (=> d!174555 (>= lt!203570 0)))

(declare-fun e!279463 () Int)

(assert (=> d!174555 (= lt!203570 e!279463)))

(declare-fun c!92303 () Bool)

(assert (=> d!174555 (= c!92303 ((_ is Nil!4421) lt!202299))))

(assert (=> d!174555 (= (size!3623 lt!202299) lt!203570)))

(declare-fun b!456694 () Bool)

(assert (=> b!456694 (= e!279463 0)))

(declare-fun b!456695 () Bool)

(assert (=> b!456695 (= e!279463 (+ 1 (size!3623 (t!71131 lt!202299))))))

(assert (= (and d!174555 c!92303) b!456694))

(assert (= (and d!174555 (not c!92303)) b!456695))

(declare-fun m!723985 () Bool)

(assert (=> b!456695 m!723985))

(assert (=> b!454632 d!174555))

(assert (=> b!454632 d!173661))

(assert (=> b!454632 d!173915))

(declare-fun d!174557 () Bool)

(assert (=> d!174557 (dynLambda!2680 lambda!13278 (h!9820 tokens!465))))

(assert (=> d!174557 true))

(declare-fun _$7!552 () Unit!7961)

(assert (=> d!174557 (= (choose!3431 tokens!465 lambda!13278 (h!9820 tokens!465)) _$7!552)))

(declare-fun b_lambda!18923 () Bool)

(assert (=> (not b_lambda!18923) (not d!174557)))

(declare-fun bs!56678 () Bool)

(assert (= bs!56678 d!174557))

(assert (=> bs!56678 m!719651))

(assert (=> d!173477 d!174557))

(declare-fun d!174559 () Bool)

(declare-fun res!203080 () Bool)

(declare-fun e!279464 () Bool)

(assert (=> d!174559 (=> res!203080 e!279464)))

(assert (=> d!174559 (= res!203080 ((_ is Nil!4423) tokens!465))))

(assert (=> d!174559 (= (forall!1280 tokens!465 lambda!13278) e!279464)))

(declare-fun b!456696 () Bool)

(declare-fun e!279465 () Bool)

(assert (=> b!456696 (= e!279464 e!279465)))

(declare-fun res!203081 () Bool)

(assert (=> b!456696 (=> (not res!203081) (not e!279465))))

(assert (=> b!456696 (= res!203081 (dynLambda!2680 lambda!13278 (h!9820 tokens!465)))))

(declare-fun b!456697 () Bool)

(assert (=> b!456697 (= e!279465 (forall!1280 (t!71133 tokens!465) lambda!13278))))

(assert (= (and d!174559 (not res!203080)) b!456696))

(assert (= (and b!456696 res!203081) b!456697))

(declare-fun b_lambda!18925 () Bool)

(assert (=> (not b_lambda!18925) (not b!456696)))

(assert (=> b!456696 m!719651))

(declare-fun m!723987 () Bool)

(assert (=> b!456697 m!723987))

(assert (=> d!173477 d!174559))

(declare-fun b!456698 () Bool)

(declare-fun res!203085 () Bool)

(declare-fun e!279469 () Bool)

(assert (=> b!456698 (=> (not res!203085) (not e!279469))))

(declare-fun lt!203572 () Option!1150)

(assert (=> b!456698 (= res!203085 (< (size!3623 (_2!2901 (get!1618 lt!203572))) (size!3623 lt!202023)))))

(declare-fun b!456699 () Bool)

(declare-fun e!279466 () Option!1150)

(assert (=> b!456699 (= e!279466 None!1149)))

(declare-fun b!456700 () Bool)

(assert (=> b!456700 (= e!279469 (= (size!3619 (_1!2901 (get!1618 lt!203572))) (size!3623 (originalCharacters!902 (_1!2901 (get!1618 lt!203572))))))))

(declare-fun b!456701 () Bool)

(declare-fun e!279468 () Bool)

(assert (=> b!456701 (= e!279468 (matchR!401 (regex!859 (h!9819 rules!1920)) (_1!2908 (findLongestMatchInner!114 (regex!859 (h!9819 rules!1920)) Nil!4421 (size!3623 Nil!4421) lt!202023 lt!202023 (size!3623 lt!202023)))))))

(declare-fun b!456702 () Bool)

(declare-fun e!279467 () Bool)

(assert (=> b!456702 (= e!279467 e!279469)))

(declare-fun res!203083 () Bool)

(assert (=> b!456702 (=> (not res!203083) (not e!279469))))

(assert (=> b!456702 (= res!203083 (matchR!401 (regex!859 (h!9819 rules!1920)) (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203572))))))))

(declare-fun d!174561 () Bool)

(assert (=> d!174561 e!279467))

(declare-fun res!203087 () Bool)

(assert (=> d!174561 (=> res!203087 e!279467)))

(assert (=> d!174561 (= res!203087 (isEmpty!3390 lt!203572))))

(assert (=> d!174561 (= lt!203572 e!279466)))

(declare-fun c!92304 () Bool)

(declare-fun lt!203575 () tuple2!5384)

(assert (=> d!174561 (= c!92304 (isEmpty!3386 (_1!2908 lt!203575)))))

(assert (=> d!174561 (= lt!203575 (findLongestMatch!94 (regex!859 (h!9819 rules!1920)) lt!202023))))

(assert (=> d!174561 (ruleValid!134 thiss!17480 (h!9819 rules!1920))))

(assert (=> d!174561 (= (maxPrefixOneRule!221 thiss!17480 (h!9819 rules!1920) lt!202023) lt!203572)))

(declare-fun b!456703 () Bool)

(declare-fun res!203086 () Bool)

(assert (=> b!456703 (=> (not res!203086) (not e!279469))))

(assert (=> b!456703 (= res!203086 (= (++!1284 (list!1959 (charsOf!502 (_1!2901 (get!1618 lt!203572)))) (_2!2901 (get!1618 lt!203572))) lt!202023))))

(declare-fun b!456704 () Bool)

(assert (=> b!456704 (= e!279466 (Some!1149 (tuple2!5371 (Token!1463 (apply!1132 (transformation!859 (h!9819 rules!1920)) (seqFromList!1084 (_1!2908 lt!203575))) (h!9819 rules!1920) (size!3625 (seqFromList!1084 (_1!2908 lt!203575))) (_1!2908 lt!203575)) (_2!2908 lt!203575))))))

(declare-fun lt!203573 () Unit!7961)

(assert (=> b!456704 (= lt!203573 (longestMatchIsAcceptedByMatchOrIsEmpty!98 (regex!859 (h!9819 rules!1920)) lt!202023))))

(declare-fun res!203082 () Bool)

(assert (=> b!456704 (= res!203082 (isEmpty!3386 (_1!2908 (findLongestMatchInner!114 (regex!859 (h!9819 rules!1920)) Nil!4421 (size!3623 Nil!4421) lt!202023 lt!202023 (size!3623 lt!202023)))))))

(assert (=> b!456704 (=> res!203082 e!279468)))

(assert (=> b!456704 e!279468))

(declare-fun lt!203571 () Unit!7961)

(assert (=> b!456704 (= lt!203571 lt!203573)))

(declare-fun lt!203574 () Unit!7961)

(assert (=> b!456704 (= lt!203574 (lemmaSemiInverse!92 (transformation!859 (h!9819 rules!1920)) (seqFromList!1084 (_1!2908 lt!203575))))))

(declare-fun b!456705 () Bool)

(declare-fun res!203088 () Bool)

(assert (=> b!456705 (=> (not res!203088) (not e!279469))))

(assert (=> b!456705 (= res!203088 (= (rule!1550 (_1!2901 (get!1618 lt!203572))) (h!9819 rules!1920)))))

(declare-fun b!456706 () Bool)

(declare-fun res!203084 () Bool)

(assert (=> b!456706 (=> (not res!203084) (not e!279469))))

(assert (=> b!456706 (= res!203084 (= (value!28797 (_1!2901 (get!1618 lt!203572))) (apply!1132 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!203572)))) (seqFromList!1084 (originalCharacters!902 (_1!2901 (get!1618 lt!203572)))))))))

(assert (= (and d!174561 c!92304) b!456699))

(assert (= (and d!174561 (not c!92304)) b!456704))

(assert (= (and b!456704 (not res!203082)) b!456701))

(assert (= (and d!174561 (not res!203087)) b!456702))

(assert (= (and b!456702 res!203083) b!456703))

(assert (= (and b!456703 res!203086) b!456698))

(assert (= (and b!456698 res!203085) b!456705))

(assert (= (and b!456705 res!203088) b!456706))

(assert (= (and b!456706 res!203084) b!456700))

(assert (=> b!456704 m!723327))

(declare-fun m!723989 () Bool)

(assert (=> b!456704 m!723989))

(declare-fun m!723991 () Bool)

(assert (=> b!456704 m!723991))

(declare-fun m!723993 () Bool)

(assert (=> b!456704 m!723993))

(assert (=> b!456704 m!723989))

(declare-fun m!723995 () Bool)

(assert (=> b!456704 m!723995))

(assert (=> b!456704 m!723327))

(assert (=> b!456704 m!718903))

(declare-fun m!723997 () Bool)

(assert (=> b!456704 m!723997))

(assert (=> b!456704 m!723989))

(declare-fun m!723999 () Bool)

(assert (=> b!456704 m!723999))

(assert (=> b!456704 m!723989))

(declare-fun m!724001 () Bool)

(assert (=> b!456704 m!724001))

(assert (=> b!456704 m!718903))

(declare-fun m!724003 () Bool)

(assert (=> b!456703 m!724003))

(declare-fun m!724005 () Bool)

(assert (=> b!456703 m!724005))

(assert (=> b!456703 m!724005))

(declare-fun m!724007 () Bool)

(assert (=> b!456703 m!724007))

(assert (=> b!456703 m!724007))

(declare-fun m!724009 () Bool)

(assert (=> b!456703 m!724009))

(assert (=> b!456706 m!724003))

(declare-fun m!724011 () Bool)

(assert (=> b!456706 m!724011))

(assert (=> b!456706 m!724011))

(declare-fun m!724013 () Bool)

(assert (=> b!456706 m!724013))

(assert (=> b!456702 m!724003))

(assert (=> b!456702 m!724005))

(assert (=> b!456702 m!724005))

(assert (=> b!456702 m!724007))

(assert (=> b!456702 m!724007))

(declare-fun m!724015 () Bool)

(assert (=> b!456702 m!724015))

(assert (=> b!456698 m!724003))

(declare-fun m!724017 () Bool)

(assert (=> b!456698 m!724017))

(assert (=> b!456698 m!718903))

(declare-fun m!724019 () Bool)

(assert (=> d!174561 m!724019))

(declare-fun m!724021 () Bool)

(assert (=> d!174561 m!724021))

(declare-fun m!724023 () Bool)

(assert (=> d!174561 m!724023))

(assert (=> d!174561 m!721133))

(assert (=> b!456705 m!724003))

(assert (=> b!456701 m!723327))

(assert (=> b!456701 m!718903))

(assert (=> b!456701 m!723327))

(assert (=> b!456701 m!718903))

(assert (=> b!456701 m!723997))

(declare-fun m!724025 () Bool)

(assert (=> b!456701 m!724025))

(assert (=> b!456700 m!724003))

(declare-fun m!724027 () Bool)

(assert (=> b!456700 m!724027))

(assert (=> bm!31452 d!174561))

(assert (=> b!454958 d!173639))

(assert (=> b!454958 d!173937))

(assert (=> b!454958 d!173935))

(assert (=> b!454958 d!173645))

(declare-fun b!456727 () Bool)

(declare-fun e!279481 () List!4431)

(assert (=> b!456727 (= e!279481 lt!202030)))

(declare-fun d!174563 () Bool)

(declare-fun e!279480 () Bool)

(assert (=> d!174563 e!279480))

(declare-fun res!203089 () Bool)

(assert (=> d!174563 (=> (not res!203089) (not e!279480))))

(declare-fun lt!203578 () List!4431)

(assert (=> d!174563 (= res!203089 (= (content!737 lt!203578) ((_ map or) (content!737 (t!71131 lt!202023)) (content!737 lt!202030))))))

(assert (=> d!174563 (= lt!203578 e!279481)))

(declare-fun c!92315 () Bool)

(assert (=> d!174563 (= c!92315 ((_ is Nil!4421) (t!71131 lt!202023)))))

(assert (=> d!174563 (= (++!1284 (t!71131 lt!202023) lt!202030) lt!203578)))

(declare-fun b!456729 () Bool)

(declare-fun res!203090 () Bool)

(assert (=> b!456729 (=> (not res!203090) (not e!279480))))

(assert (=> b!456729 (= res!203090 (= (size!3623 lt!203578) (+ (size!3623 (t!71131 lt!202023)) (size!3623 lt!202030))))))

(declare-fun b!456730 () Bool)

(assert (=> b!456730 (= e!279480 (or (not (= lt!202030 Nil!4421)) (= lt!203578 (t!71131 lt!202023))))))

(declare-fun b!456728 () Bool)

(assert (=> b!456728 (= e!279481 (Cons!4421 (h!9818 (t!71131 lt!202023)) (++!1284 (t!71131 (t!71131 lt!202023)) lt!202030)))))

(assert (= (and d!174563 c!92315) b!456727))

(assert (= (and d!174563 (not c!92315)) b!456728))

(assert (= (and d!174563 res!203089) b!456729))

(assert (= (and b!456729 res!203090) b!456730))

(declare-fun m!724029 () Bool)

(assert (=> d!174563 m!724029))

(assert (=> d!174563 m!719929))

(assert (=> d!174563 m!719081))

(declare-fun m!724031 () Bool)

(assert (=> b!456729 m!724031))

(assert (=> b!456729 m!719933))

(assert (=> b!456729 m!719085))

(declare-fun m!724033 () Bool)

(assert (=> b!456728 m!724033))

(assert (=> b!454597 d!174563))

(declare-fun d!174565 () Bool)

(declare-fun lt!203579 () Token!1462)

(assert (=> d!174565 (= lt!203579 (apply!1131 (list!1963 (_1!2903 lt!202263)) 0))))

(assert (=> d!174565 (= lt!203579 (apply!1133 (c!91746 (_1!2903 lt!202263)) 0))))

(declare-fun e!279482 () Bool)

(assert (=> d!174565 e!279482))

(declare-fun res!203091 () Bool)

(assert (=> d!174565 (=> (not res!203091) (not e!279482))))

(assert (=> d!174565 (= res!203091 (<= 0 0))))

(assert (=> d!174565 (= (apply!1130 (_1!2903 lt!202263) 0) lt!203579)))

(declare-fun b!456731 () Bool)

(assert (=> b!456731 (= e!279482 (< 0 (size!3622 (_1!2903 lt!202263))))))

(assert (= (and d!174565 res!203091) b!456731))

(assert (=> d!174565 m!719979))

(assert (=> d!174565 m!719979))

(declare-fun m!724035 () Bool)

(assert (=> d!174565 m!724035))

(declare-fun m!724037 () Bool)

(assert (=> d!174565 m!724037))

(assert (=> b!456731 m!719023))

(assert (=> b!454555 d!174565))

(declare-fun bs!56679 () Bool)

(declare-fun d!174567 () Bool)

(assert (= bs!56679 (and d!174567 d!173881)))

(declare-fun lambda!13375 () Int)

(assert (=> bs!56679 (= (= (toValue!1674 (transformation!859 (rule!1550 separatorToken!170))) (toValue!1674 (transformation!859 (h!9819 rules!1920)))) (= lambda!13375 lambda!13333))))

(declare-fun bs!56680 () Bool)

(assert (= bs!56680 (and d!174567 d!174313)))

(assert (=> bs!56680 (= (= (toValue!1674 (transformation!859 (rule!1550 separatorToken!170))) (toValue!1674 (transformation!859 (rule!1550 (h!9820 tokens!465))))) (= lambda!13375 lambda!13361))))

(assert (=> d!174567 true))

(assert (=> d!174567 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (rule!1550 separatorToken!170)))) (dynLambda!2684 order!3915 lambda!13375))))

(assert (=> d!174567 (= (equivClasses!324 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toValue!1674 (transformation!859 (rule!1550 separatorToken!170)))) (Forall2!187 lambda!13375))))

(declare-fun bs!56681 () Bool)

(assert (= bs!56681 d!174567))

(declare-fun m!724039 () Bool)

(assert (=> bs!56681 m!724039))

(assert (=> b!454462 d!174567))

(declare-fun d!174569 () Bool)

(declare-fun c!92316 () Bool)

(assert (=> d!174569 (= c!92316 ((_ is Node!1540) (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465))))))))

(declare-fun e!279483 () Bool)

(assert (=> d!174569 (= (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465))))) e!279483)))

(declare-fun b!456732 () Bool)

(assert (=> b!456732 (= e!279483 (inv!5503 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465))))))))

(declare-fun b!456733 () Bool)

(declare-fun e!279484 () Bool)

(assert (=> b!456733 (= e!279483 e!279484)))

(declare-fun res!203092 () Bool)

(assert (=> b!456733 (= res!203092 (not ((_ is Leaf!2309) (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465)))))))))

(assert (=> b!456733 (=> res!203092 e!279484)))

(declare-fun b!456734 () Bool)

(assert (=> b!456734 (= e!279484 (inv!5504 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465))))))))

(assert (= (and d!174569 c!92316) b!456732))

(assert (= (and d!174569 (not c!92316)) b!456733))

(assert (= (and b!456733 (not res!203092)) b!456734))

(declare-fun m!724041 () Bool)

(assert (=> b!456732 m!724041))

(declare-fun m!724043 () Bool)

(assert (=> b!456734 m!724043))

(assert (=> b!454629 d!174569))

(declare-fun d!174571 () Bool)

(assert (=> d!174571 (= (list!1959 e!278186) (list!1962 (c!91744 e!278186)))))

(declare-fun bs!56682 () Bool)

(assert (= bs!56682 d!174571))

(declare-fun m!724045 () Bool)

(assert (=> bs!56682 m!724045))

(assert (=> bm!31471 d!174571))

(assert (=> b!454361 d!174003))

(declare-fun b!456737 () Bool)

(declare-fun e!279487 () Bool)

(assert (=> b!456737 (= e!279487 true)))

(declare-fun b!456736 () Bool)

(declare-fun e!279486 () Bool)

(assert (=> b!456736 (= e!279486 e!279487)))

(declare-fun b!456735 () Bool)

(declare-fun e!279485 () Bool)

(assert (=> b!456735 (= e!279485 e!279486)))

(assert (=> b!454765 e!279485))

(assert (= b!456736 b!456737))

(assert (= b!456735 b!456736))

(assert (= (and b!454765 ((_ is Cons!4422) (t!71132 rules!1920))) b!456735))

(assert (=> b!456737 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13313))))

(assert (=> b!456737 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13313))))

(declare-fun b!456748 () Bool)

(declare-fun e!279493 () Bool)

(declare-fun tp!126467 () Bool)

(assert (=> b!456748 (= e!279493 (and tp_is_empty!1979 tp!126467))))

(assert (=> b!455000 (= tp!126415 e!279493)))

(assert (= (and b!455000 ((_ is Cons!4421) (originalCharacters!902 (h!9820 (t!71133 tokens!465))))) b!456748))

(declare-fun b!456749 () Bool)

(declare-fun e!279494 () Bool)

(assert (=> b!456749 (= e!279494 tp_is_empty!1979)))

(assert (=> b!455001 (= tp!126417 e!279494)))

(declare-fun b!456752 () Bool)

(declare-fun tp!126471 () Bool)

(declare-fun tp!126469 () Bool)

(assert (=> b!456752 (= e!279494 (and tp!126471 tp!126469))))

(declare-fun b!456750 () Bool)

(declare-fun tp!126470 () Bool)

(declare-fun tp!126468 () Bool)

(assert (=> b!456750 (= e!279494 (and tp!126470 tp!126468))))

(declare-fun b!456751 () Bool)

(declare-fun tp!126472 () Bool)

(assert (=> b!456751 (= e!279494 tp!126472)))

(assert (= (and b!455001 ((_ is ElementMatch!1083) (regex!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) b!456749))

(assert (= (and b!455001 ((_ is Concat!1965) (regex!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) b!456750))

(assert (= (and b!455001 ((_ is Star!1083) (regex!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) b!456751))

(assert (= (and b!455001 ((_ is Union!1083) (regex!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) b!456752))

(declare-fun b!456753 () Bool)

(declare-fun e!279495 () Bool)

(assert (=> b!456753 (= e!279495 tp_is_empty!1979)))

(assert (=> b!455022 (= tp!126439 e!279495)))

(declare-fun b!456756 () Bool)

(declare-fun tp!126476 () Bool)

(declare-fun tp!126474 () Bool)

(assert (=> b!456756 (= e!279495 (and tp!126476 tp!126474))))

(declare-fun b!456754 () Bool)

(declare-fun tp!126475 () Bool)

(declare-fun tp!126473 () Bool)

(assert (=> b!456754 (= e!279495 (and tp!126475 tp!126473))))

(declare-fun b!456755 () Bool)

(declare-fun tp!126477 () Bool)

(assert (=> b!456755 (= e!279495 tp!126477)))

(assert (= (and b!455022 ((_ is ElementMatch!1083) (regOne!2678 (regex!859 (rule!1550 separatorToken!170))))) b!456753))

(assert (= (and b!455022 ((_ is Concat!1965) (regOne!2678 (regex!859 (rule!1550 separatorToken!170))))) b!456754))

(assert (= (and b!455022 ((_ is Star!1083) (regOne!2678 (regex!859 (rule!1550 separatorToken!170))))) b!456755))

(assert (= (and b!455022 ((_ is Union!1083) (regOne!2678 (regex!859 (rule!1550 separatorToken!170))))) b!456756))

(declare-fun b!456757 () Bool)

(declare-fun e!279496 () Bool)

(assert (=> b!456757 (= e!279496 tp_is_empty!1979)))

(assert (=> b!455022 (= tp!126437 e!279496)))

(declare-fun b!456760 () Bool)

(declare-fun tp!126481 () Bool)

(declare-fun tp!126479 () Bool)

(assert (=> b!456760 (= e!279496 (and tp!126481 tp!126479))))

(declare-fun b!456758 () Bool)

(declare-fun tp!126480 () Bool)

(declare-fun tp!126478 () Bool)

(assert (=> b!456758 (= e!279496 (and tp!126480 tp!126478))))

(declare-fun b!456759 () Bool)

(declare-fun tp!126482 () Bool)

(assert (=> b!456759 (= e!279496 tp!126482)))

(assert (= (and b!455022 ((_ is ElementMatch!1083) (regTwo!2678 (regex!859 (rule!1550 separatorToken!170))))) b!456757))

(assert (= (and b!455022 ((_ is Concat!1965) (regTwo!2678 (regex!859 (rule!1550 separatorToken!170))))) b!456758))

(assert (= (and b!455022 ((_ is Star!1083) (regTwo!2678 (regex!859 (rule!1550 separatorToken!170))))) b!456759))

(assert (= (and b!455022 ((_ is Union!1083) (regTwo!2678 (regex!859 (rule!1550 separatorToken!170))))) b!456760))

(declare-fun b!456763 () Bool)

(declare-fun e!279499 () Bool)

(assert (=> b!456763 (= e!279499 true)))

(declare-fun b!456762 () Bool)

(declare-fun e!279498 () Bool)

(assert (=> b!456762 (= e!279498 e!279499)))

(declare-fun b!456761 () Bool)

(declare-fun e!279497 () Bool)

(assert (=> b!456761 (= e!279497 e!279498)))

(assert (=> b!454750 e!279497))

(assert (= b!456762 b!456763))

(assert (= b!456761 b!456762))

(assert (= (and b!454750 ((_ is Cons!4422) (t!71132 rules!1920))) b!456761))

(assert (=> b!456763 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13311))))

(assert (=> b!456763 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13311))))

(declare-fun b!456764 () Bool)

(declare-fun e!279500 () Bool)

(assert (=> b!456764 (= e!279500 tp_is_empty!1979)))

(assert (=> b!455023 (= tp!126441 e!279500)))

(declare-fun b!456767 () Bool)

(declare-fun tp!126486 () Bool)

(declare-fun tp!126484 () Bool)

(assert (=> b!456767 (= e!279500 (and tp!126486 tp!126484))))

(declare-fun b!456765 () Bool)

(declare-fun tp!126485 () Bool)

(declare-fun tp!126483 () Bool)

(assert (=> b!456765 (= e!279500 (and tp!126485 tp!126483))))

(declare-fun b!456766 () Bool)

(declare-fun tp!126487 () Bool)

(assert (=> b!456766 (= e!279500 tp!126487)))

(assert (= (and b!455023 ((_ is ElementMatch!1083) (reg!1412 (regex!859 (rule!1550 separatorToken!170))))) b!456764))

(assert (= (and b!455023 ((_ is Concat!1965) (reg!1412 (regex!859 (rule!1550 separatorToken!170))))) b!456765))

(assert (= (and b!455023 ((_ is Star!1083) (reg!1412 (regex!859 (rule!1550 separatorToken!170))))) b!456766))

(assert (= (and b!455023 ((_ is Union!1083) (reg!1412 (regex!859 (rule!1550 separatorToken!170))))) b!456767))

(declare-fun b!456778 () Bool)

(declare-fun e!279509 () Bool)

(assert (=> b!456778 (= e!279509 true)))

(declare-fun b!456777 () Bool)

(declare-fun e!279508 () Bool)

(assert (=> b!456777 (= e!279508 e!279509)))

(declare-fun b!456776 () Bool)

(declare-fun e!279507 () Bool)

(assert (=> b!456776 (= e!279507 e!279508)))

(assert (=> b!455014 e!279507))

(assert (= b!456777 b!456778))

(assert (= b!456776 b!456777))

(assert (= (and b!455014 ((_ is Cons!4422) (t!71132 (t!71132 rules!1920)))) b!456776))

(assert (=> b!456778 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920)))))) (dynLambda!2675 order!3907 lambda!13278))))

(assert (=> b!456778 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920)))))) (dynLambda!2675 order!3907 lambda!13278))))

(declare-fun b!456779 () Bool)

(declare-fun e!279510 () Bool)

(assert (=> b!456779 (= e!279510 tp_is_empty!1979)))

(assert (=> b!455024 (= tp!126440 e!279510)))

(declare-fun b!456782 () Bool)

(declare-fun tp!126491 () Bool)

(declare-fun tp!126489 () Bool)

(assert (=> b!456782 (= e!279510 (and tp!126491 tp!126489))))

(declare-fun b!456780 () Bool)

(declare-fun tp!126490 () Bool)

(declare-fun tp!126488 () Bool)

(assert (=> b!456780 (= e!279510 (and tp!126490 tp!126488))))

(declare-fun b!456781 () Bool)

(declare-fun tp!126492 () Bool)

(assert (=> b!456781 (= e!279510 tp!126492)))

(assert (= (and b!455024 ((_ is ElementMatch!1083) (regOne!2679 (regex!859 (rule!1550 separatorToken!170))))) b!456779))

(assert (= (and b!455024 ((_ is Concat!1965) (regOne!2679 (regex!859 (rule!1550 separatorToken!170))))) b!456780))

(assert (= (and b!455024 ((_ is Star!1083) (regOne!2679 (regex!859 (rule!1550 separatorToken!170))))) b!456781))

(assert (= (and b!455024 ((_ is Union!1083) (regOne!2679 (regex!859 (rule!1550 separatorToken!170))))) b!456782))

(declare-fun b!456783 () Bool)

(declare-fun e!279511 () Bool)

(assert (=> b!456783 (= e!279511 tp_is_empty!1979)))

(assert (=> b!455024 (= tp!126438 e!279511)))

(declare-fun b!456786 () Bool)

(declare-fun tp!126496 () Bool)

(declare-fun tp!126494 () Bool)

(assert (=> b!456786 (= e!279511 (and tp!126496 tp!126494))))

(declare-fun b!456784 () Bool)

(declare-fun tp!126495 () Bool)

(declare-fun tp!126493 () Bool)

(assert (=> b!456784 (= e!279511 (and tp!126495 tp!126493))))

(declare-fun b!456785 () Bool)

(declare-fun tp!126497 () Bool)

(assert (=> b!456785 (= e!279511 tp!126497)))

(assert (= (and b!455024 ((_ is ElementMatch!1083) (regTwo!2679 (regex!859 (rule!1550 separatorToken!170))))) b!456783))

(assert (= (and b!455024 ((_ is Concat!1965) (regTwo!2679 (regex!859 (rule!1550 separatorToken!170))))) b!456784))

(assert (= (and b!455024 ((_ is Star!1083) (regTwo!2679 (regex!859 (rule!1550 separatorToken!170))))) b!456785))

(assert (= (and b!455024 ((_ is Union!1083) (regTwo!2679 (regex!859 (rule!1550 separatorToken!170))))) b!456786))

(declare-fun b!456790 () Bool)

(declare-fun b_free!12701 () Bool)

(declare-fun b_next!12701 () Bool)

(assert (=> b!456790 (= b_free!12701 (not b_next!12701))))

(declare-fun t!71463 () Bool)

(declare-fun tb!45831 () Bool)

(assert (=> (and b!456790 (= (toValue!1674 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71463) tb!45831))

(declare-fun result!50430 () Bool)

(assert (= result!50430 result!50226))

(assert (=> d!173629 t!71463))

(declare-fun tb!45833 () Bool)

(declare-fun t!71465 () Bool)

(assert (=> (and b!456790 (= (toValue!1674 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71465) tb!45833))

(declare-fun result!50432 () Bool)

(assert (= result!50432 result!50288))

(assert (=> d!173851 t!71465))

(declare-fun tp!126499 () Bool)

(declare-fun b_and!49131 () Bool)

(assert (=> b!456790 (= tp!126499 (and (=> t!71463 result!50430) (=> t!71465 result!50432) b_and!49131))))

(declare-fun b_free!12703 () Bool)

(declare-fun b_next!12703 () Bool)

(assert (=> b!456790 (= b_free!12703 (not b_next!12703))))

(declare-fun tb!45835 () Bool)

(declare-fun t!71467 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71467) tb!45835))

(declare-fun result!50434 () Bool)

(assert (= result!50434 result!50206))

(assert (=> d!173571 t!71467))

(declare-fun t!71469 () Bool)

(declare-fun tb!45837 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) t!71469) tb!45837))

(declare-fun result!50436 () Bool)

(assert (= result!50436 result!50138))

(assert (=> b!454639 t!71469))

(declare-fun t!71471 () Bool)

(declare-fun tb!45839 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) t!71471) tb!45839))

(declare-fun result!50438 () Bool)

(assert (= result!50438 result!50216))

(assert (=> b!455181 t!71471))

(assert (=> d!173371 t!71469))

(declare-fun tb!45841 () Bool)

(declare-fun t!71473 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202020 0))))) t!71473) tb!45841))

(declare-fun result!50440 () Bool)

(assert (= result!50440 result!50400))

(assert (=> d!174455 t!71473))

(declare-fun t!71475 () Bool)

(declare-fun tb!45843 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 call!31479)))) t!71475) tb!45843))

(declare-fun result!50442 () Bool)

(assert (= result!50442 result!50320))

(assert (=> d!173973 t!71475))

(declare-fun tb!45845 () Bool)

(declare-fun t!71477 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479)))))) t!71477) tb!45845))

(declare-fun result!50444 () Bool)

(assert (= result!50444 result!50186))

(assert (=> d!173501 t!71477))

(declare-fun t!71479 () Bool)

(declare-fun tb!45847 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))) t!71479) tb!45847))

(declare-fun result!50446 () Bool)

(assert (= result!50446 result!50238))

(assert (=> d!173651 t!71479))

(declare-fun t!71481 () Bool)

(declare-fun tb!45849 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 call!31436)))) t!71481) tb!45849))

(declare-fun result!50448 () Bool)

(assert (= result!50448 result!50268))

(assert (=> d!173707 t!71481))

(declare-fun tb!45851 () Bool)

(declare-fun t!71483 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202031 0))))) t!71483) tb!45851))

(declare-fun result!50450 () Bool)

(assert (= result!50450 result!50196))

(assert (=> d!173541 t!71483))

(declare-fun tb!45853 () Bool)

(declare-fun t!71485 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71485) tb!45853))

(declare-fun result!50452 () Bool)

(assert (= result!50452 result!50298))

(assert (=> d!173859 t!71485))

(declare-fun t!71487 () Bool)

(declare-fun tb!45855 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170)))) t!71487) tb!45855))

(declare-fun result!50454 () Bool)

(assert (= result!50454 result!50130))

(assert (=> b!454581 t!71487))

(assert (=> d!173363 t!71487))

(declare-fun tb!45857 () Bool)

(declare-fun t!71489 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202015 0))))) t!71489) tb!45857))

(declare-fun result!50456 () Bool)

(assert (= result!50456 result!50330))

(assert (=> d!174049 t!71489))

(declare-fun t!71491 () Bool)

(declare-fun tb!45859 () Bool)

(assert (=> (and b!456790 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436)))))) t!71491) tb!45859))

(declare-fun result!50458 () Bool)

(assert (= result!50458 result!50380))

(assert (=> d!174259 t!71491))

(assert (=> d!174253 t!71471))

(declare-fun b_and!49133 () Bool)

(declare-fun tp!126502 () Bool)

(assert (=> b!456790 (= tp!126502 (and (=> t!71491 result!50458) (=> t!71481 result!50448) (=> t!71483 result!50450) (=> t!71485 result!50452) (=> t!71471 result!50438) (=> t!71475 result!50442) (=> t!71477 result!50444) (=> t!71489 result!50456) (=> t!71487 result!50454) (=> t!71473 result!50440) (=> t!71469 result!50436) (=> t!71467 result!50434) (=> t!71479 result!50446) b_and!49133))))

(declare-fun e!279514 () Bool)

(assert (=> b!456790 (= e!279514 (and tp!126499 tp!126502))))

(declare-fun tp!126500 () Bool)

(declare-fun b!456789 () Bool)

(declare-fun e!279512 () Bool)

(assert (=> b!456789 (= e!279512 (and tp!126500 (inv!5492 (tag!1119 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (inv!5495 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) e!279514))))

(declare-fun b!456787 () Bool)

(declare-fun e!279515 () Bool)

(declare-fun e!279516 () Bool)

(declare-fun tp!126501 () Bool)

(assert (=> b!456787 (= e!279515 (and (inv!5496 (h!9820 (t!71133 (t!71133 tokens!465)))) e!279516 tp!126501))))

(declare-fun tp!126498 () Bool)

(declare-fun b!456788 () Bool)

(assert (=> b!456788 (= e!279516 (and (inv!21 (value!28797 (h!9820 (t!71133 (t!71133 tokens!465))))) e!279512 tp!126498))))

(assert (=> b!454999 (= tp!126418 e!279515)))

(assert (= b!456789 b!456790))

(assert (= b!456788 b!456789))

(assert (= b!456787 b!456788))

(assert (= (and b!454999 ((_ is Cons!4423) (t!71133 (t!71133 tokens!465)))) b!456787))

(declare-fun m!724079 () Bool)

(assert (=> b!456789 m!724079))

(declare-fun m!724083 () Bool)

(assert (=> b!456789 m!724083))

(declare-fun m!724085 () Bool)

(assert (=> b!456787 m!724085))

(declare-fun m!724087 () Bool)

(assert (=> b!456788 m!724087))

(declare-fun b!456791 () Bool)

(declare-fun e!279518 () Bool)

(declare-fun tp!126503 () Bool)

(assert (=> b!456791 (= e!279518 (and tp_is_empty!1979 tp!126503))))

(assert (=> b!455030 (= tp!126445 e!279518)))

(assert (= (and b!455030 ((_ is Cons!4421) (t!71131 (originalCharacters!902 (h!9820 tokens!465))))) b!456791))

(declare-fun b!456794 () Bool)

(declare-fun e!279521 () Bool)

(assert (=> b!456794 (= e!279521 true)))

(declare-fun b!456793 () Bool)

(declare-fun e!279520 () Bool)

(assert (=> b!456793 (= e!279520 e!279521)))

(declare-fun b!456792 () Bool)

(declare-fun e!279519 () Bool)

(assert (=> b!456792 (= e!279519 e!279520)))

(assert (=> b!454608 e!279519))

(assert (= b!456793 b!456794))

(assert (= b!456792 b!456793))

(assert (= (and b!454608 ((_ is Cons!4422) (t!71132 rules!1920))) b!456792))

(assert (=> b!456794 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13299))))

(assert (=> b!456794 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13299))))

(declare-fun b!456799 () Bool)

(declare-fun e!279523 () Bool)

(assert (=> b!456799 (= e!279523 tp_is_empty!1979)))

(assert (=> b!454986 (= tp!126402 e!279523)))

(declare-fun b!456802 () Bool)

(declare-fun tp!126507 () Bool)

(declare-fun tp!126505 () Bool)

(assert (=> b!456802 (= e!279523 (and tp!126507 tp!126505))))

(declare-fun b!456800 () Bool)

(declare-fun tp!126506 () Bool)

(declare-fun tp!126504 () Bool)

(assert (=> b!456800 (= e!279523 (and tp!126506 tp!126504))))

(declare-fun b!456801 () Bool)

(declare-fun tp!126508 () Bool)

(assert (=> b!456801 (= e!279523 tp!126508)))

(assert (= (and b!454986 ((_ is ElementMatch!1083) (regOne!2678 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456799))

(assert (= (and b!454986 ((_ is Concat!1965) (regOne!2678 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456800))

(assert (= (and b!454986 ((_ is Star!1083) (regOne!2678 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456801))

(assert (= (and b!454986 ((_ is Union!1083) (regOne!2678 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456802))

(declare-fun b!456803 () Bool)

(declare-fun e!279524 () Bool)

(assert (=> b!456803 (= e!279524 tp_is_empty!1979)))

(assert (=> b!454986 (= tp!126400 e!279524)))

(declare-fun b!456806 () Bool)

(declare-fun tp!126512 () Bool)

(declare-fun tp!126510 () Bool)

(assert (=> b!456806 (= e!279524 (and tp!126512 tp!126510))))

(declare-fun b!456804 () Bool)

(declare-fun tp!126511 () Bool)

(declare-fun tp!126509 () Bool)

(assert (=> b!456804 (= e!279524 (and tp!126511 tp!126509))))

(declare-fun b!456805 () Bool)

(declare-fun tp!126513 () Bool)

(assert (=> b!456805 (= e!279524 tp!126513)))

(assert (= (and b!454986 ((_ is ElementMatch!1083) (regTwo!2678 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456803))

(assert (= (and b!454986 ((_ is Concat!1965) (regTwo!2678 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456804))

(assert (= (and b!454986 ((_ is Star!1083) (regTwo!2678 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456805))

(assert (= (and b!454986 ((_ is Union!1083) (regTwo!2678 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456806))

(declare-fun b!456807 () Bool)

(declare-fun e!279525 () Bool)

(declare-fun tp!126514 () Bool)

(assert (=> b!456807 (= e!279525 (and tp_is_empty!1979 tp!126514))))

(assert (=> b!455029 (= tp!126444 e!279525)))

(assert (= (and b!455029 ((_ is Cons!4421) (t!71131 (originalCharacters!902 separatorToken!170)))) b!456807))

(declare-fun b!456808 () Bool)

(declare-fun e!279526 () Bool)

(assert (=> b!456808 (= e!279526 tp_is_empty!1979)))

(assert (=> b!454987 (= tp!126404 e!279526)))

(declare-fun b!456811 () Bool)

(declare-fun tp!126518 () Bool)

(declare-fun tp!126516 () Bool)

(assert (=> b!456811 (= e!279526 (and tp!126518 tp!126516))))

(declare-fun b!456809 () Bool)

(declare-fun tp!126517 () Bool)

(declare-fun tp!126515 () Bool)

(assert (=> b!456809 (= e!279526 (and tp!126517 tp!126515))))

(declare-fun b!456810 () Bool)

(declare-fun tp!126519 () Bool)

(assert (=> b!456810 (= e!279526 tp!126519)))

(assert (= (and b!454987 ((_ is ElementMatch!1083) (reg!1412 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456808))

(assert (= (and b!454987 ((_ is Concat!1965) (reg!1412 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456809))

(assert (= (and b!454987 ((_ is Star!1083) (reg!1412 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456810))

(assert (= (and b!454987 ((_ is Union!1083) (reg!1412 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456811))

(declare-fun b!456812 () Bool)

(declare-fun e!279527 () Bool)

(assert (=> b!456812 (= e!279527 tp_is_empty!1979)))

(assert (=> b!454988 (= tp!126403 e!279527)))

(declare-fun b!456815 () Bool)

(declare-fun tp!126523 () Bool)

(declare-fun tp!126521 () Bool)

(assert (=> b!456815 (= e!279527 (and tp!126523 tp!126521))))

(declare-fun b!456813 () Bool)

(declare-fun tp!126522 () Bool)

(declare-fun tp!126520 () Bool)

(assert (=> b!456813 (= e!279527 (and tp!126522 tp!126520))))

(declare-fun b!456814 () Bool)

(declare-fun tp!126524 () Bool)

(assert (=> b!456814 (= e!279527 tp!126524)))

(assert (= (and b!454988 ((_ is ElementMatch!1083) (regOne!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456812))

(assert (= (and b!454988 ((_ is Concat!1965) (regOne!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456813))

(assert (= (and b!454988 ((_ is Star!1083) (regOne!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456814))

(assert (= (and b!454988 ((_ is Union!1083) (regOne!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456815))

(declare-fun b!456816 () Bool)

(declare-fun e!279528 () Bool)

(assert (=> b!456816 (= e!279528 tp_is_empty!1979)))

(assert (=> b!454988 (= tp!126401 e!279528)))

(declare-fun b!456819 () Bool)

(declare-fun tp!126528 () Bool)

(declare-fun tp!126526 () Bool)

(assert (=> b!456819 (= e!279528 (and tp!126528 tp!126526))))

(declare-fun b!456817 () Bool)

(declare-fun tp!126527 () Bool)

(declare-fun tp!126525 () Bool)

(assert (=> b!456817 (= e!279528 (and tp!126527 tp!126525))))

(declare-fun b!456818 () Bool)

(declare-fun tp!126529 () Bool)

(assert (=> b!456818 (= e!279528 tp!126529)))

(assert (= (and b!454988 ((_ is ElementMatch!1083) (regTwo!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456816))

(assert (= (and b!454988 ((_ is Concat!1965) (regTwo!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456817))

(assert (= (and b!454988 ((_ is Star!1083) (regTwo!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456818))

(assert (= (and b!454988 ((_ is Union!1083) (regTwo!2679 (regex!859 (rule!1550 (h!9820 tokens!465)))))) b!456819))

(declare-fun b!456820 () Bool)

(declare-fun e!279529 () Bool)

(assert (=> b!456820 (= e!279529 tp_is_empty!1979)))

(assert (=> b!455020 (= tp!126435 e!279529)))

(declare-fun b!456823 () Bool)

(declare-fun tp!126533 () Bool)

(declare-fun tp!126531 () Bool)

(assert (=> b!456823 (= e!279529 (and tp!126533 tp!126531))))

(declare-fun b!456821 () Bool)

(declare-fun tp!126532 () Bool)

(declare-fun tp!126530 () Bool)

(assert (=> b!456821 (= e!279529 (and tp!126532 tp!126530))))

(declare-fun b!456822 () Bool)

(declare-fun tp!126534 () Bool)

(assert (=> b!456822 (= e!279529 tp!126534)))

(assert (= (and b!455020 ((_ is ElementMatch!1083) (regOne!2679 (regex!859 (h!9819 rules!1920))))) b!456820))

(assert (= (and b!455020 ((_ is Concat!1965) (regOne!2679 (regex!859 (h!9819 rules!1920))))) b!456821))

(assert (= (and b!455020 ((_ is Star!1083) (regOne!2679 (regex!859 (h!9819 rules!1920))))) b!456822))

(assert (= (and b!455020 ((_ is Union!1083) (regOne!2679 (regex!859 (h!9819 rules!1920))))) b!456823))

(declare-fun b!456824 () Bool)

(declare-fun e!279530 () Bool)

(assert (=> b!456824 (= e!279530 tp_is_empty!1979)))

(assert (=> b!455020 (= tp!126433 e!279530)))

(declare-fun b!456827 () Bool)

(declare-fun tp!126538 () Bool)

(declare-fun tp!126536 () Bool)

(assert (=> b!456827 (= e!279530 (and tp!126538 tp!126536))))

(declare-fun b!456825 () Bool)

(declare-fun tp!126537 () Bool)

(declare-fun tp!126535 () Bool)

(assert (=> b!456825 (= e!279530 (and tp!126537 tp!126535))))

(declare-fun b!456826 () Bool)

(declare-fun tp!126539 () Bool)

(assert (=> b!456826 (= e!279530 tp!126539)))

(assert (= (and b!455020 ((_ is ElementMatch!1083) (regTwo!2679 (regex!859 (h!9819 rules!1920))))) b!456824))

(assert (= (and b!455020 ((_ is Concat!1965) (regTwo!2679 (regex!859 (h!9819 rules!1920))))) b!456825))

(assert (= (and b!455020 ((_ is Star!1083) (regTwo!2679 (regex!859 (h!9819 rules!1920))))) b!456826))

(assert (= (and b!455020 ((_ is Union!1083) (regTwo!2679 (regex!859 (h!9819 rules!1920))))) b!456827))

(declare-fun b!456828 () Bool)

(declare-fun e!279531 () Bool)

(assert (=> b!456828 (= e!279531 tp_is_empty!1979)))

(assert (=> b!455012 (= tp!126428 e!279531)))

(declare-fun b!456831 () Bool)

(declare-fun tp!126543 () Bool)

(declare-fun tp!126541 () Bool)

(assert (=> b!456831 (= e!279531 (and tp!126543 tp!126541))))

(declare-fun b!456829 () Bool)

(declare-fun tp!126542 () Bool)

(declare-fun tp!126540 () Bool)

(assert (=> b!456829 (= e!279531 (and tp!126542 tp!126540))))

(declare-fun b!456830 () Bool)

(declare-fun tp!126544 () Bool)

(assert (=> b!456830 (= e!279531 tp!126544)))

(assert (= (and b!455012 ((_ is ElementMatch!1083) (regex!859 (h!9819 (t!71132 rules!1920))))) b!456828))

(assert (= (and b!455012 ((_ is Concat!1965) (regex!859 (h!9819 (t!71132 rules!1920))))) b!456829))

(assert (= (and b!455012 ((_ is Star!1083) (regex!859 (h!9819 (t!71132 rules!1920))))) b!456830))

(assert (= (and b!455012 ((_ is Union!1083) (regex!859 (h!9819 (t!71132 rules!1920))))) b!456831))

(declare-fun b!456833 () Bool)

(declare-fun e!279533 () Bool)

(assert (=> b!456833 (= e!279533 tp_is_empty!1979)))

(assert (=> b!455018 (= tp!126434 e!279533)))

(declare-fun b!456836 () Bool)

(declare-fun tp!126548 () Bool)

(declare-fun tp!126546 () Bool)

(assert (=> b!456836 (= e!279533 (and tp!126548 tp!126546))))

(declare-fun b!456834 () Bool)

(declare-fun tp!126547 () Bool)

(declare-fun tp!126545 () Bool)

(assert (=> b!456834 (= e!279533 (and tp!126547 tp!126545))))

(declare-fun b!456835 () Bool)

(declare-fun tp!126549 () Bool)

(assert (=> b!456835 (= e!279533 tp!126549)))

(assert (= (and b!455018 ((_ is ElementMatch!1083) (regOne!2678 (regex!859 (h!9819 rules!1920))))) b!456833))

(assert (= (and b!455018 ((_ is Concat!1965) (regOne!2678 (regex!859 (h!9819 rules!1920))))) b!456834))

(assert (= (and b!455018 ((_ is Star!1083) (regOne!2678 (regex!859 (h!9819 rules!1920))))) b!456835))

(assert (= (and b!455018 ((_ is Union!1083) (regOne!2678 (regex!859 (h!9819 rules!1920))))) b!456836))

(declare-fun b!456837 () Bool)

(declare-fun e!279534 () Bool)

(assert (=> b!456837 (= e!279534 tp_is_empty!1979)))

(assert (=> b!455018 (= tp!126432 e!279534)))

(declare-fun b!456840 () Bool)

(declare-fun tp!126553 () Bool)

(declare-fun tp!126551 () Bool)

(assert (=> b!456840 (= e!279534 (and tp!126553 tp!126551))))

(declare-fun b!456838 () Bool)

(declare-fun tp!126552 () Bool)

(declare-fun tp!126550 () Bool)

(assert (=> b!456838 (= e!279534 (and tp!126552 tp!126550))))

(declare-fun b!456839 () Bool)

(declare-fun tp!126554 () Bool)

(assert (=> b!456839 (= e!279534 tp!126554)))

(assert (= (and b!455018 ((_ is ElementMatch!1083) (regTwo!2678 (regex!859 (h!9819 rules!1920))))) b!456837))

(assert (= (and b!455018 ((_ is Concat!1965) (regTwo!2678 (regex!859 (h!9819 rules!1920))))) b!456838))

(assert (= (and b!455018 ((_ is Star!1083) (regTwo!2678 (regex!859 (h!9819 rules!1920))))) b!456839))

(assert (= (and b!455018 ((_ is Union!1083) (regTwo!2678 (regex!859 (h!9819 rules!1920))))) b!456840))

(declare-fun b!456844 () Bool)

(declare-fun e!279538 () Bool)

(assert (=> b!456844 (= e!279538 true)))

(declare-fun b!456843 () Bool)

(declare-fun e!279537 () Bool)

(assert (=> b!456843 (= e!279537 e!279538)))

(declare-fun b!456842 () Bool)

(declare-fun e!279536 () Bool)

(assert (=> b!456842 (= e!279536 e!279537)))

(assert (=> b!454626 e!279536))

(assert (= b!456843 b!456844))

(assert (= b!456842 b!456843))

(assert (= (and b!454626 ((_ is Cons!4422) (t!71132 rules!1920))) b!456842))

(assert (=> b!456844 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13301))))

(assert (=> b!456844 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13301))))

(declare-fun b!456845 () Bool)

(declare-fun e!279539 () Bool)

(assert (=> b!456845 (= e!279539 tp_is_empty!1979)))

(assert (=> b!455019 (= tp!126436 e!279539)))

(declare-fun b!456848 () Bool)

(declare-fun tp!126558 () Bool)

(declare-fun tp!126556 () Bool)

(assert (=> b!456848 (= e!279539 (and tp!126558 tp!126556))))

(declare-fun b!456846 () Bool)

(declare-fun tp!126557 () Bool)

(declare-fun tp!126555 () Bool)

(assert (=> b!456846 (= e!279539 (and tp!126557 tp!126555))))

(declare-fun b!456847 () Bool)

(declare-fun tp!126559 () Bool)

(assert (=> b!456847 (= e!279539 tp!126559)))

(assert (= (and b!455019 ((_ is ElementMatch!1083) (reg!1412 (regex!859 (h!9819 rules!1920))))) b!456845))

(assert (= (and b!455019 ((_ is Concat!1965) (reg!1412 (regex!859 (h!9819 rules!1920))))) b!456846))

(assert (= (and b!455019 ((_ is Star!1083) (reg!1412 (regex!859 (h!9819 rules!1920))))) b!456847))

(assert (= (and b!455019 ((_ is Union!1083) (reg!1412 (regex!859 (h!9819 rules!1920))))) b!456848))

(declare-fun b!456851 () Bool)

(declare-fun e!279542 () Bool)

(assert (=> b!456851 (= e!279542 true)))

(declare-fun b!456850 () Bool)

(declare-fun e!279541 () Bool)

(assert (=> b!456850 (= e!279541 e!279542)))

(declare-fun b!456849 () Bool)

(declare-fun e!279540 () Bool)

(assert (=> b!456849 (= e!279540 e!279541)))

(assert (=> b!454372 e!279540))

(assert (= b!456850 b!456851))

(assert (= b!456849 b!456850))

(assert (= (and b!454372 ((_ is Cons!4422) (t!71132 rules!1920))) b!456849))

(assert (=> b!456851 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13284))))

(assert (=> b!456851 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13284))))

(declare-fun b!456854 () Bool)

(declare-fun e!279545 () Bool)

(assert (=> b!456854 (= e!279545 true)))

(declare-fun b!456853 () Bool)

(declare-fun e!279544 () Bool)

(assert (=> b!456853 (= e!279544 e!279545)))

(declare-fun b!456852 () Bool)

(declare-fun e!279543 () Bool)

(assert (=> b!456852 (= e!279543 e!279544)))

(assert (=> b!454405 e!279543))

(assert (= b!456853 b!456854))

(assert (= b!456852 b!456853))

(assert (= (and b!454405 ((_ is Cons!4422) (t!71132 rules!1920))) b!456852))

(assert (=> b!456854 (< (dynLambda!2674 order!3905 (toValue!1674 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13292))))

(assert (=> b!456854 (< (dynLambda!2676 order!3909 (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920))))) (dynLambda!2675 order!3907 lambda!13292))))

(declare-fun b!456883 () Bool)

(declare-fun tp!126566 () Bool)

(declare-fun tp!126567 () Bool)

(declare-fun e!279562 () Bool)

(assert (=> b!456883 (= e!279562 (and (inv!5499 (left!3728 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170))))) tp!126567 (inv!5499 (right!4058 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170))))) tp!126566))))

(declare-fun b!456885 () Bool)

(declare-fun e!279563 () Bool)

(declare-fun tp!126568 () Bool)

(assert (=> b!456885 (= e!279563 tp!126568)))

(declare-fun b!456884 () Bool)

(declare-fun inv!5505 (IArray!3081) Bool)

(assert (=> b!456884 (= e!279562 (and (inv!5505 (xs!4171 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170))))) e!279563))))

(assert (=> b!454587 (= tp!126332 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170)))) e!279562))))

(assert (= (and b!454587 ((_ is Node!1540) (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170))))) b!456883))

(assert (= b!456884 b!456885))

(assert (= (and b!454587 ((_ is Leaf!2309) (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (value!28797 separatorToken!170))))) b!456884))

(declare-fun m!724129 () Bool)

(assert (=> b!456883 m!724129))

(declare-fun m!724131 () Bool)

(assert (=> b!456883 m!724131))

(declare-fun m!724133 () Bool)

(assert (=> b!456884 m!724133))

(assert (=> b!454587 m!719059))

(declare-fun b!456886 () Bool)

(declare-fun e!279564 () Bool)

(declare-fun tp!126569 () Bool)

(declare-fun tp!126570 () Bool)

(assert (=> b!456886 (= e!279564 (and (inv!5499 (left!3728 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465)))))) tp!126570 (inv!5499 (right!4058 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465)))))) tp!126569))))

(declare-fun b!456888 () Bool)

(declare-fun e!279565 () Bool)

(declare-fun tp!126571 () Bool)

(assert (=> b!456888 (= e!279565 tp!126571)))

(declare-fun b!456887 () Bool)

(assert (=> b!456887 (= e!279564 (and (inv!5505 (xs!4171 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465)))))) e!279565))))

(assert (=> b!454629 (= tp!126333 (and (inv!5499 (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465))))) e!279564))))

(assert (= (and b!454629 ((_ is Node!1540) (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465)))))) b!456886))

(assert (= b!456887 b!456888))

(assert (= (and b!454629 ((_ is Leaf!2309) (c!91744 (dynLambda!2679 (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (value!28797 (h!9820 tokens!465)))))) b!456887))

(declare-fun m!724135 () Bool)

(assert (=> b!456886 m!724135))

(declare-fun m!724137 () Bool)

(assert (=> b!456886 m!724137))

(declare-fun m!724139 () Bool)

(assert (=> b!456887 m!724139))

(assert (=> b!454629 m!719199))

(declare-fun b!456891 () Bool)

(declare-fun b_free!12705 () Bool)

(declare-fun b_next!12705 () Bool)

(assert (=> b!456891 (= b_free!12705 (not b_next!12705))))

(declare-fun t!71493 () Bool)

(declare-fun tb!45861 () Bool)

(assert (=> (and b!456891 (= (toValue!1674 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71493) tb!45861))

(declare-fun result!50462 () Bool)

(assert (= result!50462 result!50226))

(assert (=> d!173629 t!71493))

(declare-fun t!71495 () Bool)

(declare-fun tb!45863 () Bool)

(assert (=> (and b!456891 (= (toValue!1674 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toValue!1674 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71495) tb!45863))

(declare-fun result!50464 () Bool)

(assert (= result!50464 result!50288))

(assert (=> d!173851 t!71495))

(declare-fun tp!126575 () Bool)

(declare-fun b_and!49135 () Bool)

(assert (=> b!456891 (= tp!126575 (and (=> t!71493 result!50462) (=> t!71495 result!50464) b_and!49135))))

(declare-fun b_free!12707 () Bool)

(declare-fun b_next!12707 () Bool)

(assert (=> b!456891 (= b_free!12707 (not b_next!12707))))

(declare-fun t!71497 () Bool)

(declare-fun tb!45865 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202212)))))) t!71497) tb!45865))

(declare-fun result!50466 () Bool)

(assert (= result!50466 result!50206))

(assert (=> d!173571 t!71497))

(declare-fun tb!45867 () Bool)

(declare-fun t!71499 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465))))) t!71499) tb!45867))

(declare-fun result!50468 () Bool)

(assert (= result!50468 result!50138))

(assert (=> b!454639 t!71499))

(declare-fun t!71501 () Bool)

(declare-fun tb!45869 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465)))))) t!71501) tb!45869))

(declare-fun result!50470 () Bool)

(assert (= result!50470 result!50216))

(assert (=> b!455181 t!71501))

(assert (=> d!173371 t!71499))

(declare-fun t!71503 () Bool)

(declare-fun tb!45871 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202020 0))))) t!71503) tb!45871))

(declare-fun result!50472 () Bool)

(assert (= result!50472 result!50400))

(assert (=> d!174455 t!71503))

(declare-fun tb!45873 () Bool)

(declare-fun t!71505 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 call!31479)))) t!71505) tb!45873))

(declare-fun result!50474 () Bool)

(assert (= result!50474 result!50320))

(assert (=> d!173973 t!71505))

(declare-fun tb!45875 () Bool)

(declare-fun t!71507 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91833 call!31480 (ite c!91832 separatorToken!170 call!31479)))))) t!71507) tb!45875))

(declare-fun result!50476 () Bool)

(assert (= result!50476 result!50186))

(assert (=> d!173501 t!71507))

(declare-fun t!71509 () Bool)

(declare-fun tb!45877 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (Cons!4423 (h!9820 tokens!465) Nil!4423)))))) t!71509) tb!45877))

(declare-fun result!50478 () Bool)

(assert (= result!50478 result!50238))

(assert (=> d!173651 t!71509))

(declare-fun t!71511 () Bool)

(declare-fun tb!45879 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 call!31436)))) t!71511) tb!45879))

(declare-fun result!50480 () Bool)

(assert (= result!50480 result!50268))

(assert (=> d!173707 t!71511))

(declare-fun tb!45881 () Bool)

(declare-fun t!71513 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202031 0))))) t!71513) tb!45881))

(declare-fun result!50482 () Bool)

(assert (= result!50482 result!50196))

(assert (=> d!173541 t!71513))

(declare-fun t!71515 () Bool)

(declare-fun tb!45883 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (_1!2901 (get!1618 lt!202304)))))) t!71515) tb!45883))

(declare-fun result!50484 () Bool)

(assert (= result!50484 result!50298))

(assert (=> d!173859 t!71515))

(declare-fun tb!45885 () Bool)

(declare-fun t!71517 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 separatorToken!170)))) t!71517) tb!45885))

(declare-fun result!50486 () Bool)

(assert (= result!50486 result!50130))

(assert (=> b!454581 t!71517))

(assert (=> d!173363 t!71517))

(declare-fun tb!45887 () Bool)

(declare-fun t!71519 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (apply!1130 lt!202015 0))))) t!71519) tb!45887))

(declare-fun result!50488 () Bool)

(assert (= result!50488 result!50330))

(assert (=> d!174049 t!71519))

(declare-fun tb!45889 () Bool)

(declare-fun t!71521 () Bool)

(assert (=> (and b!456891 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (ite c!91770 call!31437 (ite c!91769 separatorToken!170 call!31436)))))) t!71521) tb!45889))

(declare-fun result!50490 () Bool)

(assert (= result!50490 result!50380))

(assert (=> d!174259 t!71521))

(assert (=> d!174253 t!71501))

(declare-fun b_and!49137 () Bool)

(declare-fun tp!126574 () Bool)

(assert (=> b!456891 (= tp!126574 (and (=> t!71503 result!50472) (=> t!71505 result!50474) (=> t!71507 result!50476) (=> t!71509 result!50478) (=> t!71515 result!50484) (=> t!71519 result!50488) (=> t!71517 result!50486) (=> t!71497 result!50466) (=> t!71511 result!50480) (=> t!71499 result!50468) (=> t!71521 result!50490) (=> t!71513 result!50482) (=> t!71501 result!50470) b_and!49137))))

(declare-fun e!279566 () Bool)

(assert (=> b!456891 (= e!279566 (and tp!126575 tp!126574))))

(declare-fun e!279569 () Bool)

(declare-fun tp!126572 () Bool)

(declare-fun b!456890 () Bool)

(assert (=> b!456890 (= e!279569 (and tp!126572 (inv!5492 (tag!1119 (h!9819 (t!71132 (t!71132 rules!1920))))) (inv!5495 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) e!279566))))

(declare-fun b!456889 () Bool)

(declare-fun e!279567 () Bool)

(declare-fun tp!126573 () Bool)

(assert (=> b!456889 (= e!279567 (and e!279569 tp!126573))))

(assert (=> b!455011 (= tp!126429 e!279567)))

(assert (= b!456890 b!456891))

(assert (= b!456889 b!456890))

(assert (= (and b!455011 ((_ is Cons!4422) (t!71132 (t!71132 rules!1920)))) b!456889))

(declare-fun m!724141 () Bool)

(assert (=> b!456890 m!724141))

(declare-fun m!724143 () Bool)

(assert (=> b!456890 m!724143))

(declare-fun b_lambda!18929 () Bool)

(assert (= b_lambda!18849 (or b!454216 b_lambda!18929)))

(declare-fun bs!56718 () Bool)

(declare-fun d!174585 () Bool)

(assert (= bs!56718 (and d!174585 b!454216)))

(assert (=> bs!56718 (= (dynLambda!2680 lambda!13277 (h!9820 (t!71133 tokens!465))) (not (isSeparator!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))))

(assert (=> b!455206 d!174585))

(declare-fun b_lambda!18931 () Bool)

(assert (= b_lambda!18875 (or d!173405 b_lambda!18931)))

(declare-fun bs!56719 () Bool)

(declare-fun d!174587 () Bool)

(assert (= bs!56719 (and d!174587 d!173405)))

(assert (=> bs!56719 (= (dynLambda!2680 lambda!13311 (h!9820 (list!1963 lt!202015))) (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (h!9820 (list!1963 lt!202015))))))

(assert (=> bs!56719 m!721225))

(assert (=> b!455694 d!174587))

(declare-fun b_lambda!18933 () Bool)

(assert (= b_lambda!18909 (or b!454621 b_lambda!18933)))

(declare-fun bs!56720 () Bool)

(declare-fun d!174589 () Bool)

(assert (= bs!56720 (and d!174589 b!454621)))

(assert (=> bs!56720 (= (dynLambda!2680 lambda!13301 (apply!1130 lt!202020 0)) (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (apply!1130 lt!202020 0)))))

(assert (=> bs!56720 m!719133))

(declare-fun m!724145 () Bool)

(assert (=> bs!56720 m!724145))

(assert (=> d!174447 d!174589))

(declare-fun b_lambda!18935 () Bool)

(assert (= b_lambda!18873 (or d!173433 b_lambda!18935)))

(declare-fun bs!56721 () Bool)

(declare-fun d!174591 () Bool)

(assert (= bs!56721 (and d!174591 d!173433)))

(assert (=> bs!56721 (= (dynLambda!2680 lambda!13313 (h!9820 (list!1963 lt!202020))) (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (h!9820 (list!1963 lt!202020))))))

(assert (=> bs!56721 m!721111))

(assert (=> b!455627 d!174591))

(declare-fun b_lambda!18937 () Bool)

(assert (= b_lambda!18899 (or (and b!454224 b_free!12679 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) (and b!456790 b_free!12703 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) (and b!455002 b_free!12695) (and b!454206 b_free!12675 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) (and b!455013 b_free!12699 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) (and b!454228 b_free!12683 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) (and b!456891 b_free!12707 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) b_lambda!18937)))

(declare-fun b_lambda!18939 () Bool)

(assert (= b_lambda!18871 (or b!454399 b_lambda!18939)))

(declare-fun bs!56722 () Bool)

(declare-fun d!174593 () Bool)

(assert (= bs!56722 (and d!174593 b!454399)))

(assert (=> bs!56722 (= (dynLambda!2680 lambda!13292 (h!9820 tokens!465)) (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (h!9820 tokens!465)))))

(assert (=> bs!56722 m!718425))

(assert (=> d!173875 d!174593))

(declare-fun b_lambda!18941 () Bool)

(assert (= b_lambda!18901 (or b!454602 b_lambda!18941)))

(declare-fun bs!56723 () Bool)

(declare-fun d!174595 () Bool)

(assert (= bs!56723 (and d!174595 b!454602)))

(assert (=> bs!56723 (= (dynLambda!2680 lambda!13299 (h!9820 (t!71133 tokens!465))) (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (h!9820 (t!71133 tokens!465))))))

(declare-fun m!724147 () Bool)

(assert (=> bs!56723 m!724147))

(assert (=> d!174255 d!174595))

(declare-fun b_lambda!18943 () Bool)

(assert (= b_lambda!18925 (or b!454217 b_lambda!18943)))

(assert (=> b!456696 d!173483))

(declare-fun b_lambda!18945 () Bool)

(assert (= b_lambda!18847 (or (and b!454224 b_free!12679 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 tokens!465)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) (and b!456790 b_free!12703 (= (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 (t!71133 tokens!465)))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) (and b!455002 b_free!12695) (and b!454206 b_free!12675 (= (toChars!1533 (transformation!859 (h!9819 rules!1920))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) (and b!455013 b_free!12699 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 rules!1920)))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) (and b!454228 b_free!12683 (= (toChars!1533 (transformation!859 (rule!1550 separatorToken!170))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) (and b!456891 b_free!12707 (= (toChars!1533 (transformation!859 (h!9819 (t!71132 (t!71132 rules!1920))))) (toChars!1533 (transformation!859 (rule!1550 (h!9820 (t!71133 tokens!465))))))) b_lambda!18945)))

(declare-fun b_lambda!18947 () Bool)

(assert (= b_lambda!18883 (or b!454367 b_lambda!18947)))

(declare-fun bs!56724 () Bool)

(declare-fun d!174597 () Bool)

(assert (= bs!56724 (and d!174597 b!454367)))

(assert (=> bs!56724 (= (dynLambda!2680 lambda!13284 (apply!1130 lt!202015 0)) (rulesProduceIndividualToken!494 thiss!17480 rules!1920 (apply!1130 lt!202015 0)))))

(assert (=> bs!56724 m!718691))

(declare-fun m!724149 () Bool)

(assert (=> bs!56724 m!724149))

(assert (=> d!174059 d!174597))

(declare-fun b_lambda!18949 () Bool)

(assert (= b_lambda!18923 (or b!454217 b_lambda!18949)))

(assert (=> d!174557 d!173483))

(check-sat (not tb!45721) (not b!456406) (not b_next!12675) (not b!456784) (not b!455666) (not b!456649) (not b!456130) (not b!455103) (not b!456441) (not d!173531) (not b!455865) (not b!455723) (not b!456484) (not d!174423) (not tb!45731) (not b!455137) (not b!455558) (not d!174429) (not b!455842) (not b_next!12683) (not b!456776) (not b!455812) (not d!173585) (not b!455163) (not b!456399) (not b!455177) (not b!455222) (not b!456448) (not b!456839) (not b_lambda!18931) (not b!455696) (not b!455626) (not b!456706) (not b_lambda!18903) (not d!173713) (not b_next!12707) (not b!455670) (not bm!31617) (not d!173655) (not b!456487) (not bm!31522) (not d!173509) (not b!455671) (not b!456514) (not b!455242) (not b!456486) (not b!456735) (not b!456752) (not d!173543) (not b!456823) (not b!456887) (not b!455800) (not d!174323) (not b!456283) (not d!174475) (not b!456415) (not b!456291) (not b!456208) (not b!455235) (not b!456511) (not b!455178) (not b!455534) (not b!456847) (not b!456478) (not d!173547) (not d!174063) (not b!456846) (not b!456840) (not b!455772) b_and!49109 (not b!455183) (not bm!31628) (not b_lambda!18845) (not d!174335) (not b!455150) (not b!455551) (not d!174299) (not bm!31545) (not bm!31555) (not b!455090) (not b!456884) (not b!455736) (not tb!45801) (not d!174467) (not b!455581) (not bm!31541) (not b!456281) (not b!455244) (not b!456781) (not b!455686) (not bm!31524) (not b!456212) (not b!456554) (not b_lambda!18869) b_and!48977 (not d!174023) (not b!455505) (not bm!31548) (not d!174259) (not b!456431) (not b!455123) (not d!173873) (not b!455846) (not bm!31585) (not b!456819) (not d!173829) (not b!456750) (not d!174419) (not b!455114) (not b!456831) (not b!456245) (not b!455186) (not bs!56722) (not d!174415) (not d!174411) (not b!456480) (not b!455816) (not b!456128) (not b!455239) (not b!455738) (not b!455844) (not bs!56724) (not b!455716) (not d!173709) (not bs!56723) (not b!455695) (not b_lambda!18837) (not bm!31608) (not b!455533) (not b!455657) (not b!455614) (not b!456653) (not b!456813) (not b!456521) (not b!456889) (not b!456389) (not d!173943) (not d!174465) (not d!174455) (not b!456490) (not d!174471) (not b!456700) (not b!455777) (not b!455643) (not b!456456) (not b!456213) (not b!456888) (not b!455769) (not b!455817) (not b!456475) (not d!173951) (not d!174209) (not b!455763) (not b!455524) (not d!174457) (not b!456445) (not b!455536) (not b!455545) (not d!173499) (not bm!31610) b_and!49107 (not b!455845) (not b!456397) (not bm!31603) (not d!173719) (not b!455613) (not b!456822) (not b!456127) (not b!455133) (not b!455699) (not b!455062) (not d!173645) (not d!173559) (not b!456761) (not b!455619) (not bm!31550) (not b!456849) (not bm!31547) (not b!455808) (not b!455193) (not b!456827) (not d!174069) (not b!456729) (not b!456395) (not d!174295) (not bm!31604) (not d!173837) (not d!173891) (not b!455732) (not b!456732) (not b!456811) (not b!456814) (not d!174013) (not b!456443) (not b!456403) (not d!173855) (not d!173869) (not b!455663) (not b!455689) (not d!174567) (not b_next!12679) (not b!455541) (not d!173835) (not b!456129) b_and!48973 (not b!455514) (not b!455654) (not d!173871) (not b!455847) (not b!455814) (not d!174249) (not d!173983) (not b!455659) (not d!173581) (not b!454629) (not b_next!12705) (not b!456835) (not b!455685) (not d!173613) (not b!455501) (not b!455766) (not b!455221) (not b!455638) (not bm!31523) (not b!455063) (not b!456385) b_and!49101 (not b!455656) (not d!173555) (not d!174009) (not b_lambda!18831) b_and!49131 (not b_lambda!18939) (not b!456470) (not b!456455) (not b!455813) (not d!173583) (not d!173575) (not bm!31616) (not b!456759) (not b!455593) (not b!455554) (not b!456852) (not b!455780) (not b!455064) (not d!174445) (not b!455529) (not d!173919) (not b!455223) (not b!456838) (not d!173595) (not b!455697) (not d!173591) (not bm!31584) (not b!455129) (not b!456767) (not b!455213) (not b!455508) (not b!456259) (not b!455200) (not b_lambda!18945) (not bm!31551) (not d!173525) (not b_next!12677) (not b!456650) (not b!456387) (not b!456435) (not bm!31559) (not b!456401) (not b!456176) (not b!455111) (not d!173945) (not d!173911) (not d!173569) (not b_next!12673) (not tb!45621) (not d!173631) (not d!174283) (not b_lambda!18843) (not b!456228) (not b!456488) (not d!174061) (not b_lambda!18879) (not d!173717) (not b!455314) (not b!455852) (not b!455770) (not d!173523) (not d!174003) (not b!455792) (not b!456432) (not d!174469) (not d!173921) (not d!173841) (not b!455790) (not b!455637) (not b!456751) (not b!456467) (not d!173941) (not b!456789) (not b!455707) (not b!455238) (not b!455049) (not b_lambda!18929) (not b!455179) (not b!456807) (not d!173955) (not d!173557) (not d!174051) (not d!173535) (not d!173565) b_and!49133 (not b!456398) (not b!455098) (not b!455132) (not d!173603) (not bm!31591) (not b!455698) (not d!173537) (not d!173651) (not b!455226) (not b!455809) (not bm!31554) (not b!455500) (not b!455612) (not b!455819) (not b_lambda!18943) b_and!48979 (not b!456821) (not b!456206) (not b_lambda!18937) (not b!455811) (not b!455737) (not b!456504) (not d!173969) (not b!455642) (not b_next!12697) (not d!174327) (not b!456805) (not b!455176) (not b!456788) (not b!455538) (not bm!31557) (not b_next!12701) (not b_lambda!18867) (not b!456704) (not b!456433) (not bm!31561) (not bm!31527) (not bm!31521) (not bm!31612) (not d!174461) (not b!456207) b_and!49103 (not b!455539) (not b!455182) (not b!455528) (not b!455246) (not b!455674) (not b!455553) (not b!456394) (not b!455750) (not tb!45591) (not b!456818) (not b!455728) (not bm!31582) (not d!173589) (not d!174067) (not bm!31589) (not b!455662) (not d!174233) (not d!173633) (not b!456386) (not b!455131) (not b!456829) (not b!456731) (not d!173549) (not d!173517) (not b!456209) (not b!455807) (not b!455149) (not d!174313) (not b!456758) (not b!456698) (not bm!31588) (not b!456383) (not bm!31601) (not d!174421) (not tb!45691) (not b!455668) (not b!456766) (not b!456510) (not d!174561) (not b!455703) (not b!455849) (not d!173649) (not b!456167) (not b!456780) (not b!456512) (not b!455155) (not d!173929) (not b!455207) (not b!456836) (not d!174427) (not b!456810) (not d!174257) (not b!456485) (not b_lambda!18851) (not b!456890) (not b!455639) (not b!455675) (not b!456252) (not d!174059) (not d!173935) (not b!455052) (not b!456825) (not b!456703) (not b!455204) (not b!456482) (not b!456648) (not d!174079) (not b!455548) (not d!174433) (not d!173903) (not d!174571) (not b!456785) (not b!456883) (not b!456802) (not d!173993) (not b!455316) (not d!174011) (not b!455543) (not b!455215) (not b!455644) (not b!455130) (not b!455319) (not b!455128) (not b!456388) (not b!455782) (not b!455667) (not d!173901) (not b!455550) (not b!456754) (not b!456791) (not b!455796) (not b!455669) (not d!174303) (not d!174297) (not b!455734) (not b!455760) (not b!456430) (not b_lambda!18841) (not b!455729) (not bm!31615) (not b_lambda!18881) (not d!174479) (not b!456463) (not b!455650) (not b!456809) (not b_lambda!18941) (not b!455624) (not b!456125) (not b!456701) (not d!173947) (not d!173587) (not d!173561) (not b_lambda!18947) (not b!455175) (not b!455220) (not b!456172) (not b!455810) (not b!455517) (not b!455704) (not d!173703) (not d!174551) (not b_lambda!18833) (not d!173529) (not d!173881) (not b!456100) (not d!174453) (not b!456705) (not b!456885) (not b!456498) (not d!174337) (not bm!31614) b_and!48971 (not d!173965) (not d!174077) (not b!456247) (not b!455717) (not d!173899) (not b!455511) (not b!455519) (not b!455851) (not d!173875) (not b!455754) (not b!455099) (not b!455799) (not b!455521) (not b!456529) (not b!455804) (not d!174029) (not b!456436) (not b!456447) (not b!455677) (not d!174043) (not b!456817) (not b!456792) (not b!456815) (not b!455217) (not b!455203) (not d!173895) (not b_next!12699) (not b!456782) (not b!455542) (not b!455742) (not b!455106) (not b!456765) (not b!456760) (not b!455202) (not bm!31619) (not d!174255) (not b!456801) (not b!456391) (not b!455584) (not bs!56721) (not d!174065) (not d!173577) (not b!456481) b_and!49135 (not b_next!12693) (not b!455665) (not b!456804) (not d!174473) (not d!174463) (not b!455116) (not d!174041) (not b!455765) (not bm!31605) (not b!454587) (not d!173551) (not b!455787) (not b!456734) (not bm!31556) (not b!455136) (not d!173927) (not b_next!12695) (not d!173859) (not d!173707) (not b!455592) (not d!174275) (not b_lambda!18949) (not b!456800) (not d!174033) (not d!174073) (not b!456214) (not b!455162) (not d!173953) (not b!456279) (not d!173617) (not b_lambda!18933) (not b!456272) (not d!174037) (not b!455771) (not tb!45701) (not d!173997) (not b!456457) (not b!456489) (not bs!56719) (not d!173599) (not b!456756) (not b!456842) (not b!455510) (not b!456393) (not b!456258) (not b!456517) (not b!455190) (not d!174049) (not d!173877) b_and!48975 (not b!455767) (not b!455701) (not d!174001) (not b!456404) (not b!455720) (not b!456495) (not d!174035) (not b!456458) (not b!456462) (not b!455748) (not b!456409) (not b!456274) (not b!455540) (not b!455318) (not b!456390) (not b!455556) (not b!456834) (not b!456095) (not b!455544) (not d!173637) (not b!455731) (not d!173563) (not b!455100) (not b!455126) (not b!455174) (not d!174007) b_and!49137 (not d!173521) (not b!456830) (not bs!56720) (not b!455087) (not b!456175) (not b!456755) (not b!456702) (not d!173933) (not b!455602) (not b!455513) (not b!456786) (not d!173853) (not b!455850) (not bm!31546) (not d!174021) (not d!174057) (not b!455746) (not b!455753) (not b!455660) (not d!173597) (not d!174293) (not b!456411) (not b!456695) (not d!174207) (not b!455154) (not b!456094) (not d!173553) (not bm!31600) (not b!455526) (not b!455152) (not b!455549) (not b_lambda!18835) (not bm!31587) (not b!455502) (not d!174055) (not d!174563) (not d!173501) (not b!456230) (not b!455755) (not b!456227) (not b_lambda!18827) (not b!455594) (not b!456560) (not b!456405) (not b!455795) (not d!173991) (not d!173999) (not d!174437) (not b!455043) (not bm!31553) (not d!173879) (not d!173657) (not b!455181) (not bm!31552) (not b!455587) (not b!455687) (not d!173601) (not b!455233) (not b!455144) (not b!455815) (not b!456275) (not d!174459) (not b_next!12703) (not d!173939) (not b!456522) (not b!456442) (not b!456407) (not b!456509) (not b!455864) (not b!455546) (not d!173545) (not b!455317) (not d!174071) (not b!455582) (not d!173861) (not tb!45641) (not b!455702) (not d!174409) (not b!455818) (not d!174565) (not d!174039) (not b!456126) (not b!455641) (not b!455507) (not b!455559) (not d!174447) (not b!455793) (not tb!45631) b_and!49105 (not b!455321) (not b!456293) (not b!456400) (not b!456180) (not d!174449) (not b!456410) (not b!455185) (not b!456174) (not d!174435) (not b_lambda!18861) (not b!455236) (not b!456257) (not b_lambda!18935) (not d!173985) (not b!456515) (not d!173533) (not d!173715) (not b!456440) (not b!456728) (not bm!31562) (not b!455620) (not d!174253) (not b!456697) (not b!456426) (not b!456519) (not b_next!12681) (not d!173541) (not b!456459) (not b_lambda!18853) (not d!173973) (not b!456652) (not d!173527) (not b_lambda!18829) (not b!455794) (not d!173909) (not d!174285) (not bm!31631) tp_is_empty!1979 (not b!455061) (not d!174053) (not b!455719) (not d!174019) (not tb!45781) (not d!173571) (not b!455523) (not b!456748) (not b!455118) (not bm!31618) (not d!173643) (not b!455225) (not d!173961) (not d!174331) (not d!173949) (not d!173621) (not b!456099) (not b!456848) (not d!174309) (not b!455725) (not d!173647) (not b!456507) (not b!456886) (not b!455313) (not b!455205) (not b!456513) (not b!456235) (not b!456516) (not b!455194) (not b!456806) (not b!456211) (not b!456292) (not d!173893) (not tb!45611) (not b!455724) (not bm!31609) (not b!455661) (not b_lambda!18911) (not tb!45601) (not d!173665) (not b!455628) (not b!456826) (not d!173857) (not b!456250) (not tb!45671) (not d!174025) (not b!456787) (not d!174441) (not d!173579))
(check-sat (not b_next!12707) b_and!49109 b_and!48977 b_and!49107 b_and!49133 b_and!48971 (not b_next!12699) (not b_next!12695) b_and!48975 b_and!49137 (not b_next!12703) b_and!49105 (not b_next!12681) (not b_next!12675) (not b_next!12683) (not b_next!12679) b_and!48973 b_and!49101 (not b_next!12705) b_and!49131 (not b_next!12677) (not b_next!12673) b_and!48979 (not b_next!12697) (not b_next!12701) b_and!49103 b_and!49135 (not b_next!12693))
