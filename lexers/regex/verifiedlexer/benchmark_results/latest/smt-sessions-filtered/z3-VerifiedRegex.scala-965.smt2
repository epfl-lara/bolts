; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48792 () Bool)

(assert start!48792)

(declare-fun b!531046 () Bool)

(declare-fun b_free!14305 () Bool)

(declare-fun b_next!14321 () Bool)

(assert (=> b!531046 (= b_free!14305 (not b_next!14321))))

(declare-fun tp!169332 () Bool)

(declare-fun b_and!51867 () Bool)

(assert (=> b!531046 (= tp!169332 b_and!51867)))

(declare-fun b_free!14307 () Bool)

(declare-fun b_next!14323 () Bool)

(assert (=> b!531046 (= b_free!14307 (not b_next!14323))))

(declare-fun tp!169329 () Bool)

(declare-fun b_and!51869 () Bool)

(assert (=> b!531046 (= tp!169329 b_and!51869)))

(declare-fun b!531043 () Bool)

(declare-fun b_free!14309 () Bool)

(declare-fun b_next!14325 () Bool)

(assert (=> b!531043 (= b_free!14309 (not b_next!14325))))

(declare-fun tp!169330 () Bool)

(declare-fun b_and!51871 () Bool)

(assert (=> b!531043 (= tp!169330 b_and!51871)))

(declare-fun b_free!14311 () Bool)

(declare-fun b_next!14327 () Bool)

(assert (=> b!531043 (= b_free!14311 (not b_next!14327))))

(declare-fun tp!169338 () Bool)

(declare-fun b_and!51873 () Bool)

(assert (=> b!531043 (= tp!169338 b_and!51873)))

(declare-fun e!319696 () Bool)

(assert (=> b!531043 (= e!319696 (and tp!169330 tp!169338))))

(declare-fun b!531044 () Bool)

(declare-fun res!224259 () Bool)

(declare-fun e!319704 () Bool)

(assert (=> b!531044 (=> (not res!224259) (not e!319704))))

