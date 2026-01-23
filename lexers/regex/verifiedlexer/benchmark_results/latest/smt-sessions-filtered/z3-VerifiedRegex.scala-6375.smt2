; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!331866 () Bool)

(assert start!331866)

(declare-fun b!3579869 () Bool)

(declare-fun b_free!91773 () Bool)

(declare-fun b_next!92477 () Bool)

(assert (=> b!3579869 (= b_free!91773 (not b_next!92477))))

(declare-fun tp!1095524 () Bool)

(declare-fun b_and!258075 () Bool)

(assert (=> b!3579869 (= tp!1095524 b_and!258075)))

(declare-fun b_free!91775 () Bool)

(declare-fun b_next!92479 () Bool)

(assert (=> b!3579869 (= b_free!91775 (not b_next!92479))))

(declare-fun tp!1095520 () Bool)

(declare-fun b_and!258077 () Bool)

(assert (=> b!3579869 (= tp!1095520 b_and!258077)))

(declare-fun b!3579870 () Bool)

(declare-fun b_free!91777 () Bool)

(declare-fun b_next!92481 () Bool)

(assert (=> b!3579870 (= b_free!91777 (not b_next!92481))))

(declare-fun tp!1095516 () Bool)

(declare-fun b_and!258079 () Bool)

(assert (=> b!3579870 (= tp!1095516 b_and!258079)))

(declare-fun b_free!91779 () Bool)

(declare-fun b_next!92483 () Bool)

(assert (=> b!3579870 (= b_free!91779 (not b_next!92483))))

(declare-fun tp!1095525 () Bool)

(declare-fun b_and!258081 () Bool)

(assert (=> b!3579870 (= tp!1095525 b_and!258081)))

(declare-fun b!3579878 () Bool)

(declare-fun b_free!91781 () Bool)

(declare-fun b_next!92485 () Bool)

(assert (=> b!3579878 (= b_free!91781 (not b_next!92485))))

(declare-fun tp!1095514 () Bool)

(declare-fun b_and!258083 () Bool)

(assert (=> b!3579878 (= tp!1095514 b_and!258083)))

(declare-fun b_free!91783 () Bool)

(declare-fun b_next!92487 () Bool)

(assert (=> b!3579878 (= b_free!91783 (not b_next!92487))))

(declare-fun tp!1095519 () Bool)

(declare-fun b_and!258085 () Bool)

(assert (=> b!3579878 (= tp!1095519 b_and!258085)))

(declare-fun b!3579872 () Bool)

(declare-fun b_free!91785 () Bool)

(declare-fun b_next!92489 () Bool)

(assert (=> b!3579872 (= b_free!91785 (not b_next!92489))))

(declare-fun tp!1095517 () Bool)

(declare-fun b_and!258087 () Bool)

(assert (=> b!3579872 (= tp!1095517 b_and!258087)))

(declare-fun b_free!91787 () Bool)

(declare-fun b_next!92491 () Bool)

(assert (=> b!3579872 (= b_free!91787 (not b_next!92491))))

(declare-fun tp!1095523 () Bool)

(declare-fun b_and!258089 () Bool)

(assert (=> b!3579872 (= tp!1095523 b_and!258089)))

(declare-fun b!3579867 () Bool)

(declare-fun res!1444259 () Bool)

(declare-fun e!2214788 () Bool)

(assert (=> b!3579867 (=> (not res!1444259) (not e!2214788))))

(declare-datatypes ((LexerInterface!5119 0))(
  ( (LexerInterfaceExt!5116 (__x!23737 Int)) (Lexer!5117) )
))
(declare-fun thiss!23823 () LexerInterface!5119)

