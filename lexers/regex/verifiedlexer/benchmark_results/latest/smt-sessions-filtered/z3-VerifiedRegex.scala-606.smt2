; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19330 () Bool)

(assert start!19330)

(declare-fun b!178253 () Bool)

(declare-fun b_free!6833 () Bool)

(declare-fun b_next!6833 () Bool)

(assert (=> b!178253 (= b_free!6833 (not b_next!6833))))

(declare-fun tp!85669 () Bool)

(declare-fun b_and!12101 () Bool)

(assert (=> b!178253 (= tp!85669 b_and!12101)))

(declare-fun b_free!6835 () Bool)

(declare-fun b_next!6835 () Bool)

(assert (=> b!178253 (= b_free!6835 (not b_next!6835))))

(declare-fun tp!85668 () Bool)

(declare-fun b_and!12103 () Bool)

(assert (=> b!178253 (= tp!85668 b_and!12103)))

(declare-fun b!178257 () Bool)

(declare-fun b_free!6837 () Bool)

(declare-fun b_next!6837 () Bool)

(assert (=> b!178257 (= b_free!6837 (not b_next!6837))))

(declare-fun tp!85667 () Bool)

(declare-fun b_and!12105 () Bool)

(assert (=> b!178257 (= tp!85667 b_and!12105)))

(declare-fun b_free!6839 () Bool)

(declare-fun b_next!6839 () Bool)

(assert (=> b!178257 (= b_free!6839 (not b_next!6839))))

(declare-fun tp!85675 () Bool)

(declare-fun b_and!12107 () Bool)

(assert (=> b!178257 (= tp!85675 b_and!12107)))

(declare-fun b!178246 () Bool)

(declare-fun b_free!6841 () Bool)

(declare-fun b_next!6841 () Bool)

(assert (=> b!178246 (= b_free!6841 (not b_next!6841))))

(declare-fun tp!85679 () Bool)

(declare-fun b_and!12109 () Bool)

(assert (=> b!178246 (= tp!85679 b_and!12109)))

(declare-fun b_free!6843 () Bool)

(declare-fun b_next!6843 () Bool)

(assert (=> b!178246 (= b_free!6843 (not b_next!6843))))

(declare-fun tp!85676 () Bool)

(declare-fun b_and!12111 () Bool)

(assert (=> b!178246 (= tp!85676 b_and!12111)))

(declare-fun bs!17824 () Bool)

(declare-fun b!178244 () Bool)

(declare-fun b!178255 () Bool)

(assert (= bs!17824 (and b!178244 b!178255)))

(declare-fun lambda!5204 () Int)

(declare-fun lambda!5203 () Int)

(assert (=> bs!17824 (not (= lambda!5204 lambda!5203))))

(declare-fun b!178286 () Bool)

(declare-fun e!108289 () Bool)

(assert (=> b!178286 (= e!108289 true)))

(declare-fun b!178285 () Bool)

(declare-fun e!108288 () Bool)

(assert (=> b!178285 (= e!108288 e!108289)))

(declare-fun b!178284 () Bool)

(declare-fun e!108287 () Bool)

(assert (=> b!178284 (= e!108287 e!108288)))

(assert (=> b!178244 e!108287))

(assert (= b!178285 b!178286))

(assert (= b!178284 b!178285))

