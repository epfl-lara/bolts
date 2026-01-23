; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48788 () Bool)

(assert start!48788)

(declare-fun b!530944 () Bool)

(declare-fun b_free!14289 () Bool)

(declare-fun b_next!14305 () Bool)

(assert (=> b!530944 (= b_free!14289 (not b_next!14305))))

(declare-fun tp!169275 () Bool)

(declare-fun b_and!51851 () Bool)

(assert (=> b!530944 (= tp!169275 b_and!51851)))

(declare-fun b_free!14291 () Bool)

(declare-fun b_next!14307 () Bool)

(assert (=> b!530944 (= b_free!14291 (not b_next!14307))))

(declare-fun tp!169278 () Bool)

(declare-fun b_and!51853 () Bool)

(assert (=> b!530944 (= tp!169278 b_and!51853)))

(declare-fun b!530954 () Bool)

(declare-fun b_free!14293 () Bool)

(declare-fun b_next!14309 () Bool)

(assert (=> b!530954 (= b_free!14293 (not b_next!14309))))

(declare-fun tp!169273 () Bool)

(declare-fun b_and!51855 () Bool)

(assert (=> b!530954 (= tp!169273 b_and!51855)))

(declare-fun b_free!14295 () Bool)

(declare-fun b_next!14311 () Bool)

(assert (=> b!530954 (= b_free!14295 (not b_next!14311))))

(declare-fun tp!169269 () Bool)

(declare-fun b_and!51857 () Bool)

(assert (=> b!530954 (= tp!169269 b_and!51857)))

(declare-fun b!530941 () Bool)

(declare-fun e!319611 () Bool)

(declare-fun e!319604 () Bool)

(assert (=> b!530941 (= e!319611 e!319604)))

(declare-fun res!224203 () Bool)

(assert (=> b!530941 (=> (not res!224203) (not e!319604))))

(declare-datatypes ((C!3420 0))(
  ( (C!3421 (val!1936 Int)) )
))
(declare-datatypes ((List!5069 0))(
  ( (Nil!5059) (Cons!5059 (h!10460 C!3420) (t!73744 List!5069)) )
))
(declare-fun lt!218596 () List!5069)

(declare-fun input!2705 () List!5069)

(assert (=> b!530941 (= res!224203 (= lt!218596 input!2705))))

