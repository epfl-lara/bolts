; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!357392 () Bool)

(assert start!357392)

(declare-fun b!3817906 () Bool)

(declare-fun b_free!101501 () Bool)

(declare-fun b_next!102205 () Bool)

(assert (=> b!3817906 (= b_free!101501 (not b_next!102205))))

(declare-fun tp!1157319 () Bool)

(declare-fun b_and!283743 () Bool)

(assert (=> b!3817906 (= tp!1157319 b_and!283743)))

(declare-fun b_free!101503 () Bool)

(declare-fun b_next!102207 () Bool)

(assert (=> b!3817906 (= b_free!101503 (not b_next!102207))))

(declare-fun tp!1157315 () Bool)

(declare-fun b_and!283745 () Bool)

(assert (=> b!3817906 (= tp!1157315 b_and!283745)))

(declare-datatypes ((List!40516 0))(
  ( (Nil!40392) (Cons!40392 (h!45812 (_ BitVec 16)) (t!308161 List!40516)) )
))
(declare-datatypes ((TokenValue!6448 0))(
  ( (FloatLiteralValue!12896 (text!45581 List!40516)) (TokenValueExt!6447 (__x!25113 Int)) (Broken!32240 (value!197794 List!40516)) (Object!6571) (End!6448) (Def!6448) (Underscore!6448) (Match!6448) (Else!6448) (Error!6448) (Case!6448) (If!6448) (Extends!6448) (Abstract!6448) (Class!6448) (Val!6448) (DelimiterValue!12896 (del!6508 List!40516)) (KeywordValue!6454 (value!197795 List!40516)) (CommentValue!12896 (value!197796 List!40516)) (WhitespaceValue!12896 (value!197797 List!40516)) (IndentationValue!6448 (value!197798 List!40516)) (String!45921) (Int32!6448) (Broken!32241 (value!197799 List!40516)) (Boolean!6449) (Unit!58149) (OperatorValue!6451 (op!6508 List!40516)) (IdentifierValue!12896 (value!197800 List!40516)) (IdentifierValue!12897 (value!197801 List!40516)) (WhitespaceValue!12897 (value!197802 List!40516)) (True!12896) (False!12896) (Broken!32242 (value!197803 List!40516)) (Broken!32243 (value!197804 List!40516)) (True!12897) (RightBrace!6448) (RightBracket!6448) (Colon!6448) (Null!6448) (Comma!6448) (LeftBracket!6448) (False!12897) (LeftBrace!6448) (ImaginaryLiteralValue!6448 (text!45582 List!40516)) (StringLiteralValue!19344 (value!197805 List!40516)) (EOFValue!6448 (value!197806 List!40516)) (IdentValue!6448 (value!197807 List!40516)) (DelimiterValue!12897 (value!197808 List!40516)) (DedentValue!6448 (value!197809 List!40516)) (NewLineValue!6448 (value!197810 List!40516)) (IntegerValue!19344 (value!197811 (_ BitVec 32)) (text!45583 List!40516)) (IntegerValue!19345 (value!197812 Int) (text!45584 List!40516)) (Times!6448) (Or!6448) (Equal!6448) (Minus!6448) (Broken!32244 (value!197813 List!40516)) (And!6448) (Div!6448) (LessEqual!6448) (Mod!6448) (Concat!17571) (Not!6448) (Plus!6448) (SpaceValue!6448 (value!197814 List!40516)) (IntegerValue!19346 (value!197815 Int) (text!45585 List!40516)) (StringLiteralValue!19345 (text!45586 List!40516)) (FloatLiteralValue!12897 (text!45587 List!40516)) (BytesLiteralValue!6448 (value!197816 List!40516)) (CommentValue!12897 (value!197817 List!40516)) (StringLiteralValue!19346 (value!197818 List!40516)) (ErrorTokenValue!6448 (msg!6509 List!40516)) )
))
(declare-datatypes ((C!22432 0))(
  ( (C!22433 (val!13292 Int)) )
))
(declare-datatypes ((Regex!11123 0))(
  ( (ElementMatch!11123 (c!664957 C!22432)) (Concat!17572 (regOne!22758 Regex!11123) (regTwo!22758 Regex!11123)) (EmptyExpr!11123) (Star!11123 (reg!11452 Regex!11123)) (EmptyLang!11123) (Union!11123 (regOne!22759 Regex!11123) (regTwo!22759 Regex!11123)) )
))
(declare-datatypes ((String!45922 0))(
  ( (String!45923 (value!197819 String)) )
))
(declare-datatypes ((List!40517 0))(
  ( (Nil!40393) (Cons!40393 (h!45813 C!22432) (t!308162 List!40517)) )
))
(declare-datatypes ((IArray!24825 0))(
  ( (IArray!24826 (innerList!12470 List!40517)) )
))
(declare-datatypes ((Conc!12410 0))(
  ( (Node!12410 (left!31256 Conc!12410) (right!31586 Conc!12410) (csize!25050 Int) (cheight!12621 Int)) (Leaf!19217 (xs!15692 IArray!24825) (csize!25051 Int)) (Empty!12410) )
))
(declare-datatypes ((BalanceConc!24414 0))(
  ( (BalanceConc!24415 (c!664958 Conc!12410)) )
))
(declare-datatypes ((TokenValueInjection!12324 0))(
  ( (TokenValueInjection!12325 (toValue!8614 Int) (toChars!8473 Int)) )
))
(declare-datatypes ((Rule!12236 0))(
  ( (Rule!12237 (regex!6218 Regex!11123) (tag!7078 String!45922) (isSeparator!6218 Bool) (transformation!6218 TokenValueInjection!12324)) )
))
(declare-datatypes ((List!40518 0))(
  ( (Nil!40394) (Cons!40394 (h!45814 Rule!12236) (t!308163 List!40518)) )
))
(declare-fun rules!1265 () List!40518)

(declare-fun e!2358419 () Bool)

(declare-fun e!2358417 () Bool)

(declare-fun tp!1157318 () Bool)

(declare-fun b!3817891 () Bool)

(declare-fun inv!54401 (String!45922) Bool)

(declare-fun inv!54407 (TokenValueInjection!12324) Bool)

(assert (=> b!3817891 (= e!2358419 (and tp!1157318 (inv!54401 (tag!7078 (h!45814 rules!1265))) (inv!54407 (transformation!6218 (h!45814 rules!1265))) e!2358417))))

(declare-fun b!3817892 () Bool)

(declare-fun e!2358414 () Bool)

(declare-fun e!2358408 () Bool)

(assert (=> b!3817892 (= e!2358414 e!2358408)))

(declare-fun res!1545546 () Bool)

(assert (=> b!3817892 (=> res!1545546 e!2358408)))

(declare-datatypes ((Token!11574 0))(
  ( (Token!11575 (value!197820 TokenValue!6448) (rule!9034 Rule!12236) (size!30430 Int) (originalCharacters!6818 List!40517)) )
))
(declare-datatypes ((List!40519 0))(
  ( (Nil!40395) (Cons!40395 (h!45815 Token!11574) (t!308164 List!40519)) )
))
(declare-fun lt!1324697 () List!40519)

(declare-fun isEmpty!23816 (List!40519) Bool)

(assert (=> b!3817892 (= res!1545546 (isEmpty!23816 lt!1324697))))

(declare-fun lt!1324710 () List!40517)

(declare-datatypes ((IArray!24827 0))(
  ( (IArray!24828 (innerList!12471 List!40519)) )
))
(declare-datatypes ((Conc!12411 0))(
  ( (Node!12411 (left!31257 Conc!12411) (right!31587 Conc!12411) (csize!25052 Int) (cheight!12622 Int)) (Leaf!19218 (xs!15693 IArray!24827) (csize!25053 Int)) (Empty!12411) )
))
(declare-datatypes ((BalanceConc!24416 0))(
  ( (BalanceConc!24417 (c!664959 Conc!12411)) )
))
(declare-datatypes ((tuple2!39568 0))(
  ( (tuple2!39569 (_1!22918 BalanceConc!24416) (_2!22918 BalanceConc!24414)) )
))
(declare-fun lt!1324709 () tuple2!39568)

(declare-fun list!15027 (BalanceConc!24414) List!40517)

(assert (=> b!3817892 (= lt!1324710 (list!15027 (_2!22918 lt!1324709)))))

(declare-fun acc!335 () BalanceConc!24416)

(declare-datatypes ((tuple2!39570 0))(
  ( (tuple2!39571 (_1!22919 Token!11574) (_2!22919 BalanceConc!24414)) )
))
(declare-datatypes ((Option!8636 0))(
  ( (None!8635) (Some!8635 (v!38891 tuple2!39570)) )
))
(declare-fun lt!1324705 () Option!8636)

(declare-fun list!15028 (BalanceConc!24416) List!40519)

(declare-fun append!1078 (BalanceConc!24416 Token!11574) BalanceConc!24416)

(assert (=> b!3817892 (= lt!1324697 (list!15028 (append!1078 acc!335 (_1!22919 (v!38891 lt!1324705)))))))

(declare-fun lt!1324693 () List!40519)

(declare-fun lt!1324711 () List!40519)

(declare-fun lt!1324704 () List!40519)

(declare-fun ++!10156 (List!40519 List!40519) List!40519)

(assert (=> b!3817892 (= (++!10156 (++!10156 lt!1324693 lt!1324711) lt!1324704) (++!10156 lt!1324693 (++!10156 lt!1324711 lt!1324704)))))

(declare-datatypes ((Unit!58150 0))(
  ( (Unit!58151) )
))
(declare-fun lt!1324695 () Unit!58150)

(declare-fun lemmaConcatAssociativity!2193 (List!40519 List!40519 List!40519) Unit!58150)

(assert (=> b!3817892 (= lt!1324695 (lemmaConcatAssociativity!2193 lt!1324693 lt!1324711 lt!1324704))))

(assert (=> b!3817892 (= lt!1324704 (list!15028 (_1!22918 lt!1324709)))))

(assert (=> b!3817892 (= lt!1324711 (Cons!40395 (_1!22919 (v!38891 lt!1324705)) Nil!40395))))

(declare-fun lt!1324698 () tuple2!39568)

(declare-fun e!2358415 () tuple2!39568)

(assert (=> b!3817892 (= lt!1324698 e!2358415)))

(declare-fun c!664956 () Bool)

(declare-fun lt!1324688 () Option!8636)

(get-info :version)

(assert (=> b!3817892 (= c!664956 ((_ is Some!8635) lt!1324688))))

(declare-fun input!678 () BalanceConc!24414)

(declare-datatypes ((LexerInterface!5807 0))(
  ( (LexerInterfaceExt!5804 (__x!25114 Int)) (Lexer!5805) )
))
(declare-fun thiss!11876 () LexerInterface!5807)

(declare-fun maxPrefixZipperSequence!1213 (LexerInterface!5807 List!40518 BalanceConc!24414) Option!8636)

