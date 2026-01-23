; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3886 () Bool)

(assert start!3886)

(declare-fun b!52227 () Bool)

(declare-fun b_free!1665 () Bool)

(declare-fun b_next!1665 () Bool)

(assert (=> b!52227 (= b_free!1665 (not b_next!1665))))

(declare-fun tp!33996 () Bool)

(declare-fun b_and!1715 () Bool)

(assert (=> b!52227 (= tp!33996 b_and!1715)))

(declare-fun b_free!1667 () Bool)

(declare-fun b_next!1667 () Bool)

(assert (=> b!52227 (= b_free!1667 (not b_next!1667))))

(declare-fun tp!33997 () Bool)

(declare-fun b_and!1717 () Bool)

(assert (=> b!52227 (= tp!33997 b_and!1717)))

(declare-fun res!34042 () Bool)

(declare-fun e!30756 () Bool)

(assert (=> start!3886 (=> (not res!34042) (not e!30756))))

(declare-datatypes ((LexerInterface!123 0))(
  ( (LexerInterfaceExt!120 (__x!1537 Int)) (Lexer!121) )
))
(declare-fun thiss!11059 () LexerInterface!123)

(declare-fun from!821 () Int)

(get-info :version)

(assert (=> start!3886 (= res!34042 (and ((_ is Lexer!121) thiss!11059) (>= from!821 0)))))

(assert (=> start!3886 e!30756))

(assert (=> start!3886 true))

(declare-datatypes ((List!1075 0))(
  ( (Nil!1069) (Cons!1069 (h!6466 (_ BitVec 16)) (t!17310 List!1075)) )
))
(declare-datatypes ((TokenValue!221 0))(
  ( (FloatLiteralValue!442 (text!1992 List!1075)) (TokenValueExt!220 (__x!1538 Int)) (Broken!1105 (value!9455 List!1075)) (Object!226) (End!221) (Def!221) (Underscore!221) (Match!221) (Else!221) (Error!221) (Case!221) (If!221) (Extends!221) (Abstract!221) (Class!221) (Val!221) (DelimiterValue!442 (del!281 List!1075)) (KeywordValue!227 (value!9456 List!1075)) (CommentValue!442 (value!9457 List!1075)) (WhitespaceValue!442 (value!9458 List!1075)) (IndentationValue!221 (value!9459 List!1075)) (String!1496) (Int32!221) (Broken!1106 (value!9460 List!1075)) (Boolean!222) (Unit!609) (OperatorValue!224 (op!281 List!1075)) (IdentifierValue!442 (value!9461 List!1075)) (IdentifierValue!443 (value!9462 List!1075)) (WhitespaceValue!443 (value!9463 List!1075)) (True!442) (False!442) (Broken!1107 (value!9464 List!1075)) (Broken!1108 (value!9465 List!1075)) (True!443) (RightBrace!221) (RightBracket!221) (Colon!221) (Null!221) (Comma!221) (LeftBracket!221) (False!443) (LeftBrace!221) (ImaginaryLiteralValue!221 (text!1993 List!1075)) (StringLiteralValue!663 (value!9466 List!1075)) (EOFValue!221 (value!9467 List!1075)) (IdentValue!221 (value!9468 List!1075)) (DelimiterValue!443 (value!9469 List!1075)) (DedentValue!221 (value!9470 List!1075)) (NewLineValue!221 (value!9471 List!1075)) (IntegerValue!663 (value!9472 (_ BitVec 32)) (text!1994 List!1075)) (IntegerValue!664 (value!9473 Int) (text!1995 List!1075)) (Times!221) (Or!221) (Equal!221) (Minus!221) (Broken!1109 (value!9474 List!1075)) (And!221) (Div!221) (LessEqual!221) (Mod!221) (Concat!520) (Not!221) (Plus!221) (SpaceValue!221 (value!9475 List!1075)) (IntegerValue!665 (value!9476 Int) (text!1996 List!1075)) (StringLiteralValue!664 (text!1997 List!1075)) (FloatLiteralValue!443 (text!1998 List!1075)) (BytesLiteralValue!221 (value!9477 List!1075)) (CommentValue!443 (value!9478 List!1075)) (StringLiteralValue!665 (value!9479 List!1075)) (ErrorTokenValue!221 (msg!282 List!1075)) )
))
(declare-datatypes ((String!1497 0))(
  ( (String!1498 (value!9480 String)) )
))
(declare-datatypes ((C!1520 0))(
  ( (C!1521 (val!367 Int)) )
))
(declare-datatypes ((Regex!299 0))(
  ( (ElementMatch!299 (c!16840 C!1520)) (Concat!521 (regOne!1110 Regex!299) (regTwo!1110 Regex!299)) (EmptyExpr!299) (Star!299 (reg!628 Regex!299)) (EmptyLang!299) (Union!299 (regOne!1111 Regex!299) (regTwo!1111 Regex!299)) )
))
(declare-datatypes ((List!1076 0))(
  ( (Nil!1070) (Cons!1070 (h!6467 C!1520) (t!17311 List!1076)) )
))
(declare-datatypes ((IArray!533 0))(
  ( (IArray!534 (innerList!324 List!1076)) )
))
(declare-datatypes ((Conc!266 0))(
  ( (Node!266 (left!806 Conc!266) (right!1136 Conc!266) (csize!762 Int) (cheight!477 Int)) (Leaf!517 (xs!2845 IArray!533) (csize!763 Int)) (Empty!266) )
))
(declare-datatypes ((BalanceConc!536 0))(
  ( (BalanceConc!537 (c!16841 Conc!266)) )
))
(declare-datatypes ((TokenValueInjection!266 0))(
  ( (TokenValueInjection!267 (toValue!710 Int) (toChars!569 Int)) )
))
(declare-datatypes ((Rule!262 0))(
  ( (Rule!263 (regex!231 Regex!299) (tag!409 String!1497) (isSeparator!231 Bool) (transformation!231 TokenValueInjection!266)) )
))
(declare-datatypes ((Token!226 0))(
  ( (Token!227 (value!9481 TokenValue!221) (rule!706 Rule!262) (size!979 Int) (originalCharacters!284 List!1076)) )
))
(declare-datatypes ((List!1077 0))(
  ( (Nil!1071) (Cons!1071 (h!6468 Token!226) (t!17312 List!1077)) )
))
(declare-datatypes ((IArray!535 0))(
  ( (IArray!536 (innerList!325 List!1077)) )
))
(declare-datatypes ((Conc!267 0))(
  ( (Node!267 (left!807 Conc!267) (right!1137 Conc!267) (csize!764 Int) (cheight!478 Int)) (Leaf!518 (xs!2846 IArray!535) (csize!765 Int)) (Empty!267) )
))
(declare-datatypes ((BalanceConc!538 0))(
  ( (BalanceConc!539 (c!16842 Conc!267)) )
))
(declare-fun v!6227 () BalanceConc!538)

(declare-fun e!30748 () Bool)

(declare-fun inv!1409 (BalanceConc!538) Bool)

(assert (=> start!3886 (and (inv!1409 v!6227) e!30748)))

(declare-fun e!30750 () Bool)

(assert (=> start!3886 e!30750))

(declare-fun b!52220 () Bool)

(declare-fun res!34039 () Bool)

(declare-fun e!30751 () Bool)

(assert (=> b!52220 (=> (not res!34039) (not e!30751))))

(declare-datatypes ((List!1078 0))(
  ( (Nil!1072) (Cons!1072 (h!6469 Rule!262) (t!17313 List!1078)) )
))
(declare-fun rules!1069 () List!1078)

