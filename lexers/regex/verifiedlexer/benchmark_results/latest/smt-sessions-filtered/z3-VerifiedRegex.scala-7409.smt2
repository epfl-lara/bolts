; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394058 () Bool)

(assert start!394058)

(declare-fun b!4143957 () Bool)

(declare-fun b_free!118123 () Bool)

(declare-fun b_next!118827 () Bool)

(assert (=> b!4143957 (= b_free!118123 (not b_next!118827))))

(declare-fun tp!1263110 () Bool)

(declare-fun b_and!321945 () Bool)

(assert (=> b!4143957 (= tp!1263110 b_and!321945)))

(declare-fun b_free!118125 () Bool)

(declare-fun b_next!118829 () Bool)

(assert (=> b!4143957 (= b_free!118125 (not b_next!118829))))

(declare-fun tp!1263101 () Bool)

(declare-fun b_and!321947 () Bool)

(assert (=> b!4143957 (= tp!1263101 b_and!321947)))

(declare-fun b!4143952 () Bool)

(declare-fun b_free!118127 () Bool)

(declare-fun b_next!118831 () Bool)

(assert (=> b!4143952 (= b_free!118127 (not b_next!118831))))

(declare-fun tp!1263099 () Bool)

(declare-fun b_and!321949 () Bool)

(assert (=> b!4143952 (= tp!1263099 b_and!321949)))

(declare-fun b_free!118129 () Bool)

(declare-fun b_next!118833 () Bool)

(assert (=> b!4143952 (= b_free!118129 (not b_next!118833))))

(declare-fun tp!1263109 () Bool)

(declare-fun b_and!321951 () Bool)

(assert (=> b!4143952 (= tp!1263109 b_and!321951)))

(declare-fun b!4143944 () Bool)

(declare-fun b_free!118131 () Bool)

(declare-fun b_next!118835 () Bool)

(assert (=> b!4143944 (= b_free!118131 (not b_next!118835))))

(declare-fun tp!1263100 () Bool)

(declare-fun b_and!321953 () Bool)

(assert (=> b!4143944 (= tp!1263100 b_and!321953)))

(declare-fun b_free!118133 () Bool)

(declare-fun b_next!118837 () Bool)

(assert (=> b!4143944 (= b_free!118133 (not b_next!118837))))

(declare-fun tp!1263107 () Bool)

(declare-fun b_and!321955 () Bool)

(assert (=> b!4143944 (= tp!1263107 b_and!321955)))

(declare-fun b!4143939 () Bool)

(declare-fun res!1695844 () Bool)

(declare-fun e!2571192 () Bool)

(assert (=> b!4143939 (=> (not res!1695844) (not e!2571192))))

(declare-datatypes ((List!45083 0))(
  ( (Nil!44959) (Cons!44959 (h!50379 (_ BitVec 16)) (t!342602 List!45083)) )
))
(declare-datatypes ((TokenValue!7620 0))(
  ( (FloatLiteralValue!15240 (text!53785 List!45083)) (TokenValueExt!7619 (__x!27457 Int)) (Broken!38100 (value!231143 List!45083)) (Object!7743) (End!7620) (Def!7620) (Underscore!7620) (Match!7620) (Else!7620) (Error!7620) (Case!7620) (If!7620) (Extends!7620) (Abstract!7620) (Class!7620) (Val!7620) (DelimiterValue!15240 (del!7680 List!45083)) (KeywordValue!7626 (value!231144 List!45083)) (CommentValue!15240 (value!231145 List!45083)) (WhitespaceValue!15240 (value!231146 List!45083)) (IndentationValue!7620 (value!231147 List!45083)) (String!51849) (Int32!7620) (Broken!38101 (value!231148 List!45083)) (Boolean!7621) (Unit!64252) (OperatorValue!7623 (op!7680 List!45083)) (IdentifierValue!15240 (value!231149 List!45083)) (IdentifierValue!15241 (value!231150 List!45083)) (WhitespaceValue!15241 (value!231151 List!45083)) (True!15240) (False!15240) (Broken!38102 (value!231152 List!45083)) (Broken!38103 (value!231153 List!45083)) (True!15241) (RightBrace!7620) (RightBracket!7620) (Colon!7620) (Null!7620) (Comma!7620) (LeftBracket!7620) (False!15241) (LeftBrace!7620) (ImaginaryLiteralValue!7620 (text!53786 List!45083)) (StringLiteralValue!22860 (value!231154 List!45083)) (EOFValue!7620 (value!231155 List!45083)) (IdentValue!7620 (value!231156 List!45083)) (DelimiterValue!15241 (value!231157 List!45083)) (DedentValue!7620 (value!231158 List!45083)) (NewLineValue!7620 (value!231159 List!45083)) (IntegerValue!22860 (value!231160 (_ BitVec 32)) (text!53787 List!45083)) (IntegerValue!22861 (value!231161 Int) (text!53788 List!45083)) (Times!7620) (Or!7620) (Equal!7620) (Minus!7620) (Broken!38104 (value!231162 List!45083)) (And!7620) (Div!7620) (LessEqual!7620) (Mod!7620) (Concat!19915) (Not!7620) (Plus!7620) (SpaceValue!7620 (value!231163 List!45083)) (IntegerValue!22862 (value!231164 Int) (text!53789 List!45083)) (StringLiteralValue!22861 (text!53790 List!45083)) (FloatLiteralValue!15241 (text!53791 List!45083)) (BytesLiteralValue!7620 (value!231165 List!45083)) (CommentValue!15241 (value!231166 List!45083)) (StringLiteralValue!22862 (value!231167 List!45083)) (ErrorTokenValue!7620 (msg!7681 List!45083)) )
))
(declare-datatypes ((C!24776 0))(
  ( (C!24777 (val!14498 Int)) )
))
(declare-datatypes ((List!45084 0))(
  ( (Nil!44960) (Cons!44960 (h!50380 C!24776) (t!342603 List!45084)) )
))
(declare-datatypes ((IArray!27207 0))(
  ( (IArray!27208 (innerList!13661 List!45084)) )
))
(declare-datatypes ((Conc!13601 0))(
  ( (Node!13601 (left!33666 Conc!13601) (right!33996 Conc!13601) (csize!27432 Int) (cheight!13812 Int)) (Leaf!21011 (xs!16907 IArray!27207) (csize!27433 Int)) (Empty!13601) )
))
(declare-datatypes ((BalanceConc!26796 0))(
  ( (BalanceConc!26797 (c!710182 Conc!13601)) )
))
(declare-datatypes ((Regex!12295 0))(
  ( (ElementMatch!12295 (c!710183 C!24776)) (Concat!19916 (regOne!25102 Regex!12295) (regTwo!25102 Regex!12295)) (EmptyExpr!12295) (Star!12295 (reg!12624 Regex!12295)) (EmptyLang!12295) (Union!12295 (regOne!25103 Regex!12295) (regTwo!25103 Regex!12295)) )
))
(declare-datatypes ((String!51850 0))(
  ( (String!51851 (value!231168 String)) )
))
(declare-datatypes ((TokenValueInjection!14668 0))(
  ( (TokenValueInjection!14669 (toValue!10054 Int) (toChars!9913 Int)) )
))
(declare-datatypes ((Rule!14580 0))(
  ( (Rule!14581 (regex!7390 Regex!12295) (tag!8250 String!51850) (isSeparator!7390 Bool) (transformation!7390 TokenValueInjection!14668)) )
))
(declare-datatypes ((List!45085 0))(
  ( (Nil!44961) (Cons!44961 (h!50381 Rule!14580) (t!342604 List!45085)) )
))
(declare-fun rules!3756 () List!45085)

(declare-fun isEmpty!26823 (List!45085) Bool)

(assert (=> b!4143939 (= res!1695844 (not (isEmpty!26823 rules!3756)))))

(declare-fun b!4143940 () Bool)

(declare-fun res!1695837 () Bool)

(assert (=> b!4143940 (=> (not res!1695837) (not e!2571192))))

(declare-datatypes ((LexerInterface!6979 0))(
  ( (LexerInterfaceExt!6976 (__x!27458 Int)) (Lexer!6977) )
))
(declare-fun thiss!25645 () LexerInterface!6979)

(declare-fun rulesInvariant!6276 (LexerInterface!6979 List!45085) Bool)

(assert (=> b!4143940 (= res!1695837 (rulesInvariant!6276 thiss!25645 rules!3756))))

(declare-fun b!4143941 () Bool)

(declare-fun e!2571191 () Bool)

(declare-datatypes ((Token!13710 0))(
  ( (Token!13711 (value!231169 TokenValue!7620) (rule!10508 Rule!14580) (size!33318 Int) (originalCharacters!7886 List!45084)) )
))
(declare-datatypes ((tuple2!43338 0))(
  ( (tuple2!43339 (_1!24803 Token!13710) (_2!24803 List!45084)) )
))
(declare-datatypes ((Option!9696 0))(
  ( (None!9695) (Some!9695 (v!40341 tuple2!43338)) )
))
(declare-fun lt!1478017 () Option!9696)

(declare-fun lt!1478013 () tuple2!43338)

(assert (=> b!4143941 (= e!2571191 (= lt!1478017 (Some!9695 (tuple2!43339 (_1!24803 lt!1478013) (_2!24803 lt!1478013)))))))

(declare-fun input!3238 () List!45084)

(declare-fun isPrefix!4325 (List!45084 List!45084) Bool)

(assert (=> b!4143941 (isPrefix!4325 input!3238 input!3238)))

(declare-datatypes ((Unit!64253 0))(
  ( (Unit!64254) )
))
(declare-fun lt!1478016 () Unit!64253)

(declare-fun lemmaIsPrefixRefl!2794 (List!45084 List!45084) Unit!64253)

(assert (=> b!4143941 (= lt!1478016 (lemmaIsPrefixRefl!2794 input!3238 input!3238))))

(declare-fun b!4143942 () Bool)

(declare-fun e!2571178 () Bool)

(declare-fun e!2571180 () Bool)

(assert (=> b!4143942 (= e!2571178 e!2571180)))

(declare-fun res!1695838 () Bool)

(assert (=> b!4143942 (=> res!1695838 e!2571180)))

(declare-fun isEmpty!26824 (Option!9696) Bool)

(assert (=> b!4143942 (= res!1695838 (isEmpty!26824 lt!1478017))))

(declare-fun rBis!149 () Rule!14580)

(declare-fun maxPrefixOneRule!3108 (LexerInterface!6979 Rule!14580 List!45084) Option!9696)

(assert (=> b!4143942 (= lt!1478017 (maxPrefixOneRule!3108 thiss!25645 rBis!149 input!3238))))

(declare-fun r!4008 () Rule!14580)

(assert (=> b!4143942 (not (= rBis!149 r!4008))))

(declare-fun lt!1478024 () Unit!64253)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!88 (LexerInterface!6979 List!45085 Rule!14580 Rule!14580) Unit!64253)

(assert (=> b!4143942 (= lt!1478024 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!88 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9070 (List!45085 Rule!14580) Bool)

(declare-fun tail!6569 (List!45085) List!45085)

(assert (=> b!4143942 (contains!9070 (tail!6569 rules!3756) r!4008)))

(declare-fun lt!1478014 () Unit!64253)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!94 (List!45085 Rule!14580 Rule!14580) Unit!64253)

(assert (=> b!4143942 (= lt!1478014 (lemmaGetIndexBiggerAndHeadEqThenTailContains!94 rules!3756 rBis!149 r!4008))))

(declare-fun tp!1263104 () Bool)

(declare-fun e!2571184 () Bool)

(declare-fun b!4143943 () Bool)

(declare-fun e!2571189 () Bool)

(declare-fun inv!59566 (String!51850) Bool)

(declare-fun inv!59568 (TokenValueInjection!14668) Bool)

(assert (=> b!4143943 (= e!2571189 (and tp!1263104 (inv!59566 (tag!8250 r!4008)) (inv!59568 (transformation!7390 r!4008)) e!2571184))))

(declare-fun e!2571186 () Bool)

(assert (=> b!4143944 (= e!2571186 (and tp!1263100 tp!1263107))))

(declare-fun b!4143945 () Bool)

(declare-fun res!1695829 () Bool)

(assert (=> b!4143945 (=> res!1695829 e!2571191)))

(declare-fun lt!1478021 () Int)

(declare-fun size!33319 (List!45084) Int)

(assert (=> b!4143945 (= res!1695829 (> lt!1478021 (size!33319 input!3238)))))

(declare-fun b!4143946 () Bool)

(declare-fun res!1695836 () Bool)

(assert (=> b!4143946 (=> res!1695836 e!2571191)))

(declare-fun lt!1478019 () List!45084)

(declare-fun matchR!6124 (Regex!12295 List!45084) Bool)

(assert (=> b!4143946 (= res!1695836 (not (matchR!6124 (regex!7390 rBis!149) lt!1478019)))))

(declare-fun b!4143947 () Bool)

(declare-fun res!1695842 () Bool)

(assert (=> b!4143947 (=> res!1695842 e!2571191)))

(declare-fun validRegex!5541 (Regex!12295) Bool)

(assert (=> b!4143947 (= res!1695842 (not (validRegex!5541 (regex!7390 rBis!149))))))

(declare-fun b!4143948 () Bool)

(declare-fun res!1695840 () Bool)

(assert (=> b!4143948 (=> res!1695840 e!2571191)))

(assert (=> b!4143948 (= res!1695840 (<= lt!1478021 (size!33319 lt!1478019)))))

(declare-fun b!4143949 () Bool)

(declare-fun e!2571176 () Bool)

(declare-fun tp_is_empty!21513 () Bool)

(declare-fun tp!1263106 () Bool)

(assert (=> b!4143949 (= e!2571176 (and tp_is_empty!21513 tp!1263106))))

(declare-fun b!4143950 () Bool)

(declare-fun res!1695835 () Bool)

(assert (=> b!4143950 (=> res!1695835 e!2571191)))

(assert (=> b!4143950 (= res!1695835 (not (isPrefix!4325 lt!1478019 input!3238)))))

(declare-fun e!2571190 () Bool)

(declare-fun b!4143951 () Bool)

(declare-fun e!2571181 () Bool)

(declare-fun tp!1263108 () Bool)

(assert (=> b!4143951 (= e!2571181 (and tp!1263108 (inv!59566 (tag!8250 (h!50381 rules!3756))) (inv!59568 (transformation!7390 (h!50381 rules!3756))) e!2571190))))

(declare-fun b!4143938 () Bool)

(declare-fun res!1695841 () Bool)

(assert (=> b!4143938 (=> (not res!1695841) (not e!2571192))))

(assert (=> b!4143938 (= res!1695841 (contains!9070 rules!3756 rBis!149))))

(declare-fun res!1695834 () Bool)

(assert (=> start!394058 (=> (not res!1695834) (not e!2571192))))

(get-info :version)

(assert (=> start!394058 (= res!1695834 ((_ is Lexer!6977) thiss!25645))))

(assert (=> start!394058 e!2571192))

(declare-fun e!2571185 () Bool)

(assert (=> start!394058 e!2571185))

(assert (=> start!394058 e!2571176))

(assert (=> start!394058 true))

(assert (=> start!394058 e!2571189))

(declare-fun e!2571177 () Bool)

(assert (=> start!394058 e!2571177))

(declare-fun e!2571182 () Bool)

(assert (=> start!394058 e!2571182))

(assert (=> b!4143952 (= e!2571190 (and tp!1263099 tp!1263109))))

(declare-fun b!4143953 () Bool)

(declare-fun res!1695827 () Bool)

(declare-fun e!2571188 () Bool)

(assert (=> b!4143953 (=> (not res!1695827) (not e!2571188))))

(declare-fun ruleValid!3196 (LexerInterface!6979 Rule!14580) Bool)

(assert (=> b!4143953 (= res!1695827 (ruleValid!3196 thiss!25645 r!4008))))

(declare-fun b!4143954 () Bool)

(declare-fun res!1695828 () Bool)

(assert (=> b!4143954 (=> (not res!1695828) (not e!2571192))))

(declare-fun p!2912 () List!45084)

(declare-fun isEmpty!26825 (List!45084) Bool)

(assert (=> b!4143954 (= res!1695828 (not (isEmpty!26825 p!2912)))))

(declare-fun b!4143955 () Bool)

(declare-fun e!2571187 () Bool)

(assert (=> b!4143955 (= e!2571187 e!2571191)))

(declare-fun res!1695843 () Bool)

(assert (=> b!4143955 (=> res!1695843 e!2571191)))

(declare-fun lt!1478018 () List!45084)

(assert (=> b!4143955 (= res!1695843 (not (= lt!1478018 input!3238)))))

(assert (=> b!4143955 (isPrefix!4325 lt!1478019 lt!1478018)))

(declare-fun ++!11630 (List!45084 List!45084) List!45084)

(assert (=> b!4143955 (= lt!1478018 (++!11630 lt!1478019 (_2!24803 lt!1478013)))))

(declare-fun lt!1478025 () Unit!64253)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2954 (List!45084 List!45084) Unit!64253)

