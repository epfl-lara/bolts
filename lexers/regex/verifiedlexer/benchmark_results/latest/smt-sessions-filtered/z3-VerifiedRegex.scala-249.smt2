; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3810 () Bool)

(assert start!3810)

(declare-fun b!51867 () Bool)

(declare-fun b_free!1649 () Bool)

(declare-fun b_next!1649 () Bool)

(assert (=> b!51867 (= b_free!1649 (not b_next!1649))))

(declare-fun tp!33896 () Bool)

(declare-fun b_and!1699 () Bool)

(assert (=> b!51867 (= tp!33896 b_and!1699)))

(declare-fun b_free!1651 () Bool)

(declare-fun b_next!1651 () Bool)

(assert (=> b!51867 (= b_free!1651 (not b_next!1651))))

(declare-fun tp!33894 () Bool)

(declare-fun b_and!1701 () Bool)

(assert (=> b!51867 (= tp!33894 b_and!1701)))

(declare-fun b!51859 () Bool)

(declare-fun e!30509 () Bool)

(declare-fun e!30507 () Bool)

(declare-fun tp!33892 () Bool)

(assert (=> b!51859 (= e!30509 (and e!30507 tp!33892))))

(declare-fun b!51860 () Bool)

(declare-fun res!33906 () Bool)

(declare-fun e!30510 () Bool)

(assert (=> b!51860 (=> res!33906 e!30510)))

(declare-datatypes ((List!1065 0))(
  ( (Nil!1059) (Cons!1059 (h!6456 (_ BitVec 16)) (t!17292 List!1065)) )
))
(declare-datatypes ((TokenValue!219 0))(
  ( (FloatLiteralValue!438 (text!1978 List!1065)) (TokenValueExt!218 (__x!1533 Int)) (Broken!1095 (value!9398 List!1065)) (Object!224) (End!219) (Def!219) (Underscore!219) (Match!219) (Else!219) (Error!219) (Case!219) (If!219) (Extends!219) (Abstract!219) (Class!219) (Val!219) (DelimiterValue!438 (del!279 List!1065)) (KeywordValue!225 (value!9399 List!1065)) (CommentValue!438 (value!9400 List!1065)) (WhitespaceValue!438 (value!9401 List!1065)) (IndentationValue!219 (value!9402 List!1065)) (String!1486) (Int32!219) (Broken!1096 (value!9403 List!1065)) (Boolean!220) (Unit!603) (OperatorValue!222 (op!279 List!1065)) (IdentifierValue!438 (value!9404 List!1065)) (IdentifierValue!439 (value!9405 List!1065)) (WhitespaceValue!439 (value!9406 List!1065)) (True!438) (False!438) (Broken!1097 (value!9407 List!1065)) (Broken!1098 (value!9408 List!1065)) (True!439) (RightBrace!219) (RightBracket!219) (Colon!219) (Null!219) (Comma!219) (LeftBracket!219) (False!439) (LeftBrace!219) (ImaginaryLiteralValue!219 (text!1979 List!1065)) (StringLiteralValue!657 (value!9409 List!1065)) (EOFValue!219 (value!9410 List!1065)) (IdentValue!219 (value!9411 List!1065)) (DelimiterValue!439 (value!9412 List!1065)) (DedentValue!219 (value!9413 List!1065)) (NewLineValue!219 (value!9414 List!1065)) (IntegerValue!657 (value!9415 (_ BitVec 32)) (text!1980 List!1065)) (IntegerValue!658 (value!9416 Int) (text!1981 List!1065)) (Times!219) (Or!219) (Equal!219) (Minus!219) (Broken!1099 (value!9417 List!1065)) (And!219) (Div!219) (LessEqual!219) (Mod!219) (Concat!516) (Not!219) (Plus!219) (SpaceValue!219 (value!9418 List!1065)) (IntegerValue!659 (value!9419 Int) (text!1982 List!1065)) (StringLiteralValue!658 (text!1983 List!1065)) (FloatLiteralValue!439 (text!1984 List!1065)) (BytesLiteralValue!219 (value!9420 List!1065)) (CommentValue!439 (value!9421 List!1065)) (StringLiteralValue!659 (value!9422 List!1065)) (ErrorTokenValue!219 (msg!280 List!1065)) )
))
(declare-datatypes ((String!1487 0))(
  ( (String!1488 (value!9423 String)) )
))
(declare-datatypes ((C!1516 0))(
  ( (C!1517 (val!365 Int)) )
))
(declare-datatypes ((List!1066 0))(
  ( (Nil!1060) (Cons!1060 (h!6457 C!1516) (t!17293 List!1066)) )
))
(declare-datatypes ((IArray!525 0))(
  ( (IArray!526 (innerList!320 List!1066)) )
))
(declare-datatypes ((Conc!262 0))(
  ( (Node!262 (left!797 Conc!262) (right!1127 Conc!262) (csize!754 Int) (cheight!473 Int)) (Leaf!512 (xs!2841 IArray!525) (csize!755 Int)) (Empty!262) )
))
(declare-datatypes ((Regex!297 0))(
  ( (ElementMatch!297 (c!16780 C!1516)) (Concat!517 (regOne!1106 Regex!297) (regTwo!1106 Regex!297)) (EmptyExpr!297) (Star!297 (reg!626 Regex!297)) (EmptyLang!297) (Union!297 (regOne!1107 Regex!297) (regTwo!1107 Regex!297)) )
))
(declare-datatypes ((BalanceConc!528 0))(
  ( (BalanceConc!529 (c!16781 Conc!262)) )
))
(declare-datatypes ((TokenValueInjection!262 0))(
  ( (TokenValueInjection!263 (toValue!708 Int) (toChars!567 Int)) )
))
(declare-datatypes ((Rule!258 0))(
  ( (Rule!259 (regex!229 Regex!297) (tag!407 String!1487) (isSeparator!229 Bool) (transformation!229 TokenValueInjection!262)) )
))
(declare-datatypes ((Token!222 0))(
  ( (Token!223 (value!9424 TokenValue!219) (rule!704 Rule!258) (size!971 Int) (originalCharacters!282 List!1066)) )
))
(declare-datatypes ((List!1067 0))(
  ( (Nil!1061) (Cons!1061 (h!6458 Token!222) (t!17294 List!1067)) )
))
(declare-fun lt!9233 () List!1067)

(declare-fun lt!9232 () Token!222)

(declare-fun contains!121 (List!1067 Token!222) Bool)

(assert (=> b!51860 (= res!33906 (not (contains!121 lt!9233 lt!9232)))))

(declare-fun b!51861 () Bool)

(declare-fun res!33901 () Bool)

(declare-fun e!30506 () Bool)

(assert (=> b!51861 (=> (not res!33901) (not e!30506))))

(declare-datatypes ((List!1068 0))(
  ( (Nil!1062) (Cons!1062 (h!6459 Rule!258) (t!17295 List!1068)) )
))
(declare-fun rules!1069 () List!1068)

(declare-fun isEmpty!215 (List!1068) Bool)

(assert (=> b!51861 (= res!33901 (not (isEmpty!215 rules!1069)))))

(declare-fun b!51862 () Bool)

(declare-fun e!30503 () Bool)

