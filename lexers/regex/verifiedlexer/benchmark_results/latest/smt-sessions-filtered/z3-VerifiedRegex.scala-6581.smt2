; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347986 () Bool)

(assert start!347986)

(declare-fun b!3695543 () Bool)

(declare-fun b_free!98265 () Bool)

(declare-fun b_next!98969 () Bool)

(assert (=> b!3695543 (= b_free!98265 (not b_next!98969))))

(declare-fun tp!1123210 () Bool)

(declare-fun b_and!276187 () Bool)

(assert (=> b!3695543 (= tp!1123210 b_and!276187)))

(declare-fun b_free!98267 () Bool)

(declare-fun b_next!98971 () Bool)

(assert (=> b!3695543 (= b_free!98267 (not b_next!98971))))

(declare-fun tp!1123213 () Bool)

(declare-fun b_and!276189 () Bool)

(assert (=> b!3695543 (= tp!1123213 b_and!276189)))

(declare-fun b!3695546 () Bool)

(declare-fun b_free!98269 () Bool)

(declare-fun b_next!98973 () Bool)

(assert (=> b!3695546 (= b_free!98269 (not b_next!98973))))

(declare-fun tp!1123207 () Bool)

(declare-fun b_and!276191 () Bool)

(assert (=> b!3695546 (= tp!1123207 b_and!276191)))

(declare-fun b_free!98271 () Bool)

(declare-fun b_next!98975 () Bool)

(assert (=> b!3695546 (= b_free!98271 (not b_next!98975))))

(declare-fun tp!1123209 () Bool)

(declare-fun b_and!276193 () Bool)

(assert (=> b!3695546 (= tp!1123209 b_and!276193)))

(declare-fun b!3695537 () Bool)

(declare-fun e!2288503 () Bool)

(declare-fun tp_is_empty!18477 () Bool)

(declare-fun tp!1123208 () Bool)

(assert (=> b!3695537 (= e!2288503 (and tp_is_empty!18477 tp!1123208))))

(declare-datatypes ((List!39330 0))(
  ( (Nil!39206) (Cons!39206 (h!44626 (_ BitVec 16)) (t!301665 List!39330)) )
))
(declare-datatypes ((TokenValue!6172 0))(
  ( (FloatLiteralValue!12344 (text!43649 List!39330)) (TokenValueExt!6171 (__x!24561 Int)) (Broken!30860 (value!189775 List!39330)) (Object!6295) (End!6172) (Def!6172) (Underscore!6172) (Match!6172) (Else!6172) (Error!6172) (Case!6172) (If!6172) (Extends!6172) (Abstract!6172) (Class!6172) (Val!6172) (DelimiterValue!12344 (del!6232 List!39330)) (KeywordValue!6178 (value!189776 List!39330)) (CommentValue!12344 (value!189777 List!39330)) (WhitespaceValue!12344 (value!189778 List!39330)) (IndentationValue!6172 (value!189779 List!39330)) (String!44193) (Int32!6172) (Broken!30861 (value!189780 List!39330)) (Boolean!6173) (Unit!57197) (OperatorValue!6175 (op!6232 List!39330)) (IdentifierValue!12344 (value!189781 List!39330)) (IdentifierValue!12345 (value!189782 List!39330)) (WhitespaceValue!12345 (value!189783 List!39330)) (True!12344) (False!12344) (Broken!30862 (value!189784 List!39330)) (Broken!30863 (value!189785 List!39330)) (True!12345) (RightBrace!6172) (RightBracket!6172) (Colon!6172) (Null!6172) (Comma!6172) (LeftBracket!6172) (False!12345) (LeftBrace!6172) (ImaginaryLiteralValue!6172 (text!43650 List!39330)) (StringLiteralValue!18516 (value!189786 List!39330)) (EOFValue!6172 (value!189787 List!39330)) (IdentValue!6172 (value!189788 List!39330)) (DelimiterValue!12345 (value!189789 List!39330)) (DedentValue!6172 (value!189790 List!39330)) (NewLineValue!6172 (value!189791 List!39330)) (IntegerValue!18516 (value!189792 (_ BitVec 32)) (text!43651 List!39330)) (IntegerValue!18517 (value!189793 Int) (text!43652 List!39330)) (Times!6172) (Or!6172) (Equal!6172) (Minus!6172) (Broken!30864 (value!189794 List!39330)) (And!6172) (Div!6172) (LessEqual!6172) (Mod!6172) (Concat!16873) (Not!6172) (Plus!6172) (SpaceValue!6172 (value!189795 List!39330)) (IntegerValue!18518 (value!189796 Int) (text!43653 List!39330)) (StringLiteralValue!18517 (text!43654 List!39330)) (FloatLiteralValue!12345 (text!43655 List!39330)) (BytesLiteralValue!6172 (value!189797 List!39330)) (CommentValue!12345 (value!189798 List!39330)) (StringLiteralValue!18518 (value!189799 List!39330)) (ErrorTokenValue!6172 (msg!6233 List!39330)) )
))
(declare-datatypes ((String!44194 0))(
  ( (String!44195 (value!189800 String)) )
))
(declare-datatypes ((C!21588 0))(
  ( (C!21589 (val!12842 Int)) )
))
(declare-datatypes ((List!39331 0))(
  ( (Nil!39207) (Cons!39207 (h!44627 C!21588) (t!301666 List!39331)) )
))
(declare-datatypes ((IArray!24083 0))(
  ( (IArray!24084 (innerList!12099 List!39331)) )
))
(declare-datatypes ((Conc!12039 0))(
  ( (Node!12039 (left!30556 Conc!12039) (right!30886 Conc!12039) (csize!24308 Int) (cheight!12250 Int)) (Leaf!18621 (xs!15241 IArray!24083) (csize!24309 Int)) (Empty!12039) )
))
(declare-datatypes ((BalanceConc!23692 0))(
  ( (BalanceConc!23693 (c!638834 Conc!12039)) )
))
(declare-datatypes ((TokenValueInjection!11772 0))(
  ( (TokenValueInjection!11773 (toValue!8274 Int) (toChars!8133 Int)) )
))
(declare-datatypes ((Regex!10701 0))(
  ( (ElementMatch!10701 (c!638835 C!21588)) (Concat!16874 (regOne!21914 Regex!10701) (regTwo!21914 Regex!10701)) (EmptyExpr!10701) (Star!10701 (reg!11030 Regex!10701)) (EmptyLang!10701) (Union!10701 (regOne!21915 Regex!10701) (regTwo!21915 Regex!10701)) )
))
(declare-datatypes ((Rule!11684 0))(
  ( (Rule!11685 (regex!5942 Regex!10701) (tag!6766 String!44194) (isSeparator!5942 Bool) (transformation!5942 TokenValueInjection!11772)) )
))
(declare-datatypes ((Token!11238 0))(
  ( (Token!11239 (value!189801 TokenValue!6172) (rule!8796 Rule!11684) (size!29920 Int) (originalCharacters!6650 List!39331)) )
))
(declare-fun token!544 () Token!11238)