(declare-datatypes ((C!3424 0))(
  ( (C!3425 (val!1938 Int)) )
))
(declare-datatypes ((Regex!1251 0))(
  ( (ElementMatch!1251 (c!101404 C!3424)) (Concat!2192 (regOne!3014 Regex!1251) (regTwo!3014 Regex!1251)) (EmptyExpr!1251) (Star!1251 (reg!1580 Regex!1251)) (EmptyLang!1251) (Union!1251 (regOne!3015 Regex!1251) (regTwo!3015 Regex!1251)) )
))
(declare-datatypes ((String!6448 0))(
  ( (String!6449 (value!30975 String)) )
))
(declare-datatypes ((List!5075 0))(
  ( (Nil!5065) (Cons!5065 (h!10466 (_ BitVec 16)) (t!73750 List!5075)) )
))
(declare-datatypes ((TokenValue!941 0))(
  ( (FloatLiteralValue!1882 (text!7032 List!5075)) (TokenValueExt!940 (__x!3780 Int)) (Broken!4705 (value!30976 List!5075)) (Object!950) (End!941) (Def!941) (Underscore!941) (Match!941) (Else!941) (Error!941) (Case!941) (If!941) (Extends!941) (Abstract!941) (Class!941) (Val!941) (DelimiterValue!1882 (del!1001 List!5075)) (KeywordValue!947 (value!30977 List!5075)) (CommentValue!1882 (value!30978 List!5075)) (WhitespaceValue!1882 (value!30979 List!5075)) (IndentationValue!941 (value!30980 List!5075)) (String!6450) (Int32!941) (Broken!4706 (value!30981 List!5075)) (Boolean!942) (Unit!8850) (OperatorValue!944 (op!1001 List!5075)) (IdentifierValue!1882 (value!30982 List!5075)) (IdentifierValue!1883 (value!30983 List!5075)) (WhitespaceValue!1883 (value!30984 List!5075)) (True!1882) (False!1882) (Broken!4707 (value!30985 List!5075)) (Broken!4708 (value!30986 List!5075)) (True!1883) (RightBrace!941) (RightBracket!941) (Colon!941) (Null!941) (Comma!941) (LeftBracket!941) (False!1883) (LeftBrace!941) (ImaginaryLiteralValue!941 (text!7033 List!5075)) (StringLiteralValue!2823 (value!30987 List!5075)) (EOFValue!941 (value!30988 List!5075)) (IdentValue!941 (value!30989 List!5075)) (DelimiterValue!1883 (value!30990 List!5075)) (DedentValue!941 (value!30991 List!5075)) (NewLineValue!941 (value!30992 List!5075)) (IntegerValue!2823 (value!30993 (_ BitVec 32)) (text!7034 List!5075)) (IntegerValue!2824 (value!30994 Int) (text!7035 List!5075)) (Times!941) (Or!941) (Equal!941) (Minus!941) (Broken!4709 (value!30995 List!5075)) (And!941) (Div!941) (LessEqual!941) (Mod!941) (Concat!2193) (Not!941) (Plus!941) (SpaceValue!941 (value!30996 List!5075)) (IntegerValue!2825 (value!30997 Int) (text!7036 List!5075)) (StringLiteralValue!2824 (text!7037 List!5075)) (FloatLiteralValue!1883 (text!7038 List!5075)) (BytesLiteralValue!941 (value!30998 List!5075)) (CommentValue!1883 (value!30999 List!5075)) (StringLiteralValue!2825 (value!31000 List!5075)) (ErrorTokenValue!941 (msg!1002 List!5075)) )
))
(declare-datatypes ((List!5076 0))(
  ( (Nil!5066) (Cons!5066 (h!10467 C!3424) (t!73751 List!5076)) )
))
(declare-datatypes ((IArray!3269 0))(
  ( (IArray!3270 (innerList!1692 List!5076)) )
))
(declare-datatypes ((Conc!1634 0))(
  ( (Node!1634 (left!4281 Conc!1634) (right!4611 Conc!1634) (csize!3498 Int) (cheight!1845 Int)) (Leaf!2600 (xs!4271 IArray!3269) (csize!3499 Int)) (Empty!1634) )
))
(declare-datatypes ((BalanceConc!3276 0))(
  ( (BalanceConc!3277 (c!101405 Conc!1634)) )
))
(declare-datatypes ((TokenValueInjection!1650 0))(
  ( (TokenValueInjection!1651 (toValue!1760 Int) (toChars!1619 Int)) )
))
(declare-datatypes ((Rule!1634 0))(
  ( (Rule!1635 (regex!917 Regex!1251) (tag!1179 String!6448) (isSeparator!917 Bool) (transformation!917 TokenValueInjection!1650)) )
))
(declare-datatypes ((List!5077 0))(
  ( (Nil!5067) (Cons!5067 (h!10468 Rule!1634) (t!73752 List!5077)) )
))
(declare-fun rules!3103 () List!5077)

(declare-datatypes ((LexerInterface!803 0))(
  ( (LexerInterfaceExt!800 (__x!3781 Int)) (Lexer!801) )
))
(declare-fun thiss!22590 () LexerInterface!803)

(declare-fun input!2705 () List!5076)

(get-info :version)

(declare-datatypes ((Token!1570 0))(
  ( (Token!1571 (value!31001 TokenValue!941) (rule!1617 Rule!1634) (size!4105 Int) (originalCharacters!956 List!5076)) )
))
(declare-datatypes ((tuple2!6188 0))(
  ( (tuple2!6189 (_1!3358 Token!1570) (_2!3358 List!5076)) )
))
(declare-datatypes ((Option!1267 0))(
  ( (None!1266) (Some!1266 (v!16071 tuple2!6188)) )
))
(declare-fun maxPrefix!501 (LexerInterface!803 List!5077 List!5076) Option!1267)

(assert (=> b!531044 (= res!224259 ((_ is Some!1266) (maxPrefix!501 thiss!22590 rules!3103 input!2705)))))

(declare-fun e!319706 () Bool)

(declare-fun tp!169336 () Bool)

(declare-fun b!531045 () Bool)

(declare-fun inv!6352 (String!6448) Bool)

(declare-fun inv!6355 (TokenValueInjection!1650) Bool)

(assert (=> b!531045 (= e!319706 (and tp!169336 (inv!6352 (tag!1179 (h!10468 rules!3103))) (inv!6355 (transformation!917 (h!10468 rules!3103))) e!319696))))

(declare-fun e!319695 () Bool)

(assert (=> b!531046 (= e!319695 (and tp!169332 tp!169329))))

(declare-fun b!531047 () Bool)

(declare-fun e!319693 () Bool)

(declare-fun tp_is_empty!2857 () Bool)

(declare-fun tp!169331 () Bool)

(assert (=> b!531047 (= e!319693 (and tp_is_empty!2857 tp!169331))))

