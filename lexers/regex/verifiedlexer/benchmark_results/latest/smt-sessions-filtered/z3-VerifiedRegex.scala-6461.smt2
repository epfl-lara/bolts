; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!338194 () Bool)

(assert start!338194)

(declare-fun b!3628549 () Bool)

(declare-fun b_free!94857 () Bool)

(declare-fun b_next!95561 () Bool)

(assert (=> b!3628549 (= b_free!94857 (not b_next!95561))))

(declare-fun tp!1107910 () Bool)

(declare-fun b_and!266031 () Bool)

(assert (=> b!3628549 (= tp!1107910 b_and!266031)))

(declare-fun b_free!94859 () Bool)

(declare-fun b_next!95563 () Bool)

(assert (=> b!3628549 (= b_free!94859 (not b_next!95563))))

(declare-fun tp!1107916 () Bool)

(declare-fun b_and!266033 () Bool)

(assert (=> b!3628549 (= tp!1107916 b_and!266033)))

(declare-fun b!3628548 () Bool)

(declare-fun b_free!94861 () Bool)

(declare-fun b_next!95565 () Bool)

(assert (=> b!3628548 (= b_free!94861 (not b_next!95565))))

(declare-fun tp!1107915 () Bool)

(declare-fun b_and!266035 () Bool)

(assert (=> b!3628548 (= tp!1107915 b_and!266035)))

(declare-fun b_free!94863 () Bool)

(declare-fun b_next!95567 () Bool)

(assert (=> b!3628548 (= b_free!94863 (not b_next!95567))))

(declare-fun tp!1107911 () Bool)

(declare-fun b_and!266037 () Bool)

(assert (=> b!3628548 (= tp!1107911 b_and!266037)))

(declare-fun b!3628542 () Bool)

(declare-fun b_free!94865 () Bool)

(declare-fun b_next!95569 () Bool)

(assert (=> b!3628542 (= b_free!94865 (not b_next!95569))))

(declare-fun tp!1107909 () Bool)

(declare-fun b_and!266039 () Bool)

(assert (=> b!3628542 (= tp!1107909 b_and!266039)))

(declare-fun b_free!94867 () Bool)

(declare-fun b_next!95571 () Bool)

(assert (=> b!3628542 (= b_free!94867 (not b_next!95571))))

(declare-fun tp!1107918 () Bool)

(declare-fun b_and!266041 () Bool)

(assert (=> b!3628542 (= tp!1107918 b_and!266041)))

(declare-fun b!3628555 () Bool)

(declare-fun b_free!94869 () Bool)

(declare-fun b_next!95573 () Bool)

(assert (=> b!3628555 (= b_free!94869 (not b_next!95573))))

(declare-fun tp!1107913 () Bool)

(declare-fun b_and!266043 () Bool)

(assert (=> b!3628555 (= tp!1107913 b_and!266043)))

(declare-fun b_free!94871 () Bool)

(declare-fun b_next!95575 () Bool)

(assert (=> b!3628555 (= b_free!94871 (not b_next!95575))))

(declare-fun tp!1107917 () Bool)

(declare-fun b_and!266045 () Bool)

(assert (=> b!3628555 (= tp!1107917 b_and!266045)))

(declare-fun b!3628541 () Bool)

(declare-fun res!1469204 () Bool)

(declare-fun e!2246117 () Bool)

(assert (=> b!3628541 (=> (not res!1469204) (not e!2246117))))

(declare-datatypes ((List!38359 0))(
  ( (Nil!38235) (Cons!38235 (h!43655 (_ BitVec 16)) (t!294934 List!38359)) )
))
(declare-datatypes ((TokenValue!5932 0))(
  ( (FloatLiteralValue!11864 (text!41969 List!38359)) (TokenValueExt!5931 (__x!24081 Int)) (Broken!29660 (value!182941 List!38359)) (Object!6055) (End!5932) (Def!5932) (Underscore!5932) (Match!5932) (Else!5932) (Error!5932) (Case!5932) (If!5932) (Extends!5932) (Abstract!5932) (Class!5932) (Val!5932) (DelimiterValue!11864 (del!5992 List!38359)) (KeywordValue!5938 (value!182942 List!38359)) (CommentValue!11864 (value!182943 List!38359)) (WhitespaceValue!11864 (value!182944 List!38359)) (IndentationValue!5932 (value!182945 List!38359)) (String!42993) (Int32!5932) (Broken!29661 (value!182946 List!38359)) (Boolean!5933) (Unit!55049) (OperatorValue!5935 (op!5992 List!38359)) (IdentifierValue!11864 (value!182947 List!38359)) (IdentifierValue!11865 (value!182948 List!38359)) (WhitespaceValue!11865 (value!182949 List!38359)) (True!11864) (False!11864) (Broken!29662 (value!182950 List!38359)) (Broken!29663 (value!182951 List!38359)) (True!11865) (RightBrace!5932) (RightBracket!5932) (Colon!5932) (Null!5932) (Comma!5932) (LeftBracket!5932) (False!11865) (LeftBrace!5932) (ImaginaryLiteralValue!5932 (text!41970 List!38359)) (StringLiteralValue!17796 (value!182952 List!38359)) (EOFValue!5932 (value!182953 List!38359)) (IdentValue!5932 (value!182954 List!38359)) (DelimiterValue!11865 (value!182955 List!38359)) (DedentValue!5932 (value!182956 List!38359)) (NewLineValue!5932 (value!182957 List!38359)) (IntegerValue!17796 (value!182958 (_ BitVec 32)) (text!41971 List!38359)) (IntegerValue!17797 (value!182959 Int) (text!41972 List!38359)) (Times!5932) (Or!5932) (Equal!5932) (Minus!5932) (Broken!29664 (value!182960 List!38359)) (And!5932) (Div!5932) (LessEqual!5932) (Mod!5932) (Concat!16393) (Not!5932) (Plus!5932) (SpaceValue!5932 (value!182961 List!38359)) (IntegerValue!17798 (value!182962 Int) (text!41973 List!38359)) (StringLiteralValue!17797 (text!41974 List!38359)) (FloatLiteralValue!11865 (text!41975 List!38359)) (BytesLiteralValue!5932 (value!182963 List!38359)) (CommentValue!11865 (value!182964 List!38359)) (StringLiteralValue!17798 (value!182965 List!38359)) (ErrorTokenValue!5932 (msg!5993 List!38359)) )
))
(declare-datatypes ((C!21108 0))(
  ( (C!21109 (val!12602 Int)) )
))
(declare-datatypes ((Regex!10461 0))(
  ( (ElementMatch!10461 (c!627756 C!21108)) (Concat!16394 (regOne!21434 Regex!10461) (regTwo!21434 Regex!10461)) (EmptyExpr!10461) (Star!10461 (reg!10790 Regex!10461)) (EmptyLang!10461) (Union!10461 (regOne!21435 Regex!10461) (regTwo!21435 Regex!10461)) )
))
(declare-datatypes ((String!42994 0))(
  ( (String!42995 (value!182966 String)) )
))
(declare-datatypes ((List!38360 0))(
  ( (Nil!38236) (Cons!38236 (h!43656 C!21108) (t!294935 List!38360)) )
))
(declare-datatypes ((IArray!23335 0))(
  ( (IArray!23336 (innerList!11725 List!38360)) )
))
(declare-datatypes ((Conc!11665 0))(
  ( (Node!11665 (left!29846 Conc!11665) (right!30176 Conc!11665) (csize!23560 Int) (cheight!11876 Int)) (Leaf!18127 (xs!14867 IArray!23335) (csize!23561 Int)) (Empty!11665) )
))
(declare-datatypes ((BalanceConc!22944 0))(
  ( (BalanceConc!22945 (c!627757 Conc!11665)) )
))
(declare-datatypes ((TokenValueInjection!11292 0))(
  ( (TokenValueInjection!11293 (toValue!7990 Int) (toChars!7849 Int)) )
))
(declare-datatypes ((Rule!11204 0))(
  ( (Rule!11205 (regex!5702 Regex!10461) (tag!6430 String!42994) (isSeparator!5702 Bool) (transformation!5702 TokenValueInjection!11292)) )
))
(declare-datatypes ((List!38361 0))(
  ( (Nil!38237) (Cons!38237 (h!43657 Rule!11204) (t!294936 List!38361)) )
))
(declare-fun rules!3307 () List!38361)

