; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48868 () Bool)

(assert start!48868)

(declare-fun b!531742 () Bool)

(declare-fun b_free!14377 () Bool)

(declare-fun b_next!14393 () Bool)

(assert (=> b!531742 (= b_free!14377 (not b_next!14393))))

(declare-fun tp!169655 () Bool)

(declare-fun b_and!51955 () Bool)

(assert (=> b!531742 (= tp!169655 b_and!51955)))

(declare-fun b_free!14379 () Bool)

(declare-fun b_next!14395 () Bool)

(assert (=> b!531742 (= b_free!14379 (not b_next!14395))))

(declare-fun tp!169652 () Bool)

(declare-fun b_and!51957 () Bool)

(assert (=> b!531742 (= tp!169652 b_and!51957)))

(declare-fun b!531739 () Bool)

(declare-fun b_free!14381 () Bool)

(declare-fun b_next!14397 () Bool)

(assert (=> b!531739 (= b_free!14381 (not b_next!14397))))

(declare-fun tp!169656 () Bool)

(declare-fun b_and!51959 () Bool)

(assert (=> b!531739 (= tp!169656 b_and!51959)))

(declare-fun b_free!14383 () Bool)

(declare-fun b_next!14399 () Bool)

(assert (=> b!531739 (= b_free!14383 (not b_next!14399))))

(declare-fun tp!169651 () Bool)

(declare-fun b_and!51961 () Bool)

(assert (=> b!531739 (= tp!169651 b_and!51961)))

(declare-fun b!531736 () Bool)

(declare-fun res!224599 () Bool)

(declare-fun e!320227 () Bool)

(assert (=> b!531736 (=> (not res!224599) (not e!320227))))

(declare-datatypes ((LexerInterface!811 0))(
  ( (LexerInterfaceExt!808 (__x!3796 Int)) (Lexer!809) )
))
(declare-fun thiss!22590 () LexerInterface!811)

(declare-datatypes ((C!3440 0))(
  ( (C!3441 (val!1946 Int)) )
))
(declare-datatypes ((Regex!1259 0))(
  ( (ElementMatch!1259 (c!101468 C!3440)) (Concat!2208 (regOne!3030 Regex!1259) (regTwo!3030 Regex!1259)) (EmptyExpr!1259) (Star!1259 (reg!1588 Regex!1259)) (EmptyLang!1259) (Union!1259 (regOne!3031 Regex!1259) (regTwo!3031 Regex!1259)) )
))
(declare-datatypes ((String!6488 0))(
  ( (String!6489 (value!31203 String)) )
))
(declare-datatypes ((List!5101 0))(
  ( (Nil!5091) (Cons!5091 (h!10492 (_ BitVec 16)) (t!73788 List!5101)) )
))
(declare-datatypes ((TokenValue!949 0))(
  ( (FloatLiteralValue!1898 (text!7088 List!5101)) (TokenValueExt!948 (__x!3797 Int)) (Broken!4745 (value!31204 List!5101)) (Object!958) (End!949) (Def!949) (Underscore!949) (Match!949) (Else!949) (Error!949) (Case!949) (If!949) (Extends!949) (Abstract!949) (Class!949) (Val!949) (DelimiterValue!1898 (del!1009 List!5101)) (KeywordValue!955 (value!31205 List!5101)) (CommentValue!1898 (value!31206 List!5101)) (WhitespaceValue!1898 (value!31207 List!5101)) (IndentationValue!949 (value!31208 List!5101)) (String!6490) (Int32!949) (Broken!4746 (value!31209 List!5101)) (Boolean!950) (Unit!8880) (OperatorValue!952 (op!1009 List!5101)) (IdentifierValue!1898 (value!31210 List!5101)) (IdentifierValue!1899 (value!31211 List!5101)) (WhitespaceValue!1899 (value!31212 List!5101)) (True!1898) (False!1898) (Broken!4747 (value!31213 List!5101)) (Broken!4748 (value!31214 List!5101)) (True!1899) (RightBrace!949) (RightBracket!949) (Colon!949) (Null!949) (Comma!949) (LeftBracket!949) (False!1899) (LeftBrace!949) (ImaginaryLiteralValue!949 (text!7089 List!5101)) (StringLiteralValue!2847 (value!31215 List!5101)) (EOFValue!949 (value!31216 List!5101)) (IdentValue!949 (value!31217 List!5101)) (DelimiterValue!1899 (value!31218 List!5101)) (DedentValue!949 (value!31219 List!5101)) (NewLineValue!949 (value!31220 List!5101)) (IntegerValue!2847 (value!31221 (_ BitVec 32)) (text!7090 List!5101)) (IntegerValue!2848 (value!31222 Int) (text!7091 List!5101)) (Times!949) (Or!949) (Equal!949) (Minus!949) (Broken!4749 (value!31223 List!5101)) (And!949) (Div!949) (LessEqual!949) (Mod!949) (Concat!2209) (Not!949) (Plus!949) (SpaceValue!949 (value!31224 List!5101)) (IntegerValue!2849 (value!31225 Int) (text!7092 List!5101)) (StringLiteralValue!2848 (text!7093 List!5101)) (FloatLiteralValue!1899 (text!7094 List!5101)) (BytesLiteralValue!949 (value!31226 List!5101)) (CommentValue!1899 (value!31227 List!5101)) (StringLiteralValue!2849 (value!31228 List!5101)) (ErrorTokenValue!949 (msg!1010 List!5101)) )
))
(declare-datatypes ((List!5102 0))(
  ( (Nil!5092) (Cons!5092 (h!10493 C!3440) (t!73789 List!5102)) )
))
(declare-datatypes ((IArray!3285 0))(
  ( (IArray!3286 (innerList!1700 List!5102)) )
))
(declare-datatypes ((Conc!1642 0))(
  ( (Node!1642 (left!4297 Conc!1642) (right!4627 Conc!1642) (csize!3514 Int) (cheight!1853 Int)) (Leaf!2612 (xs!4279 IArray!3285) (csize!3515 Int)) (Empty!1642) )
))
(declare-datatypes ((BalanceConc!3292 0))(
  ( (BalanceConc!3293 (c!101469 Conc!1642)) )
))
(declare-datatypes ((TokenValueInjection!1666 0))(
  ( (TokenValueInjection!1667 (toValue!1768 Int) (toChars!1627 Int)) )
))
(declare-datatypes ((Rule!1650 0))(
  ( (Rule!1651 (regex!925 Regex!1259) (tag!1187 String!6488) (isSeparator!925 Bool) (transformation!925 TokenValueInjection!1666)) )
))
(declare-datatypes ((List!5103 0))(
  ( (Nil!5093) (Cons!5093 (h!10494 Rule!1650) (t!73790 List!5103)) )
))
(declare-fun rules!3103 () List!5103)

(declare-fun rulesInvariant!774 (LexerInterface!811 List!5103) Bool)

(assert (=> b!531736 (= res!224599 (rulesInvariant!774 thiss!22590 rules!3103))))

(declare-fun b!531737 () Bool)

(declare-fun e!320231 () Bool)

(declare-fun e!320219 () Bool)

(assert (=> b!531737 (= e!320231 e!320219)))

(declare-fun res!224603 () Bool)

(assert (=> b!531737 (=> (not res!224603) (not e!320219))))

(declare-datatypes ((Token!1586 0))(
  ( (Token!1587 (value!31229 TokenValue!949) (rule!1625 Rule!1650) (size!4118 Int) (originalCharacters!964 List!5102)) )
))
(declare-datatypes ((tuple2!6204 0))(
  ( (tuple2!6205 (_1!3366 Token!1586) (_2!3366 List!5102)) )
))
(declare-fun lt!218903 () tuple2!6204)

(declare-fun suffix!1342 () List!5102)

(declare-fun token!491 () Token!1586)

(assert (=> b!531737 (= res!224603 (and (= (_1!3366 lt!218903) token!491) (= (_2!3366 lt!218903) suffix!1342)))))

(declare-datatypes ((Option!1275 0))(
  ( (None!1274) (Some!1274 (v!16079 tuple2!6204)) )
))
(declare-fun lt!218900 () Option!1275)

(declare-fun get!1902 (Option!1275) tuple2!6204)

(assert (=> b!531737 (= lt!218903 (get!1902 lt!218900))))

(declare-fun b!531738 () Bool)

(declare-fun e!320228 () Bool)

(assert (=> b!531738 (= e!320227 e!320228)))

(declare-fun res!224596 () Bool)

(assert (=> b!531738 (=> (not res!224596) (not e!320228))))

(declare-fun lt!218907 () List!5102)

(declare-fun input!2705 () List!5102)

(assert (=> b!531738 (= res!224596 (= lt!218907 input!2705))))

(declare-fun list!2117 (BalanceConc!3292) List!5102)

(declare-fun charsOf!554 (Token!1586) BalanceConc!3292)

(assert (=> b!531738 (= lt!218907 (list!2117 (charsOf!554 token!491)))))

(declare-fun e!320220 () Bool)

(assert (=> b!531739 (= e!320220 (and tp!169656 tp!169651))))

(declare-fun b!531740 () Bool)

(assert (=> b!531740 (= e!320228 e!320231)))

(declare-fun res!224594 () Bool)

(assert (=> b!531740 (=> (not res!224594) (not e!320231))))

(declare-fun isDefined!1087 (Option!1275) Bool)

(assert (=> b!531740 (= res!224594 (isDefined!1087 lt!218900))))

(declare-fun lt!218905 () List!5102)

(declare-fun maxPrefix!509 (LexerInterface!811 List!5103 List!5102) Option!1275)

(assert (=> b!531740 (= lt!218900 (maxPrefix!509 thiss!22590 rules!3103 lt!218905))))

(declare-fun ++!1413 (List!5102 List!5102) List!5102)

(assert (=> b!531740 (= lt!218905 (++!1413 input!2705 suffix!1342))))

(declare-fun b!531741 () Bool)

(declare-fun res!224597 () Bool)

(assert (=> b!531741 (=> (not res!224597) (not e!320227))))

(declare-fun isEmpty!3684 (List!5103) Bool)

(assert (=> b!531741 (= res!224597 (not (isEmpty!3684 rules!3103)))))

(declare-fun e!320223 () Bool)

(assert (=> b!531742 (= e!320223 (and tp!169655 tp!169652))))

(declare-fun b!531744 () Bool)

(declare-fun e!320217 () Bool)

(declare-fun tp_is_empty!2873 () Bool)

(declare-fun tp!169654 () Bool)

(assert (=> b!531744 (= e!320217 (and tp_is_empty!2873 tp!169654))))

(declare-fun b!531745 () Bool)

(declare-fun e!320234 () Bool)

(declare-fun lt!218906 () List!5102)

(declare-fun isPrefix!567 (List!5102 List!5102) Bool)

(assert (=> b!531745 (= e!320234 (isPrefix!567 lt!218906 input!2705))))

(declare-fun b!531746 () Bool)

(declare-fun res!224598 () Bool)

(declare-fun e!320218 () Bool)

(assert (=> b!531746 (=> (not res!224598) (not e!320218))))

(assert (=> b!531746 (= res!224598 (= (++!1413 lt!218907 suffix!1342) lt!218905))))

(declare-fun e!320224 () Bool)

(declare-fun tp!169653 () Bool)

(declare-fun e!320222 () Bool)

(declare-fun b!531747 () Bool)

(declare-fun inv!21 (TokenValue!949) Bool)

(assert (=> b!531747 (= e!320224 (and (inv!21 (value!31229 token!491)) e!320222 tp!169653))))

(declare-fun b!531748 () Bool)

(assert (=> b!531748 (= e!320219 e!320218)))

(declare-fun res!224601 () Bool)

(assert (=> b!531748 (=> (not res!224601) (not e!320218))))

(declare-fun lt!218901 () Option!1275)

(get-info :version)

(assert (=> b!531748 (= res!224601 ((_ is Some!1274) lt!218901))))

(assert (=> b!531748 (= lt!218901 (maxPrefix!509 thiss!22590 rules!3103 input!2705))))

(declare-fun tp!169658 () Bool)

(declare-fun b!531749 () Bool)

(declare-fun inv!6384 (String!6488) Bool)

(declare-fun inv!6387 (TokenValueInjection!1666) Bool)

(assert (=> b!531749 (= e!320222 (and tp!169658 (inv!6384 (tag!1187 (rule!1625 token!491))) (inv!6387 (transformation!925 (rule!1625 token!491))) e!320220))))

(declare-fun b!531750 () Bool)

(declare-fun e!320233 () Bool)

(declare-fun tp!169649 () Bool)

(assert (=> b!531750 (= e!320233 (and tp_is_empty!2873 tp!169649))))

(declare-fun b!531751 () Bool)

(declare-datatypes ((Unit!8881 0))(
  ( (Unit!8882) )
))
(declare-fun e!320226 () Unit!8881)

(declare-fun Unit!8883 () Unit!8881)

(assert (=> b!531751 (= e!320226 Unit!8883)))

(declare-fun b!531752 () Bool)

(assert (=> b!531752 (= e!320218 (not e!320234))))

(declare-fun res!224600 () Bool)

(assert (=> b!531752 (=> res!224600 e!320234)))

(declare-fun lt!218898 () Int)

(declare-fun size!4119 (List!5102) Int)

(assert (=> b!531752 (= res!224600 (< (size!4119 input!2705) lt!218898))))

(assert (=> b!531752 (isPrefix!567 lt!218906 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901))))))

(declare-fun lt!218902 () Unit!8881)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!418 (List!5102 List!5102) Unit!8881)

(assert (=> b!531752 (= lt!218902 (lemmaConcatTwoListThenFirstIsPrefix!418 lt!218906 (_2!3366 (v!16079 lt!218901))))))

(declare-fun lt!218896 () Unit!8881)

(declare-fun lemmaCharactersSize!4 (Token!1586) Unit!8881)

(assert (=> b!531752 (= lt!218896 (lemmaCharactersSize!4 token!491))))

(declare-fun lt!218897 () Unit!8881)

(assert (=> b!531752 (= lt!218897 (lemmaCharactersSize!4 (_1!3366 (v!16079 lt!218901))))))

(declare-fun lt!218899 () Unit!8881)

(assert (=> b!531752 (= lt!218899 e!320226)))

(declare-fun c!101467 () Bool)

(assert (=> b!531752 (= c!101467 (> lt!218898 (size!4119 lt!218907)))))

(assert (=> b!531752 (= lt!218898 (size!4119 lt!218906))))

(assert (=> b!531752 (= lt!218906 (list!2117 (charsOf!554 (_1!3366 (v!16079 lt!218901)))))))

(assert (=> b!531752 (= lt!218901 (Some!1274 (v!16079 lt!218901)))))

(declare-fun lt!218904 () Unit!8881)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!10 (List!5102 List!5102 List!5102 List!5102) Unit!8881)

(assert (=> b!531752 (= lt!218904 (lemmaConcatSameAndSameSizesThenSameLists!10 lt!218907 suffix!1342 input!2705 suffix!1342))))

(declare-fun tp!169650 () Bool)

(declare-fun e!320221 () Bool)

(declare-fun b!531753 () Bool)

(assert (=> b!531753 (= e!320221 (and tp!169650 (inv!6384 (tag!1187 (h!10494 rules!3103))) (inv!6387 (transformation!925 (h!10494 rules!3103))) e!320223))))

(declare-fun b!531754 () Bool)

(declare-fun res!224602 () Bool)

(assert (=> b!531754 (=> (not res!224602) (not e!320227))))

(declare-fun isEmpty!3685 (List!5102) Bool)

(assert (=> b!531754 (= res!224602 (not (isEmpty!3685 input!2705)))))

(declare-fun b!531755 () Bool)

(declare-fun e!320230 () Bool)

(declare-fun tp!169657 () Bool)

(assert (=> b!531755 (= e!320230 (and e!320221 tp!169657))))

(declare-fun res!224595 () Bool)

(assert (=> start!48868 (=> (not res!224595) (not e!320227))))

(assert (=> start!48868 (= res!224595 ((_ is Lexer!809) thiss!22590))))

(assert (=> start!48868 e!320227))

(assert (=> start!48868 e!320233))

(assert (=> start!48868 e!320230))

(declare-fun inv!6388 (Token!1586) Bool)

(assert (=> start!48868 (and (inv!6388 token!491) e!320224)))

(assert (=> start!48868 true))

(assert (=> start!48868 e!320217))

(declare-fun b!531743 () Bool)

(declare-fun Unit!8884 () Unit!8881)

(assert (=> b!531743 (= e!320226 Unit!8884)))

(assert (=> b!531743 false))

(assert (= (and start!48868 res!224595) b!531741))

(assert (= (and b!531741 res!224597) b!531736))

(assert (= (and b!531736 res!224599) b!531754))

(assert (= (and b!531754 res!224602) b!531738))

(assert (= (and b!531738 res!224596) b!531740))

(assert (= (and b!531740 res!224594) b!531737))

(assert (= (and b!531737 res!224603) b!531748))

(assert (= (and b!531748 res!224601) b!531746))

(assert (= (and b!531746 res!224598) b!531752))

(assert (= (and b!531752 c!101467) b!531743))

(assert (= (and b!531752 (not c!101467)) b!531751))

(assert (= (and b!531752 (not res!224600)) b!531745))

(assert (= (and start!48868 ((_ is Cons!5092) suffix!1342)) b!531750))

(assert (= b!531753 b!531742))

(assert (= b!531755 b!531753))

(assert (= (and start!48868 ((_ is Cons!5093) rules!3103)) b!531755))

(assert (= b!531749 b!531739))

(assert (= b!531747 b!531749))

(assert (= start!48868 b!531747))

(assert (= (and start!48868 ((_ is Cons!5092) input!2705)) b!531744))

(declare-fun m!776773 () Bool)

(assert (=> b!531748 m!776773))

(declare-fun m!776775 () Bool)

(assert (=> b!531753 m!776775))

(declare-fun m!776777 () Bool)

(assert (=> b!531753 m!776777))

(declare-fun m!776779 () Bool)

(assert (=> b!531752 m!776779))

(declare-fun m!776781 () Bool)

(assert (=> b!531752 m!776781))

(declare-fun m!776783 () Bool)

(assert (=> b!531752 m!776783))

(declare-fun m!776785 () Bool)

(assert (=> b!531752 m!776785))

(declare-fun m!776787 () Bool)

(assert (=> b!531752 m!776787))

(declare-fun m!776789 () Bool)

(assert (=> b!531752 m!776789))

(declare-fun m!776791 () Bool)

(assert (=> b!531752 m!776791))

(assert (=> b!531752 m!776787))

(assert (=> b!531752 m!776783))

(declare-fun m!776793 () Bool)

(assert (=> b!531752 m!776793))

(declare-fun m!776795 () Bool)

(assert (=> b!531752 m!776795))

(declare-fun m!776797 () Bool)

(assert (=> b!531752 m!776797))

(declare-fun m!776799 () Bool)

(assert (=> b!531752 m!776799))

(declare-fun m!776801 () Bool)

(assert (=> b!531745 m!776801))

(declare-fun m!776803 () Bool)

(assert (=> b!531749 m!776803))

(declare-fun m!776805 () Bool)

(assert (=> b!531749 m!776805))

(declare-fun m!776807 () Bool)

(assert (=> b!531736 m!776807))

(declare-fun m!776809 () Bool)

(assert (=> b!531746 m!776809))

(declare-fun m!776811 () Bool)

(assert (=> b!531754 m!776811))

(declare-fun m!776813 () Bool)

(assert (=> start!48868 m!776813))

(declare-fun m!776815 () Bool)

(assert (=> b!531747 m!776815))

(declare-fun m!776817 () Bool)

(assert (=> b!531740 m!776817))

(declare-fun m!776819 () Bool)

(assert (=> b!531740 m!776819))

(declare-fun m!776821 () Bool)

(assert (=> b!531740 m!776821))

(declare-fun m!776823 () Bool)

(assert (=> b!531738 m!776823))

(assert (=> b!531738 m!776823))

(declare-fun m!776825 () Bool)

(assert (=> b!531738 m!776825))

(declare-fun m!776827 () Bool)

(assert (=> b!531741 m!776827))

(declare-fun m!776829 () Bool)

(assert (=> b!531737 m!776829))

(check-sat b_and!51959 (not b!531744) (not b!531749) (not b!531747) (not b!531741) tp_is_empty!2873 (not b!531745) (not b!531748) (not b_next!14395) (not b!531738) b_and!51955 (not start!48868) (not b_next!14397) (not b_next!14399) b_and!51957 (not b_next!14393) (not b!531752) (not b!531746) (not b!531750) (not b!531755) (not b!531740) (not b!531753) b_and!51961 (not b!531736) (not b!531754) (not b!531737))
(check-sat b_and!51959 (not b_next!14395) b_and!51955 (not b_next!14397) (not b_next!14399) b_and!51957 (not b_next!14393) b_and!51961)
(get-model)

(declare-fun d!188414 () Bool)

(declare-fun list!2119 (Conc!1642) List!5102)

(assert (=> d!188414 (= (list!2117 (charsOf!554 token!491)) (list!2119 (c!101469 (charsOf!554 token!491))))))

(declare-fun bs!67146 () Bool)

(assert (= bs!67146 d!188414))

(declare-fun m!776831 () Bool)

(assert (=> bs!67146 m!776831))

(assert (=> b!531738 d!188414))

(declare-fun d!188416 () Bool)

(declare-fun lt!218910 () BalanceConc!3292)

(assert (=> d!188416 (= (list!2117 lt!218910) (originalCharacters!964 token!491))))

(declare-fun dynLambda!3063 (Int TokenValue!949) BalanceConc!3292)

(assert (=> d!188416 (= lt!218910 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491)))))

(assert (=> d!188416 (= (charsOf!554 token!491) lt!218910)))

(declare-fun b_lambda!20559 () Bool)

(assert (=> (not b_lambda!20559) (not d!188416)))

(declare-fun tb!47259 () Bool)

(declare-fun t!73792 () Bool)

(assert (=> (and b!531742 (= (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toChars!1627 (transformation!925 (rule!1625 token!491)))) t!73792) tb!47259))

(declare-fun b!531760 () Bool)

(declare-fun e!320237 () Bool)

(declare-fun tp!169661 () Bool)

(declare-fun inv!6391 (Conc!1642) Bool)

(assert (=> b!531760 (= e!320237 (and (inv!6391 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491)))) tp!169661))))

(declare-fun result!52690 () Bool)

(declare-fun inv!6392 (BalanceConc!3292) Bool)

(assert (=> tb!47259 (= result!52690 (and (inv!6392 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491))) e!320237))))

(assert (= tb!47259 b!531760))

(declare-fun m!776835 () Bool)

(assert (=> b!531760 m!776835))

(declare-fun m!776837 () Bool)

(assert (=> tb!47259 m!776837))

(assert (=> d!188416 t!73792))

(declare-fun b_and!51963 () Bool)

(assert (= b_and!51957 (and (=> t!73792 result!52690) b_and!51963)))

(declare-fun t!73794 () Bool)

(declare-fun tb!47261 () Bool)

(assert (=> (and b!531739 (= (toChars!1627 (transformation!925 (rule!1625 token!491))) (toChars!1627 (transformation!925 (rule!1625 token!491)))) t!73794) tb!47261))

(declare-fun result!52694 () Bool)

(assert (= result!52694 result!52690))

(assert (=> d!188416 t!73794))

(declare-fun b_and!51965 () Bool)

(assert (= b_and!51961 (and (=> t!73794 result!52694) b_and!51965)))

(declare-fun m!776839 () Bool)

(assert (=> d!188416 m!776839))

(declare-fun m!776841 () Bool)

(assert (=> d!188416 m!776841))

(assert (=> b!531738 d!188416))

(declare-fun d!188422 () Bool)

(assert (=> d!188422 (= (get!1902 lt!218900) (v!16079 lt!218900))))

(assert (=> b!531737 d!188422))

(declare-fun call!38164 () Option!1275)

(declare-fun bm!38159 () Bool)

(declare-fun maxPrefixOneRule!242 (LexerInterface!811 Rule!1650 List!5102) Option!1275)

(assert (=> bm!38159 (= call!38164 (maxPrefixOneRule!242 thiss!22590 (h!10494 rules!3103) input!2705))))

(declare-fun b!531847 () Bool)

(declare-fun e!320281 () Bool)

(declare-fun lt!218957 () Option!1275)

(declare-fun contains!1187 (List!5103 Rule!1650) Bool)

(assert (=> b!531847 (= e!320281 (contains!1187 rules!3103 (rule!1625 (_1!3366 (get!1902 lt!218957)))))))

(declare-fun b!531848 () Bool)

(declare-fun e!320280 () Bool)

(assert (=> b!531848 (= e!320280 e!320281)))

(declare-fun res!224669 () Bool)

(assert (=> b!531848 (=> (not res!224669) (not e!320281))))

(assert (=> b!531848 (= res!224669 (isDefined!1087 lt!218957))))

(declare-fun b!531849 () Bool)

(declare-fun res!224671 () Bool)

(assert (=> b!531849 (=> (not res!224671) (not e!320281))))

(declare-fun apply!1208 (TokenValueInjection!1666 BalanceConc!3292) TokenValue!949)

(declare-fun seqFromList!1131 (List!5102) BalanceConc!3292)

(assert (=> b!531849 (= res!224671 (= (value!31229 (_1!3366 (get!1902 lt!218957))) (apply!1208 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!218957)))))))))

(declare-fun b!531850 () Bool)

(declare-fun e!320282 () Option!1275)

(assert (=> b!531850 (= e!320282 call!38164)))

(declare-fun d!188424 () Bool)

(assert (=> d!188424 e!320280))

(declare-fun res!224672 () Bool)

(assert (=> d!188424 (=> res!224672 e!320280)))

(declare-fun isEmpty!3687 (Option!1275) Bool)

(assert (=> d!188424 (= res!224672 (isEmpty!3687 lt!218957))))

(assert (=> d!188424 (= lt!218957 e!320282)))

(declare-fun c!101482 () Bool)

(assert (=> d!188424 (= c!101482 (and ((_ is Cons!5093) rules!3103) ((_ is Nil!5093) (t!73790 rules!3103))))))

(declare-fun lt!218956 () Unit!8881)

(declare-fun lt!218954 () Unit!8881)

(assert (=> d!188424 (= lt!218956 lt!218954)))

(assert (=> d!188424 (isPrefix!567 input!2705 input!2705)))

(declare-fun lemmaIsPrefixRefl!311 (List!5102 List!5102) Unit!8881)

(assert (=> d!188424 (= lt!218954 (lemmaIsPrefixRefl!311 input!2705 input!2705))))

(declare-fun rulesValidInductive!320 (LexerInterface!811 List!5103) Bool)

(assert (=> d!188424 (rulesValidInductive!320 thiss!22590 rules!3103)))

(assert (=> d!188424 (= (maxPrefix!509 thiss!22590 rules!3103 input!2705) lt!218957)))

(declare-fun b!531851 () Bool)

(declare-fun lt!218953 () Option!1275)

(declare-fun lt!218955 () Option!1275)

(assert (=> b!531851 (= e!320282 (ite (and ((_ is None!1274) lt!218953) ((_ is None!1274) lt!218955)) None!1274 (ite ((_ is None!1274) lt!218955) lt!218953 (ite ((_ is None!1274) lt!218953) lt!218955 (ite (>= (size!4118 (_1!3366 (v!16079 lt!218953))) (size!4118 (_1!3366 (v!16079 lt!218955)))) lt!218953 lt!218955)))))))

(assert (=> b!531851 (= lt!218953 call!38164)))

(assert (=> b!531851 (= lt!218955 (maxPrefix!509 thiss!22590 (t!73790 rules!3103) input!2705))))

(declare-fun b!531852 () Bool)

(declare-fun res!224670 () Bool)

(assert (=> b!531852 (=> (not res!224670) (not e!320281))))

(assert (=> b!531852 (= res!224670 (< (size!4119 (_2!3366 (get!1902 lt!218957))) (size!4119 input!2705)))))

(declare-fun b!531853 () Bool)

(declare-fun res!224668 () Bool)

(assert (=> b!531853 (=> (not res!224668) (not e!320281))))

(assert (=> b!531853 (= res!224668 (= (++!1413 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957)))) (_2!3366 (get!1902 lt!218957))) input!2705))))

(declare-fun b!531854 () Bool)

(declare-fun res!224667 () Bool)

(assert (=> b!531854 (=> (not res!224667) (not e!320281))))

(declare-fun matchR!442 (Regex!1259 List!5102) Bool)

(assert (=> b!531854 (= res!224667 (matchR!442 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))) (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))))))

(declare-fun b!531855 () Bool)

(declare-fun res!224673 () Bool)

(assert (=> b!531855 (=> (not res!224673) (not e!320281))))

(assert (=> b!531855 (= res!224673 (= (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957)))) (originalCharacters!964 (_1!3366 (get!1902 lt!218957)))))))

(assert (= (and d!188424 c!101482) b!531850))

(assert (= (and d!188424 (not c!101482)) b!531851))

(assert (= (or b!531850 b!531851) bm!38159))

(assert (= (and d!188424 (not res!224672)) b!531848))

(assert (= (and b!531848 res!224669) b!531855))

(assert (= (and b!531855 res!224673) b!531852))

(assert (= (and b!531852 res!224670) b!531853))

(assert (= (and b!531853 res!224668) b!531849))

(assert (= (and b!531849 res!224671) b!531854))

(assert (= (and b!531854 res!224667) b!531847))

(declare-fun m!776931 () Bool)

(assert (=> b!531853 m!776931))

