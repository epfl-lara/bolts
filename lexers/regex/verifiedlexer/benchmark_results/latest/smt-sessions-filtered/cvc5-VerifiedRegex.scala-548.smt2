; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!15080 () Bool)

(assert start!15080)

(declare-fun b!143265 () Bool)

(declare-fun b_free!4885 () Bool)

(declare-fun b_next!4885 () Bool)

(assert (=> b!143265 (= b_free!4885 (not b_next!4885))))

(declare-fun tp!75621 () Bool)

(declare-fun b_and!7525 () Bool)

(assert (=> b!143265 (= tp!75621 b_and!7525)))

(declare-fun b_free!4887 () Bool)

(declare-fun b_next!4887 () Bool)

(assert (=> b!143265 (= b_free!4887 (not b_next!4887))))

(declare-fun tp!75616 () Bool)

(declare-fun b_and!7527 () Bool)

(assert (=> b!143265 (= tp!75616 b_and!7527)))

(declare-fun b!143256 () Bool)

(declare-fun b_free!4889 () Bool)

(declare-fun b_next!4889 () Bool)

(assert (=> b!143256 (= b_free!4889 (not b_next!4889))))

(declare-fun tp!75624 () Bool)

(declare-fun b_and!7529 () Bool)

(assert (=> b!143256 (= tp!75624 b_and!7529)))

(declare-fun b_free!4891 () Bool)

(declare-fun b_next!4891 () Bool)

(assert (=> b!143256 (= b_free!4891 (not b_next!4891))))

(declare-fun tp!75623 () Bool)

(declare-fun b_and!7531 () Bool)

(assert (=> b!143256 (= tp!75623 b_and!7531)))

(declare-fun b!143258 () Bool)

(declare-fun b_free!4893 () Bool)

(declare-fun b_next!4893 () Bool)

(assert (=> b!143258 (= b_free!4893 (not b_next!4893))))

(declare-fun tp!75615 () Bool)

(declare-fun b_and!7533 () Bool)

(assert (=> b!143258 (= tp!75615 b_and!7533)))

(declare-fun b_free!4895 () Bool)

(declare-fun b_next!4895 () Bool)

(assert (=> b!143258 (= b_free!4895 (not b_next!4895))))

(declare-fun tp!75614 () Bool)

(declare-fun b_and!7535 () Bool)

(assert (=> b!143258 (= tp!75614 b_and!7535)))