(declare-fun anOtherTypeRule!33 () Rule!11204)

(declare-fun contains!7468 (List!38361 Rule!11204) Bool)

(assert (=> b!3628541 (= res!1469204 (contains!7468 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2246127 () Bool)

(assert (=> b!3628542 (= e!2246127 (and tp!1107909 tp!1107918))))

(declare-fun b!3628543 () Bool)

(declare-fun e!2246119 () Bool)

(declare-fun e!2246128 () Bool)

(declare-fun tp!1107908 () Bool)

(declare-fun inv!51645 (String!42994) Bool)

(declare-fun inv!51648 (TokenValueInjection!11292) Bool)

(assert (=> b!3628543 (= e!2246128 (and tp!1107908 (inv!51645 (tag!6430 (h!43657 rules!3307))) (inv!51648 (transformation!5702 (h!43657 rules!3307))) e!2246119))))

(declare-fun tp!1107912 () Bool)

(declare-fun e!2246115 () Bool)

(declare-fun rule!403 () Rule!11204)

(declare-fun e!2246116 () Bool)

(declare-fun b!3628544 () Bool)

(assert (=> b!3628544 (= e!2246115 (and tp!1107912 (inv!51645 (tag!6430 rule!403)) (inv!51648 (transformation!5702 rule!403)) e!2246116))))

(declare-fun tp!1107914 () Bool)

(declare-fun e!2246111 () Bool)

(declare-fun b!3628545 () Bool)

(declare-fun e!2246122 () Bool)

(assert (=> b!3628545 (= e!2246111 (and tp!1107914 (inv!51645 (tag!6430 anOtherTypeRule!33)) (inv!51648 (transformation!5702 anOtherTypeRule!33)) e!2246122))))

(declare-fun tp!1107920 () Bool)

(declare-datatypes ((Token!10770 0))(
  ( (Token!10771 (value!182967 TokenValue!5932) (rule!8472 Rule!11204) (size!29173 Int) (originalCharacters!6416 List!38360)) )
))
(declare-fun token!511 () Token!10770)

(declare-fun b!3628546 () Bool)

(declare-fun e!2246121 () Bool)

(declare-fun e!2246114 () Bool)

(declare-fun inv!21 (TokenValue!5932) Bool)

(assert (=> b!3628546 (= e!2246114 (and (inv!21 (value!182967 token!511)) e!2246121 tp!1107920))))

(declare-fun b!3628547 () Bool)

(declare-fun res!1469213 () Bool)

(declare-fun e!2246118 () Bool)

(assert (=> b!3628547 (=> (not res!1469213) (not e!2246118))))

(assert (=> b!3628547 (= res!1469213 (= (rule!8472 token!511) rule!403))))

(assert (=> b!3628548 (= e!2246116 (and tp!1107915 tp!1107911))))

(declare-fun res!1469206 () Bool)

(assert (=> start!338194 (=> (not res!1469206) (not e!2246117))))

(declare-datatypes ((LexerInterface!5291 0))(
  ( (LexerInterfaceExt!5288 (__x!24082 Int)) (Lexer!5289) )
))
(declare-fun thiss!23823 () LexerInterface!5291)

(get-info :version)

(assert (=> start!338194 (= res!1469206 ((_ is Lexer!5289) thiss!23823))))

(assert (=> start!338194 e!2246117))

(declare-fun e!2246124 () Bool)

(assert (=> start!338194 e!2246124))

(assert (=> start!338194 true))

(declare-fun inv!51649 (Token!10770) Bool)

(assert (=> start!338194 (and (inv!51649 token!511) e!2246114)))

(assert (=> start!338194 e!2246115))

(assert (=> start!338194 e!2246111))

(assert (=> b!3628549 (= e!2246119 (and tp!1107910 tp!1107916))))

(declare-fun b!3628550 () Bool)

(declare-fun res!1469210 () Bool)

(assert (=> b!3628550 (=> (not res!1469210) (not e!2246118))))

(declare-datatypes ((tuple2!38108 0))(
  ( (tuple2!38109 (_1!22188 Token!10770) (_2!22188 List!38360)) )
))
(declare-fun lt!1255117 () tuple2!38108)

(declare-fun isEmpty!22612 (List!38360) Bool)

(assert (=> b!3628550 (= res!1469210 (isEmpty!22612 (_2!22188 lt!1255117)))))

(declare-fun b!3628551 () Bool)

(declare-fun rulesValidInductive!2005 (LexerInterface!5291 List!38361) Bool)

(assert (=> b!3628551 (= e!2246118 (not (rulesValidInductive!2005 thiss!23823 rules!3307)))))

(declare-fun b!3628552 () Bool)

(declare-fun res!1469212 () Bool)

(assert (=> b!3628552 (=> (not res!1469212) (not e!2246117))))

(declare-fun rulesInvariant!4688 (LexerInterface!5291 List!38361) Bool)

(assert (=> b!3628552 (= res!1469212 (rulesInvariant!4688 thiss!23823 rules!3307))))

(declare-fun b!3628553 () Bool)

(declare-fun res!1469205 () Bool)

(assert (=> b!3628553 (=> (not res!1469205) (not e!2246117))))

(declare-fun isEmpty!22613 (List!38361) Bool)

(assert (=> b!3628553 (= res!1469205 (not (isEmpty!22613 rules!3307)))))

(declare-fun b!3628554 () Bool)

(declare-fun e!2246113 () Bool)

(assert (=> b!3628554 (= e!2246113 e!2246118)))

(declare-fun res!1469211 () Bool)

(assert (=> b!3628554 (=> (not res!1469211) (not e!2246118))))

(assert (=> b!3628554 (= res!1469211 (= (_1!22188 lt!1255117) token!511))))

(declare-datatypes ((Option!8033 0))(
  ( (None!8032) (Some!8032 (v!37818 tuple2!38108)) )
))
(declare-fun lt!1255118 () Option!8033)

(declare-fun get!12494 (Option!8033) tuple2!38108)

(assert (=> b!3628554 (= lt!1255117 (get!12494 lt!1255118))))

(assert (=> b!3628555 (= e!2246122 (and tp!1107913 tp!1107917))))

(declare-fun b!3628556 () Bool)

(declare-fun res!1469208 () Bool)

(assert (=> b!3628556 (=> (not res!1469208) (not e!2246117))))

(assert (=> b!3628556 (= res!1469208 (not (= (isSeparator!5702 anOtherTypeRule!33) (isSeparator!5702 rule!403))))))

(declare-fun b!3628557 () Bool)

(declare-fun res!1469209 () Bool)

(assert (=> b!3628557 (=> (not res!1469209) (not e!2246117))))

(assert (=> b!3628557 (= res!1469209 (contains!7468 rules!3307 rule!403))))

(declare-fun b!3628558 () Bool)

(declare-fun tp!1107907 () Bool)

(assert (=> b!3628558 (= e!2246124 (and e!2246128 tp!1107907))))

(declare-fun b!3628559 () Bool)

(assert (=> b!3628559 (= e!2246117 e!2246113)))

(declare-fun res!1469207 () Bool)

(assert (=> b!3628559 (=> (not res!1469207) (not e!2246113))))

(declare-fun isDefined!6265 (Option!8033) Bool)

(assert (=> b!3628559 (= res!1469207 (isDefined!6265 lt!1255118))))

(declare-fun maxPrefix!2825 (LexerInterface!5291 List!38361 List!38360) Option!8033)

(declare-fun list!14126 (BalanceConc!22944) List!38360)

(declare-fun charsOf!3716 (Token!10770) BalanceConc!22944)

(assert (=> b!3628559 (= lt!1255118 (maxPrefix!2825 thiss!23823 rules!3307 (list!14126 (charsOf!3716 token!511))))))

(declare-fun tp!1107919 () Bool)

(declare-fun b!3628560 () Bool)

(assert (=> b!3628560 (= e!2246121 (and tp!1107919 (inv!51645 (tag!6430 (rule!8472 token!511))) (inv!51648 (transformation!5702 (rule!8472 token!511))) e!2246127))))

(assert (= (and start!338194 res!1469206) b!3628553))

(assert (= (and b!3628553 res!1469205) b!3628552))

(assert (= (and b!3628552 res!1469212) b!3628557))

(assert (= (and b!3628557 res!1469209) b!3628541))

(assert (= (and b!3628541 res!1469204) b!3628556))

(assert (= (and b!3628556 res!1469208) b!3628559))

(assert (= (and b!3628559 res!1469207) b!3628554))

(assert (= (and b!3628554 res!1469211) b!3628550))

(assert (= (and b!3628550 res!1469210) b!3628547))

(assert (= (and b!3628547 res!1469213) b!3628551))

(assert (= b!3628543 b!3628549))

(assert (= b!3628558 b!3628543))

(assert (= (and start!338194 ((_ is Cons!38237) rules!3307)) b!3628558))

(assert (= b!3628560 b!3628542))

(assert (= b!3628546 b!3628560))

(assert (= start!338194 b!3628546))

(assert (= b!3628544 b!3628548))

(assert (= start!338194 b!3628544))

(assert (= b!3628545 b!3628555))

(assert (= start!338194 b!3628545))

(declare-fun m!4129607 () Bool)

(assert (=> b!3628545 m!4129607))

(declare-fun m!4129609 () Bool)

(assert (=> b!3628545 m!4129609))

(declare-fun m!4129611 () Bool)

(assert (=> b!3628559 m!4129611))

(declare-fun m!4129613 () Bool)

(assert (=> b!3628559 m!4129613))

(assert (=> b!3628559 m!4129613))

(declare-fun m!4129615 () Bool)

(assert (=> b!3628559 m!4129615))

(assert (=> b!3628559 m!4129615))

(declare-fun m!4129617 () Bool)

(assert (=> b!3628559 m!4129617))

(declare-fun m!4129619 () Bool)

(assert (=> b!3628544 m!4129619))

(declare-fun m!4129621 () Bool)

(assert (=> b!3628544 m!4129621))

(declare-fun m!4129623 () Bool)

(assert (=> b!3628557 m!4129623))

(declare-fun m!4129625 () Bool)

(assert (=> b!3628546 m!4129625))

(declare-fun m!4129627 () Bool)

(assert (=> b!3628541 m!4129627))

(declare-fun m!4129629 () Bool)

(assert (=> b!3628560 m!4129629))

(declare-fun m!4129631 () Bool)

(assert (=> b!3628560 m!4129631))

(declare-fun m!4129633 () Bool)

(assert (=> b!3628551 m!4129633))

(declare-fun m!4129635 () Bool)

(assert (=> b!3628550 m!4129635))

(declare-fun m!4129637 () Bool)

(assert (=> b!3628553 m!4129637))

(declare-fun m!4129639 () Bool)

(assert (=> b!3628554 m!4129639))

(declare-fun m!4129641 () Bool)

(assert (=> b!3628552 m!4129641))

(declare-fun m!4129643 () Bool)

(assert (=> start!338194 m!4129643))

(declare-fun m!4129645 () Bool)

(assert (=> b!3628543 m!4129645))

(declare-fun m!4129647 () Bool)

(assert (=> b!3628543 m!4129647))

(check-sat b_and!266035 b_and!266033 b_and!266039 (not b!3628544) (not b_next!95575) b_and!266037 (not b!3628557) b_and!266041 (not b_next!95573) (not b!3628546) (not b_next!95565) b_and!266031 (not start!338194) (not b!3628559) (not b_next!95569) (not b!3628553) b_and!266045 (not b!3628545) (not b!3628550) (not b!3628560) (not b_next!95563) (not b!3628551) (not b!3628554) b_and!266043 (not b_next!95571) (not b_next!95561) (not b_next!95567) (not b!3628552) (not b!3628541) (not b!3628543) (not b!3628558))
(check-sat b_and!266035 (not b_next!95569) b_and!266033 b_and!266039 b_and!266045 (not b_next!95575) b_and!266037 (not b_next!95563) b_and!266041 (not b_next!95573) b_and!266043 (not b_next!95565) b_and!266031 (not b_next!95567) (not b_next!95571) (not b_next!95561))
(get-model)

(declare-fun d!1067072 () Bool)

(assert (=> d!1067072 (= (inv!51645 (tag!6430 rule!403)) (= (mod (str.len (value!182966 (tag!6430 rule!403))) 2) 0))))

(assert (=> b!3628544 d!1067072))

(declare-fun d!1067074 () Bool)

(declare-fun res!1469221 () Bool)

(declare-fun e!2246131 () Bool)

(assert (=> d!1067074 (=> (not res!1469221) (not e!2246131))))

(declare-fun semiInverseModEq!2418 (Int Int) Bool)

(assert (=> d!1067074 (= res!1469221 (semiInverseModEq!2418 (toChars!7849 (transformation!5702 rule!403)) (toValue!7990 (transformation!5702 rule!403))))))

(assert (=> d!1067074 (= (inv!51648 (transformation!5702 rule!403)) e!2246131)))

(declare-fun b!3628563 () Bool)

(declare-fun equivClasses!2317 (Int Int) Bool)

(assert (=> b!3628563 (= e!2246131 (equivClasses!2317 (toChars!7849 (transformation!5702 rule!403)) (toValue!7990 (transformation!5702 rule!403))))))

(assert (= (and d!1067074 res!1469221) b!3628563))

(declare-fun m!4129649 () Bool)

(assert (=> d!1067074 m!4129649))

(declare-fun m!4129651 () Bool)

(assert (=> b!3628563 m!4129651))

(assert (=> b!3628544 d!1067074))

(declare-fun d!1067076 () Bool)

(assert (=> d!1067076 (= (inv!51645 (tag!6430 anOtherTypeRule!33)) (= (mod (str.len (value!182966 (tag!6430 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3628545 d!1067076))

(declare-fun d!1067078 () Bool)

(declare-fun res!1469222 () Bool)

(declare-fun e!2246132 () Bool)

(assert (=> d!1067078 (=> (not res!1469222) (not e!2246132))))

(assert (=> d!1067078 (= res!1469222 (semiInverseModEq!2418 (toChars!7849 (transformation!5702 anOtherTypeRule!33)) (toValue!7990 (transformation!5702 anOtherTypeRule!33))))))

(assert (=> d!1067078 (= (inv!51648 (transformation!5702 anOtherTypeRule!33)) e!2246132)))

(declare-fun b!3628564 () Bool)

(assert (=> b!3628564 (= e!2246132 (equivClasses!2317 (toChars!7849 (transformation!5702 anOtherTypeRule!33)) (toValue!7990 (transformation!5702 anOtherTypeRule!33))))))

(assert (= (and d!1067078 res!1469222) b!3628564))

(declare-fun m!4129653 () Bool)

(assert (=> d!1067078 m!4129653))

(declare-fun m!4129655 () Bool)

(assert (=> b!3628564 m!4129655))

(assert (=> b!3628545 d!1067078))

(declare-fun b!3628575 () Bool)

(declare-fun e!2246141 () Bool)

(declare-fun inv!17 (TokenValue!5932) Bool)

(assert (=> b!3628575 (= e!2246141 (inv!17 (value!182967 token!511)))))

(declare-fun d!1067080 () Bool)

(declare-fun c!627762 () Bool)

(assert (=> d!1067080 (= c!627762 ((_ is IntegerValue!17796) (value!182967 token!511)))))

(declare-fun e!2246139 () Bool)

(assert (=> d!1067080 (= (inv!21 (value!182967 token!511)) e!2246139)))

(declare-fun b!3628576 () Bool)

(declare-fun e!2246140 () Bool)

(declare-fun inv!15 (TokenValue!5932) Bool)

(assert (=> b!3628576 (= e!2246140 (inv!15 (value!182967 token!511)))))

(declare-fun b!3628577 () Bool)

(declare-fun res!1469227 () Bool)

(assert (=> b!3628577 (=> res!1469227 e!2246140)))

(assert (=> b!3628577 (= res!1469227 (not ((_ is IntegerValue!17798) (value!182967 token!511))))))

(assert (=> b!3628577 (= e!2246141 e!2246140)))

(declare-fun b!3628578 () Bool)

(assert (=> b!3628578 (= e!2246139 e!2246141)))

(declare-fun c!627763 () Bool)

(assert (=> b!3628578 (= c!627763 ((_ is IntegerValue!17797) (value!182967 token!511)))))

(declare-fun b!3628579 () Bool)

(declare-fun inv!16 (TokenValue!5932) Bool)

(assert (=> b!3628579 (= e!2246139 (inv!16 (value!182967 token!511)))))

(assert (= (and d!1067080 c!627762) b!3628579))

(assert (= (and d!1067080 (not c!627762)) b!3628578))

(assert (= (and b!3628578 c!627763) b!3628575))

(assert (= (and b!3628578 (not c!627763)) b!3628577))

(assert (= (and b!3628577 (not res!1469227)) b!3628576))

(declare-fun m!4129657 () Bool)

(assert (=> b!3628575 m!4129657))

(declare-fun m!4129659 () Bool)

(assert (=> b!3628576 m!4129659))

(declare-fun m!4129661 () Bool)

(assert (=> b!3628579 m!4129661))

(assert (=> b!3628546 d!1067080))

(declare-fun d!1067082 () Bool)

(declare-fun lt!1255121 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5478 (List!38361) (InoxSet Rule!11204))

(assert (=> d!1067082 (= lt!1255121 (select (content!5478 rules!3307) rule!403))))

(declare-fun e!2246146 () Bool)

(assert (=> d!1067082 (= lt!1255121 e!2246146)))

(declare-fun res!1469232 () Bool)

(assert (=> d!1067082 (=> (not res!1469232) (not e!2246146))))

(assert (=> d!1067082 (= res!1469232 ((_ is Cons!38237) rules!3307))))

(assert (=> d!1067082 (= (contains!7468 rules!3307 rule!403) lt!1255121)))

(declare-fun b!3628584 () Bool)

(declare-fun e!2246147 () Bool)

(assert (=> b!3628584 (= e!2246146 e!2246147)))

(declare-fun res!1469233 () Bool)

(assert (=> b!3628584 (=> res!1469233 e!2246147)))

(assert (=> b!3628584 (= res!1469233 (= (h!43657 rules!3307) rule!403))))

(declare-fun b!3628585 () Bool)

(assert (=> b!3628585 (= e!2246147 (contains!7468 (t!294936 rules!3307) rule!403))))

(assert (= (and d!1067082 res!1469232) b!3628584))

(assert (= (and b!3628584 (not res!1469233)) b!3628585))

(declare-fun m!4129663 () Bool)

(assert (=> d!1067082 m!4129663))

(declare-fun m!4129665 () Bool)

(assert (=> d!1067082 m!4129665))

(declare-fun m!4129667 () Bool)

(assert (=> b!3628585 m!4129667))

(assert (=> b!3628557 d!1067082))

(declare-fun d!1067084 () Bool)

(declare-fun res!1469238 () Bool)

(declare-fun e!2246150 () Bool)

(assert (=> d!1067084 (=> (not res!1469238) (not e!2246150))))

(assert (=> d!1067084 (= res!1469238 (not (isEmpty!22612 (originalCharacters!6416 token!511))))))

(assert (=> d!1067084 (= (inv!51649 token!511) e!2246150)))

(declare-fun b!3628590 () Bool)

(declare-fun res!1469239 () Bool)

(assert (=> b!3628590 (=> (not res!1469239) (not e!2246150))))

(declare-fun dynLambda!16560 (Int TokenValue!5932) BalanceConc!22944)

(assert (=> b!3628590 (= res!1469239 (= (originalCharacters!6416 token!511) (list!14126 (dynLambda!16560 (toChars!7849 (transformation!5702 (rule!8472 token!511))) (value!182967 token!511)))))))

(declare-fun b!3628591 () Bool)

(declare-fun size!29174 (List!38360) Int)

(assert (=> b!3628591 (= e!2246150 (= (size!29173 token!511) (size!29174 (originalCharacters!6416 token!511))))))

(assert (= (and d!1067084 res!1469238) b!3628590))

(assert (= (and b!3628590 res!1469239) b!3628591))

(declare-fun b_lambda!107367 () Bool)

(assert (=> (not b_lambda!107367) (not b!3628590)))

(declare-fun t!294938 () Bool)

(declare-fun tb!208337 () Bool)

(assert (=> (and b!3628549 (= (toChars!7849 (transformation!5702 (h!43657 rules!3307))) (toChars!7849 (transformation!5702 (rule!8472 token!511)))) t!294938) tb!208337))

(declare-fun b!3628596 () Bool)

(declare-fun e!2246153 () Bool)

(declare-fun tp!1107923 () Bool)

(declare-fun inv!51650 (Conc!11665) Bool)

(assert (=> b!3628596 (= e!2246153 (and (inv!51650 (c!627757 (dynLambda!16560 (toChars!7849 (transformation!5702 (rule!8472 token!511))) (value!182967 token!511)))) tp!1107923))))

(declare-fun result!253818 () Bool)

(declare-fun inv!51651 (BalanceConc!22944) Bool)

(assert (=> tb!208337 (= result!253818 (and (inv!51651 (dynLambda!16560 (toChars!7849 (transformation!5702 (rule!8472 token!511))) (value!182967 token!511))) e!2246153))))

(assert (= tb!208337 b!3628596))

(declare-fun m!4129669 () Bool)

(assert (=> b!3628596 m!4129669))

(declare-fun m!4129671 () Bool)

(assert (=> tb!208337 m!4129671))

(assert (=> b!3628590 t!294938))

(declare-fun b_and!266047 () Bool)

(assert (= b_and!266033 (and (=> t!294938 result!253818) b_and!266047)))

(declare-fun tb!208339 () Bool)

(declare-fun t!294940 () Bool)

(assert (=> (and b!3628548 (= (toChars!7849 (transformation!5702 rule!403)) (toChars!7849 (transformation!5702 (rule!8472 token!511)))) t!294940) tb!208339))

(declare-fun result!253822 () Bool)

(assert (= result!253822 result!253818))

(assert (=> b!3628590 t!294940))

(declare-fun b_and!266049 () Bool)

(assert (= b_and!266037 (and (=> t!294940 result!253822) b_and!266049)))

(declare-fun t!294942 () Bool)

(declare-fun tb!208341 () Bool)

(assert (=> (and b!3628542 (= (toChars!7849 (transformation!5702 (rule!8472 token!511))) (toChars!7849 (transformation!5702 (rule!8472 token!511)))) t!294942) tb!208341))

(declare-fun result!253824 () Bool)

(assert (= result!253824 result!253818))

(assert (=> b!3628590 t!294942))

(declare-fun b_and!266051 () Bool)

(assert (= b_and!266041 (and (=> t!294942 result!253824) b_and!266051)))

(declare-fun t!294944 () Bool)

(declare-fun tb!208343 () Bool)

(assert (=> (and b!3628555 (= (toChars!7849 (transformation!5702 anOtherTypeRule!33)) (toChars!7849 (transformation!5702 (rule!8472 token!511)))) t!294944) tb!208343))

(declare-fun result!253826 () Bool)

(assert (= result!253826 result!253818))

(assert (=> b!3628590 t!294944))

(declare-fun b_and!266053 () Bool)

(assert (= b_and!266045 (and (=> t!294944 result!253826) b_and!266053)))

(declare-fun m!4129673 () Bool)

(assert (=> d!1067084 m!4129673))

(declare-fun m!4129675 () Bool)

(assert (=> b!3628590 m!4129675))

(assert (=> b!3628590 m!4129675))

(declare-fun m!4129677 () Bool)

(assert (=> b!3628590 m!4129677))

(declare-fun m!4129679 () Bool)

(assert (=> b!3628591 m!4129679))

(assert (=> start!338194 d!1067084))

(declare-fun d!1067088 () Bool)

(declare-fun isEmpty!22614 (Option!8033) Bool)

(assert (=> d!1067088 (= (isDefined!6265 lt!1255118) (not (isEmpty!22614 lt!1255118)))))

(declare-fun bs!571492 () Bool)

(assert (= bs!571492 d!1067088))

(declare-fun m!4129681 () Bool)

(assert (=> bs!571492 m!4129681))

(assert (=> b!3628559 d!1067088))

(declare-fun b!3628626 () Bool)

(declare-fun e!2246168 () Option!8033)

(declare-fun call!262459 () Option!8033)

(assert (=> b!3628626 (= e!2246168 call!262459)))

(declare-fun b!3628627 () Bool)

(declare-fun res!1469266 () Bool)

(declare-fun e!2246167 () Bool)

(assert (=> b!3628627 (=> (not res!1469266) (not e!2246167))))

(declare-fun lt!1255136 () Option!8033)

(assert (=> b!3628627 (= res!1469266 (= (list!14126 (charsOf!3716 (_1!22188 (get!12494 lt!1255136)))) (originalCharacters!6416 (_1!22188 (get!12494 lt!1255136)))))))

(declare-fun b!3628628 () Bool)

(declare-fun res!1469264 () Bool)

(assert (=> b!3628628 (=> (not res!1469264) (not e!2246167))))

(declare-fun apply!9203 (TokenValueInjection!11292 BalanceConc!22944) TokenValue!5932)

(declare-fun seqFromList!4250 (List!38360) BalanceConc!22944)

(assert (=> b!3628628 (= res!1469264 (= (value!182967 (_1!22188 (get!12494 lt!1255136))) (apply!9203 (transformation!5702 (rule!8472 (_1!22188 (get!12494 lt!1255136)))) (seqFromList!4250 (originalCharacters!6416 (_1!22188 (get!12494 lt!1255136)))))))))

(declare-fun b!3628629 () Bool)

(declare-fun res!1469263 () Bool)

(assert (=> b!3628629 (=> (not res!1469263) (not e!2246167))))

(assert (=> b!3628629 (= res!1469263 (< (size!29174 (_2!22188 (get!12494 lt!1255136))) (size!29174 (list!14126 (charsOf!3716 token!511)))))))

(declare-fun b!3628631 () Bool)

(declare-fun res!1469261 () Bool)

(assert (=> b!3628631 (=> (not res!1469261) (not e!2246167))))

(declare-fun matchR!5029 (Regex!10461 List!38360) Bool)

(assert (=> b!3628631 (= res!1469261 (matchR!5029 (regex!5702 (rule!8472 (_1!22188 (get!12494 lt!1255136)))) (list!14126 (charsOf!3716 (_1!22188 (get!12494 lt!1255136))))))))

(declare-fun b!3628632 () Bool)

(assert (=> b!3628632 (= e!2246167 (contains!7468 rules!3307 (rule!8472 (_1!22188 (get!12494 lt!1255136)))))))

(declare-fun bm!262454 () Bool)

(declare-fun maxPrefixOneRule!1964 (LexerInterface!5291 Rule!11204 List!38360) Option!8033)

(assert (=> bm!262454 (= call!262459 (maxPrefixOneRule!1964 thiss!23823 (h!43657 rules!3307) (list!14126 (charsOf!3716 token!511))))))

(declare-fun b!3628633 () Bool)

(declare-fun lt!1255134 () Option!8033)

(declare-fun lt!1255135 () Option!8033)

(assert (=> b!3628633 (= e!2246168 (ite (and ((_ is None!8032) lt!1255134) ((_ is None!8032) lt!1255135)) None!8032 (ite ((_ is None!8032) lt!1255135) lt!1255134 (ite ((_ is None!8032) lt!1255134) lt!1255135 (ite (>= (size!29173 (_1!22188 (v!37818 lt!1255134))) (size!29173 (_1!22188 (v!37818 lt!1255135)))) lt!1255134 lt!1255135)))))))

(assert (=> b!3628633 (= lt!1255134 call!262459)))

(assert (=> b!3628633 (= lt!1255135 (maxPrefix!2825 thiss!23823 (t!294936 rules!3307) (list!14126 (charsOf!3716 token!511))))))

(declare-fun b!3628634 () Bool)

(declare-fun res!1469265 () Bool)

(assert (=> b!3628634 (=> (not res!1469265) (not e!2246167))))

(declare-fun ++!9517 (List!38360 List!38360) List!38360)

(assert (=> b!3628634 (= res!1469265 (= (++!9517 (list!14126 (charsOf!3716 (_1!22188 (get!12494 lt!1255136)))) (_2!22188 (get!12494 lt!1255136))) (list!14126 (charsOf!3716 token!511))))))

(declare-fun b!3628630 () Bool)

(declare-fun e!2246166 () Bool)

(assert (=> b!3628630 (= e!2246166 e!2246167)))

(declare-fun res!1469260 () Bool)

(assert (=> b!3628630 (=> (not res!1469260) (not e!2246167))))

(assert (=> b!3628630 (= res!1469260 (isDefined!6265 lt!1255136))))

(declare-fun d!1067090 () Bool)

(assert (=> d!1067090 e!2246166))

(declare-fun res!1469262 () Bool)

(assert (=> d!1067090 (=> res!1469262 e!2246166)))

(assert (=> d!1067090 (= res!1469262 (isEmpty!22614 lt!1255136))))

(assert (=> d!1067090 (= lt!1255136 e!2246168)))

(declare-fun c!627766 () Bool)

(assert (=> d!1067090 (= c!627766 (and ((_ is Cons!38237) rules!3307) ((_ is Nil!38237) (t!294936 rules!3307))))))

(declare-datatypes ((Unit!55050 0))(
  ( (Unit!55051) )
))
(declare-fun lt!1255132 () Unit!55050)

(declare-fun lt!1255133 () Unit!55050)

(assert (=> d!1067090 (= lt!1255132 lt!1255133)))

(declare-fun isPrefix!3064 (List!38360 List!38360) Bool)

(assert (=> d!1067090 (isPrefix!3064 (list!14126 (charsOf!3716 token!511)) (list!14126 (charsOf!3716 token!511)))))

(declare-fun lemmaIsPrefixRefl!1939 (List!38360 List!38360) Unit!55050)

(assert (=> d!1067090 (= lt!1255133 (lemmaIsPrefixRefl!1939 (list!14126 (charsOf!3716 token!511)) (list!14126 (charsOf!3716 token!511))))))

(assert (=> d!1067090 (rulesValidInductive!2005 thiss!23823 rules!3307)))

(assert (=> d!1067090 (= (maxPrefix!2825 thiss!23823 rules!3307 (list!14126 (charsOf!3716 token!511))) lt!1255136)))

(assert (= (and d!1067090 c!627766) b!3628626))

(assert (= (and d!1067090 (not c!627766)) b!3628633))

(assert (= (or b!3628626 b!3628633) bm!262454))

(assert (= (and d!1067090 (not res!1469262)) b!3628630))

(assert (= (and b!3628630 res!1469260) b!3628627))

(assert (= (and b!3628627 res!1469266) b!3628629))

(assert (= (and b!3628629 res!1469263) b!3628634))

(assert (= (and b!3628634 res!1469265) b!3628628))

(assert (= (and b!3628628 res!1469264) b!3628631))

(assert (= (and b!3628631 res!1469261) b!3628632))

(declare-fun m!4129697 () Bool)

(assert (=> b!3628631 m!4129697))

(declare-fun m!4129699 () Bool)

(assert (=> b!3628631 m!4129699))

(assert (=> b!3628631 m!4129699))

(declare-fun m!4129701 () Bool)

(assert (=> b!3628631 m!4129701))

(assert (=> b!3628631 m!4129701))

(declare-fun m!4129703 () Bool)

(assert (=> b!3628631 m!4129703))

(assert (=> b!3628634 m!4129697))

(assert (=> b!3628634 m!4129699))

(assert (=> b!3628634 m!4129699))

(assert (=> b!3628634 m!4129701))

(assert (=> b!3628634 m!4129701))

(declare-fun m!4129705 () Bool)

(assert (=> b!3628634 m!4129705))

(assert (=> b!3628632 m!4129697))

(declare-fun m!4129707 () Bool)

(assert (=> b!3628632 m!4129707))

(declare-fun m!4129709 () Bool)

(assert (=> d!1067090 m!4129709))

(assert (=> d!1067090 m!4129615))

(assert (=> d!1067090 m!4129615))

(declare-fun m!4129711 () Bool)

(assert (=> d!1067090 m!4129711))

(assert (=> d!1067090 m!4129615))

(assert (=> d!1067090 m!4129615))

(declare-fun m!4129713 () Bool)

(assert (=> d!1067090 m!4129713))

(assert (=> d!1067090 m!4129633))

(assert (=> b!3628628 m!4129697))

(declare-fun m!4129715 () Bool)

(assert (=> b!3628628 m!4129715))

(assert (=> b!3628628 m!4129715))

(declare-fun m!4129717 () Bool)

(assert (=> b!3628628 m!4129717))

(assert (=> b!3628627 m!4129697))

(assert (=> b!3628627 m!4129699))

(assert (=> b!3628627 m!4129699))

(assert (=> b!3628627 m!4129701))

(declare-fun m!4129719 () Bool)

(assert (=> b!3628630 m!4129719))

(assert (=> b!3628629 m!4129697))

(declare-fun m!4129721 () Bool)

(assert (=> b!3628629 m!4129721))

(assert (=> b!3628629 m!4129615))

(declare-fun m!4129723 () Bool)

(assert (=> b!3628629 m!4129723))

(assert (=> bm!262454 m!4129615))

(declare-fun m!4129725 () Bool)

(assert (=> bm!262454 m!4129725))

(assert (=> b!3628633 m!4129615))

(declare-fun m!4129727 () Bool)

(assert (=> b!3628633 m!4129727))

(assert (=> b!3628559 d!1067090))

(declare-fun d!1067096 () Bool)

(declare-fun list!14127 (Conc!11665) List!38360)

(assert (=> d!1067096 (= (list!14126 (charsOf!3716 token!511)) (list!14127 (c!627757 (charsOf!3716 token!511))))))

(declare-fun bs!571494 () Bool)

(assert (= bs!571494 d!1067096))

(declare-fun m!4129729 () Bool)

(assert (=> bs!571494 m!4129729))

(assert (=> b!3628559 d!1067096))

(declare-fun d!1067098 () Bool)

(declare-fun lt!1255139 () BalanceConc!22944)

(assert (=> d!1067098 (= (list!14126 lt!1255139) (originalCharacters!6416 token!511))))

(assert (=> d!1067098 (= lt!1255139 (dynLambda!16560 (toChars!7849 (transformation!5702 (rule!8472 token!511))) (value!182967 token!511)))))

(assert (=> d!1067098 (= (charsOf!3716 token!511) lt!1255139)))

(declare-fun b_lambda!107371 () Bool)

(assert (=> (not b_lambda!107371) (not d!1067098)))

(assert (=> d!1067098 t!294938))

(declare-fun b_and!266063 () Bool)

(assert (= b_and!266047 (and (=> t!294938 result!253818) b_and!266063)))

(assert (=> d!1067098 t!294940))

(declare-fun b_and!266065 () Bool)

(assert (= b_and!266049 (and (=> t!294940 result!253822) b_and!266065)))

(assert (=> d!1067098 t!294942))

(declare-fun b_and!266067 () Bool)

(assert (= b_and!266051 (and (=> t!294942 result!253824) b_and!266067)))

(assert (=> d!1067098 t!294944))

(declare-fun b_and!266069 () Bool)

(assert (= b_and!266053 (and (=> t!294944 result!253826) b_and!266069)))

(declare-fun m!4129731 () Bool)

(assert (=> d!1067098 m!4129731))

(assert (=> d!1067098 m!4129675))

(assert (=> b!3628559 d!1067098))

(declare-fun d!1067100 () Bool)

(assert (=> d!1067100 (= (inv!51645 (tag!6430 (rule!8472 token!511))) (= (mod (str.len (value!182966 (tag!6430 (rule!8472 token!511)))) 2) 0))))

(assert (=> b!3628560 d!1067100))

(declare-fun d!1067102 () Bool)

(declare-fun res!1469267 () Bool)

(declare-fun e!2246169 () Bool)

(assert (=> d!1067102 (=> (not res!1469267) (not e!2246169))))

(assert (=> d!1067102 (= res!1469267 (semiInverseModEq!2418 (toChars!7849 (transformation!5702 (rule!8472 token!511))) (toValue!7990 (transformation!5702 (rule!8472 token!511)))))))

(assert (=> d!1067102 (= (inv!51648 (transformation!5702 (rule!8472 token!511))) e!2246169)))

(declare-fun b!3628635 () Bool)

(assert (=> b!3628635 (= e!2246169 (equivClasses!2317 (toChars!7849 (transformation!5702 (rule!8472 token!511))) (toValue!7990 (transformation!5702 (rule!8472 token!511)))))))

(assert (= (and d!1067102 res!1469267) b!3628635))

(declare-fun m!4129733 () Bool)

(assert (=> d!1067102 m!4129733))

(declare-fun m!4129735 () Bool)

(assert (=> b!3628635 m!4129735))

(assert (=> b!3628560 d!1067102))

(declare-fun d!1067104 () Bool)

(assert (=> d!1067104 (= (isEmpty!22612 (_2!22188 lt!1255117)) ((_ is Nil!38236) (_2!22188 lt!1255117)))))

(assert (=> b!3628550 d!1067104))

(declare-fun d!1067106 () Bool)

(assert (=> d!1067106 true))

(declare-fun lt!1255166 () Bool)

(declare-fun lambda!124218 () Int)

(declare-fun forall!8152 (List!38361 Int) Bool)

(assert (=> d!1067106 (= lt!1255166 (forall!8152 rules!3307 lambda!124218))))

(declare-fun e!2246203 () Bool)

(assert (=> d!1067106 (= lt!1255166 e!2246203)))

(declare-fun res!1469312 () Bool)

(assert (=> d!1067106 (=> res!1469312 e!2246203)))

(assert (=> d!1067106 (= res!1469312 (not ((_ is Cons!38237) rules!3307)))))

(assert (=> d!1067106 (= (rulesValidInductive!2005 thiss!23823 rules!3307) lt!1255166)))

(declare-fun b!3628686 () Bool)

(declare-fun e!2246202 () Bool)

(assert (=> b!3628686 (= e!2246203 e!2246202)))

(declare-fun res!1469313 () Bool)

(assert (=> b!3628686 (=> (not res!1469313) (not e!2246202))))

(declare-fun ruleValid!1966 (LexerInterface!5291 Rule!11204) Bool)

(assert (=> b!3628686 (= res!1469313 (ruleValid!1966 thiss!23823 (h!43657 rules!3307)))))

(declare-fun b!3628687 () Bool)

(assert (=> b!3628687 (= e!2246202 (rulesValidInductive!2005 thiss!23823 (t!294936 rules!3307)))))

(assert (= (and d!1067106 (not res!1469312)) b!3628686))

(assert (= (and b!3628686 res!1469313) b!3628687))

(declare-fun m!4129795 () Bool)

(assert (=> d!1067106 m!4129795))

(declare-fun m!4129797 () Bool)

(assert (=> b!3628686 m!4129797))

(declare-fun m!4129799 () Bool)

(assert (=> b!3628687 m!4129799))

(assert (=> b!3628551 d!1067106))

(declare-fun d!1067132 () Bool)

(declare-fun res!1469316 () Bool)

(declare-fun e!2246206 () Bool)

(assert (=> d!1067132 (=> (not res!1469316) (not e!2246206))))

(declare-fun rulesValid!2175 (LexerInterface!5291 List!38361) Bool)

(assert (=> d!1067132 (= res!1469316 (rulesValid!2175 thiss!23823 rules!3307))))

(assert (=> d!1067132 (= (rulesInvariant!4688 thiss!23823 rules!3307) e!2246206)))

(declare-fun b!3628692 () Bool)

(declare-datatypes ((List!38362 0))(
  ( (Nil!38238) (Cons!38238 (h!43658 String!42994) (t!294957 List!38362)) )
))
(declare-fun noDuplicateTag!2171 (LexerInterface!5291 List!38361 List!38362) Bool)

(assert (=> b!3628692 (= e!2246206 (noDuplicateTag!2171 thiss!23823 rules!3307 Nil!38238))))

(assert (= (and d!1067132 res!1469316) b!3628692))

(declare-fun m!4129801 () Bool)

(assert (=> d!1067132 m!4129801))

(declare-fun m!4129803 () Bool)

(assert (=> b!3628692 m!4129803))

(assert (=> b!3628552 d!1067132))

(declare-fun d!1067134 () Bool)

(declare-fun lt!1255167 () Bool)

(assert (=> d!1067134 (= lt!1255167 (select (content!5478 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2246207 () Bool)

(assert (=> d!1067134 (= lt!1255167 e!2246207)))

(declare-fun res!1469317 () Bool)

(assert (=> d!1067134 (=> (not res!1469317) (not e!2246207))))

(assert (=> d!1067134 (= res!1469317 ((_ is Cons!38237) rules!3307))))

(assert (=> d!1067134 (= (contains!7468 rules!3307 anOtherTypeRule!33) lt!1255167)))

(declare-fun b!3628693 () Bool)

(declare-fun e!2246208 () Bool)

(assert (=> b!3628693 (= e!2246207 e!2246208)))

(declare-fun res!1469318 () Bool)

(assert (=> b!3628693 (=> res!1469318 e!2246208)))

(assert (=> b!3628693 (= res!1469318 (= (h!43657 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3628694 () Bool)

(assert (=> b!3628694 (= e!2246208 (contains!7468 (t!294936 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1067134 res!1469317) b!3628693))

(assert (= (and b!3628693 (not res!1469318)) b!3628694))

(assert (=> d!1067134 m!4129663))

(declare-fun m!4129805 () Bool)

(assert (=> d!1067134 m!4129805))

(declare-fun m!4129807 () Bool)

(assert (=> b!3628694 m!4129807))

(assert (=> b!3628541 d!1067134))

(declare-fun d!1067136 () Bool)

(assert (=> d!1067136 (= (isEmpty!22613 rules!3307) ((_ is Nil!38237) rules!3307))))

(assert (=> b!3628553 d!1067136))

(declare-fun d!1067138 () Bool)

(assert (=> d!1067138 (= (get!12494 lt!1255118) (v!37818 lt!1255118))))

(assert (=> b!3628554 d!1067138))

(declare-fun d!1067140 () Bool)

(assert (=> d!1067140 (= (inv!51645 (tag!6430 (h!43657 rules!3307))) (= (mod (str.len (value!182966 (tag!6430 (h!43657 rules!3307)))) 2) 0))))

(assert (=> b!3628543 d!1067140))

(declare-fun d!1067142 () Bool)

(declare-fun res!1469319 () Bool)

(declare-fun e!2246209 () Bool)

(assert (=> d!1067142 (=> (not res!1469319) (not e!2246209))))

(assert (=> d!1067142 (= res!1469319 (semiInverseModEq!2418 (toChars!7849 (transformation!5702 (h!43657 rules!3307))) (toValue!7990 (transformation!5702 (h!43657 rules!3307)))))))

(assert (=> d!1067142 (= (inv!51648 (transformation!5702 (h!43657 rules!3307))) e!2246209)))

(declare-fun b!3628695 () Bool)

(assert (=> b!3628695 (= e!2246209 (equivClasses!2317 (toChars!7849 (transformation!5702 (h!43657 rules!3307))) (toValue!7990 (transformation!5702 (h!43657 rules!3307)))))))

(assert (= (and d!1067142 res!1469319) b!3628695))

(declare-fun m!4129809 () Bool)

(assert (=> d!1067142 m!4129809))

(declare-fun m!4129811 () Bool)

(assert (=> b!3628695 m!4129811))

(assert (=> b!3628543 d!1067142))

(declare-fun b!3628707 () Bool)

(declare-fun e!2246212 () Bool)

(declare-fun tp!1107941 () Bool)

(declare-fun tp!1107937 () Bool)

(assert (=> b!3628707 (= e!2246212 (and tp!1107941 tp!1107937))))

(declare-fun b!3628706 () Bool)

(declare-fun tp_is_empty!18003 () Bool)

(assert (=> b!3628706 (= e!2246212 tp_is_empty!18003)))

(assert (=> b!3628560 (= tp!1107919 e!2246212)))

(declare-fun b!3628709 () Bool)

(declare-fun tp!1107938 () Bool)

(declare-fun tp!1107940 () Bool)

(assert (=> b!3628709 (= e!2246212 (and tp!1107938 tp!1107940))))

(declare-fun b!3628708 () Bool)

(declare-fun tp!1107939 () Bool)

(assert (=> b!3628708 (= e!2246212 tp!1107939)))

(assert (= (and b!3628560 ((_ is ElementMatch!10461) (regex!5702 (rule!8472 token!511)))) b!3628706))

(assert (= (and b!3628560 ((_ is Concat!16394) (regex!5702 (rule!8472 token!511)))) b!3628707))

(assert (= (and b!3628560 ((_ is Star!10461) (regex!5702 (rule!8472 token!511)))) b!3628708))

(assert (= (and b!3628560 ((_ is Union!10461) (regex!5702 (rule!8472 token!511)))) b!3628709))

(declare-fun b!3628711 () Bool)

(declare-fun e!2246213 () Bool)

(declare-fun tp!1107946 () Bool)

(declare-fun tp!1107942 () Bool)

(assert (=> b!3628711 (= e!2246213 (and tp!1107946 tp!1107942))))

(declare-fun b!3628710 () Bool)

(assert (=> b!3628710 (= e!2246213 tp_is_empty!18003)))

(assert (=> b!3628544 (= tp!1107912 e!2246213)))

(declare-fun b!3628713 () Bool)

(declare-fun tp!1107943 () Bool)

(declare-fun tp!1107945 () Bool)

(assert (=> b!3628713 (= e!2246213 (and tp!1107943 tp!1107945))))

(declare-fun b!3628712 () Bool)

(declare-fun tp!1107944 () Bool)

(assert (=> b!3628712 (= e!2246213 tp!1107944)))

(assert (= (and b!3628544 ((_ is ElementMatch!10461) (regex!5702 rule!403))) b!3628710))

(assert (= (and b!3628544 ((_ is Concat!16394) (regex!5702 rule!403))) b!3628711))

(assert (= (and b!3628544 ((_ is Star!10461) (regex!5702 rule!403))) b!3628712))

(assert (= (and b!3628544 ((_ is Union!10461) (regex!5702 rule!403))) b!3628713))

(declare-fun b!3628715 () Bool)

(declare-fun e!2246214 () Bool)

(declare-fun tp!1107951 () Bool)

(declare-fun tp!1107947 () Bool)

(assert (=> b!3628715 (= e!2246214 (and tp!1107951 tp!1107947))))

(declare-fun b!3628714 () Bool)

(assert (=> b!3628714 (= e!2246214 tp_is_empty!18003)))

(assert (=> b!3628545 (= tp!1107914 e!2246214)))

(declare-fun b!3628717 () Bool)

(declare-fun tp!1107948 () Bool)

(declare-fun tp!1107950 () Bool)

(assert (=> b!3628717 (= e!2246214 (and tp!1107948 tp!1107950))))

(declare-fun b!3628716 () Bool)

(declare-fun tp!1107949 () Bool)

(assert (=> b!3628716 (= e!2246214 tp!1107949)))

(assert (= (and b!3628545 ((_ is ElementMatch!10461) (regex!5702 anOtherTypeRule!33))) b!3628714))

(assert (= (and b!3628545 ((_ is Concat!16394) (regex!5702 anOtherTypeRule!33))) b!3628715))

(assert (= (and b!3628545 ((_ is Star!10461) (regex!5702 anOtherTypeRule!33))) b!3628716))

(assert (= (and b!3628545 ((_ is Union!10461) (regex!5702 anOtherTypeRule!33))) b!3628717))

(declare-fun b!3628722 () Bool)

(declare-fun e!2246217 () Bool)

(declare-fun tp!1107954 () Bool)

(assert (=> b!3628722 (= e!2246217 (and tp_is_empty!18003 tp!1107954))))

(assert (=> b!3628546 (= tp!1107920 e!2246217)))

(assert (= (and b!3628546 ((_ is Cons!38236) (originalCharacters!6416 token!511))) b!3628722))

(declare-fun b!3628733 () Bool)

(declare-fun b_free!94873 () Bool)

(declare-fun b_next!95577 () Bool)

(assert (=> b!3628733 (= b_free!94873 (not b_next!95577))))

(declare-fun tp!1107963 () Bool)

(declare-fun b_and!266079 () Bool)

(assert (=> b!3628733 (= tp!1107963 b_and!266079)))

(declare-fun b_free!94875 () Bool)

(declare-fun b_next!95579 () Bool)

(assert (=> b!3628733 (= b_free!94875 (not b_next!95579))))

(declare-fun t!294954 () Bool)

(declare-fun tb!208353 () Bool)

(assert (=> (and b!3628733 (= (toChars!7849 (transformation!5702 (h!43657 (t!294936 rules!3307)))) (toChars!7849 (transformation!5702 (rule!8472 token!511)))) t!294954) tb!208353))

(declare-fun result!253844 () Bool)

(assert (= result!253844 result!253818))

(assert (=> b!3628590 t!294954))

(assert (=> d!1067098 t!294954))

(declare-fun tp!1107964 () Bool)

(declare-fun b_and!266081 () Bool)

(assert (=> b!3628733 (= tp!1107964 (and (=> t!294954 result!253844) b_and!266081))))

(declare-fun e!2246229 () Bool)

(assert (=> b!3628733 (= e!2246229 (and tp!1107963 tp!1107964))))

(declare-fun tp!1107966 () Bool)

(declare-fun b!3628732 () Bool)

(declare-fun e!2246228 () Bool)

(assert (=> b!3628732 (= e!2246228 (and tp!1107966 (inv!51645 (tag!6430 (h!43657 (t!294936 rules!3307)))) (inv!51648 (transformation!5702 (h!43657 (t!294936 rules!3307)))) e!2246229))))

(declare-fun b!3628731 () Bool)

(declare-fun e!2246227 () Bool)

(declare-fun tp!1107965 () Bool)

(assert (=> b!3628731 (= e!2246227 (and e!2246228 tp!1107965))))

(assert (=> b!3628558 (= tp!1107907 e!2246227)))

(assert (= b!3628732 b!3628733))

(assert (= b!3628731 b!3628732))

(assert (= (and b!3628558 ((_ is Cons!38237) (t!294936 rules!3307))) b!3628731))

(declare-fun m!4129813 () Bool)

(assert (=> b!3628732 m!4129813))

(declare-fun m!4129815 () Bool)

(assert (=> b!3628732 m!4129815))

(declare-fun b!3628735 () Bool)

(declare-fun e!2246230 () Bool)

(declare-fun tp!1107971 () Bool)

(declare-fun tp!1107967 () Bool)

(assert (=> b!3628735 (= e!2246230 (and tp!1107971 tp!1107967))))

(declare-fun b!3628734 () Bool)

(assert (=> b!3628734 (= e!2246230 tp_is_empty!18003)))

(assert (=> b!3628543 (= tp!1107908 e!2246230)))

(declare-fun b!3628737 () Bool)

(declare-fun tp!1107968 () Bool)

(declare-fun tp!1107970 () Bool)

(assert (=> b!3628737 (= e!2246230 (and tp!1107968 tp!1107970))))

(declare-fun b!3628736 () Bool)

(declare-fun tp!1107969 () Bool)

(assert (=> b!3628736 (= e!2246230 tp!1107969)))

(assert (= (and b!3628543 ((_ is ElementMatch!10461) (regex!5702 (h!43657 rules!3307)))) b!3628734))

(assert (= (and b!3628543 ((_ is Concat!16394) (regex!5702 (h!43657 rules!3307)))) b!3628735))

(assert (= (and b!3628543 ((_ is Star!10461) (regex!5702 (h!43657 rules!3307)))) b!3628736))

(assert (= (and b!3628543 ((_ is Union!10461) (regex!5702 (h!43657 rules!3307)))) b!3628737))

(declare-fun b_lambda!107375 () Bool)

(assert (= b_lambda!107371 (or (and b!3628555 b_free!94871 (= (toChars!7849 (transformation!5702 anOtherTypeRule!33)) (toChars!7849 (transformation!5702 (rule!8472 token!511))))) (and b!3628549 b_free!94859 (= (toChars!7849 (transformation!5702 (h!43657 rules!3307))) (toChars!7849 (transformation!5702 (rule!8472 token!511))))) (and b!3628548 b_free!94863 (= (toChars!7849 (transformation!5702 rule!403)) (toChars!7849 (transformation!5702 (rule!8472 token!511))))) (and b!3628542 b_free!94867) (and b!3628733 b_free!94875 (= (toChars!7849 (transformation!5702 (h!43657 (t!294936 rules!3307)))) (toChars!7849 (transformation!5702 (rule!8472 token!511))))) b_lambda!107375)))

(declare-fun b_lambda!107377 () Bool)

(assert (= b_lambda!107367 (or (and b!3628555 b_free!94871 (= (toChars!7849 (transformation!5702 anOtherTypeRule!33)) (toChars!7849 (transformation!5702 (rule!8472 token!511))))) (and b!3628549 b_free!94859 (= (toChars!7849 (transformation!5702 (h!43657 rules!3307))) (toChars!7849 (transformation!5702 (rule!8472 token!511))))) (and b!3628548 b_free!94863 (= (toChars!7849 (transformation!5702 rule!403)) (toChars!7849 (transformation!5702 (rule!8472 token!511))))) (and b!3628542 b_free!94867) (and b!3628733 b_free!94875 (= (toChars!7849 (transformation!5702 (h!43657 (t!294936 rules!3307)))) (toChars!7849 (transformation!5702 (rule!8472 token!511))))) b_lambda!107377)))

(check-sat (not b!3628711) b_and!266039 (not d!1067074) (not b!3628709) b_and!266065 (not b!3628590) (not b!3628735) (not b!3628686) b_and!266035 (not b!3628732) (not b!3628716) (not b_next!95569) (not b!3628715) (not b!3628687) (not b!3628576) (not b!3628630) (not b_next!95579) (not d!1067082) (not b!3628707) (not b!3628736) (not b!3628563) (not b_next!95577) (not d!1067134) (not b!3628579) (not b!3628627) (not b_next!95575) b_and!266063 (not b!3628631) (not d!1067132) (not d!1067102) (not b!3628629) (not bm!262454) (not b!3628717) (not b_next!95563) (not b!3628628) (not b!3628632) (not b!3628695) b_and!266079 (not d!1067084) b_and!266067 (not b!3628722) (not b!3628596) tp_is_empty!18003 (not b_next!95573) (not d!1067096) (not b!3628694) (not d!1067106) (not b_lambda!107377) b_and!266043 (not b!3628591) (not b!3628692) (not b!3628585) (not b!3628634) (not b!3628731) (not d!1067078) (not b_next!95565) (not d!1067142) (not b!3628712) (not b!3628564) b_and!266031 (not d!1067090) (not b_lambda!107375) (not b!3628635) b_and!266081 (not b!3628575) (not b!3628737) (not b!3628708) (not b!3628713) (not b_next!95561) (not b_next!95571) b_and!266069 (not b!3628633) (not tb!208337) (not d!1067098) (not b_next!95567) (not d!1067088))
(check-sat b_and!266035 (not b_next!95569) b_and!266039 (not b_next!95579) (not b_next!95577) (not b_next!95575) b_and!266063 b_and!266065 (not b_next!95563) (not b_next!95573) b_and!266043 (not b_next!95565) b_and!266031 b_and!266081 (not b_next!95567) b_and!266079 b_and!266067 (not b_next!95561) (not b_next!95571) b_and!266069)
