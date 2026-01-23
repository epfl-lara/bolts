; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60268 () Bool)

(assert start!60268)

(declare-fun b!625914 () Bool)

(declare-fun b_free!18341 () Bool)

(declare-fun b_next!18357 () Bool)

(assert (=> b!625914 (= b_free!18341 (not b_next!18357))))

(declare-fun tp!195606 () Bool)

(declare-fun b_and!62111 () Bool)

(assert (=> b!625914 (= tp!195606 b_and!62111)))

(declare-fun b_free!18343 () Bool)

(declare-fun b_next!18359 () Bool)

(assert (=> b!625914 (= b_free!18343 (not b_next!18359))))

(declare-fun tp!195607 () Bool)

(declare-fun b_and!62113 () Bool)

(assert (=> b!625914 (= tp!195607 b_and!62113)))

(declare-fun b!625910 () Bool)

(declare-fun e!379638 () Bool)

(declare-datatypes ((C!4220 0))(
  ( (C!4221 (val!2336 Int)) )
))
(declare-datatypes ((List!6436 0))(
  ( (Nil!6426) (Cons!6426 (h!11827 C!4220) (t!82351 List!6436)) )
))
(declare-datatypes ((IArray!4135 0))(
  ( (IArray!4136 (innerList!2125 List!6436)) )
))
(declare-datatypes ((Conc!2067 0))(
  ( (Node!2067 (left!5101 Conc!2067) (right!5431 Conc!2067) (csize!4364 Int) (cheight!2278 Int)) (Leaf!3232 (xs!4704 IArray!4135) (csize!4365 Int)) (Empty!2067) )
))
(declare-datatypes ((BalanceConc!4142 0))(
  ( (BalanceConc!4143 (c!114929 Conc!2067)) )
))
(declare-datatypes ((List!6437 0))(
  ( (Nil!6427) (Cons!6427 (h!11828 (_ BitVec 16)) (t!82352 List!6437)) )
))
(declare-datatypes ((TokenValue!1337 0))(
  ( (FloatLiteralValue!2674 (text!9804 List!6437)) (TokenValueExt!1336 (__x!4574 Int)) (Broken!6685 (value!42258 List!6437)) (Object!1346) (End!1337) (Def!1337) (Underscore!1337) (Match!1337) (Else!1337) (Error!1337) (Case!1337) (If!1337) (Extends!1337) (Abstract!1337) (Class!1337) (Val!1337) (DelimiterValue!2674 (del!1397 List!6437)) (KeywordValue!1343 (value!42259 List!6437)) (CommentValue!2674 (value!42260 List!6437)) (WhitespaceValue!2674 (value!42261 List!6437)) (IndentationValue!1337 (value!42262 List!6437)) (String!8432) (Int32!1337) (Broken!6686 (value!42263 List!6437)) (Boolean!1338) (Unit!11507) (OperatorValue!1340 (op!1397 List!6437)) (IdentifierValue!2674 (value!42264 List!6437)) (IdentifierValue!2675 (value!42265 List!6437)) (WhitespaceValue!2675 (value!42266 List!6437)) (True!2674) (False!2674) (Broken!6687 (value!42267 List!6437)) (Broken!6688 (value!42268 List!6437)) (True!2675) (RightBrace!1337) (RightBracket!1337) (Colon!1337) (Null!1337) (Comma!1337) (LeftBracket!1337) (False!2675) (LeftBrace!1337) (ImaginaryLiteralValue!1337 (text!9805 List!6437)) (StringLiteralValue!4011 (value!42269 List!6437)) (EOFValue!1337 (value!42270 List!6437)) (IdentValue!1337 (value!42271 List!6437)) (DelimiterValue!2675 (value!42272 List!6437)) (DedentValue!1337 (value!42273 List!6437)) (NewLineValue!1337 (value!42274 List!6437)) (IntegerValue!4011 (value!42275 (_ BitVec 32)) (text!9806 List!6437)) (IntegerValue!4012 (value!42276 Int) (text!9807 List!6437)) (Times!1337) (Or!1337) (Equal!1337) (Minus!1337) (Broken!6689 (value!42277 List!6437)) (And!1337) (Div!1337) (LessEqual!1337) (Mod!1337) (Concat!2984) (Not!1337) (Plus!1337) (SpaceValue!1337 (value!42278 List!6437)) (IntegerValue!4013 (value!42279 Int) (text!9808 List!6437)) (StringLiteralValue!4012 (text!9809 List!6437)) (FloatLiteralValue!2675 (text!9810 List!6437)) (BytesLiteralValue!1337 (value!42280 List!6437)) (CommentValue!2675 (value!42281 List!6437)) (StringLiteralValue!4013 (value!42282 List!6437)) (ErrorTokenValue!1337 (msg!1398 List!6437)) )
))
(declare-datatypes ((Regex!1647 0))(
  ( (ElementMatch!1647 (c!114930 C!4220)) (Concat!2985 (regOne!3806 Regex!1647) (regTwo!3806 Regex!1647)) (EmptyExpr!1647) (Star!1647 (reg!1976 Regex!1647)) (EmptyLang!1647) (Union!1647 (regOne!3807 Regex!1647) (regTwo!3807 Regex!1647)) )
))
(declare-datatypes ((String!8433 0))(
  ( (String!8434 (value!42283 String)) )
))
(declare-datatypes ((TokenValueInjection!2442 0))(
  ( (TokenValueInjection!2443 (toValue!2242 Int) (toChars!2101 Int)) )
))
(declare-datatypes ((Rule!2426 0))(
  ( (Rule!2427 (regex!1313 Regex!1647) (tag!1575 String!8433) (isSeparator!1313 Bool) (transformation!1313 TokenValueInjection!2442)) )
))
(declare-datatypes ((Token!2350 0))(
  ( (Token!2351 (value!42284 TokenValue!1337) (rule!2109 Rule!2426) (size!5023 Int) (originalCharacters!1346 List!6436)) )
))
(declare-datatypes ((List!6438 0))(
  ( (Nil!6428) (Cons!6428 (h!11829 Token!2350) (t!82353 List!6438)) )
))
(declare-datatypes ((IArray!4137 0))(
  ( (IArray!4138 (innerList!2126 List!6438)) )
))
(declare-datatypes ((Conc!2068 0))(
  ( (Node!2068 (left!5102 Conc!2068) (right!5432 Conc!2068) (csize!4366 Int) (cheight!2279 Int)) (Leaf!3233 (xs!4705 IArray!4137) (csize!4367 Int)) (Empty!2068) )
))
(declare-datatypes ((BalanceConc!4144 0))(
  ( (BalanceConc!4145 (c!114931 Conc!2068)) )
))
(declare-fun v!6361 () BalanceConc!4144)

