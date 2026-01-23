; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58692 () Bool)

(assert start!58692)

(declare-fun b!613499 () Bool)

(declare-fun b_free!17485 () Bool)

(declare-fun b_next!17501 () Bool)

(assert (=> b!613499 (= b_free!17485 (not b_next!17501))))

(declare-fun tp!189638 () Bool)

(declare-fun b_and!60863 () Bool)

(assert (=> b!613499 (= tp!189638 b_and!60863)))

(declare-fun b_free!17487 () Bool)

(declare-fun b_next!17503 () Bool)

(assert (=> b!613499 (= b_free!17487 (not b_next!17503))))

(declare-fun tp!189639 () Bool)

(declare-fun b_and!60865 () Bool)

(assert (=> b!613499 (= tp!189639 b_and!60865)))

(declare-fun b!613525 () Bool)

(declare-fun b_free!17489 () Bool)

(declare-fun b_next!17505 () Bool)

(assert (=> b!613525 (= b_free!17489 (not b_next!17505))))

(declare-fun tp!189635 () Bool)

(declare-fun b_and!60867 () Bool)

(assert (=> b!613525 (= tp!189635 b_and!60867)))

(declare-fun b_free!17491 () Bool)

(declare-fun b_next!17507 () Bool)

(assert (=> b!613525 (= b_free!17491 (not b_next!17507))))

(declare-fun tp!189641 () Bool)

(declare-fun b_and!60869 () Bool)

(assert (=> b!613525 (= tp!189641 b_and!60869)))

(declare-fun b!613493 () Bool)

(declare-fun res!266765 () Bool)

(declare-fun e!371880 () Bool)

(assert (=> b!613493 (=> res!266765 e!371880)))

(declare-datatypes ((C!4052 0))(
  ( (C!4053 (val!2252 Int)) )
))
(declare-datatypes ((Regex!1565 0))(
  ( (ElementMatch!1565 (c!113395 C!4052)) (Concat!2820 (regOne!3642 Regex!1565) (regTwo!3642 Regex!1565)) (EmptyExpr!1565) (Star!1565 (reg!1894 Regex!1565)) (EmptyLang!1565) (Union!1565 (regOne!3643 Regex!1565) (regTwo!3643 Regex!1565)) )
))
(declare-datatypes ((String!8018 0))(
  ( (String!8019 (value!39924 String)) )
))
(declare-datatypes ((List!6143 0))(
  ( (Nil!6133) (Cons!6133 (h!11534 (_ BitVec 16)) (t!81262 List!6143)) )
))
(declare-datatypes ((TokenValue!1255 0))(
  ( (FloatLiteralValue!2510 (text!9230 List!6143)) (TokenValueExt!1254 (__x!4408 Int)) (Broken!6275 (value!39925 List!6143)) (Object!1264) (End!1255) (Def!1255) (Underscore!1255) (Match!1255) (Else!1255) (Error!1255) (Case!1255) (If!1255) (Extends!1255) (Abstract!1255) (Class!1255) (Val!1255) (DelimiterValue!2510 (del!1315 List!6143)) (KeywordValue!1261 (value!39926 List!6143)) (CommentValue!2510 (value!39927 List!6143)) (WhitespaceValue!2510 (value!39928 List!6143)) (IndentationValue!1255 (value!39929 List!6143)) (String!8020) (Int32!1255) (Broken!6276 (value!39930 List!6143)) (Boolean!1256) (Unit!11253) (OperatorValue!1258 (op!1315 List!6143)) (IdentifierValue!2510 (value!39931 List!6143)) (IdentifierValue!2511 (value!39932 List!6143)) (WhitespaceValue!2511 (value!39933 List!6143)) (True!2510) (False!2510) (Broken!6277 (value!39934 List!6143)) (Broken!6278 (value!39935 List!6143)) (True!2511) (RightBrace!1255) (RightBracket!1255) (Colon!1255) (Null!1255) (Comma!1255) (LeftBracket!1255) (False!2511) (LeftBrace!1255) (ImaginaryLiteralValue!1255 (text!9231 List!6143)) (StringLiteralValue!3765 (value!39936 List!6143)) (EOFValue!1255 (value!39937 List!6143)) (IdentValue!1255 (value!39938 List!6143)) (DelimiterValue!2511 (value!39939 List!6143)) (DedentValue!1255 (value!39940 List!6143)) (NewLineValue!1255 (value!39941 List!6143)) (IntegerValue!3765 (value!39942 (_ BitVec 32)) (text!9232 List!6143)) (IntegerValue!3766 (value!39943 Int) (text!9233 List!6143)) (Times!1255) (Or!1255) (Equal!1255) (Minus!1255) (Broken!6279 (value!39944 List!6143)) (And!1255) (Div!1255) (LessEqual!1255) (Mod!1255) (Concat!2821) (Not!1255) (Plus!1255) (SpaceValue!1255 (value!39945 List!6143)) (IntegerValue!3767 (value!39946 Int) (text!9234 List!6143)) (StringLiteralValue!3766 (text!9235 List!6143)) (FloatLiteralValue!2511 (text!9236 List!6143)) (BytesLiteralValue!1255 (value!39947 List!6143)) (CommentValue!2511 (value!39948 List!6143)) (StringLiteralValue!3767 (value!39949 List!6143)) (ErrorTokenValue!1255 (msg!1316 List!6143)) )
))
(declare-datatypes ((List!6144 0))(
  ( (Nil!6134) (Cons!6134 (h!11535 C!4052) (t!81263 List!6144)) )
))
(declare-datatypes ((IArray!3897 0))(
  ( (IArray!3898 (innerList!2006 List!6144)) )
))
(declare-datatypes ((Conc!1948 0))(
  ( (Node!1948 (left!4908 Conc!1948) (right!5238 Conc!1948) (csize!4126 Int) (cheight!2159 Int)) (Leaf!3071 (xs!4585 IArray!3897) (csize!4127 Int)) (Empty!1948) )
))
(declare-datatypes ((BalanceConc!3904 0))(
  ( (BalanceConc!3905 (c!113396 Conc!1948)) )
))
(declare-datatypes ((TokenValueInjection!2278 0))(
  ( (TokenValueInjection!2279 (toValue!2142 Int) (toChars!2001 Int)) )
))
(declare-datatypes ((Rule!2262 0))(
  ( (Rule!2263 (regex!1231 Regex!1565) (tag!1493 String!8018) (isSeparator!1231 Bool) (transformation!1231 TokenValueInjection!2278)) )
))
(declare-datatypes ((List!6145 0))(
  ( (Nil!6135) (Cons!6135 (h!11536 Rule!2262) (t!81264 List!6145)) )
))
(declare-fun rules!3103 () List!6145)

