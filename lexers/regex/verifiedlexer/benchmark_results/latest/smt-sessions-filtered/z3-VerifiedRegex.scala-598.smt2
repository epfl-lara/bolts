; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18334 () Bool)

(assert start!18334)

(declare-fun b!169957 () Bool)

(declare-fun b_free!6545 () Bool)

(declare-fun b_next!6545 () Bool)

(assert (=> b!169957 (= b_free!6545 (not b_next!6545))))

(declare-fun tp!84085 () Bool)

(declare-fun b_and!11121 () Bool)

(assert (=> b!169957 (= tp!84085 b_and!11121)))

(declare-fun b_free!6547 () Bool)

(declare-fun b_next!6547 () Bool)

(assert (=> b!169957 (= b_free!6547 (not b_next!6547))))

(declare-fun tp!84095 () Bool)

(declare-fun b_and!11123 () Bool)

(assert (=> b!169957 (= tp!84095 b_and!11123)))

(declare-fun b!169968 () Bool)

(declare-fun b_free!6549 () Bool)

(declare-fun b_next!6549 () Bool)

(assert (=> b!169968 (= b_free!6549 (not b_next!6549))))

(declare-fun tp!84097 () Bool)

(declare-fun b_and!11125 () Bool)

(assert (=> b!169968 (= tp!84097 b_and!11125)))

(declare-fun b_free!6551 () Bool)

(declare-fun b_next!6551 () Bool)

(assert (=> b!169968 (= b_free!6551 (not b_next!6551))))

(declare-fun tp!84087 () Bool)

(declare-fun b_and!11127 () Bool)

(assert (=> b!169968 (= tp!84087 b_and!11127)))

(declare-fun b!169973 () Bool)

(declare-fun b_free!6553 () Bool)

(declare-fun b_next!6553 () Bool)

(assert (=> b!169973 (= b_free!6553 (not b_next!6553))))

(declare-fun tp!84090 () Bool)

(declare-fun b_and!11129 () Bool)

(assert (=> b!169973 (= tp!84090 b_and!11129)))

(declare-fun b_free!6555 () Bool)

(declare-fun b_next!6555 () Bool)

(assert (=> b!169973 (= b_free!6555 (not b_next!6555))))

(declare-fun tp!84086 () Bool)

(declare-fun b_and!11131 () Bool)

(assert (=> b!169973 (= tp!84086 b_and!11131)))

(declare-fun bs!16482 () Bool)

(declare-fun b!169975 () Bool)

(declare-fun b!169966 () Bool)

(assert (= bs!16482 (and b!169975 b!169966)))

(declare-fun lambda!4828 () Int)

(declare-fun lambda!4827 () Int)

(assert (=> bs!16482 (not (= lambda!4828 lambda!4827))))

(declare-fun b!169996 () Bool)

(declare-fun e!102898 () Bool)

(assert (=> b!169996 (= e!102898 true)))

(declare-fun b!169995 () Bool)

(declare-fun e!102897 () Bool)

(assert (=> b!169995 (= e!102897 e!102898)))

(declare-fun b!169994 () Bool)

(declare-fun e!102896 () Bool)

(assert (=> b!169994 (= e!102896 e!102897)))

(assert (=> b!169975 e!102896))

(assert (= b!169995 b!169996))

(assert (= b!169994 b!169995))

(declare-datatypes ((List!2909 0))(
  ( (Nil!2899) (Cons!2899 (h!8296 (_ BitVec 16)) (t!27039 List!2909)) )
))
(declare-datatypes ((TokenValue!541 0))(
  ( (FloatLiteralValue!1082 (text!4232 List!2909)) (TokenValueExt!540 (__x!2569 Int)) (Broken!2705 (value!19081 List!2909)) (Object!550) (End!541) (Def!541) (Underscore!541) (Match!541) (Else!541) (Error!541) (Case!541) (If!541) (Extends!541) (Abstract!541) (Class!541) (Val!541) (DelimiterValue!1082 (del!601 List!2909)) (KeywordValue!547 (value!19082 List!2909)) (CommentValue!1082 (value!19083 List!2909)) (WhitespaceValue!1082 (value!19084 List!2909)) (IndentationValue!541 (value!19085 List!2909)) (String!3784) (Int32!541) (Broken!2706 (value!19086 List!2909)) (Boolean!542) (Unit!2519) (OperatorValue!544 (op!601 List!2909)) (IdentifierValue!1082 (value!19087 List!2909)) (IdentifierValue!1083 (value!19088 List!2909)) (WhitespaceValue!1083 (value!19089 List!2909)) (True!1082) (False!1082) (Broken!2707 (value!19090 List!2909)) (Broken!2708 (value!19091 List!2909)) (True!1083) (RightBrace!541) (RightBracket!541) (Colon!541) (Null!541) (Comma!541) (LeftBracket!541) (False!1083) (LeftBrace!541) (ImaginaryLiteralValue!541 (text!4233 List!2909)) (StringLiteralValue!1623 (value!19092 List!2909)) (EOFValue!541 (value!19093 List!2909)) (IdentValue!541 (value!19094 List!2909)) (DelimiterValue!1083 (value!19095 List!2909)) (DedentValue!541 (value!19096 List!2909)) (NewLineValue!541 (value!19097 List!2909)) (IntegerValue!1623 (value!19098 (_ BitVec 32)) (text!4234 List!2909)) (IntegerValue!1624 (value!19099 Int) (text!4235 List!2909)) (Times!541) (Or!541) (Equal!541) (Minus!541) (Broken!2709 (value!19100 List!2909)) (And!541) (Div!541) (LessEqual!541) (Mod!541) (Concat!1284) (Not!541) (Plus!541) (SpaceValue!541 (value!19101 List!2909)) (IntegerValue!1625 (value!19102 Int) (text!4236 List!2909)) (StringLiteralValue!1624 (text!4237 List!2909)) (FloatLiteralValue!1083 (text!4238 List!2909)) (BytesLiteralValue!541 (value!19103 List!2909)) (CommentValue!1083 (value!19104 List!2909)) (StringLiteralValue!1625 (value!19105 List!2909)) (ErrorTokenValue!541 (msg!602 List!2909)) )
))
(declare-datatypes ((C!2408 0))(
  ( (C!2409 (val!1090 Int)) )
))
(declare-datatypes ((List!2910 0))(
  ( (Nil!2900) (Cons!2900 (h!8297 C!2408) (t!27040 List!2910)) )
))
(declare-datatypes ((IArray!1721 0))(
  ( (IArray!1722 (innerList!918 List!2910)) )
))
(declare-datatypes ((Conc!860 0))(
  ( (Node!860 (left!2214 Conc!860) (right!2544 Conc!860) (csize!1950 Int) (cheight!1071 Int)) (Leaf!1459 (xs!3455 IArray!1721) (csize!1951 Int)) (Empty!860) )
))
(declare-datatypes ((BalanceConc!1728 0))(
  ( (BalanceConc!1729 (c!33676 Conc!860)) )
))
(declare-datatypes ((TokenValueInjection!854 0))(
  ( (TokenValueInjection!855 (toValue!1182 Int) (toChars!1041 Int)) )
))
(declare-datatypes ((String!3785 0))(
  ( (String!3786 (value!19106 String)) )
))
(declare-datatypes ((Regex!743 0))(
  ( (ElementMatch!743 (c!33677 C!2408)) (Concat!1285 (regOne!1998 Regex!743) (regTwo!1998 Regex!743)) (EmptyExpr!743) (Star!743 (reg!1072 Regex!743)) (EmptyLang!743) (Union!743 (regOne!1999 Regex!743) (regTwo!1999 Regex!743)) )
))
(declare-datatypes ((Rule!838 0))(
  ( (Rule!839 (regex!519 Regex!743) (tag!697 String!3785) (isSeparator!519 Bool) (transformation!519 TokenValueInjection!854)) )
))
(declare-datatypes ((List!2911 0))(
  ( (Nil!2901) (Cons!2901 (h!8298 Rule!838) (t!27041 List!2911)) )
))
(declare-fun rules!1920 () List!2911)

(get-info :version)

(assert (= (and b!169975 ((_ is Cons!2901) rules!1920)) b!169994))

(declare-fun order!1573 () Int)

(declare-fun order!1575 () Int)

(declare-fun dynLambda!1091 (Int Int) Int)

(declare-fun dynLambda!1092 (Int Int) Int)

