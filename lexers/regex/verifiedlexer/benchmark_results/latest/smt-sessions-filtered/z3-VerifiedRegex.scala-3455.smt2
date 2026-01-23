; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!199068 () Bool)

(assert start!199068)

(declare-fun b!2024927 () Bool)

(declare-fun b_free!56473 () Bool)

(declare-fun b_next!57177 () Bool)

(assert (=> b!2024927 (= b_free!56473 (not b_next!57177))))

(declare-fun tp!602610 () Bool)

(declare-fun b_and!161001 () Bool)

(assert (=> b!2024927 (= tp!602610 b_and!161001)))

(declare-fun b_free!56475 () Bool)

(declare-fun b_next!57179 () Bool)

(assert (=> b!2024927 (= b_free!56475 (not b_next!57179))))

(declare-fun tp!602600 () Bool)

(declare-fun b_and!161003 () Bool)

(assert (=> b!2024927 (= tp!602600 b_and!161003)))

(declare-fun b!2024898 () Bool)

(declare-fun b_free!56477 () Bool)

(declare-fun b_next!57181 () Bool)

(assert (=> b!2024898 (= b_free!56477 (not b_next!57181))))

(declare-fun tp!602609 () Bool)

(declare-fun b_and!161005 () Bool)

(assert (=> b!2024898 (= tp!602609 b_and!161005)))

(declare-fun b_free!56479 () Bool)

(declare-fun b_next!57183 () Bool)

(assert (=> b!2024898 (= b_free!56479 (not b_next!57183))))

(declare-fun tp!602603 () Bool)

(declare-fun b_and!161007 () Bool)

(assert (=> b!2024898 (= tp!602603 b_and!161007)))

(declare-fun b!2024910 () Bool)

(declare-fun b_free!56481 () Bool)

(declare-fun b_next!57185 () Bool)

(assert (=> b!2024910 (= b_free!56481 (not b_next!57185))))

(declare-fun tp!602602 () Bool)

(declare-fun b_and!161009 () Bool)

(assert (=> b!2024910 (= tp!602602 b_and!161009)))

(declare-fun b_free!56483 () Bool)

(declare-fun b_next!57187 () Bool)

(assert (=> b!2024910 (= b_free!56483 (not b_next!57187))))

(declare-fun tp!602606 () Bool)

(declare-fun b_and!161011 () Bool)

(assert (=> b!2024910 (= tp!602606 b_and!161011)))

(declare-fun b!2024894 () Bool)

(declare-datatypes ((Unit!36827 0))(
  ( (Unit!36828) )
))
(declare-fun e!1279094 () Unit!36827)

(declare-fun Unit!36829 () Unit!36827)

(assert (=> b!2024894 (= e!1279094 Unit!36829)))

(declare-datatypes ((List!22262 0))(
  ( (Nil!22180) (Cons!22180 (h!27581 (_ BitVec 16)) (t!189761 List!22262)) )
))
(declare-datatypes ((TokenValue!4122 0))(
  ( (FloatLiteralValue!8244 (text!29299 List!22262)) (TokenValueExt!4121 (__x!13742 Int)) (Broken!20610 (value!125166 List!22262)) (Object!4203) (End!4122) (Def!4122) (Underscore!4122) (Match!4122) (Else!4122) (Error!4122) (Case!4122) (If!4122) (Extends!4122) (Abstract!4122) (Class!4122) (Val!4122) (DelimiterValue!8244 (del!4182 List!22262)) (KeywordValue!4128 (value!125167 List!22262)) (CommentValue!8244 (value!125168 List!22262)) (WhitespaceValue!8244 (value!125169 List!22262)) (IndentationValue!4122 (value!125170 List!22262)) (String!25727) (Int32!4122) (Broken!20611 (value!125171 List!22262)) (Boolean!4123) (Unit!36830) (OperatorValue!4125 (op!4182 List!22262)) (IdentifierValue!8244 (value!125172 List!22262)) (IdentifierValue!8245 (value!125173 List!22262)) (WhitespaceValue!8245 (value!125174 List!22262)) (True!8244) (False!8244) (Broken!20612 (value!125175 List!22262)) (Broken!20613 (value!125176 List!22262)) (True!8245) (RightBrace!4122) (RightBracket!4122) (Colon!4122) (Null!4122) (Comma!4122) (LeftBracket!4122) (False!8245) (LeftBrace!4122) (ImaginaryLiteralValue!4122 (text!29300 List!22262)) (StringLiteralValue!12366 (value!125177 List!22262)) (EOFValue!4122 (value!125178 List!22262)) (IdentValue!4122 (value!125179 List!22262)) (DelimiterValue!8245 (value!125180 List!22262)) (DedentValue!4122 (value!125181 List!22262)) (NewLineValue!4122 (value!125182 List!22262)) (IntegerValue!12366 (value!125183 (_ BitVec 32)) (text!29301 List!22262)) (IntegerValue!12367 (value!125184 Int) (text!29302 List!22262)) (Times!4122) (Or!4122) (Equal!4122) (Minus!4122) (Broken!20614 (value!125185 List!22262)) (And!4122) (Div!4122) (LessEqual!4122) (Mod!4122) (Concat!9533) (Not!4122) (Plus!4122) (SpaceValue!4122 (value!125186 List!22262)) (IntegerValue!12368 (value!125187 Int) (text!29303 List!22262)) (StringLiteralValue!12367 (text!29304 List!22262)) (FloatLiteralValue!8245 (text!29305 List!22262)) (BytesLiteralValue!4122 (value!125188 List!22262)) (CommentValue!8245 (value!125189 List!22262)) (StringLiteralValue!12368 (value!125190 List!22262)) (ErrorTokenValue!4122 (msg!4183 List!22262)) )
))
(declare-datatypes ((C!10968 0))(
  ( (C!10969 (val!6436 Int)) )
))
(declare-datatypes ((List!22263 0))(
  ( (Nil!22181) (Cons!22181 (h!27582 C!10968) (t!189762 List!22263)) )
))
(declare-datatypes ((Regex!5411 0))(
  ( (ElementMatch!5411 (c!327646 C!10968)) (Concat!9534 (regOne!11334 Regex!5411) (regTwo!11334 Regex!5411)) (EmptyExpr!5411) (Star!5411 (reg!5740 Regex!5411)) (EmptyLang!5411) (Union!5411 (regOne!11335 Regex!5411) (regTwo!11335 Regex!5411)) )
))
(declare-datatypes ((String!25728 0))(
  ( (String!25729 (value!125191 String)) )
))
(declare-datatypes ((IArray!14841 0))(
  ( (IArray!14842 (innerList!7478 List!22263)) )
))
(declare-datatypes ((Conc!7418 0))(
  ( (Node!7418 (left!17645 Conc!7418) (right!17975 Conc!7418) (csize!15066 Int) (cheight!7629 Int)) (Leaf!10874 (xs!10320 IArray!14841) (csize!15067 Int)) (Empty!7418) )
))
(declare-datatypes ((BalanceConc!14652 0))(
  ( (BalanceConc!14653 (c!327647 Conc!7418)) )
))
(declare-datatypes ((TokenValueInjection!7828 0))(
  ( (TokenValueInjection!7829 (toValue!5659 Int) (toChars!5518 Int)) )
))
(declare-datatypes ((Rule!7772 0))(
  ( (Rule!7773 (regex!3986 Regex!5411) (tag!4466 String!25728) (isSeparator!3986 Bool) (transformation!3986 TokenValueInjection!7828)) )
))
(declare-datatypes ((Token!7524 0))(
  ( (Token!7525 (value!125192 TokenValue!4122) (rule!6215 Rule!7772) (size!17324 Int) (originalCharacters!4793 List!22263)) )
))
(declare-fun separatorToken!354 () Token!7524)

(declare-fun lt!760409 () List!22263)

(declare-fun lt!760399 () Unit!36827)

(declare-fun lt!760398 () C!10968)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!312 (Regex!5411 List!22263 C!10968) Unit!36827)

(assert (=> b!2024894 (= lt!760399 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!312 (regex!3986 (rule!6215 separatorToken!354)) lt!760409 lt!760398))))

(declare-fun res!887773 () Bool)

(declare-fun matchR!2677 (Regex!5411 List!22263) Bool)

(assert (=> b!2024894 (= res!887773 (not (matchR!2677 (regex!3986 (rule!6215 separatorToken!354)) lt!760409)))))

(declare-fun e!1279080 () Bool)

(assert (=> b!2024894 (=> (not res!887773) (not e!1279080))))

(assert (=> b!2024894 e!1279080))

(declare-fun b!2024895 () Bool)

(declare-fun e!1279096 () Bool)

(declare-fun lt!760410 () Rule!7772)

(assert (=> b!2024895 (= e!1279096 (= (rule!6215 separatorToken!354) lt!760410))))

(declare-fun b!2024896 () Bool)

(declare-fun res!887767 () Bool)

(declare-fun e!1279082 () Bool)

(assert (=> b!2024896 (=> res!887767 e!1279082)))

(declare-datatypes ((LexerInterface!3599 0))(
  ( (LexerInterfaceExt!3596 (__x!13743 Int)) (Lexer!3597) )
))
(declare-fun thiss!23328 () LexerInterface!3599)

(declare-datatypes ((List!22264 0))(
  ( (Nil!22182) (Cons!22182 (h!27583 Rule!7772) (t!189763 List!22264)) )
))
(declare-fun rules!3198 () List!22264)

(declare-datatypes ((List!22265 0))(
  ( (Nil!22183) (Cons!22183 (h!27584 Token!7524) (t!189764 List!22265)) )
))
(declare-fun tokens!598 () List!22265)

(declare-fun rulesProduceIndividualToken!1771 (LexerInterface!3599 List!22264 Token!7524) Bool)

(assert (=> b!2024896 (= res!887767 (not (rulesProduceIndividualToken!1771 thiss!23328 rules!3198 (h!27584 tokens!598))))))

(declare-fun b!2024897 () Bool)

(declare-fun e!1279090 () Bool)

(declare-fun lt!760406 () Rule!7772)

(assert (=> b!2024897 (= e!1279090 (= (rule!6215 (h!27584 tokens!598)) lt!760406))))

(declare-fun e!1279093 () Bool)

(assert (=> b!2024898 (= e!1279093 (and tp!602609 tp!602603))))

(declare-fun b!2024899 () Bool)

(declare-fun tp!602604 () Bool)

(declare-fun e!1279097 () Bool)

(declare-fun inv!29355 (String!25728) Bool)

(declare-fun inv!29358 (TokenValueInjection!7828) Bool)

(assert (=> b!2024899 (= e!1279097 (and tp!602604 (inv!29355 (tag!4466 (h!27583 rules!3198))) (inv!29358 (transformation!3986 (h!27583 rules!3198))) e!1279093))))

(declare-fun e!1279077 () Bool)

(declare-fun b!2024900 () Bool)

(declare-fun tp!602608 () Bool)

(declare-fun e!1279083 () Bool)

(declare-fun inv!29359 (Token!7524) Bool)

(assert (=> b!2024900 (= e!1279083 (and (inv!29359 (h!27584 tokens!598)) e!1279077 tp!602608))))

(declare-fun tp!602601 () Bool)

(declare-fun b!2024901 () Bool)

(declare-fun e!1279084 () Bool)

(declare-fun e!1279074 () Bool)

(declare-fun inv!21 (TokenValue!4122) Bool)

(assert (=> b!2024901 (= e!1279074 (and (inv!21 (value!125192 separatorToken!354)) e!1279084 tp!602601))))

(declare-fun b!2024903 () Bool)

(declare-fun res!887766 () Bool)

(declare-fun e!1279095 () Bool)

(assert (=> b!2024903 (=> (not res!887766) (not e!1279095))))

(declare-fun isEmpty!13808 (List!22264) Bool)

(assert (=> b!2024903 (= res!887766 (not (isEmpty!13808 rules!3198)))))

(declare-fun b!2024904 () Bool)

(declare-fun e!1279088 () Bool)

(assert (=> b!2024904 (= e!1279095 (not e!1279088))))

(declare-fun res!887765 () Bool)

(assert (=> b!2024904 (=> res!887765 e!1279088)))

(declare-fun lt!760400 () Bool)

(declare-datatypes ((tuple2!20856 0))(
  ( (tuple2!20857 (_1!11897 Token!7524) (_2!11897 List!22263)) )
))
(declare-datatypes ((Option!4655 0))(
  ( (None!4654) (Some!4654 (v!26955 tuple2!20856)) )
))
(declare-fun lt!760397 () Option!4655)

(assert (=> b!2024904 (= res!887765 (or (and (not lt!760400) (= (_1!11897 (v!26955 lt!760397)) (h!27584 tokens!598))) lt!760400 (= (_1!11897 (v!26955 lt!760397)) (h!27584 tokens!598))))))

(get-info :version)

(assert (=> b!2024904 (= lt!760400 (not ((_ is Some!4654) lt!760397)))))

(declare-fun lt!760413 () List!22263)

(declare-fun lt!760414 () List!22263)

(declare-fun maxPrefix!2035 (LexerInterface!3599 List!22264 List!22263) Option!4655)

(declare-fun ++!5993 (List!22263 List!22263) List!22263)

(assert (=> b!2024904 (= lt!760397 (maxPrefix!2035 thiss!23328 rules!3198 (++!5993 lt!760414 lt!760413)))))

(declare-fun printWithSeparatorTokenWhenNeededList!628 (LexerInterface!3599 List!22264 List!22265 Token!7524) List!22263)

(assert (=> b!2024904 (= lt!760413 (printWithSeparatorTokenWhenNeededList!628 thiss!23328 rules!3198 (t!189764 tokens!598) separatorToken!354))))

(declare-fun e!1279098 () Bool)

(assert (=> b!2024904 e!1279098))

(declare-fun res!887764 () Bool)

(assert (=> b!2024904 (=> (not res!887764) (not e!1279098))))

(declare-datatypes ((Option!4656 0))(
  ( (None!4655) (Some!4655 (v!26956 Rule!7772)) )
))
(declare-fun lt!760415 () Option!4656)

(declare-fun isDefined!3943 (Option!4656) Bool)

(assert (=> b!2024904 (= res!887764 (isDefined!3943 lt!760415))))

(declare-fun getRuleFromTag!801 (LexerInterface!3599 List!22264 String!25728) Option!4656)

(assert (=> b!2024904 (= lt!760415 (getRuleFromTag!801 thiss!23328 rules!3198 (tag!4466 (rule!6215 (h!27584 tokens!598)))))))

(declare-fun lt!760404 () Unit!36827)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!801 (LexerInterface!3599 List!22264 List!22263 Token!7524) Unit!36827)

(assert (=> b!2024904 (= lt!760404 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!801 thiss!23328 rules!3198 lt!760414 (h!27584 tokens!598)))))

(declare-fun lt!760402 () tuple2!20856)

(assert (=> b!2024904 (= (_1!11897 lt!760402) (h!27584 tokens!598))))

(declare-fun lt!760405 () Option!4655)

(declare-fun get!7039 (Option!4655) tuple2!20856)

(assert (=> b!2024904 (= lt!760402 (get!7039 lt!760405))))

(declare-fun isDefined!3944 (Option!4655) Bool)

(assert (=> b!2024904 (isDefined!3944 lt!760405)))

(assert (=> b!2024904 (= lt!760405 (maxPrefix!2035 thiss!23328 rules!3198 lt!760414))))

(declare-fun lt!760411 () BalanceConc!14652)

(declare-fun list!9049 (BalanceConc!14652) List!22263)

(assert (=> b!2024904 (= lt!760414 (list!9049 lt!760411))))

(declare-fun e!1279089 () Bool)

(assert (=> b!2024904 e!1279089))

(declare-fun res!887775 () Bool)

(assert (=> b!2024904 (=> (not res!887775) (not e!1279089))))

(declare-fun lt!760393 () Option!4656)

(assert (=> b!2024904 (= res!887775 (isDefined!3943 lt!760393))))

(assert (=> b!2024904 (= lt!760393 (getRuleFromTag!801 thiss!23328 rules!3198 (tag!4466 (rule!6215 separatorToken!354))))))

(declare-fun lt!760394 () Unit!36827)

(assert (=> b!2024904 (= lt!760394 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!801 thiss!23328 rules!3198 lt!760409 separatorToken!354))))

(declare-fun charsOf!2526 (Token!7524) BalanceConc!14652)

(assert (=> b!2024904 (= lt!760409 (list!9049 (charsOf!2526 separatorToken!354)))))

(declare-fun lt!760395 () Unit!36827)

(declare-fun lemmaEqSameImage!672 (TokenValueInjection!7828 BalanceConc!14652 BalanceConc!14652) Unit!36827)

(declare-fun seqFromList!2840 (List!22263) BalanceConc!14652)

(assert (=> b!2024904 (= lt!760395 (lemmaEqSameImage!672 (transformation!3986 (rule!6215 (h!27584 tokens!598))) lt!760411 (seqFromList!2840 (originalCharacters!4793 (h!27584 tokens!598)))))))

(declare-fun lt!760412 () Unit!36827)

(declare-fun lemmaSemiInverse!943 (TokenValueInjection!7828 BalanceConc!14652) Unit!36827)

(assert (=> b!2024904 (= lt!760412 (lemmaSemiInverse!943 (transformation!3986 (rule!6215 (h!27584 tokens!598))) lt!760411))))

(assert (=> b!2024904 (= lt!760411 (charsOf!2526 (h!27584 tokens!598)))))

(declare-fun b!2024905 () Bool)

(declare-fun res!887755 () Bool)

(assert (=> b!2024905 (=> res!887755 e!1279082)))

(declare-fun contains!4087 (List!22264 Rule!7772) Bool)

(assert (=> b!2024905 (= res!887755 (not (contains!4087 rules!3198 (rule!6215 (h!27584 tokens!598)))))))

(declare-fun b!2024906 () Bool)

(declare-fun res!887753 () Bool)

(assert (=> b!2024906 (=> (not res!887753) (not e!1279095))))

(assert (=> b!2024906 (= res!887753 (rulesProduceIndividualToken!1771 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2024907 () Bool)

(assert (=> b!2024907 (= e!1279088 e!1279082)))

(declare-fun res!887760 () Bool)

(assert (=> b!2024907 (=> res!887760 e!1279082)))

(declare-fun lt!760403 () List!22263)

(declare-fun lt!760392 () List!22263)

(assert (=> b!2024907 (= res!887760 (or (not (= lt!760392 lt!760403)) (not (= lt!760403 lt!760414)) (not (= lt!760392 lt!760414))))))

(declare-fun printList!1118 (LexerInterface!3599 List!22265) List!22263)

(assert (=> b!2024907 (= lt!760403 (printList!1118 thiss!23328 (Cons!22183 (h!27584 tokens!598) Nil!22183)))))

(declare-fun lt!760408 () BalanceConc!14652)

(assert (=> b!2024907 (= lt!760392 (list!9049 lt!760408))))

(declare-datatypes ((IArray!14843 0))(
  ( (IArray!14844 (innerList!7479 List!22265)) )
))
(declare-datatypes ((Conc!7419 0))(
  ( (Node!7419 (left!17646 Conc!7419) (right!17976 Conc!7419) (csize!15068 Int) (cheight!7630 Int)) (Leaf!10875 (xs!10321 IArray!14843) (csize!15069 Int)) (Empty!7419) )
))
(declare-datatypes ((BalanceConc!14654 0))(
  ( (BalanceConc!14655 (c!327648 Conc!7419)) )
))
(declare-fun lt!760396 () BalanceConc!14654)

(declare-fun printTailRec!1067 (LexerInterface!3599 BalanceConc!14654 Int BalanceConc!14652) BalanceConc!14652)

(assert (=> b!2024907 (= lt!760408 (printTailRec!1067 thiss!23328 lt!760396 0 (BalanceConc!14653 Empty!7418)))))

(declare-fun print!1561 (LexerInterface!3599 BalanceConc!14654) BalanceConc!14652)

(assert (=> b!2024907 (= lt!760408 (print!1561 thiss!23328 lt!760396))))

(declare-fun singletonSeq!1962 (Token!7524) BalanceConc!14654)

(assert (=> b!2024907 (= lt!760396 (singletonSeq!1962 (h!27584 tokens!598)))))

(declare-fun contains!4088 (List!22263 C!10968) Bool)

(declare-fun usedCharacters!424 (Regex!5411) List!22263)

(assert (=> b!2024907 (not (contains!4088 (usedCharacters!424 (regex!3986 (rule!6215 (h!27584 tokens!598)))) lt!760398))))

(declare-fun lt!760401 () Unit!36827)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!96 (LexerInterface!3599 List!22264 List!22264 Rule!7772 Rule!7772 C!10968) Unit!36827)

(assert (=> b!2024907 (= lt!760401 (lemmaNonSepRuleNotContainsCharContainedInASepRule!96 thiss!23328 rules!3198 rules!3198 (rule!6215 (h!27584 tokens!598)) (rule!6215 separatorToken!354) lt!760398))))

(declare-fun lt!760391 () Unit!36827)

(assert (=> b!2024907 (= lt!760391 e!1279094)))

(declare-fun c!327645 () Bool)

(assert (=> b!2024907 (= c!327645 (not (contains!4088 (usedCharacters!424 (regex!3986 (rule!6215 separatorToken!354))) lt!760398)))))

(declare-fun head!4572 (List!22263) C!10968)

(assert (=> b!2024907 (= lt!760398 (head!4572 lt!760409))))

(declare-fun lt!760418 () List!22263)

(declare-fun lt!760416 () List!22263)

(assert (=> b!2024907 (= (++!5993 lt!760418 lt!760413) (++!5993 lt!760414 lt!760416))))

(assert (=> b!2024907 (= lt!760416 (++!5993 lt!760409 lt!760413))))

(assert (=> b!2024907 (= lt!760418 (++!5993 lt!760414 lt!760409))))

(declare-fun lt!760417 () Unit!36827)

(declare-fun lemmaConcatAssociativity!1251 (List!22263 List!22263 List!22263) Unit!36827)

(assert (=> b!2024907 (= lt!760417 (lemmaConcatAssociativity!1251 lt!760414 lt!760409 lt!760413))))

(declare-fun b!2024908 () Bool)

(assert (=> b!2024908 (= e!1279080 false)))

(declare-fun b!2024909 () Bool)

(declare-fun res!887771 () Bool)

(assert (=> b!2024909 (=> res!887771 e!1279082)))

(assert (=> b!2024909 (= res!887771 (isSeparator!3986 (rule!6215 (h!27584 tokens!598))))))

(declare-fun e!1279079 () Bool)

(assert (=> b!2024910 (= e!1279079 (and tp!602602 tp!602606))))

(declare-fun b!2024911 () Bool)

(declare-fun e!1279078 () Bool)

(declare-fun tp!602605 () Bool)

(assert (=> b!2024911 (= e!1279078 (and e!1279097 tp!602605))))

(declare-fun b!2024912 () Bool)

(declare-fun res!887761 () Bool)

(assert (=> b!2024912 (=> (not res!887761) (not e!1279095))))

(declare-fun rulesInvariant!3206 (LexerInterface!3599 List!22264) Bool)

(assert (=> b!2024912 (= res!887761 (rulesInvariant!3206 thiss!23328 rules!3198))))

(declare-fun e!1279075 () Bool)

(declare-fun tp!602611 () Bool)

(declare-fun e!1279076 () Bool)

(declare-fun b!2024913 () Bool)

(assert (=> b!2024913 (= e!1279075 (and tp!602611 (inv!29355 (tag!4466 (rule!6215 (h!27584 tokens!598)))) (inv!29358 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) e!1279076))))

(declare-fun b!2024914 () Bool)

(assert (=> b!2024914 (= e!1279089 e!1279096)))

(declare-fun res!887756 () Bool)

(assert (=> b!2024914 (=> (not res!887756) (not e!1279096))))

(assert (=> b!2024914 (= res!887756 (matchR!2677 (regex!3986 lt!760410) lt!760409))))

(declare-fun get!7040 (Option!4656) Rule!7772)

(assert (=> b!2024914 (= lt!760410 (get!7040 lt!760393))))

(declare-fun b!2024915 () Bool)

(declare-fun e!1279081 () Bool)

(declare-fun isEmpty!13809 (List!22263) Bool)

(assert (=> b!2024915 (= e!1279081 (not (isEmpty!13809 lt!760416)))))

(declare-fun b!2024916 () Bool)

(declare-fun res!887754 () Bool)

(assert (=> b!2024916 (=> res!887754 e!1279082)))

(declare-fun isEmpty!13810 (BalanceConc!14654) Bool)

(declare-datatypes ((tuple2!20858 0))(
  ( (tuple2!20859 (_1!11898 BalanceConc!14654) (_2!11898 BalanceConc!14652)) )
))
(declare-fun lex!1615 (LexerInterface!3599 List!22264 BalanceConc!14652) tuple2!20858)

(assert (=> b!2024916 (= res!887754 (isEmpty!13810 (_1!11898 (lex!1615 thiss!23328 rules!3198 (seqFromList!2840 lt!760414)))))))

(declare-fun b!2024917 () Bool)

(declare-fun res!887769 () Bool)

(assert (=> b!2024917 (=> res!887769 e!1279082)))

(assert (=> b!2024917 (= res!887769 (not (isEmpty!13809 (_2!11897 lt!760402))))))

(declare-fun b!2024918 () Bool)

(declare-fun res!887759 () Bool)

(assert (=> b!2024918 (=> (not res!887759) (not e!1279095))))

(assert (=> b!2024918 (= res!887759 ((_ is Cons!22183) tokens!598))))

(declare-fun b!2024919 () Bool)

(assert (=> b!2024919 (= e!1279098 e!1279090)))

(declare-fun res!887772 () Bool)

(assert (=> b!2024919 (=> (not res!887772) (not e!1279090))))

(assert (=> b!2024919 (= res!887772 (matchR!2677 (regex!3986 lt!760406) lt!760414))))

(assert (=> b!2024919 (= lt!760406 (get!7040 lt!760415))))

(declare-fun b!2024920 () Bool)

(assert (=> b!2024920 (= e!1279082 e!1279081)))

(declare-fun res!887758 () Bool)

(assert (=> b!2024920 (=> res!887758 e!1279081)))

(assert (=> b!2024920 (= res!887758 (not (matchR!2677 (regex!3986 (rule!6215 (h!27584 tokens!598))) lt!760414)))))

(declare-fun ruleValid!1217 (LexerInterface!3599 Rule!7772) Bool)

(assert (=> b!2024920 (ruleValid!1217 thiss!23328 (rule!6215 (h!27584 tokens!598)))))

(declare-fun lt!760407 () Unit!36827)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!688 (LexerInterface!3599 Rule!7772 List!22264) Unit!36827)

(assert (=> b!2024920 (= lt!760407 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!688 thiss!23328 (rule!6215 (h!27584 tokens!598)) rules!3198))))

(declare-fun b!2024921 () Bool)

(declare-fun res!887762 () Bool)

(assert (=> b!2024921 (=> (not res!887762) (not e!1279095))))

(assert (=> b!2024921 (= res!887762 (isSeparator!3986 (rule!6215 separatorToken!354)))))

(declare-fun b!2024922 () Bool)

(declare-fun Unit!36831 () Unit!36827)

(assert (=> b!2024922 (= e!1279094 Unit!36831)))

(declare-fun tp!602607 () Bool)

(declare-fun b!2024923 () Bool)

(assert (=> b!2024923 (= e!1279084 (and tp!602607 (inv!29355 (tag!4466 (rule!6215 separatorToken!354))) (inv!29358 (transformation!3986 (rule!6215 separatorToken!354))) e!1279079))))

(declare-fun b!2024924 () Bool)

(declare-fun res!887770 () Bool)

(assert (=> b!2024924 (=> res!887770 e!1279082)))

(assert (=> b!2024924 (= res!887770 (not (contains!4087 rules!3198 (rule!6215 separatorToken!354))))))

(declare-fun res!887757 () Bool)

(assert (=> start!199068 (=> (not res!887757) (not e!1279095))))

(assert (=> start!199068 (= res!887757 ((_ is Lexer!3597) thiss!23328))))

(assert (=> start!199068 e!1279095))

(assert (=> start!199068 true))

(assert (=> start!199068 e!1279078))

