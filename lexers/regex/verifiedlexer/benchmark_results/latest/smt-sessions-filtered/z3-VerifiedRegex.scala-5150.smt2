; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265528 () Bool)

(assert start!265528)

(declare-fun b!2739947 () Bool)

(declare-fun b_free!76873 () Bool)

(declare-fun b_next!77577 () Bool)

(assert (=> b!2739947 (= b_free!76873 (not b_next!77577))))

(declare-fun tp!861251 () Bool)

(declare-fun b_and!201589 () Bool)

(assert (=> b!2739947 (= tp!861251 b_and!201589)))

(declare-fun b_free!76875 () Bool)

(declare-fun b_next!77579 () Bool)

(assert (=> b!2739947 (= b_free!76875 (not b_next!77579))))

(declare-fun tp!861252 () Bool)

(declare-fun b_and!201591 () Bool)

(assert (=> b!2739947 (= tp!861252 b_and!201591)))

(declare-fun b!2739942 () Bool)

(declare-fun e!1725248 () Bool)

(declare-datatypes ((C!16088 0))(
  ( (C!16089 (val!9978 Int)) )
))
(declare-datatypes ((List!31529 0))(
  ( (Nil!31429) (Cons!31429 (h!36849 C!16088) (t!227599 List!31529)) )
))
(declare-datatypes ((IArray!19711 0))(
  ( (IArray!19712 (innerList!9913 List!31529)) )
))
(declare-datatypes ((Conc!9853 0))(
  ( (Node!9853 (left!24165 Conc!9853) (right!24495 Conc!9853) (csize!19936 Int) (cheight!10064 Int)) (Leaf!15004 (xs!12956 IArray!19711) (csize!19937 Int)) (Empty!9853) )
))
(declare-datatypes ((BalanceConc!19320 0))(
  ( (BalanceConc!19321 (c!444339 Conc!9853)) )
))
(declare-fun treated!9 () BalanceConc!19320)

(declare-fun tp!861253 () Bool)

(declare-fun inv!42753 (Conc!9853) Bool)

(assert (=> b!2739942 (= e!1725248 (and (inv!42753 (c!444339 treated!9)) tp!861253))))

(declare-fun b!2739943 () Bool)

(declare-fun e!1725241 () Bool)

(declare-datatypes ((List!31530 0))(
  ( (Nil!31430) (Cons!31430 (h!36850 (_ BitVec 16)) (t!227600 List!31530)) )
))
(declare-datatypes ((TokenValue!5035 0))(
  ( (FloatLiteralValue!10070 (text!35690 List!31530)) (TokenValueExt!5034 (__x!20205 Int)) (Broken!25175 (value!154757 List!31530)) (Object!5134) (End!5035) (Def!5035) (Underscore!5035) (Match!5035) (Else!5035) (Error!5035) (Case!5035) (If!5035) (Extends!5035) (Abstract!5035) (Class!5035) (Val!5035) (DelimiterValue!10070 (del!5095 List!31530)) (KeywordValue!5041 (value!154758 List!31530)) (CommentValue!10070 (value!154759 List!31530)) (WhitespaceValue!10070 (value!154760 List!31530)) (IndentationValue!5035 (value!154761 List!31530)) (String!35074) (Int32!5035) (Broken!25176 (value!154762 List!31530)) (Boolean!5036) (Unit!45451) (OperatorValue!5038 (op!5095 List!31530)) (IdentifierValue!10070 (value!154763 List!31530)) (IdentifierValue!10071 (value!154764 List!31530)) (WhitespaceValue!10071 (value!154765 List!31530)) (True!10070) (False!10070) (Broken!25177 (value!154766 List!31530)) (Broken!25178 (value!154767 List!31530)) (True!10071) (RightBrace!5035) (RightBracket!5035) (Colon!5035) (Null!5035) (Comma!5035) (LeftBracket!5035) (False!10071) (LeftBrace!5035) (ImaginaryLiteralValue!5035 (text!35691 List!31530)) (StringLiteralValue!15105 (value!154768 List!31530)) (EOFValue!5035 (value!154769 List!31530)) (IdentValue!5035 (value!154770 List!31530)) (DelimiterValue!10071 (value!154771 List!31530)) (DedentValue!5035 (value!154772 List!31530)) (NewLineValue!5035 (value!154773 List!31530)) (IntegerValue!15105 (value!154774 (_ BitVec 32)) (text!35692 List!31530)) (IntegerValue!15106 (value!154775 Int) (text!35693 List!31530)) (Times!5035) (Or!5035) (Equal!5035) (Minus!5035) (Broken!25179 (value!154776 List!31530)) (And!5035) (Div!5035) (LessEqual!5035) (Mod!5035) (Concat!13000) (Not!5035) (Plus!5035) (SpaceValue!5035 (value!154777 List!31530)) (IntegerValue!15107 (value!154778 Int) (text!35694 List!31530)) (StringLiteralValue!15106 (text!35695 List!31530)) (FloatLiteralValue!10071 (text!35696 List!31530)) (BytesLiteralValue!5035 (value!154779 List!31530)) (CommentValue!10071 (value!154780 List!31530)) (StringLiteralValue!15107 (value!154781 List!31530)) (ErrorTokenValue!5035 (msg!5096 List!31530)) )
))
(declare-datatypes ((Regex!7965 0))(
  ( (ElementMatch!7965 (c!444340 C!16088)) (Concat!13001 (regOne!16442 Regex!7965) (regTwo!16442 Regex!7965)) (EmptyExpr!7965) (Star!7965 (reg!8294 Regex!7965)) (EmptyLang!7965) (Union!7965 (regOne!16443 Regex!7965) (regTwo!16443 Regex!7965)) )
))
(declare-datatypes ((String!35075 0))(
  ( (String!35076 (value!154782 String)) )
))
(declare-datatypes ((TokenValueInjection!9510 0))(
  ( (TokenValueInjection!9511 (toValue!6807 Int) (toChars!6666 Int)) )
))
(declare-datatypes ((Rule!9426 0))(
  ( (Rule!9427 (regex!4813 Regex!7965) (tag!5317 String!35075) (isSeparator!4813 Bool) (transformation!4813 TokenValueInjection!9510)) )
))
(declare-datatypes ((Token!9088 0))(
  ( (Token!9089 (value!154783 TokenValue!5035) (rule!7261 Rule!9426) (size!24274 Int) (originalCharacters!5575 List!31529)) )
))
(declare-datatypes ((List!31531 0))(
  ( (Nil!31431) (Cons!31431 (h!36851 Token!9088) (t!227601 List!31531)) )
))
(declare-datatypes ((IArray!19713 0))(
  ( (IArray!19714 (innerList!9914 List!31531)) )
))
(declare-datatypes ((Conc!9854 0))(
  ( (Node!9854 (left!24166 Conc!9854) (right!24496 Conc!9854) (csize!19938 Int) (cheight!10065 Int)) (Leaf!15005 (xs!12957 IArray!19713) (csize!19939 Int)) (Empty!9854) )
))
(declare-datatypes ((BalanceConc!19322 0))(
  ( (BalanceConc!19323 (c!444341 Conc!9854)) )
))
(declare-datatypes ((tuple2!31186 0))(
  ( (tuple2!31187 (_1!18225 BalanceConc!19322) (_2!18225 BalanceConc!19320)) )
))
(declare-fun lt!970150 () tuple2!31186)

(declare-fun lt!970155 () BalanceConc!19320)

(assert (=> b!2739943 (= e!1725241 (= lt!970150 (tuple2!31187 (BalanceConc!19323 Empty!9854) lt!970155)))))

(declare-fun b!2739944 () Bool)

(declare-fun e!1725242 () Bool)

(declare-fun e!1725240 () Bool)

(assert (=> b!2739944 (= e!1725242 e!1725240)))

(declare-fun res!1150371 () Bool)

(assert (=> b!2739944 (=> (not res!1150371) (not e!1725240))))

(declare-fun lt!970151 () List!31531)

(declare-fun lt!970162 () List!31531)

(assert (=> b!2739944 (= res!1150371 (= lt!970151 lt!970162))))

(declare-fun acc!331 () BalanceConc!19322)

(declare-fun list!11952 (BalanceConc!19322) List!31531)

(assert (=> b!2739944 (= lt!970162 (list!11952 acc!331))))

(declare-fun lt!970148 () tuple2!31186)

(assert (=> b!2739944 (= lt!970151 (list!11952 (_1!18225 lt!970148)))))

(declare-datatypes ((LexerInterface!4409 0))(
  ( (LexerInterfaceExt!4406 (__x!20206 Int)) (Lexer!4407) )
))
(declare-fun thiss!11556 () LexerInterface!4409)

(declare-datatypes ((List!31532 0))(
  ( (Nil!31432) (Cons!31432 (h!36852 Rule!9426) (t!227602 List!31532)) )
))
(declare-fun rules!1182 () List!31532)

(declare-fun lexRec!669 (LexerInterface!4409 List!31532 BalanceConc!19320) tuple2!31186)

(assert (=> b!2739944 (= lt!970148 (lexRec!669 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2739945 () Bool)

(declare-fun e!1725250 () Bool)

(declare-fun tp!861254 () Bool)

(declare-fun inv!42754 (Conc!9854) Bool)

(assert (=> b!2739945 (= e!1725250 (and (inv!42754 (c!444341 acc!331)) tp!861254))))

(declare-fun e!1725235 () Bool)

(assert (=> b!2739947 (= e!1725235 (and tp!861251 tp!861252))))

(declare-fun b!2739948 () Bool)

(declare-fun e!1725238 () Bool)

(assert (=> b!2739948 (= e!1725240 e!1725238)))

(declare-fun res!1150367 () Bool)

(assert (=> b!2739948 (=> (not res!1150367) (not e!1725238))))

(declare-fun lt!970172 () List!31531)

(declare-fun lt!970161 () BalanceConc!19322)

(assert (=> b!2739948 (= res!1150367 (= lt!970172 (list!11952 lt!970161)))))

(declare-fun lt!970160 () tuple2!31186)

(assert (=> b!2739948 (= lt!970172 (list!11952 (_1!18225 lt!970160)))))

(declare-fun lt!970170 () tuple2!31186)

(declare-fun ++!7862 (BalanceConc!19322 BalanceConc!19322) BalanceConc!19322)

(assert (=> b!2739948 (= lt!970161 (++!7862 acc!331 (_1!18225 lt!970170)))))

(declare-fun input!603 () BalanceConc!19320)

(assert (=> b!2739948 (= lt!970170 (lexRec!669 thiss!11556 rules!1182 input!603))))

(declare-fun totalInput!328 () BalanceConc!19320)

(assert (=> b!2739948 (= lt!970160 (lexRec!669 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2739949 () Bool)

(declare-fun e!1725249 () Bool)

(declare-fun e!1725236 () Bool)

(declare-fun tp!861257 () Bool)

(assert (=> b!2739949 (= e!1725249 (and e!1725236 tp!861257))))

(declare-fun b!2739950 () Bool)

(declare-fun e!1725239 () Bool)

(declare-fun tp!861255 () Bool)

(assert (=> b!2739950 (= e!1725239 (and (inv!42753 (c!444339 input!603)) tp!861255))))

(declare-fun lt!970171 () tuple2!31186)

(declare-fun b!2739951 () Bool)

(declare-datatypes ((tuple2!31188 0))(
  ( (tuple2!31189 (_1!18226 Token!9088) (_2!18226 BalanceConc!19320)) )
))
(declare-datatypes ((Option!6219 0))(
  ( (None!6218) (Some!6218 (v!33108 tuple2!31188)) )
))
(declare-fun lt!970159 () Option!6219)

(declare-fun prepend!1153 (BalanceConc!19322 Token!9088) BalanceConc!19322)

(assert (=> b!2739951 (= e!1725241 (= lt!970150 (tuple2!31187 (prepend!1153 (_1!18225 lt!970171) (_1!18226 (v!33108 lt!970159))) (_2!18225 lt!970171))))))

(assert (=> b!2739951 (= lt!970171 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970159))))))

(declare-fun b!2739952 () Bool)

(declare-fun res!1150372 () Bool)

(declare-fun e!1725243 () Bool)

(assert (=> b!2739952 (=> (not res!1150372) (not e!1725243))))

(declare-fun rulesInvariant!3894 (LexerInterface!4409 List!31532) Bool)

(assert (=> b!2739952 (= res!1150372 (rulesInvariant!3894 thiss!11556 rules!1182))))

(declare-fun b!2739953 () Bool)

(declare-fun e!1725237 () Bool)

(declare-fun tp!861256 () Bool)

(assert (=> b!2739953 (= e!1725237 (and (inv!42753 (c!444339 totalInput!328)) tp!861256))))

(declare-fun tp!861250 () Bool)

(declare-fun b!2739954 () Bool)

(declare-fun inv!42747 (String!35075) Bool)

(declare-fun inv!42755 (TokenValueInjection!9510) Bool)

(assert (=> b!2739954 (= e!1725236 (and tp!861250 (inv!42747 (tag!5317 (h!36852 rules!1182))) (inv!42755 (transformation!4813 (h!36852 rules!1182))) e!1725235))))

(declare-fun b!2739955 () Bool)

(declare-fun e!1725245 () Bool)

(assert (=> b!2739955 (= e!1725238 e!1725245)))

(declare-fun res!1150366 () Bool)

(assert (=> b!2739955 (=> (not res!1150366) (not e!1725245))))

(declare-fun lt!970164 () List!31529)

(declare-fun list!11953 (BalanceConc!19320) List!31529)

(assert (=> b!2739955 (= res!1150366 (= lt!970164 (list!11953 (_2!18225 lt!970170))))))

(assert (=> b!2739955 (= lt!970164 (list!11953 (_2!18225 lt!970160)))))

(declare-fun b!2739956 () Bool)

(declare-fun e!1725247 () Bool)

(declare-fun e!1725244 () Bool)

(assert (=> b!2739956 (= e!1725247 (not e!1725244))))

(declare-fun res!1150373 () Bool)

(assert (=> b!2739956 (=> (not res!1150373) (not e!1725244))))

(declare-fun lt!970165 () tuple2!31186)

(assert (=> b!2739956 (= res!1150373 (= (list!11952 (_1!18225 lt!970165)) lt!970172))))

(declare-fun lt!970174 () BalanceConc!19322)

(declare-fun lt!970154 () Option!6219)

(declare-fun lexTailRec!44 (LexerInterface!4409 List!31532 BalanceConc!19320 BalanceConc!19320 BalanceConc!19320 BalanceConc!19322) tuple2!31186)

(assert (=> b!2739956 (= lt!970165 (lexTailRec!44 thiss!11556 rules!1182 totalInput!328 lt!970155 (_2!18226 (v!33108 lt!970154)) lt!970174))))

(assert (=> b!2739956 e!1725241))

(declare-fun c!444338 () Bool)

(get-info :version)

(assert (=> b!2739956 (= c!444338 ((_ is Some!6218) lt!970159))))

(assert (=> b!2739956 (= lt!970150 (lexRec!669 thiss!11556 rules!1182 lt!970155))))

(declare-fun maxPrefixZipperSequence!1057 (LexerInterface!4409 List!31532 BalanceConc!19320) Option!6219)

(assert (=> b!2739956 (= lt!970159 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 lt!970155))))

(declare-fun lt!970152 () BalanceConc!19320)

(declare-fun ++!7863 (BalanceConc!19320 BalanceConc!19320) BalanceConc!19320)

(assert (=> b!2739956 (= lt!970155 (++!7863 treated!9 lt!970152))))

(declare-fun lt!970166 () List!31529)

(declare-fun lt!970169 () List!31531)

(declare-datatypes ((tuple2!31190 0))(
  ( (tuple2!31191 (_1!18227 List!31531) (_2!18227 List!31529)) )
))
(declare-fun lexList!1238 (LexerInterface!4409 List!31532 List!31529) tuple2!31190)

(assert (=> b!2739956 (= (lexList!1238 thiss!11556 rules!1182 lt!970166) (tuple2!31191 lt!970169 Nil!31429))))

(declare-fun lt!970167 () tuple2!31186)

(declare-fun lt!970149 () List!31531)

(declare-fun lt!970156 () List!31529)

(declare-datatypes ((Unit!45452 0))(
  ( (Unit!45453) )
))
(declare-fun lt!970153 () Unit!45452)

(declare-fun lemmaLexThenLexPrefix!436 (LexerInterface!4409 List!31532 List!31529 List!31529 List!31531 List!31531 List!31529) Unit!45452)

(assert (=> b!2739956 (= lt!970153 (lemmaLexThenLexPrefix!436 thiss!11556 rules!1182 lt!970166 lt!970156 lt!970169 lt!970149 (list!11953 (_2!18225 lt!970167))))))

(assert (=> b!2739956 (= lt!970169 (list!11952 lt!970174))))

(declare-fun append!849 (BalanceConc!19322 Token!9088) BalanceConc!19322)

(assert (=> b!2739956 (= lt!970174 (append!849 acc!331 (_1!18226 (v!33108 lt!970154))))))

(declare-fun lt!970163 () List!31531)

(declare-fun ++!7864 (List!31531 List!31531) List!31531)

(assert (=> b!2739956 (= (++!7864 (++!7864 lt!970162 lt!970163) lt!970149) (++!7864 lt!970162 (++!7864 lt!970163 lt!970149)))))

(declare-fun lt!970173 () Unit!45452)

(declare-fun lemmaConcatAssociativity!1651 (List!31531 List!31531 List!31531) Unit!45452)

(assert (=> b!2739956 (= lt!970173 (lemmaConcatAssociativity!1651 lt!970162 lt!970163 lt!970149))))

(assert (=> b!2739956 (= lt!970149 (list!11952 (_1!18225 lt!970167)))))

(assert (=> b!2739956 (= lt!970163 (Cons!31431 (_1!18226 (v!33108 lt!970154)) Nil!31431))))

(declare-fun e!1725251 () Bool)

(assert (=> b!2739956 e!1725251))

(declare-fun res!1150368 () Bool)

(assert (=> b!2739956 (=> (not res!1150368) (not e!1725251))))

(declare-fun lt!970168 () List!31529)

(declare-fun lt!970157 () List!31529)

(declare-fun ++!7865 (List!31529 List!31529) List!31529)

(assert (=> b!2739956 (= res!1150368 (= (++!7865 lt!970166 lt!970156) (++!7865 lt!970157 (++!7865 lt!970168 lt!970156))))))

(assert (=> b!2739956 (= lt!970166 (++!7865 lt!970157 lt!970168))))

(declare-fun lt!970158 () Unit!45452)

(declare-fun lemmaConcatAssociativity!1652 (List!31529 List!31529 List!31529) Unit!45452)

(assert (=> b!2739956 (= lt!970158 (lemmaConcatAssociativity!1652 lt!970157 lt!970168 lt!970156))))

(assert (=> b!2739956 (= lt!970156 (list!11953 (_2!18226 (v!33108 lt!970154))))))

(assert (=> b!2739956 (= lt!970168 (list!11953 lt!970152))))

(declare-fun charsOf!3034 (Token!9088) BalanceConc!19320)

(assert (=> b!2739956 (= lt!970152 (charsOf!3034 (_1!18226 (v!33108 lt!970154))))))

(assert (=> b!2739956 (= lt!970167 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970154))))))

(declare-fun b!2739957 () Bool)

(assert (=> b!2739957 (= e!1725244 (= (list!11953 (_2!18225 lt!970165)) lt!970164))))

(declare-fun b!2739958 () Bool)

(declare-fun res!1150369 () Bool)

(assert (=> b!2739958 (=> (not res!1150369) (not e!1725240))))

(declare-fun isEmpty!17983 (List!31529) Bool)

(assert (=> b!2739958 (= res!1150369 (isEmpty!17983 (list!11953 (_2!18225 lt!970148))))))

(declare-fun b!2739959 () Bool)

(declare-fun res!1150363 () Bool)

(assert (=> b!2739959 (=> (not res!1150363) (not e!1725243))))

(declare-fun isEmpty!17984 (List!31532) Bool)

(assert (=> b!2739959 (= res!1150363 (not (isEmpty!17984 rules!1182)))))

(declare-fun b!2739946 () Bool)

(assert (=> b!2739946 (= e!1725243 e!1725242)))

(declare-fun res!1150364 () Bool)

(assert (=> b!2739946 (=> (not res!1150364) (not e!1725242))))

(assert (=> b!2739946 (= res!1150364 (= (list!11953 totalInput!328) (++!7865 lt!970157 (list!11953 input!603))))))

(assert (=> b!2739946 (= lt!970157 (list!11953 treated!9))))

(declare-fun res!1150370 () Bool)