(assert (=> b!169996 (< (dynLambda!1091 order!1573 (toValue!1182 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4828))))

(declare-fun order!1577 () Int)

(declare-fun dynLambda!1093 (Int Int) Int)

(assert (=> b!169996 (< (dynLambda!1093 order!1577 (toChars!1041 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4828))))

(assert (=> b!169975 true))

(declare-fun e!102877 () Bool)

(assert (=> b!169957 (= e!102877 (and tp!84085 tp!84095))))

(declare-fun b!169958 () Bool)

(declare-fun res!76857 () Bool)

(declare-fun e!102867 () Bool)

(assert (=> b!169958 (=> res!76857 e!102867)))

(declare-datatypes ((Token!782 0))(
  ( (Token!783 (value!19107 TokenValue!541) (rule!1026 Rule!838) (size!2401 Int) (originalCharacters!562 List!2910)) )
))
(declare-datatypes ((List!2912 0))(
  ( (Nil!2902) (Cons!2902 (h!8299 Token!782) (t!27042 List!2912)) )
))
(declare-fun tokens!465 () List!2912)

(declare-datatypes ((LexerInterface!405 0))(
  ( (LexerInterfaceExt!402 (__x!2570 Int)) (Lexer!403) )
))
(declare-fun thiss!17480 () LexerInterface!405)

(declare-fun rulesProduceIndividualToken!154 (LexerInterface!405 List!2911 Token!782) Bool)

(assert (=> b!169958 (= res!76857 (not (rulesProduceIndividualToken!154 thiss!17480 rules!1920 (h!8299 tokens!465))))))

(declare-fun e!102870 () Bool)

(declare-fun e!102880 () Bool)

(declare-fun b!169959 () Bool)

(declare-fun tp!84089 () Bool)

(declare-fun inv!3725 (Token!782) Bool)

(assert (=> b!169959 (= e!102870 (and (inv!3725 (h!8299 tokens!465)) e!102880 tp!84089))))

(declare-fun b!169960 () Bool)

(declare-fun res!76868 () Bool)

(assert (=> b!169960 (=> res!76868 e!102867)))

(declare-fun lt!53541 () List!2910)

(declare-datatypes ((IArray!1723 0))(
  ( (IArray!1724 (innerList!919 List!2912)) )
))
(declare-datatypes ((Conc!861 0))(
  ( (Node!861 (left!2215 Conc!861) (right!2545 Conc!861) (csize!1952 Int) (cheight!1072 Int)) (Leaf!1460 (xs!3456 IArray!1723) (csize!1953 Int)) (Empty!861) )
))
(declare-datatypes ((BalanceConc!1730 0))(
  ( (BalanceConc!1731 (c!33678 Conc!861)) )
))
(declare-fun isEmpty!1225 (BalanceConc!1730) Bool)

(declare-datatypes ((tuple2!2798 0))(
  ( (tuple2!2799 (_1!1615 BalanceConc!1730) (_2!1615 BalanceConc!1728)) )
))
(declare-fun lex!205 (LexerInterface!405 List!2911 BalanceConc!1728) tuple2!2798)

(declare-fun seqFromList!415 (List!2910) BalanceConc!1728)

(assert (=> b!169960 (= res!76868 (isEmpty!1225 (_1!1615 (lex!205 thiss!17480 rules!1920 (seqFromList!415 lt!53541)))))))

(declare-fun b!169961 () Bool)

(declare-fun e!102878 () Bool)

(declare-fun e!102869 () Bool)

(assert (=> b!169961 (= e!102878 (not e!102869))))

(declare-fun res!76865 () Bool)

(assert (=> b!169961 (=> res!76865 e!102869)))

(declare-fun separatorToken!170 () Token!782)

(declare-fun lt!53544 () List!2910)

(declare-fun list!1053 (BalanceConc!1728) List!2910)

(declare-fun printWithSeparatorTokenWhenNeededRec!88 (LexerInterface!405 List!2911 BalanceConc!1730 Token!782 Int) BalanceConc!1728)

(declare-fun seqFromList!416 (List!2912) BalanceConc!1730)

(assert (=> b!169961 (= res!76865 (not (= lt!53544 (list!1053 (printWithSeparatorTokenWhenNeededRec!88 thiss!17480 rules!1920 (seqFromList!416 (t!27042 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!53553 () List!2910)

(declare-fun lt!53554 () List!2910)

(assert (=> b!169961 (= lt!53553 lt!53554)))

(declare-fun lt!53552 () List!2910)

(declare-fun ++!664 (List!2910 List!2910) List!2910)

(assert (=> b!169961 (= lt!53554 (++!664 lt!53541 lt!53552))))

(declare-fun lt!53550 () List!2910)

(assert (=> b!169961 (= lt!53553 (++!664 (++!664 lt!53541 lt!53550) lt!53544))))

(declare-datatypes ((Unit!2520 0))(
  ( (Unit!2521) )
))
(declare-fun lt!53543 () Unit!2520)

(declare-fun lemmaConcatAssociativity!204 (List!2910 List!2910 List!2910) Unit!2520)

(assert (=> b!169961 (= lt!53543 (lemmaConcatAssociativity!204 lt!53541 lt!53550 lt!53544))))

(declare-fun charsOf!174 (Token!782) BalanceConc!1728)

(assert (=> b!169961 (= lt!53541 (list!1053 (charsOf!174 (h!8299 tokens!465))))))

(assert (=> b!169961 (= lt!53552 (++!664 lt!53550 lt!53544))))

(declare-fun printWithSeparatorTokenWhenNeededList!98 (LexerInterface!405 List!2911 List!2912 Token!782) List!2910)

(assert (=> b!169961 (= lt!53544 (printWithSeparatorTokenWhenNeededList!98 thiss!17480 rules!1920 (t!27042 tokens!465) separatorToken!170))))

(assert (=> b!169961 (= lt!53550 (list!1053 (charsOf!174 separatorToken!170)))))

(declare-fun b!169962 () Bool)

(declare-fun res!76853 () Bool)

(declare-fun e!102875 () Bool)

(assert (=> b!169962 (=> (not res!76853) (not e!102875))))

(declare-fun sepAndNonSepRulesDisjointChars!108 (List!2911 List!2911) Bool)

(assert (=> b!169962 (= res!76853 (sepAndNonSepRulesDisjointChars!108 rules!1920 rules!1920))))

(declare-fun b!169963 () Bool)

(declare-fun e!102886 () Bool)

(assert (=> b!169963 (= e!102886 e!102875)))

(declare-fun res!76866 () Bool)

(assert (=> b!169963 (=> (not res!76866) (not e!102875))))

(declare-fun lt!53556 () BalanceConc!1730)

(declare-fun rulesProduceEachTokenIndividually!197 (LexerInterface!405 List!2911 BalanceConc!1730) Bool)

(assert (=> b!169963 (= res!76866 (rulesProduceEachTokenIndividually!197 thiss!17480 rules!1920 lt!53556))))

(assert (=> b!169963 (= lt!53556 (seqFromList!416 tokens!465))))

(declare-fun b!169964 () Bool)

(declare-fun res!76852 () Bool)

(assert (=> b!169964 (=> (not res!76852) (not e!102886))))

(declare-fun rulesInvariant!371 (LexerInterface!405 List!2911) Bool)

(assert (=> b!169964 (= res!76852 (rulesInvariant!371 thiss!17480 rules!1920))))

(declare-fun b!169965 () Bool)

(declare-fun e!102883 () Bool)

(declare-fun tp!84088 () Bool)

(declare-fun e!102872 () Bool)

(declare-fun inv!3722 (String!3785) Bool)

(declare-fun inv!3726 (TokenValueInjection!854) Bool)

(assert (=> b!169965 (= e!102883 (and tp!84088 (inv!3722 (tag!697 (rule!1026 (h!8299 tokens!465)))) (inv!3726 (transformation!519 (rule!1026 (h!8299 tokens!465)))) e!102872))))

(declare-fun res!76850 () Bool)

(assert (=> b!169966 (=> (not res!76850) (not e!102875))))

(declare-fun forall!565 (List!2912 Int) Bool)

(assert (=> b!169966 (= res!76850 (forall!565 tokens!465 lambda!4827))))

(declare-fun b!169967 () Bool)

(declare-fun lt!53549 () List!2910)

(declare-fun e!102879 () Bool)

(assert (=> b!169967 (= e!102879 (not (= lt!53549 (++!664 lt!53541 lt!53544))))))

(declare-fun res!76859 () Bool)

(assert (=> start!18334 (=> (not res!76859) (not e!102886))))

(assert (=> start!18334 (= res!76859 ((_ is Lexer!403) thiss!17480))))

(assert (=> start!18334 e!102886))

(assert (=> start!18334 true))

(declare-fun e!102868 () Bool)

(assert (=> start!18334 e!102868))

(declare-fun e!102881 () Bool)

(assert (=> start!18334 (and (inv!3725 separatorToken!170) e!102881)))

(assert (=> start!18334 e!102870))

(declare-fun e!102873 () Bool)

(assert (=> b!169968 (= e!102873 (and tp!84097 tp!84087))))

(declare-fun b!169969 () Bool)

(declare-fun res!76867 () Bool)

(assert (=> b!169969 (=> (not res!76867) (not e!102875))))

(assert (=> b!169969 (= res!76867 (isSeparator!519 (rule!1026 separatorToken!170)))))

(declare-fun e!102871 () Bool)

(declare-fun b!169970 () Bool)

(declare-fun tp!84093 () Bool)

(assert (=> b!169970 (= e!102871 (and tp!84093 (inv!3722 (tag!697 (h!8298 rules!1920))) (inv!3726 (transformation!519 (h!8298 rules!1920))) e!102877))))

(declare-fun b!169971 () Bool)

(declare-fun res!76851 () Bool)

(assert (=> b!169971 (=> (not res!76851) (not e!102886))))

(declare-fun isEmpty!1226 (List!2911) Bool)

(assert (=> b!169971 (= res!76851 (not (isEmpty!1226 rules!1920)))))

(declare-fun b!169972 () Bool)

(declare-fun e!102876 () Bool)

(declare-fun rulesValidInductive!120 (LexerInterface!405 List!2911) Bool)

(assert (=> b!169972 (= e!102876 (rulesValidInductive!120 thiss!17480 rules!1920))))

(declare-fun e!102887 () Bool)

(assert (=> b!169972 e!102887))

(declare-fun res!76863 () Bool)

(assert (=> b!169972 (=> (not res!76863) (not e!102887))))

(declare-datatypes ((tuple2!2800 0))(
  ( (tuple2!2801 (_1!1616 Token!782) (_2!1616 List!2910)) )
))
(declare-datatypes ((Option!312 0))(
  ( (None!311) (Some!311 (v!13748 tuple2!2800)) )
))
(declare-fun lt!53542 () Option!312)

(declare-fun isDefined!163 (Option!312) Bool)

(assert (=> b!169972 (= res!76863 (isDefined!163 lt!53542))))

(declare-fun maxPrefix!135 (LexerInterface!405 List!2911 List!2910) Option!312)

(assert (=> b!169972 (= lt!53542 (maxPrefix!135 thiss!17480 rules!1920 lt!53541))))

(assert (=> b!169973 (= e!102872 (and tp!84090 tp!84086))))

(declare-fun b!169974 () Bool)

(declare-fun res!76861 () Bool)

(assert (=> b!169974 (=> (not res!76861) (not e!102878))))

(declare-fun lt!53547 () List!2910)

(assert (=> b!169974 (= res!76861 (= (list!1053 (seqFromList!415 lt!53549)) lt!53547))))

(assert (=> b!169975 (= e!102867 e!102876)))

(declare-fun res!76858 () Bool)

(assert (=> b!169975 (=> res!76858 e!102876)))

(declare-datatypes ((tuple2!2802 0))(
  ( (tuple2!2803 (_1!1617 Token!782) (_2!1617 BalanceConc!1728)) )
))
(declare-datatypes ((Option!313 0))(
  ( (None!312) (Some!312 (v!13749 tuple2!2802)) )
))
(declare-fun isDefined!164 (Option!313) Bool)

(declare-fun maxPrefixZipperSequence!98 (LexerInterface!405 List!2911 BalanceConc!1728) Option!313)

(assert (=> b!169975 (= res!76858 (not (isDefined!164 (maxPrefixZipperSequence!98 thiss!17480 rules!1920 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))))))))

(declare-fun lt!53545 () Unit!2520)

(declare-fun forallContained!86 (List!2912 Int Token!782) Unit!2520)

(assert (=> b!169975 (= lt!53545 (forallContained!86 tokens!465 lambda!4828 (h!8299 tokens!465)))))

(assert (=> b!169975 (= lt!53541 (originalCharacters!562 (h!8299 tokens!465)))))

(declare-fun tp!84096 () Bool)

(declare-fun b!169976 () Bool)

(declare-fun e!102888 () Bool)

(assert (=> b!169976 (= e!102888 (and tp!84096 (inv!3722 (tag!697 (rule!1026 separatorToken!170))) (inv!3726 (transformation!519 (rule!1026 separatorToken!170))) e!102873))))

(declare-fun b!169977 () Bool)

(declare-fun res!76864 () Bool)

(assert (=> b!169977 (=> res!76864 e!102869)))

(assert (=> b!169977 (= res!76864 e!102879)))

(declare-fun res!76856 () Bool)

(assert (=> b!169977 (=> (not res!76856) (not e!102879))))

(assert (=> b!169977 (= res!76856 (not (= lt!53549 lt!53554)))))

(declare-fun b!169978 () Bool)

(assert (=> b!169978 (= e!102875 e!102878)))

(declare-fun res!76860 () Bool)

(assert (=> b!169978 (=> (not res!76860) (not e!102878))))

(assert (=> b!169978 (= res!76860 (= lt!53549 lt!53547))))

(assert (=> b!169978 (= lt!53547 (list!1053 (printWithSeparatorTokenWhenNeededRec!88 thiss!17480 rules!1920 lt!53556 separatorToken!170 0)))))

(assert (=> b!169978 (= lt!53549 (printWithSeparatorTokenWhenNeededList!98 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!169979 () Bool)

(declare-fun res!76855 () Bool)

(assert (=> b!169979 (=> (not res!76855) (not e!102875))))

(assert (=> b!169979 (= res!76855 (rulesProduceIndividualToken!154 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!169980 () Bool)

(declare-fun tp!84091 () Bool)

(assert (=> b!169980 (= e!102868 (and e!102871 tp!84091))))

(declare-fun tp!84094 () Bool)

(declare-fun b!169981 () Bool)

(declare-fun inv!21 (TokenValue!541) Bool)

(assert (=> b!169981 (= e!102881 (and (inv!21 (value!19107 separatorToken!170)) e!102888 tp!84094))))

(declare-fun b!169982 () Bool)

(assert (=> b!169982 (= e!102869 e!102867)))

(declare-fun res!76862 () Bool)

(assert (=> b!169982 (=> res!76862 e!102867)))

(declare-fun lt!53548 () List!2910)

(declare-fun lt!53555 () List!2910)

(assert (=> b!169982 (= res!76862 (or (not (= lt!53548 lt!53555)) (not (= lt!53555 lt!53541)) (not (= lt!53548 lt!53541))))))

(declare-fun printList!89 (LexerInterface!405 List!2912) List!2910)

(assert (=> b!169982 (= lt!53555 (printList!89 thiss!17480 (Cons!2902 (h!8299 tokens!465) Nil!2902)))))

(declare-fun lt!53546 () BalanceConc!1728)

(assert (=> b!169982 (= lt!53548 (list!1053 lt!53546))))

(declare-fun lt!53551 () BalanceConc!1730)

(declare-fun printTailRec!99 (LexerInterface!405 BalanceConc!1730 Int BalanceConc!1728) BalanceConc!1728)

(assert (=> b!169982 (= lt!53546 (printTailRec!99 thiss!17480 lt!53551 0 (BalanceConc!1729 Empty!860)))))

(declare-fun print!136 (LexerInterface!405 BalanceConc!1730) BalanceConc!1728)

(assert (=> b!169982 (= lt!53546 (print!136 thiss!17480 lt!53551))))

(declare-fun singletonSeq!71 (Token!782) BalanceConc!1730)

(assert (=> b!169982 (= lt!53551 (singletonSeq!71 (h!8299 tokens!465)))))

(declare-fun b!169983 () Bool)

(declare-fun get!793 (Option!312) tuple2!2800)

(assert (=> b!169983 (= e!102887 (= (_1!1616 (get!793 lt!53542)) (h!8299 tokens!465)))))

(declare-fun b!169984 () Bool)

(declare-fun tp!84092 () Bool)

(assert (=> b!169984 (= e!102880 (and (inv!21 (value!19107 (h!8299 tokens!465))) e!102883 tp!84092))))

(declare-fun b!169985 () Bool)

(declare-fun res!76854 () Bool)

(assert (=> b!169985 (=> (not res!76854) (not e!102875))))

(assert (=> b!169985 (= res!76854 ((_ is Cons!2902) tokens!465))))

(assert (= (and start!18334 res!76859) b!169971))

(assert (= (and b!169971 res!76851) b!169964))

(assert (= (and b!169964 res!76852) b!169963))

(assert (= (and b!169963 res!76866) b!169979))

(assert (= (and b!169979 res!76855) b!169969))

(assert (= (and b!169969 res!76867) b!169966))

(assert (= (and b!169966 res!76850) b!169962))

(assert (= (and b!169962 res!76853) b!169985))

(assert (= (and b!169985 res!76854) b!169978))

(assert (= (and b!169978 res!76860) b!169974))

(assert (= (and b!169974 res!76861) b!169961))

(assert (= (and b!169961 (not res!76865)) b!169977))

(assert (= (and b!169977 res!76856) b!169967))

(assert (= (and b!169977 (not res!76864)) b!169982))

(assert (= (and b!169982 (not res!76862)) b!169958))

(assert (= (and b!169958 (not res!76857)) b!169960))

(assert (= (and b!169960 (not res!76868)) b!169975))

(assert (= (and b!169975 (not res!76858)) b!169972))

(assert (= (and b!169972 res!76863) b!169983))

(assert (= b!169970 b!169957))

(assert (= b!169980 b!169970))

(assert (= (and start!18334 ((_ is Cons!2901) rules!1920)) b!169980))

(assert (= b!169976 b!169968))

(assert (= b!169981 b!169976))

(assert (= start!18334 b!169981))

(assert (= b!169965 b!169973))

(assert (= b!169984 b!169965))

(assert (= b!169959 b!169984))

(assert (= (and start!18334 ((_ is Cons!2902) tokens!465)) b!169959))

(declare-fun m!165641 () Bool)

(assert (=> b!169970 m!165641))

(declare-fun m!165643 () Bool)

(assert (=> b!169970 m!165643))

(declare-fun m!165645 () Bool)

(assert (=> b!169959 m!165645))

(declare-fun m!165647 () Bool)

(assert (=> b!169971 m!165647))

(declare-fun m!165649 () Bool)

(assert (=> b!169983 m!165649))

(declare-fun m!165651 () Bool)

(assert (=> b!169966 m!165651))

(declare-fun m!165653 () Bool)

(assert (=> b!169981 m!165653))

(declare-fun m!165655 () Bool)

(assert (=> b!169974 m!165655))

(assert (=> b!169974 m!165655))

(declare-fun m!165657 () Bool)

(assert (=> b!169974 m!165657))

(declare-fun m!165659 () Bool)

(assert (=> b!169962 m!165659))

(declare-fun m!165661 () Bool)

(assert (=> b!169975 m!165661))

(assert (=> b!169975 m!165661))

(declare-fun m!165663 () Bool)

(assert (=> b!169975 m!165663))

(assert (=> b!169975 m!165663))

(declare-fun m!165665 () Bool)

(assert (=> b!169975 m!165665))

(declare-fun m!165667 () Bool)

(assert (=> b!169975 m!165667))

(declare-fun m!165669 () Bool)

(assert (=> b!169961 m!165669))

(declare-fun m!165671 () Bool)

(assert (=> b!169961 m!165671))

(declare-fun m!165673 () Bool)

(assert (=> b!169961 m!165673))

(assert (=> b!169961 m!165669))

(declare-fun m!165675 () Bool)

(assert (=> b!169961 m!165675))

(declare-fun m!165677 () Bool)

(assert (=> b!169961 m!165677))

(declare-fun m!165679 () Bool)

(assert (=> b!169961 m!165679))

(declare-fun m!165681 () Bool)

(assert (=> b!169961 m!165681))

(declare-fun m!165683 () Bool)

(assert (=> b!169961 m!165683))

(declare-fun m!165685 () Bool)

(assert (=> b!169961 m!165685))

(assert (=> b!169961 m!165681))

(assert (=> b!169961 m!165673))

(declare-fun m!165687 () Bool)

(assert (=> b!169961 m!165687))

(declare-fun m!165689 () Bool)

(assert (=> b!169961 m!165689))

(assert (=> b!169961 m!165689))

(declare-fun m!165691 () Bool)

(assert (=> b!169961 m!165691))

(assert (=> b!169961 m!165687))

(declare-fun m!165693 () Bool)

(assert (=> b!169961 m!165693))

(declare-fun m!165695 () Bool)

(assert (=> b!169967 m!165695))

(declare-fun m!165697 () Bool)

(assert (=> b!169982 m!165697))

(declare-fun m!165699 () Bool)

(assert (=> b!169982 m!165699))

(declare-fun m!165701 () Bool)

(assert (=> b!169982 m!165701))

(declare-fun m!165703 () Bool)

(assert (=> b!169982 m!165703))

(declare-fun m!165705 () Bool)

(assert (=> b!169982 m!165705))

(declare-fun m!165707 () Bool)

(assert (=> b!169960 m!165707))

(assert (=> b!169960 m!165707))

(declare-fun m!165709 () Bool)

(assert (=> b!169960 m!165709))

(declare-fun m!165711 () Bool)

(assert (=> b!169960 m!165711))

(declare-fun m!165713 () Bool)

(assert (=> b!169972 m!165713))

(declare-fun m!165715 () Bool)

(assert (=> b!169972 m!165715))

(declare-fun m!165717 () Bool)

(assert (=> b!169972 m!165717))

(declare-fun m!165719 () Bool)

(assert (=> b!169964 m!165719))

(declare-fun m!165721 () Bool)

(assert (=> b!169976 m!165721))

(declare-fun m!165723 () Bool)

(assert (=> b!169976 m!165723))

(declare-fun m!165725 () Bool)

(assert (=> b!169958 m!165725))

(declare-fun m!165727 () Bool)

(assert (=> b!169978 m!165727))

(assert (=> b!169978 m!165727))

(declare-fun m!165729 () Bool)

(assert (=> b!169978 m!165729))

(declare-fun m!165731 () Bool)

(assert (=> b!169978 m!165731))

(declare-fun m!165733 () Bool)

(assert (=> b!169963 m!165733))

(declare-fun m!165735 () Bool)

(assert (=> b!169963 m!165735))

(declare-fun m!165737 () Bool)

(assert (=> b!169979 m!165737))

(declare-fun m!165739 () Bool)

(assert (=> start!18334 m!165739))

(declare-fun m!165741 () Bool)

(assert (=> b!169965 m!165741))

(declare-fun m!165743 () Bool)

(assert (=> b!169965 m!165743))

(declare-fun m!165745 () Bool)

(assert (=> b!169984 m!165745))

(check-sat (not b!169979) (not b!169976) (not b_next!6551) (not b!169974) (not b!169994) (not b_next!6545) (not b!169972) (not b_next!6547) b_and!11129 b_and!11123 (not start!18334) (not b!169983) (not b!169970) (not b_next!6555) (not b!169975) b_and!11131 (not b_next!6549) (not b!169961) (not b!169959) (not b!169966) (not b!169962) (not b!169967) (not b!169965) (not b!169960) b_and!11127 (not b!169963) (not b!169978) (not b!169984) b_and!11125 (not b!169982) (not b_next!6553) (not b!169971) (not b!169980) (not b!169981) b_and!11121 (not b!169958) (not b!169964))
(check-sat b_and!11123 (not b_next!6555) (not b_next!6551) b_and!11127 (not b_next!6545) (not b_next!6547) b_and!11121 b_and!11129 b_and!11131 (not b_next!6549) b_and!11125 (not b_next!6553))
(get-model)

(declare-fun bs!16489 () Bool)

(declare-fun d!42473 () Bool)

(assert (= bs!16489 (and d!42473 b!169966)))

(declare-fun lambda!4833 () Int)

(assert (=> bs!16489 (not (= lambda!4833 lambda!4827))))

(declare-fun bs!16490 () Bool)

(assert (= bs!16490 (and d!42473 b!169975)))

(assert (=> bs!16490 (= lambda!4833 lambda!4828)))

(declare-fun b!170101 () Bool)

(declare-fun e!102967 () Bool)

(assert (=> b!170101 (= e!102967 true)))

(declare-fun b!170100 () Bool)

(declare-fun e!102966 () Bool)

(assert (=> b!170100 (= e!102966 e!102967)))

(declare-fun b!170099 () Bool)

(declare-fun e!102965 () Bool)

(assert (=> b!170099 (= e!102965 e!102966)))

(assert (=> d!42473 e!102965))

(assert (= b!170100 b!170101))

(assert (= b!170099 b!170100))

(assert (= (and d!42473 ((_ is Cons!2901) rules!1920)) b!170099))

(assert (=> b!170101 (< (dynLambda!1091 order!1573 (toValue!1182 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4833))))

(assert (=> b!170101 (< (dynLambda!1093 order!1577 (toChars!1041 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4833))))

(assert (=> d!42473 true))

(declare-fun e!102964 () Bool)

(assert (=> d!42473 e!102964))

(declare-fun res!76931 () Bool)

(assert (=> d!42473 (=> (not res!76931) (not e!102964))))

(declare-fun lt!53601 () Bool)

(declare-fun list!1056 (BalanceConc!1730) List!2912)

(assert (=> d!42473 (= res!76931 (= lt!53601 (forall!565 (list!1056 lt!53556) lambda!4833)))))

(declare-fun forall!566 (BalanceConc!1730 Int) Bool)

(assert (=> d!42473 (= lt!53601 (forall!566 lt!53556 lambda!4833))))

(assert (=> d!42473 (not (isEmpty!1226 rules!1920))))

(assert (=> d!42473 (= (rulesProduceEachTokenIndividually!197 thiss!17480 rules!1920 lt!53556) lt!53601)))

(declare-fun b!170098 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!110 (LexerInterface!405 List!2911 List!2912) Bool)

(assert (=> b!170098 (= e!102964 (= lt!53601 (rulesProduceEachTokenIndividuallyList!110 thiss!17480 rules!1920 (list!1056 lt!53556))))))

(assert (= (and d!42473 res!76931) b!170098))

(declare-fun m!165905 () Bool)

(assert (=> d!42473 m!165905))

(assert (=> d!42473 m!165905))

(declare-fun m!165907 () Bool)

(assert (=> d!42473 m!165907))

(declare-fun m!165909 () Bool)

(assert (=> d!42473 m!165909))

(assert (=> d!42473 m!165647))

(assert (=> b!170098 m!165905))

(assert (=> b!170098 m!165905))

(declare-fun m!165911 () Bool)

(assert (=> b!170098 m!165911))

(assert (=> b!169963 d!42473))

(declare-fun d!42501 () Bool)

(declare-fun fromListB!164 (List!2912) BalanceConc!1730)

(assert (=> d!42501 (= (seqFromList!416 tokens!465) (fromListB!164 tokens!465))))

(declare-fun bs!16492 () Bool)

(assert (= bs!16492 d!42501))

(declare-fun m!165923 () Bool)

(assert (=> bs!16492 m!165923))

(assert (=> b!169963 d!42501))

(declare-fun d!42505 () Bool)

(declare-fun c!33705 () Bool)

(assert (=> d!42505 (= c!33705 ((_ is IntegerValue!1623) (value!19107 (h!8299 tokens!465))))))

(declare-fun e!102977 () Bool)

(assert (=> d!42505 (= (inv!21 (value!19107 (h!8299 tokens!465))) e!102977)))

(declare-fun b!170116 () Bool)

(declare-fun inv!16 (TokenValue!541) Bool)

(assert (=> b!170116 (= e!102977 (inv!16 (value!19107 (h!8299 tokens!465))))))

(declare-fun b!170117 () Bool)

(declare-fun res!76936 () Bool)

(declare-fun e!102978 () Bool)

(assert (=> b!170117 (=> res!76936 e!102978)))

(assert (=> b!170117 (= res!76936 (not ((_ is IntegerValue!1625) (value!19107 (h!8299 tokens!465)))))))

(declare-fun e!102976 () Bool)

(assert (=> b!170117 (= e!102976 e!102978)))

(declare-fun b!170118 () Bool)

(declare-fun inv!17 (TokenValue!541) Bool)

(assert (=> b!170118 (= e!102976 (inv!17 (value!19107 (h!8299 tokens!465))))))

(declare-fun b!170119 () Bool)

(assert (=> b!170119 (= e!102977 e!102976)))

(declare-fun c!33704 () Bool)

(assert (=> b!170119 (= c!33704 ((_ is IntegerValue!1624) (value!19107 (h!8299 tokens!465))))))

(declare-fun b!170120 () Bool)

(declare-fun inv!15 (TokenValue!541) Bool)

(assert (=> b!170120 (= e!102978 (inv!15 (value!19107 (h!8299 tokens!465))))))

(assert (= (and d!42505 c!33705) b!170116))

(assert (= (and d!42505 (not c!33705)) b!170119))

(assert (= (and b!170119 c!33704) b!170118))

(assert (= (and b!170119 (not c!33704)) b!170117))

(assert (= (and b!170117 (not res!76936)) b!170120))

(declare-fun m!165925 () Bool)

(assert (=> b!170116 m!165925))

(declare-fun m!165927 () Bool)

(assert (=> b!170118 m!165927))

(declare-fun m!165929 () Bool)

(assert (=> b!170120 m!165929))

(assert (=> b!169984 d!42505))

(declare-fun d!42507 () Bool)

(declare-fun list!1057 (Conc!860) List!2910)

(assert (=> d!42507 (= (list!1053 (seqFromList!415 lt!53549)) (list!1057 (c!33676 (seqFromList!415 lt!53549))))))

(declare-fun bs!16493 () Bool)

(assert (= bs!16493 d!42507))

(declare-fun m!165931 () Bool)

(assert (=> bs!16493 m!165931))

(assert (=> b!169974 d!42507))

(declare-fun d!42509 () Bool)

(declare-fun fromListB!165 (List!2910) BalanceConc!1728)

(assert (=> d!42509 (= (seqFromList!415 lt!53549) (fromListB!165 lt!53549))))

(declare-fun bs!16494 () Bool)

(assert (= bs!16494 d!42509))

(declare-fun m!165933 () Bool)

(assert (=> bs!16494 m!165933))

(assert (=> b!169974 d!42509))

(declare-fun d!42511 () Bool)

(declare-fun isEmpty!1231 (Option!313) Bool)

(assert (=> d!42511 (= (isDefined!164 (maxPrefixZipperSequence!98 thiss!17480 rules!1920 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465))))) (not (isEmpty!1231 (maxPrefixZipperSequence!98 thiss!17480 rules!1920 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))))))))

(declare-fun bs!16495 () Bool)

(assert (= bs!16495 d!42511))

(assert (=> bs!16495 m!165663))

(declare-fun m!165935 () Bool)

(assert (=> bs!16495 m!165935))

(assert (=> b!169975 d!42511))

(declare-fun b!170137 () Bool)

(declare-fun e!102993 () Bool)

(declare-fun e!102996 () Bool)

(assert (=> b!170137 (= e!102993 e!102996)))

(declare-fun res!76949 () Bool)

(assert (=> b!170137 (=> res!76949 e!102996)))

(declare-fun lt!53622 () Option!313)

(assert (=> b!170137 (= res!76949 (not (isDefined!164 lt!53622)))))

(declare-fun b!170138 () Bool)

(declare-fun e!102995 () Bool)

(assert (=> b!170138 (= e!102996 e!102995)))

(declare-fun res!76952 () Bool)

(assert (=> b!170138 (=> (not res!76952) (not e!102995))))

(declare-fun get!794 (Option!313) tuple2!2802)

(assert (=> b!170138 (= res!76952 (= (_1!1617 (get!794 lt!53622)) (_1!1616 (get!793 (maxPrefix!135 thiss!17480 rules!1920 (list!1053 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))))))))))

(declare-fun b!170139 () Bool)

(declare-fun e!102994 () Bool)

(declare-fun e!102992 () Bool)

(assert (=> b!170139 (= e!102994 e!102992)))

(declare-fun res!76954 () Bool)

(assert (=> b!170139 (=> (not res!76954) (not e!102992))))

(declare-fun maxPrefixZipper!40 (LexerInterface!405 List!2911 List!2910) Option!312)

(assert (=> b!170139 (= res!76954 (= (_1!1617 (get!794 lt!53622)) (_1!1616 (get!793 (maxPrefixZipper!40 thiss!17480 rules!1920 (list!1053 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))))))))))

(declare-fun bm!7360 () Bool)

(declare-fun call!7365 () Option!313)

(declare-fun maxPrefixOneRuleZipperSequence!41 (LexerInterface!405 Rule!838 BalanceConc!1728) Option!313)

(assert (=> bm!7360 (= call!7365 (maxPrefixOneRuleZipperSequence!41 thiss!17480 (h!8298 rules!1920) (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))))))

(declare-fun b!170140 () Bool)

(declare-fun e!102991 () Option!313)

(assert (=> b!170140 (= e!102991 call!7365)))

(declare-fun d!42513 () Bool)

(assert (=> d!42513 e!102993))

(declare-fun res!76953 () Bool)

(assert (=> d!42513 (=> (not res!76953) (not e!102993))))

(assert (=> d!42513 (= res!76953 (= (isDefined!164 lt!53622) (isDefined!163 (maxPrefixZipper!40 thiss!17480 rules!1920 (list!1053 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465))))))))))

(assert (=> d!42513 (= lt!53622 e!102991)))

(declare-fun c!33708 () Bool)

(assert (=> d!42513 (= c!33708 (and ((_ is Cons!2901) rules!1920) ((_ is Nil!2901) (t!27041 rules!1920))))))

(declare-fun lt!53625 () Unit!2520)

(declare-fun lt!53620 () Unit!2520)

(assert (=> d!42513 (= lt!53625 lt!53620)))

(declare-fun lt!53626 () List!2910)

(declare-fun lt!53623 () List!2910)

(declare-fun isPrefix!228 (List!2910 List!2910) Bool)

(assert (=> d!42513 (isPrefix!228 lt!53626 lt!53623)))

(declare-fun lemmaIsPrefixRefl!136 (List!2910 List!2910) Unit!2520)

(assert (=> d!42513 (= lt!53620 (lemmaIsPrefixRefl!136 lt!53626 lt!53623))))

(assert (=> d!42513 (= lt!53623 (list!1053 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))))))

(assert (=> d!42513 (= lt!53626 (list!1053 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))))))

(assert (=> d!42513 (rulesValidInductive!120 thiss!17480 rules!1920)))

(assert (=> d!42513 (= (maxPrefixZipperSequence!98 thiss!17480 rules!1920 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))) lt!53622)))

(declare-fun b!170141 () Bool)

(assert (=> b!170141 (= e!102992 (= (list!1053 (_2!1617 (get!794 lt!53622))) (_2!1616 (get!793 (maxPrefixZipper!40 thiss!17480 rules!1920 (list!1053 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))))))))))

(declare-fun b!170142 () Bool)

(assert (=> b!170142 (= e!102995 (= (list!1053 (_2!1617 (get!794 lt!53622))) (_2!1616 (get!793 (maxPrefix!135 thiss!17480 rules!1920 (list!1053 (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))))))))))

(declare-fun b!170143 () Bool)

(declare-fun lt!53624 () Option!313)

(declare-fun lt!53621 () Option!313)

(assert (=> b!170143 (= e!102991 (ite (and ((_ is None!312) lt!53624) ((_ is None!312) lt!53621)) None!312 (ite ((_ is None!312) lt!53621) lt!53624 (ite ((_ is None!312) lt!53624) lt!53621 (ite (>= (size!2401 (_1!1617 (v!13749 lt!53624))) (size!2401 (_1!1617 (v!13749 lt!53621)))) lt!53624 lt!53621)))))))

(assert (=> b!170143 (= lt!53624 call!7365)))

(assert (=> b!170143 (= lt!53621 (maxPrefixZipperSequence!98 thiss!17480 (t!27041 rules!1920) (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465)))))))

(declare-fun b!170144 () Bool)

(declare-fun res!76951 () Bool)

(assert (=> b!170144 (=> (not res!76951) (not e!102993))))

(assert (=> b!170144 (= res!76951 e!102994)))

(declare-fun res!76950 () Bool)

(assert (=> b!170144 (=> res!76950 e!102994)))

(assert (=> b!170144 (= res!76950 (not (isDefined!164 lt!53622)))))

(assert (= (and d!42513 c!33708) b!170140))

(assert (= (and d!42513 (not c!33708)) b!170143))

(assert (= (or b!170140 b!170143) bm!7360))

(assert (= (and d!42513 res!76953) b!170144))

(assert (= (and b!170144 (not res!76950)) b!170139))

(assert (= (and b!170139 res!76954) b!170141))

(assert (= (and b!170144 res!76951) b!170137))

(assert (= (and b!170137 (not res!76949)) b!170138))

(assert (= (and b!170138 res!76952) b!170142))

(declare-fun m!165937 () Bool)

(assert (=> b!170142 m!165937))

(declare-fun m!165939 () Bool)

(assert (=> b!170142 m!165939))

(assert (=> b!170142 m!165661))

(declare-fun m!165941 () Bool)

(assert (=> b!170142 m!165941))

(assert (=> b!170142 m!165941))

