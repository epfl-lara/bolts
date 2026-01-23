; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!318782 () Bool)

(assert start!318782)

(declare-fun b!3410243 () Bool)

(declare-fun b_free!89281 () Bool)

(declare-fun b_next!89985 () Bool)

(assert (=> b!3410243 (= b_free!89281 (not b_next!89985))))

(declare-fun tp!1063568 () Bool)

(declare-fun b_and!238491 () Bool)

(assert (=> b!3410243 (= tp!1063568 b_and!238491)))

(declare-fun b_free!89283 () Bool)

(declare-fun b_next!89987 () Bool)

(assert (=> b!3410243 (= b_free!89283 (not b_next!89987))))

(declare-fun tp!1063566 () Bool)

(declare-fun b_and!238493 () Bool)

(assert (=> b!3410243 (= tp!1063566 b_and!238493)))

(declare-fun b!3410244 () Bool)

(declare-fun b_free!89285 () Bool)

(declare-fun b_next!89989 () Bool)

(assert (=> b!3410244 (= b_free!89285 (not b_next!89989))))

(declare-fun tp!1063567 () Bool)

(declare-fun b_and!238495 () Bool)

(assert (=> b!3410244 (= tp!1063567 b_and!238495)))

(declare-fun b_free!89287 () Bool)

(declare-fun b_next!89991 () Bool)

(assert (=> b!3410244 (= b_free!89287 (not b_next!89991))))

(declare-fun tp!1063562 () Bool)

(declare-fun b_and!238497 () Bool)

(assert (=> b!3410244 (= tp!1063562 b_and!238497)))

(declare-fun b!3410249 () Bool)

(declare-fun b_free!89289 () Bool)

(declare-fun b_next!89993 () Bool)

(assert (=> b!3410249 (= b_free!89289 (not b_next!89993))))

(declare-fun tp!1063564 () Bool)

(declare-fun b_and!238499 () Bool)

(assert (=> b!3410249 (= tp!1063564 b_and!238499)))

(declare-fun b_free!89291 () Bool)

(declare-fun b_next!89995 () Bool)

(assert (=> b!3410249 (= b_free!89291 (not b_next!89995))))

(declare-fun tp!1063573 () Bool)

(declare-fun b_and!238501 () Bool)

(assert (=> b!3410249 (= tp!1063573 b_and!238501)))

(declare-fun b!3410220 () Bool)

(declare-fun res!1379738 () Bool)

(declare-fun e!2116656 () Bool)

(assert (=> b!3410220 (=> res!1379738 e!2116656)))

