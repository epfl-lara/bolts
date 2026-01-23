; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20330 () Bool)

(assert start!20330)

(declare-fun b!187592 () Bool)

(declare-fun b_free!7385 () Bool)

(declare-fun b_next!7385 () Bool)

(assert (=> b!187592 (= b_free!7385 (not b_next!7385))))

(declare-fun tp!87874 () Bool)

(declare-fun b_and!12941 () Bool)

(assert (=> b!187592 (= tp!87874 b_and!12941)))

(declare-fun b_free!7387 () Bool)

(declare-fun b_next!7387 () Bool)

(assert (=> b!187592 (= b_free!7387 (not b_next!7387))))

(declare-fun tp!87873 () Bool)

(declare-fun b_and!12943 () Bool)

(assert (=> b!187592 (= tp!87873 b_and!12943)))

(declare-fun b!187576 () Bool)

(declare-fun b_free!7389 () Bool)

(declare-fun b_next!7389 () Bool)

(assert (=> b!187576 (= b_free!7389 (not b_next!7389))))

(declare-fun tp!87879 () Bool)

(declare-fun b_and!12945 () Bool)

(assert (=> b!187576 (= tp!87879 b_and!12945)))

(declare-fun b_free!7391 () Bool)

(declare-fun b_next!7391 () Bool)

(assert (=> b!187576 (= b_free!7391 (not b_next!7391))))

(declare-fun tp!87880 () Bool)

(declare-fun b_and!12947 () Bool)

(assert (=> b!187576 (= tp!87880 b_and!12947)))

(declare-fun b!187589 () Bool)

(declare-fun b_free!7393 () Bool)

(declare-fun b_next!7393 () Bool)

(assert (=> b!187589 (= b_free!7393 (not b_next!7393))))

(declare-fun tp!87878 () Bool)

(declare-fun b_and!12949 () Bool)

(assert (=> b!187589 (= tp!87878 b_and!12949)))

(declare-fun b_free!7395 () Bool)

(declare-fun b_next!7395 () Bool)

(assert (=> b!187589 (= b_free!7395 (not b_next!7395))))

(declare-fun tp!87875 () Bool)

(declare-fun b_and!12951 () Bool)

(assert (=> b!187589 (= tp!87875 b_and!12951)))

(declare-fun bs!18626 () Bool)

(declare-fun b!187608 () Bool)

(declare-fun b!187606 () Bool)

(assert (= bs!18626 (and b!187608 b!187606)))

(declare-fun lambda!5682 () Int)

(declare-fun lambda!5681 () Int)

(assert (=> bs!18626 (not (= lambda!5682 lambda!5681))))

(declare-fun b!187620 () Bool)

(declare-fun e!114903 () Bool)

(assert (=> b!187620 (= e!114903 true)))

(declare-fun b!187619 () Bool)

(declare-fun e!114902 () Bool)

(assert (=> b!187619 (= e!114902 e!114903)))

(declare-fun b!187618 () Bool)

(declare-fun e!114901 () Bool)

(assert (=> b!187618 (= e!114901 e!114902)))

(assert (=> b!187608 e!114901))

(assert (= b!187619 b!187620))

(assert (= b!187618 b!187619))

