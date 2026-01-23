; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378444 () Bool)

(assert start!378444)

(declare-fun b!4019054 () Bool)

(declare-fun b_free!111841 () Bool)

(declare-fun b_next!112545 () Bool)

(assert (=> b!4019054 (= b_free!111841 (not b_next!112545))))

(declare-fun tp!1221890 () Bool)

(declare-fun b_and!308743 () Bool)

(assert (=> b!4019054 (= tp!1221890 b_and!308743)))

(declare-fun b_free!111843 () Bool)

(declare-fun b_next!112547 () Bool)

(assert (=> b!4019054 (= b_free!111843 (not b_next!112547))))

(declare-fun tp!1221891 () Bool)

(declare-fun b_and!308745 () Bool)

(assert (=> b!4019054 (= tp!1221891 b_and!308745)))

(declare-fun b!4019081 () Bool)

(declare-fun b_free!111845 () Bool)

(declare-fun b_next!112549 () Bool)

(assert (=> b!4019081 (= b_free!111845 (not b_next!112549))))

(declare-fun tp!1221889 () Bool)

(declare-fun b_and!308747 () Bool)

(assert (=> b!4019081 (= tp!1221889 b_and!308747)))

(declare-fun b_free!111847 () Bool)

(declare-fun b_next!112551 () Bool)

(assert (=> b!4019081 (= b_free!111847 (not b_next!112551))))

(declare-fun tp!1221896 () Bool)

(declare-fun b_and!308749 () Bool)

(assert (=> b!4019081 (= tp!1221896 b_and!308749)))

(declare-fun e!2493117 () Bool)

(assert (=> b!4019054 (= e!2493117 (and tp!1221890 tp!1221891))))

(declare-fun b!4019055 () Bool)

(declare-fun e!2493105 () Bool)

(declare-fun e!2493129 () Bool)

(assert (=> b!4019055 (= e!2493105 e!2493129)))

(declare-fun res!1635130 () Bool)

(assert (=> b!4019055 (=> res!1635130 e!2493129)))

(declare-datatypes ((C!23712 0))(
  ( (C!23713 (val!13950 Int)) )
))
(declare-datatypes ((List!43148 0))(
  ( (Nil!43024) (Cons!43024 (h!48444 C!23712) (t!333481 List!43148)) )
))
(declare-fun lt!1426834 () List!43148)

(declare-fun lt!1426830 () List!43148)

(assert (=> b!4019055 (= res!1635130 (not (= lt!1426834 lt!1426830)))))

(declare-fun lt!1426838 () List!43148)

(declare-fun lt!1426819 () List!43148)

(declare-fun ++!11260 (List!43148 List!43148) List!43148)

(assert (=> b!4019055 (= lt!1426834 (++!11260 lt!1426838 lt!1426819))))

(declare-fun getSuffix!2370 (List!43148 List!43148) List!43148)

(assert (=> b!4019055 (= lt!1426819 (getSuffix!2370 lt!1426830 lt!1426838))))

(declare-fun e!2493098 () Bool)

(assert (=> b!4019055 e!2493098))

(declare-fun res!1635115 () Bool)

(assert (=> b!4019055 (=> (not res!1635115) (not e!2493098))))

(declare-fun isPrefix!3945 (List!43148 List!43148) Bool)

(assert (=> b!4019055 (= res!1635115 (isPrefix!3945 lt!1426830 lt!1426830))))

(declare-datatypes ((Unit!62129 0))(
  ( (Unit!62130) )
))
(declare-fun lt!1426803 () Unit!62129)

(declare-fun lemmaIsPrefixRefl!2521 (List!43148 List!43148) Unit!62129)

(assert (=> b!4019055 (= lt!1426803 (lemmaIsPrefixRefl!2521 lt!1426830 lt!1426830))))

(declare-fun b!4019056 () Bool)

(declare-fun e!2493099 () Bool)

(declare-fun tp_is_empty!20497 () Bool)

(declare-fun tp!1221897 () Bool)

(assert (=> b!4019056 (= e!2493099 (and tp_is_empty!20497 tp!1221897))))

(declare-fun b!4019057 () Bool)

(declare-fun e!2493103 () Bool)

(declare-fun tp!1221898 () Bool)

(assert (=> b!4019057 (= e!2493103 (and tp_is_empty!20497 tp!1221898))))

(declare-fun b!4019058 () Bool)

(declare-fun e!2493109 () Bool)

(declare-fun e!2493097 () Bool)

(assert (=> b!4019058 (= e!2493109 e!2493097)))

(declare-fun res!1635117 () Bool)

(assert (=> b!4019058 (=> res!1635117 e!2493097)))

(declare-fun lt!1426837 () List!43148)

(assert (=> b!4019058 (= res!1635117 (not (= lt!1426837 lt!1426830)))))

(declare-fun prefix!494 () List!43148)

(declare-fun lt!1426787 () List!43148)

(assert (=> b!4019058 (= lt!1426837 (++!11260 prefix!494 lt!1426787))))

(declare-fun lt!1426804 () List!43148)

(declare-fun lt!1426822 () List!43148)

(assert (=> b!4019058 (= lt!1426837 (++!11260 lt!1426804 lt!1426822))))

(declare-fun lt!1426802 () Unit!62129)

(declare-fun newSuffix!27 () List!43148)

(declare-fun lemmaConcatAssociativity!2570 (List!43148 List!43148 List!43148) Unit!62129)

(assert (=> b!4019058 (= lt!1426802 (lemmaConcatAssociativity!2570 prefix!494 newSuffix!27 lt!1426822))))

(declare-fun b!4019059 () Bool)

(declare-fun e!2493128 () Bool)

(declare-fun e!2493111 () Bool)

(assert (=> b!4019059 (= e!2493128 e!2493111)))

(declare-fun res!1635124 () Bool)

(assert (=> b!4019059 (=> (not res!1635124) (not e!2493111))))