(assert (=> start!199068 e!1279083))

(assert (=> start!199068 (and (inv!29359 separatorToken!354) e!1279074)))

(declare-fun b!2024902 () Bool)

(declare-fun res!887774 () Bool)

(assert (=> b!2024902 (=> (not res!887774) (not e!1279095))))

(declare-fun lambda!76393 () Int)

(declare-fun forall!4718 (List!22265 Int) Bool)

(assert (=> b!2024902 (= res!887774 (forall!4718 tokens!598 lambda!76393))))

(declare-fun b!2024925 () Bool)

(declare-fun res!887768 () Bool)

(assert (=> b!2024925 (=> (not res!887768) (not e!1279095))))

(declare-fun sepAndNonSepRulesDisjointChars!1084 (List!22264 List!22264) Bool)

(assert (=> b!2024925 (= res!887768 (sepAndNonSepRulesDisjointChars!1084 rules!3198 rules!3198))))

(declare-fun tp!602612 () Bool)

(declare-fun b!2024926 () Bool)

(assert (=> b!2024926 (= e!1279077 (and (inv!21 (value!125192 (h!27584 tokens!598))) e!1279075 tp!602612))))

(assert (=> b!2024927 (= e!1279076 (and tp!602610 tp!602600))))

(declare-fun b!2024928 () Bool)

(declare-fun res!887763 () Bool)

(assert (=> b!2024928 (=> (not res!887763) (not e!1279095))))

(declare-fun rulesProduceEachTokenIndividuallyList!1330 (LexerInterface!3599 List!22264 List!22265) Bool)

(assert (=> b!2024928 (= res!887763 (rulesProduceEachTokenIndividuallyList!1330 thiss!23328 rules!3198 tokens!598))))

(assert (= (and start!199068 res!887757) b!2024903))

(assert (= (and b!2024903 res!887766) b!2024912))

(assert (= (and b!2024912 res!887761) b!2024928))

(assert (= (and b!2024928 res!887763) b!2024906))

(assert (= (and b!2024906 res!887753) b!2024921))

(assert (= (and b!2024921 res!887762) b!2024902))

(assert (= (and b!2024902 res!887774) b!2024925))

(assert (= (and b!2024925 res!887768) b!2024918))

(assert (= (and b!2024918 res!887759) b!2024904))

(assert (= (and b!2024904 res!887775) b!2024914))

(assert (= (and b!2024914 res!887756) b!2024895))

(assert (= (and b!2024904 res!887764) b!2024919))

(assert (= (and b!2024919 res!887772) b!2024897))

(assert (= (and b!2024904 (not res!887765)) b!2024907))

(assert (= (and b!2024907 c!327645) b!2024894))

(assert (= (and b!2024907 (not c!327645)) b!2024922))

(assert (= (and b!2024894 res!887773) b!2024908))

(assert (= (and b!2024907 (not res!887760)) b!2024896))

(assert (= (and b!2024896 (not res!887767)) b!2024916))

(assert (= (and b!2024916 (not res!887754)) b!2024905))

(assert (= (and b!2024905 (not res!887755)) b!2024924))

(assert (= (and b!2024924 (not res!887770)) b!2024909))

(assert (= (and b!2024909 (not res!887771)) b!2024917))

(assert (= (and b!2024917 (not res!887769)) b!2024920))

(assert (= (and b!2024920 (not res!887758)) b!2024915))

(assert (= b!2024899 b!2024898))

(assert (= b!2024911 b!2024899))

(assert (= (and start!199068 ((_ is Cons!22182) rules!3198)) b!2024911))

(assert (= b!2024913 b!2024927))

(assert (= b!2024926 b!2024913))

(assert (= b!2024900 b!2024926))

(assert (= (and start!199068 ((_ is Cons!22183) tokens!598)) b!2024900))

(assert (= b!2024923 b!2024910))

(assert (= b!2024901 b!2024923))

(assert (= start!199068 b!2024901))

(declare-fun m!2463407 () Bool)

(assert (=> b!2024896 m!2463407))

(declare-fun m!2463409 () Bool)

(assert (=> b!2024925 m!2463409))

(declare-fun m!2463411 () Bool)

(assert (=> b!2024917 m!2463411))

(declare-fun m!2463413 () Bool)

(assert (=> b!2024923 m!2463413))

(declare-fun m!2463415 () Bool)

(assert (=> b!2024923 m!2463415))

(declare-fun m!2463417 () Bool)

(assert (=> b!2024906 m!2463417))

(declare-fun m!2463419 () Bool)

(assert (=> b!2024928 m!2463419))

(declare-fun m!2463421 () Bool)

(assert (=> b!2024919 m!2463421))

(declare-fun m!2463423 () Bool)

(assert (=> b!2024919 m!2463423))

(declare-fun m!2463425 () Bool)

(assert (=> b!2024920 m!2463425))

(declare-fun m!2463427 () Bool)

(assert (=> b!2024920 m!2463427))

(declare-fun m!2463429 () Bool)

(assert (=> b!2024920 m!2463429))

(declare-fun m!2463431 () Bool)

(assert (=> b!2024907 m!2463431))

(declare-fun m!2463433 () Bool)

(assert (=> b!2024907 m!2463433))

(declare-fun m!2463435 () Bool)

(assert (=> b!2024907 m!2463435))

(declare-fun m!2463437 () Bool)

(assert (=> b!2024907 m!2463437))

(declare-fun m!2463439 () Bool)

(assert (=> b!2024907 m!2463439))

(declare-fun m!2463441 () Bool)

(assert (=> b!2024907 m!2463441))

(assert (=> b!2024907 m!2463435))

(declare-fun m!2463443 () Bool)

(assert (=> b!2024907 m!2463443))

(declare-fun m!2463445 () Bool)

(assert (=> b!2024907 m!2463445))

(declare-fun m!2463447 () Bool)

(assert (=> b!2024907 m!2463447))

(declare-fun m!2463449 () Bool)

(assert (=> b!2024907 m!2463449))

(declare-fun m!2463451 () Bool)

(assert (=> b!2024907 m!2463451))

(declare-fun m!2463453 () Bool)

(assert (=> b!2024907 m!2463453))

(declare-fun m!2463455 () Bool)

(assert (=> b!2024907 m!2463455))

(declare-fun m!2463457 () Bool)

(assert (=> b!2024907 m!2463457))

(assert (=> b!2024907 m!2463451))

(declare-fun m!2463459 () Bool)

(assert (=> b!2024907 m!2463459))

(declare-fun m!2463461 () Bool)

(assert (=> b!2024907 m!2463461))

(declare-fun m!2463463 () Bool)

(assert (=> b!2024926 m!2463463))

(declare-fun m!2463465 () Bool)

(assert (=> b!2024902 m!2463465))

(declare-fun m!2463467 () Bool)

(assert (=> b!2024905 m!2463467))

(declare-fun m!2463469 () Bool)

(assert (=> b!2024899 m!2463469))

(declare-fun m!2463471 () Bool)

(assert (=> b!2024899 m!2463471))

(declare-fun m!2463473 () Bool)

(assert (=> b!2024916 m!2463473))

(assert (=> b!2024916 m!2463473))

(declare-fun m!2463475 () Bool)

(assert (=> b!2024916 m!2463475))

(declare-fun m!2463477 () Bool)

(assert (=> b!2024916 m!2463477))

(declare-fun m!2463479 () Bool)

(assert (=> b!2024915 m!2463479))

(declare-fun m!2463481 () Bool)

(assert (=> b!2024903 m!2463481))

(declare-fun m!2463483 () Bool)

(assert (=> b!2024912 m!2463483))

(declare-fun m!2463485 () Bool)

(assert (=> start!199068 m!2463485))

(declare-fun m!2463487 () Bool)

(assert (=> b!2024904 m!2463487))

(declare-fun m!2463489 () Bool)

(assert (=> b!2024904 m!2463489))

(declare-fun m!2463491 () Bool)

(assert (=> b!2024904 m!2463491))

(declare-fun m!2463493 () Bool)

(assert (=> b!2024904 m!2463493))

(declare-fun m!2463495 () Bool)

(assert (=> b!2024904 m!2463495))

(declare-fun m!2463497 () Bool)

(assert (=> b!2024904 m!2463497))

(declare-fun m!2463499 () Bool)

(assert (=> b!2024904 m!2463499))

(declare-fun m!2463501 () Bool)

(assert (=> b!2024904 m!2463501))

(declare-fun m!2463503 () Bool)

(assert (=> b!2024904 m!2463503))

(declare-fun m!2463505 () Bool)

(assert (=> b!2024904 m!2463505))

(assert (=> b!2024904 m!2463501))

(declare-fun m!2463507 () Bool)

(assert (=> b!2024904 m!2463507))

(assert (=> b!2024904 m!2463491))

(declare-fun m!2463509 () Bool)

(assert (=> b!2024904 m!2463509))

(declare-fun m!2463511 () Bool)

(assert (=> b!2024904 m!2463511))

(assert (=> b!2024904 m!2463487))

(declare-fun m!2463513 () Bool)

(assert (=> b!2024904 m!2463513))

(declare-fun m!2463515 () Bool)

(assert (=> b!2024904 m!2463515))

(declare-fun m!2463517 () Bool)

(assert (=> b!2024904 m!2463517))

(declare-fun m!2463519 () Bool)

(assert (=> b!2024904 m!2463519))

(declare-fun m!2463521 () Bool)

(assert (=> b!2024904 m!2463521))

(declare-fun m!2463523 () Bool)

(assert (=> b!2024904 m!2463523))

(declare-fun m!2463525 () Bool)

(assert (=> b!2024914 m!2463525))

(declare-fun m!2463527 () Bool)

(assert (=> b!2024914 m!2463527))

(declare-fun m!2463529 () Bool)

(assert (=> b!2024913 m!2463529))

(declare-fun m!2463531 () Bool)

(assert (=> b!2024913 m!2463531))

(declare-fun m!2463533 () Bool)

(assert (=> b!2024894 m!2463533))

(declare-fun m!2463535 () Bool)

(assert (=> b!2024894 m!2463535))

(declare-fun m!2463537 () Bool)

(assert (=> b!2024901 m!2463537))

(declare-fun m!2463539 () Bool)

(assert (=> b!2024924 m!2463539))

(declare-fun m!2463541 () Bool)

(assert (=> b!2024900 m!2463541))

(check-sat (not b!2024903) (not b!2024907) (not b!2024912) (not b!2024926) (not b!2024924) (not b!2024896) (not b!2024901) b_and!161011 (not b!2024920) b_and!161007 (not b!2024913) (not b_next!57187) (not b!2024902) (not b!2024914) (not b!2024900) (not b!2024899) b_and!161001 (not start!199068) (not b!2024919) b_and!161003 (not b_next!57179) (not b!2024906) (not b!2024917) (not b!2024923) (not b!2024925) (not b!2024904) (not b!2024905) b_and!161005 (not b!2024916) (not b_next!57177) (not b!2024911) b_and!161009 (not b_next!57183) (not b!2024928) (not b_next!57181) (not b!2024915) (not b!2024894) (not b_next!57185))
(check-sat (not b_next!57187) b_and!161001 b_and!161011 b_and!161005 (not b_next!57183) b_and!161007 b_and!161003 (not b_next!57179) (not b_next!57177) b_and!161009 (not b_next!57181) (not b_next!57185))
(get-model)

(declare-fun d!619372 () Bool)

(declare-fun lt!760436 () Bool)

(declare-fun e!1279142 () Bool)

(assert (=> d!619372 (= lt!760436 e!1279142)))

(declare-fun res!887829 () Bool)

(assert (=> d!619372 (=> (not res!887829) (not e!1279142))))

(declare-fun list!9051 (BalanceConc!14654) List!22265)

(assert (=> d!619372 (= res!887829 (= (list!9051 (_1!11898 (lex!1615 thiss!23328 rules!3198 (print!1561 thiss!23328 (singletonSeq!1962 separatorToken!354))))) (list!9051 (singletonSeq!1962 separatorToken!354))))))

(declare-fun e!1279143 () Bool)

(assert (=> d!619372 (= lt!760436 e!1279143)))

(declare-fun res!887830 () Bool)

(assert (=> d!619372 (=> (not res!887830) (not e!1279143))))

(declare-fun lt!760437 () tuple2!20858)

(declare-fun size!17327 (BalanceConc!14654) Int)

(assert (=> d!619372 (= res!887830 (= (size!17327 (_1!11898 lt!760437)) 1))))

(assert (=> d!619372 (= lt!760437 (lex!1615 thiss!23328 rules!3198 (print!1561 thiss!23328 (singletonSeq!1962 separatorToken!354))))))

(assert (=> d!619372 (not (isEmpty!13808 rules!3198))))

(assert (=> d!619372 (= (rulesProduceIndividualToken!1771 thiss!23328 rules!3198 separatorToken!354) lt!760436)))

(declare-fun b!2024989 () Bool)

(declare-fun res!887831 () Bool)

(assert (=> b!2024989 (=> (not res!887831) (not e!1279143))))

(declare-fun apply!5829 (BalanceConc!14654 Int) Token!7524)

(assert (=> b!2024989 (= res!887831 (= (apply!5829 (_1!11898 lt!760437) 0) separatorToken!354))))

(declare-fun b!2024990 () Bool)

(declare-fun isEmpty!13812 (BalanceConc!14652) Bool)

(assert (=> b!2024990 (= e!1279143 (isEmpty!13812 (_2!11898 lt!760437)))))

(declare-fun b!2024991 () Bool)

(assert (=> b!2024991 (= e!1279142 (isEmpty!13812 (_2!11898 (lex!1615 thiss!23328 rules!3198 (print!1561 thiss!23328 (singletonSeq!1962 separatorToken!354))))))))

(assert (= (and d!619372 res!887830) b!2024989))

(assert (= (and b!2024989 res!887831) b!2024990))

(assert (= (and d!619372 res!887829) b!2024991))

(declare-fun m!2463613 () Bool)

(assert (=> d!619372 m!2463613))

(assert (=> d!619372 m!2463613))

(declare-fun m!2463615 () Bool)

(assert (=> d!619372 m!2463615))

(declare-fun m!2463617 () Bool)

(assert (=> d!619372 m!2463617))

(assert (=> d!619372 m!2463613))

(declare-fun m!2463619 () Bool)

(assert (=> d!619372 m!2463619))

(assert (=> d!619372 m!2463615))

(declare-fun m!2463621 () Bool)

(assert (=> d!619372 m!2463621))

(assert (=> d!619372 m!2463481))

(declare-fun m!2463623 () Bool)

(assert (=> d!619372 m!2463623))

(declare-fun m!2463625 () Bool)

(assert (=> b!2024989 m!2463625))

(declare-fun m!2463627 () Bool)

(assert (=> b!2024990 m!2463627))

(assert (=> b!2024991 m!2463613))

(assert (=> b!2024991 m!2463613))

(assert (=> b!2024991 m!2463615))

(assert (=> b!2024991 m!2463615))

(assert (=> b!2024991 m!2463621))

(declare-fun m!2463629 () Bool)

(assert (=> b!2024991 m!2463629))

(assert (=> b!2024906 d!619372))

(declare-fun d!619386 () Bool)

(declare-fun lt!760440 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3267 (List!22264) (InoxSet Rule!7772))

(assert (=> d!619386 (= lt!760440 (select (content!3267 rules!3198) (rule!6215 (h!27584 tokens!598))))))

(declare-fun e!1279149 () Bool)

(assert (=> d!619386 (= lt!760440 e!1279149)))

(declare-fun res!887837 () Bool)

(assert (=> d!619386 (=> (not res!887837) (not e!1279149))))

(assert (=> d!619386 (= res!887837 ((_ is Cons!22182) rules!3198))))

(assert (=> d!619386 (= (contains!4087 rules!3198 (rule!6215 (h!27584 tokens!598))) lt!760440)))

(declare-fun b!2024996 () Bool)

(declare-fun e!1279148 () Bool)

(assert (=> b!2024996 (= e!1279149 e!1279148)))

(declare-fun res!887836 () Bool)

(assert (=> b!2024996 (=> res!887836 e!1279148)))

(assert (=> b!2024996 (= res!887836 (= (h!27583 rules!3198) (rule!6215 (h!27584 tokens!598))))))

(declare-fun b!2024997 () Bool)

(assert (=> b!2024997 (= e!1279148 (contains!4087 (t!189763 rules!3198) (rule!6215 (h!27584 tokens!598))))))

(assert (= (and d!619386 res!887837) b!2024996))

(assert (= (and b!2024996 (not res!887836)) b!2024997))

(declare-fun m!2463631 () Bool)

(assert (=> d!619386 m!2463631))

(declare-fun m!2463633 () Bool)

(assert (=> d!619386 m!2463633))

(declare-fun m!2463635 () Bool)

(assert (=> b!2024997 m!2463635))

(assert (=> b!2024905 d!619386))

(declare-fun d!619388 () Bool)

(assert (=> d!619388 (not (contains!4088 (usedCharacters!424 (regex!3986 (rule!6215 (h!27584 tokens!598)))) lt!760398))))

(declare-fun lt!760443 () Unit!36827)

(declare-fun choose!12333 (LexerInterface!3599 List!22264 List!22264 Rule!7772 Rule!7772 C!10968) Unit!36827)

(assert (=> d!619388 (= lt!760443 (choose!12333 thiss!23328 rules!3198 rules!3198 (rule!6215 (h!27584 tokens!598)) (rule!6215 separatorToken!354) lt!760398))))

(assert (=> d!619388 (rulesInvariant!3206 thiss!23328 rules!3198)))

(assert (=> d!619388 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!96 thiss!23328 rules!3198 rules!3198 (rule!6215 (h!27584 tokens!598)) (rule!6215 separatorToken!354) lt!760398) lt!760443)))

(declare-fun bs!420657 () Bool)

(assert (= bs!420657 d!619388))

(assert (=> bs!420657 m!2463435))

(assert (=> bs!420657 m!2463435))

(assert (=> bs!420657 m!2463437))

(declare-fun m!2463637 () Bool)

(assert (=> bs!420657 m!2463637))

(assert (=> bs!420657 m!2463483))

(assert (=> b!2024907 d!619388))

(declare-fun d!619390 () Bool)

(declare-fun c!327658 () Bool)

(assert (=> d!619390 (= c!327658 ((_ is Cons!22183) (Cons!22183 (h!27584 tokens!598) Nil!22183)))))

(declare-fun e!1279152 () List!22263)

(assert (=> d!619390 (= (printList!1118 thiss!23328 (Cons!22183 (h!27584 tokens!598) Nil!22183)) e!1279152)))

(declare-fun b!2025002 () Bool)

(assert (=> b!2025002 (= e!1279152 (++!5993 (list!9049 (charsOf!2526 (h!27584 (Cons!22183 (h!27584 tokens!598) Nil!22183)))) (printList!1118 thiss!23328 (t!189764 (Cons!22183 (h!27584 tokens!598) Nil!22183)))))))

(declare-fun b!2025003 () Bool)

(assert (=> b!2025003 (= e!1279152 Nil!22181)))

(assert (= (and d!619390 c!327658) b!2025002))

(assert (= (and d!619390 (not c!327658)) b!2025003))

(declare-fun m!2463639 () Bool)

(assert (=> b!2025002 m!2463639))

(assert (=> b!2025002 m!2463639))

(declare-fun m!2463641 () Bool)

(assert (=> b!2025002 m!2463641))

(declare-fun m!2463643 () Bool)

(assert (=> b!2025002 m!2463643))

(assert (=> b!2025002 m!2463641))

(assert (=> b!2025002 m!2463643))

(declare-fun m!2463645 () Bool)

(assert (=> b!2025002 m!2463645))

(assert (=> b!2024907 d!619390))

(declare-fun b!2025012 () Bool)

(declare-fun e!1279157 () List!22263)

(assert (=> b!2025012 (= e!1279157 lt!760413)))

(declare-fun d!619392 () Bool)

(declare-fun e!1279158 () Bool)

(assert (=> d!619392 e!1279158))

(declare-fun res!887843 () Bool)

(assert (=> d!619392 (=> (not res!887843) (not e!1279158))))

(declare-fun lt!760446 () List!22263)

(declare-fun content!3268 (List!22263) (InoxSet C!10968))

(assert (=> d!619392 (= res!887843 (= (content!3268 lt!760446) ((_ map or) (content!3268 lt!760418) (content!3268 lt!760413))))))

(assert (=> d!619392 (= lt!760446 e!1279157)))

(declare-fun c!327661 () Bool)

(assert (=> d!619392 (= c!327661 ((_ is Nil!22181) lt!760418))))

(assert (=> d!619392 (= (++!5993 lt!760418 lt!760413) lt!760446)))

(declare-fun b!2025015 () Bool)

(assert (=> b!2025015 (= e!1279158 (or (not (= lt!760413 Nil!22181)) (= lt!760446 lt!760418)))))

(declare-fun b!2025013 () Bool)

(assert (=> b!2025013 (= e!1279157 (Cons!22181 (h!27582 lt!760418) (++!5993 (t!189762 lt!760418) lt!760413)))))

(declare-fun b!2025014 () Bool)

(declare-fun res!887842 () Bool)

(assert (=> b!2025014 (=> (not res!887842) (not e!1279158))))

(declare-fun size!17328 (List!22263) Int)

(assert (=> b!2025014 (= res!887842 (= (size!17328 lt!760446) (+ (size!17328 lt!760418) (size!17328 lt!760413))))))

(assert (= (and d!619392 c!327661) b!2025012))

(assert (= (and d!619392 (not c!327661)) b!2025013))

(assert (= (and d!619392 res!887843) b!2025014))

(assert (= (and b!2025014 res!887842) b!2025015))

(declare-fun m!2463647 () Bool)

(assert (=> d!619392 m!2463647))

(declare-fun m!2463649 () Bool)

(assert (=> d!619392 m!2463649))

(declare-fun m!2463651 () Bool)

(assert (=> d!619392 m!2463651))

(declare-fun m!2463653 () Bool)

(assert (=> b!2025013 m!2463653))

(declare-fun m!2463655 () Bool)

(assert (=> b!2025014 m!2463655))

(declare-fun m!2463657 () Bool)

(assert (=> b!2025014 m!2463657))

(declare-fun m!2463659 () Bool)

(assert (=> b!2025014 m!2463659))

(assert (=> b!2024907 d!619392))

(declare-fun d!619394 () Bool)

(assert (=> d!619394 (= (head!4572 lt!760409) (h!27582 lt!760409))))

(assert (=> b!2024907 d!619394))

(declare-fun b!2025032 () Bool)

(declare-fun e!1279169 () List!22263)

(assert (=> b!2025032 (= e!1279169 Nil!22181)))

(declare-fun bm!124174 () Bool)

(declare-fun call!124182 () List!22263)

(declare-fun c!327670 () Bool)

(assert (=> bm!124174 (= call!124182 (usedCharacters!424 (ite c!327670 (regTwo!11335 (regex!3986 (rule!6215 separatorToken!354))) (regOne!11334 (regex!3986 (rule!6215 separatorToken!354))))))))

(declare-fun b!2025034 () Bool)

(declare-fun e!1279168 () List!22263)

(declare-fun e!1279170 () List!22263)

(assert (=> b!2025034 (= e!1279168 e!1279170)))

(assert (=> b!2025034 (= c!327670 ((_ is Union!5411) (regex!3986 (rule!6215 separatorToken!354))))))

(declare-fun c!327673 () Bool)

(declare-fun call!124180 () List!22263)

(declare-fun bm!124175 () Bool)

(assert (=> bm!124175 (= call!124180 (usedCharacters!424 (ite c!327673 (reg!5740 (regex!3986 (rule!6215 separatorToken!354))) (ite c!327670 (regOne!11335 (regex!3986 (rule!6215 separatorToken!354))) (regTwo!11334 (regex!3986 (rule!6215 separatorToken!354)))))))))

(declare-fun bm!124176 () Bool)

(declare-fun call!124181 () List!22263)

(assert (=> bm!124176 (= call!124181 call!124180)))

(declare-fun bm!124177 () Bool)

(declare-fun call!124179 () List!22263)

(assert (=> bm!124177 (= call!124179 (++!5993 (ite c!327670 call!124181 call!124182) (ite c!327670 call!124182 call!124181)))))

(declare-fun d!619396 () Bool)

(declare-fun c!327672 () Bool)

(assert (=> d!619396 (= c!327672 (or ((_ is EmptyExpr!5411) (regex!3986 (rule!6215 separatorToken!354))) ((_ is EmptyLang!5411) (regex!3986 (rule!6215 separatorToken!354)))))))

(assert (=> d!619396 (= (usedCharacters!424 (regex!3986 (rule!6215 separatorToken!354))) e!1279169)))

(declare-fun b!2025033 () Bool)

(assert (=> b!2025033 (= c!327673 ((_ is Star!5411) (regex!3986 (rule!6215 separatorToken!354))))))

(declare-fun e!1279167 () List!22263)

(assert (=> b!2025033 (= e!1279167 e!1279168)))

(declare-fun b!2025035 () Bool)

(assert (=> b!2025035 (= e!1279170 call!124179)))

(declare-fun b!2025036 () Bool)

(assert (=> b!2025036 (= e!1279170 call!124179)))

(declare-fun b!2025037 () Bool)

(assert (=> b!2025037 (= e!1279169 e!1279167)))

(declare-fun c!327671 () Bool)

(assert (=> b!2025037 (= c!327671 ((_ is ElementMatch!5411) (regex!3986 (rule!6215 separatorToken!354))))))

(declare-fun b!2025038 () Bool)

(assert (=> b!2025038 (= e!1279167 (Cons!22181 (c!327646 (regex!3986 (rule!6215 separatorToken!354))) Nil!22181))))

(declare-fun b!2025039 () Bool)

(assert (=> b!2025039 (= e!1279168 call!124180)))

(assert (= (and d!619396 c!327672) b!2025032))

(assert (= (and d!619396 (not c!327672)) b!2025037))

(assert (= (and b!2025037 c!327671) b!2025038))

(assert (= (and b!2025037 (not c!327671)) b!2025033))

(assert (= (and b!2025033 c!327673) b!2025039))

(assert (= (and b!2025033 (not c!327673)) b!2025034))

(assert (= (and b!2025034 c!327670) b!2025036))

(assert (= (and b!2025034 (not c!327670)) b!2025035))

(assert (= (or b!2025036 b!2025035) bm!124176))

(assert (= (or b!2025036 b!2025035) bm!124174))

(assert (= (or b!2025036 b!2025035) bm!124177))

(assert (= (or b!2025039 bm!124176) bm!124175))

(declare-fun m!2463661 () Bool)

(assert (=> bm!124174 m!2463661))

(declare-fun m!2463663 () Bool)

(assert (=> bm!124175 m!2463663))

(declare-fun m!2463665 () Bool)

(assert (=> bm!124177 m!2463665))

(assert (=> b!2024907 d!619396))

(declare-fun b!2025040 () Bool)

(declare-fun e!1279171 () List!22263)

(assert (=> b!2025040 (= e!1279171 lt!760413)))

(declare-fun d!619398 () Bool)

(declare-fun e!1279172 () Bool)

(assert (=> d!619398 e!1279172))

(declare-fun res!887845 () Bool)

(assert (=> d!619398 (=> (not res!887845) (not e!1279172))))

(declare-fun lt!760447 () List!22263)

(assert (=> d!619398 (= res!887845 (= (content!3268 lt!760447) ((_ map or) (content!3268 lt!760409) (content!3268 lt!760413))))))

(assert (=> d!619398 (= lt!760447 e!1279171)))

(declare-fun c!327674 () Bool)

(assert (=> d!619398 (= c!327674 ((_ is Nil!22181) lt!760409))))

(assert (=> d!619398 (= (++!5993 lt!760409 lt!760413) lt!760447)))

(declare-fun b!2025043 () Bool)

(assert (=> b!2025043 (= e!1279172 (or (not (= lt!760413 Nil!22181)) (= lt!760447 lt!760409)))))

(declare-fun b!2025041 () Bool)

(assert (=> b!2025041 (= e!1279171 (Cons!22181 (h!27582 lt!760409) (++!5993 (t!189762 lt!760409) lt!760413)))))

(declare-fun b!2025042 () Bool)

(declare-fun res!887844 () Bool)