(declare-datatypes ((List!2981 0))(
  ( (Nil!2971) (Cons!2971 (h!8368 (_ BitVec 16)) (t!28103 List!2981)) )
))
(declare-datatypes ((TokenValue!557 0))(
  ( (FloatLiteralValue!1114 (text!4344 List!2981)) (TokenValueExt!556 (__x!2601 Int)) (Broken!2785 (value!19537 List!2981)) (Object!566) (End!557) (Def!557) (Underscore!557) (Match!557) (Else!557) (Error!557) (Case!557) (If!557) (Extends!557) (Abstract!557) (Class!557) (Val!557) (DelimiterValue!1114 (del!617 List!2981)) (KeywordValue!563 (value!19538 List!2981)) (CommentValue!1114 (value!19539 List!2981)) (WhitespaceValue!1114 (value!19540 List!2981)) (IndentationValue!557 (value!19541 List!2981)) (String!3864) (Int32!557) (Broken!2786 (value!19542 List!2981)) (Boolean!558) (Unit!2711) (OperatorValue!560 (op!617 List!2981)) (IdentifierValue!1114 (value!19543 List!2981)) (IdentifierValue!1115 (value!19544 List!2981)) (WhitespaceValue!1115 (value!19545 List!2981)) (True!1114) (False!1114) (Broken!2787 (value!19546 List!2981)) (Broken!2788 (value!19547 List!2981)) (True!1115) (RightBrace!557) (RightBracket!557) (Colon!557) (Null!557) (Comma!557) (LeftBracket!557) (False!1115) (LeftBrace!557) (ImaginaryLiteralValue!557 (text!4345 List!2981)) (StringLiteralValue!1671 (value!19548 List!2981)) (EOFValue!557 (value!19549 List!2981)) (IdentValue!557 (value!19550 List!2981)) (DelimiterValue!1115 (value!19551 List!2981)) (DedentValue!557 (value!19552 List!2981)) (NewLineValue!557 (value!19553 List!2981)) (IntegerValue!1671 (value!19554 (_ BitVec 32)) (text!4346 List!2981)) (IntegerValue!1672 (value!19555 Int) (text!4347 List!2981)) (Times!557) (Or!557) (Equal!557) (Minus!557) (Broken!2789 (value!19556 List!2981)) (And!557) (Div!557) (LessEqual!557) (Mod!557) (Concat!1316) (Not!557) (Plus!557) (SpaceValue!557 (value!19557 List!2981)) (IntegerValue!1673 (value!19558 Int) (text!4348 List!2981)) (StringLiteralValue!1672 (text!4349 List!2981)) (FloatLiteralValue!1115 (text!4350 List!2981)) (BytesLiteralValue!557 (value!19559 List!2981)) (CommentValue!1115 (value!19560 List!2981)) (StringLiteralValue!1673 (value!19561 List!2981)) (ErrorTokenValue!557 (msg!618 List!2981)) )
))
(declare-datatypes ((C!2440 0))(
  ( (C!2441 (val!1106 Int)) )
))
(declare-datatypes ((List!2982 0))(
  ( (Nil!2972) (Cons!2972 (h!8369 C!2440) (t!28104 List!2982)) )
))
(declare-datatypes ((IArray!1785 0))(
  ( (IArray!1786 (innerList!950 List!2982)) )
))
(declare-datatypes ((Conc!892 0))(
  ( (Node!892 (left!2286 Conc!892) (right!2616 Conc!892) (csize!2014 Int) (cheight!1103 Int)) (Leaf!1499 (xs!3487 IArray!1785) (csize!2015 Int)) (Empty!892) )
))
(declare-datatypes ((BalanceConc!1792 0))(
  ( (BalanceConc!1793 (c!35117 Conc!892)) )
))
(declare-datatypes ((TokenValueInjection!886 0))(
  ( (TokenValueInjection!887 (toValue!1206 Int) (toChars!1065 Int)) )
))
(declare-datatypes ((String!3865 0))(
  ( (String!3866 (value!19562 String)) )
))
(declare-datatypes ((Regex!759 0))(
  ( (ElementMatch!759 (c!35118 C!2440)) (Concat!1317 (regOne!2030 Regex!759) (regTwo!2030 Regex!759)) (EmptyExpr!759) (Star!759 (reg!1088 Regex!759)) (EmptyLang!759) (Union!759 (regOne!2031 Regex!759) (regTwo!2031 Regex!759)) )
))
(declare-datatypes ((Rule!870 0))(
  ( (Rule!871 (regex!535 Regex!759) (tag!713 String!3865) (isSeparator!535 Bool) (transformation!535 TokenValueInjection!886)) )
))
(declare-datatypes ((List!2983 0))(
  ( (Nil!2973) (Cons!2973 (h!8370 Rule!870) (t!28105 List!2983)) )
))
(declare-fun rules!1920 () List!2983)

(get-info :version)

(assert (= (and b!178244 ((_ is Cons!2973) rules!1920)) b!178284))

(declare-fun order!1687 () Int)

(declare-fun order!1685 () Int)

(declare-fun dynLambda!1167 (Int Int) Int)

(declare-fun dynLambda!1168 (Int Int) Int)

(assert (=> b!178286 (< (dynLambda!1167 order!1685 (toValue!1206 (transformation!535 (h!8370 rules!1920)))) (dynLambda!1168 order!1687 lambda!5204))))

(declare-fun order!1689 () Int)

(declare-fun dynLambda!1169 (Int Int) Int)

(assert (=> b!178286 (< (dynLambda!1169 order!1689 (toChars!1065 (transformation!535 (h!8370 rules!1920)))) (dynLambda!1168 order!1687 lambda!5204))))