(declare-datatypes ((IArray!26143 0))(
  ( (IArray!26144 (innerList!13129 List!43148)) )
))
(declare-datatypes ((Conc!13069 0))(
  ( (Node!13069 (left!32432 Conc!13069) (right!32762 Conc!13069) (csize!26368 Int) (cheight!13280 Int)) (Leaf!20205 (xs!16375 IArray!26143) (csize!26369 Int)) (Empty!13069) )
))
(declare-datatypes ((BalanceConc!25732 0))(
  ( (BalanceConc!25733 (c!694522 Conc!13069)) )
))
(declare-datatypes ((List!43149 0))(
  ( (Nil!43025) (Cons!43025 (h!48445 (_ BitVec 16)) (t!333482 List!43149)) )
))
(declare-datatypes ((TokenValue!7088 0))(
  ( (FloatLiteralValue!14176 (text!50061 List!43149)) (TokenValueExt!7087 (__x!26393 Int)) (Broken!35440 (value!216061 List!43149)) (Object!7211) (End!7088) (Def!7088) (Underscore!7088) (Match!7088) (Else!7088) (Error!7088) (Case!7088) (If!7088) (Extends!7088) (Abstract!7088) (Class!7088) (Val!7088) (DelimiterValue!14176 (del!7148 List!43149)) (KeywordValue!7094 (value!216062 List!43149)) (CommentValue!14176 (value!216063 List!43149)) (WhitespaceValue!14176 (value!216064 List!43149)) (IndentationValue!7088 (value!216065 List!43149)) (String!49157) (Int32!7088) (Broken!35441 (value!216066 List!43149)) (Boolean!7089) (Unit!62131) (OperatorValue!7091 (op!7148 List!43149)) (IdentifierValue!14176 (value!216067 List!43149)) (IdentifierValue!14177 (value!216068 List!43149)) (WhitespaceValue!14177 (value!216069 List!43149)) (True!14176) (False!14176) (Broken!35442 (value!216070 List!43149)) (Broken!35443 (value!216071 List!43149)) (True!14177) (RightBrace!7088) (RightBracket!7088) (Colon!7088) (Null!7088) (Comma!7088) (LeftBracket!7088) (False!14177) (LeftBrace!7088) (ImaginaryLiteralValue!7088 (text!50062 List!43149)) (StringLiteralValue!21264 (value!216072 List!43149)) (EOFValue!7088 (value!216073 List!43149)) (IdentValue!7088 (value!216074 List!43149)) (DelimiterValue!14177 (value!216075 List!43149)) (DedentValue!7088 (value!216076 List!43149)) (NewLineValue!7088 (value!216077 List!43149)) (IntegerValue!21264 (value!216078 (_ BitVec 32)) (text!50063 List!43149)) (IntegerValue!21265 (value!216079 Int) (text!50064 List!43149)) (Times!7088) (Or!7088) (Equal!7088) (Minus!7088) (Broken!35444 (value!216080 List!43149)) (And!7088) (Div!7088) (LessEqual!7088) (Mod!7088) (Concat!18851) (Not!7088) (Plus!7088) (SpaceValue!7088 (value!216081 List!43149)) (IntegerValue!21266 (value!216082 Int) (text!50065 List!43149)) (StringLiteralValue!21265 (text!50066 List!43149)) (FloatLiteralValue!14177 (text!50067 List!43149)) (BytesLiteralValue!7088 (value!216083 List!43149)) (CommentValue!14177 (value!216084 List!43149)) (StringLiteralValue!21266 (value!216085 List!43149)) (ErrorTokenValue!7088 (msg!7149 List!43149)) )
))
(declare-datatypes ((Regex!11763 0))(
  ( (ElementMatch!11763 (c!694523 C!23712)) (Concat!18852 (regOne!24038 Regex!11763) (regTwo!24038 Regex!11763)) (EmptyExpr!11763) (Star!11763 (reg!12092 Regex!11763)) (EmptyLang!11763) (Union!11763 (regOne!24039 Regex!11763) (regTwo!24039 Regex!11763)) )
))
(declare-datatypes ((String!49158 0))(
  ( (String!49159 (value!216086 String)) )
))
(declare-datatypes ((TokenValueInjection!13604 0))(
  ( (TokenValueInjection!13605 (toValue!9366 Int) (toChars!9225 Int)) )
))
(declare-datatypes ((Rule!13516 0))(
  ( (Rule!13517 (regex!6858 Regex!11763) (tag!7718 String!49158) (isSeparator!6858 Bool) (transformation!6858 TokenValueInjection!13604)) )
))
(declare-datatypes ((Token!12854 0))(
  ( (Token!12855 (value!216087 TokenValue!7088) (rule!9910 Rule!13516) (size!32167 Int) (originalCharacters!7458 List!43148)) )
))
(declare-datatypes ((tuple2!42154 0))(
  ( (tuple2!42155 (_1!24211 Token!12854) (_2!24211 List!43148)) )
))
(declare-datatypes ((Option!9272 0))(
  ( (None!9271) (Some!9271 (v!39645 tuple2!42154)) )
))
(declare-fun lt!1426792 () Option!9272)

(declare-fun lt!1426789 () Option!9272)

(assert (=> b!4019059 (= res!1635124 (= lt!1426792 lt!1426789))))

(declare-fun lt!1426800 () tuple2!42154)

(assert (=> b!4019059 (= lt!1426789 (Some!9271 lt!1426800))))

(declare-datatypes ((LexerInterface!6447 0))(
  ( (LexerInterfaceExt!6444 (__x!26394 Int)) (Lexer!6445) )
))
(declare-fun thiss!21717 () LexerInterface!6447)

(declare-datatypes ((List!43150 0))(
  ( (Nil!43026) (Cons!43026 (h!48446 Rule!13516) (t!333483 List!43150)) )
))
(declare-fun rules!2999 () List!43150)

(declare-fun maxPrefix!3745 (LexerInterface!6447 List!43150 List!43148) Option!9272)

(assert (=> b!4019059 (= lt!1426792 (maxPrefix!3745 thiss!21717 rules!2999 lt!1426830))))

(declare-fun token!484 () Token!12854)

(declare-fun suffixResult!105 () List!43148)

(assert (=> b!4019059 (= lt!1426800 (tuple2!42155 token!484 suffixResult!105))))

(declare-fun suffix!1299 () List!43148)

(assert (=> b!4019059 (= lt!1426830 (++!11260 prefix!494 suffix!1299))))

(declare-fun b!4019060 () Bool)

(declare-fun res!1635125 () Bool)

(assert (=> b!4019060 (=> (not res!1635125) (not e!2493098))))

(declare-fun size!32168 (List!43148) Int)

(assert (=> b!4019060 (= res!1635125 (= (size!32167 token!484) (size!32168 (originalCharacters!7458 token!484))))))

(declare-fun b!4019061 () Bool)

(declare-fun e!2493125 () Bool)

(assert (=> b!4019061 (= e!2493097 e!2493125)))

(declare-fun res!1635131 () Bool)

(assert (=> b!4019061 (=> res!1635131 e!2493125)))

(declare-fun lt!1426785 () List!43148)

(assert (=> b!4019061 (= res!1635131 (not (isPrefix!3945 lt!1426785 lt!1426830)))))

(assert (=> b!4019061 (isPrefix!3945 lt!1426785 lt!1426837)))

(declare-fun lt!1426813 () Unit!62129)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!758 (List!43148 List!43148 List!43148) Unit!62129)