(assert (=> start!265528 (=> (not res!1150370) (not e!1725243))))

(assert (=> start!265528 (= res!1150370 ((_ is Lexer!4407) thiss!11556))))

(assert (=> start!265528 e!1725243))

(declare-fun inv!42756 (BalanceConc!19320) Bool)

(assert (=> start!265528 (and (inv!42756 treated!9) e!1725248)))

(assert (=> start!265528 (and (inv!42756 input!603) e!1725239)))

(assert (=> start!265528 true))

(assert (=> start!265528 e!1725249))

(assert (=> start!265528 (and (inv!42756 totalInput!328) e!1725237)))

(declare-fun inv!42757 (BalanceConc!19322) Bool)

(assert (=> start!265528 (and (inv!42757 acc!331) e!1725250)))

(declare-fun b!2739960 () Bool)

(assert (=> b!2739960 (= e!1725251 (= lt!970170 (tuple2!31187 (prepend!1153 (_1!18225 lt!970167) (_1!18226 (v!33108 lt!970154))) (_2!18225 lt!970167))))))

(declare-fun b!2739961 () Bool)

(assert (=> b!2739961 (= e!1725245 e!1725247)))

(declare-fun res!1150365 () Bool)

(assert (=> b!2739961 (=> (not res!1150365) (not e!1725247))))

(assert (=> b!2739961 (= res!1150365 ((_ is Some!6218) lt!970154))))

(assert (=> b!2739961 (= lt!970154 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 input!603))))

(assert (= (and start!265528 res!1150370) b!2739959))

(assert (= (and b!2739959 res!1150363) b!2739952))

(assert (= (and b!2739952 res!1150372) b!2739946))

(assert (= (and b!2739946 res!1150364) b!2739944))

(assert (= (and b!2739944 res!1150371) b!2739958))

(assert (= (and b!2739958 res!1150369) b!2739948))

(assert (= (and b!2739948 res!1150367) b!2739955))

(assert (= (and b!2739955 res!1150366) b!2739961))

(assert (= (and b!2739961 res!1150365) b!2739956))

(assert (= (and b!2739956 res!1150368) b!2739960))

(assert (= (and b!2739956 c!444338) b!2739951))

(assert (= (and b!2739956 (not c!444338)) b!2739943))

(assert (= (and b!2739956 res!1150373) b!2739957))

(assert (= start!265528 b!2739942))

(assert (= start!265528 b!2739950))

(assert (= b!2739954 b!2739947))

(assert (= b!2739949 b!2739954))

(assert (= (and start!265528 ((_ is Cons!31432) rules!1182)) b!2739949))

(assert (= start!265528 b!2739953))

(assert (= start!265528 b!2739945))

(declare-fun m!3157099 () Bool)

(assert (=> b!2739955 m!3157099))

(declare-fun m!3157101 () Bool)

(assert (=> b!2739955 m!3157101))

(declare-fun m!3157103 () Bool)

(assert (=> b!2739956 m!3157103))

(declare-fun m!3157105 () Bool)

(assert (=> b!2739956 m!3157105))

(declare-fun m!3157107 () Bool)

(assert (=> b!2739956 m!3157107))

(declare-fun m!3157109 () Bool)

(assert (=> b!2739956 m!3157109))

(declare-fun m!3157111 () Bool)

(assert (=> b!2739956 m!3157111))

(assert (=> b!2739956 m!3157107))

(declare-fun m!3157113 () Bool)

(assert (=> b!2739956 m!3157113))

(declare-fun m!3157115 () Bool)

(assert (=> b!2739956 m!3157115))

(declare-fun m!3157117 () Bool)

(assert (=> b!2739956 m!3157117))

(declare-fun m!3157119 () Bool)

(assert (=> b!2739956 m!3157119))

(declare-fun m!3157121 () Bool)

(assert (=> b!2739956 m!3157121))

(declare-fun m!3157123 () Bool)

(assert (=> b!2739956 m!3157123))

(declare-fun m!3157125 () Bool)

(assert (=> b!2739956 m!3157125))

(declare-fun m!3157127 () Bool)

(assert (=> b!2739956 m!3157127))

(declare-fun m!3157129 () Bool)

(assert (=> b!2739956 m!3157129))

(declare-fun m!3157131 () Bool)

(assert (=> b!2739956 m!3157131))

(assert (=> b!2739956 m!3157121))

(declare-fun m!3157133 () Bool)

(assert (=> b!2739956 m!3157133))

(assert (=> b!2739956 m!3157129))

(declare-fun m!3157135 () Bool)

(assert (=> b!2739956 m!3157135))

(declare-fun m!3157137 () Bool)

(assert (=> b!2739956 m!3157137))

(declare-fun m!3157139 () Bool)

(assert (=> b!2739956 m!3157139))

(assert (=> b!2739956 m!3157127))

(declare-fun m!3157141 () Bool)

(assert (=> b!2739956 m!3157141))

(declare-fun m!3157143 () Bool)

(assert (=> b!2739956 m!3157143))

(declare-fun m!3157145 () Bool)

(assert (=> b!2739956 m!3157145))

(declare-fun m!3157147 () Bool)

(assert (=> b!2739956 m!3157147))

(declare-fun m!3157149 () Bool)

(assert (=> b!2739956 m!3157149))

(declare-fun m!3157151 () Bool)

(assert (=> b!2739956 m!3157151))

(declare-fun m!3157153 () Bool)

(assert (=> b!2739954 m!3157153))

(declare-fun m!3157155 () Bool)

(assert (=> b!2739954 m!3157155))

(declare-fun m!3157157 () Bool)

(assert (=> b!2739961 m!3157157))

(declare-fun m!3157159 () Bool)

(assert (=> b!2739945 m!3157159))

(declare-fun m!3157161 () Bool)

(assert (=> b!2739951 m!3157161))

(declare-fun m!3157163 () Bool)

(assert (=> b!2739951 m!3157163))

(declare-fun m!3157165 () Bool)

(assert (=> b!2739942 m!3157165))

(declare-fun m!3157167 () Bool)

(assert (=> b!2739960 m!3157167))

(declare-fun m!3157169 () Bool)

(assert (=> b!2739959 m!3157169))

(declare-fun m!3157171 () Bool)

(assert (=> b!2739946 m!3157171))

(declare-fun m!3157173 () Bool)

(assert (=> b!2739946 m!3157173))

(assert (=> b!2739946 m!3157173))

(declare-fun m!3157175 () Bool)

(assert (=> b!2739946 m!3157175))

(declare-fun m!3157177 () Bool)

(assert (=> b!2739946 m!3157177))

(declare-fun m!3157179 () Bool)

(assert (=> b!2739952 m!3157179))

(declare-fun m!3157181 () Bool)

(assert (=> b!2739948 m!3157181))

(declare-fun m!3157183 () Bool)

(assert (=> b!2739948 m!3157183))

(declare-fun m!3157185 () Bool)

(assert (=> b!2739948 m!3157185))

(declare-fun m!3157187 () Bool)

(assert (=> b!2739948 m!3157187))

(declare-fun m!3157189 () Bool)

(assert (=> b!2739948 m!3157189))

(declare-fun m!3157191 () Bool)

(assert (=> b!2739944 m!3157191))

(declare-fun m!3157193 () Bool)

(assert (=> b!2739944 m!3157193))

(declare-fun m!3157195 () Bool)

(assert (=> b!2739944 m!3157195))

(declare-fun m!3157197 () Bool)

(assert (=> b!2739957 m!3157197))

(declare-fun m!3157199 () Bool)

(assert (=> b!2739950 m!3157199))

(declare-fun m!3157201 () Bool)

(assert (=> b!2739953 m!3157201))

(declare-fun m!3157203 () Bool)

(assert (=> start!265528 m!3157203))

(declare-fun m!3157205 () Bool)

(assert (=> start!265528 m!3157205))

(declare-fun m!3157207 () Bool)

(assert (=> start!265528 m!3157207))

(declare-fun m!3157209 () Bool)

(assert (=> start!265528 m!3157209))

(declare-fun m!3157211 () Bool)

(assert (=> b!2739958 m!3157211))

(assert (=> b!2739958 m!3157211))

(declare-fun m!3157213 () Bool)

(assert (=> b!2739958 m!3157213))

(check-sat (not b!2739948) (not b!2739958) (not b!2739956) (not b!2739961) (not start!265528) b_and!201591 (not b!2739955) b_and!201589 (not b!2739942) (not b!2739953) (not b!2739944) (not b!2739954) (not b!2739946) (not b!2739951) (not b!2739957) (not b_next!77579) (not b!2739959) (not b_next!77577) (not b!2739949) (not b!2739950) (not b!2739952) (not b!2739960) (not b!2739945))
(check-sat b_and!201591 b_and!201589 (not b_next!77579) (not b_next!77577))
(get-model)

(declare-fun d!794929 () Bool)

(declare-fun list!11956 (Conc!9853) List!31529)

(assert (=> d!794929 (= (list!11953 (_2!18225 lt!970165)) (list!11956 (c!444339 (_2!18225 lt!970165))))))

(declare-fun bs!490055 () Bool)

(assert (= bs!490055 d!794929))

(declare-fun m!3157221 () Bool)

(assert (=> bs!490055 m!3157221))

(assert (=> b!2739957 d!794929))

(declare-fun d!794931 () Bool)

(assert (=> d!794931 (= (list!11953 totalInput!328) (list!11956 (c!444339 totalInput!328)))))

(declare-fun bs!490056 () Bool)

(assert (= bs!490056 d!794931))

(declare-fun m!3157223 () Bool)

(assert (=> bs!490056 m!3157223))

(assert (=> b!2739946 d!794931))

(declare-fun b!2739973 () Bool)

(declare-fun e!1725257 () Bool)

(declare-fun lt!970177 () List!31529)

(assert (=> b!2739973 (= e!1725257 (or (not (= (list!11953 input!603) Nil!31429)) (= lt!970177 lt!970157)))))

(declare-fun b!2739971 () Bool)

(declare-fun e!1725256 () List!31529)

(assert (=> b!2739971 (= e!1725256 (Cons!31429 (h!36849 lt!970157) (++!7865 (t!227599 lt!970157) (list!11953 input!603))))))

(declare-fun d!794933 () Bool)

(assert (=> d!794933 e!1725257))

(declare-fun res!1150383 () Bool)

(assert (=> d!794933 (=> (not res!1150383) (not e!1725257))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4477 (List!31529) (InoxSet C!16088))

(assert (=> d!794933 (= res!1150383 (= (content!4477 lt!970177) ((_ map or) (content!4477 lt!970157) (content!4477 (list!11953 input!603)))))))

(assert (=> d!794933 (= lt!970177 e!1725256)))

(declare-fun c!444344 () Bool)

(assert (=> d!794933 (= c!444344 ((_ is Nil!31429) lt!970157))))

(assert (=> d!794933 (= (++!7865 lt!970157 (list!11953 input!603)) lt!970177)))

(declare-fun b!2739972 () Bool)

(declare-fun res!1150382 () Bool)

(assert (=> b!2739972 (=> (not res!1150382) (not e!1725257))))

(declare-fun size!24278 (List!31529) Int)

(assert (=> b!2739972 (= res!1150382 (= (size!24278 lt!970177) (+ (size!24278 lt!970157) (size!24278 (list!11953 input!603)))))))

(declare-fun b!2739970 () Bool)

(assert (=> b!2739970 (= e!1725256 (list!11953 input!603))))

(assert (= (and d!794933 c!444344) b!2739970))

(assert (= (and d!794933 (not c!444344)) b!2739971))

(assert (= (and d!794933 res!1150383) b!2739972))

(assert (= (and b!2739972 res!1150382) b!2739973))

(assert (=> b!2739971 m!3157173))

(declare-fun m!3157225 () Bool)

(assert (=> b!2739971 m!3157225))

(declare-fun m!3157227 () Bool)

(assert (=> d!794933 m!3157227))

(declare-fun m!3157229 () Bool)

(assert (=> d!794933 m!3157229))

(assert (=> d!794933 m!3157173))

(declare-fun m!3157231 () Bool)

(assert (=> d!794933 m!3157231))

(declare-fun m!3157233 () Bool)

(assert (=> b!2739972 m!3157233))

(declare-fun m!3157235 () Bool)

(assert (=> b!2739972 m!3157235))

(assert (=> b!2739972 m!3157173))

(declare-fun m!3157237 () Bool)

(assert (=> b!2739972 m!3157237))

(assert (=> b!2739946 d!794933))

(declare-fun d!794935 () Bool)

(assert (=> d!794935 (= (list!11953 input!603) (list!11956 (c!444339 input!603)))))

(declare-fun bs!490057 () Bool)

(assert (= bs!490057 d!794935))

(declare-fun m!3157239 () Bool)

(assert (=> bs!490057 m!3157239))

(assert (=> b!2739946 d!794935))

(declare-fun d!794937 () Bool)

(assert (=> d!794937 (= (list!11953 treated!9) (list!11956 (c!444339 treated!9)))))

(declare-fun bs!490058 () Bool)

(assert (= bs!490058 d!794937))

(declare-fun m!3157241 () Bool)

(assert (=> bs!490058 m!3157241))

(assert (=> b!2739946 d!794937))

(declare-fun d!794939 () Bool)

(declare-fun c!444347 () Bool)

(assert (=> d!794939 (= c!444347 ((_ is Node!9854) (c!444341 acc!331)))))

(declare-fun e!1725262 () Bool)

(assert (=> d!794939 (= (inv!42754 (c!444341 acc!331)) e!1725262)))

(declare-fun b!2739980 () Bool)

(declare-fun inv!42760 (Conc!9854) Bool)

(assert (=> b!2739980 (= e!1725262 (inv!42760 (c!444341 acc!331)))))

(declare-fun b!2739981 () Bool)

(declare-fun e!1725263 () Bool)

(assert (=> b!2739981 (= e!1725262 e!1725263)))

(declare-fun res!1150386 () Bool)

(assert (=> b!2739981 (= res!1150386 (not ((_ is Leaf!15005) (c!444341 acc!331))))))

(assert (=> b!2739981 (=> res!1150386 e!1725263)))

(declare-fun b!2739982 () Bool)

(declare-fun inv!42761 (Conc!9854) Bool)

(assert (=> b!2739982 (= e!1725263 (inv!42761 (c!444341 acc!331)))))

(assert (= (and d!794939 c!444347) b!2739980))

(assert (= (and d!794939 (not c!444347)) b!2739981))

(assert (= (and b!2739981 (not res!1150386)) b!2739982))

(declare-fun m!3157243 () Bool)

(assert (=> b!2739980 m!3157243))

(declare-fun m!3157245 () Bool)

(assert (=> b!2739982 m!3157245))

(assert (=> b!2739945 d!794939))

(declare-fun b!2740126 () Bool)

(declare-fun res!1150471 () Bool)

(declare-fun e!1725352 () Bool)

(assert (=> b!2740126 (=> (not res!1150471) (not e!1725352))))

(declare-fun lt!970243 () tuple2!31186)

(assert (=> b!2740126 (= res!1150471 (= (list!11952 (_1!18225 lt!970243)) (_1!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 (_2!18226 (v!33108 lt!970154)))))))))

(declare-fun b!2740127 () Bool)

(assert (=> b!2740127 (= e!1725352 (= (list!11953 (_2!18225 lt!970243)) (_2!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 (_2!18226 (v!33108 lt!970154)))))))))

(declare-fun b!2740128 () Bool)

(declare-fun e!1725349 () tuple2!31186)

(declare-fun lt!970241 () tuple2!31186)

(declare-fun lt!970242 () Option!6219)

(assert (=> b!2740128 (= e!1725349 (tuple2!31187 (prepend!1153 (_1!18225 lt!970241) (_1!18226 (v!33108 lt!970242))) (_2!18225 lt!970241)))))

(assert (=> b!2740128 (= lt!970241 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970242))))))

(declare-fun d!794941 () Bool)

(assert (=> d!794941 e!1725352))

(declare-fun res!1150470 () Bool)

(assert (=> d!794941 (=> (not res!1150470) (not e!1725352))))

(declare-fun e!1725350 () Bool)

(assert (=> d!794941 (= res!1150470 e!1725350)))

(declare-fun c!444383 () Bool)

(declare-fun size!24279 (BalanceConc!19322) Int)

(assert (=> d!794941 (= c!444383 (> (size!24279 (_1!18225 lt!970243)) 0))))

(assert (=> d!794941 (= lt!970243 e!1725349)))

(declare-fun c!444382 () Bool)

(assert (=> d!794941 (= c!444382 ((_ is Some!6218) lt!970242))))

(assert (=> d!794941 (= lt!970242 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970154))))))

(assert (=> d!794941 (= (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970154))) lt!970243)))

(declare-fun b!2740129 () Bool)

(assert (=> b!2740129 (= e!1725350 (= (list!11953 (_2!18225 lt!970243)) (list!11953 (_2!18226 (v!33108 lt!970154)))))))

(declare-fun b!2740130 () Bool)

(assert (=> b!2740130 (= e!1725349 (tuple2!31187 (BalanceConc!19323 Empty!9854) (_2!18226 (v!33108 lt!970154))))))

(declare-fun b!2740131 () Bool)

(declare-fun e!1725351 () Bool)

(assert (=> b!2740131 (= e!1725350 e!1725351)))

(declare-fun res!1150472 () Bool)

(declare-fun size!24280 (BalanceConc!19320) Int)

(assert (=> b!2740131 (= res!1150472 (< (size!24280 (_2!18225 lt!970243)) (size!24280 (_2!18226 (v!33108 lt!970154)))))))

(assert (=> b!2740131 (=> (not res!1150472) (not e!1725351))))

(declare-fun b!2740132 () Bool)

(declare-fun isEmpty!17986 (BalanceConc!19322) Bool)

(assert (=> b!2740132 (= e!1725351 (not (isEmpty!17986 (_1!18225 lt!970243))))))

(assert (= (and d!794941 c!444382) b!2740128))

(assert (= (and d!794941 (not c!444382)) b!2740130))

(assert (= (and d!794941 c!444383) b!2740131))

(assert (= (and d!794941 (not c!444383)) b!2740129))

(assert (= (and b!2740131 res!1150472) b!2740132))

(assert (= (and d!794941 res!1150470) b!2740126))

(assert (= (and b!2740126 res!1150471) b!2740127))

(declare-fun m!3157461 () Bool)

(assert (=> b!2740132 m!3157461))

(declare-fun m!3157463 () Bool)

(assert (=> b!2740129 m!3157463))

(assert (=> b!2740129 m!3157113))

(assert (=> b!2740127 m!3157463))

(assert (=> b!2740127 m!3157113))

(assert (=> b!2740127 m!3157113))

(declare-fun m!3157465 () Bool)

(assert (=> b!2740127 m!3157465))

(declare-fun m!3157467 () Bool)

(assert (=> d!794941 m!3157467))

(declare-fun m!3157469 () Bool)

(assert (=> d!794941 m!3157469))

(declare-fun m!3157471 () Bool)

(assert (=> b!2740128 m!3157471))

(declare-fun m!3157473 () Bool)

(assert (=> b!2740128 m!3157473))

(declare-fun m!3157475 () Bool)

(assert (=> b!2740131 m!3157475))

(declare-fun m!3157477 () Bool)

(assert (=> b!2740131 m!3157477))

(declare-fun m!3157479 () Bool)

(assert (=> b!2740126 m!3157479))

(assert (=> b!2740126 m!3157113))

(assert (=> b!2740126 m!3157113))

(assert (=> b!2740126 m!3157465))

(assert (=> b!2739956 d!794941))

(declare-fun e!1725357 () Bool)

(declare-fun lt!970247 () List!31529)

(declare-fun b!2740141 () Bool)

(assert (=> b!2740141 (= e!1725357 (or (not (= lt!970156 Nil!31429)) (= lt!970247 lt!970166)))))

(declare-fun b!2740139 () Bool)

(declare-fun e!1725356 () List!31529)

(assert (=> b!2740139 (= e!1725356 (Cons!31429 (h!36849 lt!970166) (++!7865 (t!227599 lt!970166) lt!970156)))))

(declare-fun d!794991 () Bool)

(assert (=> d!794991 e!1725357))

(declare-fun res!1150474 () Bool)

(assert (=> d!794991 (=> (not res!1150474) (not e!1725357))))

(assert (=> d!794991 (= res!1150474 (= (content!4477 lt!970247) ((_ map or) (content!4477 lt!970166) (content!4477 lt!970156))))))

(assert (=> d!794991 (= lt!970247 e!1725356)))

(declare-fun c!444384 () Bool)

(assert (=> d!794991 (= c!444384 ((_ is Nil!31429) lt!970166))))

