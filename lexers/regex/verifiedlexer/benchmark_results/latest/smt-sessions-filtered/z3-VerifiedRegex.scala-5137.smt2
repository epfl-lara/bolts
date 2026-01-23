; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!263256 () Bool)

(assert start!263256)

(declare-fun b!2713659 () Bool)

(declare-fun b_free!76505 () Bool)

(declare-fun b_next!77209 () Bool)

(assert (=> b!2713659 (= b_free!76505 (not b_next!77209))))

(declare-fun tp!857197 () Bool)

(declare-fun b_and!200245 () Bool)

(assert (=> b!2713659 (= tp!857197 b_and!200245)))

(declare-fun b_free!76507 () Bool)

(declare-fun b_next!77211 () Bool)

(assert (=> b!2713659 (= b_free!76507 (not b_next!77211))))

(declare-fun tp!857202 () Bool)

(declare-fun b_and!200247 () Bool)

(assert (=> b!2713659 (= tp!857202 b_and!200247)))

(declare-fun b!2713656 () Bool)

(declare-fun e!1710517 () Bool)

(declare-fun e!1710516 () Bool)

(assert (=> b!2713656 (= e!1710517 (not e!1710516))))

(declare-fun res!1139570 () Bool)

(assert (=> b!2713656 (=> res!1139570 e!1710516)))

(declare-datatypes ((C!16036 0))(
  ( (C!16037 (val!9952 Int)) )
))
(declare-datatypes ((List!31407 0))(
  ( (Nil!31307) (Cons!31307 (h!36727 C!16036) (t!226209 List!31407)) )
))
(declare-fun lt!959980 () List!31407)

(declare-fun lt!959964 () List!31407)

(declare-datatypes ((IArray!19607 0))(
  ( (IArray!19608 (innerList!9861 List!31407)) )
))
(declare-datatypes ((Conc!9801 0))(
  ( (Node!9801 (left!24076 Conc!9801) (right!24406 Conc!9801) (csize!19832 Int) (cheight!10012 Int)) (Leaf!14939 (xs!12864 IArray!19607) (csize!19833 Int)) (Empty!9801) )
))
(declare-datatypes ((BalanceConc!19216 0))(
  ( (BalanceConc!19217 (c!438313 Conc!9801)) )
))
(declare-fun lt!959978 () BalanceConc!19216)

(declare-fun ++!7746 (List!31407 List!31407) List!31407)

(declare-fun list!11840 (BalanceConc!19216) List!31407)

(assert (=> b!2713656 (= res!1139570 (not (= lt!959964 (++!7746 (list!11840 lt!959978) lt!959980))))))

(declare-fun e!1710515 () Bool)

(assert (=> b!2713656 e!1710515))

(declare-fun c!438312 () Bool)

(declare-datatypes ((List!31408 0))(
  ( (Nil!31308) (Cons!31308 (h!36728 (_ BitVec 16)) (t!226210 List!31408)) )
))
(declare-datatypes ((TokenValue!5009 0))(
  ( (FloatLiteralValue!10018 (text!35508 List!31408)) (TokenValueExt!5008 (__x!20153 Int)) (Broken!25045 (value!154016 List!31408)) (Object!5108) (End!5009) (Def!5009) (Underscore!5009) (Match!5009) (Else!5009) (Error!5009) (Case!5009) (If!5009) (Extends!5009) (Abstract!5009) (Class!5009) (Val!5009) (DelimiterValue!10018 (del!5069 List!31408)) (KeywordValue!5015 (value!154017 List!31408)) (CommentValue!10018 (value!154018 List!31408)) (WhitespaceValue!10018 (value!154019 List!31408)) (IndentationValue!5009 (value!154020 List!31408)) (String!34944) (Int32!5009) (Broken!25046 (value!154021 List!31408)) (Boolean!5010) (Unit!45343) (OperatorValue!5012 (op!5069 List!31408)) (IdentifierValue!10018 (value!154022 List!31408)) (IdentifierValue!10019 (value!154023 List!31408)) (WhitespaceValue!10019 (value!154024 List!31408)) (True!10018) (False!10018) (Broken!25047 (value!154025 List!31408)) (Broken!25048 (value!154026 List!31408)) (True!10019) (RightBrace!5009) (RightBracket!5009) (Colon!5009) (Null!5009) (Comma!5009) (LeftBracket!5009) (False!10019) (LeftBrace!5009) (ImaginaryLiteralValue!5009 (text!35509 List!31408)) (StringLiteralValue!15027 (value!154027 List!31408)) (EOFValue!5009 (value!154028 List!31408)) (IdentValue!5009 (value!154029 List!31408)) (DelimiterValue!10019 (value!154030 List!31408)) (DedentValue!5009 (value!154031 List!31408)) (NewLineValue!5009 (value!154032 List!31408)) (IntegerValue!15027 (value!154033 (_ BitVec 32)) (text!35510 List!31408)) (IntegerValue!15028 (value!154034 Int) (text!35511 List!31408)) (Times!5009) (Or!5009) (Equal!5009) (Minus!5009) (Broken!25049 (value!154035 List!31408)) (And!5009) (Div!5009) (LessEqual!5009) (Mod!5009) (Concat!12948) (Not!5009) (Plus!5009) (SpaceValue!5009 (value!154036 List!31408)) (IntegerValue!15029 (value!154037 Int) (text!35512 List!31408)) (StringLiteralValue!15028 (text!35513 List!31408)) (FloatLiteralValue!10019 (text!35514 List!31408)) (BytesLiteralValue!5009 (value!154038 List!31408)) (CommentValue!10019 (value!154039 List!31408)) (StringLiteralValue!15029 (value!154040 List!31408)) (ErrorTokenValue!5009 (msg!5070 List!31408)) )
))
(declare-datatypes ((Regex!7939 0))(
  ( (ElementMatch!7939 (c!438314 C!16036)) (Concat!12949 (regOne!16390 Regex!7939) (regTwo!16390 Regex!7939)) (EmptyExpr!7939) (Star!7939 (reg!8268 Regex!7939)) (EmptyLang!7939) (Union!7939 (regOne!16391 Regex!7939) (regTwo!16391 Regex!7939)) )
))
(declare-datatypes ((String!34945 0))(
  ( (String!34946 (value!154041 String)) )
))
(declare-datatypes ((TokenValueInjection!9458 0))(
  ( (TokenValueInjection!9459 (toValue!6757 Int) (toChars!6616 Int)) )
))
(declare-datatypes ((Rule!9374 0))(
  ( (Rule!9375 (regex!4787 Regex!7939) (tag!5291 String!34945) (isSeparator!4787 Bool) (transformation!4787 TokenValueInjection!9458)) )
))
(declare-datatypes ((Token!9036 0))(
  ( (Token!9037 (value!154042 TokenValue!5009) (rule!7213 Rule!9374) (size!24146 Int) (originalCharacters!5549 List!31407)) )
))
(declare-datatypes ((tuple2!30958 0))(
  ( (tuple2!30959 (_1!18111 Token!9036) (_2!18111 BalanceConc!19216)) )
))
(declare-datatypes ((Option!6175 0))(
  ( (None!6174) (Some!6174 (v!32998 tuple2!30958)) )
))
(declare-fun lt!959962 () Option!6175)

(get-info :version)

(assert (=> b!2713656 (= c!438312 ((_ is Some!6174) lt!959962))))

(declare-datatypes ((List!31409 0))(
  ( (Nil!31309) (Cons!31309 (h!36729 Token!9036) (t!226211 List!31409)) )
))
(declare-datatypes ((IArray!19609 0))(
  ( (IArray!19610 (innerList!9862 List!31409)) )
))
(declare-datatypes ((Conc!9802 0))(
  ( (Node!9802 (left!24077 Conc!9802) (right!24407 Conc!9802) (csize!19834 Int) (cheight!10013 Int)) (Leaf!14940 (xs!12865 IArray!19609) (csize!19835 Int)) (Empty!9802) )
))
(declare-datatypes ((BalanceConc!19218 0))(
  ( (BalanceConc!19219 (c!438315 Conc!9802)) )
))
(declare-datatypes ((tuple2!30960 0))(
  ( (tuple2!30961 (_1!18112 BalanceConc!19218) (_2!18112 BalanceConc!19216)) )
))
(declare-fun lt!959983 () tuple2!30960)

(declare-datatypes ((LexerInterface!4383 0))(
  ( (LexerInterfaceExt!4380 (__x!20154 Int)) (Lexer!4381) )
))
(declare-fun thiss!11556 () LexerInterface!4383)

(declare-datatypes ((List!31410 0))(
  ( (Nil!31310) (Cons!31310 (h!36730 Rule!9374) (t!226212 List!31410)) )
))
(declare-fun rules!1182 () List!31410)

(declare-fun lexRec!643 (LexerInterface!4383 List!31410 BalanceConc!19216) tuple2!30960)

(assert (=> b!2713656 (= lt!959983 (lexRec!643 thiss!11556 rules!1182 lt!959978))))

(declare-fun maxPrefixZipperSequence!1031 (LexerInterface!4383 List!31410 BalanceConc!19216) Option!6175)

(assert (=> b!2713656 (= lt!959962 (maxPrefixZipperSequence!1031 thiss!11556 rules!1182 lt!959978))))

(declare-fun treated!9 () BalanceConc!19216)

(declare-fun lt!959976 () BalanceConc!19216)

(declare-fun ++!7747 (BalanceConc!19216 BalanceConc!19216) BalanceConc!19216)

(assert (=> b!2713656 (= lt!959978 (++!7747 treated!9 lt!959976))))

(declare-fun lt!959968 () List!31407)

(declare-fun lt!959961 () List!31409)

(declare-datatypes ((tuple2!30962 0))(
  ( (tuple2!30963 (_1!18113 List!31409) (_2!18113 List!31407)) )
))
(declare-fun lexList!1214 (LexerInterface!4383 List!31410 List!31407) tuple2!30962)

(assert (=> b!2713656 (= (lexList!1214 thiss!11556 rules!1182 lt!959968) (tuple2!30963 lt!959961 Nil!31307))))

(declare-fun lt!959973 () List!31409)

(declare-fun lt!959977 () tuple2!30960)

(declare-datatypes ((Unit!45344 0))(
  ( (Unit!45345) )
))
(declare-fun lt!959982 () Unit!45344)

(declare-fun lemmaLexThenLexPrefix!422 (LexerInterface!4383 List!31410 List!31407 List!31407 List!31409 List!31409 List!31407) Unit!45344)

(assert (=> b!2713656 (= lt!959982 (lemmaLexThenLexPrefix!422 thiss!11556 rules!1182 lt!959968 lt!959980 lt!959961 lt!959973 (list!11840 (_2!18112 lt!959977))))))

(declare-fun acc!331 () BalanceConc!19218)

(declare-fun lt!959965 () Option!6175)

(declare-fun list!11841 (BalanceConc!19218) List!31409)

(declare-fun append!800 (BalanceConc!19218 Token!9036) BalanceConc!19218)

(assert (=> b!2713656 (= lt!959961 (list!11841 (append!800 acc!331 (_1!18111 (v!32998 lt!959965)))))))

(declare-fun lt!959972 () List!31409)

(declare-fun lt!959966 () List!31409)

(declare-fun ++!7748 (List!31409 List!31409) List!31409)

(assert (=> b!2713656 (= (++!7748 (++!7748 lt!959972 lt!959966) lt!959973) (++!7748 lt!959972 (++!7748 lt!959966 lt!959973)))))

(declare-fun lt!959984 () Unit!45344)

(declare-fun lemmaConcatAssociativity!1593 (List!31409 List!31409 List!31409) Unit!45344)

(assert (=> b!2713656 (= lt!959984 (lemmaConcatAssociativity!1593 lt!959972 lt!959966 lt!959973))))

(assert (=> b!2713656 (= lt!959973 (list!11841 (_1!18112 lt!959977)))))

(assert (=> b!2713656 (= lt!959966 (Cons!31309 (_1!18111 (v!32998 lt!959965)) Nil!31309))))

(declare-fun e!1710523 () Bool)

(assert (=> b!2713656 e!1710523))

(declare-fun res!1139571 () Bool)

(assert (=> b!2713656 (=> (not res!1139571) (not e!1710523))))

(declare-fun lt!959970 () List!31407)

(declare-fun lt!959967 () List!31407)

(assert (=> b!2713656 (= res!1139571 (= (++!7746 lt!959968 lt!959980) (++!7746 lt!959967 (++!7746 lt!959970 lt!959980))))))

(assert (=> b!2713656 (= lt!959968 (++!7746 lt!959967 lt!959970))))

(declare-fun lt!959969 () Unit!45344)

(declare-fun lemmaConcatAssociativity!1594 (List!31407 List!31407 List!31407) Unit!45344)

(assert (=> b!2713656 (= lt!959969 (lemmaConcatAssociativity!1594 lt!959967 lt!959970 lt!959980))))

(assert (=> b!2713656 (= lt!959980 (list!11840 (_2!18111 (v!32998 lt!959965))))))

(assert (=> b!2713656 (= lt!959970 (list!11840 lt!959976))))

(declare-fun charsOf!3010 (Token!9036) BalanceConc!19216)

(assert (=> b!2713656 (= lt!959976 (charsOf!3010 (_1!18111 (v!32998 lt!959965))))))

(assert (=> b!2713656 (= lt!959977 (lexRec!643 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!959965))))))

(declare-fun b!2713657 () Bool)

(declare-fun res!1139576 () Bool)

(declare-fun e!1710513 () Bool)

(assert (=> b!2713657 (=> (not res!1139576) (not e!1710513))))

(declare-fun rulesInvariant!3868 (LexerInterface!4383 List!31410) Bool)

(assert (=> b!2713657 (= res!1139576 (rulesInvariant!3868 thiss!11556 rules!1182))))

(declare-fun b!2713658 () Bool)

(assert (=> b!2713658 (= e!1710515 (= lt!959983 (tuple2!30961 (BalanceConc!19219 Empty!9802) lt!959978)))))

(declare-fun e!1710527 () Bool)

(assert (=> b!2713659 (= e!1710527 (and tp!857197 tp!857202))))

(declare-fun b!2713660 () Bool)

(declare-fun e!1710514 () Bool)

(declare-fun e!1710520 () Bool)

(declare-fun tp!857201 () Bool)

(assert (=> b!2713660 (= e!1710514 (and e!1710520 tp!857201))))

(declare-fun b!2713661 () Bool)

(declare-fun e!1710521 () Bool)

(declare-fun tp!857199 () Bool)

(declare-fun inv!42470 (Conc!9802) Bool)

(assert (=> b!2713661 (= e!1710521 (and (inv!42470 (c!438315 acc!331)) tp!857199))))

(declare-fun b!2713662 () Bool)

(declare-fun res!1139575 () Bool)

(declare-fun e!1710526 () Bool)

(assert (=> b!2713662 (=> (not res!1139575) (not e!1710526))))

(declare-fun lt!959971 () tuple2!30960)

(declare-fun lt!959975 () tuple2!30960)

(assert (=> b!2713662 (= res!1139575 (= (list!11840 (_2!18112 lt!959971)) (list!11840 (_2!18112 lt!959975))))))

(declare-fun b!2713663 () Bool)

(declare-fun e!1710519 () Bool)

(declare-fun e!1710524 () Bool)

(assert (=> b!2713663 (= e!1710519 e!1710524)))

(declare-fun res!1139567 () Bool)

(assert (=> b!2713663 (=> (not res!1139567) (not e!1710524))))

(declare-fun lt!959963 () List!31409)

(assert (=> b!2713663 (= res!1139567 (= lt!959963 lt!959972))))

(assert (=> b!2713663 (= lt!959972 (list!11841 acc!331))))

(declare-fun lt!959979 () tuple2!30960)

(assert (=> b!2713663 (= lt!959963 (list!11841 (_1!18112 lt!959979)))))