(declare-fun b!3695538 () Bool)

(declare-fun e!2288497 () Bool)

(declare-fun tp!1123211 () Bool)

(declare-fun e!2288504 () Bool)

(declare-fun inv!21 (TokenValue!6172) Bool)

(assert (=> b!3695538 (= e!2288504 (and (inv!21 (value!189801 token!544)) e!2288497 tp!1123211))))

(declare-fun b!3695539 () Bool)

(declare-fun e!2288501 () Bool)

(declare-fun lt!1293553 () Rule!11684)

(assert (=> b!3695539 (= e!2288501 (= (rule!8796 token!544) lt!1293553))))

(declare-fun b!3695540 () Bool)

(declare-fun e!2288495 () Bool)

(declare-fun e!2288500 () Bool)

(assert (=> b!3695540 (= e!2288495 (not e!2288500))))

(declare-fun res!1502684 () Bool)

(assert (=> b!3695540 (=> res!1502684 e!2288500)))

(declare-datatypes ((LexerInterface!5531 0))(
  ( (LexerInterfaceExt!5528 (__x!24562 Int)) (Lexer!5529) )
))
(declare-fun thiss!25322 () LexerInterface!5531)

(declare-datatypes ((List!39332 0))(
  ( (Nil!39208) (Cons!39208 (h!44628 Rule!11684) (t!301667 List!39332)) )
))
(declare-fun lt!1293552 () List!39332)

(declare-fun rulesInvariant!4928 (LexerInterface!5531 List!39332) Bool)

(assert (=> b!3695540 (= res!1502684 (not (rulesInvariant!4928 thiss!25322 lt!1293552)))))

(declare-fun rules!3598 () List!39332)

(assert (=> b!3695540 (= lt!1293552 (Cons!39208 (h!44628 rules!3598) (t!301667 rules!3598)))))

(declare-fun e!2288499 () Bool)

(assert (=> b!3695540 e!2288499))

(declare-fun res!1502675 () Bool)

(assert (=> b!3695540 (=> (not res!1502675) (not e!2288499))))

(declare-fun lt!1293550 () Bool)

