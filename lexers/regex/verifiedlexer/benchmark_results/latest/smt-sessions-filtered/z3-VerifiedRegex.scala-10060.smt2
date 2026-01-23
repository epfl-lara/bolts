; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!526838 () Bool)

(assert start!526838)

(declare-fun b!4986176 () Bool)

(declare-fun b_free!133187 () Bool)

(declare-fun b_next!133977 () Bool)

(assert (=> b!4986176 (= b_free!133187 (not b_next!133977))))

(declare-fun tp!1397416 () Bool)

(declare-fun b_and!349943 () Bool)

(assert (=> b!4986176 (= tp!1397416 b_and!349943)))

(declare-fun b_free!133189 () Bool)

(declare-fun b_next!133979 () Bool)

(assert (=> b!4986176 (= b_free!133189 (not b_next!133979))))

(declare-fun tp!1397419 () Bool)

(declare-fun b_and!349945 () Bool)

(assert (=> b!4986176 (= tp!1397419 b_and!349945)))

(declare-fun b!4986174 () Bool)

(declare-fun e!3116304 () Bool)

(declare-datatypes ((C!27660 0))(
  ( (C!27661 (val!23196 Int)) )
))
(declare-datatypes ((List!57740 0))(
  ( (Nil!57616) (Cons!57616 (h!64064 C!27660) (t!369984 List!57740)) )
))
(declare-datatypes ((IArray!30509 0))(
  ( (IArray!30510 (innerList!15312 List!57740)) )
))
(declare-datatypes ((Conc!15224 0))(
  ( (Node!15224 (left!42146 Conc!15224) (right!42476 Conc!15224) (csize!30678 Int) (cheight!15435 Int)) (Leaf!25285 (xs!18550 IArray!30509) (csize!30679 Int)) (Empty!15224) )
))
(declare-datatypes ((BalanceConc!29878 0))(
  ( (BalanceConc!29879 (c!850843 Conc!15224)) )
))
(declare-fun input!1580 () BalanceConc!29878)

(declare-fun tp!1397420 () Bool)

(declare-fun inv!75532 (Conc!15224) Bool)

(assert (=> b!4986174 (= e!3116304 (and (inv!75532 (c!850843 input!1580)) tp!1397420))))

(declare-fun b!4986175 () Bool)

(declare-fun e!3116305 () Bool)

(declare-datatypes ((List!57741 0))(
  ( (Nil!57617) (Cons!57617 (h!64065 (_ BitVec 16)) (t!369985 List!57741)) )
))
(declare-datatypes ((TokenValue!8782 0))(
  ( (FloatLiteralValue!17564 (text!61919 List!57741)) (TokenValueExt!8781 (__x!34857 Int)) (Broken!43910 (value!270846 List!57741)) (Object!8905) (End!8782) (Def!8782) (Underscore!8782) (Match!8782) (Else!8782) (Error!8782) (Case!8782) (If!8782) (Extends!8782) (Abstract!8782) (Class!8782) (Val!8782) (DelimiterValue!17564 (del!8842 List!57741)) (KeywordValue!8788 (value!270847 List!57741)) (CommentValue!17564 (value!270848 List!57741)) (WhitespaceValue!17564 (value!270849 List!57741)) (IndentationValue!8782 (value!270850 List!57741)) (String!65783) (Int32!8782) (Broken!43911 (value!270851 List!57741)) (Boolean!8783) (Unit!148758) (OperatorValue!8785 (op!8842 List!57741)) (IdentifierValue!17564 (value!270852 List!57741)) (IdentifierValue!17565 (value!270853 List!57741)) (WhitespaceValue!17565 (value!270854 List!57741)) (True!17564) (False!17564) (Broken!43912 (value!270855 List!57741)) (Broken!43913 (value!270856 List!57741)) (True!17565) (RightBrace!8782) (RightBracket!8782) (Colon!8782) (Null!8782) (Comma!8782) (LeftBracket!8782) (False!17565) (LeftBrace!8782) (ImaginaryLiteralValue!8782 (text!61920 List!57741)) (StringLiteralValue!26346 (value!270857 List!57741)) (EOFValue!8782 (value!270858 List!57741)) (IdentValue!8782 (value!270859 List!57741)) (DelimiterValue!17565 (value!270860 List!57741)) (DedentValue!8782 (value!270861 List!57741)) (NewLineValue!8782 (value!270862 List!57741)) (IntegerValue!26346 (value!270863 (_ BitVec 32)) (text!61921 List!57741)) (IntegerValue!26347 (value!270864 Int) (text!61922 List!57741)) (Times!8782) (Or!8782) (Equal!8782) (Minus!8782) (Broken!43914 (value!270865 List!57741)) (And!8782) (Div!8782) (LessEqual!8782) (Mod!8782) (Concat!22487) (Not!8782) (Plus!8782) (SpaceValue!8782 (value!270866 List!57741)) (IntegerValue!26348 (value!270867 Int) (text!61923 List!57741)) (StringLiteralValue!26347 (text!61924 List!57741)) (FloatLiteralValue!17565 (text!61925 List!57741)) (BytesLiteralValue!8782 (value!270868 List!57741)) (CommentValue!17565 (value!270869 List!57741)) (StringLiteralValue!26348 (value!270870 List!57741)) (ErrorTokenValue!8782 (msg!8843 List!57741)) )
))
(declare-datatypes ((Regex!13705 0))(
  ( (ElementMatch!13705 (c!850844 C!27660)) (Concat!22488 (regOne!27922 Regex!13705) (regTwo!27922 Regex!13705)) (EmptyExpr!13705) (Star!13705 (reg!14034 Regex!13705)) (EmptyLang!13705) (Union!13705 (regOne!27923 Regex!13705) (regTwo!27923 Regex!13705)) )
))
(declare-datatypes ((String!65784 0))(
  ( (String!65785 (value!270871 String)) )
))
(declare-datatypes ((TokenValueInjection!16872 0))(
  ( (TokenValueInjection!16873 (toValue!11477 Int) (toChars!11336 Int)) )
))
(declare-datatypes ((Rule!16744 0))(
  ( (Rule!16745 (regex!8472 Regex!13705) (tag!9336 String!65784) (isSeparator!8472 Bool) (transformation!8472 TokenValueInjection!16872)) )
))
(declare-datatypes ((Token!15400 0))(
  ( (Token!15401 (value!270872 TokenValue!8782) (rule!11740 Rule!16744) (size!38271 Int) (originalCharacters!8731 List!57740)) )
))
(declare-datatypes ((tuple2!62654 0))(
  ( (tuple2!62655 (_1!34630 Token!15400) (_2!34630 BalanceConc!29878)) )
))
(declare-fun lt!2060975 () tuple2!62654)

(declare-datatypes ((tuple2!62656 0))(
  ( (tuple2!62657 (_1!34631 Token!15400) (_2!34631 List!57740)) )
))
(declare-fun lt!2060974 () tuple2!62656)

(declare-fun list!18494 (BalanceConc!29878) List!57740)

(assert (=> b!4986175 (= e!3116305 (not (= (list!18494 (_2!34630 lt!2060975)) (_2!34631 lt!2060974))))))

(declare-fun e!3116308 () Bool)

(assert (=> b!4986176 (= e!3116308 (and tp!1397416 tp!1397419))))

(declare-fun e!3116309 () Bool)

(declare-fun tp!1397417 () Bool)

(declare-fun b!4986177 () Bool)

(declare-fun rule!200 () Rule!16744)

(declare-fun inv!75528 (String!65784) Bool)

(declare-fun inv!75533 (TokenValueInjection!16872) Bool)

(assert (=> b!4986177 (= e!3116309 (and tp!1397417 (inv!75528 (tag!9336 rule!200)) (inv!75533 (transformation!8472 rule!200)) e!3116308))))

(declare-fun b!4986179 () Bool)

(declare-fun e!3116311 () Bool)

(declare-fun e!3116306 () Bool)

(assert (=> b!4986179 (= e!3116311 e!3116306)))

(declare-fun res!2128557 () Bool)

(assert (=> b!4986179 (=> (not res!2128557) (not e!3116306))))

(declare-fun lt!2060976 () Bool)

(assert (=> b!4986179 (= res!2128557 lt!2060976)))

(declare-fun b!4986180 () Bool)

(declare-fun e!3116303 () Bool)

(assert (=> b!4986180 (= e!3116303 e!3116311)))

(declare-fun res!2128563 () Bool)

(assert (=> b!4986180 (=> res!2128563 e!3116311)))

(declare-datatypes ((Option!14563 0))(
  ( (None!14562) (Some!14562 (v!50559 tuple2!62656)) )
))
(declare-fun lt!2060972 () Option!14563)

(declare-fun isDefined!11471 (Option!14563) Bool)

(assert (=> b!4986180 (= res!2128563 (not (= lt!2060976 (isDefined!11471 lt!2060972))))))

(assert (=> b!4986180 (= lt!2060976 false)))

(declare-fun lt!2060973 () List!57740)

(declare-datatypes ((LexerInterface!8064 0))(
  ( (LexerInterfaceExt!8061 (__x!34858 Int)) (Lexer!8062) )
))
(declare-fun thiss!16165 () LexerInterface!8064)

(declare-fun maxPrefixOneRule!3688 (LexerInterface!8064 Rule!16744 List!57740) Option!14563)

(assert (=> b!4986180 (= lt!2060972 (maxPrefixOneRule!3688 thiss!16165 rule!200 lt!2060973))))

(declare-fun b!4986181 () Bool)

(declare-fun e!3116302 () Bool)

(assert (=> b!4986181 (= e!3116302 e!3116303)))

(declare-fun res!2128560 () Bool)

(assert (=> b!4986181 (=> (not res!2128560) (not e!3116303))))

(declare-fun totalInput!520 () BalanceConc!29878)

(declare-fun isSuffix!1271 (List!57740 List!57740) Bool)

(assert (=> b!4986181 (= res!2128560 (isSuffix!1271 lt!2060973 (list!18494 totalInput!520)))))

(assert (=> b!4986181 (= lt!2060973 (list!18494 input!1580))))

(declare-fun b!4986182 () Bool)

(declare-fun res!2128559 () Bool)

(assert (=> b!4986182 (=> (not res!2128559) (not e!3116303))))

(declare-fun isEmpty!31165 (BalanceConc!29878) Bool)

(declare-datatypes ((tuple2!62658 0))(
  ( (tuple2!62659 (_1!34632 BalanceConc!29878) (_2!34632 BalanceConc!29878)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2!235 (Regex!13705 BalanceConc!29878 BalanceConc!29878) tuple2!62658)

(assert (=> b!4986182 (= res!2128559 (isEmpty!31165 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520))))))

(declare-fun b!4986183 () Bool)

(assert (=> b!4986183 (= e!3116306 e!3116305)))

(declare-fun res!2128561 () Bool)

(assert (=> b!4986183 (=> res!2128561 e!3116305)))

(assert (=> b!4986183 (= res!2128561 (not (= (_1!34630 lt!2060975) (_1!34631 lt!2060974))))))

(declare-fun get!20049 (Option!14563) tuple2!62656)

(assert (=> b!4986183 (= lt!2060974 (get!20049 lt!2060972))))

(declare-datatypes ((Option!14564 0))(
  ( (None!14563) (Some!14563 (v!50560 tuple2!62654)) )
))
(declare-fun get!20050 (Option!14564) tuple2!62654)

(assert (=> b!4986183 (= lt!2060975 (get!20050 None!14563))))

(declare-fun b!4986184 () Bool)

(declare-fun e!3116307 () Bool)

(declare-fun tp!1397418 () Bool)

(assert (=> b!4986184 (= e!3116307 (and (inv!75532 (c!850843 totalInput!520)) tp!1397418))))

(declare-fun res!2128562 () Bool)

(assert (=> start!526838 (=> (not res!2128562) (not e!3116302))))

(get-info :version)

(assert (=> start!526838 (= res!2128562 ((_ is Lexer!8062) thiss!16165))))

(assert (=> start!526838 e!3116302))

(assert (=> start!526838 true))

(assert (=> start!526838 e!3116309))

(declare-fun inv!75534 (BalanceConc!29878) Bool)

(assert (=> start!526838 (and (inv!75534 totalInput!520) e!3116307)))

(assert (=> start!526838 (and (inv!75534 input!1580) e!3116304)))

(declare-fun b!4986178 () Bool)

(declare-fun res!2128558 () Bool)

(assert (=> b!4986178 (=> (not res!2128558) (not e!3116302))))

(declare-fun ruleValid!3880 (LexerInterface!8064 Rule!16744) Bool)

(assert (=> b!4986178 (= res!2128558 (ruleValid!3880 thiss!16165 rule!200))))

(assert (= (and start!526838 res!2128562) b!4986178))

(assert (= (and b!4986178 res!2128558) b!4986181))

(assert (= (and b!4986181 res!2128560) b!4986182))

(assert (= (and b!4986182 res!2128559) b!4986180))

(assert (= (and b!4986180 (not res!2128563)) b!4986179))

(assert (= (and b!4986179 res!2128557) b!4986183))

(assert (= (and b!4986183 (not res!2128561)) b!4986175))

(assert (= b!4986177 b!4986176))

(assert (= start!526838 b!4986177))

(assert (= start!526838 b!4986184))

(assert (= start!526838 b!4986174))

(declare-fun m!6017940 () Bool)

(assert (=> b!4986180 m!6017940))

(declare-fun m!6017942 () Bool)

(assert (=> b!4986180 m!6017942))

(declare-fun m!6017944 () Bool)

(assert (=> b!4986174 m!6017944))

(declare-fun m!6017946 () Bool)

(assert (=> start!526838 m!6017946))

(declare-fun m!6017948 () Bool)

(assert (=> start!526838 m!6017948))

(declare-fun m!6017950 () Bool)

(assert (=> b!4986184 m!6017950))

(declare-fun m!6017952 () Bool)

(assert (=> b!4986182 m!6017952))

(declare-fun m!6017954 () Bool)

(assert (=> b!4986182 m!6017954))

(declare-fun m!6017956 () Bool)

(assert (=> b!4986177 m!6017956))

(declare-fun m!6017958 () Bool)

(assert (=> b!4986177 m!6017958))

(declare-fun m!6017960 () Bool)

(assert (=> b!4986181 m!6017960))

(assert (=> b!4986181 m!6017960))

(declare-fun m!6017962 () Bool)

(assert (=> b!4986181 m!6017962))

(declare-fun m!6017964 () Bool)

(assert (=> b!4986181 m!6017964))

(declare-fun m!6017966 () Bool)

(assert (=> b!4986183 m!6017966))

(declare-fun m!6017968 () Bool)

(assert (=> b!4986183 m!6017968))

(declare-fun m!6017970 () Bool)

(assert (=> b!4986178 m!6017970))

(declare-fun m!6017972 () Bool)

(assert (=> b!4986175 m!6017972))

(check-sat b_and!349943 (not b!4986177) (not b!4986183) (not b!4986174) (not b!4986175) (not b!4986182) (not b!4986181) (not b_next!133979) (not b_next!133977) (not start!526838) (not b!4986184) b_and!349945 (not b!4986180) (not b!4986178))
(check-sat b_and!349945 b_and!349943 (not b_next!133979) (not b_next!133977))
(get-model)

(declare-fun d!1605665 () Bool)

(declare-fun c!850847 () Bool)

(assert (=> d!1605665 (= c!850847 ((_ is Node!15224) (c!850843 input!1580)))))

(declare-fun e!3116316 () Bool)

(assert (=> d!1605665 (= (inv!75532 (c!850843 input!1580)) e!3116316)))

(declare-fun b!4986191 () Bool)

(declare-fun inv!75536 (Conc!15224) Bool)

(assert (=> b!4986191 (= e!3116316 (inv!75536 (c!850843 input!1580)))))

(declare-fun b!4986192 () Bool)

(declare-fun e!3116317 () Bool)

(assert (=> b!4986192 (= e!3116316 e!3116317)))

(declare-fun res!2128574 () Bool)

(assert (=> b!4986192 (= res!2128574 (not ((_ is Leaf!25285) (c!850843 input!1580))))))

(assert (=> b!4986192 (=> res!2128574 e!3116317)))

(declare-fun b!4986193 () Bool)

(declare-fun inv!75538 (Conc!15224) Bool)

(assert (=> b!4986193 (= e!3116317 (inv!75538 (c!850843 input!1580)))))

(assert (= (and d!1605665 c!850847) b!4986191))

(assert (= (and d!1605665 (not c!850847)) b!4986192))

(assert (= (and b!4986192 (not res!2128574)) b!4986193))

(declare-fun m!6017974 () Bool)

(assert (=> b!4986191 m!6017974))

(declare-fun m!6017976 () Bool)

(assert (=> b!4986193 m!6017976))

(assert (=> b!4986174 d!1605665))

(declare-fun d!1605669 () Bool)

(declare-fun isEmpty!31168 (Option!14563) Bool)

(assert (=> d!1605669 (= (isDefined!11471 lt!2060972) (not (isEmpty!31168 lt!2060972)))))

(declare-fun bs!1184649 () Bool)

(assert (= bs!1184649 d!1605669))

(declare-fun m!6017978 () Bool)

(assert (=> bs!1184649 m!6017978))

(assert (=> b!4986180 d!1605669))

(declare-fun b!4986233 () Bool)

(declare-fun e!3116342 () Bool)

(declare-fun lt!2060998 () Option!14563)

(declare-fun size!38273 (List!57740) Int)

(assert (=> b!4986233 (= e!3116342 (= (size!38271 (_1!34631 (get!20049 lt!2060998))) (size!38273 (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998))))))))

(declare-fun b!4986234 () Bool)

(declare-fun res!2128607 () Bool)

(assert (=> b!4986234 (=> (not res!2128607) (not e!3116342))))

(assert (=> b!4986234 (= res!2128607 (< (size!38273 (_2!34631 (get!20049 lt!2060998))) (size!38273 lt!2060973)))))

(declare-fun b!4986235 () Bool)

(declare-fun e!3116344 () Option!14563)

(assert (=> b!4986235 (= e!3116344 None!14562)))

(declare-fun b!4986236 () Bool)

(declare-fun res!2128604 () Bool)

(assert (=> b!4986236 (=> (not res!2128604) (not e!3116342))))

(declare-fun apply!13958 (TokenValueInjection!16872 BalanceConc!29878) TokenValue!8782)

(declare-fun seqFromList!6092 (List!57740) BalanceConc!29878)

(assert (=> b!4986236 (= res!2128604 (= (value!270872 (_1!34631 (get!20049 lt!2060998))) (apply!13958 (transformation!8472 (rule!11740 (_1!34631 (get!20049 lt!2060998)))) (seqFromList!6092 (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998)))))))))

(declare-fun b!4986237 () Bool)

(declare-fun e!3116343 () Bool)

(assert (=> b!4986237 (= e!3116343 e!3116342)))

(declare-fun res!2128610 () Bool)

(assert (=> b!4986237 (=> (not res!2128610) (not e!3116342))))

(declare-fun matchR!6698 (Regex!13705 List!57740) Bool)

(declare-fun charsOf!5466 (Token!15400) BalanceConc!29878)

(assert (=> b!4986237 (= res!2128610 (matchR!6698 (regex!8472 rule!200) (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))))))

(declare-fun d!1605673 () Bool)

(assert (=> d!1605673 e!3116343))

(declare-fun res!2128608 () Bool)

(assert (=> d!1605673 (=> res!2128608 e!3116343)))

(assert (=> d!1605673 (= res!2128608 (isEmpty!31168 lt!2060998))))

(assert (=> d!1605673 (= lt!2060998 e!3116344)))

(declare-fun c!850854 () Bool)

(declare-datatypes ((tuple2!62662 0))(
  ( (tuple2!62663 (_1!34634 List!57740) (_2!34634 List!57740)) )
))
(declare-fun lt!2060999 () tuple2!62662)

(declare-fun isEmpty!31170 (List!57740) Bool)

(assert (=> d!1605673 (= c!850854 (isEmpty!31170 (_1!34634 lt!2060999)))))

(declare-fun findLongestMatch!1730 (Regex!13705 List!57740) tuple2!62662)

(assert (=> d!1605673 (= lt!2060999 (findLongestMatch!1730 (regex!8472 rule!200) lt!2060973))))

(assert (=> d!1605673 (ruleValid!3880 thiss!16165 rule!200)))

(assert (=> d!1605673 (= (maxPrefixOneRule!3688 thiss!16165 rule!200 lt!2060973) lt!2060998)))

(declare-fun b!4986238 () Bool)

(declare-fun res!2128605 () Bool)

(assert (=> b!4986238 (=> (not res!2128605) (not e!3116342))))

