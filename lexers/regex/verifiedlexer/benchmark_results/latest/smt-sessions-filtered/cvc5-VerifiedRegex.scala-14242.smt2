; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!745066 () Bool)

(assert start!745066)

(declare-fun b!7898749 () Bool)

(declare-fun b_free!134547 () Bool)

(declare-fun b_next!135337 () Bool)

(assert (=> b!7898749 (= b_free!134547 (not b_next!135337))))

(declare-fun tp!2353224 () Bool)

(declare-fun b_and!352447 () Bool)

(assert (=> b!7898749 (= tp!2353224 b_and!352447)))

(declare-fun b_free!134549 () Bool)

(declare-fun b_next!135339 () Bool)

(assert (=> b!7898749 (= b_free!134549 (not b_next!135339))))

(declare-fun tp!2353221 () Bool)

(declare-fun b_and!352449 () Bool)

(assert (=> b!7898749 (= tp!2353221 b_and!352449)))

(declare-fun b!7898747 () Bool)

(declare-fun e!4662245 () Bool)

(declare-fun tp_is_empty!52879 () Bool)

(declare-fun tp!2353223 () Bool)

(assert (=> b!7898747 (= e!4662245 (and tp_is_empty!52879 tp!2353223))))

(declare-fun b!7898748 () Bool)

(declare-fun e!4662243 () Bool)

(declare-fun e!4662246 () Bool)

(declare-fun tp!2353225 () Bool)

(assert (=> b!7898748 (= e!4662243 (and e!4662246 tp!2353225))))

(declare-fun e!4662250 () Bool)

(assert (=> b!7898749 (= e!4662250 (and tp!2353224 tp!2353221))))

(declare-fun b!7898750 () Bool)

(declare-fun e!4662244 () Bool)

(declare-fun e!4662247 () Bool)

(assert (=> b!7898750 (= e!4662244 (not e!4662247))))

(declare-fun res!3133382 () Bool)

(assert (=> b!7898750 (=> res!3133382 e!4662247)))

(declare-datatypes ((List!74167 0))(
  ( (Nil!74043) (Cons!74043 (h!80491 (_ BitVec 16)) (t!388976 List!74167)) )
))
(declare-datatypes ((TokenValue!8865 0))(
  ( (FloatLiteralValue!17730 (text!62500 List!74167)) (TokenValueExt!8864 (__x!35017 Int)) (Broken!44325 (value!285603 List!74167)) (Object!8988) (End!8865) (Def!8865) (Underscore!8865) (Match!8865) (Else!8865) (Error!8865) (Case!8865) (If!8865) (Extends!8865) (Abstract!8865) (Class!8865) (Val!8865) (DelimiterValue!17730 (del!8925 List!74167)) (KeywordValue!8871 (value!285604 List!74167)) (CommentValue!17730 (value!285605 List!74167)) (WhitespaceValue!17730 (value!285606 List!74167)) (IndentationValue!8865 (value!285607 List!74167)) (String!82748) (Int32!8865) (Broken!44326 (value!285608 List!74167)) (Boolean!8866) (Unit!169061) (OperatorValue!8868 (op!8925 List!74167)) (IdentifierValue!17730 (value!285609 List!74167)) (IdentifierValue!17731 (value!285610 List!74167)) (WhitespaceValue!17731 (value!285611 List!74167)) (True!17730) (False!17730) (Broken!44327 (value!285612 List!74167)) (Broken!44328 (value!285613 List!74167)) (True!17731) (RightBrace!8865) (RightBracket!8865) (Colon!8865) (Null!8865) (Comma!8865) (LeftBracket!8865) (False!17731) (LeftBrace!8865) (ImaginaryLiteralValue!8865 (text!62501 List!74167)) (StringLiteralValue!26595 (value!285614 List!74167)) (EOFValue!8865 (value!285615 List!74167)) (IdentValue!8865 (value!285616 List!74167)) (DelimiterValue!17731 (value!285617 List!74167)) (DedentValue!8865 (value!285618 List!74167)) (NewLineValue!8865 (value!285619 List!74167)) (IntegerValue!26595 (value!285620 (_ BitVec 32)) (text!62502 List!74167)) (IntegerValue!26596 (value!285621 Int) (text!62503 List!74167)) (Times!8865) (Or!8865) (Equal!8865) (Minus!8865) (Broken!44329 (value!285622 List!74167)) (And!8865) (Div!8865) (LessEqual!8865) (Mod!8865) (Concat!30117) (Not!8865) (Plus!8865) (SpaceValue!8865 (value!285623 List!74167)) (IntegerValue!26597 (value!285624 Int) (text!62504 List!74167)) (StringLiteralValue!26596 (text!62505 List!74167)) (FloatLiteralValue!17731 (text!62506 List!74167)) (BytesLiteralValue!8865 (value!285625 List!74167)) (CommentValue!17731 (value!285626 List!74167)) (StringLiteralValue!26597 (value!285627 List!74167)) (ErrorTokenValue!8865 (msg!8926 List!74167)) )
))
(declare-datatypes ((C!42834 0))(
  ( (C!42835 (val!31881 Int)) )
))
(declare-datatypes ((List!74168 0))(
  ( (Nil!74044) (Cons!74044 (h!80492 C!42834) (t!388977 List!74168)) )
))
(declare-datatypes ((IArray!31507 0))(
  ( (IArray!31508 (innerList!15811 List!74168)) )
))
(declare-datatypes ((Conc!15723 0))(
  ( (Node!15723 (left!56509 Conc!15723) (right!56839 Conc!15723) (csize!31676 Int) (cheight!15934 Int)) (Leaf!29966 (xs!19105 IArray!31507) (csize!31677 Int)) (Empty!15723) )
))
(declare-datatypes ((BalanceConc!30564 0))(
  ( (BalanceConc!30565 (c!1449717 Conc!15723)) )
))
(declare-datatypes ((Regex!21252 0))(
  ( (ElementMatch!21252 (c!1449718 C!42834)) (Concat!30118 (regOne!43016 Regex!21252) (regTwo!43016 Regex!21252)) (EmptyExpr!21252) (Star!21252 (reg!21581 Regex!21252)) (EmptyLang!21252) (Union!21252 (regOne!43017 Regex!21252) (regTwo!43017 Regex!21252)) )
))
(declare-datatypes ((String!82749 0))(
  ( (String!82750 (value!285628 String)) )
))
(declare-datatypes ((TokenValueInjection!17038 0))(
  ( (TokenValueInjection!17039 (toValue!11590 Int) (toChars!11449 Int)) )
))
(declare-datatypes ((Rule!16898 0))(
  ( (Rule!16899 (regex!8549 Regex!21252) (tag!9413 String!82749) (isSeparator!8549 Bool) (transformation!8549 TokenValueInjection!17038)) )
))
(declare-datatypes ((List!74169 0))(
  ( (Nil!74045) (Cons!74045 (h!80493 Rule!16898) (t!388978 List!74169)) )
))
(declare-fun rulesArg!141 () List!74169)

