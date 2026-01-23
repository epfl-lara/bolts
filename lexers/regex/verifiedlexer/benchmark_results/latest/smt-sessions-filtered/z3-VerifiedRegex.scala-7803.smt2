; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!409942 () Bool)

(assert start!409942)

(declare-datatypes ((List!47439 0))(
  ( (Nil!47315) (Cons!47315 (h!52735 (_ BitVec 16)) (t!353797 List!47439)) )
))
(declare-fun lt!1512964 () List!47439)

(declare-datatypes ((IArray!28599 0))(
  ( (IArray!28600 (innerList!14357 List!47439)) )
))
(declare-datatypes ((Conc!14297 0))(
  ( (Node!14297 (left!35180 Conc!14297) (right!35510 Conc!14297) (csize!28824 Int) (cheight!14508 Int)) (Leaf!22101 (xs!17603 IArray!28599) (csize!28825 Int)) (Empty!14297) )
))
(declare-datatypes ((BalanceConc!28104 0))(
  ( (BalanceConc!28105 (c!726900 Conc!14297)) )
))
(declare-fun v!3845 () BalanceConc!28104)

(declare-fun efficientList!519 (BalanceConc!28104) List!47439)

(assert (=> start!409942 (= lt!1512964 (efficientList!519 v!3845))))

(declare-datatypes ((TokenValue!8270 0))(
  ( (FloatLiteralValue!16540 (text!58335 List!47439)) (TokenValueExt!8269 (__x!28716 Int)) (Broken!41350 (value!249631 List!47439)) (Object!8393) (End!8270) (Def!8270) (Underscore!8270) (Match!8270) (Else!8270) (Error!8270) (Case!8270) (If!8270) (Extends!8270) (Abstract!8270) (Class!8270) (Val!8270) (DelimiterValue!16540 (del!8330 List!47439)) (KeywordValue!8276 (value!249632 List!47439)) (CommentValue!16540 (value!249633 List!47439)) (WhitespaceValue!16540 (value!249634 List!47439)) (IndentationValue!8270 (value!249635 List!47439)) (String!55285) (Int32!8270) (Broken!41351 (value!249636 List!47439)) (Boolean!8271) (Unit!66240) (OperatorValue!8273 (op!8330 List!47439)) (IdentifierValue!16540 (value!249637 List!47439)) (IdentifierValue!16541 (value!249638 List!47439)) (WhitespaceValue!16541 (value!249639 List!47439)) (True!16540) (False!16540) (Broken!41352 (value!249640 List!47439)) (Broken!41353 (value!249641 List!47439)) (True!16541) (RightBrace!8270) (RightBracket!8270) (Colon!8270) (Null!8270) (Comma!8270) (LeftBracket!8270) (False!16541) (LeftBrace!8270) (ImaginaryLiteralValue!8270 (text!58336 List!47439)) (StringLiteralValue!24810 (value!249642 List!47439)) (EOFValue!8270 (value!249643 List!47439)) (IdentValue!8270 (value!249644 List!47439)) (DelimiterValue!16541 (value!249645 List!47439)) (DedentValue!8270 (value!249646 List!47439)) (NewLineValue!8270 (value!249647 List!47439)) (IntegerValue!24810 (value!249648 (_ BitVec 32)) (text!58337 List!47439)) (IntegerValue!24811 (value!249649 Int) (text!58338 List!47439)) (Times!8270) (Or!8270) (Equal!8270) (Minus!8270) (Broken!41354 (value!249650 List!47439)) (And!8270) (Div!8270) (LessEqual!8270) (Mod!8270) (Concat!21168) (Not!8270) (Plus!8270) (SpaceValue!8270 (value!249651 List!47439)) (IntegerValue!24812 (value!249652 Int) (text!58339 List!47439)) (StringLiteralValue!24811 (text!58340 List!47439)) (FloatLiteralValue!16541 (text!58341 List!47439)) (BytesLiteralValue!8270 (value!249653 List!47439)) (CommentValue!16541 (value!249654 List!47439)) (StringLiteralValue!24812 (value!249655 List!47439)) (ErrorTokenValue!8270 (msg!8331 List!47439)) )
))
(declare-fun inv!21 (TokenValue!8270) Bool)

(declare-fun charsToInt!0 (List!47439) (_ BitVec 32))

(assert (=> start!409942 (not (inv!21 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)))))

(declare-fun e!2652408 () Bool)

(declare-fun inv!62471 (BalanceConc!28104) Bool)

