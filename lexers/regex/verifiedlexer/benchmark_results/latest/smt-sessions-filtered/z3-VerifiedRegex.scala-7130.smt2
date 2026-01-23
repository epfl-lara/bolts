; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378424 () Bool)

(assert start!378424)

(declare-fun b!4017796 () Bool)

(declare-fun b_free!111761 () Bool)

(declare-fun b_next!112465 () Bool)

(assert (=> b!4017796 (= b_free!111761 (not b_next!112465))))

(declare-fun tp!1221504 () Bool)

(declare-fun b_and!308663 () Bool)

(assert (=> b!4017796 (= tp!1221504 b_and!308663)))

(declare-fun b_free!111763 () Bool)

(declare-fun b_next!112467 () Bool)

(assert (=> b!4017796 (= b_free!111763 (not b_next!112467))))

(declare-fun tp!1221505 () Bool)

(declare-fun b_and!308665 () Bool)

(assert (=> b!4017796 (= tp!1221505 b_and!308665)))

(declare-fun b!4017792 () Bool)

(declare-fun b_free!111765 () Bool)

(declare-fun b_next!112469 () Bool)

(assert (=> b!4017792 (= b_free!111765 (not b_next!112469))))

(declare-fun tp!1221500 () Bool)

(declare-fun b_and!308667 () Bool)

(assert (=> b!4017792 (= tp!1221500 b_and!308667)))

(declare-fun b_free!111767 () Bool)

(declare-fun b_next!112471 () Bool)

(assert (=> b!4017792 (= b_free!111767 (not b_next!112471))))

(declare-fun tp!1221501 () Bool)

(declare-fun b_and!308669 () Bool)

(assert (=> b!4017792 (= tp!1221501 b_and!308669)))

(declare-fun b!4017791 () Bool)

(declare-fun e!2492044 () Bool)

(declare-fun tp_is_empty!20477 () Bool)

(declare-fun tp!1221499 () Bool)

(assert (=> b!4017791 (= e!2492044 (and tp_is_empty!20477 tp!1221499))))

(declare-fun e!2492051 () Bool)

(assert (=> b!4017792 (= e!2492051 (and tp!1221500 tp!1221501))))

(declare-fun b!4017793 () Bool)

(declare-fun e!2492031 () Bool)

(declare-fun tp!1221508 () Bool)

(assert (=> b!4017793 (= e!2492031 (and tp_is_empty!20477 tp!1221508))))

(declare-fun b!4017794 () Bool)

(declare-fun res!1634324 () Bool)

(declare-fun e!2492025 () Bool)

(assert (=> b!4017794 (=> (not res!1634324) (not e!2492025))))

(declare-datatypes ((C!23692 0))(
  ( (C!23693 (val!13940 Int)) )
))
(declare-datatypes ((List!43118 0))(
  ( (Nil!42994) (Cons!42994 (h!48414 C!23692) (t!333451 List!43118)) )
))
(declare-datatypes ((IArray!26123 0))(
  ( (IArray!26124 (innerList!13119 List!43118)) )
))
(declare-datatypes ((Conc!13059 0))(
  ( (Node!13059 (left!32417 Conc!13059) (right!32747 Conc!13059) (csize!26348 Int) (cheight!13270 Int)) (Leaf!20190 (xs!16365 IArray!26123) (csize!26349 Int)) (Empty!13059) )
))
(declare-datatypes ((BalanceConc!25712 0))(
  ( (BalanceConc!25713 (c!694432 Conc!13059)) )
))
(declare-datatypes ((String!49107 0))(
  ( (String!49108 (value!215776 String)) )
))
(declare-datatypes ((List!43119 0))(
  ( (Nil!42995) (Cons!42995 (h!48415 (_ BitVec 16)) (t!333452 List!43119)) )
))
(declare-datatypes ((TokenValue!7078 0))(
  ( (FloatLiteralValue!14156 (text!49991 List!43119)) (TokenValueExt!7077 (__x!26373 Int)) (Broken!35390 (value!215777 List!43119)) (Object!7201) (End!7078) (Def!7078) (Underscore!7078) (Match!7078) (Else!7078) (Error!7078) (Case!7078) (If!7078) (Extends!7078) (Abstract!7078) (Class!7078) (Val!7078) (DelimiterValue!14156 (del!7138 List!43119)) (KeywordValue!7084 (value!215778 List!43119)) (CommentValue!14156 (value!215779 List!43119)) (WhitespaceValue!14156 (value!215780 List!43119)) (IndentationValue!7078 (value!215781 List!43119)) (String!49109) (Int32!7078) (Broken!35391 (value!215782 List!43119)) (Boolean!7079) (Unit!62061) (OperatorValue!7081 (op!7138 List!43119)) (IdentifierValue!14156 (value!215783 List!43119)) (IdentifierValue!14157 (value!215784 List!43119)) (WhitespaceValue!14157 (value!215785 List!43119)) (True!14156) (False!14156) (Broken!35392 (value!215786 List!43119)) (Broken!35393 (value!215787 List!43119)) (True!14157) (RightBrace!7078) (RightBracket!7078) (Colon!7078) (Null!7078) (Comma!7078) (LeftBracket!7078) (False!14157) (LeftBrace!7078) (ImaginaryLiteralValue!7078 (text!49992 List!43119)) (StringLiteralValue!21234 (value!215788 List!43119)) (EOFValue!7078 (value!215789 List!43119)) (IdentValue!7078 (value!215790 List!43119)) (DelimiterValue!14157 (value!215791 List!43119)) (DedentValue!7078 (value!215792 List!43119)) (NewLineValue!7078 (value!215793 List!43119)) (IntegerValue!21234 (value!215794 (_ BitVec 32)) (text!49993 List!43119)) (IntegerValue!21235 (value!215795 Int) (text!49994 List!43119)) (Times!7078) (Or!7078) (Equal!7078) (Minus!7078) (Broken!35394 (value!215796 List!43119)) (And!7078) (Div!7078) (LessEqual!7078) (Mod!7078) (Concat!18831) (Not!7078) (Plus!7078) (SpaceValue!7078 (value!215797 List!43119)) (IntegerValue!21236 (value!215798 Int) (text!49995 List!43119)) (StringLiteralValue!21235 (text!49996 List!43119)) (FloatLiteralValue!14157 (text!49997 List!43119)) (BytesLiteralValue!7078 (value!215799 List!43119)) (CommentValue!14157 (value!215800 List!43119)) (StringLiteralValue!21236 (value!215801 List!43119)) (ErrorTokenValue!7078 (msg!7139 List!43119)) )
))
(declare-datatypes ((Regex!11753 0))(
  ( (ElementMatch!11753 (c!694433 C!23692)) (Concat!18832 (regOne!24018 Regex!11753) (regTwo!24018 Regex!11753)) (EmptyExpr!11753) (Star!11753 (reg!12082 Regex!11753)) (EmptyLang!11753) (Union!11753 (regOne!24019 Regex!11753) (regTwo!24019 Regex!11753)) )
))
(declare-datatypes ((TokenValueInjection!13584 0))(
  ( (TokenValueInjection!13585 (toValue!9356 Int) (toChars!9215 Int)) )
))
(declare-datatypes ((Rule!13496 0))(
  ( (Rule!13497 (regex!6848 Regex!11753) (tag!7708 String!49107) (isSeparator!6848 Bool) (transformation!6848 TokenValueInjection!13584)) )
))
(declare-datatypes ((List!43120 0))(
  ( (Nil!42996) (Cons!42996 (h!48416 Rule!13496) (t!333453 List!43120)) )
))
(declare-fun rules!2999 () List!43120)

