; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54652 () Bool)

(assert start!54652)

(declare-fun b!586978 () Bool)

(declare-fun b_free!16405 () Bool)

(declare-fun b_next!16421 () Bool)

(assert (=> b!586978 (= b_free!16405 (not b_next!16421))))

(declare-fun tp!183134 () Bool)

(declare-fun b_and!57827 () Bool)

(assert (=> b!586978 (= tp!183134 b_and!57827)))

(declare-fun b_free!16407 () Bool)

(declare-fun b_next!16423 () Bool)

(assert (=> b!586978 (= b_free!16407 (not b_next!16423))))

(declare-fun tp!183137 () Bool)

(declare-fun b_and!57829 () Bool)

(assert (=> b!586978 (= tp!183137 b_and!57829)))

(declare-fun b!586979 () Bool)

(declare-fun b_free!16409 () Bool)

(declare-fun b_next!16425 () Bool)

(assert (=> b!586979 (= b_free!16409 (not b_next!16425))))

(declare-fun tp!183138 () Bool)

(declare-fun b_and!57831 () Bool)

(assert (=> b!586979 (= tp!183138 b_and!57831)))

(declare-fun b_free!16411 () Bool)

(declare-fun b_next!16427 () Bool)

(assert (=> b!586979 (= b_free!16411 (not b_next!16427))))

(declare-fun tp!183133 () Bool)

(declare-fun b_and!57833 () Bool)

(assert (=> b!586979 (= tp!183133 b_and!57833)))

(declare-fun b!586965 () Bool)

(declare-fun e!354817 () Bool)

(declare-fun e!354829 () Bool)

(assert (=> b!586965 (= e!354817 e!354829)))

(declare-fun res!252882 () Bool)

(assert (=> b!586965 (=> (not res!252882) (not e!354829))))

(declare-datatypes ((C!3852 0))(
  ( (C!3853 (val!2152 Int)) )
))
(declare-datatypes ((Regex!1465 0))(
  ( (ElementMatch!1465 (c!109681 C!3852)) (Concat!2620 (regOne!3442 Regex!1465) (regTwo!3442 Regex!1465)) (EmptyExpr!1465) (Star!1465 (reg!1794 Regex!1465)) (EmptyLang!1465) (Union!1465 (regOne!3443 Regex!1465) (regTwo!3443 Regex!1465)) )
))
(declare-datatypes ((List!5790 0))(
  ( (Nil!5780) (Cons!5780 (h!11181 (_ BitVec 16)) (t!78621 List!5790)) )
))
(declare-datatypes ((List!5791 0))(
  ( (Nil!5781) (Cons!5781 (h!11182 C!3852) (t!78622 List!5791)) )
))
(declare-datatypes ((IArray!3697 0))(
  ( (IArray!3698 (innerList!1906 List!5791)) )
))
(declare-datatypes ((Conc!1848 0))(
  ( (Node!1848 (left!4706 Conc!1848) (right!5036 Conc!1848) (csize!3926 Int) (cheight!2059 Int)) (Leaf!2921 (xs!4485 IArray!3697) (csize!3927 Int)) (Empty!1848) )
))
(declare-datatypes ((BalanceConc!3704 0))(
  ( (BalanceConc!3705 (c!109682 Conc!1848)) )
))
(declare-datatypes ((TokenValue!1155 0))(
  ( (FloatLiteralValue!2310 (text!8530 List!5790)) (TokenValueExt!1154 (__x!4208 Int)) (Broken!5775 (value!37074 List!5790)) (Object!1164) (End!1155) (Def!1155) (Underscore!1155) (Match!1155) (Else!1155) (Error!1155) (Case!1155) (If!1155) (Extends!1155) (Abstract!1155) (Class!1155) (Val!1155) (DelimiterValue!2310 (del!1215 List!5790)) (KeywordValue!1161 (value!37075 List!5790)) (CommentValue!2310 (value!37076 List!5790)) (WhitespaceValue!2310 (value!37077 List!5790)) (IndentationValue!1155 (value!37078 List!5790)) (String!7518) (Int32!1155) (Broken!5776 (value!37079 List!5790)) (Boolean!1156) (Unit!10496) (OperatorValue!1158 (op!1215 List!5790)) (IdentifierValue!2310 (value!37080 List!5790)) (IdentifierValue!2311 (value!37081 List!5790)) (WhitespaceValue!2311 (value!37082 List!5790)) (True!2310) (False!2310) (Broken!5777 (value!37083 List!5790)) (Broken!5778 (value!37084 List!5790)) (True!2311) (RightBrace!1155) (RightBracket!1155) (Colon!1155) (Null!1155) (Comma!1155) (LeftBracket!1155) (False!2311) (LeftBrace!1155) (ImaginaryLiteralValue!1155 (text!8531 List!5790)) (StringLiteralValue!3465 (value!37085 List!5790)) (EOFValue!1155 (value!37086 List!5790)) (IdentValue!1155 (value!37087 List!5790)) (DelimiterValue!2311 (value!37088 List!5790)) (DedentValue!1155 (value!37089 List!5790)) (NewLineValue!1155 (value!37090 List!5790)) (IntegerValue!3465 (value!37091 (_ BitVec 32)) (text!8532 List!5790)) (IntegerValue!3466 (value!37092 Int) (text!8533 List!5790)) (Times!1155) (Or!1155) (Equal!1155) (Minus!1155) (Broken!5779 (value!37093 List!5790)) (And!1155) (Div!1155) (LessEqual!1155) (Mod!1155) (Concat!2621) (Not!1155) (Plus!1155) (SpaceValue!1155 (value!37094 List!5790)) (IntegerValue!3467 (value!37095 Int) (text!8534 List!5790)) (StringLiteralValue!3466 (text!8535 List!5790)) (FloatLiteralValue!2311 (text!8536 List!5790)) (BytesLiteralValue!1155 (value!37096 List!5790)) (CommentValue!2311 (value!37097 List!5790)) (StringLiteralValue!3467 (value!37098 List!5790)) (ErrorTokenValue!1155 (msg!1216 List!5790)) )
))
(declare-datatypes ((String!7519 0))(
  ( (String!7520 (value!37099 String)) )
))
(declare-datatypes ((TokenValueInjection!2078 0))(
  ( (TokenValueInjection!2079 (toValue!2010 Int) (toChars!1869 Int)) )
))
(declare-datatypes ((Rule!2062 0))(
  ( (Rule!2063 (regex!1131 Regex!1465) (tag!1393 String!7519) (isSeparator!1131 Bool) (transformation!1131 TokenValueInjection!2078)) )
))
(declare-datatypes ((Token!1998 0))(
  ( (Token!1999 (value!37100 TokenValue!1155) (rule!1895 Rule!2062) (size!4590 Int) (originalCharacters!1170 List!5791)) )
))
(declare-datatypes ((tuple2!6744 0))(
  ( (tuple2!6745 (_1!3636 Token!1998) (_2!3636 List!5791)) )
))
(declare-datatypes ((Option!1482 0))(
  ( (None!1481) (Some!1481 (v!16356 tuple2!6744)) )
))
(declare-fun lt!248773 () Option!1482)

(get-info :version)

(assert (=> b!586965 (= res!252882 ((_ is Some!1481) lt!248773))))

(declare-datatypes ((List!5792 0))(
  ( (Nil!5782) (Cons!5782 (h!11183 Rule!2062) (t!78623 List!5792)) )
))
(declare-fun rules!3103 () List!5792)

(declare-datatypes ((LexerInterface!1017 0))(
  ( (LexerInterfaceExt!1014 (__x!4209 Int)) (Lexer!1015) )
))
(declare-fun thiss!22590 () LexerInterface!1017)

(declare-fun input!2705 () List!5791)

(declare-fun maxPrefix!715 (LexerInterface!1017 List!5792 List!5791) Option!1482)

(assert (=> b!586965 (= lt!248773 (maxPrefix!715 thiss!22590 rules!3103 input!2705))))

(declare-fun tp!183135 () Bool)

(declare-fun e!354823 () Bool)

(declare-fun e!354816 () Bool)

(declare-fun b!586966 () Bool)

(declare-fun inv!7300 (String!7519) Bool)

(declare-fun inv!7303 (TokenValueInjection!2078) Bool)

(assert (=> b!586966 (= e!354823 (and tp!183135 (inv!7300 (tag!1393 (h!11183 rules!3103))) (inv!7303 (transformation!1131 (h!11183 rules!3103))) e!354816))))

(declare-fun b!586967 () Bool)

(declare-fun e!354825 () Bool)

(declare-fun tp_is_empty!3285 () Bool)

(declare-fun tp!183140 () Bool)

(assert (=> b!586967 (= e!354825 (and tp_is_empty!3285 tp!183140))))

(declare-fun b!586968 () Bool)

(declare-fun res!252884 () Bool)

(assert (=> b!586968 (=> (not res!252884) (not e!354829))))

(declare-fun suffix!1342 () List!5791)

(declare-fun lt!248776 () List!5791)

(declare-fun lt!248780 () List!5791)

(declare-fun ++!1619 (List!5791 List!5791) List!5791)

(assert (=> b!586968 (= res!252884 (= (++!1619 lt!248776 suffix!1342) lt!248780))))

(declare-fun res!252886 () Bool)

(declare-fun e!354820 () Bool)

(assert (=> start!54652 (=> (not res!252886) (not e!354820))))

(assert (=> start!54652 (= res!252886 ((_ is Lexer!1015) thiss!22590))))

(assert (=> start!54652 e!354820))

(declare-fun e!354831 () Bool)

(assert (=> start!54652 e!354831))

(declare-fun e!354830 () Bool)

(assert (=> start!54652 e!354830))

(declare-fun token!491 () Token!1998)

(declare-fun e!354818 () Bool)

(declare-fun inv!7304 (Token!1998) Bool)

(assert (=> start!54652 (and (inv!7304 token!491) e!354818)))

(assert (=> start!54652 true))

(assert (=> start!54652 e!354825))

(declare-fun b!586969 () Bool)

(declare-fun tp!183136 () Bool)

(assert (=> b!586969 (= e!354831 (and tp_is_empty!3285 tp!183136))))

(declare-fun b!586970 () Bool)

(declare-fun contains!1361 (List!5792 Rule!2062) Bool)

(assert (=> b!586970 (= e!354829 (not (contains!1361 rules!3103 (rule!1895 (_1!3636 (v!16356 lt!248773))))))))

(declare-fun isPrefix!759 (List!5791 List!5791) Bool)

(assert (=> b!586970 (isPrefix!759 input!2705 input!2705)))

(declare-datatypes ((Unit!10497 0))(
  ( (Unit!10498) )
))
(declare-fun lt!248777 () Unit!10497)

(declare-fun lemmaIsPrefixRefl!495 (List!5791 List!5791) Unit!10497)

(assert (=> b!586970 (= lt!248777 (lemmaIsPrefixRefl!495 input!2705 input!2705))))

(declare-fun lt!248779 () List!5791)

(assert (=> b!586970 (= (_2!3636 (v!16356 lt!248773)) lt!248779)))

(declare-fun lt!248768 () List!5791)

(declare-fun lt!248778 () Unit!10497)

(declare-fun lemmaSamePrefixThenSameSuffix!472 (List!5791 List!5791 List!5791 List!5791 List!5791) Unit!10497)

(assert (=> b!586970 (= lt!248778 (lemmaSamePrefixThenSameSuffix!472 lt!248768 (_2!3636 (v!16356 lt!248773)) lt!248768 lt!248779 input!2705))))

(declare-fun getSuffix!276 (List!5791 List!5791) List!5791)

(assert (=> b!586970 (= lt!248779 (getSuffix!276 input!2705 lt!248768))))

(assert (=> b!586970 (isPrefix!759 lt!248768 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773))))))

(declare-fun lt!248767 () Unit!10497)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!604 (List!5791 List!5791) Unit!10497)

(assert (=> b!586970 (= lt!248767 (lemmaConcatTwoListThenFirstIsPrefix!604 lt!248768 (_2!3636 (v!16356 lt!248773))))))

(declare-fun lt!248769 () Unit!10497)

(declare-fun lemmaCharactersSize!190 (Token!1998) Unit!10497)

(assert (=> b!586970 (= lt!248769 (lemmaCharactersSize!190 token!491))))

(declare-fun lt!248774 () Unit!10497)

(assert (=> b!586970 (= lt!248774 (lemmaCharactersSize!190 (_1!3636 (v!16356 lt!248773))))))

(declare-fun lt!248770 () Unit!10497)

(declare-fun e!354827 () Unit!10497)

(assert (=> b!586970 (= lt!248770 e!354827)))

(declare-fun c!109680 () Bool)

(declare-fun size!4591 (List!5791) Int)

(assert (=> b!586970 (= c!109680 (> (size!4591 lt!248768) (size!4591 lt!248776)))))

(declare-fun list!2412 (BalanceConc!3704) List!5791)

(declare-fun charsOf!760 (Token!1998) BalanceConc!3704)

(assert (=> b!586970 (= lt!248768 (list!2412 (charsOf!760 (_1!3636 (v!16356 lt!248773)))))))

(assert (=> b!586970 (= lt!248773 (Some!1481 (v!16356 lt!248773)))))

(declare-fun lt!248772 () Unit!10497)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!204 (List!5791 List!5791 List!5791 List!5791) Unit!10497)

(assert (=> b!586970 (= lt!248772 (lemmaConcatSameAndSameSizesThenSameLists!204 lt!248776 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!586971 () Bool)

(declare-fun e!354826 () Bool)

(assert (=> b!586971 (= e!354826 e!354817)))

(declare-fun res!252883 () Bool)

(assert (=> b!586971 (=> (not res!252883) (not e!354817))))

(declare-fun lt!248771 () tuple2!6744)

(assert (=> b!586971 (= res!252883 (and (= (_1!3636 lt!248771) token!491) (= (_2!3636 lt!248771) suffix!1342)))))

(declare-fun lt!248775 () Option!1482)

(declare-fun get!2211 (Option!1482) tuple2!6744)

(assert (=> b!586971 (= lt!248771 (get!2211 lt!248775))))

(declare-fun b!586972 () Bool)

(declare-fun Unit!10499 () Unit!10497)

(assert (=> b!586972 (= e!354827 Unit!10499)))

(declare-fun b!586973 () Bool)

(declare-fun e!354824 () Bool)

(assert (=> b!586973 (= e!354820 e!354824)))

(declare-fun res!252885 () Bool)

(assert (=> b!586973 (=> (not res!252885) (not e!354824))))

(assert (=> b!586973 (= res!252885 (= lt!248776 input!2705))))

(assert (=> b!586973 (= lt!248776 (list!2412 (charsOf!760 token!491)))))

(declare-fun b!586974 () Bool)

(declare-fun tp!183131 () Bool)

(assert (=> b!586974 (= e!354830 (and e!354823 tp!183131))))

(declare-fun b!586975 () Bool)

(assert (=> b!586975 (= e!354824 e!354826)))

(declare-fun res!252881 () Bool)

(assert (=> b!586975 (=> (not res!252881) (not e!354826))))

(declare-fun isDefined!1293 (Option!1482) Bool)

(assert (=> b!586975 (= res!252881 (isDefined!1293 lt!248775))))

(assert (=> b!586975 (= lt!248775 (maxPrefix!715 thiss!22590 rules!3103 lt!248780))))

(assert (=> b!586975 (= lt!248780 (++!1619 input!2705 suffix!1342))))

(declare-fun b!586976 () Bool)

(declare-fun res!252880 () Bool)

(assert (=> b!586976 (=> (not res!252880) (not e!354820))))

(declare-fun isEmpty!4173 (List!5791) Bool)

(assert (=> b!586976 (= res!252880 (not (isEmpty!4173 input!2705)))))

(declare-fun b!586977 () Bool)

(declare-fun res!252879 () Bool)

(assert (=> b!586977 (=> (not res!252879) (not e!354820))))

(declare-fun isEmpty!4174 (List!5792) Bool)

(assert (=> b!586977 (= res!252879 (not (isEmpty!4174 rules!3103)))))

(declare-fun e!354822 () Bool)

(assert (=> b!586978 (= e!354822 (and tp!183134 tp!183137))))

(assert (=> b!586979 (= e!354816 (and tp!183138 tp!183133))))

(declare-fun b!586980 () Bool)

(declare-fun Unit!10500 () Unit!10497)

(assert (=> b!586980 (= e!354827 Unit!10500)))

(assert (=> b!586980 false))

(declare-fun b!586981 () Bool)

(declare-fun e!354815 () Bool)

(declare-fun tp!183132 () Bool)

(assert (=> b!586981 (= e!354815 (and tp!183132 (inv!7300 (tag!1393 (rule!1895 token!491))) (inv!7303 (transformation!1131 (rule!1895 token!491))) e!354822))))

(declare-fun tp!183139 () Bool)

(declare-fun b!586982 () Bool)

(declare-fun inv!21 (TokenValue!1155) Bool)

(assert (=> b!586982 (= e!354818 (and (inv!21 (value!37100 token!491)) e!354815 tp!183139))))

(declare-fun b!586983 () Bool)

(declare-fun res!252878 () Bool)

(assert (=> b!586983 (=> (not res!252878) (not e!354820))))

(declare-fun rulesInvariant!980 (LexerInterface!1017 List!5792) Bool)

(assert (=> b!586983 (= res!252878 (rulesInvariant!980 thiss!22590 rules!3103))))

(assert (= (and start!54652 res!252886) b!586977))

(assert (= (and b!586977 res!252879) b!586983))

(assert (= (and b!586983 res!252878) b!586976))

(assert (= (and b!586976 res!252880) b!586973))

(assert (= (and b!586973 res!252885) b!586975))

(assert (= (and b!586975 res!252881) b!586971))

(assert (= (and b!586971 res!252883) b!586965))

(assert (= (and b!586965 res!252882) b!586968))

(assert (= (and b!586968 res!252884) b!586970))

(assert (= (and b!586970 c!109680) b!586980))

(assert (= (and b!586970 (not c!109680)) b!586972))

(assert (= (and start!54652 ((_ is Cons!5781) suffix!1342)) b!586969))

(assert (= b!586966 b!586979))

(assert (= b!586974 b!586966))

(assert (= (and start!54652 ((_ is Cons!5782) rules!3103)) b!586974))

(assert (= b!586981 b!586978))

(assert (= b!586982 b!586981))

(assert (= start!54652 b!586982))

(assert (= (and start!54652 ((_ is Cons!5781) input!2705)) b!586967))

(declare-fun m!847217 () Bool)

(assert (=> start!54652 m!847217))

(declare-fun m!847219 () Bool)

(assert (=> b!586965 m!847219))

(declare-fun m!847221 () Bool)

(assert (=> b!586975 m!847221))

(declare-fun m!847223 () Bool)

(assert (=> b!586975 m!847223))

(declare-fun m!847225 () Bool)

(assert (=> b!586975 m!847225))

(declare-fun m!847227 () Bool)

(assert (=> b!586981 m!847227))

(declare-fun m!847229 () Bool)

(assert (=> b!586981 m!847229))

(declare-fun m!847231 () Bool)

(assert (=> b!586983 m!847231))

(declare-fun m!847233 () Bool)

(assert (=> b!586966 m!847233))

(declare-fun m!847235 () Bool)

(assert (=> b!586966 m!847235))

(declare-fun m!847237 () Bool)

(assert (=> b!586977 m!847237))

(declare-fun m!847239 () Bool)

(assert (=> b!586970 m!847239))

(declare-fun m!847241 () Bool)

(assert (=> b!586970 m!847241))

(declare-fun m!847243 () Bool)

(assert (=> b!586970 m!847243))

(declare-fun m!847245 () Bool)

(assert (=> b!586970 m!847245))

(declare-fun m!847247 () Bool)

(assert (=> b!586970 m!847247))

(declare-fun m!847249 () Bool)

(assert (=> b!586970 m!847249))

(declare-fun m!847251 () Bool)

(assert (=> b!586970 m!847251))

(declare-fun m!847253 () Bool)

(assert (=> b!586970 m!847253))

(declare-fun m!847255 () Bool)

(assert (=> b!586970 m!847255))

(declare-fun m!847257 () Bool)

(assert (=> b!586970 m!847257))

(declare-fun m!847259 () Bool)

(assert (=> b!586970 m!847259))

(assert (=> b!586970 m!847239))

(assert (=> b!586970 m!847243))

(declare-fun m!847261 () Bool)

(assert (=> b!586970 m!847261))

(declare-fun m!847263 () Bool)

(assert (=> b!586970 m!847263))

(declare-fun m!847265 () Bool)

(assert (=> b!586970 m!847265))

(declare-fun m!847267 () Bool)

(assert (=> b!586970 m!847267))

(declare-fun m!847269 () Bool)

(assert (=> b!586968 m!847269))

(declare-fun m!847271 () Bool)

(assert (=> b!586973 m!847271))

(assert (=> b!586973 m!847271))

(declare-fun m!847273 () Bool)

(assert (=> b!586973 m!847273))

(declare-fun m!847275 () Bool)

(assert (=> b!586976 m!847275))

(declare-fun m!847277 () Bool)

(assert (=> b!586982 m!847277))

(declare-fun m!847279 () Bool)

(assert (=> b!586971 m!847279))

(check-sat (not b_next!16423) (not b!586973) (not b!586976) (not start!54652) b_and!57829 (not b!586983) (not b!586974) (not b_next!16425) (not b!586971) (not b!586967) (not b!586977) (not b!586966) tp_is_empty!3285 (not b!586965) (not b!586981) (not b!586969) (not b_next!16421) (not b!586982) b_and!57833 (not b!586975) b_and!57831 b_and!57827 (not b_next!16427) (not b!586970) (not b!586968))
(check-sat (not b_next!16423) (not b_next!16421) b_and!57829 b_and!57833 b_and!57831 (not b_next!16425) b_and!57827 (not b_next!16427))
(get-model)

(declare-fun d!206411 () Bool)

(declare-fun res!252908 () Bool)

(declare-fun e!354846 () Bool)

(assert (=> d!206411 (=> (not res!252908) (not e!354846))))

(declare-fun rulesValid!404 (LexerInterface!1017 List!5792) Bool)

(assert (=> d!206411 (= res!252908 (rulesValid!404 thiss!22590 rules!3103))))

(assert (=> d!206411 (= (rulesInvariant!980 thiss!22590 rules!3103) e!354846)))

(declare-fun b!587004 () Bool)

(declare-datatypes ((List!5793 0))(
  ( (Nil!5783) (Cons!5783 (h!11184 String!7519) (t!78648 List!5793)) )
))
(declare-fun noDuplicateTag!404 (LexerInterface!1017 List!5792 List!5793) Bool)

(assert (=> b!587004 (= e!354846 (noDuplicateTag!404 thiss!22590 rules!3103 Nil!5783))))

(assert (= (and d!206411 res!252908) b!587004))

(declare-fun m!847297 () Bool)

(assert (=> d!206411 m!847297))

(declare-fun m!847299 () Bool)

(assert (=> b!587004 m!847299))

(assert (=> b!586983 d!206411))

(declare-fun b!587035 () Bool)

(declare-fun e!354864 () Bool)

(declare-fun inv!16 (TokenValue!1155) Bool)

(assert (=> b!587035 (= e!354864 (inv!16 (value!37100 token!491)))))

(declare-fun b!587036 () Bool)

(declare-fun res!252917 () Bool)

(declare-fun e!354863 () Bool)

(assert (=> b!587036 (=> res!252917 e!354863)))

(assert (=> b!587036 (= res!252917 (not ((_ is IntegerValue!3467) (value!37100 token!491))))))

(declare-fun e!354865 () Bool)

(assert (=> b!587036 (= e!354865 e!354863)))

(declare-fun b!587037 () Bool)

(declare-fun inv!17 (TokenValue!1155) Bool)

(assert (=> b!587037 (= e!354865 (inv!17 (value!37100 token!491)))))

(declare-fun b!587038 () Bool)

(assert (=> b!587038 (= e!354864 e!354865)))

(declare-fun c!109698 () Bool)

(assert (=> b!587038 (= c!109698 ((_ is IntegerValue!3466) (value!37100 token!491)))))

(declare-fun b!587039 () Bool)

(declare-fun inv!15 (TokenValue!1155) Bool)

(assert (=> b!587039 (= e!354863 (inv!15 (value!37100 token!491)))))

(declare-fun d!206421 () Bool)

(declare-fun c!109697 () Bool)

(assert (=> d!206421 (= c!109697 ((_ is IntegerValue!3465) (value!37100 token!491)))))

(assert (=> d!206421 (= (inv!21 (value!37100 token!491)) e!354864)))

(assert (= (and d!206421 c!109697) b!587035))

(assert (= (and d!206421 (not c!109697)) b!587038))

(assert (= (and b!587038 c!109698) b!587037))

(assert (= (and b!587038 (not c!109698)) b!587036))

(assert (= (and b!587036 (not res!252917)) b!587039))

(declare-fun m!847321 () Bool)

(assert (=> b!587035 m!847321))

(declare-fun m!847323 () Bool)

(assert (=> b!587037 m!847323))

(declare-fun m!847325 () Bool)

(assert (=> b!587039 m!847325))

(assert (=> b!586982 d!206421))

(declare-fun d!206429 () Bool)

(assert (=> d!206429 (= (get!2211 lt!248775) (v!16356 lt!248775))))

(assert (=> b!586971 d!206429))

(declare-fun d!206431 () Bool)

(assert (=> d!206431 (= (inv!7300 (tag!1393 (rule!1895 token!491))) (= (mod (str.len (value!37099 (tag!1393 (rule!1895 token!491)))) 2) 0))))

(assert (=> b!586981 d!206431))

(declare-fun d!206435 () Bool)

(declare-fun res!252930 () Bool)

(declare-fun e!354880 () Bool)

(assert (=> d!206435 (=> (not res!252930) (not e!354880))))

(declare-fun semiInverseModEq!441 (Int Int) Bool)

(assert (=> d!206435 (= res!252930 (semiInverseModEq!441 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (toValue!2010 (transformation!1131 (rule!1895 token!491)))))))

(assert (=> d!206435 (= (inv!7303 (transformation!1131 (rule!1895 token!491))) e!354880)))

(declare-fun b!587057 () Bool)

(declare-fun equivClasses!424 (Int Int) Bool)

(assert (=> b!587057 (= e!354880 (equivClasses!424 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (toValue!2010 (transformation!1131 (rule!1895 token!491)))))))

(assert (= (and d!206435 res!252930) b!587057))

(declare-fun m!847359 () Bool)

(assert (=> d!206435 m!847359))

(declare-fun m!847361 () Bool)

(assert (=> b!587057 m!847361))

(assert (=> b!586981 d!206435))

(declare-fun d!206445 () Bool)

(declare-fun lt!248815 () BalanceConc!3704)

(assert (=> d!206445 (= (list!2412 lt!248815) (originalCharacters!1170 (_1!3636 (v!16356 lt!248773))))))

(declare-fun dynLambda!3372 (Int TokenValue!1155) BalanceConc!3704)

(assert (=> d!206445 (= lt!248815 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773)))))))

(assert (=> d!206445 (= (charsOf!760 (_1!3636 (v!16356 lt!248773))) lt!248815)))

(declare-fun b_lambda!23119 () Bool)

(assert (=> (not b_lambda!23119) (not d!206445)))

(declare-fun t!78629 () Bool)

(declare-fun tb!51379 () Bool)

(assert (=> (and b!586978 (= (toChars!1869 (transformation!1131 (rule!1895 token!491))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773)))))) t!78629) tb!51379))

(declare-fun b!587081 () Bool)

(declare-fun e!354894 () Bool)

(declare-fun tp!183146 () Bool)

(declare-fun inv!7307 (Conc!1848) Bool)

(assert (=> b!587081 (= e!354894 (and (inv!7307 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773)))))) tp!183146))))

(declare-fun result!57564 () Bool)

(declare-fun inv!7308 (BalanceConc!3704) Bool)

(assert (=> tb!51379 (= result!57564 (and (inv!7308 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773))))) e!354894))))

(assert (= tb!51379 b!587081))

(declare-fun m!847383 () Bool)

(assert (=> b!587081 m!847383))

(declare-fun m!847385 () Bool)

(assert (=> tb!51379 m!847385))

(assert (=> d!206445 t!78629))

(declare-fun b_and!57839 () Bool)

(assert (= b_and!57829 (and (=> t!78629 result!57564) b_and!57839)))

(declare-fun t!78631 () Bool)

(declare-fun tb!51381 () Bool)

(assert (=> (and b!586979 (= (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773)))))) t!78631) tb!51381))

(declare-fun result!57568 () Bool)

(assert (= result!57568 result!57564))

(assert (=> d!206445 t!78631))

(declare-fun b_and!57841 () Bool)

(assert (= b_and!57833 (and (=> t!78631 result!57568) b_and!57841)))

(declare-fun m!847387 () Bool)

(assert (=> d!206445 m!847387))

(declare-fun m!847389 () Bool)

(assert (=> d!206445 m!847389))

(assert (=> b!586970 d!206445))

(declare-fun d!206459 () Bool)

(declare-fun list!2414 (Conc!1848) List!5791)

(assert (=> d!206459 (= (list!2412 (charsOf!760 (_1!3636 (v!16356 lt!248773)))) (list!2414 (c!109682 (charsOf!760 (_1!3636 (v!16356 lt!248773))))))))

(declare-fun bs!70099 () Bool)

(assert (= bs!70099 d!206459))

(declare-fun m!847391 () Bool)

(assert (=> bs!70099 m!847391))

(assert (=> b!586970 d!206459))

(declare-fun d!206461 () Bool)

(assert (=> d!206461 (isPrefix!759 input!2705 input!2705)))

(declare-fun lt!248819 () Unit!10497)

(declare-fun choose!4216 (List!5791 List!5791) Unit!10497)

(assert (=> d!206461 (= lt!248819 (choose!4216 input!2705 input!2705))))

(assert (=> d!206461 (= (lemmaIsPrefixRefl!495 input!2705 input!2705) lt!248819)))

(declare-fun bs!70100 () Bool)

(assert (= bs!70100 d!206461))

(assert (=> bs!70100 m!847257))

(declare-fun m!847393 () Bool)

(assert (=> bs!70100 m!847393))

(assert (=> b!586970 d!206461))

(declare-fun d!206463 () Bool)

(assert (=> d!206463 (= (size!4590 (_1!3636 (v!16356 lt!248773))) (size!4591 (originalCharacters!1170 (_1!3636 (v!16356 lt!248773)))))))

(declare-fun Unit!10503 () Unit!10497)

(assert (=> d!206463 (= (lemmaCharactersSize!190 (_1!3636 (v!16356 lt!248773))) Unit!10503)))

(declare-fun bs!70101 () Bool)

(assert (= bs!70101 d!206463))

(declare-fun m!847395 () Bool)

(assert (=> bs!70101 m!847395))

(assert (=> b!586970 d!206463))

(declare-fun d!206465 () Bool)

(assert (=> d!206465 (= (_2!3636 (v!16356 lt!248773)) lt!248779)))

