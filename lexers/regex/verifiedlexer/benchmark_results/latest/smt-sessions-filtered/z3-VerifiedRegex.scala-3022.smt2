; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!180370 () Bool)

(assert start!180370)

(declare-fun b!1821858 () Bool)

(declare-fun b_free!50655 () Bool)

(declare-fun b_next!51359 () Bool)

(assert (=> b!1821858 (= b_free!50655 (not b_next!51359))))

(declare-fun tp!515198 () Bool)

(declare-fun b_and!141341 () Bool)

(assert (=> b!1821858 (= tp!515198 b_and!141341)))

(declare-fun b_free!50657 () Bool)

(declare-fun b_next!51361 () Bool)

(assert (=> b!1821858 (= b_free!50657 (not b_next!51361))))

(declare-fun tp!515195 () Bool)

(declare-fun b_and!141343 () Bool)

(assert (=> b!1821858 (= tp!515195 b_and!141343)))

(declare-fun b!1821847 () Bool)

(declare-fun b_free!50659 () Bool)

(declare-fun b_next!51363 () Bool)

(assert (=> b!1821847 (= b_free!50659 (not b_next!51363))))

(declare-fun tp!515200 () Bool)

(declare-fun b_and!141345 () Bool)

(assert (=> b!1821847 (= tp!515200 b_and!141345)))

(declare-fun b_free!50661 () Bool)

(declare-fun b_next!51365 () Bool)

(assert (=> b!1821847 (= b_free!50661 (not b_next!51365))))

(declare-fun tp!515192 () Bool)

(declare-fun b_and!141347 () Bool)

(assert (=> b!1821847 (= tp!515192 b_and!141347)))

(declare-fun b!1821850 () Bool)

(declare-fun b_free!50663 () Bool)

(declare-fun b_next!51367 () Bool)

(assert (=> b!1821850 (= b_free!50663 (not b_next!51367))))

(declare-fun tp!515188 () Bool)

(declare-fun b_and!141349 () Bool)

(assert (=> b!1821850 (= tp!515188 b_and!141349)))

(declare-fun b_free!50665 () Bool)

(declare-fun b_next!51369 () Bool)

(assert (=> b!1821850 (= b_free!50665 (not b_next!51369))))

(declare-fun tp!515199 () Bool)

(declare-fun b_and!141351 () Bool)

(assert (=> b!1821850 (= tp!515199 b_and!141351)))

(declare-fun b!1821844 () Bool)

(assert (=> b!1821844 true))

(declare-fun e!1164445 () Bool)

(declare-fun e!1164454 () Bool)

(assert (=> b!1821844 (= e!1164445 e!1164454)))

(declare-fun res!819347 () Bool)

(assert (=> b!1821844 (=> res!819347 e!1164454)))

(declare-datatypes ((List!20060 0))(
  ( (Nil!19990) (Cons!19990 (h!25391 (_ BitVec 16)) (t!169937 List!20060)) )
))
(declare-datatypes ((TokenValue!3695 0))(
  ( (FloatLiteralValue!7390 (text!26310 List!20060)) (TokenValueExt!3694 (__x!12692 Int)) (Broken!18475 (value!112383 List!20060)) (Object!3764) (End!3695) (Def!3695) (Underscore!3695) (Match!3695) (Else!3695) (Error!3695) (Case!3695) (If!3695) (Extends!3695) (Abstract!3695) (Class!3695) (Val!3695) (DelimiterValue!7390 (del!3755 List!20060)) (KeywordValue!3701 (value!112384 List!20060)) (CommentValue!7390 (value!112385 List!20060)) (WhitespaceValue!7390 (value!112386 List!20060)) (IndentationValue!3695 (value!112387 List!20060)) (String!22806) (Int32!3695) (Broken!18476 (value!112388 List!20060)) (Boolean!3696) (Unit!34658) (OperatorValue!3698 (op!3755 List!20060)) (IdentifierValue!7390 (value!112389 List!20060)) (IdentifierValue!7391 (value!112390 List!20060)) (WhitespaceValue!7391 (value!112391 List!20060)) (True!7390) (False!7390) (Broken!18477 (value!112392 List!20060)) (Broken!18478 (value!112393 List!20060)) (True!7391) (RightBrace!3695) (RightBracket!3695) (Colon!3695) (Null!3695) (Comma!3695) (LeftBracket!3695) (False!7391) (LeftBrace!3695) (ImaginaryLiteralValue!3695 (text!26311 List!20060)) (StringLiteralValue!11085 (value!112394 List!20060)) (EOFValue!3695 (value!112395 List!20060)) (IdentValue!3695 (value!112396 List!20060)) (DelimiterValue!7391 (value!112397 List!20060)) (DedentValue!3695 (value!112398 List!20060)) (NewLineValue!3695 (value!112399 List!20060)) (IntegerValue!11085 (value!112400 (_ BitVec 32)) (text!26312 List!20060)) (IntegerValue!11086 (value!112401 Int) (text!26313 List!20060)) (Times!3695) (Or!3695) (Equal!3695) (Minus!3695) (Broken!18479 (value!112402 List!20060)) (And!3695) (Div!3695) (LessEqual!3695) (Mod!3695) (Concat!8628) (Not!3695) (Plus!3695) (SpaceValue!3695 (value!112403 List!20060)) (IntegerValue!11087 (value!112404 Int) (text!26314 List!20060)) (StringLiteralValue!11086 (text!26315 List!20060)) (FloatLiteralValue!7391 (text!26316 List!20060)) (BytesLiteralValue!3695 (value!112405 List!20060)) (CommentValue!7391 (value!112406 List!20060)) (StringLiteralValue!11087 (value!112407 List!20060)) (ErrorTokenValue!3695 (msg!3756 List!20060)) )
))
(declare-datatypes ((C!10040 0))(
  ( (C!10041 (val!5616 Int)) )
))
(declare-datatypes ((List!20061 0))(
  ( (Nil!19991) (Cons!19991 (h!25392 C!10040) (t!169938 List!20061)) )
))
(declare-datatypes ((IArray!13279 0))(
  ( (IArray!13280 (innerList!6697 List!20061)) )
))
(declare-datatypes ((Conc!6637 0))(
  ( (Node!6637 (left!16009 Conc!6637) (right!16339 Conc!6637) (csize!13504 Int) (cheight!6848 Int)) (Leaf!9660 (xs!9513 IArray!13279) (csize!13505 Int)) (Empty!6637) )
))
(declare-datatypes ((BalanceConc!13218 0))(
  ( (BalanceConc!13219 (c!297210 Conc!6637)) )
))
(declare-datatypes ((TokenValueInjection!7050 0))(
  ( (TokenValueInjection!7051 (toValue!5140 Int) (toChars!4999 Int)) )
))
(declare-datatypes ((Regex!4933 0))(
  ( (ElementMatch!4933 (c!297211 C!10040)) (Concat!8629 (regOne!10378 Regex!4933) (regTwo!10378 Regex!4933)) (EmptyExpr!4933) (Star!4933 (reg!5262 Regex!4933)) (EmptyLang!4933) (Union!4933 (regOne!10379 Regex!4933) (regTwo!10379 Regex!4933)) )
))
(declare-datatypes ((String!22807 0))(
  ( (String!22808 (value!112408 String)) )
))
(declare-datatypes ((Rule!7010 0))(
  ( (Rule!7011 (regex!3605 Regex!4933) (tag!4019 String!22807) (isSeparator!3605 Bool) (transformation!3605 TokenValueInjection!7050)) )
))
(declare-fun rule!559 () Rule!7010)

(declare-fun validRegex!2003 (Regex!4933) Bool)

(assert (=> b!1821844 (= res!819347 (not (validRegex!2003 (regex!3605 rule!559))))))

(declare-fun lt!707956 () List!20061)

(declare-fun lambda!71390 () Int)

(declare-datatypes ((List!20062 0))(
  ( (Nil!19992) (Cons!19992 (h!25393 Regex!4933) (t!169939 List!20062)) )
))
(declare-fun lt!707960 () List!20062)

(declare-fun lt!707962 () Regex!4933)

(declare-fun matchR!2398 (Regex!4933 List!20061) Bool)

(declare-fun exists!635 (List!20062 Int) Bool)

(assert (=> b!1821844 (= (matchR!2398 lt!707962 lt!707956) (exists!635 lt!707960 lambda!71390))))

(declare-datatypes ((Unit!34659 0))(
  ( (Unit!34660) )
))
(declare-fun lt!707954 () Unit!34659)

(declare-fun matchRGenUnionSpec!220 (Regex!4933 List!20062 List!20061) Unit!34659)

(assert (=> b!1821844 (= lt!707954 (matchRGenUnionSpec!220 lt!707962 lt!707960 lt!707956))))

(declare-fun b!1821845 () Bool)

(declare-fun e!1164439 () Bool)

(declare-fun e!1164450 () Bool)

(assert (=> b!1821845 (= e!1164439 e!1164450)))

(declare-fun res!819341 () Bool)

(assert (=> b!1821845 (=> (not res!819341) (not e!1164450))))

(declare-fun suffix!1667 () List!20061)

(declare-fun input!3612 () List!20061)

(declare-fun ++!5429 (List!20061 List!20061) List!20061)

(assert (=> b!1821845 (= res!819341 (= input!3612 (++!5429 lt!707956 suffix!1667)))))

(declare-datatypes ((Token!6764 0))(
  ( (Token!6765 (value!112409 TokenValue!3695) (rule!5735 Rule!7010) (size!15853 Int) (originalCharacters!4413 List!20061)) )
))
(declare-fun token!556 () Token!6764)

(declare-fun list!8121 (BalanceConc!13218) List!20061)

(declare-fun charsOf!2248 (Token!6764) BalanceConc!13218)

(assert (=> b!1821845 (= lt!707956 (list!8121 (charsOf!2248 token!556)))))

(declare-fun b!1821846 () Bool)

(declare-fun res!819342 () Bool)

(assert (=> b!1821846 (=> (not res!819342) (not e!1164439))))

(assert (=> b!1821846 (= res!819342 (= (rule!5735 token!556) rule!559))))

(declare-fun e!1164451 () Bool)

(assert (=> b!1821847 (= e!1164451 (and tp!515200 tp!515192))))

(declare-fun b!1821848 () Bool)

(declare-fun e!1164453 () Bool)

(assert (=> b!1821848 (= e!1164453 e!1164445)))

(declare-fun res!819348 () Bool)

(assert (=> b!1821848 (=> res!819348 e!1164445)))

(declare-fun contains!3658 (List!20062 Regex!4933) Bool)

(assert (=> b!1821848 (= res!819348 (not (contains!3658 lt!707960 (regex!3605 rule!559))))))

(declare-datatypes ((List!20063 0))(
  ( (Nil!19993) (Cons!19993 (h!25394 Rule!7010) (t!169940 List!20063)) )
))
(declare-fun rules!4538 () List!20063)

(declare-fun lambda!71389 () Int)

(declare-fun map!4138 (List!20063 Int) List!20062)

(assert (=> b!1821848 (= lt!707960 (map!4138 rules!4538 lambda!71389))))

(declare-fun lt!707963 () Unit!34659)

(declare-datatypes ((LexerInterface!3234 0))(
  ( (LexerInterfaceExt!3231 (__x!12693 Int)) (Lexer!3232) )
))
(declare-fun thiss!28068 () LexerInterface!3234)

(declare-fun lemma!479 (List!20061 Rule!7010 List!20063 List!20061 LexerInterface!3234 Token!6764 List!20063) Unit!34659)