(assert (=> b!2713663 (= lt!959979 (lexRec!643 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2713664 () Bool)

(assert (=> b!2713664 (= e!1710513 e!1710519)))

(declare-fun res!1139573 () Bool)

(assert (=> b!2713664 (=> (not res!1139573) (not e!1710519))))

(declare-fun lt!959981 () List!31407)

(assert (=> b!2713664 (= res!1139573 (= lt!959964 (++!7746 lt!959967 lt!959981)))))

(declare-fun totalInput!328 () BalanceConc!19216)

(assert (=> b!2713664 (= lt!959964 (list!11840 totalInput!328))))

(declare-fun input!603 () BalanceConc!19216)

(assert (=> b!2713664 (= lt!959981 (list!11840 input!603))))

(assert (=> b!2713664 (= lt!959967 (list!11840 treated!9))))

(declare-fun b!2713665 () Bool)

(declare-fun e!1710525 () Bool)

(declare-fun tp!857198 () Bool)

(declare-fun inv!42471 (Conc!9801) Bool)

(assert (=> b!2713665 (= e!1710525 (and (inv!42471 (c!438313 input!603)) tp!857198))))

(declare-fun b!2713666 () Bool)

(assert (=> b!2713666 (= e!1710516 (= (list!11841 (_1!18112 lt!959983)) lt!959961))))

(declare-fun b!2713667 () Bool)

(assert (=> b!2713667 (= e!1710526 e!1710517)))

(declare-fun res!1139569 () Bool)

(assert (=> b!2713667 (=> (not res!1139569) (not e!1710517))))

(assert (=> b!2713667 (= res!1139569 ((_ is Some!6174) lt!959965))))

(assert (=> b!2713667 (= lt!959965 (maxPrefixZipperSequence!1031 thiss!11556 rules!1182 input!603))))

(declare-fun res!1139572 () Bool)

(assert (=> start!263256 (=> (not res!1139572) (not e!1710513))))

(assert (=> start!263256 (= res!1139572 ((_ is Lexer!4381) thiss!11556))))

(assert (=> start!263256 e!1710513))

(declare-fun e!1710522 () Bool)

(declare-fun inv!42472 (BalanceConc!19216) Bool)

(assert (=> start!263256 (and (inv!42472 treated!9) e!1710522)))

(assert (=> start!263256 (and (inv!42472 input!603) e!1710525)))

(assert (=> start!263256 true))

(assert (=> start!263256 e!1710514))

(declare-fun e!1710512 () Bool)

(assert (=> start!263256 (and (inv!42472 totalInput!328) e!1710512)))

(declare-fun inv!42473 (BalanceConc!19218) Bool)

(assert (=> start!263256 (and (inv!42473 acc!331) e!1710521)))

(declare-fun b!2713668 () Bool)

(declare-fun lt!959974 () tuple2!30960)

(declare-fun prepend!1109 (BalanceConc!19218 Token!9036) BalanceConc!19218)

(assert (=> b!2713668 (= e!1710515 (= lt!959983 (tuple2!30961 (prepend!1109 (_1!18112 lt!959974) (_1!18111 (v!32998 lt!959962))) (_2!18112 lt!959974))))))

(assert (=> b!2713668 (= lt!959974 (lexRec!643 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!959962))))))

(declare-fun b!2713669 () Bool)

(declare-fun tp!857196 () Bool)

(declare-fun inv!42464 (String!34945) Bool)

(declare-fun inv!42474 (TokenValueInjection!9458) Bool)

(assert (=> b!2713669 (= e!1710520 (and tp!857196 (inv!42464 (tag!5291 (h!36730 rules!1182))) (inv!42474 (transformation!4787 (h!36730 rules!1182))) e!1710527))))

(declare-fun b!2713670 () Bool)

(assert (=> b!2713670 (= e!1710524 e!1710526)))

(declare-fun res!1139577 () Bool)

(assert (=> b!2713670 (=> (not res!1139577) (not e!1710526))))

(declare-fun ++!7749 (BalanceConc!19218 BalanceConc!19218) BalanceConc!19218)

(assert (=> b!2713670 (= res!1139577 (= (list!11841 (_1!18112 lt!959971)) (list!11841 (++!7749 acc!331 (_1!18112 lt!959975)))))))

(assert (=> b!2713670 (= lt!959975 (lexRec!643 thiss!11556 rules!1182 input!603))))

(assert (=> b!2713670 (= lt!959971 (lexRec!643 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2713671 () Bool)

(declare-fun tp!857200 () Bool)

(assert (=> b!2713671 (= e!1710512 (and (inv!42471 (c!438313 totalInput!328)) tp!857200))))

(declare-fun b!2713672 () Bool)

(declare-fun tp!857203 () Bool)

(assert (=> b!2713672 (= e!1710522 (and (inv!42471 (c!438313 treated!9)) tp!857203))))

(declare-fun b!2713673 () Bool)

(assert (=> b!2713673 (= e!1710523 (= lt!959975 (tuple2!30961 (prepend!1109 (_1!18112 lt!959977) (_1!18111 (v!32998 lt!959965))) (_2!18112 lt!959977))))))

(declare-fun b!2713674 () Bool)

(declare-fun res!1139568 () Bool)

(assert (=> b!2713674 (=> (not res!1139568) (not e!1710513))))

(declare-fun isEmpty!17841 (List!31410) Bool)

(assert (=> b!2713674 (= res!1139568 (not (isEmpty!17841 rules!1182)))))

(declare-fun b!2713675 () Bool)

(declare-fun res!1139574 () Bool)

(assert (=> b!2713675 (=> (not res!1139574) (not e!1710524))))

(declare-fun isEmpty!17842 (List!31407) Bool)

(assert (=> b!2713675 (= res!1139574 (isEmpty!17842 (list!11840 (_2!18112 lt!959979))))))

(assert (= (and start!263256 res!1139572) b!2713674))

(assert (= (and b!2713674 res!1139568) b!2713657))

(assert (= (and b!2713657 res!1139576) b!2713664))

(assert (= (and b!2713664 res!1139573) b!2713663))

(assert (= (and b!2713663 res!1139567) b!2713675))

(assert (= (and b!2713675 res!1139574) b!2713670))

(assert (= (and b!2713670 res!1139577) b!2713662))

(assert (= (and b!2713662 res!1139575) b!2713667))

(assert (= (and b!2713667 res!1139569) b!2713656))

(assert (= (and b!2713656 res!1139571) b!2713673))

(assert (= (and b!2713656 c!438312) b!2713668))

(assert (= (and b!2713656 (not c!438312)) b!2713658))

(assert (= (and b!2713656 (not res!1139570)) b!2713666))

(assert (= start!263256 b!2713672))

(assert (= start!263256 b!2713665))

(assert (= b!2713669 b!2713659))

(assert (= b!2713660 b!2713669))

(assert (= (and start!263256 ((_ is Cons!31310) rules!1182)) b!2713660))

(assert (= start!263256 b!2713671))

(assert (= start!263256 b!2713661))

(declare-fun m!3109951 () Bool)

(assert (=> b!2713668 m!3109951))

(declare-fun m!3109953 () Bool)

(assert (=> b!2713668 m!3109953))

(declare-fun m!3109955 () Bool)

(assert (=> b!2713667 m!3109955))

(declare-fun m!3109957 () Bool)

(assert (=> b!2713670 m!3109957))

(declare-fun m!3109959 () Bool)

(assert (=> b!2713670 m!3109959))

(assert (=> b!2713670 m!3109959))

(declare-fun m!3109961 () Bool)

(assert (=> b!2713670 m!3109961))

(declare-fun m!3109963 () Bool)

(assert (=> b!2713670 m!3109963))

(declare-fun m!3109965 () Bool)

(assert (=> b!2713670 m!3109965))

(declare-fun m!3109967 () Bool)

(assert (=> b!2713662 m!3109967))

(declare-fun m!3109969 () Bool)

(assert (=> b!2713662 m!3109969))

(declare-fun m!3109971 () Bool)

(assert (=> b!2713674 m!3109971))

(declare-fun m!3109973 () Bool)

(assert (=> b!2713671 m!3109973))

(declare-fun m!3109975 () Bool)

(assert (=> b!2713663 m!3109975))

(declare-fun m!3109977 () Bool)

(assert (=> b!2713663 m!3109977))

(declare-fun m!3109979 () Bool)

(assert (=> b!2713663 m!3109979))

(declare-fun m!3109981 () Bool)

(assert (=> b!2713673 m!3109981))

(declare-fun m!3109983 () Bool)

(assert (=> b!2713661 m!3109983))

(declare-fun m!3109985 () Bool)

(assert (=> b!2713656 m!3109985))

(declare-fun m!3109987 () Bool)

(assert (=> b!2713656 m!3109987))

(declare-fun m!3109989 () Bool)

(assert (=> b!2713656 m!3109989))

(declare-fun m!3109991 () Bool)

(assert (=> b!2713656 m!3109991))

(declare-fun m!3109993 () Bool)

(assert (=> b!2713656 m!3109993))

(declare-fun m!3109995 () Bool)

(assert (=> b!2713656 m!3109995))

(declare-fun m!3109997 () Bool)

(assert (=> b!2713656 m!3109997))

(assert (=> b!2713656 m!3109993))

(declare-fun m!3109999 () Bool)

(assert (=> b!2713656 m!3109999))

(declare-fun m!3110001 () Bool)

(assert (=> b!2713656 m!3110001))

(declare-fun m!3110003 () Bool)

(assert (=> b!2713656 m!3110003))

(declare-fun m!3110005 () Bool)

(assert (=> b!2713656 m!3110005))

(declare-fun m!3110007 () Bool)

(assert (=> b!2713656 m!3110007))

(assert (=> b!2713656 m!3110003))

(declare-fun m!3110009 () Bool)

(assert (=> b!2713656 m!3110009))

(declare-fun m!3110011 () Bool)

(assert (=> b!2713656 m!3110011))

(declare-fun m!3110013 () Bool)

(assert (=> b!2713656 m!3110013))

(declare-fun m!3110015 () Bool)

(assert (=> b!2713656 m!3110015))

(declare-fun m!3110017 () Bool)

(assert (=> b!2713656 m!3110017))

(assert (=> b!2713656 m!3109985))

(declare-fun m!3110019 () Bool)

(assert (=> b!2713656 m!3110019))

(declare-fun m!3110021 () Bool)

(assert (=> b!2713656 m!3110021))

(declare-fun m!3110023 () Bool)

(assert (=> b!2713656 m!3110023))

(declare-fun m!3110025 () Bool)

(assert (=> b!2713656 m!3110025))

(declare-fun m!3110027 () Bool)

(assert (=> b!2713656 m!3110027))

(assert (=> b!2713656 m!3110009))

(assert (=> b!2713656 m!3109999))

(assert (=> b!2713656 m!3110027))

(declare-fun m!3110029 () Bool)

(assert (=> b!2713656 m!3110029))

(declare-fun m!3110031 () Bool)

(assert (=> b!2713656 m!3110031))

(declare-fun m!3110033 () Bool)

(assert (=> b!2713656 m!3110033))

(declare-fun m!3110035 () Bool)

(assert (=> b!2713657 m!3110035))

(declare-fun m!3110037 () Bool)

(assert (=> b!2713669 m!3110037))

(declare-fun m!3110039 () Bool)

(assert (=> b!2713669 m!3110039))

(declare-fun m!3110041 () Bool)

(assert (=> b!2713666 m!3110041))

(declare-fun m!3110043 () Bool)

(assert (=> b!2713672 m!3110043))

(declare-fun m!3110045 () Bool)

(assert (=> b!2713664 m!3110045))

(declare-fun m!3110047 () Bool)

(assert (=> b!2713664 m!3110047))

(declare-fun m!3110049 () Bool)

(assert (=> b!2713664 m!3110049))

(declare-fun m!3110051 () Bool)

(assert (=> b!2713664 m!3110051))

(declare-fun m!3110053 () Bool)

(assert (=> b!2713665 m!3110053))

(declare-fun m!3110055 () Bool)

(assert (=> b!2713675 m!3110055))

(assert (=> b!2713675 m!3110055))

(declare-fun m!3110057 () Bool)

(assert (=> b!2713675 m!3110057))

(declare-fun m!3110059 () Bool)

(assert (=> start!263256 m!3110059))

(declare-fun m!3110061 () Bool)

(assert (=> start!263256 m!3110061))

(declare-fun m!3110063 () Bool)

(assert (=> start!263256 m!3110063))

(declare-fun m!3110065 () Bool)

(assert (=> start!263256 m!3110065))

(check-sat (not b!2713670) (not b_next!77209) (not b!2713667) (not b!2713664) (not b!2713672) (not b!2713671) b_and!200247 (not start!263256) (not b!2713656) (not b!2713661) (not b!2713673) (not b!2713675) (not b!2713665) (not b!2713660) (not b!2713668) (not b!2713669) (not b_next!77211) (not b!2713662) (not b!2713674) (not b!2713657) b_and!200245 (not b!2713663) (not b!2713666))
(check-sat b_and!200247 b_and!200245 (not b_next!77211) (not b_next!77209))
(get-model)

(declare-fun d!781310 () Bool)

(declare-fun list!11842 (Conc!9801) List!31407)

(assert (=> d!781310 (= (list!11840 (_2!18112 lt!959971)) (list!11842 (c!438313 (_2!18112 lt!959971))))))

(declare-fun bs!487950 () Bool)

(assert (= bs!487950 d!781310))

(declare-fun m!3110067 () Bool)

(assert (=> bs!487950 m!3110067))

(assert (=> b!2713662 d!781310))

(declare-fun d!781312 () Bool)

(assert (=> d!781312 (= (list!11840 (_2!18112 lt!959975)) (list!11842 (c!438313 (_2!18112 lt!959975))))))

(declare-fun bs!487951 () Bool)

(assert (= bs!487951 d!781312))

(declare-fun m!3110069 () Bool)

(assert (=> bs!487951 m!3110069))

(assert (=> b!2713662 d!781312))

(declare-fun d!781314 () Bool)

(declare-fun e!1710530 () Bool)

(assert (=> d!781314 e!1710530))

(declare-fun res!1139582 () Bool)

(assert (=> d!781314 (=> (not res!1139582) (not e!1710530))))

(declare-fun isBalanced!2961 (Conc!9802) Bool)

(declare-fun prepend!1110 (Conc!9802 Token!9036) Conc!9802)

(assert (=> d!781314 (= res!1139582 (isBalanced!2961 (prepend!1110 (c!438315 (_1!18112 lt!959977)) (_1!18111 (v!32998 lt!959965)))))))

(declare-fun lt!959987 () BalanceConc!19218)

(assert (=> d!781314 (= lt!959987 (BalanceConc!19219 (prepend!1110 (c!438315 (_1!18112 lt!959977)) (_1!18111 (v!32998 lt!959965)))))))

(assert (=> d!781314 (= (prepend!1109 (_1!18112 lt!959977) (_1!18111 (v!32998 lt!959965))) lt!959987)))

(declare-fun b!2713678 () Bool)

(assert (=> b!2713678 (= e!1710530 (= (list!11841 lt!959987) (Cons!31309 (_1!18111 (v!32998 lt!959965)) (list!11841 (_1!18112 lt!959977)))))))

(assert (= (and d!781314 res!1139582) b!2713678))

(declare-fun m!3110071 () Bool)

(assert (=> d!781314 m!3110071))

(assert (=> d!781314 m!3110071))

(declare-fun m!3110073 () Bool)

(assert (=> d!781314 m!3110073))

(declare-fun m!3110075 () Bool)

(assert (=> b!2713678 m!3110075))

(assert (=> b!2713678 m!3110031))

(assert (=> b!2713673 d!781314))

(declare-fun d!781316 () Bool)

(declare-fun c!438319 () Bool)

(assert (=> d!781316 (= c!438319 ((_ is Node!9801) (c!438313 treated!9)))))

(declare-fun e!1710535 () Bool)

(assert (=> d!781316 (= (inv!42471 (c!438313 treated!9)) e!1710535)))

(declare-fun b!2713685 () Bool)

(declare-fun inv!42475 (Conc!9801) Bool)

(assert (=> b!2713685 (= e!1710535 (inv!42475 (c!438313 treated!9)))))

(declare-fun b!2713686 () Bool)

(declare-fun e!1710536 () Bool)

(assert (=> b!2713686 (= e!1710535 e!1710536)))

(declare-fun res!1139585 () Bool)

(assert (=> b!2713686 (= res!1139585 (not ((_ is Leaf!14939) (c!438313 treated!9))))))

(assert (=> b!2713686 (=> res!1139585 e!1710536)))

(declare-fun b!2713687 () Bool)

(declare-fun inv!42476 (Conc!9801) Bool)

(assert (=> b!2713687 (= e!1710536 (inv!42476 (c!438313 treated!9)))))

(assert (= (and d!781316 c!438319) b!2713685))

(assert (= (and d!781316 (not c!438319)) b!2713686))

(assert (= (and b!2713686 (not res!1139585)) b!2713687))

(declare-fun m!3110077 () Bool)

(assert (=> b!2713685 m!3110077))

(declare-fun m!3110079 () Bool)

(assert (=> b!2713687 m!3110079))

(assert (=> b!2713672 d!781316))

(declare-fun d!781318 () Bool)

(assert (=> d!781318 (= (isEmpty!17841 rules!1182) ((_ is Nil!31310) rules!1182))))

(assert (=> b!2713674 d!781318))

(declare-fun d!781320 () Bool)

(declare-fun list!11843 (Conc!9802) List!31409)

(assert (=> d!781320 (= (list!11841 acc!331) (list!11843 (c!438315 acc!331)))))

(declare-fun bs!487952 () Bool)

(assert (= bs!487952 d!781320))

(declare-fun m!3110081 () Bool)

(assert (=> bs!487952 m!3110081))

(assert (=> b!2713663 d!781320))

(declare-fun d!781322 () Bool)

(assert (=> d!781322 (= (list!11841 (_1!18112 lt!959979)) (list!11843 (c!438315 (_1!18112 lt!959979))))))

(declare-fun bs!487953 () Bool)

(assert (= bs!487953 d!781322))

(declare-fun m!3110083 () Bool)

(assert (=> bs!487953 m!3110083))

(assert (=> b!2713663 d!781322))

(declare-fun b!2713702 () Bool)

(declare-fun res!1139595 () Bool)

(declare-fun e!1710548 () Bool)

(assert (=> b!2713702 (=> (not res!1139595) (not e!1710548))))

(declare-fun lt!959994 () tuple2!30960)

(assert (=> b!2713702 (= res!1139595 (= (list!11841 (_1!18112 lt!959994)) (_1!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 treated!9)))))))

(declare-fun b!2713703 () Bool)

(declare-fun e!1710547 () Bool)

(declare-fun isEmpty!17843 (BalanceConc!19218) Bool)

(assert (=> b!2713703 (= e!1710547 (not (isEmpty!17843 (_1!18112 lt!959994))))))

(declare-fun b!2713705 () Bool)

(declare-fun e!1710546 () Bool)

(assert (=> b!2713705 (= e!1710546 (= (list!11840 (_2!18112 lt!959994)) (list!11840 treated!9)))))

(declare-fun b!2713706 () Bool)

(assert (=> b!2713706 (= e!1710548 (= (list!11840 (_2!18112 lt!959994)) (_2!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 treated!9)))))))

(declare-fun b!2713707 () Bool)

(declare-fun e!1710545 () tuple2!30960)

(assert (=> b!2713707 (= e!1710545 (tuple2!30961 (BalanceConc!19219 Empty!9802) treated!9))))

(declare-fun b!2713708 () Bool)

(declare-fun lt!959996 () tuple2!30960)

(declare-fun lt!959995 () Option!6175)

(assert (=> b!2713708 (= e!1710545 (tuple2!30961 (prepend!1109 (_1!18112 lt!959996) (_1!18111 (v!32998 lt!959995))) (_2!18112 lt!959996)))))

(assert (=> b!2713708 (= lt!959996 (lexRec!643 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!959995))))))

(declare-fun d!781324 () Bool)

(assert (=> d!781324 e!1710548))

(declare-fun res!1139596 () Bool)

(assert (=> d!781324 (=> (not res!1139596) (not e!1710548))))

(assert (=> d!781324 (= res!1139596 e!1710546)))

(declare-fun c!438324 () Bool)

(declare-fun size!24147 (BalanceConc!19218) Int)

(assert (=> d!781324 (= c!438324 (> (size!24147 (_1!18112 lt!959994)) 0))))

(assert (=> d!781324 (= lt!959994 e!1710545)))

(declare-fun c!438325 () Bool)

(assert (=> d!781324 (= c!438325 ((_ is Some!6174) lt!959995))))

(assert (=> d!781324 (= lt!959995 (maxPrefixZipperSequence!1031 thiss!11556 rules!1182 treated!9))))

(assert (=> d!781324 (= (lexRec!643 thiss!11556 rules!1182 treated!9) lt!959994)))

(declare-fun b!2713704 () Bool)

(assert (=> b!2713704 (= e!1710546 e!1710547)))

(declare-fun res!1139594 () Bool)

(declare-fun size!24148 (BalanceConc!19216) Int)

(assert (=> b!2713704 (= res!1139594 (< (size!24148 (_2!18112 lt!959994)) (size!24148 treated!9)))))

(assert (=> b!2713704 (=> (not res!1139594) (not e!1710547))))

(assert (= (and d!781324 c!438325) b!2713708))

(assert (= (and d!781324 (not c!438325)) b!2713707))

(assert (= (and d!781324 c!438324) b!2713704))

(assert (= (and d!781324 (not c!438324)) b!2713705))

(assert (= (and b!2713704 res!1139594) b!2713703))

(assert (= (and d!781324 res!1139596) b!2713702))

(assert (= (and b!2713702 res!1139595) b!2713706))

(declare-fun m!3110085 () Bool)

(assert (=> b!2713708 m!3110085))

(declare-fun m!3110087 () Bool)

(assert (=> b!2713708 m!3110087))

(declare-fun m!3110089 () Bool)

(assert (=> b!2713704 m!3110089))

(declare-fun m!3110091 () Bool)

(assert (=> b!2713704 m!3110091))

(declare-fun m!3110093 () Bool)

(assert (=> b!2713706 m!3110093))

(assert (=> b!2713706 m!3110051))

(assert (=> b!2713706 m!3110051))

(declare-fun m!3110095 () Bool)

(assert (=> b!2713706 m!3110095))

(assert (=> b!2713705 m!3110093))

(assert (=> b!2713705 m!3110051))

(declare-fun m!3110097 () Bool)

(assert (=> b!2713703 m!3110097))

(declare-fun m!3110099 () Bool)

(assert (=> b!2713702 m!3110099))

(assert (=> b!2713702 m!3110051))

(assert (=> b!2713702 m!3110051))

(assert (=> b!2713702 m!3110095))

(declare-fun m!3110101 () Bool)

(assert (=> d!781324 m!3110101))

(declare-fun m!3110103 () Bool)

(assert (=> d!781324 m!3110103))