(assert (=> d!794991 (= (++!7865 lt!970166 lt!970156) lt!970247)))

(declare-fun b!2740140 () Bool)

(declare-fun res!1150473 () Bool)

(assert (=> b!2740140 (=> (not res!1150473) (not e!1725357))))

(assert (=> b!2740140 (= res!1150473 (= (size!24278 lt!970247) (+ (size!24278 lt!970166) (size!24278 lt!970156))))))

(declare-fun b!2740138 () Bool)

(assert (=> b!2740138 (= e!1725356 lt!970156)))

(assert (= (and d!794991 c!444384) b!2740138))

(assert (= (and d!794991 (not c!444384)) b!2740139))

(assert (= (and d!794991 res!1150474) b!2740140))

(assert (= (and b!2740140 res!1150473) b!2740141))

(declare-fun m!3157491 () Bool)

(assert (=> b!2740139 m!3157491))

(declare-fun m!3157495 () Bool)

(assert (=> d!794991 m!3157495))

(declare-fun m!3157501 () Bool)

(assert (=> d!794991 m!3157501))

(declare-fun m!3157505 () Bool)

(assert (=> d!794991 m!3157505))

(declare-fun m!3157509 () Bool)

(assert (=> b!2740140 m!3157509))

(declare-fun m!3157513 () Bool)

(assert (=> b!2740140 m!3157513))

(declare-fun m!3157515 () Bool)

(assert (=> b!2740140 m!3157515))

(assert (=> b!2739956 d!794991))

(declare-fun lt!970250 () List!31529)

(declare-fun e!1725363 () Bool)

(declare-fun b!2740153 () Bool)

(assert (=> b!2740153 (= e!1725363 (or (not (= (++!7865 lt!970168 lt!970156) Nil!31429)) (= lt!970250 lt!970157)))))

(declare-fun b!2740151 () Bool)

(declare-fun e!1725362 () List!31529)

(assert (=> b!2740151 (= e!1725362 (Cons!31429 (h!36849 lt!970157) (++!7865 (t!227599 lt!970157) (++!7865 lt!970168 lt!970156))))))

(declare-fun d!794997 () Bool)

(assert (=> d!794997 e!1725363))

(declare-fun res!1150480 () Bool)

(assert (=> d!794997 (=> (not res!1150480) (not e!1725363))))

(assert (=> d!794997 (= res!1150480 (= (content!4477 lt!970250) ((_ map or) (content!4477 lt!970157) (content!4477 (++!7865 lt!970168 lt!970156)))))))

(assert (=> d!794997 (= lt!970250 e!1725362)))

(declare-fun c!444387 () Bool)

(assert (=> d!794997 (= c!444387 ((_ is Nil!31429) lt!970157))))

(assert (=> d!794997 (= (++!7865 lt!970157 (++!7865 lt!970168 lt!970156)) lt!970250)))

(declare-fun b!2740152 () Bool)

(declare-fun res!1150479 () Bool)

(assert (=> b!2740152 (=> (not res!1150479) (not e!1725363))))

(assert (=> b!2740152 (= res!1150479 (= (size!24278 lt!970250) (+ (size!24278 lt!970157) (size!24278 (++!7865 lt!970168 lt!970156)))))))

(declare-fun b!2740150 () Bool)

(assert (=> b!2740150 (= e!1725362 (++!7865 lt!970168 lt!970156))))

(assert (= (and d!794997 c!444387) b!2740150))

(assert (= (and d!794997 (not c!444387)) b!2740151))

(assert (= (and d!794997 res!1150480) b!2740152))

(assert (= (and b!2740152 res!1150479) b!2740153))

(assert (=> b!2740151 m!3157127))

(declare-fun m!3157527 () Bool)

(assert (=> b!2740151 m!3157527))

(declare-fun m!3157529 () Bool)

(assert (=> d!794997 m!3157529))

(assert (=> d!794997 m!3157229))

(assert (=> d!794997 m!3157127))

(declare-fun m!3157531 () Bool)

(assert (=> d!794997 m!3157531))

(declare-fun m!3157533 () Bool)

(assert (=> b!2740152 m!3157533))

(assert (=> b!2740152 m!3157235))

(assert (=> b!2740152 m!3157127))

(declare-fun m!3157535 () Bool)

(assert (=> b!2740152 m!3157535))

(assert (=> b!2739956 d!794997))

(declare-fun d!795001 () Bool)

(assert (=> d!795001 (= (list!11953 (_2!18226 (v!33108 lt!970154))) (list!11956 (c!444339 (_2!18226 (v!33108 lt!970154)))))))

(declare-fun bs!490068 () Bool)

(assert (= bs!490068 d!795001))

(declare-fun m!3157537 () Bool)

(assert (=> bs!490068 m!3157537))

(assert (=> b!2739956 d!795001))

(declare-fun d!795003 () Bool)

(declare-fun list!11957 (Conc!9854) List!31531)

(assert (=> d!795003 (= (list!11952 lt!970174) (list!11957 (c!444341 lt!970174)))))

(declare-fun bs!490069 () Bool)

(assert (= bs!490069 d!795003))

(declare-fun m!3157539 () Bool)

(assert (=> bs!490069 m!3157539))

(assert (=> b!2739956 d!795003))

(declare-fun d!795005 () Bool)

(assert (=> d!795005 (= (list!11953 (_2!18225 lt!970167)) (list!11956 (c!444339 (_2!18225 lt!970167))))))

(declare-fun bs!490070 () Bool)

(assert (= bs!490070 d!795005))

(declare-fun m!3157541 () Bool)

(assert (=> bs!490070 m!3157541))

(assert (=> b!2739956 d!795005))

(declare-fun b!2740185 () Bool)

(declare-fun e!1725387 () Bool)

(declare-fun e!1725390 () Bool)

(assert (=> b!2740185 (= e!1725387 e!1725390)))

(declare-fun res!1150499 () Bool)

(assert (=> b!2740185 (=> res!1150499 e!1725390)))

(declare-fun lt!970280 () Option!6219)

(declare-fun isDefined!4921 (Option!6219) Bool)

(assert (=> b!2740185 (= res!1150499 (not (isDefined!4921 lt!970280)))))

(declare-fun d!795007 () Bool)

(assert (=> d!795007 e!1725387))

(declare-fun res!1150496 () Bool)

(assert (=> d!795007 (=> (not res!1150496) (not e!1725387))))

(declare-datatypes ((tuple2!31194 0))(
  ( (tuple2!31195 (_1!18229 Token!9088) (_2!18229 List!31529)) )
))
(declare-datatypes ((Option!6221 0))(
  ( (None!6220) (Some!6220 (v!33114 tuple2!31194)) )
))
(declare-fun isDefined!4922 (Option!6221) Bool)

(declare-fun maxPrefixZipper!484 (LexerInterface!4409 List!31532 List!31529) Option!6221)

(assert (=> d!795007 (= res!1150496 (= (isDefined!4921 lt!970280) (isDefined!4922 (maxPrefixZipper!484 thiss!11556 rules!1182 (list!11953 lt!970155)))))))

(declare-fun e!1725388 () Option!6219)

(assert (=> d!795007 (= lt!970280 e!1725388)))

(declare-fun c!444396 () Bool)

(assert (=> d!795007 (= c!444396 (and ((_ is Cons!31432) rules!1182) ((_ is Nil!31432) (t!227602 rules!1182))))))

(declare-fun lt!970281 () Unit!45452)

(declare-fun lt!970278 () Unit!45452)

(assert (=> d!795007 (= lt!970281 lt!970278)))

(declare-fun lt!970282 () List!31529)

(declare-fun lt!970279 () List!31529)

(declare-fun isPrefix!2497 (List!31529 List!31529) Bool)

(assert (=> d!795007 (isPrefix!2497 lt!970282 lt!970279)))

(declare-fun lemmaIsPrefixRefl!1623 (List!31529 List!31529) Unit!45452)

(assert (=> d!795007 (= lt!970278 (lemmaIsPrefixRefl!1623 lt!970282 lt!970279))))

(assert (=> d!795007 (= lt!970279 (list!11953 lt!970155))))

(assert (=> d!795007 (= lt!970282 (list!11953 lt!970155))))

(declare-fun rulesValidInductive!1681 (LexerInterface!4409 List!31532) Bool)

(assert (=> d!795007 (rulesValidInductive!1681 thiss!11556 rules!1182)))

(assert (=> d!795007 (= (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 lt!970155) lt!970280)))

(declare-fun b!2740186 () Bool)

(declare-fun e!1725386 () Bool)

(declare-fun get!9815 (Option!6219) tuple2!31188)

(declare-fun get!9816 (Option!6221) tuple2!31194)

(assert (=> b!2740186 (= e!1725386 (= (list!11953 (_2!18226 (get!9815 lt!970280))) (_2!18229 (get!9816 (maxPrefixZipper!484 thiss!11556 rules!1182 (list!11953 lt!970155))))))))

(declare-fun b!2740187 () Bool)

(declare-fun e!1725385 () Bool)

(assert (=> b!2740187 (= e!1725385 e!1725386)))

(declare-fun res!1150500 () Bool)

(assert (=> b!2740187 (=> (not res!1150500) (not e!1725386))))

(assert (=> b!2740187 (= res!1150500 (= (_1!18226 (get!9815 lt!970280)) (_1!18229 (get!9816 (maxPrefixZipper!484 thiss!11556 rules!1182 (list!11953 lt!970155))))))))

(declare-fun call!177291 () Option!6219)

(declare-fun bm!177286 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!493 (LexerInterface!4409 Rule!9426 BalanceConc!19320) Option!6219)

(assert (=> bm!177286 (= call!177291 (maxPrefixOneRuleZipperSequence!493 thiss!11556 (h!36852 rules!1182) lt!970155))))

(declare-fun b!2740188 () Bool)

(assert (=> b!2740188 (= e!1725388 call!177291)))

(declare-fun b!2740189 () Bool)

(declare-fun e!1725389 () Bool)

(assert (=> b!2740189 (= e!1725390 e!1725389)))

(declare-fun res!1150498 () Bool)

(assert (=> b!2740189 (=> (not res!1150498) (not e!1725389))))

(declare-fun maxPrefix!2380 (LexerInterface!4409 List!31532 List!31529) Option!6221)

(assert (=> b!2740189 (= res!1150498 (= (_1!18226 (get!9815 lt!970280)) (_1!18229 (get!9816 (maxPrefix!2380 thiss!11556 rules!1182 (list!11953 lt!970155))))))))

(declare-fun b!2740190 () Bool)

(declare-fun lt!970283 () Option!6219)

(declare-fun lt!970277 () Option!6219)

(assert (=> b!2740190 (= e!1725388 (ite (and ((_ is None!6218) lt!970283) ((_ is None!6218) lt!970277)) None!6218 (ite ((_ is None!6218) lt!970277) lt!970283 (ite ((_ is None!6218) lt!970283) lt!970277 (ite (>= (size!24274 (_1!18226 (v!33108 lt!970283))) (size!24274 (_1!18226 (v!33108 lt!970277)))) lt!970283 lt!970277)))))))

(assert (=> b!2740190 (= lt!970283 call!177291)))

(assert (=> b!2740190 (= lt!970277 (maxPrefixZipperSequence!1057 thiss!11556 (t!227602 rules!1182) lt!970155))))

(declare-fun b!2740191 () Bool)

(declare-fun res!1150497 () Bool)

(assert (=> b!2740191 (=> (not res!1150497) (not e!1725387))))

(assert (=> b!2740191 (= res!1150497 e!1725385)))

(declare-fun res!1150501 () Bool)

(assert (=> b!2740191 (=> res!1150501 e!1725385)))

(assert (=> b!2740191 (= res!1150501 (not (isDefined!4921 lt!970280)))))

(declare-fun b!2740192 () Bool)

(assert (=> b!2740192 (= e!1725389 (= (list!11953 (_2!18226 (get!9815 lt!970280))) (_2!18229 (get!9816 (maxPrefix!2380 thiss!11556 rules!1182 (list!11953 lt!970155))))))))

(assert (= (and d!795007 c!444396) b!2740188))

(assert (= (and d!795007 (not c!444396)) b!2740190))

(assert (= (or b!2740188 b!2740190) bm!177286))

(assert (= (and d!795007 res!1150496) b!2740191))

(assert (= (and b!2740191 (not res!1150501)) b!2740187))

(assert (= (and b!2740187 res!1150500) b!2740186))

(assert (= (and b!2740191 res!1150497) b!2740185))

(assert (= (and b!2740185 (not res!1150499)) b!2740189))

(assert (= (and b!2740189 res!1150498) b!2740192))

(declare-fun m!3157561 () Bool)

(assert (=> b!2740192 m!3157561))

(declare-fun m!3157563 () Bool)

(assert (=> b!2740192 m!3157563))

(declare-fun m!3157565 () Bool)

(assert (=> b!2740192 m!3157565))

(declare-fun m!3157567 () Bool)

(assert (=> b!2740192 m!3157567))

(assert (=> b!2740192 m!3157561))

(assert (=> b!2740192 m!3157565))

(declare-fun m!3157569 () Bool)

(assert (=> b!2740192 m!3157569))

(assert (=> b!2740189 m!3157563))

(assert (=> b!2740189 m!3157561))

(assert (=> b!2740189 m!3157561))

(assert (=> b!2740189 m!3157565))

(assert (=> b!2740189 m!3157565))

(assert (=> b!2740189 m!3157567))

(declare-fun m!3157571 () Bool)

(assert (=> bm!177286 m!3157571))

(declare-fun m!3157573 () Bool)

(assert (=> b!2740190 m!3157573))

(declare-fun m!3157575 () Bool)

(assert (=> b!2740191 m!3157575))

(declare-fun m!3157577 () Bool)

(assert (=> b!2740186 m!3157577))

(declare-fun m!3157579 () Bool)

(assert (=> b!2740186 m!3157579))

(assert (=> b!2740186 m!3157561))

(assert (=> b!2740186 m!3157561))

(assert (=> b!2740186 m!3157577))

(assert (=> b!2740186 m!3157563))

(assert (=> b!2740186 m!3157569))

(assert (=> b!2740187 m!3157563))

(assert (=> b!2740187 m!3157561))

(assert (=> b!2740187 m!3157561))

(assert (=> b!2740187 m!3157577))

(assert (=> b!2740187 m!3157577))

(assert (=> b!2740187 m!3157579))

(assert (=> d!795007 m!3157561))

(assert (=> d!795007 m!3157575))

(assert (=> d!795007 m!3157577))

(declare-fun m!3157581 () Bool)

(assert (=> d!795007 m!3157581))

(declare-fun m!3157583 () Bool)

(assert (=> d!795007 m!3157583))

(declare-fun m!3157585 () Bool)

(assert (=> d!795007 m!3157585))

(assert (=> d!795007 m!3157561))

(assert (=> d!795007 m!3157577))

(declare-fun m!3157587 () Bool)

(assert (=> d!795007 m!3157587))

(assert (=> b!2740185 m!3157575))

(assert (=> b!2739956 d!795007))

(declare-fun lt!970286 () List!31531)

(declare-fun e!1725396 () Bool)

(declare-fun b!2740204 () Bool)

(assert (=> b!2740204 (= e!1725396 (or (not (= lt!970149 Nil!31431)) (= lt!970286 (++!7864 lt!970162 lt!970163))))))

(declare-fun b!2740201 () Bool)

(declare-fun e!1725395 () List!31531)

(assert (=> b!2740201 (= e!1725395 lt!970149)))

(declare-fun b!2740203 () Bool)

(declare-fun res!1150507 () Bool)

(assert (=> b!2740203 (=> (not res!1150507) (not e!1725396))))

(declare-fun size!24282 (List!31531) Int)

(assert (=> b!2740203 (= res!1150507 (= (size!24282 lt!970286) (+ (size!24282 (++!7864 lt!970162 lt!970163)) (size!24282 lt!970149))))))

(declare-fun d!795015 () Bool)

(assert (=> d!795015 e!1725396))

(declare-fun res!1150506 () Bool)

(assert (=> d!795015 (=> (not res!1150506) (not e!1725396))))

(declare-fun content!4479 (List!31531) (InoxSet Token!9088))

(assert (=> d!795015 (= res!1150506 (= (content!4479 lt!970286) ((_ map or) (content!4479 (++!7864 lt!970162 lt!970163)) (content!4479 lt!970149))))))

(assert (=> d!795015 (= lt!970286 e!1725395)))

(declare-fun c!444399 () Bool)

(assert (=> d!795015 (= c!444399 ((_ is Nil!31431) (++!7864 lt!970162 lt!970163)))))

(assert (=> d!795015 (= (++!7864 (++!7864 lt!970162 lt!970163) lt!970149) lt!970286)))

(declare-fun b!2740202 () Bool)

(assert (=> b!2740202 (= e!1725395 (Cons!31431 (h!36851 (++!7864 lt!970162 lt!970163)) (++!7864 (t!227601 (++!7864 lt!970162 lt!970163)) lt!970149)))))

(assert (= (and d!795015 c!444399) b!2740201))

(assert (= (and d!795015 (not c!444399)) b!2740202))

(assert (= (and d!795015 res!1150506) b!2740203))

(assert (= (and b!2740203 res!1150507) b!2740204))

(declare-fun m!3157589 () Bool)

(assert (=> b!2740203 m!3157589))

(assert (=> b!2740203 m!3157107))

(declare-fun m!3157591 () Bool)

(assert (=> b!2740203 m!3157591))

(declare-fun m!3157593 () Bool)

(assert (=> b!2740203 m!3157593))

(declare-fun m!3157595 () Bool)

(assert (=> d!795015 m!3157595))

(assert (=> d!795015 m!3157107))

(declare-fun m!3157597 () Bool)

(assert (=> d!795015 m!3157597))

(declare-fun m!3157599 () Bool)

(assert (=> d!795015 m!3157599))

(declare-fun m!3157601 () Bool)

(assert (=> b!2740202 m!3157601))

(assert (=> b!2739956 d!795015))

(declare-fun d!795017 () Bool)

(declare-fun e!1725399 () Bool)

(assert (=> d!795017 e!1725399))

(declare-fun res!1150510 () Bool)

(assert (=> d!795017 (=> (not res!1150510) (not e!1725399))))

(declare-fun isBalanced!2999 (Conc!9854) Bool)

(declare-fun append!850 (Conc!9854 Token!9088) Conc!9854)

(assert (=> d!795017 (= res!1150510 (isBalanced!2999 (append!850 (c!444341 acc!331) (_1!18226 (v!33108 lt!970154)))))))

(declare-fun lt!970289 () BalanceConc!19322)

(assert (=> d!795017 (= lt!970289 (BalanceConc!19323 (append!850 (c!444341 acc!331) (_1!18226 (v!33108 lt!970154)))))))

(assert (=> d!795017 (= (append!849 acc!331 (_1!18226 (v!33108 lt!970154))) lt!970289)))

(declare-fun b!2740207 () Bool)

(declare-fun $colon+!190 (List!31531 Token!9088) List!31531)

(assert (=> b!2740207 (= e!1725399 (= (list!11952 lt!970289) ($colon+!190 (list!11952 acc!331) (_1!18226 (v!33108 lt!970154)))))))

(assert (= (and d!795017 res!1150510) b!2740207))

(declare-fun m!3157603 () Bool)

(assert (=> d!795017 m!3157603))

(assert (=> d!795017 m!3157603))

(declare-fun m!3157605 () Bool)

(assert (=> d!795017 m!3157605))

(declare-fun m!3157607 () Bool)

(assert (=> b!2740207 m!3157607))

(assert (=> b!2740207 m!3157191))

(assert (=> b!2740207 m!3157191))

(declare-fun m!3157609 () Bool)

(assert (=> b!2740207 m!3157609))

(assert (=> b!2739956 d!795017))

(declare-fun d!795019 () Bool)

(assert (=> d!795019 (= (lexList!1238 thiss!11556 rules!1182 lt!970166) (tuple2!31191 lt!970169 Nil!31429))))

(declare-fun lt!970292 () Unit!45452)

(declare-fun choose!16053 (LexerInterface!4409 List!31532 List!31529 List!31529 List!31531 List!31531 List!31529) Unit!45452)

(assert (=> d!795019 (= lt!970292 (choose!16053 thiss!11556 rules!1182 lt!970166 lt!970156 lt!970169 lt!970149 (list!11953 (_2!18225 lt!970167))))))

(assert (=> d!795019 (not (isEmpty!17984 rules!1182))))

(assert (=> d!795019 (= (lemmaLexThenLexPrefix!436 thiss!11556 rules!1182 lt!970166 lt!970156 lt!970169 lt!970149 (list!11953 (_2!18225 lt!970167))) lt!970292)))