(assert (=> start!409942 (and (inv!62471 v!3845) e!2652408)))

(declare-fun b!4271998 () Bool)

(declare-fun tp!1308186 () Bool)

(declare-fun inv!62472 (Conc!14297) Bool)

(assert (=> b!4271998 (= e!2652408 (and (inv!62472 (c!726900 v!3845)) tp!1308186))))

(assert (= start!409942 b!4271998))

(declare-fun m!4865759 () Bool)

(assert (=> start!409942 m!4865759))

(declare-fun m!4865761 () Bool)

(assert (=> start!409942 m!4865761))

(declare-fun m!4865763 () Bool)

(assert (=> start!409942 m!4865763))

(declare-fun m!4865765 () Bool)

(assert (=> start!409942 m!4865765))

(declare-fun m!4865767 () Bool)

(assert (=> b!4271998 m!4865767))

(check-sat (not b!4271998) (not start!409942))
(check-sat)
(get-model)

(declare-fun d!1260198 () Bool)

(declare-fun c!726903 () Bool)

(get-info :version)

(assert (=> d!1260198 (= c!726903 ((_ is Node!14297) (c!726900 v!3845)))))

(declare-fun e!2652413 () Bool)

(assert (=> d!1260198 (= (inv!62472 (c!726900 v!3845)) e!2652413)))

(declare-fun b!4272005 () Bool)

(declare-fun inv!62473 (Conc!14297) Bool)

(assert (=> b!4272005 (= e!2652413 (inv!62473 (c!726900 v!3845)))))

(declare-fun b!4272006 () Bool)

(declare-fun e!2652414 () Bool)

(assert (=> b!4272006 (= e!2652413 e!2652414)))

(declare-fun res!1754767 () Bool)

(assert (=> b!4272006 (= res!1754767 (not ((_ is Leaf!22101) (c!726900 v!3845))))))

(assert (=> b!4272006 (=> res!1754767 e!2652414)))

(declare-fun b!4272007 () Bool)

(declare-fun inv!62474 (Conc!14297) Bool)

(assert (=> b!4272007 (= e!2652414 (inv!62474 (c!726900 v!3845)))))

(assert (= (and d!1260198 c!726903) b!4272005))

(assert (= (and d!1260198 (not c!726903)) b!4272006))

(assert (= (and b!4272006 (not res!1754767)) b!4272007))

(declare-fun m!4865775 () Bool)

(assert (=> b!4272005 m!4865775))

(declare-fun m!4865777 () Bool)

(assert (=> b!4272007 m!4865777))

(assert (=> b!4271998 d!1260198))

(declare-fun d!1260202 () Bool)

(declare-fun lt!1512970 () List!47439)

(declare-fun list!17179 (BalanceConc!28104) List!47439)

(assert (=> d!1260202 (= lt!1512970 (list!17179 v!3845))))

(declare-fun efficientList!521 (Conc!14297 List!47439) List!47439)

(declare-fun efficientList$default$2!181 (Conc!14297) List!47439)

(assert (=> d!1260202 (= lt!1512970 (efficientList!521 (c!726900 v!3845) (efficientList$default$2!181 (c!726900 v!3845))))))

(assert (=> d!1260202 (= (efficientList!519 v!3845) lt!1512970)))

(declare-fun bs!601234 () Bool)

(assert (= bs!601234 d!1260202))

(declare-fun m!4865789 () Bool)

(assert (=> bs!601234 m!4865789))

(declare-fun m!4865791 () Bool)

(assert (=> bs!601234 m!4865791))

(assert (=> bs!601234 m!4865791))

(declare-fun m!4865793 () Bool)

(assert (=> bs!601234 m!4865793))

(assert (=> start!409942 d!1260202))

(declare-fun b!4272042 () Bool)

(declare-fun e!2652438 () Bool)

(declare-fun inv!17 (TokenValue!8270) Bool)

(assert (=> b!4272042 (= e!2652438 (inv!17 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)))))

(declare-fun d!1260210 () Bool)

(declare-fun c!726918 () Bool)

(assert (=> d!1260210 (= c!726918 ((_ is IntegerValue!24810) (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)))))

(declare-fun e!2652437 () Bool)

(assert (=> d!1260210 (= (inv!21 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)) e!2652437)))

(declare-fun b!4272043 () Bool)

(declare-fun inv!16 (TokenValue!8270) Bool)

(assert (=> b!4272043 (= e!2652437 (inv!16 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)))))