(declare-datatypes ((List!37705 0))(
  ( (Nil!37581) (Cons!37581 (h!43001 (_ BitVec 16)) (t!290216 List!37705)) )
))
(declare-datatypes ((TokenValue!5760 0))(
  ( (FloatLiteralValue!11520 (text!40765 List!37705)) (TokenValueExt!5759 (__x!23738 Int)) (Broken!28800 (value!178039 List!37705)) (Object!5883) (End!5760) (Def!5760) (Underscore!5760) (Match!5760) (Else!5760) (Error!5760) (Case!5760) (If!5760) (Extends!5760) (Abstract!5760) (Class!5760) (Val!5760) (DelimiterValue!11520 (del!5820 List!37705)) (KeywordValue!5766 (value!178040 List!37705)) (CommentValue!11520 (value!178041 List!37705)) (WhitespaceValue!11520 (value!178042 List!37705)) (IndentationValue!5760 (value!178043 List!37705)) (String!42133) (Int32!5760) (Broken!28801 (value!178044 List!37705)) (Boolean!5761) (Unit!53604) (OperatorValue!5763 (op!5820 List!37705)) (IdentifierValue!11520 (value!178045 List!37705)) (IdentifierValue!11521 (value!178046 List!37705)) (WhitespaceValue!11521 (value!178047 List!37705)) (True!11520) (False!11520) (Broken!28802 (value!178048 List!37705)) (Broken!28803 (value!178049 List!37705)) (True!11521) (RightBrace!5760) (RightBracket!5760) (Colon!5760) (Null!5760) (Comma!5760) (LeftBracket!5760) (False!11521) (LeftBrace!5760) (ImaginaryLiteralValue!5760 (text!40766 List!37705)) (StringLiteralValue!17280 (value!178050 List!37705)) (EOFValue!5760 (value!178051 List!37705)) (IdentValue!5760 (value!178052 List!37705)) (DelimiterValue!11521 (value!178053 List!37705)) (DedentValue!5760 (value!178054 List!37705)) (NewLineValue!5760 (value!178055 List!37705)) (IntegerValue!17280 (value!178056 (_ BitVec 32)) (text!40767 List!37705)) (IntegerValue!17281 (value!178057 Int) (text!40768 List!37705)) (Times!5760) (Or!5760) (Equal!5760) (Minus!5760) (Broken!28804 (value!178058 List!37705)) (And!5760) (Div!5760) (LessEqual!5760) (Mod!5760) (Concat!16049) (Not!5760) (Plus!5760) (SpaceValue!5760 (value!178059 List!37705)) (IntegerValue!17282 (value!178060 Int) (text!40769 List!37705)) (StringLiteralValue!17281 (text!40770 List!37705)) (FloatLiteralValue!11521 (text!40771 List!37705)) (BytesLiteralValue!5760 (value!178061 List!37705)) (CommentValue!11521 (value!178062 List!37705)) (StringLiteralValue!17282 (value!178063 List!37705)) (ErrorTokenValue!5760 (msg!5821 List!37705)) )
))
(declare-datatypes ((C!20764 0))(
  ( (C!20765 (val!12430 Int)) )
))
(declare-datatypes ((Regex!10289 0))(
  ( (ElementMatch!10289 (c!620411 C!20764)) (Concat!16050 (regOne!21090 Regex!10289) (regTwo!21090 Regex!10289)) (EmptyExpr!10289) (Star!10289 (reg!10618 Regex!10289)) (EmptyLang!10289) (Union!10289 (regOne!21091 Regex!10289) (regTwo!21091 Regex!10289)) )
))
(declare-datatypes ((String!42134 0))(
  ( (String!42135 (value!178064 String)) )
))
(declare-datatypes ((List!37706 0))(
  ( (Nil!37582) (Cons!37582 (h!43002 C!20764) (t!290217 List!37706)) )
))
(declare-datatypes ((IArray!22861 0))(
  ( (IArray!22862 (innerList!11488 List!37706)) )
))
(declare-datatypes ((Conc!11428 0))(
  ( (Node!11428 (left!29391 Conc!11428) (right!29721 Conc!11428) (csize!23086 Int) (cheight!11639 Int)) (Leaf!17804 (xs!14630 IArray!22861) (csize!23087 Int)) (Empty!11428) )
))
(declare-datatypes ((BalanceConc!22470 0))(
  ( (BalanceConc!22471 (c!620412 Conc!11428)) )
))
(declare-datatypes ((TokenValueInjection!10948 0))(
  ( (TokenValueInjection!10949 (toValue!7806 Int) (toChars!7665 Int)) )
))
(declare-datatypes ((Rule!10860 0))(
  ( (Rule!10861 (regex!5530 Regex!10289) (tag!6196 String!42134) (isSeparator!5530 Bool) (transformation!5530 TokenValueInjection!10948)) )
))
(declare-datatypes ((List!37707 0))(
  ( (Nil!37583) (Cons!37583 (h!43003 Rule!10860) (t!290218 List!37707)) )
))
(declare-fun rules!3307 () List!37707)

(declare-fun rulesInvariant!4516 (LexerInterface!5119 List!37707) Bool)

(assert (=> b!3579867 (= res!1444259 (rulesInvariant!4516 thiss!23823 rules!3307))))

(declare-fun e!2214787 () Bool)

(assert (=> b!3579869 (= e!2214787 (and tp!1095524 tp!1095520))))

(declare-fun e!2214783 () Bool)