(declare-fun isEmpty!25680 (List!43120) Bool)

(assert (=> b!4017794 (= res!1634324 (not (isEmpty!25680 rules!2999)))))

(declare-fun b!4017795 () Bool)

(declare-fun e!2492045 () Bool)

(declare-fun e!2492028 () Bool)

(assert (=> b!4017795 (= e!2492045 e!2492028)))

(declare-fun res!1634309 () Bool)

(assert (=> b!4017795 (=> res!1634309 e!2492028)))

(declare-datatypes ((Token!12834 0))(
  ( (Token!12835 (value!215802 TokenValue!7078) (rule!9900 Rule!13496) (size!32147 Int) (originalCharacters!7448 List!43118)) )
))
(declare-fun token!484 () Token!12834)

(declare-fun lt!1425024 () List!43118)

(declare-fun matchR!5714 (Regex!11753 List!43118) Bool)

(assert (=> b!4017795 (= res!1634309 (not (matchR!5714 (regex!6848 (rule!9900 token!484)) lt!1425024)))))

(declare-fun lt!1424994 () List!43118)

(declare-fun isPrefix!3935 (List!43118 List!43118) Bool)

(assert (=> b!4017795 (isPrefix!3935 lt!1425024 lt!1424994)))

(declare-fun prefix!494 () List!43118)

(declare-fun newSuffix!27 () List!43118)

(declare-datatypes ((Unit!62062 0))(
  ( (Unit!62063) )
))
(declare-fun lt!1425013 () Unit!62062)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!748 (List!43118 List!43118 List!43118) Unit!62062)

(assert (=> b!4017795 (= lt!1425013 (lemmaPrefixStaysPrefixWhenAddingToSuffix!748 lt!1425024 prefix!494 newSuffix!27))))

(declare-fun lt!1425043 () Unit!62062)

(declare-fun suffix!1299 () List!43118)

(assert (=> b!4017795 (= lt!1425043 (lemmaPrefixStaysPrefixWhenAddingToSuffix!748 lt!1425024 prefix!494 suffix!1299))))

(declare-fun e!2492032 () Bool)

(assert (=> b!4017796 (= e!2492032 (and tp!1221504 tp!1221505))))

(declare-fun b!4017797 () Bool)

(declare-fun e!2492039 () Bool)

(declare-fun e!2492052 () Bool)

(assert (=> b!4017797 (= e!2492039 e!2492052)))

(declare-fun res!1634302 () Bool)

(assert (=> b!4017797 (=> (not res!1634302) (not e!2492052))))

(declare-fun lt!1425032 () List!43118)

(assert (=> b!4017797 (= res!1634302 (= lt!1425032 lt!1424994))))

(declare-fun ++!11250 (List!43118 List!43118) List!43118)