(assert (=> b!4143955 (= lt!1478025 (lemmaConcatTwoListThenFirstIsPrefix!2954 lt!1478019 (_2!24803 lt!1478013)))))

(declare-fun lt!1478011 () BalanceConc!26796)

(declare-fun list!16471 (BalanceConc!26796) List!45084)

(assert (=> b!4143955 (= lt!1478019 (list!16471 lt!1478011))))

(declare-fun b!4143956 () Bool)

(declare-fun tp!1263105 () Bool)

(assert (=> b!4143956 (= e!2571177 (and tp_is_empty!21513 tp!1263105))))

(assert (=> b!4143957 (= e!2571184 (and tp!1263110 tp!1263101))))

(declare-fun b!4143958 () Bool)

(assert (=> b!4143958 (= e!2571188 (not e!2571178))))

(declare-fun res!1695839 () Bool)

(assert (=> b!4143958 (=> res!1695839 e!2571178)))

(assert (=> b!4143958 (= res!1695839 (or (not ((_ is Cons!44961) rules!3756)) (not (= (h!50381 rules!3756) rBis!149))))))

(declare-fun lt!1478015 () Unit!64253)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2236 (LexerInterface!6979 Rule!14580 List!45085) Unit!64253)

(assert (=> b!4143958 (= lt!1478015 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2236 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4143958 (ruleValid!3196 thiss!25645 rBis!149)))

(declare-fun lt!1478022 () Unit!64253)

(assert (=> b!4143958 (= lt!1478022 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2236 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4143959 () Bool)

(assert (=> b!4143959 (= e!2571192 e!2571188)))

(declare-fun res!1695833 () Bool)

(assert (=> b!4143959 (=> (not res!1695833) (not e!2571188))))

(declare-fun lt!1478012 () TokenValue!7620)

(declare-fun maxPrefix!4169 (LexerInterface!6979 List!45085 List!45084) Option!9696)

(declare-fun getSuffix!2652 (List!45084 List!45084) List!45084)

(assert (=> b!4143959 (= res!1695833 (= (maxPrefix!4169 thiss!25645 rules!3756 input!3238) (Some!9695 (tuple2!43339 (Token!13711 lt!1478012 r!4008 lt!1478021 p!2912) (getSuffix!2652 input!3238 p!2912)))))))

(assert (=> b!4143959 (= lt!1478021 (size!33319 p!2912))))

(declare-fun lt!1478020 () BalanceConc!26796)

(declare-fun apply!10463 (TokenValueInjection!14668 BalanceConc!26796) TokenValue!7620)

(assert (=> b!4143959 (= lt!1478012 (apply!10463 (transformation!7390 r!4008) lt!1478020))))

(declare-fun lt!1478026 () Unit!64253)

(declare-fun lemmaSemiInverse!2248 (TokenValueInjection!14668 BalanceConc!26796) Unit!64253)

(assert (=> b!4143959 (= lt!1478026 (lemmaSemiInverse!2248 (transformation!7390 r!4008) lt!1478020))))

(declare-fun seqFromList!5507 (List!45084) BalanceConc!26796)

(assert (=> b!4143959 (= lt!1478020 (seqFromList!5507 p!2912))))

(declare-fun b!4143960 () Bool)

(declare-fun res!1695831 () Bool)

(assert (=> b!4143960 (=> (not res!1695831) (not e!2571188))))

(declare-fun getIndex!736 (List!45085 Rule!14580) Int)

(assert (=> b!4143960 (= res!1695831 (< (getIndex!736 rules!3756 rBis!149) (getIndex!736 rules!3756 r!4008)))))

(declare-fun b!4143961 () Bool)

(declare-fun res!1695832 () Bool)

(assert (=> b!4143961 (=> (not res!1695832) (not e!2571192))))

(assert (=> b!4143961 (= res!1695832 (contains!9070 rules!3756 r!4008))))

(declare-fun b!4143962 () Bool)

(declare-fun res!1695830 () Bool)

(assert (=> b!4143962 (=> (not res!1695830) (not e!2571192))))

(assert (=> b!4143962 (= res!1695830 (isPrefix!4325 p!2912 input!3238))))

(declare-fun b!4143963 () Bool)

(declare-fun tp!1263103 () Bool)

(assert (=> b!4143963 (= e!2571185 (and e!2571181 tp!1263103))))

(declare-fun b!4143964 () Bool)

(declare-fun tp!1263102 () Bool)

(assert (=> b!4143964 (= e!2571182 (and tp!1263102 (inv!59566 (tag!8250 rBis!149)) (inv!59568 (transformation!7390 rBis!149)) e!2571186))))

(declare-fun b!4143965 () Bool)

(declare-fun res!1695826 () Bool)

(assert (=> b!4143965 (=> (not res!1695826) (not e!2571188))))

(assert (=> b!4143965 (= res!1695826 (matchR!6124 (regex!7390 r!4008) p!2912))))

(declare-fun b!4143966 () Bool)

(assert (=> b!4143966 (= e!2571180 e!2571187)))

(declare-fun res!1695845 () Bool)

(assert (=> b!4143966 (=> res!1695845 e!2571187)))

(declare-fun lt!1478023 () Int)

(assert (=> b!4143966 (= res!1695845 (or (> lt!1478023 lt!1478021) (>= lt!1478023 lt!1478021)))))

(declare-fun size!33320 (BalanceConc!26796) Int)

(assert (=> b!4143966 (= lt!1478023 (size!33320 lt!1478011))))

(declare-fun charsOf!4989 (Token!13710) BalanceConc!26796)

(assert (=> b!4143966 (= lt!1478011 (charsOf!4989 (_1!24803 lt!1478013)))))

(declare-fun get!14680 (Option!9696) tuple2!43338)

(assert (=> b!4143966 (= lt!1478013 (get!14680 lt!1478017))))

(assert (= (and start!394058 res!1695834) b!4143962))

(assert (= (and b!4143962 res!1695830) b!4143939))

(assert (= (and b!4143939 res!1695844) b!4143940))

(assert (= (and b!4143940 res!1695837) b!4143961))

(assert (= (and b!4143961 res!1695832) b!4143938))

(assert (= (and b!4143938 res!1695841) b!4143954))

(assert (= (and b!4143954 res!1695828) b!4143959))

(assert (= (and b!4143959 res!1695833) b!4143965))

(assert (= (and b!4143965 res!1695826) b!4143960))

(assert (= (and b!4143960 res!1695831) b!4143953))

(assert (= (and b!4143953 res!1695827) b!4143958))

(assert (= (and b!4143958 (not res!1695839)) b!4143942))

(assert (= (and b!4143942 (not res!1695838)) b!4143966))

(assert (= (and b!4143966 (not res!1695845)) b!4143955))

(assert (= (and b!4143955 (not res!1695843)) b!4143950))

(assert (= (and b!4143950 (not res!1695835)) b!4143945))

(assert (= (and b!4143945 (not res!1695829)) b!4143948))

(assert (= (and b!4143948 (not res!1695840)) b!4143947))

(assert (= (and b!4143947 (not res!1695842)) b!4143946))

(assert (= (and b!4143946 (not res!1695836)) b!4143941))

(assert (= b!4143951 b!4143952))

(assert (= b!4143963 b!4143951))

(assert (= (and start!394058 ((_ is Cons!44961) rules!3756)) b!4143963))

(assert (= (and start!394058 ((_ is Cons!44960) p!2912)) b!4143949))

(assert (= b!4143943 b!4143957))

(assert (= start!394058 b!4143943))

(assert (= (and start!394058 ((_ is Cons!44960) input!3238)) b!4143956))

(assert (= b!4143964 b!4143944))

(assert (= start!394058 b!4143964))

(declare-fun m!4740139 () Bool)

(assert (=> b!4143961 m!4740139))

(declare-fun m!4740141 () Bool)

(assert (=> b!4143942 m!4740141))

(declare-fun m!4740143 () Bool)

(assert (=> b!4143942 m!4740143))

(declare-fun m!4740145 () Bool)

(assert (=> b!4143942 m!4740145))

(declare-fun m!4740147 () Bool)

(assert (=> b!4143942 m!4740147))

(declare-fun m!4740149 () Bool)

(assert (=> b!4143942 m!4740149))

(assert (=> b!4143942 m!4740143))

(declare-fun m!4740151 () Bool)

(assert (=> b!4143942 m!4740151))

(declare-fun m!4740153 () Bool)

(assert (=> b!4143951 m!4740153))

(declare-fun m!4740155 () Bool)

(assert (=> b!4143951 m!4740155))

(declare-fun m!4740157 () Bool)

(assert (=> b!4143938 m!4740157))

(declare-fun m!4740159 () Bool)

(assert (=> b!4143960 m!4740159))

(declare-fun m!4740161 () Bool)

(assert (=> b!4143960 m!4740161))

(declare-fun m!4740163 () Bool)

(assert (=> b!4143945 m!4740163))

(declare-fun m!4740165 () Bool)

(assert (=> b!4143947 m!4740165))

(declare-fun m!4740167 () Bool)

(assert (=> b!4143966 m!4740167))

(declare-fun m!4740169 () Bool)

(assert (=> b!4143966 m!4740169))

(declare-fun m!4740171 () Bool)

(assert (=> b!4143966 m!4740171))

(declare-fun m!4740173 () Bool)

(assert (=> b!4143939 m!4740173))

(declare-fun m!4740175 () Bool)

(assert (=> b!4143959 m!4740175))

(declare-fun m!4740177 () Bool)

(assert (=> b!4143959 m!4740177))

(declare-fun m!4740179 () Bool)

(assert (=> b!4143959 m!4740179))

(declare-fun m!4740181 () Bool)

(assert (=> b!4143959 m!4740181))

(declare-fun m!4740183 () Bool)

(assert (=> b!4143959 m!4740183))

(declare-fun m!4740185 () Bool)

(assert (=> b!4143959 m!4740185))

(declare-fun m!4740187 () Bool)

(assert (=> b!4143950 m!4740187))

(declare-fun m!4740189 () Bool)

(assert (=> b!4143948 m!4740189))

(declare-fun m!4740191 () Bool)

(assert (=> b!4143953 m!4740191))

(declare-fun m!4740193 () Bool)

(assert (=> b!4143964 m!4740193))

(declare-fun m!4740195 () Bool)

(assert (=> b!4143964 m!4740195))

(declare-fun m!4740197 () Bool)

(assert (=> b!4143946 m!4740197))

(declare-fun m!4740199 () Bool)

(assert (=> b!4143943 m!4740199))

(declare-fun m!4740201 () Bool)

(assert (=> b!4143943 m!4740201))

(declare-fun m!4740203 () Bool)

(assert (=> b!4143941 m!4740203))

(declare-fun m!4740205 () Bool)

(assert (=> b!4143941 m!4740205))

(declare-fun m!4740207 () Bool)

(assert (=> b!4143940 m!4740207))

(declare-fun m!4740209 () Bool)

(assert (=> b!4143955 m!4740209))

(declare-fun m!4740211 () Bool)

(assert (=> b!4143955 m!4740211))

(declare-fun m!4740213 () Bool)

(assert (=> b!4143955 m!4740213))

(declare-fun m!4740215 () Bool)

(assert (=> b!4143955 m!4740215))

(declare-fun m!4740217 () Bool)

(assert (=> b!4143962 m!4740217))

(declare-fun m!4740219 () Bool)

(assert (=> b!4143954 m!4740219))

(declare-fun m!4740221 () Bool)

(assert (=> b!4143965 m!4740221))

(declare-fun m!4740223 () Bool)

(assert (=> b!4143958 m!4740223))

(declare-fun m!4740225 () Bool)

(assert (=> b!4143958 m!4740225))

(declare-fun m!4740227 () Bool)

(assert (=> b!4143958 m!4740227))

(check-sat tp_is_empty!21513 (not b_next!118829) (not b!4143956) (not b_next!118835) (not b!4143961) (not b!4143942) (not b!4143945) (not b!4143954) (not b!4143951) (not b!4143953) (not b!4143966) (not b!4143948) (not b!4143939) b_and!321953 b_and!321955 (not b!4143963) (not b_next!118833) (not b_next!118831) (not b!4143965) (not b!4143946) (not b!4143960) (not b!4143947) (not b!4143958) (not b!4143938) b_and!321945 (not b!4143949) (not b!4143962) (not b!4143964) b_and!321951 b_and!321947 (not b!4143940) (not b!4143943) (not b_next!118837) (not b!4143955) (not b!4143950) (not b_next!118827) (not b!4143941) (not b!4143959) b_and!321949)
(check-sat (not b_next!118829) (not b_next!118831) (not b_next!118835) b_and!321945 (not b_next!118837) (not b_next!118827) b_and!321949 b_and!321953 b_and!321955 (not b_next!118833) b_and!321951 b_and!321947)
(get-model)

(declare-fun b!4144047 () Bool)

(declare-fun e!2571239 () Bool)

(declare-fun e!2571238 () Bool)

(assert (=> b!4144047 (= e!2571239 e!2571238)))

(declare-fun res!1695908 () Bool)

(assert (=> b!4144047 (=> (not res!1695908) (not e!2571238))))

(assert (=> b!4144047 (= res!1695908 (not ((_ is Nil!44960) input!3238)))))

(declare-fun b!4144049 () Bool)

(declare-fun tail!6571 (List!45084) List!45084)

(assert (=> b!4144049 (= e!2571238 (isPrefix!4325 (tail!6571 lt!1478019) (tail!6571 input!3238)))))

(declare-fun b!4144048 () Bool)

(declare-fun res!1695907 () Bool)

(assert (=> b!4144048 (=> (not res!1695907) (not e!2571238))))

(declare-fun head!8744 (List!45084) C!24776)

(assert (=> b!4144048 (= res!1695907 (= (head!8744 lt!1478019) (head!8744 input!3238)))))

(declare-fun d!1226538 () Bool)

(declare-fun e!2571240 () Bool)

(assert (=> d!1226538 e!2571240))

(declare-fun res!1695905 () Bool)

(assert (=> d!1226538 (=> res!1695905 e!2571240)))

(declare-fun lt!1478046 () Bool)

(assert (=> d!1226538 (= res!1695905 (not lt!1478046))))

(assert (=> d!1226538 (= lt!1478046 e!2571239)))

(declare-fun res!1695906 () Bool)

(assert (=> d!1226538 (=> res!1695906 e!2571239)))

(assert (=> d!1226538 (= res!1695906 ((_ is Nil!44960) lt!1478019))))

(assert (=> d!1226538 (= (isPrefix!4325 lt!1478019 input!3238) lt!1478046)))

(declare-fun b!4144050 () Bool)

(assert (=> b!4144050 (= e!2571240 (>= (size!33319 input!3238) (size!33319 lt!1478019)))))

(assert (= (and d!1226538 (not res!1695906)) b!4144047))

(assert (= (and b!4144047 res!1695908) b!4144048))

(assert (= (and b!4144048 res!1695907) b!4144049))

(assert (= (and d!1226538 (not res!1695905)) b!4144050))

(declare-fun m!4740279 () Bool)

(assert (=> b!4144049 m!4740279))

(declare-fun m!4740281 () Bool)

(assert (=> b!4144049 m!4740281))

(assert (=> b!4144049 m!4740279))

(assert (=> b!4144049 m!4740281))

(declare-fun m!4740283 () Bool)

(assert (=> b!4144049 m!4740283))

(declare-fun m!4740285 () Bool)

(assert (=> b!4144048 m!4740285))

(declare-fun m!4740287 () Bool)

(assert (=> b!4144048 m!4740287))

(assert (=> b!4144050 m!4740163))

(assert (=> b!4144050 m!4740189))

(assert (=> b!4143950 d!1226538))

(declare-fun d!1226540 () Bool)

(declare-fun lt!1478049 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6956 (List!45085) (InoxSet Rule!14580))

(assert (=> d!1226540 (= lt!1478049 (select (content!6956 rules!3756) r!4008))))

(declare-fun e!2571245 () Bool)

(assert (=> d!1226540 (= lt!1478049 e!2571245)))

(declare-fun res!1695913 () Bool)

(assert (=> d!1226540 (=> (not res!1695913) (not e!2571245))))

(assert (=> d!1226540 (= res!1695913 ((_ is Cons!44961) rules!3756))))

(assert (=> d!1226540 (= (contains!9070 rules!3756 r!4008) lt!1478049)))

(declare-fun b!4144055 () Bool)

(declare-fun e!2571246 () Bool)

(assert (=> b!4144055 (= e!2571245 e!2571246)))

(declare-fun res!1695914 () Bool)

(assert (=> b!4144055 (=> res!1695914 e!2571246)))

(assert (=> b!4144055 (= res!1695914 (= (h!50381 rules!3756) r!4008))))

(declare-fun b!4144056 () Bool)

(assert (=> b!4144056 (= e!2571246 (contains!9070 (t!342604 rules!3756) r!4008))))

(assert (= (and d!1226540 res!1695913) b!4144055))

(assert (= (and b!4144055 (not res!1695914)) b!4144056))

(declare-fun m!4740289 () Bool)

(assert (=> d!1226540 m!4740289))

(declare-fun m!4740291 () Bool)

(assert (=> d!1226540 m!4740291))

(declare-fun m!4740293 () Bool)

(assert (=> b!4144056 m!4740293))

(assert (=> b!4143961 d!1226540))

(declare-fun d!1226542 () Bool)

(declare-fun res!1695917 () Bool)

(declare-fun e!2571249 () Bool)

(assert (=> d!1226542 (=> (not res!1695917) (not e!2571249))))

(declare-fun rulesValid!2908 (LexerInterface!6979 List!45085) Bool)

(assert (=> d!1226542 (= res!1695917 (rulesValid!2908 thiss!25645 rules!3756))))

(assert (=> d!1226542 (= (rulesInvariant!6276 thiss!25645 rules!3756) e!2571249)))

(declare-fun b!4144059 () Bool)

(declare-datatypes ((List!45087 0))(
  ( (Nil!44963) (Cons!44963 (h!50383 String!51850) (t!342654 List!45087)) )
))
(declare-fun noDuplicateTag!2991 (LexerInterface!6979 List!45085 List!45087) Bool)

(assert (=> b!4144059 (= e!2571249 (noDuplicateTag!2991 thiss!25645 rules!3756 Nil!44963))))

(assert (= (and d!1226542 res!1695917) b!4144059))

(declare-fun m!4740295 () Bool)

(assert (=> d!1226542 m!4740295))

(declare-fun m!4740297 () Bool)

(assert (=> b!4144059 m!4740297))

(assert (=> b!4143940 d!1226542))

(declare-fun d!1226544 () Bool)

(assert (=> d!1226544 (= (inv!59566 (tag!8250 (h!50381 rules!3756))) (= (mod (str.len (value!231168 (tag!8250 (h!50381 rules!3756)))) 2) 0))))

(assert (=> b!4143951 d!1226544))

(declare-fun d!1226546 () Bool)

(declare-fun res!1695920 () Bool)

(declare-fun e!2571252 () Bool)

(assert (=> d!1226546 (=> (not res!1695920) (not e!2571252))))

(declare-fun semiInverseModEq!3195 (Int Int) Bool)

(assert (=> d!1226546 (= res!1695920 (semiInverseModEq!3195 (toChars!9913 (transformation!7390 (h!50381 rules!3756))) (toValue!10054 (transformation!7390 (h!50381 rules!3756)))))))

(assert (=> d!1226546 (= (inv!59568 (transformation!7390 (h!50381 rules!3756))) e!2571252)))

(declare-fun b!4144062 () Bool)

(declare-fun equivClasses!3094 (Int Int) Bool)

(assert (=> b!4144062 (= e!2571252 (equivClasses!3094 (toChars!9913 (transformation!7390 (h!50381 rules!3756))) (toValue!10054 (transformation!7390 (h!50381 rules!3756)))))))

(assert (= (and d!1226546 res!1695920) b!4144062))

(declare-fun m!4740299 () Bool)

(assert (=> d!1226546 m!4740299))

(declare-fun m!4740301 () Bool)

(assert (=> b!4144062 m!4740301))

(assert (=> b!4143951 d!1226546))

(declare-fun d!1226548 () Bool)

(declare-fun lt!1478050 () Bool)

(assert (=> d!1226548 (= lt!1478050 (select (content!6956 rules!3756) rBis!149))))

(declare-fun e!2571253 () Bool)

(assert (=> d!1226548 (= lt!1478050 e!2571253)))

(declare-fun res!1695921 () Bool)

(assert (=> d!1226548 (=> (not res!1695921) (not e!2571253))))

(assert (=> d!1226548 (= res!1695921 ((_ is Cons!44961) rules!3756))))

(assert (=> d!1226548 (= (contains!9070 rules!3756 rBis!149) lt!1478050)))

(declare-fun b!4144063 () Bool)

(declare-fun e!2571254 () Bool)

(assert (=> b!4144063 (= e!2571253 e!2571254)))

(declare-fun res!1695922 () Bool)

(assert (=> b!4144063 (=> res!1695922 e!2571254)))

(assert (=> b!4144063 (= res!1695922 (= (h!50381 rules!3756) rBis!149))))

(declare-fun b!4144064 () Bool)

(assert (=> b!4144064 (= e!2571254 (contains!9070 (t!342604 rules!3756) rBis!149))))

(assert (= (and d!1226548 res!1695921) b!4144063))

(assert (= (and b!4144063 (not res!1695922)) b!4144064))

(assert (=> d!1226548 m!4740289))

(declare-fun m!4740303 () Bool)

(assert (=> d!1226548 m!4740303))

(declare-fun m!4740305 () Bool)

(assert (=> b!4144064 m!4740305))

(assert (=> b!4143938 d!1226548))

(declare-fun b!4144073 () Bool)

(declare-fun e!2571260 () Int)

(assert (=> b!4144073 (= e!2571260 0)))

(declare-fun d!1226550 () Bool)

(declare-fun lt!1478053 () Int)

(assert (=> d!1226550 (>= lt!1478053 0)))

(assert (=> d!1226550 (= lt!1478053 e!2571260)))

(declare-fun c!710204 () Bool)

(assert (=> d!1226550 (= c!710204 (and ((_ is Cons!44961) rules!3756) (= (h!50381 rules!3756) rBis!149)))))

(assert (=> d!1226550 (contains!9070 rules!3756 rBis!149)))

(assert (=> d!1226550 (= (getIndex!736 rules!3756 rBis!149) lt!1478053)))

(declare-fun b!4144075 () Bool)

(declare-fun e!2571261 () Int)

(assert (=> b!4144075 (= e!2571261 (+ 1 (getIndex!736 (t!342604 rules!3756) rBis!149)))))

(declare-fun b!4144074 () Bool)

(assert (=> b!4144074 (= e!2571260 e!2571261)))

(declare-fun c!710205 () Bool)

(assert (=> b!4144074 (= c!710205 (and ((_ is Cons!44961) rules!3756) (not (= (h!50381 rules!3756) rBis!149))))))

(declare-fun b!4144076 () Bool)

(assert (=> b!4144076 (= e!2571261 (- 1))))

(assert (= (and d!1226550 c!710204) b!4144073))

(assert (= (and d!1226550 (not c!710204)) b!4144074))

(assert (= (and b!4144074 c!710205) b!4144075))

(assert (= (and b!4144074 (not c!710205)) b!4144076))

(assert (=> d!1226550 m!4740157))

(declare-fun m!4740307 () Bool)

(assert (=> b!4144075 m!4740307))

(assert (=> b!4143960 d!1226550))

(declare-fun b!4144077 () Bool)

(declare-fun e!2571262 () Int)

(assert (=> b!4144077 (= e!2571262 0)))

(declare-fun d!1226552 () Bool)

(declare-fun lt!1478054 () Int)

(assert (=> d!1226552 (>= lt!1478054 0)))

(assert (=> d!1226552 (= lt!1478054 e!2571262)))

(declare-fun c!710206 () Bool)

(assert (=> d!1226552 (= c!710206 (and ((_ is Cons!44961) rules!3756) (= (h!50381 rules!3756) r!4008)))))

(assert (=> d!1226552 (contains!9070 rules!3756 r!4008)))

(assert (=> d!1226552 (= (getIndex!736 rules!3756 r!4008) lt!1478054)))

(declare-fun b!4144079 () Bool)

(declare-fun e!2571263 () Int)

(assert (=> b!4144079 (= e!2571263 (+ 1 (getIndex!736 (t!342604 rules!3756) r!4008)))))

(declare-fun b!4144078 () Bool)

(assert (=> b!4144078 (= e!2571262 e!2571263)))

(declare-fun c!710207 () Bool)

(assert (=> b!4144078 (= c!710207 (and ((_ is Cons!44961) rules!3756) (not (= (h!50381 rules!3756) r!4008))))))

(declare-fun b!4144080 () Bool)

(assert (=> b!4144080 (= e!2571263 (- 1))))

(assert (= (and d!1226552 c!710206) b!4144077))

(assert (= (and d!1226552 (not c!710206)) b!4144078))

(assert (= (and b!4144078 c!710207) b!4144079))

(assert (= (and b!4144078 (not c!710207)) b!4144080))

(assert (=> d!1226552 m!4740139))

(declare-fun m!4740309 () Bool)

(assert (=> b!4144079 m!4740309))

(assert (=> b!4143960 d!1226552))

(declare-fun d!1226554 () Bool)

(assert (=> d!1226554 (= (isEmpty!26823 rules!3756) ((_ is Nil!44961) rules!3756))))

(assert (=> b!4143939 d!1226554))

(declare-fun d!1226556 () Bool)

(assert (=> d!1226556 (ruleValid!3196 thiss!25645 r!4008)))

(declare-fun lt!1478057 () Unit!64253)

(declare-fun choose!25360 (LexerInterface!6979 Rule!14580 List!45085) Unit!64253)

(assert (=> d!1226556 (= lt!1478057 (choose!25360 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1226556 (contains!9070 rules!3756 r!4008)))

(assert (=> d!1226556 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2236 thiss!25645 r!4008 rules!3756) lt!1478057)))

(declare-fun bs!595304 () Bool)

(assert (= bs!595304 d!1226556))

(assert (=> bs!595304 m!4740191))

(declare-fun m!4740311 () Bool)

(assert (=> bs!595304 m!4740311))

(assert (=> bs!595304 m!4740139))

(assert (=> b!4143958 d!1226556))

(declare-fun d!1226558 () Bool)

(declare-fun res!1695927 () Bool)

(declare-fun e!2571266 () Bool)

(assert (=> d!1226558 (=> (not res!1695927) (not e!2571266))))

(assert (=> d!1226558 (= res!1695927 (validRegex!5541 (regex!7390 rBis!149)))))

(assert (=> d!1226558 (= (ruleValid!3196 thiss!25645 rBis!149) e!2571266)))

(declare-fun b!4144085 () Bool)

(declare-fun res!1695928 () Bool)

(assert (=> b!4144085 (=> (not res!1695928) (not e!2571266))))

(declare-fun nullable!4331 (Regex!12295) Bool)

(assert (=> b!4144085 (= res!1695928 (not (nullable!4331 (regex!7390 rBis!149))))))

(declare-fun b!4144086 () Bool)

(assert (=> b!4144086 (= e!2571266 (not (= (tag!8250 rBis!149) (String!51851 ""))))))

(assert (= (and d!1226558 res!1695927) b!4144085))

(assert (= (and b!4144085 res!1695928) b!4144086))

(assert (=> d!1226558 m!4740165))

(declare-fun m!4740313 () Bool)

(assert (=> b!4144085 m!4740313))

(assert (=> b!4143958 d!1226558))

(declare-fun d!1226560 () Bool)

(assert (=> d!1226560 (ruleValid!3196 thiss!25645 rBis!149)))

(declare-fun lt!1478058 () Unit!64253)

(assert (=> d!1226560 (= lt!1478058 (choose!25360 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1226560 (contains!9070 rules!3756 rBis!149)))

(assert (=> d!1226560 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2236 thiss!25645 rBis!149 rules!3756) lt!1478058)))

(declare-fun bs!595305 () Bool)

(assert (= bs!595305 d!1226560))

(assert (=> bs!595305 m!4740225))

(declare-fun m!4740315 () Bool)

(assert (=> bs!595305 m!4740315))

(assert (=> bs!595305 m!4740157))

(assert (=> b!4143958 d!1226560))

(declare-fun d!1226562 () Bool)

(declare-fun lt!1478061 () Int)

(assert (=> d!1226562 (>= lt!1478061 0)))

(declare-fun e!2571269 () Int)

(assert (=> d!1226562 (= lt!1478061 e!2571269)))

(declare-fun c!710210 () Bool)

(assert (=> d!1226562 (= c!710210 ((_ is Nil!44960) lt!1478019))))

(assert (=> d!1226562 (= (size!33319 lt!1478019) lt!1478061)))

(declare-fun b!4144091 () Bool)

(assert (=> b!4144091 (= e!2571269 0)))

(declare-fun b!4144092 () Bool)

(assert (=> b!4144092 (= e!2571269 (+ 1 (size!33319 (t!342603 lt!1478019))))))

(assert (= (and d!1226562 c!710210) b!4144091))

(assert (= (and d!1226562 (not c!710210)) b!4144092))

(declare-fun m!4740317 () Bool)

(assert (=> b!4144092 m!4740317))

(assert (=> b!4143948 d!1226562))

(declare-fun d!1226564 () Bool)

(declare-fun lt!1478064 () List!45084)

(assert (=> d!1226564 (= (++!11630 p!2912 lt!1478064) input!3238)))

(declare-fun e!2571272 () List!45084)

(assert (=> d!1226564 (= lt!1478064 e!2571272)))

(declare-fun c!710213 () Bool)

(assert (=> d!1226564 (= c!710213 ((_ is Cons!44960) p!2912))))

(assert (=> d!1226564 (>= (size!33319 input!3238) (size!33319 p!2912))))

(assert (=> d!1226564 (= (getSuffix!2652 input!3238 p!2912) lt!1478064)))

(declare-fun b!4144097 () Bool)

(assert (=> b!4144097 (= e!2571272 (getSuffix!2652 (tail!6571 input!3238) (t!342603 p!2912)))))

(declare-fun b!4144098 () Bool)

(assert (=> b!4144098 (= e!2571272 input!3238)))

(assert (= (and d!1226564 c!710213) b!4144097))

(assert (= (and d!1226564 (not c!710213)) b!4144098))

(declare-fun m!4740319 () Bool)

(assert (=> d!1226564 m!4740319))

(assert (=> d!1226564 m!4740163))

(assert (=> d!1226564 m!4740175))

(assert (=> b!4144097 m!4740281))

(assert (=> b!4144097 m!4740281))

(declare-fun m!4740321 () Bool)

(assert (=> b!4144097 m!4740321))

(assert (=> b!4143959 d!1226564))

(declare-fun b!4144117 () Bool)

(declare-fun res!1695948 () Bool)

(declare-fun e!2571279 () Bool)

(assert (=> b!4144117 (=> (not res!1695948) (not e!2571279))))

(declare-fun lt!1478075 () Option!9696)

(assert (=> b!4144117 (= res!1695948 (= (list!16471 (charsOf!4989 (_1!24803 (get!14680 lt!1478075)))) (originalCharacters!7886 (_1!24803 (get!14680 lt!1478075)))))))

(declare-fun b!4144118 () Bool)

(declare-fun res!1695946 () Bool)

(assert (=> b!4144118 (=> (not res!1695946) (not e!2571279))))

(assert (=> b!4144118 (= res!1695946 (= (value!231169 (_1!24803 (get!14680 lt!1478075))) (apply!10463 (transformation!7390 (rule!10508 (_1!24803 (get!14680 lt!1478075)))) (seqFromList!5507 (originalCharacters!7886 (_1!24803 (get!14680 lt!1478075)))))))))

(declare-fun b!4144119 () Bool)

(declare-fun e!2571281 () Option!9696)

(declare-fun call!290592 () Option!9696)

(assert (=> b!4144119 (= e!2571281 call!290592)))

(declare-fun b!4144120 () Bool)

(declare-fun res!1695944 () Bool)

(assert (=> b!4144120 (=> (not res!1695944) (not e!2571279))))

(assert (=> b!4144120 (= res!1695944 (< (size!33319 (_2!24803 (get!14680 lt!1478075))) (size!33319 input!3238)))))

(declare-fun bm!290587 () Bool)

(assert (=> bm!290587 (= call!290592 (maxPrefixOneRule!3108 thiss!25645 (h!50381 rules!3756) input!3238))))

(declare-fun b!4144121 () Bool)

(declare-fun res!1695943 () Bool)

(assert (=> b!4144121 (=> (not res!1695943) (not e!2571279))))

(assert (=> b!4144121 (= res!1695943 (matchR!6124 (regex!7390 (rule!10508 (_1!24803 (get!14680 lt!1478075)))) (list!16471 (charsOf!4989 (_1!24803 (get!14680 lt!1478075))))))))

(declare-fun b!4144122 () Bool)

(declare-fun lt!1478079 () Option!9696)

(declare-fun lt!1478077 () Option!9696)

(assert (=> b!4144122 (= e!2571281 (ite (and ((_ is None!9695) lt!1478079) ((_ is None!9695) lt!1478077)) None!9695 (ite ((_ is None!9695) lt!1478077) lt!1478079 (ite ((_ is None!9695) lt!1478079) lt!1478077 (ite (>= (size!33318 (_1!24803 (v!40341 lt!1478079))) (size!33318 (_1!24803 (v!40341 lt!1478077)))) lt!1478079 lt!1478077)))))))

(assert (=> b!4144122 (= lt!1478079 call!290592)))

(assert (=> b!4144122 (= lt!1478077 (maxPrefix!4169 thiss!25645 (t!342604 rules!3756) input!3238))))

(declare-fun d!1226566 () Bool)

(declare-fun e!2571280 () Bool)

(assert (=> d!1226566 e!2571280))

(declare-fun res!1695945 () Bool)

(assert (=> d!1226566 (=> res!1695945 e!2571280)))

(assert (=> d!1226566 (= res!1695945 (isEmpty!26824 lt!1478075))))

(assert (=> d!1226566 (= lt!1478075 e!2571281)))

(declare-fun c!710216 () Bool)

(assert (=> d!1226566 (= c!710216 (and ((_ is Cons!44961) rules!3756) ((_ is Nil!44961) (t!342604 rules!3756))))))

(declare-fun lt!1478076 () Unit!64253)

(declare-fun lt!1478078 () Unit!64253)

(assert (=> d!1226566 (= lt!1478076 lt!1478078)))

(assert (=> d!1226566 (isPrefix!4325 input!3238 input!3238)))

(assert (=> d!1226566 (= lt!1478078 (lemmaIsPrefixRefl!2794 input!3238 input!3238))))

(declare-fun rulesValidInductive!2746 (LexerInterface!6979 List!45085) Bool)

(assert (=> d!1226566 (rulesValidInductive!2746 thiss!25645 rules!3756)))

(assert (=> d!1226566 (= (maxPrefix!4169 thiss!25645 rules!3756 input!3238) lt!1478075)))

(declare-fun b!4144123 () Bool)

(assert (=> b!4144123 (= e!2571280 e!2571279)))

(declare-fun res!1695949 () Bool)

(assert (=> b!4144123 (=> (not res!1695949) (not e!2571279))))

(declare-fun isDefined!7286 (Option!9696) Bool)

(assert (=> b!4144123 (= res!1695949 (isDefined!7286 lt!1478075))))

(declare-fun b!4144124 () Bool)

(assert (=> b!4144124 (= e!2571279 (contains!9070 rules!3756 (rule!10508 (_1!24803 (get!14680 lt!1478075)))))))

(declare-fun b!4144125 () Bool)

(declare-fun res!1695947 () Bool)

(assert (=> b!4144125 (=> (not res!1695947) (not e!2571279))))

(assert (=> b!4144125 (= res!1695947 (= (++!11630 (list!16471 (charsOf!4989 (_1!24803 (get!14680 lt!1478075)))) (_2!24803 (get!14680 lt!1478075))) input!3238))))

(assert (= (and d!1226566 c!710216) b!4144119))

(assert (= (and d!1226566 (not c!710216)) b!4144122))

(assert (= (or b!4144119 b!4144122) bm!290587))

(assert (= (and d!1226566 (not res!1695945)) b!4144123))

(assert (= (and b!4144123 res!1695949) b!4144117))

(assert (= (and b!4144117 res!1695948) b!4144120))

(assert (= (and b!4144120 res!1695944) b!4144125))

(assert (= (and b!4144125 res!1695947) b!4144118))

(assert (= (and b!4144118 res!1695946) b!4144121))

(assert (= (and b!4144121 res!1695943) b!4144124))

(declare-fun m!4740323 () Bool)

(assert (=> b!4144125 m!4740323))

(declare-fun m!4740325 () Bool)

(assert (=> b!4144125 m!4740325))

(assert (=> b!4144125 m!4740325))

(declare-fun m!4740327 () Bool)

(assert (=> b!4144125 m!4740327))

(assert (=> b!4144125 m!4740327))

(declare-fun m!4740329 () Bool)

(assert (=> b!4144125 m!4740329))

(assert (=> b!4144117 m!4740323))

(assert (=> b!4144117 m!4740325))

(assert (=> b!4144117 m!4740325))

(assert (=> b!4144117 m!4740327))

(declare-fun m!4740331 () Bool)

(assert (=> d!1226566 m!4740331))

(assert (=> d!1226566 m!4740203))

(assert (=> d!1226566 m!4740205))

(declare-fun m!4740333 () Bool)

(assert (=> d!1226566 m!4740333))

(declare-fun m!4740335 () Bool)

(assert (=> bm!290587 m!4740335))

(assert (=> b!4144124 m!4740323))

(declare-fun m!4740337 () Bool)

(assert (=> b!4144124 m!4740337))

(declare-fun m!4740339 () Bool)

(assert (=> b!4144122 m!4740339))

(assert (=> b!4144120 m!4740323))

(declare-fun m!4740341 () Bool)

(assert (=> b!4144120 m!4740341))

(assert (=> b!4144120 m!4740163))

(assert (=> b!4144121 m!4740323))

(assert (=> b!4144121 m!4740325))

(assert (=> b!4144121 m!4740325))

(assert (=> b!4144121 m!4740327))

(assert (=> b!4144121 m!4740327))

(declare-fun m!4740343 () Bool)

(assert (=> b!4144121 m!4740343))

(assert (=> b!4144118 m!4740323))

(declare-fun m!4740345 () Bool)

(assert (=> b!4144118 m!4740345))

(assert (=> b!4144118 m!4740345))

(declare-fun m!4740347 () Bool)

(assert (=> b!4144118 m!4740347))

(declare-fun m!4740349 () Bool)

(assert (=> b!4144123 m!4740349))

(assert (=> b!4143959 d!1226566))

(declare-fun b!4144344 () Bool)

(declare-fun e!2571412 () Bool)

(assert (=> b!4144344 (= e!2571412 true)))

(declare-fun d!1226568 () Bool)

(assert (=> d!1226568 e!2571412))

(assert (= d!1226568 b!4144344))

(declare-fun order!23815 () Int)

(declare-fun lambda!128973 () Int)

(declare-fun order!23813 () Int)

(declare-fun dynLambda!19353 (Int Int) Int)

(declare-fun dynLambda!19354 (Int Int) Int)

(assert (=> b!4144344 (< (dynLambda!19353 order!23813 (toValue!10054 (transformation!7390 r!4008))) (dynLambda!19354 order!23815 lambda!128973))))

(declare-fun order!23817 () Int)

(declare-fun dynLambda!19355 (Int Int) Int)

(assert (=> b!4144344 (< (dynLambda!19355 order!23817 (toChars!9913 (transformation!7390 r!4008))) (dynLambda!19354 order!23815 lambda!128973))))

(declare-fun dynLambda!19356 (Int TokenValue!7620) BalanceConc!26796)

(declare-fun dynLambda!19357 (Int BalanceConc!26796) TokenValue!7620)

(assert (=> d!1226568 (= (list!16471 (dynLambda!19356 (toChars!9913 (transformation!7390 r!4008)) (dynLambda!19357 (toValue!10054 (transformation!7390 r!4008)) lt!1478020))) (list!16471 lt!1478020))))

(declare-fun lt!1478150 () Unit!64253)

(declare-fun ForallOf!978 (Int BalanceConc!26796) Unit!64253)

(assert (=> d!1226568 (= lt!1478150 (ForallOf!978 lambda!128973 lt!1478020))))

(assert (=> d!1226568 (= (lemmaSemiInverse!2248 (transformation!7390 r!4008) lt!1478020) lt!1478150)))

(declare-fun b_lambda!121837 () Bool)

(assert (=> (not b_lambda!121837) (not d!1226568)))

(declare-fun t!342630 () Bool)

(declare-fun tb!248763 () Bool)

(assert (=> (and b!4143957 (= (toChars!9913 (transformation!7390 r!4008)) (toChars!9913 (transformation!7390 r!4008))) t!342630) tb!248763))

(declare-fun b!4144349 () Bool)

(declare-fun tp!1263158 () Bool)

(declare-fun e!2571415 () Bool)

(declare-fun inv!59571 (Conc!13601) Bool)

(assert (=> b!4144349 (= e!2571415 (and (inv!59571 (c!710182 (dynLambda!19356 (toChars!9913 (transformation!7390 r!4008)) (dynLambda!19357 (toValue!10054 (transformation!7390 r!4008)) lt!1478020)))) tp!1263158))))

(declare-fun result!302530 () Bool)

(declare-fun inv!59572 (BalanceConc!26796) Bool)

(assert (=> tb!248763 (= result!302530 (and (inv!59572 (dynLambda!19356 (toChars!9913 (transformation!7390 r!4008)) (dynLambda!19357 (toValue!10054 (transformation!7390 r!4008)) lt!1478020))) e!2571415))))

(assert (= tb!248763 b!4144349))

(declare-fun m!4740531 () Bool)

(assert (=> b!4144349 m!4740531))

(declare-fun m!4740533 () Bool)

(assert (=> tb!248763 m!4740533))

(assert (=> d!1226568 t!342630))

(declare-fun b_and!321985 () Bool)

(assert (= b_and!321947 (and (=> t!342630 result!302530) b_and!321985)))

(declare-fun t!342632 () Bool)

(declare-fun tb!248765 () Bool)

(assert (=> (and b!4143952 (= (toChars!9913 (transformation!7390 (h!50381 rules!3756))) (toChars!9913 (transformation!7390 r!4008))) t!342632) tb!248765))

(declare-fun result!302534 () Bool)

(assert (= result!302534 result!302530))

(assert (=> d!1226568 t!342632))

(declare-fun b_and!321987 () Bool)

(assert (= b_and!321951 (and (=> t!342632 result!302534) b_and!321987)))

(declare-fun tb!248767 () Bool)

(declare-fun t!342634 () Bool)

(assert (=> (and b!4143944 (= (toChars!9913 (transformation!7390 rBis!149)) (toChars!9913 (transformation!7390 r!4008))) t!342634) tb!248767))

(declare-fun result!302536 () Bool)

(assert (= result!302536 result!302530))

(assert (=> d!1226568 t!342634))

(declare-fun b_and!321989 () Bool)

(assert (= b_and!321955 (and (=> t!342634 result!302536) b_and!321989)))

(declare-fun b_lambda!121839 () Bool)

(assert (=> (not b_lambda!121839) (not d!1226568)))

(declare-fun t!342636 () Bool)

(declare-fun tb!248769 () Bool)

(assert (=> (and b!4143957 (= (toValue!10054 (transformation!7390 r!4008)) (toValue!10054 (transformation!7390 r!4008))) t!342636) tb!248769))

(declare-fun result!302538 () Bool)

(declare-fun inv!21 (TokenValue!7620) Bool)

(assert (=> tb!248769 (= result!302538 (inv!21 (dynLambda!19357 (toValue!10054 (transformation!7390 r!4008)) lt!1478020)))))

(declare-fun m!4740535 () Bool)

(assert (=> tb!248769 m!4740535))

(assert (=> d!1226568 t!342636))

(declare-fun b_and!321991 () Bool)

(assert (= b_and!321945 (and (=> t!342636 result!302538) b_and!321991)))

(declare-fun t!342638 () Bool)

(declare-fun tb!248771 () Bool)

(assert (=> (and b!4143952 (= (toValue!10054 (transformation!7390 (h!50381 rules!3756))) (toValue!10054 (transformation!7390 r!4008))) t!342638) tb!248771))

(declare-fun result!302542 () Bool)

(assert (= result!302542 result!302538))

(assert (=> d!1226568 t!342638))

(declare-fun b_and!321993 () Bool)

(assert (= b_and!321949 (and (=> t!342638 result!302542) b_and!321993)))

(declare-fun t!342640 () Bool)

(declare-fun tb!248773 () Bool)

(assert (=> (and b!4143944 (= (toValue!10054 (transformation!7390 rBis!149)) (toValue!10054 (transformation!7390 r!4008))) t!342640) tb!248773))

(declare-fun result!302544 () Bool)

(assert (= result!302544 result!302538))

(assert (=> d!1226568 t!342640))

(declare-fun b_and!321995 () Bool)

(assert (= b_and!321953 (and (=> t!342640 result!302544) b_and!321995)))

(declare-fun m!4740537 () Bool)

(assert (=> d!1226568 m!4740537))

(declare-fun m!4740539 () Bool)

(assert (=> d!1226568 m!4740539))

(declare-fun m!4740541 () Bool)

(assert (=> d!1226568 m!4740541))

(declare-fun m!4740543 () Bool)

(assert (=> d!1226568 m!4740543))

(assert (=> d!1226568 m!4740541))

(assert (=> d!1226568 m!4740543))

(declare-fun m!4740545 () Bool)

(assert (=> d!1226568 m!4740545))

(assert (=> b!4143959 d!1226568))

(declare-fun d!1226644 () Bool)

(assert (=> d!1226644 (= (apply!10463 (transformation!7390 r!4008) lt!1478020) (dynLambda!19357 (toValue!10054 (transformation!7390 r!4008)) lt!1478020))))

(declare-fun b_lambda!121841 () Bool)

(assert (=> (not b_lambda!121841) (not d!1226644)))

(assert (=> d!1226644 t!342636))

(declare-fun b_and!321997 () Bool)

(assert (= b_and!321991 (and (=> t!342636 result!302538) b_and!321997)))

(assert (=> d!1226644 t!342638))

(declare-fun b_and!321999 () Bool)

(assert (= b_and!321993 (and (=> t!342638 result!302542) b_and!321999)))

(assert (=> d!1226644 t!342640))

(declare-fun b_and!322001 () Bool)

(assert (= b_and!321995 (and (=> t!342640 result!302544) b_and!322001)))

(assert (=> d!1226644 m!4740541))

(assert (=> b!4143959 d!1226644))

(declare-fun d!1226646 () Bool)

(declare-fun fromListB!2527 (List!45084) BalanceConc!26796)

(assert (=> d!1226646 (= (seqFromList!5507 p!2912) (fromListB!2527 p!2912))))

(declare-fun bs!595312 () Bool)

(assert (= bs!595312 d!1226646))

(declare-fun m!4740547 () Bool)

(assert (=> bs!595312 m!4740547))

(assert (=> b!4143959 d!1226646))

(declare-fun d!1226648 () Bool)

(declare-fun lt!1478151 () Int)

(assert (=> d!1226648 (>= lt!1478151 0)))

(declare-fun e!2571419 () Int)

(assert (=> d!1226648 (= lt!1478151 e!2571419)))

(declare-fun c!710246 () Bool)

(assert (=> d!1226648 (= c!710246 ((_ is Nil!44960) p!2912))))

(assert (=> d!1226648 (= (size!33319 p!2912) lt!1478151)))

(declare-fun b!4144352 () Bool)

(assert (=> b!4144352 (= e!2571419 0)))

(declare-fun b!4144353 () Bool)

(assert (=> b!4144353 (= e!2571419 (+ 1 (size!33319 (t!342603 p!2912))))))

(assert (= (and d!1226648 c!710246) b!4144352))

(assert (= (and d!1226648 (not c!710246)) b!4144353))

(declare-fun m!4740549 () Bool)

(assert (=> b!4144353 m!4740549))

(assert (=> b!4143959 d!1226648))

(declare-fun b!4144382 () Bool)

(declare-fun e!2571440 () Bool)

(declare-fun lt!1478154 () Bool)

(assert (=> b!4144382 (= e!2571440 (not lt!1478154))))

(declare-fun b!4144383 () Bool)

(declare-fun e!2571435 () Bool)

(declare-fun call!290608 () Bool)

(assert (=> b!4144383 (= e!2571435 (= lt!1478154 call!290608))))

(declare-fun b!4144384 () Bool)

(declare-fun res!1696076 () Bool)

(declare-fun e!2571439 () Bool)

(assert (=> b!4144384 (=> res!1696076 e!2571439)))

(declare-fun e!2571434 () Bool)

(assert (=> b!4144384 (= res!1696076 e!2571434)))

(declare-fun res!1696073 () Bool)

(assert (=> b!4144384 (=> (not res!1696073) (not e!2571434))))

(assert (=> b!4144384 (= res!1696073 lt!1478154)))

(declare-fun b!4144385 () Bool)

(declare-fun res!1696074 () Bool)

(assert (=> b!4144385 (=> res!1696074 e!2571439)))

(assert (=> b!4144385 (= res!1696074 (not ((_ is ElementMatch!12295) (regex!7390 rBis!149))))))

(assert (=> b!4144385 (= e!2571440 e!2571439)))

(declare-fun b!4144386 () Bool)

(assert (=> b!4144386 (= e!2571434 (= (head!8744 lt!1478019) (c!710183 (regex!7390 rBis!149))))))

(declare-fun b!4144387 () Bool)

(declare-fun e!2571437 () Bool)

(assert (=> b!4144387 (= e!2571437 (nullable!4331 (regex!7390 rBis!149)))))

(declare-fun b!4144388 () Bool)

(assert (=> b!4144388 (= e!2571435 e!2571440)))

(declare-fun c!710255 () Bool)

(assert (=> b!4144388 (= c!710255 ((_ is EmptyLang!12295) (regex!7390 rBis!149)))))

(declare-fun bm!290603 () Bool)

(assert (=> bm!290603 (= call!290608 (isEmpty!26825 lt!1478019))))

(declare-fun b!4144389 () Bool)

(declare-fun res!1696075 () Bool)

(assert (=> b!4144389 (=> (not res!1696075) (not e!2571434))))

(assert (=> b!4144389 (= res!1696075 (isEmpty!26825 (tail!6571 lt!1478019)))))

(declare-fun d!1226650 () Bool)

(assert (=> d!1226650 e!2571435))

(declare-fun c!710254 () Bool)

(assert (=> d!1226650 (= c!710254 ((_ is EmptyExpr!12295) (regex!7390 rBis!149)))))

(assert (=> d!1226650 (= lt!1478154 e!2571437)))

(declare-fun c!710253 () Bool)

(assert (=> d!1226650 (= c!710253 (isEmpty!26825 lt!1478019))))

(assert (=> d!1226650 (validRegex!5541 (regex!7390 rBis!149))))

(assert (=> d!1226650 (= (matchR!6124 (regex!7390 rBis!149) lt!1478019) lt!1478154)))

(declare-fun b!4144390 () Bool)

(declare-fun derivativeStep!3725 (Regex!12295 C!24776) Regex!12295)

(assert (=> b!4144390 (= e!2571437 (matchR!6124 (derivativeStep!3725 (regex!7390 rBis!149) (head!8744 lt!1478019)) (tail!6571 lt!1478019)))))

(declare-fun b!4144391 () Bool)

(declare-fun res!1696077 () Bool)

(declare-fun e!2571438 () Bool)

(assert (=> b!4144391 (=> res!1696077 e!2571438)))

(assert (=> b!4144391 (= res!1696077 (not (isEmpty!26825 (tail!6571 lt!1478019))))))

(declare-fun b!4144392 () Bool)

(declare-fun res!1696072 () Bool)

(assert (=> b!4144392 (=> (not res!1696072) (not e!2571434))))

(assert (=> b!4144392 (= res!1696072 (not call!290608))))

(declare-fun b!4144393 () Bool)

(declare-fun e!2571436 () Bool)

(assert (=> b!4144393 (= e!2571439 e!2571436)))

(declare-fun res!1696078 () Bool)

(assert (=> b!4144393 (=> (not res!1696078) (not e!2571436))))

(assert (=> b!4144393 (= res!1696078 (not lt!1478154))))

(declare-fun b!4144394 () Bool)

(assert (=> b!4144394 (= e!2571436 e!2571438)))

(declare-fun res!1696079 () Bool)

(assert (=> b!4144394 (=> res!1696079 e!2571438)))

(assert (=> b!4144394 (= res!1696079 call!290608)))

(declare-fun b!4144395 () Bool)

(assert (=> b!4144395 (= e!2571438 (not (= (head!8744 lt!1478019) (c!710183 (regex!7390 rBis!149)))))))

(assert (= (and d!1226650 c!710253) b!4144387))

(assert (= (and d!1226650 (not c!710253)) b!4144390))

(assert (= (and d!1226650 c!710254) b!4144383))

(assert (= (and d!1226650 (not c!710254)) b!4144388))

(assert (= (and b!4144388 c!710255) b!4144382))

(assert (= (and b!4144388 (not c!710255)) b!4144385))

(assert (= (and b!4144385 (not res!1696074)) b!4144384))

(assert (= (and b!4144384 res!1696073) b!4144392))

(assert (= (and b!4144392 res!1696072) b!4144389))

(assert (= (and b!4144389 res!1696075) b!4144386))

(assert (= (and b!4144384 (not res!1696076)) b!4144393))

(assert (= (and b!4144393 res!1696078) b!4144394))

(assert (= (and b!4144394 (not res!1696079)) b!4144391))

(assert (= (and b!4144391 (not res!1696077)) b!4144395))

(assert (= (or b!4144383 b!4144392 b!4144394) bm!290603))

(assert (=> b!4144389 m!4740279))

(assert (=> b!4144389 m!4740279))

(declare-fun m!4740551 () Bool)

(assert (=> b!4144389 m!4740551))

(declare-fun m!4740553 () Bool)

(assert (=> d!1226650 m!4740553))

(assert (=> d!1226650 m!4740165))

(assert (=> b!4144391 m!4740279))

(assert (=> b!4144391 m!4740279))

(assert (=> b!4144391 m!4740551))

(assert (=> b!4144386 m!4740285))

(assert (=> b!4144395 m!4740285))

(assert (=> b!4144390 m!4740285))

(assert (=> b!4144390 m!4740285))

(declare-fun m!4740555 () Bool)

(assert (=> b!4144390 m!4740555))

(assert (=> b!4144390 m!4740279))

(assert (=> b!4144390 m!4740555))

(assert (=> b!4144390 m!4740279))

(declare-fun m!4740557 () Bool)

(assert (=> b!4144390 m!4740557))

(assert (=> b!4144387 m!4740313))

(assert (=> bm!290603 m!4740553))

(assert (=> b!4143946 d!1226650))

(declare-fun b!4144414 () Bool)

(declare-fun e!2571457 () Bool)

(declare-fun call!290615 () Bool)

(assert (=> b!4144414 (= e!2571457 call!290615)))

(declare-fun b!4144416 () Bool)

(declare-fun e!2571461 () Bool)

(declare-fun e!2571458 () Bool)

(assert (=> b!4144416 (= e!2571461 e!2571458)))

(declare-fun res!1696094 () Bool)

(assert (=> b!4144416 (= res!1696094 (not (nullable!4331 (reg!12624 (regex!7390 rBis!149)))))))

(assert (=> b!4144416 (=> (not res!1696094) (not e!2571458))))

(declare-fun bm!290610 () Bool)

(declare-fun c!710261 () Bool)

(assert (=> bm!290610 (= call!290615 (validRegex!5541 (ite c!710261 (regTwo!25103 (regex!7390 rBis!149)) (regTwo!25102 (regex!7390 rBis!149)))))))

(declare-fun bm!290611 () Bool)

(declare-fun call!290617 () Bool)

(declare-fun call!290616 () Bool)

(assert (=> bm!290611 (= call!290617 call!290616)))

(declare-fun bm!290612 () Bool)

(declare-fun c!710260 () Bool)

(assert (=> bm!290612 (= call!290616 (validRegex!5541 (ite c!710260 (reg!12624 (regex!7390 rBis!149)) (ite c!710261 (regOne!25103 (regex!7390 rBis!149)) (regOne!25102 (regex!7390 rBis!149))))))))

(declare-fun b!4144417 () Bool)

(declare-fun res!1696092 () Bool)

(declare-fun e!2571459 () Bool)

(assert (=> b!4144417 (=> (not res!1696092) (not e!2571459))))

(assert (=> b!4144417 (= res!1696092 call!290617)))

(declare-fun e!2571456 () Bool)

(assert (=> b!4144417 (= e!2571456 e!2571459)))

(declare-fun b!4144418 () Bool)

(assert (=> b!4144418 (= e!2571461 e!2571456)))

(assert (=> b!4144418 (= c!710261 ((_ is Union!12295) (regex!7390 rBis!149)))))

(declare-fun b!4144419 () Bool)

(declare-fun res!1696093 () Bool)

(declare-fun e!2571455 () Bool)

(assert (=> b!4144419 (=> res!1696093 e!2571455)))

(assert (=> b!4144419 (= res!1696093 (not ((_ is Concat!19916) (regex!7390 rBis!149))))))

(assert (=> b!4144419 (= e!2571456 e!2571455)))

(declare-fun b!4144420 () Bool)

(declare-fun e!2571460 () Bool)

(assert (=> b!4144420 (= e!2571460 e!2571461)))

(assert (=> b!4144420 (= c!710260 ((_ is Star!12295) (regex!7390 rBis!149)))))

(declare-fun d!1226652 () Bool)

(declare-fun res!1696091 () Bool)

(assert (=> d!1226652 (=> res!1696091 e!2571460)))

(assert (=> d!1226652 (= res!1696091 ((_ is ElementMatch!12295) (regex!7390 rBis!149)))))

(assert (=> d!1226652 (= (validRegex!5541 (regex!7390 rBis!149)) e!2571460)))

(declare-fun b!4144415 () Bool)

(assert (=> b!4144415 (= e!2571455 e!2571457)))

(declare-fun res!1696090 () Bool)

(assert (=> b!4144415 (=> (not res!1696090) (not e!2571457))))

(assert (=> b!4144415 (= res!1696090 call!290617)))

(declare-fun b!4144421 () Bool)

(assert (=> b!4144421 (= e!2571459 call!290615)))

(declare-fun b!4144422 () Bool)

(assert (=> b!4144422 (= e!2571458 call!290616)))

(assert (= (and d!1226652 (not res!1696091)) b!4144420))

(assert (= (and b!4144420 c!710260) b!4144416))

(assert (= (and b!4144420 (not c!710260)) b!4144418))

(assert (= (and b!4144416 res!1696094) b!4144422))

(assert (= (and b!4144418 c!710261) b!4144417))

(assert (= (and b!4144418 (not c!710261)) b!4144419))

(assert (= (and b!4144417 res!1696092) b!4144421))

(assert (= (and b!4144419 (not res!1696093)) b!4144415))

(assert (= (and b!4144415 res!1696090) b!4144414))

(assert (= (or b!4144417 b!4144415) bm!290611))

(assert (= (or b!4144421 b!4144414) bm!290610))

(assert (= (or b!4144422 bm!290611) bm!290612))

(declare-fun m!4740559 () Bool)

(assert (=> b!4144416 m!4740559))

(declare-fun m!4740561 () Bool)

(assert (=> bm!290610 m!4740561))

(declare-fun m!4740563 () Bool)

(assert (=> bm!290612 m!4740563))

(assert (=> b!4143947 d!1226652))

(declare-fun d!1226654 () Bool)

(declare-fun lt!1478157 () Int)

(assert (=> d!1226654 (= lt!1478157 (size!33319 (list!16471 lt!1478011)))))

(declare-fun size!33322 (Conc!13601) Int)

(assert (=> d!1226654 (= lt!1478157 (size!33322 (c!710182 lt!1478011)))))

(assert (=> d!1226654 (= (size!33320 lt!1478011) lt!1478157)))

(declare-fun bs!595313 () Bool)

(assert (= bs!595313 d!1226654))

(assert (=> bs!595313 m!4740215))

(assert (=> bs!595313 m!4740215))

(declare-fun m!4740565 () Bool)

(assert (=> bs!595313 m!4740565))

(declare-fun m!4740567 () Bool)

(assert (=> bs!595313 m!4740567))

(assert (=> b!4143966 d!1226654))

(declare-fun d!1226656 () Bool)

(declare-fun lt!1478160 () BalanceConc!26796)

(assert (=> d!1226656 (= (list!16471 lt!1478160) (originalCharacters!7886 (_1!24803 lt!1478013)))))

(assert (=> d!1226656 (= lt!1478160 (dynLambda!19356 (toChars!9913 (transformation!7390 (rule!10508 (_1!24803 lt!1478013)))) (value!231169 (_1!24803 lt!1478013))))))

(assert (=> d!1226656 (= (charsOf!4989 (_1!24803 lt!1478013)) lt!1478160)))

(declare-fun b_lambda!121843 () Bool)

(assert (=> (not b_lambda!121843) (not d!1226656)))

(declare-fun t!342642 () Bool)

(declare-fun tb!248775 () Bool)

(assert (=> (and b!4143957 (= (toChars!9913 (transformation!7390 r!4008)) (toChars!9913 (transformation!7390 (rule!10508 (_1!24803 lt!1478013))))) t!342642) tb!248775))

(declare-fun b!4144423 () Bool)

(declare-fun e!2571462 () Bool)

(declare-fun tp!1263159 () Bool)

(assert (=> b!4144423 (= e!2571462 (and (inv!59571 (c!710182 (dynLambda!19356 (toChars!9913 (transformation!7390 (rule!10508 (_1!24803 lt!1478013)))) (value!231169 (_1!24803 lt!1478013))))) tp!1263159))))

(declare-fun result!302546 () Bool)

(assert (=> tb!248775 (= result!302546 (and (inv!59572 (dynLambda!19356 (toChars!9913 (transformation!7390 (rule!10508 (_1!24803 lt!1478013)))) (value!231169 (_1!24803 lt!1478013)))) e!2571462))))

(assert (= tb!248775 b!4144423))

(declare-fun m!4740569 () Bool)

(assert (=> b!4144423 m!4740569))

(declare-fun m!4740571 () Bool)

(assert (=> tb!248775 m!4740571))

(assert (=> d!1226656 t!342642))

(declare-fun b_and!322003 () Bool)

(assert (= b_and!321985 (and (=> t!342642 result!302546) b_and!322003)))

(declare-fun t!342644 () Bool)

(declare-fun tb!248777 () Bool)

(assert (=> (and b!4143952 (= (toChars!9913 (transformation!7390 (h!50381 rules!3756))) (toChars!9913 (transformation!7390 (rule!10508 (_1!24803 lt!1478013))))) t!342644) tb!248777))

(declare-fun result!302548 () Bool)

(assert (= result!302548 result!302546))

(assert (=> d!1226656 t!342644))

(declare-fun b_and!322005 () Bool)

(assert (= b_and!321987 (and (=> t!342644 result!302548) b_and!322005)))

(declare-fun tb!248779 () Bool)

(declare-fun t!342646 () Bool)

(assert (=> (and b!4143944 (= (toChars!9913 (transformation!7390 rBis!149)) (toChars!9913 (transformation!7390 (rule!10508 (_1!24803 lt!1478013))))) t!342646) tb!248779))

(declare-fun result!302550 () Bool)

(assert (= result!302550 result!302546))

(assert (=> d!1226656 t!342646))

(declare-fun b_and!322007 () Bool)

(assert (= b_and!321989 (and (=> t!342646 result!302550) b_and!322007)))

(declare-fun m!4740573 () Bool)

(assert (=> d!1226656 m!4740573))

(declare-fun m!4740575 () Bool)

(assert (=> d!1226656 m!4740575))

(assert (=> b!4143966 d!1226656))

(declare-fun d!1226658 () Bool)

(assert (=> d!1226658 (= (get!14680 lt!1478017) (v!40341 lt!1478017))))

(assert (=> b!4143966 d!1226658))

(declare-fun d!1226660 () Bool)

(declare-fun lt!1478161 () Int)

(assert (=> d!1226660 (>= lt!1478161 0)))

(declare-fun e!2571463 () Int)

(assert (=> d!1226660 (= lt!1478161 e!2571463)))

(declare-fun c!710262 () Bool)

(assert (=> d!1226660 (= c!710262 ((_ is Nil!44960) input!3238))))

(assert (=> d!1226660 (= (size!33319 input!3238) lt!1478161)))

(declare-fun b!4144424 () Bool)

(assert (=> b!4144424 (= e!2571463 0)))

(declare-fun b!4144425 () Bool)

(assert (=> b!4144425 (= e!2571463 (+ 1 (size!33319 (t!342603 input!3238))))))

(assert (= (and d!1226660 c!710262) b!4144424))

(assert (= (and d!1226660 (not c!710262)) b!4144425))

(declare-fun m!4740577 () Bool)

(assert (=> b!4144425 m!4740577))

(assert (=> b!4143945 d!1226660))

(declare-fun d!1226662 () Bool)

(assert (=> d!1226662 (= (isEmpty!26825 p!2912) ((_ is Nil!44960) p!2912))))

(assert (=> b!4143954 d!1226662))

(declare-fun b!4144426 () Bool)

(declare-fun e!2571470 () Bool)

(declare-fun lt!1478162 () Bool)

(assert (=> b!4144426 (= e!2571470 (not lt!1478162))))

(declare-fun b!4144427 () Bool)

(declare-fun e!2571465 () Bool)

(declare-fun call!290618 () Bool)

(assert (=> b!4144427 (= e!2571465 (= lt!1478162 call!290618))))

(declare-fun b!4144428 () Bool)

(declare-fun res!1696099 () Bool)

(declare-fun e!2571469 () Bool)

(assert (=> b!4144428 (=> res!1696099 e!2571469)))

(declare-fun e!2571464 () Bool)

(assert (=> b!4144428 (= res!1696099 e!2571464)))

(declare-fun res!1696096 () Bool)

(assert (=> b!4144428 (=> (not res!1696096) (not e!2571464))))

(assert (=> b!4144428 (= res!1696096 lt!1478162)))

(declare-fun b!4144429 () Bool)

(declare-fun res!1696097 () Bool)

(assert (=> b!4144429 (=> res!1696097 e!2571469)))

(assert (=> b!4144429 (= res!1696097 (not ((_ is ElementMatch!12295) (regex!7390 r!4008))))))

(assert (=> b!4144429 (= e!2571470 e!2571469)))

(declare-fun b!4144430 () Bool)

(assert (=> b!4144430 (= e!2571464 (= (head!8744 p!2912) (c!710183 (regex!7390 r!4008))))))

(declare-fun b!4144431 () Bool)

(declare-fun e!2571467 () Bool)

(assert (=> b!4144431 (= e!2571467 (nullable!4331 (regex!7390 r!4008)))))

(declare-fun b!4144432 () Bool)

(assert (=> b!4144432 (= e!2571465 e!2571470)))

(declare-fun c!710265 () Bool)

(assert (=> b!4144432 (= c!710265 ((_ is EmptyLang!12295) (regex!7390 r!4008)))))

(declare-fun bm!290613 () Bool)

(assert (=> bm!290613 (= call!290618 (isEmpty!26825 p!2912))))

(declare-fun b!4144433 () Bool)

(declare-fun res!1696098 () Bool)

(assert (=> b!4144433 (=> (not res!1696098) (not e!2571464))))

(assert (=> b!4144433 (= res!1696098 (isEmpty!26825 (tail!6571 p!2912)))))

(declare-fun d!1226664 () Bool)

(assert (=> d!1226664 e!2571465))

(declare-fun c!710264 () Bool)

(assert (=> d!1226664 (= c!710264 ((_ is EmptyExpr!12295) (regex!7390 r!4008)))))

(assert (=> d!1226664 (= lt!1478162 e!2571467)))

(declare-fun c!710263 () Bool)

(assert (=> d!1226664 (= c!710263 (isEmpty!26825 p!2912))))

(assert (=> d!1226664 (validRegex!5541 (regex!7390 r!4008))))

(assert (=> d!1226664 (= (matchR!6124 (regex!7390 r!4008) p!2912) lt!1478162)))

(declare-fun b!4144434 () Bool)

(assert (=> b!4144434 (= e!2571467 (matchR!6124 (derivativeStep!3725 (regex!7390 r!4008) (head!8744 p!2912)) (tail!6571 p!2912)))))

(declare-fun b!4144435 () Bool)

(declare-fun res!1696100 () Bool)

(declare-fun e!2571468 () Bool)

(assert (=> b!4144435 (=> res!1696100 e!2571468)))

(assert (=> b!4144435 (= res!1696100 (not (isEmpty!26825 (tail!6571 p!2912))))))

(declare-fun b!4144436 () Bool)

(declare-fun res!1696095 () Bool)

(assert (=> b!4144436 (=> (not res!1696095) (not e!2571464))))

(assert (=> b!4144436 (= res!1696095 (not call!290618))))

(declare-fun b!4144437 () Bool)

(declare-fun e!2571466 () Bool)

(assert (=> b!4144437 (= e!2571469 e!2571466)))

(declare-fun res!1696101 () Bool)

(assert (=> b!4144437 (=> (not res!1696101) (not e!2571466))))

(assert (=> b!4144437 (= res!1696101 (not lt!1478162))))

(declare-fun b!4144438 () Bool)

(assert (=> b!4144438 (= e!2571466 e!2571468)))

(declare-fun res!1696102 () Bool)

(assert (=> b!4144438 (=> res!1696102 e!2571468)))

(assert (=> b!4144438 (= res!1696102 call!290618)))

(declare-fun b!4144439 () Bool)

(assert (=> b!4144439 (= e!2571468 (not (= (head!8744 p!2912) (c!710183 (regex!7390 r!4008)))))))

(assert (= (and d!1226664 c!710263) b!4144431))

(assert (= (and d!1226664 (not c!710263)) b!4144434))

(assert (= (and d!1226664 c!710264) b!4144427))

(assert (= (and d!1226664 (not c!710264)) b!4144432))

(assert (= (and b!4144432 c!710265) b!4144426))

(assert (= (and b!4144432 (not c!710265)) b!4144429))

(assert (= (and b!4144429 (not res!1696097)) b!4144428))

(assert (= (and b!4144428 res!1696096) b!4144436))

(assert (= (and b!4144436 res!1696095) b!4144433))

(assert (= (and b!4144433 res!1696098) b!4144430))

(assert (= (and b!4144428 (not res!1696099)) b!4144437))

(assert (= (and b!4144437 res!1696101) b!4144438))

(assert (= (and b!4144438 (not res!1696102)) b!4144435))

(assert (= (and b!4144435 (not res!1696100)) b!4144439))

(assert (= (or b!4144427 b!4144436 b!4144438) bm!290613))

(declare-fun m!4740579 () Bool)

(assert (=> b!4144433 m!4740579))

(assert (=> b!4144433 m!4740579))

(declare-fun m!4740581 () Bool)

(assert (=> b!4144433 m!4740581))

(assert (=> d!1226664 m!4740219))

(declare-fun m!4740583 () Bool)

(assert (=> d!1226664 m!4740583))

(assert (=> b!4144435 m!4740579))

(assert (=> b!4144435 m!4740579))

(assert (=> b!4144435 m!4740581))

(declare-fun m!4740585 () Bool)

(assert (=> b!4144430 m!4740585))

(assert (=> b!4144439 m!4740585))

(assert (=> b!4144434 m!4740585))

(assert (=> b!4144434 m!4740585))

(declare-fun m!4740587 () Bool)

(assert (=> b!4144434 m!4740587))

(assert (=> b!4144434 m!4740579))

(assert (=> b!4144434 m!4740587))

(assert (=> b!4144434 m!4740579))

(declare-fun m!4740589 () Bool)

(assert (=> b!4144434 m!4740589))

(declare-fun m!4740591 () Bool)

(assert (=> b!4144431 m!4740591))

(assert (=> bm!290613 m!4740219))

(assert (=> b!4143965 d!1226664))

(declare-fun b!4144440 () Bool)

(declare-fun e!2571472 () Bool)

(declare-fun e!2571471 () Bool)

(assert (=> b!4144440 (= e!2571472 e!2571471)))

(declare-fun res!1696106 () Bool)

(assert (=> b!4144440 (=> (not res!1696106) (not e!2571471))))

(assert (=> b!4144440 (= res!1696106 (not ((_ is Nil!44960) lt!1478018)))))

(declare-fun b!4144442 () Bool)

(assert (=> b!4144442 (= e!2571471 (isPrefix!4325 (tail!6571 lt!1478019) (tail!6571 lt!1478018)))))

(declare-fun b!4144441 () Bool)

(declare-fun res!1696105 () Bool)

(assert (=> b!4144441 (=> (not res!1696105) (not e!2571471))))

(assert (=> b!4144441 (= res!1696105 (= (head!8744 lt!1478019) (head!8744 lt!1478018)))))

(declare-fun d!1226666 () Bool)

(declare-fun e!2571473 () Bool)

(assert (=> d!1226666 e!2571473))

(declare-fun res!1696103 () Bool)

(assert (=> d!1226666 (=> res!1696103 e!2571473)))

(declare-fun lt!1478163 () Bool)

(assert (=> d!1226666 (= res!1696103 (not lt!1478163))))

(assert (=> d!1226666 (= lt!1478163 e!2571472)))

(declare-fun res!1696104 () Bool)

(assert (=> d!1226666 (=> res!1696104 e!2571472)))

(assert (=> d!1226666 (= res!1696104 ((_ is Nil!44960) lt!1478019))))

(assert (=> d!1226666 (= (isPrefix!4325 lt!1478019 lt!1478018) lt!1478163)))

(declare-fun b!4144443 () Bool)

(assert (=> b!4144443 (= e!2571473 (>= (size!33319 lt!1478018) (size!33319 lt!1478019)))))

(assert (= (and d!1226666 (not res!1696104)) b!4144440))

(assert (= (and b!4144440 res!1696106) b!4144441))

(assert (= (and b!4144441 res!1696105) b!4144442))

(assert (= (and d!1226666 (not res!1696103)) b!4144443))

(assert (=> b!4144442 m!4740279))

(declare-fun m!4740593 () Bool)

(assert (=> b!4144442 m!4740593))

(assert (=> b!4144442 m!4740279))

(assert (=> b!4144442 m!4740593))

(declare-fun m!4740595 () Bool)

(assert (=> b!4144442 m!4740595))

(assert (=> b!4144441 m!4740285))

(declare-fun m!4740597 () Bool)

(assert (=> b!4144441 m!4740597))

(declare-fun m!4740599 () Bool)

(assert (=> b!4144443 m!4740599))

(assert (=> b!4144443 m!4740189))

(assert (=> b!4143955 d!1226666))

(declare-fun lt!1478166 () List!45084)

(declare-fun b!4144455 () Bool)

(declare-fun e!2571478 () Bool)

(assert (=> b!4144455 (= e!2571478 (or (not (= (_2!24803 lt!1478013) Nil!44960)) (= lt!1478166 lt!1478019)))))

(declare-fun b!4144452 () Bool)

(declare-fun e!2571479 () List!45084)

(assert (=> b!4144452 (= e!2571479 (_2!24803 lt!1478013))))

(declare-fun d!1226668 () Bool)

(assert (=> d!1226668 e!2571478))

(declare-fun res!1696111 () Bool)

(assert (=> d!1226668 (=> (not res!1696111) (not e!2571478))))

(declare-fun content!6957 (List!45084) (InoxSet C!24776))

(assert (=> d!1226668 (= res!1696111 (= (content!6957 lt!1478166) ((_ map or) (content!6957 lt!1478019) (content!6957 (_2!24803 lt!1478013)))))))

(assert (=> d!1226668 (= lt!1478166 e!2571479)))

(declare-fun c!710268 () Bool)

(assert (=> d!1226668 (= c!710268 ((_ is Nil!44960) lt!1478019))))

(assert (=> d!1226668 (= (++!11630 lt!1478019 (_2!24803 lt!1478013)) lt!1478166)))

(declare-fun b!4144454 () Bool)

(declare-fun res!1696112 () Bool)

(assert (=> b!4144454 (=> (not res!1696112) (not e!2571478))))

(assert (=> b!4144454 (= res!1696112 (= (size!33319 lt!1478166) (+ (size!33319 lt!1478019) (size!33319 (_2!24803 lt!1478013)))))))

(declare-fun b!4144453 () Bool)

(assert (=> b!4144453 (= e!2571479 (Cons!44960 (h!50380 lt!1478019) (++!11630 (t!342603 lt!1478019) (_2!24803 lt!1478013))))))

(assert (= (and d!1226668 c!710268) b!4144452))

(assert (= (and d!1226668 (not c!710268)) b!4144453))

(assert (= (and d!1226668 res!1696111) b!4144454))

(assert (= (and b!4144454 res!1696112) b!4144455))

(declare-fun m!4740601 () Bool)

(assert (=> d!1226668 m!4740601))

(declare-fun m!4740603 () Bool)

(assert (=> d!1226668 m!4740603))

(declare-fun m!4740605 () Bool)

(assert (=> d!1226668 m!4740605))

(declare-fun m!4740607 () Bool)

(assert (=> b!4144454 m!4740607))

(assert (=> b!4144454 m!4740189))

(declare-fun m!4740609 () Bool)

(assert (=> b!4144454 m!4740609))

(declare-fun m!4740611 () Bool)

(assert (=> b!4144453 m!4740611))

(assert (=> b!4143955 d!1226668))

(declare-fun d!1226670 () Bool)

(assert (=> d!1226670 (isPrefix!4325 lt!1478019 (++!11630 lt!1478019 (_2!24803 lt!1478013)))))

(declare-fun lt!1478169 () Unit!64253)

(declare-fun choose!25363 (List!45084 List!45084) Unit!64253)

(assert (=> d!1226670 (= lt!1478169 (choose!25363 lt!1478019 (_2!24803 lt!1478013)))))

(assert (=> d!1226670 (= (lemmaConcatTwoListThenFirstIsPrefix!2954 lt!1478019 (_2!24803 lt!1478013)) lt!1478169)))

(declare-fun bs!595314 () Bool)

(assert (= bs!595314 d!1226670))

(assert (=> bs!595314 m!4740211))

(assert (=> bs!595314 m!4740211))

(declare-fun m!4740613 () Bool)

(assert (=> bs!595314 m!4740613))

(declare-fun m!4740615 () Bool)

(assert (=> bs!595314 m!4740615))

(assert (=> b!4143955 d!1226670))

(declare-fun d!1226672 () Bool)

(declare-fun list!16473 (Conc!13601) List!45084)

(assert (=> d!1226672 (= (list!16471 lt!1478011) (list!16473 (c!710182 lt!1478011)))))

(declare-fun bs!595315 () Bool)

(assert (= bs!595315 d!1226672))

(declare-fun m!4740617 () Bool)

(assert (=> bs!595315 m!4740617))

(assert (=> b!4143955 d!1226672))

(declare-fun d!1226674 () Bool)

(declare-fun lt!1478170 () Bool)

(assert (=> d!1226674 (= lt!1478170 (select (content!6956 (tail!6569 rules!3756)) r!4008))))

(declare-fun e!2571480 () Bool)

(assert (=> d!1226674 (= lt!1478170 e!2571480)))

(declare-fun res!1696113 () Bool)

(assert (=> d!1226674 (=> (not res!1696113) (not e!2571480))))

(assert (=> d!1226674 (= res!1696113 ((_ is Cons!44961) (tail!6569 rules!3756)))))

(assert (=> d!1226674 (= (contains!9070 (tail!6569 rules!3756) r!4008) lt!1478170)))

(declare-fun b!4144456 () Bool)

(declare-fun e!2571481 () Bool)

(assert (=> b!4144456 (= e!2571480 e!2571481)))

(declare-fun res!1696114 () Bool)

(assert (=> b!4144456 (=> res!1696114 e!2571481)))

(assert (=> b!4144456 (= res!1696114 (= (h!50381 (tail!6569 rules!3756)) r!4008))))

(declare-fun b!4144457 () Bool)

(assert (=> b!4144457 (= e!2571481 (contains!9070 (t!342604 (tail!6569 rules!3756)) r!4008))))

(assert (= (and d!1226674 res!1696113) b!4144456))

(assert (= (and b!4144456 (not res!1696114)) b!4144457))

(assert (=> d!1226674 m!4740143))

(declare-fun m!4740619 () Bool)

(assert (=> d!1226674 m!4740619))

(declare-fun m!4740621 () Bool)

(assert (=> d!1226674 m!4740621))

(declare-fun m!4740623 () Bool)

(assert (=> b!4144457 m!4740623))

(assert (=> b!4143942 d!1226674))

(declare-fun d!1226676 () Bool)

(assert (=> d!1226676 (= (tail!6569 rules!3756) (t!342604 rules!3756))))

(assert (=> b!4143942 d!1226676))

(declare-fun d!1226678 () Bool)

(assert (=> d!1226678 (contains!9070 (tail!6569 rules!3756) r!4008)))

(declare-fun lt!1478173 () Unit!64253)

(declare-fun choose!25364 (List!45085 Rule!14580 Rule!14580) Unit!64253)

(assert (=> d!1226678 (= lt!1478173 (choose!25364 rules!3756 rBis!149 r!4008))))

(declare-fun e!2571484 () Bool)

(assert (=> d!1226678 e!2571484))

(declare-fun res!1696117 () Bool)

(assert (=> d!1226678 (=> (not res!1696117) (not e!2571484))))

(assert (=> d!1226678 (= res!1696117 (contains!9070 rules!3756 rBis!149))))

(assert (=> d!1226678 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!94 rules!3756 rBis!149 r!4008) lt!1478173)))

(declare-fun b!4144460 () Bool)

(assert (=> b!4144460 (= e!2571484 (contains!9070 rules!3756 r!4008))))

(assert (= (and d!1226678 res!1696117) b!4144460))

(assert (=> d!1226678 m!4740143))

(assert (=> d!1226678 m!4740143))

(assert (=> d!1226678 m!4740151))

(declare-fun m!4740625 () Bool)

(assert (=> d!1226678 m!4740625))

(assert (=> d!1226678 m!4740157))

(assert (=> b!4144460 m!4740139))

(assert (=> b!4143942 d!1226678))

(declare-fun b!4144479 () Bool)

(declare-fun e!2571495 () Option!9696)

(declare-datatypes ((tuple2!43342 0))(
  ( (tuple2!43343 (_1!24805 List!45084) (_2!24805 List!45084)) )
))
(declare-fun lt!1478188 () tuple2!43342)

(assert (=> b!4144479 (= e!2571495 (Some!9695 (tuple2!43339 (Token!13711 (apply!10463 (transformation!7390 rBis!149) (seqFromList!5507 (_1!24805 lt!1478188))) rBis!149 (size!33320 (seqFromList!5507 (_1!24805 lt!1478188))) (_1!24805 lt!1478188)) (_2!24805 lt!1478188))))))

(declare-fun lt!1478186 () Unit!64253)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1508 (Regex!12295 List!45084) Unit!64253)

