; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!263744 () Bool)

(assert start!263744)

(declare-fun b!2718005 () Bool)

(declare-fun b_free!76585 () Bool)

(declare-fun b_next!77289 () Bool)

(assert (=> b!2718005 (= b_free!76585 (not b_next!77289))))

(declare-fun tp!857925 () Bool)

(declare-fun b_and!200337 () Bool)

(assert (=> b!2718005 (= tp!857925 b_and!200337)))

(declare-fun b_free!76587 () Bool)

(declare-fun b_next!77291 () Bool)

(assert (=> b!2718005 (= b_free!76587 (not b_next!77291))))

(declare-fun tp!857926 () Bool)

(declare-fun b_and!200339 () Bool)

(assert (=> b!2718005 (= tp!857926 b_and!200339)))

(declare-fun b!2717989 () Bool)

(declare-fun e!1713101 () Bool)

(declare-fun e!1713107 () Bool)

(assert (=> b!2717989 (= e!1713101 e!1713107)))

(declare-fun res!1141574 () Bool)

(assert (=> b!2717989 (=> (not res!1141574) (not e!1713107))))

(declare-datatypes ((C!16056 0))(
  ( (C!16057 (val!9962 Int)) )
))
(declare-datatypes ((List!31453 0))(
  ( (Nil!31353) (Cons!31353 (h!36773 C!16056) (t!226305 List!31453)) )
))
(declare-datatypes ((IArray!19647 0))(
  ( (IArray!19648 (innerList!9881 List!31453)) )
))
(declare-datatypes ((Conc!9821 0))(
  ( (Node!9821 (left!24105 Conc!9821) (right!24435 Conc!9821) (csize!19872 Int) (cheight!10032 Int)) (Leaf!14964 (xs!12892 IArray!19647) (csize!19873 Int)) (Empty!9821) )
))
(declare-datatypes ((BalanceConc!19256 0))(
  ( (BalanceConc!19257 (c!439209 Conc!9821)) )
))
(declare-fun input!603 () BalanceConc!19256)

(declare-fun lt!962040 () List!31453)

(declare-fun totalInput!328 () BalanceConc!19256)

(declare-fun list!11876 (BalanceConc!19256) List!31453)

(declare-fun ++!7796 (List!31453 List!31453) List!31453)

(assert (=> b!2717989 (= res!1141574 (= (list!11876 totalInput!328) (++!7796 lt!962040 (list!11876 input!603))))))

(declare-fun treated!9 () BalanceConc!19256)

(assert (=> b!2717989 (= lt!962040 (list!11876 treated!9))))