(declare-fun isEmpty!217 (List!1078) Bool)

(assert (=> b!52220 (= res!34039 (not (isEmpty!217 rules!1069)))))

(declare-fun b!52221 () Bool)

(declare-fun res!34035 () Bool)

(assert (=> b!52221 (=> (not res!34035) (not e!30751))))

(declare-fun rulesInvariant!117 (LexerInterface!123 List!1078) Bool)

(assert (=> b!52221 (= res!34035 (rulesInvariant!117 thiss!11059 rules!1069))))

(declare-fun b!52222 () Bool)

(declare-fun res!34034 () Bool)

(assert (=> b!52222 (=> (not res!34034) (not e!30751))))

(declare-fun rulesProduceEachTokenIndividually!61 (LexerInterface!123 List!1078 BalanceConc!538) Bool)

(assert (=> b!52222 (= res!34034 (rulesProduceEachTokenIndividually!61 thiss!11059 rules!1069 v!6227))))

(declare-fun b!52223 () Bool)

(declare-fun tp!33995 () Bool)

(declare-fun inv!1410 (Conc!267) Bool)

(assert (=> b!52223 (= e!30748 (and (inv!1410 (c!16842 v!6227)) tp!33995))))

(declare-fun b!52224 () Bool)

(declare-fun e!30753 () Bool)

(declare-fun lt!9359 () List!1077)

(declare-fun lt!9358 () Token!226)

(declare-fun contains!127 (List!1077 Token!226) Bool)

(assert (=> b!52224 (= e!30753 (contains!127 lt!9359 lt!9358))))

(declare-fun e!30754 () Bool)

(declare-fun b!52225 () Bool)

(declare-fun e!30752 () Bool)

(declare-fun tp!33994 () Bool)

(declare-fun inv!1405 (String!1497) Bool)

(declare-fun inv!1411 (TokenValueInjection!266) Bool)

(assert (=> b!52225 (= e!30752 (and tp!33994 (inv!1405 (tag!409 (h!6469 rules!1069))) (inv!1411 (transformation!231 (h!6469 rules!1069))) e!30754))))

(declare-fun b!52226 () Bool)

(declare-fun tp!33998 () Bool)

(assert (=> b!52226 (= e!30750 (and e!30752 tp!33998))))

(assert (=> b!52227 (= e!30754 (and tp!33996 tp!33997))))

(declare-fun b!52228 () Bool)

(declare-fun res!34040 () Bool)

(assert (=> b!52228 (=> (not res!34040) (not e!30751))))

(declare-fun lt!9363 () Int)

(assert (=> b!52228 (= res!34040 (< from!821 (- lt!9363 1)))))

(declare-fun b!52229 () Bool)

(assert (=> b!52229 (= e!30756 e!30751)))

(declare-fun res!34038 () Bool)

(assert (=> b!52229 (=> (not res!34038) (not e!30751))))

(assert (=> b!52229 (= res!34038 (<= from!821 lt!9363))))

(declare-fun size!980 (BalanceConc!538) Int)

(assert (=> b!52229 (= lt!9363 (size!980 v!6227))))

(declare-fun b!52230 () Bool)

(declare-fun e!30755 () Bool)

(assert (=> b!52230 (= e!30755 e!30753)))

(declare-fun res!34036 () Bool)

(assert (=> b!52230 (=> res!34036 e!30753)))

(declare-fun contains!128 (BalanceConc!538 Token!226) Bool)

(assert (=> b!52230 (= res!34036 (not (contains!128 v!6227 lt!9358)))))

(declare-fun apply!112 (BalanceConc!538 Int) Token!226)

(assert (=> b!52230 (= lt!9358 (apply!112 v!6227 (+ 1 from!821)))))

(declare-fun b!52231 () Bool)

(declare-fun res!34041 () Bool)

(assert (=> b!52231 (=> res!34041 e!30755)))

(declare-fun lt!9365 () Token!226)

(assert (=> b!52231 (= res!34041 (not (contains!127 lt!9359 lt!9365)))))

(declare-fun b!52232 () Bool)

(assert (=> b!52232 (= e!30751 (not e!30755))))

(declare-fun res!34037 () Bool)

(assert (=> b!52232 (=> res!34037 e!30755)))

(assert (=> b!52232 (= res!34037 (not (contains!128 v!6227 lt!9365)))))

(assert (=> b!52232 (= lt!9365 (apply!112 v!6227 from!821))))

(declare-fun lt!9366 () List!1077)

(declare-fun tail!71 (List!1077) List!1077)

(declare-fun drop!46 (List!1077 Int) List!1077)

(assert (=> b!52232 (= (tail!71 lt!9366) (drop!46 lt!9359 (+ 2 from!821)))))

(declare-datatypes ((Unit!610 0))(
  ( (Unit!611) )
))
(declare-fun lt!9364 () Unit!610)

(declare-fun lemmaDropTail!42 (List!1077 Int) Unit!610)

(assert (=> b!52232 (= lt!9364 (lemmaDropTail!42 lt!9359 (+ 1 from!821)))))

(declare-fun lt!9360 () List!1077)

(assert (=> b!52232 (= (tail!71 lt!9360) lt!9366)))

(declare-fun lt!9362 () Unit!610)

(assert (=> b!52232 (= lt!9362 (lemmaDropTail!42 lt!9359 from!821))))

(declare-fun head!386 (List!1077) Token!226)

(declare-fun apply!113 (List!1077 Int) Token!226)

(assert (=> b!52232 (= (head!386 lt!9366) (apply!113 lt!9359 (+ 1 from!821)))))

(assert (=> b!52232 (= lt!9366 (drop!46 lt!9359 (+ 1 from!821)))))

(declare-fun lt!9361 () Unit!610)

(declare-fun lemmaDropApply!46 (List!1077 Int) Unit!610)

(assert (=> b!52232 (= lt!9361 (lemmaDropApply!46 lt!9359 (+ 1 from!821)))))

(assert (=> b!52232 (= (head!386 lt!9360) (apply!113 lt!9359 from!821))))

(assert (=> b!52232 (= lt!9360 (drop!46 lt!9359 from!821))))

(declare-fun lt!9357 () Unit!610)

(assert (=> b!52232 (= lt!9357 (lemmaDropApply!46 lt!9359 from!821))))

(declare-fun list!274 (BalanceConc!538) List!1077)

(assert (=> b!52232 (= lt!9359 (list!274 v!6227))))

(assert (= (and start!3886 res!34042) b!52229))

(assert (= (and b!52229 res!34038) b!52220))

(assert (= (and b!52220 res!34039) b!52221))

(assert (= (and b!52221 res!34035) b!52222))

(assert (= (and b!52222 res!34034) b!52228))

(assert (= (and b!52228 res!34040) b!52232))

(assert (= (and b!52232 (not res!34037)) b!52231))

(assert (= (and b!52231 (not res!34041)) b!52230))

(assert (= (and b!52230 (not res!34036)) b!52224))

(assert (= start!3886 b!52223))

(assert (= b!52225 b!52227))

(assert (= b!52226 b!52225))

(assert (= (and start!3886 ((_ is Cons!1072) rules!1069)) b!52226))

(declare-fun m!26522 () Bool)

(assert (=> b!52220 m!26522))

(declare-fun m!26524 () Bool)

(assert (=> b!52230 m!26524))

(declare-fun m!26526 () Bool)

(assert (=> b!52230 m!26526))

(declare-fun m!26528 () Bool)

(assert (=> b!52225 m!26528))

(declare-fun m!26530 () Bool)

(assert (=> b!52225 m!26530))