(declare-fun bs!490073 () Bool)

(assert (= bs!490073 d!795019))

(assert (=> bs!490073 m!3157145))

(assert (=> bs!490073 m!3157121))

(declare-fun m!3157611 () Bool)

(assert (=> bs!490073 m!3157611))

(assert (=> bs!490073 m!3157169))

(assert (=> b!2739956 d!795019))

(declare-fun d!795021 () Bool)

(assert (=> d!795021 (= (++!7865 (++!7865 lt!970157 lt!970168) lt!970156) (++!7865 lt!970157 (++!7865 lt!970168 lt!970156)))))

(declare-fun lt!970295 () Unit!45452)

(declare-fun choose!16054 (List!31529 List!31529 List!31529) Unit!45452)

(assert (=> d!795021 (= lt!970295 (choose!16054 lt!970157 lt!970168 lt!970156))))

(assert (=> d!795021 (= (lemmaConcatAssociativity!1652 lt!970157 lt!970168 lt!970156) lt!970295)))

(declare-fun bs!490074 () Bool)

(assert (= bs!490074 d!795021))

(assert (=> bs!490074 m!3157127))

(assert (=> bs!490074 m!3157141))

(assert (=> bs!490074 m!3157135))

(assert (=> bs!490074 m!3157127))

(declare-fun m!3157613 () Bool)

(assert (=> bs!490074 m!3157613))

(assert (=> bs!490074 m!3157135))

(declare-fun m!3157615 () Bool)

(assert (=> bs!490074 m!3157615))

(assert (=> b!2739956 d!795021))

(declare-fun d!795023 () Bool)

(assert (=> d!795023 (= (++!7864 (++!7864 lt!970162 lt!970163) lt!970149) (++!7864 lt!970162 (++!7864 lt!970163 lt!970149)))))

(declare-fun lt!970298 () Unit!45452)

(declare-fun choose!16055 (List!31531 List!31531 List!31531) Unit!45452)

(assert (=> d!795023 (= lt!970298 (choose!16055 lt!970162 lt!970163 lt!970149))))

(assert (=> d!795023 (= (lemmaConcatAssociativity!1651 lt!970162 lt!970163 lt!970149) lt!970298)))

(declare-fun bs!490075 () Bool)

(assert (= bs!490075 d!795023))

(assert (=> bs!490075 m!3157129))

(assert (=> bs!490075 m!3157131))

(assert (=> bs!490075 m!3157107))

(assert (=> bs!490075 m!3157107))

(assert (=> bs!490075 m!3157109))

(declare-fun m!3157617 () Bool)

(assert (=> bs!490075 m!3157617))

(assert (=> bs!490075 m!3157129))

(assert (=> b!2739956 d!795023))

(declare-fun d!795025 () Bool)

(assert (=> d!795025 (= (list!11952 (_1!18225 lt!970165)) (list!11957 (c!444341 (_1!18225 lt!970165))))))

(declare-fun bs!490076 () Bool)

(assert (= bs!490076 d!795025))

(declare-fun m!3157619 () Bool)

(assert (=> bs!490076 m!3157619))

(assert (=> b!2739956 d!795025))

(declare-fun lt!970351 () BalanceConc!19320)

(declare-fun b!2740233 () Bool)

(declare-fun e!1725410 () Bool)

(assert (=> b!2740233 (= e!1725410 (= (list!11953 lt!970351) (++!7865 (list!11953 treated!9) (list!11953 lt!970152))))))

(declare-fun b!2740232 () Bool)

(declare-fun res!1150523 () Bool)

(assert (=> b!2740232 (=> (not res!1150523) (not e!1725410))))

(declare-fun height!1476 (Conc!9853) Int)

(declare-fun ++!7867 (Conc!9853 Conc!9853) Conc!9853)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2740232 (= res!1150523 (>= (height!1476 (++!7867 (c!444339 treated!9) (c!444339 lt!970152))) (max!0 (height!1476 (c!444339 treated!9)) (height!1476 (c!444339 lt!970152)))))))

(declare-fun b!2740230 () Bool)

(declare-fun res!1150524 () Bool)

(assert (=> b!2740230 (=> (not res!1150524) (not e!1725410))))

(declare-fun isBalanced!3000 (Conc!9853) Bool)

(assert (=> b!2740230 (= res!1150524 (isBalanced!3000 (++!7867 (c!444339 treated!9) (c!444339 lt!970152))))))

(declare-fun b!2740231 () Bool)

(declare-fun res!1150522 () Bool)

(assert (=> b!2740231 (=> (not res!1150522) (not e!1725410))))

(assert (=> b!2740231 (= res!1150522 (<= (height!1476 (++!7867 (c!444339 treated!9) (c!444339 lt!970152))) (+ (max!0 (height!1476 (c!444339 treated!9)) (height!1476 (c!444339 lt!970152))) 1)))))

(declare-fun d!795027 () Bool)

(assert (=> d!795027 e!1725410))

(declare-fun res!1150521 () Bool)

(assert (=> d!795027 (=> (not res!1150521) (not e!1725410))))

(declare-fun appendAssocInst!705 (Conc!9853 Conc!9853) Bool)

(assert (=> d!795027 (= res!1150521 (appendAssocInst!705 (c!444339 treated!9) (c!444339 lt!970152)))))

(assert (=> d!795027 (= lt!970351 (BalanceConc!19321 (++!7867 (c!444339 treated!9) (c!444339 lt!970152))))))

(assert (=> d!795027 (= (++!7863 treated!9 lt!970152) lt!970351)))

(assert (= (and d!795027 res!1150521) b!2740230))

(assert (= (and b!2740230 res!1150524) b!2740231))

(assert (= (and b!2740231 res!1150522) b!2740232))

(assert (= (and b!2740232 res!1150523) b!2740233))

(declare-fun m!3157621 () Bool)

(assert (=> b!2740232 m!3157621))

(declare-fun m!3157623 () Bool)

(assert (=> b!2740232 m!3157623))

(assert (=> b!2740232 m!3157621))

(declare-fun m!3157625 () Bool)

(assert (=> b!2740232 m!3157625))

(assert (=> b!2740232 m!3157623))

(declare-fun m!3157627 () Bool)

(assert (=> b!2740232 m!3157627))

(assert (=> b!2740232 m!3157627))

(declare-fun m!3157629 () Bool)

(assert (=> b!2740232 m!3157629))

(assert (=> b!2740230 m!3157627))

(assert (=> b!2740230 m!3157627))

(declare-fun m!3157631 () Bool)

(assert (=> b!2740230 m!3157631))

(assert (=> b!2740231 m!3157621))

(assert (=> b!2740231 m!3157623))

(assert (=> b!2740231 m!3157621))

(assert (=> b!2740231 m!3157625))

(assert (=> b!2740231 m!3157623))

(assert (=> b!2740231 m!3157627))

(assert (=> b!2740231 m!3157627))

(assert (=> b!2740231 m!3157629))

(declare-fun m!3157633 () Bool)

(assert (=> d!795027 m!3157633))

(assert (=> d!795027 m!3157627))

(declare-fun m!3157635 () Bool)

(assert (=> b!2740233 m!3157635))

(assert (=> b!2740233 m!3157177))

(assert (=> b!2740233 m!3157125))

(assert (=> b!2740233 m!3157177))

(assert (=> b!2740233 m!3157125))

(declare-fun m!3157637 () Bool)

(assert (=> b!2740233 m!3157637))

(assert (=> b!2739956 d!795027))

(declare-fun b!2740234 () Bool)

(declare-fun res!1150526 () Bool)

(declare-fun e!1725414 () Bool)

(assert (=> b!2740234 (=> (not res!1150526) (not e!1725414))))

(declare-fun lt!970354 () tuple2!31186)

(assert (=> b!2740234 (= res!1150526 (= (list!11952 (_1!18225 lt!970354)) (_1!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 lt!970155)))))))

(declare-fun b!2740235 () Bool)

(assert (=> b!2740235 (= e!1725414 (= (list!11953 (_2!18225 lt!970354)) (_2!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 lt!970155)))))))

(declare-fun b!2740236 () Bool)

(declare-fun e!1725411 () tuple2!31186)

(declare-fun lt!970352 () tuple2!31186)

(declare-fun lt!970353 () Option!6219)

(assert (=> b!2740236 (= e!1725411 (tuple2!31187 (prepend!1153 (_1!18225 lt!970352) (_1!18226 (v!33108 lt!970353))) (_2!18225 lt!970352)))))

(assert (=> b!2740236 (= lt!970352 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970353))))))

(declare-fun d!795029 () Bool)

(assert (=> d!795029 e!1725414))

(declare-fun res!1150525 () Bool)

(assert (=> d!795029 (=> (not res!1150525) (not e!1725414))))

(declare-fun e!1725412 () Bool)

(assert (=> d!795029 (= res!1150525 e!1725412)))

(declare-fun c!444411 () Bool)

(assert (=> d!795029 (= c!444411 (> (size!24279 (_1!18225 lt!970354)) 0))))

(assert (=> d!795029 (= lt!970354 e!1725411)))

(declare-fun c!444410 () Bool)

(assert (=> d!795029 (= c!444410 ((_ is Some!6218) lt!970353))))

(assert (=> d!795029 (= lt!970353 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 lt!970155))))

(assert (=> d!795029 (= (lexRec!669 thiss!11556 rules!1182 lt!970155) lt!970354)))

(declare-fun b!2740237 () Bool)

(assert (=> b!2740237 (= e!1725412 (= (list!11953 (_2!18225 lt!970354)) (list!11953 lt!970155)))))

(declare-fun b!2740238 () Bool)

(assert (=> b!2740238 (= e!1725411 (tuple2!31187 (BalanceConc!19323 Empty!9854) lt!970155))))

(declare-fun b!2740239 () Bool)

(declare-fun e!1725413 () Bool)

(assert (=> b!2740239 (= e!1725412 e!1725413)))

(declare-fun res!1150527 () Bool)

(assert (=> b!2740239 (= res!1150527 (< (size!24280 (_2!18225 lt!970354)) (size!24280 lt!970155)))))

(assert (=> b!2740239 (=> (not res!1150527) (not e!1725413))))

(declare-fun b!2740240 () Bool)

(assert (=> b!2740240 (= e!1725413 (not (isEmpty!17986 (_1!18225 lt!970354))))))

(assert (= (and d!795029 c!444410) b!2740236))

(assert (= (and d!795029 (not c!444410)) b!2740238))

(assert (= (and d!795029 c!444411) b!2740239))

(assert (= (and d!795029 (not c!444411)) b!2740237))

(assert (= (and b!2740239 res!1150527) b!2740240))

(assert (= (and d!795029 res!1150525) b!2740234))

(assert (= (and b!2740234 res!1150526) b!2740235))

(declare-fun m!3157639 () Bool)

(assert (=> b!2740240 m!3157639))

(declare-fun m!3157641 () Bool)

(assert (=> b!2740237 m!3157641))

(assert (=> b!2740237 m!3157561))

(assert (=> b!2740235 m!3157641))

(assert (=> b!2740235 m!3157561))

(assert (=> b!2740235 m!3157561))

(declare-fun m!3157643 () Bool)

(assert (=> b!2740235 m!3157643))

(declare-fun m!3157645 () Bool)

(assert (=> d!795029 m!3157645))

(assert (=> d!795029 m!3157147))

(declare-fun m!3157647 () Bool)

(assert (=> b!2740236 m!3157647))

(declare-fun m!3157649 () Bool)

(assert (=> b!2740236 m!3157649))

(declare-fun m!3157651 () Bool)

(assert (=> b!2740239 m!3157651))

(declare-fun m!3157653 () Bool)

(assert (=> b!2740239 m!3157653))

(declare-fun m!3157655 () Bool)

(assert (=> b!2740234 m!3157655))

(assert (=> b!2740234 m!3157561))

(assert (=> b!2740234 m!3157561))

(assert (=> b!2740234 m!3157643))

(assert (=> b!2739956 d!795029))

(declare-fun d!795031 () Bool)

(assert (=> d!795031 (= (list!11952 (_1!18225 lt!970167)) (list!11957 (c!444341 (_1!18225 lt!970167))))))

(declare-fun bs!490077 () Bool)

(assert (= bs!490077 d!795031))

(declare-fun m!3157657 () Bool)

(assert (=> bs!490077 m!3157657))

(assert (=> b!2739956 d!795031))

(declare-fun b!2740244 () Bool)

(declare-fun e!1725416 () Bool)

(declare-fun lt!970355 () List!31529)

(assert (=> b!2740244 (= e!1725416 (or (not (= lt!970156 Nil!31429)) (= lt!970355 lt!970168)))))

(declare-fun b!2740242 () Bool)

(declare-fun e!1725415 () List!31529)

(assert (=> b!2740242 (= e!1725415 (Cons!31429 (h!36849 lt!970168) (++!7865 (t!227599 lt!970168) lt!970156)))))

(declare-fun d!795033 () Bool)

(assert (=> d!795033 e!1725416))

(declare-fun res!1150529 () Bool)

(assert (=> d!795033 (=> (not res!1150529) (not e!1725416))))

(assert (=> d!795033 (= res!1150529 (= (content!4477 lt!970355) ((_ map or) (content!4477 lt!970168) (content!4477 lt!970156))))))

(assert (=> d!795033 (= lt!970355 e!1725415)))

(declare-fun c!444412 () Bool)

(assert (=> d!795033 (= c!444412 ((_ is Nil!31429) lt!970168))))

(assert (=> d!795033 (= (++!7865 lt!970168 lt!970156) lt!970355)))

(declare-fun b!2740243 () Bool)

(declare-fun res!1150528 () Bool)

(assert (=> b!2740243 (=> (not res!1150528) (not e!1725416))))

(assert (=> b!2740243 (= res!1150528 (= (size!24278 lt!970355) (+ (size!24278 lt!970168) (size!24278 lt!970156))))))

(declare-fun b!2740241 () Bool)

(assert (=> b!2740241 (= e!1725415 lt!970156)))

(assert (= (and d!795033 c!444412) b!2740241))

(assert (= (and d!795033 (not c!444412)) b!2740242))

(assert (= (and d!795033 res!1150529) b!2740243))

(assert (= (and b!2740243 res!1150528) b!2740244))

(declare-fun m!3157659 () Bool)

(assert (=> b!2740242 m!3157659))

(declare-fun m!3157661 () Bool)

(assert (=> d!795033 m!3157661))

(declare-fun m!3157663 () Bool)

(assert (=> d!795033 m!3157663))

(assert (=> d!795033 m!3157505))

(declare-fun m!3157665 () Bool)

(assert (=> b!2740243 m!3157665))

(declare-fun m!3157667 () Bool)

(assert (=> b!2740243 m!3157667))

(assert (=> b!2740243 m!3157515))

(assert (=> b!2739956 d!795033))

(declare-fun b!2740248 () Bool)

(declare-fun e!1725418 () Bool)

(declare-fun lt!970356 () List!31531)

(assert (=> b!2740248 (= e!1725418 (or (not (= lt!970149 Nil!31431)) (= lt!970356 lt!970163)))))

(declare-fun b!2740245 () Bool)

(declare-fun e!1725417 () List!31531)

(assert (=> b!2740245 (= e!1725417 lt!970149)))

(declare-fun b!2740247 () Bool)

(declare-fun res!1150531 () Bool)

(assert (=> b!2740247 (=> (not res!1150531) (not e!1725418))))

(assert (=> b!2740247 (= res!1150531 (= (size!24282 lt!970356) (+ (size!24282 lt!970163) (size!24282 lt!970149))))))

(declare-fun d!795035 () Bool)

(assert (=> d!795035 e!1725418))

(declare-fun res!1150530 () Bool)

(assert (=> d!795035 (=> (not res!1150530) (not e!1725418))))

(assert (=> d!795035 (= res!1150530 (= (content!4479 lt!970356) ((_ map or) (content!4479 lt!970163) (content!4479 lt!970149))))))

(assert (=> d!795035 (= lt!970356 e!1725417)))

(declare-fun c!444413 () Bool)

(assert (=> d!795035 (= c!444413 ((_ is Nil!31431) lt!970163))))

(assert (=> d!795035 (= (++!7864 lt!970163 lt!970149) lt!970356)))

(declare-fun b!2740246 () Bool)

(assert (=> b!2740246 (= e!1725417 (Cons!31431 (h!36851 lt!970163) (++!7864 (t!227601 lt!970163) lt!970149)))))

(assert (= (and d!795035 c!444413) b!2740245))

(assert (= (and d!795035 (not c!444413)) b!2740246))

(assert (= (and d!795035 res!1150530) b!2740247))

(assert (= (and b!2740247 res!1150531) b!2740248))

(declare-fun m!3157669 () Bool)

(assert (=> b!2740247 m!3157669))

(declare-fun m!3157671 () Bool)

(assert (=> b!2740247 m!3157671))

(assert (=> b!2740247 m!3157593))

(declare-fun m!3157673 () Bool)

(assert (=> d!795035 m!3157673))

(declare-fun m!3157675 () Bool)

(assert (=> d!795035 m!3157675))

(assert (=> d!795035 m!3157599))

(declare-fun m!3157677 () Bool)

(assert (=> b!2740246 m!3157677))

(assert (=> b!2739956 d!795035))

(declare-fun d!795037 () Bool)

(assert (=> d!795037 (= (list!11953 lt!970152) (list!11956 (c!444339 lt!970152)))))

(declare-fun bs!490078 () Bool)

(assert (= bs!490078 d!795037))

(declare-fun m!3157679 () Bool)

(assert (=> bs!490078 m!3157679))

(assert (=> b!2739956 d!795037))

(declare-fun lt!970357 () List!31529)

(declare-fun e!1725420 () Bool)

(declare-fun b!2740252 () Bool)

(assert (=> b!2740252 (= e!1725420 (or (not (= lt!970168 Nil!31429)) (= lt!970357 lt!970157)))))

(declare-fun b!2740250 () Bool)

(declare-fun e!1725419 () List!31529)

(assert (=> b!2740250 (= e!1725419 (Cons!31429 (h!36849 lt!970157) (++!7865 (t!227599 lt!970157) lt!970168)))))

(declare-fun d!795039 () Bool)

(assert (=> d!795039 e!1725420))

(declare-fun res!1150533 () Bool)

(assert (=> d!795039 (=> (not res!1150533) (not e!1725420))))

(assert (=> d!795039 (= res!1150533 (= (content!4477 lt!970357) ((_ map or) (content!4477 lt!970157) (content!4477 lt!970168))))))

(assert (=> d!795039 (= lt!970357 e!1725419)))

(declare-fun c!444414 () Bool)

(assert (=> d!795039 (= c!444414 ((_ is Nil!31429) lt!970157))))

(assert (=> d!795039 (= (++!7865 lt!970157 lt!970168) lt!970357)))

(declare-fun b!2740251 () Bool)

(declare-fun res!1150532 () Bool)

(assert (=> b!2740251 (=> (not res!1150532) (not e!1725420))))

(assert (=> b!2740251 (= res!1150532 (= (size!24278 lt!970357) (+ (size!24278 lt!970157) (size!24278 lt!970168))))))

(declare-fun b!2740249 () Bool)

(assert (=> b!2740249 (= e!1725419 lt!970168)))

(assert (= (and d!795039 c!444414) b!2740249))

(assert (= (and d!795039 (not c!444414)) b!2740250))

(assert (= (and d!795039 res!1150533) b!2740251))

(assert (= (and b!2740251 res!1150532) b!2740252))

(declare-fun m!3157681 () Bool)

(assert (=> b!2740250 m!3157681))

(declare-fun m!3157683 () Bool)

(assert (=> d!795039 m!3157683))

(assert (=> d!795039 m!3157229))

(assert (=> d!795039 m!3157663))

(declare-fun m!3157685 () Bool)

(assert (=> b!2740251 m!3157685))

(assert (=> b!2740251 m!3157235))

(assert (=> b!2740251 m!3157667))

(assert (=> b!2739956 d!795039))

(declare-fun b!2740296 () Bool)

(declare-fun e!1725442 () Bool)

(declare-fun e!1725443 () Bool)

(assert (=> b!2740296 (= e!1725442 e!1725443)))

(declare-fun res!1150555 () Bool)

(declare-fun lt!970398 () tuple2!31190)

(assert (=> b!2740296 (= res!1150555 (< (size!24278 (_2!18227 lt!970398)) (size!24278 lt!970166)))))

(assert (=> b!2740296 (=> (not res!1150555) (not e!1725443))))

(declare-fun b!2740297 () Bool)