(assert (=> b!4017797 (= lt!1424994 (++!11250 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43118)

(assert (=> b!4017797 (= lt!1425032 (++!11250 lt!1425024 newSuffixResult!27))))

(declare-fun b!4017798 () Bool)

(declare-fun res!1634314 () Bool)

(assert (=> b!4017798 (=> (not res!1634314) (not e!2492025))))

(declare-datatypes ((LexerInterface!6437 0))(
  ( (LexerInterfaceExt!6434 (__x!26374 Int)) (Lexer!6435) )
))
(declare-fun thiss!21717 () LexerInterface!6437)

(declare-fun rulesInvariant!5780 (LexerInterface!6437 List!43120) Bool)

(assert (=> b!4017798 (= res!1634314 (rulesInvariant!5780 thiss!21717 rules!2999))))

(declare-fun b!4017799 () Bool)

(declare-fun e!2492046 () Bool)

(assert (=> b!4017799 (= e!2492052 e!2492046)))

(declare-fun res!1634304 () Bool)

(assert (=> b!4017799 (=> (not res!1634304) (not e!2492046))))

(declare-fun lt!1425008 () List!43118)

(declare-datatypes ((tuple2!42134 0))(
  ( (tuple2!42135 (_1!24201 Token!12834) (_2!24201 List!43118)) )
))
(declare-datatypes ((Option!9262 0))(
  ( (None!9261) (Some!9261 (v!39635 tuple2!42134)) )
))
(declare-fun lt!1424996 () Option!9262)

(declare-fun maxPrefix!3735 (LexerInterface!6437 List!43120 List!43118) Option!9262)

(assert (=> b!4017799 (= res!1634304 (= (maxPrefix!3735 thiss!21717 rules!2999 lt!1425008) lt!1424996))))

(declare-fun lt!1425007 () tuple2!42134)

(assert (=> b!4017799 (= lt!1424996 (Some!9261 lt!1425007))))

(declare-fun suffixResult!105 () List!43118)

(assert (=> b!4017799 (= lt!1425007 (tuple2!42135 token!484 suffixResult!105))))

(assert (=> b!4017799 (= lt!1425008 (++!11250 prefix!494 suffix!1299))))

(declare-fun b!4017801 () Bool)

(declare-fun e!2492024 () Bool)

(declare-fun e!2492053 () Bool)

(assert (=> b!4017801 (= e!2492024 e!2492053)))

(declare-fun res!1634322 () Bool)

(assert (=> b!4017801 (=> res!1634322 e!2492053)))

(declare-fun lt!1424997 () List!43118)

(assert (=> b!4017801 (= res!1634322 (not (= lt!1424997 suffix!1299)))))

(declare-fun lt!1425017 () List!43118)

(assert (=> b!4017801 (= lt!1424997 (++!11250 newSuffix!27 lt!1425017))))

(declare-fun getSuffix!2360 (List!43118 List!43118) List!43118)

(assert (=> b!4017801 (= lt!1425017 (getSuffix!2360 suffix!1299 newSuffix!27))))

(declare-fun b!4017802 () Bool)

(declare-fun e!2492043 () Bool)

(declare-fun e!2492034 () Bool)

(assert (=> b!4017802 (= e!2492043 e!2492034)))

(declare-fun res!1634321 () Bool)

(assert (=> b!4017802 (=> res!1634321 e!2492034)))

(declare-fun lt!1425012 () List!43118)

(assert (=> b!4017802 (= res!1634321 (not (isPrefix!3935 lt!1425012 lt!1425008)))))

(declare-fun lt!1425001 () List!43118)

(assert (=> b!4017802 (isPrefix!3935 lt!1425012 lt!1425001)))

(declare-fun lt!1425037 () Unit!62062)

(assert (=> b!4017802 (= lt!1425037 (lemmaPrefixStaysPrefixWhenAddingToSuffix!748 lt!1425012 lt!1424994 lt!1425017))))

(declare-fun b!4017803 () Bool)

(assert (=> b!4017803 (= e!2492053 e!2492043)))

(declare-fun res!1634306 () Bool)

(assert (=> b!4017803 (=> res!1634306 e!2492043)))

(assert (=> b!4017803 (= res!1634306 (not (= lt!1425001 lt!1425008)))))

(assert (=> b!4017803 (= lt!1425001 (++!11250 prefix!494 lt!1424997))))

(assert (=> b!4017803 (= lt!1425001 (++!11250 lt!1424994 lt!1425017))))

(declare-fun lt!1425002 () Unit!62062)

(declare-fun lemmaConcatAssociativity!2560 (List!43118 List!43118 List!43118) Unit!62062)

(assert (=> b!4017803 (= lt!1425002 (lemmaConcatAssociativity!2560 prefix!494 newSuffix!27 lt!1425017))))

(declare-fun tp!1221507 () Bool)

(declare-fun e!2492036 () Bool)

(declare-fun e!2492040 () Bool)

(declare-fun b!4017804 () Bool)

(declare-fun inv!21 (TokenValue!7078) Bool)

(assert (=> b!4017804 (= e!2492036 (and (inv!21 (value!215802 token!484)) e!2492040 tp!1221507))))

(declare-fun b!4017805 () Bool)

(declare-fun e!2492023 () Bool)

(declare-fun e!2492038 () Bool)

(assert (=> b!4017805 (= e!2492023 e!2492038)))

(declare-fun res!1634312 () Bool)

(assert (=> b!4017805 (=> res!1634312 e!2492038)))

(assert (=> b!4017805 (= res!1634312 (not (isPrefix!3935 lt!1425024 lt!1425008)))))

(assert (=> b!4017805 (isPrefix!3935 prefix!494 lt!1425008)))

(declare-fun lt!1425009 () Unit!62062)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2776 (List!43118 List!43118) Unit!62062)

(assert (=> b!4017805 (= lt!1425009 (lemmaConcatTwoListThenFirstIsPrefix!2776 prefix!494 suffix!1299))))

(declare-fun lt!1425040 () List!43118)

(assert (=> b!4017805 (isPrefix!3935 lt!1425024 lt!1425040)))

(declare-fun lt!1425023 () Unit!62062)

(assert (=> b!4017805 (= lt!1425023 (lemmaConcatTwoListThenFirstIsPrefix!2776 lt!1425024 suffixResult!105))))

(declare-fun b!4017806 () Bool)

(declare-fun e!2492027 () Bool)

(declare-fun e!2492041 () Bool)

(declare-fun tp!1221506 () Bool)

(assert (=> b!4017806 (= e!2492027 (and e!2492041 tp!1221506))))

(declare-fun b!4017807 () Bool)

(declare-fun res!1634318 () Bool)

(declare-fun e!2492048 () Bool)

(assert (=> b!4017807 (=> (not res!1634318) (not e!2492048))))

(declare-fun size!32148 (List!43118) Int)

(assert (=> b!4017807 (= res!1634318 (= (size!32147 token!484) (size!32148 (originalCharacters!7448 token!484))))))

(declare-fun b!4017808 () Bool)

(declare-fun e!2492033 () Bool)

(assert (=> b!4017808 (= e!2492033 false)))

(declare-fun b!4017809 () Bool)

(declare-fun res!1634303 () Bool)

(assert (=> b!4017809 (=> res!1634303 e!2492034)))

(declare-fun lt!1425025 () List!43118)

(assert (=> b!4017809 (= res!1634303 (not (= lt!1425025 lt!1424994)))))

(declare-fun b!4017810 () Bool)

(declare-fun e!2492035 () Bool)

(assert (=> b!4017810 (= e!2492028 e!2492035)))

(declare-fun res!1634305 () Bool)

(assert (=> b!4017810 (=> res!1634305 e!2492035)))

(declare-fun lt!1424998 () List!43118)

(assert (=> b!4017810 (= res!1634305 (not (= lt!1424998 lt!1425008)))))

(declare-fun lt!1425028 () List!43118)

(assert (=> b!4017810 (= lt!1424998 (++!11250 lt!1425024 lt!1425028))))

(assert (=> b!4017810 (= lt!1425028 (getSuffix!2360 lt!1425008 lt!1425024))))

(assert (=> b!4017810 e!2492048))

(declare-fun res!1634320 () Bool)

(assert (=> b!4017810 (=> (not res!1634320) (not e!2492048))))

(assert (=> b!4017810 (= res!1634320 (isPrefix!3935 lt!1425008 lt!1425008))))

(declare-fun lt!1425035 () Unit!62062)

(declare-fun lemmaIsPrefixRefl!2511 (List!43118 List!43118) Unit!62062)

(assert (=> b!4017810 (= lt!1425035 (lemmaIsPrefixRefl!2511 lt!1425008 lt!1425008))))

(declare-fun b!4017811 () Bool)

(assert (=> b!4017811 (= e!2492025 e!2492039)))

(declare-fun res!1634313 () Bool)

(assert (=> b!4017811 (=> (not res!1634313) (not e!2492039))))

(declare-fun lt!1425036 () Int)

(declare-fun lt!1425030 () Int)

(assert (=> b!4017811 (= res!1634313 (>= lt!1425036 lt!1425030))))

(assert (=> b!4017811 (= lt!1425030 (size!32148 lt!1425024))))

(assert (=> b!4017811 (= lt!1425036 (size!32148 prefix!494))))

(declare-fun list!15984 (BalanceConc!25712) List!43118)

(declare-fun charsOf!4664 (Token!12834) BalanceConc!25712)

(assert (=> b!4017811 (= lt!1425024 (list!15984 (charsOf!4664 token!484)))))

(declare-fun b!4017812 () Bool)

(declare-fun res!1634299 () Bool)

(assert (=> b!4017812 (=> (not res!1634299) (not e!2492025))))

(assert (=> b!4017812 (= res!1634299 (isPrefix!3935 newSuffix!27 suffix!1299))))

(declare-fun b!4017813 () Bool)

(declare-fun e!2492055 () Bool)

(declare-fun tp!1221502 () Bool)

(assert (=> b!4017813 (= e!2492055 (and tp_is_empty!20477 tp!1221502))))

(declare-fun b!4017814 () Bool)

(declare-fun e!2492022 () Bool)

(declare-fun e!2492042 () Bool)

(assert (=> b!4017814 (= e!2492022 e!2492042)))

(declare-fun res!1634315 () Bool)

(assert (=> b!4017814 (=> res!1634315 e!2492042)))

(declare-fun lt!1425004 () List!43118)

(declare-fun lt!1425016 () List!43118)

(assert (=> b!4017814 (= res!1634315 (or (not (= lt!1425008 lt!1425004)) (not (= lt!1425008 lt!1425016))))))

(assert (=> b!4017814 (= lt!1425004 lt!1425016)))

(declare-fun lt!1425006 () List!43118)

(assert (=> b!4017814 (= lt!1425016 (++!11250 lt!1425024 lt!1425006))))

(declare-fun lt!1425020 () List!43118)

(assert (=> b!4017814 (= lt!1425004 (++!11250 lt!1425020 suffix!1299))))

(declare-fun lt!1424993 () List!43118)

(assert (=> b!4017814 (= lt!1425006 (++!11250 lt!1424993 suffix!1299))))

(declare-fun lt!1425011 () Unit!62062)

(assert (=> b!4017814 (= lt!1425011 (lemmaConcatAssociativity!2560 lt!1425024 lt!1424993 suffix!1299))))

(declare-fun b!4017815 () Bool)

(declare-fun e!2492054 () Unit!62062)

(declare-fun Unit!62064 () Unit!62062)

(assert (=> b!4017815 (= e!2492054 Unit!62064)))

(declare-fun lt!1424991 () Unit!62062)

(declare-fun lt!1425029 () Option!9262)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!442 (LexerInterface!6437 List!43120 Rule!13496 List!43118 List!43118 List!43118 Rule!13496) Unit!62062)

(assert (=> b!4017815 (= lt!1424991 (lemmaMaxPrefixOutputsMaxPrefix!442 thiss!21717 rules!2999 (rule!9900 token!484) lt!1425024 lt!1425008 lt!1425012 (rule!9900 (_1!24201 (v!39635 lt!1425029)))))))

(declare-fun res!1634319 () Bool)

(assert (=> b!4017815 (= res!1634319 (not (matchR!5714 (regex!6848 (rule!9900 (_1!24201 (v!39635 lt!1425029)))) lt!1425012)))))

(assert (=> b!4017815 (=> (not res!1634319) (not e!2492033))))

(assert (=> b!4017815 e!2492033))

(declare-fun b!4017816 () Bool)

(declare-fun e!2492049 () Bool)

(declare-fun tp!1221503 () Bool)

(assert (=> b!4017816 (= e!2492049 (and tp_is_empty!20477 tp!1221503))))

(declare-fun b!4017800 () Bool)

(declare-fun Unit!62065 () Unit!62062)

(assert (=> b!4017800 (= e!2492054 Unit!62065)))

(declare-fun res!1634311 () Bool)

(assert (=> start!378424 (=> (not res!1634311) (not e!2492025))))

(get-info :version)

(assert (=> start!378424 (= res!1634311 ((_ is Lexer!6435) thiss!21717))))

(assert (=> start!378424 e!2492025))

(assert (=> start!378424 e!2492049))

(declare-fun inv!57430 (Token!12834) Bool)

(assert (=> start!378424 (and (inv!57430 token!484) e!2492036)))

(declare-fun e!2492026 () Bool)

(assert (=> start!378424 e!2492026))

(assert (=> start!378424 e!2492055))

(assert (=> start!378424 e!2492044))

(assert (=> start!378424 true))

(assert (=> start!378424 e!2492027))

(assert (=> start!378424 e!2492031))

(declare-fun b!4017817 () Bool)

(declare-fun e!2492050 () Bool)

(assert (=> b!4017817 (= e!2492034 e!2492050)))

(declare-fun res!1634323 () Bool)

(assert (=> b!4017817 (=> res!1634323 e!2492050)))

(declare-fun lt!1424999 () List!43118)

(assert (=> b!4017817 (= res!1634323 (not (= lt!1424999 lt!1424994)))))

(declare-fun lt!1424986 () List!43118)

(assert (=> b!4017817 (= lt!1424999 (++!11250 lt!1425012 lt!1424986))))

(assert (=> b!4017817 (= lt!1424986 (getSuffix!2360 lt!1424994 lt!1425012))))

(declare-fun b!4017818 () Bool)

(declare-fun res!1634307 () Bool)

(assert (=> b!4017818 (=> (not res!1634307) (not e!2492025))))

(assert (=> b!4017818 (= res!1634307 (>= (size!32148 suffix!1299) (size!32148 newSuffix!27)))))

(declare-fun b!4017819 () Bool)

(declare-fun e!2492029 () Bool)

(assert (=> b!4017819 (= e!2492029 true)))

(declare-fun lt!1425026 () Bool)

(assert (=> b!4017819 (= lt!1425026 (isPrefix!3935 lt!1425012 lt!1424994))))

(declare-fun b!4017820 () Bool)

(assert (=> b!4017820 (= e!2492042 e!2492045)))

(declare-fun res!1634316 () Bool)

(assert (=> b!4017820 (=> res!1634316 e!2492045)))

(declare-fun lt!1425018 () Option!9262)

(assert (=> b!4017820 (= res!1634316 (not (= lt!1425018 lt!1424996)))))

(declare-fun lt!1425015 () Token!12834)

(assert (=> b!4017820 (= lt!1425018 (Some!9261 (tuple2!42135 lt!1425015 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2755 (LexerInterface!6437 Rule!13496 List!43118) Option!9262)

(assert (=> b!4017820 (= lt!1425018 (maxPrefixOneRule!2755 thiss!21717 (rule!9900 token!484) lt!1425008))))

(declare-fun lt!1425027 () TokenValue!7078)

(assert (=> b!4017820 (= lt!1425015 (Token!12835 lt!1425027 (rule!9900 token!484) lt!1425030 lt!1425024))))

(declare-fun apply!10045 (TokenValueInjection!13584 BalanceConc!25712) TokenValue!7078)

(declare-fun seqFromList!5073 (List!43118) BalanceConc!25712)

(assert (=> b!4017820 (= lt!1425027 (apply!10045 (transformation!6848 (rule!9900 token!484)) (seqFromList!5073 lt!1425024)))))

(declare-fun lt!1424992 () Unit!62062)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1573 (LexerInterface!6437 List!43120 List!43118 List!43118 List!43118 Rule!13496) Unit!62062)

(assert (=> b!4017820 (= lt!1424992 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1573 thiss!21717 rules!2999 lt!1425024 lt!1425008 suffixResult!105 (rule!9900 token!484)))))

(assert (=> b!4017820 (= lt!1425006 suffixResult!105)))

(declare-fun lt!1425000 () Unit!62062)

(declare-fun lemmaSamePrefixThenSameSuffix!2106 (List!43118 List!43118 List!43118 List!43118 List!43118) Unit!62062)

(assert (=> b!4017820 (= lt!1425000 (lemmaSamePrefixThenSameSuffix!2106 lt!1425024 lt!1425006 lt!1425024 suffixResult!105 lt!1425008))))

(assert (=> b!4017820 (isPrefix!3935 lt!1425024 lt!1425016)))

(declare-fun lt!1425022 () Unit!62062)

(assert (=> b!4017820 (= lt!1425022 (lemmaConcatTwoListThenFirstIsPrefix!2776 lt!1425024 lt!1425006))))

(declare-fun b!4017821 () Bool)

(assert (=> b!4017821 (= e!2492046 (not e!2492023))))

(declare-fun res!1634301 () Bool)

(assert (=> b!4017821 (=> res!1634301 e!2492023)))

(assert (=> b!4017821 (= res!1634301 (not (= lt!1425040 lt!1425008)))))

(assert (=> b!4017821 (= lt!1425040 (++!11250 lt!1425024 suffixResult!105))))

(declare-fun lt!1425014 () Unit!62062)

(declare-fun lemmaInv!1063 (TokenValueInjection!13584) Unit!62062)

(assert (=> b!4017821 (= lt!1425014 (lemmaInv!1063 (transformation!6848 (rule!9900 token!484))))))

(declare-fun ruleValid!2780 (LexerInterface!6437 Rule!13496) Bool)

(assert (=> b!4017821 (ruleValid!2780 thiss!21717 (rule!9900 token!484))))

(declare-fun lt!1425038 () Unit!62062)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1854 (LexerInterface!6437 Rule!13496 List!43120) Unit!62062)

(assert (=> b!4017821 (= lt!1425038 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1854 thiss!21717 (rule!9900 token!484) rules!2999))))

(declare-fun b!4017822 () Bool)

(declare-fun tp!1221496 () Bool)

(declare-fun inv!57427 (String!49107) Bool)

(declare-fun inv!57431 (TokenValueInjection!13584) Bool)

(assert (=> b!4017822 (= e!2492041 (and tp!1221496 (inv!57427 (tag!7708 (h!48416 rules!2999))) (inv!57431 (transformation!6848 (h!48416 rules!2999))) e!2492051))))

(declare-fun b!4017823 () Bool)

(assert (=> b!4017823 (= e!2492038 e!2492022)))

(declare-fun res!1634310 () Bool)

(assert (=> b!4017823 (=> res!1634310 e!2492022)))

(assert (=> b!4017823 (= res!1634310 (not (= lt!1425020 prefix!494)))))

(assert (=> b!4017823 (= lt!1425020 (++!11250 lt!1425024 lt!1424993))))

(assert (=> b!4017823 (= lt!1424993 (getSuffix!2360 prefix!494 lt!1425024))))

(assert (=> b!4017823 (isPrefix!3935 lt!1425024 prefix!494)))

(declare-fun lt!1424990 () Unit!62062)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!507 (List!43118 List!43118 List!43118) Unit!62062)