(assert (=> b!3817892 (= lt!1324688 (maxPrefixZipperSequence!1213 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1324690 () List!40517)

(declare-fun lt!1324694 () List!40517)

(declare-fun lt!1324708 () List!40517)

(declare-fun ++!10157 (List!40517 List!40517) List!40517)

(assert (=> b!3817892 (= lt!1324690 (++!10157 lt!1324694 lt!1324708))))

(declare-fun lt!1324702 () List!40517)

(declare-fun lt!1324696 () List!40517)

(assert (=> b!3817892 (= lt!1324690 (++!10157 lt!1324702 lt!1324696))))

(declare-fun lt!1324691 () List!40517)

(assert (=> b!3817892 (= lt!1324708 (++!10157 lt!1324691 lt!1324696))))

(assert (=> b!3817892 (= lt!1324702 (++!10157 lt!1324694 lt!1324691))))

(declare-fun lt!1324700 () Unit!58150)

(declare-fun lemmaConcatAssociativity!2194 (List!40517 List!40517 List!40517) Unit!58150)

(assert (=> b!3817892 (= lt!1324700 (lemmaConcatAssociativity!2194 lt!1324694 lt!1324691 lt!1324696))))

(assert (=> b!3817892 (= lt!1324696 (list!15027 (_2!22919 (v!38891 lt!1324705))))))

(declare-fun charsOf!4056 (Token!11574) BalanceConc!24414)

(assert (=> b!3817892 (= lt!1324691 (list!15027 (charsOf!4056 (_1!22919 (v!38891 lt!1324705)))))))

(declare-fun lexRec!831 (LexerInterface!5807 List!40518 BalanceConc!24414) tuple2!39568)

(assert (=> b!3817892 (= lt!1324709 (lexRec!831 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324705))))))

(declare-fun b!3817893 () Bool)

(declare-fun e!2358416 () Bool)

(declare-fun e!2358405 () Bool)

(assert (=> b!3817893 (= e!2358416 e!2358405)))

(declare-fun res!1545539 () Bool)

(assert (=> b!3817893 (=> (not res!1545539) (not e!2358405))))

(declare-fun lt!1324701 () List!40519)

(assert (=> b!3817893 (= res!1545539 (= lt!1324701 lt!1324693))))

(assert (=> b!3817893 (= lt!1324693 (list!15028 acc!335))))

(declare-fun lt!1324703 () tuple2!39568)

(assert (=> b!3817893 (= lt!1324701 (list!15028 (_1!22918 lt!1324703)))))

(declare-fun treated!13 () BalanceConc!24414)

(assert (=> b!3817893 (= lt!1324703 (lexRec!831 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3817894 () Bool)

(declare-fun res!1545545 () Bool)

(assert (=> b!3817894 (=> res!1545545 e!2358408)))

(declare-datatypes ((tuple2!39572 0))(
  ( (tuple2!39573 (_1!22920 List!40519) (_2!22920 List!40517)) )
))
(declare-fun lexList!1577 (LexerInterface!5807 List!40518 List!40517) tuple2!39572)

(assert (=> b!3817894 (= res!1545545 (not (= (lexList!1577 thiss!11876 rules!1265 lt!1324690) (tuple2!39573 (++!10156 lt!1324697 lt!1324704) lt!1324710))))))

(declare-fun b!3817895 () Bool)

(declare-fun e!2358411 () Bool)

(declare-fun e!2358413 () Bool)

(assert (=> b!3817895 (= e!2358411 (not e!2358413))))

(declare-fun res!1545544 () Bool)

(assert (=> b!3817895 (=> res!1545544 e!2358413)))

(declare-fun lt!1324687 () List!40517)

(declare-fun lt!1324707 () List!40517)

(declare-fun isSuffix!990 (List!40517 List!40517) Bool)

(assert (=> b!3817895 (= res!1545544 (not (isSuffix!990 lt!1324687 lt!1324707)))))

(declare-fun lt!1324699 () List!40517)

(assert (=> b!3817895 (isSuffix!990 lt!1324687 lt!1324699)))

(declare-fun lt!1324689 () Unit!58150)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!675 (List!40517 List!40517) Unit!58150)

(assert (=> b!3817895 (= lt!1324689 (lemmaConcatTwoListThenFSndIsSuffix!675 lt!1324694 lt!1324687))))

(declare-fun b!3817896 () Bool)

(declare-fun e!2358406 () Bool)

(declare-fun tp!1157313 () Bool)

(declare-fun inv!54408 (Conc!12410) Bool)

(assert (=> b!3817896 (= e!2358406 (and (inv!54408 (c!664958 input!678)) tp!1157313))))

(declare-fun b!3817897 () Bool)

(declare-fun lt!1324692 () tuple2!39568)

(declare-fun prepend!1368 (BalanceConc!24416 Token!11574) BalanceConc!24416)

(assert (=> b!3817897 (= e!2358415 (tuple2!39569 (prepend!1368 (_1!22918 lt!1324692) (_1!22919 (v!38891 lt!1324688))) (_2!22918 lt!1324692)))))

(assert (=> b!3817897 (= lt!1324692 (lexRec!831 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324688))))))

(declare-fun b!3817898 () Bool)

(assert (=> b!3817898 (= e!2358405 e!2358411)))

(declare-fun res!1545549 () Bool)

(assert (=> b!3817898 (=> (not res!1545549) (not e!2358411))))

(declare-fun lt!1324706 () tuple2!39568)

(declare-fun ++!10158 (BalanceConc!24416 BalanceConc!24416) BalanceConc!24416)

(assert (=> b!3817898 (= res!1545549 (= (list!15028 (_1!22918 lt!1324706)) (list!15028 (++!10158 acc!335 (_1!22918 lt!1324698)))))))

(assert (=> b!3817898 (= lt!1324698 (lexRec!831 thiss!11876 rules!1265 input!678))))

(declare-fun totalInput!335 () BalanceConc!24414)

(assert (=> b!3817898 (= lt!1324706 (lexRec!831 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3817899 () Bool)

(declare-fun e!2358418 () Bool)

(assert (=> b!3817899 (= e!2358418 e!2358416)))

(declare-fun res!1545537 () Bool)

(assert (=> b!3817899 (=> (not res!1545537) (not e!2358416))))

(assert (=> b!3817899 (= res!1545537 (= lt!1324707 lt!1324699))))

(assert (=> b!3817899 (= lt!1324699 (++!10157 lt!1324694 lt!1324687))))

(assert (=> b!3817899 (= lt!1324707 (list!15027 totalInput!335))))

(assert (=> b!3817899 (= lt!1324687 (list!15027 input!678))))

(assert (=> b!3817899 (= lt!1324694 (list!15027 treated!13))))

(declare-fun b!3817900 () Bool)

(declare-fun res!1545541 () Bool)

(assert (=> b!3817900 (=> (not res!1545541) (not e!2358418))))

(declare-fun isEmpty!23817 (List!40518) Bool)

(assert (=> b!3817900 (= res!1545541 (not (isEmpty!23817 rules!1265)))))

(declare-fun res!1545547 () Bool)

(assert (=> start!357392 (=> (not res!1545547) (not e!2358418))))

(assert (=> start!357392 (= res!1545547 ((_ is Lexer!5805) thiss!11876))))

(assert (=> start!357392 e!2358418))

(declare-fun inv!54409 (BalanceConc!24414) Bool)

(assert (=> start!357392 (and (inv!54409 input!678) e!2358406)))

(declare-fun e!2358409 () Bool)

(declare-fun inv!54410 (BalanceConc!24416) Bool)

(assert (=> start!357392 (and (inv!54410 acc!335) e!2358409)))

(declare-fun e!2358412 () Bool)

(assert (=> start!357392 (and (inv!54409 treated!13) e!2358412)))

(declare-fun e!2358420 () Bool)

(assert (=> start!357392 e!2358420))

(assert (=> start!357392 true))

(declare-fun e!2358410 () Bool)

(assert (=> start!357392 (and (inv!54409 totalInput!335) e!2358410)))

(declare-fun b!3817901 () Bool)

(declare-fun tp!1157316 () Bool)

(declare-fun inv!54411 (Conc!12411) Bool)

(assert (=> b!3817901 (= e!2358409 (and (inv!54411 (c!664959 acc!335)) tp!1157316))))

(declare-fun b!3817902 () Bool)

(declare-fun tp!1157317 () Bool)

(assert (=> b!3817902 (= e!2358420 (and e!2358419 tp!1157317))))

(declare-fun b!3817903 () Bool)

(assert (=> b!3817903 (= e!2358413 e!2358414)))

(declare-fun res!1545543 () Bool)

(assert (=> b!3817903 (=> res!1545543 e!2358414)))

(assert (=> b!3817903 (= res!1545543 (not ((_ is Some!8635) lt!1324705)))))

(declare-fun maxPrefixZipperSequenceV2!607 (LexerInterface!5807 List!40518 BalanceConc!24414 BalanceConc!24414) Option!8636)

(assert (=> b!3817903 (= lt!1324705 (maxPrefixZipperSequenceV2!607 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun b!3817904 () Bool)

(declare-fun res!1545538 () Bool)

(assert (=> b!3817904 (=> (not res!1545538) (not e!2358411))))

(assert (=> b!3817904 (= res!1545538 (= (list!15027 (_2!22918 lt!1324706)) (list!15027 (_2!22918 lt!1324698))))))

(declare-fun b!3817905 () Bool)

(declare-fun res!1545542 () Bool)

(assert (=> b!3817905 (=> (not res!1545542) (not e!2358405))))

(declare-fun isEmpty!23818 (List!40517) Bool)

(assert (=> b!3817905 (= res!1545542 (isEmpty!23818 (list!15027 (_2!22918 lt!1324703))))))

(assert (=> b!3817906 (= e!2358417 (and tp!1157319 tp!1157315))))

(declare-fun b!3817907 () Bool)

(declare-fun res!1545548 () Bool)

(assert (=> b!3817907 (=> (not res!1545548) (not e!2358418))))

(declare-fun rulesInvariant!5150 (LexerInterface!5807 List!40518) Bool)

(assert (=> b!3817907 (= res!1545548 (rulesInvariant!5150 thiss!11876 rules!1265))))

(declare-fun b!3817908 () Bool)

(declare-fun tp!1157320 () Bool)

(assert (=> b!3817908 (= e!2358412 (and (inv!54408 (c!664958 treated!13)) tp!1157320))))

(declare-fun b!3817909 () Bool)

(declare-fun res!1545540 () Bool)

(assert (=> b!3817909 (=> res!1545540 e!2358408)))

(assert (=> b!3817909 (= res!1545540 (isEmpty!23818 lt!1324702))))

(declare-fun b!3817910 () Bool)

(assert (=> b!3817910 (= e!2358408 (= (lexList!1577 thiss!11876 rules!1265 lt!1324696) (tuple2!39573 lt!1324704 lt!1324710)))))

(declare-fun b!3817911 () Bool)

(declare-fun tp!1157314 () Bool)

(assert (=> b!3817911 (= e!2358410 (and (inv!54408 (c!664958 totalInput!335)) tp!1157314))))

(declare-fun b!3817912 () Bool)

(assert (=> b!3817912 (= e!2358415 (tuple2!39569 (BalanceConc!24417 Empty!12411) input!678))))

(assert (= (and start!357392 res!1545547) b!3817900))

(assert (= (and b!3817900 res!1545541) b!3817907))

(assert (= (and b!3817907 res!1545548) b!3817899))

(assert (= (and b!3817899 res!1545537) b!3817893))

(assert (= (and b!3817893 res!1545539) b!3817905))

(assert (= (and b!3817905 res!1545542) b!3817898))

(assert (= (and b!3817898 res!1545549) b!3817904))

(assert (= (and b!3817904 res!1545538) b!3817895))

(assert (= (and b!3817895 (not res!1545544)) b!3817903))

(assert (= (and b!3817903 (not res!1545543)) b!3817892))

(assert (= (and b!3817892 c!664956) b!3817897))

(assert (= (and b!3817892 (not c!664956)) b!3817912))

(assert (= (and b!3817892 (not res!1545546)) b!3817909))

(assert (= (and b!3817909 (not res!1545540)) b!3817894))

(assert (= (and b!3817894 (not res!1545545)) b!3817910))

(assert (= start!357392 b!3817896))

(assert (= start!357392 b!3817901))

(assert (= start!357392 b!3817908))

(assert (= b!3817891 b!3817906))

(assert (= b!3817902 b!3817891))

(assert (= (and start!357392 ((_ is Cons!40394) rules!1265)) b!3817902))

(assert (= start!357392 b!3817911))

(declare-fun m!4361239 () Bool)

(assert (=> b!3817907 m!4361239))

(declare-fun m!4361241 () Bool)

(assert (=> start!357392 m!4361241))

(declare-fun m!4361243 () Bool)

(assert (=> start!357392 m!4361243))

(declare-fun m!4361245 () Bool)

(assert (=> start!357392 m!4361245))

(declare-fun m!4361247 () Bool)

(assert (=> start!357392 m!4361247))

(declare-fun m!4361249 () Bool)

(assert (=> b!3817904 m!4361249))

(declare-fun m!4361251 () Bool)

(assert (=> b!3817904 m!4361251))

(declare-fun m!4361253 () Bool)

(assert (=> b!3817896 m!4361253))

(declare-fun m!4361255 () Bool)

(assert (=> b!3817895 m!4361255))

(declare-fun m!4361257 () Bool)

(assert (=> b!3817895 m!4361257))

(declare-fun m!4361259 () Bool)

(assert (=> b!3817895 m!4361259))

(declare-fun m!4361261 () Bool)

(assert (=> b!3817897 m!4361261))

(declare-fun m!4361263 () Bool)

(assert (=> b!3817897 m!4361263))

(declare-fun m!4361265 () Bool)

(assert (=> b!3817903 m!4361265))

(declare-fun m!4361267 () Bool)

(assert (=> b!3817894 m!4361267))

(declare-fun m!4361269 () Bool)

(assert (=> b!3817894 m!4361269))

(declare-fun m!4361271 () Bool)

(assert (=> b!3817892 m!4361271))

(declare-fun m!4361273 () Bool)

(assert (=> b!3817892 m!4361273))

(declare-fun m!4361275 () Bool)

(assert (=> b!3817892 m!4361275))

(declare-fun m!4361277 () Bool)

(assert (=> b!3817892 m!4361277))

(declare-fun m!4361279 () Bool)

(assert (=> b!3817892 m!4361279))

(declare-fun m!4361281 () Bool)

(assert (=> b!3817892 m!4361281))

(assert (=> b!3817892 m!4361273))

(declare-fun m!4361283 () Bool)

(assert (=> b!3817892 m!4361283))

(declare-fun m!4361285 () Bool)

(assert (=> b!3817892 m!4361285))

(declare-fun m!4361287 () Bool)

(assert (=> b!3817892 m!4361287))

(assert (=> b!3817892 m!4361277))

(declare-fun m!4361289 () Bool)

(assert (=> b!3817892 m!4361289))

(declare-fun m!4361291 () Bool)

(assert (=> b!3817892 m!4361291))

(declare-fun m!4361293 () Bool)

(assert (=> b!3817892 m!4361293))

(declare-fun m!4361295 () Bool)

(assert (=> b!3817892 m!4361295))

(declare-fun m!4361297 () Bool)

(assert (=> b!3817892 m!4361297))

(declare-fun m!4361299 () Bool)

(assert (=> b!3817892 m!4361299))

(declare-fun m!4361301 () Bool)

(assert (=> b!3817892 m!4361301))

(declare-fun m!4361303 () Bool)

(assert (=> b!3817892 m!4361303))

(assert (=> b!3817892 m!4361291))

(declare-fun m!4361305 () Bool)

(assert (=> b!3817892 m!4361305))

(assert (=> b!3817892 m!4361299))

(declare-fun m!4361307 () Bool)

(assert (=> b!3817892 m!4361307))

(declare-fun m!4361309 () Bool)

(assert (=> b!3817892 m!4361309))

(declare-fun m!4361311 () Bool)

(assert (=> b!3817893 m!4361311))

(declare-fun m!4361313 () Bool)

(assert (=> b!3817893 m!4361313))

(declare-fun m!4361315 () Bool)

(assert (=> b!3817893 m!4361315))

(declare-fun m!4361317 () Bool)

(assert (=> b!3817899 m!4361317))

(declare-fun m!4361319 () Bool)

(assert (=> b!3817899 m!4361319))

(declare-fun m!4361321 () Bool)

(assert (=> b!3817899 m!4361321))

(declare-fun m!4361323 () Bool)

(assert (=> b!3817899 m!4361323))

(declare-fun m!4361325 () Bool)

(assert (=> b!3817901 m!4361325))

(declare-fun m!4361327 () Bool)

(assert (=> b!3817898 m!4361327))

(declare-fun m!4361329 () Bool)

(assert (=> b!3817898 m!4361329))

(assert (=> b!3817898 m!4361327))

(declare-fun m!4361331 () Bool)

(assert (=> b!3817898 m!4361331))

(declare-fun m!4361333 () Bool)

(assert (=> b!3817898 m!4361333))

(declare-fun m!4361335 () Bool)

(assert (=> b!3817898 m!4361335))

(declare-fun m!4361337 () Bool)

(assert (=> b!3817909 m!4361337))

(declare-fun m!4361339 () Bool)

(assert (=> b!3817910 m!4361339))

(declare-fun m!4361341 () Bool)

(assert (=> b!3817908 m!4361341))

(declare-fun m!4361343 () Bool)

(assert (=> b!3817905 m!4361343))

(assert (=> b!3817905 m!4361343))

(declare-fun m!4361345 () Bool)

(assert (=> b!3817905 m!4361345))

(declare-fun m!4361347 () Bool)

(assert (=> b!3817891 m!4361347))

(declare-fun m!4361349 () Bool)

(assert (=> b!3817891 m!4361349))

(declare-fun m!4361351 () Bool)

(assert (=> b!3817911 m!4361351))

(declare-fun m!4361353 () Bool)

(assert (=> b!3817900 m!4361353))

(check-sat (not b!3817909) (not b!3817901) (not b!3817908) b_and!283745 (not b!3817902) (not b!3817899) (not b!3817900) (not b!3817904) (not b_next!102205) (not b!3817893) (not b!3817903) (not b!3817896) (not b!3817894) b_and!283743 (not b_next!102207) (not b!3817907) (not b!3817892) (not b!3817891) (not b!3817897) (not b!3817905) (not b!3817898) (not b!3817911) (not b!3817910) (not start!357392) (not b!3817895))
(check-sat b_and!283743 b_and!283745 (not b_next!102205) (not b_next!102207))
(get-model)

(declare-fun d!1130085 () Bool)

(declare-fun c!664962 () Bool)

(assert (=> d!1130085 (= c!664962 ((_ is Node!12411) (c!664959 acc!335)))))

(declare-fun e!2358425 () Bool)

(assert (=> d!1130085 (= (inv!54411 (c!664959 acc!335)) e!2358425)))

(declare-fun b!3817919 () Bool)

(declare-fun inv!54416 (Conc!12411) Bool)

(assert (=> b!3817919 (= e!2358425 (inv!54416 (c!664959 acc!335)))))

(declare-fun b!3817920 () Bool)

(declare-fun e!2358426 () Bool)

(assert (=> b!3817920 (= e!2358425 e!2358426)))

(declare-fun res!1545554 () Bool)

(assert (=> b!3817920 (= res!1545554 (not ((_ is Leaf!19218) (c!664959 acc!335))))))

(assert (=> b!3817920 (=> res!1545554 e!2358426)))

(declare-fun b!3817921 () Bool)

(declare-fun inv!54417 (Conc!12411) Bool)

(assert (=> b!3817921 (= e!2358426 (inv!54417 (c!664959 acc!335)))))

(assert (= (and d!1130085 c!664962) b!3817919))

(assert (= (and d!1130085 (not c!664962)) b!3817920))

(assert (= (and b!3817920 (not res!1545554)) b!3817921))

(declare-fun m!4361355 () Bool)

(assert (=> b!3817919 m!4361355))

(declare-fun m!4361357 () Bool)

(assert (=> b!3817921 m!4361357))

(assert (=> b!3817901 d!1130085))

(declare-fun d!1130087 () Bool)

(assert (=> d!1130087 (= (inv!54401 (tag!7078 (h!45814 rules!1265))) (= (mod (str.len (value!197819 (tag!7078 (h!45814 rules!1265)))) 2) 0))))

(assert (=> b!3817891 d!1130087))

(declare-fun d!1130089 () Bool)

(declare-fun res!1545557 () Bool)

(declare-fun e!2358429 () Bool)

(assert (=> d!1130089 (=> (not res!1545557) (not e!2358429))))

(declare-fun semiInverseModEq!2664 (Int Int) Bool)

(assert (=> d!1130089 (= res!1545557 (semiInverseModEq!2664 (toChars!8473 (transformation!6218 (h!45814 rules!1265))) (toValue!8614 (transformation!6218 (h!45814 rules!1265)))))))

(assert (=> d!1130089 (= (inv!54407 (transformation!6218 (h!45814 rules!1265))) e!2358429)))

(declare-fun b!3817924 () Bool)

(declare-fun equivClasses!2563 (Int Int) Bool)

(assert (=> b!3817924 (= e!2358429 (equivClasses!2563 (toChars!8473 (transformation!6218 (h!45814 rules!1265))) (toValue!8614 (transformation!6218 (h!45814 rules!1265)))))))

(assert (= (and d!1130089 res!1545557) b!3817924))

(declare-fun m!4361359 () Bool)

(assert (=> d!1130089 m!4361359))

(declare-fun m!4361361 () Bool)

(assert (=> b!3817924 m!4361361))

(assert (=> b!3817891 d!1130089))

(declare-fun b!3817944 () Bool)

(declare-fun e!2358444 () Bool)

(declare-fun lt!1324718 () tuple2!39572)

(assert (=> b!3817944 (= e!2358444 (= (_2!22920 lt!1324718) lt!1324696))))

(declare-fun d!1130091 () Bool)

(assert (=> d!1130091 e!2358444))

(declare-fun c!664971 () Bool)

(declare-fun size!30434 (List!40519) Int)

(assert (=> d!1130091 (= c!664971 (> (size!30434 (_1!22920 lt!1324718)) 0))))

(declare-fun e!2358443 () tuple2!39572)

(assert (=> d!1130091 (= lt!1324718 e!2358443)))

(declare-fun c!664970 () Bool)

(declare-datatypes ((tuple2!39574 0))(
  ( (tuple2!39575 (_1!22921 Token!11574) (_2!22921 List!40517)) )
))
(declare-datatypes ((Option!8637 0))(
  ( (None!8636) (Some!8636 (v!38896 tuple2!39574)) )
))
(declare-fun lt!1324720 () Option!8637)

(assert (=> d!1130091 (= c!664970 ((_ is Some!8636) lt!1324720))))

(declare-fun maxPrefix!3118 (LexerInterface!5807 List!40518 List!40517) Option!8637)

(assert (=> d!1130091 (= lt!1324720 (maxPrefix!3118 thiss!11876 rules!1265 lt!1324696))))

(assert (=> d!1130091 (= (lexList!1577 thiss!11876 rules!1265 lt!1324696) lt!1324718)))

(declare-fun b!3817945 () Bool)

(declare-fun lt!1324719 () tuple2!39572)

(assert (=> b!3817945 (= e!2358443 (tuple2!39573 (Cons!40395 (_1!22921 (v!38896 lt!1324720)) (_1!22920 lt!1324719)) (_2!22920 lt!1324719)))))

(assert (=> b!3817945 (= lt!1324719 (lexList!1577 thiss!11876 rules!1265 (_2!22921 (v!38896 lt!1324720))))))

(declare-fun b!3817946 () Bool)

(declare-fun e!2358442 () Bool)

(assert (=> b!3817946 (= e!2358442 (not (isEmpty!23816 (_1!22920 lt!1324718))))))

(declare-fun b!3817947 () Bool)

(assert (=> b!3817947 (= e!2358444 e!2358442)))

(declare-fun res!1545565 () Bool)

(declare-fun size!30435 (List!40517) Int)

(assert (=> b!3817947 (= res!1545565 (< (size!30435 (_2!22920 lt!1324718)) (size!30435 lt!1324696)))))

(assert (=> b!3817947 (=> (not res!1545565) (not e!2358442))))

(declare-fun b!3817948 () Bool)

(assert (=> b!3817948 (= e!2358443 (tuple2!39573 Nil!40395 lt!1324696))))

(assert (= (and d!1130091 c!664970) b!3817945))

(assert (= (and d!1130091 (not c!664970)) b!3817948))

(assert (= (and d!1130091 c!664971) b!3817947))

(assert (= (and d!1130091 (not c!664971)) b!3817944))

(assert (= (and b!3817947 res!1545565) b!3817946))

(declare-fun m!4361373 () Bool)

(assert (=> d!1130091 m!4361373))

(declare-fun m!4361375 () Bool)

(assert (=> d!1130091 m!4361375))

(declare-fun m!4361377 () Bool)

(assert (=> b!3817945 m!4361377))

(declare-fun m!4361379 () Bool)

(assert (=> b!3817946 m!4361379))

(declare-fun m!4361381 () Bool)

(assert (=> b!3817947 m!4361381))

(declare-fun m!4361383 () Bool)

(assert (=> b!3817947 m!4361383))

(assert (=> b!3817910 d!1130091))

(declare-fun d!1130103 () Bool)

(declare-fun isBalanced!3588 (Conc!12410) Bool)

(assert (=> d!1130103 (= (inv!54409 input!678) (isBalanced!3588 (c!664958 input!678)))))

(declare-fun bs!580986 () Bool)

(assert (= bs!580986 d!1130103))

(declare-fun m!4361385 () Bool)

(assert (=> bs!580986 m!4361385))

(assert (=> start!357392 d!1130103))

(declare-fun d!1130105 () Bool)

(declare-fun isBalanced!3589 (Conc!12411) Bool)

(assert (=> d!1130105 (= (inv!54410 acc!335) (isBalanced!3589 (c!664959 acc!335)))))

(declare-fun bs!580987 () Bool)

(assert (= bs!580987 d!1130105))

(declare-fun m!4361387 () Bool)

(assert (=> bs!580987 m!4361387))

(assert (=> start!357392 d!1130105))

(declare-fun d!1130107 () Bool)

(assert (=> d!1130107 (= (inv!54409 treated!13) (isBalanced!3588 (c!664958 treated!13)))))

(declare-fun bs!580988 () Bool)

(assert (= bs!580988 d!1130107))

(declare-fun m!4361389 () Bool)

(assert (=> bs!580988 m!4361389))

(assert (=> start!357392 d!1130107))

(declare-fun d!1130109 () Bool)

(assert (=> d!1130109 (= (inv!54409 totalInput!335) (isBalanced!3588 (c!664958 totalInput!335)))))

(declare-fun bs!580989 () Bool)

(assert (= bs!580989 d!1130109))

(declare-fun m!4361391 () Bool)

(assert (=> bs!580989 m!4361391))

(assert (=> start!357392 d!1130109))

(declare-fun d!1130111 () Bool)

(assert (=> d!1130111 (= (isEmpty!23817 rules!1265) ((_ is Nil!40394) rules!1265))))

(assert (=> b!3817900 d!1130111))

(declare-fun d!1130113 () Bool)

(declare-fun c!664974 () Bool)

(assert (=> d!1130113 (= c!664974 ((_ is Node!12410) (c!664958 totalInput!335)))))

(declare-fun e!2358449 () Bool)

(assert (=> d!1130113 (= (inv!54408 (c!664958 totalInput!335)) e!2358449)))

(declare-fun b!3817955 () Bool)

(declare-fun inv!54418 (Conc!12410) Bool)

(assert (=> b!3817955 (= e!2358449 (inv!54418 (c!664958 totalInput!335)))))

(declare-fun b!3817956 () Bool)

(declare-fun e!2358450 () Bool)

(assert (=> b!3817956 (= e!2358449 e!2358450)))

(declare-fun res!1545568 () Bool)

(assert (=> b!3817956 (= res!1545568 (not ((_ is Leaf!19217) (c!664958 totalInput!335))))))

(assert (=> b!3817956 (=> res!1545568 e!2358450)))

(declare-fun b!3817957 () Bool)

(declare-fun inv!54419 (Conc!12410) Bool)

(assert (=> b!3817957 (= e!2358450 (inv!54419 (c!664958 totalInput!335)))))

(assert (= (and d!1130113 c!664974) b!3817955))

(assert (= (and d!1130113 (not c!664974)) b!3817956))

(assert (= (and b!3817956 (not res!1545568)) b!3817957))

(declare-fun m!4361393 () Bool)

(assert (=> b!3817955 m!4361393))

(declare-fun m!4361395 () Bool)

(assert (=> b!3817957 m!4361395))

(assert (=> b!3817911 d!1130113))

(declare-fun d!1130115 () Bool)

(declare-fun list!15031 (Conc!12411) List!40519)

(assert (=> d!1130115 (= (list!15028 acc!335) (list!15031 (c!664959 acc!335)))))

(declare-fun bs!580990 () Bool)

(assert (= bs!580990 d!1130115))

(declare-fun m!4361397 () Bool)

(assert (=> bs!580990 m!4361397))

(assert (=> b!3817893 d!1130115))

(declare-fun d!1130117 () Bool)

(assert (=> d!1130117 (= (list!15028 (_1!22918 lt!1324703)) (list!15031 (c!664959 (_1!22918 lt!1324703))))))

(declare-fun bs!580991 () Bool)

(assert (= bs!580991 d!1130117))

(declare-fun m!4361399 () Bool)

(assert (=> bs!580991 m!4361399))

(assert (=> b!3817893 d!1130117))

(declare-fun b!3818082 () Bool)

(declare-fun e!2358525 () tuple2!39568)

(assert (=> b!3818082 (= e!2358525 (tuple2!39569 (BalanceConc!24417 Empty!12411) treated!13))))

(declare-fun b!3818083 () Bool)

(declare-fun res!1545633 () Bool)

(declare-fun e!2358523 () Bool)

(assert (=> b!3818083 (=> (not res!1545633) (not e!2358523))))

(declare-fun lt!1324771 () tuple2!39568)

(assert (=> b!3818083 (= res!1545633 (= (list!15028 (_1!22918 lt!1324771)) (_1!22920 (lexList!1577 thiss!11876 rules!1265 (list!15027 treated!13)))))))

(declare-fun b!3818084 () Bool)

(assert (=> b!3818084 (= e!2358523 (= (list!15027 (_2!22918 lt!1324771)) (_2!22920 (lexList!1577 thiss!11876 rules!1265 (list!15027 treated!13)))))))

(declare-fun b!3818085 () Bool)

(declare-fun e!2358524 () Bool)

(assert (=> b!3818085 (= e!2358524 (= (list!15027 (_2!22918 lt!1324771)) (list!15027 treated!13)))))

(declare-fun b!3818086 () Bool)

(declare-fun lt!1324772 () tuple2!39568)

(declare-fun lt!1324773 () Option!8636)

(assert (=> b!3818086 (= e!2358525 (tuple2!39569 (prepend!1368 (_1!22918 lt!1324772) (_1!22919 (v!38891 lt!1324773))) (_2!22918 lt!1324772)))))

(assert (=> b!3818086 (= lt!1324772 (lexRec!831 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324773))))))

(declare-fun d!1130119 () Bool)

(assert (=> d!1130119 e!2358523))

(declare-fun res!1545631 () Bool)

(assert (=> d!1130119 (=> (not res!1545631) (not e!2358523))))

(assert (=> d!1130119 (= res!1545631 e!2358524)))

(declare-fun c!665010 () Bool)

(declare-fun size!30437 (BalanceConc!24416) Int)

(assert (=> d!1130119 (= c!665010 (> (size!30437 (_1!22918 lt!1324771)) 0))))

(assert (=> d!1130119 (= lt!1324771 e!2358525)))

(declare-fun c!665011 () Bool)

(assert (=> d!1130119 (= c!665011 ((_ is Some!8635) lt!1324773))))

(assert (=> d!1130119 (= lt!1324773 (maxPrefixZipperSequence!1213 thiss!11876 rules!1265 treated!13))))

(assert (=> d!1130119 (= (lexRec!831 thiss!11876 rules!1265 treated!13) lt!1324771)))

(declare-fun b!3818087 () Bool)

(declare-fun e!2358526 () Bool)

(declare-fun isEmpty!23820 (BalanceConc!24416) Bool)

(assert (=> b!3818087 (= e!2358526 (not (isEmpty!23820 (_1!22918 lt!1324771))))))

(declare-fun b!3818088 () Bool)

(assert (=> b!3818088 (= e!2358524 e!2358526)))

(declare-fun res!1545632 () Bool)

(declare-fun size!30438 (BalanceConc!24414) Int)

(assert (=> b!3818088 (= res!1545632 (< (size!30438 (_2!22918 lt!1324771)) (size!30438 treated!13)))))

(assert (=> b!3818088 (=> (not res!1545632) (not e!2358526))))

(assert (= (and d!1130119 c!665011) b!3818086))

(assert (= (and d!1130119 (not c!665011)) b!3818082))

(assert (= (and d!1130119 c!665010) b!3818088))

(assert (= (and d!1130119 (not c!665010)) b!3818085))

(assert (= (and b!3818088 res!1545632) b!3818087))

(assert (= (and d!1130119 res!1545631) b!3818083))

(assert (= (and b!3818083 res!1545633) b!3818084))

(declare-fun m!4361591 () Bool)

(assert (=> b!3818083 m!4361591))

(assert (=> b!3818083 m!4361323))

(assert (=> b!3818083 m!4361323))

(declare-fun m!4361593 () Bool)

(assert (=> b!3818083 m!4361593))

(declare-fun m!4361595 () Bool)

(assert (=> b!3818087 m!4361595))

(declare-fun m!4361597 () Bool)

(assert (=> d!1130119 m!4361597))

(declare-fun m!4361599 () Bool)

(assert (=> d!1130119 m!4361599))

(declare-fun m!4361601 () Bool)

(assert (=> b!3818086 m!4361601))

(declare-fun m!4361603 () Bool)

(assert (=> b!3818086 m!4361603))

(declare-fun m!4361605 () Bool)

(assert (=> b!3818088 m!4361605))

(declare-fun m!4361607 () Bool)

(assert (=> b!3818088 m!4361607))

(declare-fun m!4361609 () Bool)

(assert (=> b!3818085 m!4361609))

(assert (=> b!3818085 m!4361323))

(assert (=> b!3818084 m!4361609))

(assert (=> b!3818084 m!4361323))

(assert (=> b!3818084 m!4361323))

(assert (=> b!3818084 m!4361593))

(assert (=> b!3817893 d!1130119))

(declare-fun d!1130177 () Bool)

(declare-fun list!15032 (Conc!12410) List!40517)

(assert (=> d!1130177 (= (list!15027 (_2!22918 lt!1324706)) (list!15032 (c!664958 (_2!22918 lt!1324706))))))

(declare-fun bs!581002 () Bool)

(assert (= bs!581002 d!1130177))

(declare-fun m!4361611 () Bool)

(assert (=> bs!581002 m!4361611))

(assert (=> b!3817904 d!1130177))

(declare-fun d!1130179 () Bool)

(assert (=> d!1130179 (= (list!15027 (_2!22918 lt!1324698)) (list!15032 (c!664958 (_2!22918 lt!1324698))))))

(declare-fun bs!581003 () Bool)

(assert (= bs!581003 d!1130179))

(declare-fun m!4361613 () Bool)

(assert (=> bs!581003 m!4361613))

(assert (=> b!3817904 d!1130179))

(declare-fun d!1130181 () Bool)

(assert (=> d!1130181 (= (list!15027 (charsOf!4056 (_1!22919 (v!38891 lt!1324705)))) (list!15032 (c!664958 (charsOf!4056 (_1!22919 (v!38891 lt!1324705))))))))

(declare-fun bs!581004 () Bool)

(assert (= bs!581004 d!1130181))

(declare-fun m!4361615 () Bool)

(assert (=> bs!581004 m!4361615))

(assert (=> b!3817892 d!1130181))

(declare-fun d!1130183 () Bool)

(assert (=> d!1130183 (= (++!10156 (++!10156 lt!1324693 lt!1324711) lt!1324704) (++!10156 lt!1324693 (++!10156 lt!1324711 lt!1324704)))))

(declare-fun lt!1324776 () Unit!58150)

(declare-fun choose!22486 (List!40519 List!40519 List!40519) Unit!58150)

(assert (=> d!1130183 (= lt!1324776 (choose!22486 lt!1324693 lt!1324711 lt!1324704))))

(assert (=> d!1130183 (= (lemmaConcatAssociativity!2193 lt!1324693 lt!1324711 lt!1324704) lt!1324776)))

(declare-fun bs!581005 () Bool)

(assert (= bs!581005 d!1130183))

(assert (=> bs!581005 m!4361273))

(assert (=> bs!581005 m!4361275))

(assert (=> bs!581005 m!4361291))

(assert (=> bs!581005 m!4361291))

(assert (=> bs!581005 m!4361293))

(declare-fun m!4361617 () Bool)

(assert (=> bs!581005 m!4361617))

(assert (=> bs!581005 m!4361273))

(assert (=> b!3817892 d!1130183))

(declare-fun b!3818097 () Bool)

(declare-fun e!2358531 () List!40517)

(assert (=> b!3818097 (= e!2358531 lt!1324691)))

(declare-fun lt!1324779 () List!40517)

(declare-fun e!2358532 () Bool)

(declare-fun b!3818100 () Bool)

(assert (=> b!3818100 (= e!2358532 (or (not (= lt!1324691 Nil!40393)) (= lt!1324779 lt!1324694)))))

(declare-fun b!3818099 () Bool)

(declare-fun res!1545639 () Bool)

(assert (=> b!3818099 (=> (not res!1545639) (not e!2358532))))

(assert (=> b!3818099 (= res!1545639 (= (size!30435 lt!1324779) (+ (size!30435 lt!1324694) (size!30435 lt!1324691))))))

(declare-fun d!1130185 () Bool)

(assert (=> d!1130185 e!2358532))

(declare-fun res!1545638 () Bool)

(assert (=> d!1130185 (=> (not res!1545638) (not e!2358532))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5974 (List!40517) (InoxSet C!22432))

(assert (=> d!1130185 (= res!1545638 (= (content!5974 lt!1324779) ((_ map or) (content!5974 lt!1324694) (content!5974 lt!1324691))))))

(assert (=> d!1130185 (= lt!1324779 e!2358531)))

(declare-fun c!665014 () Bool)

(assert (=> d!1130185 (= c!665014 ((_ is Nil!40393) lt!1324694))))

(assert (=> d!1130185 (= (++!10157 lt!1324694 lt!1324691) lt!1324779)))

(declare-fun b!3818098 () Bool)

(assert (=> b!3818098 (= e!2358531 (Cons!40393 (h!45813 lt!1324694) (++!10157 (t!308162 lt!1324694) lt!1324691)))))

(assert (= (and d!1130185 c!665014) b!3818097))

(assert (= (and d!1130185 (not c!665014)) b!3818098))

(assert (= (and d!1130185 res!1545638) b!3818099))

(assert (= (and b!3818099 res!1545639) b!3818100))

(declare-fun m!4361619 () Bool)

(assert (=> b!3818099 m!4361619))

(declare-fun m!4361621 () Bool)

(assert (=> b!3818099 m!4361621))

(declare-fun m!4361623 () Bool)

(assert (=> b!3818099 m!4361623))

(declare-fun m!4361625 () Bool)

(assert (=> d!1130185 m!4361625))

(declare-fun m!4361627 () Bool)

(assert (=> d!1130185 m!4361627))

(declare-fun m!4361629 () Bool)

(assert (=> d!1130185 m!4361629))

(declare-fun m!4361631 () Bool)

(assert (=> b!3818098 m!4361631))

(assert (=> b!3817892 d!1130185))

(declare-fun b!3818101 () Bool)

(declare-fun e!2358533 () List!40517)

(assert (=> b!3818101 (= e!2358533 lt!1324696)))

(declare-fun lt!1324780 () List!40517)

(declare-fun b!3818104 () Bool)

(declare-fun e!2358534 () Bool)

(assert (=> b!3818104 (= e!2358534 (or (not (= lt!1324696 Nil!40393)) (= lt!1324780 lt!1324691)))))

(declare-fun b!3818103 () Bool)

(declare-fun res!1545641 () Bool)

(assert (=> b!3818103 (=> (not res!1545641) (not e!2358534))))

(assert (=> b!3818103 (= res!1545641 (= (size!30435 lt!1324780) (+ (size!30435 lt!1324691) (size!30435 lt!1324696))))))

(declare-fun d!1130187 () Bool)

(assert (=> d!1130187 e!2358534))

(declare-fun res!1545640 () Bool)

(assert (=> d!1130187 (=> (not res!1545640) (not e!2358534))))

(assert (=> d!1130187 (= res!1545640 (= (content!5974 lt!1324780) ((_ map or) (content!5974 lt!1324691) (content!5974 lt!1324696))))))

(assert (=> d!1130187 (= lt!1324780 e!2358533)))

(declare-fun c!665015 () Bool)

(assert (=> d!1130187 (= c!665015 ((_ is Nil!40393) lt!1324691))))

(assert (=> d!1130187 (= (++!10157 lt!1324691 lt!1324696) lt!1324780)))

(declare-fun b!3818102 () Bool)

(assert (=> b!3818102 (= e!2358533 (Cons!40393 (h!45813 lt!1324691) (++!10157 (t!308162 lt!1324691) lt!1324696)))))

(assert (= (and d!1130187 c!665015) b!3818101))

(assert (= (and d!1130187 (not c!665015)) b!3818102))

(assert (= (and d!1130187 res!1545640) b!3818103))

(assert (= (and b!3818103 res!1545641) b!3818104))

(declare-fun m!4361633 () Bool)

(assert (=> b!3818103 m!4361633))

(assert (=> b!3818103 m!4361623))

(assert (=> b!3818103 m!4361383))

(declare-fun m!4361635 () Bool)

(assert (=> d!1130187 m!4361635))

(assert (=> d!1130187 m!4361629))

(declare-fun m!4361637 () Bool)

(assert (=> d!1130187 m!4361637))

(declare-fun m!4361639 () Bool)

(assert (=> b!3818102 m!4361639))

(assert (=> b!3817892 d!1130187))

(declare-fun b!3818105 () Bool)

(declare-fun e!2358537 () tuple2!39568)

(assert (=> b!3818105 (= e!2358537 (tuple2!39569 (BalanceConc!24417 Empty!12411) (_2!22919 (v!38891 lt!1324705))))))

(declare-fun b!3818106 () Bool)

(declare-fun res!1545644 () Bool)

(declare-fun e!2358535 () Bool)

(assert (=> b!3818106 (=> (not res!1545644) (not e!2358535))))

(declare-fun lt!1324781 () tuple2!39568)

(assert (=> b!3818106 (= res!1545644 (= (list!15028 (_1!22918 lt!1324781)) (_1!22920 (lexList!1577 thiss!11876 rules!1265 (list!15027 (_2!22919 (v!38891 lt!1324705)))))))))

(declare-fun b!3818107 () Bool)

(assert (=> b!3818107 (= e!2358535 (= (list!15027 (_2!22918 lt!1324781)) (_2!22920 (lexList!1577 thiss!11876 rules!1265 (list!15027 (_2!22919 (v!38891 lt!1324705)))))))))

(declare-fun b!3818108 () Bool)

(declare-fun e!2358536 () Bool)

(assert (=> b!3818108 (= e!2358536 (= (list!15027 (_2!22918 lt!1324781)) (list!15027 (_2!22919 (v!38891 lt!1324705)))))))

(declare-fun b!3818109 () Bool)

(declare-fun lt!1324782 () tuple2!39568)

(declare-fun lt!1324783 () Option!8636)

(assert (=> b!3818109 (= e!2358537 (tuple2!39569 (prepend!1368 (_1!22918 lt!1324782) (_1!22919 (v!38891 lt!1324783))) (_2!22918 lt!1324782)))))

(assert (=> b!3818109 (= lt!1324782 (lexRec!831 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324783))))))

(declare-fun d!1130189 () Bool)

(assert (=> d!1130189 e!2358535))

(declare-fun res!1545642 () Bool)

(assert (=> d!1130189 (=> (not res!1545642) (not e!2358535))))

(assert (=> d!1130189 (= res!1545642 e!2358536)))

(declare-fun c!665016 () Bool)

(assert (=> d!1130189 (= c!665016 (> (size!30437 (_1!22918 lt!1324781)) 0))))

(assert (=> d!1130189 (= lt!1324781 e!2358537)))

(declare-fun c!665017 () Bool)

(assert (=> d!1130189 (= c!665017 ((_ is Some!8635) lt!1324783))))

(assert (=> d!1130189 (= lt!1324783 (maxPrefixZipperSequence!1213 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324705))))))

(assert (=> d!1130189 (= (lexRec!831 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324705))) lt!1324781)))