(declare-fun isEmpty!17988 (List!31531) Bool)

(assert (=> b!2740297 (= e!1725443 (not (isEmpty!17988 (_1!18227 lt!970398))))))

(declare-fun b!2740298 () Bool)

(declare-fun e!1725444 () tuple2!31190)

(declare-fun lt!970400 () Option!6221)

(declare-fun lt!970399 () tuple2!31190)

(assert (=> b!2740298 (= e!1725444 (tuple2!31191 (Cons!31431 (_1!18229 (v!33114 lt!970400)) (_1!18227 lt!970399)) (_2!18227 lt!970399)))))

(assert (=> b!2740298 (= lt!970399 (lexList!1238 thiss!11556 rules!1182 (_2!18229 (v!33114 lt!970400))))))

(declare-fun d!795041 () Bool)

(assert (=> d!795041 e!1725442))

(declare-fun c!444429 () Bool)

(assert (=> d!795041 (= c!444429 (> (size!24282 (_1!18227 lt!970398)) 0))))

(assert (=> d!795041 (= lt!970398 e!1725444)))

(declare-fun c!444430 () Bool)

(assert (=> d!795041 (= c!444430 ((_ is Some!6220) lt!970400))))

(assert (=> d!795041 (= lt!970400 (maxPrefix!2380 thiss!11556 rules!1182 lt!970166))))

(assert (=> d!795041 (= (lexList!1238 thiss!11556 rules!1182 lt!970166) lt!970398)))

(declare-fun b!2740299 () Bool)

(assert (=> b!2740299 (= e!1725442 (= (_2!18227 lt!970398) lt!970166))))

(declare-fun b!2740300 () Bool)

(assert (=> b!2740300 (= e!1725444 (tuple2!31191 Nil!31431 lt!970166))))

(assert (= (and d!795041 c!444430) b!2740298))

(assert (= (and d!795041 (not c!444430)) b!2740300))

(assert (= (and d!795041 c!444429) b!2740296))

(assert (= (and d!795041 (not c!444429)) b!2740299))

(assert (= (and b!2740296 res!1150555) b!2740297))

(declare-fun m!3157809 () Bool)

(assert (=> b!2740296 m!3157809))

(assert (=> b!2740296 m!3157513))

(declare-fun m!3157813 () Bool)

(assert (=> b!2740297 m!3157813))

(declare-fun m!3157817 () Bool)

(assert (=> b!2740298 m!3157817))

(declare-fun m!3157819 () Bool)

(assert (=> d!795041 m!3157819))

(declare-fun m!3157821 () Bool)

(assert (=> d!795041 m!3157821))

(assert (=> b!2739956 d!795041))

(declare-fun lt!970402 () List!31531)

(declare-fun e!1725448 () Bool)

(declare-fun b!2740308 () Bool)

(assert (=> b!2740308 (= e!1725448 (or (not (= (++!7864 lt!970163 lt!970149) Nil!31431)) (= lt!970402 lt!970162)))))

(declare-fun b!2740305 () Bool)

(declare-fun e!1725447 () List!31531)

(assert (=> b!2740305 (= e!1725447 (++!7864 lt!970163 lt!970149))))

(declare-fun b!2740307 () Bool)

(declare-fun res!1150559 () Bool)

(assert (=> b!2740307 (=> (not res!1150559) (not e!1725448))))

(assert (=> b!2740307 (= res!1150559 (= (size!24282 lt!970402) (+ (size!24282 lt!970162) (size!24282 (++!7864 lt!970163 lt!970149)))))))

(declare-fun d!795055 () Bool)

(assert (=> d!795055 e!1725448))

(declare-fun res!1150558 () Bool)

(assert (=> d!795055 (=> (not res!1150558) (not e!1725448))))

(assert (=> d!795055 (= res!1150558 (= (content!4479 lt!970402) ((_ map or) (content!4479 lt!970162) (content!4479 (++!7864 lt!970163 lt!970149)))))))

(assert (=> d!795055 (= lt!970402 e!1725447)))

(declare-fun c!444432 () Bool)

(assert (=> d!795055 (= c!444432 ((_ is Nil!31431) lt!970162))))

(assert (=> d!795055 (= (++!7864 lt!970162 (++!7864 lt!970163 lt!970149)) lt!970402)))

(declare-fun b!2740306 () Bool)

(assert (=> b!2740306 (= e!1725447 (Cons!31431 (h!36851 lt!970162) (++!7864 (t!227601 lt!970162) (++!7864 lt!970163 lt!970149))))))

(assert (= (and d!795055 c!444432) b!2740305))

(assert (= (and d!795055 (not c!444432)) b!2740306))

(assert (= (and d!795055 res!1150558) b!2740307))

(assert (= (and b!2740307 res!1150559) b!2740308))

(declare-fun m!3157831 () Bool)

(assert (=> b!2740307 m!3157831))

(declare-fun m!3157835 () Bool)

(assert (=> b!2740307 m!3157835))

(assert (=> b!2740307 m!3157129))

(declare-fun m!3157837 () Bool)

(assert (=> b!2740307 m!3157837))

(declare-fun m!3157839 () Bool)

(assert (=> d!795055 m!3157839))

(declare-fun m!3157841 () Bool)

(assert (=> d!795055 m!3157841))

(assert (=> d!795055 m!3157129))

(declare-fun m!3157843 () Bool)

(assert (=> d!795055 m!3157843))

(assert (=> b!2740306 m!3157129))

(declare-fun m!3157845 () Bool)

(assert (=> b!2740306 m!3157845))

(assert (=> b!2739956 d!795055))

(declare-fun b!2740411 () Bool)

(declare-fun e!1725511 () tuple2!31186)

(declare-fun lt!970481 () BalanceConc!19320)

(assert (=> b!2740411 (= e!1725511 (tuple2!31187 (BalanceConc!19323 Empty!9854) lt!970481))))

(declare-fun e!1725513 () Bool)

(declare-fun b!2740412 () Bool)

(declare-fun lt!970487 () tuple2!31186)

(assert (=> b!2740412 (= e!1725513 (= (list!11953 (_2!18225 lt!970487)) (list!11953 (_2!18225 (lexRec!669 thiss!11556 rules!1182 totalInput!328)))))))

(declare-fun lt!970480 () Option!6219)

(declare-fun lt!970490 () tuple2!31186)

(declare-fun b!2740413 () Bool)

(assert (=> b!2740413 (= lt!970490 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970480))))))

(declare-fun e!1725512 () tuple2!31186)

(assert (=> b!2740413 (= e!1725512 (tuple2!31187 (prepend!1153 (_1!18225 lt!970490) (_1!18226 (v!33108 lt!970480))) (_2!18225 lt!970490)))))

(declare-fun e!1725514 () tuple2!31186)

(declare-fun lt!970473 () Option!6219)

(declare-fun b!2740414 () Bool)

(assert (=> b!2740414 (= e!1725514 (lexTailRec!44 thiss!11556 rules!1182 totalInput!328 (++!7863 lt!970155 (charsOf!3034 (_1!18226 (v!33108 lt!970473)))) (_2!18226 (v!33108 lt!970473)) (append!849 lt!970174 (_1!18226 (v!33108 lt!970473)))))))

(declare-fun lt!970485 () tuple2!31186)

(assert (=> b!2740414 (= lt!970485 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970473))))))

(declare-fun lt!970478 () List!31529)

(assert (=> b!2740414 (= lt!970478 (list!11953 lt!970155))))

(declare-fun lt!970482 () List!31529)

(assert (=> b!2740414 (= lt!970482 (list!11953 (charsOf!3034 (_1!18226 (v!33108 lt!970473)))))))

(declare-fun lt!970469 () List!31529)

(assert (=> b!2740414 (= lt!970469 (list!11953 (_2!18226 (v!33108 lt!970473))))))

(declare-fun lt!970471 () Unit!45452)

(assert (=> b!2740414 (= lt!970471 (lemmaConcatAssociativity!1652 lt!970478 lt!970482 lt!970469))))

(assert (=> b!2740414 (= (++!7865 (++!7865 lt!970478 lt!970482) lt!970469) (++!7865 lt!970478 (++!7865 lt!970482 lt!970469)))))

(declare-fun lt!970470 () Unit!45452)

(assert (=> b!2740414 (= lt!970470 lt!970471)))

(assert (=> b!2740414 (= lt!970480 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970154))))))

(declare-fun c!444448 () Bool)

(assert (=> b!2740414 (= c!444448 ((_ is Some!6218) lt!970480))))

(assert (=> b!2740414 (= (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970154))) e!1725512)))

(declare-fun lt!970492 () Unit!45452)

(declare-fun Unit!45456 () Unit!45452)

(assert (=> b!2740414 (= lt!970492 Unit!45456)))

(declare-fun lt!970474 () List!31531)

(assert (=> b!2740414 (= lt!970474 (list!11952 lt!970174))))

(declare-fun lt!970491 () List!31531)

(assert (=> b!2740414 (= lt!970491 (Cons!31431 (_1!18226 (v!33108 lt!970473)) Nil!31431))))

(declare-fun lt!970479 () List!31531)

(assert (=> b!2740414 (= lt!970479 (list!11952 (_1!18225 lt!970485)))))

(declare-fun lt!970488 () Unit!45452)

(assert (=> b!2740414 (= lt!970488 (lemmaConcatAssociativity!1651 lt!970474 lt!970491 lt!970479))))

(assert (=> b!2740414 (= (++!7864 (++!7864 lt!970474 lt!970491) lt!970479) (++!7864 lt!970474 (++!7864 lt!970491 lt!970479)))))

(declare-fun lt!970483 () Unit!45452)

(assert (=> b!2740414 (= lt!970483 lt!970488)))

(declare-fun lt!970472 () List!31529)

(assert (=> b!2740414 (= lt!970472 (++!7865 (list!11953 lt!970155) (list!11953 (charsOf!3034 (_1!18226 (v!33108 lt!970473))))))))

(declare-fun lt!970475 () List!31529)

(assert (=> b!2740414 (= lt!970475 (list!11953 (_2!18226 (v!33108 lt!970473))))))

(declare-fun lt!970486 () List!31531)

(assert (=> b!2740414 (= lt!970486 (list!11952 (append!849 lt!970174 (_1!18226 (v!33108 lt!970473)))))))

(declare-fun lt!970476 () Unit!45452)

(assert (=> b!2740414 (= lt!970476 (lemmaLexThenLexPrefix!436 thiss!11556 rules!1182 lt!970472 lt!970475 lt!970486 (list!11952 (_1!18225 lt!970485)) (list!11953 (_2!18225 lt!970485))))))

(assert (=> b!2740414 (= (lexList!1238 thiss!11556 rules!1182 lt!970472) (tuple2!31191 lt!970486 Nil!31429))))

(declare-fun lt!970477 () Unit!45452)

(assert (=> b!2740414 (= lt!970477 lt!970476)))

(assert (=> b!2740414 (= lt!970481 (++!7863 lt!970155 (charsOf!3034 (_1!18226 (v!33108 lt!970473)))))))

(declare-fun lt!970484 () Option!6219)

(assert (=> b!2740414 (= lt!970484 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 lt!970481))))

(declare-fun c!444450 () Bool)

(assert (=> b!2740414 (= c!444450 ((_ is Some!6218) lt!970484))))

(assert (=> b!2740414 (= (lexRec!669 thiss!11556 rules!1182 (++!7863 lt!970155 (charsOf!3034 (_1!18226 (v!33108 lt!970473))))) e!1725511)))

(declare-fun lt!970468 () Unit!45452)

(declare-fun Unit!45457 () Unit!45452)

(assert (=> b!2740414 (= lt!970468 Unit!45457)))

(declare-fun b!2740415 () Bool)

(assert (=> b!2740415 (= e!1725512 (tuple2!31187 (BalanceConc!19323 Empty!9854) (_2!18226 (v!33108 lt!970154))))))

(declare-fun lt!970489 () tuple2!31186)

(declare-fun b!2740416 () Bool)

(assert (=> b!2740416 (= lt!970489 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970484))))))

(assert (=> b!2740416 (= e!1725511 (tuple2!31187 (prepend!1153 (_1!18225 lt!970489) (_1!18226 (v!33108 lt!970484))) (_2!18225 lt!970489)))))

(declare-fun d!795059 () Bool)

(assert (=> d!795059 e!1725513))

(declare-fun res!1150580 () Bool)

(assert (=> d!795059 (=> (not res!1150580) (not e!1725513))))

(assert (=> d!795059 (= res!1150580 (= (list!11952 (_1!18225 lt!970487)) (list!11952 (_1!18225 (lexRec!669 thiss!11556 rules!1182 totalInput!328)))))))

(assert (=> d!795059 (= lt!970487 e!1725514)))

(declare-fun c!444449 () Bool)

(assert (=> d!795059 (= c!444449 ((_ is Some!6218) lt!970473))))

(assert (=> d!795059 (= lt!970473 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970154))))))

(assert (=> d!795059 (= (lexTailRec!44 thiss!11556 rules!1182 totalInput!328 lt!970155 (_2!18226 (v!33108 lt!970154)) lt!970174) lt!970487)))

(declare-fun b!2740410 () Bool)

(assert (=> b!2740410 (= e!1725514 (tuple2!31187 lt!970174 (_2!18226 (v!33108 lt!970154))))))

(assert (= (and d!795059 c!444449) b!2740414))

(assert (= (and d!795059 (not c!444449)) b!2740410))

(assert (= (and b!2740414 c!444448) b!2740413))

(assert (= (and b!2740414 (not c!444448)) b!2740415))

(assert (= (and b!2740414 c!444450) b!2740416))

(assert (= (and b!2740414 (not c!444450)) b!2740411))

(assert (= (and d!795059 res!1150580) b!2740412))

(declare-fun m!3157955 () Bool)

(assert (=> b!2740416 m!3157955))

(declare-fun m!3157957 () Bool)

(assert (=> b!2740416 m!3157957))

(declare-fun m!3157959 () Bool)

(assert (=> d!795059 m!3157959))

(assert (=> d!795059 m!3157183))

(declare-fun m!3157961 () Bool)

(assert (=> d!795059 m!3157961))

(assert (=> d!795059 m!3157469))

(declare-fun m!3157963 () Bool)

(assert (=> b!2740413 m!3157963))

(declare-fun m!3157965 () Bool)

(assert (=> b!2740413 m!3157965))

(declare-fun m!3157967 () Bool)

(assert (=> b!2740414 m!3157967))

(declare-fun m!3157969 () Bool)

(assert (=> b!2740414 m!3157969))

(declare-fun m!3157971 () Bool)

(assert (=> b!2740414 m!3157971))

(assert (=> b!2740414 m!3157971))

(declare-fun m!3157973 () Bool)

(assert (=> b!2740414 m!3157973))

(declare-fun m!3157975 () Bool)

(assert (=> b!2740414 m!3157975))

(declare-fun m!3157977 () Bool)

(assert (=> b!2740414 m!3157977))

(declare-fun m!3157979 () Bool)

(assert (=> b!2740414 m!3157979))

(declare-fun m!3157981 () Bool)

(assert (=> b!2740414 m!3157981))

(declare-fun m!3157983 () Bool)

(assert (=> b!2740414 m!3157983))

(assert (=> b!2740414 m!3157971))

(declare-fun m!3157985 () Bool)

(assert (=> b!2740414 m!3157985))

(assert (=> b!2740414 m!3157975))

(declare-fun m!3157987 () Bool)

(assert (=> b!2740414 m!3157987))

(assert (=> b!2740414 m!3157977))

(declare-fun m!3157989 () Bool)

(assert (=> b!2740414 m!3157989))

(declare-fun m!3157991 () Bool)

(assert (=> b!2740414 m!3157991))

(declare-fun m!3157993 () Bool)

(assert (=> b!2740414 m!3157993))

(declare-fun m!3157995 () Bool)

(assert (=> b!2740414 m!3157995))

(assert (=> b!2740414 m!3157469))

(assert (=> b!2740414 m!3157105))

(declare-fun m!3157997 () Bool)

(assert (=> b!2740414 m!3157997))

(declare-fun m!3157999 () Bool)

(assert (=> b!2740414 m!3157999))

(assert (=> b!2740414 m!3157991))

(declare-fun m!3158001 () Bool)

(assert (=> b!2740414 m!3158001))

(declare-fun m!3158003 () Bool)

(assert (=> b!2740414 m!3158003))

(assert (=> b!2740414 m!3157561))

(assert (=> b!2740414 m!3157561))

(assert (=> b!2740414 m!3157969))

(declare-fun m!3158005 () Bool)

(assert (=> b!2740414 m!3158005))

(assert (=> b!2740414 m!3157967))

(assert (=> b!2740414 m!3157983))

(declare-fun m!3158007 () Bool)

(assert (=> b!2740414 m!3158007))

(assert (=> b!2740414 m!3157995))

(declare-fun m!3158009 () Bool)

(assert (=> b!2740414 m!3158009))

(assert (=> b!2740414 m!3157967))

(assert (=> b!2740414 m!3157151))

(assert (=> b!2740414 m!3157999))

(declare-fun m!3158011 () Bool)

(assert (=> b!2740414 m!3158011))

(assert (=> b!2740414 m!3158007))

(declare-fun m!3158013 () Bool)

(assert (=> b!2740414 m!3158013))

(assert (=> b!2740414 m!3157983))

(declare-fun m!3158015 () Bool)

(assert (=> b!2740414 m!3158015))

(declare-fun m!3158017 () Bool)

(assert (=> b!2740412 m!3158017))

(assert (=> b!2740412 m!3157183))

(declare-fun m!3158019 () Bool)

(assert (=> b!2740412 m!3158019))

(assert (=> b!2739956 d!795059))

(declare-fun d!795095 () Bool)

(declare-fun lt!970495 () BalanceConc!19320)

(assert (=> d!795095 (= (list!11953 lt!970495) (originalCharacters!5575 (_1!18226 (v!33108 lt!970154))))))

(declare-fun dynLambda!13572 (Int TokenValue!5035) BalanceConc!19320)

(assert (=> d!795095 (= lt!970495 (dynLambda!13572 (toChars!6666 (transformation!4813 (rule!7261 (_1!18226 (v!33108 lt!970154))))) (value!154783 (_1!18226 (v!33108 lt!970154)))))))

(assert (=> d!795095 (= (charsOf!3034 (_1!18226 (v!33108 lt!970154))) lt!970495)))

(declare-fun b_lambda!82917 () Bool)

(assert (=> (not b_lambda!82917) (not d!795095)))

(declare-fun tb!152961 () Bool)

(declare-fun t!227608 () Bool)

(assert (=> (and b!2739947 (= (toChars!6666 (transformation!4813 (h!36852 rules!1182))) (toChars!6666 (transformation!4813 (rule!7261 (_1!18226 (v!33108 lt!970154)))))) t!227608) tb!152961))

(declare-fun b!2740421 () Bool)

(declare-fun e!1725517 () Bool)

(declare-fun tp!861314 () Bool)

(assert (=> b!2740421 (= e!1725517 (and (inv!42753 (c!444339 (dynLambda!13572 (toChars!6666 (transformation!4813 (rule!7261 (_1!18226 (v!33108 lt!970154))))) (value!154783 (_1!18226 (v!33108 lt!970154)))))) tp!861314))))

(declare-fun result!188892 () Bool)

(assert (=> tb!152961 (= result!188892 (and (inv!42756 (dynLambda!13572 (toChars!6666 (transformation!4813 (rule!7261 (_1!18226 (v!33108 lt!970154))))) (value!154783 (_1!18226 (v!33108 lt!970154))))) e!1725517))))

(assert (= tb!152961 b!2740421))

(declare-fun m!3158021 () Bool)

(assert (=> b!2740421 m!3158021))

(declare-fun m!3158023 () Bool)

(assert (=> tb!152961 m!3158023))

(assert (=> d!795095 t!227608))

(declare-fun b_and!201599 () Bool)

(assert (= b_and!201591 (and (=> t!227608 result!188892) b_and!201599)))

(declare-fun m!3158025 () Bool)

(assert (=> d!795095 m!3158025))

(declare-fun m!3158027 () Bool)

(assert (=> d!795095 m!3158027))

(assert (=> b!2739956 d!795095))

(declare-fun lt!970496 () List!31531)

(declare-fun e!1725519 () Bool)

(declare-fun b!2740425 () Bool)

(assert (=> b!2740425 (= e!1725519 (or (not (= lt!970163 Nil!31431)) (= lt!970496 lt!970162)))))

(declare-fun b!2740422 () Bool)

(declare-fun e!1725518 () List!31531)

(assert (=> b!2740422 (= e!1725518 lt!970163)))

