; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!360184 () Bool)

(assert start!360184)

(declare-fun b!3846497 () Bool)

(declare-fun b_free!102949 () Bool)

(declare-fun b_next!103653 () Bool)

(assert (=> b!3846497 (= b_free!102949 (not b_next!103653))))

(declare-fun tp!1165815 () Bool)

(declare-fun b_and!286947 () Bool)

(assert (=> b!3846497 (= tp!1165815 b_and!286947)))

(declare-fun b_free!102951 () Bool)

(declare-fun b_next!103655 () Bool)

(assert (=> b!3846497 (= b_free!102951 (not b_next!103655))))

(declare-fun tp!1165822 () Bool)

(declare-fun b_and!286949 () Bool)

(assert (=> b!3846497 (= tp!1165822 b_and!286949)))

(declare-fun b!3846507 () Bool)

(declare-fun b_free!102953 () Bool)

(declare-fun b_next!103657 () Bool)

(assert (=> b!3846507 (= b_free!102953 (not b_next!103657))))

(declare-fun tp!1165830 () Bool)

(declare-fun b_and!286951 () Bool)

(assert (=> b!3846507 (= tp!1165830 b_and!286951)))

(declare-fun b_free!102955 () Bool)

(declare-fun b_next!103659 () Bool)

(assert (=> b!3846507 (= b_free!102955 (not b_next!103659))))

(declare-fun tp!1165816 () Bool)

(declare-fun b_and!286953 () Bool)

(assert (=> b!3846507 (= tp!1165816 b_and!286953)))

(declare-fun b!3846506 () Bool)

(declare-fun b_free!102957 () Bool)

(declare-fun b_next!103661 () Bool)

(assert (=> b!3846506 (= b_free!102957 (not b_next!103661))))

(declare-fun tp!1165829 () Bool)

(declare-fun b_and!286955 () Bool)

(assert (=> b!3846506 (= tp!1165829 b_and!286955)))

(declare-fun b_free!102959 () Bool)

(declare-fun b_next!103663 () Bool)

(assert (=> b!3846506 (= b_free!102959 (not b_next!103663))))

(declare-fun tp!1165814 () Bool)

(declare-fun b_and!286957 () Bool)

(assert (=> b!3846506 (= tp!1165814 b_and!286957)))

(declare-fun b!3846476 () Bool)

(declare-fun res!1557062 () Bool)

(declare-fun e!2377257 () Bool)

(assert (=> b!3846476 (=> res!1557062 e!2377257)))