(declare-datatypes ((String!6438 0))(
  ( (String!6439 (value!30918 String)) )
))
(declare-datatypes ((Regex!1249 0))(
  ( (ElementMatch!1249 (c!101398 C!3420)) (Concat!2188 (regOne!3010 Regex!1249) (regTwo!3010 Regex!1249)) (EmptyExpr!1249) (Star!1249 (reg!1578 Regex!1249)) (EmptyLang!1249) (Union!1249 (regOne!3011 Regex!1249) (regTwo!3011 Regex!1249)) )
))
(declare-datatypes ((List!5070 0))(
  ( (Nil!5060) (Cons!5060 (h!10461 (_ BitVec 16)) (t!73745 List!5070)) )
))
(declare-datatypes ((TokenValue!939 0))(
  ( (FloatLiteralValue!1878 (text!7018 List!5070)) (TokenValueExt!938 (__x!3776 Int)) (Broken!4695 (value!30919 List!5070)) (Object!948) (End!939) (Def!939) (Underscore!939) (Match!939) (Else!939) (Error!939) (Case!939) (If!939) (Extends!939) (Abstract!939) (Class!939) (Val!939) (DelimiterValue!1878 (del!999 List!5070)) (KeywordValue!945 (value!30920 List!5070)) (CommentValue!1878 (value!30921 List!5070)) (WhitespaceValue!1878 (value!30922 List!5070)) (IndentationValue!939 (value!30923 List!5070)) (String!6440) (Int32!939) (Broken!4696 (value!30924 List!5070)) (Boolean!940) (Unit!8846) (OperatorValue!942 (op!999 List!5070)) (IdentifierValue!1878 (value!30925 List!5070)) (IdentifierValue!1879 (value!30926 List!5070)) (WhitespaceValue!1879 (value!30927 List!5070)) (True!1878) (False!1878) (Broken!4697 (value!30928 List!5070)) (Broken!4698 (value!30929 List!5070)) (True!1879) (RightBrace!939) (RightBracket!939) (Colon!939) (Null!939) (Comma!939) (LeftBracket!939) (False!1879) (LeftBrace!939) (ImaginaryLiteralValue!939 (text!7019 List!5070)) (StringLiteralValue!2817 (value!30930 List!5070)) (EOFValue!939 (value!30931 List!5070)) (IdentValue!939 (value!30932 List!5070)) (DelimiterValue!1879 (value!30933 List!5070)) (DedentValue!939 (value!30934 List!5070)) (NewLineValue!939 (value!30935 List!5070)) (IntegerValue!2817 (value!30936 (_ BitVec 32)) (text!7020 List!5070)) (IntegerValue!2818 (value!30937 Int) (text!7021 List!5070)) (Times!939) (Or!939) (Equal!939) (Minus!939) (Broken!4699 (value!30938 List!5070)) (And!939) (Div!939) (LessEqual!939) (Mod!939) (Concat!2189) (Not!939) (Plus!939) (SpaceValue!939 (value!30939 List!5070)) (IntegerValue!2819 (value!30940 Int) (text!7022 List!5070)) (StringLiteralValue!2818 (text!7023 List!5070)) (FloatLiteralValue!1879 (text!7024 List!5070)) (BytesLiteralValue!939 (value!30941 List!5070)) (CommentValue!1879 (value!30942 List!5070)) (StringLiteralValue!2819 (value!30943 List!5070)) (ErrorTokenValue!939 (msg!1000 List!5070)) )
))
(declare-datatypes ((IArray!3265 0))(
  ( (IArray!3266 (innerList!1690 List!5069)) )
))
(declare-datatypes ((Conc!1632 0))(
  ( (Node!1632 (left!4278 Conc!1632) (right!4608 Conc!1632) (csize!3494 Int) (cheight!1843 Int)) (Leaf!2597 (xs!4269 IArray!3265) (csize!3495 Int)) (Empty!1632) )
))
(declare-datatypes ((BalanceConc!3272 0))(
  ( (BalanceConc!3273 (c!101399 Conc!1632)) )
))
(declare-datatypes ((TokenValueInjection!1646 0))(
  ( (TokenValueInjection!1647 (toValue!1758 Int) (toChars!1617 Int)) )
))
(declare-datatypes ((Rule!1630 0))(
  ( (Rule!1631 (regex!915 Regex!1249) (tag!1177 String!6438) (isSeparator!915 Bool) (transformation!915 TokenValueInjection!1646)) )
))
(declare-datatypes ((Token!1566 0))(
  ( (Token!1567 (value!30944 TokenValue!939) (rule!1615 Rule!1630) (size!4102 Int) (originalCharacters!954 List!5069)) )
))
(declare-fun token!491 () Token!1566)

(declare-fun list!2105 (BalanceConc!3272) List!5069)

(declare-fun charsOf!544 (Token!1566) BalanceConc!3272)

(assert (=> b!530941 (= lt!218596 (list!2105 (charsOf!544 token!491)))))

(declare-fun b!530942 () Bool)

(declare-fun e!319608 () Bool)

(declare-fun tp_is_empty!2853 () Bool)

(declare-fun tp!169272 () Bool)

(assert (=> b!530942 (= e!319608 (and tp_is_empty!2853 tp!169272))))

(declare-fun b!530943 () Bool)

(declare-fun res!224202 () Bool)

(declare-fun e!319612 () Bool)

(assert (=> b!530943 (=> (not res!224202) (not e!319612))))

(declare-fun suffix!1342 () List!5069)

(declare-fun lt!218599 () List!5069)

(declare-fun ++!1403 (List!5069 List!5069) List!5069)

(assert (=> b!530943 (= res!224202 (= (++!1403 lt!218596 suffix!1342) lt!218599))))

(declare-fun e!319614 () Bool)

(assert (=> b!530944 (= e!319614 (and tp!169275 tp!169278))))

(declare-fun b!530945 () Bool)

(declare-fun res!224206 () Bool)

(assert (=> b!530945 (=> (not res!224206) (not e!319611))))

(declare-datatypes ((LexerInterface!801 0))(
  ( (LexerInterfaceExt!798 (__x!3777 Int)) (Lexer!799) )
))
(declare-fun thiss!22590 () LexerInterface!801)

(declare-datatypes ((List!5071 0))(
  ( (Nil!5061) (Cons!5061 (h!10462 Rule!1630) (t!73746 List!5071)) )
))
(declare-fun rules!3103 () List!5071)

(declare-fun rulesInvariant!764 (LexerInterface!801 List!5071) Bool)