(declare-fun m!165943 () Bool)

(assert (=> b!170142 m!165943))

(assert (=> b!170142 m!165943))

(declare-fun m!165945 () Bool)

(assert (=> b!170142 m!165945))

(assert (=> b!170138 m!165939))

(assert (=> b!170138 m!165661))

(assert (=> b!170138 m!165941))

(assert (=> b!170138 m!165941))

(assert (=> b!170138 m!165943))

(assert (=> b!170138 m!165943))

(assert (=> b!170138 m!165945))

(assert (=> b!170141 m!165937))

(assert (=> b!170141 m!165939))

(assert (=> b!170141 m!165941))

(declare-fun m!165947 () Bool)

(assert (=> b!170141 m!165947))

(assert (=> b!170141 m!165661))

(assert (=> b!170141 m!165941))

(assert (=> b!170141 m!165947))

(declare-fun m!165949 () Bool)

(assert (=> b!170141 m!165949))

(assert (=> b!170139 m!165939))

(assert (=> b!170139 m!165661))

(assert (=> b!170139 m!165941))

(assert (=> b!170139 m!165941))

(assert (=> b!170139 m!165947))

(assert (=> b!170139 m!165947))

(assert (=> b!170139 m!165949))

(assert (=> b!170143 m!165661))

(declare-fun m!165951 () Bool)

(assert (=> b!170143 m!165951))

(declare-fun m!165953 () Bool)

(assert (=> b!170137 m!165953))

(assert (=> d!42513 m!165953))

(assert (=> d!42513 m!165941))

(assert (=> d!42513 m!165947))

(declare-fun m!165955 () Bool)

(assert (=> d!42513 m!165955))

(assert (=> d!42513 m!165661))

(assert (=> d!42513 m!165941))

(assert (=> d!42513 m!165713))

(assert (=> d!42513 m!165947))

(declare-fun m!165957 () Bool)

(assert (=> d!42513 m!165957))

(declare-fun m!165959 () Bool)

(assert (=> d!42513 m!165959))

(assert (=> bm!7360 m!165661))

(declare-fun m!165961 () Bool)

(assert (=> bm!7360 m!165961))

(assert (=> b!170144 m!165953))

(assert (=> b!169975 d!42513))

(declare-fun d!42515 () Bool)

(assert (=> d!42515 (= (seqFromList!415 (originalCharacters!562 (h!8299 tokens!465))) (fromListB!165 (originalCharacters!562 (h!8299 tokens!465))))))

(declare-fun bs!16496 () Bool)

(assert (= bs!16496 d!42515))

(declare-fun m!165963 () Bool)

(assert (=> bs!16496 m!165963))

(assert (=> b!169975 d!42515))

(declare-fun d!42517 () Bool)

(declare-fun dynLambda!1096 (Int Token!782) Bool)

(assert (=> d!42517 (dynLambda!1096 lambda!4828 (h!8299 tokens!465))))

(declare-fun lt!53629 () Unit!2520)

(declare-fun choose!1828 (List!2912 Int Token!782) Unit!2520)

(assert (=> d!42517 (= lt!53629 (choose!1828 tokens!465 lambda!4828 (h!8299 tokens!465)))))

(declare-fun e!102999 () Bool)

(assert (=> d!42517 e!102999))

(declare-fun res!76957 () Bool)

(assert (=> d!42517 (=> (not res!76957) (not e!102999))))

(assert (=> d!42517 (= res!76957 (forall!565 tokens!465 lambda!4828))))

(assert (=> d!42517 (= (forallContained!86 tokens!465 lambda!4828 (h!8299 tokens!465)) lt!53629)))

(declare-fun b!170147 () Bool)

(declare-fun contains!463 (List!2912 Token!782) Bool)

(assert (=> b!170147 (= e!102999 (contains!463 tokens!465 (h!8299 tokens!465)))))

(assert (= (and d!42517 res!76957) b!170147))

(declare-fun b_lambda!3815 () Bool)

(assert (=> (not b_lambda!3815) (not d!42517)))

(declare-fun m!165965 () Bool)

(assert (=> d!42517 m!165965))

(declare-fun m!165967 () Bool)

(assert (=> d!42517 m!165967))

(declare-fun m!165969 () Bool)

(assert (=> d!42517 m!165969))

(declare-fun m!165971 () Bool)

(assert (=> b!170147 m!165971))

(assert (=> b!169975 d!42517))

(declare-fun d!42519 () Bool)

(declare-fun res!76960 () Bool)

(declare-fun e!103002 () Bool)

(assert (=> d!42519 (=> (not res!76960) (not e!103002))))

(declare-fun rulesValid!145 (LexerInterface!405 List!2911) Bool)

(assert (=> d!42519 (= res!76960 (rulesValid!145 thiss!17480 rules!1920))))

(assert (=> d!42519 (= (rulesInvariant!371 thiss!17480 rules!1920) e!103002)))

(declare-fun b!170150 () Bool)

(declare-datatypes ((List!2914 0))(
  ( (Nil!2904) (Cons!2904 (h!8301 String!3785) (t!27108 List!2914)) )
))
(declare-fun noDuplicateTag!145 (LexerInterface!405 List!2911 List!2914) Bool)

(assert (=> b!170150 (= e!103002 (noDuplicateTag!145 thiss!17480 rules!1920 Nil!2904))))

(assert (= (and d!42519 res!76960) b!170150))

(declare-fun m!165973 () Bool)

(assert (=> d!42519 m!165973))

(declare-fun m!165975 () Bool)

(assert (=> b!170150 m!165975))

(assert (=> b!169964 d!42519))

(declare-fun d!42521 () Bool)

(assert (=> d!42521 (= (inv!3722 (tag!697 (rule!1026 (h!8299 tokens!465)))) (= (mod (str.len (value!19106 (tag!697 (rule!1026 (h!8299 tokens!465))))) 2) 0))))

(assert (=> b!169965 d!42521))

(declare-fun d!42523 () Bool)

(declare-fun res!76963 () Bool)

(declare-fun e!103005 () Bool)

(assert (=> d!42523 (=> (not res!76963) (not e!103005))))

(declare-fun semiInverseModEq!179 (Int Int) Bool)

(assert (=> d!42523 (= res!76963 (semiInverseModEq!179 (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))) (toValue!1182 (transformation!519 (rule!1026 (h!8299 tokens!465))))))))

(assert (=> d!42523 (= (inv!3726 (transformation!519 (rule!1026 (h!8299 tokens!465)))) e!103005)))

(declare-fun b!170153 () Bool)

(declare-fun equivClasses!162 (Int Int) Bool)

(assert (=> b!170153 (= e!103005 (equivClasses!162 (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))) (toValue!1182 (transformation!519 (rule!1026 (h!8299 tokens!465))))))))

(assert (= (and d!42523 res!76963) b!170153))

(declare-fun m!165977 () Bool)

(assert (=> d!42523 m!165977))

(declare-fun m!165979 () Bool)

(assert (=> b!170153 m!165979))

(assert (=> b!169965 d!42523))

(declare-fun d!42525 () Bool)

(assert (=> d!42525 (= (isEmpty!1226 rules!1920) ((_ is Nil!2901) rules!1920))))

(assert (=> b!169971 d!42525))

(declare-fun d!42527 () Bool)

(declare-fun lt!53632 () Bool)

(declare-fun isEmpty!1232 (List!2912) Bool)

(assert (=> d!42527 (= lt!53632 (isEmpty!1232 (list!1056 (_1!1615 (lex!205 thiss!17480 rules!1920 (seqFromList!415 lt!53541))))))))

(declare-fun isEmpty!1233 (Conc!861) Bool)

(assert (=> d!42527 (= lt!53632 (isEmpty!1233 (c!33678 (_1!1615 (lex!205 thiss!17480 rules!1920 (seqFromList!415 lt!53541))))))))

(assert (=> d!42527 (= (isEmpty!1225 (_1!1615 (lex!205 thiss!17480 rules!1920 (seqFromList!415 lt!53541)))) lt!53632)))

(declare-fun bs!16497 () Bool)

(assert (= bs!16497 d!42527))

(declare-fun m!165981 () Bool)

(assert (=> bs!16497 m!165981))

(assert (=> bs!16497 m!165981))

(declare-fun m!165983 () Bool)

(assert (=> bs!16497 m!165983))

(declare-fun m!165985 () Bool)

(assert (=> bs!16497 m!165985))

(assert (=> b!169960 d!42527))

(declare-fun b!170197 () Bool)

(declare-fun e!103031 () Bool)

(declare-fun e!103032 () Bool)

(assert (=> b!170197 (= e!103031 e!103032)))

(declare-fun res!76970 () Bool)

(declare-fun lt!53653 () tuple2!2798)

(declare-fun size!2405 (BalanceConc!1728) Int)

(assert (=> b!170197 (= res!76970 (< (size!2405 (_2!1615 lt!53653)) (size!2405 (seqFromList!415 lt!53541))))))

(assert (=> b!170197 (=> (not res!76970) (not e!103032))))

(declare-fun b!170198 () Bool)

(assert (=> b!170198 (= e!103031 (= (_2!1615 lt!53653) (seqFromList!415 lt!53541)))))

(declare-fun b!170199 () Bool)

(declare-fun e!103030 () Bool)

(declare-datatypes ((tuple2!2806 0))(
  ( (tuple2!2807 (_1!1619 List!2912) (_2!1619 List!2910)) )
))
(declare-fun lexList!113 (LexerInterface!405 List!2911 List!2910) tuple2!2806)

(assert (=> b!170199 (= e!103030 (= (list!1053 (_2!1615 lt!53653)) (_2!1619 (lexList!113 thiss!17480 rules!1920 (list!1053 (seqFromList!415 lt!53541))))))))

(declare-fun b!170200 () Bool)

(assert (=> b!170200 (= e!103032 (not (isEmpty!1225 (_1!1615 lt!53653))))))

(declare-fun b!170201 () Bool)

(declare-fun res!76972 () Bool)

(assert (=> b!170201 (=> (not res!76972) (not e!103030))))

(assert (=> b!170201 (= res!76972 (= (list!1056 (_1!1615 lt!53653)) (_1!1619 (lexList!113 thiss!17480 rules!1920 (list!1053 (seqFromList!415 lt!53541))))))))

(declare-fun d!42529 () Bool)

(assert (=> d!42529 e!103030))

(declare-fun res!76971 () Bool)

(assert (=> d!42529 (=> (not res!76971) (not e!103030))))

(assert (=> d!42529 (= res!76971 e!103031)))

(declare-fun c!33726 () Bool)

(declare-fun size!2406 (BalanceConc!1730) Int)

(assert (=> d!42529 (= c!33726 (> (size!2406 (_1!1615 lt!53653)) 0))))

(declare-fun lexTailRecV2!100 (LexerInterface!405 List!2911 BalanceConc!1728 BalanceConc!1728 BalanceConc!1728 BalanceConc!1730) tuple2!2798)

(assert (=> d!42529 (= lt!53653 (lexTailRecV2!100 thiss!17480 rules!1920 (seqFromList!415 lt!53541) (BalanceConc!1729 Empty!860) (seqFromList!415 lt!53541) (BalanceConc!1731 Empty!861)))))

(assert (=> d!42529 (= (lex!205 thiss!17480 rules!1920 (seqFromList!415 lt!53541)) lt!53653)))

(assert (= (and d!42529 c!33726) b!170197))

(assert (= (and d!42529 (not c!33726)) b!170198))

(assert (= (and b!170197 res!76970) b!170200))

(assert (= (and d!42529 res!76971) b!170201))

(assert (= (and b!170201 res!76972) b!170199))

(declare-fun m!166015 () Bool)

(assert (=> b!170197 m!166015))

(assert (=> b!170197 m!165707))

(declare-fun m!166017 () Bool)

(assert (=> b!170197 m!166017))

(declare-fun m!166019 () Bool)

(assert (=> d!42529 m!166019))

(assert (=> d!42529 m!165707))

(assert (=> d!42529 m!165707))

(declare-fun m!166021 () Bool)

(assert (=> d!42529 m!166021))

(declare-fun m!166023 () Bool)

(assert (=> b!170199 m!166023))

(assert (=> b!170199 m!165707))

(declare-fun m!166025 () Bool)

(assert (=> b!170199 m!166025))

(assert (=> b!170199 m!166025))

(declare-fun m!166027 () Bool)

(assert (=> b!170199 m!166027))

(declare-fun m!166029 () Bool)

(assert (=> b!170200 m!166029))

(declare-fun m!166031 () Bool)

(assert (=> b!170201 m!166031))

(assert (=> b!170201 m!165707))

(assert (=> b!170201 m!166025))

(assert (=> b!170201 m!166025))

(assert (=> b!170201 m!166027))

(assert (=> b!169960 d!42529))

(declare-fun d!42533 () Bool)

(assert (=> d!42533 (= (seqFromList!415 lt!53541) (fromListB!165 lt!53541))))

(declare-fun bs!16500 () Bool)

(assert (= bs!16500 d!42533))

(declare-fun m!166033 () Bool)

(assert (=> bs!16500 m!166033))

(assert (=> b!169960 d!42533))

(declare-fun d!42535 () Bool)

(assert (=> d!42535 (= (seqFromList!416 (t!27042 tokens!465)) (fromListB!164 (t!27042 tokens!465)))))

(declare-fun bs!16501 () Bool)

(assert (= bs!16501 d!42535))

(declare-fun m!166035 () Bool)

(assert (=> bs!16501 m!166035))

(assert (=> b!169961 d!42535))

(declare-fun d!42537 () Bool)

(declare-fun e!103037 () Bool)

(assert (=> d!42537 e!103037))

(declare-fun res!76977 () Bool)

(assert (=> d!42537 (=> (not res!76977) (not e!103037))))

(declare-fun lt!53656 () List!2910)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!399 (List!2910) (InoxSet C!2408))

(assert (=> d!42537 (= res!76977 (= (content!399 lt!53656) ((_ map or) (content!399 lt!53541) (content!399 lt!53550))))))

(declare-fun e!103038 () List!2910)

(assert (=> d!42537 (= lt!53656 e!103038)))

(declare-fun c!33729 () Bool)

(assert (=> d!42537 (= c!33729 ((_ is Nil!2900) lt!53541))))

(assert (=> d!42537 (= (++!664 lt!53541 lt!53550) lt!53656)))

(declare-fun b!170212 () Bool)

(declare-fun res!76978 () Bool)

(assert (=> b!170212 (=> (not res!76978) (not e!103037))))

(declare-fun size!2407 (List!2910) Int)

(assert (=> b!170212 (= res!76978 (= (size!2407 lt!53656) (+ (size!2407 lt!53541) (size!2407 lt!53550))))))

(declare-fun b!170210 () Bool)

(assert (=> b!170210 (= e!103038 lt!53550)))

(declare-fun b!170213 () Bool)

(assert (=> b!170213 (= e!103037 (or (not (= lt!53550 Nil!2900)) (= lt!53656 lt!53541)))))

(declare-fun b!170211 () Bool)

(assert (=> b!170211 (= e!103038 (Cons!2900 (h!8297 lt!53541) (++!664 (t!27040 lt!53541) lt!53550)))))

(assert (= (and d!42537 c!33729) b!170210))

(assert (= (and d!42537 (not c!33729)) b!170211))

(assert (= (and d!42537 res!76977) b!170212))

(assert (= (and b!170212 res!76978) b!170213))

(declare-fun m!166037 () Bool)

(assert (=> d!42537 m!166037))

(declare-fun m!166039 () Bool)

(assert (=> d!42537 m!166039))

(declare-fun m!166041 () Bool)

(assert (=> d!42537 m!166041))

(declare-fun m!166043 () Bool)

(assert (=> b!170212 m!166043))

(declare-fun m!166045 () Bool)

(assert (=> b!170212 m!166045))

(declare-fun m!166047 () Bool)

(assert (=> b!170212 m!166047))

(declare-fun m!166049 () Bool)

(assert (=> b!170211 m!166049))

(assert (=> b!169961 d!42537))

(declare-fun d!42539 () Bool)

(assert (=> d!42539 (= (list!1053 (charsOf!174 separatorToken!170)) (list!1057 (c!33676 (charsOf!174 separatorToken!170))))))

(declare-fun bs!16502 () Bool)

(assert (= bs!16502 d!42539))

(declare-fun m!166051 () Bool)

(assert (=> bs!16502 m!166051))

(assert (=> b!169961 d!42539))

(declare-fun d!42541 () Bool)

