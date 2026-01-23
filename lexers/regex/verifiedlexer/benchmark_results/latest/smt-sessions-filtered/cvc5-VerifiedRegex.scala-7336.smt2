; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!390140 () Bool)

(assert start!390140)

(declare-fun b!4116203 () Bool)

(declare-fun b_free!116047 () Bool)

(declare-fun b_next!116751 () Bool)

(assert (=> b!4116203 (= b_free!116047 (not b_next!116751))))

(declare-fun tp!1253919 () Bool)

(declare-fun b_and!318021 () Bool)

(assert (=> b!4116203 (= tp!1253919 b_and!318021)))

(declare-fun b_free!116049 () Bool)

(declare-fun b_next!116753 () Bool)

(assert (=> b!4116203 (= b_free!116049 (not b_next!116753))))

(declare-fun tp!1253911 () Bool)

(declare-fun b_and!318023 () Bool)

(assert (=> b!4116203 (= tp!1253911 b_and!318023)))

(declare-fun b!4116198 () Bool)

(declare-fun b_free!116051 () Bool)

(declare-fun b_next!116755 () Bool)

(assert (=> b!4116198 (= b_free!116051 (not b_next!116755))))

(declare-fun tp!1253914 () Bool)

(declare-fun b_and!318025 () Bool)

(assert (=> b!4116198 (= tp!1253914 b_and!318025)))

(declare-fun b_free!116053 () Bool)

(declare-fun b_next!116757 () Bool)

(assert (=> b!4116198 (= b_free!116053 (not b_next!116757))))

(declare-fun tp!1253909 () Bool)

(declare-fun b_and!318027 () Bool)

(assert (=> b!4116198 (= tp!1253909 b_and!318027)))

(declare-fun b!4116195 () Bool)

(declare-fun b_free!116055 () Bool)

(declare-fun b_next!116759 () Bool)

(assert (=> b!4116195 (= b_free!116055 (not b_next!116759))))

(declare-fun tp!1253910 () Bool)

(declare-fun b_and!318029 () Bool)

(assert (=> b!4116195 (= tp!1253910 b_and!318029)))

(declare-fun b_free!116057 () Bool)

(declare-fun b_next!116761 () Bool)

(assert (=> b!4116195 (= b_free!116057 (not b_next!116761))))

(declare-fun tp!1253915 () Bool)

(declare-fun b_and!318031 () Bool)

(assert (=> b!4116195 (= tp!1253915 b_and!318031)))