(assert (=> b!4986238 (= res!2128605 (= (rule!11740 (_1!34631 (get!20049 lt!2060998))) rule!200))))

(declare-fun b!4986239 () Bool)

(declare-fun size!38274 (BalanceConc!29878) Int)

(assert (=> b!4986239 (= e!3116344 (Some!14562 (tuple2!62657 (Token!15401 (apply!13958 (transformation!8472 rule!200) (seqFromList!6092 (_1!34634 lt!2060999))) rule!200 (size!38274 (seqFromList!6092 (_1!34634 lt!2060999))) (_1!34634 lt!2060999)) (_2!34634 lt!2060999))))))

(declare-datatypes ((Unit!148759 0))(
  ( (Unit!148760) )
))
(declare-fun lt!2060996 () Unit!148759)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1876 (Regex!13705 List!57740) Unit!148759)

(assert (=> b!4986239 (= lt!2060996 (longestMatchIsAcceptedByMatchOrIsEmpty!1876 (regex!8472 rule!200) lt!2060973))))

(declare-fun res!2128609 () Bool)

(declare-fun findLongestMatchInner!1916 (Regex!13705 List!57740 Int List!57740 List!57740 Int) tuple2!62662)

(assert (=> b!4986239 (= res!2128609 (isEmpty!31170 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))))))

(declare-fun e!3116341 () Bool)

(assert (=> b!4986239 (=> res!2128609 e!3116341)))

(assert (=> b!4986239 e!3116341))

(declare-fun lt!2060997 () Unit!148759)

(assert (=> b!4986239 (= lt!2060997 lt!2060996)))

(declare-fun lt!2061000 () Unit!148759)

(declare-fun lemmaSemiInverse!2629 (TokenValueInjection!16872 BalanceConc!29878) Unit!148759)

(assert (=> b!4986239 (= lt!2061000 (lemmaSemiInverse!2629 (transformation!8472 rule!200) (seqFromList!6092 (_1!34634 lt!2060999))))))

(declare-fun b!4986240 () Bool)

(declare-fun res!2128606 () Bool)

(assert (=> b!4986240 (=> (not res!2128606) (not e!3116342))))

(declare-fun ++!12566 (List!57740 List!57740) List!57740)

(assert (=> b!4986240 (= res!2128606 (= (++!12566 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998)))) (_2!34631 (get!20049 lt!2060998))) lt!2060973))))

(declare-fun b!4986241 () Bool)

(assert (=> b!4986241 (= e!3116341 (matchR!6698 (regex!8472 rule!200) (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))))))

(assert (= (and d!1605673 c!850854) b!4986235))

(assert (= (and d!1605673 (not c!850854)) b!4986239))

(assert (= (and b!4986239 (not res!2128609)) b!4986241))

(assert (= (and d!1605673 (not res!2128608)) b!4986237))

(assert (= (and b!4986237 res!2128610) b!4986240))

(assert (= (and b!4986240 res!2128606) b!4986234))

(assert (= (and b!4986234 res!2128607) b!4986238))

(assert (= (and b!4986238 res!2128605) b!4986236))

(assert (= (and b!4986236 res!2128604) b!4986233))

(declare-fun m!6018024 () Bool)

(assert (=> b!4986239 m!6018024))

(declare-fun m!6018026 () Bool)

(assert (=> b!4986239 m!6018026))

(declare-fun m!6018028 () Bool)

(assert (=> b!4986239 m!6018028))

(declare-fun m!6018030 () Bool)

(assert (=> b!4986239 m!6018030))

(declare-fun m!6018032 () Bool)

(assert (=> b!4986239 m!6018032))

(declare-fun m!6018034 () Bool)

(assert (=> b!4986239 m!6018034))

(assert (=> b!4986239 m!6018028))

(assert (=> b!4986239 m!6018024))

(assert (=> b!4986239 m!6018030))

(assert (=> b!4986239 m!6018024))

(declare-fun m!6018036 () Bool)

(assert (=> b!4986239 m!6018036))

(declare-fun m!6018038 () Bool)

(assert (=> b!4986239 m!6018038))

(assert (=> b!4986239 m!6018024))

(declare-fun m!6018040 () Bool)

(assert (=> b!4986239 m!6018040))

(declare-fun m!6018042 () Bool)

(assert (=> b!4986233 m!6018042))

(declare-fun m!6018044 () Bool)

(assert (=> b!4986233 m!6018044))

(assert (=> b!4986241 m!6018028))

(assert (=> b!4986241 m!6018030))

(assert (=> b!4986241 m!6018028))

(assert (=> b!4986241 m!6018030))

(assert (=> b!4986241 m!6018032))

(declare-fun m!6018046 () Bool)

(assert (=> b!4986241 m!6018046))

(assert (=> b!4986234 m!6018042))

(declare-fun m!6018048 () Bool)

(assert (=> b!4986234 m!6018048))

(assert (=> b!4986234 m!6018030))

(assert (=> b!4986237 m!6018042))

(declare-fun m!6018050 () Bool)

(assert (=> b!4986237 m!6018050))

(assert (=> b!4986237 m!6018050))

(declare-fun m!6018052 () Bool)

(assert (=> b!4986237 m!6018052))

(assert (=> b!4986237 m!6018052))

(declare-fun m!6018054 () Bool)

(assert (=> b!4986237 m!6018054))

(assert (=> b!4986240 m!6018042))

(assert (=> b!4986240 m!6018050))

(assert (=> b!4986240 m!6018050))

(assert (=> b!4986240 m!6018052))

(assert (=> b!4986240 m!6018052))

(declare-fun m!6018056 () Bool)

(assert (=> b!4986240 m!6018056))

(assert (=> b!4986236 m!6018042))

(declare-fun m!6018058 () Bool)

(assert (=> b!4986236 m!6018058))

(assert (=> b!4986236 m!6018058))

(declare-fun m!6018060 () Bool)

(assert (=> b!4986236 m!6018060))

(assert (=> b!4986238 m!6018042))

(declare-fun m!6018062 () Bool)

(assert (=> d!1605673 m!6018062))

(declare-fun m!6018064 () Bool)

(assert (=> d!1605673 m!6018064))

(declare-fun m!6018066 () Bool)

(assert (=> d!1605673 m!6018066))

(assert (=> d!1605673 m!6017970))

(assert (=> b!4986180 d!1605673))

(declare-fun d!1605699 () Bool)

(declare-fun list!18496 (Conc!15224) List!57740)

(assert (=> d!1605699 (= (list!18494 (_2!34630 lt!2060975)) (list!18496 (c!850843 (_2!34630 lt!2060975))))))

(declare-fun bs!1184658 () Bool)

(assert (= bs!1184658 d!1605699))

(declare-fun m!6018068 () Bool)

(assert (=> bs!1184658 m!6018068))

(assert (=> b!4986175 d!1605699))

(declare-fun d!1605701 () Bool)

(declare-fun res!2128615 () Bool)

(declare-fun e!3116347 () Bool)

(assert (=> d!1605701 (=> (not res!2128615) (not e!3116347))))

(declare-fun validRegex!6004 (Regex!13705) Bool)

(assert (=> d!1605701 (= res!2128615 (validRegex!6004 (regex!8472 rule!200)))))

(assert (=> d!1605701 (= (ruleValid!3880 thiss!16165 rule!200) e!3116347)))

(declare-fun b!4986246 () Bool)

(declare-fun res!2128616 () Bool)

(assert (=> b!4986246 (=> (not res!2128616) (not e!3116347))))

(declare-fun nullable!4655 (Regex!13705) Bool)

(assert (=> b!4986246 (= res!2128616 (not (nullable!4655 (regex!8472 rule!200))))))

(declare-fun b!4986247 () Bool)

(assert (=> b!4986247 (= e!3116347 (not (= (tag!9336 rule!200) (String!65785 ""))))))

(assert (= (and d!1605701 res!2128615) b!4986246))

(assert (= (and b!4986246 res!2128616) b!4986247))

(declare-fun m!6018070 () Bool)

(assert (=> d!1605701 m!6018070))

(declare-fun m!6018072 () Bool)

(assert (=> b!4986246 m!6018072))

(assert (=> b!4986178 d!1605701))

(declare-fun d!1605703 () Bool)

(declare-fun c!850855 () Bool)

(assert (=> d!1605703 (= c!850855 ((_ is Node!15224) (c!850843 totalInput!520)))))

(declare-fun e!3116348 () Bool)

(assert (=> d!1605703 (= (inv!75532 (c!850843 totalInput!520)) e!3116348)))

(declare-fun b!4986248 () Bool)

(assert (=> b!4986248 (= e!3116348 (inv!75536 (c!850843 totalInput!520)))))

(declare-fun b!4986249 () Bool)

(declare-fun e!3116349 () Bool)

(assert (=> b!4986249 (= e!3116348 e!3116349)))

(declare-fun res!2128617 () Bool)

(assert (=> b!4986249 (= res!2128617 (not ((_ is Leaf!25285) (c!850843 totalInput!520))))))

(assert (=> b!4986249 (=> res!2128617 e!3116349)))

(declare-fun b!4986250 () Bool)

(assert (=> b!4986250 (= e!3116349 (inv!75538 (c!850843 totalInput!520)))))

(assert (= (and d!1605703 c!850855) b!4986248))

(assert (= (and d!1605703 (not c!850855)) b!4986249))

(assert (= (and b!4986249 (not res!2128617)) b!4986250))

(declare-fun m!6018074 () Bool)

(assert (=> b!4986248 m!6018074))

(declare-fun m!6018076 () Bool)

(assert (=> b!4986250 m!6018076))

(assert (=> b!4986184 d!1605703))

(declare-fun d!1605705 () Bool)

(declare-fun isBalanced!4238 (Conc!15224) Bool)

(assert (=> d!1605705 (= (inv!75534 totalInput!520) (isBalanced!4238 (c!850843 totalInput!520)))))

(declare-fun bs!1184659 () Bool)

(assert (= bs!1184659 d!1605705))

(declare-fun m!6018078 () Bool)

(assert (=> bs!1184659 m!6018078))

(assert (=> start!526838 d!1605705))

(declare-fun d!1605707 () Bool)

(assert (=> d!1605707 (= (inv!75534 input!1580) (isBalanced!4238 (c!850843 input!1580)))))

(declare-fun bs!1184660 () Bool)

(assert (= bs!1184660 d!1605707))

(declare-fun m!6018080 () Bool)

(assert (=> bs!1184660 m!6018080))

(assert (=> start!526838 d!1605707))

(declare-fun lt!2061003 () Bool)

(declare-fun d!1605709 () Bool)

(assert (=> d!1605709 (= lt!2061003 (isEmpty!31170 (list!18494 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520)))))))

(declare-fun isEmpty!31171 (Conc!15224) Bool)

(assert (=> d!1605709 (= lt!2061003 (isEmpty!31171 (c!850843 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520)))))))

(assert (=> d!1605709 (= (isEmpty!31165 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520))) lt!2061003)))

(declare-fun bs!1184661 () Bool)

(assert (= bs!1184661 d!1605709))

(declare-fun m!6018082 () Bool)

(assert (=> bs!1184661 m!6018082))

(assert (=> bs!1184661 m!6018082))

(declare-fun m!6018084 () Bool)

(assert (=> bs!1184661 m!6018084))

(declare-fun m!6018086 () Bool)

(assert (=> bs!1184661 m!6018086))

(assert (=> b!4986182 d!1605709))

(declare-fun d!1605711 () Bool)

(declare-fun lt!2061021 () tuple2!62658)

(assert (=> d!1605711 (= (tuple2!62663 (list!18494 (_1!34632 lt!2061021)) (list!18494 (_2!34632 lt!2061021))) (findLongestMatch!1730 (regex!8472 rule!200) (list!18494 input!1580)))))

(declare-fun choose!36862 (Regex!13705 BalanceConc!29878 BalanceConc!29878) tuple2!62658)

(assert (=> d!1605711 (= lt!2061021 (choose!36862 (regex!8472 rule!200) input!1580 totalInput!520))))

(assert (=> d!1605711 (validRegex!6004 (regex!8472 rule!200))))

(assert (=> d!1605711 (= (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520) lt!2061021)))

(declare-fun bs!1184662 () Bool)

(assert (= bs!1184662 d!1605711))

(assert (=> bs!1184662 m!6017964))

(declare-fun m!6018134 () Bool)

(assert (=> bs!1184662 m!6018134))

(declare-fun m!6018136 () Bool)

(assert (=> bs!1184662 m!6018136))

(assert (=> bs!1184662 m!6018070))

(declare-fun m!6018138 () Bool)

(assert (=> bs!1184662 m!6018138))

(declare-fun m!6018140 () Bool)

(assert (=> bs!1184662 m!6018140))

(assert (=> bs!1184662 m!6017964))

(assert (=> b!4986182 d!1605711))

(declare-fun d!1605719 () Bool)

(assert (=> d!1605719 (= (inv!75528 (tag!9336 rule!200)) (= (mod (str.len (value!270871 (tag!9336 rule!200))) 2) 0))))

(assert (=> b!4986177 d!1605719))

(declare-fun d!1605721 () Bool)

(declare-fun res!2128642 () Bool)

(declare-fun e!3116377 () Bool)

(assert (=> d!1605721 (=> (not res!2128642) (not e!3116377))))

(declare-fun semiInverseModEq!3765 (Int Int) Bool)

(assert (=> d!1605721 (= res!2128642 (semiInverseModEq!3765 (toChars!11336 (transformation!8472 rule!200)) (toValue!11477 (transformation!8472 rule!200))))))

(assert (=> d!1605721 (= (inv!75533 (transformation!8472 rule!200)) e!3116377)))

(declare-fun b!4986311 () Bool)

(declare-fun equivClasses!3584 (Int Int) Bool)

(assert (=> b!4986311 (= e!3116377 (equivClasses!3584 (toChars!11336 (transformation!8472 rule!200)) (toValue!11477 (transformation!8472 rule!200))))))

(assert (= (and d!1605721 res!2128642) b!4986311))

(declare-fun m!6018154 () Bool)

(assert (=> d!1605721 m!6018154))

(declare-fun m!6018156 () Bool)

(assert (=> b!4986311 m!6018156))

(assert (=> b!4986177 d!1605721))

(declare-fun d!1605723 () Bool)

(assert (=> d!1605723 (= (get!20049 lt!2060972) (v!50559 lt!2060972))))

(assert (=> b!4986183 d!1605723))

(declare-fun d!1605725 () Bool)

(assert (not d!1605725))

(assert (=> b!4986183 d!1605725))

(declare-fun d!1605727 () Bool)

(declare-fun e!3116380 () Bool)

(assert (=> d!1605727 e!3116380))

(declare-fun res!2128645 () Bool)

(assert (=> d!1605727 (=> res!2128645 e!3116380)))

(declare-fun lt!2061024 () Bool)

(assert (=> d!1605727 (= res!2128645 (not lt!2061024))))

(declare-fun drop!2386 (List!57740 Int) List!57740)

(assert (=> d!1605727 (= lt!2061024 (= lt!2060973 (drop!2386 (list!18494 totalInput!520) (- (size!38273 (list!18494 totalInput!520)) (size!38273 lt!2060973)))))))

(assert (=> d!1605727 (= (isSuffix!1271 lt!2060973 (list!18494 totalInput!520)) lt!2061024)))

(declare-fun b!4986314 () Bool)

(assert (=> b!4986314 (= e!3116380 (>= (size!38273 (list!18494 totalInput!520)) (size!38273 lt!2060973)))))

(assert (= (and d!1605727 (not res!2128645)) b!4986314))

(assert (=> d!1605727 m!6017960))

(declare-fun m!6018158 () Bool)

(assert (=> d!1605727 m!6018158))

(assert (=> d!1605727 m!6018030))

(assert (=> d!1605727 m!6017960))

(declare-fun m!6018160 () Bool)

(assert (=> d!1605727 m!6018160))

(assert (=> b!4986314 m!6017960))

(assert (=> b!4986314 m!6018158))

(assert (=> b!4986314 m!6018030))

(assert (=> b!4986181 d!1605727))

(declare-fun d!1605729 () Bool)

(assert (=> d!1605729 (= (list!18494 totalInput!520) (list!18496 (c!850843 totalInput!520)))))

(declare-fun bs!1184663 () Bool)

(assert (= bs!1184663 d!1605729))

(declare-fun m!6018162 () Bool)

(assert (=> bs!1184663 m!6018162))

(assert (=> b!4986181 d!1605729))

(declare-fun d!1605731 () Bool)

(assert (=> d!1605731 (= (list!18494 input!1580) (list!18496 (c!850843 input!1580)))))

(declare-fun bs!1184664 () Bool)

(assert (= bs!1184664 d!1605731))

(declare-fun m!6018164 () Bool)

(assert (=> bs!1184664 m!6018164))

(assert (=> b!4986181 d!1605731))

(declare-fun e!3116385 () Bool)

(declare-fun b!4986323 () Bool)

(declare-fun tp!1397455 () Bool)

(declare-fun tp!1397456 () Bool)

(assert (=> b!4986323 (= e!3116385 (and (inv!75532 (left!42146 (c!850843 input!1580))) tp!1397456 (inv!75532 (right!42476 (c!850843 input!1580))) tp!1397455))))

(declare-fun b!4986325 () Bool)

(declare-fun e!3116386 () Bool)

(declare-fun tp!1397454 () Bool)

(assert (=> b!4986325 (= e!3116386 tp!1397454)))

(declare-fun b!4986324 () Bool)

(declare-fun inv!75540 (IArray!30509) Bool)

(assert (=> b!4986324 (= e!3116385 (and (inv!75540 (xs!18550 (c!850843 input!1580))) e!3116386))))

(assert (=> b!4986174 (= tp!1397420 (and (inv!75532 (c!850843 input!1580)) e!3116385))))

(assert (= (and b!4986174 ((_ is Node!15224) (c!850843 input!1580))) b!4986323))

(assert (= b!4986324 b!4986325))

(assert (= (and b!4986174 ((_ is Leaf!25285) (c!850843 input!1580))) b!4986324))

(declare-fun m!6018166 () Bool)

(assert (=> b!4986323 m!6018166))

(declare-fun m!6018168 () Bool)

(assert (=> b!4986323 m!6018168))

(declare-fun m!6018170 () Bool)

(assert (=> b!4986324 m!6018170))

(assert (=> b!4986174 m!6017944))

(declare-fun b!4986326 () Bool)

(declare-fun e!3116387 () Bool)

(declare-fun tp!1397458 () Bool)

(declare-fun tp!1397459 () Bool)

(assert (=> b!4986326 (= e!3116387 (and (inv!75532 (left!42146 (c!850843 totalInput!520))) tp!1397459 (inv!75532 (right!42476 (c!850843 totalInput!520))) tp!1397458))))

(declare-fun b!4986328 () Bool)

(declare-fun e!3116388 () Bool)

(declare-fun tp!1397457 () Bool)

(assert (=> b!4986328 (= e!3116388 tp!1397457)))

(declare-fun b!4986327 () Bool)

(assert (=> b!4986327 (= e!3116387 (and (inv!75540 (xs!18550 (c!850843 totalInput!520))) e!3116388))))

(assert (=> b!4986184 (= tp!1397418 (and (inv!75532 (c!850843 totalInput!520)) e!3116387))))

(assert (= (and b!4986184 ((_ is Node!15224) (c!850843 totalInput!520))) b!4986326))

(assert (= b!4986327 b!4986328))

(assert (= (and b!4986184 ((_ is Leaf!25285) (c!850843 totalInput!520))) b!4986327))

(declare-fun m!6018172 () Bool)

(assert (=> b!4986326 m!6018172))

(declare-fun m!6018174 () Bool)

(assert (=> b!4986326 m!6018174))

(declare-fun m!6018176 () Bool)

(assert (=> b!4986327 m!6018176))

(assert (=> b!4986184 m!6017950))

(declare-fun b!4986341 () Bool)

(declare-fun e!3116391 () Bool)

(declare-fun tp!1397472 () Bool)

(assert (=> b!4986341 (= e!3116391 tp!1397472)))

(declare-fun b!4986339 () Bool)

(declare-fun tp_is_empty!36411 () Bool)

(assert (=> b!4986339 (= e!3116391 tp_is_empty!36411)))

(declare-fun b!4986342 () Bool)

(declare-fun tp!1397470 () Bool)

(declare-fun tp!1397473 () Bool)

(assert (=> b!4986342 (= e!3116391 (and tp!1397470 tp!1397473))))

(assert (=> b!4986177 (= tp!1397417 e!3116391)))

(declare-fun b!4986340 () Bool)

(declare-fun tp!1397474 () Bool)

(declare-fun tp!1397471 () Bool)

(assert (=> b!4986340 (= e!3116391 (and tp!1397474 tp!1397471))))