(declare-datatypes ((Token!2198 0))(
  ( (Token!2199 (value!39950 TokenValue!1255) (rule!2023 Rule!2262) (size!4823 Int) (originalCharacters!1270 List!6144)) )
))
(declare-fun token!491 () Token!2198)

(declare-fun contains!1449 (List!6145 Rule!2262) Bool)

(assert (=> b!613493 (= res!266765 (not (contains!1449 rules!3103 (rule!2023 token!491))))))

(declare-fun b!613494 () Bool)

(declare-fun res!266762 () Bool)

(declare-fun e!371876 () Bool)

(assert (=> b!613494 (=> (not res!266762) (not e!371876))))

(declare-fun size!4824 (List!6144) Int)

(assert (=> b!613494 (= res!266762 (= (size!4823 token!491) (size!4824 (originalCharacters!1270 token!491))))))

(declare-datatypes ((tuple2!6998 0))(
  ( (tuple2!6999 (_1!3763 Token!2198) (_2!3763 List!6144)) )
))
(declare-datatypes ((Option!1582 0))(
  ( (None!1581) (Some!1581 (v!16492 tuple2!6998)) )
))
(declare-fun lt!263060 () Option!1582)

(declare-fun e!371862 () Bool)

(declare-fun lt!263045 () List!6144)

(declare-fun b!613495 () Bool)

(declare-fun lt!263058 () List!6144)

(declare-fun lt!263037 () Int)

(declare-fun lt!263043 () tuple2!6998)

(declare-fun lt!263047 () TokenValue!1255)

(assert (=> b!613495 (= e!371862 (and (= (size!4823 (_1!3763 (v!16492 lt!263060))) lt!263037) (= (originalCharacters!1270 (_1!3763 (v!16492 lt!263060))) lt!263058) (= lt!263043 (tuple2!6999 (Token!2199 lt!263047 (rule!2023 (_1!3763 (v!16492 lt!263060))) lt!263037 lt!263058) lt!263045))))))

(declare-fun b!613496 () Bool)

(declare-fun e!371863 () Bool)

(declare-fun e!371886 () Bool)

(assert (=> b!613496 (= e!371863 e!371886)))

(declare-fun res!266774 () Bool)

(assert (=> b!613496 (=> (not res!266774) (not e!371886))))

(get-info :version)

(assert (=> b!613496 (= res!266774 ((_ is Some!1581) lt!263060))))

(declare-datatypes ((LexerInterface!1117 0))(
  ( (LexerInterfaceExt!1114 (__x!4409 Int)) (Lexer!1115) )
))
(declare-fun thiss!22590 () LexerInterface!1117)

(declare-fun input!2705 () List!6144)

(declare-fun maxPrefix!815 (LexerInterface!1117 List!6145 List!6144) Option!1582)

(assert (=> b!613496 (= lt!263060 (maxPrefix!815 thiss!22590 rules!3103 input!2705))))

(declare-fun b!613497 () Bool)

(declare-fun e!371870 () Bool)

(declare-fun tp_is_empty!3485 () Bool)

(declare-fun tp!189636 () Bool)

(assert (=> b!613497 (= e!371870 (and tp_is_empty!3485 tp!189636))))

(declare-fun b!613498 () Bool)

(declare-fun e!371868 () Bool)

(declare-fun e!371885 () Bool)

(assert (=> b!613498 (= e!371868 (not e!371885))))

(declare-fun res!266766 () Bool)

(assert (=> b!613498 (=> res!266766 e!371885)))

(declare-fun lt!263046 () List!6144)

(declare-fun isPrefix!859 (List!6144 List!6144) Bool)

(assert (=> b!613498 (= res!266766 (not (isPrefix!859 input!2705 lt!263046)))))

(declare-fun lt!263044 () List!6144)

(assert (=> b!613498 (isPrefix!859 lt!263044 lt!263046)))

(declare-datatypes ((Unit!11254 0))(
  ( (Unit!11255) )
))
(declare-fun lt!263042 () Unit!11254)

(declare-fun suffix!1342 () List!6144)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!704 (List!6144 List!6144) Unit!11254)

(assert (=> b!613498 (= lt!263042 (lemmaConcatTwoListThenFirstIsPrefix!704 lt!263044 suffix!1342))))

(declare-fun lt!263039 () List!6144)

(assert (=> b!613498 (isPrefix!859 input!2705 lt!263039)))

(declare-fun lt!263050 () Unit!11254)

(assert (=> b!613498 (= lt!263050 (lemmaConcatTwoListThenFirstIsPrefix!704 input!2705 suffix!1342))))