(assert (=> b!1821848 (= lt!707963 (lemma!479 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun res!819346 () Bool)

(declare-fun e!1164440 () Bool)

(assert (=> start!180370 (=> (not res!819346) (not e!1164440))))

(get-info :version)

(assert (=> start!180370 (= res!819346 ((_ is Lexer!3232) thiss!28068))))

(assert (=> start!180370 e!1164440))

(declare-fun e!1164456 () Bool)

(assert (=> start!180370 e!1164456))

(assert (=> start!180370 true))

(declare-fun e!1164457 () Bool)

(assert (=> start!180370 e!1164457))

(declare-fun e!1164458 () Bool)

(declare-fun inv!26021 (Token!6764) Bool)

(assert (=> start!180370 (and (inv!26021 token!556) e!1164458)))

(declare-fun e!1164442 () Bool)

(assert (=> start!180370 e!1164442))

(declare-fun e!1164459 () Bool)

(assert (=> start!180370 e!1164459))

(declare-fun b!1821849 () Bool)

(declare-fun tp_is_empty!8101 () Bool)

(declare-fun tp!515194 () Bool)

(assert (=> b!1821849 (= e!1164459 (and tp_is_empty!8101 tp!515194))))

(declare-fun e!1164443 () Bool)

(assert (=> b!1821850 (= e!1164443 (and tp!515188 tp!515199))))

(declare-fun b!1821851 () Bool)

(declare-fun res!819339 () Bool)

(assert (=> b!1821851 (=> (not res!819339) (not e!1164440))))

(declare-fun rulesInvariant!2903 (LexerInterface!3234 List!20063) Bool)

(assert (=> b!1821851 (= res!819339 (rulesInvariant!2903 thiss!28068 rules!4538))))

(declare-fun tp!515189 () Bool)

(declare-fun b!1821852 () Bool)

(declare-fun inv!26018 (String!22807) Bool)

(declare-fun inv!26022 (TokenValueInjection!7050) Bool)

(assert (=> b!1821852 (= e!1164442 (and tp!515189 (inv!26018 (tag!4019 rule!559)) (inv!26022 (transformation!3605 rule!559)) e!1164443))))

(declare-fun b!1821853 () Bool)

(declare-fun tp!515191 () Bool)

(declare-fun e!1164452 () Bool)

(declare-fun inv!21 (TokenValue!3695) Bool)

(assert (=> b!1821853 (= e!1164458 (and (inv!21 (value!112409 token!556)) e!1164452 tp!515191))))

(declare-fun b!1821854 () Bool)

(declare-fun res!819349 () Bool)

(assert (=> b!1821854 (=> (not res!819349) (not e!1164440))))

(declare-fun contains!3659 (List!20063 Rule!7010) Bool)

(assert (=> b!1821854 (= res!819349 (contains!3659 rules!4538 rule!559))))

(declare-fun b!1821855 () Bool)

(declare-fun e!1164444 () Bool)

(declare-fun e!1164446 () Bool)

(assert (=> b!1821855 (= e!1164444 e!1164446)))

(declare-fun res!819343 () Bool)

(assert (=> b!1821855 (=> res!819343 e!1164446)))

(declare-datatypes ((tuple2!19494 0))(
  ( (tuple2!19495 (_1!11149 Token!6764) (_2!11149 List!20061)) )
))
(declare-datatypes ((Option!4185 0))(
  ( (None!4184) (Some!4184 (v!25725 tuple2!19494)) )
))
(declare-fun lt!707964 () Option!4185)

(declare-fun lt!707959 () Option!4185)

(assert (=> b!1821855 (= res!819343 (not (= lt!707964 lt!707959)))))

(declare-fun lt!707955 () TokenValue!3695)

(declare-fun lt!707953 () Int)

(assert (=> b!1821855 (= lt!707964 (Some!4184 (tuple2!19495 (Token!6765 lt!707955 rule!559 lt!707953 lt!707956) suffix!1667)))))

(declare-fun maxPrefixOneRule!1147 (LexerInterface!3234 Rule!7010 List!20061) Option!4185)

(assert (=> b!1821855 (= lt!707964 (maxPrefixOneRule!1147 thiss!28068 rule!559 input!3612))))

(declare-fun size!15854 (List!20061) Int)

(assert (=> b!1821855 (= lt!707953 (size!15854 lt!707956))))

(declare-fun apply!5397 (TokenValueInjection!7050 BalanceConc!13218) TokenValue!3695)

(declare-fun seqFromList!2566 (List!20061) BalanceConc!13218)

(assert (=> b!1821855 (= lt!707955 (apply!5397 (transformation!3605 rule!559) (seqFromList!2566 lt!707956)))))

(declare-fun lt!707957 () Unit!34659)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!523 (LexerInterface!3234 List!20063 List!20061 List!20061 List!20061 Rule!7010) Unit!34659)

(assert (=> b!1821855 (= lt!707957 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!523 thiss!28068 rules!4538 lt!707956 input!3612 suffix!1667 rule!559))))

(declare-fun b!1821856 () Bool)

(declare-fun res!819345 () Bool)

(assert (=> b!1821856 (=> (not res!819345) (not e!1164440))))

(declare-fun isEmpty!12619 (List!20063) Bool)

(assert (=> b!1821856 (= res!819345 (not (isEmpty!12619 rules!4538)))))

(declare-fun e!1164448 () Bool)

(declare-fun b!1821857 () Bool)

(declare-fun tp!515197 () Bool)

(declare-fun e!1164460 () Bool)

(assert (=> b!1821857 (= e!1164448 (and tp!515197 (inv!26018 (tag!4019 (h!25394 rules!4538))) (inv!26022 (transformation!3605 (h!25394 rules!4538))) e!1164460))))

(assert (=> b!1821858 (= e!1164460 (and tp!515198 tp!515195))))

(declare-fun b!1821859 () Bool)

(declare-fun tp!515190 () Bool)

(assert (=> b!1821859 (= e!1164457 (and e!1164448 tp!515190))))

(declare-fun b!1821860 () Bool)

(declare-fun e!1164438 () Bool)

(assert (=> b!1821860 (= e!1164454 e!1164438)))

(declare-fun res!819338 () Bool)

(assert (=> b!1821860 (=> res!819338 e!1164438)))

(assert (=> b!1821860 (= res!819338 (not (exists!635 lt!707960 lambda!71390)))))

(assert (=> b!1821860 (exists!635 lt!707960 lambda!71390)))

(declare-fun lt!707951 () Unit!34659)

(declare-fun lemmaContainsThenExists!45 (List!20062 Regex!4933 Int) Unit!34659)

(assert (=> b!1821860 (= lt!707951 (lemmaContainsThenExists!45 lt!707960 (regex!3605 rule!559) lambda!71390))))

(declare-fun b!1821861 () Bool)

(declare-fun tp!515193 () Bool)

(assert (=> b!1821861 (= e!1164452 (and tp!515193 (inv!26018 (tag!4019 (rule!5735 token!556))) (inv!26022 (transformation!3605 (rule!5735 token!556))) e!1164451))))

(declare-fun b!1821862 () Bool)

(assert (=> b!1821862 (= e!1164440 e!1164439)))

(declare-fun res!819350 () Bool)

(assert (=> b!1821862 (=> (not res!819350) (not e!1164439))))

(declare-fun maxPrefix!1782 (LexerInterface!3234 List!20063 List!20061) Option!4185)

(assert (=> b!1821862 (= res!819350 (= (maxPrefix!1782 thiss!28068 rules!4538 input!3612) lt!707959))))

(assert (=> b!1821862 (= lt!707959 (Some!4184 (tuple2!19495 token!556 suffix!1667)))))

(declare-fun b!1821863 () Bool)

(declare-fun rulesValidInductive!1234 (LexerInterface!3234 List!20063) Bool)

(assert (=> b!1821863 (= e!1164438 (rulesValidInductive!1234 thiss!28068 rules!4538))))

(declare-fun b!1821864 () Bool)

(declare-fun tp!515196 () Bool)

(assert (=> b!1821864 (= e!1164456 (and tp_is_empty!8101 tp!515196))))

(declare-fun b!1821865 () Bool)

(assert (=> b!1821865 (= e!1164450 (not e!1164444))))

(declare-fun res!819340 () Bool)

(assert (=> b!1821865 (=> res!819340 e!1164444)))

(assert (=> b!1821865 (= res!819340 (not (matchR!2398 (regex!3605 rule!559) lt!707956)))))

(declare-fun ruleValid!1097 (LexerInterface!3234 Rule!7010) Bool)

(assert (=> b!1821865 (ruleValid!1097 thiss!28068 rule!559)))

(declare-fun lt!707961 () Unit!34659)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!618 (LexerInterface!3234 Rule!7010 List!20063) Unit!34659)

(assert (=> b!1821865 (= lt!707961 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!618 thiss!28068 rule!559 rules!4538))))

(declare-fun b!1821866 () Bool)

(assert (=> b!1821866 (= e!1164446 e!1164453)))

(declare-fun res!819344 () Bool)

(assert (=> b!1821866 (=> res!819344 e!1164453)))

(declare-fun lt!707958 () List!20062)

(declare-fun generalisedUnion!460 (List!20062) Regex!4933)

(assert (=> b!1821866 (= res!819344 (not (= lt!707962 (generalisedUnion!460 lt!707958))))))

(declare-fun rulesRegex!937 (LexerInterface!3234 List!20063) Regex!4933)

(assert (=> b!1821866 (= lt!707962 (rulesRegex!937 thiss!28068 rules!4538))))

(assert (=> b!1821866 (= lt!707958 (map!4138 rules!4538 lambda!71389))))

(declare-fun lt!707952 () Unit!34659)

(declare-fun lemma!480 (List!20061 Rule!7010 List!20063 List!20061 LexerInterface!3234 Token!6764 List!20063) Unit!34659)

