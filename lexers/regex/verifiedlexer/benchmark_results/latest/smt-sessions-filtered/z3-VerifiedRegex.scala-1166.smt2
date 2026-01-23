; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60328 () Bool)

(assert start!60328)

(declare-fun b!626212 () Bool)

(declare-fun b_free!18357 () Bool)

(declare-fun b_next!18373 () Bool)

(assert (=> b!626212 (= b_free!18357 (not b_next!18373))))

(declare-fun tp!195728 () Bool)

(declare-fun b_and!62131 () Bool)

(assert (=> b!626212 (= tp!195728 b_and!62131)))

(declare-fun b_free!18359 () Bool)

(declare-fun b_next!18375 () Bool)

(assert (=> b!626212 (= b_free!18359 (not b_next!18375))))

(declare-fun tp!195726 () Bool)

(declare-fun b_and!62133 () Bool)

(assert (=> b!626212 (= tp!195726 b_and!62133)))

(declare-fun b!626208 () Bool)

(declare-fun e!379866 () Bool)

(declare-datatypes ((C!4228 0))(
  ( (C!4229 (val!2340 Int)) )
))
(declare-datatypes ((List!6448 0))(
  ( (Nil!6438) (Cons!6438 (h!11839 C!4228) (t!82367 List!6448)) )
))
(declare-datatypes ((IArray!4151 0))(
  ( (IArray!4152 (innerList!2133 List!6448)) )
))
(declare-datatypes ((Conc!2075 0))(
  ( (Node!2075 (left!5111 Conc!2075) (right!5441 Conc!2075) (csize!4380 Int) (cheight!2286 Int)) (Leaf!3242 (xs!4712 IArray!4151) (csize!4381 Int)) (Empty!2075) )
))
(declare-datatypes ((BalanceConc!4158 0))(
  ( (BalanceConc!4159 (c!114995 Conc!2075)) )
))
(declare-datatypes ((List!6449 0))(
  ( (Nil!6439) (Cons!6439 (h!11840 (_ BitVec 16)) (t!82368 List!6449)) )
))
(declare-datatypes ((TokenValue!1341 0))(
  ( (FloatLiteralValue!2682 (text!9832 List!6449)) (TokenValueExt!1340 (__x!4582 Int)) (Broken!6705 (value!42372 List!6449)) (Object!1350) (End!1341) (Def!1341) (Underscore!1341) (Match!1341) (Else!1341) (Error!1341) (Case!1341) (If!1341) (Extends!1341) (Abstract!1341) (Class!1341) (Val!1341) (DelimiterValue!2682 (del!1401 List!6449)) (KeywordValue!1347 (value!42373 List!6449)) (CommentValue!2682 (value!42374 List!6449)) (WhitespaceValue!2682 (value!42375 List!6449)) (IndentationValue!1341 (value!42376 List!6449)) (String!8452) (Int32!1341) (Broken!6706 (value!42377 List!6449)) (Boolean!1342) (Unit!11519) (OperatorValue!1344 (op!1401 List!6449)) (IdentifierValue!2682 (value!42378 List!6449)) (IdentifierValue!2683 (value!42379 List!6449)) (WhitespaceValue!2683 (value!42380 List!6449)) (True!2682) (False!2682) (Broken!6707 (value!42381 List!6449)) (Broken!6708 (value!42382 List!6449)) (True!2683) (RightBrace!1341) (RightBracket!1341) (Colon!1341) (Null!1341) (Comma!1341) (LeftBracket!1341) (False!2683) (LeftBrace!1341) (ImaginaryLiteralValue!1341 (text!9833 List!6449)) (StringLiteralValue!4023 (value!42383 List!6449)) (EOFValue!1341 (value!42384 List!6449)) (IdentValue!1341 (value!42385 List!6449)) (DelimiterValue!2683 (value!42386 List!6449)) (DedentValue!1341 (value!42387 List!6449)) (NewLineValue!1341 (value!42388 List!6449)) (IntegerValue!4023 (value!42389 (_ BitVec 32)) (text!9834 List!6449)) (IntegerValue!4024 (value!42390 Int) (text!9835 List!6449)) (Times!1341) (Or!1341) (Equal!1341) (Minus!1341) (Broken!6709 (value!42391 List!6449)) (And!1341) (Div!1341) (LessEqual!1341) (Mod!1341) (Concat!2992) (Not!1341) (Plus!1341) (SpaceValue!1341 (value!42392 List!6449)) (IntegerValue!4025 (value!42393 Int) (text!9836 List!6449)) (StringLiteralValue!4024 (text!9837 List!6449)) (FloatLiteralValue!2683 (text!9838 List!6449)) (BytesLiteralValue!1341 (value!42394 List!6449)) (CommentValue!2683 (value!42395 List!6449)) (StringLiteralValue!4025 (value!42396 List!6449)) (ErrorTokenValue!1341 (msg!1402 List!6449)) )
))
(declare-datatypes ((Regex!1651 0))(
  ( (ElementMatch!1651 (c!114996 C!4228)) (Concat!2993 (regOne!3814 Regex!1651) (regTwo!3814 Regex!1651)) (EmptyExpr!1651) (Star!1651 (reg!1980 Regex!1651)) (EmptyLang!1651) (Union!1651 (regOne!3815 Regex!1651) (regTwo!3815 Regex!1651)) )
))
(declare-datatypes ((String!8453 0))(
  ( (String!8454 (value!42397 String)) )
))
(declare-datatypes ((TokenValueInjection!2450 0))(
  ( (TokenValueInjection!2451 (toValue!2246 Int) (toChars!2105 Int)) )
))
(declare-datatypes ((Rule!2434 0))(
  ( (Rule!2435 (regex!1317 Regex!1651) (tag!1579 String!8453) (isSeparator!1317 Bool) (transformation!1317 TokenValueInjection!2450)) )
))
(declare-datatypes ((Token!2358 0))(
  ( (Token!2359 (value!42398 TokenValue!1341) (rule!2113 Rule!2434) (size!5034 Int) (originalCharacters!1350 List!6448)) )
))
(declare-datatypes ((List!6450 0))(
  ( (Nil!6440) (Cons!6440 (h!11841 Token!2358) (t!82369 List!6450)) )
))
(declare-datatypes ((IArray!4153 0))(
  ( (IArray!4154 (innerList!2134 List!6450)) )
))
(declare-datatypes ((Conc!2076 0))(
  ( (Node!2076 (left!5112 Conc!2076) (right!5442 Conc!2076) (csize!4382 Int) (cheight!2287 Int)) (Leaf!3243 (xs!4713 IArray!4153) (csize!4383 Int)) (Empty!2076) )
))
(declare-datatypes ((BalanceConc!4160 0))(
  ( (BalanceConc!4161 (c!114997 Conc!2076)) )
))
(declare-fun v!6361 () BalanceConc!4160)

(declare-fun tp!195729 () Bool)

(declare-fun inv!8223 (Conc!2076) Bool)

(assert (=> b!626208 (= e!379866 (and (inv!8223 (c!114997 v!6361)) tp!195729))))

(declare-datatypes ((LexerInterface!1205 0))(
  ( (LexerInterfaceExt!1202 (__x!4583 Int)) (Lexer!1203) )
))
(declare-fun thiss!14007 () LexerInterface!1205)

(declare-fun b!626209 () Bool)

(declare-fun e!379861 () Bool)

(declare-fun from!852 () Int)

(declare-fun separatorToken!136 () Token!2358)

(declare-fun list!2712 (BalanceConc!4158) List!6448)

(declare-fun ++!1775 (BalanceConc!4158 BalanceConc!4158) BalanceConc!4158)

(declare-fun charsOf!902 (Token!2358) BalanceConc!4158)

(declare-fun apply!1536 (BalanceConc!4160 Int) Token!2358)

(declare-fun printWithSeparatorTokenRec!4 (LexerInterface!1205 BalanceConc!4160 Token!2358 Int) BalanceConc!4158)

(declare-fun printWithSeparatorTokenList!4 (LexerInterface!1205 List!6450 Token!2358) List!6448)

(declare-fun dropList!262 (BalanceConc!4160 Int) List!6450)

(assert (=> b!626209 (= e!379861 (not (= (list!2712 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) (printWithSeparatorTokenList!4 thiss!14007 (dropList!262 v!6361 from!852) separatorToken!136))))))

(declare-fun lt!266686 () List!6450)

(declare-fun lt!266688 () List!6450)

(declare-fun tail!859 (List!6450) List!6450)

(declare-fun drop!344 (List!6450 Int) List!6450)

(assert (=> b!626209 (= (tail!859 lt!266686) (drop!344 lt!266688 (+ 1 from!852)))))

(declare-datatypes ((Unit!11520 0))(
  ( (Unit!11521) )
))
(declare-fun lt!266687 () Unit!11520)

(declare-fun lemmaDropTail!298 (List!6450 Int) Unit!11520)

(assert (=> b!626209 (= lt!266687 (lemmaDropTail!298 lt!266688 from!852))))

(declare-fun head!1331 (List!6450) Token!2358)

(declare-fun apply!1537 (List!6450 Int) Token!2358)

(assert (=> b!626209 (= (head!1331 lt!266686) (apply!1537 lt!266688 from!852))))

(assert (=> b!626209 (= lt!266686 (drop!344 lt!266688 from!852))))

(declare-fun lt!266689 () Unit!11520)

(declare-fun lemmaDropApply!310 (List!6450 Int) Unit!11520)

(assert (=> b!626209 (= lt!266689 (lemmaDropApply!310 lt!266688 from!852))))

(declare-fun list!2713 (BalanceConc!4160) List!6450)

(assert (=> b!626209 (= lt!266688 (list!2713 v!6361))))

(declare-fun tp!195727 () Bool)

(declare-fun b!626210 () Bool)

(declare-fun e!379863 () Bool)

(declare-fun e!379859 () Bool)

(declare-fun inv!21 (TokenValue!1341) Bool)

(assert (=> b!626210 (= e!379863 (and (inv!21 (value!42398 separatorToken!136)) e!379859 tp!195727))))

(declare-fun res!271589 () Bool)

(declare-fun e!379860 () Bool)

(assert (=> start!60328 (=> (not res!271589) (not e!379860))))

(get-info :version)

(assert (=> start!60328 (= res!271589 (and ((_ is Lexer!1203) thiss!14007) (>= from!852 0)))))

(assert (=> start!60328 e!379860))

(assert (=> start!60328 true))

(declare-fun inv!8224 (BalanceConc!4160) Bool)

(assert (=> start!60328 (and (inv!8224 v!6361) e!379866)))

(declare-fun inv!8225 (Token!2358) Bool)

(assert (=> start!60328 (and (inv!8225 separatorToken!136) e!379863)))

(declare-fun b!626211 () Bool)

(assert (=> b!626211 (= e!379860 e!379861)))

(declare-fun res!271590 () Bool)

(assert (=> b!626211 (=> (not res!271590) (not e!379861))))

(declare-fun lt!266690 () Int)

(assert (=> b!626211 (= res!271590 (and (<= from!852 lt!266690) (isSeparator!1317 (rule!2113 separatorToken!136)) (< from!852 lt!266690)))))

(declare-fun size!5035 (BalanceConc!4160) Int)

(assert (=> b!626211 (= lt!266690 (size!5035 v!6361))))

(declare-fun e!379862 () Bool)

(assert (=> b!626212 (= e!379862 (and tp!195728 tp!195726))))

(declare-fun tp!195725 () Bool)

(declare-fun b!626213 () Bool)

(declare-fun inv!8218 (String!8453) Bool)

(declare-fun inv!8226 (TokenValueInjection!2450) Bool)

(assert (=> b!626213 (= e!379859 (and tp!195725 (inv!8218 (tag!1579 (rule!2113 separatorToken!136))) (inv!8226 (transformation!1317 (rule!2113 separatorToken!136))) e!379862))))

(assert (= (and start!60328 res!271589) b!626211))

(assert (= (and b!626211 res!271590) b!626209))

(assert (= start!60328 b!626208))

(assert (= b!626213 b!626212))

(assert (= b!626210 b!626213))

(assert (= start!60328 b!626210))

(declare-fun m!894175 () Bool)

(assert (=> start!60328 m!894175))

(declare-fun m!894177 () Bool)

(assert (=> start!60328 m!894177))

(declare-fun m!894179 () Bool)

(assert (=> b!626213 m!894179))

(declare-fun m!894181 () Bool)

(assert (=> b!626213 m!894181))

(declare-fun m!894183 () Bool)

(assert (=> b!626209 m!894183))

(declare-fun m!894185 () Bool)

(assert (=> b!626209 m!894185))

(declare-fun m!894187 () Bool)

(assert (=> b!626209 m!894187))

(declare-fun m!894189 () Bool)

(assert (=> b!626209 m!894189))

(declare-fun m!894191 () Bool)

(assert (=> b!626209 m!894191))

(declare-fun m!894193 () Bool)

(assert (=> b!626209 m!894193))

(declare-fun m!894195 () Bool)

(assert (=> b!626209 m!894195))

(declare-fun m!894197 () Bool)

(assert (=> b!626209 m!894197))

(declare-fun m!894199 () Bool)

(assert (=> b!626209 m!894199))

(declare-fun m!894201 () Bool)

(assert (=> b!626209 m!894201))

(declare-fun m!894203 () Bool)

(assert (=> b!626209 m!894203))

(declare-fun m!894205 () Bool)

(assert (=> b!626209 m!894205))

(assert (=> b!626209 m!894189))

(declare-fun m!894207 () Bool)

(assert (=> b!626209 m!894207))

(declare-fun m!894209 () Bool)

(assert (=> b!626209 m!894209))

(assert (=> b!626209 m!894203))

(assert (=> b!626209 m!894201))

(declare-fun m!894211 () Bool)

(assert (=> b!626209 m!894211))

(assert (=> b!626209 m!894187))

(declare-fun m!894213 () Bool)

(assert (=> b!626209 m!894213))

(assert (=> b!626209 m!894211))

(assert (=> b!626209 m!894191))

(declare-fun m!894215 () Bool)

(assert (=> b!626209 m!894215))

(assert (=> b!626209 m!894199))

(declare-fun m!894217 () Bool)

(assert (=> b!626208 m!894217))

(declare-fun m!894219 () Bool)

(assert (=> b!626211 m!894219))

(declare-fun m!894221 () Bool)

(assert (=> b!626210 m!894221))

(check-sat (not b_next!18373) (not b_next!18375) (not b!626213) b_and!62133 (not b!626208) (not b!626209) b_and!62131 (not b!626211) (not b!626210) (not start!60328))
(check-sat b_and!62131 b_and!62133 (not b_next!18375) (not b_next!18373))
(get-model)

(declare-fun b!626271 () Bool)

(declare-fun e!379902 () Bool)

(declare-fun e!379900 () Bool)

(assert (=> b!626271 (= e!379902 e!379900)))

(declare-fun c!115017 () Bool)

(assert (=> b!626271 (= c!115017 ((_ is IntegerValue!4024) (value!42398 separatorToken!136)))))

(declare-fun b!626272 () Bool)

(declare-fun inv!16 (TokenValue!1341) Bool)

(assert (=> b!626272 (= e!379902 (inv!16 (value!42398 separatorToken!136)))))

(declare-fun b!626273 () Bool)

(declare-fun res!271609 () Bool)

(declare-fun e!379901 () Bool)

(assert (=> b!626273 (=> res!271609 e!379901)))

(assert (=> b!626273 (= res!271609 (not ((_ is IntegerValue!4025) (value!42398 separatorToken!136))))))

(assert (=> b!626273 (= e!379900 e!379901)))

(declare-fun b!626274 () Bool)

(declare-fun inv!17 (TokenValue!1341) Bool)

(assert (=> b!626274 (= e!379900 (inv!17 (value!42398 separatorToken!136)))))

(declare-fun b!626275 () Bool)

(declare-fun inv!15 (TokenValue!1341) Bool)

(assert (=> b!626275 (= e!379901 (inv!15 (value!42398 separatorToken!136)))))

(declare-fun d!219077 () Bool)

(declare-fun c!115018 () Bool)

(assert (=> d!219077 (= c!115018 ((_ is IntegerValue!4023) (value!42398 separatorToken!136)))))

(assert (=> d!219077 (= (inv!21 (value!42398 separatorToken!136)) e!379902)))

(assert (= (and d!219077 c!115018) b!626272))

(assert (= (and d!219077 (not c!115018)) b!626271))

(assert (= (and b!626271 c!115017) b!626274))

(assert (= (and b!626271 (not c!115017)) b!626273))

(assert (= (and b!626273 (not res!271609)) b!626275))

(declare-fun m!894257 () Bool)

(assert (=> b!626272 m!894257))

(declare-fun m!894259 () Bool)

(assert (=> b!626274 m!894259))

(declare-fun m!894261 () Bool)

(assert (=> b!626275 m!894261))

(assert (=> b!626210 d!219077))

(declare-fun d!219083 () Bool)

(declare-fun isBalanced!550 (Conc!2076) Bool)

(assert (=> d!219083 (= (inv!8224 v!6361) (isBalanced!550 (c!114997 v!6361)))))

(declare-fun bs!72248 () Bool)

(assert (= bs!72248 d!219083))

(declare-fun m!894263 () Bool)

(assert (=> bs!72248 m!894263))

(assert (=> start!60328 d!219083))

(declare-fun d!219085 () Bool)

(declare-fun res!271614 () Bool)

(declare-fun e!379908 () Bool)

(assert (=> d!219085 (=> (not res!271614) (not e!379908))))

(declare-fun isEmpty!4583 (List!6448) Bool)

(assert (=> d!219085 (= res!271614 (not (isEmpty!4583 (originalCharacters!1350 separatorToken!136))))))

(assert (=> d!219085 (= (inv!8225 separatorToken!136) e!379908)))

(declare-fun b!626286 () Bool)

(declare-fun res!271615 () Bool)

(assert (=> b!626286 (=> (not res!271615) (not e!379908))))

(declare-fun dynLambda!3636 (Int TokenValue!1341) BalanceConc!4158)

(assert (=> b!626286 (= res!271615 (= (originalCharacters!1350 separatorToken!136) (list!2712 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136)))))))

(declare-fun b!626287 () Bool)

(declare-fun size!5038 (List!6448) Int)

(assert (=> b!626287 (= e!379908 (= (size!5034 separatorToken!136) (size!5038 (originalCharacters!1350 separatorToken!136))))))

(assert (= (and d!219085 res!271614) b!626286))

(assert (= (and b!626286 res!271615) b!626287))

(declare-fun b_lambda!24697 () Bool)

(assert (=> (not b_lambda!24697) (not b!626286)))

(declare-fun t!82373 () Bool)

(declare-fun tb!54417 () Bool)

(assert (=> (and b!626212 (= (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136)))) t!82373) tb!54417))

(declare-fun b!626292 () Bool)

(declare-fun e!379911 () Bool)

(declare-fun tp!195735 () Bool)

(declare-fun inv!8231 (Conc!2075) Bool)

(assert (=> b!626292 (= e!379911 (and (inv!8231 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136)))) tp!195735))))

(declare-fun result!61462 () Bool)

(declare-fun inv!8232 (BalanceConc!4158) Bool)

(assert (=> tb!54417 (= result!61462 (and (inv!8232 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136))) e!379911))))

(assert (= tb!54417 b!626292))

(declare-fun m!894277 () Bool)

(assert (=> b!626292 m!894277))

(declare-fun m!894279 () Bool)

(assert (=> tb!54417 m!894279))

(assert (=> b!626286 t!82373))

(declare-fun b_and!62139 () Bool)

(assert (= b_and!62133 (and (=> t!82373 result!61462) b_and!62139)))

(declare-fun m!894281 () Bool)

(assert (=> d!219085 m!894281))

(declare-fun m!894283 () Bool)

(assert (=> b!626286 m!894283))

(assert (=> b!626286 m!894283))

(declare-fun m!894285 () Bool)

(assert (=> b!626286 m!894285))

(declare-fun m!894287 () Bool)

(assert (=> b!626287 m!894287))

(assert (=> start!60328 d!219085))

(declare-fun d!219089 () Bool)

(declare-fun lt!266702 () BalanceConc!4158)

(assert (=> d!219089 (= (list!2712 lt!266702) (originalCharacters!1350 separatorToken!136))))

(assert (=> d!219089 (= lt!266702 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136)))))

(assert (=> d!219089 (= (charsOf!902 separatorToken!136) lt!266702)))

(declare-fun b_lambda!24699 () Bool)

(assert (=> (not b_lambda!24699) (not d!219089)))

(assert (=> d!219089 t!82373))

(declare-fun b_and!62141 () Bool)

(assert (= b_and!62139 (and (=> t!82373 result!61462) b_and!62141)))

(declare-fun m!894289 () Bool)

(assert (=> d!219089 m!894289))

(assert (=> d!219089 m!894283))

(assert (=> b!626209 d!219089))

(declare-fun d!219091 () Bool)

(assert (=> d!219091 (= (head!1331 (drop!344 lt!266688 from!852)) (apply!1537 lt!266688 from!852))))

(declare-fun lt!266708 () Unit!11520)

(declare-fun choose!4550 (List!6450 Int) Unit!11520)

(assert (=> d!219091 (= lt!266708 (choose!4550 lt!266688 from!852))))

(declare-fun e!379917 () Bool)

(assert (=> d!219091 e!379917))

(declare-fun res!271630 () Bool)

(assert (=> d!219091 (=> (not res!271630) (not e!379917))))

(assert (=> d!219091 (= res!271630 (>= from!852 0))))

(assert (=> d!219091 (= (lemmaDropApply!310 lt!266688 from!852) lt!266708)))

(declare-fun b!626307 () Bool)

(declare-fun size!5040 (List!6450) Int)

(assert (=> b!626307 (= e!379917 (< from!852 (size!5040 lt!266688)))))

(assert (= (and d!219091 res!271630) b!626307))

(assert (=> d!219091 m!894209))

(assert (=> d!219091 m!894209))

(declare-fun m!894291 () Bool)

(assert (=> d!219091 m!894291))

(assert (=> d!219091 m!894207))

(declare-fun m!894293 () Bool)

(assert (=> d!219091 m!894293))

(declare-fun m!894295 () Bool)

(assert (=> b!626307 m!894295))

(assert (=> b!626209 d!219091))

(declare-fun d!219093 () Bool)

(declare-fun c!115027 () Bool)

(assert (=> d!219093 (= c!115027 ((_ is Cons!6440) (dropList!262 v!6361 from!852)))))

(declare-fun e!379923 () List!6448)

(assert (=> d!219093 (= (printWithSeparatorTokenList!4 thiss!14007 (dropList!262 v!6361 from!852) separatorToken!136) e!379923)))

(declare-fun b!626315 () Bool)

(declare-fun ++!1778 (List!6448 List!6448) List!6448)

(assert (=> b!626315 (= e!379923 (++!1778 (++!1778 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))) (list!2712 (charsOf!902 separatorToken!136))) (printWithSeparatorTokenList!4 thiss!14007 (t!82369 (dropList!262 v!6361 from!852)) separatorToken!136)))))

(declare-fun b!626316 () Bool)

(assert (=> b!626316 (= e!379923 Nil!6438)))

(assert (= (and d!219093 c!115027) b!626315))

(assert (= (and d!219093 (not c!115027)) b!626316))

(declare-fun m!894325 () Bool)

(assert (=> b!626315 m!894325))

(declare-fun m!894327 () Bool)

(assert (=> b!626315 m!894327))

(declare-fun m!894329 () Bool)

(assert (=> b!626315 m!894329))

(assert (=> b!626315 m!894211))

(declare-fun m!894331 () Bool)

(assert (=> b!626315 m!894331))

(assert (=> b!626315 m!894329))

(assert (=> b!626315 m!894331))

(declare-fun m!894333 () Bool)

(assert (=> b!626315 m!894333))

(declare-fun m!894335 () Bool)

(assert (=> b!626315 m!894335))

(assert (=> b!626315 m!894211))

(assert (=> b!626315 m!894327))

(assert (=> b!626315 m!894335))

(assert (=> b!626315 m!894325))

(assert (=> b!626209 d!219093))

(declare-fun d!219099 () Bool)

(assert (=> d!219099 (= (tail!859 (drop!344 lt!266688 from!852)) (drop!344 lt!266688 (+ from!852 1)))))

(declare-fun lt!266717 () Unit!11520)

(declare-fun choose!4551 (List!6450 Int) Unit!11520)

(assert (=> d!219099 (= lt!266717 (choose!4551 lt!266688 from!852))))

(declare-fun e!379929 () Bool)

(assert (=> d!219099 e!379929))

(declare-fun res!271639 () Bool)

(assert (=> d!219099 (=> (not res!271639) (not e!379929))))

(assert (=> d!219099 (= res!271639 (>= from!852 0))))

(assert (=> d!219099 (= (lemmaDropTail!298 lt!266688 from!852) lt!266717)))

(declare-fun b!626322 () Bool)

(assert (=> b!626322 (= e!379929 (< from!852 (size!5040 lt!266688)))))

(assert (= (and d!219099 res!271639) b!626322))

(assert (=> d!219099 m!894209))

(assert (=> d!219099 m!894209))

(declare-fun m!894341 () Bool)

(assert (=> d!219099 m!894341))

(declare-fun m!894343 () Bool)

(assert (=> d!219099 m!894343))

(declare-fun m!894345 () Bool)

(assert (=> d!219099 m!894345))

(assert (=> b!626322 m!894295))

(assert (=> b!626209 d!219099))

(declare-fun lt!266742 () BalanceConc!4158)

(declare-fun e!379943 () Bool)

(declare-fun b!626352 () Bool)