(declare-datatypes ((IArray!527 0))(
  ( (IArray!528 (innerList!321 List!1067)) )
))
(declare-datatypes ((Conc!263 0))(
  ( (Node!263 (left!798 Conc!263) (right!1128 Conc!263) (csize!756 Int) (cheight!474 Int)) (Leaf!513 (xs!2842 IArray!527) (csize!757 Int)) (Empty!263) )
))
(declare-datatypes ((BalanceConc!530 0))(
  ( (BalanceConc!531 (c!16782 Conc!263)) )
))
(declare-fun v!6227 () BalanceConc!530)

(declare-fun tp!33895 () Bool)

(declare-fun inv!1394 (Conc!263) Bool)

(assert (=> b!51862 (= e!30503 (and (inv!1394 (c!16782 v!6227)) tp!33895))))

(declare-fun b!51863 () Bool)

(declare-fun from!821 () Int)

(declare-fun contains!122 (BalanceConc!530 Token!222) Bool)

(declare-fun apply!106 (BalanceConc!530 Int) Token!222)

(assert (=> b!51863 (= e!30510 (contains!122 v!6227 (apply!106 v!6227 (+ 1 from!821))))))

(declare-fun b!51864 () Bool)

(declare-fun res!33899 () Bool)

(assert (=> b!51864 (=> (not res!33899) (not e!30506))))

(declare-fun lt!9235 () Int)

(assert (=> b!51864 (= res!33899 (< from!821 (- lt!9235 1)))))

(declare-fun b!51865 () Bool)

(assert (=> b!51865 (= e!30506 (not e!30510))))

(declare-fun res!33900 () Bool)

(assert (=> b!51865 (=> res!33900 e!30510)))

(assert (=> b!51865 (= res!33900 (not (contains!122 v!6227 lt!9232)))))

(assert (=> b!51865 (= lt!9232 (apply!106 v!6227 from!821))))

(declare-fun lt!9234 () List!1067)

(declare-fun tail!69 (List!1067) List!1067)

(declare-fun drop!44 (List!1067 Int) List!1067)

(assert (=> b!51865 (= (tail!69 lt!9234) (drop!44 lt!9233 (+ 2 from!821)))))

(declare-datatypes ((Unit!604 0))(
  ( (Unit!605) )
))
(declare-fun lt!9237 () Unit!604)

(declare-fun lemmaDropTail!40 (List!1067 Int) Unit!604)

(assert (=> b!51865 (= lt!9237 (lemmaDropTail!40 lt!9233 (+ 1 from!821)))))

(declare-fun lt!9236 () List!1067)

(assert (=> b!51865 (= (tail!69 lt!9236) lt!9234)))

(declare-fun lt!9231 () Unit!604)

(assert (=> b!51865 (= lt!9231 (lemmaDropTail!40 lt!9233 from!821))))

(declare-fun head!384 (List!1067) Token!222)

(declare-fun apply!107 (List!1067 Int) Token!222)

(assert (=> b!51865 (= (head!384 lt!9234) (apply!107 lt!9233 (+ 1 from!821)))))

(assert (=> b!51865 (= lt!9234 (drop!44 lt!9233 (+ 1 from!821)))))

(declare-fun lt!9230 () Unit!604)

(declare-fun lemmaDropApply!44 (List!1067 Int) Unit!604)

(assert (=> b!51865 (= lt!9230 (lemmaDropApply!44 lt!9233 (+ 1 from!821)))))

(assert (=> b!51865 (= (head!384 lt!9236) (apply!107 lt!9233 from!821))))

(assert (=> b!51865 (= lt!9236 (drop!44 lt!9233 from!821))))

(declare-fun lt!9238 () Unit!604)

(assert (=> b!51865 (= lt!9238 (lemmaDropApply!44 lt!9233 from!821))))

(declare-fun list!270 (BalanceConc!530) List!1067)

(assert (=> b!51865 (= lt!9233 (list!270 v!6227))))

(declare-fun b!51866 () Bool)

(declare-fun e!30504 () Bool)

(declare-fun tp!33893 () Bool)

(declare-fun inv!1390 (String!1487) Bool)

(declare-fun inv!1395 (TokenValueInjection!262) Bool)

(assert (=> b!51866 (= e!30507 (and tp!33893 (inv!1390 (tag!407 (h!6459 rules!1069))) (inv!1395 (transformation!229 (h!6459 rules!1069))) e!30504))))

(assert (=> b!51867 (= e!30504 (and tp!33896 tp!33894))))

(declare-fun b!51868 () Bool)

(declare-fun res!33902 () Bool)

(assert (=> b!51868 (=> (not res!33902) (not e!30506))))

(declare-datatypes ((LexerInterface!121 0))(
  ( (LexerInterfaceExt!118 (__x!1534 Int)) (Lexer!119) )
))
(declare-fun thiss!11059 () LexerInterface!121)

(declare-fun rulesProduceEachTokenIndividually!59 (LexerInterface!121 List!1068 BalanceConc!530) Bool)

(assert (=> b!51868 (= res!33902 (rulesProduceEachTokenIndividually!59 thiss!11059 rules!1069 v!6227))))

(declare-fun b!51869 () Bool)

(declare-fun res!33905 () Bool)

(assert (=> b!51869 (=> (not res!33905) (not e!30506))))

(declare-fun rulesInvariant!115 (LexerInterface!121 List!1068) Bool)

(assert (=> b!51869 (= res!33905 (rulesInvariant!115 thiss!11059 rules!1069))))

(declare-fun b!51870 () Bool)

(declare-fun e!30505 () Bool)

(assert (=> b!51870 (= e!30505 e!30506)))

(declare-fun res!33904 () Bool)

(assert (=> b!51870 (=> (not res!33904) (not e!30506))))

(assert (=> b!51870 (= res!33904 (<= from!821 lt!9235))))

(declare-fun size!972 (BalanceConc!530) Int)

(assert (=> b!51870 (= lt!9235 (size!972 v!6227))))

(declare-fun res!33903 () Bool)

(assert (=> start!3810 (=> (not res!33903) (not e!30505))))

(get-info :version)

(assert (=> start!3810 (= res!33903 (and ((_ is Lexer!119) thiss!11059) (>= from!821 0)))))

(assert (=> start!3810 e!30505))

(assert (=> start!3810 true))

(declare-fun inv!1396 (BalanceConc!530) Bool)

(assert (=> start!3810 (and (inv!1396 v!6227) e!30503)))

(assert (=> start!3810 e!30509))

(assert (= (and start!3810 res!33903) b!51870))

(assert (= (and b!51870 res!33904) b!51861))

(assert (= (and b!51861 res!33901) b!51869))

(assert (= (and b!51869 res!33905) b!51868))

(assert (= (and b!51868 res!33902) b!51864))

(assert (= (and b!51864 res!33899) b!51865))

(assert (= (and b!51865 (not res!33900)) b!51860))

(assert (= (and b!51860 (not res!33906)) b!51863))

(assert (= start!3810 b!51862))

(assert (= b!51866 b!51867))

(assert (= b!51859 b!51866))

(assert (= (and start!3810 ((_ is Cons!1062) rules!1069)) b!51859))

(declare-fun m!26192 () Bool)

(assert (=> start!3810 m!26192))

(declare-fun m!26194 () Bool)

(assert (=> b!51862 m!26194))

(declare-fun m!26196 () Bool)

(assert (=> b!51866 m!26196))

(declare-fun m!26198 () Bool)

(assert (=> b!51866 m!26198))

(declare-fun m!26200 () Bool)