(assert (=> b!7898750 (= res!3133382 (or (and (is-Cons!74045 rulesArg!141) (is-Nil!74045 (t!388978 rulesArg!141))) (not (is-Cons!74045 rulesArg!141))))))

(declare-fun input!1184 () List!74168)

(declare-fun isPrefix!6382 (List!74168 List!74168) Bool)

(assert (=> b!7898750 (isPrefix!6382 input!1184 input!1184)))

(declare-datatypes ((Unit!169062 0))(
  ( (Unit!169063) )
))
(declare-fun lt!2682342 () Unit!169062)

(declare-fun lemmaIsPrefixRefl!3893 (List!74168 List!74168) Unit!169062)

(assert (=> b!7898750 (= lt!2682342 (lemmaIsPrefixRefl!3893 input!1184 input!1184))))

(declare-fun b!7898751 () Bool)

(declare-fun e!4662249 () Bool)

(declare-fun isEmpty!42476 (List!74169) Bool)

(assert (=> b!7898751 (= e!4662249 (not (isEmpty!42476 (t!388978 rulesArg!141))))))

(declare-fun b!7898752 () Bool)

(declare-fun res!3133380 () Bool)

(assert (=> b!7898752 (=> (not res!3133380) (not e!4662244))))

(assert (=> b!7898752 (= res!3133380 (not (isEmpty!42476 rulesArg!141)))))

(declare-fun res!3133379 () Bool)

(assert (=> start!745066 (=> (not res!3133379) (not e!4662244))))

(declare-datatypes ((LexerInterface!8141 0))(
  ( (LexerInterfaceExt!8138 (__x!35018 Int)) (Lexer!8139) )
))
(declare-fun thiss!14377 () LexerInterface!8141)

(assert (=> start!745066 (= res!3133379 (is-Lexer!8139 thiss!14377))))

(assert (=> start!745066 e!4662244))

(assert (=> start!745066 true))

(assert (=> start!745066 e!4662243))

(assert (=> start!745066 e!4662245))

(declare-fun b!7898753 () Bool)

(assert (=> b!7898753 (= e!4662247 e!4662249)))

(declare-fun res!3133378 () Bool)

(assert (=> b!7898753 (=> res!3133378 e!4662249)))

(declare-fun rulesValidInductive!3360 (LexerInterface!8141 List!74169) Bool)

(assert (=> b!7898753 (= res!3133378 (not (rulesValidInductive!3360 thiss!14377 (t!388978 rulesArg!141))))))

