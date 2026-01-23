; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48784 () Bool)

(assert start!48784)

(declare-fun b!530853 () Bool)

(declare-fun b_free!14273 () Bool)

(declare-fun b_next!14289 () Bool)

(assert (=> b!530853 (= b_free!14273 (not b_next!14289))))

(declare-fun tp!169211 () Bool)

(declare-fun b_and!51835 () Bool)

(assert (=> b!530853 (= tp!169211 b_and!51835)))

(declare-fun b_free!14275 () Bool)

(declare-fun b_next!14291 () Bool)

(assert (=> b!530853 (= b_free!14275 (not b_next!14291))))

(declare-fun tp!169217 () Bool)

(declare-fun b_and!51837 () Bool)

(assert (=> b!530853 (= tp!169217 b_and!51837)))

(declare-fun b!530846 () Bool)

(declare-fun b_free!14277 () Bool)

(declare-fun b_next!14293 () Bool)

(assert (=> b!530846 (= b_free!14277 (not b_next!14293))))

(declare-fun tp!169214 () Bool)

(declare-fun b_and!51839 () Bool)

(assert (=> b!530846 (= tp!169214 b_and!51839)))

(declare-fun b_free!14279 () Bool)

(declare-fun b_next!14295 () Bool)

(assert (=> b!530846 (= b_free!14279 (not b_next!14295))))

(declare-fun tp!169209 () Bool)

(declare-fun b_and!51841 () Bool)

(assert (=> b!530846 (= tp!169209 b_and!51841)))

(declare-fun res!224152 () Bool)

(declare-fun e!319522 () Bool)

(assert (=> start!48784 (=> (not res!224152) (not e!319522))))

(declare-datatypes ((LexerInterface!799 0))(
  ( (LexerInterfaceExt!796 (__x!3772 Int)) (Lexer!797) )
))
(declare-fun thiss!22590 () LexerInterface!799)

(get-info :version)

(assert (=> start!48784 (= res!224152 ((_ is Lexer!797) thiss!22590))))

(assert (=> start!48784 e!319522))

(declare-fun e!319525 () Bool)

(assert (=> start!48784 e!319525))

(declare-fun e!319517 () Bool)

(assert (=> start!48784 e!319517))