(assert (=> b!1821866 (= lt!707952 (lemma!480 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (= (and start!180370 res!819346) b!1821856))

(assert (= (and b!1821856 res!819345) b!1821851))

(assert (= (and b!1821851 res!819339) b!1821854))

(assert (= (and b!1821854 res!819349) b!1821862))

(assert (= (and b!1821862 res!819350) b!1821846))

(assert (= (and b!1821846 res!819342) b!1821845))

(assert (= (and b!1821845 res!819341) b!1821865))

(assert (= (and b!1821865 (not res!819340)) b!1821855))

(assert (= (and b!1821855 (not res!819343)) b!1821866))

(assert (= (and b!1821866 (not res!819344)) b!1821848))

(assert (= (and b!1821848 (not res!819348)) b!1821844))

(assert (= (and b!1821844 (not res!819347)) b!1821860))

(assert (= (and b!1821860 (not res!819338)) b!1821863))

(assert (= (and start!180370 ((_ is Cons!19991) suffix!1667)) b!1821864))

(assert (= b!1821857 b!1821858))

(assert (= b!1821859 b!1821857))

(assert (= (and start!180370 ((_ is Cons!19993) rules!4538)) b!1821859))

(assert (= b!1821861 b!1821847))

(assert (= b!1821853 b!1821861))

(assert (= start!180370 b!1821853))

(assert (= b!1821852 b!1821850))

(assert (= start!180370 b!1821852))

(assert (= (and start!180370 ((_ is Cons!19991) input!3612)) b!1821849))

(declare-fun m!2250619 () Bool)

(assert (=> b!1821853 m!2250619))

(declare-fun m!2250621 () Bool)

(assert (=> b!1821857 m!2250621))

(declare-fun m!2250623 () Bool)

(assert (=> b!1821857 m!2250623))

(declare-fun m!2250625 () Bool)

(assert (=> b!1821856 m!2250625))

(declare-fun m!2250627 () Bool)

(assert (=> b!1821862 m!2250627))

(declare-fun m!2250629 () Bool)

(assert (=> b!1821854 m!2250629))

(declare-fun m!2250631 () Bool)

(assert (=> b!1821844 m!2250631))

(declare-fun m!2250633 () Bool)

(assert (=> b!1821844 m!2250633))

(declare-fun m!2250635 () Bool)

(assert (=> b!1821844 m!2250635))

(declare-fun m!2250637 () Bool)

(assert (=> b!1821844 m!2250637))

(declare-fun m!2250639 () Bool)

(assert (=> b!1821852 m!2250639))

(declare-fun m!2250641 () Bool)

(assert (=> b!1821852 m!2250641))

(declare-fun m!2250643 () Bool)

(assert (=> b!1821865 m!2250643))

(declare-fun m!2250645 () Bool)

(assert (=> b!1821865 m!2250645))

(declare-fun m!2250647 () Bool)

(assert (=> b!1821865 m!2250647))

(declare-fun m!2250649 () Bool)

(assert (=> b!1821866 m!2250649))

(declare-fun m!2250651 () Bool)

(assert (=> b!1821866 m!2250651))

(declare-fun m!2250653 () Bool)

(assert (=> b!1821866 m!2250653))

(declare-fun m!2250655 () Bool)

(assert (=> b!1821866 m!2250655))

(declare-fun m!2250657 () Bool)

(assert (=> b!1821845 m!2250657))

(declare-fun m!2250659 () Bool)

(assert (=> b!1821845 m!2250659))

(assert (=> b!1821845 m!2250659))

(declare-fun m!2250661 () Bool)

(assert (=> b!1821845 m!2250661))

(declare-fun m!2250663 () Bool)

(assert (=> b!1821861 m!2250663))

(declare-fun m!2250665 () Bool)

(assert (=> b!1821861 m!2250665))

(declare-fun m!2250667 () Bool)

(assert (=> b!1821855 m!2250667))

(declare-fun m!2250669 () Bool)

(assert (=> b!1821855 m!2250669))

(declare-fun m!2250671 () Bool)

(assert (=> b!1821855 m!2250671))

(declare-fun m!2250673 () Bool)

(assert (=> b!1821855 m!2250673))

(assert (=> b!1821855 m!2250667))

(declare-fun m!2250675 () Bool)

(assert (=> b!1821855 m!2250675))

(declare-fun m!2250677 () Bool)

(assert (=> b!1821848 m!2250677))

(assert (=> b!1821848 m!2250653))

(declare-fun m!2250679 () Bool)

(assert (=> b!1821848 m!2250679))

(declare-fun m!2250681 () Bool)

(assert (=> start!180370 m!2250681))

(declare-fun m!2250683 () Bool)

(assert (=> b!1821851 m!2250683))

(declare-fun m!2250685 () Bool)

(assert (=> b!1821863 m!2250685))

(assert (=> b!1821860 m!2250635))

(assert (=> b!1821860 m!2250635))

(declare-fun m!2250687 () Bool)

(assert (=> b!1821860 m!2250687))

(check-sat (not b!1821854) (not b!1821860) b_and!141349 (not b!1821852) (not start!180370) (not b!1821853) (not b_next!51365) b_and!141347 (not b!1821861) tp_is_empty!8101 (not b_next!51363) b_and!141343 (not b!1821857) (not b!1821855) (not b!1821859) (not b!1821864) (not b_next!51361) (not b_next!51369) (not b_next!51367) b_and!141351 (not b!1821863) (not b!1821862) (not b!1821849) (not b!1821865) (not b!1821866) (not b!1821844) (not b!1821851) b_and!141341 (not b!1821845) b_and!141345 (not b!1821856) (not b!1821848) (not b_next!51359))
(check-sat b_and!141349 (not b_next!51365) b_and!141347 b_and!141341 b_and!141345 (not b_next!51359) (not b_next!51363) b_and!141343 (not b_next!51361) (not b_next!51369) (not b_next!51367) b_and!141351)
(get-model)

(declare-fun d!557781 () Bool)

(declare-fun res!819355 () Bool)

(declare-fun e!1164463 () Bool)

(assert (=> d!557781 (=> (not res!819355) (not e!1164463))))

(declare-fun rulesValid!1367 (LexerInterface!3234 List!20063) Bool)

(assert (=> d!557781 (= res!819355 (rulesValid!1367 thiss!28068 rules!4538))))

(assert (=> d!557781 (= (rulesInvariant!2903 thiss!28068 rules!4538) e!1164463)))

(declare-fun b!1821871 () Bool)

(declare-datatypes ((List!20064 0))(
  ( (Nil!19994) (Cons!19994 (h!25395 String!22807) (t!169973 List!20064)) )
))
(declare-fun noDuplicateTag!1364 (LexerInterface!3234 List!20063 List!20064) Bool)

(assert (=> b!1821871 (= e!1164463 (noDuplicateTag!1364 thiss!28068 rules!4538 Nil!19994))))

(assert (= (and d!557781 res!819355) b!1821871))

(declare-fun m!2250689 () Bool)

(assert (=> d!557781 m!2250689))

(declare-fun m!2250691 () Bool)

(assert (=> b!1821871 m!2250691))

(assert (=> b!1821851 d!557781))

(declare-fun b!1821991 () Bool)

(declare-fun res!819420 () Bool)

(declare-fun e!1164527 () Bool)

(assert (=> b!1821991 (=> (not res!819420) (not e!1164527))))

(declare-fun lt!708009 () Option!4185)

(declare-fun get!6179 (Option!4185) tuple2!19494)

(assert (=> b!1821991 (= res!819420 (< (size!15854 (_2!11149 (get!6179 lt!708009))) (size!15854 input!3612)))))

(declare-fun b!1821992 () Bool)

(declare-fun e!1164529 () Option!4185)

(declare-fun lt!708006 () Option!4185)

(declare-fun lt!708008 () Option!4185)

(assert (=> b!1821992 (= e!1164529 (ite (and ((_ is None!4184) lt!708006) ((_ is None!4184) lt!708008)) None!4184 (ite ((_ is None!4184) lt!708008) lt!708006 (ite ((_ is None!4184) lt!708006) lt!708008 (ite (>= (size!15853 (_1!11149 (v!25725 lt!708006))) (size!15853 (_1!11149 (v!25725 lt!708008)))) lt!708006 lt!708008)))))))

(declare-fun call!114312 () Option!4185)

(assert (=> b!1821992 (= lt!708006 call!114312)))

(assert (=> b!1821992 (= lt!708008 (maxPrefix!1782 thiss!28068 (t!169940 rules!4538) input!3612))))

(declare-fun b!1821993 () Bool)

(declare-fun res!819423 () Bool)

(assert (=> b!1821993 (=> (not res!819423) (not e!1164527))))

(assert (=> b!1821993 (= res!819423 (= (++!5429 (list!8121 (charsOf!2248 (_1!11149 (get!6179 lt!708009)))) (_2!11149 (get!6179 lt!708009))) input!3612))))

(declare-fun b!1821994 () Bool)

(declare-fun res!819417 () Bool)

(assert (=> b!1821994 (=> (not res!819417) (not e!1164527))))

(assert (=> b!1821994 (= res!819417 (matchR!2398 (regex!3605 (rule!5735 (_1!11149 (get!6179 lt!708009)))) (list!8121 (charsOf!2248 (_1!11149 (get!6179 lt!708009))))))))

(declare-fun b!1821995 () Bool)

(declare-fun res!819418 () Bool)

(assert (=> b!1821995 (=> (not res!819418) (not e!1164527))))

(assert (=> b!1821995 (= res!819418 (= (value!112409 (_1!11149 (get!6179 lt!708009))) (apply!5397 (transformation!3605 (rule!5735 (_1!11149 (get!6179 lt!708009)))) (seqFromList!2566 (originalCharacters!4413 (_1!11149 (get!6179 lt!708009)))))))))

(declare-fun d!557783 () Bool)

(declare-fun e!1164528 () Bool)

(assert (=> d!557783 e!1164528))

(declare-fun res!819421 () Bool)

(assert (=> d!557783 (=> res!819421 e!1164528)))

(declare-fun isEmpty!12623 (Option!4185) Bool)

(assert (=> d!557783 (= res!819421 (isEmpty!12623 lt!708009))))

(assert (=> d!557783 (= lt!708009 e!1164529)))

(declare-fun c!297241 () Bool)

(assert (=> d!557783 (= c!297241 (and ((_ is Cons!19993) rules!4538) ((_ is Nil!19993) (t!169940 rules!4538))))))

(declare-fun lt!708005 () Unit!34659)

(declare-fun lt!708007 () Unit!34659)

(assert (=> d!557783 (= lt!708005 lt!708007)))

(declare-fun isPrefix!1815 (List!20061 List!20061) Bool)

(assert (=> d!557783 (isPrefix!1815 input!3612 input!3612)))

(declare-fun lemmaIsPrefixRefl!1192 (List!20061 List!20061) Unit!34659)

(assert (=> d!557783 (= lt!708007 (lemmaIsPrefixRefl!1192 input!3612 input!3612))))

(assert (=> d!557783 (rulesValidInductive!1234 thiss!28068 rules!4538)))

(assert (=> d!557783 (= (maxPrefix!1782 thiss!28068 rules!4538 input!3612) lt!708009)))

(declare-fun b!1821996 () Bool)

(declare-fun res!819422 () Bool)

(assert (=> b!1821996 (=> (not res!819422) (not e!1164527))))

(assert (=> b!1821996 (= res!819422 (= (list!8121 (charsOf!2248 (_1!11149 (get!6179 lt!708009)))) (originalCharacters!4413 (_1!11149 (get!6179 lt!708009)))))))

(declare-fun bm!114307 () Bool)

(assert (=> bm!114307 (= call!114312 (maxPrefixOneRule!1147 thiss!28068 (h!25394 rules!4538) input!3612))))

(declare-fun b!1821997 () Bool)

(assert (=> b!1821997 (= e!1164527 (contains!3659 rules!4538 (rule!5735 (_1!11149 (get!6179 lt!708009)))))))

(declare-fun b!1821998 () Bool)

(assert (=> b!1821998 (= e!1164528 e!1164527)))

(declare-fun res!819419 () Bool)

(assert (=> b!1821998 (=> (not res!819419) (not e!1164527))))

(declare-fun isDefined!3502 (Option!4185) Bool)

(assert (=> b!1821998 (= res!819419 (isDefined!3502 lt!708009))))

(declare-fun b!1821999 () Bool)

(assert (=> b!1821999 (= e!1164529 call!114312)))

(assert (= (and d!557783 c!297241) b!1821999))

(assert (= (and d!557783 (not c!297241)) b!1821992))

(assert (= (or b!1821999 b!1821992) bm!114307))

(assert (= (and d!557783 (not res!819421)) b!1821998))

(assert (= (and b!1821998 res!819419) b!1821996))

(assert (= (and b!1821996 res!819422) b!1821991))

(assert (= (and b!1821991 res!819420) b!1821993))

(assert (= (and b!1821993 res!819423) b!1821995))

(assert (= (and b!1821995 res!819418) b!1821994))

(assert (= (and b!1821994 res!819417) b!1821997))

(declare-fun m!2250771 () Bool)

(assert (=> b!1821993 m!2250771))

(declare-fun m!2250773 () Bool)

(assert (=> b!1821993 m!2250773))

(assert (=> b!1821993 m!2250773))

(declare-fun m!2250775 () Bool)

(assert (=> b!1821993 m!2250775))

(assert (=> b!1821993 m!2250775))

(declare-fun m!2250777 () Bool)

(assert (=> b!1821993 m!2250777))

(declare-fun m!2250779 () Bool)

(assert (=> bm!114307 m!2250779))

(declare-fun m!2250781 () Bool)

(assert (=> d!557783 m!2250781))

(declare-fun m!2250783 () Bool)

(assert (=> d!557783 m!2250783))

(declare-fun m!2250785 () Bool)

(assert (=> d!557783 m!2250785))

(assert (=> d!557783 m!2250685))

(declare-fun m!2250787 () Bool)

(assert (=> b!1821992 m!2250787))

(assert (=> b!1821994 m!2250771))

(assert (=> b!1821994 m!2250773))

(assert (=> b!1821994 m!2250773))

(assert (=> b!1821994 m!2250775))

(assert (=> b!1821994 m!2250775))

(declare-fun m!2250789 () Bool)

(assert (=> b!1821994 m!2250789))

(assert (=> b!1821991 m!2250771))

(declare-fun m!2250791 () Bool)

(assert (=> b!1821991 m!2250791))

(declare-fun m!2250793 () Bool)

(assert (=> b!1821991 m!2250793))

(assert (=> b!1821996 m!2250771))

(assert (=> b!1821996 m!2250773))

(assert (=> b!1821996 m!2250773))

(assert (=> b!1821996 m!2250775))

(assert (=> b!1821995 m!2250771))

(declare-fun m!2250795 () Bool)

(assert (=> b!1821995 m!2250795))

(assert (=> b!1821995 m!2250795))

(declare-fun m!2250797 () Bool)

(assert (=> b!1821995 m!2250797))

(declare-fun m!2250799 () Bool)

(assert (=> b!1821998 m!2250799))

(assert (=> b!1821997 m!2250771))

(declare-fun m!2250801 () Bool)

(assert (=> b!1821997 m!2250801))

(assert (=> b!1821862 d!557783))

(declare-fun bs!407358 () Bool)

(declare-fun d!557807 () Bool)

(assert (= bs!407358 (and d!557807 b!1821844)))

(declare-fun lambda!71408 () Int)

(assert (=> bs!407358 (not (= lambda!71408 lambda!71390))))

(assert (=> d!557807 true))

(declare-fun order!12977 () Int)

(declare-fun dynLambda!9927 (Int Int) Int)

(assert (=> d!557807 (< (dynLambda!9927 order!12977 lambda!71390) (dynLambda!9927 order!12977 lambda!71408))))

(declare-fun forall!4310 (List!20062 Int) Bool)

(assert (=> d!557807 (= (exists!635 lt!707960 lambda!71390) (not (forall!4310 lt!707960 lambda!71408)))))

(declare-fun bs!407359 () Bool)

(assert (= bs!407359 d!557807))

(declare-fun m!2250803 () Bool)

(assert (=> bs!407359 m!2250803))

(assert (=> b!1821860 d!557807))

(declare-fun d!557809 () Bool)

(assert (=> d!557809 (exists!635 lt!707960 lambda!71390)))

(declare-fun lt!708015 () Unit!34659)

(declare-fun choose!11477 (List!20062 Regex!4933 Int) Unit!34659)

(assert (=> d!557809 (= lt!708015 (choose!11477 lt!707960 (regex!3605 rule!559) lambda!71390))))

(assert (=> d!557809 (contains!3658 lt!707960 (regex!3605 rule!559))))

(assert (=> d!557809 (= (lemmaContainsThenExists!45 lt!707960 (regex!3605 rule!559) lambda!71390) lt!708015)))

(declare-fun bs!407360 () Bool)

(assert (= bs!407360 d!557809))

(assert (=> bs!407360 m!2250635))

(declare-fun m!2250805 () Bool)

(assert (=> bs!407360 m!2250805))

(assert (=> bs!407360 m!2250677))

(assert (=> b!1821860 d!557809))

(declare-fun d!557811 () Bool)

(assert (=> d!557811 (= (inv!26018 (tag!4019 (rule!5735 token!556))) (= (mod (str.len (value!112408 (tag!4019 (rule!5735 token!556)))) 2) 0))))

(assert (=> b!1821861 d!557811))

(declare-fun d!557813 () Bool)

(declare-fun res!819440 () Bool)

(declare-fun e!1164539 () Bool)

(assert (=> d!557813 (=> (not res!819440) (not e!1164539))))

(declare-fun semiInverseModEq!1440 (Int Int) Bool)

(assert (=> d!557813 (= res!819440 (semiInverseModEq!1440 (toChars!4999 (transformation!3605 (rule!5735 token!556))) (toValue!5140 (transformation!3605 (rule!5735 token!556)))))))

(assert (=> d!557813 (= (inv!26022 (transformation!3605 (rule!5735 token!556))) e!1164539)))

(declare-fun b!1822022 () Bool)

(declare-fun equivClasses!1381 (Int Int) Bool)

(assert (=> b!1822022 (= e!1164539 (equivClasses!1381 (toChars!4999 (transformation!3605 (rule!5735 token!556))) (toValue!5140 (transformation!3605 (rule!5735 token!556)))))))

(assert (= (and d!557813 res!819440) b!1822022))

(declare-fun m!2250807 () Bool)

(assert (=> d!557813 m!2250807))

(declare-fun m!2250809 () Bool)

(assert (=> b!1822022 m!2250809))

(assert (=> b!1821861 d!557813))

(declare-fun d!557815 () Bool)

(declare-fun lt!708033 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2929 (List!20062) (InoxSet Regex!4933))

(assert (=> d!557815 (= lt!708033 (select (content!2929 lt!707960) (regex!3605 rule!559)))))

(declare-fun e!1164548 () Bool)

(assert (=> d!557815 (= lt!708033 e!1164548)))

(declare-fun res!819452 () Bool)

(assert (=> d!557815 (=> (not res!819452) (not e!1164548))))

(assert (=> d!557815 (= res!819452 ((_ is Cons!19992) lt!707960))))

(assert (=> d!557815 (= (contains!3658 lt!707960 (regex!3605 rule!559)) lt!708033)))

(declare-fun b!1822036 () Bool)

(declare-fun e!1164547 () Bool)

(assert (=> b!1822036 (= e!1164548 e!1164547)))

(declare-fun res!819453 () Bool)

(assert (=> b!1822036 (=> res!819453 e!1164547)))

(assert (=> b!1822036 (= res!819453 (= (h!25393 lt!707960) (regex!3605 rule!559)))))

(declare-fun b!1822037 () Bool)

(assert (=> b!1822037 (= e!1164547 (contains!3658 (t!169939 lt!707960) (regex!3605 rule!559)))))

(assert (= (and d!557815 res!819452) b!1822036))

(assert (= (and b!1822036 (not res!819453)) b!1822037))

(declare-fun m!2250835 () Bool)

(assert (=> d!557815 m!2250835))

(declare-fun m!2250839 () Bool)

(assert (=> d!557815 m!2250839))

(declare-fun m!2250845 () Bool)

(assert (=> b!1822037 m!2250845))

(assert (=> b!1821848 d!557815))

(declare-fun d!557819 () Bool)

(declare-fun lt!708039 () List!20062)

(declare-fun size!15858 (List!20062) Int)

(declare-fun size!15859 (List!20063) Int)

(assert (=> d!557819 (= (size!15858 lt!708039) (size!15859 rules!4538))))

(declare-fun e!1164559 () List!20062)

(assert (=> d!557819 (= lt!708039 e!1164559)))

(declare-fun c!297247 () Bool)

(assert (=> d!557819 (= c!297247 ((_ is Nil!19993) rules!4538))))

(assert (=> d!557819 (= (map!4138 rules!4538 lambda!71389) lt!708039)))

(declare-fun b!1822050 () Bool)

(assert (=> b!1822050 (= e!1164559 Nil!19992)))

(declare-fun b!1822051 () Bool)

(declare-fun $colon$colon!446 (List!20062 Regex!4933) List!20062)

(declare-fun dynLambda!9929 (Int Rule!7010) Regex!4933)

(assert (=> b!1822051 (= e!1164559 ($colon$colon!446 (map!4138 (t!169940 rules!4538) lambda!71389) (dynLambda!9929 lambda!71389 (h!25394 rules!4538))))))

(assert (= (and d!557819 c!297247) b!1822050))

(assert (= (and d!557819 (not c!297247)) b!1822051))

(declare-fun b_lambda!60131 () Bool)

(assert (=> (not b_lambda!60131) (not b!1822051)))

(declare-fun m!2250863 () Bool)

(assert (=> d!557819 m!2250863))

(declare-fun m!2250865 () Bool)

(assert (=> d!557819 m!2250865))

(declare-fun m!2250867 () Bool)

(assert (=> b!1822051 m!2250867))

(declare-fun m!2250869 () Bool)

(assert (=> b!1822051 m!2250869))

(assert (=> b!1822051 m!2250867))

(assert (=> b!1822051 m!2250869))

(declare-fun m!2250871 () Bool)

(assert (=> b!1822051 m!2250871))

(assert (=> b!1821848 d!557819))

(declare-fun bs!407364 () Bool)

(declare-fun d!557833 () Bool)

(assert (= bs!407364 (and d!557833 b!1821866)))

(declare-fun lambda!71414 () Int)

(assert (=> bs!407364 (= lambda!71414 lambda!71389)))

(assert (=> d!557833 (contains!3658 (map!4138 rules!4538 lambda!71414) (regex!3605 rule!559))))

(declare-fun lt!708067 () Unit!34659)

(declare-fun e!1164565 () Unit!34659)

(assert (=> d!557833 (= lt!708067 e!1164565)))

(declare-fun c!297253 () Bool)

(assert (=> d!557833 (= c!297253 (and ((_ is Cons!19993) rules!4538) (not (= (h!25394 rules!4538) rule!559))))))

(assert (=> d!557833 (rulesValid!1367 thiss!28068 rules!4538)))

(declare-fun lt!708068 () Unit!34659)

(assert (=> d!557833 (= lt!708068 (lemma!480 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun lt!708066 () Unit!34659)

(declare-fun lt!708069 () Unit!34659)

(assert (=> d!557833 (= lt!708066 lt!708069)))

(declare-fun lt!708065 () List!20061)

(assert (=> d!557833 (= (maxPrefixOneRule!1147 thiss!28068 rule!559 input!3612) (Some!4184 (tuple2!19495 (Token!6765 (apply!5397 (transformation!3605 rule!559) (seqFromList!2566 lt!708065)) rule!559 (size!15854 lt!708065) lt!708065) suffix!1667)))))

(assert (=> d!557833 (= lt!708069 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!523 thiss!28068 rules!4538 lt!708065 input!3612 suffix!1667 rule!559))))

(assert (=> d!557833 (= lt!708065 (list!8121 (charsOf!2248 token!556)))))

(assert (=> d!557833 (= (lemma!479 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!708067)))

(declare-fun b!1822062 () Bool)

(assert (=> b!1822062 (= e!1164565 (lemma!479 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!169940 rules!4538)))))

(declare-fun b!1822063 () Bool)

(declare-fun Unit!34664 () Unit!34659)

(assert (=> b!1822063 (= e!1164565 Unit!34664)))

(assert (= (and d!557833 c!297253) b!1822062))

(assert (= (and d!557833 (not c!297253)) b!1822063))

(assert (=> d!557833 m!2250655))

(declare-fun m!2250887 () Bool)

(assert (=> d!557833 m!2250887))

(declare-fun m!2250889 () Bool)

(assert (=> d!557833 m!2250889))

(assert (=> d!557833 m!2250887))

(declare-fun m!2250891 () Bool)

(assert (=> d!557833 m!2250891))

(assert (=> d!557833 m!2250689))

(declare-fun m!2250893 () Bool)

(assert (=> d!557833 m!2250893))

(assert (=> d!557833 m!2250889))

(declare-fun m!2250895 () Bool)

(assert (=> d!557833 m!2250895))

(assert (=> d!557833 m!2250675))

(assert (=> d!557833 m!2250659))

(declare-fun m!2250897 () Bool)

(assert (=> d!557833 m!2250897))

(assert (=> d!557833 m!2250659))

(assert (=> d!557833 m!2250661))

(declare-fun m!2250899 () Bool)

(assert (=> b!1822062 m!2250899))

(assert (=> b!1821848 d!557833))

(declare-fun d!557837 () Bool)

(assert (=> d!557837 (= (isEmpty!12619 rules!4538) ((_ is Nil!19993) rules!4538))))

(assert (=> b!1821856 d!557837))

(declare-fun d!557839 () Bool)

(assert (=> d!557839 (= (inv!26018 (tag!4019 (h!25394 rules!4538))) (= (mod (str.len (value!112408 (tag!4019 (h!25394 rules!4538)))) 2) 0))))

(assert (=> b!1821857 d!557839))

(declare-fun d!557841 () Bool)

(declare-fun res!819462 () Bool)

(declare-fun e!1164566 () Bool)

(assert (=> d!557841 (=> (not res!819462) (not e!1164566))))

(assert (=> d!557841 (= res!819462 (semiInverseModEq!1440 (toChars!4999 (transformation!3605 (h!25394 rules!4538))) (toValue!5140 (transformation!3605 (h!25394 rules!4538)))))))

(assert (=> d!557841 (= (inv!26022 (transformation!3605 (h!25394 rules!4538))) e!1164566)))

(declare-fun b!1822064 () Bool)

(assert (=> b!1822064 (= e!1164566 (equivClasses!1381 (toChars!4999 (transformation!3605 (h!25394 rules!4538))) (toValue!5140 (transformation!3605 (h!25394 rules!4538)))))))

(assert (= (and d!557841 res!819462) b!1822064))

(declare-fun m!2250901 () Bool)

(assert (=> d!557841 m!2250901))

(declare-fun m!2250903 () Bool)

(assert (=> b!1822064 m!2250903))

(assert (=> b!1821857 d!557841))

(declare-fun d!557843 () Bool)

(declare-fun lt!708072 () Int)

(assert (=> d!557843 (>= lt!708072 0)))

(declare-fun e!1164569 () Int)

(assert (=> d!557843 (= lt!708072 e!1164569)))

(declare-fun c!297256 () Bool)

(assert (=> d!557843 (= c!297256 ((_ is Nil!19991) lt!707956))))

(assert (=> d!557843 (= (size!15854 lt!707956) lt!708072)))

(declare-fun b!1822069 () Bool)

(assert (=> b!1822069 (= e!1164569 0)))

(declare-fun b!1822070 () Bool)

(assert (=> b!1822070 (= e!1164569 (+ 1 (size!15854 (t!169938 lt!707956))))))

(assert (= (and d!557843 c!297256) b!1822069))

(assert (= (and d!557843 (not c!297256)) b!1822070))

(declare-fun m!2250905 () Bool)

(assert (=> b!1822070 m!2250905))

(assert (=> b!1821855 d!557843))

(declare-fun b!1822182 () Bool)

(declare-fun e!1164637 () Bool)

(declare-datatypes ((tuple2!19498 0))(
  ( (tuple2!19499 (_1!11151 List!20061) (_2!11151 List!20061)) )
))
(declare-fun findLongestMatchInner!499 (Regex!4933 List!20061 Int List!20061 List!20061 Int) tuple2!19498)

(assert (=> b!1822182 (= e!1164637 (matchR!2398 (regex!3605 rule!559) (_1!11151 (findLongestMatchInner!499 (regex!3605 rule!559) Nil!19991 (size!15854 Nil!19991) input!3612 input!3612 (size!15854 input!3612)))))))

(declare-fun b!1822183 () Bool)

(declare-fun e!1164638 () Option!4185)

(assert (=> b!1822183 (= e!1164638 None!4184)))

(declare-fun b!1822184 () Bool)

(declare-fun res!819540 () Bool)

(declare-fun e!1164640 () Bool)

(assert (=> b!1822184 (=> (not res!819540) (not e!1164640))))

(declare-fun lt!708114 () Option!4185)

(assert (=> b!1822184 (= res!819540 (< (size!15854 (_2!11149 (get!6179 lt!708114))) (size!15854 input!3612)))))

(declare-fun b!1822185 () Bool)

(declare-fun res!819537 () Bool)

(assert (=> b!1822185 (=> (not res!819537) (not e!1164640))))

(assert (=> b!1822185 (= res!819537 (= (++!5429 (list!8121 (charsOf!2248 (_1!11149 (get!6179 lt!708114)))) (_2!11149 (get!6179 lt!708114))) input!3612))))

(declare-fun d!557845 () Bool)

(declare-fun e!1164639 () Bool)

(assert (=> d!557845 e!1164639))

(declare-fun res!819542 () Bool)

(assert (=> d!557845 (=> res!819542 e!1164639)))

(assert (=> d!557845 (= res!819542 (isEmpty!12623 lt!708114))))

(assert (=> d!557845 (= lt!708114 e!1164638)))

(declare-fun c!297274 () Bool)

(declare-fun lt!708112 () tuple2!19498)

(declare-fun isEmpty!12624 (List!20061) Bool)

(assert (=> d!557845 (= c!297274 (isEmpty!12624 (_1!11151 lt!708112)))))

(declare-fun findLongestMatch!426 (Regex!4933 List!20061) tuple2!19498)

(assert (=> d!557845 (= lt!708112 (findLongestMatch!426 (regex!3605 rule!559) input!3612))))

(assert (=> d!557845 (ruleValid!1097 thiss!28068 rule!559)))

(assert (=> d!557845 (= (maxPrefixOneRule!1147 thiss!28068 rule!559 input!3612) lt!708114)))

(declare-fun b!1822186 () Bool)

(assert (=> b!1822186 (= e!1164639 e!1164640)))

(declare-fun res!819541 () Bool)

(assert (=> b!1822186 (=> (not res!819541) (not e!1164640))))

(assert (=> b!1822186 (= res!819541 (matchR!2398 (regex!3605 rule!559) (list!8121 (charsOf!2248 (_1!11149 (get!6179 lt!708114))))))))

(declare-fun b!1822187 () Bool)

(declare-fun size!15860 (BalanceConc!13218) Int)

(assert (=> b!1822187 (= e!1164638 (Some!4184 (tuple2!19495 (Token!6765 (apply!5397 (transformation!3605 rule!559) (seqFromList!2566 (_1!11151 lt!708112))) rule!559 (size!15860 (seqFromList!2566 (_1!11151 lt!708112))) (_1!11151 lt!708112)) (_2!11151 lt!708112))))))

(declare-fun lt!708115 () Unit!34659)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!483 (Regex!4933 List!20061) Unit!34659)

(assert (=> b!1822187 (= lt!708115 (longestMatchIsAcceptedByMatchOrIsEmpty!483 (regex!3605 rule!559) input!3612))))

(declare-fun res!819539 () Bool)

(assert (=> b!1822187 (= res!819539 (isEmpty!12624 (_1!11151 (findLongestMatchInner!499 (regex!3605 rule!559) Nil!19991 (size!15854 Nil!19991) input!3612 input!3612 (size!15854 input!3612)))))))

(assert (=> b!1822187 (=> res!819539 e!1164637)))

(assert (=> b!1822187 e!1164637))

(declare-fun lt!708111 () Unit!34659)

(assert (=> b!1822187 (= lt!708111 lt!708115)))

(declare-fun lt!708113 () Unit!34659)

(declare-fun lemmaSemiInverse!713 (TokenValueInjection!7050 BalanceConc!13218) Unit!34659)

(assert (=> b!1822187 (= lt!708113 (lemmaSemiInverse!713 (transformation!3605 rule!559) (seqFromList!2566 (_1!11151 lt!708112))))))

(declare-fun b!1822188 () Bool)

(declare-fun res!819536 () Bool)

(assert (=> b!1822188 (=> (not res!819536) (not e!1164640))))

(assert (=> b!1822188 (= res!819536 (= (value!112409 (_1!11149 (get!6179 lt!708114))) (apply!5397 (transformation!3605 (rule!5735 (_1!11149 (get!6179 lt!708114)))) (seqFromList!2566 (originalCharacters!4413 (_1!11149 (get!6179 lt!708114)))))))))

(declare-fun b!1822189 () Bool)

(assert (=> b!1822189 (= e!1164640 (= (size!15853 (_1!11149 (get!6179 lt!708114))) (size!15854 (originalCharacters!4413 (_1!11149 (get!6179 lt!708114))))))))

(declare-fun b!1822190 () Bool)

(declare-fun res!819538 () Bool)

(assert (=> b!1822190 (=> (not res!819538) (not e!1164640))))

(assert (=> b!1822190 (= res!819538 (= (rule!5735 (_1!11149 (get!6179 lt!708114))) rule!559))))

(assert (= (and d!557845 c!297274) b!1822183))

(assert (= (and d!557845 (not c!297274)) b!1822187))

(assert (= (and b!1822187 (not res!819539)) b!1822182))

(assert (= (and d!557845 (not res!819542)) b!1822186))

(assert (= (and b!1822186 res!819541) b!1822185))

(assert (= (and b!1822185 res!819537) b!1822184))

(assert (= (and b!1822184 res!819540) b!1822190))

(assert (= (and b!1822190 res!819538) b!1822188))

(assert (= (and b!1822188 res!819536) b!1822189))

(declare-fun m!2250989 () Bool)

(assert (=> b!1822185 m!2250989))

(declare-fun m!2250991 () Bool)

(assert (=> b!1822185 m!2250991))

(assert (=> b!1822185 m!2250991))

(declare-fun m!2250993 () Bool)

(assert (=> b!1822185 m!2250993))

(assert (=> b!1822185 m!2250993))

(declare-fun m!2250995 () Bool)

(assert (=> b!1822185 m!2250995))

(assert (=> b!1822190 m!2250989))

(declare-fun m!2250999 () Bool)

(assert (=> d!557845 m!2250999))

(declare-fun m!2251003 () Bool)

(assert (=> d!557845 m!2251003))

(declare-fun m!2251005 () Bool)

(assert (=> d!557845 m!2251005))

(assert (=> d!557845 m!2250645))

(assert (=> b!1822189 m!2250989))

(declare-fun m!2251007 () Bool)

(assert (=> b!1822189 m!2251007))

(assert (=> b!1822188 m!2250989))

(declare-fun m!2251009 () Bool)

(assert (=> b!1822188 m!2251009))

(assert (=> b!1822188 m!2251009))

(declare-fun m!2251015 () Bool)

(assert (=> b!1822188 m!2251015))

(assert (=> b!1822186 m!2250989))

(assert (=> b!1822186 m!2250991))

(assert (=> b!1822186 m!2250991))

(assert (=> b!1822186 m!2250993))

(assert (=> b!1822186 m!2250993))

(declare-fun m!2251021 () Bool)

(assert (=> b!1822186 m!2251021))

(assert (=> b!1822184 m!2250989))

(declare-fun m!2251023 () Bool)

(assert (=> b!1822184 m!2251023))

(assert (=> b!1822184 m!2250793))

(declare-fun m!2251025 () Bool)

(assert (=> b!1822182 m!2251025))

(assert (=> b!1822182 m!2250793))

(assert (=> b!1822182 m!2251025))

(assert (=> b!1822182 m!2250793))

(declare-fun m!2251027 () Bool)

(assert (=> b!1822182 m!2251027))

(declare-fun m!2251029 () Bool)

(assert (=> b!1822182 m!2251029))

(assert (=> b!1822187 m!2251025))

(assert (=> b!1822187 m!2250793))

(assert (=> b!1822187 m!2251027))

(declare-fun m!2251031 () Bool)

(assert (=> b!1822187 m!2251031))

(declare-fun m!2251033 () Bool)

(assert (=> b!1822187 m!2251033))

(declare-fun m!2251035 () Bool)

(assert (=> b!1822187 m!2251035))

(assert (=> b!1822187 m!2251025))

(assert (=> b!1822187 m!2251033))

(declare-fun m!2251037 () Bool)

(assert (=> b!1822187 m!2251037))

(assert (=> b!1822187 m!2251033))

(declare-fun m!2251039 () Bool)

(assert (=> b!1822187 m!2251039))

(assert (=> b!1822187 m!2251033))

(declare-fun m!2251041 () Bool)

(assert (=> b!1822187 m!2251041))

(assert (=> b!1822187 m!2250793))

(assert (=> b!1821855 d!557845))

(declare-fun d!557871 () Bool)

(assert (=> d!557871 (= (maxPrefixOneRule!1147 thiss!28068 rule!559 input!3612) (Some!4184 (tuple2!19495 (Token!6765 (apply!5397 (transformation!3605 rule!559) (seqFromList!2566 lt!707956)) rule!559 (size!15854 lt!707956) lt!707956) suffix!1667)))))

(declare-fun lt!708127 () Unit!34659)

(declare-fun choose!11479 (LexerInterface!3234 List!20063 List!20061 List!20061 List!20061 Rule!7010) Unit!34659)

(assert (=> d!557871 (= lt!708127 (choose!11479 thiss!28068 rules!4538 lt!707956 input!3612 suffix!1667 rule!559))))

(assert (=> d!557871 (not (isEmpty!12619 rules!4538))))

(assert (=> d!557871 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!523 thiss!28068 rules!4538 lt!707956 input!3612 suffix!1667 rule!559) lt!708127)))

(declare-fun bs!407378 () Bool)

(assert (= bs!407378 d!557871))

(assert (=> bs!407378 m!2250671))

(assert (=> bs!407378 m!2250675))

(assert (=> bs!407378 m!2250625))

(assert (=> bs!407378 m!2250667))

(assert (=> bs!407378 m!2250667))

(assert (=> bs!407378 m!2250669))

(declare-fun m!2251061 () Bool)

(assert (=> bs!407378 m!2251061))

(assert (=> b!1821855 d!557871))

(declare-fun d!557881 () Bool)

(declare-fun fromListB!1170 (List!20061) BalanceConc!13218)

(assert (=> d!557881 (= (seqFromList!2566 lt!707956) (fromListB!1170 lt!707956))))

(declare-fun bs!407379 () Bool)

(assert (= bs!407379 d!557881))

(declare-fun m!2251069 () Bool)

(assert (=> bs!407379 m!2251069))

(assert (=> b!1821855 d!557881))

(declare-fun d!557883 () Bool)

(declare-fun dynLambda!9931 (Int BalanceConc!13218) TokenValue!3695)

(assert (=> d!557883 (= (apply!5397 (transformation!3605 rule!559) (seqFromList!2566 lt!707956)) (dynLambda!9931 (toValue!5140 (transformation!3605 rule!559)) (seqFromList!2566 lt!707956)))))

(declare-fun b_lambda!60139 () Bool)

(assert (=> (not b_lambda!60139) (not d!557883)))

(declare-fun t!169954 () Bool)

(declare-fun tb!111281 () Bool)

(assert (=> (and b!1821858 (= (toValue!5140 (transformation!3605 (h!25394 rules!4538))) (toValue!5140 (transformation!3605 rule!559))) t!169954) tb!111281))

(declare-fun result!133746 () Bool)

(assert (=> tb!111281 (= result!133746 (inv!21 (dynLambda!9931 (toValue!5140 (transformation!3605 rule!559)) (seqFromList!2566 lt!707956))))))

(declare-fun m!2251071 () Bool)

(assert (=> tb!111281 m!2251071))

(assert (=> d!557883 t!169954))

(declare-fun b_and!141371 () Bool)

(assert (= b_and!141341 (and (=> t!169954 result!133746) b_and!141371)))

(declare-fun t!169956 () Bool)

(declare-fun tb!111283 () Bool)

(assert (=> (and b!1821847 (= (toValue!5140 (transformation!3605 (rule!5735 token!556))) (toValue!5140 (transformation!3605 rule!559))) t!169956) tb!111283))

(declare-fun result!133750 () Bool)

(assert (= result!133750 result!133746))

(assert (=> d!557883 t!169956))

(declare-fun b_and!141373 () Bool)

(assert (= b_and!141345 (and (=> t!169956 result!133750) b_and!141373)))

(declare-fun t!169958 () Bool)

(declare-fun tb!111285 () Bool)

(assert (=> (and b!1821850 (= (toValue!5140 (transformation!3605 rule!559)) (toValue!5140 (transformation!3605 rule!559))) t!169958) tb!111285))

(declare-fun result!133752 () Bool)

(assert (= result!133752 result!133746))

(assert (=> d!557883 t!169958))

(declare-fun b_and!141375 () Bool)

(assert (= b_and!141349 (and (=> t!169958 result!133752) b_and!141375)))

(assert (=> d!557883 m!2250667))

(declare-fun m!2251073 () Bool)

(assert (=> d!557883 m!2251073))

(assert (=> b!1821855 d!557883))

(declare-fun d!557885 () Bool)

(declare-fun res!819558 () Bool)

(declare-fun e!1164688 () Bool)

(assert (=> d!557885 (=> (not res!819558) (not e!1164688))))

(assert (=> d!557885 (= res!819558 (not (isEmpty!12624 (originalCharacters!4413 token!556))))))

(assert (=> d!557885 (= (inv!26021 token!556) e!1164688)))

(declare-fun b!1822271 () Bool)

(declare-fun res!819559 () Bool)

(assert (=> b!1822271 (=> (not res!819559) (not e!1164688))))

(declare-fun dynLambda!9932 (Int TokenValue!3695) BalanceConc!13218)

(assert (=> b!1822271 (= res!819559 (= (originalCharacters!4413 token!556) (list!8121 (dynLambda!9932 (toChars!4999 (transformation!3605 (rule!5735 token!556))) (value!112409 token!556)))))))

(declare-fun b!1822272 () Bool)

(assert (=> b!1822272 (= e!1164688 (= (size!15853 token!556) (size!15854 (originalCharacters!4413 token!556))))))

(assert (= (and d!557885 res!819558) b!1822271))

(assert (= (and b!1822271 res!819559) b!1822272))

(declare-fun b_lambda!60149 () Bool)

(assert (=> (not b_lambda!60149) (not b!1822271)))

(declare-fun tb!111291 () Bool)

(declare-fun t!169964 () Bool)

(assert (=> (and b!1821858 (= (toChars!4999 (transformation!3605 (h!25394 rules!4538))) (toChars!4999 (transformation!3605 (rule!5735 token!556)))) t!169964) tb!111291))

(declare-fun b!1822277 () Bool)

(declare-fun e!1164691 () Bool)

(declare-fun tp!515248 () Bool)

(declare-fun inv!26023 (Conc!6637) Bool)

(assert (=> b!1822277 (= e!1164691 (and (inv!26023 (c!297210 (dynLambda!9932 (toChars!4999 (transformation!3605 (rule!5735 token!556))) (value!112409 token!556)))) tp!515248))))

(declare-fun result!133758 () Bool)

(declare-fun inv!26024 (BalanceConc!13218) Bool)

(assert (=> tb!111291 (= result!133758 (and (inv!26024 (dynLambda!9932 (toChars!4999 (transformation!3605 (rule!5735 token!556))) (value!112409 token!556))) e!1164691))))

(assert (= tb!111291 b!1822277))

(declare-fun m!2251079 () Bool)

(assert (=> b!1822277 m!2251079))

(declare-fun m!2251081 () Bool)

(assert (=> tb!111291 m!2251081))

(assert (=> b!1822271 t!169964))

(declare-fun b_and!141381 () Bool)

(assert (= b_and!141343 (and (=> t!169964 result!133758) b_and!141381)))

(declare-fun t!169966 () Bool)

(declare-fun tb!111293 () Bool)

(assert (=> (and b!1821847 (= (toChars!4999 (transformation!3605 (rule!5735 token!556))) (toChars!4999 (transformation!3605 (rule!5735 token!556)))) t!169966) tb!111293))

(declare-fun result!133762 () Bool)

(assert (= result!133762 result!133758))

(assert (=> b!1822271 t!169966))

(declare-fun b_and!141383 () Bool)

(assert (= b_and!141347 (and (=> t!169966 result!133762) b_and!141383)))

(declare-fun tb!111295 () Bool)

(declare-fun t!169968 () Bool)

(assert (=> (and b!1821850 (= (toChars!4999 (transformation!3605 rule!559)) (toChars!4999 (transformation!3605 (rule!5735 token!556)))) t!169968) tb!111295))

(declare-fun result!133764 () Bool)

(assert (= result!133764 result!133758))

(assert (=> b!1822271 t!169968))

(declare-fun b_and!141385 () Bool)

(assert (= b_and!141351 (and (=> t!169968 result!133764) b_and!141385)))

(declare-fun m!2251083 () Bool)

(assert (=> d!557885 m!2251083))

(declare-fun m!2251085 () Bool)

(assert (=> b!1822271 m!2251085))

(assert (=> b!1822271 m!2251085))

(declare-fun m!2251087 () Bool)

(assert (=> b!1822271 m!2251087))

(declare-fun m!2251089 () Bool)

(assert (=> b!1822272 m!2251089))

(assert (=> start!180370 d!557885))

(declare-fun b!1822296 () Bool)

(declare-fun res!819572 () Bool)

(declare-fun e!1164709 () Bool)

(assert (=> b!1822296 (=> res!819572 e!1164709)))

(assert (=> b!1822296 (= res!819572 (not ((_ is Concat!8629) (regex!3605 rule!559))))))

(declare-fun e!1164712 () Bool)

(assert (=> b!1822296 (= e!1164712 e!1164709)))

(declare-fun b!1822297 () Bool)

(declare-fun e!1164706 () Bool)

(declare-fun e!1164710 () Bool)

(assert (=> b!1822297 (= e!1164706 e!1164710)))

(declare-fun c!297289 () Bool)

(assert (=> b!1822297 (= c!297289 ((_ is Star!4933) (regex!3605 rule!559)))))

(declare-fun b!1822298 () Bool)

(declare-fun e!1164708 () Bool)

(assert (=> b!1822298 (= e!1164710 e!1164708)))

(declare-fun res!819574 () Bool)

(declare-fun nullable!1525 (Regex!4933) Bool)

(assert (=> b!1822298 (= res!819574 (not (nullable!1525 (reg!5262 (regex!3605 rule!559)))))))

(assert (=> b!1822298 (=> (not res!819574) (not e!1164708))))

(declare-fun b!1822300 () Bool)

(declare-fun e!1164707 () Bool)

(declare-fun call!114334 () Bool)

(assert (=> b!1822300 (= e!1164707 call!114334)))

(declare-fun b!1822301 () Bool)

(declare-fun call!114332 () Bool)

(assert (=> b!1822301 (= e!1164708 call!114332)))

(declare-fun b!1822302 () Bool)

(assert (=> b!1822302 (= e!1164710 e!1164712)))

(declare-fun c!297288 () Bool)

(assert (=> b!1822302 (= c!297288 ((_ is Union!4933) (regex!3605 rule!559)))))

(declare-fun bm!114327 () Bool)

(assert (=> bm!114327 (= call!114334 call!114332)))

(declare-fun bm!114328 () Bool)

(assert (=> bm!114328 (= call!114332 (validRegex!2003 (ite c!297289 (reg!5262 (regex!3605 rule!559)) (ite c!297288 (regTwo!10379 (regex!3605 rule!559)) (regTwo!10378 (regex!3605 rule!559))))))))

(declare-fun bm!114329 () Bool)

(declare-fun call!114333 () Bool)

(assert (=> bm!114329 (= call!114333 (validRegex!2003 (ite c!297288 (regOne!10379 (regex!3605 rule!559)) (regOne!10378 (regex!3605 rule!559)))))))

(declare-fun b!1822299 () Bool)

(declare-fun e!1164711 () Bool)

(assert (=> b!1822299 (= e!1164711 call!114334)))

(declare-fun d!557889 () Bool)

(declare-fun res!819573 () Bool)

(assert (=> d!557889 (=> res!819573 e!1164706)))

(assert (=> d!557889 (= res!819573 ((_ is ElementMatch!4933) (regex!3605 rule!559)))))

(assert (=> d!557889 (= (validRegex!2003 (regex!3605 rule!559)) e!1164706)))

(declare-fun b!1822303 () Bool)

(declare-fun res!819571 () Bool)

(assert (=> b!1822303 (=> (not res!819571) (not e!1164711))))

(assert (=> b!1822303 (= res!819571 call!114333)))

(assert (=> b!1822303 (= e!1164712 e!1164711)))

(declare-fun b!1822304 () Bool)

(assert (=> b!1822304 (= e!1164709 e!1164707)))

(declare-fun res!819570 () Bool)

(assert (=> b!1822304 (=> (not res!819570) (not e!1164707))))

(assert (=> b!1822304 (= res!819570 call!114333)))

(assert (= (and d!557889 (not res!819573)) b!1822297))

(assert (= (and b!1822297 c!297289) b!1822298))

(assert (= (and b!1822297 (not c!297289)) b!1822302))

(assert (= (and b!1822298 res!819574) b!1822301))

(assert (= (and b!1822302 c!297288) b!1822303))

(assert (= (and b!1822302 (not c!297288)) b!1822296))

(assert (= (and b!1822303 res!819571) b!1822299))

(assert (= (and b!1822296 (not res!819572)) b!1822304))

(assert (= (and b!1822304 res!819570) b!1822300))

(assert (= (or b!1822299 b!1822300) bm!114327))

(assert (= (or b!1822303 b!1822304) bm!114329))

(assert (= (or b!1822301 bm!114327) bm!114328))

(declare-fun m!2251091 () Bool)

(assert (=> b!1822298 m!2251091))

(declare-fun m!2251093 () Bool)

(assert (=> bm!114328 m!2251093))

(declare-fun m!2251095 () Bool)

(assert (=> bm!114329 m!2251095))

(assert (=> b!1821844 d!557889))

(declare-fun b!1822333 () Bool)

(declare-fun e!1164732 () Bool)

(declare-fun head!4245 (List!20061) C!10040)

(assert (=> b!1822333 (= e!1164732 (not (= (head!4245 lt!707956) (c!297211 lt!707962))))))

(declare-fun bm!114332 () Bool)

(declare-fun call!114337 () Bool)

(assert (=> bm!114332 (= call!114337 (isEmpty!12624 lt!707956))))

(declare-fun b!1822334 () Bool)

(declare-fun e!1164727 () Bool)

(declare-fun e!1164728 () Bool)

(assert (=> b!1822334 (= e!1164727 e!1164728)))

(declare-fun res!819596 () Bool)

(assert (=> b!1822334 (=> (not res!819596) (not e!1164728))))

(declare-fun lt!708130 () Bool)

(assert (=> b!1822334 (= res!819596 (not lt!708130))))

(declare-fun b!1822335 () Bool)

(declare-fun e!1164730 () Bool)

(assert (=> b!1822335 (= e!1164730 (= lt!708130 call!114337))))

(declare-fun b!1822336 () Bool)

(declare-fun e!1164733 () Bool)

(assert (=> b!1822336 (= e!1164733 (not lt!708130))))

(declare-fun b!1822337 () Bool)

(declare-fun e!1164729 () Bool)

(assert (=> b!1822337 (= e!1164729 (= (head!4245 lt!707956) (c!297211 lt!707962)))))

(declare-fun b!1822338 () Bool)

(assert (=> b!1822338 (= e!1164730 e!1164733)))

(declare-fun c!297298 () Bool)

(assert (=> b!1822338 (= c!297298 ((_ is EmptyLang!4933) lt!707962))))

(declare-fun b!1822339 () Bool)

(declare-fun res!819594 () Bool)

(assert (=> b!1822339 (=> res!819594 e!1164727)))

(assert (=> b!1822339 (= res!819594 e!1164729)))

(declare-fun res!819595 () Bool)

(assert (=> b!1822339 (=> (not res!819595) (not e!1164729))))

(assert (=> b!1822339 (= res!819595 lt!708130)))

(declare-fun b!1822340 () Bool)

(declare-fun res!819591 () Bool)

(assert (=> b!1822340 (=> res!819591 e!1164727)))

(assert (=> b!1822340 (= res!819591 (not ((_ is ElementMatch!4933) lt!707962)))))

(assert (=> b!1822340 (= e!1164733 e!1164727)))

(declare-fun b!1822341 () Bool)

(declare-fun res!819598 () Bool)

(assert (=> b!1822341 (=> (not res!819598) (not e!1164729))))

(declare-fun tail!2704 (List!20061) List!20061)

(assert (=> b!1822341 (= res!819598 (isEmpty!12624 (tail!2704 lt!707956)))))

(declare-fun b!1822342 () Bool)

(declare-fun e!1164731 () Bool)

(assert (=> b!1822342 (= e!1164731 (nullable!1525 lt!707962))))

(declare-fun b!1822343 () Bool)

(declare-fun derivativeStep!1290 (Regex!4933 C!10040) Regex!4933)

(assert (=> b!1822343 (= e!1164731 (matchR!2398 (derivativeStep!1290 lt!707962 (head!4245 lt!707956)) (tail!2704 lt!707956)))))

(declare-fun b!1822344 () Bool)

(assert (=> b!1822344 (= e!1164728 e!1164732)))

(declare-fun res!819597 () Bool)

(assert (=> b!1822344 (=> res!819597 e!1164732)))

(assert (=> b!1822344 (= res!819597 call!114337)))

(declare-fun b!1822346 () Bool)

(declare-fun res!819593 () Bool)

(assert (=> b!1822346 (=> res!819593 e!1164732)))

(assert (=> b!1822346 (= res!819593 (not (isEmpty!12624 (tail!2704 lt!707956))))))

(declare-fun d!557891 () Bool)

(assert (=> d!557891 e!1164730))

(declare-fun c!297296 () Bool)

(assert (=> d!557891 (= c!297296 ((_ is EmptyExpr!4933) lt!707962))))

(assert (=> d!557891 (= lt!708130 e!1164731)))

(declare-fun c!297297 () Bool)

(assert (=> d!557891 (= c!297297 (isEmpty!12624 lt!707956))))

(assert (=> d!557891 (validRegex!2003 lt!707962)))

(assert (=> d!557891 (= (matchR!2398 lt!707962 lt!707956) lt!708130)))

(declare-fun b!1822345 () Bool)

(declare-fun res!819592 () Bool)

(assert (=> b!1822345 (=> (not res!819592) (not e!1164729))))

(assert (=> b!1822345 (= res!819592 (not call!114337))))

(assert (= (and d!557891 c!297297) b!1822342))

(assert (= (and d!557891 (not c!297297)) b!1822343))

(assert (= (and d!557891 c!297296) b!1822335))

(assert (= (and d!557891 (not c!297296)) b!1822338))

(assert (= (and b!1822338 c!297298) b!1822336))

(assert (= (and b!1822338 (not c!297298)) b!1822340))

(assert (= (and b!1822340 (not res!819591)) b!1822339))

(assert (= (and b!1822339 res!819595) b!1822345))

(assert (= (and b!1822345 res!819592) b!1822341))

(assert (= (and b!1822341 res!819598) b!1822337))

(assert (= (and b!1822339 (not res!819594)) b!1822334))

(assert (= (and b!1822334 res!819596) b!1822344))

(assert (= (and b!1822344 (not res!819597)) b!1822346))

(assert (= (and b!1822346 (not res!819593)) b!1822333))

(assert (= (or b!1822335 b!1822344 b!1822345) bm!114332))

(declare-fun m!2251097 () Bool)

(assert (=> bm!114332 m!2251097))

(declare-fun m!2251099 () Bool)

(assert (=> b!1822346 m!2251099))

(assert (=> b!1822346 m!2251099))

(declare-fun m!2251101 () Bool)

(assert (=> b!1822346 m!2251101))

(assert (=> b!1822341 m!2251099))

(assert (=> b!1822341 m!2251099))

(assert (=> b!1822341 m!2251101))

(declare-fun m!2251103 () Bool)

(assert (=> b!1822337 m!2251103))

(assert (=> d!557891 m!2251097))

(declare-fun m!2251105 () Bool)

(assert (=> d!557891 m!2251105))

(assert (=> b!1822343 m!2251103))

(assert (=> b!1822343 m!2251103))

(declare-fun m!2251107 () Bool)

(assert (=> b!1822343 m!2251107))

(assert (=> b!1822343 m!2251099))

(assert (=> b!1822343 m!2251107))

(assert (=> b!1822343 m!2251099))

(declare-fun m!2251109 () Bool)

(assert (=> b!1822343 m!2251109))

(assert (=> b!1822333 m!2251103))

(declare-fun m!2251111 () Bool)

(assert (=> b!1822342 m!2251111))

(assert (=> b!1821844 d!557891))

(assert (=> b!1821844 d!557807))

(declare-fun bs!407381 () Bool)

(declare-fun d!557893 () Bool)

(assert (= bs!407381 (and d!557893 b!1821844)))

(declare-fun lambda!71428 () Int)

(assert (=> bs!407381 (not (= lambda!71428 lambda!71390))))

(declare-fun bs!407382 () Bool)

(assert (= bs!407382 (and d!557893 d!557807)))

(assert (=> bs!407382 (not (= lambda!71428 lambda!71408))))

(declare-fun lambda!71429 () Int)

(assert (=> bs!407381 (= lambda!71429 lambda!71390)))

(assert (=> bs!407382 (not (= lambda!71429 lambda!71408))))

(declare-fun bs!407383 () Bool)

(assert (= bs!407383 d!557893))

(assert (=> bs!407383 (not (= lambda!71429 lambda!71428))))

(assert (=> d!557893 true))

(assert (=> d!557893 (= (matchR!2398 lt!707962 lt!707956) (exists!635 lt!707960 lambda!71429))))

(declare-fun lt!708133 () Unit!34659)

(declare-fun choose!11482 (Regex!4933 List!20062 List!20061) Unit!34659)

(assert (=> d!557893 (= lt!708133 (choose!11482 lt!707962 lt!707960 lt!707956))))

(assert (=> d!557893 (forall!4310 lt!707960 lambda!71428)))

(assert (=> d!557893 (= (matchRGenUnionSpec!220 lt!707962 lt!707960 lt!707956) lt!708133)))

(assert (=> bs!407383 m!2250633))

(declare-fun m!2251113 () Bool)

(assert (=> bs!407383 m!2251113))

(declare-fun m!2251115 () Bool)

(assert (=> bs!407383 m!2251115))

(declare-fun m!2251117 () Bool)

(assert (=> bs!407383 m!2251117))

(assert (=> b!1821844 d!557893))

(declare-fun b!1822357 () Bool)

(declare-fun e!1164740 () List!20061)

(assert (=> b!1822357 (= e!1164740 suffix!1667)))

(declare-fun d!557895 () Bool)

(declare-fun e!1164741 () Bool)

(assert (=> d!557895 e!1164741))

(declare-fun res!819606 () Bool)

(assert (=> d!557895 (=> (not res!819606) (not e!1164741))))

(declare-fun lt!708136 () List!20061)

(declare-fun content!2932 (List!20061) (InoxSet C!10040))

(assert (=> d!557895 (= res!819606 (= (content!2932 lt!708136) ((_ map or) (content!2932 lt!707956) (content!2932 suffix!1667))))))

(assert (=> d!557895 (= lt!708136 e!1164740)))

(declare-fun c!297301 () Bool)

(assert (=> d!557895 (= c!297301 ((_ is Nil!19991) lt!707956))))

(assert (=> d!557895 (= (++!5429 lt!707956 suffix!1667) lt!708136)))

(declare-fun b!1822360 () Bool)

(assert (=> b!1822360 (= e!1164741 (or (not (= suffix!1667 Nil!19991)) (= lt!708136 lt!707956)))))

(declare-fun b!1822358 () Bool)

(assert (=> b!1822358 (= e!1164740 (Cons!19991 (h!25392 lt!707956) (++!5429 (t!169938 lt!707956) suffix!1667)))))

(declare-fun b!1822359 () Bool)

(declare-fun res!819605 () Bool)

(assert (=> b!1822359 (=> (not res!819605) (not e!1164741))))

(assert (=> b!1822359 (= res!819605 (= (size!15854 lt!708136) (+ (size!15854 lt!707956) (size!15854 suffix!1667))))))

(assert (= (and d!557895 c!297301) b!1822357))

(assert (= (and d!557895 (not c!297301)) b!1822358))

(assert (= (and d!557895 res!819606) b!1822359))

(assert (= (and b!1822359 res!819605) b!1822360))

(declare-fun m!2251119 () Bool)

(assert (=> d!557895 m!2251119))

(declare-fun m!2251121 () Bool)

(assert (=> d!557895 m!2251121))

(declare-fun m!2251123 () Bool)

(assert (=> d!557895 m!2251123))

(declare-fun m!2251125 () Bool)

(assert (=> b!1822358 m!2251125))

(declare-fun m!2251127 () Bool)

(assert (=> b!1822359 m!2251127))

(assert (=> b!1822359 m!2250671))

(declare-fun m!2251129 () Bool)

(assert (=> b!1822359 m!2251129))

(assert (=> b!1821845 d!557895))

(declare-fun d!557897 () Bool)

(declare-fun list!8123 (Conc!6637) List!20061)

(assert (=> d!557897 (= (list!8121 (charsOf!2248 token!556)) (list!8123 (c!297210 (charsOf!2248 token!556))))))

(declare-fun bs!407384 () Bool)

(assert (= bs!407384 d!557897))

(declare-fun m!2251131 () Bool)

(assert (=> bs!407384 m!2251131))

(assert (=> b!1821845 d!557897))

(declare-fun d!557899 () Bool)

(declare-fun lt!708139 () BalanceConc!13218)

(assert (=> d!557899 (= (list!8121 lt!708139) (originalCharacters!4413 token!556))))

(assert (=> d!557899 (= lt!708139 (dynLambda!9932 (toChars!4999 (transformation!3605 (rule!5735 token!556))) (value!112409 token!556)))))

(assert (=> d!557899 (= (charsOf!2248 token!556) lt!708139)))

(declare-fun b_lambda!60151 () Bool)

(assert (=> (not b_lambda!60151) (not d!557899)))

(assert (=> d!557899 t!169964))

(declare-fun b_and!141387 () Bool)

(assert (= b_and!141381 (and (=> t!169964 result!133758) b_and!141387)))

(assert (=> d!557899 t!169966))

(declare-fun b_and!141389 () Bool)

(assert (= b_and!141383 (and (=> t!169966 result!133762) b_and!141389)))

(assert (=> d!557899 t!169968))

(declare-fun b_and!141391 () Bool)

(assert (= b_and!141385 (and (=> t!169968 result!133764) b_and!141391)))

(declare-fun m!2251133 () Bool)

(assert (=> d!557899 m!2251133))

(assert (=> d!557899 m!2251085))

(assert (=> b!1821845 d!557899))

(declare-fun bs!407385 () Bool)

(declare-fun d!557901 () Bool)

(assert (= bs!407385 (and d!557901 b!1821844)))

(declare-fun lambda!71432 () Int)

(assert (=> bs!407385 (not (= lambda!71432 lambda!71390))))

(declare-fun bs!407386 () Bool)

(assert (= bs!407386 (and d!557901 d!557807)))

(assert (=> bs!407386 (not (= lambda!71432 lambda!71408))))

(declare-fun bs!407387 () Bool)

(assert (= bs!407387 (and d!557901 d!557893)))

(assert (=> bs!407387 (= lambda!71432 lambda!71428)))

(assert (=> bs!407387 (not (= lambda!71432 lambda!71429))))

(declare-fun b!1822381 () Bool)

(declare-fun e!1164757 () Bool)

(declare-fun e!1164758 () Bool)

(assert (=> b!1822381 (= e!1164757 e!1164758)))

(declare-fun c!297311 () Bool)

(declare-fun isEmpty!12625 (List!20062) Bool)

(assert (=> b!1822381 (= c!297311 (isEmpty!12625 lt!707958))))

(declare-fun b!1822382 () Bool)

(declare-fun e!1164755 () Regex!4933)

(assert (=> b!1822382 (= e!1164755 (Union!4933 (h!25393 lt!707958) (generalisedUnion!460 (t!169939 lt!707958))))))

(declare-fun b!1822383 () Bool)

(declare-fun e!1164754 () Bool)

(declare-fun lt!708142 () Regex!4933)

(declare-fun isUnion!113 (Regex!4933) Bool)

(assert (=> b!1822383 (= e!1164754 (isUnion!113 lt!708142))))

(declare-fun b!1822384 () Bool)

(declare-fun e!1164759 () Regex!4933)

(assert (=> b!1822384 (= e!1164759 (h!25393 lt!707958))))

(declare-fun b!1822385 () Bool)

(assert (=> b!1822385 (= e!1164758 e!1164754)))

(declare-fun c!297310 () Bool)

(declare-fun tail!2705 (List!20062) List!20062)

(assert (=> b!1822385 (= c!297310 (isEmpty!12625 (tail!2705 lt!707958)))))

(declare-fun b!1822386 () Bool)

(declare-fun head!4246 (List!20062) Regex!4933)

(assert (=> b!1822386 (= e!1164754 (= lt!708142 (head!4246 lt!707958)))))

(assert (=> d!557901 e!1164757))

(declare-fun res!819611 () Bool)

(assert (=> d!557901 (=> (not res!819611) (not e!1164757))))

(assert (=> d!557901 (= res!819611 (validRegex!2003 lt!708142))))

(assert (=> d!557901 (= lt!708142 e!1164759)))

(declare-fun c!297312 () Bool)

(declare-fun e!1164756 () Bool)

(assert (=> d!557901 (= c!297312 e!1164756)))

(declare-fun res!819612 () Bool)

(assert (=> d!557901 (=> (not res!819612) (not e!1164756))))

(assert (=> d!557901 (= res!819612 ((_ is Cons!19992) lt!707958))))

(assert (=> d!557901 (forall!4310 lt!707958 lambda!71432)))

(assert (=> d!557901 (= (generalisedUnion!460 lt!707958) lt!708142)))

(declare-fun b!1822387 () Bool)

(assert (=> b!1822387 (= e!1164755 EmptyLang!4933)))

(declare-fun b!1822388 () Bool)

(declare-fun isEmptyLang!113 (Regex!4933) Bool)

(assert (=> b!1822388 (= e!1164758 (isEmptyLang!113 lt!708142))))

(declare-fun b!1822389 () Bool)

(assert (=> b!1822389 (= e!1164756 (isEmpty!12625 (t!169939 lt!707958)))))

(declare-fun b!1822390 () Bool)

(assert (=> b!1822390 (= e!1164759 e!1164755)))

(declare-fun c!297313 () Bool)

(assert (=> b!1822390 (= c!297313 ((_ is Cons!19992) lt!707958))))

(assert (= (and d!557901 res!819612) b!1822389))

(assert (= (and d!557901 c!297312) b!1822384))

(assert (= (and d!557901 (not c!297312)) b!1822390))

(assert (= (and b!1822390 c!297313) b!1822382))

(assert (= (and b!1822390 (not c!297313)) b!1822387))

(assert (= (and d!557901 res!819611) b!1822381))

(assert (= (and b!1822381 c!297311) b!1822388))

(assert (= (and b!1822381 (not c!297311)) b!1822385))

(assert (= (and b!1822385 c!297310) b!1822386))

(assert (= (and b!1822385 (not c!297310)) b!1822383))

(declare-fun m!2251135 () Bool)

(assert (=> b!1822389 m!2251135))

(declare-fun m!2251137 () Bool)

(assert (=> b!1822381 m!2251137))

(declare-fun m!2251139 () Bool)

(assert (=> b!1822383 m!2251139))

(declare-fun m!2251141 () Bool)

(assert (=> b!1822385 m!2251141))

(assert (=> b!1822385 m!2251141))

(declare-fun m!2251143 () Bool)

(assert (=> b!1822385 m!2251143))

(declare-fun m!2251145 () Bool)

(assert (=> d!557901 m!2251145))

(declare-fun m!2251147 () Bool)

(assert (=> d!557901 m!2251147))

(declare-fun m!2251149 () Bool)

(assert (=> b!1822388 m!2251149))

(declare-fun m!2251151 () Bool)

(assert (=> b!1822386 m!2251151))

(declare-fun m!2251153 () Bool)

(assert (=> b!1822382 m!2251153))

(assert (=> b!1821866 d!557901))

(declare-fun bs!407388 () Bool)

(declare-fun d!557903 () Bool)

(assert (= bs!407388 (and d!557903 b!1821866)))

(declare-fun lambda!71435 () Int)

(assert (=> bs!407388 (= lambda!71435 lambda!71389)))

(declare-fun bs!407389 () Bool)

(assert (= bs!407389 (and d!557903 d!557833)))

(assert (=> bs!407389 (= lambda!71435 lambda!71414)))

(declare-fun lt!708145 () Unit!34659)

(declare-fun lemma!482 (List!20063 LexerInterface!3234 List!20063) Unit!34659)

(assert (=> d!557903 (= lt!708145 (lemma!482 rules!4538 thiss!28068 rules!4538))))

(assert (=> d!557903 (= (rulesRegex!937 thiss!28068 rules!4538) (generalisedUnion!460 (map!4138 rules!4538 lambda!71435)))))

(declare-fun bs!407390 () Bool)

(assert (= bs!407390 d!557903))

(declare-fun m!2251155 () Bool)

(assert (=> bs!407390 m!2251155))

(declare-fun m!2251157 () Bool)

(assert (=> bs!407390 m!2251157))

(assert (=> bs!407390 m!2251157))

(declare-fun m!2251159 () Bool)

(assert (=> bs!407390 m!2251159))

(assert (=> b!1821866 d!557903))

(assert (=> b!1821866 d!557819))

(declare-fun bs!407391 () Bool)

(declare-fun d!557905 () Bool)

(assert (= bs!407391 (and d!557905 b!1821866)))

(declare-fun lambda!71440 () Int)

(assert (=> bs!407391 (= lambda!71440 lambda!71389)))

(declare-fun bs!407392 () Bool)

(assert (= bs!407392 (and d!557905 d!557833)))

(assert (=> bs!407392 (= lambda!71440 lambda!71414)))

(declare-fun bs!407393 () Bool)

(assert (= bs!407393 (and d!557905 d!557903)))

(assert (=> bs!407393 (= lambda!71440 lambda!71435)))

(declare-fun bs!407394 () Bool)

(assert (= bs!407394 (and d!557905 d!557807)))

(declare-fun lambda!71441 () Int)

(assert (=> bs!407394 (not (= lambda!71441 lambda!71408))))

(declare-fun bs!407395 () Bool)

(assert (= bs!407395 (and d!557905 d!557893)))

(assert (=> bs!407395 (= lambda!71441 lambda!71428)))

(assert (=> bs!407395 (not (= lambda!71441 lambda!71429))))

(declare-fun bs!407396 () Bool)

(assert (= bs!407396 (and d!557905 d!557901)))

(assert (=> bs!407396 (= lambda!71441 lambda!71432)))

(declare-fun bs!407397 () Bool)

(assert (= bs!407397 (and d!557905 b!1821844)))

(assert (=> bs!407397 (not (= lambda!71441 lambda!71390))))

(assert (=> d!557905 (forall!4310 (map!4138 rules!4538 lambda!71440) lambda!71441)))

(declare-fun lt!708156 () Unit!34659)

(declare-fun e!1164762 () Unit!34659)

(assert (=> d!557905 (= lt!708156 e!1164762)))

(declare-fun c!297316 () Bool)

(assert (=> d!557905 (= c!297316 ((_ is Nil!19993) rules!4538))))

(assert (=> d!557905 (rulesValid!1367 thiss!28068 rules!4538)))

(declare-fun lt!708159 () Unit!34659)

(declare-fun lt!708158 () Unit!34659)

(assert (=> d!557905 (= lt!708159 lt!708158)))

(declare-fun lt!708157 () List!20061)

(assert (=> d!557905 (= (maxPrefixOneRule!1147 thiss!28068 rule!559 input!3612) (Some!4184 (tuple2!19495 (Token!6765 (apply!5397 (transformation!3605 rule!559) (seqFromList!2566 lt!708157)) rule!559 (size!15854 lt!708157) lt!708157) suffix!1667)))))

(assert (=> d!557905 (= lt!708158 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!523 thiss!28068 rules!4538 lt!708157 input!3612 suffix!1667 rule!559))))

(assert (=> d!557905 (= lt!708157 (list!8121 (charsOf!2248 token!556)))))

(assert (=> d!557905 (= (lemma!480 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538) lt!708156)))

(declare-fun b!1822395 () Bool)

(declare-fun Unit!34665 () Unit!34659)

(assert (=> b!1822395 (= e!1164762 Unit!34665)))

(declare-fun b!1822396 () Bool)

(declare-fun Unit!34666 () Unit!34659)

(assert (=> b!1822396 (= e!1164762 Unit!34666)))

(declare-fun lt!708160 () Unit!34659)

(assert (=> b!1822396 (= lt!708160 (lemma!480 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 (t!169940 rules!4538)))))

(assert (= (and d!557905 c!297316) b!1822395))

(assert (= (and d!557905 (not c!297316)) b!1822396))

(declare-fun m!2251161 () Bool)

(assert (=> d!557905 m!2251161))

(declare-fun m!2251163 () Bool)

(assert (=> d!557905 m!2251163))

(assert (=> d!557905 m!2250675))

(assert (=> d!557905 m!2250689))

(declare-fun m!2251165 () Bool)

(assert (=> d!557905 m!2251165))

(declare-fun m!2251167 () Bool)

(assert (=> d!557905 m!2251167))

(declare-fun m!2251169 () Bool)

(assert (=> d!557905 m!2251169))

(declare-fun m!2251171 () Bool)

(assert (=> d!557905 m!2251171))

(assert (=> d!557905 m!2251161))

(assert (=> d!557905 m!2250659))

(assert (=> d!557905 m!2251167))

(assert (=> d!557905 m!2250659))

(assert (=> d!557905 m!2250661))

(declare-fun m!2251173 () Bool)

(assert (=> b!1822396 m!2251173))

(assert (=> b!1821866 d!557905))

(declare-fun b!1822397 () Bool)

(declare-fun e!1164768 () Bool)

(assert (=> b!1822397 (= e!1164768 (not (= (head!4245 lt!707956) (c!297211 (regex!3605 rule!559)))))))

(declare-fun bm!114333 () Bool)

(declare-fun call!114338 () Bool)

(assert (=> bm!114333 (= call!114338 (isEmpty!12624 lt!707956))))

(declare-fun b!1822398 () Bool)

(declare-fun e!1164763 () Bool)

(declare-fun e!1164764 () Bool)

(assert (=> b!1822398 (= e!1164763 e!1164764)))

(declare-fun res!819618 () Bool)

(assert (=> b!1822398 (=> (not res!819618) (not e!1164764))))

(declare-fun lt!708161 () Bool)

(assert (=> b!1822398 (= res!819618 (not lt!708161))))

(declare-fun b!1822399 () Bool)

(declare-fun e!1164766 () Bool)

(assert (=> b!1822399 (= e!1164766 (= lt!708161 call!114338))))

(declare-fun b!1822400 () Bool)

(declare-fun e!1164769 () Bool)

(assert (=> b!1822400 (= e!1164769 (not lt!708161))))

(declare-fun b!1822401 () Bool)

(declare-fun e!1164765 () Bool)

(assert (=> b!1822401 (= e!1164765 (= (head!4245 lt!707956) (c!297211 (regex!3605 rule!559))))))

(declare-fun b!1822402 () Bool)

(assert (=> b!1822402 (= e!1164766 e!1164769)))

(declare-fun c!297319 () Bool)

(assert (=> b!1822402 (= c!297319 ((_ is EmptyLang!4933) (regex!3605 rule!559)))))

(declare-fun b!1822403 () Bool)

(declare-fun res!819616 () Bool)

(assert (=> b!1822403 (=> res!819616 e!1164763)))

(assert (=> b!1822403 (= res!819616 e!1164765)))

(declare-fun res!819617 () Bool)

(assert (=> b!1822403 (=> (not res!819617) (not e!1164765))))

(assert (=> b!1822403 (= res!819617 lt!708161)))

(declare-fun b!1822404 () Bool)

(declare-fun res!819613 () Bool)

(assert (=> b!1822404 (=> res!819613 e!1164763)))

(assert (=> b!1822404 (= res!819613 (not ((_ is ElementMatch!4933) (regex!3605 rule!559))))))

(assert (=> b!1822404 (= e!1164769 e!1164763)))

(declare-fun b!1822405 () Bool)

(declare-fun res!819620 () Bool)

(assert (=> b!1822405 (=> (not res!819620) (not e!1164765))))

(assert (=> b!1822405 (= res!819620 (isEmpty!12624 (tail!2704 lt!707956)))))

(declare-fun b!1822406 () Bool)

(declare-fun e!1164767 () Bool)

(assert (=> b!1822406 (= e!1164767 (nullable!1525 (regex!3605 rule!559)))))

(declare-fun b!1822407 () Bool)

(assert (=> b!1822407 (= e!1164767 (matchR!2398 (derivativeStep!1290 (regex!3605 rule!559) (head!4245 lt!707956)) (tail!2704 lt!707956)))))

(declare-fun b!1822408 () Bool)

(assert (=> b!1822408 (= e!1164764 e!1164768)))

(declare-fun res!819619 () Bool)

(assert (=> b!1822408 (=> res!819619 e!1164768)))

(assert (=> b!1822408 (= res!819619 call!114338)))

(declare-fun b!1822410 () Bool)

(declare-fun res!819615 () Bool)

(assert (=> b!1822410 (=> res!819615 e!1164768)))

(assert (=> b!1822410 (= res!819615 (not (isEmpty!12624 (tail!2704 lt!707956))))))

(declare-fun d!557907 () Bool)

(assert (=> d!557907 e!1164766))

(declare-fun c!297317 () Bool)

(assert (=> d!557907 (= c!297317 ((_ is EmptyExpr!4933) (regex!3605 rule!559)))))

(assert (=> d!557907 (= lt!708161 e!1164767)))

(declare-fun c!297318 () Bool)

(assert (=> d!557907 (= c!297318 (isEmpty!12624 lt!707956))))

(assert (=> d!557907 (validRegex!2003 (regex!3605 rule!559))))

(assert (=> d!557907 (= (matchR!2398 (regex!3605 rule!559) lt!707956) lt!708161)))

(declare-fun b!1822409 () Bool)

(declare-fun res!819614 () Bool)

(assert (=> b!1822409 (=> (not res!819614) (not e!1164765))))

(assert (=> b!1822409 (= res!819614 (not call!114338))))

(assert (= (and d!557907 c!297318) b!1822406))

(assert (= (and d!557907 (not c!297318)) b!1822407))

(assert (= (and d!557907 c!297317) b!1822399))

(assert (= (and d!557907 (not c!297317)) b!1822402))

(assert (= (and b!1822402 c!297319) b!1822400))

(assert (= (and b!1822402 (not c!297319)) b!1822404))

(assert (= (and b!1822404 (not res!819613)) b!1822403))

(assert (= (and b!1822403 res!819617) b!1822409))

(assert (= (and b!1822409 res!819614) b!1822405))

(assert (= (and b!1822405 res!819620) b!1822401))

(assert (= (and b!1822403 (not res!819616)) b!1822398))

(assert (= (and b!1822398 res!819618) b!1822408))

(assert (= (and b!1822408 (not res!819619)) b!1822410))

(assert (= (and b!1822410 (not res!819615)) b!1822397))

(assert (= (or b!1822399 b!1822408 b!1822409) bm!114333))

(assert (=> bm!114333 m!2251097))

(assert (=> b!1822410 m!2251099))

(assert (=> b!1822410 m!2251099))

(assert (=> b!1822410 m!2251101))

(assert (=> b!1822405 m!2251099))

(assert (=> b!1822405 m!2251099))

(assert (=> b!1822405 m!2251101))

(assert (=> b!1822401 m!2251103))

(assert (=> d!557907 m!2251097))

(assert (=> d!557907 m!2250631))

(assert (=> b!1822407 m!2251103))

(assert (=> b!1822407 m!2251103))

(declare-fun m!2251175 () Bool)

(assert (=> b!1822407 m!2251175))

(assert (=> b!1822407 m!2251099))

(assert (=> b!1822407 m!2251175))

(assert (=> b!1822407 m!2251099))

(declare-fun m!2251177 () Bool)

(assert (=> b!1822407 m!2251177))

(assert (=> b!1822397 m!2251103))

(declare-fun m!2251179 () Bool)

(assert (=> b!1822406 m!2251179))

(assert (=> b!1821865 d!557907))

(declare-fun d!557909 () Bool)

(declare-fun res!819625 () Bool)

(declare-fun e!1164772 () Bool)

(assert (=> d!557909 (=> (not res!819625) (not e!1164772))))

(assert (=> d!557909 (= res!819625 (validRegex!2003 (regex!3605 rule!559)))))

(assert (=> d!557909 (= (ruleValid!1097 thiss!28068 rule!559) e!1164772)))

(declare-fun b!1822415 () Bool)

(declare-fun res!819626 () Bool)

(assert (=> b!1822415 (=> (not res!819626) (not e!1164772))))

(assert (=> b!1822415 (= res!819626 (not (nullable!1525 (regex!3605 rule!559))))))

(declare-fun b!1822416 () Bool)

(assert (=> b!1822416 (= e!1164772 (not (= (tag!4019 rule!559) (String!22808 ""))))))

(assert (= (and d!557909 res!819625) b!1822415))

(assert (= (and b!1822415 res!819626) b!1822416))

(assert (=> d!557909 m!2250631))

(assert (=> b!1822415 m!2251179))

(assert (=> b!1821865 d!557909))

(declare-fun d!557911 () Bool)

(assert (=> d!557911 (ruleValid!1097 thiss!28068 rule!559)))

(declare-fun lt!708164 () Unit!34659)

(declare-fun choose!11483 (LexerInterface!3234 Rule!7010 List!20063) Unit!34659)

(assert (=> d!557911 (= lt!708164 (choose!11483 thiss!28068 rule!559 rules!4538))))

(assert (=> d!557911 (contains!3659 rules!4538 rule!559)))

(assert (=> d!557911 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!618 thiss!28068 rule!559 rules!4538) lt!708164)))