(assert (=> b!2713663 d!781324))

(declare-fun b!2713709 () Bool)

(declare-fun res!1139598 () Bool)

(declare-fun e!1710552 () Bool)

(assert (=> b!2713709 (=> (not res!1139598) (not e!1710552))))

(declare-fun lt!959997 () tuple2!30960)

(assert (=> b!2713709 (= res!1139598 (= (list!11841 (_1!18112 lt!959997)) (_1!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 input!603)))))))

(declare-fun b!2713710 () Bool)

(declare-fun e!1710551 () Bool)

(assert (=> b!2713710 (= e!1710551 (not (isEmpty!17843 (_1!18112 lt!959997))))))

(declare-fun b!2713712 () Bool)

(declare-fun e!1710550 () Bool)

(assert (=> b!2713712 (= e!1710550 (= (list!11840 (_2!18112 lt!959997)) (list!11840 input!603)))))

(declare-fun b!2713713 () Bool)

(assert (=> b!2713713 (= e!1710552 (= (list!11840 (_2!18112 lt!959997)) (_2!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 input!603)))))))

(declare-fun b!2713714 () Bool)

(declare-fun e!1710549 () tuple2!30960)

(assert (=> b!2713714 (= e!1710549 (tuple2!30961 (BalanceConc!19219 Empty!9802) input!603))))

(declare-fun b!2713715 () Bool)

(declare-fun lt!959999 () tuple2!30960)

(declare-fun lt!959998 () Option!6175)

(assert (=> b!2713715 (= e!1710549 (tuple2!30961 (prepend!1109 (_1!18112 lt!959999) (_1!18111 (v!32998 lt!959998))) (_2!18112 lt!959999)))))

(assert (=> b!2713715 (= lt!959999 (lexRec!643 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!959998))))))

(declare-fun d!781328 () Bool)

(assert (=> d!781328 e!1710552))

(declare-fun res!1139599 () Bool)

(assert (=> d!781328 (=> (not res!1139599) (not e!1710552))))

(assert (=> d!781328 (= res!1139599 e!1710550)))

(declare-fun c!438326 () Bool)

(assert (=> d!781328 (= c!438326 (> (size!24147 (_1!18112 lt!959997)) 0))))

(assert (=> d!781328 (= lt!959997 e!1710549)))

(declare-fun c!438327 () Bool)

(assert (=> d!781328 (= c!438327 ((_ is Some!6174) lt!959998))))

(assert (=> d!781328 (= lt!959998 (maxPrefixZipperSequence!1031 thiss!11556 rules!1182 input!603))))

(assert (=> d!781328 (= (lexRec!643 thiss!11556 rules!1182 input!603) lt!959997)))

(declare-fun b!2713711 () Bool)

(assert (=> b!2713711 (= e!1710550 e!1710551)))

(declare-fun res!1139597 () Bool)

(assert (=> b!2713711 (= res!1139597 (< (size!24148 (_2!18112 lt!959997)) (size!24148 input!603)))))

(assert (=> b!2713711 (=> (not res!1139597) (not e!1710551))))

(assert (= (and d!781328 c!438327) b!2713715))

(assert (= (and d!781328 (not c!438327)) b!2713714))

(assert (= (and d!781328 c!438326) b!2713711))

(assert (= (and d!781328 (not c!438326)) b!2713712))

(assert (= (and b!2713711 res!1139597) b!2713710))

(assert (= (and d!781328 res!1139599) b!2713709))

(assert (= (and b!2713709 res!1139598) b!2713713))

(declare-fun m!3110105 () Bool)

(assert (=> b!2713715 m!3110105))

(declare-fun m!3110107 () Bool)

(assert (=> b!2713715 m!3110107))

(declare-fun m!3110109 () Bool)

(assert (=> b!2713711 m!3110109))

(declare-fun m!3110111 () Bool)

(assert (=> b!2713711 m!3110111))

(declare-fun m!3110113 () Bool)

(assert (=> b!2713713 m!3110113))

(assert (=> b!2713713 m!3110049))

(assert (=> b!2713713 m!3110049))

(declare-fun m!3110115 () Bool)

(assert (=> b!2713713 m!3110115))

(assert (=> b!2713712 m!3110113))

(assert (=> b!2713712 m!3110049))

(declare-fun m!3110117 () Bool)

(assert (=> b!2713710 m!3110117))

(declare-fun m!3110119 () Bool)

(assert (=> b!2713709 m!3110119))

(assert (=> b!2713709 m!3110049))

(assert (=> b!2713709 m!3110049))

(assert (=> b!2713709 m!3110115))

(declare-fun m!3110121 () Bool)

(assert (=> d!781328 m!3110121))

(assert (=> d!781328 m!3109955))

(assert (=> b!2713670 d!781328))

(declare-fun d!781330 () Bool)

(assert (=> d!781330 (= (list!11841 (_1!18112 lt!959971)) (list!11843 (c!438315 (_1!18112 lt!959971))))))

(declare-fun bs!487954 () Bool)

(assert (= bs!487954 d!781330))

(declare-fun m!3110123 () Bool)

(assert (=> bs!487954 m!3110123))

(assert (=> b!2713670 d!781330))

(declare-fun b!2713716 () Bool)

(declare-fun res!1139601 () Bool)

(declare-fun e!1710556 () Bool)

(assert (=> b!2713716 (=> (not res!1139601) (not e!1710556))))

(declare-fun lt!960000 () tuple2!30960)

(assert (=> b!2713716 (= res!1139601 (= (list!11841 (_1!18112 lt!960000)) (_1!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 totalInput!328)))))))

(declare-fun b!2713717 () Bool)

(declare-fun e!1710555 () Bool)

(assert (=> b!2713717 (= e!1710555 (not (isEmpty!17843 (_1!18112 lt!960000))))))

(declare-fun b!2713719 () Bool)

(declare-fun e!1710554 () Bool)

(assert (=> b!2713719 (= e!1710554 (= (list!11840 (_2!18112 lt!960000)) (list!11840 totalInput!328)))))

(declare-fun b!2713720 () Bool)

(assert (=> b!2713720 (= e!1710556 (= (list!11840 (_2!18112 lt!960000)) (_2!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 totalInput!328)))))))

(declare-fun b!2713721 () Bool)

(declare-fun e!1710553 () tuple2!30960)

(assert (=> b!2713721 (= e!1710553 (tuple2!30961 (BalanceConc!19219 Empty!9802) totalInput!328))))

(declare-fun b!2713722 () Bool)

(declare-fun lt!960002 () tuple2!30960)

(declare-fun lt!960001 () Option!6175)

(assert (=> b!2713722 (= e!1710553 (tuple2!30961 (prepend!1109 (_1!18112 lt!960002) (_1!18111 (v!32998 lt!960001))) (_2!18112 lt!960002)))))

(assert (=> b!2713722 (= lt!960002 (lexRec!643 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!960001))))))

(declare-fun d!781332 () Bool)

(assert (=> d!781332 e!1710556))

(declare-fun res!1139602 () Bool)

(assert (=> d!781332 (=> (not res!1139602) (not e!1710556))))

(assert (=> d!781332 (= res!1139602 e!1710554)))

(declare-fun c!438328 () Bool)

(assert (=> d!781332 (= c!438328 (> (size!24147 (_1!18112 lt!960000)) 0))))

(assert (=> d!781332 (= lt!960000 e!1710553)))

(declare-fun c!438329 () Bool)

(assert (=> d!781332 (= c!438329 ((_ is Some!6174) lt!960001))))

(assert (=> d!781332 (= lt!960001 (maxPrefixZipperSequence!1031 thiss!11556 rules!1182 totalInput!328))))

(assert (=> d!781332 (= (lexRec!643 thiss!11556 rules!1182 totalInput!328) lt!960000)))

(declare-fun b!2713718 () Bool)

(assert (=> b!2713718 (= e!1710554 e!1710555)))

(declare-fun res!1139600 () Bool)

(assert (=> b!2713718 (= res!1139600 (< (size!24148 (_2!18112 lt!960000)) (size!24148 totalInput!328)))))

(assert (=> b!2713718 (=> (not res!1139600) (not e!1710555))))

(assert (= (and d!781332 c!438329) b!2713722))

(assert (= (and d!781332 (not c!438329)) b!2713721))

(assert (= (and d!781332 c!438328) b!2713718))

(assert (= (and d!781332 (not c!438328)) b!2713719))

(assert (= (and b!2713718 res!1139600) b!2713717))

(assert (= (and d!781332 res!1139602) b!2713716))

(assert (= (and b!2713716 res!1139601) b!2713720))

(declare-fun m!3110125 () Bool)

(assert (=> b!2713722 m!3110125))

(declare-fun m!3110127 () Bool)

(assert (=> b!2713722 m!3110127))

(declare-fun m!3110129 () Bool)

(assert (=> b!2713718 m!3110129))

(declare-fun m!3110131 () Bool)

(assert (=> b!2713718 m!3110131))

(declare-fun m!3110133 () Bool)

(assert (=> b!2713720 m!3110133))

(assert (=> b!2713720 m!3110047))

(assert (=> b!2713720 m!3110047))

(declare-fun m!3110135 () Bool)

(assert (=> b!2713720 m!3110135))

(assert (=> b!2713719 m!3110133))

(assert (=> b!2713719 m!3110047))

(declare-fun m!3110137 () Bool)

(assert (=> b!2713717 m!3110137))

(declare-fun m!3110139 () Bool)

(assert (=> b!2713716 m!3110139))

(assert (=> b!2713716 m!3110047))

(assert (=> b!2713716 m!3110047))

(assert (=> b!2713716 m!3110135))

(declare-fun m!3110141 () Bool)

(assert (=> d!781332 m!3110141))

(declare-fun m!3110143 () Bool)

(assert (=> d!781332 m!3110143))

(assert (=> b!2713670 d!781332))

(declare-fun b!2713733 () Bool)

(declare-fun res!1139613 () Bool)

(declare-fun e!1710559 () Bool)

(assert (=> b!2713733 (=> (not res!1139613) (not e!1710559))))

(declare-fun height!1443 (Conc!9802) Int)

(declare-fun ++!7750 (Conc!9802 Conc!9802) Conc!9802)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2713733 (= res!1139613 (>= (height!1443 (++!7750 (c!438315 acc!331) (c!438315 (_1!18112 lt!959975)))) (max!0 (height!1443 (c!438315 acc!331)) (height!1443 (c!438315 (_1!18112 lt!959975))))))))

(declare-fun b!2713732 () Bool)

(declare-fun res!1139612 () Bool)

(assert (=> b!2713732 (=> (not res!1139612) (not e!1710559))))

(assert (=> b!2713732 (= res!1139612 (<= (height!1443 (++!7750 (c!438315 acc!331) (c!438315 (_1!18112 lt!959975)))) (+ (max!0 (height!1443 (c!438315 acc!331)) (height!1443 (c!438315 (_1!18112 lt!959975)))) 1)))))

(declare-fun d!781334 () Bool)

(assert (=> d!781334 e!1710559))

(declare-fun res!1139611 () Bool)

(assert (=> d!781334 (=> (not res!1139611) (not e!1710559))))

(declare-fun appendAssocInst!680 (Conc!9802 Conc!9802) Bool)

(assert (=> d!781334 (= res!1139611 (appendAssocInst!680 (c!438315 acc!331) (c!438315 (_1!18112 lt!959975))))))

(declare-fun lt!960005 () BalanceConc!19218)

(assert (=> d!781334 (= lt!960005 (BalanceConc!19219 (++!7750 (c!438315 acc!331) (c!438315 (_1!18112 lt!959975)))))))

(assert (=> d!781334 (= (++!7749 acc!331 (_1!18112 lt!959975)) lt!960005)))

(declare-fun b!2713731 () Bool)

(declare-fun res!1139614 () Bool)

(assert (=> b!2713731 (=> (not res!1139614) (not e!1710559))))

(assert (=> b!2713731 (= res!1139614 (isBalanced!2961 (++!7750 (c!438315 acc!331) (c!438315 (_1!18112 lt!959975)))))))

(declare-fun b!2713734 () Bool)

(assert (=> b!2713734 (= e!1710559 (= (list!11841 lt!960005) (++!7748 (list!11841 acc!331) (list!11841 (_1!18112 lt!959975)))))))

(assert (= (and d!781334 res!1139611) b!2713731))

(assert (= (and b!2713731 res!1139614) b!2713732))

(assert (= (and b!2713732 res!1139612) b!2713733))

(assert (= (and b!2713733 res!1139613) b!2713734))

(declare-fun m!3110145 () Bool)

(assert (=> b!2713732 m!3110145))

(declare-fun m!3110147 () Bool)

(assert (=> b!2713732 m!3110147))

(declare-fun m!3110149 () Bool)

(assert (=> b!2713732 m!3110149))

(assert (=> b!2713732 m!3110145))

(assert (=> b!2713732 m!3110149))

(declare-fun m!3110151 () Bool)

(assert (=> b!2713732 m!3110151))

(assert (=> b!2713732 m!3110147))

(declare-fun m!3110153 () Bool)

(assert (=> b!2713732 m!3110153))

(declare-fun m!3110155 () Bool)

(assert (=> b!2713734 m!3110155))

(assert (=> b!2713734 m!3109975))

(declare-fun m!3110157 () Bool)

(assert (=> b!2713734 m!3110157))

(assert (=> b!2713734 m!3109975))

(assert (=> b!2713734 m!3110157))

(declare-fun m!3110159 () Bool)

(assert (=> b!2713734 m!3110159))

(assert (=> b!2713731 m!3110147))

(assert (=> b!2713731 m!3110147))

(declare-fun m!3110161 () Bool)

(assert (=> b!2713731 m!3110161))

(assert (=> b!2713733 m!3110145))

(assert (=> b!2713733 m!3110147))

(assert (=> b!2713733 m!3110149))

(assert (=> b!2713733 m!3110145))

(assert (=> b!2713733 m!3110149))

(assert (=> b!2713733 m!3110151))

(assert (=> b!2713733 m!3110147))

(assert (=> b!2713733 m!3110153))

(declare-fun m!3110163 () Bool)

(assert (=> d!781334 m!3110163))

(assert (=> d!781334 m!3110147))

(assert (=> b!2713670 d!781334))

(declare-fun d!781336 () Bool)

(assert (=> d!781336 (= (list!11841 (++!7749 acc!331 (_1!18112 lt!959975))) (list!11843 (c!438315 (++!7749 acc!331 (_1!18112 lt!959975)))))))

(declare-fun bs!487955 () Bool)

(assert (= bs!487955 d!781336))

(declare-fun m!3110165 () Bool)

(assert (=> bs!487955 m!3110165))

(assert (=> b!2713670 d!781336))

(declare-fun d!781338 () Bool)

(declare-fun c!438335 () Bool)

(assert (=> d!781338 (= c!438335 ((_ is Node!9802) (c!438315 acc!331)))))

(declare-fun e!1710564 () Bool)

(assert (=> d!781338 (= (inv!42470 (c!438315 acc!331)) e!1710564)))

(declare-fun b!2713741 () Bool)

(declare-fun inv!42477 (Conc!9802) Bool)

(assert (=> b!2713741 (= e!1710564 (inv!42477 (c!438315 acc!331)))))

(declare-fun b!2713742 () Bool)

(declare-fun e!1710565 () Bool)

(assert (=> b!2713742 (= e!1710564 e!1710565)))

(declare-fun res!1139617 () Bool)

(assert (=> b!2713742 (= res!1139617 (not ((_ is Leaf!14940) (c!438315 acc!331))))))

(assert (=> b!2713742 (=> res!1139617 e!1710565)))

(declare-fun b!2713743 () Bool)

(declare-fun inv!42478 (Conc!9802) Bool)

(assert (=> b!2713743 (= e!1710565 (inv!42478 (c!438315 acc!331)))))

(assert (= (and d!781338 c!438335) b!2713741))

(assert (= (and d!781338 (not c!438335)) b!2713742))

(assert (= (and b!2713742 (not res!1139617)) b!2713743))

(declare-fun m!3110167 () Bool)

(assert (=> b!2713741 m!3110167))

(declare-fun m!3110169 () Bool)

(assert (=> b!2713743 m!3110169))

(assert (=> b!2713661 d!781338))

(declare-fun d!781340 () Bool)

(declare-fun c!438336 () Bool)

(assert (=> d!781340 (= c!438336 ((_ is Node!9801) (c!438313 totalInput!328)))))

(declare-fun e!1710566 () Bool)

(assert (=> d!781340 (= (inv!42471 (c!438313 totalInput!328)) e!1710566)))

(declare-fun b!2713744 () Bool)

(assert (=> b!2713744 (= e!1710566 (inv!42475 (c!438313 totalInput!328)))))

(declare-fun b!2713745 () Bool)

(declare-fun e!1710567 () Bool)

(assert (=> b!2713745 (= e!1710566 e!1710567)))

(declare-fun res!1139618 () Bool)

(assert (=> b!2713745 (= res!1139618 (not ((_ is Leaf!14939) (c!438313 totalInput!328))))))

(assert (=> b!2713745 (=> res!1139618 e!1710567)))

(declare-fun b!2713746 () Bool)

(assert (=> b!2713746 (= e!1710567 (inv!42476 (c!438313 totalInput!328)))))

(assert (= (and d!781340 c!438336) b!2713744))

(assert (= (and d!781340 (not c!438336)) b!2713745))

(assert (= (and b!2713745 (not res!1139618)) b!2713746))

(declare-fun m!3110171 () Bool)

(assert (=> b!2713744 m!3110171))

(declare-fun m!3110173 () Bool)

(assert (=> b!2713746 m!3110173))

(assert (=> b!2713671 d!781340))

(declare-fun d!781342 () Bool)

(declare-fun res!1139633 () Bool)

(declare-fun e!1710582 () Bool)

(assert (=> d!781342 (=> (not res!1139633) (not e!1710582))))

(declare-fun rulesValid!1777 (LexerInterface!4383 List!31410) Bool)

(assert (=> d!781342 (= res!1139633 (rulesValid!1777 thiss!11556 rules!1182))))

(assert (=> d!781342 (= (rulesInvariant!3868 thiss!11556 rules!1182) e!1710582)))

(declare-fun b!2713765 () Bool)

(declare-datatypes ((List!31411 0))(
  ( (Nil!31311) (Cons!31311 (h!36731 String!34945) (t!226221 List!31411)) )
))
(declare-fun noDuplicateTag!1773 (LexerInterface!4383 List!31410 List!31411) Bool)

(assert (=> b!2713765 (= e!1710582 (noDuplicateTag!1773 thiss!11556 rules!1182 Nil!31311))))

(assert (= (and d!781342 res!1139633) b!2713765))

(declare-fun m!3110175 () Bool)

(assert (=> d!781342 m!3110175))

(declare-fun m!3110177 () Bool)

(assert (=> b!2713765 m!3110177))

(assert (=> b!2713657 d!781342))

(declare-fun b!2713783 () Bool)

(declare-fun e!1710593 () List!31409)

(assert (=> b!2713783 (= e!1710593 (Cons!31309 (h!36729 lt!959972) (++!7748 (t!226211 lt!959972) (++!7748 lt!959966 lt!959973))))))

(declare-fun d!781344 () Bool)

(declare-fun e!1710594 () Bool)

(assert (=> d!781344 e!1710594))

(declare-fun res!1139644 () Bool)

(assert (=> d!781344 (=> (not res!1139644) (not e!1710594))))