(declare-datatypes ((C!3416 0))(
  ( (C!3417 (val!1934 Int)) )
))
(declare-datatypes ((Regex!1247 0))(
  ( (ElementMatch!1247 (c!101392 C!3416)) (Concat!2184 (regOne!3006 Regex!1247) (regTwo!3006 Regex!1247)) (EmptyExpr!1247) (Star!1247 (reg!1576 Regex!1247)) (EmptyLang!1247) (Union!1247 (regOne!3007 Regex!1247) (regTwo!3007 Regex!1247)) )
))
(declare-datatypes ((List!5063 0))(
  ( (Nil!5053) (Cons!5053 (h!10454 (_ BitVec 16)) (t!73738 List!5063)) )
))
(declare-datatypes ((TokenValue!937 0))(
  ( (FloatLiteralValue!1874 (text!7004 List!5063)) (TokenValueExt!936 (__x!3773 Int)) (Broken!4685 (value!30861 List!5063)) (Object!946) (End!937) (Def!937) (Underscore!937) (Match!937) (Else!937) (Error!937) (Case!937) (If!937) (Extends!937) (Abstract!937) (Class!937) (Val!937) (DelimiterValue!1874 (del!997 List!5063)) (KeywordValue!943 (value!30862 List!5063)) (CommentValue!1874 (value!30863 List!5063)) (WhitespaceValue!1874 (value!30864 List!5063)) (IndentationValue!937 (value!30865 List!5063)) (String!6428) (Int32!937) (Broken!4686 (value!30866 List!5063)) (Boolean!938) (Unit!8844) (OperatorValue!940 (op!997 List!5063)) (IdentifierValue!1874 (value!30867 List!5063)) (IdentifierValue!1875 (value!30868 List!5063)) (WhitespaceValue!1875 (value!30869 List!5063)) (True!1874) (False!1874) (Broken!4687 (value!30870 List!5063)) (Broken!4688 (value!30871 List!5063)) (True!1875) (RightBrace!937) (RightBracket!937) (Colon!937) (Null!937) (Comma!937) (LeftBracket!937) (False!1875) (LeftBrace!937) (ImaginaryLiteralValue!937 (text!7005 List!5063)) (StringLiteralValue!2811 (value!30872 List!5063)) (EOFValue!937 (value!30873 List!5063)) (IdentValue!937 (value!30874 List!5063)) (DelimiterValue!1875 (value!30875 List!5063)) (DedentValue!937 (value!30876 List!5063)) (NewLineValue!937 (value!30877 List!5063)) (IntegerValue!2811 (value!30878 (_ BitVec 32)) (text!7006 List!5063)) (IntegerValue!2812 (value!30879 Int) (text!7007 List!5063)) (Times!937) (Or!937) (Equal!937) (Minus!937) (Broken!4689 (value!30880 List!5063)) (And!937) (Div!937) (LessEqual!937) (Mod!937) (Concat!2185) (Not!937) (Plus!937) (SpaceValue!937 (value!30881 List!5063)) (IntegerValue!2813 (value!30882 Int) (text!7008 List!5063)) (StringLiteralValue!2812 (text!7009 List!5063)) (FloatLiteralValue!1875 (text!7010 List!5063)) (BytesLiteralValue!937 (value!30883 List!5063)) (CommentValue!1875 (value!30884 List!5063)) (StringLiteralValue!2813 (value!30885 List!5063)) (ErrorTokenValue!937 (msg!998 List!5063)) )
))
(declare-datatypes ((String!6429 0))(
  ( (String!6430 (value!30886 String)) )
))
(declare-datatypes ((List!5064 0))(
  ( (Nil!5054) (Cons!5054 (h!10455 C!3416) (t!73739 List!5064)) )
))
(declare-datatypes ((IArray!3261 0))(
  ( (IArray!3262 (innerList!1688 List!5064)) )
))
(declare-datatypes ((Conc!1630 0))(
  ( (Node!1630 (left!4275 Conc!1630) (right!4605 Conc!1630) (csize!3490 Int) (cheight!1841 Int)) (Leaf!2594 (xs!4267 IArray!3261) (csize!3491 Int)) (Empty!1630) )
))
(declare-datatypes ((BalanceConc!3268 0))(
  ( (BalanceConc!3269 (c!101393 Conc!1630)) )
))
(declare-datatypes ((TokenValueInjection!1642 0))(
  ( (TokenValueInjection!1643 (toValue!1756 Int) (toChars!1615 Int)) )
))
(declare-datatypes ((Rule!1626 0))(
  ( (Rule!1627 (regex!913 Regex!1247) (tag!1175 String!6429) (isSeparator!913 Bool) (transformation!913 TokenValueInjection!1642)) )
))
(declare-datatypes ((Token!1562 0))(
  ( (Token!1563 (value!30887 TokenValue!937) (rule!1613 Rule!1626) (size!4099 Int) (originalCharacters!952 List!5064)) )
))
(declare-fun token!491 () Token!1562)

(declare-fun e!319519 () Bool)

(declare-fun inv!6341 (Token!1562) Bool)

(assert (=> start!48784 (and (inv!6341 token!491) e!319519)))

(assert (=> start!48784 true))

(declare-fun e!319518 () Bool)

(assert (=> start!48784 e!319518))

(declare-fun b!530841 () Bool)

(declare-fun res!224147 () Bool)

(assert (=> b!530841 (=> (not res!224147) (not e!319522))))

(declare-fun input!2705 () List!5064)

(declare-fun list!2103 (BalanceConc!3268) List!5064)

(declare-fun charsOf!542 (Token!1562) BalanceConc!3268)

(assert (=> b!530841 (= res!224147 (= (list!2103 (charsOf!542 token!491)) input!2705))))

(declare-fun b!530842 () Bool)

(declare-fun tp_is_empty!2849 () Bool)

(declare-fun tp!169216 () Bool)