(declare-datatypes ((List!44568 0))(
  ( (Nil!44444) (Cons!44444 (h!49864 (_ BitVec 16)) (t!340391 List!44568)) )
))
(declare-datatypes ((TokenValue!7473 0))(
  ( (FloatLiteralValue!14946 (text!52756 List!44568)) (TokenValueExt!7472 (__x!27163 Int)) (Broken!37365 (value!226957 List!44568)) (Object!7596) (End!7473) (Def!7473) (Underscore!7473) (Match!7473) (Else!7473) (Error!7473) (Case!7473) (If!7473) (Extends!7473) (Abstract!7473) (Class!7473) (Val!7473) (DelimiterValue!14946 (del!7533 List!44568)) (KeywordValue!7479 (value!226958 List!44568)) (CommentValue!14946 (value!226959 List!44568)) (WhitespaceValue!14946 (value!226960 List!44568)) (IndentationValue!7473 (value!226961 List!44568)) (String!51116) (Int32!7473) (Broken!37366 (value!226962 List!44568)) (Boolean!7474) (Unit!63805) (OperatorValue!7476 (op!7533 List!44568)) (IdentifierValue!14946 (value!226963 List!44568)) (IdentifierValue!14947 (value!226964 List!44568)) (WhitespaceValue!14947 (value!226965 List!44568)) (True!14946) (False!14946) (Broken!37367 (value!226966 List!44568)) (Broken!37368 (value!226967 List!44568)) (True!14947) (RightBrace!7473) (RightBracket!7473) (Colon!7473) (Null!7473) (Comma!7473) (LeftBracket!7473) (False!14947) (LeftBrace!7473) (ImaginaryLiteralValue!7473 (text!52757 List!44568)) (StringLiteralValue!22419 (value!226968 List!44568)) (EOFValue!7473 (value!226969 List!44568)) (IdentValue!7473 (value!226970 List!44568)) (DelimiterValue!14947 (value!226971 List!44568)) (DedentValue!7473 (value!226972 List!44568)) (NewLineValue!7473 (value!226973 List!44568)) (IntegerValue!22419 (value!226974 (_ BitVec 32)) (text!52758 List!44568)) (IntegerValue!22420 (value!226975 Int) (text!52759 List!44568)) (Times!7473) (Or!7473) (Equal!7473) (Minus!7473) (Broken!37369 (value!226976 List!44568)) (And!7473) (Div!7473) (LessEqual!7473) (Mod!7473) (Concat!19621) (Not!7473) (Plus!7473) (SpaceValue!7473 (value!226977 List!44568)) (IntegerValue!22421 (value!226978 Int) (text!52760 List!44568)) (StringLiteralValue!22420 (text!52761 List!44568)) (FloatLiteralValue!14947 (text!52762 List!44568)) (BytesLiteralValue!7473 (value!226979 List!44568)) (CommentValue!14947 (value!226980 List!44568)) (StringLiteralValue!22421 (value!226981 List!44568)) (ErrorTokenValue!7473 (msg!7534 List!44568)) )
))
(declare-datatypes ((C!24482 0))(
  ( (C!24483 (val!14351 Int)) )
))
(declare-datatypes ((List!44569 0))(
  ( (Nil!44445) (Cons!44445 (h!49865 C!24482) (t!340392 List!44569)) )
))
(declare-datatypes ((IArray!26913 0))(
  ( (IArray!26914 (innerList!13514 List!44569)) )
))
(declare-datatypes ((Conc!13454 0))(
  ( (Node!13454 (left!33306 Conc!13454) (right!33636 Conc!13454) (csize!27138 Int) (cheight!13665 Int)) (Leaf!20791 (xs!16760 IArray!26913) (csize!27139 Int)) (Empty!13454) )
))
(declare-datatypes ((BalanceConc!26502 0))(
  ( (BalanceConc!26503 (c!707131 Conc!13454)) )
))
(declare-datatypes ((Regex!12148 0))(
  ( (ElementMatch!12148 (c!707132 C!24482)) (Concat!19622 (regOne!24808 Regex!12148) (regTwo!24808 Regex!12148)) (EmptyExpr!12148) (Star!12148 (reg!12477 Regex!12148)) (EmptyLang!12148) (Union!12148 (regOne!24809 Regex!12148) (regTwo!24809 Regex!12148)) )
))
(declare-datatypes ((String!51117 0))(
  ( (String!51118 (value!226982 String)) )
))
(declare-datatypes ((TokenValueInjection!14374 0))(
  ( (TokenValueInjection!14375 (toValue!9891 Int) (toChars!9750 Int)) )
))
(declare-datatypes ((Rule!14286 0))(
  ( (Rule!14287 (regex!7243 Regex!12148) (tag!8103 String!51117) (isSeparator!7243 Bool) (transformation!7243 TokenValueInjection!14374)) )
))
(declare-fun rBis!149 () Rule!14286)

(declare-fun b!4116193 () Bool)

(declare-fun e!2554001 () Bool)

(declare-fun e!2554010 () Bool)

(declare-fun tp!1253918 () Bool)

(declare-fun inv!59031 (String!51117) Bool)

(declare-fun inv!59034 (TokenValueInjection!14374) Bool)

(assert (=> b!4116193 (= e!2554001 (and tp!1253918 (inv!59031 (tag!8103 rBis!149)) (inv!59034 (transformation!7243 rBis!149)) e!2554010))))

(declare-fun e!2554004 () Bool)

(assert (=> b!4116195 (= e!2554004 (and tp!1253910 tp!1253915))))

(declare-fun b!4116196 () Bool)

(declare-fun e!2554011 () Bool)

(assert (=> b!4116196 (= e!2554011 false)))

(declare-fun lt!1468787 () Int)

(declare-fun p!2912 () List!44569)

(declare-fun size!32895 (List!44569) Int)

(assert (=> b!4116196 (= lt!1468787 (size!32895 p!2912))))

(declare-fun lt!1468788 () Int)

(declare-fun input!3238 () List!44569)

(assert (=> b!4116196 (= lt!1468788 (size!32895 input!3238))))

(declare-datatypes ((Unit!63806 0))(
  ( (Unit!63807) )
))
(declare-fun lt!1468789 () Unit!63806)

(declare-fun r!4008 () Rule!14286)

(declare-fun lemmaSemiInverse!2101 (TokenValueInjection!14374 BalanceConc!26502) Unit!63806)