(assert (=> d!42541 (= (list!1053 (printWithSeparatorTokenWhenNeededRec!88 thiss!17480 rules!1920 (seqFromList!416 (t!27042 tokens!465)) separatorToken!170 0)) (list!1057 (c!33676 (printWithSeparatorTokenWhenNeededRec!88 thiss!17480 rules!1920 (seqFromList!416 (t!27042 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!16503 () Bool)

(assert (= bs!16503 d!42541))

(declare-fun m!166053 () Bool)

(assert (=> bs!16503 m!166053))

(assert (=> b!169961 d!42541))

(declare-fun bs!16516 () Bool)

(declare-fun b!170283 () Bool)

(assert (= bs!16516 (and b!170283 b!169966)))

(declare-fun lambda!4845 () Int)

(assert (=> bs!16516 (not (= lambda!4845 lambda!4827))))

(declare-fun bs!16517 () Bool)

(assert (= bs!16517 (and b!170283 b!169975)))

(assert (=> bs!16517 (= lambda!4845 lambda!4828)))

(declare-fun bs!16518 () Bool)

(assert (= bs!16518 (and b!170283 d!42473)))

(assert (=> bs!16518 (= lambda!4845 lambda!4833)))

(declare-fun b!170293 () Bool)

(declare-fun e!103087 () Bool)

(assert (=> b!170293 (= e!103087 true)))

(declare-fun b!170292 () Bool)

(declare-fun e!103086 () Bool)

(assert (=> b!170292 (= e!103086 e!103087)))

(declare-fun b!170291 () Bool)

(declare-fun e!103085 () Bool)

(assert (=> b!170291 (= e!103085 e!103086)))

(assert (=> b!170283 e!103085))

(assert (= b!170292 b!170293))

(assert (= b!170291 b!170292))

(assert (= (and b!170283 ((_ is Cons!2901) rules!1920)) b!170291))

(assert (=> b!170293 (< (dynLambda!1091 order!1573 (toValue!1182 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4845))))

(assert (=> b!170293 (< (dynLambda!1093 order!1577 (toChars!1041 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4845))))

(assert (=> b!170283 true))

(declare-fun b!170281 () Bool)

(declare-fun e!103081 () BalanceConc!1728)

(declare-fun call!7410 () BalanceConc!1728)

(assert (=> b!170281 (= e!103081 call!7410)))

(declare-fun bm!7401 () Bool)

(declare-fun call!7409 () BalanceConc!1728)

(assert (=> bm!7401 (= call!7410 call!7409)))

(declare-fun b!170282 () Bool)

(declare-fun c!33755 () Bool)

(declare-fun lt!53724 () Option!312)

(assert (=> b!170282 (= c!33755 (and ((_ is Some!311) lt!53724) (not (= (_1!1616 (v!13748 lt!53724)) (h!8299 (t!27042 tokens!465))))))))

(declare-fun e!103084 () List!2910)

(declare-fun e!103082 () List!2910)

(assert (=> b!170282 (= e!103084 e!103082)))

(declare-fun bm!7402 () Bool)

(declare-fun c!33754 () Bool)

(declare-fun c!33756 () Bool)

(assert (=> bm!7402 (= c!33754 c!33756)))

(declare-fun call!7406 () List!2910)

(declare-fun lt!53722 () List!2910)

(declare-fun e!103080 () List!2910)

(declare-fun call!7408 () List!2910)

(assert (=> bm!7402 (= call!7408 (++!664 e!103080 (ite c!33756 lt!53722 call!7406)))))

(declare-fun e!103083 () List!2910)

(assert (=> b!170283 (= e!103083 e!103084)))

(declare-fun lt!53725 () Unit!2520)

(assert (=> b!170283 (= lt!53725 (forallContained!86 (t!27042 tokens!465) lambda!4845 (h!8299 (t!27042 tokens!465))))))

(assert (=> b!170283 (= lt!53722 (printWithSeparatorTokenWhenNeededList!98 thiss!17480 rules!1920 (t!27042 (t!27042 tokens!465)) separatorToken!170))))

(assert (=> b!170283 (= lt!53724 (maxPrefix!135 thiss!17480 rules!1920 (++!664 (list!1053 (charsOf!174 (h!8299 (t!27042 tokens!465)))) lt!53722)))))

(assert (=> b!170283 (= c!33756 (and ((_ is Some!311) lt!53724) (= (_1!1616 (v!13748 lt!53724)) (h!8299 (t!27042 tokens!465)))))))

(declare-fun d!42543 () Bool)

(declare-fun c!33752 () Bool)

(assert (=> d!42543 (= c!33752 ((_ is Cons!2902) (t!27042 tokens!465)))))

(assert (=> d!42543 (= (printWithSeparatorTokenWhenNeededList!98 thiss!17480 rules!1920 (t!27042 tokens!465) separatorToken!170) e!103083)))

(declare-fun b!170284 () Bool)

(assert (=> b!170284 (= e!103082 Nil!2900)))

(assert (=> b!170284 (= (print!136 thiss!17480 (singletonSeq!71 (h!8299 (t!27042 tokens!465)))) (printTailRec!99 thiss!17480 (singletonSeq!71 (h!8299 (t!27042 tokens!465))) 0 (BalanceConc!1729 Empty!860)))))

(declare-fun lt!53721 () Unit!2520)

(declare-fun Unit!2526 () Unit!2520)

(assert (=> b!170284 (= lt!53721 Unit!2526)))

(declare-fun lt!53720 () Unit!2520)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!36 (LexerInterface!405 List!2911 List!2910 List!2910) Unit!2520)

(assert (=> b!170284 (= lt!53720 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!36 thiss!17480 rules!1920 call!7406 lt!53722))))

(assert (=> b!170284 false))

(declare-fun lt!53723 () Unit!2520)

(declare-fun Unit!2527 () Unit!2520)

(assert (=> b!170284 (= lt!53723 Unit!2527)))

(declare-fun bm!7403 () Bool)

(declare-fun call!7407 () List!2910)

(assert (=> bm!7403 (= call!7406 call!7407)))

(declare-fun c!33753 () Bool)

(assert (=> bm!7403 (= c!33753 c!33755)))

(declare-fun b!170285 () Bool)

(assert (=> b!170285 (= e!103081 (charsOf!174 separatorToken!170))))

(declare-fun b!170286 () Bool)

(assert (=> b!170286 (= e!103082 (++!664 call!7408 lt!53722))))

(declare-fun b!170287 () Bool)

(assert (=> b!170287 (= e!103083 Nil!2900)))

(declare-fun bm!7404 () Bool)

(assert (=> bm!7404 (= call!7409 (charsOf!174 (h!8299 (t!27042 tokens!465))))))

(declare-fun b!170288 () Bool)

(assert (=> b!170288 (= e!103080 call!7407)))

(declare-fun b!170289 () Bool)

(assert (=> b!170289 (= e!103080 (list!1053 call!7410))))

(declare-fun b!170290 () Bool)

(assert (=> b!170290 (= e!103084 call!7408)))

(declare-fun bm!7405 () Bool)

(assert (=> bm!7405 (= call!7407 (list!1053 (ite c!33756 call!7409 e!103081)))))

(assert (= (and d!42543 c!33752) b!170283))

(assert (= (and d!42543 (not c!33752)) b!170287))

(assert (= (and b!170283 c!33756) b!170290))

(assert (= (and b!170283 (not c!33756)) b!170282))

(assert (= (and b!170282 c!33755) b!170286))

(assert (= (and b!170282 (not c!33755)) b!170284))

(assert (= (or b!170286 b!170284) bm!7401))

(assert (= (or b!170286 b!170284) bm!7403))

(assert (= (and bm!7403 c!33753) b!170285))

(assert (= (and bm!7403 (not c!33753)) b!170281))

(assert (= (or b!170290 bm!7401) bm!7404))

(assert (= (or b!170290 bm!7403) bm!7405))

(assert (= (or b!170290 b!170286) bm!7402))

(assert (= (and bm!7402 c!33754) b!170288))

(assert (= (and bm!7402 (not c!33754)) b!170289))

(declare-fun m!166181 () Bool)

(assert (=> b!170286 m!166181))

(declare-fun m!166183 () Bool)

(assert (=> bm!7404 m!166183))

(declare-fun m!166185 () Bool)

(assert (=> bm!7405 m!166185))

(declare-fun m!166187 () Bool)

(assert (=> b!170284 m!166187))

(assert (=> b!170284 m!166187))

(declare-fun m!166189 () Bool)

(assert (=> b!170284 m!166189))

(assert (=> b!170284 m!166187))

(declare-fun m!166191 () Bool)

(assert (=> b!170284 m!166191))

(declare-fun m!166193 () Bool)

(assert (=> b!170284 m!166193))

(declare-fun m!166195 () Bool)

(assert (=> bm!7402 m!166195))

(declare-fun m!166197 () Bool)

(assert (=> b!170283 m!166197))

(declare-fun m!166199 () Bool)

(assert (=> b!170283 m!166199))

(assert (=> b!170283 m!166183))

(declare-fun m!166201 () Bool)

(assert (=> b!170283 m!166201))

(assert (=> b!170283 m!166183))

(assert (=> b!170283 m!166201))

(declare-fun m!166203 () Bool)

(assert (=> b!170283 m!166203))

(assert (=> b!170283 m!166203))

(declare-fun m!166205 () Bool)

(assert (=> b!170283 m!166205))

(assert (=> b!170285 m!165681))

(declare-fun m!166207 () Bool)

(assert (=> b!170289 m!166207))

(assert (=> b!169961 d!42543))

(declare-fun d!42575 () Bool)

(declare-fun e!103088 () Bool)

(assert (=> d!42575 e!103088))

(declare-fun res!76998 () Bool)

(assert (=> d!42575 (=> (not res!76998) (not e!103088))))

(declare-fun lt!53726 () List!2910)

(assert (=> d!42575 (= res!76998 (= (content!399 lt!53726) ((_ map or) (content!399 (++!664 lt!53541 lt!53550)) (content!399 lt!53544))))))

(declare-fun e!103089 () List!2910)

(assert (=> d!42575 (= lt!53726 e!103089)))

(declare-fun c!33757 () Bool)

(assert (=> d!42575 (= c!33757 ((_ is Nil!2900) (++!664 lt!53541 lt!53550)))))

(assert (=> d!42575 (= (++!664 (++!664 lt!53541 lt!53550) lt!53544) lt!53726)))

(declare-fun b!170296 () Bool)

(declare-fun res!76999 () Bool)

(assert (=> b!170296 (=> (not res!76999) (not e!103088))))

(assert (=> b!170296 (= res!76999 (= (size!2407 lt!53726) (+ (size!2407 (++!664 lt!53541 lt!53550)) (size!2407 lt!53544))))))

(declare-fun b!170294 () Bool)

(assert (=> b!170294 (= e!103089 lt!53544)))

(declare-fun b!170297 () Bool)

(assert (=> b!170297 (= e!103088 (or (not (= lt!53544 Nil!2900)) (= lt!53726 (++!664 lt!53541 lt!53550))))))

(declare-fun b!170295 () Bool)

(assert (=> b!170295 (= e!103089 (Cons!2900 (h!8297 (++!664 lt!53541 lt!53550)) (++!664 (t!27040 (++!664 lt!53541 lt!53550)) lt!53544)))))

(assert (= (and d!42575 c!33757) b!170294))

(assert (= (and d!42575 (not c!33757)) b!170295))

(assert (= (and d!42575 res!76998) b!170296))

(assert (= (and b!170296 res!76999) b!170297))

(declare-fun m!166209 () Bool)

(assert (=> d!42575 m!166209))

(assert (=> d!42575 m!165669))

(declare-fun m!166211 () Bool)

(assert (=> d!42575 m!166211))

(declare-fun m!166213 () Bool)

(assert (=> d!42575 m!166213))

(declare-fun m!166215 () Bool)

(assert (=> b!170296 m!166215))

(assert (=> b!170296 m!165669))

(declare-fun m!166217 () Bool)

(assert (=> b!170296 m!166217))

(declare-fun m!166219 () Bool)

(assert (=> b!170296 m!166219))

(declare-fun m!166221 () Bool)

(assert (=> b!170295 m!166221))

(assert (=> b!169961 d!42575))

(declare-fun d!42577 () Bool)

(declare-fun lt!53729 () BalanceConc!1728)

(assert (=> d!42577 (= (list!1053 lt!53729) (originalCharacters!562 separatorToken!170))))

(declare-fun dynLambda!1097 (Int TokenValue!541) BalanceConc!1728)

(assert (=> d!42577 (= lt!53729 (dynLambda!1097 (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))) (value!19107 separatorToken!170)))))

(assert (=> d!42577 (= (charsOf!174 separatorToken!170) lt!53729)))

(declare-fun b_lambda!3821 () Bool)

(assert (=> (not b_lambda!3821) (not d!42577)))

(declare-fun t!27070 () Bool)

(declare-fun tb!6673 () Bool)

(assert (=> (and b!169957 (= (toChars!1041 (transformation!519 (h!8298 rules!1920))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170)))) t!27070) tb!6673))

(declare-fun b!170302 () Bool)

(declare-fun e!103092 () Bool)

(declare-fun tp!84104 () Bool)

(declare-fun inv!3729 (Conc!860) Bool)

(assert (=> b!170302 (= e!103092 (and (inv!3729 (c!33676 (dynLambda!1097 (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))) (value!19107 separatorToken!170)))) tp!84104))))

(declare-fun result!9358 () Bool)

(declare-fun inv!3730 (BalanceConc!1728) Bool)

(assert (=> tb!6673 (= result!9358 (and (inv!3730 (dynLambda!1097 (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))) (value!19107 separatorToken!170))) e!103092))))

(assert (= tb!6673 b!170302))

(declare-fun m!166223 () Bool)

(assert (=> b!170302 m!166223))

(declare-fun m!166225 () Bool)

(assert (=> tb!6673 m!166225))

(assert (=> d!42577 t!27070))

(declare-fun b_and!11151 () Bool)

(assert (= b_and!11123 (and (=> t!27070 result!9358) b_and!11151)))

(declare-fun t!27072 () Bool)

(declare-fun tb!6675 () Bool)

(assert (=> (and b!169968 (= (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170)))) t!27072) tb!6675))

(declare-fun result!9362 () Bool)

(assert (= result!9362 result!9358))

(assert (=> d!42577 t!27072))

(declare-fun b_and!11153 () Bool)

(assert (= b_and!11127 (and (=> t!27072 result!9362) b_and!11153)))

(declare-fun t!27074 () Bool)

(declare-fun tb!6677 () Bool)

(assert (=> (and b!169973 (= (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170)))) t!27074) tb!6677))

(declare-fun result!9364 () Bool)

(assert (= result!9364 result!9358))

(assert (=> d!42577 t!27074))

(declare-fun b_and!11155 () Bool)

(assert (= b_and!11131 (and (=> t!27074 result!9364) b_and!11155)))

(declare-fun m!166227 () Bool)

(assert (=> d!42577 m!166227))

(declare-fun m!166229 () Bool)

(assert (=> d!42577 m!166229))

(assert (=> b!169961 d!42577))

(declare-fun d!42579 () Bool)

(declare-fun e!103093 () Bool)

(assert (=> d!42579 e!103093))

(declare-fun res!77000 () Bool)

(assert (=> d!42579 (=> (not res!77000) (not e!103093))))

(declare-fun lt!53730 () List!2910)

(assert (=> d!42579 (= res!77000 (= (content!399 lt!53730) ((_ map or) (content!399 lt!53541) (content!399 lt!53552))))))

(declare-fun e!103094 () List!2910)

(assert (=> d!42579 (= lt!53730 e!103094)))

(declare-fun c!33758 () Bool)

(assert (=> d!42579 (= c!33758 ((_ is Nil!2900) lt!53541))))

(assert (=> d!42579 (= (++!664 lt!53541 lt!53552) lt!53730)))

(declare-fun b!170305 () Bool)

(declare-fun res!77001 () Bool)

(assert (=> b!170305 (=> (not res!77001) (not e!103093))))

(assert (=> b!170305 (= res!77001 (= (size!2407 lt!53730) (+ (size!2407 lt!53541) (size!2407 lt!53552))))))

(declare-fun b!170303 () Bool)

(assert (=> b!170303 (= e!103094 lt!53552)))

(declare-fun b!170306 () Bool)

(assert (=> b!170306 (= e!103093 (or (not (= lt!53552 Nil!2900)) (= lt!53730 lt!53541)))))

(declare-fun b!170304 () Bool)

(assert (=> b!170304 (= e!103094 (Cons!2900 (h!8297 lt!53541) (++!664 (t!27040 lt!53541) lt!53552)))))

(assert (= (and d!42579 c!33758) b!170303))

(assert (= (and d!42579 (not c!33758)) b!170304))

(assert (= (and d!42579 res!77000) b!170305))

(assert (= (and b!170305 res!77001) b!170306))

(declare-fun m!166231 () Bool)

(assert (=> d!42579 m!166231))

(assert (=> d!42579 m!166039))

(declare-fun m!166233 () Bool)

(assert (=> d!42579 m!166233))

(declare-fun m!166235 () Bool)

(assert (=> b!170305 m!166235))

(assert (=> b!170305 m!166045))

(declare-fun m!166237 () Bool)

(assert (=> b!170305 m!166237))

(declare-fun m!166239 () Bool)

(assert (=> b!170304 m!166239))

(assert (=> b!169961 d!42579))

(declare-fun d!42581 () Bool)

(assert (=> d!42581 (= (list!1053 (charsOf!174 (h!8299 tokens!465))) (list!1057 (c!33676 (charsOf!174 (h!8299 tokens!465)))))))

(declare-fun bs!16519 () Bool)

(assert (= bs!16519 d!42581))

(declare-fun m!166241 () Bool)

(assert (=> bs!16519 m!166241))

(assert (=> b!169961 d!42581))

(declare-fun d!42583 () Bool)

(declare-fun lt!53731 () BalanceConc!1728)

(assert (=> d!42583 (= (list!1053 lt!53731) (originalCharacters!562 (h!8299 tokens!465)))))

(assert (=> d!42583 (= lt!53731 (dynLambda!1097 (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))) (value!19107 (h!8299 tokens!465))))))

(assert (=> d!42583 (= (charsOf!174 (h!8299 tokens!465)) lt!53731)))

(declare-fun b_lambda!3823 () Bool)

(assert (=> (not b_lambda!3823) (not d!42583)))

(declare-fun t!27076 () Bool)

(declare-fun tb!6679 () Bool)

(assert (=> (and b!169957 (= (toChars!1041 (transformation!519 (h!8298 rules!1920))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465))))) t!27076) tb!6679))

(declare-fun b!170307 () Bool)

(declare-fun e!103095 () Bool)

(declare-fun tp!84105 () Bool)

(assert (=> b!170307 (= e!103095 (and (inv!3729 (c!33676 (dynLambda!1097 (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))) (value!19107 (h!8299 tokens!465))))) tp!84105))))

(declare-fun result!9366 () Bool)

(assert (=> tb!6679 (= result!9366 (and (inv!3730 (dynLambda!1097 (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))) (value!19107 (h!8299 tokens!465)))) e!103095))))

(assert (= tb!6679 b!170307))

(declare-fun m!166243 () Bool)

(assert (=> b!170307 m!166243))

(declare-fun m!166245 () Bool)

(assert (=> tb!6679 m!166245))

(assert (=> d!42583 t!27076))

(declare-fun b_and!11157 () Bool)

(assert (= b_and!11151 (and (=> t!27076 result!9366) b_and!11157)))

(declare-fun t!27078 () Bool)

(declare-fun tb!6681 () Bool)

(assert (=> (and b!169968 (= (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465))))) t!27078) tb!6681))

(declare-fun result!9368 () Bool)

(assert (= result!9368 result!9366))

(assert (=> d!42583 t!27078))

(declare-fun b_and!11159 () Bool)

(assert (= b_and!11153 (and (=> t!27078 result!9368) b_and!11159)))

(declare-fun t!27080 () Bool)

(declare-fun tb!6683 () Bool)

(assert (=> (and b!169973 (= (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465))))) t!27080) tb!6683))

(declare-fun result!9370 () Bool)

(assert (= result!9370 result!9366))

(assert (=> d!42583 t!27080))

(declare-fun b_and!11161 () Bool)

(assert (= b_and!11155 (and (=> t!27080 result!9370) b_and!11161)))

(declare-fun m!166247 () Bool)

(assert (=> d!42583 m!166247))

(declare-fun m!166249 () Bool)

(assert (=> d!42583 m!166249))

(assert (=> b!169961 d!42583))

(declare-fun d!42585 () Bool)

(declare-fun e!103096 () Bool)

(assert (=> d!42585 e!103096))

(declare-fun res!77002 () Bool)

(assert (=> d!42585 (=> (not res!77002) (not e!103096))))

(declare-fun lt!53732 () List!2910)

(assert (=> d!42585 (= res!77002 (= (content!399 lt!53732) ((_ map or) (content!399 lt!53550) (content!399 lt!53544))))))

(declare-fun e!103097 () List!2910)

(assert (=> d!42585 (= lt!53732 e!103097)))

(declare-fun c!33759 () Bool)

(assert (=> d!42585 (= c!33759 ((_ is Nil!2900) lt!53550))))

(assert (=> d!42585 (= (++!664 lt!53550 lt!53544) lt!53732)))

(declare-fun b!170310 () Bool)

(declare-fun res!77003 () Bool)

(assert (=> b!170310 (=> (not res!77003) (not e!103096))))

(assert (=> b!170310 (= res!77003 (= (size!2407 lt!53732) (+ (size!2407 lt!53550) (size!2407 lt!53544))))))

(declare-fun b!170308 () Bool)

(assert (=> b!170308 (= e!103097 lt!53544)))

(declare-fun b!170311 () Bool)

(assert (=> b!170311 (= e!103096 (or (not (= lt!53544 Nil!2900)) (= lt!53732 lt!53550)))))

(declare-fun b!170309 () Bool)

(assert (=> b!170309 (= e!103097 (Cons!2900 (h!8297 lt!53550) (++!664 (t!27040 lt!53550) lt!53544)))))

(assert (= (and d!42585 c!33759) b!170308))

(assert (= (and d!42585 (not c!33759)) b!170309))

(assert (= (and d!42585 res!77002) b!170310))

(assert (= (and b!170310 res!77003) b!170311))

(declare-fun m!166251 () Bool)

(assert (=> d!42585 m!166251))

(assert (=> d!42585 m!166041))

(assert (=> d!42585 m!166213))

(declare-fun m!166253 () Bool)

(assert (=> b!170310 m!166253))

(assert (=> b!170310 m!166047))

(assert (=> b!170310 m!166219))

(declare-fun m!166255 () Bool)

(assert (=> b!170309 m!166255))

(assert (=> b!169961 d!42585))

(declare-fun bs!16541 () Bool)

(declare-fun d!42587 () Bool)

(assert (= bs!16541 (and d!42587 b!169966)))

(declare-fun lambda!4856 () Int)

(assert (=> bs!16541 (= lambda!4856 lambda!4827)))

(declare-fun bs!16542 () Bool)

(assert (= bs!16542 (and d!42587 b!169975)))

(assert (=> bs!16542 (not (= lambda!4856 lambda!4828))))

(declare-fun bs!16543 () Bool)

(assert (= bs!16543 (and d!42587 d!42473)))

(assert (=> bs!16543 (not (= lambda!4856 lambda!4833))))

(declare-fun bs!16544 () Bool)

(assert (= bs!16544 (and d!42587 b!170283)))

(assert (=> bs!16544 (not (= lambda!4856 lambda!4845))))

(declare-fun bs!16545 () Bool)

(declare-fun b!170428 () Bool)

(assert (= bs!16545 (and b!170428 b!170283)))

(declare-fun lambda!4857 () Int)

(assert (=> bs!16545 (= lambda!4857 lambda!4845)))

(declare-fun bs!16546 () Bool)

(assert (= bs!16546 (and b!170428 b!169975)))

(assert (=> bs!16546 (= lambda!4857 lambda!4828)))

(declare-fun bs!16547 () Bool)

(assert (= bs!16547 (and b!170428 d!42587)))

(assert (=> bs!16547 (not (= lambda!4857 lambda!4856))))

(declare-fun bs!16548 () Bool)

(assert (= bs!16548 (and b!170428 b!169966)))

(assert (=> bs!16548 (not (= lambda!4857 lambda!4827))))

(declare-fun bs!16549 () Bool)

(assert (= bs!16549 (and b!170428 d!42473)))

(assert (=> bs!16549 (= lambda!4857 lambda!4833)))

(declare-fun b!170437 () Bool)

(declare-fun e!103179 () Bool)

(assert (=> b!170437 (= e!103179 true)))

(declare-fun b!170436 () Bool)

(declare-fun e!103178 () Bool)

(assert (=> b!170436 (= e!103178 e!103179)))

(declare-fun b!170435 () Bool)

(declare-fun e!103177 () Bool)

(assert (=> b!170435 (= e!103177 e!103178)))

(assert (=> b!170428 e!103177))

(assert (= b!170436 b!170437))

(assert (= b!170435 b!170436))

(assert (= (and b!170428 ((_ is Cons!2901) rules!1920)) b!170435))