(declare-fun b!4272044 () Bool)

(declare-fun res!1754776 () Bool)

(declare-fun e!2652436 () Bool)

(assert (=> b!4272044 (=> res!1754776 e!2652436)))

(assert (=> b!4272044 (= res!1754776 (not ((_ is IntegerValue!24812) (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964))))))

(assert (=> b!4272044 (= e!2652438 e!2652436)))

(declare-fun b!4272045 () Bool)

(assert (=> b!4272045 (= e!2652437 e!2652438)))

(declare-fun c!726917 () Bool)

(assert (=> b!4272045 (= c!726917 ((_ is IntegerValue!24811) (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)))))

(declare-fun b!4272046 () Bool)

(declare-fun inv!15 (TokenValue!8270) Bool)

(assert (=> b!4272046 (= e!2652436 (inv!15 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)))))

(assert (= (and d!1260210 c!726918) b!4272043))

(assert (= (and d!1260210 (not c!726918)) b!4272045))

(assert (= (and b!4272045 c!726917) b!4272042))

(assert (= (and b!4272045 (not c!726917)) b!4272044))

(assert (= (and b!4272044 (not res!1754776)) b!4272046))

(declare-fun m!4865799 () Bool)

(assert (=> b!4272042 m!4865799))

(declare-fun m!4865801 () Bool)

(assert (=> b!4272043 m!4865801))

(declare-fun m!4865803 () Bool)

(assert (=> b!4272046 m!4865803))

(assert (=> start!409942 d!1260210))

(declare-fun d!1260212 () Bool)

(declare-fun choose!625 (List!47439) (_ BitVec 32))

(assert (=> d!1260212 (= (charsToInt!0 lt!1512964) (choose!625 lt!1512964))))

(declare-fun bs!601235 () Bool)

(assert (= bs!601235 d!1260212))

(declare-fun m!4865805 () Bool)

(assert (=> bs!601235 m!4865805))

(assert (=> start!409942 d!1260212))

(declare-fun d!1260214 () Bool)

(declare-fun isBalanced!3846 (Conc!14297) Bool)

(assert (=> d!1260214 (= (inv!62471 v!3845) (isBalanced!3846 (c!726900 v!3845)))))

(declare-fun bs!601236 () Bool)

(assert (= bs!601236 d!1260214))

(declare-fun m!4865813 () Bool)

(assert (=> bs!601236 m!4865813))

(assert (=> start!409942 d!1260214))

(declare-fun b!4272061 () Bool)

(declare-fun tp!1308197 () Bool)

(declare-fun tp!1308198 () Bool)

(declare-fun e!2652449 () Bool)

(assert (=> b!4272061 (= e!2652449 (and (inv!62472 (left!35180 (c!726900 v!3845))) tp!1308197 (inv!62472 (right!35510 (c!726900 v!3845))) tp!1308198))))

(declare-fun b!4272062 () Bool)

(declare-fun inv!62478 (IArray!28599) Bool)

(assert (=> b!4272062 (= e!2652449 (inv!62478 (xs!17603 (c!726900 v!3845))))))

(assert (=> b!4271998 (= tp!1308186 (and (inv!62472 (c!726900 v!3845)) e!2652449))))

(assert (= (and b!4271998 ((_ is Node!14297) (c!726900 v!3845))) b!4272061))

(assert (= (and b!4271998 ((_ is Leaf!22101) (c!726900 v!3845))) b!4272062))

(declare-fun m!4865815 () Bool)

(assert (=> b!4272061 m!4865815))

(declare-fun m!4865817 () Bool)

(assert (=> b!4272061 m!4865817))

(declare-fun m!4865819 () Bool)

(assert (=> b!4272062 m!4865819))

(assert (=> b!4271998 m!4865767))

(check-sat (not b!4272061) (not b!4271998) (not b!4272042) (not b!4272007) (not b!4272046) (not b!4272005) (not b!4272062) (not d!1260212) (not b!4272043) (not d!1260202) (not d!1260214))
(check-sat)
(get-model)

(declare-fun d!1260216 () Bool)

(declare-fun size!34643 (List!47439) Int)

(assert (=> d!1260216 (= (inv!62478 (xs!17603 (c!726900 v!3845))) (<= (size!34643 (innerList!14357 (xs!17603 (c!726900 v!3845)))) 2147483647))))

(declare-fun bs!601237 () Bool)

(assert (= bs!601237 d!1260216))