(assert (=> b!626352 (= e!379943 (= (list!2712 lt!266742) (++!1778 (list!2712 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (list!2712 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(declare-fun d!219103 () Bool)

(assert (=> d!219103 e!379943))

(declare-fun res!271654 () Bool)

(assert (=> d!219103 (=> (not res!271654) (not e!379943))))

(declare-fun appendAssocInst!111 (Conc!2075 Conc!2075) Bool)

(assert (=> d!219103 (= res!271654 (appendAssocInst!111 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))

(declare-fun ++!1779 (Conc!2075 Conc!2075) Conc!2075)

(assert (=> d!219103 (= lt!266742 (BalanceConc!4159 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(assert (=> d!219103 (= (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))) lt!266742)))

(declare-fun b!626349 () Bool)

(declare-fun res!271652 () Bool)

(assert (=> b!626349 (=> (not res!271652) (not e!379943))))

(declare-fun isBalanced!551 (Conc!2075) Bool)

(assert (=> b!626349 (= res!271652 (isBalanced!551 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(declare-fun b!626350 () Bool)

(declare-fun res!271655 () Bool)

(assert (=> b!626350 (=> (not res!271655) (not e!379943))))

(declare-fun height!262 (Conc!2075) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!626350 (= res!271655 (<= (height!262 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) (+ (max!0 (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) 1)))))

(declare-fun b!626351 () Bool)

(declare-fun res!271653 () Bool)

(assert (=> b!626351 (=> (not res!271653) (not e!379943))))

(assert (=> b!626351 (= res!271653 (>= (height!262 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) (max!0 (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(assert (= (and d!219103 res!271654) b!626349))

(assert (= (and b!626349 res!271652) b!626350))

(assert (= (and b!626350 res!271655) b!626351))

(assert (= (and b!626351 res!271653) b!626352))

(declare-fun m!894405 () Bool)

(assert (=> d!219103 m!894405))

(declare-fun m!894407 () Bool)

(assert (=> d!219103 m!894407))

(declare-fun m!894409 () Bool)

(assert (=> b!626351 m!894409))

(assert (=> b!626351 m!894409))

(declare-fun m!894411 () Bool)

(assert (=> b!626351 m!894411))

(declare-fun m!894413 () Bool)

(assert (=> b!626351 m!894413))

(assert (=> b!626351 m!894411))

(assert (=> b!626351 m!894407))

(assert (=> b!626351 m!894407))

(declare-fun m!894415 () Bool)

(assert (=> b!626351 m!894415))

(declare-fun m!894417 () Bool)

(assert (=> b!626352 m!894417))

(assert (=> b!626352 m!894187))

(declare-fun m!894419 () Bool)

(assert (=> b!626352 m!894419))

(assert (=> b!626352 m!894189))

(declare-fun m!894421 () Bool)

(assert (=> b!626352 m!894421))

(assert (=> b!626352 m!894419))

(assert (=> b!626352 m!894421))

(declare-fun m!894425 () Bool)

(assert (=> b!626352 m!894425))

(assert (=> b!626349 m!894407))

(assert (=> b!626349 m!894407))

(declare-fun m!894429 () Bool)

(assert (=> b!626349 m!894429))

(assert (=> b!626350 m!894409))

(assert (=> b!626350 m!894409))

(assert (=> b!626350 m!894411))

(assert (=> b!626350 m!894413))

(assert (=> b!626350 m!894411))

(assert (=> b!626350 m!894407))

(assert (=> b!626350 m!894407))

(assert (=> b!626350 m!894415))

(assert (=> b!626209 d!219103))

(declare-fun d!219115 () Bool)

(declare-fun e!379975 () Bool)

(assert (=> d!219115 e!379975))

(declare-fun res!271673 () Bool)

(assert (=> d!219115 (=> (not res!271673) (not e!379975))))

(declare-fun lt!266750 () List!6450)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1158 (List!6450) (InoxSet Token!2358))

(assert (=> d!219115 (= res!271673 (= ((_ map implies) (content!1158 lt!266750) (content!1158 lt!266688)) ((as const (InoxSet Token!2358)) true)))))

(declare-fun e!379978 () List!6450)

(assert (=> d!219115 (= lt!266750 e!379978)))

(declare-fun c!115054 () Bool)

(assert (=> d!219115 (= c!115054 ((_ is Nil!6440) lt!266688))))

(assert (=> d!219115 (= (drop!344 lt!266688 from!852) lt!266750)))

(declare-fun b!626401 () Bool)

(declare-fun e!379976 () List!6450)

(assert (=> b!626401 (= e!379976 lt!266688)))

(declare-fun b!626402 () Bool)

(declare-fun e!379974 () Int)

(assert (=> b!626402 (= e!379974 0)))

(declare-fun b!626403 () Bool)

(declare-fun e!379977 () Int)

(assert (=> b!626403 (= e!379975 (= (size!5040 lt!266750) e!379977))))

(declare-fun c!115055 () Bool)

(assert (=> b!626403 (= c!115055 (<= from!852 0))))

(declare-fun b!626404 () Bool)

(assert (=> b!626404 (= e!379977 e!379974)))

(declare-fun c!115056 () Bool)

(declare-fun call!41156 () Int)

(assert (=> b!626404 (= c!115056 (>= from!852 call!41156))))

(declare-fun b!626405 () Bool)

(assert (=> b!626405 (= e!379978 e!379976)))

(declare-fun c!115053 () Bool)

(assert (=> b!626405 (= c!115053 (<= from!852 0))))

(declare-fun b!626406 () Bool)

(assert (=> b!626406 (= e!379976 (drop!344 (t!82369 lt!266688) (- from!852 1)))))

(declare-fun b!626407 () Bool)

(assert (=> b!626407 (= e!379978 Nil!6440)))

(declare-fun b!626408 () Bool)

(assert (=> b!626408 (= e!379977 call!41156)))

(declare-fun bm!41151 () Bool)

(assert (=> bm!41151 (= call!41156 (size!5040 lt!266688))))

(declare-fun b!626411 () Bool)

(assert (=> b!626411 (= e!379974 (- call!41156 from!852))))

(assert (= (and d!219115 c!115054) b!626407))

(assert (= (and d!219115 (not c!115054)) b!626405))

(assert (= (and b!626405 c!115053) b!626401))

(assert (= (and b!626405 (not c!115053)) b!626406))

(assert (= (and d!219115 res!271673) b!626403))

(assert (= (and b!626403 c!115055) b!626408))

(assert (= (and b!626403 (not c!115055)) b!626404))

(assert (= (and b!626404 c!115056) b!626402))

(assert (= (and b!626404 (not c!115056)) b!626411))

(assert (= (or b!626408 b!626404 b!626411) bm!41151))

(declare-fun m!894459 () Bool)

(assert (=> d!219115 m!894459))

(declare-fun m!894461 () Bool)

(assert (=> d!219115 m!894461))

(declare-fun m!894463 () Bool)

(assert (=> b!626403 m!894463))

(declare-fun m!894465 () Bool)

(assert (=> b!626406 m!894465))

(assert (=> bm!41151 m!894295))

(assert (=> b!626209 d!219115))

(declare-fun d!219135 () Bool)

(declare-fun lt!266756 () Token!2358)

(assert (=> d!219135 (= lt!266756 (apply!1537 (list!2713 v!6361) from!852))))

(declare-fun apply!1539 (Conc!2076 Int) Token!2358)

(assert (=> d!219135 (= lt!266756 (apply!1539 (c!114997 v!6361) from!852))))

(declare-fun e!379996 () Bool)

(assert (=> d!219135 e!379996))

(declare-fun res!271677 () Bool)

(assert (=> d!219135 (=> (not res!271677) (not e!379996))))

(assert (=> d!219135 (= res!271677 (<= 0 from!852))))

(assert (=> d!219135 (= (apply!1536 v!6361 from!852) lt!266756)))

(declare-fun b!626447 () Bool)

(assert (=> b!626447 (= e!379996 (< from!852 (size!5035 v!6361)))))

(assert (= (and d!219135 res!271677) b!626447))

(assert (=> d!219135 m!894183))

(assert (=> d!219135 m!894183))

(declare-fun m!894477 () Bool)

(assert (=> d!219135 m!894477))

(declare-fun m!894479 () Bool)

(assert (=> d!219135 m!894479))

(assert (=> b!626447 m!894219))

(assert (=> b!626209 d!219135))

(declare-fun d!219137 () Bool)

(assert (=> d!219137 (= (head!1331 lt!266686) (h!11841 lt!266686))))

(assert (=> b!626209 d!219137))

(declare-fun lt!266771 () BalanceConc!4158)

(declare-fun d!219139 () Bool)

(assert (=> d!219139 (= (list!2712 lt!266771) (printWithSeparatorTokenList!4 thiss!14007 (dropList!262 v!6361 (+ 1 from!852)) separatorToken!136))))

(declare-fun e!380002 () BalanceConc!4158)

(assert (=> d!219139 (= lt!266771 e!380002)))

(declare-fun c!115061 () Bool)

(assert (=> d!219139 (= c!115061 (>= (+ 1 from!852) (size!5035 v!6361)))))

(declare-fun e!380001 () Bool)

(assert (=> d!219139 e!380001))

(declare-fun res!271680 () Bool)

(assert (=> d!219139 (=> (not res!271680) (not e!380001))))

(assert (=> d!219139 (= res!271680 (>= (+ 1 from!852) 0))))

(assert (=> d!219139 (= (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)) lt!266771)))

(declare-fun b!626454 () Bool)

(assert (=> b!626454 (= e!380001 (<= (+ 1 from!852) (size!5035 v!6361)))))

(declare-fun b!626455 () Bool)

(assert (=> b!626455 (= e!380002 (BalanceConc!4159 Empty!2075))))

(declare-fun b!626456 () Bool)

(assert (=> b!626456 (= e!380002 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1))))))

(declare-fun lt!266773 () List!6450)

(assert (=> b!626456 (= lt!266773 (list!2713 v!6361))))

(declare-fun lt!266776 () Unit!11520)

(assert (=> b!626456 (= lt!266776 (lemmaDropApply!310 lt!266773 (+ 1 from!852)))))

(assert (=> b!626456 (= (head!1331 (drop!344 lt!266773 (+ 1 from!852))) (apply!1537 lt!266773 (+ 1 from!852)))))

(declare-fun lt!266775 () Unit!11520)

(assert (=> b!626456 (= lt!266775 lt!266776)))

(declare-fun lt!266777 () List!6450)

(assert (=> b!626456 (= lt!266777 (list!2713 v!6361))))

(declare-fun lt!266774 () Unit!11520)

(assert (=> b!626456 (= lt!266774 (lemmaDropTail!298 lt!266777 (+ 1 from!852)))))

(assert (=> b!626456 (= (tail!859 (drop!344 lt!266777 (+ 1 from!852))) (drop!344 lt!266777 (+ 1 from!852 1)))))

(declare-fun lt!266772 () Unit!11520)

(assert (=> b!626456 (= lt!266772 lt!266774)))

(assert (= (and d!219139 res!271680) b!626454))

(assert (= (and d!219139 c!115061) b!626455))

(assert (= (and d!219139 (not c!115061)) b!626456))

(declare-fun m!894481 () Bool)

(assert (=> d!219139 m!894481))

(declare-fun m!894483 () Bool)

(assert (=> d!219139 m!894483))

(assert (=> d!219139 m!894483))

(declare-fun m!894485 () Bool)

(assert (=> d!219139 m!894485))

(assert (=> d!219139 m!894219))

(assert (=> b!626454 m!894219))

(declare-fun m!894487 () Bool)

(assert (=> b!626456 m!894487))

(declare-fun m!894489 () Bool)

(assert (=> b!626456 m!894489))

(declare-fun m!894491 () Bool)

(assert (=> b!626456 m!894491))

(declare-fun m!894493 () Bool)

(assert (=> b!626456 m!894493))

(declare-fun m!894495 () Bool)

(assert (=> b!626456 m!894495))

(assert (=> b!626456 m!894183))

(assert (=> b!626456 m!894493))

(declare-fun m!894497 () Bool)

(assert (=> b!626456 m!894497))

(assert (=> b!626456 m!894211))

(assert (=> b!626456 m!894497))

(assert (=> b!626456 m!894211))

(declare-fun m!894499 () Bool)

(assert (=> b!626456 m!894499))

(declare-fun m!894501 () Bool)

(assert (=> b!626456 m!894501))

(assert (=> b!626456 m!894501))

(declare-fun m!894503 () Bool)

(assert (=> b!626456 m!894503))

(assert (=> b!626456 m!894499))

(declare-fun m!894505 () Bool)

(assert (=> b!626456 m!894505))

(declare-fun m!894507 () Bool)

(assert (=> b!626456 m!894507))

(declare-fun m!894509 () Bool)

(assert (=> b!626456 m!894509))

(declare-fun m!894511 () Bool)

(assert (=> b!626456 m!894511))

(assert (=> b!626456 m!894505))

(assert (=> b!626456 m!894487))

(assert (=> b!626209 d!219139))

(declare-fun lt!266778 () BalanceConc!4158)

(declare-fun b!626460 () Bool)

(declare-fun e!380003 () Bool)

(assert (=> b!626460 (= e!380003 (= (list!2712 lt!266778) (++!1778 (list!2712 (charsOf!902 (apply!1536 v!6361 from!852))) (list!2712 (charsOf!902 separatorToken!136)))))))

(declare-fun d!219141 () Bool)

(assert (=> d!219141 e!380003))

(declare-fun res!271683 () Bool)

(assert (=> d!219141 (=> (not res!271683) (not e!380003))))

(assert (=> d!219141 (= res!271683 (appendAssocInst!111 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136))))))

(assert (=> d!219141 (= lt!266778 (BalanceConc!4159 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))))))

(assert (=> d!219141 (= (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) lt!266778)))

(declare-fun b!626457 () Bool)

(declare-fun res!271681 () Bool)

(assert (=> b!626457 (=> (not res!271681) (not e!380003))))

(assert (=> b!626457 (= res!271681 (isBalanced!551 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))))))

(declare-fun b!626458 () Bool)

(declare-fun res!271684 () Bool)

(assert (=> b!626458 (=> (not res!271684) (not e!380003))))

(assert (=> b!626458 (= res!271684 (<= (height!262 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))) (+ (max!0 (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (height!262 (c!114995 (charsOf!902 separatorToken!136)))) 1)))))

(declare-fun b!626459 () Bool)

(declare-fun res!271682 () Bool)

(assert (=> b!626459 (=> (not res!271682) (not e!380003))))

(assert (=> b!626459 (= res!271682 (>= (height!262 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))) (max!0 (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (height!262 (c!114995 (charsOf!902 separatorToken!136))))))))

(assert (= (and d!219141 res!271683) b!626457))

(assert (= (and b!626457 res!271681) b!626458))

(assert (= (and b!626458 res!271684) b!626459))

(assert (= (and b!626459 res!271682) b!626460))

(declare-fun m!894513 () Bool)

(assert (=> d!219141 m!894513))

(declare-fun m!894515 () Bool)

(assert (=> d!219141 m!894515))

(declare-fun m!894517 () Bool)

(assert (=> b!626459 m!894517))

(assert (=> b!626459 m!894517))

(declare-fun m!894519 () Bool)

(assert (=> b!626459 m!894519))

(declare-fun m!894521 () Bool)

(assert (=> b!626459 m!894521))

(assert (=> b!626459 m!894519))

(assert (=> b!626459 m!894515))

(assert (=> b!626459 m!894515))

(declare-fun m!894523 () Bool)

(assert (=> b!626459 m!894523))

(declare-fun m!894525 () Bool)

(assert (=> b!626460 m!894525))

(assert (=> b!626460 m!894201))

(declare-fun m!894527 () Bool)

(assert (=> b!626460 m!894527))

(assert (=> b!626460 m!894211))

(assert (=> b!626460 m!894327))

(assert (=> b!626460 m!894527))

(assert (=> b!626460 m!894327))

(declare-fun m!894529 () Bool)

(assert (=> b!626460 m!894529))

(assert (=> b!626457 m!894515))

(assert (=> b!626457 m!894515))

(declare-fun m!894531 () Bool)

(assert (=> b!626457 m!894531))

(assert (=> b!626458 m!894517))

(assert (=> b!626458 m!894517))

(assert (=> b!626458 m!894519))

(assert (=> b!626458 m!894521))

(assert (=> b!626458 m!894519))

(assert (=> b!626458 m!894515))

(assert (=> b!626458 m!894515))

(assert (=> b!626458 m!894523))

(assert (=> b!626209 d!219141))

(declare-fun d!219143 () Bool)

(assert (=> d!219143 (= (tail!859 lt!266686) (t!82369 lt!266686))))

(assert (=> b!626209 d!219143))

(declare-fun d!219145 () Bool)

(declare-fun lt!266781 () Token!2358)

(declare-fun contains!1505 (List!6450 Token!2358) Bool)

(assert (=> d!219145 (contains!1505 lt!266688 lt!266781)))

(declare-fun e!380009 () Token!2358)

(assert (=> d!219145 (= lt!266781 e!380009)))

(declare-fun c!115064 () Bool)

(assert (=> d!219145 (= c!115064 (= from!852 0))))

(declare-fun e!380008 () Bool)

(assert (=> d!219145 e!380008))

(declare-fun res!271687 () Bool)

(assert (=> d!219145 (=> (not res!271687) (not e!380008))))

(assert (=> d!219145 (= res!271687 (<= 0 from!852))))

(assert (=> d!219145 (= (apply!1537 lt!266688 from!852) lt!266781)))

(declare-fun b!626467 () Bool)

(assert (=> b!626467 (= e!380008 (< from!852 (size!5040 lt!266688)))))

(declare-fun b!626468 () Bool)

(assert (=> b!626468 (= e!380009 (head!1331 lt!266688))))

(declare-fun b!626469 () Bool)

(assert (=> b!626469 (= e!380009 (apply!1537 (tail!859 lt!266688) (- from!852 1)))))

(assert (= (and d!219145 res!271687) b!626467))

(assert (= (and d!219145 c!115064) b!626468))

(assert (= (and d!219145 (not c!115064)) b!626469))

(declare-fun m!894533 () Bool)

(assert (=> d!219145 m!894533))

(assert (=> b!626467 m!894295))

(declare-fun m!894535 () Bool)

(assert (=> b!626468 m!894535))

(declare-fun m!894537 () Bool)

(assert (=> b!626469 m!894537))

(assert (=> b!626469 m!894537))

(declare-fun m!894539 () Bool)

(assert (=> b!626469 m!894539))

(assert (=> b!626209 d!219145))

(declare-fun d!219147 () Bool)

(declare-fun list!2716 (Conc!2076) List!6450)

(assert (=> d!219147 (= (dropList!262 v!6361 from!852) (drop!344 (list!2716 (c!114997 v!6361)) from!852))))

(declare-fun bs!72253 () Bool)

(assert (= bs!72253 d!219147))

(declare-fun m!894541 () Bool)

(assert (=> bs!72253 m!894541))

(assert (=> bs!72253 m!894541))

(declare-fun m!894543 () Bool)

(assert (=> bs!72253 m!894543))

(assert (=> b!626209 d!219147))

(declare-fun d!219149 () Bool)

(declare-fun list!2717 (Conc!2075) List!6448)

(assert (=> d!219149 (= (list!2712 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) (list!2717 (c!114995 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(declare-fun bs!72254 () Bool)

(assert (= bs!72254 d!219149))

(declare-fun m!894545 () Bool)

(assert (=> bs!72254 m!894545))

(assert (=> b!626209 d!219149))

(declare-fun d!219151 () Bool)

(declare-fun e!380011 () Bool)

(assert (=> d!219151 e!380011))

(declare-fun res!271688 () Bool)

(assert (=> d!219151 (=> (not res!271688) (not e!380011))))

(declare-fun lt!266782 () List!6450)

(assert (=> d!219151 (= res!271688 (= ((_ map implies) (content!1158 lt!266782) (content!1158 lt!266688)) ((as const (InoxSet Token!2358)) true)))))

(declare-fun e!380014 () List!6450)

(assert (=> d!219151 (= lt!266782 e!380014)))

(declare-fun c!115066 () Bool)

(assert (=> d!219151 (= c!115066 ((_ is Nil!6440) lt!266688))))

(assert (=> d!219151 (= (drop!344 lt!266688 (+ 1 from!852)) lt!266782)))

(declare-fun b!626470 () Bool)

(declare-fun e!380012 () List!6450)

(assert (=> b!626470 (= e!380012 lt!266688)))

(declare-fun b!626471 () Bool)

(declare-fun e!380010 () Int)

(assert (=> b!626471 (= e!380010 0)))

(declare-fun b!626472 () Bool)

(declare-fun e!380013 () Int)

(assert (=> b!626472 (= e!380011 (= (size!5040 lt!266782) e!380013))))

(declare-fun c!115067 () Bool)

(assert (=> b!626472 (= c!115067 (<= (+ 1 from!852) 0))))

(declare-fun b!626473 () Bool)

(assert (=> b!626473 (= e!380013 e!380010)))

(declare-fun c!115068 () Bool)

(declare-fun call!41157 () Int)

(assert (=> b!626473 (= c!115068 (>= (+ 1 from!852) call!41157))))

(declare-fun b!626474 () Bool)

(assert (=> b!626474 (= e!380014 e!380012)))

(declare-fun c!115065 () Bool)

(assert (=> b!626474 (= c!115065 (<= (+ 1 from!852) 0))))

(declare-fun b!626475 () Bool)

(assert (=> b!626475 (= e!380012 (drop!344 (t!82369 lt!266688) (- (+ 1 from!852) 1)))))

(declare-fun b!626476 () Bool)

(assert (=> b!626476 (= e!380014 Nil!6440)))

(declare-fun b!626477 () Bool)

(assert (=> b!626477 (= e!380013 call!41157)))

(declare-fun bm!41152 () Bool)

(assert (=> bm!41152 (= call!41157 (size!5040 lt!266688))))

(declare-fun b!626478 () Bool)

(assert (=> b!626478 (= e!380010 (- call!41157 (+ 1 from!852)))))

(assert (= (and d!219151 c!115066) b!626476))

(assert (= (and d!219151 (not c!115066)) b!626474))

(assert (= (and b!626474 c!115065) b!626470))

(assert (= (and b!626474 (not c!115065)) b!626475))

(assert (= (and d!219151 res!271688) b!626472))

(assert (= (and b!626472 c!115067) b!626477))

(assert (= (and b!626472 (not c!115067)) b!626473))

(assert (= (and b!626473 c!115068) b!626471))

(assert (= (and b!626473 (not c!115068)) b!626478))

(assert (= (or b!626477 b!626473 b!626478) bm!41152))

(declare-fun m!894547 () Bool)

(assert (=> d!219151 m!894547))

(assert (=> d!219151 m!894461))

(declare-fun m!894549 () Bool)

(assert (=> b!626472 m!894549))

(declare-fun m!894551 () Bool)

(assert (=> b!626475 m!894551))

(assert (=> bm!41152 m!894295))

(assert (=> b!626209 d!219151))

(declare-fun d!219153 () Bool)

(declare-fun lt!266783 () BalanceConc!4158)

(assert (=> d!219153 (= (list!2712 lt!266783) (originalCharacters!1350 (apply!1536 v!6361 from!852)))))

(assert (=> d!219153 (= lt!266783 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852))))))

(assert (=> d!219153 (= (charsOf!902 (apply!1536 v!6361 from!852)) lt!266783)))

(declare-fun b_lambda!24707 () Bool)

(assert (=> (not b_lambda!24707) (not d!219153)))

(declare-fun t!82377 () Bool)

(declare-fun tb!54421 () Bool)

(assert (=> (and b!626212 (= (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852))))) t!82377) tb!54421))

(declare-fun tp!195764 () Bool)

(declare-fun e!380015 () Bool)

(declare-fun b!626479 () Bool)

(assert (=> b!626479 (= e!380015 (and (inv!8231 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852))))) tp!195764))))

(declare-fun result!61474 () Bool)

(assert (=> tb!54421 (= result!61474 (and (inv!8232 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852)))) e!380015))))

(assert (= tb!54421 b!626479))

(declare-fun m!894553 () Bool)

(assert (=> b!626479 m!894553))

(declare-fun m!894555 () Bool)

(assert (=> tb!54421 m!894555))

(assert (=> d!219153 t!82377))

(declare-fun b_and!62145 () Bool)

(assert (= b_and!62141 (and (=> t!82377 result!61474) b_and!62145)))

(declare-fun m!894557 () Bool)

(assert (=> d!219153 m!894557))

(declare-fun m!894559 () Bool)

(assert (=> d!219153 m!894559))

(assert (=> b!626209 d!219153))

(declare-fun d!219155 () Bool)

(assert (=> d!219155 (= (list!2713 v!6361) (list!2716 (c!114997 v!6361)))))

(declare-fun bs!72255 () Bool)

(assert (= bs!72255 d!219155))

(assert (=> bs!72255 m!894541))

(assert (=> b!626209 d!219155))

(declare-fun d!219157 () Bool)

(declare-fun c!115071 () Bool)

(assert (=> d!219157 (= c!115071 ((_ is Node!2076) (c!114997 v!6361)))))

(declare-fun e!380020 () Bool)

(assert (=> d!219157 (= (inv!8223 (c!114997 v!6361)) e!380020)))

(declare-fun b!626486 () Bool)

(declare-fun inv!8234 (Conc!2076) Bool)

(assert (=> b!626486 (= e!380020 (inv!8234 (c!114997 v!6361)))))

(declare-fun b!626487 () Bool)

(declare-fun e!380021 () Bool)

(assert (=> b!626487 (= e!380020 e!380021)))

(declare-fun res!271691 () Bool)

(assert (=> b!626487 (= res!271691 (not ((_ is Leaf!3243) (c!114997 v!6361))))))

(assert (=> b!626487 (=> res!271691 e!380021)))

(declare-fun b!626488 () Bool)

(declare-fun inv!8235 (Conc!2076) Bool)

(assert (=> b!626488 (= e!380021 (inv!8235 (c!114997 v!6361)))))

(assert (= (and d!219157 c!115071) b!626486))

(assert (= (and d!219157 (not c!115071)) b!626487))

(assert (= (and b!626487 (not res!271691)) b!626488))

(declare-fun m!894561 () Bool)

(assert (=> b!626486 m!894561))

(declare-fun m!894563 () Bool)

(assert (=> b!626488 m!894563))

(assert (=> b!626208 d!219157))

(declare-fun d!219159 () Bool)

(assert (=> d!219159 (= (inv!8218 (tag!1579 (rule!2113 separatorToken!136))) (= (mod (str.len (value!42397 (tag!1579 (rule!2113 separatorToken!136)))) 2) 0))))

(assert (=> b!626213 d!219159))

(declare-fun d!219161 () Bool)

(declare-fun res!271694 () Bool)

(declare-fun e!380024 () Bool)

(assert (=> d!219161 (=> (not res!271694) (not e!380024))))

(declare-fun semiInverseModEq!528 (Int Int) Bool)

(assert (=> d!219161 (= res!271694 (semiInverseModEq!528 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (toValue!2246 (transformation!1317 (rule!2113 separatorToken!136)))))))

(assert (=> d!219161 (= (inv!8226 (transformation!1317 (rule!2113 separatorToken!136))) e!380024)))

(declare-fun b!626491 () Bool)

(declare-fun equivClasses!511 (Int Int) Bool)

(assert (=> b!626491 (= e!380024 (equivClasses!511 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (toValue!2246 (transformation!1317 (rule!2113 separatorToken!136)))))))

(assert (= (and d!219161 res!271694) b!626491))

(declare-fun m!894565 () Bool)

(assert (=> d!219161 m!894565))

(declare-fun m!894567 () Bool)

(assert (=> b!626491 m!894567))

(assert (=> b!626213 d!219161))

(declare-fun d!219163 () Bool)

(declare-fun lt!266786 () Int)

(assert (=> d!219163 (= lt!266786 (size!5040 (list!2713 v!6361)))))

(declare-fun size!5041 (Conc!2076) Int)

(assert (=> d!219163 (= lt!266786 (size!5041 (c!114997 v!6361)))))

(assert (=> d!219163 (= (size!5035 v!6361) lt!266786)))

(declare-fun bs!72256 () Bool)

(assert (= bs!72256 d!219163))

(assert (=> bs!72256 m!894183))

(assert (=> bs!72256 m!894183))

(declare-fun m!894569 () Bool)

(assert (=> bs!72256 m!894569))

(declare-fun m!894571 () Bool)

(assert (=> bs!72256 m!894571))

(assert (=> b!626211 d!219163))

(declare-fun b!626496 () Bool)

(declare-fun e!380027 () Bool)

(declare-fun tp_is_empty!3625 () Bool)

(declare-fun tp!195767 () Bool)

(assert (=> b!626496 (= e!380027 (and tp_is_empty!3625 tp!195767))))

(assert (=> b!626210 (= tp!195727 e!380027)))

(assert (= (and b!626210 ((_ is Cons!6438) (originalCharacters!1350 separatorToken!136))) b!626496))

(declare-fun tp!195776 () Bool)

(declare-fun tp!195775 () Bool)

(declare-fun b!626505 () Bool)

(declare-fun e!380032 () Bool)

(assert (=> b!626505 (= e!380032 (and (inv!8223 (left!5112 (c!114997 v!6361))) tp!195775 (inv!8223 (right!5442 (c!114997 v!6361))) tp!195776))))

(declare-fun b!626507 () Bool)

(declare-fun e!380033 () Bool)

(declare-fun tp!195774 () Bool)

(assert (=> b!626507 (= e!380033 tp!195774)))

(declare-fun b!626506 () Bool)

(declare-fun inv!8236 (IArray!4153) Bool)

(assert (=> b!626506 (= e!380032 (and (inv!8236 (xs!4713 (c!114997 v!6361))) e!380033))))

(assert (=> b!626208 (= tp!195729 (and (inv!8223 (c!114997 v!6361)) e!380032))))

(assert (= (and b!626208 ((_ is Node!2076) (c!114997 v!6361))) b!626505))

(assert (= b!626506 b!626507))

(assert (= (and b!626208 ((_ is Leaf!3243) (c!114997 v!6361))) b!626506))

(declare-fun m!894573 () Bool)

(assert (=> b!626505 m!894573))

(declare-fun m!894575 () Bool)

(assert (=> b!626505 m!894575))

(declare-fun m!894577 () Bool)

(assert (=> b!626506 m!894577))

(assert (=> b!626208 m!894217))

(declare-fun e!380036 () Bool)

(assert (=> b!626213 (= tp!195725 e!380036)))

(declare-fun b!626519 () Bool)

(declare-fun tp!195787 () Bool)

(declare-fun tp!195791 () Bool)

(assert (=> b!626519 (= e!380036 (and tp!195787 tp!195791))))

(declare-fun b!626520 () Bool)

(declare-fun tp!195790 () Bool)

(assert (=> b!626520 (= e!380036 tp!195790)))

(declare-fun b!626521 () Bool)

(declare-fun tp!195789 () Bool)

(declare-fun tp!195788 () Bool)

(assert (=> b!626521 (= e!380036 (and tp!195789 tp!195788))))

(declare-fun b!626518 () Bool)

(assert (=> b!626518 (= e!380036 tp_is_empty!3625)))

(assert (= (and b!626213 ((_ is ElementMatch!1651) (regex!1317 (rule!2113 separatorToken!136)))) b!626518))

(assert (= (and b!626213 ((_ is Concat!2993) (regex!1317 (rule!2113 separatorToken!136)))) b!626519))

(assert (= (and b!626213 ((_ is Star!1651) (regex!1317 (rule!2113 separatorToken!136)))) b!626520))

(assert (= (and b!626213 ((_ is Union!1651) (regex!1317 (rule!2113 separatorToken!136)))) b!626521))

(declare-fun b_lambda!24709 () Bool)

(assert (= b_lambda!24697 (or (and b!626212 b_free!18359) b_lambda!24709)))

(declare-fun b_lambda!24711 () Bool)

(assert (= b_lambda!24699 (or (and b!626212 b_free!18359) b_lambda!24711)))

(check-sat (not tb!54417) (not d!219135) (not b!626352) (not d!219103) (not bm!41152) (not d!219155) (not b!626315) (not d!219085) (not d!219153) (not b_lambda!24709) (not b_next!18373) (not b!626479) (not d!219141) (not b!626406) (not b!626286) (not b_next!18375) (not d!219083) (not d!219147) (not b!626519) (not b!626459) b_and!62145 (not bm!41151) (not b!626349) (not b_lambda!24707) (not b!626486) (not b!626505) (not d!219089) (not b!626475) (not d!219163) (not d!219091) (not b!626208) (not d!219149) (not b!626454) (not d!219151) tp_is_empty!3625 (not b!626467) (not d!219099) (not b!626520) (not d!219139) (not b!626456) (not b!626488) (not d!219115) (not b!626307) (not b!626521) (not b!626469) (not tb!54421) (not b!626350) (not b!626275) (not b!626506) (not d!219145) b_and!62131 (not b!626272) (not b!626447) (not b!626496) (not d!219161) (not b!626460) (not b!626507) (not b!626403) (not b!626468) (not b!626322) (not b!626287) (not b!626472) (not b!626292) (not b!626491) (not b!626274) (not b!626351) (not b!626458) (not b!626457) (not b_lambda!24711))
(check-sat b_and!62131 b_and!62145 (not b_next!18375) (not b_next!18373))
(get-model)

(declare-fun d!219243 () Bool)

(assert (=> d!219243 (= (head!1331 lt!266688) (h!11841 lt!266688))))

(assert (=> b!626468 d!219243))

(declare-fun b!626812 () Bool)

(declare-fun e!380213 () Bool)

(declare-fun e!380214 () Bool)

(assert (=> b!626812 (= e!380213 e!380214)))

(declare-fun res!271821 () Bool)

(assert (=> b!626812 (=> (not res!271821) (not e!380214))))

(declare-fun appendAssoc!31 (List!6448 List!6448 List!6448) Bool)

(assert (=> b!626812 (= res!271821 (appendAssoc!31 (list!2717 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (list!2717 (left!5111 (left!5111 (c!114995 (charsOf!902 separatorToken!136))))) (list!2717 (right!5441 (left!5111 (c!114995 (charsOf!902 separatorToken!136)))))))))

(declare-fun b!626813 () Bool)

(declare-fun e!380210 () Bool)

(declare-fun e!380209 () Bool)

(assert (=> b!626813 (= e!380210 e!380209)))

(declare-fun res!271816 () Bool)

(assert (=> b!626813 (=> (not res!271816) (not e!380209))))

(assert (=> b!626813 (= res!271816 (appendAssoc!31 (list!2717 (left!5111 (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))))) (list!2717 (right!5441 (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))))) (list!2717 (c!114995 (charsOf!902 separatorToken!136)))))))

(declare-fun b!626814 () Bool)

(declare-fun e!380211 () Bool)

(assert (=> b!626814 (= e!380211 e!380210)))

(declare-fun res!271819 () Bool)

(assert (=> b!626814 (=> res!271819 e!380210)))

(assert (=> b!626814 (= res!271819 (not ((_ is Node!2075) (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))))))))

(declare-fun b!626815 () Bool)

