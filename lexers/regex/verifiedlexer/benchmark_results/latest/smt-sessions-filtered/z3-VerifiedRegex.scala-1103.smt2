; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56924 () Bool)

(assert start!56924)

(declare-fun b!600268 () Bool)

(declare-fun b_free!17069 () Bool)

(declare-fun b_next!17085 () Bool)

(assert (=> b!600268 (= b_free!17069 (not b_next!17085))))

(declare-fun tp!187004 () Bool)

(declare-fun b_and!59259 () Bool)

(assert (=> b!600268 (= tp!187004 b_and!59259)))

(declare-fun b_free!17071 () Bool)

(declare-fun b_next!17087 () Bool)

(assert (=> b!600268 (= b_free!17071 (not b_next!17087))))

(declare-fun tp!187007 () Bool)

(declare-fun b_and!59261 () Bool)

(assert (=> b!600268 (= tp!187007 b_and!59261)))

(declare-fun b!600263 () Bool)

(declare-fun b_free!17073 () Bool)

(declare-fun b_next!17089 () Bool)

(assert (=> b!600263 (= b_free!17073 (not b_next!17089))))

(declare-fun tp!187003 () Bool)

(declare-fun b_and!59263 () Bool)

(assert (=> b!600263 (= tp!187003 b_and!59263)))

(declare-fun b_free!17075 () Bool)

(declare-fun b_next!17091 () Bool)

(assert (=> b!600263 (= b_free!17075 (not b_next!17091))))

(declare-fun tp!187006 () Bool)

(declare-fun b_and!59265 () Bool)

(assert (=> b!600263 (= tp!187006 b_and!59265)))

(declare-fun b!600250 () Bool)

(declare-fun e!363639 () Bool)

(declare-fun tp_is_empty!3409 () Bool)

(declare-fun tp!187009 () Bool)

(assert (=> b!600250 (= e!363639 (and tp_is_empty!3409 tp!187009))))

(declare-fun b!600251 () Bool)

(declare-fun res!259615 () Bool)

(declare-fun e!363632 () Bool)

(assert (=> b!600251 (=> (not res!259615) (not e!363632))))

(declare-datatypes ((C!3976 0))(
  ( (C!3977 (val!2214 Int)) )
))
(declare-datatypes ((Regex!1527 0))(
  ( (ElementMatch!1527 (c!111435 C!3976)) (Concat!2744 (regOne!3566 Regex!1527) (regTwo!3566 Regex!1527)) (EmptyExpr!1527) (Star!1527 (reg!1856 Regex!1527)) (EmptyLang!1527) (Union!1527 (regOne!3567 Regex!1527) (regTwo!3567 Regex!1527)) )
))
(declare-datatypes ((List!6010 0))(
  ( (Nil!6000) (Cons!6000 (h!11401 (_ BitVec 16)) (t!79817 List!6010)) )
))
(declare-datatypes ((TokenValue!1217 0))(
  ( (FloatLiteralValue!2434 (text!8964 List!6010)) (TokenValueExt!1216 (__x!4332 Int)) (Broken!6085 (value!38841 List!6010)) (Object!1226) (End!1217) (Def!1217) (Underscore!1217) (Match!1217) (Else!1217) (Error!1217) (Case!1217) (If!1217) (Extends!1217) (Abstract!1217) (Class!1217) (Val!1217) (DelimiterValue!2434 (del!1277 List!6010)) (KeywordValue!1223 (value!38842 List!6010)) (CommentValue!2434 (value!38843 List!6010)) (WhitespaceValue!2434 (value!38844 List!6010)) (IndentationValue!1217 (value!38845 List!6010)) (String!7828) (Int32!1217) (Broken!6086 (value!38846 List!6010)) (Boolean!1218) (Unit!10921) (OperatorValue!1220 (op!1277 List!6010)) (IdentifierValue!2434 (value!38847 List!6010)) (IdentifierValue!2435 (value!38848 List!6010)) (WhitespaceValue!2435 (value!38849 List!6010)) (True!2434) (False!2434) (Broken!6087 (value!38850 List!6010)) (Broken!6088 (value!38851 List!6010)) (True!2435) (RightBrace!1217) (RightBracket!1217) (Colon!1217) (Null!1217) (Comma!1217) (LeftBracket!1217) (False!2435) (LeftBrace!1217) (ImaginaryLiteralValue!1217 (text!8965 List!6010)) (StringLiteralValue!3651 (value!38852 List!6010)) (EOFValue!1217 (value!38853 List!6010)) (IdentValue!1217 (value!38854 List!6010)) (DelimiterValue!2435 (value!38855 List!6010)) (DedentValue!1217 (value!38856 List!6010)) (NewLineValue!1217 (value!38857 List!6010)) (IntegerValue!3651 (value!38858 (_ BitVec 32)) (text!8966 List!6010)) (IntegerValue!3652 (value!38859 Int) (text!8967 List!6010)) (Times!1217) (Or!1217) (Equal!1217) (Minus!1217) (Broken!6089 (value!38860 List!6010)) (And!1217) (Div!1217) (LessEqual!1217) (Mod!1217) (Concat!2745) (Not!1217) (Plus!1217) (SpaceValue!1217 (value!38861 List!6010)) (IntegerValue!3653 (value!38862 Int) (text!8968 List!6010)) (StringLiteralValue!3652 (text!8969 List!6010)) (FloatLiteralValue!2435 (text!8970 List!6010)) (BytesLiteralValue!1217 (value!38863 List!6010)) (CommentValue!2435 (value!38864 List!6010)) (StringLiteralValue!3653 (value!38865 List!6010)) (ErrorTokenValue!1217 (msg!1278 List!6010)) )
))
(declare-datatypes ((String!7829 0))(
  ( (String!7830 (value!38866 String)) )
))
(declare-datatypes ((List!6011 0))(
  ( (Nil!6001) (Cons!6001 (h!11402 C!3976) (t!79818 List!6011)) )
))
(declare-datatypes ((IArray!3821 0))(
  ( (IArray!3822 (innerList!1968 List!6011)) )
))
(declare-datatypes ((Conc!1910 0))(
  ( (Node!1910 (left!4823 Conc!1910) (right!5153 Conc!1910) (csize!4050 Int) (cheight!2121 Int)) (Leaf!3014 (xs!4547 IArray!3821) (csize!4051 Int)) (Empty!1910) )
))
(declare-datatypes ((BalanceConc!3828 0))(
  ( (BalanceConc!3829 (c!111436 Conc!1910)) )
))
(declare-datatypes ((TokenValueInjection!2202 0))(
  ( (TokenValueInjection!2203 (toValue!2088 Int) (toChars!1947 Int)) )
))
(declare-datatypes ((Rule!2186 0))(
  ( (Rule!2187 (regex!1193 Regex!1527) (tag!1455 String!7829) (isSeparator!1193 Bool) (transformation!1193 TokenValueInjection!2202)) )
))
(declare-datatypes ((Token!2122 0))(
  ( (Token!2123 (value!38867 TokenValue!1217) (rule!1965 Rule!2186) (size!4722 Int) (originalCharacters!1232 List!6011)) )
))
(declare-fun token!491 () Token!2122)

(declare-fun size!4723 (List!6011) Int)

(assert (=> b!600251 (= res!259615 (= (size!4722 token!491) (size!4723 (originalCharacters!1232 token!491))))))

(declare-fun b!600252 () Bool)

(declare-fun e!363642 () Bool)

(declare-fun e!363629 () Bool)

(assert (=> b!600252 (= e!363642 e!363629)))

(declare-fun res!259604 () Bool)

(assert (=> b!600252 (=> (not res!259604) (not e!363629))))

(declare-datatypes ((tuple2!6884 0))(
  ( (tuple2!6885 (_1!3706 Token!2122) (_2!3706 List!6011)) )
))
(declare-datatypes ((Option!1544 0))(
  ( (None!1543) (Some!1543 (v!16436 tuple2!6884)) )
))
(declare-fun lt!255719 () Option!1544)

(get-info :version)

(assert (=> b!600252 (= res!259604 ((_ is Some!1543) lt!255719))))

(declare-datatypes ((List!6012 0))(
  ( (Nil!6002) (Cons!6002 (h!11403 Rule!2186) (t!79819 List!6012)) )
))
(declare-fun rules!3103 () List!6012)

(declare-datatypes ((LexerInterface!1079 0))(
  ( (LexerInterfaceExt!1076 (__x!4333 Int)) (Lexer!1077) )
))
(declare-fun thiss!22590 () LexerInterface!1079)

(declare-fun input!2705 () List!6011)

(declare-fun maxPrefix!777 (LexerInterface!1079 List!6012 List!6011) Option!1544)

(assert (=> b!600252 (= lt!255719 (maxPrefix!777 thiss!22590 rules!3103 input!2705))))

(declare-fun b!600253 () Bool)

(declare-fun e!363631 () Bool)

(assert (=> b!600253 (= e!363629 e!363631)))

(declare-fun res!259607 () Bool)

(assert (=> b!600253 (=> (not res!259607) (not e!363631))))

(declare-fun lt!255695 () List!6011)

(declare-fun lt!255699 () List!6011)

(assert (=> b!600253 (= res!259607 (= lt!255695 lt!255699))))

(declare-fun lt!255717 () List!6011)

(declare-fun suffix!1342 () List!6011)

(declare-fun ++!1681 (List!6011 List!6011) List!6011)

(assert (=> b!600253 (= lt!255695 (++!1681 lt!255717 suffix!1342))))

(declare-fun lt!255702 () TokenValue!1217)

(declare-fun lt!255722 () List!6011)

(declare-fun b!600254 () Bool)

(declare-fun lt!255697 () Int)

(assert (=> b!600254 (= e!363632 (and (= (size!4722 token!491) lt!255697) (= (originalCharacters!1232 token!491) lt!255717) (= (tuple2!6885 token!491 suffix!1342) (tuple2!6885 (Token!2123 lt!255702 (rule!1965 token!491) lt!255697 lt!255717) lt!255722))))))

(declare-fun b!600255 () Bool)

(declare-fun res!259605 () Bool)

(declare-fun e!363630 () Bool)

(assert (=> b!600255 (=> (not res!259605) (not e!363630))))

(assert (=> b!600255 (= res!259605 (= (size!4722 (_1!3706 (v!16436 lt!255719))) (size!4723 (originalCharacters!1232 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun b!600257 () Bool)

(declare-datatypes ((Unit!10922 0))(
  ( (Unit!10923) )
))
(declare-fun e!363643 () Unit!10922)

(declare-fun Unit!10924 () Unit!10922)

(assert (=> b!600257 (= e!363643 Unit!10924)))

(assert (=> b!600257 false))

(declare-fun b!600258 () Bool)

(declare-fun res!259606 () Bool)

(declare-fun e!363649 () Bool)

(assert (=> b!600258 (=> (not res!259606) (not e!363649))))

(declare-fun isEmpty!4331 (List!6011) Bool)

(assert (=> b!600258 (= res!259606 (not (isEmpty!4331 input!2705)))))

(declare-fun b!600259 () Bool)

(declare-fun e!363648 () Bool)

(declare-fun e!363641 () Bool)

(assert (=> b!600259 (= e!363648 e!363641)))

(declare-fun res!259600 () Bool)

(assert (=> b!600259 (=> res!259600 e!363641)))

(declare-fun lt!255692 () TokenValue!1217)

(declare-fun lt!255721 () List!6011)

(declare-fun lt!255713 () Int)

(assert (=> b!600259 (= res!259600 (not (= lt!255719 (Some!1543 (tuple2!6885 (Token!2123 lt!255692 (rule!1965 (_1!3706 (v!16436 lt!255719))) lt!255713 lt!255721) (_2!3706 (v!16436 lt!255719)))))))))

(declare-fun lt!255706 () Unit!10922)

(declare-fun lt!255694 () BalanceConc!3828)

(declare-fun lemmaSemiInverse!232 (TokenValueInjection!2202 BalanceConc!3828) Unit!10922)

(assert (=> b!600259 (= lt!255706 (lemmaSemiInverse!232 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) lt!255694))))

(declare-fun b!600260 () Bool)

(declare-fun e!363628 () Bool)

(declare-fun tp!187001 () Bool)

(assert (=> b!600260 (= e!363628 (and tp_is_empty!3409 tp!187001))))

(declare-fun b!600261 () Bool)

(declare-fun e!363637 () Bool)

(declare-fun e!363634 () Bool)

(declare-fun tp!187010 () Bool)

(assert (=> b!600261 (= e!363637 (and e!363634 tp!187010))))

(declare-fun b!600262 () Bool)

(declare-fun Unit!10925 () Unit!10922)

(assert (=> b!600262 (= e!363643 Unit!10925)))

(declare-fun e!363640 () Bool)

(assert (=> b!600263 (= e!363640 (and tp!187003 tp!187006))))

(declare-fun b!600264 () Bool)

(declare-fun matchR!636 (Regex!1527 List!6011) Bool)

(assert (=> b!600264 (= e!363641 (matchR!636 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) lt!255721))))

(declare-fun b!600265 () Bool)

(declare-fun e!363644 () Bool)

(assert (=> b!600265 (= e!363631 (not e!363644))))

(declare-fun res!259601 () Bool)

(assert (=> b!600265 (=> res!259601 e!363644)))

(declare-fun isPrefix!821 (List!6011 List!6011) Bool)

(assert (=> b!600265 (= res!259601 (not (isPrefix!821 input!2705 lt!255695)))))

(assert (=> b!600265 (isPrefix!821 lt!255717 lt!255695)))

(declare-fun lt!255696 () Unit!10922)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!666 (List!6011 List!6011) Unit!10922)

(assert (=> b!600265 (= lt!255696 (lemmaConcatTwoListThenFirstIsPrefix!666 lt!255717 suffix!1342))))

(assert (=> b!600265 (isPrefix!821 input!2705 lt!255699)))

(declare-fun lt!255714 () Unit!10922)

(assert (=> b!600265 (= lt!255714 (lemmaConcatTwoListThenFirstIsPrefix!666 input!2705 suffix!1342))))

(assert (=> b!600265 e!363630))

(declare-fun res!259612 () Bool)

(assert (=> b!600265 (=> (not res!259612) (not e!363630))))

(assert (=> b!600265 (= res!259612 (= (value!38867 (_1!3706 (v!16436 lt!255719))) lt!255692))))

(declare-fun apply!1446 (TokenValueInjection!2202 BalanceConc!3828) TokenValue!1217)

(assert (=> b!600265 (= lt!255692 (apply!1446 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) lt!255694))))

(declare-fun seqFromList!1369 (List!6011) BalanceConc!3828)

(assert (=> b!600265 (= lt!255694 (seqFromList!1369 lt!255721))))

(declare-fun lt!255698 () Unit!10922)

(declare-fun lemmaInv!301 (TokenValueInjection!2202) Unit!10922)

(assert (=> b!600265 (= lt!255698 (lemmaInv!301 (transformation!1193 (rule!1965 token!491))))))

(declare-fun lt!255707 () Unit!10922)

(assert (=> b!600265 (= lt!255707 (lemmaInv!301 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun ruleValid!391 (LexerInterface!1079 Rule!2186) Bool)

(assert (=> b!600265 (ruleValid!391 thiss!22590 (rule!1965 token!491))))

(declare-fun lt!255709 () Unit!10922)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!238 (LexerInterface!1079 Rule!2186 List!6012) Unit!10922)

(assert (=> b!600265 (= lt!255709 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!238 thiss!22590 (rule!1965 token!491) rules!3103))))

(assert (=> b!600265 (ruleValid!391 thiss!22590 (rule!1965 (_1!3706 (v!16436 lt!255719))))))

(declare-fun lt!255720 () Unit!10922)

(assert (=> b!600265 (= lt!255720 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!238 thiss!22590 (rule!1965 (_1!3706 (v!16436 lt!255719))) rules!3103))))

(assert (=> b!600265 (isPrefix!821 input!2705 input!2705)))

(declare-fun lt!255701 () Unit!10922)

(declare-fun lemmaIsPrefixRefl!557 (List!6011 List!6011) Unit!10922)

(assert (=> b!600265 (= lt!255701 (lemmaIsPrefixRefl!557 input!2705 input!2705))))

(declare-fun lt!255711 () List!6011)

(assert (=> b!600265 (= (_2!3706 (v!16436 lt!255719)) lt!255711)))

(declare-fun lt!255710 () Unit!10922)

(declare-fun lemmaSamePrefixThenSameSuffix!534 (List!6011 List!6011 List!6011 List!6011 List!6011) Unit!10922)

(assert (=> b!600265 (= lt!255710 (lemmaSamePrefixThenSameSuffix!534 lt!255721 (_2!3706 (v!16436 lt!255719)) lt!255721 lt!255711 input!2705))))

(declare-fun getSuffix!338 (List!6011 List!6011) List!6011)

(assert (=> b!600265 (= lt!255711 (getSuffix!338 input!2705 lt!255721))))

(declare-fun lt!255703 () List!6011)

(assert (=> b!600265 (isPrefix!821 lt!255721 lt!255703)))

(assert (=> b!600265 (= lt!255703 (++!1681 lt!255721 (_2!3706 (v!16436 lt!255719))))))

(declare-fun lt!255693 () Unit!10922)

(assert (=> b!600265 (= lt!255693 (lemmaConcatTwoListThenFirstIsPrefix!666 lt!255721 (_2!3706 (v!16436 lt!255719))))))

(declare-fun lt!255708 () Unit!10922)

(declare-fun lemmaCharactersSize!252 (Token!2122) Unit!10922)

(assert (=> b!600265 (= lt!255708 (lemmaCharactersSize!252 token!491))))

(declare-fun lt!255705 () Unit!10922)

(assert (=> b!600265 (= lt!255705 (lemmaCharactersSize!252 (_1!3706 (v!16436 lt!255719))))))

(declare-fun lt!255700 () Unit!10922)

(assert (=> b!600265 (= lt!255700 e!363643)))

(declare-fun c!111434 () Bool)

(assert (=> b!600265 (= c!111434 (> lt!255713 lt!255697))))

(assert (=> b!600265 (= lt!255697 (size!4723 lt!255717))))

(assert (=> b!600265 (= lt!255713 (size!4723 lt!255721))))

(declare-fun list!2516 (BalanceConc!3828) List!6011)

(declare-fun charsOf!822 (Token!2122) BalanceConc!3828)

(assert (=> b!600265 (= lt!255721 (list!2516 (charsOf!822 (_1!3706 (v!16436 lt!255719)))))))

(declare-fun lt!255712 () tuple2!6884)

(assert (=> b!600265 (= lt!255719 (Some!1543 lt!255712))))

(assert (=> b!600265 (= lt!255712 (tuple2!6885 (_1!3706 (v!16436 lt!255719)) (_2!3706 (v!16436 lt!255719))))))

(declare-fun lt!255715 () Unit!10922)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!266 (List!6011 List!6011 List!6011 List!6011) Unit!10922)

(assert (=> b!600265 (= lt!255715 (lemmaConcatSameAndSameSizesThenSameLists!266 lt!255717 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!600266 () Bool)

(declare-fun tp!187008 () Bool)

(declare-fun inv!7609 (String!7829) Bool)

(declare-fun inv!7612 (TokenValueInjection!2202) Bool)

(assert (=> b!600266 (= e!363634 (and tp!187008 (inv!7609 (tag!1455 (h!11403 rules!3103))) (inv!7612 (transformation!1193 (h!11403 rules!3103))) e!363640))))

(declare-fun e!363635 () Bool)

(declare-fun b!600267 () Bool)

(declare-fun e!363638 () Bool)

(declare-fun tp!187002 () Bool)

(assert (=> b!600267 (= e!363638 (and tp!187002 (inv!7609 (tag!1455 (rule!1965 token!491))) (inv!7612 (transformation!1193 (rule!1965 token!491))) e!363635))))

(assert (=> b!600268 (= e!363635 (and tp!187004 tp!187007))))

(declare-fun b!600269 () Bool)

(declare-fun res!259613 () Bool)

(assert (=> b!600269 (=> res!259613 e!363648)))

(assert (=> b!600269 (= res!259613 (not (= input!2705 lt!255703)))))

(declare-fun b!600270 () Bool)

(declare-fun e!363647 () Bool)

(declare-fun e!363636 () Bool)

(assert (=> b!600270 (= e!363647 e!363636)))

(declare-fun res!259609 () Bool)

(assert (=> b!600270 (=> (not res!259609) (not e!363636))))

(declare-fun lt!255718 () Option!1544)

(declare-fun isDefined!1355 (Option!1544) Bool)

(assert (=> b!600270 (= res!259609 (isDefined!1355 lt!255718))))

(assert (=> b!600270 (= lt!255718 (maxPrefix!777 thiss!22590 rules!3103 lt!255699))))

(assert (=> b!600270 (= lt!255699 (++!1681 input!2705 suffix!1342))))

(declare-fun b!600271 () Bool)

(assert (=> b!600271 (= e!363636 e!363642)))

(declare-fun res!259614 () Bool)

(assert (=> b!600271 (=> (not res!259614) (not e!363642))))

(declare-fun lt!255704 () tuple2!6884)

(assert (=> b!600271 (= res!259614 (and (= (_1!3706 lt!255704) token!491) (= (_2!3706 lt!255704) suffix!1342)))))

(declare-fun get!2304 (Option!1544) tuple2!6884)

(assert (=> b!600271 (= lt!255704 (get!2304 lt!255718))))

(declare-fun b!600272 () Bool)

(assert (=> b!600272 (= e!363644 e!363648)))

(declare-fun res!259603 () Bool)

(assert (=> b!600272 (=> res!259603 e!363648)))

(declare-fun contains!1405 (List!6012 Rule!2186) Bool)

(assert (=> b!600272 (= res!259603 (not (contains!1405 rules!3103 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(assert (=> b!600272 e!363632))

(declare-fun res!259610 () Bool)

(assert (=> b!600272 (=> (not res!259610) (not e!363632))))

(assert (=> b!600272 (= res!259610 (= (value!38867 token!491) lt!255702))))

(assert (=> b!600272 (= lt!255702 (apply!1446 (transformation!1193 (rule!1965 token!491)) (seqFromList!1369 lt!255717)))))

(assert (=> b!600272 (= suffix!1342 lt!255722)))

(declare-fun lt!255716 () Unit!10922)

(assert (=> b!600272 (= lt!255716 (lemmaSamePrefixThenSameSuffix!534 lt!255717 suffix!1342 lt!255717 lt!255722 lt!255699))))

(assert (=> b!600272 (= lt!255722 (getSuffix!338 lt!255699 lt!255717))))

(declare-fun b!600273 () Bool)

(declare-fun res!259599 () Bool)

(assert (=> b!600273 (=> (not res!259599) (not e!363649))))

(declare-fun rulesInvariant!1042 (LexerInterface!1079 List!6012) Bool)

(assert (=> b!600273 (= res!259599 (rulesInvariant!1042 thiss!22590 rules!3103))))

(declare-fun res!259608 () Bool)

(assert (=> start!56924 (=> (not res!259608) (not e!363649))))

(assert (=> start!56924 (= res!259608 ((_ is Lexer!1077) thiss!22590))))

(assert (=> start!56924 e!363649))

(assert (=> start!56924 e!363628))

(assert (=> start!56924 e!363637))

(declare-fun e!363627 () Bool)

(declare-fun inv!7613 (Token!2122) Bool)

(assert (=> start!56924 (and (inv!7613 token!491) e!363627)))

(assert (=> start!56924 true))

(assert (=> start!56924 e!363639))

(declare-fun b!600256 () Bool)

(assert (=> b!600256 (= e!363630 (and (= (size!4722 (_1!3706 (v!16436 lt!255719))) lt!255713) (= (originalCharacters!1232 (_1!3706 (v!16436 lt!255719))) lt!255721) (= lt!255712 (tuple2!6885 (Token!2123 lt!255692 (rule!1965 (_1!3706 (v!16436 lt!255719))) lt!255713 lt!255721) lt!255711))))))

(declare-fun b!600274 () Bool)

(declare-fun tp!187005 () Bool)

(declare-fun inv!21 (TokenValue!1217) Bool)

(assert (=> b!600274 (= e!363627 (and (inv!21 (value!38867 token!491)) e!363638 tp!187005))))

(declare-fun b!600275 () Bool)

(assert (=> b!600275 (= e!363649 e!363647)))

(declare-fun res!259611 () Bool)

(assert (=> b!600275 (=> (not res!259611) (not e!363647))))

(assert (=> b!600275 (= res!259611 (= lt!255717 input!2705))))

(assert (=> b!600275 (= lt!255717 (list!2516 (charsOf!822 token!491)))))

(declare-fun b!600276 () Bool)

(declare-fun res!259602 () Bool)

(assert (=> b!600276 (=> (not res!259602) (not e!363649))))

(declare-fun isEmpty!4332 (List!6012) Bool)

(assert (=> b!600276 (= res!259602 (not (isEmpty!4332 rules!3103)))))

(declare-fun b!600277 () Bool)

(declare-fun res!259616 () Bool)

(assert (=> b!600277 (=> res!259616 e!363648)))

(assert (=> b!600277 (= res!259616 (isEmpty!4331 lt!255721))))

(assert (= (and start!56924 res!259608) b!600276))

(assert (= (and b!600276 res!259602) b!600273))

(assert (= (and b!600273 res!259599) b!600258))

(assert (= (and b!600258 res!259606) b!600275))

(assert (= (and b!600275 res!259611) b!600270))

(assert (= (and b!600270 res!259609) b!600271))

(assert (= (and b!600271 res!259614) b!600252))

(assert (= (and b!600252 res!259604) b!600253))

(assert (= (and b!600253 res!259607) b!600265))

(assert (= (and b!600265 c!111434) b!600257))

(assert (= (and b!600265 (not c!111434)) b!600262))

(assert (= (and b!600265 res!259612) b!600255))

(assert (= (and b!600255 res!259605) b!600256))

(assert (= (and b!600265 (not res!259601)) b!600272))

(assert (= (and b!600272 res!259610) b!600251))

(assert (= (and b!600251 res!259615) b!600254))

(assert (= (and b!600272 (not res!259603)) b!600269))

(assert (= (and b!600269 (not res!259613)) b!600277))

(assert (= (and b!600277 (not res!259616)) b!600259))

(assert (= (and b!600259 (not res!259600)) b!600264))

(assert (= (and start!56924 ((_ is Cons!6001) suffix!1342)) b!600260))

(assert (= b!600266 b!600263))

(assert (= b!600261 b!600266))

(assert (= (and start!56924 ((_ is Cons!6002) rules!3103)) b!600261))

(assert (= b!600267 b!600268))

(assert (= b!600274 b!600267))

(assert (= start!56924 b!600274))

(assert (= (and start!56924 ((_ is Cons!6001) input!2705)) b!600250))

(declare-fun m!864373 () Bool)

(assert (=> b!600253 m!864373))

(declare-fun m!864375 () Bool)

(assert (=> b!600274 m!864375))

(declare-fun m!864377 () Bool)

(assert (=> b!600271 m!864377))

(declare-fun m!864379 () Bool)

(assert (=> b!600251 m!864379))

(declare-fun m!864381 () Bool)

(assert (=> start!56924 m!864381))

(declare-fun m!864383 () Bool)

(assert (=> b!600270 m!864383))

(declare-fun m!864385 () Bool)

(assert (=> b!600270 m!864385))

(declare-fun m!864387 () Bool)

(assert (=> b!600270 m!864387))

(declare-fun m!864389 () Bool)

(assert (=> b!600272 m!864389))

(declare-fun m!864391 () Bool)

(assert (=> b!600272 m!864391))

(declare-fun m!864393 () Bool)

(assert (=> b!600272 m!864393))

(declare-fun m!864395 () Bool)

(assert (=> b!600272 m!864395))

(assert (=> b!600272 m!864393))

(declare-fun m!864397 () Bool)

(assert (=> b!600272 m!864397))

(declare-fun m!864399 () Bool)

(assert (=> b!600276 m!864399))

(declare-fun m!864401 () Bool)

(assert (=> b!600267 m!864401))

(declare-fun m!864403 () Bool)

(assert (=> b!600267 m!864403))

(declare-fun m!864405 () Bool)

(assert (=> b!600255 m!864405))

(declare-fun m!864407 () Bool)

(assert (=> b!600266 m!864407))

(declare-fun m!864409 () Bool)

(assert (=> b!600266 m!864409))

(declare-fun m!864411 () Bool)

(assert (=> b!600273 m!864411))

(declare-fun m!864413 () Bool)

(assert (=> b!600259 m!864413))

(declare-fun m!864415 () Bool)

(assert (=> b!600264 m!864415))

(declare-fun m!864417 () Bool)

(assert (=> b!600252 m!864417))

(declare-fun m!864419 () Bool)

(assert (=> b!600258 m!864419))

(declare-fun m!864421 () Bool)

(assert (=> b!600275 m!864421))

(assert (=> b!600275 m!864421))

(declare-fun m!864423 () Bool)

(assert (=> b!600275 m!864423))

(declare-fun m!864425 () Bool)

(assert (=> b!600277 m!864425))

(declare-fun m!864427 () Bool)

(assert (=> b!600265 m!864427))

(declare-fun m!864429 () Bool)

(assert (=> b!600265 m!864429))

(declare-fun m!864431 () Bool)

(assert (=> b!600265 m!864431))

(declare-fun m!864433 () Bool)

(assert (=> b!600265 m!864433))

(declare-fun m!864435 () Bool)

(assert (=> b!600265 m!864435))

(declare-fun m!864437 () Bool)

(assert (=> b!600265 m!864437))

(declare-fun m!864439 () Bool)

(assert (=> b!600265 m!864439))

(declare-fun m!864441 () Bool)

(assert (=> b!600265 m!864441))

(declare-fun m!864443 () Bool)

(assert (=> b!600265 m!864443))

(assert (=> b!600265 m!864441))

(declare-fun m!864445 () Bool)

(assert (=> b!600265 m!864445))

(declare-fun m!864447 () Bool)

(assert (=> b!600265 m!864447))

(declare-fun m!864449 () Bool)

(assert (=> b!600265 m!864449))

(declare-fun m!864451 () Bool)

(assert (=> b!600265 m!864451))

(declare-fun m!864453 () Bool)

(assert (=> b!600265 m!864453))

(declare-fun m!864455 () Bool)

(assert (=> b!600265 m!864455))

(declare-fun m!864457 () Bool)

(assert (=> b!600265 m!864457))

(declare-fun m!864459 () Bool)

(assert (=> b!600265 m!864459))

(declare-fun m!864461 () Bool)

(assert (=> b!600265 m!864461))

(declare-fun m!864463 () Bool)

(assert (=> b!600265 m!864463))

(declare-fun m!864465 () Bool)

(assert (=> b!600265 m!864465))

(declare-fun m!864467 () Bool)

(assert (=> b!600265 m!864467))

(declare-fun m!864469 () Bool)

(assert (=> b!600265 m!864469))

(declare-fun m!864471 () Bool)

(assert (=> b!600265 m!864471))

(declare-fun m!864473 () Bool)

(assert (=> b!600265 m!864473))

(declare-fun m!864475 () Bool)

(assert (=> b!600265 m!864475))

(declare-fun m!864477 () Bool)

(assert (=> b!600265 m!864477))

(declare-fun m!864479 () Bool)

(assert (=> b!600265 m!864479))

(check-sat b_and!59259 b_and!59265 (not b!600260) (not b!600258) (not b!600251) (not b!600270) (not b!600255) (not b!600265) (not b!600261) (not start!56924) tp_is_empty!3409 (not b!600267) (not b!600272) (not b!600277) (not b!600259) (not b!600275) (not b!600273) (not b_next!17089) (not b!600250) b_and!59263 (not b_next!17087) (not b_next!17085) (not b!600252) (not b!600274) (not b_next!17091) (not b!600266) (not b!600264) (not b!600271) (not b!600253) b_and!59261 (not b!600276))
(check-sat b_and!59259 b_and!59265 (not b_next!17091) b_and!59261 (not b_next!17089) b_and!59263 (not b_next!17087) (not b_next!17085))
(get-model)

(declare-fun d!211078 () Bool)

(assert (=> d!211078 (= (inv!7609 (tag!1455 (rule!1965 token!491))) (= (mod (str.len (value!38866 (tag!1455 (rule!1965 token!491)))) 2) 0))))

(assert (=> b!600267 d!211078))

(declare-fun d!211080 () Bool)

(declare-fun res!259633 () Bool)

(declare-fun e!363668 () Bool)

(assert (=> d!211080 (=> (not res!259633) (not e!363668))))

(declare-fun semiInverseModEq!475 (Int Int) Bool)

(assert (=> d!211080 (= res!259633 (semiInverseModEq!475 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))))))

(assert (=> d!211080 (= (inv!7612 (transformation!1193 (rule!1965 token!491))) e!363668)))

(declare-fun b!600302 () Bool)

(declare-fun equivClasses!458 (Int Int) Bool)

(assert (=> b!600302 (= e!363668 (equivClasses!458 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))))))

(assert (= (and d!211080 res!259633) b!600302))

(declare-fun m!864509 () Bool)

(assert (=> d!211080 m!864509))

(declare-fun m!864511 () Bool)

(assert (=> b!600302 m!864511))

(assert (=> b!600267 d!211080))

(declare-fun d!211082 () Bool)

(assert (=> d!211082 (= (isEmpty!4331 lt!255721) ((_ is Nil!6001) lt!255721))))

(assert (=> b!600277 d!211082))

(declare-fun d!211084 () Bool)

(declare-fun lt!255740 () Int)

(assert (=> d!211084 (>= lt!255740 0)))

(declare-fun e!363671 () Int)

(assert (=> d!211084 (= lt!255740 e!363671)))

(declare-fun c!111447 () Bool)

(assert (=> d!211084 (= c!111447 ((_ is Nil!6001) (originalCharacters!1232 (_1!3706 (v!16436 lt!255719)))))))

(assert (=> d!211084 (= (size!4723 (originalCharacters!1232 (_1!3706 (v!16436 lt!255719)))) lt!255740)))

(declare-fun b!600307 () Bool)

(assert (=> b!600307 (= e!363671 0)))

(declare-fun b!600308 () Bool)

(assert (=> b!600308 (= e!363671 (+ 1 (size!4723 (t!79818 (originalCharacters!1232 (_1!3706 (v!16436 lt!255719)))))))))

(assert (= (and d!211084 c!111447) b!600307))

(assert (= (and d!211084 (not c!111447)) b!600308))

(declare-fun m!864513 () Bool)

(assert (=> b!600308 m!864513))

(assert (=> b!600255 d!211084))

(declare-fun d!211086 () Bool)

(assert (=> d!211086 (= (inv!7609 (tag!1455 (h!11403 rules!3103))) (= (mod (str.len (value!38866 (tag!1455 (h!11403 rules!3103)))) 2) 0))))

(assert (=> b!600266 d!211086))

(declare-fun d!211088 () Bool)

(declare-fun res!259634 () Bool)

(declare-fun e!363672 () Bool)

(assert (=> d!211088 (=> (not res!259634) (not e!363672))))

(assert (=> d!211088 (= res!259634 (semiInverseModEq!475 (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (h!11403 rules!3103)))))))

(assert (=> d!211088 (= (inv!7612 (transformation!1193 (h!11403 rules!3103))) e!363672)))

(declare-fun b!600309 () Bool)

(assert (=> b!600309 (= e!363672 (equivClasses!458 (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (h!11403 rules!3103)))))))

(assert (= (and d!211088 res!259634) b!600309))

(declare-fun m!864515 () Bool)

(assert (=> d!211088 m!864515))

(declare-fun m!864517 () Bool)

(assert (=> b!600309 m!864517))

(assert (=> b!600266 d!211088))

(declare-fun d!211090 () Bool)

(declare-fun lt!255741 () Int)

(assert (=> d!211090 (>= lt!255741 0)))

(declare-fun e!363673 () Int)

(assert (=> d!211090 (= lt!255741 e!363673)))

(declare-fun c!111448 () Bool)

(assert (=> d!211090 (= c!111448 ((_ is Nil!6001) lt!255717))))

(assert (=> d!211090 (= (size!4723 lt!255717) lt!255741)))

(declare-fun b!600310 () Bool)

(assert (=> b!600310 (= e!363673 0)))

(declare-fun b!600311 () Bool)

(assert (=> b!600311 (= e!363673 (+ 1 (size!4723 (t!79818 lt!255717))))))

(assert (= (and d!211090 c!111448) b!600310))

(assert (= (and d!211090 (not c!111448)) b!600311))

(declare-fun m!864519 () Bool)

(assert (=> b!600311 m!864519))

(assert (=> b!600265 d!211090))

(declare-fun d!211092 () Bool)

(declare-fun dynLambda!3470 (Int BalanceConc!3828) TokenValue!1217)

(assert (=> d!211092 (= (apply!1446 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) lt!255694) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))))

(declare-fun b_lambda!23667 () Bool)

(assert (=> (not b_lambda!23667) (not d!211092)))

(declare-fun t!79825 () Bool)

(declare-fun tb!52347 () Bool)

(assert (=> (and b!600268 (= (toValue!2088 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79825) tb!52347))

(declare-fun result!58876 () Bool)

(assert (=> tb!52347 (= result!58876 (inv!21 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))

(declare-fun m!864521 () Bool)

(assert (=> tb!52347 m!864521))

(assert (=> d!211092 t!79825))

(declare-fun b_and!59271 () Bool)

(assert (= b_and!59259 (and (=> t!79825 result!58876) b_and!59271)))

(declare-fun t!79827 () Bool)

(declare-fun tb!52349 () Bool)

(assert (=> (and b!600263 (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79827) tb!52349))

(declare-fun result!58880 () Bool)

(assert (= result!58880 result!58876))

(assert (=> d!211092 t!79827))

(declare-fun b_and!59273 () Bool)

(assert (= b_and!59263 (and (=> t!79827 result!58880) b_and!59273)))

(declare-fun m!864523 () Bool)

(assert (=> d!211092 m!864523))

(assert (=> b!600265 d!211092))

(declare-fun d!211094 () Bool)

(declare-fun e!363684 () Bool)

(assert (=> d!211094 e!363684))

(declare-fun res!259643 () Bool)

(assert (=> d!211094 (=> res!259643 e!363684)))

(declare-fun lt!255744 () Bool)

(assert (=> d!211094 (= res!259643 (not lt!255744))))

(declare-fun e!363685 () Bool)

(assert (=> d!211094 (= lt!255744 e!363685)))

(declare-fun res!259644 () Bool)

(assert (=> d!211094 (=> res!259644 e!363685)))

(assert (=> d!211094 (= res!259644 ((_ is Nil!6001) input!2705))))

(assert (=> d!211094 (= (isPrefix!821 input!2705 lt!255695) lt!255744)))

(declare-fun b!600322 () Bool)

(declare-fun e!363683 () Bool)

(assert (=> b!600322 (= e!363685 e!363683)))

(declare-fun res!259645 () Bool)

(assert (=> b!600322 (=> (not res!259645) (not e!363683))))

(assert (=> b!600322 (= res!259645 (not ((_ is Nil!6001) lt!255695)))))

(declare-fun b!600325 () Bool)

(assert (=> b!600325 (= e!363684 (>= (size!4723 lt!255695) (size!4723 input!2705)))))

(declare-fun b!600324 () Bool)

(declare-fun tail!803 (List!6011) List!6011)

(assert (=> b!600324 (= e!363683 (isPrefix!821 (tail!803 input!2705) (tail!803 lt!255695)))))

(declare-fun b!600323 () Bool)

(declare-fun res!259646 () Bool)

(assert (=> b!600323 (=> (not res!259646) (not e!363683))))

(declare-fun head!1274 (List!6011) C!3976)

(assert (=> b!600323 (= res!259646 (= (head!1274 input!2705) (head!1274 lt!255695)))))

(assert (= (and d!211094 (not res!259644)) b!600322))

(assert (= (and b!600322 res!259645) b!600323))

(assert (= (and b!600323 res!259646) b!600324))

(assert (= (and d!211094 (not res!259643)) b!600325))

(declare-fun m!864525 () Bool)

(assert (=> b!600325 m!864525))

(declare-fun m!864527 () Bool)

(assert (=> b!600325 m!864527))

(declare-fun m!864529 () Bool)

(assert (=> b!600324 m!864529))

(declare-fun m!864531 () Bool)

(assert (=> b!600324 m!864531))

(assert (=> b!600324 m!864529))

(assert (=> b!600324 m!864531))

(declare-fun m!864533 () Bool)

(assert (=> b!600324 m!864533))

(declare-fun m!864535 () Bool)

(assert (=> b!600323 m!864535))

(declare-fun m!864537 () Bool)

(assert (=> b!600323 m!864537))

(assert (=> b!600265 d!211094))

(declare-fun d!211096 () Bool)

(declare-fun e!363687 () Bool)

(assert (=> d!211096 e!363687))

(declare-fun res!259647 () Bool)

(assert (=> d!211096 (=> res!259647 e!363687)))

(declare-fun lt!255745 () Bool)

(assert (=> d!211096 (= res!259647 (not lt!255745))))

(declare-fun e!363688 () Bool)

(assert (=> d!211096 (= lt!255745 e!363688)))

(declare-fun res!259648 () Bool)

(assert (=> d!211096 (=> res!259648 e!363688)))

(assert (=> d!211096 (= res!259648 ((_ is Nil!6001) lt!255721))))

(assert (=> d!211096 (= (isPrefix!821 lt!255721 lt!255703) lt!255745)))

(declare-fun b!600326 () Bool)

(declare-fun e!363686 () Bool)

(assert (=> b!600326 (= e!363688 e!363686)))

(declare-fun res!259649 () Bool)

(assert (=> b!600326 (=> (not res!259649) (not e!363686))))

(assert (=> b!600326 (= res!259649 (not ((_ is Nil!6001) lt!255703)))))

(declare-fun b!600329 () Bool)

(assert (=> b!600329 (= e!363687 (>= (size!4723 lt!255703) (size!4723 lt!255721)))))

(declare-fun b!600328 () Bool)

(assert (=> b!600328 (= e!363686 (isPrefix!821 (tail!803 lt!255721) (tail!803 lt!255703)))))

(declare-fun b!600327 () Bool)

(declare-fun res!259650 () Bool)

(assert (=> b!600327 (=> (not res!259650) (not e!363686))))

(assert (=> b!600327 (= res!259650 (= (head!1274 lt!255721) (head!1274 lt!255703)))))

(assert (= (and d!211096 (not res!259648)) b!600326))

(assert (= (and b!600326 res!259649) b!600327))

(assert (= (and b!600327 res!259650) b!600328))

(assert (= (and d!211096 (not res!259647)) b!600329))

(declare-fun m!864539 () Bool)

(assert (=> b!600329 m!864539))

(assert (=> b!600329 m!864449))

(declare-fun m!864541 () Bool)

(assert (=> b!600328 m!864541))

(declare-fun m!864543 () Bool)

(assert (=> b!600328 m!864543))

(assert (=> b!600328 m!864541))

(assert (=> b!600328 m!864543))

(declare-fun m!864545 () Bool)

(assert (=> b!600328 m!864545))

(declare-fun m!864547 () Bool)

(assert (=> b!600327 m!864547))

(declare-fun m!864549 () Bool)

(assert (=> b!600327 m!864549))

(assert (=> b!600265 d!211096))

(declare-fun d!211098 () Bool)

(assert (=> d!211098 (isPrefix!821 lt!255717 (++!1681 lt!255717 suffix!1342))))

(declare-fun lt!255748 () Unit!10922)

(declare-fun choose!4380 (List!6011 List!6011) Unit!10922)

(assert (=> d!211098 (= lt!255748 (choose!4380 lt!255717 suffix!1342))))

(assert (=> d!211098 (= (lemmaConcatTwoListThenFirstIsPrefix!666 lt!255717 suffix!1342) lt!255748)))

(declare-fun bs!70872 () Bool)

(assert (= bs!70872 d!211098))

(assert (=> bs!70872 m!864373))

(assert (=> bs!70872 m!864373))

(declare-fun m!864551 () Bool)

(assert (=> bs!70872 m!864551))

(declare-fun m!864553 () Bool)

(assert (=> bs!70872 m!864553))

(assert (=> b!600265 d!211098))

(declare-fun d!211100 () Bool)

(declare-fun e!363691 () Bool)

(assert (=> d!211100 e!363691))

(declare-fun res!259653 () Bool)

(assert (=> d!211100 (=> (not res!259653) (not e!363691))))

(assert (=> d!211100 (= res!259653 (semiInverseModEq!475 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))))

(declare-fun Unit!10929 () Unit!10922)

(assert (=> d!211100 (= (lemmaInv!301 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) Unit!10929)))

(declare-fun b!600332 () Bool)

(assert (=> b!600332 (= e!363691 (equivClasses!458 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))))

(assert (= (and d!211100 res!259653) b!600332))

(declare-fun m!864555 () Bool)

(assert (=> d!211100 m!864555))

(declare-fun m!864557 () Bool)

(assert (=> b!600332 m!864557))

(assert (=> b!600265 d!211100))

(declare-fun b!600341 () Bool)

(declare-fun e!363697 () List!6011)

(assert (=> b!600341 (= e!363697 (_2!3706 (v!16436 lt!255719)))))

(declare-fun e!363696 () Bool)

(declare-fun lt!255751 () List!6011)

(declare-fun b!600344 () Bool)

(assert (=> b!600344 (= e!363696 (or (not (= (_2!3706 (v!16436 lt!255719)) Nil!6001)) (= lt!255751 lt!255721)))))

(declare-fun b!600342 () Bool)

(assert (=> b!600342 (= e!363697 (Cons!6001 (h!11402 lt!255721) (++!1681 (t!79818 lt!255721) (_2!3706 (v!16436 lt!255719)))))))

(declare-fun d!211102 () Bool)

(assert (=> d!211102 e!363696))

(declare-fun res!259658 () Bool)

(assert (=> d!211102 (=> (not res!259658) (not e!363696))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1083 (List!6011) (InoxSet C!3976))

(assert (=> d!211102 (= res!259658 (= (content!1083 lt!255751) ((_ map or) (content!1083 lt!255721) (content!1083 (_2!3706 (v!16436 lt!255719))))))))

(assert (=> d!211102 (= lt!255751 e!363697)))

(declare-fun c!111451 () Bool)

(assert (=> d!211102 (= c!111451 ((_ is Nil!6001) lt!255721))))

(assert (=> d!211102 (= (++!1681 lt!255721 (_2!3706 (v!16436 lt!255719))) lt!255751)))

(declare-fun b!600343 () Bool)

(declare-fun res!259659 () Bool)

(assert (=> b!600343 (=> (not res!259659) (not e!363696))))

(assert (=> b!600343 (= res!259659 (= (size!4723 lt!255751) (+ (size!4723 lt!255721) (size!4723 (_2!3706 (v!16436 lt!255719))))))))

(assert (= (and d!211102 c!111451) b!600341))

(assert (= (and d!211102 (not c!111451)) b!600342))

(assert (= (and d!211102 res!259658) b!600343))

(assert (= (and b!600343 res!259659) b!600344))

(declare-fun m!864559 () Bool)

(assert (=> b!600342 m!864559))

(declare-fun m!864561 () Bool)

(assert (=> d!211102 m!864561))

(declare-fun m!864563 () Bool)

(assert (=> d!211102 m!864563))

(declare-fun m!864565 () Bool)

(assert (=> d!211102 m!864565))

(declare-fun m!864567 () Bool)

(assert (=> b!600343 m!864567))

(assert (=> b!600343 m!864449))

(declare-fun m!864569 () Bool)

(assert (=> b!600343 m!864569))

(assert (=> b!600265 d!211102))

(declare-fun d!211104 () Bool)

(declare-fun e!363699 () Bool)

(assert (=> d!211104 e!363699))

(declare-fun res!259660 () Bool)

(assert (=> d!211104 (=> res!259660 e!363699)))

(declare-fun lt!255752 () Bool)

(assert (=> d!211104 (= res!259660 (not lt!255752))))

(declare-fun e!363700 () Bool)

(assert (=> d!211104 (= lt!255752 e!363700)))

(declare-fun res!259661 () Bool)

(assert (=> d!211104 (=> res!259661 e!363700)))

(assert (=> d!211104 (= res!259661 ((_ is Nil!6001) input!2705))))

(assert (=> d!211104 (= (isPrefix!821 input!2705 input!2705) lt!255752)))

(declare-fun b!600345 () Bool)

(declare-fun e!363698 () Bool)

(assert (=> b!600345 (= e!363700 e!363698)))

(declare-fun res!259662 () Bool)

(assert (=> b!600345 (=> (not res!259662) (not e!363698))))

(assert (=> b!600345 (= res!259662 (not ((_ is Nil!6001) input!2705)))))

(declare-fun b!600348 () Bool)

(assert (=> b!600348 (= e!363699 (>= (size!4723 input!2705) (size!4723 input!2705)))))

(declare-fun b!600347 () Bool)

(assert (=> b!600347 (= e!363698 (isPrefix!821 (tail!803 input!2705) (tail!803 input!2705)))))

(declare-fun b!600346 () Bool)

(declare-fun res!259663 () Bool)

(assert (=> b!600346 (=> (not res!259663) (not e!363698))))

(assert (=> b!600346 (= res!259663 (= (head!1274 input!2705) (head!1274 input!2705)))))

(assert (= (and d!211104 (not res!259661)) b!600345))

(assert (= (and b!600345 res!259662) b!600346))

(assert (= (and b!600346 res!259663) b!600347))

(assert (= (and d!211104 (not res!259660)) b!600348))

(assert (=> b!600348 m!864527))

(assert (=> b!600348 m!864527))

(assert (=> b!600347 m!864529))

(assert (=> b!600347 m!864529))

(assert (=> b!600347 m!864529))

(assert (=> b!600347 m!864529))

(declare-fun m!864571 () Bool)

(assert (=> b!600347 m!864571))

(assert (=> b!600346 m!864535))

(assert (=> b!600346 m!864535))

(assert (=> b!600265 d!211104))

(declare-fun d!211106 () Bool)

(declare-fun res!259668 () Bool)

(declare-fun e!363703 () Bool)

(assert (=> d!211106 (=> (not res!259668) (not e!363703))))

(declare-fun validRegex!528 (Regex!1527) Bool)

(assert (=> d!211106 (= res!259668 (validRegex!528 (regex!1193 (rule!1965 token!491))))))

(assert (=> d!211106 (= (ruleValid!391 thiss!22590 (rule!1965 token!491)) e!363703)))

(declare-fun b!600353 () Bool)

(declare-fun res!259669 () Bool)

(assert (=> b!600353 (=> (not res!259669) (not e!363703))))

(declare-fun nullable!433 (Regex!1527) Bool)

(assert (=> b!600353 (= res!259669 (not (nullable!433 (regex!1193 (rule!1965 token!491)))))))

(declare-fun b!600354 () Bool)

(assert (=> b!600354 (= e!363703 (not (= (tag!1455 (rule!1965 token!491)) (String!7830 ""))))))

(assert (= (and d!211106 res!259668) b!600353))

(assert (= (and b!600353 res!259669) b!600354))

(declare-fun m!864573 () Bool)

(assert (=> d!211106 m!864573))

(declare-fun m!864575 () Bool)

(assert (=> b!600353 m!864575))

(assert (=> b!600265 d!211106))

(declare-fun d!211108 () Bool)

(assert (=> d!211108 (isPrefix!821 input!2705 input!2705)))

(declare-fun lt!255755 () Unit!10922)

(declare-fun choose!4382 (List!6011 List!6011) Unit!10922)

(assert (=> d!211108 (= lt!255755 (choose!4382 input!2705 input!2705))))

(assert (=> d!211108 (= (lemmaIsPrefixRefl!557 input!2705 input!2705) lt!255755)))

(declare-fun bs!70873 () Bool)

(assert (= bs!70873 d!211108))

(assert (=> bs!70873 m!864447))

(declare-fun m!864577 () Bool)

(assert (=> bs!70873 m!864577))

(assert (=> b!600265 d!211108))

(declare-fun d!211110 () Bool)

(assert (=> d!211110 (ruleValid!391 thiss!22590 (rule!1965 (_1!3706 (v!16436 lt!255719))))))

(declare-fun lt!255758 () Unit!10922)

(declare-fun choose!4383 (LexerInterface!1079 Rule!2186 List!6012) Unit!10922)

(assert (=> d!211110 (= lt!255758 (choose!4383 thiss!22590 (rule!1965 (_1!3706 (v!16436 lt!255719))) rules!3103))))

(assert (=> d!211110 (contains!1405 rules!3103 (rule!1965 (_1!3706 (v!16436 lt!255719))))))

(assert (=> d!211110 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!238 thiss!22590 (rule!1965 (_1!3706 (v!16436 lt!255719))) rules!3103) lt!255758)))

(declare-fun bs!70874 () Bool)

(assert (= bs!70874 d!211110))

(assert (=> bs!70874 m!864461))

(declare-fun m!864579 () Bool)

(assert (=> bs!70874 m!864579))

(assert (=> bs!70874 m!864397))

(assert (=> b!600265 d!211110))

(declare-fun d!211112 () Bool)

(declare-fun lt!255761 () BalanceConc!3828)

(assert (=> d!211112 (= (list!2516 lt!255761) (originalCharacters!1232 (_1!3706 (v!16436 lt!255719))))))

(declare-fun dynLambda!3471 (Int TokenValue!1217) BalanceConc!3828)

(assert (=> d!211112 (= lt!255761 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719)))))))

(assert (=> d!211112 (= (charsOf!822 (_1!3706 (v!16436 lt!255719))) lt!255761)))

(declare-fun b_lambda!23669 () Bool)

(assert (=> (not b_lambda!23669) (not d!211112)))

(declare-fun t!79829 () Bool)

(declare-fun tb!52351 () Bool)

(assert (=> (and b!600268 (= (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79829) tb!52351))

(declare-fun b!600359 () Bool)

(declare-fun e!363706 () Bool)

(declare-fun tp!187013 () Bool)

(declare-fun inv!7616 (Conc!1910) Bool)

(assert (=> b!600359 (= e!363706 (and (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719)))))) tp!187013))))

(declare-fun result!58882 () Bool)

(declare-fun inv!7617 (BalanceConc!3828) Bool)

(assert (=> tb!52351 (= result!58882 (and (inv!7617 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719))))) e!363706))))

(assert (= tb!52351 b!600359))

(declare-fun m!864581 () Bool)

(assert (=> b!600359 m!864581))

(declare-fun m!864583 () Bool)

(assert (=> tb!52351 m!864583))

(assert (=> d!211112 t!79829))

(declare-fun b_and!59275 () Bool)

(assert (= b_and!59261 (and (=> t!79829 result!58882) b_and!59275)))

(declare-fun t!79831 () Bool)

(declare-fun tb!52353 () Bool)

(assert (=> (and b!600263 (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79831) tb!52353))

(declare-fun result!58886 () Bool)

(assert (= result!58886 result!58882))

(assert (=> d!211112 t!79831))

(declare-fun b_and!59277 () Bool)

(assert (= b_and!59265 (and (=> t!79831 result!58886) b_and!59277)))

(declare-fun m!864585 () Bool)

(assert (=> d!211112 m!864585))

(declare-fun m!864587 () Bool)

(assert (=> d!211112 m!864587))

(assert (=> b!600265 d!211112))

(declare-fun d!211114 () Bool)

(assert (=> d!211114 (and (= lt!255717 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!255764 () Unit!10922)

(declare-fun choose!4384 (List!6011 List!6011 List!6011 List!6011) Unit!10922)

(assert (=> d!211114 (= lt!255764 (choose!4384 lt!255717 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!211114 (= (++!1681 lt!255717 suffix!1342) (++!1681 input!2705 suffix!1342))))

(assert (=> d!211114 (= (lemmaConcatSameAndSameSizesThenSameLists!266 lt!255717 suffix!1342 input!2705 suffix!1342) lt!255764)))

(declare-fun bs!70875 () Bool)

(assert (= bs!70875 d!211114))

(declare-fun m!864589 () Bool)

(assert (=> bs!70875 m!864589))

(assert (=> bs!70875 m!864373))

(assert (=> bs!70875 m!864387))

(assert (=> b!600265 d!211114))

(declare-fun d!211116 () Bool)

(declare-fun res!259670 () Bool)

(declare-fun e!363707 () Bool)

(assert (=> d!211116 (=> (not res!259670) (not e!363707))))

(assert (=> d!211116 (= res!259670 (validRegex!528 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(assert (=> d!211116 (= (ruleValid!391 thiss!22590 (rule!1965 (_1!3706 (v!16436 lt!255719)))) e!363707)))

(declare-fun b!600360 () Bool)

(declare-fun res!259671 () Bool)

(assert (=> b!600360 (=> (not res!259671) (not e!363707))))

(assert (=> b!600360 (= res!259671 (not (nullable!433 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))))

(declare-fun b!600361 () Bool)

(assert (=> b!600361 (= e!363707 (not (= (tag!1455 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (String!7830 ""))))))

(assert (= (and d!211116 res!259670) b!600360))

(assert (= (and b!600360 res!259671) b!600361))

(declare-fun m!864591 () Bool)

(assert (=> d!211116 m!864591))

(declare-fun m!864593 () Bool)

(assert (=> b!600360 m!864593))

(assert (=> b!600265 d!211116))

(declare-fun d!211118 () Bool)

(assert (=> d!211118 (ruleValid!391 thiss!22590 (rule!1965 token!491))))

(declare-fun lt!255765 () Unit!10922)

(assert (=> d!211118 (= lt!255765 (choose!4383 thiss!22590 (rule!1965 token!491) rules!3103))))

(assert (=> d!211118 (contains!1405 rules!3103 (rule!1965 token!491))))

(assert (=> d!211118 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!238 thiss!22590 (rule!1965 token!491) rules!3103) lt!255765)))

(declare-fun bs!70876 () Bool)

(assert (= bs!70876 d!211118))

(assert (=> bs!70876 m!864453))

(declare-fun m!864595 () Bool)

(assert (=> bs!70876 m!864595))

(declare-fun m!864597 () Bool)

(assert (=> bs!70876 m!864597))

(assert (=> b!600265 d!211118))

(declare-fun d!211120 () Bool)

(assert (=> d!211120 (isPrefix!821 input!2705 (++!1681 input!2705 suffix!1342))))

(declare-fun lt!255766 () Unit!10922)

(assert (=> d!211120 (= lt!255766 (choose!4380 input!2705 suffix!1342))))

(assert (=> d!211120 (= (lemmaConcatTwoListThenFirstIsPrefix!666 input!2705 suffix!1342) lt!255766)))

(declare-fun bs!70877 () Bool)

(assert (= bs!70877 d!211120))

(assert (=> bs!70877 m!864387))

(assert (=> bs!70877 m!864387))

(declare-fun m!864599 () Bool)

(assert (=> bs!70877 m!864599))

(declare-fun m!864601 () Bool)

(assert (=> bs!70877 m!864601))

(assert (=> b!600265 d!211120))

(declare-fun d!211122 () Bool)

(declare-fun fromListB!602 (List!6011) BalanceConc!3828)

(assert (=> d!211122 (= (seqFromList!1369 lt!255721) (fromListB!602 lt!255721))))

(declare-fun bs!70878 () Bool)

(assert (= bs!70878 d!211122))

(declare-fun m!864603 () Bool)

(assert (=> bs!70878 m!864603))

(assert (=> b!600265 d!211122))

(declare-fun d!211124 () Bool)

(declare-fun e!363709 () Bool)

(assert (=> d!211124 e!363709))

(declare-fun res!259672 () Bool)

(assert (=> d!211124 (=> res!259672 e!363709)))

(declare-fun lt!255767 () Bool)

(assert (=> d!211124 (= res!259672 (not lt!255767))))

(declare-fun e!363710 () Bool)

(assert (=> d!211124 (= lt!255767 e!363710)))

(declare-fun res!259673 () Bool)

(assert (=> d!211124 (=> res!259673 e!363710)))

(assert (=> d!211124 (= res!259673 ((_ is Nil!6001) lt!255717))))

(assert (=> d!211124 (= (isPrefix!821 lt!255717 lt!255695) lt!255767)))

(declare-fun b!600362 () Bool)

(declare-fun e!363708 () Bool)

(assert (=> b!600362 (= e!363710 e!363708)))

(declare-fun res!259674 () Bool)

(assert (=> b!600362 (=> (not res!259674) (not e!363708))))

(assert (=> b!600362 (= res!259674 (not ((_ is Nil!6001) lt!255695)))))

(declare-fun b!600365 () Bool)

(assert (=> b!600365 (= e!363709 (>= (size!4723 lt!255695) (size!4723 lt!255717)))))

(declare-fun b!600364 () Bool)

(assert (=> b!600364 (= e!363708 (isPrefix!821 (tail!803 lt!255717) (tail!803 lt!255695)))))

(declare-fun b!600363 () Bool)

(declare-fun res!259675 () Bool)

(assert (=> b!600363 (=> (not res!259675) (not e!363708))))

(assert (=> b!600363 (= res!259675 (= (head!1274 lt!255717) (head!1274 lt!255695)))))

(assert (= (and d!211124 (not res!259673)) b!600362))

(assert (= (and b!600362 res!259674) b!600363))

(assert (= (and b!600363 res!259675) b!600364))

(assert (= (and d!211124 (not res!259672)) b!600365))

(assert (=> b!600365 m!864525))

(assert (=> b!600365 m!864443))

(declare-fun m!864605 () Bool)

(assert (=> b!600364 m!864605))

(assert (=> b!600364 m!864531))

(assert (=> b!600364 m!864605))

(assert (=> b!600364 m!864531))

(declare-fun m!864607 () Bool)

(assert (=> b!600364 m!864607))

(declare-fun m!864609 () Bool)

(assert (=> b!600363 m!864609))

(assert (=> b!600363 m!864537))

(assert (=> b!600265 d!211124))

(declare-fun d!211126 () Bool)

(declare-fun lt!255770 () List!6011)

(assert (=> d!211126 (= (++!1681 lt!255721 lt!255770) input!2705)))

(declare-fun e!363713 () List!6011)

(assert (=> d!211126 (= lt!255770 e!363713)))

(declare-fun c!111454 () Bool)

(assert (=> d!211126 (= c!111454 ((_ is Cons!6001) lt!255721))))

(assert (=> d!211126 (>= (size!4723 input!2705) (size!4723 lt!255721))))

(assert (=> d!211126 (= (getSuffix!338 input!2705 lt!255721) lt!255770)))

(declare-fun b!600370 () Bool)

(assert (=> b!600370 (= e!363713 (getSuffix!338 (tail!803 input!2705) (t!79818 lt!255721)))))

(declare-fun b!600371 () Bool)

(assert (=> b!600371 (= e!363713 input!2705)))

(assert (= (and d!211126 c!111454) b!600370))

(assert (= (and d!211126 (not c!111454)) b!600371))

(declare-fun m!864611 () Bool)

(assert (=> d!211126 m!864611))

(assert (=> d!211126 m!864527))

(assert (=> d!211126 m!864449))

(assert (=> b!600370 m!864529))

(assert (=> b!600370 m!864529))

(declare-fun m!864613 () Bool)

(assert (=> b!600370 m!864613))

(assert (=> b!600265 d!211126))

(declare-fun d!211128 () Bool)

(assert (=> d!211128 (= (size!4722 (_1!3706 (v!16436 lt!255719))) (size!4723 (originalCharacters!1232 (_1!3706 (v!16436 lt!255719)))))))

(declare-fun Unit!10931 () Unit!10922)

(assert (=> d!211128 (= (lemmaCharactersSize!252 (_1!3706 (v!16436 lt!255719))) Unit!10931)))

(declare-fun bs!70879 () Bool)

(assert (= bs!70879 d!211128))

(assert (=> bs!70879 m!864405))

(assert (=> b!600265 d!211128))

(declare-fun d!211130 () Bool)

(declare-fun e!363715 () Bool)

(assert (=> d!211130 e!363715))

(declare-fun res!259676 () Bool)

(assert (=> d!211130 (=> res!259676 e!363715)))

(declare-fun lt!255771 () Bool)

(assert (=> d!211130 (= res!259676 (not lt!255771))))

(declare-fun e!363716 () Bool)

(assert (=> d!211130 (= lt!255771 e!363716)))

(declare-fun res!259677 () Bool)

(assert (=> d!211130 (=> res!259677 e!363716)))

(assert (=> d!211130 (= res!259677 ((_ is Nil!6001) input!2705))))

(assert (=> d!211130 (= (isPrefix!821 input!2705 lt!255699) lt!255771)))

(declare-fun b!600372 () Bool)

(declare-fun e!363714 () Bool)

(assert (=> b!600372 (= e!363716 e!363714)))

(declare-fun res!259678 () Bool)

(assert (=> b!600372 (=> (not res!259678) (not e!363714))))

(assert (=> b!600372 (= res!259678 (not ((_ is Nil!6001) lt!255699)))))

(declare-fun b!600375 () Bool)

(assert (=> b!600375 (= e!363715 (>= (size!4723 lt!255699) (size!4723 input!2705)))))

(declare-fun b!600374 () Bool)

(assert (=> b!600374 (= e!363714 (isPrefix!821 (tail!803 input!2705) (tail!803 lt!255699)))))

(declare-fun b!600373 () Bool)

(declare-fun res!259679 () Bool)

(assert (=> b!600373 (=> (not res!259679) (not e!363714))))

(assert (=> b!600373 (= res!259679 (= (head!1274 input!2705) (head!1274 lt!255699)))))

(assert (= (and d!211130 (not res!259677)) b!600372))

(assert (= (and b!600372 res!259678) b!600373))

(assert (= (and b!600373 res!259679) b!600374))

(assert (= (and d!211130 (not res!259676)) b!600375))

(declare-fun m!864615 () Bool)

(assert (=> b!600375 m!864615))

(assert (=> b!600375 m!864527))

(assert (=> b!600374 m!864529))

(declare-fun m!864617 () Bool)

(assert (=> b!600374 m!864617))

(assert (=> b!600374 m!864529))

(assert (=> b!600374 m!864617))

(declare-fun m!864619 () Bool)

(assert (=> b!600374 m!864619))

(assert (=> b!600373 m!864535))

(declare-fun m!864621 () Bool)

(assert (=> b!600373 m!864621))

(assert (=> b!600265 d!211130))

(declare-fun d!211132 () Bool)

(declare-fun e!363717 () Bool)

(assert (=> d!211132 e!363717))

(declare-fun res!259680 () Bool)

(assert (=> d!211132 (=> (not res!259680) (not e!363717))))

(assert (=> d!211132 (= res!259680 (semiInverseModEq!475 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))))))

(declare-fun Unit!10932 () Unit!10922)

(assert (=> d!211132 (= (lemmaInv!301 (transformation!1193 (rule!1965 token!491))) Unit!10932)))

(declare-fun b!600376 () Bool)

(assert (=> b!600376 (= e!363717 (equivClasses!458 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))))))

(assert (= (and d!211132 res!259680) b!600376))

(assert (=> d!211132 m!864509))

(assert (=> b!600376 m!864511))

(assert (=> b!600265 d!211132))

(declare-fun d!211134 () Bool)

(assert (=> d!211134 (= (_2!3706 (v!16436 lt!255719)) lt!255711)))

(declare-fun lt!255774 () Unit!10922)

(declare-fun choose!4385 (List!6011 List!6011 List!6011 List!6011 List!6011) Unit!10922)

(assert (=> d!211134 (= lt!255774 (choose!4385 lt!255721 (_2!3706 (v!16436 lt!255719)) lt!255721 lt!255711 input!2705))))

(assert (=> d!211134 (isPrefix!821 lt!255721 input!2705)))

(assert (=> d!211134 (= (lemmaSamePrefixThenSameSuffix!534 lt!255721 (_2!3706 (v!16436 lt!255719)) lt!255721 lt!255711 input!2705) lt!255774)))

(declare-fun bs!70880 () Bool)

(assert (= bs!70880 d!211134))

(declare-fun m!864623 () Bool)

(assert (=> bs!70880 m!864623))

(declare-fun m!864625 () Bool)

(assert (=> bs!70880 m!864625))

(assert (=> b!600265 d!211134))

(declare-fun d!211136 () Bool)

(assert (=> d!211136 (= (size!4722 token!491) (size!4723 (originalCharacters!1232 token!491)))))

(declare-fun Unit!10933 () Unit!10922)

(assert (=> d!211136 (= (lemmaCharactersSize!252 token!491) Unit!10933)))

(declare-fun bs!70881 () Bool)

(assert (= bs!70881 d!211136))

(assert (=> bs!70881 m!864379))

(assert (=> b!600265 d!211136))

(declare-fun d!211138 () Bool)

(assert (=> d!211138 (isPrefix!821 lt!255721 (++!1681 lt!255721 (_2!3706 (v!16436 lt!255719))))))

(declare-fun lt!255775 () Unit!10922)

(assert (=> d!211138 (= lt!255775 (choose!4380 lt!255721 (_2!3706 (v!16436 lt!255719))))))

(assert (=> d!211138 (= (lemmaConcatTwoListThenFirstIsPrefix!666 lt!255721 (_2!3706 (v!16436 lt!255719))) lt!255775)))

(declare-fun bs!70882 () Bool)

(assert (= bs!70882 d!211138))

(assert (=> bs!70882 m!864463))

(assert (=> bs!70882 m!864463))

(declare-fun m!864627 () Bool)

(assert (=> bs!70882 m!864627))

(declare-fun m!864629 () Bool)

(assert (=> bs!70882 m!864629))

(assert (=> b!600265 d!211138))

(declare-fun d!211140 () Bool)

(declare-fun lt!255776 () Int)

(assert (=> d!211140 (>= lt!255776 0)))

(declare-fun e!363718 () Int)

(assert (=> d!211140 (= lt!255776 e!363718)))

(declare-fun c!111455 () Bool)

(assert (=> d!211140 (= c!111455 ((_ is Nil!6001) lt!255721))))

(assert (=> d!211140 (= (size!4723 lt!255721) lt!255776)))

(declare-fun b!600377 () Bool)

(assert (=> b!600377 (= e!363718 0)))

(declare-fun b!600378 () Bool)

(assert (=> b!600378 (= e!363718 (+ 1 (size!4723 (t!79818 lt!255721))))))

(assert (= (and d!211140 c!111455) b!600377))

(assert (= (and d!211140 (not c!111455)) b!600378))

(declare-fun m!864631 () Bool)

(assert (=> b!600378 m!864631))

(assert (=> b!600265 d!211140))

(declare-fun d!211142 () Bool)

(declare-fun list!2518 (Conc!1910) List!6011)

(assert (=> d!211142 (= (list!2516 (charsOf!822 (_1!3706 (v!16436 lt!255719)))) (list!2518 (c!111436 (charsOf!822 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun bs!70883 () Bool)

(assert (= bs!70883 d!211142))

(declare-fun m!864633 () Bool)

(assert (=> bs!70883 m!864633))

(assert (=> b!600265 d!211142))

(declare-fun d!211144 () Bool)

(assert (=> d!211144 (= (isEmpty!4332 rules!3103) ((_ is Nil!6002) rules!3103))))

(assert (=> b!600276 d!211144))

(declare-fun b!600603 () Bool)

(declare-fun e!363845 () Bool)

(assert (=> b!600603 (= e!363845 true)))

(declare-fun d!211146 () Bool)

(assert (=> d!211146 e!363845))

(assert (= d!211146 b!600603))

(declare-fun order!4795 () Int)

(declare-fun lambda!16036 () Int)

(declare-fun order!4793 () Int)

(declare-fun dynLambda!3472 (Int Int) Int)

(declare-fun dynLambda!3473 (Int Int) Int)

(assert (=> b!600603 (< (dynLambda!3472 order!4793 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (dynLambda!3473 order!4795 lambda!16036))))

(declare-fun order!4797 () Int)

(declare-fun dynLambda!3474 (Int Int) Int)

(assert (=> b!600603 (< (dynLambda!3474 order!4797 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (dynLambda!3473 order!4795 lambda!16036))))

(assert (=> d!211146 (= (list!2516 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))) (list!2516 lt!255694))))

(declare-fun lt!255838 () Unit!10922)

(declare-fun ForallOf!116 (Int BalanceConc!3828) Unit!10922)

(assert (=> d!211146 (= lt!255838 (ForallOf!116 lambda!16036 lt!255694))))

(assert (=> d!211146 (= (lemmaSemiInverse!232 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) lt!255694) lt!255838)))

(declare-fun b_lambda!23689 () Bool)

(assert (=> (not b_lambda!23689) (not d!211146)))

(declare-fun tb!52381 () Bool)

(declare-fun t!79859 () Bool)

(assert (=> (and b!600268 (= (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79859) tb!52381))

(declare-fun tp!187056 () Bool)

(declare-fun b!600604 () Bool)

(declare-fun e!363846 () Bool)

(assert (=> b!600604 (= e!363846 (and (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))) tp!187056))))

(declare-fun result!58922 () Bool)

(assert (=> tb!52381 (= result!58922 (and (inv!7617 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))) e!363846))))

(assert (= tb!52381 b!600604))

(declare-fun m!864881 () Bool)

(assert (=> b!600604 m!864881))

(declare-fun m!864883 () Bool)

(assert (=> tb!52381 m!864883))

(assert (=> d!211146 t!79859))

(declare-fun b_and!59307 () Bool)

(assert (= b_and!59275 (and (=> t!79859 result!58922) b_and!59307)))

(declare-fun tb!52383 () Bool)

(declare-fun t!79861 () Bool)

(assert (=> (and b!600263 (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79861) tb!52383))

(declare-fun result!58924 () Bool)

(assert (= result!58924 result!58922))

(assert (=> d!211146 t!79861))

(declare-fun b_and!59309 () Bool)

(assert (= b_and!59277 (and (=> t!79861 result!58924) b_and!59309)))

(declare-fun b_lambda!23691 () Bool)

(assert (=> (not b_lambda!23691) (not d!211146)))

(assert (=> d!211146 t!79825))

(declare-fun b_and!59311 () Bool)

(assert (= b_and!59271 (and (=> t!79825 result!58876) b_and!59311)))

(assert (=> d!211146 t!79827))

(declare-fun b_and!59313 () Bool)

(assert (= b_and!59273 (and (=> t!79827 result!58880) b_and!59313)))

(assert (=> d!211146 m!864523))

(declare-fun m!864885 () Bool)

(assert (=> d!211146 m!864885))

(declare-fun m!864887 () Bool)

(assert (=> d!211146 m!864887))

(declare-fun m!864889 () Bool)

(assert (=> d!211146 m!864889))

(declare-fun m!864891 () Bool)

(assert (=> d!211146 m!864891))

(assert (=> d!211146 m!864523))

(assert (=> d!211146 m!864887))

(assert (=> b!600259 d!211146))

(declare-fun d!211238 () Bool)

(declare-fun isEmpty!4334 (Option!1544) Bool)

(assert (=> d!211238 (= (isDefined!1355 lt!255718) (not (isEmpty!4334 lt!255718)))))

(declare-fun bs!70898 () Bool)

(assert (= bs!70898 d!211238))

(declare-fun m!864893 () Bool)

(assert (=> bs!70898 m!864893))

(assert (=> b!600270 d!211238))

(declare-fun b!600623 () Bool)

(declare-fun e!363855 () Bool)

(declare-fun e!363854 () Bool)

(assert (=> b!600623 (= e!363855 e!363854)))

(declare-fun res!259815 () Bool)

(assert (=> b!600623 (=> (not res!259815) (not e!363854))))

(declare-fun lt!255849 () Option!1544)

(assert (=> b!600623 (= res!259815 (isDefined!1355 lt!255849))))

(declare-fun b!600624 () Bool)

(declare-fun res!259819 () Bool)

(assert (=> b!600624 (=> (not res!259819) (not e!363854))))

(assert (=> b!600624 (= res!259819 (= (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849)))) (originalCharacters!1232 (_1!3706 (get!2304 lt!255849)))))))

(declare-fun b!600625 () Bool)

(declare-fun e!363853 () Option!1544)

(declare-fun lt!255850 () Option!1544)

(declare-fun lt!255852 () Option!1544)

(assert (=> b!600625 (= e!363853 (ite (and ((_ is None!1543) lt!255850) ((_ is None!1543) lt!255852)) None!1543 (ite ((_ is None!1543) lt!255852) lt!255850 (ite ((_ is None!1543) lt!255850) lt!255852 (ite (>= (size!4722 (_1!3706 (v!16436 lt!255850))) (size!4722 (_1!3706 (v!16436 lt!255852)))) lt!255850 lt!255852)))))))

(declare-fun call!40491 () Option!1544)

(assert (=> b!600625 (= lt!255850 call!40491)))

(assert (=> b!600625 (= lt!255852 (maxPrefix!777 thiss!22590 (t!79819 rules!3103) lt!255699))))

(declare-fun b!600626 () Bool)

(assert (=> b!600626 (= e!363853 call!40491)))

(declare-fun b!600627 () Bool)

(declare-fun res!259814 () Bool)

(assert (=> b!600627 (=> (not res!259814) (not e!363854))))

(assert (=> b!600627 (= res!259814 (< (size!4723 (_2!3706 (get!2304 lt!255849))) (size!4723 lt!255699)))))

(declare-fun b!600628 () Bool)

(declare-fun res!259816 () Bool)

(assert (=> b!600628 (=> (not res!259816) (not e!363854))))

(assert (=> b!600628 (= res!259816 (matchR!636 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))) (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))))))

(declare-fun b!600629 () Bool)

(declare-fun res!259813 () Bool)

(assert (=> b!600629 (=> (not res!259813) (not e!363854))))

(assert (=> b!600629 (= res!259813 (= (value!38867 (_1!3706 (get!2304 lt!255849))) (apply!1446 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255849)))))))))

(declare-fun b!600630 () Bool)

(assert (=> b!600630 (= e!363854 (contains!1405 rules!3103 (rule!1965 (_1!3706 (get!2304 lt!255849)))))))

(declare-fun b!600631 () Bool)

(declare-fun res!259818 () Bool)

(assert (=> b!600631 (=> (not res!259818) (not e!363854))))

(assert (=> b!600631 (= res!259818 (= (++!1681 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849)))) (_2!3706 (get!2304 lt!255849))) lt!255699))))

(declare-fun d!211240 () Bool)

(assert (=> d!211240 e!363855))

(declare-fun res!259817 () Bool)

(assert (=> d!211240 (=> res!259817 e!363855)))

(assert (=> d!211240 (= res!259817 (isEmpty!4334 lt!255849))))

(assert (=> d!211240 (= lt!255849 e!363853)))

(declare-fun c!111486 () Bool)

(assert (=> d!211240 (= c!111486 (and ((_ is Cons!6002) rules!3103) ((_ is Nil!6002) (t!79819 rules!3103))))))

(declare-fun lt!255851 () Unit!10922)

(declare-fun lt!255853 () Unit!10922)

(assert (=> d!211240 (= lt!255851 lt!255853)))

(assert (=> d!211240 (isPrefix!821 lt!255699 lt!255699)))

(assert (=> d!211240 (= lt!255853 (lemmaIsPrefixRefl!557 lt!255699 lt!255699))))

(declare-fun rulesValidInductive!444 (LexerInterface!1079 List!6012) Bool)

(assert (=> d!211240 (rulesValidInductive!444 thiss!22590 rules!3103)))

(assert (=> d!211240 (= (maxPrefix!777 thiss!22590 rules!3103 lt!255699) lt!255849)))

(declare-fun bm!40486 () Bool)

(declare-fun maxPrefixOneRule!440 (LexerInterface!1079 Rule!2186 List!6011) Option!1544)

(assert (=> bm!40486 (= call!40491 (maxPrefixOneRule!440 thiss!22590 (h!11403 rules!3103) lt!255699))))

(assert (= (and d!211240 c!111486) b!600626))

(assert (= (and d!211240 (not c!111486)) b!600625))

(assert (= (or b!600626 b!600625) bm!40486))

(assert (= (and d!211240 (not res!259817)) b!600623))

(assert (= (and b!600623 res!259815) b!600624))

(assert (= (and b!600624 res!259819) b!600627))

(assert (= (and b!600627 res!259814) b!600631))

(assert (= (and b!600631 res!259818) b!600629))

(assert (= (and b!600629 res!259813) b!600628))

(assert (= (and b!600628 res!259816) b!600630))

(declare-fun m!864895 () Bool)

(assert (=> bm!40486 m!864895))

(declare-fun m!864897 () Bool)

(assert (=> b!600629 m!864897))

(declare-fun m!864899 () Bool)

(assert (=> b!600629 m!864899))

(assert (=> b!600629 m!864899))

(declare-fun m!864901 () Bool)

(assert (=> b!600629 m!864901))

(assert (=> b!600627 m!864897))

(declare-fun m!864903 () Bool)

(assert (=> b!600627 m!864903))

(assert (=> b!600627 m!864615))

(assert (=> b!600628 m!864897))

(declare-fun m!864905 () Bool)

(assert (=> b!600628 m!864905))

(assert (=> b!600628 m!864905))

(declare-fun m!864907 () Bool)

(assert (=> b!600628 m!864907))

(assert (=> b!600628 m!864907))

(declare-fun m!864909 () Bool)

(assert (=> b!600628 m!864909))

(declare-fun m!864911 () Bool)

(assert (=> b!600625 m!864911))

(assert (=> b!600624 m!864897))

(assert (=> b!600624 m!864905))

(assert (=> b!600624 m!864905))

(assert (=> b!600624 m!864907))

(assert (=> b!600630 m!864897))

(declare-fun m!864913 () Bool)

(assert (=> b!600630 m!864913))

(declare-fun m!864915 () Bool)

(assert (=> d!211240 m!864915))

(declare-fun m!864917 () Bool)

(assert (=> d!211240 m!864917))

(declare-fun m!864919 () Bool)

(assert (=> d!211240 m!864919))

(declare-fun m!864921 () Bool)

(assert (=> d!211240 m!864921))

(assert (=> b!600631 m!864897))

(assert (=> b!600631 m!864905))

(assert (=> b!600631 m!864905))

(assert (=> b!600631 m!864907))

(assert (=> b!600631 m!864907))

(declare-fun m!864923 () Bool)

(assert (=> b!600631 m!864923))

(declare-fun m!864925 () Bool)

(assert (=> b!600623 m!864925))

(assert (=> b!600270 d!211240))

(declare-fun b!600632 () Bool)

(declare-fun e!363857 () List!6011)

(assert (=> b!600632 (= e!363857 suffix!1342)))

(declare-fun lt!255854 () List!6011)

(declare-fun e!363856 () Bool)

(declare-fun b!600635 () Bool)

(assert (=> b!600635 (= e!363856 (or (not (= suffix!1342 Nil!6001)) (= lt!255854 input!2705)))))

(declare-fun b!600633 () Bool)

(assert (=> b!600633 (= e!363857 (Cons!6001 (h!11402 input!2705) (++!1681 (t!79818 input!2705) suffix!1342)))))

(declare-fun d!211242 () Bool)

(assert (=> d!211242 e!363856))

(declare-fun res!259820 () Bool)

(assert (=> d!211242 (=> (not res!259820) (not e!363856))))

(assert (=> d!211242 (= res!259820 (= (content!1083 lt!255854) ((_ map or) (content!1083 input!2705) (content!1083 suffix!1342))))))

(assert (=> d!211242 (= lt!255854 e!363857)))

(declare-fun c!111487 () Bool)

(assert (=> d!211242 (= c!111487 ((_ is Nil!6001) input!2705))))

(assert (=> d!211242 (= (++!1681 input!2705 suffix!1342) lt!255854)))

(declare-fun b!600634 () Bool)

(declare-fun res!259821 () Bool)

(assert (=> b!600634 (=> (not res!259821) (not e!363856))))

(assert (=> b!600634 (= res!259821 (= (size!4723 lt!255854) (+ (size!4723 input!2705) (size!4723 suffix!1342))))))

(assert (= (and d!211242 c!111487) b!600632))

(assert (= (and d!211242 (not c!111487)) b!600633))

(assert (= (and d!211242 res!259820) b!600634))

(assert (= (and b!600634 res!259821) b!600635))

(declare-fun m!864927 () Bool)

(assert (=> b!600633 m!864927))

(declare-fun m!864929 () Bool)

(assert (=> d!211242 m!864929))

(declare-fun m!864931 () Bool)

(assert (=> d!211242 m!864931))

(declare-fun m!864933 () Bool)

(assert (=> d!211242 m!864933))

(declare-fun m!864935 () Bool)

(assert (=> b!600634 m!864935))

(assert (=> b!600634 m!864527))

(declare-fun m!864937 () Bool)

(assert (=> b!600634 m!864937))

(assert (=> b!600270 d!211242))

(declare-fun d!211244 () Bool)

(assert (=> d!211244 (= (isEmpty!4331 input!2705) ((_ is Nil!6001) input!2705))))

(assert (=> b!600258 d!211244))

(declare-fun d!211246 () Bool)

(declare-fun res!259826 () Bool)

(declare-fun e!363860 () Bool)

(assert (=> d!211246 (=> (not res!259826) (not e!363860))))

(assert (=> d!211246 (= res!259826 (not (isEmpty!4331 (originalCharacters!1232 token!491))))))

(assert (=> d!211246 (= (inv!7613 token!491) e!363860)))

(declare-fun b!600640 () Bool)

(declare-fun res!259827 () Bool)

(assert (=> b!600640 (=> (not res!259827) (not e!363860))))

(assert (=> b!600640 (= res!259827 (= (originalCharacters!1232 token!491) (list!2516 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491)))))))

(declare-fun b!600641 () Bool)

(assert (=> b!600641 (= e!363860 (= (size!4722 token!491) (size!4723 (originalCharacters!1232 token!491))))))

(assert (= (and d!211246 res!259826) b!600640))

(assert (= (and b!600640 res!259827) b!600641))

(declare-fun b_lambda!23693 () Bool)

(assert (=> (not b_lambda!23693) (not b!600640)))

(declare-fun t!79863 () Bool)

(declare-fun tb!52385 () Bool)

(assert (=> (and b!600268 (= (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toChars!1947 (transformation!1193 (rule!1965 token!491)))) t!79863) tb!52385))

(declare-fun b!600642 () Bool)

(declare-fun e!363861 () Bool)

(declare-fun tp!187057 () Bool)

(assert (=> b!600642 (= e!363861 (and (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491)))) tp!187057))))

(declare-fun result!58926 () Bool)

(assert (=> tb!52385 (= result!58926 (and (inv!7617 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491))) e!363861))))

(assert (= tb!52385 b!600642))

(declare-fun m!864939 () Bool)

(assert (=> b!600642 m!864939))

(declare-fun m!864941 () Bool)

(assert (=> tb!52385 m!864941))

(assert (=> b!600640 t!79863))

(declare-fun b_and!59315 () Bool)

(assert (= b_and!59307 (and (=> t!79863 result!58926) b_and!59315)))

(declare-fun tb!52387 () Bool)

(declare-fun t!79865 () Bool)

(assert (=> (and b!600263 (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 token!491)))) t!79865) tb!52387))

(declare-fun result!58928 () Bool)

(assert (= result!58928 result!58926))

(assert (=> b!600640 t!79865))

(declare-fun b_and!59317 () Bool)

(assert (= b_and!59309 (and (=> t!79865 result!58928) b_and!59317)))

(declare-fun m!864943 () Bool)

(assert (=> d!211246 m!864943))

(declare-fun m!864945 () Bool)

(assert (=> b!600640 m!864945))

(assert (=> b!600640 m!864945))

(declare-fun m!864947 () Bool)

(assert (=> b!600640 m!864947))

(assert (=> b!600641 m!864379))

(assert (=> start!56924 d!211246))

(declare-fun d!211248 () Bool)

(declare-fun lt!255855 () Int)

(assert (=> d!211248 (>= lt!255855 0)))

(declare-fun e!363862 () Int)

(assert (=> d!211248 (= lt!255855 e!363862)))

(declare-fun c!111488 () Bool)

(assert (=> d!211248 (= c!111488 ((_ is Nil!6001) (originalCharacters!1232 token!491)))))

(assert (=> d!211248 (= (size!4723 (originalCharacters!1232 token!491)) lt!255855)))

(declare-fun b!600643 () Bool)

(assert (=> b!600643 (= e!363862 0)))

(declare-fun b!600644 () Bool)

(assert (=> b!600644 (= e!363862 (+ 1 (size!4723 (t!79818 (originalCharacters!1232 token!491)))))))

(assert (= (and d!211248 c!111488) b!600643))

(assert (= (and d!211248 (not c!111488)) b!600644))

(declare-fun m!864949 () Bool)

(assert (=> b!600644 m!864949))

(assert (=> b!600251 d!211248))

(declare-fun d!211250 () Bool)

(assert (=> d!211250 (= (apply!1446 (transformation!1193 (rule!1965 token!491)) (seqFromList!1369 lt!255717)) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 token!491))) (seqFromList!1369 lt!255717)))))

(declare-fun b_lambda!23695 () Bool)

(assert (=> (not b_lambda!23695) (not d!211250)))

(declare-fun t!79867 () Bool)

(declare-fun tb!52389 () Bool)

(assert (=> (and b!600268 (= (toValue!2088 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))) t!79867) tb!52389))

(declare-fun result!58930 () Bool)

(assert (=> tb!52389 (= result!58930 (inv!21 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 token!491))) (seqFromList!1369 lt!255717))))))

(declare-fun m!864951 () Bool)

(assert (=> tb!52389 m!864951))

(assert (=> d!211250 t!79867))

(declare-fun b_and!59319 () Bool)

(assert (= b_and!59311 (and (=> t!79867 result!58930) b_and!59319)))

(declare-fun tb!52391 () Bool)

(declare-fun t!79869 () Bool)

(assert (=> (and b!600263 (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))) t!79869) tb!52391))

(declare-fun result!58932 () Bool)

(assert (= result!58932 result!58930))

(assert (=> d!211250 t!79869))

(declare-fun b_and!59321 () Bool)

(assert (= b_and!59313 (and (=> t!79869 result!58932) b_and!59321)))

(assert (=> d!211250 m!864393))

(declare-fun m!864953 () Bool)

(assert (=> d!211250 m!864953))

(assert (=> b!600272 d!211250))

(declare-fun d!211252 () Bool)

(declare-fun lt!255858 () Bool)

(declare-fun content!1084 (List!6012) (InoxSet Rule!2186))

(assert (=> d!211252 (= lt!255858 (select (content!1084 rules!3103) (rule!1965 (_1!3706 (v!16436 lt!255719)))))))

(declare-fun e!363868 () Bool)

(assert (=> d!211252 (= lt!255858 e!363868)))

(declare-fun res!259832 () Bool)

(assert (=> d!211252 (=> (not res!259832) (not e!363868))))

(assert (=> d!211252 (= res!259832 ((_ is Cons!6002) rules!3103))))

(assert (=> d!211252 (= (contains!1405 rules!3103 (rule!1965 (_1!3706 (v!16436 lt!255719)))) lt!255858)))

(declare-fun b!600649 () Bool)

(declare-fun e!363869 () Bool)

(assert (=> b!600649 (= e!363868 e!363869)))

(declare-fun res!259833 () Bool)

(assert (=> b!600649 (=> res!259833 e!363869)))

(assert (=> b!600649 (= res!259833 (= (h!11403 rules!3103) (rule!1965 (_1!3706 (v!16436 lt!255719)))))))

(declare-fun b!600650 () Bool)

(assert (=> b!600650 (= e!363869 (contains!1405 (t!79819 rules!3103) (rule!1965 (_1!3706 (v!16436 lt!255719)))))))

(assert (= (and d!211252 res!259832) b!600649))

(assert (= (and b!600649 (not res!259833)) b!600650))

(declare-fun m!864955 () Bool)

(assert (=> d!211252 m!864955))

(declare-fun m!864957 () Bool)

(assert (=> d!211252 m!864957))

(declare-fun m!864959 () Bool)

(assert (=> b!600650 m!864959))

(assert (=> b!600272 d!211252))

(declare-fun d!211254 () Bool)

(declare-fun lt!255859 () List!6011)

(assert (=> d!211254 (= (++!1681 lt!255717 lt!255859) lt!255699)))

(declare-fun e!363870 () List!6011)

(assert (=> d!211254 (= lt!255859 e!363870)))

(declare-fun c!111489 () Bool)

(assert (=> d!211254 (= c!111489 ((_ is Cons!6001) lt!255717))))

(assert (=> d!211254 (>= (size!4723 lt!255699) (size!4723 lt!255717))))

(assert (=> d!211254 (= (getSuffix!338 lt!255699 lt!255717) lt!255859)))

(declare-fun b!600651 () Bool)

(assert (=> b!600651 (= e!363870 (getSuffix!338 (tail!803 lt!255699) (t!79818 lt!255717)))))

(declare-fun b!600652 () Bool)

(assert (=> b!600652 (= e!363870 lt!255699)))

(assert (= (and d!211254 c!111489) b!600651))

(assert (= (and d!211254 (not c!111489)) b!600652))

(declare-fun m!864961 () Bool)

(assert (=> d!211254 m!864961))

(assert (=> d!211254 m!864615))

(assert (=> d!211254 m!864443))

(assert (=> b!600651 m!864617))

(assert (=> b!600651 m!864617))

(declare-fun m!864963 () Bool)

(assert (=> b!600651 m!864963))

(assert (=> b!600272 d!211254))

(declare-fun d!211256 () Bool)

(assert (=> d!211256 (= suffix!1342 lt!255722)))

(declare-fun lt!255860 () Unit!10922)

(assert (=> d!211256 (= lt!255860 (choose!4385 lt!255717 suffix!1342 lt!255717 lt!255722 lt!255699))))

(assert (=> d!211256 (isPrefix!821 lt!255717 lt!255699)))

(assert (=> d!211256 (= (lemmaSamePrefixThenSameSuffix!534 lt!255717 suffix!1342 lt!255717 lt!255722 lt!255699) lt!255860)))

(declare-fun bs!70899 () Bool)

(assert (= bs!70899 d!211256))

(declare-fun m!864965 () Bool)

(assert (=> bs!70899 m!864965))

(declare-fun m!864967 () Bool)

(assert (=> bs!70899 m!864967))

(assert (=> b!600272 d!211256))

(declare-fun d!211258 () Bool)

(assert (=> d!211258 (= (seqFromList!1369 lt!255717) (fromListB!602 lt!255717))))

(declare-fun bs!70900 () Bool)

(assert (= bs!70900 d!211258))

(declare-fun m!864969 () Bool)

(assert (=> bs!70900 m!864969))

(assert (=> b!600272 d!211258))

(declare-fun d!211260 () Bool)

(assert (=> d!211260 (= (get!2304 lt!255718) (v!16436 lt!255718))))

(assert (=> b!600271 d!211260))

(declare-fun d!211262 () Bool)

(assert (=> d!211262 (= (list!2516 (charsOf!822 token!491)) (list!2518 (c!111436 (charsOf!822 token!491))))))

(declare-fun bs!70901 () Bool)

(assert (= bs!70901 d!211262))

(declare-fun m!864971 () Bool)

(assert (=> bs!70901 m!864971))

(assert (=> b!600275 d!211262))

(declare-fun d!211264 () Bool)

(declare-fun lt!255861 () BalanceConc!3828)

(assert (=> d!211264 (= (list!2516 lt!255861) (originalCharacters!1232 token!491))))

(assert (=> d!211264 (= lt!255861 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491)))))

(assert (=> d!211264 (= (charsOf!822 token!491) lt!255861)))

(declare-fun b_lambda!23697 () Bool)

(assert (=> (not b_lambda!23697) (not d!211264)))

(assert (=> d!211264 t!79863))

(declare-fun b_and!59323 () Bool)

(assert (= b_and!59315 (and (=> t!79863 result!58926) b_and!59323)))

(assert (=> d!211264 t!79865))

(declare-fun b_and!59325 () Bool)

(assert (= b_and!59317 (and (=> t!79865 result!58928) b_and!59325)))

(declare-fun m!864973 () Bool)

(assert (=> d!211264 m!864973))

(assert (=> d!211264 m!864945))

(assert (=> b!600275 d!211264))

(declare-fun b!600653 () Bool)

(declare-fun e!363872 () List!6011)

(assert (=> b!600653 (= e!363872 suffix!1342)))

(declare-fun lt!255862 () List!6011)

(declare-fun b!600656 () Bool)

(declare-fun e!363871 () Bool)

(assert (=> b!600656 (= e!363871 (or (not (= suffix!1342 Nil!6001)) (= lt!255862 lt!255717)))))

(declare-fun b!600654 () Bool)

(assert (=> b!600654 (= e!363872 (Cons!6001 (h!11402 lt!255717) (++!1681 (t!79818 lt!255717) suffix!1342)))))

(declare-fun d!211266 () Bool)

(assert (=> d!211266 e!363871))

(declare-fun res!259834 () Bool)

(assert (=> d!211266 (=> (not res!259834) (not e!363871))))

(assert (=> d!211266 (= res!259834 (= (content!1083 lt!255862) ((_ map or) (content!1083 lt!255717) (content!1083 suffix!1342))))))

(assert (=> d!211266 (= lt!255862 e!363872)))

(declare-fun c!111490 () Bool)

(assert (=> d!211266 (= c!111490 ((_ is Nil!6001) lt!255717))))

(assert (=> d!211266 (= (++!1681 lt!255717 suffix!1342) lt!255862)))

(declare-fun b!600655 () Bool)

(declare-fun res!259835 () Bool)

(assert (=> b!600655 (=> (not res!259835) (not e!363871))))

(assert (=> b!600655 (= res!259835 (= (size!4723 lt!255862) (+ (size!4723 lt!255717) (size!4723 suffix!1342))))))

(assert (= (and d!211266 c!111490) b!600653))

(assert (= (and d!211266 (not c!111490)) b!600654))

(assert (= (and d!211266 res!259834) b!600655))

(assert (= (and b!600655 res!259835) b!600656))

(declare-fun m!864975 () Bool)

(assert (=> b!600654 m!864975))

(declare-fun m!864977 () Bool)

(assert (=> d!211266 m!864977))

(declare-fun m!864979 () Bool)

(assert (=> d!211266 m!864979))

(assert (=> d!211266 m!864933))

(declare-fun m!864981 () Bool)

(assert (=> b!600655 m!864981))

(assert (=> b!600655 m!864443))

(assert (=> b!600655 m!864937))

(assert (=> b!600253 d!211266))

(declare-fun b!600685 () Bool)

(declare-fun res!259855 () Bool)

(declare-fun e!363890 () Bool)

(assert (=> b!600685 (=> (not res!259855) (not e!363890))))

(declare-fun call!40494 () Bool)

(assert (=> b!600685 (= res!259855 (not call!40494))))

(declare-fun b!600686 () Bool)

(declare-fun res!259856 () Bool)

(declare-fun e!363888 () Bool)

(assert (=> b!600686 (=> res!259856 e!363888)))

(assert (=> b!600686 (= res!259856 (not ((_ is ElementMatch!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))))

(declare-fun e!363891 () Bool)

(assert (=> b!600686 (= e!363891 e!363888)))

(declare-fun b!600687 () Bool)

(declare-fun e!363887 () Bool)

(declare-fun lt!255865 () Bool)

(assert (=> b!600687 (= e!363887 (= lt!255865 call!40494))))

(declare-fun b!600688 () Bool)

(declare-fun e!363893 () Bool)

(declare-fun derivativeStep!322 (Regex!1527 C!3976) Regex!1527)

(assert (=> b!600688 (= e!363893 (matchR!636 (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721)) (tail!803 lt!255721)))))

(declare-fun b!600689 () Bool)

(declare-fun res!259852 () Bool)

(assert (=> b!600689 (=> (not res!259852) (not e!363890))))

(assert (=> b!600689 (= res!259852 (isEmpty!4331 (tail!803 lt!255721)))))

(declare-fun b!600690 () Bool)

(assert (=> b!600690 (= e!363891 (not lt!255865))))

(declare-fun b!600691 () Bool)

(assert (=> b!600691 (= e!363887 e!363891)))

(declare-fun c!111499 () Bool)

(assert (=> b!600691 (= c!111499 ((_ is EmptyLang!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun d!211268 () Bool)

(assert (=> d!211268 e!363887))

(declare-fun c!111497 () Bool)

(assert (=> d!211268 (= c!111497 ((_ is EmptyExpr!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(assert (=> d!211268 (= lt!255865 e!363893)))

(declare-fun c!111498 () Bool)

(assert (=> d!211268 (= c!111498 (isEmpty!4331 lt!255721))))

(assert (=> d!211268 (validRegex!528 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))

(assert (=> d!211268 (= (matchR!636 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) lt!255721) lt!255865)))

(declare-fun b!600692 () Bool)

(assert (=> b!600692 (= e!363890 (= (head!1274 lt!255721) (c!111435 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))))

(declare-fun b!600693 () Bool)

(assert (=> b!600693 (= e!363893 (nullable!433 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun b!600694 () Bool)

(declare-fun e!363889 () Bool)

(assert (=> b!600694 (= e!363888 e!363889)))

(declare-fun res!259857 () Bool)

(assert (=> b!600694 (=> (not res!259857) (not e!363889))))

(assert (=> b!600694 (= res!259857 (not lt!255865))))

(declare-fun b!600695 () Bool)

(declare-fun e!363892 () Bool)

(assert (=> b!600695 (= e!363889 e!363892)))

(declare-fun res!259854 () Bool)

(assert (=> b!600695 (=> res!259854 e!363892)))

(assert (=> b!600695 (= res!259854 call!40494)))

(declare-fun b!600696 () Bool)

(declare-fun res!259859 () Bool)

(assert (=> b!600696 (=> res!259859 e!363892)))

(assert (=> b!600696 (= res!259859 (not (isEmpty!4331 (tail!803 lt!255721))))))

(declare-fun b!600697 () Bool)

(assert (=> b!600697 (= e!363892 (not (= (head!1274 lt!255721) (c!111435 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))))

(declare-fun b!600698 () Bool)

(declare-fun res!259858 () Bool)

(assert (=> b!600698 (=> res!259858 e!363888)))

(assert (=> b!600698 (= res!259858 e!363890)))

(declare-fun res!259853 () Bool)

(assert (=> b!600698 (=> (not res!259853) (not e!363890))))

(assert (=> b!600698 (= res!259853 lt!255865)))

(declare-fun bm!40489 () Bool)

(assert (=> bm!40489 (= call!40494 (isEmpty!4331 lt!255721))))

(assert (= (and d!211268 c!111498) b!600693))

(assert (= (and d!211268 (not c!111498)) b!600688))

(assert (= (and d!211268 c!111497) b!600687))

(assert (= (and d!211268 (not c!111497)) b!600691))

(assert (= (and b!600691 c!111499) b!600690))

(assert (= (and b!600691 (not c!111499)) b!600686))

(assert (= (and b!600686 (not res!259856)) b!600698))

(assert (= (and b!600698 res!259853) b!600685))

(assert (= (and b!600685 res!259855) b!600689))

(assert (= (and b!600689 res!259852) b!600692))

(assert (= (and b!600698 (not res!259858)) b!600694))

(assert (= (and b!600694 res!259857) b!600695))

(assert (= (and b!600695 (not res!259854)) b!600696))

(assert (= (and b!600696 (not res!259859)) b!600697))

(assert (= (or b!600687 b!600685 b!600695) bm!40489))

(assert (=> b!600692 m!864547))

(assert (=> b!600688 m!864547))

(assert (=> b!600688 m!864547))

(declare-fun m!864983 () Bool)

(assert (=> b!600688 m!864983))

(assert (=> b!600688 m!864541))

(assert (=> b!600688 m!864983))

(assert (=> b!600688 m!864541))

(declare-fun m!864985 () Bool)

(assert (=> b!600688 m!864985))

(assert (=> bm!40489 m!864425))

(assert (=> b!600689 m!864541))

(assert (=> b!600689 m!864541))

(declare-fun m!864987 () Bool)

(assert (=> b!600689 m!864987))

(assert (=> b!600697 m!864547))

(assert (=> d!211268 m!864425))

(assert (=> d!211268 m!864591))

(assert (=> b!600693 m!864593))

(assert (=> b!600696 m!864541))

(assert (=> b!600696 m!864541))

(assert (=> b!600696 m!864987))

(assert (=> b!600264 d!211268))

(declare-fun b!600709 () Bool)

(declare-fun e!363900 () Bool)

(declare-fun e!363902 () Bool)

(assert (=> b!600709 (= e!363900 e!363902)))

(declare-fun c!111504 () Bool)

(assert (=> b!600709 (= c!111504 ((_ is IntegerValue!3652) (value!38867 token!491)))))

(declare-fun d!211270 () Bool)

(declare-fun c!111505 () Bool)

(assert (=> d!211270 (= c!111505 ((_ is IntegerValue!3651) (value!38867 token!491)))))

(assert (=> d!211270 (= (inv!21 (value!38867 token!491)) e!363900)))

(declare-fun b!600710 () Bool)

(declare-fun inv!16 (TokenValue!1217) Bool)

(assert (=> b!600710 (= e!363900 (inv!16 (value!38867 token!491)))))

(declare-fun b!600711 () Bool)

(declare-fun e!363901 () Bool)

(declare-fun inv!15 (TokenValue!1217) Bool)

(assert (=> b!600711 (= e!363901 (inv!15 (value!38867 token!491)))))

(declare-fun b!600712 () Bool)

(declare-fun res!259862 () Bool)

(assert (=> b!600712 (=> res!259862 e!363901)))

(assert (=> b!600712 (= res!259862 (not ((_ is IntegerValue!3653) (value!38867 token!491))))))

(assert (=> b!600712 (= e!363902 e!363901)))

(declare-fun b!600713 () Bool)

(declare-fun inv!17 (TokenValue!1217) Bool)

(assert (=> b!600713 (= e!363902 (inv!17 (value!38867 token!491)))))

(assert (= (and d!211270 c!111505) b!600710))

(assert (= (and d!211270 (not c!111505)) b!600709))

(assert (= (and b!600709 c!111504) b!600713))

(assert (= (and b!600709 (not c!111504)) b!600712))

(assert (= (and b!600712 (not res!259862)) b!600711))

(declare-fun m!864989 () Bool)

(assert (=> b!600710 m!864989))

(declare-fun m!864991 () Bool)

(assert (=> b!600711 m!864991))

(declare-fun m!864993 () Bool)

(assert (=> b!600713 m!864993))

(assert (=> b!600274 d!211270))

(declare-fun d!211272 () Bool)

(declare-fun res!259865 () Bool)

(declare-fun e!363905 () Bool)

(assert (=> d!211272 (=> (not res!259865) (not e!363905))))

(declare-fun rulesValid!439 (LexerInterface!1079 List!6012) Bool)

(assert (=> d!211272 (= res!259865 (rulesValid!439 thiss!22590 rules!3103))))

(assert (=> d!211272 (= (rulesInvariant!1042 thiss!22590 rules!3103) e!363905)))

(declare-fun b!600716 () Bool)

(declare-datatypes ((List!6014 0))(
  ( (Nil!6004) (Cons!6004 (h!11405 String!7829) (t!79881 List!6014)) )
))
(declare-fun noDuplicateTag!439 (LexerInterface!1079 List!6012 List!6014) Bool)

(assert (=> b!600716 (= e!363905 (noDuplicateTag!439 thiss!22590 rules!3103 Nil!6004))))

(assert (= (and d!211272 res!259865) b!600716))

(declare-fun m!864995 () Bool)

(assert (=> d!211272 m!864995))

(declare-fun m!864997 () Bool)

(assert (=> b!600716 m!864997))

(assert (=> b!600273 d!211272))

(declare-fun b!600717 () Bool)

(declare-fun e!363908 () Bool)

(declare-fun e!363907 () Bool)

(assert (=> b!600717 (= e!363908 e!363907)))

(declare-fun res!259868 () Bool)

(assert (=> b!600717 (=> (not res!259868) (not e!363907))))

(declare-fun lt!255866 () Option!1544)

(assert (=> b!600717 (= res!259868 (isDefined!1355 lt!255866))))

(declare-fun b!600718 () Bool)

(declare-fun res!259872 () Bool)

(assert (=> b!600718 (=> (not res!259872) (not e!363907))))

(assert (=> b!600718 (= res!259872 (= (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866)))) (originalCharacters!1232 (_1!3706 (get!2304 lt!255866)))))))

(declare-fun b!600719 () Bool)

(declare-fun e!363906 () Option!1544)

(declare-fun lt!255867 () Option!1544)

(declare-fun lt!255869 () Option!1544)

(assert (=> b!600719 (= e!363906 (ite (and ((_ is None!1543) lt!255867) ((_ is None!1543) lt!255869)) None!1543 (ite ((_ is None!1543) lt!255869) lt!255867 (ite ((_ is None!1543) lt!255867) lt!255869 (ite (>= (size!4722 (_1!3706 (v!16436 lt!255867))) (size!4722 (_1!3706 (v!16436 lt!255869)))) lt!255867 lt!255869)))))))

(declare-fun call!40495 () Option!1544)

(assert (=> b!600719 (= lt!255867 call!40495)))

(assert (=> b!600719 (= lt!255869 (maxPrefix!777 thiss!22590 (t!79819 rules!3103) input!2705))))

(declare-fun b!600720 () Bool)

(assert (=> b!600720 (= e!363906 call!40495)))

(declare-fun b!600721 () Bool)

(declare-fun res!259867 () Bool)

(assert (=> b!600721 (=> (not res!259867) (not e!363907))))

(assert (=> b!600721 (= res!259867 (< (size!4723 (_2!3706 (get!2304 lt!255866))) (size!4723 input!2705)))))

(declare-fun b!600722 () Bool)

(declare-fun res!259869 () Bool)

(assert (=> b!600722 (=> (not res!259869) (not e!363907))))

(assert (=> b!600722 (= res!259869 (matchR!636 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))) (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))))))

(declare-fun b!600723 () Bool)

(declare-fun res!259866 () Bool)

(assert (=> b!600723 (=> (not res!259866) (not e!363907))))

(assert (=> b!600723 (= res!259866 (= (value!38867 (_1!3706 (get!2304 lt!255866))) (apply!1446 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255866)))))))))

(declare-fun b!600724 () Bool)

(assert (=> b!600724 (= e!363907 (contains!1405 rules!3103 (rule!1965 (_1!3706 (get!2304 lt!255866)))))))

(declare-fun b!600725 () Bool)

(declare-fun res!259871 () Bool)

(assert (=> b!600725 (=> (not res!259871) (not e!363907))))

(assert (=> b!600725 (= res!259871 (= (++!1681 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866)))) (_2!3706 (get!2304 lt!255866))) input!2705))))

(declare-fun d!211274 () Bool)

(assert (=> d!211274 e!363908))

(declare-fun res!259870 () Bool)

(assert (=> d!211274 (=> res!259870 e!363908)))

(assert (=> d!211274 (= res!259870 (isEmpty!4334 lt!255866))))

(assert (=> d!211274 (= lt!255866 e!363906)))

(declare-fun c!111506 () Bool)

(assert (=> d!211274 (= c!111506 (and ((_ is Cons!6002) rules!3103) ((_ is Nil!6002) (t!79819 rules!3103))))))

(declare-fun lt!255868 () Unit!10922)

(declare-fun lt!255870 () Unit!10922)

(assert (=> d!211274 (= lt!255868 lt!255870)))

(assert (=> d!211274 (isPrefix!821 input!2705 input!2705)))

(assert (=> d!211274 (= lt!255870 (lemmaIsPrefixRefl!557 input!2705 input!2705))))

(assert (=> d!211274 (rulesValidInductive!444 thiss!22590 rules!3103)))

(assert (=> d!211274 (= (maxPrefix!777 thiss!22590 rules!3103 input!2705) lt!255866)))

(declare-fun bm!40490 () Bool)

(assert (=> bm!40490 (= call!40495 (maxPrefixOneRule!440 thiss!22590 (h!11403 rules!3103) input!2705))))

(assert (= (and d!211274 c!111506) b!600720))

(assert (= (and d!211274 (not c!111506)) b!600719))

(assert (= (or b!600720 b!600719) bm!40490))

(assert (= (and d!211274 (not res!259870)) b!600717))

(assert (= (and b!600717 res!259868) b!600718))

(assert (= (and b!600718 res!259872) b!600721))

(assert (= (and b!600721 res!259867) b!600725))

(assert (= (and b!600725 res!259871) b!600723))

(assert (= (and b!600723 res!259866) b!600722))

(assert (= (and b!600722 res!259869) b!600724))

(declare-fun m!864999 () Bool)

(assert (=> bm!40490 m!864999))

(declare-fun m!865001 () Bool)

(assert (=> b!600723 m!865001))

(declare-fun m!865003 () Bool)

(assert (=> b!600723 m!865003))

(assert (=> b!600723 m!865003))

(declare-fun m!865005 () Bool)

(assert (=> b!600723 m!865005))

(assert (=> b!600721 m!865001))

(declare-fun m!865007 () Bool)

(assert (=> b!600721 m!865007))

(assert (=> b!600721 m!864527))

(assert (=> b!600722 m!865001))

(declare-fun m!865009 () Bool)

(assert (=> b!600722 m!865009))

(assert (=> b!600722 m!865009))

(declare-fun m!865011 () Bool)

(assert (=> b!600722 m!865011))

(assert (=> b!600722 m!865011))

(declare-fun m!865013 () Bool)

(assert (=> b!600722 m!865013))

(declare-fun m!865015 () Bool)

(assert (=> b!600719 m!865015))

(assert (=> b!600718 m!865001))

(assert (=> b!600718 m!865009))

(assert (=> b!600718 m!865009))

(assert (=> b!600718 m!865011))

(assert (=> b!600724 m!865001))

(declare-fun m!865017 () Bool)

(assert (=> b!600724 m!865017))

(declare-fun m!865019 () Bool)

(assert (=> d!211274 m!865019))

(assert (=> d!211274 m!864447))

(assert (=> d!211274 m!864475))

(assert (=> d!211274 m!864921))

(assert (=> b!600725 m!865001))

(assert (=> b!600725 m!865009))

(assert (=> b!600725 m!865009))

(assert (=> b!600725 m!865011))

(assert (=> b!600725 m!865011))

(declare-fun m!865021 () Bool)

(assert (=> b!600725 m!865021))

(declare-fun m!865023 () Bool)

(assert (=> b!600717 m!865023))

(assert (=> b!600252 d!211274))

(declare-fun e!363911 () Bool)

(assert (=> b!600267 (= tp!187002 e!363911)))

(declare-fun b!600736 () Bool)

(assert (=> b!600736 (= e!363911 tp_is_empty!3409)))

(declare-fun b!600737 () Bool)

(declare-fun tp!187070 () Bool)

(declare-fun tp!187072 () Bool)

(assert (=> b!600737 (= e!363911 (and tp!187070 tp!187072))))

(declare-fun b!600738 () Bool)

(declare-fun tp!187068 () Bool)

(assert (=> b!600738 (= e!363911 tp!187068)))

(declare-fun b!600739 () Bool)

(declare-fun tp!187071 () Bool)

(declare-fun tp!187069 () Bool)

(assert (=> b!600739 (= e!363911 (and tp!187071 tp!187069))))

(assert (= (and b!600267 ((_ is ElementMatch!1527) (regex!1193 (rule!1965 token!491)))) b!600736))

(assert (= (and b!600267 ((_ is Concat!2744) (regex!1193 (rule!1965 token!491)))) b!600737))

(assert (= (and b!600267 ((_ is Star!1527) (regex!1193 (rule!1965 token!491)))) b!600738))

(assert (= (and b!600267 ((_ is Union!1527) (regex!1193 (rule!1965 token!491)))) b!600739))

(declare-fun b!600750 () Bool)

(declare-fun b_free!17081 () Bool)

(declare-fun b_next!17097 () Bool)

(assert (=> b!600750 (= b_free!17081 (not b_next!17097))))

(declare-fun t!79871 () Bool)

(declare-fun tb!52393 () Bool)

(assert (=> (and b!600750 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79871) tb!52393))

(declare-fun result!58938 () Bool)

(assert (= result!58938 result!58876))

(assert (=> d!211092 t!79871))

(assert (=> d!211146 t!79871))

(declare-fun t!79873 () Bool)

(declare-fun tb!52395 () Bool)

(assert (=> (and b!600750 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))) t!79873) tb!52395))

(declare-fun result!58940 () Bool)

(assert (= result!58940 result!58930))

(assert (=> d!211250 t!79873))

(declare-fun b_and!59327 () Bool)

(declare-fun tp!187083 () Bool)

(assert (=> b!600750 (= tp!187083 (and (=> t!79871 result!58938) (=> t!79873 result!58940) b_and!59327))))

(declare-fun b_free!17083 () Bool)

(declare-fun b_next!17099 () Bool)

(assert (=> b!600750 (= b_free!17083 (not b_next!17099))))

(declare-fun tb!52397 () Bool)

(declare-fun t!79875 () Bool)

(assert (=> (and b!600750 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79875) tb!52397))

(declare-fun result!58942 () Bool)

(assert (= result!58942 result!58882))

(assert (=> d!211112 t!79875))

(declare-fun t!79877 () Bool)

(declare-fun tb!52399 () Bool)

(assert (=> (and b!600750 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79877) tb!52399))

(declare-fun result!58944 () Bool)

(assert (= result!58944 result!58922))

(assert (=> d!211146 t!79877))

(declare-fun tb!52401 () Bool)

(declare-fun t!79879 () Bool)

(assert (=> (and b!600750 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toChars!1947 (transformation!1193 (rule!1965 token!491)))) t!79879) tb!52401))

(declare-fun result!58946 () Bool)

(assert (= result!58946 result!58926))

(assert (=> b!600640 t!79879))

(assert (=> d!211264 t!79879))

(declare-fun b_and!59329 () Bool)

(declare-fun tp!187081 () Bool)

(assert (=> b!600750 (= tp!187081 (and (=> t!79875 result!58942) (=> t!79877 result!58944) (=> t!79879 result!58946) b_and!59329))))

(declare-fun e!363922 () Bool)

(assert (=> b!600750 (= e!363922 (and tp!187083 tp!187081))))

(declare-fun e!363920 () Bool)

(declare-fun b!600749 () Bool)

(declare-fun tp!187084 () Bool)

(assert (=> b!600749 (= e!363920 (and tp!187084 (inv!7609 (tag!1455 (h!11403 (t!79819 rules!3103)))) (inv!7612 (transformation!1193 (h!11403 (t!79819 rules!3103)))) e!363922))))

(declare-fun b!600748 () Bool)

(declare-fun e!363921 () Bool)

(declare-fun tp!187082 () Bool)

(assert (=> b!600748 (= e!363921 (and e!363920 tp!187082))))

(assert (=> b!600261 (= tp!187010 e!363921)))

(assert (= b!600749 b!600750))

(assert (= b!600748 b!600749))

(assert (= (and b!600261 ((_ is Cons!6002) (t!79819 rules!3103))) b!600748))

(declare-fun m!865025 () Bool)

(assert (=> b!600749 m!865025))

(declare-fun m!865027 () Bool)

(assert (=> b!600749 m!865027))

(declare-fun e!363924 () Bool)

(assert (=> b!600266 (= tp!187008 e!363924)))

(declare-fun b!600751 () Bool)

(assert (=> b!600751 (= e!363924 tp_is_empty!3409)))

(declare-fun b!600752 () Bool)

(declare-fun tp!187087 () Bool)

(declare-fun tp!187089 () Bool)

(assert (=> b!600752 (= e!363924 (and tp!187087 tp!187089))))

(declare-fun b!600753 () Bool)

(declare-fun tp!187085 () Bool)

(assert (=> b!600753 (= e!363924 tp!187085)))

(declare-fun b!600754 () Bool)

(declare-fun tp!187088 () Bool)

(declare-fun tp!187086 () Bool)

(assert (=> b!600754 (= e!363924 (and tp!187088 tp!187086))))

(assert (= (and b!600266 ((_ is ElementMatch!1527) (regex!1193 (h!11403 rules!3103)))) b!600751))

(assert (= (and b!600266 ((_ is Concat!2744) (regex!1193 (h!11403 rules!3103)))) b!600752))

(assert (= (and b!600266 ((_ is Star!1527) (regex!1193 (h!11403 rules!3103)))) b!600753))

(assert (= (and b!600266 ((_ is Union!1527) (regex!1193 (h!11403 rules!3103)))) b!600754))

(declare-fun b!600759 () Bool)

(declare-fun e!363927 () Bool)

(declare-fun tp!187092 () Bool)

(assert (=> b!600759 (= e!363927 (and tp_is_empty!3409 tp!187092))))

(assert (=> b!600250 (= tp!187009 e!363927)))

(assert (= (and b!600250 ((_ is Cons!6001) (t!79818 input!2705))) b!600759))

(declare-fun b!600760 () Bool)

(declare-fun e!363928 () Bool)

(declare-fun tp!187093 () Bool)

(assert (=> b!600760 (= e!363928 (and tp_is_empty!3409 tp!187093))))

(assert (=> b!600260 (= tp!187001 e!363928)))

(assert (= (and b!600260 ((_ is Cons!6001) (t!79818 suffix!1342))) b!600760))

(declare-fun b!600761 () Bool)

(declare-fun e!363929 () Bool)

(declare-fun tp!187094 () Bool)

(assert (=> b!600761 (= e!363929 (and tp_is_empty!3409 tp!187094))))

(assert (=> b!600274 (= tp!187005 e!363929)))

(assert (= (and b!600274 ((_ is Cons!6001) (originalCharacters!1232 token!491))) b!600761))

(declare-fun b_lambda!23699 () Bool)

(assert (= b_lambda!23693 (or (and b!600268 b_free!17071) (and b!600263 b_free!17075 (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 token!491))))) (and b!600750 b_free!17083 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toChars!1947 (transformation!1193 (rule!1965 token!491))))) b_lambda!23699)))

(declare-fun b_lambda!23701 () Bool)

(assert (= b_lambda!23695 (or (and b!600268 b_free!17069) (and b!600263 b_free!17073 (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 token!491))))) (and b!600750 b_free!17081 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toValue!2088 (transformation!1193 (rule!1965 token!491))))) b_lambda!23701)))

(declare-fun b_lambda!23703 () Bool)

(assert (= b_lambda!23697 (or (and b!600268 b_free!17071) (and b!600263 b_free!17075 (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 token!491))))) (and b!600750 b_free!17083 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toChars!1947 (transformation!1193 (rule!1965 token!491))))) b_lambda!23703)))

(check-sat (not d!211246) (not d!211116) (not d!211136) (not b!600332) b_and!59323 (not b!600346) (not b!600719) (not b!600693) (not b!600697) (not b!600360) (not b_lambda!23691) (not b!600629) b_and!59325 (not b!600644) (not b!600692) (not b!600696) (not b!600623) (not b_next!17099) (not b!600725) (not d!211088) b_and!59329 (not tb!52385) (not d!211264) (not d!211146) (not b!600324) (not d!211240) (not b!600347) (not b!600363) (not d!211268) (not b!600364) (not tb!52347) (not b!600327) b_and!59327 (not d!211262) (not d!211134) (not b_lambda!23689) (not b!600308) (not b!600309) (not d!211128) (not b!600655) (not b!600375) (not d!211126) (not d!211272) (not d!211122) (not b_next!17089) (not d!211102) (not d!211142) (not b!600642) (not b!600716) (not b_lambda!23703) (not b_lambda!23669) (not b!600738) (not tb!52389) (not b!600328) (not d!211106) (not b!600624) (not b!600329) (not b!600748) (not b_next!17097) (not d!211108) (not bm!40486) (not b!600759) (not d!211100) (not b!600625) (not b!600640) (not d!211256) (not b!600753) (not d!211118) (not b!600378) (not d!211114) (not d!211252) (not b!600711) (not b!600627) (not b!600325) (not b!600689) (not b!600359) (not b!600650) (not b!600718) (not d!211138) (not b!600323) (not b!600761) (not b!600370) (not b_next!17087) (not d!211238) (not b_next!17085) b_and!59321 (not b_next!17091) (not b_lambda!23699) (not b!600353) (not b!600604) (not b!600373) tp_is_empty!3409 (not d!211098) (not b!600348) (not b!600628) (not b_lambda!23667) (not b!600630) (not b!600737) (not b!600651) (not tb!52351) (not d!211274) (not d!211132) (not d!211258) (not b!600749) (not b!600710) (not d!211080) (not b!600634) (not b!600739) (not d!211120) (not b!600343) (not b!600724) (not b_lambda!23701) b_and!59319 (not b!600722) (not b!600342) (not b!600654) (not b!600752) (not d!211112) (not d!211242) (not b!600631) (not b!600723) (not b!600717) (not bm!40490) (not d!211254) (not b!600376) (not b!600374) (not tb!52381) (not b!600754) (not b!600760) (not b!600633) (not b!600713) (not b!600302) (not bm!40489) (not d!211266) (not d!211110) (not b!600641) (not b!600365) (not b!600721) (not b!600311) (not b!600688))
(check-sat b_and!59323 b_and!59325 (not b_next!17099) b_and!59329 b_and!59327 (not b_next!17089) (not b_next!17097) (not b_next!17091) b_and!59319 (not b_next!17087) (not b_next!17085) b_and!59321)
(get-model)

(declare-fun d!211424 () Bool)

(declare-fun c!111575 () Bool)

(assert (=> d!211424 (= c!111575 ((_ is Nil!6001) lt!255854))))

(declare-fun e!364074 () (InoxSet C!3976))

(assert (=> d!211424 (= (content!1083 lt!255854) e!364074)))

(declare-fun b!601012 () Bool)

(assert (=> b!601012 (= e!364074 ((as const (Array C!3976 Bool)) false))))

(declare-fun b!601013 () Bool)

(assert (=> b!601013 (= e!364074 ((_ map or) (store ((as const (Array C!3976 Bool)) false) (h!11402 lt!255854) true) (content!1083 (t!79818 lt!255854))))))

(assert (= (and d!211424 c!111575) b!601012))

(assert (= (and d!211424 (not c!111575)) b!601013))

(declare-fun m!865351 () Bool)

(assert (=> b!601013 m!865351))

(declare-fun m!865353 () Bool)

(assert (=> b!601013 m!865353))

(assert (=> d!211242 d!211424))

(declare-fun d!211426 () Bool)

(declare-fun c!111576 () Bool)

(assert (=> d!211426 (= c!111576 ((_ is Nil!6001) input!2705))))

(declare-fun e!364075 () (InoxSet C!3976))

(assert (=> d!211426 (= (content!1083 input!2705) e!364075)))

(declare-fun b!601014 () Bool)

(assert (=> b!601014 (= e!364075 ((as const (Array C!3976 Bool)) false))))

(declare-fun b!601015 () Bool)

(assert (=> b!601015 (= e!364075 ((_ map or) (store ((as const (Array C!3976 Bool)) false) (h!11402 input!2705) true) (content!1083 (t!79818 input!2705))))))

(assert (= (and d!211426 c!111576) b!601014))

(assert (= (and d!211426 (not c!111576)) b!601015))

(declare-fun m!865355 () Bool)

(assert (=> b!601015 m!865355))

(declare-fun m!865357 () Bool)

(assert (=> b!601015 m!865357))

(assert (=> d!211242 d!211426))

(declare-fun d!211428 () Bool)

(declare-fun c!111577 () Bool)

(assert (=> d!211428 (= c!111577 ((_ is Nil!6001) suffix!1342))))

(declare-fun e!364076 () (InoxSet C!3976))

(assert (=> d!211428 (= (content!1083 suffix!1342) e!364076)))

(declare-fun b!601016 () Bool)

(assert (=> b!601016 (= e!364076 ((as const (Array C!3976 Bool)) false))))

(declare-fun b!601017 () Bool)

(assert (=> b!601017 (= e!364076 ((_ map or) (store ((as const (Array C!3976 Bool)) false) (h!11402 suffix!1342) true) (content!1083 (t!79818 suffix!1342))))))

(assert (= (and d!211428 c!111577) b!601016))

(assert (= (and d!211428 (not c!111577)) b!601017))

(declare-fun m!865359 () Bool)

(assert (=> b!601017 m!865359))

(declare-fun m!865361 () Bool)

(assert (=> b!601017 m!865361))

(assert (=> d!211242 d!211428))

(declare-fun d!211430 () Bool)

(declare-fun lt!255925 () Int)

(assert (=> d!211430 (>= lt!255925 0)))

(declare-fun e!364077 () Int)

(assert (=> d!211430 (= lt!255925 e!364077)))

(declare-fun c!111578 () Bool)

(assert (=> d!211430 (= c!111578 ((_ is Nil!6001) lt!255695))))

(assert (=> d!211430 (= (size!4723 lt!255695) lt!255925)))

(declare-fun b!601018 () Bool)

(assert (=> b!601018 (= e!364077 0)))

(declare-fun b!601019 () Bool)

(assert (=> b!601019 (= e!364077 (+ 1 (size!4723 (t!79818 lt!255695))))))

(assert (= (and d!211430 c!111578) b!601018))

(assert (= (and d!211430 (not c!111578)) b!601019))

(declare-fun m!865363 () Bool)

(assert (=> b!601019 m!865363))

(assert (=> b!600365 d!211430))

(assert (=> b!600365 d!211090))

(declare-fun d!211432 () Bool)

(declare-fun e!364080 () Bool)

(assert (=> d!211432 e!364080))

(declare-fun res!259980 () Bool)

(assert (=> d!211432 (=> res!259980 e!364080)))

(declare-fun lt!255927 () Bool)

(assert (=> d!211432 (= res!259980 (not lt!255927))))

(declare-fun e!364081 () Bool)

(assert (=> d!211432 (= lt!255927 e!364081)))

(declare-fun res!259981 () Bool)

(assert (=> d!211432 (=> res!259981 e!364081)))

(assert (=> d!211432 (= res!259981 ((_ is Nil!6001) lt!255717))))

(assert (=> d!211432 (= (isPrefix!821 lt!255717 (++!1681 lt!255717 suffix!1342)) lt!255927)))

(declare-fun b!601021 () Bool)

(declare-fun e!364079 () Bool)

(assert (=> b!601021 (= e!364081 e!364079)))

(declare-fun res!259982 () Bool)

(assert (=> b!601021 (=> (not res!259982) (not e!364079))))

(assert (=> b!601021 (= res!259982 (not ((_ is Nil!6001) (++!1681 lt!255717 suffix!1342))))))

(declare-fun b!601024 () Bool)

(assert (=> b!601024 (= e!364080 (>= (size!4723 (++!1681 lt!255717 suffix!1342)) (size!4723 lt!255717)))))

(declare-fun b!601023 () Bool)

(assert (=> b!601023 (= e!364079 (isPrefix!821 (tail!803 lt!255717) (tail!803 (++!1681 lt!255717 suffix!1342))))))

(declare-fun b!601022 () Bool)

(declare-fun res!259983 () Bool)

(assert (=> b!601022 (=> (not res!259983) (not e!364079))))

(assert (=> b!601022 (= res!259983 (= (head!1274 lt!255717) (head!1274 (++!1681 lt!255717 suffix!1342))))))

(assert (= (and d!211432 (not res!259981)) b!601021))

(assert (= (and b!601021 res!259982) b!601022))

(assert (= (and b!601022 res!259983) b!601023))

(assert (= (and d!211432 (not res!259980)) b!601024))

(assert (=> b!601024 m!864373))

(declare-fun m!865371 () Bool)

(assert (=> b!601024 m!865371))

(assert (=> b!601024 m!864443))

(assert (=> b!601023 m!864605))

(assert (=> b!601023 m!864373))

(declare-fun m!865373 () Bool)

(assert (=> b!601023 m!865373))

(assert (=> b!601023 m!864605))

(assert (=> b!601023 m!865373))

(declare-fun m!865375 () Bool)

(assert (=> b!601023 m!865375))

(assert (=> b!601022 m!864609))

(assert (=> b!601022 m!864373))

(declare-fun m!865377 () Bool)

(assert (=> b!601022 m!865377))

(assert (=> d!211098 d!211432))

(assert (=> d!211098 d!211266))

(declare-fun d!211436 () Bool)

(assert (=> d!211436 (isPrefix!821 lt!255717 (++!1681 lt!255717 suffix!1342))))

(assert (=> d!211436 true))

(declare-fun _$46!981 () Unit!10922)

(assert (=> d!211436 (= (choose!4380 lt!255717 suffix!1342) _$46!981)))

(declare-fun bs!70931 () Bool)

(assert (= bs!70931 d!211436))

(assert (=> bs!70931 m!864373))

(assert (=> bs!70931 m!864373))

(assert (=> bs!70931 m!864551))

(assert (=> d!211098 d!211436))

(assert (=> b!600325 d!211430))

(declare-fun d!211438 () Bool)

(declare-fun lt!255933 () Int)

(assert (=> d!211438 (>= lt!255933 0)))

(declare-fun e!364085 () Int)

(assert (=> d!211438 (= lt!255933 e!364085)))

(declare-fun c!111580 () Bool)

(assert (=> d!211438 (= c!111580 ((_ is Nil!6001) input!2705))))

(assert (=> d!211438 (= (size!4723 input!2705) lt!255933)))

(declare-fun b!601034 () Bool)

(assert (=> b!601034 (= e!364085 0)))

(declare-fun b!601035 () Bool)

(assert (=> b!601035 (= e!364085 (+ 1 (size!4723 (t!79818 input!2705))))))

(assert (= (and d!211438 c!111580) b!601034))

(assert (= (and d!211438 (not c!111580)) b!601035))

(declare-fun m!865399 () Bool)

(assert (=> b!601035 m!865399))

(assert (=> b!600325 d!211438))

(declare-fun b!601237 () Bool)

(declare-fun e!364195 () Bool)

(declare-fun e!364194 () Bool)

(assert (=> b!601237 (= e!364195 e!364194)))

(declare-fun res!260073 () Bool)

(assert (=> b!601237 (=> (not res!260073) (not e!364194))))

(declare-fun lt!255978 () Option!1544)

(assert (=> b!601237 (= res!260073 (matchR!636 (regex!1193 (h!11403 rules!3103)) (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255978))))))))

(declare-fun b!601238 () Bool)

(declare-fun res!260074 () Bool)

(assert (=> b!601238 (=> (not res!260074) (not e!364194))))

(assert (=> b!601238 (= res!260074 (< (size!4723 (_2!3706 (get!2304 lt!255978))) (size!4723 lt!255699)))))

(declare-fun b!601239 () Bool)

(declare-fun e!364197 () Bool)

(declare-datatypes ((tuple2!6886 0))(
  ( (tuple2!6887 (_1!3707 List!6011) (_2!3707 List!6011)) )
))
(declare-fun findLongestMatchInner!192 (Regex!1527 List!6011 Int List!6011 List!6011 Int) tuple2!6886)

(assert (=> b!601239 (= e!364197 (matchR!636 (regex!1193 (h!11403 rules!3103)) (_1!3707 (findLongestMatchInner!192 (regex!1193 (h!11403 rules!3103)) Nil!6001 (size!4723 Nil!6001) lt!255699 lt!255699 (size!4723 lt!255699)))))))

(declare-fun b!601240 () Bool)

(declare-fun res!260071 () Bool)

(assert (=> b!601240 (=> (not res!260071) (not e!364194))))

(assert (=> b!601240 (= res!260071 (= (value!38867 (_1!3706 (get!2304 lt!255978))) (apply!1446 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255978)))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255978)))))))))

(declare-fun d!211440 () Bool)

(assert (=> d!211440 e!364195))

(declare-fun res!260070 () Bool)

(assert (=> d!211440 (=> res!260070 e!364195)))

(assert (=> d!211440 (= res!260070 (isEmpty!4334 lt!255978))))

(declare-fun e!364196 () Option!1544)

(assert (=> d!211440 (= lt!255978 e!364196)))

(declare-fun c!111609 () Bool)

(declare-fun lt!255976 () tuple2!6886)

(assert (=> d!211440 (= c!111609 (isEmpty!4331 (_1!3707 lt!255976)))))

(declare-fun findLongestMatch!171 (Regex!1527 List!6011) tuple2!6886)

(assert (=> d!211440 (= lt!255976 (findLongestMatch!171 (regex!1193 (h!11403 rules!3103)) lt!255699))))

(assert (=> d!211440 (ruleValid!391 thiss!22590 (h!11403 rules!3103))))

(assert (=> d!211440 (= (maxPrefixOneRule!440 thiss!22590 (h!11403 rules!3103) lt!255699) lt!255978)))

(declare-fun b!601241 () Bool)

(declare-fun res!260075 () Bool)

(assert (=> b!601241 (=> (not res!260075) (not e!364194))))

(assert (=> b!601241 (= res!260075 (= (++!1681 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255978)))) (_2!3706 (get!2304 lt!255978))) lt!255699))))

(declare-fun b!601242 () Bool)

(declare-fun size!4724 (BalanceConc!3828) Int)

(assert (=> b!601242 (= e!364196 (Some!1543 (tuple2!6885 (Token!2123 (apply!1446 (transformation!1193 (h!11403 rules!3103)) (seqFromList!1369 (_1!3707 lt!255976))) (h!11403 rules!3103) (size!4724 (seqFromList!1369 (_1!3707 lt!255976))) (_1!3707 lt!255976)) (_2!3707 lt!255976))))))

(declare-fun lt!255979 () Unit!10922)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!176 (Regex!1527 List!6011) Unit!10922)

(assert (=> b!601242 (= lt!255979 (longestMatchIsAcceptedByMatchOrIsEmpty!176 (regex!1193 (h!11403 rules!3103)) lt!255699))))

(declare-fun res!260072 () Bool)

(assert (=> b!601242 (= res!260072 (isEmpty!4331 (_1!3707 (findLongestMatchInner!192 (regex!1193 (h!11403 rules!3103)) Nil!6001 (size!4723 Nil!6001) lt!255699 lt!255699 (size!4723 lt!255699)))))))

(assert (=> b!601242 (=> res!260072 e!364197)))

(assert (=> b!601242 e!364197))

(declare-fun lt!255977 () Unit!10922)

(assert (=> b!601242 (= lt!255977 lt!255979)))

(declare-fun lt!255975 () Unit!10922)

(assert (=> b!601242 (= lt!255975 (lemmaSemiInverse!232 (transformation!1193 (h!11403 rules!3103)) (seqFromList!1369 (_1!3707 lt!255976))))))

(declare-fun b!601243 () Bool)

(assert (=> b!601243 (= e!364194 (= (size!4722 (_1!3706 (get!2304 lt!255978))) (size!4723 (originalCharacters!1232 (_1!3706 (get!2304 lt!255978))))))))

(declare-fun b!601244 () Bool)

(declare-fun res!260069 () Bool)

(assert (=> b!601244 (=> (not res!260069) (not e!364194))))

(assert (=> b!601244 (= res!260069 (= (rule!1965 (_1!3706 (get!2304 lt!255978))) (h!11403 rules!3103)))))

(declare-fun b!601245 () Bool)

(assert (=> b!601245 (= e!364196 None!1543)))

(assert (= (and d!211440 c!111609) b!601245))

(assert (= (and d!211440 (not c!111609)) b!601242))

(assert (= (and b!601242 (not res!260072)) b!601239))

(assert (= (and d!211440 (not res!260070)) b!601237))

(assert (= (and b!601237 res!260073) b!601241))

(assert (= (and b!601241 res!260075) b!601238))

(assert (= (and b!601238 res!260074) b!601244))

(assert (= (and b!601244 res!260069) b!601240))

(assert (= (and b!601240 res!260071) b!601243))

(declare-fun m!865645 () Bool)

(assert (=> b!601237 m!865645))

(declare-fun m!865647 () Bool)

(assert (=> b!601237 m!865647))

(assert (=> b!601237 m!865647))

(declare-fun m!865649 () Bool)

(assert (=> b!601237 m!865649))

(assert (=> b!601237 m!865649))

(declare-fun m!865651 () Bool)

(assert (=> b!601237 m!865651))

(declare-fun m!865653 () Bool)

(assert (=> b!601239 m!865653))

(assert (=> b!601239 m!864615))

(assert (=> b!601239 m!865653))

(assert (=> b!601239 m!864615))

(declare-fun m!865655 () Bool)

(assert (=> b!601239 m!865655))

(declare-fun m!865657 () Bool)

(assert (=> b!601239 m!865657))

(assert (=> b!601241 m!865645))

(assert (=> b!601241 m!865647))

(assert (=> b!601241 m!865647))

(assert (=> b!601241 m!865649))

(assert (=> b!601241 m!865649))

(declare-fun m!865659 () Bool)

(assert (=> b!601241 m!865659))

(assert (=> b!601240 m!865645))

(declare-fun m!865661 () Bool)

(assert (=> b!601240 m!865661))

(assert (=> b!601240 m!865661))

(declare-fun m!865663 () Bool)

(assert (=> b!601240 m!865663))

(assert (=> b!601244 m!865645))

(declare-fun m!865665 () Bool)

(assert (=> d!211440 m!865665))

(declare-fun m!865667 () Bool)

(assert (=> d!211440 m!865667))

(declare-fun m!865669 () Bool)

(assert (=> d!211440 m!865669))

(declare-fun m!865671 () Bool)

(assert (=> d!211440 m!865671))

(assert (=> b!601243 m!865645))

(declare-fun m!865673 () Bool)

(assert (=> b!601243 m!865673))

(declare-fun m!865675 () Bool)

(assert (=> b!601242 m!865675))

(assert (=> b!601242 m!864615))

(declare-fun m!865677 () Bool)

(assert (=> b!601242 m!865677))

(declare-fun m!865679 () Bool)

(assert (=> b!601242 m!865679))

(assert (=> b!601242 m!865677))

(assert (=> b!601242 m!865653))

(assert (=> b!601242 m!865677))

(declare-fun m!865681 () Bool)

(assert (=> b!601242 m!865681))

(declare-fun m!865683 () Bool)

(assert (=> b!601242 m!865683))

(assert (=> b!601242 m!865677))

(declare-fun m!865685 () Bool)

(assert (=> b!601242 m!865685))

(assert (=> b!601242 m!865653))

(assert (=> b!601242 m!864615))

(assert (=> b!601242 m!865655))

(assert (=> b!601238 m!865645))

(declare-fun m!865687 () Bool)

(assert (=> b!601238 m!865687))

(assert (=> b!601238 m!864615))

(assert (=> bm!40486 d!211440))

(declare-fun d!211556 () Bool)

(declare-fun lt!255980 () Int)

(assert (=> d!211556 (>= lt!255980 0)))

(declare-fun e!364198 () Int)

(assert (=> d!211556 (= lt!255980 e!364198)))

(declare-fun c!111610 () Bool)

(assert (=> d!211556 (= c!111610 ((_ is Nil!6001) (_2!3706 (get!2304 lt!255849))))))

(assert (=> d!211556 (= (size!4723 (_2!3706 (get!2304 lt!255849))) lt!255980)))

(declare-fun b!601246 () Bool)

(assert (=> b!601246 (= e!364198 0)))

(declare-fun b!601247 () Bool)

(assert (=> b!601247 (= e!364198 (+ 1 (size!4723 (t!79818 (_2!3706 (get!2304 lt!255849))))))))

(assert (= (and d!211556 c!111610) b!601246))

(assert (= (and d!211556 (not c!111610)) b!601247))

(declare-fun m!865689 () Bool)

(assert (=> b!601247 m!865689))

(assert (=> b!600627 d!211556))

(declare-fun d!211558 () Bool)

(assert (=> d!211558 (= (get!2304 lt!255849) (v!16436 lt!255849))))

(assert (=> b!600627 d!211558))

(declare-fun d!211560 () Bool)

(declare-fun lt!255981 () Int)

(assert (=> d!211560 (>= lt!255981 0)))

(declare-fun e!364199 () Int)

(assert (=> d!211560 (= lt!255981 e!364199)))

(declare-fun c!111611 () Bool)

(assert (=> d!211560 (= c!111611 ((_ is Nil!6001) lt!255699))))

(assert (=> d!211560 (= (size!4723 lt!255699) lt!255981)))

(declare-fun b!601248 () Bool)

(assert (=> b!601248 (= e!364199 0)))

(declare-fun b!601249 () Bool)

(assert (=> b!601249 (= e!364199 (+ 1 (size!4723 (t!79818 lt!255699))))))

(assert (= (and d!211560 c!111611) b!601248))

(assert (= (and d!211560 (not c!111611)) b!601249))

(declare-fun m!865691 () Bool)

(assert (=> b!601249 m!865691))

(assert (=> b!600627 d!211560))

(assert (=> b!600348 d!211438))

(declare-fun d!211562 () Bool)

(declare-fun charsToBigInt!1 (List!6010) Int)

(assert (=> d!211562 (= (inv!17 (value!38867 token!491)) (= (charsToBigInt!1 (text!8967 (value!38867 token!491))) (value!38859 (value!38867 token!491))))))

(declare-fun bs!70948 () Bool)

(assert (= bs!70948 d!211562))

(declare-fun m!865693 () Bool)

(assert (=> bs!70948 m!865693))

(assert (=> b!600713 d!211562))

(declare-fun d!211564 () Bool)

(declare-fun lt!255982 () Int)

(assert (=> d!211564 (>= lt!255982 0)))

(declare-fun e!364200 () Int)

(assert (=> d!211564 (= lt!255982 e!364200)))

(declare-fun c!111612 () Bool)

(assert (=> d!211564 (= c!111612 ((_ is Nil!6001) (t!79818 (originalCharacters!1232 (_1!3706 (v!16436 lt!255719))))))))

(assert (=> d!211564 (= (size!4723 (t!79818 (originalCharacters!1232 (_1!3706 (v!16436 lt!255719))))) lt!255982)))

(declare-fun b!601250 () Bool)

(assert (=> b!601250 (= e!364200 0)))

(declare-fun b!601251 () Bool)

(assert (=> b!601251 (= e!364200 (+ 1 (size!4723 (t!79818 (t!79818 (originalCharacters!1232 (_1!3706 (v!16436 lt!255719))))))))))

(assert (= (and d!211564 c!111612) b!601250))

(assert (= (and d!211564 (not c!111612)) b!601251))

(declare-fun m!865695 () Bool)

(assert (=> b!601251 m!865695))

(assert (=> b!600308 d!211564))

(declare-fun d!211566 () Bool)

(declare-fun res!260080 () Bool)

(declare-fun e!364205 () Bool)

(assert (=> d!211566 (=> res!260080 e!364205)))

(assert (=> d!211566 (= res!260080 ((_ is Nil!6002) rules!3103))))

(assert (=> d!211566 (= (noDuplicateTag!439 thiss!22590 rules!3103 Nil!6004) e!364205)))

(declare-fun b!601256 () Bool)

(declare-fun e!364206 () Bool)

(assert (=> b!601256 (= e!364205 e!364206)))

(declare-fun res!260081 () Bool)

(assert (=> b!601256 (=> (not res!260081) (not e!364206))))

(declare-fun contains!1407 (List!6014 String!7829) Bool)

(assert (=> b!601256 (= res!260081 (not (contains!1407 Nil!6004 (tag!1455 (h!11403 rules!3103)))))))

(declare-fun b!601257 () Bool)

(assert (=> b!601257 (= e!364206 (noDuplicateTag!439 thiss!22590 (t!79819 rules!3103) (Cons!6004 (tag!1455 (h!11403 rules!3103)) Nil!6004)))))

(assert (= (and d!211566 (not res!260080)) b!601256))

(assert (= (and b!601256 res!260081) b!601257))

(declare-fun m!865697 () Bool)

(assert (=> b!601256 m!865697))

(declare-fun m!865699 () Bool)

(assert (=> b!601257 m!865699))

(assert (=> b!600716 d!211566))

(declare-fun d!211568 () Bool)

(declare-fun e!364208 () Bool)

(assert (=> d!211568 e!364208))

(declare-fun res!260082 () Bool)

(assert (=> d!211568 (=> res!260082 e!364208)))

(declare-fun lt!255983 () Bool)

(assert (=> d!211568 (= res!260082 (not lt!255983))))

(declare-fun e!364209 () Bool)

(assert (=> d!211568 (= lt!255983 e!364209)))

(declare-fun res!260083 () Bool)

(assert (=> d!211568 (=> res!260083 e!364209)))

(assert (=> d!211568 (= res!260083 ((_ is Nil!6001) (tail!803 input!2705)))))

(assert (=> d!211568 (= (isPrefix!821 (tail!803 input!2705) (tail!803 lt!255699)) lt!255983)))

(declare-fun b!601258 () Bool)

(declare-fun e!364207 () Bool)

(assert (=> b!601258 (= e!364209 e!364207)))

(declare-fun res!260084 () Bool)

(assert (=> b!601258 (=> (not res!260084) (not e!364207))))

(assert (=> b!601258 (= res!260084 (not ((_ is Nil!6001) (tail!803 lt!255699))))))

(declare-fun b!601261 () Bool)

(assert (=> b!601261 (= e!364208 (>= (size!4723 (tail!803 lt!255699)) (size!4723 (tail!803 input!2705))))))

(declare-fun b!601260 () Bool)

(assert (=> b!601260 (= e!364207 (isPrefix!821 (tail!803 (tail!803 input!2705)) (tail!803 (tail!803 lt!255699))))))

(declare-fun b!601259 () Bool)

(declare-fun res!260085 () Bool)

(assert (=> b!601259 (=> (not res!260085) (not e!364207))))

(assert (=> b!601259 (= res!260085 (= (head!1274 (tail!803 input!2705)) (head!1274 (tail!803 lt!255699))))))

(assert (= (and d!211568 (not res!260083)) b!601258))

(assert (= (and b!601258 res!260084) b!601259))

(assert (= (and b!601259 res!260085) b!601260))

(assert (= (and d!211568 (not res!260082)) b!601261))

(assert (=> b!601261 m!864617))

(declare-fun m!865701 () Bool)

(assert (=> b!601261 m!865701))

(assert (=> b!601261 m!864529))

(declare-fun m!865703 () Bool)

(assert (=> b!601261 m!865703))

(assert (=> b!601260 m!864529))

(declare-fun m!865705 () Bool)

(assert (=> b!601260 m!865705))

(assert (=> b!601260 m!864617))

(declare-fun m!865707 () Bool)

(assert (=> b!601260 m!865707))

(assert (=> b!601260 m!865705))

(assert (=> b!601260 m!865707))

(declare-fun m!865709 () Bool)

(assert (=> b!601260 m!865709))

(assert (=> b!601259 m!864529))

(declare-fun m!865711 () Bool)

(assert (=> b!601259 m!865711))

(assert (=> b!601259 m!864617))

(declare-fun m!865713 () Bool)

(assert (=> b!601259 m!865713))

(assert (=> b!600374 d!211568))

(declare-fun d!211570 () Bool)

(assert (=> d!211570 (= (tail!803 input!2705) (t!79818 input!2705))))

(assert (=> b!600374 d!211570))

(declare-fun d!211572 () Bool)

(assert (=> d!211572 (= (tail!803 lt!255699) (t!79818 lt!255699))))

(assert (=> b!600374 d!211572))

(declare-fun d!211574 () Bool)

(declare-fun isBalanced!528 (Conc!1910) Bool)

(assert (=> d!211574 (= (inv!7617 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491))) (isBalanced!528 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491)))))))

(declare-fun bs!70949 () Bool)

(assert (= bs!70949 d!211574))

(declare-fun m!865715 () Bool)

(assert (=> bs!70949 m!865715))

(assert (=> tb!52385 d!211574))

(declare-fun d!211576 () Bool)

(assert (=> d!211576 (= (isEmpty!4334 lt!255849) (not ((_ is Some!1543) lt!255849)))))

(assert (=> d!211240 d!211576))

(declare-fun d!211578 () Bool)

(declare-fun e!364211 () Bool)

(assert (=> d!211578 e!364211))

(declare-fun res!260086 () Bool)

(assert (=> d!211578 (=> res!260086 e!364211)))

(declare-fun lt!255984 () Bool)

(assert (=> d!211578 (= res!260086 (not lt!255984))))

(declare-fun e!364212 () Bool)

(assert (=> d!211578 (= lt!255984 e!364212)))

(declare-fun res!260087 () Bool)

(assert (=> d!211578 (=> res!260087 e!364212)))

(assert (=> d!211578 (= res!260087 ((_ is Nil!6001) lt!255699))))

(assert (=> d!211578 (= (isPrefix!821 lt!255699 lt!255699) lt!255984)))

(declare-fun b!601262 () Bool)

(declare-fun e!364210 () Bool)

(assert (=> b!601262 (= e!364212 e!364210)))

(declare-fun res!260088 () Bool)

(assert (=> b!601262 (=> (not res!260088) (not e!364210))))

(assert (=> b!601262 (= res!260088 (not ((_ is Nil!6001) lt!255699)))))

(declare-fun b!601265 () Bool)

(assert (=> b!601265 (= e!364211 (>= (size!4723 lt!255699) (size!4723 lt!255699)))))

(declare-fun b!601264 () Bool)

(assert (=> b!601264 (= e!364210 (isPrefix!821 (tail!803 lt!255699) (tail!803 lt!255699)))))

(declare-fun b!601263 () Bool)

(declare-fun res!260089 () Bool)

(assert (=> b!601263 (=> (not res!260089) (not e!364210))))

(assert (=> b!601263 (= res!260089 (= (head!1274 lt!255699) (head!1274 lt!255699)))))

(assert (= (and d!211578 (not res!260087)) b!601262))

(assert (= (and b!601262 res!260088) b!601263))

(assert (= (and b!601263 res!260089) b!601264))

(assert (= (and d!211578 (not res!260086)) b!601265))

(assert (=> b!601265 m!864615))

(assert (=> b!601265 m!864615))

(assert (=> b!601264 m!864617))

(assert (=> b!601264 m!864617))

(assert (=> b!601264 m!864617))

(assert (=> b!601264 m!864617))

(declare-fun m!865717 () Bool)

(assert (=> b!601264 m!865717))

(assert (=> b!601263 m!864621))

(assert (=> b!601263 m!864621))

(assert (=> d!211240 d!211578))

(declare-fun d!211580 () Bool)

(assert (=> d!211580 (isPrefix!821 lt!255699 lt!255699)))

(declare-fun lt!255985 () Unit!10922)

(assert (=> d!211580 (= lt!255985 (choose!4382 lt!255699 lt!255699))))

(assert (=> d!211580 (= (lemmaIsPrefixRefl!557 lt!255699 lt!255699) lt!255985)))

(declare-fun bs!70950 () Bool)

(assert (= bs!70950 d!211580))

(assert (=> bs!70950 m!864917))

(declare-fun m!865719 () Bool)

(assert (=> bs!70950 m!865719))

(assert (=> d!211240 d!211580))

(declare-fun d!211582 () Bool)

(assert (=> d!211582 true))

(declare-fun lt!255988 () Bool)

(declare-fun lambda!16055 () Int)

(declare-fun forall!1558 (List!6012 Int) Bool)

(assert (=> d!211582 (= lt!255988 (forall!1558 rules!3103 lambda!16055))))

(declare-fun e!364218 () Bool)

(assert (=> d!211582 (= lt!255988 e!364218)))

(declare-fun res!260095 () Bool)

(assert (=> d!211582 (=> res!260095 e!364218)))

(assert (=> d!211582 (= res!260095 (not ((_ is Cons!6002) rules!3103)))))

(assert (=> d!211582 (= (rulesValidInductive!444 thiss!22590 rules!3103) lt!255988)))

(declare-fun b!601270 () Bool)

(declare-fun e!364217 () Bool)

(assert (=> b!601270 (= e!364218 e!364217)))

(declare-fun res!260094 () Bool)

(assert (=> b!601270 (=> (not res!260094) (not e!364217))))

(assert (=> b!601270 (= res!260094 (ruleValid!391 thiss!22590 (h!11403 rules!3103)))))

(declare-fun b!601271 () Bool)

(assert (=> b!601271 (= e!364217 (rulesValidInductive!444 thiss!22590 (t!79819 rules!3103)))))

(assert (= (and d!211582 (not res!260095)) b!601270))

(assert (= (and b!601270 res!260094) b!601271))

(declare-fun m!865721 () Bool)

(assert (=> d!211582 m!865721))

(assert (=> b!601270 m!865671))

(declare-fun m!865723 () Bool)

(assert (=> b!601271 m!865723))

(assert (=> d!211240 d!211582))

(declare-fun b!601274 () Bool)

(declare-fun e!364219 () Bool)

(declare-fun e!364221 () Bool)

(assert (=> b!601274 (= e!364219 e!364221)))

(declare-fun c!111613 () Bool)

(assert (=> b!601274 (= c!111613 ((_ is IntegerValue!3652) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 token!491))) (seqFromList!1369 lt!255717))))))

(declare-fun d!211584 () Bool)

(declare-fun c!111614 () Bool)

(assert (=> d!211584 (= c!111614 ((_ is IntegerValue!3651) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 token!491))) (seqFromList!1369 lt!255717))))))

(assert (=> d!211584 (= (inv!21 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 token!491))) (seqFromList!1369 lt!255717))) e!364219)))

(declare-fun b!601275 () Bool)

(assert (=> b!601275 (= e!364219 (inv!16 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 token!491))) (seqFromList!1369 lt!255717))))))

(declare-fun b!601276 () Bool)

(declare-fun e!364220 () Bool)

(assert (=> b!601276 (= e!364220 (inv!15 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 token!491))) (seqFromList!1369 lt!255717))))))

(declare-fun b!601277 () Bool)

(declare-fun res!260096 () Bool)

(assert (=> b!601277 (=> res!260096 e!364220)))

(assert (=> b!601277 (= res!260096 (not ((_ is IntegerValue!3653) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 token!491))) (seqFromList!1369 lt!255717)))))))

(assert (=> b!601277 (= e!364221 e!364220)))

(declare-fun b!601278 () Bool)

(assert (=> b!601278 (= e!364221 (inv!17 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 token!491))) (seqFromList!1369 lt!255717))))))

(assert (= (and d!211584 c!111614) b!601275))

(assert (= (and d!211584 (not c!111614)) b!601274))

(assert (= (and b!601274 c!111613) b!601278))

(assert (= (and b!601274 (not c!111613)) b!601277))

(assert (= (and b!601277 (not res!260096)) b!601276))

(declare-fun m!865725 () Bool)

(assert (=> b!601275 m!865725))

(declare-fun m!865727 () Bool)

(assert (=> b!601276 m!865727))

(declare-fun m!865729 () Bool)

(assert (=> b!601278 m!865729))

(assert (=> tb!52389 d!211584))

(declare-fun b!601279 () Bool)

(declare-fun e!364223 () List!6011)

(assert (=> b!601279 (= e!364223 suffix!1342)))

(declare-fun e!364222 () Bool)

(declare-fun lt!255989 () List!6011)

(declare-fun b!601282 () Bool)

(assert (=> b!601282 (= e!364222 (or (not (= suffix!1342 Nil!6001)) (= lt!255989 (t!79818 input!2705))))))

(declare-fun b!601280 () Bool)

(assert (=> b!601280 (= e!364223 (Cons!6001 (h!11402 (t!79818 input!2705)) (++!1681 (t!79818 (t!79818 input!2705)) suffix!1342)))))

(declare-fun d!211586 () Bool)

(assert (=> d!211586 e!364222))

(declare-fun res!260097 () Bool)

(assert (=> d!211586 (=> (not res!260097) (not e!364222))))

(assert (=> d!211586 (= res!260097 (= (content!1083 lt!255989) ((_ map or) (content!1083 (t!79818 input!2705)) (content!1083 suffix!1342))))))

(assert (=> d!211586 (= lt!255989 e!364223)))

(declare-fun c!111615 () Bool)

(assert (=> d!211586 (= c!111615 ((_ is Nil!6001) (t!79818 input!2705)))))

(assert (=> d!211586 (= (++!1681 (t!79818 input!2705) suffix!1342) lt!255989)))

(declare-fun b!601281 () Bool)

(declare-fun res!260098 () Bool)

(assert (=> b!601281 (=> (not res!260098) (not e!364222))))

(assert (=> b!601281 (= res!260098 (= (size!4723 lt!255989) (+ (size!4723 (t!79818 input!2705)) (size!4723 suffix!1342))))))

(assert (= (and d!211586 c!111615) b!601279))

(assert (= (and d!211586 (not c!111615)) b!601280))

(assert (= (and d!211586 res!260097) b!601281))

(assert (= (and b!601281 res!260098) b!601282))

(declare-fun m!865731 () Bool)

(assert (=> b!601280 m!865731))

(declare-fun m!865733 () Bool)

(assert (=> d!211586 m!865733))

(assert (=> d!211586 m!865357))

(assert (=> d!211586 m!864933))

(declare-fun m!865735 () Bool)

(assert (=> b!601281 m!865735))

(assert (=> b!601281 m!865399))

(assert (=> b!601281 m!864937))

(assert (=> b!600633 d!211586))

(declare-fun b!601283 () Bool)

(declare-fun e!364225 () List!6011)

(assert (=> b!601283 (= e!364225 lt!255770)))

(declare-fun lt!255990 () List!6011)

(declare-fun e!364224 () Bool)

(declare-fun b!601286 () Bool)

(assert (=> b!601286 (= e!364224 (or (not (= lt!255770 Nil!6001)) (= lt!255990 lt!255721)))))

(declare-fun b!601284 () Bool)

(assert (=> b!601284 (= e!364225 (Cons!6001 (h!11402 lt!255721) (++!1681 (t!79818 lt!255721) lt!255770)))))

(declare-fun d!211588 () Bool)

(assert (=> d!211588 e!364224))

(declare-fun res!260099 () Bool)

(assert (=> d!211588 (=> (not res!260099) (not e!364224))))

(assert (=> d!211588 (= res!260099 (= (content!1083 lt!255990) ((_ map or) (content!1083 lt!255721) (content!1083 lt!255770))))))

(assert (=> d!211588 (= lt!255990 e!364225)))

(declare-fun c!111616 () Bool)

(assert (=> d!211588 (= c!111616 ((_ is Nil!6001) lt!255721))))

(assert (=> d!211588 (= (++!1681 lt!255721 lt!255770) lt!255990)))

(declare-fun b!601285 () Bool)

(declare-fun res!260100 () Bool)

(assert (=> b!601285 (=> (not res!260100) (not e!364224))))

(assert (=> b!601285 (= res!260100 (= (size!4723 lt!255990) (+ (size!4723 lt!255721) (size!4723 lt!255770))))))

(assert (= (and d!211588 c!111616) b!601283))

(assert (= (and d!211588 (not c!111616)) b!601284))

(assert (= (and d!211588 res!260099) b!601285))

(assert (= (and b!601285 res!260100) b!601286))

(declare-fun m!865737 () Bool)

(assert (=> b!601284 m!865737))

(declare-fun m!865739 () Bool)

(assert (=> d!211588 m!865739))

(assert (=> d!211588 m!864563))

(declare-fun m!865741 () Bool)

(assert (=> d!211588 m!865741))

(declare-fun m!865743 () Bool)

(assert (=> b!601285 m!865743))

(assert (=> b!601285 m!864449))

(declare-fun m!865745 () Bool)

(assert (=> b!601285 m!865745))

(assert (=> d!211126 d!211588))

(assert (=> d!211126 d!211438))

(assert (=> d!211126 d!211140))

(declare-fun b!601287 () Bool)

(declare-fun e!364227 () List!6011)

(assert (=> b!601287 (= e!364227 (_2!3706 (get!2304 lt!255849)))))

(declare-fun b!601290 () Bool)

(declare-fun e!364226 () Bool)

(declare-fun lt!255991 () List!6011)

(assert (=> b!601290 (= e!364226 (or (not (= (_2!3706 (get!2304 lt!255849)) Nil!6001)) (= lt!255991 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849)))))))))

(declare-fun b!601288 () Bool)

(assert (=> b!601288 (= e!364227 (Cons!6001 (h!11402 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))) (++!1681 (t!79818 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))) (_2!3706 (get!2304 lt!255849)))))))

(declare-fun d!211590 () Bool)

(assert (=> d!211590 e!364226))

(declare-fun res!260101 () Bool)

(assert (=> d!211590 (=> (not res!260101) (not e!364226))))

(assert (=> d!211590 (= res!260101 (= (content!1083 lt!255991) ((_ map or) (content!1083 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))) (content!1083 (_2!3706 (get!2304 lt!255849))))))))

(assert (=> d!211590 (= lt!255991 e!364227)))

(declare-fun c!111617 () Bool)

(assert (=> d!211590 (= c!111617 ((_ is Nil!6001) (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))))))

(assert (=> d!211590 (= (++!1681 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849)))) (_2!3706 (get!2304 lt!255849))) lt!255991)))

(declare-fun b!601289 () Bool)

(declare-fun res!260102 () Bool)

(assert (=> b!601289 (=> (not res!260102) (not e!364226))))

(assert (=> b!601289 (= res!260102 (= (size!4723 lt!255991) (+ (size!4723 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))) (size!4723 (_2!3706 (get!2304 lt!255849))))))))

(assert (= (and d!211590 c!111617) b!601287))

(assert (= (and d!211590 (not c!111617)) b!601288))

(assert (= (and d!211590 res!260101) b!601289))

(assert (= (and b!601289 res!260102) b!601290))

(declare-fun m!865747 () Bool)

(assert (=> b!601288 m!865747))

(declare-fun m!865749 () Bool)

(assert (=> d!211590 m!865749))

(assert (=> d!211590 m!864907))

(declare-fun m!865751 () Bool)

(assert (=> d!211590 m!865751))

(declare-fun m!865753 () Bool)

(assert (=> d!211590 m!865753))

(declare-fun m!865755 () Bool)

(assert (=> b!601289 m!865755))

(assert (=> b!601289 m!864907))

(declare-fun m!865757 () Bool)

(assert (=> b!601289 m!865757))

(assert (=> b!601289 m!864903))

(assert (=> b!600631 d!211590))

(declare-fun d!211592 () Bool)

(assert (=> d!211592 (= (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849)))) (list!2518 (c!111436 (charsOf!822 (_1!3706 (get!2304 lt!255849))))))))

(declare-fun bs!70951 () Bool)

(assert (= bs!70951 d!211592))

(declare-fun m!865759 () Bool)

(assert (=> bs!70951 m!865759))

(assert (=> b!600631 d!211592))

(declare-fun d!211594 () Bool)

(declare-fun lt!255992 () BalanceConc!3828)

(assert (=> d!211594 (= (list!2516 lt!255992) (originalCharacters!1232 (_1!3706 (get!2304 lt!255849))))))

(assert (=> d!211594 (= lt!255992 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849))))) (value!38867 (_1!3706 (get!2304 lt!255849)))))))

(assert (=> d!211594 (= (charsOf!822 (_1!3706 (get!2304 lt!255849))) lt!255992)))

(declare-fun b_lambda!23729 () Bool)

(assert (=> (not b_lambda!23729) (not d!211594)))

(declare-fun t!79926 () Bool)

(declare-fun tb!52445 () Bool)

(assert (=> (and b!600268 (= (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))) t!79926) tb!52445))

(declare-fun b!601291 () Bool)

(declare-fun e!364228 () Bool)

(declare-fun tp!187174 () Bool)

(assert (=> b!601291 (= e!364228 (and (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849))))) (value!38867 (_1!3706 (get!2304 lt!255849)))))) tp!187174))))

(declare-fun result!58994 () Bool)

(assert (=> tb!52445 (= result!58994 (and (inv!7617 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849))))) (value!38867 (_1!3706 (get!2304 lt!255849))))) e!364228))))

(assert (= tb!52445 b!601291))

(declare-fun m!865761 () Bool)

(assert (=> b!601291 m!865761))

(declare-fun m!865763 () Bool)

(assert (=> tb!52445 m!865763))

(assert (=> d!211594 t!79926))

(declare-fun b_and!59375 () Bool)

(assert (= b_and!59323 (and (=> t!79926 result!58994) b_and!59375)))

(declare-fun tb!52447 () Bool)

(declare-fun t!79928 () Bool)

(assert (=> (and b!600263 (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))) t!79928) tb!52447))

(declare-fun result!58996 () Bool)

(assert (= result!58996 result!58994))

(assert (=> d!211594 t!79928))

(declare-fun b_and!59377 () Bool)

(assert (= b_and!59325 (and (=> t!79928 result!58996) b_and!59377)))

(declare-fun tb!52449 () Bool)

(declare-fun t!79930 () Bool)

(assert (=> (and b!600750 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))) t!79930) tb!52449))

(declare-fun result!58998 () Bool)

(assert (= result!58998 result!58994))

(assert (=> d!211594 t!79930))

(declare-fun b_and!59379 () Bool)

(assert (= b_and!59329 (and (=> t!79930 result!58998) b_and!59379)))

(declare-fun m!865765 () Bool)

(assert (=> d!211594 m!865765))

(declare-fun m!865767 () Bool)

(assert (=> d!211594 m!865767))

(assert (=> b!600631 d!211594))

(assert (=> b!600631 d!211558))

(declare-fun b!601292 () Bool)

(declare-fun e!364230 () Bool)

(declare-fun e!364229 () Bool)

(assert (=> b!601292 (= e!364230 e!364229)))

(declare-fun res!260107 () Bool)

(assert (=> b!601292 (=> (not res!260107) (not e!364229))))

(declare-fun lt!255996 () Option!1544)

(assert (=> b!601292 (= res!260107 (matchR!636 (regex!1193 (h!11403 rules!3103)) (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255996))))))))

(declare-fun b!601293 () Bool)

(declare-fun res!260108 () Bool)

(assert (=> b!601293 (=> (not res!260108) (not e!364229))))

(assert (=> b!601293 (= res!260108 (< (size!4723 (_2!3706 (get!2304 lt!255996))) (size!4723 input!2705)))))

(declare-fun b!601294 () Bool)

(declare-fun e!364232 () Bool)

(assert (=> b!601294 (= e!364232 (matchR!636 (regex!1193 (h!11403 rules!3103)) (_1!3707 (findLongestMatchInner!192 (regex!1193 (h!11403 rules!3103)) Nil!6001 (size!4723 Nil!6001) input!2705 input!2705 (size!4723 input!2705)))))))

(declare-fun b!601295 () Bool)

(declare-fun res!260105 () Bool)

(assert (=> b!601295 (=> (not res!260105) (not e!364229))))

(assert (=> b!601295 (= res!260105 (= (value!38867 (_1!3706 (get!2304 lt!255996))) (apply!1446 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255996)))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255996)))))))))

(declare-fun d!211596 () Bool)

(assert (=> d!211596 e!364230))

(declare-fun res!260104 () Bool)

(assert (=> d!211596 (=> res!260104 e!364230)))

(assert (=> d!211596 (= res!260104 (isEmpty!4334 lt!255996))))

(declare-fun e!364231 () Option!1544)

(assert (=> d!211596 (= lt!255996 e!364231)))

(declare-fun c!111618 () Bool)

(declare-fun lt!255994 () tuple2!6886)

(assert (=> d!211596 (= c!111618 (isEmpty!4331 (_1!3707 lt!255994)))))

(assert (=> d!211596 (= lt!255994 (findLongestMatch!171 (regex!1193 (h!11403 rules!3103)) input!2705))))

(assert (=> d!211596 (ruleValid!391 thiss!22590 (h!11403 rules!3103))))

(assert (=> d!211596 (= (maxPrefixOneRule!440 thiss!22590 (h!11403 rules!3103) input!2705) lt!255996)))

(declare-fun b!601296 () Bool)

(declare-fun res!260109 () Bool)

(assert (=> b!601296 (=> (not res!260109) (not e!364229))))

(assert (=> b!601296 (= res!260109 (= (++!1681 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255996)))) (_2!3706 (get!2304 lt!255996))) input!2705))))

(declare-fun b!601297 () Bool)

(assert (=> b!601297 (= e!364231 (Some!1543 (tuple2!6885 (Token!2123 (apply!1446 (transformation!1193 (h!11403 rules!3103)) (seqFromList!1369 (_1!3707 lt!255994))) (h!11403 rules!3103) (size!4724 (seqFromList!1369 (_1!3707 lt!255994))) (_1!3707 lt!255994)) (_2!3707 lt!255994))))))

(declare-fun lt!255997 () Unit!10922)

(assert (=> b!601297 (= lt!255997 (longestMatchIsAcceptedByMatchOrIsEmpty!176 (regex!1193 (h!11403 rules!3103)) input!2705))))

(declare-fun res!260106 () Bool)

(assert (=> b!601297 (= res!260106 (isEmpty!4331 (_1!3707 (findLongestMatchInner!192 (regex!1193 (h!11403 rules!3103)) Nil!6001 (size!4723 Nil!6001) input!2705 input!2705 (size!4723 input!2705)))))))

(assert (=> b!601297 (=> res!260106 e!364232)))

(assert (=> b!601297 e!364232))

(declare-fun lt!255995 () Unit!10922)

(assert (=> b!601297 (= lt!255995 lt!255997)))

(declare-fun lt!255993 () Unit!10922)

(assert (=> b!601297 (= lt!255993 (lemmaSemiInverse!232 (transformation!1193 (h!11403 rules!3103)) (seqFromList!1369 (_1!3707 lt!255994))))))

(declare-fun b!601298 () Bool)

(assert (=> b!601298 (= e!364229 (= (size!4722 (_1!3706 (get!2304 lt!255996))) (size!4723 (originalCharacters!1232 (_1!3706 (get!2304 lt!255996))))))))

(declare-fun b!601299 () Bool)

(declare-fun res!260103 () Bool)

(assert (=> b!601299 (=> (not res!260103) (not e!364229))))

(assert (=> b!601299 (= res!260103 (= (rule!1965 (_1!3706 (get!2304 lt!255996))) (h!11403 rules!3103)))))

(declare-fun b!601300 () Bool)

(assert (=> b!601300 (= e!364231 None!1543)))

(assert (= (and d!211596 c!111618) b!601300))

(assert (= (and d!211596 (not c!111618)) b!601297))

(assert (= (and b!601297 (not res!260106)) b!601294))

(assert (= (and d!211596 (not res!260104)) b!601292))

(assert (= (and b!601292 res!260107) b!601296))

(assert (= (and b!601296 res!260109) b!601293))

(assert (= (and b!601293 res!260108) b!601299))

(assert (= (and b!601299 res!260103) b!601295))

(assert (= (and b!601295 res!260105) b!601298))

(declare-fun m!865769 () Bool)

(assert (=> b!601292 m!865769))

(declare-fun m!865771 () Bool)

(assert (=> b!601292 m!865771))

(assert (=> b!601292 m!865771))

(declare-fun m!865773 () Bool)

(assert (=> b!601292 m!865773))

(assert (=> b!601292 m!865773))

(declare-fun m!865775 () Bool)

(assert (=> b!601292 m!865775))

(assert (=> b!601294 m!865653))

(assert (=> b!601294 m!864527))

(assert (=> b!601294 m!865653))

(assert (=> b!601294 m!864527))

(declare-fun m!865777 () Bool)

(assert (=> b!601294 m!865777))

(declare-fun m!865779 () Bool)

(assert (=> b!601294 m!865779))

(assert (=> b!601296 m!865769))

(assert (=> b!601296 m!865771))

(assert (=> b!601296 m!865771))

(assert (=> b!601296 m!865773))

(assert (=> b!601296 m!865773))

(declare-fun m!865781 () Bool)

(assert (=> b!601296 m!865781))

(assert (=> b!601295 m!865769))

(declare-fun m!865783 () Bool)

(assert (=> b!601295 m!865783))

(assert (=> b!601295 m!865783))

(declare-fun m!865785 () Bool)

(assert (=> b!601295 m!865785))

(assert (=> b!601299 m!865769))

(declare-fun m!865787 () Bool)

(assert (=> d!211596 m!865787))

(declare-fun m!865789 () Bool)

(assert (=> d!211596 m!865789))

(declare-fun m!865791 () Bool)

(assert (=> d!211596 m!865791))

(assert (=> d!211596 m!865671))

(assert (=> b!601298 m!865769))

(declare-fun m!865793 () Bool)

(assert (=> b!601298 m!865793))

(declare-fun m!865795 () Bool)

(assert (=> b!601297 m!865795))

(assert (=> b!601297 m!864527))

(declare-fun m!865797 () Bool)

(assert (=> b!601297 m!865797))

(declare-fun m!865799 () Bool)

(assert (=> b!601297 m!865799))

(assert (=> b!601297 m!865797))

(assert (=> b!601297 m!865653))

(assert (=> b!601297 m!865797))

(declare-fun m!865801 () Bool)

(assert (=> b!601297 m!865801))

(declare-fun m!865803 () Bool)

(assert (=> b!601297 m!865803))

(assert (=> b!601297 m!865797))

(declare-fun m!865805 () Bool)

(assert (=> b!601297 m!865805))

(assert (=> b!601297 m!865653))

(assert (=> b!601297 m!864527))

(assert (=> b!601297 m!865777))

(assert (=> b!601293 m!865769))

(declare-fun m!865807 () Bool)

(assert (=> b!601293 m!865807))

(assert (=> b!601293 m!864527))

(assert (=> bm!40490 d!211596))

(declare-fun d!211598 () Bool)

(assert (=> d!211598 (= (list!2516 lt!255861) (list!2518 (c!111436 lt!255861)))))

(declare-fun bs!70952 () Bool)

(assert (= bs!70952 d!211598))

(declare-fun m!865809 () Bool)

(assert (=> bs!70952 m!865809))

(assert (=> d!211264 d!211598))

(assert (=> d!211128 d!211084))

(declare-fun b!601319 () Bool)

(declare-fun e!364250 () Bool)

(declare-fun call!40532 () Bool)

(assert (=> b!601319 (= e!364250 call!40532)))

(declare-fun b!601320 () Bool)

(declare-fun e!364252 () Bool)

(declare-fun e!364249 () Bool)

(assert (=> b!601320 (= e!364252 e!364249)))

(declare-fun c!111623 () Bool)

(assert (=> b!601320 (= c!111623 ((_ is Star!1527) (regex!1193 (rule!1965 token!491))))))

(declare-fun bm!40526 () Bool)

(declare-fun call!40533 () Bool)

(declare-fun c!111624 () Bool)

(assert (=> bm!40526 (= call!40533 (validRegex!528 (ite c!111624 (regTwo!3567 (regex!1193 (rule!1965 token!491))) (regOne!3566 (regex!1193 (rule!1965 token!491))))))))

(declare-fun b!601321 () Bool)

(declare-fun res!260120 () Bool)

(declare-fun e!364251 () Bool)

(assert (=> b!601321 (=> (not res!260120) (not e!364251))))

(declare-fun call!40531 () Bool)

(assert (=> b!601321 (= res!260120 call!40531)))

(declare-fun e!364247 () Bool)

(assert (=> b!601321 (= e!364247 e!364251)))

(declare-fun b!601322 () Bool)

(assert (=> b!601322 (= e!364249 e!364250)))

(declare-fun res!260122 () Bool)

(assert (=> b!601322 (= res!260122 (not (nullable!433 (reg!1856 (regex!1193 (rule!1965 token!491))))))))

(assert (=> b!601322 (=> (not res!260122) (not e!364250))))

(declare-fun bm!40527 () Bool)

(assert (=> bm!40527 (= call!40532 (validRegex!528 (ite c!111623 (reg!1856 (regex!1193 (rule!1965 token!491))) (ite c!111624 (regOne!3567 (regex!1193 (rule!1965 token!491))) (regTwo!3566 (regex!1193 (rule!1965 token!491)))))))))

(declare-fun b!601323 () Bool)

(assert (=> b!601323 (= e!364249 e!364247)))

(assert (=> b!601323 (= c!111624 ((_ is Union!1527) (regex!1193 (rule!1965 token!491))))))

(declare-fun b!601324 () Bool)

(declare-fun e!364248 () Bool)

(declare-fun e!364253 () Bool)

(assert (=> b!601324 (= e!364248 e!364253)))

(declare-fun res!260123 () Bool)

(assert (=> b!601324 (=> (not res!260123) (not e!364253))))

(assert (=> b!601324 (= res!260123 call!40533)))

(declare-fun b!601325 () Bool)

(declare-fun res!260124 () Bool)

(assert (=> b!601325 (=> res!260124 e!364248)))

(assert (=> b!601325 (= res!260124 (not ((_ is Concat!2744) (regex!1193 (rule!1965 token!491)))))))

(assert (=> b!601325 (= e!364247 e!364248)))

(declare-fun bm!40528 () Bool)

(assert (=> bm!40528 (= call!40531 call!40532)))

(declare-fun b!601327 () Bool)

(assert (=> b!601327 (= e!364251 call!40533)))

(declare-fun b!601326 () Bool)

(assert (=> b!601326 (= e!364253 call!40531)))

(declare-fun d!211600 () Bool)

(declare-fun res!260121 () Bool)

(assert (=> d!211600 (=> res!260121 e!364252)))

(assert (=> d!211600 (= res!260121 ((_ is ElementMatch!1527) (regex!1193 (rule!1965 token!491))))))

(assert (=> d!211600 (= (validRegex!528 (regex!1193 (rule!1965 token!491))) e!364252)))

(assert (= (and d!211600 (not res!260121)) b!601320))

(assert (= (and b!601320 c!111623) b!601322))

(assert (= (and b!601320 (not c!111623)) b!601323))

(assert (= (and b!601322 res!260122) b!601319))

(assert (= (and b!601323 c!111624) b!601321))

(assert (= (and b!601323 (not c!111624)) b!601325))

(assert (= (and b!601321 res!260120) b!601327))

(assert (= (and b!601325 (not res!260124)) b!601324))

(assert (= (and b!601324 res!260123) b!601326))

(assert (= (or b!601321 b!601326) bm!40528))

(assert (= (or b!601327 b!601324) bm!40526))

(assert (= (or b!601319 bm!40528) bm!40527))

(declare-fun m!865811 () Bool)

(assert (=> bm!40526 m!865811))

(declare-fun m!865813 () Bool)

(assert (=> b!601322 m!865813))

(declare-fun m!865815 () Bool)

(assert (=> bm!40527 m!865815))

(assert (=> d!211106 d!211600))

(declare-fun d!211602 () Bool)

(declare-fun c!111627 () Bool)

(assert (=> d!211602 (= c!111627 ((_ is Node!1910) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))))

(declare-fun e!364258 () Bool)

(assert (=> d!211602 (= (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))) e!364258)))

(declare-fun b!601334 () Bool)

(declare-fun inv!7620 (Conc!1910) Bool)

(assert (=> b!601334 (= e!364258 (inv!7620 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))))

(declare-fun b!601335 () Bool)

(declare-fun e!364259 () Bool)

(assert (=> b!601335 (= e!364258 e!364259)))

(declare-fun res!260127 () Bool)

(assert (=> b!601335 (= res!260127 (not ((_ is Leaf!3014) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))))))))

(assert (=> b!601335 (=> res!260127 e!364259)))

(declare-fun b!601336 () Bool)

(declare-fun inv!7621 (Conc!1910) Bool)

(assert (=> b!601336 (= e!364259 (inv!7621 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))))

(assert (= (and d!211602 c!111627) b!601334))

(assert (= (and d!211602 (not c!111627)) b!601335))

(assert (= (and b!601335 (not res!260127)) b!601336))

(declare-fun m!865817 () Bool)

(assert (=> b!601334 m!865817))

(declare-fun m!865819 () Bool)

(assert (=> b!601336 m!865819))

(assert (=> b!600604 d!211602))

(declare-fun bs!70953 () Bool)

(declare-fun d!211604 () Bool)

(assert (= bs!70953 (and d!211604 d!211582)))

(declare-fun lambda!16058 () Int)

(assert (=> bs!70953 (= lambda!16058 lambda!16055)))

(assert (=> d!211604 true))

(declare-fun lt!256000 () Bool)

(assert (=> d!211604 (= lt!256000 (rulesValidInductive!444 thiss!22590 rules!3103))))

(assert (=> d!211604 (= lt!256000 (forall!1558 rules!3103 lambda!16058))))

(assert (=> d!211604 (= (rulesValid!439 thiss!22590 rules!3103) lt!256000)))

(declare-fun bs!70954 () Bool)

(assert (= bs!70954 d!211604))

(assert (=> bs!70954 m!864921))

(declare-fun m!865821 () Bool)

(assert (=> bs!70954 m!865821))

(assert (=> d!211272 d!211604))

(assert (=> d!211108 d!211104))

(declare-fun d!211606 () Bool)

(assert (=> d!211606 (isPrefix!821 input!2705 input!2705)))

(assert (=> d!211606 true))

(declare-fun _$45!1318 () Unit!10922)

(assert (=> d!211606 (= (choose!4382 input!2705 input!2705) _$45!1318)))

(declare-fun bs!70955 () Bool)

(assert (= bs!70955 d!211606))

(assert (=> bs!70955 m!864447))

(assert (=> d!211108 d!211606))

(declare-fun d!211608 () Bool)

(declare-fun lt!256001 () Int)

(assert (=> d!211608 (>= lt!256001 0)))

(declare-fun e!364260 () Int)

(assert (=> d!211608 (= lt!256001 e!364260)))

(declare-fun c!111628 () Bool)

(assert (=> d!211608 (= c!111628 ((_ is Nil!6001) (_2!3706 (get!2304 lt!255866))))))

(assert (=> d!211608 (= (size!4723 (_2!3706 (get!2304 lt!255866))) lt!256001)))

(declare-fun b!601337 () Bool)

(assert (=> b!601337 (= e!364260 0)))

(declare-fun b!601338 () Bool)

(assert (=> b!601338 (= e!364260 (+ 1 (size!4723 (t!79818 (_2!3706 (get!2304 lt!255866))))))))

(assert (= (and d!211608 c!111628) b!601337))

(assert (= (and d!211608 (not c!111628)) b!601338))

(declare-fun m!865823 () Bool)

(assert (=> b!601338 m!865823))

(assert (=> b!600721 d!211608))

(declare-fun d!211610 () Bool)

(assert (=> d!211610 (= (get!2304 lt!255866) (v!16436 lt!255866))))

(assert (=> b!600721 d!211610))

(assert (=> b!600721 d!211438))

(declare-fun d!211612 () Bool)

(assert (=> d!211612 (= (isEmpty!4331 (tail!803 lt!255721)) ((_ is Nil!6001) (tail!803 lt!255721)))))

(assert (=> b!600689 d!211612))

(declare-fun d!211614 () Bool)

(assert (=> d!211614 (= (tail!803 lt!255721) (t!79818 lt!255721))))

(assert (=> b!600689 d!211614))

(declare-fun b!601339 () Bool)

(declare-fun e!364264 () Bool)

(declare-fun call!40535 () Bool)

(assert (=> b!601339 (= e!364264 call!40535)))

(declare-fun b!601340 () Bool)

(declare-fun e!364266 () Bool)

(declare-fun e!364263 () Bool)

(assert (=> b!601340 (= e!364266 e!364263)))

(declare-fun c!111629 () Bool)

(assert (=> b!601340 (= c!111629 ((_ is Star!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun bm!40529 () Bool)

(declare-fun call!40536 () Bool)

(declare-fun c!111630 () Bool)

(assert (=> bm!40529 (= call!40536 (validRegex!528 (ite c!111630 (regTwo!3567 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (regOne!3566 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))))

(declare-fun b!601341 () Bool)

(declare-fun res!260128 () Bool)

(declare-fun e!364265 () Bool)

(assert (=> b!601341 (=> (not res!260128) (not e!364265))))

(declare-fun call!40534 () Bool)

(assert (=> b!601341 (= res!260128 call!40534)))

(declare-fun e!364261 () Bool)

(assert (=> b!601341 (= e!364261 e!364265)))

(declare-fun b!601342 () Bool)

(assert (=> b!601342 (= e!364263 e!364264)))

(declare-fun res!260130 () Bool)

(assert (=> b!601342 (= res!260130 (not (nullable!433 (reg!1856 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))))

(assert (=> b!601342 (=> (not res!260130) (not e!364264))))

(declare-fun bm!40530 () Bool)

(assert (=> bm!40530 (= call!40535 (validRegex!528 (ite c!111629 (reg!1856 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (ite c!111630 (regOne!3567 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (regTwo!3566 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))))))

(declare-fun b!601343 () Bool)

(assert (=> b!601343 (= e!364263 e!364261)))

(assert (=> b!601343 (= c!111630 ((_ is Union!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun b!601344 () Bool)

(declare-fun e!364262 () Bool)

(declare-fun e!364267 () Bool)

(assert (=> b!601344 (= e!364262 e!364267)))

(declare-fun res!260131 () Bool)

(assert (=> b!601344 (=> (not res!260131) (not e!364267))))

(assert (=> b!601344 (= res!260131 call!40536)))

(declare-fun b!601345 () Bool)

(declare-fun res!260132 () Bool)

(assert (=> b!601345 (=> res!260132 e!364262)))

(assert (=> b!601345 (= res!260132 (not ((_ is Concat!2744) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))))

(assert (=> b!601345 (= e!364261 e!364262)))

(declare-fun bm!40531 () Bool)

(assert (=> bm!40531 (= call!40534 call!40535)))

(declare-fun b!601347 () Bool)

(assert (=> b!601347 (= e!364265 call!40536)))

(declare-fun b!601346 () Bool)

(assert (=> b!601346 (= e!364267 call!40534)))

(declare-fun d!211616 () Bool)

(declare-fun res!260129 () Bool)

(assert (=> d!211616 (=> res!260129 e!364266)))

(assert (=> d!211616 (= res!260129 ((_ is ElementMatch!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(assert (=> d!211616 (= (validRegex!528 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) e!364266)))

(assert (= (and d!211616 (not res!260129)) b!601340))

(assert (= (and b!601340 c!111629) b!601342))

(assert (= (and b!601340 (not c!111629)) b!601343))

(assert (= (and b!601342 res!260130) b!601339))

(assert (= (and b!601343 c!111630) b!601341))

(assert (= (and b!601343 (not c!111630)) b!601345))

(assert (= (and b!601341 res!260128) b!601347))

(assert (= (and b!601345 (not res!260132)) b!601344))

(assert (= (and b!601344 res!260131) b!601346))

(assert (= (or b!601341 b!601346) bm!40531))

(assert (= (or b!601347 b!601344) bm!40529))

(assert (= (or b!601339 bm!40531) bm!40530))

(declare-fun m!865825 () Bool)

(assert (=> bm!40529 m!865825))

(declare-fun m!865827 () Bool)

(assert (=> b!601342 m!865827))

(declare-fun m!865829 () Bool)

(assert (=> bm!40530 m!865829))

(assert (=> d!211116 d!211616))

(declare-fun d!211618 () Bool)

(assert (=> d!211618 (= (list!2516 lt!255761) (list!2518 (c!111436 lt!255761)))))

(declare-fun bs!70956 () Bool)

(assert (= bs!70956 d!211618))

(declare-fun m!865831 () Bool)

(assert (=> bs!70956 m!865831))

(assert (=> d!211112 d!211618))

(declare-fun b!601348 () Bool)

(declare-fun e!364269 () List!6011)

(assert (=> b!601348 (= e!364269 (_2!3706 (get!2304 lt!255866)))))

(declare-fun b!601351 () Bool)

(declare-fun e!364268 () Bool)

(declare-fun lt!256002 () List!6011)

(assert (=> b!601351 (= e!364268 (or (not (= (_2!3706 (get!2304 lt!255866)) Nil!6001)) (= lt!256002 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866)))))))))

(declare-fun b!601349 () Bool)

(assert (=> b!601349 (= e!364269 (Cons!6001 (h!11402 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))) (++!1681 (t!79818 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))) (_2!3706 (get!2304 lt!255866)))))))

(declare-fun d!211620 () Bool)

(assert (=> d!211620 e!364268))

(declare-fun res!260133 () Bool)

(assert (=> d!211620 (=> (not res!260133) (not e!364268))))

(assert (=> d!211620 (= res!260133 (= (content!1083 lt!256002) ((_ map or) (content!1083 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))) (content!1083 (_2!3706 (get!2304 lt!255866))))))))

(assert (=> d!211620 (= lt!256002 e!364269)))

(declare-fun c!111631 () Bool)

(assert (=> d!211620 (= c!111631 ((_ is Nil!6001) (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))))))

(assert (=> d!211620 (= (++!1681 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866)))) (_2!3706 (get!2304 lt!255866))) lt!256002)))

(declare-fun b!601350 () Bool)

(declare-fun res!260134 () Bool)

(assert (=> b!601350 (=> (not res!260134) (not e!364268))))

(assert (=> b!601350 (= res!260134 (= (size!4723 lt!256002) (+ (size!4723 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))) (size!4723 (_2!3706 (get!2304 lt!255866))))))))

(assert (= (and d!211620 c!111631) b!601348))

(assert (= (and d!211620 (not c!111631)) b!601349))

(assert (= (and d!211620 res!260133) b!601350))

(assert (= (and b!601350 res!260134) b!601351))

(declare-fun m!865833 () Bool)

(assert (=> b!601349 m!865833))

(declare-fun m!865835 () Bool)

(assert (=> d!211620 m!865835))

(assert (=> d!211620 m!865011))

(declare-fun m!865837 () Bool)

(assert (=> d!211620 m!865837))

(declare-fun m!865839 () Bool)

(assert (=> d!211620 m!865839))

(declare-fun m!865841 () Bool)

(assert (=> b!601350 m!865841))

(assert (=> b!601350 m!865011))

(declare-fun m!865843 () Bool)

(assert (=> b!601350 m!865843))

(assert (=> b!601350 m!865007))

(assert (=> b!600725 d!211620))

(declare-fun d!211622 () Bool)

(assert (=> d!211622 (= (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866)))) (list!2518 (c!111436 (charsOf!822 (_1!3706 (get!2304 lt!255866))))))))

(declare-fun bs!70957 () Bool)

(assert (= bs!70957 d!211622))

(declare-fun m!865845 () Bool)

(assert (=> bs!70957 m!865845))

(assert (=> b!600725 d!211622))

(declare-fun d!211624 () Bool)

(declare-fun lt!256003 () BalanceConc!3828)

(assert (=> d!211624 (= (list!2516 lt!256003) (originalCharacters!1232 (_1!3706 (get!2304 lt!255866))))))

(assert (=> d!211624 (= lt!256003 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866))))) (value!38867 (_1!3706 (get!2304 lt!255866)))))))

(assert (=> d!211624 (= (charsOf!822 (_1!3706 (get!2304 lt!255866))) lt!256003)))

(declare-fun b_lambda!23731 () Bool)

(assert (=> (not b_lambda!23731) (not d!211624)))

(declare-fun tb!52451 () Bool)

(declare-fun t!79932 () Bool)

(assert (=> (and b!600268 (= (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))) t!79932) tb!52451))

(declare-fun b!601352 () Bool)

(declare-fun e!364270 () Bool)

(declare-fun tp!187175 () Bool)

(assert (=> b!601352 (= e!364270 (and (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866))))) (value!38867 (_1!3706 (get!2304 lt!255866)))))) tp!187175))))

(declare-fun result!59000 () Bool)

(assert (=> tb!52451 (= result!59000 (and (inv!7617 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866))))) (value!38867 (_1!3706 (get!2304 lt!255866))))) e!364270))))

(assert (= tb!52451 b!601352))

(declare-fun m!865847 () Bool)

(assert (=> b!601352 m!865847))

(declare-fun m!865849 () Bool)

(assert (=> tb!52451 m!865849))

(assert (=> d!211624 t!79932))

(declare-fun b_and!59381 () Bool)

(assert (= b_and!59375 (and (=> t!79932 result!59000) b_and!59381)))

(declare-fun tb!52453 () Bool)

(declare-fun t!79934 () Bool)

(assert (=> (and b!600263 (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))) t!79934) tb!52453))

(declare-fun result!59002 () Bool)

(assert (= result!59002 result!59000))

(assert (=> d!211624 t!79934))

(declare-fun b_and!59383 () Bool)

(assert (= b_and!59377 (and (=> t!79934 result!59002) b_and!59383)))

(declare-fun t!79936 () Bool)

(declare-fun tb!52455 () Bool)

(assert (=> (and b!600750 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))) t!79936) tb!52455))

(declare-fun result!59004 () Bool)

(assert (= result!59004 result!59000))

(assert (=> d!211624 t!79936))

(declare-fun b_and!59385 () Bool)

(assert (= b_and!59379 (and (=> t!79936 result!59004) b_and!59385)))

(declare-fun m!865851 () Bool)

(assert (=> d!211624 m!865851))

(declare-fun m!865853 () Bool)

(assert (=> d!211624 m!865853))

(assert (=> b!600725 d!211624))

(assert (=> b!600725 d!211610))

(declare-fun d!211626 () Bool)

(declare-fun nullableFct!143 (Regex!1527) Bool)

(assert (=> d!211626 (= (nullable!433 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (nullableFct!143 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun bs!70958 () Bool)

(assert (= bs!70958 d!211626))

(declare-fun m!865855 () Bool)

(assert (=> bs!70958 m!865855))

(assert (=> b!600693 d!211626))

(declare-fun d!211628 () Bool)

(declare-fun e!364272 () Bool)

(assert (=> d!211628 e!364272))

(declare-fun res!260135 () Bool)

(assert (=> d!211628 (=> res!260135 e!364272)))

(declare-fun lt!256004 () Bool)

(assert (=> d!211628 (= res!260135 (not lt!256004))))

(declare-fun e!364273 () Bool)

(assert (=> d!211628 (= lt!256004 e!364273)))

(declare-fun res!260136 () Bool)

(assert (=> d!211628 (=> res!260136 e!364273)))

(assert (=> d!211628 (= res!260136 ((_ is Nil!6001) (tail!803 lt!255717)))))

(assert (=> d!211628 (= (isPrefix!821 (tail!803 lt!255717) (tail!803 lt!255695)) lt!256004)))

(declare-fun b!601353 () Bool)

(declare-fun e!364271 () Bool)

(assert (=> b!601353 (= e!364273 e!364271)))

(declare-fun res!260137 () Bool)

(assert (=> b!601353 (=> (not res!260137) (not e!364271))))

(assert (=> b!601353 (= res!260137 (not ((_ is Nil!6001) (tail!803 lt!255695))))))

(declare-fun b!601356 () Bool)

(assert (=> b!601356 (= e!364272 (>= (size!4723 (tail!803 lt!255695)) (size!4723 (tail!803 lt!255717))))))

(declare-fun b!601355 () Bool)

(assert (=> b!601355 (= e!364271 (isPrefix!821 (tail!803 (tail!803 lt!255717)) (tail!803 (tail!803 lt!255695))))))

(declare-fun b!601354 () Bool)

(declare-fun res!260138 () Bool)

(assert (=> b!601354 (=> (not res!260138) (not e!364271))))

(assert (=> b!601354 (= res!260138 (= (head!1274 (tail!803 lt!255717)) (head!1274 (tail!803 lt!255695))))))

(assert (= (and d!211628 (not res!260136)) b!601353))

(assert (= (and b!601353 res!260137) b!601354))

(assert (= (and b!601354 res!260138) b!601355))

(assert (= (and d!211628 (not res!260135)) b!601356))

(assert (=> b!601356 m!864531))

(declare-fun m!865857 () Bool)

(assert (=> b!601356 m!865857))

(assert (=> b!601356 m!864605))

(declare-fun m!865859 () Bool)

(assert (=> b!601356 m!865859))

(assert (=> b!601355 m!864605))

(declare-fun m!865861 () Bool)

(assert (=> b!601355 m!865861))

(assert (=> b!601355 m!864531))

(declare-fun m!865863 () Bool)

(assert (=> b!601355 m!865863))

(assert (=> b!601355 m!865861))

(assert (=> b!601355 m!865863))

(declare-fun m!865865 () Bool)

(assert (=> b!601355 m!865865))

(assert (=> b!601354 m!864605))

(declare-fun m!865867 () Bool)

(assert (=> b!601354 m!865867))

(assert (=> b!601354 m!864531))

(declare-fun m!865869 () Bool)

(assert (=> b!601354 m!865869))

(assert (=> b!600364 d!211628))

(declare-fun d!211630 () Bool)

(assert (=> d!211630 (= (tail!803 lt!255717) (t!79818 lt!255717))))

(assert (=> b!600364 d!211630))

(declare-fun d!211632 () Bool)

(assert (=> d!211632 (= (tail!803 lt!255695) (t!79818 lt!255695))))

(assert (=> b!600364 d!211632))

(declare-fun d!211634 () Bool)

(assert (=> d!211634 (= (isDefined!1355 lt!255849) (not (isEmpty!4334 lt!255849)))))

(declare-fun bs!70959 () Bool)

(assert (= bs!70959 d!211634))

(assert (=> bs!70959 m!864915))

(assert (=> b!600623 d!211634))

(assert (=> d!211136 d!211248))

(declare-fun d!211636 () Bool)

(declare-fun e!364276 () Bool)

(assert (=> d!211636 e!364276))

(declare-fun res!260141 () Bool)

(assert (=> d!211636 (=> (not res!260141) (not e!364276))))

(declare-fun lt!256007 () BalanceConc!3828)

(assert (=> d!211636 (= res!260141 (= (list!2516 lt!256007) lt!255721))))

(declare-fun fromList!279 (List!6011) Conc!1910)

(assert (=> d!211636 (= lt!256007 (BalanceConc!3829 (fromList!279 lt!255721)))))

(assert (=> d!211636 (= (fromListB!602 lt!255721) lt!256007)))

(declare-fun b!601359 () Bool)

(assert (=> b!601359 (= e!364276 (isBalanced!528 (fromList!279 lt!255721)))))

(assert (= (and d!211636 res!260141) b!601359))

(declare-fun m!865871 () Bool)

(assert (=> d!211636 m!865871))

(declare-fun m!865873 () Bool)

(assert (=> d!211636 m!865873))

(assert (=> b!601359 m!865873))

(assert (=> b!601359 m!865873))

(declare-fun m!865875 () Bool)

(assert (=> b!601359 m!865875))

(assert (=> d!211122 d!211636))

(assert (=> b!600624 d!211592))

(assert (=> b!600624 d!211594))

(assert (=> b!600624 d!211558))

(declare-fun d!211638 () Bool)

(assert (=> d!211638 (= (list!2516 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491))) (list!2518 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491)))))))

(declare-fun bs!70960 () Bool)

(assert (= bs!70960 d!211638))

(declare-fun m!865877 () Bool)

(assert (=> bs!70960 m!865877))

(assert (=> b!600640 d!211638))

(declare-fun d!211640 () Bool)

(assert (=> d!211640 true))

(declare-fun lambda!16061 () Int)

(declare-fun order!4801 () Int)

(declare-fun dynLambda!3477 (Int Int) Int)

(assert (=> d!211640 (< (dynLambda!3472 order!4793 (toValue!2088 (transformation!1193 (rule!1965 token!491)))) (dynLambda!3477 order!4801 lambda!16061))))

(declare-fun Forall2!228 (Int) Bool)

(assert (=> d!211640 (= (equivClasses!458 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))) (Forall2!228 lambda!16061))))

(declare-fun bs!70961 () Bool)

(assert (= bs!70961 d!211640))

(declare-fun m!865879 () Bool)

(assert (=> bs!70961 m!865879))

(assert (=> b!600376 d!211640))

(declare-fun b!601364 () Bool)

(declare-fun e!364280 () List!6011)

(assert (=> b!601364 (= e!364280 (_2!3706 (v!16436 lt!255719)))))

(declare-fun b!601367 () Bool)

(declare-fun e!364279 () Bool)

(declare-fun lt!256008 () List!6011)

(assert (=> b!601367 (= e!364279 (or (not (= (_2!3706 (v!16436 lt!255719)) Nil!6001)) (= lt!256008 (t!79818 lt!255721))))))

(declare-fun b!601365 () Bool)

(assert (=> b!601365 (= e!364280 (Cons!6001 (h!11402 (t!79818 lt!255721)) (++!1681 (t!79818 (t!79818 lt!255721)) (_2!3706 (v!16436 lt!255719)))))))

(declare-fun d!211642 () Bool)

(assert (=> d!211642 e!364279))

(declare-fun res!260144 () Bool)

(assert (=> d!211642 (=> (not res!260144) (not e!364279))))

(assert (=> d!211642 (= res!260144 (= (content!1083 lt!256008) ((_ map or) (content!1083 (t!79818 lt!255721)) (content!1083 (_2!3706 (v!16436 lt!255719))))))))

(assert (=> d!211642 (= lt!256008 e!364280)))

(declare-fun c!111633 () Bool)

(assert (=> d!211642 (= c!111633 ((_ is Nil!6001) (t!79818 lt!255721)))))

(assert (=> d!211642 (= (++!1681 (t!79818 lt!255721) (_2!3706 (v!16436 lt!255719))) lt!256008)))

(declare-fun b!601366 () Bool)

(declare-fun res!260145 () Bool)

(assert (=> b!601366 (=> (not res!260145) (not e!364279))))

(assert (=> b!601366 (= res!260145 (= (size!4723 lt!256008) (+ (size!4723 (t!79818 lt!255721)) (size!4723 (_2!3706 (v!16436 lt!255719))))))))

(assert (= (and d!211642 c!111633) b!601364))

(assert (= (and d!211642 (not c!111633)) b!601365))

(assert (= (and d!211642 res!260144) b!601366))

(assert (= (and b!601366 res!260145) b!601367))

(declare-fun m!865881 () Bool)

(assert (=> b!601365 m!865881))

(declare-fun m!865883 () Bool)

(assert (=> d!211642 m!865883))

(declare-fun m!865885 () Bool)

(assert (=> d!211642 m!865885))

(assert (=> d!211642 m!864565))

(declare-fun m!865887 () Bool)

(assert (=> b!601366 m!865887))

(assert (=> b!601366 m!864631))

(assert (=> b!601366 m!864569))

(assert (=> b!600342 d!211642))

(declare-fun d!211644 () Bool)

(declare-fun charsToInt!0 (List!6010) (_ BitVec 32))

(assert (=> d!211644 (= (inv!16 (value!38867 token!491)) (= (charsToInt!0 (text!8966 (value!38867 token!491))) (value!38858 (value!38867 token!491))))))

(declare-fun bs!70962 () Bool)

(assert (= bs!70962 d!211644))

(declare-fun m!865889 () Bool)

(assert (=> bs!70962 m!865889))

(assert (=> b!600710 d!211644))

(declare-fun d!211646 () Bool)

(declare-fun lt!256009 () List!6011)

(assert (=> d!211646 (= (++!1681 (t!79818 lt!255721) lt!256009) (tail!803 input!2705))))

(declare-fun e!364281 () List!6011)

(assert (=> d!211646 (= lt!256009 e!364281)))

(declare-fun c!111634 () Bool)

(assert (=> d!211646 (= c!111634 ((_ is Cons!6001) (t!79818 lt!255721)))))

(assert (=> d!211646 (>= (size!4723 (tail!803 input!2705)) (size!4723 (t!79818 lt!255721)))))

(assert (=> d!211646 (= (getSuffix!338 (tail!803 input!2705) (t!79818 lt!255721)) lt!256009)))

(declare-fun b!601368 () Bool)

(assert (=> b!601368 (= e!364281 (getSuffix!338 (tail!803 (tail!803 input!2705)) (t!79818 (t!79818 lt!255721))))))

(declare-fun b!601369 () Bool)

(assert (=> b!601369 (= e!364281 (tail!803 input!2705))))

(assert (= (and d!211646 c!111634) b!601368))

(assert (= (and d!211646 (not c!111634)) b!601369))

(declare-fun m!865891 () Bool)

(assert (=> d!211646 m!865891))

(assert (=> d!211646 m!864529))

(assert (=> d!211646 m!865703))

(assert (=> d!211646 m!864631))

(assert (=> b!601368 m!864529))

(assert (=> b!601368 m!865705))

(assert (=> b!601368 m!865705))

(declare-fun m!865893 () Bool)

(assert (=> b!601368 m!865893))

(assert (=> b!600370 d!211646))

(assert (=> b!600370 d!211570))

(declare-fun bs!70963 () Bool)

(declare-fun d!211648 () Bool)

(assert (= bs!70963 (and d!211648 d!211640)))

(declare-fun lambda!16062 () Int)

(assert (=> bs!70963 (= (= (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))) (= lambda!16062 lambda!16061))))

(assert (=> d!211648 true))

(assert (=> d!211648 (< (dynLambda!3472 order!4793 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (dynLambda!3477 order!4801 lambda!16062))))

(assert (=> d!211648 (= (equivClasses!458 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (Forall2!228 lambda!16062))))

(declare-fun bs!70964 () Bool)

(assert (= bs!70964 d!211648))

(declare-fun m!865895 () Bool)

(assert (=> bs!70964 m!865895))

(assert (=> b!600332 d!211648))

(declare-fun d!211650 () Bool)

(assert (=> d!211650 (= (isEmpty!4331 (originalCharacters!1232 token!491)) ((_ is Nil!6001) (originalCharacters!1232 token!491)))))

(assert (=> d!211246 d!211650))

(assert (=> bm!40489 d!211082))

(declare-fun d!211652 () Bool)

(assert (=> d!211652 (= (nullable!433 (regex!1193 (rule!1965 token!491))) (nullableFct!143 (regex!1193 (rule!1965 token!491))))))

(declare-fun bs!70965 () Bool)

(assert (= bs!70965 d!211652))

(declare-fun m!865897 () Bool)

(assert (=> bs!70965 m!865897))

(assert (=> b!600353 d!211652))

(declare-fun d!211654 () Bool)

(assert (=> d!211654 (= (head!1274 lt!255721) (h!11402 lt!255721))))

(assert (=> b!600327 d!211654))

(declare-fun d!211656 () Bool)

(assert (=> d!211656 (= (head!1274 lt!255703) (h!11402 lt!255703))))

(assert (=> b!600327 d!211656))

(declare-fun b!601370 () Bool)

(declare-fun res!260149 () Bool)

(declare-fun e!364285 () Bool)

(assert (=> b!601370 (=> (not res!260149) (not e!364285))))

(declare-fun call!40537 () Bool)

(assert (=> b!601370 (= res!260149 (not call!40537))))

(declare-fun b!601371 () Bool)

(declare-fun res!260150 () Bool)

(declare-fun e!364283 () Bool)

(assert (=> b!601371 (=> res!260150 e!364283)))

(assert (=> b!601371 (= res!260150 (not ((_ is ElementMatch!1527) (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))))))

(declare-fun e!364286 () Bool)

(assert (=> b!601371 (= e!364286 e!364283)))

(declare-fun b!601372 () Bool)

(declare-fun e!364282 () Bool)

(declare-fun lt!256010 () Bool)

(assert (=> b!601372 (= e!364282 (= lt!256010 call!40537))))

(declare-fun b!601373 () Bool)

(declare-fun e!364288 () Bool)

(assert (=> b!601373 (= e!364288 (matchR!636 (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))) (head!1274 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849)))))) (tail!803 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849)))))))))

(declare-fun b!601374 () Bool)

(declare-fun res!260146 () Bool)

(assert (=> b!601374 (=> (not res!260146) (not e!364285))))

(assert (=> b!601374 (= res!260146 (isEmpty!4331 (tail!803 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849)))))))))

(declare-fun b!601375 () Bool)

(assert (=> b!601375 (= e!364286 (not lt!256010))))

(declare-fun b!601376 () Bool)

(assert (=> b!601376 (= e!364282 e!364286)))

(declare-fun c!111637 () Bool)

(assert (=> b!601376 (= c!111637 ((_ is EmptyLang!1527) (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255849))))))))

(declare-fun d!211658 () Bool)

(assert (=> d!211658 e!364282))

(declare-fun c!111635 () Bool)

(assert (=> d!211658 (= c!111635 ((_ is EmptyExpr!1527) (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255849))))))))

(assert (=> d!211658 (= lt!256010 e!364288)))

(declare-fun c!111636 () Bool)

(assert (=> d!211658 (= c!111636 (isEmpty!4331 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))))))

(assert (=> d!211658 (validRegex!528 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))))

(assert (=> d!211658 (= (matchR!636 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))) (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))) lt!256010)))

(declare-fun b!601377 () Bool)

(assert (=> b!601377 (= e!364285 (= (head!1274 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))) (c!111435 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))))))

(declare-fun b!601378 () Bool)

(assert (=> b!601378 (= e!364288 (nullable!433 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255849))))))))

(declare-fun b!601379 () Bool)

(declare-fun e!364284 () Bool)

(assert (=> b!601379 (= e!364283 e!364284)))

(declare-fun res!260151 () Bool)

(assert (=> b!601379 (=> (not res!260151) (not e!364284))))

(assert (=> b!601379 (= res!260151 (not lt!256010))))

(declare-fun b!601380 () Bool)

(declare-fun e!364287 () Bool)

(assert (=> b!601380 (= e!364284 e!364287)))

(declare-fun res!260148 () Bool)

(assert (=> b!601380 (=> res!260148 e!364287)))

(assert (=> b!601380 (= res!260148 call!40537)))

(declare-fun b!601381 () Bool)

(declare-fun res!260153 () Bool)

(assert (=> b!601381 (=> res!260153 e!364287)))

(assert (=> b!601381 (= res!260153 (not (isEmpty!4331 (tail!803 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))))))))

(declare-fun b!601382 () Bool)

(assert (=> b!601382 (= e!364287 (not (= (head!1274 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))) (c!111435 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255849))))))))))

(declare-fun b!601383 () Bool)

(declare-fun res!260152 () Bool)

(assert (=> b!601383 (=> res!260152 e!364283)))

(assert (=> b!601383 (= res!260152 e!364285)))

(declare-fun res!260147 () Bool)

(assert (=> b!601383 (=> (not res!260147) (not e!364285))))

(assert (=> b!601383 (= res!260147 lt!256010)))

(declare-fun bm!40532 () Bool)

(assert (=> bm!40532 (= call!40537 (isEmpty!4331 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255849))))))))

(assert (= (and d!211658 c!111636) b!601378))

(assert (= (and d!211658 (not c!111636)) b!601373))

(assert (= (and d!211658 c!111635) b!601372))

(assert (= (and d!211658 (not c!111635)) b!601376))

(assert (= (and b!601376 c!111637) b!601375))

(assert (= (and b!601376 (not c!111637)) b!601371))

(assert (= (and b!601371 (not res!260150)) b!601383))

(assert (= (and b!601383 res!260147) b!601370))

(assert (= (and b!601370 res!260149) b!601374))

(assert (= (and b!601374 res!260146) b!601377))

(assert (= (and b!601383 (not res!260152)) b!601379))

(assert (= (and b!601379 res!260151) b!601380))

(assert (= (and b!601380 (not res!260148)) b!601381))

(assert (= (and b!601381 (not res!260153)) b!601382))

(assert (= (or b!601372 b!601370 b!601380) bm!40532))

(assert (=> b!601377 m!864907))

(declare-fun m!865899 () Bool)

(assert (=> b!601377 m!865899))

(assert (=> b!601373 m!864907))

(assert (=> b!601373 m!865899))

(assert (=> b!601373 m!865899))

(declare-fun m!865901 () Bool)

(assert (=> b!601373 m!865901))

(assert (=> b!601373 m!864907))

(declare-fun m!865903 () Bool)

(assert (=> b!601373 m!865903))

(assert (=> b!601373 m!865901))

(assert (=> b!601373 m!865903))

(declare-fun m!865905 () Bool)

(assert (=> b!601373 m!865905))

(assert (=> bm!40532 m!864907))

(declare-fun m!865907 () Bool)

(assert (=> bm!40532 m!865907))

(assert (=> b!601374 m!864907))

(assert (=> b!601374 m!865903))

(assert (=> b!601374 m!865903))

(declare-fun m!865909 () Bool)

(assert (=> b!601374 m!865909))

(assert (=> b!601382 m!864907))

(assert (=> b!601382 m!865899))

(assert (=> d!211658 m!864907))

(assert (=> d!211658 m!865907))

(declare-fun m!865911 () Bool)

(assert (=> d!211658 m!865911))

(declare-fun m!865913 () Bool)

(assert (=> b!601378 m!865913))

(assert (=> b!601381 m!864907))

(assert (=> b!601381 m!865903))

(assert (=> b!601381 m!865903))

(assert (=> b!601381 m!865909))

(assert (=> b!600628 d!211658))

(assert (=> b!600628 d!211558))

(assert (=> b!600628 d!211592))

(assert (=> b!600628 d!211594))

(declare-fun d!211660 () Bool)

(declare-fun lt!256011 () Int)

(assert (=> d!211660 (>= lt!256011 0)))

(declare-fun e!364289 () Int)

(assert (=> d!211660 (= lt!256011 e!364289)))

(declare-fun c!111638 () Bool)

(assert (=> d!211660 (= c!111638 ((_ is Nil!6001) lt!255854))))

(assert (=> d!211660 (= (size!4723 lt!255854) lt!256011)))

(declare-fun b!601384 () Bool)

(assert (=> b!601384 (= e!364289 0)))

(declare-fun b!601385 () Bool)

(assert (=> b!601385 (= e!364289 (+ 1 (size!4723 (t!79818 lt!255854))))))

(assert (= (and d!211660 c!111638) b!601384))

(assert (= (and d!211660 (not c!111638)) b!601385))

(declare-fun m!865915 () Bool)

(assert (=> b!601385 m!865915))

(assert (=> b!600634 d!211660))

(assert (=> b!600634 d!211438))

(declare-fun d!211662 () Bool)

(declare-fun lt!256012 () Int)

(assert (=> d!211662 (>= lt!256012 0)))

(declare-fun e!364290 () Int)

(assert (=> d!211662 (= lt!256012 e!364290)))

(declare-fun c!111639 () Bool)

(assert (=> d!211662 (= c!111639 ((_ is Nil!6001) suffix!1342))))

(assert (=> d!211662 (= (size!4723 suffix!1342) lt!256012)))

(declare-fun b!601386 () Bool)

(assert (=> b!601386 (= e!364290 0)))

(declare-fun b!601387 () Bool)

(assert (=> b!601387 (= e!364290 (+ 1 (size!4723 (t!79818 suffix!1342))))))

(assert (= (and d!211662 c!111639) b!601386))

(assert (= (and d!211662 (not c!111639)) b!601387))

(declare-fun m!865917 () Bool)

(assert (=> b!601387 m!865917))

(assert (=> b!600634 d!211662))

(declare-fun bs!70966 () Bool)

(declare-fun d!211664 () Bool)

(assert (= bs!70966 (and d!211664 d!211146)))

(declare-fun lambda!16065 () Int)

(assert (=> bs!70966 (= (and (= (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (= (toValue!2088 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (= lambda!16065 lambda!16036))))

(assert (=> d!211664 true))

(assert (=> d!211664 (< (dynLambda!3474 order!4797 (toChars!1947 (transformation!1193 (rule!1965 token!491)))) (dynLambda!3473 order!4795 lambda!16065))))

(assert (=> d!211664 true))

(assert (=> d!211664 (< (dynLambda!3472 order!4793 (toValue!2088 (transformation!1193 (rule!1965 token!491)))) (dynLambda!3473 order!4795 lambda!16065))))

(declare-fun Forall!302 (Int) Bool)

(assert (=> d!211664 (= (semiInverseModEq!475 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))) (Forall!302 lambda!16065))))

(declare-fun bs!70967 () Bool)

(assert (= bs!70967 d!211664))

(declare-fun m!865919 () Bool)

(assert (=> bs!70967 m!865919))

(assert (=> d!211080 d!211664))

(assert (=> b!600375 d!211560))

(assert (=> b!600375 d!211438))

(assert (=> b!600718 d!211622))

(assert (=> b!600718 d!211624))

(assert (=> b!600718 d!211610))

(declare-fun d!211666 () Bool)

(declare-fun c!111640 () Bool)

(assert (=> d!211666 (= c!111640 ((_ is Node!1910) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491)))))))

(declare-fun e!364291 () Bool)

(assert (=> d!211666 (= (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491)))) e!364291)))

(declare-fun b!601392 () Bool)

(assert (=> b!601392 (= e!364291 (inv!7620 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491)))))))

(declare-fun b!601393 () Bool)

(declare-fun e!364292 () Bool)

(assert (=> b!601393 (= e!364291 e!364292)))

(declare-fun res!260154 () Bool)

(assert (=> b!601393 (= res!260154 (not ((_ is Leaf!3014) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491))))))))

(assert (=> b!601393 (=> res!260154 e!364292)))

(declare-fun b!601394 () Bool)

(assert (=> b!601394 (= e!364292 (inv!7621 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491)))))))

(assert (= (and d!211666 c!111640) b!601392))

(assert (= (and d!211666 (not c!111640)) b!601393))

(assert (= (and b!601393 (not res!260154)) b!601394))

(declare-fun m!865921 () Bool)

(assert (=> b!601392 m!865921))

(declare-fun m!865923 () Bool)

(assert (=> b!601394 m!865923))

(assert (=> b!600642 d!211666))

(declare-fun bs!70968 () Bool)

(declare-fun d!211668 () Bool)

(assert (= bs!70968 (and d!211668 d!211640)))

(declare-fun lambda!16066 () Int)

(assert (=> bs!70968 (= (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))) (= lambda!16066 lambda!16061))))

(declare-fun bs!70969 () Bool)

(assert (= bs!70969 (and d!211668 d!211648)))

(assert (=> bs!70969 (= (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (= lambda!16066 lambda!16062))))

(assert (=> d!211668 true))

(assert (=> d!211668 (< (dynLambda!3472 order!4793 (toValue!2088 (transformation!1193 (h!11403 rules!3103)))) (dynLambda!3477 order!4801 lambda!16066))))

(assert (=> d!211668 (= (equivClasses!458 (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (h!11403 rules!3103)))) (Forall2!228 lambda!16066))))

(declare-fun bs!70970 () Bool)

(assert (= bs!70970 d!211668))

(declare-fun m!865925 () Bool)

(assert (=> bs!70970 m!865925))

(assert (=> b!600309 d!211668))

(declare-fun b!601395 () Bool)

(declare-fun res!260158 () Bool)

(declare-fun e!364296 () Bool)

(assert (=> b!601395 (=> (not res!260158) (not e!364296))))

(declare-fun call!40538 () Bool)

(assert (=> b!601395 (= res!260158 (not call!40538))))

(declare-fun b!601396 () Bool)

(declare-fun res!260159 () Bool)

(declare-fun e!364294 () Bool)

(assert (=> b!601396 (=> res!260159 e!364294)))

(assert (=> b!601396 (= res!260159 (not ((_ is ElementMatch!1527) (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))))))

(declare-fun e!364297 () Bool)

(assert (=> b!601396 (= e!364297 e!364294)))

(declare-fun b!601397 () Bool)

(declare-fun e!364293 () Bool)

(declare-fun lt!256013 () Bool)

(assert (=> b!601397 (= e!364293 (= lt!256013 call!40538))))

(declare-fun b!601398 () Bool)

(declare-fun e!364299 () Bool)

(assert (=> b!601398 (= e!364299 (matchR!636 (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))) (head!1274 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866)))))) (tail!803 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866)))))))))

(declare-fun b!601399 () Bool)

(declare-fun res!260155 () Bool)

(assert (=> b!601399 (=> (not res!260155) (not e!364296))))

(assert (=> b!601399 (= res!260155 (isEmpty!4331 (tail!803 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866)))))))))

(declare-fun b!601400 () Bool)

(assert (=> b!601400 (= e!364297 (not lt!256013))))

(declare-fun b!601401 () Bool)

(assert (=> b!601401 (= e!364293 e!364297)))

(declare-fun c!111643 () Bool)

(assert (=> b!601401 (= c!111643 ((_ is EmptyLang!1527) (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255866))))))))

(declare-fun d!211670 () Bool)

(assert (=> d!211670 e!364293))

(declare-fun c!111641 () Bool)

(assert (=> d!211670 (= c!111641 ((_ is EmptyExpr!1527) (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255866))))))))

(assert (=> d!211670 (= lt!256013 e!364299)))

(declare-fun c!111642 () Bool)

(assert (=> d!211670 (= c!111642 (isEmpty!4331 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))))))

(assert (=> d!211670 (validRegex!528 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))))

(assert (=> d!211670 (= (matchR!636 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))) (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))) lt!256013)))

(declare-fun b!601402 () Bool)

(assert (=> b!601402 (= e!364296 (= (head!1274 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))) (c!111435 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))))))

(declare-fun b!601403 () Bool)

(assert (=> b!601403 (= e!364299 (nullable!433 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255866))))))))

(declare-fun b!601404 () Bool)

(declare-fun e!364295 () Bool)

(assert (=> b!601404 (= e!364294 e!364295)))

(declare-fun res!260160 () Bool)

(assert (=> b!601404 (=> (not res!260160) (not e!364295))))

(assert (=> b!601404 (= res!260160 (not lt!256013))))

(declare-fun b!601405 () Bool)

(declare-fun e!364298 () Bool)

(assert (=> b!601405 (= e!364295 e!364298)))

(declare-fun res!260157 () Bool)

(assert (=> b!601405 (=> res!260157 e!364298)))

(assert (=> b!601405 (= res!260157 call!40538)))

(declare-fun b!601406 () Bool)

(declare-fun res!260162 () Bool)

(assert (=> b!601406 (=> res!260162 e!364298)))

(assert (=> b!601406 (= res!260162 (not (isEmpty!4331 (tail!803 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))))))))

(declare-fun b!601407 () Bool)

(assert (=> b!601407 (= e!364298 (not (= (head!1274 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))) (c!111435 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!255866))))))))))

(declare-fun b!601408 () Bool)

(declare-fun res!260161 () Bool)

(assert (=> b!601408 (=> res!260161 e!364294)))

(assert (=> b!601408 (= res!260161 e!364296)))

(declare-fun res!260156 () Bool)

(assert (=> b!601408 (=> (not res!260156) (not e!364296))))

(assert (=> b!601408 (= res!260156 lt!256013)))

(declare-fun bm!40533 () Bool)

(assert (=> bm!40533 (= call!40538 (isEmpty!4331 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!255866))))))))

(assert (= (and d!211670 c!111642) b!601403))

(assert (= (and d!211670 (not c!111642)) b!601398))

(assert (= (and d!211670 c!111641) b!601397))

(assert (= (and d!211670 (not c!111641)) b!601401))

(assert (= (and b!601401 c!111643) b!601400))

(assert (= (and b!601401 (not c!111643)) b!601396))

(assert (= (and b!601396 (not res!260159)) b!601408))

(assert (= (and b!601408 res!260156) b!601395))

(assert (= (and b!601395 res!260158) b!601399))

(assert (= (and b!601399 res!260155) b!601402))

(assert (= (and b!601408 (not res!260161)) b!601404))

(assert (= (and b!601404 res!260160) b!601405))

(assert (= (and b!601405 (not res!260157)) b!601406))

(assert (= (and b!601406 (not res!260162)) b!601407))

(assert (= (or b!601397 b!601395 b!601405) bm!40533))

(assert (=> b!601402 m!865011))

(declare-fun m!865927 () Bool)

(assert (=> b!601402 m!865927))

(assert (=> b!601398 m!865011))

(assert (=> b!601398 m!865927))

(assert (=> b!601398 m!865927))

(declare-fun m!865929 () Bool)

(assert (=> b!601398 m!865929))

(assert (=> b!601398 m!865011))

(declare-fun m!865931 () Bool)

(assert (=> b!601398 m!865931))

(assert (=> b!601398 m!865929))

(assert (=> b!601398 m!865931))

(declare-fun m!865933 () Bool)

(assert (=> b!601398 m!865933))

(assert (=> bm!40533 m!865011))

(declare-fun m!865935 () Bool)

(assert (=> bm!40533 m!865935))

(assert (=> b!601399 m!865011))

(assert (=> b!601399 m!865931))

(assert (=> b!601399 m!865931))

(declare-fun m!865937 () Bool)

(assert (=> b!601399 m!865937))

(assert (=> b!601407 m!865011))

(assert (=> b!601407 m!865927))

(assert (=> d!211670 m!865011))

(assert (=> d!211670 m!865935))

(declare-fun m!865939 () Bool)

(assert (=> d!211670 m!865939))

(declare-fun m!865941 () Bool)

(assert (=> b!601403 m!865941))

(assert (=> b!601406 m!865011))

(assert (=> b!601406 m!865931))

(assert (=> b!601406 m!865931))

(assert (=> b!601406 m!865937))

(assert (=> b!600722 d!211670))

(assert (=> b!600722 d!211610))

(assert (=> b!600722 d!211622))

(assert (=> b!600722 d!211624))

(assert (=> b!600302 d!211640))

(declare-fun d!211672 () Bool)

(assert (=> d!211672 (= (isEmpty!4334 lt!255718) (not ((_ is Some!1543) lt!255718)))))

(assert (=> d!211238 d!211672))

(declare-fun b!601409 () Bool)

(declare-fun e!364300 () Bool)

(declare-fun e!364302 () Bool)

(assert (=> b!601409 (= e!364300 e!364302)))

(declare-fun c!111644 () Bool)

(assert (=> b!601409 (= c!111644 ((_ is IntegerValue!3652) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))

(declare-fun d!211674 () Bool)

(declare-fun c!111645 () Bool)

(assert (=> d!211674 (= c!111645 ((_ is IntegerValue!3651) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))

(assert (=> d!211674 (= (inv!21 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)) e!364300)))

(declare-fun b!601410 () Bool)

(assert (=> b!601410 (= e!364300 (inv!16 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))

(declare-fun b!601411 () Bool)

(declare-fun e!364301 () Bool)

(assert (=> b!601411 (= e!364301 (inv!15 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))

(declare-fun b!601412 () Bool)

(declare-fun res!260163 () Bool)

(assert (=> b!601412 (=> res!260163 e!364301)))

(assert (=> b!601412 (= res!260163 (not ((_ is IntegerValue!3653) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))))))

(assert (=> b!601412 (= e!364302 e!364301)))

(declare-fun b!601413 () Bool)

(assert (=> b!601413 (= e!364302 (inv!17 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))

(assert (= (and d!211674 c!111645) b!601410))

(assert (= (and d!211674 (not c!111645)) b!601409))

(assert (= (and b!601409 c!111644) b!601413))

(assert (= (and b!601409 (not c!111644)) b!601412))

(assert (= (and b!601412 (not res!260163)) b!601411))

(declare-fun m!865943 () Bool)

(assert (=> b!601410 m!865943))

(declare-fun m!865945 () Bool)

(assert (=> b!601411 m!865945))

(declare-fun m!865947 () Bool)

(assert (=> b!601413 m!865947))

(assert (=> tb!52347 d!211674))

(assert (=> b!600696 d!211612))

(assert (=> b!600696 d!211614))

(declare-fun d!211676 () Bool)

(declare-fun lt!256014 () Int)

(assert (=> d!211676 (>= lt!256014 0)))

(declare-fun e!364303 () Int)

(assert (=> d!211676 (= lt!256014 e!364303)))

(declare-fun c!111646 () Bool)

(assert (=> d!211676 (= c!111646 ((_ is Nil!6001) lt!255751))))

(assert (=> d!211676 (= (size!4723 lt!255751) lt!256014)))

(declare-fun b!601414 () Bool)

(assert (=> b!601414 (= e!364303 0)))

(declare-fun b!601415 () Bool)

(assert (=> b!601415 (= e!364303 (+ 1 (size!4723 (t!79818 lt!255751))))))

(assert (= (and d!211676 c!111646) b!601414))

(assert (= (and d!211676 (not c!111646)) b!601415))

(declare-fun m!865949 () Bool)

(assert (=> b!601415 m!865949))

(assert (=> b!600343 d!211676))

(assert (=> b!600343 d!211140))

(declare-fun d!211678 () Bool)

(declare-fun lt!256015 () Int)

(assert (=> d!211678 (>= lt!256015 0)))

(declare-fun e!364304 () Int)

(assert (=> d!211678 (= lt!256015 e!364304)))

(declare-fun c!111647 () Bool)

(assert (=> d!211678 (= c!111647 ((_ is Nil!6001) (_2!3706 (v!16436 lt!255719))))))

(assert (=> d!211678 (= (size!4723 (_2!3706 (v!16436 lt!255719))) lt!256015)))

(declare-fun b!601416 () Bool)

(assert (=> b!601416 (= e!364304 0)))

(declare-fun b!601417 () Bool)

(assert (=> b!601417 (= e!364304 (+ 1 (size!4723 (t!79818 (_2!3706 (v!16436 lt!255719))))))))

(assert (= (and d!211678 c!111647) b!601416))

(assert (= (and d!211678 (not c!111647)) b!601417))

(declare-fun m!865951 () Bool)

(assert (=> b!601417 m!865951))

(assert (=> b!600343 d!211678))

(declare-fun d!211680 () Bool)

(declare-fun e!364306 () Bool)

(assert (=> d!211680 e!364306))

(declare-fun res!260164 () Bool)

(assert (=> d!211680 (=> res!260164 e!364306)))

(declare-fun lt!256016 () Bool)

(assert (=> d!211680 (= res!260164 (not lt!256016))))

(declare-fun e!364307 () Bool)

(assert (=> d!211680 (= lt!256016 e!364307)))

(declare-fun res!260165 () Bool)

(assert (=> d!211680 (=> res!260165 e!364307)))

(assert (=> d!211680 (= res!260165 ((_ is Nil!6001) lt!255721))))

(assert (=> d!211680 (= (isPrefix!821 lt!255721 (++!1681 lt!255721 (_2!3706 (v!16436 lt!255719)))) lt!256016)))

(declare-fun b!601418 () Bool)

(declare-fun e!364305 () Bool)

(assert (=> b!601418 (= e!364307 e!364305)))

(declare-fun res!260166 () Bool)

(assert (=> b!601418 (=> (not res!260166) (not e!364305))))

(assert (=> b!601418 (= res!260166 (not ((_ is Nil!6001) (++!1681 lt!255721 (_2!3706 (v!16436 lt!255719))))))))

(declare-fun b!601421 () Bool)

(assert (=> b!601421 (= e!364306 (>= (size!4723 (++!1681 lt!255721 (_2!3706 (v!16436 lt!255719)))) (size!4723 lt!255721)))))

(declare-fun b!601420 () Bool)

(assert (=> b!601420 (= e!364305 (isPrefix!821 (tail!803 lt!255721) (tail!803 (++!1681 lt!255721 (_2!3706 (v!16436 lt!255719))))))))

(declare-fun b!601419 () Bool)

(declare-fun res!260167 () Bool)

(assert (=> b!601419 (=> (not res!260167) (not e!364305))))

(assert (=> b!601419 (= res!260167 (= (head!1274 lt!255721) (head!1274 (++!1681 lt!255721 (_2!3706 (v!16436 lt!255719))))))))

(assert (= (and d!211680 (not res!260165)) b!601418))

(assert (= (and b!601418 res!260166) b!601419))

(assert (= (and b!601419 res!260167) b!601420))

(assert (= (and d!211680 (not res!260164)) b!601421))

(assert (=> b!601421 m!864463))

(declare-fun m!865953 () Bool)

(assert (=> b!601421 m!865953))

(assert (=> b!601421 m!864449))

(assert (=> b!601420 m!864541))

(assert (=> b!601420 m!864463))

(declare-fun m!865955 () Bool)

(assert (=> b!601420 m!865955))

(assert (=> b!601420 m!864541))

(assert (=> b!601420 m!865955))

(declare-fun m!865957 () Bool)

(assert (=> b!601420 m!865957))

(assert (=> b!601419 m!864547))

(assert (=> b!601419 m!864463))

(declare-fun m!865959 () Bool)

(assert (=> b!601419 m!865959))

(assert (=> d!211138 d!211680))

(assert (=> d!211138 d!211102))

(declare-fun d!211682 () Bool)

(assert (=> d!211682 (isPrefix!821 lt!255721 (++!1681 lt!255721 (_2!3706 (v!16436 lt!255719))))))

(assert (=> d!211682 true))

(declare-fun _$46!984 () Unit!10922)

(assert (=> d!211682 (= (choose!4380 lt!255721 (_2!3706 (v!16436 lt!255719))) _$46!984)))

(declare-fun bs!70971 () Bool)

(assert (= bs!70971 d!211682))

(assert (=> bs!70971 m!864463))

(assert (=> bs!70971 m!864463))

(assert (=> bs!70971 m!864627))

(assert (=> d!211138 d!211682))

(assert (=> b!600641 d!211248))

(declare-fun d!211684 () Bool)

(assert (=> d!211684 (= (head!1274 input!2705) (h!11402 input!2705))))

(assert (=> b!600346 d!211684))

(declare-fun b!601422 () Bool)

(declare-fun e!364310 () Bool)

(declare-fun e!364309 () Bool)

(assert (=> b!601422 (= e!364310 e!364309)))

(declare-fun res!260170 () Bool)

(assert (=> b!601422 (=> (not res!260170) (not e!364309))))

(declare-fun lt!256017 () Option!1544)

(assert (=> b!601422 (= res!260170 (isDefined!1355 lt!256017))))

(declare-fun b!601423 () Bool)

(declare-fun res!260174 () Bool)

(assert (=> b!601423 (=> (not res!260174) (not e!364309))))

(assert (=> b!601423 (= res!260174 (= (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!256017)))) (originalCharacters!1232 (_1!3706 (get!2304 lt!256017)))))))

(declare-fun b!601424 () Bool)

(declare-fun e!364308 () Option!1544)

(declare-fun lt!256018 () Option!1544)

(declare-fun lt!256020 () Option!1544)

(assert (=> b!601424 (= e!364308 (ite (and ((_ is None!1543) lt!256018) ((_ is None!1543) lt!256020)) None!1543 (ite ((_ is None!1543) lt!256020) lt!256018 (ite ((_ is None!1543) lt!256018) lt!256020 (ite (>= (size!4722 (_1!3706 (v!16436 lt!256018))) (size!4722 (_1!3706 (v!16436 lt!256020)))) lt!256018 lt!256020)))))))

(declare-fun call!40539 () Option!1544)

(assert (=> b!601424 (= lt!256018 call!40539)))

(assert (=> b!601424 (= lt!256020 (maxPrefix!777 thiss!22590 (t!79819 (t!79819 rules!3103)) lt!255699))))

(declare-fun b!601425 () Bool)

(assert (=> b!601425 (= e!364308 call!40539)))

(declare-fun b!601426 () Bool)

(declare-fun res!260169 () Bool)

(assert (=> b!601426 (=> (not res!260169) (not e!364309))))

(assert (=> b!601426 (= res!260169 (< (size!4723 (_2!3706 (get!2304 lt!256017))) (size!4723 lt!255699)))))

(declare-fun b!601427 () Bool)

(declare-fun res!260171 () Bool)

(assert (=> b!601427 (=> (not res!260171) (not e!364309))))

(assert (=> b!601427 (= res!260171 (matchR!636 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!256017)))) (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!256017))))))))

(declare-fun b!601428 () Bool)

(declare-fun res!260168 () Bool)

(assert (=> b!601428 (=> (not res!260168) (not e!364309))))

(assert (=> b!601428 (= res!260168 (= (value!38867 (_1!3706 (get!2304 lt!256017))) (apply!1446 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!256017)))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!256017)))))))))

(declare-fun b!601429 () Bool)

(assert (=> b!601429 (= e!364309 (contains!1405 (t!79819 rules!3103) (rule!1965 (_1!3706 (get!2304 lt!256017)))))))

(declare-fun b!601430 () Bool)

(declare-fun res!260173 () Bool)

(assert (=> b!601430 (=> (not res!260173) (not e!364309))))

(assert (=> b!601430 (= res!260173 (= (++!1681 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!256017)))) (_2!3706 (get!2304 lt!256017))) lt!255699))))

(declare-fun d!211686 () Bool)

(assert (=> d!211686 e!364310))

(declare-fun res!260172 () Bool)

(assert (=> d!211686 (=> res!260172 e!364310)))

(assert (=> d!211686 (= res!260172 (isEmpty!4334 lt!256017))))

(assert (=> d!211686 (= lt!256017 e!364308)))

(declare-fun c!111648 () Bool)

(assert (=> d!211686 (= c!111648 (and ((_ is Cons!6002) (t!79819 rules!3103)) ((_ is Nil!6002) (t!79819 (t!79819 rules!3103)))))))

(declare-fun lt!256019 () Unit!10922)

(declare-fun lt!256021 () Unit!10922)

(assert (=> d!211686 (= lt!256019 lt!256021)))

(assert (=> d!211686 (isPrefix!821 lt!255699 lt!255699)))

(assert (=> d!211686 (= lt!256021 (lemmaIsPrefixRefl!557 lt!255699 lt!255699))))

(assert (=> d!211686 (rulesValidInductive!444 thiss!22590 (t!79819 rules!3103))))

(assert (=> d!211686 (= (maxPrefix!777 thiss!22590 (t!79819 rules!3103) lt!255699) lt!256017)))

(declare-fun bm!40534 () Bool)

(assert (=> bm!40534 (= call!40539 (maxPrefixOneRule!440 thiss!22590 (h!11403 (t!79819 rules!3103)) lt!255699))))

(assert (= (and d!211686 c!111648) b!601425))

(assert (= (and d!211686 (not c!111648)) b!601424))

(assert (= (or b!601425 b!601424) bm!40534))

(assert (= (and d!211686 (not res!260172)) b!601422))

(assert (= (and b!601422 res!260170) b!601423))

(assert (= (and b!601423 res!260174) b!601426))

(assert (= (and b!601426 res!260169) b!601430))

(assert (= (and b!601430 res!260173) b!601428))

(assert (= (and b!601428 res!260168) b!601427))

(assert (= (and b!601427 res!260171) b!601429))

(declare-fun m!865961 () Bool)

(assert (=> bm!40534 m!865961))

(declare-fun m!865963 () Bool)

(assert (=> b!601428 m!865963))

(declare-fun m!865965 () Bool)

(assert (=> b!601428 m!865965))

(assert (=> b!601428 m!865965))

(declare-fun m!865967 () Bool)

(assert (=> b!601428 m!865967))

(assert (=> b!601426 m!865963))

(declare-fun m!865969 () Bool)

(assert (=> b!601426 m!865969))

(assert (=> b!601426 m!864615))

(assert (=> b!601427 m!865963))

(declare-fun m!865971 () Bool)

(assert (=> b!601427 m!865971))

(assert (=> b!601427 m!865971))

(declare-fun m!865973 () Bool)

(assert (=> b!601427 m!865973))

(assert (=> b!601427 m!865973))

(declare-fun m!865975 () Bool)

(assert (=> b!601427 m!865975))

(declare-fun m!865977 () Bool)

(assert (=> b!601424 m!865977))

(assert (=> b!601423 m!865963))

(assert (=> b!601423 m!865971))

(assert (=> b!601423 m!865971))

(assert (=> b!601423 m!865973))

(assert (=> b!601429 m!865963))

(declare-fun m!865979 () Bool)

(assert (=> b!601429 m!865979))

(declare-fun m!865981 () Bool)

(assert (=> d!211686 m!865981))

(assert (=> d!211686 m!864917))

(assert (=> d!211686 m!864919))

(assert (=> d!211686 m!865723))

(assert (=> b!601430 m!865963))

(assert (=> b!601430 m!865971))

(assert (=> b!601430 m!865971))

(assert (=> b!601430 m!865973))

(assert (=> b!601430 m!865973))

(declare-fun m!865983 () Bool)

(assert (=> b!601430 m!865983))

(declare-fun m!865985 () Bool)

(assert (=> b!601422 m!865985))

(assert (=> b!600625 d!211686))

(declare-fun d!211688 () Bool)

(declare-fun charsToBigInt!0 (List!6010 Int) Int)

(assert (=> d!211688 (= (inv!15 (value!38867 token!491)) (= (charsToBigInt!0 (text!8968 (value!38867 token!491)) 0) (value!38862 (value!38867 token!491))))))

(declare-fun bs!70972 () Bool)

(assert (= bs!70972 d!211688))

(declare-fun m!865987 () Bool)

(assert (=> bs!70972 m!865987))

(assert (=> b!600711 d!211688))

(declare-fun d!211690 () Bool)

(declare-fun c!111651 () Bool)

(assert (=> d!211690 (= c!111651 ((_ is Nil!6002) rules!3103))))

(declare-fun e!364313 () (InoxSet Rule!2186))

(assert (=> d!211690 (= (content!1084 rules!3103) e!364313)))

(declare-fun b!601435 () Bool)

(assert (=> b!601435 (= e!364313 ((as const (Array Rule!2186 Bool)) false))))

(declare-fun b!601436 () Bool)

(assert (=> b!601436 (= e!364313 ((_ map or) (store ((as const (Array Rule!2186 Bool)) false) (h!11403 rules!3103) true) (content!1084 (t!79819 rules!3103))))))

(assert (= (and d!211690 c!111651) b!601435))

(assert (= (and d!211690 (not c!111651)) b!601436))

(declare-fun m!865989 () Bool)

(assert (=> b!601436 m!865989))

(declare-fun m!865991 () Bool)

(assert (=> b!601436 m!865991))

(assert (=> d!211252 d!211690))

(declare-fun d!211692 () Bool)

(assert (=> d!211692 (and (= lt!255717 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!211692 true))

(declare-fun _$50!280 () Unit!10922)

(assert (=> d!211692 (= (choose!4384 lt!255717 suffix!1342 input!2705 suffix!1342) _$50!280)))

(assert (=> d!211114 d!211692))

(assert (=> d!211114 d!211266))

(assert (=> d!211114 d!211242))

(assert (=> d!211118 d!211106))

(declare-fun d!211694 () Bool)

(assert (=> d!211694 (ruleValid!391 thiss!22590 (rule!1965 token!491))))

(assert (=> d!211694 true))

(declare-fun _$65!872 () Unit!10922)

(assert (=> d!211694 (= (choose!4383 thiss!22590 (rule!1965 token!491) rules!3103) _$65!872)))

(declare-fun bs!70973 () Bool)

(assert (= bs!70973 d!211694))

(assert (=> bs!70973 m!864453))

(assert (=> d!211118 d!211694))

(declare-fun d!211696 () Bool)

(declare-fun lt!256022 () Bool)

(assert (=> d!211696 (= lt!256022 (select (content!1084 rules!3103) (rule!1965 token!491)))))

(declare-fun e!364314 () Bool)

(assert (=> d!211696 (= lt!256022 e!364314)))

(declare-fun res!260175 () Bool)

(assert (=> d!211696 (=> (not res!260175) (not e!364314))))

(assert (=> d!211696 (= res!260175 ((_ is Cons!6002) rules!3103))))

(assert (=> d!211696 (= (contains!1405 rules!3103 (rule!1965 token!491)) lt!256022)))

(declare-fun b!601437 () Bool)

(declare-fun e!364315 () Bool)

(assert (=> b!601437 (= e!364314 e!364315)))

(declare-fun res!260176 () Bool)

(assert (=> b!601437 (=> res!260176 e!364315)))

(assert (=> b!601437 (= res!260176 (= (h!11403 rules!3103) (rule!1965 token!491)))))

(declare-fun b!601438 () Bool)

(assert (=> b!601438 (= e!364315 (contains!1405 (t!79819 rules!3103) (rule!1965 token!491)))))

(assert (= (and d!211696 res!260175) b!601437))

(assert (= (and b!601437 (not res!260176)) b!601438))

(assert (=> d!211696 m!864955))

(declare-fun m!865993 () Bool)

(assert (=> d!211696 m!865993))

(declare-fun m!865995 () Bool)

(assert (=> b!601438 m!865995))

(assert (=> d!211118 d!211696))

(assert (=> b!600629 d!211558))

(declare-fun d!211698 () Bool)

(assert (=> d!211698 (= (apply!1446 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255849))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849))))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255849))))))))

(declare-fun b_lambda!23733 () Bool)

(assert (=> (not b_lambda!23733) (not d!211698)))

(declare-fun tb!52457 () Bool)

(declare-fun t!79938 () Bool)

(assert (=> (and b!600268 (= (toValue!2088 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))) t!79938) tb!52457))

(declare-fun result!59006 () Bool)

(assert (=> tb!52457 (= result!59006 (inv!21 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849))))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255849)))))))))

(declare-fun m!865997 () Bool)

(assert (=> tb!52457 m!865997))

(assert (=> d!211698 t!79938))

(declare-fun b_and!59387 () Bool)

(assert (= b_and!59319 (and (=> t!79938 result!59006) b_and!59387)))

(declare-fun tb!52459 () Bool)

(declare-fun t!79940 () Bool)

(assert (=> (and b!600263 (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))) t!79940) tb!52459))

(declare-fun result!59008 () Bool)

(assert (= result!59008 result!59006))

(assert (=> d!211698 t!79940))

(declare-fun b_and!59389 () Bool)

(assert (= b_and!59321 (and (=> t!79940 result!59008) b_and!59389)))

(declare-fun t!79942 () Bool)

(declare-fun tb!52461 () Bool)

(assert (=> (and b!600750 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))) t!79942) tb!52461))

(declare-fun result!59010 () Bool)

(assert (= result!59010 result!59006))

(assert (=> d!211698 t!79942))

(declare-fun b_and!59391 () Bool)

(assert (= b_and!59327 (and (=> t!79942 result!59010) b_and!59391)))

(assert (=> d!211698 m!864899))

(declare-fun m!865999 () Bool)

(assert (=> d!211698 m!865999))

(assert (=> b!600629 d!211698))

(declare-fun d!211700 () Bool)

(assert (=> d!211700 (= (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255849)))) (fromListB!602 (originalCharacters!1232 (_1!3706 (get!2304 lt!255849)))))))

(declare-fun bs!70974 () Bool)

(assert (= bs!70974 d!211700))

(declare-fun m!866001 () Bool)

(assert (=> bs!70974 m!866001))

(assert (=> b!600629 d!211700))

(declare-fun d!211702 () Bool)

(declare-fun e!364318 () Bool)

(assert (=> d!211702 e!364318))

(declare-fun res!260177 () Bool)

(assert (=> d!211702 (=> res!260177 e!364318)))

(declare-fun lt!256023 () Bool)

(assert (=> d!211702 (= res!260177 (not lt!256023))))

(declare-fun e!364319 () Bool)

(assert (=> d!211702 (= lt!256023 e!364319)))

(declare-fun res!260178 () Bool)

(assert (=> d!211702 (=> res!260178 e!364319)))

(assert (=> d!211702 (= res!260178 ((_ is Nil!6001) (tail!803 lt!255721)))))

(assert (=> d!211702 (= (isPrefix!821 (tail!803 lt!255721) (tail!803 lt!255703)) lt!256023)))

(declare-fun b!601439 () Bool)

(declare-fun e!364317 () Bool)

(assert (=> b!601439 (= e!364319 e!364317)))

(declare-fun res!260179 () Bool)

(assert (=> b!601439 (=> (not res!260179) (not e!364317))))

(assert (=> b!601439 (= res!260179 (not ((_ is Nil!6001) (tail!803 lt!255703))))))

(declare-fun b!601442 () Bool)

(assert (=> b!601442 (= e!364318 (>= (size!4723 (tail!803 lt!255703)) (size!4723 (tail!803 lt!255721))))))

(declare-fun b!601441 () Bool)

(assert (=> b!601441 (= e!364317 (isPrefix!821 (tail!803 (tail!803 lt!255721)) (tail!803 (tail!803 lt!255703))))))

(declare-fun b!601440 () Bool)

(declare-fun res!260180 () Bool)

(assert (=> b!601440 (=> (not res!260180) (not e!364317))))

(assert (=> b!601440 (= res!260180 (= (head!1274 (tail!803 lt!255721)) (head!1274 (tail!803 lt!255703))))))

(assert (= (and d!211702 (not res!260178)) b!601439))

(assert (= (and b!601439 res!260179) b!601440))

(assert (= (and b!601440 res!260180) b!601441))

(assert (= (and d!211702 (not res!260177)) b!601442))

(assert (=> b!601442 m!864543))

(declare-fun m!866003 () Bool)

(assert (=> b!601442 m!866003))

(assert (=> b!601442 m!864541))

(declare-fun m!866005 () Bool)

(assert (=> b!601442 m!866005))

(assert (=> b!601441 m!864541))

(declare-fun m!866007 () Bool)

(assert (=> b!601441 m!866007))

(assert (=> b!601441 m!864543))

(declare-fun m!866009 () Bool)

(assert (=> b!601441 m!866009))

(assert (=> b!601441 m!866007))

(assert (=> b!601441 m!866009))

(declare-fun m!866011 () Bool)

(assert (=> b!601441 m!866011))

(assert (=> b!601440 m!864541))

(declare-fun m!866013 () Bool)

(assert (=> b!601440 m!866013))

(assert (=> b!601440 m!864543))

(declare-fun m!866015 () Bool)

(assert (=> b!601440 m!866015))

(assert (=> b!600328 d!211702))

(assert (=> b!600328 d!211614))

(declare-fun d!211704 () Bool)

(assert (=> d!211704 (= (tail!803 lt!255703) (t!79818 lt!255703))))

(assert (=> b!600328 d!211704))

(declare-fun d!211706 () Bool)

(assert (=> d!211706 (= suffix!1342 lt!255722)))

(assert (=> d!211706 true))

(declare-fun _$63!742 () Unit!10922)

(assert (=> d!211706 (= (choose!4385 lt!255717 suffix!1342 lt!255717 lt!255722 lt!255699) _$63!742)))

(assert (=> d!211256 d!211706))

(declare-fun d!211708 () Bool)

(declare-fun e!364321 () Bool)

(assert (=> d!211708 e!364321))

(declare-fun res!260181 () Bool)

(assert (=> d!211708 (=> res!260181 e!364321)))

(declare-fun lt!256024 () Bool)

(assert (=> d!211708 (= res!260181 (not lt!256024))))

(declare-fun e!364322 () Bool)

(assert (=> d!211708 (= lt!256024 e!364322)))

(declare-fun res!260182 () Bool)

(assert (=> d!211708 (=> res!260182 e!364322)))

(assert (=> d!211708 (= res!260182 ((_ is Nil!6001) lt!255717))))

(assert (=> d!211708 (= (isPrefix!821 lt!255717 lt!255699) lt!256024)))

(declare-fun b!601443 () Bool)

(declare-fun e!364320 () Bool)

(assert (=> b!601443 (= e!364322 e!364320)))

(declare-fun res!260183 () Bool)

(assert (=> b!601443 (=> (not res!260183) (not e!364320))))

(assert (=> b!601443 (= res!260183 (not ((_ is Nil!6001) lt!255699)))))

(declare-fun b!601446 () Bool)

(assert (=> b!601446 (= e!364321 (>= (size!4723 lt!255699) (size!4723 lt!255717)))))

(declare-fun b!601445 () Bool)

(assert (=> b!601445 (= e!364320 (isPrefix!821 (tail!803 lt!255717) (tail!803 lt!255699)))))

(declare-fun b!601444 () Bool)

(declare-fun res!260184 () Bool)

(assert (=> b!601444 (=> (not res!260184) (not e!364320))))

(assert (=> b!601444 (= res!260184 (= (head!1274 lt!255717) (head!1274 lt!255699)))))

(assert (= (and d!211708 (not res!260182)) b!601443))

(assert (= (and b!601443 res!260183) b!601444))

(assert (= (and b!601444 res!260184) b!601445))

(assert (= (and d!211708 (not res!260181)) b!601446))

(assert (=> b!601446 m!864615))

(assert (=> b!601446 m!864443))

(assert (=> b!601445 m!864605))

(assert (=> b!601445 m!864617))

(assert (=> b!601445 m!864605))

(assert (=> b!601445 m!864617))

(declare-fun m!866017 () Bool)

(assert (=> b!601445 m!866017))

(assert (=> b!601444 m!864609))

(assert (=> b!601444 m!864621))

(assert (=> d!211256 d!211708))

(declare-fun b!601447 () Bool)

(declare-fun e!364324 () List!6011)

(assert (=> b!601447 (= e!364324 suffix!1342)))

(declare-fun e!364323 () Bool)

(declare-fun lt!256025 () List!6011)

(declare-fun b!601450 () Bool)

(assert (=> b!601450 (= e!364323 (or (not (= suffix!1342 Nil!6001)) (= lt!256025 (t!79818 lt!255717))))))

(declare-fun b!601448 () Bool)

(assert (=> b!601448 (= e!364324 (Cons!6001 (h!11402 (t!79818 lt!255717)) (++!1681 (t!79818 (t!79818 lt!255717)) suffix!1342)))))

(declare-fun d!211710 () Bool)

(assert (=> d!211710 e!364323))

(declare-fun res!260185 () Bool)

(assert (=> d!211710 (=> (not res!260185) (not e!364323))))

(assert (=> d!211710 (= res!260185 (= (content!1083 lt!256025) ((_ map or) (content!1083 (t!79818 lt!255717)) (content!1083 suffix!1342))))))

(assert (=> d!211710 (= lt!256025 e!364324)))

(declare-fun c!111652 () Bool)

(assert (=> d!211710 (= c!111652 ((_ is Nil!6001) (t!79818 lt!255717)))))

(assert (=> d!211710 (= (++!1681 (t!79818 lt!255717) suffix!1342) lt!256025)))

(declare-fun b!601449 () Bool)

(declare-fun res!260186 () Bool)

(assert (=> b!601449 (=> (not res!260186) (not e!364323))))

(assert (=> b!601449 (= res!260186 (= (size!4723 lt!256025) (+ (size!4723 (t!79818 lt!255717)) (size!4723 suffix!1342))))))

(assert (= (and d!211710 c!111652) b!601447))

(assert (= (and d!211710 (not c!111652)) b!601448))

(assert (= (and d!211710 res!260185) b!601449))

(assert (= (and b!601449 res!260186) b!601450))

(declare-fun m!866019 () Bool)

(assert (=> b!601448 m!866019))

(declare-fun m!866021 () Bool)

(assert (=> d!211710 m!866021))

(declare-fun m!866023 () Bool)

(assert (=> d!211710 m!866023))

(assert (=> d!211710 m!864933))

(declare-fun m!866025 () Bool)

(assert (=> b!601449 m!866025))

(assert (=> b!601449 m!864519))

(assert (=> b!601449 m!864937))

(assert (=> b!600654 d!211710))

(declare-fun b!601451 () Bool)

(declare-fun e!364327 () Bool)

(declare-fun e!364326 () Bool)

(assert (=> b!601451 (= e!364327 e!364326)))

(declare-fun res!260189 () Bool)

(assert (=> b!601451 (=> (not res!260189) (not e!364326))))

(declare-fun lt!256026 () Option!1544)

(assert (=> b!601451 (= res!260189 (isDefined!1355 lt!256026))))

(declare-fun b!601452 () Bool)

(declare-fun res!260193 () Bool)

(assert (=> b!601452 (=> (not res!260193) (not e!364326))))

(assert (=> b!601452 (= res!260193 (= (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!256026)))) (originalCharacters!1232 (_1!3706 (get!2304 lt!256026)))))))

(declare-fun b!601453 () Bool)

(declare-fun e!364325 () Option!1544)

(declare-fun lt!256027 () Option!1544)

(declare-fun lt!256029 () Option!1544)

(assert (=> b!601453 (= e!364325 (ite (and ((_ is None!1543) lt!256027) ((_ is None!1543) lt!256029)) None!1543 (ite ((_ is None!1543) lt!256029) lt!256027 (ite ((_ is None!1543) lt!256027) lt!256029 (ite (>= (size!4722 (_1!3706 (v!16436 lt!256027))) (size!4722 (_1!3706 (v!16436 lt!256029)))) lt!256027 lt!256029)))))))

(declare-fun call!40540 () Option!1544)

(assert (=> b!601453 (= lt!256027 call!40540)))

(assert (=> b!601453 (= lt!256029 (maxPrefix!777 thiss!22590 (t!79819 (t!79819 rules!3103)) input!2705))))

(declare-fun b!601454 () Bool)

(assert (=> b!601454 (= e!364325 call!40540)))

(declare-fun b!601455 () Bool)

(declare-fun res!260188 () Bool)

(assert (=> b!601455 (=> (not res!260188) (not e!364326))))

(assert (=> b!601455 (= res!260188 (< (size!4723 (_2!3706 (get!2304 lt!256026))) (size!4723 input!2705)))))

(declare-fun b!601456 () Bool)

(declare-fun res!260190 () Bool)

(assert (=> b!601456 (=> (not res!260190) (not e!364326))))

(assert (=> b!601456 (= res!260190 (matchR!636 (regex!1193 (rule!1965 (_1!3706 (get!2304 lt!256026)))) (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!256026))))))))

(declare-fun b!601457 () Bool)

(declare-fun res!260187 () Bool)

(assert (=> b!601457 (=> (not res!260187) (not e!364326))))

(assert (=> b!601457 (= res!260187 (= (value!38867 (_1!3706 (get!2304 lt!256026))) (apply!1446 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!256026)))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!256026)))))))))

(declare-fun b!601458 () Bool)

(assert (=> b!601458 (= e!364326 (contains!1405 (t!79819 rules!3103) (rule!1965 (_1!3706 (get!2304 lt!256026)))))))

(declare-fun b!601459 () Bool)

(declare-fun res!260192 () Bool)

(assert (=> b!601459 (=> (not res!260192) (not e!364326))))

(assert (=> b!601459 (= res!260192 (= (++!1681 (list!2516 (charsOf!822 (_1!3706 (get!2304 lt!256026)))) (_2!3706 (get!2304 lt!256026))) input!2705))))

(declare-fun d!211712 () Bool)

(assert (=> d!211712 e!364327))

(declare-fun res!260191 () Bool)

(assert (=> d!211712 (=> res!260191 e!364327)))

(assert (=> d!211712 (= res!260191 (isEmpty!4334 lt!256026))))

(assert (=> d!211712 (= lt!256026 e!364325)))

(declare-fun c!111653 () Bool)

(assert (=> d!211712 (= c!111653 (and ((_ is Cons!6002) (t!79819 rules!3103)) ((_ is Nil!6002) (t!79819 (t!79819 rules!3103)))))))

(declare-fun lt!256028 () Unit!10922)

(declare-fun lt!256030 () Unit!10922)

(assert (=> d!211712 (= lt!256028 lt!256030)))

(assert (=> d!211712 (isPrefix!821 input!2705 input!2705)))

(assert (=> d!211712 (= lt!256030 (lemmaIsPrefixRefl!557 input!2705 input!2705))))

(assert (=> d!211712 (rulesValidInductive!444 thiss!22590 (t!79819 rules!3103))))

(assert (=> d!211712 (= (maxPrefix!777 thiss!22590 (t!79819 rules!3103) input!2705) lt!256026)))

(declare-fun bm!40535 () Bool)

(assert (=> bm!40535 (= call!40540 (maxPrefixOneRule!440 thiss!22590 (h!11403 (t!79819 rules!3103)) input!2705))))

(assert (= (and d!211712 c!111653) b!601454))

(assert (= (and d!211712 (not c!111653)) b!601453))

(assert (= (or b!601454 b!601453) bm!40535))

(assert (= (and d!211712 (not res!260191)) b!601451))

(assert (= (and b!601451 res!260189) b!601452))

(assert (= (and b!601452 res!260193) b!601455))

(assert (= (and b!601455 res!260188) b!601459))

(assert (= (and b!601459 res!260192) b!601457))

(assert (= (and b!601457 res!260187) b!601456))

(assert (= (and b!601456 res!260190) b!601458))

(declare-fun m!866027 () Bool)

(assert (=> bm!40535 m!866027))

(declare-fun m!866029 () Bool)

(assert (=> b!601457 m!866029))

(declare-fun m!866031 () Bool)

(assert (=> b!601457 m!866031))

(assert (=> b!601457 m!866031))

(declare-fun m!866033 () Bool)

(assert (=> b!601457 m!866033))

(assert (=> b!601455 m!866029))

(declare-fun m!866035 () Bool)

(assert (=> b!601455 m!866035))

(assert (=> b!601455 m!864527))

(assert (=> b!601456 m!866029))

(declare-fun m!866037 () Bool)

(assert (=> b!601456 m!866037))

(assert (=> b!601456 m!866037))

(declare-fun m!866039 () Bool)

(assert (=> b!601456 m!866039))

(assert (=> b!601456 m!866039))

(declare-fun m!866041 () Bool)

(assert (=> b!601456 m!866041))

(declare-fun m!866043 () Bool)

(assert (=> b!601453 m!866043))

(assert (=> b!601452 m!866029))

(assert (=> b!601452 m!866037))

(assert (=> b!601452 m!866037))

(assert (=> b!601452 m!866039))

(assert (=> b!601458 m!866029))

(declare-fun m!866045 () Bool)

(assert (=> b!601458 m!866045))

(declare-fun m!866047 () Bool)

(assert (=> d!211712 m!866047))

(assert (=> d!211712 m!864447))

(assert (=> d!211712 m!864475))

(assert (=> d!211712 m!865723))

(assert (=> b!601459 m!866029))

(assert (=> b!601459 m!866037))

(assert (=> b!601459 m!866037))

(assert (=> b!601459 m!866039))

(assert (=> b!601459 m!866039))

(declare-fun m!866049 () Bool)

(assert (=> b!601459 m!866049))

(declare-fun m!866051 () Bool)

(assert (=> b!601451 m!866051))

(assert (=> b!600719 d!211712))

(declare-fun bs!70975 () Bool)

(declare-fun d!211714 () Bool)

(assert (= bs!70975 (and d!211714 d!211146)))

(declare-fun lambda!16067 () Int)

(assert (=> bs!70975 (= (and (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (= lambda!16067 lambda!16036))))

(declare-fun bs!70976 () Bool)

(assert (= bs!70976 (and d!211714 d!211664)))

(assert (=> bs!70976 (= (and (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 token!491)))) (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 token!491))))) (= lambda!16067 lambda!16065))))

(assert (=> d!211714 true))

(assert (=> d!211714 (< (dynLambda!3474 order!4797 (toChars!1947 (transformation!1193 (h!11403 rules!3103)))) (dynLambda!3473 order!4795 lambda!16067))))

(assert (=> d!211714 true))

(assert (=> d!211714 (< (dynLambda!3472 order!4793 (toValue!2088 (transformation!1193 (h!11403 rules!3103)))) (dynLambda!3473 order!4795 lambda!16067))))

(assert (=> d!211714 (= (semiInverseModEq!475 (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (h!11403 rules!3103)))) (Forall!302 lambda!16067))))

(declare-fun bs!70977 () Bool)

(assert (= bs!70977 d!211714))

(declare-fun m!866053 () Bool)

(assert (=> bs!70977 m!866053))

(assert (=> d!211088 d!211714))

(declare-fun d!211716 () Bool)

(assert (=> d!211716 (= (isEmpty!4334 lt!255866) (not ((_ is Some!1543) lt!255866)))))

(assert (=> d!211274 d!211716))

(assert (=> d!211274 d!211104))

(assert (=> d!211274 d!211108))

(assert (=> d!211274 d!211582))

(declare-fun d!211718 () Bool)

(declare-fun e!364329 () Bool)

(assert (=> d!211718 e!364329))

(declare-fun res!260194 () Bool)

(assert (=> d!211718 (=> res!260194 e!364329)))

(declare-fun lt!256031 () Bool)

(assert (=> d!211718 (= res!260194 (not lt!256031))))

(declare-fun e!364330 () Bool)

(assert (=> d!211718 (= lt!256031 e!364330)))

(declare-fun res!260195 () Bool)

(assert (=> d!211718 (=> res!260195 e!364330)))

(assert (=> d!211718 (= res!260195 ((_ is Nil!6001) input!2705))))

(assert (=> d!211718 (= (isPrefix!821 input!2705 (++!1681 input!2705 suffix!1342)) lt!256031)))

(declare-fun b!601460 () Bool)

(declare-fun e!364328 () Bool)

(assert (=> b!601460 (= e!364330 e!364328)))

(declare-fun res!260196 () Bool)

(assert (=> b!601460 (=> (not res!260196) (not e!364328))))

(assert (=> b!601460 (= res!260196 (not ((_ is Nil!6001) (++!1681 input!2705 suffix!1342))))))

(declare-fun b!601463 () Bool)

(assert (=> b!601463 (= e!364329 (>= (size!4723 (++!1681 input!2705 suffix!1342)) (size!4723 input!2705)))))

(declare-fun b!601462 () Bool)

(assert (=> b!601462 (= e!364328 (isPrefix!821 (tail!803 input!2705) (tail!803 (++!1681 input!2705 suffix!1342))))))

(declare-fun b!601461 () Bool)

(declare-fun res!260197 () Bool)

(assert (=> b!601461 (=> (not res!260197) (not e!364328))))

(assert (=> b!601461 (= res!260197 (= (head!1274 input!2705) (head!1274 (++!1681 input!2705 suffix!1342))))))

(assert (= (and d!211718 (not res!260195)) b!601460))

(assert (= (and b!601460 res!260196) b!601461))

(assert (= (and b!601461 res!260197) b!601462))

(assert (= (and d!211718 (not res!260194)) b!601463))

(assert (=> b!601463 m!864387))

(declare-fun m!866055 () Bool)

(assert (=> b!601463 m!866055))

(assert (=> b!601463 m!864527))

(assert (=> b!601462 m!864529))

(assert (=> b!601462 m!864387))

(declare-fun m!866057 () Bool)

(assert (=> b!601462 m!866057))

(assert (=> b!601462 m!864529))

(assert (=> b!601462 m!866057))

(declare-fun m!866059 () Bool)

(assert (=> b!601462 m!866059))

(assert (=> b!601461 m!864535))

(assert (=> b!601461 m!864387))

(declare-fun m!866061 () Bool)

(assert (=> b!601461 m!866061))

(assert (=> d!211120 d!211718))

(assert (=> d!211120 d!211242))

(declare-fun d!211720 () Bool)

(assert (=> d!211720 (isPrefix!821 input!2705 (++!1681 input!2705 suffix!1342))))

(assert (=> d!211720 true))

(declare-fun _$46!985 () Unit!10922)

(assert (=> d!211720 (= (choose!4380 input!2705 suffix!1342) _$46!985)))

(declare-fun bs!70978 () Bool)

(assert (= bs!70978 d!211720))

(assert (=> bs!70978 m!864387))

(assert (=> bs!70978 m!864387))

(assert (=> bs!70978 m!864599))

(assert (=> d!211120 d!211720))

(assert (=> b!600723 d!211610))

(declare-fun d!211722 () Bool)

(assert (=> d!211722 (= (apply!1446 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255866))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866))))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255866))))))))

(declare-fun b_lambda!23735 () Bool)

(assert (=> (not b_lambda!23735) (not d!211722)))

(declare-fun t!79944 () Bool)

(declare-fun tb!52463 () Bool)

(assert (=> (and b!600268 (= (toValue!2088 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))) t!79944) tb!52463))

(declare-fun result!59012 () Bool)

(assert (=> tb!52463 (= result!59012 (inv!21 (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866))))) (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255866)))))))))

(declare-fun m!866063 () Bool)

(assert (=> tb!52463 m!866063))

(assert (=> d!211722 t!79944))

(declare-fun b_and!59393 () Bool)

(assert (= b_and!59387 (and (=> t!79944 result!59012) b_and!59393)))

(declare-fun tb!52465 () Bool)

(declare-fun t!79946 () Bool)

(assert (=> (and b!600263 (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))) t!79946) tb!52465))

(declare-fun result!59014 () Bool)

(assert (= result!59014 result!59012))

(assert (=> d!211722 t!79946))

(declare-fun b_and!59395 () Bool)

(assert (= b_and!59389 (and (=> t!79946 result!59014) b_and!59395)))

(declare-fun tb!52467 () Bool)

(declare-fun t!79948 () Bool)

(assert (=> (and b!600750 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))) t!79948) tb!52467))

(declare-fun result!59016 () Bool)

(assert (= result!59016 result!59012))

(assert (=> d!211722 t!79948))

(declare-fun b_and!59397 () Bool)

(assert (= b_and!59391 (and (=> t!79948 result!59016) b_and!59397)))

(assert (=> d!211722 m!865003))

(declare-fun m!866065 () Bool)

(assert (=> d!211722 m!866065))

(assert (=> b!600723 d!211722))

(declare-fun d!211724 () Bool)

(assert (=> d!211724 (= (seqFromList!1369 (originalCharacters!1232 (_1!3706 (get!2304 lt!255866)))) (fromListB!602 (originalCharacters!1232 (_1!3706 (get!2304 lt!255866)))))))

(declare-fun bs!70979 () Bool)

(assert (= bs!70979 d!211724))

(declare-fun m!866067 () Bool)

(assert (=> bs!70979 m!866067))

(assert (=> b!600723 d!211724))

(declare-fun d!211726 () Bool)

(declare-fun e!364332 () Bool)

(assert (=> d!211726 e!364332))

(declare-fun res!260198 () Bool)

(assert (=> d!211726 (=> (not res!260198) (not e!364332))))

(declare-fun lt!256032 () BalanceConc!3828)

(assert (=> d!211726 (= res!260198 (= (list!2516 lt!256032) lt!255717))))

(assert (=> d!211726 (= lt!256032 (BalanceConc!3829 (fromList!279 lt!255717)))))

(assert (=> d!211726 (= (fromListB!602 lt!255717) lt!256032)))

(declare-fun b!601464 () Bool)

(assert (=> b!601464 (= e!364332 (isBalanced!528 (fromList!279 lt!255717)))))

(assert (= (and d!211726 res!260198) b!601464))

(declare-fun m!866069 () Bool)

(assert (=> d!211726 m!866069))

(declare-fun m!866071 () Bool)

(assert (=> d!211726 m!866071))

(assert (=> b!601464 m!866071))

(assert (=> b!601464 m!866071))

(declare-fun m!866073 () Bool)

(assert (=> b!601464 m!866073))

(assert (=> d!211258 d!211726))

(declare-fun bs!70980 () Bool)

(declare-fun d!211728 () Bool)

(assert (= bs!70980 (and d!211728 d!211146)))

(declare-fun lambda!16068 () Int)

(assert (=> bs!70980 (= lambda!16068 lambda!16036)))

(declare-fun bs!70981 () Bool)

(assert (= bs!70981 (and d!211728 d!211664)))

(assert (=> bs!70981 (= (and (= (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (toChars!1947 (transformation!1193 (rule!1965 token!491)))) (= (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (toValue!2088 (transformation!1193 (rule!1965 token!491))))) (= lambda!16068 lambda!16065))))

(declare-fun bs!70982 () Bool)

(assert (= bs!70982 (and d!211728 d!211714)))

(assert (=> bs!70982 (= (and (= (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (toChars!1947 (transformation!1193 (h!11403 rules!3103)))) (= (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (toValue!2088 (transformation!1193 (h!11403 rules!3103))))) (= lambda!16068 lambda!16067))))

(assert (=> d!211728 true))

(assert (=> d!211728 (< (dynLambda!3474 order!4797 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (dynLambda!3473 order!4795 lambda!16068))))

(assert (=> d!211728 true))

(assert (=> d!211728 (< (dynLambda!3472 order!4793 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (dynLambda!3473 order!4795 lambda!16068))))

(assert (=> d!211728 (= (semiInverseModEq!475 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (Forall!302 lambda!16068))))

(declare-fun bs!70983 () Bool)

(assert (= bs!70983 d!211728))

(declare-fun m!866075 () Bool)

(assert (=> bs!70983 m!866075))

(assert (=> d!211100 d!211728))

(assert (=> d!211268 d!211082))

(assert (=> d!211268 d!211616))

(declare-fun d!211730 () Bool)

(assert (=> d!211730 (= (_2!3706 (v!16436 lt!255719)) lt!255711)))

(assert (=> d!211730 true))

(declare-fun _$63!743 () Unit!10922)

(assert (=> d!211730 (= (choose!4385 lt!255721 (_2!3706 (v!16436 lt!255719)) lt!255721 lt!255711 input!2705) _$63!743)))

(assert (=> d!211134 d!211730))

(declare-fun d!211732 () Bool)

(declare-fun e!364334 () Bool)

(assert (=> d!211732 e!364334))

(declare-fun res!260199 () Bool)

(assert (=> d!211732 (=> res!260199 e!364334)))

(declare-fun lt!256033 () Bool)

(assert (=> d!211732 (= res!260199 (not lt!256033))))

(declare-fun e!364335 () Bool)

(assert (=> d!211732 (= lt!256033 e!364335)))

(declare-fun res!260200 () Bool)

(assert (=> d!211732 (=> res!260200 e!364335)))

(assert (=> d!211732 (= res!260200 ((_ is Nil!6001) lt!255721))))

(assert (=> d!211732 (= (isPrefix!821 lt!255721 input!2705) lt!256033)))

(declare-fun b!601465 () Bool)

(declare-fun e!364333 () Bool)

(assert (=> b!601465 (= e!364335 e!364333)))

(declare-fun res!260201 () Bool)

(assert (=> b!601465 (=> (not res!260201) (not e!364333))))

(assert (=> b!601465 (= res!260201 (not ((_ is Nil!6001) input!2705)))))

(declare-fun b!601468 () Bool)

(assert (=> b!601468 (= e!364334 (>= (size!4723 input!2705) (size!4723 lt!255721)))))

(declare-fun b!601467 () Bool)

(assert (=> b!601467 (= e!364333 (isPrefix!821 (tail!803 lt!255721) (tail!803 input!2705)))))

(declare-fun b!601466 () Bool)

(declare-fun res!260202 () Bool)

(assert (=> b!601466 (=> (not res!260202) (not e!364333))))

(assert (=> b!601466 (= res!260202 (= (head!1274 lt!255721) (head!1274 input!2705)))))

(assert (= (and d!211732 (not res!260200)) b!601465))

(assert (= (and b!601465 res!260201) b!601466))

(assert (= (and b!601466 res!260202) b!601467))

(assert (= (and d!211732 (not res!260199)) b!601468))

(assert (=> b!601468 m!864527))

(assert (=> b!601468 m!864449))

(assert (=> b!601467 m!864541))

(assert (=> b!601467 m!864529))

(assert (=> b!601467 m!864541))

(assert (=> b!601467 m!864529))

(declare-fun m!866077 () Bool)

(assert (=> b!601467 m!866077))

(assert (=> b!601466 m!864547))

(assert (=> b!601466 m!864535))

(assert (=> d!211134 d!211732))

(assert (=> b!600360 d!211626))

(declare-fun d!211734 () Bool)

(declare-fun e!364337 () Bool)

(assert (=> d!211734 e!364337))

(declare-fun res!260203 () Bool)

(assert (=> d!211734 (=> res!260203 e!364337)))

(declare-fun lt!256034 () Bool)

(assert (=> d!211734 (= res!260203 (not lt!256034))))

(declare-fun e!364338 () Bool)

(assert (=> d!211734 (= lt!256034 e!364338)))

(declare-fun res!260204 () Bool)

(assert (=> d!211734 (=> res!260204 e!364338)))

(assert (=> d!211734 (= res!260204 ((_ is Nil!6001) (tail!803 input!2705)))))

(assert (=> d!211734 (= (isPrefix!821 (tail!803 input!2705) (tail!803 lt!255695)) lt!256034)))

(declare-fun b!601469 () Bool)

(declare-fun e!364336 () Bool)

(assert (=> b!601469 (= e!364338 e!364336)))

(declare-fun res!260205 () Bool)

(assert (=> b!601469 (=> (not res!260205) (not e!364336))))

(assert (=> b!601469 (= res!260205 (not ((_ is Nil!6001) (tail!803 lt!255695))))))

(declare-fun b!601472 () Bool)

(assert (=> b!601472 (= e!364337 (>= (size!4723 (tail!803 lt!255695)) (size!4723 (tail!803 input!2705))))))

(declare-fun b!601471 () Bool)

(assert (=> b!601471 (= e!364336 (isPrefix!821 (tail!803 (tail!803 input!2705)) (tail!803 (tail!803 lt!255695))))))

(declare-fun b!601470 () Bool)

(declare-fun res!260206 () Bool)

(assert (=> b!601470 (=> (not res!260206) (not e!364336))))

(assert (=> b!601470 (= res!260206 (= (head!1274 (tail!803 input!2705)) (head!1274 (tail!803 lt!255695))))))

(assert (= (and d!211734 (not res!260204)) b!601469))

(assert (= (and b!601469 res!260205) b!601470))

(assert (= (and b!601470 res!260206) b!601471))

(assert (= (and d!211734 (not res!260203)) b!601472))

(assert (=> b!601472 m!864531))

(assert (=> b!601472 m!865857))

(assert (=> b!601472 m!864529))

(assert (=> b!601472 m!865703))

(assert (=> b!601471 m!864529))

(assert (=> b!601471 m!865705))

(assert (=> b!601471 m!864531))

(assert (=> b!601471 m!865863))

(assert (=> b!601471 m!865705))

(assert (=> b!601471 m!865863))

(declare-fun m!866079 () Bool)

(assert (=> b!601471 m!866079))

(assert (=> b!601470 m!864529))

(assert (=> b!601470 m!865711))

(assert (=> b!601470 m!864531))

(assert (=> b!601470 m!865869))

(assert (=> b!600324 d!211734))

(assert (=> b!600324 d!211570))

(assert (=> b!600324 d!211632))

(assert (=> b!600697 d!211654))

(declare-fun d!211736 () Bool)

(declare-fun c!111654 () Bool)

(assert (=> d!211736 (= c!111654 ((_ is Node!1910) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719)))))))))

(declare-fun e!364339 () Bool)

(assert (=> d!211736 (= (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719)))))) e!364339)))

(declare-fun b!601473 () Bool)

(assert (=> b!601473 (= e!364339 (inv!7620 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719)))))))))

(declare-fun b!601474 () Bool)

(declare-fun e!364340 () Bool)

(assert (=> b!601474 (= e!364339 e!364340)))

(declare-fun res!260207 () Bool)

(assert (=> b!601474 (= res!260207 (not ((_ is Leaf!3014) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719))))))))))

(assert (=> b!601474 (=> res!260207 e!364340)))

(declare-fun b!601475 () Bool)

(assert (=> b!601475 (= e!364340 (inv!7621 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719)))))))))

(assert (= (and d!211736 c!111654) b!601473))

(assert (= (and d!211736 (not c!111654)) b!601474))

(assert (= (and b!601474 (not res!260207)) b!601475))

(declare-fun m!866081 () Bool)

(assert (=> b!601473 m!866081))

(declare-fun m!866083 () Bool)

(assert (=> b!601475 m!866083))

(assert (=> b!600359 d!211736))

(declare-fun b!601487 () Bool)

(declare-fun e!364346 () List!6011)

(assert (=> b!601487 (= e!364346 (++!1681 (list!2518 (left!4823 (c!111436 (charsOf!822 token!491)))) (list!2518 (right!5153 (c!111436 (charsOf!822 token!491))))))))

(declare-fun b!601485 () Bool)

(declare-fun e!364345 () List!6011)

(assert (=> b!601485 (= e!364345 e!364346)))

(declare-fun c!111660 () Bool)

(assert (=> b!601485 (= c!111660 ((_ is Leaf!3014) (c!111436 (charsOf!822 token!491))))))

(declare-fun b!601486 () Bool)

(declare-fun list!2520 (IArray!3821) List!6011)

(assert (=> b!601486 (= e!364346 (list!2520 (xs!4547 (c!111436 (charsOf!822 token!491)))))))

(declare-fun b!601484 () Bool)

(assert (=> b!601484 (= e!364345 Nil!6001)))

(declare-fun d!211738 () Bool)

(declare-fun c!111659 () Bool)

(assert (=> d!211738 (= c!111659 ((_ is Empty!1910) (c!111436 (charsOf!822 token!491))))))

(assert (=> d!211738 (= (list!2518 (c!111436 (charsOf!822 token!491))) e!364345)))

(assert (= (and d!211738 c!111659) b!601484))

(assert (= (and d!211738 (not c!111659)) b!601485))

(assert (= (and b!601485 c!111660) b!601486))

(assert (= (and b!601485 (not c!111660)) b!601487))

(declare-fun m!866085 () Bool)

(assert (=> b!601487 m!866085))

(declare-fun m!866087 () Bool)

(assert (=> b!601487 m!866087))

(assert (=> b!601487 m!866085))

(assert (=> b!601487 m!866087))

(declare-fun m!866089 () Bool)

(assert (=> b!601487 m!866089))

(declare-fun m!866091 () Bool)

(assert (=> b!601486 m!866091))

(assert (=> d!211262 d!211738))

(assert (=> b!600373 d!211684))

(declare-fun d!211740 () Bool)

(assert (=> d!211740 (= (head!1274 lt!255699) (h!11402 lt!255699))))

(assert (=> b!600373 d!211740))

(declare-fun d!211742 () Bool)

(declare-fun lt!256035 () Int)

(assert (=> d!211742 (>= lt!256035 0)))

(declare-fun e!364347 () Int)

(assert (=> d!211742 (= lt!256035 e!364347)))

(declare-fun c!111661 () Bool)

(assert (=> d!211742 (= c!111661 ((_ is Nil!6001) lt!255703))))

(assert (=> d!211742 (= (size!4723 lt!255703) lt!256035)))

(declare-fun b!601488 () Bool)

(assert (=> b!601488 (= e!364347 0)))

(declare-fun b!601489 () Bool)

(assert (=> b!601489 (= e!364347 (+ 1 (size!4723 (t!79818 lt!255703))))))

(assert (= (and d!211742 c!111661) b!601488))

(assert (= (and d!211742 (not c!111661)) b!601489))

(declare-fun m!866093 () Bool)

(assert (=> b!601489 m!866093))

(assert (=> b!600329 d!211742))

(assert (=> b!600329 d!211140))

(declare-fun d!211744 () Bool)

(declare-fun lt!256036 () Bool)

(assert (=> d!211744 (= lt!256036 (select (content!1084 rules!3103) (rule!1965 (_1!3706 (get!2304 lt!255849)))))))

(declare-fun e!364348 () Bool)

(assert (=> d!211744 (= lt!256036 e!364348)))

(declare-fun res!260208 () Bool)

(assert (=> d!211744 (=> (not res!260208) (not e!364348))))

(assert (=> d!211744 (= res!260208 ((_ is Cons!6002) rules!3103))))

(assert (=> d!211744 (= (contains!1405 rules!3103 (rule!1965 (_1!3706 (get!2304 lt!255849)))) lt!256036)))

(declare-fun b!601490 () Bool)

(declare-fun e!364349 () Bool)

(assert (=> b!601490 (= e!364348 e!364349)))

(declare-fun res!260209 () Bool)

(assert (=> b!601490 (=> res!260209 e!364349)))

(assert (=> b!601490 (= res!260209 (= (h!11403 rules!3103) (rule!1965 (_1!3706 (get!2304 lt!255849)))))))

(declare-fun b!601491 () Bool)

(assert (=> b!601491 (= e!364349 (contains!1405 (t!79819 rules!3103) (rule!1965 (_1!3706 (get!2304 lt!255849)))))))

(assert (= (and d!211744 res!260208) b!601490))

(assert (= (and b!601490 (not res!260209)) b!601491))

(assert (=> d!211744 m!864955))

(declare-fun m!866095 () Bool)

(assert (=> d!211744 m!866095))

(declare-fun m!866097 () Bool)

(assert (=> b!601491 m!866097))

(assert (=> b!600630 d!211744))

(assert (=> b!600630 d!211558))

(assert (=> d!211110 d!211116))

(declare-fun d!211746 () Bool)

(assert (=> d!211746 (ruleValid!391 thiss!22590 (rule!1965 (_1!3706 (v!16436 lt!255719))))))

(assert (=> d!211746 true))

(declare-fun _$65!873 () Unit!10922)

(assert (=> d!211746 (= (choose!4383 thiss!22590 (rule!1965 (_1!3706 (v!16436 lt!255719))) rules!3103) _$65!873)))

(declare-fun bs!70984 () Bool)

(assert (= bs!70984 d!211746))

(assert (=> bs!70984 m!864461))

(assert (=> d!211110 d!211746))

(assert (=> d!211110 d!211252))

(declare-fun d!211748 () Bool)

(declare-fun lt!256037 () Int)

(assert (=> d!211748 (>= lt!256037 0)))

(declare-fun e!364350 () Int)

(assert (=> d!211748 (= lt!256037 e!364350)))

(declare-fun c!111662 () Bool)

(assert (=> d!211748 (= c!111662 ((_ is Nil!6001) (t!79818 lt!255717)))))

(assert (=> d!211748 (= (size!4723 (t!79818 lt!255717)) lt!256037)))

(declare-fun b!601492 () Bool)

(assert (=> b!601492 (= e!364350 0)))

(declare-fun b!601493 () Bool)

(assert (=> b!601493 (= e!364350 (+ 1 (size!4723 (t!79818 (t!79818 lt!255717)))))))

(assert (= (and d!211748 c!111662) b!601492))

(assert (= (and d!211748 (not c!111662)) b!601493))

(declare-fun m!866099 () Bool)

(assert (=> b!601493 m!866099))

(assert (=> b!600311 d!211748))

(declare-fun d!211750 () Bool)

(assert (=> d!211750 (= (inv!7617 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))) (isBalanced!528 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))))

(declare-fun bs!70985 () Bool)

(assert (= bs!70985 d!211750))

(declare-fun m!866101 () Bool)

(assert (=> bs!70985 m!866101))

(assert (=> tb!52381 d!211750))

(declare-fun d!211752 () Bool)

(declare-fun e!364352 () Bool)

(assert (=> d!211752 e!364352))

(declare-fun res!260210 () Bool)

(assert (=> d!211752 (=> res!260210 e!364352)))

(declare-fun lt!256038 () Bool)

(assert (=> d!211752 (= res!260210 (not lt!256038))))

(declare-fun e!364353 () Bool)

(assert (=> d!211752 (= lt!256038 e!364353)))

(declare-fun res!260211 () Bool)

(assert (=> d!211752 (=> res!260211 e!364353)))

(assert (=> d!211752 (= res!260211 ((_ is Nil!6001) (tail!803 input!2705)))))

(assert (=> d!211752 (= (isPrefix!821 (tail!803 input!2705) (tail!803 input!2705)) lt!256038)))

(declare-fun b!601494 () Bool)

(declare-fun e!364351 () Bool)

(assert (=> b!601494 (= e!364353 e!364351)))

(declare-fun res!260212 () Bool)

(assert (=> b!601494 (=> (not res!260212) (not e!364351))))

(assert (=> b!601494 (= res!260212 (not ((_ is Nil!6001) (tail!803 input!2705))))))

(declare-fun b!601497 () Bool)

(assert (=> b!601497 (= e!364352 (>= (size!4723 (tail!803 input!2705)) (size!4723 (tail!803 input!2705))))))

(declare-fun b!601496 () Bool)

(assert (=> b!601496 (= e!364351 (isPrefix!821 (tail!803 (tail!803 input!2705)) (tail!803 (tail!803 input!2705))))))

(declare-fun b!601495 () Bool)

(declare-fun res!260213 () Bool)

(assert (=> b!601495 (=> (not res!260213) (not e!364351))))

(assert (=> b!601495 (= res!260213 (= (head!1274 (tail!803 input!2705)) (head!1274 (tail!803 input!2705))))))

(assert (= (and d!211752 (not res!260211)) b!601494))

(assert (= (and b!601494 res!260212) b!601495))

(assert (= (and b!601495 res!260213) b!601496))

(assert (= (and d!211752 (not res!260210)) b!601497))

(assert (=> b!601497 m!864529))

(assert (=> b!601497 m!865703))

(assert (=> b!601497 m!864529))

(assert (=> b!601497 m!865703))

(assert (=> b!601496 m!864529))

(assert (=> b!601496 m!865705))

(assert (=> b!601496 m!864529))

(assert (=> b!601496 m!865705))

(assert (=> b!601496 m!865705))

(assert (=> b!601496 m!865705))

(declare-fun m!866103 () Bool)

(assert (=> b!601496 m!866103))

(assert (=> b!601495 m!864529))

(assert (=> b!601495 m!865711))

(assert (=> b!601495 m!864529))

(assert (=> b!601495 m!865711))

(assert (=> b!600347 d!211752))

(assert (=> b!600347 d!211570))

(declare-fun d!211754 () Bool)

(assert (=> d!211754 (= (list!2516 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))) (list!2518 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))))))

(declare-fun bs!70986 () Bool)

(assert (= bs!70986 d!211754))

(declare-fun m!866105 () Bool)

(assert (=> bs!70986 m!866105))

(assert (=> d!211146 d!211754))

(declare-fun d!211756 () Bool)

(assert (=> d!211756 (= (list!2516 lt!255694) (list!2518 (c!111436 lt!255694)))))

(declare-fun bs!70987 () Bool)

(assert (= bs!70987 d!211756))

(declare-fun m!866107 () Bool)

(assert (=> bs!70987 m!866107))

(assert (=> d!211146 d!211756))

(declare-fun d!211758 () Bool)

(declare-fun dynLambda!3478 (Int BalanceConc!3828) Bool)

(assert (=> d!211758 (dynLambda!3478 lambda!16036 lt!255694)))

(declare-fun lt!256041 () Unit!10922)

(declare-fun choose!4387 (Int BalanceConc!3828) Unit!10922)

(assert (=> d!211758 (= lt!256041 (choose!4387 lambda!16036 lt!255694))))

(assert (=> d!211758 (Forall!302 lambda!16036)))

(assert (=> d!211758 (= (ForallOf!116 lambda!16036 lt!255694) lt!256041)))

(declare-fun b_lambda!23737 () Bool)

(assert (=> (not b_lambda!23737) (not d!211758)))

(declare-fun bs!70988 () Bool)

(assert (= bs!70988 d!211758))

(declare-fun m!866109 () Bool)

(assert (=> bs!70988 m!866109))

(declare-fun m!866111 () Bool)

(assert (=> bs!70988 m!866111))

(declare-fun m!866113 () Bool)

(assert (=> bs!70988 m!866113))

(assert (=> d!211146 d!211758))

(declare-fun d!211760 () Bool)

(declare-fun lt!256042 () Bool)

(assert (=> d!211760 (= lt!256042 (select (content!1084 (t!79819 rules!3103)) (rule!1965 (_1!3706 (v!16436 lt!255719)))))))

(declare-fun e!364354 () Bool)

(assert (=> d!211760 (= lt!256042 e!364354)))

(declare-fun res!260214 () Bool)

(assert (=> d!211760 (=> (not res!260214) (not e!364354))))

(assert (=> d!211760 (= res!260214 ((_ is Cons!6002) (t!79819 rules!3103)))))

(assert (=> d!211760 (= (contains!1405 (t!79819 rules!3103) (rule!1965 (_1!3706 (v!16436 lt!255719)))) lt!256042)))

(declare-fun b!601498 () Bool)

(declare-fun e!364355 () Bool)

(assert (=> b!601498 (= e!364354 e!364355)))

(declare-fun res!260215 () Bool)

(assert (=> b!601498 (=> res!260215 e!364355)))

(assert (=> b!601498 (= res!260215 (= (h!11403 (t!79819 rules!3103)) (rule!1965 (_1!3706 (v!16436 lt!255719)))))))

(declare-fun b!601499 () Bool)

(assert (=> b!601499 (= e!364355 (contains!1405 (t!79819 (t!79819 rules!3103)) (rule!1965 (_1!3706 (v!16436 lt!255719)))))))

(assert (= (and d!211760 res!260214) b!601498))

(assert (= (and b!601498 (not res!260215)) b!601499))

(assert (=> d!211760 m!865991))

(declare-fun m!866115 () Bool)

(assert (=> d!211760 m!866115))

(declare-fun m!866117 () Bool)

(assert (=> b!601499 m!866117))

(assert (=> b!600650 d!211760))

(declare-fun d!211762 () Bool)

(assert (=> d!211762 (= (isDefined!1355 lt!255866) (not (isEmpty!4334 lt!255866)))))

(declare-fun bs!70989 () Bool)

(assert (= bs!70989 d!211762))

(assert (=> bs!70989 m!865019))

(assert (=> b!600717 d!211762))

(declare-fun d!211764 () Bool)

(declare-fun lt!256043 () Int)

(assert (=> d!211764 (>= lt!256043 0)))

(declare-fun e!364356 () Int)

(assert (=> d!211764 (= lt!256043 e!364356)))

(declare-fun c!111663 () Bool)

(assert (=> d!211764 (= c!111663 ((_ is Nil!6001) lt!255862))))

(assert (=> d!211764 (= (size!4723 lt!255862) lt!256043)))

(declare-fun b!601500 () Bool)

(assert (=> b!601500 (= e!364356 0)))

(declare-fun b!601501 () Bool)

(assert (=> b!601501 (= e!364356 (+ 1 (size!4723 (t!79818 lt!255862))))))

(assert (= (and d!211764 c!111663) b!601500))

(assert (= (and d!211764 (not c!111663)) b!601501))

(declare-fun m!866119 () Bool)

(assert (=> b!601501 m!866119))

(assert (=> b!600655 d!211764))

(assert (=> b!600655 d!211090))

(assert (=> b!600655 d!211662))

(declare-fun d!211766 () Bool)

(assert (=> d!211766 (= (inv!7617 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719))))) (isBalanced!528 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719)))))))))

(declare-fun bs!70990 () Bool)

(assert (= bs!70990 d!211766))

(declare-fun m!866121 () Bool)

(assert (=> bs!70990 m!866121))

(assert (=> tb!52351 d!211766))

(declare-fun d!211768 () Bool)

(assert (=> d!211768 (= (inv!7609 (tag!1455 (h!11403 (t!79819 rules!3103)))) (= (mod (str.len (value!38866 (tag!1455 (h!11403 (t!79819 rules!3103))))) 2) 0))))

(assert (=> b!600749 d!211768))

(declare-fun d!211770 () Bool)

(declare-fun res!260216 () Bool)

(declare-fun e!364357 () Bool)

(assert (=> d!211770 (=> (not res!260216) (not e!364357))))

(assert (=> d!211770 (= res!260216 (semiInverseModEq!475 (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toValue!2088 (transformation!1193 (h!11403 (t!79819 rules!3103))))))))

(assert (=> d!211770 (= (inv!7612 (transformation!1193 (h!11403 (t!79819 rules!3103)))) e!364357)))

(declare-fun b!601502 () Bool)

(assert (=> b!601502 (= e!364357 (equivClasses!458 (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toValue!2088 (transformation!1193 (h!11403 (t!79819 rules!3103))))))))

(assert (= (and d!211770 res!260216) b!601502))

(declare-fun m!866123 () Bool)

(assert (=> d!211770 m!866123))

(declare-fun m!866125 () Bool)

(assert (=> b!601502 m!866125))

(assert (=> b!600749 d!211770))

(declare-fun d!211772 () Bool)

(declare-fun c!111664 () Bool)

(assert (=> d!211772 (= c!111664 ((_ is Nil!6001) lt!255751))))

(declare-fun e!364358 () (InoxSet C!3976))

(assert (=> d!211772 (= (content!1083 lt!255751) e!364358)))

(declare-fun b!601503 () Bool)

(assert (=> b!601503 (= e!364358 ((as const (Array C!3976 Bool)) false))))

(declare-fun b!601504 () Bool)

(assert (=> b!601504 (= e!364358 ((_ map or) (store ((as const (Array C!3976 Bool)) false) (h!11402 lt!255751) true) (content!1083 (t!79818 lt!255751))))))

(assert (= (and d!211772 c!111664) b!601503))

(assert (= (and d!211772 (not c!111664)) b!601504))

(declare-fun m!866127 () Bool)

(assert (=> b!601504 m!866127))

(declare-fun m!866129 () Bool)

(assert (=> b!601504 m!866129))

(assert (=> d!211102 d!211772))

(declare-fun d!211774 () Bool)

(declare-fun c!111665 () Bool)

(assert (=> d!211774 (= c!111665 ((_ is Nil!6001) lt!255721))))

(declare-fun e!364359 () (InoxSet C!3976))

(assert (=> d!211774 (= (content!1083 lt!255721) e!364359)))

(declare-fun b!601505 () Bool)

(assert (=> b!601505 (= e!364359 ((as const (Array C!3976 Bool)) false))))

(declare-fun b!601506 () Bool)

(assert (=> b!601506 (= e!364359 ((_ map or) (store ((as const (Array C!3976 Bool)) false) (h!11402 lt!255721) true) (content!1083 (t!79818 lt!255721))))))

(assert (= (and d!211774 c!111665) b!601505))

(assert (= (and d!211774 (not c!111665)) b!601506))

(declare-fun m!866131 () Bool)

(assert (=> b!601506 m!866131))

(assert (=> b!601506 m!865885))

(assert (=> d!211102 d!211774))

(declare-fun d!211776 () Bool)

(declare-fun c!111666 () Bool)

(assert (=> d!211776 (= c!111666 ((_ is Nil!6001) (_2!3706 (v!16436 lt!255719))))))

(declare-fun e!364360 () (InoxSet C!3976))

(assert (=> d!211776 (= (content!1083 (_2!3706 (v!16436 lt!255719))) e!364360)))

(declare-fun b!601507 () Bool)

(assert (=> b!601507 (= e!364360 ((as const (Array C!3976 Bool)) false))))

(declare-fun b!601508 () Bool)

(assert (=> b!601508 (= e!364360 ((_ map or) (store ((as const (Array C!3976 Bool)) false) (h!11402 (_2!3706 (v!16436 lt!255719))) true) (content!1083 (t!79818 (_2!3706 (v!16436 lt!255719))))))))

(assert (= (and d!211776 c!111666) b!601507))

(assert (= (and d!211776 (not c!111666)) b!601508))

(declare-fun m!866133 () Bool)

(assert (=> b!601508 m!866133))

(declare-fun m!866135 () Bool)

(assert (=> b!601508 m!866135))

(assert (=> d!211102 d!211776))

(declare-fun b!601509 () Bool)

(declare-fun res!260220 () Bool)

(declare-fun e!364364 () Bool)

(assert (=> b!601509 (=> (not res!260220) (not e!364364))))

(declare-fun call!40541 () Bool)

(assert (=> b!601509 (= res!260220 (not call!40541))))

(declare-fun b!601510 () Bool)

(declare-fun res!260221 () Bool)

(declare-fun e!364362 () Bool)

(assert (=> b!601510 (=> res!260221 e!364362)))

(assert (=> b!601510 (= res!260221 (not ((_ is ElementMatch!1527) (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721)))))))

(declare-fun e!364365 () Bool)

(assert (=> b!601510 (= e!364365 e!364362)))

(declare-fun b!601511 () Bool)

(declare-fun e!364361 () Bool)

(declare-fun lt!256044 () Bool)

(assert (=> b!601511 (= e!364361 (= lt!256044 call!40541))))

(declare-fun b!601512 () Bool)

(declare-fun e!364367 () Bool)

(assert (=> b!601512 (= e!364367 (matchR!636 (derivativeStep!322 (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721)) (head!1274 (tail!803 lt!255721))) (tail!803 (tail!803 lt!255721))))))

(declare-fun b!601513 () Bool)

(declare-fun res!260217 () Bool)

(assert (=> b!601513 (=> (not res!260217) (not e!364364))))

(assert (=> b!601513 (= res!260217 (isEmpty!4331 (tail!803 (tail!803 lt!255721))))))

(declare-fun b!601514 () Bool)

(assert (=> b!601514 (= e!364365 (not lt!256044))))

(declare-fun b!601515 () Bool)

(assert (=> b!601515 (= e!364361 e!364365)))

(declare-fun c!111669 () Bool)

(assert (=> b!601515 (= c!111669 ((_ is EmptyLang!1527) (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721))))))

(declare-fun d!211778 () Bool)

(assert (=> d!211778 e!364361))

(declare-fun c!111667 () Bool)

(assert (=> d!211778 (= c!111667 ((_ is EmptyExpr!1527) (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721))))))

(assert (=> d!211778 (= lt!256044 e!364367)))

(declare-fun c!111668 () Bool)

(assert (=> d!211778 (= c!111668 (isEmpty!4331 (tail!803 lt!255721)))))

(assert (=> d!211778 (validRegex!528 (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721)))))

(assert (=> d!211778 (= (matchR!636 (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721)) (tail!803 lt!255721)) lt!256044)))

(declare-fun b!601516 () Bool)

(assert (=> b!601516 (= e!364364 (= (head!1274 (tail!803 lt!255721)) (c!111435 (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721)))))))

(declare-fun b!601517 () Bool)

(assert (=> b!601517 (= e!364367 (nullable!433 (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721))))))

(declare-fun b!601518 () Bool)

(declare-fun e!364363 () Bool)

(assert (=> b!601518 (= e!364362 e!364363)))

(declare-fun res!260222 () Bool)

(assert (=> b!601518 (=> (not res!260222) (not e!364363))))

(assert (=> b!601518 (= res!260222 (not lt!256044))))

(declare-fun b!601519 () Bool)

(declare-fun e!364366 () Bool)

(assert (=> b!601519 (= e!364363 e!364366)))

(declare-fun res!260219 () Bool)

(assert (=> b!601519 (=> res!260219 e!364366)))

(assert (=> b!601519 (= res!260219 call!40541)))

(declare-fun b!601520 () Bool)

(declare-fun res!260224 () Bool)

(assert (=> b!601520 (=> res!260224 e!364366)))

(assert (=> b!601520 (= res!260224 (not (isEmpty!4331 (tail!803 (tail!803 lt!255721)))))))

(declare-fun b!601521 () Bool)

(assert (=> b!601521 (= e!364366 (not (= (head!1274 (tail!803 lt!255721)) (c!111435 (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721))))))))

(declare-fun b!601522 () Bool)

(declare-fun res!260223 () Bool)

(assert (=> b!601522 (=> res!260223 e!364362)))

(assert (=> b!601522 (= res!260223 e!364364)))

(declare-fun res!260218 () Bool)

(assert (=> b!601522 (=> (not res!260218) (not e!364364))))

(assert (=> b!601522 (= res!260218 lt!256044)))

(declare-fun bm!40536 () Bool)

(assert (=> bm!40536 (= call!40541 (isEmpty!4331 (tail!803 lt!255721)))))

(assert (= (and d!211778 c!111668) b!601517))

(assert (= (and d!211778 (not c!111668)) b!601512))

(assert (= (and d!211778 c!111667) b!601511))

(assert (= (and d!211778 (not c!111667)) b!601515))

(assert (= (and b!601515 c!111669) b!601514))

(assert (= (and b!601515 (not c!111669)) b!601510))

(assert (= (and b!601510 (not res!260221)) b!601522))

(assert (= (and b!601522 res!260218) b!601509))

(assert (= (and b!601509 res!260220) b!601513))

(assert (= (and b!601513 res!260217) b!601516))

(assert (= (and b!601522 (not res!260223)) b!601518))

(assert (= (and b!601518 res!260222) b!601519))

(assert (= (and b!601519 (not res!260219)) b!601520))

(assert (= (and b!601520 (not res!260224)) b!601521))

(assert (= (or b!601511 b!601509 b!601519) bm!40536))

(assert (=> b!601516 m!864541))

(assert (=> b!601516 m!866013))

(assert (=> b!601512 m!864541))

(assert (=> b!601512 m!866013))

(assert (=> b!601512 m!864983))

(assert (=> b!601512 m!866013))

(declare-fun m!866137 () Bool)

(assert (=> b!601512 m!866137))

(assert (=> b!601512 m!864541))

(assert (=> b!601512 m!866007))

(assert (=> b!601512 m!866137))

(assert (=> b!601512 m!866007))

(declare-fun m!866139 () Bool)

(assert (=> b!601512 m!866139))

(assert (=> bm!40536 m!864541))

(assert (=> bm!40536 m!864987))

(assert (=> b!601513 m!864541))

(assert (=> b!601513 m!866007))

(assert (=> b!601513 m!866007))

(declare-fun m!866141 () Bool)

(assert (=> b!601513 m!866141))

(assert (=> b!601521 m!864541))

(assert (=> b!601521 m!866013))

(assert (=> d!211778 m!864541))

(assert (=> d!211778 m!864987))

(assert (=> d!211778 m!864983))

(declare-fun m!866143 () Bool)

(assert (=> d!211778 m!866143))

(assert (=> b!601517 m!864983))

(declare-fun m!866145 () Bool)

(assert (=> b!601517 m!866145))

(assert (=> b!601520 m!864541))

(assert (=> b!601520 m!866007))

(assert (=> b!601520 m!866007))

(assert (=> b!601520 m!866141))

(assert (=> b!600688 d!211778))

(declare-fun d!211780 () Bool)

(declare-fun lt!256047 () Regex!1527)

(assert (=> d!211780 (validRegex!528 lt!256047)))

(declare-fun e!364381 () Regex!1527)

(assert (=> d!211780 (= lt!256047 e!364381)))

(declare-fun c!111681 () Bool)

(assert (=> d!211780 (= c!111681 (or ((_ is EmptyExpr!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) ((_ is EmptyLang!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))))

(assert (=> d!211780 (validRegex!528 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))

(assert (=> d!211780 (= (derivativeStep!322 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))) (head!1274 lt!255721)) lt!256047)))

(declare-fun b!601543 () Bool)

(declare-fun e!364382 () Regex!1527)

(declare-fun e!364379 () Regex!1527)

(assert (=> b!601543 (= e!364382 e!364379)))

(declare-fun c!111680 () Bool)

(assert (=> b!601543 (= c!111680 ((_ is Star!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun b!601544 () Bool)

(declare-fun call!40550 () Regex!1527)

(declare-fun call!40552 () Regex!1527)

(assert (=> b!601544 (= e!364382 (Union!1527 call!40550 call!40552))))

(declare-fun b!601545 () Bool)

(declare-fun c!111682 () Bool)

(assert (=> b!601545 (= c!111682 ((_ is Union!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun e!364378 () Regex!1527)

(assert (=> b!601545 (= e!364378 e!364382)))

(declare-fun b!601546 () Bool)

(declare-fun c!111683 () Bool)

(assert (=> b!601546 (= c!111683 (nullable!433 (regOne!3566 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))))))

(declare-fun e!364380 () Regex!1527)

(assert (=> b!601546 (= e!364379 e!364380)))

(declare-fun bm!40545 () Bool)

(assert (=> bm!40545 (= call!40552 (derivativeStep!322 (ite c!111682 (regTwo!3567 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (ite c!111680 (reg!1856 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (regOne!3566 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (head!1274 lt!255721)))))

(declare-fun b!601547 () Bool)

(assert (=> b!601547 (= e!364381 EmptyLang!1527)))

(declare-fun b!601548 () Bool)

(declare-fun call!40553 () Regex!1527)

(assert (=> b!601548 (= e!364379 (Concat!2744 call!40553 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun b!601549 () Bool)

(declare-fun call!40551 () Regex!1527)

(assert (=> b!601549 (= e!364380 (Union!1527 (Concat!2744 call!40551 (regTwo!3566 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) EmptyLang!1527))))

(declare-fun bm!40546 () Bool)

(assert (=> bm!40546 (= call!40551 call!40553)))

(declare-fun b!601550 () Bool)

(assert (=> b!601550 (= e!364378 (ite (= (head!1274 lt!255721) (c!111435 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) EmptyExpr!1527 EmptyLang!1527))))

(declare-fun b!601551 () Bool)

(assert (=> b!601551 (= e!364381 e!364378)))

(declare-fun c!111684 () Bool)

(assert (=> b!601551 (= c!111684 ((_ is ElementMatch!1527) (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun bm!40547 () Bool)

(assert (=> bm!40547 (= call!40550 (derivativeStep!322 (ite c!111682 (regOne!3567 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (regTwo!3566 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) (head!1274 lt!255721)))))

(declare-fun bm!40548 () Bool)

(assert (=> bm!40548 (= call!40553 call!40552)))

(declare-fun b!601552 () Bool)

(assert (=> b!601552 (= e!364380 (Union!1527 (Concat!2744 call!40551 (regTwo!3566 (regex!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) call!40550))))

(assert (= (and d!211780 c!111681) b!601547))

(assert (= (and d!211780 (not c!111681)) b!601551))

(assert (= (and b!601551 c!111684) b!601550))

(assert (= (and b!601551 (not c!111684)) b!601545))

(assert (= (and b!601545 c!111682) b!601544))

(assert (= (and b!601545 (not c!111682)) b!601543))

(assert (= (and b!601543 c!111680) b!601548))

(assert (= (and b!601543 (not c!111680)) b!601546))

(assert (= (and b!601546 c!111683) b!601552))

(assert (= (and b!601546 (not c!111683)) b!601549))

(assert (= (or b!601552 b!601549) bm!40546))

(assert (= (or b!601548 bm!40546) bm!40548))

(assert (= (or b!601544 bm!40548) bm!40545))

(assert (= (or b!601544 b!601552) bm!40547))

(declare-fun m!866147 () Bool)

(assert (=> d!211780 m!866147))

(assert (=> d!211780 m!864591))

(declare-fun m!866149 () Bool)

(assert (=> b!601546 m!866149))

(assert (=> bm!40545 m!864547))

(declare-fun m!866151 () Bool)

(assert (=> bm!40545 m!866151))

(assert (=> bm!40547 m!864547))

(declare-fun m!866153 () Bool)

(assert (=> bm!40547 m!866153))

(assert (=> b!600688 d!211780))

(assert (=> b!600688 d!211654))

(assert (=> b!600688 d!211614))

(declare-fun d!211782 () Bool)

(declare-fun lt!256048 () Int)

(assert (=> d!211782 (>= lt!256048 0)))

(declare-fun e!364383 () Int)

(assert (=> d!211782 (= lt!256048 e!364383)))

(declare-fun c!111685 () Bool)

(assert (=> d!211782 (= c!111685 ((_ is Nil!6001) (t!79818 lt!255721)))))

(assert (=> d!211782 (= (size!4723 (t!79818 lt!255721)) lt!256048)))

(declare-fun b!601553 () Bool)

(assert (=> b!601553 (= e!364383 0)))

(declare-fun b!601554 () Bool)

(assert (=> b!601554 (= e!364383 (+ 1 (size!4723 (t!79818 (t!79818 lt!255721)))))))

(assert (= (and d!211782 c!111685) b!601553))

(assert (= (and d!211782 (not c!111685)) b!601554))

(declare-fun m!866155 () Bool)

(assert (=> b!601554 m!866155))

(assert (=> b!600378 d!211782))

(declare-fun b!601555 () Bool)

(declare-fun e!364385 () List!6011)

(assert (=> b!601555 (= e!364385 lt!255859)))

(declare-fun lt!256049 () List!6011)

(declare-fun e!364384 () Bool)

(declare-fun b!601558 () Bool)

(assert (=> b!601558 (= e!364384 (or (not (= lt!255859 Nil!6001)) (= lt!256049 lt!255717)))))

(declare-fun b!601556 () Bool)

(assert (=> b!601556 (= e!364385 (Cons!6001 (h!11402 lt!255717) (++!1681 (t!79818 lt!255717) lt!255859)))))

(declare-fun d!211784 () Bool)

(assert (=> d!211784 e!364384))

(declare-fun res!260225 () Bool)

(assert (=> d!211784 (=> (not res!260225) (not e!364384))))

(assert (=> d!211784 (= res!260225 (= (content!1083 lt!256049) ((_ map or) (content!1083 lt!255717) (content!1083 lt!255859))))))

(assert (=> d!211784 (= lt!256049 e!364385)))

(declare-fun c!111686 () Bool)

(assert (=> d!211784 (= c!111686 ((_ is Nil!6001) lt!255717))))

(assert (=> d!211784 (= (++!1681 lt!255717 lt!255859) lt!256049)))

(declare-fun b!601557 () Bool)

(declare-fun res!260226 () Bool)

(assert (=> b!601557 (=> (not res!260226) (not e!364384))))

(assert (=> b!601557 (= res!260226 (= (size!4723 lt!256049) (+ (size!4723 lt!255717) (size!4723 lt!255859))))))

(assert (= (and d!211784 c!111686) b!601555))

(assert (= (and d!211784 (not c!111686)) b!601556))

(assert (= (and d!211784 res!260225) b!601557))

(assert (= (and b!601557 res!260226) b!601558))

(declare-fun m!866157 () Bool)

(assert (=> b!601556 m!866157))

(declare-fun m!866159 () Bool)

(assert (=> d!211784 m!866159))

(assert (=> d!211784 m!864979))

(declare-fun m!866161 () Bool)

(assert (=> d!211784 m!866161))

(declare-fun m!866163 () Bool)

(assert (=> b!601557 m!866163))

(assert (=> b!601557 m!864443))

(declare-fun m!866165 () Bool)

(assert (=> b!601557 m!866165))

(assert (=> d!211254 d!211784))

(assert (=> d!211254 d!211560))

(assert (=> d!211254 d!211090))

(declare-fun d!211786 () Bool)

(declare-fun lt!256050 () Bool)

(assert (=> d!211786 (= lt!256050 (select (content!1084 rules!3103) (rule!1965 (_1!3706 (get!2304 lt!255866)))))))

(declare-fun e!364386 () Bool)

(assert (=> d!211786 (= lt!256050 e!364386)))

(declare-fun res!260227 () Bool)

(assert (=> d!211786 (=> (not res!260227) (not e!364386))))

(assert (=> d!211786 (= res!260227 ((_ is Cons!6002) rules!3103))))

(assert (=> d!211786 (= (contains!1405 rules!3103 (rule!1965 (_1!3706 (get!2304 lt!255866)))) lt!256050)))

(declare-fun b!601559 () Bool)

(declare-fun e!364387 () Bool)

(assert (=> b!601559 (= e!364386 e!364387)))

(declare-fun res!260228 () Bool)

(assert (=> b!601559 (=> res!260228 e!364387)))

(assert (=> b!601559 (= res!260228 (= (h!11403 rules!3103) (rule!1965 (_1!3706 (get!2304 lt!255866)))))))

(declare-fun b!601560 () Bool)

(assert (=> b!601560 (= e!364387 (contains!1405 (t!79819 rules!3103) (rule!1965 (_1!3706 (get!2304 lt!255866)))))))

(assert (= (and d!211786 res!260227) b!601559))

(assert (= (and b!601559 (not res!260228)) b!601560))

(assert (=> d!211786 m!864955))

(declare-fun m!866167 () Bool)

(assert (=> d!211786 m!866167))

(declare-fun m!866169 () Bool)

(assert (=> b!601560 m!866169))

(assert (=> b!600724 d!211786))

(assert (=> b!600724 d!211610))

(declare-fun b!601564 () Bool)

(declare-fun e!364389 () List!6011)

(assert (=> b!601564 (= e!364389 (++!1681 (list!2518 (left!4823 (c!111436 (charsOf!822 (_1!3706 (v!16436 lt!255719)))))) (list!2518 (right!5153 (c!111436 (charsOf!822 (_1!3706 (v!16436 lt!255719))))))))))

(declare-fun b!601562 () Bool)

(declare-fun e!364388 () List!6011)

(assert (=> b!601562 (= e!364388 e!364389)))

(declare-fun c!111688 () Bool)

(assert (=> b!601562 (= c!111688 ((_ is Leaf!3014) (c!111436 (charsOf!822 (_1!3706 (v!16436 lt!255719))))))))

(declare-fun b!601563 () Bool)

(assert (=> b!601563 (= e!364389 (list!2520 (xs!4547 (c!111436 (charsOf!822 (_1!3706 (v!16436 lt!255719)))))))))

(declare-fun b!601561 () Bool)

(assert (=> b!601561 (= e!364388 Nil!6001)))

(declare-fun d!211788 () Bool)

(declare-fun c!111687 () Bool)

(assert (=> d!211788 (= c!111687 ((_ is Empty!1910) (c!111436 (charsOf!822 (_1!3706 (v!16436 lt!255719))))))))

(assert (=> d!211788 (= (list!2518 (c!111436 (charsOf!822 (_1!3706 (v!16436 lt!255719))))) e!364388)))

(assert (= (and d!211788 c!111687) b!601561))

(assert (= (and d!211788 (not c!111687)) b!601562))

(assert (= (and b!601562 c!111688) b!601563))

(assert (= (and b!601562 (not c!111688)) b!601564))

(declare-fun m!866171 () Bool)

(assert (=> b!601564 m!866171))

(declare-fun m!866173 () Bool)

(assert (=> b!601564 m!866173))

(assert (=> b!601564 m!866171))

(assert (=> b!601564 m!866173))

(declare-fun m!866175 () Bool)

(assert (=> b!601564 m!866175))

(declare-fun m!866177 () Bool)

(assert (=> b!601563 m!866177))

(assert (=> d!211142 d!211788))

(assert (=> b!600692 d!211654))

(declare-fun d!211790 () Bool)

(declare-fun lt!256051 () Int)

(assert (=> d!211790 (>= lt!256051 0)))

(declare-fun e!364390 () Int)

(assert (=> d!211790 (= lt!256051 e!364390)))

(declare-fun c!111689 () Bool)

(assert (=> d!211790 (= c!111689 ((_ is Nil!6001) (t!79818 (originalCharacters!1232 token!491))))))

(assert (=> d!211790 (= (size!4723 (t!79818 (originalCharacters!1232 token!491))) lt!256051)))

(declare-fun b!601565 () Bool)

(assert (=> b!601565 (= e!364390 0)))

(declare-fun b!601566 () Bool)

(assert (=> b!601566 (= e!364390 (+ 1 (size!4723 (t!79818 (t!79818 (originalCharacters!1232 token!491))))))))

(assert (= (and d!211790 c!111689) b!601565))

(assert (= (and d!211790 (not c!111689)) b!601566))

(declare-fun m!866179 () Bool)

(assert (=> b!601566 m!866179))

(assert (=> b!600644 d!211790))

(assert (=> b!600323 d!211684))

(declare-fun d!211792 () Bool)

(assert (=> d!211792 (= (head!1274 lt!255695) (h!11402 lt!255695))))

(assert (=> b!600323 d!211792))

(declare-fun d!211794 () Bool)

(declare-fun lt!256052 () List!6011)

(assert (=> d!211794 (= (++!1681 (t!79818 lt!255717) lt!256052) (tail!803 lt!255699))))

(declare-fun e!364391 () List!6011)

(assert (=> d!211794 (= lt!256052 e!364391)))

(declare-fun c!111690 () Bool)

(assert (=> d!211794 (= c!111690 ((_ is Cons!6001) (t!79818 lt!255717)))))

(assert (=> d!211794 (>= (size!4723 (tail!803 lt!255699)) (size!4723 (t!79818 lt!255717)))))

(assert (=> d!211794 (= (getSuffix!338 (tail!803 lt!255699) (t!79818 lt!255717)) lt!256052)))

(declare-fun b!601567 () Bool)

(assert (=> b!601567 (= e!364391 (getSuffix!338 (tail!803 (tail!803 lt!255699)) (t!79818 (t!79818 lt!255717))))))

(declare-fun b!601568 () Bool)

(assert (=> b!601568 (= e!364391 (tail!803 lt!255699))))

(assert (= (and d!211794 c!111690) b!601567))

(assert (= (and d!211794 (not c!111690)) b!601568))

(declare-fun m!866181 () Bool)

(assert (=> d!211794 m!866181))

(assert (=> d!211794 m!864617))

(assert (=> d!211794 m!865701))

(assert (=> d!211794 m!864519))

(assert (=> b!601567 m!864617))

(assert (=> b!601567 m!865707))

(assert (=> b!601567 m!865707))

(declare-fun m!866183 () Bool)

(assert (=> b!601567 m!866183))

(assert (=> b!600651 d!211794))

(assert (=> b!600651 d!211572))

(assert (=> d!211132 d!211664))

(declare-fun d!211796 () Bool)

(assert (=> d!211796 (= (head!1274 lt!255717) (h!11402 lt!255717))))

(assert (=> b!600363 d!211796))

(assert (=> b!600363 d!211792))

(declare-fun d!211798 () Bool)

(declare-fun c!111691 () Bool)

(assert (=> d!211798 (= c!111691 ((_ is Nil!6001) lt!255862))))

(declare-fun e!364392 () (InoxSet C!3976))

(assert (=> d!211798 (= (content!1083 lt!255862) e!364392)))

(declare-fun b!601569 () Bool)

(assert (=> b!601569 (= e!364392 ((as const (Array C!3976 Bool)) false))))

(declare-fun b!601570 () Bool)

(assert (=> b!601570 (= e!364392 ((_ map or) (store ((as const (Array C!3976 Bool)) false) (h!11402 lt!255862) true) (content!1083 (t!79818 lt!255862))))))

(assert (= (and d!211798 c!111691) b!601569))

(assert (= (and d!211798 (not c!111691)) b!601570))

(declare-fun m!866185 () Bool)

(assert (=> b!601570 m!866185))

(declare-fun m!866187 () Bool)

(assert (=> b!601570 m!866187))

(assert (=> d!211266 d!211798))

(declare-fun d!211800 () Bool)

(declare-fun c!111692 () Bool)

(assert (=> d!211800 (= c!111692 ((_ is Nil!6001) lt!255717))))

(declare-fun e!364393 () (InoxSet C!3976))

(assert (=> d!211800 (= (content!1083 lt!255717) e!364393)))

(declare-fun b!601571 () Bool)

(assert (=> b!601571 (= e!364393 ((as const (Array C!3976 Bool)) false))))

(declare-fun b!601572 () Bool)

(assert (=> b!601572 (= e!364393 ((_ map or) (store ((as const (Array C!3976 Bool)) false) (h!11402 lt!255717) true) (content!1083 (t!79818 lt!255717))))))

(assert (= (and d!211800 c!111692) b!601571))

(assert (= (and d!211800 (not c!111692)) b!601572))

(declare-fun m!866189 () Bool)

(assert (=> b!601572 m!866189))

(assert (=> b!601572 m!866023))

(assert (=> d!211266 d!211800))

(assert (=> d!211266 d!211428))

(declare-fun b!601573 () Bool)

(declare-fun e!364394 () Bool)

(declare-fun tp!187176 () Bool)

(assert (=> b!601573 (= e!364394 (and tp_is_empty!3409 tp!187176))))

(assert (=> b!600760 (= tp!187093 e!364394)))

(assert (= (and b!600760 ((_ is Cons!6001) (t!79818 (t!79818 suffix!1342)))) b!601573))

(declare-fun e!364395 () Bool)

(assert (=> b!600749 (= tp!187084 e!364395)))

(declare-fun b!601574 () Bool)

(assert (=> b!601574 (= e!364395 tp_is_empty!3409)))

(declare-fun b!601575 () Bool)

(declare-fun tp!187179 () Bool)

(declare-fun tp!187181 () Bool)

(assert (=> b!601575 (= e!364395 (and tp!187179 tp!187181))))

(declare-fun b!601576 () Bool)

(declare-fun tp!187177 () Bool)

(assert (=> b!601576 (= e!364395 tp!187177)))

(declare-fun b!601577 () Bool)

(declare-fun tp!187180 () Bool)

(declare-fun tp!187178 () Bool)

(assert (=> b!601577 (= e!364395 (and tp!187180 tp!187178))))

(assert (= (and b!600749 ((_ is ElementMatch!1527) (regex!1193 (h!11403 (t!79819 rules!3103))))) b!601574))

(assert (= (and b!600749 ((_ is Concat!2744) (regex!1193 (h!11403 (t!79819 rules!3103))))) b!601575))

(assert (= (and b!600749 ((_ is Star!1527) (regex!1193 (h!11403 (t!79819 rules!3103))))) b!601576))

(assert (= (and b!600749 ((_ is Union!1527) (regex!1193 (h!11403 (t!79819 rules!3103))))) b!601577))

(declare-fun e!364400 () Bool)

(declare-fun tp!187190 () Bool)

(declare-fun tp!187189 () Bool)

(declare-fun b!601586 () Bool)

(assert (=> b!601586 (= e!364400 (and (inv!7616 (left!4823 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))))) tp!187190 (inv!7616 (right!5153 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))))) tp!187189))))

(declare-fun b!601588 () Bool)

(declare-fun e!364401 () Bool)

(declare-fun tp!187188 () Bool)

(assert (=> b!601588 (= e!364401 tp!187188)))

(declare-fun b!601587 () Bool)

(declare-fun inv!7623 (IArray!3821) Bool)

(assert (=> b!601587 (= e!364400 (and (inv!7623 (xs!4547 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))))) e!364401))))

(assert (=> b!600604 (= tp!187056 (and (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694)))) e!364400))))

(assert (= (and b!600604 ((_ is Node!1910) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))))) b!601586))

(assert (= b!601587 b!601588))

(assert (= (and b!600604 ((_ is Leaf!3014) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))))) b!601587))

(declare-fun m!866191 () Bool)

(assert (=> b!601586 m!866191))

(declare-fun m!866193 () Bool)

(assert (=> b!601586 m!866193))

(declare-fun m!866195 () Bool)

(assert (=> b!601587 m!866195))

(assert (=> b!600604 m!864881))

(declare-fun e!364402 () Bool)

(assert (=> b!600752 (= tp!187087 e!364402)))

(declare-fun b!601589 () Bool)

(assert (=> b!601589 (= e!364402 tp_is_empty!3409)))

(declare-fun b!601590 () Bool)

(declare-fun tp!187193 () Bool)

(declare-fun tp!187195 () Bool)

(assert (=> b!601590 (= e!364402 (and tp!187193 tp!187195))))

(declare-fun b!601591 () Bool)

(declare-fun tp!187191 () Bool)

(assert (=> b!601591 (= e!364402 tp!187191)))

(declare-fun b!601592 () Bool)

(declare-fun tp!187194 () Bool)

(declare-fun tp!187192 () Bool)

(assert (=> b!601592 (= e!364402 (and tp!187194 tp!187192))))

(assert (= (and b!600752 ((_ is ElementMatch!1527) (regOne!3566 (regex!1193 (h!11403 rules!3103))))) b!601589))

(assert (= (and b!600752 ((_ is Concat!2744) (regOne!3566 (regex!1193 (h!11403 rules!3103))))) b!601590))

(assert (= (and b!600752 ((_ is Star!1527) (regOne!3566 (regex!1193 (h!11403 rules!3103))))) b!601591))

(assert (= (and b!600752 ((_ is Union!1527) (regOne!3566 (regex!1193 (h!11403 rules!3103))))) b!601592))

(declare-fun e!364403 () Bool)

(assert (=> b!600752 (= tp!187089 e!364403)))

(declare-fun b!601593 () Bool)

(assert (=> b!601593 (= e!364403 tp_is_empty!3409)))

(declare-fun b!601594 () Bool)

(declare-fun tp!187198 () Bool)

(declare-fun tp!187200 () Bool)

(assert (=> b!601594 (= e!364403 (and tp!187198 tp!187200))))

(declare-fun b!601595 () Bool)

(declare-fun tp!187196 () Bool)

(assert (=> b!601595 (= e!364403 tp!187196)))

(declare-fun b!601596 () Bool)

(declare-fun tp!187199 () Bool)

(declare-fun tp!187197 () Bool)

(assert (=> b!601596 (= e!364403 (and tp!187199 tp!187197))))

(assert (= (and b!600752 ((_ is ElementMatch!1527) (regTwo!3566 (regex!1193 (h!11403 rules!3103))))) b!601593))

(assert (= (and b!600752 ((_ is Concat!2744) (regTwo!3566 (regex!1193 (h!11403 rules!3103))))) b!601594))

(assert (= (and b!600752 ((_ is Star!1527) (regTwo!3566 (regex!1193 (h!11403 rules!3103))))) b!601595))

(assert (= (and b!600752 ((_ is Union!1527) (regTwo!3566 (regex!1193 (h!11403 rules!3103))))) b!601596))

(declare-fun b!601597 () Bool)

(declare-fun e!364404 () Bool)

(declare-fun tp!187202 () Bool)

(declare-fun tp!187203 () Bool)

(assert (=> b!601597 (= e!364404 (and (inv!7616 (left!4823 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491))))) tp!187203 (inv!7616 (right!5153 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491))))) tp!187202))))

(declare-fun b!601599 () Bool)

(declare-fun e!364405 () Bool)

(declare-fun tp!187201 () Bool)

(assert (=> b!601599 (= e!364405 tp!187201)))

(declare-fun b!601598 () Bool)

(assert (=> b!601598 (= e!364404 (and (inv!7623 (xs!4547 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491))))) e!364405))))

(assert (=> b!600642 (= tp!187057 (and (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491)))) e!364404))))

(assert (= (and b!600642 ((_ is Node!1910) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491))))) b!601597))

(assert (= b!601598 b!601599))

(assert (= (and b!600642 ((_ is Leaf!3014) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 token!491))) (value!38867 token!491))))) b!601598))

(declare-fun m!866197 () Bool)

(assert (=> b!601597 m!866197))

(declare-fun m!866199 () Bool)

(assert (=> b!601597 m!866199))

(declare-fun m!866201 () Bool)

(assert (=> b!601598 m!866201))

(assert (=> b!600642 m!864939))

(declare-fun b!601600 () Bool)

(declare-fun e!364406 () Bool)

(declare-fun tp!187204 () Bool)

(assert (=> b!601600 (= e!364406 (and tp_is_empty!3409 tp!187204))))

(assert (=> b!600761 (= tp!187094 e!364406)))

(assert (= (and b!600761 ((_ is Cons!6001) (t!79818 (originalCharacters!1232 token!491)))) b!601600))

(declare-fun e!364407 () Bool)

(assert (=> b!600753 (= tp!187085 e!364407)))

(declare-fun b!601601 () Bool)

(assert (=> b!601601 (= e!364407 tp_is_empty!3409)))

(declare-fun b!601602 () Bool)

(declare-fun tp!187207 () Bool)

(declare-fun tp!187209 () Bool)

(assert (=> b!601602 (= e!364407 (and tp!187207 tp!187209))))

(declare-fun b!601603 () Bool)

(declare-fun tp!187205 () Bool)

(assert (=> b!601603 (= e!364407 tp!187205)))

(declare-fun b!601604 () Bool)

(declare-fun tp!187208 () Bool)

(declare-fun tp!187206 () Bool)

(assert (=> b!601604 (= e!364407 (and tp!187208 tp!187206))))

(assert (= (and b!600753 ((_ is ElementMatch!1527) (reg!1856 (regex!1193 (h!11403 rules!3103))))) b!601601))

(assert (= (and b!600753 ((_ is Concat!2744) (reg!1856 (regex!1193 (h!11403 rules!3103))))) b!601602))

(assert (= (and b!600753 ((_ is Star!1527) (reg!1856 (regex!1193 (h!11403 rules!3103))))) b!601603))

(assert (= (and b!600753 ((_ is Union!1527) (reg!1856 (regex!1193 (h!11403 rules!3103))))) b!601604))

(declare-fun e!364408 () Bool)

(assert (=> b!600737 (= tp!187070 e!364408)))

(declare-fun b!601605 () Bool)

(assert (=> b!601605 (= e!364408 tp_is_empty!3409)))

(declare-fun b!601606 () Bool)

(declare-fun tp!187212 () Bool)

(declare-fun tp!187214 () Bool)

(assert (=> b!601606 (= e!364408 (and tp!187212 tp!187214))))

(declare-fun b!601607 () Bool)

(declare-fun tp!187210 () Bool)

(assert (=> b!601607 (= e!364408 tp!187210)))

(declare-fun b!601608 () Bool)

(declare-fun tp!187213 () Bool)

(declare-fun tp!187211 () Bool)

(assert (=> b!601608 (= e!364408 (and tp!187213 tp!187211))))

(assert (= (and b!600737 ((_ is ElementMatch!1527) (regOne!3566 (regex!1193 (rule!1965 token!491))))) b!601605))

(assert (= (and b!600737 ((_ is Concat!2744) (regOne!3566 (regex!1193 (rule!1965 token!491))))) b!601606))

(assert (= (and b!600737 ((_ is Star!1527) (regOne!3566 (regex!1193 (rule!1965 token!491))))) b!601607))

(assert (= (and b!600737 ((_ is Union!1527) (regOne!3566 (regex!1193 (rule!1965 token!491))))) b!601608))

(declare-fun e!364409 () Bool)

(assert (=> b!600737 (= tp!187072 e!364409)))

(declare-fun b!601609 () Bool)

(assert (=> b!601609 (= e!364409 tp_is_empty!3409)))

(declare-fun b!601610 () Bool)

(declare-fun tp!187217 () Bool)

(declare-fun tp!187219 () Bool)

(assert (=> b!601610 (= e!364409 (and tp!187217 tp!187219))))

(declare-fun b!601611 () Bool)

(declare-fun tp!187215 () Bool)

(assert (=> b!601611 (= e!364409 tp!187215)))

(declare-fun b!601612 () Bool)

(declare-fun tp!187218 () Bool)

(declare-fun tp!187216 () Bool)

(assert (=> b!601612 (= e!364409 (and tp!187218 tp!187216))))

(assert (= (and b!600737 ((_ is ElementMatch!1527) (regTwo!3566 (regex!1193 (rule!1965 token!491))))) b!601609))

(assert (= (and b!600737 ((_ is Concat!2744) (regTwo!3566 (regex!1193 (rule!1965 token!491))))) b!601610))

(assert (= (and b!600737 ((_ is Star!1527) (regTwo!3566 (regex!1193 (rule!1965 token!491))))) b!601611))

(assert (= (and b!600737 ((_ is Union!1527) (regTwo!3566 (regex!1193 (rule!1965 token!491))))) b!601612))

(declare-fun tp!187221 () Bool)

(declare-fun e!364410 () Bool)

(declare-fun tp!187222 () Bool)

(declare-fun b!601613 () Bool)

(assert (=> b!601613 (= e!364410 (and (inv!7616 (left!4823 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719))))))) tp!187222 (inv!7616 (right!5153 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719))))))) tp!187221))))

(declare-fun b!601615 () Bool)

(declare-fun e!364411 () Bool)

(declare-fun tp!187220 () Bool)

(assert (=> b!601615 (= e!364411 tp!187220)))

(declare-fun b!601614 () Bool)

(assert (=> b!601614 (= e!364410 (and (inv!7623 (xs!4547 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719))))))) e!364411))))

(assert (=> b!600359 (= tp!187013 (and (inv!7616 (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719)))))) e!364410))))

(assert (= (and b!600359 ((_ is Node!1910) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719))))))) b!601613))

(assert (= b!601614 b!601615))

(assert (= (and b!600359 ((_ is Leaf!3014) (c!111436 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (value!38867 (_1!3706 (v!16436 lt!255719))))))) b!601614))

(declare-fun m!866203 () Bool)

(assert (=> b!601613 m!866203))

(declare-fun m!866205 () Bool)

(assert (=> b!601613 m!866205))

(declare-fun m!866207 () Bool)

(assert (=> b!601614 m!866207))

(assert (=> b!600359 m!864581))

(declare-fun e!364412 () Bool)

(assert (=> b!600739 (= tp!187071 e!364412)))

(declare-fun b!601616 () Bool)

(assert (=> b!601616 (= e!364412 tp_is_empty!3409)))

(declare-fun b!601617 () Bool)

(declare-fun tp!187225 () Bool)

(declare-fun tp!187227 () Bool)

(assert (=> b!601617 (= e!364412 (and tp!187225 tp!187227))))

(declare-fun b!601618 () Bool)

(declare-fun tp!187223 () Bool)

(assert (=> b!601618 (= e!364412 tp!187223)))

(declare-fun b!601619 () Bool)

(declare-fun tp!187226 () Bool)

(declare-fun tp!187224 () Bool)

(assert (=> b!601619 (= e!364412 (and tp!187226 tp!187224))))

(assert (= (and b!600739 ((_ is ElementMatch!1527) (regOne!3567 (regex!1193 (rule!1965 token!491))))) b!601616))

(assert (= (and b!600739 ((_ is Concat!2744) (regOne!3567 (regex!1193 (rule!1965 token!491))))) b!601617))

(assert (= (and b!600739 ((_ is Star!1527) (regOne!3567 (regex!1193 (rule!1965 token!491))))) b!601618))

(assert (= (and b!600739 ((_ is Union!1527) (regOne!3567 (regex!1193 (rule!1965 token!491))))) b!601619))

(declare-fun e!364413 () Bool)

(assert (=> b!600739 (= tp!187069 e!364413)))

(declare-fun b!601620 () Bool)

(assert (=> b!601620 (= e!364413 tp_is_empty!3409)))

(declare-fun b!601621 () Bool)

(declare-fun tp!187230 () Bool)

(declare-fun tp!187232 () Bool)

(assert (=> b!601621 (= e!364413 (and tp!187230 tp!187232))))

(declare-fun b!601622 () Bool)

(declare-fun tp!187228 () Bool)

(assert (=> b!601622 (= e!364413 tp!187228)))

(declare-fun b!601623 () Bool)

(declare-fun tp!187231 () Bool)

(declare-fun tp!187229 () Bool)

(assert (=> b!601623 (= e!364413 (and tp!187231 tp!187229))))

(assert (= (and b!600739 ((_ is ElementMatch!1527) (regTwo!3567 (regex!1193 (rule!1965 token!491))))) b!601620))

(assert (= (and b!600739 ((_ is Concat!2744) (regTwo!3567 (regex!1193 (rule!1965 token!491))))) b!601621))

(assert (= (and b!600739 ((_ is Star!1527) (regTwo!3567 (regex!1193 (rule!1965 token!491))))) b!601622))

(assert (= (and b!600739 ((_ is Union!1527) (regTwo!3567 (regex!1193 (rule!1965 token!491))))) b!601623))

(declare-fun e!364414 () Bool)

(assert (=> b!600754 (= tp!187088 e!364414)))

(declare-fun b!601624 () Bool)

(assert (=> b!601624 (= e!364414 tp_is_empty!3409)))

(declare-fun b!601625 () Bool)

(declare-fun tp!187235 () Bool)

(declare-fun tp!187237 () Bool)

(assert (=> b!601625 (= e!364414 (and tp!187235 tp!187237))))

(declare-fun b!601626 () Bool)

(declare-fun tp!187233 () Bool)

(assert (=> b!601626 (= e!364414 tp!187233)))

(declare-fun b!601627 () Bool)

(declare-fun tp!187236 () Bool)

(declare-fun tp!187234 () Bool)

(assert (=> b!601627 (= e!364414 (and tp!187236 tp!187234))))

(assert (= (and b!600754 ((_ is ElementMatch!1527) (regOne!3567 (regex!1193 (h!11403 rules!3103))))) b!601624))

(assert (= (and b!600754 ((_ is Concat!2744) (regOne!3567 (regex!1193 (h!11403 rules!3103))))) b!601625))

(assert (= (and b!600754 ((_ is Star!1527) (regOne!3567 (regex!1193 (h!11403 rules!3103))))) b!601626))

(assert (= (and b!600754 ((_ is Union!1527) (regOne!3567 (regex!1193 (h!11403 rules!3103))))) b!601627))

(declare-fun e!364415 () Bool)

(assert (=> b!600754 (= tp!187086 e!364415)))

(declare-fun b!601628 () Bool)

(assert (=> b!601628 (= e!364415 tp_is_empty!3409)))

(declare-fun b!601629 () Bool)

(declare-fun tp!187240 () Bool)

(declare-fun tp!187242 () Bool)

(assert (=> b!601629 (= e!364415 (and tp!187240 tp!187242))))

(declare-fun b!601630 () Bool)

(declare-fun tp!187238 () Bool)

(assert (=> b!601630 (= e!364415 tp!187238)))

(declare-fun b!601631 () Bool)

(declare-fun tp!187241 () Bool)

(declare-fun tp!187239 () Bool)

(assert (=> b!601631 (= e!364415 (and tp!187241 tp!187239))))

(assert (= (and b!600754 ((_ is ElementMatch!1527) (regTwo!3567 (regex!1193 (h!11403 rules!3103))))) b!601628))

(assert (= (and b!600754 ((_ is Concat!2744) (regTwo!3567 (regex!1193 (h!11403 rules!3103))))) b!601629))

(assert (= (and b!600754 ((_ is Star!1527) (regTwo!3567 (regex!1193 (h!11403 rules!3103))))) b!601630))

(assert (= (and b!600754 ((_ is Union!1527) (regTwo!3567 (regex!1193 (h!11403 rules!3103))))) b!601631))

(declare-fun e!364416 () Bool)

(assert (=> b!600738 (= tp!187068 e!364416)))

(declare-fun b!601632 () Bool)

(assert (=> b!601632 (= e!364416 tp_is_empty!3409)))

(declare-fun b!601633 () Bool)

(declare-fun tp!187245 () Bool)

(declare-fun tp!187247 () Bool)

(assert (=> b!601633 (= e!364416 (and tp!187245 tp!187247))))

(declare-fun b!601634 () Bool)

(declare-fun tp!187243 () Bool)

(assert (=> b!601634 (= e!364416 tp!187243)))

(declare-fun b!601635 () Bool)

(declare-fun tp!187246 () Bool)

(declare-fun tp!187244 () Bool)

(assert (=> b!601635 (= e!364416 (and tp!187246 tp!187244))))

(assert (= (and b!600738 ((_ is ElementMatch!1527) (reg!1856 (regex!1193 (rule!1965 token!491))))) b!601632))

(assert (= (and b!600738 ((_ is Concat!2744) (reg!1856 (regex!1193 (rule!1965 token!491))))) b!601633))

(assert (= (and b!600738 ((_ is Star!1527) (reg!1856 (regex!1193 (rule!1965 token!491))))) b!601634))

(assert (= (and b!600738 ((_ is Union!1527) (reg!1856 (regex!1193 (rule!1965 token!491))))) b!601635))

(declare-fun b!601636 () Bool)

(declare-fun e!364417 () Bool)

(declare-fun tp!187248 () Bool)

(assert (=> b!601636 (= e!364417 (and tp_is_empty!3409 tp!187248))))

(assert (=> b!600759 (= tp!187092 e!364417)))

(assert (= (and b!600759 ((_ is Cons!6001) (t!79818 (t!79818 input!2705)))) b!601636))

(declare-fun b!601639 () Bool)

(declare-fun b_free!17089 () Bool)

(declare-fun b_next!17105 () Bool)

(assert (=> b!601639 (= b_free!17089 (not b_next!17105))))

(declare-fun tb!52469 () Bool)

(declare-fun t!79951 () Bool)

(assert (=> (and b!601639 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))) t!79951) tb!52469))

(declare-fun result!59020 () Bool)

(assert (= result!59020 result!59006))

(assert (=> d!211698 t!79951))

(declare-fun tb!52471 () Bool)

(declare-fun t!79953 () Bool)

(assert (=> (and b!601639 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))) t!79953) tb!52471))

(declare-fun result!59022 () Bool)

(assert (= result!59022 result!59012))

(assert (=> d!211722 t!79953))

(declare-fun t!79955 () Bool)

(declare-fun tb!52473 () Bool)

(assert (=> (and b!601639 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toValue!2088 (transformation!1193 (rule!1965 token!491)))) t!79955) tb!52473))

(declare-fun result!59024 () Bool)

(assert (= result!59024 result!58930))

(assert (=> d!211250 t!79955))

(declare-fun tb!52475 () Bool)

(declare-fun t!79957 () Bool)

(assert (=> (and b!601639 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79957) tb!52475))

(declare-fun result!59026 () Bool)

(assert (= result!59026 result!58876))

(assert (=> d!211146 t!79957))

(assert (=> d!211092 t!79957))

(declare-fun tp!187251 () Bool)

(declare-fun b_and!59399 () Bool)

(assert (=> b!601639 (= tp!187251 (and (=> t!79957 result!59026) (=> t!79953 result!59022) (=> t!79951 result!59020) (=> t!79955 result!59024) b_and!59399))))

(declare-fun b_free!17091 () Bool)

(declare-fun b_next!17107 () Bool)

(assert (=> b!601639 (= b_free!17091 (not b_next!17107))))

(declare-fun tb!52477 () Bool)

(declare-fun t!79959 () Bool)

(assert (=> (and b!601639 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79959) tb!52477))

(declare-fun result!59028 () Bool)

(assert (= result!59028 result!58882))

(assert (=> d!211112 t!79959))

(declare-fun t!79961 () Bool)

(declare-fun tb!52479 () Bool)

(assert (=> (and b!601639 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toChars!1947 (transformation!1193 (rule!1965 token!491)))) t!79961) tb!52479))

(declare-fun result!59030 () Bool)

(assert (= result!59030 result!58926))

(assert (=> b!600640 t!79961))

(declare-fun tb!52481 () Bool)

(declare-fun t!79963 () Bool)

(assert (=> (and b!601639 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719)))))) t!79963) tb!52481))

(declare-fun result!59032 () Bool)

(assert (= result!59032 result!58922))

(assert (=> d!211146 t!79963))

(declare-fun t!79965 () Bool)

(declare-fun tb!52483 () Bool)

(assert (=> (and b!601639 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255866)))))) t!79965) tb!52483))

(declare-fun result!59034 () Bool)

(assert (= result!59034 result!59000))

(assert (=> d!211624 t!79965))

(declare-fun t!79967 () Bool)

(declare-fun tb!52485 () Bool)

(assert (=> (and b!601639 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (get!2304 lt!255849)))))) t!79967) tb!52485))

(declare-fun result!59036 () Bool)

(assert (= result!59036 result!58994))

(assert (=> d!211594 t!79967))

(assert (=> d!211264 t!79961))

(declare-fun b_and!59401 () Bool)

(declare-fun tp!187249 () Bool)

(assert (=> b!601639 (= tp!187249 (and (=> t!79967 result!59036) (=> t!79961 result!59030) (=> t!79959 result!59028) (=> t!79963 result!59032) (=> t!79965 result!59034) b_and!59401))))

(declare-fun e!364420 () Bool)

(assert (=> b!601639 (= e!364420 (and tp!187251 tp!187249))))

(declare-fun tp!187252 () Bool)

(declare-fun e!364418 () Bool)

(declare-fun b!601638 () Bool)

(assert (=> b!601638 (= e!364418 (and tp!187252 (inv!7609 (tag!1455 (h!11403 (t!79819 (t!79819 rules!3103))))) (inv!7612 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) e!364420))))

(declare-fun b!601637 () Bool)

(declare-fun e!364419 () Bool)

(declare-fun tp!187250 () Bool)

(assert (=> b!601637 (= e!364419 (and e!364418 tp!187250))))

(assert (=> b!600748 (= tp!187082 e!364419)))

(assert (= b!601638 b!601639))

(assert (= b!601637 b!601638))

(assert (= (and b!600748 ((_ is Cons!6002) (t!79819 (t!79819 rules!3103)))) b!601637))

(declare-fun m!866209 () Bool)

(assert (=> b!601638 m!866209))

(declare-fun m!866211 () Bool)

(assert (=> b!601638 m!866211))

(declare-fun b_lambda!23739 () Bool)

(assert (= b_lambda!23669 (or (and b!600268 b_free!17071 (= (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!600263 b_free!17075 (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!600750 b_free!17083 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!601639 b_free!17091 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) b_lambda!23739)))

(declare-fun b_lambda!23741 () Bool)

(assert (= b_lambda!23689 (or (and b!600268 b_free!17071 (= (toChars!1947 (transformation!1193 (rule!1965 token!491))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!600263 b_free!17075 (= (toChars!1947 (transformation!1193 (h!11403 rules!3103))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!600750 b_free!17083 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!601639 b_free!17091 (= (toChars!1947 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) b_lambda!23741)))

(declare-fun b_lambda!23743 () Bool)

(assert (= b_lambda!23667 (or (and b!600268 b_free!17069 (= (toValue!2088 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!600263 b_free!17073 (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!600750 b_free!17081 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!601639 b_free!17089 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) b_lambda!23743)))

(declare-fun b_lambda!23745 () Bool)

(assert (= b_lambda!23691 (or (and b!600268 b_free!17069 (= (toValue!2088 (transformation!1193 (rule!1965 token!491))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!600263 b_free!17073 (= (toValue!2088 (transformation!1193 (h!11403 rules!3103))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!600750 b_free!17081 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 rules!3103)))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) (and b!601639 b_free!17089 (= (toValue!2088 (transformation!1193 (h!11403 (t!79819 (t!79819 rules!3103))))) (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))))) b_lambda!23745)))

(declare-fun b_lambda!23747 () Bool)

(assert (= b_lambda!23737 (or d!211146 b_lambda!23747)))

(declare-fun bs!70991 () Bool)

(declare-fun d!211802 () Bool)

(assert (= bs!70991 (and d!211802 d!211146)))

(assert (=> bs!70991 (= (dynLambda!3478 lambda!16036 lt!255694) (= (list!2516 (dynLambda!3471 (toChars!1947 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) (dynLambda!3470 (toValue!2088 (transformation!1193 (rule!1965 (_1!3706 (v!16436 lt!255719))))) lt!255694))) (list!2516 lt!255694)))))

(declare-fun b_lambda!23749 () Bool)

(assert (=> (not b_lambda!23749) (not bs!70991)))

(assert (=> bs!70991 t!79859))

(declare-fun b_and!59403 () Bool)

(assert (= b_and!59381 (and (=> t!79859 result!58922) b_and!59403)))

(assert (=> bs!70991 t!79861))

(declare-fun b_and!59405 () Bool)

(assert (= b_and!59383 (and (=> t!79861 result!58924) b_and!59405)))

(assert (=> bs!70991 t!79877))

(declare-fun b_and!59407 () Bool)

(assert (= b_and!59385 (and (=> t!79877 result!58944) b_and!59407)))

(assert (=> bs!70991 t!79963))

(declare-fun b_and!59409 () Bool)

(assert (= b_and!59401 (and (=> t!79963 result!59032) b_and!59409)))

(declare-fun b_lambda!23751 () Bool)

(assert (=> (not b_lambda!23751) (not bs!70991)))

(assert (=> bs!70991 t!79825))

(declare-fun b_and!59411 () Bool)

(assert (= b_and!59393 (and (=> t!79825 result!58876) b_and!59411)))

(assert (=> bs!70991 t!79827))

(declare-fun b_and!59413 () Bool)

(assert (= b_and!59395 (and (=> t!79827 result!58880) b_and!59413)))

(assert (=> bs!70991 t!79871))

(declare-fun b_and!59415 () Bool)

(assert (= b_and!59397 (and (=> t!79871 result!58938) b_and!59415)))

(assert (=> bs!70991 t!79957))

(declare-fun b_and!59417 () Bool)

(assert (= b_and!59399 (and (=> t!79957 result!59026) b_and!59417)))

(assert (=> bs!70991 m!864887))

(assert (=> bs!70991 m!864889))

(assert (=> bs!70991 m!864523))

(assert (=> bs!70991 m!864523))

(assert (=> bs!70991 m!864887))

(assert (=> bs!70991 m!864891))

(assert (=> d!211758 d!211802))

(check-sat (not b!601473) (not b!601035) (not b!601410) (not b!601595) (not b!601275) (not b!601342) (not b!601259) (not b!601463) (not b!601513) (not b!601613) (not b!601495) (not d!211756) (not bm!40527) (not d!211652) (not b!601421) (not b_lambda!23729) (not b!601289) (not b!601588) (not b!601467) (not b!601599) (not bm!40529) (not b!601456) (not b!601015) (not d!211598) (not b!601424) (not b!601373) (not b!601297) (not b!601382) (not b!601556) (not b!601260) (not b!601392) (not b_lambda!23739) (not b!601292) (not b!601377) (not d!211562) (not b!601614) (not b!601436) (not d!211636) (not b_next!17099) (not b!601263) (not b!601572) (not b!601608) (not b!601417) (not b!601445) (not b!601600) (not d!211728) (not b!601356) (not b!601470) (not b_next!17107) (not d!211726) (not b!601575) (not b!601591) (not b!601606) (not b!601607) (not b!601399) (not d!211668) (not d!211436) (not b!601448) (not d!211644) (not d!211586) (not b!601256) (not b!601442) (not b!601387) (not b!601427) (not b!601378) (not b!601366) (not b!601359) (not b!601394) (not b!601244) (not b!601486) (not b!601413) (not b_lambda!23741) b_and!59413 (not bm!40534) (not b_lambda!23749) (not b_lambda!23747) (not b!601338) (not b!601504) (not d!211694) (not tb!52463) (not b!601630) (not b!601603) (not b!601385) (not d!211622) (not b!601604) b_and!59411 (not b_lambda!23731) (not b_next!17089) (not b!601281) (not b!601428) (not b!601261) (not b!601626) (not b!601291) (not b!601471) (not b!601597) (not b!601566) (not d!211766) (not b!601506) (not b!601493) b_and!59409 (not bm!40536) (not d!211626) (not b_lambda!23703) (not b!601426) (not bm!40535) (not b!601489) (not b!601567) (not b!600642) (not b!601336) (not b!601633) (not b_next!17105) (not b!601241) (not b!601251) (not b!601631) (not d!211714) (not d!211606) (not d!211686) b_and!59405 (not b!601570) (not b!601618) (not d!211592) (not b!601247) (not b!601557) (not b_next!17097) (not b!601276) (not b!601284) (not b!601019) (not b!601455) (not b!601587) (not b!601521) (not d!211758) (not b!601577) (not d!211574) (not b!600359) b_and!59415 (not b_lambda!23733) (not b!601355) (not b!601458) (not b!601499) (not b!601352) (not b!601013) (not b!601374) (not b!601602) (not d!211786) (not d!211594) (not d!211682) (not bm!40533) (not b!601453) (not b!601625) (not b!601422) (not d!211794) (not b!601240) (not b!601381) (not bm!40526) (not b!601438) (not b!601612) (not d!211638) (not d!211640) (not b!601623) (not b!601398) (not d!211744) (not b_next!17087) (not b!601023) (not d!211780) (not bm!40545) (not b!601407) (not b_next!17085) (not b!601444) (not b!601592) (not b!601243) (not b!601621) (not b_lambda!23751) (not b!601634) (not b!601501) (not b!601461) (not d!211634) (not b!601350) (not b_next!17091) (not bm!40547) (not b_lambda!23699) (not d!211590) (not b!600604) (not d!211618) tp_is_empty!3409 (not b!601560) (not b!601462) (not b!601611) (not b!601596) (not d!211664) (not b!601563) (not b!601497) (not b!601296) (not b!601487) (not d!211746) (not d!211784) (not b!601636) (not b!601271) (not b!601278) (not b!601024) (not b!601411) (not b!601452) (not b!601293) (not d!211762) (not b!601017) (not b!601617) (not b!601440) (not b_lambda!23743) (not b!601546) (not b!601457) (not d!211710) (not d!211720) (not b!601564) (not b!601022) (not b!601441) (not b!601270) (not b!601502) (not d!211604) (not b!601249) (not b!601598) (not b!601594) (not b!601573) (not b!601242) (not b!601635) (not b!601459) (not bm!40530) (not d!211754) b_and!59417 (not b!601627) (not b_lambda!23701) (not b!601299) (not b!601629) (not b!601446) (not b!601354) (not b!601257) (not b!601420) (not b!601239) (not bm!40532) (not b!601576) (not d!211750) (not b!601637) (not b!601496) (not b!601516) (not d!211642) (not b_lambda!23735) (not b!601491) (not b!601334) (not b!601508) (not b!601237) (not bs!70991) (not b!601615) (not b!601619) (not b!601638) (not b!601322) (not b_lambda!23745) (not b!601429) (not b!601423) (not b!601586) (not b!601294) (not b!601475) (not d!211696) (not b!601520) (not b!601449) (not d!211770) (not b!601554) (not d!211724) (not b!601517) (not d!211646) (not d!211670) b_and!59403 (not d!211658) b_and!59407 (not b!601472) (not d!211648) (not d!211778) (not d!211760) (not b!601238) (not b!601280) (not b!601430) (not b!601402) (not b!601349) (not b!601265) (not b!601419) (not b!601365) (not d!211588) (not b!601590) (not b!601288) (not d!211700) (not b!601512) (not d!211688) (not d!211580) (not d!211582) (not tb!52457) (not d!211440) (not b!601298) (not b!601264) (not b!601610) (not d!211712) (not b!601451) (not d!211624) (not d!211596) (not b!601403) (not b!601622) (not b!601285) (not b!601415) (not b!601468) (not b!601464) (not b!601406) (not d!211620) (not tb!52451) (not b!601466) (not b!601295) (not b!601368) (not tb!52445))
(check-sat (not b_next!17099) (not b_next!17107) b_and!59413 b_and!59411 (not b_next!17089) b_and!59409 (not b_next!17097) b_and!59415 (not b_next!17091) b_and!59417 (not b_next!17105) b_and!59405 (not b_next!17087) (not b_next!17085) b_and!59407 b_and!59403)