(assert (= (and b!4986177 ((_ is ElementMatch!13705) (regex!8472 rule!200))) b!4986339))

(assert (= (and b!4986177 ((_ is Concat!22488) (regex!8472 rule!200))) b!4986340))

(assert (= (and b!4986177 ((_ is Star!13705) (regex!8472 rule!200))) b!4986341))

(assert (= (and b!4986177 ((_ is Union!13705) (regex!8472 rule!200))) b!4986342))

(check-sat b_and!349943 (not b!4986237) (not b!4986250) (not b!4986327) (not b!4986174) (not b!4986328) (not d!1605705) (not b!4986233) (not d!1605731) (not b_next!133979) (not b!4986246) (not d!1605707) (not d!1605709) (not b!4986241) (not d!1605727) (not b!4986326) (not b!4986342) (not b!4986325) (not d!1605699) (not b!4986311) (not b!4986341) (not d!1605721) (not b!4986191) (not b!4986193) (not d!1605711) (not b!4986324) (not d!1605673) (not b!4986323) tp_is_empty!36411 (not b!4986248) (not d!1605729) (not b!4986236) (not b_next!133977) (not b!4986240) (not b!4986184) (not b!4986239) (not d!1605669) (not b!4986340) (not b!4986314) b_and!349945 (not b!4986234) (not b!4986238) (not d!1605701))
(check-sat b_and!349945 b_and!349943 (not b_next!133979) (not b_next!133977))
(get-model)

(declare-fun d!1605733 () Bool)

(declare-fun res!2128654 () tuple2!62658)

(assert (=> d!1605733 (= (tuple2!62663 (list!18494 (_1!34632 res!2128654)) (list!18494 (_2!34632 res!2128654))) (findLongestMatch!1730 (regex!8472 rule!200) (list!18494 input!1580)))))

(declare-fun e!3116397 () Bool)

(declare-fun e!3116396 () Bool)

(assert (=> d!1605733 (and (inv!75534 (_1!34632 res!2128654)) e!3116397 (inv!75534 (_2!34632 res!2128654)) e!3116396)))

(assert (=> d!1605733 (= (choose!36862 (regex!8472 rule!200) input!1580 totalInput!520) res!2128654)))

(declare-fun b!4986347 () Bool)

(declare-fun tp!1397480 () Bool)

(assert (=> b!4986347 (= e!3116397 (and (inv!75532 (c!850843 (_1!34632 res!2128654))) tp!1397480))))

(declare-fun b!4986348 () Bool)

(declare-fun tp!1397479 () Bool)

(assert (=> b!4986348 (= e!3116396 (and (inv!75532 (c!850843 (_2!34632 res!2128654))) tp!1397479))))

(assert (= d!1605733 b!4986347))

(assert (= d!1605733 b!4986348))

(declare-fun m!6018178 () Bool)

(assert (=> d!1605733 m!6018178))

(declare-fun m!6018180 () Bool)

(assert (=> d!1605733 m!6018180))

(declare-fun m!6018182 () Bool)

(assert (=> d!1605733 m!6018182))

(declare-fun m!6018184 () Bool)

(assert (=> d!1605733 m!6018184))

(assert (=> d!1605733 m!6017964))

(assert (=> d!1605733 m!6017964))

(assert (=> d!1605733 m!6018134))

(declare-fun m!6018186 () Bool)

(assert (=> b!4986347 m!6018186))

(declare-fun m!6018188 () Bool)

(assert (=> b!4986348 m!6018188))

(assert (=> d!1605711 d!1605733))

(declare-fun d!1605735 () Bool)

(declare-fun lt!2061044 () tuple2!62662)

(assert (=> d!1605735 (= (++!12566 (_1!34634 lt!2061044) (_2!34634 lt!2061044)) (list!18494 input!1580))))

(declare-fun sizeTr!371 (List!57740 Int) Int)

(assert (=> d!1605735 (= lt!2061044 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 0 (list!18494 input!1580) (list!18494 input!1580) (sizeTr!371 (list!18494 input!1580) 0)))))

(declare-fun lt!2061048 () Unit!148759)

(declare-fun lt!2061042 () Unit!148759)

(assert (=> d!1605735 (= lt!2061048 lt!2061042)))

(declare-fun lt!2061046 () List!57740)

(declare-fun lt!2061047 () Int)

(assert (=> d!1605735 (= (sizeTr!371 lt!2061046 lt!2061047) (+ (size!38273 lt!2061046) lt!2061047))))

(declare-fun lemmaSizeTrEqualsSize!370 (List!57740 Int) Unit!148759)

(assert (=> d!1605735 (= lt!2061042 (lemmaSizeTrEqualsSize!370 lt!2061046 lt!2061047))))

(assert (=> d!1605735 (= lt!2061047 0)))

(assert (=> d!1605735 (= lt!2061046 Nil!57616)))

(declare-fun lt!2061045 () Unit!148759)

(declare-fun lt!2061043 () Unit!148759)

(assert (=> d!1605735 (= lt!2061045 lt!2061043)))

(declare-fun lt!2061041 () Int)

(assert (=> d!1605735 (= (sizeTr!371 (list!18494 input!1580) lt!2061041) (+ (size!38273 (list!18494 input!1580)) lt!2061041))))

(assert (=> d!1605735 (= lt!2061043 (lemmaSizeTrEqualsSize!370 (list!18494 input!1580) lt!2061041))))

(assert (=> d!1605735 (= lt!2061041 0)))

(assert (=> d!1605735 (validRegex!6004 (regex!8472 rule!200))))

(assert (=> d!1605735 (= (findLongestMatch!1730 (regex!8472 rule!200) (list!18494 input!1580)) lt!2061044)))

(declare-fun bs!1184665 () Bool)

(assert (= bs!1184665 d!1605735))

(assert (=> bs!1184665 m!6017964))

(declare-fun m!6018190 () Bool)

(assert (=> bs!1184665 m!6018190))

(declare-fun m!6018192 () Bool)

(assert (=> bs!1184665 m!6018192))

(assert (=> bs!1184665 m!6017964))

(declare-fun m!6018194 () Bool)

(assert (=> bs!1184665 m!6018194))

(declare-fun m!6018196 () Bool)

(assert (=> bs!1184665 m!6018196))

(assert (=> bs!1184665 m!6017964))

(declare-fun m!6018198 () Bool)

(assert (=> bs!1184665 m!6018198))

(assert (=> bs!1184665 m!6017964))

(assert (=> bs!1184665 m!6017964))

(declare-fun m!6018200 () Bool)

(assert (=> bs!1184665 m!6018200))

(declare-fun m!6018202 () Bool)

(assert (=> bs!1184665 m!6018202))

(assert (=> bs!1184665 m!6018070))

(declare-fun m!6018204 () Bool)

(assert (=> bs!1184665 m!6018204))

(assert (=> bs!1184665 m!6017964))

(assert (=> bs!1184665 m!6018200))

(declare-fun m!6018206 () Bool)

(assert (=> bs!1184665 m!6018206))

(assert (=> d!1605711 d!1605735))

(declare-fun d!1605737 () Bool)

(assert (=> d!1605737 (= (list!18494 (_1!34632 lt!2061021)) (list!18496 (c!850843 (_1!34632 lt!2061021))))))

(declare-fun bs!1184666 () Bool)

(assert (= bs!1184666 d!1605737))

(declare-fun m!6018208 () Bool)

(assert (=> bs!1184666 m!6018208))

(assert (=> d!1605711 d!1605737))

(declare-fun b!4986373 () Bool)

(declare-fun res!2128673 () Bool)

(declare-fun e!3116416 () Bool)

(assert (=> b!4986373 (=> res!2128673 e!3116416)))

(assert (=> b!4986373 (= res!2128673 (not ((_ is Concat!22488) (regex!8472 rule!200))))))

(declare-fun e!3116414 () Bool)

(assert (=> b!4986373 (= e!3116414 e!3116416)))

(declare-fun bm!347967 () Bool)

(declare-fun call!347974 () Bool)

(declare-fun c!850865 () Bool)

(assert (=> bm!347967 (= call!347974 (validRegex!6004 (ite c!850865 (regOne!27923 (regex!8472 rule!200)) (regOne!27922 (regex!8472 rule!200)))))))

(declare-fun b!4986374 () Bool)

(declare-fun e!3116415 () Bool)

(declare-fun call!347973 () Bool)

(assert (=> b!4986374 (= e!3116415 call!347973)))

(declare-fun call!347972 () Bool)

(declare-fun c!850866 () Bool)

(declare-fun bm!347968 () Bool)

(assert (=> bm!347968 (= call!347972 (validRegex!6004 (ite c!850866 (reg!14034 (regex!8472 rule!200)) (ite c!850865 (regTwo!27923 (regex!8472 rule!200)) (regTwo!27922 (regex!8472 rule!200))))))))

(declare-fun b!4986375 () Bool)

(assert (=> b!4986375 (= e!3116416 e!3116415)))

(declare-fun res!2128676 () Bool)

(assert (=> b!4986375 (=> (not res!2128676) (not e!3116415))))

(assert (=> b!4986375 (= res!2128676 call!347974)))

(declare-fun d!1605741 () Bool)

(declare-fun res!2128675 () Bool)

(declare-fun e!3116418 () Bool)

(assert (=> d!1605741 (=> res!2128675 e!3116418)))

(assert (=> d!1605741 (= res!2128675 ((_ is ElementMatch!13705) (regex!8472 rule!200)))))

(assert (=> d!1605741 (= (validRegex!6004 (regex!8472 rule!200)) e!3116418)))

(declare-fun b!4986376 () Bool)

(declare-fun e!3116419 () Bool)

(assert (=> b!4986376 (= e!3116419 call!347972)))

(declare-fun bm!347969 () Bool)

(assert (=> bm!347969 (= call!347973 call!347972)))

(declare-fun b!4986377 () Bool)

(declare-fun e!3116420 () Bool)

(assert (=> b!4986377 (= e!3116418 e!3116420)))

(assert (=> b!4986377 (= c!850866 ((_ is Star!13705) (regex!8472 rule!200)))))

(declare-fun b!4986378 () Bool)

(assert (=> b!4986378 (= e!3116420 e!3116419)))

(declare-fun res!2128677 () Bool)

(assert (=> b!4986378 (= res!2128677 (not (nullable!4655 (reg!14034 (regex!8472 rule!200)))))))

(assert (=> b!4986378 (=> (not res!2128677) (not e!3116419))))

(declare-fun b!4986379 () Bool)

(declare-fun res!2128674 () Bool)

(declare-fun e!3116417 () Bool)

(assert (=> b!4986379 (=> (not res!2128674) (not e!3116417))))

(assert (=> b!4986379 (= res!2128674 call!347974)))

(assert (=> b!4986379 (= e!3116414 e!3116417)))

(declare-fun b!4986380 () Bool)

(assert (=> b!4986380 (= e!3116417 call!347973)))

(declare-fun b!4986381 () Bool)

(assert (=> b!4986381 (= e!3116420 e!3116414)))

(assert (=> b!4986381 (= c!850865 ((_ is Union!13705) (regex!8472 rule!200)))))

(assert (= (and d!1605741 (not res!2128675)) b!4986377))

(assert (= (and b!4986377 c!850866) b!4986378))

(assert (= (and b!4986377 (not c!850866)) b!4986381))

(assert (= (and b!4986378 res!2128677) b!4986376))

(assert (= (and b!4986381 c!850865) b!4986379))

(assert (= (and b!4986381 (not c!850865)) b!4986373))

(assert (= (and b!4986379 res!2128674) b!4986380))

(assert (= (and b!4986373 (not res!2128673)) b!4986375))

(assert (= (and b!4986375 res!2128676) b!4986374))

(assert (= (or b!4986379 b!4986375) bm!347967))

(assert (= (or b!4986380 b!4986374) bm!347969))

(assert (= (or b!4986376 bm!347969) bm!347968))

(declare-fun m!6018210 () Bool)

(assert (=> bm!347967 m!6018210))

(declare-fun m!6018212 () Bool)

(assert (=> bm!347968 m!6018212))

(declare-fun m!6018214 () Bool)

(assert (=> b!4986378 m!6018214))

(assert (=> d!1605711 d!1605741))

(assert (=> d!1605711 d!1605731))

(declare-fun d!1605743 () Bool)

(assert (=> d!1605743 (= (list!18494 (_2!34632 lt!2061021)) (list!18496 (c!850843 (_2!34632 lt!2061021))))))

(declare-fun bs!1184667 () Bool)

(assert (= bs!1184667 d!1605743))

(declare-fun m!6018218 () Bool)

(assert (=> bs!1184667 m!6018218))

(assert (=> d!1605711 d!1605743))

(declare-fun d!1605745 () Bool)

(declare-fun lt!2061051 () Int)

(assert (=> d!1605745 (>= lt!2061051 0)))

(declare-fun e!3116428 () Int)

(assert (=> d!1605745 (= lt!2061051 e!3116428)))

(declare-fun c!850871 () Bool)

(assert (=> d!1605745 (= c!850871 ((_ is Nil!57616) (_2!34631 (get!20049 lt!2060998))))))

(assert (=> d!1605745 (= (size!38273 (_2!34631 (get!20049 lt!2060998))) lt!2061051)))

(declare-fun b!4986395 () Bool)

(assert (=> b!4986395 (= e!3116428 0)))

(declare-fun b!4986396 () Bool)

(assert (=> b!4986396 (= e!3116428 (+ 1 (size!38273 (t!369984 (_2!34631 (get!20049 lt!2060998))))))))

(assert (= (and d!1605745 c!850871) b!4986395))

(assert (= (and d!1605745 (not c!850871)) b!4986396))

(declare-fun m!6018236 () Bool)

(assert (=> b!4986396 m!6018236))

(assert (=> b!4986234 d!1605745))

(declare-fun d!1605753 () Bool)

(assert (=> d!1605753 (= (get!20049 lt!2060998) (v!50559 lt!2060998))))

(assert (=> b!4986234 d!1605753))

(declare-fun d!1605755 () Bool)

(declare-fun lt!2061052 () Int)

(assert (=> d!1605755 (>= lt!2061052 0)))

(declare-fun e!3116429 () Int)

(assert (=> d!1605755 (= lt!2061052 e!3116429)))

(declare-fun c!850872 () Bool)

(assert (=> d!1605755 (= c!850872 ((_ is Nil!57616) lt!2060973))))

(assert (=> d!1605755 (= (size!38273 lt!2060973) lt!2061052)))

(declare-fun b!4986397 () Bool)

(assert (=> b!4986397 (= e!3116429 0)))

(declare-fun b!4986398 () Bool)

(assert (=> b!4986398 (= e!3116429 (+ 1 (size!38273 (t!369984 lt!2060973))))))

(assert (= (and d!1605755 c!850872) b!4986397))

(assert (= (and d!1605755 (not c!850872)) b!4986398))

(declare-fun m!6018238 () Bool)

(assert (=> b!4986398 m!6018238))

(assert (=> b!4986234 d!1605755))

(assert (=> b!4986236 d!1605753))

(declare-fun d!1605757 () Bool)

(declare-fun dynLambda!23456 (Int BalanceConc!29878) TokenValue!8782)

(assert (=> d!1605757 (= (apply!13958 (transformation!8472 (rule!11740 (_1!34631 (get!20049 lt!2060998)))) (seqFromList!6092 (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998))))) (dynLambda!23456 (toValue!11477 (transformation!8472 (rule!11740 (_1!34631 (get!20049 lt!2060998))))) (seqFromList!6092 (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998))))))))

(declare-fun b_lambda!198357 () Bool)

(assert (=> (not b_lambda!198357) (not d!1605757)))

(declare-fun t!369987 () Bool)

(declare-fun tb!261743 () Bool)

(assert (=> (and b!4986176 (= (toValue!11477 (transformation!8472 rule!200)) (toValue!11477 (transformation!8472 (rule!11740 (_1!34631 (get!20049 lt!2060998)))))) t!369987) tb!261743))

(declare-fun result!327170 () Bool)

(declare-fun inv!21 (TokenValue!8782) Bool)

(assert (=> tb!261743 (= result!327170 (inv!21 (dynLambda!23456 (toValue!11477 (transformation!8472 (rule!11740 (_1!34631 (get!20049 lt!2060998))))) (seqFromList!6092 (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998)))))))))

(declare-fun m!6018240 () Bool)

(assert (=> tb!261743 m!6018240))

(assert (=> d!1605757 t!369987))

(declare-fun b_and!349947 () Bool)

(assert (= b_and!349943 (and (=> t!369987 result!327170) b_and!349947)))

(assert (=> d!1605757 m!6018058))

(declare-fun m!6018242 () Bool)

(assert (=> d!1605757 m!6018242))

(assert (=> b!4986236 d!1605757))

(declare-fun d!1605759 () Bool)

(declare-fun fromListB!2757 (List!57740) BalanceConc!29878)

(assert (=> d!1605759 (= (seqFromList!6092 (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998)))) (fromListB!2757 (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998)))))))

(declare-fun bs!1184668 () Bool)

(assert (= bs!1184668 d!1605759))

(declare-fun m!6018244 () Bool)

(assert (=> bs!1184668 m!6018244))

(assert (=> b!4986236 d!1605759))

(assert (=> b!4986184 d!1605703))

(declare-fun b!4986425 () Bool)

(declare-fun res!2128698 () Bool)

(declare-fun e!3116443 () Bool)

(assert (=> b!4986425 (=> (not res!2128698) (not e!3116443))))

(assert (=> b!4986425 (= res!2128698 (isBalanced!4238 (left!42146 (c!850843 input!1580))))))

(declare-fun b!4986426 () Bool)

(declare-fun res!2128699 () Bool)

(assert (=> b!4986426 (=> (not res!2128699) (not e!3116443))))

(assert (=> b!4986426 (= res!2128699 (isBalanced!4238 (right!42476 (c!850843 input!1580))))))

(declare-fun b!4986427 () Bool)

(declare-fun res!2128697 () Bool)

(assert (=> b!4986427 (=> (not res!2128697) (not e!3116443))))

(declare-fun height!2027 (Conc!15224) Int)

(assert (=> b!4986427 (= res!2128697 (<= (- (height!2027 (left!42146 (c!850843 input!1580))) (height!2027 (right!42476 (c!850843 input!1580)))) 1))))

(declare-fun b!4986428 () Bool)

(assert (=> b!4986428 (= e!3116443 (not (isEmpty!31171 (right!42476 (c!850843 input!1580)))))))

(declare-fun d!1605761 () Bool)

(declare-fun res!2128695 () Bool)

(declare-fun e!3116444 () Bool)

(assert (=> d!1605761 (=> res!2128695 e!3116444)))

(assert (=> d!1605761 (= res!2128695 (not ((_ is Node!15224) (c!850843 input!1580))))))

(assert (=> d!1605761 (= (isBalanced!4238 (c!850843 input!1580)) e!3116444)))

(declare-fun b!4986429 () Bool)

(assert (=> b!4986429 (= e!3116444 e!3116443)))

(declare-fun res!2128700 () Bool)

(assert (=> b!4986429 (=> (not res!2128700) (not e!3116443))))

(assert (=> b!4986429 (= res!2128700 (<= (- 1) (- (height!2027 (left!42146 (c!850843 input!1580))) (height!2027 (right!42476 (c!850843 input!1580))))))))

(declare-fun b!4986430 () Bool)

(declare-fun res!2128696 () Bool)

(assert (=> b!4986430 (=> (not res!2128696) (not e!3116443))))

(assert (=> b!4986430 (= res!2128696 (not (isEmpty!31171 (left!42146 (c!850843 input!1580)))))))

(assert (= (and d!1605761 (not res!2128695)) b!4986429))

(assert (= (and b!4986429 res!2128700) b!4986427))

(assert (= (and b!4986427 res!2128697) b!4986425))

(assert (= (and b!4986425 res!2128698) b!4986426))

(assert (= (and b!4986426 res!2128699) b!4986430))

(assert (= (and b!4986430 res!2128696) b!4986428))

(declare-fun m!6018254 () Bool)

(assert (=> b!4986425 m!6018254))

(declare-fun m!6018256 () Bool)

(assert (=> b!4986426 m!6018256))

(declare-fun m!6018258 () Bool)

(assert (=> b!4986428 m!6018258))

(declare-fun m!6018260 () Bool)

(assert (=> b!4986429 m!6018260))

(declare-fun m!6018262 () Bool)

(assert (=> b!4986429 m!6018262))

(declare-fun m!6018264 () Bool)

(assert (=> b!4986430 m!6018264))

(assert (=> b!4986427 m!6018260))

(assert (=> b!4986427 m!6018262))

(assert (=> d!1605707 d!1605761))