(declare-fun e!380215 () Bool)

(assert (=> b!626815 (= e!380215 e!380211)))

(declare-fun res!271822 () Bool)

(assert (=> b!626815 (=> (not res!271822) (not e!380211))))

(assert (=> b!626815 (= res!271822 (appendAssoc!31 (list!2717 (left!5111 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))))) (list!2717 (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))))) (list!2717 (c!114995 (charsOf!902 separatorToken!136)))))))

(declare-fun b!626816 () Bool)

(assert (=> b!626816 (= e!380214 (appendAssoc!31 (++!1778 (list!2717 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (list!2717 (left!5111 (left!5111 (c!114995 (charsOf!902 separatorToken!136)))))) (list!2717 (right!5441 (left!5111 (c!114995 (charsOf!902 separatorToken!136))))) (list!2717 (right!5441 (c!114995 (charsOf!902 separatorToken!136))))))))

(declare-fun b!626817 () Bool)

(declare-fun e!380208 () Bool)

(declare-fun e!380212 () Bool)

(assert (=> b!626817 (= e!380208 e!380212)))

(declare-fun res!271815 () Bool)

(assert (=> b!626817 (=> res!271815 e!380212)))

(assert (=> b!626817 (= res!271815 (not ((_ is Node!2075) (c!114995 (charsOf!902 separatorToken!136)))))))

(declare-fun b!626819 () Bool)

(declare-fun e!380216 () Bool)

(assert (=> b!626819 (= e!380212 e!380216)))

(declare-fun res!271818 () Bool)

(assert (=> b!626819 (=> (not res!271818) (not e!380216))))

(assert (=> b!626819 (= res!271818 (appendAssoc!31 (list!2717 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (list!2717 (left!5111 (c!114995 (charsOf!902 separatorToken!136)))) (list!2717 (right!5441 (c!114995 (charsOf!902 separatorToken!136))))))))

(declare-fun b!626820 () Bool)

(assert (=> b!626820 (= e!380216 e!380213)))

(declare-fun res!271820 () Bool)

(assert (=> b!626820 (=> res!271820 e!380213)))

(assert (=> b!626820 (= res!271820 (not ((_ is Node!2075) (left!5111 (c!114995 (charsOf!902 separatorToken!136))))))))

(declare-fun d!219245 () Bool)

(assert (=> d!219245 e!380208))

(declare-fun res!271823 () Bool)

(assert (=> d!219245 (=> (not res!271823) (not e!380208))))

(assert (=> d!219245 (= res!271823 e!380215)))

(declare-fun res!271817 () Bool)

(assert (=> d!219245 (=> res!271817 e!380215)))

(assert (=> d!219245 (= res!271817 (not ((_ is Node!2075) (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))))))))

(assert (=> d!219245 (= (appendAssocInst!111 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136))) true)))

(declare-fun b!626818 () Bool)

(assert (=> b!626818 (= e!380209 (appendAssoc!31 (list!2717 (left!5111 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))))) (list!2717 (left!5111 (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))))) (++!1778 (list!2717 (right!5441 (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))))) (list!2717 (c!114995 (charsOf!902 separatorToken!136))))))))

(assert (= (and d!219245 (not res!271817)) b!626815))

(assert (= (and b!626815 res!271822) b!626814))

(assert (= (and b!626814 (not res!271819)) b!626813))

(assert (= (and b!626813 res!271816) b!626818))

(assert (= (and d!219245 res!271823) b!626817))

(assert (= (and b!626817 (not res!271815)) b!626819))

(assert (= (and b!626819 res!271818) b!626820))

(assert (= (and b!626820 (not res!271820)) b!626812))

(assert (= (and b!626812 res!271821) b!626816))

(declare-fun m!894873 () Bool)

(assert (=> b!626812 m!894873))

(declare-fun m!894877 () Bool)

(assert (=> b!626812 m!894877))

(declare-fun m!894879 () Bool)

(assert (=> b!626812 m!894879))

(assert (=> b!626812 m!894873))

(assert (=> b!626812 m!894877))

(assert (=> b!626812 m!894879))

(declare-fun m!894883 () Bool)

(assert (=> b!626812 m!894883))

(declare-fun m!894885 () Bool)

(assert (=> b!626813 m!894885))

(declare-fun m!894887 () Bool)

(assert (=> b!626813 m!894887))

(declare-fun m!894889 () Bool)

(assert (=> b!626813 m!894889))

(assert (=> b!626813 m!894885))

(assert (=> b!626813 m!894887))

(assert (=> b!626813 m!894889))

(declare-fun m!894895 () Bool)

(assert (=> b!626813 m!894895))

(declare-fun m!894899 () Bool)

(assert (=> b!626815 m!894899))

(declare-fun m!894901 () Bool)

(assert (=> b!626815 m!894901))

(assert (=> b!626815 m!894889))

(assert (=> b!626815 m!894899))

(assert (=> b!626815 m!894901))

(assert (=> b!626815 m!894889))

(declare-fun m!894907 () Bool)

(assert (=> b!626815 m!894907))

(assert (=> b!626818 m!894887))

(assert (=> b!626818 m!894889))

(assert (=> b!626818 m!894887))

(assert (=> b!626818 m!894889))

(declare-fun m!894909 () Bool)

(assert (=> b!626818 m!894909))

(assert (=> b!626818 m!894885))

(assert (=> b!626818 m!894899))

(assert (=> b!626818 m!894899))

(assert (=> b!626818 m!894885))

(assert (=> b!626818 m!894909))

(declare-fun m!894911 () Bool)

(assert (=> b!626818 m!894911))

(assert (=> b!626816 m!894877))

(assert (=> b!626816 m!894879))

(assert (=> b!626816 m!894873))

(declare-fun m!894913 () Bool)

(assert (=> b!626816 m!894913))

(assert (=> b!626816 m!894879))

(declare-fun m!894915 () Bool)

(assert (=> b!626816 m!894915))

(declare-fun m!894917 () Bool)

(assert (=> b!626816 m!894917))

(assert (=> b!626816 m!894873))

(assert (=> b!626816 m!894877))

(assert (=> b!626816 m!894913))

(assert (=> b!626816 m!894915))

(assert (=> b!626819 m!894873))

(declare-fun m!894923 () Bool)

(assert (=> b!626819 m!894923))

(assert (=> b!626819 m!894915))

(assert (=> b!626819 m!894873))

(assert (=> b!626819 m!894923))

(assert (=> b!626819 m!894915))

(declare-fun m!894925 () Bool)

(assert (=> b!626819 m!894925))

(assert (=> d!219141 d!219245))

(declare-fun b!626942 () Bool)

(declare-fun res!271868 () Bool)

(declare-fun e!380279 () Bool)

(assert (=> b!626942 (=> (not res!271868) (not e!380279))))

(declare-fun lt!266863 () Conc!2075)

(assert (=> b!626942 (= res!271868 (<= (height!262 lt!266863) (+ (max!0 (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (height!262 (c!114995 (charsOf!902 separatorToken!136)))) 1)))))

(declare-fun bm!41259 () Bool)

(declare-fun call!41272 () Conc!2075)

(declare-fun call!41270 () Conc!2075)

(assert (=> bm!41259 (= call!41272 call!41270)))

(declare-fun bm!41260 () Bool)

(declare-fun call!41279 () Conc!2075)

(declare-fun call!41271 () Conc!2075)

(assert (=> bm!41260 (= call!41279 call!41271)))

(declare-fun b!626943 () Bool)

(declare-fun e!380281 () Conc!2075)

(assert (=> b!626943 (= e!380281 call!41279)))

(declare-fun b!626944 () Bool)

(declare-fun e!380285 () Bool)

(assert (=> b!626944 (= e!380285 (isBalanced!551 (c!114995 (charsOf!902 separatorToken!136))))))

(declare-fun b!626945 () Bool)

(assert (=> b!626945 (= e!380281 call!41279)))

(declare-fun b!626946 () Bool)

(assert (=> b!626946 (= e!380279 (= (list!2717 lt!266863) (++!1778 (list!2717 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (list!2717 (c!114995 (charsOf!902 separatorToken!136))))))))

(declare-fun b!626947 () Bool)

(declare-fun c!115200 () Bool)

(declare-fun call!41266 () Int)

(declare-fun call!41268 () Int)

(assert (=> b!626947 (= c!115200 (>= call!41266 call!41268))))

(declare-fun e!380284 () Conc!2075)

(declare-fun e!380282 () Conc!2075)

(assert (=> b!626947 (= e!380284 e!380282)))

(declare-fun bm!41261 () Bool)

(declare-fun c!115201 () Bool)

(declare-fun c!115198 () Bool)

(declare-fun call!41277 () Conc!2075)

(assert (=> bm!41261 (= call!41277 (++!1779 (ite c!115201 (ite c!115200 (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (right!5441 (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))))) (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (ite c!115201 (c!114995 (charsOf!902 separatorToken!136)) (ite c!115198 (left!5111 (c!114995 (charsOf!902 separatorToken!136))) (left!5111 (left!5111 (c!114995 (charsOf!902 separatorToken!136))))))))))

(declare-fun bm!41262 () Bool)

(assert (=> bm!41262 (= call!41268 (height!262 (ite c!115201 (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (right!5441 (c!114995 (charsOf!902 separatorToken!136))))))))

(declare-fun lt!266862 () Conc!2075)

(declare-fun bm!41263 () Bool)

(assert (=> bm!41263 (= call!41266 (height!262 (ite c!115201 (left!5111 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) lt!266862)))))

(declare-fun b!626948 () Bool)

(declare-fun call!41275 () Int)

(assert (=> b!626948 (= c!115198 (>= call!41268 call!41275))))

(declare-fun e!380283 () Conc!2075)

(assert (=> b!626948 (= e!380284 e!380283)))

(declare-fun bm!41264 () Bool)

(declare-fun call!41265 () Conc!2075)

(assert (=> bm!41264 (= call!41265 call!41270)))

(declare-fun bm!41265 () Bool)

(declare-fun call!41269 () Conc!2075)

(assert (=> bm!41265 (= call!41269 call!41277)))

(declare-fun b!626949 () Bool)

(declare-fun e!380278 () Conc!2075)

(declare-fun call!41267 () Conc!2075)

(assert (=> b!626949 (= e!380278 call!41267)))

(declare-fun b!626951 () Bool)

(declare-fun e!380280 () Conc!2075)

(declare-fun call!41273 () Conc!2075)

(assert (=> b!626951 (= e!380280 call!41273)))

(declare-fun bm!41266 () Bool)

(declare-fun call!41274 () Conc!2075)

(declare-fun call!41278 () Conc!2075)

(assert (=> bm!41266 (= call!41274 call!41278)))

(declare-fun bm!41267 () Bool)

(declare-fun call!41264 () Conc!2075)

(assert (=> bm!41267 (= call!41264 call!41277)))

(declare-fun b!626952 () Bool)

(declare-fun res!271870 () Bool)

(assert (=> b!626952 (=> (not res!271870) (not e!380279))))

(assert (=> b!626952 (= res!271870 (>= (height!262 lt!266863) (max!0 (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (height!262 (c!114995 (charsOf!902 separatorToken!136))))))))

(declare-fun bm!41268 () Bool)

(assert (=> bm!41268 (= call!41275 (height!262 (ite c!115201 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (left!5111 (c!114995 (charsOf!902 separatorToken!136))))))))

(declare-fun bm!41269 () Bool)

(declare-fun call!41276 () Int)

(declare-fun lt!266864 () Conc!2075)

(assert (=> bm!41269 (= call!41276 (height!262 (ite c!115201 lt!266864 (c!114995 (charsOf!902 separatorToken!136)))))))

(declare-fun b!626953 () Bool)

(assert (=> b!626953 (= e!380282 e!380281)))

(assert (=> b!626953 (= lt!266864 call!41269)))

(declare-fun c!115203 () Bool)

(assert (=> b!626953 (= c!115203 (= call!41276 (- call!41275 3)))))

(declare-fun b!626954 () Bool)

(assert (=> b!626954 (= e!380283 e!380280)))

(assert (=> b!626954 (= lt!266862 call!41264)))

(declare-fun c!115204 () Bool)

(assert (=> b!626954 (= c!115204 (= call!41266 (- call!41276 3)))))

(declare-fun c!115199 () Bool)

(declare-fun bm!41270 () Bool)

(declare-fun <>!38 (Conc!2075 Conc!2075) Conc!2075)

(assert (=> bm!41270 (= call!41267 (<>!38 (ite c!115199 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (ite c!115201 (ite c!115203 (left!5111 (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))))) (left!5111 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))))) (ite c!115198 call!41264 (ite c!115204 call!41274 lt!266862)))) (ite c!115199 (c!114995 (charsOf!902 separatorToken!136)) (ite c!115201 (ite c!115203 lt!266864 (left!5111 (right!5441 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))))) (ite (or c!115198 c!115204) (right!5441 (c!114995 (charsOf!902 separatorToken!136))) call!41274)))))))

(declare-fun b!626955 () Bool)

(declare-fun e!380277 () Conc!2075)

(declare-fun e!380286 () Conc!2075)

(assert (=> b!626955 (= e!380277 e!380286)))

(declare-fun c!115202 () Bool)

(assert (=> b!626955 (= c!115202 (= (c!114995 (charsOf!902 separatorToken!136)) Empty!2075))))

(declare-fun b!626956 () Bool)

(assert (=> b!626956 (= e!380283 call!41272)))

(declare-fun b!626957 () Bool)

(assert (=> b!626957 (= e!380282 call!41271)))

(declare-fun bm!41271 () Bool)

(assert (=> bm!41271 (= call!41271 call!41278)))

(declare-fun bm!41272 () Bool)

(assert (=> bm!41272 (= call!41273 call!41272)))

(declare-fun b!626958 () Bool)

(declare-fun res!271871 () Bool)

(assert (=> b!626958 (=> (not res!271871) (not e!380279))))

(assert (=> b!626958 (= res!271871 (isBalanced!551 lt!266863))))

(declare-fun b!626959 () Bool)

(assert (=> b!626959 (= e!380286 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))))))

(declare-fun bm!41273 () Bool)

(assert (=> bm!41273 (= call!41270 call!41267)))

(declare-fun b!626960 () Bool)

(assert (=> b!626960 (= e!380277 (c!114995 (charsOf!902 separatorToken!136)))))

(declare-fun b!626961 () Bool)

(assert (=> b!626961 (= e!380278 e!380284)))

(declare-fun lt!266865 () Int)

(assert (=> b!626961 (= c!115201 (< lt!266865 (- 1)))))

(declare-fun b!626962 () Bool)

(assert (=> b!626962 (= e!380280 call!41273)))

(declare-fun bm!41274 () Bool)

(assert (=> bm!41274 (= call!41278 (<>!38 (ite c!115201 (ite (or c!115200 c!115203) (left!5111 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) call!41265) (ite c!115204 lt!266862 (right!5441 (left!5111 (c!114995 (charsOf!902 separatorToken!136)))))) (ite c!115201 (ite c!115200 call!41269 (ite c!115203 call!41265 lt!266864)) (ite c!115204 (right!5441 (left!5111 (c!114995 (charsOf!902 separatorToken!136)))) (right!5441 (c!114995 (charsOf!902 separatorToken!136)))))))))

(declare-fun d!219269 () Bool)

(assert (=> d!219269 e!380279))

(declare-fun res!271872 () Bool)

(assert (=> d!219269 (=> (not res!271872) (not e!380279))))

(assert (=> d!219269 (= res!271872 (appendAssocInst!111 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136))))))

(assert (=> d!219269 (= lt!266863 e!380277)))

(declare-fun c!115197 () Bool)

(assert (=> d!219269 (= c!115197 (= (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) Empty!2075))))

(assert (=> d!219269 e!380285))

(declare-fun res!271869 () Bool)

(assert (=> d!219269 (=> (not res!271869) (not e!380285))))

(assert (=> d!219269 (= res!271869 (isBalanced!551 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))))))

(assert (=> d!219269 (= (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136))) lt!266863)))

(declare-fun b!626950 () Bool)

(assert (=> b!626950 (= c!115199 (and (<= (- 1) lt!266865) (<= lt!266865 1)))))

(assert (=> b!626950 (= lt!266865 (- (height!262 (c!114995 (charsOf!902 separatorToken!136))) (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))))))))

(assert (=> b!626950 (= e!380286 e!380278)))

(assert (= (and d!219269 res!271869) b!626944))

(assert (= (and d!219269 c!115197) b!626960))

(assert (= (and d!219269 (not c!115197)) b!626955))

(assert (= (and b!626955 c!115202) b!626959))

(assert (= (and b!626955 (not c!115202)) b!626950))

(assert (= (and b!626950 c!115199) b!626949))

(assert (= (and b!626950 (not c!115199)) b!626961))

(assert (= (and b!626961 c!115201) b!626947))

(assert (= (and b!626961 (not c!115201)) b!626948))

(assert (= (and b!626947 c!115200) b!626957))

(assert (= (and b!626947 (not c!115200)) b!626953))

(assert (= (and b!626953 c!115203) b!626945))

(assert (= (and b!626953 (not c!115203)) b!626943))

(assert (= (or b!626945 b!626943) bm!41264))

(assert (= (or b!626945 b!626943) bm!41260))

(assert (= (or b!626957 b!626953) bm!41265))

(assert (= (or b!626957 bm!41260) bm!41271))

(assert (= (and b!626948 c!115198) b!626956))

(assert (= (and b!626948 (not c!115198)) b!626954))

(assert (= (and b!626954 c!115204) b!626962))

(assert (= (and b!626954 (not c!115204)) b!626951))

(assert (= (or b!626962 b!626951) bm!41266))

(assert (= (or b!626962 b!626951) bm!41272))

(assert (= (or b!626956 b!626954) bm!41267))

(assert (= (or b!626956 bm!41272) bm!41259))

(assert (= (or b!626953 b!626954) bm!41269))

(assert (= (or bm!41265 bm!41267) bm!41261))

(assert (= (or b!626953 b!626948) bm!41268))

(assert (= (or bm!41264 bm!41259) bm!41273))

(assert (= (or b!626947 b!626954) bm!41263))

(assert (= (or b!626947 b!626948) bm!41262))

(assert (= (or bm!41271 bm!41266) bm!41274))

(assert (= (or b!626949 bm!41273) bm!41270))

(assert (= (and d!219269 res!271872) b!626958))

(assert (= (and b!626958 res!271871) b!626942))

(assert (= (and b!626942 res!271868) b!626952))

(assert (= (and b!626952 res!271870) b!626946))

(declare-fun m!895073 () Bool)

(assert (=> bm!41269 m!895073))

(declare-fun m!895075 () Bool)

(assert (=> bm!41268 m!895075))

(declare-fun m!895077 () Bool)

(assert (=> b!626952 m!895077))

(assert (=> b!626952 m!894517))

(assert (=> b!626952 m!894519))

(assert (=> b!626952 m!894517))

(assert (=> b!626952 m!894519))

(assert (=> b!626952 m!894521))

(declare-fun m!895079 () Bool)

(assert (=> b!626946 m!895079))

(assert (=> b!626946 m!894873))

(assert (=> b!626946 m!894889))

(assert (=> b!626946 m!894873))

(assert (=> b!626946 m!894889))

(declare-fun m!895081 () Bool)

(assert (=> b!626946 m!895081))

(declare-fun m!895083 () Bool)

(assert (=> bm!41261 m!895083))

(assert (=> b!626950 m!894519))

(assert (=> b!626950 m!894517))

(assert (=> b!626942 m!895077))

(assert (=> b!626942 m!894517))

(assert (=> b!626942 m!894519))

(assert (=> b!626942 m!894517))

(assert (=> b!626942 m!894519))

(assert (=> b!626942 m!894521))

(declare-fun m!895085 () Bool)

(assert (=> b!626958 m!895085))

(declare-fun m!895087 () Bool)

(assert (=> bm!41274 m!895087))

(declare-fun m!895089 () Bool)

(assert (=> b!626944 m!895089))

(declare-fun m!895091 () Bool)

(assert (=> bm!41263 m!895091))

(assert (=> d!219269 m!894513))

(declare-fun m!895093 () Bool)

(assert (=> d!219269 m!895093))

(declare-fun m!895095 () Bool)

(assert (=> bm!41262 m!895095))

(declare-fun m!895097 () Bool)

(assert (=> bm!41270 m!895097))

(assert (=> d!219141 d!219269))

(declare-fun b!626974 () Bool)

(declare-fun e!380292 () List!6450)

(declare-fun ++!1781 (List!6450 List!6450) List!6450)

(assert (=> b!626974 (= e!380292 (++!1781 (list!2716 (left!5112 (c!114997 v!6361))) (list!2716 (right!5442 (c!114997 v!6361)))))))

(declare-fun b!626973 () Bool)

(declare-fun list!2719 (IArray!4153) List!6450)

(assert (=> b!626973 (= e!380292 (list!2719 (xs!4713 (c!114997 v!6361))))))

(declare-fun b!626972 () Bool)

(declare-fun e!380291 () List!6450)

(assert (=> b!626972 (= e!380291 e!380292)))

(declare-fun c!115210 () Bool)

(assert (=> b!626972 (= c!115210 ((_ is Leaf!3243) (c!114997 v!6361)))))

(declare-fun d!219325 () Bool)

(declare-fun c!115209 () Bool)

(assert (=> d!219325 (= c!115209 ((_ is Empty!2076) (c!114997 v!6361)))))

(assert (=> d!219325 (= (list!2716 (c!114997 v!6361)) e!380291)))

(declare-fun b!626971 () Bool)

(assert (=> b!626971 (= e!380291 Nil!6440)))

(assert (= (and d!219325 c!115209) b!626971))

(assert (= (and d!219325 (not c!115209)) b!626972))

(assert (= (and b!626972 c!115210) b!626973))

(assert (= (and b!626972 (not c!115210)) b!626974))

(declare-fun m!895099 () Bool)

(assert (=> b!626974 m!895099))

(declare-fun m!895101 () Bool)

(assert (=> b!626974 m!895101))

(assert (=> b!626974 m!895099))

(assert (=> b!626974 m!895101))

(declare-fun m!895103 () Bool)

(assert (=> b!626974 m!895103))

(declare-fun m!895105 () Bool)

(assert (=> b!626973 m!895105))

(assert (=> d!219155 d!219325))

(declare-fun d!219327 () Bool)

(declare-fun c!115213 () Bool)

(assert (=> d!219327 (= c!115213 ((_ is Nil!6440) lt!266750))))

(declare-fun e!380295 () (InoxSet Token!2358))

(assert (=> d!219327 (= (content!1158 lt!266750) e!380295)))

(declare-fun b!626979 () Bool)

(assert (=> b!626979 (= e!380295 ((as const (Array Token!2358 Bool)) false))))

(declare-fun b!626980 () Bool)

(assert (=> b!626980 (= e!380295 ((_ map or) (store ((as const (Array Token!2358 Bool)) false) (h!11841 lt!266750) true) (content!1158 (t!82369 lt!266750))))))

(assert (= (and d!219327 c!115213) b!626979))

(assert (= (and d!219327 (not c!115213)) b!626980))

(declare-fun m!895107 () Bool)

(assert (=> b!626980 m!895107))

(declare-fun m!895109 () Bool)

(assert (=> b!626980 m!895109))

(assert (=> d!219115 d!219327))

(declare-fun d!219329 () Bool)

(declare-fun c!115214 () Bool)

(assert (=> d!219329 (= c!115214 ((_ is Nil!6440) lt!266688))))

(declare-fun e!380296 () (InoxSet Token!2358))

(assert (=> d!219329 (= (content!1158 lt!266688) e!380296)))

(declare-fun b!626981 () Bool)

(assert (=> b!626981 (= e!380296 ((as const (Array Token!2358 Bool)) false))))

(declare-fun b!626982 () Bool)

(assert (=> b!626982 (= e!380296 ((_ map or) (store ((as const (Array Token!2358 Bool)) false) (h!11841 lt!266688) true) (content!1158 (t!82369 lt!266688))))))

(assert (= (and d!219329 c!115214) b!626981))

(assert (= (and d!219329 (not c!115214)) b!626982))

(declare-fun m!895111 () Bool)

(assert (=> b!626982 m!895111))

(declare-fun m!895113 () Bool)

(assert (=> b!626982 m!895113))

(assert (=> d!219115 d!219329))

(declare-fun d!219331 () Bool)

(declare-fun lt!266868 () Int)

(assert (=> d!219331 (>= lt!266868 0)))

(declare-fun e!380299 () Int)

(assert (=> d!219331 (= lt!266868 e!380299)))

(declare-fun c!115217 () Bool)

(assert (=> d!219331 (= c!115217 ((_ is Nil!6440) lt!266688))))

(assert (=> d!219331 (= (size!5040 lt!266688) lt!266868)))

(declare-fun b!626987 () Bool)

(assert (=> b!626987 (= e!380299 0)))

(declare-fun b!626988 () Bool)

(assert (=> b!626988 (= e!380299 (+ 1 (size!5040 (t!82369 lt!266688))))))

(assert (= (and d!219331 c!115217) b!626987))

(assert (= (and d!219331 (not c!115217)) b!626988))

(declare-fun m!895115 () Bool)

(assert (=> b!626988 m!895115))

(assert (=> b!626322 d!219331))

(declare-fun d!219333 () Bool)

(declare-fun lt!266871 () Bool)

(assert (=> d!219333 (= lt!266871 (select (content!1158 lt!266688) lt!266781))))

(declare-fun e!380305 () Bool)

(assert (=> d!219333 (= lt!266871 e!380305)))

(declare-fun res!271878 () Bool)

(assert (=> d!219333 (=> (not res!271878) (not e!380305))))

(assert (=> d!219333 (= res!271878 ((_ is Cons!6440) lt!266688))))

(assert (=> d!219333 (= (contains!1505 lt!266688 lt!266781) lt!266871)))

(declare-fun b!626993 () Bool)

(declare-fun e!380304 () Bool)

(assert (=> b!626993 (= e!380305 e!380304)))

(declare-fun res!271877 () Bool)

(assert (=> b!626993 (=> res!271877 e!380304)))

(assert (=> b!626993 (= res!271877 (= (h!11841 lt!266688) lt!266781))))

(declare-fun b!626994 () Bool)

(assert (=> b!626994 (= e!380304 (contains!1505 (t!82369 lt!266688) lt!266781))))

(assert (= (and d!219333 res!271878) b!626993))

(assert (= (and b!626993 (not res!271877)) b!626994))

(assert (=> d!219333 m!894461))

(declare-fun m!895117 () Bool)

(assert (=> d!219333 m!895117))

(declare-fun m!895119 () Bool)

(assert (=> b!626994 m!895119))

(assert (=> d!219145 d!219333))

(declare-fun d!219335 () Bool)

(declare-fun lt!266872 () Int)

(assert (=> d!219335 (>= lt!266872 0)))

(declare-fun e!380306 () Int)

(assert (=> d!219335 (= lt!266872 e!380306)))

(declare-fun c!115218 () Bool)

(assert (=> d!219335 (= c!115218 ((_ is Nil!6440) (list!2713 v!6361)))))

(assert (=> d!219335 (= (size!5040 (list!2713 v!6361)) lt!266872)))

(declare-fun b!626995 () Bool)

(assert (=> b!626995 (= e!380306 0)))

(declare-fun b!626996 () Bool)

(assert (=> b!626996 (= e!380306 (+ 1 (size!5040 (t!82369 (list!2713 v!6361)))))))

(assert (= (and d!219335 c!115218) b!626995))

(assert (= (and d!219335 (not c!115218)) b!626996))

(declare-fun m!895121 () Bool)

(assert (=> b!626996 m!895121))

(assert (=> d!219163 d!219335))

(assert (=> d!219163 d!219155))

(declare-fun d!219337 () Bool)

(declare-fun lt!266875 () Int)

(assert (=> d!219337 (= lt!266875 (size!5040 (list!2716 (c!114997 v!6361))))))

(assert (=> d!219337 (= lt!266875 (ite ((_ is Empty!2076) (c!114997 v!6361)) 0 (ite ((_ is Leaf!3243) (c!114997 v!6361)) (csize!4383 (c!114997 v!6361)) (csize!4382 (c!114997 v!6361)))))))

(assert (=> d!219337 (= (size!5041 (c!114997 v!6361)) lt!266875)))

(declare-fun bs!72275 () Bool)

(assert (= bs!72275 d!219337))

(assert (=> bs!72275 m!894541))

(assert (=> bs!72275 m!894541))

(declare-fun m!895123 () Bool)

(assert (=> bs!72275 m!895123))

(assert (=> d!219163 d!219337))

(declare-fun d!219339 () Bool)

(declare-fun e!380308 () Bool)

(assert (=> d!219339 e!380308))

(declare-fun res!271879 () Bool)

(assert (=> d!219339 (=> (not res!271879) (not e!380308))))

(declare-fun lt!266876 () List!6450)

(assert (=> d!219339 (= res!271879 (= ((_ map implies) (content!1158 lt!266876) (content!1158 (list!2716 (c!114997 v!6361)))) ((as const (InoxSet Token!2358)) true)))))

(declare-fun e!380311 () List!6450)

(assert (=> d!219339 (= lt!266876 e!380311)))

(declare-fun c!115220 () Bool)

(assert (=> d!219339 (= c!115220 ((_ is Nil!6440) (list!2716 (c!114997 v!6361))))))

(assert (=> d!219339 (= (drop!344 (list!2716 (c!114997 v!6361)) from!852) lt!266876)))

(declare-fun b!626997 () Bool)

(declare-fun e!380309 () List!6450)

(assert (=> b!626997 (= e!380309 (list!2716 (c!114997 v!6361)))))

(declare-fun b!626998 () Bool)

(declare-fun e!380307 () Int)

(assert (=> b!626998 (= e!380307 0)))

(declare-fun b!626999 () Bool)

(declare-fun e!380310 () Int)

(assert (=> b!626999 (= e!380308 (= (size!5040 lt!266876) e!380310))))

(declare-fun c!115221 () Bool)

(assert (=> b!626999 (= c!115221 (<= from!852 0))))

(declare-fun b!627000 () Bool)

(assert (=> b!627000 (= e!380310 e!380307)))

(declare-fun c!115222 () Bool)

(declare-fun call!41280 () Int)

(assert (=> b!627000 (= c!115222 (>= from!852 call!41280))))

(declare-fun b!627001 () Bool)

(assert (=> b!627001 (= e!380311 e!380309)))