(assert (=> b!530842 (= e!319525 (and tp_is_empty!2849 tp!169216))))

(declare-fun b!530843 () Bool)

(declare-fun tp!169215 () Bool)

(assert (=> b!530843 (= e!319518 (and tp_is_empty!2849 tp!169215))))

(declare-fun b!530844 () Bool)

(declare-fun tp!169212 () Bool)

(declare-fun e!319520 () Bool)

(declare-fun e!319523 () Bool)

(declare-datatypes ((List!5065 0))(
  ( (Nil!5055) (Cons!5055 (h!10456 Rule!1626) (t!73740 List!5065)) )
))
(declare-fun rules!3103 () List!5065)

(declare-fun inv!6338 (String!6429) Bool)

(declare-fun inv!6342 (TokenValueInjection!1642) Bool)

(assert (=> b!530844 (= e!319520 (and tp!169212 (inv!6338 (tag!1175 (h!10456 rules!3103))) (inv!6342 (transformation!913 (h!10456 rules!3103))) e!319523))))

(declare-fun b!530845 () Bool)

(declare-fun res!224151 () Bool)

(assert (=> b!530845 (=> (not res!224151) (not e!319522))))

(declare-fun isEmpty!3658 (List!5065) Bool)

(assert (=> b!530845 (= res!224151 (not (isEmpty!3658 rules!3103)))))

(assert (=> b!530846 (= e!319523 (and tp!169214 tp!169209))))

(declare-fun b!530847 () Bool)

(declare-fun e!319516 () Bool)

(assert (=> b!530847 (= e!319522 e!319516)))

(declare-fun res!224150 () Bool)

(assert (=> b!530847 (=> (not res!224150) (not e!319516))))

(declare-datatypes ((tuple2!6180 0))(
  ( (tuple2!6181 (_1!3354 Token!1562) (_2!3354 List!5064)) )
))
(declare-datatypes ((Option!1263 0))(
  ( (None!1262) (Some!1262 (v!16067 tuple2!6180)) )
))
(declare-fun lt!218563 () Option!1263)

(declare-fun isDefined!1075 (Option!1263) Bool)

(assert (=> b!530847 (= res!224150 (isDefined!1075 lt!218563))))

(declare-fun suffix!1342 () List!5064)

(declare-fun maxPrefix!497 (LexerInterface!799 List!5065 List!5064) Option!1263)

(declare-fun ++!1401 (List!5064 List!5064) List!5064)

(assert (=> b!530847 (= lt!218563 (maxPrefix!497 thiss!22590 rules!3103 (++!1401 input!2705 suffix!1342)))))

(declare-fun b!530848 () Bool)

(declare-fun tp!169218 () Bool)

(assert (=> b!530848 (= e!319517 (and e!319520 tp!169218))))

(declare-fun b!530849 () Bool)

(declare-fun e!319524 () Bool)

(assert (=> b!530849 (= e!319516 e!319524)))

(declare-fun res!224153 () Bool)

(assert (=> b!530849 (=> (not res!224153) (not e!319524))))

(declare-fun lt!218564 () tuple2!6180)

(assert (=> b!530849 (= res!224153 (and (= (_1!3354 lt!218564) token!491) (= (_2!3354 lt!218564) suffix!1342)))))

(declare-fun get!1884 (Option!1263) tuple2!6180)

(assert (=> b!530849 (= lt!218564 (get!1884 lt!218563))))

(declare-fun b!530850 () Bool)

(assert (=> b!530850 (= e!319524 false)))

(declare-fun lt!218565 () Bool)

(declare-fun rulesValidInductive!314 (LexerInterface!799 List!5065) Bool)

(assert (=> b!530850 (= lt!218565 (rulesValidInductive!314 thiss!22590 rules!3103))))

(declare-fun b!530851 () Bool)

(declare-fun e!319515 () Bool)

(declare-fun tp!169210 () Bool)

(declare-fun e!319526 () Bool)

(assert (=> b!530851 (= e!319515 (and tp!169210 (inv!6338 (tag!1175 (rule!1613 token!491))) (inv!6342 (transformation!913 (rule!1613 token!491))) e!319526))))