(declare-fun lt!248822 () Unit!10497)

(declare-fun choose!4217 (List!5791 List!5791 List!5791 List!5791 List!5791) Unit!10497)

(assert (=> d!206465 (= lt!248822 (choose!4217 lt!248768 (_2!3636 (v!16356 lt!248773)) lt!248768 lt!248779 input!2705))))

(assert (=> d!206465 (isPrefix!759 lt!248768 input!2705)))

(assert (=> d!206465 (= (lemmaSamePrefixThenSameSuffix!472 lt!248768 (_2!3636 (v!16356 lt!248773)) lt!248768 lt!248779 input!2705) lt!248822)))

(declare-fun bs!70102 () Bool)

(assert (= bs!70102 d!206465))

(declare-fun m!847397 () Bool)

(assert (=> bs!70102 m!847397))

(declare-fun m!847399 () Bool)

(assert (=> bs!70102 m!847399))

(assert (=> b!586970 d!206465))

(declare-fun d!206467 () Bool)

(declare-fun lt!248825 () Int)

(assert (=> d!206467 (>= lt!248825 0)))

(declare-fun e!354897 () Int)

(assert (=> d!206467 (= lt!248825 e!354897)))

(declare-fun c!109708 () Bool)

(assert (=> d!206467 (= c!109708 ((_ is Nil!5781) lt!248768))))

(assert (=> d!206467 (= (size!4591 lt!248768) lt!248825)))

(declare-fun b!587086 () Bool)

(assert (=> b!587086 (= e!354897 0)))

(declare-fun b!587087 () Bool)

(assert (=> b!587087 (= e!354897 (+ 1 (size!4591 (t!78622 lt!248768))))))

(assert (= (and d!206467 c!109708) b!587086))

(assert (= (and d!206467 (not c!109708)) b!587087))

(declare-fun m!847401 () Bool)

(assert (=> b!587087 m!847401))

(assert (=> b!586970 d!206467))

(declare-fun d!206469 () Bool)

(declare-fun lt!248838 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1032 (List!5792) (InoxSet Rule!2062))

(assert (=> d!206469 (= lt!248838 (select (content!1032 rules!3103) (rule!1895 (_1!3636 (v!16356 lt!248773)))))))

(declare-fun e!354908 () Bool)

(assert (=> d!206469 (= lt!248838 e!354908)))

(declare-fun res!252955 () Bool)

(assert (=> d!206469 (=> (not res!252955) (not e!354908))))

(assert (=> d!206469 (= res!252955 ((_ is Cons!5782) rules!3103))))

(assert (=> d!206469 (= (contains!1361 rules!3103 (rule!1895 (_1!3636 (v!16356 lt!248773)))) lt!248838)))

(declare-fun b!587110 () Bool)

(declare-fun e!354909 () Bool)

(assert (=> b!587110 (= e!354908 e!354909)))

(declare-fun res!252954 () Bool)

(assert (=> b!587110 (=> res!252954 e!354909)))

(assert (=> b!587110 (= res!252954 (= (h!11183 rules!3103) (rule!1895 (_1!3636 (v!16356 lt!248773)))))))

(declare-fun b!587111 () Bool)

(assert (=> b!587111 (= e!354909 (contains!1361 (t!78623 rules!3103) (rule!1895 (_1!3636 (v!16356 lt!248773)))))))

(assert (= (and d!206469 res!252955) b!587110))

(assert (= (and b!587110 (not res!252954)) b!587111))

(declare-fun m!847403 () Bool)

(assert (=> d!206469 m!847403))

(declare-fun m!847405 () Bool)

(assert (=> d!206469 m!847405))

(declare-fun m!847407 () Bool)

(assert (=> b!587111 m!847407))

(assert (=> b!586970 d!206469))

(declare-fun d!206471 () Bool)

(declare-fun lt!248847 () List!5791)

(assert (=> d!206471 (= (++!1619 lt!248768 lt!248847) input!2705)))

(declare-fun e!354919 () List!5791)

(assert (=> d!206471 (= lt!248847 e!354919)))

(declare-fun c!109714 () Bool)

(assert (=> d!206471 (= c!109714 ((_ is Cons!5781) lt!248768))))

(assert (=> d!206471 (>= (size!4591 input!2705) (size!4591 lt!248768))))

(assert (=> d!206471 (= (getSuffix!276 input!2705 lt!248768) lt!248847)))

(declare-fun b!587129 () Bool)

(declare-fun tail!769 (List!5791) List!5791)

(assert (=> b!587129 (= e!354919 (getSuffix!276 (tail!769 input!2705) (t!78622 lt!248768)))))

(declare-fun b!587130 () Bool)

(assert (=> b!587130 (= e!354919 input!2705)))

(assert (= (and d!206471 c!109714) b!587129))

(assert (= (and d!206471 (not c!109714)) b!587130))

(declare-fun m!847453 () Bool)

(assert (=> d!206471 m!847453))

(declare-fun m!847455 () Bool)

(assert (=> d!206471 m!847455))

(assert (=> d!206471 m!847265))

(declare-fun m!847457 () Bool)

(assert (=> b!587129 m!847457))

(assert (=> b!587129 m!847457))

(declare-fun m!847459 () Bool)

(assert (=> b!587129 m!847459))

(assert (=> b!586970 d!206471))

(declare-fun b!587179 () Bool)

(declare-fun e!354945 () Bool)

(assert (=> b!587179 (= e!354945 (isPrefix!759 (tail!769 input!2705) (tail!769 input!2705)))))

(declare-fun b!587180 () Bool)

(declare-fun e!354944 () Bool)

(assert (=> b!587180 (= e!354944 (>= (size!4591 input!2705) (size!4591 input!2705)))))

(declare-fun b!587178 () Bool)

(declare-fun res!252993 () Bool)

(assert (=> b!587178 (=> (not res!252993) (not e!354945))))

(declare-fun head!1240 (List!5791) C!3852)

(assert (=> b!587178 (= res!252993 (= (head!1240 input!2705) (head!1240 input!2705)))))

(declare-fun b!587177 () Bool)

(declare-fun e!354943 () Bool)

(assert (=> b!587177 (= e!354943 e!354945)))

(declare-fun res!252996 () Bool)

(assert (=> b!587177 (=> (not res!252996) (not e!354945))))

(assert (=> b!587177 (= res!252996 (not ((_ is Nil!5781) input!2705)))))

(declare-fun d!206485 () Bool)

(assert (=> d!206485 e!354944))

(declare-fun res!252995 () Bool)

(assert (=> d!206485 (=> res!252995 e!354944)))

(declare-fun lt!248856 () Bool)

(assert (=> d!206485 (= res!252995 (not lt!248856))))

(assert (=> d!206485 (= lt!248856 e!354943)))

(declare-fun res!252994 () Bool)

(assert (=> d!206485 (=> res!252994 e!354943)))

(assert (=> d!206485 (= res!252994 ((_ is Nil!5781) input!2705))))

(assert (=> d!206485 (= (isPrefix!759 input!2705 input!2705) lt!248856)))

(assert (= (and d!206485 (not res!252994)) b!587177))

(assert (= (and b!587177 res!252996) b!587178))

(assert (= (and b!587178 res!252993) b!587179))

(assert (= (and d!206485 (not res!252995)) b!587180))

(assert (=> b!587179 m!847457))

(assert (=> b!587179 m!847457))

(assert (=> b!587179 m!847457))

(assert (=> b!587179 m!847457))

(declare-fun m!847513 () Bool)

(assert (=> b!587179 m!847513))

(assert (=> b!587180 m!847455))

(assert (=> b!587180 m!847455))

(declare-fun m!847515 () Bool)

(assert (=> b!587178 m!847515))

(assert (=> b!587178 m!847515))

(assert (=> b!586970 d!206485))

(declare-fun d!206497 () Bool)

(assert (=> d!206497 (and (= lt!248776 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!248859 () Unit!10497)

(declare-fun choose!4218 (List!5791 List!5791 List!5791 List!5791) Unit!10497)

(assert (=> d!206497 (= lt!248859 (choose!4218 lt!248776 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!206497 (= (++!1619 lt!248776 suffix!1342) (++!1619 input!2705 suffix!1342))))

(assert (=> d!206497 (= (lemmaConcatSameAndSameSizesThenSameLists!204 lt!248776 suffix!1342 input!2705 suffix!1342) lt!248859)))

(declare-fun bs!70105 () Bool)

(assert (= bs!70105 d!206497))

(declare-fun m!847521 () Bool)

(assert (=> bs!70105 m!847521))

(assert (=> bs!70105 m!847269))

(assert (=> bs!70105 m!847225))

(assert (=> b!586970 d!206497))

(declare-fun b!587204 () Bool)

(declare-fun e!354964 () Bool)

(assert (=> b!587204 (= e!354964 (isPrefix!759 (tail!769 lt!248768) (tail!769 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773))))))))

(declare-fun b!587205 () Bool)

(declare-fun e!354963 () Bool)

(assert (=> b!587205 (= e!354963 (>= (size!4591 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))) (size!4591 lt!248768)))))

(declare-fun b!587203 () Bool)

(declare-fun res!252997 () Bool)

(assert (=> b!587203 (=> (not res!252997) (not e!354964))))

(assert (=> b!587203 (= res!252997 (= (head!1240 lt!248768) (head!1240 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773))))))))

(declare-fun b!587202 () Bool)

(declare-fun e!354962 () Bool)

(assert (=> b!587202 (= e!354962 e!354964)))

(declare-fun res!253000 () Bool)

(assert (=> b!587202 (=> (not res!253000) (not e!354964))))

(assert (=> b!587202 (= res!253000 (not ((_ is Nil!5781) (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773))))))))

(declare-fun d!206499 () Bool)

(assert (=> d!206499 e!354963))

(declare-fun res!252999 () Bool)

(assert (=> d!206499 (=> res!252999 e!354963)))

(declare-fun lt!248860 () Bool)

(assert (=> d!206499 (= res!252999 (not lt!248860))))

(assert (=> d!206499 (= lt!248860 e!354962)))

(declare-fun res!252998 () Bool)

(assert (=> d!206499 (=> res!252998 e!354962)))

(assert (=> d!206499 (= res!252998 ((_ is Nil!5781) lt!248768))))

(assert (=> d!206499 (= (isPrefix!759 lt!248768 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))) lt!248860)))

(assert (= (and d!206499 (not res!252998)) b!587202))

(assert (= (and b!587202 res!253000) b!587203))

(assert (= (and b!587203 res!252997) b!587204))

(assert (= (and d!206499 (not res!252999)) b!587205))

(declare-fun m!847523 () Bool)

(assert (=> b!587204 m!847523))

(assert (=> b!587204 m!847239))

(declare-fun m!847525 () Bool)

(assert (=> b!587204 m!847525))

(assert (=> b!587204 m!847523))

(assert (=> b!587204 m!847525))

(declare-fun m!847527 () Bool)

(assert (=> b!587204 m!847527))

(assert (=> b!587205 m!847239))

(declare-fun m!847529 () Bool)

(assert (=> b!587205 m!847529))

(assert (=> b!587205 m!847265))

(declare-fun m!847531 () Bool)

(assert (=> b!587203 m!847531))

(assert (=> b!587203 m!847239))

(declare-fun m!847533 () Bool)

(assert (=> b!587203 m!847533))

(assert (=> b!586970 d!206499))

(declare-fun d!206501 () Bool)

(assert (=> d!206501 (= (size!4590 token!491) (size!4591 (originalCharacters!1170 token!491)))))

(declare-fun Unit!10504 () Unit!10497)

(assert (=> d!206501 (= (lemmaCharactersSize!190 token!491) Unit!10504)))

(declare-fun bs!70106 () Bool)

(assert (= bs!70106 d!206501))

(declare-fun m!847535 () Bool)

(assert (=> bs!70106 m!847535))

(assert (=> b!586970 d!206501))

(declare-fun d!206503 () Bool)

(declare-fun lt!248861 () Int)

(assert (=> d!206503 (>= lt!248861 0)))

(declare-fun e!354965 () Int)

(assert (=> d!206503 (= lt!248861 e!354965)))

(declare-fun c!109717 () Bool)

(assert (=> d!206503 (= c!109717 ((_ is Nil!5781) lt!248776))))

(assert (=> d!206503 (= (size!4591 lt!248776) lt!248861)))

(declare-fun b!587206 () Bool)

(assert (=> b!587206 (= e!354965 0)))

(declare-fun b!587207 () Bool)

(assert (=> b!587207 (= e!354965 (+ 1 (size!4591 (t!78622 lt!248776))))))

(assert (= (and d!206503 c!109717) b!587206))

(assert (= (and d!206503 (not c!109717)) b!587207))

(declare-fun m!847537 () Bool)

(assert (=> b!587207 m!847537))

(assert (=> b!586970 d!206503))

(declare-fun d!206505 () Bool)

(assert (=> d!206505 (isPrefix!759 lt!248768 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773))))))

(declare-fun lt!248864 () Unit!10497)

(declare-fun choose!4219 (List!5791 List!5791) Unit!10497)

(assert (=> d!206505 (= lt!248864 (choose!4219 lt!248768 (_2!3636 (v!16356 lt!248773))))))

(assert (=> d!206505 (= (lemmaConcatTwoListThenFirstIsPrefix!604 lt!248768 (_2!3636 (v!16356 lt!248773))) lt!248864)))

(declare-fun bs!70107 () Bool)

(assert (= bs!70107 d!206505))

(assert (=> bs!70107 m!847239))

(assert (=> bs!70107 m!847239))

(assert (=> bs!70107 m!847241))

(declare-fun m!847539 () Bool)

(assert (=> bs!70107 m!847539))

(assert (=> b!586970 d!206505))

(declare-fun b!587218 () Bool)

(declare-fun res!253006 () Bool)

(declare-fun e!354970 () Bool)

(assert (=> b!587218 (=> (not res!253006) (not e!354970))))

(declare-fun lt!248867 () List!5791)

(assert (=> b!587218 (= res!253006 (= (size!4591 lt!248867) (+ (size!4591 lt!248768) (size!4591 (_2!3636 (v!16356 lt!248773))))))))

(declare-fun b!587216 () Bool)

(declare-fun e!354971 () List!5791)

(assert (=> b!587216 (= e!354971 (_2!3636 (v!16356 lt!248773)))))

(declare-fun b!587219 () Bool)

(assert (=> b!587219 (= e!354970 (or (not (= (_2!3636 (v!16356 lt!248773)) Nil!5781)) (= lt!248867 lt!248768)))))

(declare-fun b!587217 () Bool)

(assert (=> b!587217 (= e!354971 (Cons!5781 (h!11182 lt!248768) (++!1619 (t!78622 lt!248768) (_2!3636 (v!16356 lt!248773)))))))

(declare-fun d!206507 () Bool)

(assert (=> d!206507 e!354970))

(declare-fun res!253005 () Bool)

(assert (=> d!206507 (=> (not res!253005) (not e!354970))))

(declare-fun content!1033 (List!5791) (InoxSet C!3852))

(assert (=> d!206507 (= res!253005 (= (content!1033 lt!248867) ((_ map or) (content!1033 lt!248768) (content!1033 (_2!3636 (v!16356 lt!248773))))))))

(assert (=> d!206507 (= lt!248867 e!354971)))

(declare-fun c!109720 () Bool)

(assert (=> d!206507 (= c!109720 ((_ is Nil!5781) lt!248768))))

(assert (=> d!206507 (= (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773))) lt!248867)))

(assert (= (and d!206507 c!109720) b!587216))

(assert (= (and d!206507 (not c!109720)) b!587217))

(assert (= (and d!206507 res!253005) b!587218))

(assert (= (and b!587218 res!253006) b!587219))

(declare-fun m!847541 () Bool)

(assert (=> b!587218 m!847541))

(assert (=> b!587218 m!847265))

(declare-fun m!847543 () Bool)

(assert (=> b!587218 m!847543))

(declare-fun m!847545 () Bool)

(assert (=> b!587217 m!847545))

(declare-fun m!847547 () Bool)

(assert (=> d!206507 m!847547))

(declare-fun m!847549 () Bool)

(assert (=> d!206507 m!847549))

(declare-fun m!847551 () Bool)

(assert (=> d!206507 m!847551))

(assert (=> b!586970 d!206507))

(declare-fun b!587222 () Bool)

(declare-fun res!253008 () Bool)

(declare-fun e!354972 () Bool)

(assert (=> b!587222 (=> (not res!253008) (not e!354972))))

(declare-fun lt!248868 () List!5791)

(assert (=> b!587222 (= res!253008 (= (size!4591 lt!248868) (+ (size!4591 lt!248776) (size!4591 suffix!1342))))))

(declare-fun b!587220 () Bool)

(declare-fun e!354973 () List!5791)

(assert (=> b!587220 (= e!354973 suffix!1342)))

(declare-fun b!587223 () Bool)

(assert (=> b!587223 (= e!354972 (or (not (= suffix!1342 Nil!5781)) (= lt!248868 lt!248776)))))

(declare-fun b!587221 () Bool)

(assert (=> b!587221 (= e!354973 (Cons!5781 (h!11182 lt!248776) (++!1619 (t!78622 lt!248776) suffix!1342)))))

(declare-fun d!206509 () Bool)

(assert (=> d!206509 e!354972))

(declare-fun res!253007 () Bool)

(assert (=> d!206509 (=> (not res!253007) (not e!354972))))

(assert (=> d!206509 (= res!253007 (= (content!1033 lt!248868) ((_ map or) (content!1033 lt!248776) (content!1033 suffix!1342))))))

(assert (=> d!206509 (= lt!248868 e!354973)))

(declare-fun c!109721 () Bool)

(assert (=> d!206509 (= c!109721 ((_ is Nil!5781) lt!248776))))

(assert (=> d!206509 (= (++!1619 lt!248776 suffix!1342) lt!248868)))

(assert (= (and d!206509 c!109721) b!587220))

(assert (= (and d!206509 (not c!109721)) b!587221))

(assert (= (and d!206509 res!253007) b!587222))

(assert (= (and b!587222 res!253008) b!587223))

(declare-fun m!847553 () Bool)

(assert (=> b!587222 m!847553))

(assert (=> b!587222 m!847259))

(declare-fun m!847555 () Bool)

(assert (=> b!587222 m!847555))

(declare-fun m!847557 () Bool)

(assert (=> b!587221 m!847557))

(declare-fun m!847559 () Bool)

(assert (=> d!206509 m!847559))

(declare-fun m!847561 () Bool)

(assert (=> d!206509 m!847561))

(declare-fun m!847563 () Bool)

(assert (=> d!206509 m!847563))

(assert (=> b!586968 d!206509))

(declare-fun d!206511 () Bool)

(assert (=> d!206511 (= (isEmpty!4174 rules!3103) ((_ is Nil!5782) rules!3103))))

(assert (=> b!586977 d!206511))

(declare-fun d!206513 () Bool)

(assert (=> d!206513 (= (inv!7300 (tag!1393 (h!11183 rules!3103))) (= (mod (str.len (value!37099 (tag!1393 (h!11183 rules!3103)))) 2) 0))))

(assert (=> b!586966 d!206513))

(declare-fun d!206515 () Bool)

(declare-fun res!253009 () Bool)

(declare-fun e!354974 () Bool)

(assert (=> d!206515 (=> (not res!253009) (not e!354974))))

(assert (=> d!206515 (= res!253009 (semiInverseModEq!441 (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toValue!2010 (transformation!1131 (h!11183 rules!3103)))))))

(assert (=> d!206515 (= (inv!7303 (transformation!1131 (h!11183 rules!3103))) e!354974)))

(declare-fun b!587224 () Bool)

(assert (=> b!587224 (= e!354974 (equivClasses!424 (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toValue!2010 (transformation!1131 (h!11183 rules!3103)))))))

(assert (= (and d!206515 res!253009) b!587224))

(declare-fun m!847565 () Bool)

(assert (=> d!206515 m!847565))

(declare-fun m!847567 () Bool)

(assert (=> b!587224 m!847567))

(assert (=> b!586966 d!206515))

(declare-fun d!206517 () Bool)

(assert (=> d!206517 (= (isEmpty!4173 input!2705) ((_ is Nil!5781) input!2705))))

(assert (=> b!586976 d!206517))

(declare-fun b!587243 () Bool)

(declare-fun e!354981 () Option!1482)

(declare-fun call!40232 () Option!1482)

(assert (=> b!587243 (= e!354981 call!40232)))

(declare-fun b!587244 () Bool)

(declare-fun lt!248880 () Option!1482)

(declare-fun lt!248883 () Option!1482)

(assert (=> b!587244 (= e!354981 (ite (and ((_ is None!1481) lt!248880) ((_ is None!1481) lt!248883)) None!1481 (ite ((_ is None!1481) lt!248883) lt!248880 (ite ((_ is None!1481) lt!248880) lt!248883 (ite (>= (size!4590 (_1!3636 (v!16356 lt!248880))) (size!4590 (_1!3636 (v!16356 lt!248883)))) lt!248880 lt!248883)))))))

(assert (=> b!587244 (= lt!248880 call!40232)))

(assert (=> b!587244 (= lt!248883 (maxPrefix!715 thiss!22590 (t!78623 rules!3103) input!2705))))

(declare-fun b!587245 () Bool)

(declare-fun e!354983 () Bool)

(declare-fun e!354982 () Bool)

(assert (=> b!587245 (= e!354983 e!354982)))

(declare-fun res!253030 () Bool)

(assert (=> b!587245 (=> (not res!253030) (not e!354982))))

(declare-fun lt!248882 () Option!1482)

(assert (=> b!587245 (= res!253030 (isDefined!1293 lt!248882))))

(declare-fun b!587246 () Bool)

(declare-fun res!253027 () Bool)

(assert (=> b!587246 (=> (not res!253027) (not e!354982))))

(declare-fun matchR!602 (Regex!1465 List!5791) Bool)

(assert (=> b!587246 (= res!253027 (matchR!602 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))) (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))))))

(declare-fun b!587247 () Bool)

(declare-fun res!253029 () Bool)

(assert (=> b!587247 (=> (not res!253029) (not e!354982))))

(assert (=> b!587247 (= res!253029 (= (++!1619 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882)))) (_2!3636 (get!2211 lt!248882))) input!2705))))

(declare-fun bm!40227 () Bool)

(declare-fun maxPrefixOneRule!406 (LexerInterface!1017 Rule!2062 List!5791) Option!1482)

(assert (=> bm!40227 (= call!40232 (maxPrefixOneRule!406 thiss!22590 (h!11183 rules!3103) input!2705))))

(declare-fun b!587248 () Bool)

(declare-fun res!253026 () Bool)

(assert (=> b!587248 (=> (not res!253026) (not e!354982))))

(assert (=> b!587248 (= res!253026 (< (size!4591 (_2!3636 (get!2211 lt!248882))) (size!4591 input!2705)))))

(declare-fun b!587249 () Bool)

(declare-fun res!253024 () Bool)

(assert (=> b!587249 (=> (not res!253024) (not e!354982))))

(declare-fun apply!1386 (TokenValueInjection!2078 BalanceConc!3704) TokenValue!1155)

(declare-fun seqFromList!1309 (List!5791) BalanceConc!3704)

(assert (=> b!587249 (= res!253024 (= (value!37100 (_1!3636 (get!2211 lt!248882))) (apply!1386 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248882)))))))))

(declare-fun b!587251 () Bool)

(assert (=> b!587251 (= e!354982 (contains!1361 rules!3103 (rule!1895 (_1!3636 (get!2211 lt!248882)))))))

(declare-fun d!206519 () Bool)

(assert (=> d!206519 e!354983))

(declare-fun res!253028 () Bool)

(assert (=> d!206519 (=> res!253028 e!354983)))

(declare-fun isEmpty!4176 (Option!1482) Bool)

(assert (=> d!206519 (= res!253028 (isEmpty!4176 lt!248882))))

(assert (=> d!206519 (= lt!248882 e!354981)))

(declare-fun c!109724 () Bool)

(assert (=> d!206519 (= c!109724 (and ((_ is Cons!5782) rules!3103) ((_ is Nil!5782) (t!78623 rules!3103))))))

(declare-fun lt!248881 () Unit!10497)

(declare-fun lt!248879 () Unit!10497)

(assert (=> d!206519 (= lt!248881 lt!248879)))

(assert (=> d!206519 (isPrefix!759 input!2705 input!2705)))

(assert (=> d!206519 (= lt!248879 (lemmaIsPrefixRefl!495 input!2705 input!2705))))

(declare-fun rulesValidInductive!410 (LexerInterface!1017 List!5792) Bool)

(assert (=> d!206519 (rulesValidInductive!410 thiss!22590 rules!3103)))

(assert (=> d!206519 (= (maxPrefix!715 thiss!22590 rules!3103 input!2705) lt!248882)))

(declare-fun b!587250 () Bool)

(declare-fun res!253025 () Bool)

(assert (=> b!587250 (=> (not res!253025) (not e!354982))))

(assert (=> b!587250 (= res!253025 (= (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882)))) (originalCharacters!1170 (_1!3636 (get!2211 lt!248882)))))))

(assert (= (and d!206519 c!109724) b!587243))

(assert (= (and d!206519 (not c!109724)) b!587244))

(assert (= (or b!587243 b!587244) bm!40227))

(assert (= (and d!206519 (not res!253028)) b!587245))

(assert (= (and b!587245 res!253030) b!587250))

(assert (= (and b!587250 res!253025) b!587248))

(assert (= (and b!587248 res!253026) b!587247))

(assert (= (and b!587247 res!253029) b!587249))

(assert (= (and b!587249 res!253024) b!587246))

(assert (= (and b!587246 res!253027) b!587251))

(declare-fun m!847569 () Bool)

(assert (=> b!587245 m!847569))

(declare-fun m!847571 () Bool)

(assert (=> bm!40227 m!847571))

(declare-fun m!847573 () Bool)

(assert (=> b!587248 m!847573))

(declare-fun m!847575 () Bool)

(assert (=> b!587248 m!847575))

(assert (=> b!587248 m!847455))

(assert (=> b!587250 m!847573))

(declare-fun m!847577 () Bool)

(assert (=> b!587250 m!847577))

(assert (=> b!587250 m!847577))

(declare-fun m!847579 () Bool)

(assert (=> b!587250 m!847579))

(assert (=> b!587251 m!847573))

(declare-fun m!847581 () Bool)

(assert (=> b!587251 m!847581))

(assert (=> b!587247 m!847573))

(assert (=> b!587247 m!847577))

(assert (=> b!587247 m!847577))

(assert (=> b!587247 m!847579))

(assert (=> b!587247 m!847579))

(declare-fun m!847583 () Bool)

(assert (=> b!587247 m!847583))

(assert (=> b!587249 m!847573))

(declare-fun m!847585 () Bool)

(assert (=> b!587249 m!847585))

(assert (=> b!587249 m!847585))

(declare-fun m!847587 () Bool)

(assert (=> b!587249 m!847587))

(declare-fun m!847589 () Bool)

(assert (=> b!587244 m!847589))

(declare-fun m!847591 () Bool)

(assert (=> d!206519 m!847591))

(assert (=> d!206519 m!847257))

(assert (=> d!206519 m!847267))

(declare-fun m!847593 () Bool)

(assert (=> d!206519 m!847593))

(assert (=> b!587246 m!847573))

(assert (=> b!587246 m!847577))

(assert (=> b!587246 m!847577))

(assert (=> b!587246 m!847579))

(assert (=> b!587246 m!847579))

(declare-fun m!847595 () Bool)

(assert (=> b!587246 m!847595))

(assert (=> b!586965 d!206519))

(declare-fun d!206521 () Bool)

(assert (=> d!206521 (= (isDefined!1293 lt!248775) (not (isEmpty!4176 lt!248775)))))

(declare-fun bs!70108 () Bool)

(assert (= bs!70108 d!206521))

(declare-fun m!847597 () Bool)

(assert (=> bs!70108 m!847597))

(assert (=> b!586975 d!206521))

(declare-fun b!587252 () Bool)

(declare-fun e!354984 () Option!1482)

(declare-fun call!40233 () Option!1482)

(assert (=> b!587252 (= e!354984 call!40233)))

(declare-fun b!587253 () Bool)

(declare-fun lt!248885 () Option!1482)

(declare-fun lt!248888 () Option!1482)

(assert (=> b!587253 (= e!354984 (ite (and ((_ is None!1481) lt!248885) ((_ is None!1481) lt!248888)) None!1481 (ite ((_ is None!1481) lt!248888) lt!248885 (ite ((_ is None!1481) lt!248885) lt!248888 (ite (>= (size!4590 (_1!3636 (v!16356 lt!248885))) (size!4590 (_1!3636 (v!16356 lt!248888)))) lt!248885 lt!248888)))))))

(assert (=> b!587253 (= lt!248885 call!40233)))

(assert (=> b!587253 (= lt!248888 (maxPrefix!715 thiss!22590 (t!78623 rules!3103) lt!248780))))

(declare-fun b!587254 () Bool)

(declare-fun e!354986 () Bool)

(declare-fun e!354985 () Bool)

(assert (=> b!587254 (= e!354986 e!354985)))

(declare-fun res!253037 () Bool)

(assert (=> b!587254 (=> (not res!253037) (not e!354985))))

(declare-fun lt!248887 () Option!1482)

(assert (=> b!587254 (= res!253037 (isDefined!1293 lt!248887))))

(declare-fun b!587255 () Bool)

(declare-fun res!253034 () Bool)

(assert (=> b!587255 (=> (not res!253034) (not e!354985))))

(assert (=> b!587255 (= res!253034 (matchR!602 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))) (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))))))

(declare-fun b!587256 () Bool)

(declare-fun res!253036 () Bool)

(assert (=> b!587256 (=> (not res!253036) (not e!354985))))

(assert (=> b!587256 (= res!253036 (= (++!1619 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887)))) (_2!3636 (get!2211 lt!248887))) lt!248780))))

(declare-fun bm!40228 () Bool)

(assert (=> bm!40228 (= call!40233 (maxPrefixOneRule!406 thiss!22590 (h!11183 rules!3103) lt!248780))))

(declare-fun b!587257 () Bool)

(declare-fun res!253033 () Bool)

(assert (=> b!587257 (=> (not res!253033) (not e!354985))))

(assert (=> b!587257 (= res!253033 (< (size!4591 (_2!3636 (get!2211 lt!248887))) (size!4591 lt!248780)))))

(declare-fun b!587258 () Bool)

(declare-fun res!253031 () Bool)

(assert (=> b!587258 (=> (not res!253031) (not e!354985))))

(assert (=> b!587258 (= res!253031 (= (value!37100 (_1!3636 (get!2211 lt!248887))) (apply!1386 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248887)))))))))

(declare-fun b!587260 () Bool)

(assert (=> b!587260 (= e!354985 (contains!1361 rules!3103 (rule!1895 (_1!3636 (get!2211 lt!248887)))))))

(declare-fun d!206523 () Bool)

(assert (=> d!206523 e!354986))

(declare-fun res!253035 () Bool)

(assert (=> d!206523 (=> res!253035 e!354986)))