(declare-fun b!3818110 () Bool)

(declare-fun e!2358538 () Bool)

(assert (=> b!3818110 (= e!2358538 (not (isEmpty!23820 (_1!22918 lt!1324781))))))

(declare-fun b!3818111 () Bool)

(assert (=> b!3818111 (= e!2358536 e!2358538)))

(declare-fun res!1545643 () Bool)

(assert (=> b!3818111 (= res!1545643 (< (size!30438 (_2!22918 lt!1324781)) (size!30438 (_2!22919 (v!38891 lt!1324705)))))))

(assert (=> b!3818111 (=> (not res!1545643) (not e!2358538))))

(assert (= (and d!1130189 c!665017) b!3818109))

(assert (= (and d!1130189 (not c!665017)) b!3818105))

(assert (= (and d!1130189 c!665016) b!3818111))

(assert (= (and d!1130189 (not c!665016)) b!3818108))

(assert (= (and b!3818111 res!1545643) b!3818110))

(assert (= (and d!1130189 res!1545642) b!3818106))

(assert (= (and b!3818106 res!1545644) b!3818107))

(declare-fun m!4361641 () Bool)

(assert (=> b!3818106 m!4361641))

(assert (=> b!3818106 m!4361279))

(assert (=> b!3818106 m!4361279))

(declare-fun m!4361643 () Bool)

(assert (=> b!3818106 m!4361643))

(declare-fun m!4361645 () Bool)

(assert (=> b!3818110 m!4361645))