(assert (=> b!4017823 (= lt!1424990 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!507 prefix!494 lt!1425024 lt!1425008))))

(declare-fun b!4017824 () Bool)

(assert (=> b!4017824 (= e!2492048 (and (= (size!32147 token!484) lt!1425030) (= (originalCharacters!7448 token!484) lt!1425024)))))

(declare-fun b!4017825 () Bool)

(assert (=> b!4017825 (= e!2492050 e!2492029)))

(declare-fun res!1634317 () Bool)

(assert (=> b!4017825 (=> res!1634317 e!2492029)))

(declare-fun lt!1424987 () Int)

(assert (=> b!4017825 (= res!1634317 (>= lt!1424987 lt!1425030))))

(declare-fun lt!1425010 () Unit!62062)

(assert (=> b!4017825 (= lt!1425010 e!2492054)))

(declare-fun c!694431 () Bool)

(assert (=> b!4017825 (= c!694431 (> lt!1424987 lt!1425030))))

(assert (=> b!4017825 (= (_2!24201 (v!39635 lt!1425029)) lt!1424986)))

(declare-fun lt!1425039 () Unit!62062)

(assert (=> b!4017825 (= lt!1425039 (lemmaSamePrefixThenSameSuffix!2106 lt!1425012 (_2!24201 (v!39635 lt!1425029)) lt!1425012 lt!1424986 lt!1424994))))

