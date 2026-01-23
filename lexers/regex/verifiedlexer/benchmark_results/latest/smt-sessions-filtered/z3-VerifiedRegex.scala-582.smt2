; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17466 () Bool)

(assert start!17466)

(declare-fun b!161573 () Bool)

(declare-fun b_free!6065 () Bool)

(declare-fun b_next!6065 () Bool)

(assert (=> b!161573 (= b_free!6065 (not b_next!6065))))

(declare-fun tp!81890 () Bool)

(declare-fun b_and!10049 () Bool)

(assert (=> b!161573 (= tp!81890 b_and!10049)))

(declare-fun b_free!6067 () Bool)

(declare-fun b_next!6067 () Bool)

(assert (=> b!161573 (= b_free!6067 (not b_next!6067))))

(declare-fun tp!81887 () Bool)

(declare-fun b_and!10051 () Bool)

(assert (=> b!161573 (= tp!81887 b_and!10051)))

(declare-fun b!161565 () Bool)

(declare-fun b_free!6069 () Bool)

(declare-fun b_next!6069 () Bool)

(assert (=> b!161565 (= b_free!6069 (not b_next!6069))))

(declare-fun tp!81886 () Bool)

(declare-fun b_and!10053 () Bool)

(assert (=> b!161565 (= tp!81886 b_and!10053)))

(declare-fun b_free!6071 () Bool)

(declare-fun b_next!6071 () Bool)

(assert (=> b!161565 (= b_free!6071 (not b_next!6071))))

(declare-fun tp!81885 () Bool)

(declare-fun b_and!10055 () Bool)

(assert (=> b!161565 (= tp!81885 b_and!10055)))

(declare-fun b!161572 () Bool)

(declare-fun b_free!6073 () Bool)

(declare-fun b_next!6073 () Bool)

(assert (=> b!161572 (= b_free!6073 (not b_next!6073))))

(declare-fun tp!81897 () Bool)

(declare-fun b_and!10057 () Bool)

(assert (=> b!161572 (= tp!81897 b_and!10057)))

(declare-fun b_free!6075 () Bool)

(declare-fun b_next!6075 () Bool)

(assert (=> b!161572 (= b_free!6075 (not b_next!6075))))

(declare-fun tp!81893 () Bool)

(declare-fun b_and!10059 () Bool)

(assert (=> b!161572 (= tp!81893 b_and!10059)))

(declare-fun e!97207 () Bool)

(assert (=> b!161565 (= e!97207 (and tp!81886 tp!81885))))

(declare-fun b!161566 () Bool)

(declare-fun e!97205 () Bool)

(declare-fun e!97189 () Bool)

(assert (=> b!161566 (= e!97205 e!97189)))

(declare-fun res!73201 () Bool)

(assert (=> b!161566 (=> (not res!73201) (not e!97189))))