(assert (=> b!4144479 (= lt!1478186 (longestMatchIsAcceptedByMatchOrIsEmpty!1508 (regex!7390 rBis!149) input!3238))))

(declare-fun res!1696134 () Bool)

(declare-fun findLongestMatchInner!1535 (Regex!12295 List!45084 Int List!45084 List!45084 Int) tuple2!43342)

(assert (=> b!4144479 (= res!1696134 (isEmpty!26825 (_1!24805 (findLongestMatchInner!1535 (regex!7390 rBis!149) Nil!44960 (size!33319 Nil!44960) input!3238 input!3238 (size!33319 input!3238)))))))

(declare-fun e!2571493 () Bool)

(assert (=> b!4144479 (=> res!1696134 e!2571493)))

(assert (=> b!4144479 e!2571493))

(declare-fun lt!1478184 () Unit!64253)

(assert (=> b!4144479 (= lt!1478184 lt!1478186)))

(declare-fun lt!1478185 () Unit!64253)

(assert (=> b!4144479 (= lt!1478185 (lemmaSemiInverse!2248 (transformation!7390 rBis!149) (seqFromList!5507 (_1!24805 lt!1478188))))))

(declare-fun b!4144480 () Bool)

(declare-fun e!2571496 () Bool)

(declare-fun e!2571494 () Bool)