(declare-datatypes ((C!20524 0))(
  ( (C!20525 (val!12310 Int)) )
))
(declare-datatypes ((Regex!10169 0))(
  ( (ElementMatch!10169 (c!581578 C!20524)) (Concat!15809 (regOne!20850 Regex!10169) (regTwo!20850 Regex!10169)) (EmptyExpr!10169) (Star!10169 (reg!10498 Regex!10169)) (EmptyLang!10169) (Union!10169 (regOne!20851 Regex!10169) (regTwo!20851 Regex!10169)) )
))
(declare-datatypes ((List!37156 0))(
  ( (Nil!37032) (Cons!37032 (h!42452 (_ BitVec 16)) (t!267187 List!37156)) )
))
(declare-datatypes ((TokenValue!5640 0))(
  ( (FloatLiteralValue!11280 (text!39925 List!37156)) (TokenValueExt!5639 (__x!23497 Int)) (Broken!28200 (value!174619 List!37156)) (Object!5763) (End!5640) (Def!5640) (Underscore!5640) (Match!5640) (Else!5640) (Error!5640) (Case!5640) (If!5640) (Extends!5640) (Abstract!5640) (Class!5640) (Val!5640) (DelimiterValue!11280 (del!5700 List!37156)) (KeywordValue!5646 (value!174620 List!37156)) (CommentValue!11280 (value!174621 List!37156)) (WhitespaceValue!11280 (value!174622 List!37156)) (IndentationValue!5640 (value!174623 List!37156)) (String!41533) (Int32!5640) (Broken!28201 (value!174624 List!37156)) (Boolean!5641) (Unit!52203) (OperatorValue!5643 (op!5700 List!37156)) (IdentifierValue!11280 (value!174625 List!37156)) (IdentifierValue!11281 (value!174626 List!37156)) (WhitespaceValue!11281 (value!174627 List!37156)) (True!11280) (False!11280) (Broken!28202 (value!174628 List!37156)) (Broken!28203 (value!174629 List!37156)) (True!11281) (RightBrace!5640) (RightBracket!5640) (Colon!5640) (Null!5640) (Comma!5640) (LeftBracket!5640) (False!11281) (LeftBrace!5640) (ImaginaryLiteralValue!5640 (text!39926 List!37156)) (StringLiteralValue!16920 (value!174630 List!37156)) (EOFValue!5640 (value!174631 List!37156)) (IdentValue!5640 (value!174632 List!37156)) (DelimiterValue!11281 (value!174633 List!37156)) (DedentValue!5640 (value!174634 List!37156)) (NewLineValue!5640 (value!174635 List!37156)) (IntegerValue!16920 (value!174636 (_ BitVec 32)) (text!39927 List!37156)) (IntegerValue!16921 (value!174637 Int) (text!39928 List!37156)) (Times!5640) (Or!5640) (Equal!5640) (Minus!5640) (Broken!28204 (value!174638 List!37156)) (And!5640) (Div!5640) (LessEqual!5640) (Mod!5640) (Concat!15810) (Not!5640) (Plus!5640) (SpaceValue!5640 (value!174639 List!37156)) (IntegerValue!16922 (value!174640 Int) (text!39929 List!37156)) (StringLiteralValue!16921 (text!39930 List!37156)) (FloatLiteralValue!11281 (text!39931 List!37156)) (BytesLiteralValue!5640 (value!174641 List!37156)) (CommentValue!11281 (value!174642 List!37156)) (StringLiteralValue!16922 (value!174643 List!37156)) (ErrorTokenValue!5640 (msg!5701 List!37156)) )
))
(declare-datatypes ((List!37157 0))(
  ( (Nil!37033) (Cons!37033 (h!42453 C!20524) (t!267188 List!37157)) )
))
(declare-datatypes ((IArray!22395 0))(
  ( (IArray!22396 (innerList!11255 List!37157)) )
))
(declare-datatypes ((Conc!11195 0))(
  ( (Node!11195 (left!28878 Conc!11195) (right!29208 Conc!11195) (csize!22620 Int) (cheight!11406 Int)) (Leaf!17511 (xs!14357 IArray!22395) (csize!22621 Int)) (Empty!11195) )
))
(declare-datatypes ((BalanceConc!22004 0))(
  ( (BalanceConc!22005 (c!581579 Conc!11195)) )
))
(declare-datatypes ((String!41534 0))(
  ( (String!41535 (value!174644 String)) )
))
(declare-datatypes ((TokenValueInjection!10708 0))(
  ( (TokenValueInjection!10709 (toValue!7622 Int) (toChars!7481 Int)) )
))
(declare-datatypes ((Rule!10620 0))(
  ( (Rule!10621 (regex!5410 Regex!10169) (tag!6002 String!41534) (isSeparator!5410 Bool) (transformation!5410 TokenValueInjection!10708)) )
))
(declare-datatypes ((Token!10186 0))(
  ( (Token!10187 (value!174645 TokenValue!5640) (rule!7976 Rule!10620) (size!28052 Int) (originalCharacters!6124 List!37157)) )
))
(declare-datatypes ((List!37158 0))(
  ( (Nil!37034) (Cons!37034 (h!42454 Token!10186) (t!267189 List!37158)) )
))
(declare-fun tokens!494 () List!37158)

(declare-datatypes ((LexerInterface!4999 0))(
  ( (LexerInterfaceExt!4996 (__x!23498 Int)) (Lexer!4997) )
))
(declare-fun thiss!18206 () LexerInterface!4999)

(declare-datatypes ((List!37159 0))(
  ( (Nil!37035) (Cons!37035 (h!42455 Rule!10620) (t!267190 List!37159)) )
))
(declare-fun rules!2135 () List!37159)

(declare-fun rulesProduceIndividualToken!2491 (LexerInterface!4999 List!37159 Token!10186) Bool)

(assert (=> b!3410220 (= res!1379738 (not (rulesProduceIndividualToken!2491 thiss!18206 rules!2135 (h!42454 tokens!494))))))

(declare-fun e!2116636 () Bool)

(declare-fun tp!1063569 () Bool)

(declare-fun e!2116644 () Bool)

(declare-fun b!3410222 () Bool)

(declare-fun inv!50156 (String!41534) Bool)

(declare-fun inv!50159 (TokenValueInjection!10708) Bool)

(assert (=> b!3410222 (= e!2116644 (and tp!1063569 (inv!50156 (tag!6002 (rule!7976 (h!42454 tokens!494)))) (inv!50159 (transformation!5410 (rule!7976 (h!42454 tokens!494)))) e!2116636))))

(declare-fun b!3410223 () Bool)

(declare-fun e!2116632 () Bool)

(declare-fun e!2116649 () Bool)

(declare-fun tp!1063563 () Bool)

(assert (=> b!3410223 (= e!2116632 (and e!2116649 tp!1063563))))

(declare-fun b!3410224 () Bool)

(declare-fun res!1379733 () Bool)

(declare-fun e!2116645 () Bool)