(declare-datatypes ((C!22584 0))(
  ( (C!22585 (val!13386 Int)) )
))
(declare-datatypes ((List!40868 0))(
  ( (Nil!40744) (Cons!40744 (h!46164 C!22584) (t!311097 List!40868)) )
))
(declare-datatypes ((IArray!25015 0))(
  ( (IArray!25016 (innerList!12565 List!40868)) )
))
(declare-datatypes ((Conc!12505 0))(
  ( (Node!12505 (left!31442 Conc!12505) (right!31772 Conc!12505) (csize!25240 Int) (cheight!12716 Int)) (Leaf!19359 (xs!15811 IArray!25015) (csize!25241 Int)) (Empty!12505) )
))
(declare-datatypes ((BalanceConc!24604 0))(
  ( (BalanceConc!24605 (c!670014 Conc!12505)) )
))
(declare-datatypes ((List!40869 0))(
  ( (Nil!40745) (Cons!40745 (h!46165 (_ BitVec 16)) (t!311098 List!40869)) )
))
(declare-datatypes ((TokenValue!6524 0))(
  ( (FloatLiteralValue!13048 (text!46113 List!40869)) (TokenValueExt!6523 (__x!25265 Int)) (Broken!32620 (value!199987 List!40869)) (Object!6647) (End!6524) (Def!6524) (Underscore!6524) (Match!6524) (Else!6524) (Error!6524) (Case!6524) (If!6524) (Extends!6524) (Abstract!6524) (Class!6524) (Val!6524) (DelimiterValue!13048 (del!6584 List!40869)) (KeywordValue!6530 (value!199988 List!40869)) (CommentValue!13048 (value!199989 List!40869)) (WhitespaceValue!13048 (value!199990 List!40869)) (IndentationValue!6524 (value!199991 List!40869)) (String!46337) (Int32!6524) (Broken!32621 (value!199992 List!40869)) (Boolean!6525) (Unit!58425) (OperatorValue!6527 (op!6584 List!40869)) (IdentifierValue!13048 (value!199993 List!40869)) (IdentifierValue!13049 (value!199994 List!40869)) (WhitespaceValue!13049 (value!199995 List!40869)) (True!13048) (False!13048) (Broken!32622 (value!199996 List!40869)) (Broken!32623 (value!199997 List!40869)) (True!13049) (RightBrace!6524) (RightBracket!6524) (Colon!6524) (Null!6524) (Comma!6524) (LeftBracket!6524) (False!13049) (LeftBrace!6524) (ImaginaryLiteralValue!6524 (text!46114 List!40869)) (StringLiteralValue!19572 (value!199998 List!40869)) (EOFValue!6524 (value!199999 List!40869)) (IdentValue!6524 (value!200000 List!40869)) (DelimiterValue!13049 (value!200001 List!40869)) (DedentValue!6524 (value!200002 List!40869)) (NewLineValue!6524 (value!200003 List!40869)) (IntegerValue!19572 (value!200004 (_ BitVec 32)) (text!46115 List!40869)) (IntegerValue!19573 (value!200005 Int) (text!46116 List!40869)) (Times!6524) (Or!6524) (Equal!6524) (Minus!6524) (Broken!32624 (value!200006 List!40869)) (And!6524) (Div!6524) (LessEqual!6524) (Mod!6524) (Concat!17723) (Not!6524) (Plus!6524) (SpaceValue!6524 (value!200007 List!40869)) (IntegerValue!19574 (value!200008 Int) (text!46117 List!40869)) (StringLiteralValue!19573 (text!46118 List!40869)) (FloatLiteralValue!13049 (text!46119 List!40869)) (BytesLiteralValue!6524 (value!200009 List!40869)) (CommentValue!13049 (value!200010 List!40869)) (StringLiteralValue!19574 (value!200011 List!40869)) (ErrorTokenValue!6524 (msg!6585 List!40869)) )
))
(declare-datatypes ((String!46338 0))(
  ( (String!46339 (value!200012 String)) )
))
(declare-datatypes ((Regex!11199 0))(
  ( (ElementMatch!11199 (c!670015 C!22584)) (Concat!17724 (regOne!22910 Regex!11199) (regTwo!22910 Regex!11199)) (EmptyExpr!11199) (Star!11199 (reg!11528 Regex!11199)) (EmptyLang!11199) (Union!11199 (regOne!22911 Regex!11199) (regTwo!22911 Regex!11199)) )
))
(declare-datatypes ((TokenValueInjection!12476 0))(
  ( (TokenValueInjection!12477 (toValue!8710 Int) (toChars!8569 Int)) )
))
(declare-datatypes ((Rule!12388 0))(
  ( (Rule!12389 (regex!6294 Regex!11199) (tag!7154 String!46338) (isSeparator!6294 Bool) (transformation!6294 TokenValueInjection!12476)) )
))
(declare-datatypes ((List!40870 0))(
  ( (Nil!40746) (Cons!40746 (h!46166 Rule!12388) (t!311099 List!40870)) )
))
(declare-fun rules!2768 () List!40870)

(declare-datatypes ((Token!11726 0))(
  ( (Token!11727 (value!200013 TokenValue!6524) (rule!9140 Rule!12388) (size!30651 Int) (originalCharacters!6894 List!40868)) )
))
(declare-datatypes ((tuple2!39926 0))(
  ( (tuple2!39927 (_1!23097 Token!11726) (_2!23097 List!40868)) )
))
(declare-datatypes ((Option!8712 0))(
  ( (None!8711) (Some!8711 (v!39003 tuple2!39926)) )
))
(declare-fun lt!1335672 () Option!8712)

(declare-fun contains!8240 (List!40870 Rule!12388) Bool)

(assert (=> b!3846476 (= res!1557062 (not (contains!8240 rules!2768 (rule!9140 (_1!23097 (v!39003 lt!1335672))))))))

(declare-fun b!3846477 () Bool)

(declare-fun e!2377247 () Bool)

(declare-fun e!2377248 () Bool)

(assert (=> b!3846477 (= e!2377247 e!2377248)))

(declare-fun res!1557063 () Bool)

(assert (=> b!3846477 (=> (not res!1557063) (not e!2377248))))