(assert (=> b!530945 (= res!224206 (rulesInvariant!764 thiss!22590 rules!3103))))

(declare-fun b!530946 () Bool)

(declare-fun res!224201 () Bool)

(assert (=> b!530946 (=> (not res!224201) (not e!319611))))

(declare-fun isEmpty!3662 (List!5069) Bool)

(assert (=> b!530946 (= res!224201 (not (isEmpty!3662 input!2705)))))

(declare-fun b!530947 () Bool)

(declare-fun e!319607 () Bool)

(declare-fun tp!169276 () Bool)

(assert (=> b!530947 (= e!319607 (and tp_is_empty!2853 tp!169276))))

(declare-fun b!530948 () Bool)

(assert (=> b!530948 (= e!319612 false)))

(declare-fun lt!218597 () Int)

(declare-fun size!4103 (List!5069) Int)

(assert (=> b!530948 (= lt!218597 (size!4103 input!2705))))

(declare-fun lt!218600 () Int)

(assert (=> b!530948 (= lt!218600 (size!4103 lt!218596))))

(declare-fun e!319609 () Bool)

(declare-fun tp!169270 () Bool)

(declare-fun b!530949 () Bool)

(declare-fun e!319616 () Bool)

(declare-fun inv!21 (TokenValue!939) Bool)

(assert (=> b!530949 (= e!319616 (and (inv!21 (value!30944 token!491)) e!319609 tp!169270))))

(declare-fun res!224205 () Bool)

(assert (=> start!48788 (=> (not res!224205) (not e!319611))))

(get-info :version)

(assert (=> start!48788 (= res!224205 ((_ is Lexer!799) thiss!22590))))

(assert (=> start!48788 e!319611))

(assert (=> start!48788 e!319608))

(declare-fun e!319615 () Bool)

(assert (=> start!48788 e!319615))

(declare-fun inv!6348 (Token!1566) Bool)

(assert (=> start!48788 (and (inv!6348 token!491) e!319616)))

(assert (=> start!48788 true))

(assert (=> start!48788 e!319607))

(declare-fun b!530950 () Bool)

(declare-fun e!319613 () Bool)

(declare-fun tp!169274 () Bool)

(assert (=> b!530950 (= e!319615 (and e!319613 tp!169274))))

(declare-fun b!530951 () Bool)

(declare-fun e!319602 () Bool)

(assert (=> b!530951 (= e!319602 e!319612)))

(declare-fun res!224199 () Bool)

(assert (=> b!530951 (=> (not res!224199) (not e!319612))))

(declare-datatypes ((tuple2!6184 0))(
  ( (tuple2!6185 (_1!3356 Token!1566) (_2!3356 List!5069)) )
))
(declare-fun lt!218601 () tuple2!6184)

(assert (=> b!530951 (= res!224199 (and (= (_1!3356 lt!218601) token!491) (= (_2!3356 lt!218601) suffix!1342)))))

(declare-datatypes ((Option!1265 0))(
  ( (None!1264) (Some!1264 (v!16069 tuple2!6184)) )
))
(declare-fun lt!218598 () Option!1265)

(declare-fun get!1887 (Option!1265) tuple2!6184)

(assert (=> b!530951 (= lt!218601 (get!1887 lt!218598))))

(declare-fun b!530952 () Bool)

(declare-fun tp!169271 () Bool)

(declare-fun inv!6345 (String!6438) Bool)

(declare-fun inv!6349 (TokenValueInjection!1646) Bool)

(assert (=> b!530952 (= e!319609 (and tp!169271 (inv!6345 (tag!1177 (rule!1615 token!491))) (inv!6349 (transformation!915 (rule!1615 token!491))) e!319614))))

(declare-fun b!530953 () Bool)

(assert (=> b!530953 (= e!319604 e!319602)))

(declare-fun res!224204 () Bool)

(assert (=> b!530953 (=> (not res!224204) (not e!319602))))

(declare-fun isDefined!1077 (Option!1265) Bool)

(assert (=> b!530953 (= res!224204 (isDefined!1077 lt!218598))))

(declare-fun maxPrefix!499 (LexerInterface!801 List!5071 List!5069) Option!1265)

(assert (=> b!530953 (= lt!218598 (maxPrefix!499 thiss!22590 rules!3103 lt!218599))))

(assert (=> b!530953 (= lt!218599 (++!1403 input!2705 suffix!1342))))