(declare-datatypes ((List!3145 0))(
  ( (Nil!3135) (Cons!3135 (h!8532 (_ BitVec 16)) (t!28739 List!3145)) )
))
(declare-datatypes ((TokenValue!595 0))(
  ( (FloatLiteralValue!1190 (text!4610 List!3145)) (TokenValueExt!594 (__x!2677 Int)) (Broken!2975 (value!20620 List!3145)) (Object!604) (End!595) (Def!595) (Underscore!595) (Match!595) (Else!595) (Error!595) (Case!595) (If!595) (Extends!595) (Abstract!595) (Class!595) (Val!595) (DelimiterValue!1190 (del!655 List!3145)) (KeywordValue!601 (value!20621 List!3145)) (CommentValue!1190 (value!20622 List!3145)) (WhitespaceValue!1190 (value!20623 List!3145)) (IndentationValue!595 (value!20624 List!3145)) (String!4054) (Int32!595) (Broken!2976 (value!20625 List!3145)) (Boolean!596) (Unit!2921) (OperatorValue!598 (op!655 List!3145)) (IdentifierValue!1190 (value!20626 List!3145)) (IdentifierValue!1191 (value!20627 List!3145)) (WhitespaceValue!1191 (value!20628 List!3145)) (True!1190) (False!1190) (Broken!2977 (value!20629 List!3145)) (Broken!2978 (value!20630 List!3145)) (True!1191) (RightBrace!595) (RightBracket!595) (Colon!595) (Null!595) (Comma!595) (LeftBracket!595) (False!1191) (LeftBrace!595) (ImaginaryLiteralValue!595 (text!4611 List!3145)) (StringLiteralValue!1785 (value!20631 List!3145)) (EOFValue!595 (value!20632 List!3145)) (IdentValue!595 (value!20633 List!3145)) (DelimiterValue!1191 (value!20634 List!3145)) (DedentValue!595 (value!20635 List!3145)) (NewLineValue!595 (value!20636 List!3145)) (IntegerValue!1785 (value!20637 (_ BitVec 32)) (text!4612 List!3145)) (IntegerValue!1786 (value!20638 Int) (text!4613 List!3145)) (Times!595) (Or!595) (Equal!595) (Minus!595) (Broken!2979 (value!20639 List!3145)) (And!595) (Div!595) (LessEqual!595) (Mod!595) (Concat!1392) (Not!595) (Plus!595) (SpaceValue!595 (value!20640 List!3145)) (IntegerValue!1787 (value!20641 Int) (text!4614 List!3145)) (StringLiteralValue!1786 (text!4615 List!3145)) (FloatLiteralValue!1191 (text!4616 List!3145)) (BytesLiteralValue!595 (value!20642 List!3145)) (CommentValue!1191 (value!20643 List!3145)) (StringLiteralValue!1787 (value!20644 List!3145)) (ErrorTokenValue!595 (msg!656 List!3145)) )
))
(declare-datatypes ((C!2516 0))(
  ( (C!2517 (val!1144 Int)) )
))
(declare-datatypes ((List!3146 0))(
  ( (Nil!3136) (Cons!3136 (h!8533 C!2516) (t!28740 List!3146)) )
))
(declare-datatypes ((IArray!1937 0))(
  ( (IArray!1938 (innerList!1026 List!3146)) )
))
(declare-datatypes ((Conc!968 0))(
  ( (Node!968 (left!2457 Conc!968) (right!2787 Conc!968) (csize!2166 Int) (cheight!1179 Int)) (Leaf!1594 (xs!3563 IArray!1937) (csize!2167 Int)) (Empty!968) )
))
(declare-datatypes ((BalanceConc!1944 0))(
  ( (BalanceConc!1945 (c!36131 Conc!968)) )
))
(declare-datatypes ((TokenValueInjection!962 0))(
  ( (TokenValueInjection!963 (toValue!1244 Int) (toChars!1103 Int)) )
))
(declare-datatypes ((String!4055 0))(
  ( (String!4056 (value!20645 String)) )
))
(declare-datatypes ((Regex!797 0))(
  ( (ElementMatch!797 (c!36132 C!2516)) (Concat!1393 (regOne!2106 Regex!797) (regTwo!2106 Regex!797)) (EmptyExpr!797) (Star!797 (reg!1126 Regex!797)) (EmptyLang!797) (Union!797 (regOne!2107 Regex!797) (regTwo!2107 Regex!797)) )
))
(declare-datatypes ((Rule!946 0))(
  ( (Rule!947 (regex!573 Regex!797) (tag!751 String!4055) (isSeparator!573 Bool) (transformation!573 TokenValueInjection!962)) )
))
(declare-datatypes ((List!3147 0))(
  ( (Nil!3137) (Cons!3137 (h!8534 Rule!946) (t!28741 List!3147)) )
))
(declare-fun rules!1920 () List!3147)

(get-info :version)

(assert (= (and b!187608 ((_ is Cons!3137) rules!1920)) b!187618))

(declare-fun order!1915 () Int)

(declare-fun order!1913 () Int)

(declare-fun dynLambda!1305 (Int Int) Int)

(declare-fun dynLambda!1306 (Int Int) Int)

(assert (=> b!187620 (< (dynLambda!1305 order!1913 (toValue!1244 (transformation!573 (h!8534 rules!1920)))) (dynLambda!1306 order!1915 lambda!5682))))

(declare-fun order!1917 () Int)

(declare-fun dynLambda!1307 (Int Int) Int)

(assert (=> b!187620 (< (dynLambda!1307 order!1917 (toChars!1103 (transformation!573 (h!8534 rules!1920)))) (dynLambda!1306 order!1915 lambda!5682))))

(assert (=> b!187608 true))

(declare-fun b!187573 () Bool)

(declare-fun res!85616 () Bool)

(declare-fun e!114882 () Bool)

(assert (=> b!187573 (=> (not res!85616) (not e!114882))))

(declare-datatypes ((Token!890 0))(
  ( (Token!891 (value!20646 TokenValue!595) (rule!1088 Rule!946) (size!2527 Int) (originalCharacters!616 List!3146)) )
))
(declare-datatypes ((List!3148 0))(
  ( (Nil!3138) (Cons!3138 (h!8535 Token!890) (t!28742 List!3148)) )
))
(declare-fun tokens!465 () List!3148)

(assert (=> b!187573 (= res!85616 ((_ is Cons!3138) tokens!465))))

(declare-fun b!187575 () Bool)

(declare-fun e!114880 () Bool)

(declare-datatypes ((tuple2!3178 0))(
  ( (tuple2!3179 (_1!1805 Token!890) (_2!1805 List!3146)) )
))
(declare-datatypes ((Option!424 0))(
  ( (None!423) (Some!423 (v!13928 tuple2!3178)) )
))
(declare-fun lt!63196 () Option!424)

(declare-fun get!898 (Option!424) tuple2!3178)

(declare-fun head!660 (List!3148) Token!890)