(assert (=> b!4144480 (= e!2571496 e!2571494)))

(declare-fun res!1696136 () Bool)

(assert (=> b!4144480 (=> (not res!1696136) (not e!2571494))))

(declare-fun lt!1478187 () Option!9696)

(assert (=> b!4144480 (= res!1696136 (matchR!6124 (regex!7390 rBis!149) (list!16471 (charsOf!4989 (_1!24803 (get!14680 lt!1478187))))))))

(declare-fun b!4144481 () Bool)

(assert (=> b!4144481 (= e!2571493 (matchR!6124 (regex!7390 rBis!149) (_1!24805 (findLongestMatchInner!1535 (regex!7390 rBis!149) Nil!44960 (size!33319 Nil!44960) input!3238 input!3238 (size!33319 input!3238)))))))

(declare-fun b!4144482 () Bool)

(declare-fun res!1696133 () Bool)

(assert (=> b!4144482 (=> (not res!1696133) (not e!2571494))))

(assert (=> b!4144482 (= res!1696133 (< (size!33319 (_2!24803 (get!14680 lt!1478187))) (size!33319 input!3238)))))

(declare-fun b!4144483 () Bool)

(assert (=> b!4144483 (= e!2571495 None!9695)))

(declare-fun d!1226680 () Bool)