(declare-fun m!26532 () Bool)

(assert (=> b!52221 m!26532))

(declare-fun m!26534 () Bool)

(assert (=> b!52231 m!26534))

(declare-fun m!26536 () Bool)

(assert (=> b!52222 m!26536))

(declare-fun m!26538 () Bool)

(assert (=> start!3886 m!26538))

(declare-fun m!26540 () Bool)

(assert (=> b!52224 m!26540))

(declare-fun m!26542 () Bool)

(assert (=> b!52223 m!26542))

(declare-fun m!26544 () Bool)

(assert (=> b!52232 m!26544))

(declare-fun m!26546 () Bool)

(assert (=> b!52232 m!26546))

(declare-fun m!26548 () Bool)

(assert (=> b!52232 m!26548))

(declare-fun m!26550 () Bool)

(assert (=> b!52232 m!26550))

(declare-fun m!26552 () Bool)

(assert (=> b!52232 m!26552))

(declare-fun m!26554 () Bool)

(assert (=> b!52232 m!26554))

(declare-fun m!26556 () Bool)

(assert (=> b!52232 m!26556))

(declare-fun m!26558 () Bool)

(assert (=> b!52232 m!26558))

(declare-fun m!26560 () Bool)

(assert (=> b!52232 m!26560))

(declare-fun m!26562 () Bool)

(assert (=> b!52232 m!26562))

(declare-fun m!26564 () Bool)

(assert (=> b!52232 m!26564))

(declare-fun m!26566 () Bool)

(assert (=> b!52232 m!26566))

(declare-fun m!26568 () Bool)

(assert (=> b!52232 m!26568))

(declare-fun m!26570 () Bool)

(assert (=> b!52232 m!26570))

(declare-fun m!26572 () Bool)

(assert (=> b!52232 m!26572))

(declare-fun m!26574 () Bool)

(assert (=> b!52232 m!26574))

(declare-fun m!26576 () Bool)

(assert (=> b!52229 m!26576))

(check-sat (not b!52220) (not b!52231) (not b!52230) b_and!1717 (not start!3886) (not b!52229) (not b!52223) (not b!52232) b_and!1715 (not b!52221) (not b_next!1667) (not b!52222) (not b!52225) (not b!52226) (not b_next!1665) (not b!52224))
(check-sat b_and!1717 b_and!1715 (not b_next!1665) (not b_next!1667))
(get-model)

(declare-fun d!6359 () Bool)

(declare-fun res!34049 () Bool)

(declare-fun e!30759 () Bool)

(assert (=> d!6359 (=> (not res!34049) (not e!30759))))

(declare-fun rulesValid!29 (LexerInterface!123 List!1078) Bool)

(assert (=> d!6359 (= res!34049 (rulesValid!29 thiss!11059 rules!1069))))

(assert (=> d!6359 (= (rulesInvariant!117 thiss!11059 rules!1069) e!30759)))

(declare-fun b!52235 () Bool)

(declare-datatypes ((List!1079 0))(
  ( (Nil!1073) (Cons!1073 (h!6470 String!1497) (t!17322 List!1079)) )
))
(declare-fun noDuplicateTag!29 (LexerInterface!123 List!1078 List!1079) Bool)

(assert (=> b!52235 (= e!30759 (noDuplicateTag!29 thiss!11059 rules!1069 Nil!1073))))

(assert (= (and d!6359 res!34049) b!52235))

(declare-fun m!26578 () Bool)

(assert (=> d!6359 m!26578))

(declare-fun m!26580 () Bool)

(assert (=> b!52235 m!26580))

(assert (=> b!52221 d!6359))

(declare-fun d!6363 () Bool)

(declare-fun lt!9372 () Token!226)

(assert (=> d!6363 (= lt!9372 (apply!113 (list!274 v!6227) from!821))))

(declare-fun apply!114 (Conc!267 Int) Token!226)

(assert (=> d!6363 (= lt!9372 (apply!114 (c!16842 v!6227) from!821))))

(declare-fun e!30768 () Bool)

(assert (=> d!6363 e!30768))

(declare-fun res!34058 () Bool)

(assert (=> d!6363 (=> (not res!34058) (not e!30768))))

(assert (=> d!6363 (= res!34058 (<= 0 from!821))))

(assert (=> d!6363 (= (apply!112 v!6227 from!821) lt!9372)))

(declare-fun b!52244 () Bool)

(assert (=> b!52244 (= e!30768 (< from!821 (size!980 v!6227)))))

(assert (= (and d!6363 res!34058) b!52244))

(assert (=> d!6363 m!26544))

(assert (=> d!6363 m!26544))

(declare-fun m!26588 () Bool)

(assert (=> d!6363 m!26588))

(declare-fun m!26590 () Bool)

(assert (=> d!6363 m!26590))

(assert (=> b!52244 m!26576))

(assert (=> b!52232 d!6363))

(declare-fun d!6369 () Bool)

(declare-fun list!275 (Conc!267) List!1077)

(assert (=> d!6369 (= (list!274 v!6227) (list!275 (c!16842 v!6227)))))

(declare-fun bs!6688 () Bool)

(assert (= bs!6688 d!6369))

(declare-fun m!26592 () Bool)

(assert (=> bs!6688 m!26592))

(assert (=> b!52232 d!6369))

(declare-fun b!52263 () Bool)

(declare-fun e!30780 () Int)

(assert (=> b!52263 (= e!30780 0)))

(declare-fun d!6371 () Bool)

(declare-fun e!30783 () Bool)

(assert (=> d!6371 e!30783))

(declare-fun res!34061 () Bool)

(assert (=> d!6371 (=> (not res!34061) (not e!30783))))

(declare-fun lt!9375 () List!1077)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!30 (List!1077) (InoxSet Token!226))

(assert (=> d!6371 (= res!34061 (= ((_ map implies) (content!30 lt!9375) (content!30 lt!9359)) ((as const (InoxSet Token!226)) true)))))

(declare-fun e!30779 () List!1077)

(assert (=> d!6371 (= lt!9375 e!30779)))

(declare-fun c!16854 () Bool)

(assert (=> d!6371 (= c!16854 ((_ is Nil!1071) lt!9359))))

(assert (=> d!6371 (= (drop!46 lt!9359 from!821) lt!9375)))

(declare-fun b!52264 () Bool)

(declare-fun e!30781 () Int)

(declare-fun call!3369 () Int)

(assert (=> b!52264 (= e!30781 call!3369)))

(declare-fun b!52265 () Bool)

(assert (=> b!52265 (= e!30781 e!30780)))

(declare-fun c!16853 () Bool)

(assert (=> b!52265 (= c!16853 (>= from!821 call!3369))))

(declare-fun b!52266 () Bool)

(declare-fun size!983 (List!1077) Int)

(assert (=> b!52266 (= e!30783 (= (size!983 lt!9375) e!30781))))

(declare-fun c!16851 () Bool)

(assert (=> b!52266 (= c!16851 (<= from!821 0))))

(declare-fun bm!3364 () Bool)

(assert (=> bm!3364 (= call!3369 (size!983 lt!9359))))

(declare-fun b!52267 () Bool)

(assert (=> b!52267 (= e!30780 (- call!3369 from!821))))

(declare-fun b!52268 () Bool)

(declare-fun e!30782 () List!1077)

(assert (=> b!52268 (= e!30782 lt!9359)))

(declare-fun b!52269 () Bool)

(assert (=> b!52269 (= e!30782 (drop!46 (t!17312 lt!9359) (- from!821 1)))))

(declare-fun b!52270 () Bool)

(assert (=> b!52270 (= e!30779 e!30782)))