(assert (=> b!170437 (< (dynLambda!1091 order!1573 (toValue!1182 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4857))))

(assert (=> b!170437 (< (dynLambda!1093 order!1577 (toChars!1041 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4857))))

(assert (=> b!170428 true))

(declare-fun bm!7432 () Bool)

(declare-fun call!7441 () Token!782)

(declare-fun call!7438 () Token!782)

(assert (=> bm!7432 (= call!7441 call!7438)))

(declare-fun call!7437 () BalanceConc!1728)

(declare-fun c!33782 () Bool)

(declare-fun call!7439 () BalanceConc!1728)

(declare-fun bm!7433 () Bool)

(declare-fun lt!53832 () BalanceConc!1728)

(declare-fun call!7440 () BalanceConc!1728)

(declare-fun ++!666 (BalanceConc!1728 BalanceConc!1728) BalanceConc!1728)

(assert (=> bm!7433 (= call!7437 (++!666 call!7440 (ite c!33782 lt!53832 call!7439)))))

(declare-fun bm!7434 () Bool)

(declare-fun apply!415 (BalanceConc!1730 Int) Token!782)

(assert (=> bm!7434 (= call!7438 (apply!415 (seqFromList!416 (t!27042 tokens!465)) 0))))

(declare-fun b!170426 () Bool)

(declare-fun e!103172 () BalanceConc!1728)

(assert (=> b!170426 (= e!103172 call!7437)))

(declare-fun e!103175 () BalanceConc!1728)

(assert (=> b!170428 (= e!103175 e!103172)))

(declare-fun lt!53823 () List!2912)

(assert (=> b!170428 (= lt!53823 (list!1056 (seqFromList!416 (t!27042 tokens!465))))))

(declare-fun lt!53836 () Unit!2520)

(declare-fun lemmaDropApply!128 (List!2912 Int) Unit!2520)

(assert (=> b!170428 (= lt!53836 (lemmaDropApply!128 lt!53823 0))))

(declare-fun head!602 (List!2912) Token!782)

(declare-fun drop!141 (List!2912 Int) List!2912)

(declare-fun apply!416 (List!2912 Int) Token!782)

(assert (=> b!170428 (= (head!602 (drop!141 lt!53823 0)) (apply!416 lt!53823 0))))

(declare-fun lt!53825 () Unit!2520)

(assert (=> b!170428 (= lt!53825 lt!53836)))

(declare-fun lt!53831 () List!2912)

(assert (=> b!170428 (= lt!53831 (list!1056 (seqFromList!416 (t!27042 tokens!465))))))

(declare-fun lt!53835 () Unit!2520)

(declare-fun lemmaDropTail!120 (List!2912 Int) Unit!2520)

(assert (=> b!170428 (= lt!53835 (lemmaDropTail!120 lt!53831 0))))

(declare-fun tail!342 (List!2912) List!2912)

(assert (=> b!170428 (= (tail!342 (drop!141 lt!53831 0)) (drop!141 lt!53831 (+ 0 1)))))

(declare-fun lt!53830 () Unit!2520)

(assert (=> b!170428 (= lt!53830 lt!53835)))

(declare-fun lt!53829 () Unit!2520)

(assert (=> b!170428 (= lt!53829 (forallContained!86 (list!1056 (seqFromList!416 (t!27042 tokens!465))) lambda!4857 (apply!415 (seqFromList!416 (t!27042 tokens!465)) 0)))))

(assert (=> b!170428 (= lt!53832 (printWithSeparatorTokenWhenNeededRec!88 thiss!17480 rules!1920 (seqFromList!416 (t!27042 tokens!465)) separatorToken!170 (+ 0 1)))))

(declare-fun lt!53833 () Option!313)

(assert (=> b!170428 (= lt!53833 (maxPrefixZipperSequence!98 thiss!17480 rules!1920 (++!666 (charsOf!174 (apply!415 (seqFromList!416 (t!27042 tokens!465)) 0)) lt!53832)))))

(declare-fun res!77070 () Bool)

(assert (=> b!170428 (= res!77070 ((_ is Some!312) lt!53833))))

(declare-fun e!103174 () Bool)

(assert (=> b!170428 (=> (not res!77070) (not e!103174))))

(assert (=> b!170428 (= c!33782 e!103174)))

(declare-fun b!170429 () Bool)

(declare-fun e!103173 () Bool)

(assert (=> b!170429 (= e!103173 (<= 0 (size!2406 (seqFromList!416 (t!27042 tokens!465)))))))

(declare-fun b!170430 () Bool)

(declare-fun c!33780 () Bool)

(declare-fun e!103171 () Bool)

(assert (=> b!170430 (= c!33780 e!103171)))

(declare-fun res!77071 () Bool)

(assert (=> b!170430 (=> (not res!77071) (not e!103171))))

(assert (=> b!170430 (= res!77071 ((_ is Some!312) lt!53833))))

(declare-fun e!103176 () BalanceConc!1728)

(assert (=> b!170430 (= e!103172 e!103176)))

(declare-fun b!170431 () Bool)

(assert (=> b!170431 (= e!103171 (not (= (_1!1617 (v!13749 lt!53833)) call!7438)))))

(declare-fun bm!7435 () Bool)

(assert (=> bm!7435 (= call!7439 (charsOf!174 (ite c!33780 separatorToken!170 call!7441)))))

(declare-fun b!170432 () Bool)

(assert (=> b!170432 (= e!103175 (BalanceConc!1729 Empty!860))))

(declare-fun b!170433 () Bool)

(assert (=> b!170433 (= e!103174 (= (_1!1617 (v!13749 lt!53833)) (apply!415 (seqFromList!416 (t!27042 tokens!465)) 0)))))

(declare-fun b!170434 () Bool)

(assert (=> b!170434 (= e!103176 (BalanceConc!1729 Empty!860))))

(assert (=> b!170434 (= (print!136 thiss!17480 (singletonSeq!71 call!7441)) (printTailRec!99 thiss!17480 (singletonSeq!71 call!7441) 0 (BalanceConc!1729 Empty!860)))))

(declare-fun lt!53827 () Unit!2520)

(declare-fun Unit!2530 () Unit!2520)

(assert (=> b!170434 (= lt!53827 Unit!2530)))

(declare-fun lt!53834 () Unit!2520)

(assert (=> b!170434 (= lt!53834 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!36 thiss!17480 rules!1920 (list!1053 call!7439) (list!1053 lt!53832)))))

(assert (=> b!170434 false))

(declare-fun lt!53824 () Unit!2520)

(declare-fun Unit!2531 () Unit!2520)

(assert (=> b!170434 (= lt!53824 Unit!2531)))

(declare-fun bm!7436 () Bool)

(assert (=> bm!7436 (= call!7440 (charsOf!174 (ite c!33782 call!7438 call!7441)))))

(declare-fun b!170427 () Bool)

(assert (=> b!170427 (= e!103176 (++!666 call!7437 lt!53832))))

(declare-fun lt!53828 () BalanceConc!1728)

(declare-fun dropList!88 (BalanceConc!1730 Int) List!2912)

(assert (=> d!42587 (= (list!1053 lt!53828) (printWithSeparatorTokenWhenNeededList!98 thiss!17480 rules!1920 (dropList!88 (seqFromList!416 (t!27042 tokens!465)) 0) separatorToken!170))))

(assert (=> d!42587 (= lt!53828 e!103175)))

(declare-fun c!33781 () Bool)

(assert (=> d!42587 (= c!33781 (>= 0 (size!2406 (seqFromList!416 (t!27042 tokens!465)))))))

(declare-fun lt!53826 () Unit!2520)

(declare-fun lemmaContentSubsetPreservesForall!32 (List!2912 List!2912 Int) Unit!2520)

(assert (=> d!42587 (= lt!53826 (lemmaContentSubsetPreservesForall!32 (list!1056 (seqFromList!416 (t!27042 tokens!465))) (dropList!88 (seqFromList!416 (t!27042 tokens!465)) 0) lambda!4856))))

(assert (=> d!42587 e!103173))

(declare-fun res!77072 () Bool)

(assert (=> d!42587 (=> (not res!77072) (not e!103173))))

(assert (=> d!42587 (= res!77072 (>= 0 0))))

(assert (=> d!42587 (= (printWithSeparatorTokenWhenNeededRec!88 thiss!17480 rules!1920 (seqFromList!416 (t!27042 tokens!465)) separatorToken!170 0) lt!53828)))

(assert (= (and d!42587 res!77072) b!170429))

(assert (= (and d!42587 c!33781) b!170432))

(assert (= (and d!42587 (not c!33781)) b!170428))

(assert (= (and b!170428 res!77070) b!170433))

(assert (= (and b!170428 c!33782) b!170426))

(assert (= (and b!170428 (not c!33782)) b!170430))

(assert (= (and b!170430 res!77071) b!170431))

(assert (= (and b!170430 c!33780) b!170427))

(assert (= (and b!170430 (not c!33780)) b!170434))

(assert (= (or b!170427 b!170434) bm!7432))

(assert (= (or b!170427 b!170434) bm!7435))

(assert (= (or b!170426 bm!7432 b!170431) bm!7434))

(assert (= (or b!170426 b!170427) bm!7436))

(assert (= (or b!170426 b!170427) bm!7433))

(declare-fun m!166425 () Bool)

(assert (=> b!170427 m!166425))

(declare-fun m!166427 () Bool)

(assert (=> b!170434 m!166427))

(declare-fun m!166429 () Bool)

(assert (=> b!170434 m!166429))

(declare-fun m!166431 () Bool)

(assert (=> b!170434 m!166431))

(declare-fun m!166433 () Bool)

(assert (=> b!170434 m!166433))

(declare-fun m!166435 () Bool)

(assert (=> b!170434 m!166435))

(assert (=> b!170434 m!166427))

(declare-fun m!166437 () Bool)

(assert (=> b!170434 m!166437))

(assert (=> b!170434 m!166431))

(assert (=> b!170434 m!166427))

(assert (=> b!170434 m!166433))

(declare-fun m!166439 () Bool)

(assert (=> bm!7435 m!166439))

(assert (=> bm!7434 m!165673))

(declare-fun m!166441 () Bool)

(assert (=> bm!7434 m!166441))

(declare-fun m!166443 () Bool)

(assert (=> bm!7436 m!166443))

(assert (=> b!170429 m!165673))

(declare-fun m!166445 () Bool)

(assert (=> b!170429 m!166445))

(assert (=> b!170428 m!165673))

(assert (=> b!170428 m!166441))

(assert (=> b!170428 m!166441))

(declare-fun m!166447 () Bool)

(assert (=> b!170428 m!166447))

(declare-fun m!166449 () Bool)

(assert (=> b!170428 m!166449))

(declare-fun m!166451 () Bool)

(assert (=> b!170428 m!166451))

(assert (=> b!170428 m!166449))

(declare-fun m!166453 () Bool)

(assert (=> b!170428 m!166453))

(declare-fun m!166455 () Bool)

(assert (=> b!170428 m!166455))

(assert (=> b!170428 m!165673))

(declare-fun m!166457 () Bool)

(assert (=> b!170428 m!166457))

(declare-fun m!166459 () Bool)

(assert (=> b!170428 m!166459))

(declare-fun m!166461 () Bool)

(assert (=> b!170428 m!166461))

(assert (=> b!170428 m!166455))

(declare-fun m!166463 () Bool)

(assert (=> b!170428 m!166463))

(assert (=> b!170428 m!166447))

(assert (=> b!170428 m!166459))

(declare-fun m!166465 () Bool)

(assert (=> b!170428 m!166465))

(declare-fun m!166467 () Bool)

(assert (=> b!170428 m!166467))

(assert (=> b!170428 m!165673))

(declare-fun m!166469 () Bool)

(assert (=> b!170428 m!166469))

(declare-fun m!166471 () Bool)

(assert (=> b!170428 m!166471))

(assert (=> b!170428 m!166469))

(assert (=> b!170428 m!166441))

(declare-fun m!166473 () Bool)

(assert (=> b!170428 m!166473))

(assert (=> b!170433 m!165673))

(assert (=> b!170433 m!166441))

(declare-fun m!166475 () Bool)

(assert (=> d!42587 m!166475))

(declare-fun m!166477 () Bool)

(assert (=> d!42587 m!166477))

(assert (=> d!42587 m!165673))

(assert (=> d!42587 m!166475))

(declare-fun m!166479 () Bool)

(assert (=> d!42587 m!166479))

(assert (=> d!42587 m!165673))

(assert (=> d!42587 m!166445))

(assert (=> d!42587 m!165673))

(assert (=> d!42587 m!166469))

(assert (=> d!42587 m!166469))

(assert (=> d!42587 m!166475))

(declare-fun m!166481 () Bool)

(assert (=> d!42587 m!166481))

(declare-fun m!166483 () Bool)

(assert (=> bm!7433 m!166483))

(assert (=> b!169961 d!42587))

(declare-fun d!42615 () Bool)

(assert (=> d!42615 (= (++!664 (++!664 lt!53541 lt!53550) lt!53544) (++!664 lt!53541 (++!664 lt!53550 lt!53544)))))

(declare-fun lt!53839 () Unit!2520)

(declare-fun choose!1830 (List!2910 List!2910 List!2910) Unit!2520)

(assert (=> d!42615 (= lt!53839 (choose!1830 lt!53541 lt!53550 lt!53544))))

(assert (=> d!42615 (= (lemmaConcatAssociativity!204 lt!53541 lt!53550 lt!53544) lt!53839)))

(declare-fun bs!16550 () Bool)

(assert (= bs!16550 d!42615))

(assert (=> bs!16550 m!165669))

(assert (=> bs!16550 m!165685))

(declare-fun m!166485 () Bool)

(assert (=> bs!16550 m!166485))

(declare-fun m!166487 () Bool)

(assert (=> bs!16550 m!166487))

(assert (=> bs!16550 m!165685))

(assert (=> bs!16550 m!165669))

(assert (=> bs!16550 m!165671))

(assert (=> b!169961 d!42615))

(declare-fun d!42617 () Bool)

(declare-fun lt!53859 () BalanceConc!1728)

(declare-fun printListTailRec!56 (LexerInterface!405 List!2912 List!2910) List!2910)

(assert (=> d!42617 (= (list!1053 lt!53859) (printListTailRec!56 thiss!17480 (dropList!88 lt!53551 0) (list!1053 (BalanceConc!1729 Empty!860))))))

(declare-fun e!103185 () BalanceConc!1728)

(assert (=> d!42617 (= lt!53859 e!103185)))

(declare-fun c!33785 () Bool)

(assert (=> d!42617 (= c!33785 (>= 0 (size!2406 lt!53551)))))

(declare-fun e!103184 () Bool)

(assert (=> d!42617 e!103184))

(declare-fun res!77075 () Bool)

(assert (=> d!42617 (=> (not res!77075) (not e!103184))))

(assert (=> d!42617 (= res!77075 (>= 0 0))))

(assert (=> d!42617 (= (printTailRec!99 thiss!17480 lt!53551 0 (BalanceConc!1729 Empty!860)) lt!53859)))

(declare-fun b!170444 () Bool)

(assert (=> b!170444 (= e!103184 (<= 0 (size!2406 lt!53551)))))

(declare-fun b!170445 () Bool)

(assert (=> b!170445 (= e!103185 (BalanceConc!1729 Empty!860))))

(declare-fun b!170446 () Bool)

(assert (=> b!170446 (= e!103185 (printTailRec!99 thiss!17480 lt!53551 (+ 0 1) (++!666 (BalanceConc!1729 Empty!860) (charsOf!174 (apply!415 lt!53551 0)))))))

(declare-fun lt!53860 () List!2912)

(assert (=> b!170446 (= lt!53860 (list!1056 lt!53551))))

(declare-fun lt!53857 () Unit!2520)

(assert (=> b!170446 (= lt!53857 (lemmaDropApply!128 lt!53860 0))))

(assert (=> b!170446 (= (head!602 (drop!141 lt!53860 0)) (apply!416 lt!53860 0))))

(declare-fun lt!53854 () Unit!2520)

(assert (=> b!170446 (= lt!53854 lt!53857)))

(declare-fun lt!53858 () List!2912)

(assert (=> b!170446 (= lt!53858 (list!1056 lt!53551))))

(declare-fun lt!53856 () Unit!2520)

(assert (=> b!170446 (= lt!53856 (lemmaDropTail!120 lt!53858 0))))

(assert (=> b!170446 (= (tail!342 (drop!141 lt!53858 0)) (drop!141 lt!53858 (+ 0 1)))))

(declare-fun lt!53855 () Unit!2520)

(assert (=> b!170446 (= lt!53855 lt!53856)))

(assert (= (and d!42617 res!77075) b!170444))

(assert (= (and d!42617 c!33785) b!170445))

(assert (= (and d!42617 (not c!33785)) b!170446))

(declare-fun m!166489 () Bool)

(assert (=> d!42617 m!166489))

(declare-fun m!166491 () Bool)

(assert (=> d!42617 m!166491))

(declare-fun m!166493 () Bool)

(assert (=> d!42617 m!166493))

(declare-fun m!166495 () Bool)

(assert (=> d!42617 m!166495))

(assert (=> d!42617 m!166493))

(assert (=> d!42617 m!166491))

(declare-fun m!166497 () Bool)

(assert (=> d!42617 m!166497))

(assert (=> b!170444 m!166489))

(declare-fun m!166499 () Bool)

(assert (=> b!170446 m!166499))

(declare-fun m!166501 () Bool)

(assert (=> b!170446 m!166501))

(declare-fun m!166503 () Bool)

(assert (=> b!170446 m!166503))

(declare-fun m!166505 () Bool)

(assert (=> b!170446 m!166505))

(declare-fun m!166507 () Bool)

(assert (=> b!170446 m!166507))

(declare-fun m!166509 () Bool)

(assert (=> b!170446 m!166509))

(assert (=> b!170446 m!166503))

(declare-fun m!166511 () Bool)

(assert (=> b!170446 m!166511))

(declare-fun m!166513 () Bool)

(assert (=> b!170446 m!166513))

(declare-fun m!166515 () Bool)

(assert (=> b!170446 m!166515))

(declare-fun m!166517 () Bool)

(assert (=> b!170446 m!166517))

(assert (=> b!170446 m!166517))

(assert (=> b!170446 m!166501))

(declare-fun m!166519 () Bool)

(assert (=> b!170446 m!166519))

(assert (=> b!170446 m!166507))

(declare-fun m!166521 () Bool)

(assert (=> b!170446 m!166521))

(declare-fun m!166523 () Bool)

(assert (=> b!170446 m!166523))

(assert (=> b!170446 m!166521))

(assert (=> b!169982 d!42617))

(declare-fun d!42619 () Bool)

(assert (=> d!42619 (= (list!1053 lt!53546) (list!1057 (c!33676 lt!53546)))))

(declare-fun bs!16551 () Bool)

(assert (= bs!16551 d!42619))

(declare-fun m!166525 () Bool)

(assert (=> bs!16551 m!166525))

(assert (=> b!169982 d!42619))

(declare-fun d!42621 () Bool)

(declare-fun lt!53863 () BalanceConc!1728)

(assert (=> d!42621 (= (list!1053 lt!53863) (printList!89 thiss!17480 (list!1056 lt!53551)))))

(assert (=> d!42621 (= lt!53863 (printTailRec!99 thiss!17480 lt!53551 0 (BalanceConc!1729 Empty!860)))))

(assert (=> d!42621 (= (print!136 thiss!17480 lt!53551) lt!53863)))

(declare-fun bs!16552 () Bool)

(assert (= bs!16552 d!42621))

(declare-fun m!166527 () Bool)

(assert (=> bs!16552 m!166527))

(assert (=> bs!16552 m!166513))

(assert (=> bs!16552 m!166513))

(declare-fun m!166529 () Bool)

(assert (=> bs!16552 m!166529))

(assert (=> bs!16552 m!165697))

(assert (=> b!169982 d!42621))

(declare-fun d!42623 () Bool)

(declare-fun e!103188 () Bool)

(assert (=> d!42623 e!103188))

(declare-fun res!77078 () Bool)

(assert (=> d!42623 (=> (not res!77078) (not e!103188))))

(declare-fun lt!53866 () BalanceConc!1730)

(assert (=> d!42623 (= res!77078 (= (list!1056 lt!53866) (Cons!2902 (h!8299 tokens!465) Nil!2902)))))

(declare-fun singleton!37 (Token!782) BalanceConc!1730)

(assert (=> d!42623 (= lt!53866 (singleton!37 (h!8299 tokens!465)))))

(assert (=> d!42623 (= (singletonSeq!71 (h!8299 tokens!465)) lt!53866)))

(declare-fun b!170449 () Bool)

(declare-fun isBalanced!238 (Conc!861) Bool)

(assert (=> b!170449 (= e!103188 (isBalanced!238 (c!33678 lt!53866)))))

(assert (= (and d!42623 res!77078) b!170449))

(declare-fun m!166531 () Bool)

(assert (=> d!42623 m!166531))

(declare-fun m!166533 () Bool)

(assert (=> d!42623 m!166533))

(declare-fun m!166535 () Bool)

(assert (=> b!170449 m!166535))

(assert (=> b!169982 d!42623))

(declare-fun d!42625 () Bool)

(declare-fun c!33788 () Bool)

(assert (=> d!42625 (= c!33788 ((_ is Cons!2902) (Cons!2902 (h!8299 tokens!465) Nil!2902)))))

(declare-fun e!103191 () List!2910)

(assert (=> d!42625 (= (printList!89 thiss!17480 (Cons!2902 (h!8299 tokens!465) Nil!2902)) e!103191)))

(declare-fun b!170454 () Bool)

(assert (=> b!170454 (= e!103191 (++!664 (list!1053 (charsOf!174 (h!8299 (Cons!2902 (h!8299 tokens!465) Nil!2902)))) (printList!89 thiss!17480 (t!27042 (Cons!2902 (h!8299 tokens!465) Nil!2902)))))))

(declare-fun b!170455 () Bool)

(assert (=> b!170455 (= e!103191 Nil!2900)))

(assert (= (and d!42625 c!33788) b!170454))

(assert (= (and d!42625 (not c!33788)) b!170455))

(declare-fun m!166537 () Bool)

(assert (=> b!170454 m!166537))

(assert (=> b!170454 m!166537))

(declare-fun m!166539 () Bool)

(assert (=> b!170454 m!166539))

(declare-fun m!166541 () Bool)

(assert (=> b!170454 m!166541))

(assert (=> b!170454 m!166539))

(assert (=> b!170454 m!166541))

(declare-fun m!166543 () Bool)

(assert (=> b!170454 m!166543))

(assert (=> b!169982 d!42625))

(declare-fun d!42627 () Bool)

(assert (=> d!42627 (= (get!793 lt!53542) (v!13748 lt!53542))))

(assert (=> b!169983 d!42627))

(declare-fun d!42629 () Bool)

(assert (=> d!42629 true))

(declare-fun lt!53872 () Bool)

(declare-fun lambda!4865 () Int)

(declare-fun forall!568 (List!2911 Int) Bool)

(assert (=> d!42629 (= lt!53872 (forall!568 rules!1920 lambda!4865))))

(declare-fun e!103202 () Bool)

(assert (=> d!42629 (= lt!53872 e!103202)))

(declare-fun res!77086 () Bool)

(assert (=> d!42629 (=> res!77086 e!103202)))

(assert (=> d!42629 (= res!77086 (not ((_ is Cons!2901) rules!1920)))))

(assert (=> d!42629 (= (rulesValidInductive!120 thiss!17480 rules!1920) lt!53872)))

(declare-fun b!170466 () Bool)

(declare-fun e!103203 () Bool)

(assert (=> b!170466 (= e!103202 e!103203)))

(declare-fun res!77087 () Bool)

(assert (=> b!170466 (=> (not res!77087) (not e!103203))))

(declare-fun ruleValid!56 (LexerInterface!405 Rule!838) Bool)

(assert (=> b!170466 (= res!77087 (ruleValid!56 thiss!17480 (h!8298 rules!1920)))))

(declare-fun b!170467 () Bool)

(assert (=> b!170467 (= e!103203 (rulesValidInductive!120 thiss!17480 (t!27041 rules!1920)))))

(assert (= (and d!42629 (not res!77086)) b!170466))

(assert (= (and b!170466 res!77087) b!170467))

(declare-fun m!166553 () Bool)

(assert (=> d!42629 m!166553))

(declare-fun m!166555 () Bool)

(assert (=> b!170466 m!166555))

(declare-fun m!166557 () Bool)

(assert (=> b!170467 m!166557))

(assert (=> b!169972 d!42629))

(declare-fun d!42633 () Bool)

(declare-fun isEmpty!1236 (Option!312) Bool)

(assert (=> d!42633 (= (isDefined!163 lt!53542) (not (isEmpty!1236 lt!53542)))))

(declare-fun bs!16562 () Bool)

(assert (= bs!16562 d!42633))

(declare-fun m!166559 () Bool)

(assert (=> bs!16562 m!166559))

(assert (=> b!169972 d!42633))

(declare-fun b!170544 () Bool)

(declare-fun e!103253 () Bool)

(declare-fun e!103252 () Bool)

(assert (=> b!170544 (= e!103253 e!103252)))

(declare-fun res!77102 () Bool)

(assert (=> b!170544 (=> (not res!77102) (not e!103252))))

(declare-fun lt!53887 () Option!312)

(assert (=> b!170544 (= res!77102 (isDefined!163 lt!53887))))

(declare-fun b!170545 () Bool)

(declare-fun res!77104 () Bool)

(assert (=> b!170545 (=> (not res!77104) (not e!103252))))

(declare-fun matchR!83 (Regex!743 List!2910) Bool)

(assert (=> b!170545 (= res!77104 (matchR!83 (regex!519 (rule!1026 (_1!1616 (get!793 lt!53887)))) (list!1053 (charsOf!174 (_1!1616 (get!793 lt!53887))))))))

(declare-fun b!170546 () Bool)

(declare-fun e!103254 () Option!312)

(declare-fun lt!53884 () Option!312)

(declare-fun lt!53885 () Option!312)

(assert (=> b!170546 (= e!103254 (ite (and ((_ is None!311) lt!53884) ((_ is None!311) lt!53885)) None!311 (ite ((_ is None!311) lt!53885) lt!53884 (ite ((_ is None!311) lt!53884) lt!53885 (ite (>= (size!2401 (_1!1616 (v!13748 lt!53884))) (size!2401 (_1!1616 (v!13748 lt!53885)))) lt!53884 lt!53885)))))))

(declare-fun call!7444 () Option!312)

(assert (=> b!170546 (= lt!53884 call!7444)))

(assert (=> b!170546 (= lt!53885 (maxPrefix!135 thiss!17480 (t!27041 rules!1920) lt!53541))))

(declare-fun b!170547 () Bool)

(declare-fun contains!466 (List!2911 Rule!838) Bool)

(assert (=> b!170547 (= e!103252 (contains!466 rules!1920 (rule!1026 (_1!1616 (get!793 lt!53887)))))))

(declare-fun b!170549 () Bool)

(declare-fun res!77103 () Bool)

(assert (=> b!170549 (=> (not res!77103) (not e!103252))))

(assert (=> b!170549 (= res!77103 (< (size!2407 (_2!1616 (get!793 lt!53887))) (size!2407 lt!53541)))))

(declare-fun b!170550 () Bool)

(declare-fun res!77105 () Bool)

(assert (=> b!170550 (=> (not res!77105) (not e!103252))))

(assert (=> b!170550 (= res!77105 (= (++!664 (list!1053 (charsOf!174 (_1!1616 (get!793 lt!53887)))) (_2!1616 (get!793 lt!53887))) lt!53541))))

(declare-fun b!170551 () Bool)

(assert (=> b!170551 (= e!103254 call!7444)))

(declare-fun b!170552 () Bool)

(declare-fun res!77106 () Bool)

(assert (=> b!170552 (=> (not res!77106) (not e!103252))))

(assert (=> b!170552 (= res!77106 (= (list!1053 (charsOf!174 (_1!1616 (get!793 lt!53887)))) (originalCharacters!562 (_1!1616 (get!793 lt!53887)))))))

(declare-fun bm!7439 () Bool)

(declare-fun maxPrefixOneRule!71 (LexerInterface!405 Rule!838 List!2910) Option!312)

(assert (=> bm!7439 (= call!7444 (maxPrefixOneRule!71 thiss!17480 (h!8298 rules!1920) lt!53541))))

(declare-fun b!170548 () Bool)

(declare-fun res!77107 () Bool)

(assert (=> b!170548 (=> (not res!77107) (not e!103252))))

(declare-fun apply!418 (TokenValueInjection!854 BalanceConc!1728) TokenValue!541)

(assert (=> b!170548 (= res!77107 (= (value!19107 (_1!1616 (get!793 lt!53887))) (apply!418 (transformation!519 (rule!1026 (_1!1616 (get!793 lt!53887)))) (seqFromList!415 (originalCharacters!562 (_1!1616 (get!793 lt!53887)))))))))

(declare-fun d!42635 () Bool)

(assert (=> d!42635 e!103253))

(declare-fun res!77108 () Bool)

(assert (=> d!42635 (=> res!77108 e!103253)))

(assert (=> d!42635 (= res!77108 (isEmpty!1236 lt!53887))))

(assert (=> d!42635 (= lt!53887 e!103254)))

(declare-fun c!33791 () Bool)

(assert (=> d!42635 (= c!33791 (and ((_ is Cons!2901) rules!1920) ((_ is Nil!2901) (t!27041 rules!1920))))))

(declare-fun lt!53886 () Unit!2520)

(declare-fun lt!53883 () Unit!2520)

(assert (=> d!42635 (= lt!53886 lt!53883)))

(assert (=> d!42635 (isPrefix!228 lt!53541 lt!53541)))

(assert (=> d!42635 (= lt!53883 (lemmaIsPrefixRefl!136 lt!53541 lt!53541))))

(assert (=> d!42635 (rulesValidInductive!120 thiss!17480 rules!1920)))

(assert (=> d!42635 (= (maxPrefix!135 thiss!17480 rules!1920 lt!53541) lt!53887)))

(assert (= (and d!42635 c!33791) b!170551))

(assert (= (and d!42635 (not c!33791)) b!170546))

(assert (= (or b!170551 b!170546) bm!7439))

(assert (= (and d!42635 (not res!77108)) b!170544))

(assert (= (and b!170544 res!77102) b!170552))

(assert (= (and b!170552 res!77106) b!170549))

(assert (= (and b!170549 res!77103) b!170550))

(assert (= (and b!170550 res!77105) b!170548))

(assert (= (and b!170548 res!77107) b!170545))

(assert (= (and b!170545 res!77104) b!170547))

(declare-fun m!166573 () Bool)

(assert (=> b!170547 m!166573))

(declare-fun m!166575 () Bool)

(assert (=> b!170547 m!166575))

(assert (=> b!170545 m!166573))

(declare-fun m!166577 () Bool)

(assert (=> b!170545 m!166577))

(assert (=> b!170545 m!166577))

(declare-fun m!166579 () Bool)

(assert (=> b!170545 m!166579))

(assert (=> b!170545 m!166579))

(declare-fun m!166581 () Bool)

(assert (=> b!170545 m!166581))

(declare-fun m!166583 () Bool)

(assert (=> b!170544 m!166583))

(assert (=> b!170552 m!166573))

(assert (=> b!170552 m!166577))

(assert (=> b!170552 m!166577))

(assert (=> b!170552 m!166579))

(assert (=> b!170548 m!166573))

(declare-fun m!166585 () Bool)

(assert (=> b!170548 m!166585))

(assert (=> b!170548 m!166585))

(declare-fun m!166587 () Bool)

(assert (=> b!170548 m!166587))

(declare-fun m!166589 () Bool)

(assert (=> b!170546 m!166589))

(declare-fun m!166591 () Bool)

(assert (=> d!42635 m!166591))

(declare-fun m!166593 () Bool)

(assert (=> d!42635 m!166593))

(declare-fun m!166595 () Bool)

(assert (=> d!42635 m!166595))

(assert (=> d!42635 m!165713))

(assert (=> b!170549 m!166573))

(declare-fun m!166597 () Bool)

(assert (=> b!170549 m!166597))

(assert (=> b!170549 m!166045))

(declare-fun m!166599 () Bool)

(assert (=> bm!7439 m!166599))

(assert (=> b!170550 m!166573))

(assert (=> b!170550 m!166577))

(assert (=> b!170550 m!166577))

(assert (=> b!170550 m!166579))

(assert (=> b!170550 m!166579))

(declare-fun m!166601 () Bool)

(assert (=> b!170550 m!166601))

(assert (=> b!169972 d!42635))

(declare-fun d!42641 () Bool)

(declare-fun res!77113 () Bool)

(declare-fun e!103259 () Bool)

(assert (=> d!42641 (=> res!77113 e!103259)))

(assert (=> d!42641 (= res!77113 (not ((_ is Cons!2901) rules!1920)))))

(assert (=> d!42641 (= (sepAndNonSepRulesDisjointChars!108 rules!1920 rules!1920) e!103259)))

(declare-fun b!170557 () Bool)

(declare-fun e!103260 () Bool)

(assert (=> b!170557 (= e!103259 e!103260)))

(declare-fun res!77114 () Bool)

(assert (=> b!170557 (=> (not res!77114) (not e!103260))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!38 (Rule!838 List!2911) Bool)

(assert (=> b!170557 (= res!77114 (ruleDisjointCharsFromAllFromOtherType!38 (h!8298 rules!1920) rules!1920))))

(declare-fun b!170558 () Bool)

(assert (=> b!170558 (= e!103260 (sepAndNonSepRulesDisjointChars!108 rules!1920 (t!27041 rules!1920)))))

(assert (= (and d!42641 (not res!77113)) b!170557))

(assert (= (and b!170557 res!77114) b!170558))

(declare-fun m!166603 () Bool)

(assert (=> b!170557 m!166603))

(declare-fun m!166605 () Bool)

(assert (=> b!170558 m!166605))

(assert (=> b!169962 d!42641))

(declare-fun d!42643 () Bool)

(declare-fun lt!53893 () Bool)

(declare-fun e!103266 () Bool)

(assert (=> d!42643 (= lt!53893 e!103266)))

(declare-fun res!77122 () Bool)

(assert (=> d!42643 (=> (not res!77122) (not e!103266))))

(assert (=> d!42643 (= res!77122 (= (list!1056 (_1!1615 (lex!205 thiss!17480 rules!1920 (print!136 thiss!17480 (singletonSeq!71 separatorToken!170))))) (list!1056 (singletonSeq!71 separatorToken!170))))))

(declare-fun e!103265 () Bool)

(assert (=> d!42643 (= lt!53893 e!103265)))

(declare-fun res!77123 () Bool)

(assert (=> d!42643 (=> (not res!77123) (not e!103265))))

(declare-fun lt!53892 () tuple2!2798)

(assert (=> d!42643 (= res!77123 (= (size!2406 (_1!1615 lt!53892)) 1))))

(assert (=> d!42643 (= lt!53892 (lex!205 thiss!17480 rules!1920 (print!136 thiss!17480 (singletonSeq!71 separatorToken!170))))))

(assert (=> d!42643 (not (isEmpty!1226 rules!1920))))

(assert (=> d!42643 (= (rulesProduceIndividualToken!154 thiss!17480 rules!1920 separatorToken!170) lt!53893)))

(declare-fun b!170565 () Bool)

(declare-fun res!77121 () Bool)

(assert (=> b!170565 (=> (not res!77121) (not e!103265))))

(assert (=> b!170565 (= res!77121 (= (apply!415 (_1!1615 lt!53892) 0) separatorToken!170))))

(declare-fun b!170566 () Bool)

(declare-fun isEmpty!1237 (BalanceConc!1728) Bool)

(assert (=> b!170566 (= e!103265 (isEmpty!1237 (_2!1615 lt!53892)))))

(declare-fun b!170567 () Bool)

(assert (=> b!170567 (= e!103266 (isEmpty!1237 (_2!1615 (lex!205 thiss!17480 rules!1920 (print!136 thiss!17480 (singletonSeq!71 separatorToken!170))))))))

(assert (= (and d!42643 res!77123) b!170565))

(assert (= (and b!170565 res!77121) b!170566))

(assert (= (and d!42643 res!77122) b!170567))

(declare-fun m!166607 () Bool)

(assert (=> d!42643 m!166607))

(declare-fun m!166609 () Bool)

(assert (=> d!42643 m!166609))

(declare-fun m!166611 () Bool)

(assert (=> d!42643 m!166611))

(declare-fun m!166613 () Bool)

(assert (=> d!42643 m!166613))

(assert (=> d!42643 m!166611))

(declare-fun m!166615 () Bool)

(assert (=> d!42643 m!166615))

(assert (=> d!42643 m!166615))

(declare-fun m!166617 () Bool)

(assert (=> d!42643 m!166617))

(assert (=> d!42643 m!165647))

(assert (=> d!42643 m!166611))

(declare-fun m!166619 () Bool)

(assert (=> b!170565 m!166619))

(declare-fun m!166621 () Bool)

(assert (=> b!170566 m!166621))

(assert (=> b!170567 m!166611))

(assert (=> b!170567 m!166611))

(assert (=> b!170567 m!166615))

(assert (=> b!170567 m!166615))

(assert (=> b!170567 m!166617))

(declare-fun m!166623 () Bool)

(assert (=> b!170567 m!166623))

(assert (=> b!169979 d!42643))

(declare-fun d!42645 () Bool)

(declare-fun lt!53895 () Bool)

(declare-fun e!103268 () Bool)

(assert (=> d!42645 (= lt!53895 e!103268)))

(declare-fun res!77125 () Bool)

(assert (=> d!42645 (=> (not res!77125) (not e!103268))))

(assert (=> d!42645 (= res!77125 (= (list!1056 (_1!1615 (lex!205 thiss!17480 rules!1920 (print!136 thiss!17480 (singletonSeq!71 (h!8299 tokens!465)))))) (list!1056 (singletonSeq!71 (h!8299 tokens!465)))))))

(declare-fun e!103267 () Bool)

(assert (=> d!42645 (= lt!53895 e!103267)))

(declare-fun res!77126 () Bool)

(assert (=> d!42645 (=> (not res!77126) (not e!103267))))

(declare-fun lt!53894 () tuple2!2798)

(assert (=> d!42645 (= res!77126 (= (size!2406 (_1!1615 lt!53894)) 1))))

(assert (=> d!42645 (= lt!53894 (lex!205 thiss!17480 rules!1920 (print!136 thiss!17480 (singletonSeq!71 (h!8299 tokens!465)))))))

(assert (=> d!42645 (not (isEmpty!1226 rules!1920))))

(assert (=> d!42645 (= (rulesProduceIndividualToken!154 thiss!17480 rules!1920 (h!8299 tokens!465)) lt!53895)))

(declare-fun b!170568 () Bool)

(declare-fun res!77124 () Bool)

(assert (=> b!170568 (=> (not res!77124) (not e!103267))))

(assert (=> b!170568 (= res!77124 (= (apply!415 (_1!1615 lt!53894) 0) (h!8299 tokens!465)))))

(declare-fun b!170569 () Bool)

(assert (=> b!170569 (= e!103267 (isEmpty!1237 (_2!1615 lt!53894)))))

(declare-fun b!170570 () Bool)

(assert (=> b!170570 (= e!103268 (isEmpty!1237 (_2!1615 (lex!205 thiss!17480 rules!1920 (print!136 thiss!17480 (singletonSeq!71 (h!8299 tokens!465)))))))))

(assert (= (and d!42645 res!77126) b!170568))

(assert (= (and b!170568 res!77124) b!170569))

(assert (= (and d!42645 res!77125) b!170570))

(declare-fun m!166625 () Bool)

(assert (=> d!42645 m!166625))

(declare-fun m!166627 () Bool)

(assert (=> d!42645 m!166627))

(assert (=> d!42645 m!165705))

(declare-fun m!166629 () Bool)

(assert (=> d!42645 m!166629))

(assert (=> d!42645 m!165705))

(declare-fun m!166631 () Bool)

(assert (=> d!42645 m!166631))

(assert (=> d!42645 m!166631))

(declare-fun m!166633 () Bool)

(assert (=> d!42645 m!166633))

(assert (=> d!42645 m!165647))

(assert (=> d!42645 m!165705))

(declare-fun m!166635 () Bool)

(assert (=> b!170568 m!166635))

(declare-fun m!166637 () Bool)

(assert (=> b!170569 m!166637))

(assert (=> b!170570 m!165705))

(assert (=> b!170570 m!165705))

(assert (=> b!170570 m!166631))

(assert (=> b!170570 m!166631))

(assert (=> b!170570 m!166633))

(declare-fun m!166639 () Bool)

(assert (=> b!170570 m!166639))

(assert (=> b!169958 d!42645))

(declare-fun d!42647 () Bool)

(declare-fun res!77131 () Bool)

(declare-fun e!103271 () Bool)

(assert (=> d!42647 (=> (not res!77131) (not e!103271))))

(declare-fun isEmpty!1238 (List!2910) Bool)

(assert (=> d!42647 (= res!77131 (not (isEmpty!1238 (originalCharacters!562 (h!8299 tokens!465)))))))

(assert (=> d!42647 (= (inv!3725 (h!8299 tokens!465)) e!103271)))

(declare-fun b!170575 () Bool)

(declare-fun res!77132 () Bool)

(assert (=> b!170575 (=> (not res!77132) (not e!103271))))

(assert (=> b!170575 (= res!77132 (= (originalCharacters!562 (h!8299 tokens!465)) (list!1053 (dynLambda!1097 (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))) (value!19107 (h!8299 tokens!465))))))))