(assert (=> b!178244 true))

(declare-fun e!108276 () Bool)

(declare-fun e!108268 () Bool)

(assert (=> b!178244 (= e!108276 e!108268)))

(declare-fun res!80534 () Bool)

(assert (=> b!178244 (=> res!80534 e!108268)))

(declare-datatypes ((Token!814 0))(
  ( (Token!815 (value!19563 TokenValue!557) (rule!1050 Rule!870) (size!2453 Int) (originalCharacters!578 List!2982)) )
))
(declare-datatypes ((List!2984 0))(
  ( (Nil!2974) (Cons!2974 (h!8371 Token!814) (t!28106 List!2984)) )
))
(declare-fun tokens!465 () List!2984)

(declare-datatypes ((LexerInterface!421 0))(
  ( (LexerInterfaceExt!418 (__x!2602 Int)) (Lexer!419) )
))
(declare-fun thiss!17480 () LexerInterface!421)

(declare-datatypes ((tuple2!2926 0))(
  ( (tuple2!2927 (_1!1679 Token!814) (_2!1679 BalanceConc!1792)) )
))
(declare-datatypes ((Option!348 0))(
  ( (None!347) (Some!347 (v!13816 tuple2!2926)) )
))
(declare-fun isDefined!199 (Option!348) Bool)

(declare-fun maxPrefixZipperSequence!114 (LexerInterface!421 List!2983 BalanceConc!1792) Option!348)

(declare-fun seqFromList!447 (List!2982) BalanceConc!1792)

(assert (=> b!178244 (= res!80534 (not (isDefined!199 (maxPrefixZipperSequence!114 thiss!17480 rules!1920 (seqFromList!447 (originalCharacters!578 (h!8371 tokens!465)))))))))

(declare-datatypes ((Unit!2712 0))(
  ( (Unit!2713) )
))
(declare-fun lt!58154 () Unit!2712)

(declare-fun forallContained!102 (List!2984 Int Token!814) Unit!2712)

(assert (=> b!178244 (= lt!58154 (forallContained!102 tokens!465 lambda!5204 (h!8371 tokens!465)))))

(declare-fun lt!58139 () List!2982)

(assert (=> b!178244 (= lt!58139 (originalCharacters!578 (h!8371 tokens!465)))))

(declare-fun b!178245 () Bool)

(declare-fun e!108257 () Bool)

(declare-fun e!108269 () Bool)

(assert (=> b!178245 (= e!108257 e!108269)))

(declare-fun res!80522 () Bool)

(assert (=> b!178245 (=> (not res!80522) (not e!108269))))

(declare-fun lt!58151 () List!2982)

(declare-fun lt!58144 () List!2982)

(assert (=> b!178245 (= res!80522 (= lt!58151 lt!58144))))

(declare-fun separatorToken!170 () Token!814)

(declare-datatypes ((IArray!1787 0))(
  ( (IArray!1788 (innerList!951 List!2984)) )
))
(declare-datatypes ((Conc!893 0))(
  ( (Node!893 (left!2287 Conc!893) (right!2617 Conc!893) (csize!2016 Int) (cheight!1104 Int)) (Leaf!1500 (xs!3488 IArray!1787) (csize!2017 Int)) (Empty!893) )
))
(declare-datatypes ((BalanceConc!1794 0))(
  ( (BalanceConc!1795 (c!35119 Conc!893)) )
))
(declare-fun lt!58152 () BalanceConc!1794)

(declare-fun list!1093 (BalanceConc!1792) List!2982)

(declare-fun printWithSeparatorTokenWhenNeededRec!104 (LexerInterface!421 List!2983 BalanceConc!1794 Token!814 Int) BalanceConc!1792)

