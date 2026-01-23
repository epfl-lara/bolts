; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353968 () Bool)

(assert start!353968)

(declare-fun b!3768209 () Bool)

(declare-fun b_free!100981 () Bool)

(declare-fun b_next!101685 () Bool)

(assert (=> b!3768209 (= b_free!100981 (not b_next!101685))))

(declare-fun tp!1151202 () Bool)

(declare-fun b_and!279795 () Bool)

(assert (=> b!3768209 (= tp!1151202 b_and!279795)))

(declare-fun b_free!100983 () Bool)

(declare-fun b_next!101687 () Bool)

(assert (=> b!3768209 (= b_free!100983 (not b_next!101687))))

(declare-fun tp!1151200 () Bool)

(declare-fun b_and!279797 () Bool)

(assert (=> b!3768209 (= tp!1151200 b_and!279797)))

(declare-fun b!3768198 () Bool)

(declare-fun res!1525597 () Bool)

(declare-fun e!2330685 () Bool)

(assert (=> b!3768198 (=> (not res!1525597) (not e!2330685))))

(declare-datatypes ((LexerInterface!5777 0))(
  ( (LexerInterfaceExt!5774 (__x!25053 Int)) (Lexer!5775) )
))
(declare-fun thiss!11876 () LexerInterface!5777)

(declare-datatypes ((List!40376 0))(
  ( (Nil!40252) (Cons!40252 (h!45672 (_ BitVec 16)) (t!304413 List!40376)) )
))
(declare-datatypes ((TokenValue!6418 0))(
  ( (FloatLiteralValue!12836 (text!45371 List!40376)) (TokenValueExt!6417 (__x!25054 Int)) (Broken!32090 (value!196939 List!40376)) (Object!6541) (End!6418) (Def!6418) (Underscore!6418) (Match!6418) (Else!6418) (Error!6418) (Case!6418) (If!6418) (Extends!6418) (Abstract!6418) (Class!6418) (Val!6418) (DelimiterValue!12836 (del!6478 List!40376)) (KeywordValue!6424 (value!196940 List!40376)) (CommentValue!12836 (value!196941 List!40376)) (WhitespaceValue!12836 (value!196942 List!40376)) (IndentationValue!6418 (value!196943 List!40376)) (String!45771) (Int32!6418) (Broken!32091 (value!196944 List!40376)) (Boolean!6419) (Unit!57951) (OperatorValue!6421 (op!6478 List!40376)) (IdentifierValue!12836 (value!196945 List!40376)) (IdentifierValue!12837 (value!196946 List!40376)) (WhitespaceValue!12837 (value!196947 List!40376)) (True!12836) (False!12836) (Broken!32092 (value!196948 List!40376)) (Broken!32093 (value!196949 List!40376)) (True!12837) (RightBrace!6418) (RightBracket!6418) (Colon!6418) (Null!6418) (Comma!6418) (LeftBracket!6418) (False!12837) (LeftBrace!6418) (ImaginaryLiteralValue!6418 (text!45372 List!40376)) (StringLiteralValue!19254 (value!196950 List!40376)) (EOFValue!6418 (value!196951 List!40376)) (IdentValue!6418 (value!196952 List!40376)) (DelimiterValue!12837 (value!196953 List!40376)) (DedentValue!6418 (value!196954 List!40376)) (NewLineValue!6418 (value!196955 List!40376)) (IntegerValue!19254 (value!196956 (_ BitVec 32)) (text!45373 List!40376)) (IntegerValue!19255 (value!196957 Int) (text!45374 List!40376)) (Times!6418) (Or!6418) (Equal!6418) (Minus!6418) (Broken!32094 (value!196958 List!40376)) (And!6418) (Div!6418) (LessEqual!6418) (Mod!6418) (Concat!17511) (Not!6418) (Plus!6418) (SpaceValue!6418 (value!196959 List!40376)) (IntegerValue!19256 (value!196960 Int) (text!45375 List!40376)) (StringLiteralValue!19255 (text!45376 List!40376)) (FloatLiteralValue!12837 (text!45377 List!40376)) (BytesLiteralValue!6418 (value!196961 List!40376)) (CommentValue!12837 (value!196962 List!40376)) (StringLiteralValue!19256 (value!196963 List!40376)) (ErrorTokenValue!6418 (msg!6479 List!40376)) )
))
(declare-datatypes ((C!22372 0))(
  ( (C!22373 (val!13262 Int)) )
))
(declare-datatypes ((Regex!11093 0))(
  ( (ElementMatch!11093 (c!652751 C!22372)) (Concat!17512 (regOne!22698 Regex!11093) (regTwo!22698 Regex!11093)) (EmptyExpr!11093) (Star!11093 (reg!11422 Regex!11093)) (EmptyLang!11093) (Union!11093 (regOne!22699 Regex!11093) (regTwo!22699 Regex!11093)) )
))
(declare-datatypes ((String!45772 0))(
  ( (String!45773 (value!196964 String)) )
))
(declare-datatypes ((List!40377 0))(
  ( (Nil!40253) (Cons!40253 (h!45673 C!22372) (t!304414 List!40377)) )
))
(declare-datatypes ((IArray!24705 0))(
  ( (IArray!24706 (innerList!12410 List!40377)) )
))
(declare-datatypes ((Conc!12350 0))(
  ( (Node!12350 (left!31149 Conc!12350) (right!31479 Conc!12350) (csize!24930 Int) (cheight!12561 Int)) (Leaf!19142 (xs!15564 IArray!24705) (csize!24931 Int)) (Empty!12350) )
))
(declare-datatypes ((BalanceConc!24294 0))(
  ( (BalanceConc!24295 (c!652752 Conc!12350)) )
))
(declare-datatypes ((TokenValueInjection!12264 0))(
  ( (TokenValueInjection!12265 (toValue!8552 Int) (toChars!8411 Int)) )
))
(declare-datatypes ((Rule!12176 0))(
  ( (Rule!12177 (regex!6188 Regex!11093) (tag!7048 String!45772) (isSeparator!6188 Bool) (transformation!6188 TokenValueInjection!12264)) )
))
(declare-datatypes ((List!40378 0))(
  ( (Nil!40254) (Cons!40254 (h!45674 Rule!12176) (t!304415 List!40378)) )
))
(declare-fun rules!1265 () List!40378)