(declare-fun b!2740424 () Bool)

(declare-fun res!1150582 () Bool)

(assert (=> b!2740424 (=> (not res!1150582) (not e!1725519))))

(assert (=> b!2740424 (= res!1150582 (= (size!24282 lt!970496) (+ (size!24282 lt!970162) (size!24282 lt!970163))))))

(declare-fun d!795097 () Bool)

(assert (=> d!795097 e!1725519))

(declare-fun res!1150581 () Bool)

(assert (=> d!795097 (=> (not res!1150581) (not e!1725519))))

(assert (=> d!795097 (= res!1150581 (= (content!4479 lt!970496) ((_ map or) (content!4479 lt!970162) (content!4479 lt!970163))))))

(assert (=> d!795097 (= lt!970496 e!1725518)))

(declare-fun c!444451 () Bool)

(assert (=> d!795097 (= c!444451 ((_ is Nil!31431) lt!970162))))

(assert (=> d!795097 (= (++!7864 lt!970162 lt!970163) lt!970496)))

(declare-fun b!2740423 () Bool)

(assert (=> b!2740423 (= e!1725518 (Cons!31431 (h!36851 lt!970162) (++!7864 (t!227601 lt!970162) lt!970163)))))

(assert (= (and d!795097 c!444451) b!2740422))

(assert (= (and d!795097 (not c!444451)) b!2740423))

(assert (= (and d!795097 res!1150581) b!2740424))

(assert (= (and b!2740424 res!1150582) b!2740425))

(declare-fun m!3158029 () Bool)

(assert (=> b!2740424 m!3158029))

(assert (=> b!2740424 m!3157835))

(assert (=> b!2740424 m!3157671))

(declare-fun m!3158031 () Bool)

(assert (=> d!795097 m!3158031))

(assert (=> d!795097 m!3157841))

(assert (=> d!795097 m!3157675))

(declare-fun m!3158033 () Bool)

(assert (=> b!2740423 m!3158033))

(assert (=> b!2739956 d!795097))

(declare-fun d!795099 () Bool)

(assert (=> d!795099 (= (inv!42747 (tag!5317 (h!36852 rules!1182))) (= (mod (str.len (value!154782 (tag!5317 (h!36852 rules!1182)))) 2) 0))))

(assert (=> b!2739954 d!795099))

(declare-fun d!795101 () Bool)

(declare-fun res!1150585 () Bool)

(declare-fun e!1725522 () Bool)

(assert (=> d!795101 (=> (not res!1150585) (not e!1725522))))

(declare-fun semiInverseModEq!1989 (Int Int) Bool)

(assert (=> d!795101 (= res!1150585 (semiInverseModEq!1989 (toChars!6666 (transformation!4813 (h!36852 rules!1182))) (toValue!6807 (transformation!4813 (h!36852 rules!1182)))))))

(assert (=> d!795101 (= (inv!42755 (transformation!4813 (h!36852 rules!1182))) e!1725522)))

(declare-fun b!2740428 () Bool)

(declare-fun equivClasses!1890 (Int Int) Bool)

(assert (=> b!2740428 (= e!1725522 (equivClasses!1890 (toChars!6666 (transformation!4813 (h!36852 rules!1182))) (toValue!6807 (transformation!4813 (h!36852 rules!1182)))))))

(assert (= (and d!795101 res!1150585) b!2740428))

(declare-fun m!3158035 () Bool)

(assert (=> d!795101 m!3158035))

(declare-fun m!3158037 () Bool)

(assert (=> b!2740428 m!3158037))

(assert (=> b!2739954 d!795101))

(declare-fun d!795103 () Bool)

(assert (=> d!795103 (= (list!11953 (_2!18225 lt!970170)) (list!11956 (c!444339 (_2!18225 lt!970170))))))

(declare-fun bs!490089 () Bool)

(assert (= bs!490089 d!795103))

(declare-fun m!3158039 () Bool)

(assert (=> bs!490089 m!3158039))

(assert (=> b!2739955 d!795103))

(declare-fun d!795105 () Bool)

(assert (=> d!795105 (= (list!11953 (_2!18225 lt!970160)) (list!11956 (c!444339 (_2!18225 lt!970160))))))

(declare-fun bs!490090 () Bool)

(assert (= bs!490090 d!795105))

(declare-fun m!3158041 () Bool)

(assert (=> bs!490090 m!3158041))

(assert (=> b!2739955 d!795105))

(declare-fun d!795107 () Bool)

(assert (=> d!795107 (= (list!11952 acc!331) (list!11957 (c!444341 acc!331)))))

(declare-fun bs!490091 () Bool)

(assert (= bs!490091 d!795107))

(declare-fun m!3158043 () Bool)

(assert (=> bs!490091 m!3158043))

(assert (=> b!2739944 d!795107))

(declare-fun d!795109 () Bool)

(assert (=> d!795109 (= (list!11952 (_1!18225 lt!970148)) (list!11957 (c!444341 (_1!18225 lt!970148))))))

(declare-fun bs!490092 () Bool)

(assert (= bs!490092 d!795109))

(declare-fun m!3158045 () Bool)

(assert (=> bs!490092 m!3158045))

(assert (=> b!2739944 d!795109))

(declare-fun b!2740429 () Bool)

(declare-fun res!1150587 () Bool)

(declare-fun e!1725526 () Bool)

(assert (=> b!2740429 (=> (not res!1150587) (not e!1725526))))

(declare-fun lt!970499 () tuple2!31186)

(assert (=> b!2740429 (= res!1150587 (= (list!11952 (_1!18225 lt!970499)) (_1!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 treated!9)))))))

(declare-fun b!2740430 () Bool)

(assert (=> b!2740430 (= e!1725526 (= (list!11953 (_2!18225 lt!970499)) (_2!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 treated!9)))))))

(declare-fun b!2740431 () Bool)

(declare-fun e!1725523 () tuple2!31186)

(declare-fun lt!970497 () tuple2!31186)

(declare-fun lt!970498 () Option!6219)

(assert (=> b!2740431 (= e!1725523 (tuple2!31187 (prepend!1153 (_1!18225 lt!970497) (_1!18226 (v!33108 lt!970498))) (_2!18225 lt!970497)))))

(assert (=> b!2740431 (= lt!970497 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970498))))))

(declare-fun d!795111 () Bool)

(assert (=> d!795111 e!1725526))

(declare-fun res!1150586 () Bool)

(assert (=> d!795111 (=> (not res!1150586) (not e!1725526))))

(declare-fun e!1725524 () Bool)

(assert (=> d!795111 (= res!1150586 e!1725524)))

(declare-fun c!444453 () Bool)

(assert (=> d!795111 (= c!444453 (> (size!24279 (_1!18225 lt!970499)) 0))))

(assert (=> d!795111 (= lt!970499 e!1725523)))

(declare-fun c!444452 () Bool)

(assert (=> d!795111 (= c!444452 ((_ is Some!6218) lt!970498))))

(assert (=> d!795111 (= lt!970498 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 treated!9))))

(assert (=> d!795111 (= (lexRec!669 thiss!11556 rules!1182 treated!9) lt!970499)))

(declare-fun b!2740432 () Bool)

(assert (=> b!2740432 (= e!1725524 (= (list!11953 (_2!18225 lt!970499)) (list!11953 treated!9)))))

(declare-fun b!2740433 () Bool)

(assert (=> b!2740433 (= e!1725523 (tuple2!31187 (BalanceConc!19323 Empty!9854) treated!9))))

(declare-fun b!2740434 () Bool)

(declare-fun e!1725525 () Bool)

(assert (=> b!2740434 (= e!1725524 e!1725525)))

(declare-fun res!1150588 () Bool)

(assert (=> b!2740434 (= res!1150588 (< (size!24280 (_2!18225 lt!970499)) (size!24280 treated!9)))))

(assert (=> b!2740434 (=> (not res!1150588) (not e!1725525))))

(declare-fun b!2740435 () Bool)

(assert (=> b!2740435 (= e!1725525 (not (isEmpty!17986 (_1!18225 lt!970499))))))

(assert (= (and d!795111 c!444452) b!2740431))

(assert (= (and d!795111 (not c!444452)) b!2740433))

(assert (= (and d!795111 c!444453) b!2740434))

(assert (= (and d!795111 (not c!444453)) b!2740432))

(assert (= (and b!2740434 res!1150588) b!2740435))

(assert (= (and d!795111 res!1150586) b!2740429))

(assert (= (and b!2740429 res!1150587) b!2740430))

(declare-fun m!3158047 () Bool)

(assert (=> b!2740435 m!3158047))

(declare-fun m!3158049 () Bool)

(assert (=> b!2740432 m!3158049))

(assert (=> b!2740432 m!3157177))

(assert (=> b!2740430 m!3158049))

(assert (=> b!2740430 m!3157177))

(assert (=> b!2740430 m!3157177))

(declare-fun m!3158051 () Bool)

(assert (=> b!2740430 m!3158051))

(declare-fun m!3158053 () Bool)

(assert (=> d!795111 m!3158053))

(declare-fun m!3158055 () Bool)

(assert (=> d!795111 m!3158055))

(declare-fun m!3158057 () Bool)

(assert (=> b!2740431 m!3158057))

(declare-fun m!3158059 () Bool)

(assert (=> b!2740431 m!3158059))

(declare-fun m!3158061 () Bool)

(assert (=> b!2740434 m!3158061))

(declare-fun m!3158063 () Bool)

(assert (=> b!2740434 m!3158063))

(declare-fun m!3158065 () Bool)

(assert (=> b!2740429 m!3158065))

(assert (=> b!2740429 m!3157177))

(assert (=> b!2740429 m!3157177))

(assert (=> b!2740429 m!3158051))

(assert (=> b!2739944 d!795111))

(declare-fun d!795113 () Bool)

(declare-fun c!444456 () Bool)

(assert (=> d!795113 (= c!444456 ((_ is Node!9853) (c!444339 totalInput!328)))))

(declare-fun e!1725531 () Bool)

(assert (=> d!795113 (= (inv!42753 (c!444339 totalInput!328)) e!1725531)))

(declare-fun b!2740442 () Bool)

(declare-fun inv!42765 (Conc!9853) Bool)

(assert (=> b!2740442 (= e!1725531 (inv!42765 (c!444339 totalInput!328)))))

(declare-fun b!2740443 () Bool)

(declare-fun e!1725532 () Bool)

(assert (=> b!2740443 (= e!1725531 e!1725532)))

(declare-fun res!1150591 () Bool)

(assert (=> b!2740443 (= res!1150591 (not ((_ is Leaf!15004) (c!444339 totalInput!328))))))

(assert (=> b!2740443 (=> res!1150591 e!1725532)))

(declare-fun b!2740444 () Bool)

(declare-fun inv!42766 (Conc!9853) Bool)

(assert (=> b!2740444 (= e!1725532 (inv!42766 (c!444339 totalInput!328)))))

(assert (= (and d!795113 c!444456) b!2740442))

(assert (= (and d!795113 (not c!444456)) b!2740443))

(assert (= (and b!2740443 (not res!1150591)) b!2740444))

(declare-fun m!3158067 () Bool)

(assert (=> b!2740442 m!3158067))

(declare-fun m!3158069 () Bool)

(assert (=> b!2740444 m!3158069))

(assert (=> b!2739953 d!795113))

(declare-fun d!795115 () Bool)

(declare-fun c!444457 () Bool)

(assert (=> d!795115 (= c!444457 ((_ is Node!9853) (c!444339 treated!9)))))

(declare-fun e!1725533 () Bool)

(assert (=> d!795115 (= (inv!42753 (c!444339 treated!9)) e!1725533)))

(declare-fun b!2740445 () Bool)

(assert (=> b!2740445 (= e!1725533 (inv!42765 (c!444339 treated!9)))))

(declare-fun b!2740446 () Bool)

(declare-fun e!1725534 () Bool)

(assert (=> b!2740446 (= e!1725533 e!1725534)))

(declare-fun res!1150592 () Bool)

(assert (=> b!2740446 (= res!1150592 (not ((_ is Leaf!15004) (c!444339 treated!9))))))

(assert (=> b!2740446 (=> res!1150592 e!1725534)))

(declare-fun b!2740447 () Bool)

(assert (=> b!2740447 (= e!1725534 (inv!42766 (c!444339 treated!9)))))

(assert (= (and d!795115 c!444457) b!2740445))

(assert (= (and d!795115 (not c!444457)) b!2740446))

(assert (= (and b!2740446 (not res!1150592)) b!2740447))

(declare-fun m!3158071 () Bool)

(assert (=> b!2740445 m!3158071))

(declare-fun m!3158073 () Bool)

(assert (=> b!2740447 m!3158073))

(assert (=> b!2739942 d!795115))

(declare-fun d!795117 () Bool)

(assert (=> d!795117 (= (inv!42756 treated!9) (isBalanced!3000 (c!444339 treated!9)))))

(declare-fun bs!490093 () Bool)

(assert (= bs!490093 d!795117))

(declare-fun m!3158075 () Bool)

(assert (=> bs!490093 m!3158075))

(assert (=> start!265528 d!795117))

(declare-fun d!795119 () Bool)

(assert (=> d!795119 (= (inv!42756 input!603) (isBalanced!3000 (c!444339 input!603)))))

(declare-fun bs!490094 () Bool)

(assert (= bs!490094 d!795119))

(declare-fun m!3158077 () Bool)

(assert (=> bs!490094 m!3158077))

(assert (=> start!265528 d!795119))

(declare-fun d!795121 () Bool)

(assert (=> d!795121 (= (inv!42756 totalInput!328) (isBalanced!3000 (c!444339 totalInput!328)))))

(declare-fun bs!490095 () Bool)

(assert (= bs!490095 d!795121))

(declare-fun m!3158079 () Bool)

(assert (=> bs!490095 m!3158079))

(assert (=> start!265528 d!795121))

(declare-fun d!795123 () Bool)

(assert (=> d!795123 (= (inv!42757 acc!331) (isBalanced!2999 (c!444341 acc!331)))))

(declare-fun bs!490096 () Bool)

(assert (= bs!490096 d!795123))

(declare-fun m!3158081 () Bool)

(assert (=> bs!490096 m!3158081))

(assert (=> start!265528 d!795123))

(declare-fun d!795125 () Bool)

(declare-fun res!1150595 () Bool)

(declare-fun e!1725537 () Bool)

(assert (=> d!795125 (=> (not res!1150595) (not e!1725537))))

(declare-fun rulesValid!1796 (LexerInterface!4409 List!31532) Bool)

(assert (=> d!795125 (= res!1150595 (rulesValid!1796 thiss!11556 rules!1182))))

(assert (=> d!795125 (= (rulesInvariant!3894 thiss!11556 rules!1182) e!1725537)))

(declare-fun b!2740450 () Bool)

(declare-datatypes ((List!31534 0))(
  ( (Nil!31434) (Cons!31434 (h!36854 String!35075) (t!227612 List!31534)) )
))
(declare-fun noDuplicateTag!1792 (LexerInterface!4409 List!31532 List!31534) Bool)

(assert (=> b!2740450 (= e!1725537 (noDuplicateTag!1792 thiss!11556 rules!1182 Nil!31434))))

(assert (= (and d!795125 res!1150595) b!2740450))

(declare-fun m!3158083 () Bool)

(assert (=> d!795125 m!3158083))

(declare-fun m!3158085 () Bool)

(assert (=> b!2740450 m!3158085))

(assert (=> b!2739952 d!795125))

(declare-fun b!2740451 () Bool)

(declare-fun e!1725540 () Bool)

(declare-fun e!1725543 () Bool)

(assert (=> b!2740451 (= e!1725540 e!1725543)))

(declare-fun res!1150599 () Bool)

(assert (=> b!2740451 (=> res!1150599 e!1725543)))

(declare-fun lt!970503 () Option!6219)

(assert (=> b!2740451 (= res!1150599 (not (isDefined!4921 lt!970503)))))

(declare-fun d!795127 () Bool)

(assert (=> d!795127 e!1725540))

(declare-fun res!1150596 () Bool)

(assert (=> d!795127 (=> (not res!1150596) (not e!1725540))))

(assert (=> d!795127 (= res!1150596 (= (isDefined!4921 lt!970503) (isDefined!4922 (maxPrefixZipper!484 thiss!11556 rules!1182 (list!11953 input!603)))))))

(declare-fun e!1725541 () Option!6219)

(assert (=> d!795127 (= lt!970503 e!1725541)))

(declare-fun c!444458 () Bool)

(assert (=> d!795127 (= c!444458 (and ((_ is Cons!31432) rules!1182) ((_ is Nil!31432) (t!227602 rules!1182))))))

(declare-fun lt!970504 () Unit!45452)

(declare-fun lt!970501 () Unit!45452)

(assert (=> d!795127 (= lt!970504 lt!970501)))

(declare-fun lt!970505 () List!31529)

(declare-fun lt!970502 () List!31529)

(assert (=> d!795127 (isPrefix!2497 lt!970505 lt!970502)))

(assert (=> d!795127 (= lt!970501 (lemmaIsPrefixRefl!1623 lt!970505 lt!970502))))

(assert (=> d!795127 (= lt!970502 (list!11953 input!603))))

(assert (=> d!795127 (= lt!970505 (list!11953 input!603))))

(assert (=> d!795127 (rulesValidInductive!1681 thiss!11556 rules!1182)))

(assert (=> d!795127 (= (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 input!603) lt!970503)))

(declare-fun e!1725539 () Bool)

(declare-fun b!2740452 () Bool)

(assert (=> b!2740452 (= e!1725539 (= (list!11953 (_2!18226 (get!9815 lt!970503))) (_2!18229 (get!9816 (maxPrefixZipper!484 thiss!11556 rules!1182 (list!11953 input!603))))))))

(declare-fun b!2740453 () Bool)

(declare-fun e!1725538 () Bool)

(assert (=> b!2740453 (= e!1725538 e!1725539)))

(declare-fun res!1150600 () Bool)

(assert (=> b!2740453 (=> (not res!1150600) (not e!1725539))))

(assert (=> b!2740453 (= res!1150600 (= (_1!18226 (get!9815 lt!970503)) (_1!18229 (get!9816 (maxPrefixZipper!484 thiss!11556 rules!1182 (list!11953 input!603))))))))

(declare-fun call!177292 () Option!6219)

(declare-fun bm!177287 () Bool)

(assert (=> bm!177287 (= call!177292 (maxPrefixOneRuleZipperSequence!493 thiss!11556 (h!36852 rules!1182) input!603))))

(declare-fun b!2740454 () Bool)

(assert (=> b!2740454 (= e!1725541 call!177292)))

(declare-fun b!2740455 () Bool)

(declare-fun e!1725542 () Bool)

(assert (=> b!2740455 (= e!1725543 e!1725542)))

(declare-fun res!1150598 () Bool)

(assert (=> b!2740455 (=> (not res!1150598) (not e!1725542))))

(assert (=> b!2740455 (= res!1150598 (= (_1!18226 (get!9815 lt!970503)) (_1!18229 (get!9816 (maxPrefix!2380 thiss!11556 rules!1182 (list!11953 input!603))))))))

(declare-fun b!2740456 () Bool)

(declare-fun lt!970506 () Option!6219)

(declare-fun lt!970500 () Option!6219)

(assert (=> b!2740456 (= e!1725541 (ite (and ((_ is None!6218) lt!970506) ((_ is None!6218) lt!970500)) None!6218 (ite ((_ is None!6218) lt!970500) lt!970506 (ite ((_ is None!6218) lt!970506) lt!970500 (ite (>= (size!24274 (_1!18226 (v!33108 lt!970506))) (size!24274 (_1!18226 (v!33108 lt!970500)))) lt!970506 lt!970500)))))))

(assert (=> b!2740456 (= lt!970506 call!177292)))

(assert (=> b!2740456 (= lt!970500 (maxPrefixZipperSequence!1057 thiss!11556 (t!227602 rules!1182) input!603))))

(declare-fun b!2740457 () Bool)

(declare-fun res!1150597 () Bool)

(assert (=> b!2740457 (=> (not res!1150597) (not e!1725540))))

(assert (=> b!2740457 (= res!1150597 e!1725538)))

(declare-fun res!1150601 () Bool)

(assert (=> b!2740457 (=> res!1150601 e!1725538)))

(assert (=> b!2740457 (= res!1150601 (not (isDefined!4921 lt!970503)))))

(declare-fun b!2740458 () Bool)

(assert (=> b!2740458 (= e!1725542 (= (list!11953 (_2!18226 (get!9815 lt!970503))) (_2!18229 (get!9816 (maxPrefix!2380 thiss!11556 rules!1182 (list!11953 input!603))))))))