(assert (=> b!2025042 (=> (not res!887844) (not e!1279172))))

(assert (=> b!2025042 (= res!887844 (= (size!17328 lt!760447) (+ (size!17328 lt!760409) (size!17328 lt!760413))))))

(assert (= (and d!619398 c!327674) b!2025040))

(assert (= (and d!619398 (not c!327674)) b!2025041))

(assert (= (and d!619398 res!887845) b!2025042))

(assert (= (and b!2025042 res!887844) b!2025043))

(declare-fun m!2463667 () Bool)

(assert (=> d!619398 m!2463667))

(declare-fun m!2463669 () Bool)

(assert (=> d!619398 m!2463669))

(assert (=> d!619398 m!2463651))

(declare-fun m!2463671 () Bool)

(assert (=> b!2025041 m!2463671))

(declare-fun m!2463673 () Bool)

(assert (=> b!2025042 m!2463673))

(declare-fun m!2463675 () Bool)

(assert (=> b!2025042 m!2463675))

(assert (=> b!2025042 m!2463659))

(assert (=> b!2024907 d!619398))

(declare-fun d!619400 () Bool)

(assert (=> d!619400 (= (++!5993 (++!5993 lt!760414 lt!760409) lt!760413) (++!5993 lt!760414 (++!5993 lt!760409 lt!760413)))))

(declare-fun lt!760450 () Unit!36827)

(declare-fun choose!12334 (List!22263 List!22263 List!22263) Unit!36827)

(assert (=> d!619400 (= lt!760450 (choose!12334 lt!760414 lt!760409 lt!760413))))

(assert (=> d!619400 (= (lemmaConcatAssociativity!1251 lt!760414 lt!760409 lt!760413) lt!760450)))

(declare-fun bs!420658 () Bool)

(assert (= bs!420658 d!619400))

(assert (=> bs!420658 m!2463439))

(assert (=> bs!420658 m!2463441))

(declare-fun m!2463677 () Bool)

(assert (=> bs!420658 m!2463677))

(declare-fun m!2463679 () Bool)

(assert (=> bs!420658 m!2463679))

(assert (=> bs!420658 m!2463439))

(declare-fun m!2463681 () Bool)

(assert (=> bs!420658 m!2463681))

(assert (=> bs!420658 m!2463441))

(assert (=> b!2024907 d!619400))

(declare-fun d!619402 () Bool)

(declare-fun lt!760453 () Bool)

(assert (=> d!619402 (= lt!760453 (select (content!3268 (usedCharacters!424 (regex!3986 (rule!6215 separatorToken!354)))) lt!760398))))

(declare-fun e!1279178 () Bool)

(assert (=> d!619402 (= lt!760453 e!1279178)))

(declare-fun res!887851 () Bool)

(assert (=> d!619402 (=> (not res!887851) (not e!1279178))))

(assert (=> d!619402 (= res!887851 ((_ is Cons!22181) (usedCharacters!424 (regex!3986 (rule!6215 separatorToken!354)))))))

(assert (=> d!619402 (= (contains!4088 (usedCharacters!424 (regex!3986 (rule!6215 separatorToken!354))) lt!760398) lt!760453)))

(declare-fun b!2025048 () Bool)

(declare-fun e!1279177 () Bool)

(assert (=> b!2025048 (= e!1279178 e!1279177)))

(declare-fun res!887850 () Bool)

(assert (=> b!2025048 (=> res!887850 e!1279177)))

(assert (=> b!2025048 (= res!887850 (= (h!27582 (usedCharacters!424 (regex!3986 (rule!6215 separatorToken!354)))) lt!760398))))

(declare-fun b!2025049 () Bool)

(assert (=> b!2025049 (= e!1279177 (contains!4088 (t!189762 (usedCharacters!424 (regex!3986 (rule!6215 separatorToken!354)))) lt!760398))))

(assert (= (and d!619402 res!887851) b!2025048))

(assert (= (and b!2025048 (not res!887850)) b!2025049))

(assert (=> d!619402 m!2463451))

(declare-fun m!2463683 () Bool)

(assert (=> d!619402 m!2463683))

(declare-fun m!2463685 () Bool)

(assert (=> d!619402 m!2463685))

(declare-fun m!2463687 () Bool)

(assert (=> b!2025049 m!2463687))

(assert (=> b!2024907 d!619402))

(declare-fun d!619404 () Bool)

(declare-fun lt!760456 () BalanceConc!14652)

(assert (=> d!619404 (= (list!9049 lt!760456) (printList!1118 thiss!23328 (list!9051 lt!760396)))))

(assert (=> d!619404 (= lt!760456 (printTailRec!1067 thiss!23328 lt!760396 0 (BalanceConc!14653 Empty!7418)))))

(assert (=> d!619404 (= (print!1561 thiss!23328 lt!760396) lt!760456)))

(declare-fun bs!420659 () Bool)

(assert (= bs!420659 d!619404))

(declare-fun m!2463689 () Bool)

(assert (=> bs!420659 m!2463689))

(declare-fun m!2463691 () Bool)

(assert (=> bs!420659 m!2463691))

(assert (=> bs!420659 m!2463691))

(declare-fun m!2463693 () Bool)

(assert (=> bs!420659 m!2463693))

(assert (=> bs!420659 m!2463453))

(assert (=> b!2024907 d!619404))

(declare-fun d!619406 () Bool)

(declare-fun list!9053 (Conc!7418) List!22263)

(assert (=> d!619406 (= (list!9049 lt!760408) (list!9053 (c!327647 lt!760408)))))

(declare-fun bs!420660 () Bool)

(assert (= bs!420660 d!619406))

(declare-fun m!2463695 () Bool)

(assert (=> bs!420660 m!2463695))

(assert (=> b!2024907 d!619406))

(declare-fun b!2025050 () Bool)

(declare-fun e!1279181 () List!22263)

(assert (=> b!2025050 (= e!1279181 Nil!22181)))

(declare-fun bm!124178 () Bool)

(declare-fun call!124186 () List!22263)

(declare-fun c!327675 () Bool)

(assert (=> bm!124178 (= call!124186 (usedCharacters!424 (ite c!327675 (regTwo!11335 (regex!3986 (rule!6215 (h!27584 tokens!598)))) (regOne!11334 (regex!3986 (rule!6215 (h!27584 tokens!598)))))))))

(declare-fun b!2025052 () Bool)

(declare-fun e!1279180 () List!22263)

(declare-fun e!1279182 () List!22263)

(assert (=> b!2025052 (= e!1279180 e!1279182)))

(assert (=> b!2025052 (= c!327675 ((_ is Union!5411) (regex!3986 (rule!6215 (h!27584 tokens!598)))))))

(declare-fun bm!124179 () Bool)

(declare-fun c!327678 () Bool)

(declare-fun call!124184 () List!22263)

(assert (=> bm!124179 (= call!124184 (usedCharacters!424 (ite c!327678 (reg!5740 (regex!3986 (rule!6215 (h!27584 tokens!598)))) (ite c!327675 (regOne!11335 (regex!3986 (rule!6215 (h!27584 tokens!598)))) (regTwo!11334 (regex!3986 (rule!6215 (h!27584 tokens!598))))))))))

(declare-fun bm!124180 () Bool)

(declare-fun call!124185 () List!22263)

(assert (=> bm!124180 (= call!124185 call!124184)))

(declare-fun call!124183 () List!22263)

(declare-fun bm!124181 () Bool)

(assert (=> bm!124181 (= call!124183 (++!5993 (ite c!327675 call!124185 call!124186) (ite c!327675 call!124186 call!124185)))))

(declare-fun d!619408 () Bool)

(declare-fun c!327677 () Bool)

(assert (=> d!619408 (= c!327677 (or ((_ is EmptyExpr!5411) (regex!3986 (rule!6215 (h!27584 tokens!598)))) ((_ is EmptyLang!5411) (regex!3986 (rule!6215 (h!27584 tokens!598))))))))

(assert (=> d!619408 (= (usedCharacters!424 (regex!3986 (rule!6215 (h!27584 tokens!598)))) e!1279181)))

(declare-fun b!2025051 () Bool)

(assert (=> b!2025051 (= c!327678 ((_ is Star!5411) (regex!3986 (rule!6215 (h!27584 tokens!598)))))))

(declare-fun e!1279179 () List!22263)

(assert (=> b!2025051 (= e!1279179 e!1279180)))

(declare-fun b!2025053 () Bool)

(assert (=> b!2025053 (= e!1279182 call!124183)))

(declare-fun b!2025054 () Bool)

(assert (=> b!2025054 (= e!1279182 call!124183)))

(declare-fun b!2025055 () Bool)

(assert (=> b!2025055 (= e!1279181 e!1279179)))

(declare-fun c!327676 () Bool)

(assert (=> b!2025055 (= c!327676 ((_ is ElementMatch!5411) (regex!3986 (rule!6215 (h!27584 tokens!598)))))))

(declare-fun b!2025056 () Bool)

(assert (=> b!2025056 (= e!1279179 (Cons!22181 (c!327646 (regex!3986 (rule!6215 (h!27584 tokens!598)))) Nil!22181))))

(declare-fun b!2025057 () Bool)

(assert (=> b!2025057 (= e!1279180 call!124184)))

(assert (= (and d!619408 c!327677) b!2025050))

(assert (= (and d!619408 (not c!327677)) b!2025055))

(assert (= (and b!2025055 c!327676) b!2025056))

(assert (= (and b!2025055 (not c!327676)) b!2025051))

(assert (= (and b!2025051 c!327678) b!2025057))

(assert (= (and b!2025051 (not c!327678)) b!2025052))

(assert (= (and b!2025052 c!327675) b!2025054))

(assert (= (and b!2025052 (not c!327675)) b!2025053))

(assert (= (or b!2025054 b!2025053) bm!124180))

(assert (= (or b!2025054 b!2025053) bm!124178))

(assert (= (or b!2025054 b!2025053) bm!124181))

(assert (= (or b!2025057 bm!124180) bm!124179))

(declare-fun m!2463697 () Bool)

(assert (=> bm!124178 m!2463697))

(declare-fun m!2463699 () Bool)

(assert (=> bm!124179 m!2463699))

(declare-fun m!2463701 () Bool)

(assert (=> bm!124181 m!2463701))

(assert (=> b!2024907 d!619408))

(declare-fun d!619410 () Bool)

(declare-fun e!1279185 () Bool)

(assert (=> d!619410 e!1279185))

(declare-fun res!887854 () Bool)

(assert (=> d!619410 (=> (not res!887854) (not e!1279185))))

(declare-fun lt!760459 () BalanceConc!14654)

(assert (=> d!619410 (= res!887854 (= (list!9051 lt!760459) (Cons!22183 (h!27584 tokens!598) Nil!22183)))))

(declare-fun singleton!877 (Token!7524) BalanceConc!14654)

(assert (=> d!619410 (= lt!760459 (singleton!877 (h!27584 tokens!598)))))

(assert (=> d!619410 (= (singletonSeq!1962 (h!27584 tokens!598)) lt!760459)))

(declare-fun b!2025060 () Bool)

(declare-fun isBalanced!2308 (Conc!7419) Bool)

(assert (=> b!2025060 (= e!1279185 (isBalanced!2308 (c!327648 lt!760459)))))

(assert (= (and d!619410 res!887854) b!2025060))

(declare-fun m!2463703 () Bool)

(assert (=> d!619410 m!2463703))

(declare-fun m!2463705 () Bool)

(assert (=> d!619410 m!2463705))

(declare-fun m!2463707 () Bool)

(assert (=> b!2025060 m!2463707))

(assert (=> b!2024907 d!619410))

(declare-fun b!2025061 () Bool)

(declare-fun e!1279186 () List!22263)

(assert (=> b!2025061 (= e!1279186 lt!760409)))

(declare-fun d!619412 () Bool)

(declare-fun e!1279187 () Bool)

(assert (=> d!619412 e!1279187))

(declare-fun res!887856 () Bool)

(assert (=> d!619412 (=> (not res!887856) (not e!1279187))))

(declare-fun lt!760460 () List!22263)

(assert (=> d!619412 (= res!887856 (= (content!3268 lt!760460) ((_ map or) (content!3268 lt!760414) (content!3268 lt!760409))))))

(assert (=> d!619412 (= lt!760460 e!1279186)))

(declare-fun c!327679 () Bool)

(assert (=> d!619412 (= c!327679 ((_ is Nil!22181) lt!760414))))

(assert (=> d!619412 (= (++!5993 lt!760414 lt!760409) lt!760460)))

(declare-fun b!2025064 () Bool)

(assert (=> b!2025064 (= e!1279187 (or (not (= lt!760409 Nil!22181)) (= lt!760460 lt!760414)))))

(declare-fun b!2025062 () Bool)

(assert (=> b!2025062 (= e!1279186 (Cons!22181 (h!27582 lt!760414) (++!5993 (t!189762 lt!760414) lt!760409)))))

(declare-fun b!2025063 () Bool)

(declare-fun res!887855 () Bool)

(assert (=> b!2025063 (=> (not res!887855) (not e!1279187))))

(assert (=> b!2025063 (= res!887855 (= (size!17328 lt!760460) (+ (size!17328 lt!760414) (size!17328 lt!760409))))))

(assert (= (and d!619412 c!327679) b!2025061))

(assert (= (and d!619412 (not c!327679)) b!2025062))

(assert (= (and d!619412 res!887856) b!2025063))

(assert (= (and b!2025063 res!887855) b!2025064))

(declare-fun m!2463709 () Bool)

(assert (=> d!619412 m!2463709))

(declare-fun m!2463711 () Bool)

(assert (=> d!619412 m!2463711))

(assert (=> d!619412 m!2463669))

(declare-fun m!2463713 () Bool)

(assert (=> b!2025062 m!2463713))

(declare-fun m!2463715 () Bool)

(assert (=> b!2025063 m!2463715))

(declare-fun m!2463717 () Bool)

(assert (=> b!2025063 m!2463717))

(assert (=> b!2025063 m!2463675))

(assert (=> b!2024907 d!619412))

(declare-fun d!619414 () Bool)

(declare-fun lt!760461 () Bool)

(assert (=> d!619414 (= lt!760461 (select (content!3268 (usedCharacters!424 (regex!3986 (rule!6215 (h!27584 tokens!598))))) lt!760398))))

(declare-fun e!1279189 () Bool)

(assert (=> d!619414 (= lt!760461 e!1279189)))

(declare-fun res!887858 () Bool)

(assert (=> d!619414 (=> (not res!887858) (not e!1279189))))

(assert (=> d!619414 (= res!887858 ((_ is Cons!22181) (usedCharacters!424 (regex!3986 (rule!6215 (h!27584 tokens!598))))))))

(assert (=> d!619414 (= (contains!4088 (usedCharacters!424 (regex!3986 (rule!6215 (h!27584 tokens!598)))) lt!760398) lt!760461)))

(declare-fun b!2025065 () Bool)

(declare-fun e!1279188 () Bool)

(assert (=> b!2025065 (= e!1279189 e!1279188)))

(declare-fun res!887857 () Bool)

(assert (=> b!2025065 (=> res!887857 e!1279188)))

(assert (=> b!2025065 (= res!887857 (= (h!27582 (usedCharacters!424 (regex!3986 (rule!6215 (h!27584 tokens!598))))) lt!760398))))

(declare-fun b!2025066 () Bool)

(assert (=> b!2025066 (= e!1279188 (contains!4088 (t!189762 (usedCharacters!424 (regex!3986 (rule!6215 (h!27584 tokens!598))))) lt!760398))))

(assert (= (and d!619414 res!887858) b!2025065))

(assert (= (and b!2025065 (not res!887857)) b!2025066))

(assert (=> d!619414 m!2463435))

(declare-fun m!2463719 () Bool)

(assert (=> d!619414 m!2463719))

(declare-fun m!2463721 () Bool)

(assert (=> d!619414 m!2463721))

(declare-fun m!2463723 () Bool)

(assert (=> b!2025066 m!2463723))

(assert (=> b!2024907 d!619414))

(declare-fun b!2025067 () Bool)

(declare-fun e!1279190 () List!22263)

(assert (=> b!2025067 (= e!1279190 lt!760416)))

(declare-fun d!619416 () Bool)

(declare-fun e!1279191 () Bool)

(assert (=> d!619416 e!1279191))

(declare-fun res!887860 () Bool)

(assert (=> d!619416 (=> (not res!887860) (not e!1279191))))

(declare-fun lt!760462 () List!22263)

(assert (=> d!619416 (= res!887860 (= (content!3268 lt!760462) ((_ map or) (content!3268 lt!760414) (content!3268 lt!760416))))))

(assert (=> d!619416 (= lt!760462 e!1279190)))

(declare-fun c!327680 () Bool)

(assert (=> d!619416 (= c!327680 ((_ is Nil!22181) lt!760414))))

(assert (=> d!619416 (= (++!5993 lt!760414 lt!760416) lt!760462)))

(declare-fun b!2025070 () Bool)

(assert (=> b!2025070 (= e!1279191 (or (not (= lt!760416 Nil!22181)) (= lt!760462 lt!760414)))))

(declare-fun b!2025068 () Bool)

(assert (=> b!2025068 (= e!1279190 (Cons!22181 (h!27582 lt!760414) (++!5993 (t!189762 lt!760414) lt!760416)))))

(declare-fun b!2025069 () Bool)

(declare-fun res!887859 () Bool)

(assert (=> b!2025069 (=> (not res!887859) (not e!1279191))))

(assert (=> b!2025069 (= res!887859 (= (size!17328 lt!760462) (+ (size!17328 lt!760414) (size!17328 lt!760416))))))

(assert (= (and d!619416 c!327680) b!2025067))

(assert (= (and d!619416 (not c!327680)) b!2025068))

(assert (= (and d!619416 res!887860) b!2025069))

(assert (= (and b!2025069 res!887859) b!2025070))

(declare-fun m!2463725 () Bool)

(assert (=> d!619416 m!2463725))

(assert (=> d!619416 m!2463711))

(declare-fun m!2463727 () Bool)

(assert (=> d!619416 m!2463727))

(declare-fun m!2463729 () Bool)

(assert (=> b!2025068 m!2463729))

(declare-fun m!2463731 () Bool)

(assert (=> b!2025069 m!2463731))

(assert (=> b!2025069 m!2463717))

(declare-fun m!2463733 () Bool)

(assert (=> b!2025069 m!2463733))

(assert (=> b!2024907 d!619416))

(declare-fun d!619418 () Bool)

(declare-fun lt!760478 () BalanceConc!14652)

(declare-fun printListTailRec!482 (LexerInterface!3599 List!22265 List!22263) List!22263)

(declare-fun dropList!813 (BalanceConc!14654 Int) List!22265)

(assert (=> d!619418 (= (list!9049 lt!760478) (printListTailRec!482 thiss!23328 (dropList!813 lt!760396 0) (list!9049 (BalanceConc!14653 Empty!7418))))))

(declare-fun e!1279197 () BalanceConc!14652)

(assert (=> d!619418 (= lt!760478 e!1279197)))

(declare-fun c!327683 () Bool)

(assert (=> d!619418 (= c!327683 (>= 0 (size!17327 lt!760396)))))

(declare-fun e!1279196 () Bool)

(assert (=> d!619418 e!1279196))

(declare-fun res!887863 () Bool)

(assert (=> d!619418 (=> (not res!887863) (not e!1279196))))

(assert (=> d!619418 (= res!887863 (>= 0 0))))

(assert (=> d!619418 (= (printTailRec!1067 thiss!23328 lt!760396 0 (BalanceConc!14653 Empty!7418)) lt!760478)))

(declare-fun b!2025077 () Bool)

(assert (=> b!2025077 (= e!1279196 (<= 0 (size!17327 lt!760396)))))

(declare-fun b!2025078 () Bool)

(assert (=> b!2025078 (= e!1279197 (BalanceConc!14653 Empty!7418))))

(declare-fun b!2025079 () Bool)

(declare-fun ++!5994 (BalanceConc!14652 BalanceConc!14652) BalanceConc!14652)

(assert (=> b!2025079 (= e!1279197 (printTailRec!1067 thiss!23328 lt!760396 (+ 0 1) (++!5994 (BalanceConc!14653 Empty!7418) (charsOf!2526 (apply!5829 lt!760396 0)))))))

(declare-fun lt!760479 () List!22265)

(assert (=> b!2025079 (= lt!760479 (list!9051 lt!760396))))

(declare-fun lt!760477 () Unit!36827)

(declare-fun lemmaDropApply!737 (List!22265 Int) Unit!36827)

(assert (=> b!2025079 (= lt!760477 (lemmaDropApply!737 lt!760479 0))))

(declare-fun head!4573 (List!22265) Token!7524)

(declare-fun drop!1114 (List!22265 Int) List!22265)

(declare-fun apply!5831 (List!22265 Int) Token!7524)

(assert (=> b!2025079 (= (head!4573 (drop!1114 lt!760479 0)) (apply!5831 lt!760479 0))))

(declare-fun lt!760481 () Unit!36827)

(assert (=> b!2025079 (= lt!760481 lt!760477)))

(declare-fun lt!760483 () List!22265)

(assert (=> b!2025079 (= lt!760483 (list!9051 lt!760396))))

(declare-fun lt!760482 () Unit!36827)

(declare-fun lemmaDropTail!713 (List!22265 Int) Unit!36827)

(assert (=> b!2025079 (= lt!760482 (lemmaDropTail!713 lt!760483 0))))

(declare-fun tail!3047 (List!22265) List!22265)

(assert (=> b!2025079 (= (tail!3047 (drop!1114 lt!760483 0)) (drop!1114 lt!760483 (+ 0 1)))))

(declare-fun lt!760480 () Unit!36827)

(assert (=> b!2025079 (= lt!760480 lt!760482)))

(assert (= (and d!619418 res!887863) b!2025077))

(assert (= (and d!619418 c!327683) b!2025078))

(assert (= (and d!619418 (not c!327683)) b!2025079))

(declare-fun m!2463735 () Bool)

(assert (=> d!619418 m!2463735))

(declare-fun m!2463737 () Bool)

(assert (=> d!619418 m!2463737))

(declare-fun m!2463739 () Bool)

(assert (=> d!619418 m!2463739))

(assert (=> d!619418 m!2463735))

(declare-fun m!2463741 () Bool)

(assert (=> d!619418 m!2463741))

(assert (=> d!619418 m!2463739))

(declare-fun m!2463743 () Bool)

(assert (=> d!619418 m!2463743))

(assert (=> b!2025077 m!2463737))

(declare-fun m!2463745 () Bool)

(assert (=> b!2025079 m!2463745))

(declare-fun m!2463747 () Bool)

(assert (=> b!2025079 m!2463747))

(declare-fun m!2463749 () Bool)

(assert (=> b!2025079 m!2463749))

(declare-fun m!2463751 () Bool)

(assert (=> b!2025079 m!2463751))

(declare-fun m!2463753 () Bool)

(assert (=> b!2025079 m!2463753))

(assert (=> b!2025079 m!2463749))

(assert (=> b!2025079 m!2463751))

(declare-fun m!2463755 () Bool)

(assert (=> b!2025079 m!2463755))

(declare-fun m!2463757 () Bool)

(assert (=> b!2025079 m!2463757))

(assert (=> b!2025079 m!2463691))

(assert (=> b!2025079 m!2463753))

(declare-fun m!2463759 () Bool)

(assert (=> b!2025079 m!2463759))

(declare-fun m!2463761 () Bool)

(assert (=> b!2025079 m!2463761))

(assert (=> b!2025079 m!2463745))

(assert (=> b!2025079 m!2463755))

(declare-fun m!2463763 () Bool)

(assert (=> b!2025079 m!2463763))

(declare-fun m!2463765 () Bool)

(assert (=> b!2025079 m!2463765))

(declare-fun m!2463767 () Bool)

(assert (=> b!2025079 m!2463767))

(assert (=> b!2024907 d!619418))

(declare-fun bs!420666 () Bool)

(declare-fun d!619420 () Bool)

(assert (= bs!420666 (and d!619420 b!2024902)))

(declare-fun lambda!76405 () Int)

(assert (=> bs!420666 (not (= lambda!76405 lambda!76393))))

(declare-fun b!2025184 () Bool)

(declare-fun e!1279264 () Bool)

(assert (=> b!2025184 (= e!1279264 true)))

(declare-fun b!2025183 () Bool)

(declare-fun e!1279263 () Bool)

(assert (=> b!2025183 (= e!1279263 e!1279264)))

(declare-fun b!2025182 () Bool)

(declare-fun e!1279262 () Bool)

(assert (=> b!2025182 (= e!1279262 e!1279263)))

(assert (=> d!619420 e!1279262))

(assert (= b!2025183 b!2025184))

(assert (= b!2025182 b!2025183))

(assert (= (and d!619420 ((_ is Cons!22182) rules!3198)) b!2025182))

(declare-fun order!14167 () Int)

(declare-fun order!14169 () Int)

(declare-fun dynLambda!10996 (Int Int) Int)

(declare-fun dynLambda!10997 (Int Int) Int)

(assert (=> b!2025184 (< (dynLambda!10996 order!14167 (toValue!5659 (transformation!3986 (h!27583 rules!3198)))) (dynLambda!10997 order!14169 lambda!76405))))

(declare-fun order!14171 () Int)

(declare-fun dynLambda!10998 (Int Int) Int)

(assert (=> b!2025184 (< (dynLambda!10998 order!14171 (toChars!5518 (transformation!3986 (h!27583 rules!3198)))) (dynLambda!10997 order!14169 lambda!76405))))

(assert (=> d!619420 true))

(declare-fun lt!760527 () Bool)

(assert (=> d!619420 (= lt!760527 (forall!4718 tokens!598 lambda!76405))))

(declare-fun e!1279255 () Bool)

(assert (=> d!619420 (= lt!760527 e!1279255)))

(declare-fun res!887890 () Bool)

(assert (=> d!619420 (=> res!887890 e!1279255)))

(assert (=> d!619420 (= res!887890 (not ((_ is Cons!22183) tokens!598)))))

(assert (=> d!619420 (not (isEmpty!13808 rules!3198))))

(assert (=> d!619420 (= (rulesProduceEachTokenIndividuallyList!1330 thiss!23328 rules!3198 tokens!598) lt!760527)))

(declare-fun b!2025172 () Bool)

(declare-fun e!1279254 () Bool)

(assert (=> b!2025172 (= e!1279255 e!1279254)))

(declare-fun res!887891 () Bool)

(assert (=> b!2025172 (=> (not res!887891) (not e!1279254))))

(assert (=> b!2025172 (= res!887891 (rulesProduceIndividualToken!1771 thiss!23328 rules!3198 (h!27584 tokens!598)))))

(declare-fun b!2025173 () Bool)

(assert (=> b!2025173 (= e!1279254 (rulesProduceEachTokenIndividuallyList!1330 thiss!23328 rules!3198 (t!189764 tokens!598)))))

(assert (= (and d!619420 (not res!887890)) b!2025172))

(assert (= (and b!2025172 res!887891) b!2025173))

(declare-fun m!2463839 () Bool)

(assert (=> d!619420 m!2463839))

(assert (=> d!619420 m!2463481))

(assert (=> b!2025172 m!2463407))

(declare-fun m!2463841 () Bool)

(assert (=> b!2025173 m!2463841))

(assert (=> b!2024928 d!619420))

(declare-fun d!619440 () Bool)

(assert (=> d!619440 (= (isEmpty!13808 rules!3198) ((_ is Nil!22182) rules!3198))))

(assert (=> b!2024903 d!619440))

(declare-fun d!619442 () Bool)

(declare-fun lt!760528 () Bool)

(assert (=> d!619442 (= lt!760528 (select (content!3267 rules!3198) (rule!6215 separatorToken!354)))))

(declare-fun e!1279266 () Bool)

(assert (=> d!619442 (= lt!760528 e!1279266)))

(declare-fun res!887893 () Bool)

(assert (=> d!619442 (=> (not res!887893) (not e!1279266))))

(assert (=> d!619442 (= res!887893 ((_ is Cons!22182) rules!3198))))

(assert (=> d!619442 (= (contains!4087 rules!3198 (rule!6215 separatorToken!354)) lt!760528)))

(declare-fun b!2025187 () Bool)