(assert (=> d!1226680 e!2571496))

(declare-fun res!1696132 () Bool)

(assert (=> d!1226680 (=> res!1696132 e!2571496)))

(assert (=> d!1226680 (= res!1696132 (isEmpty!26824 lt!1478187))))

(assert (=> d!1226680 (= lt!1478187 e!2571495)))

(declare-fun c!710271 () Bool)

(assert (=> d!1226680 (= c!710271 (isEmpty!26825 (_1!24805 lt!1478188)))))

(declare-fun findLongestMatch!1448 (Regex!12295 List!45084) tuple2!43342)

(assert (=> d!1226680 (= lt!1478188 (findLongestMatch!1448 (regex!7390 rBis!149) input!3238))))

(assert (=> d!1226680 (ruleValid!3196 thiss!25645 rBis!149)))

(assert (=> d!1226680 (= (maxPrefixOneRule!3108 thiss!25645 rBis!149 input!3238) lt!1478187)))

(declare-fun b!4144484 () Bool)

(assert (=> b!4144484 (= e!2571494 (= (size!33318 (_1!24803 (get!14680 lt!1478187))) (size!33319 (originalCharacters!7886 (_1!24803 (get!14680 lt!1478187))))))))

(declare-fun b!4144485 () Bool)

(declare-fun res!1696138 () Bool)