(declare-fun b!530852 () Bool)

(declare-fun res!224148 () Bool)

(assert (=> b!530852 (=> (not res!224148) (not e!319522))))

(declare-fun rulesInvariant!762 (LexerInterface!799 List!5065) Bool)

(assert (=> b!530852 (= res!224148 (rulesInvariant!762 thiss!22590 rules!3103))))

(assert (=> b!530853 (= e!319526 (and tp!169211 tp!169217))))

(declare-fun b!530854 () Bool)

(declare-fun res!224149 () Bool)

(assert (=> b!530854 (=> (not res!224149) (not e!319522))))

(declare-fun isEmpty!3659 (List!5064) Bool)

(assert (=> b!530854 (= res!224149 (not (isEmpty!3659 input!2705)))))

(declare-fun b!530855 () Bool)

(declare-fun tp!169213 () Bool)

(declare-fun inv!21 (TokenValue!937) Bool)

(assert (=> b!530855 (= e!319519 (and (inv!21 (value!30887 token!491)) e!319515 tp!169213))))

(assert (= (and start!48784 res!224152) b!530845))

(assert (= (and b!530845 res!224151) b!530852))

(assert (= (and b!530852 res!224148) b!530854))

(assert (= (and b!530854 res!224149) b!530841))

(assert (= (and b!530841 res!224147) b!530847))

(assert (= (and b!530847 res!224150) b!530849))

(assert (= (and b!530849 res!224153) b!530850))

(assert (= (and start!48784 ((_ is Cons!5054) suffix!1342)) b!530842))

(assert (= b!530844 b!530846))

(assert (= b!530848 b!530844))

(assert (= (and start!48784 ((_ is Cons!5055) rules!3103)) b!530848))

(assert (= b!530851 b!530853))

(assert (= b!530855 b!530851))

(assert (= start!48784 b!530855))

(assert (= (and start!48784 ((_ is Cons!5054) input!2705)) b!530843))

(declare-fun m!776003 () Bool)

(assert (=> b!530849 m!776003))

(declare-fun m!776005 () Bool)

(assert (=> b!530851 m!776005))

(declare-fun m!776007 () Bool)

(assert (=> b!530851 m!776007))

(declare-fun m!776009 () Bool)

(assert (=> b!530855 m!776009))

(declare-fun m!776011 () Bool)

(assert (=> start!48784 m!776011))

(declare-fun m!776013 () Bool)

(assert (=> b!530845 m!776013))

(declare-fun m!776015 () Bool)

(assert (=> b!530847 m!776015))

(declare-fun m!776017 () Bool)

(assert (=> b!530847 m!776017))

(assert (=> b!530847 m!776017))

(declare-fun m!776019 () Bool)

(assert (=> b!530847 m!776019))

(declare-fun m!776021 () Bool)

(assert (=> b!530844 m!776021))

(declare-fun m!776023 () Bool)

(assert (=> b!530844 m!776023))

(declare-fun m!776025 () Bool)

(assert (=> b!530852 m!776025))

(declare-fun m!776027 () Bool)

(assert (=> b!530841 m!776027))

(assert (=> b!530841 m!776027))

(declare-fun m!776029 () Bool)

(assert (=> b!530841 m!776029))

(declare-fun m!776031 () Bool)

(assert (=> b!530854 m!776031))

(declare-fun m!776033 () Bool)

(assert (=> b!530850 m!776033))

(check-sat (not b!530845) b_and!51841 (not b_next!14291) (not b_next!14293) (not b!530841) (not b!530855) (not b!530847) (not b_next!14289) (not b!530844) (not b!530851) (not b!530848) (not b!530849) (not b!530854) b_and!51837 (not b_next!14295) b_and!51835 (not b!530850) (not b!530842) (not b!530852) (not start!48784) (not b!530843) b_and!51839 tp_is_empty!2849)
(check-sat b_and!51841 b_and!51835 (not b_next!14291) (not b_next!14293) (not b_next!14289) b_and!51839 b_and!51837 (not b_next!14295))