(declare-fun lt!960029 () List!31409)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4428 (List!31409) (InoxSet Token!9036))

(assert (=> d!781344 (= res!1139644 (= (content!4428 lt!960029) ((_ map or) (content!4428 lt!959972) (content!4428 (++!7748 lt!959966 lt!959973)))))))

(assert (=> d!781344 (= lt!960029 e!1710593)))

(declare-fun c!438342 () Bool)

(assert (=> d!781344 (= c!438342 ((_ is Nil!31309) lt!959972))))

(assert (=> d!781344 (= (++!7748 lt!959972 (++!7748 lt!959966 lt!959973)) lt!960029)))

(declare-fun b!2713782 () Bool)

(assert (=> b!2713782 (= e!1710593 (++!7748 lt!959966 lt!959973))))

(declare-fun b!2713784 () Bool)

(declare-fun res!1139645 () Bool)

(assert (=> b!2713784 (=> (not res!1139645) (not e!1710594))))

(declare-fun size!24149 (List!31409) Int)

(assert (=> b!2713784 (= res!1139645 (= (size!24149 lt!960029) (+ (size!24149 lt!959972) (size!24149 (++!7748 lt!959966 lt!959973)))))))

(declare-fun b!2713785 () Bool)

(assert (=> b!2713785 (= e!1710594 (or (not (= (++!7748 lt!959966 lt!959973) Nil!31309)) (= lt!960029 lt!959972)))))

(assert (= (and d!781344 c!438342) b!2713782))

(assert (= (and d!781344 (not c!438342)) b!2713783))

(assert (= (and d!781344 res!1139644) b!2713784))

(assert (= (and b!2713784 res!1139645) b!2713785))

(assert (=> b!2713783 m!3109999))

(declare-fun m!3110179 () Bool)

(assert (=> b!2713783 m!3110179))

(declare-fun m!3110181 () Bool)

(assert (=> d!781344 m!3110181))

(declare-fun m!3110183 () Bool)

(assert (=> d!781344 m!3110183))

(assert (=> d!781344 m!3109999))

(declare-fun m!3110185 () Bool)

(assert (=> d!781344 m!3110185))

(declare-fun m!3110187 () Bool)

(assert (=> b!2713784 m!3110187))

(declare-fun m!3110189 () Bool)

(assert (=> b!2713784 m!3110189))

(assert (=> b!2713784 m!3109999))

(declare-fun m!3110191 () Bool)

(assert (=> b!2713784 m!3110191))

(assert (=> b!2713656 d!781344))

(declare-fun b!2713787 () Bool)

(declare-fun e!1710595 () List!31409)

(assert (=> b!2713787 (= e!1710595 (Cons!31309 (h!36729 (++!7748 lt!959972 lt!959966)) (++!7748 (t!226211 (++!7748 lt!959972 lt!959966)) lt!959973)))))

(declare-fun d!781346 () Bool)

(declare-fun e!1710596 () Bool)

(assert (=> d!781346 e!1710596))

(declare-fun res!1139646 () Bool)

(assert (=> d!781346 (=> (not res!1139646) (not e!1710596))))

(declare-fun lt!960030 () List!31409)

(assert (=> d!781346 (= res!1139646 (= (content!4428 lt!960030) ((_ map or) (content!4428 (++!7748 lt!959972 lt!959966)) (content!4428 lt!959973))))))

(assert (=> d!781346 (= lt!960030 e!1710595)))

(declare-fun c!438343 () Bool)

(assert (=> d!781346 (= c!438343 ((_ is Nil!31309) (++!7748 lt!959972 lt!959966)))))

(assert (=> d!781346 (= (++!7748 (++!7748 lt!959972 lt!959966) lt!959973) lt!960030)))

(declare-fun b!2713786 () Bool)

(assert (=> b!2713786 (= e!1710595 lt!959973)))

(declare-fun b!2713788 () Bool)

(declare-fun res!1139647 () Bool)

(assert (=> b!2713788 (=> (not res!1139647) (not e!1710596))))

(assert (=> b!2713788 (= res!1139647 (= (size!24149 lt!960030) (+ (size!24149 (++!7748 lt!959972 lt!959966)) (size!24149 lt!959973))))))

(declare-fun b!2713789 () Bool)

(assert (=> b!2713789 (= e!1710596 (or (not (= lt!959973 Nil!31309)) (= lt!960030 (++!7748 lt!959972 lt!959966))))))

(assert (= (and d!781346 c!438343) b!2713786))

(assert (= (and d!781346 (not c!438343)) b!2713787))

(assert (= (and d!781346 res!1139646) b!2713788))

(assert (= (and b!2713788 res!1139647) b!2713789))

(declare-fun m!3110195 () Bool)

(assert (=> b!2713787 m!3110195))

(declare-fun m!3110199 () Bool)

(assert (=> d!781346 m!3110199))

(assert (=> d!781346 m!3110003))

(declare-fun m!3110203 () Bool)

(assert (=> d!781346 m!3110203))

(declare-fun m!3110205 () Bool)

(assert (=> d!781346 m!3110205))

(declare-fun m!3110209 () Bool)

(assert (=> b!2713788 m!3110209))

(assert (=> b!2713788 m!3110003))

(declare-fun m!3110211 () Bool)

(assert (=> b!2713788 m!3110211))

(declare-fun m!3110215 () Bool)

(assert (=> b!2713788 m!3110215))

(assert (=> b!2713656 d!781346))

(declare-fun b!2713821 () Bool)

(declare-fun e!1710622 () Option!6175)

(declare-fun call!175022 () Option!6175)

(assert (=> b!2713821 (= e!1710622 call!175022)))

(declare-fun bm!175017 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!475 (LexerInterface!4383 Rule!9374 BalanceConc!19216) Option!6175)

(assert (=> bm!175017 (= call!175022 (maxPrefixOneRuleZipperSequence!475 thiss!11556 (h!36730 rules!1182) lt!959978))))

(declare-fun e!1710623 () Bool)

(declare-fun b!2713822 () Bool)

(declare-fun lt!960053 () Option!6175)

(declare-fun get!9766 (Option!6175) tuple2!30958)

(declare-datatypes ((tuple2!30966 0))(
  ( (tuple2!30967 (_1!18115 Token!9036) (_2!18115 List!31407)) )
))
(declare-datatypes ((Option!6177 0))(
  ( (None!6176) (Some!6176 (v!33004 tuple2!30966)) )
))
(declare-fun get!9767 (Option!6177) tuple2!30966)

(declare-fun maxPrefix!2362 (LexerInterface!4383 List!31410 List!31407) Option!6177)

(assert (=> b!2713822 (= e!1710623 (= (list!11840 (_2!18111 (get!9766 lt!960053))) (_2!18115 (get!9767 (maxPrefix!2362 thiss!11556 rules!1182 (list!11840 lt!959978))))))))

(declare-fun d!781348 () Bool)

(declare-fun e!1710625 () Bool)

(assert (=> d!781348 e!1710625))

(declare-fun res!1139671 () Bool)

(assert (=> d!781348 (=> (not res!1139671) (not e!1710625))))

(declare-fun isDefined!4885 (Option!6175) Bool)

(declare-fun isDefined!4886 (Option!6177) Bool)

(declare-fun maxPrefixZipper!466 (LexerInterface!4383 List!31410 List!31407) Option!6177)

(assert (=> d!781348 (= res!1139671 (= (isDefined!4885 lt!960053) (isDefined!4886 (maxPrefixZipper!466 thiss!11556 rules!1182 (list!11840 lt!959978)))))))

(assert (=> d!781348 (= lt!960053 e!1710622)))

(declare-fun c!438351 () Bool)

(assert (=> d!781348 (= c!438351 (and ((_ is Cons!31310) rules!1182) ((_ is Nil!31310) (t!226212 rules!1182))))))

(declare-fun lt!960051 () Unit!45344)

(declare-fun lt!960048 () Unit!45344)

(assert (=> d!781348 (= lt!960051 lt!960048)))

(declare-fun lt!960054 () List!31407)

(declare-fun lt!960049 () List!31407)

(declare-fun isPrefix!2479 (List!31407 List!31407) Bool)

(assert (=> d!781348 (isPrefix!2479 lt!960054 lt!960049)))

(declare-fun lemmaIsPrefixRefl!1605 (List!31407 List!31407) Unit!45344)

(assert (=> d!781348 (= lt!960048 (lemmaIsPrefixRefl!1605 lt!960054 lt!960049))))

(assert (=> d!781348 (= lt!960049 (list!11840 lt!959978))))

(assert (=> d!781348 (= lt!960054 (list!11840 lt!959978))))

(declare-fun rulesValidInductive!1663 (LexerInterface!4383 List!31410) Bool)

(assert (=> d!781348 (rulesValidInductive!1663 thiss!11556 rules!1182)))

(assert (=> d!781348 (= (maxPrefixZipperSequence!1031 thiss!11556 rules!1182 lt!959978) lt!960053)))

(declare-fun e!1710624 () Bool)

(declare-fun b!2713823 () Bool)

(assert (=> b!2713823 (= e!1710624 (= (list!11840 (_2!18111 (get!9766 lt!960053))) (_2!18115 (get!9767 (maxPrefixZipper!466 thiss!11556 rules!1182 (list!11840 lt!959978))))))))

(declare-fun b!2713824 () Bool)

(declare-fun e!1710621 () Bool)

(assert (=> b!2713824 (= e!1710621 e!1710623)))

(declare-fun res!1139670 () Bool)

(assert (=> b!2713824 (=> (not res!1139670) (not e!1710623))))

(assert (=> b!2713824 (= res!1139670 (= (_1!18111 (get!9766 lt!960053)) (_1!18115 (get!9767 (maxPrefix!2362 thiss!11556 rules!1182 (list!11840 lt!959978))))))))

(declare-fun b!2713825 () Bool)

(declare-fun e!1710620 () Bool)

(assert (=> b!2713825 (= e!1710620 e!1710624)))

(declare-fun res!1139668 () Bool)

(assert (=> b!2713825 (=> (not res!1139668) (not e!1710624))))

(assert (=> b!2713825 (= res!1139668 (= (_1!18111 (get!9766 lt!960053)) (_1!18115 (get!9767 (maxPrefixZipper!466 thiss!11556 rules!1182 (list!11840 lt!959978))))))))

(declare-fun b!2713826 () Bool)

(declare-fun lt!960052 () Option!6175)

(declare-fun lt!960050 () Option!6175)

(assert (=> b!2713826 (= e!1710622 (ite (and ((_ is None!6174) lt!960052) ((_ is None!6174) lt!960050)) None!6174 (ite ((_ is None!6174) lt!960050) lt!960052 (ite ((_ is None!6174) lt!960052) lt!960050 (ite (>= (size!24146 (_1!18111 (v!32998 lt!960052))) (size!24146 (_1!18111 (v!32998 lt!960050)))) lt!960052 lt!960050)))))))

(assert (=> b!2713826 (= lt!960052 call!175022)))

(assert (=> b!2713826 (= lt!960050 (maxPrefixZipperSequence!1031 thiss!11556 (t!226212 rules!1182) lt!959978))))

(declare-fun b!2713827 () Bool)

(assert (=> b!2713827 (= e!1710625 e!1710621)))

(declare-fun res!1139672 () Bool)

(assert (=> b!2713827 (=> res!1139672 e!1710621)))

(assert (=> b!2713827 (= res!1139672 (not (isDefined!4885 lt!960053)))))

(declare-fun b!2713828 () Bool)

(declare-fun res!1139667 () Bool)

(assert (=> b!2713828 (=> (not res!1139667) (not e!1710625))))

(assert (=> b!2713828 (= res!1139667 e!1710620)))

(declare-fun res!1139669 () Bool)

(assert (=> b!2713828 (=> res!1139669 e!1710620)))

(assert (=> b!2713828 (= res!1139669 (not (isDefined!4885 lt!960053)))))

(assert (= (and d!781348 c!438351) b!2713821))

(assert (= (and d!781348 (not c!438351)) b!2713826))

(assert (= (or b!2713821 b!2713826) bm!175017))

(assert (= (and d!781348 res!1139671) b!2713828))

(assert (= (and b!2713828 (not res!1139669)) b!2713825))

(assert (= (and b!2713825 res!1139668) b!2713823))

(assert (= (and b!2713828 res!1139667) b!2713827))

(assert (= (and b!2713827 (not res!1139672)) b!2713824))

(assert (= (and b!2713824 res!1139670) b!2713822))

(declare-fun m!3110263 () Bool)

(assert (=> d!781348 m!3110263))

(declare-fun m!3110265 () Bool)

(assert (=> d!781348 m!3110265))

(declare-fun m!3110267 () Bool)

(assert (=> d!781348 m!3110267))

(declare-fun m!3110269 () Bool)

(assert (=> d!781348 m!3110269))

(declare-fun m!3110271 () Bool)

(assert (=> d!781348 m!3110271))

(declare-fun m!3110273 () Bool)

(assert (=> d!781348 m!3110273))

(assert (=> d!781348 m!3109985))

(assert (=> d!781348 m!3109985))

(assert (=> d!781348 m!3110271))

(declare-fun m!3110275 () Bool)

(assert (=> b!2713826 m!3110275))

(declare-fun m!3110277 () Bool)

(assert (=> b!2713822 m!3110277))

(assert (=> b!2713822 m!3109985))

(declare-fun m!3110279 () Bool)

(assert (=> b!2713822 m!3110279))

(declare-fun m!3110281 () Bool)

(assert (=> b!2713822 m!3110281))

(assert (=> b!2713822 m!3109985))

(assert (=> b!2713822 m!3110279))

(declare-fun m!3110283 () Bool)

(assert (=> b!2713822 m!3110283))

(assert (=> b!2713824 m!3110277))

(assert (=> b!2713824 m!3109985))

(assert (=> b!2713824 m!3109985))

(assert (=> b!2713824 m!3110279))

(assert (=> b!2713824 m!3110279))

(assert (=> b!2713824 m!3110283))

(assert (=> b!2713827 m!3110263))

(assert (=> b!2713825 m!3110277))

(assert (=> b!2713825 m!3109985))

(assert (=> b!2713825 m!3109985))

(assert (=> b!2713825 m!3110271))

(assert (=> b!2713825 m!3110271))

(declare-fun m!3110285 () Bool)

(assert (=> b!2713825 m!3110285))

(declare-fun m!3110287 () Bool)

(assert (=> bm!175017 m!3110287))

(assert (=> b!2713828 m!3110263))

(assert (=> b!2713823 m!3110277))

(assert (=> b!2713823 m!3110281))

(assert (=> b!2713823 m!3109985))

(assert (=> b!2713823 m!3110271))

(assert (=> b!2713823 m!3110285))

(assert (=> b!2713823 m!3109985))

(assert (=> b!2713823 m!3110271))

(assert (=> b!2713656 d!781348))

(declare-fun d!781376 () Bool)

(declare-fun e!1710650 () Bool)

(assert (=> d!781376 e!1710650))

(declare-fun c!438367 () Bool)

(declare-fun lt!960074 () tuple2!30962)

(assert (=> d!781376 (= c!438367 (> (size!24149 (_1!18113 lt!960074)) 0))))

(declare-fun e!1710651 () tuple2!30962)

(assert (=> d!781376 (= lt!960074 e!1710651)))

(declare-fun c!438366 () Bool)

(declare-fun lt!960075 () Option!6177)

(assert (=> d!781376 (= c!438366 ((_ is Some!6176) lt!960075))))

(assert (=> d!781376 (= lt!960075 (maxPrefix!2362 thiss!11556 rules!1182 lt!959968))))

(assert (=> d!781376 (= (lexList!1214 thiss!11556 rules!1182 lt!959968) lt!960074)))

(declare-fun b!2713875 () Bool)

(declare-fun lt!960073 () tuple2!30962)

(assert (=> b!2713875 (= e!1710651 (tuple2!30963 (Cons!31309 (_1!18115 (v!33004 lt!960075)) (_1!18113 lt!960073)) (_2!18113 lt!960073)))))

(assert (=> b!2713875 (= lt!960073 (lexList!1214 thiss!11556 rules!1182 (_2!18115 (v!33004 lt!960075))))))

(declare-fun b!2713876 () Bool)

(declare-fun e!1710649 () Bool)

(declare-fun isEmpty!17845 (List!31409) Bool)

(assert (=> b!2713876 (= e!1710649 (not (isEmpty!17845 (_1!18113 lt!960074))))))

(declare-fun b!2713877 () Bool)

(assert (=> b!2713877 (= e!1710650 e!1710649)))

(declare-fun res!1139697 () Bool)

(declare-fun size!24152 (List!31407) Int)

(assert (=> b!2713877 (= res!1139697 (< (size!24152 (_2!18113 lt!960074)) (size!24152 lt!959968)))))

(assert (=> b!2713877 (=> (not res!1139697) (not e!1710649))))

(declare-fun b!2713878 () Bool)

(assert (=> b!2713878 (= e!1710650 (= (_2!18113 lt!960074) lt!959968))))

(declare-fun b!2713879 () Bool)

(assert (=> b!2713879 (= e!1710651 (tuple2!30963 Nil!31309 lt!959968))))

(assert (= (and d!781376 c!438366) b!2713875))

(assert (= (and d!781376 (not c!438366)) b!2713879))

(assert (= (and d!781376 c!438367) b!2713877))

(assert (= (and d!781376 (not c!438367)) b!2713878))

(assert (= (and b!2713877 res!1139697) b!2713876))

(declare-fun m!3110337 () Bool)

(assert (=> d!781376 m!3110337))

(declare-fun m!3110339 () Bool)

(assert (=> d!781376 m!3110339))

(declare-fun m!3110341 () Bool)

(assert (=> b!2713875 m!3110341))

(declare-fun m!3110343 () Bool)

(assert (=> b!2713876 m!3110343))

(declare-fun m!3110345 () Bool)

(assert (=> b!2713877 m!3110345))

(declare-fun m!3110347 () Bool)

(assert (=> b!2713877 m!3110347))

(assert (=> b!2713656 d!781376))

(declare-fun lt!960080 () List!31407)

(declare-fun b!2713902 () Bool)

(declare-fun e!1710661 () Bool)

(assert (=> b!2713902 (= e!1710661 (or (not (= lt!959980 Nil!31307)) (= lt!960080 lt!959970)))))

(declare-fun b!2713898 () Bool)

(declare-fun e!1710662 () List!31407)

(assert (=> b!2713898 (= e!1710662 (Cons!31307 (h!36727 lt!959970) (++!7746 (t!226209 lt!959970) lt!959980)))))

(declare-fun b!2713900 () Bool)

(declare-fun res!1139708 () Bool)

(assert (=> b!2713900 (=> (not res!1139708) (not e!1710661))))

(assert (=> b!2713900 (= res!1139708 (= (size!24152 lt!960080) (+ (size!24152 lt!959970) (size!24152 lt!959980))))))

(declare-fun b!2713896 () Bool)

(assert (=> b!2713896 (= e!1710662 lt!959980)))

(declare-fun d!781390 () Bool)

(assert (=> d!781390 e!1710661))

(declare-fun res!1139707 () Bool)

(assert (=> d!781390 (=> (not res!1139707) (not e!1710661))))

(declare-fun content!4429 (List!31407) (InoxSet C!16036))

(assert (=> d!781390 (= res!1139707 (= (content!4429 lt!960080) ((_ map or) (content!4429 lt!959970) (content!4429 lt!959980))))))

(assert (=> d!781390 (= lt!960080 e!1710662)))