(declare-fun bs!407398 () Bool)

(assert (= bs!407398 d!557911))

(assert (=> bs!407398 m!2250645))

(declare-fun m!2251181 () Bool)

(assert (=> bs!407398 m!2251181))

(assert (=> bs!407398 m!2250629))

(assert (=> b!1821865 d!557911))

(declare-fun d!557913 () Bool)

(declare-fun lt!708167 () Bool)

(declare-fun content!2933 (List!20063) (InoxSet Rule!7010))

(assert (=> d!557913 (= lt!708167 (select (content!2933 rules!4538) rule!559))))

(declare-fun e!1164778 () Bool)

(assert (=> d!557913 (= lt!708167 e!1164778)))

(declare-fun res!819632 () Bool)

(assert (=> d!557913 (=> (not res!819632) (not e!1164778))))

(assert (=> d!557913 (= res!819632 ((_ is Cons!19993) rules!4538))))

(assert (=> d!557913 (= (contains!3659 rules!4538 rule!559) lt!708167)))

(declare-fun b!1822421 () Bool)

(declare-fun e!1164777 () Bool)

(assert (=> b!1822421 (= e!1164778 e!1164777)))

(declare-fun res!819631 () Bool)

(assert (=> b!1822421 (=> res!819631 e!1164777)))