(declare-fun m!4361647 () Bool)

(assert (=> d!1130189 m!4361647))

(declare-fun m!4361649 () Bool)

(assert (=> d!1130189 m!4361649))

(declare-fun m!4361651 () Bool)

(assert (=> b!3818109 m!4361651))

(declare-fun m!4361653 () Bool)

(assert (=> b!3818109 m!4361653))

(declare-fun m!4361655 () Bool)

(assert (=> b!3818111 m!4361655))

(declare-fun m!4361657 () Bool)

(assert (=> b!3818111 m!4361657))

(declare-fun m!4361659 () Bool)

(assert (=> b!3818108 m!4361659))

(assert (=> b!3818108 m!4361279))

(assert (=> b!3818107 m!4361659))

(assert (=> b!3818107 m!4361279))

(assert (=> b!3818107 m!4361279))

(assert (=> b!3818107 m!4361643))

(assert (=> b!3817892 d!1130189))

(declare-fun b!3818112 () Bool)

(declare-fun e!2358539 () List!40517)

(assert (=> b!3818112 (= e!2358539 lt!1324696)))

(declare-fun e!2358540 () Bool)

(declare-fun lt!1324784 () List!40517)

(declare-fun b!3818115 () Bool)

(assert (=> b!3818115 (= e!2358540 (or (not (= lt!1324696 Nil!40393)) (= lt!1324784 lt!1324702)))))

(declare-fun b!3818114 () Bool)

(declare-fun res!1545646 () Bool)

(assert (=> b!3818114 (=> (not res!1545646) (not e!2358540))))

(assert (=> b!3818114 (= res!1545646 (= (size!30435 lt!1324784) (+ (size!30435 lt!1324702) (size!30435 lt!1324696))))))

(declare-fun d!1130191 () Bool)

(assert (=> d!1130191 e!2358540))

(declare-fun res!1545645 () Bool)

(assert (=> d!1130191 (=> (not res!1545645) (not e!2358540))))

(assert (=> d!1130191 (= res!1545645 (= (content!5974 lt!1324784) ((_ map or) (content!5974 lt!1324702) (content!5974 lt!1324696))))))

(assert (=> d!1130191 (= lt!1324784 e!2358539)))

(declare-fun c!665018 () Bool)

(assert (=> d!1130191 (= c!665018 ((_ is Nil!40393) lt!1324702))))

(assert (=> d!1130191 (= (++!10157 lt!1324702 lt!1324696) lt!1324784)))

(declare-fun b!3818113 () Bool)

(assert (=> b!3818113 (= e!2358539 (Cons!40393 (h!45813 lt!1324702) (++!10157 (t!308162 lt!1324702) lt!1324696)))))

(assert (= (and d!1130191 c!665018) b!3818112))

(assert (= (and d!1130191 (not c!665018)) b!3818113))

(assert (= (and d!1130191 res!1545645) b!3818114))

(assert (= (and b!3818114 res!1545646) b!3818115))

(declare-fun m!4361661 () Bool)

(assert (=> b!3818114 m!4361661))

(declare-fun m!4361663 () Bool)

(assert (=> b!3818114 m!4361663))

(assert (=> b!3818114 m!4361383))

(declare-fun m!4361665 () Bool)

(assert (=> d!1130191 m!4361665))

(declare-fun m!4361667 () Bool)

(assert (=> d!1130191 m!4361667))

(assert (=> d!1130191 m!4361637))

(declare-fun m!4361669 () Bool)

(assert (=> b!3818113 m!4361669))

(assert (=> b!3817892 d!1130191))

(declare-fun d!1130193 () Bool)

(assert (=> d!1130193 (= (list!15028 (append!1078 acc!335 (_1!22919 (v!38891 lt!1324705)))) (list!15031 (c!664959 (append!1078 acc!335 (_1!22919 (v!38891 lt!1324705))))))))

(declare-fun bs!581006 () Bool)

(assert (= bs!581006 d!1130193))

(declare-fun m!4361671 () Bool)

(assert (=> bs!581006 m!4361671))

(assert (=> b!3817892 d!1130193))

(declare-fun b!3818142 () Bool)

(declare-fun res!1545664 () Bool)

(declare-fun e!2358557 () Bool)

(assert (=> b!3818142 (=> (not res!1545664) (not e!2358557))))

(declare-fun lt!1324801 () List!40519)

(assert (=> b!3818142 (= res!1545664 (= (size!30434 lt!1324801) (+ (size!30434 lt!1324711) (size!30434 lt!1324704))))))

(declare-fun b!3818143 () Bool)

(assert (=> b!3818143 (= e!2358557 (or (not (= lt!1324704 Nil!40395)) (= lt!1324801 lt!1324711)))))

(declare-fun b!3818140 () Bool)

(declare-fun e!2358558 () List!40519)

(assert (=> b!3818140 (= e!2358558 lt!1324704)))

(declare-fun b!3818141 () Bool)

(assert (=> b!3818141 (= e!2358558 (Cons!40395 (h!45815 lt!1324711) (++!10156 (t!308164 lt!1324711) lt!1324704)))))

(declare-fun d!1130195 () Bool)

(assert (=> d!1130195 e!2358557))

(declare-fun res!1545663 () Bool)

(assert (=> d!1130195 (=> (not res!1545663) (not e!2358557))))

(declare-fun content!5975 (List!40519) (InoxSet Token!11574))

(assert (=> d!1130195 (= res!1545663 (= (content!5975 lt!1324801) ((_ map or) (content!5975 lt!1324711) (content!5975 lt!1324704))))))

(assert (=> d!1130195 (= lt!1324801 e!2358558)))

(declare-fun c!665023 () Bool)

(assert (=> d!1130195 (= c!665023 ((_ is Nil!40395) lt!1324711))))

(assert (=> d!1130195 (= (++!10156 lt!1324711 lt!1324704) lt!1324801)))

(assert (= (and d!1130195 c!665023) b!3818140))

(assert (= (and d!1130195 (not c!665023)) b!3818141))

(assert (= (and d!1130195 res!1545663) b!3818142))

(assert (= (and b!3818142 res!1545664) b!3818143))

(declare-fun m!4361673 () Bool)

(assert (=> b!3818142 m!4361673))

(declare-fun m!4361675 () Bool)

(assert (=> b!3818142 m!4361675))

(declare-fun m!4361677 () Bool)

(assert (=> b!3818142 m!4361677))

(declare-fun m!4361679 () Bool)

(assert (=> b!3818141 m!4361679))

(declare-fun m!4361681 () Bool)

(assert (=> d!1130195 m!4361681))

(declare-fun m!4361683 () Bool)

(assert (=> d!1130195 m!4361683))

(declare-fun m!4361685 () Bool)

(assert (=> d!1130195 m!4361685))

(assert (=> b!3817892 d!1130195))

(declare-fun b!3818146 () Bool)

(declare-fun res!1545666 () Bool)

(declare-fun e!2358559 () Bool)

(assert (=> b!3818146 (=> (not res!1545666) (not e!2358559))))

(declare-fun lt!1324802 () List!40519)

(assert (=> b!3818146 (= res!1545666 (= (size!30434 lt!1324802) (+ (size!30434 (++!10156 lt!1324693 lt!1324711)) (size!30434 lt!1324704))))))

(declare-fun b!3818147 () Bool)

(assert (=> b!3818147 (= e!2358559 (or (not (= lt!1324704 Nil!40395)) (= lt!1324802 (++!10156 lt!1324693 lt!1324711))))))

(declare-fun b!3818144 () Bool)

(declare-fun e!2358560 () List!40519)

(assert (=> b!3818144 (= e!2358560 lt!1324704)))

(declare-fun b!3818145 () Bool)

(assert (=> b!3818145 (= e!2358560 (Cons!40395 (h!45815 (++!10156 lt!1324693 lt!1324711)) (++!10156 (t!308164 (++!10156 lt!1324693 lt!1324711)) lt!1324704)))))

(declare-fun d!1130197 () Bool)

(assert (=> d!1130197 e!2358559))

(declare-fun res!1545665 () Bool)

(assert (=> d!1130197 (=> (not res!1545665) (not e!2358559))))

(assert (=> d!1130197 (= res!1545665 (= (content!5975 lt!1324802) ((_ map or) (content!5975 (++!10156 lt!1324693 lt!1324711)) (content!5975 lt!1324704))))))

(assert (=> d!1130197 (= lt!1324802 e!2358560)))

(declare-fun c!665024 () Bool)

(assert (=> d!1130197 (= c!665024 ((_ is Nil!40395) (++!10156 lt!1324693 lt!1324711)))))

(assert (=> d!1130197 (= (++!10156 (++!10156 lt!1324693 lt!1324711) lt!1324704) lt!1324802)))

(assert (= (and d!1130197 c!665024) b!3818144))

(assert (= (and d!1130197 (not c!665024)) b!3818145))

(assert (= (and d!1130197 res!1545665) b!3818146))

(assert (= (and b!3818146 res!1545666) b!3818147))

(declare-fun m!4361687 () Bool)

(assert (=> b!3818146 m!4361687))

(assert (=> b!3818146 m!4361273))

(declare-fun m!4361689 () Bool)

(assert (=> b!3818146 m!4361689))

(assert (=> b!3818146 m!4361677))

(declare-fun m!4361691 () Bool)

(assert (=> b!3818145 m!4361691))

(declare-fun m!4361693 () Bool)

(assert (=> d!1130197 m!4361693))

(assert (=> d!1130197 m!4361273))

(declare-fun m!4361695 () Bool)

(assert (=> d!1130197 m!4361695))

(assert (=> d!1130197 m!4361685))

(assert (=> b!3817892 d!1130197))

(declare-fun d!1130199 () Bool)

(declare-fun lt!1324812 () BalanceConc!24414)

(assert (=> d!1130199 (= (list!15027 lt!1324812) (originalCharacters!6818 (_1!22919 (v!38891 lt!1324705))))))

(declare-fun dynLambda!17483 (Int TokenValue!6448) BalanceConc!24414)

(assert (=> d!1130199 (= lt!1324812 (dynLambda!17483 (toChars!8473 (transformation!6218 (rule!9034 (_1!22919 (v!38891 lt!1324705))))) (value!197820 (_1!22919 (v!38891 lt!1324705)))))))

(assert (=> d!1130199 (= (charsOf!4056 (_1!22919 (v!38891 lt!1324705))) lt!1324812)))

(declare-fun b_lambda!111731 () Bool)

(assert (=> (not b_lambda!111731) (not d!1130199)))

(declare-fun tb!219021 () Bool)

(declare-fun t!308166 () Bool)

(assert (=> (and b!3817906 (= (toChars!8473 (transformation!6218 (h!45814 rules!1265))) (toChars!8473 (transformation!6218 (rule!9034 (_1!22919 (v!38891 lt!1324705)))))) t!308166) tb!219021))

(declare-fun b!3818160 () Bool)

(declare-fun e!2358569 () Bool)

(declare-fun tp!1157323 () Bool)

(assert (=> b!3818160 (= e!2358569 (and (inv!54408 (c!664958 (dynLambda!17483 (toChars!8473 (transformation!6218 (rule!9034 (_1!22919 (v!38891 lt!1324705))))) (value!197820 (_1!22919 (v!38891 lt!1324705)))))) tp!1157323))))

(declare-fun result!267050 () Bool)

(assert (=> tb!219021 (= result!267050 (and (inv!54409 (dynLambda!17483 (toChars!8473 (transformation!6218 (rule!9034 (_1!22919 (v!38891 lt!1324705))))) (value!197820 (_1!22919 (v!38891 lt!1324705))))) e!2358569))))

(assert (= tb!219021 b!3818160))

(declare-fun m!4361709 () Bool)

(assert (=> b!3818160 m!4361709))

(declare-fun m!4361711 () Bool)

(assert (=> tb!219021 m!4361711))

(assert (=> d!1130199 t!308166))

(declare-fun b_and!283747 () Bool)

(assert (= b_and!283745 (and (=> t!308166 result!267050) b_and!283747)))

(declare-fun m!4361715 () Bool)

(assert (=> d!1130199 m!4361715))

(declare-fun m!4361719 () Bool)

(assert (=> d!1130199 m!4361719))

(assert (=> b!3817892 d!1130199))

(declare-fun d!1130201 () Bool)

(assert (=> d!1130201 (= (list!15027 (_2!22918 lt!1324709)) (list!15032 (c!664958 (_2!22918 lt!1324709))))))

(declare-fun bs!581007 () Bool)

(assert (= bs!581007 d!1130201))

(declare-fun m!4361723 () Bool)

(assert (=> bs!581007 m!4361723))

(assert (=> b!3817892 d!1130201))

(declare-fun b!3818161 () Bool)

(declare-fun e!2358570 () List!40517)

(assert (=> b!3818161 (= e!2358570 lt!1324708)))

(declare-fun e!2358571 () Bool)

(declare-fun lt!1324813 () List!40517)

(declare-fun b!3818164 () Bool)

(assert (=> b!3818164 (= e!2358571 (or (not (= lt!1324708 Nil!40393)) (= lt!1324813 lt!1324694)))))

(declare-fun b!3818163 () Bool)

(declare-fun res!1545674 () Bool)

(assert (=> b!3818163 (=> (not res!1545674) (not e!2358571))))

(assert (=> b!3818163 (= res!1545674 (= (size!30435 lt!1324813) (+ (size!30435 lt!1324694) (size!30435 lt!1324708))))))

(declare-fun d!1130203 () Bool)

(assert (=> d!1130203 e!2358571))

(declare-fun res!1545673 () Bool)

(assert (=> d!1130203 (=> (not res!1545673) (not e!2358571))))

(assert (=> d!1130203 (= res!1545673 (= (content!5974 lt!1324813) ((_ map or) (content!5974 lt!1324694) (content!5974 lt!1324708))))))

(assert (=> d!1130203 (= lt!1324813 e!2358570)))

(declare-fun c!665026 () Bool)

(assert (=> d!1130203 (= c!665026 ((_ is Nil!40393) lt!1324694))))

(assert (=> d!1130203 (= (++!10157 lt!1324694 lt!1324708) lt!1324813)))

(declare-fun b!3818162 () Bool)

(assert (=> b!3818162 (= e!2358570 (Cons!40393 (h!45813 lt!1324694) (++!10157 (t!308162 lt!1324694) lt!1324708)))))

(assert (= (and d!1130203 c!665026) b!3818161))

(assert (= (and d!1130203 (not c!665026)) b!3818162))

(assert (= (and d!1130203 res!1545673) b!3818163))

(assert (= (and b!3818163 res!1545674) b!3818164))

(declare-fun m!4361733 () Bool)

(assert (=> b!3818163 m!4361733))

(assert (=> b!3818163 m!4361621))

(declare-fun m!4361735 () Bool)

(assert (=> b!3818163 m!4361735))

(declare-fun m!4361737 () Bool)

(assert (=> d!1130203 m!4361737))

(assert (=> d!1130203 m!4361627))

(declare-fun m!4361739 () Bool)

(assert (=> d!1130203 m!4361739))

(declare-fun m!4361741 () Bool)

(assert (=> b!3818162 m!4361741))

(assert (=> b!3817892 d!1130203))

(declare-fun d!1130207 () Bool)

(assert (=> d!1130207 (= (list!15027 (_2!22919 (v!38891 lt!1324705))) (list!15032 (c!664958 (_2!22919 (v!38891 lt!1324705)))))))

(declare-fun bs!581008 () Bool)

(assert (= bs!581008 d!1130207))

(declare-fun m!4361743 () Bool)

(assert (=> bs!581008 m!4361743))

(assert (=> b!3817892 d!1130207))

(declare-fun e!2358621 () Bool)

(declare-fun b!3818241 () Bool)

(declare-fun lt!1324856 () Option!8636)

(declare-fun get!13397 (Option!8636) tuple2!39570)

(declare-fun get!13398 (Option!8637) tuple2!39574)

(assert (=> b!3818241 (= e!2358621 (= (list!15027 (_2!22919 (get!13397 lt!1324856))) (_2!22921 (get!13398 (maxPrefix!3118 thiss!11876 rules!1265 (list!15027 input!678))))))))

(declare-fun b!3818242 () Bool)

(declare-fun e!2358622 () Bool)

(declare-fun maxPrefixZipper!551 (LexerInterface!5807 List!40518 List!40517) Option!8637)

(assert (=> b!3818242 (= e!2358622 (= (list!15027 (_2!22919 (get!13397 lt!1324856))) (_2!22921 (get!13398 (maxPrefixZipper!551 thiss!11876 rules!1265 (list!15027 input!678))))))))

(declare-fun b!3818243 () Bool)

(declare-fun res!1545715 () Bool)

(declare-fun e!2358617 () Bool)

(assert (=> b!3818243 (=> (not res!1545715) (not e!2358617))))

(declare-fun e!2358618 () Bool)

(assert (=> b!3818243 (= res!1545715 e!2358618)))

(declare-fun res!1545718 () Bool)

(assert (=> b!3818243 (=> res!1545718 e!2358618)))

(declare-fun isDefined!6798 (Option!8636) Bool)

(assert (=> b!3818243 (= res!1545718 (not (isDefined!6798 lt!1324856)))))

(declare-fun b!3818244 () Bool)

(declare-fun e!2358619 () Option!8636)

(declare-fun lt!1324859 () Option!8636)

(declare-fun lt!1324860 () Option!8636)

(assert (=> b!3818244 (= e!2358619 (ite (and ((_ is None!8635) lt!1324859) ((_ is None!8635) lt!1324860)) None!8635 (ite ((_ is None!8635) lt!1324860) lt!1324859 (ite ((_ is None!8635) lt!1324859) lt!1324860 (ite (>= (size!30430 (_1!22919 (v!38891 lt!1324859))) (size!30430 (_1!22919 (v!38891 lt!1324860)))) lt!1324859 lt!1324860)))))))

(declare-fun call!280366 () Option!8636)

(assert (=> b!3818244 (= lt!1324859 call!280366)))

(assert (=> b!3818244 (= lt!1324860 (maxPrefixZipperSequence!1213 thiss!11876 (t!308163 rules!1265) input!678))))

(declare-fun b!3818245 () Bool)

(declare-fun e!2358620 () Bool)

(assert (=> b!3818245 (= e!2358620 e!2358621)))

(declare-fun res!1545716 () Bool)

(assert (=> b!3818245 (=> (not res!1545716) (not e!2358621))))

(assert (=> b!3818245 (= res!1545716 (= (_1!22919 (get!13397 lt!1324856)) (_1!22921 (get!13398 (maxPrefix!3118 thiss!11876 rules!1265 (list!15027 input!678))))))))

(declare-fun d!1130209 () Bool)

(assert (=> d!1130209 e!2358617))

(declare-fun res!1545714 () Bool)

(assert (=> d!1130209 (=> (not res!1545714) (not e!2358617))))

(declare-fun isDefined!6799 (Option!8637) Bool)

(assert (=> d!1130209 (= res!1545714 (= (isDefined!6798 lt!1324856) (isDefined!6799 (maxPrefixZipper!551 thiss!11876 rules!1265 (list!15027 input!678)))))))

(assert (=> d!1130209 (= lt!1324856 e!2358619)))