(declare-fun c!115219 () Bool)

(assert (=> b!627001 (= c!115219 (<= from!852 0))))

(declare-fun b!627002 () Bool)

(assert (=> b!627002 (= e!380309 (drop!344 (t!82369 (list!2716 (c!114997 v!6361))) (- from!852 1)))))

(declare-fun b!627003 () Bool)

(assert (=> b!627003 (= e!380311 Nil!6440)))

(declare-fun b!627004 () Bool)

(assert (=> b!627004 (= e!380310 call!41280)))

(declare-fun bm!41275 () Bool)

(assert (=> bm!41275 (= call!41280 (size!5040 (list!2716 (c!114997 v!6361))))))

(declare-fun b!627005 () Bool)

(assert (=> b!627005 (= e!380307 (- call!41280 from!852))))

(assert (= (and d!219339 c!115220) b!627003))

(assert (= (and d!219339 (not c!115220)) b!627001))

(assert (= (and b!627001 c!115219) b!626997))

(assert (= (and b!627001 (not c!115219)) b!627002))

(assert (= (and d!219339 res!271879) b!626999))

(assert (= (and b!626999 c!115221) b!627004))

(assert (= (and b!626999 (not c!115221)) b!627000))

(assert (= (and b!627000 c!115222) b!626998))

(assert (= (and b!627000 (not c!115222)) b!627005))

(assert (= (or b!627004 b!627000 b!627005) bm!41275))

(declare-fun m!895125 () Bool)

(assert (=> d!219339 m!895125))

(assert (=> d!219339 m!894541))

(declare-fun m!895127 () Bool)

(assert (=> d!219339 m!895127))

(declare-fun m!895129 () Bool)

(assert (=> b!626999 m!895129))

(declare-fun m!895131 () Bool)

(assert (=> b!627002 m!895131))

(assert (=> bm!41275 m!894541))

(assert (=> bm!41275 m!895123))

(assert (=> d!219147 d!219339))

(assert (=> d!219147 d!219325))

(declare-fun b!627018 () Bool)

(declare-fun e!380316 () Bool)

(declare-fun isEmpty!4585 (Conc!2076) Bool)

(assert (=> b!627018 (= e!380316 (not (isEmpty!4585 (right!5442 (c!114997 v!6361)))))))

(declare-fun d!219341 () Bool)

(declare-fun res!271893 () Bool)

(declare-fun e!380317 () Bool)

(assert (=> d!219341 (=> res!271893 e!380317)))

(assert (=> d!219341 (= res!271893 (not ((_ is Node!2076) (c!114997 v!6361))))))

(assert (=> d!219341 (= (isBalanced!550 (c!114997 v!6361)) e!380317)))

(declare-fun b!627019 () Bool)

(declare-fun res!271895 () Bool)

(assert (=> b!627019 (=> (not res!271895) (not e!380316))))

(assert (=> b!627019 (= res!271895 (not (isEmpty!4585 (left!5112 (c!114997 v!6361)))))))

(declare-fun b!627020 () Bool)

(declare-fun res!271892 () Bool)

(assert (=> b!627020 (=> (not res!271892) (not e!380316))))

(assert (=> b!627020 (= res!271892 (isBalanced!550 (right!5442 (c!114997 v!6361))))))

(declare-fun b!627021 () Bool)

(declare-fun res!271897 () Bool)

(assert (=> b!627021 (=> (not res!271897) (not e!380316))))

(assert (=> b!627021 (= res!271897 (isBalanced!550 (left!5112 (c!114997 v!6361))))))

(declare-fun b!627022 () Bool)

(declare-fun res!271896 () Bool)

(assert (=> b!627022 (=> (not res!271896) (not e!380316))))

(declare-fun height!263 (Conc!2076) Int)

(assert (=> b!627022 (= res!271896 (<= (- (height!263 (left!5112 (c!114997 v!6361))) (height!263 (right!5442 (c!114997 v!6361)))) 1))))

(declare-fun b!627023 () Bool)

(assert (=> b!627023 (= e!380317 e!380316)))

(declare-fun res!271894 () Bool)

(assert (=> b!627023 (=> (not res!271894) (not e!380316))))

(assert (=> b!627023 (= res!271894 (<= (- 1) (- (height!263 (left!5112 (c!114997 v!6361))) (height!263 (right!5442 (c!114997 v!6361))))))))

(assert (= (and d!219341 (not res!271893)) b!627023))

(assert (= (and b!627023 res!271894) b!627022))

(assert (= (and b!627022 res!271896) b!627021))

(assert (= (and b!627021 res!271897) b!627020))

(assert (= (and b!627020 res!271892) b!627019))

(assert (= (and b!627019 res!271895) b!627018))

(declare-fun m!895133 () Bool)

(assert (=> b!627020 m!895133))

(declare-fun m!895135 () Bool)

(assert (=> b!627021 m!895135))

(declare-fun m!895137 () Bool)

(assert (=> b!627022 m!895137))

(declare-fun m!895139 () Bool)

(assert (=> b!627022 m!895139))

(assert (=> b!627023 m!895137))

(assert (=> b!627023 m!895139))

(declare-fun m!895141 () Bool)

(assert (=> b!627018 m!895141))

(declare-fun m!895143 () Bool)

(assert (=> b!627019 m!895143))

(assert (=> d!219083 d!219341))

(declare-fun d!219343 () Bool)

(assert (=> d!219343 (= (isEmpty!4583 (originalCharacters!1350 separatorToken!136)) ((_ is Nil!6438) (originalCharacters!1350 separatorToken!136)))))

(assert (=> d!219085 d!219343))

(declare-fun d!219345 () Bool)

(assert (=> d!219345 (= (inv!8232 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136))) (isBalanced!551 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136)))))))

(declare-fun bs!72276 () Bool)

(assert (= bs!72276 d!219345))

(declare-fun m!895145 () Bool)

(assert (=> bs!72276 m!895145))

(assert (=> tb!54417 d!219345))

(declare-fun d!219347 () Bool)

(assert (=> d!219347 (= (list!2712 lt!266778) (list!2717 (c!114995 lt!266778)))))

(declare-fun bs!72277 () Bool)

(assert (= bs!72277 d!219347))

(declare-fun m!895147 () Bool)

(assert (=> bs!72277 m!895147))

(assert (=> b!626460 d!219347))

(declare-fun b!627035 () Bool)

(declare-fun e!380322 () Bool)

(declare-fun lt!266879 () List!6448)

(assert (=> b!627035 (= e!380322 (or (not (= (list!2712 (charsOf!902 separatorToken!136)) Nil!6438)) (= lt!266879 (list!2712 (charsOf!902 (apply!1536 v!6361 from!852))))))))

(declare-fun b!627032 () Bool)

(declare-fun e!380323 () List!6448)

(assert (=> b!627032 (= e!380323 (list!2712 (charsOf!902 separatorToken!136)))))

(declare-fun b!627034 () Bool)

(declare-fun res!271903 () Bool)

(assert (=> b!627034 (=> (not res!271903) (not e!380322))))

(assert (=> b!627034 (= res!271903 (= (size!5038 lt!266879) (+ (size!5038 (list!2712 (charsOf!902 (apply!1536 v!6361 from!852)))) (size!5038 (list!2712 (charsOf!902 separatorToken!136))))))))

(declare-fun d!219349 () Bool)

(assert (=> d!219349 e!380322))

(declare-fun res!271902 () Bool)

(assert (=> d!219349 (=> (not res!271902) (not e!380322))))

(declare-fun content!1160 (List!6448) (InoxSet C!4228))

(assert (=> d!219349 (= res!271902 (= (content!1160 lt!266879) ((_ map or) (content!1160 (list!2712 (charsOf!902 (apply!1536 v!6361 from!852)))) (content!1160 (list!2712 (charsOf!902 separatorToken!136))))))))

(assert (=> d!219349 (= lt!266879 e!380323)))

(declare-fun c!115225 () Bool)

(assert (=> d!219349 (= c!115225 ((_ is Nil!6438) (list!2712 (charsOf!902 (apply!1536 v!6361 from!852)))))))

(assert (=> d!219349 (= (++!1778 (list!2712 (charsOf!902 (apply!1536 v!6361 from!852))) (list!2712 (charsOf!902 separatorToken!136))) lt!266879)))

(declare-fun b!627033 () Bool)

(assert (=> b!627033 (= e!380323 (Cons!6438 (h!11839 (list!2712 (charsOf!902 (apply!1536 v!6361 from!852)))) (++!1778 (t!82367 (list!2712 (charsOf!902 (apply!1536 v!6361 from!852)))) (list!2712 (charsOf!902 separatorToken!136)))))))

(assert (= (and d!219349 c!115225) b!627032))

(assert (= (and d!219349 (not c!115225)) b!627033))

(assert (= (and d!219349 res!271902) b!627034))

(assert (= (and b!627034 res!271903) b!627035))

(declare-fun m!895149 () Bool)

(assert (=> b!627034 m!895149))

(assert (=> b!627034 m!894527))

(declare-fun m!895151 () Bool)

(assert (=> b!627034 m!895151))

(assert (=> b!627034 m!894327))

(declare-fun m!895153 () Bool)

(assert (=> b!627034 m!895153))

(declare-fun m!895155 () Bool)

(assert (=> d!219349 m!895155))

(assert (=> d!219349 m!894527))

(declare-fun m!895157 () Bool)

(assert (=> d!219349 m!895157))

(assert (=> d!219349 m!894327))

(declare-fun m!895159 () Bool)

(assert (=> d!219349 m!895159))

(assert (=> b!627033 m!894327))

(declare-fun m!895161 () Bool)

(assert (=> b!627033 m!895161))

(assert (=> b!626460 d!219349))

(declare-fun d!219351 () Bool)

(assert (=> d!219351 (= (list!2712 (charsOf!902 (apply!1536 v!6361 from!852))) (list!2717 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))))))

(declare-fun bs!72278 () Bool)

(assert (= bs!72278 d!219351))

(assert (=> bs!72278 m!894873))

(assert (=> b!626460 d!219351))

(declare-fun d!219353 () Bool)

(assert (=> d!219353 (= (list!2712 (charsOf!902 separatorToken!136)) (list!2717 (c!114995 (charsOf!902 separatorToken!136))))))

(declare-fun bs!72279 () Bool)

(assert (= bs!72279 d!219353))

(assert (=> bs!72279 m!894889))

(assert (=> b!626460 d!219353))

(assert (=> b!626208 d!219157))

(declare-fun d!219355 () Bool)

(assert (=> d!219355 (= (height!262 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) (ite ((_ is Empty!2075) (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) 0 (ite ((_ is Leaf!3242) (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) 1 (cheight!2286 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))))

(assert (=> b!626351 d!219355))

(declare-fun d!219357 () Bool)

(assert (=> d!219357 (= (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) (ite ((_ is Empty!2075) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) 0 (ite ((_ is Leaf!3242) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) 1 (cheight!2286 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(assert (=> b!626351 d!219357))

(declare-fun d!219359 () Bool)

(assert (=> d!219359 (= (max!0 (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) (ite (< (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))))))))

(assert (=> b!626351 d!219359))

(declare-fun d!219361 () Bool)

(assert (=> d!219361 (= (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (ite ((_ is Empty!2075) (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) 0 (ite ((_ is Leaf!3242) (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) 1 (cheight!2286 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))))))

(assert (=> b!626351 d!219361))

(declare-fun b!627036 () Bool)

(declare-fun res!271904 () Bool)

(declare-fun e!380326 () Bool)

(assert (=> b!627036 (=> (not res!271904) (not e!380326))))

(declare-fun lt!266881 () Conc!2075)

(assert (=> b!627036 (= res!271904 (<= (height!262 lt!266881) (+ (max!0 (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) 1)))))

(declare-fun bm!41276 () Bool)

(declare-fun call!41289 () Conc!2075)

(declare-fun call!41287 () Conc!2075)

(assert (=> bm!41276 (= call!41289 call!41287)))

(declare-fun bm!41277 () Bool)

(declare-fun call!41296 () Conc!2075)

(declare-fun call!41288 () Conc!2075)

(assert (=> bm!41277 (= call!41296 call!41288)))

(declare-fun b!627037 () Bool)

(declare-fun e!380328 () Conc!2075)

(assert (=> b!627037 (= e!380328 call!41296)))

(declare-fun b!627038 () Bool)

(declare-fun e!380332 () Bool)

(assert (=> b!627038 (= e!380332 (isBalanced!551 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))

(declare-fun b!627039 () Bool)

(assert (=> b!627039 (= e!380328 call!41296)))

(declare-fun b!627040 () Bool)

(assert (=> b!627040 (= e!380326 (= (list!2717 lt!266881) (++!1778 (list!2717 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (list!2717 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun b!627041 () Bool)

(declare-fun c!115229 () Bool)

(declare-fun call!41283 () Int)

(declare-fun call!41285 () Int)

(assert (=> b!627041 (= c!115229 (>= call!41283 call!41285))))

(declare-fun e!380331 () Conc!2075)

(declare-fun e!380329 () Conc!2075)

(assert (=> b!627041 (= e!380331 e!380329)))

(declare-fun c!115230 () Bool)

(declare-fun bm!41278 () Bool)

(declare-fun call!41294 () Conc!2075)

(declare-fun c!115227 () Bool)

(assert (=> bm!41278 (= call!41294 (++!1779 (ite c!115230 (ite c!115229 (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (right!5441 (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))) (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (ite c!115230 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))) (ite c!115227 (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) (left!5111 (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))))

(declare-fun bm!41279 () Bool)

(assert (=> bm!41279 (= call!41285 (height!262 (ite c!115230 (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (right!5441 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun lt!266880 () Conc!2075)

(declare-fun bm!41280 () Bool)

(assert (=> bm!41280 (= call!41283 (height!262 (ite c!115230 (left!5111 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) lt!266880)))))

(declare-fun b!627042 () Bool)

(declare-fun call!41292 () Int)

(assert (=> b!627042 (= c!115227 (>= call!41285 call!41292))))

(declare-fun e!380330 () Conc!2075)

(assert (=> b!627042 (= e!380331 e!380330)))

(declare-fun bm!41281 () Bool)

(declare-fun call!41282 () Conc!2075)

(assert (=> bm!41281 (= call!41282 call!41287)))

(declare-fun bm!41282 () Bool)

(declare-fun call!41286 () Conc!2075)

(assert (=> bm!41282 (= call!41286 call!41294)))

(declare-fun b!627043 () Bool)

(declare-fun e!380325 () Conc!2075)

(declare-fun call!41284 () Conc!2075)

(assert (=> b!627043 (= e!380325 call!41284)))

(declare-fun b!627045 () Bool)

(declare-fun e!380327 () Conc!2075)

(declare-fun call!41290 () Conc!2075)

(assert (=> b!627045 (= e!380327 call!41290)))

(declare-fun bm!41283 () Bool)

(declare-fun call!41291 () Conc!2075)

(declare-fun call!41295 () Conc!2075)

(assert (=> bm!41283 (= call!41291 call!41295)))

(declare-fun bm!41284 () Bool)

(declare-fun call!41281 () Conc!2075)

(assert (=> bm!41284 (= call!41281 call!41294)))

(declare-fun b!627046 () Bool)

(declare-fun res!271906 () Bool)

(assert (=> b!627046 (=> (not res!271906) (not e!380326))))

(assert (=> b!627046 (= res!271906 (>= (height!262 lt!266881) (max!0 (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun bm!41285 () Bool)

(assert (=> bm!41285 (= call!41292 (height!262 (ite c!115230 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun bm!41286 () Bool)

(declare-fun call!41293 () Int)

(declare-fun lt!266882 () Conc!2075)

(assert (=> bm!41286 (= call!41293 (height!262 (ite c!115230 lt!266882 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(declare-fun b!627047 () Bool)

(assert (=> b!627047 (= e!380329 e!380328)))

(assert (=> b!627047 (= lt!266882 call!41286)))

(declare-fun c!115232 () Bool)

(assert (=> b!627047 (= c!115232 (= call!41293 (- call!41292 3)))))

(declare-fun b!627048 () Bool)

(assert (=> b!627048 (= e!380330 e!380327)))

(assert (=> b!627048 (= lt!266880 call!41281)))

(declare-fun c!115233 () Bool)

(assert (=> b!627048 (= c!115233 (= call!41283 (- call!41293 3)))))

(declare-fun c!115228 () Bool)

(declare-fun bm!41287 () Bool)

(assert (=> bm!41287 (= call!41284 (<>!38 (ite c!115228 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (ite c!115230 (ite c!115232 (left!5111 (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))))) (left!5111 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))))) (ite c!115227 call!41281 (ite c!115233 call!41291 lt!266880)))) (ite c!115228 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))) (ite c!115230 (ite c!115232 lt!266882 (left!5111 (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))) (ite (or c!115227 c!115233) (right!5441 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) call!41291)))))))

(declare-fun b!627049 () Bool)

(declare-fun e!380324 () Conc!2075)

(declare-fun e!380333 () Conc!2075)

(assert (=> b!627049 (= e!380324 e!380333)))

(declare-fun c!115231 () Bool)

(assert (=> b!627049 (= c!115231 (= (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))) Empty!2075))))

(declare-fun b!627050 () Bool)

(assert (=> b!627050 (= e!380330 call!41289)))

(declare-fun b!627051 () Bool)

(assert (=> b!627051 (= e!380329 call!41288)))

(declare-fun bm!41288 () Bool)

(assert (=> bm!41288 (= call!41288 call!41295)))

(declare-fun bm!41289 () Bool)

(assert (=> bm!41289 (= call!41290 call!41289)))

(declare-fun b!627052 () Bool)

(declare-fun res!271907 () Bool)

(assert (=> b!627052 (=> (not res!271907) (not e!380326))))

(assert (=> b!627052 (= res!271907 (isBalanced!551 lt!266881))))

(declare-fun b!627053 () Bool)

(assert (=> b!627053 (= e!380333 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))))))

(declare-fun bm!41290 () Bool)

(assert (=> bm!41290 (= call!41287 call!41284)))

(declare-fun b!627054 () Bool)

(assert (=> b!627054 (= e!380324 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))

(declare-fun b!627055 () Bool)

(assert (=> b!627055 (= e!380325 e!380331)))

(declare-fun lt!266883 () Int)

(assert (=> b!627055 (= c!115230 (< lt!266883 (- 1)))))

(declare-fun b!627056 () Bool)

(assert (=> b!627056 (= e!380327 call!41290)))

(declare-fun bm!41291 () Bool)

(assert (=> bm!41291 (= call!41295 (<>!38 (ite c!115230 (ite (or c!115229 c!115232) (left!5111 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) call!41282) (ite c!115233 lt!266880 (right!5441 (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))) (ite c!115230 (ite c!115229 call!41286 (ite c!115232 call!41282 lt!266882)) (ite c!115233 (right!5441 (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) (right!5441 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))))

(declare-fun d!219363 () Bool)

(assert (=> d!219363 e!380326))

(declare-fun res!271908 () Bool)

(assert (=> d!219363 (=> (not res!271908) (not e!380326))))

(assert (=> d!219363 (= res!271908 (appendAssocInst!111 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))

(assert (=> d!219363 (= lt!266881 e!380324)))

(declare-fun c!115226 () Bool)

(assert (=> d!219363 (= c!115226 (= (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) Empty!2075))))

(assert (=> d!219363 e!380332))

(declare-fun res!271905 () Bool)

(assert (=> d!219363 (=> (not res!271905) (not e!380332))))

(assert (=> d!219363 (= res!271905 (isBalanced!551 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))))

(assert (=> d!219363 (= (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) lt!266881)))

(declare-fun b!627044 () Bool)

(assert (=> b!627044 (= c!115228 (and (<= (- 1) lt!266883) (<= lt!266883 1)))))

(assert (=> b!627044 (= lt!266883 (- (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))))))))

(assert (=> b!627044 (= e!380333 e!380325)))

(assert (= (and d!219363 res!271905) b!627038))

(assert (= (and d!219363 c!115226) b!627054))

(assert (= (and d!219363 (not c!115226)) b!627049))

(assert (= (and b!627049 c!115231) b!627053))

(assert (= (and b!627049 (not c!115231)) b!627044))

(assert (= (and b!627044 c!115228) b!627043))

(assert (= (and b!627044 (not c!115228)) b!627055))

(assert (= (and b!627055 c!115230) b!627041))

(assert (= (and b!627055 (not c!115230)) b!627042))

(assert (= (and b!627041 c!115229) b!627051))

(assert (= (and b!627041 (not c!115229)) b!627047))

(assert (= (and b!627047 c!115232) b!627039))

(assert (= (and b!627047 (not c!115232)) b!627037))

(assert (= (or b!627039 b!627037) bm!41281))

(assert (= (or b!627039 b!627037) bm!41277))

(assert (= (or b!627051 b!627047) bm!41282))

(assert (= (or b!627051 bm!41277) bm!41288))

(assert (= (and b!627042 c!115227) b!627050))

(assert (= (and b!627042 (not c!115227)) b!627048))

(assert (= (and b!627048 c!115233) b!627056))

(assert (= (and b!627048 (not c!115233)) b!627045))

(assert (= (or b!627056 b!627045) bm!41283))

(assert (= (or b!627056 b!627045) bm!41289))

(assert (= (or b!627050 b!627048) bm!41284))

(assert (= (or b!627050 bm!41289) bm!41276))

(assert (= (or b!627047 b!627048) bm!41286))

(assert (= (or bm!41282 bm!41284) bm!41278))

(assert (= (or b!627047 b!627042) bm!41285))

(assert (= (or bm!41281 bm!41276) bm!41290))

(assert (= (or b!627041 b!627048) bm!41280))

(assert (= (or b!627041 b!627042) bm!41279))

(assert (= (or bm!41288 bm!41283) bm!41291))

(assert (= (or b!627043 bm!41290) bm!41287))

(assert (= (and d!219363 res!271908) b!627052))

(assert (= (and b!627052 res!271907) b!627036))

(assert (= (and b!627036 res!271904) b!627046))

(assert (= (and b!627046 res!271906) b!627040))

(declare-fun m!895163 () Bool)

(assert (=> bm!41286 m!895163))

(declare-fun m!895165 () Bool)

(assert (=> bm!41285 m!895165))

(declare-fun m!895167 () Bool)

(assert (=> b!627046 m!895167))

(assert (=> b!627046 m!894409))

(assert (=> b!627046 m!894411))

(assert (=> b!627046 m!894409))

(assert (=> b!627046 m!894411))

(assert (=> b!627046 m!894413))

(declare-fun m!895169 () Bool)

(assert (=> b!627040 m!895169))

(declare-fun m!895171 () Bool)

(assert (=> b!627040 m!895171))

(declare-fun m!895173 () Bool)

(assert (=> b!627040 m!895173))

(assert (=> b!627040 m!895171))

(assert (=> b!627040 m!895173))

(declare-fun m!895175 () Bool)

(assert (=> b!627040 m!895175))

(declare-fun m!895177 () Bool)

(assert (=> bm!41278 m!895177))

(assert (=> b!627044 m!894411))

(assert (=> b!627044 m!894409))

(assert (=> b!627036 m!895167))

(assert (=> b!627036 m!894409))

(assert (=> b!627036 m!894411))

(assert (=> b!627036 m!894409))

(assert (=> b!627036 m!894411))

(assert (=> b!627036 m!894413))

(declare-fun m!895179 () Bool)

(assert (=> b!627052 m!895179))

(declare-fun m!895181 () Bool)

(assert (=> bm!41291 m!895181))

(declare-fun m!895183 () Bool)

(assert (=> b!627038 m!895183))

(declare-fun m!895185 () Bool)

(assert (=> bm!41280 m!895185))

(assert (=> d!219363 m!894405))

(declare-fun m!895187 () Bool)

(assert (=> d!219363 m!895187))

(declare-fun m!895189 () Bool)

(assert (=> bm!41279 m!895189))

(declare-fun m!895191 () Bool)

(assert (=> bm!41287 m!895191))

(assert (=> b!626351 d!219363))

(declare-fun d!219365 () Bool)

(assert (=> d!219365 (= (height!262 (c!114995 (charsOf!902 separatorToken!136))) (ite ((_ is Empty!2075) (c!114995 (charsOf!902 separatorToken!136))) 0 (ite ((_ is Leaf!3242) (c!114995 (charsOf!902 separatorToken!136))) 1 (cheight!2286 (c!114995 (charsOf!902 separatorToken!136))))))))

(assert (=> b!626458 d!219365))

(declare-fun d!219367 () Bool)

(assert (=> d!219367 (= (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (ite ((_ is Empty!2075) (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) 0 (ite ((_ is Leaf!3242) (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) 1 (cheight!2286 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))))))))

(assert (=> b!626458 d!219367))

(declare-fun d!219369 () Bool)

(assert (=> d!219369 (= (height!262 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))) (ite ((_ is Empty!2075) (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))) 0 (ite ((_ is Leaf!3242) (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))) 1 (cheight!2286 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))))))))

(assert (=> b!626458 d!219369))

(assert (=> b!626458 d!219269))

(declare-fun d!219371 () Bool)

(assert (=> d!219371 (= (max!0 (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (height!262 (c!114995 (charsOf!902 separatorToken!136)))) (ite (< (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852)))) (height!262 (c!114995 (charsOf!902 separatorToken!136)))) (height!262 (c!114995 (charsOf!902 separatorToken!136))) (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))))))))

(assert (=> b!626458 d!219371))

(declare-fun b!627069 () Bool)

(declare-fun e!380339 () Bool)

(declare-fun isEmpty!4586 (Conc!2075) Bool)

(assert (=> b!627069 (= e!380339 (not (isEmpty!4586 (right!5441 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))))

(declare-fun b!627070 () Bool)

(declare-fun res!271922 () Bool)

(assert (=> b!627070 (=> (not res!271922) (not e!380339))))

(assert (=> b!627070 (= res!271922 (isBalanced!551 (right!5441 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun b!627071 () Bool)

(declare-fun res!271924 () Bool)

(assert (=> b!627071 (=> (not res!271924) (not e!380339))))

(assert (=> b!627071 (= res!271924 (<= (- (height!262 (left!5111 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))) (height!262 (right!5441 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))) 1))))

(declare-fun b!627072 () Bool)

(declare-fun e!380338 () Bool)

(assert (=> b!627072 (= e!380338 e!380339)))

(declare-fun res!271921 () Bool)

(assert (=> b!627072 (=> (not res!271921) (not e!380339))))

(assert (=> b!627072 (= res!271921 (<= (- 1) (- (height!262 (left!5111 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))) (height!262 (right!5441 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))))

(declare-fun b!627073 () Bool)

(declare-fun res!271926 () Bool)

(assert (=> b!627073 (=> (not res!271926) (not e!380339))))

(assert (=> b!627073 (= res!271926 (isBalanced!551 (left!5111 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun d!219373 () Bool)

(declare-fun res!271923 () Bool)

(assert (=> d!219373 (=> res!271923 e!380338)))

(assert (=> d!219373 (= res!271923 (not ((_ is Node!2075) (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(assert (=> d!219373 (= (isBalanced!551 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) e!380338)))

(declare-fun b!627074 () Bool)

(declare-fun res!271925 () Bool)

(assert (=> b!627074 (=> (not res!271925) (not e!380339))))

(assert (=> b!627074 (= res!271925 (not (isEmpty!4586 (left!5111 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))))

(assert (= (and d!219373 (not res!271923)) b!627072))

(assert (= (and b!627072 res!271921) b!627071))

(assert (= (and b!627071 res!271924) b!627073))

(assert (= (and b!627073 res!271926) b!627070))

(assert (= (and b!627070 res!271922) b!627074))

(assert (= (and b!627074 res!271925) b!627069))

(declare-fun m!895193 () Bool)

(assert (=> b!627074 m!895193))

(declare-fun m!895195 () Bool)

(assert (=> b!627070 m!895195))

(declare-fun m!895197 () Bool)

(assert (=> b!627071 m!895197))

(declare-fun m!895199 () Bool)

(assert (=> b!627071 m!895199))

(declare-fun m!895201 () Bool)

(assert (=> b!627073 m!895201))

(assert (=> b!627072 m!895197))

(assert (=> b!627072 m!895199))

(declare-fun m!895203 () Bool)

(assert (=> b!627069 m!895203))

(assert (=> b!626349 d!219373))

(assert (=> b!626349 d!219363))

(declare-fun d!219375 () Bool)

(declare-fun c!115236 () Bool)

(assert (=> d!219375 (= c!115236 ((_ is Node!2075) (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136)))))))

(declare-fun e!380344 () Bool)

(assert (=> d!219375 (= (inv!8231 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136)))) e!380344)))

(declare-fun b!627081 () Bool)

(declare-fun inv!8237 (Conc!2075) Bool)

(assert (=> b!627081 (= e!380344 (inv!8237 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136)))))))

(declare-fun b!627082 () Bool)

(declare-fun e!380345 () Bool)

(assert (=> b!627082 (= e!380344 e!380345)))

(declare-fun res!271929 () Bool)

(assert (=> b!627082 (= res!271929 (not ((_ is Leaf!3242) (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136))))))))

(assert (=> b!627082 (=> res!271929 e!380345)))

(declare-fun b!627083 () Bool)

(declare-fun inv!8238 (Conc!2075) Bool)

(assert (=> b!627083 (= e!380345 (inv!8238 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136)))))))

(assert (= (and d!219375 c!115236) b!627081))

(assert (= (and d!219375 (not c!115236)) b!627082))

(assert (= (and b!627082 (not res!271929)) b!627083))

(declare-fun m!895205 () Bool)

(assert (=> b!627081 m!895205))

(declare-fun m!895207 () Bool)

(assert (=> b!627083 m!895207))

(assert (=> b!626292 d!219375))

(declare-fun d!219377 () Bool)

(declare-fun e!380347 () Bool)

(assert (=> d!219377 e!380347))

(declare-fun res!271930 () Bool)

(assert (=> d!219377 (=> (not res!271930) (not e!380347))))

(declare-fun lt!266884 () List!6450)

(assert (=> d!219377 (= res!271930 (= ((_ map implies) (content!1158 lt!266884) (content!1158 (t!82369 lt!266688))) ((as const (InoxSet Token!2358)) true)))))

(declare-fun e!380350 () List!6450)

(assert (=> d!219377 (= lt!266884 e!380350)))

(declare-fun c!115238 () Bool)

(assert (=> d!219377 (= c!115238 ((_ is Nil!6440) (t!82369 lt!266688)))))

(assert (=> d!219377 (= (drop!344 (t!82369 lt!266688) (- (+ 1 from!852) 1)) lt!266884)))

(declare-fun b!627084 () Bool)

(declare-fun e!380348 () List!6450)

(assert (=> b!627084 (= e!380348 (t!82369 lt!266688))))

(declare-fun b!627085 () Bool)

(declare-fun e!380346 () Int)

(assert (=> b!627085 (= e!380346 0)))

(declare-fun b!627086 () Bool)

(declare-fun e!380349 () Int)

(assert (=> b!627086 (= e!380347 (= (size!5040 lt!266884) e!380349))))

(declare-fun c!115239 () Bool)

(assert (=> b!627086 (= c!115239 (<= (- (+ 1 from!852) 1) 0))))

(declare-fun b!627087 () Bool)

(assert (=> b!627087 (= e!380349 e!380346)))

(declare-fun c!115240 () Bool)

(declare-fun call!41297 () Int)

(assert (=> b!627087 (= c!115240 (>= (- (+ 1 from!852) 1) call!41297))))

(declare-fun b!627088 () Bool)

(assert (=> b!627088 (= e!380350 e!380348)))

(declare-fun c!115237 () Bool)

(assert (=> b!627088 (= c!115237 (<= (- (+ 1 from!852) 1) 0))))

(declare-fun b!627089 () Bool)

(assert (=> b!627089 (= e!380348 (drop!344 (t!82369 (t!82369 lt!266688)) (- (- (+ 1 from!852) 1) 1)))))

(declare-fun b!627090 () Bool)

(assert (=> b!627090 (= e!380350 Nil!6440)))

(declare-fun b!627091 () Bool)

(assert (=> b!627091 (= e!380349 call!41297)))

(declare-fun bm!41292 () Bool)

(assert (=> bm!41292 (= call!41297 (size!5040 (t!82369 lt!266688)))))

(declare-fun b!627092 () Bool)

(assert (=> b!627092 (= e!380346 (- call!41297 (- (+ 1 from!852) 1)))))

(assert (= (and d!219377 c!115238) b!627090))

(assert (= (and d!219377 (not c!115238)) b!627088))

(assert (= (and b!627088 c!115237) b!627084))

(assert (= (and b!627088 (not c!115237)) b!627089))

(assert (= (and d!219377 res!271930) b!627086))

(assert (= (and b!627086 c!115239) b!627091))

(assert (= (and b!627086 (not c!115239)) b!627087))

(assert (= (and b!627087 c!115240) b!627085))

(assert (= (and b!627087 (not c!115240)) b!627092))

(assert (= (or b!627091 b!627087 b!627092) bm!41292))

(declare-fun m!895209 () Bool)

(assert (=> d!219377 m!895209))

(assert (=> d!219377 m!895113))

(declare-fun m!895211 () Bool)

(assert (=> b!627086 m!895211))

(declare-fun m!895213 () Bool)

(assert (=> b!627089 m!895213))

(assert (=> bm!41292 m!895115))

(assert (=> b!626475 d!219377))

(declare-fun d!219379 () Bool)

(assert (=> d!219379 (= (tail!859 (drop!344 lt!266688 from!852)) (t!82369 (drop!344 lt!266688 from!852)))))

(assert (=> d!219099 d!219379))

(assert (=> d!219099 d!219115))

(declare-fun d!219381 () Bool)

(declare-fun e!380352 () Bool)

(assert (=> d!219381 e!380352))

(declare-fun res!271931 () Bool)

(assert (=> d!219381 (=> (not res!271931) (not e!380352))))

(declare-fun lt!266885 () List!6450)

(assert (=> d!219381 (= res!271931 (= ((_ map implies) (content!1158 lt!266885) (content!1158 lt!266688)) ((as const (InoxSet Token!2358)) true)))))

(declare-fun e!380355 () List!6450)

(assert (=> d!219381 (= lt!266885 e!380355)))

(declare-fun c!115242 () Bool)

(assert (=> d!219381 (= c!115242 ((_ is Nil!6440) lt!266688))))

(assert (=> d!219381 (= (drop!344 lt!266688 (+ from!852 1)) lt!266885)))

(declare-fun b!627093 () Bool)

(declare-fun e!380353 () List!6450)

(assert (=> b!627093 (= e!380353 lt!266688)))

(declare-fun b!627094 () Bool)

(declare-fun e!380351 () Int)

(assert (=> b!627094 (= e!380351 0)))

(declare-fun b!627095 () Bool)

(declare-fun e!380354 () Int)

(assert (=> b!627095 (= e!380352 (= (size!5040 lt!266885) e!380354))))

(declare-fun c!115243 () Bool)

(assert (=> b!627095 (= c!115243 (<= (+ from!852 1) 0))))

(declare-fun b!627096 () Bool)

(assert (=> b!627096 (= e!380354 e!380351)))

(declare-fun c!115244 () Bool)

(declare-fun call!41298 () Int)

(assert (=> b!627096 (= c!115244 (>= (+ from!852 1) call!41298))))

(declare-fun b!627097 () Bool)

(assert (=> b!627097 (= e!380355 e!380353)))

(declare-fun c!115241 () Bool)

(assert (=> b!627097 (= c!115241 (<= (+ from!852 1) 0))))

(declare-fun b!627098 () Bool)

(assert (=> b!627098 (= e!380353 (drop!344 (t!82369 lt!266688) (- (+ from!852 1) 1)))))

(declare-fun b!627099 () Bool)

(assert (=> b!627099 (= e!380355 Nil!6440)))

(declare-fun b!627100 () Bool)

(assert (=> b!627100 (= e!380354 call!41298)))

(declare-fun bm!41293 () Bool)

(assert (=> bm!41293 (= call!41298 (size!5040 lt!266688))))

(declare-fun b!627101 () Bool)

(assert (=> b!627101 (= e!380351 (- call!41298 (+ from!852 1)))))

(assert (= (and d!219381 c!115242) b!627099))

(assert (= (and d!219381 (not c!115242)) b!627097))

(assert (= (and b!627097 c!115241) b!627093))

(assert (= (and b!627097 (not c!115241)) b!627098))

(assert (= (and d!219381 res!271931) b!627095))

(assert (= (and b!627095 c!115243) b!627100))

(assert (= (and b!627095 (not c!115243)) b!627096))

(assert (= (and b!627096 c!115244) b!627094))

(assert (= (and b!627096 (not c!115244)) b!627101))

(assert (= (or b!627100 b!627096 b!627101) bm!41293))

(declare-fun m!895215 () Bool)

(assert (=> d!219381 m!895215))

(assert (=> d!219381 m!894461))

(declare-fun m!895217 () Bool)

(assert (=> b!627095 m!895217))

(declare-fun m!895219 () Bool)

(assert (=> b!627098 m!895219))

(assert (=> bm!41293 m!894295))

(assert (=> d!219099 d!219381))

(declare-fun d!219383 () Bool)

(assert (=> d!219383 (= (tail!859 (drop!344 lt!266688 from!852)) (drop!344 lt!266688 (+ from!852 1)))))

(assert (=> d!219383 true))

(declare-fun _$28!394 () Unit!11520)

(assert (=> d!219383 (= (choose!4551 lt!266688 from!852) _$28!394)))

(declare-fun bs!72280 () Bool)

(assert (= bs!72280 d!219383))

(assert (=> bs!72280 m!894209))

(assert (=> bs!72280 m!894209))

(assert (=> bs!72280 m!894341))

(assert (=> bs!72280 m!894343))

(assert (=> d!219099 d!219383))

(declare-fun d!219385 () Bool)

(declare-fun lt!266888 () Int)

(assert (=> d!219385 (>= lt!266888 0)))

(declare-fun e!380358 () Int)

(assert (=> d!219385 (= lt!266888 e!380358)))

(declare-fun c!115247 () Bool)

(assert (=> d!219385 (= c!115247 ((_ is Nil!6438) (originalCharacters!1350 separatorToken!136)))))

(assert (=> d!219385 (= (size!5038 (originalCharacters!1350 separatorToken!136)) lt!266888)))

(declare-fun b!627106 () Bool)

(assert (=> b!627106 (= e!380358 0)))

(declare-fun b!627107 () Bool)

(assert (=> b!627107 (= e!380358 (+ 1 (size!5038 (t!82367 (originalCharacters!1350 separatorToken!136)))))))

(assert (= (and d!219385 c!115247) b!627106))

(assert (= (and d!219385 (not c!115247)) b!627107))

(declare-fun m!895221 () Bool)

(assert (=> b!627107 m!895221))

(assert (=> b!626287 d!219385))

(declare-fun d!219387 () Bool)

(assert (=> d!219387 (= (inv!8232 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852)))) (isBalanced!551 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852))))))))

(declare-fun bs!72281 () Bool)

(assert (= bs!72281 d!219387))

(declare-fun m!895223 () Bool)

(assert (=> bs!72281 m!895223))

(assert (=> tb!54421 d!219387))

(declare-fun lt!266889 () List!6448)

(declare-fun b!627111 () Bool)

(declare-fun e!380359 () Bool)

(assert (=> b!627111 (= e!380359 (or (not (= (list!2712 (charsOf!902 separatorToken!136)) Nil!6438)) (= lt!266889 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))))))))

(declare-fun b!627108 () Bool)

(declare-fun e!380360 () List!6448)

(assert (=> b!627108 (= e!380360 (list!2712 (charsOf!902 separatorToken!136)))))

(declare-fun b!627110 () Bool)

(declare-fun res!271933 () Bool)

(assert (=> b!627110 (=> (not res!271933) (not e!380359))))

(assert (=> b!627110 (= res!271933 (= (size!5038 lt!266889) (+ (size!5038 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852))))) (size!5038 (list!2712 (charsOf!902 separatorToken!136))))))))

(declare-fun d!219389 () Bool)

(assert (=> d!219389 e!380359))

(declare-fun res!271932 () Bool)

(assert (=> d!219389 (=> (not res!271932) (not e!380359))))

(assert (=> d!219389 (= res!271932 (= (content!1160 lt!266889) ((_ map or) (content!1160 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852))))) (content!1160 (list!2712 (charsOf!902 separatorToken!136))))))))

(assert (=> d!219389 (= lt!266889 e!380360)))

(declare-fun c!115248 () Bool)

(assert (=> d!219389 (= c!115248 ((_ is Nil!6438) (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852))))))))

(assert (=> d!219389 (= (++!1778 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))) (list!2712 (charsOf!902 separatorToken!136))) lt!266889)))

(declare-fun b!627109 () Bool)

(assert (=> b!627109 (= e!380360 (Cons!6438 (h!11839 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852))))) (++!1778 (t!82367 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852))))) (list!2712 (charsOf!902 separatorToken!136)))))))