(declare-fun m!4865821 () Bool)

(assert (=> bs!601237 m!4865821))

(assert (=> b!4272062 d!1260216))

(declare-fun d!1260218 () Bool)

(declare-fun res!1754781 () Bool)

(declare-fun e!2652453 () Bool)

(assert (=> d!1260218 (=> (not res!1754781) (not e!2652453))))

(declare-fun list!17180 (IArray!28599) List!47439)

(assert (=> d!1260218 (= res!1754781 (<= (size!34643 (list!17180 (xs!17603 (c!726900 v!3845)))) 512))))

(assert (=> d!1260218 (= (inv!62474 (c!726900 v!3845)) e!2652453)))

(declare-fun b!4272067 () Bool)

(declare-fun res!1754782 () Bool)

(assert (=> b!4272067 (=> (not res!1754782) (not e!2652453))))

(assert (=> b!4272067 (= res!1754782 (= (csize!28825 (c!726900 v!3845)) (size!34643 (list!17180 (xs!17603 (c!726900 v!3845))))))))

(declare-fun b!4272068 () Bool)

(assert (=> b!4272068 (= e!2652453 (and (> (csize!28825 (c!726900 v!3845)) 0) (<= (csize!28825 (c!726900 v!3845)) 512)))))

(assert (= (and d!1260218 res!1754781) b!4272067))

(assert (= (and b!4272067 res!1754782) b!4272068))

(declare-fun m!4865823 () Bool)

(assert (=> d!1260218 m!4865823))

(assert (=> d!1260218 m!4865823))

(declare-fun m!4865825 () Bool)

(assert (=> d!1260218 m!4865825))

(assert (=> b!4272067 m!4865823))

(assert (=> b!4272067 m!4865823))

(assert (=> b!4272067 m!4865825))

(assert (=> b!4272007 d!1260218))

(declare-fun d!1260220 () Bool)

(declare-fun list!17181 (Conc!14297) List!47439)

(assert (=> d!1260220 (= (list!17179 v!3845) (list!17181 (c!726900 v!3845)))))

(declare-fun bs!601238 () Bool)

(assert (= bs!601238 d!1260220))

(declare-fun m!4865827 () Bool)

(assert (=> bs!601238 m!4865827))

(assert (=> d!1260202 d!1260220))

(declare-fun b!4272096 () Bool)

(declare-fun e!2652467 () List!47439)

(declare-fun efficientList!522 (IArray!28599) List!47439)

(assert (=> b!4272096 (= e!2652467 (efficientList!522 (xs!17603 (c!726900 v!3845))))))

(declare-fun bm!294168 () Bool)

(declare-fun c!726926 () Bool)

(declare-fun c!726925 () Bool)

(assert (=> bm!294168 (= c!726926 c!726925)))

(declare-fun call!294173 () List!47439)

(declare-fun ++!12075 (List!47439 List!47439) List!47439)

(assert (=> bm!294168 (= call!294173 (++!12075 e!2652467 (efficientList$default$2!181 (c!726900 v!3845))))))

(declare-fun b!4272097 () Bool)

(declare-fun e!2652466 () List!47439)

(assert (=> b!4272097 (= e!2652466 (efficientList$default$2!181 (c!726900 v!3845)))))

(declare-fun b!4272098 () Bool)

(declare-datatypes ((Unit!66241 0))(
  ( (Unit!66242) )
))
(declare-fun lt!1512981 () Unit!66241)

(declare-fun lt!1512983 () Unit!66241)

(assert (=> b!4272098 (= lt!1512981 lt!1512983)))

(declare-fun lt!1512982 () List!47439)

(declare-fun lt!1512984 () List!47439)

(assert (=> b!4272098 (= (++!12075 (++!12075 lt!1512982 lt!1512984) (efficientList$default$2!181 (c!726900 v!3845))) (++!12075 lt!1512982 call!294173))))

(declare-fun lemmaConcatAssociativity!2714 (List!47439 List!47439 List!47439) Unit!66241)

(assert (=> b!4272098 (= lt!1512983 (lemmaConcatAssociativity!2714 lt!1512982 lt!1512984 (efficientList$default$2!181 (c!726900 v!3845))))))

(assert (=> b!4272098 (= lt!1512984 (list!17181 (right!35510 (c!726900 v!3845))))))

(assert (=> b!4272098 (= lt!1512982 (list!17181 (left!35180 (c!726900 v!3845))))))

(declare-fun e!2652468 () List!47439)