(declare-fun tp!195608 () Bool)

(declare-fun inv!8194 (Conc!2068) Bool)

(assert (=> b!625910 (= e!379638 (and (inv!8194 (c!114931 v!6361)) tp!195608))))

(declare-fun e!379642 () Bool)

(declare-fun b!625911 () Bool)

(declare-fun separatorToken!136 () Token!2350)

(declare-fun e!379637 () Bool)

(declare-fun tp!195605 () Bool)

(declare-fun inv!21 (TokenValue!1337) Bool)

(assert (=> b!625911 (= e!379637 (and (inv!21 (value!42284 separatorToken!136)) e!379642 tp!195605))))

(declare-fun tp!195609 () Bool)

(declare-fun e!379641 () Bool)

(declare-fun b!625912 () Bool)

(declare-fun inv!8189 (String!8433) Bool)

(declare-fun inv!8195 (TokenValueInjection!2442) Bool)

(assert (=> b!625912 (= e!379642 (and tp!195609 (inv!8189 (tag!1575 (rule!2109 separatorToken!136))) (inv!8195 (transformation!1313 (rule!2109 separatorToken!136))) e!379641))))

(declare-fun b!625913 () Bool)

(declare-fun e!379643 () Bool)

(declare-fun from!852 () Int)

(declare-fun lt!266594 () List!6438)

(declare-fun size!5024 (List!6438) Int)

(assert (=> b!625913 (= e!379643 (not (< from!852 (size!5024 lt!266594))))))

(declare-fun head!1327 (List!6438) Token!2350)

(declare-fun drop!340 (List!6438 Int) List!6438)

(declare-fun apply!1529 (List!6438 Int) Token!2350)

(assert (=> b!625913 (= (head!1327 (drop!340 lt!266594 from!852)) (apply!1529 lt!266594 from!852))))

(declare-datatypes ((Unit!11508 0))(
  ( (Unit!11509) )
))
(declare-fun lt!266592 () Unit!11508)

(declare-fun lemmaDropApply!306 (List!6438 Int) Unit!11508)

(assert (=> b!625913 (= lt!266592 (lemmaDropApply!306 lt!266594 from!852))))