(declare-fun seqFromList!5360 (List!44569) BalanceConc!26502)

(assert (=> b!4116196 (= lt!1468789 (lemmaSemiInverse!2101 (transformation!7243 r!4008) (seqFromList!5360 p!2912)))))

(declare-datatypes ((List!44570 0))(
  ( (Nil!44446) (Cons!44446 (h!49866 Rule!14286) (t!340393 List!44570)) )
))
(declare-fun rules!3756 () List!44570)

(declare-fun b!4116197 () Bool)

(declare-fun e!2554003 () Bool)

(declare-fun e!2554006 () Bool)

(declare-fun tp!1253917 () Bool)

(assert (=> b!4116197 (= e!2554006 (and tp!1253917 (inv!59031 (tag!8103 (h!49866 rules!3756))) (inv!59034 (transformation!7243 (h!49866 rules!3756))) e!2554003))))

(assert (=> b!4116198 (= e!2554003 (and tp!1253914 tp!1253909))))

(declare-fun b!4116199 () Bool)

(declare-fun e!2554002 () Bool)

(declare-fun tp_is_empty!21219 () Bool)

(declare-fun tp!1253916 () Bool)

(assert (=> b!4116199 (= e!2554002 (and tp_is_empty!21219 tp!1253916))))

(declare-fun b!4116200 () Bool)

(declare-fun res!1681171 () Bool)

(assert (=> b!4116200 (=> (not res!1681171) (not e!2554011))))

(declare-fun isEmpty!26423 (List!44569) Bool)

(assert (=> b!4116200 (= res!1681171 (not (isEmpty!26423 p!2912)))))

(declare-fun b!4116201 () Bool)

(declare-fun res!1681173 () Bool)

(assert (=> b!4116201 (=> (not res!1681173) (not e!2554011))))

(declare-fun contains!8913 (List!44570 Rule!14286) Bool)

(assert (=> b!4116201 (= res!1681173 (contains!8913 rules!3756 r!4008))))

(declare-fun b!4116202 () Bool)

(declare-fun res!1681175 () Bool)

(assert (=> b!4116202 (=> (not res!1681175) (not e!2554011))))

(declare-fun isPrefix!4178 (List!44569 List!44569) Bool)

(assert (=> b!4116202 (= res!1681175 (isPrefix!4178 p!2912 input!3238))))

(assert (=> b!4116203 (= e!2554010 (and tp!1253919 tp!1253911))))

(declare-fun e!2554005 () Bool)

(declare-fun tp!1253912 () Bool)

(declare-fun b!4116204 () Bool)

(assert (=> b!4116204 (= e!2554005 (and tp!1253912 (inv!59031 (tag!8103 r!4008)) (inv!59034 (transformation!7243 r!4008)) e!2554004))))

(declare-fun b!4116205 () Bool)

(declare-fun e!2554007 () Bool)

(declare-fun tp!1253920 () Bool)

(assert (=> b!4116205 (= e!2554007 (and tp_is_empty!21219 tp!1253920))))

(declare-fun b!4116206 () Bool)

(declare-fun e!2554008 () Bool)

(declare-fun tp!1253913 () Bool)

(assert (=> b!4116206 (= e!2554008 (and e!2554006 tp!1253913))))

(declare-fun b!4116194 () Bool)

(declare-fun res!1681170 () Bool)

(assert (=> b!4116194 (=> (not res!1681170) (not e!2554011))))

(declare-datatypes ((LexerInterface!6832 0))(
  ( (LexerInterfaceExt!6829 (__x!27164 Int)) (Lexer!6830) )
))
(declare-fun thiss!25645 () LexerInterface!6832)

(declare-fun rulesInvariant!6129 (LexerInterface!6832 List!44570) Bool)

(assert (=> b!4116194 (= res!1681170 (rulesInvariant!6129 thiss!25645 rules!3756))))

(declare-fun res!1681174 () Bool)

(assert (=> start!390140 (=> (not res!1681174) (not e!2554011))))

(assert (=> start!390140 (= res!1681174 (is-Lexer!6830 thiss!25645))))

(assert (=> start!390140 e!2554011))

(assert (=> start!390140 e!2554008))

(assert (=> start!390140 e!2554007))

(assert (=> start!390140 true))

(assert (=> start!390140 e!2554005))

(assert (=> start!390140 e!2554002))

(assert (=> start!390140 e!2554001))