(assert (=> b!51860 m!26200))

(declare-fun m!26202 () Bool)

(assert (=> b!51868 m!26202))

(declare-fun m!26204 () Bool)

(assert (=> b!51870 m!26204))

(declare-fun m!26206 () Bool)

(assert (=> b!51865 m!26206))

(declare-fun m!26208 () Bool)

(assert (=> b!51865 m!26208))

(declare-fun m!26210 () Bool)

(assert (=> b!51865 m!26210))

(declare-fun m!26212 () Bool)

(assert (=> b!51865 m!26212))

(declare-fun m!26214 () Bool)

(assert (=> b!51865 m!26214))

(declare-fun m!26216 () Bool)

(assert (=> b!51865 m!26216))

(declare-fun m!26218 () Bool)

(assert (=> b!51865 m!26218))

(declare-fun m!26220 () Bool)

(assert (=> b!51865 m!26220))

(declare-fun m!26222 () Bool)

(assert (=> b!51865 m!26222))

(declare-fun m!26224 () Bool)

(assert (=> b!51865 m!26224))

(declare-fun m!26226 () Bool)

(assert (=> b!51865 m!26226))

(declare-fun m!26228 () Bool)

(assert (=> b!51865 m!26228))

(declare-fun m!26230 () Bool)

(assert (=> b!51865 m!26230))

(declare-fun m!26232 () Bool)

(assert (=> b!51865 m!26232))

(declare-fun m!26234 () Bool)

(assert (=> b!51865 m!26234))

(declare-fun m!26236 () Bool)

(assert (=> b!51865 m!26236))

(declare-fun m!26238 () Bool)

(assert (=> b!51869 m!26238))

(declare-fun m!26240 () Bool)

(assert (=> b!51863 m!26240))

(assert (=> b!51863 m!26240))

(declare-fun m!26242 () Bool)

(assert (=> b!51863 m!26242))

(declare-fun m!26244 () Bool)

(assert (=> b!51861 m!26244))

(check-sat (not b!51859) (not b_next!1649) (not b!51869) b_and!1701 (not b!51861) (not b!51870) (not start!3810) (not b_next!1651) (not b!51860) (not b!51865) (not b!51868) (not b!51863) (not b!51862) (not b!51866) b_and!1699)
(check-sat b_and!1701 b_and!1699 (not b_next!1649) (not b_next!1651))
(get-model)

(declare-fun d!6278 () Bool)

(assert (=> d!6278 (= (isEmpty!215 rules!1069) ((_ is Nil!1062) rules!1069))))

(assert (=> b!51861 d!6278))

(declare-fun d!6280 () Bool)

(assert (=> d!6280 (= (inv!1390 (tag!407 (h!6459 rules!1069))) (= (mod (str.len (value!9423 (tag!407 (h!6459 rules!1069)))) 2) 0))))

(assert (=> b!51866 d!6280))

(declare-fun d!6290 () Bool)

(declare-fun res!33940 () Bool)

(declare-fun e!30564 () Bool)

(assert (=> d!6290 (=> (not res!33940) (not e!30564))))

(declare-fun semiInverseModEq!18 (Int Int) Bool)

(assert (=> d!6290 (= res!33940 (semiInverseModEq!18 (toChars!567 (transformation!229 (h!6459 rules!1069))) (toValue!708 (transformation!229 (h!6459 rules!1069)))))))

(assert (=> d!6290 (= (inv!1395 (transformation!229 (h!6459 rules!1069))) e!30564)))

(declare-fun b!51948 () Bool)

(declare-fun equivClasses!14 (Int Int) Bool)

(assert (=> b!51948 (= e!30564 (equivClasses!14 (toChars!567 (transformation!229 (h!6459 rules!1069))) (toValue!708 (transformation!229 (h!6459 rules!1069)))))))

(assert (= (and d!6290 res!33940) b!51948))

(declare-fun m!26324 () Bool)

(assert (=> d!6290 m!26324))

(declare-fun m!26326 () Bool)

(assert (=> b!51948 m!26326))

(assert (=> b!51866 d!6290))

(declare-fun d!6302 () Bool)

(declare-fun lt!9272 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!28 (List!1067) (InoxSet Token!222))

(assert (=> d!6302 (= lt!9272 (select (content!28 lt!9233) lt!9232))))

(declare-fun e!30576 () Bool)

(assert (=> d!6302 (= lt!9272 e!30576)))

(declare-fun res!33951 () Bool)

(assert (=> d!6302 (=> (not res!33951) (not e!30576))))

(assert (=> d!6302 (= res!33951 ((_ is Cons!1061) lt!9233))))

(assert (=> d!6302 (= (contains!121 lt!9233 lt!9232) lt!9272)))

(declare-fun b!51959 () Bool)

(declare-fun e!30575 () Bool)

(assert (=> b!51959 (= e!30576 e!30575)))

(declare-fun res!33952 () Bool)

(assert (=> b!51959 (=> res!33952 e!30575)))

(assert (=> b!51959 (= res!33952 (= (h!6458 lt!9233) lt!9232))))

(declare-fun b!51960 () Bool)

(assert (=> b!51960 (= e!30575 (contains!121 (t!17294 lt!9233) lt!9232))))

(assert (= (and d!6302 res!33951) b!51959))

(assert (= (and b!51959 (not res!33952)) b!51960))

(declare-fun m!26340 () Bool)

(assert (=> d!6302 m!26340))

(declare-fun m!26342 () Bool)

(assert (=> d!6302 m!26342))

(declare-fun m!26344 () Bool)

(assert (=> b!51960 m!26344))

(assert (=> b!51860 d!6302))

(declare-fun d!6310 () Bool)

(declare-fun lt!9275 () Token!222)

(assert (=> d!6310 (contains!121 lt!9233 lt!9275)))

(declare-fun e!30582 () Token!222)

(assert (=> d!6310 (= lt!9275 e!30582)))

(declare-fun c!16809 () Bool)

(assert (=> d!6310 (= c!16809 (= (+ 1 from!821) 0))))

(declare-fun e!30581 () Bool)

(assert (=> d!6310 e!30581))

(declare-fun res!33955 () Bool)

(assert (=> d!6310 (=> (not res!33955) (not e!30581))))

(assert (=> d!6310 (= res!33955 (<= 0 (+ 1 from!821)))))

(assert (=> d!6310 (= (apply!107 lt!9233 (+ 1 from!821)) lt!9275)))

(declare-fun b!51967 () Bool)

(declare-fun size!975 (List!1067) Int)

(assert (=> b!51967 (= e!30581 (< (+ 1 from!821) (size!975 lt!9233)))))

(declare-fun b!51968 () Bool)

(assert (=> b!51968 (= e!30582 (head!384 lt!9233))))

(declare-fun b!51969 () Bool)

(assert (=> b!51969 (= e!30582 (apply!107 (tail!69 lt!9233) (- (+ 1 from!821) 1)))))

(assert (= (and d!6310 res!33955) b!51967))

(assert (= (and d!6310 c!16809) b!51968))

(assert (= (and d!6310 (not c!16809)) b!51969))

(declare-fun m!26346 () Bool)

(assert (=> d!6310 m!26346))

(declare-fun m!26348 () Bool)

(assert (=> b!51967 m!26348))

(declare-fun m!26350 () Bool)

(assert (=> b!51968 m!26350))

(declare-fun m!26352 () Bool)