(assert (=> b!4144485 (=> (not res!1696138) (not e!2571494))))

(assert (=> b!4144485 (= res!1696138 (= (++!11630 (list!16471 (charsOf!4989 (_1!24803 (get!14680 lt!1478187)))) (_2!24803 (get!14680 lt!1478187))) input!3238))))

(declare-fun b!4144486 () Bool)

(declare-fun res!1696137 () Bool)

(assert (=> b!4144486 (=> (not res!1696137) (not e!2571494))))

(assert (=> b!4144486 (= res!1696137 (= (value!231169 (_1!24803 (get!14680 lt!1478187))) (apply!10463 (transformation!7390 (rule!10508 (_1!24803 (get!14680 lt!1478187)))) (seqFromList!5507 (originalCharacters!7886 (_1!24803 (get!14680 lt!1478187)))))))))

(declare-fun b!4144487 () Bool)

(declare-fun res!1696135 () Bool)

(assert (=> b!4144487 (=> (not res!1696135) (not e!2571494))))

(assert (=> b!4144487 (= res!1696135 (= (rule!10508 (_1!24803 (get!14680 lt!1478187))) rBis!149))))

(assert (= (and d!1226680 c!710271) b!4144483))

(assert (= (and d!1226680 (not c!710271)) b!4144479))