(assert (=> d!206523 (= res!253035 (isEmpty!4176 lt!248887))))

(assert (=> d!206523 (= lt!248887 e!354984)))

(declare-fun c!109725 () Bool)

(assert (=> d!206523 (= c!109725 (and ((_ is Cons!5782) rules!3103) ((_ is Nil!5782) (t!78623 rules!3103))))))

(declare-fun lt!248886 () Unit!10497)

(declare-fun lt!248884 () Unit!10497)

(assert (=> d!206523 (= lt!248886 lt!248884)))

(assert (=> d!206523 (isPrefix!759 lt!248780 lt!248780)))

(assert (=> d!206523 (= lt!248884 (lemmaIsPrefixRefl!495 lt!248780 lt!248780))))

(assert (=> d!206523 (rulesValidInductive!410 thiss!22590 rules!3103)))

(assert (=> d!206523 (= (maxPrefix!715 thiss!22590 rules!3103 lt!248780) lt!248887)))

(declare-fun b!587259 () Bool)

(declare-fun res!253032 () Bool)

(assert (=> b!587259 (=> (not res!253032) (not e!354985))))

(assert (=> b!587259 (= res!253032 (= (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887)))) (originalCharacters!1170 (_1!3636 (get!2211 lt!248887)))))))

(assert (= (and d!206523 c!109725) b!587252))

(assert (= (and d!206523 (not c!109725)) b!587253))

(assert (= (or b!587252 b!587253) bm!40228))

(assert (= (and d!206523 (not res!253035)) b!587254))

(assert (= (and b!587254 res!253037) b!587259))

(assert (= (and b!587259 res!253032) b!587257))

(assert (= (and b!587257 res!253033) b!587256))

(assert (= (and b!587256 res!253036) b!587258))

(assert (= (and b!587258 res!253031) b!587255))

(assert (= (and b!587255 res!253034) b!587260))

(declare-fun m!847599 () Bool)

(assert (=> b!587254 m!847599))

(declare-fun m!847601 () Bool)

(assert (=> bm!40228 m!847601))

(declare-fun m!847603 () Bool)

(assert (=> b!587257 m!847603))

(declare-fun m!847605 () Bool)

(assert (=> b!587257 m!847605))

(declare-fun m!847607 () Bool)

(assert (=> b!587257 m!847607))

(assert (=> b!587259 m!847603))

(declare-fun m!847609 () Bool)

(assert (=> b!587259 m!847609))

(assert (=> b!587259 m!847609))

(declare-fun m!847611 () Bool)

(assert (=> b!587259 m!847611))

(assert (=> b!587260 m!847603))

(declare-fun m!847613 () Bool)

(assert (=> b!587260 m!847613))

(assert (=> b!587256 m!847603))

(assert (=> b!587256 m!847609))

(assert (=> b!587256 m!847609))

(assert (=> b!587256 m!847611))

(assert (=> b!587256 m!847611))

(declare-fun m!847615 () Bool)

(assert (=> b!587256 m!847615))

(assert (=> b!587258 m!847603))

(declare-fun m!847617 () Bool)

(assert (=> b!587258 m!847617))

(assert (=> b!587258 m!847617))

(declare-fun m!847619 () Bool)

(assert (=> b!587258 m!847619))

(declare-fun m!847621 () Bool)

(assert (=> b!587253 m!847621))

(declare-fun m!847623 () Bool)

(assert (=> d!206523 m!847623))

(declare-fun m!847625 () Bool)

(assert (=> d!206523 m!847625))

(declare-fun m!847627 () Bool)

(assert (=> d!206523 m!847627))

(assert (=> d!206523 m!847593))

(assert (=> b!587255 m!847603))

(assert (=> b!587255 m!847609))

(assert (=> b!587255 m!847609))

(assert (=> b!587255 m!847611))

(assert (=> b!587255 m!847611))

(declare-fun m!847629 () Bool)

(assert (=> b!587255 m!847629))

(assert (=> b!586975 d!206523))

(declare-fun b!587263 () Bool)

(declare-fun res!253039 () Bool)

(declare-fun e!354987 () Bool)

(assert (=> b!587263 (=> (not res!253039) (not e!354987))))

(declare-fun lt!248889 () List!5791)

(assert (=> b!587263 (= res!253039 (= (size!4591 lt!248889) (+ (size!4591 input!2705) (size!4591 suffix!1342))))))

(declare-fun b!587261 () Bool)

(declare-fun e!354988 () List!5791)

(assert (=> b!587261 (= e!354988 suffix!1342)))

(declare-fun b!587264 () Bool)

(assert (=> b!587264 (= e!354987 (or (not (= suffix!1342 Nil!5781)) (= lt!248889 input!2705)))))

(declare-fun b!587262 () Bool)

(assert (=> b!587262 (= e!354988 (Cons!5781 (h!11182 input!2705) (++!1619 (t!78622 input!2705) suffix!1342)))))

(declare-fun d!206525 () Bool)

(assert (=> d!206525 e!354987))

(declare-fun res!253038 () Bool)

(assert (=> d!206525 (=> (not res!253038) (not e!354987))))

(assert (=> d!206525 (= res!253038 (= (content!1033 lt!248889) ((_ map or) (content!1033 input!2705) (content!1033 suffix!1342))))))

(assert (=> d!206525 (= lt!248889 e!354988)))

(declare-fun c!109726 () Bool)

(assert (=> d!206525 (= c!109726 ((_ is Nil!5781) input!2705))))

(assert (=> d!206525 (= (++!1619 input!2705 suffix!1342) lt!248889)))

(assert (= (and d!206525 c!109726) b!587261))

(assert (= (and d!206525 (not c!109726)) b!587262))

(assert (= (and d!206525 res!253038) b!587263))

(assert (= (and b!587263 res!253039) b!587264))

(declare-fun m!847631 () Bool)

(assert (=> b!587263 m!847631))

(assert (=> b!587263 m!847455))

(assert (=> b!587263 m!847555))

(declare-fun m!847633 () Bool)

(assert (=> b!587262 m!847633))

(declare-fun m!847635 () Bool)

(assert (=> d!206525 m!847635))

(declare-fun m!847637 () Bool)

(assert (=> d!206525 m!847637))

(assert (=> d!206525 m!847563))

(assert (=> b!586975 d!206525))

(declare-fun d!206527 () Bool)

(assert (=> d!206527 (= (list!2412 (charsOf!760 token!491)) (list!2414 (c!109682 (charsOf!760 token!491))))))

(declare-fun bs!70109 () Bool)

(assert (= bs!70109 d!206527))

(declare-fun m!847639 () Bool)

(assert (=> bs!70109 m!847639))

(assert (=> b!586973 d!206527))

(declare-fun d!206529 () Bool)

(declare-fun lt!248890 () BalanceConc!3704)

(assert (=> d!206529 (= (list!2412 lt!248890) (originalCharacters!1170 token!491))))

(assert (=> d!206529 (= lt!248890 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491)))))

(assert (=> d!206529 (= (charsOf!760 token!491) lt!248890)))

(declare-fun b_lambda!23129 () Bool)

(assert (=> (not b_lambda!23129) (not d!206529)))

(declare-fun t!78641 () Bool)

(declare-fun tb!51391 () Bool)

(assert (=> (and b!586978 (= (toChars!1869 (transformation!1131 (rule!1895 token!491))) (toChars!1869 (transformation!1131 (rule!1895 token!491)))) t!78641) tb!51391))

(declare-fun b!587265 () Bool)

(declare-fun e!354989 () Bool)

(declare-fun tp!183185 () Bool)

(assert (=> b!587265 (= e!354989 (and (inv!7307 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491)))) tp!183185))))

(declare-fun result!57584 () Bool)

(assert (=> tb!51391 (= result!57584 (and (inv!7308 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491))) e!354989))))

(assert (= tb!51391 b!587265))

(declare-fun m!847641 () Bool)

(assert (=> b!587265 m!847641))

(declare-fun m!847643 () Bool)

(assert (=> tb!51391 m!847643))

(assert (=> d!206529 t!78641))

(declare-fun b_and!57855 () Bool)

(assert (= b_and!57839 (and (=> t!78641 result!57584) b_and!57855)))

(declare-fun tb!51393 () Bool)

(declare-fun t!78643 () Bool)

(assert (=> (and b!586979 (= (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toChars!1869 (transformation!1131 (rule!1895 token!491)))) t!78643) tb!51393))

(declare-fun result!57586 () Bool)

(assert (= result!57586 result!57584))

(assert (=> d!206529 t!78643))

(declare-fun b_and!57857 () Bool)

(assert (= b_and!57841 (and (=> t!78643 result!57586) b_and!57857)))

(declare-fun m!847645 () Bool)

(assert (=> d!206529 m!847645))

(declare-fun m!847647 () Bool)

(assert (=> d!206529 m!847647))

(assert (=> b!586973 d!206529))

(declare-fun d!206531 () Bool)

(declare-fun res!253044 () Bool)

(declare-fun e!354992 () Bool)

(assert (=> d!206531 (=> (not res!253044) (not e!354992))))

(assert (=> d!206531 (= res!253044 (not (isEmpty!4173 (originalCharacters!1170 token!491))))))

(assert (=> d!206531 (= (inv!7304 token!491) e!354992)))

(declare-fun b!587270 () Bool)

(declare-fun res!253045 () Bool)

(assert (=> b!587270 (=> (not res!253045) (not e!354992))))

(assert (=> b!587270 (= res!253045 (= (originalCharacters!1170 token!491) (list!2412 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491)))))))

(declare-fun b!587271 () Bool)

(assert (=> b!587271 (= e!354992 (= (size!4590 token!491) (size!4591 (originalCharacters!1170 token!491))))))

(assert (= (and d!206531 res!253044) b!587270))

(assert (= (and b!587270 res!253045) b!587271))

(declare-fun b_lambda!23131 () Bool)

(assert (=> (not b_lambda!23131) (not b!587270)))

(assert (=> b!587270 t!78641))

(declare-fun b_and!57859 () Bool)

(assert (= b_and!57855 (and (=> t!78641 result!57584) b_and!57859)))

(assert (=> b!587270 t!78643))

(declare-fun b_and!57861 () Bool)

(assert (= b_and!57857 (and (=> t!78643 result!57586) b_and!57861)))

(declare-fun m!847649 () Bool)

(assert (=> d!206531 m!847649))

(assert (=> b!587270 m!847647))

(assert (=> b!587270 m!847647))

(declare-fun m!847651 () Bool)

(assert (=> b!587270 m!847651))

(assert (=> b!587271 m!847535))

(assert (=> start!54652 d!206531))

(declare-fun b!587276 () Bool)

(declare-fun e!354995 () Bool)

(declare-fun tp!183188 () Bool)

(assert (=> b!587276 (= e!354995 (and tp_is_empty!3285 tp!183188))))

(assert (=> b!586967 (= tp!183140 e!354995)))

(assert (= (and b!586967 ((_ is Cons!5781) (t!78622 input!2705))) b!587276))

(declare-fun b!587277 () Bool)

(declare-fun e!354996 () Bool)

(declare-fun tp!183189 () Bool)

(assert (=> b!587277 (= e!354996 (and tp_is_empty!3285 tp!183189))))

(assert (=> b!586982 (= tp!183139 e!354996)))

(assert (= (and b!586982 ((_ is Cons!5781) (originalCharacters!1170 token!491))) b!587277))

(declare-fun b!587291 () Bool)

(declare-fun e!354999 () Bool)

(declare-fun tp!183204 () Bool)

(declare-fun tp!183201 () Bool)

(assert (=> b!587291 (= e!354999 (and tp!183204 tp!183201))))

(declare-fun b!587290 () Bool)

(declare-fun tp!183203 () Bool)

(assert (=> b!587290 (= e!354999 tp!183203)))

(assert (=> b!586966 (= tp!183135 e!354999)))

(declare-fun b!587289 () Bool)

(declare-fun tp!183202 () Bool)

(declare-fun tp!183200 () Bool)

(assert (=> b!587289 (= e!354999 (and tp!183202 tp!183200))))

(declare-fun b!587288 () Bool)

(assert (=> b!587288 (= e!354999 tp_is_empty!3285)))

(assert (= (and b!586966 ((_ is ElementMatch!1465) (regex!1131 (h!11183 rules!3103)))) b!587288))

(assert (= (and b!586966 ((_ is Concat!2620) (regex!1131 (h!11183 rules!3103)))) b!587289))

(assert (= (and b!586966 ((_ is Star!1465) (regex!1131 (h!11183 rules!3103)))) b!587290))

(assert (= (and b!586966 ((_ is Union!1465) (regex!1131 (h!11183 rules!3103)))) b!587291))

(declare-fun b!587295 () Bool)

(declare-fun e!355000 () Bool)

(declare-fun tp!183209 () Bool)

(declare-fun tp!183206 () Bool)

(assert (=> b!587295 (= e!355000 (and tp!183209 tp!183206))))

(declare-fun b!587294 () Bool)

(declare-fun tp!183208 () Bool)

(assert (=> b!587294 (= e!355000 tp!183208)))

(assert (=> b!586981 (= tp!183132 e!355000)))

(declare-fun b!587293 () Bool)

(declare-fun tp!183207 () Bool)

(declare-fun tp!183205 () Bool)

(assert (=> b!587293 (= e!355000 (and tp!183207 tp!183205))))

(declare-fun b!587292 () Bool)

(assert (=> b!587292 (= e!355000 tp_is_empty!3285)))

(assert (= (and b!586981 ((_ is ElementMatch!1465) (regex!1131 (rule!1895 token!491)))) b!587292))

(assert (= (and b!586981 ((_ is Concat!2620) (regex!1131 (rule!1895 token!491)))) b!587293))

(assert (= (and b!586981 ((_ is Star!1465) (regex!1131 (rule!1895 token!491)))) b!587294))

(assert (= (and b!586981 ((_ is Union!1465) (regex!1131 (rule!1895 token!491)))) b!587295))

(declare-fun b!587296 () Bool)

(declare-fun e!355001 () Bool)

(declare-fun tp!183210 () Bool)

(assert (=> b!587296 (= e!355001 (and tp_is_empty!3285 tp!183210))))

(assert (=> b!586969 (= tp!183136 e!355001)))

(assert (= (and b!586969 ((_ is Cons!5781) (t!78622 suffix!1342))) b!587296))

(declare-fun b!587307 () Bool)

(declare-fun b_free!16417 () Bool)

(declare-fun b_next!16433 () Bool)

(assert (=> b!587307 (= b_free!16417 (not b_next!16433))))

(declare-fun tp!183219 () Bool)

(declare-fun b_and!57863 () Bool)

(assert (=> b!587307 (= tp!183219 b_and!57863)))

(declare-fun b_free!16419 () Bool)

(declare-fun b_next!16435 () Bool)

(assert (=> b!587307 (= b_free!16419 (not b_next!16435))))

(declare-fun tb!51395 () Bool)

(declare-fun t!78645 () Bool)

(assert (=> (and b!587307 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773)))))) t!78645) tb!51395))

(declare-fun result!57594 () Bool)

(assert (= result!57594 result!57564))

(assert (=> d!206445 t!78645))

(declare-fun tb!51397 () Bool)

(declare-fun t!78647 () Bool)

(assert (=> (and b!587307 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toChars!1869 (transformation!1131 (rule!1895 token!491)))) t!78647) tb!51397))

(declare-fun result!57596 () Bool)

(assert (= result!57596 result!57584))

(assert (=> d!206529 t!78647))

(assert (=> b!587270 t!78647))

(declare-fun tp!183220 () Bool)

(declare-fun b_and!57865 () Bool)

(assert (=> b!587307 (= tp!183220 (and (=> t!78645 result!57594) (=> t!78647 result!57596) b_and!57865))))

(declare-fun e!355011 () Bool)

(assert (=> b!587307 (= e!355011 (and tp!183219 tp!183220))))

(declare-fun b!587306 () Bool)

(declare-fun tp!183222 () Bool)

(declare-fun e!355012 () Bool)

(assert (=> b!587306 (= e!355012 (and tp!183222 (inv!7300 (tag!1393 (h!11183 (t!78623 rules!3103)))) (inv!7303 (transformation!1131 (h!11183 (t!78623 rules!3103)))) e!355011))))

(declare-fun b!587305 () Bool)

(declare-fun e!355010 () Bool)

(declare-fun tp!183221 () Bool)

(assert (=> b!587305 (= e!355010 (and e!355012 tp!183221))))

(assert (=> b!586974 (= tp!183131 e!355010)))

(assert (= b!587306 b!587307))

(assert (= b!587305 b!587306))

(assert (= (and b!586974 ((_ is Cons!5782) (t!78623 rules!3103))) b!587305))

(declare-fun m!847653 () Bool)

(assert (=> b!587306 m!847653))

(declare-fun m!847655 () Bool)

(assert (=> b!587306 m!847655))

(declare-fun b_lambda!23133 () Bool)

(assert (= b_lambda!23131 (or (and b!586978 b_free!16407) (and b!586979 b_free!16411 (= (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toChars!1869 (transformation!1131 (rule!1895 token!491))))) (and b!587307 b_free!16419 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toChars!1869 (transformation!1131 (rule!1895 token!491))))) b_lambda!23133)))

(declare-fun b_lambda!23135 () Bool)

(assert (= b_lambda!23129 (or (and b!586978 b_free!16407) (and b!586979 b_free!16411 (= (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toChars!1869 (transformation!1131 (rule!1895 token!491))))) (and b!587307 b_free!16419 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toChars!1869 (transformation!1131 (rule!1895 token!491))))) b_lambda!23135)))

(check-sat (not b!587221) b_and!57861 (not b!587277) (not b!587271) (not d!206521) (not bm!40227) (not b!587305) (not b!587291) (not d!206531) (not d!206445) (not b!587222) (not b!587296) (not d!206465) (not b_next!16423) (not d!206523) tp_is_empty!3285 (not d!206501) (not d!206459) (not b!587306) (not b_next!16435) (not b!587111) (not b!587258) (not b!587259) (not d!206529) (not d!206435) (not bm!40228) (not b!587035) (not b!587178) (not d!206509) (not b_next!16421) (not d!206505) (not b!587248) (not b!587246) (not d!206469) (not b!587204) (not b!587081) (not b!587262) (not b!587294) (not b!587249) (not b_lambda!23119) (not d!206463) (not b!587129) (not b!587257) (not d!206525) (not d!206411) (not b!587057) (not b!587245) (not b!587250) (not b_lambda!23133) b_and!57865 (not tb!51391) (not b!587179) (not b!587290) (not b!587276) b_and!57863 (not b!587251) b_and!57831 (not b!587087) (not b!587247) (not b!587207) (not d!206519) (not b!587039) (not tb!51379) (not d!206471) (not b!587289) (not d!206527) (not b!587263) (not d!206497) (not b!587244) (not b!587270) (not b!587224) (not b!587253) (not b!587203) b_and!57827 (not b_next!16427) (not b!587295) (not b!587205) (not b!587293) (not b!587254) (not b_lambda!23135) (not b_next!16433) (not b!587180) (not b_next!16425) (not b!587004) (not b!587255) (not b!587037) (not b!587265) b_and!57859 (not d!206507) (not b!587260) (not b!587218) (not b!587217) (not d!206515) (not b!587256) (not d!206461))
(check-sat (not b_next!16423) (not b_next!16435) (not b_next!16421) b_and!57861 b_and!57865 b_and!57859 b_and!57863 b_and!57831 b_and!57827 (not b_next!16427) (not b_next!16433) (not b_next!16425))
(get-model)

(declare-fun d!206541 () Bool)

(assert (=> d!206541 (= (head!1240 input!2705) (h!11182 input!2705))))

(assert (=> b!587178 d!206541))

(declare-fun d!206543 () Bool)

(assert (=> d!206543 (= (inv!7300 (tag!1393 (h!11183 (t!78623 rules!3103)))) (= (mod (str.len (value!37099 (tag!1393 (h!11183 (t!78623 rules!3103))))) 2) 0))))

(assert (=> b!587306 d!206543))

(declare-fun d!206545 () Bool)

(declare-fun res!253056 () Bool)

(declare-fun e!355016 () Bool)

(assert (=> d!206545 (=> (not res!253056) (not e!355016))))

(assert (=> d!206545 (= res!253056 (semiInverseModEq!441 (toChars!1869 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toValue!2010 (transformation!1131 (h!11183 (t!78623 rules!3103))))))))

(assert (=> d!206545 (= (inv!7303 (transformation!1131 (h!11183 (t!78623 rules!3103)))) e!355016)))

(declare-fun b!587312 () Bool)

(assert (=> b!587312 (= e!355016 (equivClasses!424 (toChars!1869 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toValue!2010 (transformation!1131 (h!11183 (t!78623 rules!3103))))))))

(assert (= (and d!206545 res!253056) b!587312))

(declare-fun m!847669 () Bool)

(assert (=> d!206545 m!847669))

(declare-fun m!847671 () Bool)

(assert (=> b!587312 m!847671))

(assert (=> b!587306 d!206545))

(declare-fun d!206547 () Bool)

(assert (=> d!206547 (= (isDefined!1293 lt!248882) (not (isEmpty!4176 lt!248882)))))

(declare-fun bs!70111 () Bool)

(assert (= bs!70111 d!206547))

(assert (=> bs!70111 m!847591))

(assert (=> b!587245 d!206547))

(declare-fun d!206549 () Bool)

(declare-fun lt!248892 () Int)

(assert (=> d!206549 (>= lt!248892 0)))

(declare-fun e!355017 () Int)

(assert (=> d!206549 (= lt!248892 e!355017)))

(declare-fun c!109728 () Bool)

(assert (=> d!206549 (= c!109728 ((_ is Nil!5781) lt!248868))))

(assert (=> d!206549 (= (size!4591 lt!248868) lt!248892)))

(declare-fun b!587313 () Bool)

(assert (=> b!587313 (= e!355017 0)))

(declare-fun b!587314 () Bool)

(assert (=> b!587314 (= e!355017 (+ 1 (size!4591 (t!78622 lt!248868))))))

(assert (= (and d!206549 c!109728) b!587313))

(assert (= (and d!206549 (not c!109728)) b!587314))

(declare-fun m!847673 () Bool)

(assert (=> b!587314 m!847673))

(assert (=> b!587222 d!206549))

(assert (=> b!587222 d!206503))

(declare-fun d!206551 () Bool)

(declare-fun lt!248893 () Int)

(assert (=> d!206551 (>= lt!248893 0)))

(declare-fun e!355018 () Int)

(assert (=> d!206551 (= lt!248893 e!355018)))

(declare-fun c!109729 () Bool)

(assert (=> d!206551 (= c!109729 ((_ is Nil!5781) suffix!1342))))

(assert (=> d!206551 (= (size!4591 suffix!1342) lt!248893)))

(declare-fun b!587315 () Bool)

(assert (=> b!587315 (= e!355018 0)))

(declare-fun b!587316 () Bool)

(assert (=> b!587316 (= e!355018 (+ 1 (size!4591 (t!78622 suffix!1342))))))

(assert (= (and d!206551 c!109729) b!587315))

(assert (= (and d!206551 (not c!109729)) b!587316))

(declare-fun m!847675 () Bool)

(assert (=> b!587316 m!847675))

(assert (=> b!587222 d!206551))

(declare-fun d!206553 () Bool)

(declare-fun c!109734 () Bool)

(assert (=> d!206553 (= c!109734 ((_ is Empty!1848) (c!109682 (charsOf!760 token!491))))))

(declare-fun e!355023 () List!5791)

(assert (=> d!206553 (= (list!2414 (c!109682 (charsOf!760 token!491))) e!355023)))

(declare-fun b!587327 () Bool)

(declare-fun e!355024 () List!5791)

(declare-fun list!2416 (IArray!3697) List!5791)

(assert (=> b!587327 (= e!355024 (list!2416 (xs!4485 (c!109682 (charsOf!760 token!491)))))))

(declare-fun b!587326 () Bool)

(assert (=> b!587326 (= e!355023 e!355024)))

(declare-fun c!109735 () Bool)

(assert (=> b!587326 (= c!109735 ((_ is Leaf!2921) (c!109682 (charsOf!760 token!491))))))

(declare-fun b!587325 () Bool)

(assert (=> b!587325 (= e!355023 Nil!5781)))

(declare-fun b!587328 () Bool)

(assert (=> b!587328 (= e!355024 (++!1619 (list!2414 (left!4706 (c!109682 (charsOf!760 token!491)))) (list!2414 (right!5036 (c!109682 (charsOf!760 token!491))))))))

(assert (= (and d!206553 c!109734) b!587325))

(assert (= (and d!206553 (not c!109734)) b!587326))

(assert (= (and b!587326 c!109735) b!587327))

(assert (= (and b!587326 (not c!109735)) b!587328))

(declare-fun m!847677 () Bool)

(assert (=> b!587327 m!847677))

(declare-fun m!847679 () Bool)

(assert (=> b!587328 m!847679))

(declare-fun m!847681 () Bool)

(assert (=> b!587328 m!847681))

(assert (=> b!587328 m!847679))

(assert (=> b!587328 m!847681))

(declare-fun m!847683 () Bool)

(assert (=> b!587328 m!847683))

(assert (=> d!206527 d!206553))

(declare-fun d!206555 () Bool)

(declare-fun lt!248894 () Int)

(assert (=> d!206555 (>= lt!248894 0)))

(declare-fun e!355025 () Int)

(assert (=> d!206555 (= lt!248894 e!355025)))

(declare-fun c!109736 () Bool)

(assert (=> d!206555 (= c!109736 ((_ is Nil!5781) (originalCharacters!1170 token!491)))))

(assert (=> d!206555 (= (size!4591 (originalCharacters!1170 token!491)) lt!248894)))

(declare-fun b!587329 () Bool)

(assert (=> b!587329 (= e!355025 0)))

(declare-fun b!587330 () Bool)

(assert (=> b!587330 (= e!355025 (+ 1 (size!4591 (t!78622 (originalCharacters!1170 token!491)))))))

(assert (= (and d!206555 c!109736) b!587329))

(assert (= (and d!206555 (not c!109736)) b!587330))

(declare-fun m!847685 () Bool)

(assert (=> b!587330 m!847685))

(assert (=> d!206501 d!206555))

(declare-fun d!206557 () Bool)

(assert (=> d!206557 true))

(declare-fun lambda!15911 () Int)

(declare-fun order!4733 () Int)

(declare-fun order!4731 () Int)

(declare-fun dynLambda!3378 (Int Int) Int)

(declare-fun dynLambda!3379 (Int Int) Int)

(assert (=> d!206557 (< (dynLambda!3378 order!4731 (toValue!2010 (transformation!1131 (rule!1895 token!491)))) (dynLambda!3379 order!4733 lambda!15911))))

(declare-fun Forall2!220 (Int) Bool)

(assert (=> d!206557 (= (equivClasses!424 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (toValue!2010 (transformation!1131 (rule!1895 token!491)))) (Forall2!220 lambda!15911))))

(declare-fun bs!70136 () Bool)

(assert (= bs!70136 d!206557))

(declare-fun m!848117 () Bool)

(assert (=> bs!70136 m!848117))

(assert (=> b!587057 d!206557))

(declare-fun d!206733 () Bool)

(declare-fun lt!248965 () List!5791)

(assert (=> d!206733 (= (++!1619 (t!78622 lt!248768) lt!248965) (tail!769 input!2705))))

(declare-fun e!355197 () List!5791)

(assert (=> d!206733 (= lt!248965 e!355197)))

(declare-fun c!109800 () Bool)

(assert (=> d!206733 (= c!109800 ((_ is Cons!5781) (t!78622 lt!248768)))))

(assert (=> d!206733 (>= (size!4591 (tail!769 input!2705)) (size!4591 (t!78622 lt!248768)))))

(assert (=> d!206733 (= (getSuffix!276 (tail!769 input!2705) (t!78622 lt!248768)) lt!248965)))

(declare-fun b!587662 () Bool)

(assert (=> b!587662 (= e!355197 (getSuffix!276 (tail!769 (tail!769 input!2705)) (t!78622 (t!78622 lt!248768))))))

(declare-fun b!587663 () Bool)

(assert (=> b!587663 (= e!355197 (tail!769 input!2705))))

(assert (= (and d!206733 c!109800) b!587662))

(assert (= (and d!206733 (not c!109800)) b!587663))

(declare-fun m!848119 () Bool)

(assert (=> d!206733 m!848119))

(assert (=> d!206733 m!847457))

(declare-fun m!848121 () Bool)

(assert (=> d!206733 m!848121))

(assert (=> d!206733 m!847401))

(assert (=> b!587662 m!847457))

(declare-fun m!848123 () Bool)

(assert (=> b!587662 m!848123))

(assert (=> b!587662 m!848123))

(declare-fun m!848125 () Bool)

(assert (=> b!587662 m!848125))

(assert (=> b!587129 d!206733))

(declare-fun d!206735 () Bool)

(assert (=> d!206735 (= (tail!769 input!2705) (t!78622 input!2705))))

(assert (=> b!587129 d!206735))

(declare-fun b!587666 () Bool)

(declare-fun res!253185 () Bool)

(declare-fun e!355198 () Bool)

(assert (=> b!587666 (=> (not res!253185) (not e!355198))))

(declare-fun lt!248966 () List!5791)

(assert (=> b!587666 (= res!253185 (= (size!4591 lt!248966) (+ (size!4591 (t!78622 lt!248768)) (size!4591 (_2!3636 (v!16356 lt!248773))))))))

(declare-fun b!587664 () Bool)

(declare-fun e!355199 () List!5791)

(assert (=> b!587664 (= e!355199 (_2!3636 (v!16356 lt!248773)))))

(declare-fun b!587667 () Bool)

(assert (=> b!587667 (= e!355198 (or (not (= (_2!3636 (v!16356 lt!248773)) Nil!5781)) (= lt!248966 (t!78622 lt!248768))))))

(declare-fun b!587665 () Bool)

(assert (=> b!587665 (= e!355199 (Cons!5781 (h!11182 (t!78622 lt!248768)) (++!1619 (t!78622 (t!78622 lt!248768)) (_2!3636 (v!16356 lt!248773)))))))

(declare-fun d!206737 () Bool)

(assert (=> d!206737 e!355198))

(declare-fun res!253184 () Bool)

(assert (=> d!206737 (=> (not res!253184) (not e!355198))))

(assert (=> d!206737 (= res!253184 (= (content!1033 lt!248966) ((_ map or) (content!1033 (t!78622 lt!248768)) (content!1033 (_2!3636 (v!16356 lt!248773))))))))

(assert (=> d!206737 (= lt!248966 e!355199)))

(declare-fun c!109801 () Bool)

(assert (=> d!206737 (= c!109801 ((_ is Nil!5781) (t!78622 lt!248768)))))

(assert (=> d!206737 (= (++!1619 (t!78622 lt!248768) (_2!3636 (v!16356 lt!248773))) lt!248966)))

(assert (= (and d!206737 c!109801) b!587664))

(assert (= (and d!206737 (not c!109801)) b!587665))

(assert (= (and d!206737 res!253184) b!587666))