(get-info :version)

(assert (=> b!3846477 (= res!1557063 ((_ is Some!8711) lt!1335672))))

(declare-fun lt!1335666 () List!40868)

(declare-datatypes ((LexerInterface!5883 0))(
  ( (LexerInterfaceExt!5880 (__x!25266 Int)) (Lexer!5881) )
))
(declare-fun thiss!20629 () LexerInterface!5883)

(declare-fun maxPrefix!3187 (LexerInterface!5883 List!40870 List!40868) Option!8712)

(assert (=> b!3846477 (= lt!1335672 (maxPrefix!3187 thiss!20629 rules!2768 lt!1335666))))

(declare-fun b!3846478 () Bool)

(declare-fun res!1557072 () Bool)

(declare-fun e!2377233 () Bool)

(assert (=> b!3846478 (=> (not res!1557072) (not e!2377233))))

(declare-fun isEmpty!24102 (List!40870) Bool)

(assert (=> b!3846478 (= res!1557072 (not (isEmpty!24102 rules!2768)))))

(declare-fun e!2377246 () Bool)

(declare-datatypes ((List!40871 0))(
  ( (Nil!40747) (Cons!40747 (h!46167 Token!11726) (t!311100 List!40871)) )
))
(declare-fun suffixTokens!72 () List!40871)

(declare-fun tp!1165827 () Bool)

(declare-fun e!2377243 () Bool)

(declare-fun b!3846479 () Bool)

(declare-fun inv!21 (TokenValue!6524) Bool)

(assert (=> b!3846479 (= e!2377246 (and (inv!21 (value!200013 (h!46167 suffixTokens!72))) e!2377243 tp!1165827))))

(declare-fun e!2377245 () Bool)

(declare-fun tp!1165818 () Bool)

(declare-fun b!3846480 () Bool)

(declare-fun inv!54888 (Token!11726) Bool)

(assert (=> b!3846480 (= e!2377245 (and (inv!54888 (h!46167 suffixTokens!72)) e!2377246 tp!1165818))))

(declare-fun b!3846481 () Bool)

(declare-fun e!2377232 () Bool)

(declare-fun e!2377234 () Bool)

(assert (=> b!3846481 (= e!2377232 e!2377234)))

(declare-fun res!1557073 () Bool)

(assert (=> b!3846481 (=> res!1557073 e!2377234)))

(declare-fun lt!1335671 () Int)

(declare-fun lt!1335685 () Int)

(declare-fun lt!1335670 () Int)

(assert (=> b!3846481 (= res!1557073 (not (= (+ lt!1335671 lt!1335685) lt!1335670)))))

(declare-fun size!30652 (List!40868) Int)

(assert (=> b!3846481 (= lt!1335670 (size!30652 lt!1335666))))

(declare-fun b!3846482 () Bool)

(declare-fun res!1557070 () Bool)

(assert (=> b!3846482 (=> (not res!1557070) (not e!2377233))))

(declare-fun rulesInvariant!5226 (LexerInterface!5883 List!40870) Bool)

(assert (=> b!3846482 (= res!1557070 (rulesInvariant!5226 thiss!20629 rules!2768))))

(declare-fun b!3846483 () Bool)

(declare-fun e!2377250 () Bool)

(declare-fun tp!1165825 () Bool)

(declare-fun e!2377255 () Bool)

(declare-fun inv!54885 (String!46338) Bool)

(declare-fun inv!54889 (TokenValueInjection!12476) Bool)

(assert (=> b!3846483 (= e!2377250 (and tp!1165825 (inv!54885 (tag!7154 (h!46166 rules!2768))) (inv!54889 (transformation!6294 (h!46166 rules!2768))) e!2377255))))

(declare-fun b!3846484 () Bool)

(assert (=> b!3846484 (= e!2377233 e!2377247)))

(declare-fun res!1557067 () Bool)

(assert (=> b!3846484 (=> (not res!1557067) (not e!2377247))))

(declare-fun suffixResult!91 () List!40868)

(declare-datatypes ((tuple2!39928 0))(
  ( (tuple2!39929 (_1!23098 List!40871) (_2!23098 List!40868)) )
))
(declare-fun lt!1335683 () tuple2!39928)

(declare-fun lt!1335680 () List!40871)