(declare-fun m!776935 () Bool)

(assert (=> b!531853 m!776935))

(assert (=> b!531853 m!776935))

(declare-fun m!776939 () Bool)

(assert (=> b!531853 m!776939))

(assert (=> b!531853 m!776939))

(declare-fun m!776947 () Bool)

(assert (=> b!531853 m!776947))

(declare-fun m!776953 () Bool)

(assert (=> b!531848 m!776953))

(declare-fun m!776955 () Bool)

(assert (=> bm!38159 m!776955))

(assert (=> b!531854 m!776931))

(assert (=> b!531854 m!776935))

(assert (=> b!531854 m!776935))

(assert (=> b!531854 m!776939))

(assert (=> b!531854 m!776939))

(declare-fun m!776969 () Bool)

(assert (=> b!531854 m!776969))

(declare-fun m!776971 () Bool)

(assert (=> b!531851 m!776971))

(assert (=> b!531847 m!776931))

(declare-fun m!776973 () Bool)

(assert (=> b!531847 m!776973))

(assert (=> b!531852 m!776931))

(declare-fun m!776975 () Bool)

(assert (=> b!531852 m!776975))

(assert (=> b!531852 m!776779))

(declare-fun m!776977 () Bool)

(assert (=> d!188424 m!776977))

(declare-fun m!776979 () Bool)

(assert (=> d!188424 m!776979))

(declare-fun m!776981 () Bool)

(assert (=> d!188424 m!776981))

(declare-fun m!776983 () Bool)

(assert (=> d!188424 m!776983))

(assert (=> b!531849 m!776931))

(declare-fun m!776985 () Bool)

(assert (=> b!531849 m!776985))

(assert (=> b!531849 m!776985))

(declare-fun m!776987 () Bool)

(assert (=> b!531849 m!776987))

(assert (=> b!531855 m!776931))

(assert (=> b!531855 m!776935))

(assert (=> b!531855 m!776935))

(assert (=> b!531855 m!776939))

(assert (=> b!531748 d!188424))

(declare-fun b!531905 () Bool)

(declare-fun e!320314 () Bool)

(declare-fun inv!15 (TokenValue!949) Bool)

(assert (=> b!531905 (= e!320314 (inv!15 (value!31229 token!491)))))

(declare-fun b!531906 () Bool)

(declare-fun res!224697 () Bool)

(assert (=> b!531906 (=> res!224697 e!320314)))

(assert (=> b!531906 (= res!224697 (not ((_ is IntegerValue!2849) (value!31229 token!491))))))

(declare-fun e!320313 () Bool)

(assert (=> b!531906 (= e!320313 e!320314)))

(declare-fun b!531907 () Bool)

(declare-fun e!320312 () Bool)

(assert (=> b!531907 (= e!320312 e!320313)))

(declare-fun c!101496 () Bool)

(assert (=> b!531907 (= c!101496 ((_ is IntegerValue!2848) (value!31229 token!491)))))

(declare-fun d!188468 () Bool)

(declare-fun c!101497 () Bool)

(assert (=> d!188468 (= c!101497 ((_ is IntegerValue!2847) (value!31229 token!491)))))

(assert (=> d!188468 (= (inv!21 (value!31229 token!491)) e!320312)))

(declare-fun b!531908 () Bool)

(declare-fun inv!17 (TokenValue!949) Bool)

(assert (=> b!531908 (= e!320313 (inv!17 (value!31229 token!491)))))

(declare-fun b!531909 () Bool)

(declare-fun inv!16 (TokenValue!949) Bool)

(assert (=> b!531909 (= e!320312 (inv!16 (value!31229 token!491)))))

(assert (= (and d!188468 c!101497) b!531909))

(assert (= (and d!188468 (not c!101497)) b!531907))

(assert (= (and b!531907 c!101496) b!531908))

(assert (= (and b!531907 (not c!101496)) b!531906))

(assert (= (and b!531906 (not res!224697)) b!531905))

(declare-fun m!777015 () Bool)

(assert (=> b!531905 m!777015))

(declare-fun m!777017 () Bool)

(assert (=> b!531908 m!777017))

(declare-fun m!777019 () Bool)

(assert (=> b!531909 m!777019))

(assert (=> b!531747 d!188468))

(declare-fun d!188482 () Bool)

(declare-fun res!224707 () Bool)

(declare-fun e!320338 () Bool)

(assert (=> d!188482 (=> (not res!224707) (not e!320338))))

(declare-fun rulesValid!334 (LexerInterface!811 List!5103) Bool)

(assert (=> d!188482 (= res!224707 (rulesValid!334 thiss!22590 rules!3103))))

(assert (=> d!188482 (= (rulesInvariant!774 thiss!22590 rules!3103) e!320338)))

(declare-fun b!531951 () Bool)

(declare-datatypes ((List!5105 0))(
  ( (Nil!5095) (Cons!5095 (h!10496 String!6488) (t!73816 List!5105)) )
))
(declare-fun noDuplicateTag!334 (LexerInterface!811 List!5103 List!5105) Bool)

(assert (=> b!531951 (= e!320338 (noDuplicateTag!334 thiss!22590 rules!3103 Nil!5095))))

(assert (= (and d!188482 res!224707) b!531951))

(declare-fun m!777051 () Bool)

(assert (=> d!188482 m!777051))

(declare-fun m!777053 () Bool)

(assert (=> b!531951 m!777053))

(assert (=> b!531736 d!188482))

(declare-fun lt!218972 () List!5102)

(declare-fun e!320346 () Bool)

(declare-fun b!531969 () Bool)

(assert (=> b!531969 (= e!320346 (or (not (= suffix!1342 Nil!5092)) (= lt!218972 lt!218907)))))

(declare-fun b!531966 () Bool)

(declare-fun e!320347 () List!5102)

(assert (=> b!531966 (= e!320347 suffix!1342)))

(declare-fun b!531967 () Bool)

(assert (=> b!531967 (= e!320347 (Cons!5092 (h!10493 lt!218907) (++!1413 (t!73789 lt!218907) suffix!1342)))))

(declare-fun d!188484 () Bool)

(assert (=> d!188484 e!320346))

(declare-fun res!224713 () Bool)

(assert (=> d!188484 (=> (not res!224713) (not e!320346))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!902 (List!5102) (InoxSet C!3440))

(assert (=> d!188484 (= res!224713 (= (content!902 lt!218972) ((_ map or) (content!902 lt!218907) (content!902 suffix!1342))))))

(assert (=> d!188484 (= lt!218972 e!320347)))

(declare-fun c!101501 () Bool)

(assert (=> d!188484 (= c!101501 ((_ is Nil!5092) lt!218907))))

(assert (=> d!188484 (= (++!1413 lt!218907 suffix!1342) lt!218972)))

(declare-fun b!531968 () Bool)

(declare-fun res!224712 () Bool)

(assert (=> b!531968 (=> (not res!224712) (not e!320346))))

(assert (=> b!531968 (= res!224712 (= (size!4119 lt!218972) (+ (size!4119 lt!218907) (size!4119 suffix!1342))))))

(assert (= (and d!188484 c!101501) b!531966))

(assert (= (and d!188484 (not c!101501)) b!531967))

(assert (= (and d!188484 res!224713) b!531968))

(assert (= (and b!531968 res!224712) b!531969))

(declare-fun m!777059 () Bool)

(assert (=> b!531967 m!777059))

(declare-fun m!777061 () Bool)

(assert (=> d!188484 m!777061))

(declare-fun m!777063 () Bool)

(assert (=> d!188484 m!777063))

(declare-fun m!777065 () Bool)

(assert (=> d!188484 m!777065))

(declare-fun m!777067 () Bool)

(assert (=> b!531968 m!777067))

(assert (=> b!531968 m!776797))

(declare-fun m!777069 () Bool)

(assert (=> b!531968 m!777069))

(assert (=> b!531746 d!188484))

(declare-fun b!531978 () Bool)

(declare-fun e!320356 () Bool)

(declare-fun e!320355 () Bool)

(assert (=> b!531978 (= e!320356 e!320355)))

(declare-fun res!224723 () Bool)

(assert (=> b!531978 (=> (not res!224723) (not e!320355))))

(assert (=> b!531978 (= res!224723 (not ((_ is Nil!5092) input!2705)))))

(declare-fun b!531981 () Bool)

(declare-fun e!320354 () Bool)

(assert (=> b!531981 (= e!320354 (>= (size!4119 input!2705) (size!4119 lt!218906)))))

(declare-fun b!531979 () Bool)

(declare-fun res!224725 () Bool)

(assert (=> b!531979 (=> (not res!224725) (not e!320355))))

(declare-fun head!1168 (List!5102) C!3440)

(assert (=> b!531979 (= res!224725 (= (head!1168 lt!218906) (head!1168 input!2705)))))

(declare-fun b!531980 () Bool)

(declare-fun tail!697 (List!5102) List!5102)

(assert (=> b!531980 (= e!320355 (isPrefix!567 (tail!697 lt!218906) (tail!697 input!2705)))))

(declare-fun d!188486 () Bool)

(assert (=> d!188486 e!320354))

(declare-fun res!224724 () Bool)

(assert (=> d!188486 (=> res!224724 e!320354)))

(declare-fun lt!218975 () Bool)

(assert (=> d!188486 (= res!224724 (not lt!218975))))

(assert (=> d!188486 (= lt!218975 e!320356)))

(declare-fun res!224722 () Bool)

(assert (=> d!188486 (=> res!224722 e!320356)))

(assert (=> d!188486 (= res!224722 ((_ is Nil!5092) lt!218906))))

(assert (=> d!188486 (= (isPrefix!567 lt!218906 input!2705) lt!218975)))

(assert (= (and d!188486 (not res!224722)) b!531978))

(assert (= (and b!531978 res!224723) b!531979))

(assert (= (and b!531979 res!224725) b!531980))

(assert (= (and d!188486 (not res!224724)) b!531981))

(assert (=> b!531981 m!776779))

(assert (=> b!531981 m!776785))

(declare-fun m!777071 () Bool)

(assert (=> b!531979 m!777071))

(declare-fun m!777073 () Bool)

(assert (=> b!531979 m!777073))

(declare-fun m!777075 () Bool)

(assert (=> b!531980 m!777075))

(declare-fun m!777077 () Bool)

(assert (=> b!531980 m!777077))

(assert (=> b!531980 m!777075))

(assert (=> b!531980 m!777077))

(declare-fun m!777079 () Bool)

(assert (=> b!531980 m!777079))

(assert (=> b!531745 d!188486))

(declare-fun d!188488 () Bool)

(assert (=> d!188488 (= (isEmpty!3685 input!2705) ((_ is Nil!5092) input!2705))))

(assert (=> b!531754 d!188488))

(declare-fun d!188490 () Bool)

(assert (=> d!188490 (= (inv!6384 (tag!1187 (h!10494 rules!3103))) (= (mod (str.len (value!31203 (tag!1187 (h!10494 rules!3103)))) 2) 0))))

(assert (=> b!531753 d!188490))

(declare-fun d!188492 () Bool)

(declare-fun res!224728 () Bool)

(declare-fun e!320359 () Bool)

(assert (=> d!188492 (=> (not res!224728) (not e!320359))))

(declare-fun semiInverseModEq!369 (Int Int) Bool)

(assert (=> d!188492 (= res!224728 (semiInverseModEq!369 (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toValue!1768 (transformation!925 (h!10494 rules!3103)))))))

(assert (=> d!188492 (= (inv!6387 (transformation!925 (h!10494 rules!3103))) e!320359)))

(declare-fun b!531984 () Bool)

(declare-fun equivClasses!352 (Int Int) Bool)

(assert (=> b!531984 (= e!320359 (equivClasses!352 (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toValue!1768 (transformation!925 (h!10494 rules!3103)))))))

(assert (= (and d!188492 res!224728) b!531984))

(declare-fun m!777081 () Bool)

(assert (=> d!188492 m!777081))

(declare-fun m!777083 () Bool)

(assert (=> b!531984 m!777083))

(assert (=> b!531753 d!188492))

(declare-fun d!188494 () Bool)

(declare-fun res!224733 () Bool)

(declare-fun e!320362 () Bool)

(assert (=> d!188494 (=> (not res!224733) (not e!320362))))

(assert (=> d!188494 (= res!224733 (not (isEmpty!3685 (originalCharacters!964 token!491))))))

(assert (=> d!188494 (= (inv!6388 token!491) e!320362)))

(declare-fun b!531989 () Bool)

(declare-fun res!224734 () Bool)

(assert (=> b!531989 (=> (not res!224734) (not e!320362))))

(assert (=> b!531989 (= res!224734 (= (originalCharacters!964 token!491) (list!2117 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491)))))))

(declare-fun b!531990 () Bool)

(assert (=> b!531990 (= e!320362 (= (size!4118 token!491) (size!4119 (originalCharacters!964 token!491))))))

(assert (= (and d!188494 res!224733) b!531989))

(assert (= (and b!531989 res!224734) b!531990))

(declare-fun b_lambda!20571 () Bool)

(assert (=> (not b_lambda!20571) (not b!531989)))

(assert (=> b!531989 t!73792))

(declare-fun b_and!51983 () Bool)

(assert (= b_and!51963 (and (=> t!73792 result!52690) b_and!51983)))

(assert (=> b!531989 t!73794))

(declare-fun b_and!51985 () Bool)

(assert (= b_and!51965 (and (=> t!73794 result!52694) b_and!51985)))

(declare-fun m!777085 () Bool)

(assert (=> d!188494 m!777085))

(assert (=> b!531989 m!776841))

(assert (=> b!531989 m!776841))

(declare-fun m!777087 () Bool)

(assert (=> b!531989 m!777087))

(declare-fun m!777089 () Bool)

(assert (=> b!531990 m!777089))

(assert (=> start!48868 d!188494))

(declare-fun d!188496 () Bool)

(assert (=> d!188496 (= (isEmpty!3684 rules!3103) ((_ is Nil!5093) rules!3103))))

(assert (=> b!531741 d!188496))

(declare-fun e!320363 () Bool)

(declare-fun lt!218976 () List!5102)

(declare-fun b!531994 () Bool)

(assert (=> b!531994 (= e!320363 (or (not (= (_2!3366 (v!16079 lt!218901)) Nil!5092)) (= lt!218976 lt!218906)))))

(declare-fun b!531991 () Bool)

(declare-fun e!320364 () List!5102)

(assert (=> b!531991 (= e!320364 (_2!3366 (v!16079 lt!218901)))))

(declare-fun b!531992 () Bool)

(assert (=> b!531992 (= e!320364 (Cons!5092 (h!10493 lt!218906) (++!1413 (t!73789 lt!218906) (_2!3366 (v!16079 lt!218901)))))))

(declare-fun d!188498 () Bool)

(assert (=> d!188498 e!320363))

(declare-fun res!224736 () Bool)

(assert (=> d!188498 (=> (not res!224736) (not e!320363))))

(assert (=> d!188498 (= res!224736 (= (content!902 lt!218976) ((_ map or) (content!902 lt!218906) (content!902 (_2!3366 (v!16079 lt!218901))))))))

(assert (=> d!188498 (= lt!218976 e!320364)))

(declare-fun c!101502 () Bool)

(assert (=> d!188498 (= c!101502 ((_ is Nil!5092) lt!218906))))

(assert (=> d!188498 (= (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901))) lt!218976)))

(declare-fun b!531993 () Bool)

(declare-fun res!224735 () Bool)

(assert (=> b!531993 (=> (not res!224735) (not e!320363))))

(assert (=> b!531993 (= res!224735 (= (size!4119 lt!218976) (+ (size!4119 lt!218906) (size!4119 (_2!3366 (v!16079 lt!218901))))))))

(assert (= (and d!188498 c!101502) b!531991))

(assert (= (and d!188498 (not c!101502)) b!531992))

(assert (= (and d!188498 res!224736) b!531993))

(assert (= (and b!531993 res!224735) b!531994))

(declare-fun m!777091 () Bool)

(assert (=> b!531992 m!777091))

(declare-fun m!777093 () Bool)

(assert (=> d!188498 m!777093))

(declare-fun m!777095 () Bool)

(assert (=> d!188498 m!777095))

(declare-fun m!777097 () Bool)

(assert (=> d!188498 m!777097))

(declare-fun m!777099 () Bool)

(assert (=> b!531993 m!777099))

(assert (=> b!531993 m!776785))

(declare-fun m!777101 () Bool)

(assert (=> b!531993 m!777101))

(assert (=> b!531752 d!188498))

(declare-fun d!188500 () Bool)

(assert (=> d!188500 (and (= lt!218907 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!218979 () Unit!8881)

(declare-fun choose!3739 (List!5102 List!5102 List!5102 List!5102) Unit!8881)

(assert (=> d!188500 (= lt!218979 (choose!3739 lt!218907 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!188500 (= (++!1413 lt!218907 suffix!1342) (++!1413 input!2705 suffix!1342))))

(assert (=> d!188500 (= (lemmaConcatSameAndSameSizesThenSameLists!10 lt!218907 suffix!1342 input!2705 suffix!1342) lt!218979)))

(declare-fun bs!67154 () Bool)

(assert (= bs!67154 d!188500))

(declare-fun m!777103 () Bool)

(assert (=> bs!67154 m!777103))

(assert (=> bs!67154 m!776809))

(assert (=> bs!67154 m!776821))

(assert (=> b!531752 d!188500))

(declare-fun d!188502 () Bool)

(assert (=> d!188502 (isPrefix!567 lt!218906 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901))))))

(declare-fun lt!218982 () Unit!8881)

(declare-fun choose!3740 (List!5102 List!5102) Unit!8881)

(assert (=> d!188502 (= lt!218982 (choose!3740 lt!218906 (_2!3366 (v!16079 lt!218901))))))

(assert (=> d!188502 (= (lemmaConcatTwoListThenFirstIsPrefix!418 lt!218906 (_2!3366 (v!16079 lt!218901))) lt!218982)))

(declare-fun bs!67155 () Bool)

(assert (= bs!67155 d!188502))

(assert (=> bs!67155 m!776787))

(assert (=> bs!67155 m!776787))

(assert (=> bs!67155 m!776789))

(declare-fun m!777105 () Bool)

(assert (=> bs!67155 m!777105))

(assert (=> b!531752 d!188502))

(declare-fun d!188504 () Bool)

(assert (=> d!188504 (= (size!4118 token!491) (size!4119 (originalCharacters!964 token!491)))))

(declare-fun Unit!8887 () Unit!8881)

(assert (=> d!188504 (= (lemmaCharactersSize!4 token!491) Unit!8887)))

(declare-fun bs!67156 () Bool)

(assert (= bs!67156 d!188504))

(assert (=> bs!67156 m!777089))

(assert (=> b!531752 d!188504))

(declare-fun d!188506 () Bool)

(declare-fun lt!218983 () BalanceConc!3292)

(assert (=> d!188506 (= (list!2117 lt!218983) (originalCharacters!964 (_1!3366 (v!16079 lt!218901))))))

(assert (=> d!188506 (= lt!218983 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901)))))))

(assert (=> d!188506 (= (charsOf!554 (_1!3366 (v!16079 lt!218901))) lt!218983)))

(declare-fun b_lambda!20573 () Bool)

(assert (=> (not b_lambda!20573) (not d!188506)))

(declare-fun t!73808 () Bool)

(declare-fun tb!47275 () Bool)

(assert (=> (and b!531742 (= (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901)))))) t!73808) tb!47275))

(declare-fun b!531995 () Bool)

(declare-fun e!320365 () Bool)

(declare-fun tp!169703 () Bool)

(assert (=> b!531995 (= e!320365 (and (inv!6391 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901)))))) tp!169703))))

(declare-fun result!52716 () Bool)

(assert (=> tb!47275 (= result!52716 (and (inv!6392 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901))))) e!320365))))

(assert (= tb!47275 b!531995))

(declare-fun m!777107 () Bool)

(assert (=> b!531995 m!777107))

(declare-fun m!777109 () Bool)

(assert (=> tb!47275 m!777109))

(assert (=> d!188506 t!73808))

(declare-fun b_and!51987 () Bool)

(assert (= b_and!51983 (and (=> t!73808 result!52716) b_and!51987)))

(declare-fun tb!47277 () Bool)

(declare-fun t!73810 () Bool)

(assert (=> (and b!531739 (= (toChars!1627 (transformation!925 (rule!1625 token!491))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901)))))) t!73810) tb!47277))

(declare-fun result!52718 () Bool)

(assert (= result!52718 result!52716))

(assert (=> d!188506 t!73810))

(declare-fun b_and!51989 () Bool)

(assert (= b_and!51985 (and (=> t!73810 result!52718) b_and!51989)))

(declare-fun m!777111 () Bool)

(assert (=> d!188506 m!777111))

(declare-fun m!777113 () Bool)

(assert (=> d!188506 m!777113))

(assert (=> b!531752 d!188506))

(declare-fun d!188508 () Bool)

(assert (=> d!188508 (= (size!4118 (_1!3366 (v!16079 lt!218901))) (size!4119 (originalCharacters!964 (_1!3366 (v!16079 lt!218901)))))))

(declare-fun Unit!8888 () Unit!8881)

(assert (=> d!188508 (= (lemmaCharactersSize!4 (_1!3366 (v!16079 lt!218901))) Unit!8888)))

(declare-fun bs!67157 () Bool)

(assert (= bs!67157 d!188508))

(declare-fun m!777115 () Bool)

(assert (=> bs!67157 m!777115))

(assert (=> b!531752 d!188508))

(declare-fun d!188510 () Bool)

(assert (=> d!188510 (= (list!2117 (charsOf!554 (_1!3366 (v!16079 lt!218901)))) (list!2119 (c!101469 (charsOf!554 (_1!3366 (v!16079 lt!218901))))))))

(declare-fun bs!67158 () Bool)

(assert (= bs!67158 d!188510))

(declare-fun m!777117 () Bool)

(assert (=> bs!67158 m!777117))

(assert (=> b!531752 d!188510))

(declare-fun d!188512 () Bool)

(declare-fun lt!218986 () Int)

(assert (=> d!188512 (>= lt!218986 0)))

(declare-fun e!320368 () Int)

(assert (=> d!188512 (= lt!218986 e!320368)))

(declare-fun c!101505 () Bool)

(assert (=> d!188512 (= c!101505 ((_ is Nil!5092) input!2705))))

(assert (=> d!188512 (= (size!4119 input!2705) lt!218986)))

(declare-fun b!532000 () Bool)

(assert (=> b!532000 (= e!320368 0)))

(declare-fun b!532001 () Bool)

(assert (=> b!532001 (= e!320368 (+ 1 (size!4119 (t!73789 input!2705))))))

(assert (= (and d!188512 c!101505) b!532000))

(assert (= (and d!188512 (not c!101505)) b!532001))

(declare-fun m!777119 () Bool)

(assert (=> b!532001 m!777119))

(assert (=> b!531752 d!188512))

(declare-fun b!532002 () Bool)

(declare-fun e!320371 () Bool)

(declare-fun e!320370 () Bool)

(assert (=> b!532002 (= e!320371 e!320370)))

(declare-fun res!224738 () Bool)

(assert (=> b!532002 (=> (not res!224738) (not e!320370))))

(assert (=> b!532002 (= res!224738 (not ((_ is Nil!5092) (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901))))))))

(declare-fun b!532005 () Bool)

(declare-fun e!320369 () Bool)

(assert (=> b!532005 (= e!320369 (>= (size!4119 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))) (size!4119 lt!218906)))))

(declare-fun b!532003 () Bool)

(declare-fun res!224740 () Bool)

(assert (=> b!532003 (=> (not res!224740) (not e!320370))))

(assert (=> b!532003 (= res!224740 (= (head!1168 lt!218906) (head!1168 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901))))))))

(declare-fun b!532004 () Bool)

(assert (=> b!532004 (= e!320370 (isPrefix!567 (tail!697 lt!218906) (tail!697 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901))))))))

(declare-fun d!188514 () Bool)

(assert (=> d!188514 e!320369))

(declare-fun res!224739 () Bool)

(assert (=> d!188514 (=> res!224739 e!320369)))

(declare-fun lt!218987 () Bool)

(assert (=> d!188514 (= res!224739 (not lt!218987))))

(assert (=> d!188514 (= lt!218987 e!320371)))

(declare-fun res!224737 () Bool)

(assert (=> d!188514 (=> res!224737 e!320371)))

(assert (=> d!188514 (= res!224737 ((_ is Nil!5092) lt!218906))))

(assert (=> d!188514 (= (isPrefix!567 lt!218906 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))) lt!218987)))

(assert (= (and d!188514 (not res!224737)) b!532002))

(assert (= (and b!532002 res!224738) b!532003))

(assert (= (and b!532003 res!224740) b!532004))

(assert (= (and d!188514 (not res!224739)) b!532005))

(assert (=> b!532005 m!776787))

(declare-fun m!777121 () Bool)

(assert (=> b!532005 m!777121))

(assert (=> b!532005 m!776785))

(assert (=> b!532003 m!777071))

(assert (=> b!532003 m!776787))

(declare-fun m!777123 () Bool)

(assert (=> b!532003 m!777123))

(assert (=> b!532004 m!777075))

(assert (=> b!532004 m!776787))

(declare-fun m!777125 () Bool)

(assert (=> b!532004 m!777125))

(assert (=> b!532004 m!777075))

(assert (=> b!532004 m!777125))

(declare-fun m!777127 () Bool)

(assert (=> b!532004 m!777127))

(assert (=> b!531752 d!188514))

(declare-fun d!188516 () Bool)

(declare-fun lt!218988 () Int)

(assert (=> d!188516 (>= lt!218988 0)))

(declare-fun e!320372 () Int)

(assert (=> d!188516 (= lt!218988 e!320372)))

(declare-fun c!101506 () Bool)

(assert (=> d!188516 (= c!101506 ((_ is Nil!5092) lt!218907))))

(assert (=> d!188516 (= (size!4119 lt!218907) lt!218988)))

(declare-fun b!532006 () Bool)

(assert (=> b!532006 (= e!320372 0)))

(declare-fun b!532007 () Bool)

(assert (=> b!532007 (= e!320372 (+ 1 (size!4119 (t!73789 lt!218907))))))

(assert (= (and d!188516 c!101506) b!532006))

(assert (= (and d!188516 (not c!101506)) b!532007))

(declare-fun m!777129 () Bool)

(assert (=> b!532007 m!777129))

(assert (=> b!531752 d!188516))

(declare-fun d!188518 () Bool)

(declare-fun lt!218989 () Int)

(assert (=> d!188518 (>= lt!218989 0)))

(declare-fun e!320373 () Int)

(assert (=> d!188518 (= lt!218989 e!320373)))

(declare-fun c!101507 () Bool)

(assert (=> d!188518 (= c!101507 ((_ is Nil!5092) lt!218906))))

(assert (=> d!188518 (= (size!4119 lt!218906) lt!218989)))

(declare-fun b!532008 () Bool)

(assert (=> b!532008 (= e!320373 0)))

(declare-fun b!532009 () Bool)

(assert (=> b!532009 (= e!320373 (+ 1 (size!4119 (t!73789 lt!218906))))))

(assert (= (and d!188518 c!101507) b!532008))

(assert (= (and d!188518 (not c!101507)) b!532009))

(declare-fun m!777131 () Bool)

(assert (=> b!532009 m!777131))

(assert (=> b!531752 d!188518))

(declare-fun d!188520 () Bool)

(assert (=> d!188520 (= (isDefined!1087 lt!218900) (not (isEmpty!3687 lt!218900)))))

(declare-fun bs!67159 () Bool)

(assert (= bs!67159 d!188520))

(declare-fun m!777133 () Bool)

(assert (=> bs!67159 m!777133))

(assert (=> b!531740 d!188520))

(declare-fun call!38167 () Option!1275)

(declare-fun bm!38162 () Bool)

(assert (=> bm!38162 (= call!38167 (maxPrefixOneRule!242 thiss!22590 (h!10494 rules!3103) lt!218905))))

(declare-fun b!532010 () Bool)

(declare-fun e!320375 () Bool)

(declare-fun lt!218994 () Option!1275)

(assert (=> b!532010 (= e!320375 (contains!1187 rules!3103 (rule!1625 (_1!3366 (get!1902 lt!218994)))))))

(declare-fun b!532011 () Bool)

(declare-fun e!320374 () Bool)

(assert (=> b!532011 (= e!320374 e!320375)))

(declare-fun res!224743 () Bool)

(assert (=> b!532011 (=> (not res!224743) (not e!320375))))

(assert (=> b!532011 (= res!224743 (isDefined!1087 lt!218994))))

(declare-fun b!532012 () Bool)

(declare-fun res!224745 () Bool)

(assert (=> b!532012 (=> (not res!224745) (not e!320375))))

(assert (=> b!532012 (= res!224745 (= (value!31229 (_1!3366 (get!1902 lt!218994))) (apply!1208 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!218994)))))))))

(declare-fun b!532013 () Bool)

(declare-fun e!320376 () Option!1275)

(assert (=> b!532013 (= e!320376 call!38167)))

(declare-fun d!188522 () Bool)

(assert (=> d!188522 e!320374))

(declare-fun res!224746 () Bool)

(assert (=> d!188522 (=> res!224746 e!320374)))

(assert (=> d!188522 (= res!224746 (isEmpty!3687 lt!218994))))

(assert (=> d!188522 (= lt!218994 e!320376)))

(declare-fun c!101508 () Bool)

(assert (=> d!188522 (= c!101508 (and ((_ is Cons!5093) rules!3103) ((_ is Nil!5093) (t!73790 rules!3103))))))