(assert (=> b!51969 m!26352))

(assert (=> b!51969 m!26352))

(declare-fun m!26354 () Bool)

(assert (=> b!51969 m!26354))

(assert (=> b!51865 d!6310))

(declare-fun d!6312 () Bool)

(declare-fun list!272 (Conc!263) List!1067)

(assert (=> d!6312 (= (list!270 v!6227) (list!272 (c!16782 v!6227)))))

(declare-fun bs!6681 () Bool)

(assert (= bs!6681 d!6312))

(declare-fun m!26356 () Bool)

(assert (=> bs!6681 m!26356))

(assert (=> b!51865 d!6312))

(declare-fun d!6314 () Bool)

(assert (=> d!6314 (= (head!384 (drop!44 lt!9233 (+ 1 from!821))) (apply!107 lt!9233 (+ 1 from!821)))))

(declare-fun lt!9278 () Unit!604)

(declare-fun choose!1184 (List!1067 Int) Unit!604)

(assert (=> d!6314 (= lt!9278 (choose!1184 lt!9233 (+ 1 from!821)))))

(declare-fun e!30585 () Bool)

(assert (=> d!6314 e!30585))

(declare-fun res!33958 () Bool)

(assert (=> d!6314 (=> (not res!33958) (not e!30585))))

(assert (=> d!6314 (= res!33958 (>= (+ 1 from!821) 0))))

(assert (=> d!6314 (= (lemmaDropApply!44 lt!9233 (+ 1 from!821)) lt!9278)))

(declare-fun b!51972 () Bool)

(assert (=> b!51972 (= e!30585 (< (+ 1 from!821) (size!975 lt!9233)))))

(assert (= (and d!6314 res!33958) b!51972))

(assert (=> d!6314 m!26208))

(assert (=> d!6314 m!26208))

(declare-fun m!26358 () Bool)

(assert (=> d!6314 m!26358))

(assert (=> d!6314 m!26212))

(declare-fun m!26360 () Bool)

(assert (=> d!6314 m!26360))

(assert (=> b!51972 m!26348))

(assert (=> b!51865 d!6314))

(declare-fun d!6316 () Bool)

(assert (=> d!6316 (= (tail!69 (drop!44 lt!9233 from!821)) (drop!44 lt!9233 (+ from!821 1)))))

(declare-fun lt!9281 () Unit!604)

(declare-fun choose!1185 (List!1067 Int) Unit!604)

(assert (=> d!6316 (= lt!9281 (choose!1185 lt!9233 from!821))))

(declare-fun e!30588 () Bool)

(assert (=> d!6316 e!30588))

(declare-fun res!33961 () Bool)

(assert (=> d!6316 (=> (not res!33961) (not e!30588))))

(assert (=> d!6316 (= res!33961 (>= from!821 0))))

(assert (=> d!6316 (= (lemmaDropTail!40 lt!9233 from!821) lt!9281)))

(declare-fun b!51975 () Bool)

(assert (=> b!51975 (= e!30588 (< from!821 (size!975 lt!9233)))))

(assert (= (and d!6316 res!33961) b!51975))

(assert (=> d!6316 m!26226))

(assert (=> d!6316 m!26226))

(declare-fun m!26362 () Bool)

(assert (=> d!6316 m!26362))

(declare-fun m!26364 () Bool)

(assert (=> d!6316 m!26364))

(declare-fun m!26366 () Bool)

(assert (=> d!6316 m!26366))

(assert (=> b!51975 m!26348))

(assert (=> b!51865 d!6316))

(declare-fun d!6318 () Bool)

(assert (=> d!6318 (= (tail!69 lt!9234) (t!17294 lt!9234))))

(assert (=> b!51865 d!6318))

(declare-fun d!6320 () Bool)

(declare-fun lt!9282 () Token!222)

(assert (=> d!6320 (contains!121 lt!9233 lt!9282)))

(declare-fun e!30590 () Token!222)

(assert (=> d!6320 (= lt!9282 e!30590)))

(declare-fun c!16810 () Bool)

(assert (=> d!6320 (= c!16810 (= from!821 0))))

(declare-fun e!30589 () Bool)

(assert (=> d!6320 e!30589))

(declare-fun res!33962 () Bool)

(assert (=> d!6320 (=> (not res!33962) (not e!30589))))

(assert (=> d!6320 (= res!33962 (<= 0 from!821))))

(assert (=> d!6320 (= (apply!107 lt!9233 from!821) lt!9282)))

(declare-fun b!51976 () Bool)

(assert (=> b!51976 (= e!30589 (< from!821 (size!975 lt!9233)))))

(declare-fun b!51977 () Bool)

(assert (=> b!51977 (= e!30590 (head!384 lt!9233))))

(declare-fun b!51978 () Bool)

(assert (=> b!51978 (= e!30590 (apply!107 (tail!69 lt!9233) (- from!821 1)))))

(assert (= (and d!6320 res!33962) b!51976))

(assert (= (and d!6320 c!16810) b!51977))

(assert (= (and d!6320 (not c!16810)) b!51978))

(declare-fun m!26368 () Bool)

(assert (=> d!6320 m!26368))

(assert (=> b!51976 m!26348))

(assert (=> b!51977 m!26350))

(assert (=> b!51978 m!26352))

(assert (=> b!51978 m!26352))

(declare-fun m!26370 () Bool)

(assert (=> b!51978 m!26370))

(assert (=> b!51865 d!6320))

(declare-fun b!51997 () Bool)

(declare-fun e!30601 () Int)

(declare-fun call!3364 () Int)

(assert (=> b!51997 (= e!30601 (- call!3364 (+ 1 from!821)))))

(declare-fun b!51998 () Bool)

(declare-fun e!30602 () Int)

(assert (=> b!51998 (= e!30602 call!3364)))

(declare-fun b!51999 () Bool)

(declare-fun e!30604 () List!1067)

(declare-fun e!30605 () List!1067)

(assert (=> b!51999 (= e!30604 e!30605)))

(declare-fun c!16822 () Bool)

(assert (=> b!51999 (= c!16822 (<= (+ 1 from!821) 0))))

(declare-fun b!52000 () Bool)

(assert (=> b!52000 (= e!30605 lt!9233)))

(declare-fun b!52001 () Bool)

(assert (=> b!52001 (= e!30602 e!30601)))

(declare-fun c!16820 () Bool)

(assert (=> b!52001 (= c!16820 (>= (+ 1 from!821) call!3364))))

(declare-fun b!52002 () Bool)

(assert (=> b!52002 (= e!30605 (drop!44 (t!17294 lt!9233) (- (+ 1 from!821) 1)))))

(declare-fun bm!3359 () Bool)

(assert (=> bm!3359 (= call!3364 (size!975 lt!9233))))

(declare-fun b!52003 () Bool)

(assert (=> b!52003 (= e!30604 Nil!1061)))

(declare-fun d!6322 () Bool)

(declare-fun e!30603 () Bool)

(assert (=> d!6322 e!30603))

(declare-fun res!33965 () Bool)

(assert (=> d!6322 (=> (not res!33965) (not e!30603))))

(declare-fun lt!9285 () List!1067)

(assert (=> d!6322 (= res!33965 (= ((_ map implies) (content!28 lt!9285) (content!28 lt!9233)) ((as const (InoxSet Token!222)) true)))))

(assert (=> d!6322 (= lt!9285 e!30604)))