(declare-datatypes ((List!2773 0))(
  ( (Nil!2763) (Cons!2763 (h!8160 (_ BitVec 16)) (t!26039 List!2773)) )
))
(declare-datatypes ((TokenValue!509 0))(
  ( (FloatLiteralValue!1018 (text!4008 List!2773)) (TokenValueExt!508 (__x!2505 Int)) (Broken!2545 (value!18169 List!2773)) (Object!518) (End!509) (Def!509) (Underscore!509) (Match!509) (Else!509) (Error!509) (Case!509) (If!509) (Extends!509) (Abstract!509) (Class!509) (Val!509) (DelimiterValue!1018 (del!569 List!2773)) (KeywordValue!515 (value!18170 List!2773)) (CommentValue!1018 (value!18171 List!2773)) (WhitespaceValue!1018 (value!18172 List!2773)) (IndentationValue!509 (value!18173 List!2773)) (String!3624) (Int32!509) (Broken!2546 (value!18174 List!2773)) (Boolean!510) (Unit!2279) (OperatorValue!512 (op!569 List!2773)) (IdentifierValue!1018 (value!18175 List!2773)) (IdentifierValue!1019 (value!18176 List!2773)) (WhitespaceValue!1019 (value!18177 List!2773)) (True!1018) (False!1018) (Broken!2547 (value!18178 List!2773)) (Broken!2548 (value!18179 List!2773)) (True!1019) (RightBrace!509) (RightBracket!509) (Colon!509) (Null!509) (Comma!509) (LeftBracket!509) (False!1019) (LeftBrace!509) (ImaginaryLiteralValue!509 (text!4009 List!2773)) (StringLiteralValue!1527 (value!18180 List!2773)) (EOFValue!509 (value!18181 List!2773)) (IdentValue!509 (value!18182 List!2773)) (DelimiterValue!1019 (value!18183 List!2773)) (DedentValue!509 (value!18184 List!2773)) (NewLineValue!509 (value!18185 List!2773)) (IntegerValue!1527 (value!18186 (_ BitVec 32)) (text!4010 List!2773)) (IntegerValue!1528 (value!18187 Int) (text!4011 List!2773)) (Times!509) (Or!509) (Equal!509) (Minus!509) (Broken!2549 (value!18188 List!2773)) (And!509) (Div!509) (LessEqual!509) (Mod!509) (Concat!1220) (Not!509) (Plus!509) (SpaceValue!509 (value!18189 List!2773)) (IntegerValue!1529 (value!18190 Int) (text!4012 List!2773)) (StringLiteralValue!1528 (text!4013 List!2773)) (FloatLiteralValue!1019 (text!4014 List!2773)) (BytesLiteralValue!509 (value!18191 List!2773)) (CommentValue!1019 (value!18192 List!2773)) (StringLiteralValue!1529 (value!18193 List!2773)) (ErrorTokenValue!509 (msg!570 List!2773)) )
))
(declare-datatypes ((C!2344 0))(
  ( (C!2345 (val!1058 Int)) )
))
(declare-datatypes ((List!2774 0))(
  ( (Nil!2764) (Cons!2764 (h!8161 C!2344) (t!26040 List!2774)) )
))
(declare-datatypes ((IArray!1593 0))(
  ( (IArray!1594 (innerList!854 List!2774)) )
))
(declare-datatypes ((Conc!796 0))(
  ( (Node!796 (left!2086 Conc!796) (right!2416 Conc!796) (csize!1822 Int) (cheight!1007 Int)) (Leaf!1379 (xs!3391 IArray!1593) (csize!1823 Int)) (Empty!796) )
))
(declare-datatypes ((BalanceConc!1600 0))(
  ( (BalanceConc!1601 (c!32367 Conc!796)) )
))
(declare-datatypes ((Regex!711 0))(
  ( (ElementMatch!711 (c!32368 C!2344)) (Concat!1221 (regOne!1934 Regex!711) (regTwo!1934 Regex!711)) (EmptyExpr!711) (Star!711 (reg!1040 Regex!711)) (EmptyLang!711) (Union!711 (regOne!1935 Regex!711) (regTwo!1935 Regex!711)) )
))
(declare-datatypes ((String!3625 0))(
  ( (String!3626 (value!18194 String)) )
))
(declare-datatypes ((TokenValueInjection!790 0))(
  ( (TokenValueInjection!791 (toValue!1142 Int) (toChars!1001 Int)) )
))
(declare-datatypes ((Rule!774 0))(
  ( (Rule!775 (regex!487 Regex!711) (tag!665 String!3625) (isSeparator!487 Bool) (transformation!487 TokenValueInjection!790)) )
))
(declare-datatypes ((Token!718 0))(
  ( (Token!719 (value!18195 TokenValue!509) (rule!994 Rule!774) (size!2333 Int) (originalCharacters!530 List!2774)) )
))
(declare-datatypes ((List!2775 0))(
  ( (Nil!2765) (Cons!2765 (h!8162 Token!718) (t!26041 List!2775)) )
))
(declare-datatypes ((IArray!1595 0))(
  ( (IArray!1596 (innerList!855 List!2775)) )
))
(declare-datatypes ((Conc!797 0))(
  ( (Node!797 (left!2087 Conc!797) (right!2417 Conc!797) (csize!1824 Int) (cheight!1008 Int)) (Leaf!1380 (xs!3392 IArray!1595) (csize!1825 Int)) (Empty!797) )
))
(declare-datatypes ((BalanceConc!1602 0))(
  ( (BalanceConc!1603 (c!32369 Conc!797)) )
))
(declare-fun lt!48837 () BalanceConc!1602)