(declare-fun c!16852 () Bool)

(assert (=> b!52270 (= c!16852 (<= from!821 0))))

(declare-fun b!52271 () Bool)

(assert (=> b!52271 (= e!30779 Nil!1071)))

(assert (= (and d!6371 c!16854) b!52271))

(assert (= (and d!6371 (not c!16854)) b!52270))

(assert (= (and b!52270 c!16852) b!52268))

(assert (= (and b!52270 (not c!16852)) b!52269))

(assert (= (and d!6371 res!34061) b!52266))

(assert (= (and b!52266 c!16851) b!52264))

(assert (= (and b!52266 (not c!16851)) b!52265))

(assert (= (and b!52265 c!16853) b!52263))

(assert (= (and b!52265 (not c!16853)) b!52267))

(assert (= (or b!52264 b!52265 b!52267) bm!3364))

(declare-fun m!26594 () Bool)

(assert (=> d!6371 m!26594))

(declare-fun m!26596 () Bool)

(assert (=> d!6371 m!26596))

(declare-fun m!26598 () Bool)

(assert (=> b!52266 m!26598))

(declare-fun m!26600 () Bool)

(assert (=> bm!3364 m!26600))

(declare-fun m!26602 () Bool)

(assert (=> b!52269 m!26602))

(assert (=> b!52232 d!6371))

(declare-fun d!6373 () Bool)

(assert (=> d!6373 (= (head!386 (drop!46 lt!9359 from!821)) (apply!113 lt!9359 from!821))))

(declare-fun lt!9378 () Unit!610)

(declare-fun choose!1186 (List!1077 Int) Unit!610)

(assert (=> d!6373 (= lt!9378 (choose!1186 lt!9359 from!821))))

(declare-fun e!30786 () Bool)

(assert (=> d!6373 e!30786))

(declare-fun res!34064 () Bool)

(assert (=> d!6373 (=> (not res!34064) (not e!30786))))

(assert (=> d!6373 (= res!34064 (>= from!821 0))))

(assert (=> d!6373 (= (lemmaDropApply!46 lt!9359 from!821) lt!9378)))

(declare-fun b!52274 () Bool)

(assert (=> b!52274 (= e!30786 (< from!821 (size!983 lt!9359)))))

(assert (= (and d!6373 res!34064) b!52274))

(assert (=> d!6373 m!26550))

(assert (=> d!6373 m!26550))

(declare-fun m!26604 () Bool)

(assert (=> d!6373 m!26604))

(assert (=> d!6373 m!26564))

(declare-fun m!26606 () Bool)

(assert (=> d!6373 m!26606))

(assert (=> b!52274 m!26600))

(assert (=> b!52232 d!6373))

(declare-fun b!52275 () Bool)

(declare-fun e!30788 () Int)

(assert (=> b!52275 (= e!30788 0)))

(declare-fun d!6375 () Bool)

(declare-fun e!30791 () Bool)

(assert (=> d!6375 e!30791))

(declare-fun res!34065 () Bool)

(assert (=> d!6375 (=> (not res!34065) (not e!30791))))

(declare-fun lt!9379 () List!1077)

(assert (=> d!6375 (= res!34065 (= ((_ map implies) (content!30 lt!9379) (content!30 lt!9359)) ((as const (InoxSet Token!226)) true)))))

(declare-fun e!30787 () List!1077)

(assert (=> d!6375 (= lt!9379 e!30787)))

(declare-fun c!16858 () Bool)

(assert (=> d!6375 (= c!16858 ((_ is Nil!1071) lt!9359))))

(assert (=> d!6375 (= (drop!46 lt!9359 (+ 2 from!821)) lt!9379)))

(declare-fun b!52276 () Bool)

(declare-fun e!30789 () Int)

(declare-fun call!3370 () Int)

(assert (=> b!52276 (= e!30789 call!3370)))

(declare-fun b!52277 () Bool)

(assert (=> b!52277 (= e!30789 e!30788)))

(declare-fun c!16857 () Bool)

(assert (=> b!52277 (= c!16857 (>= (+ 2 from!821) call!3370))))

(declare-fun b!52278 () Bool)

(assert (=> b!52278 (= e!30791 (= (size!983 lt!9379) e!30789))))

(declare-fun c!16855 () Bool)

(assert (=> b!52278 (= c!16855 (<= (+ 2 from!821) 0))))

(declare-fun bm!3365 () Bool)

(assert (=> bm!3365 (= call!3370 (size!983 lt!9359))))

(declare-fun b!52279 () Bool)

(assert (=> b!52279 (= e!30788 (- call!3370 (+ 2 from!821)))))

(declare-fun b!52280 () Bool)

(declare-fun e!30790 () List!1077)

(assert (=> b!52280 (= e!30790 lt!9359)))

(declare-fun b!52281 () Bool)

(assert (=> b!52281 (= e!30790 (drop!46 (t!17312 lt!9359) (- (+ 2 from!821) 1)))))

(declare-fun b!52282 () Bool)

(assert (=> b!52282 (= e!30787 e!30790)))

(declare-fun c!16856 () Bool)

(assert (=> b!52282 (= c!16856 (<= (+ 2 from!821) 0))))

(declare-fun b!52283 () Bool)

(assert (=> b!52283 (= e!30787 Nil!1071)))

(assert (= (and d!6375 c!16858) b!52283))

(assert (= (and d!6375 (not c!16858)) b!52282))

(assert (= (and b!52282 c!16856) b!52280))

(assert (= (and b!52282 (not c!16856)) b!52281))

(assert (= (and d!6375 res!34065) b!52278))

(assert (= (and b!52278 c!16855) b!52276))

(assert (= (and b!52278 (not c!16855)) b!52277))

(assert (= (and b!52277 c!16857) b!52275))

(assert (= (and b!52277 (not c!16857)) b!52279))

(assert (= (or b!52276 b!52277 b!52279) bm!3365))

(declare-fun m!26608 () Bool)

(assert (=> d!6375 m!26608))

(assert (=> d!6375 m!26596))

(declare-fun m!26610 () Bool)

(assert (=> b!52278 m!26610))

(assert (=> bm!3365 m!26600))

(declare-fun m!26612 () Bool)

(assert (=> b!52281 m!26612))

(assert (=> b!52232 d!6375))

(declare-fun d!6377 () Bool)

(assert (=> d!6377 (= (tail!71 lt!9360) (t!17312 lt!9360))))

(assert (=> b!52232 d!6377))

(declare-fun d!6379 () Bool)

(assert (=> d!6379 (= (tail!71 (drop!46 lt!9359 (+ 1 from!821))) (drop!46 lt!9359 (+ 1 from!821 1)))))

(declare-fun lt!9382 () Unit!610)

(declare-fun choose!1188 (List!1077 Int) Unit!610)

(assert (=> d!6379 (= lt!9382 (choose!1188 lt!9359 (+ 1 from!821)))))

(declare-fun e!30794 () Bool)

(assert (=> d!6379 e!30794))

(declare-fun res!34068 () Bool)

(assert (=> d!6379 (=> (not res!34068) (not e!30794))))

(assert (=> d!6379 (= res!34068 (>= (+ 1 from!821) 0))))

(assert (=> d!6379 (= (lemmaDropTail!42 lt!9359 (+ 1 from!821)) lt!9382)))

(declare-fun b!52286 () Bool)

(assert (=> b!52286 (= e!30794 (< (+ 1 from!821) (size!983 lt!9359)))))

(assert (= (and d!6379 res!34068) b!52286))

(assert (=> d!6379 m!26572))

(assert (=> d!6379 m!26572))