(declare-fun c!438372 () Bool)

(assert (=> d!781390 (= c!438372 ((_ is Nil!31307) lt!959970))))

(assert (=> d!781390 (= (++!7746 lt!959970 lt!959980) lt!960080)))

(assert (= (and d!781390 c!438372) b!2713896))

(assert (= (and d!781390 (not c!438372)) b!2713898))

(assert (= (and d!781390 res!1139707) b!2713900))

(assert (= (and b!2713900 res!1139708) b!2713902))

(declare-fun m!3110349 () Bool)

(assert (=> b!2713898 m!3110349))

(declare-fun m!3110353 () Bool)

(assert (=> b!2713900 m!3110353))

(declare-fun m!3110355 () Bool)

(assert (=> b!2713900 m!3110355))

(declare-fun m!3110357 () Bool)

(assert (=> b!2713900 m!3110357))

(declare-fun m!3110361 () Bool)

(assert (=> d!781390 m!3110361))

(declare-fun m!3110365 () Bool)

(assert (=> d!781390 m!3110365))

(declare-fun m!3110369 () Bool)

(assert (=> d!781390 m!3110369))

(assert (=> b!2713656 d!781390))

(declare-fun d!781392 () Bool)

(assert (=> d!781392 (= (list!11840 (_2!18111 (v!32998 lt!959965))) (list!11842 (c!438313 (_2!18111 (v!32998 lt!959965)))))))

(declare-fun bs!487967 () Bool)

(assert (= bs!487967 d!781392))

(declare-fun m!3110377 () Bool)

(assert (=> bs!487967 m!3110377))

(assert (=> b!2713656 d!781392))

(declare-fun b!2713907 () Bool)

(declare-fun lt!960082 () List!31407)

(declare-fun e!1710664 () Bool)

(assert (=> b!2713907 (= e!1710664 (or (not (= lt!959980 Nil!31307)) (= lt!960082 lt!959968)))))

(declare-fun b!2713905 () Bool)

(declare-fun e!1710665 () List!31407)

(assert (=> b!2713905 (= e!1710665 (Cons!31307 (h!36727 lt!959968) (++!7746 (t!226209 lt!959968) lt!959980)))))

(declare-fun b!2713906 () Bool)

(declare-fun res!1139711 () Bool)

(assert (=> b!2713906 (=> (not res!1139711) (not e!1710664))))

(assert (=> b!2713906 (= res!1139711 (= (size!24152 lt!960082) (+ (size!24152 lt!959968) (size!24152 lt!959980))))))

(declare-fun b!2713904 () Bool)

(assert (=> b!2713904 (= e!1710665 lt!959980)))

(declare-fun d!781396 () Bool)

(assert (=> d!781396 e!1710664))

(declare-fun res!1139710 () Bool)

(assert (=> d!781396 (=> (not res!1139710) (not e!1710664))))

(assert (=> d!781396 (= res!1139710 (= (content!4429 lt!960082) ((_ map or) (content!4429 lt!959968) (content!4429 lt!959980))))))

(assert (=> d!781396 (= lt!960082 e!1710665)))

(declare-fun c!438374 () Bool)

(assert (=> d!781396 (= c!438374 ((_ is Nil!31307) lt!959968))))

(assert (=> d!781396 (= (++!7746 lt!959968 lt!959980) lt!960082)))

(assert (= (and d!781396 c!438374) b!2713904))

(assert (= (and d!781396 (not c!438374)) b!2713905))

(assert (= (and d!781396 res!1139710) b!2713906))

(assert (= (and b!2713906 res!1139711) b!2713907))

(declare-fun m!3110381 () Bool)

(assert (=> b!2713905 m!3110381))

(declare-fun m!3110383 () Bool)

(assert (=> b!2713906 m!3110383))

(assert (=> b!2713906 m!3110347))

(assert (=> b!2713906 m!3110357))

(declare-fun m!3110385 () Bool)

(assert (=> d!781396 m!3110385))

(declare-fun m!3110387 () Bool)

(assert (=> d!781396 m!3110387))

(assert (=> d!781396 m!3110369))

(assert (=> b!2713656 d!781396))

(declare-fun b!2713908 () Bool)

(declare-fun res!1139713 () Bool)

(declare-fun e!1710669 () Bool)

(assert (=> b!2713908 (=> (not res!1139713) (not e!1710669))))

(declare-fun lt!960083 () tuple2!30960)

(assert (=> b!2713908 (= res!1139713 (= (list!11841 (_1!18112 lt!960083)) (_1!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 (_2!18111 (v!32998 lt!959965)))))))))

(declare-fun b!2713909 () Bool)

(declare-fun e!1710668 () Bool)

(assert (=> b!2713909 (= e!1710668 (not (isEmpty!17843 (_1!18112 lt!960083))))))

(declare-fun b!2713911 () Bool)

(declare-fun e!1710667 () Bool)

(assert (=> b!2713911 (= e!1710667 (= (list!11840 (_2!18112 lt!960083)) (list!11840 (_2!18111 (v!32998 lt!959965)))))))

(declare-fun b!2713912 () Bool)

(assert (=> b!2713912 (= e!1710669 (= (list!11840 (_2!18112 lt!960083)) (_2!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 (_2!18111 (v!32998 lt!959965)))))))))

(declare-fun b!2713913 () Bool)

(declare-fun e!1710666 () tuple2!30960)

(assert (=> b!2713913 (= e!1710666 (tuple2!30961 (BalanceConc!19219 Empty!9802) (_2!18111 (v!32998 lt!959965))))))

(declare-fun b!2713914 () Bool)

(declare-fun lt!960085 () tuple2!30960)

(declare-fun lt!960084 () Option!6175)

(assert (=> b!2713914 (= e!1710666 (tuple2!30961 (prepend!1109 (_1!18112 lt!960085) (_1!18111 (v!32998 lt!960084))) (_2!18112 lt!960085)))))

(assert (=> b!2713914 (= lt!960085 (lexRec!643 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!960084))))))

(declare-fun d!781400 () Bool)

(assert (=> d!781400 e!1710669))

(declare-fun res!1139714 () Bool)

(assert (=> d!781400 (=> (not res!1139714) (not e!1710669))))

(assert (=> d!781400 (= res!1139714 e!1710667)))

(declare-fun c!438375 () Bool)

(assert (=> d!781400 (= c!438375 (> (size!24147 (_1!18112 lt!960083)) 0))))

(assert (=> d!781400 (= lt!960083 e!1710666)))

(declare-fun c!438376 () Bool)

(assert (=> d!781400 (= c!438376 ((_ is Some!6174) lt!960084))))

(assert (=> d!781400 (= lt!960084 (maxPrefixZipperSequence!1031 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!959965))))))

(assert (=> d!781400 (= (lexRec!643 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!959965))) lt!960083)))

(declare-fun b!2713910 () Bool)

(assert (=> b!2713910 (= e!1710667 e!1710668)))

(declare-fun res!1139712 () Bool)

(assert (=> b!2713910 (= res!1139712 (< (size!24148 (_2!18112 lt!960083)) (size!24148 (_2!18111 (v!32998 lt!959965)))))))

(assert (=> b!2713910 (=> (not res!1139712) (not e!1710668))))

(assert (= (and d!781400 c!438376) b!2713914))

(assert (= (and d!781400 (not c!438376)) b!2713913))

(assert (= (and d!781400 c!438375) b!2713910))

(assert (= (and d!781400 (not c!438375)) b!2713911))

(assert (= (and b!2713910 res!1139712) b!2713909))

(assert (= (and d!781400 res!1139714) b!2713908))

(assert (= (and b!2713908 res!1139713) b!2713912))

(declare-fun m!3110389 () Bool)

(assert (=> b!2713914 m!3110389))

(declare-fun m!3110391 () Bool)

(assert (=> b!2713914 m!3110391))

(declare-fun m!3110393 () Bool)

(assert (=> b!2713910 m!3110393))

(declare-fun m!3110395 () Bool)

(assert (=> b!2713910 m!3110395))

(declare-fun m!3110397 () Bool)

(assert (=> b!2713912 m!3110397))

(assert (=> b!2713912 m!3110021))

(assert (=> b!2713912 m!3110021))

(declare-fun m!3110399 () Bool)

(assert (=> b!2713912 m!3110399))

(assert (=> b!2713911 m!3110397))

(assert (=> b!2713911 m!3110021))

(declare-fun m!3110401 () Bool)

(assert (=> b!2713909 m!3110401))

(declare-fun m!3110403 () Bool)

(assert (=> b!2713908 m!3110403))

(assert (=> b!2713908 m!3110021))

(assert (=> b!2713908 m!3110021))

(assert (=> b!2713908 m!3110399))

(declare-fun m!3110405 () Bool)

(assert (=> d!781400 m!3110405))

(declare-fun m!3110407 () Bool)

(assert (=> d!781400 m!3110407))

(assert (=> b!2713656 d!781400))

(declare-fun d!781402 () Bool)

(assert (=> d!781402 (= (++!7748 (++!7748 lt!959972 lt!959966) lt!959973) (++!7748 lt!959972 (++!7748 lt!959966 lt!959973)))))

(declare-fun lt!960091 () Unit!45344)

(declare-fun choose!15955 (List!31409 List!31409 List!31409) Unit!45344)

(assert (=> d!781402 (= lt!960091 (choose!15955 lt!959972 lt!959966 lt!959973))))

(assert (=> d!781402 (= (lemmaConcatAssociativity!1593 lt!959972 lt!959966 lt!959973) lt!960091)))

(declare-fun bs!487969 () Bool)

(assert (= bs!487969 d!781402))

(assert (=> bs!487969 m!3109999))

(assert (=> bs!487969 m!3110001))

(declare-fun m!3110417 () Bool)

(assert (=> bs!487969 m!3110417))

(assert (=> bs!487969 m!3109999))

(assert (=> bs!487969 m!3110003))

(assert (=> bs!487969 m!3110003))

(assert (=> bs!487969 m!3110005))

(assert (=> b!2713656 d!781402))

(declare-fun d!781406 () Bool)

(assert (=> d!781406 (= (list!11841 (append!800 acc!331 (_1!18111 (v!32998 lt!959965)))) (list!11843 (c!438315 (append!800 acc!331 (_1!18111 (v!32998 lt!959965))))))))

(declare-fun bs!487970 () Bool)

(assert (= bs!487970 d!781406))

(declare-fun m!3110419 () Bool)

(assert (=> bs!487970 m!3110419))

(assert (=> b!2713656 d!781406))

(declare-fun b!2713923 () Bool)

(declare-fun e!1710673 () Bool)

(declare-fun lt!960092 () List!31407)

(assert (=> b!2713923 (= e!1710673 (or (not (= lt!959970 Nil!31307)) (= lt!960092 lt!959967)))))

(declare-fun b!2713921 () Bool)

(declare-fun e!1710674 () List!31407)

(assert (=> b!2713921 (= e!1710674 (Cons!31307 (h!36727 lt!959967) (++!7746 (t!226209 lt!959967) lt!959970)))))

(declare-fun b!2713922 () Bool)

(declare-fun res!1139716 () Bool)

(assert (=> b!2713922 (=> (not res!1139716) (not e!1710673))))

(assert (=> b!2713922 (= res!1139716 (= (size!24152 lt!960092) (+ (size!24152 lt!959967) (size!24152 lt!959970))))))

(declare-fun b!2713920 () Bool)

(assert (=> b!2713920 (= e!1710674 lt!959970)))

(declare-fun d!781408 () Bool)

(assert (=> d!781408 e!1710673))

(declare-fun res!1139715 () Bool)

(assert (=> d!781408 (=> (not res!1139715) (not e!1710673))))

(assert (=> d!781408 (= res!1139715 (= (content!4429 lt!960092) ((_ map or) (content!4429 lt!959967) (content!4429 lt!959970))))))

(assert (=> d!781408 (= lt!960092 e!1710674)))

(declare-fun c!438377 () Bool)

(assert (=> d!781408 (= c!438377 ((_ is Nil!31307) lt!959967))))

(assert (=> d!781408 (= (++!7746 lt!959967 lt!959970) lt!960092)))

(assert (= (and d!781408 c!438377) b!2713920))

(assert (= (and d!781408 (not c!438377)) b!2713921))

(assert (= (and d!781408 res!1139715) b!2713922))

(assert (= (and b!2713922 res!1139716) b!2713923))

(declare-fun m!3110421 () Bool)

(assert (=> b!2713921 m!3110421))

(declare-fun m!3110423 () Bool)

(assert (=> b!2713922 m!3110423))

(declare-fun m!3110425 () Bool)

(assert (=> b!2713922 m!3110425))

(assert (=> b!2713922 m!3110355))

(declare-fun m!3110427 () Bool)

(assert (=> d!781408 m!3110427))

(declare-fun m!3110429 () Bool)

(assert (=> d!781408 m!3110429))

(assert (=> d!781408 m!3110365))

(assert (=> b!2713656 d!781408))

(declare-fun b!2713925 () Bool)

(declare-fun e!1710675 () List!31409)

(assert (=> b!2713925 (= e!1710675 (Cons!31309 (h!36729 lt!959972) (++!7748 (t!226211 lt!959972) lt!959966)))))

(declare-fun d!781410 () Bool)

(declare-fun e!1710676 () Bool)

(assert (=> d!781410 e!1710676))

(declare-fun res!1139717 () Bool)

(assert (=> d!781410 (=> (not res!1139717) (not e!1710676))))

(declare-fun lt!960093 () List!31409)

(assert (=> d!781410 (= res!1139717 (= (content!4428 lt!960093) ((_ map or) (content!4428 lt!959972) (content!4428 lt!959966))))))

(assert (=> d!781410 (= lt!960093 e!1710675)))

(declare-fun c!438378 () Bool)

(assert (=> d!781410 (= c!438378 ((_ is Nil!31309) lt!959972))))

(assert (=> d!781410 (= (++!7748 lt!959972 lt!959966) lt!960093)))

(declare-fun b!2713924 () Bool)

(assert (=> b!2713924 (= e!1710675 lt!959966)))

(declare-fun b!2713926 () Bool)

(declare-fun res!1139718 () Bool)

(assert (=> b!2713926 (=> (not res!1139718) (not e!1710676))))

(assert (=> b!2713926 (= res!1139718 (= (size!24149 lt!960093) (+ (size!24149 lt!959972) (size!24149 lt!959966))))))

(declare-fun b!2713927 () Bool)

(assert (=> b!2713927 (= e!1710676 (or (not (= lt!959966 Nil!31309)) (= lt!960093 lt!959972)))))

(assert (= (and d!781410 c!438378) b!2713924))

(assert (= (and d!781410 (not c!438378)) b!2713925))

(assert (= (and d!781410 res!1139717) b!2713926))

(assert (= (and b!2713926 res!1139718) b!2713927))

(declare-fun m!3110431 () Bool)

(assert (=> b!2713925 m!3110431))

(declare-fun m!3110433 () Bool)

(assert (=> d!781410 m!3110433))

(assert (=> d!781410 m!3110183))

(declare-fun m!3110435 () Bool)

(assert (=> d!781410 m!3110435))

(declare-fun m!3110437 () Bool)

(assert (=> b!2713926 m!3110437))

(assert (=> b!2713926 m!3110189))

(declare-fun m!3110439 () Bool)

(assert (=> b!2713926 m!3110439))

(assert (=> b!2713656 d!781410))

(declare-fun d!781412 () Bool)

(assert (=> d!781412 (= (lexList!1214 thiss!11556 rules!1182 lt!959968) (tuple2!30963 lt!959961 Nil!31307))))

(declare-fun lt!960109 () Unit!45344)

(declare-fun choose!15956 (LexerInterface!4383 List!31410 List!31407 List!31407 List!31409 List!31409 List!31407) Unit!45344)

(assert (=> d!781412 (= lt!960109 (choose!15956 thiss!11556 rules!1182 lt!959968 lt!959980 lt!959961 lt!959973 (list!11840 (_2!18112 lt!959977))))))

(assert (=> d!781412 (not (isEmpty!17841 rules!1182))))

(assert (=> d!781412 (= (lemmaLexThenLexPrefix!422 thiss!11556 rules!1182 lt!959968 lt!959980 lt!959961 lt!959973 (list!11840 (_2!18112 lt!959977))) lt!960109)))

(declare-fun bs!487973 () Bool)

(assert (= bs!487973 d!781412))

(assert (=> bs!487973 m!3109989))

(assert (=> bs!487973 m!3110009))

(declare-fun m!3110479 () Bool)

(assert (=> bs!487973 m!3110479))

(assert (=> bs!487973 m!3109971))

(assert (=> b!2713656 d!781412))

(declare-fun d!781424 () Bool)

(declare-fun e!1710696 () Bool)

(assert (=> d!781424 e!1710696))

(declare-fun res!1139738 () Bool)

(assert (=> d!781424 (=> (not res!1139738) (not e!1710696))))

(declare-fun append!801 (Conc!9802 Token!9036) Conc!9802)

(assert (=> d!781424 (= res!1139738 (isBalanced!2961 (append!801 (c!438315 acc!331) (_1!18111 (v!32998 lt!959965)))))))

(declare-fun lt!960115 () BalanceConc!19218)

(assert (=> d!781424 (= lt!960115 (BalanceConc!19219 (append!801 (c!438315 acc!331) (_1!18111 (v!32998 lt!959965)))))))

(assert (=> d!781424 (= (append!800 acc!331 (_1!18111 (v!32998 lt!959965))) lt!960115)))

(declare-fun b!2713961 () Bool)

(declare-fun $colon+!175 (List!31409 Token!9036) List!31409)

(assert (=> b!2713961 (= e!1710696 (= (list!11841 lt!960115) ($colon+!175 (list!11841 acc!331) (_1!18111 (v!32998 lt!959965)))))))

(assert (= (and d!781424 res!1139738) b!2713961))

(declare-fun m!3110515 () Bool)

(assert (=> d!781424 m!3110515))

(assert (=> d!781424 m!3110515))

(declare-fun m!3110517 () Bool)

(assert (=> d!781424 m!3110517))

(declare-fun m!3110519 () Bool)

(assert (=> b!2713961 m!3110519))

(assert (=> b!2713961 m!3109975))

(assert (=> b!2713961 m!3109975))

(declare-fun m!3110521 () Bool)

(assert (=> b!2713961 m!3110521))

(assert (=> b!2713656 d!781424))

(declare-fun d!781432 () Bool)

(assert (=> d!781432 (= (++!7746 (++!7746 lt!959967 lt!959970) lt!959980) (++!7746 lt!959967 (++!7746 lt!959970 lt!959980)))))

(declare-fun lt!960118 () Unit!45344)

(declare-fun choose!15958 (List!31407 List!31407 List!31407) Unit!45344)

(assert (=> d!781432 (= lt!960118 (choose!15958 lt!959967 lt!959970 lt!959980))))

(assert (=> d!781432 (= (lemmaConcatAssociativity!1594 lt!959967 lt!959970 lt!959980) lt!960118)))

(declare-fun bs!487974 () Bool)

(assert (= bs!487974 d!781432))

(declare-fun m!3110523 () Bool)

(assert (=> bs!487974 m!3110523))

(assert (=> bs!487974 m!3110027))

(assert (=> bs!487974 m!3110029))

(assert (=> bs!487974 m!3109987))

(assert (=> bs!487974 m!3109987))

(declare-fun m!3110525 () Bool)

(assert (=> bs!487974 m!3110525))