(assert (=> b!1822421 (= res!819631 (= (h!25394 rules!4538) rule!559))))

(declare-fun b!1822422 () Bool)

(assert (=> b!1822422 (= e!1164777 (contains!3659 (t!169940 rules!4538) rule!559))))

(assert (= (and d!557913 res!819632) b!1822421))

(assert (= (and b!1822421 (not res!819631)) b!1822422))

(declare-fun m!2251183 () Bool)

(assert (=> d!557913 m!2251183))

(declare-fun m!2251185 () Bool)

(assert (=> d!557913 m!2251185))

(declare-fun m!2251187 () Bool)

(assert (=> b!1822422 m!2251187))

(assert (=> b!1821854 d!557913))

(declare-fun d!557915 () Bool)

(assert (=> d!557915 true))

(declare-fun lt!708170 () Bool)

(declare-fun lambda!71444 () Int)

(declare-fun forall!4311 (List!20063 Int) Bool)

(assert (=> d!557915 (= lt!708170 (forall!4311 rules!4538 lambda!71444))))

(declare-fun e!1164784 () Bool)

(assert (=> d!557915 (= lt!708170 e!1164784)))

(declare-fun res!819637 () Bool)

(assert (=> d!557915 (=> res!819637 e!1164784)))

(assert (=> d!557915 (= res!819637 (not ((_ is Cons!19993) rules!4538)))))