(assert (= (and d!795127 c!444458) b!2740454))

(assert (= (and d!795127 (not c!444458)) b!2740456))

(assert (= (or b!2740454 b!2740456) bm!177287))

(assert (= (and d!795127 res!1150596) b!2740457))

(assert (= (and b!2740457 (not res!1150601)) b!2740453))

(assert (= (and b!2740453 res!1150600) b!2740452))

(assert (= (and b!2740457 res!1150597) b!2740451))

(assert (= (and b!2740451 (not res!1150599)) b!2740455))

(assert (= (and b!2740455 res!1150598) b!2740458))

(assert (=> b!2740458 m!3157173))

(declare-fun m!3158087 () Bool)

(assert (=> b!2740458 m!3158087))

(declare-fun m!3158089 () Bool)

(assert (=> b!2740458 m!3158089))

(declare-fun m!3158091 () Bool)

(assert (=> b!2740458 m!3158091))

(assert (=> b!2740458 m!3157173))

(assert (=> b!2740458 m!3158089))

(declare-fun m!3158093 () Bool)

(assert (=> b!2740458 m!3158093))

(assert (=> b!2740455 m!3158087))

(assert (=> b!2740455 m!3157173))

(assert (=> b!2740455 m!3157173))

(assert (=> b!2740455 m!3158089))

(assert (=> b!2740455 m!3158089))

(assert (=> b!2740455 m!3158091))

(declare-fun m!3158095 () Bool)

(assert (=> bm!177287 m!3158095))

(declare-fun m!3158097 () Bool)

(assert (=> b!2740456 m!3158097))

(declare-fun m!3158099 () Bool)

(assert (=> b!2740457 m!3158099))

(declare-fun m!3158101 () Bool)

(assert (=> b!2740452 m!3158101))

(declare-fun m!3158103 () Bool)

(assert (=> b!2740452 m!3158103))

(assert (=> b!2740452 m!3157173))

(assert (=> b!2740452 m!3157173))

(assert (=> b!2740452 m!3158101))

(assert (=> b!2740452 m!3158087))

(assert (=> b!2740452 m!3158093))

(assert (=> b!2740453 m!3158087))

(assert (=> b!2740453 m!3157173))

(assert (=> b!2740453 m!3157173))

(assert (=> b!2740453 m!3158101))

(assert (=> b!2740453 m!3158101))

(assert (=> b!2740453 m!3158103))

(assert (=> d!795127 m!3157173))

(assert (=> d!795127 m!3158099))

(assert (=> d!795127 m!3158101))

(declare-fun m!3158105 () Bool)

(assert (=> d!795127 m!3158105))

(declare-fun m!3158107 () Bool)

(assert (=> d!795127 m!3158107))

(assert (=> d!795127 m!3157585))

(assert (=> d!795127 m!3157173))

(assert (=> d!795127 m!3158101))

(declare-fun m!3158109 () Bool)

(assert (=> d!795127 m!3158109))

(assert (=> b!2740451 m!3158099))

(assert (=> b!2739961 d!795127))

(declare-fun d!795129 () Bool)

(declare-fun c!444459 () Bool)

(assert (=> d!795129 (= c!444459 ((_ is Node!9853) (c!444339 input!603)))))

(declare-fun e!1725544 () Bool)

(assert (=> d!795129 (= (inv!42753 (c!444339 input!603)) e!1725544)))

(declare-fun b!2740459 () Bool)

(assert (=> b!2740459 (= e!1725544 (inv!42765 (c!444339 input!603)))))

(declare-fun b!2740460 () Bool)

(declare-fun e!1725545 () Bool)

(assert (=> b!2740460 (= e!1725544 e!1725545)))

(declare-fun res!1150602 () Bool)

(assert (=> b!2740460 (= res!1150602 (not ((_ is Leaf!15004) (c!444339 input!603))))))

(assert (=> b!2740460 (=> res!1150602 e!1725545)))

(declare-fun b!2740461 () Bool)

(assert (=> b!2740461 (= e!1725545 (inv!42766 (c!444339 input!603)))))

(assert (= (and d!795129 c!444459) b!2740459))

(assert (= (and d!795129 (not c!444459)) b!2740460))

(assert (= (and b!2740460 (not res!1150602)) b!2740461))

(declare-fun m!3158111 () Bool)

(assert (=> b!2740459 m!3158111))

(declare-fun m!3158113 () Bool)

(assert (=> b!2740461 m!3158113))

(assert (=> b!2739950 d!795129))

(declare-fun d!795131 () Bool)

(declare-fun e!1725548 () Bool)

(assert (=> d!795131 e!1725548))

(declare-fun res!1150605 () Bool)

(assert (=> d!795131 (=> (not res!1150605) (not e!1725548))))

(declare-fun prepend!1155 (Conc!9854 Token!9088) Conc!9854)

(assert (=> d!795131 (= res!1150605 (isBalanced!2999 (prepend!1155 (c!444341 (_1!18225 lt!970171)) (_1!18226 (v!33108 lt!970159)))))))

(declare-fun lt!970509 () BalanceConc!19322)

(assert (=> d!795131 (= lt!970509 (BalanceConc!19323 (prepend!1155 (c!444341 (_1!18225 lt!970171)) (_1!18226 (v!33108 lt!970159)))))))

(assert (=> d!795131 (= (prepend!1153 (_1!18225 lt!970171) (_1!18226 (v!33108 lt!970159))) lt!970509)))

(declare-fun b!2740464 () Bool)

(assert (=> b!2740464 (= e!1725548 (= (list!11952 lt!970509) (Cons!31431 (_1!18226 (v!33108 lt!970159)) (list!11952 (_1!18225 lt!970171)))))))

(assert (= (and d!795131 res!1150605) b!2740464))

(declare-fun m!3158115 () Bool)

(assert (=> d!795131 m!3158115))

(assert (=> d!795131 m!3158115))

(declare-fun m!3158117 () Bool)

(assert (=> d!795131 m!3158117))

(declare-fun m!3158119 () Bool)

(assert (=> b!2740464 m!3158119))

(declare-fun m!3158121 () Bool)

(assert (=> b!2740464 m!3158121))

(assert (=> b!2739951 d!795131))

(declare-fun b!2740465 () Bool)

(declare-fun res!1150607 () Bool)

(declare-fun e!1725552 () Bool)

(assert (=> b!2740465 (=> (not res!1150607) (not e!1725552))))

(declare-fun lt!970512 () tuple2!31186)

(assert (=> b!2740465 (= res!1150607 (= (list!11952 (_1!18225 lt!970512)) (_1!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 (_2!18226 (v!33108 lt!970159)))))))))

(declare-fun b!2740466 () Bool)

(assert (=> b!2740466 (= e!1725552 (= (list!11953 (_2!18225 lt!970512)) (_2!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 (_2!18226 (v!33108 lt!970159)))))))))

(declare-fun b!2740467 () Bool)

(declare-fun e!1725549 () tuple2!31186)

(declare-fun lt!970510 () tuple2!31186)

(declare-fun lt!970511 () Option!6219)

(assert (=> b!2740467 (= e!1725549 (tuple2!31187 (prepend!1153 (_1!18225 lt!970510) (_1!18226 (v!33108 lt!970511))) (_2!18225 lt!970510)))))

(assert (=> b!2740467 (= lt!970510 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970511))))))

(declare-fun d!795133 () Bool)

(assert (=> d!795133 e!1725552))

(declare-fun res!1150606 () Bool)

(assert (=> d!795133 (=> (not res!1150606) (not e!1725552))))

(declare-fun e!1725550 () Bool)

(assert (=> d!795133 (= res!1150606 e!1725550)))

(declare-fun c!444462 () Bool)

(assert (=> d!795133 (= c!444462 (> (size!24279 (_1!18225 lt!970512)) 0))))

(assert (=> d!795133 (= lt!970512 e!1725549)))

(declare-fun c!444461 () Bool)

(assert (=> d!795133 (= c!444461 ((_ is Some!6218) lt!970511))))

(assert (=> d!795133 (= lt!970511 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970159))))))

(assert (=> d!795133 (= (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970159))) lt!970512)))

(declare-fun b!2740468 () Bool)

(assert (=> b!2740468 (= e!1725550 (= (list!11953 (_2!18225 lt!970512)) (list!11953 (_2!18226 (v!33108 lt!970159)))))))

(declare-fun b!2740469 () Bool)

(assert (=> b!2740469 (= e!1725549 (tuple2!31187 (BalanceConc!19323 Empty!9854) (_2!18226 (v!33108 lt!970159))))))

(declare-fun b!2740470 () Bool)

(declare-fun e!1725551 () Bool)

(assert (=> b!2740470 (= e!1725550 e!1725551)))

(declare-fun res!1150608 () Bool)

(assert (=> b!2740470 (= res!1150608 (< (size!24280 (_2!18225 lt!970512)) (size!24280 (_2!18226 (v!33108 lt!970159)))))))

(assert (=> b!2740470 (=> (not res!1150608) (not e!1725551))))

(declare-fun b!2740471 () Bool)

(assert (=> b!2740471 (= e!1725551 (not (isEmpty!17986 (_1!18225 lt!970512))))))

(assert (= (and d!795133 c!444461) b!2740467))

(assert (= (and d!795133 (not c!444461)) b!2740469))

(assert (= (and d!795133 c!444462) b!2740470))

(assert (= (and d!795133 (not c!444462)) b!2740468))

(assert (= (and b!2740470 res!1150608) b!2740471))

(assert (= (and d!795133 res!1150606) b!2740465))

(assert (= (and b!2740465 res!1150607) b!2740466))

(declare-fun m!3158123 () Bool)

(assert (=> b!2740471 m!3158123))

(declare-fun m!3158125 () Bool)

(assert (=> b!2740468 m!3158125))

(declare-fun m!3158127 () Bool)

(assert (=> b!2740468 m!3158127))

(assert (=> b!2740466 m!3158125))

(assert (=> b!2740466 m!3158127))

(assert (=> b!2740466 m!3158127))

(declare-fun m!3158129 () Bool)

(assert (=> b!2740466 m!3158129))

(declare-fun m!3158131 () Bool)

(assert (=> d!795133 m!3158131))

(declare-fun m!3158133 () Bool)

(assert (=> d!795133 m!3158133))

(declare-fun m!3158135 () Bool)

(assert (=> b!2740467 m!3158135))

(declare-fun m!3158137 () Bool)

(assert (=> b!2740467 m!3158137))

(declare-fun m!3158139 () Bool)

(assert (=> b!2740470 m!3158139))

(declare-fun m!3158141 () Bool)

(assert (=> b!2740470 m!3158141))

(declare-fun m!3158143 () Bool)

(assert (=> b!2740465 m!3158143))

(assert (=> b!2740465 m!3158127))

(assert (=> b!2740465 m!3158127))

(assert (=> b!2740465 m!3158129))

(assert (=> b!2739951 d!795133))

(declare-fun d!795135 () Bool)

(declare-fun e!1725553 () Bool)

(assert (=> d!795135 e!1725553))

(declare-fun res!1150609 () Bool)

(assert (=> d!795135 (=> (not res!1150609) (not e!1725553))))

(assert (=> d!795135 (= res!1150609 (isBalanced!2999 (prepend!1155 (c!444341 (_1!18225 lt!970167)) (_1!18226 (v!33108 lt!970154)))))))

(declare-fun lt!970513 () BalanceConc!19322)

(assert (=> d!795135 (= lt!970513 (BalanceConc!19323 (prepend!1155 (c!444341 (_1!18225 lt!970167)) (_1!18226 (v!33108 lt!970154)))))))

(assert (=> d!795135 (= (prepend!1153 (_1!18225 lt!970167) (_1!18226 (v!33108 lt!970154))) lt!970513)))

(declare-fun b!2740472 () Bool)

(assert (=> b!2740472 (= e!1725553 (= (list!11952 lt!970513) (Cons!31431 (_1!18226 (v!33108 lt!970154)) (list!11952 (_1!18225 lt!970167)))))))

(assert (= (and d!795135 res!1150609) b!2740472))

(declare-fun m!3158145 () Bool)

(assert (=> d!795135 m!3158145))

(assert (=> d!795135 m!3158145))

(declare-fun m!3158147 () Bool)

(assert (=> d!795135 m!3158147))

(declare-fun m!3158149 () Bool)

(assert (=> b!2740472 m!3158149))

(assert (=> b!2740472 m!3157133))

(assert (=> b!2739960 d!795135))

(declare-fun d!795137 () Bool)

(assert (=> d!795137 (= (isEmpty!17983 (list!11953 (_2!18225 lt!970148))) ((_ is Nil!31429) (list!11953 (_2!18225 lt!970148))))))

(assert (=> b!2739958 d!795137))

(declare-fun d!795139 () Bool)

(assert (=> d!795139 (= (list!11953 (_2!18225 lt!970148)) (list!11956 (c!444339 (_2!18225 lt!970148))))))

(declare-fun bs!490097 () Bool)

(assert (= bs!490097 d!795139))

(declare-fun m!3158151 () Bool)

(assert (=> bs!490097 m!3158151))

(assert (=> b!2739958 d!795139))

(declare-fun d!795141 () Bool)

(assert (=> d!795141 (= (isEmpty!17984 rules!1182) ((_ is Nil!31432) rules!1182))))

(assert (=> b!2739959 d!795141))

(declare-fun b!2740473 () Bool)

(declare-fun res!1150611 () Bool)

(declare-fun e!1725557 () Bool)

(assert (=> b!2740473 (=> (not res!1150611) (not e!1725557))))

(declare-fun lt!970516 () tuple2!31186)

(assert (=> b!2740473 (= res!1150611 (= (list!11952 (_1!18225 lt!970516)) (_1!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 input!603)))))))

(declare-fun b!2740474 () Bool)

(assert (=> b!2740474 (= e!1725557 (= (list!11953 (_2!18225 lt!970516)) (_2!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 input!603)))))))

(declare-fun b!2740475 () Bool)

(declare-fun e!1725554 () tuple2!31186)

(declare-fun lt!970514 () tuple2!31186)

(declare-fun lt!970515 () Option!6219)

(assert (=> b!2740475 (= e!1725554 (tuple2!31187 (prepend!1153 (_1!18225 lt!970514) (_1!18226 (v!33108 lt!970515))) (_2!18225 lt!970514)))))

(assert (=> b!2740475 (= lt!970514 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970515))))))

(declare-fun d!795143 () Bool)

(assert (=> d!795143 e!1725557))

(declare-fun res!1150610 () Bool)

(assert (=> d!795143 (=> (not res!1150610) (not e!1725557))))

(declare-fun e!1725555 () Bool)

(assert (=> d!795143 (= res!1150610 e!1725555)))

(declare-fun c!444464 () Bool)

(assert (=> d!795143 (= c!444464 (> (size!24279 (_1!18225 lt!970516)) 0))))

(assert (=> d!795143 (= lt!970516 e!1725554)))

(declare-fun c!444463 () Bool)

(assert (=> d!795143 (= c!444463 ((_ is Some!6218) lt!970515))))

(assert (=> d!795143 (= lt!970515 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 input!603))))

(assert (=> d!795143 (= (lexRec!669 thiss!11556 rules!1182 input!603) lt!970516)))

(declare-fun b!2740476 () Bool)

(assert (=> b!2740476 (= e!1725555 (= (list!11953 (_2!18225 lt!970516)) (list!11953 input!603)))))

(declare-fun b!2740477 () Bool)

(assert (=> b!2740477 (= e!1725554 (tuple2!31187 (BalanceConc!19323 Empty!9854) input!603))))

(declare-fun b!2740478 () Bool)

(declare-fun e!1725556 () Bool)

(assert (=> b!2740478 (= e!1725555 e!1725556)))

(declare-fun res!1150612 () Bool)

(assert (=> b!2740478 (= res!1150612 (< (size!24280 (_2!18225 lt!970516)) (size!24280 input!603)))))

(assert (=> b!2740478 (=> (not res!1150612) (not e!1725556))))

(declare-fun b!2740479 () Bool)

(assert (=> b!2740479 (= e!1725556 (not (isEmpty!17986 (_1!18225 lt!970516))))))

(assert (= (and d!795143 c!444463) b!2740475))

(assert (= (and d!795143 (not c!444463)) b!2740477))

(assert (= (and d!795143 c!444464) b!2740478))

(assert (= (and d!795143 (not c!444464)) b!2740476))

(assert (= (and b!2740478 res!1150612) b!2740479))

(assert (= (and d!795143 res!1150610) b!2740473))

(assert (= (and b!2740473 res!1150611) b!2740474))

(declare-fun m!3158153 () Bool)

(assert (=> b!2740479 m!3158153))

(declare-fun m!3158155 () Bool)

(assert (=> b!2740476 m!3158155))

(assert (=> b!2740476 m!3157173))

(assert (=> b!2740474 m!3158155))

(assert (=> b!2740474 m!3157173))

(assert (=> b!2740474 m!3157173))

(declare-fun m!3158157 () Bool)

(assert (=> b!2740474 m!3158157))

(declare-fun m!3158159 () Bool)

(assert (=> d!795143 m!3158159))

(assert (=> d!795143 m!3157157))

(declare-fun m!3158161 () Bool)

(assert (=> b!2740475 m!3158161))

(declare-fun m!3158163 () Bool)

(assert (=> b!2740475 m!3158163))

(declare-fun m!3158165 () Bool)

(assert (=> b!2740478 m!3158165))

(declare-fun m!3158167 () Bool)

(assert (=> b!2740478 m!3158167))

(declare-fun m!3158169 () Bool)

(assert (=> b!2740473 m!3158169))

(assert (=> b!2740473 m!3157173))

(assert (=> b!2740473 m!3157173))

(assert (=> b!2740473 m!3158157))

(assert (=> b!2739948 d!795143))

(declare-fun b!2740480 () Bool)

(declare-fun res!1150614 () Bool)

(declare-fun e!1725561 () Bool)

(assert (=> b!2740480 (=> (not res!1150614) (not e!1725561))))

(declare-fun lt!970519 () tuple2!31186)

(assert (=> b!2740480 (= res!1150614 (= (list!11952 (_1!18225 lt!970519)) (_1!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 totalInput!328)))))))

(declare-fun b!2740481 () Bool)

(assert (=> b!2740481 (= e!1725561 (= (list!11953 (_2!18225 lt!970519)) (_2!18227 (lexList!1238 thiss!11556 rules!1182 (list!11953 totalInput!328)))))))

(declare-fun b!2740482 () Bool)

(declare-fun e!1725558 () tuple2!31186)

(declare-fun lt!970517 () tuple2!31186)

(declare-fun lt!970518 () Option!6219)

(assert (=> b!2740482 (= e!1725558 (tuple2!31187 (prepend!1153 (_1!18225 lt!970517) (_1!18226 (v!33108 lt!970518))) (_2!18225 lt!970517)))))

(assert (=> b!2740482 (= lt!970517 (lexRec!669 thiss!11556 rules!1182 (_2!18226 (v!33108 lt!970518))))))

(declare-fun d!795145 () Bool)

(assert (=> d!795145 e!1725561))

(declare-fun res!1150613 () Bool)

(assert (=> d!795145 (=> (not res!1150613) (not e!1725561))))

(declare-fun e!1725559 () Bool)

(assert (=> d!795145 (= res!1150613 e!1725559)))

(declare-fun c!444466 () Bool)

(assert (=> d!795145 (= c!444466 (> (size!24279 (_1!18225 lt!970519)) 0))))

(assert (=> d!795145 (= lt!970519 e!1725558)))

(declare-fun c!444465 () Bool)

(assert (=> d!795145 (= c!444465 ((_ is Some!6218) lt!970518))))

(assert (=> d!795145 (= lt!970518 (maxPrefixZipperSequence!1057 thiss!11556 rules!1182 totalInput!328))))

(assert (=> d!795145 (= (lexRec!669 thiss!11556 rules!1182 totalInput!328) lt!970519)))

(declare-fun b!2740483 () Bool)

(assert (=> b!2740483 (= e!1725559 (= (list!11953 (_2!18225 lt!970519)) (list!11953 totalInput!328)))))

(declare-fun b!2740484 () Bool)

(assert (=> b!2740484 (= e!1725558 (tuple2!31187 (BalanceConc!19323 Empty!9854) totalInput!328))))

(declare-fun b!2740485 () Bool)

(declare-fun e!1725560 () Bool)

(assert (=> b!2740485 (= e!1725559 e!1725560)))

(declare-fun res!1150615 () Bool)

(assert (=> b!2740485 (= res!1150615 (< (size!24280 (_2!18225 lt!970519)) (size!24280 totalInput!328)))))