(assert (=> b!4272098 (= e!2652468 (efficientList!521 (left!35180 (c!726900 v!3845)) (efficientList!521 (right!35510 (c!726900 v!3845)) (efficientList$default$2!181 (c!726900 v!3845)))))))

(declare-fun d!1260222 () Bool)

(declare-fun lt!1512985 () List!47439)

(assert (=> d!1260222 (= lt!1512985 (++!12075 (list!17181 (c!726900 v!3845)) (efficientList$default$2!181 (c!726900 v!3845))))))

(assert (=> d!1260222 (= lt!1512985 e!2652466)))

(declare-fun c!726927 () Bool)

(assert (=> d!1260222 (= c!726927 ((_ is Empty!14297) (c!726900 v!3845)))))

(assert (=> d!1260222 (= (efficientList!521 (c!726900 v!3845) (efficientList$default$2!181 (c!726900 v!3845))) lt!1512985)))

(declare-fun b!4272099 () Bool)

(assert (=> b!4272099 (= e!2652468 call!294173)))

(declare-fun b!4272100 () Bool)

(assert (=> b!4272100 (= e!2652466 e!2652468)))

(assert (=> b!4272100 (= c!726925 ((_ is Leaf!22101) (c!726900 v!3845)))))

(declare-fun b!4272101 () Bool)

(assert (=> b!4272101 (= e!2652467 lt!1512984)))

(assert (= (and d!1260222 c!726927) b!4272097))

(assert (= (and d!1260222 (not c!726927)) b!4272100))

(assert (= (and b!4272100 c!726925) b!4272099))

(assert (= (and b!4272100 (not c!726925)) b!4272098))

(assert (= (or b!4272099 b!4272098) bm!294168))

(assert (= (and bm!294168 c!726926) b!4272096))

(assert (= (and bm!294168 (not c!726926)) b!4272101))

(declare-fun m!4865847 () Bool)

(assert (=> b!4272096 m!4865847))

(assert (=> bm!294168 m!4865791))

(declare-fun m!4865849 () Bool)

(assert (=> bm!294168 m!4865849))

(assert (=> b!4272098 m!4865791))

(declare-fun m!4865851 () Bool)

(assert (=> b!4272098 m!4865851))

(declare-fun m!4865853 () Bool)

(assert (=> b!4272098 m!4865853))

(assert (=> b!4272098 m!4865851))

(declare-fun m!4865855 () Bool)

(assert (=> b!4272098 m!4865855))

(assert (=> b!4272098 m!4865791))

(declare-fun m!4865857 () Bool)

(assert (=> b!4272098 m!4865857))

(declare-fun m!4865859 () Bool)

(assert (=> b!4272098 m!4865859))

(declare-fun m!4865861 () Bool)

(assert (=> b!4272098 m!4865861))

(declare-fun m!4865863 () Bool)

(assert (=> b!4272098 m!4865863))

(assert (=> b!4272098 m!4865863))

(assert (=> b!4272098 m!4865791))

(declare-fun m!4865865 () Bool)

(assert (=> b!4272098 m!4865865))

(assert (=> d!1260222 m!4865827))

(assert (=> d!1260222 m!4865827))

(assert (=> d!1260222 m!4865791))

(declare-fun m!4865867 () Bool)

(assert (=> d!1260222 m!4865867))

(assert (=> d!1260202 d!1260222))

(declare-fun d!1260236 () Bool)

(assert (=> d!1260236 (= (efficientList$default$2!181 (c!726900 v!3845)) Nil!47315)))

(assert (=> d!1260202 d!1260236))

(assert (=> b!4271998 d!1260198))

(declare-fun d!1260240 () Bool)

(declare-fun charsToBigInt!0 (List!47439 Int) Int)

(assert (=> d!1260240 (= (inv!15 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)) (= (charsToBigInt!0 (text!58339 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)) 0) (value!249652 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964))))))

(declare-fun bs!601242 () Bool)

(assert (= bs!601242 d!1260240))

(declare-fun m!4865871 () Bool)

(assert (=> bs!601242 m!4865871))

(assert (=> b!4272046 d!1260240))

(declare-fun d!1260242 () Bool)

(declare-fun res!1754807 () Bool)

(declare-fun e!2652471 () Bool)

(assert (=> d!1260242 (=> (not res!1754807) (not e!2652471))))

(declare-fun size!34646 (Conc!14297) Int)