(declare-fun d!1605769 () Bool)

(declare-fun c!850879 () Bool)

(assert (=> d!1605769 (= c!850879 ((_ is Node!15224) (left!42146 (c!850843 totalInput!520))))))

(declare-fun e!3116445 () Bool)

(assert (=> d!1605769 (= (inv!75532 (left!42146 (c!850843 totalInput!520))) e!3116445)))

(declare-fun b!4986431 () Bool)

(assert (=> b!4986431 (= e!3116445 (inv!75536 (left!42146 (c!850843 totalInput!520))))))

(declare-fun b!4986432 () Bool)

(declare-fun e!3116446 () Bool)

(assert (=> b!4986432 (= e!3116445 e!3116446)))

(declare-fun res!2128701 () Bool)

(assert (=> b!4986432 (= res!2128701 (not ((_ is Leaf!25285) (left!42146 (c!850843 totalInput!520)))))))

(assert (=> b!4986432 (=> res!2128701 e!3116446)))

(declare-fun b!4986433 () Bool)

(assert (=> b!4986433 (= e!3116446 (inv!75538 (left!42146 (c!850843 totalInput!520))))))

(assert (= (and d!1605769 c!850879) b!4986431))

(assert (= (and d!1605769 (not c!850879)) b!4986432))

(assert (= (and b!4986432 (not res!2128701)) b!4986433))

(declare-fun m!6018266 () Bool)

(assert (=> b!4986431 m!6018266))

(declare-fun m!6018268 () Bool)

(assert (=> b!4986433 m!6018268))

(assert (=> b!4986326 d!1605769))

(declare-fun d!1605771 () Bool)

(declare-fun c!850880 () Bool)

(assert (=> d!1605771 (= c!850880 ((_ is Node!15224) (right!42476 (c!850843 totalInput!520))))))

(declare-fun e!3116447 () Bool)

(assert (=> d!1605771 (= (inv!75532 (right!42476 (c!850843 totalInput!520))) e!3116447)))

(declare-fun b!4986434 () Bool)

(assert (=> b!4986434 (= e!3116447 (inv!75536 (right!42476 (c!850843 totalInput!520))))))

(declare-fun b!4986435 () Bool)

(declare-fun e!3116448 () Bool)

(assert (=> b!4986435 (= e!3116447 e!3116448)))

(declare-fun res!2128702 () Bool)

(assert (=> b!4986435 (= res!2128702 (not ((_ is Leaf!25285) (right!42476 (c!850843 totalInput!520)))))))

(assert (=> b!4986435 (=> res!2128702 e!3116448)))

(declare-fun b!4986436 () Bool)

(assert (=> b!4986436 (= e!3116448 (inv!75538 (right!42476 (c!850843 totalInput!520))))))

(assert (= (and d!1605771 c!850880) b!4986434))

(assert (= (and d!1605771 (not c!850880)) b!4986435))

(assert (= (and b!4986435 (not res!2128702)) b!4986436))

(declare-fun m!6018270 () Bool)

(assert (=> b!4986434 m!6018270))

(declare-fun m!6018272 () Bool)

(assert (=> b!4986436 m!6018272))

(assert (=> b!4986326 d!1605771))

(declare-fun d!1605773 () Bool)

(assert (=> d!1605773 (= (isEmpty!31168 lt!2060972) (not ((_ is Some!14562) lt!2060972)))))

(assert (=> d!1605669 d!1605773))

(declare-fun d!1605775 () Bool)

(assert (=> d!1605775 (= (inv!75540 (xs!18550 (c!850843 totalInput!520))) (<= (size!38273 (innerList!15312 (xs!18550 (c!850843 totalInput!520)))) 2147483647))))

(declare-fun bs!1184669 () Bool)

(assert (= bs!1184669 d!1605775))

(declare-fun m!6018274 () Bool)

(assert (=> bs!1184669 m!6018274))

(assert (=> b!4986327 d!1605775))

(assert (=> b!4986233 d!1605753))

(declare-fun d!1605777 () Bool)

(declare-fun lt!2061053 () Int)

(assert (=> d!1605777 (>= lt!2061053 0)))

(declare-fun e!3116449 () Int)

(assert (=> d!1605777 (= lt!2061053 e!3116449)))

(declare-fun c!850881 () Bool)

(assert (=> d!1605777 (= c!850881 ((_ is Nil!57616) (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998)))))))

(assert (=> d!1605777 (= (size!38273 (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998)))) lt!2061053)))

(declare-fun b!4986437 () Bool)

(assert (=> b!4986437 (= e!3116449 0)))

(declare-fun b!4986438 () Bool)

(assert (=> b!4986438 (= e!3116449 (+ 1 (size!38273 (t!369984 (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998)))))))))

(assert (= (and d!1605777 c!850881) b!4986437))

(assert (= (and d!1605777 (not c!850881)) b!4986438))

(declare-fun m!6018276 () Bool)

(assert (=> b!4986438 m!6018276))

(assert (=> b!4986233 d!1605777))

(declare-fun d!1605779 () Bool)

(assert (=> d!1605779 (= (isEmpty!31170 (list!18494 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520)))) ((_ is Nil!57616) (list!18494 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520)))))))

(assert (=> d!1605709 d!1605779))

(declare-fun d!1605781 () Bool)

(assert (=> d!1605781 (= (list!18494 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520))) (list!18496 (c!850843 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520)))))))

(declare-fun bs!1184670 () Bool)

(assert (= bs!1184670 d!1605781))

(declare-fun m!6018278 () Bool)

(assert (=> bs!1184670 m!6018278))

(assert (=> d!1605709 d!1605781))

(declare-fun d!1605783 () Bool)

(declare-fun lt!2061056 () Bool)

(assert (=> d!1605783 (= lt!2061056 (isEmpty!31170 (list!18496 (c!850843 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520))))))))

(declare-fun size!38276 (Conc!15224) Int)

(assert (=> d!1605783 (= lt!2061056 (= (size!38276 (c!850843 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520)))) 0))))

(assert (=> d!1605783 (= (isEmpty!31171 (c!850843 (_1!34632 (findLongestMatchWithZipperSequenceV2!235 (regex!8472 rule!200) input!1580 totalInput!520)))) lt!2061056)))

(declare-fun bs!1184671 () Bool)

(assert (= bs!1184671 d!1605783))

(assert (=> bs!1184671 m!6018278))

(assert (=> bs!1184671 m!6018278))

(declare-fun m!6018280 () Bool)

(assert (=> bs!1184671 m!6018280))

(declare-fun m!6018282 () Bool)

(assert (=> bs!1184671 m!6018282))

(assert (=> d!1605709 d!1605783))

(declare-fun b!4986450 () Bool)

(declare-fun e!3116454 () Bool)

(declare-fun lt!2061059 () List!57740)

(assert (=> b!4986450 (= e!3116454 (or (not (= (_2!34631 (get!20049 lt!2060998)) Nil!57616)) (= lt!2061059 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998)))))))))

(declare-fun d!1605785 () Bool)

(assert (=> d!1605785 e!3116454))

(declare-fun res!2128708 () Bool)

(assert (=> d!1605785 (=> (not res!2128708) (not e!3116454))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10204 (List!57740) (InoxSet C!27660))

(assert (=> d!1605785 (= res!2128708 (= (content!10204 lt!2061059) ((_ map or) (content!10204 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))) (content!10204 (_2!34631 (get!20049 lt!2060998))))))))

(declare-fun e!3116455 () List!57740)

(assert (=> d!1605785 (= lt!2061059 e!3116455)))

(declare-fun c!850884 () Bool)

(assert (=> d!1605785 (= c!850884 ((_ is Nil!57616) (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))))))

(assert (=> d!1605785 (= (++!12566 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998)))) (_2!34631 (get!20049 lt!2060998))) lt!2061059)))

(declare-fun b!4986448 () Bool)

(assert (=> b!4986448 (= e!3116455 (Cons!57616 (h!64064 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))) (++!12566 (t!369984 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))) (_2!34631 (get!20049 lt!2060998)))))))

(declare-fun b!4986449 () Bool)

(declare-fun res!2128707 () Bool)

(assert (=> b!4986449 (=> (not res!2128707) (not e!3116454))))

(assert (=> b!4986449 (= res!2128707 (= (size!38273 lt!2061059) (+ (size!38273 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))) (size!38273 (_2!34631 (get!20049 lt!2060998))))))))

(declare-fun b!4986447 () Bool)

(assert (=> b!4986447 (= e!3116455 (_2!34631 (get!20049 lt!2060998)))))

(assert (= (and d!1605785 c!850884) b!4986447))

(assert (= (and d!1605785 (not c!850884)) b!4986448))

(assert (= (and d!1605785 res!2128708) b!4986449))

(assert (= (and b!4986449 res!2128707) b!4986450))

(declare-fun m!6018284 () Bool)

(assert (=> d!1605785 m!6018284))

(assert (=> d!1605785 m!6018052))

(declare-fun m!6018286 () Bool)

(assert (=> d!1605785 m!6018286))

(declare-fun m!6018288 () Bool)

(assert (=> d!1605785 m!6018288))

(declare-fun m!6018290 () Bool)

(assert (=> b!4986448 m!6018290))

(declare-fun m!6018292 () Bool)

(assert (=> b!4986449 m!6018292))

(assert (=> b!4986449 m!6018052))

(declare-fun m!6018294 () Bool)

(assert (=> b!4986449 m!6018294))

(assert (=> b!4986449 m!6018048))

(assert (=> b!4986240 d!1605785))

(declare-fun d!1605787 () Bool)

(assert (=> d!1605787 (= (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998)))) (list!18496 (c!850843 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))))))

(declare-fun bs!1184672 () Bool)

(assert (= bs!1184672 d!1605787))

(declare-fun m!6018296 () Bool)

(assert (=> bs!1184672 m!6018296))

(assert (=> b!4986240 d!1605787))

(declare-fun d!1605789 () Bool)

(declare-fun lt!2061062 () BalanceConc!29878)

(assert (=> d!1605789 (= (list!18494 lt!2061062) (originalCharacters!8731 (_1!34631 (get!20049 lt!2060998))))))

(declare-fun dynLambda!23457 (Int TokenValue!8782) BalanceConc!29878)

(assert (=> d!1605789 (= lt!2061062 (dynLambda!23457 (toChars!11336 (transformation!8472 (rule!11740 (_1!34631 (get!20049 lt!2060998))))) (value!270872 (_1!34631 (get!20049 lt!2060998)))))))

(assert (=> d!1605789 (= (charsOf!5466 (_1!34631 (get!20049 lt!2060998))) lt!2061062)))

(declare-fun b_lambda!198359 () Bool)

(assert (=> (not b_lambda!198359) (not d!1605789)))

(declare-fun tb!261745 () Bool)

(declare-fun t!369992 () Bool)

(assert (=> (and b!4986176 (= (toChars!11336 (transformation!8472 rule!200)) (toChars!11336 (transformation!8472 (rule!11740 (_1!34631 (get!20049 lt!2060998)))))) t!369992) tb!261745))

(declare-fun b!4986455 () Bool)

(declare-fun e!3116458 () Bool)

(declare-fun tp!1397483 () Bool)

(assert (=> b!4986455 (= e!3116458 (and (inv!75532 (c!850843 (dynLambda!23457 (toChars!11336 (transformation!8472 (rule!11740 (_1!34631 (get!20049 lt!2060998))))) (value!270872 (_1!34631 (get!20049 lt!2060998)))))) tp!1397483))))

(declare-fun result!327174 () Bool)

(assert (=> tb!261745 (= result!327174 (and (inv!75534 (dynLambda!23457 (toChars!11336 (transformation!8472 (rule!11740 (_1!34631 (get!20049 lt!2060998))))) (value!270872 (_1!34631 (get!20049 lt!2060998))))) e!3116458))))

(assert (= tb!261745 b!4986455))

(declare-fun m!6018298 () Bool)

(assert (=> b!4986455 m!6018298))

(declare-fun m!6018300 () Bool)

(assert (=> tb!261745 m!6018300))

(assert (=> d!1605789 t!369992))

(declare-fun b_and!349949 () Bool)

(assert (= b_and!349945 (and (=> t!369992 result!327174) b_and!349949)))

(declare-fun m!6018302 () Bool)

(assert (=> d!1605789 m!6018302))

(declare-fun m!6018304 () Bool)

(assert (=> d!1605789 m!6018304))

(assert (=> b!4986240 d!1605789))

(assert (=> b!4986240 d!1605753))

(declare-fun d!1605791 () Bool)

(declare-fun res!2128715 () Bool)

(declare-fun e!3116461 () Bool)

(assert (=> d!1605791 (=> (not res!2128715) (not e!3116461))))

(assert (=> d!1605791 (= res!2128715 (= (csize!30678 (c!850843 totalInput!520)) (+ (size!38276 (left!42146 (c!850843 totalInput!520))) (size!38276 (right!42476 (c!850843 totalInput!520))))))))

(assert (=> d!1605791 (= (inv!75536 (c!850843 totalInput!520)) e!3116461)))

(declare-fun b!4986462 () Bool)

(declare-fun res!2128716 () Bool)

(assert (=> b!4986462 (=> (not res!2128716) (not e!3116461))))

(assert (=> b!4986462 (= res!2128716 (and (not (= (left!42146 (c!850843 totalInput!520)) Empty!15224)) (not (= (right!42476 (c!850843 totalInput!520)) Empty!15224))))))

(declare-fun b!4986463 () Bool)

(declare-fun res!2128717 () Bool)

(assert (=> b!4986463 (=> (not res!2128717) (not e!3116461))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4986463 (= res!2128717 (= (cheight!15435 (c!850843 totalInput!520)) (+ (max!0 (height!2027 (left!42146 (c!850843 totalInput!520))) (height!2027 (right!42476 (c!850843 totalInput!520)))) 1)))))

(declare-fun b!4986464 () Bool)

(assert (=> b!4986464 (= e!3116461 (<= 0 (cheight!15435 (c!850843 totalInput!520))))))

(assert (= (and d!1605791 res!2128715) b!4986462))

(assert (= (and b!4986462 res!2128716) b!4986463))

(assert (= (and b!4986463 res!2128717) b!4986464))

(declare-fun m!6018306 () Bool)

(assert (=> d!1605791 m!6018306))

(declare-fun m!6018308 () Bool)

(assert (=> d!1605791 m!6018308))

(declare-fun m!6018310 () Bool)

(assert (=> b!4986463 m!6018310))

(declare-fun m!6018312 () Bool)

(assert (=> b!4986463 m!6018312))

(assert (=> b!4986463 m!6018310))

(assert (=> b!4986463 m!6018312))

(declare-fun m!6018314 () Bool)

(assert (=> b!4986463 m!6018314))

(assert (=> b!4986248 d!1605791))

(declare-fun d!1605793 () Bool)

(assert (=> d!1605793 (= (inv!75540 (xs!18550 (c!850843 input!1580))) (<= (size!38273 (innerList!15312 (xs!18550 (c!850843 input!1580)))) 2147483647))))

(declare-fun bs!1184673 () Bool)

(assert (= bs!1184673 d!1605793))

(declare-fun m!6018316 () Bool)

(assert (=> bs!1184673 m!6018316))

(assert (=> b!4986324 d!1605793))

(declare-fun d!1605795 () Bool)

(declare-fun res!2128722 () Bool)

(declare-fun e!3116464 () Bool)

(assert (=> d!1605795 (=> (not res!2128722) (not e!3116464))))

(declare-fun list!18497 (IArray!30509) List!57740)

(assert (=> d!1605795 (= res!2128722 (<= (size!38273 (list!18497 (xs!18550 (c!850843 totalInput!520)))) 512))))

(assert (=> d!1605795 (= (inv!75538 (c!850843 totalInput!520)) e!3116464)))

(declare-fun b!4986469 () Bool)

(declare-fun res!2128723 () Bool)

(assert (=> b!4986469 (=> (not res!2128723) (not e!3116464))))

(assert (=> b!4986469 (= res!2128723 (= (csize!30679 (c!850843 totalInput!520)) (size!38273 (list!18497 (xs!18550 (c!850843 totalInput!520))))))))

(declare-fun b!4986470 () Bool)

(assert (=> b!4986470 (= e!3116464 (and (> (csize!30679 (c!850843 totalInput!520)) 0) (<= (csize!30679 (c!850843 totalInput!520)) 512)))))

(assert (= (and d!1605795 res!2128722) b!4986469))

(assert (= (and b!4986469 res!2128723) b!4986470))

(declare-fun m!6018332 () Bool)

(assert (=> d!1605795 m!6018332))

(assert (=> d!1605795 m!6018332))

(declare-fun m!6018336 () Bool)

(assert (=> d!1605795 m!6018336))

(assert (=> b!4986469 m!6018332))

(assert (=> b!4986469 m!6018332))

(assert (=> b!4986469 m!6018336))

(assert (=> b!4986250 d!1605795))

(declare-fun b!4986489 () Bool)

(declare-fun e!3116478 () Int)

(declare-fun call!347977 () Int)

(assert (=> b!4986489 (= e!3116478 call!347977)))

(declare-fun b!4986490 () Bool)

(declare-fun e!3116476 () Int)

(assert (=> b!4986490 (= e!3116476 0)))

(declare-fun b!4986491 () Bool)

(assert (=> b!4986491 (= e!3116476 (- call!347977 (- (size!38273 (list!18494 totalInput!520)) (size!38273 lt!2060973))))))

(declare-fun b!4986492 () Bool)

(declare-fun e!3116475 () List!57740)

(assert (=> b!4986492 (= e!3116475 (drop!2386 (t!369984 (list!18494 totalInput!520)) (- (- (size!38273 (list!18494 totalInput!520)) (size!38273 lt!2060973)) 1)))))

(declare-fun d!1605797 () Bool)

(declare-fun e!3116477 () Bool)

(assert (=> d!1605797 e!3116477))

(declare-fun res!2128726 () Bool)

(assert (=> d!1605797 (=> (not res!2128726) (not e!3116477))))

(declare-fun lt!2061089 () List!57740)

(assert (=> d!1605797 (= res!2128726 (= ((_ map implies) (content!10204 lt!2061089) (content!10204 (list!18494 totalInput!520))) ((as const (InoxSet C!27660)) true)))))

(declare-fun e!3116479 () List!57740)

(assert (=> d!1605797 (= lt!2061089 e!3116479)))

(declare-fun c!850895 () Bool)

(assert (=> d!1605797 (= c!850895 ((_ is Nil!57616) (list!18494 totalInput!520)))))

(assert (=> d!1605797 (= (drop!2386 (list!18494 totalInput!520) (- (size!38273 (list!18494 totalInput!520)) (size!38273 lt!2060973))) lt!2061089)))

(declare-fun b!4986493 () Bool)

(assert (=> b!4986493 (= e!3116475 (list!18494 totalInput!520))))

(declare-fun b!4986494 () Bool)

(assert (=> b!4986494 (= e!3116479 e!3116475)))

(declare-fun c!850896 () Bool)

(assert (=> b!4986494 (= c!850896 (<= (- (size!38273 (list!18494 totalInput!520)) (size!38273 lt!2060973)) 0))))

(declare-fun bm!347972 () Bool)

(assert (=> bm!347972 (= call!347977 (size!38273 (list!18494 totalInput!520)))))

(declare-fun b!4986495 () Bool)

(assert (=> b!4986495 (= e!3116478 e!3116476)))

(declare-fun c!850894 () Bool)

(assert (=> b!4986495 (= c!850894 (>= (- (size!38273 (list!18494 totalInput!520)) (size!38273 lt!2060973)) call!347977))))

(declare-fun b!4986496 () Bool)

(assert (=> b!4986496 (= e!3116477 (= (size!38273 lt!2061089) e!3116478))))

(declare-fun c!850893 () Bool)

(assert (=> b!4986496 (= c!850893 (<= (- (size!38273 (list!18494 totalInput!520)) (size!38273 lt!2060973)) 0))))

(declare-fun b!4986497 () Bool)

(assert (=> b!4986497 (= e!3116479 Nil!57616)))

(assert (= (and d!1605797 c!850895) b!4986497))

(assert (= (and d!1605797 (not c!850895)) b!4986494))

(assert (= (and b!4986494 c!850896) b!4986493))

(assert (= (and b!4986494 (not c!850896)) b!4986492))

(assert (= (and d!1605797 res!2128726) b!4986496))

(assert (= (and b!4986496 c!850893) b!4986489))

(assert (= (and b!4986496 (not c!850893)) b!4986495))

(assert (= (and b!4986495 c!850894) b!4986490))

(assert (= (and b!4986495 (not c!850894)) b!4986491))

(assert (= (or b!4986489 b!4986495 b!4986491) bm!347972))

(declare-fun m!6018342 () Bool)