(declare-fun e!1279265 () Bool)

(assert (=> b!2025187 (= e!1279266 e!1279265)))

(declare-fun res!887892 () Bool)

(assert (=> b!2025187 (=> res!887892 e!1279265)))

(assert (=> b!2025187 (= res!887892 (= (h!27583 rules!3198) (rule!6215 separatorToken!354)))))

(declare-fun b!2025188 () Bool)

(assert (=> b!2025188 (= e!1279265 (contains!4087 (t!189763 rules!3198) (rule!6215 separatorToken!354)))))

(assert (= (and d!619442 res!887893) b!2025187))

(assert (= (and b!2025187 (not res!887892)) b!2025188))

(assert (=> d!619442 m!2463631))

(declare-fun m!2463843 () Bool)

(assert (=> d!619442 m!2463843))

(declare-fun m!2463845 () Bool)

(assert (=> b!2025188 m!2463845))

(assert (=> b!2024924 d!619442))

(declare-fun d!619444 () Bool)

(declare-fun res!887905 () Bool)

(declare-fun e!1279272 () Bool)

(assert (=> d!619444 (=> (not res!887905) (not e!1279272))))

(assert (=> d!619444 (= res!887905 (not (isEmpty!13809 (originalCharacters!4793 separatorToken!354))))))

(assert (=> d!619444 (= (inv!29359 separatorToken!354) e!1279272)))

(declare-fun b!2025202 () Bool)

(declare-fun res!887906 () Bool)

(assert (=> b!2025202 (=> (not res!887906) (not e!1279272))))

(declare-fun dynLambda!10999 (Int TokenValue!4122) BalanceConc!14652)

(assert (=> b!2025202 (= res!887906 (= (originalCharacters!4793 separatorToken!354) (list!9049 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (value!125192 separatorToken!354)))))))

(declare-fun b!2025203 () Bool)

(assert (=> b!2025203 (= e!1279272 (= (size!17324 separatorToken!354) (size!17328 (originalCharacters!4793 separatorToken!354))))))

(assert (= (and d!619444 res!887905) b!2025202))

(assert (= (and b!2025202 res!887906) b!2025203))

(declare-fun b_lambda!68039 () Bool)

(assert (=> (not b_lambda!68039) (not b!2025202)))

(declare-fun tb!127565 () Bool)

(declare-fun t!189797 () Bool)

(assert (=> (and b!2024927 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354)))) t!189797) tb!127565))

(declare-fun b!2025208 () Bool)

(declare-fun e!1279275 () Bool)

(declare-fun tp!602619 () Bool)

(declare-fun inv!29362 (Conc!7418) Bool)

(assert (=> b!2025208 (= e!1279275 (and (inv!29362 (c!327647 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (value!125192 separatorToken!354)))) tp!602619))))

(declare-fun result!152636 () Bool)

(declare-fun inv!29363 (BalanceConc!14652) Bool)

(assert (=> tb!127565 (= result!152636 (and (inv!29363 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (value!125192 separatorToken!354))) e!1279275))))

(assert (= tb!127565 b!2025208))

(declare-fun m!2463881 () Bool)

(assert (=> b!2025208 m!2463881))

(declare-fun m!2463883 () Bool)

(assert (=> tb!127565 m!2463883))

(assert (=> b!2025202 t!189797))

(declare-fun b_and!161043 () Bool)

(assert (= b_and!161003 (and (=> t!189797 result!152636) b_and!161043)))

(declare-fun t!189799 () Bool)

(declare-fun tb!127567 () Bool)

(assert (=> (and b!2024898 (= (toChars!5518 (transformation!3986 (h!27583 rules!3198))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354)))) t!189799) tb!127567))

(declare-fun result!152640 () Bool)

(assert (= result!152640 result!152636))

(assert (=> b!2025202 t!189799))

(declare-fun b_and!161045 () Bool)

(assert (= b_and!161007 (and (=> t!189799 result!152640) b_and!161045)))

(declare-fun t!189801 () Bool)

(declare-fun tb!127569 () Bool)

(assert (=> (and b!2024910 (= (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354)))) t!189801) tb!127569))

(declare-fun result!152642 () Bool)

(assert (= result!152642 result!152636))

(assert (=> b!2025202 t!189801))

(declare-fun b_and!161047 () Bool)

(assert (= b_and!161011 (and (=> t!189801 result!152642) b_and!161047)))

(declare-fun m!2463885 () Bool)

(assert (=> d!619444 m!2463885))

(declare-fun m!2463887 () Bool)

(assert (=> b!2025202 m!2463887))

(assert (=> b!2025202 m!2463887))

(declare-fun m!2463889 () Bool)

(assert (=> b!2025202 m!2463889))

(declare-fun m!2463891 () Bool)

(assert (=> b!2025203 m!2463891))

(assert (=> start!199068 d!619444))

(declare-fun b!2025231 () Bool)

(declare-fun e!1279289 () Bool)

(declare-fun inv!15 (TokenValue!4122) Bool)

(assert (=> b!2025231 (= e!1279289 (inv!15 (value!125192 (h!27584 tokens!598))))))

(declare-fun d!619448 () Bool)

(declare-fun c!327713 () Bool)

(assert (=> d!619448 (= c!327713 ((_ is IntegerValue!12366) (value!125192 (h!27584 tokens!598))))))

(declare-fun e!1279288 () Bool)

(assert (=> d!619448 (= (inv!21 (value!125192 (h!27584 tokens!598))) e!1279288)))

(declare-fun b!2025232 () Bool)

(declare-fun inv!16 (TokenValue!4122) Bool)

(assert (=> b!2025232 (= e!1279288 (inv!16 (value!125192 (h!27584 tokens!598))))))

(declare-fun b!2025233 () Bool)

(declare-fun res!887915 () Bool)

(assert (=> b!2025233 (=> res!887915 e!1279289)))

(assert (=> b!2025233 (= res!887915 (not ((_ is IntegerValue!12368) (value!125192 (h!27584 tokens!598)))))))

(declare-fun e!1279290 () Bool)

(assert (=> b!2025233 (= e!1279290 e!1279289)))

(declare-fun b!2025234 () Bool)

(assert (=> b!2025234 (= e!1279288 e!1279290)))

(declare-fun c!327714 () Bool)

(assert (=> b!2025234 (= c!327714 ((_ is IntegerValue!12367) (value!125192 (h!27584 tokens!598))))))

(declare-fun b!2025235 () Bool)

(declare-fun inv!17 (TokenValue!4122) Bool)

(assert (=> b!2025235 (= e!1279290 (inv!17 (value!125192 (h!27584 tokens!598))))))

(assert (= (and d!619448 c!327713) b!2025232))

(assert (= (and d!619448 (not c!327713)) b!2025234))

(assert (= (and b!2025234 c!327714) b!2025235))

(assert (= (and b!2025234 (not c!327714)) b!2025233))

(assert (= (and b!2025233 (not res!887915)) b!2025231))

(declare-fun m!2463899 () Bool)

(assert (=> b!2025231 m!2463899))

(declare-fun m!2463903 () Bool)

(assert (=> b!2025232 m!2463903))

(declare-fun m!2463907 () Bool)

(assert (=> b!2025235 m!2463907))

(assert (=> b!2024926 d!619448))

(declare-fun d!619450 () Bool)

(declare-fun res!887920 () Bool)

(declare-fun e!1279295 () Bool)

(assert (=> d!619450 (=> res!887920 e!1279295)))

(assert (=> d!619450 (= res!887920 (not ((_ is Cons!22182) rules!3198)))))

(assert (=> d!619450 (= (sepAndNonSepRulesDisjointChars!1084 rules!3198 rules!3198) e!1279295)))

(declare-fun b!2025240 () Bool)

(declare-fun e!1279296 () Bool)

(assert (=> b!2025240 (= e!1279295 e!1279296)))

(declare-fun res!887921 () Bool)

(assert (=> b!2025240 (=> (not res!887921) (not e!1279296))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!487 (Rule!7772 List!22264) Bool)

(assert (=> b!2025240 (= res!887921 (ruleDisjointCharsFromAllFromOtherType!487 (h!27583 rules!3198) rules!3198))))

(declare-fun b!2025241 () Bool)

(assert (=> b!2025241 (= e!1279296 (sepAndNonSepRulesDisjointChars!1084 rules!3198 (t!189763 rules!3198)))))

(assert (= (and d!619450 (not res!887920)) b!2025240))

(assert (= (and b!2025240 res!887921) b!2025241))

(declare-fun m!2463913 () Bool)

(assert (=> b!2025240 m!2463913))

(declare-fun m!2463915 () Bool)

(assert (=> b!2025241 m!2463915))

(assert (=> b!2024925 d!619450))

(declare-fun d!619456 () Bool)

(assert (=> d!619456 (= (get!7039 lt!760405) (v!26955 lt!760405))))

(assert (=> b!2024904 d!619456))

(declare-fun d!619458 () Bool)

(declare-fun e!1279302 () Bool)

(assert (=> d!619458 e!1279302))

(declare-fun res!887932 () Bool)

(assert (=> d!619458 (=> (not res!887932) (not e!1279302))))

(assert (=> d!619458 (= res!887932 (isDefined!3943 (getRuleFromTag!801 thiss!23328 rules!3198 (tag!4466 (rule!6215 (h!27584 tokens!598))))))))

(declare-fun lt!760545 () Unit!36827)

(declare-fun choose!12336 (LexerInterface!3599 List!22264 List!22263 Token!7524) Unit!36827)

(assert (=> d!619458 (= lt!760545 (choose!12336 thiss!23328 rules!3198 lt!760414 (h!27584 tokens!598)))))

(assert (=> d!619458 (rulesInvariant!3206 thiss!23328 rules!3198)))

(assert (=> d!619458 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!801 thiss!23328 rules!3198 lt!760414 (h!27584 tokens!598)) lt!760545)))

(declare-fun b!2025252 () Bool)

(declare-fun res!887933 () Bool)

(assert (=> b!2025252 (=> (not res!887933) (not e!1279302))))

(assert (=> b!2025252 (= res!887933 (matchR!2677 (regex!3986 (get!7040 (getRuleFromTag!801 thiss!23328 rules!3198 (tag!4466 (rule!6215 (h!27584 tokens!598)))))) (list!9049 (charsOf!2526 (h!27584 tokens!598)))))))

(declare-fun b!2025253 () Bool)

(assert (=> b!2025253 (= e!1279302 (= (rule!6215 (h!27584 tokens!598)) (get!7040 (getRuleFromTag!801 thiss!23328 rules!3198 (tag!4466 (rule!6215 (h!27584 tokens!598)))))))))

(assert (= (and d!619458 res!887932) b!2025252))

(assert (= (and b!2025252 res!887933) b!2025253))

(assert (=> d!619458 m!2463521))

(assert (=> d!619458 m!2463521))

(declare-fun m!2463927 () Bool)

(assert (=> d!619458 m!2463927))

(declare-fun m!2463929 () Bool)

(assert (=> d!619458 m!2463929))

(assert (=> d!619458 m!2463483))

(assert (=> b!2025252 m!2463521))

(assert (=> b!2025252 m!2463521))

(declare-fun m!2463931 () Bool)

(assert (=> b!2025252 m!2463931))

(declare-fun m!2463933 () Bool)

(assert (=> b!2025252 m!2463933))

(declare-fun m!2463935 () Bool)

(assert (=> b!2025252 m!2463935))

(assert (=> b!2025252 m!2463505))

(assert (=> b!2025252 m!2463505))

(assert (=> b!2025252 m!2463933))

(assert (=> b!2025253 m!2463521))

(assert (=> b!2025253 m!2463521))

(assert (=> b!2025253 m!2463931))

(assert (=> b!2024904 d!619458))

(declare-fun b!2025340 () Bool)

(declare-fun e!1279348 () Option!4655)

(declare-fun lt!760580 () Option!4655)

(declare-fun lt!760578 () Option!4655)

(assert (=> b!2025340 (= e!1279348 (ite (and ((_ is None!4654) lt!760580) ((_ is None!4654) lt!760578)) None!4654 (ite ((_ is None!4654) lt!760578) lt!760580 (ite ((_ is None!4654) lt!760580) lt!760578 (ite (>= (size!17324 (_1!11897 (v!26955 lt!760580))) (size!17324 (_1!11897 (v!26955 lt!760578)))) lt!760580 lt!760578)))))))

(declare-fun call!124224 () Option!4655)

(assert (=> b!2025340 (= lt!760580 call!124224)))

(assert (=> b!2025340 (= lt!760578 (maxPrefix!2035 thiss!23328 (t!189763 rules!3198) (++!5993 lt!760414 lt!760413)))))

(declare-fun b!2025341 () Bool)

(declare-fun res!887973 () Bool)

(declare-fun e!1279349 () Bool)

(assert (=> b!2025341 (=> (not res!887973) (not e!1279349))))

(declare-fun lt!760582 () Option!4655)

(assert (=> b!2025341 (= res!887973 (= (list!9049 (charsOf!2526 (_1!11897 (get!7039 lt!760582)))) (originalCharacters!4793 (_1!11897 (get!7039 lt!760582)))))))

(declare-fun d!619464 () Bool)

(declare-fun e!1279347 () Bool)

(assert (=> d!619464 e!1279347))

(declare-fun res!887969 () Bool)

(assert (=> d!619464 (=> res!887969 e!1279347)))

(declare-fun isEmpty!13815 (Option!4655) Bool)

(assert (=> d!619464 (= res!887969 (isEmpty!13815 lt!760582))))

(assert (=> d!619464 (= lt!760582 e!1279348)))

(declare-fun c!327741 () Bool)

(assert (=> d!619464 (= c!327741 (and ((_ is Cons!22182) rules!3198) ((_ is Nil!22182) (t!189763 rules!3198))))))

(declare-fun lt!760581 () Unit!36827)

(declare-fun lt!760579 () Unit!36827)

(assert (=> d!619464 (= lt!760581 lt!760579)))

(declare-fun isPrefix!1979 (List!22263 List!22263) Bool)

(assert (=> d!619464 (isPrefix!1979 (++!5993 lt!760414 lt!760413) (++!5993 lt!760414 lt!760413))))

(declare-fun lemmaIsPrefixRefl!1297 (List!22263 List!22263) Unit!36827)

(assert (=> d!619464 (= lt!760579 (lemmaIsPrefixRefl!1297 (++!5993 lt!760414 lt!760413) (++!5993 lt!760414 lt!760413)))))

(declare-fun rulesValidInductive!1378 (LexerInterface!3599 List!22264) Bool)

(assert (=> d!619464 (rulesValidInductive!1378 thiss!23328 rules!3198)))

(assert (=> d!619464 (= (maxPrefix!2035 thiss!23328 rules!3198 (++!5993 lt!760414 lt!760413)) lt!760582)))

(declare-fun b!2025342 () Bool)

(declare-fun res!887972 () Bool)

(assert (=> b!2025342 (=> (not res!887972) (not e!1279349))))

(assert (=> b!2025342 (= res!887972 (matchR!2677 (regex!3986 (rule!6215 (_1!11897 (get!7039 lt!760582)))) (list!9049 (charsOf!2526 (_1!11897 (get!7039 lt!760582))))))))

(declare-fun b!2025343 () Bool)

(assert (=> b!2025343 (= e!1279348 call!124224)))

(declare-fun b!2025344 () Bool)

(declare-fun res!887970 () Bool)

(assert (=> b!2025344 (=> (not res!887970) (not e!1279349))))

(declare-fun apply!5832 (TokenValueInjection!7828 BalanceConc!14652) TokenValue!4122)

(assert (=> b!2025344 (= res!887970 (= (value!125192 (_1!11897 (get!7039 lt!760582))) (apply!5832 (transformation!3986 (rule!6215 (_1!11897 (get!7039 lt!760582)))) (seqFromList!2840 (originalCharacters!4793 (_1!11897 (get!7039 lt!760582)))))))))

(declare-fun bm!124219 () Bool)

(declare-fun maxPrefixOneRule!1261 (LexerInterface!3599 Rule!7772 List!22263) Option!4655)

(assert (=> bm!124219 (= call!124224 (maxPrefixOneRule!1261 thiss!23328 (h!27583 rules!3198) (++!5993 lt!760414 lt!760413)))))

(declare-fun b!2025345 () Bool)

(declare-fun res!887975 () Bool)

(assert (=> b!2025345 (=> (not res!887975) (not e!1279349))))

(assert (=> b!2025345 (= res!887975 (= (++!5993 (list!9049 (charsOf!2526 (_1!11897 (get!7039 lt!760582)))) (_2!11897 (get!7039 lt!760582))) (++!5993 lt!760414 lt!760413)))))

(declare-fun b!2025346 () Bool)

(declare-fun res!887971 () Bool)

(assert (=> b!2025346 (=> (not res!887971) (not e!1279349))))

(assert (=> b!2025346 (= res!887971 (< (size!17328 (_2!11897 (get!7039 lt!760582))) (size!17328 (++!5993 lt!760414 lt!760413))))))

(declare-fun b!2025347 () Bool)

(assert (=> b!2025347 (= e!1279349 (contains!4087 rules!3198 (rule!6215 (_1!11897 (get!7039 lt!760582)))))))

(declare-fun b!2025348 () Bool)

(assert (=> b!2025348 (= e!1279347 e!1279349)))

(declare-fun res!887974 () Bool)

(assert (=> b!2025348 (=> (not res!887974) (not e!1279349))))

(assert (=> b!2025348 (= res!887974 (isDefined!3944 lt!760582))))

(assert (= (and d!619464 c!327741) b!2025343))

(assert (= (and d!619464 (not c!327741)) b!2025340))

(assert (= (or b!2025343 b!2025340) bm!124219))

(assert (= (and d!619464 (not res!887969)) b!2025348))

(assert (= (and b!2025348 res!887974) b!2025341))

(assert (= (and b!2025341 res!887973) b!2025346))

(assert (= (and b!2025346 res!887971) b!2025345))

(assert (= (and b!2025345 res!887975) b!2025344))

(assert (= (and b!2025344 res!887970) b!2025342))

(assert (= (and b!2025342 res!887972) b!2025347))

(declare-fun m!2464047 () Bool)

(assert (=> b!2025341 m!2464047))

(declare-fun m!2464049 () Bool)

(assert (=> b!2025341 m!2464049))

(assert (=> b!2025341 m!2464049))

(declare-fun m!2464051 () Bool)

(assert (=> b!2025341 m!2464051))

(assert (=> bm!124219 m!2463487))

(declare-fun m!2464053 () Bool)

(assert (=> bm!124219 m!2464053))

(assert (=> b!2025347 m!2464047))

(declare-fun m!2464055 () Bool)

(assert (=> b!2025347 m!2464055))

(assert (=> b!2025342 m!2464047))

(assert (=> b!2025342 m!2464049))

(assert (=> b!2025342 m!2464049))

(assert (=> b!2025342 m!2464051))

(assert (=> b!2025342 m!2464051))

(declare-fun m!2464057 () Bool)

(assert (=> b!2025342 m!2464057))

(assert (=> b!2025344 m!2464047))

(declare-fun m!2464059 () Bool)

(assert (=> b!2025344 m!2464059))

(assert (=> b!2025344 m!2464059))

(declare-fun m!2464061 () Bool)

(assert (=> b!2025344 m!2464061))

(assert (=> b!2025345 m!2464047))

(assert (=> b!2025345 m!2464049))

(assert (=> b!2025345 m!2464049))

(assert (=> b!2025345 m!2464051))

(assert (=> b!2025345 m!2464051))

(declare-fun m!2464063 () Bool)

(assert (=> b!2025345 m!2464063))

(declare-fun m!2464065 () Bool)

(assert (=> d!619464 m!2464065))

(assert (=> d!619464 m!2463487))

(assert (=> d!619464 m!2463487))

(declare-fun m!2464067 () Bool)

(assert (=> d!619464 m!2464067))

(assert (=> d!619464 m!2463487))

(assert (=> d!619464 m!2463487))

(declare-fun m!2464069 () Bool)

(assert (=> d!619464 m!2464069))

(declare-fun m!2464071 () Bool)

(assert (=> d!619464 m!2464071))

(assert (=> b!2025346 m!2464047))

(declare-fun m!2464073 () Bool)

(assert (=> b!2025346 m!2464073))

(assert (=> b!2025346 m!2463487))

(declare-fun m!2464075 () Bool)

(assert (=> b!2025346 m!2464075))

(declare-fun m!2464077 () Bool)

(assert (=> b!2025348 m!2464077))

(assert (=> b!2025340 m!2463487))

(declare-fun m!2464079 () Bool)

(assert (=> b!2025340 m!2464079))

(assert (=> b!2024904 d!619464))

(declare-fun b!2025350 () Bool)

(declare-fun e!1279352 () Option!4655)

(declare-fun lt!760586 () Option!4655)

(declare-fun lt!760584 () Option!4655)

(assert (=> b!2025350 (= e!1279352 (ite (and ((_ is None!4654) lt!760586) ((_ is None!4654) lt!760584)) None!4654 (ite ((_ is None!4654) lt!760584) lt!760586 (ite ((_ is None!4654) lt!760586) lt!760584 (ite (>= (size!17324 (_1!11897 (v!26955 lt!760586))) (size!17324 (_1!11897 (v!26955 lt!760584)))) lt!760586 lt!760584)))))))

(declare-fun call!124225 () Option!4655)

(assert (=> b!2025350 (= lt!760586 call!124225)))

(assert (=> b!2025350 (= lt!760584 (maxPrefix!2035 thiss!23328 (t!189763 rules!3198) lt!760414))))

(declare-fun b!2025351 () Bool)

(declare-fun res!887981 () Bool)

(declare-fun e!1279353 () Bool)

(assert (=> b!2025351 (=> (not res!887981) (not e!1279353))))

(declare-fun lt!760588 () Option!4655)

(assert (=> b!2025351 (= res!887981 (= (list!9049 (charsOf!2526 (_1!11897 (get!7039 lt!760588)))) (originalCharacters!4793 (_1!11897 (get!7039 lt!760588)))))))

(declare-fun d!619492 () Bool)

(declare-fun e!1279351 () Bool)

(assert (=> d!619492 e!1279351))

(declare-fun res!887977 () Bool)

(assert (=> d!619492 (=> res!887977 e!1279351)))

(assert (=> d!619492 (= res!887977 (isEmpty!13815 lt!760588))))

(assert (=> d!619492 (= lt!760588 e!1279352)))

(declare-fun c!327742 () Bool)

(assert (=> d!619492 (= c!327742 (and ((_ is Cons!22182) rules!3198) ((_ is Nil!22182) (t!189763 rules!3198))))))

(declare-fun lt!760587 () Unit!36827)

(declare-fun lt!760585 () Unit!36827)

(assert (=> d!619492 (= lt!760587 lt!760585)))

(assert (=> d!619492 (isPrefix!1979 lt!760414 lt!760414)))

(assert (=> d!619492 (= lt!760585 (lemmaIsPrefixRefl!1297 lt!760414 lt!760414))))

(assert (=> d!619492 (rulesValidInductive!1378 thiss!23328 rules!3198)))

(assert (=> d!619492 (= (maxPrefix!2035 thiss!23328 rules!3198 lt!760414) lt!760588)))

(declare-fun b!2025352 () Bool)

(declare-fun res!887980 () Bool)

(assert (=> b!2025352 (=> (not res!887980) (not e!1279353))))

(assert (=> b!2025352 (= res!887980 (matchR!2677 (regex!3986 (rule!6215 (_1!11897 (get!7039 lt!760588)))) (list!9049 (charsOf!2526 (_1!11897 (get!7039 lt!760588))))))))

(declare-fun b!2025353 () Bool)

(assert (=> b!2025353 (= e!1279352 call!124225)))

(declare-fun b!2025354 () Bool)

(declare-fun res!887978 () Bool)

(assert (=> b!2025354 (=> (not res!887978) (not e!1279353))))

(assert (=> b!2025354 (= res!887978 (= (value!125192 (_1!11897 (get!7039 lt!760588))) (apply!5832 (transformation!3986 (rule!6215 (_1!11897 (get!7039 lt!760588)))) (seqFromList!2840 (originalCharacters!4793 (_1!11897 (get!7039 lt!760588)))))))))

(declare-fun bm!124220 () Bool)

(assert (=> bm!124220 (= call!124225 (maxPrefixOneRule!1261 thiss!23328 (h!27583 rules!3198) lt!760414))))

(declare-fun b!2025355 () Bool)

(declare-fun res!887983 () Bool)

(assert (=> b!2025355 (=> (not res!887983) (not e!1279353))))

(assert (=> b!2025355 (= res!887983 (= (++!5993 (list!9049 (charsOf!2526 (_1!11897 (get!7039 lt!760588)))) (_2!11897 (get!7039 lt!760588))) lt!760414))))

(declare-fun b!2025356 () Bool)

(declare-fun res!887979 () Bool)

(assert (=> b!2025356 (=> (not res!887979) (not e!1279353))))

(assert (=> b!2025356 (= res!887979 (< (size!17328 (_2!11897 (get!7039 lt!760588))) (size!17328 lt!760414)))))

(declare-fun b!2025357 () Bool)

(assert (=> b!2025357 (= e!1279353 (contains!4087 rules!3198 (rule!6215 (_1!11897 (get!7039 lt!760588)))))))

(declare-fun b!2025358 () Bool)

(assert (=> b!2025358 (= e!1279351 e!1279353)))

(declare-fun res!887982 () Bool)

(assert (=> b!2025358 (=> (not res!887982) (not e!1279353))))

(assert (=> b!2025358 (= res!887982 (isDefined!3944 lt!760588))))

(assert (= (and d!619492 c!327742) b!2025353))

(assert (= (and d!619492 (not c!327742)) b!2025350))

(assert (= (or b!2025353 b!2025350) bm!124220))

(assert (= (and d!619492 (not res!887977)) b!2025358))

(assert (= (and b!2025358 res!887982) b!2025351))

(assert (= (and b!2025351 res!887981) b!2025356))

(assert (= (and b!2025356 res!887979) b!2025355))

(assert (= (and b!2025355 res!887983) b!2025354))

(assert (= (and b!2025354 res!887978) b!2025352))

(assert (= (and b!2025352 res!887980) b!2025357))

(declare-fun m!2464081 () Bool)

(assert (=> b!2025351 m!2464081))

(declare-fun m!2464083 () Bool)

(assert (=> b!2025351 m!2464083))

(assert (=> b!2025351 m!2464083))

(declare-fun m!2464085 () Bool)

(assert (=> b!2025351 m!2464085))

(declare-fun m!2464087 () Bool)

(assert (=> bm!124220 m!2464087))

(assert (=> b!2025357 m!2464081))

(declare-fun m!2464089 () Bool)

(assert (=> b!2025357 m!2464089))

(assert (=> b!2025352 m!2464081))

(assert (=> b!2025352 m!2464083))

(assert (=> b!2025352 m!2464083))

(assert (=> b!2025352 m!2464085))

(assert (=> b!2025352 m!2464085))

(declare-fun m!2464091 () Bool)

(assert (=> b!2025352 m!2464091))

(assert (=> b!2025354 m!2464081))

(declare-fun m!2464093 () Bool)

(assert (=> b!2025354 m!2464093))

(assert (=> b!2025354 m!2464093))

(declare-fun m!2464095 () Bool)

(assert (=> b!2025354 m!2464095))

(assert (=> b!2025355 m!2464081))

(assert (=> b!2025355 m!2464083))

(assert (=> b!2025355 m!2464083))

(assert (=> b!2025355 m!2464085))

(assert (=> b!2025355 m!2464085))

(declare-fun m!2464097 () Bool)

(assert (=> b!2025355 m!2464097))

(declare-fun m!2464099 () Bool)

(assert (=> d!619492 m!2464099))

(declare-fun m!2464101 () Bool)

(assert (=> d!619492 m!2464101))

(declare-fun m!2464103 () Bool)

(assert (=> d!619492 m!2464103))

(assert (=> d!619492 m!2464071))

(assert (=> b!2025356 m!2464081))

(declare-fun m!2464105 () Bool)

(assert (=> b!2025356 m!2464105))

(assert (=> b!2025356 m!2463717))

(declare-fun m!2464107 () Bool)

(assert (=> b!2025358 m!2464107))

(declare-fun m!2464109 () Bool)