(declare-fun e!319606 () Bool)

(assert (=> b!530954 (= e!319606 (and tp!169273 tp!169269))))

(declare-fun b!530955 () Bool)

(declare-fun res!224207 () Bool)

(assert (=> b!530955 (=> (not res!224207) (not e!319612))))

(assert (=> b!530955 (= res!224207 ((_ is Some!1264) (maxPrefix!499 thiss!22590 rules!3103 input!2705)))))

(declare-fun b!530956 () Bool)

(declare-fun res!224200 () Bool)

(assert (=> b!530956 (=> (not res!224200) (not e!319611))))

(declare-fun isEmpty!3663 (List!5071) Bool)

(assert (=> b!530956 (= res!224200 (not (isEmpty!3663 rules!3103)))))

(declare-fun b!530957 () Bool)

(declare-fun tp!169277 () Bool)

(assert (=> b!530957 (= e!319613 (and tp!169277 (inv!6345 (tag!1177 (h!10462 rules!3103))) (inv!6349 (transformation!915 (h!10462 rules!3103))) e!319606))))

(assert (= (and start!48788 res!224205) b!530956))

(assert (= (and b!530956 res!224200) b!530945))

(assert (= (and b!530945 res!224206) b!530946))

(assert (= (and b!530946 res!224201) b!530941))

(assert (= (and b!530941 res!224203) b!530953))

(assert (= (and b!530953 res!224204) b!530951))

(assert (= (and b!530951 res!224199) b!530955))

(assert (= (and b!530955 res!224207) b!530943))

(assert (= (and b!530943 res!224202) b!530948))

(assert (= (and start!48788 ((_ is Cons!5059) suffix!1342)) b!530942))

(assert (= b!530957 b!530954))

(assert (= b!530950 b!530957))

(assert (= (and start!48788 ((_ is Cons!5061) rules!3103)) b!530950))

(assert (= b!530952 b!530944))

(assert (= b!530949 b!530952))

(assert (= start!48788 b!530949))

(assert (= (and start!48788 ((_ is Cons!5059) input!2705)) b!530947))

(declare-fun m!776073 () Bool)

(assert (=> b!530956 m!776073))

(declare-fun m!776075 () Bool)

(assert (=> b!530953 m!776075))

(declare-fun m!776077 () Bool)

(assert (=> b!530953 m!776077))

(declare-fun m!776079 () Bool)

(assert (=> b!530953 m!776079))

(declare-fun m!776081 () Bool)

(assert (=> b!530943 m!776081))

(declare-fun m!776083 () Bool)

(assert (=> b!530955 m!776083))

(declare-fun m!776085 () Bool)

(assert (=> b!530948 m!776085))

(declare-fun m!776087 () Bool)

(assert (=> b!530948 m!776087))

(declare-fun m!776089 () Bool)

(assert (=> b!530952 m!776089))

(declare-fun m!776091 () Bool)

(assert (=> b!530952 m!776091))

(declare-fun m!776093 () Bool)

(assert (=> b!530945 m!776093))

(declare-fun m!776095 () Bool)

(assert (=> b!530949 m!776095))

(declare-fun m!776097 () Bool)

(assert (=> b!530951 m!776097))

(declare-fun m!776099 () Bool)

(assert (=> b!530946 m!776099))

(declare-fun m!776101 () Bool)

(assert (=> b!530941 m!776101))

(assert (=> b!530941 m!776101))

(declare-fun m!776103 () Bool)

(assert (=> b!530941 m!776103))

(declare-fun m!776105 () Bool)

(assert (=> b!530957 m!776105))

(declare-fun m!776107 () Bool)

(assert (=> b!530957 m!776107))

(declare-fun m!776109 () Bool)

(assert (=> start!48788 m!776109))

(check-sat (not b!530949) (not b!530943) tp_is_empty!2853 b_and!51857 (not b!530950) (not b!530947) (not b!530941) (not b!530956) (not b!530955) (not b!530953) (not b!530951) b_and!51851 (not b!530942) (not b!530952) (not b!530946) (not b_next!14311) (not b!530945) (not b!530948) (not b!530957) b_and!51855 (not b_next!14309) (not start!48788) (not b_next!14305) (not b_next!14307) b_and!51853)
(check-sat b_and!51857 b_and!51851 (not b_next!14305) (not b_next!14311) b_and!51855 (not b_next!14309) (not b_next!14307) b_and!51853)