(assert (=> b!4986492 m!6018342))

(declare-fun m!6018344 () Bool)

(assert (=> d!1605797 m!6018344))

(assert (=> d!1605797 m!6017960))

(declare-fun m!6018346 () Bool)

(assert (=> d!1605797 m!6018346))

(assert (=> bm!347972 m!6017960))

(assert (=> bm!347972 m!6018158))

(declare-fun m!6018348 () Bool)

(assert (=> b!4986496 m!6018348))

(assert (=> d!1605727 d!1605797))

(declare-fun d!1605805 () Bool)

(declare-fun lt!2061090 () Int)

(assert (=> d!1605805 (>= lt!2061090 0)))

(declare-fun e!3116480 () Int)

(assert (=> d!1605805 (= lt!2061090 e!3116480)))

(declare-fun c!850897 () Bool)

(assert (=> d!1605805 (= c!850897 ((_ is Nil!57616) (list!18494 totalInput!520)))))

(assert (=> d!1605805 (= (size!38273 (list!18494 totalInput!520)) lt!2061090)))

(declare-fun b!4986498 () Bool)

(assert (=> b!4986498 (= e!3116480 0)))

(declare-fun b!4986499 () Bool)

(assert (=> b!4986499 (= e!3116480 (+ 1 (size!38273 (t!369984 (list!18494 totalInput!520)))))))

(assert (= (and d!1605805 c!850897) b!4986498))

(assert (= (and d!1605805 (not c!850897)) b!4986499))

(declare-fun m!6018350 () Bool)

(assert (=> b!4986499 m!6018350))

(assert (=> d!1605727 d!1605805))

(assert (=> d!1605727 d!1605755))

(declare-fun b!4986528 () Bool)

(declare-fun e!3116496 () Bool)

(declare-fun e!3116501 () Bool)

(assert (=> b!4986528 (= e!3116496 e!3116501)))

(declare-fun res!2128745 () Bool)

(assert (=> b!4986528 (=> res!2128745 e!3116501)))

(declare-fun call!347980 () Bool)

(assert (=> b!4986528 (= res!2128745 call!347980)))

(declare-fun b!4986529 () Bool)

(declare-fun res!2128748 () Bool)

(assert (=> b!4986529 (=> res!2128748 e!3116501)))

(declare-fun tail!9836 (List!57740) List!57740)

(assert (=> b!4986529 (= res!2128748 (not (isEmpty!31170 (tail!9836 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))))))))

(declare-fun bm!347975 () Bool)

(assert (=> bm!347975 (= call!347980 (isEmpty!31170 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))))))

(declare-fun b!4986530 () Bool)

(declare-fun e!3116495 () Bool)

(declare-fun lt!2061093 () Bool)

(assert (=> b!4986530 (= e!3116495 (not lt!2061093))))

(declare-fun b!4986531 () Bool)

(declare-fun res!2128743 () Bool)

(declare-fun e!3116497 () Bool)

(assert (=> b!4986531 (=> (not res!2128743) (not e!3116497))))

(assert (=> b!4986531 (= res!2128743 (not call!347980))))

(declare-fun d!1605807 () Bool)

(declare-fun e!3116499 () Bool)

(assert (=> d!1605807 e!3116499))

(declare-fun c!850905 () Bool)

(assert (=> d!1605807 (= c!850905 ((_ is EmptyExpr!13705) (regex!8472 rule!200)))))

(declare-fun e!3116500 () Bool)

(assert (=> d!1605807 (= lt!2061093 e!3116500)))

(declare-fun c!850906 () Bool)

(assert (=> d!1605807 (= c!850906 (isEmpty!31170 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))))))

(assert (=> d!1605807 (validRegex!6004 (regex!8472 rule!200))))

(assert (=> d!1605807 (= (matchR!6698 (regex!8472 rule!200) (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))) lt!2061093)))

(declare-fun b!4986532 () Bool)

(declare-fun res!2128750 () Bool)

(declare-fun e!3116498 () Bool)

(assert (=> b!4986532 (=> res!2128750 e!3116498)))

(assert (=> b!4986532 (= res!2128750 (not ((_ is ElementMatch!13705) (regex!8472 rule!200))))))

(assert (=> b!4986532 (= e!3116495 e!3116498)))

(declare-fun b!4986533 () Bool)

(declare-fun head!10703 (List!57740) C!27660)

(assert (=> b!4986533 (= e!3116497 (= (head!10703 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))) (c!850844 (regex!8472 rule!200))))))

(declare-fun b!4986534 () Bool)

(assert (=> b!4986534 (= e!3116500 (nullable!4655 (regex!8472 rule!200)))))

(declare-fun b!4986535 () Bool)

(declare-fun derivativeStep!3954 (Regex!13705 C!27660) Regex!13705)

(assert (=> b!4986535 (= e!3116500 (matchR!6698 (derivativeStep!3954 (regex!8472 rule!200) (head!10703 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973))))) (tail!9836 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973))))))))

(declare-fun b!4986536 () Bool)

(assert (=> b!4986536 (= e!3116499 (= lt!2061093 call!347980))))

(declare-fun b!4986537 () Bool)

(declare-fun res!2128746 () Bool)

(assert (=> b!4986537 (=> (not res!2128746) (not e!3116497))))

(assert (=> b!4986537 (= res!2128746 (isEmpty!31170 (tail!9836 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973))))))))

(declare-fun b!4986538 () Bool)

(declare-fun res!2128744 () Bool)

(assert (=> b!4986538 (=> res!2128744 e!3116498)))

(assert (=> b!4986538 (= res!2128744 e!3116497)))

(declare-fun res!2128747 () Bool)

(assert (=> b!4986538 (=> (not res!2128747) (not e!3116497))))

(assert (=> b!4986538 (= res!2128747 lt!2061093)))

(declare-fun b!4986539 () Bool)

(assert (=> b!4986539 (= e!3116499 e!3116495)))

(declare-fun c!850904 () Bool)

(assert (=> b!4986539 (= c!850904 ((_ is EmptyLang!13705) (regex!8472 rule!200)))))

(declare-fun b!4986540 () Bool)

(assert (=> b!4986540 (= e!3116501 (not (= (head!10703 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))) (c!850844 (regex!8472 rule!200)))))))

(declare-fun b!4986541 () Bool)

(assert (=> b!4986541 (= e!3116498 e!3116496)))

(declare-fun res!2128749 () Bool)

(assert (=> b!4986541 (=> (not res!2128749) (not e!3116496))))

(assert (=> b!4986541 (= res!2128749 (not lt!2061093))))

(assert (= (and d!1605807 c!850906) b!4986534))

(assert (= (and d!1605807 (not c!850906)) b!4986535))

(assert (= (and d!1605807 c!850905) b!4986536))

(assert (= (and d!1605807 (not c!850905)) b!4986539))

(assert (= (and b!4986539 c!850904) b!4986530))

(assert (= (and b!4986539 (not c!850904)) b!4986532))

(assert (= (and b!4986532 (not res!2128750)) b!4986538))

(assert (= (and b!4986538 res!2128747) b!4986531))

(assert (= (and b!4986531 res!2128743) b!4986537))

(assert (= (and b!4986537 res!2128746) b!4986533))

(assert (= (and b!4986538 (not res!2128744)) b!4986541))

(assert (= (and b!4986541 res!2128749) b!4986528))

(assert (= (and b!4986528 (not res!2128745)) b!4986529))

(assert (= (and b!4986529 (not res!2128748)) b!4986540))

(assert (= (or b!4986536 b!4986528 b!4986531) bm!347975))

(assert (=> bm!347975 m!6018038))

(declare-fun m!6018352 () Bool)

(assert (=> b!4986537 m!6018352))

(assert (=> b!4986537 m!6018352))

(declare-fun m!6018354 () Bool)

(assert (=> b!4986537 m!6018354))

(declare-fun m!6018356 () Bool)

(assert (=> b!4986535 m!6018356))

(assert (=> b!4986535 m!6018356))

(declare-fun m!6018358 () Bool)

(assert (=> b!4986535 m!6018358))

(assert (=> b!4986535 m!6018352))

(assert (=> b!4986535 m!6018358))

(assert (=> b!4986535 m!6018352))

(declare-fun m!6018360 () Bool)

(assert (=> b!4986535 m!6018360))

(assert (=> b!4986533 m!6018356))

(assert (=> b!4986534 m!6018072))

(assert (=> b!4986540 m!6018356))

(assert (=> b!4986529 m!6018352))

(assert (=> b!4986529 m!6018352))

(assert (=> b!4986529 m!6018354))

(assert (=> d!1605807 m!6018038))

(assert (=> d!1605807 m!6018070))

(assert (=> b!4986241 d!1605807))

(declare-fun bm!347992 () Bool)

(declare-fun call!348004 () Bool)

(assert (=> bm!347992 (= call!348004 (nullable!4655 (regex!8472 rule!200)))))

(declare-fun call!348001 () Regex!13705)

(declare-fun bm!347993 () Bool)

(declare-fun lt!2061174 () List!57740)

(declare-fun call!347997 () tuple2!62662)

(declare-fun call!348003 () List!57740)

(assert (=> bm!347993 (= call!347997 (findLongestMatchInner!1916 call!348001 lt!2061174 (+ (size!38273 Nil!57616) 1) call!348003 lt!2060973 (size!38273 lt!2060973)))))

(declare-fun b!4986570 () Bool)

(declare-fun e!3116522 () tuple2!62662)

(declare-fun e!3116519 () tuple2!62662)

(assert (=> b!4986570 (= e!3116522 e!3116519)))

(declare-fun lt!2061157 () tuple2!62662)

(assert (=> b!4986570 (= lt!2061157 call!347997)))

(declare-fun c!850922 () Bool)

(assert (=> b!4986570 (= c!850922 (isEmpty!31170 (_1!34634 lt!2061157)))))

(declare-fun b!4986571 () Bool)

(declare-fun e!3116523 () tuple2!62662)

(declare-fun e!3116518 () tuple2!62662)

(assert (=> b!4986571 (= e!3116523 e!3116518)))

(declare-fun c!850920 () Bool)

(assert (=> b!4986571 (= c!850920 (= (size!38273 Nil!57616) (size!38273 lt!2060973)))))

(declare-fun b!4986572 () Bool)

(declare-fun e!3116525 () tuple2!62662)

(assert (=> b!4986572 (= e!3116525 (tuple2!62663 Nil!57616 Nil!57616))))

(declare-fun b!4986573 () Bool)

(declare-fun c!850919 () Bool)

(assert (=> b!4986573 (= c!850919 call!348004)))

(declare-fun lt!2061172 () Unit!148759)

(declare-fun lt!2061152 () Unit!148759)

(assert (=> b!4986573 (= lt!2061172 lt!2061152)))

(declare-fun lt!2061159 () C!27660)

(declare-fun lt!2061163 () List!57740)

(assert (=> b!4986573 (= (++!12566 (++!12566 Nil!57616 (Cons!57616 lt!2061159 Nil!57616)) lt!2061163) lt!2060973)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1476 (List!57740 C!27660 List!57740 List!57740) Unit!148759)

(assert (=> b!4986573 (= lt!2061152 (lemmaMoveElementToOtherListKeepsConcatEq!1476 Nil!57616 lt!2061159 lt!2061163 lt!2060973))))

(assert (=> b!4986573 (= lt!2061163 (tail!9836 lt!2060973))))

(assert (=> b!4986573 (= lt!2061159 (head!10703 lt!2060973))))

(declare-fun lt!2061156 () Unit!148759)

(declare-fun lt!2061155 () Unit!148759)

(assert (=> b!4986573 (= lt!2061156 lt!2061155)))

(declare-fun isPrefix!5279 (List!57740 List!57740) Bool)

(declare-fun getSuffix!3119 (List!57740 List!57740) List!57740)

(assert (=> b!4986573 (isPrefix!5279 (++!12566 Nil!57616 (Cons!57616 (head!10703 (getSuffix!3119 lt!2060973 Nil!57616)) Nil!57616)) lt!2060973)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!865 (List!57740 List!57740) Unit!148759)

(assert (=> b!4986573 (= lt!2061155 (lemmaAddHeadSuffixToPrefixStillPrefix!865 Nil!57616 lt!2060973))))

(declare-fun lt!2061165 () Unit!148759)

(declare-fun lt!2061176 () Unit!148759)

(assert (=> b!4986573 (= lt!2061165 lt!2061176)))

(assert (=> b!4986573 (= lt!2061176 (lemmaAddHeadSuffixToPrefixStillPrefix!865 Nil!57616 lt!2060973))))

(assert (=> b!4986573 (= lt!2061174 (++!12566 Nil!57616 (Cons!57616 (head!10703 lt!2060973) Nil!57616)))))

(declare-fun lt!2061162 () Unit!148759)

(declare-fun e!3116524 () Unit!148759)

(assert (=> b!4986573 (= lt!2061162 e!3116524)))

(declare-fun c!850921 () Bool)

(assert (=> b!4986573 (= c!850921 (= (size!38273 Nil!57616) (size!38273 lt!2060973)))))

(declare-fun lt!2061168 () Unit!148759)

(declare-fun lt!2061175 () Unit!148759)

(assert (=> b!4986573 (= lt!2061168 lt!2061175)))

(assert (=> b!4986573 (<= (size!38273 Nil!57616) (size!38273 lt!2060973))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!791 (List!57740 List!57740) Unit!148759)

(assert (=> b!4986573 (= lt!2061175 (lemmaIsPrefixThenSmallerEqSize!791 Nil!57616 lt!2060973))))

(assert (=> b!4986573 (= e!3116518 e!3116522)))

(declare-fun b!4986574 () Bool)

(assert (=> b!4986574 (= e!3116525 (tuple2!62663 Nil!57616 lt!2060973))))

(declare-fun b!4986575 () Bool)

(assert (=> b!4986575 (= e!3116519 lt!2061157)))

(declare-fun b!4986576 () Bool)

(assert (=> b!4986576 (= e!3116519 (tuple2!62663 Nil!57616 lt!2060973))))

(declare-fun bm!347994 () Bool)

(assert (=> bm!347994 (= call!348003 (tail!9836 lt!2060973))))

(declare-fun d!1605809 () Bool)

(declare-fun e!3116521 () Bool)

(assert (=> d!1605809 e!3116521))

(declare-fun res!2128755 () Bool)

(assert (=> d!1605809 (=> (not res!2128755) (not e!3116521))))

(declare-fun lt!2061170 () tuple2!62662)

(assert (=> d!1605809 (= res!2128755 (= (++!12566 (_1!34634 lt!2061170) (_2!34634 lt!2061170)) lt!2060973))))

(assert (=> d!1605809 (= lt!2061170 e!3116523)))

(declare-fun c!850923 () Bool)

(declare-fun lostCause!1163 (Regex!13705) Bool)

(assert (=> d!1605809 (= c!850923 (lostCause!1163 (regex!8472 rule!200)))))

(declare-fun lt!2061167 () Unit!148759)

(declare-fun Unit!148763 () Unit!148759)

(assert (=> d!1605809 (= lt!2061167 Unit!148763)))

(assert (=> d!1605809 (= (getSuffix!3119 lt!2060973 Nil!57616) lt!2060973)))

(declare-fun lt!2061151 () Unit!148759)

(declare-fun lt!2061177 () Unit!148759)

(assert (=> d!1605809 (= lt!2061151 lt!2061177)))

(declare-fun lt!2061153 () List!57740)

(assert (=> d!1605809 (= lt!2060973 lt!2061153)))

(declare-fun lemmaSamePrefixThenSameSuffix!2531 (List!57740 List!57740 List!57740 List!57740 List!57740) Unit!148759)

(assert (=> d!1605809 (= lt!2061177 (lemmaSamePrefixThenSameSuffix!2531 Nil!57616 lt!2060973 Nil!57616 lt!2061153 lt!2060973))))

(assert (=> d!1605809 (= lt!2061153 (getSuffix!3119 lt!2060973 Nil!57616))))

(declare-fun lt!2061164 () Unit!148759)

(declare-fun lt!2061173 () Unit!148759)

(assert (=> d!1605809 (= lt!2061164 lt!2061173)))

(assert (=> d!1605809 (isPrefix!5279 Nil!57616 (++!12566 Nil!57616 lt!2060973))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3377 (List!57740 List!57740) Unit!148759)

(assert (=> d!1605809 (= lt!2061173 (lemmaConcatTwoListThenFirstIsPrefix!3377 Nil!57616 lt!2060973))))

(assert (=> d!1605809 (validRegex!6004 (regex!8472 rule!200))))

(assert (=> d!1605809 (= (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)) lt!2061170)))

(declare-fun bm!347995 () Bool)

(declare-fun call!347998 () C!27660)

(assert (=> bm!347995 (= call!347998 (head!10703 lt!2060973))))

(declare-fun b!4986577 () Bool)

(declare-fun Unit!148764 () Unit!148759)

(assert (=> b!4986577 (= e!3116524 Unit!148764)))

(declare-fun bm!347996 () Bool)

(declare-fun call!347999 () Unit!148759)

(declare-fun lemmaIsPrefixRefl!3602 (List!57740 List!57740) Unit!148759)

(assert (=> bm!347996 (= call!347999 (lemmaIsPrefixRefl!3602 lt!2060973 lt!2060973))))

(declare-fun b!4986578 () Bool)

(declare-fun e!3116520 () Bool)

(assert (=> b!4986578 (= e!3116520 (>= (size!38273 (_1!34634 lt!2061170)) (size!38273 Nil!57616)))))

(declare-fun b!4986579 () Bool)

(declare-fun c!850924 () Bool)

(assert (=> b!4986579 (= c!850924 call!348004)))

(declare-fun lt!2061169 () Unit!148759)

(declare-fun lt!2061154 () Unit!148759)

(assert (=> b!4986579 (= lt!2061169 lt!2061154)))

(assert (=> b!4986579 (= lt!2060973 Nil!57616)))

(declare-fun call!348000 () Unit!148759)

(assert (=> b!4986579 (= lt!2061154 call!348000)))

(declare-fun lt!2061171 () Unit!148759)

(declare-fun lt!2061160 () Unit!148759)

(assert (=> b!4986579 (= lt!2061171 lt!2061160)))

(declare-fun call!348002 () Bool)

(assert (=> b!4986579 call!348002))

(assert (=> b!4986579 (= lt!2061160 call!347999)))

(assert (=> b!4986579 (= e!3116518 e!3116525)))

(declare-fun bm!347997 () Bool)

(assert (=> bm!347997 (= call!348001 (derivativeStep!3954 (regex!8472 rule!200) call!347998))))

(declare-fun b!4986580 () Bool)

(assert (=> b!4986580 (= e!3116521 e!3116520)))

(declare-fun res!2128756 () Bool)

(assert (=> b!4986580 (=> res!2128756 e!3116520)))

(assert (=> b!4986580 (= res!2128756 (isEmpty!31170 (_1!34634 lt!2061170)))))

(declare-fun bm!347998 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1239 (List!57740 List!57740 List!57740) Unit!148759)

(assert (=> bm!347998 (= call!348000 (lemmaIsPrefixSameLengthThenSameList!1239 lt!2060973 Nil!57616 lt!2060973))))

(declare-fun b!4986581 () Bool)

(assert (=> b!4986581 (= e!3116522 call!347997)))

(declare-fun b!4986582 () Bool)

(declare-fun Unit!148765 () Unit!148759)

(assert (=> b!4986582 (= e!3116524 Unit!148765)))

(declare-fun lt!2061161 () Unit!148759)

(assert (=> b!4986582 (= lt!2061161 call!347999)))

(assert (=> b!4986582 call!348002))

(declare-fun lt!2061166 () Unit!148759)

(assert (=> b!4986582 (= lt!2061166 lt!2061161)))

(declare-fun lt!2061150 () Unit!148759)

(assert (=> b!4986582 (= lt!2061150 call!348000)))

(assert (=> b!4986582 (= lt!2060973 Nil!57616)))

(declare-fun lt!2061158 () Unit!148759)

(assert (=> b!4986582 (= lt!2061158 lt!2061150)))

(assert (=> b!4986582 false))

(declare-fun b!4986583 () Bool)

(assert (=> b!4986583 (= e!3116523 (tuple2!62663 Nil!57616 lt!2060973))))

(declare-fun bm!347999 () Bool)

(assert (=> bm!347999 (= call!348002 (isPrefix!5279 lt!2060973 lt!2060973))))

(assert (= (and d!1605809 c!850923) b!4986583))

(assert (= (and d!1605809 (not c!850923)) b!4986571))

(assert (= (and b!4986571 c!850920) b!4986579))

(assert (= (and b!4986571 (not c!850920)) b!4986573))

(assert (= (and b!4986579 c!850924) b!4986572))

(assert (= (and b!4986579 (not c!850924)) b!4986574))

(assert (= (and b!4986573 c!850921) b!4986582))

(assert (= (and b!4986573 (not c!850921)) b!4986577))

(assert (= (and b!4986573 c!850919) b!4986570))

(assert (= (and b!4986573 (not c!850919)) b!4986581))

(assert (= (and b!4986570 c!850922) b!4986576))

(assert (= (and b!4986570 (not c!850922)) b!4986575))

(assert (= (or b!4986570 b!4986581) bm!347995))

(assert (= (or b!4986570 b!4986581) bm!347994))

(assert (= (or b!4986570 b!4986581) bm!347997))

(assert (= (or b!4986570 b!4986581) bm!347993))

(assert (= (or b!4986579 b!4986582) bm!347999))

(assert (= (or b!4986579 b!4986582) bm!347998))

(assert (= (or b!4986579 b!4986582) bm!347996))

(assert (= (or b!4986579 b!4986573) bm!347992))

(assert (= (and d!1605809 res!2128755) b!4986580))

(assert (= (and b!4986580 (not res!2128756)) b!4986578))

(declare-fun m!6018362 () Bool)

(assert (=> b!4986580 m!6018362))

(declare-fun m!6018364 () Bool)

(assert (=> b!4986578 m!6018364))

(assert (=> b!4986578 m!6018028))

(declare-fun m!6018366 () Bool)

(assert (=> d!1605809 m!6018366))

(declare-fun m!6018368 () Bool)

(assert (=> d!1605809 m!6018368))

(assert (=> d!1605809 m!6018070))

(assert (=> d!1605809 m!6018366))

(declare-fun m!6018370 () Bool)

(assert (=> d!1605809 m!6018370))

(declare-fun m!6018372 () Bool)

(assert (=> d!1605809 m!6018372))

(declare-fun m!6018374 () Bool)

(assert (=> d!1605809 m!6018374))

(declare-fun m!6018376 () Bool)

(assert (=> d!1605809 m!6018376))

(declare-fun m!6018378 () Bool)

(assert (=> d!1605809 m!6018378))

(assert (=> bm!347992 m!6018072))

(assert (=> bm!347993 m!6018030))

(declare-fun m!6018380 () Bool)

(assert (=> bm!347993 m!6018380))

(declare-fun m!6018382 () Bool)

(assert (=> bm!347998 m!6018382))

(declare-fun m!6018384 () Bool)

(assert (=> b!4986570 m!6018384))

(declare-fun m!6018386 () Bool)

(assert (=> b!4986573 m!6018386))

(declare-fun m!6018388 () Bool)

(assert (=> b!4986573 m!6018388))

(declare-fun m!6018390 () Bool)

(assert (=> b!4986573 m!6018390))

(assert (=> b!4986573 m!6018030))

(declare-fun m!6018392 () Bool)

(assert (=> b!4986573 m!6018392))

(declare-fun m!6018394 () Bool)

(assert (=> b!4986573 m!6018394))

(assert (=> b!4986573 m!6018028))

(declare-fun m!6018396 () Bool)

(assert (=> b!4986573 m!6018396))

(declare-fun m!6018398 () Bool)

(assert (=> b!4986573 m!6018398))

(assert (=> b!4986573 m!6018378))

(assert (=> b!4986573 m!6018396))

(assert (=> b!4986573 m!6018386))

(declare-fun m!6018400 () Bool)

(assert (=> b!4986573 m!6018400))

(assert (=> b!4986573 m!6018378))

(declare-fun m!6018402 () Bool)

(assert (=> b!4986573 m!6018402))

(declare-fun m!6018404 () Bool)

(assert (=> b!4986573 m!6018404))

(declare-fun m!6018406 () Bool)

(assert (=> b!4986573 m!6018406))

(assert (=> bm!347995 m!6018406))

(declare-fun m!6018408 () Bool)

(assert (=> bm!347997 m!6018408))

(assert (=> bm!347994 m!6018404))

(declare-fun m!6018410 () Bool)

(assert (=> bm!347996 m!6018410))

(declare-fun m!6018412 () Bool)

(assert (=> bm!347999 m!6018412))

(assert (=> b!4986241 d!1605809))

(declare-fun d!1605811 () Bool)

(declare-fun lt!2061178 () Int)

(assert (=> d!1605811 (>= lt!2061178 0)))

(declare-fun e!3116526 () Int)

(assert (=> d!1605811 (= lt!2061178 e!3116526)))

(declare-fun c!850925 () Bool)

(assert (=> d!1605811 (= c!850925 ((_ is Nil!57616) Nil!57616))))

(assert (=> d!1605811 (= (size!38273 Nil!57616) lt!2061178)))

(declare-fun b!4986584 () Bool)

(assert (=> b!4986584 (= e!3116526 0)))

(declare-fun b!4986585 () Bool)

(assert (=> b!4986585 (= e!3116526 (+ 1 (size!38273 (t!369984 Nil!57616))))))

(assert (= (and d!1605811 c!850925) b!4986584))

(assert (= (and d!1605811 (not c!850925)) b!4986585))

(declare-fun m!6018414 () Bool)

(assert (=> b!4986585 m!6018414))

(assert (=> b!4986241 d!1605811))

(assert (=> b!4986241 d!1605755))

(declare-fun b!4986586 () Bool)

(declare-fun e!3116528 () Bool)

(declare-fun e!3116533 () Bool)

(assert (=> b!4986586 (= e!3116528 e!3116533)))

(declare-fun res!2128759 () Bool)

(assert (=> b!4986586 (=> res!2128759 e!3116533)))

(declare-fun call!348005 () Bool)

(assert (=> b!4986586 (= res!2128759 call!348005)))

(declare-fun b!4986587 () Bool)

(declare-fun res!2128762 () Bool)

(assert (=> b!4986587 (=> res!2128762 e!3116533)))

(assert (=> b!4986587 (= res!2128762 (not (isEmpty!31170 (tail!9836 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))))))))

(declare-fun bm!348000 () Bool)

(assert (=> bm!348000 (= call!348005 (isEmpty!31170 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))))))