(assert (=> b!4017825 (isPrefix!3935 lt!1425012 lt!1424999)))

(declare-fun lt!1425005 () Unit!62062)

(assert (=> b!4017825 (= lt!1425005 (lemmaConcatTwoListThenFirstIsPrefix!2776 lt!1425012 lt!1424986))))

(declare-fun b!4017826 () Bool)

(declare-fun res!1634325 () Bool)

(assert (=> b!4017826 (=> (not res!1634325) (not e!2492048))))

(assert (=> b!4017826 (= res!1634325 (= (value!215802 token!484) lt!1425027))))

(declare-fun b!4017827 () Bool)

(declare-fun e!2492056 () Bool)

(assert (=> b!4017827 (= e!2492056 e!2492024)))

(declare-fun res!1634308 () Bool)

(assert (=> b!4017827 (=> res!1634308 e!2492024)))

(declare-fun lt!1425021 () Option!9262)

(assert (=> b!4017827 (= res!1634308 (not (= lt!1425021 (Some!9261 (v!39635 lt!1425029)))))))

(assert (=> b!4017827 (isPrefix!3935 lt!1425012 (++!11250 lt!1425012 newSuffixResult!27))))

(declare-fun lt!1425034 () Unit!62062)

(assert (=> b!4017827 (= lt!1425034 (lemmaConcatTwoListThenFirstIsPrefix!2776 lt!1425012 newSuffixResult!27))))