(declare-fun m!26614 () Bool)

(assert (=> d!6379 m!26614))

(declare-fun m!26616 () Bool)

(assert (=> d!6379 m!26616))

(declare-fun m!26618 () Bool)

(assert (=> d!6379 m!26618))

(assert (=> b!52286 m!26600))

(assert (=> b!52232 d!6379))

(declare-fun d!6381 () Bool)

(assert (=> d!6381 (= (head!386 lt!9366) (h!6468 lt!9366))))

(assert (=> b!52232 d!6381))

(declare-fun d!6383 () Bool)

(assert (=> d!6383 (= (head!386 lt!9360) (h!6468 lt!9360))))

(assert (=> b!52232 d!6383))

(declare-fun d!6385 () Bool)

(assert (=> d!6385 (= (tail!71 (drop!46 lt!9359 from!821)) (drop!46 lt!9359 (+ from!821 1)))))

(declare-fun lt!9383 () Unit!610)

(assert (=> d!6385 (= lt!9383 (choose!1188 lt!9359 from!821))))

(declare-fun e!30795 () Bool)

(assert (=> d!6385 e!30795))

(declare-fun res!34069 () Bool)

(assert (=> d!6385 (=> (not res!34069) (not e!30795))))

(assert (=> d!6385 (= res!34069 (>= from!821 0))))

(assert (=> d!6385 (= (lemmaDropTail!42 lt!9359 from!821) lt!9383)))

(declare-fun b!52287 () Bool)

(assert (=> b!52287 (= e!30795 (< from!821 (size!983 lt!9359)))))

(assert (= (and d!6385 res!34069) b!52287))

(assert (=> d!6385 m!26550))

(assert (=> d!6385 m!26550))

(declare-fun m!26620 () Bool)

(assert (=> d!6385 m!26620))

(declare-fun m!26622 () Bool)

(assert (=> d!6385 m!26622))

(declare-fun m!26624 () Bool)

(assert (=> d!6385 m!26624))

(assert (=> b!52287 m!26600))

(assert (=> b!52232 d!6385))

(declare-fun d!6387 () Bool)

(assert (=> d!6387 (= (head!386 (drop!46 lt!9359 (+ 1 from!821))) (apply!113 lt!9359 (+ 1 from!821)))))

(declare-fun lt!9384 () Unit!610)

(assert (=> d!6387 (= lt!9384 (choose!1186 lt!9359 (+ 1 from!821)))))

(declare-fun e!30796 () Bool)

(assert (=> d!6387 e!30796))

(declare-fun res!34070 () Bool)

(assert (=> d!6387 (=> (not res!34070) (not e!30796))))

(assert (=> d!6387 (= res!34070 (>= (+ 1 from!821) 0))))

(assert (=> d!6387 (= (lemmaDropApply!46 lt!9359 (+ 1 from!821)) lt!9384)))

(declare-fun b!52288 () Bool)

(assert (=> b!52288 (= e!30796 (< (+ 1 from!821) (size!983 lt!9359)))))

(assert (= (and d!6387 res!34070) b!52288))

(assert (=> d!6387 m!26572))

(assert (=> d!6387 m!26572))

(declare-fun m!26626 () Bool)

(assert (=> d!6387 m!26626))

(assert (=> d!6387 m!26558))

(declare-fun m!26628 () Bool)

(assert (=> d!6387 m!26628))

(assert (=> b!52288 m!26600))

(assert (=> b!52232 d!6387))

(declare-fun b!52289 () Bool)

(declare-fun e!30798 () Int)

(assert (=> b!52289 (= e!30798 0)))

(declare-fun d!6389 () Bool)

(declare-fun e!30801 () Bool)

(assert (=> d!6389 e!30801))

(declare-fun res!34071 () Bool)

(assert (=> d!6389 (=> (not res!34071) (not e!30801))))

(declare-fun lt!9385 () List!1077)

(assert (=> d!6389 (= res!34071 (= ((_ map implies) (content!30 lt!9385) (content!30 lt!9359)) ((as const (InoxSet Token!226)) true)))))

(declare-fun e!30797 () List!1077)

(assert (=> d!6389 (= lt!9385 e!30797)))

(declare-fun c!16862 () Bool)

(assert (=> d!6389 (= c!16862 ((_ is Nil!1071) lt!9359))))

(assert (=> d!6389 (= (drop!46 lt!9359 (+ 1 from!821)) lt!9385)))

(declare-fun b!52290 () Bool)

(declare-fun e!30799 () Int)

(declare-fun call!3371 () Int)

(assert (=> b!52290 (= e!30799 call!3371)))

(declare-fun b!52291 () Bool)

(assert (=> b!52291 (= e!30799 e!30798)))

(declare-fun c!16861 () Bool)

(assert (=> b!52291 (= c!16861 (>= (+ 1 from!821) call!3371))))

(declare-fun b!52292 () Bool)

(assert (=> b!52292 (= e!30801 (= (size!983 lt!9385) e!30799))))

(declare-fun c!16859 () Bool)

(assert (=> b!52292 (= c!16859 (<= (+ 1 from!821) 0))))

(declare-fun bm!3366 () Bool)

(assert (=> bm!3366 (= call!3371 (size!983 lt!9359))))

(declare-fun b!52293 () Bool)

(assert (=> b!52293 (= e!30798 (- call!3371 (+ 1 from!821)))))

(declare-fun b!52294 () Bool)

(declare-fun e!30800 () List!1077)

(assert (=> b!52294 (= e!30800 lt!9359)))

(declare-fun b!52295 () Bool)

(assert (=> b!52295 (= e!30800 (drop!46 (t!17312 lt!9359) (- (+ 1 from!821) 1)))))

(declare-fun b!52296 () Bool)

(assert (=> b!52296 (= e!30797 e!30800)))

(declare-fun c!16860 () Bool)

(assert (=> b!52296 (= c!16860 (<= (+ 1 from!821) 0))))

(declare-fun b!52297 () Bool)

(assert (=> b!52297 (= e!30797 Nil!1071)))

(assert (= (and d!6389 c!16862) b!52297))

(assert (= (and d!6389 (not c!16862)) b!52296))

(assert (= (and b!52296 c!16860) b!52294))

(assert (= (and b!52296 (not c!16860)) b!52295))

(assert (= (and d!6389 res!34071) b!52292))

(assert (= (and b!52292 c!16859) b!52290))

(assert (= (and b!52292 (not c!16859)) b!52291))

(assert (= (and b!52291 c!16861) b!52289))

(assert (= (and b!52291 (not c!16861)) b!52293))

(assert (= (or b!52290 b!52291 b!52293) bm!3366))

(declare-fun m!26630 () Bool)

(assert (=> d!6389 m!26630))

(assert (=> d!6389 m!26596))

(declare-fun m!26632 () Bool)

(assert (=> b!52292 m!26632))

(assert (=> bm!3366 m!26600))

(declare-fun m!26634 () Bool)

(assert (=> b!52295 m!26634))

(assert (=> b!52232 d!6389))

(declare-fun d!6391 () Bool)

(declare-fun lt!9388 () Token!226)

(assert (=> d!6391 (contains!127 lt!9359 lt!9388)))

(declare-fun e!30806 () Token!226)

(assert (=> d!6391 (= lt!9388 e!30806)))

(declare-fun c!16865 () Bool)

(assert (=> d!6391 (= c!16865 (= from!821 0))))

(declare-fun e!30807 () Bool)

(assert (=> d!6391 e!30807))

(declare-fun res!34074 () Bool)

(assert (=> d!6391 (=> (not res!34074) (not e!30807))))