(assert (= (and b!587666 res!253185) b!587667))

(declare-fun m!848127 () Bool)

(assert (=> b!587666 m!848127))

(assert (=> b!587666 m!847401))

(assert (=> b!587666 m!847543))

(declare-fun m!848129 () Bool)

(assert (=> b!587665 m!848129))

(declare-fun m!848131 () Bool)

(assert (=> d!206737 m!848131))

(declare-fun m!848133 () Bool)

(assert (=> d!206737 m!848133))

(assert (=> d!206737 m!847551))

(assert (=> b!587217 d!206737))

(declare-fun d!206739 () Bool)

(declare-fun c!109804 () Bool)

(assert (=> d!206739 (= c!109804 ((_ is Node!1848) (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491)))))))

(declare-fun e!355204 () Bool)

(assert (=> d!206739 (= (inv!7307 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491)))) e!355204)))

(declare-fun b!587674 () Bool)

(declare-fun inv!7311 (Conc!1848) Bool)

(assert (=> b!587674 (= e!355204 (inv!7311 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491)))))))

(declare-fun b!587675 () Bool)

(declare-fun e!355205 () Bool)

(assert (=> b!587675 (= e!355204 e!355205)))

(declare-fun res!253188 () Bool)

(assert (=> b!587675 (= res!253188 (not ((_ is Leaf!2921) (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491))))))))

(assert (=> b!587675 (=> res!253188 e!355205)))

(declare-fun b!587676 () Bool)

(declare-fun inv!7312 (Conc!1848) Bool)

(assert (=> b!587676 (= e!355205 (inv!7312 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491)))))))

(assert (= (and d!206739 c!109804) b!587674))

(assert (= (and d!206739 (not c!109804)) b!587675))

(assert (= (and b!587675 (not res!253188)) b!587676))

(declare-fun m!848135 () Bool)

(assert (=> b!587674 m!848135))

(declare-fun m!848137 () Bool)

(assert (=> b!587676 m!848137))

(assert (=> b!587265 d!206739))

(declare-fun d!206741 () Bool)

(assert (=> d!206741 true))

(declare-fun lt!248969 () Bool)

(assert (=> d!206741 (= lt!248969 (rulesValidInductive!410 thiss!22590 rules!3103))))

(declare-fun lambda!15914 () Int)

(declare-fun forall!1546 (List!5792 Int) Bool)

(assert (=> d!206741 (= lt!248969 (forall!1546 rules!3103 lambda!15914))))

(assert (=> d!206741 (= (rulesValid!404 thiss!22590 rules!3103) lt!248969)))

(declare-fun bs!70137 () Bool)

(assert (= bs!70137 d!206741))

(assert (=> bs!70137 m!847593))

(declare-fun m!848139 () Bool)

(assert (=> bs!70137 m!848139))

(assert (=> d!206411 d!206741))

(assert (=> b!587271 d!206555))

(declare-fun d!206743 () Bool)

(assert (=> d!206743 (= (list!2412 lt!248815) (list!2414 (c!109682 lt!248815)))))

(declare-fun bs!70138 () Bool)

(assert (= bs!70138 d!206743))

(declare-fun m!848141 () Bool)

(assert (=> bs!70138 m!848141))

(assert (=> d!206445 d!206743))

(assert (=> d!206461 d!206485))

(declare-fun d!206745 () Bool)

(assert (=> d!206745 (isPrefix!759 input!2705 input!2705)))

(assert (=> d!206745 true))

(declare-fun _$45!1294 () Unit!10497)

(assert (=> d!206745 (= (choose!4216 input!2705 input!2705) _$45!1294)))

(declare-fun bs!70139 () Bool)

(assert (= bs!70139 d!206745))

(assert (=> bs!70139 m!847257))

(assert (=> d!206461 d!206745))

(declare-fun d!206747 () Bool)

(declare-fun lt!248970 () Int)

(assert (=> d!206747 (>= lt!248970 0)))

(declare-fun e!355206 () Int)

(assert (=> d!206747 (= lt!248970 e!355206)))

(declare-fun c!109805 () Bool)

(assert (=> d!206747 (= c!109805 ((_ is Nil!5781) lt!248889))))

(assert (=> d!206747 (= (size!4591 lt!248889) lt!248970)))

(declare-fun b!587679 () Bool)

(assert (=> b!587679 (= e!355206 0)))

(declare-fun b!587680 () Bool)

(assert (=> b!587680 (= e!355206 (+ 1 (size!4591 (t!78622 lt!248889))))))

(assert (= (and d!206747 c!109805) b!587679))

(assert (= (and d!206747 (not c!109805)) b!587680))

(declare-fun m!848143 () Bool)

(assert (=> b!587680 m!848143))

(assert (=> b!587263 d!206747))

(declare-fun d!206749 () Bool)

(declare-fun lt!248971 () Int)

(assert (=> d!206749 (>= lt!248971 0)))

(declare-fun e!355207 () Int)

(assert (=> d!206749 (= lt!248971 e!355207)))

(declare-fun c!109806 () Bool)

(assert (=> d!206749 (= c!109806 ((_ is Nil!5781) input!2705))))

(assert (=> d!206749 (= (size!4591 input!2705) lt!248971)))

(declare-fun b!587681 () Bool)

(assert (=> b!587681 (= e!355207 0)))

(declare-fun b!587682 () Bool)

(assert (=> b!587682 (= e!355207 (+ 1 (size!4591 (t!78622 input!2705))))))

(assert (= (and d!206749 c!109806) b!587681))

(assert (= (and d!206749 (not c!109806)) b!587682))

(declare-fun m!848145 () Bool)

(assert (=> b!587682 m!848145))

(assert (=> b!587263 d!206749))

(assert (=> b!587263 d!206551))

(declare-fun d!206751 () Bool)

(assert (=> d!206751 (and (= lt!248776 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!206751 true))

(declare-fun _$50!256 () Unit!10497)

(assert (=> d!206751 (= (choose!4218 lt!248776 suffix!1342 input!2705 suffix!1342) _$50!256)))

(assert (=> d!206497 d!206751))

(assert (=> d!206497 d!206509))

(assert (=> d!206497 d!206525))

(declare-fun d!206753 () Bool)

(declare-fun lt!248972 () Int)

(assert (=> d!206753 (>= lt!248972 0)))

(declare-fun e!355208 () Int)

(assert (=> d!206753 (= lt!248972 e!355208)))

(declare-fun c!109807 () Bool)

(assert (=> d!206753 (= c!109807 ((_ is Nil!5781) (t!78622 lt!248776)))))

(assert (=> d!206753 (= (size!4591 (t!78622 lt!248776)) lt!248972)))

(declare-fun b!587683 () Bool)

(assert (=> b!587683 (= e!355208 0)))

(declare-fun b!587684 () Bool)

(assert (=> b!587684 (= e!355208 (+ 1 (size!4591 (t!78622 (t!78622 lt!248776)))))))

(assert (= (and d!206753 c!109807) b!587683))

(assert (= (and d!206753 (not c!109807)) b!587684))

(declare-fun m!848147 () Bool)

(assert (=> b!587684 m!848147))

(assert (=> b!587207 d!206753))

(declare-fun d!206755 () Bool)

(declare-fun lt!248973 () Bool)

(assert (=> d!206755 (= lt!248973 (select (content!1032 rules!3103) (rule!1895 (_1!3636 (get!2211 lt!248887)))))))

(declare-fun e!355209 () Bool)

(assert (=> d!206755 (= lt!248973 e!355209)))

(declare-fun res!253190 () Bool)

(assert (=> d!206755 (=> (not res!253190) (not e!355209))))

(assert (=> d!206755 (= res!253190 ((_ is Cons!5782) rules!3103))))

(assert (=> d!206755 (= (contains!1361 rules!3103 (rule!1895 (_1!3636 (get!2211 lt!248887)))) lt!248973)))

(declare-fun b!587685 () Bool)

(declare-fun e!355210 () Bool)

(assert (=> b!587685 (= e!355209 e!355210)))

(declare-fun res!253189 () Bool)

(assert (=> b!587685 (=> res!253189 e!355210)))

(assert (=> b!587685 (= res!253189 (= (h!11183 rules!3103) (rule!1895 (_1!3636 (get!2211 lt!248887)))))))

(declare-fun b!587686 () Bool)

(assert (=> b!587686 (= e!355210 (contains!1361 (t!78623 rules!3103) (rule!1895 (_1!3636 (get!2211 lt!248887)))))))

(assert (= (and d!206755 res!253190) b!587685))

(assert (= (and b!587685 (not res!253189)) b!587686))

(assert (=> d!206755 m!847403))

(declare-fun m!848149 () Bool)

(assert (=> d!206755 m!848149))

(declare-fun m!848151 () Bool)

(assert (=> b!587686 m!848151))

(assert (=> b!587260 d!206755))

(declare-fun d!206757 () Bool)

(assert (=> d!206757 (= (get!2211 lt!248887) (v!16356 lt!248887))))

(assert (=> b!587260 d!206757))

(assert (=> b!587258 d!206757))

(declare-fun d!206759 () Bool)

(declare-fun dynLambda!3380 (Int BalanceConc!3704) TokenValue!1155)

(assert (=> d!206759 (= (apply!1386 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248887))))) (dynLambda!3380 (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887))))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248887))))))))

(declare-fun b_lambda!23147 () Bool)

(assert (=> (not b_lambda!23147) (not d!206759)))

(declare-fun t!78689 () Bool)

(declare-fun tb!51435 () Bool)

(assert (=> (and b!586978 (= (toValue!2010 (transformation!1131 (rule!1895 token!491))) (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))) t!78689) tb!51435))

(declare-fun result!57638 () Bool)

(assert (=> tb!51435 (= result!57638 (inv!21 (dynLambda!3380 (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887))))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248887)))))))))

(declare-fun m!848153 () Bool)

(assert (=> tb!51435 m!848153))

(assert (=> d!206759 t!78689))

(declare-fun b_and!57895 () Bool)

(assert (= b_and!57827 (and (=> t!78689 result!57638) b_and!57895)))

(declare-fun tb!51437 () Bool)

(declare-fun t!78691 () Bool)

(assert (=> (and b!586979 (= (toValue!2010 (transformation!1131 (h!11183 rules!3103))) (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))) t!78691) tb!51437))

(declare-fun result!57642 () Bool)

(assert (= result!57642 result!57638))

(assert (=> d!206759 t!78691))

(declare-fun b_and!57897 () Bool)

(assert (= b_and!57831 (and (=> t!78691 result!57642) b_and!57897)))

(declare-fun tb!51439 () Bool)

(declare-fun t!78693 () Bool)

(assert (=> (and b!587307 (= (toValue!2010 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))) t!78693) tb!51439))

(declare-fun result!57644 () Bool)

(assert (= result!57644 result!57638))

(assert (=> d!206759 t!78693))

(declare-fun b_and!57899 () Bool)

(assert (= b_and!57863 (and (=> t!78693 result!57644) b_and!57899)))

(assert (=> d!206759 m!847617))

(declare-fun m!848155 () Bool)

(assert (=> d!206759 m!848155))

(assert (=> b!587258 d!206759))

(declare-fun d!206761 () Bool)

(declare-fun fromListB!574 (List!5791) BalanceConc!3704)

(assert (=> d!206761 (= (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248887)))) (fromListB!574 (originalCharacters!1170 (_1!3636 (get!2211 lt!248887)))))))

(declare-fun bs!70140 () Bool)

(assert (= bs!70140 d!206761))

(declare-fun m!848157 () Bool)

(assert (=> bs!70140 m!848157))

(assert (=> b!587258 d!206761))

(declare-fun d!206763 () Bool)

(declare-fun charsToBigInt!0 (List!5790 Int) Int)

(assert (=> d!206763 (= (inv!15 (value!37100 token!491)) (= (charsToBigInt!0 (text!8534 (value!37100 token!491)) 0) (value!37095 (value!37100 token!491))))))

(declare-fun bs!70141 () Bool)

(assert (= bs!70141 d!206763))

(declare-fun m!848159 () Bool)

(assert (=> bs!70141 m!848159))

(assert (=> b!587039 d!206763))

(declare-fun d!206765 () Bool)

(declare-fun lt!248974 () Int)

(assert (=> d!206765 (>= lt!248974 0)))

(declare-fun e!355214 () Int)

(assert (=> d!206765 (= lt!248974 e!355214)))

(declare-fun c!109808 () Bool)

(assert (=> d!206765 (= c!109808 ((_ is Nil!5781) (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))))))

(assert (=> d!206765 (= (size!4591 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))) lt!248974)))

(declare-fun b!587689 () Bool)

(assert (=> b!587689 (= e!355214 0)))

(declare-fun b!587690 () Bool)

(assert (=> b!587690 (= e!355214 (+ 1 (size!4591 (t!78622 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))))))))

(assert (= (and d!206765 c!109808) b!587689))

(assert (= (and d!206765 (not c!109808)) b!587690))

(declare-fun m!848161 () Bool)

(assert (=> b!587690 m!848161))

(assert (=> b!587205 d!206765))

(assert (=> b!587205 d!206467))

(declare-fun d!206767 () Bool)

(assert (=> d!206767 (= (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882)))) (list!2414 (c!109682 (charsOf!760 (_1!3636 (get!2211 lt!248882))))))))

(declare-fun bs!70142 () Bool)

(assert (= bs!70142 d!206767))

(declare-fun m!848163 () Bool)

(assert (=> bs!70142 m!848163))

(assert (=> b!587250 d!206767))

(declare-fun d!206769 () Bool)

(declare-fun lt!248975 () BalanceConc!3704)

(assert (=> d!206769 (= (list!2412 lt!248975) (originalCharacters!1170 (_1!3636 (get!2211 lt!248882))))))

(assert (=> d!206769 (= lt!248975 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882))))) (value!37100 (_1!3636 (get!2211 lt!248882)))))))

(assert (=> d!206769 (= (charsOf!760 (_1!3636 (get!2211 lt!248882))) lt!248975)))

(declare-fun b_lambda!23149 () Bool)

(assert (=> (not b_lambda!23149) (not d!206769)))

(declare-fun t!78695 () Bool)

(declare-fun tb!51441 () Bool)

(assert (=> (and b!586978 (= (toChars!1869 (transformation!1131 (rule!1895 token!491))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))) t!78695) tb!51441))

(declare-fun b!587691 () Bool)

(declare-fun e!355215 () Bool)

(declare-fun tp!183299 () Bool)

(assert (=> b!587691 (= e!355215 (and (inv!7307 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882))))) (value!37100 (_1!3636 (get!2211 lt!248882)))))) tp!183299))))

(declare-fun result!57646 () Bool)

(assert (=> tb!51441 (= result!57646 (and (inv!7308 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882))))) (value!37100 (_1!3636 (get!2211 lt!248882))))) e!355215))))

(assert (= tb!51441 b!587691))

(declare-fun m!848165 () Bool)

(assert (=> b!587691 m!848165))

(declare-fun m!848167 () Bool)

(assert (=> tb!51441 m!848167))

(assert (=> d!206769 t!78695))

(declare-fun b_and!57901 () Bool)

(assert (= b_and!57859 (and (=> t!78695 result!57646) b_and!57901)))

(declare-fun tb!51443 () Bool)

(declare-fun t!78697 () Bool)

(assert (=> (and b!586979 (= (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))) t!78697) tb!51443))

(declare-fun result!57648 () Bool)

(assert (= result!57648 result!57646))

(assert (=> d!206769 t!78697))

(declare-fun b_and!57903 () Bool)

(assert (= b_and!57861 (and (=> t!78697 result!57648) b_and!57903)))

(declare-fun tb!51445 () Bool)

(declare-fun t!78699 () Bool)

(assert (=> (and b!587307 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))) t!78699) tb!51445))

(declare-fun result!57650 () Bool)

(assert (= result!57650 result!57646))

(assert (=> d!206769 t!78699))

(declare-fun b_and!57905 () Bool)

(assert (= b_and!57865 (and (=> t!78699 result!57650) b_and!57905)))

(declare-fun m!848169 () Bool)

(assert (=> d!206769 m!848169))

(declare-fun m!848171 () Bool)

(assert (=> d!206769 m!848171))

(assert (=> b!587250 d!206769))

(declare-fun d!206771 () Bool)

(assert (=> d!206771 (= (get!2211 lt!248882) (v!16356 lt!248882))))

(assert (=> b!587250 d!206771))

(declare-fun d!206773 () Bool)

(declare-fun c!109811 () Bool)

(assert (=> d!206773 (= c!109811 ((_ is Nil!5782) rules!3103))))

(declare-fun e!355218 () (InoxSet Rule!2062))

(assert (=> d!206773 (= (content!1032 rules!3103) e!355218)))

(declare-fun b!587696 () Bool)

(assert (=> b!587696 (= e!355218 ((as const (Array Rule!2062 Bool)) false))))

(declare-fun b!587697 () Bool)

(assert (=> b!587697 (= e!355218 ((_ map or) (store ((as const (Array Rule!2062 Bool)) false) (h!11183 rules!3103) true) (content!1032 (t!78623 rules!3103))))))

(assert (= (and d!206773 c!109811) b!587696))

(assert (= (and d!206773 (not c!109811)) b!587697))

(declare-fun m!848173 () Bool)

(assert (=> b!587697 m!848173))

(declare-fun m!848175 () Bool)

(assert (=> b!587697 m!848175))

(assert (=> d!206469 d!206773))

(declare-fun d!206775 () Bool)

(declare-fun charsToBigInt!1 (List!5790) Int)

(assert (=> d!206775 (= (inv!17 (value!37100 token!491)) (= (charsToBigInt!1 (text!8533 (value!37100 token!491))) (value!37092 (value!37100 token!491))))))

(declare-fun bs!70143 () Bool)

(assert (= bs!70143 d!206775))

(declare-fun m!848177 () Bool)

(assert (=> bs!70143 m!848177))

(assert (=> b!587037 d!206775))

(declare-fun b!587716 () Bool)

(declare-fun e!355229 () Bool)

(declare-datatypes ((tuple2!6748 0))(
  ( (tuple2!6749 (_1!3638 List!5791) (_2!3638 List!5791)) )
))
(declare-fun findLongestMatchInner!185 (Regex!1465 List!5791 Int List!5791 List!5791 Int) tuple2!6748)

(assert (=> b!587716 (= e!355229 (matchR!602 (regex!1131 (h!11183 rules!3103)) (_1!3638 (findLongestMatchInner!185 (regex!1131 (h!11183 rules!3103)) Nil!5781 (size!4591 Nil!5781) lt!248780 lt!248780 (size!4591 lt!248780)))))))

(declare-fun b!587717 () Bool)

(declare-fun e!355230 () Bool)

(declare-fun e!355227 () Bool)

(assert (=> b!587717 (= e!355230 e!355227)))

(declare-fun res!253209 () Bool)

(assert (=> b!587717 (=> (not res!253209) (not e!355227))))

(declare-fun lt!248990 () Option!1482)

(assert (=> b!587717 (= res!253209 (matchR!602 (regex!1131 (h!11183 rules!3103)) (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248990))))))))

(declare-fun b!587718 () Bool)

(declare-fun e!355228 () Option!1482)

(assert (=> b!587718 (= e!355228 None!1481)))

(declare-fun b!587720 () Bool)

(declare-fun lt!248987 () tuple2!6748)

(declare-fun size!4593 (BalanceConc!3704) Int)

(assert (=> b!587720 (= e!355228 (Some!1481 (tuple2!6745 (Token!1999 (apply!1386 (transformation!1131 (h!11183 rules!3103)) (seqFromList!1309 (_1!3638 lt!248987))) (h!11183 rules!3103) (size!4593 (seqFromList!1309 (_1!3638 lt!248987))) (_1!3638 lt!248987)) (_2!3638 lt!248987))))))

(declare-fun lt!248986 () Unit!10497)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!169 (Regex!1465 List!5791) Unit!10497)

(assert (=> b!587720 (= lt!248986 (longestMatchIsAcceptedByMatchOrIsEmpty!169 (regex!1131 (h!11183 rules!3103)) lt!248780))))

(declare-fun res!253208 () Bool)

(assert (=> b!587720 (= res!253208 (isEmpty!4173 (_1!3638 (findLongestMatchInner!185 (regex!1131 (h!11183 rules!3103)) Nil!5781 (size!4591 Nil!5781) lt!248780 lt!248780 (size!4591 lt!248780)))))))

(assert (=> b!587720 (=> res!253208 e!355229)))

(assert (=> b!587720 e!355229))

(declare-fun lt!248989 () Unit!10497)

(assert (=> b!587720 (= lt!248989 lt!248986)))

(declare-fun lt!248988 () Unit!10497)

(declare-fun lemmaSemiInverse!222 (TokenValueInjection!2078 BalanceConc!3704) Unit!10497)

(assert (=> b!587720 (= lt!248988 (lemmaSemiInverse!222 (transformation!1131 (h!11183 rules!3103)) (seqFromList!1309 (_1!3638 lt!248987))))))

(declare-fun b!587721 () Bool)

(declare-fun res!253211 () Bool)

(assert (=> b!587721 (=> (not res!253211) (not e!355227))))

(assert (=> b!587721 (= res!253211 (= (rule!1895 (_1!3636 (get!2211 lt!248990))) (h!11183 rules!3103)))))

(declare-fun b!587722 () Bool)

(declare-fun res!253210 () Bool)

(assert (=> b!587722 (=> (not res!253210) (not e!355227))))

(assert (=> b!587722 (= res!253210 (= (value!37100 (_1!3636 (get!2211 lt!248990))) (apply!1386 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248990)))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248990)))))))))

(declare-fun b!587723 () Bool)

(declare-fun res!253207 () Bool)

(assert (=> b!587723 (=> (not res!253207) (not e!355227))))

(assert (=> b!587723 (= res!253207 (< (size!4591 (_2!3636 (get!2211 lt!248990))) (size!4591 lt!248780)))))

(declare-fun b!587724 () Bool)

(assert (=> b!587724 (= e!355227 (= (size!4590 (_1!3636 (get!2211 lt!248990))) (size!4591 (originalCharacters!1170 (_1!3636 (get!2211 lt!248990))))))))

(declare-fun d!206777 () Bool)

(assert (=> d!206777 e!355230))

(declare-fun res!253206 () Bool)

(assert (=> d!206777 (=> res!253206 e!355230)))

(assert (=> d!206777 (= res!253206 (isEmpty!4176 lt!248990))))

(assert (=> d!206777 (= lt!248990 e!355228)))

(declare-fun c!109814 () Bool)

(assert (=> d!206777 (= c!109814 (isEmpty!4173 (_1!3638 lt!248987)))))

(declare-fun findLongestMatch!164 (Regex!1465 List!5791) tuple2!6748)

(assert (=> d!206777 (= lt!248987 (findLongestMatch!164 (regex!1131 (h!11183 rules!3103)) lt!248780))))

(declare-fun ruleValid!329 (LexerInterface!1017 Rule!2062) Bool)

(assert (=> d!206777 (ruleValid!329 thiss!22590 (h!11183 rules!3103))))

(assert (=> d!206777 (= (maxPrefixOneRule!406 thiss!22590 (h!11183 rules!3103) lt!248780) lt!248990)))

(declare-fun b!587719 () Bool)

(declare-fun res!253205 () Bool)

(assert (=> b!587719 (=> (not res!253205) (not e!355227))))

(assert (=> b!587719 (= res!253205 (= (++!1619 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248990)))) (_2!3636 (get!2211 lt!248990))) lt!248780))))

(assert (= (and d!206777 c!109814) b!587718))

(assert (= (and d!206777 (not c!109814)) b!587720))

(assert (= (and b!587720 (not res!253208)) b!587716))

(assert (= (and d!206777 (not res!253206)) b!587717))

(assert (= (and b!587717 res!253209) b!587719))

(assert (= (and b!587719 res!253205) b!587723))

(assert (= (and b!587723 res!253207) b!587721))

(assert (= (and b!587721 res!253211) b!587722))

(assert (= (and b!587722 res!253210) b!587724))

(declare-fun m!848179 () Bool)

(assert (=> b!587720 m!848179))

(declare-fun m!848181 () Bool)

(assert (=> b!587720 m!848181))

(assert (=> b!587720 m!848179))

(declare-fun m!848183 () Bool)

(assert (=> b!587720 m!848183))

(assert (=> b!587720 m!848179))

(declare-fun m!848185 () Bool)

(assert (=> b!587720 m!848185))

(declare-fun m!848187 () Bool)

(assert (=> b!587720 m!848187))

(assert (=> b!587720 m!848179))

(declare-fun m!848189 () Bool)

(assert (=> b!587720 m!848189))

(declare-fun m!848191 () Bool)

(assert (=> b!587720 m!848191))

(assert (=> b!587720 m!848187))

(assert (=> b!587720 m!847607))

(declare-fun m!848193 () Bool)

(assert (=> b!587720 m!848193))

(assert (=> b!587720 m!847607))

(declare-fun m!848195 () Bool)

(assert (=> b!587724 m!848195))

(declare-fun m!848197 () Bool)

(assert (=> b!587724 m!848197))

(assert (=> b!587722 m!848195))

(declare-fun m!848199 () Bool)

(assert (=> b!587722 m!848199))

(assert (=> b!587722 m!848199))

(declare-fun m!848201 () Bool)

(assert (=> b!587722 m!848201))

(declare-fun m!848203 () Bool)

(assert (=> d!206777 m!848203))

(declare-fun m!848205 () Bool)

(assert (=> d!206777 m!848205))

(declare-fun m!848207 () Bool)

(assert (=> d!206777 m!848207))

(declare-fun m!848209 () Bool)

(assert (=> d!206777 m!848209))

(assert (=> b!587716 m!848187))

(assert (=> b!587716 m!847607))

(assert (=> b!587716 m!848187))

(assert (=> b!587716 m!847607))

(assert (=> b!587716 m!848193))

(declare-fun m!848211 () Bool)

(assert (=> b!587716 m!848211))

(assert (=> b!587723 m!848195))

(declare-fun m!848213 () Bool)

(assert (=> b!587723 m!848213))

(assert (=> b!587723 m!847607))

(assert (=> b!587719 m!848195))

(declare-fun m!848215 () Bool)

(assert (=> b!587719 m!848215))

(assert (=> b!587719 m!848215))

(declare-fun m!848217 () Bool)

(assert (=> b!587719 m!848217))

(assert (=> b!587719 m!848217))

(declare-fun m!848219 () Bool)

(assert (=> b!587719 m!848219))

(assert (=> b!587721 m!848195))

(assert (=> b!587717 m!848195))

(assert (=> b!587717 m!848215))

(assert (=> b!587717 m!848215))

(assert (=> b!587717 m!848217))

(assert (=> b!587717 m!848217))

(declare-fun m!848221 () Bool)

(assert (=> b!587717 m!848221))

(assert (=> bm!40228 d!206777))

(declare-fun bs!70144 () Bool)

(declare-fun d!206779 () Bool)

(assert (= bs!70144 (and d!206779 d!206557)))

(declare-fun lambda!15915 () Int)

(assert (=> bs!70144 (= (= (toValue!2010 (transformation!1131 (h!11183 rules!3103))) (toValue!2010 (transformation!1131 (rule!1895 token!491)))) (= lambda!15915 lambda!15911))))

(assert (=> d!206779 true))

(assert (=> d!206779 (< (dynLambda!3378 order!4731 (toValue!2010 (transformation!1131 (h!11183 rules!3103)))) (dynLambda!3379 order!4733 lambda!15915))))

(assert (=> d!206779 (= (equivClasses!424 (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toValue!2010 (transformation!1131 (h!11183 rules!3103)))) (Forall2!220 lambda!15915))))

(declare-fun bs!70145 () Bool)

(assert (= bs!70145 d!206779))

(declare-fun m!848223 () Bool)

(assert (=> bs!70145 m!848223))

(assert (=> b!587224 d!206779))

(declare-fun d!206781 () Bool)

(assert (=> d!206781 (= (head!1240 lt!248768) (h!11182 lt!248768))))

(assert (=> b!587203 d!206781))

(declare-fun d!206783 () Bool)

(assert (=> d!206783 (= (head!1240 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))) (h!11182 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))))))

(assert (=> b!587203 d!206783))

(declare-fun d!206785 () Bool)

(declare-fun lt!248991 () Bool)

(assert (=> d!206785 (= lt!248991 (select (content!1032 (t!78623 rules!3103)) (rule!1895 (_1!3636 (v!16356 lt!248773)))))))

(declare-fun e!355231 () Bool)

(assert (=> d!206785 (= lt!248991 e!355231)))

(declare-fun res!253213 () Bool)

(assert (=> d!206785 (=> (not res!253213) (not e!355231))))

(assert (=> d!206785 (= res!253213 ((_ is Cons!5782) (t!78623 rules!3103)))))

(assert (=> d!206785 (= (contains!1361 (t!78623 rules!3103) (rule!1895 (_1!3636 (v!16356 lt!248773)))) lt!248991)))

(declare-fun b!587725 () Bool)

(declare-fun e!355232 () Bool)

(assert (=> b!587725 (= e!355231 e!355232)))

(declare-fun res!253212 () Bool)

(assert (=> b!587725 (=> res!253212 e!355232)))

(assert (=> b!587725 (= res!253212 (= (h!11183 (t!78623 rules!3103)) (rule!1895 (_1!3636 (v!16356 lt!248773)))))))

(declare-fun b!587726 () Bool)

(assert (=> b!587726 (= e!355232 (contains!1361 (t!78623 (t!78623 rules!3103)) (rule!1895 (_1!3636 (v!16356 lt!248773)))))))

(assert (= (and d!206785 res!253213) b!587725))

(assert (= (and b!587725 (not res!253212)) b!587726))

(assert (=> d!206785 m!848175))

(declare-fun m!848225 () Bool)

(assert (=> d!206785 m!848225))

(declare-fun m!848227 () Bool)

(assert (=> b!587726 m!848227))

(assert (=> b!587111 d!206785))

(declare-fun d!206787 () Bool)

(assert (=> d!206787 (= (isEmpty!4176 lt!248887) (not ((_ is Some!1481) lt!248887)))))

(assert (=> d!206523 d!206787))

(declare-fun b!587729 () Bool)

(declare-fun e!355235 () Bool)

(assert (=> b!587729 (= e!355235 (isPrefix!759 (tail!769 lt!248780) (tail!769 lt!248780)))))

(declare-fun b!587730 () Bool)

(declare-fun e!355234 () Bool)

(assert (=> b!587730 (= e!355234 (>= (size!4591 lt!248780) (size!4591 lt!248780)))))

(declare-fun b!587728 () Bool)

(declare-fun res!253214 () Bool)

(assert (=> b!587728 (=> (not res!253214) (not e!355235))))

(assert (=> b!587728 (= res!253214 (= (head!1240 lt!248780) (head!1240 lt!248780)))))

(declare-fun b!587727 () Bool)

(declare-fun e!355233 () Bool)

(assert (=> b!587727 (= e!355233 e!355235)))

(declare-fun res!253217 () Bool)