(assert (=> b!2025350 m!2464109))

(assert (=> b!2024904 d!619492))

(declare-fun d!619494 () Bool)

(declare-fun e!1279354 () Bool)

(assert (=> d!619494 e!1279354))

(declare-fun res!887984 () Bool)

(assert (=> d!619494 (=> (not res!887984) (not e!1279354))))

(assert (=> d!619494 (= res!887984 (isDefined!3943 (getRuleFromTag!801 thiss!23328 rules!3198 (tag!4466 (rule!6215 separatorToken!354)))))))

(declare-fun lt!760589 () Unit!36827)

(assert (=> d!619494 (= lt!760589 (choose!12336 thiss!23328 rules!3198 lt!760409 separatorToken!354))))

(assert (=> d!619494 (rulesInvariant!3206 thiss!23328 rules!3198)))

(assert (=> d!619494 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!801 thiss!23328 rules!3198 lt!760409 separatorToken!354) lt!760589)))

(declare-fun b!2025359 () Bool)

(declare-fun res!887985 () Bool)

(assert (=> b!2025359 (=> (not res!887985) (not e!1279354))))

(assert (=> b!2025359 (= res!887985 (matchR!2677 (regex!3986 (get!7040 (getRuleFromTag!801 thiss!23328 rules!3198 (tag!4466 (rule!6215 separatorToken!354))))) (list!9049 (charsOf!2526 separatorToken!354))))))

(declare-fun b!2025360 () Bool)

(assert (=> b!2025360 (= e!1279354 (= (rule!6215 separatorToken!354) (get!7040 (getRuleFromTag!801 thiss!23328 rules!3198 (tag!4466 (rule!6215 separatorToken!354))))))))

(assert (= (and d!619494 res!887984) b!2025359))

(assert (= (and b!2025359 res!887985) b!2025360))

(assert (=> d!619494 m!2463519))

(assert (=> d!619494 m!2463519))

(declare-fun m!2464111 () Bool)

(assert (=> d!619494 m!2464111))

(declare-fun m!2464113 () Bool)

(assert (=> d!619494 m!2464113))

(assert (=> d!619494 m!2463483))

(assert (=> b!2025359 m!2463519))

(assert (=> b!2025359 m!2463519))

(declare-fun m!2464115 () Bool)

(assert (=> b!2025359 m!2464115))

(assert (=> b!2025359 m!2463507))

(declare-fun m!2464117 () Bool)

(assert (=> b!2025359 m!2464117))

(assert (=> b!2025359 m!2463501))

(assert (=> b!2025359 m!2463501))

(assert (=> b!2025359 m!2463507))

(assert (=> b!2025360 m!2463519))

(assert (=> b!2025360 m!2463519))

(assert (=> b!2025360 m!2464115))

(assert (=> b!2024904 d!619494))

(declare-fun b!2025367 () Bool)

(declare-fun e!1279359 () Bool)

(assert (=> b!2025367 (= e!1279359 true)))

(declare-fun d!619496 () Bool)

(assert (=> d!619496 e!1279359))

(assert (= d!619496 b!2025367))

(declare-fun lambda!76408 () Int)

(declare-fun order!14173 () Int)

(declare-fun dynLambda!11000 (Int Int) Int)