(assert (=> d!1260242 (= res!1754807 (= (csize!28824 (c!726900 v!3845)) (+ (size!34646 (left!35180 (c!726900 v!3845))) (size!34646 (right!35510 (c!726900 v!3845))))))))

(assert (=> d!1260242 (= (inv!62473 (c!726900 v!3845)) e!2652471)))

(declare-fun b!4272108 () Bool)

(declare-fun res!1754808 () Bool)

(assert (=> b!4272108 (=> (not res!1754808) (not e!2652471))))

(assert (=> b!4272108 (= res!1754808 (and (not (= (left!35180 (c!726900 v!3845)) Empty!14297)) (not (= (right!35510 (c!726900 v!3845)) Empty!14297))))))

(declare-fun b!4272109 () Bool)

(declare-fun res!1754809 () Bool)

(assert (=> b!4272109 (=> (not res!1754809) (not e!2652471))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1882 (Conc!14297) Int)

(assert (=> b!4272109 (= res!1754809 (= (cheight!14508 (c!726900 v!3845)) (+ (max!0 (height!1882 (left!35180 (c!726900 v!3845))) (height!1882 (right!35510 (c!726900 v!3845)))) 1)))))

(declare-fun b!4272110 () Bool)

(assert (=> b!4272110 (= e!2652471 (<= 0 (cheight!14508 (c!726900 v!3845))))))

(assert (= (and d!1260242 res!1754807) b!4272108))

(assert (= (and b!4272108 res!1754808) b!4272109))

(assert (= (and b!4272109 res!1754809) b!4272110))

(declare-fun m!4865873 () Bool)

(assert (=> d!1260242 m!4865873))

(declare-fun m!4865875 () Bool)

(assert (=> d!1260242 m!4865875))

(declare-fun m!4865877 () Bool)

(assert (=> b!4272109 m!4865877))

(declare-fun m!4865879 () Bool)

(assert (=> b!4272109 m!4865879))

(assert (=> b!4272109 m!4865877))

(assert (=> b!4272109 m!4865879))

(declare-fun m!4865881 () Bool)

(assert (=> b!4272109 m!4865881))

(assert (=> b!4272005 d!1260242))

(declare-fun b!4272141 () Bool)

(declare-fun e!2652485 () Bool)

(declare-fun isEmpty!28002 (Conc!14297) Bool)

(assert (=> b!4272141 (= e!2652485 (not (isEmpty!28002 (right!35510 (c!726900 v!3845)))))))

(declare-fun b!4272142 () Bool)

(declare-fun res!1754825 () Bool)

(assert (=> b!4272142 (=> (not res!1754825) (not e!2652485))))

(assert (=> b!4272142 (= res!1754825 (not (isEmpty!28002 (left!35180 (c!726900 v!3845)))))))

(declare-fun b!4272143 () Bool)

(declare-fun res!1754827 () Bool)

(assert (=> b!4272143 (=> (not res!1754827) (not e!2652485))))

(assert (=> b!4272143 (= res!1754827 (<= (- (height!1882 (left!35180 (c!726900 v!3845))) (height!1882 (right!35510 (c!726900 v!3845)))) 1))))

(declare-fun b!4272144 () Bool)

(declare-fun res!1754824 () Bool)

(assert (=> b!4272144 (=> (not res!1754824) (not e!2652485))))

(assert (=> b!4272144 (= res!1754824 (isBalanced!3846 (left!35180 (c!726900 v!3845))))))

(declare-fun b!4272145 () Bool)

(declare-fun e!2652486 () Bool)

(assert (=> b!4272145 (= e!2652486 e!2652485)))

(declare-fun res!1754822 () Bool)

(assert (=> b!4272145 (=> (not res!1754822) (not e!2652485))))

(assert (=> b!4272145 (= res!1754822 (<= (- 1) (- (height!1882 (left!35180 (c!726900 v!3845))) (height!1882 (right!35510 (c!726900 v!3845))))))))

(declare-fun b!4272146 () Bool)

(declare-fun res!1754826 () Bool)

(assert (=> b!4272146 (=> (not res!1754826) (not e!2652485))))

(assert (=> b!4272146 (= res!1754826 (isBalanced!3846 (right!35510 (c!726900 v!3845))))))

(declare-fun d!1260244 () Bool)

(declare-fun res!1754823 () Bool)

(assert (=> d!1260244 (=> res!1754823 e!2652486)))

(assert (=> d!1260244 (= res!1754823 (not ((_ is Node!14297) (c!726900 v!3845))))))

(assert (=> d!1260244 (= (isBalanced!3846 (c!726900 v!3845)) e!2652486)))

(assert (= (and d!1260244 (not res!1754823)) b!4272145))

(assert (= (and b!4272145 res!1754822) b!4272143))

(assert (= (and b!4272143 res!1754827) b!4272144))

(assert (= (and b!4272144 res!1754824) b!4272146))

(assert (= (and b!4272146 res!1754826) b!4272142))

(assert (= (and b!4272142 res!1754825) b!4272141))

(declare-fun m!4865905 () Bool)

(assert (=> b!4272141 m!4865905))

(assert (=> b!4272145 m!4865877))

(assert (=> b!4272145 m!4865879))

(declare-fun m!4865907 () Bool)

(assert (=> b!4272142 m!4865907))

(declare-fun m!4865909 () Bool)

(assert (=> b!4272144 m!4865909))

(declare-fun m!4865911 () Bool)

(assert (=> b!4272146 m!4865911))

(assert (=> b!4272143 m!4865877))

(assert (=> b!4272143 m!4865879))

(assert (=> d!1260214 d!1260244))

(declare-fun d!1260250 () Bool)

(declare-fun charsToBigInt!1 (List!47439) Int)

(assert (=> d!1260250 (= (inv!17 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)) (= (charsToBigInt!1 (text!58338 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964))) (value!249649 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964))))))