(declare-fun rulesInvariant!5120 (LexerInterface!5777 List!40378) Bool)

(assert (=> b!3768198 (= res!1525597 (rulesInvariant!5120 thiss!11876 rules!1265))))

(declare-fun res!1525601 () Bool)

(assert (=> start!353968 (=> (not res!1525601) (not e!2330685))))

(get-info :version)

(assert (=> start!353968 (= res!1525601 ((_ is Lexer!5775) thiss!11876))))

(assert (=> start!353968 e!2330685))

(declare-fun input!678 () BalanceConc!24294)

(declare-fun e!2330683 () Bool)

(declare-fun inv!54076 (BalanceConc!24294) Bool)

(assert (=> start!353968 (and (inv!54076 input!678) e!2330683)))

(declare-datatypes ((Token!11514 0))(
  ( (Token!11515 (value!196965 TokenValue!6418) (rule!8952 Rule!12176) (size!30277 Int) (originalCharacters!6788 List!40377)) )
))
(declare-datatypes ((List!40379 0))(
  ( (Nil!40255) (Cons!40255 (h!45675 Token!11514) (t!304416 List!40379)) )
))
(declare-datatypes ((IArray!24707 0))(
  ( (IArray!24708 (innerList!12411 List!40379)) )
))
(declare-datatypes ((Conc!12351 0))(
  ( (Node!12351 (left!31150 Conc!12351) (right!31480 Conc!12351) (csize!24932 Int) (cheight!12562 Int)) (Leaf!19143 (xs!15565 IArray!24707) (csize!24933 Int)) (Empty!12351) )
))
(declare-datatypes ((BalanceConc!24296 0))(
  ( (BalanceConc!24297 (c!652753 Conc!12351)) )
))
(declare-fun acc!335 () BalanceConc!24296)