(assert (=> b!613498 e!371862))

(declare-fun res!266752 () Bool)

(assert (=> b!613498 (=> (not res!266752) (not e!371862))))

(assert (=> b!613498 (= res!266752 (= (value!39950 (_1!3763 (v!16492 lt!263060))) lt!263047))))

(declare-fun lt!263067 () BalanceConc!3904)

(declare-fun apply!1484 (TokenValueInjection!2278 BalanceConc!3904) TokenValue!1255)

(assert (=> b!613498 (= lt!263047 (apply!1484 (transformation!1231 (rule!2023 (_1!3763 (v!16492 lt!263060)))) lt!263067))))

(declare-fun seqFromList!1407 (List!6144) BalanceConc!3904)

(assert (=> b!613498 (= lt!263067 (seqFromList!1407 lt!263058))))

(declare-fun lt!263074 () Unit!11254)

(declare-fun lemmaInv!339 (TokenValueInjection!2278) Unit!11254)

(assert (=> b!613498 (= lt!263074 (lemmaInv!339 (transformation!1231 (rule!2023 token!491))))))

(declare-fun lt!263075 () Unit!11254)

(assert (=> b!613498 (= lt!263075 (lemmaInv!339 (transformation!1231 (rule!2023 (_1!3763 (v!16492 lt!263060))))))))

(declare-fun ruleValid!429 (LexerInterface!1117 Rule!2262) Bool)

(assert (=> b!613498 (ruleValid!429 thiss!22590 (rule!2023 token!491))))

(declare-fun lt!263052 () Unit!11254)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!276 (LexerInterface!1117 Rule!2262 List!6145) Unit!11254)

(assert (=> b!613498 (= lt!263052 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!276 thiss!22590 (rule!2023 token!491) rules!3103))))

(assert (=> b!613498 (ruleValid!429 thiss!22590 (rule!2023 (_1!3763 (v!16492 lt!263060))))))

(declare-fun lt!263055 () Unit!11254)

(assert (=> b!613498 (= lt!263055 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!276 thiss!22590 (rule!2023 (_1!3763 (v!16492 lt!263060))) rules!3103))))

(assert (=> b!613498 (isPrefix!859 input!2705 input!2705)))

(declare-fun lt!263068 () Unit!11254)

(declare-fun lemmaIsPrefixRefl!595 (List!6144 List!6144) Unit!11254)

(assert (=> b!613498 (= lt!263068 (lemmaIsPrefixRefl!595 input!2705 input!2705))))

(assert (=> b!613498 (= (_2!3763 (v!16492 lt!263060)) lt!263045)))

(declare-fun lt!263073 () Unit!11254)

(declare-fun lemmaSamePrefixThenSameSuffix!572 (List!6144 List!6144 List!6144 List!6144 List!6144) Unit!11254)

(assert (=> b!613498 (= lt!263073 (lemmaSamePrefixThenSameSuffix!572 lt!263058 (_2!3763 (v!16492 lt!263060)) lt!263058 lt!263045 input!2705))))

(declare-fun getSuffix!376 (List!6144 List!6144) List!6144)

(assert (=> b!613498 (= lt!263045 (getSuffix!376 input!2705 lt!263058))))

(declare-fun lt!263077 () List!6144)

(assert (=> b!613498 (isPrefix!859 lt!263058 lt!263077)))

(declare-fun ++!1719 (List!6144 List!6144) List!6144)

(assert (=> b!613498 (= lt!263077 (++!1719 lt!263058 (_2!3763 (v!16492 lt!263060))))))

(declare-fun lt!263051 () Unit!11254)

(assert (=> b!613498 (= lt!263051 (lemmaConcatTwoListThenFirstIsPrefix!704 lt!263058 (_2!3763 (v!16492 lt!263060))))))

(declare-fun lt!263069 () Unit!11254)

(declare-fun lemmaCharactersSize!290 (Token!2198) Unit!11254)

(assert (=> b!613498 (= lt!263069 (lemmaCharactersSize!290 token!491))))

(declare-fun lt!263053 () Unit!11254)

(assert (=> b!613498 (= lt!263053 (lemmaCharactersSize!290 (_1!3763 (v!16492 lt!263060))))))

(declare-fun lt!263038 () Unit!11254)

(declare-fun e!371860 () Unit!11254)

(assert (=> b!613498 (= lt!263038 e!371860)))

(declare-fun c!113393 () Bool)

(declare-fun lt!263071 () Int)

(assert (=> b!613498 (= c!113393 (> lt!263037 lt!263071))))

(assert (=> b!613498 (= lt!263071 (size!4824 lt!263044))))

(assert (=> b!613498 (= lt!263037 (size!4824 lt!263058))))

(declare-fun list!2582 (BalanceConc!3904) List!6144)

(declare-fun charsOf!860 (Token!2198) BalanceConc!3904)

(assert (=> b!613498 (= lt!263058 (list!2582 (charsOf!860 (_1!3763 (v!16492 lt!263060)))))))

(assert (=> b!613498 (= lt!263060 (Some!1581 lt!263043))))

(assert (=> b!613498 (= lt!263043 (tuple2!6999 (_1!3763 (v!16492 lt!263060)) (_2!3763 (v!16492 lt!263060))))))

(declare-fun lt!263070 () Unit!11254)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!304 (List!6144 List!6144 List!6144 List!6144) Unit!11254)

(assert (=> b!613498 (= lt!263070 (lemmaConcatSameAndSameSizesThenSameLists!304 lt!263044 suffix!1342 input!2705 suffix!1342))))

(declare-fun e!371882 () Bool)

(assert (=> b!613499 (= e!371882 (and tp!189638 tp!189639))))