(declare-datatypes ((Token!15518 0))(
  ( (Token!15519 (value!285629 TokenValue!8865) (rule!11831 Rule!16898) (size!42894 Int) (originalCharacters!8790 List!74168)) )
))
(declare-datatypes ((tuple2!70114 0))(
  ( (tuple2!70115 (_1!38360 Token!15518) (_2!38360 List!74168)) )
))
(declare-datatypes ((Option!17831 0))(
  ( (None!17830) (Some!17830 (v!54967 tuple2!70114)) )
))
(declare-fun lt!2682341 () Option!17831)

(declare-fun maxPrefixOneRule!3729 (LexerInterface!8141 Rule!16898 List!74168) Option!17831)

(assert (=> b!7898753 (= lt!2682341 (maxPrefixOneRule!3729 thiss!14377 (h!80493 rulesArg!141) input!1184))))

(declare-fun b!7898754 () Bool)

(declare-fun res!3133381 () Bool)

(assert (=> b!7898754 (=> (not res!3133381) (not e!4662244))))

(assert (=> b!7898754 (= res!3133381 (rulesValidInductive!3360 thiss!14377 rulesArg!141))))

(declare-fun tp!2353222 () Bool)

(declare-fun b!7898755 () Bool)

(declare-fun inv!95035 (String!82749) Bool)

(declare-fun inv!95038 (TokenValueInjection!17038) Bool)

(assert (=> b!7898755 (= e!4662246 (and tp!2353222 (inv!95035 (tag!9413 (h!80493 rulesArg!141))) (inv!95038 (transformation!8549 (h!80493 rulesArg!141))) e!4662250))))

(assert (= (and start!745066 res!3133379) b!7898754))

(assert (= (and b!7898754 res!3133381) b!7898752))

(assert (= (and b!7898752 res!3133380) b!7898750))

(assert (= (and b!7898750 (not res!3133382)) b!7898753))

(assert (= (and b!7898753 (not res!3133378)) b!7898751))

(assert (= b!7898755 b!7898749))

(assert (= b!7898748 b!7898755))

(assert (= (and start!745066 (is-Cons!74045 rulesArg!141)) b!7898748))

(assert (= (and start!745066 (is-Cons!74044 input!1184)) b!7898747))

(declare-fun m!8273700 () Bool)

(assert (=> b!7898753 m!8273700))

(declare-fun m!8273702 () Bool)

(assert (=> b!7898753 m!8273702))

(declare-fun m!8273704 () Bool)

(assert (=> b!7898754 m!8273704))

(declare-fun m!8273706 () Bool)

(assert (=> b!7898750 m!8273706))

(declare-fun m!8273708 () Bool)

(assert (=> b!7898750 m!8273708))

(declare-fun m!8273710 () Bool)

(assert (=> b!7898752 m!8273710))

(declare-fun m!8273712 () Bool)

(assert (=> b!7898755 m!8273712))

(declare-fun m!8273714 () Bool)

(assert (=> b!7898755 m!8273714))

(declare-fun m!8273716 () Bool)

(assert (=> b!7898751 m!8273716))

(push 1)

(assert (not b!7898753))

(assert (not b!7898755))

(assert tp_is_empty!52879)

(assert b_and!352447)

(assert (not b_next!135339))

(assert (not b!7898750))

(assert (not b_next!135337))

(assert (not b!7898748))

(assert (not b!7898752))

(assert b_and!352449)

(assert (not b!7898754))

(assert (not b!7898751))

(assert (not b!7898747))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352449)

(assert b_and!352447)

(assert (not b_next!135339))

(assert (not b_next!135337))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2357871 () Bool)

(assert (=> d!2357871 true))

(declare-fun lt!2682353 () Bool)

(declare-fun lambda!472382 () Int)

(declare-fun forall!18436 (List!74169 Int) Bool)

(assert (=> d!2357871 (= lt!2682353 (forall!18436 (t!388978 rulesArg!141) lambda!472382))))

(declare-fun e!4662283 () Bool)

(assert (=> d!2357871 (= lt!2682353 e!4662283)))

(declare-fun res!3133412 () Bool)

(assert (=> d!2357871 (=> res!3133412 e!4662283)))

(assert (=> d!2357871 (= res!3133412 (not (is-Cons!74045 (t!388978 rulesArg!141))))))

(assert (=> d!2357871 (= (rulesValidInductive!3360 thiss!14377 (t!388978 rulesArg!141)) lt!2682353)))

(declare-fun b!7898791 () Bool)

(declare-fun e!4662284 () Bool)

(assert (=> b!7898791 (= e!4662283 e!4662284)))

(declare-fun res!3133413 () Bool)

(assert (=> b!7898791 (=> (not res!3133413) (not e!4662284))))

(declare-fun ruleValid!3927 (LexerInterface!8141 Rule!16898) Bool)

(assert (=> b!7898791 (= res!3133413 (ruleValid!3927 thiss!14377 (h!80493 (t!388978 rulesArg!141))))))

(declare-fun b!7898792 () Bool)

(assert (=> b!7898792 (= e!4662284 (rulesValidInductive!3360 thiss!14377 (t!388978 (t!388978 rulesArg!141))))))