(declare-fun c!16819 () Bool)

(assert (=> d!6322 (= c!16819 ((_ is Nil!1061) lt!9233))))

(assert (=> d!6322 (= (drop!44 lt!9233 (+ 1 from!821)) lt!9285)))

(declare-fun b!52004 () Bool)

(assert (=> b!52004 (= e!30603 (= (size!975 lt!9285) e!30602))))

(declare-fun c!16821 () Bool)

(assert (=> b!52004 (= c!16821 (<= (+ 1 from!821) 0))))

(declare-fun b!52005 () Bool)

(assert (=> b!52005 (= e!30601 0)))

(assert (= (and d!6322 c!16819) b!52003))

(assert (= (and d!6322 (not c!16819)) b!51999))

(assert (= (and b!51999 c!16822) b!52000))

(assert (= (and b!51999 (not c!16822)) b!52002))

(assert (= (and d!6322 res!33965) b!52004))

(assert (= (and b!52004 c!16821) b!51998))

(assert (= (and b!52004 (not c!16821)) b!52001))

(assert (= (and b!52001 c!16820) b!52005))

(assert (= (and b!52001 (not c!16820)) b!51997))

(assert (= (or b!51998 b!52001 b!51997) bm!3359))

(declare-fun m!26372 () Bool)

(assert (=> b!52002 m!26372))

(assert (=> bm!3359 m!26348))

(declare-fun m!26374 () Bool)

(assert (=> d!6322 m!26374))

(assert (=> d!6322 m!26340))

(declare-fun m!26376 () Bool)

(assert (=> b!52004 m!26376))

(assert (=> b!51865 d!6322))

(declare-fun d!6324 () Bool)

(assert (=> d!6324 (= (head!384 lt!9236) (h!6458 lt!9236))))

(assert (=> b!51865 d!6324))

(declare-fun d!6326 () Bool)

(assert (=> d!6326 (= (head!384 (drop!44 lt!9233 from!821)) (apply!107 lt!9233 from!821))))

(declare-fun lt!9286 () Unit!604)

(assert (=> d!6326 (= lt!9286 (choose!1184 lt!9233 from!821))))

(declare-fun e!30606 () Bool)

(assert (=> d!6326 e!30606))

(declare-fun res!33966 () Bool)

(assert (=> d!6326 (=> (not res!33966) (not e!30606))))

(assert (=> d!6326 (= res!33966 (>= from!821 0))))

(assert (=> d!6326 (= (lemmaDropApply!44 lt!9233 from!821) lt!9286)))

(declare-fun b!52006 () Bool)

(assert (=> b!52006 (= e!30606 (< from!821 (size!975 lt!9233)))))

(assert (= (and d!6326 res!33966) b!52006))

(assert (=> d!6326 m!26226))

(assert (=> d!6326 m!26226))

(declare-fun m!26378 () Bool)

(assert (=> d!6326 m!26378))

(assert (=> d!6326 m!26224))

(declare-fun m!26380 () Bool)

(assert (=> d!6326 m!26380))

(assert (=> b!52006 m!26348))

(assert (=> b!51865 d!6326))

(declare-fun d!6328 () Bool)

(assert (=> d!6328 (= (tail!69 (drop!44 lt!9233 (+ 1 from!821))) (drop!44 lt!9233 (+ 1 from!821 1)))))

(declare-fun lt!9287 () Unit!604)

(assert (=> d!6328 (= lt!9287 (choose!1185 lt!9233 (+ 1 from!821)))))

(declare-fun e!30607 () Bool)

(assert (=> d!6328 e!30607))

(declare-fun res!33967 () Bool)

(assert (=> d!6328 (=> (not res!33967) (not e!30607))))

(assert (=> d!6328 (= res!33967 (>= (+ 1 from!821) 0))))

(assert (=> d!6328 (= (lemmaDropTail!40 lt!9233 (+ 1 from!821)) lt!9287)))

(declare-fun b!52007 () Bool)

(assert (=> b!52007 (= e!30607 (< (+ 1 from!821) (size!975 lt!9233)))))

(assert (= (and d!6328 res!33967) b!52007))

(assert (=> d!6328 m!26208))

(assert (=> d!6328 m!26208))

(declare-fun m!26382 () Bool)

(assert (=> d!6328 m!26382))

(declare-fun m!26384 () Bool)

(assert (=> d!6328 m!26384))

(declare-fun m!26386 () Bool)

(assert (=> d!6328 m!26386))

(assert (=> b!52007 m!26348))

(assert (=> b!51865 d!6328))

(declare-fun d!6330 () Bool)

(declare-fun lt!9290 () Bool)

(assert (=> d!6330 (= lt!9290 (contains!121 (list!270 v!6227) lt!9232))))

(declare-fun contains!124 (Conc!263 Token!222) Bool)

(assert (=> d!6330 (= lt!9290 (contains!124 (c!16782 v!6227) lt!9232))))

(assert (=> d!6330 (= (contains!122 v!6227 lt!9232) lt!9290)))

(declare-fun bs!6682 () Bool)

(assert (= bs!6682 d!6330))

(assert (=> bs!6682 m!26206))

(assert (=> bs!6682 m!26206))

(declare-fun m!26388 () Bool)

(assert (=> bs!6682 m!26388))

(declare-fun m!26390 () Bool)

(assert (=> bs!6682 m!26390))

(assert (=> b!51865 d!6330))

(declare-fun b!52008 () Bool)

(declare-fun e!30608 () Int)

(declare-fun call!3365 () Int)

(assert (=> b!52008 (= e!30608 (- call!3365 from!821))))

(declare-fun b!52009 () Bool)

(declare-fun e!30609 () Int)

(assert (=> b!52009 (= e!30609 call!3365)))

(declare-fun b!52010 () Bool)

(declare-fun e!30611 () List!1067)

(declare-fun e!30612 () List!1067)

(assert (=> b!52010 (= e!30611 e!30612)))

(declare-fun c!16826 () Bool)

(assert (=> b!52010 (= c!16826 (<= from!821 0))))

(declare-fun b!52011 () Bool)

(assert (=> b!52011 (= e!30612 lt!9233)))

(declare-fun b!52012 () Bool)

(assert (=> b!52012 (= e!30609 e!30608)))

(declare-fun c!16824 () Bool)

(assert (=> b!52012 (= c!16824 (>= from!821 call!3365))))

(declare-fun b!52013 () Bool)

(assert (=> b!52013 (= e!30612 (drop!44 (t!17294 lt!9233) (- from!821 1)))))

(declare-fun bm!3360 () Bool)

(assert (=> bm!3360 (= call!3365 (size!975 lt!9233))))

(declare-fun b!52014 () Bool)

(assert (=> b!52014 (= e!30611 Nil!1061)))

(declare-fun d!6332 () Bool)

(declare-fun e!30610 () Bool)

(assert (=> d!6332 e!30610))

(declare-fun res!33968 () Bool)

(assert (=> d!6332 (=> (not res!33968) (not e!30610))))

(declare-fun lt!9291 () List!1067)

(assert (=> d!6332 (= res!33968 (= ((_ map implies) (content!28 lt!9291) (content!28 lt!9233)) ((as const (InoxSet Token!222)) true)))))

(assert (=> d!6332 (= lt!9291 e!30611)))

(declare-fun c!16823 () Bool)