(declare-datatypes ((List!31454 0))(
  ( (Nil!31354) (Cons!31354 (h!36774 (_ BitVec 16)) (t!226306 List!31454)) )
))
(declare-datatypes ((TokenValue!5019 0))(
  ( (FloatLiteralValue!10038 (text!35578 List!31454)) (TokenValueExt!5018 (__x!20173 Int)) (Broken!25095 (value!154301 List!31454)) (Object!5118) (End!5019) (Def!5019) (Underscore!5019) (Match!5019) (Else!5019) (Error!5019) (Case!5019) (If!5019) (Extends!5019) (Abstract!5019) (Class!5019) (Val!5019) (DelimiterValue!10038 (del!5079 List!31454)) (KeywordValue!5025 (value!154302 List!31454)) (CommentValue!10038 (value!154303 List!31454)) (WhitespaceValue!10038 (value!154304 List!31454)) (IndentationValue!5019 (value!154305 List!31454)) (String!34994) (Int32!5019) (Broken!25096 (value!154306 List!31454)) (Boolean!5020) (Unit!45373) (OperatorValue!5022 (op!5079 List!31454)) (IdentifierValue!10038 (value!154307 List!31454)) (IdentifierValue!10039 (value!154308 List!31454)) (WhitespaceValue!10039 (value!154309 List!31454)) (True!10038) (False!10038) (Broken!25097 (value!154310 List!31454)) (Broken!25098 (value!154311 List!31454)) (True!10039) (RightBrace!5019) (RightBracket!5019) (Colon!5019) (Null!5019) (Comma!5019) (LeftBracket!5019) (False!10039) (LeftBrace!5019) (ImaginaryLiteralValue!5019 (text!35579 List!31454)) (StringLiteralValue!15057 (value!154312 List!31454)) (EOFValue!5019 (value!154313 List!31454)) (IdentValue!5019 (value!154314 List!31454)) (DelimiterValue!10039 (value!154315 List!31454)) (DedentValue!5019 (value!154316 List!31454)) (NewLineValue!5019 (value!154317 List!31454)) (IntegerValue!15057 (value!154318 (_ BitVec 32)) (text!35580 List!31454)) (IntegerValue!15058 (value!154319 Int) (text!35581 List!31454)) (Times!5019) (Or!5019) (Equal!5019) (Minus!5019) (Broken!25099 (value!154320 List!31454)) (And!5019) (Div!5019) (LessEqual!5019) (Mod!5019) (Concat!12968) (Not!5019) (Plus!5019) (SpaceValue!5019 (value!154321 List!31454)) (IntegerValue!15059 (value!154322 Int) (text!35582 List!31454)) (StringLiteralValue!15058 (text!35583 List!31454)) (FloatLiteralValue!10039 (text!35584 List!31454)) (BytesLiteralValue!5019 (value!154323 List!31454)) (CommentValue!10039 (value!154324 List!31454)) (StringLiteralValue!15059 (value!154325 List!31454)) (ErrorTokenValue!5019 (msg!5080 List!31454)) )
))
(declare-datatypes ((String!34995 0))(
  ( (String!34996 (value!154326 String)) )
))
(declare-datatypes ((Regex!7949 0))(
  ( (ElementMatch!7949 (c!439210 C!16056)) (Concat!12969 (regOne!16410 Regex!7949) (regTwo!16410 Regex!7949)) (EmptyExpr!7949) (Star!7949 (reg!8278 Regex!7949)) (EmptyLang!7949) (Union!7949 (regOne!16411 Regex!7949) (regTwo!16411 Regex!7949)) )
))
(declare-datatypes ((TokenValueInjection!9478 0))(
  ( (TokenValueInjection!9479 (toValue!6771 Int) (toChars!6630 Int)) )
))
(declare-datatypes ((Rule!9394 0))(
  ( (Rule!9395 (regex!4797 Regex!7949) (tag!5301 String!34995) (isSeparator!4797 Bool) (transformation!4797 TokenValueInjection!9478)) )
))
(declare-datatypes ((Token!9056 0))(
  ( (Token!9057 (value!154327 TokenValue!5019) (rule!7225 Rule!9394) (size!24184 Int) (originalCharacters!5559 List!31453)) )
))
(declare-datatypes ((tuple2!31038 0))(
  ( (tuple2!31039 (_1!18151 Token!9056) (_2!18151 BalanceConc!19256)) )
))
(declare-datatypes ((Option!6191 0))(
  ( (None!6190) (Some!6190 (v!33030 tuple2!31038)) )
))
(declare-fun lt!962027 () Option!6191)

(declare-fun b!2717990 () Bool)

(declare-fun e!1713095 () Bool)

(declare-datatypes ((List!31455 0))(
  ( (Nil!31355) (Cons!31355 (h!36775 Token!9056) (t!226307 List!31455)) )
))
(declare-datatypes ((IArray!19649 0))(
  ( (IArray!19650 (innerList!9882 List!31455)) )
))
(declare-datatypes ((Conc!9822 0))(
  ( (Node!9822 (left!24106 Conc!9822) (right!24436 Conc!9822) (csize!19874 Int) (cheight!10033 Int)) (Leaf!14965 (xs!12893 IArray!19649) (csize!19875 Int)) (Empty!9822) )
))
(declare-datatypes ((BalanceConc!19258 0))(
  ( (BalanceConc!19259 (c!439211 Conc!9822)) )
))
(declare-datatypes ((tuple2!31040 0))(
  ( (tuple2!31041 (_1!18152 BalanceConc!19258) (_2!18152 BalanceConc!19256)) )
))
(declare-fun lt!962025 () tuple2!31040)

(declare-fun lt!962048 () tuple2!31040)

(declare-fun prepend!1125 (BalanceConc!19258 Token!9056) BalanceConc!19258)