(assert (=> bs!487974 m!3110027))

(assert (=> b!2713656 d!781432))

(declare-fun d!781434 () Bool)

(assert (=> d!781434 (= (list!11840 (_2!18112 lt!959977)) (list!11842 (c!438313 (_2!18112 lt!959977))))))

(declare-fun bs!487975 () Bool)

(assert (= bs!487975 d!781434))

(declare-fun m!3110527 () Bool)

(assert (=> bs!487975 m!3110527))

(assert (=> b!2713656 d!781434))

(declare-fun d!781436 () Bool)

(assert (=> d!781436 (= (list!11840 lt!959978) (list!11842 (c!438313 lt!959978)))))

(declare-fun bs!487976 () Bool)

(assert (= bs!487976 d!781436))

(declare-fun m!3110529 () Bool)

(assert (=> bs!487976 m!3110529))

(assert (=> b!2713656 d!781436))

(declare-fun b!2713963 () Bool)

(declare-fun e!1710697 () List!31409)

(assert (=> b!2713963 (= e!1710697 (Cons!31309 (h!36729 lt!959966) (++!7748 (t!226211 lt!959966) lt!959973)))))

(declare-fun d!781438 () Bool)

(declare-fun e!1710698 () Bool)

(assert (=> d!781438 e!1710698))

(declare-fun res!1139739 () Bool)

(assert (=> d!781438 (=> (not res!1139739) (not e!1710698))))

(declare-fun lt!960119 () List!31409)

(assert (=> d!781438 (= res!1139739 (= (content!4428 lt!960119) ((_ map or) (content!4428 lt!959966) (content!4428 lt!959973))))))

(assert (=> d!781438 (= lt!960119 e!1710697)))

(declare-fun c!438388 () Bool)

(assert (=> d!781438 (= c!438388 ((_ is Nil!31309) lt!959966))))

(assert (=> d!781438 (= (++!7748 lt!959966 lt!959973) lt!960119)))

(declare-fun b!2713962 () Bool)

(assert (=> b!2713962 (= e!1710697 lt!959973)))

(declare-fun b!2713964 () Bool)

(declare-fun res!1139740 () Bool)

(assert (=> b!2713964 (=> (not res!1139740) (not e!1710698))))

(assert (=> b!2713964 (= res!1139740 (= (size!24149 lt!960119) (+ (size!24149 lt!959966) (size!24149 lt!959973))))))

(declare-fun b!2713965 () Bool)

(assert (=> b!2713965 (= e!1710698 (or (not (= lt!959973 Nil!31309)) (= lt!960119 lt!959966)))))

(assert (= (and d!781438 c!438388) b!2713962))

(assert (= (and d!781438 (not c!438388)) b!2713963))

(assert (= (and d!781438 res!1139739) b!2713964))

(assert (= (and b!2713964 res!1139740) b!2713965))

(declare-fun m!3110531 () Bool)

(assert (=> b!2713963 m!3110531))

(declare-fun m!3110533 () Bool)

(assert (=> d!781438 m!3110533))

(assert (=> d!781438 m!3110435))

(assert (=> d!781438 m!3110205))

(declare-fun m!3110535 () Bool)

(assert (=> b!2713964 m!3110535))

(assert (=> b!2713964 m!3110439))

(assert (=> b!2713964 m!3110215))

(assert (=> b!2713656 d!781438))

(declare-fun b!2713966 () Bool)

(declare-fun res!1139742 () Bool)

(declare-fun e!1710702 () Bool)

(assert (=> b!2713966 (=> (not res!1139742) (not e!1710702))))

(declare-fun lt!960120 () tuple2!30960)

(assert (=> b!2713966 (= res!1139742 (= (list!11841 (_1!18112 lt!960120)) (_1!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 lt!959978)))))))

(declare-fun b!2713967 () Bool)

(declare-fun e!1710701 () Bool)

(assert (=> b!2713967 (= e!1710701 (not (isEmpty!17843 (_1!18112 lt!960120))))))

(declare-fun b!2713969 () Bool)

(declare-fun e!1710700 () Bool)

(assert (=> b!2713969 (= e!1710700 (= (list!11840 (_2!18112 lt!960120)) (list!11840 lt!959978)))))

(declare-fun b!2713970 () Bool)

(assert (=> b!2713970 (= e!1710702 (= (list!11840 (_2!18112 lt!960120)) (_2!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 lt!959978)))))))

(declare-fun b!2713971 () Bool)

(declare-fun e!1710699 () tuple2!30960)

(assert (=> b!2713971 (= e!1710699 (tuple2!30961 (BalanceConc!19219 Empty!9802) lt!959978))))

(declare-fun b!2713972 () Bool)

(declare-fun lt!960122 () tuple2!30960)

(declare-fun lt!960121 () Option!6175)

(assert (=> b!2713972 (= e!1710699 (tuple2!30961 (prepend!1109 (_1!18112 lt!960122) (_1!18111 (v!32998 lt!960121))) (_2!18112 lt!960122)))))

(assert (=> b!2713972 (= lt!960122 (lexRec!643 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!960121))))))

(declare-fun d!781440 () Bool)

(assert (=> d!781440 e!1710702))

(declare-fun res!1139743 () Bool)

(assert (=> d!781440 (=> (not res!1139743) (not e!1710702))))

(assert (=> d!781440 (= res!1139743 e!1710700)))

(declare-fun c!438389 () Bool)

(assert (=> d!781440 (= c!438389 (> (size!24147 (_1!18112 lt!960120)) 0))))

(assert (=> d!781440 (= lt!960120 e!1710699)))

(declare-fun c!438390 () Bool)

(assert (=> d!781440 (= c!438390 ((_ is Some!6174) lt!960121))))

(assert (=> d!781440 (= lt!960121 (maxPrefixZipperSequence!1031 thiss!11556 rules!1182 lt!959978))))

(assert (=> d!781440 (= (lexRec!643 thiss!11556 rules!1182 lt!959978) lt!960120)))

(declare-fun b!2713968 () Bool)

(assert (=> b!2713968 (= e!1710700 e!1710701)))

(declare-fun res!1139741 () Bool)

(assert (=> b!2713968 (= res!1139741 (< (size!24148 (_2!18112 lt!960120)) (size!24148 lt!959978)))))

(assert (=> b!2713968 (=> (not res!1139741) (not e!1710701))))

(assert (= (and d!781440 c!438390) b!2713972))

(assert (= (and d!781440 (not c!438390)) b!2713971))

(assert (= (and d!781440 c!438389) b!2713968))

(assert (= (and d!781440 (not c!438389)) b!2713969))

(assert (= (and b!2713968 res!1139741) b!2713967))

(assert (= (and d!781440 res!1139743) b!2713966))

(assert (= (and b!2713966 res!1139742) b!2713970))

(declare-fun m!3110537 () Bool)

(assert (=> b!2713972 m!3110537))

(declare-fun m!3110539 () Bool)

(assert (=> b!2713972 m!3110539))

(declare-fun m!3110541 () Bool)

(assert (=> b!2713968 m!3110541))

(declare-fun m!3110543 () Bool)

(assert (=> b!2713968 m!3110543))

(declare-fun m!3110545 () Bool)

(assert (=> b!2713970 m!3110545))

(assert (=> b!2713970 m!3109985))

(assert (=> b!2713970 m!3109985))

(declare-fun m!3110547 () Bool)

(assert (=> b!2713970 m!3110547))

(assert (=> b!2713969 m!3110545))

(assert (=> b!2713969 m!3109985))

(declare-fun m!3110549 () Bool)

(assert (=> b!2713967 m!3110549))

(declare-fun m!3110551 () Bool)

(assert (=> b!2713966 m!3110551))

(assert (=> b!2713966 m!3109985))

(assert (=> b!2713966 m!3109985))

(assert (=> b!2713966 m!3110547))

(declare-fun m!3110553 () Bool)

(assert (=> d!781440 m!3110553))

(assert (=> d!781440 m!3110017))

(assert (=> b!2713656 d!781440))

(declare-fun d!781442 () Bool)

(declare-fun lt!960125 () BalanceConc!19216)

(assert (=> d!781442 (= (list!11840 lt!960125) (originalCharacters!5549 (_1!18111 (v!32998 lt!959965))))))

(declare-fun dynLambda!13490 (Int TokenValue!5009) BalanceConc!19216)

(assert (=> d!781442 (= lt!960125 (dynLambda!13490 (toChars!6616 (transformation!4787 (rule!7213 (_1!18111 (v!32998 lt!959965))))) (value!154042 (_1!18111 (v!32998 lt!959965)))))))

(assert (=> d!781442 (= (charsOf!3010 (_1!18111 (v!32998 lt!959965))) lt!960125)))

(declare-fun b_lambda!82521 () Bool)

(assert (=> (not b_lambda!82521) (not d!781442)))

(declare-fun tb!151815 () Bool)

(declare-fun t!226216 () Bool)

(assert (=> (and b!2713659 (= (toChars!6616 (transformation!4787 (h!36730 rules!1182))) (toChars!6616 (transformation!4787 (rule!7213 (_1!18111 (v!32998 lt!959965)))))) t!226216) tb!151815))

(declare-fun b!2713977 () Bool)

(declare-fun e!1710705 () Bool)

(declare-fun tp!857209 () Bool)

(assert (=> b!2713977 (= e!1710705 (and (inv!42471 (c!438313 (dynLambda!13490 (toChars!6616 (transformation!4787 (rule!7213 (_1!18111 (v!32998 lt!959965))))) (value!154042 (_1!18111 (v!32998 lt!959965)))))) tp!857209))))

(declare-fun result!187502 () Bool)

(assert (=> tb!151815 (= result!187502 (and (inv!42472 (dynLambda!13490 (toChars!6616 (transformation!4787 (rule!7213 (_1!18111 (v!32998 lt!959965))))) (value!154042 (_1!18111 (v!32998 lt!959965))))) e!1710705))))

(assert (= tb!151815 b!2713977))

(declare-fun m!3110555 () Bool)

(assert (=> b!2713977 m!3110555))

(declare-fun m!3110557 () Bool)

(assert (=> tb!151815 m!3110557))

(assert (=> d!781442 t!226216))

(declare-fun b_and!200251 () Bool)

(assert (= b_and!200247 (and (=> t!226216 result!187502) b_and!200251)))

(declare-fun m!3110559 () Bool)

(assert (=> d!781442 m!3110559))

(declare-fun m!3110561 () Bool)

(assert (=> d!781442 m!3110561))

(assert (=> b!2713656 d!781442))

(declare-fun lt!960126 () List!31407)

(declare-fun e!1710706 () Bool)

(declare-fun b!2713981 () Bool)

(assert (=> b!2713981 (= e!1710706 (or (not (= (++!7746 lt!959970 lt!959980) Nil!31307)) (= lt!960126 lt!959967)))))

(declare-fun b!2713979 () Bool)

(declare-fun e!1710707 () List!31407)

(assert (=> b!2713979 (= e!1710707 (Cons!31307 (h!36727 lt!959967) (++!7746 (t!226209 lt!959967) (++!7746 lt!959970 lt!959980))))))

(declare-fun b!2713980 () Bool)

(declare-fun res!1139745 () Bool)

(assert (=> b!2713980 (=> (not res!1139745) (not e!1710706))))

(assert (=> b!2713980 (= res!1139745 (= (size!24152 lt!960126) (+ (size!24152 lt!959967) (size!24152 (++!7746 lt!959970 lt!959980)))))))

(declare-fun b!2713978 () Bool)

(assert (=> b!2713978 (= e!1710707 (++!7746 lt!959970 lt!959980))))

(declare-fun d!781444 () Bool)

(assert (=> d!781444 e!1710706))

(declare-fun res!1139744 () Bool)

(assert (=> d!781444 (=> (not res!1139744) (not e!1710706))))

(assert (=> d!781444 (= res!1139744 (= (content!4429 lt!960126) ((_ map or) (content!4429 lt!959967) (content!4429 (++!7746 lt!959970 lt!959980)))))))

(assert (=> d!781444 (= lt!960126 e!1710707)))

(declare-fun c!438391 () Bool)

(assert (=> d!781444 (= c!438391 ((_ is Nil!31307) lt!959967))))

(assert (=> d!781444 (= (++!7746 lt!959967 (++!7746 lt!959970 lt!959980)) lt!960126)))

(assert (= (and d!781444 c!438391) b!2713978))

(assert (= (and d!781444 (not c!438391)) b!2713979))

(assert (= (and d!781444 res!1139744) b!2713980))

(assert (= (and b!2713980 res!1139745) b!2713981))

(assert (=> b!2713979 m!3110027))

(declare-fun m!3110563 () Bool)

(assert (=> b!2713979 m!3110563))

(declare-fun m!3110565 () Bool)

(assert (=> b!2713980 m!3110565))

(assert (=> b!2713980 m!3110425))

(assert (=> b!2713980 m!3110027))

(declare-fun m!3110567 () Bool)

(assert (=> b!2713980 m!3110567))

(declare-fun m!3110569 () Bool)

(assert (=> d!781444 m!3110569))

(assert (=> d!781444 m!3110429))

(assert (=> d!781444 m!3110027))

(declare-fun m!3110571 () Bool)

(assert (=> d!781444 m!3110571))

(assert (=> b!2713656 d!781444))

(declare-fun d!781446 () Bool)

(assert (=> d!781446 (= (list!11841 (_1!18112 lt!959977)) (list!11843 (c!438315 (_1!18112 lt!959977))))))

(declare-fun bs!487977 () Bool)

(assert (= bs!487977 d!781446))

(declare-fun m!3110573 () Bool)

(assert (=> bs!487977 m!3110573))

(assert (=> b!2713656 d!781446))

(declare-fun b!2714010 () Bool)

(declare-fun res!1139761 () Bool)

(declare-fun e!1710721 () Bool)

(assert (=> b!2714010 (=> (not res!1139761) (not e!1710721))))

(declare-fun height!1445 (Conc!9801) Int)

(declare-fun ++!7752 (Conc!9801 Conc!9801) Conc!9801)

(assert (=> b!2714010 (= res!1139761 (<= (height!1445 (++!7752 (c!438313 treated!9) (c!438313 lt!959976))) (+ (max!0 (height!1445 (c!438313 treated!9)) (height!1445 (c!438313 lt!959976))) 1)))))

(declare-fun b!2714012 () Bool)

(declare-fun lt!960139 () BalanceConc!19216)

(assert (=> b!2714012 (= e!1710721 (= (list!11840 lt!960139) (++!7746 (list!11840 treated!9) (list!11840 lt!959976))))))

(declare-fun b!2714009 () Bool)

(declare-fun res!1139762 () Bool)

(assert (=> b!2714009 (=> (not res!1139762) (not e!1710721))))

(declare-fun isBalanced!2964 (Conc!9801) Bool)

(assert (=> b!2714009 (= res!1139762 (isBalanced!2964 (++!7752 (c!438313 treated!9) (c!438313 lt!959976))))))

(declare-fun d!781448 () Bool)

(assert (=> d!781448 e!1710721))

(declare-fun res!1139759 () Bool)

(assert (=> d!781448 (=> (not res!1139759) (not e!1710721))))

(declare-fun appendAssocInst!682 (Conc!9801 Conc!9801) Bool)

(assert (=> d!781448 (= res!1139759 (appendAssocInst!682 (c!438313 treated!9) (c!438313 lt!959976)))))

(assert (=> d!781448 (= lt!960139 (BalanceConc!19217 (++!7752 (c!438313 treated!9) (c!438313 lt!959976))))))

(assert (=> d!781448 (= (++!7747 treated!9 lt!959976) lt!960139)))

(declare-fun b!2714011 () Bool)

(declare-fun res!1139760 () Bool)

(assert (=> b!2714011 (=> (not res!1139760) (not e!1710721))))

(assert (=> b!2714011 (= res!1139760 (>= (height!1445 (++!7752 (c!438313 treated!9) (c!438313 lt!959976))) (max!0 (height!1445 (c!438313 treated!9)) (height!1445 (c!438313 lt!959976)))))))

(assert (= (and d!781448 res!1139759) b!2714009))

(assert (= (and b!2714009 res!1139762) b!2714010))

(assert (= (and b!2714010 res!1139761) b!2714011))

(assert (= (and b!2714011 res!1139760) b!2714012))

(declare-fun m!3110593 () Bool)

(assert (=> b!2714012 m!3110593))

(assert (=> b!2714012 m!3110051))

(assert (=> b!2714012 m!3110015))

(assert (=> b!2714012 m!3110051))

(assert (=> b!2714012 m!3110015))

(declare-fun m!3110595 () Bool)

(assert (=> b!2714012 m!3110595))

(declare-fun m!3110597 () Bool)

(assert (=> b!2714009 m!3110597))

(assert (=> b!2714009 m!3110597))

(declare-fun m!3110599 () Bool)

(assert (=> b!2714009 m!3110599))

(declare-fun m!3110601 () Bool)

(assert (=> d!781448 m!3110601))

(assert (=> d!781448 m!3110597))

(declare-fun m!3110603 () Bool)

(assert (=> b!2714010 m!3110603))

(assert (=> b!2714010 m!3110597))

(assert (=> b!2714010 m!3110597))

(declare-fun m!3110605 () Bool)

(assert (=> b!2714010 m!3110605))

(assert (=> b!2714010 m!3110603))

(declare-fun m!3110607 () Bool)

(assert (=> b!2714010 m!3110607))

(declare-fun m!3110609 () Bool)

(assert (=> b!2714010 m!3110609))

(assert (=> b!2714010 m!3110607))

(assert (=> b!2714011 m!3110603))

(assert (=> b!2714011 m!3110597))

(assert (=> b!2714011 m!3110597))

(assert (=> b!2714011 m!3110605))

(assert (=> b!2714011 m!3110603))

(assert (=> b!2714011 m!3110607))

(assert (=> b!2714011 m!3110609))

(assert (=> b!2714011 m!3110607))

(assert (=> b!2713656 d!781448))

(declare-fun e!1710722 () Bool)

(declare-fun lt!960140 () List!31407)

(declare-fun b!2714016 () Bool)

(assert (=> b!2714016 (= e!1710722 (or (not (= lt!959980 Nil!31307)) (= lt!960140 (list!11840 lt!959978))))))

(declare-fun b!2714014 () Bool)

(declare-fun e!1710723 () List!31407)

(assert (=> b!2714014 (= e!1710723 (Cons!31307 (h!36727 (list!11840 lt!959978)) (++!7746 (t!226209 (list!11840 lt!959978)) lt!959980)))))

(declare-fun b!2714015 () Bool)

(declare-fun res!1139764 () Bool)

(assert (=> b!2714015 (=> (not res!1139764) (not e!1710722))))

(assert (=> b!2714015 (= res!1139764 (= (size!24152 lt!960140) (+ (size!24152 (list!11840 lt!959978)) (size!24152 lt!959980))))))

(declare-fun b!2714013 () Bool)

(assert (=> b!2714013 (= e!1710723 lt!959980)))

(declare-fun d!781456 () Bool)

(assert (=> d!781456 e!1710722))

(declare-fun res!1139763 () Bool)

(assert (=> d!781456 (=> (not res!1139763) (not e!1710722))))

(assert (=> d!781456 (= res!1139763 (= (content!4429 lt!960140) ((_ map or) (content!4429 (list!11840 lt!959978)) (content!4429 lt!959980))))))

(assert (=> d!781456 (= lt!960140 e!1710723)))

(declare-fun c!438402 () Bool)