(assert (= (and b!4144479 (not res!1696134)) b!4144481))

(assert (= (and d!1226680 (not res!1696132)) b!4144480))

(assert (= (and b!4144480 res!1696136) b!4144485))

(assert (= (and b!4144485 res!1696138) b!4144482))

(assert (= (and b!4144482 res!1696133) b!4144487))

(assert (= (and b!4144487 res!1696135) b!4144486))

(assert (= (and b!4144486 res!1696137) b!4144484))

(declare-fun m!4740627 () Bool)

(assert (=> d!1226680 m!4740627))

(declare-fun m!4740629 () Bool)

(assert (=> d!1226680 m!4740629))

(declare-fun m!4740631 () Bool)

(assert (=> d!1226680 m!4740631))

(assert (=> d!1226680 m!4740225))

(declare-fun m!4740633 () Bool)

(assert (=> b!4144482 m!4740633))

(declare-fun m!4740635 () Bool)

(assert (=> b!4144482 m!4740635))

(assert (=> b!4144482 m!4740163))

(assert (=> b!4144486 m!4740633))

(declare-fun m!4740637 () Bool)

(assert (=> b!4144486 m!4740637))

(assert (=> b!4144486 m!4740637))

(declare-fun m!4740639 () Bool)

(assert (=> b!4144486 m!4740639))

(declare-fun m!4740641 () Bool)

(assert (=> b!4144479 m!4740641))

(declare-fun m!4740643 () Bool)

(assert (=> b!4144479 m!4740643))

(assert (=> b!4144479 m!4740163))

(assert (=> b!4144479 m!4740641))

(declare-fun m!4740645 () Bool)

(assert (=> b!4144479 m!4740645))

(assert (=> b!4144479 m!4740641))

(declare-fun m!4740647 () Bool)

(assert (=> b!4144479 m!4740647))

(declare-fun m!4740649 () Bool)

(assert (=> b!4144479 m!4740649))

(assert (=> b!4144479 m!4740163))

(declare-fun m!4740651 () Bool)

(assert (=> b!4144479 m!4740651))

(assert (=> b!4144479 m!4740641))

(declare-fun m!4740653 () Bool)

(assert (=> b!4144479 m!4740653))

(assert (=> b!4144479 m!4740649))

(declare-fun m!4740655 () Bool)

(assert (=> b!4144479 m!4740655))

(assert (=> b!4144484 m!4740633))

(declare-fun m!4740657 () Bool)

(assert (=> b!4144484 m!4740657))

(assert (=> b!4144481 m!4740649))

(assert (=> b!4144481 m!4740163))

(assert (=> b!4144481 m!4740649))

(assert (=> b!4144481 m!4740163))

(assert (=> b!4144481 m!4740651))

(declare-fun m!4740659 () Bool)

(assert (=> b!4144481 m!4740659))

(assert (=> b!4144480 m!4740633))

(declare-fun m!4740661 () Bool)

(assert (=> b!4144480 m!4740661))

(assert (=> b!4144480 m!4740661))

(declare-fun m!4740663 () Bool)

(assert (=> b!4144480 m!4740663))

(assert (=> b!4144480 m!4740663))

(declare-fun m!4740665 () Bool)

(assert (=> b!4144480 m!4740665))

(assert (=> b!4144487 m!4740633))

(assert (=> b!4144485 m!4740633))

(assert (=> b!4144485 m!4740661))

(assert (=> b!4144485 m!4740661))

(assert (=> b!4144485 m!4740663))

(assert (=> b!4144485 m!4740663))

(declare-fun m!4740667 () Bool)

(assert (=> b!4144485 m!4740667))

(assert (=> b!4143942 d!1226680))

(declare-fun d!1226682 () Bool)

(assert (=> d!1226682 (= (isEmpty!26824 lt!1478017) (not ((_ is Some!9695) lt!1478017)))))

(assert (=> b!4143942 d!1226682))

(declare-fun d!1226684 () Bool)

(assert (=> d!1226684 (not (= rBis!149 r!4008))))

(declare-fun lt!1478191 () Unit!64253)

(declare-fun choose!25365 (LexerInterface!6979 List!45085 Rule!14580 Rule!14580) Unit!64253)

(assert (=> d!1226684 (= lt!1478191 (choose!25365 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1226684 (contains!9070 rules!3756 rBis!149)))

(assert (=> d!1226684 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!88 thiss!25645 rules!3756 rBis!149 r!4008) lt!1478191)))

(declare-fun bs!595316 () Bool)

(assert (= bs!595316 d!1226684))

(declare-fun m!4740669 () Bool)

(assert (=> bs!595316 m!4740669))

(assert (=> bs!595316 m!4740157))

(assert (=> b!4143942 d!1226684))

(declare-fun d!1226686 () Bool)

(declare-fun res!1696139 () Bool)

(declare-fun e!2571497 () Bool)

(assert (=> d!1226686 (=> (not res!1696139) (not e!2571497))))

(assert (=> d!1226686 (= res!1696139 (validRegex!5541 (regex!7390 r!4008)))))

(assert (=> d!1226686 (= (ruleValid!3196 thiss!25645 r!4008) e!2571497)))

(declare-fun b!4144488 () Bool)

(declare-fun res!1696140 () Bool)

(assert (=> b!4144488 (=> (not res!1696140) (not e!2571497))))

(assert (=> b!4144488 (= res!1696140 (not (nullable!4331 (regex!7390 r!4008))))))

(declare-fun b!4144489 () Bool)

(assert (=> b!4144489 (= e!2571497 (not (= (tag!8250 r!4008) (String!51851 ""))))))

(assert (= (and d!1226686 res!1696139) b!4144488))

(assert (= (and b!4144488 res!1696140) b!4144489))

(assert (=> d!1226686 m!4740583))

(assert (=> b!4144488 m!4740591))

(assert (=> b!4143953 d!1226686))

(declare-fun d!1226688 () Bool)

(assert (=> d!1226688 (= (inv!59566 (tag!8250 rBis!149)) (= (mod (str.len (value!231168 (tag!8250 rBis!149))) 2) 0))))

(assert (=> b!4143964 d!1226688))

(declare-fun d!1226690 () Bool)

(declare-fun res!1696141 () Bool)

(declare-fun e!2571498 () Bool)

(assert (=> d!1226690 (=> (not res!1696141) (not e!2571498))))

(assert (=> d!1226690 (= res!1696141 (semiInverseModEq!3195 (toChars!9913 (transformation!7390 rBis!149)) (toValue!10054 (transformation!7390 rBis!149))))))

(assert (=> d!1226690 (= (inv!59568 (transformation!7390 rBis!149)) e!2571498)))

(declare-fun b!4144490 () Bool)

(assert (=> b!4144490 (= e!2571498 (equivClasses!3094 (toChars!9913 (transformation!7390 rBis!149)) (toValue!10054 (transformation!7390 rBis!149))))))

(assert (= (and d!1226690 res!1696141) b!4144490))

(declare-fun m!4740671 () Bool)

(assert (=> d!1226690 m!4740671))

(declare-fun m!4740673 () Bool)

(assert (=> b!4144490 m!4740673))

(assert (=> b!4143964 d!1226690))

(declare-fun d!1226692 () Bool)

(assert (=> d!1226692 (= (inv!59566 (tag!8250 r!4008)) (= (mod (str.len (value!231168 (tag!8250 r!4008))) 2) 0))))

(assert (=> b!4143943 d!1226692))

(declare-fun d!1226694 () Bool)

(declare-fun res!1696142 () Bool)

(declare-fun e!2571499 () Bool)

(assert (=> d!1226694 (=> (not res!1696142) (not e!2571499))))

(assert (=> d!1226694 (= res!1696142 (semiInverseModEq!3195 (toChars!9913 (transformation!7390 r!4008)) (toValue!10054 (transformation!7390 r!4008))))))

(assert (=> d!1226694 (= (inv!59568 (transformation!7390 r!4008)) e!2571499)))

(declare-fun b!4144491 () Bool)

(assert (=> b!4144491 (= e!2571499 (equivClasses!3094 (toChars!9913 (transformation!7390 r!4008)) (toValue!10054 (transformation!7390 r!4008))))))

(assert (= (and d!1226694 res!1696142) b!4144491))

(declare-fun m!4740675 () Bool)

(assert (=> d!1226694 m!4740675))

(declare-fun m!4740677 () Bool)

(assert (=> b!4144491 m!4740677))

(assert (=> b!4143943 d!1226694))

(declare-fun b!4144492 () Bool)

(declare-fun e!2571501 () Bool)

(declare-fun e!2571500 () Bool)

(assert (=> b!4144492 (= e!2571501 e!2571500)))

(declare-fun res!1696146 () Bool)

(assert (=> b!4144492 (=> (not res!1696146) (not e!2571500))))

(assert (=> b!4144492 (= res!1696146 (not ((_ is Nil!44960) input!3238)))))

(declare-fun b!4144494 () Bool)

(assert (=> b!4144494 (= e!2571500 (isPrefix!4325 (tail!6571 p!2912) (tail!6571 input!3238)))))

(declare-fun b!4144493 () Bool)

(declare-fun res!1696145 () Bool)

(assert (=> b!4144493 (=> (not res!1696145) (not e!2571500))))

(assert (=> b!4144493 (= res!1696145 (= (head!8744 p!2912) (head!8744 input!3238)))))

(declare-fun d!1226696 () Bool)

(declare-fun e!2571502 () Bool)

(assert (=> d!1226696 e!2571502))

(declare-fun res!1696143 () Bool)

(assert (=> d!1226696 (=> res!1696143 e!2571502)))

(declare-fun lt!1478192 () Bool)

(assert (=> d!1226696 (= res!1696143 (not lt!1478192))))

(assert (=> d!1226696 (= lt!1478192 e!2571501)))

(declare-fun res!1696144 () Bool)

(assert (=> d!1226696 (=> res!1696144 e!2571501)))

(assert (=> d!1226696 (= res!1696144 ((_ is Nil!44960) p!2912))))

(assert (=> d!1226696 (= (isPrefix!4325 p!2912 input!3238) lt!1478192)))

(declare-fun b!4144495 () Bool)

(assert (=> b!4144495 (= e!2571502 (>= (size!33319 input!3238) (size!33319 p!2912)))))

(assert (= (and d!1226696 (not res!1696144)) b!4144492))

(assert (= (and b!4144492 res!1696146) b!4144493))

(assert (= (and b!4144493 res!1696145) b!4144494))

(assert (= (and d!1226696 (not res!1696143)) b!4144495))

(assert (=> b!4144494 m!4740579))

(assert (=> b!4144494 m!4740281))

(assert (=> b!4144494 m!4740579))

(assert (=> b!4144494 m!4740281))

(declare-fun m!4740679 () Bool)

(assert (=> b!4144494 m!4740679))