(assert (=> b!3695540 (= res!1502675 (not lt!1293550))))

(declare-datatypes ((Option!8463 0))(
  ( (None!8462) (Some!8462 (v!38420 Rule!11684)) )
))
(declare-fun lt!1293546 () Option!8463)

(declare-fun isDefined!6654 (Option!8463) Bool)

(assert (=> b!3695540 (= lt!1293550 (not (isDefined!6654 lt!1293546)))))

(declare-fun getRuleFromTag!1498 (LexerInterface!5531 List!39332 String!44194) Option!8463)

(assert (=> b!3695540 (= lt!1293546 (getRuleFromTag!1498 thiss!25322 (t!301667 rules!3598) (tag!6766 (rule!8796 token!544))))))

(declare-fun input!3172 () List!39331)

(declare-datatypes ((Unit!57198 0))(
  ( (Unit!57199) )
))
(declare-fun lt!1293548 () Unit!57198)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1492 (LexerInterface!5531 List!39332 List!39331 Token!11238) Unit!57198)

(assert (=> b!3695540 (= lt!1293548 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1492 thiss!25322 (t!301667 rules!3598) input!3172 token!544))))

(assert (=> b!3695540 (rulesInvariant!4928 thiss!25322 (t!301667 rules!3598))))

(declare-fun lt!1293547 () Unit!57198)

(declare-fun lemmaInvariantOnRulesThenOnTail!650 (LexerInterface!5531 Rule!11684 List!39332) Unit!57198)

(assert (=> b!3695540 (= lt!1293547 (lemmaInvariantOnRulesThenOnTail!650 thiss!25322 (h!44628 rules!3598) (t!301667 rules!3598)))))

(declare-fun b!3695541 () Bool)

(assert (=> b!3695541 (= e!2288500 true)))

(declare-fun get!13023 (Option!8463) Rule!11684)

(assert (=> b!3695541 (= (get!13023 lt!1293546) (get!13023 (getRuleFromTag!1498 thiss!25322 lt!1293552 (tag!6766 (rule!8796 token!544)))))))

(declare-fun lt!1293554 () Unit!57198)

(declare-fun lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!2 (LexerInterface!5531 List!39332 Rule!11684 String!44194) Unit!57198)

(assert (=> b!3695541 (= lt!1293554 (lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!2 thiss!25322 (t!301667 rules!3598) (h!44628 rules!3598) (tag!6766 (rule!8796 token!544))))))

(declare-fun b!3695542 () Bool)

(assert (=> b!3695542 (= e!2288499 e!2288501)))

(declare-fun res!1502680 () Bool)

(assert (=> b!3695542 (=> (not res!1502680) (not e!2288501))))

(declare-fun matchR!5240 (Regex!10701 List!39331) Bool)

(declare-fun list!14650 (BalanceConc!23692) List!39331)

(declare-fun charsOf!3937 (Token!11238) BalanceConc!23692)

(assert (=> b!3695542 (= res!1502680 (matchR!5240 (regex!5942 lt!1293553) (list!14650 (charsOf!3937 token!544))))))

(assert (=> b!3695542 (= lt!1293553 (get!13023 lt!1293546))))

(declare-fun e!2288492 () Bool)

(assert (=> b!3695543 (= e!2288492 (and tp!1123210 tp!1123213))))

(declare-fun res!1502685 () Bool)

(declare-fun e!2288506 () Bool)

(assert (=> start!347986 (=> (not res!1502685) (not e!2288506))))

(get-info :version)

(assert (=> start!347986 (= res!1502685 ((_ is Lexer!5529) thiss!25322))))

(assert (=> start!347986 e!2288506))

(assert (=> start!347986 true))

(declare-fun e!2288496 () Bool)

(assert (=> start!347986 e!2288496))

(declare-fun inv!52693 (Token!11238) Bool)

(assert (=> start!347986 (and (inv!52693 token!544) e!2288504)))

(assert (=> start!347986 e!2288503))

(declare-fun b!3695544 () Bool)

(declare-fun tp!1123212 () Bool)

(declare-fun e!2288493 () Bool)

(declare-fun inv!52690 (String!44194) Bool)

(declare-fun inv!52694 (TokenValueInjection!11772) Bool)

(assert (=> b!3695544 (= e!2288497 (and tp!1123212 (inv!52690 (tag!6766 (rule!8796 token!544))) (inv!52694 (transformation!5942 (rule!8796 token!544))) e!2288493))))

(declare-fun e!2288508 () Bool)

(declare-fun tp!1123214 () Bool)

(declare-fun b!3695545 () Bool)