(declare-fun c!665044 () Bool)

(assert (=> d!1130209 (= c!665044 (and ((_ is Cons!40394) rules!1265) ((_ is Nil!40394) (t!308163 rules!1265))))))

(declare-fun lt!1324861 () Unit!58150)

(declare-fun lt!1324862 () Unit!58150)

(assert (=> d!1130209 (= lt!1324861 lt!1324862)))

(declare-fun lt!1324858 () List!40517)

(declare-fun lt!1324857 () List!40517)

(declare-fun isPrefix!3327 (List!40517 List!40517) Bool)

(assert (=> d!1130209 (isPrefix!3327 lt!1324858 lt!1324857)))

(declare-fun lemmaIsPrefixRefl!2112 (List!40517 List!40517) Unit!58150)

(assert (=> d!1130209 (= lt!1324862 (lemmaIsPrefixRefl!2112 lt!1324858 lt!1324857))))

(assert (=> d!1130209 (= lt!1324857 (list!15027 input!678))))

(assert (=> d!1130209 (= lt!1324858 (list!15027 input!678))))

(declare-fun rulesValidInductive!2186 (LexerInterface!5807 List!40518) Bool)

(assert (=> d!1130209 (rulesValidInductive!2186 thiss!11876 rules!1265)))

(assert (=> d!1130209 (= (maxPrefixZipperSequence!1213 thiss!11876 rules!1265 input!678) lt!1324856)))

(declare-fun b!3818246 () Bool)

(assert (=> b!3818246 (= e!2358617 e!2358620)))

(declare-fun res!1545719 () Bool)

(assert (=> b!3818246 (=> res!1545719 e!2358620)))

(assert (=> b!3818246 (= res!1545719 (not (isDefined!6798 lt!1324856)))))

(declare-fun b!3818247 () Bool)

(assert (=> b!3818247 (= e!2358618 e!2358622)))

(declare-fun res!1545717 () Bool)

(assert (=> b!3818247 (=> (not res!1545717) (not e!2358622))))

(assert (=> b!3818247 (= res!1545717 (= (_1!22919 (get!13397 lt!1324856)) (_1!22921 (get!13398 (maxPrefixZipper!551 thiss!11876 rules!1265 (list!15027 input!678))))))))

(declare-fun b!3818248 () Bool)

(assert (=> b!3818248 (= e!2358619 call!280366)))

(declare-fun bm!280361 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!566 (LexerInterface!5807 Rule!12236 BalanceConc!24414) Option!8636)

(assert (=> bm!280361 (= call!280366 (maxPrefixOneRuleZipperSequence!566 thiss!11876 (h!45814 rules!1265) input!678))))

(assert (= (and d!1130209 c!665044) b!3818248))

(assert (= (and d!1130209 (not c!665044)) b!3818244))

(assert (= (or b!3818248 b!3818244) bm!280361))

(assert (= (and d!1130209 res!1545714) b!3818243))

(assert (= (and b!3818243 (not res!1545718)) b!3818247))

(assert (= (and b!3818247 res!1545717) b!3818242))

(assert (= (and b!3818243 res!1545715) b!3818246))

(assert (= (and b!3818246 (not res!1545719)) b!3818245))

(assert (= (and b!3818245 res!1545716) b!3818241))

(assert (=> b!3818242 m!4361321))

(declare-fun m!4361889 () Bool)

(assert (=> b!3818242 m!4361889))

(assert (=> b!3818242 m!4361321))

(declare-fun m!4361891 () Bool)

(assert (=> b!3818242 m!4361891))

(declare-fun m!4361893 () Bool)

(assert (=> b!3818242 m!4361893))

(assert (=> b!3818242 m!4361889))

(declare-fun m!4361895 () Bool)

(assert (=> b!3818242 m!4361895))

(assert (=> b!3818241 m!4361321))

(assert (=> b!3818241 m!4361893))

(assert (=> b!3818241 m!4361321))

(declare-fun m!4361897 () Bool)

(assert (=> b!3818241 m!4361897))

(assert (=> b!3818241 m!4361897))

(declare-fun m!4361899 () Bool)

(assert (=> b!3818241 m!4361899))

(assert (=> b!3818241 m!4361891))

(assert (=> d!1130209 m!4361321))

(assert (=> d!1130209 m!4361889))

(declare-fun m!4361901 () Bool)

(assert (=> d!1130209 m!4361901))

(assert (=> d!1130209 m!4361889))

(declare-fun m!4361903 () Bool)

(assert (=> d!1130209 m!4361903))

(assert (=> d!1130209 m!4361321))

(declare-fun m!4361905 () Bool)

(assert (=> d!1130209 m!4361905))

(declare-fun m!4361907 () Bool)

(assert (=> d!1130209 m!4361907))

(declare-fun m!4361909 () Bool)

(assert (=> d!1130209 m!4361909))

(assert (=> b!3818247 m!4361893))

(assert (=> b!3818247 m!4361321))

(assert (=> b!3818247 m!4361321))

(assert (=> b!3818247 m!4361889))

(assert (=> b!3818247 m!4361889))

(assert (=> b!3818247 m!4361895))

(assert (=> b!3818245 m!4361893))

(assert (=> b!3818245 m!4361321))

(assert (=> b!3818245 m!4361321))

(assert (=> b!3818245 m!4361897))

(assert (=> b!3818245 m!4361897))

(assert (=> b!3818245 m!4361899))

(declare-fun m!4361911 () Bool)

(assert (=> b!3818244 m!4361911))

(declare-fun m!4361913 () Bool)

(assert (=> bm!280361 m!4361913))

(assert (=> b!3818246 m!4361905))

(assert (=> b!3818243 m!4361905))

(assert (=> b!3817892 d!1130209))

(declare-fun d!1130249 () Bool)

(assert (=> d!1130249 (= (++!10157 (++!10157 lt!1324694 lt!1324691) lt!1324696) (++!10157 lt!1324694 (++!10157 lt!1324691 lt!1324696)))))

(declare-fun lt!1324865 () Unit!58150)

(declare-fun choose!22488 (List!40517 List!40517 List!40517) Unit!58150)

(assert (=> d!1130249 (= lt!1324865 (choose!22488 lt!1324694 lt!1324691 lt!1324696))))

(assert (=> d!1130249 (= (lemmaConcatAssociativity!2194 lt!1324694 lt!1324691 lt!1324696) lt!1324865)))

(declare-fun bs!581014 () Bool)

(assert (= bs!581014 d!1130249))

(declare-fun m!4361915 () Bool)

(assert (=> bs!581014 m!4361915))

(assert (=> bs!581014 m!4361283))

(assert (=> bs!581014 m!4361281))

(assert (=> bs!581014 m!4361283))

(declare-fun m!4361917 () Bool)

(assert (=> bs!581014 m!4361917))

(assert (=> bs!581014 m!4361281))

(declare-fun m!4361919 () Bool)

(assert (=> bs!581014 m!4361919))

(assert (=> b!3817892 d!1130249))

(declare-fun b!3818251 () Bool)

(declare-fun res!1545721 () Bool)

(declare-fun e!2358623 () Bool)

(assert (=> b!3818251 (=> (not res!1545721) (not e!2358623))))

(declare-fun lt!1324866 () List!40519)

(assert (=> b!3818251 (= res!1545721 (= (size!30434 lt!1324866) (+ (size!30434 lt!1324693) (size!30434 (++!10156 lt!1324711 lt!1324704)))))))

(declare-fun b!3818252 () Bool)

(assert (=> b!3818252 (= e!2358623 (or (not (= (++!10156 lt!1324711 lt!1324704) Nil!40395)) (= lt!1324866 lt!1324693)))))

(declare-fun b!3818249 () Bool)

(declare-fun e!2358624 () List!40519)

(assert (=> b!3818249 (= e!2358624 (++!10156 lt!1324711 lt!1324704))))

(declare-fun b!3818250 () Bool)

(assert (=> b!3818250 (= e!2358624 (Cons!40395 (h!45815 lt!1324693) (++!10156 (t!308164 lt!1324693) (++!10156 lt!1324711 lt!1324704))))))

(declare-fun d!1130251 () Bool)

(assert (=> d!1130251 e!2358623))

(declare-fun res!1545720 () Bool)

(assert (=> d!1130251 (=> (not res!1545720) (not e!2358623))))

(assert (=> d!1130251 (= res!1545720 (= (content!5975 lt!1324866) ((_ map or) (content!5975 lt!1324693) (content!5975 (++!10156 lt!1324711 lt!1324704)))))))

(assert (=> d!1130251 (= lt!1324866 e!2358624)))

(declare-fun c!665045 () Bool)

(assert (=> d!1130251 (= c!665045 ((_ is Nil!40395) lt!1324693))))

(assert (=> d!1130251 (= (++!10156 lt!1324693 (++!10156 lt!1324711 lt!1324704)) lt!1324866)))

(assert (= (and d!1130251 c!665045) b!3818249))

(assert (= (and d!1130251 (not c!665045)) b!3818250))

(assert (= (and d!1130251 res!1545720) b!3818251))

(assert (= (and b!3818251 res!1545721) b!3818252))

(declare-fun m!4361921 () Bool)

(assert (=> b!3818251 m!4361921))

(declare-fun m!4361923 () Bool)

(assert (=> b!3818251 m!4361923))

(assert (=> b!3818251 m!4361291))

(declare-fun m!4361925 () Bool)

(assert (=> b!3818251 m!4361925))

(assert (=> b!3818250 m!4361291))

(declare-fun m!4361927 () Bool)

(assert (=> b!3818250 m!4361927))

(declare-fun m!4361929 () Bool)

(assert (=> d!1130251 m!4361929))

(declare-fun m!4361931 () Bool)

(assert (=> d!1130251 m!4361931))

(assert (=> d!1130251 m!4361291))

(declare-fun m!4361933 () Bool)

(assert (=> d!1130251 m!4361933))

(assert (=> b!3817892 d!1130251))

(declare-fun b!3818255 () Bool)

(declare-fun res!1545723 () Bool)

(declare-fun e!2358625 () Bool)

(assert (=> b!3818255 (=> (not res!1545723) (not e!2358625))))

(declare-fun lt!1324867 () List!40519)

(assert (=> b!3818255 (= res!1545723 (= (size!30434 lt!1324867) (+ (size!30434 lt!1324693) (size!30434 lt!1324711))))))

(declare-fun b!3818256 () Bool)

(assert (=> b!3818256 (= e!2358625 (or (not (= lt!1324711 Nil!40395)) (= lt!1324867 lt!1324693)))))

(declare-fun b!3818253 () Bool)

(declare-fun e!2358626 () List!40519)

(assert (=> b!3818253 (= e!2358626 lt!1324711)))

(declare-fun b!3818254 () Bool)

(assert (=> b!3818254 (= e!2358626 (Cons!40395 (h!45815 lt!1324693) (++!10156 (t!308164 lt!1324693) lt!1324711)))))

(declare-fun d!1130253 () Bool)

(assert (=> d!1130253 e!2358625))

(declare-fun res!1545722 () Bool)

(assert (=> d!1130253 (=> (not res!1545722) (not e!2358625))))

(assert (=> d!1130253 (= res!1545722 (= (content!5975 lt!1324867) ((_ map or) (content!5975 lt!1324693) (content!5975 lt!1324711))))))

(assert (=> d!1130253 (= lt!1324867 e!2358626)))

(declare-fun c!665046 () Bool)

(assert (=> d!1130253 (= c!665046 ((_ is Nil!40395) lt!1324693))))

(assert (=> d!1130253 (= (++!10156 lt!1324693 lt!1324711) lt!1324867)))

(assert (= (and d!1130253 c!665046) b!3818253))

(assert (= (and d!1130253 (not c!665046)) b!3818254))

(assert (= (and d!1130253 res!1545722) b!3818255))

(assert (= (and b!3818255 res!1545723) b!3818256))

(declare-fun m!4361935 () Bool)

(assert (=> b!3818255 m!4361935))

(assert (=> b!3818255 m!4361923))

(assert (=> b!3818255 m!4361675))

(declare-fun m!4361937 () Bool)

(assert (=> b!3818254 m!4361937))

(declare-fun m!4361939 () Bool)

(assert (=> d!1130253 m!4361939))

(assert (=> d!1130253 m!4361931))

(assert (=> d!1130253 m!4361683))

(assert (=> b!3817892 d!1130253))

(declare-fun d!1130255 () Bool)

(declare-fun e!2358629 () Bool)

(assert (=> d!1130255 e!2358629))

(declare-fun res!1545726 () Bool)

(assert (=> d!1130255 (=> (not res!1545726) (not e!2358629))))

(declare-fun append!1080 (Conc!12411 Token!11574) Conc!12411)

(assert (=> d!1130255 (= res!1545726 (isBalanced!3589 (append!1080 (c!664959 acc!335) (_1!22919 (v!38891 lt!1324705)))))))

(declare-fun lt!1324870 () BalanceConc!24416)

(assert (=> d!1130255 (= lt!1324870 (BalanceConc!24417 (append!1080 (c!664959 acc!335) (_1!22919 (v!38891 lt!1324705)))))))

(assert (=> d!1130255 (= (append!1078 acc!335 (_1!22919 (v!38891 lt!1324705))) lt!1324870)))

(declare-fun b!3818259 () Bool)

(declare-fun $colon+!279 (List!40519 Token!11574) List!40519)

(assert (=> b!3818259 (= e!2358629 (= (list!15028 lt!1324870) ($colon+!279 (list!15028 acc!335) (_1!22919 (v!38891 lt!1324705)))))))

(assert (= (and d!1130255 res!1545726) b!3818259))

(declare-fun m!4361941 () Bool)

(assert (=> d!1130255 m!4361941))

(assert (=> d!1130255 m!4361941))

(declare-fun m!4361943 () Bool)

(assert (=> d!1130255 m!4361943))

(declare-fun m!4361945 () Bool)

(assert (=> b!3818259 m!4361945))

(assert (=> b!3818259 m!4361311))

(assert (=> b!3818259 m!4361311))

(declare-fun m!4361947 () Bool)

(assert (=> b!3818259 m!4361947))

(assert (=> b!3817892 d!1130255))

(declare-fun d!1130257 () Bool)

(assert (=> d!1130257 (= (isEmpty!23816 lt!1324697) ((_ is Nil!40395) lt!1324697))))

(assert (=> b!3817892 d!1130257))

(declare-fun d!1130259 () Bool)

(assert (=> d!1130259 (= (list!15028 (_1!22918 lt!1324709)) (list!15031 (c!664959 (_1!22918 lt!1324709))))))

(declare-fun bs!581015 () Bool)

(assert (= bs!581015 d!1130259))

(declare-fun m!4361949 () Bool)

(assert (=> bs!581015 m!4361949))

(assert (=> b!3817892 d!1130259))

(declare-fun bm!280367 () Bool)

(declare-fun call!280372 () Option!8636)

(declare-fun maxPrefixOneRuleZipperSequenceV2!244 (LexerInterface!5807 Rule!12236 BalanceConc!24414 BalanceConc!24414) Option!8636)

(assert (=> bm!280367 (= call!280372 (maxPrefixOneRuleZipperSequenceV2!244 thiss!11876 (h!45814 rules!1265) input!678 totalInput!335))))

(declare-fun b!3818356 () Bool)

(declare-fun e!2358697 () Bool)

(declare-fun e!2358699 () Bool)

(assert (=> b!3818356 (= e!2358697 e!2358699)))

(declare-fun res!1545760 () Bool)

(assert (=> b!3818356 (=> (not res!1545760) (not e!2358699))))

(declare-fun lt!1324907 () Option!8636)

(assert (=> b!3818356 (= res!1545760 (= (_1!22919 (get!13397 lt!1324907)) (_1!22921 (get!13398 (maxPrefix!3118 thiss!11876 rules!1265 (list!15027 input!678))))))))

(declare-fun b!3818357 () Bool)

(assert (=> b!3818357 (= e!2358699 (= (list!15027 (_2!22919 (get!13397 lt!1324907))) (_2!22921 (get!13398 (maxPrefix!3118 thiss!11876 rules!1265 (list!15027 input!678))))))))

(declare-fun e!2358695 () Bool)

(declare-fun b!3818358 () Bool)

(assert (=> b!3818358 (= e!2358695 (= (list!15027 (_2!22919 (get!13397 lt!1324907))) (_2!22921 (get!13398 (maxPrefixZipper!551 thiss!11876 rules!1265 (list!15027 input!678))))))))

(declare-fun b!3818359 () Bool)

(declare-fun res!1545761 () Bool)

(declare-fun e!2358698 () Bool)

(assert (=> b!3818359 (=> (not res!1545761) (not e!2358698))))

(declare-fun e!2358696 () Bool)

(assert (=> b!3818359 (= res!1545761 e!2358696)))

(declare-fun res!1545764 () Bool)

(assert (=> b!3818359 (=> res!1545764 e!2358696)))

(assert (=> b!3818359 (= res!1545764 (not (isDefined!6798 lt!1324907)))))

(declare-fun b!3818360 () Bool)

(declare-fun e!2358694 () Option!8636)

(assert (=> b!3818360 (= e!2358694 call!280372)))

(declare-fun d!1130261 () Bool)

(assert (=> d!1130261 e!2358698))

(declare-fun res!1545763 () Bool)

(assert (=> d!1130261 (=> (not res!1545763) (not e!2358698))))

(assert (=> d!1130261 (= res!1545763 (= (isDefined!6798 lt!1324907) (isDefined!6799 (maxPrefixZipper!551 thiss!11876 rules!1265 (list!15027 input!678)))))))

(assert (=> d!1130261 (= lt!1324907 e!2358694)))

(declare-fun c!665053 () Bool)

(assert (=> d!1130261 (= c!665053 (and ((_ is Cons!40394) rules!1265) ((_ is Nil!40394) (t!308163 rules!1265))))))

(declare-fun lt!1324910 () Unit!58150)

(declare-fun lt!1324908 () Unit!58150)

(assert (=> d!1130261 (= lt!1324910 lt!1324908)))

(declare-fun lt!1324912 () List!40517)

(declare-fun lt!1324909 () List!40517)

(assert (=> d!1130261 (isPrefix!3327 lt!1324912 lt!1324909)))

(assert (=> d!1130261 (= lt!1324908 (lemmaIsPrefixRefl!2112 lt!1324912 lt!1324909))))

(assert (=> d!1130261 (= lt!1324909 (list!15027 input!678))))

(assert (=> d!1130261 (= lt!1324912 (list!15027 input!678))))

(assert (=> d!1130261 (rulesValidInductive!2186 thiss!11876 rules!1265)))

(assert (=> d!1130261 (= (maxPrefixZipperSequenceV2!607 thiss!11876 rules!1265 input!678 totalInput!335) lt!1324907)))

(declare-fun b!3818361 () Bool)

(assert (=> b!3818361 (= e!2358696 e!2358695)))

(declare-fun res!1545762 () Bool)

(assert (=> b!3818361 (=> (not res!1545762) (not e!2358695))))

(assert (=> b!3818361 (= res!1545762 (= (_1!22919 (get!13397 lt!1324907)) (_1!22921 (get!13398 (maxPrefixZipper!551 thiss!11876 rules!1265 (list!15027 input!678))))))))