(declare-fun lt!218993 () Unit!8881)

(declare-fun lt!218991 () Unit!8881)

(assert (=> d!188522 (= lt!218993 lt!218991)))

(assert (=> d!188522 (isPrefix!567 lt!218905 lt!218905)))

(assert (=> d!188522 (= lt!218991 (lemmaIsPrefixRefl!311 lt!218905 lt!218905))))

(assert (=> d!188522 (rulesValidInductive!320 thiss!22590 rules!3103)))

(assert (=> d!188522 (= (maxPrefix!509 thiss!22590 rules!3103 lt!218905) lt!218994)))

(declare-fun b!532014 () Bool)

(declare-fun lt!218990 () Option!1275)

(declare-fun lt!218992 () Option!1275)

(assert (=> b!532014 (= e!320376 (ite (and ((_ is None!1274) lt!218990) ((_ is None!1274) lt!218992)) None!1274 (ite ((_ is None!1274) lt!218992) lt!218990 (ite ((_ is None!1274) lt!218990) lt!218992 (ite (>= (size!4118 (_1!3366 (v!16079 lt!218990))) (size!4118 (_1!3366 (v!16079 lt!218992)))) lt!218990 lt!218992)))))))

(assert (=> b!532014 (= lt!218990 call!38167)))

(assert (=> b!532014 (= lt!218992 (maxPrefix!509 thiss!22590 (t!73790 rules!3103) lt!218905))))

(declare-fun b!532015 () Bool)

(declare-fun res!224744 () Bool)

(assert (=> b!532015 (=> (not res!224744) (not e!320375))))

(assert (=> b!532015 (= res!224744 (< (size!4119 (_2!3366 (get!1902 lt!218994))) (size!4119 lt!218905)))))

(declare-fun b!532016 () Bool)

(declare-fun res!224742 () Bool)

(assert (=> b!532016 (=> (not res!224742) (not e!320375))))

(assert (=> b!532016 (= res!224742 (= (++!1413 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994)))) (_2!3366 (get!1902 lt!218994))) lt!218905))))

(declare-fun b!532017 () Bool)

(declare-fun res!224741 () Bool)

(assert (=> b!532017 (=> (not res!224741) (not e!320375))))

(assert (=> b!532017 (= res!224741 (matchR!442 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))) (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))))))

(declare-fun b!532018 () Bool)

(declare-fun res!224747 () Bool)

(assert (=> b!532018 (=> (not res!224747) (not e!320375))))

(assert (=> b!532018 (= res!224747 (= (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994)))) (originalCharacters!964 (_1!3366 (get!1902 lt!218994)))))))

(assert (= (and d!188522 c!101508) b!532013))

(assert (= (and d!188522 (not c!101508)) b!532014))

(assert (= (or b!532013 b!532014) bm!38162))

(assert (= (and d!188522 (not res!224746)) b!532011))

(assert (= (and b!532011 res!224743) b!532018))

(assert (= (and b!532018 res!224747) b!532015))

(assert (= (and b!532015 res!224744) b!532016))

(assert (= (and b!532016 res!224742) b!532012))

(assert (= (and b!532012 res!224745) b!532017))

(assert (= (and b!532017 res!224741) b!532010))

(declare-fun m!777135 () Bool)

(assert (=> b!532016 m!777135))

(declare-fun m!777137 () Bool)

(assert (=> b!532016 m!777137))

(assert (=> b!532016 m!777137))

(declare-fun m!777139 () Bool)

(assert (=> b!532016 m!777139))

(assert (=> b!532016 m!777139))

(declare-fun m!777141 () Bool)

(assert (=> b!532016 m!777141))

(declare-fun m!777143 () Bool)

(assert (=> b!532011 m!777143))

(declare-fun m!777145 () Bool)

(assert (=> bm!38162 m!777145))

(assert (=> b!532017 m!777135))

(assert (=> b!532017 m!777137))

(assert (=> b!532017 m!777137))

(assert (=> b!532017 m!777139))

(assert (=> b!532017 m!777139))

(declare-fun m!777147 () Bool)

(assert (=> b!532017 m!777147))

(declare-fun m!777149 () Bool)

(assert (=> b!532014 m!777149))

(assert (=> b!532010 m!777135))

(declare-fun m!777151 () Bool)

(assert (=> b!532010 m!777151))

(assert (=> b!532015 m!777135))

(declare-fun m!777153 () Bool)

(assert (=> b!532015 m!777153))

(declare-fun m!777155 () Bool)

(assert (=> b!532015 m!777155))

(declare-fun m!777157 () Bool)

(assert (=> d!188522 m!777157))

(declare-fun m!777159 () Bool)

(assert (=> d!188522 m!777159))

(declare-fun m!777161 () Bool)

(assert (=> d!188522 m!777161))

(assert (=> d!188522 m!776983))

(assert (=> b!532012 m!777135))

(declare-fun m!777163 () Bool)

(assert (=> b!532012 m!777163))

(assert (=> b!532012 m!777163))

(declare-fun m!777165 () Bool)

(assert (=> b!532012 m!777165))

(assert (=> b!532018 m!777135))

(assert (=> b!532018 m!777137))

(assert (=> b!532018 m!777137))

(assert (=> b!532018 m!777139))

(assert (=> b!531740 d!188522))

(declare-fun e!320377 () Bool)

(declare-fun lt!218995 () List!5102)

(declare-fun b!532022 () Bool)

(assert (=> b!532022 (= e!320377 (or (not (= suffix!1342 Nil!5092)) (= lt!218995 input!2705)))))

(declare-fun b!532019 () Bool)

(declare-fun e!320378 () List!5102)

(assert (=> b!532019 (= e!320378 suffix!1342)))

(declare-fun b!532020 () Bool)

(assert (=> b!532020 (= e!320378 (Cons!5092 (h!10493 input!2705) (++!1413 (t!73789 input!2705) suffix!1342)))))

(declare-fun d!188524 () Bool)

(assert (=> d!188524 e!320377))

(declare-fun res!224749 () Bool)

(assert (=> d!188524 (=> (not res!224749) (not e!320377))))

(assert (=> d!188524 (= res!224749 (= (content!902 lt!218995) ((_ map or) (content!902 input!2705) (content!902 suffix!1342))))))

(assert (=> d!188524 (= lt!218995 e!320378)))

(declare-fun c!101509 () Bool)

(assert (=> d!188524 (= c!101509 ((_ is Nil!5092) input!2705))))

(assert (=> d!188524 (= (++!1413 input!2705 suffix!1342) lt!218995)))

(declare-fun b!532021 () Bool)

(declare-fun res!224748 () Bool)

(assert (=> b!532021 (=> (not res!224748) (not e!320377))))

(assert (=> b!532021 (= res!224748 (= (size!4119 lt!218995) (+ (size!4119 input!2705) (size!4119 suffix!1342))))))

(assert (= (and d!188524 c!101509) b!532019))

(assert (= (and d!188524 (not c!101509)) b!532020))

(assert (= (and d!188524 res!224749) b!532021))

(assert (= (and b!532021 res!224748) b!532022))

(declare-fun m!777167 () Bool)

(assert (=> b!532020 m!777167))

(declare-fun m!777169 () Bool)

(assert (=> d!188524 m!777169))

(declare-fun m!777171 () Bool)

(assert (=> d!188524 m!777171))

(assert (=> d!188524 m!777065))

(declare-fun m!777173 () Bool)

(assert (=> b!532021 m!777173))

(assert (=> b!532021 m!776779))

(assert (=> b!532021 m!777069))

(assert (=> b!531740 d!188524))

(declare-fun d!188526 () Bool)

(assert (=> d!188526 (= (inv!6384 (tag!1187 (rule!1625 token!491))) (= (mod (str.len (value!31203 (tag!1187 (rule!1625 token!491)))) 2) 0))))

(assert (=> b!531749 d!188526))

(declare-fun d!188528 () Bool)

(declare-fun res!224750 () Bool)

(declare-fun e!320379 () Bool)

(assert (=> d!188528 (=> (not res!224750) (not e!320379))))

(assert (=> d!188528 (= res!224750 (semiInverseModEq!369 (toChars!1627 (transformation!925 (rule!1625 token!491))) (toValue!1768 (transformation!925 (rule!1625 token!491)))))))

(assert (=> d!188528 (= (inv!6387 (transformation!925 (rule!1625 token!491))) e!320379)))

(declare-fun b!532023 () Bool)

(assert (=> b!532023 (= e!320379 (equivClasses!352 (toChars!1627 (transformation!925 (rule!1625 token!491))) (toValue!1768 (transformation!925 (rule!1625 token!491)))))))

(assert (= (and d!188528 res!224750) b!532023))

(declare-fun m!777175 () Bool)

(assert (=> d!188528 m!777175))

(declare-fun m!777177 () Bool)

(assert (=> b!532023 m!777177))

(assert (=> b!531749 d!188528))

(declare-fun b!532034 () Bool)

(declare-fun e!320382 () Bool)

(assert (=> b!532034 (= e!320382 tp_is_empty!2873)))

(declare-fun b!532037 () Bool)

(declare-fun tp!169718 () Bool)

(declare-fun tp!169717 () Bool)

(assert (=> b!532037 (= e!320382 (and tp!169718 tp!169717))))

(declare-fun b!532036 () Bool)

(declare-fun tp!169714 () Bool)

(assert (=> b!532036 (= e!320382 tp!169714)))

(assert (=> b!531753 (= tp!169650 e!320382)))

(declare-fun b!532035 () Bool)

(declare-fun tp!169716 () Bool)

(declare-fun tp!169715 () Bool)

(assert (=> b!532035 (= e!320382 (and tp!169716 tp!169715))))

(assert (= (and b!531753 ((_ is ElementMatch!1259) (regex!925 (h!10494 rules!3103)))) b!532034))

(assert (= (and b!531753 ((_ is Concat!2208) (regex!925 (h!10494 rules!3103)))) b!532035))

(assert (= (and b!531753 ((_ is Star!1259) (regex!925 (h!10494 rules!3103)))) b!532036))

(assert (= (and b!531753 ((_ is Union!1259) (regex!925 (h!10494 rules!3103)))) b!532037))

(declare-fun b!532042 () Bool)

(declare-fun e!320385 () Bool)

(declare-fun tp!169721 () Bool)

(assert (=> b!532042 (= e!320385 (and tp_is_empty!2873 tp!169721))))

(assert (=> b!531747 (= tp!169653 e!320385)))

(assert (= (and b!531747 ((_ is Cons!5092) (originalCharacters!964 token!491))) b!532042))

(declare-fun b!532053 () Bool)

(declare-fun b_free!14389 () Bool)

(declare-fun b_next!14405 () Bool)

(assert (=> b!532053 (= b_free!14389 (not b_next!14405))))

(declare-fun tp!169731 () Bool)

(declare-fun b_and!51991 () Bool)

(assert (=> b!532053 (= tp!169731 b_and!51991)))

(declare-fun b_free!14391 () Bool)

(declare-fun b_next!14407 () Bool)

(assert (=> b!532053 (= b_free!14391 (not b_next!14407))))

(declare-fun t!73812 () Bool)

(declare-fun tb!47279 () Bool)

(assert (=> (and b!532053 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toChars!1627 (transformation!925 (rule!1625 token!491)))) t!73812) tb!47279))

(declare-fun result!52726 () Bool)

(assert (= result!52726 result!52690))

(assert (=> d!188416 t!73812))

(assert (=> b!531989 t!73812))

(declare-fun tb!47281 () Bool)

(declare-fun t!73814 () Bool)

(assert (=> (and b!532053 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901)))))) t!73814) tb!47281))

(declare-fun result!52728 () Bool)

(assert (= result!52728 result!52716))

(assert (=> d!188506 t!73814))

(declare-fun tp!169733 () Bool)

(declare-fun b_and!51993 () Bool)

(assert (=> b!532053 (= tp!169733 (and (=> t!73812 result!52726) (=> t!73814 result!52728) b_and!51993))))

(declare-fun e!320394 () Bool)

(assert (=> b!532053 (= e!320394 (and tp!169731 tp!169733))))

(declare-fun b!532052 () Bool)

(declare-fun e!320396 () Bool)

(declare-fun tp!169730 () Bool)

(assert (=> b!532052 (= e!320396 (and tp!169730 (inv!6384 (tag!1187 (h!10494 (t!73790 rules!3103)))) (inv!6387 (transformation!925 (h!10494 (t!73790 rules!3103)))) e!320394))))

(declare-fun b!532051 () Bool)

(declare-fun e!320395 () Bool)

(declare-fun tp!169732 () Bool)

(assert (=> b!532051 (= e!320395 (and e!320396 tp!169732))))

(assert (=> b!531755 (= tp!169657 e!320395)))

(assert (= b!532052 b!532053))

(assert (= b!532051 b!532052))

(assert (= (and b!531755 ((_ is Cons!5093) (t!73790 rules!3103))) b!532051))

(declare-fun m!777179 () Bool)

(assert (=> b!532052 m!777179))

(declare-fun m!777181 () Bool)

(assert (=> b!532052 m!777181))

(declare-fun b!532054 () Bool)

(declare-fun e!320398 () Bool)

(declare-fun tp!169734 () Bool)

(assert (=> b!532054 (= e!320398 (and tp_is_empty!2873 tp!169734))))

(assert (=> b!531750 (= tp!169649 e!320398)))

(assert (= (and b!531750 ((_ is Cons!5092) (t!73789 suffix!1342))) b!532054))

(declare-fun b!532055 () Bool)

(declare-fun e!320399 () Bool)

(assert (=> b!532055 (= e!320399 tp_is_empty!2873)))

(declare-fun b!532058 () Bool)

(declare-fun tp!169739 () Bool)

(declare-fun tp!169738 () Bool)

(assert (=> b!532058 (= e!320399 (and tp!169739 tp!169738))))

(declare-fun b!532057 () Bool)

(declare-fun tp!169735 () Bool)

(assert (=> b!532057 (= e!320399 tp!169735)))

(assert (=> b!531749 (= tp!169658 e!320399)))

(declare-fun b!532056 () Bool)

(declare-fun tp!169737 () Bool)

(declare-fun tp!169736 () Bool)

(assert (=> b!532056 (= e!320399 (and tp!169737 tp!169736))))

(assert (= (and b!531749 ((_ is ElementMatch!1259) (regex!925 (rule!1625 token!491)))) b!532055))

(assert (= (and b!531749 ((_ is Concat!2208) (regex!925 (rule!1625 token!491)))) b!532056))

(assert (= (and b!531749 ((_ is Star!1259) (regex!925 (rule!1625 token!491)))) b!532057))

(assert (= (and b!531749 ((_ is Union!1259) (regex!925 (rule!1625 token!491)))) b!532058))

(declare-fun b!532059 () Bool)

(declare-fun e!320400 () Bool)

(declare-fun tp!169740 () Bool)

(assert (=> b!532059 (= e!320400 (and tp_is_empty!2873 tp!169740))))

(assert (=> b!531744 (= tp!169654 e!320400)))

(assert (= (and b!531744 ((_ is Cons!5092) (t!73789 input!2705))) b!532059))

(declare-fun b_lambda!20575 () Bool)

(assert (= b_lambda!20571 (or (and b!531742 b_free!14379 (= (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toChars!1627 (transformation!925 (rule!1625 token!491))))) (and b!531739 b_free!14383) (and b!532053 b_free!14391 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toChars!1627 (transformation!925 (rule!1625 token!491))))) b_lambda!20575)))

(declare-fun b_lambda!20577 () Bool)

(assert (= b_lambda!20559 (or (and b!531742 b_free!14379 (= (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toChars!1627 (transformation!925 (rule!1625 token!491))))) (and b!531739 b_free!14383) (and b!532053 b_free!14391 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toChars!1627 (transformation!925 (rule!1625 token!491))))) b_lambda!20577)))

(check-sat (not b!531849) (not d!188520) (not b!532016) b_and!51959 (not b!532001) (not d!188424) (not b_lambda!20573) (not b!531984) (not b_next!14407) (not b!531995) (not b!532009) (not b!531851) (not b!532035) (not d!188506) (not b!532051) (not d!188524) (not b!531967) (not b!532018) (not b!531979) (not d!188504) (not b!531993) (not b!532021) (not b!532058) (not b!531848) (not b!532056) b_and!51993 tp_is_empty!2873 (not d!188484) b_and!51987 (not d!188498) (not b!532054) (not b!532052) (not b_lambda!20575) (not b!531981) (not b_next!14395) (not d!188528) (not d!188500) (not bm!38159) (not b!532020) (not b!532057) (not b!531908) (not b!531909) (not d!188522) b_and!51955 (not d!188510) (not b!532003) (not b!532036) (not b!531990) (not b!532010) (not b_next!14397) (not d!188494) (not b!532012) (not b!531852) (not b!531989) (not b_next!14399) (not d!188414) (not b!531853) (not b!532014) (not b_lambda!20577) (not b!531980) (not b!531854) b_and!51991 (not b_next!14405) (not b!532017) (not b!531847) (not d!188502) (not d!188482) (not b!532037) (not b!531992) (not b!531855) (not tb!47275) (not b!531951) (not b!532005) (not b!532023) (not b_next!14393) (not tb!47259) (not d!188508) b_and!51989 (not b!531760) (not d!188492) (not b!532042) (not b!532007) (not b!531905) (not b!532015) (not b!531968) (not d!188416) (not bm!38162) (not b!532059) (not b!532004) (not b!532011))
(check-sat b_and!51959 (not b_next!14407) b_and!51993 b_and!51987 (not b_next!14395) b_and!51955 (not b_next!14397) (not b_next!14399) (not b_next!14393) b_and!51989 b_and!51991 (not b_next!14405))
(get-model)

(declare-fun d!188548 () Bool)

(assert (=> d!188548 (= (isDefined!1087 lt!218994) (not (isEmpty!3687 lt!218994)))))

(declare-fun bs!67162 () Bool)

(assert (= bs!67162 d!188548))

(assert (=> bs!67162 m!777157))

(assert (=> b!532011 d!188548))

(declare-fun d!188550 () Bool)

(declare-fun isBalanced!501 (Conc!1642) Bool)

(assert (=> d!188550 (= (inv!6392 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491))) (isBalanced!501 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491)))))))

(declare-fun bs!67163 () Bool)

(assert (= bs!67163 d!188550))

(declare-fun m!777205 () Bool)

(assert (=> bs!67163 m!777205))

(assert (=> tb!47259 d!188550))

(declare-fun d!188552 () Bool)

(declare-fun c!101515 () Bool)

(assert (=> d!188552 (= c!101515 ((_ is Nil!5092) lt!218995))))

(declare-fun e!320417 () (InoxSet C!3440))

(assert (=> d!188552 (= (content!902 lt!218995) e!320417)))

(declare-fun b!532082 () Bool)

(assert (=> b!532082 (= e!320417 ((as const (Array C!3440 Bool)) false))))

(declare-fun b!532083 () Bool)

(assert (=> b!532083 (= e!320417 ((_ map or) (store ((as const (Array C!3440 Bool)) false) (h!10493 lt!218995) true) (content!902 (t!73789 lt!218995))))))

(assert (= (and d!188552 c!101515) b!532082))

(assert (= (and d!188552 (not c!101515)) b!532083))

(declare-fun m!777207 () Bool)

(assert (=> b!532083 m!777207))

(declare-fun m!777209 () Bool)

(assert (=> b!532083 m!777209))

(assert (=> d!188524 d!188552))

(declare-fun d!188554 () Bool)

(declare-fun c!101516 () Bool)

(assert (=> d!188554 (= c!101516 ((_ is Nil!5092) input!2705))))

(declare-fun e!320418 () (InoxSet C!3440))

(assert (=> d!188554 (= (content!902 input!2705) e!320418)))

(declare-fun b!532084 () Bool)

(assert (=> b!532084 (= e!320418 ((as const (Array C!3440 Bool)) false))))

(declare-fun b!532085 () Bool)

(assert (=> b!532085 (= e!320418 ((_ map or) (store ((as const (Array C!3440 Bool)) false) (h!10493 input!2705) true) (content!902 (t!73789 input!2705))))))

(assert (= (and d!188554 c!101516) b!532084))

(assert (= (and d!188554 (not c!101516)) b!532085))

(declare-fun m!777211 () Bool)

(assert (=> b!532085 m!777211))

(declare-fun m!777213 () Bool)

(assert (=> b!532085 m!777213))

(assert (=> d!188524 d!188554))

(declare-fun d!188556 () Bool)

(declare-fun c!101517 () Bool)

(assert (=> d!188556 (= c!101517 ((_ is Nil!5092) suffix!1342))))

(declare-fun e!320419 () (InoxSet C!3440))

(assert (=> d!188556 (= (content!902 suffix!1342) e!320419)))

(declare-fun b!532086 () Bool)

(assert (=> b!532086 (= e!320419 ((as const (Array C!3440 Bool)) false))))

(declare-fun b!532087 () Bool)

(assert (=> b!532087 (= e!320419 ((_ map or) (store ((as const (Array C!3440 Bool)) false) (h!10493 suffix!1342) true) (content!902 (t!73789 suffix!1342))))))

(assert (= (and d!188556 c!101517) b!532086))

(assert (= (and d!188556 (not c!101517)) b!532087))

(declare-fun m!777215 () Bool)

(assert (=> b!532087 m!777215))

(declare-fun m!777217 () Bool)

(assert (=> b!532087 m!777217))

(assert (=> d!188524 d!188556))

(declare-fun d!188558 () Bool)

(declare-fun charsToBigInt!0 (List!5101 Int) Int)

(assert (=> d!188558 (= (inv!15 (value!31229 token!491)) (= (charsToBigInt!0 (text!7092 (value!31229 token!491)) 0) (value!31225 (value!31229 token!491))))))

(declare-fun bs!67164 () Bool)

(assert (= bs!67164 d!188558))

(declare-fun m!777219 () Bool)

(assert (=> bs!67164 m!777219))

(assert (=> b!531905 d!188558))

(declare-fun b!532106 () Bool)

(declare-fun res!224790 () Bool)

(declare-fun e!320428 () Bool)

(assert (=> b!532106 (=> (not res!224790) (not e!320428))))

(declare-fun lt!219017 () Option!1275)

(assert (=> b!532106 (= res!224790 (< (size!4119 (_2!3366 (get!1902 lt!219017))) (size!4119 lt!218905)))))

(declare-fun d!188560 () Bool)

(declare-fun e!320431 () Bool)

(assert (=> d!188560 e!320431))

(declare-fun res!224787 () Bool)

(assert (=> d!188560 (=> res!224787 e!320431)))

(assert (=> d!188560 (= res!224787 (isEmpty!3687 lt!219017))))

(declare-fun e!320430 () Option!1275)

(assert (=> d!188560 (= lt!219017 e!320430)))

(declare-fun c!101520 () Bool)

(declare-datatypes ((tuple2!6208 0))(
  ( (tuple2!6209 (_1!3368 List!5102) (_2!3368 List!5102)) )
))
(declare-fun lt!219014 () tuple2!6208)

(assert (=> d!188560 (= c!101520 (isEmpty!3685 (_1!3368 lt!219014)))))

(declare-fun findLongestMatch!100 (Regex!1259 List!5102) tuple2!6208)

(assert (=> d!188560 (= lt!219014 (findLongestMatch!100 (regex!925 (h!10494 rules!3103)) lt!218905))))

(declare-fun ruleValid!151 (LexerInterface!811 Rule!1650) Bool)

(assert (=> d!188560 (ruleValid!151 thiss!22590 (h!10494 rules!3103))))

(assert (=> d!188560 (= (maxPrefixOneRule!242 thiss!22590 (h!10494 rules!3103) lt!218905) lt!219017)))

(declare-fun b!532107 () Bool)

(declare-fun size!4121 (BalanceConc!3292) Int)

(assert (=> b!532107 (= e!320430 (Some!1274 (tuple2!6205 (Token!1587 (apply!1208 (transformation!925 (h!10494 rules!3103)) (seqFromList!1131 (_1!3368 lt!219014))) (h!10494 rules!3103) (size!4121 (seqFromList!1131 (_1!3368 lt!219014))) (_1!3368 lt!219014)) (_2!3368 lt!219014))))))

(declare-fun lt!219013 () Unit!8881)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!105 (Regex!1259 List!5102) Unit!8881)

(assert (=> b!532107 (= lt!219013 (longestMatchIsAcceptedByMatchOrIsEmpty!105 (regex!925 (h!10494 rules!3103)) lt!218905))))

(declare-fun res!224788 () Bool)

(declare-fun findLongestMatchInner!121 (Regex!1259 List!5102 Int List!5102 List!5102 Int) tuple2!6208)

(assert (=> b!532107 (= res!224788 (isEmpty!3685 (_1!3368 (findLongestMatchInner!121 (regex!925 (h!10494 rules!3103)) Nil!5092 (size!4119 Nil!5092) lt!218905 lt!218905 (size!4119 lt!218905)))))))

(declare-fun e!320429 () Bool)

(assert (=> b!532107 (=> res!224788 e!320429)))

(assert (=> b!532107 e!320429))

(declare-fun lt!219016 () Unit!8881)

(assert (=> b!532107 (= lt!219016 lt!219013)))

(declare-fun lt!219015 () Unit!8881)

(declare-fun lemmaSemiInverse!98 (TokenValueInjection!1666 BalanceConc!3292) Unit!8881)

(assert (=> b!532107 (= lt!219015 (lemmaSemiInverse!98 (transformation!925 (h!10494 rules!3103)) (seqFromList!1131 (_1!3368 lt!219014))))))

(declare-fun b!532108 () Bool)

(declare-fun res!224786 () Bool)

(assert (=> b!532108 (=> (not res!224786) (not e!320428))))

(assert (=> b!532108 (= res!224786 (= (rule!1625 (_1!3366 (get!1902 lt!219017))) (h!10494 rules!3103)))))

(declare-fun b!532109 () Bool)

(declare-fun res!224789 () Bool)

(assert (=> b!532109 (=> (not res!224789) (not e!320428))))

(assert (=> b!532109 (= res!224789 (= (value!31229 (_1!3366 (get!1902 lt!219017))) (apply!1208 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!219017)))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!219017)))))))))

(declare-fun b!532110 () Bool)

(assert (=> b!532110 (= e!320430 None!1274)))

(declare-fun b!532111 () Bool)

(assert (=> b!532111 (= e!320429 (matchR!442 (regex!925 (h!10494 rules!3103)) (_1!3368 (findLongestMatchInner!121 (regex!925 (h!10494 rules!3103)) Nil!5092 (size!4119 Nil!5092) lt!218905 lt!218905 (size!4119 lt!218905)))))))

(declare-fun b!532112 () Bool)

(declare-fun res!224784 () Bool)

(assert (=> b!532112 (=> (not res!224784) (not e!320428))))

(assert (=> b!532112 (= res!224784 (= (++!1413 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!219017)))) (_2!3366 (get!1902 lt!219017))) lt!218905))))

(declare-fun b!532113 () Bool)

(assert (=> b!532113 (= e!320431 e!320428)))

(declare-fun res!224785 () Bool)

(assert (=> b!532113 (=> (not res!224785) (not e!320428))))

(assert (=> b!532113 (= res!224785 (matchR!442 (regex!925 (h!10494 rules!3103)) (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!219017))))))))

(declare-fun b!532114 () Bool)

(assert (=> b!532114 (= e!320428 (= (size!4118 (_1!3366 (get!1902 lt!219017))) (size!4119 (originalCharacters!964 (_1!3366 (get!1902 lt!219017))))))))

(assert (= (and d!188560 c!101520) b!532110))

(assert (= (and d!188560 (not c!101520)) b!532107))

(assert (= (and b!532107 (not res!224788)) b!532111))

(assert (= (and d!188560 (not res!224787)) b!532113))

(assert (= (and b!532113 res!224785) b!532112))

(assert (= (and b!532112 res!224784) b!532106))

(assert (= (and b!532106 res!224790) b!532108))

(assert (= (and b!532108 res!224786) b!532109))

(assert (= (and b!532109 res!224789) b!532114))

(declare-fun m!777221 () Bool)

(assert (=> b!532112 m!777221))

(declare-fun m!777223 () Bool)

(assert (=> b!532112 m!777223))

(assert (=> b!532112 m!777223))

(declare-fun m!777225 () Bool)

(assert (=> b!532112 m!777225))

(assert (=> b!532112 m!777225))

(declare-fun m!777227 () Bool)

(assert (=> b!532112 m!777227))

(assert (=> b!532108 m!777221))

(assert (=> b!532114 m!777221))

(declare-fun m!777229 () Bool)

(assert (=> b!532114 m!777229))

(declare-fun m!777231 () Bool)

(assert (=> b!532107 m!777231))

(assert (=> b!532107 m!777155))

(declare-fun m!777233 () Bool)

(assert (=> b!532107 m!777233))

(declare-fun m!777235 () Bool)

(assert (=> b!532107 m!777235))

(declare-fun m!777237 () Bool)

(assert (=> b!532107 m!777237))

(assert (=> b!532107 m!777155))

(declare-fun m!777239 () Bool)

(assert (=> b!532107 m!777239))

(declare-fun m!777241 () Bool)

(assert (=> b!532107 m!777241))

(assert (=> b!532107 m!777235))

(declare-fun m!777243 () Bool)

(assert (=> b!532107 m!777243))

(assert (=> b!532107 m!777231))

(assert (=> b!532107 m!777235))

(declare-fun m!777245 () Bool)

(assert (=> b!532107 m!777245))

(assert (=> b!532107 m!777235))

(assert (=> b!532106 m!777221))