(declare-fun list!2705 (BalanceConc!4144) List!6438)

(assert (=> b!625913 (= lt!266594 (list!2705 v!6361))))

(declare-fun res!271513 () Bool)

(declare-fun e!379639 () Bool)

(assert (=> start!60268 (=> (not res!271513) (not e!379639))))

(declare-datatypes ((LexerInterface!1201 0))(
  ( (LexerInterfaceExt!1198 (__x!4575 Int)) (Lexer!1199) )
))
(declare-fun thiss!14007 () LexerInterface!1201)

(get-info :version)

(assert (=> start!60268 (= res!271513 (and ((_ is Lexer!1199) thiss!14007) (>= from!852 0)))))

(assert (=> start!60268 e!379639))

(assert (=> start!60268 true))

(declare-fun inv!8196 (BalanceConc!4144) Bool)

(assert (=> start!60268 (and (inv!8196 v!6361) e!379638)))

(declare-fun inv!8197 (Token!2350) Bool)

(assert (=> start!60268 (and (inv!8197 separatorToken!136) e!379637)))

(assert (=> b!625914 (= e!379641 (and tp!195606 tp!195607))))

(declare-fun b!625915 () Bool)

(assert (=> b!625915 (= e!379639 e!379643)))

(declare-fun res!271514 () Bool)

(assert (=> b!625915 (=> (not res!271514) (not e!379643))))

(declare-fun lt!266593 () Int)

(assert (=> b!625915 (= res!271514 (and (<= from!852 lt!266593) (isSeparator!1313 (rule!2109 separatorToken!136)) (< from!852 lt!266593)))))

(declare-fun size!5025 (BalanceConc!4144) Int)

(assert (=> b!625915 (= lt!266593 (size!5025 v!6361))))

(assert (= (and start!60268 res!271513) b!625915))

(assert (= (and b!625915 res!271514) b!625913))

(assert (= start!60268 b!625910))

(assert (= b!625912 b!625914))

(assert (= b!625911 b!625912))

(assert (= start!60268 b!625911))

(declare-fun m!893905 () Bool)

(assert (=> b!625913 m!893905))

(declare-fun m!893907 () Bool)

(assert (=> b!625913 m!893907))

(declare-fun m!893909 () Bool)

(assert (=> b!625913 m!893909))

(declare-fun m!893911 () Bool)

(assert (=> b!625913 m!893911))

(declare-fun m!893913 () Bool)

(assert (=> b!625913 m!893913))

(assert (=> b!625913 m!893913))

(declare-fun m!893915 () Bool)

(assert (=> b!625913 m!893915))

(declare-fun m!893917 () Bool)

(assert (=> b!625915 m!893917))

(declare-fun m!893919 () Bool)

(assert (=> b!625911 m!893919))

(declare-fun m!893921 () Bool)

(assert (=> start!60268 m!893921))

(declare-fun m!893923 () Bool)

(assert (=> start!60268 m!893923))

(declare-fun m!893925 () Bool)

(assert (=> b!625912 m!893925))

(declare-fun m!893927 () Bool)

(assert (=> b!625912 m!893927))

(declare-fun m!893929 () Bool)

(assert (=> b!625910 m!893929))

(check-sat (not b!625910) b_and!62113 (not start!60268) (not b!625915) (not b!625911) (not b!625913) (not b!625912) (not b_next!18357) b_and!62111 (not b_next!18359))
(check-sat b_and!62111 b_and!62113 (not b_next!18359) (not b_next!18357))
(get-model)

(declare-fun d!219015 () Bool)

(declare-fun lt!266597 () Int)

(assert (=> d!219015 (= lt!266597 (size!5024 (list!2705 v!6361)))))

(declare-fun size!5026 (Conc!2068) Int)

(assert (=> d!219015 (= lt!266597 (size!5026 (c!114931 v!6361)))))

(assert (=> d!219015 (= (size!5025 v!6361) lt!266597)))

(declare-fun bs!72237 () Bool)

(assert (= bs!72237 d!219015))

(assert (=> bs!72237 m!893909))

(assert (=> bs!72237 m!893909))

(declare-fun m!893931 () Bool)

(assert (=> bs!72237 m!893931))

(declare-fun m!893933 () Bool)

(assert (=> bs!72237 m!893933))

(assert (=> b!625915 d!219015))

(declare-fun b!625926 () Bool)

(declare-fun res!271519 () Bool)