(assert (=> b!4017827 (isPrefix!3935 lt!1425012 lt!1425025)))

(assert (=> b!4017827 (= lt!1425025 (++!11250 lt!1425012 (_2!24201 (v!39635 lt!1425029))))))

(declare-fun lt!1425041 () Unit!62062)

(assert (=> b!4017827 (= lt!1425041 (lemmaConcatTwoListThenFirstIsPrefix!2776 lt!1425012 (_2!24201 (v!39635 lt!1425029))))))

(declare-fun lt!1424989 () TokenValue!7078)

(assert (=> b!4017827 (= lt!1425021 (Some!9261 (tuple2!42135 (Token!12835 lt!1424989 (rule!9900 (_1!24201 (v!39635 lt!1425029))) lt!1424987 lt!1425012) (_2!24201 (v!39635 lt!1425029)))))))

(assert (=> b!4017827 (= lt!1425021 (maxPrefixOneRule!2755 thiss!21717 (rule!9900 (_1!24201 (v!39635 lt!1425029))) lt!1424994))))

(assert (=> b!4017827 (= lt!1424987 (size!32148 lt!1425012))))

(assert (=> b!4017827 (= lt!1424989 (apply!10045 (transformation!6848 (rule!9900 (_1!24201 (v!39635 lt!1425029)))) (seqFromList!5073 lt!1425012)))))

(declare-fun lt!1425033 () Unit!62062)

(assert (=> b!4017827 (= lt!1425033 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1573 thiss!21717 rules!2999 lt!1425012 lt!1424994 (_2!24201 (v!39635 lt!1425029)) (rule!9900 (_1!24201 (v!39635 lt!1425029)))))))

(assert (=> b!4017827 (= lt!1425012 (list!15984 (charsOf!4664 (_1!24201 (v!39635 lt!1425029)))))))

(declare-fun lt!1424995 () Unit!62062)

(assert (=> b!4017827 (= lt!1424995 (lemmaInv!1063 (transformation!6848 (rule!9900 (_1!24201 (v!39635 lt!1425029))))))))

(assert (=> b!4017827 (ruleValid!2780 thiss!21717 (rule!9900 (_1!24201 (v!39635 lt!1425029))))))

(declare-fun lt!1425003 () Unit!62062)

(assert (=> b!4017827 (= lt!1425003 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1854 thiss!21717 (rule!9900 (_1!24201 (v!39635 lt!1425029))) rules!2999))))

(declare-fun lt!1424988 () Unit!62062)

(declare-fun lemmaCharactersSize!1407 (Token!12834) Unit!62062)

(assert (=> b!4017827 (= lt!1424988 (lemmaCharactersSize!1407 token!484))))

(declare-fun lt!1425042 () Unit!62062)

(assert (=> b!4017827 (= lt!1425042 (lemmaCharactersSize!1407 (_1!24201 (v!39635 lt!1425029))))))

(declare-fun b!4017828 () Bool)

(assert (=> b!4017828 (= e!2492035 e!2492056)))

(declare-fun res!1634300 () Bool)

(assert (=> b!4017828 (=> res!1634300 e!2492056)))

(assert (=> b!4017828 (= res!1634300 (not ((_ is Some!9261) lt!1425029)))))

(assert (=> b!4017828 (= lt!1425029 (maxPrefix!3735 thiss!21717 rules!2999 lt!1424994))))

(assert (=> b!4017828 (and (= suffixResult!105 lt!1425028) (= lt!1425007 (tuple2!42135 lt!1425015 lt!1425028)))))

(declare-fun lt!1425019 () Unit!62062)

(assert (=> b!4017828 (= lt!1425019 (lemmaSamePrefixThenSameSuffix!2106 lt!1425024 suffixResult!105 lt!1425024 lt!1425028 lt!1425008))))

(assert (=> b!4017828 (isPrefix!3935 lt!1425024 lt!1424998)))

(declare-fun lt!1425031 () Unit!62062)

(assert (=> b!4017828 (= lt!1425031 (lemmaConcatTwoListThenFirstIsPrefix!2776 lt!1425024 lt!1425028))))

(declare-fun tp!1221497 () Bool)

(declare-fun b!4017829 () Bool)

(assert (=> b!4017829 (= e!2492040 (and tp!1221497 (inv!57427 (tag!7708 (rule!9900 token!484))) (inv!57431 (transformation!6848 (rule!9900 token!484))) e!2492032))))

(declare-fun b!4017830 () Bool)