(assert (=> d!6391 (= res!34074 (<= 0 from!821))))

(assert (=> d!6391 (= (apply!113 lt!9359 from!821) lt!9388)))

(declare-fun b!52304 () Bool)

(assert (=> b!52304 (= e!30807 (< from!821 (size!983 lt!9359)))))

(declare-fun b!52305 () Bool)

(assert (=> b!52305 (= e!30806 (head!386 lt!9359))))

(declare-fun b!52306 () Bool)

(assert (=> b!52306 (= e!30806 (apply!113 (tail!71 lt!9359) (- from!821 1)))))

(assert (= (and d!6391 res!34074) b!52304))

(assert (= (and d!6391 c!16865) b!52305))

(assert (= (and d!6391 (not c!16865)) b!52306))

(declare-fun m!26636 () Bool)

(assert (=> d!6391 m!26636))

(assert (=> b!52304 m!26600))

(declare-fun m!26638 () Bool)

(assert (=> b!52305 m!26638))

(declare-fun m!26640 () Bool)

(assert (=> b!52306 m!26640))

(assert (=> b!52306 m!26640))

(declare-fun m!26642 () Bool)

(assert (=> b!52306 m!26642))

(assert (=> b!52232 d!6391))

(declare-fun d!6393 () Bool)

(assert (=> d!6393 (= (tail!71 lt!9366) (t!17312 lt!9366))))

(assert (=> b!52232 d!6393))

(declare-fun d!6395 () Bool)

(declare-fun lt!9391 () Bool)

(assert (=> d!6395 (= lt!9391 (contains!127 (list!274 v!6227) lt!9365))))

(declare-fun contains!130 (Conc!267 Token!226) Bool)

(assert (=> d!6395 (= lt!9391 (contains!130 (c!16842 v!6227) lt!9365))))

(assert (=> d!6395 (= (contains!128 v!6227 lt!9365) lt!9391)))

(declare-fun bs!6689 () Bool)

(assert (= bs!6689 d!6395))

(assert (=> bs!6689 m!26544))

(assert (=> bs!6689 m!26544))

(declare-fun m!26644 () Bool)

(assert (=> bs!6689 m!26644))

(declare-fun m!26646 () Bool)

(assert (=> bs!6689 m!26646))

(assert (=> b!52232 d!6395))

(declare-fun d!6397 () Bool)

(declare-fun lt!9392 () Token!226)

(assert (=> d!6397 (contains!127 lt!9359 lt!9392)))

(declare-fun e!30808 () Token!226)

(assert (=> d!6397 (= lt!9392 e!30808)))

(declare-fun c!16866 () Bool)

(assert (=> d!6397 (= c!16866 (= (+ 1 from!821) 0))))

(declare-fun e!30809 () Bool)

(assert (=> d!6397 e!30809))

(declare-fun res!34075 () Bool)

(assert (=> d!6397 (=> (not res!34075) (not e!30809))))

(assert (=> d!6397 (= res!34075 (<= 0 (+ 1 from!821)))))

(assert (=> d!6397 (= (apply!113 lt!9359 (+ 1 from!821)) lt!9392)))

(declare-fun b!52307 () Bool)

(assert (=> b!52307 (= e!30809 (< (+ 1 from!821) (size!983 lt!9359)))))

(declare-fun b!52308 () Bool)

(assert (=> b!52308 (= e!30808 (head!386 lt!9359))))

(declare-fun b!52309 () Bool)

(assert (=> b!52309 (= e!30808 (apply!113 (tail!71 lt!9359) (- (+ 1 from!821) 1)))))

(assert (= (and d!6397 res!34075) b!52307))

(assert (= (and d!6397 c!16866) b!52308))

(assert (= (and d!6397 (not c!16866)) b!52309))

(declare-fun m!26648 () Bool)

(assert (=> d!6397 m!26648))

(assert (=> b!52307 m!26600))

(assert (=> b!52308 m!26638))

(assert (=> b!52309 m!26640))

(assert (=> b!52309 m!26640))

(declare-fun m!26650 () Bool)

(assert (=> b!52309 m!26650))

(assert (=> b!52232 d!6397))

(declare-fun d!6399 () Bool)

(declare-fun lt!9393 () Bool)

(assert (=> d!6399 (= lt!9393 (contains!127 (list!274 v!6227) lt!9358))))

(assert (=> d!6399 (= lt!9393 (contains!130 (c!16842 v!6227) lt!9358))))

(assert (=> d!6399 (= (contains!128 v!6227 lt!9358) lt!9393)))

(declare-fun bs!6690 () Bool)

(assert (= bs!6690 d!6399))

(assert (=> bs!6690 m!26544))

(assert (=> bs!6690 m!26544))

(declare-fun m!26652 () Bool)

(assert (=> bs!6690 m!26652))

(declare-fun m!26654 () Bool)

(assert (=> bs!6690 m!26654))

(assert (=> b!52230 d!6399))

(declare-fun d!6401 () Bool)

(declare-fun lt!9394 () Token!226)

(assert (=> d!6401 (= lt!9394 (apply!113 (list!274 v!6227) (+ 1 from!821)))))

(assert (=> d!6401 (= lt!9394 (apply!114 (c!16842 v!6227) (+ 1 from!821)))))

(declare-fun e!30810 () Bool)

(assert (=> d!6401 e!30810))

(declare-fun res!34076 () Bool)

(assert (=> d!6401 (=> (not res!34076) (not e!30810))))

(assert (=> d!6401 (= res!34076 (<= 0 (+ 1 from!821)))))

(assert (=> d!6401 (= (apply!112 v!6227 (+ 1 from!821)) lt!9394)))

(declare-fun b!52310 () Bool)

(assert (=> b!52310 (= e!30810 (< (+ 1 from!821) (size!980 v!6227)))))

(assert (= (and d!6401 res!34076) b!52310))

(assert (=> d!6401 m!26544))

(assert (=> d!6401 m!26544))

(declare-fun m!26656 () Bool)

(assert (=> d!6401 m!26656))

(declare-fun m!26658 () Bool)

(assert (=> d!6401 m!26658))

(assert (=> b!52310 m!26576))

(assert (=> b!52230 d!6401))

(declare-fun d!6403 () Bool)

(assert (=> d!6403 (= (inv!1405 (tag!409 (h!6469 rules!1069))) (= (mod (str.len (value!9480 (tag!409 (h!6469 rules!1069)))) 2) 0))))

(assert (=> b!52225 d!6403))

(declare-fun d!6405 () Bool)

(declare-fun res!34079 () Bool)

(declare-fun e!30813 () Bool)

(assert (=> d!6405 (=> (not res!34079) (not e!30813))))

(declare-fun semiInverseModEq!19 (Int Int) Bool)

(assert (=> d!6405 (= res!34079 (semiInverseModEq!19 (toChars!569 (transformation!231 (h!6469 rules!1069))) (toValue!710 (transformation!231 (h!6469 rules!1069)))))))

(assert (=> d!6405 (= (inv!1411 (transformation!231 (h!6469 rules!1069))) e!30813)))

(declare-fun b!52313 () Bool)

(declare-fun equivClasses!15 (Int Int) Bool)

(assert (=> b!52313 (= e!30813 (equivClasses!15 (toChars!569 (transformation!231 (h!6469 rules!1069))) (toValue!710 (transformation!231 (h!6469 rules!1069)))))))

(assert (= (and d!6405 res!34079) b!52313))

(declare-fun m!26660 () Bool)

(assert (=> d!6405 m!26660))

(declare-fun m!26662 () Bool)