(assert (= (and d!219389 c!115248) b!627108))

(assert (= (and d!219389 (not c!115248)) b!627109))

(assert (= (and d!219389 res!271932) b!627110))

(assert (= (and b!627110 res!271933) b!627111))

(declare-fun m!895225 () Bool)

(assert (=> b!627110 m!895225))

(assert (=> b!627110 m!894325))

(declare-fun m!895227 () Bool)

(assert (=> b!627110 m!895227))

(assert (=> b!627110 m!894327))

(assert (=> b!627110 m!895153))

(declare-fun m!895229 () Bool)

(assert (=> d!219389 m!895229))

(assert (=> d!219389 m!894325))

(declare-fun m!895231 () Bool)

(assert (=> d!219389 m!895231))

(assert (=> d!219389 m!894327))

(assert (=> d!219389 m!895159))

(assert (=> b!627109 m!894327))

(declare-fun m!895233 () Bool)

(assert (=> b!627109 m!895233))

(assert (=> b!626315 d!219389))

(assert (=> b!626315 d!219089))

(assert (=> b!626315 d!219353))

(declare-fun d!219391 () Bool)

(assert (=> d!219391 (= (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))) (list!2717 (c!114995 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852))))))))

(declare-fun bs!72282 () Bool)

(assert (= bs!72282 d!219391))

(declare-fun m!895235 () Bool)

(assert (=> bs!72282 m!895235))

(assert (=> b!626315 d!219391))

(declare-fun d!219393 () Bool)

(declare-fun c!115249 () Bool)

(assert (=> d!219393 (= c!115249 ((_ is Cons!6440) (t!82369 (dropList!262 v!6361 from!852))))))

(declare-fun e!380361 () List!6448)

(assert (=> d!219393 (= (printWithSeparatorTokenList!4 thiss!14007 (t!82369 (dropList!262 v!6361 from!852)) separatorToken!136) e!380361)))

(declare-fun b!627112 () Bool)

(assert (=> b!627112 (= e!380361 (++!1778 (++!1778 (list!2712 (charsOf!902 (h!11841 (t!82369 (dropList!262 v!6361 from!852))))) (list!2712 (charsOf!902 separatorToken!136))) (printWithSeparatorTokenList!4 thiss!14007 (t!82369 (t!82369 (dropList!262 v!6361 from!852))) separatorToken!136)))))

(declare-fun b!627113 () Bool)

(assert (=> b!627113 (= e!380361 Nil!6438)))

(assert (= (and d!219393 c!115249) b!627112))

(assert (= (and d!219393 (not c!115249)) b!627113))

(declare-fun m!895237 () Bool)

(assert (=> b!627112 m!895237))

(assert (=> b!627112 m!894327))

(declare-fun m!895239 () Bool)

(assert (=> b!627112 m!895239))

(assert (=> b!627112 m!894211))

(declare-fun m!895241 () Bool)

(assert (=> b!627112 m!895241))

(assert (=> b!627112 m!895239))

(assert (=> b!627112 m!895241))

(declare-fun m!895243 () Bool)

(assert (=> b!627112 m!895243))

(declare-fun m!895245 () Bool)

(assert (=> b!627112 m!895245))

(assert (=> b!627112 m!894211))

(assert (=> b!627112 m!894327))

(assert (=> b!627112 m!895245))

(assert (=> b!627112 m!895237))

(assert (=> b!626315 d!219393))

(declare-fun d!219395 () Bool)

(declare-fun lt!266890 () BalanceConc!4158)

(assert (=> d!219395 (= (list!2712 lt!266890) (originalCharacters!1350 (h!11841 (dropList!262 v!6361 from!852))))))

(assert (=> d!219395 (= lt!266890 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (h!11841 (dropList!262 v!6361 from!852))))) (value!42398 (h!11841 (dropList!262 v!6361 from!852)))))))

(assert (=> d!219395 (= (charsOf!902 (h!11841 (dropList!262 v!6361 from!852))) lt!266890)))

(declare-fun b_lambda!24717 () Bool)

(assert (=> (not b_lambda!24717) (not d!219395)))

(declare-fun tb!54427 () Bool)

(declare-fun t!82394 () Bool)

(assert (=> (and b!626212 (= (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (toChars!2105 (transformation!1317 (rule!2113 (h!11841 (dropList!262 v!6361 from!852)))))) t!82394) tb!54427))

(declare-fun b!627114 () Bool)

(declare-fun tp!195794 () Bool)

(declare-fun e!380362 () Bool)

(assert (=> b!627114 (= e!380362 (and (inv!8231 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (h!11841 (dropList!262 v!6361 from!852))))) (value!42398 (h!11841 (dropList!262 v!6361 from!852)))))) tp!195794))))

(declare-fun result!61486 () Bool)

(assert (=> tb!54427 (= result!61486 (and (inv!8232 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (h!11841 (dropList!262 v!6361 from!852))))) (value!42398 (h!11841 (dropList!262 v!6361 from!852))))) e!380362))))

(assert (= tb!54427 b!627114))

(declare-fun m!895247 () Bool)

(assert (=> b!627114 m!895247))

(declare-fun m!895249 () Bool)

(assert (=> tb!54427 m!895249))

(assert (=> d!219395 t!82394))

(declare-fun b_and!62151 () Bool)

(assert (= b_and!62145 (and (=> t!82394 result!61486) b_and!62151)))

(declare-fun m!895251 () Bool)

(assert (=> d!219395 m!895251))

(declare-fun m!895253 () Bool)

(assert (=> d!219395 m!895253))

(assert (=> b!626315 d!219395))

(declare-fun e!380363 () Bool)

(declare-fun b!627118 () Bool)

(declare-fun lt!266891 () List!6448)

(assert (=> b!627118 (= e!380363 (or (not (= (printWithSeparatorTokenList!4 thiss!14007 (t!82369 (dropList!262 v!6361 from!852)) separatorToken!136) Nil!6438)) (= lt!266891 (++!1778 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))) (list!2712 (charsOf!902 separatorToken!136))))))))

(declare-fun b!627115 () Bool)

(declare-fun e!380364 () List!6448)

(assert (=> b!627115 (= e!380364 (printWithSeparatorTokenList!4 thiss!14007 (t!82369 (dropList!262 v!6361 from!852)) separatorToken!136))))

(declare-fun b!627117 () Bool)

(declare-fun res!271935 () Bool)

(assert (=> b!627117 (=> (not res!271935) (not e!380363))))

(assert (=> b!627117 (= res!271935 (= (size!5038 lt!266891) (+ (size!5038 (++!1778 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))) (list!2712 (charsOf!902 separatorToken!136)))) (size!5038 (printWithSeparatorTokenList!4 thiss!14007 (t!82369 (dropList!262 v!6361 from!852)) separatorToken!136)))))))

(declare-fun d!219397 () Bool)

(assert (=> d!219397 e!380363))

(declare-fun res!271934 () Bool)

(assert (=> d!219397 (=> (not res!271934) (not e!380363))))

(assert (=> d!219397 (= res!271934 (= (content!1160 lt!266891) ((_ map or) (content!1160 (++!1778 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))) (list!2712 (charsOf!902 separatorToken!136)))) (content!1160 (printWithSeparatorTokenList!4 thiss!14007 (t!82369 (dropList!262 v!6361 from!852)) separatorToken!136)))))))

(assert (=> d!219397 (= lt!266891 e!380364)))

(declare-fun c!115250 () Bool)

(assert (=> d!219397 (= c!115250 ((_ is Nil!6438) (++!1778 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))) (list!2712 (charsOf!902 separatorToken!136)))))))

(assert (=> d!219397 (= (++!1778 (++!1778 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))) (list!2712 (charsOf!902 separatorToken!136))) (printWithSeparatorTokenList!4 thiss!14007 (t!82369 (dropList!262 v!6361 from!852)) separatorToken!136)) lt!266891)))

(declare-fun b!627116 () Bool)

(assert (=> b!627116 (= e!380364 (Cons!6438 (h!11839 (++!1778 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))) (list!2712 (charsOf!902 separatorToken!136)))) (++!1778 (t!82367 (++!1778 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 from!852)))) (list!2712 (charsOf!902 separatorToken!136)))) (printWithSeparatorTokenList!4 thiss!14007 (t!82369 (dropList!262 v!6361 from!852)) separatorToken!136))))))

(assert (= (and d!219397 c!115250) b!627115))

(assert (= (and d!219397 (not c!115250)) b!627116))

(assert (= (and d!219397 res!271934) b!627117))

(assert (= (and b!627117 res!271935) b!627118))

(declare-fun m!895255 () Bool)

(assert (=> b!627117 m!895255))

(assert (=> b!627117 m!894329))

(declare-fun m!895257 () Bool)

(assert (=> b!627117 m!895257))

(assert (=> b!627117 m!894331))

(declare-fun m!895259 () Bool)

(assert (=> b!627117 m!895259))

(declare-fun m!895261 () Bool)

(assert (=> d!219397 m!895261))

(assert (=> d!219397 m!894329))

(declare-fun m!895263 () Bool)

(assert (=> d!219397 m!895263))

(assert (=> d!219397 m!894331))

(declare-fun m!895265 () Bool)

(assert (=> d!219397 m!895265))

(assert (=> b!627116 m!894331))

(declare-fun m!895267 () Bool)

(assert (=> b!627116 m!895267))

(assert (=> b!626315 d!219397))

(declare-fun d!219399 () Bool)

(declare-fun charsToBigInt!0 (List!6449 Int) Int)

(assert (=> d!219399 (= (inv!15 (value!42398 separatorToken!136)) (= (charsToBigInt!0 (text!9836 (value!42398 separatorToken!136)) 0) (value!42393 (value!42398 separatorToken!136))))))

(declare-fun bs!72283 () Bool)

(assert (= bs!72283 d!219399))

(declare-fun m!895269 () Bool)

(assert (=> bs!72283 m!895269))

(assert (=> b!626275 d!219399))

(assert (=> b!626447 d!219163))

(declare-fun d!219401 () Bool)

(assert (=> d!219401 (= (list!2712 lt!266702) (list!2717 (c!114995 lt!266702)))))

(declare-fun bs!72284 () Bool)

(assert (= bs!72284 d!219401))

(declare-fun m!895271 () Bool)

(assert (=> bs!72284 m!895271))

(assert (=> d!219089 d!219401))

(declare-fun d!219403 () Bool)

(declare-fun charsToInt!0 (List!6449) (_ BitVec 32))

(assert (=> d!219403 (= (inv!16 (value!42398 separatorToken!136)) (= (charsToInt!0 (text!9834 (value!42398 separatorToken!136))) (value!42389 (value!42398 separatorToken!136))))))

(declare-fun bs!72285 () Bool)

(assert (= bs!72285 d!219403))

(declare-fun m!895273 () Bool)

(assert (=> bs!72285 m!895273))

(assert (=> b!626272 d!219403))

(assert (=> b!626467 d!219331))

(declare-fun d!219405 () Bool)

(assert (=> d!219405 true))

(declare-fun lambda!16359 () Int)

(declare-fun order!4981 () Int)

(declare-fun order!4979 () Int)

(declare-fun dynLambda!3637 (Int Int) Int)

(declare-fun dynLambda!3638 (Int Int) Int)

(assert (=> d!219405 (< (dynLambda!3637 order!4979 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136)))) (dynLambda!3638 order!4981 lambda!16359))))

(assert (=> d!219405 true))

(declare-fun order!4983 () Int)

(declare-fun dynLambda!3639 (Int Int) Int)

(assert (=> d!219405 (< (dynLambda!3639 order!4983 (toValue!2246 (transformation!1317 (rule!2113 separatorToken!136)))) (dynLambda!3638 order!4981 lambda!16359))))

(declare-fun Forall!318 (Int) Bool)

(assert (=> d!219405 (= (semiInverseModEq!528 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (toValue!2246 (transformation!1317 (rule!2113 separatorToken!136)))) (Forall!318 lambda!16359))))

(declare-fun bs!72291 () Bool)

(assert (= bs!72291 d!219405))

(declare-fun m!895363 () Bool)

(assert (=> bs!72291 m!895363))

(assert (=> d!219161 d!219405))

(declare-fun d!219427 () Bool)

(assert (=> d!219427 (= (head!1331 (drop!344 lt!266688 from!852)) (h!11841 (drop!344 lt!266688 from!852)))))

(assert (=> d!219091 d!219427))

(assert (=> d!219091 d!219115))

(assert (=> d!219091 d!219145))

(declare-fun d!219429 () Bool)

(assert (=> d!219429 (= (head!1331 (drop!344 lt!266688 from!852)) (apply!1537 lt!266688 from!852))))

(assert (=> d!219429 true))

(declare-fun _$27!626 () Unit!11520)

(assert (=> d!219429 (= (choose!4550 lt!266688 from!852) _$27!626)))

(declare-fun bs!72292 () Bool)

(assert (= bs!72292 d!219429))

(assert (=> bs!72292 m!894209))

(assert (=> bs!72292 m!894209))

(assert (=> bs!72292 m!894291))

(assert (=> bs!72292 m!894207))

(assert (=> d!219091 d!219429))

(declare-fun d!219431 () Bool)

(assert (=> d!219431 (= (list!2712 lt!266783) (list!2717 (c!114995 lt!266783)))))

(declare-fun bs!72293 () Bool)

(assert (= bs!72293 d!219431))

(declare-fun m!895365 () Bool)

(assert (=> bs!72293 m!895365))

(assert (=> d!219153 d!219431))

(declare-fun d!219433 () Bool)

(declare-fun e!380427 () Bool)

(assert (=> d!219433 e!380427))

(declare-fun res!271969 () Bool)

(assert (=> d!219433 (=> (not res!271969) (not e!380427))))

(declare-fun lt!266892 () List!6450)

(assert (=> d!219433 (= res!271969 (= ((_ map implies) (content!1158 lt!266892) (content!1158 (t!82369 lt!266688))) ((as const (InoxSet Token!2358)) true)))))

(declare-fun e!380430 () List!6450)

(assert (=> d!219433 (= lt!266892 e!380430)))

(declare-fun c!115256 () Bool)

(assert (=> d!219433 (= c!115256 ((_ is Nil!6440) (t!82369 lt!266688)))))

(assert (=> d!219433 (= (drop!344 (t!82369 lt!266688) (- from!852 1)) lt!266892)))

(declare-fun b!627225 () Bool)

(declare-fun e!380428 () List!6450)

(assert (=> b!627225 (= e!380428 (t!82369 lt!266688))))

(declare-fun b!627226 () Bool)

(declare-fun e!380426 () Int)

(assert (=> b!627226 (= e!380426 0)))

(declare-fun b!627227 () Bool)

(declare-fun e!380429 () Int)

(assert (=> b!627227 (= e!380427 (= (size!5040 lt!266892) e!380429))))

(declare-fun c!115257 () Bool)

(assert (=> b!627227 (= c!115257 (<= (- from!852 1) 0))))

(declare-fun b!627228 () Bool)

(assert (=> b!627228 (= e!380429 e!380426)))

(declare-fun c!115258 () Bool)

(declare-fun call!41299 () Int)

(assert (=> b!627228 (= c!115258 (>= (- from!852 1) call!41299))))

(declare-fun b!627229 () Bool)

(assert (=> b!627229 (= e!380430 e!380428)))

(declare-fun c!115255 () Bool)

(assert (=> b!627229 (= c!115255 (<= (- from!852 1) 0))))

(declare-fun b!627230 () Bool)

(assert (=> b!627230 (= e!380428 (drop!344 (t!82369 (t!82369 lt!266688)) (- (- from!852 1) 1)))))

(declare-fun b!627231 () Bool)

(assert (=> b!627231 (= e!380430 Nil!6440)))

(declare-fun b!627232 () Bool)

(assert (=> b!627232 (= e!380429 call!41299)))

(declare-fun bm!41294 () Bool)

(assert (=> bm!41294 (= call!41299 (size!5040 (t!82369 lt!266688)))))

(declare-fun b!627233 () Bool)

(assert (=> b!627233 (= e!380426 (- call!41299 (- from!852 1)))))

(assert (= (and d!219433 c!115256) b!627231))

(assert (= (and d!219433 (not c!115256)) b!627229))

(assert (= (and b!627229 c!115255) b!627225))

(assert (= (and b!627229 (not c!115255)) b!627230))

(assert (= (and d!219433 res!271969) b!627227))

(assert (= (and b!627227 c!115257) b!627232))

(assert (= (and b!627227 (not c!115257)) b!627228))

(assert (= (and b!627228 c!115258) b!627226))

(assert (= (and b!627228 (not c!115258)) b!627233))

(assert (= (or b!627232 b!627228 b!627233) bm!41294))

(declare-fun m!895367 () Bool)

(assert (=> d!219433 m!895367))

(assert (=> d!219433 m!895113))

(declare-fun m!895369 () Bool)

(assert (=> b!627227 m!895369))

(declare-fun m!895371 () Bool)

(assert (=> b!627230 m!895371))

(assert (=> bm!41294 m!895115))

(assert (=> b!626406 d!219433))

(declare-fun d!219435 () Bool)

(assert (=> d!219435 (= (list!2712 lt!266771) (list!2717 (c!114995 lt!266771)))))

(declare-fun bs!72294 () Bool)

(assert (= bs!72294 d!219435))

(declare-fun m!895373 () Bool)

(assert (=> bs!72294 m!895373))

(assert (=> d!219139 d!219435))

(declare-fun d!219437 () Bool)

(declare-fun c!115259 () Bool)

(assert (=> d!219437 (= c!115259 ((_ is Cons!6440) (dropList!262 v!6361 (+ 1 from!852))))))

(declare-fun e!380431 () List!6448)

(assert (=> d!219437 (= (printWithSeparatorTokenList!4 thiss!14007 (dropList!262 v!6361 (+ 1 from!852)) separatorToken!136) e!380431)))

(declare-fun b!627234 () Bool)

(assert (=> b!627234 (= e!380431 (++!1778 (++!1778 (list!2712 (charsOf!902 (h!11841 (dropList!262 v!6361 (+ 1 from!852))))) (list!2712 (charsOf!902 separatorToken!136))) (printWithSeparatorTokenList!4 thiss!14007 (t!82369 (dropList!262 v!6361 (+ 1 from!852))) separatorToken!136)))))

(declare-fun b!627235 () Bool)

(assert (=> b!627235 (= e!380431 Nil!6438)))

(assert (= (and d!219437 c!115259) b!627234))

(assert (= (and d!219437 (not c!115259)) b!627235))

(declare-fun m!895375 () Bool)

(assert (=> b!627234 m!895375))

(assert (=> b!627234 m!894327))

(declare-fun m!895377 () Bool)

(assert (=> b!627234 m!895377))

(assert (=> b!627234 m!894211))

(declare-fun m!895379 () Bool)

(assert (=> b!627234 m!895379))

(assert (=> b!627234 m!895377))

(assert (=> b!627234 m!895379))

(declare-fun m!895381 () Bool)

(assert (=> b!627234 m!895381))

(declare-fun m!895383 () Bool)

(assert (=> b!627234 m!895383))

(assert (=> b!627234 m!894211))

(assert (=> b!627234 m!894327))

(assert (=> b!627234 m!895383))

(assert (=> b!627234 m!895375))

(assert (=> d!219139 d!219437))

(declare-fun d!219439 () Bool)

(assert (=> d!219439 (= (dropList!262 v!6361 (+ 1 from!852)) (drop!344 (list!2716 (c!114997 v!6361)) (+ 1 from!852)))))

(declare-fun bs!72295 () Bool)

(assert (= bs!72295 d!219439))

(assert (=> bs!72295 m!894541))

(assert (=> bs!72295 m!894541))

(declare-fun m!895385 () Bool)

(assert (=> bs!72295 m!895385))

(assert (=> d!219139 d!219439))

(assert (=> d!219139 d!219163))

(declare-fun d!219441 () Bool)