(declare-fun tp!1221498 () Bool)

(assert (=> b!4017830 (= e!2492026 (and tp_is_empty!20477 tp!1221498))))

(assert (= (and start!378424 res!1634311) b!4017794))

(assert (= (and b!4017794 res!1634324) b!4017798))

(assert (= (and b!4017798 res!1634314) b!4017818))

(assert (= (and b!4017818 res!1634307) b!4017812))

(assert (= (and b!4017812 res!1634299) b!4017811))

(assert (= (and b!4017811 res!1634313) b!4017797))

(assert (= (and b!4017797 res!1634302) b!4017799))

(assert (= (and b!4017799 res!1634304) b!4017821))

(assert (= (and b!4017821 (not res!1634301)) b!4017805))

(assert (= (and b!4017805 (not res!1634312)) b!4017823))

(assert (= (and b!4017823 (not res!1634310)) b!4017814))

(assert (= (and b!4017814 (not res!1634315)) b!4017820))

(assert (= (and b!4017820 (not res!1634316)) b!4017795))

(assert (= (and b!4017795 (not res!1634309)) b!4017810))

(assert (= (and b!4017810 res!1634320) b!4017826))

(assert (= (and b!4017826 res!1634325) b!4017807))

(assert (= (and b!4017807 res!1634318) b!4017824))

(assert (= (and b!4017810 (not res!1634305)) b!4017828))

(assert (= (and b!4017828 (not res!1634300)) b!4017827))

(assert (= (and b!4017827 (not res!1634308)) b!4017801))

(assert (= (and b!4017801 (not res!1634322)) b!4017803))

(assert (= (and b!4017803 (not res!1634306)) b!4017802))

(assert (= (and b!4017802 (not res!1634321)) b!4017809))

(assert (= (and b!4017809 (not res!1634303)) b!4017817))

(assert (= (and b!4017817 (not res!1634323)) b!4017825))

(assert (= (and b!4017825 c!694431) b!4017815))

(assert (= (and b!4017825 (not c!694431)) b!4017800))

(assert (= (and b!4017815 res!1634319) b!4017808))

(assert (= (and b!4017825 (not res!1634317)) b!4017819))

(assert (= (and start!378424 ((_ is Cons!42994) prefix!494)) b!4017816))

(assert (= b!4017829 b!4017796))

(assert (= b!4017804 b!4017829))

(assert (= start!378424 b!4017804))

(assert (= (and start!378424 ((_ is Cons!42994) suffixResult!105)) b!4017830))

(assert (= (and start!378424 ((_ is Cons!42994) suffix!1299)) b!4017813))

(assert (= (and start!378424 ((_ is Cons!42994) newSuffix!27)) b!4017791))

(assert (= b!4017822 b!4017792))

(assert (= b!4017806 b!4017822))

(assert (= (and start!378424 ((_ is Cons!42996) rules!2999)) b!4017806))

(assert (= (and start!378424 ((_ is Cons!42994) newSuffixResult!27)) b!4017793))

(declare-fun m!4606689 () Bool)

(assert (=> b!4017799 m!4606689))

(declare-fun m!4606691 () Bool)

(assert (=> b!4017799 m!4606691))

(declare-fun m!4606693 () Bool)

(assert (=> b!4017829 m!4606693))

(declare-fun m!4606695 () Bool)

(assert (=> b!4017829 m!4606695))

(declare-fun m!4606697 () Bool)

(assert (=> b!4017823 m!4606697))

(declare-fun m!4606699 () Bool)

(assert (=> b!4017823 m!4606699))

(declare-fun m!4606701 () Bool)

(assert (=> b!4017823 m!4606701))

(declare-fun m!4606703 () Bool)

(assert (=> b!4017823 m!4606703))

(declare-fun m!4606705 () Bool)

(assert (=> b!4017810 m!4606705))

(declare-fun m!4606707 () Bool)

(assert (=> b!4017810 m!4606707))

(declare-fun m!4606709 () Bool)

(assert (=> b!4017810 m!4606709))

(declare-fun m!4606711 () Bool)

(assert (=> b!4017810 m!4606711))

(declare-fun m!4606713 () Bool)

(assert (=> b!4017828 m!4606713))

(declare-fun m!4606715 () Bool)

(assert (=> b!4017828 m!4606715))

(declare-fun m!4606717 () Bool)

(assert (=> b!4017828 m!4606717))

(declare-fun m!4606719 () Bool)

(assert (=> b!4017828 m!4606719))

(declare-fun m!4606721 () Bool)

(assert (=> b!4017822 m!4606721))

(declare-fun m!4606723 () Bool)

(assert (=> b!4017822 m!4606723))

(declare-fun m!4606725 () Bool)

(assert (=> b!4017807 m!4606725))

(declare-fun m!4606727 () Bool)

(assert (=> b!4017804 m!4606727))

(declare-fun m!4606729 () Bool)

(assert (=> b!4017803 m!4606729))

(declare-fun m!4606731 () Bool)

(assert (=> b!4017803 m!4606731))

(declare-fun m!4606733 () Bool)

(assert (=> b!4017803 m!4606733))

(declare-fun m!4606735 () Bool)

(assert (=> b!4017812 m!4606735))

(declare-fun m!4606737 () Bool)

(assert (=> b!4017818 m!4606737))

(declare-fun m!4606739 () Bool)

(assert (=> b!4017818 m!4606739))

(declare-fun m!4606741 () Bool)

(assert (=> b!4017817 m!4606741))

(declare-fun m!4606743 () Bool)

(assert (=> b!4017817 m!4606743))

(declare-fun m!4606745 () Bool)

(assert (=> b!4017798 m!4606745))

(declare-fun m!4606747 () Bool)

(assert (=> b!4017815 m!4606747))

(declare-fun m!4606749 () Bool)

(assert (=> b!4017815 m!4606749))

(declare-fun m!4606751 () Bool)

(assert (=> start!378424 m!4606751))

(declare-fun m!4606753 () Bool)

(assert (=> b!4017820 m!4606753))

(declare-fun m!4606755 () Bool)

(assert (=> b!4017820 m!4606755))

(declare-fun m!4606757 () Bool)

(assert (=> b!4017820 m!4606757))

(declare-fun m!4606759 () Bool)

(assert (=> b!4017820 m!4606759))