(assert (=> b!52313 m!26662))

(assert (=> b!52225 d!6405))

(declare-fun d!6407 () Bool)

(assert (=> d!6407 (= (isEmpty!217 rules!1069) ((_ is Nil!1072) rules!1069))))

(assert (=> b!52220 d!6407))

(declare-fun d!6409 () Bool)

(declare-fun lt!9397 () Bool)

(assert (=> d!6409 (= lt!9397 (select (content!30 lt!9359) lt!9365))))

(declare-fun e!30818 () Bool)

(assert (=> d!6409 (= lt!9397 e!30818)))

(declare-fun res!34085 () Bool)

(assert (=> d!6409 (=> (not res!34085) (not e!30818))))

(assert (=> d!6409 (= res!34085 ((_ is Cons!1071) lt!9359))))

(assert (=> d!6409 (= (contains!127 lt!9359 lt!9365) lt!9397)))

(declare-fun b!52318 () Bool)

(declare-fun e!30819 () Bool)

(assert (=> b!52318 (= e!30818 e!30819)))

(declare-fun res!34084 () Bool)

(assert (=> b!52318 (=> res!34084 e!30819)))

(assert (=> b!52318 (= res!34084 (= (h!6468 lt!9359) lt!9365))))

(declare-fun b!52319 () Bool)

(assert (=> b!52319 (= e!30819 (contains!127 (t!17312 lt!9359) lt!9365))))

(assert (= (and d!6409 res!34085) b!52318))

(assert (= (and b!52318 (not res!34084)) b!52319))

(assert (=> d!6409 m!26596))

(declare-fun m!26664 () Bool)

(assert (=> d!6409 m!26664))

(declare-fun m!26666 () Bool)

(assert (=> b!52319 m!26666))

(assert (=> b!52231 d!6409))

(declare-fun d!6411 () Bool)

(declare-fun lt!9400 () Int)

(assert (=> d!6411 (= lt!9400 (size!983 (list!274 v!6227)))))

(declare-fun size!984 (Conc!267) Int)

(assert (=> d!6411 (= lt!9400 (size!984 (c!16842 v!6227)))))

(assert (=> d!6411 (= (size!980 v!6227) lt!9400)))

(declare-fun bs!6691 () Bool)

(assert (= bs!6691 d!6411))

(assert (=> bs!6691 m!26544))

(assert (=> bs!6691 m!26544))

(declare-fun m!26668 () Bool)

(assert (=> bs!6691 m!26668))

(declare-fun m!26670 () Bool)

(assert (=> bs!6691 m!26670))

(assert (=> b!52229 d!6411))

(declare-fun d!6413 () Bool)

(declare-fun lt!9401 () Bool)

(assert (=> d!6413 (= lt!9401 (select (content!30 lt!9359) lt!9358))))

(declare-fun e!30820 () Bool)

(assert (=> d!6413 (= lt!9401 e!30820)))

(declare-fun res!34087 () Bool)

(assert (=> d!6413 (=> (not res!34087) (not e!30820))))

(assert (=> d!6413 (= res!34087 ((_ is Cons!1071) lt!9359))))

(assert (=> d!6413 (= (contains!127 lt!9359 lt!9358) lt!9401)))

(declare-fun b!52320 () Bool)

(declare-fun e!30821 () Bool)

(assert (=> b!52320 (= e!30820 e!30821)))

(declare-fun res!34086 () Bool)

(assert (=> b!52320 (=> res!34086 e!30821)))

(assert (=> b!52320 (= res!34086 (= (h!6468 lt!9359) lt!9358))))

(declare-fun b!52321 () Bool)

(assert (=> b!52321 (= e!30821 (contains!127 (t!17312 lt!9359) lt!9358))))

(assert (= (and d!6413 res!34087) b!52320))

(assert (= (and b!52320 (not res!34086)) b!52321))

(assert (=> d!6413 m!26596))

(declare-fun m!26672 () Bool)

(assert (=> d!6413 m!26672))

(declare-fun m!26674 () Bool)

(assert (=> b!52321 m!26674))

(assert (=> b!52224 d!6413))

(declare-fun b!52434 () Bool)

(declare-fun e!30901 () Bool)

(assert (=> b!52434 (= e!30901 true)))

(declare-fun b!52433 () Bool)

(declare-fun e!30900 () Bool)

(assert (=> b!52433 (= e!30900 e!30901)))

(declare-fun b!52432 () Bool)

(declare-fun e!30899 () Bool)

(assert (=> b!52432 (= e!30899 e!30900)))

(declare-fun d!6415 () Bool)

(assert (=> d!6415 e!30899))

(assert (= b!52433 b!52434))

(assert (= b!52432 b!52433))

(assert (= (and d!6415 ((_ is Cons!1072) rules!1069)) b!52432))

(declare-fun order!309 () Int)

(declare-fun lambda!1059 () Int)

(declare-fun order!307 () Int)

(declare-fun dynLambda!183 (Int Int) Int)

(declare-fun dynLambda!184 (Int Int) Int)

(assert (=> b!52434 (< (dynLambda!183 order!307 (toValue!710 (transformation!231 (h!6469 rules!1069)))) (dynLambda!184 order!309 lambda!1059))))

(declare-fun order!311 () Int)

(declare-fun dynLambda!185 (Int Int) Int)

(assert (=> b!52434 (< (dynLambda!185 order!311 (toChars!569 (transformation!231 (h!6469 rules!1069)))) (dynLambda!184 order!309 lambda!1059))))

(assert (=> d!6415 true))

(declare-fun e!30890 () Bool)

(assert (=> d!6415 e!30890))

(declare-fun res!34120 () Bool)

(assert (=> d!6415 (=> (not res!34120) (not e!30890))))

(declare-fun lt!9435 () Bool)

(declare-fun forall!123 (List!1077 Int) Bool)

(assert (=> d!6415 (= res!34120 (= lt!9435 (forall!123 (list!274 v!6227) lambda!1059)))))

(declare-fun forall!124 (BalanceConc!538 Int) Bool)

(assert (=> d!6415 (= lt!9435 (forall!124 v!6227 lambda!1059))))

(assert (=> d!6415 (not (isEmpty!217 rules!1069))))

(assert (=> d!6415 (= (rulesProduceEachTokenIndividually!61 thiss!11059 rules!1069 v!6227) lt!9435)))

(declare-fun b!52421 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!38 (LexerInterface!123 List!1078 List!1077) Bool)

(assert (=> b!52421 (= e!30890 (= lt!9435 (rulesProduceEachTokenIndividuallyList!38 thiss!11059 rules!1069 (list!274 v!6227))))))

(assert (= (and d!6415 res!34120) b!52421))

(assert (=> d!6415 m!26544))

(assert (=> d!6415 m!26544))

(declare-fun m!26774 () Bool)

(assert (=> d!6415 m!26774))

(declare-fun m!26776 () Bool)

(assert (=> d!6415 m!26776))

(assert (=> d!6415 m!26522))

(assert (=> b!52421 m!26544))

(assert (=> b!52421 m!26544))

(declare-fun m!26778 () Bool)

(assert (=> b!52421 m!26778))

(assert (=> b!52222 d!6415))

(declare-fun d!6467 () Bool)

(declare-fun isBalanced!37 (Conc!267) Bool)

(assert (=> d!6467 (= (inv!1409 v!6227) (isBalanced!37 (c!16842 v!6227)))))

(declare-fun bs!6697 () Bool)

(assert (= bs!6697 d!6467))

(declare-fun m!26786 () Bool)

(assert (=> bs!6697 m!26786))

(assert (=> start!3886 d!6467))