(declare-fun b!4116207 () Bool)

(declare-fun res!1681176 () Bool)

(assert (=> b!4116207 (=> (not res!1681176) (not e!2554011))))

(assert (=> b!4116207 (= res!1681176 (contains!8913 rules!3756 rBis!149))))

(declare-fun b!4116208 () Bool)

(declare-fun res!1681172 () Bool)

(assert (=> b!4116208 (=> (not res!1681172) (not e!2554011))))

(declare-fun isEmpty!26424 (List!44570) Bool)

(assert (=> b!4116208 (= res!1681172 (not (isEmpty!26424 rules!3756)))))

(assert (= (and start!390140 res!1681174) b!4116202))

(assert (= (and b!4116202 res!1681175) b!4116208))

(assert (= (and b!4116208 res!1681172) b!4116194))

(assert (= (and b!4116194 res!1681170) b!4116201))

(assert (= (and b!4116201 res!1681173) b!4116207))

(assert (= (and b!4116207 res!1681176) b!4116200))

(assert (= (and b!4116200 res!1681171) b!4116196))

(assert (= b!4116197 b!4116198))

(assert (= b!4116206 b!4116197))

(assert (= (and start!390140 (is-Cons!44446 rules!3756)) b!4116206))

(assert (= (and start!390140 (is-Cons!44445 p!2912)) b!4116205))

(assert (= b!4116204 b!4116195))

(assert (= start!390140 b!4116204))

(assert (= (and start!390140 (is-Cons!44445 input!3238)) b!4116199))

(assert (= b!4116193 b!4116203))

(assert (= start!390140 b!4116193))

(declare-fun m!4716057 () Bool)

(assert (=> b!4116194 m!4716057))

(declare-fun m!4716059 () Bool)

(assert (=> b!4116201 m!4716059))

(declare-fun m!4716061 () Bool)

(assert (=> b!4116200 m!4716061))

(declare-fun m!4716063 () Bool)

(assert (=> b!4116197 m!4716063))

(declare-fun m!4716065 () Bool)

(assert (=> b!4116197 m!4716065))

(declare-fun m!4716067 () Bool)

(assert (=> b!4116207 m!4716067))

(declare-fun m!4716069 () Bool)

(assert (=> b!4116202 m!4716069))

(declare-fun m!4716071 () Bool)

(assert (=> b!4116193 m!4716071))

(declare-fun m!4716073 () Bool)

(assert (=> b!4116193 m!4716073))

(declare-fun m!4716075 () Bool)

(assert (=> b!4116196 m!4716075))

(declare-fun m!4716077 () Bool)

(assert (=> b!4116196 m!4716077))

(declare-fun m!4716079 () Bool)

(assert (=> b!4116196 m!4716079))

(assert (=> b!4116196 m!4716079))

(declare-fun m!4716081 () Bool)

(assert (=> b!4116196 m!4716081))

(declare-fun m!4716083 () Bool)

(assert (=> b!4116204 m!4716083))

(declare-fun m!4716085 () Bool)

(assert (=> b!4116204 m!4716085))

(declare-fun m!4716087 () Bool)

(assert (=> b!4116208 m!4716087))

(push 1)

(assert b_and!318031)

(assert (not b!4116204))

(assert b_and!318027)

(assert (not b!4116199))

(assert b_and!318029)

(assert (not b!4116208))

(assert (not b!4116201))

(assert b_and!318025)

(assert (not b!4116207))

(assert (not b!4116206))

(assert (not b!4116202))

(assert (not b!4116205))

(assert (not b!4116193))

(assert (not b_next!116757))

(assert tp_is_empty!21219)

(assert (not b!4116197))

(assert (not b_next!116759))

(assert (not b_next!116761))

(assert (not b_next!116751))

(assert (not b!4116200))

(assert (not b_next!116753))

(assert b_and!318021)

(assert (not b_next!116755))

(assert (not b!4116194))

(assert (not b!4116196))

(assert b_and!318023)

(check-sat)

(pop 1)

(push 1)

(assert b_and!318031)

(assert b_and!318027)

(assert b_and!318029)

(assert (not b_next!116751))

(assert b_and!318025)

(assert (not b_next!116755))

(assert b_and!318023)

(assert (not b_next!116757))

(assert (not b_next!116759))

(assert (not b_next!116761))

(assert (not b_next!116753))

(assert b_and!318021)

(check-sat)

(pop 1)