(declare-fun b!4986588 () Bool)

(declare-fun e!3116527 () Bool)

(declare-fun lt!2061179 () Bool)

(assert (=> b!4986588 (= e!3116527 (not lt!2061179))))

(declare-fun b!4986589 () Bool)

(declare-fun res!2128757 () Bool)

(declare-fun e!3116529 () Bool)

(assert (=> b!4986589 (=> (not res!2128757) (not e!3116529))))

(assert (=> b!4986589 (= res!2128757 (not call!348005))))

(declare-fun d!1605813 () Bool)

(declare-fun e!3116531 () Bool)

(assert (=> d!1605813 e!3116531))

(declare-fun c!850927 () Bool)

(assert (=> d!1605813 (= c!850927 ((_ is EmptyExpr!13705) (regex!8472 rule!200)))))

(declare-fun e!3116532 () Bool)

(assert (=> d!1605813 (= lt!2061179 e!3116532)))

(declare-fun c!850928 () Bool)

(assert (=> d!1605813 (= c!850928 (isEmpty!31170 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))))))

(assert (=> d!1605813 (validRegex!6004 (regex!8472 rule!200))))

(assert (=> d!1605813 (= (matchR!6698 (regex!8472 rule!200) (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))) lt!2061179)))

(declare-fun b!4986590 () Bool)

(declare-fun res!2128764 () Bool)

(declare-fun e!3116530 () Bool)

(assert (=> b!4986590 (=> res!2128764 e!3116530)))

(assert (=> b!4986590 (= res!2128764 (not ((_ is ElementMatch!13705) (regex!8472 rule!200))))))

(assert (=> b!4986590 (= e!3116527 e!3116530)))

(declare-fun b!4986591 () Bool)

(assert (=> b!4986591 (= e!3116529 (= (head!10703 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))) (c!850844 (regex!8472 rule!200))))))

(declare-fun b!4986592 () Bool)

(assert (=> b!4986592 (= e!3116532 (nullable!4655 (regex!8472 rule!200)))))

(declare-fun b!4986593 () Bool)

(assert (=> b!4986593 (= e!3116532 (matchR!6698 (derivativeStep!3954 (regex!8472 rule!200) (head!10703 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998)))))) (tail!9836 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998)))))))))

(declare-fun b!4986594 () Bool)

(assert (=> b!4986594 (= e!3116531 (= lt!2061179 call!348005))))

(declare-fun b!4986595 () Bool)

(declare-fun res!2128760 () Bool)

(assert (=> b!4986595 (=> (not res!2128760) (not e!3116529))))

(assert (=> b!4986595 (= res!2128760 (isEmpty!31170 (tail!9836 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998)))))))))

(declare-fun b!4986596 () Bool)

(declare-fun res!2128758 () Bool)

(assert (=> b!4986596 (=> res!2128758 e!3116530)))

(assert (=> b!4986596 (= res!2128758 e!3116529)))

(declare-fun res!2128761 () Bool)

(assert (=> b!4986596 (=> (not res!2128761) (not e!3116529))))

(assert (=> b!4986596 (= res!2128761 lt!2061179)))

(declare-fun b!4986597 () Bool)

(assert (=> b!4986597 (= e!3116531 e!3116527)))

(declare-fun c!850926 () Bool)

(assert (=> b!4986597 (= c!850926 ((_ is EmptyLang!13705) (regex!8472 rule!200)))))

(declare-fun b!4986598 () Bool)

(assert (=> b!4986598 (= e!3116533 (not (= (head!10703 (list!18494 (charsOf!5466 (_1!34631 (get!20049 lt!2060998))))) (c!850844 (regex!8472 rule!200)))))))

(declare-fun b!4986599 () Bool)

(assert (=> b!4986599 (= e!3116530 e!3116528)))

(declare-fun res!2128763 () Bool)

(assert (=> b!4986599 (=> (not res!2128763) (not e!3116528))))

(assert (=> b!4986599 (= res!2128763 (not lt!2061179))))

(assert (= (and d!1605813 c!850928) b!4986592))

(assert (= (and d!1605813 (not c!850928)) b!4986593))

(assert (= (and d!1605813 c!850927) b!4986594))

(assert (= (and d!1605813 (not c!850927)) b!4986597))

(assert (= (and b!4986597 c!850926) b!4986588))

(assert (= (and b!4986597 (not c!850926)) b!4986590))

(assert (= (and b!4986590 (not res!2128764)) b!4986596))

(assert (= (and b!4986596 res!2128761) b!4986589))

(assert (= (and b!4986589 res!2128757) b!4986595))

(assert (= (and b!4986595 res!2128760) b!4986591))

(assert (= (and b!4986596 (not res!2128758)) b!4986599))

(assert (= (and b!4986599 res!2128763) b!4986586))

(assert (= (and b!4986586 (not res!2128759)) b!4986587))

(assert (= (and b!4986587 (not res!2128762)) b!4986598))

(assert (= (or b!4986594 b!4986586 b!4986589) bm!348000))

(assert (=> bm!348000 m!6018052))

(declare-fun m!6018416 () Bool)

(assert (=> bm!348000 m!6018416))

(assert (=> b!4986595 m!6018052))

(declare-fun m!6018418 () Bool)

(assert (=> b!4986595 m!6018418))

(assert (=> b!4986595 m!6018418))

(declare-fun m!6018420 () Bool)

(assert (=> b!4986595 m!6018420))

(assert (=> b!4986593 m!6018052))

(declare-fun m!6018422 () Bool)

(assert (=> b!4986593 m!6018422))

(assert (=> b!4986593 m!6018422))

(declare-fun m!6018424 () Bool)

(assert (=> b!4986593 m!6018424))

(assert (=> b!4986593 m!6018052))

(assert (=> b!4986593 m!6018418))

(assert (=> b!4986593 m!6018424))

(assert (=> b!4986593 m!6018418))

(declare-fun m!6018426 () Bool)

(assert (=> b!4986593 m!6018426))

(assert (=> b!4986591 m!6018052))

(assert (=> b!4986591 m!6018422))

(assert (=> b!4986592 m!6018072))

(assert (=> b!4986598 m!6018052))

(assert (=> b!4986598 m!6018422))

(assert (=> b!4986587 m!6018052))

(assert (=> b!4986587 m!6018418))

(assert (=> b!4986587 m!6018418))

(assert (=> b!4986587 m!6018420))

(assert (=> d!1605813 m!6018052))

(assert (=> d!1605813 m!6018416))

(assert (=> d!1605813 m!6018070))

(assert (=> b!4986237 d!1605813))

(assert (=> b!4986237 d!1605787))

(assert (=> b!4986237 d!1605789))

(assert (=> b!4986237 d!1605753))

(assert (=> b!4986239 d!1605755))

(declare-fun d!1605815 () Bool)

(declare-fun e!3116536 () Bool)

(assert (=> d!1605815 e!3116536))

(declare-fun res!2128767 () Bool)

(assert (=> d!1605815 (=> res!2128767 e!3116536)))

(assert (=> d!1605815 (= res!2128767 (isEmpty!31170 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))))))

(declare-fun lt!2061182 () Unit!148759)

(declare-fun choose!36863 (Regex!13705 List!57740) Unit!148759)

(assert (=> d!1605815 (= lt!2061182 (choose!36863 (regex!8472 rule!200) lt!2060973))))

(assert (=> d!1605815 (validRegex!6004 (regex!8472 rule!200))))

(assert (=> d!1605815 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1876 (regex!8472 rule!200) lt!2060973) lt!2061182)))

(declare-fun b!4986602 () Bool)

(assert (=> b!4986602 (= e!3116536 (matchR!6698 (regex!8472 rule!200) (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))))))

(assert (= (and d!1605815 (not res!2128767)) b!4986602))

(assert (=> d!1605815 m!6018028))

(assert (=> d!1605815 m!6018030))

(assert (=> d!1605815 m!6018032))

(declare-fun m!6018428 () Bool)

(assert (=> d!1605815 m!6018428))

(assert (=> d!1605815 m!6018070))

(assert (=> d!1605815 m!6018028))

(assert (=> d!1605815 m!6018038))

(assert (=> d!1605815 m!6018030))

(assert (=> b!4986602 m!6018028))

(assert (=> b!4986602 m!6018030))

(assert (=> b!4986602 m!6018028))

(assert (=> b!4986602 m!6018030))

(assert (=> b!4986602 m!6018032))

(assert (=> b!4986602 m!6018046))

(assert (=> b!4986239 d!1605815))

(declare-fun b!4986715 () Bool)

(declare-fun e!3116603 () Bool)

(assert (=> b!4986715 (= e!3116603 true)))

(declare-fun d!1605817 () Bool)

(assert (=> d!1605817 e!3116603))

(assert (= d!1605817 b!4986715))

(declare-fun order!26627 () Int)

(declare-fun order!26629 () Int)

(declare-fun lambda!248057 () Int)

(declare-fun dynLambda!23462 (Int Int) Int)

(declare-fun dynLambda!23463 (Int Int) Int)

(assert (=> b!4986715 (< (dynLambda!23462 order!26627 (toValue!11477 (transformation!8472 rule!200))) (dynLambda!23463 order!26629 lambda!248057))))

(declare-fun order!26631 () Int)

(declare-fun dynLambda!23464 (Int Int) Int)

(assert (=> b!4986715 (< (dynLambda!23464 order!26631 (toChars!11336 (transformation!8472 rule!200))) (dynLambda!23463 order!26629 lambda!248057))))

(assert (=> d!1605817 (= (list!18494 (dynLambda!23457 (toChars!11336 (transformation!8472 rule!200)) (dynLambda!23456 (toValue!11477 (transformation!8472 rule!200)) (seqFromList!6092 (_1!34634 lt!2060999))))) (list!18494 (seqFromList!6092 (_1!34634 lt!2060999))))))

(declare-fun lt!2061200 () Unit!148759)

(declare-fun ForallOf!1281 (Int BalanceConc!29878) Unit!148759)

(assert (=> d!1605817 (= lt!2061200 (ForallOf!1281 lambda!248057 (seqFromList!6092 (_1!34634 lt!2060999))))))

(assert (=> d!1605817 (= (lemmaSemiInverse!2629 (transformation!8472 rule!200) (seqFromList!6092 (_1!34634 lt!2060999))) lt!2061200)))

(declare-fun b_lambda!198363 () Bool)

(assert (=> (not b_lambda!198363) (not d!1605817)))

(declare-fun t!369996 () Bool)

(declare-fun tb!261749 () Bool)

(assert (=> (and b!4986176 (= (toChars!11336 (transformation!8472 rule!200)) (toChars!11336 (transformation!8472 rule!200))) t!369996) tb!261749))

(declare-fun tp!1397490 () Bool)

(declare-fun b!4986716 () Bool)

(declare-fun e!3116604 () Bool)

(assert (=> b!4986716 (= e!3116604 (and (inv!75532 (c!850843 (dynLambda!23457 (toChars!11336 (transformation!8472 rule!200)) (dynLambda!23456 (toValue!11477 (transformation!8472 rule!200)) (seqFromList!6092 (_1!34634 lt!2060999)))))) tp!1397490))))

(declare-fun result!327182 () Bool)

(assert (=> tb!261749 (= result!327182 (and (inv!75534 (dynLambda!23457 (toChars!11336 (transformation!8472 rule!200)) (dynLambda!23456 (toValue!11477 (transformation!8472 rule!200)) (seqFromList!6092 (_1!34634 lt!2060999))))) e!3116604))))

(assert (= tb!261749 b!4986716))

(declare-fun m!6018518 () Bool)

(assert (=> b!4986716 m!6018518))

(declare-fun m!6018520 () Bool)

(assert (=> tb!261749 m!6018520))

(assert (=> d!1605817 t!369996))

(declare-fun b_and!349953 () Bool)

(assert (= b_and!349949 (and (=> t!369996 result!327182) b_and!349953)))

(declare-fun b_lambda!198365 () Bool)

(assert (=> (not b_lambda!198365) (not d!1605817)))

(declare-fun t!369998 () Bool)

(declare-fun tb!261751 () Bool)

(assert (=> (and b!4986176 (= (toValue!11477 (transformation!8472 rule!200)) (toValue!11477 (transformation!8472 rule!200))) t!369998) tb!261751))

(declare-fun result!327184 () Bool)

(assert (=> tb!261751 (= result!327184 (inv!21 (dynLambda!23456 (toValue!11477 (transformation!8472 rule!200)) (seqFromList!6092 (_1!34634 lt!2060999)))))))

(declare-fun m!6018522 () Bool)

(assert (=> tb!261751 m!6018522))

(assert (=> d!1605817 t!369998))

(declare-fun b_and!349955 () Bool)

(assert (= b_and!349947 (and (=> t!369998 result!327184) b_and!349955)))

(declare-fun m!6018524 () Bool)

(assert (=> d!1605817 m!6018524))

(declare-fun m!6018526 () Bool)

(assert (=> d!1605817 m!6018526))

(assert (=> d!1605817 m!6018024))

(declare-fun m!6018528 () Bool)

(assert (=> d!1605817 m!6018528))

(assert (=> d!1605817 m!6018024))

(declare-fun m!6018530 () Bool)

(assert (=> d!1605817 m!6018530))

(assert (=> d!1605817 m!6018530))

(assert (=> d!1605817 m!6018524))

(assert (=> d!1605817 m!6018024))

(declare-fun m!6018532 () Bool)

(assert (=> d!1605817 m!6018532))

(assert (=> b!4986239 d!1605817))

(declare-fun d!1605853 () Bool)

(assert (=> d!1605853 (= (apply!13958 (transformation!8472 rule!200) (seqFromList!6092 (_1!34634 lt!2060999))) (dynLambda!23456 (toValue!11477 (transformation!8472 rule!200)) (seqFromList!6092 (_1!34634 lt!2060999))))))

(declare-fun b_lambda!198367 () Bool)

(assert (=> (not b_lambda!198367) (not d!1605853)))

(assert (=> d!1605853 t!369998))

(declare-fun b_and!349957 () Bool)

(assert (= b_and!349955 (and (=> t!369998 result!327184) b_and!349957)))

(assert (=> d!1605853 m!6018024))

(assert (=> d!1605853 m!6018530))

(assert (=> b!4986239 d!1605853))

(assert (=> b!4986239 d!1605809))

(assert (=> b!4986239 d!1605811))

(declare-fun d!1605855 () Bool)

(assert (=> d!1605855 (= (isEmpty!31170 (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))) ((_ is Nil!57616) (_1!34634 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 (size!38273 Nil!57616) lt!2060973 lt!2060973 (size!38273 lt!2060973)))))))

(assert (=> b!4986239 d!1605855))

(declare-fun d!1605857 () Bool)