(assert (=> b!3695545 (= e!2288508 (and tp!1123214 (inv!52690 (tag!6766 (h!44628 rules!3598))) (inv!52694 (transformation!5942 (h!44628 rules!3598))) e!2288492))))

(assert (=> b!3695546 (= e!2288493 (and tp!1123207 tp!1123209))))

(declare-fun b!3695547 () Bool)

(declare-fun e!2288507 () Bool)

(assert (=> b!3695547 (= e!2288506 e!2288507)))

(declare-fun res!1502676 () Bool)

(assert (=> b!3695547 (=> (not res!1502676) (not e!2288507))))

(declare-datatypes ((tuple2!39092 0))(
  ( (tuple2!39093 (_1!22680 Token!11238) (_2!22680 List!39331)) )
))
(declare-datatypes ((Option!8464 0))(
  ( (None!8463) (Some!8463 (v!38421 tuple2!39092)) )
))
(declare-fun lt!1293549 () Option!8464)

(declare-fun isDefined!6655 (Option!8464) Bool)

(assert (=> b!3695547 (= res!1502676 (isDefined!6655 lt!1293549))))

(declare-fun maxPrefix!3053 (LexerInterface!5531 List!39332 List!39331) Option!8464)

(assert (=> b!3695547 (= lt!1293549 (maxPrefix!3053 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3695548 () Bool)

(declare-fun res!1502674 () Bool)

(assert (=> b!3695548 (=> (not res!1502674) (not e!2288507))))

(declare-fun get!13024 (Option!8464) tuple2!39092)

(assert (=> b!3695548 (= res!1502674 (= (_1!22680 (get!13024 lt!1293549)) token!544))))

(declare-fun b!3695549 () Bool)

(declare-fun res!1502683 () Bool)

(assert (=> b!3695549 (=> (not res!1502683) (not e!2288507))))

(assert (=> b!3695549 (= res!1502683 ((_ is Cons!39208) rules!3598))))

(declare-fun b!3695550 () Bool)

(declare-fun res!1502679 () Bool)

(assert (=> b!3695550 (=> res!1502679 e!2288500)))

(assert (=> b!3695550 (= res!1502679 lt!1293550)))

(declare-fun b!3695551 () Bool)

(assert (=> b!3695551 (= e!2288507 e!2288495)))

(declare-fun res!1502673 () Bool)

(assert (=> b!3695551 (=> (not res!1502673) (not e!2288495))))

(declare-fun e!2288505 () Bool)

(assert (=> b!3695551 (= res!1502673 e!2288505)))

(declare-fun res!1502682 () Bool)

(assert (=> b!3695551 (=> res!1502682 e!2288505)))

(declare-fun lt!1293551 () Option!8464)

(assert (=> b!3695551 (= res!1502682 (not (isDefined!6655 lt!1293551)))))

(declare-fun maxPrefixOneRule!2167 (LexerInterface!5531 Rule!11684 List!39331) Option!8464)

(assert (=> b!3695551 (= lt!1293551 (maxPrefixOneRule!2167 thiss!25322 (h!44628 rules!3598) input!3172))))

(declare-fun b!3695552 () Bool)

(declare-fun tp!1123206 () Bool)

(assert (=> b!3695552 (= e!2288496 (and e!2288508 tp!1123206))))

(declare-fun b!3695553 () Bool)

(declare-fun res!1502681 () Bool)

(assert (=> b!3695553 (=> (not res!1502681) (not e!2288506))))

(declare-fun isEmpty!23362 (List!39332) Bool)

(assert (=> b!3695553 (= res!1502681 (not (isEmpty!23362 rules!3598)))))

(declare-fun b!3695554 () Bool)

(declare-fun res!1502678 () Bool)

(assert (=> b!3695554 (=> (not res!1502678) (not e!2288506))))

(assert (=> b!3695554 (= res!1502678 (rulesInvariant!4928 thiss!25322 rules!3598))))

(declare-fun b!3695555 () Bool)

(declare-fun res!1502677 () Bool)

(assert (=> b!3695555 (=> (not res!1502677) (not e!2288495))))

(assert (=> b!3695555 (= res!1502677 (not (isEmpty!23362 (t!301667 rules!3598))))))

(declare-fun b!3695556 () Bool)

(assert (=> b!3695556 (= e!2288505 (not (= (_1!22680 (get!13024 lt!1293551)) token!544)))))

(assert (= (and start!347986 res!1502685) b!3695554))

(assert (= (and b!3695554 res!1502678) b!3695553))

(assert (= (and b!3695553 res!1502681) b!3695547))

(assert (= (and b!3695547 res!1502676) b!3695548))

(assert (= (and b!3695548 res!1502674) b!3695549))

(assert (= (and b!3695549 res!1502683) b!3695551))

(assert (= (and b!3695551 (not res!1502682)) b!3695556))

(assert (= (and b!3695551 res!1502673) b!3695555))

(assert (= (and b!3695555 res!1502677) b!3695540))

(assert (= (and b!3695540 res!1502675) b!3695542))

(assert (= (and b!3695542 res!1502680) b!3695539))

(assert (= (and b!3695540 (not res!1502684)) b!3695550))

(assert (= (and b!3695550 (not res!1502679)) b!3695541))

(assert (= b!3695545 b!3695543))

(assert (= b!3695552 b!3695545))

(assert (= (and start!347986 ((_ is Cons!39208) rules!3598)) b!3695552))

(assert (= b!3695544 b!3695546))

(assert (= b!3695538 b!3695544))

(assert (= start!347986 b!3695538))

(assert (= (and start!347986 ((_ is Cons!39207) input!3172)) b!3695537))

(declare-fun m!4207297 () Bool)

(assert (=> b!3695540 m!4207297))

(declare-fun m!4207299 () Bool)

(assert (=> b!3695540 m!4207299))

(declare-fun m!4207301 () Bool)

(assert (=> b!3695540 m!4207301))

(declare-fun m!4207303 () Bool)

(assert (=> b!3695540 m!4207303))

(declare-fun m!4207305 () Bool)

(assert (=> b!3695540 m!4207305))

(declare-fun m!4207307 () Bool)

(assert (=> b!3695540 m!4207307))

(declare-fun m!4207309 () Bool)

(assert (=> b!3695538 m!4207309))

(declare-fun m!4207311 () Bool)

(assert (=> b!3695556 m!4207311))

(declare-fun m!4207313 () Bool)

(assert (=> b!3695554 m!4207313))

(declare-fun m!4207315 () Bool)

(assert (=> b!3695553 m!4207315))

(declare-fun m!4207317 () Bool)

(assert (=> b!3695541 m!4207317))

(declare-fun m!4207319 () Bool)

(assert (=> b!3695541 m!4207319))

(assert (=> b!3695541 m!4207319))

(declare-fun m!4207321 () Bool)

(assert (=> b!3695541 m!4207321))

(declare-fun m!4207323 () Bool)

(assert (=> b!3695541 m!4207323))

(declare-fun m!4207325 () Bool)

(assert (=> b!3695547 m!4207325))

(declare-fun m!4207327 () Bool)

(assert (=> b!3695547 m!4207327))

(declare-fun m!4207329 () Bool)

(assert (=> b!3695555 m!4207329))

(declare-fun m!4207331 () Bool)

(assert (=> b!3695545 m!4207331))

(declare-fun m!4207333 () Bool)

(assert (=> b!3695545 m!4207333))

(declare-fun m!4207335 () Bool)

(assert (=> b!3695548 m!4207335))

(declare-fun m!4207337 () Bool)

(assert (=> b!3695542 m!4207337))

(assert (=> b!3695542 m!4207337))

(declare-fun m!4207339 () Bool)

(assert (=> b!3695542 m!4207339))

(assert (=> b!3695542 m!4207339))

(declare-fun m!4207341 () Bool)

(assert (=> b!3695542 m!4207341))

(assert (=> b!3695542 m!4207317))

(declare-fun m!4207343 () Bool)

(assert (=> b!3695551 m!4207343))

(declare-fun m!4207345 () Bool)

(assert (=> b!3695551 m!4207345))

(declare-fun m!4207347 () Bool)

(assert (=> b!3695544 m!4207347))

(declare-fun m!4207349 () Bool)

(assert (=> b!3695544 m!4207349))

(declare-fun m!4207351 () Bool)

(assert (=> start!347986 m!4207351))

(check-sat (not b!3695540) (not b!3695545) (not b!3695555) b_and!276187 (not b!3695547) b_and!276189 b_and!276193 (not b!3695554) (not b!3695541) (not b_next!98969) (not b!3695556) (not b_next!98973) (not b!3695552) (not b!3695548) (not start!347986) (not b!3695544) (not b_next!98975) (not b!3695538) (not b!3695553) (not b!3695537) tp_is_empty!18477 b_and!276191 (not b_next!98971) (not b!3695551) (not b!3695542))
(check-sat b_and!276187 (not b_next!98975) b_and!276189 b_and!276193 (not b_next!98969) (not b_next!98973) b_and!276191 (not b_next!98971))