(assert (=> b!2717990 (= e!1713095 (= lt!962025 (tuple2!31041 (prepend!1125 (_1!18152 lt!962048) (_1!18151 (v!33030 lt!962027))) (_2!18152 lt!962048))))))

(declare-datatypes ((LexerInterface!4393 0))(
  ( (LexerInterfaceExt!4390 (__x!20174 Int)) (Lexer!4391) )
))
(declare-fun thiss!11556 () LexerInterface!4393)

(declare-datatypes ((List!31456 0))(
  ( (Nil!31356) (Cons!31356 (h!36776 Rule!9394) (t!226308 List!31456)) )
))
(declare-fun rules!1182 () List!31456)

(declare-fun lexRec!653 (LexerInterface!4393 List!31456 BalanceConc!19256) tuple2!31040)

(assert (=> b!2717990 (= lt!962048 (lexRec!653 thiss!11556 rules!1182 (_2!18151 (v!33030 lt!962027))))))

(declare-fun e!1713103 () Bool)

(declare-fun lt!962045 () Option!6191)

(declare-fun lt!962030 () tuple2!31040)

(declare-fun b!2717991 () Bool)

(declare-fun lt!962046 () tuple2!31040)

(assert (=> b!2717991 (= e!1713103 (= lt!962030 (tuple2!31041 (prepend!1125 (_1!18152 lt!962046) (_1!18151 (v!33030 lt!962045))) (_2!18152 lt!962046))))))

(declare-fun b!2717992 () Bool)

(declare-fun e!1713104 () Bool)

(declare-fun tp!857923 () Bool)

(declare-fun inv!42567 (Conc!9821) Bool)

(assert (=> b!2717992 (= e!1713104 (and (inv!42567 (c!439209 treated!9)) tp!857923))))

(declare-fun b!2717993 () Bool)

(declare-fun e!1713105 () Bool)

(declare-fun e!1713096 () Bool)

(assert (=> b!2717993 (= e!1713105 e!1713096)))

(declare-fun res!1141566 () Bool)

(assert (=> b!2717993 (=> (not res!1141566) (not e!1713096))))

(declare-fun lt!962028 () tuple2!31040)

(declare-fun acc!331 () BalanceConc!19258)

(declare-fun list!11877 (BalanceConc!19258) List!31455)

(declare-fun ++!7797 (BalanceConc!19258 BalanceConc!19258) BalanceConc!19258)

(assert (=> b!2717993 (= res!1141566 (= (list!11877 (_1!18152 lt!962028)) (list!11877 (++!7797 acc!331 (_1!18152 lt!962030)))))))

(assert (=> b!2717993 (= lt!962030 (lexRec!653 thiss!11556 rules!1182 input!603))))