(assert (=> d!781456 (= c!438402 ((_ is Nil!31307) (list!11840 lt!959978)))))

(assert (=> d!781456 (= (++!7746 (list!11840 lt!959978) lt!959980) lt!960140)))

(assert (= (and d!781456 c!438402) b!2714013))

(assert (= (and d!781456 (not c!438402)) b!2714014))

(assert (= (and d!781456 res!1139763) b!2714015))

(assert (= (and b!2714015 res!1139764) b!2714016))

(declare-fun m!3110611 () Bool)

(assert (=> b!2714014 m!3110611))

(declare-fun m!3110613 () Bool)

(assert (=> b!2714015 m!3110613))

(assert (=> b!2714015 m!3109985))

(declare-fun m!3110615 () Bool)

(assert (=> b!2714015 m!3110615))

(assert (=> b!2714015 m!3110357))

(declare-fun m!3110617 () Bool)

(assert (=> d!781456 m!3110617))

(assert (=> d!781456 m!3109985))

(declare-fun m!3110619 () Bool)

(assert (=> d!781456 m!3110619))

(assert (=> d!781456 m!3110369))

(assert (=> b!2713656 d!781456))

(declare-fun d!781458 () Bool)

(assert (=> d!781458 (= (list!11840 lt!959976) (list!11842 (c!438313 lt!959976)))))

(declare-fun bs!487979 () Bool)

(assert (= bs!487979 d!781458))

(declare-fun m!3110621 () Bool)

(assert (=> bs!487979 m!3110621))

(assert (=> b!2713656 d!781458))

(declare-fun d!781460 () Bool)

(assert (=> d!781460 (= (inv!42472 treated!9) (isBalanced!2964 (c!438313 treated!9)))))

(declare-fun bs!487980 () Bool)

(assert (= bs!487980 d!781460))

(declare-fun m!3110623 () Bool)

(assert (=> bs!487980 m!3110623))

(assert (=> start!263256 d!781460))

(declare-fun d!781462 () Bool)

(assert (=> d!781462 (= (inv!42472 input!603) (isBalanced!2964 (c!438313 input!603)))))

(declare-fun bs!487981 () Bool)

(assert (= bs!487981 d!781462))

(declare-fun m!3110625 () Bool)

(assert (=> bs!487981 m!3110625))

(assert (=> start!263256 d!781462))

(declare-fun d!781464 () Bool)

(assert (=> d!781464 (= (inv!42472 totalInput!328) (isBalanced!2964 (c!438313 totalInput!328)))))

(declare-fun bs!487982 () Bool)

(assert (= bs!487982 d!781464))

(declare-fun m!3110627 () Bool)

(assert (=> bs!487982 m!3110627))

(assert (=> start!263256 d!781464))

(declare-fun d!781466 () Bool)

(assert (=> d!781466 (= (inv!42473 acc!331) (isBalanced!2961 (c!438315 acc!331)))))

(declare-fun bs!487983 () Bool)

(assert (= bs!487983 d!781466))

(declare-fun m!3110629 () Bool)

(assert (=> bs!487983 m!3110629))

(assert (=> start!263256 d!781466))

(declare-fun b!2714017 () Bool)

(declare-fun e!1710726 () Option!6175)

(declare-fun call!175023 () Option!6175)

(assert (=> b!2714017 (= e!1710726 call!175023)))

(declare-fun bm!175018 () Bool)

(assert (=> bm!175018 (= call!175023 (maxPrefixOneRuleZipperSequence!475 thiss!11556 (h!36730 rules!1182) input!603))))

(declare-fun e!1710727 () Bool)

(declare-fun lt!960146 () Option!6175)

(declare-fun b!2714018 () Bool)

(assert (=> b!2714018 (= e!1710727 (= (list!11840 (_2!18111 (get!9766 lt!960146))) (_2!18115 (get!9767 (maxPrefix!2362 thiss!11556 rules!1182 (list!11840 input!603))))))))

(declare-fun d!781468 () Bool)

(declare-fun e!1710729 () Bool)

(assert (=> d!781468 e!1710729))

(declare-fun res!1139769 () Bool)

(assert (=> d!781468 (=> (not res!1139769) (not e!1710729))))

(assert (=> d!781468 (= res!1139769 (= (isDefined!4885 lt!960146) (isDefined!4886 (maxPrefixZipper!466 thiss!11556 rules!1182 (list!11840 input!603)))))))

(assert (=> d!781468 (= lt!960146 e!1710726)))

(declare-fun c!438403 () Bool)

(assert (=> d!781468 (= c!438403 (and ((_ is Cons!31310) rules!1182) ((_ is Nil!31310) (t!226212 rules!1182))))))

(declare-fun lt!960144 () Unit!45344)

(declare-fun lt!960141 () Unit!45344)

(assert (=> d!781468 (= lt!960144 lt!960141)))

(declare-fun lt!960147 () List!31407)

(declare-fun lt!960142 () List!31407)

(assert (=> d!781468 (isPrefix!2479 lt!960147 lt!960142)))

(assert (=> d!781468 (= lt!960141 (lemmaIsPrefixRefl!1605 lt!960147 lt!960142))))

(assert (=> d!781468 (= lt!960142 (list!11840 input!603))))

(assert (=> d!781468 (= lt!960147 (list!11840 input!603))))

(assert (=> d!781468 (rulesValidInductive!1663 thiss!11556 rules!1182)))

(assert (=> d!781468 (= (maxPrefixZipperSequence!1031 thiss!11556 rules!1182 input!603) lt!960146)))

(declare-fun e!1710728 () Bool)

(declare-fun b!2714019 () Bool)

(assert (=> b!2714019 (= e!1710728 (= (list!11840 (_2!18111 (get!9766 lt!960146))) (_2!18115 (get!9767 (maxPrefixZipper!466 thiss!11556 rules!1182 (list!11840 input!603))))))))

(declare-fun b!2714020 () Bool)

(declare-fun e!1710725 () Bool)

(assert (=> b!2714020 (= e!1710725 e!1710727)))

(declare-fun res!1139768 () Bool)

(assert (=> b!2714020 (=> (not res!1139768) (not e!1710727))))

(assert (=> b!2714020 (= res!1139768 (= (_1!18111 (get!9766 lt!960146)) (_1!18115 (get!9767 (maxPrefix!2362 thiss!11556 rules!1182 (list!11840 input!603))))))))

(declare-fun b!2714021 () Bool)

(declare-fun e!1710724 () Bool)

(assert (=> b!2714021 (= e!1710724 e!1710728)))

(declare-fun res!1139766 () Bool)

(assert (=> b!2714021 (=> (not res!1139766) (not e!1710728))))

(assert (=> b!2714021 (= res!1139766 (= (_1!18111 (get!9766 lt!960146)) (_1!18115 (get!9767 (maxPrefixZipper!466 thiss!11556 rules!1182 (list!11840 input!603))))))))

(declare-fun b!2714022 () Bool)

(declare-fun lt!960145 () Option!6175)

(declare-fun lt!960143 () Option!6175)

(assert (=> b!2714022 (= e!1710726 (ite (and ((_ is None!6174) lt!960145) ((_ is None!6174) lt!960143)) None!6174 (ite ((_ is None!6174) lt!960143) lt!960145 (ite ((_ is None!6174) lt!960145) lt!960143 (ite (>= (size!24146 (_1!18111 (v!32998 lt!960145))) (size!24146 (_1!18111 (v!32998 lt!960143)))) lt!960145 lt!960143)))))))

(assert (=> b!2714022 (= lt!960145 call!175023)))

(assert (=> b!2714022 (= lt!960143 (maxPrefixZipperSequence!1031 thiss!11556 (t!226212 rules!1182) input!603))))

(declare-fun b!2714023 () Bool)

(assert (=> b!2714023 (= e!1710729 e!1710725)))

(declare-fun res!1139770 () Bool)

(assert (=> b!2714023 (=> res!1139770 e!1710725)))

(assert (=> b!2714023 (= res!1139770 (not (isDefined!4885 lt!960146)))))

(declare-fun b!2714024 () Bool)

(declare-fun res!1139765 () Bool)

(assert (=> b!2714024 (=> (not res!1139765) (not e!1710729))))

(assert (=> b!2714024 (= res!1139765 e!1710724)))

(declare-fun res!1139767 () Bool)

(assert (=> b!2714024 (=> res!1139767 e!1710724)))

(assert (=> b!2714024 (= res!1139767 (not (isDefined!4885 lt!960146)))))

(assert (= (and d!781468 c!438403) b!2714017))

(assert (= (and d!781468 (not c!438403)) b!2714022))

(assert (= (or b!2714017 b!2714022) bm!175018))

(assert (= (and d!781468 res!1139769) b!2714024))

(assert (= (and b!2714024 (not res!1139767)) b!2714021))

(assert (= (and b!2714021 res!1139766) b!2714019))

(assert (= (and b!2714024 res!1139765) b!2714023))

(assert (= (and b!2714023 (not res!1139770)) b!2714020))

(assert (= (and b!2714020 res!1139768) b!2714018))

(declare-fun m!3110631 () Bool)

(assert (=> d!781468 m!3110631))

(declare-fun m!3110633 () Bool)

(assert (=> d!781468 m!3110633))

(declare-fun m!3110635 () Bool)

(assert (=> d!781468 m!3110635))

(assert (=> d!781468 m!3110269))

(declare-fun m!3110637 () Bool)

(assert (=> d!781468 m!3110637))

(declare-fun m!3110639 () Bool)

(assert (=> d!781468 m!3110639))

(assert (=> d!781468 m!3110049))

(assert (=> d!781468 m!3110049))

(assert (=> d!781468 m!3110637))

(declare-fun m!3110641 () Bool)

(assert (=> b!2714022 m!3110641))

(declare-fun m!3110643 () Bool)

(assert (=> b!2714018 m!3110643))

(assert (=> b!2714018 m!3110049))

(declare-fun m!3110645 () Bool)

(assert (=> b!2714018 m!3110645))

(declare-fun m!3110647 () Bool)

(assert (=> b!2714018 m!3110647))

(assert (=> b!2714018 m!3110049))

(assert (=> b!2714018 m!3110645))

(declare-fun m!3110649 () Bool)

(assert (=> b!2714018 m!3110649))

(assert (=> b!2714020 m!3110643))

(assert (=> b!2714020 m!3110049))

(assert (=> b!2714020 m!3110049))

(assert (=> b!2714020 m!3110645))

(assert (=> b!2714020 m!3110645))

(assert (=> b!2714020 m!3110649))

(assert (=> b!2714023 m!3110631))

(assert (=> b!2714021 m!3110643))

(assert (=> b!2714021 m!3110049))

(assert (=> b!2714021 m!3110049))

(assert (=> b!2714021 m!3110637))

(assert (=> b!2714021 m!3110637))

(declare-fun m!3110651 () Bool)

(assert (=> b!2714021 m!3110651))

(declare-fun m!3110653 () Bool)

(assert (=> bm!175018 m!3110653))

(assert (=> b!2714024 m!3110631))

(assert (=> b!2714019 m!3110643))

(assert (=> b!2714019 m!3110647))

(assert (=> b!2714019 m!3110049))

(assert (=> b!2714019 m!3110637))

(assert (=> b!2714019 m!3110651))

(assert (=> b!2714019 m!3110049))

(assert (=> b!2714019 m!3110637))

(assert (=> b!2713667 d!781468))

(declare-fun d!781470 () Bool)

(assert (=> d!781470 (= (inv!42464 (tag!5291 (h!36730 rules!1182))) (= (mod (str.len (value!154041 (tag!5291 (h!36730 rules!1182)))) 2) 0))))

(assert (=> b!2713669 d!781470))

(declare-fun d!781472 () Bool)

(declare-fun res!1139776 () Bool)

(declare-fun e!1710736 () Bool)

(assert (=> d!781472 (=> (not res!1139776) (not e!1710736))))

(declare-fun semiInverseModEq!1971 (Int Int) Bool)

(assert (=> d!781472 (= res!1139776 (semiInverseModEq!1971 (toChars!6616 (transformation!4787 (h!36730 rules!1182))) (toValue!6757 (transformation!4787 (h!36730 rules!1182)))))))

(assert (=> d!781472 (= (inv!42474 (transformation!4787 (h!36730 rules!1182))) e!1710736)))

(declare-fun b!2714034 () Bool)

(declare-fun equivClasses!1872 (Int Int) Bool)

(assert (=> b!2714034 (= e!1710736 (equivClasses!1872 (toChars!6616 (transformation!4787 (h!36730 rules!1182))) (toValue!6757 (transformation!4787 (h!36730 rules!1182)))))))

(assert (= (and d!781472 res!1139776) b!2714034))

(declare-fun m!3110675 () Bool)

(assert (=> d!781472 m!3110675))

(declare-fun m!3110677 () Bool)

(assert (=> b!2714034 m!3110677))

(assert (=> b!2713669 d!781472))

(declare-fun d!781478 () Bool)

(declare-fun e!1710741 () Bool)

(assert (=> d!781478 e!1710741))

(declare-fun res!1139780 () Bool)

(assert (=> d!781478 (=> (not res!1139780) (not e!1710741))))

(assert (=> d!781478 (= res!1139780 (isBalanced!2961 (prepend!1110 (c!438315 (_1!18112 lt!959974)) (_1!18111 (v!32998 lt!959962)))))))

(declare-fun lt!960157 () BalanceConc!19218)

(assert (=> d!781478 (= lt!960157 (BalanceConc!19219 (prepend!1110 (c!438315 (_1!18112 lt!959974)) (_1!18111 (v!32998 lt!959962)))))))

(assert (=> d!781478 (= (prepend!1109 (_1!18112 lt!959974) (_1!18111 (v!32998 lt!959962))) lt!960157)))

(declare-fun b!2714042 () Bool)

(assert (=> b!2714042 (= e!1710741 (= (list!11841 lt!960157) (Cons!31309 (_1!18111 (v!32998 lt!959962)) (list!11841 (_1!18112 lt!959974)))))))

(assert (= (and d!781478 res!1139780) b!2714042))

(declare-fun m!3110679 () Bool)

(assert (=> d!781478 m!3110679))

(assert (=> d!781478 m!3110679))

(declare-fun m!3110681 () Bool)

(assert (=> d!781478 m!3110681))

(declare-fun m!3110683 () Bool)

(assert (=> b!2714042 m!3110683))

(declare-fun m!3110685 () Bool)

(assert (=> b!2714042 m!3110685))

(assert (=> b!2713668 d!781478))

(declare-fun b!2714043 () Bool)

(declare-fun res!1139782 () Bool)

(declare-fun e!1710745 () Bool)

(assert (=> b!2714043 (=> (not res!1139782) (not e!1710745))))

(declare-fun lt!960158 () tuple2!30960)

(assert (=> b!2714043 (= res!1139782 (= (list!11841 (_1!18112 lt!960158)) (_1!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 (_2!18111 (v!32998 lt!959962)))))))))

(declare-fun b!2714044 () Bool)

(declare-fun e!1710744 () Bool)

(assert (=> b!2714044 (= e!1710744 (not (isEmpty!17843 (_1!18112 lt!960158))))))

(declare-fun b!2714046 () Bool)

(declare-fun e!1710743 () Bool)

(assert (=> b!2714046 (= e!1710743 (= (list!11840 (_2!18112 lt!960158)) (list!11840 (_2!18111 (v!32998 lt!959962)))))))

(declare-fun b!2714047 () Bool)

(assert (=> b!2714047 (= e!1710745 (= (list!11840 (_2!18112 lt!960158)) (_2!18113 (lexList!1214 thiss!11556 rules!1182 (list!11840 (_2!18111 (v!32998 lt!959962)))))))))

(declare-fun b!2714048 () Bool)

(declare-fun e!1710742 () tuple2!30960)

(assert (=> b!2714048 (= e!1710742 (tuple2!30961 (BalanceConc!19219 Empty!9802) (_2!18111 (v!32998 lt!959962))))))

(declare-fun b!2714049 () Bool)

(declare-fun lt!960160 () tuple2!30960)

(declare-fun lt!960159 () Option!6175)

(assert (=> b!2714049 (= e!1710742 (tuple2!30961 (prepend!1109 (_1!18112 lt!960160) (_1!18111 (v!32998 lt!960159))) (_2!18112 lt!960160)))))

(assert (=> b!2714049 (= lt!960160 (lexRec!643 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!960159))))))

(declare-fun d!781480 () Bool)

(assert (=> d!781480 e!1710745))

(declare-fun res!1139783 () Bool)

(assert (=> d!781480 (=> (not res!1139783) (not e!1710745))))

(assert (=> d!781480 (= res!1139783 e!1710743)))

(declare-fun c!438408 () Bool)

(assert (=> d!781480 (= c!438408 (> (size!24147 (_1!18112 lt!960158)) 0))))

(assert (=> d!781480 (= lt!960158 e!1710742)))

(declare-fun c!438409 () Bool)

(assert (=> d!781480 (= c!438409 ((_ is Some!6174) lt!960159))))

(assert (=> d!781480 (= lt!960159 (maxPrefixZipperSequence!1031 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!959962))))))

(assert (=> d!781480 (= (lexRec!643 thiss!11556 rules!1182 (_2!18111 (v!32998 lt!959962))) lt!960158)))

(declare-fun b!2714045 () Bool)

(assert (=> b!2714045 (= e!1710743 e!1710744)))

(declare-fun res!1139781 () Bool)

(assert (=> b!2714045 (= res!1139781 (< (size!24148 (_2!18112 lt!960158)) (size!24148 (_2!18111 (v!32998 lt!959962)))))))

(assert (=> b!2714045 (=> (not res!1139781) (not e!1710744))))

(assert (= (and d!781480 c!438409) b!2714049))

(assert (= (and d!781480 (not c!438409)) b!2714048))

(assert (= (and d!781480 c!438408) b!2714045))

(assert (= (and d!781480 (not c!438408)) b!2714046))

(assert (= (and b!2714045 res!1139781) b!2714044))

(assert (= (and d!781480 res!1139783) b!2714043))

(assert (= (and b!2714043 res!1139782) b!2714047))

(declare-fun m!3110709 () Bool)

(assert (=> b!2714049 m!3110709))

(declare-fun m!3110711 () Bool)

(assert (=> b!2714049 m!3110711))

(declare-fun m!3110713 () Bool)

(assert (=> b!2714045 m!3110713))

(declare-fun m!3110717 () Bool)

(assert (=> b!2714045 m!3110717))

(declare-fun m!3110721 () Bool)

(assert (=> b!2714047 m!3110721))

(declare-fun m!3110725 () Bool)

(assert (=> b!2714047 m!3110725))

(assert (=> b!2714047 m!3110725))

(declare-fun m!3110729 () Bool)

(assert (=> b!2714047 m!3110729))

(assert (=> b!2714046 m!3110721))

(assert (=> b!2714046 m!3110725))

(declare-fun m!3110733 () Bool)

(assert (=> b!2714044 m!3110733))

(declare-fun m!3110735 () Bool)

(assert (=> b!2714043 m!3110735))

(assert (=> b!2714043 m!3110725))

(assert (=> b!2714043 m!3110725))

(assert (=> b!2714043 m!3110729))

(declare-fun m!3110739 () Bool)

(assert (=> d!781480 m!3110739))

(declare-fun m!3110741 () Bool)

(assert (=> d!781480 m!3110741))

(assert (=> b!2713668 d!781480))

(declare-fun d!781490 () Bool)