(assert (=> d!557915 (= (rulesValidInductive!1234 thiss!28068 rules!4538) lt!708170)))

(declare-fun b!1822427 () Bool)

(declare-fun e!1164783 () Bool)

(assert (=> b!1822427 (= e!1164784 e!1164783)))

(declare-fun res!819638 () Bool)

(assert (=> b!1822427 (=> (not res!819638) (not e!1164783))))

(assert (=> b!1822427 (= res!819638 (ruleValid!1097 thiss!28068 (h!25394 rules!4538)))))

(declare-fun b!1822428 () Bool)

(assert (=> b!1822428 (= e!1164783 (rulesValidInductive!1234 thiss!28068 (t!169940 rules!4538)))))

(assert (= (and d!557915 (not res!819637)) b!1822427))

(assert (= (and b!1822427 res!819638) b!1822428))

(declare-fun m!2251189 () Bool)

(assert (=> d!557915 m!2251189))

(declare-fun m!2251191 () Bool)

(assert (=> b!1822427 m!2251191))

(declare-fun m!2251193 () Bool)

(assert (=> b!1822428 m!2251193))

(assert (=> b!1821863 d!557915))

(declare-fun d!557917 () Bool)

(assert (=> d!557917 (= (inv!26018 (tag!4019 rule!559)) (= (mod (str.len (value!112408 (tag!4019 rule!559))) 2) 0))))