(assert (=> b!178245 (= lt!58144 (list!1093 (printWithSeparatorTokenWhenNeededRec!104 thiss!17480 rules!1920 lt!58152 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!114 (LexerInterface!421 List!2983 List!2984 Token!814) List!2982)

(assert (=> b!178245 (= lt!58151 (printWithSeparatorTokenWhenNeededList!114 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!108263 () Bool)

(assert (=> b!178246 (= e!108263 (and tp!85679 tp!85676))))

(declare-fun b!178247 () Bool)

(declare-fun res!80525 () Bool)

(declare-fun e!108261 () Bool)

(assert (=> b!178247 (=> (not res!80525) (not e!108261))))

(declare-fun isEmpty!1316 (List!2983) Bool)

(assert (=> b!178247 (= res!80525 (not (isEmpty!1316 rules!1920)))))

(declare-fun b!178248 () Bool)

(declare-fun res!80539 () Bool)

(assert (=> b!178248 (=> (not res!80539) (not e!108257))))

(declare-fun sepAndNonSepRulesDisjointChars!124 (List!2983 List!2983) Bool)

(assert (=> b!178248 (= res!80539 (sepAndNonSepRulesDisjointChars!124 rules!1920 rules!1920))))

(declare-fun b!178249 () Bool)

(assert (=> b!178249 (= e!108261 e!108257)))

(declare-fun res!80531 () Bool)

(assert (=> b!178249 (=> (not res!80531) (not e!108257))))

(declare-fun rulesProduceEachTokenIndividually!213 (LexerInterface!421 List!2983 BalanceConc!1794) Bool)

(assert (=> b!178249 (= res!80531 (rulesProduceEachTokenIndividually!213 thiss!17480 rules!1920 lt!58152))))

(declare-fun seqFromList!448 (List!2984) BalanceConc!1794)

(assert (=> b!178249 (= lt!58152 (seqFromList!448 tokens!465))))

(declare-fun e!108265 () Bool)

(declare-fun tp!85671 () Bool)

(declare-fun b!178250 () Bool)

(declare-fun e!108262 () Bool)

(declare-fun inv!21 (TokenValue!557) Bool)

(assert (=> b!178250 (= e!108262 (and (inv!21 (value!19563 separatorToken!170)) e!108265 tp!85671))))

(declare-fun b!178251 () Bool)

(declare-fun res!80535 () Bool)

(assert (=> b!178251 (=> (not res!80535) (not e!108257))))

(declare-fun rulesProduceIndividualToken!170 (LexerInterface!421 List!2983 Token!814) Bool)

(assert (=> b!178251 (= res!80535 (rulesProduceIndividualToken!170 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!178252 () Bool)

(declare-fun res!80528 () Bool)

(declare-fun e!108260 () Bool)

(assert (=> b!178252 (=> (not res!80528) (not e!108260))))

(declare-datatypes ((tuple2!2928 0))(
  ( (tuple2!2929 (_1!1680 Token!814) (_2!1680 List!2982)) )
))
(declare-fun lt!58149 () tuple2!2928)

(declare-fun isEmpty!1317 (List!2982) Bool)

(assert (=> b!178252 (= res!80528 (isEmpty!1317 (_2!1680 lt!58149)))))

(declare-fun e!108266 () Bool)

(assert (=> b!178253 (= e!108266 (and tp!85669 tp!85668))))

(declare-fun b!178254 () Bool)

(declare-fun res!80521 () Bool)

(assert (=> b!178254 (=> res!80521 e!108276)))

(declare-fun isEmpty!1318 (BalanceConc!1794) Bool)

(declare-datatypes ((tuple2!2930 0))(
  ( (tuple2!2931 (_1!1681 BalanceConc!1794) (_2!1681 BalanceConc!1792)) )
))
(declare-fun lex!221 (LexerInterface!421 List!2983 BalanceConc!1792) tuple2!2930)

(assert (=> b!178254 (= res!80521 (isEmpty!1318 (_1!1681 (lex!221 thiss!17480 rules!1920 (seqFromList!447 lt!58139)))))))

(declare-fun res!80519 () Bool)

(assert (=> b!178255 (=> (not res!80519) (not e!108257))))

(declare-fun forall!599 (List!2984 Int) Bool)

(assert (=> b!178255 (= res!80519 (forall!599 tokens!465 lambda!5203))))

(declare-fun b!178256 () Bool)

(declare-fun e!108258 () Bool)

(assert (=> b!178256 (= e!108268 e!108258)))

(declare-fun res!80529 () Bool)

(assert (=> b!178256 (=> res!80529 e!108258)))

(declare-fun lt!58141 () Bool)

(assert (=> b!178256 (= res!80529 (not lt!58141))))

(assert (=> b!178256 e!108260))

(declare-fun res!80538 () Bool)

(assert (=> b!178256 (=> (not res!80538) (not e!108260))))

(assert (=> b!178256 (= res!80538 (= (_1!1680 lt!58149) (h!8371 tokens!465)))))

(declare-datatypes ((Option!349 0))(
  ( (None!348) (Some!348 (v!13817 tuple2!2928)) )
))
(declare-fun lt!58142 () Option!349)

(declare-fun get!829 (Option!349) tuple2!2928)

(assert (=> b!178256 (= lt!58149 (get!829 lt!58142))))

(declare-fun isDefined!200 (Option!349) Bool)

(assert (=> b!178256 (isDefined!200 lt!58142)))

(declare-fun maxPrefix!151 (LexerInterface!421 List!2983 List!2982) Option!349)

(assert (=> b!178256 (= lt!58142 (maxPrefix!151 thiss!17480 rules!1920 lt!58139))))

(declare-fun e!108267 () Bool)

(assert (=> b!178257 (= e!108267 (and tp!85667 tp!85675))))

(declare-fun tp!85670 () Bool)

(declare-fun e!108277 () Bool)

(declare-fun b!178258 () Bool)

(declare-fun inv!3806 (String!3865) Bool)

(declare-fun inv!3809 (TokenValueInjection!886) Bool)

(assert (=> b!178258 (= e!108277 (and tp!85670 (inv!3806 (tag!713 (h!8370 rules!1920))) (inv!3809 (transformation!535 (h!8370 rules!1920))) e!108263))))

(declare-fun b!178259 () Bool)

(declare-fun e!108280 () Bool)

(declare-fun lt!58143 () List!2982)

(declare-fun ++!696 (List!2982 List!2982) List!2982)

(assert (=> b!178259 (= e!108280 (not (= lt!58151 (++!696 lt!58139 lt!58143))))))

(declare-fun b!178260 () Bool)

(assert (=> b!178260 (= e!108258 true)))

(declare-fun b!178261 () Bool)

(declare-fun e!108259 () Bool)

(assert (=> b!178261 (= e!108269 (not e!108259))))

(declare-fun res!80527 () Bool)

(assert (=> b!178261 (=> res!80527 e!108259)))

(assert (=> b!178261 (= res!80527 (not (= lt!58143 (list!1093 (printWithSeparatorTokenWhenNeededRec!104 thiss!17480 rules!1920 (seqFromList!448 (t!28106 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!58138 () List!2982)

(declare-fun lt!58137 () List!2982)

(assert (=> b!178261 (= lt!58138 lt!58137)))

(declare-fun lt!58145 () List!2982)

(assert (=> b!178261 (= lt!58137 (++!696 lt!58139 lt!58145))))

(declare-fun lt!58153 () List!2982)

(assert (=> b!178261 (= lt!58138 (++!696 (++!696 lt!58139 lt!58153) lt!58143))))

(declare-fun lt!58146 () Unit!2712)

(declare-fun lemmaConcatAssociativity!224 (List!2982 List!2982 List!2982) Unit!2712)

(assert (=> b!178261 (= lt!58146 (lemmaConcatAssociativity!224 lt!58139 lt!58153 lt!58143))))

(declare-fun charsOf!190 (Token!814) BalanceConc!1792)

(assert (=> b!178261 (= lt!58139 (list!1093 (charsOf!190 (h!8371 tokens!465))))))

(assert (=> b!178261 (= lt!58145 (++!696 lt!58153 lt!58143))))

(assert (=> b!178261 (= lt!58143 (printWithSeparatorTokenWhenNeededList!114 thiss!17480 rules!1920 (t!28106 tokens!465) separatorToken!170))))

(assert (=> b!178261 (= lt!58153 (list!1093 (charsOf!190 separatorToken!170)))))

(declare-fun b!178262 () Bool)

(declare-fun res!80523 () Bool)

(assert (=> b!178262 (=> res!80523 e!108258)))

(declare-fun rulesProduceEachTokenIndividuallyList!123 (LexerInterface!421 List!2983 List!2984) Bool)

(assert (=> b!178262 (= res!80523 (not (rulesProduceEachTokenIndividuallyList!123 thiss!17480 rules!1920 tokens!465)))))

(declare-fun b!178263 () Bool)

(declare-fun e!108273 () Bool)

(assert (=> b!178263 (= e!108273 e!108276)))

(declare-fun res!80537 () Bool)

(assert (=> b!178263 (=> res!80537 e!108276)))

(declare-fun lt!58150 () List!2982)

(declare-fun lt!58140 () List!2982)

(assert (=> b!178263 (= res!80537 (or (not (= lt!58140 lt!58150)) (not (= lt!58150 lt!58139)) (not (= lt!58140 lt!58139))))))

(declare-fun printList!105 (LexerInterface!421 List!2984) List!2982)

(assert (=> b!178263 (= lt!58150 (printList!105 thiss!17480 (Cons!2974 (h!8371 tokens!465) Nil!2974)))))

(declare-fun lt!58147 () BalanceConc!1792)

(assert (=> b!178263 (= lt!58140 (list!1093 lt!58147))))

(declare-fun lt!58148 () BalanceConc!1794)

(declare-fun printTailRec!115 (LexerInterface!421 BalanceConc!1794 Int BalanceConc!1792) BalanceConc!1792)

(assert (=> b!178263 (= lt!58147 (printTailRec!115 thiss!17480 lt!58148 0 (BalanceConc!1793 Empty!892)))))

(declare-fun print!152 (LexerInterface!421 BalanceConc!1794) BalanceConc!1792)

(assert (=> b!178263 (= lt!58147 (print!152 thiss!17480 lt!58148))))

(declare-fun singletonSeq!87 (Token!814) BalanceConc!1794)

(assert (=> b!178263 (= lt!58148 (singletonSeq!87 (h!8371 tokens!465)))))

(declare-fun b!178264 () Bool)

(declare-fun res!80536 () Bool)

(assert (=> b!178264 (=> (not res!80536) (not e!108269))))

(assert (=> b!178264 (= res!80536 (= (list!1093 (seqFromList!447 lt!58151)) lt!58144))))

(declare-fun tp!85674 () Bool)

(declare-fun e!108279 () Bool)

(declare-fun b!178265 () Bool)

(assert (=> b!178265 (= e!108279 (and tp!85674 (inv!3806 (tag!713 (rule!1050 (h!8371 tokens!465)))) (inv!3809 (transformation!535 (rule!1050 (h!8371 tokens!465)))) e!108266))))

(declare-fun b!178266 () Bool)

(assert (=> b!178266 (= e!108259 e!108273)))

(declare-fun res!80532 () Bool)

(assert (=> b!178266 (=> res!80532 e!108273)))

(assert (=> b!178266 (= res!80532 e!108280)))

(declare-fun res!80533 () Bool)

(assert (=> b!178266 (=> (not res!80533) (not e!108280))))

(assert (=> b!178266 (= res!80533 (not lt!58141))))

(assert (=> b!178266 (= lt!58141 (= lt!58151 lt!58137))))

(declare-fun b!178267 () Bool)

(declare-fun e!108264 () Bool)

(declare-fun tp!85673 () Bool)

(assert (=> b!178267 (= e!108264 (and e!108277 tp!85673))))

(declare-fun b!178268 () Bool)

(declare-fun res!80520 () Bool)

(assert (=> b!178268 (=> (not res!80520) (not e!108257))))

(assert (=> b!178268 (= res!80520 (isSeparator!535 (rule!1050 separatorToken!170)))))

(declare-fun b!178269 () Bool)

(declare-fun matchR!97 (Regex!759 List!2982) Bool)

(assert (=> b!178269 (= e!108260 (matchR!97 (regex!535 (rule!1050 (h!8371 tokens!465))) lt!58139))))

(declare-fun tp!85672 () Bool)

(declare-fun e!108272 () Bool)

(declare-fun b!178270 () Bool)

(assert (=> b!178270 (= e!108272 (and (inv!21 (value!19563 (h!8371 tokens!465))) e!108279 tp!85672))))

(declare-fun res!80530 () Bool)

(assert (=> start!19330 (=> (not res!80530) (not e!108261))))

(assert (=> start!19330 (= res!80530 ((_ is Lexer!419) thiss!17480))))

(assert (=> start!19330 e!108261))

(assert (=> start!19330 true))

(assert (=> start!19330 e!108264))

(declare-fun inv!3810 (Token!814) Bool)

(assert (=> start!19330 (and (inv!3810 separatorToken!170) e!108262)))

(declare-fun e!108256 () Bool)

(assert (=> start!19330 e!108256))

(declare-fun b!178271 () Bool)

(declare-fun res!80540 () Bool)

(assert (=> b!178271 (=> (not res!80540) (not e!108261))))

(declare-fun rulesInvariant!387 (LexerInterface!421 List!2983) Bool)

(assert (=> b!178271 (= res!80540 (rulesInvariant!387 thiss!17480 rules!1920))))

(declare-fun tp!85678 () Bool)

(declare-fun b!178272 () Bool)

(assert (=> b!178272 (= e!108265 (and tp!85678 (inv!3806 (tag!713 (rule!1050 separatorToken!170))) (inv!3809 (transformation!535 (rule!1050 separatorToken!170))) e!108267))))

(declare-fun b!178273 () Bool)

(declare-fun res!80526 () Bool)

(assert (=> b!178273 (=> (not res!80526) (not e!108257))))

(assert (=> b!178273 (= res!80526 ((_ is Cons!2974) tokens!465))))

(declare-fun b!178274 () Bool)

(declare-fun res!80524 () Bool)

(assert (=> b!178274 (=> res!80524 e!108276)))

(assert (=> b!178274 (= res!80524 (not (rulesProduceIndividualToken!170 thiss!17480 rules!1920 (h!8371 tokens!465))))))

(declare-fun b!178275 () Bool)

(declare-fun tp!85677 () Bool)

(assert (=> b!178275 (= e!108256 (and (inv!3810 (h!8371 tokens!465)) e!108272 tp!85677))))

(assert (= (and start!19330 res!80530) b!178247))

(assert (= (and b!178247 res!80525) b!178271))

(assert (= (and b!178271 res!80540) b!178249))

(assert (= (and b!178249 res!80531) b!178251))

(assert (= (and b!178251 res!80535) b!178268))

(assert (= (and b!178268 res!80520) b!178255))

(assert (= (and b!178255 res!80519) b!178248))

(assert (= (and b!178248 res!80539) b!178273))

(assert (= (and b!178273 res!80526) b!178245))

(assert (= (and b!178245 res!80522) b!178264))

(assert (= (and b!178264 res!80536) b!178261))

(assert (= (and b!178261 (not res!80527)) b!178266))

(assert (= (and b!178266 res!80533) b!178259))

(assert (= (and b!178266 (not res!80532)) b!178263))

(assert (= (and b!178263 (not res!80537)) b!178274))

(assert (= (and b!178274 (not res!80524)) b!178254))

(assert (= (and b!178254 (not res!80521)) b!178244))

(assert (= (and b!178244 (not res!80534)) b!178256))

(assert (= (and b!178256 res!80538) b!178252))

(assert (= (and b!178252 res!80528) b!178269))

(assert (= (and b!178256 (not res!80529)) b!178262))

(assert (= (and b!178262 (not res!80523)) b!178260))

(assert (= b!178258 b!178246))

(assert (= b!178267 b!178258))

(assert (= (and start!19330 ((_ is Cons!2973) rules!1920)) b!178267))

(assert (= b!178272 b!178257))

(assert (= b!178250 b!178272))

(assert (= start!19330 b!178250))

(assert (= b!178265 b!178253))

(assert (= b!178270 b!178265))

(assert (= b!178275 b!178270))

(assert (= (and start!19330 ((_ is Cons!2974) tokens!465)) b!178275))

(declare-fun m!180101 () Bool)

(assert (=> b!178274 m!180101))

(declare-fun m!180103 () Bool)

(assert (=> b!178245 m!180103))

(assert (=> b!178245 m!180103))

(declare-fun m!180105 () Bool)

(assert (=> b!178245 m!180105))

(declare-fun m!180107 () Bool)

(assert (=> b!178245 m!180107))

(declare-fun m!180109 () Bool)

(assert (=> b!178259 m!180109))

(declare-fun m!180111 () Bool)

(assert (=> b!178264 m!180111))

(assert (=> b!178264 m!180111))

(declare-fun m!180113 () Bool)

(assert (=> b!178264 m!180113))

(declare-fun m!180115 () Bool)

(assert (=> b!178272 m!180115))

(declare-fun m!180117 () Bool)

(assert (=> b!178272 m!180117))

(declare-fun m!180119 () Bool)

(assert (=> b!178247 m!180119))

(declare-fun m!180121 () Bool)

(assert (=> b!178251 m!180121))

(declare-fun m!180123 () Bool)

(assert (=> b!178258 m!180123))

(declare-fun m!180125 () Bool)

(assert (=> b!178258 m!180125))

(declare-fun m!180127 () Bool)

(assert (=> b!178269 m!180127))

(declare-fun m!180129 () Bool)

(assert (=> b!178255 m!180129))

(declare-fun m!180131 () Bool)

(assert (=> b!178270 m!180131))

(declare-fun m!180133 () Bool)

(assert (=> start!19330 m!180133))

(declare-fun m!180135 () Bool)

(assert (=> b!178262 m!180135))

(declare-fun m!180137 () Bool)

(assert (=> b!178244 m!180137))

(assert (=> b!178244 m!180137))

(declare-fun m!180139 () Bool)

(assert (=> b!178244 m!180139))

(assert (=> b!178244 m!180139))

(declare-fun m!180141 () Bool)

(assert (=> b!178244 m!180141))

(declare-fun m!180143 () Bool)

(assert (=> b!178244 m!180143))

(declare-fun m!180145 () Bool)

(assert (=> b!178252 m!180145))

(declare-fun m!180147 () Bool)

(assert (=> b!178254 m!180147))

(assert (=> b!178254 m!180147))

(declare-fun m!180149 () Bool)

(assert (=> b!178254 m!180149))

(declare-fun m!180151 () Bool)

(assert (=> b!178254 m!180151))

(declare-fun m!180153 () Bool)

(assert (=> b!178249 m!180153))

(declare-fun m!180155 () Bool)

(assert (=> b!178249 m!180155))

(declare-fun m!180157 () Bool)

(assert (=> b!178261 m!180157))

(declare-fun m!180159 () Bool)

(assert (=> b!178261 m!180159))

(declare-fun m!180161 () Bool)

(assert (=> b!178261 m!180161))

(declare-fun m!180163 () Bool)

(assert (=> b!178261 m!180163))

(assert (=> b!178261 m!180161))

(declare-fun m!180165 () Bool)

(assert (=> b!178261 m!180165))

(declare-fun m!180167 () Bool)

(assert (=> b!178261 m!180167))

(declare-fun m!180169 () Bool)

(assert (=> b!178261 m!180169))

(declare-fun m!180171 () Bool)

(assert (=> b!178261 m!180171))

(declare-fun m!180173 () Bool)

(assert (=> b!178261 m!180173))

(assert (=> b!178261 m!180169))

(declare-fun m!180175 () Bool)

(assert (=> b!178261 m!180175))

(declare-fun m!180177 () Bool)

(assert (=> b!178261 m!180177))

(declare-fun m!180179 () Bool)

(assert (=> b!178261 m!180179))

(assert (=> b!178261 m!180171))

(declare-fun m!180181 () Bool)

(assert (=> b!178261 m!180181))

(assert (=> b!178261 m!180157))

(assert (=> b!178261 m!180177))

(declare-fun m!180183 () Bool)

(assert (=> b!178263 m!180183))

(declare-fun m!180185 () Bool)

(assert (=> b!178263 m!180185))

(declare-fun m!180187 () Bool)

(assert (=> b!178263 m!180187))

(declare-fun m!180189 () Bool)

(assert (=> b!178263 m!180189))

(declare-fun m!180191 () Bool)

(assert (=> b!178263 m!180191))

(declare-fun m!180193 () Bool)

(assert (=> b!178256 m!180193))

(declare-fun m!180195 () Bool)

(assert (=> b!178256 m!180195))

(declare-fun m!180197 () Bool)

(assert (=> b!178256 m!180197))

(declare-fun m!180199 () Bool)

(assert (=> b!178265 m!180199))

(declare-fun m!180201 () Bool)

(assert (=> b!178265 m!180201))

(declare-fun m!180203 () Bool)

(assert (=> b!178271 m!180203))

(declare-fun m!180205 () Bool)

(assert (=> b!178275 m!180205))

(declare-fun m!180207 () Bool)

(assert (=> b!178250 m!180207))

(declare-fun m!180209 () Bool)

(assert (=> b!178248 m!180209))

(check-sat (not b_next!6843) (not b!178254) (not b!178272) b_and!12101 (not b!178247) (not b!178265) (not b!178274) (not start!19330) (not b_next!6837) (not b_next!6839) b_and!12109 (not b!178267) b_and!12107 (not b!178259) (not b!178245) (not b_next!6833) (not b!178269) (not b!178284) (not b!178263) (not b!178262) (not b!178251) (not b!178264) (not b!178252) (not b!178249) (not b!178271) (not b!178275) (not b!178256) (not b!178261) (not b_next!6841) (not b!178255) (not b!178258) b_and!12103 (not b!178250) b_and!12105 (not b!178248) (not b!178270) b_and!12111 (not b!178244) (not b_next!6835))
(check-sat (not b_next!6843) (not b_next!6833) b_and!12101 (not b_next!6837) (not b_next!6839) b_and!12109 b_and!12107 (not b_next!6841) b_and!12103 b_and!12105 b_and!12111 (not b_next!6835))