(declare-fun bs!601243 () Bool)

(assert (= bs!601243 d!1260250))

(declare-fun m!4865921 () Bool)

(assert (=> bs!601243 m!4865921))

(assert (=> b!4272042 d!1260250))

(declare-fun d!1260256 () Bool)

(assert (=> d!1260256 true))

(assert (=> d!1260256 true))

(declare-fun res!1754832 () (_ BitVec 32))

(assert (=> d!1260256 (= (choose!625 lt!1512964) res!1754832)))

(assert (=> d!1260212 d!1260256))

(declare-fun d!1260260 () Bool)

(assert (=> d!1260260 (= (inv!16 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964)) (= (charsToInt!0 (text!58337 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964))) (value!249648 (IntegerValue!24810 (charsToInt!0 lt!1512964) lt!1512964))))))

(declare-fun bs!601245 () Bool)

(assert (= bs!601245 d!1260260))

(declare-fun m!4865925 () Bool)

(assert (=> bs!601245 m!4865925))

(assert (=> b!4272043 d!1260260))

(declare-fun d!1260262 () Bool)

(declare-fun c!726939 () Bool)

(assert (=> d!1260262 (= c!726939 ((_ is Node!14297) (left!35180 (c!726900 v!3845))))))

(declare-fun e!2652491 () Bool)

(assert (=> d!1260262 (= (inv!62472 (left!35180 (c!726900 v!3845))) e!2652491)))

(declare-fun b!4272153 () Bool)

(assert (=> b!4272153 (= e!2652491 (inv!62473 (left!35180 (c!726900 v!3845))))))

(declare-fun b!4272154 () Bool)

(declare-fun e!2652492 () Bool)

(assert (=> b!4272154 (= e!2652491 e!2652492)))

(declare-fun res!1754833 () Bool)

(assert (=> b!4272154 (= res!1754833 (not ((_ is Leaf!22101) (left!35180 (c!726900 v!3845)))))))

(assert (=> b!4272154 (=> res!1754833 e!2652492)))

(declare-fun b!4272155 () Bool)

(assert (=> b!4272155 (= e!2652492 (inv!62474 (left!35180 (c!726900 v!3845))))))

(assert (= (and d!1260262 c!726939) b!4272153))

(assert (= (and d!1260262 (not c!726939)) b!4272154))

(assert (= (and b!4272154 (not res!1754833)) b!4272155))

(declare-fun m!4865927 () Bool)

(assert (=> b!4272153 m!4865927))

(declare-fun m!4865929 () Bool)

(assert (=> b!4272155 m!4865929))

(assert (=> b!4272061 d!1260262))

(declare-fun d!1260264 () Bool)

(declare-fun c!726940 () Bool)

(assert (=> d!1260264 (= c!726940 ((_ is Node!14297) (right!35510 (c!726900 v!3845))))))

(declare-fun e!2652493 () Bool)

(assert (=> d!1260264 (= (inv!62472 (right!35510 (c!726900 v!3845))) e!2652493)))

(declare-fun b!4272156 () Bool)