(assert (=> b!187575 (= e!114880 (= (_1!1805 (get!898 lt!63196)) (head!660 tokens!465)))))

(declare-fun e!114875 () Bool)

(assert (=> b!187576 (= e!114875 (and tp!87879 tp!87880))))

(declare-fun tp!87877 () Bool)

(declare-fun e!114892 () Bool)

(declare-fun b!187577 () Bool)

(declare-fun e!114889 () Bool)

(declare-fun inv!3963 (String!4055) Bool)

(declare-fun inv!3966 (TokenValueInjection!962) Bool)

(assert (=> b!187577 (= e!114892 (and tp!87877 (inv!3963 (tag!751 (rule!1088 (h!8535 tokens!465)))) (inv!3966 (transformation!573 (rule!1088 (h!8535 tokens!465)))) e!114889))))

(declare-fun b!187578 () Bool)

(declare-fun e!114885 () Bool)

(declare-fun e!114874 () Bool)

(declare-fun tp!87869 () Bool)

(assert (=> b!187578 (= e!114885 (and e!114874 tp!87869))))

(declare-fun separatorToken!170 () Token!890)

(declare-fun b!187579 () Bool)

(declare-fun e!114884 () Bool)

(declare-fun tp!87871 () Bool)

(declare-fun e!114868 () Bool)

(declare-fun inv!21 (TokenValue!595) Bool)

(assert (=> b!187579 (= e!114884 (and (inv!21 (value!20646 separatorToken!170)) e!114868 tp!87871))))

(declare-fun b!187580 () Bool)

(declare-fun res!85620 () Bool)

(declare-fun e!114867 () Bool)

(assert (=> b!187580 (=> res!85620 e!114867)))

(declare-datatypes ((LexerInterface!459 0))(
  ( (LexerInterfaceExt!456 (__x!2678 Int)) (Lexer!457) )
))
(declare-fun thiss!17480 () LexerInterface!459)

(declare-fun rulesProduceIndividualToken!208 (LexerInterface!459 List!3147 Token!890) Bool)

(assert (=> b!187580 (= res!85620 (not (rulesProduceIndividualToken!208 thiss!17480 rules!1920 (h!8535 tokens!465))))))

(declare-fun b!187581 () Bool)

(declare-fun res!85621 () Bool)

(declare-fun e!114876 () Bool)

(assert (=> b!187581 (=> res!85621 e!114876)))

(declare-fun lt!63197 () List!3146)

(declare-fun isEmpty!1511 (List!3146) Bool)

(assert (=> b!187581 (= res!85621 (not (isEmpty!1511 lt!63197)))))

(declare-fun b!187582 () Bool)

(declare-fun res!85619 () Bool)

(assert (=> b!187582 (=> (not res!85619) (not e!114882))))