(assert (=> d!219441 (= (inv!8236 (xs!4713 (c!114997 v!6361))) (<= (size!5040 (innerList!2134 (xs!4713 (c!114997 v!6361)))) 2147483647))))

(declare-fun bs!72296 () Bool)

(assert (= bs!72296 d!219441))

(declare-fun m!895387 () Bool)

(assert (=> bs!72296 m!895387))

(assert (=> b!626506 d!219441))

(declare-fun d!219443 () Bool)

(declare-fun lt!266893 () Int)

(assert (=> d!219443 (>= lt!266893 0)))

(declare-fun e!380432 () Int)

(assert (=> d!219443 (= lt!266893 e!380432)))

(declare-fun c!115260 () Bool)

(assert (=> d!219443 (= c!115260 ((_ is Nil!6440) lt!266750))))

(assert (=> d!219443 (= (size!5040 lt!266750) lt!266893)))

(declare-fun b!627236 () Bool)

(assert (=> b!627236 (= e!380432 0)))

(declare-fun b!627237 () Bool)

(assert (=> b!627237 (= e!380432 (+ 1 (size!5040 (t!82369 lt!266750))))))

(assert (= (and d!219443 c!115260) b!627236))

(assert (= (and d!219443 (not c!115260)) b!627237))

(declare-fun m!895389 () Bool)

(assert (=> b!627237 m!895389))

(assert (=> b!626403 d!219443))

(declare-fun d!219445 () Bool)

(declare-fun c!115261 () Bool)

(assert (=> d!219445 (= c!115261 ((_ is Node!2076) (left!5112 (c!114997 v!6361))))))

(declare-fun e!380433 () Bool)

(assert (=> d!219445 (= (inv!8223 (left!5112 (c!114997 v!6361))) e!380433)))

(declare-fun b!627238 () Bool)

(assert (=> b!627238 (= e!380433 (inv!8234 (left!5112 (c!114997 v!6361))))))

(declare-fun b!627239 () Bool)

(declare-fun e!380434 () Bool)

(assert (=> b!627239 (= e!380433 e!380434)))

(declare-fun res!271970 () Bool)

(assert (=> b!627239 (= res!271970 (not ((_ is Leaf!3243) (left!5112 (c!114997 v!6361)))))))

(assert (=> b!627239 (=> res!271970 e!380434)))

(declare-fun b!627240 () Bool)

(assert (=> b!627240 (= e!380434 (inv!8235 (left!5112 (c!114997 v!6361))))))

(assert (= (and d!219445 c!115261) b!627238))

(assert (= (and d!219445 (not c!115261)) b!627239))

(assert (= (and b!627239 (not res!271970)) b!627240))

(declare-fun m!895391 () Bool)

(assert (=> b!627238 m!895391))

(declare-fun m!895393 () Bool)

(assert (=> b!627240 m!895393))

(assert (=> b!626505 d!219445))

(declare-fun d!219447 () Bool)

(declare-fun c!115262 () Bool)

(assert (=> d!219447 (= c!115262 ((_ is Node!2076) (right!5442 (c!114997 v!6361))))))

(declare-fun e!380435 () Bool)

(assert (=> d!219447 (= (inv!8223 (right!5442 (c!114997 v!6361))) e!380435)))

(declare-fun b!627241 () Bool)

(assert (=> b!627241 (= e!380435 (inv!8234 (right!5442 (c!114997 v!6361))))))

(declare-fun b!627242 () Bool)

(declare-fun e!380436 () Bool)

(assert (=> b!627242 (= e!380435 e!380436)))

(declare-fun res!271971 () Bool)

(assert (=> b!627242 (= res!271971 (not ((_ is Leaf!3243) (right!5442 (c!114997 v!6361)))))))

(assert (=> b!627242 (=> res!271971 e!380436)))

(declare-fun b!627243 () Bool)

(assert (=> b!627243 (= e!380436 (inv!8235 (right!5442 (c!114997 v!6361))))))

(assert (= (and d!219447 c!115262) b!627241))

(assert (= (and d!219447 (not c!115262)) b!627242))

(assert (= (and b!627242 (not res!271971)) b!627243))

(declare-fun m!895395 () Bool)

(assert (=> b!627241 m!895395))

(declare-fun m!895397 () Bool)

(assert (=> b!627243 m!895397))

(assert (=> b!626505 d!219447))

(declare-fun d!219449 () Bool)

(assert (=> d!219449 true))

(declare-fun lambda!16362 () Int)

(declare-fun order!4985 () Int)

(declare-fun dynLambda!3640 (Int Int) Int)

(assert (=> d!219449 (< (dynLambda!3639 order!4983 (toValue!2246 (transformation!1317 (rule!2113 separatorToken!136)))) (dynLambda!3640 order!4985 lambda!16362))))

(declare-fun Forall2!244 (Int) Bool)

(assert (=> d!219449 (= (equivClasses!511 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (toValue!2246 (transformation!1317 (rule!2113 separatorToken!136)))) (Forall2!244 lambda!16362))))

(declare-fun bs!72297 () Bool)

(assert (= bs!72297 d!219449))

(declare-fun m!895399 () Bool)

(assert (=> bs!72297 m!895399))

(assert (=> b!626491 d!219449))

(declare-fun d!219451 () Bool)

(assert (=> d!219451 (= (list!2712 lt!266742) (list!2717 (c!114995 lt!266742)))))

(declare-fun bs!72298 () Bool)

(assert (= bs!72298 d!219451))

(declare-fun m!895401 () Bool)

(assert (=> bs!72298 m!895401))

(assert (=> b!626352 d!219451))

(declare-fun e!380439 () Bool)

(declare-fun lt!266894 () List!6448)

(declare-fun b!627251 () Bool)

(assert (=> b!627251 (= e!380439 (or (not (= (list!2712 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))) Nil!6438)) (= lt!266894 (list!2712 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))))))))

(declare-fun e!380440 () List!6448)

(declare-fun b!627248 () Bool)

(assert (=> b!627248 (= e!380440 (list!2712 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))

(declare-fun b!627250 () Bool)

(declare-fun res!271975 () Bool)

(assert (=> b!627250 (=> (not res!271975) (not e!380439))))

(assert (=> b!627250 (= res!271975 (= (size!5038 lt!266894) (+ (size!5038 (list!2712 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (size!5038 (list!2712 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun d!219453 () Bool)

(assert (=> d!219453 e!380439))

(declare-fun res!271974 () Bool)

(assert (=> d!219453 (=> (not res!271974) (not e!380439))))

(assert (=> d!219453 (= res!271974 (= (content!1160 lt!266894) ((_ map or) (content!1160 (list!2712 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (content!1160 (list!2712 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(assert (=> d!219453 (= lt!266894 e!380440)))

(declare-fun c!115263 () Bool)

(assert (=> d!219453 (= c!115263 ((_ is Nil!6438) (list!2712 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))))

(assert (=> d!219453 (= (++!1778 (list!2712 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (list!2712 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) lt!266894)))

(declare-fun b!627249 () Bool)

(assert (=> b!627249 (= e!380440 (Cons!6438 (h!11839 (list!2712 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (++!1778 (t!82367 (list!2712 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (list!2712 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(assert (= (and d!219453 c!115263) b!627248))

(assert (= (and d!219453 (not c!115263)) b!627249))

(assert (= (and d!219453 res!271974) b!627250))

(assert (= (and b!627250 res!271975) b!627251))

(declare-fun m!895403 () Bool)

(assert (=> b!627250 m!895403))

(assert (=> b!627250 m!894419))

(declare-fun m!895405 () Bool)

(assert (=> b!627250 m!895405))

(assert (=> b!627250 m!894421))

(declare-fun m!895407 () Bool)

(assert (=> b!627250 m!895407))

(declare-fun m!895409 () Bool)

(assert (=> d!219453 m!895409))

(assert (=> d!219453 m!894419))

(declare-fun m!895411 () Bool)

(assert (=> d!219453 m!895411))

(assert (=> d!219453 m!894421))

(declare-fun m!895413 () Bool)

(assert (=> d!219453 m!895413))

(assert (=> b!627249 m!894421))

(declare-fun m!895415 () Bool)

(assert (=> b!627249 m!895415))

(assert (=> b!626352 d!219453))

(declare-fun d!219455 () Bool)

(assert (=> d!219455 (= (list!2712 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (list!2717 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))))

(declare-fun bs!72299 () Bool)

(assert (= bs!72299 d!219455))

(assert (=> bs!72299 m!895171))

(assert (=> b!626352 d!219455))

(declare-fun d!219457 () Bool)

(assert (=> d!219457 (= (list!2712 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))) (list!2717 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))

(declare-fun bs!72300 () Bool)

(assert (= bs!72300 d!219457))

(assert (=> bs!72300 m!895173))

(assert (=> b!626352 d!219457))

(declare-fun b!627252 () Bool)

(declare-fun e!380446 () Bool)

(declare-fun e!380447 () Bool)

(assert (=> b!627252 (= e!380446 e!380447)))

(declare-fun res!271982 () Bool)

(assert (=> b!627252 (=> (not res!271982) (not e!380447))))

(assert (=> b!627252 (= res!271982 (appendAssoc!31 (list!2717 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (list!2717 (left!5111 (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))) (list!2717 (right!5441 (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))))

(declare-fun b!627253 () Bool)

(declare-fun e!380443 () Bool)

(declare-fun e!380442 () Bool)

(assert (=> b!627253 (= e!380443 e!380442)))

(declare-fun res!271977 () Bool)

(assert (=> b!627253 (=> (not res!271977) (not e!380442))))

(assert (=> b!627253 (= res!271977 (appendAssoc!31 (list!2717 (left!5111 (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))) (list!2717 (right!5441 (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))) (list!2717 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(declare-fun b!627254 () Bool)

(declare-fun e!380444 () Bool)

(assert (=> b!627254 (= e!380444 e!380443)))

(declare-fun res!271980 () Bool)

(assert (=> b!627254 (=> res!271980 e!380443)))

(assert (=> b!627254 (= res!271980 (not ((_ is Node!2075) (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))))))

(declare-fun b!627255 () Bool)

(declare-fun e!380448 () Bool)

(assert (=> b!627255 (= e!380448 e!380444)))

(declare-fun res!271983 () Bool)

(assert (=> b!627255 (=> (not res!271983) (not e!380444))))

(assert (=> b!627255 (= res!271983 (appendAssoc!31 (list!2717 (left!5111 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))))) (list!2717 (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))))) (list!2717 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(declare-fun b!627256 () Bool)

(assert (=> b!627256 (= e!380447 (appendAssoc!31 (++!1778 (list!2717 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (list!2717 (left!5111 (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))) (list!2717 (right!5441 (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))) (list!2717 (right!5441 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun b!627257 () Bool)

(declare-fun e!380441 () Bool)

(declare-fun e!380445 () Bool)

(assert (=> b!627257 (= e!380441 e!380445)))

(declare-fun res!271976 () Bool)

(assert (=> b!627257 (=> res!271976 e!380445)))

(assert (=> b!627257 (= res!271976 (not ((_ is Node!2075) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(declare-fun b!627259 () Bool)

(declare-fun e!380449 () Bool)

(assert (=> b!627259 (= e!380445 e!380449)))

(declare-fun res!271979 () Bool)

(assert (=> b!627259 (=> (not res!271979) (not e!380449))))

(assert (=> b!627259 (= res!271979 (appendAssoc!31 (list!2717 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))) (list!2717 (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) (list!2717 (right!5441 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun b!627260 () Bool)

(assert (=> b!627260 (= e!380449 e!380446)))

(declare-fun res!271981 () Bool)

(assert (=> b!627260 (=> res!271981 e!380446)))

(assert (=> b!627260 (= res!271981 (not ((_ is Node!2075) (left!5111 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun d!219459 () Bool)

(assert (=> d!219459 e!380441))

(declare-fun res!271984 () Bool)

(assert (=> d!219459 (=> (not res!271984) (not e!380441))))

(assert (=> d!219459 (= res!271984 e!380448)))

(declare-fun res!271978 () Bool)

(assert (=> d!219459 (=> res!271978 e!380448)))

(assert (=> d!219459 (= res!271978 (not ((_ is Node!2075) (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))))))))

(assert (=> d!219459 (= (appendAssocInst!111 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))) true)))

(declare-fun b!627258 () Bool)

(assert (=> b!627258 (= e!380442 (appendAssoc!31 (list!2717 (left!5111 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136))))) (list!2717 (left!5111 (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))) (++!1778 (list!2717 (right!5441 (right!5441 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)))))) (list!2717 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(assert (= (and d!219459 (not res!271978)) b!627255))

(assert (= (and b!627255 res!271983) b!627254))

(assert (= (and b!627254 (not res!271980)) b!627253))

(assert (= (and b!627253 res!271977) b!627258))

(assert (= (and d!219459 res!271984) b!627257))

(assert (= (and b!627257 (not res!271976)) b!627259))

(assert (= (and b!627259 res!271979) b!627260))

(assert (= (and b!627260 (not res!271981)) b!627252))

(assert (= (and b!627252 res!271982) b!627256))

(assert (=> b!627252 m!895171))

(declare-fun m!895417 () Bool)

(assert (=> b!627252 m!895417))

(declare-fun m!895419 () Bool)

(assert (=> b!627252 m!895419))

(assert (=> b!627252 m!895171))

(assert (=> b!627252 m!895417))

(assert (=> b!627252 m!895419))

(declare-fun m!895421 () Bool)

(assert (=> b!627252 m!895421))

(declare-fun m!895423 () Bool)

(assert (=> b!627253 m!895423))

(declare-fun m!895425 () Bool)

(assert (=> b!627253 m!895425))

(assert (=> b!627253 m!895173))

(assert (=> b!627253 m!895423))

(assert (=> b!627253 m!895425))

(assert (=> b!627253 m!895173))

(declare-fun m!895427 () Bool)

(assert (=> b!627253 m!895427))

(declare-fun m!895429 () Bool)

(assert (=> b!627255 m!895429))

(declare-fun m!895431 () Bool)

(assert (=> b!627255 m!895431))

(assert (=> b!627255 m!895173))

(assert (=> b!627255 m!895429))

(assert (=> b!627255 m!895431))

(assert (=> b!627255 m!895173))

(declare-fun m!895433 () Bool)

(assert (=> b!627255 m!895433))

(assert (=> b!627258 m!895425))

(assert (=> b!627258 m!895173))

(assert (=> b!627258 m!895425))

(assert (=> b!627258 m!895173))

(declare-fun m!895435 () Bool)

(assert (=> b!627258 m!895435))

(assert (=> b!627258 m!895423))

(assert (=> b!627258 m!895429))

(assert (=> b!627258 m!895429))

(assert (=> b!627258 m!895423))

(assert (=> b!627258 m!895435))

(declare-fun m!895437 () Bool)

(assert (=> b!627258 m!895437))

(assert (=> b!627256 m!895417))

(assert (=> b!627256 m!895419))

(assert (=> b!627256 m!895171))

(declare-fun m!895439 () Bool)

(assert (=> b!627256 m!895439))

(assert (=> b!627256 m!895419))

(declare-fun m!895441 () Bool)

(assert (=> b!627256 m!895441))

(declare-fun m!895443 () Bool)

(assert (=> b!627256 m!895443))

(assert (=> b!627256 m!895171))

(assert (=> b!627256 m!895417))

(assert (=> b!627256 m!895439))

(assert (=> b!627256 m!895441))

(assert (=> b!627259 m!895171))

(declare-fun m!895445 () Bool)

(assert (=> b!627259 m!895445))

(assert (=> b!627259 m!895441))

(assert (=> b!627259 m!895171))

(assert (=> b!627259 m!895445))

(assert (=> b!627259 m!895441))

(declare-fun m!895447 () Bool)

(assert (=> b!627259 m!895447))

(assert (=> d!219103 d!219459))

(assert (=> d!219103 d!219363))

(assert (=> bm!41152 d!219331))

(declare-fun d!219461 () Bool)

(declare-fun c!115264 () Bool)

(assert (=> d!219461 (= c!115264 ((_ is Nil!6440) lt!266782))))

(declare-fun e!380450 () (InoxSet Token!2358))

(assert (=> d!219461 (= (content!1158 lt!266782) e!380450)))

(declare-fun b!627261 () Bool)

(assert (=> b!627261 (= e!380450 ((as const (Array Token!2358 Bool)) false))))

(declare-fun b!627262 () Bool)

(assert (=> b!627262 (= e!380450 ((_ map or) (store ((as const (Array Token!2358 Bool)) false) (h!11841 lt!266782) true) (content!1158 (t!82369 lt!266782))))))

(assert (= (and d!219461 c!115264) b!627261))

(assert (= (and d!219461 (not c!115264)) b!627262))

(declare-fun m!895449 () Bool)

(assert (=> b!627262 m!895449))

(declare-fun m!895451 () Bool)

(assert (=> b!627262 m!895451))

(assert (=> d!219151 d!219461))

(assert (=> d!219151 d!219329))

(declare-fun d!219463 () Bool)

(declare-fun c!115265 () Bool)

(assert (=> d!219463 (= c!115265 ((_ is Node!2075) (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852))))))))

(declare-fun e!380451 () Bool)

(assert (=> d!219463 (= (inv!8231 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852))))) e!380451)))

(declare-fun b!627263 () Bool)

(assert (=> b!627263 (= e!380451 (inv!8237 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852))))))))

(declare-fun b!627264 () Bool)

(declare-fun e!380452 () Bool)

(assert (=> b!627264 (= e!380451 e!380452)))

(declare-fun res!271985 () Bool)

(assert (=> b!627264 (= res!271985 (not ((_ is Leaf!3242) (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852)))))))))

(assert (=> b!627264 (=> res!271985 e!380452)))

(declare-fun b!627265 () Bool)

(assert (=> b!627265 (= e!380452 (inv!8238 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852))))))))

(assert (= (and d!219463 c!115265) b!627263))

(assert (= (and d!219463 (not c!115265)) b!627264))

(assert (= (and b!627264 (not res!271985)) b!627265))

(declare-fun m!895453 () Bool)

(assert (=> b!627263 m!895453))

(declare-fun m!895455 () Bool)

(assert (=> b!627265 m!895455))

(assert (=> b!626479 d!219463))

(assert (=> b!626459 d!219365))

(assert (=> b!626459 d!219367))

(assert (=> b!626459 d!219369))

(assert (=> b!626459 d!219269))

(assert (=> b!626459 d!219371))

(assert (=> b!626350 d!219355))

(assert (=> b!626350 d!219357))

(assert (=> b!626350 d!219359))

(assert (=> b!626350 d!219361))

(assert (=> b!626350 d!219363))

(declare-fun d!219465 () Bool)

(declare-fun res!271990 () Bool)

(declare-fun e!380455 () Bool)

(assert (=> d!219465 (=> (not res!271990) (not e!380455))))

(assert (=> d!219465 (= res!271990 (<= (size!5040 (list!2719 (xs!4713 (c!114997 v!6361)))) 512))))

(assert (=> d!219465 (= (inv!8235 (c!114997 v!6361)) e!380455)))

(declare-fun b!627270 () Bool)

(declare-fun res!271991 () Bool)

(assert (=> b!627270 (=> (not res!271991) (not e!380455))))

(assert (=> b!627270 (= res!271991 (= (csize!4383 (c!114997 v!6361)) (size!5040 (list!2719 (xs!4713 (c!114997 v!6361))))))))

(declare-fun b!627271 () Bool)

(assert (=> b!627271 (= e!380455 (and (> (csize!4383 (c!114997 v!6361)) 0) (<= (csize!4383 (c!114997 v!6361)) 512)))))

(assert (= (and d!219465 res!271990) b!627270))

(assert (= (and b!627270 res!271991) b!627271))

(assert (=> d!219465 m!895105))

(assert (=> d!219465 m!895105))

(declare-fun m!895457 () Bool)

(assert (=> d!219465 m!895457))

(assert (=> b!627270 m!895105))

(assert (=> b!627270 m!895105))

(assert (=> b!627270 m!895457))

(assert (=> b!626488 d!219465))

(declare-fun d!219467 () Bool)

(declare-fun e!380457 () Bool)

(assert (=> d!219467 e!380457))

(declare-fun res!271992 () Bool)

(assert (=> d!219467 (=> (not res!271992) (not e!380457))))

(declare-fun lt!266895 () List!6450)

(assert (=> d!219467 (= res!271992 (= ((_ map implies) (content!1158 lt!266895) (content!1158 lt!266773)) ((as const (InoxSet Token!2358)) true)))))

(declare-fun e!380460 () List!6450)

(assert (=> d!219467 (= lt!266895 e!380460)))

(declare-fun c!115267 () Bool)

(assert (=> d!219467 (= c!115267 ((_ is Nil!6440) lt!266773))))

(assert (=> d!219467 (= (drop!344 lt!266773 (+ 1 from!852)) lt!266895)))

(declare-fun b!627272 () Bool)

(declare-fun e!380458 () List!6450)

(assert (=> b!627272 (= e!380458 lt!266773)))

(declare-fun b!627273 () Bool)

(declare-fun e!380456 () Int)

(assert (=> b!627273 (= e!380456 0)))

(declare-fun b!627274 () Bool)

(declare-fun e!380459 () Int)

(assert (=> b!627274 (= e!380457 (= (size!5040 lt!266895) e!380459))))

(declare-fun c!115268 () Bool)

(assert (=> b!627274 (= c!115268 (<= (+ 1 from!852) 0))))

(declare-fun b!627275 () Bool)

(assert (=> b!627275 (= e!380459 e!380456)))

(declare-fun c!115269 () Bool)

(declare-fun call!41300 () Int)

(assert (=> b!627275 (= c!115269 (>= (+ 1 from!852) call!41300))))

(declare-fun b!627276 () Bool)

(assert (=> b!627276 (= e!380460 e!380458)))

(declare-fun c!115266 () Bool)

(assert (=> b!627276 (= c!115266 (<= (+ 1 from!852) 0))))

(declare-fun b!627277 () Bool)

(assert (=> b!627277 (= e!380458 (drop!344 (t!82369 lt!266773) (- (+ 1 from!852) 1)))))

(declare-fun b!627278 () Bool)

(assert (=> b!627278 (= e!380460 Nil!6440)))

(declare-fun b!627279 () Bool)

(assert (=> b!627279 (= e!380459 call!41300)))

(declare-fun bm!41295 () Bool)

(assert (=> bm!41295 (= call!41300 (size!5040 lt!266773))))

(declare-fun b!627280 () Bool)

(assert (=> b!627280 (= e!380456 (- call!41300 (+ 1 from!852)))))

(assert (= (and d!219467 c!115267) b!627278))

(assert (= (and d!219467 (not c!115267)) b!627276))

(assert (= (and b!627276 c!115266) b!627272))

(assert (= (and b!627276 (not c!115266)) b!627277))

(assert (= (and d!219467 res!271992) b!627274))

(assert (= (and b!627274 c!115268) b!627279))

(assert (= (and b!627274 (not c!115268)) b!627275))

(assert (= (and b!627275 c!115269) b!627273))

(assert (= (and b!627275 (not c!115269)) b!627280))

(assert (= (or b!627279 b!627275 b!627280) bm!41295))

(declare-fun m!895459 () Bool)

(assert (=> d!219467 m!895459))

(declare-fun m!895461 () Bool)

(assert (=> d!219467 m!895461))

(declare-fun m!895463 () Bool)

(assert (=> b!627274 m!895463))

(declare-fun m!895465 () Bool)

(assert (=> b!627277 m!895465))

(declare-fun m!895467 () Bool)

(assert (=> bm!41295 m!895467))

(assert (=> b!626456 d!219467))

(declare-fun d!219469 () Bool)

(assert (=> d!219469 (= (tail!859 (drop!344 lt!266777 (+ 1 from!852))) (drop!344 lt!266777 (+ 1 from!852 1)))))

(declare-fun lt!266896 () Unit!11520)

(assert (=> d!219469 (= lt!266896 (choose!4551 lt!266777 (+ 1 from!852)))))

(declare-fun e!380461 () Bool)

(assert (=> d!219469 e!380461))

(declare-fun res!271993 () Bool)

(assert (=> d!219469 (=> (not res!271993) (not e!380461))))

(assert (=> d!219469 (= res!271993 (>= (+ 1 from!852) 0))))

(assert (=> d!219469 (= (lemmaDropTail!298 lt!266777 (+ 1 from!852)) lt!266896)))

(declare-fun b!627281 () Bool)

(assert (=> b!627281 (= e!380461 (< (+ 1 from!852) (size!5040 lt!266777)))))

(assert (= (and d!219469 res!271993) b!627281))

(assert (=> d!219469 m!894487))

(assert (=> d!219469 m!894487))

(assert (=> d!219469 m!894489))

(assert (=> d!219469 m!894509))

(declare-fun m!895469 () Bool)

(assert (=> d!219469 m!895469))

(declare-fun m!895471 () Bool)

(assert (=> b!627281 m!895471))

(assert (=> b!626456 d!219469))

(assert (=> b!626456 d!219089))

(declare-fun d!219471 () Bool)

(declare-fun e!380463 () Bool)

(assert (=> d!219471 e!380463))

(declare-fun res!271994 () Bool)

(assert (=> d!219471 (=> (not res!271994) (not e!380463))))

(declare-fun lt!266897 () List!6450)

(assert (=> d!219471 (= res!271994 (= ((_ map implies) (content!1158 lt!266897) (content!1158 lt!266777)) ((as const (InoxSet Token!2358)) true)))))

(declare-fun e!380466 () List!6450)

(assert (=> d!219471 (= lt!266897 e!380466)))

(declare-fun c!115271 () Bool)

(assert (=> d!219471 (= c!115271 ((_ is Nil!6440) lt!266777))))

(assert (=> d!219471 (= (drop!344 lt!266777 (+ 1 from!852 1)) lt!266897)))

(declare-fun b!627282 () Bool)

(declare-fun e!380464 () List!6450)

(assert (=> b!627282 (= e!380464 lt!266777)))

(declare-fun b!627283 () Bool)

(declare-fun e!380462 () Int)

(assert (=> b!627283 (= e!380462 0)))

(declare-fun b!627284 () Bool)

(declare-fun e!380465 () Int)

(assert (=> b!627284 (= e!380463 (= (size!5040 lt!266897) e!380465))))

(declare-fun c!115272 () Bool)

(assert (=> b!627284 (= c!115272 (<= (+ 1 from!852 1) 0))))

(declare-fun b!627285 () Bool)

(assert (=> b!627285 (= e!380465 e!380462)))

(declare-fun c!115273 () Bool)

(declare-fun call!41301 () Int)

(assert (=> b!627285 (= c!115273 (>= (+ 1 from!852 1) call!41301))))

(declare-fun b!627286 () Bool)

(assert (=> b!627286 (= e!380466 e!380464)))

(declare-fun c!115270 () Bool)

(assert (=> b!627286 (= c!115270 (<= (+ 1 from!852 1) 0))))

(declare-fun b!627287 () Bool)

(assert (=> b!627287 (= e!380464 (drop!344 (t!82369 lt!266777) (- (+ 1 from!852 1) 1)))))

(declare-fun b!627288 () Bool)

(assert (=> b!627288 (= e!380466 Nil!6440)))

(declare-fun b!627289 () Bool)

(assert (=> b!627289 (= e!380465 call!41301)))

(declare-fun bm!41296 () Bool)

(assert (=> bm!41296 (= call!41301 (size!5040 lt!266777))))

(declare-fun b!627290 () Bool)

(assert (=> b!627290 (= e!380462 (- call!41301 (+ 1 from!852 1)))))

(assert (= (and d!219471 c!115271) b!627288))

(assert (= (and d!219471 (not c!115271)) b!627286))

(assert (= (and b!627286 c!115270) b!627282))

(assert (= (and b!627286 (not c!115270)) b!627287))

(assert (= (and d!219471 res!271994) b!627284))

(assert (= (and b!627284 c!115272) b!627289))

(assert (= (and b!627284 (not c!115272)) b!627285))

(assert (= (and b!627285 c!115273) b!627283))

(assert (= (and b!627285 (not c!115273)) b!627290))

(assert (= (or b!627289 b!627285 b!627290) bm!41296))

(declare-fun m!895473 () Bool)

(assert (=> d!219471 m!895473))

(declare-fun m!895475 () Bool)

(assert (=> d!219471 m!895475))

(declare-fun m!895477 () Bool)

(assert (=> b!627284 m!895477))

(declare-fun m!895479 () Bool)

(assert (=> b!627287 m!895479))

(assert (=> bm!41296 m!895471))

(assert (=> b!626456 d!219471))

(declare-fun d!219473 () Bool)

(declare-fun lt!266898 () Token!2358)

(assert (=> d!219473 (= lt!266898 (apply!1537 (list!2713 v!6361) (+ 1 from!852)))))

(assert (=> d!219473 (= lt!266898 (apply!1539 (c!114997 v!6361) (+ 1 from!852)))))

(declare-fun e!380467 () Bool)

(assert (=> d!219473 e!380467))

(declare-fun res!271995 () Bool)

(assert (=> d!219473 (=> (not res!271995) (not e!380467))))

(assert (=> d!219473 (= res!271995 (<= 0 (+ 1 from!852)))))

(assert (=> d!219473 (= (apply!1536 v!6361 (+ 1 from!852)) lt!266898)))

(declare-fun b!627291 () Bool)

(assert (=> b!627291 (= e!380467 (< (+ 1 from!852) (size!5035 v!6361)))))

(assert (= (and d!219473 res!271995) b!627291))

(assert (=> d!219473 m!894183))

(assert (=> d!219473 m!894183))

(declare-fun m!895481 () Bool)

(assert (=> d!219473 m!895481))

(declare-fun m!895483 () Bool)

(assert (=> d!219473 m!895483))

(assert (=> b!627291 m!894219))

(assert (=> b!626456 d!219473))

(declare-fun e!380468 () Bool)

(declare-fun b!627295 () Bool)

(declare-fun lt!266899 () BalanceConc!4158)

(assert (=> b!627295 (= e!380468 (= (list!2712 lt!266899) (++!1778 (list!2712 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136))) (list!2712 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1))))))))

(declare-fun d!219475 () Bool)

(assert (=> d!219475 e!380468))

(declare-fun res!271998 () Bool)

(assert (=> d!219475 (=> (not res!271998) (not e!380468))))

(assert (=> d!219475 (= res!271998 (appendAssocInst!111 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1)))))))

(assert (=> d!219475 (= lt!266899 (BalanceConc!4159 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1))))))))

(assert (=> d!219475 (= (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1))) lt!266899)))

(declare-fun b!627292 () Bool)

(declare-fun res!271996 () Bool)

(assert (=> b!627292 (=> (not res!271996) (not e!380468))))

(assert (=> b!627292 (= res!271996 (isBalanced!551 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1))))))))

(declare-fun b!627293 () Bool)

(declare-fun res!271999 () Bool)

(assert (=> b!627293 (=> (not res!271999) (not e!380468))))

(assert (=> b!627293 (= res!271999 (<= (height!262 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1))))) (+ (max!0 (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136)))) (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1))))) 1)))))

(declare-fun b!627294 () Bool)

(declare-fun res!271997 () Bool)

(assert (=> b!627294 (=> (not res!271997) (not e!380468))))

(assert (=> b!627294 (= res!271997 (>= (height!262 (++!1779 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136))) (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1))))) (max!0 (height!262 (c!114995 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136)))) (height!262 (c!114995 (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1)))))))))

(assert (= (and d!219475 res!271998) b!627292))

(assert (= (and b!627292 res!271996) b!627293))

(assert (= (and b!627293 res!271999) b!627294))

(assert (= (and b!627294 res!271997) b!627295))

(declare-fun m!895485 () Bool)

(assert (=> d!219475 m!895485))

(declare-fun m!895487 () Bool)

(assert (=> d!219475 m!895487))

(declare-fun m!895489 () Bool)

(assert (=> b!627294 m!895489))

(assert (=> b!627294 m!895489))

(declare-fun m!895491 () Bool)

(assert (=> b!627294 m!895491))

(declare-fun m!895493 () Bool)

(assert (=> b!627294 m!895493))

(assert (=> b!627294 m!895491))

(assert (=> b!627294 m!895487))

(assert (=> b!627294 m!895487))

(declare-fun m!895495 () Bool)

(assert (=> b!627294 m!895495))

(declare-fun m!895497 () Bool)

(assert (=> b!627295 m!895497))

(assert (=> b!627295 m!894499))

(declare-fun m!895499 () Bool)

(assert (=> b!627295 m!895499))

(assert (=> b!627295 m!894505))

(declare-fun m!895501 () Bool)

(assert (=> b!627295 m!895501))

(assert (=> b!627295 m!895499))

(assert (=> b!627295 m!895501))

(declare-fun m!895503 () Bool)

(assert (=> b!627295 m!895503))

(assert (=> b!627292 m!895487))

(assert (=> b!627292 m!895487))

(declare-fun m!895505 () Bool)

(assert (=> b!627292 m!895505))

(assert (=> b!627293 m!895489))

(assert (=> b!627293 m!895489))

(assert (=> b!627293 m!895491))

(assert (=> b!627293 m!895493))

(assert (=> b!627293 m!895491))

(assert (=> b!627293 m!895487))

(assert (=> b!627293 m!895487))

(assert (=> b!627293 m!895495))

(assert (=> b!626456 d!219475))

(declare-fun d!219477 () Bool)

(declare-fun lt!266900 () Token!2358)

(assert (=> d!219477 (contains!1505 lt!266773 lt!266900)))

(declare-fun e!380470 () Token!2358)

(assert (=> d!219477 (= lt!266900 e!380470)))

(declare-fun c!115274 () Bool)

(assert (=> d!219477 (= c!115274 (= (+ 1 from!852) 0))))

(declare-fun e!380469 () Bool)

(assert (=> d!219477 e!380469))

(declare-fun res!272000 () Bool)

(assert (=> d!219477 (=> (not res!272000) (not e!380469))))

(assert (=> d!219477 (= res!272000 (<= 0 (+ 1 from!852)))))

(assert (=> d!219477 (= (apply!1537 lt!266773 (+ 1 from!852)) lt!266900)))

(declare-fun b!627296 () Bool)

(assert (=> b!627296 (= e!380469 (< (+ 1 from!852) (size!5040 lt!266773)))))

(declare-fun b!627297 () Bool)

(assert (=> b!627297 (= e!380470 (head!1331 lt!266773))))

(declare-fun b!627298 () Bool)

(assert (=> b!627298 (= e!380470 (apply!1537 (tail!859 lt!266773) (- (+ 1 from!852) 1)))))

(assert (= (and d!219477 res!272000) b!627296))

(assert (= (and d!219477 c!115274) b!627297))

(assert (= (and d!219477 (not c!115274)) b!627298))

(declare-fun m!895507 () Bool)

(assert (=> d!219477 m!895507))

(assert (=> b!627296 m!895467))

(declare-fun m!895509 () Bool)

(assert (=> b!627297 m!895509))

(declare-fun m!895511 () Bool)

(assert (=> b!627298 m!895511))

(assert (=> b!627298 m!895511))

(declare-fun m!895513 () Bool)

(assert (=> b!627298 m!895513))

(assert (=> b!626456 d!219477))

(assert (=> b!626456 d!219155))

(declare-fun d!219479 () Bool)

(declare-fun e!380472 () Bool)

(assert (=> d!219479 e!380472))

(declare-fun res!272001 () Bool)

(assert (=> d!219479 (=> (not res!272001) (not e!380472))))

(declare-fun lt!266901 () List!6450)

(assert (=> d!219479 (= res!272001 (= ((_ map implies) (content!1158 lt!266901) (content!1158 lt!266777)) ((as const (InoxSet Token!2358)) true)))))

(declare-fun e!380475 () List!6450)

(assert (=> d!219479 (= lt!266901 e!380475)))

(declare-fun c!115276 () Bool)

(assert (=> d!219479 (= c!115276 ((_ is Nil!6440) lt!266777))))

(assert (=> d!219479 (= (drop!344 lt!266777 (+ 1 from!852)) lt!266901)))

(declare-fun b!627299 () Bool)

(declare-fun e!380473 () List!6450)

(assert (=> b!627299 (= e!380473 lt!266777)))

(declare-fun b!627300 () Bool)

(declare-fun e!380471 () Int)

(assert (=> b!627300 (= e!380471 0)))

(declare-fun b!627301 () Bool)

(declare-fun e!380474 () Int)

(assert (=> b!627301 (= e!380472 (= (size!5040 lt!266901) e!380474))))

(declare-fun c!115277 () Bool)

(assert (=> b!627301 (= c!115277 (<= (+ 1 from!852) 0))))

(declare-fun b!627302 () Bool)

(assert (=> b!627302 (= e!380474 e!380471)))

(declare-fun c!115278 () Bool)

(declare-fun call!41302 () Int)

(assert (=> b!627302 (= c!115278 (>= (+ 1 from!852) call!41302))))

(declare-fun b!627303 () Bool)

(assert (=> b!627303 (= e!380475 e!380473)))

(declare-fun c!115275 () Bool)

(assert (=> b!627303 (= c!115275 (<= (+ 1 from!852) 0))))

(declare-fun b!627304 () Bool)

(assert (=> b!627304 (= e!380473 (drop!344 (t!82369 lt!266777) (- (+ 1 from!852) 1)))))

(declare-fun b!627305 () Bool)

(assert (=> b!627305 (= e!380475 Nil!6440)))

(declare-fun b!627306 () Bool)

(assert (=> b!627306 (= e!380474 call!41302)))

(declare-fun bm!41297 () Bool)

(assert (=> bm!41297 (= call!41302 (size!5040 lt!266777))))

(declare-fun b!627307 () Bool)

(assert (=> b!627307 (= e!380471 (- call!41302 (+ 1 from!852)))))

(assert (= (and d!219479 c!115276) b!627305))

(assert (= (and d!219479 (not c!115276)) b!627303))

(assert (= (and b!627303 c!115275) b!627299))

(assert (= (and b!627303 (not c!115275)) b!627304))

(assert (= (and d!219479 res!272001) b!627301))

(assert (= (and b!627301 c!115277) b!627306))

(assert (= (and b!627301 (not c!115277)) b!627302))

(assert (= (and b!627302 c!115278) b!627300))

(assert (= (and b!627302 (not c!115278)) b!627307))

(assert (= (or b!627306 b!627302 b!627307) bm!41297))

(declare-fun m!895515 () Bool)

(assert (=> d!219479 m!895515))

(assert (=> d!219479 m!895475))

(declare-fun m!895517 () Bool)

(assert (=> b!627301 m!895517))

(declare-fun m!895519 () Bool)

(assert (=> b!627304 m!895519))

(assert (=> bm!41297 m!895471))

(assert (=> b!626456 d!219479))

(declare-fun lt!266902 () BalanceConc!4158)

(declare-fun d!219481 () Bool)

(assert (=> d!219481 (= (list!2712 lt!266902) (printWithSeparatorTokenList!4 thiss!14007 (dropList!262 v!6361 (+ 1 from!852 1)) separatorToken!136))))

(declare-fun e!380477 () BalanceConc!4158)

(assert (=> d!219481 (= lt!266902 e!380477)))

(declare-fun c!115279 () Bool)

(assert (=> d!219481 (= c!115279 (>= (+ 1 from!852 1) (size!5035 v!6361)))))

(declare-fun e!380476 () Bool)

(assert (=> d!219481 e!380476))

(declare-fun res!272002 () Bool)

(assert (=> d!219481 (=> (not res!272002) (not e!380476))))

(assert (=> d!219481 (= res!272002 (>= (+ 1 from!852 1) 0))))

(assert (=> d!219481 (= (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1)) lt!266902)))

(declare-fun b!627308 () Bool)

(assert (=> b!627308 (= e!380476 (<= (+ 1 from!852 1) (size!5035 v!6361)))))

(declare-fun b!627309 () Bool)

(assert (=> b!627309 (= e!380477 (BalanceConc!4159 Empty!2075))))

(declare-fun b!627310 () Bool)

(assert (=> b!627310 (= e!380477 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852 1))) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852 1 1))))))