(declare-fun m!777247 () Bool)

(assert (=> b!532106 m!777247))

(assert (=> b!532106 m!777155))

(assert (=> b!532111 m!777231))

(assert (=> b!532111 m!777155))

(assert (=> b!532111 m!777231))

(assert (=> b!532111 m!777155))

(assert (=> b!532111 m!777233))

(declare-fun m!777249 () Bool)

(assert (=> b!532111 m!777249))

(assert (=> b!532109 m!777221))

(declare-fun m!777251 () Bool)

(assert (=> b!532109 m!777251))

(assert (=> b!532109 m!777251))

(declare-fun m!777253 () Bool)

(assert (=> b!532109 m!777253))

(declare-fun m!777255 () Bool)

(assert (=> d!188560 m!777255))

(declare-fun m!777257 () Bool)

(assert (=> d!188560 m!777257))

(declare-fun m!777259 () Bool)

(assert (=> d!188560 m!777259))

(declare-fun m!777261 () Bool)

(assert (=> d!188560 m!777261))

(assert (=> b!532113 m!777221))

(assert (=> b!532113 m!777223))

(assert (=> b!532113 m!777223))

(assert (=> b!532113 m!777225))

(assert (=> b!532113 m!777225))

(declare-fun m!777263 () Bool)

(assert (=> b!532113 m!777263))

(assert (=> bm!38162 d!188560))

(declare-fun d!188562 () Bool)

(assert (=> d!188562 (= (list!2117 lt!218983) (list!2119 (c!101469 lt!218983)))))

(declare-fun bs!67165 () Bool)

(assert (= bs!67165 d!188562))

(declare-fun m!777265 () Bool)

(assert (=> bs!67165 m!777265))

(assert (=> d!188506 d!188562))

(declare-fun d!188564 () Bool)

(assert (=> d!188564 (= (isEmpty!3687 lt!218957) (not ((_ is Some!1274) lt!218957)))))

(assert (=> d!188424 d!188564))

(declare-fun b!532115 () Bool)

(declare-fun e!320434 () Bool)

(declare-fun e!320433 () Bool)

(assert (=> b!532115 (= e!320434 e!320433)))

(declare-fun res!224792 () Bool)

(assert (=> b!532115 (=> (not res!224792) (not e!320433))))

(assert (=> b!532115 (= res!224792 (not ((_ is Nil!5092) input!2705)))))

(declare-fun b!532118 () Bool)

(declare-fun e!320432 () Bool)

(assert (=> b!532118 (= e!320432 (>= (size!4119 input!2705) (size!4119 input!2705)))))

(declare-fun b!532116 () Bool)

(declare-fun res!224794 () Bool)

(assert (=> b!532116 (=> (not res!224794) (not e!320433))))

(assert (=> b!532116 (= res!224794 (= (head!1168 input!2705) (head!1168 input!2705)))))

(declare-fun b!532117 () Bool)

(assert (=> b!532117 (= e!320433 (isPrefix!567 (tail!697 input!2705) (tail!697 input!2705)))))

(declare-fun d!188566 () Bool)

(assert (=> d!188566 e!320432))

(declare-fun res!224793 () Bool)

(assert (=> d!188566 (=> res!224793 e!320432)))

(declare-fun lt!219018 () Bool)

(assert (=> d!188566 (= res!224793 (not lt!219018))))

(assert (=> d!188566 (= lt!219018 e!320434)))

(declare-fun res!224791 () Bool)

(assert (=> d!188566 (=> res!224791 e!320434)))

(assert (=> d!188566 (= res!224791 ((_ is Nil!5092) input!2705))))

(assert (=> d!188566 (= (isPrefix!567 input!2705 input!2705) lt!219018)))

(assert (= (and d!188566 (not res!224791)) b!532115))

(assert (= (and b!532115 res!224792) b!532116))

(assert (= (and b!532116 res!224794) b!532117))

(assert (= (and d!188566 (not res!224793)) b!532118))

(assert (=> b!532118 m!776779))

(assert (=> b!532118 m!776779))

(assert (=> b!532116 m!777073))

(assert (=> b!532116 m!777073))

(assert (=> b!532117 m!777077))

(assert (=> b!532117 m!777077))

(assert (=> b!532117 m!777077))

(assert (=> b!532117 m!777077))

(declare-fun m!777267 () Bool)

(assert (=> b!532117 m!777267))

(assert (=> d!188424 d!188566))

(declare-fun d!188568 () Bool)

(assert (=> d!188568 (isPrefix!567 input!2705 input!2705)))

(declare-fun lt!219021 () Unit!8881)

(declare-fun choose!3742 (List!5102 List!5102) Unit!8881)

(assert (=> d!188568 (= lt!219021 (choose!3742 input!2705 input!2705))))

(assert (=> d!188568 (= (lemmaIsPrefixRefl!311 input!2705 input!2705) lt!219021)))

(declare-fun bs!67166 () Bool)

(assert (= bs!67166 d!188568))

(assert (=> bs!67166 m!776979))

(declare-fun m!777269 () Bool)

(assert (=> bs!67166 m!777269))

(assert (=> d!188424 d!188568))

(declare-fun d!188570 () Bool)

(assert (=> d!188570 true))

(declare-fun lt!219090 () Bool)

(declare-fun lambda!15422 () Int)

(declare-fun forall!1514 (List!5103 Int) Bool)

(assert (=> d!188570 (= lt!219090 (forall!1514 rules!3103 lambda!15422))))

(declare-fun e!320593 () Bool)

(assert (=> d!188570 (= lt!219090 e!320593)))

(declare-fun res!224916 () Bool)

(assert (=> d!188570 (=> res!224916 e!320593)))

(assert (=> d!188570 (= res!224916 (not ((_ is Cons!5093) rules!3103)))))

(assert (=> d!188570 (= (rulesValidInductive!320 thiss!22590 rules!3103) lt!219090)))

(declare-fun b!532426 () Bool)

(declare-fun e!320592 () Bool)

(assert (=> b!532426 (= e!320593 e!320592)))

(declare-fun res!224915 () Bool)

(assert (=> b!532426 (=> (not res!224915) (not e!320592))))

(assert (=> b!532426 (= res!224915 (ruleValid!151 thiss!22590 (h!10494 rules!3103)))))

(declare-fun b!532427 () Bool)

(assert (=> b!532427 (= e!320592 (rulesValidInductive!320 thiss!22590 (t!73790 rules!3103)))))

(assert (= (and d!188570 (not res!224916)) b!532426))

(assert (= (and b!532426 res!224915) b!532427))

(declare-fun m!777673 () Bool)

(assert (=> d!188570 m!777673))

(assert (=> b!532426 m!777261))

(declare-fun m!777675 () Bool)

(assert (=> b!532427 m!777675))

(assert (=> d!188424 d!188570))

(declare-fun d!188726 () Bool)

(assert (=> d!188726 (= (inv!6384 (tag!1187 (h!10494 (t!73790 rules!3103)))) (= (mod (str.len (value!31203 (tag!1187 (h!10494 (t!73790 rules!3103))))) 2) 0))))

(assert (=> b!532052 d!188726))

(declare-fun d!188728 () Bool)

(declare-fun res!224917 () Bool)

(declare-fun e!320594 () Bool)

(assert (=> d!188728 (=> (not res!224917) (not e!320594))))

(assert (=> d!188728 (= res!224917 (semiInverseModEq!369 (toChars!1627 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toValue!1768 (transformation!925 (h!10494 (t!73790 rules!3103))))))))

(assert (=> d!188728 (= (inv!6387 (transformation!925 (h!10494 (t!73790 rules!3103)))) e!320594)))

(declare-fun b!532430 () Bool)

(assert (=> b!532430 (= e!320594 (equivClasses!352 (toChars!1627 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toValue!1768 (transformation!925 (h!10494 (t!73790 rules!3103))))))))

(assert (= (and d!188728 res!224917) b!532430))

(declare-fun m!777677 () Bool)

(assert (=> d!188728 m!777677))

(declare-fun m!777679 () Bool)

(assert (=> b!532430 m!777679))

(assert (=> b!532052 d!188728))

(declare-fun d!188730 () Bool)

(assert (=> d!188730 (= (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957)))) (list!2119 (c!101469 (charsOf!554 (_1!3366 (get!1902 lt!218957))))))))

(declare-fun bs!67190 () Bool)

(assert (= bs!67190 d!188730))

(declare-fun m!777681 () Bool)

(assert (=> bs!67190 m!777681))

(assert (=> b!531855 d!188730))

(declare-fun d!188732 () Bool)

(declare-fun lt!219091 () BalanceConc!3292)

(assert (=> d!188732 (= (list!2117 lt!219091) (originalCharacters!964 (_1!3366 (get!1902 lt!218957))))))

(assert (=> d!188732 (= lt!219091 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957))))) (value!31229 (_1!3366 (get!1902 lt!218957)))))))

(assert (=> d!188732 (= (charsOf!554 (_1!3366 (get!1902 lt!218957))) lt!219091)))

(declare-fun b_lambda!20589 () Bool)

(assert (=> (not b_lambda!20589) (not d!188732)))

(declare-fun t!73855 () Bool)

(declare-fun tb!47319 () Bool)

(assert (=> (and b!531742 (= (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))) t!73855) tb!47319))

(declare-fun b!532431 () Bool)

(declare-fun e!320595 () Bool)

(declare-fun tp!169817 () Bool)

(assert (=> b!532431 (= e!320595 (and (inv!6391 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957))))) (value!31229 (_1!3366 (get!1902 lt!218957)))))) tp!169817))))

(declare-fun result!52770 () Bool)

(assert (=> tb!47319 (= result!52770 (and (inv!6392 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957))))) (value!31229 (_1!3366 (get!1902 lt!218957))))) e!320595))))

(assert (= tb!47319 b!532431))

(declare-fun m!777683 () Bool)

(assert (=> b!532431 m!777683))

(declare-fun m!777685 () Bool)

(assert (=> tb!47319 m!777685))

(assert (=> d!188732 t!73855))

(declare-fun b_and!52023 () Bool)

(assert (= b_and!51987 (and (=> t!73855 result!52770) b_and!52023)))

(declare-fun t!73857 () Bool)

(declare-fun tb!47321 () Bool)

(assert (=> (and b!531739 (= (toChars!1627 (transformation!925 (rule!1625 token!491))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))) t!73857) tb!47321))

(declare-fun result!52772 () Bool)

(assert (= result!52772 result!52770))

(assert (=> d!188732 t!73857))

(declare-fun b_and!52025 () Bool)

(assert (= b_and!51989 (and (=> t!73857 result!52772) b_and!52025)))

(declare-fun tb!47323 () Bool)

(declare-fun t!73859 () Bool)

(assert (=> (and b!532053 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))) t!73859) tb!47323))

(declare-fun result!52774 () Bool)

(assert (= result!52774 result!52770))

(assert (=> d!188732 t!73859))

(declare-fun b_and!52027 () Bool)

(assert (= b_and!51993 (and (=> t!73859 result!52774) b_and!52027)))

(declare-fun m!777687 () Bool)

(assert (=> d!188732 m!777687))

(declare-fun m!777689 () Bool)

(assert (=> d!188732 m!777689))

(assert (=> b!531855 d!188732))

(declare-fun d!188734 () Bool)

(assert (=> d!188734 (= (get!1902 lt!218957) (v!16079 lt!218957))))

(assert (=> b!531855 d!188734))

(declare-fun d!188736 () Bool)

(declare-fun lt!219092 () Int)

(assert (=> d!188736 (>= lt!219092 0)))

(declare-fun e!320596 () Int)

(assert (=> d!188736 (= lt!219092 e!320596)))

(declare-fun c!101577 () Bool)

(assert (=> d!188736 (= c!101577 ((_ is Nil!5092) lt!218976))))

(assert (=> d!188736 (= (size!4119 lt!218976) lt!219092)))

(declare-fun b!532432 () Bool)

(assert (=> b!532432 (= e!320596 0)))

(declare-fun b!532433 () Bool)

(assert (=> b!532433 (= e!320596 (+ 1 (size!4119 (t!73789 lt!218976))))))

(assert (= (and d!188736 c!101577) b!532432))

(assert (= (and d!188736 (not c!101577)) b!532433))

(declare-fun m!777691 () Bool)

(assert (=> b!532433 m!777691))

(assert (=> b!531993 d!188736))

(assert (=> b!531993 d!188518))

(declare-fun d!188738 () Bool)

(declare-fun lt!219093 () Int)

(assert (=> d!188738 (>= lt!219093 0)))

(declare-fun e!320597 () Int)

(assert (=> d!188738 (= lt!219093 e!320597)))

(declare-fun c!101578 () Bool)

(assert (=> d!188738 (= c!101578 ((_ is Nil!5092) (_2!3366 (v!16079 lt!218901))))))

(assert (=> d!188738 (= (size!4119 (_2!3366 (v!16079 lt!218901))) lt!219093)))

(declare-fun b!532434 () Bool)

(assert (=> b!532434 (= e!320597 0)))

(declare-fun b!532435 () Bool)

(assert (=> b!532435 (= e!320597 (+ 1 (size!4119 (t!73789 (_2!3366 (v!16079 lt!218901))))))))

(assert (= (and d!188738 c!101578) b!532434))

(assert (= (and d!188738 (not c!101578)) b!532435))

(declare-fun m!777693 () Bool)

(assert (=> b!532435 m!777693))

(assert (=> b!531993 d!188738))

(declare-fun b!532439 () Bool)

(declare-fun e!320598 () Bool)

(declare-fun lt!219094 () List!5102)

(assert (=> b!532439 (= e!320598 (or (not (= (_2!3366 (get!1902 lt!218957)) Nil!5092)) (= lt!219094 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957)))))))))

(declare-fun b!532436 () Bool)

(declare-fun e!320599 () List!5102)

(assert (=> b!532436 (= e!320599 (_2!3366 (get!1902 lt!218957)))))

(declare-fun b!532437 () Bool)

(assert (=> b!532437 (= e!320599 (Cons!5092 (h!10493 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))) (++!1413 (t!73789 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))) (_2!3366 (get!1902 lt!218957)))))))

(declare-fun d!188740 () Bool)

(assert (=> d!188740 e!320598))

(declare-fun res!224919 () Bool)

(assert (=> d!188740 (=> (not res!224919) (not e!320598))))

(assert (=> d!188740 (= res!224919 (= (content!902 lt!219094) ((_ map or) (content!902 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))) (content!902 (_2!3366 (get!1902 lt!218957))))))))

(assert (=> d!188740 (= lt!219094 e!320599)))

(declare-fun c!101579 () Bool)

(assert (=> d!188740 (= c!101579 ((_ is Nil!5092) (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))))))

(assert (=> d!188740 (= (++!1413 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957)))) (_2!3366 (get!1902 lt!218957))) lt!219094)))

(declare-fun b!532438 () Bool)

(declare-fun res!224918 () Bool)

(assert (=> b!532438 (=> (not res!224918) (not e!320598))))

(assert (=> b!532438 (= res!224918 (= (size!4119 lt!219094) (+ (size!4119 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))) (size!4119 (_2!3366 (get!1902 lt!218957))))))))

(assert (= (and d!188740 c!101579) b!532436))

(assert (= (and d!188740 (not c!101579)) b!532437))

(assert (= (and d!188740 res!224919) b!532438))

(assert (= (and b!532438 res!224918) b!532439))

(declare-fun m!777695 () Bool)

(assert (=> b!532437 m!777695))

(declare-fun m!777697 () Bool)

(assert (=> d!188740 m!777697))

(assert (=> d!188740 m!776939))

(declare-fun m!777699 () Bool)

(assert (=> d!188740 m!777699))

(declare-fun m!777701 () Bool)

(assert (=> d!188740 m!777701))

(declare-fun m!777703 () Bool)

(assert (=> b!532438 m!777703))

(assert (=> b!532438 m!776939))

(declare-fun m!777705 () Bool)

(assert (=> b!532438 m!777705))

(assert (=> b!532438 m!776975))

(assert (=> b!531853 d!188740))

(assert (=> b!531853 d!188730))

(assert (=> b!531853 d!188732))

(assert (=> b!531853 d!188734))

(declare-fun call!38174 () Option!1275)

(declare-fun bm!38169 () Bool)

(assert (=> bm!38169 (= call!38174 (maxPrefixOneRule!242 thiss!22590 (h!10494 (t!73790 rules!3103)) input!2705))))

(declare-fun b!532440 () Bool)

(declare-fun e!320601 () Bool)

(declare-fun lt!219099 () Option!1275)

(assert (=> b!532440 (= e!320601 (contains!1187 (t!73790 rules!3103) (rule!1625 (_1!3366 (get!1902 lt!219099)))))))

(declare-fun b!532441 () Bool)

(declare-fun e!320600 () Bool)

(assert (=> b!532441 (= e!320600 e!320601)))

(declare-fun res!224922 () Bool)

(assert (=> b!532441 (=> (not res!224922) (not e!320601))))

(assert (=> b!532441 (= res!224922 (isDefined!1087 lt!219099))))

(declare-fun b!532442 () Bool)

(declare-fun res!224924 () Bool)

(assert (=> b!532442 (=> (not res!224924) (not e!320601))))

(assert (=> b!532442 (= res!224924 (= (value!31229 (_1!3366 (get!1902 lt!219099))) (apply!1208 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!219099)))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!219099)))))))))

(declare-fun b!532443 () Bool)

(declare-fun e!320602 () Option!1275)

(assert (=> b!532443 (= e!320602 call!38174)))

(declare-fun d!188742 () Bool)

(assert (=> d!188742 e!320600))

(declare-fun res!224925 () Bool)

(assert (=> d!188742 (=> res!224925 e!320600)))

(assert (=> d!188742 (= res!224925 (isEmpty!3687 lt!219099))))

(assert (=> d!188742 (= lt!219099 e!320602)))

(declare-fun c!101580 () Bool)

(assert (=> d!188742 (= c!101580 (and ((_ is Cons!5093) (t!73790 rules!3103)) ((_ is Nil!5093) (t!73790 (t!73790 rules!3103)))))))

(declare-fun lt!219098 () Unit!8881)

(declare-fun lt!219096 () Unit!8881)

(assert (=> d!188742 (= lt!219098 lt!219096)))

(assert (=> d!188742 (isPrefix!567 input!2705 input!2705)))

(assert (=> d!188742 (= lt!219096 (lemmaIsPrefixRefl!311 input!2705 input!2705))))

(assert (=> d!188742 (rulesValidInductive!320 thiss!22590 (t!73790 rules!3103))))

(assert (=> d!188742 (= (maxPrefix!509 thiss!22590 (t!73790 rules!3103) input!2705) lt!219099)))

(declare-fun b!532444 () Bool)

(declare-fun lt!219095 () Option!1275)

(declare-fun lt!219097 () Option!1275)

(assert (=> b!532444 (= e!320602 (ite (and ((_ is None!1274) lt!219095) ((_ is None!1274) lt!219097)) None!1274 (ite ((_ is None!1274) lt!219097) lt!219095 (ite ((_ is None!1274) lt!219095) lt!219097 (ite (>= (size!4118 (_1!3366 (v!16079 lt!219095))) (size!4118 (_1!3366 (v!16079 lt!219097)))) lt!219095 lt!219097)))))))

(assert (=> b!532444 (= lt!219095 call!38174)))

(assert (=> b!532444 (= lt!219097 (maxPrefix!509 thiss!22590 (t!73790 (t!73790 rules!3103)) input!2705))))

(declare-fun b!532445 () Bool)

(declare-fun res!224923 () Bool)

(assert (=> b!532445 (=> (not res!224923) (not e!320601))))

(assert (=> b!532445 (= res!224923 (< (size!4119 (_2!3366 (get!1902 lt!219099))) (size!4119 input!2705)))))

(declare-fun b!532446 () Bool)

(declare-fun res!224921 () Bool)

(assert (=> b!532446 (=> (not res!224921) (not e!320601))))

(assert (=> b!532446 (= res!224921 (= (++!1413 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!219099)))) (_2!3366 (get!1902 lt!219099))) input!2705))))

(declare-fun b!532447 () Bool)

(declare-fun res!224920 () Bool)

(assert (=> b!532447 (=> (not res!224920) (not e!320601))))

(assert (=> b!532447 (= res!224920 (matchR!442 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!219099)))) (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!219099))))))))

(declare-fun b!532448 () Bool)

(declare-fun res!224926 () Bool)

(assert (=> b!532448 (=> (not res!224926) (not e!320601))))

(assert (=> b!532448 (= res!224926 (= (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!219099)))) (originalCharacters!964 (_1!3366 (get!1902 lt!219099)))))))

(assert (= (and d!188742 c!101580) b!532443))

(assert (= (and d!188742 (not c!101580)) b!532444))

(assert (= (or b!532443 b!532444) bm!38169))

(assert (= (and d!188742 (not res!224925)) b!532441))

(assert (= (and b!532441 res!224922) b!532448))

(assert (= (and b!532448 res!224926) b!532445))

(assert (= (and b!532445 res!224923) b!532446))

(assert (= (and b!532446 res!224921) b!532442))

(assert (= (and b!532442 res!224924) b!532447))

(assert (= (and b!532447 res!224920) b!532440))

(declare-fun m!777707 () Bool)

(assert (=> b!532446 m!777707))

(declare-fun m!777709 () Bool)

(assert (=> b!532446 m!777709))

(assert (=> b!532446 m!777709))

(declare-fun m!777711 () Bool)

(assert (=> b!532446 m!777711))

(assert (=> b!532446 m!777711))

(declare-fun m!777713 () Bool)

(assert (=> b!532446 m!777713))

(declare-fun m!777715 () Bool)

(assert (=> b!532441 m!777715))

(declare-fun m!777717 () Bool)

(assert (=> bm!38169 m!777717))

(assert (=> b!532447 m!777707))

(assert (=> b!532447 m!777709))

(assert (=> b!532447 m!777709))

(assert (=> b!532447 m!777711))

(assert (=> b!532447 m!777711))

(declare-fun m!777719 () Bool)

(assert (=> b!532447 m!777719))

(declare-fun m!777721 () Bool)

(assert (=> b!532444 m!777721))

(assert (=> b!532440 m!777707))

(declare-fun m!777723 () Bool)

(assert (=> b!532440 m!777723))

(assert (=> b!532445 m!777707))

(declare-fun m!777725 () Bool)

(assert (=> b!532445 m!777725))

(assert (=> b!532445 m!776779))

(declare-fun m!777727 () Bool)

(assert (=> d!188742 m!777727))

(assert (=> d!188742 m!776979))

(assert (=> d!188742 m!776981))

(assert (=> d!188742 m!777675))

(assert (=> b!532442 m!777707))

(declare-fun m!777729 () Bool)

(assert (=> b!532442 m!777729))

(assert (=> b!532442 m!777729))

(declare-fun m!777731 () Bool)

(assert (=> b!532442 m!777731))

(assert (=> b!532448 m!777707))

(assert (=> b!532448 m!777709))

(assert (=> b!532448 m!777709))

(assert (=> b!532448 m!777711))

(assert (=> b!531851 d!188742))

(declare-fun d!188744 () Bool)

(declare-fun lt!219100 () Int)

(assert (=> d!188744 (>= lt!219100 0)))

(declare-fun e!320603 () Int)

(assert (=> d!188744 (= lt!219100 e!320603)))

(declare-fun c!101581 () Bool)

(assert (=> d!188744 (= c!101581 ((_ is Nil!5092) (originalCharacters!964 token!491)))))

(assert (=> d!188744 (= (size!4119 (originalCharacters!964 token!491)) lt!219100)))

(declare-fun b!532449 () Bool)

(assert (=> b!532449 (= e!320603 0)))

(declare-fun b!532450 () Bool)

(assert (=> b!532450 (= e!320603 (+ 1 (size!4119 (t!73789 (originalCharacters!964 token!491)))))))

(assert (= (and d!188744 c!101581) b!532449))

(assert (= (and d!188744 (not c!101581)) b!532450))

(declare-fun m!777733 () Bool)

(assert (=> b!532450 m!777733))

(assert (=> d!188504 d!188744))

(declare-fun b!532454 () Bool)

(declare-fun lt!219101 () List!5102)

(declare-fun e!320604 () Bool)

(assert (=> b!532454 (= e!320604 (or (not (= suffix!1342 Nil!5092)) (= lt!219101 (t!73789 lt!218907))))))

(declare-fun b!532451 () Bool)

(declare-fun e!320605 () List!5102)

(assert (=> b!532451 (= e!320605 suffix!1342)))

(declare-fun b!532452 () Bool)

(assert (=> b!532452 (= e!320605 (Cons!5092 (h!10493 (t!73789 lt!218907)) (++!1413 (t!73789 (t!73789 lt!218907)) suffix!1342)))))

(declare-fun d!188746 () Bool)

(assert (=> d!188746 e!320604))

(declare-fun res!224928 () Bool)

(assert (=> d!188746 (=> (not res!224928) (not e!320604))))

(assert (=> d!188746 (= res!224928 (= (content!902 lt!219101) ((_ map or) (content!902 (t!73789 lt!218907)) (content!902 suffix!1342))))))

(assert (=> d!188746 (= lt!219101 e!320605)))

(declare-fun c!101582 () Bool)

(assert (=> d!188746 (= c!101582 ((_ is Nil!5092) (t!73789 lt!218907)))))

(assert (=> d!188746 (= (++!1413 (t!73789 lt!218907) suffix!1342) lt!219101)))

(declare-fun b!532453 () Bool)

(declare-fun res!224927 () Bool)

(assert (=> b!532453 (=> (not res!224927) (not e!320604))))

(assert (=> b!532453 (= res!224927 (= (size!4119 lt!219101) (+ (size!4119 (t!73789 lt!218907)) (size!4119 suffix!1342))))))

(assert (= (and d!188746 c!101582) b!532451))

(assert (= (and d!188746 (not c!101582)) b!532452))

(assert (= (and d!188746 res!224928) b!532453))

(assert (= (and b!532453 res!224927) b!532454))

(declare-fun m!777735 () Bool)

(assert (=> b!532452 m!777735))

(declare-fun m!777737 () Bool)

(assert (=> d!188746 m!777737))

(declare-fun m!777739 () Bool)

(assert (=> d!188746 m!777739))

(assert (=> d!188746 m!777065))

(declare-fun m!777741 () Bool)

(assert (=> b!532453 m!777741))

(assert (=> b!532453 m!777129))

(assert (=> b!532453 m!777069))

(assert (=> b!531967 d!188746))

(declare-fun d!188748 () Bool)

(declare-fun lt!219102 () Int)

(assert (=> d!188748 (>= lt!219102 0)))

(declare-fun e!320606 () Int)

(assert (=> d!188748 (= lt!219102 e!320606)))

(declare-fun c!101583 () Bool)

(assert (=> d!188748 (= c!101583 ((_ is Nil!5092) (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))))))

(assert (=> d!188748 (= (size!4119 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))) lt!219102)))

(declare-fun b!532455 () Bool)

(assert (=> b!532455 (= e!320606 0)))

(declare-fun b!532456 () Bool)

(assert (=> b!532456 (= e!320606 (+ 1 (size!4119 (t!73789 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))))))))

(assert (= (and d!188748 c!101583) b!532455))

(assert (= (and d!188748 (not c!101583)) b!532456))

(declare-fun m!777743 () Bool)

(assert (=> b!532456 m!777743))

(assert (=> b!532005 d!188748))

(assert (=> b!532005 d!188518))

(declare-fun d!188750 () Bool)

(declare-fun lt!219103 () Int)

(assert (=> d!188750 (>= lt!219103 0)))

(declare-fun e!320607 () Int)

(assert (=> d!188750 (= lt!219103 e!320607)))

(declare-fun c!101584 () Bool)

(assert (=> d!188750 (= c!101584 ((_ is Nil!5092) lt!218995))))

(assert (=> d!188750 (= (size!4119 lt!218995) lt!219103)))

(declare-fun b!532457 () Bool)

(assert (=> b!532457 (= e!320607 0)))

(declare-fun b!532458 () Bool)

(assert (=> b!532458 (= e!320607 (+ 1 (size!4119 (t!73789 lt!218995))))))

(assert (= (and d!188750 c!101584) b!532457))

(assert (= (and d!188750 (not c!101584)) b!532458))

(declare-fun m!777745 () Bool)

(assert (=> b!532458 m!777745))

(assert (=> b!532021 d!188750))

(assert (=> b!532021 d!188512))

(declare-fun d!188752 () Bool)

(declare-fun lt!219104 () Int)

(assert (=> d!188752 (>= lt!219104 0)))

(declare-fun e!320608 () Int)

(assert (=> d!188752 (= lt!219104 e!320608)))

(declare-fun c!101585 () Bool)

(assert (=> d!188752 (= c!101585 ((_ is Nil!5092) suffix!1342))))

(assert (=> d!188752 (= (size!4119 suffix!1342) lt!219104)))

(declare-fun b!532459 () Bool)

(assert (=> b!532459 (= e!320608 0)))

(declare-fun b!532460 () Bool)

(assert (=> b!532460 (= e!320608 (+ 1 (size!4119 (t!73789 suffix!1342))))))

(assert (= (and d!188752 c!101585) b!532459))

(assert (= (and d!188752 (not c!101585)) b!532460))

(declare-fun m!777747 () Bool)

(assert (=> b!532460 m!777747))

(assert (=> b!532021 d!188752))

(assert (=> b!531849 d!188734))

(declare-fun d!188754 () Bool)

(declare-fun dynLambda!3069 (Int BalanceConc!3292) TokenValue!949)