(assert (=> b!1821852 d!557917))

(declare-fun d!557919 () Bool)

(declare-fun res!819639 () Bool)

(declare-fun e!1164785 () Bool)

(assert (=> d!557919 (=> (not res!819639) (not e!1164785))))

(assert (=> d!557919 (= res!819639 (semiInverseModEq!1440 (toChars!4999 (transformation!3605 rule!559)) (toValue!5140 (transformation!3605 rule!559))))))

(assert (=> d!557919 (= (inv!26022 (transformation!3605 rule!559)) e!1164785)))

(declare-fun b!1822431 () Bool)

(assert (=> b!1822431 (= e!1164785 (equivClasses!1381 (toChars!4999 (transformation!3605 rule!559)) (toValue!5140 (transformation!3605 rule!559))))))

(assert (= (and d!557919 res!819639) b!1822431))

(declare-fun m!2251195 () Bool)

(assert (=> d!557919 m!2251195))

(declare-fun m!2251197 () Bool)

(assert (=> b!1822431 m!2251197))

(assert (=> b!1821852 d!557919))

(declare-fun b!1822442 () Bool)

(declare-fun e!1164792 () Bool)

(declare-fun e!1164793 () Bool)

(assert (=> b!1822442 (= e!1164792 e!1164793)))

(declare-fun c!297324 () Bool)