(assert (=> d!6332 (= c!16823 ((_ is Nil!1061) lt!9233))))

(assert (=> d!6332 (= (drop!44 lt!9233 from!821) lt!9291)))

(declare-fun b!52015 () Bool)

(assert (=> b!52015 (= e!30610 (= (size!975 lt!9291) e!30609))))

(declare-fun c!16825 () Bool)

(assert (=> b!52015 (= c!16825 (<= from!821 0))))

(declare-fun b!52016 () Bool)

(assert (=> b!52016 (= e!30608 0)))

(assert (= (and d!6332 c!16823) b!52014))

(assert (= (and d!6332 (not c!16823)) b!52010))

(assert (= (and b!52010 c!16826) b!52011))

(assert (= (and b!52010 (not c!16826)) b!52013))

(assert (= (and d!6332 res!33968) b!52015))

(assert (= (and b!52015 c!16825) b!52009))

(assert (= (and b!52015 (not c!16825)) b!52012))

(assert (= (and b!52012 c!16824) b!52016))

(assert (= (and b!52012 (not c!16824)) b!52008))

(assert (= (or b!52009 b!52012 b!52008) bm!3360))

(declare-fun m!26392 () Bool)

(assert (=> b!52013 m!26392))

(assert (=> bm!3360 m!26348))

(declare-fun m!26394 () Bool)

(assert (=> d!6332 m!26394))

(assert (=> d!6332 m!26340))

(declare-fun m!26396 () Bool)

(assert (=> b!52015 m!26396))

(assert (=> b!51865 d!6332))

(declare-fun d!6334 () Bool)

(declare-fun lt!9294 () Token!222)

(assert (=> d!6334 (= lt!9294 (apply!107 (list!270 v!6227) from!821))))

(declare-fun apply!109 (Conc!263 Int) Token!222)

(assert (=> d!6334 (= lt!9294 (apply!109 (c!16782 v!6227) from!821))))

(declare-fun e!30615 () Bool)

(assert (=> d!6334 e!30615))

(declare-fun res!33971 () Bool)

(assert (=> d!6334 (=> (not res!33971) (not e!30615))))

(assert (=> d!6334 (= res!33971 (<= 0 from!821))))

(assert (=> d!6334 (= (apply!106 v!6227 from!821) lt!9294)))

(declare-fun b!52019 () Bool)

(assert (=> b!52019 (= e!30615 (< from!821 (size!972 v!6227)))))

(assert (= (and d!6334 res!33971) b!52019))

(assert (=> d!6334 m!26206))

(assert (=> d!6334 m!26206))

(declare-fun m!26398 () Bool)

(assert (=> d!6334 m!26398))

(declare-fun m!26400 () Bool)

(assert (=> d!6334 m!26400))

(assert (=> b!52019 m!26204))

(assert (=> b!51865 d!6334))

(declare-fun b!52020 () Bool)

(declare-fun e!30616 () Int)

(declare-fun call!3366 () Int)

(assert (=> b!52020 (= e!30616 (- call!3366 (+ 2 from!821)))))

(declare-fun b!52021 () Bool)

(declare-fun e!30617 () Int)

(assert (=> b!52021 (= e!30617 call!3366)))

(declare-fun b!52022 () Bool)

(declare-fun e!30619 () List!1067)

(declare-fun e!30620 () List!1067)

(assert (=> b!52022 (= e!30619 e!30620)))

(declare-fun c!16830 () Bool)

(assert (=> b!52022 (= c!16830 (<= (+ 2 from!821) 0))))

(declare-fun b!52023 () Bool)

(assert (=> b!52023 (= e!30620 lt!9233)))

(declare-fun b!52024 () Bool)

(assert (=> b!52024 (= e!30617 e!30616)))

(declare-fun c!16828 () Bool)

(assert (=> b!52024 (= c!16828 (>= (+ 2 from!821) call!3366))))

(declare-fun b!52025 () Bool)

(assert (=> b!52025 (= e!30620 (drop!44 (t!17294 lt!9233) (- (+ 2 from!821) 1)))))

(declare-fun bm!3361 () Bool)

(assert (=> bm!3361 (= call!3366 (size!975 lt!9233))))

(declare-fun b!52026 () Bool)

(assert (=> b!52026 (= e!30619 Nil!1061)))

(declare-fun d!6336 () Bool)

(declare-fun e!30618 () Bool)

(assert (=> d!6336 e!30618))

(declare-fun res!33972 () Bool)

(assert (=> d!6336 (=> (not res!33972) (not e!30618))))

(declare-fun lt!9295 () List!1067)

(assert (=> d!6336 (= res!33972 (= ((_ map implies) (content!28 lt!9295) (content!28 lt!9233)) ((as const (InoxSet Token!222)) true)))))

(assert (=> d!6336 (= lt!9295 e!30619)))

(declare-fun c!16827 () Bool)

(assert (=> d!6336 (= c!16827 ((_ is Nil!1061) lt!9233))))

(assert (=> d!6336 (= (drop!44 lt!9233 (+ 2 from!821)) lt!9295)))

(declare-fun b!52027 () Bool)

(assert (=> b!52027 (= e!30618 (= (size!975 lt!9295) e!30617))))

(declare-fun c!16829 () Bool)

(assert (=> b!52027 (= c!16829 (<= (+ 2 from!821) 0))))

(declare-fun b!52028 () Bool)

(assert (=> b!52028 (= e!30616 0)))

(assert (= (and d!6336 c!16827) b!52026))

(assert (= (and d!6336 (not c!16827)) b!52022))

(assert (= (and b!52022 c!16830) b!52023))

(assert (= (and b!52022 (not c!16830)) b!52025))

(assert (= (and d!6336 res!33972) b!52027))

(assert (= (and b!52027 c!16829) b!52021))

(assert (= (and b!52027 (not c!16829)) b!52024))

(assert (= (and b!52024 c!16828) b!52028))

(assert (= (and b!52024 (not c!16828)) b!52020))

(assert (= (or b!52021 b!52024 b!52020) bm!3361))

(declare-fun m!26402 () Bool)

(assert (=> b!52025 m!26402))

(assert (=> bm!3361 m!26348))

(declare-fun m!26404 () Bool)

(assert (=> d!6336 m!26404))

(assert (=> d!6336 m!26340))

(declare-fun m!26406 () Bool)

(assert (=> b!52027 m!26406))

(assert (=> b!51865 d!6336))

(declare-fun d!6338 () Bool)

(assert (=> d!6338 (= (tail!69 lt!9236) (t!17294 lt!9236))))

(assert (=> b!51865 d!6338))

(declare-fun d!6340 () Bool)

(assert (=> d!6340 (= (head!384 lt!9234) (h!6458 lt!9234))))

(assert (=> b!51865 d!6340))

(declare-fun d!6342 () Bool)

(declare-fun lt!9300 () Int)

(assert (=> d!6342 (= lt!9300 (size!975 (list!270 v!6227)))))

(declare-fun size!976 (Conc!263) Int)

(assert (=> d!6342 (= lt!9300 (size!976 (c!16782 v!6227)))))

(assert (=> d!6342 (= (size!972 v!6227) lt!9300)))

(declare-fun bs!6683 () Bool)

(assert (= bs!6683 d!6342))

(assert (=> bs!6683 m!26206))

(assert (=> bs!6683 m!26206))

(declare-fun m!26408 () Bool)

(assert (=> bs!6683 m!26408))