(assert (=> b!3410224 (=> (not res!1379733) (not e!2116645))))

(declare-fun separatorToken!241 () Token!10186)

(assert (=> b!3410224 (= res!1379733 (rulesProduceIndividualToken!2491 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3410225 () Bool)

(declare-fun res!1379752 () Bool)

(assert (=> b!3410225 (=> (not res!1379752) (not e!2116645))))

(declare-fun lambda!121189 () Int)

(declare-fun forall!7853 (List!37158 Int) Bool)

(assert (=> b!3410225 (= res!1379752 (forall!7853 tokens!494 lambda!121189))))

(declare-fun b!3410226 () Bool)

(declare-fun e!2116641 () Bool)

(declare-fun e!2116648 () Bool)

(assert (=> b!3410226 (= e!2116641 e!2116648)))

(declare-fun res!1379735 () Bool)

(assert (=> b!3410226 (=> res!1379735 e!2116648)))

(declare-fun lt!1159925 () BalanceConc!22004)

(declare-fun lt!1159923 () List!37157)

(declare-datatypes ((tuple2!36680 0))(
  ( (tuple2!36681 (_1!21474 Token!10186) (_2!21474 List!37157)) )
))
(declare-datatypes ((Option!7457 0))(
  ( (None!7456) (Some!7456 (v!36672 tuple2!36680)) )
))
(declare-fun maxPrefix!2559 (LexerInterface!4999 List!37159 List!37157) Option!7457)

(declare-fun apply!8661 (TokenValueInjection!10708 BalanceConc!22004) TokenValue!5640)

(declare-fun size!28053 (List!37157) Int)

(assert (=> b!3410226 (= res!1379735 (not (= (maxPrefix!2559 thiss!18206 rules!2135 lt!1159923) (Some!7456 (tuple2!36681 (Token!10187 (apply!8661 (transformation!5410 (rule!7976 (h!42454 tokens!494))) lt!1159925) (rule!7976 (h!42454 tokens!494)) (size!28053 lt!1159923) lt!1159923) Nil!37033)))))))

(declare-datatypes ((Unit!52204 0))(
  ( (Unit!52205) )
))
(declare-fun lt!1159933 () Unit!52204)

(declare-fun lemmaSemiInverse!1241 (TokenValueInjection!10708 BalanceConc!22004) Unit!52204)

(assert (=> b!3410226 (= lt!1159933 (lemmaSemiInverse!1241 (transformation!5410 (rule!7976 (h!42454 tokens!494))) lt!1159925))))

(declare-fun b!3410227 () Bool)

(declare-fun res!1379732 () Bool)

(assert (=> b!3410227 (=> (not res!1379732) (not e!2116645))))

(assert (=> b!3410227 (= res!1379732 (isSeparator!5410 (rule!7976 separatorToken!241)))))

(declare-fun b!3410228 () Bool)

(declare-fun e!2116647 () Bool)

(assert (=> b!3410228 (= e!2116647 e!2116656)))

(declare-fun res!1379745 () Bool)

(assert (=> b!3410228 (=> res!1379745 e!2116656)))

(declare-fun lt!1159928 () List!37157)

(declare-fun lt!1159922 () List!37157)

(assert (=> b!3410228 (= res!1379745 (or (not (= lt!1159928 lt!1159923)) (not (= lt!1159922 lt!1159923))))))

(declare-fun list!13449 (BalanceConc!22004) List!37157)

(declare-fun charsOf!3424 (Token!10186) BalanceConc!22004)

(assert (=> b!3410228 (= lt!1159923 (list!13449 (charsOf!3424 (h!42454 tokens!494))))))

(declare-fun b!3410229 () Bool)

(declare-fun res!1379741 () Bool)

(assert (=> b!3410229 (=> (not res!1379741) (not e!2116645))))

(declare-fun isEmpty!21325 (List!37159) Bool)

(assert (=> b!3410229 (= res!1379741 (not (isEmpty!21325 rules!2135)))))

(declare-fun b!3410230 () Bool)

(declare-fun res!1379742 () Bool)

(assert (=> b!3410230 (=> res!1379742 e!2116641)))

(declare-fun isEmpty!21326 (List!37157) Bool)

(assert (=> b!3410230 (= res!1379742 (isEmpty!21326 lt!1159923))))

(declare-fun b!3410231 () Bool)

(declare-fun e!2116651 () Bool)

(declare-fun e!2116638 () Bool)

(assert (=> b!3410231 (= e!2116651 e!2116638)))

(declare-fun res!1379750 () Bool)

(assert (=> b!3410231 (=> res!1379750 e!2116638)))

(declare-fun lt!1159915 () List!37157)

(declare-fun lt!1159918 () List!37157)

(assert (=> b!3410231 (= res!1379750 (not (= lt!1159915 lt!1159918)))))

(declare-fun lt!1159926 () List!37157)

(declare-fun lt!1159934 () List!37157)

(declare-fun ++!9097 (List!37157 List!37157) List!37157)

(assert (=> b!3410231 (= lt!1159918 (++!9097 (++!9097 lt!1159923 lt!1159934) lt!1159926))))

(declare-fun e!2116631 () Bool)

(declare-fun tp!1063565 () Bool)

(declare-fun b!3410232 () Bool)

(declare-fun inv!21 (TokenValue!5640) Bool)

(assert (=> b!3410232 (= e!2116631 (and (inv!21 (value!174645 (h!42454 tokens!494))) e!2116644 tp!1063565))))

(declare-fun b!3410233 () Bool)

(declare-fun matchR!4753 (Regex!10169 List!37157) Bool)

(assert (=> b!3410233 (= e!2116648 (matchR!4753 (regex!5410 (rule!7976 (h!42454 tokens!494))) lt!1159923))))

(declare-fun ruleValid!1720 (LexerInterface!4999 Rule!10620) Bool)

(assert (=> b!3410233 (ruleValid!1720 thiss!18206 (rule!7976 (h!42454 tokens!494)))))

(declare-fun lt!1159914 () Unit!52204)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!942 (LexerInterface!4999 Rule!10620 List!37159) Unit!52204)

(assert (=> b!3410233 (= lt!1159914 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!942 thiss!18206 (rule!7976 (h!42454 tokens!494)) rules!2135))))

(declare-fun b!3410234 () Bool)

(declare-fun e!2116634 () Bool)

(declare-fun lt!1159917 () Rule!10620)

(assert (=> b!3410234 (= e!2116634 (= (rule!7976 (h!42454 tokens!494)) lt!1159917))))

(declare-fun b!3410235 () Bool)

(declare-fun res!1379739 () Bool)

(assert (=> b!3410235 (=> (not res!1379739) (not e!2116645))))

(declare-datatypes ((IArray!22397 0))(
  ( (IArray!22398 (innerList!11256 List!37158)) )
))
(declare-datatypes ((Conc!11196 0))(
  ( (Node!11196 (left!28879 Conc!11196) (right!29209 Conc!11196) (csize!22622 Int) (cheight!11407 Int)) (Leaf!17512 (xs!14358 IArray!22397) (csize!22623 Int)) (Empty!11196) )
))
(declare-datatypes ((BalanceConc!22006 0))(
  ( (BalanceConc!22007 (c!581580 Conc!11196)) )
))
(declare-fun rulesProduceEachTokenIndividually!1450 (LexerInterface!4999 List!37159 BalanceConc!22006) Bool)

(declare-fun seqFromList!3873 (List!37158) BalanceConc!22006)

(assert (=> b!3410235 (= res!1379739 (rulesProduceEachTokenIndividually!1450 thiss!18206 rules!2135 (seqFromList!3873 tokens!494)))))

(declare-fun res!1379731 () Bool)

(assert (=> start!318782 (=> (not res!1379731) (not e!2116645))))

(get-info :version)

(assert (=> start!318782 (= res!1379731 ((_ is Lexer!4997) thiss!18206))))

(assert (=> start!318782 e!2116645))

(assert (=> start!318782 true))

(assert (=> start!318782 e!2116632))

(declare-fun e!2116652 () Bool)

(assert (=> start!318782 e!2116652))

(declare-fun e!2116633 () Bool)

(declare-fun inv!50160 (Token!10186) Bool)

(assert (=> start!318782 (and (inv!50160 separatorToken!241) e!2116633)))

(declare-fun e!2116653 () Bool)

(declare-fun tp!1063572 () Bool)

(declare-fun b!3410221 () Bool)

(assert (=> b!3410221 (= e!2116649 (and tp!1063572 (inv!50156 (tag!6002 (h!42455 rules!2135))) (inv!50159 (transformation!5410 (h!42455 rules!2135))) e!2116653))))

(declare-fun b!3410236 () Bool)

(declare-fun e!2116643 () Bool)

(assert (=> b!3410236 (= e!2116643 e!2116651)))

(declare-fun res!1379744 () Bool)

(assert (=> b!3410236 (=> res!1379744 e!2116651)))

(declare-fun printWithSeparatorTokenList!286 (LexerInterface!4999 List!37158 Token!10186) List!37157)

(assert (=> b!3410236 (= res!1379744 (not (= lt!1159926 (++!9097 (++!9097 (list!13449 (charsOf!3424 (h!42454 (t!267189 tokens!494)))) lt!1159934) (printWithSeparatorTokenList!286 thiss!18206 (t!267189 (t!267189 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1159916 () List!37157)

(assert (=> b!3410236 (= lt!1159916 (++!9097 lt!1159934 lt!1159926))))

(assert (=> b!3410236 (= lt!1159934 (list!13449 (charsOf!3424 separatorToken!241)))))

(assert (=> b!3410236 (= lt!1159926 (printWithSeparatorTokenList!286 thiss!18206 (t!267189 tokens!494) separatorToken!241))))

(assert (=> b!3410236 (= lt!1159915 (printWithSeparatorTokenList!286 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3410237 () Bool)

(declare-fun e!2116635 () Bool)

(assert (=> b!3410237 (= e!2116635 e!2116643)))

(declare-fun res!1379747 () Bool)

(assert (=> b!3410237 (=> res!1379747 e!2116643)))

(assert (=> b!3410237 (= res!1379747 (or (isSeparator!5410 (rule!7976 (h!42454 tokens!494))) (isSeparator!5410 (rule!7976 (h!42454 (t!267189 tokens!494))))))))

(declare-fun lt!1159921 () Unit!52204)

(declare-fun forallContained!1357 (List!37158 Int Token!10186) Unit!52204)

(assert (=> b!3410237 (= lt!1159921 (forallContained!1357 tokens!494 lambda!121189 (h!42454 (t!267189 tokens!494))))))

(declare-fun lt!1159930 () Unit!52204)

(assert (=> b!3410237 (= lt!1159930 (forallContained!1357 tokens!494 lambda!121189 (h!42454 tokens!494)))))

(declare-fun b!3410238 () Bool)

(declare-fun e!2116639 () Bool)

(assert (=> b!3410238 (= e!2116638 e!2116639)))

(declare-fun res!1379746 () Bool)

(assert (=> b!3410238 (=> res!1379746 e!2116639)))

(declare-fun lt!1159927 () List!37157)

(assert (=> b!3410238 (= res!1379746 (not (= lt!1159915 lt!1159927)))))

(assert (=> b!3410238 (= lt!1159918 lt!1159927)))

(assert (=> b!3410238 (= lt!1159927 (++!9097 lt!1159923 lt!1159916))))

(declare-fun lt!1159924 () Unit!52204)

(declare-fun lemmaConcatAssociativity!1918 (List!37157 List!37157 List!37157) Unit!52204)

(assert (=> b!3410238 (= lt!1159924 (lemmaConcatAssociativity!1918 lt!1159923 lt!1159934 lt!1159926))))

(declare-fun b!3410239 () Bool)

(declare-fun res!1379748 () Bool)

(assert (=> b!3410239 (=> res!1379748 e!2116641)))

(assert (=> b!3410239 (= res!1379748 (not (= lt!1159923 (++!9097 lt!1159923 Nil!37033))))))

(declare-fun tp!1063574 () Bool)

(declare-fun b!3410240 () Bool)

(declare-fun e!2116646 () Bool)

(declare-fun e!2116655 () Bool)

(assert (=> b!3410240 (= e!2116646 (and tp!1063574 (inv!50156 (tag!6002 (rule!7976 separatorToken!241))) (inv!50159 (transformation!5410 (rule!7976 separatorToken!241))) e!2116655))))

(declare-fun b!3410241 () Bool)

(declare-fun res!1379740 () Bool)

(assert (=> b!3410241 (=> (not res!1379740) (not e!2116645))))

(declare-fun rulesInvariant!4396 (LexerInterface!4999 List!37159) Bool)

(assert (=> b!3410241 (= res!1379740 (rulesInvariant!4396 thiss!18206 rules!2135))))

(declare-fun b!3410242 () Bool)

(assert (=> b!3410242 (= e!2116639 e!2116641)))

(declare-fun res!1379749 () Bool)

(assert (=> b!3410242 (=> res!1379749 e!2116641)))

(declare-fun contains!6819 (List!37159 Rule!10620) Bool)

(assert (=> b!3410242 (= res!1379749 (not (contains!6819 rules!2135 (rule!7976 (h!42454 tokens!494)))))))

(declare-fun e!2116637 () Bool)

(assert (=> b!3410242 e!2116637))

(declare-fun res!1379753 () Bool)

(assert (=> b!3410242 (=> (not res!1379753) (not e!2116637))))

(declare-datatypes ((Option!7458 0))(
  ( (None!7457) (Some!7457 (v!36673 Rule!10620)) )
))
(declare-fun lt!1159929 () Option!7458)

(declare-fun isDefined!5756 (Option!7458) Bool)

(assert (=> b!3410242 (= res!1379753 (isDefined!5756 lt!1159929))))

(declare-fun getRuleFromTag!1053 (LexerInterface!4999 List!37159 String!41534) Option!7458)

(assert (=> b!3410242 (= lt!1159929 (getRuleFromTag!1053 thiss!18206 rules!2135 (tag!6002 (rule!7976 (h!42454 tokens!494)))))))

(declare-fun lt!1159931 () Unit!52204)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1053 (LexerInterface!4999 List!37159 List!37157 Token!10186) Unit!52204)

(assert (=> b!3410242 (= lt!1159931 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1053 thiss!18206 rules!2135 lt!1159923 (h!42454 tokens!494)))))

(declare-fun lt!1159932 () Unit!52204)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!988 (LexerInterface!4999 List!37159 List!37158 Token!10186) Unit!52204)

(assert (=> b!3410242 (= lt!1159932 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!988 thiss!18206 rules!2135 tokens!494 (h!42454 tokens!494)))))

(assert (=> b!3410243 (= e!2116636 (and tp!1063568 tp!1063566))))

(assert (=> b!3410244 (= e!2116653 (and tp!1063567 tp!1063562))))

(declare-fun b!3410245 () Bool)

(declare-fun res!1379737 () Bool)

(assert (=> b!3410245 (=> (not res!1379737) (not e!2116645))))

(assert (=> b!3410245 (= res!1379737 (and (not ((_ is Nil!37034) tokens!494)) (not ((_ is Nil!37034) (t!267189 tokens!494)))))))

(declare-fun b!3410246 () Bool)

(assert (=> b!3410246 (= e!2116656 e!2116635)))

(declare-fun res!1379743 () Bool)

(assert (=> b!3410246 (=> res!1379743 e!2116635)))

(declare-fun isEmpty!21327 (BalanceConc!22006) Bool)

(declare-datatypes ((tuple2!36682 0))(
  ( (tuple2!36683 (_1!21475 BalanceConc!22006) (_2!21475 BalanceConc!22004)) )
))
(declare-fun lex!2325 (LexerInterface!4999 List!37159 BalanceConc!22004) tuple2!36682)

(assert (=> b!3410246 (= res!1379743 (isEmpty!21327 (_1!21475 (lex!2325 thiss!18206 rules!2135 lt!1159925))))))

(declare-fun seqFromList!3874 (List!37157) BalanceConc!22004)

(assert (=> b!3410246 (= lt!1159925 (seqFromList!3874 lt!1159923))))

(declare-fun tp!1063571 () Bool)

(declare-fun b!3410247 () Bool)

(assert (=> b!3410247 (= e!2116652 (and (inv!50160 (h!42454 tokens!494)) e!2116631 tp!1063571))))

(declare-fun b!3410248 () Bool)

(assert (=> b!3410248 (= e!2116645 (not e!2116647))))

(declare-fun res!1379734 () Bool)

(assert (=> b!3410248 (=> res!1379734 e!2116647)))

(assert (=> b!3410248 (= res!1379734 (not (= lt!1159922 lt!1159928)))))

(declare-fun printList!1547 (LexerInterface!4999 List!37158) List!37157)

(assert (=> b!3410248 (= lt!1159928 (printList!1547 thiss!18206 (Cons!37034 (h!42454 tokens!494) Nil!37034)))))

(declare-fun lt!1159919 () BalanceConc!22004)

(assert (=> b!3410248 (= lt!1159922 (list!13449 lt!1159919))))

(declare-fun lt!1159920 () BalanceConc!22006)

(declare-fun printTailRec!1494 (LexerInterface!4999 BalanceConc!22006 Int BalanceConc!22004) BalanceConc!22004)

(assert (=> b!3410248 (= lt!1159919 (printTailRec!1494 thiss!18206 lt!1159920 0 (BalanceConc!22005 Empty!11195)))))

(declare-fun print!2064 (LexerInterface!4999 BalanceConc!22006) BalanceConc!22004)

(assert (=> b!3410248 (= lt!1159919 (print!2064 thiss!18206 lt!1159920))))

(declare-fun singletonSeq!2506 (Token!10186) BalanceConc!22006)

(assert (=> b!3410248 (= lt!1159920 (singletonSeq!2506 (h!42454 tokens!494)))))

(assert (=> b!3410249 (= e!2116655 (and tp!1063564 tp!1063573))))

(declare-fun b!3410250 () Bool)

(declare-fun tp!1063570 () Bool)

(assert (=> b!3410250 (= e!2116633 (and (inv!21 (value!174645 separatorToken!241)) e!2116646 tp!1063570))))

(declare-fun b!3410251 () Bool)

(assert (=> b!3410251 (= e!2116637 e!2116634)))

(declare-fun res!1379751 () Bool)

(assert (=> b!3410251 (=> (not res!1379751) (not e!2116634))))

(assert (=> b!3410251 (= res!1379751 (matchR!4753 (regex!5410 lt!1159917) lt!1159923))))

(declare-fun get!11830 (Option!7458) Rule!10620)

(assert (=> b!3410251 (= lt!1159917 (get!11830 lt!1159929))))

(declare-fun b!3410252 () Bool)

(declare-fun res!1379736 () Bool)

(assert (=> b!3410252 (=> (not res!1379736) (not e!2116645))))

(declare-fun sepAndNonSepRulesDisjointChars!1604 (List!37159 List!37159) Bool)

(assert (=> b!3410252 (= res!1379736 (sepAndNonSepRulesDisjointChars!1604 rules!2135 rules!2135))))

(assert (= (and start!318782 res!1379731) b!3410229))

(assert (= (and b!3410229 res!1379741) b!3410241))

(assert (= (and b!3410241 res!1379740) b!3410235))

(assert (= (and b!3410235 res!1379739) b!3410224))

(assert (= (and b!3410224 res!1379733) b!3410227))

(assert (= (and b!3410227 res!1379732) b!3410225))

(assert (= (and b!3410225 res!1379752) b!3410252))

(assert (= (and b!3410252 res!1379736) b!3410245))

(assert (= (and b!3410245 res!1379737) b!3410248))

(assert (= (and b!3410248 (not res!1379734)) b!3410228))

(assert (= (and b!3410228 (not res!1379745)) b!3410220))

(assert (= (and b!3410220 (not res!1379738)) b!3410246))

(assert (= (and b!3410246 (not res!1379743)) b!3410237))

(assert (= (and b!3410237 (not res!1379747)) b!3410236))

(assert (= (and b!3410236 (not res!1379744)) b!3410231))

(assert (= (and b!3410231 (not res!1379750)) b!3410238))

(assert (= (and b!3410238 (not res!1379746)) b!3410242))

(assert (= (and b!3410242 res!1379753) b!3410251))

(assert (= (and b!3410251 res!1379751) b!3410234))

(assert (= (and b!3410242 (not res!1379749)) b!3410239))

(assert (= (and b!3410239 (not res!1379748)) b!3410230))

(assert (= (and b!3410230 (not res!1379742)) b!3410226))

(assert (= (and b!3410226 (not res!1379735)) b!3410233))

(assert (= b!3410221 b!3410244))

(assert (= b!3410223 b!3410221))

(assert (= (and start!318782 ((_ is Cons!37035) rules!2135)) b!3410223))

(assert (= b!3410222 b!3410243))

(assert (= b!3410232 b!3410222))

(assert (= b!3410247 b!3410232))

(assert (= (and start!318782 ((_ is Cons!37034) tokens!494)) b!3410247))

(assert (= b!3410240 b!3410249))

(assert (= b!3410250 b!3410240))

(assert (= start!318782 b!3410250))

(declare-fun m!3787173 () Bool)

(assert (=> b!3410238 m!3787173))

(declare-fun m!3787175 () Bool)

(assert (=> b!3410238 m!3787175))

(declare-fun m!3787177 () Bool)

(assert (=> b!3410229 m!3787177))

(declare-fun m!3787179 () Bool)

(assert (=> b!3410239 m!3787179))

(declare-fun m!3787181 () Bool)

(assert (=> b!3410225 m!3787181))

(declare-fun m!3787183 () Bool)

(assert (=> b!3410251 m!3787183))

(declare-fun m!3787185 () Bool)

(assert (=> b!3410251 m!3787185))

(declare-fun m!3787187 () Bool)

(assert (=> b!3410235 m!3787187))

(assert (=> b!3410235 m!3787187))

(declare-fun m!3787189 () Bool)

(assert (=> b!3410235 m!3787189))

(declare-fun m!3787191 () Bool)

(assert (=> b!3410233 m!3787191))

(declare-fun m!3787193 () Bool)

(assert (=> b!3410233 m!3787193))

(declare-fun m!3787195 () Bool)

(assert (=> b!3410233 m!3787195))

(declare-fun m!3787197 () Bool)

(assert (=> b!3410231 m!3787197))

(assert (=> b!3410231 m!3787197))

(declare-fun m!3787199 () Bool)

(assert (=> b!3410231 m!3787199))

(declare-fun m!3787201 () Bool)

(assert (=> b!3410242 m!3787201))

(declare-fun m!3787203 () Bool)

(assert (=> b!3410242 m!3787203))

(declare-fun m!3787205 () Bool)

(assert (=> b!3410242 m!3787205))

(declare-fun m!3787207 () Bool)

(assert (=> b!3410242 m!3787207))

(declare-fun m!3787209 () Bool)

(assert (=> b!3410242 m!3787209))

(declare-fun m!3787211 () Bool)

(assert (=> start!318782 m!3787211))

(declare-fun m!3787213 () Bool)

(assert (=> b!3410228 m!3787213))

(assert (=> b!3410228 m!3787213))

(declare-fun m!3787215 () Bool)

(assert (=> b!3410228 m!3787215))

(declare-fun m!3787217 () Bool)

(assert (=> b!3410222 m!3787217))

(declare-fun m!3787219 () Bool)

(assert (=> b!3410222 m!3787219))

(declare-fun m!3787221 () Bool)

(assert (=> b!3410236 m!3787221))

(declare-fun m!3787223 () Bool)

(assert (=> b!3410236 m!3787223))

(declare-fun m!3787225 () Bool)

(assert (=> b!3410236 m!3787225))

(declare-fun m!3787227 () Bool)

(assert (=> b!3410236 m!3787227))

(declare-fun m!3787229 () Bool)

(assert (=> b!3410236 m!3787229))

(declare-fun m!3787231 () Bool)

(assert (=> b!3410236 m!3787231))

(declare-fun m!3787233 () Bool)

(assert (=> b!3410236 m!3787233))

(assert (=> b!3410236 m!3787223))

(declare-fun m!3787235 () Bool)

(assert (=> b!3410236 m!3787235))

(assert (=> b!3410236 m!3787229))

(declare-fun m!3787237 () Bool)

(assert (=> b!3410236 m!3787237))

(declare-fun m!3787239 () Bool)

(assert (=> b!3410236 m!3787239))

(assert (=> b!3410236 m!3787221))

(assert (=> b!3410236 m!3787227))

(assert (=> b!3410236 m!3787239))

(declare-fun m!3787241 () Bool)

(assert (=> b!3410221 m!3787241))

(declare-fun m!3787243 () Bool)

(assert (=> b!3410221 m!3787243))

(declare-fun m!3787245 () Bool)

(assert (=> b!3410248 m!3787245))

(declare-fun m!3787247 () Bool)

(assert (=> b!3410248 m!3787247))

(declare-fun m!3787249 () Bool)

(assert (=> b!3410248 m!3787249))

(declare-fun m!3787251 () Bool)

(assert (=> b!3410248 m!3787251))

(declare-fun m!3787253 () Bool)

(assert (=> b!3410248 m!3787253))

(declare-fun m!3787255 () Bool)

(assert (=> b!3410241 m!3787255))

(declare-fun m!3787257 () Bool)

(assert (=> b!3410247 m!3787257))

(declare-fun m!3787259 () Bool)

(assert (=> b!3410230 m!3787259))

(declare-fun m!3787261 () Bool)

(assert (=> b!3410237 m!3787261))

(declare-fun m!3787263 () Bool)

(assert (=> b!3410237 m!3787263))

(declare-fun m!3787265 () Bool)

(assert (=> b!3410232 m!3787265))

(declare-fun m!3787267 () Bool)

(assert (=> b!3410226 m!3787267))

(declare-fun m!3787269 () Bool)

(assert (=> b!3410226 m!3787269))

(declare-fun m!3787271 () Bool)

(assert (=> b!3410226 m!3787271))

(declare-fun m!3787273 () Bool)

(assert (=> b!3410226 m!3787273))

(declare-fun m!3787275 () Bool)

(assert (=> b!3410252 m!3787275))

(declare-fun m!3787277 () Bool)

(assert (=> b!3410224 m!3787277))

(declare-fun m!3787279 () Bool)

(assert (=> b!3410246 m!3787279))

(declare-fun m!3787281 () Bool)

(assert (=> b!3410246 m!3787281))

(declare-fun m!3787283 () Bool)

(assert (=> b!3410246 m!3787283))

(declare-fun m!3787285 () Bool)

(assert (=> b!3410220 m!3787285))

(declare-fun m!3787287 () Bool)

(assert (=> b!3410250 m!3787287))

(declare-fun m!3787289 () Bool)

(assert (=> b!3410240 m!3787289))

(declare-fun m!3787291 () Bool)

(assert (=> b!3410240 m!3787291))

(check-sat (not start!318782) (not b!3410224) (not b_next!89995) b_and!238499 (not b!3410233) (not b!3410248) (not b!3410223) b_and!238493 (not b!3410228) (not b!3410222) b_and!238497 (not b!3410225) (not b!3410221) (not b_next!89991) (not b!3410241) (not b!3410239) (not b!3410247) (not b!3410226) (not b_next!89989) (not b_next!89987) (not b!3410220) (not b!3410230) (not b_next!89993) (not b!3410238) (not b!3410237) b_and!238491 (not b!3410232) (not b!3410250) (not b!3410229) (not b!3410235) (not b!3410242) (not b!3410252) (not b!3410236) (not b!3410246) (not b!3410231) b_and!238495 (not b!3410240) (not b_next!89985) b_and!238501 (not b!3410251))
(check-sat b_and!238497 (not b_next!89991) (not b_next!89995) b_and!238499 (not b_next!89989) (not b_next!89987) (not b_next!89993) b_and!238491 b_and!238493 b_and!238495 (not b_next!89985) b_and!238501)