(assert (=> b!2740485 (=> (not res!1150615) (not e!1725560))))

(declare-fun b!2740486 () Bool)

(assert (=> b!2740486 (= e!1725560 (not (isEmpty!17986 (_1!18225 lt!970519))))))

(assert (= (and d!795145 c!444465) b!2740482))

(assert (= (and d!795145 (not c!444465)) b!2740484))

(assert (= (and d!795145 c!444466) b!2740485))

(assert (= (and d!795145 (not c!444466)) b!2740483))

(assert (= (and b!2740485 res!1150615) b!2740486))

(assert (= (and d!795145 res!1150613) b!2740480))

(assert (= (and b!2740480 res!1150614) b!2740481))

(declare-fun m!3158171 () Bool)

(assert (=> b!2740486 m!3158171))

(declare-fun m!3158173 () Bool)

(assert (=> b!2740483 m!3158173))

(assert (=> b!2740483 m!3157171))

(assert (=> b!2740481 m!3158173))

(assert (=> b!2740481 m!3157171))

(assert (=> b!2740481 m!3157171))

(declare-fun m!3158175 () Bool)

(assert (=> b!2740481 m!3158175))

(declare-fun m!3158177 () Bool)

(assert (=> d!795145 m!3158177))

(declare-fun m!3158179 () Bool)

(assert (=> d!795145 m!3158179))

(declare-fun m!3158181 () Bool)

(assert (=> b!2740482 m!3158181))

(declare-fun m!3158183 () Bool)

(assert (=> b!2740482 m!3158183))

(declare-fun m!3158185 () Bool)

(assert (=> b!2740485 m!3158185))

(declare-fun m!3158187 () Bool)

(assert (=> b!2740485 m!3158187))

(declare-fun m!3158189 () Bool)

(assert (=> b!2740480 m!3158189))

(assert (=> b!2740480 m!3157171))

(assert (=> b!2740480 m!3157171))

(assert (=> b!2740480 m!3158175))

(assert (=> b!2739948 d!795145))

(declare-fun b!2740496 () Bool)

(declare-fun res!1150627 () Bool)

(declare-fun e!1725564 () Bool)

(assert (=> b!2740496 (=> (not res!1150627) (not e!1725564))))

(declare-fun height!1478 (Conc!9854) Int)

(declare-fun ++!7869 (Conc!9854 Conc!9854) Conc!9854)

(assert (=> b!2740496 (= res!1150627 (<= (height!1478 (++!7869 (c!444341 acc!331) (c!444341 (_1!18225 lt!970170)))) (+ (max!0 (height!1478 (c!444341 acc!331)) (height!1478 (c!444341 (_1!18225 lt!970170)))) 1)))))

(declare-fun lt!970522 () BalanceConc!19322)

(declare-fun b!2740498 () Bool)

(assert (=> b!2740498 (= e!1725564 (= (list!11952 lt!970522) (++!7864 (list!11952 acc!331) (list!11952 (_1!18225 lt!970170)))))))

(declare-fun d!795147 () Bool)

(assert (=> d!795147 e!1725564))

(declare-fun res!1150624 () Bool)

(assert (=> d!795147 (=> (not res!1150624) (not e!1725564))))

(declare-fun appendAssocInst!707 (Conc!9854 Conc!9854) Bool)

(assert (=> d!795147 (= res!1150624 (appendAssocInst!707 (c!444341 acc!331) (c!444341 (_1!18225 lt!970170))))))

(assert (=> d!795147 (= lt!970522 (BalanceConc!19323 (++!7869 (c!444341 acc!331) (c!444341 (_1!18225 lt!970170)))))))

(assert (=> d!795147 (= (++!7862 acc!331 (_1!18225 lt!970170)) lt!970522)))

(declare-fun b!2740497 () Bool)

(declare-fun res!1150626 () Bool)

(assert (=> b!2740497 (=> (not res!1150626) (not e!1725564))))

(assert (=> b!2740497 (= res!1150626 (>= (height!1478 (++!7869 (c!444341 acc!331) (c!444341 (_1!18225 lt!970170)))) (max!0 (height!1478 (c!444341 acc!331)) (height!1478 (c!444341 (_1!18225 lt!970170))))))))

(declare-fun b!2740495 () Bool)

(declare-fun res!1150625 () Bool)

(assert (=> b!2740495 (=> (not res!1150625) (not e!1725564))))

(assert (=> b!2740495 (= res!1150625 (isBalanced!2999 (++!7869 (c!444341 acc!331) (c!444341 (_1!18225 lt!970170)))))))

(assert (= (and d!795147 res!1150624) b!2740495))

(assert (= (and b!2740495 res!1150625) b!2740496))

(assert (= (and b!2740496 res!1150627) b!2740497))

(assert (= (and b!2740497 res!1150626) b!2740498))

(declare-fun m!3158191 () Bool)

(assert (=> b!2740496 m!3158191))

(declare-fun m!3158193 () Bool)

(assert (=> b!2740496 m!3158193))

(declare-fun m!3158195 () Bool)

(assert (=> b!2740496 m!3158195))

(assert (=> b!2740496 m!3158193))

(assert (=> b!2740496 m!3158195))

(declare-fun m!3158197 () Bool)

(assert (=> b!2740496 m!3158197))

(assert (=> b!2740496 m!3158191))

(declare-fun m!3158199 () Bool)

(assert (=> b!2740496 m!3158199))

(assert (=> b!2740495 m!3158191))

(assert (=> b!2740495 m!3158191))

(declare-fun m!3158201 () Bool)

(assert (=> b!2740495 m!3158201))

(assert (=> b!2740497 m!3158191))

(assert (=> b!2740497 m!3158193))

(assert (=> b!2740497 m!3158195))

(assert (=> b!2740497 m!3158193))

(assert (=> b!2740497 m!3158195))

(assert (=> b!2740497 m!3158197))

(assert (=> b!2740497 m!3158191))

(assert (=> b!2740497 m!3158199))

(declare-fun m!3158203 () Bool)

(assert (=> d!795147 m!3158203))

(assert (=> d!795147 m!3158191))

(declare-fun m!3158205 () Bool)

(assert (=> b!2740498 m!3158205))

(assert (=> b!2740498 m!3157191))

(declare-fun m!3158207 () Bool)

(assert (=> b!2740498 m!3158207))

(assert (=> b!2740498 m!3157191))

(assert (=> b!2740498 m!3158207))

(declare-fun m!3158209 () Bool)

(assert (=> b!2740498 m!3158209))

(assert (=> b!2739948 d!795147))

(declare-fun d!795149 () Bool)

(assert (=> d!795149 (= (list!11952 (_1!18225 lt!970160)) (list!11957 (c!444341 (_1!18225 lt!970160))))))

(declare-fun bs!490098 () Bool)

(assert (= bs!490098 d!795149))

(declare-fun m!3158211 () Bool)

(assert (=> bs!490098 m!3158211))

(assert (=> b!2739948 d!795149))

(declare-fun d!795151 () Bool)

(assert (=> d!795151 (= (list!11952 lt!970161) (list!11957 (c!444341 lt!970161)))))

(declare-fun bs!490099 () Bool)

(assert (= bs!490099 d!795151))

(declare-fun m!3158213 () Bool)

(assert (=> bs!490099 m!3158213))

(assert (=> b!2739948 d!795151))

(declare-fun tp!861322 () Bool)

(declare-fun e!1725569 () Bool)

(declare-fun tp!861323 () Bool)

(declare-fun b!2740507 () Bool)

(assert (=> b!2740507 (= e!1725569 (and (inv!42754 (left!24166 (c!444341 acc!331))) tp!861323 (inv!42754 (right!24496 (c!444341 acc!331))) tp!861322))))

(declare-fun b!2740509 () Bool)

(declare-fun e!1725570 () Bool)

(declare-fun tp!861321 () Bool)

(assert (=> b!2740509 (= e!1725570 tp!861321)))

(declare-fun b!2740508 () Bool)

(declare-fun inv!42768 (IArray!19713) Bool)

(assert (=> b!2740508 (= e!1725569 (and (inv!42768 (xs!12957 (c!444341 acc!331))) e!1725570))))

(assert (=> b!2739945 (= tp!861254 (and (inv!42754 (c!444341 acc!331)) e!1725569))))

(assert (= (and b!2739945 ((_ is Node!9854) (c!444341 acc!331))) b!2740507))

(assert (= b!2740508 b!2740509))

(assert (= (and b!2739945 ((_ is Leaf!15005) (c!444341 acc!331))) b!2740508))

(declare-fun m!3158215 () Bool)

(assert (=> b!2740507 m!3158215))

(declare-fun m!3158217 () Bool)

(assert (=> b!2740507 m!3158217))

(declare-fun m!3158219 () Bool)

(assert (=> b!2740508 m!3158219))

(assert (=> b!2739945 m!3157159))

(declare-fun tp!861330 () Bool)

(declare-fun tp!861331 () Bool)

(declare-fun b!2740518 () Bool)

(declare-fun e!1725575 () Bool)

(assert (=> b!2740518 (= e!1725575 (and (inv!42753 (left!24165 (c!444339 input!603))) tp!861330 (inv!42753 (right!24495 (c!444339 input!603))) tp!861331))))

(declare-fun b!2740520 () Bool)

(declare-fun e!1725576 () Bool)

(declare-fun tp!861332 () Bool)

(assert (=> b!2740520 (= e!1725576 tp!861332)))

(declare-fun b!2740519 () Bool)

(declare-fun inv!42769 (IArray!19711) Bool)

(assert (=> b!2740519 (= e!1725575 (and (inv!42769 (xs!12956 (c!444339 input!603))) e!1725576))))

(assert (=> b!2739950 (= tp!861255 (and (inv!42753 (c!444339 input!603)) e!1725575))))

(assert (= (and b!2739950 ((_ is Node!9853) (c!444339 input!603))) b!2740518))

(assert (= b!2740519 b!2740520))

(assert (= (and b!2739950 ((_ is Leaf!15004) (c!444339 input!603))) b!2740519))

(declare-fun m!3158221 () Bool)

(assert (=> b!2740518 m!3158221))

(declare-fun m!3158223 () Bool)

(assert (=> b!2740518 m!3158223))

(declare-fun m!3158225 () Bool)

(assert (=> b!2740519 m!3158225))

(assert (=> b!2739950 m!3157199))

(declare-fun b!2740531 () Bool)

(declare-fun b_free!76881 () Bool)

(declare-fun b_next!77585 () Bool)

(assert (=> b!2740531 (= b_free!76881 (not b_next!77585))))

(declare-fun tp!861344 () Bool)

(declare-fun b_and!201601 () Bool)

(assert (=> b!2740531 (= tp!861344 b_and!201601)))

(declare-fun b_free!76883 () Bool)

(declare-fun b_next!77587 () Bool)

(assert (=> b!2740531 (= b_free!76883 (not b_next!77587))))

(declare-fun tb!152963 () Bool)

(declare-fun t!227611 () Bool)

(assert (=> (and b!2740531 (= (toChars!6666 (transformation!4813 (h!36852 (t!227602 rules!1182)))) (toChars!6666 (transformation!4813 (rule!7261 (_1!18226 (v!33108 lt!970154)))))) t!227611) tb!152963))

(declare-fun result!188902 () Bool)

(assert (= result!188902 result!188892))

(assert (=> d!795095 t!227611))

(declare-fun tp!861343 () Bool)

(declare-fun b_and!201603 () Bool)

(assert (=> b!2740531 (= tp!861343 (and (=> t!227611 result!188902) b_and!201603))))

(declare-fun e!1725588 () Bool)

(assert (=> b!2740531 (= e!1725588 (and tp!861344 tp!861343))))

(declare-fun e!1725585 () Bool)

(declare-fun b!2740530 () Bool)

(declare-fun tp!861341 () Bool)

(assert (=> b!2740530 (= e!1725585 (and tp!861341 (inv!42747 (tag!5317 (h!36852 (t!227602 rules!1182)))) (inv!42755 (transformation!4813 (h!36852 (t!227602 rules!1182)))) e!1725588))))

(declare-fun b!2740529 () Bool)

(declare-fun e!1725586 () Bool)

(declare-fun tp!861342 () Bool)

(assert (=> b!2740529 (= e!1725586 (and e!1725585 tp!861342))))

(assert (=> b!2739949 (= tp!861257 e!1725586)))

(assert (= b!2740530 b!2740531))

(assert (= b!2740529 b!2740530))

(assert (= (and b!2739949 ((_ is Cons!31432) (t!227602 rules!1182))) b!2740529))

(declare-fun m!3158227 () Bool)

(assert (=> b!2740530 m!3158227))

(declare-fun m!3158229 () Bool)

(assert (=> b!2740530 m!3158229))

(declare-fun b!2740545 () Bool)

(declare-fun e!1725591 () Bool)

(declare-fun tp!861359 () Bool)

(declare-fun tp!861357 () Bool)

(assert (=> b!2740545 (= e!1725591 (and tp!861359 tp!861357))))

(declare-fun b!2740544 () Bool)

(declare-fun tp!861355 () Bool)

(assert (=> b!2740544 (= e!1725591 tp!861355)))

(declare-fun b!2740543 () Bool)

(declare-fun tp!861356 () Bool)

(declare-fun tp!861358 () Bool)

(assert (=> b!2740543 (= e!1725591 (and tp!861356 tp!861358))))

(declare-fun b!2740542 () Bool)

(declare-fun tp_is_empty!13909 () Bool)

(assert (=> b!2740542 (= e!1725591 tp_is_empty!13909)))

(assert (=> b!2739954 (= tp!861250 e!1725591)))

(assert (= (and b!2739954 ((_ is ElementMatch!7965) (regex!4813 (h!36852 rules!1182)))) b!2740542))

(assert (= (and b!2739954 ((_ is Concat!13001) (regex!4813 (h!36852 rules!1182)))) b!2740543))

(assert (= (and b!2739954 ((_ is Star!7965) (regex!4813 (h!36852 rules!1182)))) b!2740544))

(assert (= (and b!2739954 ((_ is Union!7965) (regex!4813 (h!36852 rules!1182)))) b!2740545))

(declare-fun tp!861361 () Bool)

(declare-fun tp!861360 () Bool)

(declare-fun e!1725592 () Bool)

(declare-fun b!2740546 () Bool)

(assert (=> b!2740546 (= e!1725592 (and (inv!42753 (left!24165 (c!444339 totalInput!328))) tp!861360 (inv!42753 (right!24495 (c!444339 totalInput!328))) tp!861361))))

(declare-fun b!2740548 () Bool)

(declare-fun e!1725593 () Bool)

(declare-fun tp!861362 () Bool)

(assert (=> b!2740548 (= e!1725593 tp!861362)))

(declare-fun b!2740547 () Bool)

(assert (=> b!2740547 (= e!1725592 (and (inv!42769 (xs!12956 (c!444339 totalInput!328))) e!1725593))))

(assert (=> b!2739953 (= tp!861256 (and (inv!42753 (c!444339 totalInput!328)) e!1725592))))

(assert (= (and b!2739953 ((_ is Node!9853) (c!444339 totalInput!328))) b!2740546))

(assert (= b!2740547 b!2740548))

(assert (= (and b!2739953 ((_ is Leaf!15004) (c!444339 totalInput!328))) b!2740547))

(declare-fun m!3158231 () Bool)

(assert (=> b!2740546 m!3158231))

(declare-fun m!3158233 () Bool)

(assert (=> b!2740546 m!3158233))

(declare-fun m!3158235 () Bool)

(assert (=> b!2740547 m!3158235))

(assert (=> b!2739953 m!3157201))

(declare-fun tp!861363 () Bool)

(declare-fun tp!861364 () Bool)

(declare-fun b!2740549 () Bool)

(declare-fun e!1725594 () Bool)

(assert (=> b!2740549 (= e!1725594 (and (inv!42753 (left!24165 (c!444339 treated!9))) tp!861363 (inv!42753 (right!24495 (c!444339 treated!9))) tp!861364))))

(declare-fun b!2740551 () Bool)

(declare-fun e!1725595 () Bool)

(declare-fun tp!861365 () Bool)

(assert (=> b!2740551 (= e!1725595 tp!861365)))

(declare-fun b!2740550 () Bool)

(assert (=> b!2740550 (= e!1725594 (and (inv!42769 (xs!12956 (c!444339 treated!9))) e!1725595))))

(assert (=> b!2739942 (= tp!861253 (and (inv!42753 (c!444339 treated!9)) e!1725594))))

(assert (= (and b!2739942 ((_ is Node!9853) (c!444339 treated!9))) b!2740549))

(assert (= b!2740550 b!2740551))

(assert (= (and b!2739942 ((_ is Leaf!15004) (c!444339 treated!9))) b!2740550))

(declare-fun m!3158237 () Bool)

(assert (=> b!2740549 m!3158237))

(declare-fun m!3158239 () Bool)

(assert (=> b!2740549 m!3158239))

(declare-fun m!3158241 () Bool)

(assert (=> b!2740550 m!3158241))

(assert (=> b!2739942 m!3157165))

(check-sat (not d!794935) (not b!2740451) (not d!795151) (not b!2740192) (not d!794931) (not d!795139) (not b!2740473) (not b!2740140) (not b!2740151) (not b!2740186) (not b!2740250) (not bm!177286) (not b!2740481) (not b!2740447) (not d!795149) (not d!795125) (not d!795023) (not d!795117) (not b!2740190) (not d!795017) (not b!2740234) (not b!2740435) (not b!2740428) (not d!795025) (not b!2740203) (not b!2740139) (not b!2739982) (not b!2740453) (not b_next!77587) (not b!2740452) (not bm!177287) (not b!2740129) (not b!2740231) (not d!795135) (not b!2740548) (not b!2740467) (not b!2740152) (not b!2739971) (not b!2740202) (not b!2740529) (not b!2740545) (not d!795029) (not b!2740546) (not d!795037) (not b!2740423) (not b!2740239) (not b!2740185) (not d!795001) (not d!795097) (not b!2740434) (not d!794933) (not d!795109) (not b!2740298) (not d!795033) (not d!795121) (not d!794991) (not b!2740543) (not b!2740307) (not d!795131) (not b!2740450) (not d!795035) (not b!2740247) (not b!2740508) (not b!2740475) (not d!795055) (not d!795145) (not b!2740297) (not b!2740478) (not b!2740551) (not d!794941) (not b!2740240) (not b!2740466) (not b!2740530) (not d!795003) (not b!2740233) (not b!2740412) (not b!2740474) (not d!795015) b_and!201601 (not d!795123) (not b!2740251) b_and!201603 (not b_next!77579) (not b!2740495) (not b!2740243) (not b!2740236) (not b_next!77577) (not b!2740550) (not d!795095) (not d!795127) (not b!2740497) b_and!201599 (not d!795105) (not b!2740413) (not b!2740424) (not b!2740479) (not b!2740242) (not b_next!77585) tp_is_empty!13909 (not b!2740445) (not b!2740237) (not b!2740465) (not b!2740468) (not d!794997) (not d!795041) (not d!795107) (not d!795019) (not b!2740132) (not b!2739980) (not b!2740191) (not b!2740544) (not b!2740306) (not b!2740189) (not b!2740126) (not b!2739950) (not d!795031) (not b!2740485) (not b!2740128) (not b!2740520) (not b!2740414) (not b!2740482) (not b!2740232) (not b!2740480) (not b!2740416) (not b!2740549) (not d!795111) (not d!795143) b_and!201589 (not b!2740432) (not b!2740235) (not b!2740471) (not b!2740246) (not b!2740127) (not d!794929) (not b!2740430) (not b!2740296) (not b!2740455) (not b!2740486) (not b!2740496) (not b!2740472) (not d!795119) (not b!2739942) (not b!2740442) (not b!2740457) (not b!2740230) (not b!2740476) (not b!2740470) (not b!2740131) (not d!795059) (not d!795147) (not b!2739953) (not d!795133) (not d!795101) (not b!2740431) (not b!2740444) (not b!2740519) (not b!2740547) (not b!2740464) (not b!2740461) (not d!795103) (not b!2740429) (not d!795021) (not b!2740458) (not b!2740509) (not d!795039) (not b!2740498) (not b!2740518) (not d!794937) (not tb!152961) (not d!795007) (not b!2740483) (not d!795027) (not b!2740187) (not b!2740421) (not b_lambda!82917) (not b!2739945) (not b!2740207) (not d!795005) (not b!2740507) (not b!2740456) (not b!2740459) (not b!2739972))
(check-sat (not b_next!77587) (not b_next!77585) b_and!201589 b_and!201601 b_and!201603 (not b_next!77579) (not b_next!77577) b_and!201599)