(assert (= (and d!2357871 (not res!3133412)) b!7898791))

(assert (= (and b!7898791 res!3133413) b!7898792))

(declare-fun m!8273736 () Bool)

(assert (=> d!2357871 m!8273736))

(declare-fun m!8273738 () Bool)

(assert (=> b!7898791 m!8273738))

(declare-fun m!8273740 () Bool)

(assert (=> b!7898792 m!8273740))

(assert (=> b!7898753 d!2357871))

(declare-fun b!7898813 () Bool)

(declare-fun e!4662295 () Bool)

(declare-fun matchR!10634 (Regex!21252 List!74168) Bool)

(declare-datatypes ((tuple2!70118 0))(
  ( (tuple2!70119 (_1!38362 List!74168) (_2!38362 List!74168)) )
))
(declare-fun findLongestMatchInner!2147 (Regex!21252 List!74168 Int List!74168 List!74168 Int) tuple2!70118)

(declare-fun size!42896 (List!74168) Int)

(assert (=> b!7898813 (= e!4662295 (matchR!10634 (regex!8549 (h!80493 rulesArg!141)) (_1!38362 (findLongestMatchInner!2147 (regex!8549 (h!80493 rulesArg!141)) Nil!74044 (size!42896 Nil!74044) input!1184 input!1184 (size!42896 input!1184)))))))

(declare-fun b!7898814 () Bool)

(declare-fun e!4662293 () Option!17831)

(declare-fun lt!2682368 () tuple2!70118)

(declare-fun apply!14311 (TokenValueInjection!17038 BalanceConc!30564) TokenValue!8865)

(declare-fun seqFromList!6129 (List!74168) BalanceConc!30564)

(declare-fun size!42897 (BalanceConc!30564) Int)

(assert (=> b!7898814 (= e!4662293 (Some!17830 (tuple2!70115 (Token!15519 (apply!14311 (transformation!8549 (h!80493 rulesArg!141)) (seqFromList!6129 (_1!38362 lt!2682368))) (h!80493 rulesArg!141) (size!42897 (seqFromList!6129 (_1!38362 lt!2682368))) (_1!38362 lt!2682368)) (_2!38362 lt!2682368))))))

(declare-fun lt!2682366 () Unit!169062)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2110 (Regex!21252 List!74168) Unit!169062)

(assert (=> b!7898814 (= lt!2682366 (longestMatchIsAcceptedByMatchOrIsEmpty!2110 (regex!8549 (h!80493 rulesArg!141)) input!1184))))

(declare-fun res!3133429 () Bool)

(declare-fun isEmpty!42478 (List!74168) Bool)

(assert (=> b!7898814 (= res!3133429 (isEmpty!42478 (_1!38362 (findLongestMatchInner!2147 (regex!8549 (h!80493 rulesArg!141)) Nil!74044 (size!42896 Nil!74044) input!1184 input!1184 (size!42896 input!1184)))))))

(assert (=> b!7898814 (=> res!3133429 e!4662295)))

(assert (=> b!7898814 e!4662295))

(declare-fun lt!2682364 () Unit!169062)

(assert (=> b!7898814 (= lt!2682364 lt!2682366)))

(declare-fun lt!2682365 () Unit!169062)

(declare-fun lemmaSemiInverse!2657 (TokenValueInjection!17038 BalanceConc!30564) Unit!169062)

(assert (=> b!7898814 (= lt!2682365 (lemmaSemiInverse!2657 (transformation!8549 (h!80493 rulesArg!141)) (seqFromList!6129 (_1!38362 lt!2682368))))))

(declare-fun b!7898815 () Bool)

(assert (=> b!7898815 (= e!4662293 None!17830)))

(declare-fun b!7898816 () Bool)

(declare-fun res!3133432 () Bool)

(declare-fun e!4662296 () Bool)

(assert (=> b!7898816 (=> (not res!3133432) (not e!4662296))))

(declare-fun lt!2682367 () Option!17831)

(declare-fun ++!18130 (List!74168 List!74168) List!74168)

(declare-fun list!19171 (BalanceConc!30564) List!74168)

(declare-fun charsOf!5496 (Token!15518) BalanceConc!30564)

(declare-fun get!26581 (Option!17831) tuple2!70114)

(assert (=> b!7898816 (= res!3133432 (= (++!18130 (list!19171 (charsOf!5496 (_1!38360 (get!26581 lt!2682367)))) (_2!38360 (get!26581 lt!2682367))) input!1184))))

(declare-fun d!2357877 () Bool)

(declare-fun e!4662294 () Bool)

(assert (=> d!2357877 e!4662294))

(declare-fun res!3133433 () Bool)

(assert (=> d!2357877 (=> res!3133433 e!4662294)))

(declare-fun isEmpty!42479 (Option!17831) Bool)