(assert (=> d!1605857 (= (seqFromList!6092 (_1!34634 lt!2060999)) (fromListB!2757 (_1!34634 lt!2060999)))))

(declare-fun bs!1184683 () Bool)

(assert (= bs!1184683 d!1605857))

(declare-fun m!6018534 () Bool)

(assert (=> bs!1184683 m!6018534))

(assert (=> b!4986239 d!1605857))

(declare-fun d!1605859 () Bool)

(declare-fun lt!2061203 () Int)

(assert (=> d!1605859 (= lt!2061203 (size!38273 (list!18494 (seqFromList!6092 (_1!34634 lt!2060999)))))))

(assert (=> d!1605859 (= lt!2061203 (size!38276 (c!850843 (seqFromList!6092 (_1!34634 lt!2060999)))))))

(assert (=> d!1605859 (= (size!38274 (seqFromList!6092 (_1!34634 lt!2060999))) lt!2061203)))

(declare-fun bs!1184684 () Bool)

(assert (= bs!1184684 d!1605859))

(assert (=> bs!1184684 m!6018024))

(assert (=> bs!1184684 m!6018528))

(assert (=> bs!1184684 m!6018528))

(declare-fun m!6018536 () Bool)

(assert (=> bs!1184684 m!6018536))

(declare-fun m!6018538 () Bool)

(assert (=> bs!1184684 m!6018538))

(assert (=> b!4986239 d!1605859))

(declare-fun d!1605861 () Bool)

(declare-fun c!850951 () Bool)

(assert (=> d!1605861 (= c!850951 ((_ is Node!15224) (left!42146 (c!850843 input!1580))))))

(declare-fun e!3116606 () Bool)

(assert (=> d!1605861 (= (inv!75532 (left!42146 (c!850843 input!1580))) e!3116606)))

(declare-fun b!4986717 () Bool)

(assert (=> b!4986717 (= e!3116606 (inv!75536 (left!42146 (c!850843 input!1580))))))

(declare-fun b!4986718 () Bool)

(declare-fun e!3116607 () Bool)

(assert (=> b!4986718 (= e!3116606 e!3116607)))

(declare-fun res!2128823 () Bool)

(assert (=> b!4986718 (= res!2128823 (not ((_ is Leaf!25285) (left!42146 (c!850843 input!1580)))))))

(assert (=> b!4986718 (=> res!2128823 e!3116607)))

(declare-fun b!4986719 () Bool)

(assert (=> b!4986719 (= e!3116607 (inv!75538 (left!42146 (c!850843 input!1580))))))

(assert (= (and d!1605861 c!850951) b!4986717))

(assert (= (and d!1605861 (not c!850951)) b!4986718))

(assert (= (and b!4986718 (not res!2128823)) b!4986719))

(declare-fun m!6018540 () Bool)

(assert (=> b!4986717 m!6018540))

(declare-fun m!6018542 () Bool)

(assert (=> b!4986719 m!6018542))

(assert (=> b!4986323 d!1605861))

(declare-fun d!1605863 () Bool)

(declare-fun c!850952 () Bool)

(assert (=> d!1605863 (= c!850952 ((_ is Node!15224) (right!42476 (c!850843 input!1580))))))

(declare-fun e!3116608 () Bool)

(assert (=> d!1605863 (= (inv!75532 (right!42476 (c!850843 input!1580))) e!3116608)))

(declare-fun b!4986720 () Bool)

(assert (=> b!4986720 (= e!3116608 (inv!75536 (right!42476 (c!850843 input!1580))))))

(declare-fun b!4986721 () Bool)

(declare-fun e!3116609 () Bool)

(assert (=> b!4986721 (= e!3116608 e!3116609)))

(declare-fun res!2128824 () Bool)

(assert (=> b!4986721 (= res!2128824 (not ((_ is Leaf!25285) (right!42476 (c!850843 input!1580)))))))

(assert (=> b!4986721 (=> res!2128824 e!3116609)))

(declare-fun b!4986722 () Bool)

(assert (=> b!4986722 (= e!3116609 (inv!75538 (right!42476 (c!850843 input!1580))))))

(assert (= (and d!1605863 c!850952) b!4986720))

(assert (= (and d!1605863 (not c!850952)) b!4986721))

(assert (= (and b!4986721 (not res!2128824)) b!4986722))

(declare-fun m!6018544 () Bool)

(assert (=> b!4986720 m!6018544))

(declare-fun m!6018546 () Bool)

(assert (=> b!4986722 m!6018546))

(assert (=> b!4986323 d!1605863))

(assert (=> b!4986314 d!1605805))

(assert (=> b!4986314 d!1605755))

(assert (=> b!4986238 d!1605753))

(assert (=> b!4986174 d!1605665))

(declare-fun d!1605865 () Bool)

(declare-fun res!2128825 () Bool)

(declare-fun e!3116610 () Bool)

(assert (=> d!1605865 (=> (not res!2128825) (not e!3116610))))

(assert (=> d!1605865 (= res!2128825 (<= (size!38273 (list!18497 (xs!18550 (c!850843 input!1580)))) 512))))

(assert (=> d!1605865 (= (inv!75538 (c!850843 input!1580)) e!3116610)))

(declare-fun b!4986723 () Bool)

(declare-fun res!2128826 () Bool)

(assert (=> b!4986723 (=> (not res!2128826) (not e!3116610))))

(assert (=> b!4986723 (= res!2128826 (= (csize!30679 (c!850843 input!1580)) (size!38273 (list!18497 (xs!18550 (c!850843 input!1580))))))))

(declare-fun b!4986724 () Bool)

(assert (=> b!4986724 (= e!3116610 (and (> (csize!30679 (c!850843 input!1580)) 0) (<= (csize!30679 (c!850843 input!1580)) 512)))))

(assert (= (and d!1605865 res!2128825) b!4986723))

(assert (= (and b!4986723 res!2128826) b!4986724))

(declare-fun m!6018548 () Bool)

(assert (=> d!1605865 m!6018548))

(assert (=> d!1605865 m!6018548))

(declare-fun m!6018550 () Bool)

(assert (=> d!1605865 m!6018550))

(assert (=> b!4986723 m!6018548))

(assert (=> b!4986723 m!6018548))

(assert (=> b!4986723 m!6018550))

(assert (=> b!4986193 d!1605865))

(declare-fun d!1605867 () Bool)

(declare-fun res!2128827 () Bool)

(declare-fun e!3116611 () Bool)

(assert (=> d!1605867 (=> (not res!2128827) (not e!3116611))))

(assert (=> d!1605867 (= res!2128827 (= (csize!30678 (c!850843 input!1580)) (+ (size!38276 (left!42146 (c!850843 input!1580))) (size!38276 (right!42476 (c!850843 input!1580))))))))

(assert (=> d!1605867 (= (inv!75536 (c!850843 input!1580)) e!3116611)))

(declare-fun b!4986725 () Bool)

(declare-fun res!2128828 () Bool)

(assert (=> b!4986725 (=> (not res!2128828) (not e!3116611))))

(assert (=> b!4986725 (= res!2128828 (and (not (= (left!42146 (c!850843 input!1580)) Empty!15224)) (not (= (right!42476 (c!850843 input!1580)) Empty!15224))))))

(declare-fun b!4986726 () Bool)

(declare-fun res!2128829 () Bool)

(assert (=> b!4986726 (=> (not res!2128829) (not e!3116611))))

(assert (=> b!4986726 (= res!2128829 (= (cheight!15435 (c!850843 input!1580)) (+ (max!0 (height!2027 (left!42146 (c!850843 input!1580))) (height!2027 (right!42476 (c!850843 input!1580)))) 1)))))

(declare-fun b!4986727 () Bool)

(assert (=> b!4986727 (= e!3116611 (<= 0 (cheight!15435 (c!850843 input!1580))))))

(assert (= (and d!1605867 res!2128827) b!4986725))

(assert (= (and b!4986725 res!2128828) b!4986726))

(assert (= (and b!4986726 res!2128829) b!4986727))

(declare-fun m!6018552 () Bool)

(assert (=> d!1605867 m!6018552))

(declare-fun m!6018554 () Bool)

(assert (=> d!1605867 m!6018554))

(assert (=> b!4986726 m!6018260))

(assert (=> b!4986726 m!6018262))

(assert (=> b!4986726 m!6018260))

(assert (=> b!4986726 m!6018262))

(declare-fun m!6018556 () Bool)

(assert (=> b!4986726 m!6018556))

(assert (=> b!4986191 d!1605867))

(declare-fun b!4986736 () Bool)

(declare-fun e!3116616 () List!57740)

(assert (=> b!4986736 (= e!3116616 Nil!57616)))

(declare-fun b!4986739 () Bool)

(declare-fun e!3116617 () List!57740)

(assert (=> b!4986739 (= e!3116617 (++!12566 (list!18496 (left!42146 (c!850843 (_2!34630 lt!2060975)))) (list!18496 (right!42476 (c!850843 (_2!34630 lt!2060975))))))))

(declare-fun b!4986738 () Bool)

(assert (=> b!4986738 (= e!3116617 (list!18497 (xs!18550 (c!850843 (_2!34630 lt!2060975)))))))

(declare-fun b!4986737 () Bool)

(assert (=> b!4986737 (= e!3116616 e!3116617)))

(declare-fun c!850958 () Bool)

(assert (=> b!4986737 (= c!850958 ((_ is Leaf!25285) (c!850843 (_2!34630 lt!2060975))))))

(declare-fun d!1605869 () Bool)

(declare-fun c!850957 () Bool)

(assert (=> d!1605869 (= c!850957 ((_ is Empty!15224) (c!850843 (_2!34630 lt!2060975))))))

(assert (=> d!1605869 (= (list!18496 (c!850843 (_2!34630 lt!2060975))) e!3116616)))

(assert (= (and d!1605869 c!850957) b!4986736))

(assert (= (and d!1605869 (not c!850957)) b!4986737))

(assert (= (and b!4986737 c!850958) b!4986738))

(assert (= (and b!4986737 (not c!850958)) b!4986739))

(declare-fun m!6018558 () Bool)

(assert (=> b!4986739 m!6018558))

(declare-fun m!6018560 () Bool)

(assert (=> b!4986739 m!6018560))

(assert (=> b!4986739 m!6018558))

(assert (=> b!4986739 m!6018560))

(declare-fun m!6018562 () Bool)

(assert (=> b!4986739 m!6018562))

(declare-fun m!6018564 () Bool)

(assert (=> b!4986738 m!6018564))

(assert (=> d!1605699 d!1605869))

(declare-fun b!4986742 () Bool)

(declare-fun e!3116618 () List!57740)

(assert (=> b!4986742 (= e!3116618 Nil!57616)))

(declare-fun b!4986745 () Bool)

(declare-fun e!3116619 () List!57740)

(assert (=> b!4986745 (= e!3116619 (++!12566 (list!18496 (left!42146 (c!850843 totalInput!520))) (list!18496 (right!42476 (c!850843 totalInput!520)))))))

(declare-fun b!4986744 () Bool)

(assert (=> b!4986744 (= e!3116619 (list!18497 (xs!18550 (c!850843 totalInput!520))))))

(declare-fun b!4986743 () Bool)

(assert (=> b!4986743 (= e!3116618 e!3116619)))

(declare-fun c!850960 () Bool)

(assert (=> b!4986743 (= c!850960 ((_ is Leaf!25285) (c!850843 totalInput!520)))))

(declare-fun d!1605871 () Bool)

(declare-fun c!850959 () Bool)

(assert (=> d!1605871 (= c!850959 ((_ is Empty!15224) (c!850843 totalInput!520)))))

(assert (=> d!1605871 (= (list!18496 (c!850843 totalInput!520)) e!3116618)))

(assert (= (and d!1605871 c!850959) b!4986742))

(assert (= (and d!1605871 (not c!850959)) b!4986743))

(assert (= (and b!4986743 c!850960) b!4986744))

(assert (= (and b!4986743 (not c!850960)) b!4986745))

(declare-fun m!6018566 () Bool)

(assert (=> b!4986745 m!6018566))

(declare-fun m!6018568 () Bool)

(assert (=> b!4986745 m!6018568))

(assert (=> b!4986745 m!6018566))

(assert (=> b!4986745 m!6018568))

(declare-fun m!6018570 () Bool)

(assert (=> b!4986745 m!6018570))

(assert (=> b!4986744 m!6018332))

(assert (=> d!1605729 d!1605871))

(declare-fun d!1605873 () Bool)

(assert (=> d!1605873 (= (isEmpty!31168 lt!2060998) (not ((_ is Some!14562) lt!2060998)))))

(assert (=> d!1605673 d!1605873))

(declare-fun d!1605875 () Bool)

(assert (=> d!1605875 (= (isEmpty!31170 (_1!34634 lt!2060999)) ((_ is Nil!57616) (_1!34634 lt!2060999)))))

(assert (=> d!1605673 d!1605875))

(declare-fun d!1605877 () Bool)

(declare-fun lt!2061229 () tuple2!62662)

(assert (=> d!1605877 (= (++!12566 (_1!34634 lt!2061229) (_2!34634 lt!2061229)) lt!2060973)))

(assert (=> d!1605877 (= lt!2061229 (findLongestMatchInner!1916 (regex!8472 rule!200) Nil!57616 0 lt!2060973 lt!2060973 (sizeTr!371 lt!2060973 0)))))

(declare-fun lt!2061233 () Unit!148759)

(declare-fun lt!2061227 () Unit!148759)

(assert (=> d!1605877 (= lt!2061233 lt!2061227)))

(declare-fun lt!2061231 () List!57740)

(declare-fun lt!2061232 () Int)

(assert (=> d!1605877 (= (sizeTr!371 lt!2061231 lt!2061232) (+ (size!38273 lt!2061231) lt!2061232))))

(assert (=> d!1605877 (= lt!2061227 (lemmaSizeTrEqualsSize!370 lt!2061231 lt!2061232))))

(assert (=> d!1605877 (= lt!2061232 0)))

(assert (=> d!1605877 (= lt!2061231 Nil!57616)))

(declare-fun lt!2061230 () Unit!148759)

(declare-fun lt!2061228 () Unit!148759)

(assert (=> d!1605877 (= lt!2061230 lt!2061228)))

(declare-fun lt!2061226 () Int)

(assert (=> d!1605877 (= (sizeTr!371 lt!2060973 lt!2061226) (+ (size!38273 lt!2060973) lt!2061226))))

(assert (=> d!1605877 (= lt!2061228 (lemmaSizeTrEqualsSize!370 lt!2060973 lt!2061226))))

(assert (=> d!1605877 (= lt!2061226 0)))

(assert (=> d!1605877 (validRegex!6004 (regex!8472 rule!200))))

(assert (=> d!1605877 (= (findLongestMatch!1730 (regex!8472 rule!200) lt!2060973) lt!2061229)))

(declare-fun bs!1184685 () Bool)

(assert (= bs!1184685 d!1605877))

(assert (=> bs!1184685 m!6018030))

(declare-fun m!6018572 () Bool)

(assert (=> bs!1184685 m!6018572))

(declare-fun m!6018574 () Bool)

(assert (=> bs!1184685 m!6018574))

(declare-fun m!6018576 () Bool)

(assert (=> bs!1184685 m!6018576))

(declare-fun m!6018578 () Bool)

(assert (=> bs!1184685 m!6018578))

(declare-fun m!6018580 () Bool)

(assert (=> bs!1184685 m!6018580))

(declare-fun m!6018582 () Bool)

(assert (=> bs!1184685 m!6018582))

(assert (=> bs!1184685 m!6018070))

(declare-fun m!6018584 () Bool)

(assert (=> bs!1184685 m!6018584))

(assert (=> bs!1184685 m!6018580))

(declare-fun m!6018586 () Bool)

(assert (=> bs!1184685 m!6018586))

(assert (=> d!1605673 d!1605877))

(assert (=> d!1605673 d!1605701))

(assert (=> d!1605701 d!1605741))

(declare-fun b!4986760 () Bool)

(declare-fun res!2128833 () Bool)

(declare-fun e!3116628 () Bool)

(assert (=> b!4986760 (=> (not res!2128833) (not e!3116628))))

(assert (=> b!4986760 (= res!2128833 (isBalanced!4238 (left!42146 (c!850843 totalInput!520))))))

(declare-fun b!4986761 () Bool)

(declare-fun res!2128834 () Bool)

(assert (=> b!4986761 (=> (not res!2128834) (not e!3116628))))

(assert (=> b!4986761 (= res!2128834 (isBalanced!4238 (right!42476 (c!850843 totalInput!520))))))

(declare-fun b!4986762 () Bool)

(declare-fun res!2128832 () Bool)

(assert (=> b!4986762 (=> (not res!2128832) (not e!3116628))))

(assert (=> b!4986762 (= res!2128832 (<= (- (height!2027 (left!42146 (c!850843 totalInput!520))) (height!2027 (right!42476 (c!850843 totalInput!520)))) 1))))

(declare-fun b!4986763 () Bool)

(assert (=> b!4986763 (= e!3116628 (not (isEmpty!31171 (right!42476 (c!850843 totalInput!520)))))))

(declare-fun d!1605879 () Bool)

(declare-fun res!2128830 () Bool)

(declare-fun e!3116629 () Bool)

(assert (=> d!1605879 (=> res!2128830 e!3116629)))

(assert (=> d!1605879 (= res!2128830 (not ((_ is Node!15224) (c!850843 totalInput!520))))))

(assert (=> d!1605879 (= (isBalanced!4238 (c!850843 totalInput!520)) e!3116629)))

(declare-fun b!4986764 () Bool)

(assert (=> b!4986764 (= e!3116629 e!3116628)))

(declare-fun res!2128835 () Bool)

(assert (=> b!4986764 (=> (not res!2128835) (not e!3116628))))

(assert (=> b!4986764 (= res!2128835 (<= (- 1) (- (height!2027 (left!42146 (c!850843 totalInput!520))) (height!2027 (right!42476 (c!850843 totalInput!520))))))))

(declare-fun b!4986765 () Bool)

(declare-fun res!2128831 () Bool)

(assert (=> b!4986765 (=> (not res!2128831) (not e!3116628))))

(assert (=> b!4986765 (= res!2128831 (not (isEmpty!31171 (left!42146 (c!850843 totalInput!520)))))))

(assert (= (and d!1605879 (not res!2128830)) b!4986764))

(assert (= (and b!4986764 res!2128835) b!4986762))

(assert (= (and b!4986762 res!2128832) b!4986760))

(assert (= (and b!4986760 res!2128833) b!4986761))

(assert (= (and b!4986761 res!2128834) b!4986765))

(assert (= (and b!4986765 res!2128831) b!4986763))

(declare-fun m!6018588 () Bool)

(assert (=> b!4986760 m!6018588))

(declare-fun m!6018590 () Bool)

(assert (=> b!4986761 m!6018590))

(declare-fun m!6018592 () Bool)

(assert (=> b!4986763 m!6018592))

(assert (=> b!4986764 m!6018310))

(assert (=> b!4986764 m!6018312))

(declare-fun m!6018594 () Bool)

(assert (=> b!4986765 m!6018594))

(assert (=> b!4986762 m!6018310))

(assert (=> b!4986762 m!6018312))

(assert (=> d!1605705 d!1605879))

(declare-fun bs!1184686 () Bool)

(declare-fun d!1605881 () Bool)

(assert (= bs!1184686 (and d!1605881 d!1605817)))

(declare-fun lambda!248060 () Int)

(assert (=> bs!1184686 (= lambda!248060 lambda!248057)))

(assert (=> d!1605881 true))

(assert (=> d!1605881 (< (dynLambda!23464 order!26631 (toChars!11336 (transformation!8472 rule!200))) (dynLambda!23463 order!26629 lambda!248060))))

(assert (=> d!1605881 true))

(assert (=> d!1605881 (< (dynLambda!23462 order!26627 (toValue!11477 (transformation!8472 rule!200))) (dynLambda!23463 order!26629 lambda!248060))))

(declare-fun Forall!1822 (Int) Bool)

(assert (=> d!1605881 (= (semiInverseModEq!3765 (toChars!11336 (transformation!8472 rule!200)) (toValue!11477 (transformation!8472 rule!200))) (Forall!1822 lambda!248060))))

(declare-fun bs!1184687 () Bool)

(assert (= bs!1184687 d!1605881))

(declare-fun m!6018596 () Bool)

(assert (=> bs!1184687 m!6018596))

(assert (=> d!1605721 d!1605881))

(declare-fun b!4986778 () Bool)

(declare-fun e!3116634 () List!57740)

(assert (=> b!4986778 (= e!3116634 Nil!57616)))

(declare-fun b!4986781 () Bool)

(declare-fun e!3116635 () List!57740)