(declare-fun m!4606761 () Bool)

(assert (=> b!4017820 m!4606761))

(declare-fun m!4606763 () Bool)

(assert (=> b!4017820 m!4606763))

(declare-fun m!4606765 () Bool)

(assert (=> b!4017820 m!4606765))

(assert (=> b!4017820 m!4606753))

(declare-fun m!4606767 () Bool)

(assert (=> b!4017795 m!4606767))

(declare-fun m!4606769 () Bool)

(assert (=> b!4017795 m!4606769))

(declare-fun m!4606771 () Bool)

(assert (=> b!4017795 m!4606771))

(declare-fun m!4606773 () Bool)

(assert (=> b!4017795 m!4606773))

(declare-fun m!4606775 () Bool)

(assert (=> b!4017811 m!4606775))

(declare-fun m!4606777 () Bool)

(assert (=> b!4017811 m!4606777))

(declare-fun m!4606779 () Bool)

(assert (=> b!4017811 m!4606779))

(assert (=> b!4017811 m!4606779))

(declare-fun m!4606781 () Bool)

(assert (=> b!4017811 m!4606781))

(declare-fun m!4606783 () Bool)

(assert (=> b!4017805 m!4606783))

(declare-fun m!4606785 () Bool)

(assert (=> b!4017805 m!4606785))

(declare-fun m!4606787 () Bool)

(assert (=> b!4017805 m!4606787))

(declare-fun m!4606789 () Bool)

(assert (=> b!4017805 m!4606789))

(declare-fun m!4606791 () Bool)

(assert (=> b!4017805 m!4606791))

(declare-fun m!4606793 () Bool)

(assert (=> b!4017797 m!4606793))

(declare-fun m!4606795 () Bool)

(assert (=> b!4017797 m!4606795))

(declare-fun m!4606797 () Bool)

(assert (=> b!4017794 m!4606797))

(declare-fun m!4606799 () Bool)

(assert (=> b!4017827 m!4606799))

(declare-fun m!4606801 () Bool)

(assert (=> b!4017827 m!4606801))

(declare-fun m!4606803 () Bool)

(assert (=> b!4017827 m!4606803))

(declare-fun m!4606805 () Bool)

(assert (=> b!4017827 m!4606805))

(declare-fun m!4606807 () Bool)

(assert (=> b!4017827 m!4606807))

(declare-fun m!4606809 () Bool)

(assert (=> b!4017827 m!4606809))

(declare-fun m!4606811 () Bool)

(assert (=> b!4017827 m!4606811))

(declare-fun m!4606813 () Bool)

(assert (=> b!4017827 m!4606813))

(declare-fun m!4606815 () Bool)

(assert (=> b!4017827 m!4606815))

(declare-fun m!4606817 () Bool)

(assert (=> b!4017827 m!4606817))

(declare-fun m!4606819 () Bool)

(assert (=> b!4017827 m!4606819))

(declare-fun m!4606821 () Bool)

(assert (=> b!4017827 m!4606821))

(declare-fun m!4606823 () Bool)

(assert (=> b!4017827 m!4606823))

(declare-fun m!4606825 () Bool)

(assert (=> b!4017827 m!4606825))

(assert (=> b!4017827 m!4606807))

(declare-fun m!4606827 () Bool)

(assert (=> b!4017827 m!4606827))

(assert (=> b!4017827 m!4606819))

(declare-fun m!4606829 () Bool)

(assert (=> b!4017827 m!4606829))

(declare-fun m!4606831 () Bool)

(assert (=> b!4017827 m!4606831))

(assert (=> b!4017827 m!4606799))

(declare-fun m!4606833 () Bool)

(assert (=> b!4017827 m!4606833))

(declare-fun m!4606835 () Bool)

(assert (=> b!4017821 m!4606835))

(declare-fun m!4606837 () Bool)

(assert (=> b!4017821 m!4606837))

(declare-fun m!4606839 () Bool)

(assert (=> b!4017821 m!4606839))

(declare-fun m!4606841 () Bool)

(assert (=> b!4017821 m!4606841))

(declare-fun m!4606843 () Bool)

(assert (=> b!4017802 m!4606843))

(declare-fun m!4606845 () Bool)

(assert (=> b!4017802 m!4606845))

(declare-fun m!4606847 () Bool)

(assert (=> b!4017802 m!4606847))

(declare-fun m!4606849 () Bool)

(assert (=> b!4017819 m!4606849))

(declare-fun m!4606851 () Bool)

(assert (=> b!4017825 m!4606851))

(declare-fun m!4606853 () Bool)

(assert (=> b!4017825 m!4606853))

(declare-fun m!4606855 () Bool)

(assert (=> b!4017825 m!4606855))

(declare-fun m!4606857 () Bool)

(assert (=> b!4017801 m!4606857))

(declare-fun m!4606859 () Bool)

(assert (=> b!4017801 m!4606859))

(declare-fun m!4606861 () Bool)

(assert (=> b!4017814 m!4606861))

(declare-fun m!4606863 () Bool)

(assert (=> b!4017814 m!4606863))

(declare-fun m!4606865 () Bool)

(assert (=> b!4017814 m!4606865))

(declare-fun m!4606867 () Bool)

(assert (=> b!4017814 m!4606867))

(check-sat (not b!4017811) (not b!4017793) (not b!4017825) (not b!4017820) (not b_next!112465) (not b!4017827) (not b!4017799) b_and!308663 (not b!4017814) (not b!4017822) (not b!4017813) (not b_next!112471) (not b!4017794) (not start!378424) (not b!4017804) (not b!4017829) (not b!4017797) (not b!4017812) (not b_next!112467) (not b!4017801) (not b!4017819) (not b!4017791) (not b!4017798) (not b_next!112469) (not b!4017817) (not b!4017821) (not b!4017805) (not b!4017803) (not b!4017818) tp_is_empty!20477 (not b!4017828) (not b!4017823) (not b!4017806) (not b!4017810) (not b!4017816) (not b!4017795) (not b!4017807) b_and!308667 b_and!308669 (not b!4017802) (not b!4017815) b_and!308665 (not b!4017830))
(check-sat (not b_next!112471) (not b_next!112467) (not b_next!112465) (not b_next!112469) b_and!308663 b_and!308665 b_and!308667 b_and!308669)