(declare-fun b!170576 () Bool)

(assert (=> b!170576 (= e!103271 (= (size!2401 (h!8299 tokens!465)) (size!2407 (originalCharacters!562 (h!8299 tokens!465)))))))

(assert (= (and d!42647 res!77131) b!170575))

(assert (= (and b!170575 res!77132) b!170576))

(declare-fun b_lambda!3841 () Bool)

(assert (=> (not b_lambda!3841) (not b!170575)))

(assert (=> b!170575 t!27076))

(declare-fun b_and!11177 () Bool)

(assert (= b_and!11157 (and (=> t!27076 result!9366) b_and!11177)))

(assert (=> b!170575 t!27078))

(declare-fun b_and!11179 () Bool)

(assert (= b_and!11159 (and (=> t!27078 result!9368) b_and!11179)))

(assert (=> b!170575 t!27080))

(declare-fun b_and!11181 () Bool)

(assert (= b_and!11161 (and (=> t!27080 result!9370) b_and!11181)))

(declare-fun m!166641 () Bool)

(assert (=> d!42647 m!166641))

(assert (=> b!170575 m!166249))

(assert (=> b!170575 m!166249))

(declare-fun m!166643 () Bool)

(assert (=> b!170575 m!166643))

(declare-fun m!166645 () Bool)

(assert (=> b!170576 m!166645))

(assert (=> b!169959 d!42647))

(declare-fun d!42649 () Bool)

(declare-fun c!33793 () Bool)

(assert (=> d!42649 (= c!33793 ((_ is IntegerValue!1623) (value!19107 separatorToken!170)))))

(declare-fun e!103273 () Bool)

(assert (=> d!42649 (= (inv!21 (value!19107 separatorToken!170)) e!103273)))

(declare-fun b!170577 () Bool)

(assert (=> b!170577 (= e!103273 (inv!16 (value!19107 separatorToken!170)))))

(declare-fun b!170578 () Bool)

(declare-fun res!77133 () Bool)

(declare-fun e!103274 () Bool)

(assert (=> b!170578 (=> res!77133 e!103274)))

(assert (=> b!170578 (= res!77133 (not ((_ is IntegerValue!1625) (value!19107 separatorToken!170))))))

(declare-fun e!103272 () Bool)

(assert (=> b!170578 (= e!103272 e!103274)))

(declare-fun b!170579 () Bool)

(assert (=> b!170579 (= e!103272 (inv!17 (value!19107 separatorToken!170)))))

(declare-fun b!170580 () Bool)

(assert (=> b!170580 (= e!103273 e!103272)))

(declare-fun c!33792 () Bool)

(assert (=> b!170580 (= c!33792 ((_ is IntegerValue!1624) (value!19107 separatorToken!170)))))

(declare-fun b!170581 () Bool)

(assert (=> b!170581 (= e!103274 (inv!15 (value!19107 separatorToken!170)))))

(assert (= (and d!42649 c!33793) b!170577))

(assert (= (and d!42649 (not c!33793)) b!170580))

(assert (= (and b!170580 c!33792) b!170579))

(assert (= (and b!170580 (not c!33792)) b!170578))

(assert (= (and b!170578 (not res!77133)) b!170581))

(declare-fun m!166647 () Bool)

(assert (=> b!170577 m!166647))

(declare-fun m!166649 () Bool)

(assert (=> b!170579 m!166649))

(declare-fun m!166651 () Bool)

(assert (=> b!170581 m!166651))

(assert (=> b!169981 d!42649))

(declare-fun d!42651 () Bool)

(assert (=> d!42651 (= (inv!3722 (tag!697 (h!8298 rules!1920))) (= (mod (str.len (value!19106 (tag!697 (h!8298 rules!1920)))) 2) 0))))

(assert (=> b!169970 d!42651))

(declare-fun d!42653 () Bool)

(declare-fun res!77134 () Bool)

(declare-fun e!103275 () Bool)

(assert (=> d!42653 (=> (not res!77134) (not e!103275))))

(assert (=> d!42653 (= res!77134 (semiInverseModEq!179 (toChars!1041 (transformation!519 (h!8298 rules!1920))) (toValue!1182 (transformation!519 (h!8298 rules!1920)))))))

(assert (=> d!42653 (= (inv!3726 (transformation!519 (h!8298 rules!1920))) e!103275)))

(declare-fun b!170582 () Bool)

(assert (=> b!170582 (= e!103275 (equivClasses!162 (toChars!1041 (transformation!519 (h!8298 rules!1920))) (toValue!1182 (transformation!519 (h!8298 rules!1920)))))))

(assert (= (and d!42653 res!77134) b!170582))

(declare-fun m!166653 () Bool)

(assert (=> d!42653 m!166653))

(declare-fun m!166655 () Bool)

(assert (=> b!170582 m!166655))

(assert (=> b!169970 d!42653))

(declare-fun d!42655 () Bool)

(assert (=> d!42655 (= (inv!3722 (tag!697 (rule!1026 separatorToken!170))) (= (mod (str.len (value!19106 (tag!697 (rule!1026 separatorToken!170)))) 2) 0))))

(assert (=> b!169976 d!42655))

(declare-fun d!42657 () Bool)

(declare-fun res!77135 () Bool)

(declare-fun e!103276 () Bool)

(assert (=> d!42657 (=> (not res!77135) (not e!103276))))

(assert (=> d!42657 (= res!77135 (semiInverseModEq!179 (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))) (toValue!1182 (transformation!519 (rule!1026 separatorToken!170)))))))

(assert (=> d!42657 (= (inv!3726 (transformation!519 (rule!1026 separatorToken!170))) e!103276)))

(declare-fun b!170583 () Bool)

(assert (=> b!170583 (= e!103276 (equivClasses!162 (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))) (toValue!1182 (transformation!519 (rule!1026 separatorToken!170)))))))

(assert (= (and d!42657 res!77135) b!170583))

(declare-fun m!166657 () Bool)

(assert (=> d!42657 m!166657))

(declare-fun m!166659 () Bool)

(assert (=> b!170583 m!166659))

(assert (=> b!169976 d!42657))

(declare-fun d!42659 () Bool)

(declare-fun res!77140 () Bool)

(declare-fun e!103281 () Bool)

(assert (=> d!42659 (=> res!77140 e!103281)))

(assert (=> d!42659 (= res!77140 ((_ is Nil!2902) tokens!465))))

(assert (=> d!42659 (= (forall!565 tokens!465 lambda!4827) e!103281)))

(declare-fun b!170588 () Bool)

(declare-fun e!103282 () Bool)

(assert (=> b!170588 (= e!103281 e!103282)))

(declare-fun res!77141 () Bool)

(assert (=> b!170588 (=> (not res!77141) (not e!103282))))

(assert (=> b!170588 (= res!77141 (dynLambda!1096 lambda!4827 (h!8299 tokens!465)))))

(declare-fun b!170589 () Bool)

(assert (=> b!170589 (= e!103282 (forall!565 (t!27042 tokens!465) lambda!4827))))

(assert (= (and d!42659 (not res!77140)) b!170588))

(assert (= (and b!170588 res!77141) b!170589))

(declare-fun b_lambda!3843 () Bool)

(assert (=> (not b_lambda!3843) (not b!170588)))

(declare-fun m!166661 () Bool)

(assert (=> b!170588 m!166661))

(declare-fun m!166663 () Bool)

(assert (=> b!170589 m!166663))

(assert (=> b!169966 d!42659))

(declare-fun d!42661 () Bool)

(declare-fun e!103283 () Bool)

(assert (=> d!42661 e!103283))

(declare-fun res!77142 () Bool)

(assert (=> d!42661 (=> (not res!77142) (not e!103283))))

(declare-fun lt!53896 () List!2910)

(assert (=> d!42661 (= res!77142 (= (content!399 lt!53896) ((_ map or) (content!399 lt!53541) (content!399 lt!53544))))))

(declare-fun e!103284 () List!2910)

(assert (=> d!42661 (= lt!53896 e!103284)))

(declare-fun c!33794 () Bool)

(assert (=> d!42661 (= c!33794 ((_ is Nil!2900) lt!53541))))

(assert (=> d!42661 (= (++!664 lt!53541 lt!53544) lt!53896)))

(declare-fun b!170592 () Bool)

(declare-fun res!77143 () Bool)

(assert (=> b!170592 (=> (not res!77143) (not e!103283))))

(assert (=> b!170592 (= res!77143 (= (size!2407 lt!53896) (+ (size!2407 lt!53541) (size!2407 lt!53544))))))

(declare-fun b!170590 () Bool)

(assert (=> b!170590 (= e!103284 lt!53544)))

(declare-fun b!170593 () Bool)

(assert (=> b!170593 (= e!103283 (or (not (= lt!53544 Nil!2900)) (= lt!53896 lt!53541)))))

(declare-fun b!170591 () Bool)

(assert (=> b!170591 (= e!103284 (Cons!2900 (h!8297 lt!53541) (++!664 (t!27040 lt!53541) lt!53544)))))

(assert (= (and d!42661 c!33794) b!170590))