(assert (=> b!2717993 (= lt!962028 (lexRec!653 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2717994 () Bool)

(declare-fun res!1141569 () Bool)

(assert (=> b!2717994 (=> (not res!1141569) (not e!1713101))))

(declare-fun isEmpty!17883 (List!31456) Bool)

(assert (=> b!2717994 (= res!1141569 (not (isEmpty!17883 rules!1182)))))

(declare-fun b!2717995 () Bool)

(declare-fun res!1141570 () Bool)

(assert (=> b!2717995 (=> (not res!1141570) (not e!1713105))))

(declare-fun lt!962026 () tuple2!31040)

(declare-fun isEmpty!17884 (List!31453) Bool)

(assert (=> b!2717995 (= res!1141570 (isEmpty!17884 (list!11876 (_2!18152 lt!962026))))))

(declare-fun res!1141571 () Bool)

(assert (=> start!263744 (=> (not res!1141571) (not e!1713101))))

(get-info :version)

(assert (=> start!263744 (= res!1141571 ((_ is Lexer!4391) thiss!11556))))

(assert (=> start!263744 e!1713101))

(declare-fun inv!42568 (BalanceConc!19256) Bool)

(assert (=> start!263744 (and (inv!42568 treated!9) e!1713104)))

(declare-fun e!1713098 () Bool)

(assert (=> start!263744 (and (inv!42568 input!603) e!1713098)))

(assert (=> start!263744 true))

(declare-fun e!1713093 () Bool)

(assert (=> start!263744 e!1713093))

(declare-fun e!1713100 () Bool)

(assert (=> start!263744 (and (inv!42568 totalInput!328) e!1713100)))

(declare-fun e!1713106 () Bool)

(declare-fun inv!42569 (BalanceConc!19258) Bool)

(assert (=> start!263744 (and (inv!42569 acc!331) e!1713106)))

(declare-fun e!1713102 () Bool)

(declare-fun tp!857922 () Bool)

(declare-fun e!1713099 () Bool)

(declare-fun b!2717996 () Bool)

(declare-fun inv!42561 (String!34995) Bool)

(declare-fun inv!42570 (TokenValueInjection!9478) Bool)

(assert (=> b!2717996 (= e!1713099 (and tp!857922 (inv!42561 (tag!5301 (h!36776 rules!1182))) (inv!42570 (transformation!4797 (h!36776 rules!1182))) e!1713102))))

(declare-fun b!2717997 () Bool)

(declare-fun tp!857928 () Bool)

(declare-fun inv!42571 (Conc!9822) Bool)

(assert (=> b!2717997 (= e!1713106 (and (inv!42571 (c!439211 acc!331)) tp!857928))))

(declare-fun b!2717998 () Bool)

(declare-fun tp!857924 () Bool)

(assert (=> b!2717998 (= e!1713098 (and (inv!42567 (c!439209 input!603)) tp!857924))))

(declare-fun b!2717999 () Bool)

(declare-fun tp!857927 () Bool)

(assert (=> b!2717999 (= e!1713093 (and e!1713099 tp!857927))))

(declare-fun b!2718000 () Bool)

(declare-fun tp!857929 () Bool)

(assert (=> b!2718000 (= e!1713100 (and (inv!42567 (c!439209 totalInput!328)) tp!857929))))

(declare-fun b!2718001 () Bool)

(declare-fun lt!962032 () BalanceConc!19256)

(assert (=> b!2718001 (= e!1713095 (= lt!962025 (tuple2!31041 (BalanceConc!19259 Empty!9822) lt!962032)))))

(declare-fun b!2718002 () Bool)

(assert (=> b!2718002 (= e!1713107 e!1713105)))

(declare-fun res!1141567 () Bool)

(assert (=> b!2718002 (=> (not res!1141567) (not e!1713105))))

(declare-fun lt!962036 () List!31455)

(declare-fun lt!962042 () List!31455)

(assert (=> b!2718002 (= res!1141567 (= lt!962036 lt!962042))))

(assert (=> b!2718002 (= lt!962042 (list!11877 acc!331))))

(assert (=> b!2718002 (= lt!962036 (list!11877 (_1!18152 lt!962026)))))

(assert (=> b!2718002 (= lt!962026 (lexRec!653 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2718003 () Bool)

(declare-fun e!1713097 () Bool)

(assert (=> b!2718003 (= e!1713096 e!1713097)))

(declare-fun res!1141568 () Bool)

(assert (=> b!2718003 (=> (not res!1141568) (not e!1713097))))

(assert (=> b!2718003 (= res!1141568 ((_ is Some!6190) lt!962045))))

(declare-fun maxPrefixZipperSequence!1041 (LexerInterface!4393 List!31456 BalanceConc!19256) Option!6191)

(assert (=> b!2718003 (= lt!962045 (maxPrefixZipperSequence!1041 thiss!11556 rules!1182 input!603))))

(declare-fun b!2718004 () Bool)

(declare-fun res!1141573 () Bool)

(assert (=> b!2718004 (=> (not res!1141573) (not e!1713101))))

(declare-fun rulesInvariant!3878 (LexerInterface!4393 List!31456) Bool)

(assert (=> b!2718004 (= res!1141573 (rulesInvariant!3878 thiss!11556 rules!1182))))

(assert (=> b!2718005 (= e!1713102 (and tp!857925 tp!857926))))

(declare-fun b!2718006 () Bool)

(assert (=> b!2718006 (= e!1713097 (not true))))

(declare-fun lt!962043 () BalanceConc!19258)

(declare-fun lt!962035 () List!31455)

(declare-fun lexTailRec!42 (LexerInterface!4393 List!31456 BalanceConc!19256 BalanceConc!19256 BalanceConc!19256 BalanceConc!19258) tuple2!31040)

(assert (=> b!2718006 (= lt!962035 (list!11877 (_1!18152 (lexTailRec!42 thiss!11556 rules!1182 totalInput!328 lt!962032 (_2!18151 (v!33030 lt!962045)) lt!962043))))))

(assert (=> b!2718006 e!1713095))

(declare-fun c!439208 () Bool)

(assert (=> b!2718006 (= c!439208 ((_ is Some!6190) lt!962027))))

(assert (=> b!2718006 (= lt!962025 (lexRec!653 thiss!11556 rules!1182 lt!962032))))

(assert (=> b!2718006 (= lt!962027 (maxPrefixZipperSequence!1041 thiss!11556 rules!1182 lt!962032))))

(declare-fun lt!962031 () BalanceConc!19256)

(declare-fun ++!7798 (BalanceConc!19256 BalanceConc!19256) BalanceConc!19256)

(assert (=> b!2718006 (= lt!962032 (++!7798 treated!9 lt!962031))))

(declare-fun lt!962033 () List!31455)

(declare-fun lt!962038 () List!31453)

(declare-datatypes ((tuple2!31042 0))(
  ( (tuple2!31043 (_1!18153 List!31455) (_2!18153 List!31453)) )
))
(declare-fun lexList!1224 (LexerInterface!4393 List!31456 List!31453) tuple2!31042)

(assert (=> b!2718006 (= (lexList!1224 thiss!11556 rules!1182 lt!962038) (tuple2!31043 lt!962033 Nil!31353))))

(declare-fun lt!962047 () List!31453)

(declare-datatypes ((Unit!45374 0))(
  ( (Unit!45375) )
))
(declare-fun lt!962034 () Unit!45374)

(declare-fun lt!962044 () List!31455)

(declare-fun lemmaLexThenLexPrefix!432 (LexerInterface!4393 List!31456 List!31453 List!31453 List!31455 List!31455 List!31453) Unit!45374)

(assert (=> b!2718006 (= lt!962034 (lemmaLexThenLexPrefix!432 thiss!11556 rules!1182 lt!962038 lt!962047 lt!962033 lt!962044 (list!11876 (_2!18152 lt!962046))))))

(assert (=> b!2718006 (= lt!962033 (list!11877 lt!962043))))

(declare-fun append!817 (BalanceConc!19258 Token!9056) BalanceConc!19258)

(assert (=> b!2718006 (= lt!962043 (append!817 acc!331 (_1!18151 (v!33030 lt!962045))))))

(declare-fun lt!962039 () List!31455)

(declare-fun ++!7799 (List!31455 List!31455) List!31455)

(assert (=> b!2718006 (= (++!7799 (++!7799 lt!962042 lt!962039) lt!962044) (++!7799 lt!962042 (++!7799 lt!962039 lt!962044)))))

(declare-fun lt!962029 () Unit!45374)

(declare-fun lemmaConcatAssociativity!1615 (List!31455 List!31455 List!31455) Unit!45374)

(assert (=> b!2718006 (= lt!962029 (lemmaConcatAssociativity!1615 lt!962042 lt!962039 lt!962044))))

(assert (=> b!2718006 (= lt!962044 (list!11877 (_1!18152 lt!962046)))))

(assert (=> b!2718006 (= lt!962039 (Cons!31355 (_1!18151 (v!33030 lt!962045)) Nil!31355))))

(assert (=> b!2718006 e!1713103))

(declare-fun res!1141572 () Bool)

(assert (=> b!2718006 (=> (not res!1141572) (not e!1713103))))

(declare-fun lt!962037 () List!31453)

(assert (=> b!2718006 (= res!1141572 (= (++!7796 lt!962038 lt!962047) (++!7796 lt!962040 (++!7796 lt!962037 lt!962047))))))

(assert (=> b!2718006 (= lt!962038 (++!7796 lt!962040 lt!962037))))

(declare-fun lt!962041 () Unit!45374)

(declare-fun lemmaConcatAssociativity!1616 (List!31453 List!31453 List!31453) Unit!45374)

(assert (=> b!2718006 (= lt!962041 (lemmaConcatAssociativity!1616 lt!962040 lt!962037 lt!962047))))

(assert (=> b!2718006 (= lt!962047 (list!11876 (_2!18151 (v!33030 lt!962045))))))

(assert (=> b!2718006 (= lt!962037 (list!11876 lt!962031))))

(declare-fun charsOf!3020 (Token!9056) BalanceConc!19256)

(assert (=> b!2718006 (= lt!962031 (charsOf!3020 (_1!18151 (v!33030 lt!962045))))))

(assert (=> b!2718006 (= lt!962046 (lexRec!653 thiss!11556 rules!1182 (_2!18151 (v!33030 lt!962045))))))

(declare-fun b!2718007 () Bool)

(declare-fun res!1141565 () Bool)

(assert (=> b!2718007 (=> (not res!1141565) (not e!1713096))))

(assert (=> b!2718007 (= res!1141565 (= (list!11876 (_2!18152 lt!962028)) (list!11876 (_2!18152 lt!962030))))))

(assert (= (and start!263744 res!1141571) b!2717994))

(assert (= (and b!2717994 res!1141569) b!2718004))

(assert (= (and b!2718004 res!1141573) b!2717989))

(assert (= (and b!2717989 res!1141574) b!2718002))

(assert (= (and b!2718002 res!1141567) b!2717995))

(assert (= (and b!2717995 res!1141570) b!2717993))

(assert (= (and b!2717993 res!1141566) b!2718007))

(assert (= (and b!2718007 res!1141565) b!2718003))

(assert (= (and b!2718003 res!1141568) b!2718006))

(assert (= (and b!2718006 res!1141572) b!2717991))

(assert (= (and b!2718006 c!439208) b!2717990))

(assert (= (and b!2718006 (not c!439208)) b!2718001))

(assert (= start!263744 b!2717992))

(assert (= start!263744 b!2717998))

(assert (= b!2717996 b!2718005))

(assert (= b!2717999 b!2717996))

(assert (= (and start!263744 ((_ is Cons!31356) rules!1182)) b!2717999))

(assert (= start!263744 b!2718000))

(assert (= start!263744 b!2717997))

(declare-fun m!3117215 () Bool)

(assert (=> b!2717992 m!3117215))

(declare-fun m!3117217 () Bool)

(assert (=> b!2717993 m!3117217))

(declare-fun m!3117219 () Bool)

(assert (=> b!2717993 m!3117219))

(declare-fun m!3117221 () Bool)

(assert (=> b!2717993 m!3117221))

(declare-fun m!3117223 () Bool)

(assert (=> b!2717993 m!3117223))

(declare-fun m!3117225 () Bool)

(assert (=> b!2717993 m!3117225))

(assert (=> b!2717993 m!3117219))

(declare-fun m!3117227 () Bool)

(assert (=> b!2717989 m!3117227))

(declare-fun m!3117229 () Bool)

(assert (=> b!2717989 m!3117229))

(assert (=> b!2717989 m!3117229))

(declare-fun m!3117231 () Bool)

(assert (=> b!2717989 m!3117231))

(declare-fun m!3117233 () Bool)

(assert (=> b!2717989 m!3117233))

(declare-fun m!3117235 () Bool)

(assert (=> b!2717995 m!3117235))

(assert (=> b!2717995 m!3117235))

(declare-fun m!3117237 () Bool)

(assert (=> b!2717995 m!3117237))

(declare-fun m!3117239 () Bool)

(assert (=> b!2717997 m!3117239))

(declare-fun m!3117241 () Bool)

(assert (=> b!2718007 m!3117241))

(declare-fun m!3117243 () Bool)

(assert (=> b!2718007 m!3117243))

(declare-fun m!3117245 () Bool)

(assert (=> b!2718004 m!3117245))

(declare-fun m!3117247 () Bool)

(assert (=> b!2718000 m!3117247))

(declare-fun m!3117249 () Bool)

(assert (=> b!2717991 m!3117249))

(declare-fun m!3117251 () Bool)

(assert (=> b!2718003 m!3117251))

(declare-fun m!3117253 () Bool)

(assert (=> b!2717994 m!3117253))

(declare-fun m!3117255 () Bool)

(assert (=> b!2717990 m!3117255))

(declare-fun m!3117257 () Bool)

(assert (=> b!2717990 m!3117257))

(declare-fun m!3117259 () Bool)

(assert (=> b!2718006 m!3117259))

(declare-fun m!3117261 () Bool)

(assert (=> b!2718006 m!3117261))

(declare-fun m!3117263 () Bool)

(assert (=> b!2718006 m!3117263))

(declare-fun m!3117265 () Bool)

(assert (=> b!2718006 m!3117265))

(declare-fun m!3117267 () Bool)

(assert (=> b!2718006 m!3117267))

(declare-fun m!3117269 () Bool)

(assert (=> b!2718006 m!3117269))

(declare-fun m!3117271 () Bool)

(assert (=> b!2718006 m!3117271))

(declare-fun m!3117273 () Bool)

(assert (=> b!2718006 m!3117273))

(declare-fun m!3117275 () Bool)

(assert (=> b!2718006 m!3117275))

(declare-fun m!3117277 () Bool)

(assert (=> b!2718006 m!3117277))

(declare-fun m!3117279 () Bool)

(assert (=> b!2718006 m!3117279))

(declare-fun m!3117281 () Bool)

(assert (=> b!2718006 m!3117281))

(declare-fun m!3117283 () Bool)

(assert (=> b!2718006 m!3117283))

(declare-fun m!3117285 () Bool)

(assert (=> b!2718006 m!3117285))

(declare-fun m!3117287 () Bool)

(assert (=> b!2718006 m!3117287))

(declare-fun m!3117289 () Bool)

(assert (=> b!2718006 m!3117289))

(declare-fun m!3117291 () Bool)

(assert (=> b!2718006 m!3117291))

(assert (=> b!2718006 m!3117283))

(declare-fun m!3117293 () Bool)

(assert (=> b!2718006 m!3117293))

(declare-fun m!3117295 () Bool)

(assert (=> b!2718006 m!3117295))

(declare-fun m!3117297 () Bool)

(assert (=> b!2718006 m!3117297))

(assert (=> b!2718006 m!3117291))

(declare-fun m!3117299 () Bool)

(assert (=> b!2718006 m!3117299))

(declare-fun m!3117301 () Bool)

(assert (=> b!2718006 m!3117301))

(declare-fun m!3117303 () Bool)

(assert (=> b!2718006 m!3117303))

(declare-fun m!3117305 () Bool)

(assert (=> b!2718006 m!3117305))

(declare-fun m!3117307 () Bool)

(assert (=> b!2718006 m!3117307))

(assert (=> b!2718006 m!3117261))

(assert (=> b!2718006 m!3117295))

(declare-fun m!3117309 () Bool)

(assert (=> b!2717996 m!3117309))

(declare-fun m!3117311 () Bool)

(assert (=> b!2717996 m!3117311))

(declare-fun m!3117313 () Bool)

(assert (=> b!2718002 m!3117313))

(declare-fun m!3117315 () Bool)

(assert (=> b!2718002 m!3117315))

(declare-fun m!3117317 () Bool)

(assert (=> b!2718002 m!3117317))

(declare-fun m!3117319 () Bool)

(assert (=> start!263744 m!3117319))

(declare-fun m!3117321 () Bool)

(assert (=> start!263744 m!3117321))

(declare-fun m!3117323 () Bool)

(assert (=> start!263744 m!3117323))

(declare-fun m!3117325 () Bool)

(assert (=> start!263744 m!3117325))

(declare-fun m!3117327 () Bool)

(assert (=> b!2717998 m!3117327))

(check-sat (not b!2718004) (not b!2718002) b_and!200337 (not b_next!77289) (not b!2718000) (not b_next!77291) (not b!2717996) b_and!200339 (not b!2717998) (not b!2717992) (not b!2717989) (not b!2717993) (not b!2717999) (not b!2718003) (not b!2717997) (not b!2718006) (not b!2717990) (not b!2718007) (not b!2717991) (not start!263744) (not b!2717995) (not b!2717994))
(check-sat b_and!200339 b_and!200337 (not b_next!77291) (not b_next!77289))