(assert (=> b!587727 (=> (not res!253217) (not e!355235))))

(assert (=> b!587727 (= res!253217 (not ((_ is Nil!5781) lt!248780)))))

(declare-fun d!206789 () Bool)

(assert (=> d!206789 e!355234))

(declare-fun res!253216 () Bool)

(assert (=> d!206789 (=> res!253216 e!355234)))

(declare-fun lt!248992 () Bool)

(assert (=> d!206789 (= res!253216 (not lt!248992))))

(assert (=> d!206789 (= lt!248992 e!355233)))

(declare-fun res!253215 () Bool)

(assert (=> d!206789 (=> res!253215 e!355233)))

(assert (=> d!206789 (= res!253215 ((_ is Nil!5781) lt!248780))))

(assert (=> d!206789 (= (isPrefix!759 lt!248780 lt!248780) lt!248992)))

(assert (= (and d!206789 (not res!253215)) b!587727))

(assert (= (and b!587727 res!253217) b!587728))

(assert (= (and b!587728 res!253214) b!587729))

(assert (= (and d!206789 (not res!253216)) b!587730))

(declare-fun m!848229 () Bool)

(assert (=> b!587729 m!848229))

(assert (=> b!587729 m!848229))

(assert (=> b!587729 m!848229))

(assert (=> b!587729 m!848229))

(declare-fun m!848231 () Bool)

(assert (=> b!587729 m!848231))

(assert (=> b!587730 m!847607))

(assert (=> b!587730 m!847607))

(declare-fun m!848233 () Bool)

(assert (=> b!587728 m!848233))

(assert (=> b!587728 m!848233))

(assert (=> d!206523 d!206789))

(declare-fun d!206791 () Bool)

(assert (=> d!206791 (isPrefix!759 lt!248780 lt!248780)))

(declare-fun lt!248993 () Unit!10497)

(assert (=> d!206791 (= lt!248993 (choose!4216 lt!248780 lt!248780))))

(assert (=> d!206791 (= (lemmaIsPrefixRefl!495 lt!248780 lt!248780) lt!248993)))

(declare-fun bs!70146 () Bool)

(assert (= bs!70146 d!206791))

(assert (=> bs!70146 m!847625))

(declare-fun m!848235 () Bool)

(assert (=> bs!70146 m!848235))

(assert (=> d!206523 d!206791))

(declare-fun bs!70147 () Bool)

(declare-fun d!206793 () Bool)

(assert (= bs!70147 (and d!206793 d!206741)))

(declare-fun lambda!15918 () Int)

(assert (=> bs!70147 (= lambda!15918 lambda!15914)))

(assert (=> d!206793 true))

(declare-fun lt!248996 () Bool)

(assert (=> d!206793 (= lt!248996 (forall!1546 rules!3103 lambda!15918))))

(declare-fun e!355240 () Bool)

(assert (=> d!206793 (= lt!248996 e!355240)))

(declare-fun res!253223 () Bool)

(assert (=> d!206793 (=> res!253223 e!355240)))

(assert (=> d!206793 (= res!253223 (not ((_ is Cons!5782) rules!3103)))))

(assert (=> d!206793 (= (rulesValidInductive!410 thiss!22590 rules!3103) lt!248996)))

(declare-fun b!587735 () Bool)

(declare-fun e!355241 () Bool)

(assert (=> b!587735 (= e!355240 e!355241)))

(declare-fun res!253222 () Bool)

(assert (=> b!587735 (=> (not res!253222) (not e!355241))))

(assert (=> b!587735 (= res!253222 (ruleValid!329 thiss!22590 (h!11183 rules!3103)))))

(declare-fun b!587736 () Bool)

(assert (=> b!587736 (= e!355241 (rulesValidInductive!410 thiss!22590 (t!78623 rules!3103)))))

(assert (= (and d!206793 (not res!253223)) b!587735))

(assert (= (and b!587735 res!253222) b!587736))

(declare-fun m!848237 () Bool)

(assert (=> d!206793 m!848237))

(assert (=> b!587735 m!848209))

(declare-fun m!848239 () Bool)

(assert (=> b!587736 m!848239))

(assert (=> d!206523 d!206793))

(declare-fun d!206795 () Bool)

(declare-fun lt!248997 () Int)

(assert (=> d!206795 (>= lt!248997 0)))

(declare-fun e!355242 () Int)

(assert (=> d!206795 (= lt!248997 e!355242)))

(declare-fun c!109815 () Bool)

(assert (=> d!206795 (= c!109815 ((_ is Nil!5781) (_2!3636 (get!2211 lt!248882))))))

(assert (=> d!206795 (= (size!4591 (_2!3636 (get!2211 lt!248882))) lt!248997)))

(declare-fun b!587737 () Bool)

(assert (=> b!587737 (= e!355242 0)))

(declare-fun b!587738 () Bool)

(assert (=> b!587738 (= e!355242 (+ 1 (size!4591 (t!78622 (_2!3636 (get!2211 lt!248882))))))))

(assert (= (and d!206795 c!109815) b!587737))

(assert (= (and d!206795 (not c!109815)) b!587738))

(declare-fun m!848241 () Bool)

(assert (=> b!587738 m!848241))

(assert (=> b!587248 d!206795))

(assert (=> b!587248 d!206771))

(assert (=> b!587248 d!206749))

(declare-fun b!587767 () Bool)

(declare-fun e!355262 () Bool)

(declare-fun nullable!401 (Regex!1465) Bool)

(assert (=> b!587767 (= e!355262 (nullable!401 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248887))))))))

(declare-fun b!587768 () Bool)

(declare-fun res!253242 () Bool)

(declare-fun e!355261 () Bool)

(assert (=> b!587768 (=> (not res!253242) (not e!355261))))

(assert (=> b!587768 (= res!253242 (isEmpty!4173 (tail!769 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887)))))))))

(declare-fun b!587769 () Bool)

(declare-fun derivativeStep!314 (Regex!1465 C!3852) Regex!1465)

(assert (=> b!587769 (= e!355262 (matchR!602 (derivativeStep!314 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))) (head!1240 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887)))))) (tail!769 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887)))))))))

(declare-fun b!587770 () Bool)

(declare-fun res!253245 () Bool)

(declare-fun e!355258 () Bool)

(assert (=> b!587770 (=> res!253245 e!355258)))

(assert (=> b!587770 (= res!253245 (not (isEmpty!4173 (tail!769 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))))))))

(declare-fun d!206797 () Bool)

(declare-fun e!355260 () Bool)

(assert (=> d!206797 e!355260))

(declare-fun c!109822 () Bool)

(assert (=> d!206797 (= c!109822 ((_ is EmptyExpr!1465) (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248887))))))))

(declare-fun lt!249000 () Bool)

(assert (=> d!206797 (= lt!249000 e!355262)))

(declare-fun c!109823 () Bool)

(assert (=> d!206797 (= c!109823 (isEmpty!4173 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))))))

(declare-fun validRegex!496 (Regex!1465) Bool)

(assert (=> d!206797 (validRegex!496 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))))

(assert (=> d!206797 (= (matchR!602 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))) (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))) lt!249000)))

(declare-fun b!587771 () Bool)

(declare-fun call!40242 () Bool)

(assert (=> b!587771 (= e!355260 (= lt!249000 call!40242))))

(declare-fun b!587772 () Bool)

(declare-fun res!253240 () Bool)

(declare-fun e!355263 () Bool)

(assert (=> b!587772 (=> res!253240 e!355263)))

(assert (=> b!587772 (= res!253240 (not ((_ is ElementMatch!1465) (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))))))

(declare-fun e!355257 () Bool)

(assert (=> b!587772 (= e!355257 e!355263)))

(declare-fun b!587773 () Bool)

(declare-fun res!253247 () Bool)

(assert (=> b!587773 (=> (not res!253247) (not e!355261))))

(assert (=> b!587773 (= res!253247 (not call!40242))))

(declare-fun b!587774 () Bool)

(assert (=> b!587774 (= e!355257 (not lt!249000))))

(declare-fun b!587775 () Bool)

(declare-fun res!253244 () Bool)

(assert (=> b!587775 (=> res!253244 e!355263)))

(assert (=> b!587775 (= res!253244 e!355261)))

(declare-fun res!253241 () Bool)

(assert (=> b!587775 (=> (not res!253241) (not e!355261))))

(assert (=> b!587775 (= res!253241 lt!249000)))

(declare-fun b!587776 () Bool)

(assert (=> b!587776 (= e!355261 (= (head!1240 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))) (c!109681 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))))))

(declare-fun b!587777 () Bool)

(declare-fun e!355259 () Bool)

(assert (=> b!587777 (= e!355259 e!355258)))

(declare-fun res!253246 () Bool)

(assert (=> b!587777 (=> res!253246 e!355258)))

(assert (=> b!587777 (= res!253246 call!40242)))

(declare-fun bm!40237 () Bool)

(assert (=> bm!40237 (= call!40242 (isEmpty!4173 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))))))

(declare-fun b!587778 () Bool)

(assert (=> b!587778 (= e!355260 e!355257)))

(declare-fun c!109824 () Bool)

(assert (=> b!587778 (= c!109824 ((_ is EmptyLang!1465) (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248887))))))))

(declare-fun b!587779 () Bool)

(assert (=> b!587779 (= e!355263 e!355259)))

(declare-fun res!253243 () Bool)

(assert (=> b!587779 (=> (not res!253243) (not e!355259))))

(assert (=> b!587779 (= res!253243 (not lt!249000))))

(declare-fun b!587780 () Bool)

(assert (=> b!587780 (= e!355258 (not (= (head!1240 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))) (c!109681 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248887))))))))))

(assert (= (and d!206797 c!109823) b!587767))

(assert (= (and d!206797 (not c!109823)) b!587769))

(assert (= (and d!206797 c!109822) b!587771))

(assert (= (and d!206797 (not c!109822)) b!587778))

(assert (= (and b!587778 c!109824) b!587774))

(assert (= (and b!587778 (not c!109824)) b!587772))

(assert (= (and b!587772 (not res!253240)) b!587775))

(assert (= (and b!587775 res!253241) b!587773))

(assert (= (and b!587773 res!253247) b!587768))

(assert (= (and b!587768 res!253242) b!587776))

(assert (= (and b!587775 (not res!253244)) b!587779))

(assert (= (and b!587779 res!253243) b!587777))

(assert (= (and b!587777 (not res!253246)) b!587770))

(assert (= (and b!587770 (not res!253245)) b!587780))

(assert (= (or b!587771 b!587773 b!587777) bm!40237))

(assert (=> bm!40237 m!847611))

(declare-fun m!848243 () Bool)

(assert (=> bm!40237 m!848243))

(assert (=> b!587776 m!847611))

(declare-fun m!848245 () Bool)

(assert (=> b!587776 m!848245))

(assert (=> b!587769 m!847611))

(assert (=> b!587769 m!848245))

(assert (=> b!587769 m!848245))

(declare-fun m!848247 () Bool)

(assert (=> b!587769 m!848247))

(assert (=> b!587769 m!847611))

(declare-fun m!848249 () Bool)

(assert (=> b!587769 m!848249))

(assert (=> b!587769 m!848247))

(assert (=> b!587769 m!848249))

(declare-fun m!848251 () Bool)

(assert (=> b!587769 m!848251))

(assert (=> b!587780 m!847611))

(assert (=> b!587780 m!848245))

(declare-fun m!848253 () Bool)

(assert (=> b!587767 m!848253))

(assert (=> b!587770 m!847611))

(assert (=> b!587770 m!848249))

(assert (=> b!587770 m!848249))

(declare-fun m!848255 () Bool)

(assert (=> b!587770 m!848255))

(assert (=> b!587768 m!847611))

(assert (=> b!587768 m!848249))

(assert (=> b!587768 m!848249))

(assert (=> b!587768 m!848255))

(assert (=> d!206797 m!847611))

(assert (=> d!206797 m!848243))

(declare-fun m!848257 () Bool)

(assert (=> d!206797 m!848257))

(assert (=> b!587255 d!206797))

(assert (=> b!587255 d!206757))

(declare-fun d!206799 () Bool)

(assert (=> d!206799 (= (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887)))) (list!2414 (c!109682 (charsOf!760 (_1!3636 (get!2211 lt!248887))))))))

(declare-fun bs!70148 () Bool)

(assert (= bs!70148 d!206799))

(declare-fun m!848259 () Bool)

(assert (=> bs!70148 m!848259))

(assert (=> b!587255 d!206799))

(declare-fun d!206801 () Bool)

(declare-fun lt!249001 () BalanceConc!3704)

(assert (=> d!206801 (= (list!2412 lt!249001) (originalCharacters!1170 (_1!3636 (get!2211 lt!248887))))))

(assert (=> d!206801 (= lt!249001 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887))))) (value!37100 (_1!3636 (get!2211 lt!248887)))))))

(assert (=> d!206801 (= (charsOf!760 (_1!3636 (get!2211 lt!248887))) lt!249001)))

(declare-fun b_lambda!23151 () Bool)

(assert (=> (not b_lambda!23151) (not d!206801)))

(declare-fun tb!51447 () Bool)

(declare-fun t!78701 () Bool)

(assert (=> (and b!586978 (= (toChars!1869 (transformation!1131 (rule!1895 token!491))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))) t!78701) tb!51447))

(declare-fun b!587781 () Bool)

(declare-fun e!355264 () Bool)

(declare-fun tp!183300 () Bool)

(assert (=> b!587781 (= e!355264 (and (inv!7307 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887))))) (value!37100 (_1!3636 (get!2211 lt!248887)))))) tp!183300))))

(declare-fun result!57652 () Bool)

(assert (=> tb!51447 (= result!57652 (and (inv!7308 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887))))) (value!37100 (_1!3636 (get!2211 lt!248887))))) e!355264))))

(assert (= tb!51447 b!587781))

(declare-fun m!848261 () Bool)

(assert (=> b!587781 m!848261))

(declare-fun m!848263 () Bool)

(assert (=> tb!51447 m!848263))

(assert (=> d!206801 t!78701))

(declare-fun b_and!57907 () Bool)

(assert (= b_and!57901 (and (=> t!78701 result!57652) b_and!57907)))

(declare-fun t!78703 () Bool)

(declare-fun tb!51449 () Bool)

(assert (=> (and b!586979 (= (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))) t!78703) tb!51449))

(declare-fun result!57654 () Bool)

(assert (= result!57654 result!57652))

(assert (=> d!206801 t!78703))

(declare-fun b_and!57909 () Bool)

(assert (= b_and!57903 (and (=> t!78703 result!57654) b_and!57909)))

(declare-fun t!78705 () Bool)

(declare-fun tb!51451 () Bool)

(assert (=> (and b!587307 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))) t!78705) tb!51451))

(declare-fun result!57656 () Bool)

(assert (= result!57656 result!57652))

(assert (=> d!206801 t!78705))

(declare-fun b_and!57911 () Bool)

(assert (= b_and!57905 (and (=> t!78705 result!57656) b_and!57911)))

(declare-fun m!848265 () Bool)

(assert (=> d!206801 m!848265))

(declare-fun m!848267 () Bool)

(assert (=> d!206801 m!848267))

(assert (=> b!587255 d!206801))

(declare-fun d!206803 () Bool)

(declare-fun charsToInt!0 (List!5790) (_ BitVec 32))

(assert (=> d!206803 (= (inv!16 (value!37100 token!491)) (= (charsToInt!0 (text!8532 (value!37100 token!491))) (value!37091 (value!37100 token!491))))))

(declare-fun bs!70149 () Bool)

(assert (= bs!70149 d!206803))

(declare-fun m!848269 () Bool)

(assert (=> bs!70149 m!848269))

(assert (=> b!587035 d!206803))

(assert (=> b!587180 d!206749))

(declare-fun b!587784 () Bool)

(declare-fun res!253249 () Bool)

(declare-fun e!355265 () Bool)

(assert (=> b!587784 (=> (not res!253249) (not e!355265))))

(declare-fun lt!249002 () List!5791)

(assert (=> b!587784 (= res!253249 (= (size!4591 lt!249002) (+ (size!4591 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))) (size!4591 (_2!3636 (get!2211 lt!248882))))))))

(declare-fun b!587782 () Bool)

(declare-fun e!355266 () List!5791)

(assert (=> b!587782 (= e!355266 (_2!3636 (get!2211 lt!248882)))))

(declare-fun b!587785 () Bool)

(assert (=> b!587785 (= e!355265 (or (not (= (_2!3636 (get!2211 lt!248882)) Nil!5781)) (= lt!249002 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882)))))))))

(declare-fun b!587783 () Bool)

(assert (=> b!587783 (= e!355266 (Cons!5781 (h!11182 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))) (++!1619 (t!78622 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))) (_2!3636 (get!2211 lt!248882)))))))

(declare-fun d!206805 () Bool)

(assert (=> d!206805 e!355265))

(declare-fun res!253248 () Bool)

(assert (=> d!206805 (=> (not res!253248) (not e!355265))))

(assert (=> d!206805 (= res!253248 (= (content!1033 lt!249002) ((_ map or) (content!1033 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))) (content!1033 (_2!3636 (get!2211 lt!248882))))))))

(assert (=> d!206805 (= lt!249002 e!355266)))

(declare-fun c!109825 () Bool)

(assert (=> d!206805 (= c!109825 ((_ is Nil!5781) (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))))))

(assert (=> d!206805 (= (++!1619 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882)))) (_2!3636 (get!2211 lt!248882))) lt!249002)))

(assert (= (and d!206805 c!109825) b!587782))

(assert (= (and d!206805 (not c!109825)) b!587783))

(assert (= (and d!206805 res!253248) b!587784))

(assert (= (and b!587784 res!253249) b!587785))

(declare-fun m!848271 () Bool)

(assert (=> b!587784 m!848271))

(assert (=> b!587784 m!847579))

(declare-fun m!848273 () Bool)

(assert (=> b!587784 m!848273))

(assert (=> b!587784 m!847575))

(declare-fun m!848275 () Bool)

(assert (=> b!587783 m!848275))

(declare-fun m!848277 () Bool)

(assert (=> d!206805 m!848277))

(assert (=> d!206805 m!847579))

(declare-fun m!848279 () Bool)

(assert (=> d!206805 m!848279))

(declare-fun m!848281 () Bool)

(assert (=> d!206805 m!848281))

(assert (=> b!587247 d!206805))

(assert (=> b!587247 d!206767))

(assert (=> b!587247 d!206769))

(assert (=> b!587247 d!206771))

(declare-fun d!206807 () Bool)

(declare-fun c!109826 () Bool)

(assert (=> d!206807 (= c!109826 ((_ is Empty!1848) (c!109682 (charsOf!760 (_1!3636 (v!16356 lt!248773))))))))

(declare-fun e!355267 () List!5791)

(assert (=> d!206807 (= (list!2414 (c!109682 (charsOf!760 (_1!3636 (v!16356 lt!248773))))) e!355267)))

(declare-fun b!587788 () Bool)

(declare-fun e!355268 () List!5791)

(assert (=> b!587788 (= e!355268 (list!2416 (xs!4485 (c!109682 (charsOf!760 (_1!3636 (v!16356 lt!248773)))))))))

(declare-fun b!587787 () Bool)

(assert (=> b!587787 (= e!355267 e!355268)))

(declare-fun c!109827 () Bool)

(assert (=> b!587787 (= c!109827 ((_ is Leaf!2921) (c!109682 (charsOf!760 (_1!3636 (v!16356 lt!248773))))))))

(declare-fun b!587786 () Bool)

(assert (=> b!587786 (= e!355267 Nil!5781)))

(declare-fun b!587789 () Bool)

(assert (=> b!587789 (= e!355268 (++!1619 (list!2414 (left!4706 (c!109682 (charsOf!760 (_1!3636 (v!16356 lt!248773)))))) (list!2414 (right!5036 (c!109682 (charsOf!760 (_1!3636 (v!16356 lt!248773))))))))))

(assert (= (and d!206807 c!109826) b!587786))

(assert (= (and d!206807 (not c!109826)) b!587787))

(assert (= (and b!587787 c!109827) b!587788))

(assert (= (and b!587787 (not c!109827)) b!587789))

(declare-fun m!848283 () Bool)

(assert (=> b!587788 m!848283))

(declare-fun m!848285 () Bool)

(assert (=> b!587789 m!848285))

(declare-fun m!848287 () Bool)

(assert (=> b!587789 m!848287))

(assert (=> b!587789 m!848285))

(assert (=> b!587789 m!848287))

(declare-fun m!848289 () Bool)

(assert (=> b!587789 m!848289))

(assert (=> d!206459 d!206807))

(declare-fun d!206809 () Bool)

(declare-fun lt!249003 () Int)

(assert (=> d!206809 (>= lt!249003 0)))

(declare-fun e!355269 () Int)

(assert (=> d!206809 (= lt!249003 e!355269)))

(declare-fun c!109828 () Bool)

(assert (=> d!206809 (= c!109828 ((_ is Nil!5781) (t!78622 lt!248768)))))

(assert (=> d!206809 (= (size!4591 (t!78622 lt!248768)) lt!249003)))

(declare-fun b!587790 () Bool)

(assert (=> b!587790 (= e!355269 0)))

(declare-fun b!587791 () Bool)

(assert (=> b!587791 (= e!355269 (+ 1 (size!4591 (t!78622 (t!78622 lt!248768)))))))

(assert (= (and d!206809 c!109828) b!587790))

(assert (= (and d!206809 (not c!109828)) b!587791))

(declare-fun m!848291 () Bool)

(assert (=> b!587791 m!848291))

(assert (=> b!587087 d!206809))

(declare-fun b!587792 () Bool)

(declare-fun e!355270 () Option!1482)

(declare-fun call!40243 () Option!1482)

(assert (=> b!587792 (= e!355270 call!40243)))

(declare-fun b!587793 () Bool)

(declare-fun lt!249005 () Option!1482)

(declare-fun lt!249008 () Option!1482)

(assert (=> b!587793 (= e!355270 (ite (and ((_ is None!1481) lt!249005) ((_ is None!1481) lt!249008)) None!1481 (ite ((_ is None!1481) lt!249008) lt!249005 (ite ((_ is None!1481) lt!249005) lt!249008 (ite (>= (size!4590 (_1!3636 (v!16356 lt!249005))) (size!4590 (_1!3636 (v!16356 lt!249008)))) lt!249005 lt!249008)))))))

(assert (=> b!587793 (= lt!249005 call!40243)))

(assert (=> b!587793 (= lt!249008 (maxPrefix!715 thiss!22590 (t!78623 (t!78623 rules!3103)) lt!248780))))

(declare-fun b!587794 () Bool)

(declare-fun e!355272 () Bool)

(declare-fun e!355271 () Bool)

(assert (=> b!587794 (= e!355272 e!355271)))

(declare-fun res!253256 () Bool)

(assert (=> b!587794 (=> (not res!253256) (not e!355271))))

(declare-fun lt!249007 () Option!1482)

(assert (=> b!587794 (= res!253256 (isDefined!1293 lt!249007))))

(declare-fun b!587795 () Bool)

(declare-fun res!253253 () Bool)

(assert (=> b!587795 (=> (not res!253253) (not e!355271))))

(assert (=> b!587795 (= res!253253 (matchR!602 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!249007)))) (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!249007))))))))

(declare-fun b!587796 () Bool)

(declare-fun res!253255 () Bool)

(assert (=> b!587796 (=> (not res!253255) (not e!355271))))

(assert (=> b!587796 (= res!253255 (= (++!1619 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!249007)))) (_2!3636 (get!2211 lt!249007))) lt!248780))))

(declare-fun bm!40238 () Bool)

(assert (=> bm!40238 (= call!40243 (maxPrefixOneRule!406 thiss!22590 (h!11183 (t!78623 rules!3103)) lt!248780))))

(declare-fun b!587797 () Bool)

(declare-fun res!253252 () Bool)

(assert (=> b!587797 (=> (not res!253252) (not e!355271))))

(assert (=> b!587797 (= res!253252 (< (size!4591 (_2!3636 (get!2211 lt!249007))) (size!4591 lt!248780)))))

(declare-fun b!587798 () Bool)

(declare-fun res!253250 () Bool)

(assert (=> b!587798 (=> (not res!253250) (not e!355271))))

(assert (=> b!587798 (= res!253250 (= (value!37100 (_1!3636 (get!2211 lt!249007))) (apply!1386 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!249007)))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!249007)))))))))

(declare-fun b!587800 () Bool)

(assert (=> b!587800 (= e!355271 (contains!1361 (t!78623 rules!3103) (rule!1895 (_1!3636 (get!2211 lt!249007)))))))

(declare-fun d!206811 () Bool)

(assert (=> d!206811 e!355272))

(declare-fun res!253254 () Bool)

(assert (=> d!206811 (=> res!253254 e!355272)))

(assert (=> d!206811 (= res!253254 (isEmpty!4176 lt!249007))))

(assert (=> d!206811 (= lt!249007 e!355270)))

(declare-fun c!109829 () Bool)

(assert (=> d!206811 (= c!109829 (and ((_ is Cons!5782) (t!78623 rules!3103)) ((_ is Nil!5782) (t!78623 (t!78623 rules!3103)))))))

(declare-fun lt!249006 () Unit!10497)

(declare-fun lt!249004 () Unit!10497)

(assert (=> d!206811 (= lt!249006 lt!249004)))

(assert (=> d!206811 (isPrefix!759 lt!248780 lt!248780)))

(assert (=> d!206811 (= lt!249004 (lemmaIsPrefixRefl!495 lt!248780 lt!248780))))

(assert (=> d!206811 (rulesValidInductive!410 thiss!22590 (t!78623 rules!3103))))

(assert (=> d!206811 (= (maxPrefix!715 thiss!22590 (t!78623 rules!3103) lt!248780) lt!249007)))

(declare-fun b!587799 () Bool)

(declare-fun res!253251 () Bool)

(assert (=> b!587799 (=> (not res!253251) (not e!355271))))

(assert (=> b!587799 (= res!253251 (= (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!249007)))) (originalCharacters!1170 (_1!3636 (get!2211 lt!249007)))))))

(assert (= (and d!206811 c!109829) b!587792))

(assert (= (and d!206811 (not c!109829)) b!587793))

(assert (= (or b!587792 b!587793) bm!40238))

(assert (= (and d!206811 (not res!253254)) b!587794))

(assert (= (and b!587794 res!253256) b!587799))

(assert (= (and b!587799 res!253251) b!587797))

(assert (= (and b!587797 res!253252) b!587796))

(assert (= (and b!587796 res!253255) b!587798))

(assert (= (and b!587798 res!253250) b!587795))

(assert (= (and b!587795 res!253253) b!587800))

(declare-fun m!848293 () Bool)

(assert (=> b!587794 m!848293))

(declare-fun m!848295 () Bool)

(assert (=> bm!40238 m!848295))

(declare-fun m!848297 () Bool)

(assert (=> b!587797 m!848297))

(declare-fun m!848299 () Bool)

(assert (=> b!587797 m!848299))

(assert (=> b!587797 m!847607))

(assert (=> b!587799 m!848297))

(declare-fun m!848301 () Bool)

(assert (=> b!587799 m!848301))

(assert (=> b!587799 m!848301))

(declare-fun m!848303 () Bool)

(assert (=> b!587799 m!848303))

(assert (=> b!587800 m!848297))

(declare-fun m!848305 () Bool)

(assert (=> b!587800 m!848305))

(assert (=> b!587796 m!848297))

(assert (=> b!587796 m!848301))

(assert (=> b!587796 m!848301))

(assert (=> b!587796 m!848303))

(assert (=> b!587796 m!848303))

(declare-fun m!848307 () Bool)

(assert (=> b!587796 m!848307))

(assert (=> b!587798 m!848297))

(declare-fun m!848309 () Bool)

(assert (=> b!587798 m!848309))

(assert (=> b!587798 m!848309))

(declare-fun m!848311 () Bool)

(assert (=> b!587798 m!848311))

(declare-fun m!848313 () Bool)

(assert (=> b!587793 m!848313))

(declare-fun m!848315 () Bool)

(assert (=> d!206811 m!848315))

(assert (=> d!206811 m!847625))

(assert (=> d!206811 m!847627))

(assert (=> d!206811 m!848239))

(assert (=> b!587795 m!848297))

(assert (=> b!587795 m!848301))

(assert (=> b!587795 m!848301))

(assert (=> b!587795 m!848303))

(assert (=> b!587795 m!848303))

(declare-fun m!848317 () Bool)

(assert (=> b!587795 m!848317))

(assert (=> b!587253 d!206811))

(declare-fun d!206813 () Bool)

(declare-fun res!253261 () Bool)

(declare-fun e!355277 () Bool)

(assert (=> d!206813 (=> res!253261 e!355277)))

(assert (=> d!206813 (= res!253261 ((_ is Nil!5782) rules!3103))))

(assert (=> d!206813 (= (noDuplicateTag!404 thiss!22590 rules!3103 Nil!5783) e!355277)))

(declare-fun b!587805 () Bool)

(declare-fun e!355278 () Bool)

(assert (=> b!587805 (= e!355277 e!355278)))

(declare-fun res!253262 () Bool)

(assert (=> b!587805 (=> (not res!253262) (not e!355278))))

(declare-fun contains!1363 (List!5793 String!7519) Bool)

(assert (=> b!587805 (= res!253262 (not (contains!1363 Nil!5783 (tag!1393 (h!11183 rules!3103)))))))

(declare-fun b!587806 () Bool)

(assert (=> b!587806 (= e!355278 (noDuplicateTag!404 thiss!22590 (t!78623 rules!3103) (Cons!5783 (tag!1393 (h!11183 rules!3103)) Nil!5783)))))

(assert (= (and d!206813 (not res!253261)) b!587805))

(assert (= (and b!587805 res!253262) b!587806))

(declare-fun m!848319 () Bool)

(assert (=> b!587805 m!848319))

(declare-fun m!848321 () Bool)

(assert (=> b!587806 m!848321))

(assert (=> b!587004 d!206813))

(declare-fun b!587807 () Bool)

(declare-fun e!355279 () Option!1482)

(declare-fun call!40244 () Option!1482)

(assert (=> b!587807 (= e!355279 call!40244)))

(declare-fun b!587808 () Bool)

(declare-fun lt!249010 () Option!1482)

(declare-fun lt!249013 () Option!1482)

(assert (=> b!587808 (= e!355279 (ite (and ((_ is None!1481) lt!249010) ((_ is None!1481) lt!249013)) None!1481 (ite ((_ is None!1481) lt!249013) lt!249010 (ite ((_ is None!1481) lt!249010) lt!249013 (ite (>= (size!4590 (_1!3636 (v!16356 lt!249010))) (size!4590 (_1!3636 (v!16356 lt!249013)))) lt!249010 lt!249013)))))))

(assert (=> b!587808 (= lt!249010 call!40244)))

(assert (=> b!587808 (= lt!249013 (maxPrefix!715 thiss!22590 (t!78623 (t!78623 rules!3103)) input!2705))))

(declare-fun b!587809 () Bool)

(declare-fun e!355281 () Bool)