(declare-fun e!379652 () Bool)

(assert (=> b!625926 (=> res!271519 e!379652)))

(assert (=> b!625926 (= res!271519 (not ((_ is IntegerValue!4013) (value!42284 separatorToken!136))))))

(declare-fun e!379653 () Bool)

(assert (=> b!625926 (= e!379653 e!379652)))

(declare-fun d!219017 () Bool)

(declare-fun c!114936 () Bool)

(assert (=> d!219017 (= c!114936 ((_ is IntegerValue!4011) (value!42284 separatorToken!136)))))

(declare-fun e!379651 () Bool)

(assert (=> d!219017 (= (inv!21 (value!42284 separatorToken!136)) e!379651)))

(declare-fun b!625927 () Bool)

(assert (=> b!625927 (= e!379651 e!379653)))

(declare-fun c!114937 () Bool)

(assert (=> b!625927 (= c!114937 ((_ is IntegerValue!4012) (value!42284 separatorToken!136)))))

(declare-fun b!625928 () Bool)

(declare-fun inv!17 (TokenValue!1337) Bool)

(assert (=> b!625928 (= e!379653 (inv!17 (value!42284 separatorToken!136)))))

(declare-fun b!625929 () Bool)

(declare-fun inv!16 (TokenValue!1337) Bool)

(assert (=> b!625929 (= e!379651 (inv!16 (value!42284 separatorToken!136)))))

(declare-fun b!625930 () Bool)

(declare-fun inv!15 (TokenValue!1337) Bool)

(assert (=> b!625930 (= e!379652 (inv!15 (value!42284 separatorToken!136)))))

(assert (= (and d!219017 c!114936) b!625929))

(assert (= (and d!219017 (not c!114936)) b!625927))

(assert (= (and b!625927 c!114937) b!625928))

(assert (= (and b!625927 (not c!114937)) b!625926))

(assert (= (and b!625926 (not res!271519)) b!625930))

(declare-fun m!893935 () Bool)

(assert (=> b!625928 m!893935))

(declare-fun m!893937 () Bool)

(assert (=> b!625929 m!893937))

(declare-fun m!893939 () Bool)

(assert (=> b!625930 m!893939))

(assert (=> b!625911 d!219017))

(declare-fun d!219019 () Bool)

(declare-fun c!114940 () Bool)

(assert (=> d!219019 (= c!114940 ((_ is Node!2068) (c!114931 v!6361)))))

(declare-fun e!379658 () Bool)

(assert (=> d!219019 (= (inv!8194 (c!114931 v!6361)) e!379658)))

(declare-fun b!625937 () Bool)

(declare-fun inv!8198 (Conc!2068) Bool)

(assert (=> b!625937 (= e!379658 (inv!8198 (c!114931 v!6361)))))

(declare-fun b!625938 () Bool)

(declare-fun e!379659 () Bool)

(assert (=> b!625938 (= e!379658 e!379659)))

(declare-fun res!271522 () Bool)

(assert (=> b!625938 (= res!271522 (not ((_ is Leaf!3233) (c!114931 v!6361))))))

(assert (=> b!625938 (=> res!271522 e!379659)))

(declare-fun b!625939 () Bool)

(declare-fun inv!8199 (Conc!2068) Bool)

(assert (=> b!625939 (= e!379659 (inv!8199 (c!114931 v!6361)))))

(assert (= (and d!219019 c!114940) b!625937))

(assert (= (and d!219019 (not c!114940)) b!625938))

(assert (= (and b!625938 (not res!271522)) b!625939))

(declare-fun m!893941 () Bool)

(assert (=> b!625937 m!893941))

(declare-fun m!893943 () Bool)

(assert (=> b!625939 m!893943))

(assert (=> b!625910 d!219019))

(declare-fun d!219021 () Bool)

(assert (=> d!219021 (= (inv!8189 (tag!1575 (rule!2109 separatorToken!136))) (= (mod (str.len (value!42283 (tag!1575 (rule!2109 separatorToken!136)))) 2) 0))))

(assert (=> b!625912 d!219021))

(declare-fun d!219023 () Bool)

(declare-fun res!271526 () Bool)

(declare-fun e!379662 () Bool)

(assert (=> d!219023 (=> (not res!271526) (not e!379662))))

(declare-fun semiInverseModEq!526 (Int Int) Bool)