(assert (=> b!4019061 (= lt!1426813 (lemmaPrefixStaysPrefixWhenAddingToSuffix!758 lt!1426785 lt!1426804 lt!1426822))))

(declare-fun b!4019062 () Bool)

(declare-fun e!2493112 () Bool)

(assert (=> b!4019062 (= e!2493129 e!2493112)))

(declare-fun res!1635140 () Bool)

(assert (=> b!4019062 (=> res!1635140 e!2493112)))

(declare-fun lt!1426816 () Option!9272)

(get-info :version)

(assert (=> b!4019062 (= res!1635140 (not ((_ is Some!9271) lt!1426816)))))

(assert (=> b!4019062 (= lt!1426816 (maxPrefix!3745 thiss!21717 rules!2999 lt!1426804))))

(declare-fun lt!1426814 () Token!12854)

(assert (=> b!4019062 (and (= suffixResult!105 lt!1426819) (= lt!1426800 (tuple2!42155 lt!1426814 lt!1426819)))))

(declare-fun lt!1426810 () Unit!62129)

(declare-fun lemmaSamePrefixThenSameSuffix!2116 (List!43148 List!43148 List!43148 List!43148 List!43148) Unit!62129)

(assert (=> b!4019062 (= lt!1426810 (lemmaSamePrefixThenSameSuffix!2116 lt!1426838 suffixResult!105 lt!1426838 lt!1426819 lt!1426830))))

(assert (=> b!4019062 (isPrefix!3945 lt!1426838 lt!1426834)))

(declare-fun lt!1426825 () Unit!62129)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2786 (List!43148 List!43148) Unit!62129)

(assert (=> b!4019062 (= lt!1426825 (lemmaConcatTwoListThenFirstIsPrefix!2786 lt!1426838 lt!1426819))))

(declare-fun b!4019063 () Bool)

(declare-fun e!2493102 () Unit!62129)

(declare-fun Unit!62132 () Unit!62129)

(assert (=> b!4019063 (= e!2493102 Unit!62132)))

(declare-fun b!4019064 () Bool)

(declare-fun res!1635136 () Bool)

(declare-fun e!2493104 () Bool)

(assert (=> b!4019064 (=> (not res!1635136) (not e!2493104))))

(assert (=> b!4019064 (= res!1635136 (isPrefix!3945 newSuffix!27 suffix!1299))))

(declare-fun b!4019065 () Bool)

(declare-fun e!2493122 () Bool)

(assert (=> b!4019065 (= e!2493122 false)))

(declare-fun e!2493119 () Bool)

(declare-fun b!4019066 () Bool)

(declare-fun tp!1221887 () Bool)

(declare-fun e!2493110 () Bool)

(declare-fun inv!21 (TokenValue!7088) Bool)

(assert (=> b!4019066 (= e!2493119 (and (inv!21 (value!216087 token!484)) e!2493110 tp!1221887))))

(declare-fun e!2493121 () Bool)

(declare-fun b!4019067 () Bool)

(declare-fun tp!1221892 () Bool)

(declare-fun inv!57462 (String!49158) Bool)

(declare-fun inv!57465 (TokenValueInjection!13604) Bool)

(assert (=> b!4019067 (= e!2493121 (and tp!1221892 (inv!57462 (tag!7718 (h!48446 rules!2999))) (inv!57465 (transformation!6858 (h!48446 rules!2999))) e!2493117))))

(declare-fun b!4019068 () Bool)

(declare-fun res!1635116 () Bool)

(assert (=> b!4019068 (=> (not res!1635116) (not e!2493104))))

(declare-fun isEmpty!25690 (List!43150) Bool)

(assert (=> b!4019068 (= res!1635116 (not (isEmpty!25690 rules!2999)))))

(declare-fun e!2493107 () Bool)

(declare-fun b!4019069 () Bool)

(assert (=> b!4019069 (= e!2493107 (= lt!1426792 (Some!9271 (tuple2!42155 lt!1426814 lt!1426819))))))

(declare-fun b!4019070 () Bool)

(declare-fun res!1635114 () Bool)

(assert (=> b!4019070 (=> res!1635114 e!2493125)))

(declare-fun lt!1426783 () List!43148)

(assert (=> b!4019070 (= res!1635114 (not (= lt!1426783 lt!1426804)))))

(declare-fun b!4019071 () Bool)

(declare-fun Unit!62133 () Unit!62129)

(assert (=> b!4019071 (= e!2493102 Unit!62133)))

(declare-fun lt!1426805 () Unit!62129)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!452 (LexerInterface!6447 List!43150 Rule!13516 List!43148 List!43148 List!43148 Rule!13516) Unit!62129)

(assert (=> b!4019071 (= lt!1426805 (lemmaMaxPrefixOutputsMaxPrefix!452 thiss!21717 rules!2999 (rule!9910 (_1!24211 (v!39645 lt!1426816))) lt!1426785 lt!1426804 lt!1426838 (rule!9910 token!484)))))

(assert (=> b!4019071 false))

(declare-fun b!4019072 () Bool)

(declare-fun e!2493115 () Bool)

(declare-fun tp!1221895 () Bool)

(assert (=> b!4019072 (= e!2493115 (and tp_is_empty!20497 tp!1221895))))

(declare-fun b!4019073 () Bool)

(declare-fun e!2493114 () Bool)

(declare-fun e!2493126 () Bool)

(assert (=> b!4019073 (= e!2493114 e!2493126)))

(declare-fun res!1635139 () Bool)

(assert (=> b!4019073 (=> res!1635139 e!2493126)))

(assert (=> b!4019073 (= res!1635139 (not (isPrefix!3945 lt!1426838 lt!1426830)))))

(assert (=> b!4019073 (isPrefix!3945 prefix!494 lt!1426830)))

(declare-fun lt!1426815 () Unit!62129)

(assert (=> b!4019073 (= lt!1426815 (lemmaConcatTwoListThenFirstIsPrefix!2786 prefix!494 suffix!1299))))

(declare-fun lt!1426801 () List!43148)

(assert (=> b!4019073 (isPrefix!3945 lt!1426838 lt!1426801)))

(declare-fun lt!1426784 () Unit!62129)

(assert (=> b!4019073 (= lt!1426784 (lemmaConcatTwoListThenFirstIsPrefix!2786 lt!1426838 suffixResult!105))))

(declare-fun b!4019074 () Bool)

(declare-fun res!1635129 () Bool)

(assert (=> b!4019074 (=> (not res!1635129) (not e!2493104))))

(declare-fun rulesInvariant!5790 (LexerInterface!6447 List!43150) Bool)

(assert (=> b!4019074 (= res!1635129 (rulesInvariant!5790 thiss!21717 rules!2999))))

(declare-fun b!4019075 () Bool)

(declare-fun e!2493116 () Bool)