(declare-fun c!438412 () Bool)

(assert (=> d!781490 (= c!438412 ((_ is Node!9801) (c!438313 input!603)))))

(declare-fun e!1710750 () Bool)

(assert (=> d!781490 (= (inv!42471 (c!438313 input!603)) e!1710750)))

(declare-fun b!2714058 () Bool)

(assert (=> b!2714058 (= e!1710750 (inv!42475 (c!438313 input!603)))))

(declare-fun b!2714059 () Bool)

(declare-fun e!1710751 () Bool)

(assert (=> b!2714059 (= e!1710750 e!1710751)))

(declare-fun res!1139788 () Bool)

(assert (=> b!2714059 (= res!1139788 (not ((_ is Leaf!14939) (c!438313 input!603))))))

(assert (=> b!2714059 (=> res!1139788 e!1710751)))

(declare-fun b!2714060 () Bool)

(assert (=> b!2714060 (= e!1710751 (inv!42476 (c!438313 input!603)))))

(assert (= (and d!781490 c!438412) b!2714058))

(assert (= (and d!781490 (not c!438412)) b!2714059))

(assert (= (and b!2714059 (not res!1139788)) b!2714060))

(declare-fun m!3110743 () Bool)

(assert (=> b!2714058 m!3110743))

(declare-fun m!3110745 () Bool)

(assert (=> b!2714060 m!3110745))

(assert (=> b!2713665 d!781490))

(declare-fun lt!960163 () List!31407)

(declare-fun b!2714064 () Bool)

(declare-fun e!1710752 () Bool)

(assert (=> b!2714064 (= e!1710752 (or (not (= lt!959981 Nil!31307)) (= lt!960163 lt!959967)))))

(declare-fun b!2714062 () Bool)

(declare-fun e!1710753 () List!31407)

(assert (=> b!2714062 (= e!1710753 (Cons!31307 (h!36727 lt!959967) (++!7746 (t!226209 lt!959967) lt!959981)))))

(declare-fun b!2714063 () Bool)

(declare-fun res!1139790 () Bool)

(assert (=> b!2714063 (=> (not res!1139790) (not e!1710752))))

(assert (=> b!2714063 (= res!1139790 (= (size!24152 lt!960163) (+ (size!24152 lt!959967) (size!24152 lt!959981))))))

(declare-fun b!2714061 () Bool)

(assert (=> b!2714061 (= e!1710753 lt!959981)))

(declare-fun d!781492 () Bool)

(assert (=> d!781492 e!1710752))

(declare-fun res!1139789 () Bool)

(assert (=> d!781492 (=> (not res!1139789) (not e!1710752))))

(assert (=> d!781492 (= res!1139789 (= (content!4429 lt!960163) ((_ map or) (content!4429 lt!959967) (content!4429 lt!959981))))))

(assert (=> d!781492 (= lt!960163 e!1710753)))

(declare-fun c!438413 () Bool)

(assert (=> d!781492 (= c!438413 ((_ is Nil!31307) lt!959967))))

(assert (=> d!781492 (= (++!7746 lt!959967 lt!959981) lt!960163)))

(assert (= (and d!781492 c!438413) b!2714061))

(assert (= (and d!781492 (not c!438413)) b!2714062))

(assert (= (and d!781492 res!1139789) b!2714063))

(assert (= (and b!2714063 res!1139790) b!2714064))

(declare-fun m!3110759 () Bool)

(assert (=> b!2714062 m!3110759))

(declare-fun m!3110761 () Bool)

(assert (=> b!2714063 m!3110761))

(assert (=> b!2714063 m!3110425))

(declare-fun m!3110763 () Bool)

(assert (=> b!2714063 m!3110763))

(declare-fun m!3110765 () Bool)

(assert (=> d!781492 m!3110765))

(assert (=> d!781492 m!3110429))

(declare-fun m!3110767 () Bool)

(assert (=> d!781492 m!3110767))

(assert (=> b!2713664 d!781492))

(declare-fun d!781498 () Bool)

(assert (=> d!781498 (= (list!11840 totalInput!328) (list!11842 (c!438313 totalInput!328)))))

(declare-fun bs!487988 () Bool)

(assert (= bs!487988 d!781498))

(declare-fun m!3110769 () Bool)

(assert (=> bs!487988 m!3110769))

(assert (=> b!2713664 d!781498))

(declare-fun d!781500 () Bool)

(assert (=> d!781500 (= (list!11840 input!603) (list!11842 (c!438313 input!603)))))

(declare-fun bs!487989 () Bool)

(assert (= bs!487989 d!781500))

(declare-fun m!3110771 () Bool)

(assert (=> bs!487989 m!3110771))

(assert (=> b!2713664 d!781500))

(declare-fun d!781502 () Bool)

(assert (=> d!781502 (= (list!11840 treated!9) (list!11842 (c!438313 treated!9)))))

(declare-fun bs!487990 () Bool)

(assert (= bs!487990 d!781502))

(declare-fun m!3110773 () Bool)

(assert (=> bs!487990 m!3110773))

(assert (=> b!2713664 d!781502))

(declare-fun d!781504 () Bool)

(assert (=> d!781504 (= (isEmpty!17842 (list!11840 (_2!18112 lt!959979))) ((_ is Nil!31307) (list!11840 (_2!18112 lt!959979))))))

(assert (=> b!2713675 d!781504))

(declare-fun d!781506 () Bool)

(assert (=> d!781506 (= (list!11840 (_2!18112 lt!959979)) (list!11842 (c!438313 (_2!18112 lt!959979))))))

(declare-fun bs!487991 () Bool)

(assert (= bs!487991 d!781506))

(declare-fun m!3110775 () Bool)

(assert (=> bs!487991 m!3110775))

(assert (=> b!2713675 d!781506))

(declare-fun d!781508 () Bool)

(assert (=> d!781508 (= (list!11841 (_1!18112 lt!959983)) (list!11843 (c!438315 (_1!18112 lt!959983))))))

(declare-fun bs!487992 () Bool)

(assert (= bs!487992 d!781508))

(declare-fun m!3110777 () Bool)

(assert (=> bs!487992 m!3110777))

(assert (=> b!2713666 d!781508))

(declare-fun e!1710765 () Bool)

(declare-fun tp!857216 () Bool)

(declare-fun tp!857218 () Bool)

(declare-fun b!2714081 () Bool)

(assert (=> b!2714081 (= e!1710765 (and (inv!42471 (left!24076 (c!438313 treated!9))) tp!857216 (inv!42471 (right!24406 (c!438313 treated!9))) tp!857218))))

(declare-fun b!2714083 () Bool)

(declare-fun e!1710764 () Bool)

(declare-fun tp!857217 () Bool)

(assert (=> b!2714083 (= e!1710764 tp!857217)))

(declare-fun b!2714082 () Bool)

(declare-fun inv!42481 (IArray!19607) Bool)

(assert (=> b!2714082 (= e!1710765 (and (inv!42481 (xs!12864 (c!438313 treated!9))) e!1710764))))

(assert (=> b!2713672 (= tp!857203 (and (inv!42471 (c!438313 treated!9)) e!1710765))))

(assert (= (and b!2713672 ((_ is Node!9801) (c!438313 treated!9))) b!2714081))

(assert (= b!2714082 b!2714083))

(assert (= (and b!2713672 ((_ is Leaf!14939) (c!438313 treated!9))) b!2714082))

(declare-fun m!3110803 () Bool)

(assert (=> b!2714081 m!3110803))

(declare-fun m!3110805 () Bool)

(assert (=> b!2714081 m!3110805))

(declare-fun m!3110807 () Bool)

(assert (=> b!2714082 m!3110807))

(assert (=> b!2713672 m!3110043))

(declare-fun b!2714098 () Bool)

(declare-fun e!1710770 () Bool)

(declare-fun tp!857233 () Bool)

(assert (=> b!2714098 (= e!1710770 tp!857233)))

(declare-fun b!2714099 () Bool)

(declare-fun tp!857229 () Bool)

(declare-fun tp!857231 () Bool)

(assert (=> b!2714099 (= e!1710770 (and tp!857229 tp!857231))))

(declare-fun b!2714096 () Bool)

(declare-fun tp_is_empty!13871 () Bool)

(assert (=> b!2714096 (= e!1710770 tp_is_empty!13871)))

(declare-fun b!2714097 () Bool)

(declare-fun tp!857232 () Bool)

(declare-fun tp!857230 () Bool)

(assert (=> b!2714097 (= e!1710770 (and tp!857232 tp!857230))))

(assert (=> b!2713669 (= tp!857196 e!1710770)))

(assert (= (and b!2713669 ((_ is ElementMatch!7939) (regex!4787 (h!36730 rules!1182)))) b!2714096))

(assert (= (and b!2713669 ((_ is Concat!12949) (regex!4787 (h!36730 rules!1182)))) b!2714097))

(assert (= (and b!2713669 ((_ is Star!7939) (regex!4787 (h!36730 rules!1182)))) b!2714098))

(assert (= (and b!2713669 ((_ is Union!7939) (regex!4787 (h!36730 rules!1182)))) b!2714099))

(declare-fun tp!857236 () Bool)

(declare-fun b!2714100 () Bool)

(declare-fun tp!857234 () Bool)

(declare-fun e!1710772 () Bool)

(assert (=> b!2714100 (= e!1710772 (and (inv!42471 (left!24076 (c!438313 input!603))) tp!857234 (inv!42471 (right!24406 (c!438313 input!603))) tp!857236))))

(declare-fun b!2714102 () Bool)

(declare-fun e!1710771 () Bool)

(declare-fun tp!857235 () Bool)

(assert (=> b!2714102 (= e!1710771 tp!857235)))

(declare-fun b!2714101 () Bool)

(assert (=> b!2714101 (= e!1710772 (and (inv!42481 (xs!12864 (c!438313 input!603))) e!1710771))))

(assert (=> b!2713665 (= tp!857198 (and (inv!42471 (c!438313 input!603)) e!1710772))))

(assert (= (and b!2713665 ((_ is Node!9801) (c!438313 input!603))) b!2714100))

(assert (= b!2714101 b!2714102))

(assert (= (and b!2713665 ((_ is Leaf!14939) (c!438313 input!603))) b!2714101))

(declare-fun m!3110809 () Bool)

(assert (=> b!2714100 m!3110809))

(declare-fun m!3110811 () Bool)

(assert (=> b!2714100 m!3110811))

(declare-fun m!3110813 () Bool)

(assert (=> b!2714101 m!3110813))

(assert (=> b!2713665 m!3110053))

(declare-fun tp!857243 () Bool)

(declare-fun tp!857245 () Bool)

(declare-fun e!1710782 () Bool)

(declare-fun b!2714119 () Bool)

(assert (=> b!2714119 (= e!1710782 (and (inv!42470 (left!24077 (c!438315 acc!331))) tp!857243 (inv!42470 (right!24407 (c!438315 acc!331))) tp!857245))))

(declare-fun b!2714121 () Bool)

(declare-fun e!1710783 () Bool)

(declare-fun tp!857244 () Bool)

(assert (=> b!2714121 (= e!1710783 tp!857244)))

(declare-fun b!2714120 () Bool)

(declare-fun inv!42482 (IArray!19609) Bool)

(assert (=> b!2714120 (= e!1710782 (and (inv!42482 (xs!12865 (c!438315 acc!331))) e!1710783))))

(assert (=> b!2713661 (= tp!857199 (and (inv!42470 (c!438315 acc!331)) e!1710782))))

(assert (= (and b!2713661 ((_ is Node!9802) (c!438315 acc!331))) b!2714119))

(assert (= b!2714120 b!2714121))

(assert (= (and b!2713661 ((_ is Leaf!14940) (c!438315 acc!331))) b!2714120))

(declare-fun m!3110823 () Bool)

(assert (=> b!2714119 m!3110823))

(declare-fun m!3110825 () Bool)

(assert (=> b!2714119 m!3110825))

(declare-fun m!3110827 () Bool)

(assert (=> b!2714120 m!3110827))

(assert (=> b!2713661 m!3109983))

(declare-fun b!2714139 () Bool)

(declare-fun b_free!76509 () Bool)

(declare-fun b_next!77213 () Bool)

(assert (=> b!2714139 (= b_free!76509 (not b_next!77213))))

(declare-fun tp!857254 () Bool)

(declare-fun b_and!200253 () Bool)

(assert (=> b!2714139 (= tp!857254 b_and!200253)))

(declare-fun b_free!76511 () Bool)

(declare-fun b_next!77215 () Bool)

(assert (=> b!2714139 (= b_free!76511 (not b_next!77215))))

(declare-fun tb!151817 () Bool)

(declare-fun t!226218 () Bool)

(assert (=> (and b!2714139 (= (toChars!6616 (transformation!4787 (h!36730 (t!226212 rules!1182)))) (toChars!6616 (transformation!4787 (rule!7213 (_1!18111 (v!32998 lt!959965)))))) t!226218) tb!151817))

(declare-fun result!187514 () Bool)

(assert (= result!187514 result!187502))

(assert (=> d!781442 t!226218))

(declare-fun b_and!200255 () Bool)

(declare-fun tp!857256 () Bool)

(assert (=> b!2714139 (= tp!857256 (and (=> t!226218 result!187514) b_and!200255))))

(declare-fun e!1710796 () Bool)

(assert (=> b!2714139 (= e!1710796 (and tp!857254 tp!857256))))

(declare-fun tp!857255 () Bool)

(declare-fun e!1710798 () Bool)

(declare-fun b!2714138 () Bool)

(assert (=> b!2714138 (= e!1710798 (and tp!857255 (inv!42464 (tag!5291 (h!36730 (t!226212 rules!1182)))) (inv!42474 (transformation!4787 (h!36730 (t!226212 rules!1182)))) e!1710796))))

(declare-fun b!2714137 () Bool)

(declare-fun e!1710799 () Bool)

(declare-fun tp!857257 () Bool)

(assert (=> b!2714137 (= e!1710799 (and e!1710798 tp!857257))))

(assert (=> b!2713660 (= tp!857201 e!1710799)))

(assert (= b!2714138 b!2714139))

(assert (= b!2714137 b!2714138))

(assert (= (and b!2713660 ((_ is Cons!31310) (t!226212 rules!1182))) b!2714137))

(declare-fun m!3110867 () Bool)

(assert (=> b!2714138 m!3110867))

(declare-fun m!3110869 () Bool)

(assert (=> b!2714138 m!3110869))

(declare-fun e!1710801 () Bool)

(declare-fun tp!857258 () Bool)

(declare-fun tp!857260 () Bool)

(declare-fun b!2714140 () Bool)

(assert (=> b!2714140 (= e!1710801 (and (inv!42471 (left!24076 (c!438313 totalInput!328))) tp!857258 (inv!42471 (right!24406 (c!438313 totalInput!328))) tp!857260))))

(declare-fun b!2714142 () Bool)

(declare-fun e!1710800 () Bool)

(declare-fun tp!857259 () Bool)

(assert (=> b!2714142 (= e!1710800 tp!857259)))

(declare-fun b!2714141 () Bool)

(assert (=> b!2714141 (= e!1710801 (and (inv!42481 (xs!12864 (c!438313 totalInput!328))) e!1710800))))

(assert (=> b!2713671 (= tp!857200 (and (inv!42471 (c!438313 totalInput!328)) e!1710801))))

(assert (= (and b!2713671 ((_ is Node!9801) (c!438313 totalInput!328))) b!2714140))

(assert (= b!2714141 b!2714142))

(assert (= (and b!2713671 ((_ is Leaf!14939) (c!438313 totalInput!328))) b!2714141))

(declare-fun m!3110871 () Bool)

(assert (=> b!2714140 m!3110871))

(declare-fun m!3110873 () Bool)

(assert (=> b!2714140 m!3110873))

(declare-fun m!3110875 () Bool)

(assert (=> b!2714141 m!3110875))

(assert (=> b!2713671 m!3109973))

(check-sat (not b!2713713) (not b!2714049) (not b!2714120) (not b!2713972) (not b!2713922) (not b!2713732) (not b!2713967) (not b!2714062) (not d!781424) (not b!2714012) (not d!781472) (not b!2714046) (not d!781502) (not d!781448) (not b_next!77209) (not b!2713900) (not d!781432) (not b!2714097) (not d!781346) (not b!2713706) (not b!2713905) (not b!2714099) (not d!781460) (not b!2713827) b_and!200255 (not d!781342) (not b!2713970) (not tb!151815) (not d!781328) (not bm!175017) (not d!781468) (not b!2714011) (not b!2713921) (not b!2713824) (not b!2713734) (not b!2714121) (not d!781312) (not bm!175018) (not b!2713822) (not b!2713712) (not d!781492) (not b!2714034) (not b_next!77215) (not b!2713710) (not b!2714140) (not b!2713876) (not d!781392) (not b!2713909) (not b!2714009) (not b!2714010) (not d!781500) (not b!2714119) (not b!2714044) (not b_next!77211) (not b!2714081) (not d!781400) (not b!2714019) (not b!2713914) b_and!200251 (not b!2713743) (not b!2713877) (not b!2713823) (not d!781440) (not d!781410) (not b!2714018) (not d!781314) (not d!781480) (not b!2714100) (not b!2713678) (not d!781396) (not b!2714101) (not d!781446) (not b!2713741) (not d!781462) (not b!2713925) (not b!2713911) (not b!2714024) (not b!2713825) (not d!781464) (not b!2713672) (not b!2714045) (not b!2713963) (not b!2713912) (not d!781506) (not b!2713671) (not d!781322) (not d!781348) (not d!781478) (not b_lambda!82521) (not b!2713964) (not b!2714141) (not b!2713685) (not b!2714102) (not b!2713765) (not b!2713709) (not d!781330) (not b!2714060) (not b!2713705) (not b!2713720) (not b!2713702) (not b!2714137) (not b!2713746) (not b!2713715) (not b!2714063) (not d!781436) (not b!2713704) (not b!2714138) (not b!2713926) (not b!2713784) (not b!2713708) (not b!2714098) (not b!2714014) (not d!781320) (not d!781390) (not b!2713966) (not d!781444) (not b!2713977) (not b!2713719) (not b!2713703) (not b!2713722) (not b!2714058) (not b!2714047) (not b!2713961) (not b!2714021) (not b!2713898) (not b!2713687) (not b!2713979) b_and!200253 (not d!781310) (not b!2713788) (not b!2713783) (not b!2713661) (not d!781456) (not b!2714043) (not d!781402) (not b!2713968) (not d!781434) (not d!781334) (not b!2713910) (not b!2713906) (not b!2714022) (not b!2713787) (not d!781458) (not b!2713717) (not d!781324) (not d!781332) (not b!2714142) (not d!781412) (not b!2713908) tp_is_empty!13871 (not d!781406) (not b!2713875) (not b!2713731) (not b!2713828) (not b!2714023) (not d!781344) (not b_next!77213) (not d!781376) (not d!781408) (not d!781438) (not b!2714082) (not d!781508) (not b!2714083) (not b!2713718) (not d!781498) (not b!2713826) (not b!2714042) (not d!781466) (not b!2714020) (not b!2713665) (not b!2713980) (not d!781336) (not b!2713711) (not b!2713744) b_and!200245 (not b!2713733) (not b!2713969) (not d!781442) (not b!2713716) (not b!2714015))
(check-sat (not b_next!77209) b_and!200255 (not b_next!77215) (not b_next!77211) b_and!200251 b_and!200253 (not b_next!77213) b_and!200245)