(declare-fun e!355280 () Bool)

(assert (=> b!587809 (= e!355281 e!355280)))

(declare-fun res!253269 () Bool)

(assert (=> b!587809 (=> (not res!253269) (not e!355280))))

(declare-fun lt!249012 () Option!1482)

(assert (=> b!587809 (= res!253269 (isDefined!1293 lt!249012))))

(declare-fun b!587810 () Bool)

(declare-fun res!253266 () Bool)

(assert (=> b!587810 (=> (not res!253266) (not e!355280))))

(assert (=> b!587810 (= res!253266 (matchR!602 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!249012)))) (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!249012))))))))

(declare-fun b!587811 () Bool)

(declare-fun res!253268 () Bool)

(assert (=> b!587811 (=> (not res!253268) (not e!355280))))

(assert (=> b!587811 (= res!253268 (= (++!1619 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!249012)))) (_2!3636 (get!2211 lt!249012))) input!2705))))

(declare-fun bm!40239 () Bool)

(assert (=> bm!40239 (= call!40244 (maxPrefixOneRule!406 thiss!22590 (h!11183 (t!78623 rules!3103)) input!2705))))

(declare-fun b!587812 () Bool)

(declare-fun res!253265 () Bool)

(assert (=> b!587812 (=> (not res!253265) (not e!355280))))

(assert (=> b!587812 (= res!253265 (< (size!4591 (_2!3636 (get!2211 lt!249012))) (size!4591 input!2705)))))

(declare-fun b!587813 () Bool)

(declare-fun res!253263 () Bool)

(assert (=> b!587813 (=> (not res!253263) (not e!355280))))

(assert (=> b!587813 (= res!253263 (= (value!37100 (_1!3636 (get!2211 lt!249012))) (apply!1386 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!249012)))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!249012)))))))))

(declare-fun b!587815 () Bool)

(assert (=> b!587815 (= e!355280 (contains!1361 (t!78623 rules!3103) (rule!1895 (_1!3636 (get!2211 lt!249012)))))))

(declare-fun d!206815 () Bool)

(assert (=> d!206815 e!355281))

(declare-fun res!253267 () Bool)

(assert (=> d!206815 (=> res!253267 e!355281)))

(assert (=> d!206815 (= res!253267 (isEmpty!4176 lt!249012))))

(assert (=> d!206815 (= lt!249012 e!355279)))

(declare-fun c!109830 () Bool)

(assert (=> d!206815 (= c!109830 (and ((_ is Cons!5782) (t!78623 rules!3103)) ((_ is Nil!5782) (t!78623 (t!78623 rules!3103)))))))

(declare-fun lt!249011 () Unit!10497)

(declare-fun lt!249009 () Unit!10497)

(assert (=> d!206815 (= lt!249011 lt!249009)))

(assert (=> d!206815 (isPrefix!759 input!2705 input!2705)))

(assert (=> d!206815 (= lt!249009 (lemmaIsPrefixRefl!495 input!2705 input!2705))))

(assert (=> d!206815 (rulesValidInductive!410 thiss!22590 (t!78623 rules!3103))))

(assert (=> d!206815 (= (maxPrefix!715 thiss!22590 (t!78623 rules!3103) input!2705) lt!249012)))

(declare-fun b!587814 () Bool)

(declare-fun res!253264 () Bool)

(assert (=> b!587814 (=> (not res!253264) (not e!355280))))

(assert (=> b!587814 (= res!253264 (= (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!249012)))) (originalCharacters!1170 (_1!3636 (get!2211 lt!249012)))))))

(assert (= (and d!206815 c!109830) b!587807))

(assert (= (and d!206815 (not c!109830)) b!587808))

(assert (= (or b!587807 b!587808) bm!40239))

(assert (= (and d!206815 (not res!253267)) b!587809))

(assert (= (and b!587809 res!253269) b!587814))

(assert (= (and b!587814 res!253264) b!587812))

(assert (= (and b!587812 res!253265) b!587811))

(assert (= (and b!587811 res!253268) b!587813))

(assert (= (and b!587813 res!253263) b!587810))

(assert (= (and b!587810 res!253266) b!587815))

(declare-fun m!848323 () Bool)

(assert (=> b!587809 m!848323))

(declare-fun m!848325 () Bool)

(assert (=> bm!40239 m!848325))

(declare-fun m!848327 () Bool)

(assert (=> b!587812 m!848327))

(declare-fun m!848329 () Bool)

(assert (=> b!587812 m!848329))

(assert (=> b!587812 m!847455))

(assert (=> b!587814 m!848327))

(declare-fun m!848331 () Bool)

(assert (=> b!587814 m!848331))

(assert (=> b!587814 m!848331))

(declare-fun m!848333 () Bool)

(assert (=> b!587814 m!848333))

(assert (=> b!587815 m!848327))

(declare-fun m!848335 () Bool)

(assert (=> b!587815 m!848335))

(assert (=> b!587811 m!848327))

(assert (=> b!587811 m!848331))

(assert (=> b!587811 m!848331))

(assert (=> b!587811 m!848333))

(assert (=> b!587811 m!848333))

(declare-fun m!848337 () Bool)

(assert (=> b!587811 m!848337))

(assert (=> b!587813 m!848327))

(declare-fun m!848339 () Bool)

(assert (=> b!587813 m!848339))

(assert (=> b!587813 m!848339))

(declare-fun m!848341 () Bool)

(assert (=> b!587813 m!848341))

(declare-fun m!848343 () Bool)

(assert (=> b!587808 m!848343))

(declare-fun m!848345 () Bool)

(assert (=> d!206815 m!848345))

(assert (=> d!206815 m!847257))

(assert (=> d!206815 m!847267))

(assert (=> d!206815 m!848239))

(assert (=> b!587810 m!848327))

(assert (=> b!587810 m!848331))

(assert (=> b!587810 m!848331))

(assert (=> b!587810 m!848333))

(assert (=> b!587810 m!848333))

(declare-fun m!848347 () Bool)

(assert (=> b!587810 m!848347))

(assert (=> b!587244 d!206815))

(declare-fun b!587818 () Bool)

(declare-fun res!253271 () Bool)

(declare-fun e!355282 () Bool)

(assert (=> b!587818 (=> (not res!253271) (not e!355282))))

(declare-fun lt!249014 () List!5791)

(assert (=> b!587818 (= res!253271 (= (size!4591 lt!249014) (+ (size!4591 (t!78622 lt!248776)) (size!4591 suffix!1342))))))

(declare-fun b!587816 () Bool)

(declare-fun e!355283 () List!5791)

(assert (=> b!587816 (= e!355283 suffix!1342)))

(declare-fun b!587819 () Bool)

(assert (=> b!587819 (= e!355282 (or (not (= suffix!1342 Nil!5781)) (= lt!249014 (t!78622 lt!248776))))))

(declare-fun b!587817 () Bool)

(assert (=> b!587817 (= e!355283 (Cons!5781 (h!11182 (t!78622 lt!248776)) (++!1619 (t!78622 (t!78622 lt!248776)) suffix!1342)))))

(declare-fun d!206817 () Bool)

(assert (=> d!206817 e!355282))

(declare-fun res!253270 () Bool)

(assert (=> d!206817 (=> (not res!253270) (not e!355282))))

(assert (=> d!206817 (= res!253270 (= (content!1033 lt!249014) ((_ map or) (content!1033 (t!78622 lt!248776)) (content!1033 suffix!1342))))))

(assert (=> d!206817 (= lt!249014 e!355283)))

(declare-fun c!109831 () Bool)

(assert (=> d!206817 (= c!109831 ((_ is Nil!5781) (t!78622 lt!248776)))))

(assert (=> d!206817 (= (++!1619 (t!78622 lt!248776) suffix!1342) lt!249014)))

(assert (= (and d!206817 c!109831) b!587816))

(assert (= (and d!206817 (not c!109831)) b!587817))

(assert (= (and d!206817 res!253270) b!587818))

(assert (= (and b!587818 res!253271) b!587819))

(declare-fun m!848349 () Bool)

(assert (=> b!587818 m!848349))

(assert (=> b!587818 m!847537))

(assert (=> b!587818 m!847555))

(declare-fun m!848351 () Bool)

(assert (=> b!587817 m!848351))

(declare-fun m!848353 () Bool)

(assert (=> d!206817 m!848353))

(declare-fun m!848355 () Bool)

(assert (=> d!206817 m!848355))

(assert (=> d!206817 m!847563))

(assert (=> b!587221 d!206817))

(declare-fun d!206819 () Bool)

(assert (=> d!206819 true))

(declare-fun order!4737 () Int)

(declare-fun lambda!15921 () Int)

(declare-fun order!4735 () Int)

(declare-fun dynLambda!3381 (Int Int) Int)

(declare-fun dynLambda!3382 (Int Int) Int)

(assert (=> d!206819 (< (dynLambda!3381 order!4735 (toChars!1869 (transformation!1131 (rule!1895 token!491)))) (dynLambda!3382 order!4737 lambda!15921))))

(assert (=> d!206819 true))

(assert (=> d!206819 (< (dynLambda!3378 order!4731 (toValue!2010 (transformation!1131 (rule!1895 token!491)))) (dynLambda!3382 order!4737 lambda!15921))))

(declare-fun Forall!294 (Int) Bool)

(assert (=> d!206819 (= (semiInverseModEq!441 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (toValue!2010 (transformation!1131 (rule!1895 token!491)))) (Forall!294 lambda!15921))))

(declare-fun bs!70150 () Bool)

(assert (= bs!70150 d!206819))

(declare-fun m!848357 () Bool)

(assert (=> bs!70150 m!848357))

(assert (=> d!206435 d!206819))

(declare-fun d!206821 () Bool)

(declare-fun lt!249015 () Int)

(assert (=> d!206821 (>= lt!249015 0)))

(declare-fun e!355284 () Int)

(assert (=> d!206821 (= lt!249015 e!355284)))

(declare-fun c!109832 () Bool)

(assert (=> d!206821 (= c!109832 ((_ is Nil!5781) lt!248867))))

(assert (=> d!206821 (= (size!4591 lt!248867) lt!249015)))

(declare-fun b!587824 () Bool)

(assert (=> b!587824 (= e!355284 0)))

(declare-fun b!587825 () Bool)

(assert (=> b!587825 (= e!355284 (+ 1 (size!4591 (t!78622 lt!248867))))))

(assert (= (and d!206821 c!109832) b!587824))

(assert (= (and d!206821 (not c!109832)) b!587825))

(declare-fun m!848359 () Bool)

(assert (=> b!587825 m!848359))

(assert (=> b!587218 d!206821))

(assert (=> b!587218 d!206467))

(declare-fun d!206823 () Bool)

(declare-fun lt!249016 () Int)

(assert (=> d!206823 (>= lt!249016 0)))

(declare-fun e!355285 () Int)

(assert (=> d!206823 (= lt!249016 e!355285)))

(declare-fun c!109833 () Bool)

(assert (=> d!206823 (= c!109833 ((_ is Nil!5781) (_2!3636 (v!16356 lt!248773))))))

(assert (=> d!206823 (= (size!4591 (_2!3636 (v!16356 lt!248773))) lt!249016)))

(declare-fun b!587826 () Bool)

(assert (=> b!587826 (= e!355285 0)))

(declare-fun b!587827 () Bool)

(assert (=> b!587827 (= e!355285 (+ 1 (size!4591 (t!78622 (_2!3636 (v!16356 lt!248773))))))))

(assert (= (and d!206823 c!109833) b!587826))

(assert (= (and d!206823 (not c!109833)) b!587827))

(declare-fun m!848361 () Bool)

(assert (=> b!587827 m!848361))

(assert (=> b!587218 d!206823))

(declare-fun b!587830 () Bool)

(declare-fun res!253273 () Bool)

(declare-fun e!355286 () Bool)

(assert (=> b!587830 (=> (not res!253273) (not e!355286))))

(declare-fun lt!249017 () List!5791)

(assert (=> b!587830 (= res!253273 (= (size!4591 lt!249017) (+ (size!4591 lt!248768) (size!4591 lt!248847))))))

(declare-fun b!587828 () Bool)

(declare-fun e!355287 () List!5791)

(assert (=> b!587828 (= e!355287 lt!248847)))

(declare-fun b!587831 () Bool)

(assert (=> b!587831 (= e!355286 (or (not (= lt!248847 Nil!5781)) (= lt!249017 lt!248768)))))

(declare-fun b!587829 () Bool)

(assert (=> b!587829 (= e!355287 (Cons!5781 (h!11182 lt!248768) (++!1619 (t!78622 lt!248768) lt!248847)))))

(declare-fun d!206825 () Bool)

(assert (=> d!206825 e!355286))

(declare-fun res!253272 () Bool)

(assert (=> d!206825 (=> (not res!253272) (not e!355286))))

(assert (=> d!206825 (= res!253272 (= (content!1033 lt!249017) ((_ map or) (content!1033 lt!248768) (content!1033 lt!248847))))))

(assert (=> d!206825 (= lt!249017 e!355287)))

(declare-fun c!109834 () Bool)

(assert (=> d!206825 (= c!109834 ((_ is Nil!5781) lt!248768))))

(assert (=> d!206825 (= (++!1619 lt!248768 lt!248847) lt!249017)))

(assert (= (and d!206825 c!109834) b!587828))

(assert (= (and d!206825 (not c!109834)) b!587829))

(assert (= (and d!206825 res!253272) b!587830))

(assert (= (and b!587830 res!253273) b!587831))

(declare-fun m!848363 () Bool)

(assert (=> b!587830 m!848363))

(assert (=> b!587830 m!847265))

(declare-fun m!848365 () Bool)

(assert (=> b!587830 m!848365))

(declare-fun m!848367 () Bool)

(assert (=> b!587829 m!848367))

(declare-fun m!848369 () Bool)

(assert (=> d!206825 m!848369))

(assert (=> d!206825 m!847549))

(declare-fun m!848371 () Bool)

(assert (=> d!206825 m!848371))

(assert (=> d!206471 d!206825))

(assert (=> d!206471 d!206749))

(assert (=> d!206471 d!206467))

(declare-fun d!206827 () Bool)

(assert (=> d!206827 (= (isEmpty!4176 lt!248882) (not ((_ is Some!1481) lt!248882)))))

(assert (=> d!206519 d!206827))

(assert (=> d!206519 d!206485))

(assert (=> d!206519 d!206461))

(assert (=> d!206519 d!206793))

(declare-fun d!206829 () Bool)

(assert (=> d!206829 (= (isEmpty!4173 (originalCharacters!1170 token!491)) ((_ is Nil!5781) (originalCharacters!1170 token!491)))))

(assert (=> d!206531 d!206829))

(declare-fun d!206831 () Bool)

(assert (=> d!206831 (= (isEmpty!4176 lt!248775) (not ((_ is Some!1481) lt!248775)))))

(assert (=> d!206521 d!206831))

(assert (=> d!206505 d!206499))

(assert (=> d!206505 d!206507))

(declare-fun d!206833 () Bool)

(assert (=> d!206833 (isPrefix!759 lt!248768 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773))))))

(assert (=> d!206833 true))

(declare-fun _$46!953 () Unit!10497)

(assert (=> d!206833 (= (choose!4219 lt!248768 (_2!3636 (v!16356 lt!248773))) _$46!953)))

(declare-fun bs!70151 () Bool)

(assert (= bs!70151 d!206833))

(assert (=> bs!70151 m!847239))

(assert (=> bs!70151 m!847239))

(assert (=> bs!70151 m!847241))

(assert (=> d!206505 d!206833))

(declare-fun d!206835 () Bool)

(declare-fun c!109837 () Bool)

(assert (=> d!206835 (= c!109837 ((_ is Nil!5781) lt!248868))))

(declare-fun e!355290 () (InoxSet C!3852))

(assert (=> d!206835 (= (content!1033 lt!248868) e!355290)))

(declare-fun b!587836 () Bool)

(assert (=> b!587836 (= e!355290 ((as const (Array C!3852 Bool)) false))))

(declare-fun b!587837 () Bool)

(assert (=> b!587837 (= e!355290 ((_ map or) (store ((as const (Array C!3852 Bool)) false) (h!11182 lt!248868) true) (content!1033 (t!78622 lt!248868))))))

(assert (= (and d!206835 c!109837) b!587836))

(assert (= (and d!206835 (not c!109837)) b!587837))

(declare-fun m!848373 () Bool)

(assert (=> b!587837 m!848373))

(declare-fun m!848375 () Bool)

(assert (=> b!587837 m!848375))

(assert (=> d!206509 d!206835))

(declare-fun d!206837 () Bool)

(declare-fun c!109838 () Bool)

(assert (=> d!206837 (= c!109838 ((_ is Nil!5781) lt!248776))))

(declare-fun e!355291 () (InoxSet C!3852))

(assert (=> d!206837 (= (content!1033 lt!248776) e!355291)))

(declare-fun b!587838 () Bool)

(assert (=> b!587838 (= e!355291 ((as const (Array C!3852 Bool)) false))))

(declare-fun b!587839 () Bool)

(assert (=> b!587839 (= e!355291 ((_ map or) (store ((as const (Array C!3852 Bool)) false) (h!11182 lt!248776) true) (content!1033 (t!78622 lt!248776))))))

(assert (= (and d!206837 c!109838) b!587838))

(assert (= (and d!206837 (not c!109838)) b!587839))

(declare-fun m!848377 () Bool)

(assert (=> b!587839 m!848377))

(assert (=> b!587839 m!848355))

(assert (=> d!206509 d!206837))

(declare-fun d!206839 () Bool)

(declare-fun c!109839 () Bool)

(assert (=> d!206839 (= c!109839 ((_ is Nil!5781) suffix!1342))))

(declare-fun e!355292 () (InoxSet C!3852))

(assert (=> d!206839 (= (content!1033 suffix!1342) e!355292)))

(declare-fun b!587840 () Bool)

(assert (=> b!587840 (= e!355292 ((as const (Array C!3852 Bool)) false))))

(declare-fun b!587841 () Bool)

(assert (=> b!587841 (= e!355292 ((_ map or) (store ((as const (Array C!3852 Bool)) false) (h!11182 suffix!1342) true) (content!1033 (t!78622 suffix!1342))))))

(assert (= (and d!206839 c!109839) b!587840))

(assert (= (and d!206839 (not c!109839)) b!587841))

(declare-fun m!848379 () Bool)

(assert (=> b!587841 m!848379))

(declare-fun m!848381 () Bool)

(assert (=> b!587841 m!848381))

(assert (=> d!206509 d!206839))

(declare-fun d!206841 () Bool)

(assert (=> d!206841 (= (list!2412 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491))) (list!2414 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491)))))))

(declare-fun bs!70152 () Bool)

(assert (= bs!70152 d!206841))

(declare-fun m!848383 () Bool)

(assert (=> bs!70152 m!848383))

(assert (=> b!587270 d!206841))

(declare-fun d!206843 () Bool)

(declare-fun isBalanced!520 (Conc!1848) Bool)

(assert (=> d!206843 (= (inv!7308 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491))) (isBalanced!520 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491)))))))

(declare-fun bs!70153 () Bool)

(assert (= bs!70153 d!206843))

(declare-fun m!848385 () Bool)

(assert (=> bs!70153 m!848385))

(assert (=> tb!51391 d!206843))

(declare-fun d!206845 () Bool)

(assert (=> d!206845 (= (inv!7308 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773))))) (isBalanced!520 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773)))))))))

(declare-fun bs!70154 () Bool)

(assert (= bs!70154 d!206845))

(declare-fun m!848387 () Bool)

(assert (=> bs!70154 m!848387))

(assert (=> tb!51379 d!206845))

(declare-fun b!587844 () Bool)

(declare-fun res!253275 () Bool)

(declare-fun e!355293 () Bool)

(assert (=> b!587844 (=> (not res!253275) (not e!355293))))

(declare-fun lt!249018 () List!5791)

(assert (=> b!587844 (= res!253275 (= (size!4591 lt!249018) (+ (size!4591 (t!78622 input!2705)) (size!4591 suffix!1342))))))

(declare-fun b!587842 () Bool)

(declare-fun e!355294 () List!5791)

(assert (=> b!587842 (= e!355294 suffix!1342)))

(declare-fun b!587845 () Bool)

(assert (=> b!587845 (= e!355293 (or (not (= suffix!1342 Nil!5781)) (= lt!249018 (t!78622 input!2705))))))

(declare-fun b!587843 () Bool)

(assert (=> b!587843 (= e!355294 (Cons!5781 (h!11182 (t!78622 input!2705)) (++!1619 (t!78622 (t!78622 input!2705)) suffix!1342)))))

(declare-fun d!206847 () Bool)

(assert (=> d!206847 e!355293))

(declare-fun res!253274 () Bool)

(assert (=> d!206847 (=> (not res!253274) (not e!355293))))

(assert (=> d!206847 (= res!253274 (= (content!1033 lt!249018) ((_ map or) (content!1033 (t!78622 input!2705)) (content!1033 suffix!1342))))))

(assert (=> d!206847 (= lt!249018 e!355294)))

(declare-fun c!109840 () Bool)

(assert (=> d!206847 (= c!109840 ((_ is Nil!5781) (t!78622 input!2705)))))

(assert (=> d!206847 (= (++!1619 (t!78622 input!2705) suffix!1342) lt!249018)))

(assert (= (and d!206847 c!109840) b!587842))

(assert (= (and d!206847 (not c!109840)) b!587843))

(assert (= (and d!206847 res!253274) b!587844))

(assert (= (and b!587844 res!253275) b!587845))

(declare-fun m!848389 () Bool)

(assert (=> b!587844 m!848389))

(assert (=> b!587844 m!848145))

(assert (=> b!587844 m!847555))

(declare-fun m!848391 () Bool)

(assert (=> b!587843 m!848391))

(declare-fun m!848393 () Bool)

(assert (=> d!206847 m!848393))

(declare-fun m!848395 () Bool)

(assert (=> d!206847 m!848395))

(assert (=> d!206847 m!847563))

(assert (=> b!587262 d!206847))

(declare-fun d!206849 () Bool)

(assert (=> d!206849 (= (_2!3636 (v!16356 lt!248773)) lt!248779)))

(assert (=> d!206849 true))

(declare-fun _$63!715 () Unit!10497)

(assert (=> d!206849 (= (choose!4217 lt!248768 (_2!3636 (v!16356 lt!248773)) lt!248768 lt!248779 input!2705) _$63!715)))

(assert (=> d!206465 d!206849))

(declare-fun b!587848 () Bool)

(declare-fun e!355297 () Bool)

(assert (=> b!587848 (= e!355297 (isPrefix!759 (tail!769 lt!248768) (tail!769 input!2705)))))

(declare-fun b!587849 () Bool)

(declare-fun e!355296 () Bool)

(assert (=> b!587849 (= e!355296 (>= (size!4591 input!2705) (size!4591 lt!248768)))))

(declare-fun b!587847 () Bool)

(declare-fun res!253276 () Bool)

(assert (=> b!587847 (=> (not res!253276) (not e!355297))))

(assert (=> b!587847 (= res!253276 (= (head!1240 lt!248768) (head!1240 input!2705)))))

(declare-fun b!587846 () Bool)

(declare-fun e!355295 () Bool)

(assert (=> b!587846 (= e!355295 e!355297)))

(declare-fun res!253279 () Bool)

(assert (=> b!587846 (=> (not res!253279) (not e!355297))))

(assert (=> b!587846 (= res!253279 (not ((_ is Nil!5781) input!2705)))))

(declare-fun d!206851 () Bool)

(assert (=> d!206851 e!355296))

(declare-fun res!253278 () Bool)

(assert (=> d!206851 (=> res!253278 e!355296)))

(declare-fun lt!249019 () Bool)

(assert (=> d!206851 (= res!253278 (not lt!249019))))

(assert (=> d!206851 (= lt!249019 e!355295)))

(declare-fun res!253277 () Bool)

(assert (=> d!206851 (=> res!253277 e!355295)))

(assert (=> d!206851 (= res!253277 ((_ is Nil!5781) lt!248768))))

(assert (=> d!206851 (= (isPrefix!759 lt!248768 input!2705) lt!249019)))

(assert (= (and d!206851 (not res!253277)) b!587846))

(assert (= (and b!587846 res!253279) b!587847))

(assert (= (and b!587847 res!253276) b!587848))

(assert (= (and d!206851 (not res!253278)) b!587849))

(assert (=> b!587848 m!847523))

(assert (=> b!587848 m!847457))

(assert (=> b!587848 m!847523))

(assert (=> b!587848 m!847457))

(declare-fun m!848397 () Bool)

(assert (=> b!587848 m!848397))

(assert (=> b!587849 m!847455))

(assert (=> b!587849 m!847265))

(assert (=> b!587847 m!847531))

(assert (=> b!587847 m!847515))

(assert (=> d!206465 d!206851))

(declare-fun d!206853 () Bool)

(declare-fun lt!249020 () Bool)

(assert (=> d!206853 (= lt!249020 (select (content!1032 rules!3103) (rule!1895 (_1!3636 (get!2211 lt!248882)))))))

(declare-fun e!355298 () Bool)

(assert (=> d!206853 (= lt!249020 e!355298)))

(declare-fun res!253281 () Bool)

(assert (=> d!206853 (=> (not res!253281) (not e!355298))))

(assert (=> d!206853 (= res!253281 ((_ is Cons!5782) rules!3103))))

(assert (=> d!206853 (= (contains!1361 rules!3103 (rule!1895 (_1!3636 (get!2211 lt!248882)))) lt!249020)))

(declare-fun b!587850 () Bool)

(declare-fun e!355299 () Bool)

(assert (=> b!587850 (= e!355298 e!355299)))

(declare-fun res!253280 () Bool)

(assert (=> b!587850 (=> res!253280 e!355299)))

(assert (=> b!587850 (= res!253280 (= (h!11183 rules!3103) (rule!1895 (_1!3636 (get!2211 lt!248882)))))))

(declare-fun b!587851 () Bool)

(assert (=> b!587851 (= e!355299 (contains!1361 (t!78623 rules!3103) (rule!1895 (_1!3636 (get!2211 lt!248882)))))))

(assert (= (and d!206853 res!253281) b!587850))

(assert (= (and b!587850 (not res!253280)) b!587851))

(assert (=> d!206853 m!847403))

(declare-fun m!848399 () Bool)

(assert (=> d!206853 m!848399))

(declare-fun m!848401 () Bool)

(assert (=> b!587851 m!848401))

(assert (=> b!587251 d!206853))

(assert (=> b!587251 d!206771))

(assert (=> b!587259 d!206799))

(assert (=> b!587259 d!206801))

(assert (=> b!587259 d!206757))

(declare-fun d!206855 () Bool)

(declare-fun lt!249021 () Int)

(assert (=> d!206855 (>= lt!249021 0)))

(declare-fun e!355300 () Int)

(assert (=> d!206855 (= lt!249021 e!355300)))

(declare-fun c!109841 () Bool)

(assert (=> d!206855 (= c!109841 ((_ is Nil!5781) (_2!3636 (get!2211 lt!248887))))))

(assert (=> d!206855 (= (size!4591 (_2!3636 (get!2211 lt!248887))) lt!249021)))

(declare-fun b!587852 () Bool)

(assert (=> b!587852 (= e!355300 0)))

(declare-fun b!587853 () Bool)

(assert (=> b!587853 (= e!355300 (+ 1 (size!4591 (t!78622 (_2!3636 (get!2211 lt!248887))))))))

(assert (= (and d!206855 c!109841) b!587852))

(assert (= (and d!206855 (not c!109841)) b!587853))

(declare-fun m!848403 () Bool)

(assert (=> b!587853 m!848403))

(assert (=> b!587257 d!206855))

(assert (=> b!587257 d!206757))

(declare-fun d!206857 () Bool)

(declare-fun lt!249022 () Int)

(assert (=> d!206857 (>= lt!249022 0)))

(declare-fun e!355301 () Int)

(assert (=> d!206857 (= lt!249022 e!355301)))

(declare-fun c!109842 () Bool)

(assert (=> d!206857 (= c!109842 ((_ is Nil!5781) lt!248780))))

(assert (=> d!206857 (= (size!4591 lt!248780) lt!249022)))

(declare-fun b!587854 () Bool)

(assert (=> b!587854 (= e!355301 0)))

(declare-fun b!587855 () Bool)

(assert (=> b!587855 (= e!355301 (+ 1 (size!4591 (t!78622 lt!248780))))))

(assert (= (and d!206857 c!109842) b!587854))

(assert (= (and d!206857 (not c!109842)) b!587855))

(declare-fun m!848405 () Bool)

(assert (=> b!587855 m!848405))

(assert (=> b!587257 d!206857))

(assert (=> b!587249 d!206771))

(declare-fun d!206859 () Bool)

(assert (=> d!206859 (= (apply!1386 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248882))))) (dynLambda!3380 (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882))))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248882))))))))

(declare-fun b_lambda!23153 () Bool)

(assert (=> (not b_lambda!23153) (not d!206859)))

(declare-fun tb!51453 () Bool)

(declare-fun t!78707 () Bool)

(assert (=> (and b!586978 (= (toValue!2010 (transformation!1131 (rule!1895 token!491))) (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))) t!78707) tb!51453))

(declare-fun result!57658 () Bool)

(assert (=> tb!51453 (= result!57658 (inv!21 (dynLambda!3380 (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882))))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248882)))))))))

(declare-fun m!848407 () Bool)

(assert (=> tb!51453 m!848407))

(assert (=> d!206859 t!78707))

(declare-fun b_and!57913 () Bool)

(assert (= b_and!57895 (and (=> t!78707 result!57658) b_and!57913)))

(declare-fun t!78709 () Bool)

(declare-fun tb!51455 () Bool)

(assert (=> (and b!586979 (= (toValue!2010 (transformation!1131 (h!11183 rules!3103))) (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))) t!78709) tb!51455))

(declare-fun result!57660 () Bool)

(assert (= result!57660 result!57658))

(assert (=> d!206859 t!78709))

(declare-fun b_and!57915 () Bool)

(assert (= b_and!57897 (and (=> t!78709 result!57660) b_and!57915)))

(declare-fun t!78711 () Bool)

(declare-fun tb!51457 () Bool)

(assert (=> (and b!587307 (= (toValue!2010 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))) t!78711) tb!51457))

(declare-fun result!57662 () Bool)

(assert (= result!57662 result!57658))

(assert (=> d!206859 t!78711))

(declare-fun b_and!57917 () Bool)

(assert (= b_and!57899 (and (=> t!78711 result!57662) b_and!57917)))

(assert (=> d!206859 m!847585))

(declare-fun m!848409 () Bool)

(assert (=> d!206859 m!848409))

(assert (=> b!587249 d!206859))

(declare-fun d!206861 () Bool)

(assert (=> d!206861 (= (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!248882)))) (fromListB!574 (originalCharacters!1170 (_1!3636 (get!2211 lt!248882)))))))

(declare-fun bs!70155 () Bool)

(assert (= bs!70155 d!206861))

(declare-fun m!848411 () Bool)

(assert (=> bs!70155 m!848411))