(declare-fun res!266778 () Bool)

(declare-fun e!371889 () Bool)

(assert (=> start!58692 (=> (not res!266778) (not e!371889))))

(assert (=> start!58692 (= res!266778 ((_ is Lexer!1115) thiss!22590))))

(assert (=> start!58692 e!371889))

(assert (=> start!58692 e!371870))

(declare-fun e!371878 () Bool)

(assert (=> start!58692 e!371878))

(declare-fun e!371887 () Bool)

(declare-fun inv!7809 (Token!2198) Bool)

(assert (=> start!58692 (and (inv!7809 token!491) e!371887)))

(assert (=> start!58692 true))

(declare-fun e!371888 () Bool)

(assert (=> start!58692 e!371888))

(declare-fun b!613500 () Bool)

(declare-fun e!371872 () Bool)

(assert (=> b!613500 (= e!371889 e!371872)))

(declare-fun res!266775 () Bool)

(assert (=> b!613500 (=> (not res!266775) (not e!371872))))

(assert (=> b!613500 (= res!266775 (= lt!263044 input!2705))))

(assert (=> b!613500 (= lt!263044 (list!2582 (charsOf!860 token!491)))))

(declare-fun b!613501 () Bool)

(declare-fun e!371869 () Bool)

(declare-fun e!371883 () Bool)

(assert (=> b!613501 (= e!371869 e!371883)))

(declare-fun res!266758 () Bool)

(assert (=> b!613501 (=> (not res!266758) (not e!371883))))

(declare-fun isDefined!1393 (Option!1582) Bool)

(assert (=> b!613501 (= res!266758 (isDefined!1393 lt!263060))))

(declare-fun b!613502 () Bool)

(declare-fun res!266771 () Bool)

(assert (=> b!613502 (=> (not res!266771) (not e!371889))))

(declare-fun rulesInvariant!1080 (LexerInterface!1117 List!6145) Bool)

(assert (=> b!613502 (= res!266771 (rulesInvariant!1080 thiss!22590 rules!3103))))

(declare-fun b!613503 () Bool)

(declare-fun res!266763 () Bool)

(assert (=> b!613503 (=> res!266763 e!371880)))

(declare-fun isEmpty!4427 (List!6144) Bool)

(assert (=> b!613503 (= res!266763 (not (isEmpty!4427 (_2!3763 (v!16492 lt!263060)))))))

(declare-fun b!613504 () Bool)

(declare-fun e!371879 () Unit!11254)

(declare-fun Unit!11256 () Unit!11254)

(assert (=> b!613504 (= e!371879 Unit!11256)))

(declare-fun b!613505 () Bool)

(declare-fun e!371874 () Bool)

(assert (=> b!613505 (= e!371872 e!371874)))

(declare-fun res!266755 () Bool)

(assert (=> b!613505 (=> (not res!266755) (not e!371874))))

(declare-fun lt!263041 () Option!1582)

(assert (=> b!613505 (= res!266755 (isDefined!1393 lt!263041))))

(assert (=> b!613505 (= lt!263041 (maxPrefix!815 thiss!22590 rules!3103 lt!263039))))

(assert (=> b!613505 (= lt!263039 (++!1719 input!2705 suffix!1342))))

(declare-fun b!613506 () Bool)

(declare-fun res!266756 () Bool)

(assert (=> b!613506 (=> (not res!266756) (not e!371889))))

(declare-fun isEmpty!4428 (List!6145) Bool)

(assert (=> b!613506 (= res!266756 (not (isEmpty!4428 rules!3103)))))

(declare-fun b!613507 () Bool)

(declare-fun e!371859 () Bool)

(assert (=> b!613507 (= e!371880 e!371859)))

(declare-fun res!266764 () Bool)

(assert (=> b!613507 (=> res!266764 e!371859)))

(declare-fun lt!263036 () Int)

(declare-fun lt!263066 () Int)

(assert (=> b!613507 (= res!266764 (<= lt!263036 lt!263066))))

(declare-fun lt!263035 () Unit!11254)

(assert (=> b!613507 (= lt!263035 e!371879)))

(declare-fun c!113394 () Bool)

(assert (=> b!613507 (= c!113394 (< lt!263036 lt!263066))))

(declare-fun getIndex!62 (List!6145 Rule!2262) Int)

(assert (=> b!613507 (= lt!263066 (getIndex!62 rules!3103 (rule!2023 token!491)))))

(assert (=> b!613507 (= lt!263036 (getIndex!62 rules!3103 (rule!2023 (_1!3763 (v!16492 lt!263060)))))))

(declare-fun tp!189640 () Bool)

(declare-fun e!371884 () Bool)

(declare-fun b!613508 () Bool)

(declare-fun inv!21 (TokenValue!1255) Bool)

(assert (=> b!613508 (= e!371887 (and (inv!21 (value!39950 token!491)) e!371884 tp!189640))))

(declare-fun b!613509 () Bool)

(assert (=> b!613509 (= e!371874 e!371863)))

(declare-fun res!266751 () Bool)

(assert (=> b!613509 (=> (not res!266751) (not e!371863))))

(declare-fun lt!263063 () tuple2!6998)

(assert (=> b!613509 (= res!266751 (and (= (_1!3763 lt!263063) token!491) (= (_2!3763 lt!263063) suffix!1342)))))

(declare-fun get!2361 (Option!1582) tuple2!6998)

(assert (=> b!613509 (= lt!263063 (get!2361 lt!263041))))

(declare-fun b!613510 () Bool)

(declare-fun res!266753 () Bool)

(assert (=> b!613510 (=> res!266753 e!371859)))