(declare-fun b!3818362 () Bool)

(assert (=> b!3818362 (= e!2358698 e!2358697)))

(declare-fun res!1545765 () Bool)

(assert (=> b!3818362 (=> res!1545765 e!2358697)))

(assert (=> b!3818362 (= res!1545765 (not (isDefined!6798 lt!1324907)))))

(declare-fun b!3818363 () Bool)

(declare-fun lt!1324906 () Option!8636)

(declare-fun lt!1324911 () Option!8636)

(assert (=> b!3818363 (= e!2358694 (ite (and ((_ is None!8635) lt!1324906) ((_ is None!8635) lt!1324911)) None!8635 (ite ((_ is None!8635) lt!1324911) lt!1324906 (ite ((_ is None!8635) lt!1324906) lt!1324911 (ite (>= (size!30430 (_1!22919 (v!38891 lt!1324906))) (size!30430 (_1!22919 (v!38891 lt!1324911)))) lt!1324906 lt!1324911)))))))

(assert (=> b!3818363 (= lt!1324906 call!280372)))

(assert (=> b!3818363 (= lt!1324911 (maxPrefixZipperSequenceV2!607 thiss!11876 (t!308163 rules!1265) input!678 totalInput!335))))

(assert (= (and d!1130261 c!665053) b!3818360))

(assert (= (and d!1130261 (not c!665053)) b!3818363))

(assert (= (or b!3818360 b!3818363) bm!280367))

(assert (= (and d!1130261 res!1545763) b!3818359))

(assert (= (and b!3818359 (not res!1545764)) b!3818361))

(assert (= (and b!3818361 res!1545762) b!3818358))

(assert (= (and b!3818359 res!1545761) b!3818362))

(assert (= (and b!3818362 (not res!1545765)) b!3818356))

(assert (= (and b!3818356 res!1545760) b!3818357))

(assert (=> d!1130261 m!4361321))

(assert (=> d!1130261 m!4361889))

(assert (=> d!1130261 m!4361907))

(declare-fun m!4362005 () Bool)

(assert (=> d!1130261 m!4362005))

(declare-fun m!4362007 () Bool)

(assert (=> d!1130261 m!4362007))

(assert (=> d!1130261 m!4361889))

(assert (=> d!1130261 m!4361903))

(declare-fun m!4362009 () Bool)

(assert (=> d!1130261 m!4362009))

(assert (=> d!1130261 m!4361321))

(declare-fun m!4362011 () Bool)

(assert (=> b!3818356 m!4362011))

(assert (=> b!3818356 m!4361321))

(assert (=> b!3818356 m!4361321))

(assert (=> b!3818356 m!4361897))

(assert (=> b!3818356 m!4361897))

(assert (=> b!3818356 m!4361899))

(assert (=> b!3818358 m!4362011))

(declare-fun m!4362013 () Bool)

(assert (=> b!3818358 m!4362013))

(assert (=> b!3818358 m!4361321))

(assert (=> b!3818358 m!4361889))

(assert (=> b!3818358 m!4361895))

(assert (=> b!3818358 m!4361321))

(assert (=> b!3818358 m!4361889))

(assert (=> b!3818357 m!4361321))

(assert (=> b!3818357 m!4361897))

(assert (=> b!3818357 m!4362011))

(assert (=> b!3818357 m!4361321))

(assert (=> b!3818357 m!4362013))

(assert (=> b!3818357 m!4361897))

(assert (=> b!3818357 m!4361899))

(declare-fun m!4362015 () Bool)

(assert (=> b!3818363 m!4362015))

(declare-fun m!4362017 () Bool)

(assert (=> bm!280367 m!4362017))

(assert (=> b!3818361 m!4362011))

(assert (=> b!3818361 m!4361321))

(assert (=> b!3818361 m!4361321))

(assert (=> b!3818361 m!4361889))

(assert (=> b!3818361 m!4361889))

(assert (=> b!3818361 m!4361895))

(assert (=> b!3818359 m!4362009))

(assert (=> b!3818362 m!4362009))

(assert (=> b!3817903 d!1130261))

(declare-fun d!1130273 () Bool)

(declare-fun c!665054 () Bool)

(assert (=> d!1130273 (= c!665054 ((_ is Node!12410) (c!664958 input!678)))))

(declare-fun e!2358700 () Bool)

(assert (=> d!1130273 (= (inv!54408 (c!664958 input!678)) e!2358700)))

(declare-fun b!3818364 () Bool)

(assert (=> b!3818364 (= e!2358700 (inv!54418 (c!664958 input!678)))))

(declare-fun b!3818365 () Bool)

(declare-fun e!2358701 () Bool)

(assert (=> b!3818365 (= e!2358700 e!2358701)))

(declare-fun res!1545766 () Bool)

(assert (=> b!3818365 (= res!1545766 (not ((_ is Leaf!19217) (c!664958 input!678))))))

(assert (=> b!3818365 (=> res!1545766 e!2358701)))

(declare-fun b!3818366 () Bool)

(assert (=> b!3818366 (= e!2358701 (inv!54419 (c!664958 input!678)))))

(assert (= (and d!1130273 c!665054) b!3818364))

(assert (= (and d!1130273 (not c!665054)) b!3818365))

(assert (= (and b!3818365 (not res!1545766)) b!3818366))

(declare-fun m!4362019 () Bool)

(assert (=> b!3818364 m!4362019))

(declare-fun m!4362021 () Bool)

(assert (=> b!3818366 m!4362021))

(assert (=> b!3817896 d!1130273))

(declare-fun d!1130275 () Bool)

(declare-fun res!1545769 () Bool)

(declare-fun e!2358704 () Bool)

(assert (=> d!1130275 (=> (not res!1545769) (not e!2358704))))

(declare-fun rulesValid!2399 (LexerInterface!5807 List!40518) Bool)

(assert (=> d!1130275 (= res!1545769 (rulesValid!2399 thiss!11876 rules!1265))))

(assert (=> d!1130275 (= (rulesInvariant!5150 thiss!11876 rules!1265) e!2358704)))

(declare-fun b!3818369 () Bool)

(declare-datatypes ((List!40520 0))(
  ( (Nil!40396) (Cons!40396 (h!45816 String!45922) (t!308173 List!40520)) )
))
(declare-fun noDuplicateTag!2400 (LexerInterface!5807 List!40518 List!40520) Bool)

(assert (=> b!3818369 (= e!2358704 (noDuplicateTag!2400 thiss!11876 rules!1265 Nil!40396))))

(assert (= (and d!1130275 res!1545769) b!3818369))

(declare-fun m!4362023 () Bool)

(assert (=> d!1130275 m!4362023))

(declare-fun m!4362025 () Bool)

(assert (=> b!3818369 m!4362025))

(assert (=> b!3817907 d!1130275))

(declare-fun b!3818370 () Bool)

(declare-fun e!2358707 () Bool)

(declare-fun lt!1324913 () tuple2!39572)

(assert (=> b!3818370 (= e!2358707 (= (_2!22920 lt!1324913) lt!1324690))))

(declare-fun d!1130277 () Bool)

(assert (=> d!1130277 e!2358707))

(declare-fun c!665056 () Bool)

(assert (=> d!1130277 (= c!665056 (> (size!30434 (_1!22920 lt!1324913)) 0))))

(declare-fun e!2358706 () tuple2!39572)

(assert (=> d!1130277 (= lt!1324913 e!2358706)))

(declare-fun c!665055 () Bool)

(declare-fun lt!1324915 () Option!8637)

(assert (=> d!1130277 (= c!665055 ((_ is Some!8636) lt!1324915))))

(assert (=> d!1130277 (= lt!1324915 (maxPrefix!3118 thiss!11876 rules!1265 lt!1324690))))

(assert (=> d!1130277 (= (lexList!1577 thiss!11876 rules!1265 lt!1324690) lt!1324913)))

(declare-fun b!3818371 () Bool)

(declare-fun lt!1324914 () tuple2!39572)

(assert (=> b!3818371 (= e!2358706 (tuple2!39573 (Cons!40395 (_1!22921 (v!38896 lt!1324915)) (_1!22920 lt!1324914)) (_2!22920 lt!1324914)))))

(assert (=> b!3818371 (= lt!1324914 (lexList!1577 thiss!11876 rules!1265 (_2!22921 (v!38896 lt!1324915))))))

(declare-fun b!3818372 () Bool)

(declare-fun e!2358705 () Bool)

(assert (=> b!3818372 (= e!2358705 (not (isEmpty!23816 (_1!22920 lt!1324913))))))

(declare-fun b!3818373 () Bool)

(assert (=> b!3818373 (= e!2358707 e!2358705)))

(declare-fun res!1545770 () Bool)

(assert (=> b!3818373 (= res!1545770 (< (size!30435 (_2!22920 lt!1324913)) (size!30435 lt!1324690)))))

(assert (=> b!3818373 (=> (not res!1545770) (not e!2358705))))

(declare-fun b!3818374 () Bool)

(assert (=> b!3818374 (= e!2358706 (tuple2!39573 Nil!40395 lt!1324690))))

(assert (= (and d!1130277 c!665055) b!3818371))

(assert (= (and d!1130277 (not c!665055)) b!3818374))

(assert (= (and d!1130277 c!665056) b!3818373))

(assert (= (and d!1130277 (not c!665056)) b!3818370))

(assert (= (and b!3818373 res!1545770) b!3818372))

(declare-fun m!4362027 () Bool)

(assert (=> d!1130277 m!4362027))

(declare-fun m!4362029 () Bool)

(assert (=> d!1130277 m!4362029))

(declare-fun m!4362031 () Bool)

(assert (=> b!3818371 m!4362031))

(declare-fun m!4362033 () Bool)

(assert (=> b!3818372 m!4362033))

(declare-fun m!4362035 () Bool)

(assert (=> b!3818373 m!4362035))

(declare-fun m!4362037 () Bool)

(assert (=> b!3818373 m!4362037))

(assert (=> b!3817894 d!1130277))

(declare-fun b!3818377 () Bool)

(declare-fun res!1545772 () Bool)

(declare-fun e!2358708 () Bool)

(assert (=> b!3818377 (=> (not res!1545772) (not e!2358708))))

(declare-fun lt!1324916 () List!40519)

(assert (=> b!3818377 (= res!1545772 (= (size!30434 lt!1324916) (+ (size!30434 lt!1324697) (size!30434 lt!1324704))))))

(declare-fun b!3818378 () Bool)

(assert (=> b!3818378 (= e!2358708 (or (not (= lt!1324704 Nil!40395)) (= lt!1324916 lt!1324697)))))

(declare-fun b!3818375 () Bool)

(declare-fun e!2358709 () List!40519)

(assert (=> b!3818375 (= e!2358709 lt!1324704)))

(declare-fun b!3818376 () Bool)

(assert (=> b!3818376 (= e!2358709 (Cons!40395 (h!45815 lt!1324697) (++!10156 (t!308164 lt!1324697) lt!1324704)))))

(declare-fun d!1130279 () Bool)

(assert (=> d!1130279 e!2358708))

(declare-fun res!1545771 () Bool)

(assert (=> d!1130279 (=> (not res!1545771) (not e!2358708))))

(assert (=> d!1130279 (= res!1545771 (= (content!5975 lt!1324916) ((_ map or) (content!5975 lt!1324697) (content!5975 lt!1324704))))))

(assert (=> d!1130279 (= lt!1324916 e!2358709)))

(declare-fun c!665057 () Bool)

(assert (=> d!1130279 (= c!665057 ((_ is Nil!40395) lt!1324697))))

(assert (=> d!1130279 (= (++!10156 lt!1324697 lt!1324704) lt!1324916)))

(assert (= (and d!1130279 c!665057) b!3818375))

(assert (= (and d!1130279 (not c!665057)) b!3818376))

(assert (= (and d!1130279 res!1545771) b!3818377))

(assert (= (and b!3818377 res!1545772) b!3818378))

(declare-fun m!4362039 () Bool)

(assert (=> b!3818377 m!4362039))

(declare-fun m!4362041 () Bool)

(assert (=> b!3818377 m!4362041))

(assert (=> b!3818377 m!4361677))

(declare-fun m!4362043 () Bool)

(assert (=> b!3818376 m!4362043))

(declare-fun m!4362045 () Bool)

(assert (=> d!1130279 m!4362045))

(declare-fun m!4362047 () Bool)

(assert (=> d!1130279 m!4362047))

(assert (=> d!1130279 m!4361685))

(assert (=> b!3817894 d!1130279))

(declare-fun d!1130281 () Bool)

(assert (=> d!1130281 (= (isEmpty!23818 (list!15027 (_2!22918 lt!1324703))) ((_ is Nil!40393) (list!15027 (_2!22918 lt!1324703))))))

(assert (=> b!3817905 d!1130281))

(declare-fun d!1130283 () Bool)

(assert (=> d!1130283 (= (list!15027 (_2!22918 lt!1324703)) (list!15032 (c!664958 (_2!22918 lt!1324703))))))

(declare-fun bs!581020 () Bool)

(assert (= bs!581020 d!1130283))

(declare-fun m!4362049 () Bool)

(assert (=> bs!581020 m!4362049))

(assert (=> b!3817905 d!1130283))

(declare-fun d!1130285 () Bool)

(declare-fun e!2358712 () Bool)

(assert (=> d!1130285 e!2358712))

(declare-fun res!1545775 () Bool)

(assert (=> d!1130285 (=> res!1545775 e!2358712)))

(declare-fun lt!1324919 () Bool)

(assert (=> d!1130285 (= res!1545775 (not lt!1324919))))

(declare-fun drop!2127 (List!40517 Int) List!40517)

(assert (=> d!1130285 (= lt!1324919 (= lt!1324687 (drop!2127 lt!1324707 (- (size!30435 lt!1324707) (size!30435 lt!1324687)))))))

(assert (=> d!1130285 (= (isSuffix!990 lt!1324687 lt!1324707) lt!1324919)))

(declare-fun b!3818381 () Bool)

(assert (=> b!3818381 (= e!2358712 (>= (size!30435 lt!1324707) (size!30435 lt!1324687)))))

(assert (= (and d!1130285 (not res!1545775)) b!3818381))

(declare-fun m!4362051 () Bool)

(assert (=> d!1130285 m!4362051))

(declare-fun m!4362053 () Bool)

(assert (=> d!1130285 m!4362053))

(declare-fun m!4362055 () Bool)

(assert (=> d!1130285 m!4362055))

(assert (=> b!3818381 m!4362051))

(assert (=> b!3818381 m!4362053))

(assert (=> b!3817895 d!1130285))

(declare-fun d!1130287 () Bool)

(declare-fun e!2358713 () Bool)

(assert (=> d!1130287 e!2358713))

(declare-fun res!1545776 () Bool)

(assert (=> d!1130287 (=> res!1545776 e!2358713)))

(declare-fun lt!1324920 () Bool)

(assert (=> d!1130287 (= res!1545776 (not lt!1324920))))

(assert (=> d!1130287 (= lt!1324920 (= lt!1324687 (drop!2127 lt!1324699 (- (size!30435 lt!1324699) (size!30435 lt!1324687)))))))

(assert (=> d!1130287 (= (isSuffix!990 lt!1324687 lt!1324699) lt!1324920)))

(declare-fun b!3818382 () Bool)

(assert (=> b!3818382 (= e!2358713 (>= (size!30435 lt!1324699) (size!30435 lt!1324687)))))

(assert (= (and d!1130287 (not res!1545776)) b!3818382))

(declare-fun m!4362057 () Bool)

(assert (=> d!1130287 m!4362057))

(assert (=> d!1130287 m!4362053))

(declare-fun m!4362059 () Bool)

(assert (=> d!1130287 m!4362059))

(assert (=> b!3818382 m!4362057))

(assert (=> b!3818382 m!4362053))

(assert (=> b!3817895 d!1130287))

(declare-fun d!1130289 () Bool)

(assert (=> d!1130289 (isSuffix!990 lt!1324687 (++!10157 lt!1324694 lt!1324687))))

(declare-fun lt!1324923 () Unit!58150)

(declare-fun choose!22490 (List!40517 List!40517) Unit!58150)

(assert (=> d!1130289 (= lt!1324923 (choose!22490 lt!1324694 lt!1324687))))

(assert (=> d!1130289 (= (lemmaConcatTwoListThenFSndIsSuffix!675 lt!1324694 lt!1324687) lt!1324923)))

(declare-fun bs!581021 () Bool)

(assert (= bs!581021 d!1130289))

(assert (=> bs!581021 m!4361317))

(assert (=> bs!581021 m!4361317))

(declare-fun m!4362061 () Bool)

(assert (=> bs!581021 m!4362061))

(declare-fun m!4362063 () Bool)

(assert (=> bs!581021 m!4362063))

(assert (=> b!3817895 d!1130289))

(declare-fun b!3818383 () Bool)

(declare-fun e!2358716 () tuple2!39568)

(assert (=> b!3818383 (= e!2358716 (tuple2!39569 (BalanceConc!24417 Empty!12411) totalInput!335))))

(declare-fun b!3818384 () Bool)

(declare-fun res!1545779 () Bool)

(declare-fun e!2358714 () Bool)

(assert (=> b!3818384 (=> (not res!1545779) (not e!2358714))))

(declare-fun lt!1324924 () tuple2!39568)

(assert (=> b!3818384 (= res!1545779 (= (list!15028 (_1!22918 lt!1324924)) (_1!22920 (lexList!1577 thiss!11876 rules!1265 (list!15027 totalInput!335)))))))

(declare-fun b!3818385 () Bool)

(assert (=> b!3818385 (= e!2358714 (= (list!15027 (_2!22918 lt!1324924)) (_2!22920 (lexList!1577 thiss!11876 rules!1265 (list!15027 totalInput!335)))))))

(declare-fun b!3818386 () Bool)

(declare-fun e!2358715 () Bool)

(assert (=> b!3818386 (= e!2358715 (= (list!15027 (_2!22918 lt!1324924)) (list!15027 totalInput!335)))))

(declare-fun b!3818387 () Bool)

(declare-fun lt!1324925 () tuple2!39568)

(declare-fun lt!1324926 () Option!8636)

(assert (=> b!3818387 (= e!2358716 (tuple2!39569 (prepend!1368 (_1!22918 lt!1324925) (_1!22919 (v!38891 lt!1324926))) (_2!22918 lt!1324925)))))

(assert (=> b!3818387 (= lt!1324925 (lexRec!831 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324926))))))

(declare-fun d!1130291 () Bool)

(assert (=> d!1130291 e!2358714))

(declare-fun res!1545777 () Bool)

(assert (=> d!1130291 (=> (not res!1545777) (not e!2358714))))

(assert (=> d!1130291 (= res!1545777 e!2358715)))

(declare-fun c!665058 () Bool)

(assert (=> d!1130291 (= c!665058 (> (size!30437 (_1!22918 lt!1324924)) 0))))

(assert (=> d!1130291 (= lt!1324924 e!2358716)))

(declare-fun c!665059 () Bool)

(assert (=> d!1130291 (= c!665059 ((_ is Some!8635) lt!1324926))))

(assert (=> d!1130291 (= lt!1324926 (maxPrefixZipperSequence!1213 thiss!11876 rules!1265 totalInput!335))))