(assert (=> b!587249 d!206861))

(declare-fun b!587858 () Bool)

(declare-fun e!355305 () Bool)

(assert (=> b!587858 (= e!355305 (isPrefix!759 (tail!769 (tail!769 lt!248768)) (tail!769 (tail!769 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))))))))

(declare-fun b!587859 () Bool)

(declare-fun e!355304 () Bool)

(assert (=> b!587859 (= e!355304 (>= (size!4591 (tail!769 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773))))) (size!4591 (tail!769 lt!248768))))))

(declare-fun b!587857 () Bool)

(declare-fun res!253282 () Bool)

(assert (=> b!587857 (=> (not res!253282) (not e!355305))))

(assert (=> b!587857 (= res!253282 (= (head!1240 (tail!769 lt!248768)) (head!1240 (tail!769 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))))))))

(declare-fun b!587856 () Bool)

(declare-fun e!355303 () Bool)

(assert (=> b!587856 (= e!355303 e!355305)))

(declare-fun res!253285 () Bool)

(assert (=> b!587856 (=> (not res!253285) (not e!355305))))

(assert (=> b!587856 (= res!253285 (not ((_ is Nil!5781) (tail!769 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))))))))

(declare-fun d!206863 () Bool)

(assert (=> d!206863 e!355304))

(declare-fun res!253284 () Bool)

(assert (=> d!206863 (=> res!253284 e!355304)))

(declare-fun lt!249023 () Bool)

(assert (=> d!206863 (= res!253284 (not lt!249023))))

(assert (=> d!206863 (= lt!249023 e!355303)))

(declare-fun res!253283 () Bool)

(assert (=> d!206863 (=> res!253283 e!355303)))

(assert (=> d!206863 (= res!253283 ((_ is Nil!5781) (tail!769 lt!248768)))))

(assert (=> d!206863 (= (isPrefix!759 (tail!769 lt!248768) (tail!769 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773))))) lt!249023)))

(assert (= (and d!206863 (not res!253283)) b!587856))

(assert (= (and b!587856 res!253285) b!587857))

(assert (= (and b!587857 res!253282) b!587858))

(assert (= (and d!206863 (not res!253284)) b!587859))

(assert (=> b!587858 m!847523))

(declare-fun m!848413 () Bool)

(assert (=> b!587858 m!848413))

(assert (=> b!587858 m!847525))

(declare-fun m!848415 () Bool)

(assert (=> b!587858 m!848415))

(assert (=> b!587858 m!848413))

(assert (=> b!587858 m!848415))

(declare-fun m!848417 () Bool)

(assert (=> b!587858 m!848417))

(assert (=> b!587859 m!847525))

(declare-fun m!848419 () Bool)

(assert (=> b!587859 m!848419))

(assert (=> b!587859 m!847523))

(declare-fun m!848421 () Bool)

(assert (=> b!587859 m!848421))

(assert (=> b!587857 m!847523))

(declare-fun m!848423 () Bool)

(assert (=> b!587857 m!848423))

(assert (=> b!587857 m!847525))

(declare-fun m!848425 () Bool)

(assert (=> b!587857 m!848425))

(assert (=> b!587204 d!206863))

(declare-fun d!206865 () Bool)

(assert (=> d!206865 (= (tail!769 lt!248768) (t!78622 lt!248768))))

(assert (=> b!587204 d!206865))

(declare-fun d!206867 () Bool)

(assert (=> d!206867 (= (tail!769 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))) (t!78622 (++!1619 lt!248768 (_2!3636 (v!16356 lt!248773)))))))

(assert (=> b!587204 d!206867))

(declare-fun d!206869 () Bool)

(assert (=> d!206869 (= (list!2412 lt!248890) (list!2414 (c!109682 lt!248890)))))

(declare-fun bs!70156 () Bool)

(assert (= bs!70156 d!206869))

(declare-fun m!848427 () Bool)

(assert (=> bs!70156 m!848427))

(assert (=> d!206529 d!206869))

(declare-fun d!206871 () Bool)

(declare-fun c!109843 () Bool)

(assert (=> d!206871 (= c!109843 ((_ is Nil!5781) lt!248867))))

(declare-fun e!355306 () (InoxSet C!3852))

(assert (=> d!206871 (= (content!1033 lt!248867) e!355306)))

(declare-fun b!587860 () Bool)

(assert (=> b!587860 (= e!355306 ((as const (Array C!3852 Bool)) false))))

(declare-fun b!587861 () Bool)

(assert (=> b!587861 (= e!355306 ((_ map or) (store ((as const (Array C!3852 Bool)) false) (h!11182 lt!248867) true) (content!1033 (t!78622 lt!248867))))))

(assert (= (and d!206871 c!109843) b!587860))

(assert (= (and d!206871 (not c!109843)) b!587861))

(declare-fun m!848429 () Bool)

(assert (=> b!587861 m!848429))

(declare-fun m!848431 () Bool)

(assert (=> b!587861 m!848431))

(assert (=> d!206507 d!206871))

(declare-fun d!206873 () Bool)

(declare-fun c!109844 () Bool)

(assert (=> d!206873 (= c!109844 ((_ is Nil!5781) lt!248768))))

(declare-fun e!355307 () (InoxSet C!3852))

(assert (=> d!206873 (= (content!1033 lt!248768) e!355307)))

(declare-fun b!587862 () Bool)

(assert (=> b!587862 (= e!355307 ((as const (Array C!3852 Bool)) false))))

(declare-fun b!587863 () Bool)

(assert (=> b!587863 (= e!355307 ((_ map or) (store ((as const (Array C!3852 Bool)) false) (h!11182 lt!248768) true) (content!1033 (t!78622 lt!248768))))))

(assert (= (and d!206873 c!109844) b!587862))

(assert (= (and d!206873 (not c!109844)) b!587863))

(declare-fun m!848433 () Bool)

(assert (=> b!587863 m!848433))

(assert (=> b!587863 m!848133))

(assert (=> d!206507 d!206873))

(declare-fun d!206875 () Bool)

(declare-fun c!109845 () Bool)

(assert (=> d!206875 (= c!109845 ((_ is Nil!5781) (_2!3636 (v!16356 lt!248773))))))

(declare-fun e!355308 () (InoxSet C!3852))

(assert (=> d!206875 (= (content!1033 (_2!3636 (v!16356 lt!248773))) e!355308)))

(declare-fun b!587864 () Bool)

(assert (=> b!587864 (= e!355308 ((as const (Array C!3852 Bool)) false))))

(declare-fun b!587865 () Bool)

(assert (=> b!587865 (= e!355308 ((_ map or) (store ((as const (Array C!3852 Bool)) false) (h!11182 (_2!3636 (v!16356 lt!248773))) true) (content!1033 (t!78622 (_2!3636 (v!16356 lt!248773))))))))

(assert (= (and d!206875 c!109845) b!587864))

(assert (= (and d!206875 (not c!109845)) b!587865))

(declare-fun m!848435 () Bool)

(assert (=> b!587865 m!848435))

(declare-fun m!848437 () Bool)

(assert (=> b!587865 m!848437))

(assert (=> d!206507 d!206875))

(declare-fun b!587866 () Bool)

(declare-fun e!355311 () Bool)

(assert (=> b!587866 (= e!355311 (matchR!602 (regex!1131 (h!11183 rules!3103)) (_1!3638 (findLongestMatchInner!185 (regex!1131 (h!11183 rules!3103)) Nil!5781 (size!4591 Nil!5781) input!2705 input!2705 (size!4591 input!2705)))))))

(declare-fun b!587867 () Bool)

(declare-fun e!355312 () Bool)

(declare-fun e!355309 () Bool)

(assert (=> b!587867 (= e!355312 e!355309)))

(declare-fun res!253290 () Bool)

(assert (=> b!587867 (=> (not res!253290) (not e!355309))))

(declare-fun lt!249028 () Option!1482)

(assert (=> b!587867 (= res!253290 (matchR!602 (regex!1131 (h!11183 rules!3103)) (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!249028))))))))

(declare-fun b!587868 () Bool)

(declare-fun e!355310 () Option!1482)

(assert (=> b!587868 (= e!355310 None!1481)))

(declare-fun b!587870 () Bool)

(declare-fun lt!249025 () tuple2!6748)

(assert (=> b!587870 (= e!355310 (Some!1481 (tuple2!6745 (Token!1999 (apply!1386 (transformation!1131 (h!11183 rules!3103)) (seqFromList!1309 (_1!3638 lt!249025))) (h!11183 rules!3103) (size!4593 (seqFromList!1309 (_1!3638 lt!249025))) (_1!3638 lt!249025)) (_2!3638 lt!249025))))))

(declare-fun lt!249024 () Unit!10497)

(assert (=> b!587870 (= lt!249024 (longestMatchIsAcceptedByMatchOrIsEmpty!169 (regex!1131 (h!11183 rules!3103)) input!2705))))

(declare-fun res!253289 () Bool)

(assert (=> b!587870 (= res!253289 (isEmpty!4173 (_1!3638 (findLongestMatchInner!185 (regex!1131 (h!11183 rules!3103)) Nil!5781 (size!4591 Nil!5781) input!2705 input!2705 (size!4591 input!2705)))))))

(assert (=> b!587870 (=> res!253289 e!355311)))

(assert (=> b!587870 e!355311))

(declare-fun lt!249027 () Unit!10497)

(assert (=> b!587870 (= lt!249027 lt!249024)))

(declare-fun lt!249026 () Unit!10497)

(assert (=> b!587870 (= lt!249026 (lemmaSemiInverse!222 (transformation!1131 (h!11183 rules!3103)) (seqFromList!1309 (_1!3638 lt!249025))))))

(declare-fun b!587871 () Bool)

(declare-fun res!253292 () Bool)

(assert (=> b!587871 (=> (not res!253292) (not e!355309))))

(assert (=> b!587871 (= res!253292 (= (rule!1895 (_1!3636 (get!2211 lt!249028))) (h!11183 rules!3103)))))

(declare-fun b!587872 () Bool)

(declare-fun res!253291 () Bool)

(assert (=> b!587872 (=> (not res!253291) (not e!355309))))

(assert (=> b!587872 (= res!253291 (= (value!37100 (_1!3636 (get!2211 lt!249028))) (apply!1386 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!249028)))) (seqFromList!1309 (originalCharacters!1170 (_1!3636 (get!2211 lt!249028)))))))))

(declare-fun b!587873 () Bool)

(declare-fun res!253288 () Bool)

(assert (=> b!587873 (=> (not res!253288) (not e!355309))))

(assert (=> b!587873 (= res!253288 (< (size!4591 (_2!3636 (get!2211 lt!249028))) (size!4591 input!2705)))))

(declare-fun b!587874 () Bool)

(assert (=> b!587874 (= e!355309 (= (size!4590 (_1!3636 (get!2211 lt!249028))) (size!4591 (originalCharacters!1170 (_1!3636 (get!2211 lt!249028))))))))

(declare-fun d!206877 () Bool)

(assert (=> d!206877 e!355312))

(declare-fun res!253287 () Bool)

(assert (=> d!206877 (=> res!253287 e!355312)))

(assert (=> d!206877 (= res!253287 (isEmpty!4176 lt!249028))))

(assert (=> d!206877 (= lt!249028 e!355310)))

(declare-fun c!109846 () Bool)

(assert (=> d!206877 (= c!109846 (isEmpty!4173 (_1!3638 lt!249025)))))

(assert (=> d!206877 (= lt!249025 (findLongestMatch!164 (regex!1131 (h!11183 rules!3103)) input!2705))))

(assert (=> d!206877 (ruleValid!329 thiss!22590 (h!11183 rules!3103))))

(assert (=> d!206877 (= (maxPrefixOneRule!406 thiss!22590 (h!11183 rules!3103) input!2705) lt!249028)))

(declare-fun b!587869 () Bool)

(declare-fun res!253286 () Bool)

(assert (=> b!587869 (=> (not res!253286) (not e!355309))))

(assert (=> b!587869 (= res!253286 (= (++!1619 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!249028)))) (_2!3636 (get!2211 lt!249028))) input!2705))))

(assert (= (and d!206877 c!109846) b!587868))

(assert (= (and d!206877 (not c!109846)) b!587870))

(assert (= (and b!587870 (not res!253289)) b!587866))

(assert (= (and d!206877 (not res!253287)) b!587867))

(assert (= (and b!587867 res!253290) b!587869))

(assert (= (and b!587869 res!253286) b!587873))

(assert (= (and b!587873 res!253288) b!587871))

(assert (= (and b!587871 res!253292) b!587872))

(assert (= (and b!587872 res!253291) b!587874))

(declare-fun m!848439 () Bool)

(assert (=> b!587870 m!848439))

(declare-fun m!848441 () Bool)

(assert (=> b!587870 m!848441))

(assert (=> b!587870 m!848439))

(declare-fun m!848443 () Bool)

(assert (=> b!587870 m!848443))

(assert (=> b!587870 m!848439))

(declare-fun m!848445 () Bool)

(assert (=> b!587870 m!848445))

(assert (=> b!587870 m!848187))

(assert (=> b!587870 m!848439))

(declare-fun m!848447 () Bool)

(assert (=> b!587870 m!848447))

(declare-fun m!848449 () Bool)

(assert (=> b!587870 m!848449))

(assert (=> b!587870 m!848187))

(assert (=> b!587870 m!847455))

(declare-fun m!848451 () Bool)

(assert (=> b!587870 m!848451))

(assert (=> b!587870 m!847455))

(declare-fun m!848453 () Bool)

(assert (=> b!587874 m!848453))

(declare-fun m!848455 () Bool)

(assert (=> b!587874 m!848455))

(assert (=> b!587872 m!848453))

(declare-fun m!848457 () Bool)

(assert (=> b!587872 m!848457))

(assert (=> b!587872 m!848457))

(declare-fun m!848459 () Bool)

(assert (=> b!587872 m!848459))

(declare-fun m!848461 () Bool)

(assert (=> d!206877 m!848461))

(declare-fun m!848463 () Bool)

(assert (=> d!206877 m!848463))

(declare-fun m!848465 () Bool)

(assert (=> d!206877 m!848465))

(assert (=> d!206877 m!848209))

(assert (=> b!587866 m!848187))

(assert (=> b!587866 m!847455))

(assert (=> b!587866 m!848187))

(assert (=> b!587866 m!847455))

(assert (=> b!587866 m!848451))

(declare-fun m!848467 () Bool)

(assert (=> b!587866 m!848467))

(assert (=> b!587873 m!848453))

(declare-fun m!848469 () Bool)

(assert (=> b!587873 m!848469))

(assert (=> b!587873 m!847455))

(assert (=> b!587869 m!848453))

(declare-fun m!848471 () Bool)

(assert (=> b!587869 m!848471))

(assert (=> b!587869 m!848471))

(declare-fun m!848473 () Bool)

(assert (=> b!587869 m!848473))

(assert (=> b!587869 m!848473))

(declare-fun m!848475 () Bool)

(assert (=> b!587869 m!848475))

(assert (=> b!587871 m!848453))

(assert (=> b!587867 m!848453))

(assert (=> b!587867 m!848471))

(assert (=> b!587867 m!848471))

(assert (=> b!587867 m!848473))

(assert (=> b!587867 m!848473))

(declare-fun m!848477 () Bool)

(assert (=> b!587867 m!848477))

(assert (=> bm!40227 d!206877))

(declare-fun b!587877 () Bool)

(declare-fun res!253294 () Bool)

(declare-fun e!355313 () Bool)

(assert (=> b!587877 (=> (not res!253294) (not e!355313))))

(declare-fun lt!249029 () List!5791)

(assert (=> b!587877 (= res!253294 (= (size!4591 lt!249029) (+ (size!4591 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))) (size!4591 (_2!3636 (get!2211 lt!248887))))))))

(declare-fun b!587875 () Bool)

(declare-fun e!355314 () List!5791)

(assert (=> b!587875 (= e!355314 (_2!3636 (get!2211 lt!248887)))))

(declare-fun b!587878 () Bool)

(assert (=> b!587878 (= e!355313 (or (not (= (_2!3636 (get!2211 lt!248887)) Nil!5781)) (= lt!249029 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887)))))))))

(declare-fun b!587876 () Bool)

(assert (=> b!587876 (= e!355314 (Cons!5781 (h!11182 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))) (++!1619 (t!78622 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))) (_2!3636 (get!2211 lt!248887)))))))

(declare-fun d!206879 () Bool)

(assert (=> d!206879 e!355313))

(declare-fun res!253293 () Bool)

(assert (=> d!206879 (=> (not res!253293) (not e!355313))))

(assert (=> d!206879 (= res!253293 (= (content!1033 lt!249029) ((_ map or) (content!1033 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))) (content!1033 (_2!3636 (get!2211 lt!248887))))))))

(assert (=> d!206879 (= lt!249029 e!355314)))

(declare-fun c!109847 () Bool)

(assert (=> d!206879 (= c!109847 ((_ is Nil!5781) (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887))))))))

(assert (=> d!206879 (= (++!1619 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248887)))) (_2!3636 (get!2211 lt!248887))) lt!249029)))

(assert (= (and d!206879 c!109847) b!587875))

(assert (= (and d!206879 (not c!109847)) b!587876))

(assert (= (and d!206879 res!253293) b!587877))

(assert (= (and b!587877 res!253294) b!587878))

(declare-fun m!848479 () Bool)

(assert (=> b!587877 m!848479))

(assert (=> b!587877 m!847611))

(declare-fun m!848481 () Bool)

(assert (=> b!587877 m!848481))

(assert (=> b!587877 m!847605))

(declare-fun m!848483 () Bool)

(assert (=> b!587876 m!848483))

(declare-fun m!848485 () Bool)

(assert (=> d!206879 m!848485))

(assert (=> d!206879 m!847611))

(declare-fun m!848487 () Bool)

(assert (=> d!206879 m!848487))

(declare-fun m!848489 () Bool)

(assert (=> d!206879 m!848489))

(assert (=> b!587256 d!206879))

(assert (=> b!587256 d!206799))

(assert (=> b!587256 d!206801))

(assert (=> b!587256 d!206757))

(declare-fun d!206881 () Bool)

(declare-fun c!109848 () Bool)

(assert (=> d!206881 (= c!109848 ((_ is Node!1848) (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773)))))))))

(declare-fun e!355315 () Bool)

(assert (=> d!206881 (= (inv!7307 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773)))))) e!355315)))

(declare-fun b!587879 () Bool)

(assert (=> b!587879 (= e!355315 (inv!7311 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773)))))))))

(declare-fun b!587880 () Bool)

(declare-fun e!355316 () Bool)

(assert (=> b!587880 (= e!355315 e!355316)))

(declare-fun res!253295 () Bool)

(assert (=> b!587880 (= res!253295 (not ((_ is Leaf!2921) (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773))))))))))

(assert (=> b!587880 (=> res!253295 e!355316)))

(declare-fun b!587881 () Bool)

(assert (=> b!587881 (= e!355316 (inv!7312 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773)))))))))

(assert (= (and d!206881 c!109848) b!587879))

(assert (= (and d!206881 (not c!109848)) b!587880))

(assert (= (and b!587880 (not res!253295)) b!587881))

(declare-fun m!848491 () Bool)

(assert (=> b!587879 m!848491))

(declare-fun m!848493 () Bool)

(assert (=> b!587881 m!848493))

(assert (=> b!587081 d!206881))

(declare-fun d!206883 () Bool)

(assert (=> d!206883 (= (isDefined!1293 lt!248887) (not (isEmpty!4176 lt!248887)))))

(declare-fun bs!70157 () Bool)

(assert (= bs!70157 d!206883))

(assert (=> bs!70157 m!847623))

(assert (=> b!587254 d!206883))

(declare-fun b!587882 () Bool)

(declare-fun e!355322 () Bool)

(assert (=> b!587882 (= e!355322 (nullable!401 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248882))))))))

(declare-fun b!587883 () Bool)

(declare-fun res!253298 () Bool)

(declare-fun e!355321 () Bool)

(assert (=> b!587883 (=> (not res!253298) (not e!355321))))

(assert (=> b!587883 (= res!253298 (isEmpty!4173 (tail!769 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882)))))))))

(declare-fun b!587884 () Bool)

(assert (=> b!587884 (= e!355322 (matchR!602 (derivativeStep!314 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))) (head!1240 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882)))))) (tail!769 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882)))))))))

(declare-fun b!587885 () Bool)

(declare-fun res!253301 () Bool)

(declare-fun e!355318 () Bool)

(assert (=> b!587885 (=> res!253301 e!355318)))

(assert (=> b!587885 (= res!253301 (not (isEmpty!4173 (tail!769 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))))))))

(declare-fun d!206885 () Bool)

(declare-fun e!355320 () Bool)

(assert (=> d!206885 e!355320))

(declare-fun c!109849 () Bool)

(assert (=> d!206885 (= c!109849 ((_ is EmptyExpr!1465) (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248882))))))))

(declare-fun lt!249030 () Bool)

(assert (=> d!206885 (= lt!249030 e!355322)))

(declare-fun c!109850 () Bool)

(assert (=> d!206885 (= c!109850 (isEmpty!4173 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))))))

(assert (=> d!206885 (validRegex!496 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))))

(assert (=> d!206885 (= (matchR!602 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))) (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))) lt!249030)))

(declare-fun b!587886 () Bool)

(declare-fun call!40245 () Bool)

(assert (=> b!587886 (= e!355320 (= lt!249030 call!40245))))

(declare-fun b!587887 () Bool)

(declare-fun res!253296 () Bool)

(declare-fun e!355323 () Bool)

(assert (=> b!587887 (=> res!253296 e!355323)))

(assert (=> b!587887 (= res!253296 (not ((_ is ElementMatch!1465) (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))))))

(declare-fun e!355317 () Bool)

(assert (=> b!587887 (= e!355317 e!355323)))

(declare-fun b!587888 () Bool)

(declare-fun res!253303 () Bool)

(assert (=> b!587888 (=> (not res!253303) (not e!355321))))

(assert (=> b!587888 (= res!253303 (not call!40245))))

(declare-fun b!587889 () Bool)

(assert (=> b!587889 (= e!355317 (not lt!249030))))

(declare-fun b!587890 () Bool)

(declare-fun res!253300 () Bool)

(assert (=> b!587890 (=> res!253300 e!355323)))

(assert (=> b!587890 (= res!253300 e!355321)))

(declare-fun res!253297 () Bool)

(assert (=> b!587890 (=> (not res!253297) (not e!355321))))

(assert (=> b!587890 (= res!253297 lt!249030)))

(declare-fun b!587891 () Bool)

(assert (=> b!587891 (= e!355321 (= (head!1240 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))) (c!109681 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))))))

(declare-fun b!587892 () Bool)

(declare-fun e!355319 () Bool)

(assert (=> b!587892 (= e!355319 e!355318)))

(declare-fun res!253302 () Bool)

(assert (=> b!587892 (=> res!253302 e!355318)))

(assert (=> b!587892 (= res!253302 call!40245)))

(declare-fun bm!40240 () Bool)

(assert (=> bm!40240 (= call!40245 (isEmpty!4173 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))))))

(declare-fun b!587893 () Bool)

(assert (=> b!587893 (= e!355320 e!355317)))

(declare-fun c!109851 () Bool)

(assert (=> b!587893 (= c!109851 ((_ is EmptyLang!1465) (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248882))))))))

(declare-fun b!587894 () Bool)

(assert (=> b!587894 (= e!355323 e!355319)))

(declare-fun res!253299 () Bool)

(assert (=> b!587894 (=> (not res!253299) (not e!355319))))

(assert (=> b!587894 (= res!253299 (not lt!249030))))

(declare-fun b!587895 () Bool)

(assert (=> b!587895 (= e!355318 (not (= (head!1240 (list!2412 (charsOf!760 (_1!3636 (get!2211 lt!248882))))) (c!109681 (regex!1131 (rule!1895 (_1!3636 (get!2211 lt!248882))))))))))

(assert (= (and d!206885 c!109850) b!587882))

(assert (= (and d!206885 (not c!109850)) b!587884))

(assert (= (and d!206885 c!109849) b!587886))

(assert (= (and d!206885 (not c!109849)) b!587893))

(assert (= (and b!587893 c!109851) b!587889))

(assert (= (and b!587893 (not c!109851)) b!587887))

(assert (= (and b!587887 (not res!253296)) b!587890))

(assert (= (and b!587890 res!253297) b!587888))

(assert (= (and b!587888 res!253303) b!587883))

(assert (= (and b!587883 res!253298) b!587891))

(assert (= (and b!587890 (not res!253300)) b!587894))

(assert (= (and b!587894 res!253299) b!587892))

(assert (= (and b!587892 (not res!253302)) b!587885))

(assert (= (and b!587885 (not res!253301)) b!587895))

(assert (= (or b!587886 b!587888 b!587892) bm!40240))

(assert (=> bm!40240 m!847579))

(declare-fun m!848495 () Bool)

(assert (=> bm!40240 m!848495))

(assert (=> b!587891 m!847579))

(declare-fun m!848497 () Bool)

(assert (=> b!587891 m!848497))

(assert (=> b!587884 m!847579))

(assert (=> b!587884 m!848497))

(assert (=> b!587884 m!848497))

(declare-fun m!848499 () Bool)

(assert (=> b!587884 m!848499))

(assert (=> b!587884 m!847579))

(declare-fun m!848501 () Bool)

(assert (=> b!587884 m!848501))

(assert (=> b!587884 m!848499))

(assert (=> b!587884 m!848501))

(declare-fun m!848503 () Bool)

(assert (=> b!587884 m!848503))

(assert (=> b!587895 m!847579))

(assert (=> b!587895 m!848497))

(declare-fun m!848505 () Bool)

(assert (=> b!587882 m!848505))

(assert (=> b!587885 m!847579))

(assert (=> b!587885 m!848501))

(assert (=> b!587885 m!848501))

(declare-fun m!848507 () Bool)

(assert (=> b!587885 m!848507))

(assert (=> b!587883 m!847579))

(assert (=> b!587883 m!848501))

(assert (=> b!587883 m!848501))

(assert (=> b!587883 m!848507))

(assert (=> d!206885 m!847579))

(assert (=> d!206885 m!848495))

(declare-fun m!848509 () Bool)

(assert (=> d!206885 m!848509))

(assert (=> b!587246 d!206885))

(assert (=> b!587246 d!206771))

(assert (=> b!587246 d!206767))

(assert (=> b!587246 d!206769))

(declare-fun d!206887 () Bool)

(declare-fun c!109852 () Bool)

(assert (=> d!206887 (= c!109852 ((_ is Nil!5781) lt!248889))))

(declare-fun e!355324 () (InoxSet C!3852))

(assert (=> d!206887 (= (content!1033 lt!248889) e!355324)))

(declare-fun b!587896 () Bool)

(assert (=> b!587896 (= e!355324 ((as const (Array C!3852 Bool)) false))))

(declare-fun b!587897 () Bool)

(assert (=> b!587897 (= e!355324 ((_ map or) (store ((as const (Array C!3852 Bool)) false) (h!11182 lt!248889) true) (content!1033 (t!78622 lt!248889))))))

(assert (= (and d!206887 c!109852) b!587896))

(assert (= (and d!206887 (not c!109852)) b!587897))

(declare-fun m!848511 () Bool)

(assert (=> b!587897 m!848511))

(declare-fun m!848513 () Bool)

(assert (=> b!587897 m!848513))

(assert (=> d!206525 d!206887))

(declare-fun d!206889 () Bool)

(declare-fun c!109853 () Bool)

(assert (=> d!206889 (= c!109853 ((_ is Nil!5781) input!2705))))

(declare-fun e!355325 () (InoxSet C!3852))

(assert (=> d!206889 (= (content!1033 input!2705) e!355325)))

(declare-fun b!587898 () Bool)

(assert (=> b!587898 (= e!355325 ((as const (Array C!3852 Bool)) false))))

(declare-fun b!587899 () Bool)

(assert (=> b!587899 (= e!355325 ((_ map or) (store ((as const (Array C!3852 Bool)) false) (h!11182 input!2705) true) (content!1033 (t!78622 input!2705))))))

(assert (= (and d!206889 c!109853) b!587898))

(assert (= (and d!206889 (not c!109853)) b!587899))

(declare-fun m!848515 () Bool)

(assert (=> b!587899 m!848515))

(assert (=> b!587899 m!848395))

(assert (=> d!206525 d!206889))

(assert (=> d!206525 d!206839))

(declare-fun bs!70158 () Bool)

(declare-fun d!206891 () Bool)

(assert (= bs!70158 (and d!206891 d!206819)))

(declare-fun lambda!15922 () Int)

(assert (=> bs!70158 (= (and (= (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toChars!1869 (transformation!1131 (rule!1895 token!491)))) (= (toValue!2010 (transformation!1131 (h!11183 rules!3103))) (toValue!2010 (transformation!1131 (rule!1895 token!491))))) (= lambda!15922 lambda!15921))))

(assert (=> d!206891 true))

(assert (=> d!206891 (< (dynLambda!3381 order!4735 (toChars!1869 (transformation!1131 (h!11183 rules!3103)))) (dynLambda!3382 order!4737 lambda!15922))))

(assert (=> d!206891 true))

(assert (=> d!206891 (< (dynLambda!3378 order!4731 (toValue!2010 (transformation!1131 (h!11183 rules!3103)))) (dynLambda!3382 order!4737 lambda!15922))))

(assert (=> d!206891 (= (semiInverseModEq!441 (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toValue!2010 (transformation!1131 (h!11183 rules!3103)))) (Forall!294 lambda!15922))))

(declare-fun bs!70159 () Bool)

(assert (= bs!70159 d!206891))

(declare-fun m!848517 () Bool)

(assert (=> bs!70159 m!848517))

(assert (=> d!206515 d!206891))

(declare-fun b!587902 () Bool)

(declare-fun e!355328 () Bool)

(assert (=> b!587902 (= e!355328 (isPrefix!759 (tail!769 (tail!769 input!2705)) (tail!769 (tail!769 input!2705))))))

(declare-fun b!587903 () Bool)

(declare-fun e!355327 () Bool)

(assert (=> b!587903 (= e!355327 (>= (size!4591 (tail!769 input!2705)) (size!4591 (tail!769 input!2705))))))

(declare-fun b!587901 () Bool)

(declare-fun res!253304 () Bool)

(assert (=> b!587901 (=> (not res!253304) (not e!355328))))

(assert (=> b!587901 (= res!253304 (= (head!1240 (tail!769 input!2705)) (head!1240 (tail!769 input!2705))))))

(declare-fun b!587900 () Bool)

(declare-fun e!355326 () Bool)

(assert (=> b!587900 (= e!355326 e!355328)))

(declare-fun res!253307 () Bool)

(assert (=> b!587900 (=> (not res!253307) (not e!355328))))

(assert (=> b!587900 (= res!253307 (not ((_ is Nil!5781) (tail!769 input!2705))))))

(declare-fun d!206893 () Bool)

(assert (=> d!206893 e!355327))

(declare-fun res!253306 () Bool)