(assert (=> b!1822442 (= c!297324 ((_ is IntegerValue!11086) (value!112409 token!556)))))

(declare-fun d!557921 () Bool)

(declare-fun c!297325 () Bool)

(assert (=> d!557921 (= c!297325 ((_ is IntegerValue!11085) (value!112409 token!556)))))

(assert (=> d!557921 (= (inv!21 (value!112409 token!556)) e!1164792)))

(declare-fun b!1822443 () Bool)

(declare-fun inv!17 (TokenValue!3695) Bool)

(assert (=> b!1822443 (= e!1164793 (inv!17 (value!112409 token!556)))))

(declare-fun b!1822444 () Bool)

(declare-fun res!819642 () Bool)

(declare-fun e!1164794 () Bool)

(assert (=> b!1822444 (=> res!819642 e!1164794)))

(assert (=> b!1822444 (= res!819642 (not ((_ is IntegerValue!11087) (value!112409 token!556))))))

(assert (=> b!1822444 (= e!1164793 e!1164794)))

(declare-fun b!1822445 () Bool)

(declare-fun inv!16 (TokenValue!3695) Bool)

(assert (=> b!1822445 (= e!1164792 (inv!16 (value!112409 token!556)))))

(declare-fun b!1822446 () Bool)

(declare-fun inv!15 (TokenValue!3695) Bool)

(assert (=> b!1822446 (= e!1164794 (inv!15 (value!112409 token!556)))))

(assert (= (and d!557921 c!297325) b!1822445))

(assert (= (and d!557921 (not c!297325)) b!1822442))

(assert (= (and b!1822442 c!297324) b!1822443))

(assert (= (and b!1822442 (not c!297324)) b!1822444))

(assert (= (and b!1822444 (not res!819642)) b!1822446))

(declare-fun m!2251199 () Bool)

(assert (=> b!1822443 m!2251199))

(declare-fun m!2251201 () Bool)

(assert (=> b!1822445 m!2251201))

(declare-fun m!2251203 () Bool)

(assert (=> b!1822446 m!2251203))

(assert (=> b!1821853 d!557921))

(declare-fun b!1822459 () Bool)

(declare-fun e!1164797 () Bool)

(declare-fun tp!515263 () Bool)

(assert (=> b!1822459 (= e!1164797 tp!515263)))

(declare-fun b!1822458 () Bool)

(declare-fun tp!515262 () Bool)

(declare-fun tp!515261 () Bool)

(assert (=> b!1822458 (= e!1164797 (and tp!515262 tp!515261))))

(assert (=> b!1821857 (= tp!515197 e!1164797)))

(declare-fun b!1822457 () Bool)

(assert (=> b!1822457 (= e!1164797 tp_is_empty!8101)))

(declare-fun b!1822460 () Bool)

(declare-fun tp!515259 () Bool)

(declare-fun tp!515260 () Bool)

(assert (=> b!1822460 (= e!1164797 (and tp!515259 tp!515260))))

(assert (= (and b!1821857 ((_ is ElementMatch!4933) (regex!3605 (h!25394 rules!4538)))) b!1822457))

(assert (= (and b!1821857 ((_ is Concat!8629) (regex!3605 (h!25394 rules!4538)))) b!1822458))

(assert (= (and b!1821857 ((_ is Star!4933) (regex!3605 (h!25394 rules!4538)))) b!1822459))

(assert (= (and b!1821857 ((_ is Union!4933) (regex!3605 (h!25394 rules!4538)))) b!1822460))

(declare-fun b!1822463 () Bool)

(declare-fun e!1164798 () Bool)

(declare-fun tp!515268 () Bool)

(assert (=> b!1822463 (= e!1164798 tp!515268)))

(declare-fun b!1822462 () Bool)

(declare-fun tp!515267 () Bool)

(declare-fun tp!515266 () Bool)

(assert (=> b!1822462 (= e!1164798 (and tp!515267 tp!515266))))

(assert (=> b!1821861 (= tp!515193 e!1164798)))

(declare-fun b!1822461 () Bool)

(assert (=> b!1822461 (= e!1164798 tp_is_empty!8101)))

(declare-fun b!1822464 () Bool)

(declare-fun tp!515264 () Bool)

(declare-fun tp!515265 () Bool)

(assert (=> b!1822464 (= e!1164798 (and tp!515264 tp!515265))))

(assert (= (and b!1821861 ((_ is ElementMatch!4933) (regex!3605 (rule!5735 token!556)))) b!1822461))

(assert (= (and b!1821861 ((_ is Concat!8629) (regex!3605 (rule!5735 token!556)))) b!1822462))

(assert (= (and b!1821861 ((_ is Star!4933) (regex!3605 (rule!5735 token!556)))) b!1822463))

(assert (= (and b!1821861 ((_ is Union!4933) (regex!3605 (rule!5735 token!556)))) b!1822464))

(declare-fun b!1822475 () Bool)

(declare-fun b_free!50671 () Bool)

(declare-fun b_next!51375 () Bool)

(assert (=> b!1822475 (= b_free!50671 (not b_next!51375))))

(declare-fun t!169970 () Bool)

(declare-fun tb!111297 () Bool)

(assert (=> (and b!1822475 (= (toValue!5140 (transformation!3605 (h!25394 (t!169940 rules!4538)))) (toValue!5140 (transformation!3605 rule!559))) t!169970) tb!111297))

(declare-fun result!133770 () Bool)

(assert (= result!133770 result!133746))

(assert (=> d!557883 t!169970))

(declare-fun tp!515279 () Bool)

(declare-fun b_and!141393 () Bool)

(assert (=> b!1822475 (= tp!515279 (and (=> t!169970 result!133770) b_and!141393))))

(declare-fun b_free!50673 () Bool)

(declare-fun b_next!51377 () Bool)

(assert (=> b!1822475 (= b_free!50673 (not b_next!51377))))

(declare-fun tb!111299 () Bool)

(declare-fun t!169972 () Bool)

(assert (=> (and b!1822475 (= (toChars!4999 (transformation!3605 (h!25394 (t!169940 rules!4538)))) (toChars!4999 (transformation!3605 (rule!5735 token!556)))) t!169972) tb!111299))

(declare-fun result!133772 () Bool)

(assert (= result!133772 result!133758))

(assert (=> b!1822271 t!169972))

(assert (=> d!557899 t!169972))

(declare-fun b_and!141395 () Bool)

(declare-fun tp!515277 () Bool)

(assert (=> b!1822475 (= tp!515277 (and (=> t!169972 result!133772) b_and!141395))))

(declare-fun e!1164809 () Bool)

(assert (=> b!1822475 (= e!1164809 (and tp!515279 tp!515277))))

(declare-fun e!1164807 () Bool)

(declare-fun b!1822474 () Bool)

(declare-fun tp!515280 () Bool)

(assert (=> b!1822474 (= e!1164807 (and tp!515280 (inv!26018 (tag!4019 (h!25394 (t!169940 rules!4538)))) (inv!26022 (transformation!3605 (h!25394 (t!169940 rules!4538)))) e!1164809))))

(declare-fun b!1822473 () Bool)

(declare-fun e!1164810 () Bool)

(declare-fun tp!515278 () Bool)

(assert (=> b!1822473 (= e!1164810 (and e!1164807 tp!515278))))

(assert (=> b!1821859 (= tp!515190 e!1164810)))

(assert (= b!1822474 b!1822475))

(assert (= b!1822473 b!1822474))

(assert (= (and b!1821859 ((_ is Cons!19993) (t!169940 rules!4538))) b!1822473))

(declare-fun m!2251205 () Bool)

(assert (=> b!1822474 m!2251205))

(declare-fun m!2251207 () Bool)

(assert (=> b!1822474 m!2251207))

(declare-fun b!1822480 () Bool)

(declare-fun e!1164813 () Bool)

(declare-fun tp!515283 () Bool)

(assert (=> b!1822480 (= e!1164813 (and tp_is_empty!8101 tp!515283))))

(assert (=> b!1821864 (= tp!515196 e!1164813)))

(assert (= (and b!1821864 ((_ is Cons!19991) (t!169938 suffix!1667))) b!1822480))

(declare-fun b!1822481 () Bool)

(declare-fun e!1164814 () Bool)

(declare-fun tp!515284 () Bool)

(assert (=> b!1822481 (= e!1164814 (and tp_is_empty!8101 tp!515284))))

(assert (=> b!1821849 (= tp!515194 e!1164814)))

(assert (= (and b!1821849 ((_ is Cons!19991) (t!169938 input!3612))) b!1822481))

(declare-fun b!1822484 () Bool)

(declare-fun e!1164815 () Bool)

(declare-fun tp!515289 () Bool)

(assert (=> b!1822484 (= e!1164815 tp!515289)))

(declare-fun b!1822483 () Bool)

(declare-fun tp!515288 () Bool)

(declare-fun tp!515287 () Bool)

(assert (=> b!1822483 (= e!1164815 (and tp!515288 tp!515287))))

(assert (=> b!1821852 (= tp!515189 e!1164815)))

(declare-fun b!1822482 () Bool)

(assert (=> b!1822482 (= e!1164815 tp_is_empty!8101)))

(declare-fun b!1822485 () Bool)

(declare-fun tp!515285 () Bool)

(declare-fun tp!515286 () Bool)

(assert (=> b!1822485 (= e!1164815 (and tp!515285 tp!515286))))

(assert (= (and b!1821852 ((_ is ElementMatch!4933) (regex!3605 rule!559))) b!1822482))

(assert (= (and b!1821852 ((_ is Concat!8629) (regex!3605 rule!559))) b!1822483))

(assert (= (and b!1821852 ((_ is Star!4933) (regex!3605 rule!559))) b!1822484))

(assert (= (and b!1821852 ((_ is Union!4933) (regex!3605 rule!559))) b!1822485))

(declare-fun b!1822486 () Bool)

(declare-fun e!1164816 () Bool)

(declare-fun tp!515290 () Bool)

(assert (=> b!1822486 (= e!1164816 (and tp_is_empty!8101 tp!515290))))

(assert (=> b!1821853 (= tp!515191 e!1164816)))

(assert (= (and b!1821853 ((_ is Cons!19991) (originalCharacters!4413 token!556))) b!1822486))

(declare-fun b_lambda!60153 () Bool)

(assert (= b_lambda!60139 (or (and b!1821858 b_free!50655 (= (toValue!5140 (transformation!3605 (h!25394 rules!4538))) (toValue!5140 (transformation!3605 rule!559)))) (and b!1821847 b_free!50659 (= (toValue!5140 (transformation!3605 (rule!5735 token!556))) (toValue!5140 (transformation!3605 rule!559)))) (and b!1821850 b_free!50663) (and b!1822475 b_free!50671 (= (toValue!5140 (transformation!3605 (h!25394 (t!169940 rules!4538)))) (toValue!5140 (transformation!3605 rule!559)))) b_lambda!60153)))

(declare-fun b_lambda!60155 () Bool)

(assert (= b_lambda!60149 (or (and b!1821858 b_free!50657 (= (toChars!4999 (transformation!3605 (h!25394 rules!4538))) (toChars!4999 (transformation!3605 (rule!5735 token!556))))) (and b!1821847 b_free!50661) (and b!1821850 b_free!50665 (= (toChars!4999 (transformation!3605 rule!559)) (toChars!4999 (transformation!3605 (rule!5735 token!556))))) (and b!1822475 b_free!50673 (= (toChars!4999 (transformation!3605 (h!25394 (t!169940 rules!4538)))) (toChars!4999 (transformation!3605 (rule!5735 token!556))))) b_lambda!60155)))

(declare-fun b_lambda!60157 () Bool)

(assert (= b_lambda!60131 (or b!1821866 b_lambda!60157)))

(declare-fun bs!407399 () Bool)

(declare-fun d!557923 () Bool)

(assert (= bs!407399 (and d!557923 b!1821866)))

(assert (=> bs!407399 (= (dynLambda!9929 lambda!71389 (h!25394 rules!4538)) (regex!3605 (h!25394 rules!4538)))))

(assert (=> b!1822051 d!557923))

(declare-fun b_lambda!60159 () Bool)

(assert (= b_lambda!60151 (or (and b!1821858 b_free!50657 (= (toChars!4999 (transformation!3605 (h!25394 rules!4538))) (toChars!4999 (transformation!3605 (rule!5735 token!556))))) (and b!1821847 b_free!50661) (and b!1821850 b_free!50665 (= (toChars!4999 (transformation!3605 rule!559)) (toChars!4999 (transformation!3605 (rule!5735 token!556))))) (and b!1822475 b_free!50673 (= (toChars!4999 (transformation!3605 (h!25394 (t!169940 rules!4538)))) (toChars!4999 (transformation!3605 (rule!5735 token!556))))) b_lambda!60159)))

(check-sat b_and!141391 (not d!557901) (not d!557815) (not b!1822359) (not d!557905) (not b!1822462) (not b!1821992) (not b!1822386) (not b_lambda!60153) (not b!1822428) (not b!1822485) (not b!1822446) b_and!141371 (not b!1822410) (not b!1822277) (not b!1822298) (not bm!114328) (not b!1822443) (not d!557885) (not bm!114332) b_and!141395 (not b_lambda!60155) (not b!1822406) (not tb!111291) (not b!1822343) (not b!1822427) (not b!1822342) (not d!557845) tp_is_empty!8101 (not b!1821998) (not b!1822337) (not b!1822186) (not d!557783) (not b_next!51363) (not b!1822464) b_and!141387 (not d!557907) (not b!1822445) (not b!1822064) (not b!1822405) (not d!557895) (not b!1822189) (not b!1822385) (not b!1822271) (not d!557781) (not d!557833) (not b!1822037) (not b!1822190) (not b!1822458) (not d!557919) (not d!557903) (not d!557891) (not b_next!51361) (not d!557807) (not b!1822383) (not b!1822184) (not b!1822486) (not b_next!51369) (not b_next!51367) (not d!557881) (not d!557871) (not b!1822346) (not b!1821993) (not b!1821996) b_and!141389 (not b!1822401) (not b_lambda!60157) b_and!141375 (not b!1822382) b_and!141373 (not b!1822480) (not d!557909) (not b!1821991) (not b!1822397) (not b!1822022) (not tb!111281) (not b!1822407) (not bm!114329) (not b!1821871) (not d!557841) (not d!557899) (not bm!114307) (not b!1822459) (not b!1822070) (not b!1822187) (not b!1821994) (not b!1822415) (not b!1822062) (not d!557897) (not b!1822185) (not b!1822396) (not b!1822481) (not b!1822182) (not d!557819) (not b!1822389) (not b_next!51365) (not b!1822431) (not b!1821997) (not b_next!51375) (not d!557893) (not b!1822473) (not d!557913) (not b!1822484) (not d!557809) (not b!1822188) (not b!1822463) (not b!1822483) (not bm!114333) (not b!1821995) b_and!141393 (not b_next!51377) (not d!557813) (not b!1822333) (not b!1822422) (not b!1822474) (not d!557915) (not b!1822460) (not b_next!51359) (not b!1822051) (not b!1822341) (not b!1822381) (not b!1822388) (not b!1822272) (not b!1822358) (not d!557911) (not b_lambda!60159))
(check-sat b_and!141371 b_and!141395 (not b_next!51363) b_and!141387 (not b_next!51367) b_and!141389 b_and!141391 (not b_next!51365) (not b_next!51375) (not b_next!51359) (not b_next!51361) (not b_next!51369) b_and!141375 b_and!141373 b_and!141393 (not b_next!51377))