(declare-fun e!2330673 () Bool)

(declare-fun inv!54077 (BalanceConc!24296) Bool)

(assert (=> start!353968 (and (inv!54077 acc!335) e!2330673)))

(declare-fun treated!13 () BalanceConc!24294)

(declare-fun e!2330684 () Bool)

(assert (=> start!353968 (and (inv!54076 treated!13) e!2330684)))

(declare-fun e!2330677 () Bool)

(assert (=> start!353968 e!2330677))

(assert (=> start!353968 true))

(declare-fun totalInput!335 () BalanceConc!24294)

(declare-fun e!2330680 () Bool)

(assert (=> start!353968 (and (inv!54076 totalInput!335) e!2330680)))

(declare-fun b!3768199 () Bool)

(declare-fun e!2330675 () Bool)

(declare-fun e!2330674 () Bool)

(assert (=> b!3768199 (= e!2330675 (not e!2330674))))

(declare-fun res!1525605 () Bool)

(assert (=> b!3768199 (=> res!1525605 e!2330674)))

(declare-fun lt!1304059 () List!40377)

(declare-fun lt!1304070 () List!40377)

(declare-fun isSuffix!962 (List!40377 List!40377) Bool)

(assert (=> b!3768199 (= res!1525605 (not (isSuffix!962 lt!1304059 lt!1304070)))))

(declare-fun lt!1304075 () List!40377)

(assert (=> b!3768199 (isSuffix!962 lt!1304059 lt!1304075)))

(declare-datatypes ((Unit!57952 0))(
  ( (Unit!57953) )
))
(declare-fun lt!1304077 () Unit!57952)

(declare-fun lt!1304061 () List!40377)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!647 (List!40377 List!40377) Unit!57952)

(assert (=> b!3768199 (= lt!1304077 (lemmaConcatTwoListThenFSndIsSuffix!647 lt!1304061 lt!1304059))))

(declare-fun b!3768200 () Bool)

(declare-fun e!2330679 () Bool)

(assert (=> b!3768200 (= e!2330674 e!2330679)))

(declare-fun res!1525604 () Bool)

(assert (=> b!3768200 (=> res!1525604 e!2330679)))

(declare-datatypes ((tuple2!39304 0))(
  ( (tuple2!39305 (_1!22786 Token!11514) (_2!22786 BalanceConc!24294)) )
))
(declare-datatypes ((Option!8588 0))(
  ( (None!8587) (Some!8587 (v!38753 tuple2!39304)) )
))
(declare-fun lt!1304072 () Option!8588)

(assert (=> b!3768200 (= res!1525604 (not ((_ is Some!8587) lt!1304072)))))

(declare-fun maxPrefixZipperSequenceV2!581 (LexerInterface!5777 List!40378 BalanceConc!24294 BalanceConc!24294) Option!8588)