(assert (=> d!2357877 (= res!3133433 (isEmpty!42479 lt!2682367))))

(assert (=> d!2357877 (= lt!2682367 e!4662293)))

(declare-fun c!1449724 () Bool)

(assert (=> d!2357877 (= c!1449724 (isEmpty!42478 (_1!38362 lt!2682368)))))

(declare-fun findLongestMatch!1914 (Regex!21252 List!74168) tuple2!70118)

(assert (=> d!2357877 (= lt!2682368 (findLongestMatch!1914 (regex!8549 (h!80493 rulesArg!141)) input!1184))))

(assert (=> d!2357877 (ruleValid!3927 thiss!14377 (h!80493 rulesArg!141))))

(assert (=> d!2357877 (= (maxPrefixOneRule!3729 thiss!14377 (h!80493 rulesArg!141) input!1184) lt!2682367)))

(declare-fun b!7898817 () Bool)

(assert (=> b!7898817 (= e!4662296 (= (size!42894 (_1!38360 (get!26581 lt!2682367))) (size!42896 (originalCharacters!8790 (_1!38360 (get!26581 lt!2682367))))))))

(declare-fun b!7898818 () Bool)

(declare-fun res!3133430 () Bool)

(assert (=> b!7898818 (=> (not res!3133430) (not e!4662296))))

(assert (=> b!7898818 (= res!3133430 (= (value!285629 (_1!38360 (get!26581 lt!2682367))) (apply!14311 (transformation!8549 (rule!11831 (_1!38360 (get!26581 lt!2682367)))) (seqFromList!6129 (originalCharacters!8790 (_1!38360 (get!26581 lt!2682367)))))))))

(declare-fun b!7898819 () Bool)

(assert (=> b!7898819 (= e!4662294 e!4662296)))

(declare-fun res!3133431 () Bool)

(assert (=> b!7898819 (=> (not res!3133431) (not e!4662296))))

(assert (=> b!7898819 (= res!3133431 (matchR!10634 (regex!8549 (h!80493 rulesArg!141)) (list!19171 (charsOf!5496 (_1!38360 (get!26581 lt!2682367))))))))

(declare-fun b!7898820 () Bool)

(declare-fun res!3133428 () Bool)

(assert (=> b!7898820 (=> (not res!3133428) (not e!4662296))))

(assert (=> b!7898820 (= res!3133428 (= (rule!11831 (_1!38360 (get!26581 lt!2682367))) (h!80493 rulesArg!141)))))

(declare-fun b!7898821 () Bool)

(declare-fun res!3133434 () Bool)

(assert (=> b!7898821 (=> (not res!3133434) (not e!4662296))))

(assert (=> b!7898821 (= res!3133434 (< (size!42896 (_2!38360 (get!26581 lt!2682367))) (size!42896 input!1184)))))

(assert (= (and d!2357877 c!1449724) b!7898815))

(assert (= (and d!2357877 (not c!1449724)) b!7898814))

(assert (= (and b!7898814 (not res!3133429)) b!7898813))

(assert (= (and d!2357877 (not res!3133433)) b!7898819))

(assert (= (and b!7898819 res!3133431) b!7898816))

(assert (= (and b!7898816 res!3133432) b!7898821))

(assert (= (and b!7898821 res!3133434) b!7898820))

(assert (= (and b!7898820 res!3133428) b!7898818))

(assert (= (and b!7898818 res!3133430) b!7898817))

(declare-fun m!8273742 () Bool)

(assert (=> b!7898819 m!8273742))

(declare-fun m!8273744 () Bool)

(assert (=> b!7898819 m!8273744))

(assert (=> b!7898819 m!8273744))

(declare-fun m!8273746 () Bool)

(assert (=> b!7898819 m!8273746))

(assert (=> b!7898819 m!8273746))

(declare-fun m!8273748 () Bool)

(assert (=> b!7898819 m!8273748))

(declare-fun m!8273750 () Bool)

(assert (=> b!7898814 m!8273750))

(declare-fun m!8273752 () Bool)

(assert (=> b!7898814 m!8273752))

(declare-fun m!8273754 () Bool)

(assert (=> b!7898814 m!8273754))

(declare-fun m!8273756 () Bool)

(assert (=> b!7898814 m!8273756))

(declare-fun m!8273758 () Bool)

(assert (=> b!7898814 m!8273758))

(assert (=> b!7898814 m!8273750))

(declare-fun m!8273760 () Bool)

(assert (=> b!7898814 m!8273760))

(assert (=> b!7898814 m!8273752))

(assert (=> b!7898814 m!8273756))

(declare-fun m!8273762 () Bool)

(assert (=> b!7898814 m!8273762))

(declare-fun m!8273764 () Bool)

(assert (=> b!7898814 m!8273764))

(assert (=> b!7898814 m!8273756))

(declare-fun m!8273766 () Bool)

(assert (=> b!7898814 m!8273766))