(assert (=> d!219023 (= res!271526 (semiInverseModEq!526 (toChars!2101 (transformation!1313 (rule!2109 separatorToken!136))) (toValue!2242 (transformation!1313 (rule!2109 separatorToken!136)))))))

(assert (=> d!219023 (= (inv!8195 (transformation!1313 (rule!2109 separatorToken!136))) e!379662)))

(declare-fun b!625942 () Bool)

(declare-fun equivClasses!509 (Int Int) Bool)

(assert (=> b!625942 (= e!379662 (equivClasses!509 (toChars!2101 (transformation!1313 (rule!2109 separatorToken!136))) (toValue!2242 (transformation!1313 (rule!2109 separatorToken!136)))))))

(assert (= (and d!219023 res!271526) b!625942))

(declare-fun m!893945 () Bool)

(assert (=> d!219023 m!893945))

(declare-fun m!893947 () Bool)

(assert (=> b!625942 m!893947))

(assert (=> b!625912 d!219023))

(declare-fun d!219025 () Bool)

(declare-fun isBalanced!547 (Conc!2068) Bool)

(assert (=> d!219025 (= (inv!8196 v!6361) (isBalanced!547 (c!114931 v!6361)))))

(declare-fun bs!72238 () Bool)

(assert (= bs!72238 d!219025))

(declare-fun m!893949 () Bool)

(assert (=> bs!72238 m!893949))

(assert (=> start!60268 d!219025))

(declare-fun d!219027 () Bool)

(declare-fun res!271532 () Bool)

(declare-fun e!379665 () Bool)

(assert (=> d!219027 (=> (not res!271532) (not e!379665))))

(declare-fun isEmpty!4581 (List!6436) Bool)

(assert (=> d!219027 (= res!271532 (not (isEmpty!4581 (originalCharacters!1346 separatorToken!136))))))

(assert (=> d!219027 (= (inv!8197 separatorToken!136) e!379665)))

(declare-fun b!625947 () Bool)

(declare-fun res!271533 () Bool)

(assert (=> b!625947 (=> (not res!271533) (not e!379665))))

(declare-fun list!2706 (BalanceConc!4142) List!6436)

(declare-fun dynLambda!3634 (Int TokenValue!1337) BalanceConc!4142)

(assert (=> b!625947 (= res!271533 (= (originalCharacters!1346 separatorToken!136) (list!2706 (dynLambda!3634 (toChars!2101 (transformation!1313 (rule!2109 separatorToken!136))) (value!42284 separatorToken!136)))))))

(declare-fun b!625948 () Bool)

(declare-fun size!5027 (List!6436) Int)

(assert (=> b!625948 (= e!379665 (= (size!5023 separatorToken!136) (size!5027 (originalCharacters!1346 separatorToken!136))))))

(assert (= (and d!219027 res!271532) b!625947))

(assert (= (and b!625947 res!271533) b!625948))

(declare-fun b_lambda!24685 () Bool)

(assert (=> (not b_lambda!24685) (not b!625947)))

(declare-fun t!82355 () Bool)

(declare-fun tb!54411 () Bool)

(assert (=> (and b!625914 (= (toChars!2101 (transformation!1313 (rule!2109 separatorToken!136))) (toChars!2101 (transformation!1313 (rule!2109 separatorToken!136)))) t!82355) tb!54411))

(declare-fun b!625953 () Bool)

(declare-fun e!379668 () Bool)

(declare-fun tp!195612 () Bool)

(declare-fun inv!8200 (Conc!2067) Bool)

(assert (=> b!625953 (= e!379668 (and (inv!8200 (c!114929 (dynLambda!3634 (toChars!2101 (transformation!1313 (rule!2109 separatorToken!136))) (value!42284 separatorToken!136)))) tp!195612))))

(declare-fun result!61438 () Bool)

(declare-fun inv!8201 (BalanceConc!4142) Bool)

(assert (=> tb!54411 (= result!61438 (and (inv!8201 (dynLambda!3634 (toChars!2101 (transformation!1313 (rule!2109 separatorToken!136))) (value!42284 separatorToken!136))) e!379668))))

(assert (= tb!54411 b!625953))

(declare-fun m!893951 () Bool)

(assert (=> b!625953 m!893951))

(declare-fun m!893953 () Bool)

(assert (=> tb!54411 m!893953))

(assert (=> b!625947 t!82355))

(declare-fun b_and!62115 () Bool)

(assert (= b_and!62113 (and (=> t!82355 result!61438) b_and!62115)))

(declare-fun m!893955 () Bool)