(declare-fun lt!266904 () List!6450)

(assert (=> b!627310 (= lt!266904 (list!2713 v!6361))))

(declare-fun lt!266907 () Unit!11520)

(assert (=> b!627310 (= lt!266907 (lemmaDropApply!310 lt!266904 (+ 1 from!852 1)))))

(assert (=> b!627310 (= (head!1331 (drop!344 lt!266904 (+ 1 from!852 1))) (apply!1537 lt!266904 (+ 1 from!852 1)))))

(declare-fun lt!266906 () Unit!11520)

(assert (=> b!627310 (= lt!266906 lt!266907)))

(declare-fun lt!266908 () List!6450)

(assert (=> b!627310 (= lt!266908 (list!2713 v!6361))))

(declare-fun lt!266905 () Unit!11520)

(assert (=> b!627310 (= lt!266905 (lemmaDropTail!298 lt!266908 (+ 1 from!852 1)))))

(assert (=> b!627310 (= (tail!859 (drop!344 lt!266908 (+ 1 from!852 1))) (drop!344 lt!266908 (+ 1 from!852 1 1)))))

(declare-fun lt!266903 () Unit!11520)

(assert (=> b!627310 (= lt!266903 lt!266905)))

(assert (= (and d!219481 res!272002) b!627308))

(assert (= (and d!219481 c!115279) b!627309))

(assert (= (and d!219481 (not c!115279)) b!627310))

(declare-fun m!895521 () Bool)

(assert (=> d!219481 m!895521))

(declare-fun m!895523 () Bool)

(assert (=> d!219481 m!895523))

(assert (=> d!219481 m!895523))

(declare-fun m!895525 () Bool)

(assert (=> d!219481 m!895525))

(assert (=> d!219481 m!894219))

(assert (=> b!627308 m!894219))

(declare-fun m!895527 () Bool)

(assert (=> b!627310 m!895527))

(declare-fun m!895529 () Bool)

(assert (=> b!627310 m!895529))

(declare-fun m!895531 () Bool)

(assert (=> b!627310 m!895531))

(declare-fun m!895533 () Bool)

(assert (=> b!627310 m!895533))

(declare-fun m!895535 () Bool)

(assert (=> b!627310 m!895535))

(assert (=> b!627310 m!894183))

(assert (=> b!627310 m!895533))

(declare-fun m!895537 () Bool)

(assert (=> b!627310 m!895537))

(assert (=> b!627310 m!894211))

(assert (=> b!627310 m!895537))

(assert (=> b!627310 m!894211))

(declare-fun m!895539 () Bool)

(assert (=> b!627310 m!895539))

(declare-fun m!895541 () Bool)

(assert (=> b!627310 m!895541))

(assert (=> b!627310 m!895541))

(declare-fun m!895543 () Bool)

(assert (=> b!627310 m!895543))

(assert (=> b!627310 m!895539))

(declare-fun m!895545 () Bool)

(assert (=> b!627310 m!895545))

(declare-fun m!895547 () Bool)

(assert (=> b!627310 m!895547))

(declare-fun m!895549 () Bool)

(assert (=> b!627310 m!895549))

(declare-fun m!895551 () Bool)

(assert (=> b!627310 m!895551))

(assert (=> b!627310 m!895545))

(assert (=> b!627310 m!895527))

(assert (=> b!626456 d!219481))

(declare-fun d!219483 () Bool)

(assert (=> d!219483 (= (head!1331 (drop!344 lt!266773 (+ 1 from!852))) (apply!1537 lt!266773 (+ 1 from!852)))))

(declare-fun lt!266909 () Unit!11520)

(assert (=> d!219483 (= lt!266909 (choose!4550 lt!266773 (+ 1 from!852)))))

(declare-fun e!380478 () Bool)

(assert (=> d!219483 e!380478))

(declare-fun res!272003 () Bool)

(assert (=> d!219483 (=> (not res!272003) (not e!380478))))

(assert (=> d!219483 (= res!272003 (>= (+ 1 from!852) 0))))

(assert (=> d!219483 (= (lemmaDropApply!310 lt!266773 (+ 1 from!852)) lt!266909)))

(declare-fun b!627311 () Bool)

(assert (=> b!627311 (= e!380478 (< (+ 1 from!852) (size!5040 lt!266773)))))

(assert (= (and d!219483 res!272003) b!627311))

(assert (=> d!219483 m!894501))

(assert (=> d!219483 m!894501))

(assert (=> d!219483 m!894503))

(assert (=> d!219483 m!894491))

(declare-fun m!895553 () Bool)

(assert (=> d!219483 m!895553))

(assert (=> b!627311 m!895467))

(assert (=> b!626456 d!219483))

(declare-fun b!627315 () Bool)

(declare-fun lt!266910 () BalanceConc!4158)

(declare-fun e!380479 () Bool)

(assert (=> b!627315 (= e!380479 (= (list!2712 lt!266910) (++!1778 (list!2712 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852)))) (list!2712 (charsOf!902 separatorToken!136)))))))

(declare-fun d!219485 () Bool)

(assert (=> d!219485 e!380479))

(declare-fun res!272006 () Bool)

(assert (=> d!219485 (=> (not res!272006) (not e!380479))))

(assert (=> d!219485 (= res!272006 (appendAssocInst!111 (c!114995 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852)))) (c!114995 (charsOf!902 separatorToken!136))))))

(assert (=> d!219485 (= lt!266910 (BalanceConc!4159 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852)))) (c!114995 (charsOf!902 separatorToken!136)))))))

(assert (=> d!219485 (= (++!1775 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) (charsOf!902 separatorToken!136)) lt!266910)))

(declare-fun b!627312 () Bool)

(declare-fun res!272004 () Bool)

(assert (=> b!627312 (=> (not res!272004) (not e!380479))))

(assert (=> b!627312 (= res!272004 (isBalanced!551 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852)))) (c!114995 (charsOf!902 separatorToken!136)))))))

(declare-fun b!627313 () Bool)

(declare-fun res!272007 () Bool)

(assert (=> b!627313 (=> (not res!272007) (not e!380479))))

(assert (=> b!627313 (= res!272007 (<= (height!262 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852)))) (c!114995 (charsOf!902 separatorToken!136)))) (+ (max!0 (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))))) (height!262 (c!114995 (charsOf!902 separatorToken!136)))) 1)))))

(declare-fun b!627314 () Bool)

(declare-fun res!272005 () Bool)

(assert (=> b!627314 (=> (not res!272005) (not e!380479))))

(assert (=> b!627314 (= res!272005 (>= (height!262 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852)))) (c!114995 (charsOf!902 separatorToken!136)))) (max!0 (height!262 (c!114995 (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))))) (height!262 (c!114995 (charsOf!902 separatorToken!136))))))))

(assert (= (and d!219485 res!272006) b!627312))

(assert (= (and b!627312 res!272004) b!627313))

(assert (= (and b!627313 res!272007) b!627314))

(assert (= (and b!627314 res!272005) b!627315))

(declare-fun m!895555 () Bool)

(assert (=> d!219485 m!895555))

(declare-fun m!895557 () Bool)

(assert (=> d!219485 m!895557))

(declare-fun m!895559 () Bool)

(assert (=> b!627314 m!895559))

(assert (=> b!627314 m!895559))

(assert (=> b!627314 m!894519))

(declare-fun m!895561 () Bool)

(assert (=> b!627314 m!895561))

(assert (=> b!627314 m!894519))

(assert (=> b!627314 m!895557))

(assert (=> b!627314 m!895557))

(declare-fun m!895563 () Bool)

(assert (=> b!627314 m!895563))

(declare-fun m!895565 () Bool)

(assert (=> b!627315 m!895565))

(assert (=> b!627315 m!894497))

(declare-fun m!895567 () Bool)

(assert (=> b!627315 m!895567))

(assert (=> b!627315 m!894211))

(assert (=> b!627315 m!894327))

(assert (=> b!627315 m!895567))

(assert (=> b!627315 m!894327))

(declare-fun m!895569 () Bool)

(assert (=> b!627315 m!895569))

(assert (=> b!627312 m!895557))

(assert (=> b!627312 m!895557))

(declare-fun m!895571 () Bool)

(assert (=> b!627312 m!895571))

(assert (=> b!627313 m!895559))

(assert (=> b!627313 m!895559))

(assert (=> b!627313 m!894519))

(assert (=> b!627313 m!895561))

(assert (=> b!627313 m!894519))

(assert (=> b!627313 m!895557))

(assert (=> b!627313 m!895557))

(assert (=> b!627313 m!895563))

(assert (=> b!626456 d!219485))

(declare-fun d!219487 () Bool)

(declare-fun lt!266911 () BalanceConc!4158)

(assert (=> d!219487 (= (list!2712 lt!266911) (originalCharacters!1350 (apply!1536 v!6361 (+ 1 from!852))))))

(assert (=> d!219487 (= lt!266911 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 (+ 1 from!852))))) (value!42398 (apply!1536 v!6361 (+ 1 from!852)))))))

(assert (=> d!219487 (= (charsOf!902 (apply!1536 v!6361 (+ 1 from!852))) lt!266911)))

(declare-fun b_lambda!24721 () Bool)

(assert (=> (not b_lambda!24721) (not d!219487)))

(declare-fun tb!54437 () Bool)

(declare-fun t!82405 () Bool)

(assert (=> (and b!626212 (= (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 (+ 1 from!852)))))) t!82405) tb!54437))

(declare-fun tp!195854 () Bool)

(declare-fun e!380480 () Bool)

(declare-fun b!627316 () Bool)

(assert (=> b!627316 (= e!380480 (and (inv!8231 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 (+ 1 from!852))))) (value!42398 (apply!1536 v!6361 (+ 1 from!852)))))) tp!195854))))

(declare-fun result!61500 () Bool)

(assert (=> tb!54437 (= result!61500 (and (inv!8232 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 (+ 1 from!852))))) (value!42398 (apply!1536 v!6361 (+ 1 from!852))))) e!380480))))

(assert (= tb!54437 b!627316))

(declare-fun m!895573 () Bool)

(assert (=> b!627316 m!895573))

(declare-fun m!895575 () Bool)

(assert (=> tb!54437 m!895575))

(assert (=> d!219487 t!82405))

(declare-fun b_and!62157 () Bool)

(assert (= b_and!62151 (and (=> t!82405 result!61500) b_and!62157)))

(declare-fun m!895577 () Bool)

(assert (=> d!219487 m!895577))

(declare-fun m!895579 () Bool)

(assert (=> d!219487 m!895579))

(assert (=> b!626456 d!219487))

(declare-fun d!219489 () Bool)

(assert (=> d!219489 (= (head!1331 (drop!344 lt!266773 (+ 1 from!852))) (h!11841 (drop!344 lt!266773 (+ 1 from!852))))))

(assert (=> b!626456 d!219489))

(declare-fun d!219491 () Bool)

(assert (=> d!219491 (= (tail!859 (drop!344 lt!266777 (+ 1 from!852))) (t!82369 (drop!344 lt!266777 (+ 1 from!852))))))

(assert (=> b!626456 d!219491))

(declare-fun e!380482 () Bool)

(declare-fun b!627317 () Bool)

(assert (=> b!627317 (= e!380482 (not (isEmpty!4586 (right!5441 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))))))))

(declare-fun b!627318 () Bool)

(declare-fun res!272009 () Bool)

(assert (=> b!627318 (=> (not res!272009) (not e!380482))))

(assert (=> b!627318 (= res!272009 (isBalanced!551 (right!5441 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136))))))))

(declare-fun b!627319 () Bool)

(declare-fun res!272011 () Bool)

(assert (=> b!627319 (=> (not res!272011) (not e!380482))))

(assert (=> b!627319 (= res!272011 (<= (- (height!262 (left!5111 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136))))) (height!262 (right!5441 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))))) 1))))

(declare-fun b!627320 () Bool)

(declare-fun e!380481 () Bool)

(assert (=> b!627320 (= e!380481 e!380482)))

(declare-fun res!272008 () Bool)

(assert (=> b!627320 (=> (not res!272008) (not e!380482))))

(assert (=> b!627320 (= res!272008 (<= (- 1) (- (height!262 (left!5111 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136))))) (height!262 (right!5441 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136))))))))))

(declare-fun b!627321 () Bool)

(declare-fun res!272013 () Bool)

(assert (=> b!627321 (=> (not res!272013) (not e!380482))))

(assert (=> b!627321 (= res!272013 (isBalanced!551 (left!5111 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136))))))))

(declare-fun d!219493 () Bool)

(declare-fun res!272010 () Bool)

(assert (=> d!219493 (=> res!272010 e!380481)))

(assert (=> d!219493 (= res!272010 (not ((_ is Node!2075) (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136))))))))

(assert (=> d!219493 (= (isBalanced!551 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))) e!380481)))

(declare-fun b!627322 () Bool)

(declare-fun res!272012 () Bool)

(assert (=> b!627322 (=> (not res!272012) (not e!380482))))

(assert (=> b!627322 (= res!272012 (not (isEmpty!4586 (left!5111 (++!1779 (c!114995 (charsOf!902 (apply!1536 v!6361 from!852))) (c!114995 (charsOf!902 separatorToken!136)))))))))

(assert (= (and d!219493 (not res!272010)) b!627320))

(assert (= (and b!627320 res!272008) b!627319))

(assert (= (and b!627319 res!272011) b!627321))

(assert (= (and b!627321 res!272013) b!627318))

(assert (= (and b!627318 res!272009) b!627322))

(assert (= (and b!627322 res!272012) b!627317))

(declare-fun m!895581 () Bool)

(assert (=> b!627322 m!895581))

(declare-fun m!895583 () Bool)

(assert (=> b!627318 m!895583))

(declare-fun m!895585 () Bool)

(assert (=> b!627319 m!895585))

(declare-fun m!895587 () Bool)

(assert (=> b!627319 m!895587))

(declare-fun m!895589 () Bool)

(assert (=> b!627321 m!895589))

(assert (=> b!627320 m!895585))

(assert (=> b!627320 m!895587))

(declare-fun m!895591 () Bool)

(assert (=> b!627317 m!895591))

(assert (=> b!626457 d!219493))

(assert (=> b!626457 d!219269))

(declare-fun d!219495 () Bool)

(declare-fun res!272020 () Bool)

(declare-fun e!380485 () Bool)

(assert (=> d!219495 (=> (not res!272020) (not e!380485))))

(assert (=> d!219495 (= res!272020 (= (csize!4382 (c!114997 v!6361)) (+ (size!5041 (left!5112 (c!114997 v!6361))) (size!5041 (right!5442 (c!114997 v!6361))))))))

(assert (=> d!219495 (= (inv!8234 (c!114997 v!6361)) e!380485)))

(declare-fun b!627329 () Bool)

(declare-fun res!272021 () Bool)

(assert (=> b!627329 (=> (not res!272021) (not e!380485))))

(assert (=> b!627329 (= res!272021 (and (not (= (left!5112 (c!114997 v!6361)) Empty!2076)) (not (= (right!5442 (c!114997 v!6361)) Empty!2076))))))

(declare-fun b!627330 () Bool)

(declare-fun res!272022 () Bool)

(assert (=> b!627330 (=> (not res!272022) (not e!380485))))

(assert (=> b!627330 (= res!272022 (= (cheight!2287 (c!114997 v!6361)) (+ (max!0 (height!263 (left!5112 (c!114997 v!6361))) (height!263 (right!5442 (c!114997 v!6361)))) 1)))))

(declare-fun b!627331 () Bool)

(assert (=> b!627331 (= e!380485 (<= 0 (cheight!2287 (c!114997 v!6361))))))

(assert (= (and d!219495 res!272020) b!627329))

(assert (= (and b!627329 res!272021) b!627330))

(assert (= (and b!627330 res!272022) b!627331))

(declare-fun m!895593 () Bool)

(assert (=> d!219495 m!895593))

(declare-fun m!895595 () Bool)

(assert (=> d!219495 m!895595))

(assert (=> b!627330 m!895137))

(assert (=> b!627330 m!895139))

(assert (=> b!627330 m!895137))

(assert (=> b!627330 m!895139))

(declare-fun m!895597 () Bool)

(assert (=> b!627330 m!895597))

(assert (=> b!626486 d!219495))

(assert (=> b!626454 d!219163))

(declare-fun d!219497 () Bool)

(declare-fun lt!266912 () Token!2358)

(assert (=> d!219497 (contains!1505 (list!2713 v!6361) lt!266912)))

(declare-fun e!380487 () Token!2358)

(assert (=> d!219497 (= lt!266912 e!380487)))

(declare-fun c!115280 () Bool)

(assert (=> d!219497 (= c!115280 (= from!852 0))))

(declare-fun e!380486 () Bool)

(assert (=> d!219497 e!380486))

(declare-fun res!272023 () Bool)

(assert (=> d!219497 (=> (not res!272023) (not e!380486))))

(assert (=> d!219497 (= res!272023 (<= 0 from!852))))

(assert (=> d!219497 (= (apply!1537 (list!2713 v!6361) from!852) lt!266912)))

(declare-fun b!627332 () Bool)

(assert (=> b!627332 (= e!380486 (< from!852 (size!5040 (list!2713 v!6361))))))

(declare-fun b!627333 () Bool)

(assert (=> b!627333 (= e!380487 (head!1331 (list!2713 v!6361)))))

(declare-fun b!627334 () Bool)

(assert (=> b!627334 (= e!380487 (apply!1537 (tail!859 (list!2713 v!6361)) (- from!852 1)))))

(assert (= (and d!219497 res!272023) b!627332))

(assert (= (and d!219497 c!115280) b!627333))

(assert (= (and d!219497 (not c!115280)) b!627334))

(assert (=> d!219497 m!894183))

(declare-fun m!895599 () Bool)

(assert (=> d!219497 m!895599))

(assert (=> b!627332 m!894183))

(assert (=> b!627332 m!894569))

(assert (=> b!627333 m!894183))

(declare-fun m!895601 () Bool)

(assert (=> b!627333 m!895601))

(assert (=> b!627334 m!894183))

(declare-fun m!895603 () Bool)

(assert (=> b!627334 m!895603))

(assert (=> b!627334 m!895603))

(declare-fun m!895605 () Bool)

(assert (=> b!627334 m!895605))

(assert (=> d!219135 d!219497))

(assert (=> d!219135 d!219155))

(declare-fun b!627349 () Bool)

(declare-fun e!380496 () Token!2358)

(declare-fun call!41305 () Token!2358)

(assert (=> b!627349 (= e!380496 call!41305)))

(declare-fun b!627350 () Bool)

(declare-fun e!380497 () Bool)

(assert (=> b!627350 (= e!380497 (< from!852 (size!5041 (c!114997 v!6361))))))

(declare-fun b!627351 () Bool)

(declare-fun e!380499 () Int)

(assert (=> b!627351 (= e!380499 from!852)))

(declare-fun d!219499 () Bool)

(declare-fun lt!266918 () Token!2358)

(assert (=> d!219499 (= lt!266918 (apply!1537 (list!2716 (c!114997 v!6361)) from!852))))

(declare-fun e!380498 () Token!2358)

(assert (=> d!219499 (= lt!266918 e!380498)))

(declare-fun c!115287 () Bool)

(assert (=> d!219499 (= c!115287 ((_ is Leaf!3243) (c!114997 v!6361)))))

(assert (=> d!219499 e!380497))

(declare-fun res!272026 () Bool)

(assert (=> d!219499 (=> (not res!272026) (not e!380497))))

(assert (=> d!219499 (= res!272026 (<= 0 from!852))))

(assert (=> d!219499 (= (apply!1539 (c!114997 v!6361) from!852) lt!266918)))

(declare-fun b!627352 () Bool)

(declare-fun apply!1541 (IArray!4153 Int) Token!2358)

(assert (=> b!627352 (= e!380498 (apply!1541 (xs!4713 (c!114997 v!6361)) from!852))))

(declare-fun b!627353 () Bool)

(assert (=> b!627353 (= e!380496 call!41305)))

(declare-fun bm!41300 () Bool)

(declare-fun c!115288 () Bool)

(declare-fun c!115289 () Bool)

(assert (=> bm!41300 (= c!115288 c!115289)))

(assert (=> bm!41300 (= call!41305 (apply!1539 (ite c!115289 (left!5112 (c!114997 v!6361)) (right!5442 (c!114997 v!6361))) e!380499))))

(declare-fun b!627354 () Bool)

(assert (=> b!627354 (= e!380498 e!380496)))

(declare-fun lt!266917 () Bool)

(declare-fun appendIndex!62 (List!6450 List!6450 Int) Bool)

(assert (=> b!627354 (= lt!266917 (appendIndex!62 (list!2716 (left!5112 (c!114997 v!6361))) (list!2716 (right!5442 (c!114997 v!6361))) from!852))))