(assert (=> b!4019075 (= e!2493116 e!2493105)))

(declare-fun res!1635138 () Bool)

(assert (=> b!4019075 (=> res!1635138 e!2493105)))

(declare-fun matchR!5724 (Regex!11763 List!43148) Bool)

(assert (=> b!4019075 (= res!1635138 (not (matchR!5724 (regex!6858 (rule!9910 token!484)) lt!1426838)))))

(assert (=> b!4019075 (isPrefix!3945 lt!1426838 lt!1426804)))

(declare-fun lt!1426786 () Unit!62129)

(assert (=> b!4019075 (= lt!1426786 (lemmaPrefixStaysPrefixWhenAddingToSuffix!758 lt!1426838 prefix!494 newSuffix!27))))

(declare-fun lt!1426836 () Unit!62129)

(assert (=> b!4019075 (= lt!1426836 (lemmaPrefixStaysPrefixWhenAddingToSuffix!758 lt!1426838 prefix!494 suffix!1299))))

(declare-fun b!4019076 () Bool)

(declare-fun e!2493095 () Bool)

(declare-fun tp!1221888 () Bool)

(assert (=> b!4019076 (= e!2493095 (and e!2493121 tp!1221888))))

(declare-fun b!4019077 () Bool)

(declare-fun e!2493124 () Bool)

(assert (=> b!4019077 (= e!2493124 e!2493109)))

(declare-fun res!1635141 () Bool)

(assert (=> b!4019077 (=> res!1635141 e!2493109)))

(assert (=> b!4019077 (= res!1635141 (not (= lt!1426787 suffix!1299)))))

(assert (=> b!4019077 (= lt!1426787 (++!11260 newSuffix!27 lt!1426822))))

(assert (=> b!4019077 (= lt!1426822 (getSuffix!2370 suffix!1299 newSuffix!27))))

(declare-fun b!4019078 () Bool)

(declare-fun e!2493118 () Bool)

(assert (=> b!4019078 (= e!2493125 e!2493118)))

(declare-fun res!1635119 () Bool)

(assert (=> b!4019078 (=> res!1635119 e!2493118)))

(declare-fun lt!1426791 () List!43148)

(assert (=> b!4019078 (= res!1635119 (not (= lt!1426791 lt!1426804)))))

(declare-fun lt!1426839 () List!43148)

(assert (=> b!4019078 (= lt!1426791 (++!11260 lt!1426785 lt!1426839))))

(assert (=> b!4019078 (= lt!1426839 (getSuffix!2370 lt!1426804 lt!1426785))))

(declare-fun b!4019079 () Bool)

(declare-fun e!2493106 () Bool)

(assert (=> b!4019079 (= e!2493126 e!2493106)))

(declare-fun res!1635133 () Bool)

(assert (=> b!4019079 (=> res!1635133 e!2493106)))

(declare-fun lt!1426811 () List!43148)

(assert (=> b!4019079 (= res!1635133 (not (= lt!1426811 prefix!494)))))

(declare-fun lt!1426829 () List!43148)

(assert (=> b!4019079 (= lt!1426811 (++!11260 lt!1426838 lt!1426829))))

(assert (=> b!4019079 (= lt!1426829 (getSuffix!2370 prefix!494 lt!1426838))))

(assert (=> b!4019079 (isPrefix!3945 lt!1426838 prefix!494)))

(declare-fun lt!1426807 () Unit!62129)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!517 (List!43148 List!43148 List!43148) Unit!62129)

(assert (=> b!4019079 (= lt!1426807 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!517 prefix!494 lt!1426838 lt!1426830))))

(declare-fun b!4019080 () Bool)

(declare-fun e!2493101 () Bool)

(assert (=> b!4019080 (= e!2493101 e!2493107)))

(declare-fun res!1635135 () Bool)

(assert (=> b!4019080 (=> res!1635135 e!2493107)))

(declare-fun getIndex!556 (List!43150 Rule!13516) Int)

(assert (=> b!4019080 (= res!1635135 (>= (getIndex!556 rules!2999 (rule!9910 (_1!24211 (v!39645 lt!1426816)))) (getIndex!556 rules!2999 (rule!9910 token!484))))))

(declare-fun newSuffixResult!27 () List!43148)

(assert (=> b!4019080 (= (_2!24211 (v!39645 lt!1426816)) newSuffixResult!27)))

(declare-fun lt!1426832 () Unit!62129)

(assert (=> b!4019080 (= lt!1426832 (lemmaSamePrefixThenSameSuffix!2116 lt!1426785 (_2!24211 (v!39645 lt!1426816)) lt!1426838 newSuffixResult!27 lt!1426804))))

(assert (=> b!4019080 (= lt!1426785 lt!1426838)))

(declare-fun lt!1426841 () Unit!62129)

(declare-fun lemmaIsPrefixSameLengthThenSameList!905 (List!43148 List!43148 List!43148) Unit!62129)

(assert (=> b!4019080 (= lt!1426841 (lemmaIsPrefixSameLengthThenSameList!905 lt!1426785 lt!1426838 lt!1426804))))

(declare-fun res!1635118 () Bool)

(assert (=> start!378444 (=> (not res!1635118) (not e!2493104))))

(assert (=> start!378444 (= res!1635118 ((_ is Lexer!6445) thiss!21717))))

(assert (=> start!378444 e!2493104))

(declare-fun e!2493113 () Bool)

(assert (=> start!378444 e!2493113))

(declare-fun inv!57466 (Token!12854) Bool)

(assert (=> start!378444 (and (inv!57466 token!484) e!2493119)))

(declare-fun e!2493094 () Bool)

(assert (=> start!378444 e!2493094))

(assert (=> start!378444 e!2493115))

(assert (=> start!378444 e!2493099))

(assert (=> start!378444 true))

(assert (=> start!378444 e!2493095))

(assert (=> start!378444 e!2493103))

(declare-fun b!4019053 () Bool)

(declare-fun tp!1221893 () Bool)

(assert (=> b!4019053 (= e!2493094 (and tp_is_empty!20497 tp!1221893))))

(declare-fun e!2493108 () Bool)

(assert (=> b!4019081 (= e!2493108 (and tp!1221889 tp!1221896))))

(declare-fun b!4019082 () Bool)

(assert (=> b!4019082 (= e!2493112 e!2493124)))

(declare-fun res!1635121 () Bool)

(assert (=> b!4019082 (=> res!1635121 e!2493124)))

(declare-fun lt!1426824 () Option!9272)

(assert (=> b!4019082 (= res!1635121 (not (= lt!1426824 (Some!9271 (v!39645 lt!1426816)))))))

(assert (=> b!4019082 (isPrefix!3945 lt!1426785 (++!11260 lt!1426785 newSuffixResult!27))))