(assert (=> d!219027 m!893955))

(declare-fun m!893957 () Bool)

(assert (=> b!625947 m!893957))

(assert (=> b!625947 m!893957))

(declare-fun m!893959 () Bool)

(assert (=> b!625947 m!893959))

(declare-fun m!893961 () Bool)

(assert (=> b!625948 m!893961))

(assert (=> start!60268 d!219027))

(declare-fun d!219031 () Bool)

(assert (=> d!219031 (= (head!1327 (drop!340 lt!266594 from!852)) (apply!1529 lt!266594 from!852))))

(declare-fun lt!266600 () Unit!11508)

(declare-fun choose!4547 (List!6438 Int) Unit!11508)

(assert (=> d!219031 (= lt!266600 (choose!4547 lt!266594 from!852))))

(declare-fun e!379671 () Bool)

(assert (=> d!219031 e!379671))

(declare-fun res!271536 () Bool)

(assert (=> d!219031 (=> (not res!271536) (not e!379671))))

(assert (=> d!219031 (= res!271536 (>= from!852 0))))

(assert (=> d!219031 (= (lemmaDropApply!306 lt!266594 from!852) lt!266600)))

(declare-fun b!625956 () Bool)

(assert (=> b!625956 (= e!379671 (< from!852 (size!5024 lt!266594)))))

(assert (= (and d!219031 res!271536) b!625956))

(assert (=> d!219031 m!893913))

(assert (=> d!219031 m!893913))

(assert (=> d!219031 m!893915))

(assert (=> d!219031 m!893907))

(declare-fun m!893963 () Bool)

(assert (=> d!219031 m!893963))

(assert (=> b!625956 m!893911))

(assert (=> b!625913 d!219031))

(declare-fun d!219033 () Bool)

(declare-fun lt!266603 () Token!2350)

(declare-fun contains!1503 (List!6438 Token!2350) Bool)

(assert (=> d!219033 (contains!1503 lt!266594 lt!266603)))

(declare-fun e!379682 () Token!2350)

(assert (=> d!219033 (= lt!266603 e!379682)))

(declare-fun c!114946 () Bool)

(assert (=> d!219033 (= c!114946 (= from!852 0))))

(declare-fun e!379683 () Bool)

(assert (=> d!219033 e!379683))

(declare-fun res!271542 () Bool)

(assert (=> d!219033 (=> (not res!271542) (not e!379683))))

(assert (=> d!219033 (= res!271542 (<= 0 from!852))))

(assert (=> d!219033 (= (apply!1529 lt!266594 from!852) lt!266603)))

(declare-fun b!625972 () Bool)

(assert (=> b!625972 (= e!379683 (< from!852 (size!5024 lt!266594)))))

(declare-fun b!625973 () Bool)

(assert (=> b!625973 (= e!379682 (head!1327 lt!266594))))

(declare-fun b!625974 () Bool)

(declare-fun tail!855 (List!6438) List!6438)

(assert (=> b!625974 (= e!379682 (apply!1529 (tail!855 lt!266594) (- from!852 1)))))

(assert (= (and d!219033 res!271542) b!625972))

(assert (= (and d!219033 c!114946) b!625973))

(assert (= (and d!219033 (not c!114946)) b!625974))

(declare-fun m!893969 () Bool)

(assert (=> d!219033 m!893969))

(assert (=> b!625972 m!893911))

(declare-fun m!893971 () Bool)

(assert (=> b!625973 m!893971))

(declare-fun m!893973 () Bool)

(assert (=> b!625974 m!893973))

(assert (=> b!625974 m!893973))

(declare-fun m!893975 () Bool)

(assert (=> b!625974 m!893975))

(assert (=> b!625913 d!219033))

(declare-fun d!219037 () Bool)

(assert (=> d!219037 (= (head!1327 (drop!340 lt!266594 from!852)) (h!11829 (drop!340 lt!266594 from!852)))))

(assert (=> b!625913 d!219037))

(declare-fun d!219039 () Bool)

(declare-fun list!2707 (Conc!2068) List!6438)

(assert (=> d!219039 (= (list!2705 v!6361) (list!2707 (c!114931 v!6361)))))

(declare-fun bs!72239 () Bool)

(assert (= bs!72239 d!219039))

(declare-fun m!893977 () Bool)

(assert (=> bs!72239 m!893977))

(assert (=> b!625913 d!219039))

(declare-fun d!219041 () Bool)

(declare-fun lt!266606 () Int)