(assert (=> b!4144493 m!4740585))

(assert (=> b!4144493 m!4740287))

(assert (=> b!4144495 m!4740163))

(assert (=> b!4144495 m!4740175))

(assert (=> b!4143962 d!1226696))

(declare-fun b!4144496 () Bool)

(declare-fun e!2571504 () Bool)

(declare-fun e!2571503 () Bool)

(assert (=> b!4144496 (= e!2571504 e!2571503)))

(declare-fun res!1696150 () Bool)

(assert (=> b!4144496 (=> (not res!1696150) (not e!2571503))))

(assert (=> b!4144496 (= res!1696150 (not ((_ is Nil!44960) input!3238)))))

(declare-fun b!4144498 () Bool)

(assert (=> b!4144498 (= e!2571503 (isPrefix!4325 (tail!6571 input!3238) (tail!6571 input!3238)))))

(declare-fun b!4144497 () Bool)

(declare-fun res!1696149 () Bool)

(assert (=> b!4144497 (=> (not res!1696149) (not e!2571503))))

(assert (=> b!4144497 (= res!1696149 (= (head!8744 input!3238) (head!8744 input!3238)))))

(declare-fun d!1226698 () Bool)

(declare-fun e!2571505 () Bool)

(assert (=> d!1226698 e!2571505))

(declare-fun res!1696147 () Bool)

(assert (=> d!1226698 (=> res!1696147 e!2571505)))

(declare-fun lt!1478193 () Bool)

(assert (=> d!1226698 (= res!1696147 (not lt!1478193))))

(assert (=> d!1226698 (= lt!1478193 e!2571504)))

(declare-fun res!1696148 () Bool)

(assert (=> d!1226698 (=> res!1696148 e!2571504)))

(assert (=> d!1226698 (= res!1696148 ((_ is Nil!44960) input!3238))))

(assert (=> d!1226698 (= (isPrefix!4325 input!3238 input!3238) lt!1478193)))

(declare-fun b!4144499 () Bool)

(assert (=> b!4144499 (= e!2571505 (>= (size!33319 input!3238) (size!33319 input!3238)))))

(assert (= (and d!1226698 (not res!1696148)) b!4144496))

(assert (= (and b!4144496 res!1696150) b!4144497))

(assert (= (and b!4144497 res!1696149) b!4144498))

(assert (= (and d!1226698 (not res!1696147)) b!4144499))

(assert (=> b!4144498 m!4740281))

(assert (=> b!4144498 m!4740281))

(assert (=> b!4144498 m!4740281))

(assert (=> b!4144498 m!4740281))

(declare-fun m!4740681 () Bool)

(assert (=> b!4144498 m!4740681))

(assert (=> b!4144497 m!4740287))

(assert (=> b!4144497 m!4740287))

(assert (=> b!4144499 m!4740163))

(assert (=> b!4144499 m!4740163))

(assert (=> b!4143941 d!1226698))

(declare-fun d!1226700 () Bool)

(assert (=> d!1226700 (isPrefix!4325 input!3238 input!3238)))

(declare-fun lt!1478196 () Unit!64253)

(declare-fun choose!25366 (List!45084 List!45084) Unit!64253)

(assert (=> d!1226700 (= lt!1478196 (choose!25366 input!3238 input!3238))))

(assert (=> d!1226700 (= (lemmaIsPrefixRefl!2794 input!3238 input!3238) lt!1478196)))

(declare-fun bs!595317 () Bool)

(assert (= bs!595317 d!1226700))

(assert (=> bs!595317 m!4740203))

(declare-fun m!4740683 () Bool)

(assert (=> bs!595317 m!4740683))

(assert (=> b!4143941 d!1226700))

(declare-fun b!4144504 () Bool)

(declare-fun e!2571508 () Bool)

(declare-fun tp!1263162 () Bool)

(assert (=> b!4144504 (= e!2571508 (and tp_is_empty!21513 tp!1263162))))

(assert (=> b!4143956 (= tp!1263105 e!2571508)))

(assert (= (and b!4143956 ((_ is Cons!44960) (t!342603 input!3238))) b!4144504))

(declare-fun b!4144516 () Bool)

(declare-fun e!2571511 () Bool)

(declare-fun tp!1263176 () Bool)

(declare-fun tp!1263177 () Bool)

(assert (=> b!4144516 (= e!2571511 (and tp!1263176 tp!1263177))))

(declare-fun b!4144517 () Bool)

(declare-fun tp!1263173 () Bool)

(assert (=> b!4144517 (= e!2571511 tp!1263173)))

(declare-fun b!4144518 () Bool)

(declare-fun tp!1263175 () Bool)

(declare-fun tp!1263174 () Bool)

(assert (=> b!4144518 (= e!2571511 (and tp!1263175 tp!1263174))))

(declare-fun b!4144515 () Bool)

(assert (=> b!4144515 (= e!2571511 tp_is_empty!21513)))

(assert (=> b!4143951 (= tp!1263108 e!2571511)))

(assert (= (and b!4143951 ((_ is ElementMatch!12295) (regex!7390 (h!50381 rules!3756)))) b!4144515))

(assert (= (and b!4143951 ((_ is Concat!19916) (regex!7390 (h!50381 rules!3756)))) b!4144516))

(assert (= (and b!4143951 ((_ is Star!12295) (regex!7390 (h!50381 rules!3756)))) b!4144517))

(assert (= (and b!4143951 ((_ is Union!12295) (regex!7390 (h!50381 rules!3756)))) b!4144518))

(declare-fun b!4144519 () Bool)

(declare-fun e!2571512 () Bool)

(declare-fun tp!1263178 () Bool)

(assert (=> b!4144519 (= e!2571512 (and tp_is_empty!21513 tp!1263178))))

(assert (=> b!4143949 (= tp!1263106 e!2571512)))

(assert (= (and b!4143949 ((_ is Cons!44960) (t!342603 p!2912))) b!4144519))

(declare-fun b!4144521 () Bool)

(declare-fun e!2571513 () Bool)

(declare-fun tp!1263182 () Bool)

(declare-fun tp!1263183 () Bool)

(assert (=> b!4144521 (= e!2571513 (and tp!1263182 tp!1263183))))

(declare-fun b!4144522 () Bool)

(declare-fun tp!1263179 () Bool)

(assert (=> b!4144522 (= e!2571513 tp!1263179)))

(declare-fun b!4144523 () Bool)

(declare-fun tp!1263181 () Bool)

(declare-fun tp!1263180 () Bool)

(assert (=> b!4144523 (= e!2571513 (and tp!1263181 tp!1263180))))

(declare-fun b!4144520 () Bool)

(assert (=> b!4144520 (= e!2571513 tp_is_empty!21513)))

(assert (=> b!4143964 (= tp!1263102 e!2571513)))

(assert (= (and b!4143964 ((_ is ElementMatch!12295) (regex!7390 rBis!149))) b!4144520))

(assert (= (and b!4143964 ((_ is Concat!19916) (regex!7390 rBis!149))) b!4144521))

(assert (= (and b!4143964 ((_ is Star!12295) (regex!7390 rBis!149))) b!4144522))

(assert (= (and b!4143964 ((_ is Union!12295) (regex!7390 rBis!149))) b!4144523))

(declare-fun b!4144525 () Bool)

(declare-fun e!2571514 () Bool)

(declare-fun tp!1263187 () Bool)

(declare-fun tp!1263188 () Bool)

(assert (=> b!4144525 (= e!2571514 (and tp!1263187 tp!1263188))))

(declare-fun b!4144526 () Bool)

(declare-fun tp!1263184 () Bool)

(assert (=> b!4144526 (= e!2571514 tp!1263184)))

(declare-fun b!4144527 () Bool)

(declare-fun tp!1263186 () Bool)

(declare-fun tp!1263185 () Bool)

(assert (=> b!4144527 (= e!2571514 (and tp!1263186 tp!1263185))))

(declare-fun b!4144524 () Bool)

(assert (=> b!4144524 (= e!2571514 tp_is_empty!21513)))

(assert (=> b!4143943 (= tp!1263104 e!2571514)))

(assert (= (and b!4143943 ((_ is ElementMatch!12295) (regex!7390 r!4008))) b!4144524))

(assert (= (and b!4143943 ((_ is Concat!19916) (regex!7390 r!4008))) b!4144525))

(assert (= (and b!4143943 ((_ is Star!12295) (regex!7390 r!4008))) b!4144526))

(assert (= (and b!4143943 ((_ is Union!12295) (regex!7390 r!4008))) b!4144527))

(declare-fun b!4144538 () Bool)

(declare-fun b_free!118139 () Bool)

(declare-fun b_next!118843 () Bool)

(assert (=> b!4144538 (= b_free!118139 (not b_next!118843))))

(declare-fun tb!248781 () Bool)

(declare-fun t!342648 () Bool)

(assert (=> (and b!4144538 (= (toValue!10054 (transformation!7390 (h!50381 (t!342604 rules!3756)))) (toValue!10054 (transformation!7390 r!4008))) t!342648) tb!248781))

(declare-fun result!302558 () Bool)

(assert (= result!302558 result!302538))

(assert (=> d!1226568 t!342648))

(assert (=> d!1226644 t!342648))

(declare-fun tp!1263198 () Bool)

(declare-fun b_and!322009 () Bool)

(assert (=> b!4144538 (= tp!1263198 (and (=> t!342648 result!302558) b_and!322009))))

(declare-fun b_free!118141 () Bool)

(declare-fun b_next!118845 () Bool)

(assert (=> b!4144538 (= b_free!118141 (not b_next!118845))))

(declare-fun t!342650 () Bool)

(declare-fun tb!248783 () Bool)

(assert (=> (and b!4144538 (= (toChars!9913 (transformation!7390 (h!50381 (t!342604 rules!3756)))) (toChars!9913 (transformation!7390 r!4008))) t!342650) tb!248783))

(declare-fun result!302560 () Bool)

(assert (= result!302560 result!302530))

(assert (=> d!1226568 t!342650))

(declare-fun tb!248785 () Bool)

(declare-fun t!342652 () Bool)

(assert (=> (and b!4144538 (= (toChars!9913 (transformation!7390 (h!50381 (t!342604 rules!3756)))) (toChars!9913 (transformation!7390 (rule!10508 (_1!24803 lt!1478013))))) t!342652) tb!248785))

(declare-fun result!302562 () Bool)

(assert (= result!302562 result!302546))

(assert (=> d!1226656 t!342652))

(declare-fun b_and!322011 () Bool)

(declare-fun tp!1263200 () Bool)

(assert (=> b!4144538 (= tp!1263200 (and (=> t!342650 result!302560) (=> t!342652 result!302562) b_and!322011))))

(declare-fun e!2571525 () Bool)

(assert (=> b!4144538 (= e!2571525 (and tp!1263198 tp!1263200))))

(declare-fun e!2571526 () Bool)

(declare-fun b!4144537 () Bool)

(declare-fun tp!1263199 () Bool)

(assert (=> b!4144537 (= e!2571526 (and tp!1263199 (inv!59566 (tag!8250 (h!50381 (t!342604 rules!3756)))) (inv!59568 (transformation!7390 (h!50381 (t!342604 rules!3756)))) e!2571525))))

(declare-fun b!4144536 () Bool)

(declare-fun e!2571523 () Bool)

(declare-fun tp!1263197 () Bool)

(assert (=> b!4144536 (= e!2571523 (and e!2571526 tp!1263197))))

(assert (=> b!4143963 (= tp!1263103 e!2571523)))

(assert (= b!4144537 b!4144538))

(assert (= b!4144536 b!4144537))

(assert (= (and b!4143963 ((_ is Cons!44961) (t!342604 rules!3756))) b!4144536))

(declare-fun m!4740685 () Bool)

(assert (=> b!4144537 m!4740685))

(declare-fun m!4740687 () Bool)

(assert (=> b!4144537 m!4740687))

(declare-fun b_lambda!121845 () Bool)

(assert (= b_lambda!121839 (or (and b!4143957 b_free!118123) (and b!4143952 b_free!118127 (= (toValue!10054 (transformation!7390 (h!50381 rules!3756))) (toValue!10054 (transformation!7390 r!4008)))) (and b!4143944 b_free!118131 (= (toValue!10054 (transformation!7390 rBis!149)) (toValue!10054 (transformation!7390 r!4008)))) (and b!4144538 b_free!118139 (= (toValue!10054 (transformation!7390 (h!50381 (t!342604 rules!3756)))) (toValue!10054 (transformation!7390 r!4008)))) b_lambda!121845)))

(declare-fun b_lambda!121847 () Bool)

(assert (= b_lambda!121837 (or (and b!4143957 b_free!118125) (and b!4143952 b_free!118129 (= (toChars!9913 (transformation!7390 (h!50381 rules!3756))) (toChars!9913 (transformation!7390 r!4008)))) (and b!4143944 b_free!118133 (= (toChars!9913 (transformation!7390 rBis!149)) (toChars!9913 (transformation!7390 r!4008)))) (and b!4144538 b_free!118141 (= (toChars!9913 (transformation!7390 (h!50381 (t!342604 rules!3756)))) (toChars!9913 (transformation!7390 r!4008)))) b_lambda!121847)))

(declare-fun b_lambda!121849 () Bool)

(assert (= b_lambda!121841 (or (and b!4143957 b_free!118123) (and b!4143952 b_free!118127 (= (toValue!10054 (transformation!7390 (h!50381 rules!3756))) (toValue!10054 (transformation!7390 r!4008)))) (and b!4143944 b_free!118131 (= (toValue!10054 (transformation!7390 rBis!149)) (toValue!10054 (transformation!7390 r!4008)))) (and b!4144538 b_free!118139 (= (toValue!10054 (transformation!7390 (h!50381 (t!342604 rules!3756)))) (toValue!10054 (transformation!7390 r!4008)))) b_lambda!121849)))

(check-sat (not b!4144480) (not b!4144488) (not b_next!118833) (not b!4144059) (not b!4144498) (not b!4144516) (not b!4144433) (not b!4144431) (not b!4144389) (not b_lambda!121845) (not b!4144390) (not bm!290610) (not d!1226664) tp_is_empty!21513 (not d!1226670) (not b!4144443) (not b!4144522) (not b!4144482) (not bm!290603) (not b_next!118829) (not d!1226684) (not b!4144416) (not d!1226540) (not b!4144518) (not bm!290612) (not b!4144526) (not b!4144527) (not d!1226668) (not b!4144353) b_and!321999 b_and!322001 (not b!4144064) (not b_next!118831) (not d!1226674) (not d!1226546) (not b_next!118835) (not b!4144497) (not b_next!118845) (not b!4144454) (not b!4144120) (not b!4144490) (not b_next!118843) (not b!4144056) (not b!4144430) (not b!4144484) (not tb!248763) (not b!4144050) (not b!4144460) (not b_lambda!121847) b_and!322003 (not b!4144391) (not b!4144425) (not b!4144521) (not b!4144434) (not d!1226550) (not b!4144523) (not b!4144048) (not d!1226694) (not b!4144439) (not tb!248769) (not b!4144457) (not tb!248775) (not b!4144525) (not b!4144487) (not b!4144049) (not b!4144085) (not d!1226690) (not b!4144479) (not b!4144097) (not b!4144092) b_and!322009 (not b!4144504) (not b!4144491) (not b!4144123) (not d!1226672) (not d!1226558) (not b!4144486) (not b!4144519) (not d!1226552) (not b_next!118837) (not b!4144435) (not b!4144536) (not bm!290613) (not b!4144386) (not b!4144079) (not b!4144395) (not d!1226654) (not d!1226548) (not d!1226678) (not b!4144062) (not b!4144481) (not b!4144537) (not b!4144387) b_and!322007 (not d!1226568) (not b!4144493) (not b!4144121) b_and!321997 (not d!1226686) (not b!4144442) (not d!1226646) (not b!4144517) (not d!1226566) (not b!4144423) (not b_next!118827) b_and!322011 (not b!4144125) (not d!1226700) (not b!4144453) (not bm!290587) (not b!4144124) (not b_lambda!121849) (not b!4144075) (not b!4144441) (not d!1226656) (not d!1226650) (not d!1226556) (not b!4144499) (not d!1226680) (not d!1226560) (not b!4144495) (not b!4144117) (not b!4144494) (not b!4144349) (not d!1226564) b_and!322005 (not b_lambda!121843) (not b!4144485) (not d!1226542) (not b!4144122) (not b!4144118))
(check-sat (not b_next!118833) (not b_next!118829) (not b_next!118835) b_and!322003 b_and!322009 (not b_next!118837) b_and!322007 b_and!321997 b_and!322005 b_and!321999 (not b_next!118831) b_and!322001 (not b_next!118845) (not b_next!118843) (not b_next!118827) b_and!322011)