(declare-fun matchR!668 (Regex!1565 List!6144) Bool)

(assert (=> b!613510 (= res!266753 (not (matchR!668 (regex!1231 (rule!2023 (_1!3763 (v!16492 lt!263060)))) input!2705)))))

(declare-fun b!613511 () Bool)

(declare-fun res!266772 () Bool)

(assert (=> b!613511 (=> (not res!266772) (not e!371889))))

(assert (=> b!613511 (= res!266772 (not (isEmpty!4427 input!2705)))))

(declare-fun b!613512 () Bool)

(declare-fun e!371866 () Bool)

(assert (=> b!613512 (= e!371866 false)))

(declare-fun b!613513 () Bool)

(assert (=> b!613513 (= e!371886 e!371868)))

(declare-fun res!266776 () Bool)

(assert (=> b!613513 (=> (not res!266776) (not e!371868))))

(assert (=> b!613513 (= res!266776 (= lt!263046 lt!263039))))

(assert (=> b!613513 (= lt!263046 (++!1719 lt!263044 suffix!1342))))

(declare-fun b!613514 () Bool)

(assert (=> b!613514 (= e!371885 e!371880)))

(declare-fun res!266767 () Bool)

(assert (=> b!613514 (=> res!266767 e!371880)))

(assert (=> b!613514 (= res!266767 (or (not (= lt!263037 lt!263071)) (not (= lt!263077 input!2705)) (not (= lt!263077 lt!263044))))))

(declare-fun lt!263076 () Unit!11254)

(declare-fun lt!263057 () BalanceConc!3904)

(declare-fun lemmaSemiInverse!261 (TokenValueInjection!2278 BalanceConc!3904) Unit!11254)

(assert (=> b!613514 (= lt!263076 (lemmaSemiInverse!261 (transformation!1231 (rule!2023 token!491)) lt!263057))))

(declare-fun lt!263040 () Unit!11254)

(assert (=> b!613514 (= lt!263040 (lemmaSemiInverse!261 (transformation!1231 (rule!2023 (_1!3763 (v!16492 lt!263060)))) lt!263067))))

(declare-fun lt!263064 () Unit!11254)

(declare-fun e!371881 () Unit!11254)

(assert (=> b!613514 (= lt!263064 e!371881)))

(declare-fun c!113392 () Bool)

(assert (=> b!613514 (= c!113392 (< lt!263037 lt!263071))))

(declare-fun e!371865 () Bool)

(assert (=> b!613514 e!371865))

(declare-fun res!266769 () Bool)

(assert (=> b!613514 (=> (not res!266769) (not e!371865))))

(declare-fun lt!263061 () TokenValue!1255)

(declare-fun maxPrefixOneRule!478 (LexerInterface!1117 Rule!2262 List!6144) Option!1582)

(assert (=> b!613514 (= res!266769 (= (maxPrefixOneRule!478 thiss!22590 (rule!2023 token!491) lt!263039) (Some!1581 (tuple2!6999 (Token!2199 lt!263061 (rule!2023 token!491) lt!263071 lt!263044) suffix!1342))))))

(declare-fun lt!263049 () Unit!11254)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!184 (LexerInterface!1117 List!6145 List!6144 List!6144 List!6144 Rule!2262) Unit!11254)

(assert (=> b!613514 (= lt!263049 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!184 thiss!22590 rules!3103 lt!263044 lt!263039 suffix!1342 (rule!2023 token!491)))))

(assert (=> b!613514 (= (maxPrefixOneRule!478 thiss!22590 (rule!2023 (_1!3763 (v!16492 lt!263060))) input!2705) (Some!1581 (tuple2!6999 (Token!2199 lt!263047 (rule!2023 (_1!3763 (v!16492 lt!263060))) lt!263037 lt!263058) (_2!3763 (v!16492 lt!263060)))))))

(declare-fun lt!263065 () Unit!11254)

(assert (=> b!613514 (= lt!263065 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!184 thiss!22590 rules!3103 lt!263058 input!2705 (_2!3763 (v!16492 lt!263060)) (rule!2023 (_1!3763 (v!16492 lt!263060)))))))

(assert (=> b!613514 e!371876))

(declare-fun res!266770 () Bool)

(assert (=> b!613514 (=> (not res!266770) (not e!371876))))

(assert (=> b!613514 (= res!266770 (= (value!39950 token!491) lt!263061))))

(assert (=> b!613514 (= lt!263061 (apply!1484 (transformation!1231 (rule!2023 token!491)) lt!263057))))

(assert (=> b!613514 (= lt!263057 (seqFromList!1407 lt!263044))))

(declare-fun lt!263056 () List!6144)

(assert (=> b!613514 (= suffix!1342 lt!263056)))

(declare-fun lt!263072 () Unit!11254)

(assert (=> b!613514 (= lt!263072 (lemmaSamePrefixThenSameSuffix!572 lt!263044 suffix!1342 lt!263044 lt!263056 lt!263039))))

(assert (=> b!613514 (= lt!263056 (getSuffix!376 lt!263039 lt!263044))))

(declare-fun b!613515 () Bool)

(declare-fun tp!189642 () Bool)

(assert (=> b!613515 (= e!371888 (and tp_is_empty!3485 tp!189642))))

(declare-fun b!613516 () Bool)

(assert (=> b!613516 (= e!371876 (and (= (size!4823 token!491) lt!263071) (= (originalCharacters!1270 token!491) lt!263044) (= (tuple2!6999 token!491 suffix!1342) (tuple2!6999 (Token!2199 lt!263061 (rule!2023 token!491) lt!263071 lt!263044) lt!263056))))))

(declare-fun b!613517 () Bool)