(assert (=> b!627354 (= c!115289 (< from!852 (size!5041 (left!5112 (c!114997 v!6361)))))))

(declare-fun b!627355 () Bool)

(assert (=> b!627355 (= e!380499 (- from!852 (size!5041 (left!5112 (c!114997 v!6361)))))))

(assert (= (and d!219499 res!272026) b!627350))

(assert (= (and d!219499 c!115287) b!627352))

(assert (= (and d!219499 (not c!115287)) b!627354))

(assert (= (and b!627354 c!115289) b!627353))

(assert (= (and b!627354 (not c!115289)) b!627349))

(assert (= (or b!627353 b!627349) bm!41300))

(assert (= (and bm!41300 c!115288) b!627351))

(assert (= (and bm!41300 (not c!115288)) b!627355))

(assert (=> b!627350 m!894571))

(declare-fun m!895607 () Bool)

(assert (=> b!627352 m!895607))

(assert (=> b!627354 m!895099))

(assert (=> b!627354 m!895101))

(assert (=> b!627354 m!895099))

(assert (=> b!627354 m!895101))

(declare-fun m!895609 () Bool)

(assert (=> b!627354 m!895609))

(assert (=> b!627354 m!895593))

(declare-fun m!895611 () Bool)

(assert (=> bm!41300 m!895611))

(assert (=> b!627355 m!895593))

(assert (=> d!219499 m!894541))

(assert (=> d!219499 m!894541))

(declare-fun m!895613 () Bool)

(assert (=> d!219499 m!895613))

(assert (=> d!219135 d!219499))

(assert (=> b!626307 d!219331))

(declare-fun d!219501 () Bool)

(assert (=> d!219501 (= (list!2712 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136))) (list!2717 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136)))))))

(declare-fun bs!72301 () Bool)

(assert (= bs!72301 d!219501))

(declare-fun m!895615 () Bool)

(assert (=> bs!72301 m!895615))

(assert (=> b!626286 d!219501))

(declare-fun d!219503 () Bool)

(declare-fun lt!266919 () Int)

(assert (=> d!219503 (>= lt!266919 0)))

(declare-fun e!380500 () Int)

(assert (=> d!219503 (= lt!266919 e!380500)))

(declare-fun c!115290 () Bool)

(assert (=> d!219503 (= c!115290 ((_ is Nil!6440) lt!266782))))

(assert (=> d!219503 (= (size!5040 lt!266782) lt!266919)))

(declare-fun b!627356 () Bool)

(assert (=> b!627356 (= e!380500 0)))

(declare-fun b!627357 () Bool)

(assert (=> b!627357 (= e!380500 (+ 1 (size!5040 (t!82369 lt!266782))))))

(assert (= (and d!219503 c!115290) b!627356))

(assert (= (and d!219503 (not c!115290)) b!627357))

(declare-fun m!895617 () Bool)

(assert (=> b!627357 m!895617))

(assert (=> b!626472 d!219503))

(declare-fun d!219505 () Bool)

(declare-fun charsToBigInt!1 (List!6449) Int)

(assert (=> d!219505 (= (inv!17 (value!42398 separatorToken!136)) (= (charsToBigInt!1 (text!9835 (value!42398 separatorToken!136))) (value!42390 (value!42398 separatorToken!136))))))

(declare-fun bs!72302 () Bool)

(assert (= bs!72302 d!219505))

(declare-fun m!895619 () Bool)

(assert (=> bs!72302 m!895619))

(assert (=> b!626274 d!219505))

(assert (=> bm!41151 d!219331))

(declare-fun d!219507 () Bool)

(declare-fun lt!266920 () Token!2358)

(assert (=> d!219507 (contains!1505 (tail!859 lt!266688) lt!266920)))

(declare-fun e!380502 () Token!2358)

(assert (=> d!219507 (= lt!266920 e!380502)))

(declare-fun c!115291 () Bool)

(assert (=> d!219507 (= c!115291 (= (- from!852 1) 0))))

(declare-fun e!380501 () Bool)

(assert (=> d!219507 e!380501))

(declare-fun res!272027 () Bool)

(assert (=> d!219507 (=> (not res!272027) (not e!380501))))

(assert (=> d!219507 (= res!272027 (<= 0 (- from!852 1)))))

(assert (=> d!219507 (= (apply!1537 (tail!859 lt!266688) (- from!852 1)) lt!266920)))

(declare-fun b!627358 () Bool)

(assert (=> b!627358 (= e!380501 (< (- from!852 1) (size!5040 (tail!859 lt!266688))))))

(declare-fun b!627359 () Bool)

(assert (=> b!627359 (= e!380502 (head!1331 (tail!859 lt!266688)))))

(declare-fun b!627360 () Bool)

(assert (=> b!627360 (= e!380502 (apply!1537 (tail!859 (tail!859 lt!266688)) (- (- from!852 1) 1)))))

(assert (= (and d!219507 res!272027) b!627358))

(assert (= (and d!219507 c!115291) b!627359))

(assert (= (and d!219507 (not c!115291)) b!627360))

(assert (=> d!219507 m!894537))

(declare-fun m!895621 () Bool)

(assert (=> d!219507 m!895621))

(assert (=> b!627358 m!894537))

(declare-fun m!895623 () Bool)

(assert (=> b!627358 m!895623))

(assert (=> b!627359 m!894537))

(declare-fun m!895625 () Bool)

(assert (=> b!627359 m!895625))

(assert (=> b!627360 m!894537))

(declare-fun m!895627 () Bool)

(assert (=> b!627360 m!895627))

(assert (=> b!627360 m!895627))

(declare-fun m!895629 () Bool)

(assert (=> b!627360 m!895629))

(assert (=> b!626469 d!219507))

(declare-fun d!219509 () Bool)

(assert (=> d!219509 (= (tail!859 lt!266688) (t!82369 lt!266688))))

(assert (=> b!626469 d!219509))

(declare-fun b!627369 () Bool)

(declare-fun e!380507 () List!6448)

(assert (=> b!627369 (= e!380507 Nil!6438)))

(declare-fun b!627370 () Bool)

(declare-fun e!380508 () List!6448)

(assert (=> b!627370 (= e!380507 e!380508)))

(declare-fun c!115297 () Bool)

(assert (=> b!627370 (= c!115297 ((_ is Leaf!3242) (c!114995 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(declare-fun b!627371 () Bool)

(declare-fun list!2721 (IArray!4151) List!6448)

(assert (=> b!627371 (= e!380508 (list!2721 (xs!4712 (c!114995 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))))))

(declare-fun b!627372 () Bool)

(assert (=> b!627372 (= e!380508 (++!1778 (list!2717 (left!5111 (c!114995 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852)))))) (list!2717 (right!5441 (c!114995 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))))

(declare-fun d!219511 () Bool)

(declare-fun c!115296 () Bool)

(assert (=> d!219511 (= c!115296 ((_ is Empty!2075) (c!114995 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))))))

(assert (=> d!219511 (= (list!2717 (c!114995 (++!1775 (++!1775 (charsOf!902 (apply!1536 v!6361 from!852)) (charsOf!902 separatorToken!136)) (printWithSeparatorTokenRec!4 thiss!14007 v!6361 separatorToken!136 (+ 1 from!852))))) e!380507)))

(assert (= (and d!219511 c!115296) b!627369))

(assert (= (and d!219511 (not c!115296)) b!627370))

(assert (= (and b!627370 c!115297) b!627371))

(assert (= (and b!627370 (not c!115297)) b!627372))

(declare-fun m!895631 () Bool)

(assert (=> b!627371 m!895631))

(declare-fun m!895633 () Bool)

(assert (=> b!627372 m!895633))

(declare-fun m!895635 () Bool)

(assert (=> b!627372 m!895635))

(assert (=> b!627372 m!895633))

(assert (=> b!627372 m!895635))

(declare-fun m!895637 () Bool)

(assert (=> b!627372 m!895637))

(assert (=> d!219149 d!219511))

(declare-fun tp!195863 () Bool)

(declare-fun e!380514 () Bool)

(declare-fun b!627381 () Bool)

(declare-fun tp!195861 () Bool)

(assert (=> b!627381 (= e!380514 (and (inv!8231 (left!5111 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136))))) tp!195863 (inv!8231 (right!5441 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136))))) tp!195861))))

(declare-fun b!627383 () Bool)

(declare-fun e!380513 () Bool)

(declare-fun tp!195862 () Bool)

(assert (=> b!627383 (= e!380513 tp!195862)))

(declare-fun b!627382 () Bool)

(declare-fun inv!8242 (IArray!4151) Bool)

(assert (=> b!627382 (= e!380514 (and (inv!8242 (xs!4712 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136))))) e!380513))))

(assert (=> b!626292 (= tp!195735 (and (inv!8231 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136)))) e!380514))))

(assert (= (and b!626292 ((_ is Node!2075) (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136))))) b!627381))

(assert (= b!627382 b!627383))

(assert (= (and b!626292 ((_ is Leaf!3242) (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (value!42398 separatorToken!136))))) b!627382))

(declare-fun m!895639 () Bool)

(assert (=> b!627381 m!895639))

(declare-fun m!895641 () Bool)

(assert (=> b!627381 m!895641))

(declare-fun m!895643 () Bool)

(assert (=> b!627382 m!895643))

(assert (=> b!626292 m!894277))

(declare-fun e!380515 () Bool)

(assert (=> b!626520 (= tp!195790 e!380515)))

(declare-fun b!627385 () Bool)

(declare-fun tp!195864 () Bool)

(declare-fun tp!195868 () Bool)

(assert (=> b!627385 (= e!380515 (and tp!195864 tp!195868))))

(declare-fun b!627386 () Bool)

(declare-fun tp!195867 () Bool)

(assert (=> b!627386 (= e!380515 tp!195867)))

(declare-fun b!627387 () Bool)

(declare-fun tp!195866 () Bool)

(declare-fun tp!195865 () Bool)

(assert (=> b!627387 (= e!380515 (and tp!195866 tp!195865))))

(declare-fun b!627384 () Bool)

(assert (=> b!627384 (= e!380515 tp_is_empty!3625)))

(assert (= (and b!626520 ((_ is ElementMatch!1651) (reg!1980 (regex!1317 (rule!2113 separatorToken!136))))) b!627384))

(assert (= (and b!626520 ((_ is Concat!2993) (reg!1980 (regex!1317 (rule!2113 separatorToken!136))))) b!627385))

(assert (= (and b!626520 ((_ is Star!1651) (reg!1980 (regex!1317 (rule!2113 separatorToken!136))))) b!627386))

(assert (= (and b!626520 ((_ is Union!1651) (reg!1980 (regex!1317 (rule!2113 separatorToken!136))))) b!627387))

(declare-fun tp!195871 () Bool)

(declare-fun b!627388 () Bool)

(declare-fun tp!195870 () Bool)

(declare-fun e!380516 () Bool)

(assert (=> b!627388 (= e!380516 (and (inv!8223 (left!5112 (left!5112 (c!114997 v!6361)))) tp!195870 (inv!8223 (right!5442 (left!5112 (c!114997 v!6361)))) tp!195871))))

(declare-fun b!627390 () Bool)

(declare-fun e!380517 () Bool)

(declare-fun tp!195869 () Bool)

(assert (=> b!627390 (= e!380517 tp!195869)))

(declare-fun b!627389 () Bool)

(assert (=> b!627389 (= e!380516 (and (inv!8236 (xs!4713 (left!5112 (c!114997 v!6361)))) e!380517))))

(assert (=> b!626505 (= tp!195775 (and (inv!8223 (left!5112 (c!114997 v!6361))) e!380516))))

(assert (= (and b!626505 ((_ is Node!2076) (left!5112 (c!114997 v!6361)))) b!627388))

(assert (= b!627389 b!627390))

(assert (= (and b!626505 ((_ is Leaf!3243) (left!5112 (c!114997 v!6361)))) b!627389))

(declare-fun m!895645 () Bool)

(assert (=> b!627388 m!895645))

(declare-fun m!895647 () Bool)

(assert (=> b!627388 m!895647))

(declare-fun m!895649 () Bool)

(assert (=> b!627389 m!895649))

(assert (=> b!626505 m!894573))

(declare-fun tp!195874 () Bool)

(declare-fun tp!195873 () Bool)

(declare-fun b!627391 () Bool)

(declare-fun e!380518 () Bool)

(assert (=> b!627391 (= e!380518 (and (inv!8223 (left!5112 (right!5442 (c!114997 v!6361)))) tp!195873 (inv!8223 (right!5442 (right!5442 (c!114997 v!6361)))) tp!195874))))

(declare-fun b!627393 () Bool)

(declare-fun e!380519 () Bool)

(declare-fun tp!195872 () Bool)

(assert (=> b!627393 (= e!380519 tp!195872)))

(declare-fun b!627392 () Bool)

(assert (=> b!627392 (= e!380518 (and (inv!8236 (xs!4713 (right!5442 (c!114997 v!6361)))) e!380519))))

(assert (=> b!626505 (= tp!195776 (and (inv!8223 (right!5442 (c!114997 v!6361))) e!380518))))

(assert (= (and b!626505 ((_ is Node!2076) (right!5442 (c!114997 v!6361)))) b!627391))

(assert (= b!627392 b!627393))

(assert (= (and b!626505 ((_ is Leaf!3243) (right!5442 (c!114997 v!6361)))) b!627392))

(declare-fun m!895651 () Bool)

(assert (=> b!627391 m!895651))

(declare-fun m!895653 () Bool)

(assert (=> b!627391 m!895653))

(declare-fun m!895655 () Bool)

(assert (=> b!627392 m!895655))

(assert (=> b!626505 m!894575))

(declare-fun e!380520 () Bool)

(assert (=> b!626519 (= tp!195787 e!380520)))

(declare-fun b!627395 () Bool)

(declare-fun tp!195875 () Bool)

(declare-fun tp!195879 () Bool)

(assert (=> b!627395 (= e!380520 (and tp!195875 tp!195879))))

(declare-fun b!627396 () Bool)

(declare-fun tp!195878 () Bool)

(assert (=> b!627396 (= e!380520 tp!195878)))

(declare-fun b!627397 () Bool)

(declare-fun tp!195877 () Bool)

(declare-fun tp!195876 () Bool)

(assert (=> b!627397 (= e!380520 (and tp!195877 tp!195876))))

(declare-fun b!627394 () Bool)

(assert (=> b!627394 (= e!380520 tp_is_empty!3625)))

(assert (= (and b!626519 ((_ is ElementMatch!1651) (regOne!3814 (regex!1317 (rule!2113 separatorToken!136))))) b!627394))

(assert (= (and b!626519 ((_ is Concat!2993) (regOne!3814 (regex!1317 (rule!2113 separatorToken!136))))) b!627395))

(assert (= (and b!626519 ((_ is Star!1651) (regOne!3814 (regex!1317 (rule!2113 separatorToken!136))))) b!627396))

(assert (= (and b!626519 ((_ is Union!1651) (regOne!3814 (regex!1317 (rule!2113 separatorToken!136))))) b!627397))

(declare-fun e!380521 () Bool)

(assert (=> b!626519 (= tp!195791 e!380521)))

(declare-fun b!627399 () Bool)

(declare-fun tp!195880 () Bool)

(declare-fun tp!195884 () Bool)

(assert (=> b!627399 (= e!380521 (and tp!195880 tp!195884))))

(declare-fun b!627400 () Bool)

(declare-fun tp!195883 () Bool)

(assert (=> b!627400 (= e!380521 tp!195883)))

(declare-fun b!627401 () Bool)

(declare-fun tp!195882 () Bool)

(declare-fun tp!195881 () Bool)

(assert (=> b!627401 (= e!380521 (and tp!195882 tp!195881))))

(declare-fun b!627398 () Bool)

(assert (=> b!627398 (= e!380521 tp_is_empty!3625)))

(assert (= (and b!626519 ((_ is ElementMatch!1651) (regTwo!3814 (regex!1317 (rule!2113 separatorToken!136))))) b!627398))

(assert (= (and b!626519 ((_ is Concat!2993) (regTwo!3814 (regex!1317 (rule!2113 separatorToken!136))))) b!627399))

(assert (= (and b!626519 ((_ is Star!1651) (regTwo!3814 (regex!1317 (rule!2113 separatorToken!136))))) b!627400))

(assert (= (and b!626519 ((_ is Union!1651) (regTwo!3814 (regex!1317 (rule!2113 separatorToken!136))))) b!627401))

(declare-fun b!627402 () Bool)

(declare-fun e!380522 () Bool)

(declare-fun tp!195885 () Bool)

(assert (=> b!627402 (= e!380522 (and tp_is_empty!3625 tp!195885))))

(assert (=> b!626496 (= tp!195767 e!380522)))

(assert (= (and b!626496 ((_ is Cons!6438) (t!82367 (originalCharacters!1350 separatorToken!136)))) b!627402))

(declare-fun b!627403 () Bool)

(declare-fun tp!195886 () Bool)

(declare-fun e!380524 () Bool)

(declare-fun tp!195888 () Bool)

(assert (=> b!627403 (= e!380524 (and (inv!8231 (left!5111 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852)))))) tp!195888 (inv!8231 (right!5441 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852)))))) tp!195886))))

(declare-fun b!627405 () Bool)

(declare-fun e!380523 () Bool)

(declare-fun tp!195887 () Bool)

(assert (=> b!627405 (= e!380523 tp!195887)))

(declare-fun b!627404 () Bool)

(assert (=> b!627404 (= e!380524 (and (inv!8242 (xs!4712 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852)))))) e!380523))))

(assert (=> b!626479 (= tp!195764 (and (inv!8231 (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852))))) e!380524))))

(assert (= (and b!626479 ((_ is Node!2075) (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852)))))) b!627403))

(assert (= b!627404 b!627405))

(assert (= (and b!626479 ((_ is Leaf!3242) (c!114995 (dynLambda!3636 (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))) (value!42398 (apply!1536 v!6361 from!852)))))) b!627404))

(declare-fun m!895657 () Bool)

(assert (=> b!627403 m!895657))

(declare-fun m!895659 () Bool)

(assert (=> b!627403 m!895659))

(declare-fun m!895661 () Bool)

(assert (=> b!627404 m!895661))

(assert (=> b!626479 m!894553))

(declare-fun b!627419 () Bool)

(declare-fun b_free!18365 () Bool)

(declare-fun b_next!18381 () Bool)

(assert (=> b!627419 (= b_free!18365 (not b_next!18381))))

(declare-fun tp!195899 () Bool)

(declare-fun b_and!62159 () Bool)

(assert (=> b!627419 (= tp!195899 b_and!62159)))

(declare-fun b_free!18367 () Bool)

(declare-fun b_next!18383 () Bool)

(assert (=> b!627419 (= b_free!18367 (not b_next!18383))))

(declare-fun t!82409 () Bool)

(declare-fun tb!54439 () Bool)

(assert (=> (and b!627419 (= (toChars!2105 (transformation!1317 (rule!2113 (h!11841 (innerList!2134 (xs!4713 (c!114997 v!6361))))))) (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136)))) t!82409) tb!54439))

(declare-fun result!61506 () Bool)

(assert (= result!61506 result!61462))

(assert (=> d!219089 t!82409))

(declare-fun tb!54441 () Bool)

(declare-fun t!82411 () Bool)

(assert (=> (and b!627419 (= (toChars!2105 (transformation!1317 (rule!2113 (h!11841 (innerList!2134 (xs!4713 (c!114997 v!6361))))))) (toChars!2105 (transformation!1317 (rule!2113 (h!11841 (dropList!262 v!6361 from!852)))))) t!82411) tb!54441))

(declare-fun result!61508 () Bool)

(assert (= result!61508 result!61486))

(assert (=> d!219395 t!82411))

(declare-fun tb!54443 () Bool)

(declare-fun t!82413 () Bool)

(assert (=> (and b!627419 (= (toChars!2105 (transformation!1317 (rule!2113 (h!11841 (innerList!2134 (xs!4713 (c!114997 v!6361))))))) (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852))))) t!82413) tb!54443))

(declare-fun result!61510 () Bool)

(assert (= result!61510 result!61474))

(assert (=> d!219153 t!82413))

(assert (=> b!626286 t!82409))

(declare-fun tb!54445 () Bool)

(declare-fun t!82415 () Bool)

(assert (=> (and b!627419 (= (toChars!2105 (transformation!1317 (rule!2113 (h!11841 (innerList!2134 (xs!4713 (c!114997 v!6361))))))) (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 (+ 1 from!852)))))) t!82415) tb!54445))

(declare-fun result!61512 () Bool)

(assert (= result!61512 result!61500))

(assert (=> d!219487 t!82415))

(declare-fun tp!195903 () Bool)

(declare-fun b_and!62161 () Bool)

(assert (=> b!627419 (= tp!195903 (and (=> t!82409 result!61506) (=> t!82413 result!61510) (=> t!82411 result!61508) (=> t!82415 result!61512) b_and!62161))))

(declare-fun e!380542 () Bool)

(assert (=> b!626507 (= tp!195774 e!380542)))

(declare-fun b!627418 () Bool)

(declare-fun e!380539 () Bool)

(declare-fun tp!195900 () Bool)

(declare-fun e!380540 () Bool)

(assert (=> b!627418 (= e!380539 (and tp!195900 (inv!8218 (tag!1579 (rule!2113 (h!11841 (innerList!2134 (xs!4713 (c!114997 v!6361))))))) (inv!8226 (transformation!1317 (rule!2113 (h!11841 (innerList!2134 (xs!4713 (c!114997 v!6361))))))) e!380540))))

(assert (=> b!627419 (= e!380540 (and tp!195899 tp!195903))))

(declare-fun tp!195902 () Bool)

(declare-fun e!380538 () Bool)

(declare-fun b!627416 () Bool)

(assert (=> b!627416 (= e!380542 (and (inv!8225 (h!11841 (innerList!2134 (xs!4713 (c!114997 v!6361))))) e!380538 tp!195902))))

(declare-fun tp!195901 () Bool)

(declare-fun b!627417 () Bool)

(assert (=> b!627417 (= e!380538 (and (inv!21 (value!42398 (h!11841 (innerList!2134 (xs!4713 (c!114997 v!6361)))))) e!380539 tp!195901))))

(assert (= b!627418 b!627419))

(assert (= b!627417 b!627418))

(assert (= b!627416 b!627417))

(assert (= (and b!626507 ((_ is Cons!6440) (innerList!2134 (xs!4713 (c!114997 v!6361))))) b!627416))

(declare-fun m!895663 () Bool)

(assert (=> b!627418 m!895663))

(declare-fun m!895665 () Bool)

(assert (=> b!627418 m!895665))

(declare-fun m!895667 () Bool)

(assert (=> b!627416 m!895667))

(declare-fun m!895669 () Bool)

(assert (=> b!627417 m!895669))

(declare-fun e!380543 () Bool)

(assert (=> b!626521 (= tp!195789 e!380543)))

(declare-fun b!627421 () Bool)

(declare-fun tp!195904 () Bool)

(declare-fun tp!195908 () Bool)

(assert (=> b!627421 (= e!380543 (and tp!195904 tp!195908))))

(declare-fun b!627422 () Bool)

(declare-fun tp!195907 () Bool)

(assert (=> b!627422 (= e!380543 tp!195907)))

(declare-fun b!627423 () Bool)

(declare-fun tp!195906 () Bool)

(declare-fun tp!195905 () Bool)

(assert (=> b!627423 (= e!380543 (and tp!195906 tp!195905))))

(declare-fun b!627420 () Bool)

(assert (=> b!627420 (= e!380543 tp_is_empty!3625)))

(assert (= (and b!626521 ((_ is ElementMatch!1651) (regOne!3815 (regex!1317 (rule!2113 separatorToken!136))))) b!627420))

(assert (= (and b!626521 ((_ is Concat!2993) (regOne!3815 (regex!1317 (rule!2113 separatorToken!136))))) b!627421))

(assert (= (and b!626521 ((_ is Star!1651) (regOne!3815 (regex!1317 (rule!2113 separatorToken!136))))) b!627422))

(assert (= (and b!626521 ((_ is Union!1651) (regOne!3815 (regex!1317 (rule!2113 separatorToken!136))))) b!627423))

(declare-fun e!380544 () Bool)

(assert (=> b!626521 (= tp!195788 e!380544)))

(declare-fun b!627425 () Bool)

(declare-fun tp!195909 () Bool)

(declare-fun tp!195913 () Bool)

(assert (=> b!627425 (= e!380544 (and tp!195909 tp!195913))))

(declare-fun b!627426 () Bool)

(declare-fun tp!195912 () Bool)

(assert (=> b!627426 (= e!380544 tp!195912)))

(declare-fun b!627427 () Bool)

(declare-fun tp!195911 () Bool)

(declare-fun tp!195910 () Bool)

(assert (=> b!627427 (= e!380544 (and tp!195911 tp!195910))))

(declare-fun b!627424 () Bool)

(assert (=> b!627424 (= e!380544 tp_is_empty!3625)))

(assert (= (and b!626521 ((_ is ElementMatch!1651) (regTwo!3815 (regex!1317 (rule!2113 separatorToken!136))))) b!627424))

(assert (= (and b!626521 ((_ is Concat!2993) (regTwo!3815 (regex!1317 (rule!2113 separatorToken!136))))) b!627425))

(assert (= (and b!626521 ((_ is Star!1651) (regTwo!3815 (regex!1317 (rule!2113 separatorToken!136))))) b!627426))

(assert (= (and b!626521 ((_ is Union!1651) (regTwo!3815 (regex!1317 (rule!2113 separatorToken!136))))) b!627427))

(declare-fun b_lambda!24723 () Bool)

(assert (= b_lambda!24707 (or (and b!626212 b_free!18359 (= (toChars!2105 (transformation!1317 (rule!2113 separatorToken!136))) (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))))) (and b!627419 b_free!18367 (= (toChars!2105 (transformation!1317 (rule!2113 (h!11841 (innerList!2134 (xs!4713 (c!114997 v!6361))))))) (toChars!2105 (transformation!1317 (rule!2113 (apply!1536 v!6361 from!852)))))) b_lambda!24723)))

(check-sat (not b!627297) (not d!219507) (not d!219439) (not d!219495) (not b!627416) (not b_lambda!24709) (not b_next!18373) (not d!219431) (not d!219349) (not b!627021) (not b!627117) (not b!627334) (not d!219433) (not b!626479) (not b!627388) (not bm!41297) (not b!627114) (not b_next!18375) (not d!219469) (not d!219485) (not b!627256) (not b!626952) (not b!627385) (not b!627405) (not bm!41275) (not d!219403) (not b!627354) (not d!219505) (not b!627262) (not b!627259) (not d!219429) (not b!627308) (not d!219391) (not d!219457) (not b!627425) (not b!626818) (not d!219455) (not d!219337) (not b!627052) (not b!627313) (not b!627020) (not b_next!18381) (not b!627422) (not b!627330) (not b!626816) (not b!627295) (not b!627395) (not b!627237) (not b!627404) (not b!627301) (not b!626988) (not b!627427) (not b!627355) (not b!627399) (not d!219471) (not b!626973) (not b!627418) (not d!219481) (not d!219363) (not b!626980) (not b!627296) (not b!627018) (not d!219499) (not bm!41295) (not b!627089) (not b!627291) (not b!627321) (not b!627234) (not b!627316) (not d!219449) (not b!627392) (not b!627382) (not b!627393) (not b!627240) (not d!219465) (not b!627002) (not b!627360) (not b!627263) (not b!627293) (not b!627387) (not d!219451) (not b!626812) (not b!626505) (not b!627312) (not tb!54437) (not b!627098) (not d!219401) (not b!627358) (not d!219399) (not b!626950) (not b!627389) (not b!626946) (not b!627252) (not b!627426) (not b!627371) (not d!219383) (not b!627332) (not b!627040) (not b!627112) (not b!627304) (not b_lambda!24721) (not b!627038) (not b!627350) b_and!62159 (not d!219269) (not tb!54427) (not b!626958) (not d!219467) (not d!219339) (not b!627391) (not d!219405) (not bm!41268) tp_is_empty!3625 (not d!219475) (not b!627230) (not b!627033) (not b!627421) (not b!627109) (not b!627357) (not bm!41269) (not bm!41278) (not b!627072) (not b!627381) (not d!219473) (not b!627292) (not b!627074) (not d!219377) (not b!627071) (not b!627265) (not d!219497) (not b!627274) (not d!219453) (not b!627400) (not b!627298) (not bm!41293) (not b!627320) (not b!627019) (not bm!41261) (not b!627423) (not b!627270) (not b!627086) (not b!627249) (not b!626813) (not b!627107) (not b!627386) (not b!627277) (not bm!41270) (not b!627359) (not b_lambda!24723) (not d!219483) (not d!219353) (not b!627352) (not bm!41286) (not bm!41292) (not b!627314) b_and!62161 (not b!627255) (not b!626994) (not d!219345) (not b!627253) (not bm!41285) (not b!627322) (not b!627287) (not b!627281) (not b!626942) (not bm!41291) (not b!627034) (not b!627022) (not b!627397) (not bm!41294) (not b!627044) (not d!219333) (not b!626974) (not b!627250) (not d!219347) (not b!627243) (not b!627073) (not d!219351) (not b!627390) (not b!627110) (not b!627116) (not d!219501) b_and!62131 (not d!219487) (not d!219389) (not b!627046) (not b!627372) (not bm!41296) (not b!627318) (not b!627284) (not d!219387) (not bm!41280) (not b!627095) b_and!62157 (not b!627258) (not b!626815) (not d!219395) (not d!219435) (not b!627036) (not b!627315) (not b!626982) (not d!219441) (not b!626999) (not d!219381) (not b!627319) (not b!627070) (not b!626292) (not b!627417) (not bm!41263) (not b!627069) (not b_next!18383) (not b!627083) (not b!627383) (not d!219479) (not b!626996) (not b!626944) (not bm!41279) (not b!627311) (not d!219477) (not b!627396) (not b!627310) (not b!627241) (not b!627023) (not b!627403) (not b!627081) (not b!627294) (not b!627317) (not b!627333) (not b!626819) (not b!627401) (not bm!41274) (not b_lambda!24717) (not bm!41300) (not bm!41262) (not b!627402) (not b!627238) (not d!219397) (not bm!41287) (not b!627227) (not b_lambda!24711))
(check-sat (not b_next!18373) (not b_next!18375) (not b_next!18381) b_and!62159 b_and!62161 b_and!62131 b_and!62157 (not b_next!18383))