(assert (=> d!1130291 (= (lexRec!831 thiss!11876 rules!1265 totalInput!335) lt!1324924)))

(declare-fun b!3818388 () Bool)

(declare-fun e!2358717 () Bool)

(assert (=> b!3818388 (= e!2358717 (not (isEmpty!23820 (_1!22918 lt!1324924))))))

(declare-fun b!3818389 () Bool)

(assert (=> b!3818389 (= e!2358715 e!2358717)))

(declare-fun res!1545778 () Bool)

(assert (=> b!3818389 (= res!1545778 (< (size!30438 (_2!22918 lt!1324924)) (size!30438 totalInput!335)))))

(assert (=> b!3818389 (=> (not res!1545778) (not e!2358717))))

(assert (= (and d!1130291 c!665059) b!3818387))

(assert (= (and d!1130291 (not c!665059)) b!3818383))

(assert (= (and d!1130291 c!665058) b!3818389))

(assert (= (and d!1130291 (not c!665058)) b!3818386))

(assert (= (and b!3818389 res!1545778) b!3818388))

(assert (= (and d!1130291 res!1545777) b!3818384))

(assert (= (and b!3818384 res!1545779) b!3818385))

(declare-fun m!4362065 () Bool)

(assert (=> b!3818384 m!4362065))

(assert (=> b!3818384 m!4361319))

(assert (=> b!3818384 m!4361319))

(declare-fun m!4362067 () Bool)

(assert (=> b!3818384 m!4362067))

(declare-fun m!4362069 () Bool)

(assert (=> b!3818388 m!4362069))

(declare-fun m!4362071 () Bool)

(assert (=> d!1130291 m!4362071))

(declare-fun m!4362073 () Bool)

(assert (=> d!1130291 m!4362073))

(declare-fun m!4362075 () Bool)

(assert (=> b!3818387 m!4362075))

(declare-fun m!4362077 () Bool)

(assert (=> b!3818387 m!4362077))

(declare-fun m!4362079 () Bool)

(assert (=> b!3818389 m!4362079))

(declare-fun m!4362081 () Bool)

(assert (=> b!3818389 m!4362081))

(declare-fun m!4362083 () Bool)

(assert (=> b!3818386 m!4362083))

(assert (=> b!3818386 m!4361319))

(assert (=> b!3818385 m!4362083))

(assert (=> b!3818385 m!4361319))

(assert (=> b!3818385 m!4361319))

(assert (=> b!3818385 m!4362067))

(assert (=> b!3817898 d!1130291))

(declare-fun b!3818398 () Bool)

(declare-fun res!1545790 () Bool)

(declare-fun e!2358720 () Bool)

(assert (=> b!3818398 (=> (not res!1545790) (not e!2358720))))

(declare-fun ++!10160 (Conc!12411 Conc!12411) Conc!12411)

(assert (=> b!3818398 (= res!1545790 (isBalanced!3589 (++!10160 (c!664959 acc!335) (c!664959 (_1!22918 lt!1324698)))))))

(declare-fun b!3818399 () Bool)

(declare-fun res!1545789 () Bool)

(assert (=> b!3818399 (=> (not res!1545789) (not e!2358720))))

(declare-fun height!1806 (Conc!12411) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3818399 (= res!1545789 (<= (height!1806 (++!10160 (c!664959 acc!335) (c!664959 (_1!22918 lt!1324698)))) (+ (max!0 (height!1806 (c!664959 acc!335)) (height!1806 (c!664959 (_1!22918 lt!1324698)))) 1)))))

(declare-fun b!3818401 () Bool)

(declare-fun lt!1324929 () BalanceConc!24416)

(assert (=> b!3818401 (= e!2358720 (= (list!15028 lt!1324929) (++!10156 (list!15028 acc!335) (list!15028 (_1!22918 lt!1324698)))))))

(declare-fun b!3818400 () Bool)

(declare-fun res!1545788 () Bool)

(assert (=> b!3818400 (=> (not res!1545788) (not e!2358720))))

(assert (=> b!3818400 (= res!1545788 (>= (height!1806 (++!10160 (c!664959 acc!335) (c!664959 (_1!22918 lt!1324698)))) (max!0 (height!1806 (c!664959 acc!335)) (height!1806 (c!664959 (_1!22918 lt!1324698))))))))

(declare-fun d!1130293 () Bool)

(assert (=> d!1130293 e!2358720))

(declare-fun res!1545791 () Bool)

(assert (=> d!1130293 (=> (not res!1545791) (not e!2358720))))

(declare-fun appendAssocInst!865 (Conc!12411 Conc!12411) Bool)

(assert (=> d!1130293 (= res!1545791 (appendAssocInst!865 (c!664959 acc!335) (c!664959 (_1!22918 lt!1324698))))))

(assert (=> d!1130293 (= lt!1324929 (BalanceConc!24417 (++!10160 (c!664959 acc!335) (c!664959 (_1!22918 lt!1324698)))))))

(assert (=> d!1130293 (= (++!10158 acc!335 (_1!22918 lt!1324698)) lt!1324929)))

(assert (= (and d!1130293 res!1545791) b!3818398))

(assert (= (and b!3818398 res!1545790) b!3818399))

(assert (= (and b!3818399 res!1545789) b!3818400))

(assert (= (and b!3818400 res!1545788) b!3818401))

(declare-fun m!4362085 () Bool)

(assert (=> b!3818399 m!4362085))

(declare-fun m!4362087 () Bool)

(assert (=> b!3818399 m!4362087))

(declare-fun m!4362089 () Bool)

(assert (=> b!3818399 m!4362089))

(assert (=> b!3818399 m!4362085))

(declare-fun m!4362091 () Bool)

(assert (=> b!3818399 m!4362091))

(declare-fun m!4362093 () Bool)

(assert (=> b!3818399 m!4362093))

(assert (=> b!3818399 m!4362087))

(assert (=> b!3818399 m!4362091))

(assert (=> b!3818400 m!4362085))

(assert (=> b!3818400 m!4362087))

(assert (=> b!3818400 m!4362089))

(assert (=> b!3818400 m!4362085))

(assert (=> b!3818400 m!4362091))

(assert (=> b!3818400 m!4362093))

(assert (=> b!3818400 m!4362087))

(assert (=> b!3818400 m!4362091))

(declare-fun m!4362095 () Bool)

(assert (=> b!3818401 m!4362095))

(assert (=> b!3818401 m!4361311))

(declare-fun m!4362097 () Bool)

(assert (=> b!3818401 m!4362097))

(assert (=> b!3818401 m!4361311))

(assert (=> b!3818401 m!4362097))

(declare-fun m!4362099 () Bool)

(assert (=> b!3818401 m!4362099))

(assert (=> b!3818398 m!4362091))

(assert (=> b!3818398 m!4362091))

(declare-fun m!4362101 () Bool)

(assert (=> b!3818398 m!4362101))

(declare-fun m!4362103 () Bool)

(assert (=> d!1130293 m!4362103))

(assert (=> d!1130293 m!4362091))

(assert (=> b!3817898 d!1130293))

(declare-fun d!1130295 () Bool)

(assert (=> d!1130295 (= (list!15028 (++!10158 acc!335 (_1!22918 lt!1324698))) (list!15031 (c!664959 (++!10158 acc!335 (_1!22918 lt!1324698)))))))

(declare-fun bs!581022 () Bool)

(assert (= bs!581022 d!1130295))

(declare-fun m!4362105 () Bool)

(assert (=> bs!581022 m!4362105))

(assert (=> b!3817898 d!1130295))

(declare-fun d!1130297 () Bool)

(assert (=> d!1130297 (= (list!15028 (_1!22918 lt!1324706)) (list!15031 (c!664959 (_1!22918 lt!1324706))))))

(declare-fun bs!581023 () Bool)

(assert (= bs!581023 d!1130297))

(declare-fun m!4362107 () Bool)

(assert (=> bs!581023 m!4362107))

(assert (=> b!3817898 d!1130297))

(declare-fun b!3818402 () Bool)

(declare-fun e!2358723 () tuple2!39568)

(assert (=> b!3818402 (= e!2358723 (tuple2!39569 (BalanceConc!24417 Empty!12411) input!678))))

(declare-fun b!3818403 () Bool)

(declare-fun res!1545794 () Bool)

(declare-fun e!2358721 () Bool)

(assert (=> b!3818403 (=> (not res!1545794) (not e!2358721))))

(declare-fun lt!1324930 () tuple2!39568)

(assert (=> b!3818403 (= res!1545794 (= (list!15028 (_1!22918 lt!1324930)) (_1!22920 (lexList!1577 thiss!11876 rules!1265 (list!15027 input!678)))))))

(declare-fun b!3818404 () Bool)

(assert (=> b!3818404 (= e!2358721 (= (list!15027 (_2!22918 lt!1324930)) (_2!22920 (lexList!1577 thiss!11876 rules!1265 (list!15027 input!678)))))))

(declare-fun b!3818405 () Bool)

(declare-fun e!2358722 () Bool)

(assert (=> b!3818405 (= e!2358722 (= (list!15027 (_2!22918 lt!1324930)) (list!15027 input!678)))))

(declare-fun b!3818406 () Bool)

(declare-fun lt!1324931 () tuple2!39568)

(declare-fun lt!1324932 () Option!8636)

(assert (=> b!3818406 (= e!2358723 (tuple2!39569 (prepend!1368 (_1!22918 lt!1324931) (_1!22919 (v!38891 lt!1324932))) (_2!22918 lt!1324931)))))

(assert (=> b!3818406 (= lt!1324931 (lexRec!831 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324932))))))

(declare-fun d!1130299 () Bool)

(assert (=> d!1130299 e!2358721))

(declare-fun res!1545792 () Bool)

(assert (=> d!1130299 (=> (not res!1545792) (not e!2358721))))

(assert (=> d!1130299 (= res!1545792 e!2358722)))

(declare-fun c!665063 () Bool)

(assert (=> d!1130299 (= c!665063 (> (size!30437 (_1!22918 lt!1324930)) 0))))

(assert (=> d!1130299 (= lt!1324930 e!2358723)))

(declare-fun c!665064 () Bool)

(assert (=> d!1130299 (= c!665064 ((_ is Some!8635) lt!1324932))))

(assert (=> d!1130299 (= lt!1324932 (maxPrefixZipperSequence!1213 thiss!11876 rules!1265 input!678))))

(assert (=> d!1130299 (= (lexRec!831 thiss!11876 rules!1265 input!678) lt!1324930)))

(declare-fun b!3818407 () Bool)

(declare-fun e!2358724 () Bool)

(assert (=> b!3818407 (= e!2358724 (not (isEmpty!23820 (_1!22918 lt!1324930))))))

(declare-fun b!3818408 () Bool)

(assert (=> b!3818408 (= e!2358722 e!2358724)))

(declare-fun res!1545793 () Bool)

(assert (=> b!3818408 (= res!1545793 (< (size!30438 (_2!22918 lt!1324930)) (size!30438 input!678)))))

(assert (=> b!3818408 (=> (not res!1545793) (not e!2358724))))

(assert (= (and d!1130299 c!665064) b!3818406))

(assert (= (and d!1130299 (not c!665064)) b!3818402))

(assert (= (and d!1130299 c!665063) b!3818408))

(assert (= (and d!1130299 (not c!665063)) b!3818405))

(assert (= (and b!3818408 res!1545793) b!3818407))

(assert (= (and d!1130299 res!1545792) b!3818403))

(assert (= (and b!3818403 res!1545794) b!3818404))

(declare-fun m!4362109 () Bool)

(assert (=> b!3818403 m!4362109))

(assert (=> b!3818403 m!4361321))

(assert (=> b!3818403 m!4361321))

(declare-fun m!4362111 () Bool)

(assert (=> b!3818403 m!4362111))

(declare-fun m!4362113 () Bool)

(assert (=> b!3818407 m!4362113))

(declare-fun m!4362115 () Bool)

(assert (=> d!1130299 m!4362115))

(assert (=> d!1130299 m!4361295))

(declare-fun m!4362117 () Bool)

(assert (=> b!3818406 m!4362117))

(declare-fun m!4362119 () Bool)

(assert (=> b!3818406 m!4362119))

(declare-fun m!4362121 () Bool)

(assert (=> b!3818408 m!4362121))

(declare-fun m!4362123 () Bool)

(assert (=> b!3818408 m!4362123))

(declare-fun m!4362125 () Bool)

(assert (=> b!3818405 m!4362125))

(assert (=> b!3818405 m!4361321))

(assert (=> b!3818404 m!4362125))

(assert (=> b!3818404 m!4361321))

(assert (=> b!3818404 m!4361321))

(assert (=> b!3818404 m!4362111))

(assert (=> b!3817898 d!1130299))

(declare-fun d!1130301 () Bool)

(assert (=> d!1130301 (= (isEmpty!23818 lt!1324702) ((_ is Nil!40393) lt!1324702))))

(assert (=> b!3817909 d!1130301))

(declare-fun b!3818409 () Bool)

(declare-fun e!2358725 () List!40517)

(assert (=> b!3818409 (= e!2358725 lt!1324687)))

(declare-fun lt!1324933 () List!40517)

(declare-fun e!2358726 () Bool)

(declare-fun b!3818412 () Bool)

(assert (=> b!3818412 (= e!2358726 (or (not (= lt!1324687 Nil!40393)) (= lt!1324933 lt!1324694)))))

(declare-fun b!3818411 () Bool)

(declare-fun res!1545796 () Bool)

(assert (=> b!3818411 (=> (not res!1545796) (not e!2358726))))

(assert (=> b!3818411 (= res!1545796 (= (size!30435 lt!1324933) (+ (size!30435 lt!1324694) (size!30435 lt!1324687))))))

(declare-fun d!1130303 () Bool)

(assert (=> d!1130303 e!2358726))

(declare-fun res!1545795 () Bool)

(assert (=> d!1130303 (=> (not res!1545795) (not e!2358726))))

(assert (=> d!1130303 (= res!1545795 (= (content!5974 lt!1324933) ((_ map or) (content!5974 lt!1324694) (content!5974 lt!1324687))))))

(assert (=> d!1130303 (= lt!1324933 e!2358725)))

(declare-fun c!665065 () Bool)

(assert (=> d!1130303 (= c!665065 ((_ is Nil!40393) lt!1324694))))

(assert (=> d!1130303 (= (++!10157 lt!1324694 lt!1324687) lt!1324933)))

(declare-fun b!3818410 () Bool)

(assert (=> b!3818410 (= e!2358725 (Cons!40393 (h!45813 lt!1324694) (++!10157 (t!308162 lt!1324694) lt!1324687)))))

(assert (= (and d!1130303 c!665065) b!3818409))

(assert (= (and d!1130303 (not c!665065)) b!3818410))

(assert (= (and d!1130303 res!1545795) b!3818411))

(assert (= (and b!3818411 res!1545796) b!3818412))

(declare-fun m!4362127 () Bool)

(assert (=> b!3818411 m!4362127))

(assert (=> b!3818411 m!4361621))

(assert (=> b!3818411 m!4362053))

(declare-fun m!4362129 () Bool)

(assert (=> d!1130303 m!4362129))

(assert (=> d!1130303 m!4361627))

(declare-fun m!4362131 () Bool)

(assert (=> d!1130303 m!4362131))

(declare-fun m!4362133 () Bool)

(assert (=> b!3818410 m!4362133))

(assert (=> b!3817899 d!1130303))

(declare-fun d!1130305 () Bool)

(assert (=> d!1130305 (= (list!15027 totalInput!335) (list!15032 (c!664958 totalInput!335)))))

(declare-fun bs!581024 () Bool)

(assert (= bs!581024 d!1130305))

(declare-fun m!4362135 () Bool)

(assert (=> bs!581024 m!4362135))

(assert (=> b!3817899 d!1130305))

(declare-fun d!1130307 () Bool)

(assert (=> d!1130307 (= (list!15027 input!678) (list!15032 (c!664958 input!678)))))

(declare-fun bs!581025 () Bool)

(assert (= bs!581025 d!1130307))

(declare-fun m!4362137 () Bool)

(assert (=> bs!581025 m!4362137))

(assert (=> b!3817899 d!1130307))

(declare-fun d!1130309 () Bool)

(assert (=> d!1130309 (= (list!15027 treated!13) (list!15032 (c!664958 treated!13)))))

(declare-fun bs!581026 () Bool)

(assert (= bs!581026 d!1130309))

(declare-fun m!4362139 () Bool)

(assert (=> bs!581026 m!4362139))

(assert (=> b!3817899 d!1130309))

(declare-fun d!1130311 () Bool)

(declare-fun e!2358729 () Bool)

(assert (=> d!1130311 e!2358729))

(declare-fun res!1545799 () Bool)

(assert (=> d!1130311 (=> (not res!1545799) (not e!2358729))))

(declare-fun prepend!1370 (Conc!12411 Token!11574) Conc!12411)

(assert (=> d!1130311 (= res!1545799 (isBalanced!3589 (prepend!1370 (c!664959 (_1!22918 lt!1324692)) (_1!22919 (v!38891 lt!1324688)))))))

(declare-fun lt!1324936 () BalanceConc!24416)

(assert (=> d!1130311 (= lt!1324936 (BalanceConc!24417 (prepend!1370 (c!664959 (_1!22918 lt!1324692)) (_1!22919 (v!38891 lt!1324688)))))))

(assert (=> d!1130311 (= (prepend!1368 (_1!22918 lt!1324692) (_1!22919 (v!38891 lt!1324688))) lt!1324936)))

(declare-fun b!3818415 () Bool)

(assert (=> b!3818415 (= e!2358729 (= (list!15028 lt!1324936) (Cons!40395 (_1!22919 (v!38891 lt!1324688)) (list!15028 (_1!22918 lt!1324692)))))))

(assert (= (and d!1130311 res!1545799) b!3818415))

(declare-fun m!4362141 () Bool)

(assert (=> d!1130311 m!4362141))

(assert (=> d!1130311 m!4362141))

(declare-fun m!4362143 () Bool)

(assert (=> d!1130311 m!4362143))

(declare-fun m!4362145 () Bool)

(assert (=> b!3818415 m!4362145))

(declare-fun m!4362147 () Bool)

(assert (=> b!3818415 m!4362147))

(assert (=> b!3817897 d!1130311))

(declare-fun b!3818416 () Bool)

(declare-fun e!2358732 () tuple2!39568)

(assert (=> b!3818416 (= e!2358732 (tuple2!39569 (BalanceConc!24417 Empty!12411) (_2!22919 (v!38891 lt!1324688))))))

(declare-fun b!3818417 () Bool)

(declare-fun res!1545802 () Bool)

(declare-fun e!2358730 () Bool)

(assert (=> b!3818417 (=> (not res!1545802) (not e!2358730))))

(declare-fun lt!1324937 () tuple2!39568)

(assert (=> b!3818417 (= res!1545802 (= (list!15028 (_1!22918 lt!1324937)) (_1!22920 (lexList!1577 thiss!11876 rules!1265 (list!15027 (_2!22919 (v!38891 lt!1324688)))))))))

(declare-fun b!3818418 () Bool)