(declare-fun lt!1426809 () Unit!62129)

(assert (=> b!4019082 (= lt!1426809 (lemmaConcatTwoListThenFirstIsPrefix!2786 lt!1426785 newSuffixResult!27))))

(assert (=> b!4019082 (isPrefix!3945 lt!1426785 lt!1426783)))

(assert (=> b!4019082 (= lt!1426783 (++!11260 lt!1426785 (_2!24211 (v!39645 lt!1426816))))))

(declare-fun lt!1426794 () Unit!62129)

(assert (=> b!4019082 (= lt!1426794 (lemmaConcatTwoListThenFirstIsPrefix!2786 lt!1426785 (_2!24211 (v!39645 lt!1426816))))))

(declare-fun lt!1426828 () TokenValue!7088)

(declare-fun lt!1426826 () Int)

(assert (=> b!4019082 (= lt!1426824 (Some!9271 (tuple2!42155 (Token!12855 lt!1426828 (rule!9910 (_1!24211 (v!39645 lt!1426816))) lt!1426826 lt!1426785) (_2!24211 (v!39645 lt!1426816)))))))

(declare-fun maxPrefixOneRule!2765 (LexerInterface!6447 Rule!13516 List!43148) Option!9272)

(assert (=> b!4019082 (= lt!1426824 (maxPrefixOneRule!2765 thiss!21717 (rule!9910 (_1!24211 (v!39645 lt!1426816))) lt!1426804))))

(assert (=> b!4019082 (= lt!1426826 (size!32168 lt!1426785))))

(declare-fun apply!10055 (TokenValueInjection!13604 BalanceConc!25732) TokenValue!7088)

(declare-fun seqFromList!5083 (List!43148) BalanceConc!25732)

(assert (=> b!4019082 (= lt!1426828 (apply!10055 (transformation!6858 (rule!9910 (_1!24211 (v!39645 lt!1426816)))) (seqFromList!5083 lt!1426785)))))

(declare-fun lt!1426798 () Unit!62129)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1583 (LexerInterface!6447 List!43150 List!43148 List!43148 List!43148 Rule!13516) Unit!62129)

(assert (=> b!4019082 (= lt!1426798 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1583 thiss!21717 rules!2999 lt!1426785 lt!1426804 (_2!24211 (v!39645 lt!1426816)) (rule!9910 (_1!24211 (v!39645 lt!1426816)))))))

(declare-fun list!15994 (BalanceConc!25732) List!43148)

(declare-fun charsOf!4674 (Token!12854) BalanceConc!25732)

(assert (=> b!4019082 (= lt!1426785 (list!15994 (charsOf!4674 (_1!24211 (v!39645 lt!1426816)))))))

(declare-fun lt!1426795 () Unit!62129)

(declare-fun lemmaInv!1073 (TokenValueInjection!13604) Unit!62129)

(assert (=> b!4019082 (= lt!1426795 (lemmaInv!1073 (transformation!6858 (rule!9910 (_1!24211 (v!39645 lt!1426816))))))))

(declare-fun ruleValid!2790 (LexerInterface!6447 Rule!13516) Bool)

(assert (=> b!4019082 (ruleValid!2790 thiss!21717 (rule!9910 (_1!24211 (v!39645 lt!1426816))))))

(declare-fun lt!1426817 () Unit!62129)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1864 (LexerInterface!6447 Rule!13516 List!43150) Unit!62129)

(assert (=> b!4019082 (= lt!1426817 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1864 thiss!21717 (rule!9910 (_1!24211 (v!39645 lt!1426816))) rules!2999))))

(declare-fun lt!1426806 () Unit!62129)

(declare-fun lemmaCharactersSize!1417 (Token!12854) Unit!62129)

(assert (=> b!4019082 (= lt!1426806 (lemmaCharactersSize!1417 token!484))))

(declare-fun lt!1426818 () Unit!62129)

(assert (=> b!4019082 (= lt!1426818 (lemmaCharactersSize!1417 (_1!24211 (v!39645 lt!1426816))))))

(declare-fun b!4019083 () Bool)

(declare-fun e!2493120 () Bool)

(assert (=> b!4019083 (= e!2493104 e!2493120)))

(declare-fun res!1635126 () Bool)

(assert (=> b!4019083 (=> (not res!1635126) (not e!2493120))))

(declare-fun lt!1426812 () Int)

(declare-fun lt!1426843 () Int)

(assert (=> b!4019083 (= res!1635126 (>= lt!1426812 lt!1426843))))

(assert (=> b!4019083 (= lt!1426843 (size!32168 lt!1426838))))

(assert (=> b!4019083 (= lt!1426812 (size!32168 prefix!494))))

(assert (=> b!4019083 (= lt!1426838 (list!15994 (charsOf!4674 token!484)))))

(declare-fun b!4019084 () Bool)

(declare-fun e!2493123 () Unit!62129)

(declare-fun Unit!62134 () Unit!62129)

(assert (=> b!4019084 (= e!2493123 Unit!62134)))

(declare-fun b!4019085 () Bool)

(declare-fun tp!1221894 () Bool)

(assert (=> b!4019085 (= e!2493113 (and tp_is_empty!20497 tp!1221894))))

(declare-fun b!4019086 () Bool)

(declare-fun res!1635113 () Bool)

(assert (=> b!4019086 (=> res!1635113 e!2493101)))

(assert (=> b!4019086 (= res!1635113 (not (isPrefix!3945 lt!1426785 lt!1426804)))))

(declare-fun b!4019087 () Bool)

(declare-fun e!2493130 () Bool)

(assert (=> b!4019087 (= e!2493106 e!2493130)))

(declare-fun res!1635128 () Bool)

(assert (=> b!4019087 (=> res!1635128 e!2493130)))

(declare-fun lt!1426790 () List!43148)

(declare-fun lt!1426797 () List!43148)

(assert (=> b!4019087 (= res!1635128 (or (not (= lt!1426830 lt!1426797)) (not (= lt!1426830 lt!1426790))))))

(assert (=> b!4019087 (= lt!1426797 lt!1426790)))

(declare-fun lt!1426796 () List!43148)

(assert (=> b!4019087 (= lt!1426790 (++!11260 lt!1426838 lt!1426796))))

(assert (=> b!4019087 (= lt!1426797 (++!11260 lt!1426811 suffix!1299))))

(assert (=> b!4019087 (= lt!1426796 (++!11260 lt!1426829 suffix!1299))))

(declare-fun lt!1426821 () Unit!62129)

(assert (=> b!4019087 (= lt!1426821 (lemmaConcatAssociativity!2570 lt!1426838 lt!1426829 suffix!1299))))

(declare-fun b!4019088 () Bool)