(declare-datatypes ((List!2471 0))(
  ( (Nil!2461) (Cons!2461 (h!7858 (_ BitVec 16)) (t!23865 List!2471)) )
))
(declare-datatypes ((TokenValue!440 0))(
  ( (FloatLiteralValue!880 (text!3525 List!2471)) (TokenValueExt!439 (__x!2367 Int)) (Broken!2200 (value!16204 List!2471)) (Object!449) (End!440) (Def!440) (Underscore!440) (Match!440) (Else!440) (Error!440) (Case!440) (If!440) (Extends!440) (Abstract!440) (Class!440) (Val!440) (DelimiterValue!880 (del!500 List!2471)) (KeywordValue!446 (value!16205 List!2471)) (CommentValue!880 (value!16206 List!2471)) (WhitespaceValue!880 (value!16207 List!2471)) (IndentationValue!440 (value!16208 List!2471)) (String!3281) (Int32!440) (Broken!2201 (value!16209 List!2471)) (Boolean!441) (Unit!1828) (OperatorValue!443 (op!500 List!2471)) (IdentifierValue!880 (value!16210 List!2471)) (IdentifierValue!881 (value!16211 List!2471)) (WhitespaceValue!881 (value!16212 List!2471)) (True!880) (False!880) (Broken!2202 (value!16213 List!2471)) (Broken!2203 (value!16214 List!2471)) (True!881) (RightBrace!440) (RightBracket!440) (Colon!440) (Null!440) (Comma!440) (LeftBracket!440) (False!881) (LeftBrace!440) (ImaginaryLiteralValue!440 (text!3526 List!2471)) (StringLiteralValue!1320 (value!16215 List!2471)) (EOFValue!440 (value!16216 List!2471)) (IdentValue!440 (value!16217 List!2471)) (DelimiterValue!881 (value!16218 List!2471)) (DedentValue!440 (value!16219 List!2471)) (NewLineValue!440 (value!16220 List!2471)) (IntegerValue!1320 (value!16221 (_ BitVec 32)) (text!3527 List!2471)) (IntegerValue!1321 (value!16222 Int) (text!3528 List!2471)) (Times!440) (Or!440) (Equal!440) (Minus!440) (Broken!2204 (value!16223 List!2471)) (And!440) (Div!440) (LessEqual!440) (Mod!440) (Concat!1082) (Not!440) (Plus!440) (SpaceValue!440 (value!16224 List!2471)) (IntegerValue!1322 (value!16225 Int) (text!3529 List!2471)) (StringLiteralValue!1321 (text!3530 List!2471)) (FloatLiteralValue!881 (text!3531 List!2471)) (BytesLiteralValue!440 (value!16226 List!2471)) (CommentValue!881 (value!16227 List!2471)) (StringLiteralValue!1322 (value!16228 List!2471)) (ErrorTokenValue!440 (msg!501 List!2471)) )
))
(declare-datatypes ((C!2206 0))(
  ( (C!2207 (val!989 Int)) )
))
(declare-datatypes ((List!2472 0))(
  ( (Nil!2462) (Cons!2462 (h!7859 C!2206) (t!23866 List!2472)) )
))
(declare-datatypes ((IArray!1317 0))(
  ( (IArray!1318 (innerList!716 List!2472)) )
))
(declare-datatypes ((Conc!658 0))(
  ( (Node!658 (left!1862 Conc!658) (right!2192 Conc!658) (csize!1546 Int) (cheight!869 Int)) (Leaf!1207 (xs!3253 IArray!1317) (csize!1547 Int)) (Empty!658) )
))
(declare-datatypes ((BalanceConc!1324 0))(
  ( (BalanceConc!1325 (c!29499 Conc!658)) )
))
(declare-datatypes ((Regex!642 0))(
  ( (ElementMatch!642 (c!29500 C!2206)) (Concat!1083 (regOne!1796 Regex!642) (regTwo!1796 Regex!642)) (EmptyExpr!642) (Star!642 (reg!971 Regex!642)) (EmptyLang!642) (Union!642 (regOne!1797 Regex!642) (regTwo!1797 Regex!642)) )
))
(declare-datatypes ((String!3282 0))(
  ( (String!3283 (value!16229 String)) )
))
(declare-datatypes ((TokenValueInjection!652 0))(
  ( (TokenValueInjection!653 (toValue!1037 Int) (toChars!896 Int)) )
))
(declare-datatypes ((Rule!636 0))(
  ( (Rule!637 (regex!418 Regex!642) (tag!596 String!3282) (isSeparator!418 Bool) (transformation!418 TokenValueInjection!652)) )
))
(declare-datatypes ((Token!580 0))(
  ( (Token!581 (value!16230 TokenValue!440) (rule!925 Rule!636) (size!2140 Int) (originalCharacters!461 List!2472)) )
))
(declare-datatypes ((List!2473 0))(
  ( (Nil!2463) (Cons!2463 (h!7860 Token!580) (t!23867 List!2473)) )
))
(declare-fun tokens!465 () List!2473)

(declare-fun b!143253 () Bool)

(declare-fun e!84788 () Bool)

(declare-fun e!84786 () Bool)

(declare-fun tp!75622 () Bool)

(declare-fun inv!21 (TokenValue!440) Bool)

(assert (=> b!143253 (= e!84788 (and (inv!21 (value!16230 (h!7860 tokens!465))) e!84786 tp!75622))))

(declare-fun b!143254 () Bool)

(declare-fun res!66219 () Bool)

(declare-fun e!84792 () Bool)

(assert (=> b!143254 (=> (not res!66219) (not e!84792))))

(declare-datatypes ((List!2474 0))(
  ( (Nil!2464) (Cons!2464 (h!7861 Rule!636) (t!23868 List!2474)) )
))
(declare-fun rules!1920 () List!2474)

(declare-datatypes ((LexerInterface!304 0))(
  ( (LexerInterfaceExt!301 (__x!2368 Int)) (Lexer!302) )
))
(declare-fun thiss!17480 () LexerInterface!304)

(declare-datatypes ((IArray!1319 0))(
  ( (IArray!1320 (innerList!717 List!2473)) )
))
(declare-datatypes ((Conc!659 0))(
  ( (Node!659 (left!1863 Conc!659) (right!2193 Conc!659) (csize!1548 Int) (cheight!870 Int)) (Leaf!1208 (xs!3254 IArray!1319) (csize!1549 Int)) (Empty!659) )
))
(declare-datatypes ((BalanceConc!1326 0))(
  ( (BalanceConc!1327 (c!29501 Conc!659)) )
))
(declare-fun rulesProduceEachTokenIndividually!96 (LexerInterface!304 List!2474 BalanceConc!1326) Bool)

(declare-fun seqFromList!231 (List!2473) BalanceConc!1326)

(assert (=> b!143254 (= res!66219 (rulesProduceEachTokenIndividually!96 thiss!17480 rules!1920 (seqFromList!231 tokens!465)))))

(declare-fun b!143255 () Bool)

(declare-fun e!84791 () Bool)

(declare-fun tp!75620 () Bool)

(declare-fun e!84798 () Bool)