(assert (=> d!219041 (>= lt!266606 0)))

(declare-fun e!379692 () Int)

(assert (=> d!219041 (= lt!266606 e!379692)))

(declare-fun c!114953 () Bool)

(assert (=> d!219041 (= c!114953 ((_ is Nil!6428) lt!266594))))

(assert (=> d!219041 (= (size!5024 lt!266594) lt!266606)))

(declare-fun b!625989 () Bool)

(assert (=> b!625989 (= e!379692 0)))

(declare-fun b!625990 () Bool)

(assert (=> b!625990 (= e!379692 (+ 1 (size!5024 (t!82353 lt!266594))))))

(assert (= (and d!219041 c!114953) b!625989))

(assert (= (and d!219041 (not c!114953)) b!625990))

(declare-fun m!893979 () Bool)

(assert (=> b!625990 m!893979))

(assert (=> b!625913 d!219041))

(declare-fun b!626014 () Bool)

(declare-fun e!379708 () Int)

(declare-fun call!41146 () Int)

(assert (=> b!626014 (= e!379708 (- call!41146 from!852))))

(declare-fun bm!41141 () Bool)

(assert (=> bm!41141 (= call!41146 (size!5024 lt!266594))))

(declare-fun b!626015 () Bool)

(declare-fun e!379706 () List!6438)

(assert (=> b!626015 (= e!379706 Nil!6428)))

(declare-fun b!626016 () Bool)

(assert (=> b!626016 (= e!379708 0)))

(declare-fun b!626017 () Bool)

(declare-fun e!379709 () Int)

(assert (=> b!626017 (= e!379709 e!379708)))

(declare-fun c!114966 () Bool)

(assert (=> b!626017 (= c!114966 (>= from!852 call!41146))))

(declare-fun b!626018 () Bool)

(declare-fun e!379707 () List!6438)

(assert (=> b!626018 (= e!379706 e!379707)))

(declare-fun c!114965 () Bool)

(assert (=> b!626018 (= c!114965 (<= from!852 0))))

(declare-fun b!626019 () Bool)

(assert (=> b!626019 (= e!379707 (drop!340 (t!82353 lt!266594) (- from!852 1)))))

(declare-fun d!219043 () Bool)

(declare-fun e!379710 () Bool)

(assert (=> d!219043 e!379710))

(declare-fun res!271548 () Bool)

(assert (=> d!219043 (=> (not res!271548) (not e!379710))))

(declare-fun lt!266609 () List!6438)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1156 (List!6438) (InoxSet Token!2350))

(assert (=> d!219043 (= res!271548 (= ((_ map implies) (content!1156 lt!266609) (content!1156 lt!266594)) ((as const (InoxSet Token!2350)) true)))))

(assert (=> d!219043 (= lt!266609 e!379706)))

(declare-fun c!114964 () Bool)

(assert (=> d!219043 (= c!114964 ((_ is Nil!6428) lt!266594))))

(assert (=> d!219043 (= (drop!340 lt!266594 from!852) lt!266609)))

(declare-fun b!626020 () Bool)

(assert (=> b!626020 (= e!379709 call!41146)))

(declare-fun b!626021 () Bool)

(assert (=> b!626021 (= e!379707 lt!266594)))

(declare-fun b!626022 () Bool)

(assert (=> b!626022 (= e!379710 (= (size!5024 lt!266609) e!379709))))

(declare-fun c!114967 () Bool)

(assert (=> b!626022 (= c!114967 (<= from!852 0))))

(assert (= (and d!219043 c!114964) b!626015))

(assert (= (and d!219043 (not c!114964)) b!626018))

(assert (= (and b!626018 c!114965) b!626021))

(assert (= (and b!626018 (not c!114965)) b!626019))

(assert (= (and d!219043 res!271548) b!626022))

(assert (= (and b!626022 c!114967) b!626020))

(assert (= (and b!626022 (not c!114967)) b!626017))

(assert (= (and b!626017 c!114966) b!626016))

(assert (= (and b!626017 (not c!114966)) b!626014))

(assert (= (or b!626020 b!626017 b!626014) bm!41141))

(assert (=> bm!41141 m!893911))

(declare-fun m!893987 () Bool)

(assert (=> b!626019 m!893987))

(declare-fun m!893989 () Bool)

(assert (=> d!219043 m!893989))

(declare-fun m!893991 () Bool)

(assert (=> d!219043 m!893991))

(declare-fun m!893993 () Bool)