(assert (=> b!613517 (= e!371883 (= lt!263045 (_2!3763 (v!16492 lt!263060))))))

(declare-fun b!613518 () Bool)

(declare-fun Unit!11257 () Unit!11254)

(assert (=> b!613518 (= e!371879 Unit!11257)))

(declare-fun lt!263062 () Unit!11254)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!34 (LexerInterface!1117 List!6145 Rule!2262 List!6144 List!6144 Rule!2262) Unit!11254)

(assert (=> b!613518 (= lt!263062 (lemmaMaxPrefNoSmallerRuleMatches!34 thiss!22590 rules!3103 (rule!2023 token!491) input!2705 lt!263039 (rule!2023 (_1!3763 (v!16492 lt!263060)))))))

(declare-fun res!266777 () Bool)

(assert (=> b!613518 (= res!266777 (not (matchR!668 (regex!1231 (rule!2023 (_1!3763 (v!16492 lt!263060)))) input!2705)))))

(declare-fun e!371873 () Bool)

(assert (=> b!613518 (=> (not res!266777) (not e!371873))))

(assert (=> b!613518 e!371873))

(declare-fun tp!189637 () Bool)

(declare-fun b!613519 () Bool)

(declare-fun inv!7806 (String!8018) Bool)

(declare-fun inv!7810 (TokenValueInjection!2278) Bool)

(assert (=> b!613519 (= e!371884 (and tp!189637 (inv!7806 (tag!1493 (rule!2023 token!491))) (inv!7810 (transformation!1231 (rule!2023 token!491))) e!371882))))

(declare-fun b!613520 () Bool)

(declare-fun res!266761 () Bool)

(assert (=> b!613520 (=> (not res!266761) (not e!371883))))

(assert (=> b!613520 (= res!266761 (= (_1!3763 (get!2361 lt!263060)) (_1!3763 (v!16492 lt!263060))))))

(declare-fun b!613521 () Bool)

(declare-fun res!266773 () Bool)

(assert (=> b!613521 (=> (not res!266773) (not e!371862))))

(assert (=> b!613521 (= res!266773 (= (size!4823 (_1!3763 (v!16492 lt!263060))) (size!4824 (originalCharacters!1270 (_1!3763 (v!16492 lt!263060))))))))

(declare-fun b!613522 () Bool)

(declare-fun Unit!11258 () Unit!11254)

(assert (=> b!613522 (= e!371860 Unit!11258)))

(assert (=> b!613522 false))

(declare-fun b!613523 () Bool)

(declare-fun res!266754 () Bool)

(assert (=> b!613523 (=> res!266754 e!371880)))

(assert (=> b!613523 (= res!266754 (or (not (= lt!263058 lt!263044)) (not (= (originalCharacters!1270 (_1!3763 (v!16492 lt!263060))) (originalCharacters!1270 token!491)))))))

(declare-fun b!613524 () Bool)

(declare-fun Unit!11259 () Unit!11254)

(assert (=> b!613524 (= e!371881 Unit!11259)))

(declare-fun e!371871 () Bool)

(assert (=> b!613525 (= e!371871 (and tp!189635 tp!189641))))

(declare-fun b!613526 () Bool)

(declare-fun res!266750 () Bool)

(assert (=> b!613526 (=> res!266750 e!371880)))

(assert (=> b!613526 (= res!266750 (= (rule!2023 (_1!3763 (v!16492 lt!263060))) (rule!2023 token!491)))))

(declare-fun b!613527 () Bool)

(declare-fun e!371875 () Bool)

(declare-fun tp!189634 () Bool)

(assert (=> b!613527 (= e!371875 (and tp!189634 (inv!7806 (tag!1493 (h!11536 rules!3103))) (inv!7810 (transformation!1231 (h!11536 rules!3103))) e!371871))))

(declare-fun b!613528 () Bool)

(declare-fun e!371877 () Bool)

(assert (=> b!613528 (= e!371877 (< lt!263066 lt!263036))))

(declare-fun b!613529 () Bool)

(declare-fun Unit!11260 () Unit!11254)

(assert (=> b!613529 (= e!371860 Unit!11260)))

(declare-fun b!613530 () Bool)

(assert (=> b!613530 (= e!371859 e!371877)))

(declare-fun res!266760 () Bool)

(assert (=> b!613530 (=> res!266760 e!371877)))

(declare-fun lt!263048 () BalanceConc!3904)

(assert (=> b!613530 (= res!266760 (not (= lt!263060 (Some!1581 (tuple2!6999 (Token!2199 (apply!1484 (transformation!1231 (rule!2023 (_1!3763 (v!16492 lt!263060)))) lt!263048) (rule!2023 (_1!3763 (v!16492 lt!263060))) (size!4824 input!2705) input!2705) (getSuffix!376 input!2705 input!2705))))))))

(declare-fun lt!263054 () Unit!11254)

(assert (=> b!613530 (= lt!263054 (lemmaSemiInverse!261 (transformation!1231 (rule!2023 (_1!3763 (v!16492 lt!263060)))) lt!263048))))

(assert (=> b!613530 (= lt!263048 (seqFromList!1407 input!2705))))

(declare-fun b!613531 () Bool)

(assert (=> b!613531 (= e!371865 e!371869)))

(declare-fun res!266757 () Bool)

(assert (=> b!613531 (=> res!266757 e!371869)))

(assert (=> b!613531 (= res!266757 (>= lt!263037 lt!263071))))

(declare-fun b!613532 () Bool)

(declare-fun Unit!11261 () Unit!11254)

(assert (=> b!613532 (= e!371881 Unit!11261)))

(declare-fun lt!263078 () Unit!11254)