(assert (=> b!7898814 m!8273756))

(assert (=> b!7898816 m!8273742))

(assert (=> b!7898816 m!8273744))

(assert (=> b!7898816 m!8273744))

(assert (=> b!7898816 m!8273746))

(assert (=> b!7898816 m!8273746))

(declare-fun m!8273768 () Bool)

(assert (=> b!7898816 m!8273768))

(declare-fun m!8273770 () Bool)

(assert (=> d!2357877 m!8273770))

(declare-fun m!8273772 () Bool)

(assert (=> d!2357877 m!8273772))

(declare-fun m!8273774 () Bool)

(assert (=> d!2357877 m!8273774))

(declare-fun m!8273776 () Bool)

(assert (=> d!2357877 m!8273776))

(assert (=> b!7898820 m!8273742))

(assert (=> b!7898821 m!8273742))

(declare-fun m!8273778 () Bool)

(assert (=> b!7898821 m!8273778))

(assert (=> b!7898821 m!8273752))

(assert (=> b!7898817 m!8273742))

(declare-fun m!8273780 () Bool)

(assert (=> b!7898817 m!8273780))

(assert (=> b!7898813 m!8273750))

(assert (=> b!7898813 m!8273752))

(assert (=> b!7898813 m!8273750))

(assert (=> b!7898813 m!8273752))

(assert (=> b!7898813 m!8273754))

(declare-fun m!8273782 () Bool)

(assert (=> b!7898813 m!8273782))

(assert (=> b!7898818 m!8273742))

(declare-fun m!8273784 () Bool)

(assert (=> b!7898818 m!8273784))

(assert (=> b!7898818 m!8273784))

(declare-fun m!8273786 () Bool)

(assert (=> b!7898818 m!8273786))

(assert (=> b!7898753 d!2357877))

(declare-fun d!2357879 () Bool)

(assert (=> d!2357879 (= (isEmpty!42476 rulesArg!141) (is-Nil!74045 rulesArg!141))))

(assert (=> b!7898752 d!2357879))

(declare-fun d!2357881 () Bool)

(assert (=> d!2357881 (= (isEmpty!42476 (t!388978 rulesArg!141)) (is-Nil!74045 (t!388978 rulesArg!141)))))

(assert (=> b!7898751 d!2357881))

(declare-fun b!7898830 () Bool)

(declare-fun e!4662304 () Bool)

(declare-fun e!4662303 () Bool)

(assert (=> b!7898830 (= e!4662304 e!4662303)))

(declare-fun res!3133444 () Bool)

(assert (=> b!7898830 (=> (not res!3133444) (not e!4662303))))

(assert (=> b!7898830 (= res!3133444 (not (is-Nil!74044 input!1184)))))

(declare-fun b!7898833 () Bool)

(declare-fun e!4662305 () Bool)

(assert (=> b!7898833 (= e!4662305 (>= (size!42896 input!1184) (size!42896 input!1184)))))

(declare-fun d!2357883 () Bool)

(assert (=> d!2357883 e!4662305))

(declare-fun res!3133446 () Bool)

(assert (=> d!2357883 (=> res!3133446 e!4662305)))

(declare-fun lt!2682371 () Bool)

(assert (=> d!2357883 (= res!3133446 (not lt!2682371))))

(assert (=> d!2357883 (= lt!2682371 e!4662304)))

(declare-fun res!3133445 () Bool)

(assert (=> d!2357883 (=> res!3133445 e!4662304)))

(assert (=> d!2357883 (= res!3133445 (is-Nil!74044 input!1184))))

(assert (=> d!2357883 (= (isPrefix!6382 input!1184 input!1184) lt!2682371)))

(declare-fun b!7898831 () Bool)

(declare-fun res!3133443 () Bool)

(assert (=> b!7898831 (=> (not res!3133443) (not e!4662303))))

(declare-fun head!16139 (List!74168) C!42834)

(assert (=> b!7898831 (= res!3133443 (= (head!16139 input!1184) (head!16139 input!1184)))))

(declare-fun b!7898832 () Bool)

(declare-fun tail!15682 (List!74168) List!74168)

(assert (=> b!7898832 (= e!4662303 (isPrefix!6382 (tail!15682 input!1184) (tail!15682 input!1184)))))

(assert (= (and d!2357883 (not res!3133445)) b!7898830))

(assert (= (and b!7898830 res!3133444) b!7898831))

(assert (= (and b!7898831 res!3133443) b!7898832))

(assert (= (and d!2357883 (not res!3133446)) b!7898833))

(assert (=> b!7898833 m!8273752))

(assert (=> b!7898833 m!8273752))

(declare-fun m!8273788 () Bool)

(assert (=> b!7898831 m!8273788))

(assert (=> b!7898831 m!8273788))

(declare-fun m!8273790 () Bool)

(assert (=> b!7898832 m!8273790))

(assert (=> b!7898832 m!8273790))