(assert (= (and d!42661 (not c!33794)) b!170591))

(assert (= (and d!42661 res!77142) b!170592))

(assert (= (and b!170592 res!77143) b!170593))

(declare-fun m!166665 () Bool)

(assert (=> d!42661 m!166665))

(assert (=> d!42661 m!166039))

(assert (=> d!42661 m!166213))

(declare-fun m!166667 () Bool)

(assert (=> b!170592 m!166667))

(assert (=> b!170592 m!166045))

(assert (=> b!170592 m!166219))

(declare-fun m!166669 () Bool)

(assert (=> b!170591 m!166669))

(assert (=> b!169967 d!42661))

(declare-fun d!42663 () Bool)

(declare-fun res!77144 () Bool)

(declare-fun e!103285 () Bool)

(assert (=> d!42663 (=> (not res!77144) (not e!103285))))

(assert (=> d!42663 (= res!77144 (not (isEmpty!1238 (originalCharacters!562 separatorToken!170))))))

(assert (=> d!42663 (= (inv!3725 separatorToken!170) e!103285)))

(declare-fun b!170594 () Bool)

(declare-fun res!77145 () Bool)

(assert (=> b!170594 (=> (not res!77145) (not e!103285))))

(assert (=> b!170594 (= res!77145 (= (originalCharacters!562 separatorToken!170) (list!1053 (dynLambda!1097 (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))) (value!19107 separatorToken!170)))))))

(declare-fun b!170595 () Bool)

(assert (=> b!170595 (= e!103285 (= (size!2401 separatorToken!170) (size!2407 (originalCharacters!562 separatorToken!170))))))

(assert (= (and d!42663 res!77144) b!170594))

(assert (= (and b!170594 res!77145) b!170595))

(declare-fun b_lambda!3845 () Bool)

(assert (=> (not b_lambda!3845) (not b!170594)))

(assert (=> b!170594 t!27070))

(declare-fun b_and!11183 () Bool)

(assert (= b_and!11177 (and (=> t!27070 result!9358) b_and!11183)))

(assert (=> b!170594 t!27072))

(declare-fun b_and!11185 () Bool)

(assert (= b_and!11179 (and (=> t!27072 result!9362) b_and!11185)))

(assert (=> b!170594 t!27074))

(declare-fun b_and!11187 () Bool)

(assert (= b_and!11181 (and (=> t!27074 result!9364) b_and!11187)))

(declare-fun m!166671 () Bool)

(assert (=> d!42663 m!166671))

(assert (=> b!170594 m!166229))

(assert (=> b!170594 m!166229))

(declare-fun m!166673 () Bool)

(assert (=> b!170594 m!166673))

(declare-fun m!166675 () Bool)

(assert (=> b!170595 m!166675))

(assert (=> start!18334 d!42663))

(declare-fun d!42665 () Bool)

(assert (=> d!42665 (= (list!1053 (printWithSeparatorTokenWhenNeededRec!88 thiss!17480 rules!1920 lt!53556 separatorToken!170 0)) (list!1057 (c!33676 (printWithSeparatorTokenWhenNeededRec!88 thiss!17480 rules!1920 lt!53556 separatorToken!170 0))))))

(declare-fun bs!16565 () Bool)

(assert (= bs!16565 d!42665))

(declare-fun m!166677 () Bool)

(assert (=> bs!16565 m!166677))

(assert (=> b!169978 d!42665))

(declare-fun bs!16566 () Bool)

(declare-fun d!42667 () Bool)

(assert (= bs!16566 (and d!42667 b!170283)))

(declare-fun lambda!4866 () Int)

(assert (=> bs!16566 (not (= lambda!4866 lambda!4845))))

(declare-fun bs!16567 () Bool)

(assert (= bs!16567 (and d!42667 b!169975)))

(assert (=> bs!16567 (not (= lambda!4866 lambda!4828))))

(declare-fun bs!16568 () Bool)

(assert (= bs!16568 (and d!42667 d!42587)))

(assert (=> bs!16568 (= lambda!4866 lambda!4856)))

(declare-fun bs!16569 () Bool)

(assert (= bs!16569 (and d!42667 b!169966)))

(assert (=> bs!16569 (= lambda!4866 lambda!4827)))

(declare-fun bs!16570 () Bool)

(assert (= bs!16570 (and d!42667 d!42473)))

(assert (=> bs!16570 (not (= lambda!4866 lambda!4833))))

(declare-fun bs!16571 () Bool)

(assert (= bs!16571 (and d!42667 b!170428)))

(assert (=> bs!16571 (not (= lambda!4866 lambda!4857))))

(declare-fun bs!16572 () Bool)

(declare-fun b!170598 () Bool)

(assert (= bs!16572 (and b!170598 b!170283)))

(declare-fun lambda!4867 () Int)

(assert (=> bs!16572 (= lambda!4867 lambda!4845)))

(declare-fun bs!16573 () Bool)

(assert (= bs!16573 (and b!170598 b!169975)))

(assert (=> bs!16573 (= lambda!4867 lambda!4828)))

(declare-fun bs!16574 () Bool)

(assert (= bs!16574 (and b!170598 d!42587)))

(assert (=> bs!16574 (not (= lambda!4867 lambda!4856))))

(declare-fun bs!16575 () Bool)

(assert (= bs!16575 (and b!170598 b!169966)))

(assert (=> bs!16575 (not (= lambda!4867 lambda!4827))))

(declare-fun bs!16576 () Bool)

(assert (= bs!16576 (and b!170598 d!42473)))

(assert (=> bs!16576 (= lambda!4867 lambda!4833)))

(declare-fun bs!16577 () Bool)

(assert (= bs!16577 (and b!170598 b!170428)))

(assert (=> bs!16577 (= lambda!4867 lambda!4857)))

(declare-fun bs!16578 () Bool)

(assert (= bs!16578 (and b!170598 d!42667)))

(assert (=> bs!16578 (not (= lambda!4867 lambda!4866))))

(declare-fun b!170607 () Bool)

(declare-fun e!103294 () Bool)

(assert (=> b!170607 (= e!103294 true)))

(declare-fun b!170606 () Bool)

(declare-fun e!103293 () Bool)

(assert (=> b!170606 (= e!103293 e!103294)))

(declare-fun b!170605 () Bool)

(declare-fun e!103292 () Bool)

(assert (=> b!170605 (= e!103292 e!103293)))

(assert (=> b!170598 e!103292))

(assert (= b!170606 b!170607))

(assert (= b!170605 b!170606))

(assert (= (and b!170598 ((_ is Cons!2901) rules!1920)) b!170605))

(assert (=> b!170607 (< (dynLambda!1091 order!1573 (toValue!1182 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4867))))

(assert (=> b!170607 (< (dynLambda!1093 order!1577 (toChars!1041 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4867))))

(assert (=> b!170598 true))

(declare-fun bm!7440 () Bool)

(declare-fun call!7449 () Token!782)

(declare-fun call!7446 () Token!782)

(assert (=> bm!7440 (= call!7449 call!7446)))

(declare-fun c!33797 () Bool)

(declare-fun lt!53906 () BalanceConc!1728)

(declare-fun bm!7441 () Bool)

(declare-fun call!7447 () BalanceConc!1728)

(declare-fun call!7445 () BalanceConc!1728)

(declare-fun call!7448 () BalanceConc!1728)

(assert (=> bm!7441 (= call!7445 (++!666 call!7448 (ite c!33797 lt!53906 call!7447)))))

(declare-fun bm!7442 () Bool)

(assert (=> bm!7442 (= call!7446 (apply!415 lt!53556 0))))

(declare-fun b!170596 () Bool)

(declare-fun e!103287 () BalanceConc!1728)

(assert (=> b!170596 (= e!103287 call!7445)))

(declare-fun e!103290 () BalanceConc!1728)

(assert (=> b!170598 (= e!103290 e!103287)))

(declare-fun lt!53897 () List!2912)

(assert (=> b!170598 (= lt!53897 (list!1056 lt!53556))))

(declare-fun lt!53910 () Unit!2520)

(assert (=> b!170598 (= lt!53910 (lemmaDropApply!128 lt!53897 0))))

(assert (=> b!170598 (= (head!602 (drop!141 lt!53897 0)) (apply!416 lt!53897 0))))

(declare-fun lt!53899 () Unit!2520)

(assert (=> b!170598 (= lt!53899 lt!53910)))

(declare-fun lt!53905 () List!2912)

(assert (=> b!170598 (= lt!53905 (list!1056 lt!53556))))

(declare-fun lt!53909 () Unit!2520)

(assert (=> b!170598 (= lt!53909 (lemmaDropTail!120 lt!53905 0))))

(assert (=> b!170598 (= (tail!342 (drop!141 lt!53905 0)) (drop!141 lt!53905 (+ 0 1)))))

(declare-fun lt!53904 () Unit!2520)

(assert (=> b!170598 (= lt!53904 lt!53909)))

(declare-fun lt!53903 () Unit!2520)

(assert (=> b!170598 (= lt!53903 (forallContained!86 (list!1056 lt!53556) lambda!4867 (apply!415 lt!53556 0)))))

(assert (=> b!170598 (= lt!53906 (printWithSeparatorTokenWhenNeededRec!88 thiss!17480 rules!1920 lt!53556 separatorToken!170 (+ 0 1)))))

(declare-fun lt!53907 () Option!313)

(assert (=> b!170598 (= lt!53907 (maxPrefixZipperSequence!98 thiss!17480 rules!1920 (++!666 (charsOf!174 (apply!415 lt!53556 0)) lt!53906)))))

(declare-fun res!77146 () Bool)

(assert (=> b!170598 (= res!77146 ((_ is Some!312) lt!53907))))

(declare-fun e!103289 () Bool)

(assert (=> b!170598 (=> (not res!77146) (not e!103289))))

(assert (=> b!170598 (= c!33797 e!103289)))

(declare-fun b!170599 () Bool)

(declare-fun e!103288 () Bool)

(assert (=> b!170599 (= e!103288 (<= 0 (size!2406 lt!53556)))))

(declare-fun b!170600 () Bool)

(declare-fun c!33795 () Bool)

(declare-fun e!103286 () Bool)

(assert (=> b!170600 (= c!33795 e!103286)))

(declare-fun res!77147 () Bool)

(assert (=> b!170600 (=> (not res!77147) (not e!103286))))

(assert (=> b!170600 (= res!77147 ((_ is Some!312) lt!53907))))

(declare-fun e!103291 () BalanceConc!1728)

(assert (=> b!170600 (= e!103287 e!103291)))

(declare-fun b!170601 () Bool)

(assert (=> b!170601 (= e!103286 (not (= (_1!1617 (v!13749 lt!53907)) call!7446)))))

(declare-fun bm!7443 () Bool)

(assert (=> bm!7443 (= call!7447 (charsOf!174 (ite c!33795 separatorToken!170 call!7449)))))

(declare-fun b!170602 () Bool)

(assert (=> b!170602 (= e!103290 (BalanceConc!1729 Empty!860))))

(declare-fun b!170603 () Bool)

(assert (=> b!170603 (= e!103289 (= (_1!1617 (v!13749 lt!53907)) (apply!415 lt!53556 0)))))

(declare-fun b!170604 () Bool)

(assert (=> b!170604 (= e!103291 (BalanceConc!1729 Empty!860))))

(assert (=> b!170604 (= (print!136 thiss!17480 (singletonSeq!71 call!7449)) (printTailRec!99 thiss!17480 (singletonSeq!71 call!7449) 0 (BalanceConc!1729 Empty!860)))))

(declare-fun lt!53901 () Unit!2520)

(declare-fun Unit!2534 () Unit!2520)

(assert (=> b!170604 (= lt!53901 Unit!2534)))

(declare-fun lt!53908 () Unit!2520)

(assert (=> b!170604 (= lt!53908 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!36 thiss!17480 rules!1920 (list!1053 call!7447) (list!1053 lt!53906)))))

(assert (=> b!170604 false))

(declare-fun lt!53898 () Unit!2520)

(declare-fun Unit!2535 () Unit!2520)

(assert (=> b!170604 (= lt!53898 Unit!2535)))

(declare-fun bm!7444 () Bool)

(assert (=> bm!7444 (= call!7448 (charsOf!174 (ite c!33797 call!7446 call!7449)))))

(declare-fun b!170597 () Bool)

(assert (=> b!170597 (= e!103291 (++!666 call!7445 lt!53906))))

(declare-fun lt!53902 () BalanceConc!1728)

(assert (=> d!42667 (= (list!1053 lt!53902) (printWithSeparatorTokenWhenNeededList!98 thiss!17480 rules!1920 (dropList!88 lt!53556 0) separatorToken!170))))

(assert (=> d!42667 (= lt!53902 e!103290)))

(declare-fun c!33796 () Bool)

(assert (=> d!42667 (= c!33796 (>= 0 (size!2406 lt!53556)))))

(declare-fun lt!53900 () Unit!2520)

(assert (=> d!42667 (= lt!53900 (lemmaContentSubsetPreservesForall!32 (list!1056 lt!53556) (dropList!88 lt!53556 0) lambda!4866))))

(assert (=> d!42667 e!103288))

(declare-fun res!77148 () Bool)

(assert (=> d!42667 (=> (not res!77148) (not e!103288))))

(assert (=> d!42667 (= res!77148 (>= 0 0))))

(assert (=> d!42667 (= (printWithSeparatorTokenWhenNeededRec!88 thiss!17480 rules!1920 lt!53556 separatorToken!170 0) lt!53902)))

(assert (= (and d!42667 res!77148) b!170599))

(assert (= (and d!42667 c!33796) b!170602))

(assert (= (and d!42667 (not c!33796)) b!170598))

(assert (= (and b!170598 res!77146) b!170603))

(assert (= (and b!170598 c!33797) b!170596))

(assert (= (and b!170598 (not c!33797)) b!170600))

(assert (= (and b!170600 res!77147) b!170601))

(assert (= (and b!170600 c!33795) b!170597))

(assert (= (and b!170600 (not c!33795)) b!170604))

(assert (= (or b!170597 b!170604) bm!7440))

(assert (= (or b!170597 b!170604) bm!7443))

(assert (= (or b!170596 bm!7440 b!170601) bm!7442))

(assert (= (or b!170596 b!170597) bm!7444))

(assert (= (or b!170596 b!170597) bm!7441))

(declare-fun m!166679 () Bool)

(assert (=> b!170597 m!166679))

(declare-fun m!166681 () Bool)

(assert (=> b!170604 m!166681))

(declare-fun m!166683 () Bool)

(assert (=> b!170604 m!166683))

(declare-fun m!166685 () Bool)

(assert (=> b!170604 m!166685))

(declare-fun m!166687 () Bool)

(assert (=> b!170604 m!166687))

(declare-fun m!166689 () Bool)

(assert (=> b!170604 m!166689))

(assert (=> b!170604 m!166681))

(declare-fun m!166691 () Bool)

(assert (=> b!170604 m!166691))

(assert (=> b!170604 m!166685))

(assert (=> b!170604 m!166681))

(assert (=> b!170604 m!166687))

(declare-fun m!166693 () Bool)

(assert (=> bm!7443 m!166693))

(declare-fun m!166695 () Bool)

(assert (=> bm!7442 m!166695))

(declare-fun m!166697 () Bool)

(assert (=> bm!7444 m!166697))

(declare-fun m!166699 () Bool)

(assert (=> b!170599 m!166699))

(assert (=> b!170598 m!166695))

(assert (=> b!170598 m!166695))

(declare-fun m!166701 () Bool)

(assert (=> b!170598 m!166701))

(declare-fun m!166703 () Bool)

(assert (=> b!170598 m!166703))

(declare-fun m!166705 () Bool)

(assert (=> b!170598 m!166705))

(assert (=> b!170598 m!166703))

(declare-fun m!166707 () Bool)

(assert (=> b!170598 m!166707))

(declare-fun m!166709 () Bool)

(assert (=> b!170598 m!166709))

(declare-fun m!166711 () Bool)

(assert (=> b!170598 m!166711))

(declare-fun m!166713 () Bool)

(assert (=> b!170598 m!166713))

(declare-fun m!166715 () Bool)

(assert (=> b!170598 m!166715))

(assert (=> b!170598 m!166709))

(declare-fun m!166717 () Bool)

(assert (=> b!170598 m!166717))

(assert (=> b!170598 m!166701))

(assert (=> b!170598 m!166713))

(declare-fun m!166719 () Bool)

(assert (=> b!170598 m!166719))

(declare-fun m!166721 () Bool)

(assert (=> b!170598 m!166721))

(assert (=> b!170598 m!165905))

(declare-fun m!166723 () Bool)

(assert (=> b!170598 m!166723))

(assert (=> b!170598 m!165905))

(assert (=> b!170598 m!166695))

(declare-fun m!166725 () Bool)

(assert (=> b!170598 m!166725))

(assert (=> b!170603 m!166695))

(declare-fun m!166727 () Bool)

(assert (=> d!42667 m!166727))

(declare-fun m!166729 () Bool)

(assert (=> d!42667 m!166729))

(assert (=> d!42667 m!166727))

(declare-fun m!166731 () Bool)

(assert (=> d!42667 m!166731))

(assert (=> d!42667 m!166699))

(assert (=> d!42667 m!165905))

(assert (=> d!42667 m!165905))

(assert (=> d!42667 m!166727))

(declare-fun m!166733 () Bool)

(assert (=> d!42667 m!166733))

(declare-fun m!166735 () Bool)

(assert (=> bm!7441 m!166735))

(assert (=> b!169978 d!42667))

(declare-fun bs!16579 () Bool)

(declare-fun b!170610 () Bool)

(assert (= bs!16579 (and b!170610 b!170598)))

(declare-fun lambda!4868 () Int)

(assert (=> bs!16579 (= lambda!4868 lambda!4867)))

(declare-fun bs!16580 () Bool)

(assert (= bs!16580 (and b!170610 b!170283)))

(assert (=> bs!16580 (= lambda!4868 lambda!4845)))

(declare-fun bs!16581 () Bool)

(assert (= bs!16581 (and b!170610 b!169975)))

(assert (=> bs!16581 (= lambda!4868 lambda!4828)))

(declare-fun bs!16582 () Bool)

(assert (= bs!16582 (and b!170610 d!42587)))

(assert (=> bs!16582 (not (= lambda!4868 lambda!4856))))

(declare-fun bs!16583 () Bool)

(assert (= bs!16583 (and b!170610 b!169966)))

(assert (=> bs!16583 (not (= lambda!4868 lambda!4827))))

(declare-fun bs!16584 () Bool)

(assert (= bs!16584 (and b!170610 d!42473)))

(assert (=> bs!16584 (= lambda!4868 lambda!4833)))

(declare-fun bs!16585 () Bool)

(assert (= bs!16585 (and b!170610 b!170428)))

(assert (=> bs!16585 (= lambda!4868 lambda!4857)))

(declare-fun bs!16586 () Bool)

(assert (= bs!16586 (and b!170610 d!42667)))

(assert (=> bs!16586 (not (= lambda!4868 lambda!4866))))

(declare-fun b!170620 () Bool)

(declare-fun e!103302 () Bool)

(assert (=> b!170620 (= e!103302 true)))

(declare-fun b!170619 () Bool)

(declare-fun e!103301 () Bool)

(assert (=> b!170619 (= e!103301 e!103302)))

(declare-fun b!170618 () Bool)

(declare-fun e!103300 () Bool)

(assert (=> b!170618 (= e!103300 e!103301)))

(assert (=> b!170610 e!103300))

(assert (= b!170619 b!170620))

(assert (= b!170618 b!170619))

(assert (= (and b!170610 ((_ is Cons!2901) rules!1920)) b!170618))

(assert (=> b!170620 (< (dynLambda!1091 order!1573 (toValue!1182 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4868))))

(assert (=> b!170620 (< (dynLambda!1093 order!1577 (toChars!1041 (transformation!519 (h!8298 rules!1920)))) (dynLambda!1092 order!1575 lambda!4868))))

(assert (=> b!170610 true))

(declare-fun b!170608 () Bool)

(declare-fun e!103296 () BalanceConc!1728)

(declare-fun call!7454 () BalanceConc!1728)

(assert (=> b!170608 (= e!103296 call!7454)))

(declare-fun bm!7445 () Bool)

(declare-fun call!7453 () BalanceConc!1728)

(assert (=> bm!7445 (= call!7454 call!7453)))

(declare-fun b!170609 () Bool)

(declare-fun c!33801 () Bool)

(declare-fun lt!53915 () Option!312)

(assert (=> b!170609 (= c!33801 (and ((_ is Some!311) lt!53915) (not (= (_1!1616 (v!13748 lt!53915)) (h!8299 tokens!465)))))))

(declare-fun e!103299 () List!2910)

(declare-fun e!103297 () List!2910)

(assert (=> b!170609 (= e!103299 e!103297)))

(declare-fun bm!7446 () Bool)

(declare-fun c!33800 () Bool)

(declare-fun c!33802 () Bool)

(assert (=> bm!7446 (= c!33800 c!33802)))

(declare-fun e!103295 () List!2910)

(declare-fun lt!53913 () List!2910)

(declare-fun call!7452 () List!2910)

(declare-fun call!7450 () List!2910)

(assert (=> bm!7446 (= call!7452 (++!664 e!103295 (ite c!33802 lt!53913 call!7450)))))

(declare-fun e!103298 () List!2910)

(assert (=> b!170610 (= e!103298 e!103299)))

(declare-fun lt!53916 () Unit!2520)

(assert (=> b!170610 (= lt!53916 (forallContained!86 tokens!465 lambda!4868 (h!8299 tokens!465)))))

(assert (=> b!170610 (= lt!53913 (printWithSeparatorTokenWhenNeededList!98 thiss!17480 rules!1920 (t!27042 tokens!465) separatorToken!170))))

(assert (=> b!170610 (= lt!53915 (maxPrefix!135 thiss!17480 rules!1920 (++!664 (list!1053 (charsOf!174 (h!8299 tokens!465))) lt!53913)))))

(assert (=> b!170610 (= c!33802 (and ((_ is Some!311) lt!53915) (= (_1!1616 (v!13748 lt!53915)) (h!8299 tokens!465))))))

(declare-fun d!42669 () Bool)

(declare-fun c!33798 () Bool)

(assert (=> d!42669 (= c!33798 ((_ is Cons!2902) tokens!465))))

(assert (=> d!42669 (= (printWithSeparatorTokenWhenNeededList!98 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!103298)))

(declare-fun b!170611 () Bool)

(assert (=> b!170611 (= e!103297 Nil!2900)))

(assert (=> b!170611 (= (print!136 thiss!17480 (singletonSeq!71 (h!8299 tokens!465))) (printTailRec!99 thiss!17480 (singletonSeq!71 (h!8299 tokens!465)) 0 (BalanceConc!1729 Empty!860)))))

(declare-fun lt!53912 () Unit!2520)

(declare-fun Unit!2536 () Unit!2520)

(assert (=> b!170611 (= lt!53912 Unit!2536)))

(declare-fun lt!53911 () Unit!2520)

(assert (=> b!170611 (= lt!53911 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!36 thiss!17480 rules!1920 call!7450 lt!53913))))

(assert (=> b!170611 false))

(declare-fun lt!53914 () Unit!2520)

(declare-fun Unit!2537 () Unit!2520)

(assert (=> b!170611 (= lt!53914 Unit!2537)))

(declare-fun bm!7447 () Bool)

(declare-fun call!7451 () List!2910)

(assert (=> bm!7447 (= call!7450 call!7451)))

(declare-fun c!33799 () Bool)

(assert (=> bm!7447 (= c!33799 c!33801)))

(declare-fun b!170612 () Bool)

(assert (=> b!170612 (= e!103296 (charsOf!174 separatorToken!170))))

(declare-fun b!170613 () Bool)

(assert (=> b!170613 (= e!103297 (++!664 call!7452 lt!53913))))

(declare-fun b!170614 () Bool)

(assert (=> b!170614 (= e!103298 Nil!2900)))

(declare-fun bm!7448 () Bool)

(assert (=> bm!7448 (= call!7453 (charsOf!174 (h!8299 tokens!465)))))

(declare-fun b!170615 () Bool)

(assert (=> b!170615 (= e!103295 call!7451)))

(declare-fun b!170616 () Bool)

(assert (=> b!170616 (= e!103295 (list!1053 call!7454))))

(declare-fun b!170617 () Bool)

(assert (=> b!170617 (= e!103299 call!7452)))

(declare-fun bm!7449 () Bool)

(assert (=> bm!7449 (= call!7451 (list!1053 (ite c!33802 call!7453 e!103296)))))

(assert (= (and d!42669 c!33798) b!170610))

(assert (= (and d!42669 (not c!33798)) b!170614))

(assert (= (and b!170610 c!33802) b!170617))

(assert (= (and b!170610 (not c!33802)) b!170609))

(assert (= (and b!170609 c!33801) b!170613))

(assert (= (and b!170609 (not c!33801)) b!170611))

(assert (= (or b!170613 b!170611) bm!7445))

(assert (= (or b!170613 b!170611) bm!7447))

(assert (= (and bm!7447 c!33799) b!170612))

(assert (= (and bm!7447 (not c!33799)) b!170608))

(assert (= (or b!170617 bm!7445) bm!7448))

(assert (= (or b!170617 bm!7447) bm!7449))

(assert (= (or b!170617 b!170613) bm!7446))

(assert (= (and bm!7446 c!33800) b!170615))

(assert (= (and bm!7446 (not c!33800)) b!170616))

(declare-fun m!166737 () Bool)

(assert (=> b!170613 m!166737))

(assert (=> bm!7448 m!165689))

(declare-fun m!166739 () Bool)

(assert (=> bm!7449 m!166739))

(assert (=> b!170611 m!165705))

(assert (=> b!170611 m!165705))

(assert (=> b!170611 m!166631))

(assert (=> b!170611 m!165705))

(declare-fun m!166741 () Bool)

(assert (=> b!170611 m!166741))

(declare-fun m!166743 () Bool)

(assert (=> b!170611 m!166743))

(declare-fun m!166745 () Bool)

(assert (=> bm!7446 m!166745))

(declare-fun m!166747 () Bool)

(assert (=> b!170610 m!166747))

(assert (=> b!170610 m!165677))

(assert (=> b!170610 m!165689))

(assert (=> b!170610 m!165691))

(assert (=> b!170610 m!165689))

(assert (=> b!170610 m!165691))

(declare-fun m!166749 () Bool)

(assert (=> b!170610 m!166749))

(assert (=> b!170610 m!166749))

(declare-fun m!166751 () Bool)

(assert (=> b!170610 m!166751))

(assert (=> b!170612 m!165681))

(declare-fun m!166753 () Bool)

(assert (=> b!170616 m!166753))

(assert (=> b!169978 d!42669))

(declare-fun b!170625 () Bool)

(declare-fun e!103305 () Bool)

(declare-fun tp_is_empty!1655 () Bool)

(declare-fun tp!84164 () Bool)

(assert (=> b!170625 (= e!103305 (and tp_is_empty!1655 tp!84164))))

(assert (=> b!169984 (= tp!84092 e!103305)))

(assert (= (and b!169984 ((_ is Cons!2900) (originalCharacters!562 (h!8299 tokens!465)))) b!170625))

(declare-fun b!170628 () Bool)

(declare-fun e!103308 () Bool)

(assert (=> b!170628 (= e!103308 true)))

(declare-fun b!170627 () Bool)

(declare-fun e!103307 () Bool)

(assert (=> b!170627 (= e!103307 e!103308)))

(declare-fun b!170626 () Bool)

(declare-fun e!103306 () Bool)

(assert (=> b!170626 (= e!103306 e!103307)))

(assert (=> b!169994 e!103306))

(assert (= b!170627 b!170628))

(assert (= b!170626 b!170627))

(assert (= (and b!169994 ((_ is Cons!2901) (t!27041 rules!1920))) b!170626))

(assert (=> b!170628 (< (dynLambda!1091 order!1573 (toValue!1182 (transformation!519 (h!8298 (t!27041 rules!1920))))) (dynLambda!1092 order!1575 lambda!4828))))

(assert (=> b!170628 (< (dynLambda!1093 order!1577 (toChars!1041 (transformation!519 (h!8298 (t!27041 rules!1920))))) (dynLambda!1092 order!1575 lambda!4828))))

(declare-fun b!170641 () Bool)

(declare-fun e!103311 () Bool)

(declare-fun tp!84177 () Bool)

(assert (=> b!170641 (= e!103311 tp!84177)))

(declare-fun b!170642 () Bool)

(declare-fun tp!84176 () Bool)

(declare-fun tp!84175 () Bool)

(assert (=> b!170642 (= e!103311 (and tp!84176 tp!84175))))

(declare-fun b!170639 () Bool)

(assert (=> b!170639 (= e!103311 tp_is_empty!1655)))

(assert (=> b!169965 (= tp!84088 e!103311)))

(declare-fun b!170640 () Bool)

(declare-fun tp!84179 () Bool)

(declare-fun tp!84178 () Bool)

(assert (=> b!170640 (= e!103311 (and tp!84179 tp!84178))))

(assert (= (and b!169965 ((_ is ElementMatch!743) (regex!519 (rule!1026 (h!8299 tokens!465))))) b!170639))

(assert (= (and b!169965 ((_ is Concat!1285) (regex!519 (rule!1026 (h!8299 tokens!465))))) b!170640))

(assert (= (and b!169965 ((_ is Star!743) (regex!519 (rule!1026 (h!8299 tokens!465))))) b!170641))

(assert (= (and b!169965 ((_ is Union!743) (regex!519 (rule!1026 (h!8299 tokens!465))))) b!170642))

(declare-fun b!170656 () Bool)

(declare-fun b_free!6565 () Bool)

(declare-fun b_next!6565 () Bool)

(assert (=> b!170656 (= b_free!6565 (not b_next!6565))))

(declare-fun tp!84194 () Bool)

(declare-fun b_and!11189 () Bool)

(assert (=> b!170656 (= tp!84194 b_and!11189)))

(declare-fun b_free!6567 () Bool)

(declare-fun b_next!6567 () Bool)

(assert (=> b!170656 (= b_free!6567 (not b_next!6567))))

(declare-fun tb!6693 () Bool)

(declare-fun t!27101 () Bool)

(assert (=> (and b!170656 (= (toChars!1041 (transformation!519 (rule!1026 (h!8299 (t!27042 tokens!465))))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170)))) t!27101) tb!6693))