(assert (=> b!3846484 (= res!1557067 (= lt!1335683 (tuple2!39929 lt!1335680 suffixResult!91)))))

(declare-fun lexList!1651 (LexerInterface!5883 List!40870 List!40868) tuple2!39928)

(assert (=> b!3846484 (= lt!1335683 (lexList!1651 thiss!20629 rules!2768 lt!1335666))))

(declare-fun prefixTokens!80 () List!40871)

(declare-fun ++!10345 (List!40871 List!40871) List!40871)

(assert (=> b!3846484 (= lt!1335680 (++!10345 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40868)

(declare-fun suffix!1176 () List!40868)

(declare-fun ++!10346 (List!40868 List!40868) List!40868)

(assert (=> b!3846484 (= lt!1335666 (++!10346 prefix!426 suffix!1176))))

(declare-fun b!3846485 () Bool)

(declare-fun e!2377242 () Bool)

(assert (=> b!3846485 (= e!2377242 e!2377232)))

(declare-fun res!1557068 () Bool)

(assert (=> b!3846485 (=> res!1557068 e!2377232)))

(declare-fun lt!1335678 () Int)

(assert (=> b!3846485 (= res!1557068 (>= lt!1335685 lt!1335678))))

(assert (=> b!3846485 (= lt!1335678 (size!30652 suffix!1176))))

(assert (=> b!3846485 (= lt!1335685 (size!30652 (_2!23097 (v!39003 lt!1335672))))))

(declare-fun b!3846486 () Bool)

(declare-fun res!1557074 () Bool)

(assert (=> b!3846486 (=> res!1557074 e!2377257)))

(declare-fun lt!1335677 () List!40868)

(declare-fun isEmpty!24103 (List!40868) Bool)

(assert (=> b!3846486 (= res!1557074 (isEmpty!24103 lt!1335677))))

(declare-fun b!3846487 () Bool)

(declare-fun tp!1165820 () Bool)

(declare-fun e!2377238 () Bool)

(declare-fun e!2377237 () Bool)

(assert (=> b!3846487 (= e!2377238 (and (inv!21 (value!200013 (h!46167 prefixTokens!80))) e!2377237 tp!1165820))))

(declare-fun b!3846488 () Bool)

(declare-fun res!1557066 () Bool)

(assert (=> b!3846488 (=> (not res!1557066) (not e!2377233))))

(declare-fun isEmpty!24104 (List!40871) Bool)

(assert (=> b!3846488 (= res!1557066 (not (isEmpty!24104 prefixTokens!80)))))

(declare-fun b!3846489 () Bool)

(declare-fun e!2377258 () Bool)

(declare-fun tp!1165828 () Bool)

(assert (=> b!3846489 (= e!2377237 (and tp!1165828 (inv!54885 (tag!7154 (rule!9140 (h!46167 prefixTokens!80)))) (inv!54889 (transformation!6294 (rule!9140 (h!46167 prefixTokens!80)))) e!2377258))))

(declare-fun res!1557064 () Bool)

(assert (=> start!360184 (=> (not res!1557064) (not e!2377233))))

(assert (=> start!360184 (= res!1557064 ((_ is Lexer!5881) thiss!20629))))

(assert (=> start!360184 e!2377233))

(declare-fun e!2377240 () Bool)

(assert (=> start!360184 e!2377240))

(assert (=> start!360184 true))

(declare-fun e!2377256 () Bool)

(assert (=> start!360184 e!2377256))

(declare-fun e!2377236 () Bool)

(assert (=> start!360184 e!2377236))

(declare-fun e!2377244 () Bool)

(assert (=> start!360184 e!2377244))

(assert (=> start!360184 e!2377245))

(declare-fun e!2377231 () Bool)

(assert (=> start!360184 e!2377231))

(declare-fun b!3846490 () Bool)

(declare-fun tp!1165824 () Bool)

(assert (=> b!3846490 (= e!2377236 (and e!2377250 tp!1165824))))

(declare-fun b!3846491 () Bool)

(declare-fun res!1557059 () Bool)

(assert (=> b!3846491 (=> res!1557059 e!2377257)))

(declare-fun lt!1335681 () List!40868)

(assert (=> b!3846491 (= res!1557059 (not (= lt!1335666 lt!1335681)))))

(declare-fun b!3846492 () Bool)

(declare-fun tp_is_empty!19369 () Bool)

(declare-fun tp!1165817 () Bool)

(assert (=> b!3846492 (= e!2377240 (and tp_is_empty!19369 tp!1165817))))

(declare-fun b!3846493 () Bool)

(declare-fun res!1557060 () Bool)

(assert (=> b!3846493 (=> (not res!1557060) (not e!2377233))))

(assert (=> b!3846493 (= res!1557060 (not (isEmpty!24103 prefix!426)))))

(declare-fun b!3846494 () Bool)

(declare-fun tp!1165819 () Bool)

(declare-fun e!2377241 () Bool)

(assert (=> b!3846494 (= e!2377243 (and tp!1165819 (inv!54885 (tag!7154 (rule!9140 (h!46167 suffixTokens!72)))) (inv!54889 (transformation!6294 (rule!9140 (h!46167 suffixTokens!72)))) e!2377241))))

(declare-fun b!3846495 () Bool)

(declare-fun tp!1165826 () Bool)

(assert (=> b!3846495 (= e!2377256 (and tp_is_empty!19369 tp!1165826))))

(declare-fun b!3846496 () Bool)

(declare-fun tp!1165821 () Bool)

(assert (=> b!3846496 (= e!2377244 (and (inv!54888 (h!46167 prefixTokens!80)) e!2377238 tp!1165821))))

(assert (=> b!3846497 (= e!2377258 (and tp!1165815 tp!1165822))))

(declare-fun b!3846498 () Bool)

(declare-fun e!2377239 () Bool)

(assert (=> b!3846498 (= e!2377257 e!2377239)))

(declare-fun res!1557071 () Bool)

(assert (=> b!3846498 (=> res!1557071 e!2377239)))

(declare-fun lt!1335673 () TokenValue!6524)

(assert (=> b!3846498 (= res!1557071 (not (= lt!1335672 (Some!8711 (tuple2!39927 (Token!11727 lt!1335673 (rule!9140 (_1!23097 (v!39003 lt!1335672))) lt!1335671 lt!1335677) (_2!23097 (v!39003 lt!1335672)))))))))

(declare-datatypes ((Unit!58426 0))(
  ( (Unit!58427) )
))
(declare-fun lt!1335679 () Unit!58426)

(declare-fun lt!1335669 () BalanceConc!24604)

(declare-fun lemmaSemiInverse!1666 (TokenValueInjection!12476 BalanceConc!24604) Unit!58426)

(assert (=> b!3846498 (= lt!1335679 (lemmaSemiInverse!1666 (transformation!6294 (rule!9140 (_1!23097 (v!39003 lt!1335672)))) lt!1335669))))

(declare-fun b!3846499 () Bool)

(declare-fun tp!1165823 () Bool)

(assert (=> b!3846499 (= e!2377231 (and tp_is_empty!19369 tp!1165823))))

(declare-fun b!3846500 () Bool)

(declare-fun e!2377249 () Bool)

(assert (=> b!3846500 (= e!2377249 (= (size!30651 (_1!23097 (v!39003 lt!1335672))) (size!30652 (originalCharacters!6894 (_1!23097 (v!39003 lt!1335672))))))))

(declare-fun b!3846501 () Bool)

(assert (=> b!3846501 (= e!2377239 true)))

(declare-fun lt!1335668 () Bool)

(declare-fun matchR!5346 (Regex!11199 List!40868) Bool)

(assert (=> b!3846501 (= lt!1335668 (matchR!5346 (regex!6294 (rule!9140 (_1!23097 (v!39003 lt!1335672)))) lt!1335677))))

(declare-fun b!3846502 () Bool)

(declare-fun res!1557075 () Bool)

(assert (=> b!3846502 (=> (not res!1557075) (not e!2377247))))

(assert (=> b!3846502 (= res!1557075 (= (lexList!1651 thiss!20629 rules!2768 suffix!1176) (tuple2!39929 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3846503 () Bool)

(declare-fun res!1557065 () Bool)

(assert (=> b!3846503 (=> res!1557065 e!2377242)))

(declare-fun lt!1335667 () tuple2!39928)

(assert (=> b!3846503 (= res!1557065 (not (= lt!1335683 (tuple2!39929 (++!10345 (Cons!40747 (_1!23097 (v!39003 lt!1335672)) Nil!40747) (_1!23098 lt!1335667)) (_2!23098 lt!1335667)))))))

(declare-fun b!3846504 () Bool)

(assert (=> b!3846504 (= e!2377234 e!2377257)))

(declare-fun res!1557058 () Bool)

(assert (=> b!3846504 (=> res!1557058 e!2377257)))

(declare-fun lt!1335675 () Int)

(assert (=> b!3846504 (= res!1557058 (or (not (= (+ lt!1335675 lt!1335678) lt!1335670)) (<= lt!1335671 lt!1335675)))))

(assert (=> b!3846504 (= lt!1335675 (size!30652 prefix!426))))

(declare-fun b!3846505 () Bool)

(assert (=> b!3846505 (= e!2377248 (not e!2377242))))

(declare-fun res!1557061 () Bool)

(assert (=> b!3846505 (=> res!1557061 e!2377242)))

(assert (=> b!3846505 (= res!1557061 (not (= lt!1335681 lt!1335666)))))

(assert (=> b!3846505 (= lt!1335667 (lexList!1651 thiss!20629 rules!2768 (_2!23097 (v!39003 lt!1335672))))))

(declare-fun lt!1335676 () List!40868)

(assert (=> b!3846505 (and (= (size!30651 (_1!23097 (v!39003 lt!1335672))) lt!1335671) (= (originalCharacters!6894 (_1!23097 (v!39003 lt!1335672))) lt!1335677) (= (v!39003 lt!1335672) (tuple2!39927 (Token!11727 lt!1335673 (rule!9140 (_1!23097 (v!39003 lt!1335672))) lt!1335671 lt!1335677) lt!1335676)))))

(assert (=> b!3846505 (= lt!1335671 (size!30652 lt!1335677))))

(assert (=> b!3846505 e!2377249))

(declare-fun res!1557069 () Bool)

(assert (=> b!3846505 (=> (not res!1557069) (not e!2377249))))

(assert (=> b!3846505 (= res!1557069 (= (value!200013 (_1!23097 (v!39003 lt!1335672))) lt!1335673))))

(declare-fun apply!9537 (TokenValueInjection!12476 BalanceConc!24604) TokenValue!6524)

(assert (=> b!3846505 (= lt!1335673 (apply!9537 (transformation!6294 (rule!9140 (_1!23097 (v!39003 lt!1335672)))) lt!1335669))))

(declare-fun seqFromList!4565 (List!40868) BalanceConc!24604)

(assert (=> b!3846505 (= lt!1335669 (seqFromList!4565 lt!1335677))))

(assert (=> b!3846505 (= (_2!23097 (v!39003 lt!1335672)) lt!1335676)))

(declare-fun lt!1335674 () Unit!58426)

(declare-fun lemmaSamePrefixThenSameSuffix!1614 (List!40868 List!40868 List!40868 List!40868 List!40868) Unit!58426)

(assert (=> b!3846505 (= lt!1335674 (lemmaSamePrefixThenSameSuffix!1614 lt!1335677 (_2!23097 (v!39003 lt!1335672)) lt!1335677 lt!1335676 lt!1335666))))

(declare-fun getSuffix!1848 (List!40868 List!40868) List!40868)

(assert (=> b!3846505 (= lt!1335676 (getSuffix!1848 lt!1335666 lt!1335677))))

(declare-fun isPrefix!3393 (List!40868 List!40868) Bool)

(assert (=> b!3846505 (isPrefix!3393 lt!1335677 lt!1335681)))

(assert (=> b!3846505 (= lt!1335681 (++!10346 lt!1335677 (_2!23097 (v!39003 lt!1335672))))))

(declare-fun lt!1335682 () Unit!58426)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2256 (List!40868 List!40868) Unit!58426)

(assert (=> b!3846505 (= lt!1335682 (lemmaConcatTwoListThenFirstIsPrefix!2256 lt!1335677 (_2!23097 (v!39003 lt!1335672))))))

(declare-fun list!15166 (BalanceConc!24604) List!40868)

(declare-fun charsOf!4122 (Token!11726) BalanceConc!24604)

(assert (=> b!3846505 (= lt!1335677 (list!15166 (charsOf!4122 (_1!23097 (v!39003 lt!1335672)))))))

(declare-fun ruleValid!2246 (LexerInterface!5883 Rule!12388) Bool)

(assert (=> b!3846505 (ruleValid!2246 thiss!20629 (rule!9140 (_1!23097 (v!39003 lt!1335672))))))

(declare-fun lt!1335665 () Unit!58426)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1326 (LexerInterface!5883 Rule!12388 List!40870) Unit!58426)

(assert (=> b!3846505 (= lt!1335665 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1326 thiss!20629 (rule!9140 (_1!23097 (v!39003 lt!1335672))) rules!2768))))

(declare-fun lt!1335684 () Unit!58426)

(declare-fun lemmaCharactersSize!955 (Token!11726) Unit!58426)

(assert (=> b!3846505 (= lt!1335684 (lemmaCharactersSize!955 (_1!23097 (v!39003 lt!1335672))))))

(assert (=> b!3846506 (= e!2377241 (and tp!1165829 tp!1165814))))

(assert (=> b!3846507 (= e!2377255 (and tp!1165830 tp!1165816))))

(declare-fun b!3846508 () Bool)

(declare-fun res!1557076 () Bool)

(assert (=> b!3846508 (=> res!1557076 e!2377242)))

(assert (=> b!3846508 (= res!1557076 (or (not (= lt!1335667 (tuple2!39929 (_1!23098 lt!1335667) (_2!23098 lt!1335667)))) (= (_2!23097 (v!39003 lt!1335672)) suffix!1176)))))

(assert (= (and start!360184 res!1557064) b!3846478))

(assert (= (and b!3846478 res!1557072) b!3846482))

(assert (= (and b!3846482 res!1557070) b!3846488))

(assert (= (and b!3846488 res!1557066) b!3846493))

(assert (= (and b!3846493 res!1557060) b!3846484))

(assert (= (and b!3846484 res!1557067) b!3846502))

(assert (= (and b!3846502 res!1557075) b!3846477))

(assert (= (and b!3846477 res!1557063) b!3846505))

(assert (= (and b!3846505 res!1557069) b!3846500))

(assert (= (and b!3846505 (not res!1557061)) b!3846503))

(assert (= (and b!3846503 (not res!1557065)) b!3846508))

(assert (= (and b!3846508 (not res!1557076)) b!3846485))

(assert (= (and b!3846485 (not res!1557068)) b!3846481))

(assert (= (and b!3846481 (not res!1557073)) b!3846504))

(assert (= (and b!3846504 (not res!1557058)) b!3846476))

(assert (= (and b!3846476 (not res!1557062)) b!3846491))

(assert (= (and b!3846491 (not res!1557059)) b!3846486))

(assert (= (and b!3846486 (not res!1557074)) b!3846498))

(assert (= (and b!3846498 (not res!1557071)) b!3846501))

(assert (= (and start!360184 ((_ is Cons!40744) suffixResult!91)) b!3846492))

(assert (= (and start!360184 ((_ is Cons!40744) suffix!1176)) b!3846495))

(assert (= b!3846483 b!3846507))

(assert (= b!3846490 b!3846483))

(assert (= (and start!360184 ((_ is Cons!40746) rules!2768)) b!3846490))

(assert (= b!3846489 b!3846497))

(assert (= b!3846487 b!3846489))

(assert (= b!3846496 b!3846487))

(assert (= (and start!360184 ((_ is Cons!40747) prefixTokens!80)) b!3846496))

(assert (= b!3846494 b!3846506))

(assert (= b!3846479 b!3846494))

(assert (= b!3846480 b!3846479))

(assert (= (and start!360184 ((_ is Cons!40747) suffixTokens!72)) b!3846480))

(assert (= (and start!360184 ((_ is Cons!40744) prefix!426)) b!3846499))

(declare-fun m!4401191 () Bool)

(assert (=> b!3846503 m!4401191))

(declare-fun m!4401193 () Bool)

(assert (=> b!3846496 m!4401193))

(declare-fun m!4401195 () Bool)

(assert (=> b!3846502 m!4401195))

(declare-fun m!4401197 () Bool)

(assert (=> b!3846482 m!4401197))

(declare-fun m!4401199 () Bool)

(assert (=> b!3846476 m!4401199))

(declare-fun m!4401201 () Bool)

(assert (=> b!3846494 m!4401201))

(declare-fun m!4401203 () Bool)

(assert (=> b!3846494 m!4401203))

(declare-fun m!4401205 () Bool)

(assert (=> b!3846478 m!4401205))

(declare-fun m!4401207 () Bool)

(assert (=> b!3846477 m!4401207))

(declare-fun m!4401209 () Bool)

(assert (=> b!3846483 m!4401209))

(declare-fun m!4401211 () Bool)

(assert (=> b!3846483 m!4401211))

(declare-fun m!4401213 () Bool)

(assert (=> b!3846489 m!4401213))

(declare-fun m!4401215 () Bool)

(assert (=> b!3846489 m!4401215))

(declare-fun m!4401217 () Bool)

(assert (=> b!3846484 m!4401217))

(declare-fun m!4401219 () Bool)

(assert (=> b!3846484 m!4401219))

(declare-fun m!4401221 () Bool)

(assert (=> b!3846484 m!4401221))

(declare-fun m!4401223 () Bool)

(assert (=> b!3846481 m!4401223))

(declare-fun m!4401225 () Bool)

(assert (=> b!3846480 m!4401225))

(declare-fun m!4401227 () Bool)

(assert (=> b!3846479 m!4401227))

(declare-fun m!4401229 () Bool)

(assert (=> b!3846487 m!4401229))

(declare-fun m!4401231 () Bool)

(assert (=> b!3846493 m!4401231))

(declare-fun m!4401233 () Bool)

(assert (=> b!3846504 m!4401233))

(declare-fun m!4401235 () Bool)

(assert (=> b!3846505 m!4401235))

(declare-fun m!4401237 () Bool)

(assert (=> b!3846505 m!4401237))

(declare-fun m!4401239 () Bool)

(assert (=> b!3846505 m!4401239))

(declare-fun m!4401241 () Bool)

(assert (=> b!3846505 m!4401241))

(declare-fun m!4401243 () Bool)

(assert (=> b!3846505 m!4401243))

(declare-fun m!4401245 () Bool)

(assert (=> b!3846505 m!4401245))

(declare-fun m!4401247 () Bool)

(assert (=> b!3846505 m!4401247))

(declare-fun m!4401249 () Bool)

(assert (=> b!3846505 m!4401249))

(declare-fun m!4401251 () Bool)

(assert (=> b!3846505 m!4401251))

(declare-fun m!4401253 () Bool)

(assert (=> b!3846505 m!4401253))

(declare-fun m!4401255 () Bool)

(assert (=> b!3846505 m!4401255))

(declare-fun m!4401257 () Bool)

(assert (=> b!3846505 m!4401257))

(declare-fun m!4401259 () Bool)

(assert (=> b!3846505 m!4401259))

(assert (=> b!3846505 m!4401237))

(declare-fun m!4401261 () Bool)

(assert (=> b!3846505 m!4401261))

(declare-fun m!4401263 () Bool)

(assert (=> b!3846488 m!4401263))

(declare-fun m!4401265 () Bool)

(assert (=> b!3846485 m!4401265))

(declare-fun m!4401267 () Bool)

(assert (=> b!3846485 m!4401267))

(declare-fun m!4401269 () Bool)

(assert (=> b!3846486 m!4401269))

(declare-fun m!4401271 () Bool)

(assert (=> b!3846501 m!4401271))

(declare-fun m!4401273 () Bool)

(assert (=> b!3846498 m!4401273))

(declare-fun m!4401275 () Bool)

(assert (=> b!3846500 m!4401275))

(check-sat (not b!3846496) (not b!3846487) (not b!3846481) (not b!3846482) (not b!3846495) (not b!3846489) (not b!3846500) b_and!286957 (not b!3846505) (not b!3846503) (not b!3846477) (not b!3846492) b_and!286949 (not b!3846479) (not b!3846494) (not b!3846480) (not b!3846504) (not b!3846483) (not b!3846499) (not b!3846501) (not b!3846484) tp_is_empty!19369 (not b!3846478) (not b!3846498) b_and!286955 (not b_next!103653) (not b_next!103659) (not b!3846485) (not b_next!103657) (not b_next!103661) (not b_next!103663) (not b!3846476) (not b!3846488) (not b!3846493) b_and!286947 (not b!3846502) (not b!3846490) b_and!286953 (not b!3846486) b_and!286951 (not b_next!103655))
(check-sat b_and!286957 (not b_next!103657) b_and!286947 b_and!286953 b_and!286949 b_and!286955 (not b_next!103653) (not b_next!103659) (not b_next!103661) (not b_next!103663) b_and!286951 (not b_next!103655))