(assert (=> b!626022 m!893993))

(assert (=> b!625913 d!219043))

(declare-fun b!626031 () Bool)

(declare-fun e!379715 () Bool)

(declare-fun tp_is_empty!3619 () Bool)

(declare-fun tp!195615 () Bool)

(assert (=> b!626031 (= e!379715 (and tp_is_empty!3619 tp!195615))))

(assert (=> b!625911 (= tp!195605 e!379715)))

(assert (= (and b!625911 ((_ is Cons!6426) (originalCharacters!1346 separatorToken!136))) b!626031))

(declare-fun b!626042 () Bool)

(declare-fun e!379721 () Bool)

(declare-fun tp!195622 () Bool)

(declare-fun tp!195623 () Bool)

(assert (=> b!626042 (= e!379721 (and (inv!8194 (left!5102 (c!114931 v!6361))) tp!195623 (inv!8194 (right!5432 (c!114931 v!6361))) tp!195622))))

(declare-fun b!626044 () Bool)

(declare-fun e!379722 () Bool)

(declare-fun tp!195624 () Bool)

(assert (=> b!626044 (= e!379722 tp!195624)))

(declare-fun b!626043 () Bool)

(declare-fun inv!8202 (IArray!4137) Bool)

(assert (=> b!626043 (= e!379721 (and (inv!8202 (xs!4705 (c!114931 v!6361))) e!379722))))

(assert (=> b!625910 (= tp!195608 (and (inv!8194 (c!114931 v!6361)) e!379721))))

(assert (= (and b!625910 ((_ is Node!2068) (c!114931 v!6361))) b!626042))

(assert (= b!626043 b!626044))

(assert (= (and b!625910 ((_ is Leaf!3233) (c!114931 v!6361))) b!626043))

(declare-fun m!893997 () Bool)

(assert (=> b!626042 m!893997))

(declare-fun m!893999 () Bool)

(assert (=> b!626042 m!893999))

(declare-fun m!894001 () Bool)

(assert (=> b!626043 m!894001))

(assert (=> b!625910 m!893929))

(declare-fun e!379725 () Bool)

(assert (=> b!625912 (= tp!195609 e!379725)))

(declare-fun b!626055 () Bool)

(assert (=> b!626055 (= e!379725 tp_is_empty!3619)))

(declare-fun b!626056 () Bool)

(declare-fun tp!195639 () Bool)

(declare-fun tp!195637 () Bool)

(assert (=> b!626056 (= e!379725 (and tp!195639 tp!195637))))

(declare-fun b!626057 () Bool)

(declare-fun tp!195638 () Bool)

(assert (=> b!626057 (= e!379725 tp!195638)))

(declare-fun b!626058 () Bool)

(declare-fun tp!195635 () Bool)

(declare-fun tp!195636 () Bool)

(assert (=> b!626058 (= e!379725 (and tp!195635 tp!195636))))

(assert (= (and b!625912 ((_ is ElementMatch!1647) (regex!1313 (rule!2109 separatorToken!136)))) b!626055))

(assert (= (and b!625912 ((_ is Concat!2985) (regex!1313 (rule!2109 separatorToken!136)))) b!626056))

(assert (= (and b!625912 ((_ is Star!1647) (regex!1313 (rule!2109 separatorToken!136)))) b!626057))

(assert (= (and b!625912 ((_ is Union!1647) (regex!1313 (rule!2109 separatorToken!136)))) b!626058))

(declare-fun b_lambda!24687 () Bool)

(assert (= b_lambda!24685 (or (and b!625914 b_free!18343) b_lambda!24687)))

(check-sat (not b_next!18357) (not d!219039) (not b!626058) (not b!625939) (not b!625953) (not b!625942) (not d!219015) (not b!626057) (not b!625930) (not b_lambda!24687) (not tb!54411) (not b!626044) (not b!625928) (not b!625973) (not b!625937) (not b!626042) (not bm!41141) (not b!626056) (not d!219025) (not b!625956) (not b!625990) (not d!219031) (not d!219033) (not d!219043) (not b!625910) (not b!625972) (not b!625974) (not b!625947) b_and!62115 (not b!625948) (not d!219023) tp_is_empty!3619 (not b!625929) (not b!626043) (not b!626031) (not d!219027) (not b!626019) b_and!62111 (not b_next!18359) (not b!626022))
(check-sat b_and!62111 b_and!62115 (not b_next!18359) (not b_next!18357))