(assert (=> b!4019088 (= e!2493120 e!2493128)))

(declare-fun res!1635132 () Bool)

(assert (=> b!4019088 (=> (not res!1635132) (not e!2493128))))

(declare-fun lt!1426823 () List!43148)

(assert (=> b!4019088 (= res!1635132 (= lt!1426823 lt!1426804))))

(assert (=> b!4019088 (= lt!1426804 (++!11260 prefix!494 newSuffix!27))))

(assert (=> b!4019088 (= lt!1426823 (++!11260 lt!1426838 newSuffixResult!27))))

(declare-fun b!4019089 () Bool)

(assert (=> b!4019089 (= e!2493111 (not e!2493114))))

(declare-fun res!1635120 () Bool)

(assert (=> b!4019089 (=> res!1635120 e!2493114)))

(assert (=> b!4019089 (= res!1635120 (not (= lt!1426801 lt!1426830)))))

(assert (=> b!4019089 (= lt!1426801 (++!11260 lt!1426838 suffixResult!105))))

(declare-fun lt!1426833 () Unit!62129)

(assert (=> b!4019089 (= lt!1426833 (lemmaInv!1073 (transformation!6858 (rule!9910 token!484))))))

(assert (=> b!4019089 (ruleValid!2790 thiss!21717 (rule!9910 token!484))))

(declare-fun lt!1426831 () Unit!62129)

(assert (=> b!4019089 (= lt!1426831 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1864 thiss!21717 (rule!9910 token!484) rules!2999))))

(declare-fun b!4019090 () Bool)

(declare-fun res!1635127 () Bool)

(assert (=> b!4019090 (=> (not res!1635127) (not e!2493104))))

(assert (=> b!4019090 (= res!1635127 (>= (size!32168 suffix!1299) (size!32168 newSuffix!27)))))

(declare-fun b!4019091 () Bool)

(declare-fun Unit!62135 () Unit!62129)

(assert (=> b!4019091 (= e!2493123 Unit!62135)))

(declare-fun lt!1426788 () Unit!62129)

(assert (=> b!4019091 (= lt!1426788 (lemmaMaxPrefixOutputsMaxPrefix!452 thiss!21717 rules!2999 (rule!9910 token!484) lt!1426838 lt!1426830 lt!1426785 (rule!9910 (_1!24211 (v!39645 lt!1426816)))))))

(declare-fun res!1635123 () Bool)

(assert (=> b!4019091 (= res!1635123 (not (matchR!5724 (regex!6858 (rule!9910 (_1!24211 (v!39645 lt!1426816)))) lt!1426785)))))

(assert (=> b!4019091 (=> (not res!1635123) (not e!2493122))))

(assert (=> b!4019091 e!2493122))

(declare-fun b!4019092 () Bool)

(declare-fun res!1635134 () Bool)

(assert (=> b!4019092 (=> (not res!1635134) (not e!2493098))))

(declare-fun lt!1426782 () TokenValue!7088)

(assert (=> b!4019092 (= res!1635134 (= (value!216087 token!484) lt!1426782))))

(declare-fun tp!1221886 () Bool)

(declare-fun b!4019093 () Bool)

(assert (=> b!4019093 (= e!2493110 (and tp!1221886 (inv!57462 (tag!7718 (rule!9910 token!484))) (inv!57465 (transformation!6858 (rule!9910 token!484))) e!2493108))))

(declare-fun b!4019094 () Bool)

(assert (=> b!4019094 (= e!2493118 e!2493101)))

(declare-fun res!1635122 () Bool)

(assert (=> b!4019094 (=> res!1635122 e!2493101)))

(assert (=> b!4019094 (= res!1635122 (not (= lt!1426843 lt!1426826)))))

(declare-fun lt!1426827 () Unit!62129)

(assert (=> b!4019094 (= lt!1426827 e!2493102)))

(declare-fun c!694521 () Bool)

(assert (=> b!4019094 (= c!694521 (< lt!1426826 lt!1426843))))

(declare-fun lt!1426820 () Unit!62129)

(assert (=> b!4019094 (= lt!1426820 e!2493123)))

(declare-fun c!694520 () Bool)

(assert (=> b!4019094 (= c!694520 (> lt!1426826 lt!1426843))))

(assert (=> b!4019094 (= (_2!24211 (v!39645 lt!1426816)) lt!1426839)))

(declare-fun lt!1426793 () Unit!62129)

(assert (=> b!4019094 (= lt!1426793 (lemmaSamePrefixThenSameSuffix!2116 lt!1426785 (_2!24211 (v!39645 lt!1426816)) lt!1426785 lt!1426839 lt!1426804))))

(assert (=> b!4019094 (isPrefix!3945 lt!1426785 lt!1426791)))

(declare-fun lt!1426799 () Unit!62129)

(assert (=> b!4019094 (= lt!1426799 (lemmaConcatTwoListThenFirstIsPrefix!2786 lt!1426785 lt!1426839))))

(declare-fun b!4019095 () Bool)

(assert (=> b!4019095 (= e!2493098 (and (= (size!32167 token!484) lt!1426843) (= (originalCharacters!7458 token!484) lt!1426838)))))

(declare-fun b!4019096 () Bool)

(assert (=> b!4019096 (= e!2493130 e!2493116)))

(declare-fun res!1635137 () Bool)

(assert (=> b!4019096 (=> res!1635137 e!2493116)))

(declare-fun lt!1426840 () Option!9272)

(assert (=> b!4019096 (= res!1635137 (not (= lt!1426840 lt!1426789)))))

(assert (=> b!4019096 (= lt!1426840 (Some!9271 (tuple2!42155 lt!1426814 suffixResult!105)))))

(assert (=> b!4019096 (= lt!1426840 (maxPrefixOneRule!2765 thiss!21717 (rule!9910 token!484) lt!1426830))))

(assert (=> b!4019096 (= lt!1426814 (Token!12855 lt!1426782 (rule!9910 token!484) lt!1426843 lt!1426838))))

(assert (=> b!4019096 (= lt!1426782 (apply!10055 (transformation!6858 (rule!9910 token!484)) (seqFromList!5083 lt!1426838)))))

(declare-fun lt!1426842 () Unit!62129)

(assert (=> b!4019096 (= lt!1426842 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1583 thiss!21717 rules!2999 lt!1426838 lt!1426830 suffixResult!105 (rule!9910 token!484)))))

(assert (=> b!4019096 (= lt!1426796 suffixResult!105)))

(declare-fun lt!1426808 () Unit!62129)

(assert (=> b!4019096 (= lt!1426808 (lemmaSamePrefixThenSameSuffix!2116 lt!1426838 lt!1426796 lt!1426838 suffixResult!105 lt!1426830))))