(declare-fun m!26410 () Bool)

(assert (=> bs!6683 m!26410))

(assert (=> b!51870 d!6342))

(declare-fun d!6344 () Bool)

(declare-fun res!33975 () Bool)

(declare-fun e!30623 () Bool)

(assert (=> d!6344 (=> (not res!33975) (not e!30623))))

(declare-fun rulesValid!28 (LexerInterface!121 List!1068) Bool)

(assert (=> d!6344 (= res!33975 (rulesValid!28 thiss!11059 rules!1069))))

(assert (=> d!6344 (= (rulesInvariant!115 thiss!11059 rules!1069) e!30623)))

(declare-fun b!52031 () Bool)

(declare-datatypes ((List!1070 0))(
  ( (Nil!1064) (Cons!1064 (h!6461 String!1487) (t!17305 List!1070)) )
))
(declare-fun noDuplicateTag!28 (LexerInterface!121 List!1068 List!1070) Bool)

(assert (=> b!52031 (= e!30623 (noDuplicateTag!28 thiss!11059 rules!1069 Nil!1064))))

(assert (= (and d!6344 res!33975) b!52031))

(declare-fun m!26412 () Bool)

(assert (=> d!6344 m!26412))

(declare-fun m!26414 () Bool)

(assert (=> b!52031 m!26414))

(assert (=> b!51869 d!6344))

(declare-fun d!6346 () Bool)

(declare-fun lt!9301 () Bool)

(assert (=> d!6346 (= lt!9301 (contains!121 (list!270 v!6227) (apply!106 v!6227 (+ 1 from!821))))))

(assert (=> d!6346 (= lt!9301 (contains!124 (c!16782 v!6227) (apply!106 v!6227 (+ 1 from!821))))))

(assert (=> d!6346 (= (contains!122 v!6227 (apply!106 v!6227 (+ 1 from!821))) lt!9301)))

(declare-fun bs!6684 () Bool)

(assert (= bs!6684 d!6346))

(assert (=> bs!6684 m!26206))

(assert (=> bs!6684 m!26206))

(assert (=> bs!6684 m!26240))

(declare-fun m!26416 () Bool)

(assert (=> bs!6684 m!26416))

(assert (=> bs!6684 m!26240))

(declare-fun m!26418 () Bool)

(assert (=> bs!6684 m!26418))

(assert (=> b!51863 d!6346))

(declare-fun d!6348 () Bool)

(declare-fun lt!9302 () Token!222)

(assert (=> d!6348 (= lt!9302 (apply!107 (list!270 v!6227) (+ 1 from!821)))))

(assert (=> d!6348 (= lt!9302 (apply!109 (c!16782 v!6227) (+ 1 from!821)))))

(declare-fun e!30624 () Bool)

(assert (=> d!6348 e!30624))

(declare-fun res!33976 () Bool)

(assert (=> d!6348 (=> (not res!33976) (not e!30624))))

(assert (=> d!6348 (= res!33976 (<= 0 (+ 1 from!821)))))

(assert (=> d!6348 (= (apply!106 v!6227 (+ 1 from!821)) lt!9302)))

(declare-fun b!52032 () Bool)

(assert (=> b!52032 (= e!30624 (< (+ 1 from!821) (size!972 v!6227)))))

(assert (= (and d!6348 res!33976) b!52032))

(assert (=> d!6348 m!26206))

(assert (=> d!6348 m!26206))

(declare-fun m!26420 () Bool)

(assert (=> d!6348 m!26420))

(declare-fun m!26422 () Bool)

(assert (=> d!6348 m!26422))

(assert (=> b!52032 m!26204))

(assert (=> b!51863 d!6348))

(declare-fun b!52107 () Bool)

(declare-fun e!30675 () Bool)

(assert (=> b!52107 (= e!30675 true)))

(declare-fun b!52106 () Bool)

(declare-fun e!30674 () Bool)

(assert (=> b!52106 (= e!30674 e!30675)))

(declare-fun b!52105 () Bool)

(declare-fun e!30673 () Bool)

(assert (=> b!52105 (= e!30673 e!30674)))

(declare-fun d!6350 () Bool)

(assert (=> d!6350 e!30673))

(assert (= b!52106 b!52107))

(assert (= b!52105 b!52106))

(assert (= (and d!6350 ((_ is Cons!1062) rules!1069)) b!52105))

(declare-fun order!297 () Int)

(declare-fun lambda!1049 () Int)

(declare-fun order!295 () Int)

(declare-fun dynLambda!177 (Int Int) Int)

(declare-fun dynLambda!178 (Int Int) Int)

(assert (=> b!52107 (< (dynLambda!177 order!295 (toValue!708 (transformation!229 (h!6459 rules!1069)))) (dynLambda!178 order!297 lambda!1049))))

(declare-fun order!299 () Int)

(declare-fun dynLambda!179 (Int Int) Int)

(assert (=> b!52107 (< (dynLambda!179 order!299 (toChars!567 (transformation!229 (h!6459 rules!1069)))) (dynLambda!178 order!297 lambda!1049))))

(assert (=> d!6350 true))

(declare-fun e!30666 () Bool)

(assert (=> d!6350 e!30666))

(declare-fun res!33985 () Bool)

(assert (=> d!6350 (=> (not res!33985) (not e!30666))))

(declare-fun lt!9306 () Bool)

(declare-fun forall!119 (List!1067 Int) Bool)

(assert (=> d!6350 (= res!33985 (= lt!9306 (forall!119 (list!270 v!6227) lambda!1049)))))

(declare-fun forall!120 (BalanceConc!530 Int) Bool)

(assert (=> d!6350 (= lt!9306 (forall!120 v!6227 lambda!1049))))

(assert (=> d!6350 (not (isEmpty!215 rules!1069))))

(assert (=> d!6350 (= (rulesProduceEachTokenIndividually!59 thiss!11059 rules!1069 v!6227) lt!9306)))

(declare-fun b!52096 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!36 (LexerInterface!121 List!1068 List!1067) Bool)

(assert (=> b!52096 (= e!30666 (= lt!9306 (rulesProduceEachTokenIndividuallyList!36 thiss!11059 rules!1069 (list!270 v!6227))))))

(assert (= (and d!6350 res!33985) b!52096))

(assert (=> d!6350 m!26206))

(assert (=> d!6350 m!26206))

(declare-fun m!26444 () Bool)

(assert (=> d!6350 m!26444))

(declare-fun m!26446 () Bool)

(assert (=> d!6350 m!26446))

(assert (=> d!6350 m!26244))

(assert (=> b!52096 m!26206))

(assert (=> b!52096 m!26206))

(declare-fun m!26448 () Bool)

(assert (=> b!52096 m!26448))

(assert (=> b!51868 d!6350))

(declare-fun d!6354 () Bool)

(declare-fun c!16836 () Bool)

(assert (=> d!6354 (= c!16836 ((_ is Node!263) (c!16782 v!6227)))))

(declare-fun e!30680 () Bool)

(assert (=> d!6354 (= (inv!1394 (c!16782 v!6227)) e!30680)))

(declare-fun b!52116 () Bool)

(declare-fun inv!1400 (Conc!263) Bool)

(assert (=> b!52116 (= e!30680 (inv!1400 (c!16782 v!6227)))))

(declare-fun b!52117 () Bool)

(declare-fun e!30681 () Bool)