(declare-datatypes ((List!2776 0))(
  ( (Nil!2766) (Cons!2766 (h!8163 Rule!774) (t!26042 List!2776)) )
))
(declare-fun rules!1920 () List!2776)

(declare-datatypes ((LexerInterface!373 0))(
  ( (LexerInterfaceExt!370 (__x!2506 Int)) (Lexer!371) )
))
(declare-fun thiss!17480 () LexerInterface!373)

(declare-fun rulesProduceEachTokenIndividually!165 (LexerInterface!373 List!2776 BalanceConc!1602) Bool)

(assert (=> b!161566 (= res!73201 (rulesProduceEachTokenIndividually!165 thiss!17480 rules!1920 lt!48837))))

(declare-fun tokens!465 () List!2775)

(declare-fun seqFromList!351 (List!2775) BalanceConc!1602)

(assert (=> b!161566 (= lt!48837 (seqFromList!351 tokens!465))))

(declare-fun tp!81894 () Bool)

(declare-fun separatorToken!170 () Token!718)

(declare-fun e!97200 () Bool)

(declare-fun e!97206 () Bool)

(declare-fun b!161567 () Bool)

(declare-fun inv!3582 (String!3625) Bool)

(declare-fun inv!3585 (TokenValueInjection!790) Bool)

(assert (=> b!161567 (= e!97200 (and tp!81894 (inv!3582 (tag!665 (rule!994 separatorToken!170))) (inv!3585 (transformation!487 (rule!994 separatorToken!170))) e!97206))))

(declare-fun b!161568 () Bool)

(declare-fun res!73203 () Bool)

(assert (=> b!161568 (=> (not res!73203) (not e!97189))))

(declare-fun sepAndNonSepRulesDisjointChars!76 (List!2776 List!2776) Bool)

(assert (=> b!161568 (= res!73203 (sepAndNonSepRulesDisjointChars!76 rules!1920 rules!1920))))

(declare-fun b!161569 () Bool)

(declare-fun res!73198 () Bool)

(assert (=> b!161569 (=> (not res!73198) (not e!97189))))

(declare-fun lambda!4412 () Int)

(declare-fun forall!513 (List!2775 Int) Bool)

(assert (=> b!161569 (= res!73198 (forall!513 tokens!465 lambda!4412))))

(declare-fun e!97193 () Bool)

(declare-fun b!161570 () Bool)

(declare-fun lt!48835 () List!2774)

(declare-fun lt!48842 () List!2774)

(declare-fun lt!48838 () List!2774)

(declare-fun ++!616 (List!2774 List!2774) List!2774)

(assert (=> b!161570 (= e!97193 (not (= lt!48835 (++!616 lt!48838 lt!48842))))))

(declare-fun b!161571 () Bool)

(declare-fun e!97194 () Bool)

(declare-fun e!97204 () Bool)

(declare-fun tp!81891 () Bool)

(declare-fun inv!3586 (Token!718) Bool)

(assert (=> b!161571 (= e!97204 (and (inv!3586 (h!8162 tokens!465)) e!97194 tp!81891))))

(assert (=> b!161572 (= e!97206 (and tp!81897 tp!81893))))

(declare-fun e!97190 () Bool)

(assert (=> b!161573 (= e!97190 (and tp!81890 tp!81887))))

(declare-fun b!161574 () Bool)

(declare-fun res!73206 () Bool)

(assert (=> b!161574 (=> (not res!73206) (not e!97205))))

(declare-fun isEmpty!1122 (List!2776) Bool)

(assert (=> b!161574 (= res!73206 (not (isEmpty!1122 rules!1920)))))

(declare-fun tp!81895 () Bool)

(declare-fun b!161575 () Bool)

(declare-fun e!97196 () Bool)

(declare-fun inv!21 (TokenValue!509) Bool)

(assert (=> b!161575 (= e!97194 (and (inv!21 (value!18195 (h!8162 tokens!465))) e!97196 tp!81895))))

(declare-fun b!161576 () Bool)

(declare-fun res!73205 () Bool)

(assert (=> b!161576 (=> (not res!73205) (not e!97189))))