(assert (=> d!188754 (= (apply!1208 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!218957))))) (dynLambda!3069 (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957))))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!218957))))))))

(declare-fun b_lambda!20591 () Bool)

(assert (=> (not b_lambda!20591) (not d!188754)))

(declare-fun tb!47325 () Bool)

(declare-fun t!73861 () Bool)

(assert (=> (and b!531742 (= (toValue!1768 (transformation!925 (h!10494 rules!3103))) (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))) t!73861) tb!47325))

(declare-fun result!52776 () Bool)

(assert (=> tb!47325 (= result!52776 (inv!21 (dynLambda!3069 (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957))))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!218957)))))))))

(declare-fun m!777749 () Bool)

(assert (=> tb!47325 m!777749))

(assert (=> d!188754 t!73861))

(declare-fun b_and!52029 () Bool)

(assert (= b_and!51955 (and (=> t!73861 result!52776) b_and!52029)))

(declare-fun t!73863 () Bool)

(declare-fun tb!47327 () Bool)

(assert (=> (and b!531739 (= (toValue!1768 (transformation!925 (rule!1625 token!491))) (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))) t!73863) tb!47327))

(declare-fun result!52780 () Bool)

(assert (= result!52780 result!52776))

(assert (=> d!188754 t!73863))

(declare-fun b_and!52031 () Bool)

(assert (= b_and!51959 (and (=> t!73863 result!52780) b_and!52031)))

(declare-fun t!73865 () Bool)

(declare-fun tb!47329 () Bool)

(assert (=> (and b!532053 (= (toValue!1768 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))) t!73865) tb!47329))

(declare-fun result!52782 () Bool)

(assert (= result!52782 result!52776))

(assert (=> d!188754 t!73865))

(declare-fun b_and!52033 () Bool)

(assert (= b_and!51991 (and (=> t!73865 result!52782) b_and!52033)))

(assert (=> d!188754 m!776985))

(declare-fun m!777751 () Bool)

(assert (=> d!188754 m!777751))

(assert (=> b!531849 d!188754))

(declare-fun d!188756 () Bool)

(declare-fun fromListB!505 (List!5102) BalanceConc!3292)

(assert (=> d!188756 (= (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!218957)))) (fromListB!505 (originalCharacters!964 (_1!3366 (get!1902 lt!218957)))))))

(declare-fun bs!67191 () Bool)

(assert (= bs!67191 d!188756))

(declare-fun m!777753 () Bool)

(assert (=> bs!67191 m!777753))

(assert (=> b!531849 d!188756))

(declare-fun d!188758 () Bool)

(declare-fun lt!219105 () Int)

(assert (=> d!188758 (>= lt!219105 0)))

(declare-fun e!320612 () Int)

(assert (=> d!188758 (= lt!219105 e!320612)))

(declare-fun c!101586 () Bool)

(assert (=> d!188758 (= c!101586 ((_ is Nil!5092) (originalCharacters!964 (_1!3366 (v!16079 lt!218901)))))))

(assert (=> d!188758 (= (size!4119 (originalCharacters!964 (_1!3366 (v!16079 lt!218901)))) lt!219105)))

(declare-fun b!532463 () Bool)

(assert (=> b!532463 (= e!320612 0)))

(declare-fun b!532464 () Bool)

(assert (=> b!532464 (= e!320612 (+ 1 (size!4119 (t!73789 (originalCharacters!964 (_1!3366 (v!16079 lt!218901)))))))))

(assert (= (and d!188758 c!101586) b!532463))

(assert (= (and d!188758 (not c!101586)) b!532464))

(declare-fun m!777755 () Bool)

(assert (=> b!532464 m!777755))

(assert (=> d!188508 d!188758))

(declare-fun d!188760 () Bool)

(assert (=> d!188760 (= (isEmpty!3685 (originalCharacters!964 token!491)) ((_ is Nil!5092) (originalCharacters!964 token!491)))))

(assert (=> d!188494 d!188760))

(declare-fun d!188762 () Bool)

(declare-fun lt!219108 () Bool)

(declare-fun content!904 (List!5103) (InoxSet Rule!1650))

(assert (=> d!188762 (= lt!219108 (select (content!904 rules!3103) (rule!1625 (_1!3366 (get!1902 lt!218957)))))))

(declare-fun e!320618 () Bool)

(assert (=> d!188762 (= lt!219108 e!320618)))

(declare-fun res!224933 () Bool)

(assert (=> d!188762 (=> (not res!224933) (not e!320618))))

(assert (=> d!188762 (= res!224933 ((_ is Cons!5093) rules!3103))))

(assert (=> d!188762 (= (contains!1187 rules!3103 (rule!1625 (_1!3366 (get!1902 lt!218957)))) lt!219108)))

(declare-fun b!532469 () Bool)

(declare-fun e!320617 () Bool)

(assert (=> b!532469 (= e!320618 e!320617)))

(declare-fun res!224934 () Bool)

(assert (=> b!532469 (=> res!224934 e!320617)))

(assert (=> b!532469 (= res!224934 (= (h!10494 rules!3103) (rule!1625 (_1!3366 (get!1902 lt!218957)))))))

(declare-fun b!532470 () Bool)

(assert (=> b!532470 (= e!320617 (contains!1187 (t!73790 rules!3103) (rule!1625 (_1!3366 (get!1902 lt!218957)))))))

(assert (= (and d!188762 res!224933) b!532469))

(assert (= (and b!532469 (not res!224934)) b!532470))

(declare-fun m!777757 () Bool)

(assert (=> d!188762 m!777757))

(declare-fun m!777759 () Bool)

(assert (=> d!188762 m!777759))

(declare-fun m!777761 () Bool)

(assert (=> b!532470 m!777761))

(assert (=> b!531847 d!188762))

(assert (=> b!531847 d!188734))

(declare-fun d!188764 () Bool)

(assert (=> d!188764 (= (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994)))) (list!2119 (c!101469 (charsOf!554 (_1!3366 (get!1902 lt!218994))))))))

(declare-fun bs!67192 () Bool)

(assert (= bs!67192 d!188764))

(declare-fun m!777763 () Bool)

(assert (=> bs!67192 m!777763))

(assert (=> b!532018 d!188764))

(declare-fun d!188766 () Bool)

(declare-fun lt!219109 () BalanceConc!3292)

(assert (=> d!188766 (= (list!2117 lt!219109) (originalCharacters!964 (_1!3366 (get!1902 lt!218994))))))

(assert (=> d!188766 (= lt!219109 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994))))) (value!31229 (_1!3366 (get!1902 lt!218994)))))))

(assert (=> d!188766 (= (charsOf!554 (_1!3366 (get!1902 lt!218994))) lt!219109)))

(declare-fun b_lambda!20593 () Bool)

(assert (=> (not b_lambda!20593) (not d!188766)))

(declare-fun t!73867 () Bool)

(declare-fun tb!47331 () Bool)

(assert (=> (and b!531742 (= (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))) t!73867) tb!47331))

(declare-fun b!532471 () Bool)

(declare-fun e!320619 () Bool)

(declare-fun tp!169818 () Bool)

(assert (=> b!532471 (= e!320619 (and (inv!6391 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994))))) (value!31229 (_1!3366 (get!1902 lt!218994)))))) tp!169818))))

(declare-fun result!52784 () Bool)

(assert (=> tb!47331 (= result!52784 (and (inv!6392 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994))))) (value!31229 (_1!3366 (get!1902 lt!218994))))) e!320619))))

(assert (= tb!47331 b!532471))

(declare-fun m!777765 () Bool)

(assert (=> b!532471 m!777765))

(declare-fun m!777767 () Bool)

(assert (=> tb!47331 m!777767))

(assert (=> d!188766 t!73867))

(declare-fun b_and!52035 () Bool)

(assert (= b_and!52023 (and (=> t!73867 result!52784) b_and!52035)))

(declare-fun t!73869 () Bool)

(declare-fun tb!47333 () Bool)

(assert (=> (and b!531739 (= (toChars!1627 (transformation!925 (rule!1625 token!491))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))) t!73869) tb!47333))

(declare-fun result!52786 () Bool)

(assert (= result!52786 result!52784))

(assert (=> d!188766 t!73869))

(declare-fun b_and!52037 () Bool)

(assert (= b_and!52025 (and (=> t!73869 result!52786) b_and!52037)))

(declare-fun tb!47335 () Bool)

(declare-fun t!73871 () Bool)

(assert (=> (and b!532053 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))) t!73871) tb!47335))

(declare-fun result!52788 () Bool)

(assert (= result!52788 result!52784))

(assert (=> d!188766 t!73871))

(declare-fun b_and!52039 () Bool)

(assert (= b_and!52027 (and (=> t!73871 result!52788) b_and!52039)))

(declare-fun m!777769 () Bool)

(assert (=> d!188766 m!777769))

(declare-fun m!777771 () Bool)

(assert (=> d!188766 m!777771))

(assert (=> b!532018 d!188766))

(declare-fun d!188768 () Bool)

(assert (=> d!188768 (= (get!1902 lt!218994) (v!16079 lt!218994))))

(assert (=> b!532018 d!188768))

(assert (=> b!531981 d!188512))

(assert (=> b!531981 d!188518))

(declare-fun d!188770 () Bool)

(assert (=> d!188770 (and (= lt!218907 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!188770 true))

(declare-fun _$50!202 () Unit!8881)

(assert (=> d!188770 (= (choose!3739 lt!218907 suffix!1342 input!2705 suffix!1342) _$50!202)))

(assert (=> d!188500 d!188770))

(assert (=> d!188500 d!188484))

(assert (=> d!188500 d!188524))

(declare-fun d!188772 () Bool)

(assert (=> d!188772 (= (head!1168 lt!218906) (h!10493 lt!218906))))

(assert (=> b!532003 d!188772))

(declare-fun d!188774 () Bool)

(assert (=> d!188774 (= (head!1168 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))) (h!10493 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))))))

(assert (=> b!532003 d!188774))

(declare-fun d!188776 () Bool)

(declare-fun charsToBigInt!1 (List!5101) Int)

(assert (=> d!188776 (= (inv!17 (value!31229 token!491)) (= (charsToBigInt!1 (text!7091 (value!31229 token!491))) (value!31222 (value!31229 token!491))))))

(declare-fun bs!67193 () Bool)

(assert (= bs!67193 d!188776))

(declare-fun m!777773 () Bool)

(assert (=> bs!67193 m!777773))

(assert (=> b!531908 d!188776))

(assert (=> b!531990 d!188744))

(declare-fun b!532475 () Bool)

(declare-fun e!320620 () Bool)

(declare-fun lt!219110 () List!5102)

(assert (=> b!532475 (= e!320620 (or (not (= (_2!3366 (get!1902 lt!218994)) Nil!5092)) (= lt!219110 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994)))))))))

(declare-fun b!532472 () Bool)

(declare-fun e!320621 () List!5102)

(assert (=> b!532472 (= e!320621 (_2!3366 (get!1902 lt!218994)))))

(declare-fun b!532473 () Bool)

(assert (=> b!532473 (= e!320621 (Cons!5092 (h!10493 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))) (++!1413 (t!73789 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))) (_2!3366 (get!1902 lt!218994)))))))

(declare-fun d!188778 () Bool)

(assert (=> d!188778 e!320620))

(declare-fun res!224936 () Bool)

(assert (=> d!188778 (=> (not res!224936) (not e!320620))))

(assert (=> d!188778 (= res!224936 (= (content!902 lt!219110) ((_ map or) (content!902 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))) (content!902 (_2!3366 (get!1902 lt!218994))))))))

(assert (=> d!188778 (= lt!219110 e!320621)))

(declare-fun c!101587 () Bool)

(assert (=> d!188778 (= c!101587 ((_ is Nil!5092) (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))))))

(assert (=> d!188778 (= (++!1413 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994)))) (_2!3366 (get!1902 lt!218994))) lt!219110)))

(declare-fun b!532474 () Bool)

(declare-fun res!224935 () Bool)

(assert (=> b!532474 (=> (not res!224935) (not e!320620))))

(assert (=> b!532474 (= res!224935 (= (size!4119 lt!219110) (+ (size!4119 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))) (size!4119 (_2!3366 (get!1902 lt!218994))))))))

(assert (= (and d!188778 c!101587) b!532472))

(assert (= (and d!188778 (not c!101587)) b!532473))

(assert (= (and d!188778 res!224936) b!532474))

(assert (= (and b!532474 res!224935) b!532475))

(declare-fun m!777775 () Bool)

(assert (=> b!532473 m!777775))

(declare-fun m!777777 () Bool)

(assert (=> d!188778 m!777777))

(assert (=> d!188778 m!777139))

(declare-fun m!777779 () Bool)

(assert (=> d!188778 m!777779))

(declare-fun m!777781 () Bool)

(assert (=> d!188778 m!777781))

(declare-fun m!777783 () Bool)

(assert (=> b!532474 m!777783))

(assert (=> b!532474 m!777139))

(declare-fun m!777785 () Bool)

(assert (=> b!532474 m!777785))

(assert (=> b!532474 m!777153))

(assert (=> b!532016 d!188778))

(assert (=> b!532016 d!188764))

(assert (=> b!532016 d!188766))

(assert (=> b!532016 d!188768))

(declare-fun call!38175 () Option!1275)

(declare-fun bm!38170 () Bool)

(assert (=> bm!38170 (= call!38175 (maxPrefixOneRule!242 thiss!22590 (h!10494 (t!73790 rules!3103)) lt!218905))))

(declare-fun b!532476 () Bool)

(declare-fun e!320623 () Bool)

(declare-fun lt!219115 () Option!1275)

(assert (=> b!532476 (= e!320623 (contains!1187 (t!73790 rules!3103) (rule!1625 (_1!3366 (get!1902 lt!219115)))))))

(declare-fun b!532477 () Bool)

(declare-fun e!320622 () Bool)

(assert (=> b!532477 (= e!320622 e!320623)))

(declare-fun res!224939 () Bool)

(assert (=> b!532477 (=> (not res!224939) (not e!320623))))

(assert (=> b!532477 (= res!224939 (isDefined!1087 lt!219115))))

(declare-fun b!532478 () Bool)

(declare-fun res!224941 () Bool)

(assert (=> b!532478 (=> (not res!224941) (not e!320623))))

(assert (=> b!532478 (= res!224941 (= (value!31229 (_1!3366 (get!1902 lt!219115))) (apply!1208 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!219115)))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!219115)))))))))

(declare-fun b!532479 () Bool)

(declare-fun e!320624 () Option!1275)

(assert (=> b!532479 (= e!320624 call!38175)))

(declare-fun d!188780 () Bool)

(assert (=> d!188780 e!320622))

(declare-fun res!224942 () Bool)

(assert (=> d!188780 (=> res!224942 e!320622)))

(assert (=> d!188780 (= res!224942 (isEmpty!3687 lt!219115))))

(assert (=> d!188780 (= lt!219115 e!320624)))

(declare-fun c!101588 () Bool)

(assert (=> d!188780 (= c!101588 (and ((_ is Cons!5093) (t!73790 rules!3103)) ((_ is Nil!5093) (t!73790 (t!73790 rules!3103)))))))

(declare-fun lt!219114 () Unit!8881)

(declare-fun lt!219112 () Unit!8881)

(assert (=> d!188780 (= lt!219114 lt!219112)))

(assert (=> d!188780 (isPrefix!567 lt!218905 lt!218905)))

(assert (=> d!188780 (= lt!219112 (lemmaIsPrefixRefl!311 lt!218905 lt!218905))))

(assert (=> d!188780 (rulesValidInductive!320 thiss!22590 (t!73790 rules!3103))))

(assert (=> d!188780 (= (maxPrefix!509 thiss!22590 (t!73790 rules!3103) lt!218905) lt!219115)))

(declare-fun b!532480 () Bool)

(declare-fun lt!219111 () Option!1275)

(declare-fun lt!219113 () Option!1275)

(assert (=> b!532480 (= e!320624 (ite (and ((_ is None!1274) lt!219111) ((_ is None!1274) lt!219113)) None!1274 (ite ((_ is None!1274) lt!219113) lt!219111 (ite ((_ is None!1274) lt!219111) lt!219113 (ite (>= (size!4118 (_1!3366 (v!16079 lt!219111))) (size!4118 (_1!3366 (v!16079 lt!219113)))) lt!219111 lt!219113)))))))

(assert (=> b!532480 (= lt!219111 call!38175)))

(assert (=> b!532480 (= lt!219113 (maxPrefix!509 thiss!22590 (t!73790 (t!73790 rules!3103)) lt!218905))))

(declare-fun b!532481 () Bool)

(declare-fun res!224940 () Bool)

(assert (=> b!532481 (=> (not res!224940) (not e!320623))))

(assert (=> b!532481 (= res!224940 (< (size!4119 (_2!3366 (get!1902 lt!219115))) (size!4119 lt!218905)))))

(declare-fun b!532482 () Bool)

(declare-fun res!224938 () Bool)

(assert (=> b!532482 (=> (not res!224938) (not e!320623))))

(assert (=> b!532482 (= res!224938 (= (++!1413 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!219115)))) (_2!3366 (get!1902 lt!219115))) lt!218905))))

(declare-fun b!532483 () Bool)

(declare-fun res!224937 () Bool)

(assert (=> b!532483 (=> (not res!224937) (not e!320623))))

(assert (=> b!532483 (= res!224937 (matchR!442 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!219115)))) (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!219115))))))))

(declare-fun b!532484 () Bool)

(declare-fun res!224943 () Bool)

(assert (=> b!532484 (=> (not res!224943) (not e!320623))))

(assert (=> b!532484 (= res!224943 (= (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!219115)))) (originalCharacters!964 (_1!3366 (get!1902 lt!219115)))))))

(assert (= (and d!188780 c!101588) b!532479))

(assert (= (and d!188780 (not c!101588)) b!532480))

(assert (= (or b!532479 b!532480) bm!38170))

(assert (= (and d!188780 (not res!224942)) b!532477))

(assert (= (and b!532477 res!224939) b!532484))

(assert (= (and b!532484 res!224943) b!532481))

(assert (= (and b!532481 res!224940) b!532482))

(assert (= (and b!532482 res!224938) b!532478))

(assert (= (and b!532478 res!224941) b!532483))

(assert (= (and b!532483 res!224937) b!532476))

(declare-fun m!777787 () Bool)

(assert (=> b!532482 m!777787))

(declare-fun m!777789 () Bool)

(assert (=> b!532482 m!777789))

(assert (=> b!532482 m!777789))

(declare-fun m!777791 () Bool)

(assert (=> b!532482 m!777791))

(assert (=> b!532482 m!777791))

(declare-fun m!777793 () Bool)

(assert (=> b!532482 m!777793))

(declare-fun m!777795 () Bool)

(assert (=> b!532477 m!777795))

(declare-fun m!777797 () Bool)

(assert (=> bm!38170 m!777797))

(assert (=> b!532483 m!777787))

(assert (=> b!532483 m!777789))

(assert (=> b!532483 m!777789))

(assert (=> b!532483 m!777791))

(assert (=> b!532483 m!777791))

(declare-fun m!777799 () Bool)

(assert (=> b!532483 m!777799))

(declare-fun m!777801 () Bool)

(assert (=> b!532480 m!777801))

(assert (=> b!532476 m!777787))

(declare-fun m!777803 () Bool)

(assert (=> b!532476 m!777803))

(assert (=> b!532481 m!777787))

(declare-fun m!777805 () Bool)

(assert (=> b!532481 m!777805))

(assert (=> b!532481 m!777155))

(declare-fun m!777807 () Bool)

(assert (=> d!188780 m!777807))

(assert (=> d!188780 m!777159))

(assert (=> d!188780 m!777161))

(assert (=> d!188780 m!777675))

(assert (=> b!532478 m!777787))

(declare-fun m!777809 () Bool)

(assert (=> b!532478 m!777809))

(assert (=> b!532478 m!777809))

(declare-fun m!777811 () Bool)

(assert (=> b!532478 m!777811))

(assert (=> b!532484 m!777787))

(assert (=> b!532484 m!777789))

(assert (=> b!532484 m!777789))

(assert (=> b!532484 m!777791))

(assert (=> b!532014 d!188780))

(declare-fun d!188782 () Bool)

(assert (=> d!188782 (= (inv!6392 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901))))) (isBalanced!501 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901)))))))))

(declare-fun bs!67194 () Bool)

(assert (= bs!67194 d!188782))

(declare-fun m!777813 () Bool)

(assert (=> bs!67194 m!777813))

(assert (=> tb!47275 d!188782))

(declare-fun bs!67195 () Bool)

(declare-fun d!188784 () Bool)

(assert (= bs!67195 (and d!188784 d!188570)))

(declare-fun lambda!15425 () Int)

(assert (=> bs!67195 (= lambda!15425 lambda!15422)))

(assert (=> d!188784 true))

(declare-fun lt!219118 () Bool)

(assert (=> d!188784 (= lt!219118 (rulesValidInductive!320 thiss!22590 rules!3103))))

(assert (=> d!188784 (= lt!219118 (forall!1514 rules!3103 lambda!15425))))

(assert (=> d!188784 (= (rulesValid!334 thiss!22590 rules!3103) lt!219118)))

(declare-fun bs!67196 () Bool)

(assert (= bs!67196 d!188784))

(assert (=> bs!67196 m!776983))

(declare-fun m!777815 () Bool)

(assert (=> bs!67196 m!777815))

(assert (=> d!188482 d!188784))

(assert (=> b!531979 d!188772))

(declare-fun d!188786 () Bool)

(assert (=> d!188786 (= (head!1168 input!2705) (h!10493 input!2705))))

(assert (=> b!531979 d!188786))

(declare-fun d!188788 () Bool)

(assert (=> d!188788 (= (isEmpty!3687 lt!218994) (not ((_ is Some!1274) lt!218994)))))

(assert (=> d!188522 d!188788))

(declare-fun b!532485 () Bool)

(declare-fun e!320627 () Bool)

(declare-fun e!320626 () Bool)

(assert (=> b!532485 (= e!320627 e!320626)))

(declare-fun res!224945 () Bool)

(assert (=> b!532485 (=> (not res!224945) (not e!320626))))

(assert (=> b!532485 (= res!224945 (not ((_ is Nil!5092) lt!218905)))))

(declare-fun b!532488 () Bool)

(declare-fun e!320625 () Bool)

(assert (=> b!532488 (= e!320625 (>= (size!4119 lt!218905) (size!4119 lt!218905)))))

(declare-fun b!532486 () Bool)

(declare-fun res!224947 () Bool)

(assert (=> b!532486 (=> (not res!224947) (not e!320626))))

(assert (=> b!532486 (= res!224947 (= (head!1168 lt!218905) (head!1168 lt!218905)))))

(declare-fun b!532487 () Bool)

(assert (=> b!532487 (= e!320626 (isPrefix!567 (tail!697 lt!218905) (tail!697 lt!218905)))))

(declare-fun d!188790 () Bool)

(assert (=> d!188790 e!320625))

(declare-fun res!224946 () Bool)

(assert (=> d!188790 (=> res!224946 e!320625)))

(declare-fun lt!219119 () Bool)

(assert (=> d!188790 (= res!224946 (not lt!219119))))

(assert (=> d!188790 (= lt!219119 e!320627)))

(declare-fun res!224944 () Bool)

(assert (=> d!188790 (=> res!224944 e!320627)))

(assert (=> d!188790 (= res!224944 ((_ is Nil!5092) lt!218905))))

(assert (=> d!188790 (= (isPrefix!567 lt!218905 lt!218905) lt!219119)))

(assert (= (and d!188790 (not res!224944)) b!532485))

(assert (= (and b!532485 res!224945) b!532486))

(assert (= (and b!532486 res!224947) b!532487))

(assert (= (and d!188790 (not res!224946)) b!532488))

(assert (=> b!532488 m!777155))

(assert (=> b!532488 m!777155))

(declare-fun m!777817 () Bool)

(assert (=> b!532486 m!777817))

(assert (=> b!532486 m!777817))

(declare-fun m!777819 () Bool)

(assert (=> b!532487 m!777819))

(assert (=> b!532487 m!777819))

(assert (=> b!532487 m!777819))

(assert (=> b!532487 m!777819))

(declare-fun m!777821 () Bool)

(assert (=> b!532487 m!777821))

(assert (=> d!188522 d!188790))

(declare-fun d!188792 () Bool)

(assert (=> d!188792 (isPrefix!567 lt!218905 lt!218905)))

(declare-fun lt!219120 () Unit!8881)

(assert (=> d!188792 (= lt!219120 (choose!3742 lt!218905 lt!218905))))

(assert (=> d!188792 (= (lemmaIsPrefixRefl!311 lt!218905 lt!218905) lt!219120)))

(declare-fun bs!67197 () Bool)

(assert (= bs!67197 d!188792))

(assert (=> bs!67197 m!777159))

(declare-fun m!777823 () Bool)

(assert (=> bs!67197 m!777823))

(assert (=> d!188522 d!188792))

(assert (=> d!188522 d!188570))

(declare-fun d!188794 () Bool)

(declare-fun lt!219121 () Int)

(assert (=> d!188794 (>= lt!219121 0)))

(declare-fun e!320628 () Int)

(assert (=> d!188794 (= lt!219121 e!320628)))

(declare-fun c!101589 () Bool)

(assert (=> d!188794 (= c!101589 ((_ is Nil!5092) (t!73789 lt!218907)))))

(assert (=> d!188794 (= (size!4119 (t!73789 lt!218907)) lt!219121)))

(declare-fun b!532489 () Bool)

(assert (=> b!532489 (= e!320628 0)))

(declare-fun b!532490 () Bool)

(assert (=> b!532490 (= e!320628 (+ 1 (size!4119 (t!73789 (t!73789 lt!218907)))))))

(assert (= (and d!188794 c!101589) b!532489))

(assert (= (and d!188794 (not c!101589)) b!532490))

(declare-fun m!777825 () Bool)

(assert (=> b!532490 m!777825))

(assert (=> b!532007 d!188794))

(declare-fun d!188796 () Bool)

(assert (=> d!188796 true))

(declare-fun order!4421 () Int)

(declare-fun order!4419 () Int)

(declare-fun lambda!15428 () Int)

(declare-fun dynLambda!3070 (Int Int) Int)

(declare-fun dynLambda!3071 (Int Int) Int)

(assert (=> d!188796 (< (dynLambda!3070 order!4419 (toChars!1627 (transformation!925 (rule!1625 token!491)))) (dynLambda!3071 order!4421 lambda!15428))))

(assert (=> d!188796 true))

(declare-fun order!4423 () Int)

(declare-fun dynLambda!3072 (Int Int) Int)

(assert (=> d!188796 (< (dynLambda!3072 order!4423 (toValue!1768 (transformation!925 (rule!1625 token!491)))) (dynLambda!3071 order!4421 lambda!15428))))

(declare-fun Forall!276 (Int) Bool)

(assert (=> d!188796 (= (semiInverseModEq!369 (toChars!1627 (transformation!925 (rule!1625 token!491))) (toValue!1768 (transformation!925 (rule!1625 token!491)))) (Forall!276 lambda!15428))))

(declare-fun bs!67198 () Bool)

(assert (= bs!67198 d!188796))

(declare-fun m!777827 () Bool)

(assert (=> bs!67198 m!777827))

(assert (=> d!188528 d!188796))

(declare-fun d!188798 () Bool)

(declare-fun c!101590 () Bool)

(assert (=> d!188798 (= c!101590 ((_ is Nil!5092) lt!218972))))

(declare-fun e!320629 () (InoxSet C!3440))

(assert (=> d!188798 (= (content!902 lt!218972) e!320629)))

(declare-fun b!532495 () Bool)

(assert (=> b!532495 (= e!320629 ((as const (Array C!3440 Bool)) false))))

(declare-fun b!532496 () Bool)

(assert (=> b!532496 (= e!320629 ((_ map or) (store ((as const (Array C!3440 Bool)) false) (h!10493 lt!218972) true) (content!902 (t!73789 lt!218972))))))

(assert (= (and d!188798 c!101590) b!532495))

(assert (= (and d!188798 (not c!101590)) b!532496))

(declare-fun m!777829 () Bool)

(assert (=> b!532496 m!777829))

(declare-fun m!777831 () Bool)

(assert (=> b!532496 m!777831))

(assert (=> d!188484 d!188798))

(declare-fun d!188800 () Bool)

(declare-fun c!101591 () Bool)

(assert (=> d!188800 (= c!101591 ((_ is Nil!5092) lt!218907))))

(declare-fun e!320630 () (InoxSet C!3440))

(assert (=> d!188800 (= (content!902 lt!218907) e!320630)))

(declare-fun b!532497 () Bool)

(assert (=> b!532497 (= e!320630 ((as const (Array C!3440 Bool)) false))))

(declare-fun b!532498 () Bool)

(assert (=> b!532498 (= e!320630 ((_ map or) (store ((as const (Array C!3440 Bool)) false) (h!10493 lt!218907) true) (content!902 (t!73789 lt!218907))))))

(assert (= (and d!188800 c!101591) b!532497))

(assert (= (and d!188800 (not c!101591)) b!532498))

(declare-fun m!777833 () Bool)

(assert (=> b!532498 m!777833))

(assert (=> b!532498 m!777739))

(assert (=> d!188484 d!188800))

(assert (=> d!188484 d!188556))

(declare-fun d!188802 () Bool)

(assert (=> d!188802 true))

(declare-fun lambda!15431 () Int)

(declare-fun order!4425 () Int)

(declare-fun dynLambda!3073 (Int Int) Int)