(assert (=> b!613532 (= lt!263078 (lemmaSemiInverse!261 (transformation!1231 (rule!2023 (_1!3763 (v!16492 lt!263060)))) lt!263067))))

(declare-fun lt!263059 () Unit!11254)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!84 (LexerInterface!1117 List!6145 Rule!2262 List!6144 List!6144 List!6144 Rule!2262) Unit!11254)

(assert (=> b!613532 (= lt!263059 (lemmaMaxPrefixOutputsMaxPrefix!84 thiss!22590 rules!3103 (rule!2023 (_1!3763 (v!16492 lt!263060))) lt!263058 input!2705 input!2705 (rule!2023 token!491)))))

(declare-fun res!266759 () Bool)

(assert (=> b!613532 (= res!266759 (not (matchR!668 (regex!1231 (rule!2023 token!491)) input!2705)))))

(assert (=> b!613532 (=> (not res!266759) (not e!371866))))

(assert (=> b!613532 e!371866))

(declare-fun b!613533 () Bool)

(declare-fun tp!189633 () Bool)

(assert (=> b!613533 (= e!371878 (and e!371875 tp!189633))))

(declare-fun b!613534 () Bool)

(assert (=> b!613534 (= e!371873 false)))

(declare-fun b!613535 () Bool)

(declare-fun res!266768 () Bool)

(assert (=> b!613535 (=> res!266768 e!371880)))

(assert (=> b!613535 (= res!266768 (not (contains!1449 rules!3103 (rule!2023 (_1!3763 (v!16492 lt!263060))))))))

(assert (= (and start!58692 res!266778) b!613506))

(assert (= (and b!613506 res!266756) b!613502))

(assert (= (and b!613502 res!266771) b!613511))

(assert (= (and b!613511 res!266772) b!613500))

(assert (= (and b!613500 res!266775) b!613505))

(assert (= (and b!613505 res!266755) b!613509))

(assert (= (and b!613509 res!266751) b!613496))

(assert (= (and b!613496 res!266774) b!613513))

(assert (= (and b!613513 res!266776) b!613498))

(assert (= (and b!613498 c!113393) b!613522))

(assert (= (and b!613498 (not c!113393)) b!613529))

(assert (= (and b!613498 res!266752) b!613521))

(assert (= (and b!613521 res!266773) b!613495))

(assert (= (and b!613498 (not res!266766)) b!613514))

(assert (= (and b!613514 res!266770) b!613494))

(assert (= (and b!613494 res!266762) b!613516))

(assert (= (and b!613514 res!266769) b!613531))

(assert (= (and b!613531 (not res!266757)) b!613501))

(assert (= (and b!613501 res!266758) b!613520))

(assert (= (and b!613520 res!266761) b!613517))

(assert (= (and b!613514 c!113392) b!613532))

(assert (= (and b!613514 (not c!113392)) b!613524))

(assert (= (and b!613532 res!266759) b!613512))

(assert (= (and b!613514 (not res!266767)) b!613503))

(assert (= (and b!613503 (not res!266763)) b!613523))

(assert (= (and b!613523 (not res!266754)) b!613535))

(assert (= (and b!613535 (not res!266768)) b!613493))

(assert (= (and b!613493 (not res!266765)) b!613526))

(assert (= (and b!613526 (not res!266750)) b!613507))

(assert (= (and b!613507 c!113394) b!613518))

(assert (= (and b!613507 (not c!113394)) b!613504))

(assert (= (and b!613518 res!266777) b!613534))

(assert (= (and b!613507 (not res!266764)) b!613510))

(assert (= (and b!613510 (not res!266753)) b!613530))

(assert (= (and b!613530 (not res!266760)) b!613528))

(assert (= (and start!58692 ((_ is Cons!6134) suffix!1342)) b!613497))

(assert (= b!613527 b!613525))

(assert (= b!613533 b!613527))

(assert (= (and start!58692 ((_ is Cons!6135) rules!3103)) b!613533))

(assert (= b!613519 b!613499))

(assert (= b!613508 b!613519))

(assert (= start!58692 b!613508))

(assert (= (and start!58692 ((_ is Cons!6134) input!2705)) b!613515))

(declare-fun m!882093 () Bool)

(assert (=> b!613493 m!882093))

(declare-fun m!882095 () Bool)

(assert (=> b!613535 m!882095))

(declare-fun m!882097 () Bool)

(assert (=> b!613511 m!882097))

(declare-fun m!882099 () Bool)

(assert (=> b!613506 m!882099))

(declare-fun m!882101 () Bool)

(assert (=> b!613532 m!882101))

(declare-fun m!882103 () Bool)

(assert (=> b!613532 m!882103))

(declare-fun m!882105 () Bool)

(assert (=> b!613532 m!882105))

(declare-fun m!882107 () Bool)

(assert (=> b!613494 m!882107))

(declare-fun m!882109 () Bool)

(assert (=> b!613501 m!882109))

(declare-fun m!882111 () Bool)

(assert (=> b!613500 m!882111))

(assert (=> b!613500 m!882111))

(declare-fun m!882113 () Bool)

(assert (=> b!613500 m!882113))

(declare-fun m!882115 () Bool)

(assert (=> b!613507 m!882115))

(declare-fun m!882117 () Bool)

(assert (=> b!613507 m!882117))

(declare-fun m!882119 () Bool)

(assert (=> b!613502 m!882119))

(declare-fun m!882121 () Bool)

(assert (=> b!613505 m!882121))

(declare-fun m!882123 () Bool)

(assert (=> b!613505 m!882123))

(declare-fun m!882125 () Bool)

(assert (=> b!613505 m!882125))

(declare-fun m!882127 () Bool)