(assert (=> b!2025367 (< (dynLambda!10996 order!14167 (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) (dynLambda!11000 order!14173 lambda!76408))))

(assert (=> b!2025367 (< (dynLambda!10998 order!14171 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) (dynLambda!11000 order!14173 lambda!76408))))

(declare-fun dynLambda!11001 (Int BalanceConc!14652) TokenValue!4122)

(assert (=> d!619496 (= (dynLambda!11001 (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) lt!760411) (dynLambda!11001 (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (seqFromList!2840 (originalCharacters!4793 (h!27584 tokens!598)))))))

(declare-fun lt!760595 () Unit!36827)

(declare-fun Forall2of!239 (Int BalanceConc!14652 BalanceConc!14652) Unit!36827)

(assert (=> d!619496 (= lt!760595 (Forall2of!239 lambda!76408 lt!760411 (seqFromList!2840 (originalCharacters!4793 (h!27584 tokens!598)))))))

(assert (=> d!619496 (= (list!9049 lt!760411) (list!9049 (seqFromList!2840 (originalCharacters!4793 (h!27584 tokens!598)))))))

(assert (=> d!619496 (= (lemmaEqSameImage!672 (transformation!3986 (rule!6215 (h!27584 tokens!598))) lt!760411 (seqFromList!2840 (originalCharacters!4793 (h!27584 tokens!598)))) lt!760595)))

(declare-fun b_lambda!68045 () Bool)

(assert (=> (not b_lambda!68045) (not d!619496)))

(declare-fun t!189810 () Bool)

(declare-fun tb!127577 () Bool)

(assert (=> (and b!2024927 (= (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189810) tb!127577))

(declare-fun result!152650 () Bool)

(assert (=> tb!127577 (= result!152650 (inv!21 (dynLambda!11001 (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) lt!760411)))))

(declare-fun m!2464125 () Bool)

(assert (=> tb!127577 m!2464125))

(assert (=> d!619496 t!189810))

(declare-fun b_and!161061 () Bool)

(assert (= b_and!161001 (and (=> t!189810 result!152650) b_and!161061)))

(declare-fun t!189812 () Bool)

(declare-fun tb!127579 () Bool)

(assert (=> (and b!2024898 (= (toValue!5659 (transformation!3986 (h!27583 rules!3198))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189812) tb!127579))

(declare-fun result!152654 () Bool)

(assert (= result!152654 result!152650))

(assert (=> d!619496 t!189812))

(declare-fun b_and!161063 () Bool)

(assert (= b_and!161005 (and (=> t!189812 result!152654) b_and!161063)))

(declare-fun t!189814 () Bool)

(declare-fun tb!127581 () Bool)

(assert (=> (and b!2024910 (= (toValue!5659 (transformation!3986 (rule!6215 separatorToken!354))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189814) tb!127581))

(declare-fun result!152656 () Bool)

(assert (= result!152656 result!152650))

(assert (=> d!619496 t!189814))

(declare-fun b_and!161065 () Bool)

(assert (= b_and!161009 (and (=> t!189814 result!152656) b_and!161065)))

(declare-fun b_lambda!68047 () Bool)

(assert (=> (not b_lambda!68047) (not d!619496)))

(declare-fun t!189816 () Bool)

(declare-fun tb!127583 () Bool)

(assert (=> (and b!2024927 (= (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189816) tb!127583))

(declare-fun result!152658 () Bool)

(assert (=> tb!127583 (= result!152658 (inv!21 (dynLambda!11001 (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (seqFromList!2840 (originalCharacters!4793 (h!27584 tokens!598))))))))

(declare-fun m!2464127 () Bool)

(assert (=> tb!127583 m!2464127))

(assert (=> d!619496 t!189816))

(declare-fun b_and!161067 () Bool)

(assert (= b_and!161061 (and (=> t!189816 result!152658) b_and!161067)))

(declare-fun tb!127585 () Bool)

(declare-fun t!189818 () Bool)

(assert (=> (and b!2024898 (= (toValue!5659 (transformation!3986 (h!27583 rules!3198))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189818) tb!127585))

(declare-fun result!152660 () Bool)

(assert (= result!152660 result!152658))

(assert (=> d!619496 t!189818))

(declare-fun b_and!161069 () Bool)

(assert (= b_and!161063 (and (=> t!189818 result!152660) b_and!161069)))

(declare-fun tb!127587 () Bool)

(declare-fun t!189820 () Bool)

(assert (=> (and b!2024910 (= (toValue!5659 (transformation!3986 (rule!6215 separatorToken!354))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189820) tb!127587))

(declare-fun result!152662 () Bool)

(assert (= result!152662 result!152658))

(assert (=> d!619496 t!189820))

(declare-fun b_and!161071 () Bool)

(assert (= b_and!161065 (and (=> t!189820 result!152662) b_and!161071)))

(declare-fun m!2464129 () Bool)

(assert (=> d!619496 m!2464129))

(assert (=> d!619496 m!2463491))

(declare-fun m!2464131 () Bool)

(assert (=> d!619496 m!2464131))

(assert (=> d!619496 m!2463523))

(assert (=> d!619496 m!2463491))

(declare-fun m!2464133 () Bool)

(assert (=> d!619496 m!2464133))

(assert (=> d!619496 m!2463491))

(declare-fun m!2464135 () Bool)

(assert (=> d!619496 m!2464135))

(assert (=> b!2024904 d!619496))

(declare-fun d!619500 () Bool)

(declare-fun isEmpty!13816 (Option!4656) Bool)

(assert (=> d!619500 (= (isDefined!3943 lt!760415) (not (isEmpty!13816 lt!760415)))))

(declare-fun bs!420672 () Bool)

(assert (= bs!420672 d!619500))

(declare-fun m!2464137 () Bool)

(assert (=> bs!420672 m!2464137))

(assert (=> b!2024904 d!619500))

(declare-fun bs!420677 () Bool)

(declare-fun b!2025493 () Bool)

(assert (= bs!420677 (and b!2025493 b!2024902)))

(declare-fun lambda!76411 () Int)

(assert (=> bs!420677 (not (= lambda!76411 lambda!76393))))

(declare-fun bs!420678 () Bool)

(assert (= bs!420678 (and b!2025493 d!619420)))

(assert (=> bs!420678 (= lambda!76411 lambda!76405)))

(declare-fun b!2025501 () Bool)

(declare-fun e!1279437 () Bool)

(assert (=> b!2025501 (= e!1279437 true)))

(declare-fun b!2025500 () Bool)

(declare-fun e!1279436 () Bool)

(assert (=> b!2025500 (= e!1279436 e!1279437)))

(declare-fun b!2025499 () Bool)

(declare-fun e!1279435 () Bool)

(assert (=> b!2025499 (= e!1279435 e!1279436)))

(assert (=> b!2025493 e!1279435))

(assert (= b!2025500 b!2025501))

(assert (= b!2025499 b!2025500))

(assert (= (and b!2025493 ((_ is Cons!22182) rules!3198)) b!2025499))

(assert (=> b!2025501 (< (dynLambda!10996 order!14167 (toValue!5659 (transformation!3986 (h!27583 rules!3198)))) (dynLambda!10997 order!14169 lambda!76411))))

(assert (=> b!2025501 (< (dynLambda!10998 order!14171 (toChars!5518 (transformation!3986 (h!27583 rules!3198)))) (dynLambda!10997 order!14169 lambda!76411))))

(assert (=> b!2025493 true))

(declare-fun b!2025492 () Bool)

(declare-fun e!1279433 () List!22263)

(assert (=> b!2025492 (= e!1279433 Nil!22181)))

(assert (=> b!2025492 (= (print!1561 thiss!23328 (singletonSeq!1962 (h!27584 (t!189764 tokens!598)))) (printTailRec!1067 thiss!23328 (singletonSeq!1962 (h!27584 (t!189764 tokens!598))) 0 (BalanceConc!14653 Empty!7418)))))

(declare-fun lt!760647 () Unit!36827)

(declare-fun Unit!36834 () Unit!36827)

(assert (=> b!2025492 (= lt!760647 Unit!36834)))

(declare-fun lt!760648 () List!22263)

(declare-fun call!124240 () List!22263)

(declare-fun lt!760649 () Unit!36827)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!773 (LexerInterface!3599 List!22264 List!22263 List!22263) Unit!36827)

(assert (=> b!2025492 (= lt!760649 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!773 thiss!23328 rules!3198 call!124240 lt!760648))))

(assert (=> b!2025492 false))

(declare-fun lt!760650 () Unit!36827)

(declare-fun Unit!36835 () Unit!36827)

(assert (=> b!2025492 (= lt!760650 Unit!36835)))

(declare-fun e!1279431 () List!22263)

(declare-fun e!1279434 () List!22263)

(assert (=> b!2025493 (= e!1279431 e!1279434)))

(declare-fun lt!760646 () Unit!36827)

(declare-fun forallContained!742 (List!22265 Int Token!7524) Unit!36827)

(assert (=> b!2025493 (= lt!760646 (forallContained!742 (t!189764 tokens!598) lambda!76411 (h!27584 (t!189764 tokens!598))))))

(assert (=> b!2025493 (= lt!760648 (printWithSeparatorTokenWhenNeededList!628 thiss!23328 rules!3198 (t!189764 (t!189764 tokens!598)) separatorToken!354))))

(declare-fun lt!760651 () Option!4655)

(assert (=> b!2025493 (= lt!760651 (maxPrefix!2035 thiss!23328 rules!3198 (++!5993 (list!9049 (charsOf!2526 (h!27584 (t!189764 tokens!598)))) lt!760648)))))

(declare-fun c!327776 () Bool)

(assert (=> b!2025493 (= c!327776 (and ((_ is Some!4654) lt!760651) (= (_1!11897 (v!26955 lt!760651)) (h!27584 (t!189764 tokens!598)))))))

(declare-fun b!2025494 () Bool)

(declare-fun e!1279432 () List!22263)

(declare-fun call!124241 () List!22263)

(assert (=> b!2025494 (= e!1279432 call!124241)))

(declare-fun call!124244 () BalanceConc!14652)

(declare-fun c!327778 () Bool)

(declare-fun bm!124235 () Bool)

(assert (=> bm!124235 (= call!124244 (charsOf!2526 (ite c!327776 (h!27584 (t!189764 tokens!598)) (ite c!327778 separatorToken!354 (h!27584 (t!189764 tokens!598))))))))

(declare-fun bm!124236 () Bool)

(declare-fun call!124243 () BalanceConc!14652)

(assert (=> bm!124236 (= call!124243 call!124244)))

(declare-fun bm!124237 () Bool)

(declare-fun c!327777 () Bool)

(assert (=> bm!124237 (= c!327777 c!327776)))

(declare-fun call!124242 () List!22263)

(assert (=> bm!124237 (= call!124242 (++!5993 e!1279432 (ite c!327776 lt!760648 call!124240)))))

(declare-fun d!619502 () Bool)

(declare-fun c!327775 () Bool)

(assert (=> d!619502 (= c!327775 ((_ is Cons!22183) (t!189764 tokens!598)))))

(assert (=> d!619502 (= (printWithSeparatorTokenWhenNeededList!628 thiss!23328 rules!3198 (t!189764 tokens!598) separatorToken!354) e!1279431)))

(declare-fun b!2025491 () Bool)

(assert (=> b!2025491 (= e!1279433 (++!5993 call!124242 lt!760648))))

(declare-fun bm!124238 () Bool)

(assert (=> bm!124238 (= call!124240 call!124241)))

(declare-fun b!2025495 () Bool)

(assert (=> b!2025495 (= c!327778 (and ((_ is Some!4654) lt!760651) (not (= (_1!11897 (v!26955 lt!760651)) (h!27584 (t!189764 tokens!598))))))))

(assert (=> b!2025495 (= e!1279434 e!1279433)))

(declare-fun bm!124239 () Bool)

(assert (=> bm!124239 (= call!124241 (list!9049 (ite c!327776 call!124244 call!124243)))))

(declare-fun b!2025496 () Bool)

(assert (=> b!2025496 (= e!1279432 (list!9049 (charsOf!2526 (h!27584 (t!189764 tokens!598)))))))

(declare-fun b!2025497 () Bool)

(assert (=> b!2025497 (= e!1279431 Nil!22181)))

(declare-fun b!2025498 () Bool)

(assert (=> b!2025498 (= e!1279434 call!124242)))

(assert (= (and d!619502 c!327775) b!2025493))

(assert (= (and d!619502 (not c!327775)) b!2025497))

(assert (= (and b!2025493 c!327776) b!2025498))

(assert (= (and b!2025493 (not c!327776)) b!2025495))

(assert (= (and b!2025495 c!327778) b!2025491))

(assert (= (and b!2025495 (not c!327778)) b!2025492))

(assert (= (or b!2025491 b!2025492) bm!124236))

(assert (= (or b!2025491 b!2025492) bm!124238))

(assert (= (or b!2025498 bm!124236) bm!124235))

(assert (= (or b!2025498 bm!124238) bm!124239))

(assert (= (or b!2025498 b!2025491) bm!124237))

(assert (= (and bm!124237 c!327777) b!2025494))

(assert (= (and bm!124237 (not c!327777)) b!2025496))

(declare-fun m!2464285 () Bool)

(assert (=> b!2025492 m!2464285))

(assert (=> b!2025492 m!2464285))

(declare-fun m!2464287 () Bool)

(assert (=> b!2025492 m!2464287))

(assert (=> b!2025492 m!2464285))

(declare-fun m!2464289 () Bool)

(assert (=> b!2025492 m!2464289))

(declare-fun m!2464291 () Bool)

(assert (=> b!2025492 m!2464291))

(declare-fun m!2464293 () Bool)

(assert (=> b!2025491 m!2464293))

(declare-fun m!2464295 () Bool)

(assert (=> b!2025493 m!2464295))

(declare-fun m!2464297 () Bool)

(assert (=> b!2025493 m!2464297))

(declare-fun m!2464299 () Bool)

(assert (=> b!2025493 m!2464299))

(assert (=> b!2025493 m!2464295))

(assert (=> b!2025493 m!2464299))

(assert (=> b!2025493 m!2464297))

(declare-fun m!2464301 () Bool)

(assert (=> b!2025493 m!2464301))

(declare-fun m!2464303 () Bool)

(assert (=> b!2025493 m!2464303))

(declare-fun m!2464305 () Bool)

(assert (=> b!2025493 m!2464305))

(declare-fun m!2464307 () Bool)

(assert (=> bm!124239 m!2464307))

(declare-fun m!2464309 () Bool)

(assert (=> bm!124237 m!2464309))

(declare-fun m!2464311 () Bool)

(assert (=> bm!124235 m!2464311))

(assert (=> b!2025496 m!2464299))

(assert (=> b!2025496 m!2464299))

(assert (=> b!2025496 m!2464295))

(assert (=> b!2024904 d!619502))

(declare-fun d!619546 () Bool)

(declare-fun lt!760654 () BalanceConc!14652)

(assert (=> d!619546 (= (list!9049 lt!760654) (originalCharacters!4793 separatorToken!354))))

(assert (=> d!619546 (= lt!760654 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (value!125192 separatorToken!354)))))

(assert (=> d!619546 (= (charsOf!2526 separatorToken!354) lt!760654)))

(declare-fun b_lambda!68051 () Bool)

(assert (=> (not b_lambda!68051) (not d!619546)))

(assert (=> d!619546 t!189797))

(declare-fun b_and!161079 () Bool)

(assert (= b_and!161043 (and (=> t!189797 result!152636) b_and!161079)))

(assert (=> d!619546 t!189799))

(declare-fun b_and!161081 () Bool)

(assert (= b_and!161045 (and (=> t!189799 result!152640) b_and!161081)))

(assert (=> d!619546 t!189801))

(declare-fun b_and!161083 () Bool)

(assert (= b_and!161047 (and (=> t!189801 result!152642) b_and!161083)))

(declare-fun m!2464313 () Bool)

(assert (=> d!619546 m!2464313))

(assert (=> d!619546 m!2463887))

(assert (=> b!2024904 d!619546))

(declare-fun b!2025514 () Bool)

(declare-fun e!1279448 () Option!4656)

(assert (=> b!2025514 (= e!1279448 None!4655)))

(declare-fun b!2025515 () Bool)

(declare-fun e!1279449 () Option!4656)

(assert (=> b!2025515 (= e!1279449 e!1279448)))

(declare-fun c!327784 () Bool)

(assert (=> b!2025515 (= c!327784 (and ((_ is Cons!22182) rules!3198) (not (= (tag!4466 (h!27583 rules!3198)) (tag!4466 (rule!6215 separatorToken!354))))))))

(declare-fun b!2025516 () Bool)

(declare-fun e!1279447 () Bool)

(declare-fun e!1279446 () Bool)

(assert (=> b!2025516 (= e!1279447 e!1279446)))

(declare-fun res!888051 () Bool)

(assert (=> b!2025516 (=> (not res!888051) (not e!1279446))))

(declare-fun lt!760662 () Option!4656)

(assert (=> b!2025516 (= res!888051 (contains!4087 rules!3198 (get!7040 lt!760662)))))

(declare-fun b!2025517 () Bool)

(declare-fun lt!760663 () Unit!36827)

(declare-fun lt!760661 () Unit!36827)

(assert (=> b!2025517 (= lt!760663 lt!760661)))

(assert (=> b!2025517 (rulesInvariant!3206 thiss!23328 (t!189763 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!304 (LexerInterface!3599 Rule!7772 List!22264) Unit!36827)

(assert (=> b!2025517 (= lt!760661 (lemmaInvariantOnRulesThenOnTail!304 thiss!23328 (h!27583 rules!3198) (t!189763 rules!3198)))))

(assert (=> b!2025517 (= e!1279448 (getRuleFromTag!801 thiss!23328 (t!189763 rules!3198) (tag!4466 (rule!6215 separatorToken!354))))))

(declare-fun d!619548 () Bool)

(assert (=> d!619548 e!1279447))

(declare-fun res!888052 () Bool)

(assert (=> d!619548 (=> res!888052 e!1279447)))

(assert (=> d!619548 (= res!888052 (isEmpty!13816 lt!760662))))

(assert (=> d!619548 (= lt!760662 e!1279449)))

(declare-fun c!327783 () Bool)

(assert (=> d!619548 (= c!327783 (and ((_ is Cons!22182) rules!3198) (= (tag!4466 (h!27583 rules!3198)) (tag!4466 (rule!6215 separatorToken!354)))))))

(assert (=> d!619548 (rulesInvariant!3206 thiss!23328 rules!3198)))

(assert (=> d!619548 (= (getRuleFromTag!801 thiss!23328 rules!3198 (tag!4466 (rule!6215 separatorToken!354))) lt!760662)))

(declare-fun b!2025518 () Bool)

(assert (=> b!2025518 (= e!1279449 (Some!4655 (h!27583 rules!3198)))))

(declare-fun b!2025519 () Bool)

(assert (=> b!2025519 (= e!1279446 (= (tag!4466 (get!7040 lt!760662)) (tag!4466 (rule!6215 separatorToken!354))))))

(assert (= (and d!619548 c!327783) b!2025518))

(assert (= (and d!619548 (not c!327783)) b!2025515))

(assert (= (and b!2025515 c!327784) b!2025517))

(assert (= (and b!2025515 (not c!327784)) b!2025514))

(assert (= (and d!619548 (not res!888052)) b!2025516))

(assert (= (and b!2025516 res!888051) b!2025519))

(declare-fun m!2464315 () Bool)

(assert (=> b!2025516 m!2464315))

(assert (=> b!2025516 m!2464315))

(declare-fun m!2464317 () Bool)

(assert (=> b!2025516 m!2464317))

(declare-fun m!2464319 () Bool)

(assert (=> b!2025517 m!2464319))

(declare-fun m!2464321 () Bool)

(assert (=> b!2025517 m!2464321))

(declare-fun m!2464323 () Bool)

(assert (=> b!2025517 m!2464323))

(declare-fun m!2464325 () Bool)

(assert (=> d!619548 m!2464325))

(assert (=> d!619548 m!2463483))

(assert (=> b!2025519 m!2464315))

(assert (=> b!2024904 d!619548))

(declare-fun b!2025520 () Bool)

(declare-fun e!1279452 () Option!4656)

(assert (=> b!2025520 (= e!1279452 None!4655)))

(declare-fun b!2025521 () Bool)

(declare-fun e!1279453 () Option!4656)

(assert (=> b!2025521 (= e!1279453 e!1279452)))

(declare-fun c!327786 () Bool)

(assert (=> b!2025521 (= c!327786 (and ((_ is Cons!22182) rules!3198) (not (= (tag!4466 (h!27583 rules!3198)) (tag!4466 (rule!6215 (h!27584 tokens!598)))))))))

(declare-fun b!2025522 () Bool)

(declare-fun e!1279451 () Bool)

(declare-fun e!1279450 () Bool)

(assert (=> b!2025522 (= e!1279451 e!1279450)))

(declare-fun res!888053 () Bool)

(assert (=> b!2025522 (=> (not res!888053) (not e!1279450))))

(declare-fun lt!760665 () Option!4656)

(assert (=> b!2025522 (= res!888053 (contains!4087 rules!3198 (get!7040 lt!760665)))))

(declare-fun b!2025523 () Bool)

(declare-fun lt!760666 () Unit!36827)

(declare-fun lt!760664 () Unit!36827)

(assert (=> b!2025523 (= lt!760666 lt!760664)))

(assert (=> b!2025523 (rulesInvariant!3206 thiss!23328 (t!189763 rules!3198))))

(assert (=> b!2025523 (= lt!760664 (lemmaInvariantOnRulesThenOnTail!304 thiss!23328 (h!27583 rules!3198) (t!189763 rules!3198)))))

(assert (=> b!2025523 (= e!1279452 (getRuleFromTag!801 thiss!23328 (t!189763 rules!3198) (tag!4466 (rule!6215 (h!27584 tokens!598)))))))

(declare-fun d!619550 () Bool)

(assert (=> d!619550 e!1279451))

(declare-fun res!888054 () Bool)

(assert (=> d!619550 (=> res!888054 e!1279451)))

(assert (=> d!619550 (= res!888054 (isEmpty!13816 lt!760665))))

(assert (=> d!619550 (= lt!760665 e!1279453)))

(declare-fun c!327785 () Bool)

(assert (=> d!619550 (= c!327785 (and ((_ is Cons!22182) rules!3198) (= (tag!4466 (h!27583 rules!3198)) (tag!4466 (rule!6215 (h!27584 tokens!598))))))))

(assert (=> d!619550 (rulesInvariant!3206 thiss!23328 rules!3198)))

(assert (=> d!619550 (= (getRuleFromTag!801 thiss!23328 rules!3198 (tag!4466 (rule!6215 (h!27584 tokens!598)))) lt!760665)))

(declare-fun b!2025524 () Bool)

(assert (=> b!2025524 (= e!1279453 (Some!4655 (h!27583 rules!3198)))))

(declare-fun b!2025525 () Bool)

(assert (=> b!2025525 (= e!1279450 (= (tag!4466 (get!7040 lt!760665)) (tag!4466 (rule!6215 (h!27584 tokens!598)))))))

(assert (= (and d!619550 c!327785) b!2025524))

(assert (= (and d!619550 (not c!327785)) b!2025521))

(assert (= (and b!2025521 c!327786) b!2025523))

(assert (= (and b!2025521 (not c!327786)) b!2025520))

(assert (= (and d!619550 (not res!888054)) b!2025522))

(assert (= (and b!2025522 res!888053) b!2025525))

(declare-fun m!2464327 () Bool)

(assert (=> b!2025522 m!2464327))

(assert (=> b!2025522 m!2464327))

(declare-fun m!2464329 () Bool)

(assert (=> b!2025522 m!2464329))

(assert (=> b!2025523 m!2464319))

(assert (=> b!2025523 m!2464321))

(declare-fun m!2464331 () Bool)

(assert (=> b!2025523 m!2464331))

(declare-fun m!2464333 () Bool)

(assert (=> d!619550 m!2464333))

(assert (=> d!619550 m!2463483))

(assert (=> b!2025525 m!2464327))

(assert (=> b!2024904 d!619550))

(declare-fun b!2025530 () Bool)

(declare-fun e!1279456 () Bool)

(assert (=> b!2025530 (= e!1279456 true)))

(declare-fun d!619552 () Bool)

(assert (=> d!619552 e!1279456))

(assert (= d!619552 b!2025530))

(declare-fun order!14175 () Int)

(declare-fun lambda!76414 () Int)

(declare-fun dynLambda!11002 (Int Int) Int)

(assert (=> b!2025530 (< (dynLambda!10996 order!14167 (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) (dynLambda!11002 order!14175 lambda!76414))))

(assert (=> b!2025530 (< (dynLambda!10998 order!14171 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) (dynLambda!11002 order!14175 lambda!76414))))

(assert (=> d!619552 (= (list!9049 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (dynLambda!11001 (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) lt!760411))) (list!9049 lt!760411))))

(declare-fun lt!760669 () Unit!36827)

(declare-fun ForallOf!443 (Int BalanceConc!14652) Unit!36827)

(assert (=> d!619552 (= lt!760669 (ForallOf!443 lambda!76414 lt!760411))))

(assert (=> d!619552 (= (lemmaSemiInverse!943 (transformation!3986 (rule!6215 (h!27584 tokens!598))) lt!760411) lt!760669)))

(declare-fun b_lambda!68053 () Bool)

(assert (=> (not b_lambda!68053) (not d!619552)))

(declare-fun t!189824 () Bool)

(declare-fun tb!127589 () Bool)

(assert (=> (and b!2024927 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189824) tb!127589))

(declare-fun b!2025531 () Bool)

(declare-fun e!1279457 () Bool)

(declare-fun tp!602621 () Bool)

(assert (=> b!2025531 (= e!1279457 (and (inv!29362 (c!327647 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (dynLambda!11001 (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) lt!760411)))) tp!602621))))

(declare-fun result!152664 () Bool)

(assert (=> tb!127589 (= result!152664 (and (inv!29363 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (dynLambda!11001 (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) lt!760411))) e!1279457))))

(assert (= tb!127589 b!2025531))

(declare-fun m!2464335 () Bool)

(assert (=> b!2025531 m!2464335))

(declare-fun m!2464337 () Bool)

(assert (=> tb!127589 m!2464337))

(assert (=> d!619552 t!189824))

(declare-fun b_and!161085 () Bool)

(assert (= b_and!161079 (and (=> t!189824 result!152664) b_and!161085)))

(declare-fun t!189826 () Bool)

(declare-fun tb!127591 () Bool)

(assert (=> (and b!2024898 (= (toChars!5518 (transformation!3986 (h!27583 rules!3198))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189826) tb!127591))

(declare-fun result!152666 () Bool)

(assert (= result!152666 result!152664))

(assert (=> d!619552 t!189826))

(declare-fun b_and!161087 () Bool)

(assert (= b_and!161081 (and (=> t!189826 result!152666) b_and!161087)))

(declare-fun tb!127593 () Bool)

(declare-fun t!189828 () Bool)

(assert (=> (and b!2024910 (= (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189828) tb!127593))

(declare-fun result!152668 () Bool)

(assert (= result!152668 result!152664))

(assert (=> d!619552 t!189828))

(declare-fun b_and!161089 () Bool)

(assert (= b_and!161083 (and (=> t!189828 result!152668) b_and!161089)))

(declare-fun b_lambda!68055 () Bool)

(assert (=> (not b_lambda!68055) (not d!619552)))

(assert (=> d!619552 t!189810))

(declare-fun b_and!161091 () Bool)

(assert (= b_and!161067 (and (=> t!189810 result!152650) b_and!161091)))

(assert (=> d!619552 t!189812))

(declare-fun b_and!161093 () Bool)

(assert (= b_and!161069 (and (=> t!189812 result!152654) b_and!161093)))

(assert (=> d!619552 t!189814))

(declare-fun b_and!161095 () Bool)

(assert (= b_and!161071 (and (=> t!189814 result!152656) b_and!161095)))

(assert (=> d!619552 m!2463523))

(declare-fun m!2464339 () Bool)

(assert (=> d!619552 m!2464339))

(assert (=> d!619552 m!2464129))

(declare-fun m!2464341 () Bool)

(assert (=> d!619552 m!2464341))

(assert (=> d!619552 m!2464341))

(declare-fun m!2464343 () Bool)

(assert (=> d!619552 m!2464343))

(assert (=> d!619552 m!2464129))

(assert (=> b!2024904 d!619552))

(declare-fun d!619554 () Bool)

(assert (=> d!619554 (= (list!9049 (charsOf!2526 separatorToken!354)) (list!9053 (c!327647 (charsOf!2526 separatorToken!354))))))

(declare-fun bs!420679 () Bool)

(assert (= bs!420679 d!619554))

(declare-fun m!2464345 () Bool)

(assert (=> bs!420679 m!2464345))

(assert (=> b!2024904 d!619554))

(declare-fun d!619556 () Bool)

(assert (=> d!619556 (= (isDefined!3944 lt!760405) (not (isEmpty!13815 lt!760405)))))

(declare-fun bs!420680 () Bool)

(assert (= bs!420680 d!619556))

(declare-fun m!2464347 () Bool)

(assert (=> bs!420680 m!2464347))

(assert (=> b!2024904 d!619556))

(declare-fun d!619558 () Bool)

(assert (=> d!619558 (= (list!9049 lt!760411) (list!9053 (c!327647 lt!760411)))))

(declare-fun bs!420681 () Bool)

(assert (= bs!420681 d!619558))

(declare-fun m!2464349 () Bool)

(assert (=> bs!420681 m!2464349))

(assert (=> b!2024904 d!619558))

(declare-fun d!619560 () Bool)

(declare-fun lt!760670 () BalanceConc!14652)

(assert (=> d!619560 (= (list!9049 lt!760670) (originalCharacters!4793 (h!27584 tokens!598)))))

(assert (=> d!619560 (= lt!760670 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (value!125192 (h!27584 tokens!598))))))

(assert (=> d!619560 (= (charsOf!2526 (h!27584 tokens!598)) lt!760670)))

(declare-fun b_lambda!68057 () Bool)

(assert (=> (not b_lambda!68057) (not d!619560)))

(declare-fun t!189830 () Bool)

(declare-fun tb!127595 () Bool)

(assert (=> (and b!2024927 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189830) tb!127595))

(declare-fun b!2025532 () Bool)

(declare-fun e!1279458 () Bool)

(declare-fun tp!602622 () Bool)

(assert (=> b!2025532 (= e!1279458 (and (inv!29362 (c!327647 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (value!125192 (h!27584 tokens!598))))) tp!602622))))

(declare-fun result!152670 () Bool)

(assert (=> tb!127595 (= result!152670 (and (inv!29363 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (value!125192 (h!27584 tokens!598)))) e!1279458))))

(assert (= tb!127595 b!2025532))

(declare-fun m!2464351 () Bool)

(assert (=> b!2025532 m!2464351))

(declare-fun m!2464353 () Bool)

(assert (=> tb!127595 m!2464353))

(assert (=> d!619560 t!189830))

(declare-fun b_and!161097 () Bool)

(assert (= b_and!161085 (and (=> t!189830 result!152670) b_and!161097)))

(declare-fun tb!127597 () Bool)

(declare-fun t!189832 () Bool)

(assert (=> (and b!2024898 (= (toChars!5518 (transformation!3986 (h!27583 rules!3198))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189832) tb!127597))

(declare-fun result!152672 () Bool)

(assert (= result!152672 result!152670))

(assert (=> d!619560 t!189832))

(declare-fun b_and!161099 () Bool)

(assert (= b_and!161087 (and (=> t!189832 result!152672) b_and!161099)))

(declare-fun tb!127599 () Bool)

(declare-fun t!189834 () Bool)

(assert (=> (and b!2024910 (= (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189834) tb!127599))

(declare-fun result!152674 () Bool)

(assert (= result!152674 result!152670))

(assert (=> d!619560 t!189834))

(declare-fun b_and!161101 () Bool)

(assert (= b_and!161089 (and (=> t!189834 result!152674) b_and!161101)))

(declare-fun m!2464355 () Bool)

(assert (=> d!619560 m!2464355))

(declare-fun m!2464357 () Bool)

(assert (=> d!619560 m!2464357))

(assert (=> b!2024904 d!619560))

(declare-fun d!619562 () Bool)

(declare-fun fromListB!1276 (List!22263) BalanceConc!14652)

(assert (=> d!619562 (= (seqFromList!2840 (originalCharacters!4793 (h!27584 tokens!598))) (fromListB!1276 (originalCharacters!4793 (h!27584 tokens!598))))))

(declare-fun bs!420682 () Bool)

(assert (= bs!420682 d!619562))

(declare-fun m!2464359 () Bool)

(assert (=> bs!420682 m!2464359))

(assert (=> b!2024904 d!619562))

(declare-fun d!619564 () Bool)

(assert (=> d!619564 (= (isDefined!3943 lt!760393) (not (isEmpty!13816 lt!760393)))))

(declare-fun bs!420683 () Bool)

(assert (= bs!420683 d!619564))

(declare-fun m!2464361 () Bool)

(assert (=> bs!420683 m!2464361))

(assert (=> b!2024904 d!619564))

(declare-fun b!2025533 () Bool)

(declare-fun e!1279459 () List!22263)

(assert (=> b!2025533 (= e!1279459 lt!760413)))

(declare-fun d!619566 () Bool)

(declare-fun e!1279460 () Bool)

(assert (=> d!619566 e!1279460))

(declare-fun res!888056 () Bool)

(assert (=> d!619566 (=> (not res!888056) (not e!1279460))))

(declare-fun lt!760671 () List!22263)

(assert (=> d!619566 (= res!888056 (= (content!3268 lt!760671) ((_ map or) (content!3268 lt!760414) (content!3268 lt!760413))))))

(assert (=> d!619566 (= lt!760671 e!1279459)))

(declare-fun c!327788 () Bool)

(assert (=> d!619566 (= c!327788 ((_ is Nil!22181) lt!760414))))

(assert (=> d!619566 (= (++!5993 lt!760414 lt!760413) lt!760671)))

(declare-fun b!2025536 () Bool)

(assert (=> b!2025536 (= e!1279460 (or (not (= lt!760413 Nil!22181)) (= lt!760671 lt!760414)))))

(declare-fun b!2025534 () Bool)

(assert (=> b!2025534 (= e!1279459 (Cons!22181 (h!27582 lt!760414) (++!5993 (t!189762 lt!760414) lt!760413)))))

(declare-fun b!2025535 () Bool)

(declare-fun res!888055 () Bool)

(assert (=> b!2025535 (=> (not res!888055) (not e!1279460))))

(assert (=> b!2025535 (= res!888055 (= (size!17328 lt!760671) (+ (size!17328 lt!760414) (size!17328 lt!760413))))))

(assert (= (and d!619566 c!327788) b!2025533))

(assert (= (and d!619566 (not c!327788)) b!2025534))

(assert (= (and d!619566 res!888056) b!2025535))

(assert (= (and b!2025535 res!888055) b!2025536))

(declare-fun m!2464363 () Bool)

(assert (=> d!619566 m!2464363))

(assert (=> d!619566 m!2463711))

(assert (=> d!619566 m!2463651))

(declare-fun m!2464365 () Bool)

(assert (=> b!2025534 m!2464365))

(declare-fun m!2464367 () Bool)

(assert (=> b!2025535 m!2464367))

(assert (=> b!2025535 m!2463717))

(assert (=> b!2025535 m!2463659))

(assert (=> b!2024904 d!619566))

(declare-fun d!619568 () Bool)

(declare-fun res!888059 () Bool)

(declare-fun e!1279463 () Bool)

(assert (=> d!619568 (=> (not res!888059) (not e!1279463))))

(declare-fun rulesValid!1489 (LexerInterface!3599 List!22264) Bool)

(assert (=> d!619568 (= res!888059 (rulesValid!1489 thiss!23328 rules!3198))))

(assert (=> d!619568 (= (rulesInvariant!3206 thiss!23328 rules!3198) e!1279463)))

(declare-fun b!2025539 () Bool)

(declare-datatypes ((List!22266 0))(
  ( (Nil!22184) (Cons!22184 (h!27585 String!25728) (t!189877 List!22266)) )
))
(declare-fun noDuplicateTag!1487 (LexerInterface!3599 List!22264 List!22266) Bool)

(assert (=> b!2025539 (= e!1279463 (noDuplicateTag!1487 thiss!23328 rules!3198 Nil!22184))))

(assert (= (and d!619568 res!888059) b!2025539))

(declare-fun m!2464369 () Bool)

(assert (=> d!619568 m!2464369))

(declare-fun m!2464371 () Bool)

(assert (=> b!2025539 m!2464371))

(assert (=> b!2024912 d!619568))

(declare-fun d!619570 () Bool)

(declare-fun lt!760674 () Bool)

(declare-fun isEmpty!13817 (List!22265) Bool)

(assert (=> d!619570 (= lt!760674 (isEmpty!13817 (list!9051 (_1!11898 (lex!1615 thiss!23328 rules!3198 (seqFromList!2840 lt!760414))))))))

(declare-fun isEmpty!13818 (Conc!7419) Bool)

(assert (=> d!619570 (= lt!760674 (isEmpty!13818 (c!327648 (_1!11898 (lex!1615 thiss!23328 rules!3198 (seqFromList!2840 lt!760414))))))))

(assert (=> d!619570 (= (isEmpty!13810 (_1!11898 (lex!1615 thiss!23328 rules!3198 (seqFromList!2840 lt!760414)))) lt!760674)))

(declare-fun bs!420684 () Bool)

(assert (= bs!420684 d!619570))

(declare-fun m!2464373 () Bool)

(assert (=> bs!420684 m!2464373))

(assert (=> bs!420684 m!2464373))

(declare-fun m!2464375 () Bool)

(assert (=> bs!420684 m!2464375))

(declare-fun m!2464377 () Bool)

(assert (=> bs!420684 m!2464377))

(assert (=> b!2024916 d!619570))

(declare-fun e!1279544 () Bool)

(declare-fun lt!760686 () tuple2!20858)

(declare-fun b!2025654 () Bool)

(declare-datatypes ((tuple2!20860 0))(
  ( (tuple2!20861 (_1!11899 List!22265) (_2!11899 List!22263)) )
))
(declare-fun lexList!976 (LexerInterface!3599 List!22264 List!22263) tuple2!20860)

(assert (=> b!2025654 (= e!1279544 (= (list!9049 (_2!11898 lt!760686)) (_2!11899 (lexList!976 thiss!23328 rules!3198 (list!9049 (seqFromList!2840 lt!760414))))))))

(declare-fun b!2025655 () Bool)

(declare-fun e!1279545 () Bool)

(assert (=> b!2025655 (= e!1279545 (not (isEmpty!13810 (_1!11898 lt!760686))))))

(declare-fun b!2025656 () Bool)

(declare-fun e!1279543 () Bool)

(assert (=> b!2025656 (= e!1279543 e!1279545)))

(declare-fun res!888103 () Bool)

(declare-fun size!17329 (BalanceConc!14652) Int)

(assert (=> b!2025656 (= res!888103 (< (size!17329 (_2!11898 lt!760686)) (size!17329 (seqFromList!2840 lt!760414))))))

(assert (=> b!2025656 (=> (not res!888103) (not e!1279545))))

(declare-fun d!619572 () Bool)

(assert (=> d!619572 e!1279544))

(declare-fun res!888104 () Bool)

(assert (=> d!619572 (=> (not res!888104) (not e!1279544))))

(assert (=> d!619572 (= res!888104 e!1279543)))

(declare-fun c!327797 () Bool)

(assert (=> d!619572 (= c!327797 (> (size!17327 (_1!11898 lt!760686)) 0))))

(declare-fun lexTailRecV2!699 (LexerInterface!3599 List!22264 BalanceConc!14652 BalanceConc!14652 BalanceConc!14652 BalanceConc!14654) tuple2!20858)

(assert (=> d!619572 (= lt!760686 (lexTailRecV2!699 thiss!23328 rules!3198 (seqFromList!2840 lt!760414) (BalanceConc!14653 Empty!7418) (seqFromList!2840 lt!760414) (BalanceConc!14655 Empty!7419)))))

(assert (=> d!619572 (= (lex!1615 thiss!23328 rules!3198 (seqFromList!2840 lt!760414)) lt!760686)))

(declare-fun b!2025657 () Bool)

(assert (=> b!2025657 (= e!1279543 (= (_2!11898 lt!760686) (seqFromList!2840 lt!760414)))))

(declare-fun b!2025658 () Bool)

(declare-fun res!888102 () Bool)

(assert (=> b!2025658 (=> (not res!888102) (not e!1279544))))

(assert (=> b!2025658 (= res!888102 (= (list!9051 (_1!11898 lt!760686)) (_1!11899 (lexList!976 thiss!23328 rules!3198 (list!9049 (seqFromList!2840 lt!760414))))))))

(assert (= (and d!619572 c!327797) b!2025656))

(assert (= (and d!619572 (not c!327797)) b!2025657))

(assert (= (and b!2025656 res!888103) b!2025655))

(assert (= (and d!619572 res!888104) b!2025658))

(assert (= (and b!2025658 res!888102) b!2025654))

(declare-fun m!2464421 () Bool)

(assert (=> b!2025658 m!2464421))

(assert (=> b!2025658 m!2463473))

(declare-fun m!2464423 () Bool)

(assert (=> b!2025658 m!2464423))

(assert (=> b!2025658 m!2464423))

(declare-fun m!2464425 () Bool)

(assert (=> b!2025658 m!2464425))

(declare-fun m!2464427 () Bool)

(assert (=> d!619572 m!2464427))

(assert (=> d!619572 m!2463473))

(assert (=> d!619572 m!2463473))

(declare-fun m!2464429 () Bool)

(assert (=> d!619572 m!2464429))

(declare-fun m!2464431 () Bool)

(assert (=> b!2025655 m!2464431))

(declare-fun m!2464433 () Bool)

(assert (=> b!2025656 m!2464433))

(assert (=> b!2025656 m!2463473))

(declare-fun m!2464435 () Bool)

(assert (=> b!2025656 m!2464435))

(declare-fun m!2464437 () Bool)

(assert (=> b!2025654 m!2464437))

(assert (=> b!2025654 m!2463473))

(assert (=> b!2025654 m!2464423))

(assert (=> b!2025654 m!2464423))

(assert (=> b!2025654 m!2464425))

(assert (=> b!2024916 d!619572))

(declare-fun d!619590 () Bool)

(assert (=> d!619590 (= (seqFromList!2840 lt!760414) (fromListB!1276 lt!760414))))

(declare-fun bs!420689 () Bool)

(assert (= bs!420689 d!619590))

(declare-fun m!2464439 () Bool)

(assert (=> bs!420689 m!2464439))

(assert (=> b!2024916 d!619590))

(declare-fun d!619592 () Bool)

(assert (=> d!619592 (= (isEmpty!13809 (_2!11897 lt!760402)) ((_ is Nil!22181) (_2!11897 lt!760402)))))

(assert (=> b!2024917 d!619592))

(declare-fun d!619594 () Bool)

(declare-fun lt!760687 () Bool)

(declare-fun e!1279546 () Bool)

(assert (=> d!619594 (= lt!760687 e!1279546)))

(declare-fun res!888105 () Bool)

(assert (=> d!619594 (=> (not res!888105) (not e!1279546))))

(assert (=> d!619594 (= res!888105 (= (list!9051 (_1!11898 (lex!1615 thiss!23328 rules!3198 (print!1561 thiss!23328 (singletonSeq!1962 (h!27584 tokens!598)))))) (list!9051 (singletonSeq!1962 (h!27584 tokens!598)))))))

(declare-fun e!1279547 () Bool)

(assert (=> d!619594 (= lt!760687 e!1279547)))

(declare-fun res!888106 () Bool)

(assert (=> d!619594 (=> (not res!888106) (not e!1279547))))

(declare-fun lt!760688 () tuple2!20858)

(assert (=> d!619594 (= res!888106 (= (size!17327 (_1!11898 lt!760688)) 1))))

(assert (=> d!619594 (= lt!760688 (lex!1615 thiss!23328 rules!3198 (print!1561 thiss!23328 (singletonSeq!1962 (h!27584 tokens!598)))))))

(assert (=> d!619594 (not (isEmpty!13808 rules!3198))))

(assert (=> d!619594 (= (rulesProduceIndividualToken!1771 thiss!23328 rules!3198 (h!27584 tokens!598)) lt!760687)))

(declare-fun b!2025659 () Bool)

(declare-fun res!888107 () Bool)

(assert (=> b!2025659 (=> (not res!888107) (not e!1279547))))

(assert (=> b!2025659 (= res!888107 (= (apply!5829 (_1!11898 lt!760688) 0) (h!27584 tokens!598)))))

(declare-fun b!2025660 () Bool)

(assert (=> b!2025660 (= e!1279547 (isEmpty!13812 (_2!11898 lt!760688)))))

(declare-fun b!2025661 () Bool)

(assert (=> b!2025661 (= e!1279546 (isEmpty!13812 (_2!11898 (lex!1615 thiss!23328 rules!3198 (print!1561 thiss!23328 (singletonSeq!1962 (h!27584 tokens!598)))))))))

(assert (= (and d!619594 res!888106) b!2025659))

(assert (= (and b!2025659 res!888107) b!2025660))

(assert (= (and d!619594 res!888105) b!2025661))

(assert (=> d!619594 m!2463461))

(assert (=> d!619594 m!2463461))

(declare-fun m!2464441 () Bool)

(assert (=> d!619594 m!2464441))

(declare-fun m!2464443 () Bool)

(assert (=> d!619594 m!2464443))

(assert (=> d!619594 m!2463461))

(declare-fun m!2464445 () Bool)

(assert (=> d!619594 m!2464445))

(assert (=> d!619594 m!2464441))

(declare-fun m!2464447 () Bool)

(assert (=> d!619594 m!2464447))

(assert (=> d!619594 m!2463481))

(declare-fun m!2464449 () Bool)

(assert (=> d!619594 m!2464449))

(declare-fun m!2464451 () Bool)

(assert (=> b!2025659 m!2464451))

(declare-fun m!2464453 () Bool)

(assert (=> b!2025660 m!2464453))

(assert (=> b!2025661 m!2463461))

(assert (=> b!2025661 m!2463461))

(assert (=> b!2025661 m!2464441))

(assert (=> b!2025661 m!2464441))

(assert (=> b!2025661 m!2464447))

(declare-fun m!2464455 () Bool)

(assert (=> b!2025661 m!2464455))

(assert (=> b!2024896 d!619594))

(declare-fun b!2025690 () Bool)

(declare-fun res!888128 () Bool)

(declare-fun e!1279567 () Bool)

(assert (=> b!2025690 (=> res!888128 e!1279567)))

(declare-fun tail!3050 (List!22263) List!22263)

(assert (=> b!2025690 (= res!888128 (not (isEmpty!13809 (tail!3050 lt!760409))))))

(declare-fun b!2025691 () Bool)

(assert (=> b!2025691 (= e!1279567 (not (= (head!4572 lt!760409) (c!327646 (regex!3986 lt!760410)))))))

(declare-fun b!2025692 () Bool)

(declare-fun e!1279564 () Bool)

(declare-fun lt!760691 () Bool)

(assert (=> b!2025692 (= e!1279564 (not lt!760691))))

(declare-fun b!2025693 () Bool)

(declare-fun e!1279566 () Bool)

(assert (=> b!2025693 (= e!1279566 e!1279567)))

(declare-fun res!888126 () Bool)

(assert (=> b!2025693 (=> res!888126 e!1279567)))

(declare-fun call!124249 () Bool)

(assert (=> b!2025693 (= res!888126 call!124249)))

(declare-fun d!619596 () Bool)

(declare-fun e!1279565 () Bool)

(assert (=> d!619596 e!1279565))

(declare-fun c!327804 () Bool)

(assert (=> d!619596 (= c!327804 ((_ is EmptyExpr!5411) (regex!3986 lt!760410)))))

(declare-fun e!1279562 () Bool)

(assert (=> d!619596 (= lt!760691 e!1279562)))

(declare-fun c!327806 () Bool)

(assert (=> d!619596 (= c!327806 (isEmpty!13809 lt!760409))))

(declare-fun validRegex!2173 (Regex!5411) Bool)

(assert (=> d!619596 (validRegex!2173 (regex!3986 lt!760410))))

(assert (=> d!619596 (= (matchR!2677 (regex!3986 lt!760410) lt!760409) lt!760691)))

(declare-fun b!2025694 () Bool)

(declare-fun derivativeStep!1406 (Regex!5411 C!10968) Regex!5411)

(assert (=> b!2025694 (= e!1279562 (matchR!2677 (derivativeStep!1406 (regex!3986 lt!760410) (head!4572 lt!760409)) (tail!3050 lt!760409)))))

(declare-fun b!2025695 () Bool)

(declare-fun e!1279563 () Bool)

(assert (=> b!2025695 (= e!1279563 (= (head!4572 lt!760409) (c!327646 (regex!3986 lt!760410))))))

(declare-fun b!2025696 () Bool)

(assert (=> b!2025696 (= e!1279565 (= lt!760691 call!124249))))

(declare-fun b!2025697 () Bool)

(declare-fun res!888125 () Bool)

(assert (=> b!2025697 (=> (not res!888125) (not e!1279563))))

(assert (=> b!2025697 (= res!888125 (isEmpty!13809 (tail!3050 lt!760409)))))

(declare-fun b!2025698 () Bool)

(declare-fun e!1279568 () Bool)

(assert (=> b!2025698 (= e!1279568 e!1279566)))

(declare-fun res!888127 () Bool)

(assert (=> b!2025698 (=> (not res!888127) (not e!1279566))))

(assert (=> b!2025698 (= res!888127 (not lt!760691))))

(declare-fun b!2025699 () Bool)

(declare-fun res!888124 () Bool)

(assert (=> b!2025699 (=> res!888124 e!1279568)))

(assert (=> b!2025699 (= res!888124 (not ((_ is ElementMatch!5411) (regex!3986 lt!760410))))))

(assert (=> b!2025699 (= e!1279564 e!1279568)))

(declare-fun b!2025700 () Bool)

(assert (=> b!2025700 (= e!1279565 e!1279564)))

(declare-fun c!327805 () Bool)

(assert (=> b!2025700 (= c!327805 ((_ is EmptyLang!5411) (regex!3986 lt!760410)))))

(declare-fun b!2025701 () Bool)

(declare-fun res!888131 () Bool)

(assert (=> b!2025701 (=> (not res!888131) (not e!1279563))))

(assert (=> b!2025701 (= res!888131 (not call!124249))))

(declare-fun b!2025702 () Bool)

(declare-fun res!888130 () Bool)

(assert (=> b!2025702 (=> res!888130 e!1279568)))

(assert (=> b!2025702 (= res!888130 e!1279563)))

(declare-fun res!888129 () Bool)

(assert (=> b!2025702 (=> (not res!888129) (not e!1279563))))

(assert (=> b!2025702 (= res!888129 lt!760691)))

(declare-fun bm!124244 () Bool)

(assert (=> bm!124244 (= call!124249 (isEmpty!13809 lt!760409))))

(declare-fun b!2025703 () Bool)

(declare-fun nullable!1647 (Regex!5411) Bool)

(assert (=> b!2025703 (= e!1279562 (nullable!1647 (regex!3986 lt!760410)))))

(assert (= (and d!619596 c!327806) b!2025703))

(assert (= (and d!619596 (not c!327806)) b!2025694))

(assert (= (and d!619596 c!327804) b!2025696))

(assert (= (and d!619596 (not c!327804)) b!2025700))

(assert (= (and b!2025700 c!327805) b!2025692))

(assert (= (and b!2025700 (not c!327805)) b!2025699))

(assert (= (and b!2025699 (not res!888124)) b!2025702))

(assert (= (and b!2025702 res!888129) b!2025701))

(assert (= (and b!2025701 res!888131) b!2025697))

(assert (= (and b!2025697 res!888125) b!2025695))

(assert (= (and b!2025702 (not res!888130)) b!2025698))

(assert (= (and b!2025698 res!888127) b!2025693))

(assert (= (and b!2025693 (not res!888126)) b!2025690))

(assert (= (and b!2025690 (not res!888128)) b!2025691))

(assert (= (or b!2025696 b!2025693 b!2025701) bm!124244))

(assert (=> b!2025695 m!2463449))

(declare-fun m!2464457 () Bool)

(assert (=> b!2025690 m!2464457))

(assert (=> b!2025690 m!2464457))

(declare-fun m!2464459 () Bool)

(assert (=> b!2025690 m!2464459))

(declare-fun m!2464461 () Bool)

(assert (=> bm!124244 m!2464461))

(assert (=> d!619596 m!2464461))

(declare-fun m!2464463 () Bool)

(assert (=> d!619596 m!2464463))

(assert (=> b!2025697 m!2464457))

(assert (=> b!2025697 m!2464457))

(assert (=> b!2025697 m!2464459))

(assert (=> b!2025694 m!2463449))

(assert (=> b!2025694 m!2463449))

(declare-fun m!2464465 () Bool)

(assert (=> b!2025694 m!2464465))

(assert (=> b!2025694 m!2464457))

(assert (=> b!2025694 m!2464465))

(assert (=> b!2025694 m!2464457))

(declare-fun m!2464467 () Bool)

(assert (=> b!2025694 m!2464467))

(declare-fun m!2464469 () Bool)

(assert (=> b!2025703 m!2464469))

(assert (=> b!2025691 m!2463449))

(assert (=> b!2024914 d!619596))

(declare-fun d!619598 () Bool)

(assert (=> d!619598 (= (get!7040 lt!760393) (v!26956 lt!760393))))

(assert (=> b!2024914 d!619598))

(declare-fun d!619600 () Bool)

(assert (=> d!619600 (= (inv!29355 (tag!4466 (rule!6215 (h!27584 tokens!598)))) (= (mod (str.len (value!125191 (tag!4466 (rule!6215 (h!27584 tokens!598))))) 2) 0))))

(assert (=> b!2024913 d!619600))

(declare-fun d!619602 () Bool)

(declare-fun res!888134 () Bool)

(declare-fun e!1279571 () Bool)

(assert (=> d!619602 (=> (not res!888134) (not e!1279571))))

(declare-fun semiInverseModEq!1603 (Int Int) Bool)

(assert (=> d!619602 (= res!888134 (semiInverseModEq!1603 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))))))

(assert (=> d!619602 (= (inv!29358 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) e!1279571)))

(declare-fun b!2025706 () Bool)

(declare-fun equivClasses!1530 (Int Int) Bool)

(assert (=> b!2025706 (= e!1279571 (equivClasses!1530 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))))))

(assert (= (and d!619602 res!888134) b!2025706))

(declare-fun m!2464471 () Bool)

(assert (=> d!619602 m!2464471))

(declare-fun m!2464473 () Bool)

(assert (=> b!2025706 m!2464473))

(assert (=> b!2024913 d!619602))

(declare-fun d!619604 () Bool)

(assert (=> d!619604 (= (isEmpty!13809 lt!760416) ((_ is Nil!22181) lt!760416))))

(assert (=> b!2024915 d!619604))

(declare-fun d!619606 () Bool)

(assert (=> d!619606 (not (matchR!2677 (regex!3986 (rule!6215 separatorToken!354)) lt!760409))))

(declare-fun lt!760694 () Unit!36827)

(declare-fun choose!12340 (Regex!5411 List!22263 C!10968) Unit!36827)

(assert (=> d!619606 (= lt!760694 (choose!12340 (regex!3986 (rule!6215 separatorToken!354)) lt!760409 lt!760398))))

(assert (=> d!619606 (validRegex!2173 (regex!3986 (rule!6215 separatorToken!354)))))

(assert (=> d!619606 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!312 (regex!3986 (rule!6215 separatorToken!354)) lt!760409 lt!760398) lt!760694)))

(declare-fun bs!420690 () Bool)

(assert (= bs!420690 d!619606))

(assert (=> bs!420690 m!2463535))

(declare-fun m!2464475 () Bool)

(assert (=> bs!420690 m!2464475))

(declare-fun m!2464477 () Bool)

(assert (=> bs!420690 m!2464477))

(assert (=> b!2024894 d!619606))

(declare-fun b!2025707 () Bool)

(declare-fun res!888139 () Bool)

(declare-fun e!1279577 () Bool)

(assert (=> b!2025707 (=> res!888139 e!1279577)))

(assert (=> b!2025707 (= res!888139 (not (isEmpty!13809 (tail!3050 lt!760409))))))

(declare-fun b!2025708 () Bool)

(assert (=> b!2025708 (= e!1279577 (not (= (head!4572 lt!760409) (c!327646 (regex!3986 (rule!6215 separatorToken!354))))))))

(declare-fun b!2025709 () Bool)

(declare-fun e!1279574 () Bool)

(declare-fun lt!760695 () Bool)

(assert (=> b!2025709 (= e!1279574 (not lt!760695))))

(declare-fun b!2025710 () Bool)

(declare-fun e!1279576 () Bool)

(assert (=> b!2025710 (= e!1279576 e!1279577)))

(declare-fun res!888137 () Bool)

(assert (=> b!2025710 (=> res!888137 e!1279577)))

(declare-fun call!124250 () Bool)

(assert (=> b!2025710 (= res!888137 call!124250)))

(declare-fun d!619608 () Bool)

(declare-fun e!1279575 () Bool)

(assert (=> d!619608 e!1279575))

(declare-fun c!327808 () Bool)

(assert (=> d!619608 (= c!327808 ((_ is EmptyExpr!5411) (regex!3986 (rule!6215 separatorToken!354))))))

(declare-fun e!1279572 () Bool)

(assert (=> d!619608 (= lt!760695 e!1279572)))

(declare-fun c!327810 () Bool)

(assert (=> d!619608 (= c!327810 (isEmpty!13809 lt!760409))))

(assert (=> d!619608 (validRegex!2173 (regex!3986 (rule!6215 separatorToken!354)))))

(assert (=> d!619608 (= (matchR!2677 (regex!3986 (rule!6215 separatorToken!354)) lt!760409) lt!760695)))

(declare-fun b!2025711 () Bool)

(assert (=> b!2025711 (= e!1279572 (matchR!2677 (derivativeStep!1406 (regex!3986 (rule!6215 separatorToken!354)) (head!4572 lt!760409)) (tail!3050 lt!760409)))))

(declare-fun b!2025712 () Bool)

(declare-fun e!1279573 () Bool)

(assert (=> b!2025712 (= e!1279573 (= (head!4572 lt!760409) (c!327646 (regex!3986 (rule!6215 separatorToken!354)))))))

(declare-fun b!2025713 () Bool)

(assert (=> b!2025713 (= e!1279575 (= lt!760695 call!124250))))

(declare-fun b!2025714 () Bool)

(declare-fun res!888136 () Bool)

(assert (=> b!2025714 (=> (not res!888136) (not e!1279573))))

(assert (=> b!2025714 (= res!888136 (isEmpty!13809 (tail!3050 lt!760409)))))

(declare-fun b!2025715 () Bool)

(declare-fun e!1279578 () Bool)

(assert (=> b!2025715 (= e!1279578 e!1279576)))

(declare-fun res!888138 () Bool)

(assert (=> b!2025715 (=> (not res!888138) (not e!1279576))))

(assert (=> b!2025715 (= res!888138 (not lt!760695))))

(declare-fun b!2025716 () Bool)

(declare-fun res!888135 () Bool)

(assert (=> b!2025716 (=> res!888135 e!1279578)))

(assert (=> b!2025716 (= res!888135 (not ((_ is ElementMatch!5411) (regex!3986 (rule!6215 separatorToken!354)))))))

(assert (=> b!2025716 (= e!1279574 e!1279578)))

(declare-fun b!2025717 () Bool)

(assert (=> b!2025717 (= e!1279575 e!1279574)))

(declare-fun c!327809 () Bool)

(assert (=> b!2025717 (= c!327809 ((_ is EmptyLang!5411) (regex!3986 (rule!6215 separatorToken!354))))))

(declare-fun b!2025718 () Bool)

(declare-fun res!888142 () Bool)

(assert (=> b!2025718 (=> (not res!888142) (not e!1279573))))

(assert (=> b!2025718 (= res!888142 (not call!124250))))

(declare-fun b!2025719 () Bool)

(declare-fun res!888141 () Bool)

(assert (=> b!2025719 (=> res!888141 e!1279578)))

(assert (=> b!2025719 (= res!888141 e!1279573)))

(declare-fun res!888140 () Bool)

(assert (=> b!2025719 (=> (not res!888140) (not e!1279573))))

(assert (=> b!2025719 (= res!888140 lt!760695)))

(declare-fun bm!124245 () Bool)

(assert (=> bm!124245 (= call!124250 (isEmpty!13809 lt!760409))))

(declare-fun b!2025720 () Bool)

(assert (=> b!2025720 (= e!1279572 (nullable!1647 (regex!3986 (rule!6215 separatorToken!354))))))

(assert (= (and d!619608 c!327810) b!2025720))

(assert (= (and d!619608 (not c!327810)) b!2025711))

(assert (= (and d!619608 c!327808) b!2025713))

(assert (= (and d!619608 (not c!327808)) b!2025717))

(assert (= (and b!2025717 c!327809) b!2025709))

(assert (= (and b!2025717 (not c!327809)) b!2025716))

(assert (= (and b!2025716 (not res!888135)) b!2025719))

(assert (= (and b!2025719 res!888140) b!2025718))

(assert (= (and b!2025718 res!888142) b!2025714))

(assert (= (and b!2025714 res!888136) b!2025712))

(assert (= (and b!2025719 (not res!888141)) b!2025715))

(assert (= (and b!2025715 res!888138) b!2025710))

(assert (= (and b!2025710 (not res!888137)) b!2025707))

(assert (= (and b!2025707 (not res!888139)) b!2025708))

(assert (= (or b!2025713 b!2025710 b!2025718) bm!124245))

(assert (=> b!2025712 m!2463449))

(assert (=> b!2025707 m!2464457))

(assert (=> b!2025707 m!2464457))

(assert (=> b!2025707 m!2464459))

(assert (=> bm!124245 m!2464461))

(assert (=> d!619608 m!2464461))

(assert (=> d!619608 m!2464477))

(assert (=> b!2025714 m!2464457))

(assert (=> b!2025714 m!2464457))

(assert (=> b!2025714 m!2464459))

(assert (=> b!2025711 m!2463449))

(assert (=> b!2025711 m!2463449))

(declare-fun m!2464479 () Bool)

(assert (=> b!2025711 m!2464479))

(assert (=> b!2025711 m!2464457))

(assert (=> b!2025711 m!2464479))

(assert (=> b!2025711 m!2464457))

(declare-fun m!2464481 () Bool)

(assert (=> b!2025711 m!2464481))

(declare-fun m!2464483 () Bool)

(assert (=> b!2025720 m!2464483))

(assert (=> b!2025708 m!2463449))

(assert (=> b!2024894 d!619608))

(declare-fun d!619610 () Bool)

(declare-fun res!888143 () Bool)

(declare-fun e!1279579 () Bool)

(assert (=> d!619610 (=> (not res!888143) (not e!1279579))))

(assert (=> d!619610 (= res!888143 (not (isEmpty!13809 (originalCharacters!4793 (h!27584 tokens!598)))))))

(assert (=> d!619610 (= (inv!29359 (h!27584 tokens!598)) e!1279579)))

(declare-fun b!2025721 () Bool)

(declare-fun res!888144 () Bool)

(assert (=> b!2025721 (=> (not res!888144) (not e!1279579))))

(assert (=> b!2025721 (= res!888144 (= (originalCharacters!4793 (h!27584 tokens!598)) (list!9049 (dynLambda!10999 (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (value!125192 (h!27584 tokens!598))))))))

(declare-fun b!2025722 () Bool)

(assert (=> b!2025722 (= e!1279579 (= (size!17324 (h!27584 tokens!598)) (size!17328 (originalCharacters!4793 (h!27584 tokens!598)))))))

(assert (= (and d!619610 res!888143) b!2025721))

(assert (= (and b!2025721 res!888144) b!2025722))

(declare-fun b_lambda!68079 () Bool)

(assert (=> (not b_lambda!68079) (not b!2025721)))

(assert (=> b!2025721 t!189830))

(declare-fun b_and!161111 () Bool)

(assert (= b_and!161097 (and (=> t!189830 result!152670) b_and!161111)))

(assert (=> b!2025721 t!189832))

(declare-fun b_and!161113 () Bool)

(assert (= b_and!161099 (and (=> t!189832 result!152672) b_and!161113)))

(assert (=> b!2025721 t!189834))

(declare-fun b_and!161115 () Bool)

(assert (= b_and!161101 (and (=> t!189834 result!152674) b_and!161115)))

(declare-fun m!2464485 () Bool)

(assert (=> d!619610 m!2464485))

(assert (=> b!2025721 m!2464357))

(assert (=> b!2025721 m!2464357))

(declare-fun m!2464487 () Bool)

(assert (=> b!2025721 m!2464487))

(declare-fun m!2464489 () Bool)

(assert (=> b!2025722 m!2464489))

(assert (=> b!2024900 d!619610))

(declare-fun d!619612 () Bool)

(assert (=> d!619612 (= (inv!29355 (tag!4466 (rule!6215 separatorToken!354))) (= (mod (str.len (value!125191 (tag!4466 (rule!6215 separatorToken!354)))) 2) 0))))

(assert (=> b!2024923 d!619612))

(declare-fun d!619614 () Bool)

(declare-fun res!888145 () Bool)

(declare-fun e!1279580 () Bool)

(assert (=> d!619614 (=> (not res!888145) (not e!1279580))))

(assert (=> d!619614 (= res!888145 (semiInverseModEq!1603 (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (toValue!5659 (transformation!3986 (rule!6215 separatorToken!354)))))))

(assert (=> d!619614 (= (inv!29358 (transformation!3986 (rule!6215 separatorToken!354))) e!1279580)))

(declare-fun b!2025723 () Bool)

(assert (=> b!2025723 (= e!1279580 (equivClasses!1530 (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (toValue!5659 (transformation!3986 (rule!6215 separatorToken!354)))))))

(assert (= (and d!619614 res!888145) b!2025723))

(declare-fun m!2464491 () Bool)

(assert (=> d!619614 m!2464491))

(declare-fun m!2464493 () Bool)

(assert (=> b!2025723 m!2464493))

(assert (=> b!2024923 d!619614))

(declare-fun d!619616 () Bool)

(declare-fun res!888150 () Bool)

(declare-fun e!1279585 () Bool)

(assert (=> d!619616 (=> res!888150 e!1279585)))

(assert (=> d!619616 (= res!888150 ((_ is Nil!22183) tokens!598))))

(assert (=> d!619616 (= (forall!4718 tokens!598 lambda!76393) e!1279585)))

(declare-fun b!2025728 () Bool)

(declare-fun e!1279586 () Bool)

(assert (=> b!2025728 (= e!1279585 e!1279586)))

(declare-fun res!888151 () Bool)

(assert (=> b!2025728 (=> (not res!888151) (not e!1279586))))

(declare-fun dynLambda!11003 (Int Token!7524) Bool)

(assert (=> b!2025728 (= res!888151 (dynLambda!11003 lambda!76393 (h!27584 tokens!598)))))

(declare-fun b!2025729 () Bool)

(assert (=> b!2025729 (= e!1279586 (forall!4718 (t!189764 tokens!598) lambda!76393))))

(assert (= (and d!619616 (not res!888150)) b!2025728))

(assert (= (and b!2025728 res!888151) b!2025729))

(declare-fun b_lambda!68081 () Bool)

(assert (=> (not b_lambda!68081) (not b!2025728)))

(declare-fun m!2464495 () Bool)

(assert (=> b!2025728 m!2464495))

(declare-fun m!2464497 () Bool)

(assert (=> b!2025729 m!2464497))

(assert (=> b!2024902 d!619616))

(declare-fun b!2025730 () Bool)

(declare-fun e!1279588 () Bool)

(assert (=> b!2025730 (= e!1279588 (inv!15 (value!125192 separatorToken!354)))))

(declare-fun d!619618 () Bool)

(declare-fun c!327811 () Bool)

(assert (=> d!619618 (= c!327811 ((_ is IntegerValue!12366) (value!125192 separatorToken!354)))))

(declare-fun e!1279587 () Bool)

(assert (=> d!619618 (= (inv!21 (value!125192 separatorToken!354)) e!1279587)))

(declare-fun b!2025731 () Bool)

(assert (=> b!2025731 (= e!1279587 (inv!16 (value!125192 separatorToken!354)))))

(declare-fun b!2025732 () Bool)

(declare-fun res!888152 () Bool)

(assert (=> b!2025732 (=> res!888152 e!1279588)))

(assert (=> b!2025732 (= res!888152 (not ((_ is IntegerValue!12368) (value!125192 separatorToken!354))))))

(declare-fun e!1279589 () Bool)

(assert (=> b!2025732 (= e!1279589 e!1279588)))

(declare-fun b!2025733 () Bool)

(assert (=> b!2025733 (= e!1279587 e!1279589)))

(declare-fun c!327812 () Bool)

(assert (=> b!2025733 (= c!327812 ((_ is IntegerValue!12367) (value!125192 separatorToken!354)))))

(declare-fun b!2025734 () Bool)

(assert (=> b!2025734 (= e!1279589 (inv!17 (value!125192 separatorToken!354)))))

(assert (= (and d!619618 c!327811) b!2025731))

(assert (= (and d!619618 (not c!327811)) b!2025733))

(assert (= (and b!2025733 c!327812) b!2025734))

(assert (= (and b!2025733 (not c!327812)) b!2025732))

(assert (= (and b!2025732 (not res!888152)) b!2025730))

(declare-fun m!2464499 () Bool)

(assert (=> b!2025730 m!2464499))

(declare-fun m!2464501 () Bool)

(assert (=> b!2025731 m!2464501))

(declare-fun m!2464503 () Bool)

(assert (=> b!2025734 m!2464503))

(assert (=> b!2024901 d!619618))

(declare-fun b!2025735 () Bool)

(declare-fun res!888157 () Bool)

(declare-fun e!1279595 () Bool)

(assert (=> b!2025735 (=> res!888157 e!1279595)))

(assert (=> b!2025735 (= res!888157 (not (isEmpty!13809 (tail!3050 lt!760414))))))

(declare-fun b!2025736 () Bool)

(assert (=> b!2025736 (= e!1279595 (not (= (head!4572 lt!760414) (c!327646 (regex!3986 lt!760406)))))))

(declare-fun b!2025737 () Bool)

(declare-fun e!1279592 () Bool)

(declare-fun lt!760696 () Bool)

(assert (=> b!2025737 (= e!1279592 (not lt!760696))))

(declare-fun b!2025738 () Bool)

(declare-fun e!1279594 () Bool)

(assert (=> b!2025738 (= e!1279594 e!1279595)))

(declare-fun res!888155 () Bool)

(assert (=> b!2025738 (=> res!888155 e!1279595)))

(declare-fun call!124251 () Bool)

(assert (=> b!2025738 (= res!888155 call!124251)))

(declare-fun d!619620 () Bool)

(declare-fun e!1279593 () Bool)

(assert (=> d!619620 e!1279593))

(declare-fun c!327813 () Bool)

(assert (=> d!619620 (= c!327813 ((_ is EmptyExpr!5411) (regex!3986 lt!760406)))))

(declare-fun e!1279590 () Bool)

(assert (=> d!619620 (= lt!760696 e!1279590)))

(declare-fun c!327815 () Bool)

(assert (=> d!619620 (= c!327815 (isEmpty!13809 lt!760414))))

(assert (=> d!619620 (validRegex!2173 (regex!3986 lt!760406))))

(assert (=> d!619620 (= (matchR!2677 (regex!3986 lt!760406) lt!760414) lt!760696)))

(declare-fun b!2025739 () Bool)

(assert (=> b!2025739 (= e!1279590 (matchR!2677 (derivativeStep!1406 (regex!3986 lt!760406) (head!4572 lt!760414)) (tail!3050 lt!760414)))))

(declare-fun b!2025740 () Bool)

(declare-fun e!1279591 () Bool)

(assert (=> b!2025740 (= e!1279591 (= (head!4572 lt!760414) (c!327646 (regex!3986 lt!760406))))))

(declare-fun b!2025741 () Bool)

(assert (=> b!2025741 (= e!1279593 (= lt!760696 call!124251))))

(declare-fun b!2025742 () Bool)

(declare-fun res!888154 () Bool)

(assert (=> b!2025742 (=> (not res!888154) (not e!1279591))))

(assert (=> b!2025742 (= res!888154 (isEmpty!13809 (tail!3050 lt!760414)))))

(declare-fun b!2025743 () Bool)

(declare-fun e!1279596 () Bool)

(assert (=> b!2025743 (= e!1279596 e!1279594)))

(declare-fun res!888156 () Bool)

(assert (=> b!2025743 (=> (not res!888156) (not e!1279594))))

(assert (=> b!2025743 (= res!888156 (not lt!760696))))

(declare-fun b!2025744 () Bool)

(declare-fun res!888153 () Bool)

(assert (=> b!2025744 (=> res!888153 e!1279596)))

(assert (=> b!2025744 (= res!888153 (not ((_ is ElementMatch!5411) (regex!3986 lt!760406))))))

(assert (=> b!2025744 (= e!1279592 e!1279596)))

(declare-fun b!2025745 () Bool)

(assert (=> b!2025745 (= e!1279593 e!1279592)))

(declare-fun c!327814 () Bool)

(assert (=> b!2025745 (= c!327814 ((_ is EmptyLang!5411) (regex!3986 lt!760406)))))

(declare-fun b!2025746 () Bool)

(declare-fun res!888160 () Bool)

(assert (=> b!2025746 (=> (not res!888160) (not e!1279591))))

(assert (=> b!2025746 (= res!888160 (not call!124251))))

(declare-fun b!2025747 () Bool)

(declare-fun res!888159 () Bool)

(assert (=> b!2025747 (=> res!888159 e!1279596)))

(assert (=> b!2025747 (= res!888159 e!1279591)))

(declare-fun res!888158 () Bool)

(assert (=> b!2025747 (=> (not res!888158) (not e!1279591))))

(assert (=> b!2025747 (= res!888158 lt!760696)))

(declare-fun bm!124246 () Bool)

(assert (=> bm!124246 (= call!124251 (isEmpty!13809 lt!760414))))

(declare-fun b!2025748 () Bool)

(assert (=> b!2025748 (= e!1279590 (nullable!1647 (regex!3986 lt!760406)))))

(assert (= (and d!619620 c!327815) b!2025748))

(assert (= (and d!619620 (not c!327815)) b!2025739))

(assert (= (and d!619620 c!327813) b!2025741))

(assert (= (and d!619620 (not c!327813)) b!2025745))

(assert (= (and b!2025745 c!327814) b!2025737))

(assert (= (and b!2025745 (not c!327814)) b!2025744))

(assert (= (and b!2025744 (not res!888153)) b!2025747))

(assert (= (and b!2025747 res!888158) b!2025746))

(assert (= (and b!2025746 res!888160) b!2025742))

(assert (= (and b!2025742 res!888154) b!2025740))

(assert (= (and b!2025747 (not res!888159)) b!2025743))

(assert (= (and b!2025743 res!888156) b!2025738))

(assert (= (and b!2025738 (not res!888155)) b!2025735))

(assert (= (and b!2025735 (not res!888157)) b!2025736))

(assert (= (or b!2025741 b!2025738 b!2025746) bm!124246))

(declare-fun m!2464505 () Bool)

(assert (=> b!2025740 m!2464505))

(declare-fun m!2464507 () Bool)

(assert (=> b!2025735 m!2464507))

(assert (=> b!2025735 m!2464507))

(declare-fun m!2464509 () Bool)

(assert (=> b!2025735 m!2464509))

(declare-fun m!2464511 () Bool)

(assert (=> bm!124246 m!2464511))

(assert (=> d!619620 m!2464511))

(declare-fun m!2464513 () Bool)

(assert (=> d!619620 m!2464513))

(assert (=> b!2025742 m!2464507))

(assert (=> b!2025742 m!2464507))

(assert (=> b!2025742 m!2464509))

(assert (=> b!2025739 m!2464505))

(assert (=> b!2025739 m!2464505))

(declare-fun m!2464515 () Bool)

(assert (=> b!2025739 m!2464515))

(assert (=> b!2025739 m!2464507))

(assert (=> b!2025739 m!2464515))

(assert (=> b!2025739 m!2464507))

(declare-fun m!2464517 () Bool)

(assert (=> b!2025739 m!2464517))

(declare-fun m!2464519 () Bool)

(assert (=> b!2025748 m!2464519))

(assert (=> b!2025736 m!2464505))

(assert (=> b!2024919 d!619620))

(declare-fun d!619622 () Bool)

(assert (=> d!619622 (= (get!7040 lt!760415) (v!26956 lt!760415))))

(assert (=> b!2024919 d!619622))

(declare-fun d!619624 () Bool)

(assert (=> d!619624 (= (inv!29355 (tag!4466 (h!27583 rules!3198))) (= (mod (str.len (value!125191 (tag!4466 (h!27583 rules!3198)))) 2) 0))))

(assert (=> b!2024899 d!619624))

(declare-fun d!619626 () Bool)

(declare-fun res!888161 () Bool)

(declare-fun e!1279597 () Bool)

(assert (=> d!619626 (=> (not res!888161) (not e!1279597))))

(assert (=> d!619626 (= res!888161 (semiInverseModEq!1603 (toChars!5518 (transformation!3986 (h!27583 rules!3198))) (toValue!5659 (transformation!3986 (h!27583 rules!3198)))))))

(assert (=> d!619626 (= (inv!29358 (transformation!3986 (h!27583 rules!3198))) e!1279597)))

(declare-fun b!2025749 () Bool)

(assert (=> b!2025749 (= e!1279597 (equivClasses!1530 (toChars!5518 (transformation!3986 (h!27583 rules!3198))) (toValue!5659 (transformation!3986 (h!27583 rules!3198)))))))

(assert (= (and d!619626 res!888161) b!2025749))

(declare-fun m!2464521 () Bool)

(assert (=> d!619626 m!2464521))

(declare-fun m!2464523 () Bool)

(assert (=> b!2025749 m!2464523))

(assert (=> b!2024899 d!619626))

(declare-fun b!2025750 () Bool)

(declare-fun res!888166 () Bool)

(declare-fun e!1279603 () Bool)

(assert (=> b!2025750 (=> res!888166 e!1279603)))

(assert (=> b!2025750 (= res!888166 (not (isEmpty!13809 (tail!3050 lt!760414))))))

(declare-fun b!2025751 () Bool)

(assert (=> b!2025751 (= e!1279603 (not (= (head!4572 lt!760414) (c!327646 (regex!3986 (rule!6215 (h!27584 tokens!598)))))))))

(declare-fun b!2025752 () Bool)

(declare-fun e!1279600 () Bool)

(declare-fun lt!760697 () Bool)

(assert (=> b!2025752 (= e!1279600 (not lt!760697))))

(declare-fun b!2025753 () Bool)

(declare-fun e!1279602 () Bool)

(assert (=> b!2025753 (= e!1279602 e!1279603)))

(declare-fun res!888164 () Bool)

(assert (=> b!2025753 (=> res!888164 e!1279603)))

(declare-fun call!124252 () Bool)

(assert (=> b!2025753 (= res!888164 call!124252)))

(declare-fun d!619628 () Bool)

(declare-fun e!1279601 () Bool)

(assert (=> d!619628 e!1279601))

(declare-fun c!327816 () Bool)

(assert (=> d!619628 (= c!327816 ((_ is EmptyExpr!5411) (regex!3986 (rule!6215 (h!27584 tokens!598)))))))

(declare-fun e!1279598 () Bool)

(assert (=> d!619628 (= lt!760697 e!1279598)))

(declare-fun c!327818 () Bool)

(assert (=> d!619628 (= c!327818 (isEmpty!13809 lt!760414))))

(assert (=> d!619628 (validRegex!2173 (regex!3986 (rule!6215 (h!27584 tokens!598))))))

(assert (=> d!619628 (= (matchR!2677 (regex!3986 (rule!6215 (h!27584 tokens!598))) lt!760414) lt!760697)))

(declare-fun b!2025754 () Bool)

(assert (=> b!2025754 (= e!1279598 (matchR!2677 (derivativeStep!1406 (regex!3986 (rule!6215 (h!27584 tokens!598))) (head!4572 lt!760414)) (tail!3050 lt!760414)))))

(declare-fun b!2025755 () Bool)

(declare-fun e!1279599 () Bool)

(assert (=> b!2025755 (= e!1279599 (= (head!4572 lt!760414) (c!327646 (regex!3986 (rule!6215 (h!27584 tokens!598))))))))

(declare-fun b!2025756 () Bool)

(assert (=> b!2025756 (= e!1279601 (= lt!760697 call!124252))))

(declare-fun b!2025757 () Bool)

(declare-fun res!888163 () Bool)

(assert (=> b!2025757 (=> (not res!888163) (not e!1279599))))

(assert (=> b!2025757 (= res!888163 (isEmpty!13809 (tail!3050 lt!760414)))))

(declare-fun b!2025758 () Bool)

(declare-fun e!1279604 () Bool)

(assert (=> b!2025758 (= e!1279604 e!1279602)))

(declare-fun res!888165 () Bool)

(assert (=> b!2025758 (=> (not res!888165) (not e!1279602))))

(assert (=> b!2025758 (= res!888165 (not lt!760697))))

(declare-fun b!2025759 () Bool)

(declare-fun res!888162 () Bool)

(assert (=> b!2025759 (=> res!888162 e!1279604)))

(assert (=> b!2025759 (= res!888162 (not ((_ is ElementMatch!5411) (regex!3986 (rule!6215 (h!27584 tokens!598))))))))

(assert (=> b!2025759 (= e!1279600 e!1279604)))

(declare-fun b!2025760 () Bool)

(assert (=> b!2025760 (= e!1279601 e!1279600)))

(declare-fun c!327817 () Bool)

(assert (=> b!2025760 (= c!327817 ((_ is EmptyLang!5411) (regex!3986 (rule!6215 (h!27584 tokens!598)))))))

(declare-fun b!2025761 () Bool)

(declare-fun res!888169 () Bool)

(assert (=> b!2025761 (=> (not res!888169) (not e!1279599))))

(assert (=> b!2025761 (= res!888169 (not call!124252))))

(declare-fun b!2025762 () Bool)

(declare-fun res!888168 () Bool)

(assert (=> b!2025762 (=> res!888168 e!1279604)))

(assert (=> b!2025762 (= res!888168 e!1279599)))

(declare-fun res!888167 () Bool)

(assert (=> b!2025762 (=> (not res!888167) (not e!1279599))))

(assert (=> b!2025762 (= res!888167 lt!760697)))

(declare-fun bm!124247 () Bool)

(assert (=> bm!124247 (= call!124252 (isEmpty!13809 lt!760414))))

(declare-fun b!2025763 () Bool)

(assert (=> b!2025763 (= e!1279598 (nullable!1647 (regex!3986 (rule!6215 (h!27584 tokens!598)))))))

(assert (= (and d!619628 c!327818) b!2025763))

(assert (= (and d!619628 (not c!327818)) b!2025754))

(assert (= (and d!619628 c!327816) b!2025756))

(assert (= (and d!619628 (not c!327816)) b!2025760))

(assert (= (and b!2025760 c!327817) b!2025752))

(assert (= (and b!2025760 (not c!327817)) b!2025759))

(assert (= (and b!2025759 (not res!888162)) b!2025762))

(assert (= (and b!2025762 res!888167) b!2025761))

(assert (= (and b!2025761 res!888169) b!2025757))

(assert (= (and b!2025757 res!888163) b!2025755))

(assert (= (and b!2025762 (not res!888168)) b!2025758))

(assert (= (and b!2025758 res!888165) b!2025753))

(assert (= (and b!2025753 (not res!888164)) b!2025750))

(assert (= (and b!2025750 (not res!888166)) b!2025751))

(assert (= (or b!2025756 b!2025753 b!2025761) bm!124247))

(assert (=> b!2025755 m!2464505))

(assert (=> b!2025750 m!2464507))

(assert (=> b!2025750 m!2464507))

(assert (=> b!2025750 m!2464509))

(assert (=> bm!124247 m!2464511))

(assert (=> d!619628 m!2464511))

(declare-fun m!2464525 () Bool)

(assert (=> d!619628 m!2464525))

(assert (=> b!2025757 m!2464507))

(assert (=> b!2025757 m!2464507))

(assert (=> b!2025757 m!2464509))

(assert (=> b!2025754 m!2464505))

(assert (=> b!2025754 m!2464505))

(declare-fun m!2464527 () Bool)

(assert (=> b!2025754 m!2464527))

(assert (=> b!2025754 m!2464507))

(assert (=> b!2025754 m!2464527))

(assert (=> b!2025754 m!2464507))

(declare-fun m!2464529 () Bool)

(assert (=> b!2025754 m!2464529))

(declare-fun m!2464531 () Bool)

(assert (=> b!2025763 m!2464531))

(assert (=> b!2025751 m!2464505))

(assert (=> b!2024920 d!619628))

(declare-fun d!619630 () Bool)

(declare-fun res!888174 () Bool)

(declare-fun e!1279607 () Bool)

(assert (=> d!619630 (=> (not res!888174) (not e!1279607))))

(assert (=> d!619630 (= res!888174 (validRegex!2173 (regex!3986 (rule!6215 (h!27584 tokens!598)))))))

(assert (=> d!619630 (= (ruleValid!1217 thiss!23328 (rule!6215 (h!27584 tokens!598))) e!1279607)))

(declare-fun b!2025768 () Bool)

(declare-fun res!888175 () Bool)

(assert (=> b!2025768 (=> (not res!888175) (not e!1279607))))

(assert (=> b!2025768 (= res!888175 (not (nullable!1647 (regex!3986 (rule!6215 (h!27584 tokens!598))))))))

(declare-fun b!2025769 () Bool)

(assert (=> b!2025769 (= e!1279607 (not (= (tag!4466 (rule!6215 (h!27584 tokens!598))) (String!25729 ""))))))

(assert (= (and d!619630 res!888174) b!2025768))

(assert (= (and b!2025768 res!888175) b!2025769))

(assert (=> d!619630 m!2464525))

(assert (=> b!2025768 m!2464531))

(assert (=> b!2024920 d!619630))

(declare-fun d!619632 () Bool)

(assert (=> d!619632 (ruleValid!1217 thiss!23328 (rule!6215 (h!27584 tokens!598)))))

(declare-fun lt!760700 () Unit!36827)

(declare-fun choose!12341 (LexerInterface!3599 Rule!7772 List!22264) Unit!36827)

(assert (=> d!619632 (= lt!760700 (choose!12341 thiss!23328 (rule!6215 (h!27584 tokens!598)) rules!3198))))

(assert (=> d!619632 (contains!4087 rules!3198 (rule!6215 (h!27584 tokens!598)))))

(assert (=> d!619632 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!688 thiss!23328 (rule!6215 (h!27584 tokens!598)) rules!3198) lt!760700)))

(declare-fun bs!420691 () Bool)

(assert (= bs!420691 d!619632))

(assert (=> bs!420691 m!2463427))

(declare-fun m!2464533 () Bool)

(assert (=> bs!420691 m!2464533))

(assert (=> bs!420691 m!2463467))

(assert (=> b!2024920 d!619632))

(declare-fun b!2025780 () Bool)

(declare-fun e!1279610 () Bool)

(declare-fun tp_is_empty!9213 () Bool)

(assert (=> b!2025780 (= e!1279610 tp_is_empty!9213)))

(declare-fun b!2025781 () Bool)

(declare-fun tp!602693 () Bool)

(declare-fun tp!602691 () Bool)

(assert (=> b!2025781 (= e!1279610 (and tp!602693 tp!602691))))

(declare-fun b!2025783 () Bool)

(declare-fun tp!602689 () Bool)

(declare-fun tp!602690 () Bool)

(assert (=> b!2025783 (= e!1279610 (and tp!602689 tp!602690))))

(declare-fun b!2025782 () Bool)

(declare-fun tp!602692 () Bool)

(assert (=> b!2025782 (= e!1279610 tp!602692)))

(assert (=> b!2024913 (= tp!602611 e!1279610)))

(assert (= (and b!2024913 ((_ is ElementMatch!5411) (regex!3986 (rule!6215 (h!27584 tokens!598))))) b!2025780))

(assert (= (and b!2024913 ((_ is Concat!9534) (regex!3986 (rule!6215 (h!27584 tokens!598))))) b!2025781))

(assert (= (and b!2024913 ((_ is Star!5411) (regex!3986 (rule!6215 (h!27584 tokens!598))))) b!2025782))

(assert (= (and b!2024913 ((_ is Union!5411) (regex!3986 (rule!6215 (h!27584 tokens!598))))) b!2025783))

(declare-fun b!2025788 () Bool)

(declare-fun e!1279613 () Bool)

(declare-fun tp!602696 () Bool)

(assert (=> b!2025788 (= e!1279613 (and tp_is_empty!9213 tp!602696))))

(assert (=> b!2024926 (= tp!602612 e!1279613)))

(assert (= (and b!2024926 ((_ is Cons!22181) (originalCharacters!4793 (h!27584 tokens!598)))) b!2025788))

(declare-fun b!2025799 () Bool)

(declare-fun b_free!56493 () Bool)

(declare-fun b_next!57197 () Bool)

(assert (=> b!2025799 (= b_free!56493 (not b_next!57197))))

(declare-fun tb!127621 () Bool)

(declare-fun t!189858 () Bool)

(assert (=> (and b!2025799 (= (toValue!5659 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189858) tb!127621))

(declare-fun result!152710 () Bool)

(assert (= result!152710 result!152650))

(assert (=> d!619496 t!189858))

(declare-fun t!189860 () Bool)

(declare-fun tb!127623 () Bool)

(assert (=> (and b!2025799 (= (toValue!5659 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189860) tb!127623))

(declare-fun result!152712 () Bool)

(assert (= result!152712 result!152658))

(assert (=> d!619496 t!189860))

(assert (=> d!619552 t!189858))

(declare-fun tp!602705 () Bool)

(declare-fun b_and!161117 () Bool)

(assert (=> b!2025799 (= tp!602705 (and (=> t!189858 result!152710) (=> t!189860 result!152712) b_and!161117))))

(declare-fun b_free!56495 () Bool)

(declare-fun b_next!57199 () Bool)

(assert (=> b!2025799 (= b_free!56495 (not b_next!57199))))

(declare-fun t!189862 () Bool)

(declare-fun tb!127625 () Bool)

(assert (=> (and b!2025799 (= (toChars!5518 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189862) tb!127625))

(declare-fun result!152714 () Bool)

(assert (= result!152714 result!152670))

(assert (=> d!619560 t!189862))

(assert (=> b!2025721 t!189862))

(declare-fun t!189864 () Bool)

(declare-fun tb!127627 () Bool)

(assert (=> (and b!2025799 (= (toChars!5518 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189864) tb!127627))

(declare-fun result!152716 () Bool)

(assert (= result!152716 result!152664))

(assert (=> d!619552 t!189864))

(declare-fun t!189866 () Bool)

(declare-fun tb!127629 () Bool)

(assert (=> (and b!2025799 (= (toChars!5518 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354)))) t!189866) tb!127629))

(declare-fun result!152718 () Bool)

(assert (= result!152718 result!152636))

(assert (=> b!2025202 t!189866))

(assert (=> d!619546 t!189866))

(declare-fun tp!602706 () Bool)

(declare-fun b_and!161119 () Bool)

(assert (=> b!2025799 (= tp!602706 (and (=> t!189866 result!152718) (=> t!189862 result!152714) (=> t!189864 result!152716) b_and!161119))))

(declare-fun e!1279624 () Bool)

(assert (=> b!2025799 (= e!1279624 (and tp!602705 tp!602706))))

(declare-fun b!2025798 () Bool)

(declare-fun tp!602708 () Bool)

(declare-fun e!1279623 () Bool)

(assert (=> b!2025798 (= e!1279623 (and tp!602708 (inv!29355 (tag!4466 (h!27583 (t!189763 rules!3198)))) (inv!29358 (transformation!3986 (h!27583 (t!189763 rules!3198)))) e!1279624))))

(declare-fun b!2025797 () Bool)

(declare-fun e!1279622 () Bool)

(declare-fun tp!602707 () Bool)

(assert (=> b!2025797 (= e!1279622 (and e!1279623 tp!602707))))

(assert (=> b!2024911 (= tp!602605 e!1279622)))

(assert (= b!2025798 b!2025799))

(assert (= b!2025797 b!2025798))

(assert (= (and b!2024911 ((_ is Cons!22182) (t!189763 rules!3198))) b!2025797))

(declare-fun m!2464535 () Bool)

(assert (=> b!2025798 m!2464535))

(declare-fun m!2464537 () Bool)

(assert (=> b!2025798 m!2464537))

(declare-fun b!2025813 () Bool)

(declare-fun b_free!56497 () Bool)

(declare-fun b_next!57201 () Bool)

(assert (=> b!2025813 (= b_free!56497 (not b_next!57201))))

(declare-fun t!189868 () Bool)

(declare-fun tb!127631 () Bool)

(assert (=> (and b!2025813 (= (toValue!5659 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189868) tb!127631))

(declare-fun result!152722 () Bool)

(assert (= result!152722 result!152650))

(assert (=> d!619496 t!189868))

(declare-fun t!189870 () Bool)

(declare-fun tb!127633 () Bool)

(assert (=> (and b!2025813 (= (toValue!5659 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189870) tb!127633))

(declare-fun result!152724 () Bool)

(assert (= result!152724 result!152658))

(assert (=> d!619496 t!189870))

(assert (=> d!619552 t!189868))

(declare-fun tp!602723 () Bool)

(declare-fun b_and!161121 () Bool)

(assert (=> b!2025813 (= tp!602723 (and (=> t!189868 result!152722) (=> t!189870 result!152724) b_and!161121))))

(declare-fun b_free!56499 () Bool)

(declare-fun b_next!57203 () Bool)

(assert (=> b!2025813 (= b_free!56499 (not b_next!57203))))

(declare-fun t!189872 () Bool)

(declare-fun tb!127635 () Bool)

(assert (=> (and b!2025813 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189872) tb!127635))

(declare-fun result!152726 () Bool)

(assert (= result!152726 result!152670))

(assert (=> d!619560 t!189872))

(assert (=> b!2025721 t!189872))

(declare-fun t!189874 () Bool)

(declare-fun tb!127637 () Bool)

(assert (=> (and b!2025813 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598))))) t!189874) tb!127637))

(declare-fun result!152728 () Bool)

(assert (= result!152728 result!152664))

(assert (=> d!619552 t!189874))

(declare-fun t!189876 () Bool)

(declare-fun tb!127639 () Bool)

(assert (=> (and b!2025813 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354)))) t!189876) tb!127639))

(declare-fun result!152730 () Bool)

(assert (= result!152730 result!152636))

(assert (=> b!2025202 t!189876))

(assert (=> d!619546 t!189876))

(declare-fun b_and!161123 () Bool)

(declare-fun tp!602719 () Bool)

(assert (=> b!2025813 (= tp!602719 (and (=> t!189872 result!152726) (=> t!189874 result!152728) (=> t!189876 result!152730) b_and!161123))))

(declare-fun e!1279642 () Bool)

(assert (=> b!2024900 (= tp!602608 e!1279642)))

(declare-fun e!1279638 () Bool)

(declare-fun tp!602721 () Bool)

(declare-fun e!1279640 () Bool)

(declare-fun b!2025812 () Bool)

(assert (=> b!2025812 (= e!1279640 (and tp!602721 (inv!29355 (tag!4466 (rule!6215 (h!27584 (t!189764 tokens!598))))) (inv!29358 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) e!1279638))))

(declare-fun e!1279643 () Bool)

(declare-fun b!2025810 () Bool)

(declare-fun tp!602722 () Bool)

(assert (=> b!2025810 (= e!1279642 (and (inv!29359 (h!27584 (t!189764 tokens!598))) e!1279643 tp!602722))))

(assert (=> b!2025813 (= e!1279638 (and tp!602723 tp!602719))))

(declare-fun tp!602720 () Bool)

(declare-fun b!2025811 () Bool)

(assert (=> b!2025811 (= e!1279643 (and (inv!21 (value!125192 (h!27584 (t!189764 tokens!598)))) e!1279640 tp!602720))))

(assert (= b!2025812 b!2025813))

(assert (= b!2025811 b!2025812))

(assert (= b!2025810 b!2025811))

(assert (= (and b!2024900 ((_ is Cons!22183) (t!189764 tokens!598))) b!2025810))

(declare-fun m!2464539 () Bool)

(assert (=> b!2025812 m!2464539))

(declare-fun m!2464541 () Bool)

(assert (=> b!2025812 m!2464541))

(declare-fun m!2464543 () Bool)

(assert (=> b!2025810 m!2464543))

(declare-fun m!2464545 () Bool)

(assert (=> b!2025811 m!2464545))

(declare-fun b!2025814 () Bool)

(declare-fun e!1279644 () Bool)

(assert (=> b!2025814 (= e!1279644 tp_is_empty!9213)))

(declare-fun b!2025815 () Bool)

(declare-fun tp!602728 () Bool)

(declare-fun tp!602726 () Bool)

(assert (=> b!2025815 (= e!1279644 (and tp!602728 tp!602726))))

(declare-fun b!2025817 () Bool)

(declare-fun tp!602724 () Bool)

(declare-fun tp!602725 () Bool)

(assert (=> b!2025817 (= e!1279644 (and tp!602724 tp!602725))))

(declare-fun b!2025816 () Bool)

(declare-fun tp!602727 () Bool)

(assert (=> b!2025816 (= e!1279644 tp!602727)))

(assert (=> b!2024923 (= tp!602607 e!1279644)))

(assert (= (and b!2024923 ((_ is ElementMatch!5411) (regex!3986 (rule!6215 separatorToken!354)))) b!2025814))

(assert (= (and b!2024923 ((_ is Concat!9534) (regex!3986 (rule!6215 separatorToken!354)))) b!2025815))

(assert (= (and b!2024923 ((_ is Star!5411) (regex!3986 (rule!6215 separatorToken!354)))) b!2025816))

(assert (= (and b!2024923 ((_ is Union!5411) (regex!3986 (rule!6215 separatorToken!354)))) b!2025817))

(declare-fun b!2025818 () Bool)

(declare-fun e!1279645 () Bool)

(declare-fun tp!602729 () Bool)

(assert (=> b!2025818 (= e!1279645 (and tp_is_empty!9213 tp!602729))))

(assert (=> b!2024901 (= tp!602601 e!1279645)))

(assert (= (and b!2024901 ((_ is Cons!22181) (originalCharacters!4793 separatorToken!354))) b!2025818))

(declare-fun b!2025819 () Bool)

(declare-fun e!1279646 () Bool)

(assert (=> b!2025819 (= e!1279646 tp_is_empty!9213)))

(declare-fun b!2025820 () Bool)

(declare-fun tp!602734 () Bool)

(declare-fun tp!602732 () Bool)

(assert (=> b!2025820 (= e!1279646 (and tp!602734 tp!602732))))

(declare-fun b!2025822 () Bool)

(declare-fun tp!602730 () Bool)

(declare-fun tp!602731 () Bool)

(assert (=> b!2025822 (= e!1279646 (and tp!602730 tp!602731))))

(declare-fun b!2025821 () Bool)

(declare-fun tp!602733 () Bool)

(assert (=> b!2025821 (= e!1279646 tp!602733)))

(assert (=> b!2024899 (= tp!602604 e!1279646)))

(assert (= (and b!2024899 ((_ is ElementMatch!5411) (regex!3986 (h!27583 rules!3198)))) b!2025819))

(assert (= (and b!2024899 ((_ is Concat!9534) (regex!3986 (h!27583 rules!3198)))) b!2025820))

(assert (= (and b!2024899 ((_ is Star!5411) (regex!3986 (h!27583 rules!3198)))) b!2025821))

(assert (= (and b!2024899 ((_ is Union!5411) (regex!3986 (h!27583 rules!3198)))) b!2025822))

(declare-fun b_lambda!68083 () Bool)

(assert (= b_lambda!68045 (or (and b!2024927 b_free!56473) (and b!2025813 b_free!56497 (= (toValue!5659 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024898 b_free!56477 (= (toValue!5659 (transformation!3986 (h!27583 rules!3198))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024910 b_free!56481 (= (toValue!5659 (transformation!3986 (rule!6215 separatorToken!354))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2025799 b_free!56493 (= (toValue!5659 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) b_lambda!68083)))

(declare-fun b_lambda!68085 () Bool)

(assert (= b_lambda!68057 (or (and b!2024910 b_free!56483 (= (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2025813 b_free!56499 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024898 b_free!56479 (= (toChars!5518 (transformation!3986 (h!27583 rules!3198))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2025799 b_free!56495 (= (toChars!5518 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024927 b_free!56475) b_lambda!68085)))

(declare-fun b_lambda!68087 () Bool)

(assert (= b_lambda!68081 (or b!2024902 b_lambda!68087)))

(declare-fun bs!420692 () Bool)

(declare-fun d!619634 () Bool)

(assert (= bs!420692 (and d!619634 b!2024902)))

(assert (=> bs!420692 (= (dynLambda!11003 lambda!76393 (h!27584 tokens!598)) (not (isSeparator!3986 (rule!6215 (h!27584 tokens!598)))))))

(assert (=> b!2025728 d!619634))

(declare-fun b_lambda!68089 () Bool)

(assert (= b_lambda!68051 (or (and b!2024927 b_free!56475 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))))) (and b!2025799 b_free!56495 (= (toChars!5518 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))))) (and b!2025813 b_free!56499 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))))) (and b!2024898 b_free!56479 (= (toChars!5518 (transformation!3986 (h!27583 rules!3198))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))))) (and b!2024910 b_free!56483) b_lambda!68089)))

(declare-fun b_lambda!68091 () Bool)

(assert (= b_lambda!68079 (or (and b!2024910 b_free!56483 (= (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2025813 b_free!56499 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024898 b_free!56479 (= (toChars!5518 (transformation!3986 (h!27583 rules!3198))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2025799 b_free!56495 (= (toChars!5518 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024927 b_free!56475) b_lambda!68091)))

(declare-fun b_lambda!68093 () Bool)

(assert (= b_lambda!68039 (or (and b!2024927 b_free!56475 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))))) (and b!2025799 b_free!56495 (= (toChars!5518 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))))) (and b!2025813 b_free!56499 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))))) (and b!2024898 b_free!56479 (= (toChars!5518 (transformation!3986 (h!27583 rules!3198))) (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))))) (and b!2024910 b_free!56483) b_lambda!68093)))

(declare-fun b_lambda!68095 () Bool)

(assert (= b_lambda!68055 (or (and b!2024927 b_free!56473) (and b!2025813 b_free!56497 (= (toValue!5659 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024898 b_free!56477 (= (toValue!5659 (transformation!3986 (h!27583 rules!3198))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024910 b_free!56481 (= (toValue!5659 (transformation!3986 (rule!6215 separatorToken!354))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2025799 b_free!56493 (= (toValue!5659 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) b_lambda!68095)))

(declare-fun b_lambda!68097 () Bool)

(assert (= b_lambda!68047 (or (and b!2024927 b_free!56473) (and b!2025813 b_free!56497 (= (toValue!5659 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024898 b_free!56477 (= (toValue!5659 (transformation!3986 (h!27583 rules!3198))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024910 b_free!56481 (= (toValue!5659 (transformation!3986 (rule!6215 separatorToken!354))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2025799 b_free!56493 (= (toValue!5659 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toValue!5659 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) b_lambda!68097)))

(declare-fun b_lambda!68099 () Bool)

(assert (= b_lambda!68053 (or (and b!2024910 b_free!56483 (= (toChars!5518 (transformation!3986 (rule!6215 separatorToken!354))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2025813 b_free!56499 (= (toChars!5518 (transformation!3986 (rule!6215 (h!27584 (t!189764 tokens!598))))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024898 b_free!56479 (= (toChars!5518 (transformation!3986 (h!27583 rules!3198))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2025799 b_free!56495 (= (toChars!5518 (transformation!3986 (h!27583 (t!189763 rules!3198)))) (toChars!5518 (transformation!3986 (rule!6215 (h!27584 tokens!598)))))) (and b!2024927 b_free!56475) b_lambda!68099)))

(check-sat b_and!161093 (not d!619554) (not b!2025232) (not b!2025241) (not b!2025203) (not b!2025798) (not b!2025358) (not b!2025661) (not d!619556) (not d!619458) (not b!2025344) (not b!2025060) (not b_next!57187) (not b!2025493) (not b!2025235) (not d!619464) (not b!2024990) (not b!2025731) tp_is_empty!9213 (not d!619372) (not bm!124245) (not d!619412) (not b!2025797) (not b!2025736) (not d!619492) (not d!619614) (not b!2025720) (not b!2025359) (not b!2025708) (not d!619620) (not b!2025253) (not d!619628) (not b!2025781) (not b!2025240) (not b!2025531) (not d!619416) (not b!2025697) (not b!2025739) (not b!2025783) (not b!2024989) (not tb!127577) (not d!619392) (not b!2025516) (not b!2025208) (not b!2025173) (not b!2025522) (not d!619570) (not b!2025658) (not b!2025517) (not b!2025492) (not d!619548) (not bm!124235) (not b_lambda!68091) (not b!2025817) (not d!619410) (not d!619560) (not b!2025350) (not d!619562) (not d!619442) (not bm!124219) (not b!2025354) (not d!619630) (not bm!124220) (not d!619402) (not b!2025042) (not b!2024997) (not b_lambda!68093) (not d!619594) (not b!2025496) (not b_lambda!68095) (not tb!127595) (not b!2025068) (not d!619398) (not b!2025534) (not bm!124177) (not b!2025714) (not b!2025690) (not b!2025202) (not b!2025172) (not b!2025722) (not b_lambda!68089) (not b!2025499) (not bm!124178) (not b!2025041) (not b!2025357) (not b_lambda!68099) (not bm!124239) (not b!2025729) (not b!2025660) (not b!2025707) (not d!619550) (not b!2025013) (not b!2025734) (not b!2025014) (not b!2025750) (not b!2025820) (not d!619552) (not d!619386) (not b!2025348) (not b!2025356) (not b!2025539) (not b_next!57179) (not bm!124246) (not d!619564) (not d!619420) (not b!2025763) (not d!619546) (not b!2025532) (not b!2025706) (not b!2025049) (not b_lambda!68087) (not b_next!57197) (not b!2025231) (not b!2025755) (not b!2025002) (not b!2025822) (not b!2025341) (not b!2025812) (not d!619494) (not d!619606) (not d!619596) (not bm!124174) (not d!619496) (not b!2025355) (not b!2025346) (not b!2025711) (not b!2025352) (not d!619610) (not b!2025816) (not b!2025252) (not b!2025723) (not b!2025810) (not d!619400) (not b!2025063) (not b!2025519) (not bm!124181) (not b_lambda!68085) (not bm!124237) (not bm!124175) (not b_lambda!68083) b_and!161123 (not b!2025654) b_and!161115 (not b!2025749) (not d!619632) (not b!2025360) (not b!2025079) (not b!2025748) (not b!2025659) (not d!619404) (not b!2025788) (not b!2025691) (not d!619572) (not d!619566) (not b!2025695) (not d!619558) (not b!2025815) (not b_next!57199) b_and!161111 (not b!2025740) (not bm!124247) (not b!2025730) (not b!2025340) (not d!619414) (not b!2025694) (not b!2025735) (not bm!124179) (not d!619602) (not b!2025768) (not b!2025062) (not d!619444) (not b!2025757) (not b!2025782) b_and!161095 (not b!2025188) b_and!161117 (not tb!127565) (not d!619500) (not b!2025342) (not b!2025712) (not b_next!57177) (not b_lambda!68097) b_and!161121 (not b!2025754) (not d!619608) (not b!2025525) (not b!2025742) (not b!2025351) (not bm!124244) (not b!2025655) (not b_next!57183) (not b!2025535) (not d!619388) (not b!2025182) b_and!161113 (not b!2025703) (not d!619590) (not b!2025077) (not b!2025491) (not tb!127583) (not b!2025066) b_and!161091 (not b!2025656) (not b!2025751) (not b!2025345) (not b!2024991) (not d!619626) (not b_next!57181) (not b_next!57201) (not b_next!57185) (not b_next!57203) (not b!2025721) (not b!2025818) (not d!619418) b_and!161119 (not b!2025069) (not d!619568) (not b!2025347) (not b!2025811) (not b!2025821) (not tb!127589) (not d!619406) (not b!2025523))
(check-sat b_and!161093 (not b_next!57187) (not b_next!57179) (not b_next!57197) b_and!161095 b_and!161117 b_and!161091 b_and!161123 b_and!161115 (not b_next!57199) b_and!161111 (not b_next!57177) b_and!161121 b_and!161113 (not b_next!57183) b_and!161119 (not b_next!57181) (not b_next!57201) (not b_next!57185) (not b_next!57203))