(assert (=> b!187582 (= res!85619 (rulesProduceIndividualToken!208 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun tp!87870 () Bool)

(declare-fun b!187583 () Bool)

(assert (=> b!187583 (= e!114874 (and tp!87870 (inv!3963 (tag!751 (h!8534 rules!1920))) (inv!3966 (transformation!573 (h!8534 rules!1920))) e!114875))))

(declare-fun b!187584 () Bool)

(declare-fun e!114888 () Bool)

(declare-fun e!114883 () Bool)

(assert (=> b!187584 (= e!114888 e!114883)))

(declare-fun res!85618 () Bool)

(assert (=> b!187584 (=> res!85618 e!114883)))

(declare-fun e!114872 () Bool)

(assert (=> b!187584 (= res!85618 e!114872)))

(declare-fun res!85602 () Bool)

(assert (=> b!187584 (=> (not res!85602) (not e!114872))))

(declare-fun lt!63200 () Bool)

(assert (=> b!187584 (= res!85602 (not lt!63200))))

(declare-fun lt!63194 () List!3146)

(declare-fun lt!63186 () List!3146)

(assert (=> b!187584 (= lt!63200 (= lt!63194 lt!63186))))

(declare-fun e!114886 () Bool)

(declare-fun b!187585 () Bool)

(declare-fun tp!87881 () Bool)

(assert (=> b!187585 (= e!114886 (and (inv!21 (value!20646 (h!8535 tokens!465))) e!114892 tp!87881))))

(declare-fun b!187586 () Bool)

(declare-fun res!85625 () Bool)

(assert (=> b!187586 (=> res!85625 e!114876)))

(declare-fun rulesProduceEachTokenIndividuallyList!149 (LexerInterface!459 List!3147 List!3148) Bool)

(assert (=> b!187586 (= res!85625 (not (rulesProduceEachTokenIndividuallyList!149 thiss!17480 rules!1920 tokens!465)))))

(declare-fun res!85627 () Bool)

(declare-fun e!114887 () Bool)

(assert (=> start!20330 (=> (not res!85627) (not e!114887))))

(assert (=> start!20330 (= res!85627 ((_ is Lexer!457) thiss!17480))))

(assert (=> start!20330 e!114887))

(assert (=> start!20330 true))

(assert (=> start!20330 e!114885))

(declare-fun inv!3967 (Token!890) Bool)

(assert (=> start!20330 (and (inv!3967 separatorToken!170) e!114884)))

(declare-fun e!114894 () Bool)

(assert (=> start!20330 e!114894))

(declare-fun b!187574 () Bool)

(declare-fun res!85624 () Bool)

(assert (=> b!187574 (=> (not res!85624) (not e!114882))))

(assert (=> b!187574 (= res!85624 (isSeparator!573 (rule!1088 separatorToken!170)))))

(declare-fun b!187587 () Bool)

(declare-fun tp!87876 () Bool)

(declare-fun e!114878 () Bool)

(assert (=> b!187587 (= e!114868 (and tp!87876 (inv!3963 (tag!751 (rule!1088 separatorToken!170))) (inv!3966 (transformation!573 (rule!1088 separatorToken!170))) e!114878))))

(declare-fun b!187588 () Bool)

(declare-fun res!85603 () Bool)

(declare-fun e!114891 () Bool)

(assert (=> b!187588 (=> (not res!85603) (not e!114891))))

(declare-fun lt!63188 () List!3146)

(declare-fun list!1155 (BalanceConc!1944) List!3146)

(declare-fun seqFromList!523 (List!3146) BalanceConc!1944)

(assert (=> b!187588 (= res!85603 (= (list!1155 (seqFromList!523 lt!63194)) lt!63188))))

(assert (=> b!187589 (= e!114889 (and tp!87878 tp!87875))))

(declare-fun b!187590 () Bool)

(assert (=> b!187590 (= e!114887 e!114882)))

(declare-fun res!85615 () Bool)

(assert (=> b!187590 (=> (not res!85615) (not e!114882))))

(declare-datatypes ((IArray!1939 0))(
  ( (IArray!1940 (innerList!1027 List!3148)) )
))
(declare-datatypes ((Conc!969 0))(
  ( (Node!969 (left!2458 Conc!969) (right!2788 Conc!969) (csize!2168 Int) (cheight!1180 Int)) (Leaf!1595 (xs!3564 IArray!1939) (csize!2169 Int)) (Empty!969) )
))
(declare-datatypes ((BalanceConc!1946 0))(
  ( (BalanceConc!1947 (c!36133 Conc!969)) )
))
(declare-fun lt!63203 () BalanceConc!1946)

(declare-fun rulesProduceEachTokenIndividually!251 (LexerInterface!459 List!3147 BalanceConc!1946) Bool)

(assert (=> b!187590 (= res!85615 (rulesProduceEachTokenIndividually!251 thiss!17480 rules!1920 lt!63203))))

(declare-fun seqFromList!524 (List!3148) BalanceConc!1946)

(assert (=> b!187590 (= lt!63203 (seqFromList!524 tokens!465))))

(declare-fun b!187591 () Bool)

(assert (=> b!187591 (= e!114876 true)))

(assert (=> b!187592 (= e!114878 (and tp!87874 tp!87873))))

(declare-fun lt!63206 () List!3146)

(declare-fun b!187593 () Bool)

(declare-fun ++!746 (List!3146 List!3146) List!3146)

(assert (=> b!187593 (= e!114872 (not (= lt!63194 (++!746 lt!63206 lt!63197))))))

(declare-fun b!187594 () Bool)

(assert (=> b!187594 (= e!114891 (not e!114888))))

(declare-fun res!85607 () Bool)

(assert (=> b!187594 (=> res!85607 e!114888)))

(declare-fun printWithSeparatorTokenWhenNeededRec!142 (LexerInterface!459 List!3147 BalanceConc!1946 Token!890 Int) BalanceConc!1944)

(assert (=> b!187594 (= res!85607 (not (= lt!63197 (list!1155 (printWithSeparatorTokenWhenNeededRec!142 thiss!17480 rules!1920 (seqFromList!524 (t!28742 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!63193 () List!3146)

(assert (=> b!187594 (= lt!63193 lt!63186)))

(declare-fun lt!63190 () List!3146)

(assert (=> b!187594 (= lt!63186 (++!746 lt!63206 lt!63190))))

(declare-fun lt!63187 () List!3146)

(assert (=> b!187594 (= lt!63193 (++!746 (++!746 lt!63206 lt!63187) lt!63197))))

(declare-datatypes ((Unit!2922 0))(
  ( (Unit!2923) )
))
(declare-fun lt!63195 () Unit!2922)

(declare-fun lemmaConcatAssociativity!262 (List!3146 List!3146 List!3146) Unit!2922)

(assert (=> b!187594 (= lt!63195 (lemmaConcatAssociativity!262 lt!63206 lt!63187 lt!63197))))

(declare-fun charsOf!228 (Token!890) BalanceConc!1944)

(assert (=> b!187594 (= lt!63206 (list!1155 (charsOf!228 (h!8535 tokens!465))))))

(assert (=> b!187594 (= lt!63190 (++!746 lt!63187 lt!63197))))

(declare-fun printWithSeparatorTokenWhenNeededList!152 (LexerInterface!459 List!3147 List!3148 Token!890) List!3146)

(assert (=> b!187594 (= lt!63197 (printWithSeparatorTokenWhenNeededList!152 thiss!17480 rules!1920 (t!28742 tokens!465) separatorToken!170))))

(assert (=> b!187594 (= lt!63187 (list!1155 (charsOf!228 separatorToken!170)))))

(declare-fun b!187595 () Bool)

(declare-fun res!85611 () Bool)

(assert (=> b!187595 (=> res!85611 e!114867)))

(declare-fun isEmpty!1512 (BalanceConc!1946) Bool)

(declare-datatypes ((tuple2!3180 0))(
  ( (tuple2!3181 (_1!1806 BalanceConc!1946) (_2!1806 BalanceConc!1944)) )
))
(declare-fun lex!259 (LexerInterface!459 List!3147 BalanceConc!1944) tuple2!3180)

(assert (=> b!187595 (= res!85611 (isEmpty!1512 (_1!1806 (lex!259 thiss!17480 rules!1920 (seqFromList!523 lt!63206)))))))

(declare-fun b!187596 () Bool)

(declare-fun res!85612 () Bool)

(assert (=> b!187596 (=> (not res!85612) (not e!114882))))

(declare-fun sepAndNonSepRulesDisjointChars!162 (List!3147 List!3147) Bool)

(assert (=> b!187596 (= res!85612 (sepAndNonSepRulesDisjointChars!162 rules!1920 rules!1920))))

(declare-fun b!187597 () Bool)

(declare-fun res!85609 () Bool)

(assert (=> b!187597 (=> (not res!85609) (not e!114887))))

(declare-fun isEmpty!1513 (List!3147) Bool)

(assert (=> b!187597 (= res!85609 (not (isEmpty!1513 rules!1920)))))

(declare-fun b!187598 () Bool)

(declare-fun e!114869 () Bool)

(declare-fun e!114893 () Bool)

(assert (=> b!187598 (= e!114869 e!114893)))

(declare-fun res!85614 () Bool)

(assert (=> b!187598 (=> res!85614 e!114893)))

(assert (=> b!187598 (= res!85614 (not lt!63200))))

(declare-fun e!114879 () Bool)

(assert (=> b!187598 e!114879))

(declare-fun res!85608 () Bool)

(assert (=> b!187598 (=> (not res!85608) (not e!114879))))

(declare-fun lt!63192 () tuple2!3178)

(assert (=> b!187598 (= res!85608 (= (_1!1805 lt!63192) (h!8535 tokens!465)))))

(declare-fun lt!63204 () Option!424)

(assert (=> b!187598 (= lt!63192 (get!898 lt!63204))))

(declare-fun isDefined!275 (Option!424) Bool)

(assert (=> b!187598 (isDefined!275 lt!63204)))

(declare-fun maxPrefix!189 (LexerInterface!459 List!3147 List!3146) Option!424)

(assert (=> b!187598 (= lt!63204 (maxPrefix!189 thiss!17480 rules!1920 lt!63206))))

(declare-fun b!187599 () Bool)

(assert (=> b!187599 (= e!114893 e!114876)))

(declare-fun res!85604 () Bool)

(assert (=> b!187599 (=> res!85604 e!114876)))

(declare-fun isEmpty!1514 (List!3148) Bool)

(assert (=> b!187599 (= res!85604 (not (isEmpty!1514 (t!28742 tokens!465))))))

(declare-fun lt!63183 () Option!424)

(assert (=> b!187599 (= lt!63183 (maxPrefix!189 thiss!17480 rules!1920 lt!63190))))

(declare-fun lt!63184 () tuple2!3178)

(assert (=> b!187599 (= lt!63190 (_2!1805 lt!63184))))

(declare-fun lt!63201 () Unit!2922)

(declare-fun lemmaSamePrefixThenSameSuffix!94 (List!3146 List!3146 List!3146 List!3146 List!3146) Unit!2922)

(assert (=> b!187599 (= lt!63201 (lemmaSamePrefixThenSameSuffix!94 lt!63206 lt!63190 lt!63206 (_2!1805 lt!63184) lt!63194))))

(assert (=> b!187599 (= lt!63184 (get!898 (maxPrefix!189 thiss!17480 rules!1920 lt!63194)))))

(declare-fun isPrefix!269 (List!3146 List!3146) Bool)

(assert (=> b!187599 (isPrefix!269 lt!63206 lt!63186)))

(declare-fun lt!63202 () Unit!2922)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!164 (List!3146 List!3146) Unit!2922)

(assert (=> b!187599 (= lt!63202 (lemmaConcatTwoListThenFirstIsPrefix!164 lt!63206 lt!63190))))

(declare-fun e!114873 () Bool)

(assert (=> b!187599 e!114873))

(declare-fun res!85606 () Bool)

(assert (=> b!187599 (=> res!85606 e!114873)))

(assert (=> b!187599 (= res!85606 (isEmpty!1514 tokens!465))))

(declare-fun lt!63189 () Unit!2922)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!34 (LexerInterface!459 List!3147 List!3148 Token!890) Unit!2922)

(assert (=> b!187599 (= lt!63189 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!34 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!187600 () Bool)

(declare-fun res!85623 () Bool)

(assert (=> b!187600 (=> (not res!85623) (not e!114879))))

(assert (=> b!187600 (= res!85623 (isEmpty!1511 (_2!1805 lt!63192)))))

(declare-fun b!187601 () Bool)

(assert (=> b!187601 (= e!114882 e!114891)))

(declare-fun res!85628 () Bool)

(assert (=> b!187601 (=> (not res!85628) (not e!114891))))

(assert (=> b!187601 (= res!85628 (= lt!63194 lt!63188))))

(assert (=> b!187601 (= lt!63188 (list!1155 (printWithSeparatorTokenWhenNeededRec!142 thiss!17480 rules!1920 lt!63203 separatorToken!170 0)))))

(assert (=> b!187601 (= lt!63194 (printWithSeparatorTokenWhenNeededList!152 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!187602 () Bool)

(assert (=> b!187602 (= e!114883 e!114867)))

(declare-fun res!85622 () Bool)

(assert (=> b!187602 (=> res!85622 e!114867)))

(declare-fun lt!63191 () List!3146)

(declare-fun lt!63205 () List!3146)

(assert (=> b!187602 (= res!85622 (or (not (= lt!63205 lt!63191)) (not (= lt!63191 lt!63206)) (not (= lt!63205 lt!63206))))))

(declare-fun lt!63198 () List!3148)

(declare-fun printList!143 (LexerInterface!459 List!3148) List!3146)

(assert (=> b!187602 (= lt!63191 (printList!143 thiss!17480 lt!63198))))

(declare-fun lt!63185 () BalanceConc!1944)

(assert (=> b!187602 (= lt!63205 (list!1155 lt!63185))))

(assert (=> b!187602 (= lt!63198 (Cons!3138 (h!8535 tokens!465) Nil!3138))))

(declare-fun lt!63182 () BalanceConc!1946)

(declare-fun printTailRec!153 (LexerInterface!459 BalanceConc!1946 Int BalanceConc!1944) BalanceConc!1944)

(assert (=> b!187602 (= lt!63185 (printTailRec!153 thiss!17480 lt!63182 0 (BalanceConc!1945 Empty!968)))))

(declare-fun print!190 (LexerInterface!459 BalanceConc!1946) BalanceConc!1944)

(assert (=> b!187602 (= lt!63185 (print!190 thiss!17480 lt!63182))))

(declare-fun singletonSeq!125 (Token!890) BalanceConc!1946)

(assert (=> b!187602 (= lt!63182 (singletonSeq!125 (h!8535 tokens!465)))))

(declare-fun b!187603 () Bool)

(declare-fun matchR!135 (Regex!797 List!3146) Bool)

(assert (=> b!187603 (= e!114879 (matchR!135 (regex!573 (rule!1088 (h!8535 tokens!465))) lt!63206))))

(declare-fun b!187604 () Bool)

(assert (=> b!187604 (= e!114873 e!114880)))

(declare-fun res!85610 () Bool)

(assert (=> b!187604 (=> (not res!85610) (not e!114880))))

(assert (=> b!187604 (= res!85610 (isDefined!275 lt!63196))))

(assert (=> b!187604 (= lt!63196 (maxPrefix!189 thiss!17480 rules!1920 lt!63194))))

(declare-fun b!187605 () Bool)

(declare-fun res!85617 () Bool)

(assert (=> b!187605 (=> (not res!85617) (not e!114887))))

(declare-fun rulesInvariant!425 (LexerInterface!459 List!3147) Bool)

(assert (=> b!187605 (= res!85617 (rulesInvariant!425 thiss!17480 rules!1920))))

(declare-fun res!85605 () Bool)

(assert (=> b!187606 (=> (not res!85605) (not e!114882))))

(declare-fun forall!653 (List!3148 Int) Bool)

(assert (=> b!187606 (= res!85605 (forall!653 tokens!465 lambda!5681))))

(declare-fun b!187607 () Bool)

(declare-fun tp!87872 () Bool)

(assert (=> b!187607 (= e!114894 (and (inv!3967 (h!8535 tokens!465)) e!114886 tp!87872))))

(assert (=> b!187608 (= e!114867 e!114869)))

(declare-fun res!85613 () Bool)

(assert (=> b!187608 (=> res!85613 e!114869)))

(declare-datatypes ((tuple2!3182 0))(
  ( (tuple2!3183 (_1!1807 Token!890) (_2!1807 BalanceConc!1944)) )
))
(declare-datatypes ((Option!425 0))(
  ( (None!424) (Some!424 (v!13929 tuple2!3182)) )
))
(declare-fun isDefined!276 (Option!425) Bool)

(declare-fun maxPrefixZipperSequence!152 (LexerInterface!459 List!3147 BalanceConc!1944) Option!425)

(assert (=> b!187608 (= res!85613 (not (isDefined!276 (maxPrefixZipperSequence!152 thiss!17480 rules!1920 (seqFromList!523 (originalCharacters!616 (h!8535 tokens!465)))))))))

(declare-fun lt!63199 () Unit!2922)

(declare-fun forallContained!140 (List!3148 Int Token!890) Unit!2922)

(assert (=> b!187608 (= lt!63199 (forallContained!140 tokens!465 lambda!5682 (h!8535 tokens!465)))))

(assert (=> b!187608 (= lt!63206 (originalCharacters!616 (h!8535 tokens!465)))))

(declare-fun b!187609 () Bool)

(declare-fun res!85626 () Bool)

(assert (=> b!187609 (=> res!85626 e!114876)))

(assert (=> b!187609 (= res!85626 (not (= tokens!465 lt!63198)))))

(assert (= (and start!20330 res!85627) b!187597))

(assert (= (and b!187597 res!85609) b!187605))

(assert (= (and b!187605 res!85617) b!187590))

(assert (= (and b!187590 res!85615) b!187582))

(assert (= (and b!187582 res!85619) b!187574))

(assert (= (and b!187574 res!85624) b!187606))

(assert (= (and b!187606 res!85605) b!187596))

(assert (= (and b!187596 res!85612) b!187573))

(assert (= (and b!187573 res!85616) b!187601))

(assert (= (and b!187601 res!85628) b!187588))

(assert (= (and b!187588 res!85603) b!187594))

(assert (= (and b!187594 (not res!85607)) b!187584))

(assert (= (and b!187584 res!85602) b!187593))

(assert (= (and b!187584 (not res!85618)) b!187602))

(assert (= (and b!187602 (not res!85622)) b!187580))

(assert (= (and b!187580 (not res!85620)) b!187595))

(assert (= (and b!187595 (not res!85611)) b!187608))

(assert (= (and b!187608 (not res!85613)) b!187598))

(assert (= (and b!187598 res!85608) b!187600))

(assert (= (and b!187600 res!85623) b!187603))

(assert (= (and b!187598 (not res!85614)) b!187599))

(assert (= (and b!187599 (not res!85606)) b!187604))

(assert (= (and b!187604 res!85610) b!187575))

(assert (= (and b!187599 (not res!85604)) b!187609))

(assert (= (and b!187609 (not res!85626)) b!187581))

(assert (= (and b!187581 (not res!85621)) b!187586))

(assert (= (and b!187586 (not res!85625)) b!187591))

(assert (= b!187583 b!187576))

(assert (= b!187578 b!187583))

(assert (= (and start!20330 ((_ is Cons!3137) rules!1920)) b!187578))

(assert (= b!187587 b!187592))

(assert (= b!187579 b!187587))

(assert (= start!20330 b!187579))

(assert (= b!187577 b!187589))

(assert (= b!187585 b!187577))

(assert (= b!187607 b!187585))

(assert (= (and start!20330 ((_ is Cons!3138) tokens!465)) b!187607))

(declare-fun m!192159 () Bool)

(assert (=> b!187593 m!192159))

(declare-fun m!192161 () Bool)

(assert (=> start!20330 m!192161))

(declare-fun m!192163 () Bool)

(assert (=> b!187579 m!192163))

(declare-fun m!192165 () Bool)

(assert (=> b!187585 m!192165))

(declare-fun m!192167 () Bool)

(assert (=> b!187601 m!192167))

(assert (=> b!187601 m!192167))

(declare-fun m!192169 () Bool)

(assert (=> b!187601 m!192169))

(declare-fun m!192171 () Bool)

(assert (=> b!187601 m!192171))

(declare-fun m!192173 () Bool)

(assert (=> b!187587 m!192173))

(declare-fun m!192175 () Bool)

(assert (=> b!187587 m!192175))

(declare-fun m!192177 () Bool)

(assert (=> b!187577 m!192177))

(declare-fun m!192179 () Bool)

(assert (=> b!187577 m!192179))

(declare-fun m!192181 () Bool)

(assert (=> b!187582 m!192181))

(declare-fun m!192183 () Bool)

(assert (=> b!187607 m!192183))

(declare-fun m!192185 () Bool)

(assert (=> b!187575 m!192185))

(declare-fun m!192187 () Bool)

(assert (=> b!187575 m!192187))

(declare-fun m!192189 () Bool)

(assert (=> b!187596 m!192189))

(declare-fun m!192191 () Bool)

(assert (=> b!187583 m!192191))

(declare-fun m!192193 () Bool)

(assert (=> b!187583 m!192193))

(declare-fun m!192195 () Bool)

(assert (=> b!187605 m!192195))

(declare-fun m!192197 () Bool)

(assert (=> b!187602 m!192197))

(declare-fun m!192199 () Bool)

(assert (=> b!187602 m!192199))

(declare-fun m!192201 () Bool)

(assert (=> b!187602 m!192201))

(declare-fun m!192203 () Bool)

(assert (=> b!187602 m!192203))

(declare-fun m!192205 () Bool)

(assert (=> b!187602 m!192205))

(declare-fun m!192207 () Bool)

(assert (=> b!187600 m!192207))

(declare-fun m!192209 () Bool)

(assert (=> b!187603 m!192209))

(declare-fun m!192211 () Bool)

(assert (=> b!187581 m!192211))

(declare-fun m!192213 () Bool)

(assert (=> b!187580 m!192213))

(declare-fun m!192215 () Bool)

(assert (=> b!187590 m!192215))

(declare-fun m!192217 () Bool)

(assert (=> b!187590 m!192217))

(declare-fun m!192219 () Bool)

(assert (=> b!187606 m!192219))

(declare-fun m!192221 () Bool)

(assert (=> b!187604 m!192221))

(declare-fun m!192223 () Bool)

(assert (=> b!187604 m!192223))

(declare-fun m!192225 () Bool)

(assert (=> b!187608 m!192225))

(assert (=> b!187608 m!192225))

(declare-fun m!192227 () Bool)

(assert (=> b!187608 m!192227))

(assert (=> b!187608 m!192227))

(declare-fun m!192229 () Bool)

(assert (=> b!187608 m!192229))

(declare-fun m!192231 () Bool)

(assert (=> b!187608 m!192231))

(declare-fun m!192233 () Bool)

(assert (=> b!187599 m!192233))

(declare-fun m!192235 () Bool)

(assert (=> b!187599 m!192235))

(declare-fun m!192237 () Bool)

(assert (=> b!187599 m!192237))

(declare-fun m!192239 () Bool)

(assert (=> b!187599 m!192239))

(declare-fun m!192241 () Bool)

(assert (=> b!187599 m!192241))

(declare-fun m!192243 () Bool)

(assert (=> b!187599 m!192243))

(declare-fun m!192245 () Bool)

(assert (=> b!187599 m!192245))

(assert (=> b!187599 m!192223))

(declare-fun m!192247 () Bool)

(assert (=> b!187599 m!192247))

(assert (=> b!187599 m!192223))

(declare-fun m!192249 () Bool)

(assert (=> b!187588 m!192249))

(assert (=> b!187588 m!192249))

(declare-fun m!192251 () Bool)

(assert (=> b!187588 m!192251))

(declare-fun m!192253 () Bool)

(assert (=> b!187586 m!192253))

(declare-fun m!192255 () Bool)

(assert (=> b!187597 m!192255))

(declare-fun m!192257 () Bool)

(assert (=> b!187594 m!192257))

(declare-fun m!192259 () Bool)

(assert (=> b!187594 m!192259))

(declare-fun m!192261 () Bool)

(assert (=> b!187594 m!192261))

(declare-fun m!192263 () Bool)

(assert (=> b!187594 m!192263))

(declare-fun m!192265 () Bool)

(assert (=> b!187594 m!192265))

(declare-fun m!192267 () Bool)

(assert (=> b!187594 m!192267))

(declare-fun m!192269 () Bool)

(assert (=> b!187594 m!192269))

(assert (=> b!187594 m!192263))

(assert (=> b!187594 m!192257))

(declare-fun m!192271 () Bool)

(assert (=> b!187594 m!192271))

(assert (=> b!187594 m!192259))

(declare-fun m!192273 () Bool)

(assert (=> b!187594 m!192273))

(declare-fun m!192275 () Bool)

(assert (=> b!187594 m!192275))

(declare-fun m!192277 () Bool)

(assert (=> b!187594 m!192277))

(assert (=> b!187594 m!192271))

(declare-fun m!192279 () Bool)

(assert (=> b!187594 m!192279))

(assert (=> b!187594 m!192275))

(declare-fun m!192281 () Bool)

(assert (=> b!187594 m!192281))

(declare-fun m!192283 () Bool)

(assert (=> b!187595 m!192283))

(assert (=> b!187595 m!192283))

(declare-fun m!192285 () Bool)

(assert (=> b!187595 m!192285))

(declare-fun m!192287 () Bool)

(assert (=> b!187595 m!192287))

(declare-fun m!192289 () Bool)

(assert (=> b!187598 m!192289))

(declare-fun m!192291 () Bool)

(assert (=> b!187598 m!192291))

(declare-fun m!192293 () Bool)

(assert (=> b!187598 m!192293))

(check-sat (not b!187586) (not b!187595) (not b_next!7393) (not b!187579) (not b_next!7387) (not b!187580) (not b!187575) (not b!187606) (not b!187578) b_and!12941 (not b!187601) (not b!187598) (not b!187583) (not b!187599) (not b!187618) (not b!187582) (not b!187605) b_and!12949 (not b_next!7389) (not b_next!7395) (not b!187587) (not b!187588) (not b!187603) (not b!187597) b_and!12951 (not b!187607) (not b!187608) b_and!12947 (not b!187602) (not b!187594) (not b_next!7391) (not b!187581) b_and!12943 (not b_next!7385) b_and!12945 (not b!187585) (not start!20330) (not b!187600) (not b!187590) (not b!187604) (not b!187577) (not b!187593) (not b!187596))
(check-sat b_and!12941 (not b_next!7393) (not b_next!7387) (not b_next!7395) b_and!12951 b_and!12947 b_and!12949 (not b_next!7389) (not b_next!7391) b_and!12943 (not b_next!7385) b_and!12945)