(assert (=> b!52117 (= e!30680 e!30681)))

(declare-fun res!33988 () Bool)

(assert (=> b!52117 (= res!33988 (not ((_ is Leaf!513) (c!16782 v!6227))))))

(assert (=> b!52117 (=> res!33988 e!30681)))

(declare-fun b!52118 () Bool)

(declare-fun inv!1401 (Conc!263) Bool)

(assert (=> b!52118 (= e!30681 (inv!1401 (c!16782 v!6227)))))

(assert (= (and d!6354 c!16836) b!52116))

(assert (= (and d!6354 (not c!16836)) b!52117))

(assert (= (and b!52117 (not res!33988)) b!52118))

(declare-fun m!26450 () Bool)

(assert (=> b!52116 m!26450))

(declare-fun m!26452 () Bool)

(assert (=> b!52118 m!26452))

(assert (=> b!51862 d!6354))

(declare-fun d!6356 () Bool)

(declare-fun isBalanced!35 (Conc!263) Bool)

(assert (=> d!6356 (= (inv!1396 v!6227) (isBalanced!35 (c!16782 v!6227)))))

(declare-fun bs!6685 () Bool)

(assert (= bs!6685 d!6356))

(declare-fun m!26454 () Bool)

(assert (=> bs!6685 m!26454))

(assert (=> start!3810 d!6356))

(declare-fun b!52131 () Bool)

(declare-fun e!30684 () Bool)

(declare-fun tp!33944 () Bool)

(assert (=> b!52131 (= e!30684 tp!33944)))

(declare-fun b!52132 () Bool)

(declare-fun tp!33946 () Bool)

(declare-fun tp!33947 () Bool)

(assert (=> b!52132 (= e!30684 (and tp!33946 tp!33947))))

(assert (=> b!51866 (= tp!33893 e!30684)))

(declare-fun b!52130 () Bool)

(declare-fun tp!33943 () Bool)

(declare-fun tp!33945 () Bool)

(assert (=> b!52130 (= e!30684 (and tp!33943 tp!33945))))

(declare-fun b!52129 () Bool)

(declare-fun tp_is_empty!533 () Bool)

(assert (=> b!52129 (= e!30684 tp_is_empty!533)))

(assert (= (and b!51866 ((_ is ElementMatch!297) (regex!229 (h!6459 rules!1069)))) b!52129))

(assert (= (and b!51866 ((_ is Concat!517) (regex!229 (h!6459 rules!1069)))) b!52130))

(assert (= (and b!51866 ((_ is Star!297) (regex!229 (h!6459 rules!1069)))) b!52131))

(assert (= (and b!51866 ((_ is Union!297) (regex!229 (h!6459 rules!1069)))) b!52132))

(declare-fun b!52143 () Bool)

(declare-fun b_free!1657 () Bool)

(declare-fun b_next!1657 () Bool)

(assert (=> b!52143 (= b_free!1657 (not b_next!1657))))

(declare-fun tp!33956 () Bool)

(declare-fun b_and!1707 () Bool)

(assert (=> b!52143 (= tp!33956 b_and!1707)))

(declare-fun b_free!1659 () Bool)

(declare-fun b_next!1659 () Bool)

(assert (=> b!52143 (= b_free!1659 (not b_next!1659))))

(declare-fun tp!33959 () Bool)

(declare-fun b_and!1709 () Bool)

(assert (=> b!52143 (= tp!33959 b_and!1709)))

(declare-fun e!30694 () Bool)

(assert (=> b!52143 (= e!30694 (and tp!33956 tp!33959))))

(declare-fun e!30696 () Bool)

(declare-fun tp!33957 () Bool)

(declare-fun b!52142 () Bool)

(assert (=> b!52142 (= e!30696 (and tp!33957 (inv!1390 (tag!407 (h!6459 (t!17295 rules!1069)))) (inv!1395 (transformation!229 (h!6459 (t!17295 rules!1069)))) e!30694))))

(declare-fun b!52141 () Bool)

(declare-fun e!30693 () Bool)

(declare-fun tp!33958 () Bool)

(assert (=> b!52141 (= e!30693 (and e!30696 tp!33958))))

(assert (=> b!51859 (= tp!33892 e!30693)))

(assert (= b!52142 b!52143))

(assert (= b!52141 b!52142))

(assert (= (and b!51859 ((_ is Cons!1062) (t!17295 rules!1069))) b!52141))

(declare-fun m!26456 () Bool)

(assert (=> b!52142 m!26456))

(declare-fun m!26458 () Bool)

(assert (=> b!52142 m!26458))

(declare-fun tp!33966 () Bool)

(declare-fun tp!33967 () Bool)

(declare-fun b!52152 () Bool)

(declare-fun e!30702 () Bool)

(assert (=> b!52152 (= e!30702 (and (inv!1394 (left!798 (c!16782 v!6227))) tp!33967 (inv!1394 (right!1128 (c!16782 v!6227))) tp!33966))))

(declare-fun b!52154 () Bool)

(declare-fun e!30701 () Bool)

(declare-fun tp!33968 () Bool)

(assert (=> b!52154 (= e!30701 tp!33968)))

(declare-fun b!52153 () Bool)

(declare-fun inv!1402 (IArray!527) Bool)

(assert (=> b!52153 (= e!30702 (and (inv!1402 (xs!2842 (c!16782 v!6227))) e!30701))))

(assert (=> b!51862 (= tp!33895 (and (inv!1394 (c!16782 v!6227)) e!30702))))

(assert (= (and b!51862 ((_ is Node!263) (c!16782 v!6227))) b!52152))

(assert (= b!52153 b!52154))

(assert (= (and b!51862 ((_ is Leaf!513) (c!16782 v!6227))) b!52153))

(declare-fun m!26460 () Bool)

(assert (=> b!52152 m!26460))

(declare-fun m!26462 () Bool)

(assert (=> b!52152 m!26462))

(declare-fun m!26464 () Bool)

(assert (=> b!52153 m!26464))

(assert (=> b!51862 m!26194))

(check-sat (not b!51960) (not b!52032) (not b!52105) (not b!51968) b_and!1709 b_and!1699 (not d!6316) (not d!6312) (not b!51975) (not d!6334) (not b_next!1659) (not b!51967) (not b!52004) (not b!52006) (not d!6302) (not d!6310) (not b!52154) (not b!52141) (not d!6330) (not d!6346) (not d!6320) b_and!1707 (not b!51862) (not b!52015) (not b!51978) (not b!52142) (not b!51977) (not d!6344) (not b!52096) (not b!52031) (not d!6350) (not d!6290) (not b_next!1649) (not d!6356) (not bm!3359) (not d!6348) (not b!51972) (not b!52007) (not d!6322) (not b!52118) b_and!1701 (not d!6336) (not b!51969) (not b!52152) (not b!52116) (not b!52025) (not b!52019) (not b_next!1657) tp_is_empty!533 (not b!52002) (not b!52132) (not b!52027) (not b!52130) (not b!52013) (not b_next!1651) (not d!6326) (not b!52153) (not d!6328) (not b!52131) (not b!51976) (not d!6332) (not d!6342) (not d!6314) (not bm!3360) (not b!51948) (not bm!3361))
(check-sat b_and!1707 (not b_next!1649) b_and!1701 b_and!1709 b_and!1699 (not b_next!1657) (not b_next!1651) (not b_next!1659))