(assert (=> b!3768200 (= lt!1304072 (maxPrefixZipperSequenceV2!581 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun b!3768201 () Bool)

(declare-fun tp!1151198 () Bool)

(declare-fun inv!54078 (Conc!12350) Bool)

(assert (=> b!3768201 (= e!2330680 (and (inv!54078 (c!652752 totalInput!335)) tp!1151198))))

(declare-fun b!3768202 () Bool)

(declare-fun e!2330687 () Bool)

(declare-datatypes ((tuple2!39306 0))(
  ( (tuple2!39307 (_1!22787 BalanceConc!24296) (_2!22787 BalanceConc!24294)) )
))
(declare-fun lt!1304068 () tuple2!39306)

(declare-fun lt!1304079 () BalanceConc!24294)

(assert (=> b!3768202 (= e!2330687 (= lt!1304068 (tuple2!39307 (BalanceConc!24297 Empty!12351) lt!1304079)))))

(declare-fun b!3768203 () Bool)

(declare-fun res!1525598 () Bool)

(assert (=> b!3768203 (=> (not res!1525598) (not e!2330685))))

(declare-fun isEmpty!23641 (List!40378) Bool)

(assert (=> b!3768203 (= res!1525598 (not (isEmpty!23641 rules!1265)))))

(declare-fun b!3768204 () Bool)

(assert (=> b!3768204 (= e!2330679 true)))

(declare-fun lt!1304062 () Bool)

(declare-fun lt!1304085 () List!40377)

(assert (=> b!3768204 (= lt!1304062 (isSuffix!962 lt!1304085 lt!1304070))))

(declare-fun lt!1304064 () List!40377)

(declare-fun ++!10019 (List!40377 List!40377) List!40377)

(assert (=> b!3768204 (isSuffix!962 lt!1304085 (++!10019 lt!1304064 lt!1304085))))

(declare-fun lt!1304067 () Unit!57952)

(assert (=> b!3768204 (= lt!1304067 (lemmaConcatTwoListThenFSndIsSuffix!647 lt!1304064 lt!1304085))))

(declare-fun list!14895 (BalanceConc!24294) List!40377)

(assert (=> b!3768204 (= lt!1304064 (list!14895 lt!1304079))))

(assert (=> b!3768204 e!2330687))

(declare-fun c!652750 () Bool)

(declare-fun lt!1304057 () Option!8588)

(assert (=> b!3768204 (= c!652750 ((_ is Some!8587) lt!1304057))))

(declare-fun lexRec!801 (LexerInterface!5777 List!40378 BalanceConc!24294) tuple2!39306)

(assert (=> b!3768204 (= lt!1304068 (lexRec!801 thiss!11876 rules!1265 lt!1304079))))

(declare-fun maxPrefixZipperSequence!1185 (LexerInterface!5777 List!40378 BalanceConc!24294) Option!8588)

(assert (=> b!3768204 (= lt!1304057 (maxPrefixZipperSequence!1185 thiss!11876 rules!1265 lt!1304079))))

(declare-fun lt!1304073 () BalanceConc!24294)

(declare-fun ++!10020 (BalanceConc!24294 BalanceConc!24294) BalanceConc!24294)

(assert (=> b!3768204 (= lt!1304079 (++!10020 treated!13 lt!1304073))))

(declare-fun lt!1304063 () List!40379)

(declare-fun lt!1304078 () List!40377)

(declare-datatypes ((tuple2!39308 0))(
  ( (tuple2!39309 (_1!22788 List!40379) (_2!22788 List!40377)) )
))
(declare-fun lexList!1551 (LexerInterface!5777 List!40378 List!40377) tuple2!39308)

(assert (=> b!3768204 (= (lexList!1551 thiss!11876 rules!1265 lt!1304078) (tuple2!39309 lt!1304063 Nil!40253))))

(declare-fun lt!1304065 () tuple2!39306)

(declare-fun lt!1304069 () List!40379)

(declare-fun lt!1304086 () Unit!57952)

(declare-fun lemmaLexThenLexPrefix!553 (LexerInterface!5777 List!40378 List!40377 List!40377 List!40379 List!40379 List!40377) Unit!57952)

(assert (=> b!3768204 (= lt!1304086 (lemmaLexThenLexPrefix!553 thiss!11876 rules!1265 lt!1304078 lt!1304085 lt!1304063 lt!1304069 (list!14895 (_2!22787 lt!1304065))))))

(declare-fun list!14896 (BalanceConc!24296) List!40379)

(declare-fun append!1020 (BalanceConc!24296 Token!11514) BalanceConc!24296)

(assert (=> b!3768204 (= lt!1304063 (list!14896 (append!1020 acc!335 (_1!22786 (v!38753 lt!1304072)))))))

(declare-fun lt!1304083 () List!40379)

(declare-fun lt!1304087 () List!40379)

(declare-fun ++!10021 (List!40379 List!40379) List!40379)

(assert (=> b!3768204 (= (++!10021 (++!10021 lt!1304083 lt!1304087) lt!1304069) (++!10021 lt!1304083 (++!10021 lt!1304087 lt!1304069)))))

(declare-fun lt!1304074 () Unit!57952)

(declare-fun lemmaConcatAssociativity!2127 (List!40379 List!40379 List!40379) Unit!57952)

(assert (=> b!3768204 (= lt!1304074 (lemmaConcatAssociativity!2127 lt!1304083 lt!1304087 lt!1304069))))

(assert (=> b!3768204 (= lt!1304069 (list!14896 (_1!22787 lt!1304065)))))

(assert (=> b!3768204 (= lt!1304087 (Cons!40255 (_1!22786 (v!38753 lt!1304072)) Nil!40255))))

(declare-fun lt!1304060 () tuple2!39306)

(declare-fun e!2330688 () tuple2!39306)

(assert (=> b!3768204 (= lt!1304060 e!2330688)))

(declare-fun c!652749 () Bool)

(declare-fun lt!1304081 () Option!8588)

(assert (=> b!3768204 (= c!652749 ((_ is Some!8587) lt!1304081))))

(assert (=> b!3768204 (= lt!1304081 (maxPrefixZipperSequence!1185 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1304084 () List!40377)

(assert (=> b!3768204 (= (++!10019 lt!1304078 lt!1304085) (++!10019 lt!1304061 (++!10019 lt!1304084 lt!1304085)))))

(assert (=> b!3768204 (= lt!1304078 (++!10019 lt!1304061 lt!1304084))))

(declare-fun lt!1304080 () Unit!57952)

(declare-fun lemmaConcatAssociativity!2128 (List!40377 List!40377 List!40377) Unit!57952)

(assert (=> b!3768204 (= lt!1304080 (lemmaConcatAssociativity!2128 lt!1304061 lt!1304084 lt!1304085))))

(assert (=> b!3768204 (= lt!1304085 (list!14895 (_2!22786 (v!38753 lt!1304072))))))

(assert (=> b!3768204 (= lt!1304084 (list!14895 lt!1304073))))

(declare-fun charsOf!4030 (Token!11514) BalanceConc!24294)

(assert (=> b!3768204 (= lt!1304073 (charsOf!4030 (_1!22786 (v!38753 lt!1304072))))))

(assert (=> b!3768204 (= lt!1304065 (lexRec!801 thiss!11876 rules!1265 (_2!22786 (v!38753 lt!1304072))))))

(declare-fun b!3768205 () Bool)

(declare-fun tp!1151196 () Bool)

(assert (=> b!3768205 (= e!2330683 (and (inv!54078 (c!652752 input!678)) tp!1151196))))

(declare-fun b!3768206 () Bool)

(declare-fun res!1525602 () Bool)

(declare-fun e!2330682 () Bool)

(assert (=> b!3768206 (=> (not res!1525602) (not e!2330682))))

(declare-fun lt!1304066 () tuple2!39306)

(declare-fun isEmpty!23642 (List!40377) Bool)

(assert (=> b!3768206 (= res!1525602 (isEmpty!23642 (list!14895 (_2!22787 lt!1304066))))))

(declare-fun e!2330681 () Bool)

(declare-fun tp!1151199 () Bool)

(declare-fun e!2330676 () Bool)

(declare-fun b!3768207 () Bool)

(declare-fun inv!54070 (String!45772) Bool)

(declare-fun inv!54079 (TokenValueInjection!12264) Bool)

(assert (=> b!3768207 (= e!2330681 (and tp!1151199 (inv!54070 (tag!7048 (h!45674 rules!1265))) (inv!54079 (transformation!6188 (h!45674 rules!1265))) e!2330676))))

(declare-fun b!3768208 () Bool)

(declare-fun lt!1304082 () tuple2!39306)

(declare-fun prepend!1320 (BalanceConc!24296 Token!11514) BalanceConc!24296)

(assert (=> b!3768208 (= e!2330688 (tuple2!39307 (prepend!1320 (_1!22787 lt!1304082) (_1!22786 (v!38753 lt!1304081))) (_2!22787 lt!1304082)))))

(assert (=> b!3768208 (= lt!1304082 (lexRec!801 thiss!11876 rules!1265 (_2!22786 (v!38753 lt!1304081))))))

(assert (=> b!3768209 (= e!2330676 (and tp!1151202 tp!1151200))))

(declare-fun b!3768210 () Bool)

(assert (=> b!3768210 (= e!2330682 e!2330675)))

(declare-fun res!1525599 () Bool)

(assert (=> b!3768210 (=> (not res!1525599) (not e!2330675))))

(declare-fun lt!1304058 () tuple2!39306)

(declare-fun ++!10022 (BalanceConc!24296 BalanceConc!24296) BalanceConc!24296)

(assert (=> b!3768210 (= res!1525599 (= (list!14896 (_1!22787 lt!1304058)) (list!14896 (++!10022 acc!335 (_1!22787 lt!1304060)))))))

(assert (=> b!3768210 (= lt!1304060 (lexRec!801 thiss!11876 rules!1265 input!678))))

(assert (=> b!3768210 (= lt!1304058 (lexRec!801 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3768211 () Bool)

(declare-fun e!2330686 () Bool)

(assert (=> b!3768211 (= e!2330685 e!2330686)))

(declare-fun res!1525603 () Bool)

(assert (=> b!3768211 (=> (not res!1525603) (not e!2330686))))

(assert (=> b!3768211 (= res!1525603 (= lt!1304070 lt!1304075))))

(assert (=> b!3768211 (= lt!1304075 (++!10019 lt!1304061 lt!1304059))))

(assert (=> b!3768211 (= lt!1304070 (list!14895 totalInput!335))))

(assert (=> b!3768211 (= lt!1304059 (list!14895 input!678))))

(assert (=> b!3768211 (= lt!1304061 (list!14895 treated!13))))

(declare-fun lt!1304076 () tuple2!39306)

(declare-fun b!3768212 () Bool)

(assert (=> b!3768212 (= e!2330687 (= lt!1304068 (tuple2!39307 (prepend!1320 (_1!22787 lt!1304076) (_1!22786 (v!38753 lt!1304057))) (_2!22787 lt!1304076))))))

(assert (=> b!3768212 (= lt!1304076 (lexRec!801 thiss!11876 rules!1265 (_2!22786 (v!38753 lt!1304057))))))

(declare-fun b!3768213 () Bool)

(assert (=> b!3768213 (= e!2330688 (tuple2!39307 (BalanceConc!24297 Empty!12351) input!678))))

(declare-fun b!3768214 () Bool)

(declare-fun tp!1151195 () Bool)

(declare-fun inv!54080 (Conc!12351) Bool)

(assert (=> b!3768214 (= e!2330673 (and (inv!54080 (c!652753 acc!335)) tp!1151195))))

(declare-fun b!3768215 () Bool)

(declare-fun tp!1151201 () Bool)

(assert (=> b!3768215 (= e!2330684 (and (inv!54078 (c!652752 treated!13)) tp!1151201))))

(declare-fun b!3768216 () Bool)

(declare-fun res!1525606 () Bool)

(assert (=> b!3768216 (=> (not res!1525606) (not e!2330675))))

(assert (=> b!3768216 (= res!1525606 (= (list!14895 (_2!22787 lt!1304058)) (list!14895 (_2!22787 lt!1304060))))))

(declare-fun b!3768217 () Bool)

(declare-fun tp!1151197 () Bool)

(assert (=> b!3768217 (= e!2330677 (and e!2330681 tp!1151197))))

(declare-fun b!3768218 () Bool)

(assert (=> b!3768218 (= e!2330686 e!2330682)))

(declare-fun res!1525600 () Bool)

(assert (=> b!3768218 (=> (not res!1525600) (not e!2330682))))

(declare-fun lt!1304071 () List!40379)

(assert (=> b!3768218 (= res!1525600 (= lt!1304071 lt!1304083))))

(assert (=> b!3768218 (= lt!1304083 (list!14896 acc!335))))

(assert (=> b!3768218 (= lt!1304071 (list!14896 (_1!22787 lt!1304066)))))

(assert (=> b!3768218 (= lt!1304066 (lexRec!801 thiss!11876 rules!1265 treated!13))))

(assert (= (and start!353968 res!1525601) b!3768203))

(assert (= (and b!3768203 res!1525598) b!3768198))

(assert (= (and b!3768198 res!1525597) b!3768211))

(assert (= (and b!3768211 res!1525603) b!3768218))

(assert (= (and b!3768218 res!1525600) b!3768206))

(assert (= (and b!3768206 res!1525602) b!3768210))

(assert (= (and b!3768210 res!1525599) b!3768216))

(assert (= (and b!3768216 res!1525606) b!3768199))

(assert (= (and b!3768199 (not res!1525605)) b!3768200))

(assert (= (and b!3768200 (not res!1525604)) b!3768204))

(assert (= (and b!3768204 c!652749) b!3768208))

(assert (= (and b!3768204 (not c!652749)) b!3768213))

(assert (= (and b!3768204 c!652750) b!3768212))

(assert (= (and b!3768204 (not c!652750)) b!3768202))

(assert (= start!353968 b!3768205))

(assert (= start!353968 b!3768214))

(assert (= start!353968 b!3768215))

(assert (= b!3768207 b!3768209))

(assert (= b!3768217 b!3768207))

(assert (= (and start!353968 ((_ is Cons!40254) rules!1265)) b!3768217))

(assert (= start!353968 b!3768201))

(declare-fun m!4265023 () Bool)

(assert (=> b!3768200 m!4265023))

(declare-fun m!4265025 () Bool)

(assert (=> b!3768210 m!4265025))

(declare-fun m!4265027 () Bool)

(assert (=> b!3768210 m!4265027))

(declare-fun m!4265029 () Bool)

(assert (=> b!3768210 m!4265029))

(declare-fun m!4265031 () Bool)

(assert (=> b!3768210 m!4265031))

(assert (=> b!3768210 m!4265025))

(declare-fun m!4265033 () Bool)

(assert (=> b!3768210 m!4265033))

(declare-fun m!4265035 () Bool)

(assert (=> b!3768208 m!4265035))

(declare-fun m!4265037 () Bool)

(assert (=> b!3768208 m!4265037))

(declare-fun m!4265039 () Bool)

(assert (=> b!3768211 m!4265039))

(declare-fun m!4265041 () Bool)

(assert (=> b!3768211 m!4265041))

(declare-fun m!4265043 () Bool)

(assert (=> b!3768211 m!4265043))

(declare-fun m!4265045 () Bool)

(assert (=> b!3768211 m!4265045))

(declare-fun m!4265047 () Bool)

(assert (=> b!3768199 m!4265047))

(declare-fun m!4265049 () Bool)

(assert (=> b!3768199 m!4265049))

(declare-fun m!4265051 () Bool)

(assert (=> b!3768199 m!4265051))

(declare-fun m!4265053 () Bool)

(assert (=> b!3768203 m!4265053))

(declare-fun m!4265055 () Bool)

(assert (=> b!3768207 m!4265055))

(declare-fun m!4265057 () Bool)

(assert (=> b!3768207 m!4265057))

(declare-fun m!4265059 () Bool)

(assert (=> start!353968 m!4265059))

(declare-fun m!4265061 () Bool)

(assert (=> start!353968 m!4265061))

(declare-fun m!4265063 () Bool)

(assert (=> start!353968 m!4265063))

(declare-fun m!4265065 () Bool)

(assert (=> start!353968 m!4265065))

(declare-fun m!4265067 () Bool)

(assert (=> b!3768198 m!4265067))

(declare-fun m!4265069 () Bool)

(assert (=> b!3768214 m!4265069))

(declare-fun m!4265071 () Bool)

(assert (=> b!3768212 m!4265071))

(declare-fun m!4265073 () Bool)

(assert (=> b!3768212 m!4265073))

(declare-fun m!4265075 () Bool)

(assert (=> b!3768201 m!4265075))

(declare-fun m!4265077 () Bool)

(assert (=> b!3768218 m!4265077))

(declare-fun m!4265079 () Bool)

(assert (=> b!3768218 m!4265079))

(declare-fun m!4265081 () Bool)

(assert (=> b!3768218 m!4265081))

(declare-fun m!4265083 () Bool)

(assert (=> b!3768205 m!4265083))

(declare-fun m!4265085 () Bool)

(assert (=> b!3768206 m!4265085))

(assert (=> b!3768206 m!4265085))

(declare-fun m!4265087 () Bool)

(assert (=> b!3768206 m!4265087))

(declare-fun m!4265089 () Bool)

(assert (=> b!3768216 m!4265089))

(declare-fun m!4265091 () Bool)

(assert (=> b!3768216 m!4265091))

(declare-fun m!4265093 () Bool)

(assert (=> b!3768204 m!4265093))

(declare-fun m!4265095 () Bool)

(assert (=> b!3768204 m!4265095))

(declare-fun m!4265097 () Bool)

(assert (=> b!3768204 m!4265097))

(declare-fun m!4265099 () Bool)

(assert (=> b!3768204 m!4265099))

(declare-fun m!4265101 () Bool)

(assert (=> b!3768204 m!4265101))

(declare-fun m!4265103 () Bool)

(assert (=> b!3768204 m!4265103))

(declare-fun m!4265105 () Bool)

(assert (=> b!3768204 m!4265105))

(declare-fun m!4265107 () Bool)

(assert (=> b!3768204 m!4265107))

(declare-fun m!4265109 () Bool)

(assert (=> b!3768204 m!4265109))

(assert (=> b!3768204 m!4265103))

(declare-fun m!4265111 () Bool)

(assert (=> b!3768204 m!4265111))

(declare-fun m!4265113 () Bool)

(assert (=> b!3768204 m!4265113))

(declare-fun m!4265115 () Bool)

(assert (=> b!3768204 m!4265115))

(assert (=> b!3768204 m!4265095))

(assert (=> b!3768204 m!4265109))

(declare-fun m!4265117 () Bool)

(assert (=> b!3768204 m!4265117))

(declare-fun m!4265119 () Bool)

(assert (=> b!3768204 m!4265119))

(declare-fun m!4265121 () Bool)

(assert (=> b!3768204 m!4265121))

(declare-fun m!4265123 () Bool)

(assert (=> b!3768204 m!4265123))

(declare-fun m!4265125 () Bool)

(assert (=> b!3768204 m!4265125))

(declare-fun m!4265127 () Bool)

(assert (=> b!3768204 m!4265127))

(assert (=> b!3768204 m!4265121))

(declare-fun m!4265129 () Bool)

(assert (=> b!3768204 m!4265129))

(assert (=> b!3768204 m!4265099))

(declare-fun m!4265131 () Bool)

(assert (=> b!3768204 m!4265131))

(declare-fun m!4265133 () Bool)

(assert (=> b!3768204 m!4265133))

(declare-fun m!4265135 () Bool)

(assert (=> b!3768204 m!4265135))

(declare-fun m!4265137 () Bool)

(assert (=> b!3768204 m!4265137))

(declare-fun m!4265139 () Bool)

(assert (=> b!3768204 m!4265139))

(assert (=> b!3768204 m!4265119))

(declare-fun m!4265141 () Bool)

(assert (=> b!3768204 m!4265141))

(declare-fun m!4265143 () Bool)

(assert (=> b!3768204 m!4265143))

(declare-fun m!4265145 () Bool)

(assert (=> b!3768204 m!4265145))

(declare-fun m!4265147 () Bool)

(assert (=> b!3768204 m!4265147))

(declare-fun m!4265149 () Bool)

(assert (=> b!3768204 m!4265149))

(declare-fun m!4265151 () Bool)

(assert (=> b!3768215 m!4265151))

(check-sat (not b_next!101687) (not b!3768214) (not b!3768208) (not b!3768211) b_and!279795 (not b!3768206) (not b!3768217) (not b!3768212) (not b!3768201) (not b!3768215) (not start!353968) (not b!3768207) b_and!279797 (not b!3768216) (not b!3768200) (not b!3768205) (not b_next!101685) (not b!3768204) (not b!3768218) (not b!3768210) (not b!3768203) (not b!3768199) (not b!3768198))
(check-sat b_and!279795 b_and!279797 (not b_next!101685) (not b_next!101687))