(declare-fun d!6469 () Bool)

(declare-fun c!16896 () Bool)

(assert (=> d!6469 (= c!16896 ((_ is Node!267) (c!16842 v!6227)))))

(declare-fun e!30930 () Bool)

(assert (=> d!6469 (= (inv!1410 (c!16842 v!6227)) e!30930)))

(declare-fun b!52482 () Bool)

(declare-fun inv!1414 (Conc!267) Bool)

(assert (=> b!52482 (= e!30930 (inv!1414 (c!16842 v!6227)))))

(declare-fun b!52483 () Bool)

(declare-fun e!30931 () Bool)

(assert (=> b!52483 (= e!30930 e!30931)))

(declare-fun res!34128 () Bool)

(assert (=> b!52483 (= res!34128 (not ((_ is Leaf!518) (c!16842 v!6227))))))

(assert (=> b!52483 (=> res!34128 e!30931)))

(declare-fun b!52484 () Bool)

(declare-fun inv!1416 (Conc!267) Bool)

(assert (=> b!52484 (= e!30931 (inv!1416 (c!16842 v!6227)))))

(assert (= (and d!6469 c!16896) b!52482))

(assert (= (and d!6469 (not c!16896)) b!52483))

(assert (= (and b!52483 (not res!34128)) b!52484))

(declare-fun m!26792 () Bool)

(assert (=> b!52482 m!26792))

(declare-fun m!26794 () Bool)

(assert (=> b!52484 m!26794))

(assert (=> b!52223 d!6469))

(declare-fun b!52495 () Bool)

(declare-fun b_free!1673 () Bool)

(declare-fun b_next!1673 () Bool)

(assert (=> b!52495 (= b_free!1673 (not b_next!1673))))

(declare-fun tp!34044 () Bool)

(declare-fun b_and!1723 () Bool)

(assert (=> b!52495 (= tp!34044 b_and!1723)))

(declare-fun b_free!1675 () Bool)

(declare-fun b_next!1675 () Bool)

(assert (=> b!52495 (= b_free!1675 (not b_next!1675))))

(declare-fun tp!34045 () Bool)

(declare-fun b_and!1725 () Bool)

(assert (=> b!52495 (= tp!34045 b_and!1725)))

(declare-fun e!30941 () Bool)

(assert (=> b!52495 (= e!30941 (and tp!34044 tp!34045))))

(declare-fun b!52494 () Bool)

(declare-fun e!30942 () Bool)

(declare-fun tp!34046 () Bool)

(assert (=> b!52494 (= e!30942 (and tp!34046 (inv!1405 (tag!409 (h!6469 (t!17313 rules!1069)))) (inv!1411 (transformation!231 (h!6469 (t!17313 rules!1069)))) e!30941))))

(declare-fun b!52493 () Bool)

(declare-fun e!30943 () Bool)

(declare-fun tp!34043 () Bool)

(assert (=> b!52493 (= e!30943 (and e!30942 tp!34043))))

(assert (=> b!52226 (= tp!33998 e!30943)))

(assert (= b!52494 b!52495))

(assert (= b!52493 b!52494))

(assert (= (and b!52226 ((_ is Cons!1072) (t!17313 rules!1069))) b!52493))

(declare-fun m!26796 () Bool)

(assert (=> b!52494 m!26796))

(declare-fun m!26798 () Bool)

(assert (=> b!52494 m!26798))

(declare-fun b!52509 () Bool)

(declare-fun e!30946 () Bool)

(declare-fun tp!34060 () Bool)

(declare-fun tp!34061 () Bool)

(assert (=> b!52509 (= e!30946 (and tp!34060 tp!34061))))

(declare-fun b!52506 () Bool)

(declare-fun tp_is_empty!537 () Bool)

(assert (=> b!52506 (= e!30946 tp_is_empty!537)))

(assert (=> b!52225 (= tp!33994 e!30946)))

(declare-fun b!52507 () Bool)

(declare-fun tp!34058 () Bool)

(declare-fun tp!34057 () Bool)

(assert (=> b!52507 (= e!30946 (and tp!34058 tp!34057))))

(declare-fun b!52508 () Bool)

(declare-fun tp!34059 () Bool)

(assert (=> b!52508 (= e!30946 tp!34059)))

(assert (= (and b!52225 ((_ is ElementMatch!299) (regex!231 (h!6469 rules!1069)))) b!52506))

(assert (= (and b!52225 ((_ is Concat!521) (regex!231 (h!6469 rules!1069)))) b!52507))

(assert (= (and b!52225 ((_ is Star!299) (regex!231 (h!6469 rules!1069)))) b!52508))

(assert (= (and b!52225 ((_ is Union!299) (regex!231 (h!6469 rules!1069)))) b!52509))

(declare-fun b!52518 () Bool)

(declare-fun tp!34069 () Bool)

(declare-fun tp!34068 () Bool)

(declare-fun e!30951 () Bool)

(assert (=> b!52518 (= e!30951 (and (inv!1410 (left!807 (c!16842 v!6227))) tp!34068 (inv!1410 (right!1137 (c!16842 v!6227))) tp!34069))))

(declare-fun b!52520 () Bool)

(declare-fun e!30952 () Bool)

(declare-fun tp!34070 () Bool)

(assert (=> b!52520 (= e!30952 tp!34070)))

(declare-fun b!52519 () Bool)

(declare-fun inv!1417 (IArray!535) Bool)

(assert (=> b!52519 (= e!30951 (and (inv!1417 (xs!2846 (c!16842 v!6227))) e!30952))))

(assert (=> b!52223 (= tp!33995 (and (inv!1410 (c!16842 v!6227)) e!30951))))

(assert (= (and b!52223 ((_ is Node!267) (c!16842 v!6227))) b!52518))

(assert (= b!52519 b!52520))

(assert (= (and b!52223 ((_ is Leaf!518) (c!16842 v!6227))) b!52519))

(declare-fun m!26800 () Bool)

(assert (=> b!52518 m!26800))

(declare-fun m!26802 () Bool)

(assert (=> b!52518 m!26802))

(declare-fun m!26804 () Bool)

(assert (=> b!52519 m!26804))

(assert (=> b!52223 m!26542))

(check-sat (not d!6395) (not b!52287) (not b_next!1667) (not b!52306) (not b!52304) (not d!6387) (not bm!3365) (not b!52305) (not b!52281) (not b!52493) (not d!6397) (not b_next!1675) (not b!52266) (not b!52484) b_and!1725 (not b!52507) (not b!52288) (not d!6369) (not b!52321) (not b!52494) (not b!52509) (not d!6375) (not b!52508) (not d!6391) (not bm!3364) (not b!52432) (not d!6413) (not b!52421) (not d!6385) (not b!52482) (not d!6409) (not d!6363) b_and!1723 (not d!6379) (not b!52269) (not b!52278) b_and!1717 (not d!6467) (not b!52518) (not b_next!1665) (not b!52292) (not d!6373) (not b!52286) (not b!52307) (not b!52313) (not b!52319) (not d!6405) (not d!6399) (not b_next!1673) (not b!52223) (not d!6389) (not b!52308) (not d!6359) (not d!6411) (not b!52310) (not b!52309) (not b!52520) (not d!6401) (not d!6371) b_and!1715 (not b!52295) (not bm!3366) (not b!52235) (not b!52244) tp_is_empty!537 (not b!52519) (not d!6415) (not b!52274))
(check-sat (not b_next!1675) (not b_next!1667) b_and!1725 b_and!1723 b_and!1717 (not b_next!1665) (not b_next!1673) b_and!1715)