(assert (=> b!4986781 (= e!3116635 (++!12566 (list!18496 (left!42146 (c!850843 input!1580))) (list!18496 (right!42476 (c!850843 input!1580)))))))

(declare-fun b!4986780 () Bool)

(assert (=> b!4986780 (= e!3116635 (list!18497 (xs!18550 (c!850843 input!1580))))))

(declare-fun b!4986779 () Bool)

(assert (=> b!4986779 (= e!3116634 e!3116635)))

(declare-fun c!850974 () Bool)

(assert (=> b!4986779 (= c!850974 ((_ is Leaf!25285) (c!850843 input!1580)))))

(declare-fun d!1605883 () Bool)

(declare-fun c!850973 () Bool)

(assert (=> d!1605883 (= c!850973 ((_ is Empty!15224) (c!850843 input!1580)))))

(assert (=> d!1605883 (= (list!18496 (c!850843 input!1580)) e!3116634)))

(assert (= (and d!1605883 c!850973) b!4986778))

(assert (= (and d!1605883 (not c!850973)) b!4986779))

(assert (= (and b!4986779 c!850974) b!4986780))

(assert (= (and b!4986779 (not c!850974)) b!4986781))

(declare-fun m!6018598 () Bool)

(assert (=> b!4986781 m!6018598))

(declare-fun m!6018600 () Bool)

(assert (=> b!4986781 m!6018600))

(assert (=> b!4986781 m!6018598))

(assert (=> b!4986781 m!6018600))

(declare-fun m!6018602 () Bool)

(assert (=> b!4986781 m!6018602))

(assert (=> b!4986780 m!6018548))

(assert (=> d!1605731 d!1605883))

(declare-fun d!1605885 () Bool)

(declare-fun nullableFct!1264 (Regex!13705) Bool)

(assert (=> d!1605885 (= (nullable!4655 (regex!8472 rule!200)) (nullableFct!1264 (regex!8472 rule!200)))))

(declare-fun bs!1184688 () Bool)

(assert (= bs!1184688 d!1605885))

(declare-fun m!6018604 () Bool)

(assert (=> bs!1184688 m!6018604))

(assert (=> b!4986246 d!1605885))

(declare-fun d!1605887 () Bool)

(assert (=> d!1605887 true))

(declare-fun order!26633 () Int)

(declare-fun lambda!248063 () Int)

(declare-fun dynLambda!23466 (Int Int) Int)

(assert (=> d!1605887 (< (dynLambda!23462 order!26627 (toValue!11477 (transformation!8472 rule!200))) (dynLambda!23466 order!26633 lambda!248063))))

(declare-fun Forall2!1301 (Int) Bool)

(assert (=> d!1605887 (= (equivClasses!3584 (toChars!11336 (transformation!8472 rule!200)) (toValue!11477 (transformation!8472 rule!200))) (Forall2!1301 lambda!248063))))

(declare-fun bs!1184689 () Bool)

(assert (= bs!1184689 d!1605887))

(declare-fun m!6018606 () Bool)

(assert (=> bs!1184689 m!6018606))

(assert (=> b!4986311 d!1605887))

(declare-fun b!4986792 () Bool)

(declare-fun e!3116642 () Bool)

(declare-fun tp!1397493 () Bool)

(assert (=> b!4986792 (= e!3116642 tp!1397493)))

(declare-fun b!4986790 () Bool)

(assert (=> b!4986790 (= e!3116642 tp_is_empty!36411)))

(declare-fun b!4986793 () Bool)

(declare-fun tp!1397491 () Bool)

(declare-fun tp!1397494 () Bool)

(assert (=> b!4986793 (= e!3116642 (and tp!1397491 tp!1397494))))

(assert (=> b!4986340 (= tp!1397474 e!3116642)))

(declare-fun b!4986791 () Bool)

(declare-fun tp!1397495 () Bool)

(declare-fun tp!1397492 () Bool)

(assert (=> b!4986791 (= e!3116642 (and tp!1397495 tp!1397492))))

(assert (= (and b!4986340 ((_ is ElementMatch!13705) (regOne!27922 (regex!8472 rule!200)))) b!4986790))

(assert (= (and b!4986340 ((_ is Concat!22488) (regOne!27922 (regex!8472 rule!200)))) b!4986791))

(assert (= (and b!4986340 ((_ is Star!13705) (regOne!27922 (regex!8472 rule!200)))) b!4986792))

(assert (= (and b!4986340 ((_ is Union!13705) (regOne!27922 (regex!8472 rule!200)))) b!4986793))

(declare-fun b!4986796 () Bool)

(declare-fun e!3116643 () Bool)

(declare-fun tp!1397498 () Bool)

(assert (=> b!4986796 (= e!3116643 tp!1397498)))

(declare-fun b!4986794 () Bool)

(assert (=> b!4986794 (= e!3116643 tp_is_empty!36411)))

(declare-fun b!4986797 () Bool)

(declare-fun tp!1397496 () Bool)

(declare-fun tp!1397499 () Bool)

(assert (=> b!4986797 (= e!3116643 (and tp!1397496 tp!1397499))))

(assert (=> b!4986340 (= tp!1397471 e!3116643)))

(declare-fun b!4986795 () Bool)

(declare-fun tp!1397500 () Bool)

(declare-fun tp!1397497 () Bool)

(assert (=> b!4986795 (= e!3116643 (and tp!1397500 tp!1397497))))

(assert (= (and b!4986340 ((_ is ElementMatch!13705) (regTwo!27922 (regex!8472 rule!200)))) b!4986794))

(assert (= (and b!4986340 ((_ is Concat!22488) (regTwo!27922 (regex!8472 rule!200)))) b!4986795))

(assert (= (and b!4986340 ((_ is Star!13705) (regTwo!27922 (regex!8472 rule!200)))) b!4986796))

(assert (= (and b!4986340 ((_ is Union!13705) (regTwo!27922 (regex!8472 rule!200)))) b!4986797))

(declare-fun b!4986802 () Bool)

(declare-fun e!3116646 () Bool)

(declare-fun tp!1397503 () Bool)

(assert (=> b!4986802 (= e!3116646 (and tp_is_empty!36411 tp!1397503))))

(assert (=> b!4986328 (= tp!1397457 e!3116646)))

(assert (= (and b!4986328 ((_ is Cons!57616) (innerList!15312 (xs!18550 (c!850843 totalInput!520))))) b!4986802))

(declare-fun b!4986805 () Bool)

(declare-fun e!3116647 () Bool)

(declare-fun tp!1397506 () Bool)

(assert (=> b!4986805 (= e!3116647 tp!1397506)))

(declare-fun b!4986803 () Bool)

(assert (=> b!4986803 (= e!3116647 tp_is_empty!36411)))

(declare-fun b!4986806 () Bool)

(declare-fun tp!1397504 () Bool)

(declare-fun tp!1397507 () Bool)

(assert (=> b!4986806 (= e!3116647 (and tp!1397504 tp!1397507))))

(assert (=> b!4986341 (= tp!1397472 e!3116647)))

(declare-fun b!4986804 () Bool)

(declare-fun tp!1397508 () Bool)

(declare-fun tp!1397505 () Bool)

(assert (=> b!4986804 (= e!3116647 (and tp!1397508 tp!1397505))))

(assert (= (and b!4986341 ((_ is ElementMatch!13705) (reg!14034 (regex!8472 rule!200)))) b!4986803))

(assert (= (and b!4986341 ((_ is Concat!22488) (reg!14034 (regex!8472 rule!200)))) b!4986804))

(assert (= (and b!4986341 ((_ is Star!13705) (reg!14034 (regex!8472 rule!200)))) b!4986805))

(assert (= (and b!4986341 ((_ is Union!13705) (reg!14034 (regex!8472 rule!200)))) b!4986806))

(declare-fun b!4986807 () Bool)

(declare-fun e!3116648 () Bool)

(declare-fun tp!1397509 () Bool)

(assert (=> b!4986807 (= e!3116648 (and tp_is_empty!36411 tp!1397509))))

(assert (=> b!4986325 (= tp!1397454 e!3116648)))

(assert (= (and b!4986325 ((_ is Cons!57616) (innerList!15312 (xs!18550 (c!850843 input!1580))))) b!4986807))

(declare-fun tp!1397512 () Bool)

(declare-fun b!4986808 () Bool)

(declare-fun tp!1397511 () Bool)

(declare-fun e!3116649 () Bool)

(assert (=> b!4986808 (= e!3116649 (and (inv!75532 (left!42146 (left!42146 (c!850843 totalInput!520)))) tp!1397512 (inv!75532 (right!42476 (left!42146 (c!850843 totalInput!520)))) tp!1397511))))

(declare-fun b!4986810 () Bool)

(declare-fun e!3116650 () Bool)

(declare-fun tp!1397510 () Bool)

(assert (=> b!4986810 (= e!3116650 tp!1397510)))

(declare-fun b!4986809 () Bool)

(assert (=> b!4986809 (= e!3116649 (and (inv!75540 (xs!18550 (left!42146 (c!850843 totalInput!520)))) e!3116650))))

(assert (=> b!4986326 (= tp!1397459 (and (inv!75532 (left!42146 (c!850843 totalInput!520))) e!3116649))))

(assert (= (and b!4986326 ((_ is Node!15224) (left!42146 (c!850843 totalInput!520)))) b!4986808))

(assert (= b!4986809 b!4986810))

(assert (= (and b!4986326 ((_ is Leaf!25285) (left!42146 (c!850843 totalInput!520)))) b!4986809))

(declare-fun m!6018608 () Bool)

(assert (=> b!4986808 m!6018608))

(declare-fun m!6018610 () Bool)

(assert (=> b!4986808 m!6018610))

(declare-fun m!6018612 () Bool)

(assert (=> b!4986809 m!6018612))

(assert (=> b!4986326 m!6018172))

(declare-fun e!3116651 () Bool)

(declare-fun b!4986811 () Bool)

(declare-fun tp!1397514 () Bool)

(declare-fun tp!1397515 () Bool)

(assert (=> b!4986811 (= e!3116651 (and (inv!75532 (left!42146 (right!42476 (c!850843 totalInput!520)))) tp!1397515 (inv!75532 (right!42476 (right!42476 (c!850843 totalInput!520)))) tp!1397514))))

(declare-fun b!4986813 () Bool)

(declare-fun e!3116652 () Bool)

(declare-fun tp!1397513 () Bool)

(assert (=> b!4986813 (= e!3116652 tp!1397513)))

(declare-fun b!4986812 () Bool)

(assert (=> b!4986812 (= e!3116651 (and (inv!75540 (xs!18550 (right!42476 (c!850843 totalInput!520)))) e!3116652))))

(assert (=> b!4986326 (= tp!1397458 (and (inv!75532 (right!42476 (c!850843 totalInput!520))) e!3116651))))

(assert (= (and b!4986326 ((_ is Node!15224) (right!42476 (c!850843 totalInput!520)))) b!4986811))

(assert (= b!4986812 b!4986813))

(assert (= (and b!4986326 ((_ is Leaf!25285) (right!42476 (c!850843 totalInput!520)))) b!4986812))

(declare-fun m!6018614 () Bool)

(assert (=> b!4986811 m!6018614))

(declare-fun m!6018616 () Bool)

(assert (=> b!4986811 m!6018616))

(declare-fun m!6018618 () Bool)

(assert (=> b!4986812 m!6018618))

(assert (=> b!4986326 m!6018174))

(declare-fun b!4986816 () Bool)

(declare-fun e!3116653 () Bool)

(declare-fun tp!1397518 () Bool)

(assert (=> b!4986816 (= e!3116653 tp!1397518)))

(declare-fun b!4986814 () Bool)

(assert (=> b!4986814 (= e!3116653 tp_is_empty!36411)))

(declare-fun b!4986817 () Bool)

(declare-fun tp!1397516 () Bool)

(declare-fun tp!1397519 () Bool)

(assert (=> b!4986817 (= e!3116653 (and tp!1397516 tp!1397519))))

(assert (=> b!4986342 (= tp!1397470 e!3116653)))

(declare-fun b!4986815 () Bool)

(declare-fun tp!1397520 () Bool)

(declare-fun tp!1397517 () Bool)

(assert (=> b!4986815 (= e!3116653 (and tp!1397520 tp!1397517))))

(assert (= (and b!4986342 ((_ is ElementMatch!13705) (regOne!27923 (regex!8472 rule!200)))) b!4986814))

(assert (= (and b!4986342 ((_ is Concat!22488) (regOne!27923 (regex!8472 rule!200)))) b!4986815))

(assert (= (and b!4986342 ((_ is Star!13705) (regOne!27923 (regex!8472 rule!200)))) b!4986816))

(assert (= (and b!4986342 ((_ is Union!13705) (regOne!27923 (regex!8472 rule!200)))) b!4986817))

(declare-fun b!4986820 () Bool)

(declare-fun e!3116654 () Bool)

(declare-fun tp!1397523 () Bool)

(assert (=> b!4986820 (= e!3116654 tp!1397523)))

(declare-fun b!4986818 () Bool)

(assert (=> b!4986818 (= e!3116654 tp_is_empty!36411)))

(declare-fun b!4986821 () Bool)

(declare-fun tp!1397521 () Bool)

(declare-fun tp!1397524 () Bool)

(assert (=> b!4986821 (= e!3116654 (and tp!1397521 tp!1397524))))

(assert (=> b!4986342 (= tp!1397473 e!3116654)))

(declare-fun b!4986819 () Bool)

(declare-fun tp!1397525 () Bool)

(declare-fun tp!1397522 () Bool)

(assert (=> b!4986819 (= e!3116654 (and tp!1397525 tp!1397522))))

(assert (= (and b!4986342 ((_ is ElementMatch!13705) (regTwo!27923 (regex!8472 rule!200)))) b!4986818))

(assert (= (and b!4986342 ((_ is Concat!22488) (regTwo!27923 (regex!8472 rule!200)))) b!4986819))

(assert (= (and b!4986342 ((_ is Star!13705) (regTwo!27923 (regex!8472 rule!200)))) b!4986820))

(assert (= (and b!4986342 ((_ is Union!13705) (regTwo!27923 (regex!8472 rule!200)))) b!4986821))

(declare-fun b!4986822 () Bool)

(declare-fun tp!1397527 () Bool)

(declare-fun e!3116655 () Bool)

(declare-fun tp!1397528 () Bool)

(assert (=> b!4986822 (= e!3116655 (and (inv!75532 (left!42146 (left!42146 (c!850843 input!1580)))) tp!1397528 (inv!75532 (right!42476 (left!42146 (c!850843 input!1580)))) tp!1397527))))

(declare-fun b!4986824 () Bool)

(declare-fun e!3116656 () Bool)

(declare-fun tp!1397526 () Bool)

(assert (=> b!4986824 (= e!3116656 tp!1397526)))

(declare-fun b!4986823 () Bool)

(assert (=> b!4986823 (= e!3116655 (and (inv!75540 (xs!18550 (left!42146 (c!850843 input!1580)))) e!3116656))))

(assert (=> b!4986323 (= tp!1397456 (and (inv!75532 (left!42146 (c!850843 input!1580))) e!3116655))))

(assert (= (and b!4986323 ((_ is Node!15224) (left!42146 (c!850843 input!1580)))) b!4986822))

(assert (= b!4986823 b!4986824))

(assert (= (and b!4986323 ((_ is Leaf!25285) (left!42146 (c!850843 input!1580)))) b!4986823))

(declare-fun m!6018620 () Bool)

(assert (=> b!4986822 m!6018620))

(declare-fun m!6018622 () Bool)

(assert (=> b!4986822 m!6018622))

(declare-fun m!6018624 () Bool)

(assert (=> b!4986823 m!6018624))

(assert (=> b!4986323 m!6018166))

(declare-fun tp!1397530 () Bool)

(declare-fun e!3116657 () Bool)

(declare-fun tp!1397531 () Bool)

(declare-fun b!4986825 () Bool)

(assert (=> b!4986825 (= e!3116657 (and (inv!75532 (left!42146 (right!42476 (c!850843 input!1580)))) tp!1397531 (inv!75532 (right!42476 (right!42476 (c!850843 input!1580)))) tp!1397530))))

(declare-fun b!4986827 () Bool)

(declare-fun e!3116658 () Bool)

(declare-fun tp!1397529 () Bool)

(assert (=> b!4986827 (= e!3116658 tp!1397529)))

(declare-fun b!4986826 () Bool)

(assert (=> b!4986826 (= e!3116657 (and (inv!75540 (xs!18550 (right!42476 (c!850843 input!1580)))) e!3116658))))

(assert (=> b!4986323 (= tp!1397455 (and (inv!75532 (right!42476 (c!850843 input!1580))) e!3116657))))

(assert (= (and b!4986323 ((_ is Node!15224) (right!42476 (c!850843 input!1580)))) b!4986825))

(assert (= b!4986826 b!4986827))

(assert (= (and b!4986323 ((_ is Leaf!25285) (right!42476 (c!850843 input!1580)))) b!4986826))

(declare-fun m!6018626 () Bool)

(assert (=> b!4986825 m!6018626))

(declare-fun m!6018628 () Bool)

(assert (=> b!4986825 m!6018628))

(declare-fun m!6018630 () Bool)

(assert (=> b!4986826 m!6018630))

(assert (=> b!4986323 m!6018168))

(declare-fun b_lambda!198369 () Bool)

(assert (= b_lambda!198365 (or (and b!4986176 b_free!133187) b_lambda!198369)))

(declare-fun b_lambda!198371 () Bool)

(assert (= b_lambda!198367 (or (and b!4986176 b_free!133187) b_lambda!198371)))

(declare-fun b_lambda!198373 () Bool)

(assert (= b_lambda!198363 (or (and b!4986176 b_free!133189) b_lambda!198373)))

(check-sat (not b!4986739) (not d!1605785) (not b!4986429) (not bm!347995) (not b!4986822) (not tb!261743) (not d!1605797) (not b!4986593) (not b!4986824) (not b!4986378) (not bm!347993) (not b!4986722) (not b!4986820) (not b!4986825) (not b!4986326) (not d!1605735) (not d!1605881) (not b_lambda!198371) (not b!4986738) (not b!4986726) (not b!4986428) (not d!1605775) (not b!4986802) (not d!1605817) (not b!4986426) (not b!4986823) (not d!1605789) (not d!1605733) (not b!4986533) (not b!4986796) (not b!4986469) (not b!4986763) (not bm!347994) (not d!1605867) (not b!4986792) (not b!4986463) (not b!4986811) (not b!4986433) (not b!4986534) (not b!4986795) (not d!1605759) (not d!1605885) (not b!4986806) (not bm!347992) (not b!4986761) (not b!4986587) (not b!4986573) (not bm!347997) (not b!4986348) (not b!4986812) (not b!4986592) (not b!4986323) (not b!4986570) (not bm!347967) (not b!4986720) (not d!1605887) (not b!4986448) tp_is_empty!36411 (not b_lambda!198373) (not b!4986816) (not b!4986492) (not d!1605743) (not d!1605877) (not b!4986745) (not b!4986529) (not d!1605807) b_and!349953 (not b!4986744) (not d!1605781) (not b!4986602) (not b!4986537) (not b!4986808) (not b!4986817) (not tb!261745) (not b!4986807) (not d!1605793) (not b!4986398) (not d!1605783) (not b!4986821) (not b!4986425) (not d!1605787) (not d!1605791) (not bm!347972) (not b!4986499) (not b!4986826) (not tb!261749) (not d!1605857) (not tb!261751) (not b!4986809) (not b!4986764) (not b!4986717) (not b!4986427) b_and!349957 (not b!4986805) (not bm!347968) (not d!1605859) (not b!4986540) (not b!4986455) (not d!1605865) (not bm!347999) (not b!4986797) (not b!4986819) (not b!4986434) (not b!4986765) (not b!4986430) (not bm!347996) (not b!4986781) (not b!4986810) (not b_next!133979) (not b!4986436) (not b!4986595) (not d!1605815) (not b!4986780) (not b!4986496) (not b!4986578) (not b!4986827) (not b!4986804) (not b!4986347) (not b!4986438) (not d!1605795) (not b_lambda!198359) (not b_next!133977) (not b!4986719) (not b!4986585) (not b!4986793) (not b!4986760) (not b!4986591) (not d!1605809) (not b!4986535) (not b!4986396) (not b!4986762) (not b!4986813) (not b!4986716) (not b!4986431) (not b_lambda!198369) (not b_lambda!198357) (not bm!347998) (not b!4986580) (not b!4986723) (not bm!348000) (not b!4986449) (not d!1605737) (not b!4986598) (not b!4986791) (not b!4986815) (not d!1605813) (not bm!347975))
(check-sat b_and!349953 b_and!349957 (not b_next!133979) (not b_next!133977))