(assert (=> d!188802 (< (dynLambda!3072 order!4423 (toValue!1768 (transformation!925 (h!10494 rules!3103)))) (dynLambda!3073 order!4425 lambda!15431))))

(declare-fun Forall2!202 (Int) Bool)

(assert (=> d!188802 (= (equivClasses!352 (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toValue!1768 (transformation!925 (h!10494 rules!3103)))) (Forall2!202 lambda!15431))))

(declare-fun bs!67199 () Bool)

(assert (= bs!67199 d!188802))

(declare-fun m!777835 () Bool)

(assert (=> bs!67199 m!777835))

(assert (=> b!531984 d!188802))

(assert (=> b!532012 d!188768))

(declare-fun d!188804 () Bool)

(assert (=> d!188804 (= (apply!1208 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!218994))))) (dynLambda!3069 (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994))))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!218994))))))))

(declare-fun b_lambda!20595 () Bool)

(assert (=> (not b_lambda!20595) (not d!188804)))

(declare-fun t!73873 () Bool)

(declare-fun tb!47337 () Bool)

(assert (=> (and b!531742 (= (toValue!1768 (transformation!925 (h!10494 rules!3103))) (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))) t!73873) tb!47337))

(declare-fun result!52790 () Bool)

(assert (=> tb!47337 (= result!52790 (inv!21 (dynLambda!3069 (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994))))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!218994)))))))))

(declare-fun m!777837 () Bool)

(assert (=> tb!47337 m!777837))

(assert (=> d!188804 t!73873))

(declare-fun b_and!52041 () Bool)

(assert (= b_and!52029 (and (=> t!73873 result!52790) b_and!52041)))

(declare-fun t!73875 () Bool)

(declare-fun tb!47339 () Bool)

(assert (=> (and b!531739 (= (toValue!1768 (transformation!925 (rule!1625 token!491))) (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))) t!73875) tb!47339))

(declare-fun result!52792 () Bool)

(assert (= result!52792 result!52790))

(assert (=> d!188804 t!73875))

(declare-fun b_and!52043 () Bool)

(assert (= b_and!52031 (and (=> t!73875 result!52792) b_and!52043)))

(declare-fun tb!47341 () Bool)

(declare-fun t!73877 () Bool)

(assert (=> (and b!532053 (= (toValue!1768 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))) t!73877) tb!47341))

(declare-fun result!52794 () Bool)

(assert (= result!52794 result!52790))

(assert (=> d!188804 t!73877))

(declare-fun b_and!52045 () Bool)

(assert (= b_and!52033 (and (=> t!73877 result!52794) b_and!52045)))

(assert (=> d!188804 m!777163))

(declare-fun m!777839 () Bool)

(assert (=> d!188804 m!777839))

(assert (=> b!532012 d!188804))

(declare-fun d!188806 () Bool)

(assert (=> d!188806 (= (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!218994)))) (fromListB!505 (originalCharacters!964 (_1!3366 (get!1902 lt!218994)))))))

(declare-fun bs!67200 () Bool)

(assert (= bs!67200 d!188806))

(declare-fun m!777841 () Bool)

(assert (=> bs!67200 m!777841))

(assert (=> b!532012 d!188806))

(declare-fun d!188808 () Bool)

(assert (=> d!188808 (= (list!2117 lt!218910) (list!2119 (c!101469 lt!218910)))))

(declare-fun bs!67201 () Bool)

(assert (= bs!67201 d!188808))

(declare-fun m!777843 () Bool)

(assert (=> bs!67201 m!777843))

(assert (=> d!188416 d!188808))

(declare-fun d!188810 () Bool)

(declare-fun lt!219122 () Bool)

(assert (=> d!188810 (= lt!219122 (select (content!904 rules!3103) (rule!1625 (_1!3366 (get!1902 lt!218994)))))))

(declare-fun e!320635 () Bool)

(assert (=> d!188810 (= lt!219122 e!320635)))

(declare-fun res!224950 () Bool)

(assert (=> d!188810 (=> (not res!224950) (not e!320635))))

(assert (=> d!188810 (= res!224950 ((_ is Cons!5093) rules!3103))))

(assert (=> d!188810 (= (contains!1187 rules!3103 (rule!1625 (_1!3366 (get!1902 lt!218994)))) lt!219122)))

(declare-fun b!532503 () Bool)

(declare-fun e!320634 () Bool)

(assert (=> b!532503 (= e!320635 e!320634)))

(declare-fun res!224951 () Bool)

(assert (=> b!532503 (=> res!224951 e!320634)))

(assert (=> b!532503 (= res!224951 (= (h!10494 rules!3103) (rule!1625 (_1!3366 (get!1902 lt!218994)))))))

(declare-fun b!532504 () Bool)

(assert (=> b!532504 (= e!320634 (contains!1187 (t!73790 rules!3103) (rule!1625 (_1!3366 (get!1902 lt!218994)))))))

(assert (= (and d!188810 res!224950) b!532503))

(assert (= (and b!532503 (not res!224951)) b!532504))

(assert (=> d!188810 m!777757))

(declare-fun m!777845 () Bool)

(assert (=> d!188810 m!777845))

(declare-fun m!777847 () Bool)

(assert (=> b!532504 m!777847))

(assert (=> b!532010 d!188810))

(assert (=> b!532010 d!188768))

(assert (=> d!188502 d!188514))

(assert (=> d!188502 d!188498))

(declare-fun d!188812 () Bool)

(assert (=> d!188812 (isPrefix!567 lt!218906 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901))))))

(assert (=> d!188812 true))

(declare-fun _$46!893 () Unit!8881)

(assert (=> d!188812 (= (choose!3740 lt!218906 (_2!3366 (v!16079 lt!218901))) _$46!893)))

(declare-fun bs!67202 () Bool)

(assert (= bs!67202 d!188812))

(assert (=> bs!67202 m!776787))

(assert (=> bs!67202 m!776787))

(assert (=> bs!67202 m!776789))

(assert (=> d!188502 d!188812))

(declare-fun d!188814 () Bool)

(assert (=> d!188814 (= (isEmpty!3687 lt!218900) (not ((_ is Some!1274) lt!218900)))))

(assert (=> d!188520 d!188814))

(declare-fun bm!38173 () Bool)

(declare-fun call!38178 () Bool)

(assert (=> bm!38173 (= call!38178 (isEmpty!3685 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))))))

(declare-fun b!532533 () Bool)

(declare-fun e!320654 () Bool)

(declare-fun lt!219125 () Bool)

(assert (=> b!532533 (= e!320654 (not lt!219125))))

(declare-fun b!532534 () Bool)

(declare-fun res!224971 () Bool)

(declare-fun e!320650 () Bool)

(assert (=> b!532534 (=> (not res!224971) (not e!320650))))

(assert (=> b!532534 (= res!224971 (not call!38178))))

(declare-fun b!532535 () Bool)

(declare-fun e!320656 () Bool)

(declare-fun nullable!331 (Regex!1259) Bool)

(assert (=> b!532535 (= e!320656 (nullable!331 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218957))))))))

(declare-fun b!532536 () Bool)

(assert (=> b!532536 (= e!320650 (= (head!1168 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))) (c!101468 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))))))

(declare-fun b!532537 () Bool)

(declare-fun res!224972 () Bool)

(assert (=> b!532537 (=> (not res!224972) (not e!320650))))

(assert (=> b!532537 (= res!224972 (isEmpty!3685 (tail!697 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957)))))))))

(declare-fun b!532538 () Bool)

(declare-fun e!320653 () Bool)

(assert (=> b!532538 (= e!320653 e!320654)))

(declare-fun c!101600 () Bool)

(assert (=> b!532538 (= c!101600 ((_ is EmptyLang!1259) (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218957))))))))

(declare-fun b!532539 () Bool)

(declare-fun res!224974 () Bool)

(declare-fun e!320652 () Bool)

(assert (=> b!532539 (=> res!224974 e!320652)))

(assert (=> b!532539 (= res!224974 e!320650)))

(declare-fun res!224968 () Bool)

(assert (=> b!532539 (=> (not res!224968) (not e!320650))))

(assert (=> b!532539 (= res!224968 lt!219125)))

(declare-fun b!532540 () Bool)

(assert (=> b!532540 (= e!320653 (= lt!219125 call!38178))))

(declare-fun b!532541 () Bool)

(declare-fun e!320651 () Bool)

(declare-fun e!320655 () Bool)

(assert (=> b!532541 (= e!320651 e!320655)))

(declare-fun res!224969 () Bool)

(assert (=> b!532541 (=> res!224969 e!320655)))

(assert (=> b!532541 (= res!224969 call!38178)))

(declare-fun d!188816 () Bool)

(assert (=> d!188816 e!320653))

(declare-fun c!101598 () Bool)

(assert (=> d!188816 (= c!101598 ((_ is EmptyExpr!1259) (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218957))))))))

(assert (=> d!188816 (= lt!219125 e!320656)))

(declare-fun c!101599 () Bool)

(assert (=> d!188816 (= c!101599 (isEmpty!3685 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))))))

(declare-fun validRegex!426 (Regex!1259) Bool)

(assert (=> d!188816 (validRegex!426 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))))

(assert (=> d!188816 (= (matchR!442 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))) (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))) lt!219125)))

(declare-fun b!532542 () Bool)

(declare-fun res!224970 () Bool)

(assert (=> b!532542 (=> res!224970 e!320652)))

(assert (=> b!532542 (= res!224970 (not ((_ is ElementMatch!1259) (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))))))

(assert (=> b!532542 (= e!320654 e!320652)))

(declare-fun b!532543 () Bool)

(declare-fun derivativeStep!259 (Regex!1259 C!3440) Regex!1259)

(assert (=> b!532543 (= e!320656 (matchR!442 (derivativeStep!259 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))) (head!1168 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957)))))) (tail!697 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957)))))))))

(declare-fun b!532544 () Bool)

(assert (=> b!532544 (= e!320652 e!320651)))

(declare-fun res!224973 () Bool)

(assert (=> b!532544 (=> (not res!224973) (not e!320651))))

(assert (=> b!532544 (= res!224973 (not lt!219125))))

(declare-fun b!532545 () Bool)

(assert (=> b!532545 (= e!320655 (not (= (head!1168 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))) (c!101468 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218957))))))))))

(declare-fun b!532546 () Bool)

(declare-fun res!224975 () Bool)

(assert (=> b!532546 (=> res!224975 e!320655)))

(assert (=> b!532546 (= res!224975 (not (isEmpty!3685 (tail!697 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218957))))))))))

(assert (= (and d!188816 c!101599) b!532535))

(assert (= (and d!188816 (not c!101599)) b!532543))

(assert (= (and d!188816 c!101598) b!532540))

(assert (= (and d!188816 (not c!101598)) b!532538))

(assert (= (and b!532538 c!101600) b!532533))

(assert (= (and b!532538 (not c!101600)) b!532542))

(assert (= (and b!532542 (not res!224970)) b!532539))

(assert (= (and b!532539 res!224968) b!532534))

(assert (= (and b!532534 res!224971) b!532537))

(assert (= (and b!532537 res!224972) b!532536))

(assert (= (and b!532539 (not res!224974)) b!532544))

(assert (= (and b!532544 res!224973) b!532541))

(assert (= (and b!532541 (not res!224969)) b!532546))

(assert (= (and b!532546 (not res!224975)) b!532545))

(assert (= (or b!532540 b!532534 b!532541) bm!38173))

(assert (=> bm!38173 m!776939))

(declare-fun m!777849 () Bool)

(assert (=> bm!38173 m!777849))

(assert (=> b!532543 m!776939))

(declare-fun m!777851 () Bool)

(assert (=> b!532543 m!777851))

(assert (=> b!532543 m!777851))

(declare-fun m!777853 () Bool)

(assert (=> b!532543 m!777853))

(assert (=> b!532543 m!776939))

(declare-fun m!777855 () Bool)

(assert (=> b!532543 m!777855))

(assert (=> b!532543 m!777853))

(assert (=> b!532543 m!777855))

(declare-fun m!777857 () Bool)

(assert (=> b!532543 m!777857))

(assert (=> d!188816 m!776939))

(assert (=> d!188816 m!777849))

(declare-fun m!777859 () Bool)

(assert (=> d!188816 m!777859))

(assert (=> b!532546 m!776939))

(assert (=> b!532546 m!777855))

(assert (=> b!532546 m!777855))

(declare-fun m!777861 () Bool)

(assert (=> b!532546 m!777861))

(assert (=> b!532536 m!776939))

(assert (=> b!532536 m!777851))

(declare-fun m!777863 () Bool)

(assert (=> b!532535 m!777863))

(assert (=> b!532545 m!776939))

(assert (=> b!532545 m!777851))

(assert (=> b!532537 m!776939))

(assert (=> b!532537 m!777855))

(assert (=> b!532537 m!777855))

(assert (=> b!532537 m!777861))

(assert (=> b!531854 d!188816))

(assert (=> b!531854 d!188734))

(assert (=> b!531854 d!188730))

(assert (=> b!531854 d!188732))

(declare-fun d!188818 () Bool)

(declare-fun lt!219126 () Int)

(assert (=> d!188818 (>= lt!219126 0)))

(declare-fun e!320657 () Int)

(assert (=> d!188818 (= lt!219126 e!320657)))

(declare-fun c!101601 () Bool)

(assert (=> d!188818 (= c!101601 ((_ is Nil!5092) (t!73789 input!2705)))))

(assert (=> d!188818 (= (size!4119 (t!73789 input!2705)) lt!219126)))

(declare-fun b!532547 () Bool)

(assert (=> b!532547 (= e!320657 0)))

(declare-fun b!532548 () Bool)

(assert (=> b!532548 (= e!320657 (+ 1 (size!4119 (t!73789 (t!73789 input!2705)))))))

(assert (= (and d!188818 c!101601) b!532547))

(assert (= (and d!188818 (not c!101601)) b!532548))

(declare-fun m!777865 () Bool)

(assert (=> b!532548 m!777865))

(assert (=> b!532001 d!188818))

(declare-fun b!532557 () Bool)

(declare-fun e!320662 () List!5102)

(assert (=> b!532557 (= e!320662 Nil!5092)))

(declare-fun d!188820 () Bool)

(declare-fun c!101606 () Bool)

(assert (=> d!188820 (= c!101606 ((_ is Empty!1642) (c!101469 (charsOf!554 token!491))))))

(assert (=> d!188820 (= (list!2119 (c!101469 (charsOf!554 token!491))) e!320662)))

(declare-fun b!532560 () Bool)

(declare-fun e!320663 () List!5102)

(assert (=> b!532560 (= e!320663 (++!1413 (list!2119 (left!4297 (c!101469 (charsOf!554 token!491)))) (list!2119 (right!4627 (c!101469 (charsOf!554 token!491))))))))

(declare-fun b!532559 () Bool)

(declare-fun list!2121 (IArray!3285) List!5102)

(assert (=> b!532559 (= e!320663 (list!2121 (xs!4279 (c!101469 (charsOf!554 token!491)))))))

(declare-fun b!532558 () Bool)

(assert (=> b!532558 (= e!320662 e!320663)))

(declare-fun c!101607 () Bool)

(assert (=> b!532558 (= c!101607 ((_ is Leaf!2612) (c!101469 (charsOf!554 token!491))))))

(assert (= (and d!188820 c!101606) b!532557))

(assert (= (and d!188820 (not c!101606)) b!532558))

(assert (= (and b!532558 c!101607) b!532559))

(assert (= (and b!532558 (not c!101607)) b!532560))

(declare-fun m!777867 () Bool)

(assert (=> b!532560 m!777867))

(declare-fun m!777869 () Bool)

(assert (=> b!532560 m!777869))

(assert (=> b!532560 m!777867))

(assert (=> b!532560 m!777869))

(declare-fun m!777871 () Bool)

(assert (=> b!532560 m!777871))

(declare-fun m!777873 () Bool)

(assert (=> b!532559 m!777873))

(assert (=> d!188414 d!188820))

(declare-fun d!188822 () Bool)

(declare-fun lt!219127 () Int)

(assert (=> d!188822 (>= lt!219127 0)))

(declare-fun e!320664 () Int)

(assert (=> d!188822 (= lt!219127 e!320664)))

(declare-fun c!101608 () Bool)

(assert (=> d!188822 (= c!101608 ((_ is Nil!5092) (t!73789 lt!218906)))))

(assert (=> d!188822 (= (size!4119 (t!73789 lt!218906)) lt!219127)))

(declare-fun b!532561 () Bool)

(assert (=> b!532561 (= e!320664 0)))

(declare-fun b!532562 () Bool)

(assert (=> b!532562 (= e!320664 (+ 1 (size!4119 (t!73789 (t!73789 lt!218906)))))))

(assert (= (and d!188822 c!101608) b!532561))

(assert (= (and d!188822 (not c!101608)) b!532562))

(declare-fun m!777875 () Bool)

(assert (=> b!532562 m!777875))

(assert (=> b!532009 d!188822))

(declare-fun b!532566 () Bool)

(declare-fun e!320665 () Bool)

(declare-fun lt!219128 () List!5102)

(assert (=> b!532566 (= e!320665 (or (not (= (_2!3366 (v!16079 lt!218901)) Nil!5092)) (= lt!219128 (t!73789 lt!218906))))))

(declare-fun b!532563 () Bool)

(declare-fun e!320666 () List!5102)

(assert (=> b!532563 (= e!320666 (_2!3366 (v!16079 lt!218901)))))

(declare-fun b!532564 () Bool)

(assert (=> b!532564 (= e!320666 (Cons!5092 (h!10493 (t!73789 lt!218906)) (++!1413 (t!73789 (t!73789 lt!218906)) (_2!3366 (v!16079 lt!218901)))))))

(declare-fun d!188824 () Bool)

(assert (=> d!188824 e!320665))

(declare-fun res!224977 () Bool)

(assert (=> d!188824 (=> (not res!224977) (not e!320665))))

(assert (=> d!188824 (= res!224977 (= (content!902 lt!219128) ((_ map or) (content!902 (t!73789 lt!218906)) (content!902 (_2!3366 (v!16079 lt!218901))))))))

(assert (=> d!188824 (= lt!219128 e!320666)))

(declare-fun c!101609 () Bool)

(assert (=> d!188824 (= c!101609 ((_ is Nil!5092) (t!73789 lt!218906)))))

(assert (=> d!188824 (= (++!1413 (t!73789 lt!218906) (_2!3366 (v!16079 lt!218901))) lt!219128)))

(declare-fun b!532565 () Bool)

(declare-fun res!224976 () Bool)

(assert (=> b!532565 (=> (not res!224976) (not e!320665))))

(assert (=> b!532565 (= res!224976 (= (size!4119 lt!219128) (+ (size!4119 (t!73789 lt!218906)) (size!4119 (_2!3366 (v!16079 lt!218901))))))))

(assert (= (and d!188824 c!101609) b!532563))

(assert (= (and d!188824 (not c!101609)) b!532564))

(assert (= (and d!188824 res!224977) b!532565))

(assert (= (and b!532565 res!224976) b!532566))

(declare-fun m!777877 () Bool)

(assert (=> b!532564 m!777877))

(declare-fun m!777879 () Bool)

(assert (=> d!188824 m!777879))

(declare-fun m!777881 () Bool)

(assert (=> d!188824 m!777881))

(assert (=> d!188824 m!777097))

(declare-fun m!777883 () Bool)

(assert (=> b!532565 m!777883))

(assert (=> b!532565 m!777131))

(assert (=> b!532565 m!777101))

(assert (=> b!531992 d!188824))

(declare-fun d!188826 () Bool)

(declare-fun lt!219129 () Int)

(assert (=> d!188826 (>= lt!219129 0)))

(declare-fun e!320667 () Int)

(assert (=> d!188826 (= lt!219129 e!320667)))

(declare-fun c!101610 () Bool)

(assert (=> d!188826 (= c!101610 ((_ is Nil!5092) (_2!3366 (get!1902 lt!218957))))))

(assert (=> d!188826 (= (size!4119 (_2!3366 (get!1902 lt!218957))) lt!219129)))

(declare-fun b!532567 () Bool)

(assert (=> b!532567 (= e!320667 0)))

(declare-fun b!532568 () Bool)

(assert (=> b!532568 (= e!320667 (+ 1 (size!4119 (t!73789 (_2!3366 (get!1902 lt!218957))))))))

(assert (= (and d!188826 c!101610) b!532567))

(assert (= (and d!188826 (not c!101610)) b!532568))

(declare-fun m!777885 () Bool)

(assert (=> b!532568 m!777885))

(assert (=> b!531852 d!188826))

(assert (=> b!531852 d!188734))

(assert (=> b!531852 d!188512))

(declare-fun d!188828 () Bool)

(declare-fun lt!219130 () Int)

(assert (=> d!188828 (>= lt!219130 0)))

(declare-fun e!320668 () Int)

(assert (=> d!188828 (= lt!219130 e!320668)))

(declare-fun c!101611 () Bool)

(assert (=> d!188828 (= c!101611 ((_ is Nil!5092) lt!218972))))

(assert (=> d!188828 (= (size!4119 lt!218972) lt!219130)))

(declare-fun b!532569 () Bool)

(assert (=> b!532569 (= e!320668 0)))

(declare-fun b!532570 () Bool)

(assert (=> b!532570 (= e!320668 (+ 1 (size!4119 (t!73789 lt!218972))))))

(assert (= (and d!188828 c!101611) b!532569))

(assert (= (and d!188828 (not c!101611)) b!532570))

(declare-fun m!777887 () Bool)

(assert (=> b!532570 m!777887))

(assert (=> b!531968 d!188828))

(assert (=> b!531968 d!188516))

(assert (=> b!531968 d!188752))

(declare-fun b!532571 () Bool)

(declare-fun e!320669 () List!5102)

(assert (=> b!532571 (= e!320669 Nil!5092)))

(declare-fun d!188830 () Bool)

(declare-fun c!101612 () Bool)

(assert (=> d!188830 (= c!101612 ((_ is Empty!1642) (c!101469 (charsOf!554 (_1!3366 (v!16079 lt!218901))))))))

(assert (=> d!188830 (= (list!2119 (c!101469 (charsOf!554 (_1!3366 (v!16079 lt!218901))))) e!320669)))

(declare-fun b!532574 () Bool)

(declare-fun e!320670 () List!5102)

(assert (=> b!532574 (= e!320670 (++!1413 (list!2119 (left!4297 (c!101469 (charsOf!554 (_1!3366 (v!16079 lt!218901)))))) (list!2119 (right!4627 (c!101469 (charsOf!554 (_1!3366 (v!16079 lt!218901))))))))))

(declare-fun b!532573 () Bool)

(assert (=> b!532573 (= e!320670 (list!2121 (xs!4279 (c!101469 (charsOf!554 (_1!3366 (v!16079 lt!218901)))))))))

(declare-fun b!532572 () Bool)

(assert (=> b!532572 (= e!320669 e!320670)))

(declare-fun c!101613 () Bool)

(assert (=> b!532572 (= c!101613 ((_ is Leaf!2612) (c!101469 (charsOf!554 (_1!3366 (v!16079 lt!218901))))))))

(assert (= (and d!188830 c!101612) b!532571))

(assert (= (and d!188830 (not c!101612)) b!532572))

(assert (= (and b!532572 c!101613) b!532573))

(assert (= (and b!532572 (not c!101613)) b!532574))

(declare-fun m!777889 () Bool)

(assert (=> b!532574 m!777889))

(declare-fun m!777891 () Bool)

(assert (=> b!532574 m!777891))

(assert (=> b!532574 m!777889))

(assert (=> b!532574 m!777891))

(declare-fun m!777893 () Bool)

(assert (=> b!532574 m!777893))

(declare-fun m!777895 () Bool)

(assert (=> b!532573 m!777895))

(assert (=> d!188510 d!188830))

(declare-fun d!188832 () Bool)

(declare-fun c!101616 () Bool)

(assert (=> d!188832 (= c!101616 ((_ is Node!1642) (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901)))))))))

(declare-fun e!320675 () Bool)

(assert (=> d!188832 (= (inv!6391 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901)))))) e!320675)))

(declare-fun b!532581 () Bool)

(declare-fun inv!6396 (Conc!1642) Bool)

(assert (=> b!532581 (= e!320675 (inv!6396 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901)))))))))

(declare-fun b!532582 () Bool)

(declare-fun e!320676 () Bool)

(assert (=> b!532582 (= e!320675 e!320676)))

(declare-fun res!224980 () Bool)

(assert (=> b!532582 (= res!224980 (not ((_ is Leaf!2612) (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901))))))))))

(assert (=> b!532582 (=> res!224980 e!320676)))

(declare-fun b!532583 () Bool)

(declare-fun inv!6397 (Conc!1642) Bool)

(assert (=> b!532583 (= e!320676 (inv!6397 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901)))))))))

(assert (= (and d!188832 c!101616) b!532581))

(assert (= (and d!188832 (not c!101616)) b!532582))

(assert (= (and b!532582 (not res!224980)) b!532583))

(declare-fun m!777897 () Bool)

(assert (=> b!532581 m!777897))

(declare-fun m!777899 () Bool)

(assert (=> b!532583 m!777899))

(assert (=> b!531995 d!188832))

(declare-fun bs!67203 () Bool)

(declare-fun d!188834 () Bool)

(assert (= bs!67203 (and d!188834 d!188796)))

(declare-fun lambda!15432 () Int)

(assert (=> bs!67203 (= (and (= (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toChars!1627 (transformation!925 (rule!1625 token!491)))) (= (toValue!1768 (transformation!925 (h!10494 rules!3103))) (toValue!1768 (transformation!925 (rule!1625 token!491))))) (= lambda!15432 lambda!15428))))

(assert (=> d!188834 true))

(assert (=> d!188834 (< (dynLambda!3070 order!4419 (toChars!1627 (transformation!925 (h!10494 rules!3103)))) (dynLambda!3071 order!4421 lambda!15432))))

(assert (=> d!188834 true))

(assert (=> d!188834 (< (dynLambda!3072 order!4423 (toValue!1768 (transformation!925 (h!10494 rules!3103)))) (dynLambda!3071 order!4421 lambda!15432))))

(assert (=> d!188834 (= (semiInverseModEq!369 (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toValue!1768 (transformation!925 (h!10494 rules!3103)))) (Forall!276 lambda!15432))))

(declare-fun bs!67204 () Bool)

(assert (= bs!67204 d!188834))

(declare-fun m!777901 () Bool)

(assert (=> bs!67204 m!777901))

(assert (=> d!188492 d!188834))

(declare-fun d!188836 () Bool)

(declare-fun res!224985 () Bool)

(declare-fun e!320681 () Bool)

(assert (=> d!188836 (=> res!224985 e!320681)))

(assert (=> d!188836 (= res!224985 ((_ is Nil!5093) rules!3103))))

(assert (=> d!188836 (= (noDuplicateTag!334 thiss!22590 rules!3103 Nil!5095) e!320681)))

(declare-fun b!532588 () Bool)

(declare-fun e!320682 () Bool)

(assert (=> b!532588 (= e!320681 e!320682)))

(declare-fun res!224986 () Bool)

(assert (=> b!532588 (=> (not res!224986) (not e!320682))))

(declare-fun contains!1189 (List!5105 String!6488) Bool)

(assert (=> b!532588 (= res!224986 (not (contains!1189 Nil!5095 (tag!1187 (h!10494 rules!3103)))))))

(declare-fun b!532589 () Bool)

(assert (=> b!532589 (= e!320682 (noDuplicateTag!334 thiss!22590 (t!73790 rules!3103) (Cons!5095 (tag!1187 (h!10494 rules!3103)) Nil!5095)))))

(assert (= (and d!188836 (not res!224985)) b!532588))

(assert (= (and b!532588 res!224986) b!532589))

(declare-fun m!777903 () Bool)

(assert (=> b!532588 m!777903))

(declare-fun m!777905 () Bool)

(assert (=> b!532589 m!777905))

(assert (=> b!531951 d!188836))

(declare-fun b!532590 () Bool)

(declare-fun e!320685 () Bool)

(declare-fun e!320684 () Bool)

(assert (=> b!532590 (= e!320685 e!320684)))

(declare-fun res!224988 () Bool)

(assert (=> b!532590 (=> (not res!224988) (not e!320684))))

(assert (=> b!532590 (= res!224988 (not ((_ is Nil!5092) (tail!697 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))))))))

(declare-fun b!532593 () Bool)

(declare-fun e!320683 () Bool)

(assert (=> b!532593 (= e!320683 (>= (size!4119 (tail!697 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901))))) (size!4119 (tail!697 lt!218906))))))

(declare-fun b!532591 () Bool)

(declare-fun res!224990 () Bool)

(assert (=> b!532591 (=> (not res!224990) (not e!320684))))

(assert (=> b!532591 (= res!224990 (= (head!1168 (tail!697 lt!218906)) (head!1168 (tail!697 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))))))))

(declare-fun b!532592 () Bool)

(assert (=> b!532592 (= e!320684 (isPrefix!567 (tail!697 (tail!697 lt!218906)) (tail!697 (tail!697 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))))))))

(declare-fun d!188838 () Bool)

(assert (=> d!188838 e!320683))

(declare-fun res!224989 () Bool)

(assert (=> d!188838 (=> res!224989 e!320683)))

(declare-fun lt!219131 () Bool)

(assert (=> d!188838 (= res!224989 (not lt!219131))))

(assert (=> d!188838 (= lt!219131 e!320685)))

(declare-fun res!224987 () Bool)

(assert (=> d!188838 (=> res!224987 e!320685)))