(get-info :version)

(assert (=> b!161576 (= res!73205 ((_ is Cons!2765) tokens!465))))

(declare-fun res!73196 () Bool)

(assert (=> start!17466 (=> (not res!73196) (not e!97205))))

(assert (=> start!17466 (= res!73196 ((_ is Lexer!371) thiss!17480))))

(assert (=> start!17466 e!97205))

(assert (=> start!17466 true))

(declare-fun e!97188 () Bool)

(assert (=> start!17466 e!97188))

(declare-fun e!97192 () Bool)

(assert (=> start!17466 (and (inv!3586 separatorToken!170) e!97192)))

(assert (=> start!17466 e!97204))

(declare-fun b!161577 () Bool)

(declare-fun res!73199 () Bool)

(declare-fun e!97191 () Bool)

(assert (=> b!161577 (=> res!73199 e!97191)))

(assert (=> b!161577 (= res!73199 e!97193)))

(declare-fun res!73200 () Bool)

(assert (=> b!161577 (=> (not res!73200) (not e!97193))))

(declare-fun lt!48840 () List!2774)

(assert (=> b!161577 (= res!73200 (not (= lt!48835 lt!48840)))))

(declare-fun b!161578 () Bool)

(declare-fun res!73207 () Bool)

(assert (=> b!161578 (=> (not res!73207) (not e!97189))))

(declare-fun rulesProduceIndividualToken!122 (LexerInterface!373 List!2776 Token!718) Bool)