(declare-fun tp!169337 () Bool)

(declare-fun b!531048 () Bool)

(declare-fun e!319701 () Bool)

(declare-fun e!319703 () Bool)

(declare-fun token!491 () Token!1570)

(declare-fun inv!21 (TokenValue!941) Bool)

(assert (=> b!531048 (= e!319703 (and (inv!21 (value!31001 token!491)) e!319701 tp!169337))))

(declare-fun b!531049 () Bool)

(declare-fun res!224253 () Bool)

(declare-fun e!319705 () Bool)

(assert (=> b!531049 (=> (not res!224253) (not e!319705))))

(declare-fun isEmpty!3666 (List!5076) Bool)

(assert (=> b!531049 (= res!224253 (not (isEmpty!3666 input!2705)))))

(declare-fun b!531050 () Bool)

(declare-fun e!319700 () Bool)

(assert (=> b!531050 (= e!319700 e!319704)))

(declare-fun res!224255 () Bool)

(assert (=> b!531050 (=> (not res!224255) (not e!319704))))

(declare-fun suffix!1342 () List!5076)

(declare-fun lt!218631 () tuple2!6188)

(assert (=> b!531050 (= res!224255 (and (= (_1!3358 lt!218631) token!491) (= (_2!3358 lt!218631) suffix!1342)))))

(declare-fun lt!218629 () Option!1267)

(declare-fun get!1890 (Option!1267) tuple2!6188)

(assert (=> b!531050 (= lt!218631 (get!1890 lt!218629))))

(declare-fun b!531051 () Bool)

(declare-fun res!224258 () Bool)

(assert (=> b!531051 (=> (not res!224258) (not e!319705))))

(declare-fun isEmpty!3667 (List!5077) Bool)

(assert (=> b!531051 (= res!224258 (not (isEmpty!3667 rules!3103)))))

(declare-fun res!224257 () Bool)

(assert (=> start!48792 (=> (not res!224257) (not e!319705))))

(assert (=> start!48792 (= res!224257 ((_ is Lexer!801) thiss!22590))))

(assert (=> start!48792 e!319705))

(assert (=> start!48792 e!319693))

(declare-fun e!319692 () Bool)

(assert (=> start!48792 e!319692))

(declare-fun inv!6356 (Token!1570) Bool)

(assert (=> start!48792 (and (inv!6356 token!491) e!319703)))

(assert (=> start!48792 true))

(declare-fun e!319698 () Bool)

(assert (=> start!48792 e!319698))

(declare-fun b!531052 () Bool)

(declare-fun tp!169333 () Bool)

(assert (=> b!531052 (= e!319692 (and e!319706 tp!169333))))

(declare-fun b!531053 () Bool)

(assert (=> b!531053 (= e!319704 false)))

(declare-fun lt!218627 () List!5076)

(declare-datatypes ((Unit!8851 0))(
  ( (Unit!8852) )
))
(declare-fun lt!218630 () Unit!8851)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!2 (List!5076 List!5076 List!5076 List!5076) Unit!8851)