(assert (=> b!3579870 (= e!2214783 (and tp!1095516 tp!1095525))))

(declare-fun tp!1095526 () Bool)

(declare-fun e!2214785 () Bool)

(declare-fun b!3579871 () Bool)

(declare-fun e!2214791 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!10860)

(declare-fun inv!50871 (String!42134) Bool)

(declare-fun inv!50874 (TokenValueInjection!10948) Bool)

(assert (=> b!3579871 (= e!2214785 (and tp!1095526 (inv!50871 (tag!6196 anOtherTypeRule!33)) (inv!50874 (transformation!5530 anOtherTypeRule!33)) e!2214791))))

(declare-fun e!2214780 () Bool)

(assert (=> b!3579872 (= e!2214780 (and tp!1095517 tp!1095523))))

(declare-fun b!3579873 () Bool)

(declare-fun res!1444257 () Bool)

(assert (=> b!3579873 (=> (not res!1444257) (not e!2214788))))

(declare-fun isEmpty!22125 (List!37707) Bool)

(assert (=> b!3579873 (= res!1444257 (not (isEmpty!22125 rules!3307)))))

(declare-fun b!3579874 () Bool)

(assert (=> b!3579874 (= e!2214788 false)))

(declare-datatypes ((Token!10426 0))(
  ( (Token!10427 (value!178065 TokenValue!5760) (rule!8242 Rule!10860) (size!28661 Int) (originalCharacters!6244 List!37706)) )
))
(declare-datatypes ((tuple2!37502 0))(
  ( (tuple2!37503 (_1!21885 Token!10426) (_2!21885 List!37706)) )
))
(declare-datatypes ((Option!7718 0))(
  ( (None!7717) (Some!7717 (v!37355 tuple2!37502)) )
))
(declare-fun lt!1228408 () Option!7718)

(declare-fun token!511 () Token!10426)

(declare-fun maxPrefix!2653 (LexerInterface!5119 List!37707 List!37706) Option!7718)

(declare-fun list!13801 (BalanceConc!22470) List!37706)

(declare-fun charsOf!3544 (Token!10426) BalanceConc!22470)

(assert (=> b!3579874 (= lt!1228408 (maxPrefix!2653 thiss!23823 rules!3307 (list!13801 (charsOf!3544 token!511))))))

(declare-fun b!3579875 () Bool)

(declare-fun tp!1095521 () Bool)

(declare-fun e!2214786 () Bool)

(assert (=> b!3579875 (= e!2214786 (and tp!1095521 (inv!50871 (tag!6196 (h!43003 rules!3307))) (inv!50874 (transformation!5530 (h!43003 rules!3307))) e!2214787))))

(declare-fun b!3579876 () Bool)

(declare-fun e!2214792 () Bool)

(declare-fun tp!1095515 () Bool)

(assert (=> b!3579876 (= e!2214792 (and e!2214786 tp!1095515))))

(declare-fun b!3579877 () Bool)

(declare-fun res!1444262 () Bool)

(assert (=> b!3579877 (=> (not res!1444262) (not e!2214788))))

(declare-fun contains!7134 (List!37707 Rule!10860) Bool)

(assert (=> b!3579877 (= res!1444262 (contains!7134 rules!3307 anOtherTypeRule!33))))

(assert (=> b!3579878 (= e!2214791 (and tp!1095514 tp!1095519))))

(declare-fun b!3579879 () Bool)

(declare-fun res!1444258 () Bool)

(assert (=> b!3579879 (=> (not res!1444258) (not e!2214788))))

(declare-fun rule!403 () Rule!10860)

(assert (=> b!3579879 (= res!1444258 (not (= (isSeparator!5530 anOtherTypeRule!33) (isSeparator!5530 rule!403))))))

(declare-fun b!3579880 () Bool)

(declare-fun res!1444260 () Bool)

(assert (=> b!3579880 (=> (not res!1444260) (not e!2214788))))

(assert (=> b!3579880 (= res!1444260 (contains!7134 rules!3307 rule!403))))

(declare-fun b!3579868 () Bool)

(declare-fun tp!1095522 () Bool)

(declare-fun e!2214789 () Bool)

(declare-fun e!2214778 () Bool)

(declare-fun inv!21 (TokenValue!5760) Bool)

(assert (=> b!3579868 (= e!2214778 (and (inv!21 (value!178065 token!511)) e!2214789 tp!1095522))))

(declare-fun res!1444261 () Bool)

(assert (=> start!331866 (=> (not res!1444261) (not e!2214788))))

(get-info :version)

