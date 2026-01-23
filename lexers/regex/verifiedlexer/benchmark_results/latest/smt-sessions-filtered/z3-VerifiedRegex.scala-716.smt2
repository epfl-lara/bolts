; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31190 () Bool)

(assert start!31190)

(declare-fun b!287246 () Bool)

(declare-fun b_free!10529 () Bool)

(declare-fun b_next!10529 () Bool)

(assert (=> b!287246 (= b_free!10529 (not b_next!10529))))

(declare-fun tp!105342 () Bool)

(declare-fun b_and!23185 () Bool)

(assert (=> b!287246 (= tp!105342 b_and!23185)))

(declare-fun b_free!10531 () Bool)

(declare-fun b_next!10531 () Bool)

(assert (=> b!287246 (= b_free!10531 (not b_next!10531))))

(declare-fun tp!105346 () Bool)

(declare-fun b_and!23187 () Bool)

(assert (=> b!287246 (= tp!105346 b_and!23187)))

(declare-fun b!287236 () Bool)

(declare-fun b_free!10533 () Bool)

(declare-fun b_next!10533 () Bool)

(assert (=> b!287236 (= b_free!10533 (not b_next!10533))))

(declare-fun tp!105347 () Bool)

(declare-fun b_and!23189 () Bool)

(assert (=> b!287236 (= tp!105347 b_and!23189)))

(declare-fun b_free!10535 () Bool)

(declare-fun b_next!10535 () Bool)

(assert (=> b!287236 (= b_free!10535 (not b_next!10535))))

(declare-fun tp!105345 () Bool)

(declare-fun b_and!23191 () Bool)

(assert (=> b!287236 (= tp!105345 b_and!23191)))

(declare-fun b!287251 () Bool)

(declare-fun b_free!10537 () Bool)

(declare-fun b_next!10537 () Bool)

(assert (=> b!287251 (= b_free!10537 (not b_next!10537))))

(declare-fun tp!105344 () Bool)

(declare-fun b_and!23193 () Bool)

(assert (=> b!287251 (= tp!105344 b_and!23193)))

(declare-fun b_free!10539 () Bool)

(declare-fun b_next!10539 () Bool)

(assert (=> b!287251 (= b_free!10539 (not b_next!10539))))

(declare-fun tp!105341 () Bool)

(declare-fun b_and!23195 () Bool)

(assert (=> b!287251 (= tp!105341 b_and!23195)))

(declare-fun bs!32398 () Bool)

(declare-fun b!287250 () Bool)

(declare-fun b!287244 () Bool)

(assert (= bs!32398 (and b!287250 b!287244)))

(declare-fun lambda!9844 () Int)

(declare-fun lambda!9843 () Int)

(assert (=> bs!32398 (not (= lambda!9844 lambda!9843))))

(declare-fun b!287270 () Bool)

(declare-fun e!178830 () Bool)

(assert (=> b!287270 (= e!178830 true)))

(declare-fun b!287269 () Bool)

(declare-fun e!178829 () Bool)

(assert (=> b!287269 (= e!178829 e!178830)))

(declare-fun b!287268 () Bool)

(declare-fun e!178828 () Bool)

(assert (=> b!287268 (= e!178828 e!178829)))

(assert (=> b!287250 e!178828))

(assert (= b!287269 b!287270))

(assert (= b!287268 b!287269))

(declare-datatypes ((List!3952 0))(
  ( (Nil!3942) (Cons!3942 (h!9339 (_ BitVec 16)) (t!40180 List!3952)) )
))
(declare-datatypes ((TokenValue!777 0))(
  ( (FloatLiteralValue!1554 (text!5884 List!3952)) (TokenValueExt!776 (__x!3041 Int)) (Broken!3885 (value!25807 List!3952)) (Object!786) (End!777) (Def!777) (Underscore!777) (Match!777) (Else!777) (Error!777) (Case!777) (If!777) (Extends!777) (Abstract!777) (Class!777) (Val!777) (DelimiterValue!1554 (del!837 List!3952)) (KeywordValue!783 (value!25808 List!3952)) (CommentValue!1554 (value!25809 List!3952)) (WhitespaceValue!1554 (value!25810 List!3952)) (IndentationValue!777 (value!25811 List!3952)) (String!4964) (Int32!777) (Broken!3886 (value!25812 List!3952)) (Boolean!778) (Unit!5299) (OperatorValue!780 (op!837 List!3952)) (IdentifierValue!1554 (value!25813 List!3952)) (IdentifierValue!1555 (value!25814 List!3952)) (WhitespaceValue!1555 (value!25815 List!3952)) (True!1554) (False!1554) (Broken!3887 (value!25816 List!3952)) (Broken!3888 (value!25817 List!3952)) (True!1555) (RightBrace!777) (RightBracket!777) (Colon!777) (Null!777) (Comma!777) (LeftBracket!777) (False!1555) (LeftBrace!777) (ImaginaryLiteralValue!777 (text!5885 List!3952)) (StringLiteralValue!2331 (value!25818 List!3952)) (EOFValue!777 (value!25819 List!3952)) (IdentValue!777 (value!25820 List!3952)) (DelimiterValue!1555 (value!25821 List!3952)) (DedentValue!777 (value!25822 List!3952)) (NewLineValue!777 (value!25823 List!3952)) (IntegerValue!2331 (value!25824 (_ BitVec 32)) (text!5886 List!3952)) (IntegerValue!2332 (value!25825 Int) (text!5887 List!3952)) (Times!777) (Or!777) (Equal!777) (Minus!777) (Broken!3889 (value!25826 List!3952)) (And!777) (Div!777) (LessEqual!777) (Mod!777) (Concat!1756) (Not!777) (Plus!777) (SpaceValue!777 (value!25827 List!3952)) (IntegerValue!2333 (value!25828 Int) (text!5888 List!3952)) (StringLiteralValue!2332 (text!5889 List!3952)) (FloatLiteralValue!1555 (text!5890 List!3952)) (BytesLiteralValue!777 (value!25829 List!3952)) (CommentValue!1555 (value!25830 List!3952)) (StringLiteralValue!2333 (value!25831 List!3952)) (ErrorTokenValue!777 (msg!838 List!3952)) )
))
(declare-datatypes ((C!2880 0))(
  ( (C!2881 (val!1326 Int)) )
))
(declare-datatypes ((List!3953 0))(
  ( (Nil!3943) (Cons!3943 (h!9340 C!2880) (t!40181 List!3953)) )
))
(declare-datatypes ((IArray!2665 0))(
  ( (IArray!2666 (innerList!1390 List!3953)) )
))
(declare-datatypes ((Conc!1332 0))(
  ( (Node!1332 (left!3260 Conc!1332) (right!3590 Conc!1332) (csize!2894 Int) (cheight!1543 Int)) (Leaf!2049 (xs!3931 IArray!2665) (csize!2895 Int)) (Empty!1332) )
))
(declare-datatypes ((BalanceConc!2672 0))(
  ( (BalanceConc!2673 (c!54354 Conc!1332)) )
))
(declare-datatypes ((TokenValueInjection!1326 0))(
  ( (TokenValueInjection!1327 (toValue!1502 Int) (toChars!1361 Int)) )
))
(declare-datatypes ((String!4965 0))(
  ( (String!4966 (value!25832 String)) )
))
(declare-datatypes ((Regex!979 0))(
  ( (ElementMatch!979 (c!54355 C!2880)) (Concat!1757 (regOne!2470 Regex!979) (regTwo!2470 Regex!979)) (EmptyExpr!979) (Star!979 (reg!1308 Regex!979)) (EmptyLang!979) (Union!979 (regOne!2471 Regex!979) (regTwo!2471 Regex!979)) )
))
(declare-datatypes ((Rule!1310 0))(
  ( (Rule!1311 (regex!755 Regex!979) (tag!971 String!4965) (isSeparator!755 Bool) (transformation!755 TokenValueInjection!1326)) )
))
(declare-datatypes ((List!3954 0))(
  ( (Nil!3944) (Cons!3944 (h!9341 Rule!1310) (t!40182 List!3954)) )
))
(declare-fun rules!1920 () List!3954)

(get-info :version)

(assert (= (and b!287250 ((_ is Cons!3944) rules!1920)) b!287268))

(declare-fun order!3113 () Int)

(declare-fun order!3115 () Int)

(declare-fun dynLambda!2089 (Int Int) Int)

(declare-fun dynLambda!2090 (Int Int) Int)

(assert (=> b!287270 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9844))))

(declare-fun order!3117 () Int)

(declare-fun dynLambda!2091 (Int Int) Int)

(assert (=> b!287270 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9844))))

(assert (=> b!287250 true))

(declare-fun b!287232 () Bool)

(declare-fun res!131217 () Bool)

(declare-fun e!178804 () Bool)

(assert (=> b!287232 (=> (not res!131217) (not e!178804))))

(declare-fun sepAndNonSepRulesDisjointChars!344 (List!3954 List!3954) Bool)

(assert (=> b!287232 (= res!131217 (sepAndNonSepRulesDisjointChars!344 rules!1920 rules!1920))))

(declare-fun b!287233 () Bool)

(declare-fun res!131210 () Bool)

(declare-fun e!178815 () Bool)

(assert (=> b!287233 (=> res!131210 e!178815)))

(declare-datatypes ((Token!1254 0))(
  ( (Token!1255 (value!25833 TokenValue!777) (rule!1354 Rule!1310) (size!3157 Int) (originalCharacters!798 List!3953)) )
))
(declare-datatypes ((List!3955 0))(
  ( (Nil!3945) (Cons!3945 (h!9342 Token!1254) (t!40183 List!3955)) )
))
(declare-fun tokens!465 () List!3955)

(declare-datatypes ((LexerInterface!641 0))(
  ( (LexerInterfaceExt!638 (__x!3042 Int)) (Lexer!639) )
))
(declare-fun thiss!17480 () LexerInterface!641)

(declare-fun rulesProduceIndividualToken!390 (LexerInterface!641 List!3954 Token!1254) Bool)

(assert (=> b!287233 (= res!131210 (not (rulesProduceIndividualToken!390 thiss!17480 rules!1920 (h!9342 tokens!465))))))

(declare-fun lt!120875 () List!3953)

(declare-fun lt!120870 () List!3953)

(declare-fun e!178814 () Bool)

(declare-fun lt!120868 () List!3953)

(declare-fun b!287234 () Bool)

(declare-fun ++!1050 (List!3953 List!3953) List!3953)

(assert (=> b!287234 (= e!178814 (not (= lt!120868 (++!1050 lt!120875 lt!120870))))))

(declare-fun b!287235 () Bool)

(declare-fun res!131205 () Bool)

(assert (=> b!287235 (=> (not res!131205) (not e!178804))))

(declare-fun separatorToken!170 () Token!1254)

(assert (=> b!287235 (= res!131205 (isSeparator!755 (rule!1354 separatorToken!170)))))

(declare-fun e!178812 () Bool)

(assert (=> b!287236 (= e!178812 (and tp!105347 tp!105345))))

(declare-fun b!287237 () Bool)

(declare-fun res!131215 () Bool)

(declare-fun e!178807 () Bool)

(assert (=> b!287237 (=> res!131215 e!178807)))

(assert (=> b!287237 (= res!131215 e!178814)))

(declare-fun res!131220 () Bool)

(assert (=> b!287237 (=> (not res!131220) (not e!178814))))

(declare-fun lt!120864 () List!3953)

(assert (=> b!287237 (= res!131220 (not (= lt!120868 lt!120864)))))

(declare-fun res!131206 () Bool)

(declare-fun e!178802 () Bool)

(assert (=> start!31190 (=> (not res!131206) (not e!178802))))

(assert (=> start!31190 (= res!131206 ((_ is Lexer!639) thiss!17480))))

(assert (=> start!31190 e!178802))

(assert (=> start!31190 true))

(declare-fun e!178811 () Bool)

(assert (=> start!31190 e!178811))

(declare-fun e!178810 () Bool)

(declare-fun inv!4874 (Token!1254) Bool)

(assert (=> start!31190 (and (inv!4874 separatorToken!170) e!178810)))

(declare-fun e!178806 () Bool)

(assert (=> start!31190 e!178806))

(declare-fun tp!105343 () Bool)

(declare-fun e!178820 () Bool)

(declare-fun b!287238 () Bool)

(declare-fun e!178805 () Bool)

(declare-fun inv!4871 (String!4965) Bool)

(declare-fun inv!4875 (TokenValueInjection!1326) Bool)

(assert (=> b!287238 (= e!178805 (and tp!105343 (inv!4871 (tag!971 (h!9341 rules!1920))) (inv!4875 (transformation!755 (h!9341 rules!1920))) e!178820))))

(declare-fun b!287239 () Bool)

(assert (=> b!287239 (= e!178807 e!178815)))

(declare-fun res!131212 () Bool)

(assert (=> b!287239 (=> res!131212 e!178815)))

(declare-fun lt!120866 () List!3953)

(declare-fun lt!120871 () List!3953)

(assert (=> b!287239 (= res!131212 (or (not (= lt!120866 lt!120871)) (not (= lt!120871 lt!120875)) (not (= lt!120866 lt!120875))))))

(declare-fun printList!315 (LexerInterface!641 List!3955) List!3953)

(assert (=> b!287239 (= lt!120871 (printList!315 thiss!17480 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))

(declare-fun lt!120867 () BalanceConc!2672)

(declare-fun list!1645 (BalanceConc!2672) List!3953)

(assert (=> b!287239 (= lt!120866 (list!1645 lt!120867))))

(declare-datatypes ((IArray!2667 0))(
  ( (IArray!2668 (innerList!1391 List!3955)) )
))
(declare-datatypes ((Conc!1333 0))(
  ( (Node!1333 (left!3261 Conc!1333) (right!3591 Conc!1333) (csize!2896 Int) (cheight!1544 Int)) (Leaf!2050 (xs!3932 IArray!2667) (csize!2897 Int)) (Empty!1333) )
))
(declare-datatypes ((BalanceConc!2674 0))(
  ( (BalanceConc!2675 (c!54356 Conc!1333)) )
))
(declare-fun lt!120863 () BalanceConc!2674)

(declare-fun printTailRec!327 (LexerInterface!641 BalanceConc!2674 Int BalanceConc!2672) BalanceConc!2672)

(assert (=> b!287239 (= lt!120867 (printTailRec!327 thiss!17480 lt!120863 0 (BalanceConc!2673 Empty!1332)))))

(declare-fun print!366 (LexerInterface!641 BalanceConc!2674) BalanceConc!2672)

(assert (=> b!287239 (= lt!120867 (print!366 thiss!17480 lt!120863))))

(declare-fun singletonSeq!301 (Token!1254) BalanceConc!2674)

(assert (=> b!287239 (= lt!120863 (singletonSeq!301 (h!9342 tokens!465)))))

(declare-fun e!178817 () Bool)

(declare-fun b!287240 () Bool)

(declare-datatypes ((tuple2!4482 0))(
  ( (tuple2!4483 (_1!2457 Token!1254) (_2!2457 List!3953)) )
))
(declare-datatypes ((Option!870 0))(
  ( (None!869) (Some!869 (v!14810 tuple2!4482)) )
))
(declare-fun isDefined!709 (Option!870) Bool)

(declare-fun maxPrefix!357 (LexerInterface!641 List!3954 List!3953) Option!870)

(assert (=> b!287240 (= e!178817 (isDefined!709 (maxPrefix!357 thiss!17480 rules!1920 lt!120875)))))

(declare-fun b!287241 () Bool)

(declare-fun res!131207 () Bool)

(assert (=> b!287241 (=> (not res!131207) (not e!178802))))

(declare-fun isEmpty!2609 (List!3954) Bool)

(assert (=> b!287241 (= res!131207 (not (isEmpty!2609 rules!1920)))))

(declare-fun e!178809 () Bool)

(declare-fun tp!105339 () Bool)

(declare-fun e!178803 () Bool)

(declare-fun b!287242 () Bool)

(declare-fun inv!21 (TokenValue!777) Bool)

(assert (=> b!287242 (= e!178809 (and (inv!21 (value!25833 (h!9342 tokens!465))) e!178803 tp!105339))))

(declare-fun b!287243 () Bool)

(declare-fun res!131218 () Bool)

(declare-fun e!178801 () Bool)

(assert (=> b!287243 (=> (not res!131218) (not e!178801))))

(declare-fun lt!120872 () List!3953)

(declare-fun seqFromList!875 (List!3953) BalanceConc!2672)

(assert (=> b!287243 (= res!131218 (= (list!1645 (seqFromList!875 lt!120868)) lt!120872))))

(declare-fun res!131213 () Bool)

(assert (=> b!287244 (=> (not res!131213) (not e!178804))))

(declare-fun forall!1016 (List!3955 Int) Bool)

(assert (=> b!287244 (= res!131213 (forall!1016 tokens!465 lambda!9843))))

(declare-fun b!287245 () Bool)

(declare-fun res!131221 () Bool)

(assert (=> b!287245 (=> (not res!131221) (not e!178804))))

(assert (=> b!287245 (= res!131221 ((_ is Cons!3945) tokens!465))))

(declare-fun e!178819 () Bool)

(assert (=> b!287246 (= e!178819 (and tp!105342 tp!105346))))

(declare-fun tp!105350 () Bool)

(declare-fun e!178800 () Bool)

(declare-fun b!287247 () Bool)

(assert (=> b!287247 (= e!178810 (and (inv!21 (value!25833 separatorToken!170)) e!178800 tp!105350))))

(declare-fun b!287248 () Bool)

(declare-fun tp!105348 () Bool)

(assert (=> b!287248 (= e!178811 (and e!178805 tp!105348))))

(declare-fun b!287249 () Bool)

(assert (=> b!287249 (= e!178804 e!178801)))

(declare-fun res!131208 () Bool)

(assert (=> b!287249 (=> (not res!131208) (not e!178801))))

(assert (=> b!287249 (= res!131208 (= lt!120868 lt!120872))))

(declare-fun lt!120873 () BalanceConc!2674)

(declare-fun printWithSeparatorTokenWhenNeededRec!314 (LexerInterface!641 List!3954 BalanceConc!2674 Token!1254 Int) BalanceConc!2672)

(assert (=> b!287249 (= lt!120872 (list!1645 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!322 (LexerInterface!641 List!3954 List!3955 Token!1254) List!3953)

(assert (=> b!287249 (= lt!120868 (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(assert (=> b!287250 (= e!178815 e!178817)))

(declare-fun res!131216 () Bool)

(assert (=> b!287250 (=> res!131216 e!178817)))

(declare-datatypes ((tuple2!4484 0))(
  ( (tuple2!4485 (_1!2458 Token!1254) (_2!2458 BalanceConc!2672)) )
))
(declare-datatypes ((Option!871 0))(
  ( (None!870) (Some!870 (v!14811 tuple2!4484)) )
))
(declare-fun isDefined!710 (Option!871) Bool)

(declare-fun maxPrefixZipperSequence!320 (LexerInterface!641 List!3954 BalanceConc!2672) Option!871)

(assert (=> b!287250 (= res!131216 (not (isDefined!710 (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))

(declare-datatypes ((Unit!5300 0))(
  ( (Unit!5301) )
))
(declare-fun lt!120865 () Unit!5300)

(declare-fun forallContained!308 (List!3955 Int Token!1254) Unit!5300)

(assert (=> b!287250 (= lt!120865 (forallContained!308 tokens!465 lambda!9844 (h!9342 tokens!465)))))

(assert (=> b!287250 (= lt!120875 (originalCharacters!798 (h!9342 tokens!465)))))

(assert (=> b!287251 (= e!178820 (and tp!105344 tp!105341))))

(declare-fun b!287252 () Bool)

(declare-fun tp!105351 () Bool)

(assert (=> b!287252 (= e!178806 (and (inv!4874 (h!9342 tokens!465)) e!178809 tp!105351))))

(declare-fun b!287253 () Bool)

(assert (=> b!287253 (= e!178801 (not e!178807))))

(declare-fun res!131219 () Bool)

(assert (=> b!287253 (=> res!131219 e!178807)))

(declare-fun seqFromList!876 (List!3955) BalanceConc!2674)

(assert (=> b!287253 (= res!131219 (not (= lt!120870 (list!1645 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!120862 () List!3953)

(assert (=> b!287253 (= lt!120862 lt!120864)))

(declare-fun lt!120874 () List!3953)

(assert (=> b!287253 (= lt!120864 (++!1050 lt!120875 lt!120874))))

(declare-fun lt!120869 () List!3953)

(assert (=> b!287253 (= lt!120862 (++!1050 (++!1050 lt!120875 lt!120869) lt!120870))))

(declare-fun lt!120876 () Unit!5300)

(declare-fun lemmaConcatAssociativity!456 (List!3953 List!3953 List!3953) Unit!5300)

(assert (=> b!287253 (= lt!120876 (lemmaConcatAssociativity!456 lt!120875 lt!120869 lt!120870))))

(declare-fun charsOf!398 (Token!1254) BalanceConc!2672)

(assert (=> b!287253 (= lt!120875 (list!1645 (charsOf!398 (h!9342 tokens!465))))))

(assert (=> b!287253 (= lt!120874 (++!1050 lt!120869 lt!120870))))

(assert (=> b!287253 (= lt!120870 (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (t!40183 tokens!465) separatorToken!170))))

(assert (=> b!287253 (= lt!120869 (list!1645 (charsOf!398 separatorToken!170)))))

(declare-fun tp!105340 () Bool)

(declare-fun b!287254 () Bool)

(assert (=> b!287254 (= e!178800 (and tp!105340 (inv!4871 (tag!971 (rule!1354 separatorToken!170))) (inv!4875 (transformation!755 (rule!1354 separatorToken!170))) e!178819))))

(declare-fun b!287255 () Bool)

(declare-fun tp!105349 () Bool)

(assert (=> b!287255 (= e!178803 (and tp!105349 (inv!4871 (tag!971 (rule!1354 (h!9342 tokens!465)))) (inv!4875 (transformation!755 (rule!1354 (h!9342 tokens!465)))) e!178812))))

(declare-fun b!287256 () Bool)

(declare-fun res!131211 () Bool)

(assert (=> b!287256 (=> (not res!131211) (not e!178804))))

(assert (=> b!287256 (= res!131211 (rulesProduceIndividualToken!390 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!287257 () Bool)

(declare-fun res!131209 () Bool)

(assert (=> b!287257 (=> res!131209 e!178815)))

(declare-fun isEmpty!2610 (BalanceConc!2674) Bool)

(declare-datatypes ((tuple2!4486 0))(
  ( (tuple2!4487 (_1!2459 BalanceConc!2674) (_2!2459 BalanceConc!2672)) )
))
(declare-fun lex!433 (LexerInterface!641 List!3954 BalanceConc!2672) tuple2!4486)

(assert (=> b!287257 (= res!131209 (isEmpty!2610 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875)))))))

(declare-fun b!287258 () Bool)

(assert (=> b!287258 (= e!178802 e!178804)))

(declare-fun res!131214 () Bool)

(assert (=> b!287258 (=> (not res!131214) (not e!178804))))

(declare-fun rulesProduceEachTokenIndividually!433 (LexerInterface!641 List!3954 BalanceConc!2674) Bool)

(assert (=> b!287258 (= res!131214 (rulesProduceEachTokenIndividually!433 thiss!17480 rules!1920 lt!120873))))

(assert (=> b!287258 (= lt!120873 (seqFromList!876 tokens!465))))

(declare-fun b!287259 () Bool)

(declare-fun res!131204 () Bool)

(assert (=> b!287259 (=> (not res!131204) (not e!178802))))

(declare-fun rulesInvariant!607 (LexerInterface!641 List!3954) Bool)

(assert (=> b!287259 (= res!131204 (rulesInvariant!607 thiss!17480 rules!1920))))

(assert (= (and start!31190 res!131206) b!287241))

(assert (= (and b!287241 res!131207) b!287259))

(assert (= (and b!287259 res!131204) b!287258))

(assert (= (and b!287258 res!131214) b!287256))

(assert (= (and b!287256 res!131211) b!287235))

(assert (= (and b!287235 res!131205) b!287244))

(assert (= (and b!287244 res!131213) b!287232))

(assert (= (and b!287232 res!131217) b!287245))

(assert (= (and b!287245 res!131221) b!287249))

(assert (= (and b!287249 res!131208) b!287243))

(assert (= (and b!287243 res!131218) b!287253))

(assert (= (and b!287253 (not res!131219)) b!287237))

(assert (= (and b!287237 res!131220) b!287234))

(assert (= (and b!287237 (not res!131215)) b!287239))

(assert (= (and b!287239 (not res!131212)) b!287233))

(assert (= (and b!287233 (not res!131210)) b!287257))

(assert (= (and b!287257 (not res!131209)) b!287250))

(assert (= (and b!287250 (not res!131216)) b!287240))

(assert (= b!287238 b!287251))

(assert (= b!287248 b!287238))

(assert (= (and start!31190 ((_ is Cons!3944) rules!1920)) b!287248))

(assert (= b!287254 b!287246))

(assert (= b!287247 b!287254))

(assert (= start!31190 b!287247))

(assert (= b!287255 b!287236))

(assert (= b!287242 b!287255))

(assert (= b!287252 b!287242))

(assert (= (and start!31190 ((_ is Cons!3945) tokens!465)) b!287252))

(declare-fun m!371697 () Bool)

(assert (=> b!287234 m!371697))

(declare-fun m!371699 () Bool)

(assert (=> b!287243 m!371699))

(assert (=> b!287243 m!371699))

(declare-fun m!371701 () Bool)

(assert (=> b!287243 m!371701))

(declare-fun m!371703 () Bool)

(assert (=> b!287242 m!371703))

(declare-fun m!371705 () Bool)

(assert (=> b!287240 m!371705))

(assert (=> b!287240 m!371705))

(declare-fun m!371707 () Bool)

(assert (=> b!287240 m!371707))

(declare-fun m!371709 () Bool)

(assert (=> b!287232 m!371709))

(declare-fun m!371711 () Bool)

(assert (=> b!287259 m!371711))

(declare-fun m!371713 () Bool)

(assert (=> b!287255 m!371713))

(declare-fun m!371715 () Bool)

(assert (=> b!287255 m!371715))

(declare-fun m!371717 () Bool)

(assert (=> b!287249 m!371717))

(assert (=> b!287249 m!371717))

(declare-fun m!371719 () Bool)

(assert (=> b!287249 m!371719))

(declare-fun m!371721 () Bool)

(assert (=> b!287249 m!371721))

(declare-fun m!371723 () Bool)

(assert (=> b!287241 m!371723))

(declare-fun m!371725 () Bool)

(assert (=> b!287252 m!371725))

(declare-fun m!371727 () Bool)

(assert (=> b!287244 m!371727))

(declare-fun m!371729 () Bool)

(assert (=> b!287250 m!371729))

(assert (=> b!287250 m!371729))

(declare-fun m!371731 () Bool)

(assert (=> b!287250 m!371731))

(assert (=> b!287250 m!371731))

(declare-fun m!371733 () Bool)

(assert (=> b!287250 m!371733))

(declare-fun m!371735 () Bool)

(assert (=> b!287250 m!371735))

(declare-fun m!371737 () Bool)

(assert (=> b!287253 m!371737))

(declare-fun m!371739 () Bool)

(assert (=> b!287253 m!371739))

(declare-fun m!371741 () Bool)

(assert (=> b!287253 m!371741))

(declare-fun m!371743 () Bool)

(assert (=> b!287253 m!371743))

(declare-fun m!371745 () Bool)

(assert (=> b!287253 m!371745))

(assert (=> b!287253 m!371739))

(declare-fun m!371747 () Bool)

(assert (=> b!287253 m!371747))

(declare-fun m!371749 () Bool)

(assert (=> b!287253 m!371749))

(assert (=> b!287253 m!371743))

(declare-fun m!371751 () Bool)

(assert (=> b!287253 m!371751))

(assert (=> b!287253 m!371737))

(declare-fun m!371753 () Bool)

(assert (=> b!287253 m!371753))

(declare-fun m!371755 () Bool)

(assert (=> b!287253 m!371755))

(declare-fun m!371757 () Bool)

(assert (=> b!287253 m!371757))

(assert (=> b!287253 m!371757))

(declare-fun m!371759 () Bool)

(assert (=> b!287253 m!371759))

(assert (=> b!287253 m!371753))

(declare-fun m!371761 () Bool)

(assert (=> b!287253 m!371761))

(declare-fun m!371763 () Bool)

(assert (=> b!287257 m!371763))

(assert (=> b!287257 m!371763))

(declare-fun m!371765 () Bool)

(assert (=> b!287257 m!371765))

(declare-fun m!371767 () Bool)

(assert (=> b!287257 m!371767))

(declare-fun m!371769 () Bool)

(assert (=> b!287254 m!371769))

(declare-fun m!371771 () Bool)

(assert (=> b!287254 m!371771))

(declare-fun m!371773 () Bool)

(assert (=> b!287238 m!371773))

(declare-fun m!371775 () Bool)

(assert (=> b!287238 m!371775))

(declare-fun m!371777 () Bool)

(assert (=> b!287233 m!371777))

(declare-fun m!371779 () Bool)

(assert (=> b!287247 m!371779))

(declare-fun m!371781 () Bool)

(assert (=> b!287239 m!371781))

(declare-fun m!371783 () Bool)

(assert (=> b!287239 m!371783))

(declare-fun m!371785 () Bool)

(assert (=> b!287239 m!371785))

(declare-fun m!371787 () Bool)

(assert (=> b!287239 m!371787))

(declare-fun m!371789 () Bool)

(assert (=> b!287239 m!371789))

(declare-fun m!371791 () Bool)

(assert (=> b!287256 m!371791))

(declare-fun m!371793 () Bool)

(assert (=> start!31190 m!371793))

(declare-fun m!371795 () Bool)

(assert (=> b!287258 m!371795))

(declare-fun m!371797 () Bool)

(assert (=> b!287258 m!371797))

(check-sat b_and!23185 b_and!23187 (not b_next!10529) (not b!287268) (not b!287255) (not b!287243) (not b_next!10533) (not b!287244) (not b!287239) b_and!23191 (not b!287247) (not b!287233) (not b!287252) (not b!287232) (not b!287240) (not b!287238) (not b!287249) (not b!287248) (not b!287257) (not b_next!10537) (not b!287241) b_and!23195 b_and!23189 (not b_next!10531) (not b!287242) b_and!23193 (not b!287256) (not start!31190) (not b!287250) (not b!287259) (not b_next!10539) (not b!287253) (not b!287254) (not b!287234) (not b_next!10535) (not b!287258))
(check-sat b_and!23185 b_and!23187 (not b_next!10537) b_and!23195 (not b_next!10529) (not b_next!10533) b_and!23193 (not b_next!10539) (not b_next!10535) b_and!23191 b_and!23189 (not b_next!10531))
(get-model)

(declare-fun b!287283 () Bool)

(declare-fun e!178837 () Bool)

(declare-fun inv!16 (TokenValue!777) Bool)

(assert (=> b!287283 (= e!178837 (inv!16 (value!25833 separatorToken!170)))))

(declare-fun b!287284 () Bool)

(declare-fun res!131232 () Bool)

(declare-fun e!178839 () Bool)

(assert (=> b!287284 (=> res!131232 e!178839)))

(assert (=> b!287284 (= res!131232 (not ((_ is IntegerValue!2333) (value!25833 separatorToken!170))))))

(declare-fun e!178838 () Bool)

(assert (=> b!287284 (= e!178838 e!178839)))

(declare-fun b!287285 () Bool)

(assert (=> b!287285 (= e!178837 e!178838)))

(declare-fun c!54362 () Bool)

(assert (=> b!287285 (= c!54362 ((_ is IntegerValue!2332) (value!25833 separatorToken!170)))))

(declare-fun b!287287 () Bool)

(declare-fun inv!17 (TokenValue!777) Bool)

(assert (=> b!287287 (= e!178838 (inv!17 (value!25833 separatorToken!170)))))

(declare-fun d!85001 () Bool)

(declare-fun c!54361 () Bool)

(assert (=> d!85001 (= c!54361 ((_ is IntegerValue!2331) (value!25833 separatorToken!170)))))

(assert (=> d!85001 (= (inv!21 (value!25833 separatorToken!170)) e!178837)))

(declare-fun b!287286 () Bool)

(declare-fun inv!15 (TokenValue!777) Bool)

(assert (=> b!287286 (= e!178839 (inv!15 (value!25833 separatorToken!170)))))

(assert (= (and d!85001 c!54361) b!287283))

(assert (= (and d!85001 (not c!54361)) b!287285))

(assert (= (and b!287285 c!54362) b!287287))

(assert (= (and b!287285 (not c!54362)) b!287284))

(assert (= (and b!287284 (not res!131232)) b!287286))

(declare-fun m!371799 () Bool)

(assert (=> b!287283 m!371799))

(declare-fun m!371801 () Bool)

(assert (=> b!287287 m!371801))

(declare-fun m!371803 () Bool)

(assert (=> b!287286 m!371803))

(assert (=> b!287247 d!85001))

(declare-fun bs!32403 () Bool)

(declare-fun d!85003 () Bool)

(assert (= bs!32403 (and d!85003 b!287244)))

(declare-fun lambda!9854 () Int)

(assert (=> bs!32403 (not (= lambda!9854 lambda!9843))))

(declare-fun bs!32404 () Bool)

(assert (= bs!32404 (and d!85003 b!287250)))

(assert (=> bs!32404 (= lambda!9854 lambda!9844)))

(declare-fun b!287303 () Bool)

(declare-fun e!178855 () Bool)

(assert (=> b!287303 (= e!178855 true)))

(declare-fun b!287302 () Bool)

(declare-fun e!178854 () Bool)

(assert (=> b!287302 (= e!178854 e!178855)))

(declare-fun b!287301 () Bool)

(declare-fun e!178853 () Bool)

(assert (=> b!287301 (= e!178853 e!178854)))

(assert (=> d!85003 e!178853))

(assert (= b!287302 b!287303))

(assert (= b!287301 b!287302))

(assert (= (and d!85003 ((_ is Cons!3944) rules!1920)) b!287301))

(assert (=> b!287303 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9854))))

(assert (=> b!287303 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9854))))

(assert (=> d!85003 true))

(declare-fun e!178852 () Bool)

(assert (=> d!85003 e!178852))

(declare-fun res!131242 () Bool)

(assert (=> d!85003 (=> (not res!131242) (not e!178852))))

(declare-fun lt!120882 () Bool)

(declare-fun list!1648 (BalanceConc!2674) List!3955)

(assert (=> d!85003 (= res!131242 (= lt!120882 (forall!1016 (list!1648 lt!120873) lambda!9854)))))

(declare-fun forall!1018 (BalanceConc!2674 Int) Bool)

(assert (=> d!85003 (= lt!120882 (forall!1018 lt!120873 lambda!9854))))

(assert (=> d!85003 (not (isEmpty!2609 rules!1920))))

(assert (=> d!85003 (= (rulesProduceEachTokenIndividually!433 thiss!17480 rules!1920 lt!120873) lt!120882)))

(declare-fun b!287300 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!249 (LexerInterface!641 List!3954 List!3955) Bool)

(assert (=> b!287300 (= e!178852 (= lt!120882 (rulesProduceEachTokenIndividuallyList!249 thiss!17480 rules!1920 (list!1648 lt!120873))))))

(assert (= (and d!85003 res!131242) b!287300))

(declare-fun m!371825 () Bool)

(assert (=> d!85003 m!371825))

(assert (=> d!85003 m!371825))

(declare-fun m!371827 () Bool)

(assert (=> d!85003 m!371827))

(declare-fun m!371829 () Bool)

(assert (=> d!85003 m!371829))

(assert (=> d!85003 m!371723))

(assert (=> b!287300 m!371825))

(assert (=> b!287300 m!371825))

(declare-fun m!371831 () Bool)

(assert (=> b!287300 m!371831))

(assert (=> b!287258 d!85003))

(declare-fun d!85021 () Bool)

(declare-fun fromListB!358 (List!3955) BalanceConc!2674)

(assert (=> d!85021 (= (seqFromList!876 tokens!465) (fromListB!358 tokens!465))))

(declare-fun bs!32405 () Bool)

(assert (= bs!32405 d!85021))

(declare-fun m!371833 () Bool)

(assert (=> bs!32405 m!371833))

(assert (=> b!287258 d!85021))

(declare-fun d!85023 () Bool)

(declare-fun lt!120906 () Bool)

(declare-fun e!178870 () Bool)

(assert (=> d!85023 (= lt!120906 e!178870)))

(declare-fun res!131270 () Bool)

(assert (=> d!85023 (=> (not res!131270) (not e!178870))))

(assert (=> d!85023 (= res!131270 (= (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170))))) (list!1648 (singletonSeq!301 separatorToken!170))))))

(declare-fun e!178869 () Bool)

(assert (=> d!85023 (= lt!120906 e!178869)))

(declare-fun res!131271 () Bool)

(assert (=> d!85023 (=> (not res!131271) (not e!178869))))

(declare-fun lt!120905 () tuple2!4486)

(declare-fun size!3161 (BalanceConc!2674) Int)

(assert (=> d!85023 (= res!131271 (= (size!3161 (_1!2459 lt!120905)) 1))))

(assert (=> d!85023 (= lt!120905 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170))))))

(assert (=> d!85023 (not (isEmpty!2609 rules!1920))))

(assert (=> d!85023 (= (rulesProduceIndividualToken!390 thiss!17480 rules!1920 separatorToken!170) lt!120906)))

(declare-fun b!287337 () Bool)

(declare-fun res!131272 () Bool)

(assert (=> b!287337 (=> (not res!131272) (not e!178869))))

(declare-fun apply!840 (BalanceConc!2674 Int) Token!1254)

(assert (=> b!287337 (= res!131272 (= (apply!840 (_1!2459 lt!120905) 0) separatorToken!170))))

(declare-fun b!287338 () Bool)

(declare-fun isEmpty!2615 (BalanceConc!2672) Bool)

(assert (=> b!287338 (= e!178869 (isEmpty!2615 (_2!2459 lt!120905)))))

(declare-fun b!287339 () Bool)

(assert (=> b!287339 (= e!178870 (isEmpty!2615 (_2!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170))))))))

(assert (= (and d!85023 res!131271) b!287337))

(assert (= (and b!287337 res!131272) b!287338))

(assert (= (and d!85023 res!131270) b!287339))

(declare-fun m!371875 () Bool)

(assert (=> d!85023 m!371875))

(declare-fun m!371877 () Bool)

(assert (=> d!85023 m!371877))

(declare-fun m!371879 () Bool)

(assert (=> d!85023 m!371879))

(declare-fun m!371881 () Bool)

(assert (=> d!85023 m!371881))

(declare-fun m!371883 () Bool)

(assert (=> d!85023 m!371883))

(assert (=> d!85023 m!371723))

(assert (=> d!85023 m!371877))

(assert (=> d!85023 m!371881))

(assert (=> d!85023 m!371877))

(declare-fun m!371885 () Bool)

(assert (=> d!85023 m!371885))

(declare-fun m!371887 () Bool)

(assert (=> b!287337 m!371887))

(declare-fun m!371889 () Bool)

(assert (=> b!287338 m!371889))

(assert (=> b!287339 m!371877))

(assert (=> b!287339 m!371877))

(assert (=> b!287339 m!371881))

(assert (=> b!287339 m!371881))

(assert (=> b!287339 m!371883))

(declare-fun m!371891 () Bool)

(assert (=> b!287339 m!371891))

(assert (=> b!287256 d!85023))

(declare-fun lt!120909 () Bool)

(declare-fun d!85029 () Bool)

(declare-fun isEmpty!2616 (List!3955) Bool)

(assert (=> d!85029 (= lt!120909 (isEmpty!2616 (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875))))))))

(declare-fun isEmpty!2617 (Conc!1333) Bool)

(assert (=> d!85029 (= lt!120909 (isEmpty!2617 (c!54356 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875))))))))

(assert (=> d!85029 (= (isEmpty!2610 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875)))) lt!120909)))

(declare-fun bs!32407 () Bool)

(assert (= bs!32407 d!85029))

(declare-fun m!371893 () Bool)

(assert (=> bs!32407 m!371893))

(assert (=> bs!32407 m!371893))

(declare-fun m!371895 () Bool)

(assert (=> bs!32407 m!371895))

(declare-fun m!371897 () Bool)

(assert (=> bs!32407 m!371897))

(assert (=> b!287257 d!85029))

(declare-fun e!178917 () Bool)

(declare-fun b!287412 () Bool)

(declare-fun lt!120920 () tuple2!4486)

(declare-datatypes ((tuple2!4490 0))(
  ( (tuple2!4491 (_1!2461 List!3955) (_2!2461 List!3953)) )
))
(declare-fun lexList!227 (LexerInterface!641 List!3954 List!3953) tuple2!4490)

(assert (=> b!287412 (= e!178917 (= (list!1645 (_2!2459 lt!120920)) (_2!2461 (lexList!227 thiss!17480 rules!1920 (list!1645 (seqFromList!875 lt!120875))))))))

(declare-fun b!287413 () Bool)

(declare-fun res!131320 () Bool)

(assert (=> b!287413 (=> (not res!131320) (not e!178917))))

(assert (=> b!287413 (= res!131320 (= (list!1648 (_1!2459 lt!120920)) (_1!2461 (lexList!227 thiss!17480 rules!1920 (list!1645 (seqFromList!875 lt!120875))))))))

(declare-fun b!287414 () Bool)

(declare-fun e!178918 () Bool)

(assert (=> b!287414 (= e!178918 (= (_2!2459 lt!120920) (seqFromList!875 lt!120875)))))

(declare-fun b!287415 () Bool)

(declare-fun e!178919 () Bool)

(assert (=> b!287415 (= e!178918 e!178919)))

(declare-fun res!131321 () Bool)

(declare-fun size!3162 (BalanceConc!2672) Int)

(assert (=> b!287415 (= res!131321 (< (size!3162 (_2!2459 lt!120920)) (size!3162 (seqFromList!875 lt!120875))))))

(assert (=> b!287415 (=> (not res!131321) (not e!178919))))

(declare-fun b!287411 () Bool)

(assert (=> b!287411 (= e!178919 (not (isEmpty!2610 (_1!2459 lt!120920))))))

(declare-fun d!85031 () Bool)

(assert (=> d!85031 e!178917))

(declare-fun res!131319 () Bool)

(assert (=> d!85031 (=> (not res!131319) (not e!178917))))

(assert (=> d!85031 (= res!131319 e!178918)))

(declare-fun c!54376 () Bool)

(assert (=> d!85031 (= c!54376 (> (size!3161 (_1!2459 lt!120920)) 0))))

(declare-fun lexTailRecV2!194 (LexerInterface!641 List!3954 BalanceConc!2672 BalanceConc!2672 BalanceConc!2672 BalanceConc!2674) tuple2!4486)

(assert (=> d!85031 (= lt!120920 (lexTailRecV2!194 thiss!17480 rules!1920 (seqFromList!875 lt!120875) (BalanceConc!2673 Empty!1332) (seqFromList!875 lt!120875) (BalanceConc!2675 Empty!1333)))))

(assert (=> d!85031 (= (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875)) lt!120920)))

(assert (= (and d!85031 c!54376) b!287415))

(assert (= (and d!85031 (not c!54376)) b!287414))

(assert (= (and b!287415 res!131321) b!287411))

(assert (= (and d!85031 res!131319) b!287413))

(assert (= (and b!287413 res!131320) b!287412))

(declare-fun m!371989 () Bool)

(assert (=> b!287413 m!371989))

(assert (=> b!287413 m!371763))

(declare-fun m!371991 () Bool)

(assert (=> b!287413 m!371991))

(assert (=> b!287413 m!371991))

(declare-fun m!371993 () Bool)

(assert (=> b!287413 m!371993))

(declare-fun m!371995 () Bool)

(assert (=> d!85031 m!371995))

(assert (=> d!85031 m!371763))

(assert (=> d!85031 m!371763))

(declare-fun m!371997 () Bool)

(assert (=> d!85031 m!371997))

(declare-fun m!371999 () Bool)

(assert (=> b!287415 m!371999))

(assert (=> b!287415 m!371763))

(declare-fun m!372001 () Bool)

(assert (=> b!287415 m!372001))

(declare-fun m!372003 () Bool)

(assert (=> b!287412 m!372003))

(assert (=> b!287412 m!371763))

(assert (=> b!287412 m!371991))

(assert (=> b!287412 m!371991))

(assert (=> b!287412 m!371993))

(declare-fun m!372005 () Bool)

(assert (=> b!287411 m!372005))

(assert (=> b!287257 d!85031))

(declare-fun d!85061 () Bool)

(declare-fun fromListB!359 (List!3953) BalanceConc!2672)

(assert (=> d!85061 (= (seqFromList!875 lt!120875) (fromListB!359 lt!120875))))

(declare-fun bs!32414 () Bool)

(assert (= bs!32414 d!85061))

(declare-fun m!372007 () Bool)

(assert (=> bs!32414 m!372007))

(assert (=> b!287257 d!85061))

(declare-fun d!85063 () Bool)

(declare-fun res!131326 () Bool)

(declare-fun e!178924 () Bool)

(assert (=> d!85063 (=> res!131326 e!178924)))

(assert (=> d!85063 (= res!131326 ((_ is Nil!3945) tokens!465))))

(assert (=> d!85063 (= (forall!1016 tokens!465 lambda!9843) e!178924)))

(declare-fun b!287420 () Bool)

(declare-fun e!178925 () Bool)

(assert (=> b!287420 (= e!178924 e!178925)))

(declare-fun res!131327 () Bool)

(assert (=> b!287420 (=> (not res!131327) (not e!178925))))

(declare-fun dynLambda!2094 (Int Token!1254) Bool)

(assert (=> b!287420 (= res!131327 (dynLambda!2094 lambda!9843 (h!9342 tokens!465)))))

(declare-fun b!287421 () Bool)

(assert (=> b!287421 (= e!178925 (forall!1016 (t!40183 tokens!465) lambda!9843))))

(assert (= (and d!85063 (not res!131326)) b!287420))

(assert (= (and b!287420 res!131327) b!287421))

(declare-fun b_lambda!9515 () Bool)

(assert (=> (not b_lambda!9515) (not b!287420)))

(declare-fun m!372009 () Bool)

(assert (=> b!287420 m!372009))

(declare-fun m!372011 () Bool)

(assert (=> b!287421 m!372011))

(assert (=> b!287244 d!85063))

(declare-fun d!85065 () Bool)

(assert (=> d!85065 (= (inv!4871 (tag!971 (rule!1354 (h!9342 tokens!465)))) (= (mod (str.len (value!25832 (tag!971 (rule!1354 (h!9342 tokens!465))))) 2) 0))))

(assert (=> b!287255 d!85065))

(declare-fun d!85067 () Bool)

(declare-fun res!131330 () Bool)

(declare-fun e!178928 () Bool)

(assert (=> d!85067 (=> (not res!131330) (not e!178928))))

(declare-fun semiInverseModEq!279 (Int Int) Bool)

(assert (=> d!85067 (= res!131330 (semiInverseModEq!279 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465))))))))

(assert (=> d!85067 (= (inv!4875 (transformation!755 (rule!1354 (h!9342 tokens!465)))) e!178928)))

(declare-fun b!287424 () Bool)

(declare-fun equivClasses!262 (Int Int) Bool)

(assert (=> b!287424 (= e!178928 (equivClasses!262 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465))))))))

(assert (= (and d!85067 res!131330) b!287424))

(declare-fun m!372013 () Bool)

(assert (=> d!85067 m!372013))

(declare-fun m!372015 () Bool)

(assert (=> b!287424 m!372015))

(assert (=> b!287255 d!85067))

(declare-fun b!287433 () Bool)

(declare-fun e!178934 () List!3953)

(assert (=> b!287433 (= e!178934 lt!120870)))

(declare-fun b!287435 () Bool)

(declare-fun res!131336 () Bool)

(declare-fun e!178933 () Bool)

(assert (=> b!287435 (=> (not res!131336) (not e!178933))))

(declare-fun lt!120923 () List!3953)

(declare-fun size!3163 (List!3953) Int)

(assert (=> b!287435 (= res!131336 (= (size!3163 lt!120923) (+ (size!3163 lt!120875) (size!3163 lt!120870))))))

(declare-fun b!287434 () Bool)

(assert (=> b!287434 (= e!178934 (Cons!3943 (h!9340 lt!120875) (++!1050 (t!40181 lt!120875) lt!120870)))))

(declare-fun d!85069 () Bool)

(assert (=> d!85069 e!178933))

(declare-fun res!131335 () Bool)

(assert (=> d!85069 (=> (not res!131335) (not e!178933))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!579 (List!3953) (InoxSet C!2880))

(assert (=> d!85069 (= res!131335 (= (content!579 lt!120923) ((_ map or) (content!579 lt!120875) (content!579 lt!120870))))))

(assert (=> d!85069 (= lt!120923 e!178934)))

(declare-fun c!54379 () Bool)

(assert (=> d!85069 (= c!54379 ((_ is Nil!3943) lt!120875))))

(assert (=> d!85069 (= (++!1050 lt!120875 lt!120870) lt!120923)))

(declare-fun b!287436 () Bool)

(assert (=> b!287436 (= e!178933 (or (not (= lt!120870 Nil!3943)) (= lt!120923 lt!120875)))))

(assert (= (and d!85069 c!54379) b!287433))

(assert (= (and d!85069 (not c!54379)) b!287434))

(assert (= (and d!85069 res!131335) b!287435))

(assert (= (and b!287435 res!131336) b!287436))

(declare-fun m!372017 () Bool)

(assert (=> b!287435 m!372017))

(declare-fun m!372019 () Bool)

(assert (=> b!287435 m!372019))

(declare-fun m!372021 () Bool)

(assert (=> b!287435 m!372021))

(declare-fun m!372023 () Bool)

(assert (=> b!287434 m!372023))

(declare-fun m!372025 () Bool)

(assert (=> d!85069 m!372025))

(declare-fun m!372027 () Bool)

(assert (=> d!85069 m!372027))

(declare-fun m!372029 () Bool)

(assert (=> d!85069 m!372029))

(assert (=> b!287234 d!85069))

(declare-fun d!85071 () Bool)

(declare-fun res!131341 () Bool)

(declare-fun e!178939 () Bool)

(assert (=> d!85071 (=> res!131341 e!178939)))

(assert (=> d!85071 (= res!131341 (not ((_ is Cons!3944) rules!1920)))))

(assert (=> d!85071 (= (sepAndNonSepRulesDisjointChars!344 rules!1920 rules!1920) e!178939)))

(declare-fun b!287441 () Bool)

(declare-fun e!178940 () Bool)

(assert (=> b!287441 (= e!178939 e!178940)))

(declare-fun res!131342 () Bool)

(assert (=> b!287441 (=> (not res!131342) (not e!178940))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!137 (Rule!1310 List!3954) Bool)

(assert (=> b!287441 (= res!131342 (ruleDisjointCharsFromAllFromOtherType!137 (h!9341 rules!1920) rules!1920))))

(declare-fun b!287442 () Bool)

(assert (=> b!287442 (= e!178940 (sepAndNonSepRulesDisjointChars!344 rules!1920 (t!40182 rules!1920)))))

(assert (= (and d!85071 (not res!131341)) b!287441))

(assert (= (and b!287441 res!131342) b!287442))

(declare-fun m!372031 () Bool)

(assert (=> b!287441 m!372031))

(declare-fun m!372033 () Bool)

(assert (=> b!287442 m!372033))

(assert (=> b!287232 d!85071))

(declare-fun d!85073 () Bool)

(declare-fun list!1649 (Conc!1332) List!3953)

(assert (=> d!85073 (= (list!1645 (seqFromList!875 lt!120868)) (list!1649 (c!54354 (seqFromList!875 lt!120868))))))

(declare-fun bs!32415 () Bool)

(assert (= bs!32415 d!85073))

(declare-fun m!372035 () Bool)

(assert (=> bs!32415 m!372035))

(assert (=> b!287243 d!85073))

(declare-fun d!85075 () Bool)

(assert (=> d!85075 (= (seqFromList!875 lt!120868) (fromListB!359 lt!120868))))

(declare-fun bs!32416 () Bool)

(assert (= bs!32416 d!85075))

(declare-fun m!372037 () Bool)

(assert (=> bs!32416 m!372037))

(assert (=> b!287243 d!85075))

(declare-fun d!85077 () Bool)

(assert (=> d!85077 (= (inv!4871 (tag!971 (rule!1354 separatorToken!170))) (= (mod (str.len (value!25832 (tag!971 (rule!1354 separatorToken!170)))) 2) 0))))

(assert (=> b!287254 d!85077))

(declare-fun d!85079 () Bool)

(declare-fun res!131343 () Bool)

(declare-fun e!178941 () Bool)

(assert (=> d!85079 (=> (not res!131343) (not e!178941))))

(assert (=> d!85079 (= res!131343 (semiInverseModEq!279 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toValue!1502 (transformation!755 (rule!1354 separatorToken!170)))))))

(assert (=> d!85079 (= (inv!4875 (transformation!755 (rule!1354 separatorToken!170))) e!178941)))

(declare-fun b!287443 () Bool)

(assert (=> b!287443 (= e!178941 (equivClasses!262 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toValue!1502 (transformation!755 (rule!1354 separatorToken!170)))))))

(assert (= (and d!85079 res!131343) b!287443))

(declare-fun m!372039 () Bool)

(assert (=> d!85079 m!372039))

(declare-fun m!372041 () Bool)

(assert (=> b!287443 m!372041))

(assert (=> b!287254 d!85079))

(declare-fun d!85081 () Bool)

(declare-fun lt!120925 () Bool)

(declare-fun e!178943 () Bool)

(assert (=> d!85081 (= lt!120925 e!178943)))

(declare-fun res!131344 () Bool)

(assert (=> d!85081 (=> (not res!131344) (not e!178943))))

(assert (=> d!85081 (= res!131344 (= (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)))))) (list!1648 (singletonSeq!301 (h!9342 tokens!465)))))))

(declare-fun e!178942 () Bool)

(assert (=> d!85081 (= lt!120925 e!178942)))

(declare-fun res!131345 () Bool)

(assert (=> d!85081 (=> (not res!131345) (not e!178942))))

(declare-fun lt!120924 () tuple2!4486)

(assert (=> d!85081 (= res!131345 (= (size!3161 (_1!2459 lt!120924)) 1))))

(assert (=> d!85081 (= lt!120924 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)))))))

(assert (=> d!85081 (not (isEmpty!2609 rules!1920))))

(assert (=> d!85081 (= (rulesProduceIndividualToken!390 thiss!17480 rules!1920 (h!9342 tokens!465)) lt!120925)))

(declare-fun b!287444 () Bool)

(declare-fun res!131346 () Bool)

(assert (=> b!287444 (=> (not res!131346) (not e!178942))))

(assert (=> b!287444 (= res!131346 (= (apply!840 (_1!2459 lt!120924) 0) (h!9342 tokens!465)))))

(declare-fun b!287445 () Bool)

(assert (=> b!287445 (= e!178942 (isEmpty!2615 (_2!2459 lt!120924)))))

(declare-fun b!287446 () Bool)

(assert (=> b!287446 (= e!178943 (isEmpty!2615 (_2!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)))))))))

(assert (= (and d!85081 res!131345) b!287444))

(assert (= (and b!287444 res!131346) b!287445))

(assert (= (and d!85081 res!131344) b!287446))

(declare-fun m!372043 () Bool)

(assert (=> d!85081 m!372043))

(assert (=> d!85081 m!371785))

(declare-fun m!372045 () Bool)

(assert (=> d!85081 m!372045))

(declare-fun m!372047 () Bool)

(assert (=> d!85081 m!372047))

(declare-fun m!372049 () Bool)

(assert (=> d!85081 m!372049))

(assert (=> d!85081 m!371723))

(assert (=> d!85081 m!371785))

(assert (=> d!85081 m!372047))

(assert (=> d!85081 m!371785))

(declare-fun m!372051 () Bool)

(assert (=> d!85081 m!372051))

(declare-fun m!372053 () Bool)

(assert (=> b!287444 m!372053))

(declare-fun m!372055 () Bool)

(assert (=> b!287445 m!372055))

(assert (=> b!287446 m!371785))

(assert (=> b!287446 m!371785))

(assert (=> b!287446 m!372047))

(assert (=> b!287446 m!372047))

(assert (=> b!287446 m!372049))

(declare-fun m!372057 () Bool)

(assert (=> b!287446 m!372057))

(assert (=> b!287233 d!85081))

(declare-fun d!85083 () Bool)

(declare-fun res!131351 () Bool)

(declare-fun e!178946 () Bool)

(assert (=> d!85083 (=> (not res!131351) (not e!178946))))

(declare-fun isEmpty!2618 (List!3953) Bool)

(assert (=> d!85083 (= res!131351 (not (isEmpty!2618 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (=> d!85083 (= (inv!4874 (h!9342 tokens!465)) e!178946)))

(declare-fun b!287451 () Bool)

(declare-fun res!131352 () Bool)

(assert (=> b!287451 (=> (not res!131352) (not e!178946))))

(declare-fun dynLambda!2095 (Int TokenValue!777) BalanceConc!2672)

(assert (=> b!287451 (= res!131352 (= (originalCharacters!798 (h!9342 tokens!465)) (list!1645 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465))))))))

(declare-fun b!287452 () Bool)

(assert (=> b!287452 (= e!178946 (= (size!3157 (h!9342 tokens!465)) (size!3163 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (= (and d!85083 res!131351) b!287451))

(assert (= (and b!287451 res!131352) b!287452))

(declare-fun b_lambda!9517 () Bool)

(assert (=> (not b_lambda!9517) (not b!287451)))

(declare-fun t!40200 () Bool)

(declare-fun tb!16627 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465))))) t!40200) tb!16627))

(declare-fun b!287457 () Bool)

(declare-fun e!178949 () Bool)

(declare-fun tp!105357 () Bool)

(declare-fun inv!4878 (Conc!1332) Bool)

(assert (=> b!287457 (= e!178949 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465))))) tp!105357))))

(declare-fun result!20448 () Bool)

(declare-fun inv!4879 (BalanceConc!2672) Bool)

(assert (=> tb!16627 (= result!20448 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465)))) e!178949))))

(assert (= tb!16627 b!287457))

(declare-fun m!372059 () Bool)

(assert (=> b!287457 m!372059))

(declare-fun m!372061 () Bool)

(assert (=> tb!16627 m!372061))

(assert (=> b!287451 t!40200))

(declare-fun b_and!23203 () Bool)

(assert (= b_and!23187 (and (=> t!40200 result!20448) b_and!23203)))

(declare-fun t!40202 () Bool)

(declare-fun tb!16629 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465))))) t!40202) tb!16629))

(declare-fun result!20452 () Bool)

(assert (= result!20452 result!20448))

(assert (=> b!287451 t!40202))

(declare-fun b_and!23205 () Bool)

(assert (= b_and!23191 (and (=> t!40202 result!20452) b_and!23205)))

(declare-fun t!40204 () Bool)

(declare-fun tb!16631 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465))))) t!40204) tb!16631))

(declare-fun result!20454 () Bool)

(assert (= result!20454 result!20448))

(assert (=> b!287451 t!40204))

(declare-fun b_and!23207 () Bool)

(assert (= b_and!23195 (and (=> t!40204 result!20454) b_and!23207)))

(declare-fun m!372063 () Bool)

(assert (=> d!85083 m!372063))

(declare-fun m!372065 () Bool)

(assert (=> b!287451 m!372065))

(assert (=> b!287451 m!372065))

(declare-fun m!372067 () Bool)

(assert (=> b!287451 m!372067))

(declare-fun m!372069 () Bool)

(assert (=> b!287452 m!372069))

(assert (=> b!287252 d!85083))

(declare-fun b!287458 () Bool)

(declare-fun e!178950 () Bool)

(assert (=> b!287458 (= e!178950 (inv!16 (value!25833 (h!9342 tokens!465))))))

(declare-fun b!287459 () Bool)

(declare-fun res!131353 () Bool)

(declare-fun e!178952 () Bool)

(assert (=> b!287459 (=> res!131353 e!178952)))

(assert (=> b!287459 (= res!131353 (not ((_ is IntegerValue!2333) (value!25833 (h!9342 tokens!465)))))))

(declare-fun e!178951 () Bool)

(assert (=> b!287459 (= e!178951 e!178952)))

(declare-fun b!287460 () Bool)

(assert (=> b!287460 (= e!178950 e!178951)))

(declare-fun c!54381 () Bool)

(assert (=> b!287460 (= c!54381 ((_ is IntegerValue!2332) (value!25833 (h!9342 tokens!465))))))

(declare-fun b!287462 () Bool)

(assert (=> b!287462 (= e!178951 (inv!17 (value!25833 (h!9342 tokens!465))))))

(declare-fun d!85085 () Bool)

(declare-fun c!54380 () Bool)

(assert (=> d!85085 (= c!54380 ((_ is IntegerValue!2331) (value!25833 (h!9342 tokens!465))))))

(assert (=> d!85085 (= (inv!21 (value!25833 (h!9342 tokens!465))) e!178950)))

(declare-fun b!287461 () Bool)

(assert (=> b!287461 (= e!178952 (inv!15 (value!25833 (h!9342 tokens!465))))))

(assert (= (and d!85085 c!54380) b!287458))

(assert (= (and d!85085 (not c!54380)) b!287460))

(assert (= (and b!287460 c!54381) b!287462))

(assert (= (and b!287460 (not c!54381)) b!287459))

(assert (= (and b!287459 (not res!131353)) b!287461))

(declare-fun m!372071 () Bool)

(assert (=> b!287458 m!372071))

(declare-fun m!372073 () Bool)

(assert (=> b!287462 m!372073))

(declare-fun m!372075 () Bool)

(assert (=> b!287461 m!372075))

(assert (=> b!287242 d!85085))

(declare-fun d!85087 () Bool)

(declare-fun res!131354 () Bool)

(declare-fun e!178953 () Bool)

(assert (=> d!85087 (=> (not res!131354) (not e!178953))))

(assert (=> d!85087 (= res!131354 (not (isEmpty!2618 (originalCharacters!798 separatorToken!170))))))

(assert (=> d!85087 (= (inv!4874 separatorToken!170) e!178953)))

(declare-fun b!287463 () Bool)

(declare-fun res!131355 () Bool)

(assert (=> b!287463 (=> (not res!131355) (not e!178953))))

(assert (=> b!287463 (= res!131355 (= (originalCharacters!798 separatorToken!170) (list!1645 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170)))))))

(declare-fun b!287464 () Bool)

(assert (=> b!287464 (= e!178953 (= (size!3157 separatorToken!170) (size!3163 (originalCharacters!798 separatorToken!170))))))

(assert (= (and d!85087 res!131354) b!287463))

(assert (= (and b!287463 res!131355) b!287464))

(declare-fun b_lambda!9519 () Bool)

(assert (=> (not b_lambda!9519) (not b!287463)))

(declare-fun t!40206 () Bool)

(declare-fun tb!16633 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170)))) t!40206) tb!16633))

(declare-fun b!287465 () Bool)

(declare-fun e!178954 () Bool)

(declare-fun tp!105358 () Bool)

(assert (=> b!287465 (= e!178954 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170)))) tp!105358))))

(declare-fun result!20456 () Bool)

(assert (=> tb!16633 (= result!20456 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170))) e!178954))))

(assert (= tb!16633 b!287465))

(declare-fun m!372077 () Bool)

(assert (=> b!287465 m!372077))

(declare-fun m!372079 () Bool)

(assert (=> tb!16633 m!372079))

(assert (=> b!287463 t!40206))

(declare-fun b_and!23209 () Bool)

(assert (= b_and!23203 (and (=> t!40206 result!20456) b_and!23209)))

(declare-fun t!40208 () Bool)

(declare-fun tb!16635 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170)))) t!40208) tb!16635))

(declare-fun result!20458 () Bool)

(assert (= result!20458 result!20456))

(assert (=> b!287463 t!40208))

(declare-fun b_and!23211 () Bool)

(assert (= b_and!23205 (and (=> t!40208 result!20458) b_and!23211)))

(declare-fun t!40210 () Bool)

(declare-fun tb!16637 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170)))) t!40210) tb!16637))

(declare-fun result!20460 () Bool)

(assert (= result!20460 result!20456))

(assert (=> b!287463 t!40210))

(declare-fun b_and!23213 () Bool)

(assert (= b_and!23207 (and (=> t!40210 result!20460) b_and!23213)))

(declare-fun m!372081 () Bool)

(assert (=> d!85087 m!372081))

(declare-fun m!372083 () Bool)

(assert (=> b!287463 m!372083))

(assert (=> b!287463 m!372083))

(declare-fun m!372085 () Bool)

(assert (=> b!287463 m!372085))

(declare-fun m!372087 () Bool)

(assert (=> b!287464 m!372087))

(assert (=> start!31190 d!85087))

(declare-fun d!85089 () Bool)

(assert (=> d!85089 (= (seqFromList!876 (t!40183 tokens!465)) (fromListB!358 (t!40183 tokens!465)))))

(declare-fun bs!32417 () Bool)

(assert (= bs!32417 d!85089))

(declare-fun m!372089 () Bool)

(assert (=> bs!32417 m!372089))

(assert (=> b!287253 d!85089))

(declare-fun b!287466 () Bool)

(declare-fun e!178956 () List!3953)

(assert (=> b!287466 (= e!178956 lt!120870)))

(declare-fun b!287468 () Bool)

(declare-fun res!131357 () Bool)

(declare-fun e!178955 () Bool)

(assert (=> b!287468 (=> (not res!131357) (not e!178955))))

(declare-fun lt!120926 () List!3953)

(assert (=> b!287468 (= res!131357 (= (size!3163 lt!120926) (+ (size!3163 (++!1050 lt!120875 lt!120869)) (size!3163 lt!120870))))))

(declare-fun b!287467 () Bool)

(assert (=> b!287467 (= e!178956 (Cons!3943 (h!9340 (++!1050 lt!120875 lt!120869)) (++!1050 (t!40181 (++!1050 lt!120875 lt!120869)) lt!120870)))))

(declare-fun d!85091 () Bool)

(assert (=> d!85091 e!178955))

(declare-fun res!131356 () Bool)

(assert (=> d!85091 (=> (not res!131356) (not e!178955))))

(assert (=> d!85091 (= res!131356 (= (content!579 lt!120926) ((_ map or) (content!579 (++!1050 lt!120875 lt!120869)) (content!579 lt!120870))))))

(assert (=> d!85091 (= lt!120926 e!178956)))

(declare-fun c!54382 () Bool)

(assert (=> d!85091 (= c!54382 ((_ is Nil!3943) (++!1050 lt!120875 lt!120869)))))

(assert (=> d!85091 (= (++!1050 (++!1050 lt!120875 lt!120869) lt!120870) lt!120926)))

(declare-fun b!287469 () Bool)

(assert (=> b!287469 (= e!178955 (or (not (= lt!120870 Nil!3943)) (= lt!120926 (++!1050 lt!120875 lt!120869))))))

(assert (= (and d!85091 c!54382) b!287466))

(assert (= (and d!85091 (not c!54382)) b!287467))

(assert (= (and d!85091 res!131356) b!287468))

(assert (= (and b!287468 res!131357) b!287469))

(declare-fun m!372091 () Bool)

(assert (=> b!287468 m!372091))

(assert (=> b!287468 m!371739))

(declare-fun m!372093 () Bool)

(assert (=> b!287468 m!372093))

(assert (=> b!287468 m!372021))

(declare-fun m!372095 () Bool)

(assert (=> b!287467 m!372095))

(declare-fun m!372097 () Bool)

(assert (=> d!85091 m!372097))

(assert (=> d!85091 m!371739))

(declare-fun m!372099 () Bool)

(assert (=> d!85091 m!372099))

(assert (=> d!85091 m!372029))

(assert (=> b!287253 d!85091))

(declare-fun d!85093 () Bool)

(assert (=> d!85093 (= (list!1645 (charsOf!398 separatorToken!170)) (list!1649 (c!54354 (charsOf!398 separatorToken!170))))))

(declare-fun bs!32418 () Bool)

(assert (= bs!32418 d!85093))

(declare-fun m!372101 () Bool)

(assert (=> bs!32418 m!372101))

(assert (=> b!287253 d!85093))

(declare-fun d!85095 () Bool)

(assert (=> d!85095 (= (list!1645 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 0)) (list!1649 (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 0))))))

(declare-fun bs!32419 () Bool)

(assert (= bs!32419 d!85095))

(declare-fun m!372103 () Bool)

(assert (=> bs!32419 m!372103))

(assert (=> b!287253 d!85095))

(declare-fun bs!32423 () Bool)

(declare-fun b!287521 () Bool)

(assert (= bs!32423 (and b!287521 b!287244)))

(declare-fun lambda!9860 () Int)

(assert (=> bs!32423 (not (= lambda!9860 lambda!9843))))

(declare-fun bs!32424 () Bool)

(assert (= bs!32424 (and b!287521 b!287250)))

(assert (=> bs!32424 (= lambda!9860 lambda!9844)))

(declare-fun bs!32425 () Bool)

(assert (= bs!32425 (and b!287521 d!85003)))

(assert (=> bs!32425 (= lambda!9860 lambda!9854)))

(declare-fun b!287529 () Bool)

(declare-fun e!178989 () Bool)

(assert (=> b!287529 (= e!178989 true)))

(declare-fun b!287528 () Bool)

(declare-fun e!178988 () Bool)

(assert (=> b!287528 (= e!178988 e!178989)))

(declare-fun b!287527 () Bool)

(declare-fun e!178987 () Bool)

(assert (=> b!287527 (= e!178987 e!178988)))

(assert (=> b!287521 e!178987))

(assert (= b!287528 b!287529))

(assert (= b!287527 b!287528))

(assert (= (and b!287521 ((_ is Cons!3944) rules!1920)) b!287527))

(assert (=> b!287529 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9860))))

(assert (=> b!287529 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9860))))

(assert (=> b!287521 true))

(declare-fun b!287517 () Bool)

(declare-fun c!54408 () Bool)

(declare-fun lt!120959 () Option!870)

(assert (=> b!287517 (= c!54408 (and ((_ is Some!869) lt!120959) (not (= (_1!2457 (v!14810 lt!120959)) (h!9342 (t!40183 tokens!465))))))))

(declare-fun e!178983 () List!3953)

(declare-fun e!178982 () List!3953)

(assert (=> b!287517 (= e!178983 e!178982)))

(declare-fun b!287518 () Bool)

(declare-fun e!178985 () List!3953)

(assert (=> b!287518 (= e!178985 Nil!3943)))

(declare-fun b!287519 () Bool)

(declare-fun e!178986 () BalanceConc!2672)

(declare-fun call!16229 () BalanceConc!2672)

(assert (=> b!287519 (= e!178986 call!16229)))

(declare-fun bm!16224 () Bool)

(declare-fun call!16230 () BalanceConc!2672)

(assert (=> bm!16224 (= call!16229 call!16230)))

(declare-fun c!54406 () Bool)

(declare-fun call!16231 () List!3953)

(declare-fun bm!16225 () Bool)

(assert (=> bm!16225 (= call!16231 (list!1645 (ite c!54406 call!16230 e!178986)))))

(declare-fun b!287520 () Bool)

(declare-fun call!16233 () List!3953)

(declare-fun lt!120961 () List!3953)

(assert (=> b!287520 (= e!178982 (++!1050 call!16233 lt!120961))))

(assert (=> b!287521 (= e!178985 e!178983)))

(declare-fun lt!120962 () Unit!5300)

(assert (=> b!287521 (= lt!120962 (forallContained!308 (t!40183 tokens!465) lambda!9860 (h!9342 (t!40183 tokens!465))))))

(assert (=> b!287521 (= lt!120961 (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (t!40183 (t!40183 tokens!465)) separatorToken!170))))

(assert (=> b!287521 (= lt!120959 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961)))))

(assert (=> b!287521 (= c!54406 (and ((_ is Some!869) lt!120959) (= (_1!2457 (v!14810 lt!120959)) (h!9342 (t!40183 tokens!465)))))))

(declare-fun b!287522 () Bool)

(declare-fun e!178984 () List!3953)

(assert (=> b!287522 (= e!178984 call!16231)))

(declare-fun bm!16226 () Bool)

(declare-fun call!16232 () List!3953)

(assert (=> bm!16226 (= call!16232 call!16231)))

(declare-fun c!54405 () Bool)

(assert (=> bm!16226 (= c!54405 c!54408)))

(declare-fun b!287523 () Bool)

(assert (=> b!287523 (= e!178982 Nil!3943)))

(assert (=> b!287523 (= (print!366 thiss!17480 (singletonSeq!301 (h!9342 (t!40183 tokens!465)))) (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 (t!40183 tokens!465))) 0 (BalanceConc!2673 Empty!1332)))))

(declare-fun lt!120960 () Unit!5300)

(declare-fun Unit!5306 () Unit!5300)

(assert (=> b!287523 (= lt!120960 Unit!5306)))

(declare-fun lt!120958 () Unit!5300)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 (LexerInterface!641 List!3954 List!3953 List!3953) Unit!5300)

(assert (=> b!287523 (= lt!120958 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 call!16232 lt!120961))))

(assert (=> b!287523 false))

(declare-fun lt!120957 () Unit!5300)

(declare-fun Unit!5307 () Unit!5300)

(assert (=> b!287523 (= lt!120957 Unit!5307)))

(declare-fun b!287524 () Bool)

(assert (=> b!287524 (= e!178983 call!16233)))

(declare-fun d!85097 () Bool)

(declare-fun c!54407 () Bool)

(assert (=> d!85097 (= c!54407 ((_ is Cons!3945) (t!40183 tokens!465)))))

(assert (=> d!85097 (= (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (t!40183 tokens!465) separatorToken!170) e!178985)))

(declare-fun bm!16227 () Bool)

(declare-fun c!54409 () Bool)

(assert (=> bm!16227 (= c!54409 c!54406)))

(assert (=> bm!16227 (= call!16233 (++!1050 e!178984 (ite c!54406 lt!120961 call!16232)))))

(declare-fun bm!16228 () Bool)

(assert (=> bm!16228 (= call!16230 (charsOf!398 (h!9342 (t!40183 tokens!465))))))

(declare-fun b!287525 () Bool)

(assert (=> b!287525 (= e!178984 (list!1645 call!16229))))

(declare-fun b!287526 () Bool)

(assert (=> b!287526 (= e!178986 (charsOf!398 separatorToken!170))))

(assert (= (and d!85097 c!54407) b!287521))

(assert (= (and d!85097 (not c!54407)) b!287518))

(assert (= (and b!287521 c!54406) b!287524))

(assert (= (and b!287521 (not c!54406)) b!287517))

(assert (= (and b!287517 c!54408) b!287520))

(assert (= (and b!287517 (not c!54408)) b!287523))

(assert (= (or b!287520 b!287523) bm!16224))

(assert (= (or b!287520 b!287523) bm!16226))

(assert (= (and bm!16226 c!54405) b!287526))

(assert (= (and bm!16226 (not c!54405)) b!287519))

(assert (= (or b!287524 bm!16224) bm!16228))

(assert (= (or b!287524 bm!16226) bm!16225))

(assert (= (or b!287524 b!287520) bm!16227))

(assert (= (and bm!16227 c!54409) b!287522))

(assert (= (and bm!16227 (not c!54409)) b!287525))

(declare-fun m!372133 () Bool)

(assert (=> b!287523 m!372133))

(assert (=> b!287523 m!372133))

(declare-fun m!372135 () Bool)

(assert (=> b!287523 m!372135))

(assert (=> b!287523 m!372133))

(declare-fun m!372137 () Bool)

(assert (=> b!287523 m!372137))

(declare-fun m!372139 () Bool)

(assert (=> b!287523 m!372139))

(assert (=> b!287526 m!371743))

(declare-fun m!372141 () Bool)

(assert (=> bm!16227 m!372141))

(declare-fun m!372143 () Bool)

(assert (=> b!287521 m!372143))

(declare-fun m!372145 () Bool)

(assert (=> b!287521 m!372145))

(assert (=> b!287521 m!372143))

(assert (=> b!287521 m!372145))

(declare-fun m!372147 () Bool)

(assert (=> b!287521 m!372147))

(assert (=> b!287521 m!372147))

(declare-fun m!372149 () Bool)

(assert (=> b!287521 m!372149))

(declare-fun m!372151 () Bool)

(assert (=> b!287521 m!372151))

(declare-fun m!372153 () Bool)

(assert (=> b!287521 m!372153))

(declare-fun m!372155 () Bool)

(assert (=> b!287525 m!372155))

(assert (=> bm!16228 m!372143))

(declare-fun m!372157 () Bool)

(assert (=> b!287520 m!372157))

(declare-fun m!372159 () Bool)

(assert (=> bm!16225 m!372159))

(assert (=> b!287253 d!85097))

(declare-fun bs!32437 () Bool)

(declare-fun d!85101 () Bool)

(assert (= bs!32437 (and d!85101 b!287244)))

(declare-fun lambda!9871 () Int)

(assert (=> bs!32437 (= lambda!9871 lambda!9843)))

(declare-fun bs!32438 () Bool)

(assert (= bs!32438 (and d!85101 b!287250)))

(assert (=> bs!32438 (not (= lambda!9871 lambda!9844))))

(declare-fun bs!32439 () Bool)

(assert (= bs!32439 (and d!85101 d!85003)))

(assert (=> bs!32439 (not (= lambda!9871 lambda!9854))))

(declare-fun bs!32440 () Bool)

(assert (= bs!32440 (and d!85101 b!287521)))

(assert (=> bs!32440 (not (= lambda!9871 lambda!9860))))

(declare-fun bs!32441 () Bool)

(declare-fun b!287601 () Bool)

(assert (= bs!32441 (and b!287601 b!287244)))

(declare-fun lambda!9872 () Int)

(assert (=> bs!32441 (not (= lambda!9872 lambda!9843))))

(declare-fun bs!32442 () Bool)

(assert (= bs!32442 (and b!287601 b!287521)))

(assert (=> bs!32442 (= lambda!9872 lambda!9860)))

(declare-fun bs!32443 () Bool)

(assert (= bs!32443 (and b!287601 b!287250)))

(assert (=> bs!32443 (= lambda!9872 lambda!9844)))

(declare-fun bs!32444 () Bool)

(assert (= bs!32444 (and b!287601 d!85101)))

(assert (=> bs!32444 (not (= lambda!9872 lambda!9871))))

(declare-fun bs!32445 () Bool)

(assert (= bs!32445 (and b!287601 d!85003)))

(assert (=> bs!32445 (= lambda!9872 lambda!9854)))

(declare-fun b!287610 () Bool)

(declare-fun e!179044 () Bool)

(assert (=> b!287610 (= e!179044 true)))

(declare-fun b!287609 () Bool)

(declare-fun e!179043 () Bool)

(assert (=> b!287609 (= e!179043 e!179044)))

(declare-fun b!287608 () Bool)

(declare-fun e!179042 () Bool)

(assert (=> b!287608 (= e!179042 e!179043)))

(assert (=> b!287601 e!179042))

(assert (= b!287609 b!287610))

(assert (= b!287608 b!287609))

(assert (= (and b!287601 ((_ is Cons!3944) rules!1920)) b!287608))

(assert (=> b!287610 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9872))))

(assert (=> b!287610 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9872))))

(assert (=> b!287601 true))

(declare-fun b!287599 () Bool)

(declare-fun e!179039 () BalanceConc!2672)

(declare-fun call!16260 () BalanceConc!2672)

(declare-fun lt!121051 () BalanceConc!2672)

(declare-fun ++!1052 (BalanceConc!2672 BalanceConc!2672) BalanceConc!2672)

(assert (=> b!287599 (= e!179039 (++!1052 call!16260 lt!121051))))

(declare-fun bm!16254 () Bool)

(declare-fun call!16262 () Token!1254)

(assert (=> bm!16254 (= call!16262 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))

(declare-fun b!287600 () Bool)

(declare-fun e!179038 () Bool)

(declare-fun lt!121043 () Option!871)

(assert (=> b!287600 (= e!179038 (not (= (_1!2458 (v!14811 lt!121043)) call!16262)))))

(declare-fun lt!121042 () BalanceConc!2672)

(declare-fun dropList!182 (BalanceConc!2674 Int) List!3955)

(assert (=> d!85101 (= (list!1645 lt!121042) (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0) separatorToken!170))))

(declare-fun e!179037 () BalanceConc!2672)

(assert (=> d!85101 (= lt!121042 e!179037)))

(declare-fun c!54432 () Bool)

(assert (=> d!85101 (= c!54432 (>= 0 (size!3161 (seqFromList!876 (t!40183 tokens!465)))))))

(declare-fun lt!121045 () Unit!5300)

(declare-fun lemmaContentSubsetPreservesForall!126 (List!3955 List!3955 Int) Unit!5300)

(assert (=> d!85101 (= lt!121045 (lemmaContentSubsetPreservesForall!126 (list!1648 (seqFromList!876 (t!40183 tokens!465))) (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0) lambda!9871))))

(declare-fun e!179040 () Bool)

(assert (=> d!85101 e!179040))

(declare-fun res!131380 () Bool)

(assert (=> d!85101 (=> (not res!131380) (not e!179040))))

(assert (=> d!85101 (= res!131380 (>= 0 0))))

(assert (=> d!85101 (= (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 0) lt!121042)))

(declare-fun call!16259 () BalanceConc!2672)

(declare-fun c!54434 () Bool)

(declare-fun call!16263 () Token!1254)

(declare-fun bm!16255 () Bool)

(assert (=> bm!16255 (= call!16259 (charsOf!398 (ite c!54434 separatorToken!170 call!16263)))))

(declare-fun e!179036 () BalanceConc!2672)

(assert (=> b!287601 (= e!179037 e!179036)))

(declare-fun lt!121046 () List!3955)

(assert (=> b!287601 (= lt!121046 (list!1648 (seqFromList!876 (t!40183 tokens!465))))))

(declare-fun lt!121049 () Unit!5300)

(declare-fun lemmaDropApply!222 (List!3955 Int) Unit!5300)

(assert (=> b!287601 (= lt!121049 (lemmaDropApply!222 lt!121046 0))))

(declare-fun head!930 (List!3955) Token!1254)

(declare-fun drop!235 (List!3955 Int) List!3955)

(declare-fun apply!843 (List!3955 Int) Token!1254)

(assert (=> b!287601 (= (head!930 (drop!235 lt!121046 0)) (apply!843 lt!121046 0))))

(declare-fun lt!121041 () Unit!5300)

(assert (=> b!287601 (= lt!121041 lt!121049)))

(declare-fun lt!121048 () List!3955)

(assert (=> b!287601 (= lt!121048 (list!1648 (seqFromList!876 (t!40183 tokens!465))))))

(declare-fun lt!121050 () Unit!5300)

(declare-fun lemmaDropTail!214 (List!3955 Int) Unit!5300)

(assert (=> b!287601 (= lt!121050 (lemmaDropTail!214 lt!121048 0))))

(declare-fun tail!512 (List!3955) List!3955)

(assert (=> b!287601 (= (tail!512 (drop!235 lt!121048 0)) (drop!235 lt!121048 (+ 0 1)))))

(declare-fun lt!121044 () Unit!5300)

(assert (=> b!287601 (= lt!121044 lt!121050)))

(declare-fun lt!121052 () Unit!5300)

(assert (=> b!287601 (= lt!121052 (forallContained!308 (list!1648 (seqFromList!876 (t!40183 tokens!465))) lambda!9872 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))))

(assert (=> b!287601 (= lt!121051 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 (+ 0 1)))))

(assert (=> b!287601 (= lt!121043 (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051)))))

(declare-fun res!131381 () Bool)

(assert (=> b!287601 (= res!131381 ((_ is Some!870) lt!121043))))

(declare-fun e!179041 () Bool)

(assert (=> b!287601 (=> (not res!131381) (not e!179041))))

(declare-fun c!54433 () Bool)

(assert (=> b!287601 (= c!54433 e!179041)))

(declare-fun bm!16256 () Bool)

(declare-fun call!16261 () BalanceConc!2672)

(assert (=> bm!16256 (= call!16260 (++!1052 call!16261 (ite c!54433 lt!121051 call!16259)))))

(declare-fun b!287602 () Bool)

(assert (=> b!287602 (= c!54434 e!179038)))

(declare-fun res!131379 () Bool)

(assert (=> b!287602 (=> (not res!131379) (not e!179038))))

(assert (=> b!287602 (= res!131379 ((_ is Some!870) lt!121043))))

(assert (=> b!287602 (= e!179036 e!179039)))

(declare-fun b!287603 () Bool)

(assert (=> b!287603 (= e!179036 call!16260)))

(declare-fun b!287604 () Bool)

(assert (=> b!287604 (= e!179041 (= (_1!2458 (v!14811 lt!121043)) (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))))

(declare-fun bm!16257 () Bool)

(assert (=> bm!16257 (= call!16263 call!16262)))

(declare-fun bm!16258 () Bool)

(assert (=> bm!16258 (= call!16261 (charsOf!398 (ite c!54433 call!16262 call!16263)))))

(declare-fun b!287605 () Bool)

(assert (=> b!287605 (= e!179037 (BalanceConc!2673 Empty!1332))))

(declare-fun b!287606 () Bool)

(assert (=> b!287606 (= e!179039 (BalanceConc!2673 Empty!1332))))

(assert (=> b!287606 (= (print!366 thiss!17480 (singletonSeq!301 call!16263)) (printTailRec!327 thiss!17480 (singletonSeq!301 call!16263) 0 (BalanceConc!2673 Empty!1332)))))

(declare-fun lt!121047 () Unit!5300)

(declare-fun Unit!5308 () Unit!5300)

(assert (=> b!287606 (= lt!121047 Unit!5308)))

(declare-fun lt!121053 () Unit!5300)

(assert (=> b!287606 (= lt!121053 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 (list!1645 call!16259) (list!1645 lt!121051)))))

(assert (=> b!287606 false))

(declare-fun lt!121054 () Unit!5300)

(declare-fun Unit!5309 () Unit!5300)

(assert (=> b!287606 (= lt!121054 Unit!5309)))

(declare-fun b!287607 () Bool)

(assert (=> b!287607 (= e!179040 (<= 0 (size!3161 (seqFromList!876 (t!40183 tokens!465)))))))

(assert (= (and d!85101 res!131380) b!287607))

(assert (= (and d!85101 c!54432) b!287605))

(assert (= (and d!85101 (not c!54432)) b!287601))

(assert (= (and b!287601 res!131381) b!287604))

(assert (= (and b!287601 c!54433) b!287603))

(assert (= (and b!287601 (not c!54433)) b!287602))

(assert (= (and b!287602 res!131379) b!287600))

(assert (= (and b!287602 c!54434) b!287599))

(assert (= (and b!287602 (not c!54434)) b!287606))

(assert (= (or b!287599 b!287606) bm!16257))

(assert (= (or b!287599 b!287606) bm!16255))

(assert (= (or b!287603 b!287600 bm!16257) bm!16254))

(assert (= (or b!287603 b!287599) bm!16258))

(assert (= (or b!287603 b!287599) bm!16256))

(declare-fun m!372253 () Bool)

(assert (=> bm!16255 m!372253))

(declare-fun m!372255 () Bool)

(assert (=> b!287601 m!372255))

(declare-fun m!372257 () Bool)

(assert (=> b!287601 m!372257))

(declare-fun m!372259 () Bool)

(assert (=> b!287601 m!372259))

(declare-fun m!372261 () Bool)

(assert (=> b!287601 m!372261))

(declare-fun m!372263 () Bool)

(assert (=> b!287601 m!372263))

(declare-fun m!372265 () Bool)

(assert (=> b!287601 m!372265))

(declare-fun m!372267 () Bool)

(assert (=> b!287601 m!372267))

(assert (=> b!287601 m!371737))

(declare-fun m!372269 () Bool)

(assert (=> b!287601 m!372269))

(assert (=> b!287601 m!371737))

(declare-fun m!372271 () Bool)

(assert (=> b!287601 m!372271))

(declare-fun m!372273 () Bool)

(assert (=> b!287601 m!372273))

(assert (=> b!287601 m!372257))

(assert (=> b!287601 m!371737))

(assert (=> b!287601 m!372273))

(assert (=> b!287601 m!372265))

(declare-fun m!372275 () Bool)

(assert (=> b!287601 m!372275))

(declare-fun m!372277 () Bool)

(assert (=> b!287601 m!372277))

(declare-fun m!372279 () Bool)

(assert (=> b!287601 m!372279))

(assert (=> b!287601 m!372259))

(declare-fun m!372281 () Bool)

(assert (=> b!287601 m!372281))

(assert (=> b!287601 m!372269))

(assert (=> b!287601 m!372273))

(declare-fun m!372283 () Bool)

(assert (=> b!287601 m!372283))

(assert (=> b!287601 m!372261))

(assert (=> bm!16254 m!371737))

(assert (=> bm!16254 m!372273))

(assert (=> b!287607 m!371737))

(declare-fun m!372285 () Bool)

(assert (=> b!287607 m!372285))

(declare-fun m!372287 () Bool)

(assert (=> b!287606 m!372287))

(declare-fun m!372289 () Bool)

(assert (=> b!287606 m!372289))

(assert (=> b!287606 m!372287))

(declare-fun m!372291 () Bool)

(assert (=> b!287606 m!372291))

(declare-fun m!372293 () Bool)

(assert (=> b!287606 m!372293))

(assert (=> b!287606 m!372293))

(assert (=> b!287606 m!372289))

(declare-fun m!372295 () Bool)

(assert (=> b!287606 m!372295))

(assert (=> b!287606 m!372287))

(declare-fun m!372297 () Bool)

(assert (=> b!287606 m!372297))

(declare-fun m!372299 () Bool)

(assert (=> bm!16256 m!372299))

(assert (=> d!85101 m!371737))

(assert (=> d!85101 m!372285))

(assert (=> d!85101 m!372269))

(declare-fun m!372301 () Bool)

(assert (=> d!85101 m!372301))

(declare-fun m!372303 () Bool)

(assert (=> d!85101 m!372303))

(assert (=> d!85101 m!372301))

(declare-fun m!372305 () Bool)

(assert (=> d!85101 m!372305))

(assert (=> d!85101 m!371737))

(assert (=> d!85101 m!372301))

(declare-fun m!372307 () Bool)

(assert (=> d!85101 m!372307))

(assert (=> d!85101 m!371737))

(assert (=> d!85101 m!372269))

(assert (=> b!287604 m!371737))

(assert (=> b!287604 m!372273))

(declare-fun m!372309 () Bool)

(assert (=> bm!16258 m!372309))

(declare-fun m!372311 () Bool)

(assert (=> b!287599 m!372311))

(assert (=> b!287253 d!85101))

(declare-fun d!85121 () Bool)

(declare-fun lt!121065 () BalanceConc!2672)

(assert (=> d!85121 (= (list!1645 lt!121065) (originalCharacters!798 separatorToken!170))))

(assert (=> d!85121 (= lt!121065 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170)))))

(assert (=> d!85121 (= (charsOf!398 separatorToken!170) lt!121065)))

(declare-fun b_lambda!9525 () Bool)

(assert (=> (not b_lambda!9525) (not d!85121)))

(assert (=> d!85121 t!40206))

(declare-fun b_and!23227 () Bool)

(assert (= b_and!23209 (and (=> t!40206 result!20456) b_and!23227)))

(assert (=> d!85121 t!40208))

(declare-fun b_and!23229 () Bool)

(assert (= b_and!23211 (and (=> t!40208 result!20458) b_and!23229)))

(assert (=> d!85121 t!40210))

(declare-fun b_and!23231 () Bool)

(assert (= b_and!23213 (and (=> t!40210 result!20460) b_and!23231)))

(declare-fun m!372347 () Bool)

(assert (=> d!85121 m!372347))

(assert (=> d!85121 m!372083))

(assert (=> b!287253 d!85121))

(declare-fun d!85127 () Bool)

(assert (=> d!85127 (= (list!1645 (charsOf!398 (h!9342 tokens!465))) (list!1649 (c!54354 (charsOf!398 (h!9342 tokens!465)))))))

(declare-fun bs!32446 () Bool)

(assert (= bs!32446 d!85127))

(declare-fun m!372355 () Bool)

(assert (=> bs!32446 m!372355))

(assert (=> b!287253 d!85127))

(declare-fun b!287628 () Bool)

(declare-fun e!179057 () List!3953)

(assert (=> b!287628 (= e!179057 lt!120874)))

(declare-fun b!287630 () Bool)

(declare-fun res!131396 () Bool)

(declare-fun e!179056 () Bool)

(assert (=> b!287630 (=> (not res!131396) (not e!179056))))

(declare-fun lt!121066 () List!3953)

(assert (=> b!287630 (= res!131396 (= (size!3163 lt!121066) (+ (size!3163 lt!120875) (size!3163 lt!120874))))))

(declare-fun b!287629 () Bool)

(assert (=> b!287629 (= e!179057 (Cons!3943 (h!9340 lt!120875) (++!1050 (t!40181 lt!120875) lt!120874)))))

(declare-fun d!85131 () Bool)

(assert (=> d!85131 e!179056))

(declare-fun res!131395 () Bool)

(assert (=> d!85131 (=> (not res!131395) (not e!179056))))

(assert (=> d!85131 (= res!131395 (= (content!579 lt!121066) ((_ map or) (content!579 lt!120875) (content!579 lt!120874))))))

(assert (=> d!85131 (= lt!121066 e!179057)))

(declare-fun c!54437 () Bool)

(assert (=> d!85131 (= c!54437 ((_ is Nil!3943) lt!120875))))

(assert (=> d!85131 (= (++!1050 lt!120875 lt!120874) lt!121066)))

(declare-fun b!287631 () Bool)

(assert (=> b!287631 (= e!179056 (or (not (= lt!120874 Nil!3943)) (= lt!121066 lt!120875)))))

(assert (= (and d!85131 c!54437) b!287628))

(assert (= (and d!85131 (not c!54437)) b!287629))

(assert (= (and d!85131 res!131395) b!287630))

(assert (= (and b!287630 res!131396) b!287631))

(declare-fun m!372359 () Bool)

(assert (=> b!287630 m!372359))

(assert (=> b!287630 m!372019))

(declare-fun m!372361 () Bool)

(assert (=> b!287630 m!372361))

(declare-fun m!372363 () Bool)

(assert (=> b!287629 m!372363))

(declare-fun m!372365 () Bool)

(assert (=> d!85131 m!372365))

(assert (=> d!85131 m!372027))

(declare-fun m!372367 () Bool)

(assert (=> d!85131 m!372367))

(assert (=> b!287253 d!85131))

(declare-fun d!85135 () Bool)

(declare-fun lt!121081 () BalanceConc!2672)

(assert (=> d!85135 (= (list!1645 lt!121081) (originalCharacters!798 (h!9342 tokens!465)))))

(assert (=> d!85135 (= lt!121081 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465))))))

(assert (=> d!85135 (= (charsOf!398 (h!9342 tokens!465)) lt!121081)))

(declare-fun b_lambda!9527 () Bool)

(assert (=> (not b_lambda!9527) (not d!85135)))

(assert (=> d!85135 t!40200))

(declare-fun b_and!23233 () Bool)

(assert (= b_and!23227 (and (=> t!40200 result!20448) b_and!23233)))

(assert (=> d!85135 t!40202))

(declare-fun b_and!23235 () Bool)

(assert (= b_and!23229 (and (=> t!40202 result!20452) b_and!23235)))

(assert (=> d!85135 t!40204))

(declare-fun b_and!23237 () Bool)

(assert (= b_and!23231 (and (=> t!40204 result!20454) b_and!23237)))

(declare-fun m!372369 () Bool)

(assert (=> d!85135 m!372369))

(assert (=> d!85135 m!372065))

(assert (=> b!287253 d!85135))

(declare-fun b!287641 () Bool)

(declare-fun e!179065 () List!3953)

(assert (=> b!287641 (= e!179065 lt!120869)))

(declare-fun b!287643 () Bool)

(declare-fun res!131401 () Bool)

(declare-fun e!179064 () Bool)

(assert (=> b!287643 (=> (not res!131401) (not e!179064))))

(declare-fun lt!121082 () List!3953)

(assert (=> b!287643 (= res!131401 (= (size!3163 lt!121082) (+ (size!3163 lt!120875) (size!3163 lt!120869))))))

(declare-fun b!287642 () Bool)

(assert (=> b!287642 (= e!179065 (Cons!3943 (h!9340 lt!120875) (++!1050 (t!40181 lt!120875) lt!120869)))))

(declare-fun d!85137 () Bool)

(assert (=> d!85137 e!179064))

(declare-fun res!131400 () Bool)

(assert (=> d!85137 (=> (not res!131400) (not e!179064))))

(assert (=> d!85137 (= res!131400 (= (content!579 lt!121082) ((_ map or) (content!579 lt!120875) (content!579 lt!120869))))))

(assert (=> d!85137 (= lt!121082 e!179065)))

(declare-fun c!54441 () Bool)

(assert (=> d!85137 (= c!54441 ((_ is Nil!3943) lt!120875))))

(assert (=> d!85137 (= (++!1050 lt!120875 lt!120869) lt!121082)))

(declare-fun b!287644 () Bool)

(assert (=> b!287644 (= e!179064 (or (not (= lt!120869 Nil!3943)) (= lt!121082 lt!120875)))))

(assert (= (and d!85137 c!54441) b!287641))

(assert (= (and d!85137 (not c!54441)) b!287642))

(assert (= (and d!85137 res!131400) b!287643))

(assert (= (and b!287643 res!131401) b!287644))

(declare-fun m!372371 () Bool)

(assert (=> b!287643 m!372371))

(assert (=> b!287643 m!372019))

(declare-fun m!372373 () Bool)

(assert (=> b!287643 m!372373))

(declare-fun m!372375 () Bool)

(assert (=> b!287642 m!372375))

(declare-fun m!372377 () Bool)

(assert (=> d!85137 m!372377))

(assert (=> d!85137 m!372027))

(declare-fun m!372379 () Bool)

(assert (=> d!85137 m!372379))

(assert (=> b!287253 d!85137))

(declare-fun d!85139 () Bool)

(assert (=> d!85139 (= (++!1050 (++!1050 lt!120875 lt!120869) lt!120870) (++!1050 lt!120875 (++!1050 lt!120869 lt!120870)))))

(declare-fun lt!121085 () Unit!5300)

(declare-fun choose!2593 (List!3953 List!3953 List!3953) Unit!5300)

(assert (=> d!85139 (= lt!121085 (choose!2593 lt!120875 lt!120869 lt!120870))))

(assert (=> d!85139 (= (lemmaConcatAssociativity!456 lt!120875 lt!120869 lt!120870) lt!121085)))

(declare-fun bs!32461 () Bool)

(assert (= bs!32461 d!85139))

(assert (=> bs!32461 m!371755))

(declare-fun m!372381 () Bool)

(assert (=> bs!32461 m!372381))

(assert (=> bs!32461 m!371739))

(assert (=> bs!32461 m!371755))

(assert (=> bs!32461 m!371739))

(assert (=> bs!32461 m!371747))

(declare-fun m!372383 () Bool)

(assert (=> bs!32461 m!372383))

(assert (=> b!287253 d!85139))

(declare-fun b!287648 () Bool)

(declare-fun e!179070 () List!3953)

(assert (=> b!287648 (= e!179070 lt!120870)))

(declare-fun b!287650 () Bool)

(declare-fun res!131403 () Bool)

(declare-fun e!179069 () Bool)

(assert (=> b!287650 (=> (not res!131403) (not e!179069))))

(declare-fun lt!121086 () List!3953)

(assert (=> b!287650 (= res!131403 (= (size!3163 lt!121086) (+ (size!3163 lt!120869) (size!3163 lt!120870))))))

(declare-fun b!287649 () Bool)

(assert (=> b!287649 (= e!179070 (Cons!3943 (h!9340 lt!120869) (++!1050 (t!40181 lt!120869) lt!120870)))))

(declare-fun d!85141 () Bool)

(assert (=> d!85141 e!179069))

(declare-fun res!131402 () Bool)

(assert (=> d!85141 (=> (not res!131402) (not e!179069))))

(assert (=> d!85141 (= res!131402 (= (content!579 lt!121086) ((_ map or) (content!579 lt!120869) (content!579 lt!120870))))))

(assert (=> d!85141 (= lt!121086 e!179070)))

(declare-fun c!54442 () Bool)

(assert (=> d!85141 (= c!54442 ((_ is Nil!3943) lt!120869))))

(assert (=> d!85141 (= (++!1050 lt!120869 lt!120870) lt!121086)))

(declare-fun b!287651 () Bool)

(assert (=> b!287651 (= e!179069 (or (not (= lt!120870 Nil!3943)) (= lt!121086 lt!120869)))))

(assert (= (and d!85141 c!54442) b!287648))

(assert (= (and d!85141 (not c!54442)) b!287649))

(assert (= (and d!85141 res!131402) b!287650))

(assert (= (and b!287650 res!131403) b!287651))

(declare-fun m!372395 () Bool)

(assert (=> b!287650 m!372395))

(assert (=> b!287650 m!372373))

(assert (=> b!287650 m!372021))

(declare-fun m!372399 () Bool)

(assert (=> b!287649 m!372399))

(declare-fun m!372401 () Bool)

(assert (=> d!85141 m!372401))

(assert (=> d!85141 m!372379))

(assert (=> d!85141 m!372029))

(assert (=> b!287253 d!85141))

(declare-fun d!85143 () Bool)

(declare-fun isEmpty!2620 (Option!870) Bool)

(assert (=> d!85143 (= (isDefined!709 (maxPrefix!357 thiss!17480 rules!1920 lt!120875)) (not (isEmpty!2620 (maxPrefix!357 thiss!17480 rules!1920 lt!120875))))))

(declare-fun bs!32462 () Bool)

(assert (= bs!32462 d!85143))

(assert (=> bs!32462 m!371705))

(declare-fun m!372437 () Bool)

(assert (=> bs!32462 m!372437))

(assert (=> b!287240 d!85143))

(declare-fun b!287685 () Bool)

(declare-fun e!179087 () Option!870)

(declare-fun lt!121106 () Option!870)

(declare-fun lt!121108 () Option!870)

(assert (=> b!287685 (= e!179087 (ite (and ((_ is None!869) lt!121106) ((_ is None!869) lt!121108)) None!869 (ite ((_ is None!869) lt!121108) lt!121106 (ite ((_ is None!869) lt!121106) lt!121108 (ite (>= (size!3157 (_1!2457 (v!14810 lt!121106))) (size!3157 (_1!2457 (v!14810 lt!121108)))) lt!121106 lt!121108)))))))

(declare-fun call!16276 () Option!870)

(assert (=> b!287685 (= lt!121106 call!16276)))

(assert (=> b!287685 (= lt!121108 (maxPrefix!357 thiss!17480 (t!40182 rules!1920) lt!120875))))

(declare-fun b!287686 () Bool)

(assert (=> b!287686 (= e!179087 call!16276)))

(declare-fun b!287688 () Bool)

(declare-fun res!131423 () Bool)

(declare-fun e!179086 () Bool)

(assert (=> b!287688 (=> (not res!131423) (not e!179086))))

(declare-fun lt!121107 () Option!870)

(declare-fun get!1329 (Option!870) tuple2!4482)

(declare-fun apply!844 (TokenValueInjection!1326 BalanceConc!2672) TokenValue!777)

(assert (=> b!287688 (= res!131423 (= (value!25833 (_1!2457 (get!1329 lt!121107))) (apply!844 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))) (seqFromList!875 (originalCharacters!798 (_1!2457 (get!1329 lt!121107)))))))))

(declare-fun b!287689 () Bool)

(declare-fun res!131424 () Bool)

(assert (=> b!287689 (=> (not res!131424) (not e!179086))))

(assert (=> b!287689 (= res!131424 (< (size!3163 (_2!2457 (get!1329 lt!121107))) (size!3163 lt!120875)))))

(declare-fun b!287690 () Bool)

(declare-fun res!131420 () Bool)

(assert (=> b!287690 (=> (not res!131420) (not e!179086))))

(assert (=> b!287690 (= res!131420 (= (++!1050 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107)))) (_2!2457 (get!1329 lt!121107))) lt!120875))))

(declare-fun b!287691 () Bool)

(declare-fun e!179088 () Bool)

(assert (=> b!287691 (= e!179088 e!179086)))

(declare-fun res!131422 () Bool)

(assert (=> b!287691 (=> (not res!131422) (not e!179086))))

(assert (=> b!287691 (= res!131422 (isDefined!709 lt!121107))))

(declare-fun b!287692 () Bool)

(declare-fun res!131421 () Bool)

(assert (=> b!287692 (=> (not res!131421) (not e!179086))))

(assert (=> b!287692 (= res!131421 (= (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107)))) (originalCharacters!798 (_1!2457 (get!1329 lt!121107)))))))

(declare-fun d!85145 () Bool)

(assert (=> d!85145 e!179088))

(declare-fun res!131426 () Bool)

(assert (=> d!85145 (=> res!131426 e!179088)))

(assert (=> d!85145 (= res!131426 (isEmpty!2620 lt!121107))))

(assert (=> d!85145 (= lt!121107 e!179087)))

(declare-fun c!54450 () Bool)

(assert (=> d!85145 (= c!54450 (and ((_ is Cons!3944) rules!1920) ((_ is Nil!3944) (t!40182 rules!1920))))))

(declare-fun lt!121104 () Unit!5300)

(declare-fun lt!121105 () Unit!5300)

(assert (=> d!85145 (= lt!121104 lt!121105)))

(declare-fun isPrefix!419 (List!3953 List!3953) Bool)

(assert (=> d!85145 (isPrefix!419 lt!120875 lt!120875)))

(declare-fun lemmaIsPrefixRefl!225 (List!3953 List!3953) Unit!5300)

(assert (=> d!85145 (= lt!121105 (lemmaIsPrefixRefl!225 lt!120875 lt!120875))))

(declare-fun rulesValidInductive!220 (LexerInterface!641 List!3954) Bool)

(assert (=> d!85145 (rulesValidInductive!220 thiss!17480 rules!1920)))

(assert (=> d!85145 (= (maxPrefix!357 thiss!17480 rules!1920 lt!120875) lt!121107)))

(declare-fun b!287687 () Bool)

(declare-fun contains!769 (List!3954 Rule!1310) Bool)

(assert (=> b!287687 (= e!179086 (contains!769 rules!1920 (rule!1354 (_1!2457 (get!1329 lt!121107)))))))

(declare-fun bm!16271 () Bool)

(declare-fun maxPrefixOneRule!159 (LexerInterface!641 Rule!1310 List!3953) Option!870)

(assert (=> bm!16271 (= call!16276 (maxPrefixOneRule!159 thiss!17480 (h!9341 rules!1920) lt!120875))))

(declare-fun b!287693 () Bool)

(declare-fun res!131425 () Bool)

(assert (=> b!287693 (=> (not res!131425) (not e!179086))))

(declare-fun matchR!297 (Regex!979 List!3953) Bool)

(assert (=> b!287693 (= res!131425 (matchR!297 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))) (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))))))

(assert (= (and d!85145 c!54450) b!287686))

(assert (= (and d!85145 (not c!54450)) b!287685))

(assert (= (or b!287686 b!287685) bm!16271))

(assert (= (and d!85145 (not res!131426)) b!287691))

(assert (= (and b!287691 res!131422) b!287692))

(assert (= (and b!287692 res!131421) b!287689))

(assert (= (and b!287689 res!131424) b!287690))

(assert (= (and b!287690 res!131420) b!287688))

(assert (= (and b!287688 res!131423) b!287693))

(assert (= (and b!287693 res!131425) b!287687))

(declare-fun m!372477 () Bool)

(assert (=> b!287692 m!372477))

(declare-fun m!372479 () Bool)

(assert (=> b!287692 m!372479))

(assert (=> b!287692 m!372479))

(declare-fun m!372481 () Bool)

(assert (=> b!287692 m!372481))

(declare-fun m!372483 () Bool)

(assert (=> bm!16271 m!372483))

(assert (=> b!287687 m!372477))

(declare-fun m!372485 () Bool)

(assert (=> b!287687 m!372485))

(declare-fun m!372487 () Bool)

(assert (=> b!287691 m!372487))

(assert (=> b!287693 m!372477))

(assert (=> b!287693 m!372479))

(assert (=> b!287693 m!372479))

(assert (=> b!287693 m!372481))

(assert (=> b!287693 m!372481))

(declare-fun m!372489 () Bool)

(assert (=> b!287693 m!372489))

(assert (=> b!287690 m!372477))

(assert (=> b!287690 m!372479))

(assert (=> b!287690 m!372479))

(assert (=> b!287690 m!372481))

(assert (=> b!287690 m!372481))

(declare-fun m!372491 () Bool)

(assert (=> b!287690 m!372491))

(declare-fun m!372493 () Bool)

(assert (=> d!85145 m!372493))

(declare-fun m!372495 () Bool)

(assert (=> d!85145 m!372495))

(declare-fun m!372497 () Bool)

(assert (=> d!85145 m!372497))

(declare-fun m!372499 () Bool)

(assert (=> d!85145 m!372499))

(assert (=> b!287689 m!372477))

(declare-fun m!372501 () Bool)

(assert (=> b!287689 m!372501))

(assert (=> b!287689 m!372019))

(assert (=> b!287688 m!372477))

(declare-fun m!372503 () Bool)

(assert (=> b!287688 m!372503))

(assert (=> b!287688 m!372503))

(declare-fun m!372505 () Bool)

(assert (=> b!287688 m!372505))

(declare-fun m!372507 () Bool)

(assert (=> b!287685 m!372507))

(assert (=> b!287240 d!85145))

(declare-fun d!85155 () Bool)

(assert (=> d!85155 (= (isEmpty!2609 rules!1920) ((_ is Nil!3944) rules!1920))))

(assert (=> b!287241 d!85155))

(declare-fun d!85157 () Bool)

(declare-fun lt!121125 () BalanceConc!2672)

(declare-fun printListTailRec!147 (LexerInterface!641 List!3955 List!3953) List!3953)

(assert (=> d!85157 (= (list!1645 lt!121125) (printListTailRec!147 thiss!17480 (dropList!182 lt!120863 0) (list!1645 (BalanceConc!2673 Empty!1332))))))

(declare-fun e!179093 () BalanceConc!2672)

(assert (=> d!85157 (= lt!121125 e!179093)))

(declare-fun c!54453 () Bool)

(assert (=> d!85157 (= c!54453 (>= 0 (size!3161 lt!120863)))))

(declare-fun e!179094 () Bool)

(assert (=> d!85157 e!179094))

(declare-fun res!131429 () Bool)

(assert (=> d!85157 (=> (not res!131429) (not e!179094))))

(assert (=> d!85157 (= res!131429 (>= 0 0))))

(assert (=> d!85157 (= (printTailRec!327 thiss!17480 lt!120863 0 (BalanceConc!2673 Empty!1332)) lt!121125)))

(declare-fun b!287700 () Bool)

(assert (=> b!287700 (= e!179094 (<= 0 (size!3161 lt!120863)))))

(declare-fun b!287701 () Bool)

(assert (=> b!287701 (= e!179093 (BalanceConc!2673 Empty!1332))))

(declare-fun b!287702 () Bool)

(assert (=> b!287702 (= e!179093 (printTailRec!327 thiss!17480 lt!120863 (+ 0 1) (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (apply!840 lt!120863 0)))))))

(declare-fun lt!121126 () List!3955)

(assert (=> b!287702 (= lt!121126 (list!1648 lt!120863))))

(declare-fun lt!121127 () Unit!5300)

(assert (=> b!287702 (= lt!121127 (lemmaDropApply!222 lt!121126 0))))

(assert (=> b!287702 (= (head!930 (drop!235 lt!121126 0)) (apply!843 lt!121126 0))))

(declare-fun lt!121123 () Unit!5300)

(assert (=> b!287702 (= lt!121123 lt!121127)))

(declare-fun lt!121128 () List!3955)

(assert (=> b!287702 (= lt!121128 (list!1648 lt!120863))))

(declare-fun lt!121129 () Unit!5300)

(assert (=> b!287702 (= lt!121129 (lemmaDropTail!214 lt!121128 0))))

(assert (=> b!287702 (= (tail!512 (drop!235 lt!121128 0)) (drop!235 lt!121128 (+ 0 1)))))

(declare-fun lt!121124 () Unit!5300)

(assert (=> b!287702 (= lt!121124 lt!121129)))

(assert (= (and d!85157 res!131429) b!287700))

(assert (= (and d!85157 c!54453) b!287701))

(assert (= (and d!85157 (not c!54453)) b!287702))

(declare-fun m!372509 () Bool)

(assert (=> d!85157 m!372509))

(declare-fun m!372511 () Bool)

(assert (=> d!85157 m!372511))

(declare-fun m!372513 () Bool)

(assert (=> d!85157 m!372513))

(declare-fun m!372515 () Bool)

(assert (=> d!85157 m!372515))

(assert (=> d!85157 m!372509))

(assert (=> d!85157 m!372515))

(declare-fun m!372517 () Bool)

(assert (=> d!85157 m!372517))

(assert (=> b!287700 m!372513))

(declare-fun m!372519 () Bool)

(assert (=> b!287702 m!372519))

(declare-fun m!372521 () Bool)

(assert (=> b!287702 m!372521))

(declare-fun m!372523 () Bool)

(assert (=> b!287702 m!372523))

(declare-fun m!372525 () Bool)

(assert (=> b!287702 m!372525))

(declare-fun m!372527 () Bool)

(assert (=> b!287702 m!372527))

(declare-fun m!372529 () Bool)

(assert (=> b!287702 m!372529))

(declare-fun m!372531 () Bool)

(assert (=> b!287702 m!372531))

(assert (=> b!287702 m!372525))

(declare-fun m!372533 () Bool)

(assert (=> b!287702 m!372533))

(declare-fun m!372535 () Bool)

(assert (=> b!287702 m!372535))

(declare-fun m!372537 () Bool)

(assert (=> b!287702 m!372537))

(assert (=> b!287702 m!372533))

(assert (=> b!287702 m!372531))

(declare-fun m!372539 () Bool)

(assert (=> b!287702 m!372539))

(assert (=> b!287702 m!372519))

(assert (=> b!287702 m!372539))

(declare-fun m!372541 () Bool)

(assert (=> b!287702 m!372541))

(declare-fun m!372543 () Bool)

(assert (=> b!287702 m!372543))

(assert (=> b!287239 d!85157))

(declare-fun d!85159 () Bool)

(declare-fun lt!121153 () BalanceConc!2672)

(assert (=> d!85159 (= (list!1645 lt!121153) (printList!315 thiss!17480 (list!1648 lt!120863)))))

(assert (=> d!85159 (= lt!121153 (printTailRec!327 thiss!17480 lt!120863 0 (BalanceConc!2673 Empty!1332)))))

(assert (=> d!85159 (= (print!366 thiss!17480 lt!120863) lt!121153)))

(declare-fun bs!32473 () Bool)

(assert (= bs!32473 d!85159))

(declare-fun m!372573 () Bool)

(assert (=> bs!32473 m!372573))

(assert (=> bs!32473 m!372529))

(assert (=> bs!32473 m!372529))

(declare-fun m!372575 () Bool)

(assert (=> bs!32473 m!372575))

(assert (=> bs!32473 m!371789))

(assert (=> b!287239 d!85159))

(declare-fun d!85165 () Bool)

(assert (=> d!85165 (= (list!1645 lt!120867) (list!1649 (c!54354 lt!120867)))))

(declare-fun bs!32474 () Bool)

(assert (= bs!32474 d!85165))

(declare-fun m!372577 () Bool)

(assert (=> bs!32474 m!372577))

(assert (=> b!287239 d!85165))

(declare-fun d!85167 () Bool)

(declare-fun e!179118 () Bool)

(assert (=> d!85167 e!179118))

(declare-fun res!131453 () Bool)

(assert (=> d!85167 (=> (not res!131453) (not e!179118))))

(declare-fun lt!121159 () BalanceConc!2674)

(assert (=> d!85167 (= res!131453 (= (list!1648 lt!121159) (Cons!3945 (h!9342 tokens!465) Nil!3945)))))

(declare-fun singleton!131 (Token!1254) BalanceConc!2674)

(assert (=> d!85167 (= lt!121159 (singleton!131 (h!9342 tokens!465)))))

(assert (=> d!85167 (= (singletonSeq!301 (h!9342 tokens!465)) lt!121159)))

(declare-fun b!287732 () Bool)

(declare-fun isBalanced!374 (Conc!1333) Bool)

(assert (=> b!287732 (= e!179118 (isBalanced!374 (c!54356 lt!121159)))))

(assert (= (and d!85167 res!131453) b!287732))

(declare-fun m!372587 () Bool)

(assert (=> d!85167 m!372587))

(declare-fun m!372589 () Bool)

(assert (=> d!85167 m!372589))

(declare-fun m!372591 () Bool)

(assert (=> b!287732 m!372591))

(assert (=> b!287239 d!85167))

(declare-fun d!85171 () Bool)

(declare-fun c!54459 () Bool)

(assert (=> d!85171 (= c!54459 ((_ is Cons!3945) (Cons!3945 (h!9342 tokens!465) Nil!3945)))))

(declare-fun e!179121 () List!3953)

(assert (=> d!85171 (= (printList!315 thiss!17480 (Cons!3945 (h!9342 tokens!465) Nil!3945)) e!179121)))

(declare-fun b!287737 () Bool)

(assert (=> b!287737 (= e!179121 (++!1050 (list!1645 (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))) (printList!315 thiss!17480 (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))))

(declare-fun b!287738 () Bool)

(assert (=> b!287738 (= e!179121 Nil!3943)))

(assert (= (and d!85171 c!54459) b!287737))

(assert (= (and d!85171 (not c!54459)) b!287738))

(declare-fun m!372593 () Bool)

(assert (=> b!287737 m!372593))

(assert (=> b!287737 m!372593))

(declare-fun m!372595 () Bool)

(assert (=> b!287737 m!372595))

(declare-fun m!372597 () Bool)

(assert (=> b!287737 m!372597))

(assert (=> b!287737 m!372595))

(assert (=> b!287737 m!372597))

(declare-fun m!372599 () Bool)

(assert (=> b!287737 m!372599))

(assert (=> b!287239 d!85171))

(declare-fun d!85173 () Bool)

(declare-fun isEmpty!2622 (Option!871) Bool)

(assert (=> d!85173 (= (isDefined!710 (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))) (not (isEmpty!2622 (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))

(declare-fun bs!32475 () Bool)

(assert (= bs!32475 d!85173))

(assert (=> bs!32475 m!371731))

(declare-fun m!372601 () Bool)

(assert (=> bs!32475 m!372601))

(assert (=> b!287250 d!85173))

(declare-fun call!16282 () Option!871)

(declare-fun bm!16277 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!129 (LexerInterface!641 Rule!1310 BalanceConc!2672) Option!871)

(assert (=> bm!16277 (= call!16282 (maxPrefixOneRuleZipperSequence!129 thiss!17480 (h!9341 rules!1920) (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(declare-fun d!85175 () Bool)

(declare-fun e!179191 () Bool)

(assert (=> d!85175 e!179191))

(declare-fun res!131479 () Bool)

(assert (=> d!85175 (=> (not res!131479) (not e!179191))))

(declare-fun lt!121205 () Option!871)

(declare-fun maxPrefixZipper!128 (LexerInterface!641 List!3954 List!3953) Option!870)

(assert (=> d!85175 (= res!131479 (= (isDefined!710 lt!121205) (isDefined!709 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))))

(declare-fun e!179192 () Option!871)

(assert (=> d!85175 (= lt!121205 e!179192)))

(declare-fun c!54468 () Bool)

(assert (=> d!85175 (= c!54468 (and ((_ is Cons!3944) rules!1920) ((_ is Nil!3944) (t!40182 rules!1920))))))

(declare-fun lt!121203 () Unit!5300)

(declare-fun lt!121201 () Unit!5300)

(assert (=> d!85175 (= lt!121203 lt!121201)))

(declare-fun lt!121207 () List!3953)

(declare-fun lt!121204 () List!3953)

(assert (=> d!85175 (isPrefix!419 lt!121207 lt!121204)))

(assert (=> d!85175 (= lt!121201 (lemmaIsPrefixRefl!225 lt!121207 lt!121204))))

(assert (=> d!85175 (= lt!121204 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (=> d!85175 (= lt!121207 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (=> d!85175 (rulesValidInductive!220 thiss!17480 rules!1920)))

(assert (=> d!85175 (= (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))) lt!121205)))

(declare-fun b!287831 () Bool)

(declare-fun lt!121202 () Option!871)

(declare-fun lt!121206 () Option!871)

(assert (=> b!287831 (= e!179192 (ite (and ((_ is None!870) lt!121202) ((_ is None!870) lt!121206)) None!870 (ite ((_ is None!870) lt!121206) lt!121202 (ite ((_ is None!870) lt!121202) lt!121206 (ite (>= (size!3157 (_1!2458 (v!14811 lt!121202))) (size!3157 (_1!2458 (v!14811 lt!121206)))) lt!121202 lt!121206)))))))

(assert (=> b!287831 (= lt!121202 call!16282)))

(assert (=> b!287831 (= lt!121206 (maxPrefixZipperSequence!320 thiss!17480 (t!40182 rules!1920) (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(declare-fun b!287832 () Bool)

(assert (=> b!287832 (= e!179192 call!16282)))

(declare-fun e!179193 () Bool)

(declare-fun b!287833 () Bool)

(declare-fun get!1331 (Option!871) tuple2!4484)

(assert (=> b!287833 (= e!179193 (= (list!1645 (_2!2458 (get!1331 lt!121205))) (_2!2457 (get!1329 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))))

(declare-fun b!287834 () Bool)

(declare-fun e!179194 () Bool)

(assert (=> b!287834 (= e!179194 e!179193)))

(declare-fun res!131478 () Bool)

(assert (=> b!287834 (=> (not res!131478) (not e!179193))))

(assert (=> b!287834 (= res!131478 (= (_1!2458 (get!1331 lt!121205)) (_1!2457 (get!1329 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))))

(declare-fun b!287835 () Bool)

(assert (=> b!287835 (= e!179191 e!179194)))

(declare-fun res!131476 () Bool)

(assert (=> b!287835 (=> res!131476 e!179194)))

(assert (=> b!287835 (= res!131476 (not (isDefined!710 lt!121205)))))

(declare-fun b!287836 () Bool)

(declare-fun res!131474 () Bool)

(assert (=> b!287836 (=> (not res!131474) (not e!179191))))

(declare-fun e!179189 () Bool)

(assert (=> b!287836 (= res!131474 e!179189)))

(declare-fun res!131475 () Bool)

(assert (=> b!287836 (=> res!131475 e!179189)))

(assert (=> b!287836 (= res!131475 (not (isDefined!710 lt!121205)))))

(declare-fun b!287837 () Bool)

(declare-fun e!179190 () Bool)

(assert (=> b!287837 (= e!179189 e!179190)))

(declare-fun res!131477 () Bool)

(assert (=> b!287837 (=> (not res!131477) (not e!179190))))

(assert (=> b!287837 (= res!131477 (= (_1!2458 (get!1331 lt!121205)) (_1!2457 (get!1329 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))))

(declare-fun b!287838 () Bool)

(assert (=> b!287838 (= e!179190 (= (list!1645 (_2!2458 (get!1331 lt!121205))) (_2!2457 (get!1329 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))))

(assert (= (and d!85175 c!54468) b!287832))

(assert (= (and d!85175 (not c!54468)) b!287831))

(assert (= (or b!287832 b!287831) bm!16277))

(assert (= (and d!85175 res!131479) b!287836))

(assert (= (and b!287836 (not res!131475)) b!287837))

(assert (= (and b!287837 res!131477) b!287838))

(assert (= (and b!287836 res!131474) b!287835))

(assert (= (and b!287835 (not res!131476)) b!287834))

(assert (= (and b!287834 res!131478) b!287833))

(declare-fun m!372677 () Bool)

(assert (=> b!287835 m!372677))

(assert (=> d!85175 m!372499))

(declare-fun m!372679 () Bool)

(assert (=> d!85175 m!372679))

(declare-fun m!372681 () Bool)

(assert (=> d!85175 m!372681))

(declare-fun m!372683 () Bool)

(assert (=> d!85175 m!372683))

(assert (=> d!85175 m!372679))

(declare-fun m!372685 () Bool)

(assert (=> d!85175 m!372685))

(assert (=> d!85175 m!372677))

(assert (=> d!85175 m!371729))

(assert (=> d!85175 m!372683))

(declare-fun m!372687 () Bool)

(assert (=> d!85175 m!372687))

(assert (=> bm!16277 m!371729))

(declare-fun m!372689 () Bool)

(assert (=> bm!16277 m!372689))

(declare-fun m!372691 () Bool)

(assert (=> b!287834 m!372691))

(assert (=> b!287834 m!371729))

(assert (=> b!287834 m!372683))

(assert (=> b!287834 m!372683))

(declare-fun m!372693 () Bool)

(assert (=> b!287834 m!372693))

(assert (=> b!287834 m!372693))

(declare-fun m!372695 () Bool)

(assert (=> b!287834 m!372695))

(assert (=> b!287831 m!371729))

(declare-fun m!372697 () Bool)

(assert (=> b!287831 m!372697))

(assert (=> b!287833 m!372683))

(assert (=> b!287833 m!372693))

(assert (=> b!287833 m!371729))

(assert (=> b!287833 m!372683))

(assert (=> b!287833 m!372693))

(assert (=> b!287833 m!372695))

(declare-fun m!372699 () Bool)

(assert (=> b!287833 m!372699))

(assert (=> b!287833 m!372691))

(assert (=> b!287836 m!372677))

(assert (=> b!287838 m!372683))

(assert (=> b!287838 m!372679))

(assert (=> b!287838 m!371729))

(assert (=> b!287838 m!372683))

(assert (=> b!287838 m!372699))

(assert (=> b!287838 m!372691))

(assert (=> b!287838 m!372679))

(declare-fun m!372701 () Bool)

(assert (=> b!287838 m!372701))

(assert (=> b!287837 m!372691))

(assert (=> b!287837 m!371729))

(assert (=> b!287837 m!372683))

(assert (=> b!287837 m!372683))

(assert (=> b!287837 m!372679))

(assert (=> b!287837 m!372679))

(assert (=> b!287837 m!372701))

(assert (=> b!287250 d!85175))

(declare-fun d!85193 () Bool)

(assert (=> d!85193 (= (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))) (fromListB!359 (originalCharacters!798 (h!9342 tokens!465))))))

(declare-fun bs!32480 () Bool)

(assert (= bs!32480 d!85193))

(declare-fun m!372703 () Bool)

(assert (=> bs!32480 m!372703))

(assert (=> b!287250 d!85193))

(declare-fun d!85195 () Bool)

(assert (=> d!85195 (dynLambda!2094 lambda!9844 (h!9342 tokens!465))))

(declare-fun lt!121210 () Unit!5300)

(declare-fun choose!2594 (List!3955 Int Token!1254) Unit!5300)

(assert (=> d!85195 (= lt!121210 (choose!2594 tokens!465 lambda!9844 (h!9342 tokens!465)))))

(declare-fun e!179197 () Bool)

(assert (=> d!85195 e!179197))

(declare-fun res!131482 () Bool)

(assert (=> d!85195 (=> (not res!131482) (not e!179197))))

(assert (=> d!85195 (= res!131482 (forall!1016 tokens!465 lambda!9844))))

(assert (=> d!85195 (= (forallContained!308 tokens!465 lambda!9844 (h!9342 tokens!465)) lt!121210)))

(declare-fun b!287841 () Bool)

(declare-fun contains!770 (List!3955 Token!1254) Bool)

(assert (=> b!287841 (= e!179197 (contains!770 tokens!465 (h!9342 tokens!465)))))

(assert (= (and d!85195 res!131482) b!287841))

(declare-fun b_lambda!9545 () Bool)

(assert (=> (not b_lambda!9545) (not d!85195)))

(declare-fun m!372705 () Bool)

(assert (=> d!85195 m!372705))

(declare-fun m!372707 () Bool)

(assert (=> d!85195 m!372707))

(declare-fun m!372709 () Bool)

(assert (=> d!85195 m!372709))

(declare-fun m!372711 () Bool)

(assert (=> b!287841 m!372711))

(assert (=> b!287250 d!85195))

(declare-fun d!85197 () Bool)

(declare-fun res!131485 () Bool)

(declare-fun e!179200 () Bool)

(assert (=> d!85197 (=> (not res!131485) (not e!179200))))

(declare-fun rulesValid!244 (LexerInterface!641 List!3954) Bool)

(assert (=> d!85197 (= res!131485 (rulesValid!244 thiss!17480 rules!1920))))

(assert (=> d!85197 (= (rulesInvariant!607 thiss!17480 rules!1920) e!179200)))

(declare-fun b!287844 () Bool)

(declare-datatypes ((List!3957 0))(
  ( (Nil!3947) (Cons!3947 (h!9344 String!4965) (t!40249 List!3957)) )
))
(declare-fun noDuplicateTag!244 (LexerInterface!641 List!3954 List!3957) Bool)

(assert (=> b!287844 (= e!179200 (noDuplicateTag!244 thiss!17480 rules!1920 Nil!3947))))

(assert (= (and d!85197 res!131485) b!287844))

(declare-fun m!372713 () Bool)

(assert (=> d!85197 m!372713))

(declare-fun m!372715 () Bool)

(assert (=> b!287844 m!372715))

(assert (=> b!287259 d!85197))

(declare-fun d!85199 () Bool)

(assert (=> d!85199 (= (inv!4871 (tag!971 (h!9341 rules!1920))) (= (mod (str.len (value!25832 (tag!971 (h!9341 rules!1920)))) 2) 0))))

(assert (=> b!287238 d!85199))

(declare-fun d!85201 () Bool)

(declare-fun res!131486 () Bool)

(declare-fun e!179201 () Bool)

(assert (=> d!85201 (=> (not res!131486) (not e!179201))))

(assert (=> d!85201 (= res!131486 (semiInverseModEq!279 (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toValue!1502 (transformation!755 (h!9341 rules!1920)))))))

(assert (=> d!85201 (= (inv!4875 (transformation!755 (h!9341 rules!1920))) e!179201)))

(declare-fun b!287845 () Bool)

(assert (=> b!287845 (= e!179201 (equivClasses!262 (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toValue!1502 (transformation!755 (h!9341 rules!1920)))))))

(assert (= (and d!85201 res!131486) b!287845))

(declare-fun m!372717 () Bool)

(assert (=> d!85201 m!372717))

(declare-fun m!372719 () Bool)

(assert (=> b!287845 m!372719))

(assert (=> b!287238 d!85201))

(declare-fun d!85203 () Bool)

(assert (=> d!85203 (= (list!1645 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 0)) (list!1649 (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 0))))))

(declare-fun bs!32481 () Bool)

(assert (= bs!32481 d!85203))

(declare-fun m!372721 () Bool)

(assert (=> bs!32481 m!372721))

(assert (=> b!287249 d!85203))

(declare-fun bs!32482 () Bool)

(declare-fun d!85205 () Bool)

(assert (= bs!32482 (and d!85205 b!287244)))

(declare-fun lambda!9876 () Int)

(assert (=> bs!32482 (= lambda!9876 lambda!9843)))

(declare-fun bs!32483 () Bool)

(assert (= bs!32483 (and d!85205 b!287601)))

(assert (=> bs!32483 (not (= lambda!9876 lambda!9872))))

(declare-fun bs!32484 () Bool)

(assert (= bs!32484 (and d!85205 b!287521)))

(assert (=> bs!32484 (not (= lambda!9876 lambda!9860))))

(declare-fun bs!32485 () Bool)

(assert (= bs!32485 (and d!85205 b!287250)))

(assert (=> bs!32485 (not (= lambda!9876 lambda!9844))))

(declare-fun bs!32486 () Bool)

(assert (= bs!32486 (and d!85205 d!85101)))

(assert (=> bs!32486 (= lambda!9876 lambda!9871)))

(declare-fun bs!32487 () Bool)

(assert (= bs!32487 (and d!85205 d!85003)))

(assert (=> bs!32487 (not (= lambda!9876 lambda!9854))))

(declare-fun bs!32488 () Bool)

(declare-fun b!287848 () Bool)

(assert (= bs!32488 (and b!287848 b!287244)))

(declare-fun lambda!9877 () Int)

(assert (=> bs!32488 (not (= lambda!9877 lambda!9843))))

(declare-fun bs!32489 () Bool)

(assert (= bs!32489 (and b!287848 b!287601)))

(assert (=> bs!32489 (= lambda!9877 lambda!9872)))

(declare-fun bs!32490 () Bool)

(assert (= bs!32490 (and b!287848 b!287521)))

(assert (=> bs!32490 (= lambda!9877 lambda!9860)))

(declare-fun bs!32491 () Bool)

(assert (= bs!32491 (and b!287848 b!287250)))

(assert (=> bs!32491 (= lambda!9877 lambda!9844)))

(declare-fun bs!32492 () Bool)

(assert (= bs!32492 (and b!287848 d!85003)))

(assert (=> bs!32492 (= lambda!9877 lambda!9854)))

(declare-fun bs!32493 () Bool)

(assert (= bs!32493 (and b!287848 d!85205)))

(assert (=> bs!32493 (not (= lambda!9877 lambda!9876))))

(declare-fun bs!32494 () Bool)

(assert (= bs!32494 (and b!287848 d!85101)))

(assert (=> bs!32494 (not (= lambda!9877 lambda!9871))))

(declare-fun b!287857 () Bool)

(declare-fun e!179210 () Bool)

(assert (=> b!287857 (= e!179210 true)))

(declare-fun b!287856 () Bool)

(declare-fun e!179209 () Bool)

(assert (=> b!287856 (= e!179209 e!179210)))

(declare-fun b!287855 () Bool)

(declare-fun e!179208 () Bool)

(assert (=> b!287855 (= e!179208 e!179209)))

(assert (=> b!287848 e!179208))

(assert (= b!287856 b!287857))

(assert (= b!287855 b!287856))

(assert (= (and b!287848 ((_ is Cons!3944) rules!1920)) b!287855))

(assert (=> b!287857 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9877))))

(assert (=> b!287857 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9877))))

(assert (=> b!287848 true))

(declare-fun b!287846 () Bool)

(declare-fun e!179205 () BalanceConc!2672)

(declare-fun call!16284 () BalanceConc!2672)

(declare-fun lt!121221 () BalanceConc!2672)

(assert (=> b!287846 (= e!179205 (++!1052 call!16284 lt!121221))))

(declare-fun bm!16278 () Bool)

(declare-fun call!16286 () Token!1254)

(assert (=> bm!16278 (= call!16286 (apply!840 lt!120873 0))))

(declare-fun b!287847 () Bool)

(declare-fun e!179204 () Bool)

(declare-fun lt!121213 () Option!871)

(assert (=> b!287847 (= e!179204 (not (= (_1!2458 (v!14811 lt!121213)) call!16286)))))

(declare-fun lt!121212 () BalanceConc!2672)

(assert (=> d!85205 (= (list!1645 lt!121212) (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (dropList!182 lt!120873 0) separatorToken!170))))

(declare-fun e!179203 () BalanceConc!2672)

(assert (=> d!85205 (= lt!121212 e!179203)))

(declare-fun c!54469 () Bool)

(assert (=> d!85205 (= c!54469 (>= 0 (size!3161 lt!120873)))))

(declare-fun lt!121215 () Unit!5300)

(assert (=> d!85205 (= lt!121215 (lemmaContentSubsetPreservesForall!126 (list!1648 lt!120873) (dropList!182 lt!120873 0) lambda!9876))))

(declare-fun e!179206 () Bool)

(assert (=> d!85205 e!179206))

(declare-fun res!131488 () Bool)

(assert (=> d!85205 (=> (not res!131488) (not e!179206))))

(assert (=> d!85205 (= res!131488 (>= 0 0))))

(assert (=> d!85205 (= (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 0) lt!121212)))

(declare-fun call!16287 () Token!1254)

(declare-fun c!54471 () Bool)

(declare-fun call!16283 () BalanceConc!2672)

(declare-fun bm!16279 () Bool)

(assert (=> bm!16279 (= call!16283 (charsOf!398 (ite c!54471 separatorToken!170 call!16287)))))

(declare-fun e!179202 () BalanceConc!2672)

(assert (=> b!287848 (= e!179203 e!179202)))

(declare-fun lt!121216 () List!3955)

(assert (=> b!287848 (= lt!121216 (list!1648 lt!120873))))

(declare-fun lt!121219 () Unit!5300)

(assert (=> b!287848 (= lt!121219 (lemmaDropApply!222 lt!121216 0))))

(assert (=> b!287848 (= (head!930 (drop!235 lt!121216 0)) (apply!843 lt!121216 0))))

(declare-fun lt!121211 () Unit!5300)

(assert (=> b!287848 (= lt!121211 lt!121219)))

(declare-fun lt!121218 () List!3955)

(assert (=> b!287848 (= lt!121218 (list!1648 lt!120873))))

(declare-fun lt!121220 () Unit!5300)

(assert (=> b!287848 (= lt!121220 (lemmaDropTail!214 lt!121218 0))))

(assert (=> b!287848 (= (tail!512 (drop!235 lt!121218 0)) (drop!235 lt!121218 (+ 0 1)))))

(declare-fun lt!121214 () Unit!5300)

(assert (=> b!287848 (= lt!121214 lt!121220)))

(declare-fun lt!121222 () Unit!5300)

(assert (=> b!287848 (= lt!121222 (forallContained!308 (list!1648 lt!120873) lambda!9877 (apply!840 lt!120873 0)))))

(assert (=> b!287848 (= lt!121221 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 (+ 0 1)))))

(assert (=> b!287848 (= lt!121213 (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221)))))

(declare-fun res!131489 () Bool)

(assert (=> b!287848 (= res!131489 ((_ is Some!870) lt!121213))))

(declare-fun e!179207 () Bool)

(assert (=> b!287848 (=> (not res!131489) (not e!179207))))

(declare-fun c!54470 () Bool)

(assert (=> b!287848 (= c!54470 e!179207)))

(declare-fun bm!16280 () Bool)

(declare-fun call!16285 () BalanceConc!2672)

(assert (=> bm!16280 (= call!16284 (++!1052 call!16285 (ite c!54470 lt!121221 call!16283)))))

(declare-fun b!287849 () Bool)

(assert (=> b!287849 (= c!54471 e!179204)))

(declare-fun res!131487 () Bool)

(assert (=> b!287849 (=> (not res!131487) (not e!179204))))

(assert (=> b!287849 (= res!131487 ((_ is Some!870) lt!121213))))

(assert (=> b!287849 (= e!179202 e!179205)))

(declare-fun b!287850 () Bool)

(assert (=> b!287850 (= e!179202 call!16284)))

(declare-fun b!287851 () Bool)

(assert (=> b!287851 (= e!179207 (= (_1!2458 (v!14811 lt!121213)) (apply!840 lt!120873 0)))))

(declare-fun bm!16281 () Bool)

(assert (=> bm!16281 (= call!16287 call!16286)))

(declare-fun bm!16282 () Bool)

(assert (=> bm!16282 (= call!16285 (charsOf!398 (ite c!54470 call!16286 call!16287)))))

(declare-fun b!287852 () Bool)

(assert (=> b!287852 (= e!179203 (BalanceConc!2673 Empty!1332))))

(declare-fun b!287853 () Bool)

(assert (=> b!287853 (= e!179205 (BalanceConc!2673 Empty!1332))))

(assert (=> b!287853 (= (print!366 thiss!17480 (singletonSeq!301 call!16287)) (printTailRec!327 thiss!17480 (singletonSeq!301 call!16287) 0 (BalanceConc!2673 Empty!1332)))))

(declare-fun lt!121217 () Unit!5300)

(declare-fun Unit!5314 () Unit!5300)

(assert (=> b!287853 (= lt!121217 Unit!5314)))

(declare-fun lt!121223 () Unit!5300)

(assert (=> b!287853 (= lt!121223 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 (list!1645 call!16283) (list!1645 lt!121221)))))

(assert (=> b!287853 false))

(declare-fun lt!121224 () Unit!5300)

(declare-fun Unit!5315 () Unit!5300)

(assert (=> b!287853 (= lt!121224 Unit!5315)))

(declare-fun b!287854 () Bool)

(assert (=> b!287854 (= e!179206 (<= 0 (size!3161 lt!120873)))))

(assert (= (and d!85205 res!131488) b!287854))

(assert (= (and d!85205 c!54469) b!287852))

(assert (= (and d!85205 (not c!54469)) b!287848))

(assert (= (and b!287848 res!131489) b!287851))

(assert (= (and b!287848 c!54470) b!287850))

(assert (= (and b!287848 (not c!54470)) b!287849))

(assert (= (and b!287849 res!131487) b!287847))

(assert (= (and b!287849 c!54471) b!287846))

(assert (= (and b!287849 (not c!54471)) b!287853))

(assert (= (or b!287846 b!287853) bm!16281))

(assert (= (or b!287846 b!287853) bm!16279))

(assert (= (or b!287850 b!287847 bm!16281) bm!16278))

(assert (= (or b!287850 b!287846) bm!16282))

(assert (= (or b!287850 b!287846) bm!16280))

(declare-fun m!372723 () Bool)

(assert (=> bm!16279 m!372723))

(declare-fun m!372725 () Bool)

(assert (=> b!287848 m!372725))

(declare-fun m!372727 () Bool)

(assert (=> b!287848 m!372727))

(declare-fun m!372729 () Bool)

(assert (=> b!287848 m!372729))

(declare-fun m!372731 () Bool)

(assert (=> b!287848 m!372731))

(declare-fun m!372733 () Bool)

(assert (=> b!287848 m!372733))

(declare-fun m!372735 () Bool)

(assert (=> b!287848 m!372735))

(declare-fun m!372737 () Bool)

(assert (=> b!287848 m!372737))

(assert (=> b!287848 m!371825))

(declare-fun m!372739 () Bool)

(assert (=> b!287848 m!372739))

(declare-fun m!372741 () Bool)

(assert (=> b!287848 m!372741))

(assert (=> b!287848 m!372727))

(assert (=> b!287848 m!372741))

(assert (=> b!287848 m!372735))

(declare-fun m!372743 () Bool)

(assert (=> b!287848 m!372743))

(declare-fun m!372745 () Bool)

(assert (=> b!287848 m!372745))

(declare-fun m!372747 () Bool)

(assert (=> b!287848 m!372747))

(assert (=> b!287848 m!372729))

(declare-fun m!372749 () Bool)

(assert (=> b!287848 m!372749))

(assert (=> b!287848 m!371825))

(assert (=> b!287848 m!372741))

(declare-fun m!372751 () Bool)

(assert (=> b!287848 m!372751))

(assert (=> b!287848 m!372731))

(assert (=> bm!16278 m!372741))

(declare-fun m!372753 () Bool)

(assert (=> b!287854 m!372753))

(declare-fun m!372755 () Bool)

(assert (=> b!287853 m!372755))

(declare-fun m!372757 () Bool)

(assert (=> b!287853 m!372757))

(assert (=> b!287853 m!372755))

(declare-fun m!372759 () Bool)

(assert (=> b!287853 m!372759))

(declare-fun m!372761 () Bool)

(assert (=> b!287853 m!372761))

(assert (=> b!287853 m!372761))

(assert (=> b!287853 m!372757))

(declare-fun m!372763 () Bool)

(assert (=> b!287853 m!372763))

(assert (=> b!287853 m!372755))

(declare-fun m!372765 () Bool)

(assert (=> b!287853 m!372765))

(declare-fun m!372767 () Bool)

(assert (=> bm!16280 m!372767))

(assert (=> d!85205 m!372753))

(assert (=> d!85205 m!371825))

(declare-fun m!372769 () Bool)

(assert (=> d!85205 m!372769))

(declare-fun m!372771 () Bool)

(assert (=> d!85205 m!372771))

(assert (=> d!85205 m!372769))

(declare-fun m!372773 () Bool)

(assert (=> d!85205 m!372773))

(assert (=> d!85205 m!372769))

(declare-fun m!372775 () Bool)

(assert (=> d!85205 m!372775))

(assert (=> d!85205 m!371825))

(assert (=> b!287851 m!372741))

(declare-fun m!372777 () Bool)

(assert (=> bm!16282 m!372777))

(declare-fun m!372779 () Bool)

(assert (=> b!287846 m!372779))

(assert (=> b!287249 d!85205))

(declare-fun bs!32495 () Bool)

(declare-fun b!287862 () Bool)

(assert (= bs!32495 (and b!287862 b!287601)))

(declare-fun lambda!9878 () Int)

(assert (=> bs!32495 (= lambda!9878 lambda!9872)))

(declare-fun bs!32496 () Bool)

(assert (= bs!32496 (and b!287862 b!287521)))

(assert (=> bs!32496 (= lambda!9878 lambda!9860)))

(declare-fun bs!32497 () Bool)

(assert (= bs!32497 (and b!287862 b!287250)))

(assert (=> bs!32497 (= lambda!9878 lambda!9844)))

(declare-fun bs!32498 () Bool)

(assert (= bs!32498 (and b!287862 d!85003)))

(assert (=> bs!32498 (= lambda!9878 lambda!9854)))

(declare-fun bs!32499 () Bool)

(assert (= bs!32499 (and b!287862 b!287848)))

(assert (=> bs!32499 (= lambda!9878 lambda!9877)))

(declare-fun bs!32500 () Bool)

(assert (= bs!32500 (and b!287862 b!287244)))

(assert (=> bs!32500 (not (= lambda!9878 lambda!9843))))

(declare-fun bs!32501 () Bool)

(assert (= bs!32501 (and b!287862 d!85205)))

(assert (=> bs!32501 (not (= lambda!9878 lambda!9876))))

(declare-fun bs!32502 () Bool)

(assert (= bs!32502 (and b!287862 d!85101)))

(assert (=> bs!32502 (not (= lambda!9878 lambda!9871))))

(declare-fun b!287870 () Bool)

(declare-fun e!179218 () Bool)

(assert (=> b!287870 (= e!179218 true)))

(declare-fun b!287869 () Bool)

(declare-fun e!179217 () Bool)

(assert (=> b!287869 (= e!179217 e!179218)))

(declare-fun b!287868 () Bool)

(declare-fun e!179216 () Bool)

(assert (=> b!287868 (= e!179216 e!179217)))

(assert (=> b!287862 e!179216))

(assert (= b!287869 b!287870))

(assert (= b!287868 b!287869))

(assert (= (and b!287862 ((_ is Cons!3944) rules!1920)) b!287868))

(assert (=> b!287870 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9878))))

(assert (=> b!287870 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9878))))

(assert (=> b!287862 true))

(declare-fun b!287858 () Bool)

(declare-fun c!54475 () Bool)

(declare-fun lt!121227 () Option!870)

(assert (=> b!287858 (= c!54475 (and ((_ is Some!869) lt!121227) (not (= (_1!2457 (v!14810 lt!121227)) (h!9342 tokens!465)))))))

(declare-fun e!179212 () List!3953)

(declare-fun e!179211 () List!3953)

(assert (=> b!287858 (= e!179212 e!179211)))

(declare-fun b!287859 () Bool)

(declare-fun e!179214 () List!3953)

(assert (=> b!287859 (= e!179214 Nil!3943)))

(declare-fun b!287860 () Bool)

(declare-fun e!179215 () BalanceConc!2672)

(declare-fun call!16288 () BalanceConc!2672)

(assert (=> b!287860 (= e!179215 call!16288)))

(declare-fun bm!16283 () Bool)

(declare-fun call!16289 () BalanceConc!2672)

(assert (=> bm!16283 (= call!16288 call!16289)))

(declare-fun bm!16284 () Bool)

(declare-fun c!54473 () Bool)

(declare-fun call!16290 () List!3953)

(assert (=> bm!16284 (= call!16290 (list!1645 (ite c!54473 call!16289 e!179215)))))

(declare-fun b!287861 () Bool)

(declare-fun call!16292 () List!3953)

(declare-fun lt!121229 () List!3953)

(assert (=> b!287861 (= e!179211 (++!1050 call!16292 lt!121229))))

(assert (=> b!287862 (= e!179214 e!179212)))

(declare-fun lt!121230 () Unit!5300)

(assert (=> b!287862 (= lt!121230 (forallContained!308 tokens!465 lambda!9878 (h!9342 tokens!465)))))

(assert (=> b!287862 (= lt!121229 (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (t!40183 tokens!465) separatorToken!170))))

(assert (=> b!287862 (= lt!121227 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229)))))

(assert (=> b!287862 (= c!54473 (and ((_ is Some!869) lt!121227) (= (_1!2457 (v!14810 lt!121227)) (h!9342 tokens!465))))))

(declare-fun b!287863 () Bool)

(declare-fun e!179213 () List!3953)

(assert (=> b!287863 (= e!179213 call!16290)))

(declare-fun bm!16285 () Bool)

(declare-fun call!16291 () List!3953)

(assert (=> bm!16285 (= call!16291 call!16290)))

(declare-fun c!54472 () Bool)

(assert (=> bm!16285 (= c!54472 c!54475)))

(declare-fun b!287864 () Bool)

(assert (=> b!287864 (= e!179211 Nil!3943)))

(assert (=> b!287864 (= (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465))) (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)) 0 (BalanceConc!2673 Empty!1332)))))

(declare-fun lt!121228 () Unit!5300)

(declare-fun Unit!5316 () Unit!5300)

(assert (=> b!287864 (= lt!121228 Unit!5316)))

(declare-fun lt!121226 () Unit!5300)

(assert (=> b!287864 (= lt!121226 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 call!16291 lt!121229))))

(assert (=> b!287864 false))

(declare-fun lt!121225 () Unit!5300)

(declare-fun Unit!5317 () Unit!5300)

(assert (=> b!287864 (= lt!121225 Unit!5317)))

(declare-fun b!287865 () Bool)

(assert (=> b!287865 (= e!179212 call!16292)))

(declare-fun d!85207 () Bool)

(declare-fun c!54474 () Bool)

(assert (=> d!85207 (= c!54474 ((_ is Cons!3945) tokens!465))))

(assert (=> d!85207 (= (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!179214)))

(declare-fun bm!16286 () Bool)

(declare-fun c!54476 () Bool)

(assert (=> bm!16286 (= c!54476 c!54473)))

(assert (=> bm!16286 (= call!16292 (++!1050 e!179213 (ite c!54473 lt!121229 call!16291)))))

(declare-fun bm!16287 () Bool)

(assert (=> bm!16287 (= call!16289 (charsOf!398 (h!9342 tokens!465)))))

(declare-fun b!287866 () Bool)

(assert (=> b!287866 (= e!179213 (list!1645 call!16288))))

(declare-fun b!287867 () Bool)

(assert (=> b!287867 (= e!179215 (charsOf!398 separatorToken!170))))

(assert (= (and d!85207 c!54474) b!287862))

(assert (= (and d!85207 (not c!54474)) b!287859))

(assert (= (and b!287862 c!54473) b!287865))

(assert (= (and b!287862 (not c!54473)) b!287858))

(assert (= (and b!287858 c!54475) b!287861))

(assert (= (and b!287858 (not c!54475)) b!287864))

(assert (= (or b!287861 b!287864) bm!16283))

(assert (= (or b!287861 b!287864) bm!16285))

(assert (= (and bm!16285 c!54472) b!287867))

(assert (= (and bm!16285 (not c!54472)) b!287860))

(assert (= (or b!287865 bm!16283) bm!16287))

(assert (= (or b!287865 bm!16285) bm!16284))

(assert (= (or b!287865 b!287861) bm!16286))

(assert (= (and bm!16286 c!54476) b!287863))

(assert (= (and bm!16286 (not c!54476)) b!287866))

(assert (=> b!287864 m!371785))

(assert (=> b!287864 m!371785))

(assert (=> b!287864 m!372047))

(assert (=> b!287864 m!371785))

(declare-fun m!372781 () Bool)

(assert (=> b!287864 m!372781))

(declare-fun m!372783 () Bool)

(assert (=> b!287864 m!372783))

(assert (=> b!287867 m!371743))

(declare-fun m!372785 () Bool)

(assert (=> bm!16286 m!372785))

(assert (=> b!287862 m!371757))

(assert (=> b!287862 m!371759))

(assert (=> b!287862 m!371757))

(assert (=> b!287862 m!371759))

(declare-fun m!372787 () Bool)

(assert (=> b!287862 m!372787))

(assert (=> b!287862 m!372787))

(declare-fun m!372789 () Bool)

(assert (=> b!287862 m!372789))

(declare-fun m!372791 () Bool)

(assert (=> b!287862 m!372791))

(assert (=> b!287862 m!371741))

(declare-fun m!372793 () Bool)

(assert (=> b!287866 m!372793))

(assert (=> bm!16287 m!371757))

(declare-fun m!372795 () Bool)

(assert (=> b!287861 m!372795))

(declare-fun m!372797 () Bool)

(assert (=> bm!16284 m!372797))

(assert (=> b!287249 d!85207))

(declare-fun b!287875 () Bool)

(declare-fun e!179221 () Bool)

(declare-fun tp_is_empty!1855 () Bool)

(declare-fun tp!105418 () Bool)

(assert (=> b!287875 (= e!179221 (and tp_is_empty!1855 tp!105418))))

(assert (=> b!287247 (= tp!105350 e!179221)))

(assert (= (and b!287247 ((_ is Cons!3943) (originalCharacters!798 separatorToken!170))) b!287875))

(declare-fun e!179224 () Bool)

(assert (=> b!287255 (= tp!105349 e!179224)))

(declare-fun b!287887 () Bool)

(declare-fun tp!105432 () Bool)

(declare-fun tp!105430 () Bool)

(assert (=> b!287887 (= e!179224 (and tp!105432 tp!105430))))

(declare-fun b!287889 () Bool)

(declare-fun tp!105431 () Bool)

(declare-fun tp!105433 () Bool)

(assert (=> b!287889 (= e!179224 (and tp!105431 tp!105433))))

(declare-fun b!287886 () Bool)

(assert (=> b!287886 (= e!179224 tp_is_empty!1855)))

(declare-fun b!287888 () Bool)

(declare-fun tp!105429 () Bool)

(assert (=> b!287888 (= e!179224 tp!105429)))

(assert (= (and b!287255 ((_ is ElementMatch!979) (regex!755 (rule!1354 (h!9342 tokens!465))))) b!287886))

(assert (= (and b!287255 ((_ is Concat!1757) (regex!755 (rule!1354 (h!9342 tokens!465))))) b!287887))

(assert (= (and b!287255 ((_ is Star!979) (regex!755 (rule!1354 (h!9342 tokens!465))))) b!287888))

(assert (= (and b!287255 ((_ is Union!979) (regex!755 (rule!1354 (h!9342 tokens!465))))) b!287889))

(declare-fun e!179225 () Bool)

(assert (=> b!287254 (= tp!105340 e!179225)))

(declare-fun b!287891 () Bool)

(declare-fun tp!105437 () Bool)

(declare-fun tp!105435 () Bool)

(assert (=> b!287891 (= e!179225 (and tp!105437 tp!105435))))

(declare-fun b!287893 () Bool)

(declare-fun tp!105436 () Bool)

(declare-fun tp!105438 () Bool)

(assert (=> b!287893 (= e!179225 (and tp!105436 tp!105438))))

(declare-fun b!287890 () Bool)

(assert (=> b!287890 (= e!179225 tp_is_empty!1855)))

(declare-fun b!287892 () Bool)

(declare-fun tp!105434 () Bool)

(assert (=> b!287892 (= e!179225 tp!105434)))

(assert (= (and b!287254 ((_ is ElementMatch!979) (regex!755 (rule!1354 separatorToken!170)))) b!287890))

(assert (= (and b!287254 ((_ is Concat!1757) (regex!755 (rule!1354 separatorToken!170)))) b!287891))

(assert (= (and b!287254 ((_ is Star!979) (regex!755 (rule!1354 separatorToken!170)))) b!287892))

(assert (= (and b!287254 ((_ is Union!979) (regex!755 (rule!1354 separatorToken!170)))) b!287893))

(declare-fun b!287907 () Bool)

(declare-fun b_free!10549 () Bool)

(declare-fun b_next!10549 () Bool)

(assert (=> b!287907 (= b_free!10549 (not b_next!10549))))

(declare-fun tp!105449 () Bool)

(declare-fun b_and!23253 () Bool)

(assert (=> b!287907 (= tp!105449 b_and!23253)))

(declare-fun b_free!10551 () Bool)

(declare-fun b_next!10551 () Bool)

(assert (=> b!287907 (= b_free!10551 (not b_next!10551))))

(declare-fun t!40241 () Bool)

(declare-fun tb!16653 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465))))) t!40241) tb!16653))

(declare-fun result!20490 () Bool)

(assert (= result!20490 result!20448))

(assert (=> b!287451 t!40241))

(declare-fun t!40243 () Bool)

(declare-fun tb!16655 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170)))) t!40243) tb!16655))

(declare-fun result!20492 () Bool)

(assert (= result!20492 result!20456))

(assert (=> b!287463 t!40243))

(assert (=> d!85121 t!40243))

(assert (=> d!85135 t!40241))

(declare-fun b_and!23255 () Bool)

(declare-fun tp!105453 () Bool)

(assert (=> b!287907 (= tp!105453 (and (=> t!40241 result!20490) (=> t!40243 result!20492) b_and!23255))))

(declare-fun b!287906 () Bool)

(declare-fun e!179238 () Bool)

(declare-fun e!179239 () Bool)

(declare-fun tp!105450 () Bool)

(assert (=> b!287906 (= e!179239 (and tp!105450 (inv!4871 (tag!971 (rule!1354 (h!9342 (t!40183 tokens!465))))) (inv!4875 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) e!179238))))

(declare-fun e!179240 () Bool)

(assert (=> b!287252 (= tp!105351 e!179240)))

(assert (=> b!287907 (= e!179238 (and tp!105449 tp!105453))))

(declare-fun tp!105451 () Bool)

(declare-fun e!179242 () Bool)

(declare-fun b!287904 () Bool)

(assert (=> b!287904 (= e!179240 (and (inv!4874 (h!9342 (t!40183 tokens!465))) e!179242 tp!105451))))

(declare-fun tp!105452 () Bool)

(declare-fun b!287905 () Bool)

(assert (=> b!287905 (= e!179242 (and (inv!21 (value!25833 (h!9342 (t!40183 tokens!465)))) e!179239 tp!105452))))

(assert (= b!287906 b!287907))

(assert (= b!287905 b!287906))

(assert (= b!287904 b!287905))

(assert (= (and b!287252 ((_ is Cons!3945) (t!40183 tokens!465))) b!287904))

(declare-fun m!372799 () Bool)

(assert (=> b!287906 m!372799))

(declare-fun m!372801 () Bool)

(assert (=> b!287906 m!372801))

(declare-fun m!372803 () Bool)

(assert (=> b!287904 m!372803))

(declare-fun m!372805 () Bool)

(assert (=> b!287905 m!372805))

(declare-fun b!287908 () Bool)

(declare-fun e!179244 () Bool)

(declare-fun tp!105454 () Bool)

(assert (=> b!287908 (= e!179244 (and tp_is_empty!1855 tp!105454))))

(assert (=> b!287242 (= tp!105339 e!179244)))

(assert (= (and b!287242 ((_ is Cons!3943) (originalCharacters!798 (h!9342 tokens!465)))) b!287908))

(declare-fun b!287911 () Bool)

(declare-fun e!179247 () Bool)

(assert (=> b!287911 (= e!179247 true)))

(declare-fun b!287910 () Bool)

(declare-fun e!179246 () Bool)

(assert (=> b!287910 (= e!179246 e!179247)))

(declare-fun b!287909 () Bool)

(declare-fun e!179245 () Bool)

(assert (=> b!287909 (= e!179245 e!179246)))

(assert (=> b!287268 e!179245))

(assert (= b!287910 b!287911))

(assert (= b!287909 b!287910))

(assert (= (and b!287268 ((_ is Cons!3944) (t!40182 rules!1920))) b!287909))

(assert (=> b!287911 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9844))))

(assert (=> b!287911 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9844))))

(declare-fun b!287922 () Bool)

(declare-fun b_free!10553 () Bool)

(declare-fun b_next!10553 () Bool)

(assert (=> b!287922 (= b_free!10553 (not b_next!10553))))

(declare-fun tp!105466 () Bool)

(declare-fun b_and!23257 () Bool)

(assert (=> b!287922 (= tp!105466 b_and!23257)))

(declare-fun b_free!10555 () Bool)

(declare-fun b_next!10555 () Bool)

(assert (=> b!287922 (= b_free!10555 (not b_next!10555))))

(declare-fun t!40245 () Bool)

(declare-fun tb!16657 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465))))) t!40245) tb!16657))

(declare-fun result!20496 () Bool)

(assert (= result!20496 result!20448))

(assert (=> b!287451 t!40245))

(declare-fun t!40247 () Bool)

(declare-fun tb!16659 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170)))) t!40247) tb!16659))

(declare-fun result!20498 () Bool)

(assert (= result!20498 result!20456))

(assert (=> b!287463 t!40247))

(assert (=> d!85121 t!40247))

(assert (=> d!85135 t!40245))

(declare-fun b_and!23259 () Bool)

(declare-fun tp!105464 () Bool)

(assert (=> b!287922 (= tp!105464 (and (=> t!40245 result!20496) (=> t!40247 result!20498) b_and!23259))))

(declare-fun e!179256 () Bool)

(assert (=> b!287922 (= e!179256 (and tp!105466 tp!105464))))

(declare-fun tp!105465 () Bool)

(declare-fun e!179258 () Bool)

(declare-fun b!287921 () Bool)

(assert (=> b!287921 (= e!179258 (and tp!105465 (inv!4871 (tag!971 (h!9341 (t!40182 rules!1920)))) (inv!4875 (transformation!755 (h!9341 (t!40182 rules!1920)))) e!179256))))

(declare-fun b!287920 () Bool)

(declare-fun e!179257 () Bool)

(declare-fun tp!105463 () Bool)

(assert (=> b!287920 (= e!179257 (and e!179258 tp!105463))))

(assert (=> b!287248 (= tp!105348 e!179257)))

(assert (= b!287921 b!287922))

(assert (= b!287920 b!287921))

(assert (= (and b!287248 ((_ is Cons!3944) (t!40182 rules!1920))) b!287920))

(declare-fun m!372807 () Bool)

(assert (=> b!287921 m!372807))

(declare-fun m!372809 () Bool)

(assert (=> b!287921 m!372809))

(declare-fun e!179260 () Bool)

(assert (=> b!287238 (= tp!105343 e!179260)))

(declare-fun b!287924 () Bool)

(declare-fun tp!105470 () Bool)

(declare-fun tp!105468 () Bool)

(assert (=> b!287924 (= e!179260 (and tp!105470 tp!105468))))

(declare-fun b!287926 () Bool)

(declare-fun tp!105469 () Bool)

(declare-fun tp!105471 () Bool)

(assert (=> b!287926 (= e!179260 (and tp!105469 tp!105471))))

(declare-fun b!287923 () Bool)

(assert (=> b!287923 (= e!179260 tp_is_empty!1855)))

(declare-fun b!287925 () Bool)

(declare-fun tp!105467 () Bool)

(assert (=> b!287925 (= e!179260 tp!105467)))

(assert (= (and b!287238 ((_ is ElementMatch!979) (regex!755 (h!9341 rules!1920)))) b!287923))

(assert (= (and b!287238 ((_ is Concat!1757) (regex!755 (h!9341 rules!1920)))) b!287924))

(assert (= (and b!287238 ((_ is Star!979) (regex!755 (h!9341 rules!1920)))) b!287925))

(assert (= (and b!287238 ((_ is Union!979) (regex!755 (h!9341 rules!1920)))) b!287926))

(declare-fun b_lambda!9547 () Bool)

(assert (= b_lambda!9519 (or (and b!287907 b_free!10551 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))))) (and b!287922 b_free!10555 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))))) (and b!287236 b_free!10535 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))))) (and b!287251 b_free!10539 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))))) (and b!287246 b_free!10531) b_lambda!9547)))

(declare-fun b_lambda!9549 () Bool)

(assert (= b_lambda!9517 (or (and b!287907 b_free!10551 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))))) (and b!287236 b_free!10535) (and b!287246 b_free!10531 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))))) (and b!287251 b_free!10539 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))))) (and b!287922 b_free!10555 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))))) b_lambda!9549)))

(declare-fun b_lambda!9551 () Bool)

(assert (= b_lambda!9515 (or b!287244 b_lambda!9551)))

(declare-fun bs!32503 () Bool)

(declare-fun d!85209 () Bool)

(assert (= bs!32503 (and d!85209 b!287244)))

(assert (=> bs!32503 (= (dynLambda!2094 lambda!9843 (h!9342 tokens!465)) (not (isSeparator!755 (rule!1354 (h!9342 tokens!465)))))))

(assert (=> b!287420 d!85209))

(declare-fun b_lambda!9553 () Bool)

(assert (= b_lambda!9525 (or (and b!287907 b_free!10551 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))))) (and b!287922 b_free!10555 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))))) (and b!287236 b_free!10535 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))))) (and b!287251 b_free!10539 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))))) (and b!287246 b_free!10531) b_lambda!9553)))

(declare-fun b_lambda!9555 () Bool)

(assert (= b_lambda!9527 (or (and b!287907 b_free!10551 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))))) (and b!287236 b_free!10535) (and b!287246 b_free!10531 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))))) (and b!287251 b_free!10539 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))))) (and b!287922 b_free!10555 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))))) b_lambda!9555)))

(declare-fun b_lambda!9557 () Bool)

(assert (= b_lambda!9545 (or b!287250 b_lambda!9557)))

(declare-fun bs!32504 () Bool)

(declare-fun d!85211 () Bool)

(assert (= bs!32504 (and d!85211 b!287250)))

(assert (=> bs!32504 (= (dynLambda!2094 lambda!9844 (h!9342 tokens!465)) (rulesProduceIndividualToken!390 thiss!17480 rules!1920 (h!9342 tokens!465)))))

(assert (=> bs!32504 m!371777))

(assert (=> d!85195 d!85211))

(check-sat (not b!287462) (not d!85127) (not b!287921) (not b!287732) b_and!23185 (not d!85205) (not b!287526) (not b!287906) (not b!287838) (not b!287464) (not d!85195) (not b!287412) (not b!287848) (not b!287920) (not b!287642) (not bm!16255) (not bm!16227) (not d!85083) (not d!85029) (not d!85075) (not b!287853) (not b!287844) (not b!287926) (not b!287461) (not b!287689) (not b!287463) (not d!85193) (not b!287846) tp_is_empty!1855 (not b!287434) (not b!287629) (not b!287904) (not b!287521) (not b!287442) (not b!287424) (not d!85023) (not b!287687) (not b!287650) (not b!287283) (not d!85087) (not b!287467) (not b!287861) (not d!85135) (not b_next!10537) (not d!85145) (not b_lambda!9557) (not b!287339) (not b!287688) (not b!287691) (not b!287862) (not b!287892) (not b!287649) (not d!85197) (not b!287435) (not bm!16271) (not b_next!10529) (not d!85143) (not b_next!10531) (not b!287601) (not d!85203) b_and!23189 (not b!287685) (not b!287300) (not b!287458) (not d!85095) b_and!23237 (not d!85079) (not d!85141) b_and!23253 (not b_next!10553) (not b!287443) (not b!287702) (not bm!16286) (not d!85175) (not b!287831) (not d!85121) (not bm!16277) (not d!85061) b_and!23259 (not d!85131) (not bs!32504) (not b_lambda!9553) (not bm!16256) (not tb!16633) (not b_next!10533) (not d!85173) (not d!85089) b_and!23235 (not b!287909) (not b!287854) (not b!287630) (not b!287643) (not b!287465) (not bm!16254) (not d!85073) b_and!23193 (not b!287851) (not b_next!10549) (not b!287835) (not d!85157) (not b!287444) (not d!85201) (not b_lambda!9555) (not b!287925) (not b_next!10539) (not b!287606) (not bm!16280) (not b!287887) (not b!287866) (not b!287411) (not b!287337) (not b!287301) (not b!287608) (not b!287451) (not bm!16287) (not b!287700) (not b!287525) (not b!287868) (not d!85159) (not b!287421) (not d!85093) (not b_next!10535) (not d!85031) (not d!85067) (not d!85081) (not b_next!10551) (not b!287845) (not b!287446) b_and!23255 (not b!287908) (not b!287604) b_and!23257 (not b!287867) (not d!85167) (not bm!16228) (not b!287520) (not b!287875) (not b!287692) (not d!85021) (not bm!16278) (not b!287690) (not bm!16279) (not b!287891) (not b!287468) (not d!85069) (not b!287445) (not bm!16284) (not b!287599) (not b!287286) (not b!287841) (not b!287338) (not b!287864) (not b!287889) (not b!287888) (not b!287905) b_and!23233 (not b!287287) (not b_lambda!9551) (not b!287833) (not bm!16258) (not bm!16225) (not tb!16627) (not b!287527) (not b!287452) (not d!85137) (not b!287836) (not b!287855) (not b!287693) (not b!287441) (not b!287523) (not b_lambda!9549) (not b!287415) (not d!85003) (not b!287457) (not b!287893) (not d!85139) (not b!287924) (not b!287607) (not b!287413) (not d!85091) (not b!287834) (not b!287837) (not d!85101) (not d!85165) (not b_lambda!9547) (not b!287737) (not b_next!10555) (not bm!16282))
(check-sat b_and!23185 (not b_next!10537) (not b_next!10529) b_and!23237 b_and!23259 (not b_next!10533) b_and!23235 (not b_next!10539) b_and!23233 (not b_next!10555) b_and!23189 (not b_next!10531) b_and!23253 (not b_next!10553) b_and!23193 (not b_next!10549) (not b_next!10535) (not b_next!10551) b_and!23255 b_and!23257)
(get-model)

(declare-fun b!288021 () Bool)

(declare-fun e!179306 () Bool)

(assert (=> b!288021 (= e!179306 (inv!16 (value!25833 (h!9342 (t!40183 tokens!465)))))))

(declare-fun b!288022 () Bool)

(declare-fun res!131558 () Bool)

(declare-fun e!179308 () Bool)

(assert (=> b!288022 (=> res!131558 e!179308)))

(assert (=> b!288022 (= res!131558 (not ((_ is IntegerValue!2333) (value!25833 (h!9342 (t!40183 tokens!465))))))))

(declare-fun e!179307 () Bool)

(assert (=> b!288022 (= e!179307 e!179308)))

(declare-fun b!288023 () Bool)

(assert (=> b!288023 (= e!179306 e!179307)))

(declare-fun c!54498 () Bool)

(assert (=> b!288023 (= c!54498 ((_ is IntegerValue!2332) (value!25833 (h!9342 (t!40183 tokens!465)))))))

(declare-fun b!288025 () Bool)

(assert (=> b!288025 (= e!179307 (inv!17 (value!25833 (h!9342 (t!40183 tokens!465)))))))

(declare-fun d!85285 () Bool)

(declare-fun c!54497 () Bool)

(assert (=> d!85285 (= c!54497 ((_ is IntegerValue!2331) (value!25833 (h!9342 (t!40183 tokens!465)))))))

(assert (=> d!85285 (= (inv!21 (value!25833 (h!9342 (t!40183 tokens!465)))) e!179306)))

(declare-fun b!288024 () Bool)

(assert (=> b!288024 (= e!179308 (inv!15 (value!25833 (h!9342 (t!40183 tokens!465)))))))

(assert (= (and d!85285 c!54497) b!288021))

(assert (= (and d!85285 (not c!54497)) b!288023))

(assert (= (and b!288023 c!54498) b!288025))

(assert (= (and b!288023 (not c!54498)) b!288022))

(assert (= (and b!288022 (not res!131558)) b!288024))

(declare-fun m!373089 () Bool)

(assert (=> b!288021 m!373089))

(declare-fun m!373091 () Bool)

(assert (=> b!288025 m!373091))

(declare-fun m!373093 () Bool)

(assert (=> b!288024 m!373093))

(assert (=> b!287905 d!85285))

(declare-fun b!288026 () Bool)

(declare-fun e!179310 () List!3953)

(assert (=> b!288026 (= e!179310 (_2!2457 (get!1329 lt!121107)))))

(declare-fun b!288028 () Bool)

(declare-fun res!131560 () Bool)

(declare-fun e!179309 () Bool)

(assert (=> b!288028 (=> (not res!131560) (not e!179309))))

(declare-fun lt!121272 () List!3953)

(assert (=> b!288028 (= res!131560 (= (size!3163 lt!121272) (+ (size!3163 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))) (size!3163 (_2!2457 (get!1329 lt!121107))))))))

(declare-fun b!288027 () Bool)

(assert (=> b!288027 (= e!179310 (Cons!3943 (h!9340 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))) (++!1050 (t!40181 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))) (_2!2457 (get!1329 lt!121107)))))))

(declare-fun d!85287 () Bool)

(assert (=> d!85287 e!179309))

(declare-fun res!131559 () Bool)

(assert (=> d!85287 (=> (not res!131559) (not e!179309))))

(assert (=> d!85287 (= res!131559 (= (content!579 lt!121272) ((_ map or) (content!579 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))) (content!579 (_2!2457 (get!1329 lt!121107))))))))

(assert (=> d!85287 (= lt!121272 e!179310)))

(declare-fun c!54499 () Bool)

(assert (=> d!85287 (= c!54499 ((_ is Nil!3943) (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))))))

(assert (=> d!85287 (= (++!1050 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107)))) (_2!2457 (get!1329 lt!121107))) lt!121272)))

(declare-fun b!288029 () Bool)

(assert (=> b!288029 (= e!179309 (or (not (= (_2!2457 (get!1329 lt!121107)) Nil!3943)) (= lt!121272 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107)))))))))

(assert (= (and d!85287 c!54499) b!288026))

(assert (= (and d!85287 (not c!54499)) b!288027))

(assert (= (and d!85287 res!131559) b!288028))

(assert (= (and b!288028 res!131560) b!288029))

(declare-fun m!373095 () Bool)

(assert (=> b!288028 m!373095))

(assert (=> b!288028 m!372481))

(declare-fun m!373097 () Bool)

(assert (=> b!288028 m!373097))

(assert (=> b!288028 m!372501))

(declare-fun m!373099 () Bool)

(assert (=> b!288027 m!373099))

(declare-fun m!373101 () Bool)

(assert (=> d!85287 m!373101))

(assert (=> d!85287 m!372481))

(declare-fun m!373103 () Bool)

(assert (=> d!85287 m!373103))

(declare-fun m!373105 () Bool)

(assert (=> d!85287 m!373105))

(assert (=> b!287690 d!85287))

(declare-fun d!85289 () Bool)

(assert (=> d!85289 (= (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107)))) (list!1649 (c!54354 (charsOf!398 (_1!2457 (get!1329 lt!121107))))))))

(declare-fun bs!32523 () Bool)

(assert (= bs!32523 d!85289))

(declare-fun m!373107 () Bool)

(assert (=> bs!32523 m!373107))

(assert (=> b!287690 d!85289))

(declare-fun d!85291 () Bool)

(declare-fun lt!121273 () BalanceConc!2672)

(assert (=> d!85291 (= (list!1645 lt!121273) (originalCharacters!798 (_1!2457 (get!1329 lt!121107))))))

(assert (=> d!85291 (= lt!121273 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107))))) (value!25833 (_1!2457 (get!1329 lt!121107)))))))

(assert (=> d!85291 (= (charsOf!398 (_1!2457 (get!1329 lt!121107))) lt!121273)))

(declare-fun b_lambda!9569 () Bool)

(assert (=> (not b_lambda!9569) (not d!85291)))

(declare-fun t!40261 () Bool)

(declare-fun tb!16671 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40261) tb!16671))

(declare-fun b!288030 () Bool)

(declare-fun e!179311 () Bool)

(declare-fun tp!105473 () Bool)

(assert (=> b!288030 (= e!179311 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107))))) (value!25833 (_1!2457 (get!1329 lt!121107)))))) tp!105473))))

(declare-fun result!20510 () Bool)

(assert (=> tb!16671 (= result!20510 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107))))) (value!25833 (_1!2457 (get!1329 lt!121107))))) e!179311))))

(assert (= tb!16671 b!288030))

(declare-fun m!373109 () Bool)

(assert (=> b!288030 m!373109))

(declare-fun m!373111 () Bool)

(assert (=> tb!16671 m!373111))

(assert (=> d!85291 t!40261))

(declare-fun b_and!23271 () Bool)

(assert (= b_and!23235 (and (=> t!40261 result!20510) b_and!23271)))

(declare-fun t!40263 () Bool)

(declare-fun tb!16673 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40263) tb!16673))

(declare-fun result!20512 () Bool)

(assert (= result!20512 result!20510))

(assert (=> d!85291 t!40263))

(declare-fun b_and!23273 () Bool)

(assert (= b_and!23233 (and (=> t!40263 result!20512) b_and!23273)))

(declare-fun tb!16675 () Bool)

(declare-fun t!40265 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40265) tb!16675))

(declare-fun result!20514 () Bool)

(assert (= result!20514 result!20510))

(assert (=> d!85291 t!40265))

(declare-fun b_and!23275 () Bool)

(assert (= b_and!23255 (and (=> t!40265 result!20514) b_and!23275)))

(declare-fun tb!16677 () Bool)

(declare-fun t!40267 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40267) tb!16677))

(declare-fun result!20516 () Bool)

(assert (= result!20516 result!20510))

(assert (=> d!85291 t!40267))

(declare-fun b_and!23277 () Bool)

(assert (= b_and!23259 (and (=> t!40267 result!20516) b_and!23277)))

(declare-fun t!40269 () Bool)

(declare-fun tb!16679 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40269) tb!16679))

(declare-fun result!20518 () Bool)

(assert (= result!20518 result!20510))

(assert (=> d!85291 t!40269))

(declare-fun b_and!23279 () Bool)

(assert (= b_and!23237 (and (=> t!40269 result!20518) b_and!23279)))

(declare-fun m!373113 () Bool)

(assert (=> d!85291 m!373113))

(declare-fun m!373115 () Bool)

(assert (=> d!85291 m!373115))

(assert (=> b!287690 d!85291))

(declare-fun d!85293 () Bool)

(assert (=> d!85293 (= (get!1329 lt!121107) (v!14810 lt!121107))))

(assert (=> b!287690 d!85293))

(declare-fun d!85295 () Bool)

(declare-fun lt!121276 () Token!1254)

(assert (=> d!85295 (= lt!121276 (apply!843 (list!1648 lt!120873) 0))))

(declare-fun apply!845 (Conc!1333 Int) Token!1254)

(assert (=> d!85295 (= lt!121276 (apply!845 (c!54356 lt!120873) 0))))

(declare-fun e!179314 () Bool)

(assert (=> d!85295 e!179314))

(declare-fun res!131563 () Bool)

(assert (=> d!85295 (=> (not res!131563) (not e!179314))))

(assert (=> d!85295 (= res!131563 (<= 0 0))))

(assert (=> d!85295 (= (apply!840 lt!120873 0) lt!121276)))

(declare-fun b!288033 () Bool)

(assert (=> b!288033 (= e!179314 (< 0 (size!3161 lt!120873)))))

(assert (= (and d!85295 res!131563) b!288033))

(assert (=> d!85295 m!371825))

(assert (=> d!85295 m!371825))

(declare-fun m!373117 () Bool)

(assert (=> d!85295 m!373117))

(declare-fun m!373119 () Bool)

(assert (=> d!85295 m!373119))

(assert (=> b!288033 m!372753))

(assert (=> b!287851 d!85295))

(declare-fun d!85297 () Bool)

(declare-fun charsToBigInt!1 (List!3952) Int)

(assert (=> d!85297 (= (inv!17 (value!25833 separatorToken!170)) (= (charsToBigInt!1 (text!5887 (value!25833 separatorToken!170))) (value!25825 (value!25833 separatorToken!170))))))

(declare-fun bs!32524 () Bool)

(assert (= bs!32524 d!85297))

(declare-fun m!373121 () Bool)

(assert (=> bs!32524 m!373121))

(assert (=> b!287287 d!85297))

(declare-fun d!85299 () Bool)

(declare-fun res!131568 () Bool)

(declare-fun e!179319 () Bool)

(assert (=> d!85299 (=> res!131568 e!179319)))

(assert (=> d!85299 (= res!131568 ((_ is Nil!3944) rules!1920))))

(assert (=> d!85299 (= (noDuplicateTag!244 thiss!17480 rules!1920 Nil!3947) e!179319)))

(declare-fun b!288038 () Bool)

(declare-fun e!179320 () Bool)

(assert (=> b!288038 (= e!179319 e!179320)))

(declare-fun res!131569 () Bool)

(assert (=> b!288038 (=> (not res!131569) (not e!179320))))

(declare-fun contains!772 (List!3957 String!4965) Bool)

(assert (=> b!288038 (= res!131569 (not (contains!772 Nil!3947 (tag!971 (h!9341 rules!1920)))))))

(declare-fun b!288039 () Bool)

(assert (=> b!288039 (= e!179320 (noDuplicateTag!244 thiss!17480 (t!40182 rules!1920) (Cons!3947 (tag!971 (h!9341 rules!1920)) Nil!3947)))))

(assert (= (and d!85299 (not res!131568)) b!288038))

(assert (= (and b!288038 res!131569) b!288039))

(declare-fun m!373123 () Bool)

(assert (=> b!288038 m!373123))

(declare-fun m!373125 () Bool)

(assert (=> b!288039 m!373125))

(assert (=> b!287844 d!85299))

(declare-fun d!85301 () Bool)

(declare-fun e!179323 () Bool)

(assert (=> d!85301 e!179323))

(declare-fun res!131572 () Bool)

(assert (=> d!85301 (=> (not res!131572) (not e!179323))))

(declare-fun lt!121279 () BalanceConc!2672)

(assert (=> d!85301 (= res!131572 (= (list!1645 lt!121279) lt!120875))))

(declare-fun fromList!186 (List!3953) Conc!1332)

(assert (=> d!85301 (= lt!121279 (BalanceConc!2673 (fromList!186 lt!120875)))))

(assert (=> d!85301 (= (fromListB!359 lt!120875) lt!121279)))

(declare-fun b!288042 () Bool)

(declare-fun isBalanced!377 (Conc!1332) Bool)

(assert (=> b!288042 (= e!179323 (isBalanced!377 (fromList!186 lt!120875)))))

(assert (= (and d!85301 res!131572) b!288042))

(declare-fun m!373127 () Bool)

(assert (=> d!85301 m!373127))

(declare-fun m!373129 () Bool)

(assert (=> d!85301 m!373129))

(assert (=> b!288042 m!373129))

(assert (=> b!288042 m!373129))

(declare-fun m!373131 () Bool)

(assert (=> b!288042 m!373131))

(assert (=> d!85061 d!85301))

(declare-fun d!85303 () Bool)

(declare-fun charsToInt!0 (List!3952) (_ BitVec 32))

(assert (=> d!85303 (= (inv!16 (value!25833 separatorToken!170)) (= (charsToInt!0 (text!5886 (value!25833 separatorToken!170))) (value!25824 (value!25833 separatorToken!170))))))

(declare-fun bs!32525 () Bool)

(assert (= bs!32525 d!85303))

(declare-fun m!373133 () Bool)

(assert (=> bs!32525 m!373133))

(assert (=> b!287283 d!85303))

(declare-fun d!85305 () Bool)

(declare-fun e!179324 () Bool)

(assert (=> d!85305 e!179324))

(declare-fun res!131573 () Bool)

(assert (=> d!85305 (=> (not res!131573) (not e!179324))))

(declare-fun lt!121280 () BalanceConc!2672)

(assert (=> d!85305 (= res!131573 (= (list!1645 lt!121280) lt!120868))))

(assert (=> d!85305 (= lt!121280 (BalanceConc!2673 (fromList!186 lt!120868)))))

(assert (=> d!85305 (= (fromListB!359 lt!120868) lt!121280)))

(declare-fun b!288043 () Bool)

(assert (=> b!288043 (= e!179324 (isBalanced!377 (fromList!186 lt!120868)))))

(assert (= (and d!85305 res!131573) b!288043))

(declare-fun m!373135 () Bool)

(assert (=> d!85305 m!373135))

(declare-fun m!373137 () Bool)

(assert (=> d!85305 m!373137))

(assert (=> b!288043 m!373137))

(assert (=> b!288043 m!373137))

(declare-fun m!373139 () Bool)

(assert (=> b!288043 m!373139))

(assert (=> d!85075 d!85305))

(declare-fun d!85307 () Bool)

(declare-fun lt!121281 () BalanceConc!2672)

(assert (=> d!85307 (= (list!1645 lt!121281) (originalCharacters!798 (h!9342 (t!40183 tokens!465))))))

(assert (=> d!85307 (= lt!121281 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (value!25833 (h!9342 (t!40183 tokens!465)))))))

(assert (=> d!85307 (= (charsOf!398 (h!9342 (t!40183 tokens!465))) lt!121281)))

(declare-fun b_lambda!9571 () Bool)

(assert (=> (not b_lambda!9571) (not d!85307)))

(declare-fun tb!16681 () Bool)

(declare-fun t!40271 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) t!40271) tb!16681))

(declare-fun b!288044 () Bool)

(declare-fun e!179325 () Bool)

(declare-fun tp!105474 () Bool)

(assert (=> b!288044 (= e!179325 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (value!25833 (h!9342 (t!40183 tokens!465)))))) tp!105474))))

(declare-fun result!20520 () Bool)

(assert (=> tb!16681 (= result!20520 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (value!25833 (h!9342 (t!40183 tokens!465))))) e!179325))))

(assert (= tb!16681 b!288044))

(declare-fun m!373141 () Bool)

(assert (=> b!288044 m!373141))

(declare-fun m!373143 () Bool)

(assert (=> tb!16681 m!373143))

(assert (=> d!85307 t!40271))

(declare-fun b_and!23281 () Bool)

(assert (= b_and!23279 (and (=> t!40271 result!20520) b_and!23281)))

(declare-fun tb!16683 () Bool)

(declare-fun t!40273 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) t!40273) tb!16683))

(declare-fun result!20522 () Bool)

(assert (= result!20522 result!20520))

(assert (=> d!85307 t!40273))

(declare-fun b_and!23283 () Bool)

(assert (= b_and!23273 (and (=> t!40273 result!20522) b_and!23283)))

(declare-fun t!40275 () Bool)

(declare-fun tb!16685 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) t!40275) tb!16685))

(declare-fun result!20524 () Bool)

(assert (= result!20524 result!20520))

(assert (=> d!85307 t!40275))

(declare-fun b_and!23285 () Bool)

(assert (= b_and!23271 (and (=> t!40275 result!20524) b_and!23285)))

(declare-fun t!40277 () Bool)

(declare-fun tb!16687 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) t!40277) tb!16687))

(declare-fun result!20526 () Bool)

(assert (= result!20526 result!20520))

(assert (=> d!85307 t!40277))

(declare-fun b_and!23287 () Bool)

(assert (= b_and!23275 (and (=> t!40277 result!20526) b_and!23287)))

(declare-fun t!40279 () Bool)

(declare-fun tb!16689 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) t!40279) tb!16689))

(declare-fun result!20528 () Bool)

(assert (= result!20528 result!20520))

(assert (=> d!85307 t!40279))

(declare-fun b_and!23289 () Bool)

(assert (= b_and!23277 (and (=> t!40279 result!20528) b_and!23289)))

(declare-fun m!373145 () Bool)

(assert (=> d!85307 m!373145))

(declare-fun m!373147 () Bool)

(assert (=> d!85307 m!373147))

(assert (=> bm!16228 d!85307))

(declare-fun d!85309 () Bool)

(assert (=> d!85309 (= (list!1645 (_2!2458 (get!1331 lt!121205))) (list!1649 (c!54354 (_2!2458 (get!1331 lt!121205)))))))

(declare-fun bs!32526 () Bool)

(assert (= bs!32526 d!85309))

(declare-fun m!373149 () Bool)

(assert (=> bs!32526 m!373149))

(assert (=> b!287833 d!85309))

(declare-fun b!288045 () Bool)

(declare-fun e!179327 () Option!870)

(declare-fun lt!121284 () Option!870)

(declare-fun lt!121286 () Option!870)

(assert (=> b!288045 (= e!179327 (ite (and ((_ is None!869) lt!121284) ((_ is None!869) lt!121286)) None!869 (ite ((_ is None!869) lt!121286) lt!121284 (ite ((_ is None!869) lt!121284) lt!121286 (ite (>= (size!3157 (_1!2457 (v!14810 lt!121284))) (size!3157 (_1!2457 (v!14810 lt!121286)))) lt!121284 lt!121286)))))))

(declare-fun call!16301 () Option!870)

(assert (=> b!288045 (= lt!121284 call!16301)))

(assert (=> b!288045 (= lt!121286 (maxPrefix!357 thiss!17480 (t!40182 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))

(declare-fun b!288046 () Bool)

(assert (=> b!288046 (= e!179327 call!16301)))

(declare-fun b!288048 () Bool)

(declare-fun res!131577 () Bool)

(declare-fun e!179326 () Bool)

(assert (=> b!288048 (=> (not res!131577) (not e!179326))))

(declare-fun lt!121285 () Option!870)

(assert (=> b!288048 (= res!131577 (= (value!25833 (_1!2457 (get!1329 lt!121285))) (apply!844 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121285)))) (seqFromList!875 (originalCharacters!798 (_1!2457 (get!1329 lt!121285)))))))))

(declare-fun b!288049 () Bool)

(declare-fun res!131578 () Bool)

(assert (=> b!288049 (=> (not res!131578) (not e!179326))))

(assert (=> b!288049 (= res!131578 (< (size!3163 (_2!2457 (get!1329 lt!121285))) (size!3163 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))

(declare-fun b!288050 () Bool)

(declare-fun res!131574 () Bool)

(assert (=> b!288050 (=> (not res!131574) (not e!179326))))

(assert (=> b!288050 (= res!131574 (= (++!1050 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121285)))) (_2!2457 (get!1329 lt!121285))) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))

(declare-fun b!288051 () Bool)

(declare-fun e!179328 () Bool)

(assert (=> b!288051 (= e!179328 e!179326)))

(declare-fun res!131576 () Bool)

(assert (=> b!288051 (=> (not res!131576) (not e!179326))))

(assert (=> b!288051 (= res!131576 (isDefined!709 lt!121285))))

(declare-fun b!288052 () Bool)

(declare-fun res!131575 () Bool)

(assert (=> b!288052 (=> (not res!131575) (not e!179326))))

(assert (=> b!288052 (= res!131575 (= (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121285)))) (originalCharacters!798 (_1!2457 (get!1329 lt!121285)))))))

(declare-fun d!85311 () Bool)

(assert (=> d!85311 e!179328))

(declare-fun res!131580 () Bool)

(assert (=> d!85311 (=> res!131580 e!179328)))

(assert (=> d!85311 (= res!131580 (isEmpty!2620 lt!121285))))

(assert (=> d!85311 (= lt!121285 e!179327)))

(declare-fun c!54501 () Bool)

(assert (=> d!85311 (= c!54501 (and ((_ is Cons!3944) rules!1920) ((_ is Nil!3944) (t!40182 rules!1920))))))

(declare-fun lt!121282 () Unit!5300)

(declare-fun lt!121283 () Unit!5300)

(assert (=> d!85311 (= lt!121282 lt!121283)))

(assert (=> d!85311 (isPrefix!419 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (=> d!85311 (= lt!121283 (lemmaIsPrefixRefl!225 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))

(assert (=> d!85311 (rulesValidInductive!220 thiss!17480 rules!1920)))

(assert (=> d!85311 (= (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))) lt!121285)))

(declare-fun b!288047 () Bool)

(assert (=> b!288047 (= e!179326 (contains!769 rules!1920 (rule!1354 (_1!2457 (get!1329 lt!121285)))))))

(declare-fun bm!16296 () Bool)

(assert (=> bm!16296 (= call!16301 (maxPrefixOneRule!159 thiss!17480 (h!9341 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))

(declare-fun b!288053 () Bool)

(declare-fun res!131579 () Bool)

(assert (=> b!288053 (=> (not res!131579) (not e!179326))))

(assert (=> b!288053 (= res!131579 (matchR!297 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121285)))) (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121285))))))))

(assert (= (and d!85311 c!54501) b!288046))

(assert (= (and d!85311 (not c!54501)) b!288045))

(assert (= (or b!288046 b!288045) bm!16296))

(assert (= (and d!85311 (not res!131580)) b!288051))

(assert (= (and b!288051 res!131576) b!288052))

(assert (= (and b!288052 res!131575) b!288049))

(assert (= (and b!288049 res!131578) b!288050))

(assert (= (and b!288050 res!131574) b!288048))

(assert (= (and b!288048 res!131577) b!288053))

(assert (= (and b!288053 res!131579) b!288047))

(declare-fun m!373151 () Bool)

(assert (=> b!288052 m!373151))

(declare-fun m!373153 () Bool)

(assert (=> b!288052 m!373153))

(assert (=> b!288052 m!373153))

(declare-fun m!373155 () Bool)

(assert (=> b!288052 m!373155))

(assert (=> bm!16296 m!372683))

(declare-fun m!373157 () Bool)

(assert (=> bm!16296 m!373157))

(assert (=> b!288047 m!373151))

(declare-fun m!373159 () Bool)

(assert (=> b!288047 m!373159))

(declare-fun m!373161 () Bool)

(assert (=> b!288051 m!373161))

(assert (=> b!288053 m!373151))

(assert (=> b!288053 m!373153))

(assert (=> b!288053 m!373153))

(assert (=> b!288053 m!373155))

(assert (=> b!288053 m!373155))

(declare-fun m!373163 () Bool)

(assert (=> b!288053 m!373163))

(assert (=> b!288050 m!373151))

(assert (=> b!288050 m!373153))

(assert (=> b!288050 m!373153))

(assert (=> b!288050 m!373155))

(assert (=> b!288050 m!373155))

(declare-fun m!373165 () Bool)

(assert (=> b!288050 m!373165))

(declare-fun m!373167 () Bool)

(assert (=> d!85311 m!373167))

(assert (=> d!85311 m!372683))

(assert (=> d!85311 m!372683))

(declare-fun m!373169 () Bool)

(assert (=> d!85311 m!373169))

(assert (=> d!85311 m!372683))

(assert (=> d!85311 m!372683))

(declare-fun m!373171 () Bool)

(assert (=> d!85311 m!373171))

(assert (=> d!85311 m!372499))

(assert (=> b!288049 m!373151))

(declare-fun m!373173 () Bool)

(assert (=> b!288049 m!373173))

(assert (=> b!288049 m!372683))

(declare-fun m!373175 () Bool)

(assert (=> b!288049 m!373175))

(assert (=> b!288048 m!373151))

(declare-fun m!373177 () Bool)

(assert (=> b!288048 m!373177))

(assert (=> b!288048 m!373177))

(declare-fun m!373179 () Bool)

(assert (=> b!288048 m!373179))

(assert (=> b!288045 m!372683))

(declare-fun m!373181 () Bool)

(assert (=> b!288045 m!373181))

(assert (=> b!287833 d!85311))

(declare-fun d!85313 () Bool)

(assert (=> d!85313 (= (get!1329 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))) (v!14810 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))

(assert (=> b!287833 d!85313))

(declare-fun d!85315 () Bool)

(assert (=> d!85315 (= (get!1331 lt!121205) (v!14811 lt!121205))))

(assert (=> b!287833 d!85315))

(declare-fun d!85317 () Bool)

(assert (=> d!85317 (= (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))) (list!1649 (c!54354 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))

(declare-fun bs!32527 () Bool)

(assert (= bs!32527 d!85317))

(declare-fun m!373183 () Bool)

(assert (=> bs!32527 m!373183))

(assert (=> b!287833 d!85317))

(declare-fun b!288062 () Bool)

(declare-fun res!131591 () Bool)

(declare-fun e!179331 () Bool)

(assert (=> b!288062 (=> (not res!131591) (not e!179331))))

(declare-fun ++!1054 (Conc!1332 Conc!1332) Conc!1332)

(assert (=> b!288062 (= res!131591 (isBalanced!377 (++!1054 (c!54354 call!16260) (c!54354 lt!121051))))))

(declare-fun b!288063 () Bool)

(declare-fun res!131592 () Bool)

(assert (=> b!288063 (=> (not res!131592) (not e!179331))))

(declare-fun height!166 (Conc!1332) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!288063 (= res!131592 (<= (height!166 (++!1054 (c!54354 call!16260) (c!54354 lt!121051))) (+ (max!0 (height!166 (c!54354 call!16260)) (height!166 (c!54354 lt!121051))) 1)))))

(declare-fun d!85319 () Bool)

(assert (=> d!85319 e!179331))

(declare-fun res!131589 () Bool)

(assert (=> d!85319 (=> (not res!131589) (not e!179331))))

(declare-fun appendAssocInst!69 (Conc!1332 Conc!1332) Bool)

(assert (=> d!85319 (= res!131589 (appendAssocInst!69 (c!54354 call!16260) (c!54354 lt!121051)))))

(declare-fun lt!121289 () BalanceConc!2672)

(assert (=> d!85319 (= lt!121289 (BalanceConc!2673 (++!1054 (c!54354 call!16260) (c!54354 lt!121051))))))

(assert (=> d!85319 (= (++!1052 call!16260 lt!121051) lt!121289)))

(declare-fun b!288064 () Bool)

(declare-fun res!131590 () Bool)

(assert (=> b!288064 (=> (not res!131590) (not e!179331))))

(assert (=> b!288064 (= res!131590 (>= (height!166 (++!1054 (c!54354 call!16260) (c!54354 lt!121051))) (max!0 (height!166 (c!54354 call!16260)) (height!166 (c!54354 lt!121051)))))))

(declare-fun b!288065 () Bool)

(assert (=> b!288065 (= e!179331 (= (list!1645 lt!121289) (++!1050 (list!1645 call!16260) (list!1645 lt!121051))))))

(assert (= (and d!85319 res!131589) b!288062))

(assert (= (and b!288062 res!131591) b!288063))

(assert (= (and b!288063 res!131592) b!288064))

(assert (= (and b!288064 res!131590) b!288065))

(declare-fun m!373185 () Bool)

(assert (=> d!85319 m!373185))

(declare-fun m!373187 () Bool)

(assert (=> d!85319 m!373187))

(declare-fun m!373189 () Bool)

(assert (=> b!288063 m!373189))

(declare-fun m!373191 () Bool)

(assert (=> b!288063 m!373191))

(assert (=> b!288063 m!373191))

(assert (=> b!288063 m!373189))

(declare-fun m!373193 () Bool)

(assert (=> b!288063 m!373193))

(assert (=> b!288063 m!373187))

(assert (=> b!288063 m!373187))

(declare-fun m!373195 () Bool)

(assert (=> b!288063 m!373195))

(declare-fun m!373197 () Bool)

(assert (=> b!288065 m!373197))

(declare-fun m!373199 () Bool)

(assert (=> b!288065 m!373199))

(assert (=> b!288065 m!372289))

(assert (=> b!288065 m!373199))

(assert (=> b!288065 m!372289))

(declare-fun m!373201 () Bool)

(assert (=> b!288065 m!373201))

(assert (=> b!288062 m!373187))

(assert (=> b!288062 m!373187))

(declare-fun m!373203 () Bool)

(assert (=> b!288062 m!373203))

(assert (=> b!288064 m!373189))

(assert (=> b!288064 m!373191))

(assert (=> b!288064 m!373191))

(assert (=> b!288064 m!373189))

(assert (=> b!288064 m!373193))

(assert (=> b!288064 m!373187))

(assert (=> b!288064 m!373187))

(assert (=> b!288064 m!373195))

(assert (=> b!287599 d!85319))

(declare-fun d!85321 () Bool)

(assert (=> d!85321 (forall!1016 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0) lambda!9871)))

(declare-fun lt!121302 () Unit!5300)

(declare-fun choose!2596 (List!3955 List!3955 Int) Unit!5300)

(assert (=> d!85321 (= lt!121302 (choose!2596 (list!1648 (seqFromList!876 (t!40183 tokens!465))) (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0) lambda!9871))))

(assert (=> d!85321 (forall!1016 (list!1648 (seqFromList!876 (t!40183 tokens!465))) lambda!9871)))

(assert (=> d!85321 (= (lemmaContentSubsetPreservesForall!126 (list!1648 (seqFromList!876 (t!40183 tokens!465))) (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0) lambda!9871) lt!121302)))

(declare-fun bs!32528 () Bool)

(assert (= bs!32528 d!85321))

(assert (=> bs!32528 m!372301))

(declare-fun m!373205 () Bool)

(assert (=> bs!32528 m!373205))

(assert (=> bs!32528 m!372269))

(assert (=> bs!32528 m!372301))

(declare-fun m!373207 () Bool)

(assert (=> bs!32528 m!373207))

(assert (=> bs!32528 m!372269))

(declare-fun m!373209 () Bool)

(assert (=> bs!32528 m!373209))

(assert (=> d!85101 d!85321))

(declare-fun bs!32529 () Bool)

(declare-fun b!288074 () Bool)

(assert (= bs!32529 (and b!288074 b!287862)))

(declare-fun lambda!9880 () Int)

(assert (=> bs!32529 (= lambda!9880 lambda!9878)))

(declare-fun bs!32530 () Bool)

(assert (= bs!32530 (and b!288074 b!287601)))

(assert (=> bs!32530 (= lambda!9880 lambda!9872)))

(declare-fun bs!32531 () Bool)

(assert (= bs!32531 (and b!288074 b!287521)))

(assert (=> bs!32531 (= lambda!9880 lambda!9860)))

(declare-fun bs!32532 () Bool)

(assert (= bs!32532 (and b!288074 b!287250)))

(assert (=> bs!32532 (= lambda!9880 lambda!9844)))

(declare-fun bs!32533 () Bool)

(assert (= bs!32533 (and b!288074 d!85003)))

(assert (=> bs!32533 (= lambda!9880 lambda!9854)))

(declare-fun bs!32534 () Bool)

(assert (= bs!32534 (and b!288074 b!287848)))

(assert (=> bs!32534 (= lambda!9880 lambda!9877)))

(declare-fun bs!32535 () Bool)

(assert (= bs!32535 (and b!288074 b!287244)))

(assert (=> bs!32535 (not (= lambda!9880 lambda!9843))))

(declare-fun bs!32536 () Bool)

(assert (= bs!32536 (and b!288074 d!85205)))

(assert (=> bs!32536 (not (= lambda!9880 lambda!9876))))

(declare-fun bs!32537 () Bool)

(assert (= bs!32537 (and b!288074 d!85101)))

(assert (=> bs!32537 (not (= lambda!9880 lambda!9871))))

(declare-fun b!288082 () Bool)

(declare-fun e!179341 () Bool)

(assert (=> b!288082 (= e!179341 true)))

(declare-fun b!288081 () Bool)

(declare-fun e!179340 () Bool)

(assert (=> b!288081 (= e!179340 e!179341)))

(declare-fun b!288080 () Bool)

(declare-fun e!179339 () Bool)

(assert (=> b!288080 (= e!179339 e!179340)))

(assert (=> b!288074 e!179339))

(assert (= b!288081 b!288082))

(assert (= b!288080 b!288081))

(assert (= (and b!288074 ((_ is Cons!3944) rules!1920)) b!288080))

(assert (=> b!288082 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9880))))

(assert (=> b!288082 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9880))))

(assert (=> b!288074 true))

(declare-fun b!288070 () Bool)

(declare-fun c!54510 () Bool)

(declare-fun lt!121305 () Option!870)

(assert (=> b!288070 (= c!54510 (and ((_ is Some!869) lt!121305) (not (= (_1!2457 (v!14810 lt!121305)) (h!9342 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0))))))))

(declare-fun e!179335 () List!3953)

(declare-fun e!179334 () List!3953)

(assert (=> b!288070 (= e!179335 e!179334)))

(declare-fun b!288071 () Bool)

(declare-fun e!179337 () List!3953)

(assert (=> b!288071 (= e!179337 Nil!3943)))

(declare-fun b!288072 () Bool)

(declare-fun e!179338 () BalanceConc!2672)

(declare-fun call!16304 () BalanceConc!2672)

(assert (=> b!288072 (= e!179338 call!16304)))

(declare-fun bm!16299 () Bool)

(declare-fun call!16305 () BalanceConc!2672)

(assert (=> bm!16299 (= call!16304 call!16305)))

(declare-fun bm!16300 () Bool)

(declare-fun call!16306 () List!3953)

(declare-fun c!54508 () Bool)

(assert (=> bm!16300 (= call!16306 (list!1645 (ite c!54508 call!16305 e!179338)))))

(declare-fun b!288073 () Bool)

(declare-fun call!16308 () List!3953)

(declare-fun lt!121307 () List!3953)

(assert (=> b!288073 (= e!179334 (++!1050 call!16308 lt!121307))))

(assert (=> b!288074 (= e!179337 e!179335)))

(declare-fun lt!121308 () Unit!5300)

(assert (=> b!288074 (= lt!121308 (forallContained!308 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0) lambda!9880 (h!9342 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0))))))

(assert (=> b!288074 (= lt!121307 (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (t!40183 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0)) separatorToken!170))))

(assert (=> b!288074 (= lt!121305 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 (charsOf!398 (h!9342 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0)))) lt!121307)))))

(assert (=> b!288074 (= c!54508 (and ((_ is Some!869) lt!121305) (= (_1!2457 (v!14810 lt!121305)) (h!9342 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0)))))))

(declare-fun b!288075 () Bool)

(declare-fun e!179336 () List!3953)

(assert (=> b!288075 (= e!179336 call!16306)))

(declare-fun bm!16301 () Bool)

(declare-fun call!16307 () List!3953)

(assert (=> bm!16301 (= call!16307 call!16306)))

(declare-fun c!54507 () Bool)

(assert (=> bm!16301 (= c!54507 c!54510)))

(declare-fun b!288076 () Bool)

(assert (=> b!288076 (= e!179334 Nil!3943)))

(assert (=> b!288076 (= (print!366 thiss!17480 (singletonSeq!301 (h!9342 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0)))) (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0))) 0 (BalanceConc!2673 Empty!1332)))))

(declare-fun lt!121306 () Unit!5300)

(declare-fun Unit!5320 () Unit!5300)

(assert (=> b!288076 (= lt!121306 Unit!5320)))

(declare-fun lt!121304 () Unit!5300)

(assert (=> b!288076 (= lt!121304 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 call!16307 lt!121307))))

(assert (=> b!288076 false))

(declare-fun lt!121303 () Unit!5300)

(declare-fun Unit!5321 () Unit!5300)

(assert (=> b!288076 (= lt!121303 Unit!5321)))

(declare-fun b!288077 () Bool)

(assert (=> b!288077 (= e!179335 call!16308)))

(declare-fun d!85323 () Bool)

(declare-fun c!54509 () Bool)

(assert (=> d!85323 (= c!54509 ((_ is Cons!3945) (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0)))))

(assert (=> d!85323 (= (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0) separatorToken!170) e!179337)))

(declare-fun bm!16302 () Bool)

(declare-fun c!54511 () Bool)

(assert (=> bm!16302 (= c!54511 c!54508)))

(assert (=> bm!16302 (= call!16308 (++!1050 e!179336 (ite c!54508 lt!121307 call!16307)))))

(declare-fun bm!16303 () Bool)

(assert (=> bm!16303 (= call!16305 (charsOf!398 (h!9342 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0))))))

(declare-fun b!288078 () Bool)

(assert (=> b!288078 (= e!179336 (list!1645 call!16304))))

(declare-fun b!288079 () Bool)

(assert (=> b!288079 (= e!179338 (charsOf!398 separatorToken!170))))

(assert (= (and d!85323 c!54509) b!288074))

(assert (= (and d!85323 (not c!54509)) b!288071))

(assert (= (and b!288074 c!54508) b!288077))

(assert (= (and b!288074 (not c!54508)) b!288070))

(assert (= (and b!288070 c!54510) b!288073))

(assert (= (and b!288070 (not c!54510)) b!288076))

(assert (= (or b!288073 b!288076) bm!16299))

(assert (= (or b!288073 b!288076) bm!16301))

(assert (= (and bm!16301 c!54507) b!288079))

(assert (= (and bm!16301 (not c!54507)) b!288072))

(assert (= (or b!288077 bm!16299) bm!16303))

(assert (= (or b!288077 bm!16301) bm!16300))

(assert (= (or b!288077 b!288073) bm!16302))

(assert (= (and bm!16302 c!54511) b!288075))

(assert (= (and bm!16302 (not c!54511)) b!288078))

(declare-fun m!373219 () Bool)

(assert (=> b!288076 m!373219))

(assert (=> b!288076 m!373219))

(declare-fun m!373221 () Bool)

(assert (=> b!288076 m!373221))

(assert (=> b!288076 m!373219))

(declare-fun m!373225 () Bool)

(assert (=> b!288076 m!373225))

(declare-fun m!373229 () Bool)

(assert (=> b!288076 m!373229))

(assert (=> b!288079 m!371743))

(declare-fun m!373231 () Bool)

(assert (=> bm!16302 m!373231))

(declare-fun m!373233 () Bool)

(assert (=> b!288074 m!373233))

(declare-fun m!373235 () Bool)

(assert (=> b!288074 m!373235))

(assert (=> b!288074 m!373233))

(assert (=> b!288074 m!373235))

(declare-fun m!373237 () Bool)

(assert (=> b!288074 m!373237))

(assert (=> b!288074 m!373237))

(declare-fun m!373239 () Bool)

(assert (=> b!288074 m!373239))

(assert (=> b!288074 m!372301))

(declare-fun m!373241 () Bool)

(assert (=> b!288074 m!373241))

(declare-fun m!373243 () Bool)

(assert (=> b!288074 m!373243))

(declare-fun m!373245 () Bool)

(assert (=> b!288078 m!373245))

(assert (=> bm!16303 m!373233))

(declare-fun m!373247 () Bool)

(assert (=> b!288073 m!373247))

(declare-fun m!373249 () Bool)

(assert (=> bm!16300 m!373249))

(assert (=> d!85101 d!85323))

(declare-fun d!85331 () Bool)

(assert (=> d!85331 (= (list!1645 lt!121042) (list!1649 (c!54354 lt!121042)))))

(declare-fun bs!32538 () Bool)

(assert (= bs!32538 d!85331))

(declare-fun m!373251 () Bool)

(assert (=> bs!32538 m!373251))

(assert (=> d!85101 d!85331))

(declare-fun d!85335 () Bool)

(declare-fun list!1650 (Conc!1333) List!3955)

(assert (=> d!85335 (= (dropList!182 (seqFromList!876 (t!40183 tokens!465)) 0) (drop!235 (list!1650 (c!54356 (seqFromList!876 (t!40183 tokens!465)))) 0))))

(declare-fun bs!32540 () Bool)

(assert (= bs!32540 d!85335))

(declare-fun m!373255 () Bool)

(assert (=> bs!32540 m!373255))

(assert (=> bs!32540 m!373255))

(declare-fun m!373257 () Bool)

(assert (=> bs!32540 m!373257))

(assert (=> d!85101 d!85335))

(declare-fun d!85339 () Bool)

(declare-fun lt!121320 () Int)

(declare-fun size!3164 (List!3955) Int)

(assert (=> d!85339 (= lt!121320 (size!3164 (list!1648 (seqFromList!876 (t!40183 tokens!465)))))))

(declare-fun size!3165 (Conc!1333) Int)

(assert (=> d!85339 (= lt!121320 (size!3165 (c!54356 (seqFromList!876 (t!40183 tokens!465)))))))

(assert (=> d!85339 (= (size!3161 (seqFromList!876 (t!40183 tokens!465))) lt!121320)))

(declare-fun bs!32542 () Bool)

(assert (= bs!32542 d!85339))

(assert (=> bs!32542 m!371737))

(assert (=> bs!32542 m!372269))

(assert (=> bs!32542 m!372269))

(declare-fun m!373263 () Bool)

(assert (=> bs!32542 m!373263))

(declare-fun m!373265 () Bool)

(assert (=> bs!32542 m!373265))

(assert (=> d!85101 d!85339))

(declare-fun d!85343 () Bool)

(assert (=> d!85343 (= (list!1648 (seqFromList!876 (t!40183 tokens!465))) (list!1650 (c!54356 (seqFromList!876 (t!40183 tokens!465)))))))

(declare-fun bs!32544 () Bool)

(assert (= bs!32544 d!85343))

(assert (=> bs!32544 m!373255))

(assert (=> d!85101 d!85343))

(declare-fun d!85347 () Bool)

(declare-fun c!54515 () Bool)

(assert (=> d!85347 (= c!54515 ((_ is Nil!3943) lt!121082))))

(declare-fun e!179346 () (InoxSet C!2880))

(assert (=> d!85347 (= (content!579 lt!121082) e!179346)))

(declare-fun b!288090 () Bool)

(assert (=> b!288090 (= e!179346 ((as const (Array C!2880 Bool)) false))))

(declare-fun b!288091 () Bool)

(assert (=> b!288091 (= e!179346 ((_ map or) (store ((as const (Array C!2880 Bool)) false) (h!9340 lt!121082) true) (content!579 (t!40181 lt!121082))))))

(assert (= (and d!85347 c!54515) b!288090))

(assert (= (and d!85347 (not c!54515)) b!288091))

(declare-fun m!373273 () Bool)

(assert (=> b!288091 m!373273))

(declare-fun m!373275 () Bool)

(assert (=> b!288091 m!373275))

(assert (=> d!85137 d!85347))

(declare-fun d!85351 () Bool)

(declare-fun c!54516 () Bool)

(assert (=> d!85351 (= c!54516 ((_ is Nil!3943) lt!120875))))

(declare-fun e!179347 () (InoxSet C!2880))

(assert (=> d!85351 (= (content!579 lt!120875) e!179347)))

(declare-fun b!288092 () Bool)

(assert (=> b!288092 (= e!179347 ((as const (Array C!2880 Bool)) false))))

(declare-fun b!288093 () Bool)

(assert (=> b!288093 (= e!179347 ((_ map or) (store ((as const (Array C!2880 Bool)) false) (h!9340 lt!120875) true) (content!579 (t!40181 lt!120875))))))

(assert (= (and d!85351 c!54516) b!288092))

(assert (= (and d!85351 (not c!54516)) b!288093))

(declare-fun m!373277 () Bool)

(assert (=> b!288093 m!373277))

(declare-fun m!373279 () Bool)

(assert (=> b!288093 m!373279))

(assert (=> d!85137 d!85351))

(declare-fun d!85353 () Bool)

(declare-fun c!54517 () Bool)

(assert (=> d!85353 (= c!54517 ((_ is Nil!3943) lt!120869))))

(declare-fun e!179348 () (InoxSet C!2880))

(assert (=> d!85353 (= (content!579 lt!120869) e!179348)))

(declare-fun b!288094 () Bool)

(assert (=> b!288094 (= e!179348 ((as const (Array C!2880 Bool)) false))))

(declare-fun b!288095 () Bool)

(assert (=> b!288095 (= e!179348 ((_ map or) (store ((as const (Array C!2880 Bool)) false) (h!9340 lt!120869) true) (content!579 (t!40181 lt!120869))))))

(assert (= (and d!85353 c!54517) b!288094))

(assert (= (and d!85353 (not c!54517)) b!288095))

(declare-fun m!373281 () Bool)

(assert (=> b!288095 m!373281))

(declare-fun m!373283 () Bool)

(assert (=> b!288095 m!373283))

(assert (=> d!85137 d!85353))

(declare-fun d!85355 () Bool)

(assert (=> d!85355 (= (list!1645 (ite c!54473 call!16289 e!179215)) (list!1649 (c!54354 (ite c!54473 call!16289 e!179215))))))

(declare-fun bs!32546 () Bool)

(assert (= bs!32546 d!85355))

(declare-fun m!373285 () Bool)

(assert (=> bs!32546 m!373285))

(assert (=> bm!16284 d!85355))

(declare-fun d!85357 () Bool)

(declare-fun lt!121324 () Token!1254)

(assert (=> d!85357 (= lt!121324 (apply!843 (list!1648 (seqFromList!876 (t!40183 tokens!465))) 0))))

(assert (=> d!85357 (= lt!121324 (apply!845 (c!54356 (seqFromList!876 (t!40183 tokens!465))) 0))))

(declare-fun e!179349 () Bool)

(assert (=> d!85357 e!179349))

(declare-fun res!131593 () Bool)

(assert (=> d!85357 (=> (not res!131593) (not e!179349))))

(assert (=> d!85357 (= res!131593 (<= 0 0))))

(assert (=> d!85357 (= (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0) lt!121324)))

(declare-fun b!288096 () Bool)

(assert (=> b!288096 (= e!179349 (< 0 (size!3161 (seqFromList!876 (t!40183 tokens!465)))))))

(assert (= (and d!85357 res!131593) b!288096))

(assert (=> d!85357 m!371737))

(assert (=> d!85357 m!372269))

(assert (=> d!85357 m!372269))

(declare-fun m!373287 () Bool)

(assert (=> d!85357 m!373287))

(declare-fun m!373289 () Bool)

(assert (=> d!85357 m!373289))

(assert (=> b!288096 m!371737))

(assert (=> b!288096 m!372285))

(assert (=> b!287604 d!85357))

(assert (=> b!287837 d!85315))

(declare-fun d!85359 () Bool)

(assert (=> d!85359 (= (get!1329 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))) (v!14810 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))

(assert (=> b!287837 d!85359))

(declare-fun d!85361 () Bool)

(declare-fun lt!121366 () Option!870)

(assert (=> d!85361 (= lt!121366 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))

(declare-fun e!179381 () Option!870)

(assert (=> d!85361 (= lt!121366 e!179381)))

(declare-fun c!54540 () Bool)

(assert (=> d!85361 (= c!54540 (and ((_ is Cons!3944) rules!1920) ((_ is Nil!3944) (t!40182 rules!1920))))))

(declare-fun lt!121364 () Unit!5300)

(declare-fun lt!121368 () Unit!5300)

(assert (=> d!85361 (= lt!121364 lt!121368)))

(assert (=> d!85361 (isPrefix!419 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (=> d!85361 (= lt!121368 (lemmaIsPrefixRefl!225 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))

(assert (=> d!85361 (rulesValidInductive!220 thiss!17480 rules!1920)))

(assert (=> d!85361 (= (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))) lt!121366)))

(declare-fun bm!16312 () Bool)

(declare-fun call!16317 () Option!870)

(declare-fun maxPrefixOneRuleZipper!38 (LexerInterface!641 Rule!1310 List!3953) Option!870)

(assert (=> bm!16312 (= call!16317 (maxPrefixOneRuleZipper!38 thiss!17480 (h!9341 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))

(declare-fun b!288151 () Bool)

(assert (=> b!288151 (= e!179381 call!16317)))

(declare-fun b!288152 () Bool)

(declare-fun lt!121367 () Option!870)

(declare-fun lt!121365 () Option!870)

(assert (=> b!288152 (= e!179381 (ite (and ((_ is None!869) lt!121367) ((_ is None!869) lt!121365)) None!869 (ite ((_ is None!869) lt!121365) lt!121367 (ite ((_ is None!869) lt!121367) lt!121365 (ite (>= (size!3157 (_1!2457 (v!14810 lt!121367))) (size!3157 (_1!2457 (v!14810 lt!121365)))) lt!121367 lt!121365)))))))

(assert (=> b!288152 (= lt!121367 call!16317)))

(assert (=> b!288152 (= lt!121365 (maxPrefixZipper!128 thiss!17480 (t!40182 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))

(assert (= (and d!85361 c!54540) b!288151))

(assert (= (and d!85361 (not c!54540)) b!288152))

(assert (= (or b!288151 b!288152) bm!16312))

(assert (=> d!85361 m!372683))

(assert (=> d!85361 m!372693))

(assert (=> d!85361 m!372683))

(assert (=> d!85361 m!372683))

(assert (=> d!85361 m!373169))

(assert (=> d!85361 m!372683))

(assert (=> d!85361 m!372683))

(assert (=> d!85361 m!373171))

(assert (=> d!85361 m!372499))

(assert (=> bm!16312 m!372683))

(declare-fun m!373419 () Bool)

(assert (=> bm!16312 m!373419))

(assert (=> b!288152 m!372683))

(declare-fun m!373421 () Bool)

(assert (=> b!288152 m!373421))

(assert (=> b!287837 d!85361))

(assert (=> b!287837 d!85317))

(declare-fun d!85417 () Bool)

(declare-fun lt!121371 () Bool)

(assert (=> d!85417 (= lt!121371 (isEmpty!2618 (list!1645 (_2!2459 lt!120924))))))

(declare-fun isEmpty!2623 (Conc!1332) Bool)

(assert (=> d!85417 (= lt!121371 (isEmpty!2623 (c!54354 (_2!2459 lt!120924))))))

(assert (=> d!85417 (= (isEmpty!2615 (_2!2459 lt!120924)) lt!121371)))

(declare-fun bs!32572 () Bool)

(assert (= bs!32572 d!85417))

(declare-fun m!373423 () Bool)

(assert (=> bs!32572 m!373423))

(assert (=> bs!32572 m!373423))

(declare-fun m!373425 () Bool)

(assert (=> bs!32572 m!373425))

(declare-fun m!373427 () Bool)

(assert (=> bs!32572 m!373427))

(assert (=> b!287445 d!85417))

(declare-fun d!85419 () Bool)

(declare-fun lt!121374 () Token!1254)

(assert (=> d!85419 (contains!770 lt!121046 lt!121374)))

(declare-fun e!179387 () Token!1254)

(assert (=> d!85419 (= lt!121374 e!179387)))

(declare-fun c!54543 () Bool)

(assert (=> d!85419 (= c!54543 (= 0 0))))

(declare-fun e!179386 () Bool)

(assert (=> d!85419 e!179386))

(declare-fun res!131603 () Bool)

(assert (=> d!85419 (=> (not res!131603) (not e!179386))))

(assert (=> d!85419 (= res!131603 (<= 0 0))))

(assert (=> d!85419 (= (apply!843 lt!121046 0) lt!121374)))

(declare-fun b!288159 () Bool)

(assert (=> b!288159 (= e!179386 (< 0 (size!3164 lt!121046)))))

(declare-fun b!288160 () Bool)

(assert (=> b!288160 (= e!179387 (head!930 lt!121046))))

(declare-fun b!288161 () Bool)

(assert (=> b!288161 (= e!179387 (apply!843 (tail!512 lt!121046) (- 0 1)))))

(assert (= (and d!85419 res!131603) b!288159))

(assert (= (and d!85419 c!54543) b!288160))

(assert (= (and d!85419 (not c!54543)) b!288161))

(declare-fun m!373429 () Bool)

(assert (=> d!85419 m!373429))

(declare-fun m!373431 () Bool)

(assert (=> b!288159 m!373431))

(declare-fun m!373433 () Bool)

(assert (=> b!288160 m!373433))

(declare-fun m!373435 () Bool)

(assert (=> b!288161 m!373435))

(assert (=> b!288161 m!373435))

(declare-fun m!373437 () Bool)

(assert (=> b!288161 m!373437))

(assert (=> b!287601 d!85419))

(declare-fun d!85421 () Bool)

(assert (=> d!85421 (= (tail!512 (drop!235 lt!121048 0)) (drop!235 lt!121048 (+ 0 1)))))

(declare-fun lt!121377 () Unit!5300)

(declare-fun choose!2597 (List!3955 Int) Unit!5300)

(assert (=> d!85421 (= lt!121377 (choose!2597 lt!121048 0))))

(declare-fun e!179390 () Bool)

(assert (=> d!85421 e!179390))

(declare-fun res!131606 () Bool)

(assert (=> d!85421 (=> (not res!131606) (not e!179390))))

(assert (=> d!85421 (= res!131606 (>= 0 0))))

(assert (=> d!85421 (= (lemmaDropTail!214 lt!121048 0) lt!121377)))

(declare-fun b!288164 () Bool)

(assert (=> b!288164 (= e!179390 (< 0 (size!3164 lt!121048)))))

(assert (= (and d!85421 res!131606) b!288164))

(assert (=> d!85421 m!372261))

(assert (=> d!85421 m!372261))

(assert (=> d!85421 m!372263))

(assert (=> d!85421 m!372275))

(declare-fun m!373439 () Bool)

(assert (=> d!85421 m!373439))

(declare-fun m!373441 () Bool)

(assert (=> b!288164 m!373441))

(assert (=> b!287601 d!85421))

(declare-fun call!16318 () Option!871)

(declare-fun bm!16313 () Bool)

(assert (=> bm!16313 (= call!16318 (maxPrefixOneRuleZipperSequence!129 thiss!17480 (h!9341 rules!1920) (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051)))))

(declare-fun d!85423 () Bool)

(declare-fun e!179393 () Bool)

(assert (=> d!85423 e!179393))

(declare-fun res!131612 () Bool)

(assert (=> d!85423 (=> (not res!131612) (not e!179393))))

(declare-fun lt!121382 () Option!871)

(assert (=> d!85423 (= res!131612 (= (isDefined!710 lt!121382) (isDefined!709 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051))))))))

(declare-fun e!179394 () Option!871)

(assert (=> d!85423 (= lt!121382 e!179394)))

(declare-fun c!54544 () Bool)

(assert (=> d!85423 (= c!54544 (and ((_ is Cons!3944) rules!1920) ((_ is Nil!3944) (t!40182 rules!1920))))))

(declare-fun lt!121380 () Unit!5300)

(declare-fun lt!121378 () Unit!5300)

(assert (=> d!85423 (= lt!121380 lt!121378)))

(declare-fun lt!121384 () List!3953)

(declare-fun lt!121381 () List!3953)

(assert (=> d!85423 (isPrefix!419 lt!121384 lt!121381)))

(assert (=> d!85423 (= lt!121378 (lemmaIsPrefixRefl!225 lt!121384 lt!121381))))

(assert (=> d!85423 (= lt!121381 (list!1645 (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051)))))

(assert (=> d!85423 (= lt!121384 (list!1645 (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051)))))

(assert (=> d!85423 (rulesValidInductive!220 thiss!17480 rules!1920)))

(assert (=> d!85423 (= (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051)) lt!121382)))

(declare-fun b!288165 () Bool)

(declare-fun lt!121379 () Option!871)

(declare-fun lt!121383 () Option!871)

(assert (=> b!288165 (= e!179394 (ite (and ((_ is None!870) lt!121379) ((_ is None!870) lt!121383)) None!870 (ite ((_ is None!870) lt!121383) lt!121379 (ite ((_ is None!870) lt!121379) lt!121383 (ite (>= (size!3157 (_1!2458 (v!14811 lt!121379))) (size!3157 (_1!2458 (v!14811 lt!121383)))) lt!121379 lt!121383)))))))

(assert (=> b!288165 (= lt!121379 call!16318)))

(assert (=> b!288165 (= lt!121383 (maxPrefixZipperSequence!320 thiss!17480 (t!40182 rules!1920) (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051)))))

(declare-fun b!288166 () Bool)

(assert (=> b!288166 (= e!179394 call!16318)))

(declare-fun e!179395 () Bool)

(declare-fun b!288167 () Bool)

(assert (=> b!288167 (= e!179395 (= (list!1645 (_2!2458 (get!1331 lt!121382))) (_2!2457 (get!1329 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051)))))))))

(declare-fun b!288168 () Bool)

(declare-fun e!179396 () Bool)

(assert (=> b!288168 (= e!179396 e!179395)))

(declare-fun res!131611 () Bool)

(assert (=> b!288168 (=> (not res!131611) (not e!179395))))

(assert (=> b!288168 (= res!131611 (= (_1!2458 (get!1331 lt!121382)) (_1!2457 (get!1329 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051)))))))))

(declare-fun b!288169 () Bool)

(assert (=> b!288169 (= e!179393 e!179396)))

(declare-fun res!131609 () Bool)

(assert (=> b!288169 (=> res!131609 e!179396)))

(assert (=> b!288169 (= res!131609 (not (isDefined!710 lt!121382)))))

(declare-fun b!288170 () Bool)

(declare-fun res!131607 () Bool)

(assert (=> b!288170 (=> (not res!131607) (not e!179393))))

(declare-fun e!179391 () Bool)

(assert (=> b!288170 (= res!131607 e!179391)))

(declare-fun res!131608 () Bool)

(assert (=> b!288170 (=> res!131608 e!179391)))

(assert (=> b!288170 (= res!131608 (not (isDefined!710 lt!121382)))))

(declare-fun b!288171 () Bool)

(declare-fun e!179392 () Bool)

(assert (=> b!288171 (= e!179391 e!179392)))

(declare-fun res!131610 () Bool)

(assert (=> b!288171 (=> (not res!131610) (not e!179392))))

(assert (=> b!288171 (= res!131610 (= (_1!2458 (get!1331 lt!121382)) (_1!2457 (get!1329 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051)))))))))

(declare-fun b!288172 () Bool)

(assert (=> b!288172 (= e!179392 (= (list!1645 (_2!2458 (get!1331 lt!121382))) (_2!2457 (get!1329 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051)))))))))

(assert (= (and d!85423 c!54544) b!288166))

(assert (= (and d!85423 (not c!54544)) b!288165))

(assert (= (or b!288166 b!288165) bm!16313))

(assert (= (and d!85423 res!131612) b!288170))

(assert (= (and b!288170 (not res!131608)) b!288171))

(assert (= (and b!288171 res!131610) b!288172))

(assert (= (and b!288170 res!131607) b!288169))

(assert (= (and b!288169 (not res!131609)) b!288168))

(assert (= (and b!288168 res!131611) b!288167))

(declare-fun m!373443 () Bool)

(assert (=> b!288169 m!373443))

(assert (=> d!85423 m!372499))

(declare-fun m!373445 () Bool)

(assert (=> d!85423 m!373445))

(declare-fun m!373447 () Bool)

(assert (=> d!85423 m!373447))

(declare-fun m!373449 () Bool)

(assert (=> d!85423 m!373449))

(assert (=> d!85423 m!373445))

(declare-fun m!373451 () Bool)

(assert (=> d!85423 m!373451))

(assert (=> d!85423 m!373443))

(assert (=> d!85423 m!372259))

(assert (=> d!85423 m!373449))

(declare-fun m!373453 () Bool)

(assert (=> d!85423 m!373453))

(assert (=> bm!16313 m!372259))

(declare-fun m!373455 () Bool)

(assert (=> bm!16313 m!373455))

(declare-fun m!373457 () Bool)

(assert (=> b!288168 m!373457))

(assert (=> b!288168 m!372259))

(assert (=> b!288168 m!373449))

(assert (=> b!288168 m!373449))

(declare-fun m!373459 () Bool)

(assert (=> b!288168 m!373459))

(assert (=> b!288168 m!373459))

(declare-fun m!373461 () Bool)

(assert (=> b!288168 m!373461))

(assert (=> b!288165 m!372259))

(declare-fun m!373463 () Bool)

(assert (=> b!288165 m!373463))

(assert (=> b!288167 m!373449))

(assert (=> b!288167 m!373459))

(assert (=> b!288167 m!372259))

(assert (=> b!288167 m!373449))

(assert (=> b!288167 m!373459))

(assert (=> b!288167 m!373461))

(declare-fun m!373465 () Bool)

(assert (=> b!288167 m!373465))

(assert (=> b!288167 m!373457))

(assert (=> b!288170 m!373443))

(assert (=> b!288172 m!373449))

(assert (=> b!288172 m!373445))

(assert (=> b!288172 m!372259))

(assert (=> b!288172 m!373449))

(assert (=> b!288172 m!373465))

(assert (=> b!288172 m!373457))

(assert (=> b!288172 m!373445))

(declare-fun m!373467 () Bool)

(assert (=> b!288172 m!373467))

(assert (=> b!288171 m!373457))

(assert (=> b!288171 m!372259))

(assert (=> b!288171 m!373449))

(assert (=> b!288171 m!373449))

(assert (=> b!288171 m!373445))

(assert (=> b!288171 m!373445))

(assert (=> b!288171 m!373467))

(assert (=> b!287601 d!85423))

(declare-fun d!85425 () Bool)

(assert (=> d!85425 (dynLambda!2094 lambda!9872 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))

(declare-fun lt!121385 () Unit!5300)

(assert (=> d!85425 (= lt!121385 (choose!2594 (list!1648 (seqFromList!876 (t!40183 tokens!465))) lambda!9872 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))))

(declare-fun e!179397 () Bool)

(assert (=> d!85425 e!179397))

(declare-fun res!131613 () Bool)

(assert (=> d!85425 (=> (not res!131613) (not e!179397))))

(assert (=> d!85425 (= res!131613 (forall!1016 (list!1648 (seqFromList!876 (t!40183 tokens!465))) lambda!9872))))

(assert (=> d!85425 (= (forallContained!308 (list!1648 (seqFromList!876 (t!40183 tokens!465))) lambda!9872 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121385)))

(declare-fun b!288173 () Bool)

(assert (=> b!288173 (= e!179397 (contains!770 (list!1648 (seqFromList!876 (t!40183 tokens!465))) (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))))

(assert (= (and d!85425 res!131613) b!288173))

(declare-fun b_lambda!9575 () Bool)

(assert (=> (not b_lambda!9575) (not d!85425)))

(assert (=> d!85425 m!372273))

(declare-fun m!373469 () Bool)

(assert (=> d!85425 m!373469))

(assert (=> d!85425 m!372269))

(assert (=> d!85425 m!372273))

(declare-fun m!373471 () Bool)

(assert (=> d!85425 m!373471))

(assert (=> d!85425 m!372269))

(declare-fun m!373473 () Bool)

(assert (=> d!85425 m!373473))

(assert (=> b!288173 m!372269))

(assert (=> b!288173 m!372273))

(declare-fun m!373475 () Bool)

(assert (=> b!288173 m!373475))

(assert (=> b!287601 d!85425))

(assert (=> b!287601 d!85343))

(declare-fun b!288192 () Bool)

(declare-fun e!179412 () List!3955)

(assert (=> b!288192 (= e!179412 (drop!235 (t!40183 lt!121046) (- 0 1)))))

(declare-fun b!288193 () Bool)

(declare-fun e!179410 () List!3955)

(assert (=> b!288193 (= e!179410 Nil!3945)))

(declare-fun b!288194 () Bool)

(assert (=> b!288194 (= e!179412 lt!121046)))

(declare-fun b!288195 () Bool)

(declare-fun e!179409 () Int)

(declare-fun call!16321 () Int)

(assert (=> b!288195 (= e!179409 (- call!16321 0))))

(declare-fun bm!16316 () Bool)

(assert (=> bm!16316 (= call!16321 (size!3164 lt!121046))))

(declare-fun b!288196 () Bool)

(declare-fun e!179411 () Int)

(assert (=> b!288196 (= e!179411 e!179409)))

(declare-fun c!54553 () Bool)

(assert (=> b!288196 (= c!54553 (>= 0 call!16321))))

(declare-fun d!85427 () Bool)

(declare-fun e!179408 () Bool)

(assert (=> d!85427 e!179408))

(declare-fun res!131616 () Bool)

(assert (=> d!85427 (=> (not res!131616) (not e!179408))))

(declare-fun lt!121388 () List!3955)

(declare-fun content!580 (List!3955) (InoxSet Token!1254))

(assert (=> d!85427 (= res!131616 (= ((_ map implies) (content!580 lt!121388) (content!580 lt!121046)) ((as const (InoxSet Token!1254)) true)))))

(assert (=> d!85427 (= lt!121388 e!179410)))

(declare-fun c!54556 () Bool)

(assert (=> d!85427 (= c!54556 ((_ is Nil!3945) lt!121046))))

(assert (=> d!85427 (= (drop!235 lt!121046 0) lt!121388)))

(declare-fun b!288197 () Bool)

(assert (=> b!288197 (= e!179409 0)))

(declare-fun b!288198 () Bool)

(assert (=> b!288198 (= e!179410 e!179412)))

(declare-fun c!54554 () Bool)

(assert (=> b!288198 (= c!54554 (<= 0 0))))

(declare-fun b!288199 () Bool)

(assert (=> b!288199 (= e!179408 (= (size!3164 lt!121388) e!179411))))

(declare-fun c!54555 () Bool)

(assert (=> b!288199 (= c!54555 (<= 0 0))))

(declare-fun b!288200 () Bool)

(assert (=> b!288200 (= e!179411 call!16321)))

(assert (= (and d!85427 c!54556) b!288193))

(assert (= (and d!85427 (not c!54556)) b!288198))

(assert (= (and b!288198 c!54554) b!288194))

(assert (= (and b!288198 (not c!54554)) b!288192))

(assert (= (and d!85427 res!131616) b!288199))

(assert (= (and b!288199 c!54555) b!288200))

(assert (= (and b!288199 (not c!54555)) b!288196))

(assert (= (and b!288196 c!54553) b!288197))

(assert (= (and b!288196 (not c!54553)) b!288195))

(assert (= (or b!288200 b!288196 b!288195) bm!16316))

(declare-fun m!373477 () Bool)

(assert (=> b!288192 m!373477))

(assert (=> bm!16316 m!373431))

(declare-fun m!373479 () Bool)

(assert (=> d!85427 m!373479))

(declare-fun m!373481 () Bool)

(assert (=> d!85427 m!373481))

(declare-fun m!373483 () Bool)

(assert (=> b!288199 m!373483))

(assert (=> b!287601 d!85427))

(declare-fun b!288201 () Bool)

(declare-fun e!179417 () List!3955)

(assert (=> b!288201 (= e!179417 (drop!235 (t!40183 lt!121048) (- (+ 0 1) 1)))))

(declare-fun b!288202 () Bool)

(declare-fun e!179415 () List!3955)

(assert (=> b!288202 (= e!179415 Nil!3945)))

(declare-fun b!288203 () Bool)

(assert (=> b!288203 (= e!179417 lt!121048)))

(declare-fun b!288204 () Bool)

(declare-fun e!179414 () Int)

(declare-fun call!16322 () Int)

(assert (=> b!288204 (= e!179414 (- call!16322 (+ 0 1)))))

(declare-fun bm!16317 () Bool)

(assert (=> bm!16317 (= call!16322 (size!3164 lt!121048))))

(declare-fun b!288205 () Bool)

(declare-fun e!179416 () Int)

(assert (=> b!288205 (= e!179416 e!179414)))

(declare-fun c!54557 () Bool)

(assert (=> b!288205 (= c!54557 (>= (+ 0 1) call!16322))))

(declare-fun d!85429 () Bool)

(declare-fun e!179413 () Bool)

(assert (=> d!85429 e!179413))

(declare-fun res!131617 () Bool)

(assert (=> d!85429 (=> (not res!131617) (not e!179413))))

(declare-fun lt!121389 () List!3955)

(assert (=> d!85429 (= res!131617 (= ((_ map implies) (content!580 lt!121389) (content!580 lt!121048)) ((as const (InoxSet Token!1254)) true)))))

(assert (=> d!85429 (= lt!121389 e!179415)))

(declare-fun c!54560 () Bool)

(assert (=> d!85429 (= c!54560 ((_ is Nil!3945) lt!121048))))

(assert (=> d!85429 (= (drop!235 lt!121048 (+ 0 1)) lt!121389)))

(declare-fun b!288206 () Bool)

(assert (=> b!288206 (= e!179414 0)))

(declare-fun b!288207 () Bool)

(assert (=> b!288207 (= e!179415 e!179417)))

(declare-fun c!54558 () Bool)

(assert (=> b!288207 (= c!54558 (<= (+ 0 1) 0))))

(declare-fun b!288208 () Bool)

(assert (=> b!288208 (= e!179413 (= (size!3164 lt!121389) e!179416))))

(declare-fun c!54559 () Bool)

(assert (=> b!288208 (= c!54559 (<= (+ 0 1) 0))))

(declare-fun b!288209 () Bool)

(assert (=> b!288209 (= e!179416 call!16322)))

(assert (= (and d!85429 c!54560) b!288202))

(assert (= (and d!85429 (not c!54560)) b!288207))

(assert (= (and b!288207 c!54558) b!288203))

(assert (= (and b!288207 (not c!54558)) b!288201))

(assert (= (and d!85429 res!131617) b!288208))

(assert (= (and b!288208 c!54559) b!288209))

(assert (= (and b!288208 (not c!54559)) b!288205))

(assert (= (and b!288205 c!54557) b!288206))

(assert (= (and b!288205 (not c!54557)) b!288204))

(assert (= (or b!288209 b!288205 b!288204) bm!16317))

(declare-fun m!373485 () Bool)

(assert (=> b!288201 m!373485))

(assert (=> bm!16317 m!373441))

(declare-fun m!373487 () Bool)

(assert (=> d!85429 m!373487))

(declare-fun m!373489 () Bool)

(assert (=> d!85429 m!373489))

(declare-fun m!373491 () Bool)

(assert (=> b!288208 m!373491))

(assert (=> b!287601 d!85429))

(declare-fun d!85431 () Bool)

(assert (=> d!85431 (= (head!930 (drop!235 lt!121046 0)) (apply!843 lt!121046 0))))

(declare-fun lt!121392 () Unit!5300)

(declare-fun choose!2598 (List!3955 Int) Unit!5300)

(assert (=> d!85431 (= lt!121392 (choose!2598 lt!121046 0))))

(declare-fun e!179420 () Bool)

(assert (=> d!85431 e!179420))

(declare-fun res!131620 () Bool)

(assert (=> d!85431 (=> (not res!131620) (not e!179420))))

(assert (=> d!85431 (= res!131620 (>= 0 0))))

(assert (=> d!85431 (= (lemmaDropApply!222 lt!121046 0) lt!121392)))

(declare-fun b!288212 () Bool)

(assert (=> b!288212 (= e!179420 (< 0 (size!3164 lt!121046)))))

(assert (= (and d!85431 res!131620) b!288212))

(assert (=> d!85431 m!372265))

(assert (=> d!85431 m!372265))

(assert (=> d!85431 m!372267))

(assert (=> d!85431 m!372255))

(declare-fun m!373493 () Bool)

(assert (=> d!85431 m!373493))

(assert (=> b!288212 m!373431))

(assert (=> b!287601 d!85431))

(declare-fun b!288213 () Bool)

(declare-fun e!179425 () List!3955)

(assert (=> b!288213 (= e!179425 (drop!235 (t!40183 lt!121048) (- 0 1)))))

(declare-fun b!288214 () Bool)

(declare-fun e!179423 () List!3955)

(assert (=> b!288214 (= e!179423 Nil!3945)))

(declare-fun b!288215 () Bool)

(assert (=> b!288215 (= e!179425 lt!121048)))

(declare-fun b!288216 () Bool)

(declare-fun e!179422 () Int)

(declare-fun call!16323 () Int)

(assert (=> b!288216 (= e!179422 (- call!16323 0))))

(declare-fun bm!16318 () Bool)

(assert (=> bm!16318 (= call!16323 (size!3164 lt!121048))))

(declare-fun b!288217 () Bool)

(declare-fun e!179424 () Int)

(assert (=> b!288217 (= e!179424 e!179422)))

(declare-fun c!54561 () Bool)

(assert (=> b!288217 (= c!54561 (>= 0 call!16323))))

(declare-fun d!85433 () Bool)

(declare-fun e!179421 () Bool)

(assert (=> d!85433 e!179421))

(declare-fun res!131621 () Bool)

(assert (=> d!85433 (=> (not res!131621) (not e!179421))))

(declare-fun lt!121393 () List!3955)

(assert (=> d!85433 (= res!131621 (= ((_ map implies) (content!580 lt!121393) (content!580 lt!121048)) ((as const (InoxSet Token!1254)) true)))))

(assert (=> d!85433 (= lt!121393 e!179423)))

(declare-fun c!54564 () Bool)

(assert (=> d!85433 (= c!54564 ((_ is Nil!3945) lt!121048))))

(assert (=> d!85433 (= (drop!235 lt!121048 0) lt!121393)))

(declare-fun b!288218 () Bool)

(assert (=> b!288218 (= e!179422 0)))

(declare-fun b!288219 () Bool)

(assert (=> b!288219 (= e!179423 e!179425)))

(declare-fun c!54562 () Bool)

(assert (=> b!288219 (= c!54562 (<= 0 0))))

(declare-fun b!288220 () Bool)

(assert (=> b!288220 (= e!179421 (= (size!3164 lt!121393) e!179424))))

(declare-fun c!54563 () Bool)

(assert (=> b!288220 (= c!54563 (<= 0 0))))

(declare-fun b!288221 () Bool)

(assert (=> b!288221 (= e!179424 call!16323)))

(assert (= (and d!85433 c!54564) b!288214))

(assert (= (and d!85433 (not c!54564)) b!288219))

(assert (= (and b!288219 c!54562) b!288215))

(assert (= (and b!288219 (not c!54562)) b!288213))

(assert (= (and d!85433 res!131621) b!288220))

(assert (= (and b!288220 c!54563) b!288221))

(assert (= (and b!288220 (not c!54563)) b!288217))

(assert (= (and b!288217 c!54561) b!288218))

(assert (= (and b!288217 (not c!54561)) b!288216))

(assert (= (or b!288221 b!288217 b!288216) bm!16318))

(declare-fun m!373495 () Bool)

(assert (=> b!288213 m!373495))

(assert (=> bm!16318 m!373441))

(declare-fun m!373497 () Bool)

(assert (=> d!85433 m!373497))

(assert (=> d!85433 m!373489))

(declare-fun m!373499 () Bool)

(assert (=> b!288220 m!373499))

(assert (=> b!287601 d!85433))

(declare-fun bs!32573 () Bool)

(declare-fun d!85435 () Bool)

(assert (= bs!32573 (and d!85435 b!287862)))

(declare-fun lambda!9882 () Int)

(assert (=> bs!32573 (not (= lambda!9882 lambda!9878))))

(declare-fun bs!32574 () Bool)

(assert (= bs!32574 (and d!85435 b!288074)))

(assert (=> bs!32574 (not (= lambda!9882 lambda!9880))))

(declare-fun bs!32575 () Bool)

(assert (= bs!32575 (and d!85435 b!287601)))

(assert (=> bs!32575 (not (= lambda!9882 lambda!9872))))

(declare-fun bs!32576 () Bool)

(assert (= bs!32576 (and d!85435 b!287521)))

(assert (=> bs!32576 (not (= lambda!9882 lambda!9860))))

(declare-fun bs!32577 () Bool)

(assert (= bs!32577 (and d!85435 b!287250)))

(assert (=> bs!32577 (not (= lambda!9882 lambda!9844))))

(declare-fun bs!32578 () Bool)

(assert (= bs!32578 (and d!85435 d!85003)))

(assert (=> bs!32578 (not (= lambda!9882 lambda!9854))))

(declare-fun bs!32579 () Bool)

(assert (= bs!32579 (and d!85435 b!287848)))

(assert (=> bs!32579 (not (= lambda!9882 lambda!9877))))

(declare-fun bs!32580 () Bool)

(assert (= bs!32580 (and d!85435 b!287244)))

(assert (=> bs!32580 (= lambda!9882 lambda!9843)))

(declare-fun bs!32581 () Bool)

(assert (= bs!32581 (and d!85435 d!85205)))

(assert (=> bs!32581 (= lambda!9882 lambda!9876)))

(declare-fun bs!32582 () Bool)

(assert (= bs!32582 (and d!85435 d!85101)))

(assert (=> bs!32582 (= lambda!9882 lambda!9871)))

(declare-fun bs!32583 () Bool)

(declare-fun b!288224 () Bool)

(assert (= bs!32583 (and b!288224 b!287862)))

(declare-fun lambda!9883 () Int)

(assert (=> bs!32583 (= lambda!9883 lambda!9878)))

(declare-fun bs!32584 () Bool)

(assert (= bs!32584 (and b!288224 b!288074)))

(assert (=> bs!32584 (= lambda!9883 lambda!9880)))

(declare-fun bs!32585 () Bool)

(assert (= bs!32585 (and b!288224 d!85435)))

(assert (=> bs!32585 (not (= lambda!9883 lambda!9882))))

(declare-fun bs!32586 () Bool)

(assert (= bs!32586 (and b!288224 b!287601)))

(assert (=> bs!32586 (= lambda!9883 lambda!9872)))

(declare-fun bs!32587 () Bool)

(assert (= bs!32587 (and b!288224 b!287521)))

(assert (=> bs!32587 (= lambda!9883 lambda!9860)))

(declare-fun bs!32588 () Bool)

(assert (= bs!32588 (and b!288224 b!287250)))

(assert (=> bs!32588 (= lambda!9883 lambda!9844)))

(declare-fun bs!32589 () Bool)

(assert (= bs!32589 (and b!288224 d!85003)))

(assert (=> bs!32589 (= lambda!9883 lambda!9854)))

(declare-fun bs!32590 () Bool)

(assert (= bs!32590 (and b!288224 b!287848)))

(assert (=> bs!32590 (= lambda!9883 lambda!9877)))

(declare-fun bs!32591 () Bool)

(assert (= bs!32591 (and b!288224 b!287244)))

(assert (=> bs!32591 (not (= lambda!9883 lambda!9843))))

(declare-fun bs!32592 () Bool)

(assert (= bs!32592 (and b!288224 d!85205)))

(assert (=> bs!32592 (not (= lambda!9883 lambda!9876))))

(declare-fun bs!32593 () Bool)

(assert (= bs!32593 (and b!288224 d!85101)))

(assert (=> bs!32593 (not (= lambda!9883 lambda!9871))))

(declare-fun b!288233 () Bool)

(declare-fun e!179434 () Bool)

(assert (=> b!288233 (= e!179434 true)))

(declare-fun b!288232 () Bool)

(declare-fun e!179433 () Bool)

(assert (=> b!288232 (= e!179433 e!179434)))

(declare-fun b!288231 () Bool)

(declare-fun e!179432 () Bool)

(assert (=> b!288231 (= e!179432 e!179433)))

(assert (=> b!288224 e!179432))

(assert (= b!288232 b!288233))

(assert (= b!288231 b!288232))

(assert (= (and b!288224 ((_ is Cons!3944) rules!1920)) b!288231))

(assert (=> b!288233 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9883))))

(assert (=> b!288233 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9883))))

(assert (=> b!288224 true))

(declare-fun b!288222 () Bool)

(declare-fun e!179429 () BalanceConc!2672)

(declare-fun call!16325 () BalanceConc!2672)

(declare-fun lt!121404 () BalanceConc!2672)

(assert (=> b!288222 (= e!179429 (++!1052 call!16325 lt!121404))))

(declare-fun bm!16319 () Bool)

(declare-fun call!16327 () Token!1254)

(assert (=> bm!16319 (= call!16327 (apply!840 (seqFromList!876 (t!40183 tokens!465)) (+ 0 1)))))

(declare-fun b!288223 () Bool)

(declare-fun e!179428 () Bool)

(declare-fun lt!121396 () Option!871)

(assert (=> b!288223 (= e!179428 (not (= (_1!2458 (v!14811 lt!121396)) call!16327)))))

(declare-fun lt!121395 () BalanceConc!2672)

(assert (=> d!85435 (= (list!1645 lt!121395) (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (dropList!182 (seqFromList!876 (t!40183 tokens!465)) (+ 0 1)) separatorToken!170))))

(declare-fun e!179427 () BalanceConc!2672)

(assert (=> d!85435 (= lt!121395 e!179427)))

(declare-fun c!54565 () Bool)

(assert (=> d!85435 (= c!54565 (>= (+ 0 1) (size!3161 (seqFromList!876 (t!40183 tokens!465)))))))

(declare-fun lt!121398 () Unit!5300)

(assert (=> d!85435 (= lt!121398 (lemmaContentSubsetPreservesForall!126 (list!1648 (seqFromList!876 (t!40183 tokens!465))) (dropList!182 (seqFromList!876 (t!40183 tokens!465)) (+ 0 1)) lambda!9882))))

(declare-fun e!179430 () Bool)

(assert (=> d!85435 e!179430))

(declare-fun res!131623 () Bool)

(assert (=> d!85435 (=> (not res!131623) (not e!179430))))

(assert (=> d!85435 (= res!131623 (>= (+ 0 1) 0))))

(assert (=> d!85435 (= (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 (+ 0 1)) lt!121395)))

(declare-fun call!16324 () BalanceConc!2672)

(declare-fun call!16328 () Token!1254)

(declare-fun bm!16320 () Bool)

(declare-fun c!54567 () Bool)

(assert (=> bm!16320 (= call!16324 (charsOf!398 (ite c!54567 separatorToken!170 call!16328)))))

(declare-fun e!179426 () BalanceConc!2672)

(assert (=> b!288224 (= e!179427 e!179426)))

(declare-fun lt!121399 () List!3955)

(assert (=> b!288224 (= lt!121399 (list!1648 (seqFromList!876 (t!40183 tokens!465))))))

(declare-fun lt!121402 () Unit!5300)

(assert (=> b!288224 (= lt!121402 (lemmaDropApply!222 lt!121399 (+ 0 1)))))

(assert (=> b!288224 (= (head!930 (drop!235 lt!121399 (+ 0 1))) (apply!843 lt!121399 (+ 0 1)))))

(declare-fun lt!121394 () Unit!5300)

(assert (=> b!288224 (= lt!121394 lt!121402)))

(declare-fun lt!121401 () List!3955)

(assert (=> b!288224 (= lt!121401 (list!1648 (seqFromList!876 (t!40183 tokens!465))))))

(declare-fun lt!121403 () Unit!5300)

(assert (=> b!288224 (= lt!121403 (lemmaDropTail!214 lt!121401 (+ 0 1)))))

(assert (=> b!288224 (= (tail!512 (drop!235 lt!121401 (+ 0 1))) (drop!235 lt!121401 (+ 0 1 1)))))

(declare-fun lt!121397 () Unit!5300)

(assert (=> b!288224 (= lt!121397 lt!121403)))

(declare-fun lt!121405 () Unit!5300)

(assert (=> b!288224 (= lt!121405 (forallContained!308 (list!1648 (seqFromList!876 (t!40183 tokens!465))) lambda!9883 (apply!840 (seqFromList!876 (t!40183 tokens!465)) (+ 0 1))))))

(assert (=> b!288224 (= lt!121404 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 (+ 0 1 1)))))

(assert (=> b!288224 (= lt!121396 (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) (+ 0 1))) lt!121404)))))

(declare-fun res!131624 () Bool)

(assert (=> b!288224 (= res!131624 ((_ is Some!870) lt!121396))))

(declare-fun e!179431 () Bool)

(assert (=> b!288224 (=> (not res!131624) (not e!179431))))

(declare-fun c!54566 () Bool)

(assert (=> b!288224 (= c!54566 e!179431)))

(declare-fun call!16326 () BalanceConc!2672)

(declare-fun bm!16321 () Bool)

(assert (=> bm!16321 (= call!16325 (++!1052 call!16326 (ite c!54566 lt!121404 call!16324)))))

(declare-fun b!288225 () Bool)

(assert (=> b!288225 (= c!54567 e!179428)))

(declare-fun res!131622 () Bool)

(assert (=> b!288225 (=> (not res!131622) (not e!179428))))

(assert (=> b!288225 (= res!131622 ((_ is Some!870) lt!121396))))

(assert (=> b!288225 (= e!179426 e!179429)))

(declare-fun b!288226 () Bool)

(assert (=> b!288226 (= e!179426 call!16325)))

(declare-fun b!288227 () Bool)

(assert (=> b!288227 (= e!179431 (= (_1!2458 (v!14811 lt!121396)) (apply!840 (seqFromList!876 (t!40183 tokens!465)) (+ 0 1))))))

(declare-fun bm!16322 () Bool)

(assert (=> bm!16322 (= call!16328 call!16327)))

(declare-fun bm!16323 () Bool)

(assert (=> bm!16323 (= call!16326 (charsOf!398 (ite c!54566 call!16327 call!16328)))))

(declare-fun b!288228 () Bool)

(assert (=> b!288228 (= e!179427 (BalanceConc!2673 Empty!1332))))

(declare-fun b!288229 () Bool)

(assert (=> b!288229 (= e!179429 (BalanceConc!2673 Empty!1332))))

(assert (=> b!288229 (= (print!366 thiss!17480 (singletonSeq!301 call!16328)) (printTailRec!327 thiss!17480 (singletonSeq!301 call!16328) 0 (BalanceConc!2673 Empty!1332)))))

(declare-fun lt!121400 () Unit!5300)

(declare-fun Unit!5324 () Unit!5300)

(assert (=> b!288229 (= lt!121400 Unit!5324)))

(declare-fun lt!121406 () Unit!5300)

(assert (=> b!288229 (= lt!121406 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 (list!1645 call!16324) (list!1645 lt!121404)))))

(assert (=> b!288229 false))

(declare-fun lt!121407 () Unit!5300)

(declare-fun Unit!5325 () Unit!5300)

(assert (=> b!288229 (= lt!121407 Unit!5325)))

(declare-fun b!288230 () Bool)

(assert (=> b!288230 (= e!179430 (<= (+ 0 1) (size!3161 (seqFromList!876 (t!40183 tokens!465)))))))

(assert (= (and d!85435 res!131623) b!288230))

(assert (= (and d!85435 c!54565) b!288228))

(assert (= (and d!85435 (not c!54565)) b!288224))

(assert (= (and b!288224 res!131624) b!288227))

(assert (= (and b!288224 c!54566) b!288226))

(assert (= (and b!288224 (not c!54566)) b!288225))

(assert (= (and b!288225 res!131622) b!288223))

(assert (= (and b!288225 c!54567) b!288222))

(assert (= (and b!288225 (not c!54567)) b!288229))

(assert (= (or b!288222 b!288229) bm!16322))

(assert (= (or b!288222 b!288229) bm!16320))

(assert (= (or b!288226 b!288223 bm!16322) bm!16319))

(assert (= (or b!288226 b!288222) bm!16323))

(assert (= (or b!288226 b!288222) bm!16321))

(declare-fun m!373501 () Bool)

(assert (=> bm!16320 m!373501))

(declare-fun m!373503 () Bool)

(assert (=> b!288224 m!373503))

(declare-fun m!373505 () Bool)

(assert (=> b!288224 m!373505))

(declare-fun m!373507 () Bool)

(assert (=> b!288224 m!373507))

(declare-fun m!373509 () Bool)

(assert (=> b!288224 m!373509))

(declare-fun m!373511 () Bool)

(assert (=> b!288224 m!373511))

(declare-fun m!373513 () Bool)

(assert (=> b!288224 m!373513))

(declare-fun m!373515 () Bool)

(assert (=> b!288224 m!373515))

(assert (=> b!288224 m!371737))

(assert (=> b!288224 m!372269))

(assert (=> b!288224 m!371737))

(declare-fun m!373517 () Bool)

(assert (=> b!288224 m!373517))

(declare-fun m!373519 () Bool)

(assert (=> b!288224 m!373519))

(assert (=> b!288224 m!373505))

(assert (=> b!288224 m!371737))

(assert (=> b!288224 m!373519))

(assert (=> b!288224 m!373513))

(declare-fun m!373521 () Bool)

(assert (=> b!288224 m!373521))

(declare-fun m!373523 () Bool)

(assert (=> b!288224 m!373523))

(declare-fun m!373525 () Bool)

(assert (=> b!288224 m!373525))

(assert (=> b!288224 m!373507))

(declare-fun m!373527 () Bool)

(assert (=> b!288224 m!373527))

(assert (=> b!288224 m!372269))

(assert (=> b!288224 m!373519))

(declare-fun m!373529 () Bool)

(assert (=> b!288224 m!373529))

(assert (=> b!288224 m!373509))

(assert (=> bm!16319 m!371737))

(assert (=> bm!16319 m!373519))

(assert (=> b!288230 m!371737))

(assert (=> b!288230 m!372285))

(declare-fun m!373531 () Bool)

(assert (=> b!288229 m!373531))

(declare-fun m!373533 () Bool)

(assert (=> b!288229 m!373533))

(assert (=> b!288229 m!373531))

(declare-fun m!373535 () Bool)

(assert (=> b!288229 m!373535))

(declare-fun m!373537 () Bool)

(assert (=> b!288229 m!373537))

(assert (=> b!288229 m!373537))

(assert (=> b!288229 m!373533))

(declare-fun m!373539 () Bool)

(assert (=> b!288229 m!373539))

(assert (=> b!288229 m!373531))

(declare-fun m!373541 () Bool)

(assert (=> b!288229 m!373541))

(declare-fun m!373543 () Bool)

(assert (=> bm!16321 m!373543))

(assert (=> d!85435 m!371737))

(assert (=> d!85435 m!372285))

(assert (=> d!85435 m!372269))

(declare-fun m!373545 () Bool)

(assert (=> d!85435 m!373545))

(declare-fun m!373547 () Bool)

(assert (=> d!85435 m!373547))

(assert (=> d!85435 m!373545))

(declare-fun m!373549 () Bool)

(assert (=> d!85435 m!373549))

(assert (=> d!85435 m!371737))

(assert (=> d!85435 m!373545))

(declare-fun m!373551 () Bool)

(assert (=> d!85435 m!373551))

(assert (=> d!85435 m!371737))

(assert (=> d!85435 m!372269))

(assert (=> b!288227 m!371737))

(assert (=> b!288227 m!373519))

(declare-fun m!373553 () Bool)

(assert (=> bm!16323 m!373553))

(declare-fun m!373555 () Bool)

(assert (=> b!288222 m!373555))

(assert (=> b!287601 d!85435))

(declare-fun d!85437 () Bool)

(assert (=> d!85437 (= (head!930 (drop!235 lt!121046 0)) (h!9342 (drop!235 lt!121046 0)))))

(assert (=> b!287601 d!85437))

(declare-fun b!288234 () Bool)

(declare-fun res!131627 () Bool)

(declare-fun e!179435 () Bool)

(assert (=> b!288234 (=> (not res!131627) (not e!179435))))

(assert (=> b!288234 (= res!131627 (isBalanced!377 (++!1054 (c!54354 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))) (c!54354 lt!121051))))))

(declare-fun b!288235 () Bool)

(declare-fun res!131628 () Bool)

(assert (=> b!288235 (=> (not res!131628) (not e!179435))))

(assert (=> b!288235 (= res!131628 (<= (height!166 (++!1054 (c!54354 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))) (c!54354 lt!121051))) (+ (max!0 (height!166 (c!54354 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))) (height!166 (c!54354 lt!121051))) 1)))))

(declare-fun d!85439 () Bool)

(assert (=> d!85439 e!179435))

(declare-fun res!131625 () Bool)

(assert (=> d!85439 (=> (not res!131625) (not e!179435))))

(assert (=> d!85439 (= res!131625 (appendAssocInst!69 (c!54354 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))) (c!54354 lt!121051)))))

(declare-fun lt!121408 () BalanceConc!2672)

(assert (=> d!85439 (= lt!121408 (BalanceConc!2673 (++!1054 (c!54354 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))) (c!54354 lt!121051))))))

(assert (=> d!85439 (= (++!1052 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121051) lt!121408)))

(declare-fun b!288236 () Bool)

(declare-fun res!131626 () Bool)

(assert (=> b!288236 (=> (not res!131626) (not e!179435))))

(assert (=> b!288236 (= res!131626 (>= (height!166 (++!1054 (c!54354 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))) (c!54354 lt!121051))) (max!0 (height!166 (c!54354 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))) (height!166 (c!54354 lt!121051)))))))

(declare-fun b!288237 () Bool)

(assert (=> b!288237 (= e!179435 (= (list!1645 lt!121408) (++!1050 (list!1645 (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))) (list!1645 lt!121051))))))

(assert (= (and d!85439 res!131625) b!288234))

(assert (= (and b!288234 res!131627) b!288235))

(assert (= (and b!288235 res!131628) b!288236))

(assert (= (and b!288236 res!131626) b!288237))

(declare-fun m!373557 () Bool)

(assert (=> d!85439 m!373557))

(declare-fun m!373559 () Bool)

(assert (=> d!85439 m!373559))

(assert (=> b!288235 m!373189))

(declare-fun m!373561 () Bool)

(assert (=> b!288235 m!373561))

(assert (=> b!288235 m!373561))

(assert (=> b!288235 m!373189))

(declare-fun m!373563 () Bool)

(assert (=> b!288235 m!373563))

(assert (=> b!288235 m!373559))

(assert (=> b!288235 m!373559))

(declare-fun m!373565 () Bool)

(assert (=> b!288235 m!373565))

(declare-fun m!373567 () Bool)

(assert (=> b!288237 m!373567))

(assert (=> b!288237 m!372257))

(declare-fun m!373569 () Bool)

(assert (=> b!288237 m!373569))

(assert (=> b!288237 m!372289))

(assert (=> b!288237 m!373569))

(assert (=> b!288237 m!372289))

(declare-fun m!373571 () Bool)

(assert (=> b!288237 m!373571))

(assert (=> b!288234 m!373559))

(assert (=> b!288234 m!373559))

(declare-fun m!373573 () Bool)

(assert (=> b!288234 m!373573))

(assert (=> b!288236 m!373189))

(assert (=> b!288236 m!373561))

(assert (=> b!288236 m!373561))

(assert (=> b!288236 m!373189))

(assert (=> b!288236 m!373563))

(assert (=> b!288236 m!373559))

(assert (=> b!288236 m!373559))

(assert (=> b!288236 m!373565))

(assert (=> b!287601 d!85439))

(declare-fun d!85441 () Bool)

(assert (=> d!85441 (= (tail!512 (drop!235 lt!121048 0)) (t!40183 (drop!235 lt!121048 0)))))

(assert (=> b!287601 d!85441))

(assert (=> b!287601 d!85357))

(declare-fun d!85443 () Bool)

(declare-fun lt!121409 () BalanceConc!2672)

(assert (=> d!85443 (= (list!1645 lt!121409) (originalCharacters!798 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))))

(assert (=> d!85443 (= lt!121409 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))) (value!25833 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))))

(assert (=> d!85443 (= (charsOf!398 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) lt!121409)))

(declare-fun b_lambda!9577 () Bool)

(assert (=> (not b_lambda!9577) (not d!85443)))

(declare-fun t!40292 () Bool)

(declare-fun tb!16701 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))) t!40292) tb!16701))

(declare-fun b!288238 () Bool)

(declare-fun e!179436 () Bool)

(declare-fun tp!105476 () Bool)

(assert (=> b!288238 (= e!179436 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))) (value!25833 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))) tp!105476))))

(declare-fun result!20540 () Bool)

(assert (=> tb!16701 (= result!20540 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))) (value!25833 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))) e!179436))))

(assert (= tb!16701 b!288238))

(declare-fun m!373575 () Bool)

(assert (=> b!288238 m!373575))

(declare-fun m!373577 () Bool)

(assert (=> tb!16701 m!373577))

(assert (=> d!85443 t!40292))

(declare-fun b_and!23301 () Bool)

(assert (= b_and!23283 (and (=> t!40292 result!20540) b_and!23301)))

(declare-fun t!40294 () Bool)

(declare-fun tb!16703 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))) t!40294) tb!16703))

(declare-fun result!20542 () Bool)

(assert (= result!20542 result!20540))

(assert (=> d!85443 t!40294))

(declare-fun b_and!23303 () Bool)

(assert (= b_and!23287 (and (=> t!40294 result!20542) b_and!23303)))

(declare-fun t!40296 () Bool)

(declare-fun tb!16705 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))) t!40296) tb!16705))

(declare-fun result!20544 () Bool)

(assert (= result!20544 result!20540))

(assert (=> d!85443 t!40296))

(declare-fun b_and!23305 () Bool)

(assert (= b_and!23289 (and (=> t!40296 result!20544) b_and!23305)))

(declare-fun tb!16707 () Bool)

(declare-fun t!40298 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))) t!40298) tb!16707))

(declare-fun result!20546 () Bool)

(assert (= result!20546 result!20540))

(assert (=> d!85443 t!40298))

(declare-fun b_and!23307 () Bool)

(assert (= b_and!23281 (and (=> t!40298 result!20546) b_and!23307)))

(declare-fun t!40300 () Bool)

(declare-fun tb!16709 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))) t!40300) tb!16709))

(declare-fun result!20548 () Bool)

(assert (= result!20548 result!20540))

(assert (=> d!85443 t!40300))

(declare-fun b_and!23309 () Bool)

(assert (= b_and!23285 (and (=> t!40300 result!20548) b_and!23309)))

(declare-fun m!373579 () Bool)

(assert (=> d!85443 m!373579))

(declare-fun m!373581 () Bool)

(assert (=> d!85443 m!373581))

(assert (=> b!287601 d!85443))

(declare-fun b!288267 () Bool)

(declare-fun e!179451 () Bool)

(declare-fun e!179457 () Bool)

(assert (=> b!288267 (= e!179451 e!179457)))

(declare-fun res!131648 () Bool)

(assert (=> b!288267 (=> res!131648 e!179457)))

(declare-fun call!16331 () Bool)

(assert (=> b!288267 (= res!131648 call!16331)))

(declare-fun d!85445 () Bool)

(declare-fun e!179454 () Bool)

(assert (=> d!85445 e!179454))

(declare-fun c!54576 () Bool)

(assert (=> d!85445 (= c!54576 ((_ is EmptyExpr!979) (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121107))))))))

(declare-fun lt!121412 () Bool)

(declare-fun e!179456 () Bool)

(assert (=> d!85445 (= lt!121412 e!179456)))

(declare-fun c!54575 () Bool)

(assert (=> d!85445 (= c!54575 (isEmpty!2618 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))))))

(declare-fun validRegex!256 (Regex!979) Bool)

(assert (=> d!85445 (validRegex!256 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))))

(assert (=> d!85445 (= (matchR!297 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))) (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))) lt!121412)))

(declare-fun b!288268 () Bool)

(declare-fun res!131651 () Bool)

(assert (=> b!288268 (=> res!131651 e!179457)))

(declare-fun tail!513 (List!3953) List!3953)

(assert (=> b!288268 (= res!131651 (not (isEmpty!2618 (tail!513 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))))))))

(declare-fun b!288269 () Bool)

(declare-fun res!131652 () Bool)

(declare-fun e!179453 () Bool)

(assert (=> b!288269 (=> (not res!131652) (not e!179453))))

(assert (=> b!288269 (= res!131652 (not call!16331))))

(declare-fun b!288270 () Bool)

(declare-fun e!179455 () Bool)

(assert (=> b!288270 (= e!179454 e!179455)))

(declare-fun c!54574 () Bool)

(assert (=> b!288270 (= c!54574 ((_ is EmptyLang!979) (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121107))))))))

(declare-fun b!288271 () Bool)

(declare-fun res!131645 () Bool)

(declare-fun e!179452 () Bool)

(assert (=> b!288271 (=> res!131645 e!179452)))

(assert (=> b!288271 (= res!131645 e!179453)))

(declare-fun res!131650 () Bool)

(assert (=> b!288271 (=> (not res!131650) (not e!179453))))

(assert (=> b!288271 (= res!131650 lt!121412)))

(declare-fun b!288272 () Bool)

(declare-fun res!131646 () Bool)

(assert (=> b!288272 (=> res!131646 e!179452)))

(assert (=> b!288272 (= res!131646 (not ((_ is ElementMatch!979) (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))))))

(assert (=> b!288272 (= e!179455 e!179452)))

(declare-fun b!288273 () Bool)

(declare-fun nullable!181 (Regex!979) Bool)

(assert (=> b!288273 (= e!179456 (nullable!181 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121107))))))))

(declare-fun b!288274 () Bool)

(declare-fun head!931 (List!3953) C!2880)

(assert (=> b!288274 (= e!179453 (= (head!931 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))) (c!54355 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))))))

(declare-fun b!288275 () Bool)

(assert (=> b!288275 (= e!179454 (= lt!121412 call!16331))))

(declare-fun b!288276 () Bool)

(declare-fun res!131649 () Bool)

(assert (=> b!288276 (=> (not res!131649) (not e!179453))))

(assert (=> b!288276 (= res!131649 (isEmpty!2618 (tail!513 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107)))))))))

(declare-fun bm!16326 () Bool)

(assert (=> bm!16326 (= call!16331 (isEmpty!2618 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))))))

(declare-fun b!288277 () Bool)

(assert (=> b!288277 (= e!179457 (not (= (head!931 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107))))) (c!54355 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121107))))))))))

(declare-fun b!288278 () Bool)

(declare-fun derivativeStep!147 (Regex!979 C!2880) Regex!979)

(assert (=> b!288278 (= e!179456 (matchR!297 (derivativeStep!147 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))) (head!931 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107)))))) (tail!513 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121107)))))))))

(declare-fun b!288279 () Bool)

(assert (=> b!288279 (= e!179455 (not lt!121412))))

(declare-fun b!288280 () Bool)

(assert (=> b!288280 (= e!179452 e!179451)))

(declare-fun res!131647 () Bool)

(assert (=> b!288280 (=> (not res!131647) (not e!179451))))

(assert (=> b!288280 (= res!131647 (not lt!121412))))

(assert (= (and d!85445 c!54575) b!288273))

(assert (= (and d!85445 (not c!54575)) b!288278))

(assert (= (and d!85445 c!54576) b!288275))

(assert (= (and d!85445 (not c!54576)) b!288270))

(assert (= (and b!288270 c!54574) b!288279))

(assert (= (and b!288270 (not c!54574)) b!288272))

(assert (= (and b!288272 (not res!131646)) b!288271))

(assert (= (and b!288271 res!131650) b!288269))

(assert (= (and b!288269 res!131652) b!288276))

(assert (= (and b!288276 res!131649) b!288274))

(assert (= (and b!288271 (not res!131645)) b!288280))

(assert (= (and b!288280 res!131647) b!288267))

(assert (= (and b!288267 (not res!131648)) b!288268))

(assert (= (and b!288268 (not res!131651)) b!288277))

(assert (= (or b!288275 b!288267 b!288269) bm!16326))

(assert (=> bm!16326 m!372481))

(declare-fun m!373583 () Bool)

(assert (=> bm!16326 m!373583))

(assert (=> b!288277 m!372481))

(declare-fun m!373585 () Bool)

(assert (=> b!288277 m!373585))

(assert (=> b!288278 m!372481))

(assert (=> b!288278 m!373585))

(assert (=> b!288278 m!373585))

(declare-fun m!373587 () Bool)

(assert (=> b!288278 m!373587))

(assert (=> b!288278 m!372481))

(declare-fun m!373589 () Bool)

(assert (=> b!288278 m!373589))

(assert (=> b!288278 m!373587))

(assert (=> b!288278 m!373589))

(declare-fun m!373591 () Bool)

(assert (=> b!288278 m!373591))

(assert (=> b!288274 m!372481))

(assert (=> b!288274 m!373585))

(assert (=> b!288268 m!372481))

(assert (=> b!288268 m!373589))

(assert (=> b!288268 m!373589))

(declare-fun m!373593 () Bool)

(assert (=> b!288268 m!373593))

(assert (=> b!288276 m!372481))

(assert (=> b!288276 m!373589))

(assert (=> b!288276 m!373589))

(assert (=> b!288276 m!373593))

(declare-fun m!373595 () Bool)

(assert (=> b!288273 m!373595))

(assert (=> d!85445 m!372481))

(assert (=> d!85445 m!373583))

(declare-fun m!373597 () Bool)

(assert (=> d!85445 m!373597))

(assert (=> b!287693 d!85445))

(assert (=> b!287693 d!85293))

(assert (=> b!287693 d!85289))

(assert (=> b!287693 d!85291))

(declare-fun d!85447 () Bool)

(declare-fun lt!121415 () Int)

(assert (=> d!85447 (>= lt!121415 0)))

(declare-fun e!179460 () Int)

(assert (=> d!85447 (= lt!121415 e!179460)))

(declare-fun c!54579 () Bool)

(assert (=> d!85447 (= c!54579 ((_ is Nil!3943) lt!121086))))

(assert (=> d!85447 (= (size!3163 lt!121086) lt!121415)))

(declare-fun b!288285 () Bool)

(assert (=> b!288285 (= e!179460 0)))

(declare-fun b!288286 () Bool)

(assert (=> b!288286 (= e!179460 (+ 1 (size!3163 (t!40181 lt!121086))))))

(assert (= (and d!85447 c!54579) b!288285))

(assert (= (and d!85447 (not c!54579)) b!288286))

(declare-fun m!373599 () Bool)

(assert (=> b!288286 m!373599))

(assert (=> b!287650 d!85447))

(declare-fun d!85449 () Bool)

(declare-fun lt!121416 () Int)

(assert (=> d!85449 (>= lt!121416 0)))

(declare-fun e!179461 () Int)

(assert (=> d!85449 (= lt!121416 e!179461)))

(declare-fun c!54580 () Bool)

(assert (=> d!85449 (= c!54580 ((_ is Nil!3943) lt!120869))))

(assert (=> d!85449 (= (size!3163 lt!120869) lt!121416)))

(declare-fun b!288287 () Bool)

(assert (=> b!288287 (= e!179461 0)))

(declare-fun b!288288 () Bool)

(assert (=> b!288288 (= e!179461 (+ 1 (size!3163 (t!40181 lt!120869))))))

(assert (= (and d!85449 c!54580) b!288287))

(assert (= (and d!85449 (not c!54580)) b!288288))

(declare-fun m!373601 () Bool)

(assert (=> b!288288 m!373601))

(assert (=> b!287650 d!85449))

(declare-fun d!85451 () Bool)

(declare-fun lt!121417 () Int)

(assert (=> d!85451 (>= lt!121417 0)))

(declare-fun e!179462 () Int)

(assert (=> d!85451 (= lt!121417 e!179462)))

(declare-fun c!54581 () Bool)

(assert (=> d!85451 (= c!54581 ((_ is Nil!3943) lt!120870))))

(assert (=> d!85451 (= (size!3163 lt!120870) lt!121417)))

(declare-fun b!288289 () Bool)

(assert (=> b!288289 (= e!179462 0)))

(declare-fun b!288290 () Bool)

(assert (=> b!288290 (= e!179462 (+ 1 (size!3163 (t!40181 lt!120870))))))

(assert (= (and d!85451 c!54581) b!288289))

(assert (= (and d!85451 (not c!54581)) b!288290))

(declare-fun m!373603 () Bool)

(assert (=> b!288290 m!373603))

(assert (=> b!287650 d!85451))

(declare-fun d!85453 () Bool)

(assert (=> d!85453 (= (list!1645 call!16283) (list!1649 (c!54354 call!16283)))))

(declare-fun bs!32594 () Bool)

(assert (= bs!32594 d!85453))

(declare-fun m!373605 () Bool)

(assert (=> bs!32594 m!373605))

(assert (=> b!287853 d!85453))

(declare-fun d!85455 () Bool)

(declare-fun lt!121420 () BalanceConc!2672)

(assert (=> d!85455 (= (list!1645 lt!121420) (printListTailRec!147 thiss!17480 (dropList!182 (singletonSeq!301 call!16287) 0) (list!1645 (BalanceConc!2673 Empty!1332))))))

(declare-fun e!179463 () BalanceConc!2672)

(assert (=> d!85455 (= lt!121420 e!179463)))

(declare-fun c!54582 () Bool)

(assert (=> d!85455 (= c!54582 (>= 0 (size!3161 (singletonSeq!301 call!16287))))))

(declare-fun e!179464 () Bool)

(assert (=> d!85455 e!179464))

(declare-fun res!131653 () Bool)

(assert (=> d!85455 (=> (not res!131653) (not e!179464))))

(assert (=> d!85455 (= res!131653 (>= 0 0))))

(assert (=> d!85455 (= (printTailRec!327 thiss!17480 (singletonSeq!301 call!16287) 0 (BalanceConc!2673 Empty!1332)) lt!121420)))

(declare-fun b!288291 () Bool)

(assert (=> b!288291 (= e!179464 (<= 0 (size!3161 (singletonSeq!301 call!16287))))))

(declare-fun b!288292 () Bool)

(assert (=> b!288292 (= e!179463 (BalanceConc!2673 Empty!1332))))

(declare-fun b!288293 () Bool)

(assert (=> b!288293 (= e!179463 (printTailRec!327 thiss!17480 (singletonSeq!301 call!16287) (+ 0 1) (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (apply!840 (singletonSeq!301 call!16287) 0)))))))

(declare-fun lt!121421 () List!3955)

(assert (=> b!288293 (= lt!121421 (list!1648 (singletonSeq!301 call!16287)))))

(declare-fun lt!121422 () Unit!5300)

(assert (=> b!288293 (= lt!121422 (lemmaDropApply!222 lt!121421 0))))

(assert (=> b!288293 (= (head!930 (drop!235 lt!121421 0)) (apply!843 lt!121421 0))))

(declare-fun lt!121418 () Unit!5300)

(assert (=> b!288293 (= lt!121418 lt!121422)))

(declare-fun lt!121423 () List!3955)

(assert (=> b!288293 (= lt!121423 (list!1648 (singletonSeq!301 call!16287)))))

(declare-fun lt!121424 () Unit!5300)

(assert (=> b!288293 (= lt!121424 (lemmaDropTail!214 lt!121423 0))))

(assert (=> b!288293 (= (tail!512 (drop!235 lt!121423 0)) (drop!235 lt!121423 (+ 0 1)))))

(declare-fun lt!121419 () Unit!5300)

(assert (=> b!288293 (= lt!121419 lt!121424)))

(assert (= (and d!85455 res!131653) b!288291))

(assert (= (and d!85455 c!54582) b!288292))

(assert (= (and d!85455 (not c!54582)) b!288293))

(assert (=> d!85455 m!372755))

(declare-fun m!373607 () Bool)

(assert (=> d!85455 m!373607))

(declare-fun m!373609 () Bool)

(assert (=> d!85455 m!373609))

(assert (=> d!85455 m!372755))

(declare-fun m!373611 () Bool)

(assert (=> d!85455 m!373611))

(assert (=> d!85455 m!372515))

(assert (=> d!85455 m!373607))

(assert (=> d!85455 m!372515))

(declare-fun m!373613 () Bool)

(assert (=> d!85455 m!373613))

(assert (=> b!288291 m!372755))

(assert (=> b!288291 m!373611))

(declare-fun m!373615 () Bool)

(assert (=> b!288293 m!373615))

(declare-fun m!373617 () Bool)

(assert (=> b!288293 m!373617))

(declare-fun m!373619 () Bool)

(assert (=> b!288293 m!373619))

(assert (=> b!288293 m!372755))

(declare-fun m!373621 () Bool)

(assert (=> b!288293 m!373621))

(declare-fun m!373623 () Bool)

(assert (=> b!288293 m!373623))

(assert (=> b!288293 m!372755))

(declare-fun m!373625 () Bool)

(assert (=> b!288293 m!373625))

(declare-fun m!373627 () Bool)

(assert (=> b!288293 m!373627))

(assert (=> b!288293 m!373621))

(assert (=> b!288293 m!372755))

(declare-fun m!373629 () Bool)

(assert (=> b!288293 m!373629))

(declare-fun m!373631 () Bool)

(assert (=> b!288293 m!373631))

(declare-fun m!373633 () Bool)

(assert (=> b!288293 m!373633))

(assert (=> b!288293 m!373629))

(assert (=> b!288293 m!373627))

(declare-fun m!373635 () Bool)

(assert (=> b!288293 m!373635))

(assert (=> b!288293 m!373615))

(assert (=> b!288293 m!373635))

(declare-fun m!373637 () Bool)

(assert (=> b!288293 m!373637))

(declare-fun m!373639 () Bool)

(assert (=> b!288293 m!373639))

(assert (=> b!287853 d!85455))

(declare-fun d!85457 () Bool)

(assert (=> d!85457 (= (list!1645 lt!121221) (list!1649 (c!54354 lt!121221)))))

(declare-fun bs!32595 () Bool)

(assert (= bs!32595 d!85457))

(declare-fun m!373641 () Bool)

(assert (=> bs!32595 m!373641))

(assert (=> b!287853 d!85457))

(declare-fun b!288327 () Bool)

(declare-fun e!179482 () Unit!5300)

(declare-fun Unit!5328 () Unit!5300)

(assert (=> b!288327 (= e!179482 Unit!5328)))

(declare-fun lt!121529 () List!3953)

(assert (=> b!288327 (= lt!121529 (++!1050 (list!1645 call!16283) (list!1645 lt!121221)))))

(declare-fun lt!121533 () Token!1254)

(declare-fun lt!121525 () Unit!5300)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!62 (LexerInterface!641 Rule!1310 List!3954 List!3953) Unit!5300)

(assert (=> b!288327 (= lt!121525 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!62 thiss!17480 (rule!1354 lt!121533) rules!1920 lt!121529))))

(assert (=> b!288327 (isEmpty!2620 (maxPrefixOneRule!159 thiss!17480 (rule!1354 lt!121533) lt!121529))))

(declare-fun lt!121536 () Unit!5300)

(assert (=> b!288327 (= lt!121536 lt!121525)))

(declare-fun lt!121521 () List!3953)

(assert (=> b!288327 (= lt!121521 (list!1645 (charsOf!398 lt!121533)))))

(declare-fun lt!121530 () Unit!5300)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!62 (LexerInterface!641 Rule!1310 List!3953 List!3953) Unit!5300)

(assert (=> b!288327 (= lt!121530 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!62 thiss!17480 (rule!1354 lt!121533) lt!121521 (++!1050 (list!1645 call!16283) (list!1645 lt!121221))))))

(assert (=> b!288327 (not (matchR!297 (regex!755 (rule!1354 lt!121533)) lt!121521))))

(declare-fun lt!121522 () Unit!5300)

(assert (=> b!288327 (= lt!121522 lt!121530)))

(assert (=> b!288327 false))

(declare-fun d!85459 () Bool)

(assert (=> d!85459 (isDefined!709 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 call!16283) (list!1645 lt!121221))))))

(declare-fun lt!121527 () Unit!5300)

(assert (=> d!85459 (= lt!121527 e!179482)))

(declare-fun c!54591 () Bool)

(assert (=> d!85459 (= c!54591 (isEmpty!2620 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 call!16283) (list!1645 lt!121221)))))))

(declare-fun lt!121531 () Unit!5300)

(declare-fun lt!121537 () Unit!5300)

(assert (=> d!85459 (= lt!121531 lt!121537)))

(declare-fun e!179483 () Bool)

(assert (=> d!85459 e!179483))

(declare-fun res!131669 () Bool)

(assert (=> d!85459 (=> (not res!131669) (not e!179483))))

(declare-datatypes ((Option!873 0))(
  ( (None!872) (Some!872 (v!14823 Rule!1310)) )
))
(declare-fun isDefined!712 (Option!873) Bool)

(declare-fun getRuleFromTag!138 (LexerInterface!641 List!3954 String!4965) Option!873)

(assert (=> d!85459 (= res!131669 (isDefined!712 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!121533)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!138 (LexerInterface!641 List!3954 List!3953 Token!1254) Unit!5300)

(assert (=> d!85459 (= lt!121537 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!138 thiss!17480 rules!1920 (list!1645 call!16283) lt!121533))))

(declare-fun lt!121535 () Unit!5300)

(declare-fun lt!121532 () Unit!5300)

(assert (=> d!85459 (= lt!121535 lt!121532)))

(declare-fun lt!121528 () List!3953)

(assert (=> d!85459 (isPrefix!419 lt!121528 (++!1050 (list!1645 call!16283) (list!1645 lt!121221)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!62 (List!3953 List!3953 List!3953) Unit!5300)

(assert (=> d!85459 (= lt!121532 (lemmaPrefixStaysPrefixWhenAddingToSuffix!62 lt!121528 (list!1645 call!16283) (list!1645 lt!121221)))))

(assert (=> d!85459 (= lt!121528 (list!1645 (charsOf!398 lt!121533)))))

(declare-fun lt!121534 () Unit!5300)

(declare-fun lt!121524 () Unit!5300)

(assert (=> d!85459 (= lt!121534 lt!121524)))

(declare-fun lt!121526 () List!3953)

(declare-fun lt!121523 () List!3953)

(assert (=> d!85459 (isPrefix!419 lt!121526 (++!1050 lt!121526 lt!121523))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!314 (List!3953 List!3953) Unit!5300)

(assert (=> d!85459 (= lt!121524 (lemmaConcatTwoListThenFirstIsPrefix!314 lt!121526 lt!121523))))

(assert (=> d!85459 (= lt!121523 (_2!2457 (get!1329 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 call!16283)))))))

(assert (=> d!85459 (= lt!121526 (list!1645 (charsOf!398 lt!121533)))))

(assert (=> d!85459 (= lt!121533 (head!930 (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 (list!1645 call!16283)))))))))

(assert (=> d!85459 (not (isEmpty!2609 rules!1920))))

(assert (=> d!85459 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 (list!1645 call!16283) (list!1645 lt!121221)) lt!121527)))

(declare-fun b!288325 () Bool)

(declare-fun res!131668 () Bool)

(assert (=> b!288325 (=> (not res!131668) (not e!179483))))

(declare-fun get!1333 (Option!873) Rule!1310)

(assert (=> b!288325 (= res!131668 (matchR!297 (regex!755 (get!1333 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!121533))))) (list!1645 (charsOf!398 lt!121533))))))

(declare-fun b!288328 () Bool)

(declare-fun Unit!5329 () Unit!5300)

(assert (=> b!288328 (= e!179482 Unit!5329)))

(declare-fun b!288326 () Bool)

(assert (=> b!288326 (= e!179483 (= (rule!1354 lt!121533) (get!1333 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!121533))))))))

(assert (= (and d!85459 res!131669) b!288325))

(assert (= (and b!288325 res!131668) b!288326))

(assert (= (and d!85459 c!54591) b!288327))

(assert (= (and d!85459 (not c!54591)) b!288328))

(declare-fun m!373777 () Bool)

(assert (=> b!288327 m!373777))

(declare-fun m!373779 () Bool)

(assert (=> b!288327 m!373779))

(assert (=> b!288327 m!373779))

(declare-fun m!373781 () Bool)

(assert (=> b!288327 m!373781))

(declare-fun m!373783 () Bool)

(assert (=> b!288327 m!373783))

(declare-fun m!373785 () Bool)

(assert (=> b!288327 m!373785))

(declare-fun m!373787 () Bool)

(assert (=> b!288327 m!373787))

(declare-fun m!373789 () Bool)

(assert (=> b!288327 m!373789))

(declare-fun m!373791 () Bool)

(assert (=> b!288327 m!373791))

(assert (=> b!288327 m!373787))

(assert (=> b!288327 m!372761))

(assert (=> b!288327 m!372757))

(assert (=> b!288327 m!373783))

(declare-fun m!373793 () Bool)

(assert (=> d!85459 m!373793))

(declare-fun m!373795 () Bool)

(assert (=> d!85459 m!373795))

(declare-fun m!373797 () Bool)

(assert (=> d!85459 m!373797))

(assert (=> d!85459 m!373793))

(declare-fun m!373799 () Bool)

(assert (=> d!85459 m!373799))

(assert (=> d!85459 m!372761))

(declare-fun m!373801 () Bool)

(assert (=> d!85459 m!373801))

(declare-fun m!373803 () Bool)

(assert (=> d!85459 m!373803))

(declare-fun m!373805 () Bool)

(assert (=> d!85459 m!373805))

(declare-fun m!373807 () Bool)

(assert (=> d!85459 m!373807))

(assert (=> d!85459 m!373783))

(assert (=> d!85459 m!373795))

(assert (=> d!85459 m!373807))

(declare-fun m!373809 () Bool)

(assert (=> d!85459 m!373809))

(declare-fun m!373811 () Bool)

(assert (=> d!85459 m!373811))

(declare-fun m!373813 () Bool)

(assert (=> d!85459 m!373813))

(assert (=> d!85459 m!372761))

(assert (=> d!85459 m!373803))

(assert (=> d!85459 m!372761))

(assert (=> d!85459 m!372757))

(assert (=> d!85459 m!373783))

(declare-fun m!373815 () Bool)

(assert (=> d!85459 m!373815))

(assert (=> d!85459 m!373783))

(declare-fun m!373817 () Bool)

(assert (=> d!85459 m!373817))

(assert (=> d!85459 m!373779))

(assert (=> d!85459 m!372761))

(declare-fun m!373819 () Bool)

(assert (=> d!85459 m!373819))

(assert (=> d!85459 m!372761))

(assert (=> d!85459 m!372757))

(declare-fun m!373821 () Bool)

(assert (=> d!85459 m!373821))

(assert (=> d!85459 m!373819))

(declare-fun m!373823 () Bool)

(assert (=> d!85459 m!373823))

(assert (=> d!85459 m!373779))

(assert (=> d!85459 m!373781))

(assert (=> d!85459 m!371723))

(assert (=> d!85459 m!373795))

(declare-fun m!373825 () Bool)

(assert (=> d!85459 m!373825))

(assert (=> d!85459 m!373811))

(assert (=> b!288325 m!373779))

(assert (=> b!288325 m!373779))

(assert (=> b!288325 m!373781))

(assert (=> b!288325 m!373793))

(declare-fun m!373827 () Bool)

(assert (=> b!288325 m!373827))

(assert (=> b!288325 m!373781))

(declare-fun m!373829 () Bool)

(assert (=> b!288325 m!373829))

(assert (=> b!288325 m!373793))

(assert (=> b!288326 m!373793))

(assert (=> b!288326 m!373793))

(assert (=> b!288326 m!373827))

(assert (=> b!287853 d!85459))

(declare-fun d!85481 () Bool)

(declare-fun e!179484 () Bool)

(assert (=> d!85481 e!179484))

(declare-fun res!131670 () Bool)

(assert (=> d!85481 (=> (not res!131670) (not e!179484))))

(declare-fun lt!121538 () BalanceConc!2674)

(assert (=> d!85481 (= res!131670 (= (list!1648 lt!121538) (Cons!3945 call!16287 Nil!3945)))))

(assert (=> d!85481 (= lt!121538 (singleton!131 call!16287))))

(assert (=> d!85481 (= (singletonSeq!301 call!16287) lt!121538)))

(declare-fun b!288329 () Bool)

(assert (=> b!288329 (= e!179484 (isBalanced!374 (c!54356 lt!121538)))))

(assert (= (and d!85481 res!131670) b!288329))

(declare-fun m!373831 () Bool)

(assert (=> d!85481 m!373831))

(declare-fun m!373833 () Bool)

(assert (=> d!85481 m!373833))

(declare-fun m!373835 () Bool)

(assert (=> b!288329 m!373835))

(assert (=> b!287853 d!85481))

(declare-fun d!85483 () Bool)

(declare-fun lt!121539 () BalanceConc!2672)

(assert (=> d!85483 (= (list!1645 lt!121539) (printList!315 thiss!17480 (list!1648 (singletonSeq!301 call!16287))))))

(assert (=> d!85483 (= lt!121539 (printTailRec!327 thiss!17480 (singletonSeq!301 call!16287) 0 (BalanceConc!2673 Empty!1332)))))

(assert (=> d!85483 (= (print!366 thiss!17480 (singletonSeq!301 call!16287)) lt!121539)))

(declare-fun bs!32600 () Bool)

(assert (= bs!32600 d!85483))

(declare-fun m!373837 () Bool)

(assert (=> bs!32600 m!373837))

(assert (=> bs!32600 m!372755))

(assert (=> bs!32600 m!373625))

(assert (=> bs!32600 m!373625))

(declare-fun m!373839 () Bool)

(assert (=> bs!32600 m!373839))

(assert (=> bs!32600 m!372755))

(assert (=> bs!32600 m!372765))

(assert (=> b!287853 d!85483))

(declare-fun b!288330 () Bool)

(declare-fun e!179486 () List!3953)

(assert (=> b!288330 (= e!179486 lt!120870)))

(declare-fun b!288332 () Bool)

(declare-fun res!131672 () Bool)

(declare-fun e!179485 () Bool)

(assert (=> b!288332 (=> (not res!131672) (not e!179485))))

(declare-fun lt!121540 () List!3953)

(assert (=> b!288332 (= res!131672 (= (size!3163 lt!121540) (+ (size!3163 (t!40181 (++!1050 lt!120875 lt!120869))) (size!3163 lt!120870))))))

(declare-fun b!288331 () Bool)

(assert (=> b!288331 (= e!179486 (Cons!3943 (h!9340 (t!40181 (++!1050 lt!120875 lt!120869))) (++!1050 (t!40181 (t!40181 (++!1050 lt!120875 lt!120869))) lt!120870)))))

(declare-fun d!85485 () Bool)

(assert (=> d!85485 e!179485))

(declare-fun res!131671 () Bool)

(assert (=> d!85485 (=> (not res!131671) (not e!179485))))

(assert (=> d!85485 (= res!131671 (= (content!579 lt!121540) ((_ map or) (content!579 (t!40181 (++!1050 lt!120875 lt!120869))) (content!579 lt!120870))))))

(assert (=> d!85485 (= lt!121540 e!179486)))

(declare-fun c!54592 () Bool)

(assert (=> d!85485 (= c!54592 ((_ is Nil!3943) (t!40181 (++!1050 lt!120875 lt!120869))))))

(assert (=> d!85485 (= (++!1050 (t!40181 (++!1050 lt!120875 lt!120869)) lt!120870) lt!121540)))

(declare-fun b!288333 () Bool)

(assert (=> b!288333 (= e!179485 (or (not (= lt!120870 Nil!3943)) (= lt!121540 (t!40181 (++!1050 lt!120875 lt!120869)))))))

(assert (= (and d!85485 c!54592) b!288330))

(assert (= (and d!85485 (not c!54592)) b!288331))

(assert (= (and d!85485 res!131671) b!288332))

(assert (= (and b!288332 res!131672) b!288333))

(declare-fun m!373841 () Bool)

(assert (=> b!288332 m!373841))

(declare-fun m!373843 () Bool)

(assert (=> b!288332 m!373843))

(assert (=> b!288332 m!372021))

(declare-fun m!373845 () Bool)

(assert (=> b!288331 m!373845))

(declare-fun m!373847 () Bool)

(assert (=> d!85485 m!373847))

(declare-fun m!373849 () Bool)

(assert (=> d!85485 m!373849))

(assert (=> d!85485 m!372029))

(assert (=> b!287467 d!85485))

(declare-fun d!85487 () Bool)

(assert (=> d!85487 true))

(declare-fun order!3119 () Int)

(declare-fun lambda!9886 () Int)

(declare-fun dynLambda!2096 (Int Int) Int)

(assert (=> d!85487 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2096 order!3119 lambda!9886))))

(assert (=> d!85487 true))

(assert (=> d!85487 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2096 order!3119 lambda!9886))))

(declare-fun Forall!177 (Int) Bool)

(assert (=> d!85487 (= (semiInverseModEq!279 (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (Forall!177 lambda!9886))))

(declare-fun bs!32601 () Bool)

(assert (= bs!32601 d!85487))

(declare-fun m!373851 () Bool)

(assert (=> bs!32601 m!373851))

(assert (=> d!85201 d!85487))

(assert (=> b!287607 d!85339))

(declare-fun d!85489 () Bool)

(declare-fun e!179487 () Bool)

(assert (=> d!85489 e!179487))

(declare-fun res!131673 () Bool)

(assert (=> d!85489 (=> (not res!131673) (not e!179487))))

(declare-fun lt!121541 () BalanceConc!2672)

(assert (=> d!85489 (= res!131673 (= (list!1645 lt!121541) (originalCharacters!798 (h!9342 tokens!465))))))

(assert (=> d!85489 (= lt!121541 (BalanceConc!2673 (fromList!186 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (=> d!85489 (= (fromListB!359 (originalCharacters!798 (h!9342 tokens!465))) lt!121541)))

(declare-fun b!288338 () Bool)

(assert (=> b!288338 (= e!179487 (isBalanced!377 (fromList!186 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (= (and d!85489 res!131673) b!288338))

(declare-fun m!373853 () Bool)

(assert (=> d!85489 m!373853))

(declare-fun m!373855 () Bool)

(assert (=> d!85489 m!373855))

(assert (=> b!288338 m!373855))

(assert (=> b!288338 m!373855))

(declare-fun m!373857 () Bool)

(assert (=> b!288338 m!373857))

(assert (=> d!85193 d!85489))

(declare-fun d!85491 () Bool)

(declare-fun lt!121542 () BalanceConc!2672)

(assert (=> d!85491 (= (list!1645 lt!121542) (printList!315 thiss!17480 (list!1648 (singletonSeq!301 (h!9342 tokens!465)))))))

(assert (=> d!85491 (= lt!121542 (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)) 0 (BalanceConc!2673 Empty!1332)))))

(assert (=> d!85491 (= (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465))) lt!121542)))

(declare-fun bs!32602 () Bool)

(assert (= bs!32602 d!85491))

(declare-fun m!373859 () Bool)

(assert (=> bs!32602 m!373859))

(assert (=> bs!32602 m!371785))

(assert (=> bs!32602 m!372051))

(assert (=> bs!32602 m!372051))

(declare-fun m!373861 () Bool)

(assert (=> bs!32602 m!373861))

(assert (=> bs!32602 m!371785))

(assert (=> bs!32602 m!372781))

(assert (=> b!287864 d!85491))

(assert (=> b!287864 d!85167))

(declare-fun d!85493 () Bool)

(declare-fun lt!121545 () BalanceConc!2672)

(assert (=> d!85493 (= (list!1645 lt!121545) (printListTailRec!147 thiss!17480 (dropList!182 (singletonSeq!301 (h!9342 tokens!465)) 0) (list!1645 (BalanceConc!2673 Empty!1332))))))

(declare-fun e!179488 () BalanceConc!2672)

(assert (=> d!85493 (= lt!121545 e!179488)))

(declare-fun c!54593 () Bool)

(assert (=> d!85493 (= c!54593 (>= 0 (size!3161 (singletonSeq!301 (h!9342 tokens!465)))))))

(declare-fun e!179489 () Bool)

(assert (=> d!85493 e!179489))

(declare-fun res!131674 () Bool)

(assert (=> d!85493 (=> (not res!131674) (not e!179489))))

(assert (=> d!85493 (= res!131674 (>= 0 0))))

(assert (=> d!85493 (= (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)) 0 (BalanceConc!2673 Empty!1332)) lt!121545)))

(declare-fun b!288339 () Bool)

(assert (=> b!288339 (= e!179489 (<= 0 (size!3161 (singletonSeq!301 (h!9342 tokens!465)))))))

(declare-fun b!288340 () Bool)

(assert (=> b!288340 (= e!179488 (BalanceConc!2673 Empty!1332))))

(declare-fun b!288341 () Bool)

(assert (=> b!288341 (= e!179488 (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)) (+ 0 1) (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (apply!840 (singletonSeq!301 (h!9342 tokens!465)) 0)))))))

(declare-fun lt!121546 () List!3955)

(assert (=> b!288341 (= lt!121546 (list!1648 (singletonSeq!301 (h!9342 tokens!465))))))

(declare-fun lt!121547 () Unit!5300)

(assert (=> b!288341 (= lt!121547 (lemmaDropApply!222 lt!121546 0))))

(assert (=> b!288341 (= (head!930 (drop!235 lt!121546 0)) (apply!843 lt!121546 0))))

(declare-fun lt!121543 () Unit!5300)

(assert (=> b!288341 (= lt!121543 lt!121547)))

(declare-fun lt!121548 () List!3955)

(assert (=> b!288341 (= lt!121548 (list!1648 (singletonSeq!301 (h!9342 tokens!465))))))

(declare-fun lt!121549 () Unit!5300)

(assert (=> b!288341 (= lt!121549 (lemmaDropTail!214 lt!121548 0))))

(assert (=> b!288341 (= (tail!512 (drop!235 lt!121548 0)) (drop!235 lt!121548 (+ 0 1)))))

(declare-fun lt!121544 () Unit!5300)

(assert (=> b!288341 (= lt!121544 lt!121549)))

(assert (= (and d!85493 res!131674) b!288339))

(assert (= (and d!85493 c!54593) b!288340))

(assert (= (and d!85493 (not c!54593)) b!288341))

(assert (=> d!85493 m!371785))

(declare-fun m!373863 () Bool)

(assert (=> d!85493 m!373863))

(declare-fun m!373865 () Bool)

(assert (=> d!85493 m!373865))

(assert (=> d!85493 m!371785))

(declare-fun m!373867 () Bool)

(assert (=> d!85493 m!373867))

(assert (=> d!85493 m!372515))

(assert (=> d!85493 m!373863))

(assert (=> d!85493 m!372515))

(declare-fun m!373869 () Bool)

(assert (=> d!85493 m!373869))

(assert (=> b!288339 m!371785))

(assert (=> b!288339 m!373867))

(declare-fun m!373871 () Bool)

(assert (=> b!288341 m!373871))

(declare-fun m!373873 () Bool)

(assert (=> b!288341 m!373873))

(declare-fun m!373875 () Bool)

(assert (=> b!288341 m!373875))

(assert (=> b!288341 m!371785))

(declare-fun m!373877 () Bool)

(assert (=> b!288341 m!373877))

(declare-fun m!373879 () Bool)

(assert (=> b!288341 m!373879))

(assert (=> b!288341 m!371785))

(assert (=> b!288341 m!372051))

(declare-fun m!373881 () Bool)

(assert (=> b!288341 m!373881))

(assert (=> b!288341 m!373877))

(assert (=> b!288341 m!371785))

(declare-fun m!373883 () Bool)

(assert (=> b!288341 m!373883))

(declare-fun m!373885 () Bool)

(assert (=> b!288341 m!373885))

(declare-fun m!373887 () Bool)

(assert (=> b!288341 m!373887))

(assert (=> b!288341 m!373883))

(assert (=> b!288341 m!373881))

(declare-fun m!373889 () Bool)

(assert (=> b!288341 m!373889))

(assert (=> b!288341 m!373871))

(assert (=> b!288341 m!373889))

(declare-fun m!373891 () Bool)

(assert (=> b!288341 m!373891))

(declare-fun m!373893 () Bool)

(assert (=> b!288341 m!373893))

(assert (=> b!287864 d!85493))

(declare-fun b!288344 () Bool)

(declare-fun e!179490 () Unit!5300)

(declare-fun Unit!5330 () Unit!5300)

(assert (=> b!288344 (= e!179490 Unit!5330)))

(declare-fun lt!121558 () List!3953)

(assert (=> b!288344 (= lt!121558 (++!1050 call!16291 lt!121229))))

(declare-fun lt!121562 () Token!1254)

(declare-fun lt!121554 () Unit!5300)

(assert (=> b!288344 (= lt!121554 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!62 thiss!17480 (rule!1354 lt!121562) rules!1920 lt!121558))))

(assert (=> b!288344 (isEmpty!2620 (maxPrefixOneRule!159 thiss!17480 (rule!1354 lt!121562) lt!121558))))

(declare-fun lt!121565 () Unit!5300)

(assert (=> b!288344 (= lt!121565 lt!121554)))

(declare-fun lt!121550 () List!3953)

(assert (=> b!288344 (= lt!121550 (list!1645 (charsOf!398 lt!121562)))))

(declare-fun lt!121559 () Unit!5300)

(assert (=> b!288344 (= lt!121559 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!62 thiss!17480 (rule!1354 lt!121562) lt!121550 (++!1050 call!16291 lt!121229)))))

(assert (=> b!288344 (not (matchR!297 (regex!755 (rule!1354 lt!121562)) lt!121550))))

(declare-fun lt!121551 () Unit!5300)

(assert (=> b!288344 (= lt!121551 lt!121559)))

(assert (=> b!288344 false))

(declare-fun d!85495 () Bool)

(assert (=> d!85495 (isDefined!709 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 call!16291 lt!121229)))))

(declare-fun lt!121556 () Unit!5300)

(assert (=> d!85495 (= lt!121556 e!179490)))

(declare-fun c!54594 () Bool)

(assert (=> d!85495 (= c!54594 (isEmpty!2620 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 call!16291 lt!121229))))))

(declare-fun lt!121560 () Unit!5300)

(declare-fun lt!121566 () Unit!5300)

(assert (=> d!85495 (= lt!121560 lt!121566)))

(declare-fun e!179491 () Bool)

(assert (=> d!85495 e!179491))

(declare-fun res!131676 () Bool)

(assert (=> d!85495 (=> (not res!131676) (not e!179491))))

(assert (=> d!85495 (= res!131676 (isDefined!712 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!121562)))))))

(assert (=> d!85495 (= lt!121566 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!138 thiss!17480 rules!1920 call!16291 lt!121562))))

(declare-fun lt!121564 () Unit!5300)

(declare-fun lt!121561 () Unit!5300)

(assert (=> d!85495 (= lt!121564 lt!121561)))

(declare-fun lt!121557 () List!3953)

(assert (=> d!85495 (isPrefix!419 lt!121557 (++!1050 call!16291 lt!121229))))

(assert (=> d!85495 (= lt!121561 (lemmaPrefixStaysPrefixWhenAddingToSuffix!62 lt!121557 call!16291 lt!121229))))

(assert (=> d!85495 (= lt!121557 (list!1645 (charsOf!398 lt!121562)))))

(declare-fun lt!121563 () Unit!5300)

(declare-fun lt!121553 () Unit!5300)

(assert (=> d!85495 (= lt!121563 lt!121553)))

(declare-fun lt!121555 () List!3953)

(declare-fun lt!121552 () List!3953)

(assert (=> d!85495 (isPrefix!419 lt!121555 (++!1050 lt!121555 lt!121552))))

(assert (=> d!85495 (= lt!121553 (lemmaConcatTwoListThenFirstIsPrefix!314 lt!121555 lt!121552))))

(assert (=> d!85495 (= lt!121552 (_2!2457 (get!1329 (maxPrefix!357 thiss!17480 rules!1920 call!16291))))))

(assert (=> d!85495 (= lt!121555 (list!1645 (charsOf!398 lt!121562)))))

(assert (=> d!85495 (= lt!121562 (head!930 (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 call!16291))))))))

(assert (=> d!85495 (not (isEmpty!2609 rules!1920))))

(assert (=> d!85495 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 call!16291 lt!121229) lt!121556)))

(declare-fun b!288342 () Bool)

(declare-fun res!131675 () Bool)

(assert (=> b!288342 (=> (not res!131675) (not e!179491))))

(assert (=> b!288342 (= res!131675 (matchR!297 (regex!755 (get!1333 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!121562))))) (list!1645 (charsOf!398 lt!121562))))))

(declare-fun b!288345 () Bool)

(declare-fun Unit!5331 () Unit!5300)

(assert (=> b!288345 (= e!179490 Unit!5331)))

(declare-fun b!288343 () Bool)

(assert (=> b!288343 (= e!179491 (= (rule!1354 lt!121562) (get!1333 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!121562))))))))

(assert (= (and d!85495 res!131676) b!288342))

(assert (= (and b!288342 res!131675) b!288343))

(assert (= (and d!85495 c!54594) b!288344))

(assert (= (and d!85495 (not c!54594)) b!288345))

(declare-fun m!373895 () Bool)

(assert (=> b!288344 m!373895))

(declare-fun m!373897 () Bool)

(assert (=> b!288344 m!373897))

(assert (=> b!288344 m!373897))

(declare-fun m!373899 () Bool)

(assert (=> b!288344 m!373899))

(declare-fun m!373901 () Bool)

(assert (=> b!288344 m!373901))

(declare-fun m!373903 () Bool)

(assert (=> b!288344 m!373903))

(declare-fun m!373905 () Bool)

(assert (=> b!288344 m!373905))

(declare-fun m!373907 () Bool)

(assert (=> b!288344 m!373907))

(declare-fun m!373909 () Bool)

(assert (=> b!288344 m!373909))

(assert (=> b!288344 m!373905))

(assert (=> b!288344 m!373901))

(declare-fun m!373911 () Bool)

(assert (=> d!85495 m!373911))

(declare-fun m!373913 () Bool)

(assert (=> d!85495 m!373913))

(declare-fun m!373915 () Bool)

(assert (=> d!85495 m!373915))

(assert (=> d!85495 m!373911))

(declare-fun m!373917 () Bool)

(assert (=> d!85495 m!373917))

(declare-fun m!373919 () Bool)

(assert (=> d!85495 m!373919))

(declare-fun m!373921 () Bool)

(assert (=> d!85495 m!373921))

(declare-fun m!373923 () Bool)

(assert (=> d!85495 m!373923))

(declare-fun m!373925 () Bool)

(assert (=> d!85495 m!373925))

(assert (=> d!85495 m!373901))

(assert (=> d!85495 m!373913))

(assert (=> d!85495 m!373925))

(declare-fun m!373927 () Bool)

(assert (=> d!85495 m!373927))

(declare-fun m!373929 () Bool)

(assert (=> d!85495 m!373929))

(declare-fun m!373931 () Bool)

(assert (=> d!85495 m!373931))

(assert (=> d!85495 m!373921))

(assert (=> d!85495 m!373901))

(declare-fun m!373933 () Bool)

(assert (=> d!85495 m!373933))

(assert (=> d!85495 m!373901))

(declare-fun m!373935 () Bool)

(assert (=> d!85495 m!373935))

(assert (=> d!85495 m!373897))

(declare-fun m!373937 () Bool)

(assert (=> d!85495 m!373937))

(declare-fun m!373939 () Bool)

(assert (=> d!85495 m!373939))

(assert (=> d!85495 m!373937))

(declare-fun m!373941 () Bool)

(assert (=> d!85495 m!373941))

(assert (=> d!85495 m!373897))

(assert (=> d!85495 m!373899))

(assert (=> d!85495 m!371723))

(assert (=> d!85495 m!373913))

(declare-fun m!373943 () Bool)

(assert (=> d!85495 m!373943))

(assert (=> d!85495 m!373929))

(assert (=> b!288342 m!373897))

(assert (=> b!288342 m!373897))

(assert (=> b!288342 m!373899))

(assert (=> b!288342 m!373911))

(declare-fun m!373945 () Bool)

(assert (=> b!288342 m!373945))

(assert (=> b!288342 m!373899))

(declare-fun m!373947 () Bool)

(assert (=> b!288342 m!373947))

(assert (=> b!288342 m!373911))

(assert (=> b!288343 m!373911))

(assert (=> b!288343 m!373911))

(assert (=> b!288343 m!373945))

(assert (=> b!287864 d!85495))

(declare-fun b!288354 () Bool)

(declare-fun e!179496 () List!3953)

(assert (=> b!288354 (= e!179496 Nil!3943)))

(declare-fun b!288356 () Bool)

(declare-fun e!179497 () List!3953)

(declare-fun list!1652 (IArray!2665) List!3953)

(assert (=> b!288356 (= e!179497 (list!1652 (xs!3931 (c!54354 (seqFromList!875 lt!120868)))))))

(declare-fun d!85497 () Bool)

(declare-fun c!54599 () Bool)

(assert (=> d!85497 (= c!54599 ((_ is Empty!1332) (c!54354 (seqFromList!875 lt!120868))))))

(assert (=> d!85497 (= (list!1649 (c!54354 (seqFromList!875 lt!120868))) e!179496)))

(declare-fun b!288357 () Bool)

(assert (=> b!288357 (= e!179497 (++!1050 (list!1649 (left!3260 (c!54354 (seqFromList!875 lt!120868)))) (list!1649 (right!3590 (c!54354 (seqFromList!875 lt!120868))))))))

(declare-fun b!288355 () Bool)

(assert (=> b!288355 (= e!179496 e!179497)))

(declare-fun c!54600 () Bool)

(assert (=> b!288355 (= c!54600 ((_ is Leaf!2049) (c!54354 (seqFromList!875 lt!120868))))))

(assert (= (and d!85497 c!54599) b!288354))

(assert (= (and d!85497 (not c!54599)) b!288355))

(assert (= (and b!288355 c!54600) b!288356))

(assert (= (and b!288355 (not c!54600)) b!288357))

(declare-fun m!373949 () Bool)

(assert (=> b!288356 m!373949))

(declare-fun m!373951 () Bool)

(assert (=> b!288357 m!373951))

(declare-fun m!373953 () Bool)

(assert (=> b!288357 m!373953))

(assert (=> b!288357 m!373951))

(assert (=> b!288357 m!373953))

(declare-fun m!373955 () Bool)

(assert (=> b!288357 m!373955))

(assert (=> d!85073 d!85497))

(declare-fun d!85499 () Bool)

(assert (=> d!85499 (= (list!1645 (ite c!54406 call!16230 e!178986)) (list!1649 (c!54354 (ite c!54406 call!16230 e!178986))))))

(declare-fun bs!32603 () Bool)

(assert (= bs!32603 d!85499))

(declare-fun m!373957 () Bool)

(assert (=> bs!32603 m!373957))

(assert (=> bm!16225 d!85499))

(declare-fun b!288358 () Bool)

(declare-fun e!179499 () List!3953)

(assert (=> b!288358 (= e!179499 lt!121229)))

(declare-fun b!288360 () Bool)

(declare-fun res!131678 () Bool)

(declare-fun e!179498 () Bool)

(assert (=> b!288360 (=> (not res!131678) (not e!179498))))

(declare-fun lt!121567 () List!3953)

(assert (=> b!288360 (= res!131678 (= (size!3163 lt!121567) (+ (size!3163 call!16292) (size!3163 lt!121229))))))

(declare-fun b!288359 () Bool)

(assert (=> b!288359 (= e!179499 (Cons!3943 (h!9340 call!16292) (++!1050 (t!40181 call!16292) lt!121229)))))

(declare-fun d!85501 () Bool)

(assert (=> d!85501 e!179498))

(declare-fun res!131677 () Bool)

(assert (=> d!85501 (=> (not res!131677) (not e!179498))))

(assert (=> d!85501 (= res!131677 (= (content!579 lt!121567) ((_ map or) (content!579 call!16292) (content!579 lt!121229))))))

(assert (=> d!85501 (= lt!121567 e!179499)))

(declare-fun c!54601 () Bool)

(assert (=> d!85501 (= c!54601 ((_ is Nil!3943) call!16292))))

(assert (=> d!85501 (= (++!1050 call!16292 lt!121229) lt!121567)))

(declare-fun b!288361 () Bool)

(assert (=> b!288361 (= e!179498 (or (not (= lt!121229 Nil!3943)) (= lt!121567 call!16292)))))

(assert (= (and d!85501 c!54601) b!288358))

(assert (= (and d!85501 (not c!54601)) b!288359))

(assert (= (and d!85501 res!131677) b!288360))

(assert (= (and b!288360 res!131678) b!288361))

(declare-fun m!373959 () Bool)

(assert (=> b!288360 m!373959))

(declare-fun m!373961 () Bool)

(assert (=> b!288360 m!373961))

(declare-fun m!373963 () Bool)

(assert (=> b!288360 m!373963))

(declare-fun m!373965 () Bool)

(assert (=> b!288359 m!373965))

(declare-fun m!373967 () Bool)

(assert (=> d!85501 m!373967))

(declare-fun m!373969 () Bool)

(assert (=> d!85501 m!373969))

(declare-fun m!373971 () Bool)

(assert (=> d!85501 m!373971))

(assert (=> b!287861 d!85501))

(declare-fun d!85503 () Bool)

(declare-fun e!179502 () Bool)

(assert (=> d!85503 e!179502))

(declare-fun res!131681 () Bool)

(assert (=> d!85503 (=> (not res!131681) (not e!179502))))

(declare-fun lt!121570 () BalanceConc!2674)

(assert (=> d!85503 (= res!131681 (= (list!1648 lt!121570) tokens!465))))

(declare-fun fromList!187 (List!3955) Conc!1333)

(assert (=> d!85503 (= lt!121570 (BalanceConc!2675 (fromList!187 tokens!465)))))

(assert (=> d!85503 (= (fromListB!358 tokens!465) lt!121570)))

(declare-fun b!288364 () Bool)

(assert (=> b!288364 (= e!179502 (isBalanced!374 (fromList!187 tokens!465)))))

(assert (= (and d!85503 res!131681) b!288364))

(declare-fun m!373973 () Bool)

(assert (=> d!85503 m!373973))

(declare-fun m!373975 () Bool)

(assert (=> d!85503 m!373975))

(assert (=> b!288364 m!373975))

(assert (=> b!288364 m!373975))

(declare-fun m!373977 () Bool)

(assert (=> b!288364 m!373977))

(assert (=> d!85021 d!85503))

(declare-fun d!85505 () Bool)

(declare-fun res!131682 () Bool)

(declare-fun e!179503 () Bool)

(assert (=> d!85505 (=> res!131682 e!179503)))

(assert (=> d!85505 (= res!131682 ((_ is Nil!3945) (t!40183 tokens!465)))))

(assert (=> d!85505 (= (forall!1016 (t!40183 tokens!465) lambda!9843) e!179503)))

(declare-fun b!288365 () Bool)

(declare-fun e!179504 () Bool)

(assert (=> b!288365 (= e!179503 e!179504)))

(declare-fun res!131683 () Bool)

(assert (=> b!288365 (=> (not res!131683) (not e!179504))))

(assert (=> b!288365 (= res!131683 (dynLambda!2094 lambda!9843 (h!9342 (t!40183 tokens!465))))))

(declare-fun b!288366 () Bool)

(assert (=> b!288366 (= e!179504 (forall!1016 (t!40183 (t!40183 tokens!465)) lambda!9843))))

(assert (= (and d!85505 (not res!131682)) b!288365))

(assert (= (and b!288365 res!131683) b!288366))

(declare-fun b_lambda!9581 () Bool)

(assert (=> (not b_lambda!9581) (not b!288365)))

(declare-fun m!373979 () Bool)

(assert (=> b!288365 m!373979))

(declare-fun m!373981 () Bool)

(assert (=> b!288366 m!373981))

(assert (=> b!287421 d!85505))

(declare-fun b!288367 () Bool)

(declare-fun e!179506 () List!3953)

(assert (=> b!288367 (= e!179506 lt!120870)))

(declare-fun b!288369 () Bool)

(declare-fun res!131685 () Bool)

(declare-fun e!179505 () Bool)

(assert (=> b!288369 (=> (not res!131685) (not e!179505))))

(declare-fun lt!121571 () List!3953)

(assert (=> b!288369 (= res!131685 (= (size!3163 lt!121571) (+ (size!3163 (t!40181 lt!120875)) (size!3163 lt!120870))))))

(declare-fun b!288368 () Bool)

(assert (=> b!288368 (= e!179506 (Cons!3943 (h!9340 (t!40181 lt!120875)) (++!1050 (t!40181 (t!40181 lt!120875)) lt!120870)))))

(declare-fun d!85507 () Bool)

(assert (=> d!85507 e!179505))

(declare-fun res!131684 () Bool)

(assert (=> d!85507 (=> (not res!131684) (not e!179505))))

(assert (=> d!85507 (= res!131684 (= (content!579 lt!121571) ((_ map or) (content!579 (t!40181 lt!120875)) (content!579 lt!120870))))))

(assert (=> d!85507 (= lt!121571 e!179506)))

(declare-fun c!54603 () Bool)

(assert (=> d!85507 (= c!54603 ((_ is Nil!3943) (t!40181 lt!120875)))))

(assert (=> d!85507 (= (++!1050 (t!40181 lt!120875) lt!120870) lt!121571)))

(declare-fun b!288370 () Bool)

(assert (=> b!288370 (= e!179505 (or (not (= lt!120870 Nil!3943)) (= lt!121571 (t!40181 lt!120875))))))

(assert (= (and d!85507 c!54603) b!288367))

(assert (= (and d!85507 (not c!54603)) b!288368))

(assert (= (and d!85507 res!131684) b!288369))

(assert (= (and b!288369 res!131685) b!288370))

(declare-fun m!373983 () Bool)

(assert (=> b!288369 m!373983))

(declare-fun m!373985 () Bool)

(assert (=> b!288369 m!373985))

(assert (=> b!288369 m!372021))

(declare-fun m!373987 () Bool)

(assert (=> b!288368 m!373987))

(declare-fun m!373989 () Bool)

(assert (=> d!85507 m!373989))

(assert (=> d!85507 m!373279))

(assert (=> d!85507 m!372029))

(assert (=> b!287434 d!85507))

(declare-fun d!85509 () Bool)

(declare-fun lt!121574 () Int)

(assert (=> d!85509 (>= lt!121574 0)))

(declare-fun e!179511 () Int)

(assert (=> d!85509 (= lt!121574 e!179511)))

(declare-fun c!54604 () Bool)

(assert (=> d!85509 (= c!54604 ((_ is Nil!3943) lt!121066))))

(assert (=> d!85509 (= (size!3163 lt!121066) lt!121574)))

(declare-fun b!288375 () Bool)

(assert (=> b!288375 (= e!179511 0)))

(declare-fun b!288376 () Bool)

(assert (=> b!288376 (= e!179511 (+ 1 (size!3163 (t!40181 lt!121066))))))

(assert (= (and d!85509 c!54604) b!288375))

(assert (= (and d!85509 (not c!54604)) b!288376))

(declare-fun m!373991 () Bool)

(assert (=> b!288376 m!373991))

(assert (=> b!287630 d!85509))

(declare-fun d!85511 () Bool)

(declare-fun lt!121575 () Int)

(assert (=> d!85511 (>= lt!121575 0)))

(declare-fun e!179512 () Int)

(assert (=> d!85511 (= lt!121575 e!179512)))

(declare-fun c!54605 () Bool)

(assert (=> d!85511 (= c!54605 ((_ is Nil!3943) lt!120875))))

(assert (=> d!85511 (= (size!3163 lt!120875) lt!121575)))

(declare-fun b!288377 () Bool)

(assert (=> b!288377 (= e!179512 0)))

(declare-fun b!288378 () Bool)

(assert (=> b!288378 (= e!179512 (+ 1 (size!3163 (t!40181 lt!120875))))))

(assert (= (and d!85511 c!54605) b!288377))

(assert (= (and d!85511 (not c!54605)) b!288378))

(assert (=> b!288378 m!373985))

(assert (=> b!287630 d!85511))

(declare-fun d!85513 () Bool)

(declare-fun lt!121576 () Int)

(assert (=> d!85513 (>= lt!121576 0)))

(declare-fun e!179513 () Int)

(assert (=> d!85513 (= lt!121576 e!179513)))

(declare-fun c!54606 () Bool)

(assert (=> d!85513 (= c!54606 ((_ is Nil!3943) lt!120874))))

(assert (=> d!85513 (= (size!3163 lt!120874) lt!121576)))

(declare-fun b!288379 () Bool)

(assert (=> b!288379 (= e!179513 0)))

(declare-fun b!288380 () Bool)

(assert (=> b!288380 (= e!179513 (+ 1 (size!3163 (t!40181 lt!120874))))))

(assert (= (and d!85513 c!54606) b!288379))

(assert (= (and d!85513 (not c!54606)) b!288380))

(declare-fun m!373993 () Bool)

(assert (=> b!288380 m!373993))

(assert (=> b!287630 d!85513))

(declare-fun d!85515 () Bool)

(assert (=> d!85515 (= (list!1645 call!16288) (list!1649 (c!54354 call!16288)))))

(declare-fun bs!32604 () Bool)

(assert (= bs!32604 d!85515))

(declare-fun m!373995 () Bool)

(assert (=> bs!32604 m!373995))

(assert (=> b!287866 d!85515))

(declare-fun d!85517 () Bool)

(declare-fun lt!121577 () Int)

(assert (=> d!85517 (= lt!121577 (size!3164 (list!1648 (_1!2459 lt!120905))))))

(assert (=> d!85517 (= lt!121577 (size!3165 (c!54356 (_1!2459 lt!120905))))))

(assert (=> d!85517 (= (size!3161 (_1!2459 lt!120905)) lt!121577)))

(declare-fun bs!32605 () Bool)

(assert (= bs!32605 d!85517))

(declare-fun m!373997 () Bool)

(assert (=> bs!32605 m!373997))

(assert (=> bs!32605 m!373997))

(declare-fun m!373999 () Bool)

(assert (=> bs!32605 m!373999))

(declare-fun m!374001 () Bool)

(assert (=> bs!32605 m!374001))

(assert (=> d!85023 d!85517))

(declare-fun d!85519 () Bool)

(declare-fun e!179514 () Bool)

(assert (=> d!85519 e!179514))

(declare-fun res!131690 () Bool)

(assert (=> d!85519 (=> (not res!131690) (not e!179514))))

(declare-fun lt!121578 () BalanceConc!2674)

(assert (=> d!85519 (= res!131690 (= (list!1648 lt!121578) (Cons!3945 separatorToken!170 Nil!3945)))))

(assert (=> d!85519 (= lt!121578 (singleton!131 separatorToken!170))))

(assert (=> d!85519 (= (singletonSeq!301 separatorToken!170) lt!121578)))

(declare-fun b!288381 () Bool)

(assert (=> b!288381 (= e!179514 (isBalanced!374 (c!54356 lt!121578)))))

(assert (= (and d!85519 res!131690) b!288381))

(declare-fun m!374003 () Bool)

(assert (=> d!85519 m!374003))

(declare-fun m!374005 () Bool)

(assert (=> d!85519 m!374005))

(declare-fun m!374007 () Bool)

(assert (=> b!288381 m!374007))

(assert (=> d!85023 d!85519))

(declare-fun d!85521 () Bool)

(assert (=> d!85521 (= (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170))))) (list!1650 (c!54356 (_1!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170)))))))))

(declare-fun bs!32606 () Bool)

(assert (= bs!32606 d!85521))

(declare-fun m!374009 () Bool)

(assert (=> bs!32606 m!374009))

(assert (=> d!85023 d!85521))

(declare-fun b!288383 () Bool)

(declare-fun e!179515 () Bool)

(declare-fun lt!121579 () tuple2!4486)

(assert (=> b!288383 (= e!179515 (= (list!1645 (_2!2459 lt!121579)) (_2!2461 (lexList!227 thiss!17480 rules!1920 (list!1645 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170)))))))))

(declare-fun b!288384 () Bool)

(declare-fun res!131692 () Bool)

(assert (=> b!288384 (=> (not res!131692) (not e!179515))))

(assert (=> b!288384 (= res!131692 (= (list!1648 (_1!2459 lt!121579)) (_1!2461 (lexList!227 thiss!17480 rules!1920 (list!1645 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170)))))))))

(declare-fun b!288385 () Bool)

(declare-fun e!179516 () Bool)

(assert (=> b!288385 (= e!179516 (= (_2!2459 lt!121579) (print!366 thiss!17480 (singletonSeq!301 separatorToken!170))))))

(declare-fun b!288386 () Bool)

(declare-fun e!179517 () Bool)

(assert (=> b!288386 (= e!179516 e!179517)))

(declare-fun res!131693 () Bool)

(assert (=> b!288386 (= res!131693 (< (size!3162 (_2!2459 lt!121579)) (size!3162 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170)))))))

(assert (=> b!288386 (=> (not res!131693) (not e!179517))))

(declare-fun b!288382 () Bool)

(assert (=> b!288382 (= e!179517 (not (isEmpty!2610 (_1!2459 lt!121579))))))

(declare-fun d!85523 () Bool)

(assert (=> d!85523 e!179515))

(declare-fun res!131691 () Bool)

(assert (=> d!85523 (=> (not res!131691) (not e!179515))))

(assert (=> d!85523 (= res!131691 e!179516)))

(declare-fun c!54607 () Bool)

(assert (=> d!85523 (= c!54607 (> (size!3161 (_1!2459 lt!121579)) 0))))

(assert (=> d!85523 (= lt!121579 (lexTailRecV2!194 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170)) (BalanceConc!2673 Empty!1332) (print!366 thiss!17480 (singletonSeq!301 separatorToken!170)) (BalanceConc!2675 Empty!1333)))))

(assert (=> d!85523 (= (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170))) lt!121579)))

(assert (= (and d!85523 c!54607) b!288386))

(assert (= (and d!85523 (not c!54607)) b!288385))

(assert (= (and b!288386 res!131693) b!288382))

(assert (= (and d!85523 res!131691) b!288384))

(assert (= (and b!288384 res!131692) b!288383))

(declare-fun m!374011 () Bool)

(assert (=> b!288384 m!374011))

(assert (=> b!288384 m!371881))

(declare-fun m!374013 () Bool)

(assert (=> b!288384 m!374013))

(assert (=> b!288384 m!374013))

(declare-fun m!374015 () Bool)

(assert (=> b!288384 m!374015))

(declare-fun m!374017 () Bool)

(assert (=> d!85523 m!374017))

(assert (=> d!85523 m!371881))

(assert (=> d!85523 m!371881))

(declare-fun m!374019 () Bool)

(assert (=> d!85523 m!374019))

(declare-fun m!374021 () Bool)

(assert (=> b!288386 m!374021))

(assert (=> b!288386 m!371881))

(declare-fun m!374023 () Bool)

(assert (=> b!288386 m!374023))

(declare-fun m!374025 () Bool)

(assert (=> b!288383 m!374025))

(assert (=> b!288383 m!371881))

(assert (=> b!288383 m!374013))

(assert (=> b!288383 m!374013))

(assert (=> b!288383 m!374015))

(declare-fun m!374027 () Bool)

(assert (=> b!288382 m!374027))

(assert (=> d!85023 d!85523))

(declare-fun d!85525 () Bool)

(assert (=> d!85525 (= (list!1648 (singletonSeq!301 separatorToken!170)) (list!1650 (c!54356 (singletonSeq!301 separatorToken!170))))))

(declare-fun bs!32607 () Bool)

(assert (= bs!32607 d!85525))

(declare-fun m!374029 () Bool)

(assert (=> bs!32607 m!374029))

(assert (=> d!85023 d!85525))

(declare-fun d!85527 () Bool)

(declare-fun lt!121580 () BalanceConc!2672)

(assert (=> d!85527 (= (list!1645 lt!121580) (printList!315 thiss!17480 (list!1648 (singletonSeq!301 separatorToken!170))))))

(assert (=> d!85527 (= lt!121580 (printTailRec!327 thiss!17480 (singletonSeq!301 separatorToken!170) 0 (BalanceConc!2673 Empty!1332)))))

(assert (=> d!85527 (= (print!366 thiss!17480 (singletonSeq!301 separatorToken!170)) lt!121580)))

(declare-fun bs!32608 () Bool)

(assert (= bs!32608 d!85527))

(declare-fun m!374031 () Bool)

(assert (=> bs!32608 m!374031))

(assert (=> bs!32608 m!371877))

(assert (=> bs!32608 m!371885))

(assert (=> bs!32608 m!371885))

(declare-fun m!374033 () Bool)

(assert (=> bs!32608 m!374033))

(assert (=> bs!32608 m!371877))

(declare-fun m!374035 () Bool)

(assert (=> bs!32608 m!374035))

(assert (=> d!85023 d!85527))

(assert (=> d!85023 d!85155))

(declare-fun b!288387 () Bool)

(declare-fun e!179518 () List!3953)

(assert (=> b!288387 (= e!179518 Nil!3943)))

(declare-fun b!288389 () Bool)

(declare-fun e!179519 () List!3953)

(assert (=> b!288389 (= e!179519 (list!1652 (xs!3931 (c!54354 (charsOf!398 (h!9342 tokens!465))))))))

(declare-fun d!85529 () Bool)

(declare-fun c!54608 () Bool)

(assert (=> d!85529 (= c!54608 ((_ is Empty!1332) (c!54354 (charsOf!398 (h!9342 tokens!465)))))))

(assert (=> d!85529 (= (list!1649 (c!54354 (charsOf!398 (h!9342 tokens!465)))) e!179518)))

(declare-fun b!288390 () Bool)

(assert (=> b!288390 (= e!179519 (++!1050 (list!1649 (left!3260 (c!54354 (charsOf!398 (h!9342 tokens!465))))) (list!1649 (right!3590 (c!54354 (charsOf!398 (h!9342 tokens!465)))))))))

(declare-fun b!288388 () Bool)

(assert (=> b!288388 (= e!179518 e!179519)))

(declare-fun c!54609 () Bool)

(assert (=> b!288388 (= c!54609 ((_ is Leaf!2049) (c!54354 (charsOf!398 (h!9342 tokens!465)))))))

(assert (= (and d!85529 c!54608) b!288387))

(assert (= (and d!85529 (not c!54608)) b!288388))

(assert (= (and b!288388 c!54609) b!288389))

(assert (= (and b!288388 (not c!54609)) b!288390))

(declare-fun m!374037 () Bool)

(assert (=> b!288389 m!374037))

(declare-fun m!374039 () Bool)

(assert (=> b!288390 m!374039))

(declare-fun m!374041 () Bool)

(assert (=> b!288390 m!374041))

(assert (=> b!288390 m!374039))

(assert (=> b!288390 m!374041))

(declare-fun m!374043 () Bool)

(assert (=> b!288390 m!374043))

(assert (=> d!85127 d!85529))

(declare-fun d!85531 () Bool)

(declare-fun lt!121581 () Bool)

(assert (=> d!85531 (= lt!121581 (isEmpty!2618 (list!1645 (_2!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170)))))))))

(assert (=> d!85531 (= lt!121581 (isEmpty!2623 (c!54354 (_2!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170)))))))))

(assert (=> d!85531 (= (isEmpty!2615 (_2!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 separatorToken!170))))) lt!121581)))

(declare-fun bs!32609 () Bool)

(assert (= bs!32609 d!85531))

(declare-fun m!374045 () Bool)

(assert (=> bs!32609 m!374045))

(assert (=> bs!32609 m!374045))

(declare-fun m!374047 () Bool)

(assert (=> bs!32609 m!374047))

(declare-fun m!374049 () Bool)

(assert (=> bs!32609 m!374049))

(assert (=> b!287339 d!85531))

(assert (=> b!287339 d!85523))

(assert (=> b!287339 d!85527))

(assert (=> b!287339 d!85519))

(declare-fun d!85533 () Bool)

(assert (=> d!85533 (= (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170))) (isBalanced!377 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170)))))))

(declare-fun bs!32613 () Bool)

(assert (= bs!32613 d!85533))

(declare-fun m!374051 () Bool)

(assert (=> bs!32613 m!374051))

(assert (=> tb!16633 d!85533))

(declare-fun d!85535 () Bool)

(assert (=> d!85535 (= (tail!512 (drop!235 lt!121218 0)) (t!40183 (drop!235 lt!121218 0)))))

(assert (=> b!287848 d!85535))

(declare-fun d!85537 () Bool)

(declare-fun lt!121583 () Token!1254)

(assert (=> d!85537 (contains!770 lt!121216 lt!121583)))

(declare-fun e!179526 () Token!1254)

(assert (=> d!85537 (= lt!121583 e!179526)))

(declare-fun c!54610 () Bool)

(assert (=> d!85537 (= c!54610 (= 0 0))))

(declare-fun e!179525 () Bool)

(assert (=> d!85537 e!179525))

(declare-fun res!131696 () Bool)

(assert (=> d!85537 (=> (not res!131696) (not e!179525))))

(assert (=> d!85537 (= res!131696 (<= 0 0))))

(assert (=> d!85537 (= (apply!843 lt!121216 0) lt!121583)))

(declare-fun b!288396 () Bool)

(assert (=> b!288396 (= e!179525 (< 0 (size!3164 lt!121216)))))

(declare-fun b!288397 () Bool)

(assert (=> b!288397 (= e!179526 (head!930 lt!121216))))

(declare-fun b!288398 () Bool)

(assert (=> b!288398 (= e!179526 (apply!843 (tail!512 lt!121216) (- 0 1)))))

(assert (= (and d!85537 res!131696) b!288396))

(assert (= (and d!85537 c!54610) b!288397))

(assert (= (and d!85537 (not c!54610)) b!288398))

(declare-fun m!374053 () Bool)

(assert (=> d!85537 m!374053))

(declare-fun m!374055 () Bool)

(assert (=> b!288396 m!374055))

(declare-fun m!374057 () Bool)

(assert (=> b!288397 m!374057))

(declare-fun m!374059 () Bool)

(assert (=> b!288398 m!374059))

(assert (=> b!288398 m!374059))

(declare-fun m!374061 () Bool)

(assert (=> b!288398 m!374061))

(assert (=> b!287848 d!85537))

(declare-fun call!16332 () Option!871)

(declare-fun bm!16327 () Bool)

(assert (=> bm!16327 (= call!16332 (maxPrefixOneRuleZipperSequence!129 thiss!17480 (h!9341 rules!1920) (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221)))))

(declare-fun d!85539 () Bool)

(declare-fun e!179529 () Bool)

(assert (=> d!85539 e!179529))

(declare-fun res!131702 () Bool)

(assert (=> d!85539 (=> (not res!131702) (not e!179529))))

(declare-fun lt!121588 () Option!871)

(assert (=> d!85539 (= res!131702 (= (isDefined!710 lt!121588) (isDefined!709 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221))))))))

(declare-fun e!179530 () Option!871)

(assert (=> d!85539 (= lt!121588 e!179530)))

(declare-fun c!54611 () Bool)

(assert (=> d!85539 (= c!54611 (and ((_ is Cons!3944) rules!1920) ((_ is Nil!3944) (t!40182 rules!1920))))))

(declare-fun lt!121586 () Unit!5300)

(declare-fun lt!121584 () Unit!5300)

(assert (=> d!85539 (= lt!121586 lt!121584)))

(declare-fun lt!121590 () List!3953)

(declare-fun lt!121587 () List!3953)

(assert (=> d!85539 (isPrefix!419 lt!121590 lt!121587)))

(assert (=> d!85539 (= lt!121584 (lemmaIsPrefixRefl!225 lt!121590 lt!121587))))

(assert (=> d!85539 (= lt!121587 (list!1645 (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221)))))

(assert (=> d!85539 (= lt!121590 (list!1645 (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221)))))

(assert (=> d!85539 (rulesValidInductive!220 thiss!17480 rules!1920)))

(assert (=> d!85539 (= (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221)) lt!121588)))

(declare-fun b!288399 () Bool)

(declare-fun lt!121585 () Option!871)

(declare-fun lt!121589 () Option!871)

(assert (=> b!288399 (= e!179530 (ite (and ((_ is None!870) lt!121585) ((_ is None!870) lt!121589)) None!870 (ite ((_ is None!870) lt!121589) lt!121585 (ite ((_ is None!870) lt!121585) lt!121589 (ite (>= (size!3157 (_1!2458 (v!14811 lt!121585))) (size!3157 (_1!2458 (v!14811 lt!121589)))) lt!121585 lt!121589)))))))

(assert (=> b!288399 (= lt!121585 call!16332)))

(assert (=> b!288399 (= lt!121589 (maxPrefixZipperSequence!320 thiss!17480 (t!40182 rules!1920) (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221)))))

(declare-fun b!288400 () Bool)

(assert (=> b!288400 (= e!179530 call!16332)))

(declare-fun e!179531 () Bool)

(declare-fun b!288401 () Bool)

(assert (=> b!288401 (= e!179531 (= (list!1645 (_2!2458 (get!1331 lt!121588))) (_2!2457 (get!1329 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221)))))))))

(declare-fun b!288402 () Bool)

(declare-fun e!179532 () Bool)

(assert (=> b!288402 (= e!179532 e!179531)))

(declare-fun res!131701 () Bool)

(assert (=> b!288402 (=> (not res!131701) (not e!179531))))

(assert (=> b!288402 (= res!131701 (= (_1!2458 (get!1331 lt!121588)) (_1!2457 (get!1329 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221)))))))))

(declare-fun b!288403 () Bool)

(assert (=> b!288403 (= e!179529 e!179532)))

(declare-fun res!131699 () Bool)

(assert (=> b!288403 (=> res!131699 e!179532)))

(assert (=> b!288403 (= res!131699 (not (isDefined!710 lt!121588)))))

(declare-fun b!288404 () Bool)

(declare-fun res!131697 () Bool)

(assert (=> b!288404 (=> (not res!131697) (not e!179529))))

(declare-fun e!179527 () Bool)

(assert (=> b!288404 (= res!131697 e!179527)))

(declare-fun res!131698 () Bool)

(assert (=> b!288404 (=> res!131698 e!179527)))

(assert (=> b!288404 (= res!131698 (not (isDefined!710 lt!121588)))))

(declare-fun b!288405 () Bool)

(declare-fun e!179528 () Bool)

(assert (=> b!288405 (= e!179527 e!179528)))

(declare-fun res!131700 () Bool)

(assert (=> b!288405 (=> (not res!131700) (not e!179528))))

(assert (=> b!288405 (= res!131700 (= (_1!2458 (get!1331 lt!121588)) (_1!2457 (get!1329 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221)))))))))

(declare-fun b!288406 () Bool)

(assert (=> b!288406 (= e!179528 (= (list!1645 (_2!2458 (get!1331 lt!121588))) (_2!2457 (get!1329 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221)))))))))

(assert (= (and d!85539 c!54611) b!288400))

(assert (= (and d!85539 (not c!54611)) b!288399))

(assert (= (or b!288400 b!288399) bm!16327))

(assert (= (and d!85539 res!131702) b!288404))

(assert (= (and b!288404 (not res!131698)) b!288405))

(assert (= (and b!288405 res!131700) b!288406))

(assert (= (and b!288404 res!131697) b!288403))

(assert (= (and b!288403 (not res!131699)) b!288402))

(assert (= (and b!288402 res!131701) b!288401))

(declare-fun m!374075 () Bool)

(assert (=> b!288403 m!374075))

(assert (=> d!85539 m!372499))

(declare-fun m!374077 () Bool)

(assert (=> d!85539 m!374077))

(declare-fun m!374079 () Bool)

(assert (=> d!85539 m!374079))

(declare-fun m!374081 () Bool)

(assert (=> d!85539 m!374081))

(assert (=> d!85539 m!374077))

(declare-fun m!374083 () Bool)

(assert (=> d!85539 m!374083))

(assert (=> d!85539 m!374075))

(assert (=> d!85539 m!372729))

(assert (=> d!85539 m!374081))

(declare-fun m!374089 () Bool)

(assert (=> d!85539 m!374089))

(assert (=> bm!16327 m!372729))

(declare-fun m!374093 () Bool)

(assert (=> bm!16327 m!374093))

(declare-fun m!374097 () Bool)

(assert (=> b!288402 m!374097))

(assert (=> b!288402 m!372729))

(assert (=> b!288402 m!374081))

(assert (=> b!288402 m!374081))

(declare-fun m!374103 () Bool)

(assert (=> b!288402 m!374103))

(assert (=> b!288402 m!374103))

(declare-fun m!374107 () Bool)

(assert (=> b!288402 m!374107))

(assert (=> b!288399 m!372729))

(declare-fun m!374113 () Bool)

(assert (=> b!288399 m!374113))

(assert (=> b!288401 m!374081))

(assert (=> b!288401 m!374103))

(assert (=> b!288401 m!372729))

(assert (=> b!288401 m!374081))

(assert (=> b!288401 m!374103))

(assert (=> b!288401 m!374107))

(declare-fun m!374115 () Bool)

(assert (=> b!288401 m!374115))

(assert (=> b!288401 m!374097))

(assert (=> b!288404 m!374075))

(assert (=> b!288406 m!374081))

(assert (=> b!288406 m!374077))

(assert (=> b!288406 m!372729))

(assert (=> b!288406 m!374081))

(assert (=> b!288406 m!374115))

(assert (=> b!288406 m!374097))

(assert (=> b!288406 m!374077))

(declare-fun m!374123 () Bool)

(assert (=> b!288406 m!374123))

(assert (=> b!288405 m!374097))

(assert (=> b!288405 m!372729))

(assert (=> b!288405 m!374081))

(assert (=> b!288405 m!374081))

(assert (=> b!288405 m!374077))

(assert (=> b!288405 m!374077))

(assert (=> b!288405 m!374123))

(assert (=> b!287848 d!85539))

(declare-fun d!85551 () Bool)

(assert (=> d!85551 (= (list!1648 lt!120873) (list!1650 (c!54356 lt!120873)))))

(declare-fun bs!32624 () Bool)

(assert (= bs!32624 d!85551))

(declare-fun m!374131 () Bool)

(assert (=> bs!32624 m!374131))

(assert (=> b!287848 d!85551))

(declare-fun b!288415 () Bool)

(declare-fun e!179542 () List!3955)

(assert (=> b!288415 (= e!179542 (drop!235 (t!40183 lt!121216) (- 0 1)))))

(declare-fun b!288416 () Bool)

(declare-fun e!179540 () List!3955)

(assert (=> b!288416 (= e!179540 Nil!3945)))

(declare-fun b!288417 () Bool)

(assert (=> b!288417 (= e!179542 lt!121216)))

(declare-fun b!288418 () Bool)

(declare-fun e!179539 () Int)

(declare-fun call!16333 () Int)

(assert (=> b!288418 (= e!179539 (- call!16333 0))))

(declare-fun bm!16328 () Bool)

(assert (=> bm!16328 (= call!16333 (size!3164 lt!121216))))

(declare-fun b!288419 () Bool)

(declare-fun e!179541 () Int)

(assert (=> b!288419 (= e!179541 e!179539)))

(declare-fun c!54614 () Bool)

(assert (=> b!288419 (= c!54614 (>= 0 call!16333))))

(declare-fun d!85553 () Bool)

(declare-fun e!179538 () Bool)

(assert (=> d!85553 e!179538))

(declare-fun res!131707 () Bool)

(assert (=> d!85553 (=> (not res!131707) (not e!179538))))

(declare-fun lt!121595 () List!3955)

(assert (=> d!85553 (= res!131707 (= ((_ map implies) (content!580 lt!121595) (content!580 lt!121216)) ((as const (InoxSet Token!1254)) true)))))

(assert (=> d!85553 (= lt!121595 e!179540)))

(declare-fun c!54617 () Bool)

(assert (=> d!85553 (= c!54617 ((_ is Nil!3945) lt!121216))))

(assert (=> d!85553 (= (drop!235 lt!121216 0) lt!121595)))

(declare-fun b!288420 () Bool)

(assert (=> b!288420 (= e!179539 0)))

(declare-fun b!288421 () Bool)

(assert (=> b!288421 (= e!179540 e!179542)))

(declare-fun c!54615 () Bool)

(assert (=> b!288421 (= c!54615 (<= 0 0))))

(declare-fun b!288422 () Bool)

(assert (=> b!288422 (= e!179538 (= (size!3164 lt!121595) e!179541))))

(declare-fun c!54616 () Bool)

(assert (=> b!288422 (= c!54616 (<= 0 0))))

(declare-fun b!288423 () Bool)

(assert (=> b!288423 (= e!179541 call!16333)))

(assert (= (and d!85553 c!54617) b!288416))

(assert (= (and d!85553 (not c!54617)) b!288421))

(assert (= (and b!288421 c!54615) b!288417))

(assert (= (and b!288421 (not c!54615)) b!288415))

(assert (= (and d!85553 res!131707) b!288422))

(assert (= (and b!288422 c!54616) b!288423))

(assert (= (and b!288422 (not c!54616)) b!288419))

(assert (= (and b!288419 c!54614) b!288420))

(assert (= (and b!288419 (not c!54614)) b!288418))

(assert (= (or b!288423 b!288419 b!288418) bm!16328))

(declare-fun m!374147 () Bool)

(assert (=> b!288415 m!374147))

(assert (=> bm!16328 m!374055))

(declare-fun m!374149 () Bool)

(assert (=> d!85553 m!374149))

(declare-fun m!374151 () Bool)

(assert (=> d!85553 m!374151))

(declare-fun m!374153 () Bool)

(assert (=> b!288422 m!374153))

(assert (=> b!287848 d!85553))

(declare-fun d!85561 () Bool)

(assert (=> d!85561 (= (head!930 (drop!235 lt!121216 0)) (h!9342 (drop!235 lt!121216 0)))))

(assert (=> b!287848 d!85561))

(declare-fun d!85563 () Bool)

(assert (=> d!85563 (= (tail!512 (drop!235 lt!121218 0)) (drop!235 lt!121218 (+ 0 1)))))

(declare-fun lt!121598 () Unit!5300)

(assert (=> d!85563 (= lt!121598 (choose!2597 lt!121218 0))))

(declare-fun e!179544 () Bool)

(assert (=> d!85563 e!179544))

(declare-fun res!131708 () Bool)

(assert (=> d!85563 (=> (not res!131708) (not e!179544))))

(assert (=> d!85563 (= res!131708 (>= 0 0))))

(assert (=> d!85563 (= (lemmaDropTail!214 lt!121218 0) lt!121598)))

(declare-fun b!288426 () Bool)

(assert (=> b!288426 (= e!179544 (< 0 (size!3164 lt!121218)))))

(assert (= (and d!85563 res!131708) b!288426))

(assert (=> d!85563 m!372731))

(assert (=> d!85563 m!372731))

(assert (=> d!85563 m!372733))

(assert (=> d!85563 m!372743))

(declare-fun m!374155 () Bool)

(assert (=> d!85563 m!374155))

(declare-fun m!374157 () Bool)

(assert (=> b!288426 m!374157))

(assert (=> b!287848 d!85563))

(declare-fun b!288428 () Bool)

(declare-fun e!179550 () List!3955)

(assert (=> b!288428 (= e!179550 (drop!235 (t!40183 lt!121218) (- 0 1)))))

(declare-fun b!288429 () Bool)

(declare-fun e!179548 () List!3955)

(assert (=> b!288429 (= e!179548 Nil!3945)))

(declare-fun b!288430 () Bool)

(assert (=> b!288430 (= e!179550 lt!121218)))

(declare-fun b!288431 () Bool)

(declare-fun e!179547 () Int)

(declare-fun call!16334 () Int)

(assert (=> b!288431 (= e!179547 (- call!16334 0))))

(declare-fun bm!16329 () Bool)

(assert (=> bm!16329 (= call!16334 (size!3164 lt!121218))))

(declare-fun b!288432 () Bool)

(declare-fun e!179549 () Int)

(assert (=> b!288432 (= e!179549 e!179547)))

(declare-fun c!54619 () Bool)

(assert (=> b!288432 (= c!54619 (>= 0 call!16334))))

(declare-fun d!85565 () Bool)

(declare-fun e!179546 () Bool)

(assert (=> d!85565 e!179546))

(declare-fun res!131709 () Bool)

(assert (=> d!85565 (=> (not res!131709) (not e!179546))))

(declare-fun lt!121599 () List!3955)

(assert (=> d!85565 (= res!131709 (= ((_ map implies) (content!580 lt!121599) (content!580 lt!121218)) ((as const (InoxSet Token!1254)) true)))))

(assert (=> d!85565 (= lt!121599 e!179548)))

(declare-fun c!54622 () Bool)

(assert (=> d!85565 (= c!54622 ((_ is Nil!3945) lt!121218))))

(assert (=> d!85565 (= (drop!235 lt!121218 0) lt!121599)))

(declare-fun b!288433 () Bool)

(assert (=> b!288433 (= e!179547 0)))

(declare-fun b!288434 () Bool)

(assert (=> b!288434 (= e!179548 e!179550)))

(declare-fun c!54620 () Bool)

(assert (=> b!288434 (= c!54620 (<= 0 0))))

(declare-fun b!288435 () Bool)

(assert (=> b!288435 (= e!179546 (= (size!3164 lt!121599) e!179549))))

(declare-fun c!54621 () Bool)

(assert (=> b!288435 (= c!54621 (<= 0 0))))

(declare-fun b!288436 () Bool)

(assert (=> b!288436 (= e!179549 call!16334)))

(assert (= (and d!85565 c!54622) b!288429))

(assert (= (and d!85565 (not c!54622)) b!288434))

(assert (= (and b!288434 c!54620) b!288430))

(assert (= (and b!288434 (not c!54620)) b!288428))

(assert (= (and d!85565 res!131709) b!288435))

(assert (= (and b!288435 c!54621) b!288436))

(assert (= (and b!288435 (not c!54621)) b!288432))

(assert (= (and b!288432 c!54619) b!288433))

(assert (= (and b!288432 (not c!54619)) b!288431))

(assert (= (or b!288436 b!288432 b!288431) bm!16329))

(declare-fun m!374165 () Bool)

(assert (=> b!288428 m!374165))

(assert (=> bm!16329 m!374157))

(declare-fun m!374169 () Bool)

(assert (=> d!85565 m!374169))

(declare-fun m!374171 () Bool)

(assert (=> d!85565 m!374171))

(declare-fun m!374173 () Bool)

(assert (=> b!288435 m!374173))

(assert (=> b!287848 d!85565))

(declare-fun d!85569 () Bool)

(declare-fun lt!121600 () BalanceConc!2672)

(assert (=> d!85569 (= (list!1645 lt!121600) (originalCharacters!798 (apply!840 lt!120873 0)))))

(assert (=> d!85569 (= lt!121600 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120873 0)))) (value!25833 (apply!840 lt!120873 0))))))

(assert (=> d!85569 (= (charsOf!398 (apply!840 lt!120873 0)) lt!121600)))

(declare-fun b_lambda!9585 () Bool)

(assert (=> (not b_lambda!9585) (not d!85569)))

(declare-fun tb!16731 () Bool)

(declare-fun t!40325 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120873 0))))) t!40325) tb!16731))

(declare-fun b!288437 () Bool)

(declare-fun e!179551 () Bool)

(declare-fun tp!105479 () Bool)

(assert (=> b!288437 (= e!179551 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120873 0)))) (value!25833 (apply!840 lt!120873 0))))) tp!105479))))

(declare-fun result!20570 () Bool)

(assert (=> tb!16731 (= result!20570 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120873 0)))) (value!25833 (apply!840 lt!120873 0)))) e!179551))))

(assert (= tb!16731 b!288437))

(declare-fun m!374177 () Bool)

(assert (=> b!288437 m!374177))

(declare-fun m!374179 () Bool)

(assert (=> tb!16731 m!374179))

(assert (=> d!85569 t!40325))

(declare-fun b_and!23331 () Bool)

(assert (= b_and!23307 (and (=> t!40325 result!20570) b_and!23331)))

(declare-fun t!40327 () Bool)

(declare-fun tb!16733 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120873 0))))) t!40327) tb!16733))

(declare-fun result!20572 () Bool)

(assert (= result!20572 result!20570))

(assert (=> d!85569 t!40327))

(declare-fun b_and!23333 () Bool)

(assert (= b_and!23305 (and (=> t!40327 result!20572) b_and!23333)))

(declare-fun tb!16735 () Bool)

(declare-fun t!40329 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120873 0))))) t!40329) tb!16735))

(declare-fun result!20574 () Bool)

(assert (= result!20574 result!20570))

(assert (=> d!85569 t!40329))

(declare-fun b_and!23335 () Bool)

(assert (= b_and!23303 (and (=> t!40329 result!20574) b_and!23335)))

(declare-fun t!40331 () Bool)

(declare-fun tb!16737 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120873 0))))) t!40331) tb!16737))

(declare-fun result!20576 () Bool)

(assert (= result!20576 result!20570))

(assert (=> d!85569 t!40331))

(declare-fun b_and!23337 () Bool)

(assert (= b_and!23309 (and (=> t!40331 result!20576) b_and!23337)))

(declare-fun tb!16739 () Bool)

(declare-fun t!40333 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120873 0))))) t!40333) tb!16739))

(declare-fun result!20578 () Bool)

(assert (= result!20578 result!20570))

(assert (=> d!85569 t!40333))

(declare-fun b_and!23339 () Bool)

(assert (= b_and!23301 (and (=> t!40333 result!20578) b_and!23339)))

(declare-fun m!374181 () Bool)

(assert (=> d!85569 m!374181))

(declare-fun m!374183 () Bool)

(assert (=> d!85569 m!374183))

(assert (=> b!287848 d!85569))

(declare-fun d!85573 () Bool)

(assert (=> d!85573 (= (head!930 (drop!235 lt!121216 0)) (apply!843 lt!121216 0))))

(declare-fun lt!121601 () Unit!5300)

(assert (=> d!85573 (= lt!121601 (choose!2598 lt!121216 0))))

(declare-fun e!179552 () Bool)

(assert (=> d!85573 e!179552))

(declare-fun res!131710 () Bool)

(assert (=> d!85573 (=> (not res!131710) (not e!179552))))

(assert (=> d!85573 (= res!131710 (>= 0 0))))

(assert (=> d!85573 (= (lemmaDropApply!222 lt!121216 0) lt!121601)))

(declare-fun b!288438 () Bool)

(assert (=> b!288438 (= e!179552 (< 0 (size!3164 lt!121216)))))

(assert (= (and d!85573 res!131710) b!288438))

(assert (=> d!85573 m!372735))

(assert (=> d!85573 m!372735))

(assert (=> d!85573 m!372737))

(assert (=> d!85573 m!372725))

(declare-fun m!374185 () Bool)

(assert (=> d!85573 m!374185))

(assert (=> b!288438 m!374055))

(assert (=> b!287848 d!85573))

(declare-fun b!288439 () Bool)

(declare-fun res!131713 () Bool)

(declare-fun e!179553 () Bool)

(assert (=> b!288439 (=> (not res!131713) (not e!179553))))

(assert (=> b!288439 (= res!131713 (isBalanced!377 (++!1054 (c!54354 (charsOf!398 (apply!840 lt!120873 0))) (c!54354 lt!121221))))))

(declare-fun b!288440 () Bool)

(declare-fun res!131714 () Bool)

(assert (=> b!288440 (=> (not res!131714) (not e!179553))))

(assert (=> b!288440 (= res!131714 (<= (height!166 (++!1054 (c!54354 (charsOf!398 (apply!840 lt!120873 0))) (c!54354 lt!121221))) (+ (max!0 (height!166 (c!54354 (charsOf!398 (apply!840 lt!120873 0)))) (height!166 (c!54354 lt!121221))) 1)))))

(declare-fun d!85575 () Bool)

(assert (=> d!85575 e!179553))

(declare-fun res!131711 () Bool)

(assert (=> d!85575 (=> (not res!131711) (not e!179553))))

(assert (=> d!85575 (= res!131711 (appendAssocInst!69 (c!54354 (charsOf!398 (apply!840 lt!120873 0))) (c!54354 lt!121221)))))

(declare-fun lt!121602 () BalanceConc!2672)

(assert (=> d!85575 (= lt!121602 (BalanceConc!2673 (++!1054 (c!54354 (charsOf!398 (apply!840 lt!120873 0))) (c!54354 lt!121221))))))

(assert (=> d!85575 (= (++!1052 (charsOf!398 (apply!840 lt!120873 0)) lt!121221) lt!121602)))

(declare-fun b!288441 () Bool)

(declare-fun res!131712 () Bool)

(assert (=> b!288441 (=> (not res!131712) (not e!179553))))

(assert (=> b!288441 (= res!131712 (>= (height!166 (++!1054 (c!54354 (charsOf!398 (apply!840 lt!120873 0))) (c!54354 lt!121221))) (max!0 (height!166 (c!54354 (charsOf!398 (apply!840 lt!120873 0)))) (height!166 (c!54354 lt!121221)))))))

(declare-fun b!288442 () Bool)

(assert (=> b!288442 (= e!179553 (= (list!1645 lt!121602) (++!1050 (list!1645 (charsOf!398 (apply!840 lt!120873 0))) (list!1645 lt!121221))))))

(assert (= (and d!85575 res!131711) b!288439))

(assert (= (and b!288439 res!131713) b!288440))

(assert (= (and b!288440 res!131714) b!288441))

(assert (= (and b!288441 res!131712) b!288442))

(declare-fun m!374187 () Bool)

(assert (=> d!85575 m!374187))

(declare-fun m!374189 () Bool)

(assert (=> d!85575 m!374189))

(declare-fun m!374191 () Bool)

(assert (=> b!288440 m!374191))

(declare-fun m!374193 () Bool)

(assert (=> b!288440 m!374193))

(assert (=> b!288440 m!374193))

(assert (=> b!288440 m!374191))

(declare-fun m!374195 () Bool)

(assert (=> b!288440 m!374195))

(assert (=> b!288440 m!374189))

(assert (=> b!288440 m!374189))

(declare-fun m!374197 () Bool)

(assert (=> b!288440 m!374197))

(declare-fun m!374199 () Bool)

(assert (=> b!288442 m!374199))

(assert (=> b!288442 m!372727))

(declare-fun m!374201 () Bool)

(assert (=> b!288442 m!374201))

(assert (=> b!288442 m!372757))

(assert (=> b!288442 m!374201))

(assert (=> b!288442 m!372757))

(declare-fun m!374203 () Bool)

(assert (=> b!288442 m!374203))

(assert (=> b!288439 m!374189))

(assert (=> b!288439 m!374189))

(declare-fun m!374205 () Bool)

(assert (=> b!288439 m!374205))

(assert (=> b!288441 m!374191))

(assert (=> b!288441 m!374193))

(assert (=> b!288441 m!374193))

(assert (=> b!288441 m!374191))

(assert (=> b!288441 m!374195))

(assert (=> b!288441 m!374189))

(assert (=> b!288441 m!374189))

(assert (=> b!288441 m!374197))

(assert (=> b!287848 d!85575))

(declare-fun bs!32627 () Bool)

(declare-fun d!85577 () Bool)

(assert (= bs!32627 (and d!85577 b!287862)))

(declare-fun lambda!9890 () Int)

(assert (=> bs!32627 (not (= lambda!9890 lambda!9878))))

(declare-fun bs!32628 () Bool)

(assert (= bs!32628 (and d!85577 b!288074)))

(assert (=> bs!32628 (not (= lambda!9890 lambda!9880))))

(declare-fun bs!32629 () Bool)

(assert (= bs!32629 (and d!85577 d!85435)))

(assert (=> bs!32629 (= lambda!9890 lambda!9882)))

(declare-fun bs!32630 () Bool)

(assert (= bs!32630 (and d!85577 b!287601)))

(assert (=> bs!32630 (not (= lambda!9890 lambda!9872))))

(declare-fun bs!32631 () Bool)

(assert (= bs!32631 (and d!85577 b!287521)))

(assert (=> bs!32631 (not (= lambda!9890 lambda!9860))))

(declare-fun bs!32632 () Bool)

(assert (= bs!32632 (and d!85577 b!288224)))

(assert (=> bs!32632 (not (= lambda!9890 lambda!9883))))

(declare-fun bs!32633 () Bool)

(assert (= bs!32633 (and d!85577 b!287250)))

(assert (=> bs!32633 (not (= lambda!9890 lambda!9844))))

(declare-fun bs!32634 () Bool)

(assert (= bs!32634 (and d!85577 d!85003)))

(assert (=> bs!32634 (not (= lambda!9890 lambda!9854))))

(declare-fun bs!32635 () Bool)

(assert (= bs!32635 (and d!85577 b!287848)))

(assert (=> bs!32635 (not (= lambda!9890 lambda!9877))))

(declare-fun bs!32636 () Bool)

(assert (= bs!32636 (and d!85577 b!287244)))

(assert (=> bs!32636 (= lambda!9890 lambda!9843)))

(declare-fun bs!32637 () Bool)

(assert (= bs!32637 (and d!85577 d!85205)))

(assert (=> bs!32637 (= lambda!9890 lambda!9876)))

(declare-fun bs!32638 () Bool)

(assert (= bs!32638 (and d!85577 d!85101)))

(assert (=> bs!32638 (= lambda!9890 lambda!9871)))

(declare-fun bs!32639 () Bool)

(declare-fun b!288448 () Bool)

(assert (= bs!32639 (and b!288448 d!85577)))

(declare-fun lambda!9891 () Int)

(assert (=> bs!32639 (not (= lambda!9891 lambda!9890))))

(declare-fun bs!32640 () Bool)

(assert (= bs!32640 (and b!288448 b!287862)))

(assert (=> bs!32640 (= lambda!9891 lambda!9878)))

(declare-fun bs!32641 () Bool)

(assert (= bs!32641 (and b!288448 b!288074)))

(assert (=> bs!32641 (= lambda!9891 lambda!9880)))

(declare-fun bs!32642 () Bool)

(assert (= bs!32642 (and b!288448 d!85435)))

(assert (=> bs!32642 (not (= lambda!9891 lambda!9882))))

(declare-fun bs!32643 () Bool)

(assert (= bs!32643 (and b!288448 b!287601)))

(assert (=> bs!32643 (= lambda!9891 lambda!9872)))

(declare-fun bs!32644 () Bool)

(assert (= bs!32644 (and b!288448 b!287521)))

(assert (=> bs!32644 (= lambda!9891 lambda!9860)))

(declare-fun bs!32645 () Bool)

(assert (= bs!32645 (and b!288448 b!288224)))

(assert (=> bs!32645 (= lambda!9891 lambda!9883)))

(declare-fun bs!32646 () Bool)

(assert (= bs!32646 (and b!288448 b!287250)))

(assert (=> bs!32646 (= lambda!9891 lambda!9844)))

(declare-fun bs!32647 () Bool)

(assert (= bs!32647 (and b!288448 d!85003)))

(assert (=> bs!32647 (= lambda!9891 lambda!9854)))

(declare-fun bs!32648 () Bool)

(assert (= bs!32648 (and b!288448 b!287848)))

(assert (=> bs!32648 (= lambda!9891 lambda!9877)))

(declare-fun bs!32649 () Bool)

(assert (= bs!32649 (and b!288448 b!287244)))

(assert (=> bs!32649 (not (= lambda!9891 lambda!9843))))

(declare-fun bs!32650 () Bool)

(assert (= bs!32650 (and b!288448 d!85205)))

(assert (=> bs!32650 (not (= lambda!9891 lambda!9876))))

(declare-fun bs!32651 () Bool)

(assert (= bs!32651 (and b!288448 d!85101)))

(assert (=> bs!32651 (not (= lambda!9891 lambda!9871))))

(declare-fun b!288457 () Bool)

(declare-fun e!179565 () Bool)

(assert (=> b!288457 (= e!179565 true)))

(declare-fun b!288456 () Bool)

(declare-fun e!179564 () Bool)

(assert (=> b!288456 (= e!179564 e!179565)))

(declare-fun b!288455 () Bool)

(declare-fun e!179563 () Bool)

(assert (=> b!288455 (= e!179563 e!179564)))

(assert (=> b!288448 e!179563))

(assert (= b!288456 b!288457))

(assert (= b!288455 b!288456))

(assert (= (and b!288448 ((_ is Cons!3944) rules!1920)) b!288455))

(assert (=> b!288457 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9891))))

(assert (=> b!288457 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9891))))

(assert (=> b!288448 true))

(declare-fun b!288446 () Bool)

(declare-fun e!179560 () BalanceConc!2672)

(declare-fun call!16336 () BalanceConc!2672)

(declare-fun lt!121616 () BalanceConc!2672)

(assert (=> b!288446 (= e!179560 (++!1052 call!16336 lt!121616))))

(declare-fun bm!16330 () Bool)

(declare-fun call!16338 () Token!1254)

(assert (=> bm!16330 (= call!16338 (apply!840 lt!120873 (+ 0 1)))))

(declare-fun b!288447 () Bool)

(declare-fun e!179559 () Bool)

(declare-fun lt!121608 () Option!871)

(assert (=> b!288447 (= e!179559 (not (= (_1!2458 (v!14811 lt!121608)) call!16338)))))

(declare-fun lt!121607 () BalanceConc!2672)

(assert (=> d!85577 (= (list!1645 lt!121607) (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (dropList!182 lt!120873 (+ 0 1)) separatorToken!170))))

(declare-fun e!179558 () BalanceConc!2672)

(assert (=> d!85577 (= lt!121607 e!179558)))

(declare-fun c!54623 () Bool)

(assert (=> d!85577 (= c!54623 (>= (+ 0 1) (size!3161 lt!120873)))))

(declare-fun lt!121610 () Unit!5300)

(assert (=> d!85577 (= lt!121610 (lemmaContentSubsetPreservesForall!126 (list!1648 lt!120873) (dropList!182 lt!120873 (+ 0 1)) lambda!9890))))

(declare-fun e!179561 () Bool)

(assert (=> d!85577 e!179561))

(declare-fun res!131719 () Bool)

(assert (=> d!85577 (=> (not res!131719) (not e!179561))))

(assert (=> d!85577 (= res!131719 (>= (+ 0 1) 0))))

(assert (=> d!85577 (= (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 (+ 0 1)) lt!121607)))

(declare-fun bm!16331 () Bool)

(declare-fun call!16339 () Token!1254)

(declare-fun c!54625 () Bool)

(declare-fun call!16335 () BalanceConc!2672)

(assert (=> bm!16331 (= call!16335 (charsOf!398 (ite c!54625 separatorToken!170 call!16339)))))

(declare-fun e!179557 () BalanceConc!2672)

(assert (=> b!288448 (= e!179558 e!179557)))

(declare-fun lt!121611 () List!3955)

(assert (=> b!288448 (= lt!121611 (list!1648 lt!120873))))

(declare-fun lt!121614 () Unit!5300)

(assert (=> b!288448 (= lt!121614 (lemmaDropApply!222 lt!121611 (+ 0 1)))))

(assert (=> b!288448 (= (head!930 (drop!235 lt!121611 (+ 0 1))) (apply!843 lt!121611 (+ 0 1)))))

(declare-fun lt!121606 () Unit!5300)

(assert (=> b!288448 (= lt!121606 lt!121614)))

(declare-fun lt!121613 () List!3955)

(assert (=> b!288448 (= lt!121613 (list!1648 lt!120873))))

(declare-fun lt!121615 () Unit!5300)

(assert (=> b!288448 (= lt!121615 (lemmaDropTail!214 lt!121613 (+ 0 1)))))

(assert (=> b!288448 (= (tail!512 (drop!235 lt!121613 (+ 0 1))) (drop!235 lt!121613 (+ 0 1 1)))))

(declare-fun lt!121609 () Unit!5300)

(assert (=> b!288448 (= lt!121609 lt!121615)))

(declare-fun lt!121617 () Unit!5300)

(assert (=> b!288448 (= lt!121617 (forallContained!308 (list!1648 lt!120873) lambda!9891 (apply!840 lt!120873 (+ 0 1))))))

(assert (=> b!288448 (= lt!121616 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 (+ 0 1 1)))))

(assert (=> b!288448 (= lt!121608 (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (++!1052 (charsOf!398 (apply!840 lt!120873 (+ 0 1))) lt!121616)))))

(declare-fun res!131720 () Bool)

(assert (=> b!288448 (= res!131720 ((_ is Some!870) lt!121608))))

(declare-fun e!179562 () Bool)

(assert (=> b!288448 (=> (not res!131720) (not e!179562))))

(declare-fun c!54624 () Bool)

(assert (=> b!288448 (= c!54624 e!179562)))

(declare-fun call!16337 () BalanceConc!2672)

(declare-fun bm!16332 () Bool)

(assert (=> bm!16332 (= call!16336 (++!1052 call!16337 (ite c!54624 lt!121616 call!16335)))))

(declare-fun b!288449 () Bool)

(assert (=> b!288449 (= c!54625 e!179559)))

(declare-fun res!131718 () Bool)

(assert (=> b!288449 (=> (not res!131718) (not e!179559))))

(assert (=> b!288449 (= res!131718 ((_ is Some!870) lt!121608))))

(assert (=> b!288449 (= e!179557 e!179560)))

(declare-fun b!288450 () Bool)

(assert (=> b!288450 (= e!179557 call!16336)))

(declare-fun b!288451 () Bool)

(assert (=> b!288451 (= e!179562 (= (_1!2458 (v!14811 lt!121608)) (apply!840 lt!120873 (+ 0 1))))))

(declare-fun bm!16333 () Bool)

(assert (=> bm!16333 (= call!16339 call!16338)))

(declare-fun bm!16334 () Bool)

(assert (=> bm!16334 (= call!16337 (charsOf!398 (ite c!54624 call!16338 call!16339)))))

(declare-fun b!288452 () Bool)

(assert (=> b!288452 (= e!179558 (BalanceConc!2673 Empty!1332))))

(declare-fun b!288453 () Bool)

(assert (=> b!288453 (= e!179560 (BalanceConc!2673 Empty!1332))))

(assert (=> b!288453 (= (print!366 thiss!17480 (singletonSeq!301 call!16339)) (printTailRec!327 thiss!17480 (singletonSeq!301 call!16339) 0 (BalanceConc!2673 Empty!1332)))))

(declare-fun lt!121612 () Unit!5300)

(declare-fun Unit!5332 () Unit!5300)

(assert (=> b!288453 (= lt!121612 Unit!5332)))

(declare-fun lt!121618 () Unit!5300)

(assert (=> b!288453 (= lt!121618 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 (list!1645 call!16335) (list!1645 lt!121616)))))

(assert (=> b!288453 false))

(declare-fun lt!121619 () Unit!5300)

(declare-fun Unit!5333 () Unit!5300)

(assert (=> b!288453 (= lt!121619 Unit!5333)))

(declare-fun b!288454 () Bool)

(assert (=> b!288454 (= e!179561 (<= (+ 0 1) (size!3161 lt!120873)))))

(assert (= (and d!85577 res!131719) b!288454))

(assert (= (and d!85577 c!54623) b!288452))

(assert (= (and d!85577 (not c!54623)) b!288448))

(assert (= (and b!288448 res!131720) b!288451))

(assert (= (and b!288448 c!54624) b!288450))

(assert (= (and b!288448 (not c!54624)) b!288449))

(assert (= (and b!288449 res!131718) b!288447))

(assert (= (and b!288449 c!54625) b!288446))

(assert (= (and b!288449 (not c!54625)) b!288453))

(assert (= (or b!288446 b!288453) bm!16333))

(assert (= (or b!288446 b!288453) bm!16331))

(assert (= (or b!288450 b!288447 bm!16333) bm!16330))

(assert (= (or b!288450 b!288446) bm!16334))

(assert (= (or b!288450 b!288446) bm!16332))

(declare-fun m!374213 () Bool)

(assert (=> bm!16331 m!374213))

(declare-fun m!374215 () Bool)

(assert (=> b!288448 m!374215))

(declare-fun m!374217 () Bool)

(assert (=> b!288448 m!374217))

(declare-fun m!374219 () Bool)

(assert (=> b!288448 m!374219))

(declare-fun m!374221 () Bool)

(assert (=> b!288448 m!374221))

(declare-fun m!374223 () Bool)

(assert (=> b!288448 m!374223))

(declare-fun m!374225 () Bool)

(assert (=> b!288448 m!374225))

(declare-fun m!374227 () Bool)

(assert (=> b!288448 m!374227))

(assert (=> b!288448 m!371825))

(declare-fun m!374229 () Bool)

(assert (=> b!288448 m!374229))

(declare-fun m!374231 () Bool)

(assert (=> b!288448 m!374231))

(assert (=> b!288448 m!374217))

(assert (=> b!288448 m!374231))

(assert (=> b!288448 m!374225))

(declare-fun m!374233 () Bool)

(assert (=> b!288448 m!374233))

(declare-fun m!374235 () Bool)

(assert (=> b!288448 m!374235))

(declare-fun m!374237 () Bool)

(assert (=> b!288448 m!374237))

(assert (=> b!288448 m!374219))

(declare-fun m!374239 () Bool)

(assert (=> b!288448 m!374239))

(assert (=> b!288448 m!371825))

(assert (=> b!288448 m!374231))

(declare-fun m!374241 () Bool)

(assert (=> b!288448 m!374241))

(assert (=> b!288448 m!374221))

(assert (=> bm!16330 m!374231))

(assert (=> b!288454 m!372753))

(declare-fun m!374243 () Bool)

(assert (=> b!288453 m!374243))

(declare-fun m!374245 () Bool)

(assert (=> b!288453 m!374245))

(assert (=> b!288453 m!374243))

(declare-fun m!374247 () Bool)

(assert (=> b!288453 m!374247))

(declare-fun m!374249 () Bool)

(assert (=> b!288453 m!374249))

(assert (=> b!288453 m!374249))

(assert (=> b!288453 m!374245))

(declare-fun m!374251 () Bool)

(assert (=> b!288453 m!374251))

(assert (=> b!288453 m!374243))

(declare-fun m!374253 () Bool)

(assert (=> b!288453 m!374253))

(declare-fun m!374255 () Bool)

(assert (=> bm!16332 m!374255))

(assert (=> d!85577 m!372753))

(assert (=> d!85577 m!371825))

(declare-fun m!374257 () Bool)

(assert (=> d!85577 m!374257))

(declare-fun m!374259 () Bool)

(assert (=> d!85577 m!374259))

(assert (=> d!85577 m!374257))

(declare-fun m!374261 () Bool)

(assert (=> d!85577 m!374261))

(assert (=> d!85577 m!374257))

(declare-fun m!374263 () Bool)

(assert (=> d!85577 m!374263))

(assert (=> d!85577 m!371825))

(assert (=> b!288451 m!374231))

(declare-fun m!374265 () Bool)

(assert (=> bm!16334 m!374265))

(declare-fun m!374267 () Bool)

(assert (=> b!288446 m!374267))

(assert (=> b!287848 d!85577))

(assert (=> b!287848 d!85295))

(declare-fun b!288458 () Bool)

(declare-fun e!179570 () List!3955)

(assert (=> b!288458 (= e!179570 (drop!235 (t!40183 lt!121218) (- (+ 0 1) 1)))))

(declare-fun b!288459 () Bool)

(declare-fun e!179568 () List!3955)

(assert (=> b!288459 (= e!179568 Nil!3945)))

(declare-fun b!288460 () Bool)

(assert (=> b!288460 (= e!179570 lt!121218)))

(declare-fun b!288461 () Bool)

(declare-fun e!179567 () Int)

(declare-fun call!16340 () Int)

(assert (=> b!288461 (= e!179567 (- call!16340 (+ 0 1)))))

(declare-fun bm!16335 () Bool)

(assert (=> bm!16335 (= call!16340 (size!3164 lt!121218))))

(declare-fun b!288462 () Bool)

(declare-fun e!179569 () Int)

(assert (=> b!288462 (= e!179569 e!179567)))

(declare-fun c!54626 () Bool)

(assert (=> b!288462 (= c!54626 (>= (+ 0 1) call!16340))))

(declare-fun d!85581 () Bool)

(declare-fun e!179566 () Bool)

(assert (=> d!85581 e!179566))

(declare-fun res!131721 () Bool)

(assert (=> d!85581 (=> (not res!131721) (not e!179566))))

(declare-fun lt!121620 () List!3955)

(assert (=> d!85581 (= res!131721 (= ((_ map implies) (content!580 lt!121620) (content!580 lt!121218)) ((as const (InoxSet Token!1254)) true)))))

(assert (=> d!85581 (= lt!121620 e!179568)))

(declare-fun c!54629 () Bool)

(assert (=> d!85581 (= c!54629 ((_ is Nil!3945) lt!121218))))

(assert (=> d!85581 (= (drop!235 lt!121218 (+ 0 1)) lt!121620)))

(declare-fun b!288463 () Bool)

(assert (=> b!288463 (= e!179567 0)))

(declare-fun b!288464 () Bool)

(assert (=> b!288464 (= e!179568 e!179570)))

(declare-fun c!54627 () Bool)

(assert (=> b!288464 (= c!54627 (<= (+ 0 1) 0))))

(declare-fun b!288465 () Bool)

(assert (=> b!288465 (= e!179566 (= (size!3164 lt!121620) e!179569))))

(declare-fun c!54628 () Bool)

(assert (=> b!288465 (= c!54628 (<= (+ 0 1) 0))))

(declare-fun b!288466 () Bool)

(assert (=> b!288466 (= e!179569 call!16340)))

(assert (= (and d!85581 c!54629) b!288459))

(assert (= (and d!85581 (not c!54629)) b!288464))

(assert (= (and b!288464 c!54627) b!288460))

(assert (= (and b!288464 (not c!54627)) b!288458))

(assert (= (and d!85581 res!131721) b!288465))

(assert (= (and b!288465 c!54628) b!288466))

(assert (= (and b!288465 (not c!54628)) b!288462))

(assert (= (and b!288462 c!54626) b!288463))

(assert (= (and b!288462 (not c!54626)) b!288461))

(assert (= (or b!288466 b!288462 b!288461) bm!16335))

(declare-fun m!374269 () Bool)

(assert (=> b!288458 m!374269))

(assert (=> bm!16335 m!374157))

(declare-fun m!374271 () Bool)

(assert (=> d!85581 m!374271))

(assert (=> d!85581 m!374171))

(declare-fun m!374273 () Bool)

(assert (=> b!288465 m!374273))

(assert (=> b!287848 d!85581))

(declare-fun d!85583 () Bool)

(assert (=> d!85583 (dynLambda!2094 lambda!9877 (apply!840 lt!120873 0))))

(declare-fun lt!121621 () Unit!5300)

(assert (=> d!85583 (= lt!121621 (choose!2594 (list!1648 lt!120873) lambda!9877 (apply!840 lt!120873 0)))))

(declare-fun e!179571 () Bool)

(assert (=> d!85583 e!179571))

(declare-fun res!131722 () Bool)

(assert (=> d!85583 (=> (not res!131722) (not e!179571))))

(assert (=> d!85583 (= res!131722 (forall!1016 (list!1648 lt!120873) lambda!9877))))

(assert (=> d!85583 (= (forallContained!308 (list!1648 lt!120873) lambda!9877 (apply!840 lt!120873 0)) lt!121621)))

(declare-fun b!288467 () Bool)

(assert (=> b!288467 (= e!179571 (contains!770 (list!1648 lt!120873) (apply!840 lt!120873 0)))))

(assert (= (and d!85583 res!131722) b!288467))

(declare-fun b_lambda!9587 () Bool)

(assert (=> (not b_lambda!9587) (not d!85583)))

(assert (=> d!85583 m!372741))

(declare-fun m!374275 () Bool)

(assert (=> d!85583 m!374275))

(assert (=> d!85583 m!371825))

(assert (=> d!85583 m!372741))

(declare-fun m!374277 () Bool)

(assert (=> d!85583 m!374277))

(assert (=> d!85583 m!371825))

(declare-fun m!374279 () Bool)

(assert (=> d!85583 m!374279))

(assert (=> b!288467 m!371825))

(assert (=> b!288467 m!372741))

(declare-fun m!374281 () Bool)

(assert (=> b!288467 m!374281))

(assert (=> b!287848 d!85583))

(declare-fun d!85585 () Bool)

(declare-fun c!54630 () Bool)

(assert (=> d!85585 (= c!54630 ((_ is Nil!3943) lt!120926))))

(declare-fun e!179572 () (InoxSet C!2880))

(assert (=> d!85585 (= (content!579 lt!120926) e!179572)))

(declare-fun b!288468 () Bool)

(assert (=> b!288468 (= e!179572 ((as const (Array C!2880 Bool)) false))))

(declare-fun b!288469 () Bool)

(assert (=> b!288469 (= e!179572 ((_ map or) (store ((as const (Array C!2880 Bool)) false) (h!9340 lt!120926) true) (content!579 (t!40181 lt!120926))))))

(assert (= (and d!85585 c!54630) b!288468))

(assert (= (and d!85585 (not c!54630)) b!288469))

(declare-fun m!374283 () Bool)

(assert (=> b!288469 m!374283))

(declare-fun m!374285 () Bool)

(assert (=> b!288469 m!374285))

(assert (=> d!85091 d!85585))

(declare-fun d!85587 () Bool)

(declare-fun c!54631 () Bool)

(assert (=> d!85587 (= c!54631 ((_ is Nil!3943) (++!1050 lt!120875 lt!120869)))))

(declare-fun e!179573 () (InoxSet C!2880))

(assert (=> d!85587 (= (content!579 (++!1050 lt!120875 lt!120869)) e!179573)))

(declare-fun b!288470 () Bool)

(assert (=> b!288470 (= e!179573 ((as const (Array C!2880 Bool)) false))))

(declare-fun b!288471 () Bool)

(assert (=> b!288471 (= e!179573 ((_ map or) (store ((as const (Array C!2880 Bool)) false) (h!9340 (++!1050 lt!120875 lt!120869)) true) (content!579 (t!40181 (++!1050 lt!120875 lt!120869)))))))

(assert (= (and d!85587 c!54631) b!288470))

(assert (= (and d!85587 (not c!54631)) b!288471))

(declare-fun m!374287 () Bool)

(assert (=> b!288471 m!374287))

(assert (=> b!288471 m!373849))

(assert (=> d!85091 d!85587))

(declare-fun d!85589 () Bool)

(declare-fun c!54632 () Bool)

(assert (=> d!85589 (= c!54632 ((_ is Nil!3943) lt!120870))))

(declare-fun e!179574 () (InoxSet C!2880))

(assert (=> d!85589 (= (content!579 lt!120870) e!179574)))

(declare-fun b!288472 () Bool)

(assert (=> b!288472 (= e!179574 ((as const (Array C!2880 Bool)) false))))

(declare-fun b!288473 () Bool)

(assert (=> b!288473 (= e!179574 ((_ map or) (store ((as const (Array C!2880 Bool)) false) (h!9340 lt!120870) true) (content!579 (t!40181 lt!120870))))))

(assert (= (and d!85589 c!54632) b!288472))

(assert (= (and d!85589 (not c!54632)) b!288473))

(declare-fun m!374289 () Bool)

(assert (=> b!288473 m!374289))

(declare-fun m!374291 () Bool)

(assert (=> b!288473 m!374291))

(assert (=> d!85091 d!85589))

(declare-fun d!85591 () Bool)

(assert (=> d!85591 true))

(declare-fun lambda!9894 () Int)

(declare-fun order!3121 () Int)

(declare-fun dynLambda!2098 (Int Int) Int)

(assert (=> d!85591 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465))))) (dynLambda!2098 order!3121 lambda!9894))))

(declare-fun Forall2!153 (Int) Bool)

(assert (=> d!85591 (= (equivClasses!262 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465))))) (Forall2!153 lambda!9894))))

(declare-fun bs!32652 () Bool)

(assert (= bs!32652 d!85591))

(declare-fun m!374293 () Bool)

(assert (=> bs!32652 m!374293))

(assert (=> b!287424 d!85591))

(declare-fun b!288478 () Bool)

(declare-fun res!131727 () Bool)

(declare-fun e!179577 () Bool)

(assert (=> b!288478 (=> (not res!131727) (not e!179577))))

(assert (=> b!288478 (= res!131727 (isBalanced!377 (++!1054 (c!54354 call!16284) (c!54354 lt!121221))))))

(declare-fun b!288479 () Bool)

(declare-fun res!131728 () Bool)

(assert (=> b!288479 (=> (not res!131728) (not e!179577))))

(assert (=> b!288479 (= res!131728 (<= (height!166 (++!1054 (c!54354 call!16284) (c!54354 lt!121221))) (+ (max!0 (height!166 (c!54354 call!16284)) (height!166 (c!54354 lt!121221))) 1)))))

(declare-fun d!85593 () Bool)

(assert (=> d!85593 e!179577))

(declare-fun res!131725 () Bool)

(assert (=> d!85593 (=> (not res!131725) (not e!179577))))

(assert (=> d!85593 (= res!131725 (appendAssocInst!69 (c!54354 call!16284) (c!54354 lt!121221)))))

(declare-fun lt!121622 () BalanceConc!2672)

(assert (=> d!85593 (= lt!121622 (BalanceConc!2673 (++!1054 (c!54354 call!16284) (c!54354 lt!121221))))))

(assert (=> d!85593 (= (++!1052 call!16284 lt!121221) lt!121622)))

(declare-fun b!288480 () Bool)

(declare-fun res!131726 () Bool)

(assert (=> b!288480 (=> (not res!131726) (not e!179577))))

(assert (=> b!288480 (= res!131726 (>= (height!166 (++!1054 (c!54354 call!16284) (c!54354 lt!121221))) (max!0 (height!166 (c!54354 call!16284)) (height!166 (c!54354 lt!121221)))))))

(declare-fun b!288481 () Bool)

(assert (=> b!288481 (= e!179577 (= (list!1645 lt!121622) (++!1050 (list!1645 call!16284) (list!1645 lt!121221))))))

(assert (= (and d!85593 res!131725) b!288478))

(assert (= (and b!288478 res!131727) b!288479))

(assert (= (and b!288479 res!131728) b!288480))

(assert (= (and b!288480 res!131726) b!288481))

(declare-fun m!374295 () Bool)

(assert (=> d!85593 m!374295))

(declare-fun m!374297 () Bool)

(assert (=> d!85593 m!374297))

(assert (=> b!288479 m!374191))

(declare-fun m!374299 () Bool)

(assert (=> b!288479 m!374299))

(assert (=> b!288479 m!374299))

(assert (=> b!288479 m!374191))

(declare-fun m!374301 () Bool)

(assert (=> b!288479 m!374301))

(assert (=> b!288479 m!374297))

(assert (=> b!288479 m!374297))

(declare-fun m!374303 () Bool)

(assert (=> b!288479 m!374303))

(declare-fun m!374305 () Bool)

(assert (=> b!288481 m!374305))

(declare-fun m!374307 () Bool)

(assert (=> b!288481 m!374307))

(assert (=> b!288481 m!372757))

(assert (=> b!288481 m!374307))

(assert (=> b!288481 m!372757))

(declare-fun m!374309 () Bool)

(assert (=> b!288481 m!374309))

(assert (=> b!288478 m!374297))

(assert (=> b!288478 m!374297))

(declare-fun m!374311 () Bool)

(assert (=> b!288478 m!374311))

(assert (=> b!288480 m!374191))

(assert (=> b!288480 m!374299))

(assert (=> b!288480 m!374299))

(assert (=> b!288480 m!374191))

(assert (=> b!288480 m!374301))

(assert (=> b!288480 m!374297))

(assert (=> b!288480 m!374297))

(assert (=> b!288480 m!374303))

(assert (=> b!287846 d!85593))

(declare-fun b!288482 () Bool)

(declare-fun e!179579 () List!3953)

(assert (=> b!288482 (= e!179579 lt!120869)))

(declare-fun b!288484 () Bool)

(declare-fun res!131730 () Bool)

(declare-fun e!179578 () Bool)

(assert (=> b!288484 (=> (not res!131730) (not e!179578))))

(declare-fun lt!121623 () List!3953)

(assert (=> b!288484 (= res!131730 (= (size!3163 lt!121623) (+ (size!3163 (t!40181 lt!120875)) (size!3163 lt!120869))))))

(declare-fun b!288483 () Bool)

(assert (=> b!288483 (= e!179579 (Cons!3943 (h!9340 (t!40181 lt!120875)) (++!1050 (t!40181 (t!40181 lt!120875)) lt!120869)))))

(declare-fun d!85595 () Bool)

(assert (=> d!85595 e!179578))

(declare-fun res!131729 () Bool)

(assert (=> d!85595 (=> (not res!131729) (not e!179578))))

(assert (=> d!85595 (= res!131729 (= (content!579 lt!121623) ((_ map or) (content!579 (t!40181 lt!120875)) (content!579 lt!120869))))))

(assert (=> d!85595 (= lt!121623 e!179579)))

(declare-fun c!54633 () Bool)

(assert (=> d!85595 (= c!54633 ((_ is Nil!3943) (t!40181 lt!120875)))))

(assert (=> d!85595 (= (++!1050 (t!40181 lt!120875) lt!120869) lt!121623)))

(declare-fun b!288485 () Bool)

(assert (=> b!288485 (= e!179578 (or (not (= lt!120869 Nil!3943)) (= lt!121623 (t!40181 lt!120875))))))

(assert (= (and d!85595 c!54633) b!288482))

(assert (= (and d!85595 (not c!54633)) b!288483))

(assert (= (and d!85595 res!131729) b!288484))

(assert (= (and b!288484 res!131730) b!288485))

(declare-fun m!374313 () Bool)

(assert (=> b!288484 m!374313))

(assert (=> b!288484 m!373985))

(assert (=> b!288484 m!372373))

(declare-fun m!374315 () Bool)

(assert (=> b!288483 m!374315))

(declare-fun m!374317 () Bool)

(assert (=> d!85595 m!374317))

(assert (=> d!85595 m!373279))

(assert (=> d!85595 m!372379))

(assert (=> b!287642 d!85595))

(declare-fun d!85597 () Bool)

(declare-fun lt!121626 () Bool)

(assert (=> d!85597 (= lt!121626 (select (content!580 tokens!465) (h!9342 tokens!465)))))

(declare-fun e!179585 () Bool)

(assert (=> d!85597 (= lt!121626 e!179585)))

(declare-fun res!131736 () Bool)

(assert (=> d!85597 (=> (not res!131736) (not e!179585))))

(assert (=> d!85597 (= res!131736 ((_ is Cons!3945) tokens!465))))

(assert (=> d!85597 (= (contains!770 tokens!465 (h!9342 tokens!465)) lt!121626)))

(declare-fun b!288490 () Bool)

(declare-fun e!179584 () Bool)

(assert (=> b!288490 (= e!179585 e!179584)))

(declare-fun res!131735 () Bool)

(assert (=> b!288490 (=> res!131735 e!179584)))

(assert (=> b!288490 (= res!131735 (= (h!9342 tokens!465) (h!9342 tokens!465)))))

(declare-fun b!288491 () Bool)

(assert (=> b!288491 (= e!179584 (contains!770 (t!40183 tokens!465) (h!9342 tokens!465)))))

(assert (= (and d!85597 res!131736) b!288490))

(assert (= (and b!288490 (not res!131735)) b!288491))

(declare-fun m!374319 () Bool)

(assert (=> d!85597 m!374319))

(declare-fun m!374321 () Bool)

(assert (=> d!85597 m!374321))

(declare-fun m!374323 () Bool)

(assert (=> b!288491 m!374323))

(assert (=> b!287841 d!85597))

(declare-fun d!85599 () Bool)

(assert (=> d!85599 (= (list!1645 call!16229) (list!1649 (c!54354 call!16229)))))

(declare-fun bs!32653 () Bool)

(assert (= bs!32653 d!85599))

(declare-fun m!374325 () Bool)

(assert (=> bs!32653 m!374325))

(assert (=> b!287525 d!85599))

(assert (=> b!287834 d!85315))

(assert (=> b!287834 d!85313))

(assert (=> b!287834 d!85311))

(assert (=> b!287834 d!85317))

(declare-fun d!85601 () Bool)

(declare-fun c!54636 () Bool)

(assert (=> d!85601 (= c!54636 ((_ is Node!1332) (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170)))))))

(declare-fun e!179590 () Bool)

(assert (=> d!85601 (= (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170)))) e!179590)))

(declare-fun b!288498 () Bool)

(declare-fun inv!4880 (Conc!1332) Bool)

(assert (=> b!288498 (= e!179590 (inv!4880 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170)))))))

(declare-fun b!288499 () Bool)

(declare-fun e!179591 () Bool)

(assert (=> b!288499 (= e!179590 e!179591)))

(declare-fun res!131739 () Bool)

(assert (=> b!288499 (= res!131739 (not ((_ is Leaf!2049) (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170))))))))

(assert (=> b!288499 (=> res!131739 e!179591)))

(declare-fun b!288500 () Bool)

(declare-fun inv!4881 (Conc!1332) Bool)

(assert (=> b!288500 (= e!179591 (inv!4881 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170)))))))

(assert (= (and d!85601 c!54636) b!288498))

(assert (= (and d!85601 (not c!54636)) b!288499))

(assert (= (and b!288499 (not res!131739)) b!288500))

(declare-fun m!374327 () Bool)

(assert (=> b!288498 m!374327))

(declare-fun m!374329 () Bool)

(assert (=> b!288500 m!374329))

(assert (=> b!287465 d!85601))

(declare-fun d!85603 () Bool)

(assert (=> d!85603 (= (inv!4871 (tag!971 (rule!1354 (h!9342 (t!40183 tokens!465))))) (= (mod (str.len (value!25832 (tag!971 (rule!1354 (h!9342 (t!40183 tokens!465)))))) 2) 0))))

(assert (=> b!287906 d!85603))

(declare-fun d!85605 () Bool)

(declare-fun res!131740 () Bool)

(declare-fun e!179592 () Bool)

(assert (=> d!85605 (=> (not res!131740) (not e!179592))))

(assert (=> d!85605 (= res!131740 (semiInverseModEq!279 (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toValue!1502 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))))))

(assert (=> d!85605 (= (inv!4875 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) e!179592)))

(declare-fun b!288501 () Bool)

(assert (=> b!288501 (= e!179592 (equivClasses!262 (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toValue!1502 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))))))

(assert (= (and d!85605 res!131740) b!288501))

(declare-fun m!374331 () Bool)

(assert (=> d!85605 m!374331))

(declare-fun m!374333 () Bool)

(assert (=> b!288501 m!374333))

(assert (=> b!287906 d!85605))

(declare-fun bs!32654 () Bool)

(declare-fun d!85607 () Bool)

(assert (= bs!32654 (and d!85607 d!85487)))

(declare-fun lambda!9895 () Int)

(assert (=> bs!32654 (= (and (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (= (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toValue!1502 (transformation!755 (h!9341 rules!1920))))) (= lambda!9895 lambda!9886))))

(assert (=> d!85607 true))

(assert (=> d!85607 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465))))) (dynLambda!2096 order!3119 lambda!9895))))

(assert (=> d!85607 true))

(assert (=> d!85607 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465))))) (dynLambda!2096 order!3119 lambda!9895))))

(assert (=> d!85607 (= (semiInverseModEq!279 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465))))) (Forall!177 lambda!9895))))

(declare-fun bs!32655 () Bool)

(assert (= bs!32655 d!85607))

(declare-fun m!374335 () Bool)

(assert (=> bs!32655 m!374335))

(assert (=> d!85067 d!85607))

(declare-fun d!85609 () Bool)

(assert (=> d!85609 (= (dropList!182 lt!120863 0) (drop!235 (list!1650 (c!54356 lt!120863)) 0))))

(declare-fun bs!32656 () Bool)

(assert (= bs!32656 d!85609))

(declare-fun m!374337 () Bool)

(assert (=> bs!32656 m!374337))

(assert (=> bs!32656 m!374337))

(declare-fun m!374339 () Bool)

(assert (=> bs!32656 m!374339))

(assert (=> d!85157 d!85609))

(declare-fun d!85611 () Bool)

(assert (=> d!85611 (= (list!1645 lt!121125) (list!1649 (c!54354 lt!121125)))))

(declare-fun bs!32657 () Bool)

(assert (= bs!32657 d!85611))

(declare-fun m!374341 () Bool)

(assert (=> bs!32657 m!374341))

(assert (=> d!85157 d!85611))

(declare-fun d!85613 () Bool)

(declare-fun lt!121627 () Int)

(assert (=> d!85613 (= lt!121627 (size!3164 (list!1648 lt!120863)))))

(assert (=> d!85613 (= lt!121627 (size!3165 (c!54356 lt!120863)))))

(assert (=> d!85613 (= (size!3161 lt!120863) lt!121627)))

(declare-fun bs!32658 () Bool)

(assert (= bs!32658 d!85613))

(assert (=> bs!32658 m!372529))

(assert (=> bs!32658 m!372529))

(declare-fun m!374343 () Bool)

(assert (=> bs!32658 m!374343))

(declare-fun m!374345 () Bool)

(assert (=> bs!32658 m!374345))

(assert (=> d!85157 d!85613))

(declare-fun d!85615 () Bool)

(declare-fun lt!121641 () List!3953)

(assert (=> d!85615 (= lt!121641 (++!1050 (list!1645 (BalanceConc!2673 Empty!1332)) (printList!315 thiss!17480 (dropList!182 lt!120863 0))))))

(declare-fun e!179595 () List!3953)

(assert (=> d!85615 (= lt!121641 e!179595)))

(declare-fun c!54639 () Bool)

(assert (=> d!85615 (= c!54639 ((_ is Cons!3945) (dropList!182 lt!120863 0)))))

(assert (=> d!85615 (= (printListTailRec!147 thiss!17480 (dropList!182 lt!120863 0) (list!1645 (BalanceConc!2673 Empty!1332))) lt!121641)))

(declare-fun b!288506 () Bool)

(assert (=> b!288506 (= e!179595 (printListTailRec!147 thiss!17480 (t!40183 (dropList!182 lt!120863 0)) (++!1050 (list!1645 (BalanceConc!2673 Empty!1332)) (list!1645 (charsOf!398 (h!9342 (dropList!182 lt!120863 0)))))))))

(declare-fun lt!121639 () List!3953)

(assert (=> b!288506 (= lt!121639 (list!1645 (charsOf!398 (h!9342 (dropList!182 lt!120863 0)))))))

(declare-fun lt!121638 () List!3953)

(assert (=> b!288506 (= lt!121638 (printList!315 thiss!17480 (t!40183 (dropList!182 lt!120863 0))))))

(declare-fun lt!121640 () Unit!5300)

(assert (=> b!288506 (= lt!121640 (lemmaConcatAssociativity!456 (list!1645 (BalanceConc!2673 Empty!1332)) lt!121639 lt!121638))))

(assert (=> b!288506 (= (++!1050 (++!1050 (list!1645 (BalanceConc!2673 Empty!1332)) lt!121639) lt!121638) (++!1050 (list!1645 (BalanceConc!2673 Empty!1332)) (++!1050 lt!121639 lt!121638)))))

(declare-fun lt!121642 () Unit!5300)

(assert (=> b!288506 (= lt!121642 lt!121640)))

(declare-fun b!288507 () Bool)

(assert (=> b!288507 (= e!179595 (list!1645 (BalanceConc!2673 Empty!1332)))))

(assert (= (and d!85615 c!54639) b!288506))

(assert (= (and d!85615 (not c!54639)) b!288507))

(assert (=> d!85615 m!372509))

(declare-fun m!374347 () Bool)

(assert (=> d!85615 m!374347))

(assert (=> d!85615 m!372515))

(assert (=> d!85615 m!374347))

(declare-fun m!374349 () Bool)

(assert (=> d!85615 m!374349))

(assert (=> b!288506 m!372515))

(declare-fun m!374351 () Bool)

(assert (=> b!288506 m!374351))

(assert (=> b!288506 m!372515))

(declare-fun m!374353 () Bool)

(assert (=> b!288506 m!374353))

(declare-fun m!374355 () Bool)

(assert (=> b!288506 m!374355))

(declare-fun m!374357 () Bool)

(assert (=> b!288506 m!374357))

(assert (=> b!288506 m!372515))

(assert (=> b!288506 m!374357))

(declare-fun m!374359 () Bool)

(assert (=> b!288506 m!374359))

(assert (=> b!288506 m!374355))

(declare-fun m!374361 () Bool)

(assert (=> b!288506 m!374361))

(declare-fun m!374363 () Bool)

(assert (=> b!288506 m!374363))

(declare-fun m!374365 () Bool)

(assert (=> b!288506 m!374365))

(assert (=> b!288506 m!372515))

(declare-fun m!374367 () Bool)

(assert (=> b!288506 m!374367))

(assert (=> b!288506 m!374365))

(assert (=> b!288506 m!374353))

(assert (=> b!288506 m!374367))

(declare-fun m!374369 () Bool)

(assert (=> b!288506 m!374369))

(assert (=> d!85157 d!85615))

(declare-fun d!85617 () Bool)

(assert (=> d!85617 (= (list!1645 (BalanceConc!2673 Empty!1332)) (list!1649 (c!54354 (BalanceConc!2673 Empty!1332))))))

(declare-fun bs!32659 () Bool)

(assert (= bs!32659 d!85617))

(declare-fun m!374371 () Bool)

(assert (=> bs!32659 m!374371))

(assert (=> d!85157 d!85617))

(declare-fun d!85619 () Bool)

(assert (=> d!85619 (= (isDefined!709 lt!121107) (not (isEmpty!2620 lt!121107)))))

(declare-fun bs!32660 () Bool)

(assert (= bs!32660 d!85619))

(assert (=> bs!32660 m!372493))

(assert (=> b!287691 d!85619))

(declare-fun d!85621 () Bool)

(declare-fun charsToBigInt!0 (List!3952 Int) Int)

(assert (=> d!85621 (= (inv!15 (value!25833 (h!9342 tokens!465))) (= (charsToBigInt!0 (text!5888 (value!25833 (h!9342 tokens!465))) 0) (value!25828 (value!25833 (h!9342 tokens!465)))))))

(declare-fun bs!32661 () Bool)

(assert (= bs!32661 d!85621))

(declare-fun m!374373 () Bool)

(assert (=> bs!32661 m!374373))

(assert (=> b!287461 d!85621))

(declare-fun b!288508 () Bool)

(declare-fun res!131743 () Bool)

(declare-fun e!179596 () Bool)

(assert (=> b!288508 (=> (not res!131743) (not e!179596))))

(assert (=> b!288508 (= res!131743 (isBalanced!377 (++!1054 (c!54354 call!16285) (c!54354 (ite c!54470 lt!121221 call!16283)))))))

(declare-fun b!288509 () Bool)

(declare-fun res!131744 () Bool)

(assert (=> b!288509 (=> (not res!131744) (not e!179596))))

(assert (=> b!288509 (= res!131744 (<= (height!166 (++!1054 (c!54354 call!16285) (c!54354 (ite c!54470 lt!121221 call!16283)))) (+ (max!0 (height!166 (c!54354 call!16285)) (height!166 (c!54354 (ite c!54470 lt!121221 call!16283)))) 1)))))

(declare-fun d!85623 () Bool)

(assert (=> d!85623 e!179596))

(declare-fun res!131741 () Bool)

(assert (=> d!85623 (=> (not res!131741) (not e!179596))))

(assert (=> d!85623 (= res!131741 (appendAssocInst!69 (c!54354 call!16285) (c!54354 (ite c!54470 lt!121221 call!16283))))))

(declare-fun lt!121643 () BalanceConc!2672)

(assert (=> d!85623 (= lt!121643 (BalanceConc!2673 (++!1054 (c!54354 call!16285) (c!54354 (ite c!54470 lt!121221 call!16283)))))))

(assert (=> d!85623 (= (++!1052 call!16285 (ite c!54470 lt!121221 call!16283)) lt!121643)))

(declare-fun b!288510 () Bool)

(declare-fun res!131742 () Bool)

(assert (=> b!288510 (=> (not res!131742) (not e!179596))))

(assert (=> b!288510 (= res!131742 (>= (height!166 (++!1054 (c!54354 call!16285) (c!54354 (ite c!54470 lt!121221 call!16283)))) (max!0 (height!166 (c!54354 call!16285)) (height!166 (c!54354 (ite c!54470 lt!121221 call!16283))))))))

(declare-fun b!288511 () Bool)

(assert (=> b!288511 (= e!179596 (= (list!1645 lt!121643) (++!1050 (list!1645 call!16285) (list!1645 (ite c!54470 lt!121221 call!16283)))))))

(assert (= (and d!85623 res!131741) b!288508))

(assert (= (and b!288508 res!131743) b!288509))

(assert (= (and b!288509 res!131744) b!288510))

(assert (= (and b!288510 res!131742) b!288511))

(declare-fun m!374375 () Bool)

(assert (=> d!85623 m!374375))

(declare-fun m!374377 () Bool)

(assert (=> d!85623 m!374377))

(declare-fun m!374379 () Bool)

(assert (=> b!288509 m!374379))

(declare-fun m!374381 () Bool)

(assert (=> b!288509 m!374381))

(assert (=> b!288509 m!374381))

(assert (=> b!288509 m!374379))

(declare-fun m!374383 () Bool)

(assert (=> b!288509 m!374383))

(assert (=> b!288509 m!374377))

(assert (=> b!288509 m!374377))

(declare-fun m!374385 () Bool)

(assert (=> b!288509 m!374385))

(declare-fun m!374387 () Bool)

(assert (=> b!288511 m!374387))

(declare-fun m!374389 () Bool)

(assert (=> b!288511 m!374389))

(declare-fun m!374391 () Bool)

(assert (=> b!288511 m!374391))

(assert (=> b!288511 m!374389))

(assert (=> b!288511 m!374391))

(declare-fun m!374393 () Bool)

(assert (=> b!288511 m!374393))

(assert (=> b!288508 m!374377))

(assert (=> b!288508 m!374377))

(declare-fun m!374395 () Bool)

(assert (=> b!288508 m!374395))

(assert (=> b!288510 m!374379))

(assert (=> b!288510 m!374381))

(assert (=> b!288510 m!374381))

(assert (=> b!288510 m!374379))

(assert (=> b!288510 m!374383))

(assert (=> b!288510 m!374377))

(assert (=> b!288510 m!374377))

(assert (=> b!288510 m!374385))

(assert (=> bm!16280 d!85623))

(declare-fun d!85625 () Bool)

(declare-fun lt!121646 () Bool)

(declare-fun content!582 (List!3954) (InoxSet Rule!1310))

(assert (=> d!85625 (= lt!121646 (select (content!582 rules!1920) (rule!1354 (_1!2457 (get!1329 lt!121107)))))))

(declare-fun e!179601 () Bool)

(assert (=> d!85625 (= lt!121646 e!179601)))

(declare-fun res!131749 () Bool)

(assert (=> d!85625 (=> (not res!131749) (not e!179601))))

(assert (=> d!85625 (= res!131749 ((_ is Cons!3944) rules!1920))))

(assert (=> d!85625 (= (contains!769 rules!1920 (rule!1354 (_1!2457 (get!1329 lt!121107)))) lt!121646)))

(declare-fun b!288516 () Bool)

(declare-fun e!179602 () Bool)

(assert (=> b!288516 (= e!179601 e!179602)))

(declare-fun res!131750 () Bool)

(assert (=> b!288516 (=> res!131750 e!179602)))

(assert (=> b!288516 (= res!131750 (= (h!9341 rules!1920) (rule!1354 (_1!2457 (get!1329 lt!121107)))))))

(declare-fun b!288517 () Bool)

(assert (=> b!288517 (= e!179602 (contains!769 (t!40182 rules!1920) (rule!1354 (_1!2457 (get!1329 lt!121107)))))))

(assert (= (and d!85625 res!131749) b!288516))

(assert (= (and b!288516 (not res!131750)) b!288517))

(declare-fun m!374397 () Bool)

(assert (=> d!85625 m!374397))

(declare-fun m!374399 () Bool)

(assert (=> d!85625 m!374399))

(declare-fun m!374401 () Bool)

(assert (=> b!288517 m!374401))

(assert (=> b!287687 d!85625))

(assert (=> b!287687 d!85293))

(declare-fun b!288518 () Bool)

(declare-fun e!179603 () List!3953)

(assert (=> b!288518 (= e!179603 Nil!3943)))

(declare-fun b!288520 () Bool)

(declare-fun e!179604 () List!3953)

(assert (=> b!288520 (= e!179604 (list!1652 (xs!3931 (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 0)))))))

(declare-fun d!85627 () Bool)

(declare-fun c!54640 () Bool)

(assert (=> d!85627 (= c!54640 ((_ is Empty!1332) (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 0))))))

(assert (=> d!85627 (= (list!1649 (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 0))) e!179603)))

(declare-fun b!288521 () Bool)

(assert (=> b!288521 (= e!179604 (++!1050 (list!1649 (left!3260 (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 0)))) (list!1649 (right!3590 (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 0))))))))

(declare-fun b!288519 () Bool)

(assert (=> b!288519 (= e!179603 e!179604)))

(declare-fun c!54641 () Bool)

(assert (=> b!288519 (= c!54641 ((_ is Leaf!2049) (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 lt!120873 separatorToken!170 0))))))

(assert (= (and d!85627 c!54640) b!288518))

(assert (= (and d!85627 (not c!54640)) b!288519))

(assert (= (and b!288519 c!54641) b!288520))

(assert (= (and b!288519 (not c!54641)) b!288521))

(declare-fun m!374403 () Bool)

(assert (=> b!288520 m!374403))

(declare-fun m!374405 () Bool)

(assert (=> b!288521 m!374405))

(declare-fun m!374407 () Bool)

(assert (=> b!288521 m!374407))

(assert (=> b!288521 m!374405))

(assert (=> b!288521 m!374407))

(declare-fun m!374409 () Bool)

(assert (=> b!288521 m!374409))

(assert (=> d!85203 d!85627))

(assert (=> bm!16254 d!85357))

(declare-fun d!85629 () Bool)

(declare-fun lt!121647 () Bool)

(assert (=> d!85629 (= lt!121647 (isEmpty!2616 (list!1648 (_1!2459 lt!120920))))))

(assert (=> d!85629 (= lt!121647 (isEmpty!2617 (c!54356 (_1!2459 lt!120920))))))

(assert (=> d!85629 (= (isEmpty!2610 (_1!2459 lt!120920)) lt!121647)))

(declare-fun bs!32662 () Bool)

(assert (= bs!32662 d!85629))

(assert (=> bs!32662 m!371989))

(assert (=> bs!32662 m!371989))

(declare-fun m!374411 () Bool)

(assert (=> bs!32662 m!374411))

(declare-fun m!374413 () Bool)

(assert (=> bs!32662 m!374413))

(assert (=> b!287411 d!85629))

(declare-fun d!85631 () Bool)

(declare-fun c!54642 () Bool)

(assert (=> d!85631 (= c!54642 ((_ is Node!1332) (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465))))))))

(declare-fun e!179605 () Bool)

(assert (=> d!85631 (= (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465))))) e!179605)))

(declare-fun b!288522 () Bool)

(assert (=> b!288522 (= e!179605 (inv!4880 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465))))))))

(declare-fun b!288523 () Bool)

(declare-fun e!179606 () Bool)

(assert (=> b!288523 (= e!179605 e!179606)))

(declare-fun res!131751 () Bool)

(assert (=> b!288523 (= res!131751 (not ((_ is Leaf!2049) (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465)))))))))

(assert (=> b!288523 (=> res!131751 e!179606)))

(declare-fun b!288524 () Bool)

(assert (=> b!288524 (= e!179606 (inv!4881 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465))))))))

(assert (= (and d!85631 c!54642) b!288522))

(assert (= (and d!85631 (not c!54642)) b!288523))

(assert (= (and b!288523 (not res!131751)) b!288524))

(declare-fun m!374415 () Bool)

(assert (=> b!288522 m!374415))

(declare-fun m!374417 () Bool)

(assert (=> b!288524 m!374417))

(assert (=> b!287457 d!85631))

(declare-fun d!85633 () Bool)

(declare-fun lt!121648 () Int)

(assert (=> d!85633 (= lt!121648 (size!3164 (list!1648 lt!120873)))))

(assert (=> d!85633 (= lt!121648 (size!3165 (c!54356 lt!120873)))))

(assert (=> d!85633 (= (size!3161 lt!120873) lt!121648)))

(declare-fun bs!32663 () Bool)

(assert (= bs!32663 d!85633))

(assert (=> bs!32663 m!371825))

(assert (=> bs!32663 m!371825))

(declare-fun m!374419 () Bool)

(assert (=> bs!32663 m!374419))

(declare-fun m!374421 () Bool)

(assert (=> bs!32663 m!374421))

(assert (=> b!287854 d!85633))

(declare-fun d!85635 () Bool)

(declare-fun lt!121649 () Int)

(assert (=> d!85635 (>= lt!121649 0)))

(declare-fun e!179607 () Int)

(assert (=> d!85635 (= lt!121649 e!179607)))

(declare-fun c!54643 () Bool)

(assert (=> d!85635 (= c!54643 ((_ is Nil!3943) lt!120926))))

(assert (=> d!85635 (= (size!3163 lt!120926) lt!121649)))

(declare-fun b!288525 () Bool)

(assert (=> b!288525 (= e!179607 0)))

(declare-fun b!288526 () Bool)

(assert (=> b!288526 (= e!179607 (+ 1 (size!3163 (t!40181 lt!120926))))))

(assert (= (and d!85635 c!54643) b!288525))

(assert (= (and d!85635 (not c!54643)) b!288526))

(declare-fun m!374423 () Bool)

(assert (=> b!288526 m!374423))

(assert (=> b!287468 d!85635))

(declare-fun d!85637 () Bool)

(declare-fun lt!121650 () Int)

(assert (=> d!85637 (>= lt!121650 0)))

(declare-fun e!179608 () Int)

(assert (=> d!85637 (= lt!121650 e!179608)))

(declare-fun c!54644 () Bool)

(assert (=> d!85637 (= c!54644 ((_ is Nil!3943) (++!1050 lt!120875 lt!120869)))))

(assert (=> d!85637 (= (size!3163 (++!1050 lt!120875 lt!120869)) lt!121650)))

(declare-fun b!288527 () Bool)

(assert (=> b!288527 (= e!179608 0)))

(declare-fun b!288528 () Bool)

(assert (=> b!288528 (= e!179608 (+ 1 (size!3163 (t!40181 (++!1050 lt!120875 lt!120869)))))))

(assert (= (and d!85637 c!54644) b!288527))

(assert (= (and d!85637 (not c!54644)) b!288528))

(assert (=> b!288528 m!373843))

(assert (=> b!287468 d!85637))

(assert (=> b!287468 d!85451))

(declare-fun d!85639 () Bool)

(assert (=> d!85639 (= (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465)))) (isBalanced!377 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465))))))))

(declare-fun bs!32664 () Bool)

(assert (= bs!32664 d!85639))

(declare-fun m!374425 () Bool)

(assert (=> bs!32664 m!374425))

(assert (=> tb!16627 d!85639))

(declare-fun b!288529 () Bool)

(declare-fun res!131754 () Bool)

(declare-fun e!179609 () Bool)

(assert (=> b!288529 (=> (not res!131754) (not e!179609))))

(assert (=> b!288529 (= res!131754 (isBalanced!377 (++!1054 (c!54354 call!16261) (c!54354 (ite c!54433 lt!121051 call!16259)))))))

(declare-fun b!288530 () Bool)

(declare-fun res!131755 () Bool)

(assert (=> b!288530 (=> (not res!131755) (not e!179609))))

(assert (=> b!288530 (= res!131755 (<= (height!166 (++!1054 (c!54354 call!16261) (c!54354 (ite c!54433 lt!121051 call!16259)))) (+ (max!0 (height!166 (c!54354 call!16261)) (height!166 (c!54354 (ite c!54433 lt!121051 call!16259)))) 1)))))

(declare-fun d!85641 () Bool)

(assert (=> d!85641 e!179609))

(declare-fun res!131752 () Bool)

(assert (=> d!85641 (=> (not res!131752) (not e!179609))))

(assert (=> d!85641 (= res!131752 (appendAssocInst!69 (c!54354 call!16261) (c!54354 (ite c!54433 lt!121051 call!16259))))))

(declare-fun lt!121651 () BalanceConc!2672)

(assert (=> d!85641 (= lt!121651 (BalanceConc!2673 (++!1054 (c!54354 call!16261) (c!54354 (ite c!54433 lt!121051 call!16259)))))))

(assert (=> d!85641 (= (++!1052 call!16261 (ite c!54433 lt!121051 call!16259)) lt!121651)))

(declare-fun b!288531 () Bool)

(declare-fun res!131753 () Bool)

(assert (=> b!288531 (=> (not res!131753) (not e!179609))))

(assert (=> b!288531 (= res!131753 (>= (height!166 (++!1054 (c!54354 call!16261) (c!54354 (ite c!54433 lt!121051 call!16259)))) (max!0 (height!166 (c!54354 call!16261)) (height!166 (c!54354 (ite c!54433 lt!121051 call!16259))))))))

(declare-fun b!288532 () Bool)

(assert (=> b!288532 (= e!179609 (= (list!1645 lt!121651) (++!1050 (list!1645 call!16261) (list!1645 (ite c!54433 lt!121051 call!16259)))))))

(assert (= (and d!85641 res!131752) b!288529))

(assert (= (and b!288529 res!131754) b!288530))

(assert (= (and b!288530 res!131755) b!288531))

(assert (= (and b!288531 res!131753) b!288532))

(declare-fun m!374427 () Bool)

(assert (=> d!85641 m!374427))

(declare-fun m!374429 () Bool)

(assert (=> d!85641 m!374429))

(declare-fun m!374431 () Bool)

(assert (=> b!288530 m!374431))

(declare-fun m!374433 () Bool)

(assert (=> b!288530 m!374433))

(assert (=> b!288530 m!374433))

(assert (=> b!288530 m!374431))

(declare-fun m!374435 () Bool)

(assert (=> b!288530 m!374435))

(assert (=> b!288530 m!374429))

(assert (=> b!288530 m!374429))

(declare-fun m!374437 () Bool)

(assert (=> b!288530 m!374437))

(declare-fun m!374439 () Bool)

(assert (=> b!288532 m!374439))

(declare-fun m!374441 () Bool)

(assert (=> b!288532 m!374441))

(declare-fun m!374443 () Bool)

(assert (=> b!288532 m!374443))

(assert (=> b!288532 m!374441))

(assert (=> b!288532 m!374443))

(declare-fun m!374445 () Bool)

(assert (=> b!288532 m!374445))

(assert (=> b!288529 m!374429))

(assert (=> b!288529 m!374429))

(declare-fun m!374447 () Bool)

(assert (=> b!288529 m!374447))

(assert (=> b!288531 m!374431))

(assert (=> b!288531 m!374433))

(assert (=> b!288531 m!374433))

(assert (=> b!288531 m!374431))

(assert (=> b!288531 m!374435))

(assert (=> b!288531 m!374429))

(assert (=> b!288531 m!374429))

(assert (=> b!288531 m!374437))

(assert (=> bm!16256 d!85641))

(declare-fun d!85643 () Bool)

(declare-fun lt!121654 () Int)

(assert (=> d!85643 (= lt!121654 (size!3163 (list!1645 (_2!2459 lt!120920))))))

(declare-fun size!3168 (Conc!1332) Int)

(assert (=> d!85643 (= lt!121654 (size!3168 (c!54354 (_2!2459 lt!120920))))))

(assert (=> d!85643 (= (size!3162 (_2!2459 lt!120920)) lt!121654)))

(declare-fun bs!32665 () Bool)

(assert (= bs!32665 d!85643))

(assert (=> bs!32665 m!372003))

(assert (=> bs!32665 m!372003))

(declare-fun m!374449 () Bool)

(assert (=> bs!32665 m!374449))

(declare-fun m!374451 () Bool)

(assert (=> bs!32665 m!374451))

(assert (=> b!287415 d!85643))

(declare-fun d!85645 () Bool)

(declare-fun lt!121655 () Int)

(assert (=> d!85645 (= lt!121655 (size!3163 (list!1645 (seqFromList!875 lt!120875))))))

(assert (=> d!85645 (= lt!121655 (size!3168 (c!54354 (seqFromList!875 lt!120875))))))

(assert (=> d!85645 (= (size!3162 (seqFromList!875 lt!120875)) lt!121655)))

(declare-fun bs!32666 () Bool)

(assert (= bs!32666 d!85645))

(assert (=> bs!32666 m!371763))

(assert (=> bs!32666 m!371991))

(assert (=> bs!32666 m!371991))

(declare-fun m!374453 () Bool)

(assert (=> bs!32666 m!374453))

(declare-fun m!374455 () Bool)

(assert (=> bs!32666 m!374455))

(assert (=> b!287415 d!85645))

(assert (=> d!85175 d!85361))

(declare-fun d!85647 () Bool)

(assert (=> d!85647 (isPrefix!419 lt!121207 lt!121204)))

(declare-fun lt!121658 () Unit!5300)

(declare-fun choose!2603 (List!3953 List!3953) Unit!5300)

(assert (=> d!85647 (= lt!121658 (choose!2603 lt!121207 lt!121204))))

(assert (=> d!85647 (= (lemmaIsPrefixRefl!225 lt!121207 lt!121204) lt!121658)))

(declare-fun bs!32667 () Bool)

(assert (= bs!32667 d!85647))

(assert (=> bs!32667 m!372685))

(declare-fun m!374457 () Bool)

(assert (=> bs!32667 m!374457))

(assert (=> d!85175 d!85647))

(assert (=> d!85175 d!85317))

(declare-fun b!288542 () Bool)

(declare-fun res!131767 () Bool)

(declare-fun e!179617 () Bool)

(assert (=> b!288542 (=> (not res!131767) (not e!179617))))

(assert (=> b!288542 (= res!131767 (= (head!931 lt!121207) (head!931 lt!121204)))))

(declare-fun b!288544 () Bool)

(declare-fun e!179618 () Bool)

(assert (=> b!288544 (= e!179618 (>= (size!3163 lt!121204) (size!3163 lt!121207)))))

(declare-fun d!85649 () Bool)

(assert (=> d!85649 e!179618))

(declare-fun res!131766 () Bool)

(assert (=> d!85649 (=> res!131766 e!179618)))

(declare-fun lt!121661 () Bool)

(assert (=> d!85649 (= res!131766 (not lt!121661))))

(declare-fun e!179616 () Bool)

(assert (=> d!85649 (= lt!121661 e!179616)))

(declare-fun res!131765 () Bool)

(assert (=> d!85649 (=> res!131765 e!179616)))

(assert (=> d!85649 (= res!131765 ((_ is Nil!3943) lt!121207))))

(assert (=> d!85649 (= (isPrefix!419 lt!121207 lt!121204) lt!121661)))

(declare-fun b!288543 () Bool)

(assert (=> b!288543 (= e!179617 (isPrefix!419 (tail!513 lt!121207) (tail!513 lt!121204)))))

(declare-fun b!288541 () Bool)

(assert (=> b!288541 (= e!179616 e!179617)))

(declare-fun res!131764 () Bool)

(assert (=> b!288541 (=> (not res!131764) (not e!179617))))

(assert (=> b!288541 (= res!131764 (not ((_ is Nil!3943) lt!121204)))))

(assert (= (and d!85649 (not res!131765)) b!288541))

(assert (= (and b!288541 res!131764) b!288542))

(assert (= (and b!288542 res!131767) b!288543))

(assert (= (and d!85649 (not res!131766)) b!288544))

(declare-fun m!374459 () Bool)

(assert (=> b!288542 m!374459))

(declare-fun m!374461 () Bool)

(assert (=> b!288542 m!374461))

(declare-fun m!374463 () Bool)

(assert (=> b!288544 m!374463))

(declare-fun m!374465 () Bool)

(assert (=> b!288544 m!374465))

(declare-fun m!374467 () Bool)

(assert (=> b!288543 m!374467))

(declare-fun m!374469 () Bool)

(assert (=> b!288543 m!374469))

(assert (=> b!288543 m!374467))

(assert (=> b!288543 m!374469))

(declare-fun m!374471 () Bool)

(assert (=> b!288543 m!374471))

(assert (=> d!85175 d!85649))

(declare-fun d!85651 () Bool)

(assert (=> d!85651 true))

(declare-fun lt!121676 () Bool)

(declare-fun lambda!9898 () Int)

(declare-fun forall!1020 (List!3954 Int) Bool)

(assert (=> d!85651 (= lt!121676 (forall!1020 rules!1920 lambda!9898))))

(declare-fun e!179628 () Bool)

(assert (=> d!85651 (= lt!121676 e!179628)))

(declare-fun res!131774 () Bool)

(assert (=> d!85651 (=> res!131774 e!179628)))

(assert (=> d!85651 (= res!131774 (not ((_ is Cons!3944) rules!1920)))))

(assert (=> d!85651 (= (rulesValidInductive!220 thiss!17480 rules!1920) lt!121676)))

(declare-fun b!288555 () Bool)

(declare-fun e!179627 () Bool)

(assert (=> b!288555 (= e!179628 e!179627)))

(declare-fun res!131775 () Bool)

(assert (=> b!288555 (=> (not res!131775) (not e!179627))))

(declare-fun ruleValid!94 (LexerInterface!641 Rule!1310) Bool)

(assert (=> b!288555 (= res!131775 (ruleValid!94 thiss!17480 (h!9341 rules!1920)))))

(declare-fun b!288556 () Bool)

(assert (=> b!288556 (= e!179627 (rulesValidInductive!220 thiss!17480 (t!40182 rules!1920)))))

(assert (= (and d!85651 (not res!131774)) b!288555))

(assert (= (and b!288555 res!131775) b!288556))

(declare-fun m!374473 () Bool)

(assert (=> d!85651 m!374473))

(declare-fun m!374475 () Bool)

(assert (=> b!288555 m!374475))

(declare-fun m!374477 () Bool)

(assert (=> b!288556 m!374477))

(assert (=> d!85175 d!85651))

(declare-fun d!85653 () Bool)

(assert (=> d!85653 (= (isDefined!709 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))) (not (isEmpty!2620 (maxPrefixZipper!128 thiss!17480 rules!1920 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))))

(declare-fun bs!32668 () Bool)

(assert (= bs!32668 d!85653))

(assert (=> bs!32668 m!372679))

(declare-fun m!374479 () Bool)

(assert (=> bs!32668 m!374479))

(assert (=> d!85175 d!85653))

(declare-fun d!85655 () Bool)

(assert (=> d!85655 (= (isDefined!710 lt!121205) (not (isEmpty!2622 lt!121205)))))

(declare-fun bs!32669 () Bool)

(assert (= bs!32669 d!85655))

(declare-fun m!374481 () Bool)

(assert (=> bs!32669 m!374481))

(assert (=> d!85175 d!85655))

(declare-fun d!85657 () Bool)

(declare-fun c!54647 () Bool)

(assert (=> d!85657 (= c!54647 ((_ is Nil!3943) lt!121066))))

(declare-fun e!179629 () (InoxSet C!2880))

(assert (=> d!85657 (= (content!579 lt!121066) e!179629)))

(declare-fun b!288559 () Bool)

(assert (=> b!288559 (= e!179629 ((as const (Array C!2880 Bool)) false))))

(declare-fun b!288560 () Bool)

(assert (=> b!288560 (= e!179629 ((_ map or) (store ((as const (Array C!2880 Bool)) false) (h!9340 lt!121066) true) (content!579 (t!40181 lt!121066))))))

(assert (= (and d!85657 c!54647) b!288559))

(assert (= (and d!85657 (not c!54647)) b!288560))

(declare-fun m!374483 () Bool)

(assert (=> b!288560 m!374483))

(declare-fun m!374485 () Bool)

(assert (=> b!288560 m!374485))

(assert (=> d!85131 d!85657))

(assert (=> d!85131 d!85351))

(declare-fun d!85659 () Bool)

(declare-fun c!54648 () Bool)

(assert (=> d!85659 (= c!54648 ((_ is Nil!3943) lt!120874))))

(declare-fun e!179630 () (InoxSet C!2880))

(assert (=> d!85659 (= (content!579 lt!120874) e!179630)))

(declare-fun b!288561 () Bool)

(assert (=> b!288561 (= e!179630 ((as const (Array C!2880 Bool)) false))))

(declare-fun b!288562 () Bool)

(assert (=> b!288562 (= e!179630 ((_ map or) (store ((as const (Array C!2880 Bool)) false) (h!9340 lt!120874) true) (content!579 (t!40181 lt!120874))))))

(assert (= (and d!85659 c!54648) b!288561))

(assert (= (and d!85659 (not c!54648)) b!288562))

(declare-fun m!374487 () Bool)

(assert (=> b!288562 m!374487))

(declare-fun m!374489 () Bool)

(assert (=> b!288562 m!374489))

(assert (=> d!85131 d!85659))

(assert (=> b!287838 d!85361))

(assert (=> b!287838 d!85309))

(assert (=> b!287838 d!85359))

(assert (=> b!287838 d!85315))

(assert (=> b!287838 d!85317))

(declare-fun b!288581 () Bool)

(declare-fun e!179642 () Bool)

(assert (=> b!288581 (= e!179642 (not (isEmpty!2617 (right!3591 (c!54356 lt!121159)))))))

(declare-fun b!288582 () Bool)

(declare-fun res!131799 () Bool)

(assert (=> b!288582 (=> (not res!131799) (not e!179642))))

(assert (=> b!288582 (= res!131799 (not (isEmpty!2617 (left!3261 (c!54356 lt!121159)))))))

(declare-fun d!85661 () Bool)

(declare-fun res!131794 () Bool)

(declare-fun e!179641 () Bool)

(assert (=> d!85661 (=> res!131794 e!179641)))

(assert (=> d!85661 (= res!131794 (not ((_ is Node!1333) (c!54356 lt!121159))))))

(assert (=> d!85661 (= (isBalanced!374 (c!54356 lt!121159)) e!179641)))

(declare-fun b!288583 () Bool)

(assert (=> b!288583 (= e!179641 e!179642)))

(declare-fun res!131796 () Bool)

(assert (=> b!288583 (=> (not res!131796) (not e!179642))))

(declare-fun height!167 (Conc!1333) Int)

(assert (=> b!288583 (= res!131796 (<= (- 1) (- (height!167 (left!3261 (c!54356 lt!121159))) (height!167 (right!3591 (c!54356 lt!121159))))))))

(declare-fun b!288584 () Bool)

(declare-fun res!131797 () Bool)

(assert (=> b!288584 (=> (not res!131797) (not e!179642))))

(assert (=> b!288584 (= res!131797 (isBalanced!374 (left!3261 (c!54356 lt!121159))))))

(declare-fun b!288585 () Bool)

(declare-fun res!131795 () Bool)

(assert (=> b!288585 (=> (not res!131795) (not e!179642))))

(assert (=> b!288585 (= res!131795 (isBalanced!374 (right!3591 (c!54356 lt!121159))))))

(declare-fun b!288586 () Bool)

(declare-fun res!131798 () Bool)

(assert (=> b!288586 (=> (not res!131798) (not e!179642))))

(assert (=> b!288586 (= res!131798 (<= (- (height!167 (left!3261 (c!54356 lt!121159))) (height!167 (right!3591 (c!54356 lt!121159)))) 1))))

(assert (= (and d!85661 (not res!131794)) b!288583))

(assert (= (and b!288583 res!131796) b!288586))

(assert (= (and b!288586 res!131798) b!288584))

(assert (= (and b!288584 res!131797) b!288585))

(assert (= (and b!288585 res!131795) b!288582))

(assert (= (and b!288582 res!131799) b!288581))

(declare-fun m!374491 () Bool)

(assert (=> b!288582 m!374491))

(declare-fun m!374493 () Bool)

(assert (=> b!288585 m!374493))

(declare-fun m!374495 () Bool)

(assert (=> b!288581 m!374495))

(declare-fun m!374497 () Bool)

(assert (=> b!288584 m!374497))

(declare-fun m!374499 () Bool)

(assert (=> b!288583 m!374499))

(declare-fun m!374501 () Bool)

(assert (=> b!288583 m!374501))

(assert (=> b!288586 m!374499))

(assert (=> b!288586 m!374501))

(assert (=> b!287732 d!85661))

(declare-fun d!85663 () Bool)

(declare-fun lt!121685 () Bool)

(assert (=> d!85663 (= lt!121685 (isEmpty!2618 (list!1645 (_2!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465))))))))))

(assert (=> d!85663 (= lt!121685 (isEmpty!2623 (c!54354 (_2!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465))))))))))

(assert (=> d!85663 (= (isEmpty!2615 (_2!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)))))) lt!121685)))

(declare-fun bs!32670 () Bool)

(assert (= bs!32670 d!85663))

(declare-fun m!374503 () Bool)

(assert (=> bs!32670 m!374503))

(assert (=> bs!32670 m!374503))

(declare-fun m!374505 () Bool)

(assert (=> bs!32670 m!374505))

(declare-fun m!374507 () Bool)

(assert (=> bs!32670 m!374507))

(assert (=> b!287446 d!85663))

(declare-fun b!288588 () Bool)

(declare-fun e!179643 () Bool)

(declare-fun lt!121686 () tuple2!4486)

(assert (=> b!288588 (= e!179643 (= (list!1645 (_2!2459 lt!121686)) (_2!2461 (lexList!227 thiss!17480 rules!1920 (list!1645 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465))))))))))

(declare-fun b!288589 () Bool)

(declare-fun res!131801 () Bool)

(assert (=> b!288589 (=> (not res!131801) (not e!179643))))

(assert (=> b!288589 (= res!131801 (= (list!1648 (_1!2459 lt!121686)) (_1!2461 (lexList!227 thiss!17480 rules!1920 (list!1645 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465))))))))))

(declare-fun e!179644 () Bool)

(declare-fun b!288590 () Bool)

(assert (=> b!288590 (= e!179644 (= (_2!2459 lt!121686) (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)))))))

(declare-fun b!288591 () Bool)

(declare-fun e!179645 () Bool)

(assert (=> b!288591 (= e!179644 e!179645)))

(declare-fun res!131802 () Bool)

(assert (=> b!288591 (= res!131802 (< (size!3162 (_2!2459 lt!121686)) (size!3162 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465))))))))

(assert (=> b!288591 (=> (not res!131802) (not e!179645))))

(declare-fun b!288587 () Bool)

(assert (=> b!288587 (= e!179645 (not (isEmpty!2610 (_1!2459 lt!121686))))))

(declare-fun d!85665 () Bool)

(assert (=> d!85665 e!179643))

(declare-fun res!131800 () Bool)

(assert (=> d!85665 (=> (not res!131800) (not e!179643))))

(assert (=> d!85665 (= res!131800 e!179644)))

(declare-fun c!54649 () Bool)

(assert (=> d!85665 (= c!54649 (> (size!3161 (_1!2459 lt!121686)) 0))))

(assert (=> d!85665 (= lt!121686 (lexTailRecV2!194 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465))) (BalanceConc!2673 Empty!1332) (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465))) (BalanceConc!2675 Empty!1333)))))

(assert (=> d!85665 (= (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)))) lt!121686)))

(assert (= (and d!85665 c!54649) b!288591))

(assert (= (and d!85665 (not c!54649)) b!288590))

(assert (= (and b!288591 res!131802) b!288587))

(assert (= (and d!85665 res!131800) b!288589))

(assert (= (and b!288589 res!131801) b!288588))

(declare-fun m!374509 () Bool)

(assert (=> b!288589 m!374509))

(assert (=> b!288589 m!372047))

(declare-fun m!374511 () Bool)

(assert (=> b!288589 m!374511))

(assert (=> b!288589 m!374511))

(declare-fun m!374513 () Bool)

(assert (=> b!288589 m!374513))

(declare-fun m!374515 () Bool)

(assert (=> d!85665 m!374515))

(assert (=> d!85665 m!372047))

(assert (=> d!85665 m!372047))

(declare-fun m!374517 () Bool)

(assert (=> d!85665 m!374517))

(declare-fun m!374519 () Bool)

(assert (=> b!288591 m!374519))

(assert (=> b!288591 m!372047))

(declare-fun m!374521 () Bool)

(assert (=> b!288591 m!374521))

(declare-fun m!374523 () Bool)

(assert (=> b!288588 m!374523))

(assert (=> b!288588 m!372047))

(assert (=> b!288588 m!374511))

(assert (=> b!288588 m!374511))

(assert (=> b!288588 m!374513))

(declare-fun m!374525 () Bool)

(assert (=> b!288587 m!374525))

(assert (=> b!287446 d!85665))

(assert (=> b!287446 d!85491))

(assert (=> b!287446 d!85167))

(declare-fun d!85667 () Bool)

(assert (=> d!85667 (= (list!1645 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170))) (list!1649 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170)))))))

(declare-fun bs!32671 () Bool)

(assert (= bs!32671 d!85667))

(declare-fun m!374527 () Bool)

(assert (=> bs!32671 m!374527))

(assert (=> b!287463 d!85667))

(assert (=> bs!32504 d!85081))

(declare-fun d!85669 () Bool)

(declare-fun lt!121687 () BalanceConc!2672)

(assert (=> d!85669 (= (list!1645 lt!121687) (originalCharacters!798 (ite c!54433 call!16262 call!16263)))))

(assert (=> d!85669 (= lt!121687 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54433 call!16262 call!16263)))) (value!25833 (ite c!54433 call!16262 call!16263))))))

(assert (=> d!85669 (= (charsOf!398 (ite c!54433 call!16262 call!16263)) lt!121687)))

(declare-fun b_lambda!9589 () Bool)

(assert (=> (not b_lambda!9589) (not d!85669)))

(declare-fun tb!16741 () Bool)

(declare-fun t!40337 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54433 call!16262 call!16263))))) t!40337) tb!16741))

(declare-fun tp!105480 () Bool)

(declare-fun e!179646 () Bool)

(declare-fun b!288592 () Bool)

(assert (=> b!288592 (= e!179646 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54433 call!16262 call!16263)))) (value!25833 (ite c!54433 call!16262 call!16263))))) tp!105480))))

(declare-fun result!20580 () Bool)

(assert (=> tb!16741 (= result!20580 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54433 call!16262 call!16263)))) (value!25833 (ite c!54433 call!16262 call!16263)))) e!179646))))

(assert (= tb!16741 b!288592))

(declare-fun m!374529 () Bool)

(assert (=> b!288592 m!374529))

(declare-fun m!374531 () Bool)

(assert (=> tb!16741 m!374531))

(assert (=> d!85669 t!40337))

(declare-fun b_and!23341 () Bool)

(assert (= b_and!23339 (and (=> t!40337 result!20580) b_and!23341)))

(declare-fun tb!16743 () Bool)

(declare-fun t!40339 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54433 call!16262 call!16263))))) t!40339) tb!16743))

(declare-fun result!20582 () Bool)

(assert (= result!20582 result!20580))

(assert (=> d!85669 t!40339))

(declare-fun b_and!23343 () Bool)

(assert (= b_and!23333 (and (=> t!40339 result!20582) b_and!23343)))

(declare-fun t!40341 () Bool)

(declare-fun tb!16745 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54433 call!16262 call!16263))))) t!40341) tb!16745))

(declare-fun result!20584 () Bool)

(assert (= result!20584 result!20580))

(assert (=> d!85669 t!40341))

(declare-fun b_and!23345 () Bool)

(assert (= b_and!23335 (and (=> t!40341 result!20584) b_and!23345)))

(declare-fun tb!16747 () Bool)

(declare-fun t!40343 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54433 call!16262 call!16263))))) t!40343) tb!16747))

(declare-fun result!20586 () Bool)

(assert (= result!20586 result!20580))

(assert (=> d!85669 t!40343))

(declare-fun b_and!23347 () Bool)

(assert (= b_and!23331 (and (=> t!40343 result!20586) b_and!23347)))

(declare-fun t!40345 () Bool)

(declare-fun tb!16749 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54433 call!16262 call!16263))))) t!40345) tb!16749))

(declare-fun result!20588 () Bool)

(assert (= result!20588 result!20580))

(assert (=> d!85669 t!40345))

(declare-fun b_and!23349 () Bool)

(assert (= b_and!23337 (and (=> t!40345 result!20588) b_and!23349)))

(declare-fun m!374533 () Bool)

(assert (=> d!85669 m!374533))

(declare-fun m!374535 () Bool)

(assert (=> d!85669 m!374535))

(assert (=> bm!16258 d!85669))

(declare-fun bs!32672 () Bool)

(declare-fun d!85671 () Bool)

(assert (= bs!32672 (and d!85671 d!85651)))

(declare-fun lambda!9905 () Int)

(assert (=> bs!32672 (= lambda!9905 lambda!9898)))

(assert (=> d!85671 true))

(declare-fun lt!121690 () Bool)

(assert (=> d!85671 (= lt!121690 (rulesValidInductive!220 thiss!17480 rules!1920))))

(assert (=> d!85671 (= lt!121690 (forall!1020 rules!1920 lambda!9905))))

(assert (=> d!85671 (= (rulesValid!244 thiss!17480 rules!1920) lt!121690)))

(declare-fun bs!32673 () Bool)

(assert (= bs!32673 d!85671))

(assert (=> bs!32673 m!372499))

(declare-fun m!374537 () Bool)

(assert (=> bs!32673 m!374537))

(assert (=> d!85197 d!85671))

(declare-fun b!288599 () Bool)

(declare-fun e!179653 () Option!870)

(declare-fun lt!121703 () Option!870)

(declare-fun lt!121705 () Option!870)

(assert (=> b!288599 (= e!179653 (ite (and ((_ is None!869) lt!121703) ((_ is None!869) lt!121705)) None!869 (ite ((_ is None!869) lt!121705) lt!121703 (ite ((_ is None!869) lt!121703) lt!121705 (ite (>= (size!3157 (_1!2457 (v!14810 lt!121703))) (size!3157 (_1!2457 (v!14810 lt!121705)))) lt!121703 lt!121705)))))))

(declare-fun call!16341 () Option!870)

(assert (=> b!288599 (= lt!121703 call!16341)))

(assert (=> b!288599 (= lt!121705 (maxPrefix!357 thiss!17480 (t!40182 rules!1920) (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229)))))

(declare-fun b!288600 () Bool)

(assert (=> b!288600 (= e!179653 call!16341)))

(declare-fun b!288602 () Bool)

(declare-fun res!131810 () Bool)

(declare-fun e!179652 () Bool)

(assert (=> b!288602 (=> (not res!131810) (not e!179652))))

(declare-fun lt!121704 () Option!870)

(assert (=> b!288602 (= res!131810 (= (value!25833 (_1!2457 (get!1329 lt!121704))) (apply!844 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121704)))) (seqFromList!875 (originalCharacters!798 (_1!2457 (get!1329 lt!121704)))))))))

(declare-fun b!288603 () Bool)

(declare-fun res!131811 () Bool)

(assert (=> b!288603 (=> (not res!131811) (not e!179652))))

(assert (=> b!288603 (= res!131811 (< (size!3163 (_2!2457 (get!1329 lt!121704))) (size!3163 (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229))))))

(declare-fun b!288604 () Bool)

(declare-fun res!131807 () Bool)

(assert (=> b!288604 (=> (not res!131807) (not e!179652))))

(assert (=> b!288604 (= res!131807 (= (++!1050 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121704)))) (_2!2457 (get!1329 lt!121704))) (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229)))))

(declare-fun b!288605 () Bool)

(declare-fun e!179654 () Bool)

(assert (=> b!288605 (= e!179654 e!179652)))

(declare-fun res!131809 () Bool)

(assert (=> b!288605 (=> (not res!131809) (not e!179652))))

(assert (=> b!288605 (= res!131809 (isDefined!709 lt!121704))))

(declare-fun b!288606 () Bool)

(declare-fun res!131808 () Bool)

(assert (=> b!288606 (=> (not res!131808) (not e!179652))))

(assert (=> b!288606 (= res!131808 (= (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121704)))) (originalCharacters!798 (_1!2457 (get!1329 lt!121704)))))))

(declare-fun d!85673 () Bool)

(assert (=> d!85673 e!179654))

(declare-fun res!131813 () Bool)

(assert (=> d!85673 (=> res!131813 e!179654)))

(assert (=> d!85673 (= res!131813 (isEmpty!2620 lt!121704))))

(assert (=> d!85673 (= lt!121704 e!179653)))

(declare-fun c!54651 () Bool)

(assert (=> d!85673 (= c!54651 (and ((_ is Cons!3944) rules!1920) ((_ is Nil!3944) (t!40182 rules!1920))))))

(declare-fun lt!121701 () Unit!5300)

(declare-fun lt!121702 () Unit!5300)

(assert (=> d!85673 (= lt!121701 lt!121702)))

(assert (=> d!85673 (isPrefix!419 (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229) (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229))))

(assert (=> d!85673 (= lt!121702 (lemmaIsPrefixRefl!225 (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229) (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229)))))

(assert (=> d!85673 (rulesValidInductive!220 thiss!17480 rules!1920)))

(assert (=> d!85673 (= (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229)) lt!121704)))

(declare-fun b!288601 () Bool)

(assert (=> b!288601 (= e!179652 (contains!769 rules!1920 (rule!1354 (_1!2457 (get!1329 lt!121704)))))))

(declare-fun bm!16336 () Bool)

(assert (=> bm!16336 (= call!16341 (maxPrefixOneRule!159 thiss!17480 (h!9341 rules!1920) (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229)))))

(declare-fun b!288607 () Bool)

(declare-fun res!131812 () Bool)

(assert (=> b!288607 (=> (not res!131812) (not e!179652))))

(assert (=> b!288607 (= res!131812 (matchR!297 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!121704)))) (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!121704))))))))

(assert (= (and d!85673 c!54651) b!288600))

(assert (= (and d!85673 (not c!54651)) b!288599))

(assert (= (or b!288600 b!288599) bm!16336))

(assert (= (and d!85673 (not res!131813)) b!288605))

(assert (= (and b!288605 res!131809) b!288606))

(assert (= (and b!288606 res!131808) b!288603))

(assert (= (and b!288603 res!131811) b!288604))

(assert (= (and b!288604 res!131807) b!288602))

(assert (= (and b!288602 res!131810) b!288607))

(assert (= (and b!288607 res!131812) b!288601))

(declare-fun m!374539 () Bool)

(assert (=> b!288606 m!374539))

(declare-fun m!374541 () Bool)

(assert (=> b!288606 m!374541))

(assert (=> b!288606 m!374541))

(declare-fun m!374543 () Bool)

(assert (=> b!288606 m!374543))

(assert (=> bm!16336 m!372787))

(declare-fun m!374545 () Bool)

(assert (=> bm!16336 m!374545))

(assert (=> b!288601 m!374539))

(declare-fun m!374547 () Bool)

(assert (=> b!288601 m!374547))

(declare-fun m!374549 () Bool)

(assert (=> b!288605 m!374549))

(assert (=> b!288607 m!374539))

(assert (=> b!288607 m!374541))

(assert (=> b!288607 m!374541))

(assert (=> b!288607 m!374543))

(assert (=> b!288607 m!374543))

(declare-fun m!374551 () Bool)

(assert (=> b!288607 m!374551))

(assert (=> b!288604 m!374539))

(assert (=> b!288604 m!374541))

(assert (=> b!288604 m!374541))

(assert (=> b!288604 m!374543))

(assert (=> b!288604 m!374543))

(declare-fun m!374553 () Bool)

(assert (=> b!288604 m!374553))

(declare-fun m!374555 () Bool)

(assert (=> d!85673 m!374555))

(assert (=> d!85673 m!372787))

(assert (=> d!85673 m!372787))

(declare-fun m!374557 () Bool)

(assert (=> d!85673 m!374557))

(assert (=> d!85673 m!372787))

(assert (=> d!85673 m!372787))

(declare-fun m!374559 () Bool)

(assert (=> d!85673 m!374559))

(assert (=> d!85673 m!372499))

(assert (=> b!288603 m!374539))

(declare-fun m!374561 () Bool)

(assert (=> b!288603 m!374561))

(assert (=> b!288603 m!372787))

(declare-fun m!374563 () Bool)

(assert (=> b!288603 m!374563))

(assert (=> b!288602 m!374539))

(declare-fun m!374565 () Bool)

(assert (=> b!288602 m!374565))

(assert (=> b!288602 m!374565))

(declare-fun m!374567 () Bool)

(assert (=> b!288602 m!374567))

(assert (=> b!288599 m!372787))

(declare-fun m!374569 () Bool)

(assert (=> b!288599 m!374569))

(assert (=> b!287862 d!85673))

(declare-fun d!85675 () Bool)

(assert (=> d!85675 (dynLambda!2094 lambda!9878 (h!9342 tokens!465))))

(declare-fun lt!121706 () Unit!5300)

(assert (=> d!85675 (= lt!121706 (choose!2594 tokens!465 lambda!9878 (h!9342 tokens!465)))))

(declare-fun e!179661 () Bool)

(assert (=> d!85675 e!179661))

(declare-fun res!131814 () Bool)

(assert (=> d!85675 (=> (not res!131814) (not e!179661))))

(assert (=> d!85675 (= res!131814 (forall!1016 tokens!465 lambda!9878))))

(assert (=> d!85675 (= (forallContained!308 tokens!465 lambda!9878 (h!9342 tokens!465)) lt!121706)))

(declare-fun b!288616 () Bool)

(assert (=> b!288616 (= e!179661 (contains!770 tokens!465 (h!9342 tokens!465)))))

(assert (= (and d!85675 res!131814) b!288616))

(declare-fun b_lambda!9591 () Bool)

(assert (=> (not b_lambda!9591) (not d!85675)))

(declare-fun m!374571 () Bool)

(assert (=> d!85675 m!374571))

(declare-fun m!374573 () Bool)

(assert (=> d!85675 m!374573))

(declare-fun m!374575 () Bool)

(assert (=> d!85675 m!374575))

(assert (=> b!288616 m!372711))

(assert (=> b!287862 d!85675))

(declare-fun b!288617 () Bool)

(declare-fun e!179663 () List!3953)

(assert (=> b!288617 (= e!179663 lt!121229)))

(declare-fun b!288619 () Bool)

(declare-fun res!131816 () Bool)

(declare-fun e!179662 () Bool)

(assert (=> b!288619 (=> (not res!131816) (not e!179662))))

(declare-fun lt!121707 () List!3953)

(assert (=> b!288619 (= res!131816 (= (size!3163 lt!121707) (+ (size!3163 (list!1645 (charsOf!398 (h!9342 tokens!465)))) (size!3163 lt!121229))))))

(declare-fun b!288618 () Bool)

(assert (=> b!288618 (= e!179663 (Cons!3943 (h!9340 (list!1645 (charsOf!398 (h!9342 tokens!465)))) (++!1050 (t!40181 (list!1645 (charsOf!398 (h!9342 tokens!465)))) lt!121229)))))

(declare-fun d!85677 () Bool)

(assert (=> d!85677 e!179662))

(declare-fun res!131815 () Bool)

(assert (=> d!85677 (=> (not res!131815) (not e!179662))))

(assert (=> d!85677 (= res!131815 (= (content!579 lt!121707) ((_ map or) (content!579 (list!1645 (charsOf!398 (h!9342 tokens!465)))) (content!579 lt!121229))))))

(assert (=> d!85677 (= lt!121707 e!179663)))

(declare-fun c!54652 () Bool)

(assert (=> d!85677 (= c!54652 ((_ is Nil!3943) (list!1645 (charsOf!398 (h!9342 tokens!465)))))))

(assert (=> d!85677 (= (++!1050 (list!1645 (charsOf!398 (h!9342 tokens!465))) lt!121229) lt!121707)))

(declare-fun b!288620 () Bool)

(assert (=> b!288620 (= e!179662 (or (not (= lt!121229 Nil!3943)) (= lt!121707 (list!1645 (charsOf!398 (h!9342 tokens!465))))))))

(assert (= (and d!85677 c!54652) b!288617))

(assert (= (and d!85677 (not c!54652)) b!288618))

(assert (= (and d!85677 res!131815) b!288619))

(assert (= (and b!288619 res!131816) b!288620))

(declare-fun m!374577 () Bool)

(assert (=> b!288619 m!374577))

(assert (=> b!288619 m!371759))

(declare-fun m!374579 () Bool)

(assert (=> b!288619 m!374579))

(assert (=> b!288619 m!373963))

(declare-fun m!374581 () Bool)

(assert (=> b!288618 m!374581))

(declare-fun m!374583 () Bool)

(assert (=> d!85677 m!374583))

(assert (=> d!85677 m!371759))

(declare-fun m!374585 () Bool)

(assert (=> d!85677 m!374585))

(assert (=> d!85677 m!373971))

(assert (=> b!287862 d!85677))

(assert (=> b!287862 d!85097))

(assert (=> b!287862 d!85127))

(assert (=> b!287862 d!85135))

(declare-fun d!85679 () Bool)

(declare-fun lt!121708 () Int)

(assert (=> d!85679 (>= lt!121708 0)))

(declare-fun e!179664 () Int)

(assert (=> d!85679 (= lt!121708 e!179664)))

(declare-fun c!54653 () Bool)

(assert (=> d!85679 (= c!54653 ((_ is Nil!3943) lt!120923))))

(assert (=> d!85679 (= (size!3163 lt!120923) lt!121708)))

(declare-fun b!288621 () Bool)

(assert (=> b!288621 (= e!179664 0)))

(declare-fun b!288622 () Bool)

(assert (=> b!288622 (= e!179664 (+ 1 (size!3163 (t!40181 lt!120923))))))

(assert (= (and d!85679 c!54653) b!288621))

(assert (= (and d!85679 (not c!54653)) b!288622))

(declare-fun m!374595 () Bool)

(assert (=> b!288622 m!374595))

(assert (=> b!287435 d!85679))

(assert (=> b!287435 d!85511))

(assert (=> b!287435 d!85451))

(declare-fun d!85681 () Bool)

(declare-fun lt!121709 () Int)

(assert (=> d!85681 (= lt!121709 (size!3164 (list!1648 (_1!2459 lt!120920))))))

(assert (=> d!85681 (= lt!121709 (size!3165 (c!54356 (_1!2459 lt!120920))))))

(assert (=> d!85681 (= (size!3161 (_1!2459 lt!120920)) lt!121709)))

(declare-fun bs!32674 () Bool)

(assert (= bs!32674 d!85681))

(assert (=> bs!32674 m!371989))

(assert (=> bs!32674 m!371989))

(declare-fun m!374607 () Bool)

(assert (=> bs!32674 m!374607))

(declare-fun m!374609 () Bool)

(assert (=> bs!32674 m!374609))

(assert (=> d!85031 d!85681))

(declare-fun b!288876 () Bool)

(declare-fun e!179812 () tuple2!4486)

(declare-fun lt!121904 () BalanceConc!2672)

(assert (=> b!288876 (= e!179812 (tuple2!4487 (BalanceConc!2675 Empty!1333) lt!121904))))

(declare-fun lt!121932 () BalanceConc!2672)

(declare-fun b!288877 () Bool)

(declare-fun lt!121909 () Option!871)

(declare-fun e!179815 () tuple2!4486)

(declare-fun append!100 (BalanceConc!2674 Token!1254) BalanceConc!2674)

(assert (=> b!288877 (= e!179815 (lexTailRecV2!194 thiss!17480 rules!1920 (seqFromList!875 lt!120875) lt!121932 (_2!2458 (v!14811 lt!121909)) (append!100 (BalanceConc!2675 Empty!1333) (_1!2458 (v!14811 lt!121909)))))))

(declare-fun lt!121914 () tuple2!4486)

(declare-fun lexRec!95 (LexerInterface!641 List!3954 BalanceConc!2672) tuple2!4486)

(assert (=> b!288877 (= lt!121914 (lexRec!95 thiss!17480 rules!1920 (_2!2458 (v!14811 lt!121909))))))

(declare-fun lt!121907 () List!3953)

(assert (=> b!288877 (= lt!121907 (list!1645 (BalanceConc!2673 Empty!1332)))))

(declare-fun lt!121923 () List!3953)

(assert (=> b!288877 (= lt!121923 (list!1645 (charsOf!398 (_1!2458 (v!14811 lt!121909)))))))

(declare-fun lt!121910 () List!3953)

(assert (=> b!288877 (= lt!121910 (list!1645 (_2!2458 (v!14811 lt!121909))))))

(declare-fun lt!121900 () Unit!5300)

(assert (=> b!288877 (= lt!121900 (lemmaConcatAssociativity!456 lt!121907 lt!121923 lt!121910))))

(assert (=> b!288877 (= (++!1050 (++!1050 lt!121907 lt!121923) lt!121910) (++!1050 lt!121907 (++!1050 lt!121923 lt!121910)))))

(declare-fun lt!121911 () Unit!5300)

(assert (=> b!288877 (= lt!121911 lt!121900)))

(declare-fun lt!121908 () Option!871)

(assert (=> b!288877 (= lt!121908 (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (seqFromList!875 lt!120875)))))

(declare-fun c!54723 () Bool)

(assert (=> b!288877 (= c!54723 ((_ is Some!870) lt!121908))))

(declare-fun e!179813 () tuple2!4486)

(assert (=> b!288877 (= (lexRec!95 thiss!17480 rules!1920 (seqFromList!875 lt!120875)) e!179813)))

(declare-fun lt!121918 () Unit!5300)

(declare-fun Unit!5336 () Unit!5300)

(assert (=> b!288877 (= lt!121918 Unit!5336)))

(declare-fun lt!121921 () List!3955)

(assert (=> b!288877 (= lt!121921 (list!1648 (BalanceConc!2675 Empty!1333)))))

(declare-fun lt!121903 () List!3955)

(assert (=> b!288877 (= lt!121903 (Cons!3945 (_1!2458 (v!14811 lt!121909)) Nil!3945))))

(declare-fun lt!121930 () List!3955)

(assert (=> b!288877 (= lt!121930 (list!1648 (_1!2459 lt!121914)))))

(declare-fun lt!121916 () Unit!5300)

(declare-fun lemmaConcatAssociativity!457 (List!3955 List!3955 List!3955) Unit!5300)

(assert (=> b!288877 (= lt!121916 (lemmaConcatAssociativity!457 lt!121921 lt!121903 lt!121930))))

(declare-fun ++!1055 (List!3955 List!3955) List!3955)

(assert (=> b!288877 (= (++!1055 (++!1055 lt!121921 lt!121903) lt!121930) (++!1055 lt!121921 (++!1055 lt!121903 lt!121930)))))

(declare-fun lt!121917 () Unit!5300)

(assert (=> b!288877 (= lt!121917 lt!121916)))

(declare-fun lt!121915 () List!3953)

(assert (=> b!288877 (= lt!121915 (++!1050 (list!1645 (BalanceConc!2673 Empty!1332)) (list!1645 (charsOf!398 (_1!2458 (v!14811 lt!121909))))))))

(declare-fun lt!121922 () List!3953)

(assert (=> b!288877 (= lt!121922 (list!1645 (_2!2458 (v!14811 lt!121909))))))

(declare-fun lt!121899 () List!3955)

(assert (=> b!288877 (= lt!121899 (list!1648 (append!100 (BalanceConc!2675 Empty!1333) (_1!2458 (v!14811 lt!121909)))))))

(declare-fun lt!121920 () Unit!5300)

(declare-fun lemmaLexThenLexPrefix!82 (LexerInterface!641 List!3954 List!3953 List!3953 List!3955 List!3955 List!3953) Unit!5300)

(assert (=> b!288877 (= lt!121920 (lemmaLexThenLexPrefix!82 thiss!17480 rules!1920 lt!121915 lt!121922 lt!121899 (list!1648 (_1!2459 lt!121914)) (list!1645 (_2!2459 lt!121914))))))

(assert (=> b!288877 (= (lexList!227 thiss!17480 rules!1920 lt!121915) (tuple2!4491 lt!121899 Nil!3943))))

(declare-fun lt!121924 () Unit!5300)

(assert (=> b!288877 (= lt!121924 lt!121920)))

(assert (=> b!288877 (= lt!121904 (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (_1!2458 (v!14811 lt!121909)))))))

(declare-fun lt!121913 () Option!871)

(assert (=> b!288877 (= lt!121913 (maxPrefixZipperSequence!320 thiss!17480 rules!1920 lt!121904))))

(declare-fun c!54724 () Bool)

(assert (=> b!288877 (= c!54724 ((_ is Some!870) lt!121913))))

(assert (=> b!288877 (= (lexRec!95 thiss!17480 rules!1920 (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (_1!2458 (v!14811 lt!121909))))) e!179812)))

(declare-fun lt!121912 () Unit!5300)

(declare-fun Unit!5337 () Unit!5300)

(assert (=> b!288877 (= lt!121912 Unit!5337)))

(assert (=> b!288877 (= lt!121932 (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (_1!2458 (v!14811 lt!121909)))))))

(declare-fun lt!121931 () List!3953)

(assert (=> b!288877 (= lt!121931 (list!1645 lt!121932))))

(declare-fun lt!121926 () List!3953)

(assert (=> b!288877 (= lt!121926 (list!1645 (_2!2458 (v!14811 lt!121909))))))

(declare-fun lt!121919 () Unit!5300)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!80 (List!3953 List!3953) Unit!5300)

(assert (=> b!288877 (= lt!121919 (lemmaConcatTwoListThenFSndIsSuffix!80 lt!121931 lt!121926))))

(declare-fun isSuffix!80 (List!3953 List!3953) Bool)

(assert (=> b!288877 (isSuffix!80 lt!121926 (++!1050 lt!121931 lt!121926))))

(declare-fun lt!121929 () Unit!5300)

(assert (=> b!288877 (= lt!121929 lt!121919)))

(declare-fun b!288878 () Bool)

(assert (=> b!288878 (= e!179813 (tuple2!4487 (BalanceConc!2675 Empty!1333) (seqFromList!875 lt!120875)))))

(declare-fun b!288879 () Bool)

(assert (=> b!288879 (= e!179815 (tuple2!4487 (BalanceConc!2675 Empty!1333) (seqFromList!875 lt!120875)))))

(declare-fun d!85683 () Bool)

(declare-fun e!179814 () Bool)

(assert (=> d!85683 e!179814))

(declare-fun res!131924 () Bool)

(assert (=> d!85683 (=> (not res!131924) (not e!179814))))

(declare-fun lt!121901 () tuple2!4486)

(assert (=> d!85683 (= res!131924 (= (list!1648 (_1!2459 lt!121901)) (list!1648 (_1!2459 (lexRec!95 thiss!17480 rules!1920 (seqFromList!875 lt!120875))))))))

(assert (=> d!85683 (= lt!121901 e!179815)))

(declare-fun c!54725 () Bool)

(assert (=> d!85683 (= c!54725 ((_ is Some!870) lt!121909))))

(declare-fun maxPrefixZipperSequenceV2!80 (LexerInterface!641 List!3954 BalanceConc!2672 BalanceConc!2672) Option!871)

(assert (=> d!85683 (= lt!121909 (maxPrefixZipperSequenceV2!80 thiss!17480 rules!1920 (seqFromList!875 lt!120875) (seqFromList!875 lt!120875)))))

(declare-fun lt!121906 () Unit!5300)

(declare-fun lt!121927 () Unit!5300)

(assert (=> d!85683 (= lt!121906 lt!121927)))

(declare-fun lt!121905 () List!3953)

(declare-fun lt!121925 () List!3953)

(assert (=> d!85683 (isSuffix!80 lt!121905 (++!1050 lt!121925 lt!121905))))

(assert (=> d!85683 (= lt!121927 (lemmaConcatTwoListThenFSndIsSuffix!80 lt!121925 lt!121905))))

(assert (=> d!85683 (= lt!121905 (list!1645 (seqFromList!875 lt!120875)))))

(assert (=> d!85683 (= lt!121925 (list!1645 (BalanceConc!2673 Empty!1332)))))

(assert (=> d!85683 (= (lexTailRecV2!194 thiss!17480 rules!1920 (seqFromList!875 lt!120875) (BalanceConc!2673 Empty!1332) (seqFromList!875 lt!120875) (BalanceConc!2675 Empty!1333)) lt!121901)))

(declare-fun b!288880 () Bool)

(declare-fun lt!121928 () tuple2!4486)

(assert (=> b!288880 (= lt!121928 (lexRec!95 thiss!17480 rules!1920 (_2!2458 (v!14811 lt!121913))))))

(declare-fun prepend!178 (BalanceConc!2674 Token!1254) BalanceConc!2674)

(assert (=> b!288880 (= e!179812 (tuple2!4487 (prepend!178 (_1!2459 lt!121928) (_1!2458 (v!14811 lt!121913))) (_2!2459 lt!121928)))))

(declare-fun b!288881 () Bool)

(declare-fun lt!121902 () tuple2!4486)

(assert (=> b!288881 (= lt!121902 (lexRec!95 thiss!17480 rules!1920 (_2!2458 (v!14811 lt!121908))))))

(assert (=> b!288881 (= e!179813 (tuple2!4487 (prepend!178 (_1!2459 lt!121902) (_1!2458 (v!14811 lt!121908))) (_2!2459 lt!121902)))))

(declare-fun b!288882 () Bool)

(assert (=> b!288882 (= e!179814 (= (list!1645 (_2!2459 lt!121901)) (list!1645 (_2!2459 (lexRec!95 thiss!17480 rules!1920 (seqFromList!875 lt!120875))))))))

(assert (= (and d!85683 c!54725) b!288877))

(assert (= (and d!85683 (not c!54725)) b!288879))

(assert (= (and b!288877 c!54723) b!288881))

(assert (= (and b!288877 (not c!54723)) b!288878))

(assert (= (and b!288877 c!54724) b!288880))

(assert (= (and b!288877 (not c!54724)) b!288876))

(assert (= (and d!85683 res!131924) b!288882))

(declare-fun m!375203 () Bool)

(assert (=> b!288880 m!375203))

(declare-fun m!375205 () Bool)

(assert (=> b!288880 m!375205))

(declare-fun m!375207 () Bool)

(assert (=> b!288881 m!375207))

(declare-fun m!375209 () Bool)

(assert (=> b!288881 m!375209))

(declare-fun m!375211 () Bool)

(assert (=> b!288877 m!375211))

(declare-fun m!375213 () Bool)

(assert (=> b!288877 m!375213))

(declare-fun m!375215 () Bool)

(assert (=> b!288877 m!375215))

(assert (=> b!288877 m!371763))

(declare-fun m!375217 () Bool)

(assert (=> b!288877 m!375217))

(declare-fun m!375219 () Bool)

(assert (=> b!288877 m!375219))

(assert (=> b!288877 m!375219))

(declare-fun m!375221 () Bool)

(assert (=> b!288877 m!375221))

(declare-fun m!375223 () Bool)

(assert (=> b!288877 m!375223))

(declare-fun m!375225 () Bool)

(assert (=> b!288877 m!375225))

(assert (=> b!288877 m!371763))

(declare-fun m!375227 () Bool)

(assert (=> b!288877 m!375227))

(declare-fun m!375229 () Bool)

(assert (=> b!288877 m!375229))

(declare-fun m!375231 () Bool)

(assert (=> b!288877 m!375231))

(declare-fun m!375233 () Bool)

(assert (=> b!288877 m!375233))

(assert (=> b!288877 m!375213))

(declare-fun m!375235 () Bool)

(assert (=> b!288877 m!375235))

(assert (=> b!288877 m!375223))

(declare-fun m!375237 () Bool)

(assert (=> b!288877 m!375237))

(declare-fun m!375239 () Bool)

(assert (=> b!288877 m!375239))

(declare-fun m!375241 () Bool)

(assert (=> b!288877 m!375241))

(declare-fun m!375243 () Bool)

(assert (=> b!288877 m!375243))

(declare-fun m!375245 () Bool)

(assert (=> b!288877 m!375245))

(declare-fun m!375247 () Bool)

(assert (=> b!288877 m!375247))

(declare-fun m!375249 () Bool)

(assert (=> b!288877 m!375249))

(assert (=> b!288877 m!372515))

(declare-fun m!375251 () Bool)

(assert (=> b!288877 m!375251))

(declare-fun m!375253 () Bool)

(assert (=> b!288877 m!375253))

(declare-fun m!375255 () Bool)

(assert (=> b!288877 m!375255))

(assert (=> b!288877 m!375251))

(declare-fun m!375257 () Bool)

(assert (=> b!288877 m!375257))

(declare-fun m!375259 () Bool)

(assert (=> b!288877 m!375259))

(assert (=> b!288877 m!375241))

(declare-fun m!375261 () Bool)

(assert (=> b!288877 m!375261))

(declare-fun m!375263 () Bool)

(assert (=> b!288877 m!375263))

(assert (=> b!288877 m!375227))

(assert (=> b!288877 m!372515))

(declare-fun m!375265 () Bool)

(assert (=> b!288877 m!375265))

(assert (=> b!288877 m!375261))

(declare-fun m!375267 () Bool)

(assert (=> b!288877 m!375267))

(assert (=> b!288877 m!375231))

(assert (=> b!288877 m!375255))

(assert (=> b!288877 m!371763))

(declare-fun m!375269 () Bool)

(assert (=> b!288877 m!375269))

(declare-fun m!375271 () Bool)

(assert (=> b!288877 m!375271))

(assert (=> b!288877 m!375255))

(assert (=> b!288877 m!375237))

(assert (=> b!288877 m!375227))

(declare-fun m!375273 () Bool)

(assert (=> b!288877 m!375273))

(assert (=> b!288877 m!375243))

(declare-fun m!375275 () Bool)

(assert (=> b!288882 m!375275))

(assert (=> b!288882 m!371763))

(assert (=> b!288882 m!375217))

(declare-fun m!375277 () Bool)

(assert (=> b!288882 m!375277))

(declare-fun m!375279 () Bool)

(assert (=> d!85683 m!375279))

(assert (=> d!85683 m!372515))

(declare-fun m!375281 () Bool)

(assert (=> d!85683 m!375281))

(assert (=> d!85683 m!375279))

(declare-fun m!375283 () Bool)

(assert (=> d!85683 m!375283))

(assert (=> d!85683 m!371763))

(assert (=> d!85683 m!371763))

(declare-fun m!375285 () Bool)

(assert (=> d!85683 m!375285))

(assert (=> d!85683 m!371763))

(assert (=> d!85683 m!375217))

(declare-fun m!375287 () Bool)

(assert (=> d!85683 m!375287))

(declare-fun m!375289 () Bool)

(assert (=> d!85683 m!375289))

(assert (=> d!85683 m!371763))

(assert (=> d!85683 m!371991))

(assert (=> d!85031 d!85683))

(declare-fun bs!32734 () Bool)

(declare-fun d!85811 () Bool)

(assert (= bs!32734 (and d!85811 d!85591)))

(declare-fun lambda!9919 () Int)

(assert (=> bs!32734 (= (= (toValue!1502 (transformation!755 (rule!1354 separatorToken!170))) (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465))))) (= lambda!9919 lambda!9894))))

(assert (=> d!85811 true))

(assert (=> d!85811 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (rule!1354 separatorToken!170)))) (dynLambda!2098 order!3121 lambda!9919))))

(assert (=> d!85811 (= (equivClasses!262 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toValue!1502 (transformation!755 (rule!1354 separatorToken!170)))) (Forall2!153 lambda!9919))))

(declare-fun bs!32735 () Bool)

(assert (= bs!32735 d!85811))

(declare-fun m!375293 () Bool)

(assert (=> bs!32735 m!375293))

(assert (=> b!287443 d!85811))

(declare-fun d!85815 () Bool)

(declare-fun lt!121937 () Int)

(assert (=> d!85815 (>= lt!121937 0)))

(declare-fun e!179825 () Int)

(assert (=> d!85815 (= lt!121937 e!179825)))

(declare-fun c!54726 () Bool)

(assert (=> d!85815 (= c!54726 ((_ is Nil!3943) lt!121082))))

(assert (=> d!85815 (= (size!3163 lt!121082) lt!121937)))

(declare-fun b!288893 () Bool)

(assert (=> b!288893 (= e!179825 0)))

(declare-fun b!288894 () Bool)

(assert (=> b!288894 (= e!179825 (+ 1 (size!3163 (t!40181 lt!121082))))))

(assert (= (and d!85815 c!54726) b!288893))

(assert (= (and d!85815 (not c!54726)) b!288894))

(declare-fun m!375295 () Bool)

(assert (=> b!288894 m!375295))

(assert (=> b!287643 d!85815))

(assert (=> b!287643 d!85511))

(assert (=> b!287643 d!85449))

(declare-fun d!85817 () Bool)

(assert (=> d!85817 (dynLambda!2094 lambda!9844 (h!9342 tokens!465))))

(assert (=> d!85817 true))

(declare-fun _$7!364 () Unit!5300)

(assert (=> d!85817 (= (choose!2594 tokens!465 lambda!9844 (h!9342 tokens!465)) _$7!364)))

(declare-fun b_lambda!9601 () Bool)

(assert (=> (not b_lambda!9601) (not d!85817)))

(declare-fun bs!32736 () Bool)

(assert (= bs!32736 d!85817))

(assert (=> bs!32736 m!372705))

(assert (=> d!85195 d!85817))

(declare-fun d!85819 () Bool)

(declare-fun res!131935 () Bool)

(declare-fun e!179826 () Bool)

(assert (=> d!85819 (=> res!131935 e!179826)))

(assert (=> d!85819 (= res!131935 ((_ is Nil!3945) tokens!465))))

(assert (=> d!85819 (= (forall!1016 tokens!465 lambda!9844) e!179826)))

(declare-fun b!288895 () Bool)

(declare-fun e!179827 () Bool)

(assert (=> b!288895 (= e!179826 e!179827)))

(declare-fun res!131936 () Bool)

(assert (=> b!288895 (=> (not res!131936) (not e!179827))))

(assert (=> b!288895 (= res!131936 (dynLambda!2094 lambda!9844 (h!9342 tokens!465)))))

(declare-fun b!288896 () Bool)

(assert (=> b!288896 (= e!179827 (forall!1016 (t!40183 tokens!465) lambda!9844))))

(assert (= (and d!85819 (not res!131935)) b!288895))

(assert (= (and b!288895 res!131936) b!288896))

(declare-fun b_lambda!9603 () Bool)

(assert (=> (not b_lambda!9603) (not b!288895)))

(assert (=> b!288895 m!372705))

(declare-fun m!375301 () Bool)

(assert (=> b!288896 m!375301))

(assert (=> d!85195 d!85819))

(assert (=> b!287867 d!85121))

(declare-fun d!85825 () Bool)

(declare-fun lt!121941 () BalanceConc!2672)

(assert (=> d!85825 (= (list!1645 lt!121941) (printList!315 thiss!17480 (list!1648 (singletonSeq!301 (h!9342 (t!40183 tokens!465))))))))

(assert (=> d!85825 (= lt!121941 (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 (t!40183 tokens!465))) 0 (BalanceConc!2673 Empty!1332)))))

(assert (=> d!85825 (= (print!366 thiss!17480 (singletonSeq!301 (h!9342 (t!40183 tokens!465)))) lt!121941)))

(declare-fun bs!32740 () Bool)

(assert (= bs!32740 d!85825))

(declare-fun m!375305 () Bool)

(assert (=> bs!32740 m!375305))

(assert (=> bs!32740 m!372133))

(declare-fun m!375309 () Bool)

(assert (=> bs!32740 m!375309))

(assert (=> bs!32740 m!375309))

(declare-fun m!375313 () Bool)

(assert (=> bs!32740 m!375313))

(assert (=> bs!32740 m!372133))

(assert (=> bs!32740 m!372137))

(assert (=> b!287523 d!85825))

(declare-fun d!85829 () Bool)

(declare-fun e!179828 () Bool)

(assert (=> d!85829 e!179828))

(declare-fun res!131937 () Bool)

(assert (=> d!85829 (=> (not res!131937) (not e!179828))))

(declare-fun lt!121943 () BalanceConc!2674)

(assert (=> d!85829 (= res!131937 (= (list!1648 lt!121943) (Cons!3945 (h!9342 (t!40183 tokens!465)) Nil!3945)))))

(assert (=> d!85829 (= lt!121943 (singleton!131 (h!9342 (t!40183 tokens!465))))))

(assert (=> d!85829 (= (singletonSeq!301 (h!9342 (t!40183 tokens!465))) lt!121943)))

(declare-fun b!288897 () Bool)

(assert (=> b!288897 (= e!179828 (isBalanced!374 (c!54356 lt!121943)))))

(assert (= (and d!85829 res!131937) b!288897))

(declare-fun m!375317 () Bool)

(assert (=> d!85829 m!375317))

(declare-fun m!375319 () Bool)

(assert (=> d!85829 m!375319))

(declare-fun m!375321 () Bool)

(assert (=> b!288897 m!375321))

(assert (=> b!287523 d!85829))

(declare-fun d!85833 () Bool)

(declare-fun lt!121947 () BalanceConc!2672)

(assert (=> d!85833 (= (list!1645 lt!121947) (printListTailRec!147 thiss!17480 (dropList!182 (singletonSeq!301 (h!9342 (t!40183 tokens!465))) 0) (list!1645 (BalanceConc!2673 Empty!1332))))))

(declare-fun e!179830 () BalanceConc!2672)

(assert (=> d!85833 (= lt!121947 e!179830)))

(declare-fun c!54727 () Bool)

(assert (=> d!85833 (= c!54727 (>= 0 (size!3161 (singletonSeq!301 (h!9342 (t!40183 tokens!465))))))))

(declare-fun e!179831 () Bool)

(assert (=> d!85833 e!179831))

(declare-fun res!131939 () Bool)

(assert (=> d!85833 (=> (not res!131939) (not e!179831))))

(assert (=> d!85833 (= res!131939 (>= 0 0))))

(assert (=> d!85833 (= (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 (t!40183 tokens!465))) 0 (BalanceConc!2673 Empty!1332)) lt!121947)))

(declare-fun b!288899 () Bool)

(assert (=> b!288899 (= e!179831 (<= 0 (size!3161 (singletonSeq!301 (h!9342 (t!40183 tokens!465))))))))

(declare-fun b!288900 () Bool)

(assert (=> b!288900 (= e!179830 (BalanceConc!2673 Empty!1332))))

(declare-fun b!288901 () Bool)

(assert (=> b!288901 (= e!179830 (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 (t!40183 tokens!465))) (+ 0 1) (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (apply!840 (singletonSeq!301 (h!9342 (t!40183 tokens!465))) 0)))))))

(declare-fun lt!121948 () List!3955)

(assert (=> b!288901 (= lt!121948 (list!1648 (singletonSeq!301 (h!9342 (t!40183 tokens!465)))))))

(declare-fun lt!121949 () Unit!5300)

(assert (=> b!288901 (= lt!121949 (lemmaDropApply!222 lt!121948 0))))

(assert (=> b!288901 (= (head!930 (drop!235 lt!121948 0)) (apply!843 lt!121948 0))))

(declare-fun lt!121945 () Unit!5300)

(assert (=> b!288901 (= lt!121945 lt!121949)))

(declare-fun lt!121950 () List!3955)

(assert (=> b!288901 (= lt!121950 (list!1648 (singletonSeq!301 (h!9342 (t!40183 tokens!465)))))))

(declare-fun lt!121951 () Unit!5300)

(assert (=> b!288901 (= lt!121951 (lemmaDropTail!214 lt!121950 0))))

(assert (=> b!288901 (= (tail!512 (drop!235 lt!121950 0)) (drop!235 lt!121950 (+ 0 1)))))

(declare-fun lt!121946 () Unit!5300)

(assert (=> b!288901 (= lt!121946 lt!121951)))

(assert (= (and d!85833 res!131939) b!288899))

(assert (= (and d!85833 c!54727) b!288900))

(assert (= (and d!85833 (not c!54727)) b!288901))

(assert (=> d!85833 m!372133))

(declare-fun m!375329 () Bool)

(assert (=> d!85833 m!375329))

(declare-fun m!375333 () Bool)

(assert (=> d!85833 m!375333))

(assert (=> d!85833 m!372133))

(declare-fun m!375337 () Bool)

(assert (=> d!85833 m!375337))

(assert (=> d!85833 m!372515))

(assert (=> d!85833 m!375329))

(assert (=> d!85833 m!372515))

(declare-fun m!375343 () Bool)

(assert (=> d!85833 m!375343))

(assert (=> b!288899 m!372133))

(assert (=> b!288899 m!375337))

(declare-fun m!375345 () Bool)

(assert (=> b!288901 m!375345))

(declare-fun m!375349 () Bool)

(assert (=> b!288901 m!375349))

(declare-fun m!375353 () Bool)

(assert (=> b!288901 m!375353))

(assert (=> b!288901 m!372133))

(declare-fun m!375363 () Bool)

(assert (=> b!288901 m!375363))

(declare-fun m!375367 () Bool)

(assert (=> b!288901 m!375367))

(assert (=> b!288901 m!372133))

(assert (=> b!288901 m!375309))

(declare-fun m!375371 () Bool)

(assert (=> b!288901 m!375371))

(assert (=> b!288901 m!375363))

(assert (=> b!288901 m!372133))

(declare-fun m!375375 () Bool)

(assert (=> b!288901 m!375375))

(declare-fun m!375379 () Bool)

(assert (=> b!288901 m!375379))

(declare-fun m!375381 () Bool)

(assert (=> b!288901 m!375381))

(assert (=> b!288901 m!375375))

(assert (=> b!288901 m!375371))

(declare-fun m!375383 () Bool)

(assert (=> b!288901 m!375383))

(assert (=> b!288901 m!375345))

(assert (=> b!288901 m!375383))

(declare-fun m!375387 () Bool)

(assert (=> b!288901 m!375387))

(declare-fun m!375389 () Bool)

(assert (=> b!288901 m!375389))

(assert (=> b!287523 d!85833))

(declare-fun b!288907 () Bool)

(declare-fun e!179834 () Unit!5300)

(declare-fun Unit!5340 () Unit!5300)

(assert (=> b!288907 (= e!179834 Unit!5340)))

(declare-fun lt!121971 () List!3953)

(assert (=> b!288907 (= lt!121971 (++!1050 call!16232 lt!120961))))

(declare-fun lt!121977 () Token!1254)

(declare-fun lt!121963 () Unit!5300)

(assert (=> b!288907 (= lt!121963 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!62 thiss!17480 (rule!1354 lt!121977) rules!1920 lt!121971))))

(assert (=> b!288907 (isEmpty!2620 (maxPrefixOneRule!159 thiss!17480 (rule!1354 lt!121977) lt!121971))))

(declare-fun lt!121983 () Unit!5300)

(assert (=> b!288907 (= lt!121983 lt!121963)))

(declare-fun lt!121959 () List!3953)

(assert (=> b!288907 (= lt!121959 (list!1645 (charsOf!398 lt!121977)))))

(declare-fun lt!121972 () Unit!5300)

(assert (=> b!288907 (= lt!121972 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!62 thiss!17480 (rule!1354 lt!121977) lt!121959 (++!1050 call!16232 lt!120961)))))

(assert (=> b!288907 (not (matchR!297 (regex!755 (rule!1354 lt!121977)) lt!121959))))

(declare-fun lt!121960 () Unit!5300)

(assert (=> b!288907 (= lt!121960 lt!121972)))

(assert (=> b!288907 false))

(declare-fun d!85837 () Bool)

(assert (=> d!85837 (isDefined!709 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 call!16232 lt!120961)))))

(declare-fun lt!121967 () Unit!5300)

(assert (=> d!85837 (= lt!121967 e!179834)))

(declare-fun c!54730 () Bool)

(assert (=> d!85837 (= c!54730 (isEmpty!2620 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 call!16232 lt!120961))))))

(declare-fun lt!121974 () Unit!5300)

(declare-fun lt!121985 () Unit!5300)

(assert (=> d!85837 (= lt!121974 lt!121985)))

(declare-fun e!179837 () Bool)

(assert (=> d!85837 e!179837))

(declare-fun res!131943 () Bool)

(assert (=> d!85837 (=> (not res!131943) (not e!179837))))

(assert (=> d!85837 (= res!131943 (isDefined!712 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!121977)))))))

(assert (=> d!85837 (= lt!121985 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!138 thiss!17480 rules!1920 call!16232 lt!121977))))

(declare-fun lt!121981 () Unit!5300)

(declare-fun lt!121976 () Unit!5300)

(assert (=> d!85837 (= lt!121981 lt!121976)))

(declare-fun lt!121969 () List!3953)

(assert (=> d!85837 (isPrefix!419 lt!121969 (++!1050 call!16232 lt!120961))))

(assert (=> d!85837 (= lt!121976 (lemmaPrefixStaysPrefixWhenAddingToSuffix!62 lt!121969 call!16232 lt!120961))))

(assert (=> d!85837 (= lt!121969 (list!1645 (charsOf!398 lt!121977)))))

(declare-fun lt!121979 () Unit!5300)

(declare-fun lt!121962 () Unit!5300)

(assert (=> d!85837 (= lt!121979 lt!121962)))

(declare-fun lt!121965 () List!3953)

(declare-fun lt!121961 () List!3953)

(assert (=> d!85837 (isPrefix!419 lt!121965 (++!1050 lt!121965 lt!121961))))

(assert (=> d!85837 (= lt!121962 (lemmaConcatTwoListThenFirstIsPrefix!314 lt!121965 lt!121961))))

(assert (=> d!85837 (= lt!121961 (_2!2457 (get!1329 (maxPrefix!357 thiss!17480 rules!1920 call!16232))))))

(assert (=> d!85837 (= lt!121965 (list!1645 (charsOf!398 lt!121977)))))

(assert (=> d!85837 (= lt!121977 (head!930 (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 call!16232))))))))

(assert (=> d!85837 (not (isEmpty!2609 rules!1920))))

(assert (=> d!85837 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 call!16232 lt!120961) lt!121967)))

(declare-fun b!288905 () Bool)

(declare-fun res!131941 () Bool)

(assert (=> b!288905 (=> (not res!131941) (not e!179837))))

(assert (=> b!288905 (= res!131941 (matchR!297 (regex!755 (get!1333 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!121977))))) (list!1645 (charsOf!398 lt!121977))))))

(declare-fun b!288908 () Bool)

(declare-fun Unit!5341 () Unit!5300)

(assert (=> b!288908 (= e!179834 Unit!5341)))

(declare-fun b!288906 () Bool)

(assert (=> b!288906 (= e!179837 (= (rule!1354 lt!121977) (get!1333 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!121977))))))))

(assert (= (and d!85837 res!131943) b!288905))

(assert (= (and b!288905 res!131941) b!288906))

(assert (= (and d!85837 c!54730) b!288907))

(assert (= (and d!85837 (not c!54730)) b!288908))

(declare-fun m!375401 () Bool)

(assert (=> b!288907 m!375401))

(declare-fun m!375405 () Bool)

(assert (=> b!288907 m!375405))

(assert (=> b!288907 m!375405))

(declare-fun m!375409 () Bool)

(assert (=> b!288907 m!375409))

(declare-fun m!375413 () Bool)

(assert (=> b!288907 m!375413))

(declare-fun m!375415 () Bool)

(assert (=> b!288907 m!375415))

(declare-fun m!375419 () Bool)

(assert (=> b!288907 m!375419))

(declare-fun m!375421 () Bool)

(assert (=> b!288907 m!375421))

(declare-fun m!375425 () Bool)

(assert (=> b!288907 m!375425))

(assert (=> b!288907 m!375419))

(assert (=> b!288907 m!375413))

(declare-fun m!375431 () Bool)

(assert (=> d!85837 m!375431))

(declare-fun m!375437 () Bool)

(assert (=> d!85837 m!375437))

(declare-fun m!375441 () Bool)

(assert (=> d!85837 m!375441))

(assert (=> d!85837 m!375431))

(declare-fun m!375447 () Bool)

(assert (=> d!85837 m!375447))

(declare-fun m!375449 () Bool)

(assert (=> d!85837 m!375449))

(declare-fun m!375453 () Bool)

(assert (=> d!85837 m!375453))

(declare-fun m!375455 () Bool)

(assert (=> d!85837 m!375455))

(declare-fun m!375459 () Bool)

(assert (=> d!85837 m!375459))

(assert (=> d!85837 m!375413))

(assert (=> d!85837 m!375437))

(assert (=> d!85837 m!375459))

(declare-fun m!375465 () Bool)

(assert (=> d!85837 m!375465))

(declare-fun m!375469 () Bool)

(assert (=> d!85837 m!375469))

(declare-fun m!375471 () Bool)

(assert (=> d!85837 m!375471))

(assert (=> d!85837 m!375453))

(assert (=> d!85837 m!375413))

(declare-fun m!375477 () Bool)

(assert (=> d!85837 m!375477))

(assert (=> d!85837 m!375413))

(declare-fun m!375481 () Bool)

(assert (=> d!85837 m!375481))

(assert (=> d!85837 m!375405))

(declare-fun m!375483 () Bool)

(assert (=> d!85837 m!375483))

(declare-fun m!375487 () Bool)

(assert (=> d!85837 m!375487))

(assert (=> d!85837 m!375483))

(declare-fun m!375489 () Bool)

(assert (=> d!85837 m!375489))

(assert (=> d!85837 m!375405))

(assert (=> d!85837 m!375409))

(assert (=> d!85837 m!371723))

(assert (=> d!85837 m!375437))

(declare-fun m!375493 () Bool)

(assert (=> d!85837 m!375493))

(assert (=> d!85837 m!375469))

(assert (=> b!288905 m!375405))

(assert (=> b!288905 m!375405))

(assert (=> b!288905 m!375409))

(assert (=> b!288905 m!375431))

(declare-fun m!375497 () Bool)

(assert (=> b!288905 m!375497))

(assert (=> b!288905 m!375409))

(declare-fun m!375499 () Bool)

(assert (=> b!288905 m!375499))

(assert (=> b!288905 m!375431))

(assert (=> b!288906 m!375431))

(assert (=> b!288906 m!375431))

(assert (=> b!288906 m!375497))

(assert (=> b!287523 d!85837))

(declare-fun d!85843 () Bool)

(assert (=> d!85843 (= (isEmpty!2622 (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))) (not ((_ is Some!870) (maxPrefixZipperSequence!320 thiss!17480 rules!1920 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))

(assert (=> d!85173 d!85843))

(declare-fun bs!32764 () Bool)

(declare-fun b!289071 () Bool)

(assert (= bs!32764 (and b!289071 d!85487)))

(declare-fun lambda!9929 () Int)

(assert (=> bs!32764 (= lambda!9929 lambda!9886)))

(declare-fun bs!32765 () Bool)

(assert (= bs!32765 (and b!289071 d!85607)))

(assert (=> bs!32765 (= (and (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465))))) (= (toValue!1502 (transformation!755 (h!9341 rules!1920))) (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465)))))) (= lambda!9929 lambda!9895))))

(declare-fun b!289082 () Bool)

(declare-fun e!179943 () Bool)

(assert (=> b!289082 (= e!179943 true)))

(declare-fun b!289081 () Bool)

(declare-fun e!179942 () Bool)

(assert (=> b!289081 (= e!179942 e!179943)))

(assert (=> b!289071 e!179942))

(assert (= b!289081 b!289082))

(assert (= b!289071 b!289081))

(assert (=> b!289082 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2096 order!3119 lambda!9929))))

(assert (=> b!289082 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2096 order!3119 lambda!9929))))

(declare-fun b!289069 () Bool)

(declare-fun e!179935 () Bool)

(declare-fun lt!122094 () Option!871)

(assert (=> b!289069 (= e!179935 (= (list!1645 (_2!2458 (get!1331 lt!122094))) (_2!2457 (get!1329 (maxPrefixOneRule!159 thiss!17480 (h!9341 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))))

(declare-fun d!85849 () Bool)

(declare-fun e!179936 () Bool)

(assert (=> d!85849 e!179936))

(declare-fun res!132023 () Bool)

(assert (=> d!85849 (=> (not res!132023) (not e!179936))))

(assert (=> d!85849 (= res!132023 (= (isDefined!710 lt!122094) (isDefined!709 (maxPrefixOneRule!159 thiss!17480 (h!9341 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))))

(declare-fun e!179937 () Option!871)

(assert (=> d!85849 (= lt!122094 e!179937)))

(declare-fun c!54767 () Bool)

(declare-datatypes ((tuple2!4496 0))(
  ( (tuple2!4497 (_1!2464 BalanceConc!2672) (_2!2464 BalanceConc!2672)) )
))
(declare-fun lt!122095 () tuple2!4496)

(assert (=> d!85849 (= c!54767 (isEmpty!2615 (_1!2464 lt!122095)))))

(declare-fun findLongestMatchWithZipperSequence!39 (Regex!979 BalanceConc!2672) tuple2!4496)

(assert (=> d!85849 (= lt!122095 (findLongestMatchWithZipperSequence!39 (regex!755 (h!9341 rules!1920)) (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (=> d!85849 (ruleValid!94 thiss!17480 (h!9341 rules!1920))))

(assert (=> d!85849 (= (maxPrefixOneRuleZipperSequence!129 thiss!17480 (h!9341 rules!1920) (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))) lt!122094)))

(declare-fun b!289070 () Bool)

(assert (=> b!289070 (= e!179937 None!870)))

(assert (=> b!289071 (= e!179937 (Some!870 (tuple2!4485 (Token!1255 (apply!844 (transformation!755 (h!9341 rules!1920)) (_1!2464 lt!122095)) (h!9341 rules!1920) (size!3162 (_1!2464 lt!122095)) (list!1645 (_1!2464 lt!122095))) (_2!2464 lt!122095))))))

(declare-fun lt!122100 () List!3953)

(assert (=> b!289071 (= lt!122100 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(declare-fun lt!122093 () Unit!5300)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!64 (Regex!979 List!3953) Unit!5300)

(assert (=> b!289071 (= lt!122093 (longestMatchIsAcceptedByMatchOrIsEmpty!64 (regex!755 (h!9341 rules!1920)) lt!122100))))

(declare-fun res!132024 () Bool)

(declare-datatypes ((tuple2!4498 0))(
  ( (tuple2!4499 (_1!2465 List!3953) (_2!2465 List!3953)) )
))
(declare-fun findLongestMatchInner!80 (Regex!979 List!3953 Int List!3953 List!3953 Int) tuple2!4498)

(assert (=> b!289071 (= res!132024 (isEmpty!2618 (_1!2465 (findLongestMatchInner!80 (regex!755 (h!9341 rules!1920)) Nil!3943 (size!3163 Nil!3943) lt!122100 lt!122100 (size!3163 lt!122100)))))))

(declare-fun e!179933 () Bool)

(assert (=> b!289071 (=> res!132024 e!179933)))

(assert (=> b!289071 e!179933))

(declare-fun lt!122097 () Unit!5300)

(assert (=> b!289071 (= lt!122097 lt!122093)))

(declare-fun lt!122098 () Unit!5300)

(declare-fun lemmaInv!42 (TokenValueInjection!1326) Unit!5300)

(assert (=> b!289071 (= lt!122098 (lemmaInv!42 (transformation!755 (h!9341 rules!1920))))))

(declare-fun lt!122099 () Unit!5300)

(declare-fun ForallOf!39 (Int BalanceConc!2672) Unit!5300)

(assert (=> b!289071 (= lt!122099 (ForallOf!39 lambda!9929 (_1!2464 lt!122095)))))

(declare-fun lt!122092 () Unit!5300)

(assert (=> b!289071 (= lt!122092 (ForallOf!39 lambda!9929 (seqFromList!875 (list!1645 (_1!2464 lt!122095)))))))

(declare-fun lt!122096 () Option!871)

(assert (=> b!289071 (= lt!122096 (Some!870 (tuple2!4485 (Token!1255 (apply!844 (transformation!755 (h!9341 rules!1920)) (_1!2464 lt!122095)) (h!9341 rules!1920) (size!3162 (_1!2464 lt!122095)) (list!1645 (_1!2464 lt!122095))) (_2!2464 lt!122095))))))

(declare-fun lt!122101 () Unit!5300)

(declare-fun lemmaEqSameImage!39 (TokenValueInjection!1326 BalanceConc!2672 BalanceConc!2672) Unit!5300)

(assert (=> b!289071 (= lt!122101 (lemmaEqSameImage!39 (transformation!755 (h!9341 rules!1920)) (_1!2464 lt!122095) (seqFromList!875 (list!1645 (_1!2464 lt!122095)))))))

(declare-fun b!289072 () Bool)

(declare-fun e!179934 () Bool)

(assert (=> b!289072 (= e!179934 e!179935)))

(declare-fun res!132022 () Bool)

(assert (=> b!289072 (=> (not res!132022) (not e!179935))))

(assert (=> b!289072 (= res!132022 (= (_1!2458 (get!1331 lt!122094)) (_1!2457 (get!1329 (maxPrefixOneRule!159 thiss!17480 (h!9341 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))))

(declare-fun b!289073 () Bool)

(assert (=> b!289073 (= e!179936 e!179934)))

(declare-fun res!132025 () Bool)

(assert (=> b!289073 (=> res!132025 e!179934)))

(assert (=> b!289073 (= res!132025 (not (isDefined!710 lt!122094)))))

(declare-fun b!289074 () Bool)

(assert (=> b!289074 (= e!179933 (matchR!297 (regex!755 (h!9341 rules!1920)) (_1!2465 (findLongestMatchInner!80 (regex!755 (h!9341 rules!1920)) Nil!3943 (size!3163 Nil!3943) lt!122100 lt!122100 (size!3163 lt!122100)))))))

(assert (= (and d!85849 c!54767) b!289070))

(assert (= (and d!85849 (not c!54767)) b!289071))

(assert (= (and b!289071 (not res!132024)) b!289074))

(assert (= (and d!85849 res!132023) b!289073))

(assert (= (and b!289073 (not res!132025)) b!289072))

(assert (= (and b!289072 res!132022) b!289069))

(declare-fun m!375897 () Bool)

(assert (=> b!289071 m!375897))

(declare-fun m!375899 () Bool)

(assert (=> b!289071 m!375899))

(declare-fun m!375901 () Bool)

(assert (=> b!289071 m!375901))

(declare-fun m!375903 () Bool)

(assert (=> b!289071 m!375903))

(declare-fun m!375905 () Bool)

(assert (=> b!289071 m!375905))

(assert (=> b!289071 m!375901))

(declare-fun m!375907 () Bool)

(assert (=> b!289071 m!375907))

(declare-fun m!375909 () Bool)

(assert (=> b!289071 m!375909))

(declare-fun m!375911 () Bool)

(assert (=> b!289071 m!375911))

(assert (=> b!289071 m!375901))

(assert (=> b!289071 m!375911))

(declare-fun m!375913 () Bool)

(assert (=> b!289071 m!375913))

(declare-fun m!375915 () Bool)

(assert (=> b!289071 m!375915))

(declare-fun m!375917 () Bool)

(assert (=> b!289071 m!375917))

(declare-fun m!375919 () Bool)

(assert (=> b!289071 m!375919))

(assert (=> b!289071 m!375897))

(assert (=> b!289071 m!375909))

(declare-fun m!375921 () Bool)

(assert (=> b!289071 m!375921))

(assert (=> b!289071 m!371729))

(assert (=> b!289071 m!372683))

(assert (=> b!289074 m!375897))

(assert (=> b!289074 m!375909))

(assert (=> b!289074 m!375897))

(assert (=> b!289074 m!375909))

(assert (=> b!289074 m!375921))

(declare-fun m!375923 () Bool)

(assert (=> b!289074 m!375923))

(assert (=> b!289069 m!372683))

(assert (=> b!289069 m!373157))

(declare-fun m!375925 () Bool)

(assert (=> b!289069 m!375925))

(assert (=> b!289069 m!373157))

(declare-fun m!375927 () Bool)

(assert (=> b!289069 m!375927))

(declare-fun m!375929 () Bool)

(assert (=> b!289069 m!375929))

(assert (=> b!289069 m!371729))

(assert (=> b!289069 m!372683))

(declare-fun m!375931 () Bool)

(assert (=> b!289073 m!375931))

(assert (=> b!289072 m!375925))

(assert (=> b!289072 m!371729))

(assert (=> b!289072 m!372683))

(assert (=> b!289072 m!372683))

(assert (=> b!289072 m!373157))

(assert (=> b!289072 m!373157))

(assert (=> b!289072 m!375927))

(assert (=> d!85849 m!372683))

(assert (=> d!85849 m!373157))

(assert (=> d!85849 m!375931))

(declare-fun m!375933 () Bool)

(assert (=> d!85849 m!375933))

(assert (=> d!85849 m!371729))

(declare-fun m!375935 () Bool)

(assert (=> d!85849 m!375935))

(assert (=> d!85849 m!373157))

(declare-fun m!375937 () Bool)

(assert (=> d!85849 m!375937))

(assert (=> d!85849 m!374475))

(assert (=> d!85849 m!371729))

(assert (=> d!85849 m!372683))

(assert (=> bm!16277 d!85849))

(declare-fun b!289083 () Bool)

(declare-fun e!179944 () List!3953)

(assert (=> b!289083 (= e!179944 Nil!3943)))

(declare-fun b!289085 () Bool)

(declare-fun e!179945 () List!3953)

(assert (=> b!289085 (= e!179945 (list!1652 (xs!3931 (c!54354 (charsOf!398 separatorToken!170)))))))

(declare-fun d!85959 () Bool)

(declare-fun c!54768 () Bool)

(assert (=> d!85959 (= c!54768 ((_ is Empty!1332) (c!54354 (charsOf!398 separatorToken!170))))))

(assert (=> d!85959 (= (list!1649 (c!54354 (charsOf!398 separatorToken!170))) e!179944)))

(declare-fun b!289086 () Bool)

(assert (=> b!289086 (= e!179945 (++!1050 (list!1649 (left!3260 (c!54354 (charsOf!398 separatorToken!170)))) (list!1649 (right!3590 (c!54354 (charsOf!398 separatorToken!170))))))))

(declare-fun b!289084 () Bool)

(assert (=> b!289084 (= e!179944 e!179945)))

(declare-fun c!54769 () Bool)

(assert (=> b!289084 (= c!54769 ((_ is Leaf!2049) (c!54354 (charsOf!398 separatorToken!170))))))

(assert (= (and d!85959 c!54768) b!289083))

(assert (= (and d!85959 (not c!54768)) b!289084))

(assert (= (and b!289084 c!54769) b!289085))

(assert (= (and b!289084 (not c!54769)) b!289086))

(declare-fun m!375939 () Bool)

(assert (=> b!289085 m!375939))

(declare-fun m!375941 () Bool)

(assert (=> b!289086 m!375941))

(declare-fun m!375943 () Bool)

(assert (=> b!289086 m!375943))

(assert (=> b!289086 m!375941))

(assert (=> b!289086 m!375943))

(declare-fun m!375945 () Bool)

(assert (=> b!289086 m!375945))

(assert (=> d!85093 d!85959))

(declare-fun b!289087 () Bool)

(declare-fun e!179947 () List!3953)

(assert (=> b!289087 (= e!179947 lt!120961)))

(declare-fun b!289089 () Bool)

(declare-fun res!132027 () Bool)

(declare-fun e!179946 () Bool)

(assert (=> b!289089 (=> (not res!132027) (not e!179946))))

(declare-fun lt!122102 () List!3953)

(assert (=> b!289089 (= res!132027 (= (size!3163 lt!122102) (+ (size!3163 call!16233) (size!3163 lt!120961))))))

(declare-fun b!289088 () Bool)

(assert (=> b!289088 (= e!179947 (Cons!3943 (h!9340 call!16233) (++!1050 (t!40181 call!16233) lt!120961)))))

(declare-fun d!85961 () Bool)

(assert (=> d!85961 e!179946))

(declare-fun res!132026 () Bool)

(assert (=> d!85961 (=> (not res!132026) (not e!179946))))

(assert (=> d!85961 (= res!132026 (= (content!579 lt!122102) ((_ map or) (content!579 call!16233) (content!579 lt!120961))))))

(assert (=> d!85961 (= lt!122102 e!179947)))

(declare-fun c!54770 () Bool)

(assert (=> d!85961 (= c!54770 ((_ is Nil!3943) call!16233))))

(assert (=> d!85961 (= (++!1050 call!16233 lt!120961) lt!122102)))

(declare-fun b!289090 () Bool)

(assert (=> b!289090 (= e!179946 (or (not (= lt!120961 Nil!3943)) (= lt!122102 call!16233)))))

(assert (= (and d!85961 c!54770) b!289087))

(assert (= (and d!85961 (not c!54770)) b!289088))

(assert (= (and d!85961 res!132026) b!289089))

(assert (= (and b!289089 res!132027) b!289090))

(declare-fun m!375947 () Bool)

(assert (=> b!289089 m!375947))

(declare-fun m!375949 () Bool)

(assert (=> b!289089 m!375949))

(declare-fun m!375951 () Bool)

(assert (=> b!289089 m!375951))

(declare-fun m!375953 () Bool)

(assert (=> b!289088 m!375953))

(declare-fun m!375955 () Bool)

(assert (=> d!85961 m!375955))

(declare-fun m!375957 () Bool)

(assert (=> d!85961 m!375957))

(declare-fun m!375959 () Bool)

(assert (=> d!85961 m!375959))

(assert (=> b!287520 d!85961))

(declare-fun d!85963 () Bool)

(assert (=> d!85963 (= (tail!512 (drop!235 lt!121128 0)) (drop!235 lt!121128 (+ 0 1)))))

(declare-fun lt!122103 () Unit!5300)

(assert (=> d!85963 (= lt!122103 (choose!2597 lt!121128 0))))

(declare-fun e!179948 () Bool)

(assert (=> d!85963 e!179948))

(declare-fun res!132028 () Bool)

(assert (=> d!85963 (=> (not res!132028) (not e!179948))))

(assert (=> d!85963 (= res!132028 (>= 0 0))))

(assert (=> d!85963 (= (lemmaDropTail!214 lt!121128 0) lt!122103)))

(declare-fun b!289091 () Bool)

(assert (=> b!289091 (= e!179948 (< 0 (size!3164 lt!121128)))))

(assert (= (and d!85963 res!132028) b!289091))

(assert (=> d!85963 m!372539))

(assert (=> d!85963 m!372539))

(assert (=> d!85963 m!372541))

(assert (=> d!85963 m!372537))

(declare-fun m!375961 () Bool)

(assert (=> d!85963 m!375961))

(declare-fun m!375963 () Bool)

(assert (=> b!289091 m!375963))

(assert (=> b!287702 d!85963))

(declare-fun b!289092 () Bool)

(declare-fun e!179953 () List!3955)

(assert (=> b!289092 (= e!179953 (drop!235 (t!40183 lt!121128) (- 0 1)))))

(declare-fun b!289093 () Bool)

(declare-fun e!179951 () List!3955)

(assert (=> b!289093 (= e!179951 Nil!3945)))

(declare-fun b!289094 () Bool)

(assert (=> b!289094 (= e!179953 lt!121128)))

(declare-fun b!289095 () Bool)

(declare-fun e!179950 () Int)

(declare-fun call!16365 () Int)

(assert (=> b!289095 (= e!179950 (- call!16365 0))))

(declare-fun bm!16360 () Bool)

(assert (=> bm!16360 (= call!16365 (size!3164 lt!121128))))

(declare-fun b!289096 () Bool)

(declare-fun e!179952 () Int)

(assert (=> b!289096 (= e!179952 e!179950)))

(declare-fun c!54771 () Bool)

(assert (=> b!289096 (= c!54771 (>= 0 call!16365))))

(declare-fun d!85965 () Bool)

(declare-fun e!179949 () Bool)

(assert (=> d!85965 e!179949))

(declare-fun res!132029 () Bool)

(assert (=> d!85965 (=> (not res!132029) (not e!179949))))

(declare-fun lt!122104 () List!3955)

(assert (=> d!85965 (= res!132029 (= ((_ map implies) (content!580 lt!122104) (content!580 lt!121128)) ((as const (InoxSet Token!1254)) true)))))

(assert (=> d!85965 (= lt!122104 e!179951)))

(declare-fun c!54774 () Bool)

(assert (=> d!85965 (= c!54774 ((_ is Nil!3945) lt!121128))))

(assert (=> d!85965 (= (drop!235 lt!121128 0) lt!122104)))

(declare-fun b!289097 () Bool)

(assert (=> b!289097 (= e!179950 0)))

(declare-fun b!289098 () Bool)

(assert (=> b!289098 (= e!179951 e!179953)))

(declare-fun c!54772 () Bool)

(assert (=> b!289098 (= c!54772 (<= 0 0))))

(declare-fun b!289099 () Bool)

(assert (=> b!289099 (= e!179949 (= (size!3164 lt!122104) e!179952))))

(declare-fun c!54773 () Bool)

(assert (=> b!289099 (= c!54773 (<= 0 0))))

(declare-fun b!289100 () Bool)

(assert (=> b!289100 (= e!179952 call!16365)))

(assert (= (and d!85965 c!54774) b!289093))

(assert (= (and d!85965 (not c!54774)) b!289098))

(assert (= (and b!289098 c!54772) b!289094))

(assert (= (and b!289098 (not c!54772)) b!289092))

(assert (= (and d!85965 res!132029) b!289099))

(assert (= (and b!289099 c!54773) b!289100))

(assert (= (and b!289099 (not c!54773)) b!289096))

(assert (= (and b!289096 c!54771) b!289097))

(assert (= (and b!289096 (not c!54771)) b!289095))

(assert (= (or b!289100 b!289096 b!289095) bm!16360))

(declare-fun m!375965 () Bool)

(assert (=> b!289092 m!375965))

(assert (=> bm!16360 m!375963))

(declare-fun m!375967 () Bool)

(assert (=> d!85965 m!375967))

(declare-fun m!375969 () Bool)

(assert (=> d!85965 m!375969))

(declare-fun m!375971 () Bool)

(assert (=> b!289099 m!375971))

(assert (=> b!287702 d!85965))

(declare-fun d!85967 () Bool)

(declare-fun lt!122105 () Token!1254)

(assert (=> d!85967 (contains!770 lt!121126 lt!122105)))

(declare-fun e!179955 () Token!1254)

(assert (=> d!85967 (= lt!122105 e!179955)))

(declare-fun c!54775 () Bool)

(assert (=> d!85967 (= c!54775 (= 0 0))))

(declare-fun e!179954 () Bool)

(assert (=> d!85967 e!179954))

(declare-fun res!132030 () Bool)

(assert (=> d!85967 (=> (not res!132030) (not e!179954))))

(assert (=> d!85967 (= res!132030 (<= 0 0))))

(assert (=> d!85967 (= (apply!843 lt!121126 0) lt!122105)))

(declare-fun b!289101 () Bool)

(assert (=> b!289101 (= e!179954 (< 0 (size!3164 lt!121126)))))

(declare-fun b!289102 () Bool)

(assert (=> b!289102 (= e!179955 (head!930 lt!121126))))

(declare-fun b!289103 () Bool)

(assert (=> b!289103 (= e!179955 (apply!843 (tail!512 lt!121126) (- 0 1)))))

(assert (= (and d!85967 res!132030) b!289101))

(assert (= (and d!85967 c!54775) b!289102))

(assert (= (and d!85967 (not c!54775)) b!289103))

(declare-fun m!375973 () Bool)

(assert (=> d!85967 m!375973))

(declare-fun m!375975 () Bool)

(assert (=> b!289101 m!375975))

(declare-fun m!375977 () Bool)

(assert (=> b!289102 m!375977))

(declare-fun m!375979 () Bool)

(assert (=> b!289103 m!375979))

(assert (=> b!289103 m!375979))

(declare-fun m!375981 () Bool)

(assert (=> b!289103 m!375981))

(assert (=> b!287702 d!85967))

(declare-fun d!85969 () Bool)

(declare-fun lt!122106 () BalanceConc!2672)

(assert (=> d!85969 (= (list!1645 lt!122106) (originalCharacters!798 (apply!840 lt!120863 0)))))

(assert (=> d!85969 (= lt!122106 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120863 0)))) (value!25833 (apply!840 lt!120863 0))))))

(assert (=> d!85969 (= (charsOf!398 (apply!840 lt!120863 0)) lt!122106)))

(declare-fun b_lambda!9615 () Bool)

(assert (=> (not b_lambda!9615) (not d!85969)))

(declare-fun t!40399 () Bool)

(declare-fun tb!16801 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120863 0))))) t!40399) tb!16801))

(declare-fun b!289104 () Bool)

(declare-fun e!179956 () Bool)

(declare-fun tp!105486 () Bool)

(assert (=> b!289104 (= e!179956 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120863 0)))) (value!25833 (apply!840 lt!120863 0))))) tp!105486))))

(declare-fun result!20640 () Bool)

(assert (=> tb!16801 (= result!20640 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120863 0)))) (value!25833 (apply!840 lt!120863 0)))) e!179956))))

(assert (= tb!16801 b!289104))

(declare-fun m!375983 () Bool)

(assert (=> b!289104 m!375983))

(declare-fun m!375985 () Bool)

(assert (=> tb!16801 m!375985))

(assert (=> d!85969 t!40399))

(declare-fun b_and!23411 () Bool)

(assert (= b_and!23343 (and (=> t!40399 result!20640) b_and!23411)))

(declare-fun tb!16803 () Bool)

(declare-fun t!40401 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120863 0))))) t!40401) tb!16803))

(declare-fun result!20642 () Bool)

(assert (= result!20642 result!20640))

(assert (=> d!85969 t!40401))

(declare-fun b_and!23413 () Bool)

(assert (= b_and!23345 (and (=> t!40401 result!20642) b_and!23413)))

(declare-fun t!40403 () Bool)

(declare-fun tb!16805 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120863 0))))) t!40403) tb!16805))

(declare-fun result!20644 () Bool)

(assert (= result!20644 result!20640))

(assert (=> d!85969 t!40403))

(declare-fun b_and!23415 () Bool)

(assert (= b_and!23341 (and (=> t!40403 result!20644) b_and!23415)))

(declare-fun tb!16807 () Bool)

(declare-fun t!40405 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120863 0))))) t!40405) tb!16807))

(declare-fun result!20646 () Bool)

(assert (= result!20646 result!20640))

(assert (=> d!85969 t!40405))

(declare-fun b_and!23417 () Bool)

(assert (= b_and!23349 (and (=> t!40405 result!20646) b_and!23417)))

(declare-fun tb!16809 () Bool)

(declare-fun t!40407 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120863 0))))) t!40407) tb!16809))

(declare-fun result!20648 () Bool)

(assert (= result!20648 result!20640))

(assert (=> d!85969 t!40407))

(declare-fun b_and!23419 () Bool)

(assert (= b_and!23347 (and (=> t!40407 result!20648) b_and!23419)))

(declare-fun m!375987 () Bool)

(assert (=> d!85969 m!375987))

(declare-fun m!375989 () Bool)

(assert (=> d!85969 m!375989))

(assert (=> b!287702 d!85969))

(declare-fun d!85971 () Bool)

(declare-fun lt!122109 () BalanceConc!2672)

(assert (=> d!85971 (= (list!1645 lt!122109) (printListTailRec!147 thiss!17480 (dropList!182 lt!120863 (+ 0 1)) (list!1645 (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (apply!840 lt!120863 0))))))))

(declare-fun e!179957 () BalanceConc!2672)

(assert (=> d!85971 (= lt!122109 e!179957)))

(declare-fun c!54776 () Bool)

(assert (=> d!85971 (= c!54776 (>= (+ 0 1) (size!3161 lt!120863)))))

(declare-fun e!179958 () Bool)

(assert (=> d!85971 e!179958))

(declare-fun res!132031 () Bool)

(assert (=> d!85971 (=> (not res!132031) (not e!179958))))

(assert (=> d!85971 (= res!132031 (>= (+ 0 1) 0))))

(assert (=> d!85971 (= (printTailRec!327 thiss!17480 lt!120863 (+ 0 1) (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (apply!840 lt!120863 0)))) lt!122109)))

(declare-fun b!289105 () Bool)

(assert (=> b!289105 (= e!179958 (<= (+ 0 1) (size!3161 lt!120863)))))

(declare-fun b!289106 () Bool)

(assert (=> b!289106 (= e!179957 (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (apply!840 lt!120863 0))))))

(declare-fun b!289107 () Bool)

(assert (=> b!289107 (= e!179957 (printTailRec!327 thiss!17480 lt!120863 (+ 0 1 1) (++!1052 (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (apply!840 lt!120863 0))) (charsOf!398 (apply!840 lt!120863 (+ 0 1))))))))

(declare-fun lt!122110 () List!3955)

(assert (=> b!289107 (= lt!122110 (list!1648 lt!120863))))

(declare-fun lt!122111 () Unit!5300)

(assert (=> b!289107 (= lt!122111 (lemmaDropApply!222 lt!122110 (+ 0 1)))))

(assert (=> b!289107 (= (head!930 (drop!235 lt!122110 (+ 0 1))) (apply!843 lt!122110 (+ 0 1)))))

(declare-fun lt!122107 () Unit!5300)

(assert (=> b!289107 (= lt!122107 lt!122111)))

(declare-fun lt!122112 () List!3955)

(assert (=> b!289107 (= lt!122112 (list!1648 lt!120863))))

(declare-fun lt!122113 () Unit!5300)

(assert (=> b!289107 (= lt!122113 (lemmaDropTail!214 lt!122112 (+ 0 1)))))

(assert (=> b!289107 (= (tail!512 (drop!235 lt!122112 (+ 0 1))) (drop!235 lt!122112 (+ 0 1 1)))))

(declare-fun lt!122108 () Unit!5300)

(assert (=> b!289107 (= lt!122108 lt!122113)))

(assert (= (and d!85971 res!132031) b!289105))

(assert (= (and d!85971 c!54776) b!289106))

(assert (= (and d!85971 (not c!54776)) b!289107))

(declare-fun m!375991 () Bool)

(assert (=> d!85971 m!375991))

(declare-fun m!375993 () Bool)

(assert (=> d!85971 m!375993))

(assert (=> d!85971 m!372513))

(assert (=> d!85971 m!372525))

(declare-fun m!375995 () Bool)

(assert (=> d!85971 m!375995))

(assert (=> d!85971 m!375991))

(assert (=> d!85971 m!375995))

(declare-fun m!375997 () Bool)

(assert (=> d!85971 m!375997))

(assert (=> b!289105 m!372513))

(declare-fun m!375999 () Bool)

(assert (=> b!289107 m!375999))

(declare-fun m!376001 () Bool)

(assert (=> b!289107 m!376001))

(declare-fun m!376003 () Bool)

(assert (=> b!289107 m!376003))

(declare-fun m!376005 () Bool)

(assert (=> b!289107 m!376005))

(declare-fun m!376007 () Bool)

(assert (=> b!289107 m!376007))

(assert (=> b!289107 m!372529))

(assert (=> b!289107 m!372525))

(declare-fun m!376009 () Bool)

(assert (=> b!289107 m!376009))

(assert (=> b!289107 m!376005))

(declare-fun m!376011 () Bool)

(assert (=> b!289107 m!376011))

(declare-fun m!376013 () Bool)

(assert (=> b!289107 m!376013))

(declare-fun m!376015 () Bool)

(assert (=> b!289107 m!376015))

(assert (=> b!289107 m!376011))

(assert (=> b!289107 m!376009))

(declare-fun m!376017 () Bool)

(assert (=> b!289107 m!376017))

(assert (=> b!289107 m!375999))

(assert (=> b!289107 m!376017))

(declare-fun m!376019 () Bool)

(assert (=> b!289107 m!376019))

(declare-fun m!376021 () Bool)

(assert (=> b!289107 m!376021))

(assert (=> b!287702 d!85971))

(declare-fun d!85973 () Bool)

(assert (=> d!85973 (= (list!1648 lt!120863) (list!1650 (c!54356 lt!120863)))))

(declare-fun bs!32766 () Bool)

(assert (= bs!32766 d!85973))

(assert (=> bs!32766 m!374337))

(assert (=> b!287702 d!85973))

(declare-fun b!289108 () Bool)

(declare-fun e!179963 () List!3955)

(assert (=> b!289108 (= e!179963 (drop!235 (t!40183 lt!121128) (- (+ 0 1) 1)))))

(declare-fun b!289109 () Bool)

(declare-fun e!179961 () List!3955)

(assert (=> b!289109 (= e!179961 Nil!3945)))

(declare-fun b!289110 () Bool)

(assert (=> b!289110 (= e!179963 lt!121128)))

(declare-fun b!289111 () Bool)

(declare-fun e!179960 () Int)

(declare-fun call!16366 () Int)

(assert (=> b!289111 (= e!179960 (- call!16366 (+ 0 1)))))

(declare-fun bm!16361 () Bool)

(assert (=> bm!16361 (= call!16366 (size!3164 lt!121128))))

(declare-fun b!289112 () Bool)

(declare-fun e!179962 () Int)

(assert (=> b!289112 (= e!179962 e!179960)))

(declare-fun c!54777 () Bool)

(assert (=> b!289112 (= c!54777 (>= (+ 0 1) call!16366))))

(declare-fun d!85975 () Bool)

(declare-fun e!179959 () Bool)

(assert (=> d!85975 e!179959))

(declare-fun res!132032 () Bool)

(assert (=> d!85975 (=> (not res!132032) (not e!179959))))

(declare-fun lt!122114 () List!3955)

(assert (=> d!85975 (= res!132032 (= ((_ map implies) (content!580 lt!122114) (content!580 lt!121128)) ((as const (InoxSet Token!1254)) true)))))

(assert (=> d!85975 (= lt!122114 e!179961)))

(declare-fun c!54780 () Bool)

(assert (=> d!85975 (= c!54780 ((_ is Nil!3945) lt!121128))))

(assert (=> d!85975 (= (drop!235 lt!121128 (+ 0 1)) lt!122114)))

(declare-fun b!289113 () Bool)

(assert (=> b!289113 (= e!179960 0)))

(declare-fun b!289114 () Bool)

(assert (=> b!289114 (= e!179961 e!179963)))

(declare-fun c!54778 () Bool)

(assert (=> b!289114 (= c!54778 (<= (+ 0 1) 0))))

(declare-fun b!289115 () Bool)

(assert (=> b!289115 (= e!179959 (= (size!3164 lt!122114) e!179962))))

(declare-fun c!54779 () Bool)

(assert (=> b!289115 (= c!54779 (<= (+ 0 1) 0))))

(declare-fun b!289116 () Bool)

(assert (=> b!289116 (= e!179962 call!16366)))

(assert (= (and d!85975 c!54780) b!289109))

(assert (= (and d!85975 (not c!54780)) b!289114))

(assert (= (and b!289114 c!54778) b!289110))

(assert (= (and b!289114 (not c!54778)) b!289108))

(assert (= (and d!85975 res!132032) b!289115))

(assert (= (and b!289115 c!54779) b!289116))

(assert (= (and b!289115 (not c!54779)) b!289112))

(assert (= (and b!289112 c!54777) b!289113))

(assert (= (and b!289112 (not c!54777)) b!289111))

(assert (= (or b!289116 b!289112 b!289111) bm!16361))

(declare-fun m!376023 () Bool)

(assert (=> b!289108 m!376023))

(assert (=> bm!16361 m!375963))

(declare-fun m!376025 () Bool)

(assert (=> d!85975 m!376025))

(assert (=> d!85975 m!375969))

(declare-fun m!376027 () Bool)

(assert (=> b!289115 m!376027))

(assert (=> b!287702 d!85975))

(declare-fun b!289117 () Bool)

(declare-fun e!179968 () List!3955)

(assert (=> b!289117 (= e!179968 (drop!235 (t!40183 lt!121126) (- 0 1)))))

(declare-fun b!289118 () Bool)

(declare-fun e!179966 () List!3955)

(assert (=> b!289118 (= e!179966 Nil!3945)))

(declare-fun b!289119 () Bool)

(assert (=> b!289119 (= e!179968 lt!121126)))

(declare-fun b!289120 () Bool)

(declare-fun e!179965 () Int)

(declare-fun call!16367 () Int)

(assert (=> b!289120 (= e!179965 (- call!16367 0))))

(declare-fun bm!16362 () Bool)

(assert (=> bm!16362 (= call!16367 (size!3164 lt!121126))))

(declare-fun b!289121 () Bool)

(declare-fun e!179967 () Int)

(assert (=> b!289121 (= e!179967 e!179965)))

(declare-fun c!54781 () Bool)

(assert (=> b!289121 (= c!54781 (>= 0 call!16367))))

(declare-fun d!85977 () Bool)

(declare-fun e!179964 () Bool)

(assert (=> d!85977 e!179964))

(declare-fun res!132033 () Bool)

(assert (=> d!85977 (=> (not res!132033) (not e!179964))))

(declare-fun lt!122115 () List!3955)

(assert (=> d!85977 (= res!132033 (= ((_ map implies) (content!580 lt!122115) (content!580 lt!121126)) ((as const (InoxSet Token!1254)) true)))))

(assert (=> d!85977 (= lt!122115 e!179966)))

(declare-fun c!54784 () Bool)

(assert (=> d!85977 (= c!54784 ((_ is Nil!3945) lt!121126))))

(assert (=> d!85977 (= (drop!235 lt!121126 0) lt!122115)))

(declare-fun b!289122 () Bool)

(assert (=> b!289122 (= e!179965 0)))

(declare-fun b!289123 () Bool)

(assert (=> b!289123 (= e!179966 e!179968)))

(declare-fun c!54782 () Bool)

(assert (=> b!289123 (= c!54782 (<= 0 0))))

(declare-fun b!289124 () Bool)

(assert (=> b!289124 (= e!179964 (= (size!3164 lt!122115) e!179967))))

(declare-fun c!54783 () Bool)

(assert (=> b!289124 (= c!54783 (<= 0 0))))

(declare-fun b!289125 () Bool)

(assert (=> b!289125 (= e!179967 call!16367)))

(assert (= (and d!85977 c!54784) b!289118))

(assert (= (and d!85977 (not c!54784)) b!289123))

(assert (= (and b!289123 c!54782) b!289119))

(assert (= (and b!289123 (not c!54782)) b!289117))

(assert (= (and d!85977 res!132033) b!289124))

(assert (= (and b!289124 c!54783) b!289125))

(assert (= (and b!289124 (not c!54783)) b!289121))

(assert (= (and b!289121 c!54781) b!289122))

(assert (= (and b!289121 (not c!54781)) b!289120))

(assert (= (or b!289125 b!289121 b!289120) bm!16362))

(declare-fun m!376029 () Bool)

(assert (=> b!289117 m!376029))

(assert (=> bm!16362 m!375975))

(declare-fun m!376031 () Bool)

(assert (=> d!85977 m!376031))

(declare-fun m!376033 () Bool)

(assert (=> d!85977 m!376033))

(declare-fun m!376035 () Bool)

(assert (=> b!289124 m!376035))

(assert (=> b!287702 d!85977))

(declare-fun d!85979 () Bool)

(assert (=> d!85979 (= (head!930 (drop!235 lt!121126 0)) (h!9342 (drop!235 lt!121126 0)))))

(assert (=> b!287702 d!85979))

(declare-fun d!85981 () Bool)

(declare-fun lt!122116 () Token!1254)

(assert (=> d!85981 (= lt!122116 (apply!843 (list!1648 lt!120863) 0))))

(assert (=> d!85981 (= lt!122116 (apply!845 (c!54356 lt!120863) 0))))

(declare-fun e!179969 () Bool)

(assert (=> d!85981 e!179969))

(declare-fun res!132034 () Bool)

(assert (=> d!85981 (=> (not res!132034) (not e!179969))))

(assert (=> d!85981 (= res!132034 (<= 0 0))))

(assert (=> d!85981 (= (apply!840 lt!120863 0) lt!122116)))

(declare-fun b!289126 () Bool)

(assert (=> b!289126 (= e!179969 (< 0 (size!3161 lt!120863)))))

(assert (= (and d!85981 res!132034) b!289126))

(assert (=> d!85981 m!372529))

(assert (=> d!85981 m!372529))

(declare-fun m!376037 () Bool)

(assert (=> d!85981 m!376037))

(declare-fun m!376039 () Bool)

(assert (=> d!85981 m!376039))

(assert (=> b!289126 m!372513))

(assert (=> b!287702 d!85981))

(declare-fun b!289127 () Bool)

(declare-fun res!132037 () Bool)

(declare-fun e!179970 () Bool)

(assert (=> b!289127 (=> (not res!132037) (not e!179970))))

(assert (=> b!289127 (= res!132037 (isBalanced!377 (++!1054 (c!54354 (BalanceConc!2673 Empty!1332)) (c!54354 (charsOf!398 (apply!840 lt!120863 0))))))))

(declare-fun b!289128 () Bool)

(declare-fun res!132038 () Bool)

(assert (=> b!289128 (=> (not res!132038) (not e!179970))))

(assert (=> b!289128 (= res!132038 (<= (height!166 (++!1054 (c!54354 (BalanceConc!2673 Empty!1332)) (c!54354 (charsOf!398 (apply!840 lt!120863 0))))) (+ (max!0 (height!166 (c!54354 (BalanceConc!2673 Empty!1332))) (height!166 (c!54354 (charsOf!398 (apply!840 lt!120863 0))))) 1)))))

(declare-fun d!85983 () Bool)

(assert (=> d!85983 e!179970))

(declare-fun res!132035 () Bool)

(assert (=> d!85983 (=> (not res!132035) (not e!179970))))

(assert (=> d!85983 (= res!132035 (appendAssocInst!69 (c!54354 (BalanceConc!2673 Empty!1332)) (c!54354 (charsOf!398 (apply!840 lt!120863 0)))))))

(declare-fun lt!122117 () BalanceConc!2672)

(assert (=> d!85983 (= lt!122117 (BalanceConc!2673 (++!1054 (c!54354 (BalanceConc!2673 Empty!1332)) (c!54354 (charsOf!398 (apply!840 lt!120863 0))))))))

(assert (=> d!85983 (= (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (apply!840 lt!120863 0))) lt!122117)))

(declare-fun b!289129 () Bool)

(declare-fun res!132036 () Bool)

(assert (=> b!289129 (=> (not res!132036) (not e!179970))))

(assert (=> b!289129 (= res!132036 (>= (height!166 (++!1054 (c!54354 (BalanceConc!2673 Empty!1332)) (c!54354 (charsOf!398 (apply!840 lt!120863 0))))) (max!0 (height!166 (c!54354 (BalanceConc!2673 Empty!1332))) (height!166 (c!54354 (charsOf!398 (apply!840 lt!120863 0)))))))))

(declare-fun b!289130 () Bool)

(assert (=> b!289130 (= e!179970 (= (list!1645 lt!122117) (++!1050 (list!1645 (BalanceConc!2673 Empty!1332)) (list!1645 (charsOf!398 (apply!840 lt!120863 0))))))))

(assert (= (and d!85983 res!132035) b!289127))

(assert (= (and b!289127 res!132037) b!289128))

(assert (= (and b!289128 res!132038) b!289129))

(assert (= (and b!289129 res!132036) b!289130))

(declare-fun m!376041 () Bool)

(assert (=> d!85983 m!376041))

(declare-fun m!376043 () Bool)

(assert (=> d!85983 m!376043))

(declare-fun m!376045 () Bool)

(assert (=> b!289128 m!376045))

(declare-fun m!376047 () Bool)

(assert (=> b!289128 m!376047))

(assert (=> b!289128 m!376047))

(assert (=> b!289128 m!376045))

(declare-fun m!376049 () Bool)

(assert (=> b!289128 m!376049))

(assert (=> b!289128 m!376043))

(assert (=> b!289128 m!376043))

(declare-fun m!376051 () Bool)

(assert (=> b!289128 m!376051))

(declare-fun m!376053 () Bool)

(assert (=> b!289130 m!376053))

(assert (=> b!289130 m!372515))

(assert (=> b!289130 m!372531))

(declare-fun m!376055 () Bool)

(assert (=> b!289130 m!376055))

(assert (=> b!289130 m!372515))

(assert (=> b!289130 m!376055))

(declare-fun m!376057 () Bool)

(assert (=> b!289130 m!376057))

(assert (=> b!289127 m!376043))

(assert (=> b!289127 m!376043))

(declare-fun m!376059 () Bool)

(assert (=> b!289127 m!376059))

(assert (=> b!289129 m!376045))

(assert (=> b!289129 m!376047))

(assert (=> b!289129 m!376047))

(assert (=> b!289129 m!376045))

(assert (=> b!289129 m!376049))

(assert (=> b!289129 m!376043))

(assert (=> b!289129 m!376043))

(assert (=> b!289129 m!376051))

(assert (=> b!287702 d!85983))

(declare-fun d!85985 () Bool)

(assert (=> d!85985 (= (tail!512 (drop!235 lt!121128 0)) (t!40183 (drop!235 lt!121128 0)))))

(assert (=> b!287702 d!85985))

(declare-fun d!85987 () Bool)

(assert (=> d!85987 (= (head!930 (drop!235 lt!121126 0)) (apply!843 lt!121126 0))))

(declare-fun lt!122118 () Unit!5300)

(assert (=> d!85987 (= lt!122118 (choose!2598 lt!121126 0))))

(declare-fun e!179971 () Bool)

(assert (=> d!85987 e!179971))

(declare-fun res!132039 () Bool)

(assert (=> d!85987 (=> (not res!132039) (not e!179971))))

(assert (=> d!85987 (= res!132039 (>= 0 0))))

(assert (=> d!85987 (= (lemmaDropApply!222 lt!121126 0) lt!122118)))

(declare-fun b!289131 () Bool)

(assert (=> b!289131 (= e!179971 (< 0 (size!3164 lt!121126)))))

(assert (= (and d!85987 res!132039) b!289131))

(assert (=> d!85987 m!372519))

(assert (=> d!85987 m!372519))

(assert (=> d!85987 m!372521))

(assert (=> d!85987 m!372523))

(declare-fun m!376061 () Bool)

(assert (=> d!85987 m!376061))

(assert (=> b!289131 m!375975))

(assert (=> b!287702 d!85987))

(assert (=> bm!16278 d!85295))

(declare-fun d!85989 () Bool)

(assert (=> d!85989 (= (isEmpty!2618 (originalCharacters!798 (h!9342 tokens!465))) ((_ is Nil!3943) (originalCharacters!798 (h!9342 tokens!465))))))

(assert (=> d!85083 d!85989))

(declare-fun d!85991 () Bool)

(assert (=> d!85991 (= (list!1645 (_2!2459 lt!120920)) (list!1649 (c!54354 (_2!2459 lt!120920))))))

(declare-fun bs!32767 () Bool)

(assert (= bs!32767 d!85991))

(declare-fun m!376063 () Bool)

(assert (=> bs!32767 m!376063))

(assert (=> b!287412 d!85991))

(declare-fun b!289142 () Bool)

(declare-fun e!179980 () tuple2!4490)

(declare-fun lt!122126 () Option!870)

(declare-fun lt!122127 () tuple2!4490)

(assert (=> b!289142 (= e!179980 (tuple2!4491 (Cons!3945 (_1!2457 (v!14810 lt!122126)) (_1!2461 lt!122127)) (_2!2461 lt!122127)))))

(assert (=> b!289142 (= lt!122127 (lexList!227 thiss!17480 rules!1920 (_2!2457 (v!14810 lt!122126))))))

(declare-fun d!85993 () Bool)

(declare-fun e!179978 () Bool)

(assert (=> d!85993 e!179978))

(declare-fun c!54790 () Bool)

(declare-fun lt!122125 () tuple2!4490)

(assert (=> d!85993 (= c!54790 (> (size!3164 (_1!2461 lt!122125)) 0))))

(assert (=> d!85993 (= lt!122125 e!179980)))

(declare-fun c!54789 () Bool)

(assert (=> d!85993 (= c!54789 ((_ is Some!869) lt!122126))))

(assert (=> d!85993 (= lt!122126 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 (seqFromList!875 lt!120875))))))

(assert (=> d!85993 (= (lexList!227 thiss!17480 rules!1920 (list!1645 (seqFromList!875 lt!120875))) lt!122125)))

(declare-fun b!289143 () Bool)

(declare-fun e!179979 () Bool)

(assert (=> b!289143 (= e!179979 (not (isEmpty!2616 (_1!2461 lt!122125))))))

(declare-fun b!289144 () Bool)

(assert (=> b!289144 (= e!179980 (tuple2!4491 Nil!3945 (list!1645 (seqFromList!875 lt!120875))))))

(declare-fun b!289145 () Bool)

(assert (=> b!289145 (= e!179978 e!179979)))

(declare-fun res!132042 () Bool)

(assert (=> b!289145 (= res!132042 (< (size!3163 (_2!2461 lt!122125)) (size!3163 (list!1645 (seqFromList!875 lt!120875)))))))

(assert (=> b!289145 (=> (not res!132042) (not e!179979))))

(declare-fun b!289146 () Bool)

(assert (=> b!289146 (= e!179978 (= (_2!2461 lt!122125) (list!1645 (seqFromList!875 lt!120875))))))

(assert (= (and d!85993 c!54789) b!289142))

(assert (= (and d!85993 (not c!54789)) b!289144))

(assert (= (and d!85993 c!54790) b!289145))

(assert (= (and d!85993 (not c!54790)) b!289146))

(assert (= (and b!289145 res!132042) b!289143))

(declare-fun m!376065 () Bool)

(assert (=> b!289142 m!376065))

(declare-fun m!376067 () Bool)

(assert (=> d!85993 m!376067))

(assert (=> d!85993 m!371991))

(declare-fun m!376069 () Bool)

(assert (=> d!85993 m!376069))

(declare-fun m!376071 () Bool)

(assert (=> b!289143 m!376071))

(declare-fun m!376073 () Bool)

(assert (=> b!289145 m!376073))

(assert (=> b!289145 m!371991))

(assert (=> b!289145 m!374453))

(assert (=> b!287412 d!85993))

(declare-fun d!85995 () Bool)

(assert (=> d!85995 (= (list!1645 (seqFromList!875 lt!120875)) (list!1649 (c!54354 (seqFromList!875 lt!120875))))))

(declare-fun bs!32768 () Bool)

(assert (= bs!32768 d!85995))

(declare-fun m!376075 () Bool)

(assert (=> bs!32768 m!376075))

(assert (=> b!287412 d!85995))

(assert (=> b!287835 d!85655))

(declare-fun b!289147 () Bool)

(declare-fun e!179981 () List!3953)

(assert (=> b!289147 (= e!179981 Nil!3943)))

(declare-fun e!179982 () List!3953)

(declare-fun b!289149 () Bool)

(assert (=> b!289149 (= e!179982 (list!1652 (xs!3931 (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 0)))))))

(declare-fun c!54791 () Bool)

(declare-fun d!85997 () Bool)

(assert (=> d!85997 (= c!54791 ((_ is Empty!1332) (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 0))))))

(assert (=> d!85997 (= (list!1649 (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 0))) e!179981)))

(declare-fun b!289150 () Bool)

(assert (=> b!289150 (= e!179982 (++!1050 (list!1649 (left!3260 (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 0)))) (list!1649 (right!3590 (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 0))))))))

(declare-fun b!289148 () Bool)

(assert (=> b!289148 (= e!179981 e!179982)))

(declare-fun c!54792 () Bool)

(assert (=> b!289148 (= c!54792 ((_ is Leaf!2049) (c!54354 (printWithSeparatorTokenWhenNeededRec!314 thiss!17480 rules!1920 (seqFromList!876 (t!40183 tokens!465)) separatorToken!170 0))))))

(assert (= (and d!85997 c!54791) b!289147))

(assert (= (and d!85997 (not c!54791)) b!289148))

(assert (= (and b!289148 c!54792) b!289149))

(assert (= (and b!289148 (not c!54792)) b!289150))

(declare-fun m!376077 () Bool)

(assert (=> b!289149 m!376077))

(declare-fun m!376079 () Bool)

(assert (=> b!289150 m!376079))

(declare-fun m!376081 () Bool)

(assert (=> b!289150 m!376081))

(assert (=> b!289150 m!376079))

(assert (=> b!289150 m!376081))

(declare-fun m!376083 () Bool)

(assert (=> b!289150 m!376083))

(assert (=> d!85095 d!85997))

(assert (=> b!287526 d!85121))

(declare-fun d!85999 () Bool)

(assert (=> d!85999 (= (inv!17 (value!25833 (h!9342 tokens!465))) (= (charsToBigInt!1 (text!5887 (value!25833 (h!9342 tokens!465)))) (value!25825 (value!25833 (h!9342 tokens!465)))))))

(declare-fun bs!32769 () Bool)

(assert (= bs!32769 d!85999))

(declare-fun m!376085 () Bool)

(assert (=> bs!32769 m!376085))

(assert (=> b!287462 d!85999))

(assert (=> b!287688 d!85293))

(declare-fun d!86001 () Bool)

(declare-fun dynLambda!2100 (Int BalanceConc!2672) TokenValue!777)

(assert (=> d!86001 (= (apply!844 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))) (seqFromList!875 (originalCharacters!798 (_1!2457 (get!1329 lt!121107))))) (dynLambda!2100 (toValue!1502 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107))))) (seqFromList!875 (originalCharacters!798 (_1!2457 (get!1329 lt!121107))))))))

(declare-fun b_lambda!9617 () Bool)

(assert (=> (not b_lambda!9617) (not d!86001)))

(declare-fun t!40409 () Bool)

(declare-fun tb!16811 () Bool)

(assert (=> (and b!287907 (= (toValue!1502 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toValue!1502 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40409) tb!16811))

(declare-fun result!20650 () Bool)

(assert (=> tb!16811 (= result!20650 (inv!21 (dynLambda!2100 (toValue!1502 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107))))) (seqFromList!875 (originalCharacters!798 (_1!2457 (get!1329 lt!121107)))))))))

(declare-fun m!376087 () Bool)

(assert (=> tb!16811 m!376087))

(assert (=> d!86001 t!40409))

(declare-fun b_and!23421 () Bool)

(assert (= b_and!23253 (and (=> t!40409 result!20650) b_and!23421)))

(declare-fun t!40411 () Bool)

(declare-fun tb!16813 () Bool)

(assert (=> (and b!287922 (= (toValue!1502 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toValue!1502 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40411) tb!16813))

(declare-fun result!20654 () Bool)

(assert (= result!20654 result!20650))

(assert (=> d!86001 t!40411))

(declare-fun b_and!23423 () Bool)

(assert (= b_and!23257 (and (=> t!40411 result!20654) b_and!23423)))

(declare-fun tb!16815 () Bool)

(declare-fun t!40413 () Bool)

(assert (=> (and b!287251 (= (toValue!1502 (transformation!755 (h!9341 rules!1920))) (toValue!1502 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40413) tb!16815))

(declare-fun result!20656 () Bool)

(assert (= result!20656 result!20650))

(assert (=> d!86001 t!40413))

(declare-fun b_and!23425 () Bool)

(assert (= b_and!23193 (and (=> t!40413 result!20656) b_and!23425)))

(declare-fun t!40415 () Bool)

(declare-fun tb!16817 () Bool)

(assert (=> (and b!287246 (= (toValue!1502 (transformation!755 (rule!1354 separatorToken!170))) (toValue!1502 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40415) tb!16817))

(declare-fun result!20658 () Bool)

(assert (= result!20658 result!20650))

(assert (=> d!86001 t!40415))

(declare-fun b_and!23427 () Bool)

(assert (= b_and!23185 (and (=> t!40415 result!20658) b_and!23427)))

(declare-fun t!40417 () Bool)

(declare-fun tb!16819 () Bool)

(assert (=> (and b!287236 (= (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toValue!1502 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40417) tb!16819))

(declare-fun result!20660 () Bool)

(assert (= result!20660 result!20650))

(assert (=> d!86001 t!40417))

(declare-fun b_and!23429 () Bool)

(assert (= b_and!23189 (and (=> t!40417 result!20660) b_and!23429)))

(assert (=> d!86001 m!372503))

(declare-fun m!376089 () Bool)

(assert (=> d!86001 m!376089))

(assert (=> b!287688 d!86001))

(declare-fun d!86003 () Bool)

(assert (=> d!86003 (= (seqFromList!875 (originalCharacters!798 (_1!2457 (get!1329 lt!121107)))) (fromListB!359 (originalCharacters!798 (_1!2457 (get!1329 lt!121107)))))))

(declare-fun bs!32770 () Bool)

(assert (= bs!32770 d!86003))

(declare-fun m!376091 () Bool)

(assert (=> bs!32770 m!376091))

(assert (=> b!287688 d!86003))

(declare-fun b!289153 () Bool)

(declare-fun e!179986 () List!3953)

(assert (=> b!289153 (= e!179986 Nil!3943)))

(declare-fun b!289155 () Bool)

(declare-fun e!179987 () List!3953)

(assert (=> b!289155 (= e!179987 (list!1652 (xs!3931 (c!54354 lt!120867))))))

(declare-fun d!86005 () Bool)

(declare-fun c!54793 () Bool)

(assert (=> d!86005 (= c!54793 ((_ is Empty!1332) (c!54354 lt!120867)))))

(assert (=> d!86005 (= (list!1649 (c!54354 lt!120867)) e!179986)))

(declare-fun b!289156 () Bool)

(assert (=> b!289156 (= e!179987 (++!1050 (list!1649 (left!3260 (c!54354 lt!120867))) (list!1649 (right!3590 (c!54354 lt!120867)))))))

(declare-fun b!289154 () Bool)

(assert (=> b!289154 (= e!179986 e!179987)))

(declare-fun c!54794 () Bool)

(assert (=> b!289154 (= c!54794 ((_ is Leaf!2049) (c!54354 lt!120867)))))

(assert (= (and d!86005 c!54793) b!289153))

(assert (= (and d!86005 (not c!54793)) b!289154))

(assert (= (and b!289154 c!54794) b!289155))

(assert (= (and b!289154 (not c!54794)) b!289156))

(declare-fun m!376093 () Bool)

(assert (=> b!289155 m!376093))

(declare-fun m!376095 () Bool)

(assert (=> b!289156 m!376095))

(declare-fun m!376097 () Bool)

(assert (=> b!289156 m!376097))

(assert (=> b!289156 m!376095))

(assert (=> b!289156 m!376097))

(declare-fun m!376099 () Bool)

(assert (=> b!289156 m!376099))

(assert (=> d!85165 d!86005))

(declare-fun d!86007 () Bool)

(declare-fun c!54795 () Bool)

(assert (=> d!86007 (= c!54795 ((_ is Nil!3943) lt!120923))))

(declare-fun e!179988 () (InoxSet C!2880))

(assert (=> d!86007 (= (content!579 lt!120923) e!179988)))

(declare-fun b!289157 () Bool)

(assert (=> b!289157 (= e!179988 ((as const (Array C!2880 Bool)) false))))

(declare-fun b!289158 () Bool)

(assert (=> b!289158 (= e!179988 ((_ map or) (store ((as const (Array C!2880 Bool)) false) (h!9340 lt!120923) true) (content!579 (t!40181 lt!120923))))))

(assert (= (and d!86007 c!54795) b!289157))

(assert (= (and d!86007 (not c!54795)) b!289158))

(declare-fun m!376101 () Bool)

(assert (=> b!289158 m!376101))

(declare-fun m!376103 () Bool)

(assert (=> b!289158 m!376103))

(assert (=> d!85069 d!86007))

(assert (=> d!85069 d!85351))

(assert (=> d!85069 d!85589))

(declare-fun b!289167 () Bool)

(declare-fun e!179995 () Bool)

(declare-fun call!16370 () Bool)

(assert (=> b!289167 (= e!179995 call!16370)))

(declare-fun d!86009 () Bool)

(declare-fun c!54798 () Bool)

(assert (=> d!86009 (= c!54798 (and ((_ is Cons!3944) rules!1920) (not (= (isSeparator!755 (h!9341 rules!1920)) (isSeparator!755 (h!9341 rules!1920))))))))

(declare-fun e!179997 () Bool)

(assert (=> d!86009 (= (ruleDisjointCharsFromAllFromOtherType!137 (h!9341 rules!1920) rules!1920) e!179997)))

(declare-fun b!289168 () Bool)

(declare-fun e!179996 () Bool)

(assert (=> b!289168 (= e!179997 e!179996)))

(declare-fun res!132048 () Bool)

(assert (=> b!289168 (= res!132048 (not ((_ is Cons!3944) rules!1920)))))

(assert (=> b!289168 (=> res!132048 e!179996)))

(declare-fun b!289169 () Bool)

(assert (=> b!289169 (= e!179997 e!179995)))

(declare-fun res!132047 () Bool)

(declare-fun rulesUseDisjointChars!68 (Rule!1310 Rule!1310) Bool)

(assert (=> b!289169 (= res!132047 (rulesUseDisjointChars!68 (h!9341 rules!1920) (h!9341 rules!1920)))))

(assert (=> b!289169 (=> (not res!132047) (not e!179995))))

(declare-fun bm!16365 () Bool)

(assert (=> bm!16365 (= call!16370 (ruleDisjointCharsFromAllFromOtherType!137 (h!9341 rules!1920) (t!40182 rules!1920)))))

(declare-fun b!289170 () Bool)

(assert (=> b!289170 (= e!179996 call!16370)))

(assert (= (and d!86009 c!54798) b!289169))

(assert (= (and d!86009 (not c!54798)) b!289168))

(assert (= (and b!289169 res!132047) b!289167))

(assert (= (and b!289168 (not res!132048)) b!289170))

(assert (= (or b!289167 b!289170) bm!16365))

(declare-fun m!376105 () Bool)

(assert (=> b!289169 m!376105))

(declare-fun m!376107 () Bool)

(assert (=> bm!16365 m!376107))

(assert (=> b!287441 d!86009))

(declare-fun d!86011 () Bool)

(assert (=> d!86011 (= (isEmpty!2618 (originalCharacters!798 separatorToken!170)) ((_ is Nil!3943) (originalCharacters!798 separatorToken!170)))))

(assert (=> d!85087 d!86011))

(declare-fun d!86013 () Bool)

(assert (=> d!86013 (= (isEmpty!2620 (maxPrefix!357 thiss!17480 rules!1920 lt!120875)) (not ((_ is Some!869) (maxPrefix!357 thiss!17480 rules!1920 lt!120875))))))

(assert (=> d!85143 d!86013))

(assert (=> b!287692 d!85289))

(assert (=> b!287692 d!85291))

(assert (=> b!287692 d!85293))

(declare-fun lt!122128 () BalanceConc!2672)

(declare-fun d!86015 () Bool)

(assert (=> d!86015 (= (list!1645 lt!122128) (originalCharacters!798 (ite c!54470 call!16286 call!16287)))))

(assert (=> d!86015 (= lt!122128 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54470 call!16286 call!16287)))) (value!25833 (ite c!54470 call!16286 call!16287))))))

(assert (=> d!86015 (= (charsOf!398 (ite c!54470 call!16286 call!16287)) lt!122128)))

(declare-fun b_lambda!9619 () Bool)

(assert (=> (not b_lambda!9619) (not d!86015)))

(declare-fun t!40419 () Bool)

(declare-fun tb!16821 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54470 call!16286 call!16287))))) t!40419) tb!16821))

(declare-fun e!179998 () Bool)

(declare-fun b!289171 () Bool)

(declare-fun tp!105487 () Bool)

(assert (=> b!289171 (= e!179998 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54470 call!16286 call!16287)))) (value!25833 (ite c!54470 call!16286 call!16287))))) tp!105487))))

(declare-fun result!20662 () Bool)

(assert (=> tb!16821 (= result!20662 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54470 call!16286 call!16287)))) (value!25833 (ite c!54470 call!16286 call!16287)))) e!179998))))

(assert (= tb!16821 b!289171))

(declare-fun m!376109 () Bool)

(assert (=> b!289171 m!376109))

(declare-fun m!376111 () Bool)

(assert (=> tb!16821 m!376111))

(assert (=> d!86015 t!40419))

(declare-fun b_and!23431 () Bool)

(assert (= b_and!23411 (and (=> t!40419 result!20662) b_and!23431)))

(declare-fun tb!16823 () Bool)

(declare-fun t!40421 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54470 call!16286 call!16287))))) t!40421) tb!16823))

(declare-fun result!20664 () Bool)

(assert (= result!20664 result!20662))

(assert (=> d!86015 t!40421))

(declare-fun b_and!23433 () Bool)

(assert (= b_and!23417 (and (=> t!40421 result!20664) b_and!23433)))

(declare-fun t!40423 () Bool)

(declare-fun tb!16825 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54470 call!16286 call!16287))))) t!40423) tb!16825))

(declare-fun result!20666 () Bool)

(assert (= result!20666 result!20662))

(assert (=> d!86015 t!40423))

(declare-fun b_and!23435 () Bool)

(assert (= b_and!23415 (and (=> t!40423 result!20666) b_and!23435)))

(declare-fun t!40425 () Bool)

(declare-fun tb!16827 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54470 call!16286 call!16287))))) t!40425) tb!16827))

(declare-fun result!20668 () Bool)

(assert (= result!20668 result!20662))

(assert (=> d!86015 t!40425))

(declare-fun b_and!23437 () Bool)

(assert (= b_and!23413 (and (=> t!40425 result!20668) b_and!23437)))

(declare-fun tb!16829 () Bool)

(declare-fun t!40427 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54470 call!16286 call!16287))))) t!40427) tb!16829))

(declare-fun result!20670 () Bool)

(assert (= result!20670 result!20662))

(assert (=> d!86015 t!40427))

(declare-fun b_and!23439 () Bool)

(assert (= b_and!23419 (and (=> t!40427 result!20670) b_and!23439)))

(declare-fun m!376113 () Bool)

(assert (=> d!86015 m!376113))

(declare-fun m!376115 () Bool)

(assert (=> d!86015 m!376115))

(assert (=> bm!16282 d!86015))

(declare-fun d!86017 () Bool)

(assert (=> d!86017 (= (list!1645 lt!121212) (list!1649 (c!54354 lt!121212)))))

(declare-fun bs!32771 () Bool)

(assert (= bs!32771 d!86017))

(declare-fun m!376117 () Bool)

(assert (=> bs!32771 m!376117))

(assert (=> d!85205 d!86017))

(declare-fun d!86019 () Bool)

(assert (=> d!86019 (= (dropList!182 lt!120873 0) (drop!235 (list!1650 (c!54356 lt!120873)) 0))))

(declare-fun bs!32772 () Bool)

(assert (= bs!32772 d!86019))

(assert (=> bs!32772 m!374131))

(assert (=> bs!32772 m!374131))

(declare-fun m!376119 () Bool)

(assert (=> bs!32772 m!376119))

(assert (=> d!85205 d!86019))

(declare-fun bs!32773 () Bool)

(declare-fun b!289176 () Bool)

(assert (= bs!32773 (and b!289176 d!85577)))

(declare-fun lambda!9930 () Int)

(assert (=> bs!32773 (not (= lambda!9930 lambda!9890))))

(declare-fun bs!32774 () Bool)

(assert (= bs!32774 (and b!289176 b!287862)))

(assert (=> bs!32774 (= lambda!9930 lambda!9878)))

(declare-fun bs!32775 () Bool)

(assert (= bs!32775 (and b!289176 b!288074)))

(assert (=> bs!32775 (= lambda!9930 lambda!9880)))

(declare-fun bs!32776 () Bool)

(assert (= bs!32776 (and b!289176 d!85435)))

(assert (=> bs!32776 (not (= lambda!9930 lambda!9882))))

(declare-fun bs!32777 () Bool)

(assert (= bs!32777 (and b!289176 b!288448)))

(assert (=> bs!32777 (= lambda!9930 lambda!9891)))

(declare-fun bs!32778 () Bool)

(assert (= bs!32778 (and b!289176 b!287601)))

(assert (=> bs!32778 (= lambda!9930 lambda!9872)))

(declare-fun bs!32779 () Bool)

(assert (= bs!32779 (and b!289176 b!287521)))

(assert (=> bs!32779 (= lambda!9930 lambda!9860)))

(declare-fun bs!32780 () Bool)

(assert (= bs!32780 (and b!289176 b!288224)))

(assert (=> bs!32780 (= lambda!9930 lambda!9883)))

(declare-fun bs!32781 () Bool)

(assert (= bs!32781 (and b!289176 b!287250)))

(assert (=> bs!32781 (= lambda!9930 lambda!9844)))

(declare-fun bs!32782 () Bool)

(assert (= bs!32782 (and b!289176 d!85003)))

(assert (=> bs!32782 (= lambda!9930 lambda!9854)))

(declare-fun bs!32783 () Bool)

(assert (= bs!32783 (and b!289176 b!287848)))

(assert (=> bs!32783 (= lambda!9930 lambda!9877)))

(declare-fun bs!32784 () Bool)

(assert (= bs!32784 (and b!289176 b!287244)))

(assert (=> bs!32784 (not (= lambda!9930 lambda!9843))))

(declare-fun bs!32785 () Bool)

(assert (= bs!32785 (and b!289176 d!85205)))

(assert (=> bs!32785 (not (= lambda!9930 lambda!9876))))

(declare-fun bs!32786 () Bool)

(assert (= bs!32786 (and b!289176 d!85101)))

(assert (=> bs!32786 (not (= lambda!9930 lambda!9871))))

(declare-fun b!289184 () Bool)

(declare-fun e!180006 () Bool)

(assert (=> b!289184 (= e!180006 true)))

(declare-fun b!289183 () Bool)

(declare-fun e!180005 () Bool)

(assert (=> b!289183 (= e!180005 e!180006)))

(declare-fun b!289182 () Bool)

(declare-fun e!180004 () Bool)

(assert (=> b!289182 (= e!180004 e!180005)))

(assert (=> b!289176 e!180004))

(assert (= b!289183 b!289184))

(assert (= b!289182 b!289183))

(assert (= (and b!289176 ((_ is Cons!3944) rules!1920)) b!289182))

(assert (=> b!289184 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9930))))

(assert (=> b!289184 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9930))))

(assert (=> b!289176 true))

(declare-fun b!289172 () Bool)

(declare-fun c!54802 () Bool)

(declare-fun lt!122131 () Option!870)

(assert (=> b!289172 (= c!54802 (and ((_ is Some!869) lt!122131) (not (= (_1!2457 (v!14810 lt!122131)) (h!9342 (dropList!182 lt!120873 0))))))))

(declare-fun e!180000 () List!3953)

(declare-fun e!179999 () List!3953)

(assert (=> b!289172 (= e!180000 e!179999)))

(declare-fun b!289173 () Bool)

(declare-fun e!180002 () List!3953)

(assert (=> b!289173 (= e!180002 Nil!3943)))

(declare-fun b!289174 () Bool)

(declare-fun e!180003 () BalanceConc!2672)

(declare-fun call!16371 () BalanceConc!2672)

(assert (=> b!289174 (= e!180003 call!16371)))

(declare-fun bm!16366 () Bool)

(declare-fun call!16372 () BalanceConc!2672)

(assert (=> bm!16366 (= call!16371 call!16372)))

(declare-fun c!54800 () Bool)

(declare-fun call!16373 () List!3953)

(declare-fun bm!16367 () Bool)

(assert (=> bm!16367 (= call!16373 (list!1645 (ite c!54800 call!16372 e!180003)))))

(declare-fun b!289175 () Bool)

(declare-fun call!16375 () List!3953)

(declare-fun lt!122133 () List!3953)

(assert (=> b!289175 (= e!179999 (++!1050 call!16375 lt!122133))))

(assert (=> b!289176 (= e!180002 e!180000)))

(declare-fun lt!122134 () Unit!5300)

(assert (=> b!289176 (= lt!122134 (forallContained!308 (dropList!182 lt!120873 0) lambda!9930 (h!9342 (dropList!182 lt!120873 0))))))

(assert (=> b!289176 (= lt!122133 (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (t!40183 (dropList!182 lt!120873 0)) separatorToken!170))))

(assert (=> b!289176 (= lt!122131 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 (charsOf!398 (h!9342 (dropList!182 lt!120873 0)))) lt!122133)))))

(assert (=> b!289176 (= c!54800 (and ((_ is Some!869) lt!122131) (= (_1!2457 (v!14810 lt!122131)) (h!9342 (dropList!182 lt!120873 0)))))))

(declare-fun b!289177 () Bool)

(declare-fun e!180001 () List!3953)

(assert (=> b!289177 (= e!180001 call!16373)))

(declare-fun bm!16368 () Bool)

(declare-fun call!16374 () List!3953)

(assert (=> bm!16368 (= call!16374 call!16373)))

(declare-fun c!54799 () Bool)

(assert (=> bm!16368 (= c!54799 c!54802)))

(declare-fun b!289178 () Bool)

(assert (=> b!289178 (= e!179999 Nil!3943)))

(assert (=> b!289178 (= (print!366 thiss!17480 (singletonSeq!301 (h!9342 (dropList!182 lt!120873 0)))) (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 (dropList!182 lt!120873 0))) 0 (BalanceConc!2673 Empty!1332)))))

(declare-fun lt!122132 () Unit!5300)

(declare-fun Unit!5346 () Unit!5300)

(assert (=> b!289178 (= lt!122132 Unit!5346)))

(declare-fun lt!122130 () Unit!5300)

(assert (=> b!289178 (= lt!122130 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 call!16374 lt!122133))))

(assert (=> b!289178 false))

(declare-fun lt!122129 () Unit!5300)

(declare-fun Unit!5347 () Unit!5300)

(assert (=> b!289178 (= lt!122129 Unit!5347)))

(declare-fun b!289179 () Bool)

(assert (=> b!289179 (= e!180000 call!16375)))

(declare-fun d!86021 () Bool)

(declare-fun c!54801 () Bool)

(assert (=> d!86021 (= c!54801 ((_ is Cons!3945) (dropList!182 lt!120873 0)))))

(assert (=> d!86021 (= (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (dropList!182 lt!120873 0) separatorToken!170) e!180002)))

(declare-fun bm!16369 () Bool)

(declare-fun c!54803 () Bool)

(assert (=> bm!16369 (= c!54803 c!54800)))

(assert (=> bm!16369 (= call!16375 (++!1050 e!180001 (ite c!54800 lt!122133 call!16374)))))

(declare-fun bm!16370 () Bool)

(assert (=> bm!16370 (= call!16372 (charsOf!398 (h!9342 (dropList!182 lt!120873 0))))))

(declare-fun b!289180 () Bool)

(assert (=> b!289180 (= e!180001 (list!1645 call!16371))))

(declare-fun b!289181 () Bool)

(assert (=> b!289181 (= e!180003 (charsOf!398 separatorToken!170))))

(assert (= (and d!86021 c!54801) b!289176))

(assert (= (and d!86021 (not c!54801)) b!289173))

(assert (= (and b!289176 c!54800) b!289179))

(assert (= (and b!289176 (not c!54800)) b!289172))

(assert (= (and b!289172 c!54802) b!289175))

(assert (= (and b!289172 (not c!54802)) b!289178))

(assert (= (or b!289175 b!289178) bm!16366))

(assert (= (or b!289175 b!289178) bm!16368))

(assert (= (and bm!16368 c!54799) b!289181))

(assert (= (and bm!16368 (not c!54799)) b!289174))

(assert (= (or b!289179 bm!16366) bm!16370))

(assert (= (or b!289179 bm!16368) bm!16367))

(assert (= (or b!289179 b!289175) bm!16369))

(assert (= (and bm!16369 c!54803) b!289177))

(assert (= (and bm!16369 (not c!54803)) b!289180))

(declare-fun m!376121 () Bool)

(assert (=> b!289178 m!376121))

(assert (=> b!289178 m!376121))

(declare-fun m!376123 () Bool)

(assert (=> b!289178 m!376123))

(assert (=> b!289178 m!376121))

(declare-fun m!376125 () Bool)

(assert (=> b!289178 m!376125))

(declare-fun m!376127 () Bool)

(assert (=> b!289178 m!376127))

(assert (=> b!289181 m!371743))

(declare-fun m!376129 () Bool)

(assert (=> bm!16369 m!376129))

(declare-fun m!376131 () Bool)

(assert (=> b!289176 m!376131))

(declare-fun m!376133 () Bool)

(assert (=> b!289176 m!376133))

(assert (=> b!289176 m!376131))

(assert (=> b!289176 m!376133))

(declare-fun m!376135 () Bool)

(assert (=> b!289176 m!376135))

(assert (=> b!289176 m!376135))

(declare-fun m!376137 () Bool)

(assert (=> b!289176 m!376137))

(assert (=> b!289176 m!372769))

(declare-fun m!376139 () Bool)

(assert (=> b!289176 m!376139))

(declare-fun m!376141 () Bool)

(assert (=> b!289176 m!376141))

(declare-fun m!376143 () Bool)

(assert (=> b!289180 m!376143))

(assert (=> bm!16370 m!376131))

(declare-fun m!376145 () Bool)

(assert (=> b!289175 m!376145))

(declare-fun m!376147 () Bool)

(assert (=> bm!16367 m!376147))

(assert (=> d!85205 d!86021))

(assert (=> d!85205 d!85551))

(declare-fun d!86023 () Bool)

(assert (=> d!86023 (forall!1016 (dropList!182 lt!120873 0) lambda!9876)))

(declare-fun lt!122135 () Unit!5300)

(assert (=> d!86023 (= lt!122135 (choose!2596 (list!1648 lt!120873) (dropList!182 lt!120873 0) lambda!9876))))

(assert (=> d!86023 (forall!1016 (list!1648 lt!120873) lambda!9876)))

(assert (=> d!86023 (= (lemmaContentSubsetPreservesForall!126 (list!1648 lt!120873) (dropList!182 lt!120873 0) lambda!9876) lt!122135)))

(declare-fun bs!32787 () Bool)

(assert (= bs!32787 d!86023))

(assert (=> bs!32787 m!372769))

(declare-fun m!376149 () Bool)

(assert (=> bs!32787 m!376149))

(assert (=> bs!32787 m!371825))

(assert (=> bs!32787 m!372769))

(declare-fun m!376151 () Bool)

(assert (=> bs!32787 m!376151))

(assert (=> bs!32787 m!371825))

(declare-fun m!376153 () Bool)

(assert (=> bs!32787 m!376153))

(assert (=> d!85205 d!86023))

(assert (=> d!85205 d!85633))

(declare-fun bs!32788 () Bool)

(declare-fun d!86025 () Bool)

(assert (= bs!32788 (and d!86025 d!85577)))

(declare-fun lambda!9933 () Int)

(assert (=> bs!32788 (not (= lambda!9933 lambda!9890))))

(declare-fun bs!32789 () Bool)

(assert (= bs!32789 (and d!86025 b!287862)))

(assert (=> bs!32789 (= lambda!9933 lambda!9878)))

(declare-fun bs!32790 () Bool)

(assert (= bs!32790 (and d!86025 b!288074)))

(assert (=> bs!32790 (= lambda!9933 lambda!9880)))

(declare-fun bs!32791 () Bool)

(assert (= bs!32791 (and d!86025 d!85435)))

(assert (=> bs!32791 (not (= lambda!9933 lambda!9882))))

(declare-fun bs!32792 () Bool)

(assert (= bs!32792 (and d!86025 b!287601)))

(assert (=> bs!32792 (= lambda!9933 lambda!9872)))

(declare-fun bs!32793 () Bool)

(assert (= bs!32793 (and d!86025 b!287521)))

(assert (=> bs!32793 (= lambda!9933 lambda!9860)))

(declare-fun bs!32794 () Bool)

(assert (= bs!32794 (and d!86025 b!288224)))

(assert (=> bs!32794 (= lambda!9933 lambda!9883)))

(declare-fun bs!32795 () Bool)

(assert (= bs!32795 (and d!86025 b!287250)))

(assert (=> bs!32795 (= lambda!9933 lambda!9844)))

(declare-fun bs!32796 () Bool)

(assert (= bs!32796 (and d!86025 d!85003)))

(assert (=> bs!32796 (= lambda!9933 lambda!9854)))

(declare-fun bs!32797 () Bool)

(assert (= bs!32797 (and d!86025 b!287848)))

(assert (=> bs!32797 (= lambda!9933 lambda!9877)))

(declare-fun bs!32798 () Bool)

(assert (= bs!32798 (and d!86025 b!287244)))

(assert (=> bs!32798 (not (= lambda!9933 lambda!9843))))

(declare-fun bs!32799 () Bool)

(assert (= bs!32799 (and d!86025 b!289176)))

(assert (=> bs!32799 (= lambda!9933 lambda!9930)))

(declare-fun bs!32800 () Bool)

(assert (= bs!32800 (and d!86025 b!288448)))

(assert (=> bs!32800 (= lambda!9933 lambda!9891)))

(declare-fun bs!32801 () Bool)

(assert (= bs!32801 (and d!86025 d!85205)))

(assert (=> bs!32801 (not (= lambda!9933 lambda!9876))))

(declare-fun bs!32802 () Bool)

(assert (= bs!32802 (and d!86025 d!85101)))

(assert (=> bs!32802 (not (= lambda!9933 lambda!9871))))

(declare-fun b!289214 () Bool)

(declare-fun e!180027 () Bool)

(assert (=> b!289214 (= e!180027 true)))

(declare-fun b!289213 () Bool)

(declare-fun e!180026 () Bool)

(assert (=> b!289213 (= e!180026 e!180027)))

(declare-fun b!289212 () Bool)

(declare-fun e!180025 () Bool)

(assert (=> b!289212 (= e!180025 e!180026)))

(assert (=> d!86025 e!180025))

(assert (= b!289213 b!289214))

(assert (= b!289212 b!289213))

(assert (= (and d!86025 ((_ is Cons!3944) rules!1920)) b!289212))

(assert (=> b!289214 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9933))))

(assert (=> b!289214 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9933))))

(assert (=> d!86025 true))

(declare-fun lt!122240 () Bool)

(assert (=> d!86025 (= lt!122240 (forall!1016 (list!1648 lt!120873) lambda!9933))))

(declare-fun e!180023 () Bool)

(assert (=> d!86025 (= lt!122240 e!180023)))

(declare-fun res!132056 () Bool)

(assert (=> d!86025 (=> res!132056 e!180023)))

(assert (=> d!86025 (= res!132056 (not ((_ is Cons!3945) (list!1648 lt!120873))))))

(assert (=> d!86025 (not (isEmpty!2609 rules!1920))))

(assert (=> d!86025 (= (rulesProduceEachTokenIndividuallyList!249 thiss!17480 rules!1920 (list!1648 lt!120873)) lt!122240)))

(declare-fun b!289210 () Bool)

(declare-fun e!180024 () Bool)

(assert (=> b!289210 (= e!180023 e!180024)))

(declare-fun res!132057 () Bool)

(assert (=> b!289210 (=> (not res!132057) (not e!180024))))

(assert (=> b!289210 (= res!132057 (rulesProduceIndividualToken!390 thiss!17480 rules!1920 (h!9342 (list!1648 lt!120873))))))

(declare-fun b!289211 () Bool)

(assert (=> b!289211 (= e!180024 (rulesProduceEachTokenIndividuallyList!249 thiss!17480 rules!1920 (t!40183 (list!1648 lt!120873))))))

(assert (= (and d!86025 (not res!132056)) b!289210))

(assert (= (and b!289210 res!132057) b!289211))

(assert (=> d!86025 m!371825))

(declare-fun m!376213 () Bool)

(assert (=> d!86025 m!376213))

(assert (=> d!86025 m!371723))

(declare-fun m!376217 () Bool)

(assert (=> b!289210 m!376217))

(declare-fun m!376221 () Bool)

(assert (=> b!289211 m!376221))

(assert (=> b!287300 d!86025))

(assert (=> b!287300 d!85551))

(declare-fun d!86027 () Bool)

(declare-fun lt!122241 () Int)

(assert (=> d!86027 (>= lt!122241 0)))

(declare-fun e!180028 () Int)

(assert (=> d!86027 (= lt!122241 e!180028)))

(declare-fun c!54813 () Bool)

(assert (=> d!86027 (= c!54813 ((_ is Nil!3943) (originalCharacters!798 separatorToken!170)))))

(assert (=> d!86027 (= (size!3163 (originalCharacters!798 separatorToken!170)) lt!122241)))

(declare-fun b!289215 () Bool)

(assert (=> b!289215 (= e!180028 0)))

(declare-fun b!289216 () Bool)

(assert (=> b!289216 (= e!180028 (+ 1 (size!3163 (t!40181 (originalCharacters!798 separatorToken!170)))))))

(assert (= (and d!86027 c!54813) b!289215))

(assert (= (and d!86027 (not c!54813)) b!289216))

(declare-fun m!376239 () Bool)

(assert (=> b!289216 m!376239))

(assert (=> b!287464 d!86027))

(declare-fun d!86029 () Bool)

(assert (=> d!86029 (= (inv!16 (value!25833 (h!9342 tokens!465))) (= (charsToInt!0 (text!5886 (value!25833 (h!9342 tokens!465)))) (value!25824 (value!25833 (h!9342 tokens!465)))))))

(declare-fun bs!32803 () Bool)

(assert (= bs!32803 d!86029))

(declare-fun m!376245 () Bool)

(assert (=> bs!32803 m!376245))

(assert (=> b!287458 d!86029))

(declare-fun d!86031 () Bool)

(declare-fun lt!122242 () Token!1254)

(assert (=> d!86031 (= lt!122242 (apply!843 (list!1648 (_1!2459 lt!120905)) 0))))

(assert (=> d!86031 (= lt!122242 (apply!845 (c!54356 (_1!2459 lt!120905)) 0))))

(declare-fun e!180029 () Bool)

(assert (=> d!86031 e!180029))

(declare-fun res!132058 () Bool)

(assert (=> d!86031 (=> (not res!132058) (not e!180029))))

(assert (=> d!86031 (= res!132058 (<= 0 0))))

(assert (=> d!86031 (= (apply!840 (_1!2459 lt!120905) 0) lt!122242)))

(declare-fun b!289217 () Bool)

(assert (=> b!289217 (= e!180029 (< 0 (size!3161 (_1!2459 lt!120905))))))

(assert (= (and d!86031 res!132058) b!289217))

(assert (=> d!86031 m!373997))

(assert (=> d!86031 m!373997))

(declare-fun m!376253 () Bool)

(assert (=> d!86031 m!376253))

(declare-fun m!376255 () Bool)

(assert (=> d!86031 m!376255))

(assert (=> b!289217 m!371875))

(assert (=> b!287337 d!86031))

(declare-fun d!86035 () Bool)

(assert (=> d!86035 (= (list!1645 lt!121153) (list!1649 (c!54354 lt!121153)))))

(declare-fun bs!32804 () Bool)

(assert (= bs!32804 d!86035))

(declare-fun m!376257 () Bool)

(assert (=> bs!32804 m!376257))

(assert (=> d!85159 d!86035))

(declare-fun d!86037 () Bool)

(declare-fun c!54815 () Bool)

(assert (=> d!86037 (= c!54815 ((_ is Cons!3945) (list!1648 lt!120863)))))

(declare-fun e!180032 () List!3953)

(assert (=> d!86037 (= (printList!315 thiss!17480 (list!1648 lt!120863)) e!180032)))

(declare-fun b!289221 () Bool)

(assert (=> b!289221 (= e!180032 (++!1050 (list!1645 (charsOf!398 (h!9342 (list!1648 lt!120863)))) (printList!315 thiss!17480 (t!40183 (list!1648 lt!120863)))))))

(declare-fun b!289222 () Bool)

(assert (=> b!289222 (= e!180032 Nil!3943)))

(assert (= (and d!86037 c!54815) b!289221))

(assert (= (and d!86037 (not c!54815)) b!289222))

(declare-fun m!376263 () Bool)

(assert (=> b!289221 m!376263))

(assert (=> b!289221 m!376263))

(declare-fun m!376265 () Bool)

(assert (=> b!289221 m!376265))

(declare-fun m!376267 () Bool)

(assert (=> b!289221 m!376267))

(assert (=> b!289221 m!376265))

(assert (=> b!289221 m!376267))

(declare-fun m!376269 () Bool)

(assert (=> b!289221 m!376269))

(assert (=> d!85159 d!86037))

(assert (=> d!85159 d!85973))

(assert (=> d!85159 d!85157))

(declare-fun d!86041 () Bool)

(assert (=> d!86041 (= (list!1645 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465)))) (list!1649 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465))))))))

(declare-fun bs!32805 () Bool)

(assert (= bs!32805 d!86041))

(declare-fun m!376271 () Bool)

(assert (=> bs!32805 m!376271))

(assert (=> b!287451 d!86041))

(declare-fun d!86043 () Bool)

(assert (=> d!86043 (= (inv!4871 (tag!971 (h!9341 (t!40182 rules!1920)))) (= (mod (str.len (value!25832 (tag!971 (h!9341 (t!40182 rules!1920))))) 2) 0))))

(assert (=> b!287921 d!86043))

(declare-fun d!86045 () Bool)

(declare-fun res!132060 () Bool)

(declare-fun e!180033 () Bool)

(assert (=> d!86045 (=> (not res!132060) (not e!180033))))

(assert (=> d!86045 (= res!132060 (semiInverseModEq!279 (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toValue!1502 (transformation!755 (h!9341 (t!40182 rules!1920))))))))

(assert (=> d!86045 (= (inv!4875 (transformation!755 (h!9341 (t!40182 rules!1920)))) e!180033)))

(declare-fun b!289223 () Bool)

(assert (=> b!289223 (= e!180033 (equivClasses!262 (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toValue!1502 (transformation!755 (h!9341 (t!40182 rules!1920))))))))

(assert (= (and d!86045 res!132060) b!289223))

(declare-fun m!376273 () Bool)

(assert (=> d!86045 m!376273))

(declare-fun m!376275 () Bool)

(assert (=> b!289223 m!376275))

(assert (=> b!287921 d!86045))

(declare-fun call!16376 () Option!871)

(declare-fun bm!16371 () Bool)

(assert (=> bm!16371 (= call!16376 (maxPrefixOneRuleZipperSequence!129 thiss!17480 (h!9341 (t!40182 rules!1920)) (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(declare-fun d!86047 () Bool)

(declare-fun e!180036 () Bool)

(assert (=> d!86047 e!180036))

(declare-fun res!132066 () Bool)

(assert (=> d!86047 (=> (not res!132066) (not e!180036))))

(declare-fun lt!122247 () Option!871)

(assert (=> d!86047 (= res!132066 (= (isDefined!710 lt!122247) (isDefined!709 (maxPrefixZipper!128 thiss!17480 (t!40182 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465))))))))))

(declare-fun e!180037 () Option!871)

(assert (=> d!86047 (= lt!122247 e!180037)))

(declare-fun c!54816 () Bool)

(assert (=> d!86047 (= c!54816 (and ((_ is Cons!3944) (t!40182 rules!1920)) ((_ is Nil!3944) (t!40182 (t!40182 rules!1920)))))))

(declare-fun lt!122245 () Unit!5300)

(declare-fun lt!122243 () Unit!5300)

(assert (=> d!86047 (= lt!122245 lt!122243)))

(declare-fun lt!122249 () List!3953)

(declare-fun lt!122246 () List!3953)

(assert (=> d!86047 (isPrefix!419 lt!122249 lt!122246)))

(assert (=> d!86047 (= lt!122243 (lemmaIsPrefixRefl!225 lt!122249 lt!122246))))

(assert (=> d!86047 (= lt!122246 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (=> d!86047 (= lt!122249 (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(assert (=> d!86047 (rulesValidInductive!220 thiss!17480 (t!40182 rules!1920))))

(assert (=> d!86047 (= (maxPrefixZipperSequence!320 thiss!17480 (t!40182 rules!1920) (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))) lt!122247)))

(declare-fun b!289224 () Bool)

(declare-fun lt!122244 () Option!871)

(declare-fun lt!122248 () Option!871)

(assert (=> b!289224 (= e!180037 (ite (and ((_ is None!870) lt!122244) ((_ is None!870) lt!122248)) None!870 (ite ((_ is None!870) lt!122248) lt!122244 (ite ((_ is None!870) lt!122244) lt!122248 (ite (>= (size!3157 (_1!2458 (v!14811 lt!122244))) (size!3157 (_1!2458 (v!14811 lt!122248)))) lt!122244 lt!122248)))))))

(assert (=> b!289224 (= lt!122244 call!16376)))

(assert (=> b!289224 (= lt!122248 (maxPrefixZipperSequence!320 thiss!17480 (t!40182 (t!40182 rules!1920)) (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))

(declare-fun b!289225 () Bool)

(assert (=> b!289225 (= e!180037 call!16376)))

(declare-fun e!180038 () Bool)

(declare-fun b!289226 () Bool)

(assert (=> b!289226 (= e!180038 (= (list!1645 (_2!2458 (get!1331 lt!122247))) (_2!2457 (get!1329 (maxPrefix!357 thiss!17480 (t!40182 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))))

(declare-fun b!289227 () Bool)

(declare-fun e!180039 () Bool)

(assert (=> b!289227 (= e!180039 e!180038)))

(declare-fun res!132065 () Bool)

(assert (=> b!289227 (=> (not res!132065) (not e!180038))))

(assert (=> b!289227 (= res!132065 (= (_1!2458 (get!1331 lt!122247)) (_1!2457 (get!1329 (maxPrefix!357 thiss!17480 (t!40182 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))))

(declare-fun b!289228 () Bool)

(assert (=> b!289228 (= e!180036 e!180039)))

(declare-fun res!132063 () Bool)

(assert (=> b!289228 (=> res!132063 e!180039)))

(assert (=> b!289228 (= res!132063 (not (isDefined!710 lt!122247)))))

(declare-fun b!289229 () Bool)

(declare-fun res!132061 () Bool)

(assert (=> b!289229 (=> (not res!132061) (not e!180036))))

(declare-fun e!180034 () Bool)

(assert (=> b!289229 (= res!132061 e!180034)))

(declare-fun res!132062 () Bool)

(assert (=> b!289229 (=> res!132062 e!180034)))

(assert (=> b!289229 (= res!132062 (not (isDefined!710 lt!122247)))))

(declare-fun b!289230 () Bool)

(declare-fun e!180035 () Bool)

(assert (=> b!289230 (= e!180034 e!180035)))

(declare-fun res!132064 () Bool)

(assert (=> b!289230 (=> (not res!132064) (not e!180035))))

(assert (=> b!289230 (= res!132064 (= (_1!2458 (get!1331 lt!122247)) (_1!2457 (get!1329 (maxPrefixZipper!128 thiss!17480 (t!40182 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))))

(declare-fun b!289231 () Bool)

(assert (=> b!289231 (= e!180035 (= (list!1645 (_2!2458 (get!1331 lt!122247))) (_2!2457 (get!1329 (maxPrefixZipper!128 thiss!17480 (t!40182 rules!1920) (list!1645 (seqFromList!875 (originalCharacters!798 (h!9342 tokens!465)))))))))))

(assert (= (and d!86047 c!54816) b!289225))

(assert (= (and d!86047 (not c!54816)) b!289224))

(assert (= (or b!289225 b!289224) bm!16371))

(assert (= (and d!86047 res!132066) b!289229))

(assert (= (and b!289229 (not res!132062)) b!289230))

(assert (= (and b!289230 res!132064) b!289231))

(assert (= (and b!289229 res!132061) b!289228))

(assert (= (and b!289228 (not res!132063)) b!289227))

(assert (= (and b!289227 res!132065) b!289226))

(declare-fun m!376287 () Bool)

(assert (=> b!289228 m!376287))

(assert (=> d!86047 m!374477))

(assert (=> d!86047 m!373421))

(declare-fun m!376289 () Bool)

(assert (=> d!86047 m!376289))

(assert (=> d!86047 m!372683))

(assert (=> d!86047 m!373421))

(declare-fun m!376291 () Bool)

(assert (=> d!86047 m!376291))

(assert (=> d!86047 m!376287))

(assert (=> d!86047 m!371729))

(assert (=> d!86047 m!372683))

(declare-fun m!376293 () Bool)

(assert (=> d!86047 m!376293))

(assert (=> bm!16371 m!371729))

(declare-fun m!376295 () Bool)

(assert (=> bm!16371 m!376295))

(declare-fun m!376297 () Bool)

(assert (=> b!289227 m!376297))

(assert (=> b!289227 m!371729))

(assert (=> b!289227 m!372683))

(assert (=> b!289227 m!372683))

(assert (=> b!289227 m!373181))

(assert (=> b!289227 m!373181))

(declare-fun m!376299 () Bool)

(assert (=> b!289227 m!376299))

(assert (=> b!289224 m!371729))

(declare-fun m!376301 () Bool)

(assert (=> b!289224 m!376301))

(assert (=> b!289226 m!372683))

(assert (=> b!289226 m!373181))

(assert (=> b!289226 m!371729))

(assert (=> b!289226 m!372683))

(assert (=> b!289226 m!373181))

(assert (=> b!289226 m!376299))

(declare-fun m!376303 () Bool)

(assert (=> b!289226 m!376303))

(assert (=> b!289226 m!376297))

(assert (=> b!289229 m!376287))

(assert (=> b!289231 m!372683))

(assert (=> b!289231 m!373421))

(assert (=> b!289231 m!371729))

(assert (=> b!289231 m!372683))

(assert (=> b!289231 m!376303))

(assert (=> b!289231 m!376297))

(assert (=> b!289231 m!373421))

(declare-fun m!376305 () Bool)

(assert (=> b!289231 m!376305))

(assert (=> b!289230 m!376297))

(assert (=> b!289230 m!371729))

(assert (=> b!289230 m!372683))

(assert (=> b!289230 m!372683))

(assert (=> b!289230 m!373421))

(assert (=> b!289230 m!373421))

(assert (=> b!289230 m!376305))

(assert (=> b!287831 d!86047))

(declare-fun e!180044 () List!3953)

(declare-fun b!289236 () Bool)

(assert (=> b!289236 (= e!180044 (ite c!54473 lt!121229 call!16291))))

(declare-fun b!289238 () Bool)

(declare-fun res!132070 () Bool)

(declare-fun e!180043 () Bool)

(assert (=> b!289238 (=> (not res!132070) (not e!180043))))

(declare-fun lt!122250 () List!3953)

(assert (=> b!289238 (= res!132070 (= (size!3163 lt!122250) (+ (size!3163 e!179213) (size!3163 (ite c!54473 lt!121229 call!16291)))))))

(declare-fun b!289237 () Bool)

(assert (=> b!289237 (= e!180044 (Cons!3943 (h!9340 e!179213) (++!1050 (t!40181 e!179213) (ite c!54473 lt!121229 call!16291))))))

(declare-fun d!86055 () Bool)

(assert (=> d!86055 e!180043))

(declare-fun res!132069 () Bool)

(assert (=> d!86055 (=> (not res!132069) (not e!180043))))

(assert (=> d!86055 (= res!132069 (= (content!579 lt!122250) ((_ map or) (content!579 e!179213) (content!579 (ite c!54473 lt!121229 call!16291)))))))

(assert (=> d!86055 (= lt!122250 e!180044)))

(declare-fun c!54818 () Bool)

(assert (=> d!86055 (= c!54818 ((_ is Nil!3943) e!179213))))

(assert (=> d!86055 (= (++!1050 e!179213 (ite c!54473 lt!121229 call!16291)) lt!122250)))

(declare-fun b!289239 () Bool)

(assert (=> b!289239 (= e!180043 (or (not (= (ite c!54473 lt!121229 call!16291) Nil!3943)) (= lt!122250 e!179213)))))

(assert (= (and d!86055 c!54818) b!289236))

(assert (= (and d!86055 (not c!54818)) b!289237))

(assert (= (and d!86055 res!132069) b!289238))

(assert (= (and b!289238 res!132070) b!289239))

(declare-fun m!376307 () Bool)

(assert (=> b!289238 m!376307))

(declare-fun m!376309 () Bool)

(assert (=> b!289238 m!376309))

(declare-fun m!376311 () Bool)

(assert (=> b!289238 m!376311))

(declare-fun m!376313 () Bool)

(assert (=> b!289237 m!376313))

(declare-fun m!376315 () Bool)

(assert (=> d!86055 m!376315))

(declare-fun m!376317 () Bool)

(assert (=> d!86055 m!376317))

(declare-fun m!376319 () Bool)

(assert (=> d!86055 m!376319))

(assert (=> bm!16286 d!86055))

(declare-fun b!289240 () Bool)

(declare-fun e!180046 () Option!870)

(declare-fun lt!122253 () Option!870)

(declare-fun lt!122255 () Option!870)

(assert (=> b!289240 (= e!180046 (ite (and ((_ is None!869) lt!122253) ((_ is None!869) lt!122255)) None!869 (ite ((_ is None!869) lt!122255) lt!122253 (ite ((_ is None!869) lt!122253) lt!122255 (ite (>= (size!3157 (_1!2457 (v!14810 lt!122253))) (size!3157 (_1!2457 (v!14810 lt!122255)))) lt!122253 lt!122255)))))))

(declare-fun call!16377 () Option!870)

(assert (=> b!289240 (= lt!122253 call!16377)))

(assert (=> b!289240 (= lt!122255 (maxPrefix!357 thiss!17480 (t!40182 rules!1920) (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961)))))

(declare-fun b!289241 () Bool)

(assert (=> b!289241 (= e!180046 call!16377)))

(declare-fun b!289243 () Bool)

(declare-fun res!132074 () Bool)

(declare-fun e!180045 () Bool)

(assert (=> b!289243 (=> (not res!132074) (not e!180045))))

(declare-fun lt!122254 () Option!870)

(assert (=> b!289243 (= res!132074 (= (value!25833 (_1!2457 (get!1329 lt!122254))) (apply!844 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!122254)))) (seqFromList!875 (originalCharacters!798 (_1!2457 (get!1329 lt!122254)))))))))

(declare-fun b!289244 () Bool)

(declare-fun res!132075 () Bool)

(assert (=> b!289244 (=> (not res!132075) (not e!180045))))

(assert (=> b!289244 (= res!132075 (< (size!3163 (_2!2457 (get!1329 lt!122254))) (size!3163 (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961))))))

(declare-fun b!289245 () Bool)

(declare-fun res!132071 () Bool)

(assert (=> b!289245 (=> (not res!132071) (not e!180045))))

(assert (=> b!289245 (= res!132071 (= (++!1050 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!122254)))) (_2!2457 (get!1329 lt!122254))) (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961)))))

(declare-fun b!289246 () Bool)

(declare-fun e!180047 () Bool)

(assert (=> b!289246 (= e!180047 e!180045)))

(declare-fun res!132073 () Bool)

(assert (=> b!289246 (=> (not res!132073) (not e!180045))))

(assert (=> b!289246 (= res!132073 (isDefined!709 lt!122254))))

(declare-fun b!289247 () Bool)

(declare-fun res!132072 () Bool)

(assert (=> b!289247 (=> (not res!132072) (not e!180045))))

(assert (=> b!289247 (= res!132072 (= (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!122254)))) (originalCharacters!798 (_1!2457 (get!1329 lt!122254)))))))

(declare-fun d!86057 () Bool)

(assert (=> d!86057 e!180047))

(declare-fun res!132077 () Bool)

(assert (=> d!86057 (=> res!132077 e!180047)))

(assert (=> d!86057 (= res!132077 (isEmpty!2620 lt!122254))))

(assert (=> d!86057 (= lt!122254 e!180046)))

(declare-fun c!54819 () Bool)

(assert (=> d!86057 (= c!54819 (and ((_ is Cons!3944) rules!1920) ((_ is Nil!3944) (t!40182 rules!1920))))))

(declare-fun lt!122251 () Unit!5300)

(declare-fun lt!122252 () Unit!5300)

(assert (=> d!86057 (= lt!122251 lt!122252)))

(assert (=> d!86057 (isPrefix!419 (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961) (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961))))

(assert (=> d!86057 (= lt!122252 (lemmaIsPrefixRefl!225 (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961) (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961)))))

(assert (=> d!86057 (rulesValidInductive!220 thiss!17480 rules!1920)))

(assert (=> d!86057 (= (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961)) lt!122254)))

(declare-fun b!289242 () Bool)

(assert (=> b!289242 (= e!180045 (contains!769 rules!1920 (rule!1354 (_1!2457 (get!1329 lt!122254)))))))

(declare-fun bm!16372 () Bool)

(assert (=> bm!16372 (= call!16377 (maxPrefixOneRule!159 thiss!17480 (h!9341 rules!1920) (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961)))))

(declare-fun b!289248 () Bool)

(declare-fun res!132076 () Bool)

(assert (=> b!289248 (=> (not res!132076) (not e!180045))))

(assert (=> b!289248 (= res!132076 (matchR!297 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!122254)))) (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!122254))))))))

(assert (= (and d!86057 c!54819) b!289241))

(assert (= (and d!86057 (not c!54819)) b!289240))

(assert (= (or b!289241 b!289240) bm!16372))

(assert (= (and d!86057 (not res!132077)) b!289246))

(assert (= (and b!289246 res!132073) b!289247))

(assert (= (and b!289247 res!132072) b!289244))

(assert (= (and b!289244 res!132075) b!289245))

(assert (= (and b!289245 res!132071) b!289243))

(assert (= (and b!289243 res!132074) b!289248))

(assert (= (and b!289248 res!132076) b!289242))

(declare-fun m!376321 () Bool)

(assert (=> b!289247 m!376321))

(declare-fun m!376323 () Bool)

(assert (=> b!289247 m!376323))

(assert (=> b!289247 m!376323))

(declare-fun m!376325 () Bool)

(assert (=> b!289247 m!376325))

(assert (=> bm!16372 m!372147))

(declare-fun m!376327 () Bool)

(assert (=> bm!16372 m!376327))

(assert (=> b!289242 m!376321))

(declare-fun m!376329 () Bool)

(assert (=> b!289242 m!376329))

(declare-fun m!376331 () Bool)

(assert (=> b!289246 m!376331))

(assert (=> b!289248 m!376321))

(assert (=> b!289248 m!376323))

(assert (=> b!289248 m!376323))

(assert (=> b!289248 m!376325))

(assert (=> b!289248 m!376325))

(declare-fun m!376333 () Bool)

(assert (=> b!289248 m!376333))

(assert (=> b!289245 m!376321))

(assert (=> b!289245 m!376323))

(assert (=> b!289245 m!376323))

(assert (=> b!289245 m!376325))

(assert (=> b!289245 m!376325))

(declare-fun m!376335 () Bool)

(assert (=> b!289245 m!376335))

(declare-fun m!376337 () Bool)

(assert (=> d!86057 m!376337))

(assert (=> d!86057 m!372147))

(assert (=> d!86057 m!372147))

(declare-fun m!376339 () Bool)

(assert (=> d!86057 m!376339))

(assert (=> d!86057 m!372147))

(assert (=> d!86057 m!372147))

(declare-fun m!376341 () Bool)

(assert (=> d!86057 m!376341))

(assert (=> d!86057 m!372499))

(assert (=> b!289244 m!376321))

(declare-fun m!376343 () Bool)

(assert (=> b!289244 m!376343))

(assert (=> b!289244 m!372147))

(declare-fun m!376345 () Bool)

(assert (=> b!289244 m!376345))

(assert (=> b!289243 m!376321))

(declare-fun m!376347 () Bool)

(assert (=> b!289243 m!376347))

(assert (=> b!289243 m!376347))

(declare-fun m!376349 () Bool)

(assert (=> b!289243 m!376349))

(assert (=> b!289240 m!372147))

(declare-fun m!376351 () Bool)

(assert (=> b!289240 m!376351))

(assert (=> b!287521 d!86057))

(declare-fun bs!32809 () Bool)

(declare-fun b!289253 () Bool)

(assert (= bs!32809 (and b!289253 b!287862)))

(declare-fun lambda!9935 () Int)

(assert (=> bs!32809 (= lambda!9935 lambda!9878)))

(declare-fun bs!32810 () Bool)

(assert (= bs!32810 (and b!289253 b!288074)))

(assert (=> bs!32810 (= lambda!9935 lambda!9880)))

(declare-fun bs!32811 () Bool)

(assert (= bs!32811 (and b!289253 d!85435)))

(assert (=> bs!32811 (not (= lambda!9935 lambda!9882))))

(declare-fun bs!32812 () Bool)

(assert (= bs!32812 (and b!289253 b!287601)))

(assert (=> bs!32812 (= lambda!9935 lambda!9872)))

(declare-fun bs!32813 () Bool)

(assert (= bs!32813 (and b!289253 b!287521)))

(assert (=> bs!32813 (= lambda!9935 lambda!9860)))

(declare-fun bs!32814 () Bool)

(assert (= bs!32814 (and b!289253 b!288224)))

(assert (=> bs!32814 (= lambda!9935 lambda!9883)))

(declare-fun bs!32815 () Bool)

(assert (= bs!32815 (and b!289253 b!287250)))

(assert (=> bs!32815 (= lambda!9935 lambda!9844)))

(declare-fun bs!32816 () Bool)

(assert (= bs!32816 (and b!289253 d!85003)))

(assert (=> bs!32816 (= lambda!9935 lambda!9854)))

(declare-fun bs!32817 () Bool)

(assert (= bs!32817 (and b!289253 d!85577)))

(assert (=> bs!32817 (not (= lambda!9935 lambda!9890))))

(declare-fun bs!32818 () Bool)

(assert (= bs!32818 (and b!289253 d!86025)))

(assert (=> bs!32818 (= lambda!9935 lambda!9933)))

(declare-fun bs!32819 () Bool)

(assert (= bs!32819 (and b!289253 b!287848)))

(assert (=> bs!32819 (= lambda!9935 lambda!9877)))

(declare-fun bs!32820 () Bool)

(assert (= bs!32820 (and b!289253 b!287244)))

(assert (=> bs!32820 (not (= lambda!9935 lambda!9843))))

(declare-fun bs!32821 () Bool)

(assert (= bs!32821 (and b!289253 b!289176)))

(assert (=> bs!32821 (= lambda!9935 lambda!9930)))

(declare-fun bs!32822 () Bool)

(assert (= bs!32822 (and b!289253 b!288448)))

(assert (=> bs!32822 (= lambda!9935 lambda!9891)))

(declare-fun bs!32823 () Bool)

(assert (= bs!32823 (and b!289253 d!85205)))

(assert (=> bs!32823 (not (= lambda!9935 lambda!9876))))

(declare-fun bs!32824 () Bool)

(assert (= bs!32824 (and b!289253 d!85101)))

(assert (=> bs!32824 (not (= lambda!9935 lambda!9871))))

(declare-fun b!289265 () Bool)

(declare-fun e!180057 () Bool)

(assert (=> b!289265 (= e!180057 true)))

(declare-fun b!289264 () Bool)

(declare-fun e!180056 () Bool)

(assert (=> b!289264 (= e!180056 e!180057)))

(declare-fun b!289263 () Bool)

(declare-fun e!180055 () Bool)

(assert (=> b!289263 (= e!180055 e!180056)))

(assert (=> b!289253 e!180055))

(assert (= b!289264 b!289265))

(assert (= b!289263 b!289264))

(assert (= (and b!289253 ((_ is Cons!3944) rules!1920)) b!289263))

(assert (=> b!289265 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9935))))

(assert (=> b!289265 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2090 order!3115 lambda!9935))))

(assert (=> b!289253 true))

(declare-fun b!289249 () Bool)

(declare-fun c!54823 () Bool)

(declare-fun lt!122258 () Option!870)

(assert (=> b!289249 (= c!54823 (and ((_ is Some!869) lt!122258) (not (= (_1!2457 (v!14810 lt!122258)) (h!9342 (t!40183 (t!40183 tokens!465)))))))))

(declare-fun e!180049 () List!3953)

(declare-fun e!180048 () List!3953)

(assert (=> b!289249 (= e!180049 e!180048)))

(declare-fun b!289250 () Bool)

(declare-fun e!180051 () List!3953)

(assert (=> b!289250 (= e!180051 Nil!3943)))

(declare-fun b!289251 () Bool)

(declare-fun e!180052 () BalanceConc!2672)

(declare-fun call!16378 () BalanceConc!2672)

(assert (=> b!289251 (= e!180052 call!16378)))

(declare-fun bm!16373 () Bool)

(declare-fun call!16379 () BalanceConc!2672)

(assert (=> bm!16373 (= call!16378 call!16379)))

(declare-fun call!16380 () List!3953)

(declare-fun bm!16374 () Bool)

(declare-fun c!54821 () Bool)

(assert (=> bm!16374 (= call!16380 (list!1645 (ite c!54821 call!16379 e!180052)))))

(declare-fun b!289252 () Bool)

(declare-fun call!16382 () List!3953)

(declare-fun lt!122260 () List!3953)

(assert (=> b!289252 (= e!180048 (++!1050 call!16382 lt!122260))))

(assert (=> b!289253 (= e!180051 e!180049)))

(declare-fun lt!122261 () Unit!5300)

(assert (=> b!289253 (= lt!122261 (forallContained!308 (t!40183 (t!40183 tokens!465)) lambda!9935 (h!9342 (t!40183 (t!40183 tokens!465)))))))

(assert (=> b!289253 (= lt!122260 (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (t!40183 (t!40183 (t!40183 tokens!465))) separatorToken!170))))

(assert (=> b!289253 (= lt!122258 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 (t!40183 tokens!465))))) lt!122260)))))

(assert (=> b!289253 (= c!54821 (and ((_ is Some!869) lt!122258) (= (_1!2457 (v!14810 lt!122258)) (h!9342 (t!40183 (t!40183 tokens!465))))))))

(declare-fun b!289254 () Bool)

(declare-fun e!180050 () List!3953)

(assert (=> b!289254 (= e!180050 call!16380)))

(declare-fun bm!16375 () Bool)

(declare-fun call!16381 () List!3953)

(assert (=> bm!16375 (= call!16381 call!16380)))

(declare-fun c!54820 () Bool)

(assert (=> bm!16375 (= c!54820 c!54823)))

(declare-fun b!289255 () Bool)

(assert (=> b!289255 (= e!180048 Nil!3943)))

(assert (=> b!289255 (= (print!366 thiss!17480 (singletonSeq!301 (h!9342 (t!40183 (t!40183 tokens!465))))) (printTailRec!327 thiss!17480 (singletonSeq!301 (h!9342 (t!40183 (t!40183 tokens!465)))) 0 (BalanceConc!2673 Empty!1332)))))

(declare-fun lt!122259 () Unit!5300)

(declare-fun Unit!5350 () Unit!5300)

(assert (=> b!289255 (= lt!122259 Unit!5350)))

(declare-fun lt!122257 () Unit!5300)

(assert (=> b!289255 (= lt!122257 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 call!16381 lt!122260))))

(assert (=> b!289255 false))

(declare-fun lt!122256 () Unit!5300)

(declare-fun Unit!5351 () Unit!5300)

(assert (=> b!289255 (= lt!122256 Unit!5351)))

(declare-fun b!289256 () Bool)

(assert (=> b!289256 (= e!180049 call!16382)))

(declare-fun d!86059 () Bool)

(declare-fun c!54822 () Bool)

(assert (=> d!86059 (= c!54822 ((_ is Cons!3945) (t!40183 (t!40183 tokens!465))))))

(assert (=> d!86059 (= (printWithSeparatorTokenWhenNeededList!322 thiss!17480 rules!1920 (t!40183 (t!40183 tokens!465)) separatorToken!170) e!180051)))

(declare-fun bm!16376 () Bool)

(declare-fun c!54824 () Bool)

(assert (=> bm!16376 (= c!54824 c!54821)))

(assert (=> bm!16376 (= call!16382 (++!1050 e!180050 (ite c!54821 lt!122260 call!16381)))))

(declare-fun bm!16377 () Bool)

(assert (=> bm!16377 (= call!16379 (charsOf!398 (h!9342 (t!40183 (t!40183 tokens!465)))))))

(declare-fun b!289257 () Bool)

(assert (=> b!289257 (= e!180050 (list!1645 call!16378))))

(declare-fun b!289258 () Bool)

(assert (=> b!289258 (= e!180052 (charsOf!398 separatorToken!170))))

(assert (= (and d!86059 c!54822) b!289253))

(assert (= (and d!86059 (not c!54822)) b!289250))

(assert (= (and b!289253 c!54821) b!289256))

(assert (= (and b!289253 (not c!54821)) b!289249))

(assert (= (and b!289249 c!54823) b!289252))

(assert (= (and b!289249 (not c!54823)) b!289255))

(assert (= (or b!289252 b!289255) bm!16373))

(assert (= (or b!289252 b!289255) bm!16375))

(assert (= (and bm!16375 c!54820) b!289258))

(assert (= (and bm!16375 (not c!54820)) b!289251))

(assert (= (or b!289256 bm!16373) bm!16377))

(assert (= (or b!289256 bm!16375) bm!16374))

(assert (= (or b!289256 b!289252) bm!16376))

(assert (= (and bm!16376 c!54824) b!289254))

(assert (= (and bm!16376 (not c!54824)) b!289257))

(declare-fun m!376353 () Bool)

(assert (=> b!289255 m!376353))

(assert (=> b!289255 m!376353))

(declare-fun m!376355 () Bool)

(assert (=> b!289255 m!376355))

(assert (=> b!289255 m!376353))

(declare-fun m!376357 () Bool)

(assert (=> b!289255 m!376357))

(declare-fun m!376359 () Bool)

(assert (=> b!289255 m!376359))

(assert (=> b!289258 m!371743))

(declare-fun m!376361 () Bool)

(assert (=> bm!16376 m!376361))

(declare-fun m!376363 () Bool)

(assert (=> b!289253 m!376363))

(declare-fun m!376365 () Bool)

(assert (=> b!289253 m!376365))

(assert (=> b!289253 m!376363))

(assert (=> b!289253 m!376365))

(declare-fun m!376367 () Bool)

(assert (=> b!289253 m!376367))

(assert (=> b!289253 m!376367))

(declare-fun m!376369 () Bool)

(assert (=> b!289253 m!376369))

(declare-fun m!376371 () Bool)

(assert (=> b!289253 m!376371))

(declare-fun m!376373 () Bool)

(assert (=> b!289253 m!376373))

(declare-fun m!376375 () Bool)

(assert (=> b!289257 m!376375))

(assert (=> bm!16377 m!376363))

(declare-fun m!376377 () Bool)

(assert (=> b!289252 m!376377))

(declare-fun m!376379 () Bool)

(assert (=> bm!16374 m!376379))

(assert (=> b!287521 d!86059))

(declare-fun b!289290 () Bool)

(declare-fun e!180071 () List!3953)

(assert (=> b!289290 (= e!180071 lt!120961)))

(declare-fun b!289292 () Bool)

(declare-fun res!132095 () Bool)

(declare-fun e!180070 () Bool)

(assert (=> b!289292 (=> (not res!132095) (not e!180070))))

(declare-fun lt!122264 () List!3953)

(assert (=> b!289292 (= res!132095 (= (size!3163 lt!122264) (+ (size!3163 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465))))) (size!3163 lt!120961))))))

(declare-fun b!289291 () Bool)

(assert (=> b!289291 (= e!180071 (Cons!3943 (h!9340 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465))))) (++!1050 (t!40181 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465))))) lt!120961)))))

(declare-fun d!86061 () Bool)

(assert (=> d!86061 e!180070))

(declare-fun res!132094 () Bool)

(assert (=> d!86061 (=> (not res!132094) (not e!180070))))

(assert (=> d!86061 (= res!132094 (= (content!579 lt!122264) ((_ map or) (content!579 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465))))) (content!579 lt!120961))))))

(assert (=> d!86061 (= lt!122264 e!180071)))

(declare-fun c!54831 () Bool)

(assert (=> d!86061 (= c!54831 ((_ is Nil!3943) (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465))))))))

(assert (=> d!86061 (= (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) lt!120961) lt!122264)))

(declare-fun b!289293 () Bool)

(assert (=> b!289293 (= e!180070 (or (not (= lt!120961 Nil!3943)) (= lt!122264 (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))))))))

(assert (= (and d!86061 c!54831) b!289290))

(assert (= (and d!86061 (not c!54831)) b!289291))

(assert (= (and d!86061 res!132094) b!289292))

(assert (= (and b!289292 res!132095) b!289293))

(declare-fun m!376381 () Bool)

(assert (=> b!289292 m!376381))

(assert (=> b!289292 m!372145))

(declare-fun m!376383 () Bool)

(assert (=> b!289292 m!376383))

(assert (=> b!289292 m!375951))

(declare-fun m!376385 () Bool)

(assert (=> b!289291 m!376385))

(declare-fun m!376387 () Bool)

(assert (=> d!86061 m!376387))

(assert (=> d!86061 m!372145))

(declare-fun m!376389 () Bool)

(assert (=> d!86061 m!376389))

(assert (=> d!86061 m!375959))

(assert (=> b!287521 d!86061))

(assert (=> b!287521 d!85307))

(declare-fun d!86063 () Bool)

(assert (=> d!86063 (dynLambda!2094 lambda!9860 (h!9342 (t!40183 tokens!465)))))

(declare-fun lt!122265 () Unit!5300)

(assert (=> d!86063 (= lt!122265 (choose!2594 (t!40183 tokens!465) lambda!9860 (h!9342 (t!40183 tokens!465))))))

(declare-fun e!180072 () Bool)

(assert (=> d!86063 e!180072))

(declare-fun res!132096 () Bool)

(assert (=> d!86063 (=> (not res!132096) (not e!180072))))

(assert (=> d!86063 (= res!132096 (forall!1016 (t!40183 tokens!465) lambda!9860))))

(assert (=> d!86063 (= (forallContained!308 (t!40183 tokens!465) lambda!9860 (h!9342 (t!40183 tokens!465))) lt!122265)))

(declare-fun b!289294 () Bool)

(assert (=> b!289294 (= e!180072 (contains!770 (t!40183 tokens!465) (h!9342 (t!40183 tokens!465))))))

(assert (= (and d!86063 res!132096) b!289294))

(declare-fun b_lambda!9621 () Bool)

(assert (=> (not b_lambda!9621) (not d!86063)))

(declare-fun m!376391 () Bool)

(assert (=> d!86063 m!376391))

(declare-fun m!376393 () Bool)

(assert (=> d!86063 m!376393))

(declare-fun m!376395 () Bool)

(assert (=> d!86063 m!376395))

(declare-fun m!376397 () Bool)

(assert (=> b!289294 m!376397))

(assert (=> b!287521 d!86063))

(declare-fun d!86065 () Bool)

(assert (=> d!86065 (= (list!1645 (charsOf!398 (h!9342 (t!40183 tokens!465)))) (list!1649 (c!54354 (charsOf!398 (h!9342 (t!40183 tokens!465))))))))

(declare-fun bs!32825 () Bool)

(assert (= bs!32825 d!86065))

(declare-fun m!376399 () Bool)

(assert (=> bs!32825 m!376399))

(assert (=> b!287521 d!86065))

(declare-fun d!86067 () Bool)

(assert (=> d!86067 (= (list!1648 (_1!2459 lt!120920)) (list!1650 (c!54356 (_1!2459 lt!120920))))))

(declare-fun bs!32826 () Bool)

(assert (= bs!32826 d!86067))

(declare-fun m!376401 () Bool)

(assert (=> bs!32826 m!376401))

(assert (=> b!287413 d!86067))

(assert (=> b!287413 d!85993))

(assert (=> b!287413 d!85995))

(declare-fun d!86069 () Bool)

(assert (=> d!86069 (= (inv!15 (value!25833 separatorToken!170)) (= (charsToBigInt!0 (text!5888 (value!25833 separatorToken!170)) 0) (value!25828 (value!25833 separatorToken!170))))))

(declare-fun bs!32827 () Bool)

(assert (= bs!32827 d!86069))

(declare-fun m!376403 () Bool)

(assert (=> bs!32827 m!376403))

(assert (=> b!287286 d!86069))

(declare-fun d!86071 () Bool)

(declare-fun lt!122266 () Int)

(assert (=> d!86071 (>= lt!122266 0)))

(declare-fun e!180073 () Int)

(assert (=> d!86071 (= lt!122266 e!180073)))

(declare-fun c!54832 () Bool)

(assert (=> d!86071 (= c!54832 ((_ is Nil!3943) (_2!2457 (get!1329 lt!121107))))))

(assert (=> d!86071 (= (size!3163 (_2!2457 (get!1329 lt!121107))) lt!122266)))

(declare-fun b!289295 () Bool)

(assert (=> b!289295 (= e!180073 0)))

(declare-fun b!289296 () Bool)

(assert (=> b!289296 (= e!180073 (+ 1 (size!3163 (t!40181 (_2!2457 (get!1329 lt!121107))))))))

(assert (= (and d!86071 c!54832) b!289295))

(assert (= (and d!86071 (not c!54832)) b!289296))

(declare-fun m!376405 () Bool)

(assert (=> b!289296 m!376405))

(assert (=> b!287689 d!86071))

(assert (=> b!287689 d!85293))

(assert (=> b!287689 d!85511))

(declare-fun d!86073 () Bool)

(declare-fun lt!122267 () Token!1254)

(assert (=> d!86073 (= lt!122267 (apply!843 (list!1648 (_1!2459 lt!120924)) 0))))

(assert (=> d!86073 (= lt!122267 (apply!845 (c!54356 (_1!2459 lt!120924)) 0))))

(declare-fun e!180074 () Bool)

(assert (=> d!86073 e!180074))

(declare-fun res!132097 () Bool)

(assert (=> d!86073 (=> (not res!132097) (not e!180074))))

(assert (=> d!86073 (= res!132097 (<= 0 0))))

(assert (=> d!86073 (= (apply!840 (_1!2459 lt!120924) 0) lt!122267)))

(declare-fun b!289297 () Bool)

(assert (=> b!289297 (= e!180074 (< 0 (size!3161 (_1!2459 lt!120924))))))

(assert (= (and d!86073 res!132097) b!289297))

(declare-fun m!376407 () Bool)

(assert (=> d!86073 m!376407))

(assert (=> d!86073 m!376407))

(declare-fun m!376409 () Bool)

(assert (=> d!86073 m!376409))

(declare-fun m!376411 () Bool)

(assert (=> d!86073 m!376411))

(assert (=> b!289297 m!372043))

(assert (=> b!287444 d!86073))

(assert (=> b!287836 d!85655))

(declare-fun lt!122269 () BalanceConc!2672)

(declare-fun d!86075 () Bool)

(assert (=> d!86075 (= (list!1645 lt!122269) (originalCharacters!798 (ite c!54434 separatorToken!170 call!16263)))))

(assert (=> d!86075 (= lt!122269 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54434 separatorToken!170 call!16263)))) (value!25833 (ite c!54434 separatorToken!170 call!16263))))))

(assert (=> d!86075 (= (charsOf!398 (ite c!54434 separatorToken!170 call!16263)) lt!122269)))

(declare-fun b_lambda!9623 () Bool)

(assert (=> (not b_lambda!9623) (not d!86075)))

(declare-fun tb!16831 () Bool)

(declare-fun t!40431 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54434 separatorToken!170 call!16263))))) t!40431) tb!16831))

(declare-fun tp!105488 () Bool)

(declare-fun e!180082 () Bool)

(declare-fun b!289312 () Bool)

(assert (=> b!289312 (= e!180082 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54434 separatorToken!170 call!16263)))) (value!25833 (ite c!54434 separatorToken!170 call!16263))))) tp!105488))))

(declare-fun result!20672 () Bool)

(assert (=> tb!16831 (= result!20672 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54434 separatorToken!170 call!16263)))) (value!25833 (ite c!54434 separatorToken!170 call!16263)))) e!180082))))

(assert (= tb!16831 b!289312))

(declare-fun m!376413 () Bool)

(assert (=> b!289312 m!376413))

(declare-fun m!376417 () Bool)

(assert (=> tb!16831 m!376417))

(assert (=> d!86075 t!40431))

(declare-fun b_and!23441 () Bool)

(assert (= b_and!23439 (and (=> t!40431 result!20672) b_and!23441)))

(declare-fun t!40433 () Bool)

(declare-fun tb!16833 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54434 separatorToken!170 call!16263))))) t!40433) tb!16833))

(declare-fun result!20674 () Bool)

(assert (= result!20674 result!20672))

(assert (=> d!86075 t!40433))

(declare-fun b_and!23443 () Bool)

(assert (= b_and!23437 (and (=> t!40433 result!20674) b_and!23443)))

(declare-fun tb!16835 () Bool)

(declare-fun t!40435 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54434 separatorToken!170 call!16263))))) t!40435) tb!16835))

(declare-fun result!20676 () Bool)

(assert (= result!20676 result!20672))

(assert (=> d!86075 t!40435))

(declare-fun b_and!23445 () Bool)

(assert (= b_and!23431 (and (=> t!40435 result!20676) b_and!23445)))

(declare-fun t!40437 () Bool)

(declare-fun tb!16837 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54434 separatorToken!170 call!16263))))) t!40437) tb!16837))

(declare-fun result!20678 () Bool)

(assert (= result!20678 result!20672))

(assert (=> d!86075 t!40437))

(declare-fun b_and!23447 () Bool)

(assert (= b_and!23435 (and (=> t!40437 result!20678) b_and!23447)))

(declare-fun t!40439 () Bool)

(declare-fun tb!16839 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54434 separatorToken!170 call!16263))))) t!40439) tb!16839))

(declare-fun result!20680 () Bool)

(assert (= result!20680 result!20672))

(assert (=> d!86075 t!40439))

(declare-fun b_and!23449 () Bool)

(assert (= b_and!23433 (and (=> t!40439 result!20680) b_and!23449)))

(declare-fun m!376429 () Bool)

(assert (=> d!86075 m!376429))

(declare-fun m!376433 () Bool)

(assert (=> d!86075 m!376433))

(assert (=> bm!16255 d!86075))

(declare-fun d!86077 () Bool)

(declare-fun lt!122270 () Int)

(assert (=> d!86077 (>= lt!122270 0)))

(declare-fun e!180083 () Int)

(assert (=> d!86077 (= lt!122270 e!180083)))

(declare-fun c!54836 () Bool)

(assert (=> d!86077 (= c!54836 ((_ is Nil!3943) (originalCharacters!798 (h!9342 tokens!465))))))

(assert (=> d!86077 (= (size!3163 (originalCharacters!798 (h!9342 tokens!465))) lt!122270)))

(declare-fun b!289313 () Bool)

(assert (=> b!289313 (= e!180083 0)))

(declare-fun b!289314 () Bool)

(assert (=> b!289314 (= e!180083 (+ 1 (size!3163 (t!40181 (originalCharacters!798 (h!9342 tokens!465))))))))

(assert (= (and d!86077 c!54836) b!289313))

(assert (= (and d!86077 (not c!54836)) b!289314))

(declare-fun m!376437 () Bool)

(assert (=> b!289314 m!376437))

(assert (=> b!287452 d!86077))

(declare-fun e!180085 () List!3953)

(declare-fun b!289315 () Bool)

(assert (=> b!289315 (= e!180085 (ite c!54406 lt!120961 call!16232))))

(declare-fun b!289317 () Bool)

(declare-fun res!132107 () Bool)

(declare-fun e!180084 () Bool)

(assert (=> b!289317 (=> (not res!132107) (not e!180084))))

(declare-fun lt!122271 () List!3953)

(assert (=> b!289317 (= res!132107 (= (size!3163 lt!122271) (+ (size!3163 e!178984) (size!3163 (ite c!54406 lt!120961 call!16232)))))))

(declare-fun b!289316 () Bool)

(assert (=> b!289316 (= e!180085 (Cons!3943 (h!9340 e!178984) (++!1050 (t!40181 e!178984) (ite c!54406 lt!120961 call!16232))))))

(declare-fun d!86079 () Bool)

(assert (=> d!86079 e!180084))

(declare-fun res!132106 () Bool)

(assert (=> d!86079 (=> (not res!132106) (not e!180084))))

(assert (=> d!86079 (= res!132106 (= (content!579 lt!122271) ((_ map or) (content!579 e!178984) (content!579 (ite c!54406 lt!120961 call!16232)))))))

(assert (=> d!86079 (= lt!122271 e!180085)))

(declare-fun c!54837 () Bool)

(assert (=> d!86079 (= c!54837 ((_ is Nil!3943) e!178984))))

(assert (=> d!86079 (= (++!1050 e!178984 (ite c!54406 lt!120961 call!16232)) lt!122271)))

(declare-fun b!289318 () Bool)

(assert (=> b!289318 (= e!180084 (or (not (= (ite c!54406 lt!120961 call!16232) Nil!3943)) (= lt!122271 e!178984)))))

(assert (= (and d!86079 c!54837) b!289315))

(assert (= (and d!86079 (not c!54837)) b!289316))

(assert (= (and d!86079 res!132106) b!289317))

(assert (= (and b!289317 res!132107) b!289318))

(declare-fun m!376439 () Bool)

(assert (=> b!289317 m!376439))

(declare-fun m!376441 () Bool)

(assert (=> b!289317 m!376441))

(declare-fun m!376443 () Bool)

(assert (=> b!289317 m!376443))

(declare-fun m!376445 () Bool)

(assert (=> b!289316 m!376445))

(declare-fun m!376447 () Bool)

(assert (=> d!86079 m!376447))

(declare-fun m!376449 () Bool)

(assert (=> d!86079 m!376449))

(declare-fun m!376451 () Bool)

(assert (=> d!86079 m!376451))

(assert (=> bm!16227 d!86079))

(declare-fun d!86085 () Bool)

(declare-fun res!132112 () Bool)

(declare-fun e!180087 () Bool)

(assert (=> d!86085 (=> (not res!132112) (not e!180087))))

(assert (=> d!86085 (= res!132112 (not (isEmpty!2618 (originalCharacters!798 (h!9342 (t!40183 tokens!465))))))))

(assert (=> d!86085 (= (inv!4874 (h!9342 (t!40183 tokens!465))) e!180087)))

(declare-fun b!289323 () Bool)

(declare-fun res!132113 () Bool)

(assert (=> b!289323 (=> (not res!132113) (not e!180087))))

(assert (=> b!289323 (= res!132113 (= (originalCharacters!798 (h!9342 (t!40183 tokens!465))) (list!1645 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (value!25833 (h!9342 (t!40183 tokens!465)))))))))

(declare-fun b!289324 () Bool)

(assert (=> b!289324 (= e!180087 (= (size!3157 (h!9342 (t!40183 tokens!465))) (size!3163 (originalCharacters!798 (h!9342 (t!40183 tokens!465))))))))

(assert (= (and d!86085 res!132112) b!289323))

(assert (= (and b!289323 res!132113) b!289324))

(declare-fun b_lambda!9625 () Bool)

(assert (=> (not b_lambda!9625) (not b!289323)))

(assert (=> b!289323 t!40275))

(declare-fun b_and!23451 () Bool)

(assert (= b_and!23449 (and (=> t!40275 result!20524) b_and!23451)))

(assert (=> b!289323 t!40279))

(declare-fun b_and!23453 () Bool)

(assert (= b_and!23445 (and (=> t!40279 result!20528) b_and!23453)))

(assert (=> b!289323 t!40271))

(declare-fun b_and!23455 () Bool)

(assert (= b_and!23441 (and (=> t!40271 result!20520) b_and!23455)))

(assert (=> b!289323 t!40277))

(declare-fun b_and!23457 () Bool)

(assert (= b_and!23443 (and (=> t!40277 result!20526) b_and!23457)))

(assert (=> b!289323 t!40273))

(declare-fun b_and!23459 () Bool)

(assert (= b_and!23447 (and (=> t!40273 result!20522) b_and!23459)))

(declare-fun m!376453 () Bool)

(assert (=> d!86085 m!376453))

(assert (=> b!289323 m!373147))

(assert (=> b!289323 m!373147))

(declare-fun m!376459 () Bool)

(assert (=> b!289323 m!376459))

(declare-fun m!376461 () Bool)

(assert (=> b!289324 m!376461))

(assert (=> b!287904 d!86085))

(declare-fun bs!32828 () Bool)

(declare-fun d!86087 () Bool)

(assert (= bs!32828 (and d!86087 d!85487)))

(declare-fun lambda!9936 () Int)

(assert (=> bs!32828 (= (and (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (= (toValue!1502 (transformation!755 (rule!1354 separatorToken!170))) (toValue!1502 (transformation!755 (h!9341 rules!1920))))) (= lambda!9936 lambda!9886))))

(declare-fun bs!32829 () Bool)

(assert (= bs!32829 (and d!86087 d!85607)))

(assert (=> bs!32829 (= (and (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465))))) (= (toValue!1502 (transformation!755 (rule!1354 separatorToken!170))) (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465)))))) (= lambda!9936 lambda!9895))))

(declare-fun bs!32830 () Bool)

(assert (= bs!32830 (and d!86087 b!289071)))

(assert (=> bs!32830 (= (and (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (h!9341 rules!1920)))) (= (toValue!1502 (transformation!755 (rule!1354 separatorToken!170))) (toValue!1502 (transformation!755 (h!9341 rules!1920))))) (= lambda!9936 lambda!9929))))

(assert (=> d!86087 true))

(assert (=> d!86087 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170)))) (dynLambda!2096 order!3119 lambda!9936))))

(assert (=> d!86087 true))

(assert (=> d!86087 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (rule!1354 separatorToken!170)))) (dynLambda!2096 order!3119 lambda!9936))))

(assert (=> d!86087 (= (semiInverseModEq!279 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toValue!1502 (transformation!755 (rule!1354 separatorToken!170)))) (Forall!177 lambda!9936))))

(declare-fun bs!32831 () Bool)

(assert (= bs!32831 d!86087))

(declare-fun m!376477 () Bool)

(assert (=> bs!32831 m!376477))

(assert (=> d!85079 d!86087))

(declare-fun b!289334 () Bool)

(declare-fun e!180094 () List!3953)

(assert (=> b!289334 (= e!180094 (printList!315 thiss!17480 (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945))))))

(declare-fun b!289336 () Bool)

(declare-fun res!132116 () Bool)

(declare-fun e!180093 () Bool)

(assert (=> b!289336 (=> (not res!132116) (not e!180093))))

(declare-fun lt!122274 () List!3953)

(assert (=> b!289336 (= res!132116 (= (size!3163 lt!122274) (+ (size!3163 (list!1645 (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))) (size!3163 (printList!315 thiss!17480 (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))))))

(declare-fun b!289335 () Bool)

(assert (=> b!289335 (= e!180094 (Cons!3943 (h!9340 (list!1645 (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))) (++!1050 (t!40181 (list!1645 (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))) (printList!315 thiss!17480 (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945))))))))

(declare-fun d!86091 () Bool)

(assert (=> d!86091 e!180093))

(declare-fun res!132115 () Bool)

(assert (=> d!86091 (=> (not res!132115) (not e!180093))))

(assert (=> d!86091 (= res!132115 (= (content!579 lt!122274) ((_ map or) (content!579 (list!1645 (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))) (content!579 (printList!315 thiss!17480 (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))))))

(assert (=> d!86091 (= lt!122274 e!180094)))

(declare-fun c!54842 () Bool)

(assert (=> d!86091 (= c!54842 ((_ is Nil!3943) (list!1645 (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))))))

(assert (=> d!86091 (= (++!1050 (list!1645 (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))) (printList!315 thiss!17480 (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945)))) lt!122274)))

(declare-fun b!289337 () Bool)

(assert (=> b!289337 (= e!180093 (or (not (= (printList!315 thiss!17480 (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945))) Nil!3943)) (= lt!122274 (list!1645 (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))))))

(assert (= (and d!86091 c!54842) b!289334))

(assert (= (and d!86091 (not c!54842)) b!289335))

(assert (= (and d!86091 res!132115) b!289336))

(assert (= (and b!289336 res!132116) b!289337))

(declare-fun m!376489 () Bool)

(assert (=> b!289336 m!376489))

(assert (=> b!289336 m!372595))

(declare-fun m!376491 () Bool)

(assert (=> b!289336 m!376491))

(assert (=> b!289336 m!372597))

(declare-fun m!376497 () Bool)

(assert (=> b!289336 m!376497))

(assert (=> b!289335 m!372597))

(declare-fun m!376499 () Bool)

(assert (=> b!289335 m!376499))

(declare-fun m!376501 () Bool)

(assert (=> d!86091 m!376501))

(assert (=> d!86091 m!372595))

(declare-fun m!376503 () Bool)

(assert (=> d!86091 m!376503))

(assert (=> d!86091 m!372597))

(declare-fun m!376505 () Bool)

(assert (=> d!86091 m!376505))

(assert (=> b!287737 d!86091))

(declare-fun d!86099 () Bool)

(assert (=> d!86099 (= (list!1645 (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))) (list!1649 (c!54354 (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))))))

(declare-fun bs!32832 () Bool)

(assert (= bs!32832 d!86099))

(declare-fun m!376507 () Bool)

(assert (=> bs!32832 m!376507))

(assert (=> b!287737 d!86099))

(declare-fun d!86101 () Bool)

(declare-fun lt!122277 () BalanceConc!2672)

(assert (=> d!86101 (= (list!1645 lt!122277) (originalCharacters!798 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))))

(assert (=> d!86101 (= lt!122277 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))) (value!25833 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))))

(assert (=> d!86101 (= (charsOf!398 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))) lt!122277)))

(declare-fun b_lambda!9627 () Bool)

(assert (=> (not b_lambda!9627) (not d!86101)))

(declare-fun t!40441 () Bool)

(declare-fun tb!16841 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))) t!40441) tb!16841))

(declare-fun b!289356 () Bool)

(declare-fun e!180107 () Bool)

(declare-fun tp!105489 () Bool)

(assert (=> b!289356 (= e!180107 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))) (value!25833 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))) tp!105489))))

(declare-fun result!20682 () Bool)

(assert (=> tb!16841 (= result!20682 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))) (value!25833 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945))))) e!180107))))

(assert (= tb!16841 b!289356))

(declare-fun m!376517 () Bool)

(assert (=> b!289356 m!376517))

(declare-fun m!376519 () Bool)

(assert (=> tb!16841 m!376519))

(assert (=> d!86101 t!40441))

(declare-fun b_and!23461 () Bool)

(assert (= b_and!23451 (and (=> t!40441 result!20682) b_and!23461)))

(declare-fun t!40443 () Bool)

(declare-fun tb!16843 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))) t!40443) tb!16843))

(declare-fun result!20684 () Bool)

(assert (= result!20684 result!20682))

(assert (=> d!86101 t!40443))

(declare-fun b_and!23463 () Bool)

(assert (= b_and!23455 (and (=> t!40443 result!20684) b_and!23463)))

(declare-fun t!40445 () Bool)

(declare-fun tb!16845 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))) t!40445) tb!16845))

(declare-fun result!20686 () Bool)

(assert (= result!20686 result!20682))

(assert (=> d!86101 t!40445))

(declare-fun b_and!23465 () Bool)

(assert (= b_and!23459 (and (=> t!40445 result!20686) b_and!23465)))

(declare-fun t!40447 () Bool)

(declare-fun tb!16847 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))) t!40447) tb!16847))

(declare-fun result!20688 () Bool)

(assert (= result!20688 result!20682))

(assert (=> d!86101 t!40447))

(declare-fun b_and!23467 () Bool)

(assert (= b_and!23453 (and (=> t!40447 result!20688) b_and!23467)))

(declare-fun t!40449 () Bool)

(declare-fun tb!16849 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))) t!40449) tb!16849))

(declare-fun result!20690 () Bool)

(assert (= result!20690 result!20682))

(assert (=> d!86101 t!40449))

(declare-fun b_and!23469 () Bool)

(assert (= b_and!23457 (and (=> t!40449 result!20690) b_and!23469)))

(declare-fun m!376521 () Bool)

(assert (=> d!86101 m!376521))

(declare-fun m!376523 () Bool)

(assert (=> d!86101 m!376523))

(assert (=> b!287737 d!86101))

(declare-fun d!86105 () Bool)

(declare-fun c!54848 () Bool)

(assert (=> d!86105 (= c!54848 ((_ is Cons!3945) (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945))))))

(declare-fun e!180108 () List!3953)

(assert (=> d!86105 (= (printList!315 thiss!17480 (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945))) e!180108)))

(declare-fun b!289357 () Bool)

(assert (=> b!289357 (= e!180108 (++!1050 (list!1645 (charsOf!398 (h!9342 (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945))))) (printList!315 thiss!17480 (t!40183 (t!40183 (Cons!3945 (h!9342 tokens!465) Nil!3945))))))))

(declare-fun b!289358 () Bool)

(assert (=> b!289358 (= e!180108 Nil!3943)))

(assert (= (and d!86105 c!54848) b!289357))

(assert (= (and d!86105 (not c!54848)) b!289358))

(declare-fun m!376525 () Bool)

(assert (=> b!289357 m!376525))

(assert (=> b!289357 m!376525))

(declare-fun m!376527 () Bool)

(assert (=> b!289357 m!376527))

(declare-fun m!376529 () Bool)

(assert (=> b!289357 m!376529))

(assert (=> b!289357 m!376527))

(assert (=> b!289357 m!376529))

(declare-fun m!376531 () Bool)

(assert (=> b!289357 m!376531))

(assert (=> b!287737 d!86105))

(declare-fun d!86107 () Bool)

(declare-fun res!132125 () Bool)

(declare-fun e!180109 () Bool)

(assert (=> d!86107 (=> res!132125 e!180109)))

(assert (=> d!86107 (= res!132125 (not ((_ is Cons!3944) (t!40182 rules!1920))))))

(assert (=> d!86107 (= (sepAndNonSepRulesDisjointChars!344 rules!1920 (t!40182 rules!1920)) e!180109)))

(declare-fun b!289359 () Bool)

(declare-fun e!180110 () Bool)

(assert (=> b!289359 (= e!180109 e!180110)))

(declare-fun res!132126 () Bool)

(assert (=> b!289359 (=> (not res!132126) (not e!180110))))

(assert (=> b!289359 (= res!132126 (ruleDisjointCharsFromAllFromOtherType!137 (h!9341 (t!40182 rules!1920)) rules!1920))))

(declare-fun b!289360 () Bool)

(assert (=> b!289360 (= e!180110 (sepAndNonSepRulesDisjointChars!344 rules!1920 (t!40182 (t!40182 rules!1920))))))

(assert (= (and d!86107 (not res!132125)) b!289359))

(assert (= (and b!289359 res!132126) b!289360))

(declare-fun m!376539 () Bool)

(assert (=> b!289359 m!376539))

(declare-fun m!376541 () Bool)

(assert (=> b!289360 m!376541))

(assert (=> b!287442 d!86107))

(declare-fun d!86109 () Bool)

(assert (=> d!86109 (= (list!1648 lt!121159) (list!1650 (c!54356 lt!121159)))))

(declare-fun bs!32833 () Bool)

(assert (= bs!32833 d!86109))

(declare-fun m!376545 () Bool)

(assert (=> bs!32833 m!376545))

(assert (=> d!85167 d!86109))

(declare-fun d!86111 () Bool)

(declare-fun e!180122 () Bool)

(assert (=> d!86111 e!180122))

(declare-fun res!132134 () Bool)

(assert (=> d!86111 (=> (not res!132134) (not e!180122))))

(declare-fun lt!122303 () BalanceConc!2674)

(assert (=> d!86111 (= res!132134 (= (list!1648 lt!122303) (Cons!3945 (h!9342 tokens!465) Nil!3945)))))

(declare-fun choose!2605 (Token!1254) BalanceConc!2674)

(assert (=> d!86111 (= lt!122303 (choose!2605 (h!9342 tokens!465)))))

(assert (=> d!86111 (= (singleton!131 (h!9342 tokens!465)) lt!122303)))

(declare-fun b!289376 () Bool)

(assert (=> b!289376 (= e!180122 (isBalanced!374 (c!54356 lt!122303)))))

(assert (= (and d!86111 res!132134) b!289376))

(declare-fun m!376575 () Bool)

(assert (=> d!86111 m!376575))

(declare-fun m!376577 () Bool)

(assert (=> d!86111 m!376577))

(declare-fun m!376579 () Bool)

(assert (=> b!289376 m!376579))

(assert (=> d!85167 d!86111))

(declare-fun b!289539 () Bool)

(declare-fun res!132162 () Bool)

(declare-fun e!180214 () Bool)

(assert (=> b!289539 (=> (not res!132162) (not e!180214))))

(declare-fun lt!122330 () Option!870)

(assert (=> b!289539 (= res!132162 (= (++!1050 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!122330)))) (_2!2457 (get!1329 lt!122330))) lt!120875))))

(declare-fun b!289540 () Bool)

(declare-fun e!180213 () Option!870)

(declare-fun lt!122328 () tuple2!4498)

(assert (=> b!289540 (= e!180213 (Some!869 (tuple2!4483 (Token!1255 (apply!844 (transformation!755 (h!9341 rules!1920)) (seqFromList!875 (_1!2465 lt!122328))) (h!9341 rules!1920) (size!3162 (seqFromList!875 (_1!2465 lt!122328))) (_1!2465 lt!122328)) (_2!2465 lt!122328))))))

(declare-fun lt!122329 () Unit!5300)

(assert (=> b!289540 (= lt!122329 (longestMatchIsAcceptedByMatchOrIsEmpty!64 (regex!755 (h!9341 rules!1920)) lt!120875))))

(declare-fun res!132164 () Bool)

(assert (=> b!289540 (= res!132164 (isEmpty!2618 (_1!2465 (findLongestMatchInner!80 (regex!755 (h!9341 rules!1920)) Nil!3943 (size!3163 Nil!3943) lt!120875 lt!120875 (size!3163 lt!120875)))))))

(declare-fun e!180215 () Bool)

(assert (=> b!289540 (=> res!132164 e!180215)))

(assert (=> b!289540 e!180215))

(declare-fun lt!122327 () Unit!5300)

(assert (=> b!289540 (= lt!122327 lt!122329)))

(declare-fun lt!122326 () Unit!5300)

(declare-fun lemmaSemiInverse!58 (TokenValueInjection!1326 BalanceConc!2672) Unit!5300)

(assert (=> b!289540 (= lt!122326 (lemmaSemiInverse!58 (transformation!755 (h!9341 rules!1920)) (seqFromList!875 (_1!2465 lt!122328))))))

(declare-fun b!289541 () Bool)

(declare-fun e!180212 () Bool)

(assert (=> b!289541 (= e!180212 e!180214)))

(declare-fun res!132161 () Bool)

(assert (=> b!289541 (=> (not res!132161) (not e!180214))))

(assert (=> b!289541 (= res!132161 (matchR!297 (regex!755 (h!9341 rules!1920)) (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!122330))))))))

(declare-fun b!289542 () Bool)

(assert (=> b!289542 (= e!180214 (= (size!3157 (_1!2457 (get!1329 lt!122330))) (size!3163 (originalCharacters!798 (_1!2457 (get!1329 lt!122330))))))))

(declare-fun d!86121 () Bool)

(assert (=> d!86121 e!180212))

(declare-fun res!132159 () Bool)

(assert (=> d!86121 (=> res!132159 e!180212)))

(assert (=> d!86121 (= res!132159 (isEmpty!2620 lt!122330))))

(assert (=> d!86121 (= lt!122330 e!180213)))

(declare-fun c!54864 () Bool)

(assert (=> d!86121 (= c!54864 (isEmpty!2618 (_1!2465 lt!122328)))))

(declare-fun findLongestMatch!60 (Regex!979 List!3953) tuple2!4498)

(assert (=> d!86121 (= lt!122328 (findLongestMatch!60 (regex!755 (h!9341 rules!1920)) lt!120875))))

(assert (=> d!86121 (ruleValid!94 thiss!17480 (h!9341 rules!1920))))

(assert (=> d!86121 (= (maxPrefixOneRule!159 thiss!17480 (h!9341 rules!1920) lt!120875) lt!122330)))

(declare-fun b!289543 () Bool)

(assert (=> b!289543 (= e!180213 None!869)))

(declare-fun b!289544 () Bool)

(declare-fun res!132163 () Bool)

(assert (=> b!289544 (=> (not res!132163) (not e!180214))))

(assert (=> b!289544 (= res!132163 (= (rule!1354 (_1!2457 (get!1329 lt!122330))) (h!9341 rules!1920)))))

(declare-fun b!289545 () Bool)

(declare-fun res!132165 () Bool)

(assert (=> b!289545 (=> (not res!132165) (not e!180214))))

(assert (=> b!289545 (= res!132165 (= (value!25833 (_1!2457 (get!1329 lt!122330))) (apply!844 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!122330)))) (seqFromList!875 (originalCharacters!798 (_1!2457 (get!1329 lt!122330)))))))))

(declare-fun b!289546 () Bool)

(assert (=> b!289546 (= e!180215 (matchR!297 (regex!755 (h!9341 rules!1920)) (_1!2465 (findLongestMatchInner!80 (regex!755 (h!9341 rules!1920)) Nil!3943 (size!3163 Nil!3943) lt!120875 lt!120875 (size!3163 lt!120875)))))))

(declare-fun b!289547 () Bool)

(declare-fun res!132160 () Bool)

(assert (=> b!289547 (=> (not res!132160) (not e!180214))))

(assert (=> b!289547 (= res!132160 (< (size!3163 (_2!2457 (get!1329 lt!122330))) (size!3163 lt!120875)))))

(assert (= (and d!86121 c!54864) b!289543))

(assert (= (and d!86121 (not c!54864)) b!289540))

(assert (= (and b!289540 (not res!132164)) b!289546))

(assert (= (and d!86121 (not res!132159)) b!289541))

(assert (= (and b!289541 res!132161) b!289539))

(assert (= (and b!289539 res!132162) b!289547))

(assert (= (and b!289547 res!132160) b!289544))

(assert (= (and b!289544 res!132163) b!289545))

(assert (= (and b!289545 res!132165) b!289542))

(assert (=> b!289546 m!375897))

(assert (=> b!289546 m!372019))

(assert (=> b!289546 m!375897))

(assert (=> b!289546 m!372019))

(declare-fun m!376745 () Bool)

(assert (=> b!289546 m!376745))

(declare-fun m!376747 () Bool)

(assert (=> b!289546 m!376747))

(declare-fun m!376749 () Bool)

(assert (=> b!289544 m!376749))

(assert (=> b!289539 m!376749))

(declare-fun m!376751 () Bool)

(assert (=> b!289539 m!376751))

(assert (=> b!289539 m!376751))

(declare-fun m!376753 () Bool)

(assert (=> b!289539 m!376753))

(assert (=> b!289539 m!376753))

(declare-fun m!376755 () Bool)

(assert (=> b!289539 m!376755))

(assert (=> b!289547 m!376749))

(declare-fun m!376757 () Bool)

(assert (=> b!289547 m!376757))

(assert (=> b!289547 m!372019))

(assert (=> b!289541 m!376749))

(assert (=> b!289541 m!376751))

(assert (=> b!289541 m!376751))

(assert (=> b!289541 m!376753))

(assert (=> b!289541 m!376753))

(declare-fun m!376759 () Bool)

(assert (=> b!289541 m!376759))

(assert (=> b!289545 m!376749))

(declare-fun m!376761 () Bool)

(assert (=> b!289545 m!376761))

(assert (=> b!289545 m!376761))

(declare-fun m!376763 () Bool)

(assert (=> b!289545 m!376763))

(declare-fun m!376765 () Bool)

(assert (=> d!86121 m!376765))

(declare-fun m!376767 () Bool)

(assert (=> d!86121 m!376767))

(declare-fun m!376769 () Bool)

(assert (=> d!86121 m!376769))

(assert (=> d!86121 m!374475))

(assert (=> b!289542 m!376749))

(declare-fun m!376771 () Bool)

(assert (=> b!289542 m!376771))

(declare-fun m!376773 () Bool)

(assert (=> b!289540 m!376773))

(assert (=> b!289540 m!375897))

(declare-fun m!376775 () Bool)

(assert (=> b!289540 m!376775))

(declare-fun m!376777 () Bool)

(assert (=> b!289540 m!376777))

(assert (=> b!289540 m!376775))

(assert (=> b!289540 m!372019))

(assert (=> b!289540 m!376775))

(declare-fun m!376779 () Bool)

(assert (=> b!289540 m!376779))

(assert (=> b!289540 m!375897))

(assert (=> b!289540 m!372019))

(assert (=> b!289540 m!376745))

(declare-fun m!376781 () Bool)

(assert (=> b!289540 m!376781))

(assert (=> b!289540 m!376775))

(declare-fun m!376783 () Bool)

(assert (=> b!289540 m!376783))

(assert (=> bm!16271 d!86121))

(declare-fun b!289548 () Bool)

(declare-fun e!180217 () List!3953)

(assert (=> b!289548 (= e!180217 lt!120870)))

(declare-fun b!289550 () Bool)

(declare-fun res!132167 () Bool)

(declare-fun e!180216 () Bool)

(assert (=> b!289550 (=> (not res!132167) (not e!180216))))

(declare-fun lt!122331 () List!3953)

(assert (=> b!289550 (= res!132167 (= (size!3163 lt!122331) (+ (size!3163 (t!40181 lt!120869)) (size!3163 lt!120870))))))

(declare-fun b!289549 () Bool)

(assert (=> b!289549 (= e!180217 (Cons!3943 (h!9340 (t!40181 lt!120869)) (++!1050 (t!40181 (t!40181 lt!120869)) lt!120870)))))

(declare-fun d!86163 () Bool)

(assert (=> d!86163 e!180216))

(declare-fun res!132166 () Bool)

(assert (=> d!86163 (=> (not res!132166) (not e!180216))))

(assert (=> d!86163 (= res!132166 (= (content!579 lt!122331) ((_ map or) (content!579 (t!40181 lt!120869)) (content!579 lt!120870))))))

(assert (=> d!86163 (= lt!122331 e!180217)))

(declare-fun c!54865 () Bool)

(assert (=> d!86163 (= c!54865 ((_ is Nil!3943) (t!40181 lt!120869)))))

(assert (=> d!86163 (= (++!1050 (t!40181 lt!120869) lt!120870) lt!122331)))

(declare-fun b!289551 () Bool)

(assert (=> b!289551 (= e!180216 (or (not (= lt!120870 Nil!3943)) (= lt!122331 (t!40181 lt!120869))))))

(assert (= (and d!86163 c!54865) b!289548))

(assert (= (and d!86163 (not c!54865)) b!289549))

(assert (= (and d!86163 res!132166) b!289550))

(assert (= (and b!289550 res!132167) b!289551))

(declare-fun m!376785 () Bool)

(assert (=> b!289550 m!376785))

(assert (=> b!289550 m!373601))

(assert (=> b!289550 m!372021))

(declare-fun m!376787 () Bool)

(assert (=> b!289549 m!376787))

(declare-fun m!376789 () Bool)

(assert (=> d!86163 m!376789))

(assert (=> d!86163 m!373283))

(assert (=> d!86163 m!372029))

(assert (=> b!287649 d!86163))

(declare-fun d!86165 () Bool)

(assert (=> d!86165 (= (list!1645 call!16259) (list!1649 (c!54354 call!16259)))))

(declare-fun bs!32878 () Bool)

(assert (= bs!32878 d!86165))

(declare-fun m!376791 () Bool)

(assert (=> bs!32878 m!376791))

(assert (=> b!287606 d!86165))

(declare-fun d!86167 () Bool)

(assert (=> d!86167 (= (list!1645 lt!121051) (list!1649 (c!54354 lt!121051)))))

(declare-fun bs!32879 () Bool)

(assert (= bs!32879 d!86167))

(declare-fun m!376793 () Bool)

(assert (=> bs!32879 m!376793))

(assert (=> b!287606 d!86167))

(declare-fun d!86169 () Bool)

(declare-fun lt!122334 () BalanceConc!2672)

(assert (=> d!86169 (= (list!1645 lt!122334) (printListTailRec!147 thiss!17480 (dropList!182 (singletonSeq!301 call!16263) 0) (list!1645 (BalanceConc!2673 Empty!1332))))))

(declare-fun e!180218 () BalanceConc!2672)

(assert (=> d!86169 (= lt!122334 e!180218)))

(declare-fun c!54866 () Bool)

(assert (=> d!86169 (= c!54866 (>= 0 (size!3161 (singletonSeq!301 call!16263))))))

(declare-fun e!180219 () Bool)

(assert (=> d!86169 e!180219))

(declare-fun res!132168 () Bool)

(assert (=> d!86169 (=> (not res!132168) (not e!180219))))

(assert (=> d!86169 (= res!132168 (>= 0 0))))

(assert (=> d!86169 (= (printTailRec!327 thiss!17480 (singletonSeq!301 call!16263) 0 (BalanceConc!2673 Empty!1332)) lt!122334)))

(declare-fun b!289552 () Bool)

(assert (=> b!289552 (= e!180219 (<= 0 (size!3161 (singletonSeq!301 call!16263))))))

(declare-fun b!289553 () Bool)

(assert (=> b!289553 (= e!180218 (BalanceConc!2673 Empty!1332))))

(declare-fun b!289554 () Bool)

(assert (=> b!289554 (= e!180218 (printTailRec!327 thiss!17480 (singletonSeq!301 call!16263) (+ 0 1) (++!1052 (BalanceConc!2673 Empty!1332) (charsOf!398 (apply!840 (singletonSeq!301 call!16263) 0)))))))

(declare-fun lt!122335 () List!3955)

(assert (=> b!289554 (= lt!122335 (list!1648 (singletonSeq!301 call!16263)))))

(declare-fun lt!122336 () Unit!5300)

(assert (=> b!289554 (= lt!122336 (lemmaDropApply!222 lt!122335 0))))

(assert (=> b!289554 (= (head!930 (drop!235 lt!122335 0)) (apply!843 lt!122335 0))))

(declare-fun lt!122332 () Unit!5300)

(assert (=> b!289554 (= lt!122332 lt!122336)))

(declare-fun lt!122337 () List!3955)

(assert (=> b!289554 (= lt!122337 (list!1648 (singletonSeq!301 call!16263)))))

(declare-fun lt!122338 () Unit!5300)

(assert (=> b!289554 (= lt!122338 (lemmaDropTail!214 lt!122337 0))))

(assert (=> b!289554 (= (tail!512 (drop!235 lt!122337 0)) (drop!235 lt!122337 (+ 0 1)))))

(declare-fun lt!122333 () Unit!5300)

(assert (=> b!289554 (= lt!122333 lt!122338)))

(assert (= (and d!86169 res!132168) b!289552))

(assert (= (and d!86169 c!54866) b!289553))

(assert (= (and d!86169 (not c!54866)) b!289554))

(assert (=> d!86169 m!372287))

(declare-fun m!376795 () Bool)

(assert (=> d!86169 m!376795))

(declare-fun m!376797 () Bool)

(assert (=> d!86169 m!376797))

(assert (=> d!86169 m!372287))

(declare-fun m!376799 () Bool)

(assert (=> d!86169 m!376799))

(assert (=> d!86169 m!372515))

(assert (=> d!86169 m!376795))

(assert (=> d!86169 m!372515))

(declare-fun m!376801 () Bool)

(assert (=> d!86169 m!376801))

(assert (=> b!289552 m!372287))

(assert (=> b!289552 m!376799))

(declare-fun m!376803 () Bool)

(assert (=> b!289554 m!376803))

(declare-fun m!376805 () Bool)

(assert (=> b!289554 m!376805))

(declare-fun m!376807 () Bool)

(assert (=> b!289554 m!376807))

(assert (=> b!289554 m!372287))

(declare-fun m!376809 () Bool)

(assert (=> b!289554 m!376809))

(declare-fun m!376811 () Bool)

(assert (=> b!289554 m!376811))

(assert (=> b!289554 m!372287))

(declare-fun m!376813 () Bool)

(assert (=> b!289554 m!376813))

(declare-fun m!376815 () Bool)

(assert (=> b!289554 m!376815))

(assert (=> b!289554 m!376809))

(assert (=> b!289554 m!372287))

(declare-fun m!376817 () Bool)

(assert (=> b!289554 m!376817))

(declare-fun m!376819 () Bool)

(assert (=> b!289554 m!376819))

(declare-fun m!376821 () Bool)

(assert (=> b!289554 m!376821))

(assert (=> b!289554 m!376817))

(assert (=> b!289554 m!376815))

(declare-fun m!376823 () Bool)

(assert (=> b!289554 m!376823))

(assert (=> b!289554 m!376803))

(assert (=> b!289554 m!376823))

(declare-fun m!376825 () Bool)

(assert (=> b!289554 m!376825))

(declare-fun m!376827 () Bool)

(assert (=> b!289554 m!376827))

(assert (=> b!287606 d!86169))

(declare-fun d!86171 () Bool)

(declare-fun e!180220 () Bool)

(assert (=> d!86171 e!180220))

(declare-fun res!132169 () Bool)

(assert (=> d!86171 (=> (not res!132169) (not e!180220))))

(declare-fun lt!122339 () BalanceConc!2674)

(assert (=> d!86171 (= res!132169 (= (list!1648 lt!122339) (Cons!3945 call!16263 Nil!3945)))))

(assert (=> d!86171 (= lt!122339 (singleton!131 call!16263))))

(assert (=> d!86171 (= (singletonSeq!301 call!16263) lt!122339)))

(declare-fun b!289555 () Bool)

(assert (=> b!289555 (= e!180220 (isBalanced!374 (c!54356 lt!122339)))))

(assert (= (and d!86171 res!132169) b!289555))

(declare-fun m!376829 () Bool)

(assert (=> d!86171 m!376829))

(declare-fun m!376831 () Bool)

(assert (=> d!86171 m!376831))

(declare-fun m!376833 () Bool)

(assert (=> b!289555 m!376833))

(assert (=> b!287606 d!86171))

(declare-fun d!86173 () Bool)

(declare-fun lt!122340 () BalanceConc!2672)

(assert (=> d!86173 (= (list!1645 lt!122340) (printList!315 thiss!17480 (list!1648 (singletonSeq!301 call!16263))))))

(assert (=> d!86173 (= lt!122340 (printTailRec!327 thiss!17480 (singletonSeq!301 call!16263) 0 (BalanceConc!2673 Empty!1332)))))

(assert (=> d!86173 (= (print!366 thiss!17480 (singletonSeq!301 call!16263)) lt!122340)))

(declare-fun bs!32880 () Bool)

(assert (= bs!32880 d!86173))

(declare-fun m!376835 () Bool)

(assert (=> bs!32880 m!376835))

(assert (=> bs!32880 m!372287))

(assert (=> bs!32880 m!376813))

(assert (=> bs!32880 m!376813))

(declare-fun m!376837 () Bool)

(assert (=> bs!32880 m!376837))

(assert (=> bs!32880 m!372287))

(assert (=> bs!32880 m!372297))

(assert (=> b!287606 d!86173))

(declare-fun b!289558 () Bool)

(declare-fun e!180221 () Unit!5300)

(declare-fun Unit!5352 () Unit!5300)

(assert (=> b!289558 (= e!180221 Unit!5352)))

(declare-fun lt!122349 () List!3953)

(assert (=> b!289558 (= lt!122349 (++!1050 (list!1645 call!16259) (list!1645 lt!121051)))))

(declare-fun lt!122353 () Token!1254)

(declare-fun lt!122345 () Unit!5300)

(assert (=> b!289558 (= lt!122345 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!62 thiss!17480 (rule!1354 lt!122353) rules!1920 lt!122349))))

(assert (=> b!289558 (isEmpty!2620 (maxPrefixOneRule!159 thiss!17480 (rule!1354 lt!122353) lt!122349))))

(declare-fun lt!122356 () Unit!5300)

(assert (=> b!289558 (= lt!122356 lt!122345)))

(declare-fun lt!122341 () List!3953)

(assert (=> b!289558 (= lt!122341 (list!1645 (charsOf!398 lt!122353)))))

(declare-fun lt!122350 () Unit!5300)

(assert (=> b!289558 (= lt!122350 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!62 thiss!17480 (rule!1354 lt!122353) lt!122341 (++!1050 (list!1645 call!16259) (list!1645 lt!121051))))))

(assert (=> b!289558 (not (matchR!297 (regex!755 (rule!1354 lt!122353)) lt!122341))))

(declare-fun lt!122342 () Unit!5300)

(assert (=> b!289558 (= lt!122342 lt!122350)))

(assert (=> b!289558 false))

(declare-fun d!86175 () Bool)

(assert (=> d!86175 (isDefined!709 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 call!16259) (list!1645 lt!121051))))))

(declare-fun lt!122347 () Unit!5300)

(assert (=> d!86175 (= lt!122347 e!180221)))

(declare-fun c!54867 () Bool)

(assert (=> d!86175 (= c!54867 (isEmpty!2620 (maxPrefix!357 thiss!17480 rules!1920 (++!1050 (list!1645 call!16259) (list!1645 lt!121051)))))))

(declare-fun lt!122351 () Unit!5300)

(declare-fun lt!122357 () Unit!5300)

(assert (=> d!86175 (= lt!122351 lt!122357)))

(declare-fun e!180222 () Bool)

(assert (=> d!86175 e!180222))

(declare-fun res!132171 () Bool)

(assert (=> d!86175 (=> (not res!132171) (not e!180222))))

(assert (=> d!86175 (= res!132171 (isDefined!712 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!122353)))))))

(assert (=> d!86175 (= lt!122357 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!138 thiss!17480 rules!1920 (list!1645 call!16259) lt!122353))))

(declare-fun lt!122355 () Unit!5300)

(declare-fun lt!122352 () Unit!5300)

(assert (=> d!86175 (= lt!122355 lt!122352)))

(declare-fun lt!122348 () List!3953)

(assert (=> d!86175 (isPrefix!419 lt!122348 (++!1050 (list!1645 call!16259) (list!1645 lt!121051)))))

(assert (=> d!86175 (= lt!122352 (lemmaPrefixStaysPrefixWhenAddingToSuffix!62 lt!122348 (list!1645 call!16259) (list!1645 lt!121051)))))

(assert (=> d!86175 (= lt!122348 (list!1645 (charsOf!398 lt!122353)))))

(declare-fun lt!122354 () Unit!5300)

(declare-fun lt!122344 () Unit!5300)

(assert (=> d!86175 (= lt!122354 lt!122344)))

(declare-fun lt!122346 () List!3953)

(declare-fun lt!122343 () List!3953)

(assert (=> d!86175 (isPrefix!419 lt!122346 (++!1050 lt!122346 lt!122343))))

(assert (=> d!86175 (= lt!122344 (lemmaConcatTwoListThenFirstIsPrefix!314 lt!122346 lt!122343))))

(assert (=> d!86175 (= lt!122343 (_2!2457 (get!1329 (maxPrefix!357 thiss!17480 rules!1920 (list!1645 call!16259)))))))

(assert (=> d!86175 (= lt!122346 (list!1645 (charsOf!398 lt!122353)))))

(assert (=> d!86175 (= lt!122353 (head!930 (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 (list!1645 call!16259)))))))))

(assert (=> d!86175 (not (isEmpty!2609 rules!1920))))

(assert (=> d!86175 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!130 thiss!17480 rules!1920 (list!1645 call!16259) (list!1645 lt!121051)) lt!122347)))

(declare-fun b!289556 () Bool)

(declare-fun res!132170 () Bool)

(assert (=> b!289556 (=> (not res!132170) (not e!180222))))

(assert (=> b!289556 (= res!132170 (matchR!297 (regex!755 (get!1333 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!122353))))) (list!1645 (charsOf!398 lt!122353))))))

(declare-fun b!289559 () Bool)

(declare-fun Unit!5354 () Unit!5300)

(assert (=> b!289559 (= e!180221 Unit!5354)))

(declare-fun b!289557 () Bool)

(assert (=> b!289557 (= e!180222 (= (rule!1354 lt!122353) (get!1333 (getRuleFromTag!138 thiss!17480 rules!1920 (tag!971 (rule!1354 lt!122353))))))))

(assert (= (and d!86175 res!132171) b!289556))

(assert (= (and b!289556 res!132170) b!289557))

(assert (= (and d!86175 c!54867) b!289558))

(assert (= (and d!86175 (not c!54867)) b!289559))

(declare-fun m!376839 () Bool)

(assert (=> b!289558 m!376839))

(declare-fun m!376841 () Bool)

(assert (=> b!289558 m!376841))

(assert (=> b!289558 m!376841))

(declare-fun m!376843 () Bool)

(assert (=> b!289558 m!376843))

(declare-fun m!376845 () Bool)

(assert (=> b!289558 m!376845))

(declare-fun m!376847 () Bool)

(assert (=> b!289558 m!376847))

(declare-fun m!376849 () Bool)

(assert (=> b!289558 m!376849))

(declare-fun m!376851 () Bool)

(assert (=> b!289558 m!376851))

(declare-fun m!376853 () Bool)

(assert (=> b!289558 m!376853))

(assert (=> b!289558 m!376849))

(assert (=> b!289558 m!372293))

(assert (=> b!289558 m!372289))

(assert (=> b!289558 m!376845))

(declare-fun m!376855 () Bool)

(assert (=> d!86175 m!376855))

(declare-fun m!376857 () Bool)

(assert (=> d!86175 m!376857))

(declare-fun m!376859 () Bool)

(assert (=> d!86175 m!376859))

(assert (=> d!86175 m!376855))

(declare-fun m!376861 () Bool)

(assert (=> d!86175 m!376861))

(assert (=> d!86175 m!372293))

(declare-fun m!376863 () Bool)

(assert (=> d!86175 m!376863))

(declare-fun m!376865 () Bool)

(assert (=> d!86175 m!376865))

(declare-fun m!376867 () Bool)

(assert (=> d!86175 m!376867))

(declare-fun m!376869 () Bool)

(assert (=> d!86175 m!376869))

(assert (=> d!86175 m!376845))

(assert (=> d!86175 m!376857))

(assert (=> d!86175 m!376869))

(declare-fun m!376871 () Bool)

(assert (=> d!86175 m!376871))

(declare-fun m!376873 () Bool)

(assert (=> d!86175 m!376873))

(declare-fun m!376875 () Bool)

(assert (=> d!86175 m!376875))

(assert (=> d!86175 m!372293))

(assert (=> d!86175 m!376865))

(assert (=> d!86175 m!372293))

(assert (=> d!86175 m!372289))

(assert (=> d!86175 m!376845))

(declare-fun m!376877 () Bool)

(assert (=> d!86175 m!376877))

(assert (=> d!86175 m!376845))

(declare-fun m!376879 () Bool)

(assert (=> d!86175 m!376879))

(assert (=> d!86175 m!376841))

(assert (=> d!86175 m!372293))

(declare-fun m!376881 () Bool)

(assert (=> d!86175 m!376881))

(assert (=> d!86175 m!372293))

(assert (=> d!86175 m!372289))

(declare-fun m!376883 () Bool)

(assert (=> d!86175 m!376883))

(assert (=> d!86175 m!376881))

(declare-fun m!376885 () Bool)

(assert (=> d!86175 m!376885))

(assert (=> d!86175 m!376841))

(assert (=> d!86175 m!376843))

(assert (=> d!86175 m!371723))

(assert (=> d!86175 m!376857))

(declare-fun m!376887 () Bool)

(assert (=> d!86175 m!376887))

(assert (=> d!86175 m!376873))

(assert (=> b!289556 m!376841))

(assert (=> b!289556 m!376841))

(assert (=> b!289556 m!376843))

(assert (=> b!289556 m!376855))

(declare-fun m!376889 () Bool)

(assert (=> b!289556 m!376889))

(assert (=> b!289556 m!376843))

(declare-fun m!376891 () Bool)

(assert (=> b!289556 m!376891))

(assert (=> b!289556 m!376855))

(assert (=> b!289557 m!376855))

(assert (=> b!289557 m!376855))

(assert (=> b!289557 m!376889))

(assert (=> b!287606 d!86175))

(assert (=> b!287700 d!85613))

(declare-fun d!86177 () Bool)

(declare-fun e!180223 () Bool)

(assert (=> d!86177 e!180223))

(declare-fun res!132172 () Bool)

(assert (=> d!86177 (=> (not res!132172) (not e!180223))))

(declare-fun lt!122358 () BalanceConc!2674)

(assert (=> d!86177 (= res!132172 (= (list!1648 lt!122358) (t!40183 tokens!465)))))

(assert (=> d!86177 (= lt!122358 (BalanceConc!2675 (fromList!187 (t!40183 tokens!465))))))

(assert (=> d!86177 (= (fromListB!358 (t!40183 tokens!465)) lt!122358)))

(declare-fun b!289560 () Bool)

(assert (=> b!289560 (= e!180223 (isBalanced!374 (fromList!187 (t!40183 tokens!465))))))

(assert (= (and d!86177 res!132172) b!289560))

(declare-fun m!376893 () Bool)

(assert (=> d!86177 m!376893))

(declare-fun m!376895 () Bool)

(assert (=> d!86177 m!376895))

(assert (=> b!289560 m!376895))

(assert (=> b!289560 m!376895))

(declare-fun m!376897 () Bool)

(assert (=> b!289560 m!376897))

(assert (=> d!85089 d!86177))

(declare-fun d!86179 () Bool)

(assert (=> d!86179 (= (list!1645 lt!121065) (list!1649 (c!54354 lt!121065)))))

(declare-fun bs!32881 () Bool)

(assert (= bs!32881 d!86179))

(declare-fun m!376899 () Bool)

(assert (=> bs!32881 m!376899))

(assert (=> d!85121 d!86179))

(declare-fun d!86181 () Bool)

(assert (=> d!86181 (= (isEmpty!2620 lt!121107) (not ((_ is Some!869) lt!121107)))))

(assert (=> d!85145 d!86181))

(declare-fun b!289562 () Bool)

(declare-fun res!132176 () Bool)

(declare-fun e!180225 () Bool)

(assert (=> b!289562 (=> (not res!132176) (not e!180225))))

(assert (=> b!289562 (= res!132176 (= (head!931 lt!120875) (head!931 lt!120875)))))

(declare-fun b!289564 () Bool)

(declare-fun e!180226 () Bool)

(assert (=> b!289564 (= e!180226 (>= (size!3163 lt!120875) (size!3163 lt!120875)))))

(declare-fun d!86183 () Bool)

(assert (=> d!86183 e!180226))

(declare-fun res!132175 () Bool)

(assert (=> d!86183 (=> res!132175 e!180226)))

(declare-fun lt!122359 () Bool)

(assert (=> d!86183 (= res!132175 (not lt!122359))))

(declare-fun e!180224 () Bool)

(assert (=> d!86183 (= lt!122359 e!180224)))

(declare-fun res!132174 () Bool)

(assert (=> d!86183 (=> res!132174 e!180224)))

(assert (=> d!86183 (= res!132174 ((_ is Nil!3943) lt!120875))))

(assert (=> d!86183 (= (isPrefix!419 lt!120875 lt!120875) lt!122359)))

(declare-fun b!289563 () Bool)

(assert (=> b!289563 (= e!180225 (isPrefix!419 (tail!513 lt!120875) (tail!513 lt!120875)))))

(declare-fun b!289561 () Bool)

(assert (=> b!289561 (= e!180224 e!180225)))

(declare-fun res!132173 () Bool)

(assert (=> b!289561 (=> (not res!132173) (not e!180225))))

(assert (=> b!289561 (= res!132173 (not ((_ is Nil!3943) lt!120875)))))

(assert (= (and d!86183 (not res!132174)) b!289561))

(assert (= (and b!289561 res!132173) b!289562))

(assert (= (and b!289562 res!132176) b!289563))

(assert (= (and d!86183 (not res!132175)) b!289564))

(declare-fun m!376901 () Bool)

(assert (=> b!289562 m!376901))

(assert (=> b!289562 m!376901))

(assert (=> b!289564 m!372019))

(assert (=> b!289564 m!372019))

(declare-fun m!376903 () Bool)

(assert (=> b!289563 m!376903))

(assert (=> b!289563 m!376903))

(assert (=> b!289563 m!376903))

(assert (=> b!289563 m!376903))

(declare-fun m!376905 () Bool)

(assert (=> b!289563 m!376905))

(assert (=> d!85145 d!86183))

(declare-fun d!86185 () Bool)

(assert (=> d!86185 (isPrefix!419 lt!120875 lt!120875)))

(declare-fun lt!122360 () Unit!5300)

(assert (=> d!86185 (= lt!122360 (choose!2603 lt!120875 lt!120875))))

(assert (=> d!86185 (= (lemmaIsPrefixRefl!225 lt!120875 lt!120875) lt!122360)))

(declare-fun bs!32882 () Bool)

(assert (= bs!32882 d!86185))

(assert (=> bs!32882 m!372495))

(declare-fun m!376907 () Bool)

(assert (=> bs!32882 m!376907))

(assert (=> d!85145 d!86185))

(assert (=> d!85145 d!85651))

(assert (=> d!85139 d!85091))

(declare-fun b!289565 () Bool)

(declare-fun e!180228 () List!3953)

(assert (=> b!289565 (= e!180228 (++!1050 lt!120869 lt!120870))))

(declare-fun b!289567 () Bool)

(declare-fun res!132178 () Bool)

(declare-fun e!180227 () Bool)

(assert (=> b!289567 (=> (not res!132178) (not e!180227))))

(declare-fun lt!122361 () List!3953)

(assert (=> b!289567 (= res!132178 (= (size!3163 lt!122361) (+ (size!3163 lt!120875) (size!3163 (++!1050 lt!120869 lt!120870)))))))

(declare-fun b!289566 () Bool)

(assert (=> b!289566 (= e!180228 (Cons!3943 (h!9340 lt!120875) (++!1050 (t!40181 lt!120875) (++!1050 lt!120869 lt!120870))))))

(declare-fun d!86187 () Bool)

(assert (=> d!86187 e!180227))

(declare-fun res!132177 () Bool)

(assert (=> d!86187 (=> (not res!132177) (not e!180227))))

(assert (=> d!86187 (= res!132177 (= (content!579 lt!122361) ((_ map or) (content!579 lt!120875) (content!579 (++!1050 lt!120869 lt!120870)))))))

(assert (=> d!86187 (= lt!122361 e!180228)))

(declare-fun c!54868 () Bool)

(assert (=> d!86187 (= c!54868 ((_ is Nil!3943) lt!120875))))

(assert (=> d!86187 (= (++!1050 lt!120875 (++!1050 lt!120869 lt!120870)) lt!122361)))

(declare-fun b!289568 () Bool)

(assert (=> b!289568 (= e!180227 (or (not (= (++!1050 lt!120869 lt!120870) Nil!3943)) (= lt!122361 lt!120875)))))

(assert (= (and d!86187 c!54868) b!289565))

(assert (= (and d!86187 (not c!54868)) b!289566))

(assert (= (and d!86187 res!132177) b!289567))

(assert (= (and b!289567 res!132178) b!289568))

(declare-fun m!376909 () Bool)

(assert (=> b!289567 m!376909))

(assert (=> b!289567 m!372019))

(assert (=> b!289567 m!371755))

(declare-fun m!376911 () Bool)

(assert (=> b!289567 m!376911))

(assert (=> b!289566 m!371755))

(declare-fun m!376913 () Bool)

(assert (=> b!289566 m!376913))

(declare-fun m!376915 () Bool)

(assert (=> d!86187 m!376915))

(assert (=> d!86187 m!372027))

(assert (=> d!86187 m!371755))

(declare-fun m!376917 () Bool)

(assert (=> d!86187 m!376917))

(assert (=> d!85139 d!86187))

(declare-fun d!86189 () Bool)

(assert (=> d!86189 (= (++!1050 (++!1050 lt!120875 lt!120869) lt!120870) (++!1050 lt!120875 (++!1050 lt!120869 lt!120870)))))

(assert (=> d!86189 true))

(declare-fun _$52!772 () Unit!5300)

(assert (=> d!86189 (= (choose!2593 lt!120875 lt!120869 lt!120870) _$52!772)))

(declare-fun bs!32883 () Bool)

(assert (= bs!32883 d!86189))

(assert (=> bs!32883 m!371739))

(assert (=> bs!32883 m!371739))

(assert (=> bs!32883 m!371747))

(assert (=> bs!32883 m!371755))

(assert (=> bs!32883 m!371755))

(assert (=> bs!32883 m!372381))

(assert (=> d!85139 d!86189))

(assert (=> d!85139 d!85137))

(assert (=> d!85139 d!85141))

(declare-fun d!86191 () Bool)

(declare-fun res!132179 () Bool)

(declare-fun e!180229 () Bool)

(assert (=> d!86191 (=> res!132179 e!180229)))

(assert (=> d!86191 (= res!132179 ((_ is Nil!3945) (list!1648 lt!120873)))))

(assert (=> d!86191 (= (forall!1016 (list!1648 lt!120873) lambda!9854) e!180229)))

(declare-fun b!289569 () Bool)

(declare-fun e!180230 () Bool)

(assert (=> b!289569 (= e!180229 e!180230)))

(declare-fun res!132180 () Bool)

(assert (=> b!289569 (=> (not res!132180) (not e!180230))))

(assert (=> b!289569 (= res!132180 (dynLambda!2094 lambda!9854 (h!9342 (list!1648 lt!120873))))))

(declare-fun b!289570 () Bool)

(assert (=> b!289570 (= e!180230 (forall!1016 (t!40183 (list!1648 lt!120873)) lambda!9854))))

(assert (= (and d!86191 (not res!132179)) b!289569))

(assert (= (and b!289569 res!132180) b!289570))

(declare-fun b_lambda!9655 () Bool)

(assert (=> (not b_lambda!9655) (not b!289569)))

(declare-fun m!376919 () Bool)

(assert (=> b!289569 m!376919))

(declare-fun m!376921 () Bool)

(assert (=> b!289570 m!376921))

(assert (=> d!85003 d!86191))

(assert (=> d!85003 d!85551))

(declare-fun d!86193 () Bool)

(declare-fun lt!122364 () Bool)

(assert (=> d!86193 (= lt!122364 (forall!1016 (list!1648 lt!120873) lambda!9854))))

(declare-fun forall!1022 (Conc!1333 Int) Bool)

(assert (=> d!86193 (= lt!122364 (forall!1022 (c!54356 lt!120873) lambda!9854))))

(assert (=> d!86193 (= (forall!1018 lt!120873 lambda!9854) lt!122364)))

(declare-fun bs!32884 () Bool)

(assert (= bs!32884 d!86193))

(assert (=> bs!32884 m!371825))

(assert (=> bs!32884 m!371825))

(assert (=> bs!32884 m!371827))

(declare-fun m!376923 () Bool)

(assert (=> bs!32884 m!376923))

(assert (=> d!85003 d!86193))

(assert (=> d!85003 d!85155))

(declare-fun d!86195 () Bool)

(assert (=> d!86195 (= (list!1645 lt!121081) (list!1649 (c!54354 lt!121081)))))

(declare-fun bs!32885 () Bool)

(assert (= bs!32885 d!86195))

(declare-fun m!376925 () Bool)

(assert (=> bs!32885 m!376925))

(assert (=> d!85135 d!86195))

(declare-fun d!86197 () Bool)

(declare-fun lt!122365 () Bool)

(assert (=> d!86197 (= lt!122365 (isEmpty!2618 (list!1645 (_2!2459 lt!120905))))))

(assert (=> d!86197 (= lt!122365 (isEmpty!2623 (c!54354 (_2!2459 lt!120905))))))

(assert (=> d!86197 (= (isEmpty!2615 (_2!2459 lt!120905)) lt!122365)))

(declare-fun bs!32886 () Bool)

(assert (= bs!32886 d!86197))

(declare-fun m!376927 () Bool)

(assert (=> bs!32886 m!376927))

(assert (=> bs!32886 m!376927))

(declare-fun m!376929 () Bool)

(assert (=> bs!32886 m!376929))

(declare-fun m!376931 () Bool)

(assert (=> bs!32886 m!376931))

(assert (=> b!287338 d!86197))

(declare-fun d!86199 () Bool)

(assert (=> d!86199 (= (isEmpty!2616 (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875))))) ((_ is Nil!3945) (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875))))))))

(assert (=> d!85029 d!86199))

(declare-fun d!86201 () Bool)

(assert (=> d!86201 (= (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875)))) (list!1650 (c!54356 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875))))))))

(declare-fun bs!32887 () Bool)

(assert (= bs!32887 d!86201))

(declare-fun m!376933 () Bool)

(assert (=> bs!32887 m!376933))

(assert (=> d!85029 d!86201))

(declare-fun lt!122368 () Bool)

(declare-fun d!86203 () Bool)

(assert (=> d!86203 (= lt!122368 (isEmpty!2616 (list!1650 (c!54356 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875)))))))))

(assert (=> d!86203 (= lt!122368 (= (size!3165 (c!54356 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875))))) 0))))

(assert (=> d!86203 (= (isEmpty!2617 (c!54356 (_1!2459 (lex!433 thiss!17480 rules!1920 (seqFromList!875 lt!120875))))) lt!122368)))

(declare-fun bs!32888 () Bool)

(assert (= bs!32888 d!86203))

(assert (=> bs!32888 m!376933))

(assert (=> bs!32888 m!376933))

(declare-fun m!376935 () Bool)

(assert (=> bs!32888 m!376935))

(declare-fun m!376937 () Bool)

(assert (=> bs!32888 m!376937))

(assert (=> d!85029 d!86203))

(declare-fun d!86205 () Bool)

(declare-fun lt!122369 () BalanceConc!2672)

(assert (=> d!86205 (= (list!1645 lt!122369) (originalCharacters!798 (ite c!54471 separatorToken!170 call!16287)))))

(assert (=> d!86205 (= lt!122369 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54471 separatorToken!170 call!16287)))) (value!25833 (ite c!54471 separatorToken!170 call!16287))))))

(assert (=> d!86205 (= (charsOf!398 (ite c!54471 separatorToken!170 call!16287)) lt!122369)))

(declare-fun b_lambda!9657 () Bool)

(assert (=> (not b_lambda!9657) (not d!86205)))

(declare-fun t!40525 () Bool)

(declare-fun tb!16923 () Bool)

(assert (=> (and b!287922 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54471 separatorToken!170 call!16287))))) t!40525) tb!16923))

(declare-fun tp!105600 () Bool)

(declare-fun e!180231 () Bool)

(declare-fun b!289571 () Bool)

(assert (=> b!289571 (= e!180231 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54471 separatorToken!170 call!16287)))) (value!25833 (ite c!54471 separatorToken!170 call!16287))))) tp!105600))))

(declare-fun result!20768 () Bool)

(assert (=> tb!16923 (= result!20768 (and (inv!4879 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (ite c!54471 separatorToken!170 call!16287)))) (value!25833 (ite c!54471 separatorToken!170 call!16287)))) e!180231))))

(assert (= tb!16923 b!289571))

(declare-fun m!376939 () Bool)

(assert (=> b!289571 m!376939))

(declare-fun m!376941 () Bool)

(assert (=> tb!16923 m!376941))

(assert (=> d!86205 t!40525))

(declare-fun b_and!23499 () Bool)

(assert (= b_and!23467 (and (=> t!40525 result!20768) b_and!23499)))

(declare-fun t!40527 () Bool)

(declare-fun tb!16925 () Bool)

(assert (=> (and b!287236 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54471 separatorToken!170 call!16287))))) t!40527) tb!16925))

(declare-fun result!20770 () Bool)

(assert (= result!20770 result!20768))

(assert (=> d!86205 t!40527))

(declare-fun b_and!23501 () Bool)

(assert (= b_and!23461 (and (=> t!40527 result!20770) b_and!23501)))

(declare-fun t!40529 () Bool)

(declare-fun tb!16927 () Bool)

(assert (=> (and b!287907 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54471 separatorToken!170 call!16287))))) t!40529) tb!16927))

(declare-fun result!20772 () Bool)

(assert (= result!20772 result!20768))

(assert (=> d!86205 t!40529))

(declare-fun b_and!23503 () Bool)

(assert (= b_and!23469 (and (=> t!40529 result!20772) b_and!23503)))

(declare-fun tb!16929 () Bool)

(declare-fun t!40531 () Bool)

(assert (=> (and b!287246 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54471 separatorToken!170 call!16287))))) t!40531) tb!16929))

(declare-fun result!20774 () Bool)

(assert (= result!20774 result!20768))

(assert (=> d!86205 t!40531))

(declare-fun b_and!23505 () Bool)

(assert (= b_and!23465 (and (=> t!40531 result!20774) b_and!23505)))

(declare-fun tb!16931 () Bool)

(declare-fun t!40533 () Bool)

(assert (=> (and b!287251 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54471 separatorToken!170 call!16287))))) t!40533) tb!16931))

(declare-fun result!20776 () Bool)

(assert (= result!20776 result!20768))

(assert (=> d!86205 t!40533))

(declare-fun b_and!23507 () Bool)

(assert (= b_and!23463 (and (=> t!40533 result!20776) b_and!23507)))

(declare-fun m!376943 () Bool)

(assert (=> d!86205 m!376943))

(declare-fun m!376945 () Bool)

(assert (=> d!86205 m!376945))

(assert (=> bm!16279 d!86205))

(declare-fun b!289572 () Bool)

(declare-fun e!180233 () Option!870)

(declare-fun lt!122372 () Option!870)

(declare-fun lt!122374 () Option!870)

(assert (=> b!289572 (= e!180233 (ite (and ((_ is None!869) lt!122372) ((_ is None!869) lt!122374)) None!869 (ite ((_ is None!869) lt!122374) lt!122372 (ite ((_ is None!869) lt!122372) lt!122374 (ite (>= (size!3157 (_1!2457 (v!14810 lt!122372))) (size!3157 (_1!2457 (v!14810 lt!122374)))) lt!122372 lt!122374)))))))

(declare-fun call!16396 () Option!870)

(assert (=> b!289572 (= lt!122372 call!16396)))

(assert (=> b!289572 (= lt!122374 (maxPrefix!357 thiss!17480 (t!40182 (t!40182 rules!1920)) lt!120875))))

(declare-fun b!289573 () Bool)

(assert (=> b!289573 (= e!180233 call!16396)))

(declare-fun b!289575 () Bool)

(declare-fun res!132184 () Bool)

(declare-fun e!180232 () Bool)

(assert (=> b!289575 (=> (not res!132184) (not e!180232))))

(declare-fun lt!122373 () Option!870)

(assert (=> b!289575 (= res!132184 (= (value!25833 (_1!2457 (get!1329 lt!122373))) (apply!844 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!122373)))) (seqFromList!875 (originalCharacters!798 (_1!2457 (get!1329 lt!122373)))))))))

(declare-fun b!289576 () Bool)

(declare-fun res!132185 () Bool)

(assert (=> b!289576 (=> (not res!132185) (not e!180232))))

(assert (=> b!289576 (= res!132185 (< (size!3163 (_2!2457 (get!1329 lt!122373))) (size!3163 lt!120875)))))

(declare-fun b!289577 () Bool)

(declare-fun res!132181 () Bool)

(assert (=> b!289577 (=> (not res!132181) (not e!180232))))

(assert (=> b!289577 (= res!132181 (= (++!1050 (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!122373)))) (_2!2457 (get!1329 lt!122373))) lt!120875))))

(declare-fun b!289578 () Bool)

(declare-fun e!180234 () Bool)

(assert (=> b!289578 (= e!180234 e!180232)))

(declare-fun res!132183 () Bool)

(assert (=> b!289578 (=> (not res!132183) (not e!180232))))

(assert (=> b!289578 (= res!132183 (isDefined!709 lt!122373))))

(declare-fun b!289579 () Bool)

(declare-fun res!132182 () Bool)

(assert (=> b!289579 (=> (not res!132182) (not e!180232))))

(assert (=> b!289579 (= res!132182 (= (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!122373)))) (originalCharacters!798 (_1!2457 (get!1329 lt!122373)))))))

(declare-fun d!86207 () Bool)

(assert (=> d!86207 e!180234))

(declare-fun res!132187 () Bool)

(assert (=> d!86207 (=> res!132187 e!180234)))

(assert (=> d!86207 (= res!132187 (isEmpty!2620 lt!122373))))

(assert (=> d!86207 (= lt!122373 e!180233)))

(declare-fun c!54869 () Bool)

(assert (=> d!86207 (= c!54869 (and ((_ is Cons!3944) (t!40182 rules!1920)) ((_ is Nil!3944) (t!40182 (t!40182 rules!1920)))))))

(declare-fun lt!122370 () Unit!5300)

(declare-fun lt!122371 () Unit!5300)

(assert (=> d!86207 (= lt!122370 lt!122371)))

(assert (=> d!86207 (isPrefix!419 lt!120875 lt!120875)))

(assert (=> d!86207 (= lt!122371 (lemmaIsPrefixRefl!225 lt!120875 lt!120875))))

(assert (=> d!86207 (rulesValidInductive!220 thiss!17480 (t!40182 rules!1920))))

(assert (=> d!86207 (= (maxPrefix!357 thiss!17480 (t!40182 rules!1920) lt!120875) lt!122373)))

(declare-fun b!289574 () Bool)

(assert (=> b!289574 (= e!180232 (contains!769 (t!40182 rules!1920) (rule!1354 (_1!2457 (get!1329 lt!122373)))))))

(declare-fun bm!16391 () Bool)

(assert (=> bm!16391 (= call!16396 (maxPrefixOneRule!159 thiss!17480 (h!9341 (t!40182 rules!1920)) lt!120875))))

(declare-fun b!289580 () Bool)

(declare-fun res!132186 () Bool)

(assert (=> b!289580 (=> (not res!132186) (not e!180232))))

(assert (=> b!289580 (= res!132186 (matchR!297 (regex!755 (rule!1354 (_1!2457 (get!1329 lt!122373)))) (list!1645 (charsOf!398 (_1!2457 (get!1329 lt!122373))))))))

(assert (= (and d!86207 c!54869) b!289573))

(assert (= (and d!86207 (not c!54869)) b!289572))

(assert (= (or b!289573 b!289572) bm!16391))

(assert (= (and d!86207 (not res!132187)) b!289578))

(assert (= (and b!289578 res!132183) b!289579))

(assert (= (and b!289579 res!132182) b!289576))

(assert (= (and b!289576 res!132185) b!289577))

(assert (= (and b!289577 res!132181) b!289575))

(assert (= (and b!289575 res!132184) b!289580))

(assert (= (and b!289580 res!132186) b!289574))

(declare-fun m!376947 () Bool)

(assert (=> b!289579 m!376947))

(declare-fun m!376949 () Bool)

(assert (=> b!289579 m!376949))

(assert (=> b!289579 m!376949))

(declare-fun m!376951 () Bool)

(assert (=> b!289579 m!376951))

(declare-fun m!376953 () Bool)

(assert (=> bm!16391 m!376953))

(assert (=> b!289574 m!376947))

(declare-fun m!376955 () Bool)

(assert (=> b!289574 m!376955))

(declare-fun m!376957 () Bool)

(assert (=> b!289578 m!376957))

(assert (=> b!289580 m!376947))

(assert (=> b!289580 m!376949))

(assert (=> b!289580 m!376949))

(assert (=> b!289580 m!376951))

(assert (=> b!289580 m!376951))

(declare-fun m!376959 () Bool)

(assert (=> b!289580 m!376959))

(assert (=> b!289577 m!376947))

(assert (=> b!289577 m!376949))

(assert (=> b!289577 m!376949))

(assert (=> b!289577 m!376951))

(assert (=> b!289577 m!376951))

(declare-fun m!376961 () Bool)

(assert (=> b!289577 m!376961))

(declare-fun m!376963 () Bool)

(assert (=> d!86207 m!376963))

(assert (=> d!86207 m!372495))

(assert (=> d!86207 m!372497))

(assert (=> d!86207 m!374477))

(assert (=> b!289576 m!376947))

(declare-fun m!376965 () Bool)

(assert (=> b!289576 m!376965))

(assert (=> b!289576 m!372019))

(assert (=> b!289575 m!376947))

(declare-fun m!376967 () Bool)

(assert (=> b!289575 m!376967))

(assert (=> b!289575 m!376967))

(declare-fun m!376969 () Bool)

(assert (=> b!289575 m!376969))

(declare-fun m!376971 () Bool)

(assert (=> b!289572 m!376971))

(assert (=> b!287685 d!86207))

(declare-fun d!86209 () Bool)

(declare-fun c!54870 () Bool)

(assert (=> d!86209 (= c!54870 ((_ is Nil!3943) lt!121086))))

(declare-fun e!180235 () (InoxSet C!2880))

(assert (=> d!86209 (= (content!579 lt!121086) e!180235)))

(declare-fun b!289581 () Bool)

(assert (=> b!289581 (= e!180235 ((as const (Array C!2880 Bool)) false))))

(declare-fun b!289582 () Bool)

(assert (=> b!289582 (= e!180235 ((_ map or) (store ((as const (Array C!2880 Bool)) false) (h!9340 lt!121086) true) (content!579 (t!40181 lt!121086))))))

(assert (= (and d!86209 c!54870) b!289581))

(assert (= (and d!86209 (not c!54870)) b!289582))

(declare-fun m!376973 () Bool)

(assert (=> b!289582 m!376973))

(declare-fun m!376975 () Bool)

(assert (=> b!289582 m!376975))

(assert (=> d!85141 d!86209))

(assert (=> d!85141 d!85353))

(assert (=> d!85141 d!85589))

(declare-fun bs!32889 () Bool)

(declare-fun d!86211 () Bool)

(assert (= bs!32889 (and d!86211 d!85591)))

(declare-fun lambda!9940 () Int)

(assert (=> bs!32889 (= (= (toValue!1502 (transformation!755 (h!9341 rules!1920))) (toValue!1502 (transformation!755 (rule!1354 (h!9342 tokens!465))))) (= lambda!9940 lambda!9894))))

(declare-fun bs!32890 () Bool)

(assert (= bs!32890 (and d!86211 d!85811)))

(assert (=> bs!32890 (= (= (toValue!1502 (transformation!755 (h!9341 rules!1920))) (toValue!1502 (transformation!755 (rule!1354 separatorToken!170)))) (= lambda!9940 lambda!9919))))

(assert (=> d!86211 true))

(assert (=> d!86211 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (dynLambda!2098 order!3121 lambda!9940))))

(assert (=> d!86211 (= (equivClasses!262 (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toValue!1502 (transformation!755 (h!9341 rules!1920)))) (Forall2!153 lambda!9940))))

(declare-fun bs!32891 () Bool)

(assert (= bs!32891 d!86211))

(declare-fun m!376977 () Bool)

(assert (=> bs!32891 m!376977))

(assert (=> b!287845 d!86211))

(declare-fun d!86213 () Bool)

(assert (=> d!86213 (= (list!1648 (singletonSeq!301 (h!9342 tokens!465))) (list!1650 (c!54356 (singletonSeq!301 (h!9342 tokens!465)))))))

(declare-fun bs!32892 () Bool)

(assert (= bs!32892 d!86213))

(declare-fun m!376979 () Bool)

(assert (=> bs!32892 m!376979))

(assert (=> d!85081 d!86213))

(assert (=> d!85081 d!85665))

(declare-fun d!86215 () Bool)

(assert (=> d!86215 (= (list!1648 (_1!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465)))))) (list!1650 (c!54356 (_1!2459 (lex!433 thiss!17480 rules!1920 (print!366 thiss!17480 (singletonSeq!301 (h!9342 tokens!465))))))))))

(declare-fun bs!32893 () Bool)

(assert (= bs!32893 d!86215))

(declare-fun m!376981 () Bool)

(assert (=> bs!32893 m!376981))

(assert (=> d!85081 d!86215))

(assert (=> d!85081 d!85155))

(assert (=> d!85081 d!85491))

(assert (=> d!85081 d!85167))

(declare-fun d!86217 () Bool)

(declare-fun lt!122375 () Int)

(assert (=> d!86217 (= lt!122375 (size!3164 (list!1648 (_1!2459 lt!120924))))))

(assert (=> d!86217 (= lt!122375 (size!3165 (c!54356 (_1!2459 lt!120924))))))

(assert (=> d!86217 (= (size!3161 (_1!2459 lt!120924)) lt!122375)))

(declare-fun bs!32894 () Bool)

(assert (= bs!32894 d!86217))

(assert (=> bs!32894 m!376407))

(assert (=> bs!32894 m!376407))

(declare-fun m!376983 () Bool)

(assert (=> bs!32894 m!376983))

(declare-fun m!376985 () Bool)

(assert (=> bs!32894 m!376985))

(assert (=> d!85081 d!86217))

(assert (=> bm!16287 d!85135))

(declare-fun b!289583 () Bool)

(declare-fun e!180237 () List!3953)

(assert (=> b!289583 (= e!180237 lt!120874)))

(declare-fun b!289585 () Bool)

(declare-fun res!132189 () Bool)

(declare-fun e!180236 () Bool)

(assert (=> b!289585 (=> (not res!132189) (not e!180236))))

(declare-fun lt!122376 () List!3953)

(assert (=> b!289585 (= res!132189 (= (size!3163 lt!122376) (+ (size!3163 (t!40181 lt!120875)) (size!3163 lt!120874))))))

(declare-fun b!289584 () Bool)

(assert (=> b!289584 (= e!180237 (Cons!3943 (h!9340 (t!40181 lt!120875)) (++!1050 (t!40181 (t!40181 lt!120875)) lt!120874)))))

(declare-fun d!86219 () Bool)

(assert (=> d!86219 e!180236))

(declare-fun res!132188 () Bool)

(assert (=> d!86219 (=> (not res!132188) (not e!180236))))

(assert (=> d!86219 (= res!132188 (= (content!579 lt!122376) ((_ map or) (content!579 (t!40181 lt!120875)) (content!579 lt!120874))))))

(assert (=> d!86219 (= lt!122376 e!180237)))

(declare-fun c!54871 () Bool)

(assert (=> d!86219 (= c!54871 ((_ is Nil!3943) (t!40181 lt!120875)))))

(assert (=> d!86219 (= (++!1050 (t!40181 lt!120875) lt!120874) lt!122376)))

(declare-fun b!289586 () Bool)

(assert (=> b!289586 (= e!180236 (or (not (= lt!120874 Nil!3943)) (= lt!122376 (t!40181 lt!120875))))))

(assert (= (and d!86219 c!54871) b!289583))

(assert (= (and d!86219 (not c!54871)) b!289584))

(assert (= (and d!86219 res!132188) b!289585))

(assert (= (and b!289585 res!132189) b!289586))

(declare-fun m!376987 () Bool)

(assert (=> b!289585 m!376987))

(assert (=> b!289585 m!373985))

(assert (=> b!289585 m!372361))

(declare-fun m!376989 () Bool)

(assert (=> b!289584 m!376989))

(declare-fun m!376991 () Bool)

(assert (=> d!86219 m!376991))

(assert (=> d!86219 m!373279))

(assert (=> d!86219 m!372367))

(assert (=> b!287629 d!86219))

(declare-fun b!289587 () Bool)

(declare-fun e!180238 () Bool)

(declare-fun tp!105601 () Bool)

(assert (=> b!289587 (= e!180238 (and tp_is_empty!1855 tp!105601))))

(assert (=> b!287905 (= tp!105452 e!180238)))

(assert (= (and b!287905 ((_ is Cons!3943) (originalCharacters!798 (h!9342 (t!40183 tokens!465))))) b!289587))

(declare-fun b!289590 () Bool)

(declare-fun e!180241 () Bool)

(assert (=> b!289590 (= e!180241 true)))

(declare-fun b!289589 () Bool)

(declare-fun e!180240 () Bool)

(assert (=> b!289589 (= e!180240 e!180241)))

(declare-fun b!289588 () Bool)

(declare-fun e!180239 () Bool)

(assert (=> b!289588 (= e!180239 e!180240)))

(assert (=> b!287868 e!180239))

(assert (= b!289589 b!289590))

(assert (= b!289588 b!289589))

(assert (= (and b!287868 ((_ is Cons!3944) (t!40182 rules!1920))) b!289588))

(assert (=> b!289590 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9878))))

(assert (=> b!289590 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9878))))

(declare-fun b!289593 () Bool)

(declare-fun e!180244 () Bool)

(assert (=> b!289593 (= e!180244 true)))

(declare-fun b!289592 () Bool)

(declare-fun e!180243 () Bool)

(assert (=> b!289592 (= e!180243 e!180244)))

(declare-fun b!289591 () Bool)

(declare-fun e!180242 () Bool)

(assert (=> b!289591 (= e!180242 e!180243)))

(assert (=> b!287608 e!180242))

(assert (= b!289592 b!289593))

(assert (= b!289591 b!289592))

(assert (= (and b!287608 ((_ is Cons!3944) (t!40182 rules!1920))) b!289591))

(assert (=> b!289593 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9872))))

(assert (=> b!289593 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9872))))

(declare-fun tp!105610 () Bool)

(declare-fun e!180249 () Bool)

(declare-fun tp!105609 () Bool)

(declare-fun b!289602 () Bool)

(assert (=> b!289602 (= e!180249 (and (inv!4878 (left!3260 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170))))) tp!105609 (inv!4878 (right!3590 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170))))) tp!105610))))

(declare-fun b!289604 () Bool)

(declare-fun e!180250 () Bool)

(declare-fun tp!105608 () Bool)

(assert (=> b!289604 (= e!180250 tp!105608)))

(declare-fun b!289603 () Bool)

(declare-fun inv!4884 (IArray!2665) Bool)

(assert (=> b!289603 (= e!180249 (and (inv!4884 (xs!3931 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170))))) e!180250))))

(assert (=> b!287465 (= tp!105358 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170)))) e!180249))))

(assert (= (and b!287465 ((_ is Node!1332) (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170))))) b!289602))

(assert (= b!289603 b!289604))

(assert (= (and b!287465 ((_ is Leaf!2049) (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (value!25833 separatorToken!170))))) b!289603))

(declare-fun m!376993 () Bool)

(assert (=> b!289602 m!376993))

(declare-fun m!376995 () Bool)

(assert (=> b!289602 m!376995))

(declare-fun m!376997 () Bool)

(assert (=> b!289603 m!376997))

(assert (=> b!287465 m!372077))

(declare-fun e!180251 () Bool)

(assert (=> b!287906 (= tp!105450 e!180251)))

(declare-fun b!289606 () Bool)

(declare-fun tp!105614 () Bool)

(declare-fun tp!105612 () Bool)

(assert (=> b!289606 (= e!180251 (and tp!105614 tp!105612))))

(declare-fun b!289608 () Bool)

(declare-fun tp!105613 () Bool)

(declare-fun tp!105615 () Bool)

(assert (=> b!289608 (= e!180251 (and tp!105613 tp!105615))))

(declare-fun b!289605 () Bool)

(assert (=> b!289605 (= e!180251 tp_is_empty!1855)))

(declare-fun b!289607 () Bool)

(declare-fun tp!105611 () Bool)

(assert (=> b!289607 (= e!180251 tp!105611)))

(assert (= (and b!287906 ((_ is ElementMatch!979) (regex!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) b!289605))

(assert (= (and b!287906 ((_ is Concat!1757) (regex!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) b!289606))

(assert (= (and b!287906 ((_ is Star!979) (regex!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) b!289607))

(assert (= (and b!287906 ((_ is Union!979) (regex!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) b!289608))

(declare-fun e!180252 () Bool)

(assert (=> b!287887 (= tp!105432 e!180252)))

(declare-fun b!289610 () Bool)

(declare-fun tp!105619 () Bool)

(declare-fun tp!105617 () Bool)

(assert (=> b!289610 (= e!180252 (and tp!105619 tp!105617))))

(declare-fun b!289612 () Bool)

(declare-fun tp!105618 () Bool)

(declare-fun tp!105620 () Bool)

(assert (=> b!289612 (= e!180252 (and tp!105618 tp!105620))))

(declare-fun b!289609 () Bool)

(assert (=> b!289609 (= e!180252 tp_is_empty!1855)))

(declare-fun b!289611 () Bool)

(declare-fun tp!105616 () Bool)

(assert (=> b!289611 (= e!180252 tp!105616)))

(assert (= (and b!287887 ((_ is ElementMatch!979) (regOne!2470 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289609))

(assert (= (and b!287887 ((_ is Concat!1757) (regOne!2470 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289610))

(assert (= (and b!287887 ((_ is Star!979) (regOne!2470 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289611))

(assert (= (and b!287887 ((_ is Union!979) (regOne!2470 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289612))

(declare-fun e!180253 () Bool)

(assert (=> b!287887 (= tp!105430 e!180253)))

(declare-fun b!289614 () Bool)

(declare-fun tp!105624 () Bool)

(declare-fun tp!105622 () Bool)

(assert (=> b!289614 (= e!180253 (and tp!105624 tp!105622))))

(declare-fun b!289616 () Bool)

(declare-fun tp!105623 () Bool)

(declare-fun tp!105625 () Bool)

(assert (=> b!289616 (= e!180253 (and tp!105623 tp!105625))))

(declare-fun b!289613 () Bool)

(assert (=> b!289613 (= e!180253 tp_is_empty!1855)))

(declare-fun b!289615 () Bool)

(declare-fun tp!105621 () Bool)

(assert (=> b!289615 (= e!180253 tp!105621)))

(assert (= (and b!287887 ((_ is ElementMatch!979) (regTwo!2470 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289613))

(assert (= (and b!287887 ((_ is Concat!1757) (regTwo!2470 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289614))

(assert (= (and b!287887 ((_ is Star!979) (regTwo!2470 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289615))

(assert (= (and b!287887 ((_ is Union!979) (regTwo!2470 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289616))

(declare-fun b!289619 () Bool)

(declare-fun e!180256 () Bool)

(assert (=> b!289619 (= e!180256 true)))

(declare-fun b!289618 () Bool)

(declare-fun e!180255 () Bool)

(assert (=> b!289618 (= e!180255 e!180256)))

(declare-fun b!289617 () Bool)

(declare-fun e!180254 () Bool)

(assert (=> b!289617 (= e!180254 e!180255)))

(assert (=> b!287855 e!180254))

(assert (= b!289618 b!289619))

(assert (= b!289617 b!289618))

(assert (= (and b!287855 ((_ is Cons!3944) (t!40182 rules!1920))) b!289617))

(assert (=> b!289619 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9877))))

(assert (=> b!289619 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9877))))

(declare-fun e!180257 () Bool)

(assert (=> b!287888 (= tp!105429 e!180257)))

(declare-fun b!289621 () Bool)

(declare-fun tp!105629 () Bool)

(declare-fun tp!105627 () Bool)

(assert (=> b!289621 (= e!180257 (and tp!105629 tp!105627))))

(declare-fun b!289623 () Bool)

(declare-fun tp!105628 () Bool)

(declare-fun tp!105630 () Bool)

(assert (=> b!289623 (= e!180257 (and tp!105628 tp!105630))))

(declare-fun b!289620 () Bool)

(assert (=> b!289620 (= e!180257 tp_is_empty!1855)))

(declare-fun b!289622 () Bool)

(declare-fun tp!105626 () Bool)

(assert (=> b!289622 (= e!180257 tp!105626)))

(assert (= (and b!287888 ((_ is ElementMatch!979) (reg!1308 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289620))

(assert (= (and b!287888 ((_ is Concat!1757) (reg!1308 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289621))

(assert (= (and b!287888 ((_ is Star!979) (reg!1308 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289622))

(assert (= (and b!287888 ((_ is Union!979) (reg!1308 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289623))

(declare-fun e!180258 () Bool)

(assert (=> b!287889 (= tp!105431 e!180258)))

(declare-fun b!289625 () Bool)

(declare-fun tp!105634 () Bool)

(declare-fun tp!105632 () Bool)

(assert (=> b!289625 (= e!180258 (and tp!105634 tp!105632))))

(declare-fun b!289627 () Bool)

(declare-fun tp!105633 () Bool)

(declare-fun tp!105635 () Bool)

(assert (=> b!289627 (= e!180258 (and tp!105633 tp!105635))))

(declare-fun b!289624 () Bool)

(assert (=> b!289624 (= e!180258 tp_is_empty!1855)))

(declare-fun b!289626 () Bool)

(declare-fun tp!105631 () Bool)

(assert (=> b!289626 (= e!180258 tp!105631)))

(assert (= (and b!287889 ((_ is ElementMatch!979) (regOne!2471 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289624))

(assert (= (and b!287889 ((_ is Concat!1757) (regOne!2471 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289625))

(assert (= (and b!287889 ((_ is Star!979) (regOne!2471 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289626))

(assert (= (and b!287889 ((_ is Union!979) (regOne!2471 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289627))

(declare-fun e!180259 () Bool)

(assert (=> b!287889 (= tp!105433 e!180259)))

(declare-fun b!289629 () Bool)

(declare-fun tp!105639 () Bool)

(declare-fun tp!105637 () Bool)

(assert (=> b!289629 (= e!180259 (and tp!105639 tp!105637))))

(declare-fun b!289631 () Bool)

(declare-fun tp!105638 () Bool)

(declare-fun tp!105640 () Bool)

(assert (=> b!289631 (= e!180259 (and tp!105638 tp!105640))))

(declare-fun b!289628 () Bool)

(assert (=> b!289628 (= e!180259 tp_is_empty!1855)))

(declare-fun b!289630 () Bool)

(declare-fun tp!105636 () Bool)

(assert (=> b!289630 (= e!180259 tp!105636)))

(assert (= (and b!287889 ((_ is ElementMatch!979) (regTwo!2471 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289628))

(assert (= (and b!287889 ((_ is Concat!1757) (regTwo!2471 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289629))

(assert (= (and b!287889 ((_ is Star!979) (regTwo!2471 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289630))

(assert (= (and b!287889 ((_ is Union!979) (regTwo!2471 (regex!755 (rule!1354 (h!9342 tokens!465)))))) b!289631))

(declare-fun b!289635 () Bool)

(declare-fun b_free!10565 () Bool)

(declare-fun b_next!10565 () Bool)

(assert (=> b!289635 (= b_free!10565 (not b_next!10565))))

(declare-fun tb!16933 () Bool)

(declare-fun t!40535 () Bool)

(assert (=> (and b!289635 (= (toValue!1502 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toValue!1502 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40535) tb!16933))

(declare-fun result!20780 () Bool)

(assert (= result!20780 result!20650))

(assert (=> d!86001 t!40535))

(declare-fun b_and!23509 () Bool)

(declare-fun tp!105641 () Bool)

(assert (=> b!289635 (= tp!105641 (and (=> t!40535 result!20780) b_and!23509))))

(declare-fun b_free!10567 () Bool)

(declare-fun b_next!10567 () Bool)

(assert (=> b!289635 (= b_free!10567 (not b_next!10567))))

(declare-fun t!40537 () Bool)

(declare-fun tb!16935 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465))))) t!40537) tb!16935))

(declare-fun result!20782 () Bool)

(assert (= result!20782 result!20448))

(assert (=> d!85135 t!40537))

(declare-fun t!40539 () Bool)

(declare-fun tb!16937 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54434 separatorToken!170 call!16263))))) t!40539) tb!16937))

(declare-fun result!20784 () Bool)

(assert (= result!20784 result!20672))

(assert (=> d!86075 t!40539))

(declare-fun t!40541 () Bool)

(declare-fun tb!16939 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))) t!40541) tb!16939))

(declare-fun result!20786 () Bool)

(assert (= result!20786 result!20682))

(assert (=> d!86101 t!40541))

(declare-fun t!40543 () Bool)

(declare-fun tb!16941 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) t!40543) tb!16941))

(declare-fun result!20788 () Bool)

(assert (= result!20788 result!20520))

(assert (=> d!85307 t!40543))

(declare-fun t!40545 () Bool)

(declare-fun tb!16943 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54433 call!16262 call!16263))))) t!40545) tb!16943))

(declare-fun result!20790 () Bool)

(assert (= result!20790 result!20580))

(assert (=> d!85669 t!40545))

(declare-fun t!40547 () Bool)

(declare-fun tb!16945 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54470 call!16286 call!16287))))) t!40547) tb!16945))

(declare-fun result!20792 () Bool)

(assert (= result!20792 result!20662))

(assert (=> d!86015 t!40547))

(declare-fun tb!16947 () Bool)

(declare-fun t!40549 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120863 0))))) t!40549) tb!16947))

(declare-fun result!20794 () Bool)

(assert (= result!20794 result!20640))

(assert (=> d!85969 t!40549))

(declare-fun t!40551 () Bool)

(declare-fun tb!16949 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170)))) t!40551) tb!16949))

(declare-fun result!20796 () Bool)

(assert (= result!20796 result!20456))

(assert (=> b!287463 t!40551))

(assert (=> b!289323 t!40543))

(declare-fun t!40553 () Bool)

(declare-fun tb!16951 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))) t!40553) tb!16951))

(declare-fun result!20798 () Bool)

(assert (= result!20798 result!20540))

(assert (=> d!85443 t!40553))

(declare-fun t!40555 () Bool)

(declare-fun tb!16953 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120873 0))))) t!40555) tb!16953))

(declare-fun result!20800 () Bool)

(assert (= result!20800 result!20570))

(assert (=> d!85569 t!40555))

(declare-fun tb!16955 () Bool)

(declare-fun t!40557 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54471 separatorToken!170 call!16287))))) t!40557) tb!16955))

(declare-fun result!20802 () Bool)

(assert (= result!20802 result!20768))

(assert (=> d!86205 t!40557))

(declare-fun tb!16957 () Bool)

(declare-fun t!40559 () Bool)

(assert (=> (and b!289635 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40559) tb!16957))

(declare-fun result!20804 () Bool)

(assert (= result!20804 result!20510))

(assert (=> d!85291 t!40559))

(assert (=> b!287451 t!40537))

(assert (=> d!85121 t!40551))

(declare-fun b_and!23511 () Bool)

(declare-fun tp!105645 () Bool)

(assert (=> b!289635 (= tp!105645 (and (=> t!40553 result!20798) (=> t!40557 result!20802) (=> t!40541 result!20786) (=> t!40537 result!20782) (=> t!40559 result!20804) (=> t!40549 result!20794) (=> t!40543 result!20788) (=> t!40555 result!20800) (=> t!40539 result!20784) (=> t!40551 result!20796) (=> t!40547 result!20792) (=> t!40545 result!20790) b_and!23511))))

(declare-fun e!180260 () Bool)

(declare-fun e!180261 () Bool)

(declare-fun b!289634 () Bool)

(declare-fun tp!105642 () Bool)

(assert (=> b!289634 (= e!180261 (and tp!105642 (inv!4871 (tag!971 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (inv!4875 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) e!180260))))

(declare-fun e!180262 () Bool)

(assert (=> b!287904 (= tp!105451 e!180262)))

(assert (=> b!289635 (= e!180260 (and tp!105641 tp!105645))))

(declare-fun tp!105643 () Bool)

(declare-fun b!289632 () Bool)

(declare-fun e!180264 () Bool)

(assert (=> b!289632 (= e!180262 (and (inv!4874 (h!9342 (t!40183 (t!40183 tokens!465)))) e!180264 tp!105643))))

(declare-fun b!289633 () Bool)

(declare-fun tp!105644 () Bool)

(assert (=> b!289633 (= e!180264 (and (inv!21 (value!25833 (h!9342 (t!40183 (t!40183 tokens!465))))) e!180261 tp!105644))))

(assert (= b!289634 b!289635))

(assert (= b!289633 b!289634))

(assert (= b!289632 b!289633))

(assert (= (and b!287904 ((_ is Cons!3945) (t!40183 (t!40183 tokens!465)))) b!289632))

(declare-fun m!376999 () Bool)

(assert (=> b!289634 m!376999))

(declare-fun m!377001 () Bool)

(assert (=> b!289634 m!377001))

(declare-fun m!377003 () Bool)

(assert (=> b!289632 m!377003))

(declare-fun m!377005 () Bool)

(assert (=> b!289633 m!377005))

(declare-fun e!180266 () Bool)

(declare-fun tp!105648 () Bool)

(declare-fun b!289636 () Bool)

(declare-fun tp!105647 () Bool)

(assert (=> b!289636 (= e!180266 (and (inv!4878 (left!3260 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465)))))) tp!105647 (inv!4878 (right!3590 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465)))))) tp!105648))))

(declare-fun b!289638 () Bool)

(declare-fun e!180267 () Bool)

(declare-fun tp!105646 () Bool)

(assert (=> b!289638 (= e!180267 tp!105646)))

(declare-fun b!289637 () Bool)

(assert (=> b!289637 (= e!180266 (and (inv!4884 (xs!3931 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465)))))) e!180267))))

(assert (=> b!287457 (= tp!105357 (and (inv!4878 (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465))))) e!180266))))

(assert (= (and b!287457 ((_ is Node!1332) (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465)))))) b!289636))

(assert (= b!289637 b!289638))

(assert (= (and b!287457 ((_ is Leaf!2049) (c!54354 (dynLambda!2095 (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (value!25833 (h!9342 tokens!465)))))) b!289637))

(declare-fun m!377007 () Bool)

(assert (=> b!289636 m!377007))

(declare-fun m!377009 () Bool)

(assert (=> b!289636 m!377009))

(declare-fun m!377011 () Bool)

(assert (=> b!289637 m!377011))

(assert (=> b!287457 m!372059))

(declare-fun b!289641 () Bool)

(declare-fun e!180270 () Bool)

(assert (=> b!289641 (= e!180270 true)))

(declare-fun b!289640 () Bool)

(declare-fun e!180269 () Bool)

(assert (=> b!289640 (= e!180269 e!180270)))

(declare-fun b!289639 () Bool)

(declare-fun e!180268 () Bool)

(assert (=> b!289639 (= e!180268 e!180269)))

(assert (=> b!287909 e!180268))

(assert (= b!289640 b!289641))

(assert (= b!289639 b!289640))

(assert (= (and b!287909 ((_ is Cons!3944) (t!40182 (t!40182 rules!1920)))) b!289639))

(assert (=> b!289641 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920)))))) (dynLambda!2090 order!3115 lambda!9844))))

(assert (=> b!289641 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920)))))) (dynLambda!2090 order!3115 lambda!9844))))

(declare-fun b!289644 () Bool)

(declare-fun e!180273 () Bool)

(assert (=> b!289644 (= e!180273 true)))

(declare-fun b!289643 () Bool)

(declare-fun e!180272 () Bool)

(assert (=> b!289643 (= e!180272 e!180273)))

(declare-fun b!289642 () Bool)

(declare-fun e!180271 () Bool)

(assert (=> b!289642 (= e!180271 e!180272)))

(assert (=> b!287527 e!180271))

(assert (= b!289643 b!289644))

(assert (= b!289642 b!289643))

(assert (= (and b!287527 ((_ is Cons!3944) (t!40182 rules!1920))) b!289642))

(assert (=> b!289644 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9860))))

(assert (=> b!289644 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9860))))

(declare-fun b!289645 () Bool)

(declare-fun e!180274 () Bool)

(declare-fun tp!105649 () Bool)

(assert (=> b!289645 (= e!180274 (and tp_is_empty!1855 tp!105649))))

(assert (=> b!287875 (= tp!105418 e!180274)))

(assert (= (and b!287875 ((_ is Cons!3943) (t!40181 (originalCharacters!798 separatorToken!170)))) b!289645))

(declare-fun e!180275 () Bool)

(assert (=> b!287924 (= tp!105470 e!180275)))

(declare-fun b!289647 () Bool)

(declare-fun tp!105653 () Bool)

(declare-fun tp!105651 () Bool)

(assert (=> b!289647 (= e!180275 (and tp!105653 tp!105651))))

(declare-fun b!289649 () Bool)

(declare-fun tp!105652 () Bool)

(declare-fun tp!105654 () Bool)

(assert (=> b!289649 (= e!180275 (and tp!105652 tp!105654))))

(declare-fun b!289646 () Bool)

(assert (=> b!289646 (= e!180275 tp_is_empty!1855)))

(declare-fun b!289648 () Bool)

(declare-fun tp!105650 () Bool)

(assert (=> b!289648 (= e!180275 tp!105650)))

(assert (= (and b!287924 ((_ is ElementMatch!979) (regOne!2470 (regex!755 (h!9341 rules!1920))))) b!289646))

(assert (= (and b!287924 ((_ is Concat!1757) (regOne!2470 (regex!755 (h!9341 rules!1920))))) b!289647))

(assert (= (and b!287924 ((_ is Star!979) (regOne!2470 (regex!755 (h!9341 rules!1920))))) b!289648))

(assert (= (and b!287924 ((_ is Union!979) (regOne!2470 (regex!755 (h!9341 rules!1920))))) b!289649))

(declare-fun e!180276 () Bool)

(assert (=> b!287924 (= tp!105468 e!180276)))

(declare-fun b!289651 () Bool)

(declare-fun tp!105658 () Bool)

(declare-fun tp!105656 () Bool)

(assert (=> b!289651 (= e!180276 (and tp!105658 tp!105656))))

(declare-fun b!289653 () Bool)

(declare-fun tp!105657 () Bool)

(declare-fun tp!105659 () Bool)

(assert (=> b!289653 (= e!180276 (and tp!105657 tp!105659))))

(declare-fun b!289650 () Bool)

(assert (=> b!289650 (= e!180276 tp_is_empty!1855)))

(declare-fun b!289652 () Bool)

(declare-fun tp!105655 () Bool)

(assert (=> b!289652 (= e!180276 tp!105655)))

(assert (= (and b!287924 ((_ is ElementMatch!979) (regTwo!2470 (regex!755 (h!9341 rules!1920))))) b!289650))

(assert (= (and b!287924 ((_ is Concat!1757) (regTwo!2470 (regex!755 (h!9341 rules!1920))))) b!289651))

(assert (= (and b!287924 ((_ is Star!979) (regTwo!2470 (regex!755 (h!9341 rules!1920))))) b!289652))

(assert (= (and b!287924 ((_ is Union!979) (regTwo!2470 (regex!755 (h!9341 rules!1920))))) b!289653))

(declare-fun e!180277 () Bool)

(assert (=> b!287891 (= tp!105437 e!180277)))

(declare-fun b!289655 () Bool)

(declare-fun tp!105663 () Bool)

(declare-fun tp!105661 () Bool)

(assert (=> b!289655 (= e!180277 (and tp!105663 tp!105661))))

(declare-fun b!289657 () Bool)

(declare-fun tp!105662 () Bool)

(declare-fun tp!105664 () Bool)

(assert (=> b!289657 (= e!180277 (and tp!105662 tp!105664))))

(declare-fun b!289654 () Bool)

(assert (=> b!289654 (= e!180277 tp_is_empty!1855)))

(declare-fun b!289656 () Bool)

(declare-fun tp!105660 () Bool)

(assert (=> b!289656 (= e!180277 tp!105660)))

(assert (= (and b!287891 ((_ is ElementMatch!979) (regOne!2470 (regex!755 (rule!1354 separatorToken!170))))) b!289654))

(assert (= (and b!287891 ((_ is Concat!1757) (regOne!2470 (regex!755 (rule!1354 separatorToken!170))))) b!289655))

(assert (= (and b!287891 ((_ is Star!979) (regOne!2470 (regex!755 (rule!1354 separatorToken!170))))) b!289656))

(assert (= (and b!287891 ((_ is Union!979) (regOne!2470 (regex!755 (rule!1354 separatorToken!170))))) b!289657))

(declare-fun e!180278 () Bool)

(assert (=> b!287891 (= tp!105435 e!180278)))

(declare-fun b!289659 () Bool)

(declare-fun tp!105668 () Bool)

(declare-fun tp!105666 () Bool)

(assert (=> b!289659 (= e!180278 (and tp!105668 tp!105666))))

(declare-fun b!289661 () Bool)

(declare-fun tp!105667 () Bool)

(declare-fun tp!105669 () Bool)

(assert (=> b!289661 (= e!180278 (and tp!105667 tp!105669))))

(declare-fun b!289658 () Bool)

(assert (=> b!289658 (= e!180278 tp_is_empty!1855)))

(declare-fun b!289660 () Bool)

(declare-fun tp!105665 () Bool)

(assert (=> b!289660 (= e!180278 tp!105665)))

(assert (= (and b!287891 ((_ is ElementMatch!979) (regTwo!2470 (regex!755 (rule!1354 separatorToken!170))))) b!289658))

(assert (= (and b!287891 ((_ is Concat!1757) (regTwo!2470 (regex!755 (rule!1354 separatorToken!170))))) b!289659))

(assert (= (and b!287891 ((_ is Star!979) (regTwo!2470 (regex!755 (rule!1354 separatorToken!170))))) b!289660))

(assert (= (and b!287891 ((_ is Union!979) (regTwo!2470 (regex!755 (rule!1354 separatorToken!170))))) b!289661))

(declare-fun e!180279 () Bool)

(assert (=> b!287892 (= tp!105434 e!180279)))

(declare-fun b!289663 () Bool)

(declare-fun tp!105673 () Bool)

(declare-fun tp!105671 () Bool)

(assert (=> b!289663 (= e!180279 (and tp!105673 tp!105671))))

(declare-fun b!289665 () Bool)

(declare-fun tp!105672 () Bool)

(declare-fun tp!105674 () Bool)

(assert (=> b!289665 (= e!180279 (and tp!105672 tp!105674))))

(declare-fun b!289662 () Bool)

(assert (=> b!289662 (= e!180279 tp_is_empty!1855)))

(declare-fun b!289664 () Bool)

(declare-fun tp!105670 () Bool)

(assert (=> b!289664 (= e!180279 tp!105670)))

(assert (= (and b!287892 ((_ is ElementMatch!979) (reg!1308 (regex!755 (rule!1354 separatorToken!170))))) b!289662))

(assert (= (and b!287892 ((_ is Concat!1757) (reg!1308 (regex!755 (rule!1354 separatorToken!170))))) b!289663))

(assert (= (and b!287892 ((_ is Star!979) (reg!1308 (regex!755 (rule!1354 separatorToken!170))))) b!289664))

(assert (= (and b!287892 ((_ is Union!979) (reg!1308 (regex!755 (rule!1354 separatorToken!170))))) b!289665))

(declare-fun e!180280 () Bool)

(assert (=> b!287893 (= tp!105436 e!180280)))

(declare-fun b!289667 () Bool)

(declare-fun tp!105678 () Bool)

(declare-fun tp!105676 () Bool)

(assert (=> b!289667 (= e!180280 (and tp!105678 tp!105676))))

(declare-fun b!289669 () Bool)

(declare-fun tp!105677 () Bool)

(declare-fun tp!105679 () Bool)

(assert (=> b!289669 (= e!180280 (and tp!105677 tp!105679))))

(declare-fun b!289666 () Bool)

(assert (=> b!289666 (= e!180280 tp_is_empty!1855)))

(declare-fun b!289668 () Bool)

(declare-fun tp!105675 () Bool)

(assert (=> b!289668 (= e!180280 tp!105675)))

(assert (= (and b!287893 ((_ is ElementMatch!979) (regOne!2471 (regex!755 (rule!1354 separatorToken!170))))) b!289666))

(assert (= (and b!287893 ((_ is Concat!1757) (regOne!2471 (regex!755 (rule!1354 separatorToken!170))))) b!289667))

(assert (= (and b!287893 ((_ is Star!979) (regOne!2471 (regex!755 (rule!1354 separatorToken!170))))) b!289668))

(assert (= (and b!287893 ((_ is Union!979) (regOne!2471 (regex!755 (rule!1354 separatorToken!170))))) b!289669))

(declare-fun e!180281 () Bool)

(assert (=> b!287893 (= tp!105438 e!180281)))

(declare-fun b!289671 () Bool)

(declare-fun tp!105683 () Bool)

(declare-fun tp!105681 () Bool)

(assert (=> b!289671 (= e!180281 (and tp!105683 tp!105681))))

(declare-fun b!289673 () Bool)

(declare-fun tp!105682 () Bool)

(declare-fun tp!105684 () Bool)

(assert (=> b!289673 (= e!180281 (and tp!105682 tp!105684))))

(declare-fun b!289670 () Bool)

(assert (=> b!289670 (= e!180281 tp_is_empty!1855)))

(declare-fun b!289672 () Bool)

(declare-fun tp!105680 () Bool)

(assert (=> b!289672 (= e!180281 tp!105680)))

(assert (= (and b!287893 ((_ is ElementMatch!979) (regTwo!2471 (regex!755 (rule!1354 separatorToken!170))))) b!289670))

(assert (= (and b!287893 ((_ is Concat!1757) (regTwo!2471 (regex!755 (rule!1354 separatorToken!170))))) b!289671))

(assert (= (and b!287893 ((_ is Star!979) (regTwo!2471 (regex!755 (rule!1354 separatorToken!170))))) b!289672))

(assert (= (and b!287893 ((_ is Union!979) (regTwo!2471 (regex!755 (rule!1354 separatorToken!170))))) b!289673))

(declare-fun b!289676 () Bool)

(declare-fun e!180284 () Bool)

(assert (=> b!289676 (= e!180284 true)))

(declare-fun b!289675 () Bool)

(declare-fun e!180283 () Bool)

(assert (=> b!289675 (= e!180283 e!180284)))

(declare-fun b!289674 () Bool)

(declare-fun e!180282 () Bool)

(assert (=> b!289674 (= e!180282 e!180283)))

(assert (=> b!287301 e!180282))

(assert (= b!289675 b!289676))

(assert (= b!289674 b!289675))

(assert (= (and b!287301 ((_ is Cons!3944) (t!40182 rules!1920))) b!289674))

(assert (=> b!289676 (< (dynLambda!2089 order!3113 (toValue!1502 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9854))))

(assert (=> b!289676 (< (dynLambda!2091 order!3117 (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920))))) (dynLambda!2090 order!3115 lambda!9854))))

(declare-fun b!289677 () Bool)

(declare-fun e!180285 () Bool)

(declare-fun tp!105685 () Bool)

(assert (=> b!289677 (= e!180285 (and tp_is_empty!1855 tp!105685))))

(assert (=> b!287908 (= tp!105454 e!180285)))

(assert (= (and b!287908 ((_ is Cons!3943) (t!40181 (originalCharacters!798 (h!9342 tokens!465))))) b!289677))

(declare-fun b!289680 () Bool)

(declare-fun b_free!10569 () Bool)

(declare-fun b_next!10569 () Bool)

(assert (=> b!289680 (= b_free!10569 (not b_next!10569))))

(declare-fun t!40561 () Bool)

(declare-fun tb!16959 () Bool)

(assert (=> (and b!289680 (= (toValue!1502 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toValue!1502 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40561) tb!16959))

(declare-fun result!20806 () Bool)

(assert (= result!20806 result!20650))

(assert (=> d!86001 t!40561))

(declare-fun tp!105689 () Bool)

(declare-fun b_and!23513 () Bool)

(assert (=> b!289680 (= tp!105689 (and (=> t!40561 result!20806) b_and!23513))))

(declare-fun b_free!10571 () Bool)

(declare-fun b_next!10571 () Bool)

(assert (=> b!289680 (= b_free!10571 (not b_next!10571))))

(declare-fun tb!16961 () Bool)

(declare-fun t!40563 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465))))) t!40563) tb!16961))

(declare-fun result!20808 () Bool)

(assert (= result!20808 result!20448))

(assert (=> d!85135 t!40563))

(declare-fun t!40565 () Bool)

(declare-fun tb!16963 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54434 separatorToken!170 call!16263))))) t!40565) tb!16963))

(declare-fun result!20810 () Bool)

(assert (= result!20810 result!20672))

(assert (=> d!86075 t!40565))

(declare-fun tb!16965 () Bool)

(declare-fun t!40567 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (Cons!3945 (h!9342 tokens!465) Nil!3945)))))) t!40567) tb!16965))

(declare-fun result!20812 () Bool)

(assert (= result!20812 result!20682))

(assert (=> d!86101 t!40567))

(declare-fun t!40569 () Bool)

(declare-fun tb!16967 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465)))))) t!40569) tb!16967))

(declare-fun result!20814 () Bool)

(assert (= result!20814 result!20520))

(assert (=> d!85307 t!40569))

(declare-fun tb!16969 () Bool)

(declare-fun t!40571 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54433 call!16262 call!16263))))) t!40571) tb!16969))

(declare-fun result!20816 () Bool)

(assert (= result!20816 result!20580))

(assert (=> d!85669 t!40571))

(declare-fun t!40573 () Bool)

(declare-fun tb!16971 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54470 call!16286 call!16287))))) t!40573) tb!16971))

(declare-fun result!20818 () Bool)

(assert (= result!20818 result!20662))

(assert (=> d!86015 t!40573))

(declare-fun tb!16973 () Bool)

(declare-fun t!40575 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120863 0))))) t!40575) tb!16973))

(declare-fun result!20820 () Bool)

(assert (= result!20820 result!20640))

(assert (=> d!85969 t!40575))

(declare-fun t!40577 () Bool)

(declare-fun tb!16975 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 separatorToken!170)))) t!40577) tb!16975))

(declare-fun result!20822 () Bool)

(assert (= result!20822 result!20456))

(assert (=> b!287463 t!40577))

(assert (=> b!289323 t!40569))

(declare-fun tb!16977 () Bool)

(declare-fun t!40579 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0))))) t!40579) tb!16977))

(declare-fun result!20824 () Bool)

(assert (= result!20824 result!20540))

(assert (=> d!85443 t!40579))

(declare-fun t!40581 () Bool)

(declare-fun tb!16979 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (apply!840 lt!120873 0))))) t!40581) tb!16979))

(declare-fun result!20826 () Bool)

(assert (= result!20826 result!20570))

(assert (=> d!85569 t!40581))

(declare-fun t!40583 () Bool)

(declare-fun tb!16981 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (ite c!54471 separatorToken!170 call!16287))))) t!40583) tb!16981))

(declare-fun result!20828 () Bool)

(assert (= result!20828 result!20768))

(assert (=> d!86205 t!40583))

(declare-fun t!40585 () Bool)

(declare-fun tb!16983 () Bool)

(assert (=> (and b!289680 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (_1!2457 (get!1329 lt!121107)))))) t!40585) tb!16983))

(declare-fun result!20830 () Bool)

(assert (= result!20830 result!20510))

(assert (=> d!85291 t!40585))

(assert (=> b!287451 t!40563))

(assert (=> d!85121 t!40577))

(declare-fun b_and!23515 () Bool)

(declare-fun tp!105687 () Bool)

(assert (=> b!289680 (= tp!105687 (and (=> t!40573 result!20818) (=> t!40567 result!20812) (=> t!40563 result!20808) (=> t!40565 result!20810) (=> t!40583 result!20828) (=> t!40579 result!20824) (=> t!40569 result!20814) (=> t!40577 result!20822) (=> t!40571 result!20816) (=> t!40575 result!20820) (=> t!40585 result!20830) (=> t!40581 result!20826) b_and!23515))))

(declare-fun e!180286 () Bool)

(assert (=> b!289680 (= e!180286 (and tp!105689 tp!105687))))

(declare-fun b!289679 () Bool)

(declare-fun tp!105688 () Bool)

(declare-fun e!180288 () Bool)

(assert (=> b!289679 (= e!180288 (and tp!105688 (inv!4871 (tag!971 (h!9341 (t!40182 (t!40182 rules!1920))))) (inv!4875 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) e!180286))))

(declare-fun b!289678 () Bool)

(declare-fun e!180287 () Bool)

(declare-fun tp!105686 () Bool)

(assert (=> b!289678 (= e!180287 (and e!180288 tp!105686))))

(assert (=> b!287920 (= tp!105463 e!180287)))

(assert (= b!289679 b!289680))

(assert (= b!289678 b!289679))

(assert (= (and b!287920 ((_ is Cons!3944) (t!40182 (t!40182 rules!1920)))) b!289678))

(declare-fun m!377013 () Bool)

(assert (=> b!289679 m!377013))

(declare-fun m!377015 () Bool)

(assert (=> b!289679 m!377015))

(declare-fun e!180290 () Bool)

(assert (=> b!287921 (= tp!105465 e!180290)))

(declare-fun b!289682 () Bool)

(declare-fun tp!105693 () Bool)

(declare-fun tp!105691 () Bool)

(assert (=> b!289682 (= e!180290 (and tp!105693 tp!105691))))

(declare-fun b!289684 () Bool)

(declare-fun tp!105692 () Bool)

(declare-fun tp!105694 () Bool)

(assert (=> b!289684 (= e!180290 (and tp!105692 tp!105694))))

(declare-fun b!289681 () Bool)

(assert (=> b!289681 (= e!180290 tp_is_empty!1855)))

(declare-fun b!289683 () Bool)

(declare-fun tp!105690 () Bool)

(assert (=> b!289683 (= e!180290 tp!105690)))

(assert (= (and b!287921 ((_ is ElementMatch!979) (regex!755 (h!9341 (t!40182 rules!1920))))) b!289681))

(assert (= (and b!287921 ((_ is Concat!1757) (regex!755 (h!9341 (t!40182 rules!1920))))) b!289682))

(assert (= (and b!287921 ((_ is Star!979) (regex!755 (h!9341 (t!40182 rules!1920))))) b!289683))

(assert (= (and b!287921 ((_ is Union!979) (regex!755 (h!9341 (t!40182 rules!1920))))) b!289684))

(declare-fun e!180291 () Bool)

(assert (=> b!287925 (= tp!105467 e!180291)))

(declare-fun b!289686 () Bool)

(declare-fun tp!105698 () Bool)

(declare-fun tp!105696 () Bool)

(assert (=> b!289686 (= e!180291 (and tp!105698 tp!105696))))

(declare-fun b!289688 () Bool)

(declare-fun tp!105697 () Bool)

(declare-fun tp!105699 () Bool)

(assert (=> b!289688 (= e!180291 (and tp!105697 tp!105699))))

(declare-fun b!289685 () Bool)

(assert (=> b!289685 (= e!180291 tp_is_empty!1855)))

(declare-fun b!289687 () Bool)

(declare-fun tp!105695 () Bool)

(assert (=> b!289687 (= e!180291 tp!105695)))

(assert (= (and b!287925 ((_ is ElementMatch!979) (reg!1308 (regex!755 (h!9341 rules!1920))))) b!289685))

(assert (= (and b!287925 ((_ is Concat!1757) (reg!1308 (regex!755 (h!9341 rules!1920))))) b!289686))

(assert (= (and b!287925 ((_ is Star!979) (reg!1308 (regex!755 (h!9341 rules!1920))))) b!289687))

(assert (= (and b!287925 ((_ is Union!979) (reg!1308 (regex!755 (h!9341 rules!1920))))) b!289688))

(declare-fun e!180292 () Bool)

(assert (=> b!287926 (= tp!105469 e!180292)))

(declare-fun b!289690 () Bool)

(declare-fun tp!105703 () Bool)

(declare-fun tp!105701 () Bool)

(assert (=> b!289690 (= e!180292 (and tp!105703 tp!105701))))

(declare-fun b!289692 () Bool)

(declare-fun tp!105702 () Bool)

(declare-fun tp!105704 () Bool)

(assert (=> b!289692 (= e!180292 (and tp!105702 tp!105704))))

(declare-fun b!289689 () Bool)

(assert (=> b!289689 (= e!180292 tp_is_empty!1855)))

(declare-fun b!289691 () Bool)

(declare-fun tp!105700 () Bool)

(assert (=> b!289691 (= e!180292 tp!105700)))

(assert (= (and b!287926 ((_ is ElementMatch!979) (regOne!2471 (regex!755 (h!9341 rules!1920))))) b!289689))

(assert (= (and b!287926 ((_ is Concat!1757) (regOne!2471 (regex!755 (h!9341 rules!1920))))) b!289690))

(assert (= (and b!287926 ((_ is Star!979) (regOne!2471 (regex!755 (h!9341 rules!1920))))) b!289691))

(assert (= (and b!287926 ((_ is Union!979) (regOne!2471 (regex!755 (h!9341 rules!1920))))) b!289692))

(declare-fun e!180293 () Bool)

(assert (=> b!287926 (= tp!105471 e!180293)))

(declare-fun b!289694 () Bool)

(declare-fun tp!105708 () Bool)

(declare-fun tp!105706 () Bool)

(assert (=> b!289694 (= e!180293 (and tp!105708 tp!105706))))

(declare-fun b!289696 () Bool)

(declare-fun tp!105707 () Bool)

(declare-fun tp!105709 () Bool)

(assert (=> b!289696 (= e!180293 (and tp!105707 tp!105709))))

(declare-fun b!289693 () Bool)

(assert (=> b!289693 (= e!180293 tp_is_empty!1855)))

(declare-fun b!289695 () Bool)

(declare-fun tp!105705 () Bool)

(assert (=> b!289695 (= e!180293 tp!105705)))

(assert (= (and b!287926 ((_ is ElementMatch!979) (regTwo!2471 (regex!755 (h!9341 rules!1920))))) b!289693))

(assert (= (and b!287926 ((_ is Concat!1757) (regTwo!2471 (regex!755 (h!9341 rules!1920))))) b!289694))

(assert (= (and b!287926 ((_ is Star!979) (regTwo!2471 (regex!755 (h!9341 rules!1920))))) b!289695))

(assert (= (and b!287926 ((_ is Union!979) (regTwo!2471 (regex!755 (h!9341 rules!1920))))) b!289696))

(declare-fun b_lambda!9659 () Bool)

(assert (= b_lambda!9587 (or b!287848 b_lambda!9659)))

(declare-fun bs!32895 () Bool)

(declare-fun d!86221 () Bool)

(assert (= bs!32895 (and d!86221 b!287848)))

(assert (=> bs!32895 (= (dynLambda!2094 lambda!9877 (apply!840 lt!120873 0)) (rulesProduceIndividualToken!390 thiss!17480 rules!1920 (apply!840 lt!120873 0)))))

(assert (=> bs!32895 m!372741))

(declare-fun m!377017 () Bool)

(assert (=> bs!32895 m!377017))

(assert (=> d!85583 d!86221))

(declare-fun b_lambda!9661 () Bool)

(assert (= b_lambda!9621 (or b!287521 b_lambda!9661)))

(declare-fun bs!32896 () Bool)

(declare-fun d!86223 () Bool)

(assert (= bs!32896 (and d!86223 b!287521)))

(assert (=> bs!32896 (= (dynLambda!2094 lambda!9860 (h!9342 (t!40183 tokens!465))) (rulesProduceIndividualToken!390 thiss!17480 rules!1920 (h!9342 (t!40183 tokens!465))))))

(declare-fun m!377019 () Bool)

(assert (=> bs!32896 m!377019))

(assert (=> d!86063 d!86223))

(declare-fun b_lambda!9663 () Bool)

(assert (= b_lambda!9571 (or (and b!287922 b_free!10555 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) (and b!287246 b_free!10531 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) (and b!289680 b_free!10571 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) (and b!287236 b_free!10535 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) (and b!287907 b_free!10551) (and b!287251 b_free!10539 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) (and b!289635 b_free!10567 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) b_lambda!9663)))

(declare-fun b_lambda!9665 () Bool)

(assert (= b_lambda!9601 (or b!287250 b_lambda!9665)))

(assert (=> d!85817 d!85211))

(declare-fun b_lambda!9667 () Bool)

(assert (= b_lambda!9625 (or (and b!287922 b_free!10555 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 rules!1920)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) (and b!287246 b_free!10531 (= (toChars!1361 (transformation!755 (rule!1354 separatorToken!170))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) (and b!289680 b_free!10571 (= (toChars!1361 (transformation!755 (h!9341 (t!40182 (t!40182 rules!1920))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) (and b!287236 b_free!10535 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 tokens!465)))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) (and b!287907 b_free!10551) (and b!287251 b_free!10539 (= (toChars!1361 (transformation!755 (h!9341 rules!1920))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) (and b!289635 b_free!10567 (= (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 (t!40183 tokens!465)))))) (toChars!1361 (transformation!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))) b_lambda!9667)))

(declare-fun b_lambda!9669 () Bool)

(assert (= b_lambda!9655 (or d!85003 b_lambda!9669)))

(declare-fun bs!32897 () Bool)

(declare-fun d!86225 () Bool)

(assert (= bs!32897 (and d!86225 d!85003)))

(assert (=> bs!32897 (= (dynLambda!2094 lambda!9854 (h!9342 (list!1648 lt!120873))) (rulesProduceIndividualToken!390 thiss!17480 rules!1920 (h!9342 (list!1648 lt!120873))))))

(assert (=> bs!32897 m!376217))

(assert (=> b!289569 d!86225))

(declare-fun b_lambda!9671 () Bool)

(assert (= b_lambda!9581 (or b!287244 b_lambda!9671)))

(declare-fun bs!32898 () Bool)

(declare-fun d!86227 () Bool)

(assert (= bs!32898 (and d!86227 b!287244)))

(assert (=> bs!32898 (= (dynLambda!2094 lambda!9843 (h!9342 (t!40183 tokens!465))) (not (isSeparator!755 (rule!1354 (h!9342 (t!40183 tokens!465))))))))

(assert (=> b!288365 d!86227))

(declare-fun b_lambda!9673 () Bool)

(assert (= b_lambda!9603 (or b!287250 b_lambda!9673)))

(assert (=> b!288895 d!85211))

(declare-fun b_lambda!9675 () Bool)

(assert (= b_lambda!9591 (or b!287862 b_lambda!9675)))

(declare-fun bs!32899 () Bool)

(declare-fun d!86229 () Bool)

(assert (= bs!32899 (and d!86229 b!287862)))

(assert (=> bs!32899 (= (dynLambda!2094 lambda!9878 (h!9342 tokens!465)) (rulesProduceIndividualToken!390 thiss!17480 rules!1920 (h!9342 tokens!465)))))

(assert (=> bs!32899 m!371777))

(assert (=> d!85675 d!86229))

(declare-fun b_lambda!9677 () Bool)

(assert (= b_lambda!9575 (or b!287601 b_lambda!9677)))

(declare-fun bs!32900 () Bool)

(declare-fun d!86231 () Bool)

(assert (= bs!32900 (and d!86231 b!287601)))

(assert (=> bs!32900 (= (dynLambda!2094 lambda!9872 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)) (rulesProduceIndividualToken!390 thiss!17480 rules!1920 (apply!840 (seqFromList!876 (t!40183 tokens!465)) 0)))))

(assert (=> bs!32900 m!372273))

(declare-fun m!377021 () Bool)

(assert (=> bs!32900 m!377021))

(assert (=> d!85425 d!86231))

(check-sat (not b!289091) (not b_lambda!9673) (not d!85303) (not d!85489) (not b!289243) (not b!288896) (not b!289615) (not b_lambda!9661) (not d!85617) (not b!289211) (not d!86121) (not bm!16361) (not b!288555) (not b!288356) (not b!289247) (not b!289683) (not b!288398) (not tb!16681) (not d!85663) (not b!289086) (not b!288511) (not bm!16391) (not b!288273) (not b!288484) (not b!289540) (not d!85519) (not b_lambda!9619) (not bm!16334) (not d!86167) (not b!288506) (not d!85647) (not b!288498) (not d!86171) (not b!288201) (not b!288905) (not d!85613) (not b_lambda!9569) (not b!289547) (not b!289564) (not b!289679) (not b!289336) (not bm!16303) (not b!288509) (not b!289072) (not b!288390) (not b!288278) (not b!289539) (not d!86017) (not bm!16313) (not b_lambda!9669) (not b!289089) (not b!288383) (not b!288045) (not b!288027) (not d!86207) (not b!288039) (not d!85503) (not b!289176) (not b!289244) (not d!85575) (not b!289663) (not d!85419) (not b!289651) b_and!23427 (not d!85849) (not b!289627) (not d!86109) (not b!288586) (not b!288382) (not b!289606) (not b!289073) (not b!288160) (not b!288582) (not b!289652) (not d!85621) (not d!85667) (not b!288165) (not b!288458) (not b_lambda!9657) (not d!85417) (not b!288064) (not b!289661) (not b!288043) (not b!289632) b_and!23505 (not b!289673) (not b!289657) (not b!288325) (not b!288530) (not b!288602) (not b!289690) (not b_next!10569) (not tb!16923) (not b!288343) (not d!85343) (not b!288524) (not d!85321) (not bm!16302) (not d!85537) (not b!288455) (not b!289545) (not d!86065) tp_is_empty!1855 (not d!86203) (not b!289101) (not b!289677) (not b!289104) (not b!288881) (not b!288078) (not b!288544) (not b!289542) (not d!85495) (not d!85431) (not d!86219) (not b!289611) (not d!85507) (not d!85651) (not b!288581) (not d!86099) (not b!289566) (not b!288384) (not d!85355) (not b!289584) (not b_lambda!9589) (not d!85563) (not bm!16370) (not d!85983) (not bm!16369) (not b!289649) (not b!288378) (not d!86055) (not b!288532) (not b!289246) (not b!289105) (not b!288589) (not b!288208) (not b!288338) (not d!85551) (not bm!16321) (not b!289692) (not b!289357) (not b!289257) (not d!85623) (not d!86019) (not b_lambda!9677) (not d!85611) (not b!289156) (not tb!16821) (not b!288360) (not b!288397) (not b_next!10537) (not b!289297) (not d!85357) (not d!85639) (not b!288402) (not b!288332) (not b!289608) (not b!288199) (not b!289169) (not b!289258) (not d!85683) (not d!86003) (not b!288517) (not b!289102) (not b!288437) (not b!288327) (not b!288501) (not b!288440) (not d!85607) (not b_lambda!9557) (not b_lambda!9623) (not b!289128) (not d!86047) (not b!288591) (not b!289560) (not b!289291) (not d!85445) (not b!289376) (not b_lambda!9671) (not d!85583) (not b!288329) (not d!85553) (not bm!16336) (not d!85539) (not d!86205) (not b!289630) (not b!288396) (not b!289356) (not b!288520) (not d!85645) (not tb!16701) (not b!289562) (not b!289292) (not d!85597) (not bm!16372) (not d!86031) (not d!85609) (not b!289240) (not b_lambda!9675) (not b!289607) (not b!288899) (not b!288293) (not d!85673) (not b!288065) (not d!86111) (not b!288288) (not b!289544) (not d!85975) (not d!85429) (not b!288415) (not d!86073) (not b!289182) (not b!288235) (not d!86015) (not b_next!10529) b_and!23423 (not b!288491) (not b_lambda!9667) (not d!85837) (not d!86215) (not b!288399) (not d!85305) (not d!85599) (not d!85527) (not b!289638) (not b!289316) (not b!288405) (not b!289238) (not b!288588) (not b!289092) (not d!86179) (not b!288406) (not b!289602) (not b!289585) (not bm!16300) (not b!289621) (not b_next!10531) (not b!288049) (not b!289323) (not d!86163) (not d!85301) (not b!288522) (not tb!16811) (not b!288331) (not b!289210) (not b!288063) (not b!289550) (not d!85531) (not b!289616) (not b!289224) (not d!85999) (not b!289639) (not bm!16365) (not b!288381) (not b!288521) (not b_lambda!9577) (not b!289171) (not b!288907) (not d!85515) (not b!289324) (not b!288603) (not b!289317) (not b_lambda!9585) (not bm!16323) (not b!288342) (not bm!16329) (not b!289645) (not b!288465) (not b!288529) (not b!288618) (not b!289181) (not b!288605) (not bs!32897) (not b!289263) (not d!86213) (not b_next!10553) (not b!288446) (not b!289554) (not bm!16296) (not b!289227) (not bm!16317) (not b!289642) (not bm!16331) (not d!85965) (not b!288479) (not b!288079) (not d!85485) (not d!86045) (not d!85605) (not b!288044) (not b!289131) (not b!288583) (not d!86173) (not b!288592) (not b!289229) (not b!288438) (not b!288404) (not d!85963) (not d!85307) (not b!289623) (not b!289610) (not b!288073) (not b!288171) (not b!289694) (not b!289143) (not d!85339) (not b_lambda!9663) (not b!288451) (not b!288480) (not b!289108) (not b!289577) (not b!288439) (not d!85961) (not d!85291) (not b!288028) (not b!289556) (not b!288050) (not b!288562) (not b!289253) (not d!85675) (not b!289155) (not d!86025) (not b!288222) (not b!289541) (not bs!32900) (not b!289237) (not b!289314) (not bm!16371) (not d!85833) (not b!289617) (not b!288192) (not b!289682) b_and!23425 (not b!288164) (not b!289557) (not bm!16332) (not d!85977) (not b!288500) (not b!289572) (not b!289242) (not b!288607) (not bs!32896) (not b!289647) (not b!288268) (not b!289145) (not b_lambda!9665) (not d!85443) (not b!289252) (not d!85501) (not d!85811) (not b_next!10533) (not d!85993) (not b!288286) (not b!288585) (not b!288422) (not bm!16376) (not d!85991) (not b!289245) (not b_lambda!9553) (not b!288473) (not b!288238) (not bm!16316) (not b!288025) (not d!85971) (not d!85573) (not b!288442) (not d!86195) (not d!86035) b_and!23509 (not tb!16741) (not d!85591) (not d!86067) (not d!86169) (not b!288526) (not b!288161) (not b!289069) (not b!288556) (not b!287465) (not d!86069) (not d!85289) (not d!86063) (not b!289696) (not b!288096) (not d!86023) (not d!85581) (not b!289626) (not d!85569) (not b!289103) b_and!23429 (not b!288428) (not d!85565) (not b!288376) (not b!288366) (not b!289579) (not d!86041) (not d!86189) (not b!289625) (not b!288894) (not d!85987) (not d!85435) (not b!289603) (not b!288172) (not b_next!10571) (not b_lambda!9659) (not b!289612) (not b!288619) (not d!85499) (not b!289659) (not d!85317) (not b!289653) (not d!86075) (not b!289668) (not b!289555) (not b!289558) (not d!85297) (not b!289678) (not b!289648) (not b_next!10549) (not b!288229) (not b!289578) (not b!288481) (not tb!16801) (not b!289672) (not b!289691) (not b!288542) (not b!289674) (not b!288478) (not d!85493) (not d!85681) b_and!23511 (not b!288604) (not b!289664) (not d!85641) (not b!288403) (not b_next!10567) (not b!288033) (not b!289129) (not bm!16319) (not d!85967) (not b!288543) (not b!288052) b_and!23503 (not b!289359) (not d!85361) (not b!289124) (not b!288389) (not b!289175) (not b!289686) (not b!288454) (not b!289180) (not b!289580) (not d!86197) (not d!85309) (not b!289335) (not b!289085) (not b!288170) (not b!288152) (not d!85421) (not d!85629) (not d!85427) (not b_lambda!9555) (not bm!16374) (not b_next!10539) (not b!289629) (not b!289636) (not bs!32895) (not b!288616) (not bm!16335) (not d!85655) (not b!289117) (not b!289633) (not b!288339) (not b!288341) (not d!86201) b_and!23421 (not b!288401) (not d!85669) (not b!289582) (not b!289248) (not b!289360) (not b!289312) (not b!289115) (not b!289552) (not b!289604) (not b!288906) (not b!289231) (not d!85425) (not b!289228) (not b!289631) (not b!288167) (not d!85829) (not b!288599) (not b!288212) (not b!289660) (not b!289296) (not b_lambda!9615) (not d!86079) (not b!288471) (not b!288042) (not b_next!10535) (not b!288093) (not b!289549) (not b!289223) (not d!85633) (not b!289637) (not d!85625) (not b!288369) (not b!289216) (not b!289667) (not b!288584) (not b!288030) (not b_next!10551) (not d!85643) (not bm!16312) (not b!289574) (not b!288483) (not bm!16320) (not b!288326) b_and!23499 (not b!289212) (not b!288897) (not d!85969) (not b!289178) (not d!86165) (not b!289588) (not b!288169) (not d!85433) (not d!85595) (not bm!16367) (not bm!16318) (not b!289688) (not b!288467) (not d!85439) (not b!288213) (not b!288508) (not b!288091) (not b!288453) (not d!86061) (not tb!16831) (not d!85335) (not d!85483) (not b!289655) (not b!288038) b_and!23515 (not b!289150) (not b!288901) b_and!23501 (not b!289575) (not b!288074) (not b_next!10565) (not b!288230) (not b!288024) (not b!289074) (not b!288528) (not b!288051) (not b!289158) (not d!85517) (not b!289221) (not b!289656) (not d!86091) (not b!289563) (not b!289571) (not d!85665) (not d!85653) (not bm!16362) (not b!289687) (not bm!16327) (not b!289684) (not b!288510) (not d!85491) (not b!289634) (not b!288448) (not d!85671) (not b!288076) (not b!288220) (not b!289126) (not d!85481) (not b!288159) (not bm!16326) (not b!289142) (not b!288290) (not b!288080) (not b!288173) (not b!288359) (not d!85319) (not b_lambda!9627) (not d!85577) (not b!289546) (not b!289099) (not b!288877) (not b!288276) (not d!85287) (not b!289671) (not b!288227) (not d!85981) (not b!288357) (not d!86087) (not b!289217) (not b!289071) (not b!289587) (not b!288364) (not b!288168) (not b!288344) (not b!288224) (not d!85423) (not b!288274) (not d!85521) (not d!85459) (not d!85995) (not d!85593) (not b!289127) (not b!288606) (not bm!16377) (not bs!32899) (not b!288426) (not b!288441) (not d!85457) (not tb!16841) (not b!288560) (not b!289665) (not b!288882) (not d!85615) (not d!86193) (not b!288386) (not d!86085) (not b!289622) (not b!288277) (not d!85533) (not b!288231) (not b_lambda!9551) (not d!85619) (not d!85525) (not d!85973) (not b!288469) (not b!289570) (not b_lambda!9617) (not b!288380) (not tb!16671) (not b!289230) (not b!288021) (not d!86217) (not b!288291) b_and!23513 (not d!86175) (not d!85295) (not b!288880) (not bm!16328) (not b!288531) (not b!289130) (not d!85825) (not bm!16360) (not b!288234) (not d!86185) (not bm!16330) (not b!289669) (not b!289567) (not b!288622) (not b!288601) (not d!85331) (not d!85523) (not d!85311) (not b!289149) (not b!289591) (not tb!16731) (not b!288047) (not b!288062) (not d!86187) (not d!86101) (not b!288048) (not b!289294) (not b!288053) (not d!86211) (not b_lambda!9549) (not d!86029) (not d!86177) (not b!287457) (not b!288095) (not b!288435) (not b!289107) (not d!85453) (not b!289576) (not b!288237) (not d!86057) (not b!289255) b_and!23507 (not b!289614) (not b!289695) (not b!288236) (not b!289226) (not d!85455) (not d!85487) (not b_next!10555) (not b!288587) (not b!289088) (not b_lambda!9547) (not d!85677) (not b!288368))
(check-sat b_and!23427 b_and!23505 (not b_next!10569) (not b_next!10537) (not b_next!10531) (not b_next!10553) b_and!23425 (not b_next!10533) b_and!23509 b_and!23429 (not b_next!10539) b_and!23421 b_and!23513 (not b_next!10529) b_and!23423 (not b_next!10571) (not b_next!10549) (not b_next!10567) b_and!23511 b_and!23503 (not b_next!10535) b_and!23499 (not b_next!10551) b_and!23501 (not b_next!10565) b_and!23515 (not b_next!10555) b_and!23507)