(assert (=> b!3818418 (= e!2358730 (= (list!15027 (_2!22918 lt!1324937)) (_2!22920 (lexList!1577 thiss!11876 rules!1265 (list!15027 (_2!22919 (v!38891 lt!1324688)))))))))

(declare-fun b!3818419 () Bool)

(declare-fun e!2358731 () Bool)

(assert (=> b!3818419 (= e!2358731 (= (list!15027 (_2!22918 lt!1324937)) (list!15027 (_2!22919 (v!38891 lt!1324688)))))))

(declare-fun b!3818420 () Bool)

(declare-fun lt!1324938 () tuple2!39568)

(declare-fun lt!1324939 () Option!8636)

(assert (=> b!3818420 (= e!2358732 (tuple2!39569 (prepend!1368 (_1!22918 lt!1324938) (_1!22919 (v!38891 lt!1324939))) (_2!22918 lt!1324938)))))

(assert (=> b!3818420 (= lt!1324938 (lexRec!831 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324939))))))

(declare-fun d!1130313 () Bool)

(assert (=> d!1130313 e!2358730))

(declare-fun res!1545800 () Bool)

(assert (=> d!1130313 (=> (not res!1545800) (not e!2358730))))

(assert (=> d!1130313 (= res!1545800 e!2358731)))

(declare-fun c!665067 () Bool)

(assert (=> d!1130313 (= c!665067 (> (size!30437 (_1!22918 lt!1324937)) 0))))

(assert (=> d!1130313 (= lt!1324937 e!2358732)))

(declare-fun c!665068 () Bool)

(assert (=> d!1130313 (= c!665068 ((_ is Some!8635) lt!1324939))))

(assert (=> d!1130313 (= lt!1324939 (maxPrefixZipperSequence!1213 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324688))))))

(assert (=> d!1130313 (= (lexRec!831 thiss!11876 rules!1265 (_2!22919 (v!38891 lt!1324688))) lt!1324937)))

(declare-fun b!3818421 () Bool)

(declare-fun e!2358733 () Bool)

(assert (=> b!3818421 (= e!2358733 (not (isEmpty!23820 (_1!22918 lt!1324937))))))

(declare-fun b!3818422 () Bool)

(assert (=> b!3818422 (= e!2358731 e!2358733)))

(declare-fun res!1545801 () Bool)

(assert (=> b!3818422 (= res!1545801 (< (size!30438 (_2!22918 lt!1324937)) (size!30438 (_2!22919 (v!38891 lt!1324688)))))))

(assert (=> b!3818422 (=> (not res!1545801) (not e!2358733))))

(assert (= (and d!1130313 c!665068) b!3818420))

(assert (= (and d!1130313 (not c!665068)) b!3818416))

(assert (= (and d!1130313 c!665067) b!3818422))

(assert (= (and d!1130313 (not c!665067)) b!3818419))

(assert (= (and b!3818422 res!1545801) b!3818421))

(assert (= (and d!1130313 res!1545800) b!3818417))

(assert (= (and b!3818417 res!1545802) b!3818418))

(declare-fun m!4362149 () Bool)

(assert (=> b!3818417 m!4362149))

(declare-fun m!4362151 () Bool)

(assert (=> b!3818417 m!4362151))

(assert (=> b!3818417 m!4362151))

(declare-fun m!4362153 () Bool)

(assert (=> b!3818417 m!4362153))

(declare-fun m!4362155 () Bool)

(assert (=> b!3818421 m!4362155))

(declare-fun m!4362157 () Bool)

(assert (=> d!1130313 m!4362157))

(declare-fun m!4362159 () Bool)

(assert (=> d!1130313 m!4362159))

(declare-fun m!4362161 () Bool)

(assert (=> b!3818420 m!4362161))

(declare-fun m!4362163 () Bool)

(assert (=> b!3818420 m!4362163))

(declare-fun m!4362165 () Bool)

(assert (=> b!3818422 m!4362165))

(declare-fun m!4362167 () Bool)

(assert (=> b!3818422 m!4362167))

(declare-fun m!4362169 () Bool)

(assert (=> b!3818419 m!4362169))

(assert (=> b!3818419 m!4362151))

(assert (=> b!3818418 m!4362169))

(assert (=> b!3818418 m!4362151))

(assert (=> b!3818418 m!4362151))

(assert (=> b!3818418 m!4362153))

(assert (=> b!3817897 d!1130313))

(declare-fun d!1130315 () Bool)

(declare-fun c!665069 () Bool)

(assert (=> d!1130315 (= c!665069 ((_ is Node!12410) (c!664958 treated!13)))))

(declare-fun e!2358734 () Bool)

(assert (=> d!1130315 (= (inv!54408 (c!664958 treated!13)) e!2358734)))

(declare-fun b!3818423 () Bool)

(assert (=> b!3818423 (= e!2358734 (inv!54418 (c!664958 treated!13)))))

(declare-fun b!3818424 () Bool)

(declare-fun e!2358735 () Bool)

(assert (=> b!3818424 (= e!2358734 e!2358735)))

(declare-fun res!1545803 () Bool)

(assert (=> b!3818424 (= res!1545803 (not ((_ is Leaf!19217) (c!664958 treated!13))))))

(assert (=> b!3818424 (=> res!1545803 e!2358735)))

(declare-fun b!3818425 () Bool)

(assert (=> b!3818425 (= e!2358735 (inv!54419 (c!664958 treated!13)))))

(assert (= (and d!1130315 c!665069) b!3818423))

(assert (= (and d!1130315 (not c!665069)) b!3818424))

(assert (= (and b!3818424 (not res!1545803)) b!3818425))

(declare-fun m!4362171 () Bool)

(assert (=> b!3818423 m!4362171))

(declare-fun m!4362173 () Bool)

(assert (=> b!3818425 m!4362173))

(assert (=> b!3817908 d!1130315))

(declare-fun b!3818434 () Bool)

(declare-fun tp!1157384 () Bool)

(declare-fun e!2358741 () Bool)

(declare-fun tp!1157385 () Bool)

(assert (=> b!3818434 (= e!2358741 (and (inv!54411 (left!31257 (c!664959 acc!335))) tp!1157385 (inv!54411 (right!31587 (c!664959 acc!335))) tp!1157384))))

(declare-fun b!3818436 () Bool)

(declare-fun e!2358740 () Bool)

(declare-fun tp!1157386 () Bool)

(assert (=> b!3818436 (= e!2358740 tp!1157386)))

(declare-fun b!3818435 () Bool)

(declare-fun inv!54422 (IArray!24827) Bool)

(assert (=> b!3818435 (= e!2358741 (and (inv!54422 (xs!15693 (c!664959 acc!335))) e!2358740))))

(assert (=> b!3817901 (= tp!1157316 (and (inv!54411 (c!664959 acc!335)) e!2358741))))

(assert (= (and b!3817901 ((_ is Node!12411) (c!664959 acc!335))) b!3818434))

(assert (= b!3818435 b!3818436))

(assert (= (and b!3817901 ((_ is Leaf!19218) (c!664959 acc!335))) b!3818435))

(declare-fun m!4362175 () Bool)

(assert (=> b!3818434 m!4362175))

(declare-fun m!4362177 () Bool)

(assert (=> b!3818434 m!4362177))

(declare-fun m!4362179 () Bool)

(assert (=> b!3818435 m!4362179))

(assert (=> b!3817901 m!4361325))

(declare-fun tp!1157393 () Bool)

(declare-fun e!2358747 () Bool)

(declare-fun b!3818445 () Bool)

(declare-fun tp!1157394 () Bool)

(assert (=> b!3818445 (= e!2358747 (and (inv!54408 (left!31256 (c!664958 input!678))) tp!1157394 (inv!54408 (right!31586 (c!664958 input!678))) tp!1157393))))

(declare-fun b!3818447 () Bool)

(declare-fun e!2358746 () Bool)

(declare-fun tp!1157395 () Bool)

(assert (=> b!3818447 (= e!2358746 tp!1157395)))

(declare-fun b!3818446 () Bool)

(declare-fun inv!54423 (IArray!24825) Bool)

(assert (=> b!3818446 (= e!2358747 (and (inv!54423 (xs!15692 (c!664958 input!678))) e!2358746))))

(assert (=> b!3817896 (= tp!1157313 (and (inv!54408 (c!664958 input!678)) e!2358747))))

(assert (= (and b!3817896 ((_ is Node!12410) (c!664958 input!678))) b!3818445))

(assert (= b!3818446 b!3818447))

(assert (= (and b!3817896 ((_ is Leaf!19217) (c!664958 input!678))) b!3818446))

(declare-fun m!4362181 () Bool)

(assert (=> b!3818445 m!4362181))

(declare-fun m!4362183 () Bool)

(assert (=> b!3818445 m!4362183))

(declare-fun m!4362185 () Bool)

(assert (=> b!3818446 m!4362185))

(assert (=> b!3817896 m!4361253))

(declare-fun b!3818458 () Bool)

(declare-fun e!2358750 () Bool)

(declare-fun tp_is_empty!19197 () Bool)

(assert (=> b!3818458 (= e!2358750 tp_is_empty!19197)))

(declare-fun b!3818460 () Bool)

(declare-fun tp!1157410 () Bool)

(assert (=> b!3818460 (= e!2358750 tp!1157410)))

(declare-fun b!3818461 () Bool)

(declare-fun tp!1157406 () Bool)

(declare-fun tp!1157409 () Bool)

(assert (=> b!3818461 (= e!2358750 (and tp!1157406 tp!1157409))))

(assert (=> b!3817891 (= tp!1157318 e!2358750)))

(declare-fun b!3818459 () Bool)

(declare-fun tp!1157407 () Bool)

(declare-fun tp!1157408 () Bool)

(assert (=> b!3818459 (= e!2358750 (and tp!1157407 tp!1157408))))

(assert (= (and b!3817891 ((_ is ElementMatch!11123) (regex!6218 (h!45814 rules!1265)))) b!3818458))

(assert (= (and b!3817891 ((_ is Concat!17572) (regex!6218 (h!45814 rules!1265)))) b!3818459))

(assert (= (and b!3817891 ((_ is Star!11123) (regex!6218 (h!45814 rules!1265)))) b!3818460))

(assert (= (and b!3817891 ((_ is Union!11123) (regex!6218 (h!45814 rules!1265)))) b!3818461))

(declare-fun e!2358752 () Bool)

(declare-fun tp!1157412 () Bool)

(declare-fun tp!1157411 () Bool)

(declare-fun b!3818462 () Bool)

(assert (=> b!3818462 (= e!2358752 (and (inv!54408 (left!31256 (c!664958 totalInput!335))) tp!1157412 (inv!54408 (right!31586 (c!664958 totalInput!335))) tp!1157411))))

(declare-fun b!3818464 () Bool)

(declare-fun e!2358751 () Bool)

(declare-fun tp!1157413 () Bool)

(assert (=> b!3818464 (= e!2358751 tp!1157413)))

(declare-fun b!3818463 () Bool)

(assert (=> b!3818463 (= e!2358752 (and (inv!54423 (xs!15692 (c!664958 totalInput!335))) e!2358751))))

(assert (=> b!3817911 (= tp!1157314 (and (inv!54408 (c!664958 totalInput!335)) e!2358752))))

(assert (= (and b!3817911 ((_ is Node!12410) (c!664958 totalInput!335))) b!3818462))

(assert (= b!3818463 b!3818464))

(assert (= (and b!3817911 ((_ is Leaf!19217) (c!664958 totalInput!335))) b!3818463))

(declare-fun m!4362187 () Bool)

(assert (=> b!3818462 m!4362187))

(declare-fun m!4362189 () Bool)

(assert (=> b!3818462 m!4362189))

(declare-fun m!4362191 () Bool)

(assert (=> b!3818463 m!4362191))

(assert (=> b!3817911 m!4361351))

(declare-fun b!3818475 () Bool)

(declare-fun b_free!101509 () Bool)

(declare-fun b_next!102213 () Bool)

(assert (=> b!3818475 (= b_free!101509 (not b_next!102213))))

(declare-fun tp!1157424 () Bool)

(declare-fun b_and!283755 () Bool)

(assert (=> b!3818475 (= tp!1157424 b_and!283755)))

(declare-fun b_free!101511 () Bool)

(declare-fun b_next!102215 () Bool)

(assert (=> b!3818475 (= b_free!101511 (not b_next!102215))))

(declare-fun tb!219027 () Bool)

(declare-fun t!308172 () Bool)

(assert (=> (and b!3818475 (= (toChars!8473 (transformation!6218 (h!45814 (t!308163 rules!1265)))) (toChars!8473 (transformation!6218 (rule!9034 (_1!22919 (v!38891 lt!1324705)))))) t!308172) tb!219027))

(declare-fun result!267076 () Bool)

(assert (= result!267076 result!267050))

(assert (=> d!1130199 t!308172))

(declare-fun tp!1157425 () Bool)

(declare-fun b_and!283757 () Bool)

(assert (=> b!3818475 (= tp!1157425 (and (=> t!308172 result!267076) b_and!283757))))

(declare-fun e!2358761 () Bool)

(assert (=> b!3818475 (= e!2358761 (and tp!1157424 tp!1157425))))

(declare-fun e!2358763 () Bool)

(declare-fun tp!1157422 () Bool)

(declare-fun b!3818474 () Bool)

(assert (=> b!3818474 (= e!2358763 (and tp!1157422 (inv!54401 (tag!7078 (h!45814 (t!308163 rules!1265)))) (inv!54407 (transformation!6218 (h!45814 (t!308163 rules!1265)))) e!2358761))))

(declare-fun b!3818473 () Bool)

(declare-fun e!2358764 () Bool)

(declare-fun tp!1157423 () Bool)

(assert (=> b!3818473 (= e!2358764 (and e!2358763 tp!1157423))))

(assert (=> b!3817902 (= tp!1157317 e!2358764)))

(assert (= b!3818474 b!3818475))

(assert (= b!3818473 b!3818474))

(assert (= (and b!3817902 ((_ is Cons!40394) (t!308163 rules!1265))) b!3818473))

(declare-fun m!4362193 () Bool)

(assert (=> b!3818474 m!4362193))

(declare-fun m!4362195 () Bool)

(assert (=> b!3818474 m!4362195))

(declare-fun b!3818476 () Bool)

(declare-fun tp!1157426 () Bool)

(declare-fun e!2358766 () Bool)

(declare-fun tp!1157427 () Bool)

(assert (=> b!3818476 (= e!2358766 (and (inv!54408 (left!31256 (c!664958 treated!13))) tp!1157427 (inv!54408 (right!31586 (c!664958 treated!13))) tp!1157426))))

(declare-fun b!3818478 () Bool)

(declare-fun e!2358765 () Bool)

(declare-fun tp!1157428 () Bool)

(assert (=> b!3818478 (= e!2358765 tp!1157428)))

(declare-fun b!3818477 () Bool)

(assert (=> b!3818477 (= e!2358766 (and (inv!54423 (xs!15692 (c!664958 treated!13))) e!2358765))))

(assert (=> b!3817908 (= tp!1157320 (and (inv!54408 (c!664958 treated!13)) e!2358766))))

(assert (= (and b!3817908 ((_ is Node!12410) (c!664958 treated!13))) b!3818476))

(assert (= b!3818477 b!3818478))

(assert (= (and b!3817908 ((_ is Leaf!19217) (c!664958 treated!13))) b!3818477))

(declare-fun m!4362197 () Bool)

(assert (=> b!3818476 m!4362197))

(declare-fun m!4362199 () Bool)

(assert (=> b!3818476 m!4362199))

(declare-fun m!4362201 () Bool)

(assert (=> b!3818477 m!4362201))

(assert (=> b!3817908 m!4361341))

(check-sat (not b!3818146) (not b!3818358) (not b!3818460) (not d!1130283) (not d!1130279) (not b!3818247) (not b!3818420) (not b!3818447) (not b!3817919) (not b!3818464) (not d!1130201) (not b!3818107) b_and!283747 (not b!3817901) (not b!3818243) (not d!1130285) (not b!3818085) (not b!3817908) tp_is_empty!19197 (not b!3818098) (not b!3818376) (not b!3818410) (not b!3818411) (not d!1130289) (not d!1130203) (not b!3818242) (not d!1130313) (not b!3817896) (not b!3818106) (not d!1130109) (not b!3818398) (not b_next!102213) (not tb!219021) (not b!3818388) (not d!1130189) (not b!3818473) (not b!3818356) (not d!1130255) (not d!1130259) (not b!3818084) (not b!3818389) (not b!3818099) (not b!3818245) (not d!1130275) (not d!1130311) (not b!3818160) (not d!1130293) (not b!3818371) (not d!1130199) (not b!3818423) (not b!3818357) (not b!3818113) (not b!3818373) (not b!3818364) (not b!3818088) (not bm!280367) (not b!3818436) (not b!3818109) (not b!3818114) (not b!3818142) (not b!3818406) (not b!3818415) (not b!3818408) (not d!1130177) (not b!3817946) (not d!1130191) b_and!283743 (not d!1130117) (not b!3818463) (not b_next!102207) (not b!3818476) (not b!3818477) (not b!3818435) (not d!1130307) (not d!1130183) (not d!1130115) (not b!3818254) (not b!3818110) (not b!3818246) (not b!3818361) (not b!3818418) b_and!283755 (not b!3817947) (not d!1130295) (not b!3818417) (not b!3818086) (not d!1130297) (not b!3818407) (not d!1130253) (not b!3818400) (not b!3818111) (not b!3818083) (not d!1130305) (not b!3818459) (not b!3818425) (not b!3818362) (not d!1130287) (not d!1130179) (not d!1130261) (not b!3818399) (not d!1130091) (not b!3818403) (not b!3818250) (not b!3818385) (not d!1130299) (not d!1130251) (not bm!280361) (not b!3818404) (not d!1130291) (not b!3817945) (not d!1130195) (not b!3818244) (not b!3818377) (not d!1130303) (not d!1130107) (not b!3818434) (not b!3818381) (not b!3817924) (not b!3818103) (not b!3818474) (not d!1130197) (not d!1130105) (not b_next!102205) (not b!3818386) (not b!3818461) (not b!3818445) (not b!3818363) (not b!3817911) (not b!3818102) (not d!1130119) (not b!3818241) (not d!1130277) (not d!1130103) (not b!3818478) (not b!3818255) (not b!3818462) (not b_next!102215) (not b!3818259) (not d!1130309) (not b!3818162) (not b!3818163) (not b!3817955) (not b!3818366) (not b!3818145) (not b!3818419) (not b!3818087) (not d!1130209) (not b_lambda!111731) (not b!3818359) (not b!3818387) (not b!3818382) (not d!1130207) (not b!3818405) (not b!3818421) (not b!3818384) (not d!1130249) (not b!3818141) (not d!1130181) (not b!3818401) (not b!3818251) (not b!3818369) (not d!1130185) (not b!3818108) (not b!3817921) b_and!283757 (not b!3818372) (not b!3817957) (not b!3818446) (not b!3818422) (not d!1130089) (not d!1130193) (not d!1130187))
(check-sat b_and!283747 (not b_next!102213) b_and!283743 (not b_next!102207) b_and!283755 (not b_next!102205) (not b_next!102215) b_and!283757)