(assert (=> b!161578 (= res!73207 (rulesProduceIndividualToken!122 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!161579 () Bool)

(declare-fun e!97202 () Bool)

(assert (=> b!161579 (= e!97202 (not e!97191))))

(declare-fun res!73197 () Bool)

(assert (=> b!161579 (=> res!73197 e!97191)))

(declare-fun list!997 (BalanceConc!1600) List!2774)

(declare-fun printWithSeparatorTokenWhenNeededRec!56 (LexerInterface!373 List!2776 BalanceConc!1602 Token!718 Int) BalanceConc!1600)

(assert (=> b!161579 (= res!73197 (not (= lt!48842 (list!997 (printWithSeparatorTokenWhenNeededRec!56 thiss!17480 rules!1920 (seqFromList!351 (t!26041 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!48841 () List!2774)

(assert (=> b!161579 (= lt!48841 lt!48840)))

(declare-fun lt!48834 () List!2774)

(assert (=> b!161579 (= lt!48840 (++!616 lt!48838 lt!48834))))

(declare-fun lt!48836 () List!2774)

(assert (=> b!161579 (= lt!48841 (++!616 (++!616 lt!48838 lt!48836) lt!48842))))

(declare-datatypes ((Unit!2280 0))(
  ( (Unit!2281) )
))
(declare-fun lt!48839 () Unit!2280)

(declare-fun lemmaConcatAssociativity!168 (List!2774 List!2774 List!2774) Unit!2280)

(assert (=> b!161579 (= lt!48839 (lemmaConcatAssociativity!168 lt!48838 lt!48836 lt!48842))))

(declare-fun charsOf!142 (Token!718) BalanceConc!1600)

(assert (=> b!161579 (= lt!48838 (list!997 (charsOf!142 (h!8162 tokens!465))))))

(assert (=> b!161579 (= lt!48834 (++!616 lt!48836 lt!48842))))

(declare-fun printWithSeparatorTokenWhenNeededList!66 (LexerInterface!373 List!2776 List!2775 Token!718) List!2774)

(assert (=> b!161579 (= lt!48842 (printWithSeparatorTokenWhenNeededList!66 thiss!17480 rules!1920 (t!26041 tokens!465) separatorToken!170))))

(assert (=> b!161579 (= lt!48836 (list!997 (charsOf!142 separatorToken!170)))))

(declare-fun b!161580 () Bool)

(assert (=> b!161580 (= e!97191 true)))

(declare-fun lt!48844 () BalanceConc!1602)

(declare-fun singletonSeq!39 (Token!718) BalanceConc!1602)

(assert (=> b!161580 (= lt!48844 (singletonSeq!39 (h!8162 tokens!465)))))

(declare-fun b!161581 () Bool)

(assert (=> b!161581 (= e!97189 e!97202)))

(declare-fun res!73195 () Bool)

(assert (=> b!161581 (=> (not res!73195) (not e!97202))))

(declare-fun lt!48843 () List!2774)

(assert (=> b!161581 (= res!73195 (= lt!48835 lt!48843))))

(assert (=> b!161581 (= lt!48843 (list!997 (printWithSeparatorTokenWhenNeededRec!56 thiss!17480 rules!1920 lt!48837 separatorToken!170 0)))))

(assert (=> b!161581 (= lt!48835 (printWithSeparatorTokenWhenNeededList!66 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!161582 () Bool)

(declare-fun e!97199 () Bool)

(declare-fun tp!81889 () Bool)

(assert (=> b!161582 (= e!97188 (and e!97199 tp!81889))))

(declare-fun b!161583 () Bool)

(declare-fun res!73202 () Bool)

(assert (=> b!161583 (=> (not res!73202) (not e!97205))))

(declare-fun rulesInvariant!339 (LexerInterface!373 List!2776) Bool)

(assert (=> b!161583 (= res!73202 (rulesInvariant!339 thiss!17480 rules!1920))))

(declare-fun b!161584 () Bool)

(declare-fun res!73204 () Bool)

(assert (=> b!161584 (=> (not res!73204) (not e!97189))))

(assert (=> b!161584 (= res!73204 (isSeparator!487 (rule!994 separatorToken!170)))))

(declare-fun b!161585 () Bool)

(declare-fun tp!81892 () Bool)

(assert (=> b!161585 (= e!97199 (and tp!81892 (inv!3582 (tag!665 (h!8163 rules!1920))) (inv!3585 (transformation!487 (h!8163 rules!1920))) e!97207))))

(declare-fun b!161586 () Bool)

(declare-fun tp!81888 () Bool)

(assert (=> b!161586 (= e!97192 (and (inv!21 (value!18195 separatorToken!170)) e!97200 tp!81888))))

(declare-fun b!161587 () Bool)

(declare-fun res!73208 () Bool)

(assert (=> b!161587 (=> (not res!73208) (not e!97202))))

(declare-fun seqFromList!352 (List!2774) BalanceConc!1600)

(assert (=> b!161587 (= res!73208 (= (list!997 (seqFromList!352 lt!48835)) lt!48843))))

(declare-fun b!161588 () Bool)

(declare-fun tp!81896 () Bool)

(assert (=> b!161588 (= e!97196 (and tp!81896 (inv!3582 (tag!665 (rule!994 (h!8162 tokens!465)))) (inv!3585 (transformation!487 (rule!994 (h!8162 tokens!465)))) e!97190))))

(assert (= (and start!17466 res!73196) b!161574))

(assert (= (and b!161574 res!73206) b!161583))

(assert (= (and b!161583 res!73202) b!161566))

(assert (= (and b!161566 res!73201) b!161578))

(assert (= (and b!161578 res!73207) b!161584))

(assert (= (and b!161584 res!73204) b!161569))

(assert (= (and b!161569 res!73198) b!161568))

(assert (= (and b!161568 res!73203) b!161576))

(assert (= (and b!161576 res!73205) b!161581))

(assert (= (and b!161581 res!73195) b!161587))

(assert (= (and b!161587 res!73208) b!161579))

(assert (= (and b!161579 (not res!73197)) b!161577))

(assert (= (and b!161577 res!73200) b!161570))

(assert (= (and b!161577 (not res!73199)) b!161580))

(assert (= b!161585 b!161565))

(assert (= b!161582 b!161585))

(assert (= (and start!17466 ((_ is Cons!2766) rules!1920)) b!161582))

(assert (= b!161567 b!161572))

(assert (= b!161586 b!161567))

(assert (= start!17466 b!161586))

(assert (= b!161588 b!161573))

(assert (= b!161575 b!161588))

(assert (= b!161571 b!161575))

(assert (= (and start!17466 ((_ is Cons!2765) tokens!465)) b!161571))

(declare-fun m!151409 () Bool)

(assert (=> b!161569 m!151409))

(declare-fun m!151411 () Bool)

(assert (=> b!161580 m!151411))

(declare-fun m!151413 () Bool)

(assert (=> b!161574 m!151413))

(declare-fun m!151415 () Bool)

(assert (=> b!161575 m!151415))

(declare-fun m!151417 () Bool)

(assert (=> b!161587 m!151417))

(assert (=> b!161587 m!151417))

(declare-fun m!151419 () Bool)

(assert (=> b!161587 m!151419))

(declare-fun m!151421 () Bool)

(assert (=> b!161571 m!151421))

(declare-fun m!151423 () Bool)

(assert (=> b!161567 m!151423))

(declare-fun m!151425 () Bool)

(assert (=> b!161567 m!151425))

(declare-fun m!151427 () Bool)

(assert (=> b!161566 m!151427))

(declare-fun m!151429 () Bool)

(assert (=> b!161566 m!151429))

(declare-fun m!151431 () Bool)

(assert (=> b!161578 m!151431))

(declare-fun m!151433 () Bool)

(assert (=> b!161581 m!151433))

(assert (=> b!161581 m!151433))

(declare-fun m!151435 () Bool)

(assert (=> b!161581 m!151435))

(declare-fun m!151437 () Bool)

(assert (=> b!161581 m!151437))

(declare-fun m!151439 () Bool)

(assert (=> b!161585 m!151439))

(declare-fun m!151441 () Bool)

(assert (=> b!161585 m!151441))

(declare-fun m!151443 () Bool)

(assert (=> b!161568 m!151443))

(declare-fun m!151445 () Bool)

(assert (=> b!161583 m!151445))

(declare-fun m!151447 () Bool)

(assert (=> b!161570 m!151447))

(declare-fun m!151449 () Bool)

(assert (=> b!161579 m!151449))

(declare-fun m!151451 () Bool)

(assert (=> b!161579 m!151451))

(declare-fun m!151453 () Bool)

(assert (=> b!161579 m!151453))

(declare-fun m!151455 () Bool)

(assert (=> b!161579 m!151455))

(declare-fun m!151457 () Bool)

(assert (=> b!161579 m!151457))

(declare-fun m!151459 () Bool)

(assert (=> b!161579 m!151459))

(assert (=> b!161579 m!151449))

(declare-fun m!151461 () Bool)

(assert (=> b!161579 m!151461))

(declare-fun m!151463 () Bool)

(assert (=> b!161579 m!151463))

(declare-fun m!151465 () Bool)

(assert (=> b!161579 m!151465))

(declare-fun m!151467 () Bool)

(assert (=> b!161579 m!151467))

(declare-fun m!151469 () Bool)

(assert (=> b!161579 m!151469))

(assert (=> b!161579 m!151467))

(assert (=> b!161579 m!151453))

(assert (=> b!161579 m!151463))

(declare-fun m!151471 () Bool)

(assert (=> b!161579 m!151471))

(assert (=> b!161579 m!151461))

(declare-fun m!151473 () Bool)

(assert (=> b!161579 m!151473))

(declare-fun m!151475 () Bool)

(assert (=> start!17466 m!151475))

(declare-fun m!151477 () Bool)

(assert (=> b!161588 m!151477))

(declare-fun m!151479 () Bool)

(assert (=> b!161588 m!151479))

(declare-fun m!151481 () Bool)

(assert (=> b!161586 m!151481))

(check-sat (not b!161582) (not b!161581) (not b_next!6073) (not b_next!6071) (not start!17466) b_and!10055 (not b!161571) (not b!161588) (not b!161579) b_and!10057 (not b_next!6065) (not b!161570) (not b_next!6075) (not b!161583) (not b!161578) (not b!161587) (not b!161567) b_and!10051 (not b!161585) (not b!161569) (not b_next!6069) (not b_next!6067) b_and!10049 (not b!161568) b_and!10053 (not b!161566) (not b!161575) b_and!10059 (not b!161586) (not b!161574) (not b!161580))
(check-sat (not b_next!6075) (not b_next!6073) b_and!10051 (not b_next!6071) (not b_next!6069) b_and!10053 b_and!10055 b_and!10059 b_and!10057 (not b_next!6065) (not b_next!6067) b_and!10049)