(assert (=> b!4019096 (isPrefix!3945 lt!1426838 lt!1426790)))

(declare-fun lt!1426835 () Unit!62129)

(assert (=> b!4019096 (= lt!1426835 (lemmaConcatTwoListThenFirstIsPrefix!2786 lt!1426838 lt!1426796))))

(assert (= (and start!378444 res!1635118) b!4019068))

(assert (= (and b!4019068 res!1635116) b!4019074))

(assert (= (and b!4019074 res!1635129) b!4019090))

(assert (= (and b!4019090 res!1635127) b!4019064))

(assert (= (and b!4019064 res!1635136) b!4019083))

(assert (= (and b!4019083 res!1635126) b!4019088))

(assert (= (and b!4019088 res!1635132) b!4019059))

(assert (= (and b!4019059 res!1635124) b!4019089))

(assert (= (and b!4019089 (not res!1635120)) b!4019073))

(assert (= (and b!4019073 (not res!1635139)) b!4019079))

(assert (= (and b!4019079 (not res!1635133)) b!4019087))

(assert (= (and b!4019087 (not res!1635128)) b!4019096))

(assert (= (and b!4019096 (not res!1635137)) b!4019075))

(assert (= (and b!4019075 (not res!1635138)) b!4019055))

(assert (= (and b!4019055 res!1635115) b!4019092))

(assert (= (and b!4019092 res!1635134) b!4019060))

(assert (= (and b!4019060 res!1635125) b!4019095))

(assert (= (and b!4019055 (not res!1635130)) b!4019062))

(assert (= (and b!4019062 (not res!1635140)) b!4019082))

(assert (= (and b!4019082 (not res!1635121)) b!4019077))

(assert (= (and b!4019077 (not res!1635141)) b!4019058))

(assert (= (and b!4019058 (not res!1635117)) b!4019061))

(assert (= (and b!4019061 (not res!1635131)) b!4019070))

(assert (= (and b!4019070 (not res!1635114)) b!4019078))

(assert (= (and b!4019078 (not res!1635119)) b!4019094))

(assert (= (and b!4019094 c!694520) b!4019091))

(assert (= (and b!4019094 (not c!694520)) b!4019084))

(assert (= (and b!4019091 res!1635123) b!4019065))

(assert (= (and b!4019094 c!694521) b!4019071))

(assert (= (and b!4019094 (not c!694521)) b!4019063))

(assert (= (and b!4019094 (not res!1635122)) b!4019086))

(assert (= (and b!4019086 (not res!1635113)) b!4019080))

(assert (= (and b!4019080 (not res!1635135)) b!4019069))

(assert (= (and start!378444 ((_ is Cons!43024) prefix!494)) b!4019085))

(assert (= b!4019093 b!4019081))

(assert (= b!4019066 b!4019093))

(assert (= start!378444 b!4019066))

(assert (= (and start!378444 ((_ is Cons!43024) suffixResult!105)) b!4019053))

(assert (= (and start!378444 ((_ is Cons!43024) suffix!1299)) b!4019072))

(assert (= (and start!378444 ((_ is Cons!43024) newSuffix!27)) b!4019056))

(assert (= b!4019067 b!4019054))

(assert (= b!4019076 b!4019067))

(assert (= (and start!378444 ((_ is Cons!43026) rules!2999)) b!4019076))

(assert (= (and start!378444 ((_ is Cons!43024) newSuffixResult!27)) b!4019057))

(declare-fun m!4608515 () Bool)

(assert (=> b!4019062 m!4608515))

(declare-fun m!4608517 () Bool)

(assert (=> b!4019062 m!4608517))

(declare-fun m!4608519 () Bool)

(assert (=> b!4019062 m!4608519))

(declare-fun m!4608521 () Bool)

(assert (=> b!4019062 m!4608521))

(declare-fun m!4608523 () Bool)

(assert (=> b!4019073 m!4608523))

(declare-fun m!4608525 () Bool)

(assert (=> b!4019073 m!4608525))

(declare-fun m!4608527 () Bool)

(assert (=> b!4019073 m!4608527))

(declare-fun m!4608529 () Bool)

(assert (=> b!4019073 m!4608529))

(declare-fun m!4608531 () Bool)

(assert (=> b!4019073 m!4608531))

(declare-fun m!4608533 () Bool)

(assert (=> b!4019066 m!4608533))

(declare-fun m!4608535 () Bool)

(assert (=> b!4019082 m!4608535))

(declare-fun m!4608537 () Bool)

(assert (=> b!4019082 m!4608537))

(declare-fun m!4608539 () Bool)

(assert (=> b!4019082 m!4608539))

(declare-fun m!4608541 () Bool)

(assert (=> b!4019082 m!4608541))

(declare-fun m!4608543 () Bool)

(assert (=> b!4019082 m!4608543))

(declare-fun m!4608545 () Bool)

(assert (=> b!4019082 m!4608545))

(declare-fun m!4608547 () Bool)

(assert (=> b!4019082 m!4608547))

(declare-fun m!4608549 () Bool)

(assert (=> b!4019082 m!4608549))

(declare-fun m!4608551 () Bool)

(assert (=> b!4019082 m!4608551))

(declare-fun m!4608553 () Bool)

(assert (=> b!4019082 m!4608553))

(assert (=> b!4019082 m!4608553))

(declare-fun m!4608555 () Bool)

(assert (=> b!4019082 m!4608555))

(declare-fun m!4608557 () Bool)

(assert (=> b!4019082 m!4608557))

(assert (=> b!4019082 m!4608545))

(declare-fun m!4608559 () Bool)

(assert (=> b!4019082 m!4608559))

(declare-fun m!4608561 () Bool)

(assert (=> b!4019082 m!4608561))

(assert (=> b!4019082 m!4608557))

(declare-fun m!4608563 () Bool)

(assert (=> b!4019082 m!4608563))

(declare-fun m!4608565 () Bool)

(assert (=> b!4019082 m!4608565))

(declare-fun m!4608567 () Bool)

(assert (=> b!4019082 m!4608567))

(declare-fun m!4608569 () Bool)

(assert (=> b!4019082 m!4608569))

(declare-fun m!4608571 () Bool)

(assert (=> b!4019075 m!4608571))

(declare-fun m!4608573 () Bool)

(assert (=> b!4019075 m!4608573))

(declare-fun m!4608575 () Bool)

(assert (=> b!4019075 m!4608575))

(declare-fun m!4608577 () Bool)

(assert (=> b!4019075 m!4608577))

(declare-fun m!4608579 () Bool)

(assert (=> b!4019077 m!4608579))

(declare-fun m!4608581 () Bool)

(assert (=> b!4019077 m!4608581))

(declare-fun m!4608583 () Bool)

(assert (=> b!4019093 m!4608583))