(assert (=> d!188838 (= res!224987 ((_ is Nil!5092) (tail!697 lt!218906)))))

(assert (=> d!188838 (= (isPrefix!567 (tail!697 lt!218906) (tail!697 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901))))) lt!219131)))

(assert (= (and d!188838 (not res!224987)) b!532590))

(assert (= (and b!532590 res!224988) b!532591))

(assert (= (and b!532591 res!224990) b!532592))

(assert (= (and d!188838 (not res!224989)) b!532593))

(assert (=> b!532593 m!777125))

(declare-fun m!777907 () Bool)

(assert (=> b!532593 m!777907))

(assert (=> b!532593 m!777075))

(declare-fun m!777909 () Bool)

(assert (=> b!532593 m!777909))

(assert (=> b!532591 m!777075))

(declare-fun m!777911 () Bool)

(assert (=> b!532591 m!777911))

(assert (=> b!532591 m!777125))

(declare-fun m!777913 () Bool)

(assert (=> b!532591 m!777913))

(assert (=> b!532592 m!777075))

(declare-fun m!777915 () Bool)

(assert (=> b!532592 m!777915))

(assert (=> b!532592 m!777125))

(declare-fun m!777917 () Bool)

(assert (=> b!532592 m!777917))

(assert (=> b!532592 m!777915))

(assert (=> b!532592 m!777917))

(declare-fun m!777919 () Bool)

(assert (=> b!532592 m!777919))

(assert (=> b!532004 d!188838))

(declare-fun d!188840 () Bool)

(assert (=> d!188840 (= (tail!697 lt!218906) (t!73789 lt!218906))))

(assert (=> b!532004 d!188840))

(declare-fun d!188842 () Bool)

(assert (=> d!188842 (= (tail!697 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))) (t!73789 (++!1413 lt!218906 (_2!3366 (v!16079 lt!218901)))))))

(assert (=> b!532004 d!188842))

(declare-fun d!188844 () Bool)

(assert (=> d!188844 (= (isDefined!1087 lt!218957) (not (isEmpty!3687 lt!218957)))))

(declare-fun bs!67205 () Bool)

(assert (= bs!67205 d!188844))

(assert (=> bs!67205 m!776977))

(assert (=> b!531848 d!188844))

(declare-fun lt!219132 () List!5102)

(declare-fun b!532597 () Bool)

(declare-fun e!320686 () Bool)

(assert (=> b!532597 (= e!320686 (or (not (= suffix!1342 Nil!5092)) (= lt!219132 (t!73789 input!2705))))))

(declare-fun b!532594 () Bool)

(declare-fun e!320687 () List!5102)

(assert (=> b!532594 (= e!320687 suffix!1342)))

(declare-fun b!532595 () Bool)

(assert (=> b!532595 (= e!320687 (Cons!5092 (h!10493 (t!73789 input!2705)) (++!1413 (t!73789 (t!73789 input!2705)) suffix!1342)))))

(declare-fun d!188846 () Bool)

(assert (=> d!188846 e!320686))

(declare-fun res!224992 () Bool)

(assert (=> d!188846 (=> (not res!224992) (not e!320686))))

(assert (=> d!188846 (= res!224992 (= (content!902 lt!219132) ((_ map or) (content!902 (t!73789 input!2705)) (content!902 suffix!1342))))))

(assert (=> d!188846 (= lt!219132 e!320687)))

(declare-fun c!101617 () Bool)

(assert (=> d!188846 (= c!101617 ((_ is Nil!5092) (t!73789 input!2705)))))

(assert (=> d!188846 (= (++!1413 (t!73789 input!2705) suffix!1342) lt!219132)))

(declare-fun b!532596 () Bool)

(declare-fun res!224991 () Bool)

(assert (=> b!532596 (=> (not res!224991) (not e!320686))))

(assert (=> b!532596 (= res!224991 (= (size!4119 lt!219132) (+ (size!4119 (t!73789 input!2705)) (size!4119 suffix!1342))))))

(assert (= (and d!188846 c!101617) b!532594))

(assert (= (and d!188846 (not c!101617)) b!532595))

(assert (= (and d!188846 res!224992) b!532596))

(assert (= (and b!532596 res!224991) b!532597))

(declare-fun m!777921 () Bool)

(assert (=> b!532595 m!777921))

(declare-fun m!777923 () Bool)

(assert (=> d!188846 m!777923))

(assert (=> d!188846 m!777213))

(assert (=> d!188846 m!777065))

(declare-fun m!777925 () Bool)

(assert (=> b!532596 m!777925))

(assert (=> b!532596 m!777119))

(assert (=> b!532596 m!777069))

(assert (=> b!532020 d!188846))

(declare-fun b!532598 () Bool)

(declare-fun res!224999 () Bool)

(declare-fun e!320688 () Bool)

(assert (=> b!532598 (=> (not res!224999) (not e!320688))))

(declare-fun lt!219137 () Option!1275)

(assert (=> b!532598 (= res!224999 (< (size!4119 (_2!3366 (get!1902 lt!219137))) (size!4119 input!2705)))))

(declare-fun d!188848 () Bool)

(declare-fun e!320691 () Bool)

(assert (=> d!188848 e!320691))

(declare-fun res!224996 () Bool)

(assert (=> d!188848 (=> res!224996 e!320691)))

(assert (=> d!188848 (= res!224996 (isEmpty!3687 lt!219137))))

(declare-fun e!320690 () Option!1275)

(assert (=> d!188848 (= lt!219137 e!320690)))

(declare-fun c!101618 () Bool)

(declare-fun lt!219134 () tuple2!6208)

(assert (=> d!188848 (= c!101618 (isEmpty!3685 (_1!3368 lt!219134)))))

(assert (=> d!188848 (= lt!219134 (findLongestMatch!100 (regex!925 (h!10494 rules!3103)) input!2705))))

(assert (=> d!188848 (ruleValid!151 thiss!22590 (h!10494 rules!3103))))

(assert (=> d!188848 (= (maxPrefixOneRule!242 thiss!22590 (h!10494 rules!3103) input!2705) lt!219137)))

(declare-fun b!532599 () Bool)

(assert (=> b!532599 (= e!320690 (Some!1274 (tuple2!6205 (Token!1587 (apply!1208 (transformation!925 (h!10494 rules!3103)) (seqFromList!1131 (_1!3368 lt!219134))) (h!10494 rules!3103) (size!4121 (seqFromList!1131 (_1!3368 lt!219134))) (_1!3368 lt!219134)) (_2!3368 lt!219134))))))

(declare-fun lt!219133 () Unit!8881)

(assert (=> b!532599 (= lt!219133 (longestMatchIsAcceptedByMatchOrIsEmpty!105 (regex!925 (h!10494 rules!3103)) input!2705))))

(declare-fun res!224997 () Bool)

(assert (=> b!532599 (= res!224997 (isEmpty!3685 (_1!3368 (findLongestMatchInner!121 (regex!925 (h!10494 rules!3103)) Nil!5092 (size!4119 Nil!5092) input!2705 input!2705 (size!4119 input!2705)))))))

(declare-fun e!320689 () Bool)

(assert (=> b!532599 (=> res!224997 e!320689)))

(assert (=> b!532599 e!320689))

(declare-fun lt!219136 () Unit!8881)

(assert (=> b!532599 (= lt!219136 lt!219133)))

(declare-fun lt!219135 () Unit!8881)

(assert (=> b!532599 (= lt!219135 (lemmaSemiInverse!98 (transformation!925 (h!10494 rules!3103)) (seqFromList!1131 (_1!3368 lt!219134))))))

(declare-fun b!532600 () Bool)

(declare-fun res!224995 () Bool)

(assert (=> b!532600 (=> (not res!224995) (not e!320688))))

(assert (=> b!532600 (= res!224995 (= (rule!1625 (_1!3366 (get!1902 lt!219137))) (h!10494 rules!3103)))))

(declare-fun b!532601 () Bool)

(declare-fun res!224998 () Bool)

(assert (=> b!532601 (=> (not res!224998) (not e!320688))))

(assert (=> b!532601 (= res!224998 (= (value!31229 (_1!3366 (get!1902 lt!219137))) (apply!1208 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!219137)))) (seqFromList!1131 (originalCharacters!964 (_1!3366 (get!1902 lt!219137)))))))))

(declare-fun b!532602 () Bool)

(assert (=> b!532602 (= e!320690 None!1274)))

(declare-fun b!532603 () Bool)

(assert (=> b!532603 (= e!320689 (matchR!442 (regex!925 (h!10494 rules!3103)) (_1!3368 (findLongestMatchInner!121 (regex!925 (h!10494 rules!3103)) Nil!5092 (size!4119 Nil!5092) input!2705 input!2705 (size!4119 input!2705)))))))

(declare-fun b!532604 () Bool)

(declare-fun res!224993 () Bool)

(assert (=> b!532604 (=> (not res!224993) (not e!320688))))

(assert (=> b!532604 (= res!224993 (= (++!1413 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!219137)))) (_2!3366 (get!1902 lt!219137))) input!2705))))

(declare-fun b!532605 () Bool)

(assert (=> b!532605 (= e!320691 e!320688)))

(declare-fun res!224994 () Bool)

(assert (=> b!532605 (=> (not res!224994) (not e!320688))))

(assert (=> b!532605 (= res!224994 (matchR!442 (regex!925 (h!10494 rules!3103)) (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!219137))))))))

(declare-fun b!532606 () Bool)

(assert (=> b!532606 (= e!320688 (= (size!4118 (_1!3366 (get!1902 lt!219137))) (size!4119 (originalCharacters!964 (_1!3366 (get!1902 lt!219137))))))))

(assert (= (and d!188848 c!101618) b!532602))

(assert (= (and d!188848 (not c!101618)) b!532599))

(assert (= (and b!532599 (not res!224997)) b!532603))

(assert (= (and d!188848 (not res!224996)) b!532605))

(assert (= (and b!532605 res!224994) b!532604))

(assert (= (and b!532604 res!224993) b!532598))

(assert (= (and b!532598 res!224999) b!532600))

(assert (= (and b!532600 res!224995) b!532601))

(assert (= (and b!532601 res!224998) b!532606))

(declare-fun m!777927 () Bool)

(assert (=> b!532604 m!777927))

(declare-fun m!777929 () Bool)

(assert (=> b!532604 m!777929))

(assert (=> b!532604 m!777929))

(declare-fun m!777931 () Bool)

(assert (=> b!532604 m!777931))

(assert (=> b!532604 m!777931))

(declare-fun m!777933 () Bool)

(assert (=> b!532604 m!777933))

(assert (=> b!532600 m!777927))

(assert (=> b!532606 m!777927))

(declare-fun m!777935 () Bool)

(assert (=> b!532606 m!777935))

(assert (=> b!532599 m!777231))

(assert (=> b!532599 m!776779))

(declare-fun m!777937 () Bool)

(assert (=> b!532599 m!777937))

(declare-fun m!777939 () Bool)

(assert (=> b!532599 m!777939))

(declare-fun m!777941 () Bool)

(assert (=> b!532599 m!777941))

(assert (=> b!532599 m!776779))

(declare-fun m!777943 () Bool)

(assert (=> b!532599 m!777943))

(declare-fun m!777945 () Bool)

(assert (=> b!532599 m!777945))

(assert (=> b!532599 m!777939))

(declare-fun m!777947 () Bool)

(assert (=> b!532599 m!777947))

(assert (=> b!532599 m!777231))

(assert (=> b!532599 m!777939))

(declare-fun m!777949 () Bool)

(assert (=> b!532599 m!777949))

(assert (=> b!532599 m!777939))

(assert (=> b!532598 m!777927))

(declare-fun m!777951 () Bool)

(assert (=> b!532598 m!777951))

(assert (=> b!532598 m!776779))

(assert (=> b!532603 m!777231))

(assert (=> b!532603 m!776779))

(assert (=> b!532603 m!777231))

(assert (=> b!532603 m!776779))

(assert (=> b!532603 m!777937))

(declare-fun m!777953 () Bool)

(assert (=> b!532603 m!777953))

(assert (=> b!532601 m!777927))

(declare-fun m!777955 () Bool)

(assert (=> b!532601 m!777955))

(assert (=> b!532601 m!777955))

(declare-fun m!777957 () Bool)

(assert (=> b!532601 m!777957))

(declare-fun m!777959 () Bool)

(assert (=> d!188848 m!777959))

(declare-fun m!777961 () Bool)

(assert (=> d!188848 m!777961))

(declare-fun m!777963 () Bool)

(assert (=> d!188848 m!777963))

(assert (=> d!188848 m!777261))

(assert (=> b!532605 m!777927))

(assert (=> b!532605 m!777929))

(assert (=> b!532605 m!777929))

(assert (=> b!532605 m!777931))

(assert (=> b!532605 m!777931))

(declare-fun m!777965 () Bool)

(assert (=> b!532605 m!777965))

(assert (=> bm!38159 d!188848))

(declare-fun d!188850 () Bool)

(declare-fun charsToInt!0 (List!5101) (_ BitVec 32))

(assert (=> d!188850 (= (inv!16 (value!31229 token!491)) (= (charsToInt!0 (text!7090 (value!31229 token!491))) (value!31221 (value!31229 token!491))))))

(declare-fun bs!67206 () Bool)

(assert (= bs!67206 d!188850))

(declare-fun m!777967 () Bool)

(assert (=> bs!67206 m!777967))

(assert (=> b!531909 d!188850))

(declare-fun bm!38174 () Bool)

(declare-fun call!38179 () Bool)

(assert (=> bm!38174 (= call!38179 (isEmpty!3685 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))))))

(declare-fun b!532607 () Bool)

(declare-fun e!320696 () Bool)

(declare-fun lt!219138 () Bool)

(assert (=> b!532607 (= e!320696 (not lt!219138))))

(declare-fun b!532608 () Bool)

(declare-fun res!225003 () Bool)

(declare-fun e!320692 () Bool)

(assert (=> b!532608 (=> (not res!225003) (not e!320692))))

(assert (=> b!532608 (= res!225003 (not call!38179))))

(declare-fun b!532609 () Bool)

(declare-fun e!320698 () Bool)

(assert (=> b!532609 (= e!320698 (nullable!331 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218994))))))))

(declare-fun b!532610 () Bool)

(assert (=> b!532610 (= e!320692 (= (head!1168 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))) (c!101468 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))))))

(declare-fun b!532611 () Bool)

(declare-fun res!225004 () Bool)

(assert (=> b!532611 (=> (not res!225004) (not e!320692))))

(assert (=> b!532611 (= res!225004 (isEmpty!3685 (tail!697 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994)))))))))

(declare-fun b!532612 () Bool)

(declare-fun e!320695 () Bool)

(assert (=> b!532612 (= e!320695 e!320696)))

(declare-fun c!101621 () Bool)

(assert (=> b!532612 (= c!101621 ((_ is EmptyLang!1259) (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218994))))))))

(declare-fun b!532613 () Bool)

(declare-fun res!225006 () Bool)

(declare-fun e!320694 () Bool)

(assert (=> b!532613 (=> res!225006 e!320694)))

(assert (=> b!532613 (= res!225006 e!320692)))

(declare-fun res!225000 () Bool)

(assert (=> b!532613 (=> (not res!225000) (not e!320692))))

(assert (=> b!532613 (= res!225000 lt!219138)))

(declare-fun b!532614 () Bool)

(assert (=> b!532614 (= e!320695 (= lt!219138 call!38179))))

(declare-fun b!532615 () Bool)

(declare-fun e!320693 () Bool)

(declare-fun e!320697 () Bool)

(assert (=> b!532615 (= e!320693 e!320697)))

(declare-fun res!225001 () Bool)

(assert (=> b!532615 (=> res!225001 e!320697)))

(assert (=> b!532615 (= res!225001 call!38179)))

(declare-fun d!188852 () Bool)

(assert (=> d!188852 e!320695))

(declare-fun c!101619 () Bool)

(assert (=> d!188852 (= c!101619 ((_ is EmptyExpr!1259) (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218994))))))))

(assert (=> d!188852 (= lt!219138 e!320698)))

(declare-fun c!101620 () Bool)

(assert (=> d!188852 (= c!101620 (isEmpty!3685 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))))))

(assert (=> d!188852 (validRegex!426 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))))

(assert (=> d!188852 (= (matchR!442 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))) (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))) lt!219138)))

(declare-fun b!532616 () Bool)

(declare-fun res!225002 () Bool)

(assert (=> b!532616 (=> res!225002 e!320694)))

(assert (=> b!532616 (= res!225002 (not ((_ is ElementMatch!1259) (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))))))

(assert (=> b!532616 (= e!320696 e!320694)))

(declare-fun b!532617 () Bool)

(assert (=> b!532617 (= e!320698 (matchR!442 (derivativeStep!259 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))) (head!1168 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994)))))) (tail!697 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994)))))))))

(declare-fun b!532618 () Bool)

(assert (=> b!532618 (= e!320694 e!320693)))

(declare-fun res!225005 () Bool)

(assert (=> b!532618 (=> (not res!225005) (not e!320693))))

(assert (=> b!532618 (= res!225005 (not lt!219138))))

(declare-fun b!532619 () Bool)

(assert (=> b!532619 (= e!320697 (not (= (head!1168 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))) (c!101468 (regex!925 (rule!1625 (_1!3366 (get!1902 lt!218994))))))))))

(declare-fun b!532620 () Bool)

(declare-fun res!225007 () Bool)

(assert (=> b!532620 (=> res!225007 e!320697)))

(assert (=> b!532620 (= res!225007 (not (isEmpty!3685 (tail!697 (list!2117 (charsOf!554 (_1!3366 (get!1902 lt!218994))))))))))

(assert (= (and d!188852 c!101620) b!532609))

(assert (= (and d!188852 (not c!101620)) b!532617))

(assert (= (and d!188852 c!101619) b!532614))

(assert (= (and d!188852 (not c!101619)) b!532612))

(assert (= (and b!532612 c!101621) b!532607))

(assert (= (and b!532612 (not c!101621)) b!532616))

(assert (= (and b!532616 (not res!225002)) b!532613))

(assert (= (and b!532613 res!225000) b!532608))

(assert (= (and b!532608 res!225003) b!532611))

(assert (= (and b!532611 res!225004) b!532610))

(assert (= (and b!532613 (not res!225006)) b!532618))

(assert (= (and b!532618 res!225005) b!532615))

(assert (= (and b!532615 (not res!225001)) b!532620))

(assert (= (and b!532620 (not res!225007)) b!532619))

(assert (= (or b!532614 b!532608 b!532615) bm!38174))

(assert (=> bm!38174 m!777139))

(declare-fun m!777969 () Bool)

(assert (=> bm!38174 m!777969))

(assert (=> b!532617 m!777139))

(declare-fun m!777971 () Bool)

(assert (=> b!532617 m!777971))

(assert (=> b!532617 m!777971))

(declare-fun m!777973 () Bool)

(assert (=> b!532617 m!777973))

(assert (=> b!532617 m!777139))

(declare-fun m!777975 () Bool)

(assert (=> b!532617 m!777975))

(assert (=> b!532617 m!777973))

(assert (=> b!532617 m!777975))

(declare-fun m!777977 () Bool)

(assert (=> b!532617 m!777977))

(assert (=> d!188852 m!777139))

(assert (=> d!188852 m!777969))

(declare-fun m!777979 () Bool)

(assert (=> d!188852 m!777979))

(assert (=> b!532620 m!777139))

(assert (=> b!532620 m!777975))

(assert (=> b!532620 m!777975))

(declare-fun m!777981 () Bool)

(assert (=> b!532620 m!777981))

(assert (=> b!532610 m!777139))

(assert (=> b!532610 m!777971))

(declare-fun m!777983 () Bool)

(assert (=> b!532609 m!777983))

(assert (=> b!532619 m!777139))

(assert (=> b!532619 m!777971))

(assert (=> b!532611 m!777139))

(assert (=> b!532611 m!777975))

(assert (=> b!532611 m!777975))

(assert (=> b!532611 m!777981))

(assert (=> b!532017 d!188852))

(assert (=> b!532017 d!188768))

(assert (=> b!532017 d!188764))

(assert (=> b!532017 d!188766))

(declare-fun d!188854 () Bool)

(declare-fun lt!219139 () Int)

(assert (=> d!188854 (>= lt!219139 0)))

(declare-fun e!320699 () Int)

(assert (=> d!188854 (= lt!219139 e!320699)))

(declare-fun c!101622 () Bool)

(assert (=> d!188854 (= c!101622 ((_ is Nil!5092) (_2!3366 (get!1902 lt!218994))))))

(assert (=> d!188854 (= (size!4119 (_2!3366 (get!1902 lt!218994))) lt!219139)))

(declare-fun b!532621 () Bool)

(assert (=> b!532621 (= e!320699 0)))

(declare-fun b!532622 () Bool)

(assert (=> b!532622 (= e!320699 (+ 1 (size!4119 (t!73789 (_2!3366 (get!1902 lt!218994))))))))

(assert (= (and d!188854 c!101622) b!532621))

(assert (= (and d!188854 (not c!101622)) b!532622))

(declare-fun m!777985 () Bool)

(assert (=> b!532622 m!777985))

(assert (=> b!532015 d!188854))

(assert (=> b!532015 d!188768))

(declare-fun d!188856 () Bool)

(declare-fun lt!219140 () Int)

(assert (=> d!188856 (>= lt!219140 0)))

(declare-fun e!320700 () Int)

(assert (=> d!188856 (= lt!219140 e!320700)))

(declare-fun c!101623 () Bool)

(assert (=> d!188856 (= c!101623 ((_ is Nil!5092) lt!218905))))

(assert (=> d!188856 (= (size!4119 lt!218905) lt!219140)))

(declare-fun b!532623 () Bool)

(assert (=> b!532623 (= e!320700 0)))

(declare-fun b!532624 () Bool)

(assert (=> b!532624 (= e!320700 (+ 1 (size!4119 (t!73789 lt!218905))))))

(assert (= (and d!188856 c!101623) b!532623))

(assert (= (and d!188856 (not c!101623)) b!532624))

(declare-fun m!777987 () Bool)

(assert (=> b!532624 m!777987))

(assert (=> b!532015 d!188856))

(declare-fun b!532625 () Bool)

(declare-fun e!320703 () Bool)

(declare-fun e!320702 () Bool)

(assert (=> b!532625 (= e!320703 e!320702)))

(declare-fun res!225009 () Bool)

(assert (=> b!532625 (=> (not res!225009) (not e!320702))))

(assert (=> b!532625 (= res!225009 (not ((_ is Nil!5092) (tail!697 input!2705))))))

(declare-fun b!532628 () Bool)

(declare-fun e!320701 () Bool)

(assert (=> b!532628 (= e!320701 (>= (size!4119 (tail!697 input!2705)) (size!4119 (tail!697 lt!218906))))))

(declare-fun b!532626 () Bool)

(declare-fun res!225011 () Bool)

(assert (=> b!532626 (=> (not res!225011) (not e!320702))))

(assert (=> b!532626 (= res!225011 (= (head!1168 (tail!697 lt!218906)) (head!1168 (tail!697 input!2705))))))

(declare-fun b!532627 () Bool)

(assert (=> b!532627 (= e!320702 (isPrefix!567 (tail!697 (tail!697 lt!218906)) (tail!697 (tail!697 input!2705))))))

(declare-fun d!188858 () Bool)

(assert (=> d!188858 e!320701))

(declare-fun res!225010 () Bool)

(assert (=> d!188858 (=> res!225010 e!320701)))

(declare-fun lt!219141 () Bool)

(assert (=> d!188858 (= res!225010 (not lt!219141))))

(assert (=> d!188858 (= lt!219141 e!320703)))

(declare-fun res!225008 () Bool)

(assert (=> d!188858 (=> res!225008 e!320703)))

(assert (=> d!188858 (= res!225008 ((_ is Nil!5092) (tail!697 lt!218906)))))

(assert (=> d!188858 (= (isPrefix!567 (tail!697 lt!218906) (tail!697 input!2705)) lt!219141)))

(assert (= (and d!188858 (not res!225008)) b!532625))

(assert (= (and b!532625 res!225009) b!532626))

(assert (= (and b!532626 res!225011) b!532627))

(assert (= (and d!188858 (not res!225010)) b!532628))

(assert (=> b!532628 m!777077))

(declare-fun m!777989 () Bool)

(assert (=> b!532628 m!777989))

(assert (=> b!532628 m!777075))

(assert (=> b!532628 m!777909))

(assert (=> b!532626 m!777075))

(assert (=> b!532626 m!777911))

(assert (=> b!532626 m!777077))

(declare-fun m!777991 () Bool)

(assert (=> b!532626 m!777991))

(assert (=> b!532627 m!777075))

(assert (=> b!532627 m!777915))

(assert (=> b!532627 m!777077))

(declare-fun m!777993 () Bool)

(assert (=> b!532627 m!777993))

(assert (=> b!532627 m!777915))

(assert (=> b!532627 m!777993))

(declare-fun m!777995 () Bool)

(assert (=> b!532627 m!777995))

(assert (=> b!531980 d!188858))

(assert (=> b!531980 d!188840))

(declare-fun d!188860 () Bool)

(assert (=> d!188860 (= (tail!697 input!2705) (t!73789 input!2705))))

(assert (=> b!531980 d!188860))

(declare-fun bs!67207 () Bool)

(declare-fun d!188862 () Bool)

(assert (= bs!67207 (and d!188862 d!188802)))

(declare-fun lambda!15433 () Int)

(assert (=> bs!67207 (= (= (toValue!1768 (transformation!925 (rule!1625 token!491))) (toValue!1768 (transformation!925 (h!10494 rules!3103)))) (= lambda!15433 lambda!15431))))

(assert (=> d!188862 true))

(assert (=> d!188862 (< (dynLambda!3072 order!4423 (toValue!1768 (transformation!925 (rule!1625 token!491)))) (dynLambda!3073 order!4425 lambda!15433))))

(assert (=> d!188862 (= (equivClasses!352 (toChars!1627 (transformation!925 (rule!1625 token!491))) (toValue!1768 (transformation!925 (rule!1625 token!491)))) (Forall2!202 lambda!15433))))

(declare-fun bs!67208 () Bool)

(assert (= bs!67208 d!188862))

(declare-fun m!777997 () Bool)

(assert (=> bs!67208 m!777997))

(assert (=> b!532023 d!188862))

(declare-fun d!188864 () Bool)

(declare-fun c!101624 () Bool)

(assert (=> d!188864 (= c!101624 ((_ is Nil!5092) lt!218976))))

(declare-fun e!320704 () (InoxSet C!3440))

(assert (=> d!188864 (= (content!902 lt!218976) e!320704)))

(declare-fun b!532629 () Bool)

(assert (=> b!532629 (= e!320704 ((as const (Array C!3440 Bool)) false))))

(declare-fun b!532630 () Bool)

(assert (=> b!532630 (= e!320704 ((_ map or) (store ((as const (Array C!3440 Bool)) false) (h!10493 lt!218976) true) (content!902 (t!73789 lt!218976))))))

(assert (= (and d!188864 c!101624) b!532629))

(assert (= (and d!188864 (not c!101624)) b!532630))

(declare-fun m!777999 () Bool)

(assert (=> b!532630 m!777999))

(declare-fun m!778001 () Bool)

(assert (=> b!532630 m!778001))

(assert (=> d!188498 d!188864))

(declare-fun d!188866 () Bool)

(declare-fun c!101625 () Bool)

(assert (=> d!188866 (= c!101625 ((_ is Nil!5092) lt!218906))))

(declare-fun e!320705 () (InoxSet C!3440))

(assert (=> d!188866 (= (content!902 lt!218906) e!320705)))

(declare-fun b!532631 () Bool)

(assert (=> b!532631 (= e!320705 ((as const (Array C!3440 Bool)) false))))

(declare-fun b!532632 () Bool)

(assert (=> b!532632 (= e!320705 ((_ map or) (store ((as const (Array C!3440 Bool)) false) (h!10493 lt!218906) true) (content!902 (t!73789 lt!218906))))))

(assert (= (and d!188866 c!101625) b!532631))

(assert (= (and d!188866 (not c!101625)) b!532632))

(declare-fun m!778003 () Bool)

(assert (=> b!532632 m!778003))

(assert (=> b!532632 m!777881))

(assert (=> d!188498 d!188866))

(declare-fun d!188868 () Bool)

(declare-fun c!101626 () Bool)

(assert (=> d!188868 (= c!101626 ((_ is Nil!5092) (_2!3366 (v!16079 lt!218901))))))

(declare-fun e!320706 () (InoxSet C!3440))

(assert (=> d!188868 (= (content!902 (_2!3366 (v!16079 lt!218901))) e!320706)))

(declare-fun b!532633 () Bool)

(assert (=> b!532633 (= e!320706 ((as const (Array C!3440 Bool)) false))))

(declare-fun b!532634 () Bool)

(assert (=> b!532634 (= e!320706 ((_ map or) (store ((as const (Array C!3440 Bool)) false) (h!10493 (_2!3366 (v!16079 lt!218901))) true) (content!902 (t!73789 (_2!3366 (v!16079 lt!218901))))))))

(assert (= (and d!188868 c!101626) b!532633))

(assert (= (and d!188868 (not c!101626)) b!532634))

(declare-fun m!778005 () Bool)

(assert (=> b!532634 m!778005))

(declare-fun m!778007 () Bool)

(assert (=> b!532634 m!778007))

(assert (=> d!188498 d!188868))

(declare-fun d!188870 () Bool)

(assert (=> d!188870 (= (list!2117 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491))) (list!2119 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491)))))))

(declare-fun bs!67209 () Bool)