(assert (=> b!4272156 (= e!2652493 (inv!62473 (right!35510 (c!726900 v!3845))))))

(declare-fun b!4272157 () Bool)

(declare-fun e!2652494 () Bool)

(assert (=> b!4272157 (= e!2652493 e!2652494)))

(declare-fun res!1754834 () Bool)

(assert (=> b!4272157 (= res!1754834 (not ((_ is Leaf!22101) (right!35510 (c!726900 v!3845)))))))

(assert (=> b!4272157 (=> res!1754834 e!2652494)))

(declare-fun b!4272158 () Bool)

(assert (=> b!4272158 (= e!2652494 (inv!62474 (right!35510 (c!726900 v!3845))))))

(assert (= (and d!1260264 c!726940) b!4272156))

(assert (= (and d!1260264 (not c!726940)) b!4272157))

(assert (= (and b!4272157 (not res!1754834)) b!4272158))

(declare-fun m!4865931 () Bool)

(assert (=> b!4272156 m!4865931))

(declare-fun m!4865933 () Bool)

(assert (=> b!4272158 m!4865933))

(assert (=> b!4272061 d!1260264))

(declare-fun e!2652495 () Bool)

(declare-fun b!4272159 () Bool)

(declare-fun tp!1308200 () Bool)

(declare-fun tp!1308199 () Bool)

(assert (=> b!4272159 (= e!2652495 (and (inv!62472 (left!35180 (left!35180 (c!726900 v!3845)))) tp!1308199 (inv!62472 (right!35510 (left!35180 (c!726900 v!3845)))) tp!1308200))))

(declare-fun b!4272160 () Bool)

(assert (=> b!4272160 (= e!2652495 (inv!62478 (xs!17603 (left!35180 (c!726900 v!3845)))))))

(assert (=> b!4272061 (= tp!1308197 (and (inv!62472 (left!35180 (c!726900 v!3845))) e!2652495))))

(assert (= (and b!4272061 ((_ is Node!14297) (left!35180 (c!726900 v!3845)))) b!4272159))

(assert (= (and b!4272061 ((_ is Leaf!22101) (left!35180 (c!726900 v!3845)))) b!4272160))

(declare-fun m!4865935 () Bool)

(assert (=> b!4272159 m!4865935))

(declare-fun m!4865937 () Bool)

(assert (=> b!4272159 m!4865937))

(declare-fun m!4865939 () Bool)

(assert (=> b!4272160 m!4865939))

(assert (=> b!4272061 m!4865815))

(declare-fun e!2652501 () Bool)

(declare-fun tp!1308201 () Bool)

(declare-fun tp!1308202 () Bool)

(declare-fun b!4272173 () Bool)

(assert (=> b!4272173 (= e!2652501 (and (inv!62472 (left!35180 (right!35510 (c!726900 v!3845)))) tp!1308201 (inv!62472 (right!35510 (right!35510 (c!726900 v!3845)))) tp!1308202))))

(declare-fun b!4272174 () Bool)

(assert (=> b!4272174 (= e!2652501 (inv!62478 (xs!17603 (right!35510 (c!726900 v!3845)))))))

(assert (=> b!4272061 (= tp!1308198 (and (inv!62472 (right!35510 (c!726900 v!3845))) e!2652501))))

(assert (= (and b!4272061 ((_ is Node!14297) (right!35510 (c!726900 v!3845)))) b!4272173))

(assert (= (and b!4272061 ((_ is Leaf!22101) (right!35510 (c!726900 v!3845)))) b!4272174))

(declare-fun m!4865941 () Bool)

(assert (=> b!4272173 m!4865941))

(declare-fun m!4865943 () Bool)

(assert (=> b!4272173 m!4865943))

(declare-fun m!4865945 () Bool)

(assert (=> b!4272174 m!4865945))

(assert (=> b!4272061 m!4865817))

(check-sat (not b!4272159) (not b!4272061) (not b!4272067) (not d!1260250) (not d!1260216) (not b!4272141) (not b!4272174) (not d!1260240) (not b!4272173) (not b!4272156) (not d!1260260) (not d!1260242) (not b!4272143) (not b!4272144) (not bm!294168) (not d!1260222) (not d!1260220) (not b!4272142) (not b!4272153) (not b!4272109) (not b!4272155) (not b!4272158) (not b!4272160) (not b!4272096) (not b!4272098) (not d!1260218) (not b!4272145) (not b!4272146))
(check-sat)