(assert (=> start!331866 (= res!1444261 ((_ is Lexer!5117) thiss!23823))))

(assert (=> start!331866 e!2214788))

(assert (=> start!331866 e!2214792))

(assert (=> start!331866 true))

(declare-fun inv!50875 (Token!10426) Bool)

(assert (=> start!331866 (and (inv!50875 token!511) e!2214778)))

(declare-fun e!2214782 () Bool)

(assert (=> start!331866 e!2214782))

(assert (=> start!331866 e!2214785))

(declare-fun tp!1095518 () Bool)

(declare-fun b!3579881 () Bool)

(assert (=> b!3579881 (= e!2214782 (and tp!1095518 (inv!50871 (tag!6196 rule!403)) (inv!50874 (transformation!5530 rule!403)) e!2214780))))

(declare-fun tp!1095513 () Bool)

(declare-fun b!3579882 () Bool)

(assert (=> b!3579882 (= e!2214789 (and tp!1095513 (inv!50871 (tag!6196 (rule!8242 token!511))) (inv!50874 (transformation!5530 (rule!8242 token!511))) e!2214783))))

(assert (= (and start!331866 res!1444261) b!3579873))

(assert (= (and b!3579873 res!1444257) b!3579867))

(assert (= (and b!3579867 res!1444259) b!3579880))

(assert (= (and b!3579880 res!1444260) b!3579877))

(assert (= (and b!3579877 res!1444262) b!3579879))

(assert (= (and b!3579879 res!1444258) b!3579874))

(assert (= b!3579875 b!3579869))

(assert (= b!3579876 b!3579875))

(assert (= (and start!331866 ((_ is Cons!37583) rules!3307)) b!3579876))

(assert (= b!3579882 b!3579870))

(assert (= b!3579868 b!3579882))

(assert (= start!331866 b!3579868))

(assert (= b!3579881 b!3579872))

(assert (= start!331866 b!3579881))

(assert (= b!3579871 b!3579878))

(assert (= start!331866 b!3579871))

(declare-fun m!4073939 () Bool)

(assert (=> b!3579877 m!4073939))

(declare-fun m!4073941 () Bool)

(assert (=> b!3579871 m!4073941))

(declare-fun m!4073943 () Bool)

(assert (=> b!3579871 m!4073943))

(declare-fun m!4073945 () Bool)

(assert (=> b!3579880 m!4073945))

(declare-fun m!4073947 () Bool)

(assert (=> b!3579881 m!4073947))

(declare-fun m!4073949 () Bool)

(assert (=> b!3579881 m!4073949))

(declare-fun m!4073951 () Bool)

(assert (=> b!3579868 m!4073951))

(declare-fun m!4073953 () Bool)

(assert (=> b!3579875 m!4073953))

(declare-fun m!4073955 () Bool)

(assert (=> b!3579875 m!4073955))

(declare-fun m!4073957 () Bool)

(assert (=> b!3579882 m!4073957))

(declare-fun m!4073959 () Bool)

(assert (=> b!3579882 m!4073959))

(declare-fun m!4073961 () Bool)

(assert (=> b!3579867 m!4073961))

(declare-fun m!4073963 () Bool)

(assert (=> b!3579873 m!4073963))

(declare-fun m!4073965 () Bool)

(assert (=> b!3579874 m!4073965))

(assert (=> b!3579874 m!4073965))

(declare-fun m!4073967 () Bool)

(assert (=> b!3579874 m!4073967))

(assert (=> b!3579874 m!4073967))

(declare-fun m!4073969 () Bool)

(assert (=> b!3579874 m!4073969))

(declare-fun m!4073971 () Bool)

(assert (=> start!331866 m!4073971))

(check-sat (not b!3579874) (not b!3579873) b_and!258085 (not b!3579875) (not b!3579877) (not b!3579880) b_and!258087 (not b_next!92489) (not b_next!92487) (not b!3579881) (not b!3579868) (not b!3579867) b_and!258075 (not b_next!92479) b_and!258079 b_and!258089 (not start!331866) b_and!258083 (not b_next!92485) (not b_next!92483) (not b!3579871) (not b_next!92477) b_and!258081 (not b_next!92491) b_and!258077 (not b!3579876) (not b!3579882) (not b_next!92481))
(check-sat b_and!258085 (not b_next!92483) (not b_next!92481) b_and!258087 (not b_next!92489) (not b_next!92487) b_and!258075 (not b_next!92479) b_and!258079 b_and!258089 b_and!258083 (not b_next!92485) (not b_next!92477) b_and!258081 (not b_next!92491) b_and!258077)