(declare-fun m!4608585 () Bool)

(assert (=> b!4019093 m!4608585))

(declare-fun m!4608587 () Bool)

(assert (=> b!4019088 m!4608587))

(declare-fun m!4608589 () Bool)

(assert (=> b!4019088 m!4608589))

(declare-fun m!4608591 () Bool)

(assert (=> b!4019090 m!4608591))

(declare-fun m!4608593 () Bool)

(assert (=> b!4019090 m!4608593))

(declare-fun m!4608595 () Bool)

(assert (=> start!378444 m!4608595))

(declare-fun m!4608597 () Bool)

(assert (=> b!4019058 m!4608597))

(declare-fun m!4608599 () Bool)

(assert (=> b!4019058 m!4608599))

(declare-fun m!4608601 () Bool)

(assert (=> b!4019058 m!4608601))

(declare-fun m!4608603 () Bool)

(assert (=> b!4019068 m!4608603))

(declare-fun m!4608605 () Bool)

(assert (=> b!4019078 m!4608605))

(declare-fun m!4608607 () Bool)

(assert (=> b!4019078 m!4608607))

(declare-fun m!4608609 () Bool)

(assert (=> b!4019086 m!4608609))

(declare-fun m!4608611 () Bool)

(assert (=> b!4019094 m!4608611))

(declare-fun m!4608613 () Bool)

(assert (=> b!4019094 m!4608613))

(declare-fun m!4608615 () Bool)

(assert (=> b!4019094 m!4608615))

(declare-fun m!4608617 () Bool)

(assert (=> b!4019083 m!4608617))

(declare-fun m!4608619 () Bool)

(assert (=> b!4019083 m!4608619))

(declare-fun m!4608621 () Bool)

(assert (=> b!4019083 m!4608621))

(assert (=> b!4019083 m!4608621))

(declare-fun m!4608623 () Bool)

(assert (=> b!4019083 m!4608623))

(declare-fun m!4608625 () Bool)

(assert (=> b!4019064 m!4608625))

(declare-fun m!4608627 () Bool)

(assert (=> b!4019055 m!4608627))

(declare-fun m!4608629 () Bool)

(assert (=> b!4019055 m!4608629))

(declare-fun m!4608631 () Bool)

(assert (=> b!4019055 m!4608631))

(declare-fun m!4608633 () Bool)

(assert (=> b!4019055 m!4608633))

(declare-fun m!4608635 () Bool)

(assert (=> b!4019067 m!4608635))

(declare-fun m!4608637 () Bool)

(assert (=> b!4019067 m!4608637))

(declare-fun m!4608639 () Bool)

(assert (=> b!4019091 m!4608639))

(declare-fun m!4608641 () Bool)

(assert (=> b!4019091 m!4608641))

(declare-fun m!4608643 () Bool)

(assert (=> b!4019096 m!4608643))

(declare-fun m!4608645 () Bool)

(assert (=> b!4019096 m!4608645))

(declare-fun m!4608647 () Bool)

(assert (=> b!4019096 m!4608647))

(declare-fun m!4608649 () Bool)

(assert (=> b!4019096 m!4608649))

(declare-fun m!4608651 () Bool)

(assert (=> b!4019096 m!4608651))

(declare-fun m!4608653 () Bool)

(assert (=> b!4019096 m!4608653))

(declare-fun m!4608655 () Bool)

(assert (=> b!4019096 m!4608655))

(assert (=> b!4019096 m!4608645))

(declare-fun m!4608657 () Bool)

(assert (=> b!4019089 m!4608657))

(declare-fun m!4608659 () Bool)

(assert (=> b!4019089 m!4608659))

(declare-fun m!4608661 () Bool)

(assert (=> b!4019089 m!4608661))

(declare-fun m!4608663 () Bool)

(assert (=> b!4019089 m!4608663))

(declare-fun m!4608665 () Bool)

(assert (=> b!4019087 m!4608665))

(declare-fun m!4608667 () Bool)

(assert (=> b!4019087 m!4608667))

(declare-fun m!4608669 () Bool)

(assert (=> b!4019087 m!4608669))

(declare-fun m!4608671 () Bool)

(assert (=> b!4019087 m!4608671))

(declare-fun m!4608673 () Bool)

(assert (=> b!4019059 m!4608673))

(declare-fun m!4608675 () Bool)

(assert (=> b!4019059 m!4608675))

(declare-fun m!4608677 () Bool)

(assert (=> b!4019060 m!4608677))

(declare-fun m!4608679 () Bool)

(assert (=> b!4019074 m!4608679))

(declare-fun m!4608681 () Bool)

(assert (=> b!4019080 m!4608681))

(declare-fun m!4608683 () Bool)

(assert (=> b!4019080 m!4608683))

(declare-fun m!4608685 () Bool)

(assert (=> b!4019080 m!4608685))

(declare-fun m!4608687 () Bool)

(assert (=> b!4019080 m!4608687))

(declare-fun m!4608689 () Bool)

(assert (=> b!4019079 m!4608689))

(declare-fun m!4608691 () Bool)

(assert (=> b!4019079 m!4608691))

(declare-fun m!4608693 () Bool)

(assert (=> b!4019079 m!4608693))

(declare-fun m!4608695 () Bool)

(assert (=> b!4019079 m!4608695))

(declare-fun m!4608697 () Bool)

(assert (=> b!4019061 m!4608697))

(declare-fun m!4608699 () Bool)

(assert (=> b!4019061 m!4608699))

(declare-fun m!4608701 () Bool)

(assert (=> b!4019061 m!4608701))

(declare-fun m!4608703 () Bool)

(assert (=> b!4019071 m!4608703))

(check-sat (not b!4019077) (not b!4019082) (not b!4019090) (not b_next!112551) (not b!4019093) (not b!4019085) (not b!4019083) (not b!4019068) (not b!4019053) (not b!4019072) (not b!4019067) (not b!4019061) (not b!4019056) b_and!308749 tp_is_empty!20497 (not b!4019086) (not b!4019062) (not b!4019058) (not b!4019059) (not b!4019074) (not b!4019094) (not start!378444) (not b!4019075) (not b!4019080) (not b!4019064) (not b_next!112547) (not b_next!112545) (not b!4019088) b_and!308747 (not b!4019071) (not b!4019091) (not b!4019087) (not b!4019089) (not b!4019078) (not b!4019066) b_and!308743 (not b_next!112549) (not b!4019076) (not b!4019060) (not b!4019073) (not b!4019057) b_and!308745 (not b!4019055) (not b!4019079) (not b!4019096))
(check-sat b_and!308749 (not b_next!112551) b_and!308747 b_and!308745 (not b_next!112547) (not b_next!112545) b_and!308743 (not b_next!112549))