(assert (=> b!7898832 m!8273790))

(assert (=> b!7898832 m!8273790))

(declare-fun m!8273792 () Bool)

(assert (=> b!7898832 m!8273792))

(assert (=> b!7898750 d!2357883))

(declare-fun d!2357885 () Bool)

(assert (=> d!2357885 (isPrefix!6382 input!1184 input!1184)))

(declare-fun lt!2682374 () Unit!169062)

(declare-fun choose!59707 (List!74168 List!74168) Unit!169062)

(assert (=> d!2357885 (= lt!2682374 (choose!59707 input!1184 input!1184))))

(assert (=> d!2357885 (= (lemmaIsPrefixRefl!3893 input!1184 input!1184) lt!2682374)))

(declare-fun bs!1967870 () Bool)

(assert (= bs!1967870 d!2357885))

(assert (=> bs!1967870 m!8273706))

(declare-fun m!8273794 () Bool)

(assert (=> bs!1967870 m!8273794))

(assert (=> b!7898750 d!2357885))

(declare-fun d!2357887 () Bool)

(assert (=> d!2357887 (= (inv!95035 (tag!9413 (h!80493 rulesArg!141))) (= (mod (str.len (value!285628 (tag!9413 (h!80493 rulesArg!141)))) 2) 0))))

(assert (=> b!7898755 d!2357887))

(declare-fun d!2357889 () Bool)

(declare-fun res!3133449 () Bool)

(declare-fun e!4662308 () Bool)

(assert (=> d!2357889 (=> (not res!3133449) (not e!4662308))))

(declare-fun semiInverseModEq!3807 (Int Int) Bool)

(assert (=> d!2357889 (= res!3133449 (semiInverseModEq!3807 (toChars!11449 (transformation!8549 (h!80493 rulesArg!141))) (toValue!11590 (transformation!8549 (h!80493 rulesArg!141)))))))

(assert (=> d!2357889 (= (inv!95038 (transformation!8549 (h!80493 rulesArg!141))) e!4662308)))

(declare-fun b!7898836 () Bool)

(declare-fun equivClasses!3622 (Int Int) Bool)

(assert (=> b!7898836 (= e!4662308 (equivClasses!3622 (toChars!11449 (transformation!8549 (h!80493 rulesArg!141))) (toValue!11590 (transformation!8549 (h!80493 rulesArg!141)))))))

(assert (= (and d!2357889 res!3133449) b!7898836))

(declare-fun m!8273796 () Bool)

(assert (=> d!2357889 m!8273796))

(declare-fun m!8273798 () Bool)

(assert (=> b!7898836 m!8273798))

(assert (=> b!7898755 d!2357889))

(declare-fun bs!1967871 () Bool)

(declare-fun d!2357891 () Bool)

(assert (= bs!1967871 (and d!2357891 d!2357871)))

(declare-fun lambda!472383 () Int)

(assert (=> bs!1967871 (= lambda!472383 lambda!472382)))

(assert (=> d!2357891 true))

(declare-fun lt!2682375 () Bool)

(assert (=> d!2357891 (= lt!2682375 (forall!18436 rulesArg!141 lambda!472383))))

(declare-fun e!4662309 () Bool)

(assert (=> d!2357891 (= lt!2682375 e!4662309)))

(declare-fun res!3133450 () Bool)

(assert (=> d!2357891 (=> res!3133450 e!4662309)))

(assert (=> d!2357891 (= res!3133450 (not (is-Cons!74045 rulesArg!141)))))

(assert (=> d!2357891 (= (rulesValidInductive!3360 thiss!14377 rulesArg!141) lt!2682375)))

(declare-fun b!7898837 () Bool)

(declare-fun e!4662310 () Bool)

(assert (=> b!7898837 (= e!4662309 e!4662310)))

(declare-fun res!3133451 () Bool)

(assert (=> b!7898837 (=> (not res!3133451) (not e!4662310))))

(assert (=> b!7898837 (= res!3133451 (ruleValid!3927 thiss!14377 (h!80493 rulesArg!141)))))

(declare-fun b!7898838 () Bool)

(assert (=> b!7898838 (= e!4662310 (rulesValidInductive!3360 thiss!14377 (t!388978 rulesArg!141)))))

(assert (= (and d!2357891 (not res!3133450)) b!7898837))

(assert (= (and b!7898837 res!3133451) b!7898838))

(declare-fun m!8273800 () Bool)

(assert (=> d!2357891 m!8273800))

(assert (=> b!7898837 m!8273776))

(assert (=> b!7898838 m!8273700))

(assert (=> b!7898754 d!2357891))

(declare-fun b!7898843 () Bool)

(declare-fun e!4662313 () Bool)

(declare-fun tp!2353243 () Bool)

(assert (=> b!7898843 (= e!4662313 (and tp_is_empty!52879 tp!2353243))))

(assert (=> b!7898747 (= tp!2353223 e!4662313)))