(assert (=> d!206893 (=> res!253306 e!355327)))

(declare-fun lt!249031 () Bool)

(assert (=> d!206893 (= res!253306 (not lt!249031))))

(assert (=> d!206893 (= lt!249031 e!355326)))

(declare-fun res!253305 () Bool)

(assert (=> d!206893 (=> res!253305 e!355326)))

(assert (=> d!206893 (= res!253305 ((_ is Nil!5781) (tail!769 input!2705)))))

(assert (=> d!206893 (= (isPrefix!759 (tail!769 input!2705) (tail!769 input!2705)) lt!249031)))

(assert (= (and d!206893 (not res!253305)) b!587900))

(assert (= (and b!587900 res!253307) b!587901))

(assert (= (and b!587901 res!253304) b!587902))

(assert (= (and d!206893 (not res!253306)) b!587903))

(assert (=> b!587902 m!847457))

(assert (=> b!587902 m!848123))

(assert (=> b!587902 m!847457))

(assert (=> b!587902 m!848123))

(assert (=> b!587902 m!848123))

(assert (=> b!587902 m!848123))

(declare-fun m!848519 () Bool)

(assert (=> b!587902 m!848519))

(assert (=> b!587903 m!847457))

(assert (=> b!587903 m!848121))

(assert (=> b!587903 m!847457))

(assert (=> b!587903 m!848121))

(assert (=> b!587901 m!847457))

(declare-fun m!848521 () Bool)

(assert (=> b!587901 m!848521))

(assert (=> b!587901 m!847457))

(assert (=> b!587901 m!848521))

(assert (=> b!587179 d!206893))

(assert (=> b!587179 d!206735))

(declare-fun d!206895 () Bool)

(declare-fun lt!249032 () Int)

(assert (=> d!206895 (>= lt!249032 0)))

(declare-fun e!355329 () Int)

(assert (=> d!206895 (= lt!249032 e!355329)))

(declare-fun c!109854 () Bool)

(assert (=> d!206895 (= c!109854 ((_ is Nil!5781) (originalCharacters!1170 (_1!3636 (v!16356 lt!248773)))))))

(assert (=> d!206895 (= (size!4591 (originalCharacters!1170 (_1!3636 (v!16356 lt!248773)))) lt!249032)))

(declare-fun b!587904 () Bool)

(assert (=> b!587904 (= e!355329 0)))

(declare-fun b!587905 () Bool)

(assert (=> b!587905 (= e!355329 (+ 1 (size!4591 (t!78622 (originalCharacters!1170 (_1!3636 (v!16356 lt!248773)))))))))

(assert (= (and d!206895 c!109854) b!587904))

(assert (= (and d!206895 (not c!109854)) b!587905))

(declare-fun m!848523 () Bool)

(assert (=> b!587905 m!848523))

(assert (=> d!206463 d!206895))

(declare-fun b!587909 () Bool)

(declare-fun e!355330 () Bool)

(declare-fun tp!183305 () Bool)

(declare-fun tp!183302 () Bool)

(assert (=> b!587909 (= e!355330 (and tp!183305 tp!183302))))

(declare-fun b!587908 () Bool)

(declare-fun tp!183304 () Bool)

(assert (=> b!587908 (= e!355330 tp!183304)))

(assert (=> b!587306 (= tp!183222 e!355330)))

(declare-fun b!587907 () Bool)

(declare-fun tp!183303 () Bool)

(declare-fun tp!183301 () Bool)

(assert (=> b!587907 (= e!355330 (and tp!183303 tp!183301))))

(declare-fun b!587906 () Bool)

(assert (=> b!587906 (= e!355330 tp_is_empty!3285)))

(assert (= (and b!587306 ((_ is ElementMatch!1465) (regex!1131 (h!11183 (t!78623 rules!3103))))) b!587906))

(assert (= (and b!587306 ((_ is Concat!2620) (regex!1131 (h!11183 (t!78623 rules!3103))))) b!587907))

(assert (= (and b!587306 ((_ is Star!1465) (regex!1131 (h!11183 (t!78623 rules!3103))))) b!587908))

(assert (= (and b!587306 ((_ is Union!1465) (regex!1131 (h!11183 (t!78623 rules!3103))))) b!587909))

(declare-fun b!587913 () Bool)

(declare-fun e!355331 () Bool)

(declare-fun tp!183310 () Bool)

(declare-fun tp!183307 () Bool)

(assert (=> b!587913 (= e!355331 (and tp!183310 tp!183307))))

(declare-fun b!587912 () Bool)

(declare-fun tp!183309 () Bool)

(assert (=> b!587912 (= e!355331 tp!183309)))

(assert (=> b!587293 (= tp!183207 e!355331)))

(declare-fun b!587911 () Bool)

(declare-fun tp!183308 () Bool)

(declare-fun tp!183306 () Bool)

(assert (=> b!587911 (= e!355331 (and tp!183308 tp!183306))))

(declare-fun b!587910 () Bool)

(assert (=> b!587910 (= e!355331 tp_is_empty!3285)))

(assert (= (and b!587293 ((_ is ElementMatch!1465) (regOne!3442 (regex!1131 (rule!1895 token!491))))) b!587910))

(assert (= (and b!587293 ((_ is Concat!2620) (regOne!3442 (regex!1131 (rule!1895 token!491))))) b!587911))

(assert (= (and b!587293 ((_ is Star!1465) (regOne!3442 (regex!1131 (rule!1895 token!491))))) b!587912))

(assert (= (and b!587293 ((_ is Union!1465) (regOne!3442 (regex!1131 (rule!1895 token!491))))) b!587913))

(declare-fun b!587917 () Bool)

(declare-fun e!355332 () Bool)

(declare-fun tp!183315 () Bool)

(declare-fun tp!183312 () Bool)

(assert (=> b!587917 (= e!355332 (and tp!183315 tp!183312))))

(declare-fun b!587916 () Bool)

(declare-fun tp!183314 () Bool)

(assert (=> b!587916 (= e!355332 tp!183314)))

(assert (=> b!587293 (= tp!183205 e!355332)))

(declare-fun b!587915 () Bool)

(declare-fun tp!183313 () Bool)

(declare-fun tp!183311 () Bool)

(assert (=> b!587915 (= e!355332 (and tp!183313 tp!183311))))

(declare-fun b!587914 () Bool)

(assert (=> b!587914 (= e!355332 tp_is_empty!3285)))

(assert (= (and b!587293 ((_ is ElementMatch!1465) (regTwo!3442 (regex!1131 (rule!1895 token!491))))) b!587914))

(assert (= (and b!587293 ((_ is Concat!2620) (regTwo!3442 (regex!1131 (rule!1895 token!491))))) b!587915))

(assert (= (and b!587293 ((_ is Star!1465) (regTwo!3442 (regex!1131 (rule!1895 token!491))))) b!587916))

(assert (= (and b!587293 ((_ is Union!1465) (regTwo!3442 (regex!1131 (rule!1895 token!491))))) b!587917))

(declare-fun b!587921 () Bool)

(declare-fun e!355333 () Bool)

(declare-fun tp!183320 () Bool)

(declare-fun tp!183317 () Bool)

(assert (=> b!587921 (= e!355333 (and tp!183320 tp!183317))))

(declare-fun b!587920 () Bool)

(declare-fun tp!183319 () Bool)

(assert (=> b!587920 (= e!355333 tp!183319)))

(assert (=> b!587294 (= tp!183208 e!355333)))

(declare-fun b!587919 () Bool)

(declare-fun tp!183318 () Bool)

(declare-fun tp!183316 () Bool)

(assert (=> b!587919 (= e!355333 (and tp!183318 tp!183316))))

(declare-fun b!587918 () Bool)

(assert (=> b!587918 (= e!355333 tp_is_empty!3285)))

(assert (= (and b!587294 ((_ is ElementMatch!1465) (reg!1794 (regex!1131 (rule!1895 token!491))))) b!587918))

(assert (= (and b!587294 ((_ is Concat!2620) (reg!1794 (regex!1131 (rule!1895 token!491))))) b!587919))

(assert (= (and b!587294 ((_ is Star!1465) (reg!1794 (regex!1131 (rule!1895 token!491))))) b!587920))

(assert (= (and b!587294 ((_ is Union!1465) (reg!1794 (regex!1131 (rule!1895 token!491))))) b!587921))

(declare-fun b!587925 () Bool)

(declare-fun e!355334 () Bool)

(declare-fun tp!183325 () Bool)

(declare-fun tp!183322 () Bool)

(assert (=> b!587925 (= e!355334 (and tp!183325 tp!183322))))

(declare-fun b!587924 () Bool)

(declare-fun tp!183324 () Bool)

(assert (=> b!587924 (= e!355334 tp!183324)))

(assert (=> b!587289 (= tp!183202 e!355334)))

(declare-fun b!587923 () Bool)

(declare-fun tp!183323 () Bool)

(declare-fun tp!183321 () Bool)

(assert (=> b!587923 (= e!355334 (and tp!183323 tp!183321))))

(declare-fun b!587922 () Bool)

(assert (=> b!587922 (= e!355334 tp_is_empty!3285)))

(assert (= (and b!587289 ((_ is ElementMatch!1465) (regOne!3442 (regex!1131 (h!11183 rules!3103))))) b!587922))

(assert (= (and b!587289 ((_ is Concat!2620) (regOne!3442 (regex!1131 (h!11183 rules!3103))))) b!587923))

(assert (= (and b!587289 ((_ is Star!1465) (regOne!3442 (regex!1131 (h!11183 rules!3103))))) b!587924))

(assert (= (and b!587289 ((_ is Union!1465) (regOne!3442 (regex!1131 (h!11183 rules!3103))))) b!587925))

(declare-fun b!587929 () Bool)

(declare-fun e!355335 () Bool)

(declare-fun tp!183330 () Bool)

(declare-fun tp!183327 () Bool)

(assert (=> b!587929 (= e!355335 (and tp!183330 tp!183327))))

(declare-fun b!587928 () Bool)

(declare-fun tp!183329 () Bool)

(assert (=> b!587928 (= e!355335 tp!183329)))

(assert (=> b!587289 (= tp!183200 e!355335)))

(declare-fun b!587927 () Bool)

(declare-fun tp!183328 () Bool)

(declare-fun tp!183326 () Bool)

(assert (=> b!587927 (= e!355335 (and tp!183328 tp!183326))))

(declare-fun b!587926 () Bool)

(assert (=> b!587926 (= e!355335 tp_is_empty!3285)))

(assert (= (and b!587289 ((_ is ElementMatch!1465) (regTwo!3442 (regex!1131 (h!11183 rules!3103))))) b!587926))

(assert (= (and b!587289 ((_ is Concat!2620) (regTwo!3442 (regex!1131 (h!11183 rules!3103))))) b!587927))

(assert (= (and b!587289 ((_ is Star!1465) (regTwo!3442 (regex!1131 (h!11183 rules!3103))))) b!587928))

(assert (= (and b!587289 ((_ is Union!1465) (regTwo!3442 (regex!1131 (h!11183 rules!3103))))) b!587929))

(declare-fun b!587930 () Bool)

(declare-fun e!355336 () Bool)

(declare-fun tp!183331 () Bool)

(assert (=> b!587930 (= e!355336 (and tp_is_empty!3285 tp!183331))))

(assert (=> b!587277 (= tp!183189 e!355336)))

(assert (= (and b!587277 ((_ is Cons!5781) (t!78622 (originalCharacters!1170 token!491)))) b!587930))

(declare-fun b!587933 () Bool)

(declare-fun b_free!16425 () Bool)

(declare-fun b_next!16441 () Bool)

(assert (=> b!587933 (= b_free!16425 (not b_next!16441))))

(declare-fun tb!51459 () Bool)

(declare-fun t!78713 () Bool)

(assert (=> (and b!587933 (= (toValue!2010 (transformation!1131 (h!11183 (t!78623 (t!78623 rules!3103))))) (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))) t!78713) tb!51459))

(declare-fun result!57664 () Bool)

(assert (= result!57664 result!57638))

(assert (=> d!206759 t!78713))

(declare-fun tb!51461 () Bool)

(declare-fun t!78715 () Bool)

(assert (=> (and b!587933 (= (toValue!2010 (transformation!1131 (h!11183 (t!78623 (t!78623 rules!3103))))) (toValue!2010 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))) t!78715) tb!51461))

(declare-fun result!57666 () Bool)

(assert (= result!57666 result!57658))

(assert (=> d!206859 t!78715))

(declare-fun tp!183332 () Bool)

(declare-fun b_and!57919 () Bool)

(assert (=> b!587933 (= tp!183332 (and (=> t!78713 result!57664) (=> t!78715 result!57666) b_and!57919))))

(declare-fun b_free!16427 () Bool)

(declare-fun b_next!16443 () Bool)

(assert (=> b!587933 (= b_free!16427 (not b_next!16443))))

(declare-fun tb!51463 () Bool)

(declare-fun t!78717 () Bool)

(assert (=> (and b!587933 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 (t!78623 rules!3103))))) (toChars!1869 (transformation!1131 (rule!1895 token!491)))) t!78717) tb!51463))

(declare-fun result!57668 () Bool)

(assert (= result!57668 result!57584))

(assert (=> d!206529 t!78717))

(declare-fun tb!51465 () Bool)

(declare-fun t!78719 () Bool)

(assert (=> (and b!587933 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 (t!78623 rules!3103))))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248882)))))) t!78719) tb!51465))

(declare-fun result!57670 () Bool)

(assert (= result!57670 result!57646))

(assert (=> d!206769 t!78719))

(assert (=> b!587270 t!78717))

(declare-fun tb!51467 () Bool)

(declare-fun t!78721 () Bool)

(assert (=> (and b!587933 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 (t!78623 rules!3103))))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773)))))) t!78721) tb!51467))

(declare-fun result!57672 () Bool)

(assert (= result!57672 result!57564))

(assert (=> d!206445 t!78721))

(declare-fun t!78723 () Bool)

(declare-fun tb!51469 () Bool)

(assert (=> (and b!587933 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 (t!78623 rules!3103))))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (get!2211 lt!248887)))))) t!78723) tb!51469))

(declare-fun result!57674 () Bool)

(assert (= result!57674 result!57652))

(assert (=> d!206801 t!78723))

(declare-fun b_and!57921 () Bool)

(declare-fun tp!183333 () Bool)

(assert (=> b!587933 (= tp!183333 (and (=> t!78721 result!57672) (=> t!78717 result!57668) (=> t!78723 result!57674) (=> t!78719 result!57670) b_and!57921))))

(declare-fun e!355338 () Bool)

(assert (=> b!587933 (= e!355338 (and tp!183332 tp!183333))))

(declare-fun tp!183335 () Bool)

(declare-fun b!587932 () Bool)

(declare-fun e!355339 () Bool)

(assert (=> b!587932 (= e!355339 (and tp!183335 (inv!7300 (tag!1393 (h!11183 (t!78623 (t!78623 rules!3103))))) (inv!7303 (transformation!1131 (h!11183 (t!78623 (t!78623 rules!3103))))) e!355338))))

(declare-fun b!587931 () Bool)

(declare-fun e!355337 () Bool)

(declare-fun tp!183334 () Bool)

(assert (=> b!587931 (= e!355337 (and e!355339 tp!183334))))

(assert (=> b!587305 (= tp!183221 e!355337)))

(assert (= b!587932 b!587933))

(assert (= b!587931 b!587932))

(assert (= (and b!587305 ((_ is Cons!5782) (t!78623 (t!78623 rules!3103)))) b!587931))

(declare-fun m!848525 () Bool)

(assert (=> b!587932 m!848525))

(declare-fun m!848527 () Bool)

(assert (=> b!587932 m!848527))

(declare-fun tp!183342 () Bool)

(declare-fun e!355345 () Bool)

(declare-fun b!587942 () Bool)

(declare-fun tp!183343 () Bool)

(assert (=> b!587942 (= e!355345 (and (inv!7307 (left!4706 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491))))) tp!183343 (inv!7307 (right!5036 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491))))) tp!183342))))

(declare-fun b!587944 () Bool)

(declare-fun e!355346 () Bool)

(declare-fun tp!183344 () Bool)

(assert (=> b!587944 (= e!355346 tp!183344)))

(declare-fun b!587943 () Bool)

(declare-fun inv!7314 (IArray!3697) Bool)

(assert (=> b!587943 (= e!355345 (and (inv!7314 (xs!4485 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491))))) e!355346))))

(assert (=> b!587265 (= tp!183185 (and (inv!7307 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491)))) e!355345))))

(assert (= (and b!587265 ((_ is Node!1848) (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491))))) b!587942))

(assert (= b!587943 b!587944))

(assert (= (and b!587265 ((_ is Leaf!2921) (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 token!491))) (value!37100 token!491))))) b!587943))

(declare-fun m!848529 () Bool)

(assert (=> b!587942 m!848529))

(declare-fun m!848531 () Bool)

(assert (=> b!587942 m!848531))

(declare-fun m!848533 () Bool)

(assert (=> b!587943 m!848533))

(assert (=> b!587265 m!847641))

(declare-fun b!587945 () Bool)

(declare-fun e!355347 () Bool)

(declare-fun tp!183345 () Bool)

(assert (=> b!587945 (= e!355347 (and tp_is_empty!3285 tp!183345))))

(assert (=> b!587276 (= tp!183188 e!355347)))

(assert (= (and b!587276 ((_ is Cons!5781) (t!78622 (t!78622 input!2705)))) b!587945))

(declare-fun b!587946 () Bool)

(declare-fun e!355348 () Bool)

(declare-fun tp!183346 () Bool)

(assert (=> b!587946 (= e!355348 (and tp_is_empty!3285 tp!183346))))

(assert (=> b!587296 (= tp!183210 e!355348)))

(assert (= (and b!587296 ((_ is Cons!5781) (t!78622 (t!78622 suffix!1342)))) b!587946))

(declare-fun b!587947 () Bool)

(declare-fun tp!183348 () Bool)

(declare-fun tp!183347 () Bool)

(declare-fun e!355349 () Bool)

(assert (=> b!587947 (= e!355349 (and (inv!7307 (left!4706 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773))))))) tp!183348 (inv!7307 (right!5036 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773))))))) tp!183347))))

(declare-fun b!587949 () Bool)

(declare-fun e!355350 () Bool)

(declare-fun tp!183349 () Bool)

(assert (=> b!587949 (= e!355350 tp!183349)))

(declare-fun b!587948 () Bool)

(assert (=> b!587948 (= e!355349 (and (inv!7314 (xs!4485 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773))))))) e!355350))))

(assert (=> b!587081 (= tp!183146 (and (inv!7307 (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773)))))) e!355349))))

(assert (= (and b!587081 ((_ is Node!1848) (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773))))))) b!587947))

(assert (= b!587948 b!587949))

(assert (= (and b!587081 ((_ is Leaf!2921) (c!109682 (dynLambda!3372 (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))) (value!37100 (_1!3636 (v!16356 lt!248773))))))) b!587948))

(declare-fun m!848535 () Bool)

(assert (=> b!587947 m!848535))

(declare-fun m!848537 () Bool)

(assert (=> b!587947 m!848537))

(declare-fun m!848539 () Bool)

(assert (=> b!587948 m!848539))

(assert (=> b!587081 m!847383))

(declare-fun b!587953 () Bool)

(declare-fun e!355351 () Bool)

(declare-fun tp!183354 () Bool)

(declare-fun tp!183351 () Bool)

(assert (=> b!587953 (= e!355351 (and tp!183354 tp!183351))))

(declare-fun b!587952 () Bool)

(declare-fun tp!183353 () Bool)

(assert (=> b!587952 (= e!355351 tp!183353)))

(assert (=> b!587291 (= tp!183204 e!355351)))

(declare-fun b!587951 () Bool)

(declare-fun tp!183352 () Bool)

(declare-fun tp!183350 () Bool)

(assert (=> b!587951 (= e!355351 (and tp!183352 tp!183350))))

(declare-fun b!587950 () Bool)

(assert (=> b!587950 (= e!355351 tp_is_empty!3285)))

(assert (= (and b!587291 ((_ is ElementMatch!1465) (regOne!3443 (regex!1131 (h!11183 rules!3103))))) b!587950))

(assert (= (and b!587291 ((_ is Concat!2620) (regOne!3443 (regex!1131 (h!11183 rules!3103))))) b!587951))

(assert (= (and b!587291 ((_ is Star!1465) (regOne!3443 (regex!1131 (h!11183 rules!3103))))) b!587952))

(assert (= (and b!587291 ((_ is Union!1465) (regOne!3443 (regex!1131 (h!11183 rules!3103))))) b!587953))

(declare-fun b!587957 () Bool)

(declare-fun e!355352 () Bool)

(declare-fun tp!183359 () Bool)

(declare-fun tp!183356 () Bool)

(assert (=> b!587957 (= e!355352 (and tp!183359 tp!183356))))

(declare-fun b!587956 () Bool)

(declare-fun tp!183358 () Bool)

(assert (=> b!587956 (= e!355352 tp!183358)))

(assert (=> b!587291 (= tp!183201 e!355352)))

(declare-fun b!587955 () Bool)

(declare-fun tp!183357 () Bool)

(declare-fun tp!183355 () Bool)

(assert (=> b!587955 (= e!355352 (and tp!183357 tp!183355))))

(declare-fun b!587954 () Bool)

(assert (=> b!587954 (= e!355352 tp_is_empty!3285)))

(assert (= (and b!587291 ((_ is ElementMatch!1465) (regTwo!3443 (regex!1131 (h!11183 rules!3103))))) b!587954))

(assert (= (and b!587291 ((_ is Concat!2620) (regTwo!3443 (regex!1131 (h!11183 rules!3103))))) b!587955))

(assert (= (and b!587291 ((_ is Star!1465) (regTwo!3443 (regex!1131 (h!11183 rules!3103))))) b!587956))

(assert (= (and b!587291 ((_ is Union!1465) (regTwo!3443 (regex!1131 (h!11183 rules!3103))))) b!587957))

(declare-fun b!587961 () Bool)

(declare-fun e!355353 () Bool)

(declare-fun tp!183364 () Bool)

(declare-fun tp!183361 () Bool)

(assert (=> b!587961 (= e!355353 (and tp!183364 tp!183361))))

(declare-fun b!587960 () Bool)

(declare-fun tp!183363 () Bool)

(assert (=> b!587960 (= e!355353 tp!183363)))

(assert (=> b!587290 (= tp!183203 e!355353)))

(declare-fun b!587959 () Bool)

(declare-fun tp!183362 () Bool)

(declare-fun tp!183360 () Bool)

(assert (=> b!587959 (= e!355353 (and tp!183362 tp!183360))))

(declare-fun b!587958 () Bool)

(assert (=> b!587958 (= e!355353 tp_is_empty!3285)))

(assert (= (and b!587290 ((_ is ElementMatch!1465) (reg!1794 (regex!1131 (h!11183 rules!3103))))) b!587958))

(assert (= (and b!587290 ((_ is Concat!2620) (reg!1794 (regex!1131 (h!11183 rules!3103))))) b!587959))

(assert (= (and b!587290 ((_ is Star!1465) (reg!1794 (regex!1131 (h!11183 rules!3103))))) b!587960))

(assert (= (and b!587290 ((_ is Union!1465) (reg!1794 (regex!1131 (h!11183 rules!3103))))) b!587961))

(declare-fun b!587965 () Bool)

(declare-fun e!355354 () Bool)

(declare-fun tp!183369 () Bool)

(declare-fun tp!183366 () Bool)

(assert (=> b!587965 (= e!355354 (and tp!183369 tp!183366))))

(declare-fun b!587964 () Bool)

(declare-fun tp!183368 () Bool)

(assert (=> b!587964 (= e!355354 tp!183368)))

(assert (=> b!587295 (= tp!183209 e!355354)))

(declare-fun b!587963 () Bool)

(declare-fun tp!183367 () Bool)

(declare-fun tp!183365 () Bool)

(assert (=> b!587963 (= e!355354 (and tp!183367 tp!183365))))

(declare-fun b!587962 () Bool)

(assert (=> b!587962 (= e!355354 tp_is_empty!3285)))

(assert (= (and b!587295 ((_ is ElementMatch!1465) (regOne!3443 (regex!1131 (rule!1895 token!491))))) b!587962))

(assert (= (and b!587295 ((_ is Concat!2620) (regOne!3443 (regex!1131 (rule!1895 token!491))))) b!587963))

(assert (= (and b!587295 ((_ is Star!1465) (regOne!3443 (regex!1131 (rule!1895 token!491))))) b!587964))

(assert (= (and b!587295 ((_ is Union!1465) (regOne!3443 (regex!1131 (rule!1895 token!491))))) b!587965))

(declare-fun b!587969 () Bool)

(declare-fun e!355355 () Bool)

(declare-fun tp!183374 () Bool)

(declare-fun tp!183371 () Bool)

(assert (=> b!587969 (= e!355355 (and tp!183374 tp!183371))))

(declare-fun b!587968 () Bool)

(declare-fun tp!183373 () Bool)

(assert (=> b!587968 (= e!355355 tp!183373)))

(assert (=> b!587295 (= tp!183206 e!355355)))

(declare-fun b!587967 () Bool)

(declare-fun tp!183372 () Bool)

(declare-fun tp!183370 () Bool)

(assert (=> b!587967 (= e!355355 (and tp!183372 tp!183370))))

(declare-fun b!587966 () Bool)

(assert (=> b!587966 (= e!355355 tp_is_empty!3285)))

(assert (= (and b!587295 ((_ is ElementMatch!1465) (regTwo!3443 (regex!1131 (rule!1895 token!491))))) b!587966))

(assert (= (and b!587295 ((_ is Concat!2620) (regTwo!3443 (regex!1131 (rule!1895 token!491))))) b!587967))

(assert (= (and b!587295 ((_ is Star!1465) (regTwo!3443 (regex!1131 (rule!1895 token!491))))) b!587968))

(assert (= (and b!587295 ((_ is Union!1465) (regTwo!3443 (regex!1131 (rule!1895 token!491))))) b!587969))

(declare-fun b_lambda!23155 () Bool)

(assert (= b_lambda!23119 (or (and b!586978 b_free!16407 (= (toChars!1869 (transformation!1131 (rule!1895 token!491))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))))) (and b!586979 b_free!16411 (= (toChars!1869 (transformation!1131 (h!11183 rules!3103))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))))) (and b!587307 b_free!16419 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 rules!3103)))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))))) (and b!587933 b_free!16427 (= (toChars!1869 (transformation!1131 (h!11183 (t!78623 (t!78623 rules!3103))))) (toChars!1869 (transformation!1131 (rule!1895 (_1!3636 (v!16356 lt!248773))))))) b_lambda!23155)))

(check-sat (not d!206843) (not d!206869) (not b!587314) (not d!206845) (not b!587947) (not b!587927) (not b!587912) (not b!587953) b_and!57915 (not b!587946) (not b!587796) b_and!57917 (not b!587738) (not d!206793) (not d!206853) (not b!587723) (not b!587662) (not b!587943) (not tb!51441) (not d!206791) (not b!587858) (not b!587769) (not b!587330) (not d!206819) (not b!587951) (not d!206841) (not b!587955) (not bm!40239) (not d!206891) b_and!57911 (not b_next!16423) (not d!206797) (not b!587783) (not b!587837) (not b!587895) (not b!587931) tp_is_empty!3285 (not b!587680) (not b!587902) (not b!587857) (not b!587791) (not b!587726) (not b!587839) (not b!587770) (not b_next!16435) (not b!587781) (not b!587674) (not b!587929) (not d!206877) (not b!587879) (not b!587776) (not b!587848) (not b!587870) (not b!587859) (not b!587812) (not b!587728) (not b!587925) b_and!57921 (not b!587945) (not d!206779) (not d!206861) (not b_lambda!23151) (not d!206557) (not b!587897) (not b!587920) (not b!587799) (not b!587697) (not b_lambda!23149) (not d!206825) (not b!587690) (not d!206761) (not b_next!16421) (not b!587932) (not b!587969) (not b!587327) (not b!587881) (not b!587866) (not b!587810) (not bm!40240) (not b!587686) (not b!587730) (not bm!40238) (not b!587865) (not b!587815) (not b!587844) (not b!587882) (not b!587735) (not d!206741) (not b!587847) (not b!587899) (not b!587903) (not b!587081) (not b!587942) (not d!206885) (not b!587795) (not b!587724) (not b!587877) (not d!206799) (not b!587919) (not b_lambda!23147) (not b!587873) (not b_next!16441) (not d!206767) (not b_lambda!23153) (not b!587789) (not b!587691) (not tb!51435) (not b!587964) (not b!587682) (not b!587948) (not d!206805) (not b!587911) (not b!587908) (not d!206883) (not b!587843) (not b!587721) (not b!587909) (not b!587830) (not b!587720) (not b!587965) (not b!587913) (not b!587784) (not tb!51447) (not d!206801) (not b!587874) (not b!587959) (not b!587780) (not b!587767) (not b!587814) (not b!587957) (not b!587876) (not b!587921) (not b_lambda!23133) (not d!206785) (not b!587676) (not d!206737) (not d!206815) (not b!587794) (not b!587853) (not b!587722) (not b!587949) (not d!206763) (not b!587967) (not b!587328) (not b!587316) (not tb!51453) (not d!206755) (not b!587883) (not b!587869) (not d!206803) (not b!587872) (not b!587952) (not b!587917) (not b!587916) (not b!587891) b_and!57913 (not b!587901) (not b!587855) (not b!587961) (not b!587729) (not d!206847) (not b!587944) (not d!206833) (not d!206733) (not b!587666) (not b!587905) (not b_next!16443) (not b!587793) (not b_lambda!23155) (not b!587851) (not b!587806) (not b!587867) (not b!587736) b_and!57909 (not bm!40237) (not b!587827) (not b!587863) (not d!206745) b_and!57907 (not d!206817) (not b!587885) (not b!587841) (not b!587915) (not b!587829) (not b!587808) (not d!206547) (not b!587818) (not b!587960) (not b_next!16427) (not b!587684) (not b!587884) (not b!587800) (not b!587716) (not d!206811) b_and!57919 (not b!587665) (not b!587907) (not b!587930) (not b!587797) (not b!587717) (not b!587861) (not b_lambda!23135) (not d!206769) (not b_next!16433) (not b!587798) (not b!587871) (not b!587312) (not d!206777) (not b!587719) (not b_next!16425) (not b!587768) (not d!206743) (not b!587811) (not b!587813) (not b!587265) (not d!206545) (not b!587963) (not b!587817) (not b!587849) (not b!587805) (not d!206775) (not d!206879) (not b!587956) (not b!587788) (not b!587928) (not b!587968) (not b!587809) (not b!587924) (not b!587923) (not b!587825))
(check-sat (not b_next!16435) b_and!57921 (not b_next!16421) (not b_next!16441) b_and!57913 b_and!57907 (not b_next!16427) b_and!57919 b_and!57917 b_and!57915 b_and!57911 (not b_next!16423) (not b_next!16443) b_and!57909 (not b_next!16433) (not b_next!16425))