(declare-fun inv!3236 (String!3282) Bool)

(declare-fun inv!3239 (TokenValueInjection!652) Bool)

(assert (=> b!143255 (= e!84791 (and tp!75620 (inv!3236 (tag!596 (h!7861 rules!1920))) (inv!3239 (transformation!418 (h!7861 rules!1920))) e!84798))))

(declare-fun e!84794 () Bool)

(assert (=> b!143256 (= e!84794 (and tp!75624 tp!75623))))

(declare-fun res!66218 () Bool)

(assert (=> start!15080 (=> (not res!66218) (not e!84792))))

(assert (=> start!15080 (= res!66218 (is-Lexer!302 thiss!17480))))

(assert (=> start!15080 e!84792))

(assert (=> start!15080 true))

(declare-fun e!84789 () Bool)

(assert (=> start!15080 e!84789))

(declare-fun e!84797 () Bool)

(assert (=> start!15080 e!84797))

(declare-fun separatorToken!170 () Token!580)

(declare-fun e!84787 () Bool)

(declare-fun inv!3240 (Token!580) Bool)

(assert (=> start!15080 (and (inv!3240 separatorToken!170) e!84787)))

(declare-fun b!143257 () Bool)

(declare-fun res!66221 () Bool)

(assert (=> b!143257 (=> (not res!66221) (not e!84792))))

(declare-fun rulesProduceIndividualToken!53 (LexerInterface!304 List!2474 Token!580) Bool)