(declare-fun result!9394 () Bool)

(assert (= result!9394 result!9358))

(assert (=> d!42577 t!27101))

(declare-fun t!27103 () Bool)

(declare-fun tb!6695 () Bool)

(assert (=> (and b!170656 (= (toChars!1041 (transformation!519 (rule!1026 (h!8299 (t!27042 tokens!465))))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465))))) t!27103) tb!6695))

(declare-fun result!9396 () Bool)

(assert (= result!9396 result!9366))

(assert (=> d!42583 t!27103))

(assert (=> b!170575 t!27103))

(assert (=> b!170594 t!27101))

(declare-fun b_and!11191 () Bool)

(declare-fun tp!84193 () Bool)

(assert (=> b!170656 (= tp!84193 (and (=> t!27101 result!9394) (=> t!27103 result!9396) b_and!11191))))

(declare-fun e!103327 () Bool)

(declare-fun e!103326 () Bool)

(declare-fun tp!84192 () Bool)

(declare-fun b!170655 () Bool)

(assert (=> b!170655 (= e!103326 (and tp!84192 (inv!3722 (tag!697 (rule!1026 (h!8299 (t!27042 tokens!465))))) (inv!3726 (transformation!519 (rule!1026 (h!8299 (t!27042 tokens!465))))) e!103327))))

(declare-fun b!170653 () Bool)

(declare-fun e!103324 () Bool)

(declare-fun tp!84190 () Bool)

(declare-fun e!103325 () Bool)

(assert (=> b!170653 (= e!103325 (and (inv!3725 (h!8299 (t!27042 tokens!465))) e!103324 tp!84190))))

(assert (=> b!170656 (= e!103327 (and tp!84194 tp!84193))))

(declare-fun b!170654 () Bool)

(declare-fun tp!84191 () Bool)

(assert (=> b!170654 (= e!103324 (and (inv!21 (value!19107 (h!8299 (t!27042 tokens!465)))) e!103326 tp!84191))))

(assert (=> b!169959 (= tp!84089 e!103325)))

(assert (= b!170655 b!170656))

(assert (= b!170654 b!170655))

(assert (= b!170653 b!170654))

(assert (= (and b!169959 ((_ is Cons!2902) (t!27042 tokens!465))) b!170653))

(declare-fun m!166755 () Bool)

(assert (=> b!170655 m!166755))

(declare-fun m!166757 () Bool)

(assert (=> b!170655 m!166757))

(declare-fun m!166759 () Bool)

(assert (=> b!170653 m!166759))

(declare-fun m!166761 () Bool)

(assert (=> b!170654 m!166761))

(declare-fun b!170667 () Bool)

(declare-fun b_free!6569 () Bool)

(declare-fun b_next!6569 () Bool)

(assert (=> b!170667 (= b_free!6569 (not b_next!6569))))

(declare-fun tp!84204 () Bool)

(declare-fun b_and!11193 () Bool)

(assert (=> b!170667 (= tp!84204 b_and!11193)))

(declare-fun b_free!6571 () Bool)

(declare-fun b_next!6571 () Bool)

(assert (=> b!170667 (= b_free!6571 (not b_next!6571))))

(declare-fun tb!6697 () Bool)

(declare-fun t!27105 () Bool)

(assert (=> (and b!170667 (= (toChars!1041 (transformation!519 (h!8298 (t!27041 rules!1920)))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170)))) t!27105) tb!6697))

(declare-fun result!9400 () Bool)

(assert (= result!9400 result!9358))

(assert (=> d!42577 t!27105))

(declare-fun tb!6699 () Bool)

(declare-fun t!27107 () Bool)

(assert (=> (and b!170667 (= (toChars!1041 (transformation!519 (h!8298 (t!27041 rules!1920)))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465))))) t!27107) tb!6699))

(declare-fun result!9402 () Bool)

(assert (= result!9402 result!9366))

(assert (=> d!42583 t!27107))

(assert (=> b!170575 t!27107))

(assert (=> b!170594 t!27105))

(declare-fun b_and!11195 () Bool)

(declare-fun tp!84205 () Bool)

(assert (=> b!170667 (= tp!84205 (and (=> t!27105 result!9400) (=> t!27107 result!9402) b_and!11195))))

(declare-fun e!103340 () Bool)

(assert (=> b!170667 (= e!103340 (and tp!84204 tp!84205))))

(declare-fun e!103341 () Bool)

(declare-fun tp!84206 () Bool)

(declare-fun b!170666 () Bool)

(assert (=> b!170666 (= e!103341 (and tp!84206 (inv!3722 (tag!697 (h!8298 (t!27041 rules!1920)))) (inv!3726 (transformation!519 (h!8298 (t!27041 rules!1920)))) e!103340))))

(declare-fun b!170665 () Bool)

(declare-fun e!103339 () Bool)

(declare-fun tp!84203 () Bool)

(assert (=> b!170665 (= e!103339 (and e!103341 tp!84203))))

(assert (=> b!169980 (= tp!84091 e!103339)))

(assert (= b!170666 b!170667))

(assert (= b!170665 b!170666))

(assert (= (and b!169980 ((_ is Cons!2901) (t!27041 rules!1920))) b!170665))

(declare-fun m!166763 () Bool)

(assert (=> b!170666 m!166763))

(declare-fun m!166765 () Bool)

(assert (=> b!170666 m!166765))

(declare-fun b!170668 () Bool)

(declare-fun e!103342 () Bool)

(declare-fun tp!84207 () Bool)

(assert (=> b!170668 (= e!103342 (and tp_is_empty!1655 tp!84207))))

(assert (=> b!169981 (= tp!84094 e!103342)))

(assert (= (and b!169981 ((_ is Cons!2900) (originalCharacters!562 separatorToken!170))) b!170668))

(declare-fun b!170671 () Bool)

(declare-fun e!103343 () Bool)

(declare-fun tp!84210 () Bool)

(assert (=> b!170671 (= e!103343 tp!84210)))

(declare-fun b!170672 () Bool)

(declare-fun tp!84209 () Bool)

(declare-fun tp!84208 () Bool)

(assert (=> b!170672 (= e!103343 (and tp!84209 tp!84208))))

(declare-fun b!170669 () Bool)

(assert (=> b!170669 (= e!103343 tp_is_empty!1655)))

(assert (=> b!169970 (= tp!84093 e!103343)))

(declare-fun b!170670 () Bool)

(declare-fun tp!84212 () Bool)

(declare-fun tp!84211 () Bool)

(assert (=> b!170670 (= e!103343 (and tp!84212 tp!84211))))

(assert (= (and b!169970 ((_ is ElementMatch!743) (regex!519 (h!8298 rules!1920)))) b!170669))

(assert (= (and b!169970 ((_ is Concat!1285) (regex!519 (h!8298 rules!1920)))) b!170670))

(assert (= (and b!169970 ((_ is Star!743) (regex!519 (h!8298 rules!1920)))) b!170671))

(assert (= (and b!169970 ((_ is Union!743) (regex!519 (h!8298 rules!1920)))) b!170672))

(declare-fun b!170675 () Bool)

(declare-fun e!103344 () Bool)

(declare-fun tp!84215 () Bool)

(assert (=> b!170675 (= e!103344 tp!84215)))

(declare-fun b!170676 () Bool)

(declare-fun tp!84214 () Bool)

(declare-fun tp!84213 () Bool)

(assert (=> b!170676 (= e!103344 (and tp!84214 tp!84213))))

(declare-fun b!170673 () Bool)

(assert (=> b!170673 (= e!103344 tp_is_empty!1655)))

(assert (=> b!169976 (= tp!84096 e!103344)))

(declare-fun b!170674 () Bool)

(declare-fun tp!84217 () Bool)

(declare-fun tp!84216 () Bool)

(assert (=> b!170674 (= e!103344 (and tp!84217 tp!84216))))

(assert (= (and b!169976 ((_ is ElementMatch!743) (regex!519 (rule!1026 separatorToken!170)))) b!170673))

(assert (= (and b!169976 ((_ is Concat!1285) (regex!519 (rule!1026 separatorToken!170)))) b!170674))

(assert (= (and b!169976 ((_ is Star!743) (regex!519 (rule!1026 separatorToken!170)))) b!170675))

(assert (= (and b!169976 ((_ is Union!743) (regex!519 (rule!1026 separatorToken!170)))) b!170676))

(declare-fun b_lambda!3847 () Bool)

(assert (= b_lambda!3841 (or (and b!170656 b_free!6567 (= (toChars!1041 (transformation!519 (rule!1026 (h!8299 (t!27042 tokens!465))))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))))) (and b!170667 b_free!6571 (= (toChars!1041 (transformation!519 (h!8298 (t!27041 rules!1920)))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))))) (and b!169968 b_free!6551 (= (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))))) (and b!169957 b_free!6547 (= (toChars!1041 (transformation!519 (h!8298 rules!1920))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))))) (and b!169973 b_free!6555) b_lambda!3847)))

(declare-fun b_lambda!3849 () Bool)

(assert (= b_lambda!3843 (or b!169966 b_lambda!3849)))

(declare-fun bs!16587 () Bool)

(declare-fun d!42671 () Bool)

(assert (= bs!16587 (and d!42671 b!169966)))

(assert (=> bs!16587 (= (dynLambda!1096 lambda!4827 (h!8299 tokens!465)) (not (isSeparator!519 (rule!1026 (h!8299 tokens!465)))))))

(assert (=> b!170588 d!42671))

(declare-fun b_lambda!3851 () Bool)

(assert (= b_lambda!3821 (or (and b!170656 b_free!6567 (= (toChars!1041 (transformation!519 (rule!1026 (h!8299 (t!27042 tokens!465))))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))))) (and b!169957 b_free!6547 (= (toChars!1041 (transformation!519 (h!8298 rules!1920))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))))) (and b!170667 b_free!6571 (= (toChars!1041 (transformation!519 (h!8298 (t!27041 rules!1920)))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))))) (and b!169973 b_free!6555 (= (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))))) (and b!169968 b_free!6551) b_lambda!3851)))

(declare-fun b_lambda!3853 () Bool)

(assert (= b_lambda!3823 (or (and b!170656 b_free!6567 (= (toChars!1041 (transformation!519 (rule!1026 (h!8299 (t!27042 tokens!465))))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))))) (and b!170667 b_free!6571 (= (toChars!1041 (transformation!519 (h!8298 (t!27041 rules!1920)))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))))) (and b!169968 b_free!6551 (= (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))))) (and b!169957 b_free!6547 (= (toChars!1041 (transformation!519 (h!8298 rules!1920))) (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))))) (and b!169973 b_free!6555) b_lambda!3853)))

(declare-fun b_lambda!3855 () Bool)

(assert (= b_lambda!3845 (or (and b!170656 b_free!6567 (= (toChars!1041 (transformation!519 (rule!1026 (h!8299 (t!27042 tokens!465))))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))))) (and b!169957 b_free!6547 (= (toChars!1041 (transformation!519 (h!8298 rules!1920))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))))) (and b!170667 b_free!6571 (= (toChars!1041 (transformation!519 (h!8298 (t!27041 rules!1920)))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))))) (and b!169973 b_free!6555 (= (toChars!1041 (transformation!519 (rule!1026 (h!8299 tokens!465)))) (toChars!1041 (transformation!519 (rule!1026 separatorToken!170))))) (and b!169968 b_free!6551) b_lambda!3855)))

(declare-fun b_lambda!3857 () Bool)

(assert (= b_lambda!3815 (or b!169975 b_lambda!3857)))

(declare-fun bs!16588 () Bool)

(declare-fun d!42673 () Bool)

(assert (= bs!16588 (and d!42673 b!169975)))

(assert (=> bs!16588 (= (dynLambda!1096 lambda!4828 (h!8299 tokens!465)) (rulesProduceIndividualToken!154 thiss!17480 rules!1920 (h!8299 tokens!465)))))

(assert (=> bs!16588 m!165725))

(assert (=> d!42517 d!42673))

(check-sat (not d!42629) (not bm!7443) (not b!170613) (not b!170610) (not b_lambda!3851) (not b!170118) (not d!42661) (not d!42537) (not b!170449) (not b!170467) (not b!170618) (not d!42513) (not b!170654) (not b!170444) (not b!170592) (not b!170304) (not b!170594) (not tb!6673) (not b!170307) (not b!170200) (not d!42501) (not b!170604) (not b_lambda!3849) (not b!170676) (not b!170665) (not b!170435) (not b!170153) (not b!170548) (not b_lambda!3855) (not b!170286) (not b_next!6567) (not d!42535) (not b!170201) (not b!170591) (not b!170671) (not b!170427) (not b!170550) (not b_next!6555) (not b!170143) (not b_next!6549) (not b!170583) (not b_lambda!3847) (not b!170640) (not b!170120) tp_is_empty!1655 (not b!170211) (not b!170566) (not d!42643) (not b!170309) (not d!42647) (not bm!7442) (not b!170655) (not d!42635) b_and!11193 b_and!11191 (not b!170546) (not b!170576) (not b!170567) (not b_next!6565) (not bm!7441) (not b!170197) (not b!170545) (not b!170139) (not b_next!6551) (not d!42581) (not d!42623) (not bm!7433) (not bm!7404) (not d!42621) (not b!170099) (not b!170150) (not d!42523) (not b!170142) (not b!170291) (not bm!7405) (not b!170544) (not b!170653) (not b!170552) (not b!170626) (not b!170598) (not bm!7449) (not b!170466) (not bm!7444) (not b!170296) (not d!42533) (not b!170616) (not b!170605) (not b!170284) (not b!170579) (not bm!7448) (not d!42507) (not d!42575) (not b!170568) (not b!170454) (not b!170565) (not b!170302) (not b!170668) (not d!42515) (not b!170147) (not b!170666) (not d!42665) (not b!170611) (not b_next!6571) (not bm!7439) (not b!170212) (not b!170295) (not b!170599) b_and!11185 (not b!170603) (not b!170137) (not b!170289) (not b!170612) (not b!170589) (not b!170310) b_and!11195 (not d!42633) (not b_lambda!3853) b_and!11125 (not d!42585) (not d!42645) (not b!170547) (not d!42529) (not b_next!6553) (not b!170570) (not bm!7435) (not d!42619) (not d!42583) (not d!42473) (not d!42511) (not d!42509) (not b!170672) (not d!42579) (not b!170305) (not bs!16588) (not b!170446) (not d!42577) (not b!170575) (not tb!6679) (not b!170674) (not b_next!6545) (not b!170434) (not b_lambda!3857) (not b!170581) (not d!42517) (not b!170569) (not b!170138) (not bm!7434) (not b!170641) (not b!170285) (not d!42539) (not d!42527) (not d!42519) (not b!170625) (not b!170595) (not b!170597) (not b!170428) (not b_next!6547) (not d!42617) (not b!170670) (not b!170642) (not b!170582) (not b!170577) (not d!42587) (not b!170144) (not d!42541) b_and!11189 (not d!42653) (not b!170557) (not b!170433) b_and!11183 (not b!170116) (not b!170098) (not b!170141) (not b!170549) b_and!11121 (not d!42657) (not bm!7446) (not b_next!6569) (not bm!7360) (not bm!7436) (not d!42667) (not b!170558) (not b!170429) (not bm!7402) (not d!42615) b_and!11187 b_and!11129 (not b!170675) (not d!42663) (not b!170283) (not b!170199))
(check-sat (not b_next!6549) (not b_next!6565) (not b_next!6551) (not b_next!6571) b_and!11185 b_and!11195 (not b_next!6545) (not b_next!6547) (not b_next!6569) b_and!11187 b_and!11129 (not b_next!6555) (not b_next!6567) b_and!11193 b_and!11191 b_and!11125 (not b_next!6553) b_and!11189 b_and!11183 b_and!11121)