(assert (=> start!58692 m!882127))

(declare-fun m!882129 () Bool)

(assert (=> b!613530 m!882129))

(declare-fun m!882131 () Bool)

(assert (=> b!613530 m!882131))

(declare-fun m!882133 () Bool)

(assert (=> b!613530 m!882133))

(declare-fun m!882135 () Bool)

(assert (=> b!613530 m!882135))

(declare-fun m!882137 () Bool)

(assert (=> b!613530 m!882137))

(declare-fun m!882139 () Bool)

(assert (=> b!613514 m!882139))

(declare-fun m!882141 () Bool)

(assert (=> b!613514 m!882141))

(declare-fun m!882143 () Bool)

(assert (=> b!613514 m!882143))

(declare-fun m!882145 () Bool)

(assert (=> b!613514 m!882145))

(assert (=> b!613514 m!882101))

(declare-fun m!882147 () Bool)

(assert (=> b!613514 m!882147))

(declare-fun m!882149 () Bool)

(assert (=> b!613514 m!882149))

(declare-fun m!882151 () Bool)

(assert (=> b!613514 m!882151))

(declare-fun m!882153 () Bool)

(assert (=> b!613514 m!882153))

(declare-fun m!882155 () Bool)

(assert (=> b!613514 m!882155))

(declare-fun m!882157 () Bool)

(assert (=> b!613519 m!882157))

(declare-fun m!882159 () Bool)

(assert (=> b!613519 m!882159))

(declare-fun m!882161 () Bool)

(assert (=> b!613520 m!882161))

(declare-fun m!882163 () Bool)

(assert (=> b!613527 m!882163))

(declare-fun m!882165 () Bool)

(assert (=> b!613527 m!882165))

(declare-fun m!882167 () Bool)

(assert (=> b!613496 m!882167))

(declare-fun m!882169 () Bool)

(assert (=> b!613503 m!882169))

(declare-fun m!882171 () Bool)

(assert (=> b!613513 m!882171))

(declare-fun m!882173 () Bool)

(assert (=> b!613510 m!882173))

(declare-fun m!882175 () Bool)

(assert (=> b!613508 m!882175))

(declare-fun m!882177 () Bool)

(assert (=> b!613518 m!882177))

(assert (=> b!613518 m!882173))

(declare-fun m!882179 () Bool)

(assert (=> b!613498 m!882179))

(declare-fun m!882181 () Bool)

(assert (=> b!613498 m!882181))

(declare-fun m!882183 () Bool)

(assert (=> b!613498 m!882183))

(declare-fun m!882185 () Bool)

(assert (=> b!613498 m!882185))

(declare-fun m!882187 () Bool)

(assert (=> b!613498 m!882187))

(declare-fun m!882189 () Bool)

(assert (=> b!613498 m!882189))

(declare-fun m!882191 () Bool)

(assert (=> b!613498 m!882191))

(declare-fun m!882193 () Bool)

(assert (=> b!613498 m!882193))

(declare-fun m!882195 () Bool)

(assert (=> b!613498 m!882195))

(declare-fun m!882197 () Bool)

(assert (=> b!613498 m!882197))

(declare-fun m!882199 () Bool)

(assert (=> b!613498 m!882199))

(declare-fun m!882201 () Bool)

(assert (=> b!613498 m!882201))

(declare-fun m!882203 () Bool)

(assert (=> b!613498 m!882203))

(declare-fun m!882205 () Bool)

(assert (=> b!613498 m!882205))

(declare-fun m!882207 () Bool)

(assert (=> b!613498 m!882207))

(declare-fun m!882209 () Bool)

(assert (=> b!613498 m!882209))

(declare-fun m!882211 () Bool)

(assert (=> b!613498 m!882211))

(declare-fun m!882213 () Bool)

(assert (=> b!613498 m!882213))

(declare-fun m!882215 () Bool)

(assert (=> b!613498 m!882215))

(declare-fun m!882217 () Bool)

(assert (=> b!613498 m!882217))

(declare-fun m!882219 () Bool)

(assert (=> b!613498 m!882219))

(declare-fun m!882221 () Bool)

(assert (=> b!613498 m!882221))

(declare-fun m!882223 () Bool)

(assert (=> b!613498 m!882223))

(declare-fun m!882225 () Bool)

(assert (=> b!613498 m!882225))

(declare-fun m!882227 () Bool)

(assert (=> b!613498 m!882227))

(declare-fun m!882229 () Bool)

(assert (=> b!613498 m!882229))

(declare-fun m!882231 () Bool)

(assert (=> b!613498 m!882231))

(assert (=> b!613498 m!882179))

(declare-fun m!882233 () Bool)

(assert (=> b!613509 m!882233))

(declare-fun m!882235 () Bool)

(assert (=> b!613521 m!882235))

(check-sat (not b_next!17507) (not b!613501) (not b!613498) (not b_next!17503) tp_is_empty!3485 (not b!613507) (not b!613513) (not b!613514) (not b!613530) (not b!613535) (not b!613527) (not b!613521) (not b!613496) (not b!613509) (not b!613508) (not b!613497) (not b!613505) (not b!613532) (not b!613506) (not b!613511) b_and!60867 (not b!613502) (not b!613493) b_and!60869 (not b_next!17505) (not b!613519) b_and!60863 (not b!613520) b_and!60865 (not b!613494) (not b_next!17501) (not b!613503) (not b!613515) (not b!613533) (not b!613518) (not b!613510) (not start!58692) (not b!613500))
(check-sat (not b_next!17507) b_and!60867 b_and!60869 (not b_next!17505) (not b_next!17501) (not b_next!17503) b_and!60863 b_and!60865)