(assert (= (and b!7898747 (is-Cons!74044 (t!388977 input!1184))) b!7898843))

(declare-fun b!7898855 () Bool)

(declare-fun e!4662316 () Bool)

(declare-fun tp!2353258 () Bool)

(declare-fun tp!2353255 () Bool)

(assert (=> b!7898855 (= e!4662316 (and tp!2353258 tp!2353255))))

(declare-fun b!7898854 () Bool)

(assert (=> b!7898854 (= e!4662316 tp_is_empty!52879)))

(declare-fun b!7898856 () Bool)

(declare-fun tp!2353254 () Bool)

(assert (=> b!7898856 (= e!4662316 tp!2353254)))

(assert (=> b!7898755 (= tp!2353222 e!4662316)))

(declare-fun b!7898857 () Bool)

(declare-fun tp!2353257 () Bool)

(declare-fun tp!2353256 () Bool)

(assert (=> b!7898857 (= e!4662316 (and tp!2353257 tp!2353256))))

(assert (= (and b!7898755 (is-ElementMatch!21252 (regex!8549 (h!80493 rulesArg!141)))) b!7898854))

(assert (= (and b!7898755 (is-Concat!30118 (regex!8549 (h!80493 rulesArg!141)))) b!7898855))

(assert (= (and b!7898755 (is-Star!21252 (regex!8549 (h!80493 rulesArg!141)))) b!7898856))

(assert (= (and b!7898755 (is-Union!21252 (regex!8549 (h!80493 rulesArg!141)))) b!7898857))

(declare-fun b!7898868 () Bool)

(declare-fun b_free!134555 () Bool)

(declare-fun b_next!135345 () Bool)

(assert (=> b!7898868 (= b_free!134555 (not b_next!135345))))

(declare-fun tp!2353270 () Bool)

(declare-fun b_and!352455 () Bool)

(assert (=> b!7898868 (= tp!2353270 b_and!352455)))

(declare-fun b_free!134557 () Bool)

(declare-fun b_next!135347 () Bool)

(assert (=> b!7898868 (= b_free!134557 (not b_next!135347))))

(declare-fun tp!2353268 () Bool)

(declare-fun b_and!352457 () Bool)

(assert (=> b!7898868 (= tp!2353268 b_and!352457)))

(declare-fun e!4662327 () Bool)

(assert (=> b!7898868 (= e!4662327 (and tp!2353270 tp!2353268))))

(declare-fun tp!2353269 () Bool)

(declare-fun e!4662326 () Bool)

(declare-fun b!7898867 () Bool)

(assert (=> b!7898867 (= e!4662326 (and tp!2353269 (inv!95035 (tag!9413 (h!80493 (t!388978 rulesArg!141)))) (inv!95038 (transformation!8549 (h!80493 (t!388978 rulesArg!141)))) e!4662327))))

(declare-fun b!7898866 () Bool)

(declare-fun e!4662328 () Bool)

(declare-fun tp!2353267 () Bool)

(assert (=> b!7898866 (= e!4662328 (and e!4662326 tp!2353267))))

(assert (=> b!7898748 (= tp!2353225 e!4662328)))

(assert (= b!7898867 b!7898868))

(assert (= b!7898866 b!7898867))

(assert (= (and b!7898748 (is-Cons!74045 (t!388978 rulesArg!141))) b!7898866))

(declare-fun m!8273802 () Bool)

(assert (=> b!7898867 m!8273802))

(declare-fun m!8273804 () Bool)

(assert (=> b!7898867 m!8273804))

(push 1)

(assert (not b_next!135345))

(assert (not b!7898857))

(assert (not b_next!135347))

(assert (not b!7898792))

(assert (not b!7898817))

(assert (not b!7898867))

(assert (not b!7898838))

(assert (not d!2357877))

(assert (not b!7898856))

(assert (not b!7898832))

(assert (not d!2357889))

(assert (not b!7898831))

(assert (not b!7898837))

(assert (not b!7898791))

(assert b_and!352455)

(assert (not b!7898833))

(assert (not b!7898836))

(assert tp_is_empty!52879)

(assert (not d!2357871))

(assert b_and!352447)

(assert b_and!352457)

(assert (not d!2357885))

(assert (not b_next!135339))

(assert (not b!7898843))

(assert (not b_next!135337))

(assert (not d!2357891))

(assert b_and!352449)

(assert (not b!7898819))

(assert (not b!7898813))

(assert (not b!7898821))

(assert (not b!7898814))

(assert (not b!7898820))

(assert (not b!7898816))

(assert (not b!7898866))

(assert (not b!7898855))

(assert (not b!7898818))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!135345))

(assert b_and!352455)

(assert (not b_next!135347))

(assert (not b_next!135339))

(assert (not b_next!135337))

(assert b_and!352449)

(assert b_and!352447)

(assert b_and!352457)

(check-sat)

(pop 1)