(assert (=> b!531053 (= lt!218630 (lemmaConcatSameAndSameSizesThenSameLists!2 lt!218627 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!531054 () Bool)

(declare-fun e!319702 () Bool)

(assert (=> b!531054 (= e!319702 e!319700)))

(declare-fun res!224261 () Bool)

(assert (=> b!531054 (=> (not res!224261) (not e!319700))))

(declare-fun isDefined!1079 (Option!1267) Bool)

(assert (=> b!531054 (= res!224261 (isDefined!1079 lt!218629))))

(declare-fun lt!218628 () List!5076)

(assert (=> b!531054 (= lt!218629 (maxPrefix!501 thiss!22590 rules!3103 lt!218628))))

(declare-fun ++!1405 (List!5076 List!5076) List!5076)

(assert (=> b!531054 (= lt!218628 (++!1405 input!2705 suffix!1342))))

(declare-fun b!531055 () Bool)

(declare-fun res!224256 () Bool)

(assert (=> b!531055 (=> (not res!224256) (not e!319705))))

(declare-fun rulesInvariant!766 (LexerInterface!803 List!5077) Bool)

(assert (=> b!531055 (= res!224256 (rulesInvariant!766 thiss!22590 rules!3103))))

(declare-fun b!531056 () Bool)

(declare-fun res!224254 () Bool)

(assert (=> b!531056 (=> (not res!224254) (not e!319704))))

(assert (=> b!531056 (= res!224254 (= (++!1405 lt!218627 suffix!1342) lt!218628))))

(declare-fun b!531057 () Bool)

(declare-fun tp!169334 () Bool)

(assert (=> b!531057 (= e!319701 (and tp!169334 (inv!6352 (tag!1179 (rule!1617 token!491))) (inv!6355 (transformation!917 (rule!1617 token!491))) e!319695))))

(declare-fun b!531058 () Bool)

(assert (=> b!531058 (= e!319705 e!319702)))

(declare-fun res!224260 () Bool)

(assert (=> b!531058 (=> (not res!224260) (not e!319702))))

(assert (=> b!531058 (= res!224260 (= lt!218627 input!2705))))

(declare-fun list!2107 (BalanceConc!3276) List!5076)

(declare-fun charsOf!546 (Token!1570) BalanceConc!3276)

(assert (=> b!531058 (= lt!218627 (list!2107 (charsOf!546 token!491)))))

(declare-fun b!531059 () Bool)

(declare-fun tp!169335 () Bool)

(assert (=> b!531059 (= e!319698 (and tp_is_empty!2857 tp!169335))))

(assert (= (and start!48792 res!224257) b!531051))

(assert (= (and b!531051 res!224258) b!531055))

(assert (= (and b!531055 res!224256) b!531049))

(assert (= (and b!531049 res!224253) b!531058))

(assert (= (and b!531058 res!224260) b!531054))

(assert (= (and b!531054 res!224261) b!531050))

(assert (= (and b!531050 res!224255) b!531044))

(assert (= (and b!531044 res!224259) b!531056))

(assert (= (and b!531056 res!224254) b!531053))

(assert (= (and start!48792 ((_ is Cons!5066) suffix!1342)) b!531047))

(assert (= b!531045 b!531043))

(assert (= b!531052 b!531045))

(assert (= (and start!48792 ((_ is Cons!5067) rules!3103)) b!531052))

(assert (= b!531057 b!531046))

(assert (= b!531048 b!531057))

(assert (= start!48792 b!531048))

(assert (= (and start!48792 ((_ is Cons!5066) input!2705)) b!531059))

(declare-fun m!776147 () Bool)

(assert (=> b!531051 m!776147))

(declare-fun m!776149 () Bool)

(assert (=> b!531057 m!776149))

(declare-fun m!776151 () Bool)

(assert (=> b!531057 m!776151))

(declare-fun m!776153 () Bool)

(assert (=> b!531049 m!776153))

(declare-fun m!776155 () Bool)

(assert (=> b!531056 m!776155))

(declare-fun m!776157 () Bool)

(assert (=> start!48792 m!776157))

(declare-fun m!776159 () Bool)

(assert (=> b!531053 m!776159))

(declare-fun m!776161 () Bool)

(assert (=> b!531050 m!776161))

(declare-fun m!776163 () Bool)

(assert (=> b!531044 m!776163))

(declare-fun m!776165 () Bool)

(assert (=> b!531054 m!776165))

(declare-fun m!776167 () Bool)

(assert (=> b!531054 m!776167))

(declare-fun m!776169 () Bool)

(assert (=> b!531054 m!776169))

(declare-fun m!776171 () Bool)

(assert (=> b!531045 m!776171))

(declare-fun m!776173 () Bool)

(assert (=> b!531045 m!776173))

(declare-fun m!776175 () Bool)

(assert (=> b!531058 m!776175))

(assert (=> b!531058 m!776175))

(declare-fun m!776177 () Bool)

(assert (=> b!531058 m!776177))

(declare-fun m!776179 () Bool)

(assert (=> b!531055 m!776179))

(declare-fun m!776181 () Bool)

(assert (=> b!531048 m!776181))

(check-sat (not b!531056) (not b!531054) (not b_next!14327) (not b!531058) (not b_next!14325) (not b!531053) (not b!531059) (not b!531044) (not b!531047) tp_is_empty!2857 (not b!531057) (not b!531052) (not b!531055) (not b_next!14321) (not b!531048) b_and!51869 (not start!48792) (not b!531051) (not b!531049) (not b!531045) (not b!531050) (not b_next!14323) b_and!51867 b_and!51871 b_and!51873)
(check-sat (not b_next!14321) (not b_next!14327) b_and!51869 (not b_next!14325) (not b_next!14323) b_and!51867 b_and!51871 b_and!51873)