(assert (= bs!67209 d!188870))

(declare-fun m!778009 () Bool)

(assert (=> bs!67209 m!778009))

(assert (=> b!531989 d!188870))

(declare-fun d!188872 () Bool)

(declare-fun c!101627 () Bool)

(assert (=> d!188872 (= c!101627 ((_ is Node!1642) (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491)))))))

(declare-fun e!320707 () Bool)

(assert (=> d!188872 (= (inv!6391 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491)))) e!320707)))

(declare-fun b!532635 () Bool)

(assert (=> b!532635 (= e!320707 (inv!6396 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491)))))))

(declare-fun b!532636 () Bool)

(declare-fun e!320708 () Bool)

(assert (=> b!532636 (= e!320707 e!320708)))

(declare-fun res!225012 () Bool)

(assert (=> b!532636 (= res!225012 (not ((_ is Leaf!2612) (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491))))))))

(assert (=> b!532636 (=> res!225012 e!320708)))

(declare-fun b!532637 () Bool)

(assert (=> b!532637 (= e!320708 (inv!6397 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491)))))))

(assert (= (and d!188872 c!101627) b!532635))

(assert (= (and d!188872 (not c!101627)) b!532636))

(assert (= (and b!532636 (not res!225012)) b!532637))

(declare-fun m!778011 () Bool)

(assert (=> b!532635 m!778011))

(declare-fun m!778013 () Bool)

(assert (=> b!532637 m!778013))

(assert (=> b!531760 d!188872))

(declare-fun b!532638 () Bool)

(declare-fun e!320709 () Bool)

(declare-fun tp!169819 () Bool)

(assert (=> b!532638 (= e!320709 (and tp_is_empty!2873 tp!169819))))

(assert (=> b!532059 (= tp!169740 e!320709)))

(assert (= (and b!532059 ((_ is Cons!5092) (t!73789 (t!73789 input!2705)))) b!532638))

(declare-fun e!320714 () Bool)

(declare-fun b!532647 () Bool)

(declare-fun tp!169826 () Bool)

(declare-fun tp!169828 () Bool)

(assert (=> b!532647 (= e!320714 (and (inv!6391 (left!4297 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901))))))) tp!169826 (inv!6391 (right!4627 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901))))))) tp!169828))))

(declare-fun b!532649 () Bool)

(declare-fun e!320715 () Bool)

(declare-fun tp!169827 () Bool)

(assert (=> b!532649 (= e!320715 tp!169827)))

(declare-fun b!532648 () Bool)

(declare-fun inv!6398 (IArray!3285) Bool)

(assert (=> b!532648 (= e!320714 (and (inv!6398 (xs!4279 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901))))))) e!320715))))

(assert (=> b!531995 (= tp!169703 (and (inv!6391 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901)))))) e!320714))))

(assert (= (and b!531995 ((_ is Node!1642) (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901))))))) b!532647))

(assert (= b!532648 b!532649))

(assert (= (and b!531995 ((_ is Leaf!2612) (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))) (value!31229 (_1!3366 (v!16079 lt!218901))))))) b!532648))

(declare-fun m!778015 () Bool)

(assert (=> b!532647 m!778015))

(declare-fun m!778017 () Bool)

(assert (=> b!532647 m!778017))

(declare-fun m!778019 () Bool)

(assert (=> b!532648 m!778019))

(assert (=> b!531995 m!777107))

(declare-fun b!532650 () Bool)

(declare-fun e!320716 () Bool)

(declare-fun tp!169829 () Bool)

(assert (=> b!532650 (= e!320716 (and tp_is_empty!2873 tp!169829))))

(assert (=> b!532042 (= tp!169721 e!320716)))

(assert (= (and b!532042 ((_ is Cons!5092) (t!73789 (originalCharacters!964 token!491)))) b!532650))

(declare-fun b!532651 () Bool)

(declare-fun e!320717 () Bool)

(assert (=> b!532651 (= e!320717 tp_is_empty!2873)))

(declare-fun b!532654 () Bool)

(declare-fun tp!169834 () Bool)

(declare-fun tp!169833 () Bool)

(assert (=> b!532654 (= e!320717 (and tp!169834 tp!169833))))

(declare-fun b!532653 () Bool)

(declare-fun tp!169830 () Bool)

(assert (=> b!532653 (= e!320717 tp!169830)))

(assert (=> b!532057 (= tp!169735 e!320717)))

(declare-fun b!532652 () Bool)

(declare-fun tp!169832 () Bool)

(declare-fun tp!169831 () Bool)

(assert (=> b!532652 (= e!320717 (and tp!169832 tp!169831))))

(assert (= (and b!532057 ((_ is ElementMatch!1259) (reg!1588 (regex!925 (rule!1625 token!491))))) b!532651))

(assert (= (and b!532057 ((_ is Concat!2208) (reg!1588 (regex!925 (rule!1625 token!491))))) b!532652))

(assert (= (and b!532057 ((_ is Star!1259) (reg!1588 (regex!925 (rule!1625 token!491))))) b!532653))

(assert (= (and b!532057 ((_ is Union!1259) (reg!1588 (regex!925 (rule!1625 token!491))))) b!532654))

(declare-fun b!532655 () Bool)

(declare-fun e!320718 () Bool)

(declare-fun tp!169835 () Bool)

(assert (=> b!532655 (= e!320718 (and tp_is_empty!2873 tp!169835))))

(assert (=> b!532054 (= tp!169734 e!320718)))

(assert (= (and b!532054 ((_ is Cons!5092) (t!73789 (t!73789 suffix!1342)))) b!532655))

(declare-fun b!532656 () Bool)

(declare-fun e!320719 () Bool)

(assert (=> b!532656 (= e!320719 tp_is_empty!2873)))

(declare-fun b!532659 () Bool)

(declare-fun tp!169840 () Bool)

(declare-fun tp!169839 () Bool)

(assert (=> b!532659 (= e!320719 (and tp!169840 tp!169839))))

(declare-fun b!532658 () Bool)

(declare-fun tp!169836 () Bool)

(assert (=> b!532658 (= e!320719 tp!169836)))

(assert (=> b!532052 (= tp!169730 e!320719)))

(declare-fun b!532657 () Bool)

(declare-fun tp!169838 () Bool)

(declare-fun tp!169837 () Bool)

(assert (=> b!532657 (= e!320719 (and tp!169838 tp!169837))))

(assert (= (and b!532052 ((_ is ElementMatch!1259) (regex!925 (h!10494 (t!73790 rules!3103))))) b!532656))

(assert (= (and b!532052 ((_ is Concat!2208) (regex!925 (h!10494 (t!73790 rules!3103))))) b!532657))

(assert (= (and b!532052 ((_ is Star!1259) (regex!925 (h!10494 (t!73790 rules!3103))))) b!532658))

(assert (= (and b!532052 ((_ is Union!1259) (regex!925 (h!10494 (t!73790 rules!3103))))) b!532659))

(declare-fun b!532660 () Bool)

(declare-fun e!320720 () Bool)

(assert (=> b!532660 (= e!320720 tp_is_empty!2873)))

(declare-fun b!532663 () Bool)

(declare-fun tp!169845 () Bool)

(declare-fun tp!169844 () Bool)

(assert (=> b!532663 (= e!320720 (and tp!169845 tp!169844))))

(declare-fun b!532662 () Bool)

(declare-fun tp!169841 () Bool)

(assert (=> b!532662 (= e!320720 tp!169841)))

(assert (=> b!532058 (= tp!169739 e!320720)))

(declare-fun b!532661 () Bool)

(declare-fun tp!169843 () Bool)

(declare-fun tp!169842 () Bool)

(assert (=> b!532661 (= e!320720 (and tp!169843 tp!169842))))

(assert (= (and b!532058 ((_ is ElementMatch!1259) (regOne!3031 (regex!925 (rule!1625 token!491))))) b!532660))

(assert (= (and b!532058 ((_ is Concat!2208) (regOne!3031 (regex!925 (rule!1625 token!491))))) b!532661))

(assert (= (and b!532058 ((_ is Star!1259) (regOne!3031 (regex!925 (rule!1625 token!491))))) b!532662))

(assert (= (and b!532058 ((_ is Union!1259) (regOne!3031 (regex!925 (rule!1625 token!491))))) b!532663))

(declare-fun b!532664 () Bool)

(declare-fun e!320721 () Bool)

(assert (=> b!532664 (= e!320721 tp_is_empty!2873)))

(declare-fun b!532667 () Bool)

(declare-fun tp!169850 () Bool)

(declare-fun tp!169849 () Bool)

(assert (=> b!532667 (= e!320721 (and tp!169850 tp!169849))))

(declare-fun b!532666 () Bool)

(declare-fun tp!169846 () Bool)

(assert (=> b!532666 (= e!320721 tp!169846)))

(assert (=> b!532058 (= tp!169738 e!320721)))

(declare-fun b!532665 () Bool)

(declare-fun tp!169848 () Bool)

(declare-fun tp!169847 () Bool)

(assert (=> b!532665 (= e!320721 (and tp!169848 tp!169847))))

(assert (= (and b!532058 ((_ is ElementMatch!1259) (regTwo!3031 (regex!925 (rule!1625 token!491))))) b!532664))

(assert (= (and b!532058 ((_ is Concat!2208) (regTwo!3031 (regex!925 (rule!1625 token!491))))) b!532665))

(assert (= (and b!532058 ((_ is Star!1259) (regTwo!3031 (regex!925 (rule!1625 token!491))))) b!532666))

(assert (= (and b!532058 ((_ is Union!1259) (regTwo!3031 (regex!925 (rule!1625 token!491))))) b!532667))

(declare-fun b!532668 () Bool)

(declare-fun e!320722 () Bool)

(assert (=> b!532668 (= e!320722 tp_is_empty!2873)))

(declare-fun b!532671 () Bool)

(declare-fun tp!169855 () Bool)

(declare-fun tp!169854 () Bool)

(assert (=> b!532671 (= e!320722 (and tp!169855 tp!169854))))

(declare-fun b!532670 () Bool)

(declare-fun tp!169851 () Bool)

(assert (=> b!532670 (= e!320722 tp!169851)))

(assert (=> b!532056 (= tp!169737 e!320722)))

(declare-fun b!532669 () Bool)

(declare-fun tp!169853 () Bool)

(declare-fun tp!169852 () Bool)

(assert (=> b!532669 (= e!320722 (and tp!169853 tp!169852))))

(assert (= (and b!532056 ((_ is ElementMatch!1259) (regOne!3030 (regex!925 (rule!1625 token!491))))) b!532668))

(assert (= (and b!532056 ((_ is Concat!2208) (regOne!3030 (regex!925 (rule!1625 token!491))))) b!532669))

(assert (= (and b!532056 ((_ is Star!1259) (regOne!3030 (regex!925 (rule!1625 token!491))))) b!532670))

(assert (= (and b!532056 ((_ is Union!1259) (regOne!3030 (regex!925 (rule!1625 token!491))))) b!532671))

(declare-fun b!532672 () Bool)

(declare-fun e!320723 () Bool)

(assert (=> b!532672 (= e!320723 tp_is_empty!2873)))

(declare-fun b!532675 () Bool)

(declare-fun tp!169860 () Bool)

(declare-fun tp!169859 () Bool)

(assert (=> b!532675 (= e!320723 (and tp!169860 tp!169859))))

(declare-fun b!532674 () Bool)

(declare-fun tp!169856 () Bool)

(assert (=> b!532674 (= e!320723 tp!169856)))

(assert (=> b!532056 (= tp!169736 e!320723)))

(declare-fun b!532673 () Bool)

(declare-fun tp!169858 () Bool)

(declare-fun tp!169857 () Bool)

(assert (=> b!532673 (= e!320723 (and tp!169858 tp!169857))))

(assert (= (and b!532056 ((_ is ElementMatch!1259) (regTwo!3030 (regex!925 (rule!1625 token!491))))) b!532672))

(assert (= (and b!532056 ((_ is Concat!2208) (regTwo!3030 (regex!925 (rule!1625 token!491))))) b!532673))

(assert (= (and b!532056 ((_ is Star!1259) (regTwo!3030 (regex!925 (rule!1625 token!491))))) b!532674))

(assert (= (and b!532056 ((_ is Union!1259) (regTwo!3030 (regex!925 (rule!1625 token!491))))) b!532675))

(declare-fun b!532678 () Bool)

(declare-fun b_free!14397 () Bool)

(declare-fun b_next!14413 () Bool)

(assert (=> b!532678 (= b_free!14397 (not b_next!14413))))

(declare-fun tb!47343 () Bool)

(declare-fun t!73880 () Bool)

(assert (=> (and b!532678 (= (toValue!1768 (transformation!925 (h!10494 (t!73790 (t!73790 rules!3103))))) (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))) t!73880) tb!47343))

(declare-fun result!52798 () Bool)

(assert (= result!52798 result!52776))

(assert (=> d!188754 t!73880))

(declare-fun tb!47345 () Bool)

(declare-fun t!73882 () Bool)

(assert (=> (and b!532678 (= (toValue!1768 (transformation!925 (h!10494 (t!73790 (t!73790 rules!3103))))) (toValue!1768 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))) t!73882) tb!47345))

(declare-fun result!52800 () Bool)

(assert (= result!52800 result!52790))

(assert (=> d!188804 t!73882))

(declare-fun b_and!52047 () Bool)

(declare-fun tp!169862 () Bool)

(assert (=> b!532678 (= tp!169862 (and (=> t!73880 result!52798) (=> t!73882 result!52800) b_and!52047))))

(declare-fun b_free!14399 () Bool)

(declare-fun b_next!14415 () Bool)

(assert (=> b!532678 (= b_free!14399 (not b_next!14415))))

(declare-fun tb!47347 () Bool)

(declare-fun t!73884 () Bool)

(assert (=> (and b!532678 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 (t!73790 rules!3103))))) (toChars!1627 (transformation!925 (rule!1625 token!491)))) t!73884) tb!47347))

(declare-fun result!52802 () Bool)

(assert (= result!52802 result!52690))

(assert (=> d!188416 t!73884))

(assert (=> b!531989 t!73884))

(declare-fun t!73886 () Bool)

(declare-fun tb!47349 () Bool)

(assert (=> (and b!532678 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 (t!73790 rules!3103))))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901)))))) t!73886) tb!47349))

(declare-fun result!52804 () Bool)

(assert (= result!52804 result!52716))

(assert (=> d!188506 t!73886))

(declare-fun t!73888 () Bool)

(declare-fun tb!47351 () Bool)

(assert (=> (and b!532678 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 (t!73790 rules!3103))))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218957)))))) t!73888) tb!47351))

(declare-fun result!52806 () Bool)

(assert (= result!52806 result!52770))

(assert (=> d!188732 t!73888))

(declare-fun t!73890 () Bool)

(declare-fun tb!47353 () Bool)

(assert (=> (and b!532678 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 (t!73790 rules!3103))))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (get!1902 lt!218994)))))) t!73890) tb!47353))

(declare-fun result!52808 () Bool)

(assert (= result!52808 result!52784))

(assert (=> d!188766 t!73890))

(declare-fun b_and!52049 () Bool)

(declare-fun tp!169864 () Bool)

(assert (=> b!532678 (= tp!169864 (and (=> t!73886 result!52804) (=> t!73888 result!52806) (=> t!73890 result!52808) (=> t!73884 result!52802) b_and!52049))))

(declare-fun e!320724 () Bool)

(assert (=> b!532678 (= e!320724 (and tp!169862 tp!169864))))

(declare-fun e!320726 () Bool)

(declare-fun tp!169861 () Bool)

(declare-fun b!532677 () Bool)

(assert (=> b!532677 (= e!320726 (and tp!169861 (inv!6384 (tag!1187 (h!10494 (t!73790 (t!73790 rules!3103))))) (inv!6387 (transformation!925 (h!10494 (t!73790 (t!73790 rules!3103))))) e!320724))))

(declare-fun b!532676 () Bool)

(declare-fun e!320725 () Bool)

(declare-fun tp!169863 () Bool)

(assert (=> b!532676 (= e!320725 (and e!320726 tp!169863))))

(assert (=> b!532051 (= tp!169732 e!320725)))

(assert (= b!532677 b!532678))

(assert (= b!532676 b!532677))

(assert (= (and b!532051 ((_ is Cons!5093) (t!73790 (t!73790 rules!3103)))) b!532676))

(declare-fun m!778021 () Bool)

(assert (=> b!532677 m!778021))

(declare-fun m!778023 () Bool)

(assert (=> b!532677 m!778023))

(declare-fun b!532679 () Bool)

(declare-fun e!320728 () Bool)

(assert (=> b!532679 (= e!320728 tp_is_empty!2873)))

(declare-fun b!532682 () Bool)

(declare-fun tp!169869 () Bool)

(declare-fun tp!169868 () Bool)

(assert (=> b!532682 (= e!320728 (and tp!169869 tp!169868))))

(declare-fun b!532681 () Bool)

(declare-fun tp!169865 () Bool)

(assert (=> b!532681 (= e!320728 tp!169865)))

(assert (=> b!532037 (= tp!169718 e!320728)))

(declare-fun b!532680 () Bool)

(declare-fun tp!169867 () Bool)

(declare-fun tp!169866 () Bool)

(assert (=> b!532680 (= e!320728 (and tp!169867 tp!169866))))

(assert (= (and b!532037 ((_ is ElementMatch!1259) (regOne!3031 (regex!925 (h!10494 rules!3103))))) b!532679))

(assert (= (and b!532037 ((_ is Concat!2208) (regOne!3031 (regex!925 (h!10494 rules!3103))))) b!532680))

(assert (= (and b!532037 ((_ is Star!1259) (regOne!3031 (regex!925 (h!10494 rules!3103))))) b!532681))

(assert (= (and b!532037 ((_ is Union!1259) (regOne!3031 (regex!925 (h!10494 rules!3103))))) b!532682))

(declare-fun b!532683 () Bool)

(declare-fun e!320729 () Bool)

(assert (=> b!532683 (= e!320729 tp_is_empty!2873)))

(declare-fun b!532686 () Bool)

(declare-fun tp!169874 () Bool)

(declare-fun tp!169873 () Bool)

(assert (=> b!532686 (= e!320729 (and tp!169874 tp!169873))))

(declare-fun b!532685 () Bool)

(declare-fun tp!169870 () Bool)

(assert (=> b!532685 (= e!320729 tp!169870)))

(assert (=> b!532037 (= tp!169717 e!320729)))

(declare-fun b!532684 () Bool)

(declare-fun tp!169872 () Bool)

(declare-fun tp!169871 () Bool)

(assert (=> b!532684 (= e!320729 (and tp!169872 tp!169871))))

(assert (= (and b!532037 ((_ is ElementMatch!1259) (regTwo!3031 (regex!925 (h!10494 rules!3103))))) b!532683))

(assert (= (and b!532037 ((_ is Concat!2208) (regTwo!3031 (regex!925 (h!10494 rules!3103))))) b!532684))

(assert (= (and b!532037 ((_ is Star!1259) (regTwo!3031 (regex!925 (h!10494 rules!3103))))) b!532685))

(assert (= (and b!532037 ((_ is Union!1259) (regTwo!3031 (regex!925 (h!10494 rules!3103))))) b!532686))

(declare-fun b!532687 () Bool)

(declare-fun e!320730 () Bool)

(assert (=> b!532687 (= e!320730 tp_is_empty!2873)))

(declare-fun b!532690 () Bool)

(declare-fun tp!169879 () Bool)

(declare-fun tp!169878 () Bool)

(assert (=> b!532690 (= e!320730 (and tp!169879 tp!169878))))

(declare-fun b!532689 () Bool)

(declare-fun tp!169875 () Bool)

(assert (=> b!532689 (= e!320730 tp!169875)))

(assert (=> b!532035 (= tp!169716 e!320730)))

(declare-fun b!532688 () Bool)

(declare-fun tp!169877 () Bool)

(declare-fun tp!169876 () Bool)

(assert (=> b!532688 (= e!320730 (and tp!169877 tp!169876))))

(assert (= (and b!532035 ((_ is ElementMatch!1259) (regOne!3030 (regex!925 (h!10494 rules!3103))))) b!532687))

(assert (= (and b!532035 ((_ is Concat!2208) (regOne!3030 (regex!925 (h!10494 rules!3103))))) b!532688))

(assert (= (and b!532035 ((_ is Star!1259) (regOne!3030 (regex!925 (h!10494 rules!3103))))) b!532689))

(assert (= (and b!532035 ((_ is Union!1259) (regOne!3030 (regex!925 (h!10494 rules!3103))))) b!532690))

(declare-fun b!532691 () Bool)

(declare-fun e!320731 () Bool)

(assert (=> b!532691 (= e!320731 tp_is_empty!2873)))

(declare-fun b!532694 () Bool)

(declare-fun tp!169884 () Bool)

(declare-fun tp!169883 () Bool)

(assert (=> b!532694 (= e!320731 (and tp!169884 tp!169883))))

(declare-fun b!532693 () Bool)

(declare-fun tp!169880 () Bool)

(assert (=> b!532693 (= e!320731 tp!169880)))

(assert (=> b!532035 (= tp!169715 e!320731)))

(declare-fun b!532692 () Bool)

(declare-fun tp!169882 () Bool)

(declare-fun tp!169881 () Bool)

(assert (=> b!532692 (= e!320731 (and tp!169882 tp!169881))))

(assert (= (and b!532035 ((_ is ElementMatch!1259) (regTwo!3030 (regex!925 (h!10494 rules!3103))))) b!532691))

(assert (= (and b!532035 ((_ is Concat!2208) (regTwo!3030 (regex!925 (h!10494 rules!3103))))) b!532692))

(assert (= (and b!532035 ((_ is Star!1259) (regTwo!3030 (regex!925 (h!10494 rules!3103))))) b!532693))

(assert (= (and b!532035 ((_ is Union!1259) (regTwo!3030 (regex!925 (h!10494 rules!3103))))) b!532694))

(declare-fun e!320732 () Bool)

(declare-fun tp!169887 () Bool)

(declare-fun tp!169885 () Bool)

(declare-fun b!532695 () Bool)

(assert (=> b!532695 (= e!320732 (and (inv!6391 (left!4297 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491))))) tp!169885 (inv!6391 (right!4627 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491))))) tp!169887))))

(declare-fun b!532697 () Bool)

(declare-fun e!320733 () Bool)

(declare-fun tp!169886 () Bool)

(assert (=> b!532697 (= e!320733 tp!169886)))

(declare-fun b!532696 () Bool)

(assert (=> b!532696 (= e!320732 (and (inv!6398 (xs!4279 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491))))) e!320733))))

(assert (=> b!531760 (= tp!169661 (and (inv!6391 (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491)))) e!320732))))

(assert (= (and b!531760 ((_ is Node!1642) (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491))))) b!532695))

(assert (= b!532696 b!532697))

(assert (= (and b!531760 ((_ is Leaf!2612) (c!101469 (dynLambda!3063 (toChars!1627 (transformation!925 (rule!1625 token!491))) (value!31229 token!491))))) b!532696))

(declare-fun m!778025 () Bool)

(assert (=> b!532695 m!778025))

(declare-fun m!778027 () Bool)

(assert (=> b!532695 m!778027))

(declare-fun m!778029 () Bool)

(assert (=> b!532696 m!778029))

(assert (=> b!531760 m!776835))

(declare-fun b!532698 () Bool)

(declare-fun e!320734 () Bool)

(assert (=> b!532698 (= e!320734 tp_is_empty!2873)))

(declare-fun b!532701 () Bool)

(declare-fun tp!169892 () Bool)

(declare-fun tp!169891 () Bool)

(assert (=> b!532701 (= e!320734 (and tp!169892 tp!169891))))

(declare-fun b!532700 () Bool)

(declare-fun tp!169888 () Bool)

(assert (=> b!532700 (= e!320734 tp!169888)))

(assert (=> b!532036 (= tp!169714 e!320734)))

(declare-fun b!532699 () Bool)

(declare-fun tp!169890 () Bool)

(declare-fun tp!169889 () Bool)

(assert (=> b!532699 (= e!320734 (and tp!169890 tp!169889))))

(assert (= (and b!532036 ((_ is ElementMatch!1259) (reg!1588 (regex!925 (h!10494 rules!3103))))) b!532698))

(assert (= (and b!532036 ((_ is Concat!2208) (reg!1588 (regex!925 (h!10494 rules!3103))))) b!532699))

(assert (= (and b!532036 ((_ is Star!1259) (reg!1588 (regex!925 (h!10494 rules!3103))))) b!532700))

(assert (= (and b!532036 ((_ is Union!1259) (reg!1588 (regex!925 (h!10494 rules!3103))))) b!532701))

(declare-fun b_lambda!20597 () Bool)

(assert (= b_lambda!20573 (or (and b!531742 b_free!14379 (= (toChars!1627 (transformation!925 (h!10494 rules!3103))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))))) (and b!531739 b_free!14383 (= (toChars!1627 (transformation!925 (rule!1625 token!491))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))))) (and b!532053 b_free!14391 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 rules!3103)))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))))) (and b!532678 b_free!14399 (= (toChars!1627 (transformation!925 (h!10494 (t!73790 (t!73790 rules!3103))))) (toChars!1627 (transformation!925 (rule!1625 (_1!3366 (v!16079 lt!218901))))))) b_lambda!20597)))

(check-sat (not b!532598) (not b!532083) (not d!188816) (not b!532610) (not b!532488) (not b!532701) (not b!532592) (not b!532482) (not b!532690) (not b_next!14407) (not b!532657) (not b!532498) (not b!531995) (not b!532666) (not bm!38173) (not b!532481) (not d!188848) (not b!532605) (not b!532458) (not b!532545) (not b!532496) (not d!188746) (not b!532697) (not b!532600) (not d!188806) (not tb!47325) (not b!532588) b_and!52039 (not b!532670) (not b!532581) (not d!188560) (not b!532665) (not d!188550) (not b!532483) (not b!532609) (not b!532686) (not tb!47319) (not b!532450) (not d!188784) (not b!532543) (not b!532652) (not b!532474) (not b!532442) (not d!188810) (not d!188792) (not b!532111) (not b!532570) (not b!532565) b_and!52045 (not d!188762) (not b!532626) (not b!532107) (not b!532688) tp_is_empty!2873 (not b!532116) (not b!532118) (not b!532676) (not b_lambda!20597) (not b!532562) (not d!188766) (not b!532487) (not b!532447) b_and!52035 (not b!532604) (not b!532441) (not bm!38169) b_and!52043 (not b!532684) (not b!532667) (not b!532464) (not b!532471) (not b!532085) (not d!188570) (not d!188728) (not d!188764) (not b!532559) (not b!532470) (not b!532596) (not b!532437) (not b!532433) (not b!532628) (not b!532477) (not d!188844) (not b_next!14395) (not b_lambda!20575) (not b!532696) (not b!532677) (not b!532593) (not b!532108) (not d!188808) (not d!188824) (not b!532648) (not b!532490) (not d!188796) (not b!532109) (not b!532564) (not b!532661) b_and!52047 (not b!532595) (not b!532617) (not d!188850) (not b!532460) (not b!532655) (not b!532680) (not b_lambda!20589) (not b!532700) (not b!532431) (not b!532681) (not b!532653) (not b!532568) (not b!532440) (not b!532606) (not b!532537) (not b!532603) (not b_next!14397) (not d!188780) (not b!532448) (not b!532574) (not b!532627) (not b!532601) (not b!532695) (not b!532452) (not b!532638) (not tb!47337) (not b_next!14399) (not b!532589) (not b!532504) (not b!532632) (not b!532622) (not d!188558) (not b!532535) (not d!188562) (not b!532548) (not b!532669) (not b!532480) (not b!532435) (not b!532087) (not d!188870) (not b!532430) (not b!532673) (not d!188778) (not d!188852) (not b!532692) (not b!532624) (not d!188802) (not d!188834) (not b_next!14415) (not b!532476) (not b_lambda!20577) (not b!532486) (not d!188862) (not b!532117) (not b!532473) (not d!188740) (not b_next!14405) (not b!532663) (not b!532689) (not b_lambda!20593) (not b!532671) (not b!532658) (not d!188812) (not b!532536) (not b!532438) (not b!532444) b_and!52041 (not d!188730) (not b!532685) (not bm!38170) (not b_lambda!20591) (not b!532654) (not d!188756) (not b!532478) (not b!532699) (not b!532649) (not b_lambda!20595) (not b!532620) (not b!532662) (not b!532113) (not b_next!14393) (not b!532573) (not d!188846) (not b!532675) (not b!532619) (not b!532445) (not d!188568) (not b!532693) (not b!531760) (not b!532560) (not b!532591) (not d!188742) (not b!532634) (not b!532112) (not b!532659) b_and!52037 (not b!532426) (not bm!38174) (not b!532583) (not b!532647) (not tb!47331) (not b!532114) (not d!188776) (not b!532427) (not b!532682) (not d!188732) (not b!532630) b_and!52049 (not b!532637) (not b_next!14413) (not b!532694) (not b!532546) (not b!532446) (not b!532453) (not b!532106) (not b!532484) (not b!532611) (not b!532674) (not b!532599) (not b!532650) (not b!532635) (not b!532456) (not d!188548) (not d!188782))
(check-sat (not b_next!14407) b_and!52039 b_and!52045 (not b_next!14395) b_and!52047 (not b_next!14397) (not b_next!14399) (not b_next!14415) (not b_next!14393) b_and!52037 b_and!52035 b_and!52043 (not b_next!14405) b_and!52041 b_and!52049 (not b_next!14413))