(assert (=> b!143257 (= res!66221 (rulesProduceIndividualToken!53 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun e!84799 () Bool)

(assert (=> b!143258 (= e!84799 (and tp!75615 tp!75614))))

(declare-fun b!143259 () Bool)

(declare-fun res!66223 () Bool)

(assert (=> b!143259 (=> (not res!66223) (not e!84792))))

(declare-fun lambda!3427 () Int)

(declare-fun forall!370 (List!2473 Int) Bool)

(assert (=> b!143259 (= res!66223 (forall!370 tokens!465 lambda!3427))))

(declare-fun e!84790 () Bool)

(declare-fun tp!75613 () Bool)

(declare-fun b!143260 () Bool)

(assert (=> b!143260 (= e!84787 (and (inv!21 (value!16230 separatorToken!170)) e!84790 tp!75613))))

(declare-fun b!143261 () Bool)

(declare-fun tp!75618 () Bool)

(assert (=> b!143261 (= e!84786 (and tp!75618 (inv!3236 (tag!596 (rule!925 (h!7860 tokens!465)))) (inv!3239 (transformation!418 (rule!925 (h!7860 tokens!465)))) e!84799))))

(declare-fun b!143262 () Bool)

(declare-fun res!66225 () Bool)

(assert (=> b!143262 (=> (not res!66225) (not e!84792))))

(declare-fun rulesInvariant!270 (LexerInterface!304 List!2474) Bool)

(assert (=> b!143262 (= res!66225 (rulesInvariant!270 thiss!17480 rules!1920))))

(declare-fun tp!75619 () Bool)

(declare-fun b!143263 () Bool)

(assert (=> b!143263 (= e!84790 (and tp!75619 (inv!3236 (tag!596 (rule!925 separatorToken!170))) (inv!3239 (transformation!418 (rule!925 separatorToken!170))) e!84794))))

(declare-fun b!143264 () Bool)

(declare-fun res!66227 () Bool)

(assert (=> b!143264 (=> (not res!66227) (not e!84792))))

(assert (=> b!143264 (= res!66227 (isSeparator!418 (rule!925 separatorToken!170)))))

(assert (=> b!143265 (= e!84798 (and tp!75621 tp!75616))))

(declare-fun b!143266 () Bool)

(assert (=> b!143266 (= e!84792 (not (forall!370 tokens!465 lambda!3427)))))

(declare-fun b!143267 () Bool)

(declare-fun tp!75617 () Bool)

(assert (=> b!143267 (= e!84789 (and e!84791 tp!75617))))

(declare-fun tp!75612 () Bool)

(declare-fun b!143268 () Bool)

(assert (=> b!143268 (= e!84797 (and (inv!3240 (h!7860 tokens!465)) e!84788 tp!75612))))

(declare-fun b!143269 () Bool)

(declare-fun res!66226 () Bool)

(assert (=> b!143269 (=> (not res!66226) (not e!84792))))

(assert (=> b!143269 (= res!66226 (is-Cons!2463 tokens!465))))

(declare-fun b!143270 () Bool)

(declare-fun res!66220 () Bool)

(assert (=> b!143270 (=> (not res!66220) (not e!84792))))

(declare-fun sepAndNonSepRulesDisjointChars!7 (List!2474 List!2474) Bool)

(assert (=> b!143270 (= res!66220 (sepAndNonSepRulesDisjointChars!7 rules!1920 rules!1920))))

(declare-fun b!143271 () Bool)

(declare-fun res!66224 () Bool)

(assert (=> b!143271 (=> (not res!66224) (not e!84792))))

(declare-fun rulesProduceEachTokenIndividuallyList!60 (LexerInterface!304 List!2474 List!2473) Bool)

(assert (=> b!143271 (= res!66224 (rulesProduceEachTokenIndividuallyList!60 thiss!17480 rules!1920 tokens!465))))

(declare-fun b!143272 () Bool)

(declare-fun res!66222 () Bool)

(assert (=> b!143272 (=> (not res!66222) (not e!84792))))

(declare-fun isEmpty!947 (List!2474) Bool)

(assert (=> b!143272 (= res!66222 (not (isEmpty!947 rules!1920)))))

(assert (= (and start!15080 res!66218) b!143272))

(assert (= (and b!143272 res!66222) b!143262))

(assert (= (and b!143262 res!66225) b!143254))

(assert (= (and b!143254 res!66219) b!143257))

(assert (= (and b!143257 res!66221) b!143264))

(assert (= (and b!143264 res!66227) b!143259))

(assert (= (and b!143259 res!66223) b!143270))

(assert (= (and b!143270 res!66220) b!143269))

(assert (= (and b!143269 res!66226) b!143271))

(assert (= (and b!143271 res!66224) b!143266))

(assert (= b!143255 b!143265))

(assert (= b!143267 b!143255))

(assert (= (and start!15080 (is-Cons!2464 rules!1920)) b!143267))

(assert (= b!143261 b!143258))

(assert (= b!143253 b!143261))

(assert (= b!143268 b!143253))

(assert (= (and start!15080 (is-Cons!2463 tokens!465)) b!143268))

(assert (= b!143263 b!143256))

(assert (= b!143260 b!143263))

(assert (= start!15080 b!143260))

(declare-fun m!125927 () Bool)

(assert (=> b!143271 m!125927))

(declare-fun m!125929 () Bool)

(assert (=> b!143255 m!125929))

(declare-fun m!125931 () Bool)

(assert (=> b!143255 m!125931))

(declare-fun m!125933 () Bool)

(assert (=> b!143262 m!125933))

(declare-fun m!125935 () Bool)

(assert (=> b!143259 m!125935))

(declare-fun m!125937 () Bool)

(assert (=> b!143270 m!125937))

(declare-fun m!125939 () Bool)

(assert (=> b!143261 m!125939))

(declare-fun m!125941 () Bool)

(assert (=> b!143261 m!125941))

(assert (=> b!143266 m!125935))

(declare-fun m!125943 () Bool)

(assert (=> b!143253 m!125943))

(declare-fun m!125945 () Bool)

(assert (=> b!143257 m!125945))

(declare-fun m!125947 () Bool)

(assert (=> b!143272 m!125947))

(declare-fun m!125949 () Bool)

(assert (=> b!143254 m!125949))

(assert (=> b!143254 m!125949))

(declare-fun m!125951 () Bool)

(assert (=> b!143254 m!125951))

(declare-fun m!125953 () Bool)

(assert (=> b!143263 m!125953))

(declare-fun m!125955 () Bool)

(assert (=> b!143263 m!125955))

(declare-fun m!125957 () Bool)

(assert (=> b!143260 m!125957))

(declare-fun m!125959 () Bool)

(assert (=> start!15080 m!125959))

(declare-fun m!125961 () Bool)

(assert (=> b!143268 m!125961))

(push 1)

(assert (not b!143268))

(assert (not b!143266))

(assert b_and!7533)

(assert (not b!143254))

(assert (not b_next!4893))

(assert (not b_next!4889))

(assert (not b_next!4895))

(assert (not b!143271))

(assert (not b!143257))

(assert b_and!7525)

(assert (not b!143261))

(assert b_and!7531)

(assert (not b_next!4885))

(assert b_and!7529)

(assert (not b!143253))

(assert (not b!143272))

(assert (not b!143260))

(assert (not b!143270))

(assert (not start!15080))

(assert (not b!143259))

(assert (not b!143263))

(assert (not b_next!4891))

(assert (not b!143262))

(assert (not b!143267))

(assert (not b_next!4887))

(assert b_and!7535)

(assert b_and!7527)

(assert (not b!143255))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!4891))

(assert (not b_next!4887))

(assert b_and!7533)

(assert (not b_next!4893))

(assert (not b_next!4889))

(assert (not b_next!4895))

(assert b_and!7525)

(assert b_and!7531)

(assert (not b_next!4885))

(assert b_and!7529)

(assert b_and!7535)

(assert b_and!7527)

(check-sat)

(pop 1)

