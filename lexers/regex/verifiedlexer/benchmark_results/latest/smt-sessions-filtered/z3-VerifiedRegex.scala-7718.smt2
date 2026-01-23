; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405426 () Bool)

(assert start!405426)

(declare-fun b!4237240 () Bool)

(declare-fun b_free!125311 () Bool)

(declare-fun b_next!126015 () Bool)

(assert (=> b!4237240 (= b_free!125311 (not b_next!126015))))

(declare-fun tp!1298163 () Bool)

(declare-fun b_and!334781 () Bool)

(assert (=> b!4237240 (= tp!1298163 b_and!334781)))

(declare-fun b_free!125313 () Bool)

(declare-fun b_next!126017 () Bool)

(assert (=> b!4237240 (= b_free!125313 (not b_next!126017))))

(declare-fun tp!1298168 () Bool)

(declare-fun b_and!334783 () Bool)

(assert (=> b!4237240 (= tp!1298168 b_and!334783)))

(declare-fun b!4237224 () Bool)

(declare-fun b_free!125315 () Bool)

(declare-fun b_next!126019 () Bool)

(assert (=> b!4237224 (= b_free!125315 (not b_next!126019))))

(declare-fun tp!1298162 () Bool)

(declare-fun b_and!334785 () Bool)

(assert (=> b!4237224 (= tp!1298162 b_and!334785)))

(declare-fun b_free!125317 () Bool)

(declare-fun b_next!126021 () Bool)

(assert (=> b!4237224 (= b_free!125317 (not b_next!126021))))

(declare-fun tp!1298152 () Bool)

(declare-fun b_and!334787 () Bool)

(assert (=> b!4237224 (= tp!1298152 b_and!334787)))

(declare-fun b!4237233 () Bool)

(declare-fun b_free!125319 () Bool)

(declare-fun b_next!126023 () Bool)

(assert (=> b!4237233 (= b_free!125319 (not b_next!126023))))

(declare-fun tp!1298153 () Bool)

(declare-fun b_and!334789 () Bool)

(assert (=> b!4237233 (= tp!1298153 b_and!334789)))

(declare-fun b_free!125321 () Bool)

(declare-fun b_next!126025 () Bool)

(assert (=> b!4237233 (= b_free!125321 (not b_next!126025))))

(declare-fun tp!1298157 () Bool)

(declare-fun b_and!334791 () Bool)

(assert (=> b!4237233 (= tp!1298157 b_and!334791)))

(declare-fun b!4237220 () Bool)

(declare-datatypes ((List!46976 0))(
  ( (Nil!46852) (Cons!46852 (h!52272 (_ BitVec 16)) (t!349919 List!46976)) )
))
(declare-datatypes ((TokenValue!8150 0))(
  ( (FloatLiteralValue!16300 (text!57495 List!46976)) (TokenValueExt!8149 (__x!28523 Int)) (Broken!40750 (value!246230 List!46976)) (Object!8273) (End!8150) (Def!8150) (Underscore!8150) (Match!8150) (Else!8150) (Error!8150) (Case!8150) (If!8150) (Extends!8150) (Abstract!8150) (Class!8150) (Val!8150) (DelimiterValue!16300 (del!8210 List!46976)) (KeywordValue!8156 (value!246231 List!46976)) (CommentValue!16300 (value!246232 List!46976)) (WhitespaceValue!16300 (value!246233 List!46976)) (IndentationValue!8150 (value!246234 List!46976)) (String!54679) (Int32!8150) (Broken!40751 (value!246235 List!46976)) (Boolean!8151) (Unit!65948) (OperatorValue!8153 (op!8210 List!46976)) (IdentifierValue!16300 (value!246236 List!46976)) (IdentifierValue!16301 (value!246237 List!46976)) (WhitespaceValue!16301 (value!246238 List!46976)) (True!16300) (False!16300) (Broken!40752 (value!246239 List!46976)) (Broken!40753 (value!246240 List!46976)) (True!16301) (RightBrace!8150) (RightBracket!8150) (Colon!8150) (Null!8150) (Comma!8150) (LeftBracket!8150) (False!16301) (LeftBrace!8150) (ImaginaryLiteralValue!8150 (text!57496 List!46976)) (StringLiteralValue!24450 (value!246241 List!46976)) (EOFValue!8150 (value!246242 List!46976)) (IdentValue!8150 (value!246243 List!46976)) (DelimiterValue!16301 (value!246244 List!46976)) (DedentValue!8150 (value!246245 List!46976)) (NewLineValue!8150 (value!246246 List!46976)) (IntegerValue!24450 (value!246247 (_ BitVec 32)) (text!57497 List!46976)) (IntegerValue!24451 (value!246248 Int) (text!57498 List!46976)) (Times!8150) (Or!8150) (Equal!8150) (Minus!8150) (Broken!40754 (value!246249 List!46976)) (And!8150) (Div!8150) (LessEqual!8150) (Mod!8150) (Concat!20975) (Not!8150) (Plus!8150) (SpaceValue!8150 (value!246250 List!46976)) (IntegerValue!24452 (value!246251 Int) (text!57499 List!46976)) (StringLiteralValue!24451 (text!57500 List!46976)) (FloatLiteralValue!16301 (text!57501 List!46976)) (BytesLiteralValue!8150 (value!246252 List!46976)) (CommentValue!16301 (value!246253 List!46976)) (StringLiteralValue!24452 (value!246254 List!46976)) (ErrorTokenValue!8150 (msg!8211 List!46976)) )
))
(declare-datatypes ((C!25848 0))(
  ( (C!25849 (val!15114 Int)) )
))
(declare-datatypes ((Regex!12825 0))(
  ( (ElementMatch!12825 (c!720062 C!25848)) (Concat!20976 (regOne!26162 Regex!12825) (regTwo!26162 Regex!12825)) (EmptyExpr!12825) (Star!12825 (reg!13154 Regex!12825)) (EmptyLang!12825) (Union!12825 (regOne!26163 Regex!12825) (regTwo!26163 Regex!12825)) )
))
(declare-datatypes ((String!54680 0))(
  ( (String!54681 (value!246255 String)) )
))
(declare-datatypes ((List!46977 0))(
  ( (Nil!46853) (Cons!46853 (h!52273 C!25848) (t!349920 List!46977)) )
))
(declare-datatypes ((IArray!28267 0))(
  ( (IArray!28268 (innerList!14191 List!46977)) )
))
(declare-datatypes ((Conc!14131 0))(
  ( (Node!14131 (left!34825 Conc!14131) (right!35155 Conc!14131) (csize!28492 Int) (cheight!14342 Int)) (Leaf!21850 (xs!17437 IArray!28267) (csize!28493 Int)) (Empty!14131) )
))
(declare-datatypes ((BalanceConc!27856 0))(
  ( (BalanceConc!27857 (c!720063 Conc!14131)) )
))
(declare-datatypes ((TokenValueInjection!15728 0))(
  ( (TokenValueInjection!15729 (toValue!10664 Int) (toChars!10523 Int)) )
))
(declare-datatypes ((Rule!15640 0))(
  ( (Rule!15641 (regex!7920 Regex!12825) (tag!8784 String!54680) (isSeparator!7920 Bool) (transformation!7920 TokenValueInjection!15728)) )
))
(declare-datatypes ((Token!14466 0))(
  ( (Token!14467 (value!246256 TokenValue!8150) (rule!11044 Rule!15640) (size!34323 Int) (originalCharacters!8264 List!46977)) )
))
(declare-datatypes ((List!46978 0))(
  ( (Nil!46854) (Cons!46854 (h!52274 Token!14466) (t!349921 List!46978)) )
))
(declare-fun addTokens!17 () List!46978)

(declare-fun e!2631298 () Bool)

(declare-fun e!2631293 () Bool)

(declare-fun tp!1298166 () Bool)

(declare-fun inv!21 (TokenValue!8150) Bool)

(assert (=> b!4237220 (= e!2631298 (and (inv!21 (value!246256 (h!52274 addTokens!17))) e!2631293 tp!1298166))))

(declare-fun b!4237221 () Bool)

(declare-fun res!1742625 () Bool)

(declare-fun e!2631283 () Bool)

(assert (=> b!4237221 (=> (not res!1742625) (not e!2631283))))

(declare-datatypes ((List!46979 0))(
  ( (Nil!46855) (Cons!46855 (h!52275 Rule!15640) (t!349922 List!46979)) )
))
(declare-fun rules!2932 () List!46979)

(declare-fun isEmpty!27691 (List!46979) Bool)

(assert (=> b!4237221 (= res!1742625 (not (isEmpty!27691 rules!2932)))))

(declare-fun b!4237222 () Bool)

(declare-fun res!1742626 () Bool)

(assert (=> b!4237222 (=> (not res!1742626) (not e!2631283))))

(declare-fun longerInput!51 () List!46977)

(declare-fun shorterInput!51 () List!46977)

(declare-fun size!34324 (List!46977) Int)

(assert (=> b!4237222 (= res!1742626 (> (size!34324 longerInput!51) (size!34324 shorterInput!51)))))

(declare-fun e!2631279 () Bool)

(assert (=> b!4237224 (= e!2631279 (and tp!1298162 tp!1298152))))

(declare-fun b!4237225 () Bool)

(declare-fun e!2631289 () Bool)

(declare-fun e!2631288 () Bool)

(declare-fun tp!1298155 () Bool)

(assert (=> b!4237225 (= e!2631289 (and e!2631288 tp!1298155))))

(declare-fun e!2631282 () Bool)

(declare-fun tp!1298159 () Bool)

(declare-fun b!4237226 () Bool)

(declare-fun e!2631286 () Bool)

(declare-fun tokens!581 () List!46978)

(assert (=> b!4237226 (= e!2631282 (and (inv!21 (value!246256 (h!52274 tokens!581))) e!2631286 tp!1298159))))

(declare-fun b!4237227 () Bool)

(declare-fun res!1742622 () Bool)

(assert (=> b!4237227 (=> (not res!1742622) (not e!2631283))))

(declare-datatypes ((LexerInterface!7515 0))(
  ( (LexerInterfaceExt!7512 (__x!28524 Int)) (Lexer!7513) )
))
(declare-fun thiss!21540 () LexerInterface!7515)

(declare-fun suffix!1262 () List!46977)

(declare-datatypes ((tuple2!44428 0))(
  ( (tuple2!44429 (_1!25348 List!46978) (_2!25348 List!46977)) )
))
(declare-fun lexList!2021 (LexerInterface!7515 List!46979 List!46977) tuple2!44428)

(assert (=> b!4237227 (= res!1742622 (= (lexList!2021 thiss!21540 rules!2932 longerInput!51) (tuple2!44429 tokens!581 suffix!1262)))))

(declare-fun b!4237228 () Bool)

(declare-fun tp!1298167 () Bool)

(declare-fun e!2631296 () Bool)

(declare-fun inv!61576 (String!54680) Bool)

(declare-fun inv!61579 (TokenValueInjection!15728) Bool)

(assert (=> b!4237228 (= e!2631293 (and tp!1298167 (inv!61576 (tag!8784 (rule!11044 (h!52274 addTokens!17)))) (inv!61579 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) e!2631296))))

(declare-fun b!4237229 () Bool)

(declare-fun e!2631297 () Bool)

(declare-fun tp_is_empty!22641 () Bool)

(declare-fun tp!1298165 () Bool)

(assert (=> b!4237229 (= e!2631297 (and tp_is_empty!22641 tp!1298165))))

(declare-fun b!4237230 () Bool)

(declare-fun size!34325 (List!46978) Int)

(assert (=> b!4237230 (= e!2631283 (<= (size!34325 addTokens!17) 0))))

(declare-fun res!1742621 () Bool)

(assert (=> start!405426 (=> (not res!1742621) (not e!2631283))))

(get-info :version)

(assert (=> start!405426 (= res!1742621 ((_ is Lexer!7513) thiss!21540))))

(assert (=> start!405426 e!2631283))

(assert (=> start!405426 true))

(assert (=> start!405426 e!2631289))

(declare-fun e!2631294 () Bool)

(assert (=> start!405426 e!2631294))

(declare-fun e!2631290 () Bool)

(assert (=> start!405426 e!2631290))

(declare-fun e!2631292 () Bool)

(assert (=> start!405426 e!2631292))

(declare-fun e!2631291 () Bool)

(assert (=> start!405426 e!2631291))

(assert (=> start!405426 e!2631297))

(declare-fun b!4237223 () Bool)

(declare-fun tp!1298164 () Bool)

(assert (=> b!4237223 (= e!2631286 (and tp!1298164 (inv!61576 (tag!8784 (rule!11044 (h!52274 tokens!581)))) (inv!61579 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) e!2631279))))

(declare-fun b!4237231 () Bool)

(declare-fun tp!1298156 () Bool)

(declare-fun inv!61580 (Token!14466) Bool)

(assert (=> b!4237231 (= e!2631294 (and (inv!61580 (h!52274 addTokens!17)) e!2631298 tp!1298156))))

(declare-fun e!2631287 () Bool)

(declare-fun tp!1298161 () Bool)

(declare-fun b!4237232 () Bool)

(assert (=> b!4237232 (= e!2631288 (and tp!1298161 (inv!61576 (tag!8784 (h!52275 rules!2932))) (inv!61579 (transformation!7920 (h!52275 rules!2932))) e!2631287))))

(assert (=> b!4237233 (= e!2631296 (and tp!1298153 tp!1298157))))

(declare-fun tp!1298158 () Bool)

(declare-fun b!4237234 () Bool)

(assert (=> b!4237234 (= e!2631291 (and (inv!61580 (h!52274 tokens!581)) e!2631282 tp!1298158))))

(declare-fun b!4237235 () Bool)

(declare-fun tp!1298154 () Bool)

(assert (=> b!4237235 (= e!2631290 (and tp_is_empty!22641 tp!1298154))))

(declare-fun b!4237236 () Bool)

(declare-fun tp!1298160 () Bool)

(assert (=> b!4237236 (= e!2631292 (and tp_is_empty!22641 tp!1298160))))

(declare-fun b!4237237 () Bool)

(declare-fun res!1742623 () Bool)

(assert (=> b!4237237 (=> (not res!1742623) (not e!2631283))))

(declare-fun rulesInvariant!6626 (LexerInterface!7515 List!46979) Bool)

(assert (=> b!4237237 (= res!1742623 (rulesInvariant!6626 thiss!21540 rules!2932))))

(declare-fun b!4237238 () Bool)

(declare-fun res!1742627 () Bool)

(assert (=> b!4237238 (=> (not res!1742627) (not e!2631283))))

(declare-fun isEmpty!27692 (List!46977) Bool)

(assert (=> b!4237238 (= res!1742627 (not (isEmpty!27692 longerInput!51)))))

(declare-fun b!4237239 () Bool)

(declare-fun res!1742624 () Bool)

(assert (=> b!4237239 (=> (not res!1742624) (not e!2631283))))

(declare-fun isEmpty!27693 (List!46978) Bool)

(assert (=> b!4237239 (= res!1742624 (not (isEmpty!27693 addTokens!17)))))

(assert (=> b!4237240 (= e!2631287 (and tp!1298163 tp!1298168))))

(assert (= (and start!405426 res!1742621) b!4237221))

(assert (= (and b!4237221 res!1742625) b!4237237))

(assert (= (and b!4237237 res!1742623) b!4237238))

(assert (= (and b!4237238 res!1742627) b!4237222))

(assert (= (and b!4237222 res!1742626) b!4237227))

(assert (= (and b!4237227 res!1742622) b!4237239))

(assert (= (and b!4237239 res!1742624) b!4237230))

(assert (= b!4237232 b!4237240))

(assert (= b!4237225 b!4237232))

(assert (= (and start!405426 ((_ is Cons!46855) rules!2932)) b!4237225))

(assert (= b!4237228 b!4237233))

(assert (= b!4237220 b!4237228))

(assert (= b!4237231 b!4237220))

(assert (= (and start!405426 ((_ is Cons!46854) addTokens!17)) b!4237231))

(assert (= (and start!405426 ((_ is Cons!46853) shorterInput!51)) b!4237235))

(assert (= (and start!405426 ((_ is Cons!46853) suffix!1262)) b!4237236))

(assert (= b!4237223 b!4237224))

(assert (= b!4237226 b!4237223))

(assert (= b!4237234 b!4237226))

(assert (= (and start!405426 ((_ is Cons!46854) tokens!581)) b!4237234))

(assert (= (and start!405426 ((_ is Cons!46853) longerInput!51)) b!4237229))

(declare-fun m!4822627 () Bool)

(assert (=> b!4237228 m!4822627))

(declare-fun m!4822629 () Bool)

(assert (=> b!4237228 m!4822629))

(declare-fun m!4822631 () Bool)

(assert (=> b!4237234 m!4822631))

(declare-fun m!4822633 () Bool)

(assert (=> b!4237237 m!4822633))

(declare-fun m!4822635 () Bool)

(assert (=> b!4237220 m!4822635))

(declare-fun m!4822637 () Bool)

(assert (=> b!4237232 m!4822637))

(declare-fun m!4822639 () Bool)

(assert (=> b!4237232 m!4822639))

(declare-fun m!4822641 () Bool)

(assert (=> b!4237227 m!4822641))

(declare-fun m!4822643 () Bool)

(assert (=> b!4237221 m!4822643))

(declare-fun m!4822645 () Bool)

(assert (=> b!4237230 m!4822645))

(declare-fun m!4822647 () Bool)

(assert (=> b!4237239 m!4822647))

(declare-fun m!4822649 () Bool)

(assert (=> b!4237226 m!4822649))

(declare-fun m!4822651 () Bool)

(assert (=> b!4237238 m!4822651))

(declare-fun m!4822653 () Bool)

(assert (=> b!4237223 m!4822653))

(declare-fun m!4822655 () Bool)

(assert (=> b!4237223 m!4822655))

(declare-fun m!4822657 () Bool)

(assert (=> b!4237231 m!4822657))

(declare-fun m!4822659 () Bool)

(assert (=> b!4237222 m!4822659))

(declare-fun m!4822661 () Bool)

(assert (=> b!4237222 m!4822661))

(check-sat (not b!4237226) b_and!334783 (not b!4237227) (not b!4237225) (not b!4237221) (not b_next!126019) (not b!4237223) (not b_next!126017) (not b!4237230) b_and!334785 (not b_next!126015) (not b!4237235) (not b!4237236) (not b_next!126025) (not b!4237231) (not b!4237220) b_and!334787 (not b!4237234) (not b!4237237) (not b!4237232) (not b!4237228) (not b!4237229) (not b!4237238) b_and!334789 (not b_next!126021) (not b!4237239) b_and!334791 (not b_next!126023) b_and!334781 tp_is_empty!22641 (not b!4237222))
(check-sat b_and!334783 (not b_next!126025) b_and!334787 (not b_next!126019) (not b_next!126017) b_and!334791 b_and!334785 (not b_next!126015) b_and!334789 (not b_next!126021) (not b_next!126023) b_and!334781)
(get-model)

(declare-fun d!1246481 () Bool)

(declare-fun c!720068 () Bool)

(assert (=> d!1246481 (= c!720068 ((_ is IntegerValue!24450) (value!246256 (h!52274 tokens!581))))))

(declare-fun e!2631309 () Bool)

(assert (=> d!1246481 (= (inv!21 (value!246256 (h!52274 tokens!581))) e!2631309)))

(declare-fun b!4237254 () Bool)

(declare-fun e!2631308 () Bool)

(assert (=> b!4237254 (= e!2631309 e!2631308)))

(declare-fun c!720069 () Bool)

(assert (=> b!4237254 (= c!720069 ((_ is IntegerValue!24451) (value!246256 (h!52274 tokens!581))))))

(declare-fun b!4237255 () Bool)

(declare-fun inv!17 (TokenValue!8150) Bool)

(assert (=> b!4237255 (= e!2631308 (inv!17 (value!246256 (h!52274 tokens!581))))))

(declare-fun b!4237256 () Bool)

(declare-fun inv!16 (TokenValue!8150) Bool)

(assert (=> b!4237256 (= e!2631309 (inv!16 (value!246256 (h!52274 tokens!581))))))

(declare-fun b!4237257 () Bool)

(declare-fun res!1742633 () Bool)

(declare-fun e!2631310 () Bool)

(assert (=> b!4237257 (=> res!1742633 e!2631310)))

(assert (=> b!4237257 (= res!1742633 (not ((_ is IntegerValue!24452) (value!246256 (h!52274 tokens!581)))))))

(assert (=> b!4237257 (= e!2631308 e!2631310)))

(declare-fun b!4237258 () Bool)

(declare-fun inv!15 (TokenValue!8150) Bool)

(assert (=> b!4237258 (= e!2631310 (inv!15 (value!246256 (h!52274 tokens!581))))))

(assert (= (and d!1246481 c!720068) b!4237256))

(assert (= (and d!1246481 (not c!720068)) b!4237254))

(assert (= (and b!4237254 c!720069) b!4237255))

(assert (= (and b!4237254 (not c!720069)) b!4237257))

(assert (= (and b!4237257 (not res!1742633)) b!4237258))

(declare-fun m!4822667 () Bool)

(assert (=> b!4237255 m!4822667))

(declare-fun m!4822669 () Bool)

(assert (=> b!4237256 m!4822669))

(declare-fun m!4822671 () Bool)

(assert (=> b!4237258 m!4822671))

(assert (=> b!4237226 d!1246481))

(declare-fun d!1246487 () Bool)

(declare-fun res!1742640 () Bool)

(declare-fun e!2631325 () Bool)

(assert (=> d!1246487 (=> (not res!1742640) (not e!2631325))))

(declare-fun rulesValid!3066 (LexerInterface!7515 List!46979) Bool)

(assert (=> d!1246487 (= res!1742640 (rulesValid!3066 thiss!21540 rules!2932))))

(assert (=> d!1246487 (= (rulesInvariant!6626 thiss!21540 rules!2932) e!2631325)))

(declare-fun b!4237281 () Bool)

(declare-datatypes ((List!46981 0))(
  ( (Nil!46857) (Cons!46857 (h!52277 String!54680) (t!349972 List!46981)) )
))
(declare-fun noDuplicateTag!3227 (LexerInterface!7515 List!46979 List!46981) Bool)

(assert (=> b!4237281 (= e!2631325 (noDuplicateTag!3227 thiss!21540 rules!2932 Nil!46857))))

(assert (= (and d!1246487 res!1742640) b!4237281))

(declare-fun m!4822683 () Bool)

(assert (=> d!1246487 m!4822683))

(declare-fun m!4822685 () Bool)

(assert (=> b!4237281 m!4822685))

(assert (=> b!4237237 d!1246487))

(declare-fun b!4237325 () Bool)

(declare-fun e!2631354 () Bool)

(declare-fun lt!1505986 () tuple2!44428)

(assert (=> b!4237325 (= e!2631354 (not (isEmpty!27693 (_1!25348 lt!1505986))))))

(declare-fun b!4237326 () Bool)

(declare-fun e!2631352 () Bool)

(assert (=> b!4237326 (= e!2631352 (= (_2!25348 lt!1505986) longerInput!51))))

(declare-fun b!4237327 () Bool)

(assert (=> b!4237327 (= e!2631352 e!2631354)))

(declare-fun res!1742656 () Bool)

(assert (=> b!4237327 (= res!1742656 (< (size!34324 (_2!25348 lt!1505986)) (size!34324 longerInput!51)))))

(assert (=> b!4237327 (=> (not res!1742656) (not e!2631354))))

(declare-fun b!4237328 () Bool)

(declare-fun e!2631353 () tuple2!44428)

(assert (=> b!4237328 (= e!2631353 (tuple2!44429 Nil!46854 longerInput!51))))

(declare-fun d!1246495 () Bool)

(assert (=> d!1246495 e!2631352))

(declare-fun c!720090 () Bool)

(assert (=> d!1246495 (= c!720090 (> (size!34325 (_1!25348 lt!1505986)) 0))))

(assert (=> d!1246495 (= lt!1505986 e!2631353)))

(declare-fun c!720089 () Bool)

(declare-datatypes ((tuple2!44430 0))(
  ( (tuple2!44431 (_1!25349 Token!14466) (_2!25349 List!46977)) )
))
(declare-datatypes ((Option!10055 0))(
  ( (None!10054) (Some!10054 (v!41002 tuple2!44430)) )
))
(declare-fun lt!1505987 () Option!10055)

(assert (=> d!1246495 (= c!720089 ((_ is Some!10054) lt!1505987))))

(declare-fun maxPrefix!4472 (LexerInterface!7515 List!46979 List!46977) Option!10055)

(assert (=> d!1246495 (= lt!1505987 (maxPrefix!4472 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1246495 (= (lexList!2021 thiss!21540 rules!2932 longerInput!51) lt!1505986)))

(declare-fun b!4237329 () Bool)

(declare-fun lt!1505988 () tuple2!44428)

(assert (=> b!4237329 (= e!2631353 (tuple2!44429 (Cons!46854 (_1!25349 (v!41002 lt!1505987)) (_1!25348 lt!1505988)) (_2!25348 lt!1505988)))))

(assert (=> b!4237329 (= lt!1505988 (lexList!2021 thiss!21540 rules!2932 (_2!25349 (v!41002 lt!1505987))))))

(assert (= (and d!1246495 c!720089) b!4237329))

(assert (= (and d!1246495 (not c!720089)) b!4237328))

(assert (= (and d!1246495 c!720090) b!4237327))

(assert (= (and d!1246495 (not c!720090)) b!4237326))

(assert (= (and b!4237327 res!1742656) b!4237325))

(declare-fun m!4822731 () Bool)

(assert (=> b!4237325 m!4822731))

(declare-fun m!4822733 () Bool)

(assert (=> b!4237327 m!4822733))

(assert (=> b!4237327 m!4822659))

(declare-fun m!4822735 () Bool)

(assert (=> d!1246495 m!4822735))

(declare-fun m!4822737 () Bool)

(assert (=> d!1246495 m!4822737))

(declare-fun m!4822739 () Bool)

(assert (=> b!4237329 m!4822739))

(assert (=> b!4237227 d!1246495))

(declare-fun d!1246517 () Bool)

(assert (=> d!1246517 (= (isEmpty!27692 longerInput!51) ((_ is Nil!46853) longerInput!51))))

(assert (=> b!4237238 d!1246517))

(declare-fun d!1246519 () Bool)

(assert (=> d!1246519 (= (inv!61576 (tag!8784 (rule!11044 (h!52274 addTokens!17)))) (= (mod (str.len (value!246255 (tag!8784 (rule!11044 (h!52274 addTokens!17))))) 2) 0))))

(assert (=> b!4237228 d!1246519))

(declare-fun d!1246521 () Bool)

(declare-fun res!1742662 () Bool)

(declare-fun e!2631368 () Bool)

(assert (=> d!1246521 (=> (not res!1742662) (not e!2631368))))

(declare-fun semiInverseModEq!3443 (Int Int) Bool)

(assert (=> d!1246521 (= res!1742662 (semiInverseModEq!3443 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))))))

(assert (=> d!1246521 (= (inv!61579 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) e!2631368)))

(declare-fun b!4237353 () Bool)

(declare-fun equivClasses!3342 (Int Int) Bool)

(assert (=> b!4237353 (= e!2631368 (equivClasses!3342 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))))))

(assert (= (and d!1246521 res!1742662) b!4237353))

(declare-fun m!4822751 () Bool)

(assert (=> d!1246521 m!4822751))

(declare-fun m!4822753 () Bool)

(assert (=> b!4237353 m!4822753))

(assert (=> b!4237228 d!1246521))

(declare-fun d!1246527 () Bool)

(assert (=> d!1246527 (= (isEmpty!27693 addTokens!17) ((_ is Nil!46854) addTokens!17))))

(assert (=> b!4237239 d!1246527))

(declare-fun d!1246529 () Bool)

(declare-fun lt!1506000 () Int)

(assert (=> d!1246529 (>= lt!1506000 0)))

(declare-fun e!2631400 () Int)

(assert (=> d!1246529 (= lt!1506000 e!2631400)))

(declare-fun c!720099 () Bool)

(assert (=> d!1246529 (= c!720099 ((_ is Nil!46854) addTokens!17))))

(assert (=> d!1246529 (= (size!34325 addTokens!17) lt!1506000)))

(declare-fun b!4237396 () Bool)

(assert (=> b!4237396 (= e!2631400 0)))

(declare-fun b!4237397 () Bool)

(assert (=> b!4237397 (= e!2631400 (+ 1 (size!34325 (t!349921 addTokens!17))))))

(assert (= (and d!1246529 c!720099) b!4237396))

(assert (= (and d!1246529 (not c!720099)) b!4237397))

(declare-fun m!4822759 () Bool)

(assert (=> b!4237397 m!4822759))

(assert (=> b!4237230 d!1246529))

(declare-fun d!1246531 () Bool)

(declare-fun c!720100 () Bool)

(assert (=> d!1246531 (= c!720100 ((_ is IntegerValue!24450) (value!246256 (h!52274 addTokens!17))))))

(declare-fun e!2631404 () Bool)

(assert (=> d!1246531 (= (inv!21 (value!246256 (h!52274 addTokens!17))) e!2631404)))

(declare-fun b!4237400 () Bool)

(declare-fun e!2631403 () Bool)

(assert (=> b!4237400 (= e!2631404 e!2631403)))

(declare-fun c!720101 () Bool)

(assert (=> b!4237400 (= c!720101 ((_ is IntegerValue!24451) (value!246256 (h!52274 addTokens!17))))))

(declare-fun b!4237401 () Bool)

(assert (=> b!4237401 (= e!2631403 (inv!17 (value!246256 (h!52274 addTokens!17))))))

(declare-fun b!4237402 () Bool)

(assert (=> b!4237402 (= e!2631404 (inv!16 (value!246256 (h!52274 addTokens!17))))))

(declare-fun b!4237403 () Bool)

(declare-fun res!1742663 () Bool)

(declare-fun e!2631405 () Bool)

(assert (=> b!4237403 (=> res!1742663 e!2631405)))

(assert (=> b!4237403 (= res!1742663 (not ((_ is IntegerValue!24452) (value!246256 (h!52274 addTokens!17)))))))

(assert (=> b!4237403 (= e!2631403 e!2631405)))

(declare-fun b!4237404 () Bool)

(assert (=> b!4237404 (= e!2631405 (inv!15 (value!246256 (h!52274 addTokens!17))))))

(assert (= (and d!1246531 c!720100) b!4237402))

(assert (= (and d!1246531 (not c!720100)) b!4237400))

(assert (= (and b!4237400 c!720101) b!4237401))

(assert (= (and b!4237400 (not c!720101)) b!4237403))

(assert (= (and b!4237403 (not res!1742663)) b!4237404))

(declare-fun m!4822761 () Bool)

(assert (=> b!4237401 m!4822761))

(declare-fun m!4822763 () Bool)

(assert (=> b!4237402 m!4822763))

(declare-fun m!4822765 () Bool)

(assert (=> b!4237404 m!4822765))

(assert (=> b!4237220 d!1246531))

(declare-fun d!1246533 () Bool)

(declare-fun res!1742668 () Bool)

(declare-fun e!2631423 () Bool)

(assert (=> d!1246533 (=> (not res!1742668) (not e!2631423))))

(assert (=> d!1246533 (= res!1742668 (not (isEmpty!27692 (originalCharacters!8264 (h!52274 addTokens!17)))))))

(assert (=> d!1246533 (= (inv!61580 (h!52274 addTokens!17)) e!2631423)))

(declare-fun b!4237423 () Bool)

(declare-fun res!1742669 () Bool)

(assert (=> b!4237423 (=> (not res!1742669) (not e!2631423))))

(declare-fun list!16891 (BalanceConc!27856) List!46977)

(declare-fun dynLambda!20076 (Int TokenValue!8150) BalanceConc!27856)

(assert (=> b!4237423 (= res!1742669 (= (originalCharacters!8264 (h!52274 addTokens!17)) (list!16891 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17))))))))

(declare-fun b!4237424 () Bool)

(assert (=> b!4237424 (= e!2631423 (= (size!34323 (h!52274 addTokens!17)) (size!34324 (originalCharacters!8264 (h!52274 addTokens!17)))))))

(assert (= (and d!1246533 res!1742668) b!4237423))

(assert (= (and b!4237423 res!1742669) b!4237424))

(declare-fun b_lambda!124715 () Bool)

(assert (=> (not b_lambda!124715) (not b!4237423)))

(declare-fun t!349948 () Bool)

(declare-fun tb!254159 () Bool)

(assert (=> (and b!4237240 (= (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) t!349948) tb!254159))

(declare-fun b!4237429 () Bool)

(declare-fun e!2631426 () Bool)

(declare-fun tp!1298239 () Bool)

(declare-fun inv!61583 (Conc!14131) Bool)

(assert (=> b!4237429 (= e!2631426 (and (inv!61583 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17))))) tp!1298239))))

(declare-fun result!310042 () Bool)

(declare-fun inv!61584 (BalanceConc!27856) Bool)

(assert (=> tb!254159 (= result!310042 (and (inv!61584 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17)))) e!2631426))))

(assert (= tb!254159 b!4237429))

(declare-fun m!4822783 () Bool)

(assert (=> b!4237429 m!4822783))

(declare-fun m!4822785 () Bool)

(assert (=> tb!254159 m!4822785))

(assert (=> b!4237423 t!349948))

(declare-fun b_and!334817 () Bool)

(assert (= b_and!334783 (and (=> t!349948 result!310042) b_and!334817)))

(declare-fun t!349950 () Bool)

(declare-fun tb!254161 () Bool)

(assert (=> (and b!4237224 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) t!349950) tb!254161))

(declare-fun result!310046 () Bool)

(assert (= result!310046 result!310042))

(assert (=> b!4237423 t!349950))

(declare-fun b_and!334819 () Bool)

(assert (= b_and!334787 (and (=> t!349950 result!310046) b_and!334819)))

(declare-fun t!349952 () Bool)

(declare-fun tb!254163 () Bool)

(assert (=> (and b!4237233 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) t!349952) tb!254163))

(declare-fun result!310048 () Bool)

(assert (= result!310048 result!310042))

(assert (=> b!4237423 t!349952))

(declare-fun b_and!334821 () Bool)

(assert (= b_and!334791 (and (=> t!349952 result!310048) b_and!334821)))

(declare-fun m!4822787 () Bool)

(assert (=> d!1246533 m!4822787))

(declare-fun m!4822789 () Bool)

(assert (=> b!4237423 m!4822789))

(assert (=> b!4237423 m!4822789))

(declare-fun m!4822791 () Bool)

(assert (=> b!4237423 m!4822791))

(declare-fun m!4822793 () Bool)

(assert (=> b!4237424 m!4822793))

(assert (=> b!4237231 d!1246533))

(declare-fun d!1246535 () Bool)

(assert (=> d!1246535 (= (isEmpty!27691 rules!2932) ((_ is Nil!46855) rules!2932))))

(assert (=> b!4237221 d!1246535))

(declare-fun d!1246537 () Bool)

(assert (=> d!1246537 (= (inv!61576 (tag!8784 (h!52275 rules!2932))) (= (mod (str.len (value!246255 (tag!8784 (h!52275 rules!2932)))) 2) 0))))

(assert (=> b!4237232 d!1246537))

(declare-fun d!1246539 () Bool)

(declare-fun res!1742670 () Bool)

(declare-fun e!2631427 () Bool)

(assert (=> d!1246539 (=> (not res!1742670) (not e!2631427))))

(assert (=> d!1246539 (= res!1742670 (semiInverseModEq!3443 (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toValue!10664 (transformation!7920 (h!52275 rules!2932)))))))

(assert (=> d!1246539 (= (inv!61579 (transformation!7920 (h!52275 rules!2932))) e!2631427)))

(declare-fun b!4237430 () Bool)

(assert (=> b!4237430 (= e!2631427 (equivClasses!3342 (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toValue!10664 (transformation!7920 (h!52275 rules!2932)))))))

(assert (= (and d!1246539 res!1742670) b!4237430))

(declare-fun m!4822795 () Bool)

(assert (=> d!1246539 m!4822795))

(declare-fun m!4822797 () Bool)

(assert (=> b!4237430 m!4822797))

(assert (=> b!4237232 d!1246539))

(declare-fun d!1246541 () Bool)

(declare-fun lt!1506003 () Int)

(assert (=> d!1246541 (>= lt!1506003 0)))

(declare-fun e!2631430 () Int)

(assert (=> d!1246541 (= lt!1506003 e!2631430)))

(declare-fun c!720104 () Bool)

(assert (=> d!1246541 (= c!720104 ((_ is Nil!46853) longerInput!51))))

(assert (=> d!1246541 (= (size!34324 longerInput!51) lt!1506003)))

(declare-fun b!4237435 () Bool)

(assert (=> b!4237435 (= e!2631430 0)))

(declare-fun b!4237436 () Bool)

(assert (=> b!4237436 (= e!2631430 (+ 1 (size!34324 (t!349920 longerInput!51))))))

(assert (= (and d!1246541 c!720104) b!4237435))

(assert (= (and d!1246541 (not c!720104)) b!4237436))

(declare-fun m!4822799 () Bool)

(assert (=> b!4237436 m!4822799))

(assert (=> b!4237222 d!1246541))

(declare-fun d!1246543 () Bool)

(declare-fun lt!1506004 () Int)

(assert (=> d!1246543 (>= lt!1506004 0)))

(declare-fun e!2631431 () Int)

(assert (=> d!1246543 (= lt!1506004 e!2631431)))

(declare-fun c!720105 () Bool)

(assert (=> d!1246543 (= c!720105 ((_ is Nil!46853) shorterInput!51))))

(assert (=> d!1246543 (= (size!34324 shorterInput!51) lt!1506004)))

(declare-fun b!4237437 () Bool)

(assert (=> b!4237437 (= e!2631431 0)))

(declare-fun b!4237438 () Bool)

(assert (=> b!4237438 (= e!2631431 (+ 1 (size!34324 (t!349920 shorterInput!51))))))

(assert (= (and d!1246543 c!720105) b!4237437))

(assert (= (and d!1246543 (not c!720105)) b!4237438))

(declare-fun m!4822801 () Bool)

(assert (=> b!4237438 m!4822801))

(assert (=> b!4237222 d!1246543))

(declare-fun d!1246545 () Bool)

(assert (=> d!1246545 (= (inv!61576 (tag!8784 (rule!11044 (h!52274 tokens!581)))) (= (mod (str.len (value!246255 (tag!8784 (rule!11044 (h!52274 tokens!581))))) 2) 0))))

(assert (=> b!4237223 d!1246545))

(declare-fun d!1246547 () Bool)

(declare-fun res!1742671 () Bool)

(declare-fun e!2631432 () Bool)

(assert (=> d!1246547 (=> (not res!1742671) (not e!2631432))))

(assert (=> d!1246547 (= res!1742671 (semiInverseModEq!3443 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 tokens!581))))))))

(assert (=> d!1246547 (= (inv!61579 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) e!2631432)))

(declare-fun b!4237439 () Bool)

(assert (=> b!4237439 (= e!2631432 (equivClasses!3342 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 tokens!581))))))))

(assert (= (and d!1246547 res!1742671) b!4237439))

(declare-fun m!4822803 () Bool)

(assert (=> d!1246547 m!4822803))

(declare-fun m!4822805 () Bool)

(assert (=> b!4237439 m!4822805))

(assert (=> b!4237223 d!1246547))

(declare-fun d!1246549 () Bool)

(declare-fun res!1742672 () Bool)

(declare-fun e!2631433 () Bool)

(assert (=> d!1246549 (=> (not res!1742672) (not e!2631433))))

(assert (=> d!1246549 (= res!1742672 (not (isEmpty!27692 (originalCharacters!8264 (h!52274 tokens!581)))))))

(assert (=> d!1246549 (= (inv!61580 (h!52274 tokens!581)) e!2631433)))

(declare-fun b!4237440 () Bool)

(declare-fun res!1742673 () Bool)

(assert (=> b!4237440 (=> (not res!1742673) (not e!2631433))))

(assert (=> b!4237440 (= res!1742673 (= (originalCharacters!8264 (h!52274 tokens!581)) (list!16891 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581))))))))

(declare-fun b!4237441 () Bool)

(assert (=> b!4237441 (= e!2631433 (= (size!34323 (h!52274 tokens!581)) (size!34324 (originalCharacters!8264 (h!52274 tokens!581)))))))

(assert (= (and d!1246549 res!1742672) b!4237440))

(assert (= (and b!4237440 res!1742673) b!4237441))

(declare-fun b_lambda!124717 () Bool)

(assert (=> (not b_lambda!124717) (not b!4237440)))

(declare-fun tb!254165 () Bool)

(declare-fun t!349954 () Bool)

(assert (=> (and b!4237240 (= (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) t!349954) tb!254165))

(declare-fun b!4237442 () Bool)

(declare-fun e!2631434 () Bool)

(declare-fun tp!1298240 () Bool)

(assert (=> b!4237442 (= e!2631434 (and (inv!61583 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581))))) tp!1298240))))

(declare-fun result!310050 () Bool)

(assert (=> tb!254165 (= result!310050 (and (inv!61584 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581)))) e!2631434))))

(assert (= tb!254165 b!4237442))

(declare-fun m!4822807 () Bool)

(assert (=> b!4237442 m!4822807))

(declare-fun m!4822809 () Bool)

(assert (=> tb!254165 m!4822809))

(assert (=> b!4237440 t!349954))

(declare-fun b_and!334823 () Bool)

(assert (= b_and!334817 (and (=> t!349954 result!310050) b_and!334823)))

(declare-fun t!349956 () Bool)

(declare-fun tb!254167 () Bool)

(assert (=> (and b!4237224 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) t!349956) tb!254167))

(declare-fun result!310052 () Bool)

(assert (= result!310052 result!310050))

(assert (=> b!4237440 t!349956))

(declare-fun b_and!334825 () Bool)

(assert (= b_and!334819 (and (=> t!349956 result!310052) b_and!334825)))

(declare-fun t!349958 () Bool)

(declare-fun tb!254169 () Bool)

(assert (=> (and b!4237233 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) t!349958) tb!254169))

(declare-fun result!310054 () Bool)

(assert (= result!310054 result!310050))

(assert (=> b!4237440 t!349958))

(declare-fun b_and!334827 () Bool)

(assert (= b_and!334821 (and (=> t!349958 result!310054) b_and!334827)))

(declare-fun m!4822811 () Bool)

(assert (=> d!1246549 m!4822811))

(declare-fun m!4822813 () Bool)

(assert (=> b!4237440 m!4822813))

(assert (=> b!4237440 m!4822813))

(declare-fun m!4822815 () Bool)

(assert (=> b!4237440 m!4822815))

(declare-fun m!4822817 () Bool)

(assert (=> b!4237441 m!4822817))

(assert (=> b!4237234 d!1246549))

(declare-fun b!4237447 () Bool)

(declare-fun e!2631437 () Bool)

(declare-fun tp!1298243 () Bool)

(assert (=> b!4237447 (= e!2631437 (and tp_is_empty!22641 tp!1298243))))

(assert (=> b!4237226 (= tp!1298159 e!2631437)))

(assert (= (and b!4237226 ((_ is Cons!46853) (originalCharacters!8264 (h!52274 tokens!581)))) b!4237447))

(declare-fun b!4237458 () Bool)

(declare-fun e!2631440 () Bool)

(assert (=> b!4237458 (= e!2631440 tp_is_empty!22641)))

(assert (=> b!4237228 (= tp!1298167 e!2631440)))

(declare-fun b!4237459 () Bool)

(declare-fun tp!1298257 () Bool)

(declare-fun tp!1298255 () Bool)

(assert (=> b!4237459 (= e!2631440 (and tp!1298257 tp!1298255))))

(declare-fun b!4237460 () Bool)

(declare-fun tp!1298258 () Bool)

(assert (=> b!4237460 (= e!2631440 tp!1298258)))

(declare-fun b!4237461 () Bool)

(declare-fun tp!1298254 () Bool)

(declare-fun tp!1298256 () Bool)

(assert (=> b!4237461 (= e!2631440 (and tp!1298254 tp!1298256))))

(assert (= (and b!4237228 ((_ is ElementMatch!12825) (regex!7920 (rule!11044 (h!52274 addTokens!17))))) b!4237458))

(assert (= (and b!4237228 ((_ is Concat!20976) (regex!7920 (rule!11044 (h!52274 addTokens!17))))) b!4237459))

(assert (= (and b!4237228 ((_ is Star!12825) (regex!7920 (rule!11044 (h!52274 addTokens!17))))) b!4237460))

(assert (= (and b!4237228 ((_ is Union!12825) (regex!7920 (rule!11044 (h!52274 addTokens!17))))) b!4237461))

(declare-fun b!4237462 () Bool)

(declare-fun e!2631441 () Bool)

(declare-fun tp!1298259 () Bool)

(assert (=> b!4237462 (= e!2631441 (and tp_is_empty!22641 tp!1298259))))

(assert (=> b!4237229 (= tp!1298165 e!2631441)))

(assert (= (and b!4237229 ((_ is Cons!46853) (t!349920 longerInput!51))) b!4237462))

(declare-fun b!4237463 () Bool)

(declare-fun e!2631442 () Bool)

(declare-fun tp!1298260 () Bool)

(assert (=> b!4237463 (= e!2631442 (and tp_is_empty!22641 tp!1298260))))

(assert (=> b!4237220 (= tp!1298166 e!2631442)))

(assert (= (and b!4237220 ((_ is Cons!46853) (originalCharacters!8264 (h!52274 addTokens!17)))) b!4237463))

(declare-fun b!4237477 () Bool)

(declare-fun b_free!125335 () Bool)

(declare-fun b_next!126039 () Bool)

(assert (=> b!4237477 (= b_free!125335 (not b_next!126039))))

(declare-fun tp!1298272 () Bool)

(declare-fun b_and!334829 () Bool)

(assert (=> b!4237477 (= tp!1298272 b_and!334829)))

(declare-fun b_free!125337 () Bool)

(declare-fun b_next!126041 () Bool)

(assert (=> b!4237477 (= b_free!125337 (not b_next!126041))))

(declare-fun t!349960 () Bool)

(declare-fun tb!254171 () Bool)

(assert (=> (and b!4237477 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) t!349960) tb!254171))

(declare-fun result!310062 () Bool)

(assert (= result!310062 result!310042))

(assert (=> b!4237423 t!349960))

(declare-fun t!349962 () Bool)

(declare-fun tb!254173 () Bool)

(assert (=> (and b!4237477 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) t!349962) tb!254173))

(declare-fun result!310064 () Bool)

(assert (= result!310064 result!310050))

(assert (=> b!4237440 t!349962))

(declare-fun tp!1298274 () Bool)

(declare-fun b_and!334831 () Bool)

(assert (=> b!4237477 (= tp!1298274 (and (=> t!349960 result!310062) (=> t!349962 result!310064) b_and!334831))))

(declare-fun tp!1298275 () Bool)

(declare-fun b!4237475 () Bool)

(declare-fun e!2631457 () Bool)

(declare-fun e!2631456 () Bool)

(assert (=> b!4237475 (= e!2631456 (and (inv!21 (value!246256 (h!52274 (t!349921 addTokens!17)))) e!2631457 tp!1298275))))

(declare-fun e!2631460 () Bool)

(assert (=> b!4237231 (= tp!1298156 e!2631460)))

(declare-fun e!2631459 () Bool)

(assert (=> b!4237477 (= e!2631459 (and tp!1298272 tp!1298274))))

(declare-fun tp!1298271 () Bool)

(declare-fun b!4237474 () Bool)

(assert (=> b!4237474 (= e!2631460 (and (inv!61580 (h!52274 (t!349921 addTokens!17))) e!2631456 tp!1298271))))

(declare-fun b!4237476 () Bool)

(declare-fun tp!1298273 () Bool)

(assert (=> b!4237476 (= e!2631457 (and tp!1298273 (inv!61576 (tag!8784 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (inv!61579 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) e!2631459))))

(assert (= b!4237476 b!4237477))

(assert (= b!4237475 b!4237476))

(assert (= b!4237474 b!4237475))

(assert (= (and b!4237231 ((_ is Cons!46854) (t!349921 addTokens!17))) b!4237474))

(declare-fun m!4822819 () Bool)

(assert (=> b!4237475 m!4822819))

(declare-fun m!4822821 () Bool)

(assert (=> b!4237474 m!4822821))

(declare-fun m!4822823 () Bool)

(assert (=> b!4237476 m!4822823))

(declare-fun m!4822825 () Bool)

(assert (=> b!4237476 m!4822825))

(declare-fun b!4237478 () Bool)

(declare-fun e!2631461 () Bool)

(assert (=> b!4237478 (= e!2631461 tp_is_empty!22641)))

(assert (=> b!4237232 (= tp!1298161 e!2631461)))

(declare-fun b!4237479 () Bool)

(declare-fun tp!1298279 () Bool)

(declare-fun tp!1298277 () Bool)

(assert (=> b!4237479 (= e!2631461 (and tp!1298279 tp!1298277))))

(declare-fun b!4237480 () Bool)

(declare-fun tp!1298280 () Bool)

(assert (=> b!4237480 (= e!2631461 tp!1298280)))

(declare-fun b!4237481 () Bool)

(declare-fun tp!1298276 () Bool)

(declare-fun tp!1298278 () Bool)

(assert (=> b!4237481 (= e!2631461 (and tp!1298276 tp!1298278))))

(assert (= (and b!4237232 ((_ is ElementMatch!12825) (regex!7920 (h!52275 rules!2932)))) b!4237478))

(assert (= (and b!4237232 ((_ is Concat!20976) (regex!7920 (h!52275 rules!2932)))) b!4237479))

(assert (= (and b!4237232 ((_ is Star!12825) (regex!7920 (h!52275 rules!2932)))) b!4237480))

(assert (= (and b!4237232 ((_ is Union!12825) (regex!7920 (h!52275 rules!2932)))) b!4237481))

(declare-fun b!4237482 () Bool)

(declare-fun e!2631462 () Bool)

(assert (=> b!4237482 (= e!2631462 tp_is_empty!22641)))

(assert (=> b!4237223 (= tp!1298164 e!2631462)))

(declare-fun b!4237483 () Bool)

(declare-fun tp!1298284 () Bool)

(declare-fun tp!1298282 () Bool)

(assert (=> b!4237483 (= e!2631462 (and tp!1298284 tp!1298282))))

(declare-fun b!4237484 () Bool)

(declare-fun tp!1298285 () Bool)

(assert (=> b!4237484 (= e!2631462 tp!1298285)))

(declare-fun b!4237485 () Bool)

(declare-fun tp!1298281 () Bool)

(declare-fun tp!1298283 () Bool)

(assert (=> b!4237485 (= e!2631462 (and tp!1298281 tp!1298283))))

(assert (= (and b!4237223 ((_ is ElementMatch!12825) (regex!7920 (rule!11044 (h!52274 tokens!581))))) b!4237482))

(assert (= (and b!4237223 ((_ is Concat!20976) (regex!7920 (rule!11044 (h!52274 tokens!581))))) b!4237483))

(assert (= (and b!4237223 ((_ is Star!12825) (regex!7920 (rule!11044 (h!52274 tokens!581))))) b!4237484))

(assert (= (and b!4237223 ((_ is Union!12825) (regex!7920 (rule!11044 (h!52274 tokens!581))))) b!4237485))

(declare-fun b!4237489 () Bool)

(declare-fun b_free!125339 () Bool)

(declare-fun b_next!126043 () Bool)

(assert (=> b!4237489 (= b_free!125339 (not b_next!126043))))

(declare-fun tp!1298287 () Bool)

(declare-fun b_and!334833 () Bool)

(assert (=> b!4237489 (= tp!1298287 b_and!334833)))

(declare-fun b_free!125341 () Bool)

(declare-fun b_next!126045 () Bool)

(assert (=> b!4237489 (= b_free!125341 (not b_next!126045))))

(declare-fun t!349964 () Bool)

(declare-fun tb!254175 () Bool)

(assert (=> (and b!4237489 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) t!349964) tb!254175))

(declare-fun result!310066 () Bool)

(assert (= result!310066 result!310042))

(assert (=> b!4237423 t!349964))

(declare-fun t!349966 () Bool)

(declare-fun tb!254177 () Bool)

(assert (=> (and b!4237489 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) t!349966) tb!254177))

(declare-fun result!310068 () Bool)

(assert (= result!310068 result!310050))

(assert (=> b!4237440 t!349966))

(declare-fun b_and!334835 () Bool)

(declare-fun tp!1298289 () Bool)

(assert (=> b!4237489 (= tp!1298289 (and (=> t!349964 result!310066) (=> t!349966 result!310068) b_and!334835))))

(declare-fun e!2631465 () Bool)

(declare-fun tp!1298290 () Bool)

(declare-fun b!4237487 () Bool)

(declare-fun e!2631464 () Bool)

(assert (=> b!4237487 (= e!2631464 (and (inv!21 (value!246256 (h!52274 (t!349921 tokens!581)))) e!2631465 tp!1298290))))

(declare-fun e!2631468 () Bool)

(assert (=> b!4237234 (= tp!1298158 e!2631468)))

(declare-fun e!2631467 () Bool)

(assert (=> b!4237489 (= e!2631467 (and tp!1298287 tp!1298289))))

(declare-fun tp!1298286 () Bool)

(declare-fun b!4237486 () Bool)

(assert (=> b!4237486 (= e!2631468 (and (inv!61580 (h!52274 (t!349921 tokens!581))) e!2631464 tp!1298286))))

(declare-fun tp!1298288 () Bool)

(declare-fun b!4237488 () Bool)

(assert (=> b!4237488 (= e!2631465 (and tp!1298288 (inv!61576 (tag!8784 (rule!11044 (h!52274 (t!349921 tokens!581))))) (inv!61579 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) e!2631467))))

(assert (= b!4237488 b!4237489))

(assert (= b!4237487 b!4237488))

(assert (= b!4237486 b!4237487))

(assert (= (and b!4237234 ((_ is Cons!46854) (t!349921 tokens!581))) b!4237486))

(declare-fun m!4822827 () Bool)

(assert (=> b!4237487 m!4822827))

(declare-fun m!4822829 () Bool)

(assert (=> b!4237486 m!4822829))

(declare-fun m!4822831 () Bool)

(assert (=> b!4237488 m!4822831))

(declare-fun m!4822833 () Bool)

(assert (=> b!4237488 m!4822833))

(declare-fun b!4237490 () Bool)

(declare-fun e!2631469 () Bool)

(declare-fun tp!1298291 () Bool)

(assert (=> b!4237490 (= e!2631469 (and tp_is_empty!22641 tp!1298291))))

(assert (=> b!4237235 (= tp!1298154 e!2631469)))

(assert (= (and b!4237235 ((_ is Cons!46853) (t!349920 shorterInput!51))) b!4237490))

(declare-fun b!4237501 () Bool)

(declare-fun b_free!125343 () Bool)

(declare-fun b_next!126047 () Bool)

(assert (=> b!4237501 (= b_free!125343 (not b_next!126047))))

(declare-fun tp!1298301 () Bool)

(declare-fun b_and!334837 () Bool)

(assert (=> b!4237501 (= tp!1298301 b_and!334837)))

(declare-fun b_free!125345 () Bool)

(declare-fun b_next!126049 () Bool)

(assert (=> b!4237501 (= b_free!125345 (not b_next!126049))))

(declare-fun tb!254179 () Bool)

(declare-fun t!349968 () Bool)

(assert (=> (and b!4237501 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 rules!2932)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) t!349968) tb!254179))

(declare-fun result!310072 () Bool)

(assert (= result!310072 result!310042))

(assert (=> b!4237423 t!349968))

(declare-fun tb!254181 () Bool)

(declare-fun t!349970 () Bool)

(assert (=> (and b!4237501 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 rules!2932)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) t!349970) tb!254181))

(declare-fun result!310074 () Bool)

(assert (= result!310074 result!310050))

(assert (=> b!4237440 t!349970))

(declare-fun tp!1298300 () Bool)

(declare-fun b_and!334839 () Bool)

(assert (=> b!4237501 (= tp!1298300 (and (=> t!349968 result!310072) (=> t!349970 result!310074) b_and!334839))))

(declare-fun e!2631480 () Bool)

(assert (=> b!4237501 (= e!2631480 (and tp!1298301 tp!1298300))))

(declare-fun b!4237500 () Bool)

(declare-fun tp!1298303 () Bool)

(declare-fun e!2631479 () Bool)

(assert (=> b!4237500 (= e!2631479 (and tp!1298303 (inv!61576 (tag!8784 (h!52275 (t!349922 rules!2932)))) (inv!61579 (transformation!7920 (h!52275 (t!349922 rules!2932)))) e!2631480))))

(declare-fun b!4237499 () Bool)

(declare-fun e!2631481 () Bool)

(declare-fun tp!1298302 () Bool)

(assert (=> b!4237499 (= e!2631481 (and e!2631479 tp!1298302))))

(assert (=> b!4237225 (= tp!1298155 e!2631481)))

(assert (= b!4237500 b!4237501))

(assert (= b!4237499 b!4237500))

(assert (= (and b!4237225 ((_ is Cons!46855) (t!349922 rules!2932))) b!4237499))

(declare-fun m!4822835 () Bool)

(assert (=> b!4237500 m!4822835))

(declare-fun m!4822837 () Bool)

(assert (=> b!4237500 m!4822837))

(declare-fun b!4237502 () Bool)

(declare-fun e!2631482 () Bool)

(declare-fun tp!1298304 () Bool)

(assert (=> b!4237502 (= e!2631482 (and tp_is_empty!22641 tp!1298304))))

(assert (=> b!4237236 (= tp!1298160 e!2631482)))

(assert (= (and b!4237236 ((_ is Cons!46853) (t!349920 suffix!1262))) b!4237502))

(declare-fun b_lambda!124719 () Bool)

(assert (= b_lambda!124717 (or (and b!4237477 b_free!125337 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))))) (and b!4237224 b_free!125317) (and b!4237240 b_free!125313 (= (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))))) (and b!4237489 b_free!125341 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))))) (and b!4237501 b_free!125345 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 rules!2932)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))))) (and b!4237233 b_free!125321 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))))) b_lambda!124719)))

(declare-fun b_lambda!124721 () Bool)

(assert (= b_lambda!124715 (or (and b!4237489 b_free!125341 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))))) (and b!4237224 b_free!125317 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))))) (and b!4237240 b_free!125313 (= (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))))) (and b!4237501 b_free!125345 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 rules!2932)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))))) (and b!4237233 b_free!125321) (and b!4237477 b_free!125337 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))))) b_lambda!124721)))

(check-sat (not b!4237441) (not b!4237462) (not b!4237327) (not b!4237463) (not b!4237486) (not b_next!126019) (not b_next!126017) (not b!4237480) (not b!4237461) (not b!4237484) (not b!4237440) b_and!334823 (not b_next!126043) (not b!4237476) (not b!4237281) (not b!4237424) (not d!1246547) (not b!4237481) b_and!334825 (not tb!254165) b_and!334785 (not b_next!126015) (not b_lambda!124721) b_and!334833 b_and!334837 (not b!4237353) (not b!4237442) (not b!4237485) b_and!334829 (not b!4237439) (not b!4237436) (not b!4237459) (not b!4237500) (not d!1246539) (not b_next!126025) (not b!4237490) (not b!4237329) (not b_next!126041) (not b!4237460) (not tb!254159) (not b!4237325) (not b!4237430) (not b!4237479) (not b!4237474) (not b!4237256) (not b_next!126047) (not b!4237429) (not b!4237502) (not b!4237483) (not b_lambda!124719) (not b!4237475) (not d!1246487) b_and!334835 (not b_next!126049) (not b!4237423) (not d!1246549) (not b!4237404) b_and!334789 (not b!4237402) (not b!4237255) (not b_next!126039) (not b_next!126021) (not b!4237447) (not b_next!126045) (not b!4237488) b_and!334827 b_and!334831 b_and!334839 (not b!4237487) (not d!1246533) (not b_next!126023) b_and!334781 (not b!4237499) (not b!4237258) (not d!1246521) tp_is_empty!22641 (not b!4237401) (not b!4237397) (not b!4237438) (not d!1246495))
(check-sat b_and!334823 b_and!334829 (not b_next!126025) (not b_next!126041) (not b_next!126047) (not b_next!126019) (not b_next!126017) (not b_next!126045) b_and!334839 (not b_next!126043) b_and!334825 b_and!334785 (not b_next!126015) b_and!334833 b_and!334837 b_and!334835 (not b_next!126049) b_and!334789 (not b_next!126039) (not b_next!126021) b_and!334827 b_and!334831 (not b_next!126023) b_and!334781)
(get-model)

(declare-fun d!1246559 () Bool)

(declare-fun lt!1506008 () Int)

(assert (=> d!1246559 (>= lt!1506008 0)))

(declare-fun e!2631486 () Int)

(assert (=> d!1246559 (= lt!1506008 e!2631486)))

(declare-fun c!720108 () Bool)

(assert (=> d!1246559 (= c!720108 ((_ is Nil!46853) (t!349920 shorterInput!51)))))

(assert (=> d!1246559 (= (size!34324 (t!349920 shorterInput!51)) lt!1506008)))

(declare-fun b!4237508 () Bool)

(assert (=> b!4237508 (= e!2631486 0)))

(declare-fun b!4237509 () Bool)

(assert (=> b!4237509 (= e!2631486 (+ 1 (size!34324 (t!349920 (t!349920 shorterInput!51)))))))

(assert (= (and d!1246559 c!720108) b!4237508))

(assert (= (and d!1246559 (not c!720108)) b!4237509))

(declare-fun m!4822855 () Bool)

(assert (=> b!4237509 m!4822855))

(assert (=> b!4237438 d!1246559))

(declare-fun d!1246561 () Bool)

(assert (=> d!1246561 (= (inv!61576 (tag!8784 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (= (mod (str.len (value!246255 (tag!8784 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) 2) 0))))

(assert (=> b!4237476 d!1246561))

(declare-fun d!1246563 () Bool)

(declare-fun res!1742683 () Bool)

(declare-fun e!2631487 () Bool)

(assert (=> d!1246563 (=> (not res!1742683) (not e!2631487))))

(assert (=> d!1246563 (= res!1742683 (semiInverseModEq!3443 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))))))

(assert (=> d!1246563 (= (inv!61579 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) e!2631487)))

(declare-fun b!4237510 () Bool)

(assert (=> b!4237510 (= e!2631487 (equivClasses!3342 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))))))

(assert (= (and d!1246563 res!1742683) b!4237510))

(declare-fun m!4822857 () Bool)

(assert (=> d!1246563 m!4822857))

(declare-fun m!4822859 () Bool)

(assert (=> b!4237510 m!4822859))

(assert (=> b!4237476 d!1246563))

(declare-fun d!1246565 () Bool)

(declare-fun charsToBigInt!1 (List!46976) Int)

(assert (=> d!1246565 (= (inv!17 (value!246256 (h!52274 tokens!581))) (= (charsToBigInt!1 (text!57498 (value!246256 (h!52274 tokens!581)))) (value!246248 (value!246256 (h!52274 tokens!581)))))))

(declare-fun bs!598168 () Bool)

(assert (= bs!598168 d!1246565))

(declare-fun m!4822861 () Bool)

(assert (=> bs!598168 m!4822861))

(assert (=> b!4237255 d!1246565))

(declare-fun d!1246567 () Bool)

(declare-fun lt!1506009 () Int)

(assert (=> d!1246567 (>= lt!1506009 0)))

(declare-fun e!2631488 () Int)

(assert (=> d!1246567 (= lt!1506009 e!2631488)))

(declare-fun c!720109 () Bool)

(assert (=> d!1246567 (= c!720109 ((_ is Nil!46853) (originalCharacters!8264 (h!52274 tokens!581))))))

(assert (=> d!1246567 (= (size!34324 (originalCharacters!8264 (h!52274 tokens!581))) lt!1506009)))

(declare-fun b!4237511 () Bool)

(assert (=> b!4237511 (= e!2631488 0)))

(declare-fun b!4237512 () Bool)

(assert (=> b!4237512 (= e!2631488 (+ 1 (size!34324 (t!349920 (originalCharacters!8264 (h!52274 tokens!581))))))))

(assert (= (and d!1246567 c!720109) b!4237511))

(assert (= (and d!1246567 (not c!720109)) b!4237512))

(declare-fun m!4822863 () Bool)

(assert (=> b!4237512 m!4822863))

(assert (=> b!4237441 d!1246567))

(declare-fun d!1246569 () Bool)

(declare-fun c!720110 () Bool)

(assert (=> d!1246569 (= c!720110 ((_ is IntegerValue!24450) (value!246256 (h!52274 (t!349921 addTokens!17)))))))

(declare-fun e!2631490 () Bool)

(assert (=> d!1246569 (= (inv!21 (value!246256 (h!52274 (t!349921 addTokens!17)))) e!2631490)))

(declare-fun b!4237513 () Bool)

(declare-fun e!2631489 () Bool)

(assert (=> b!4237513 (= e!2631490 e!2631489)))

(declare-fun c!720111 () Bool)

(assert (=> b!4237513 (= c!720111 ((_ is IntegerValue!24451) (value!246256 (h!52274 (t!349921 addTokens!17)))))))

(declare-fun b!4237514 () Bool)

(assert (=> b!4237514 (= e!2631489 (inv!17 (value!246256 (h!52274 (t!349921 addTokens!17)))))))

(declare-fun b!4237515 () Bool)

(assert (=> b!4237515 (= e!2631490 (inv!16 (value!246256 (h!52274 (t!349921 addTokens!17)))))))

(declare-fun b!4237516 () Bool)

(declare-fun res!1742684 () Bool)

(declare-fun e!2631491 () Bool)

(assert (=> b!4237516 (=> res!1742684 e!2631491)))

(assert (=> b!4237516 (= res!1742684 (not ((_ is IntegerValue!24452) (value!246256 (h!52274 (t!349921 addTokens!17))))))))

(assert (=> b!4237516 (= e!2631489 e!2631491)))

(declare-fun b!4237517 () Bool)

(assert (=> b!4237517 (= e!2631491 (inv!15 (value!246256 (h!52274 (t!349921 addTokens!17)))))))

(assert (= (and d!1246569 c!720110) b!4237515))

(assert (= (and d!1246569 (not c!720110)) b!4237513))

(assert (= (and b!4237513 c!720111) b!4237514))

(assert (= (and b!4237513 (not c!720111)) b!4237516))

(assert (= (and b!4237516 (not res!1742684)) b!4237517))

(declare-fun m!4822865 () Bool)

(assert (=> b!4237514 m!4822865))

(declare-fun m!4822867 () Bool)

(assert (=> b!4237515 m!4822867))

(declare-fun m!4822869 () Bool)

(assert (=> b!4237517 m!4822869))

(assert (=> b!4237475 d!1246569))

(declare-fun d!1246571 () Bool)

(declare-fun charsToInt!0 (List!46976) (_ BitVec 32))

(assert (=> d!1246571 (= (inv!16 (value!246256 (h!52274 tokens!581))) (= (charsToInt!0 (text!57497 (value!246256 (h!52274 tokens!581)))) (value!246247 (value!246256 (h!52274 tokens!581)))))))

(declare-fun bs!598169 () Bool)

(assert (= bs!598169 d!1246571))

(declare-fun m!4822871 () Bool)

(assert (=> bs!598169 m!4822871))

(assert (=> b!4237256 d!1246571))

(declare-fun d!1246573 () Bool)

(declare-fun list!16893 (Conc!14131) List!46977)

(assert (=> d!1246573 (= (list!16891 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581)))) (list!16893 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581))))))))

(declare-fun bs!598170 () Bool)

(assert (= bs!598170 d!1246573))

(declare-fun m!4822873 () Bool)

(assert (=> bs!598170 m!4822873))

(assert (=> b!4237440 d!1246573))

(declare-fun d!1246575 () Bool)

(declare-fun res!1742685 () Bool)

(declare-fun e!2631492 () Bool)

(assert (=> d!1246575 (=> (not res!1742685) (not e!2631492))))

(assert (=> d!1246575 (= res!1742685 (not (isEmpty!27692 (originalCharacters!8264 (h!52274 (t!349921 addTokens!17))))))))

(assert (=> d!1246575 (= (inv!61580 (h!52274 (t!349921 addTokens!17))) e!2631492)))

(declare-fun b!4237518 () Bool)

(declare-fun res!1742686 () Bool)

(assert (=> b!4237518 (=> (not res!1742686) (not e!2631492))))

(assert (=> b!4237518 (= res!1742686 (= (originalCharacters!8264 (h!52274 (t!349921 addTokens!17))) (list!16891 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (value!246256 (h!52274 (t!349921 addTokens!17)))))))))

(declare-fun b!4237519 () Bool)

(assert (=> b!4237519 (= e!2631492 (= (size!34323 (h!52274 (t!349921 addTokens!17))) (size!34324 (originalCharacters!8264 (h!52274 (t!349921 addTokens!17))))))))

(assert (= (and d!1246575 res!1742685) b!4237518))

(assert (= (and b!4237518 res!1742686) b!4237519))

(declare-fun b_lambda!124723 () Bool)

(assert (=> (not b_lambda!124723) (not b!4237518)))

(declare-fun t!349974 () Bool)

(declare-fun tb!254183 () Bool)

(assert (=> (and b!4237489 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) t!349974) tb!254183))

(declare-fun b!4237520 () Bool)

(declare-fun e!2631493 () Bool)

(declare-fun tp!1298305 () Bool)

(assert (=> b!4237520 (= e!2631493 (and (inv!61583 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (value!246256 (h!52274 (t!349921 addTokens!17)))))) tp!1298305))))

(declare-fun result!310076 () Bool)

(assert (=> tb!254183 (= result!310076 (and (inv!61584 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (value!246256 (h!52274 (t!349921 addTokens!17))))) e!2631493))))

(assert (= tb!254183 b!4237520))

(declare-fun m!4822875 () Bool)

(assert (=> b!4237520 m!4822875))

(declare-fun m!4822877 () Bool)

(assert (=> tb!254183 m!4822877))

(assert (=> b!4237518 t!349974))

(declare-fun b_and!334841 () Bool)

(assert (= b_and!334835 (and (=> t!349974 result!310076) b_and!334841)))

(declare-fun tb!254185 () Bool)

(declare-fun t!349976 () Bool)

(assert (=> (and b!4237501 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 rules!2932)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) t!349976) tb!254185))

(declare-fun result!310078 () Bool)

(assert (= result!310078 result!310076))

(assert (=> b!4237518 t!349976))

(declare-fun b_and!334843 () Bool)

(assert (= b_and!334839 (and (=> t!349976 result!310078) b_and!334843)))

(declare-fun tb!254187 () Bool)

(declare-fun t!349978 () Bool)

(assert (=> (and b!4237224 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) t!349978) tb!254187))

(declare-fun result!310080 () Bool)

(assert (= result!310080 result!310076))

(assert (=> b!4237518 t!349978))

(declare-fun b_and!334845 () Bool)

(assert (= b_and!334825 (and (=> t!349978 result!310080) b_and!334845)))

(declare-fun t!349980 () Bool)

(declare-fun tb!254189 () Bool)

(assert (=> (and b!4237477 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) t!349980) tb!254189))

(declare-fun result!310082 () Bool)

(assert (= result!310082 result!310076))

(assert (=> b!4237518 t!349980))

(declare-fun b_and!334847 () Bool)

(assert (= b_and!334831 (and (=> t!349980 result!310082) b_and!334847)))

(declare-fun t!349982 () Bool)

(declare-fun tb!254191 () Bool)

(assert (=> (and b!4237240 (= (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) t!349982) tb!254191))

(declare-fun result!310084 () Bool)

(assert (= result!310084 result!310076))

(assert (=> b!4237518 t!349982))

(declare-fun b_and!334849 () Bool)

(assert (= b_and!334823 (and (=> t!349982 result!310084) b_and!334849)))

(declare-fun t!349984 () Bool)

(declare-fun tb!254193 () Bool)

(assert (=> (and b!4237233 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) t!349984) tb!254193))

(declare-fun result!310086 () Bool)

(assert (= result!310086 result!310076))

(assert (=> b!4237518 t!349984))

(declare-fun b_and!334851 () Bool)

(assert (= b_and!334827 (and (=> t!349984 result!310086) b_and!334851)))

(declare-fun m!4822879 () Bool)

(assert (=> d!1246575 m!4822879))

(declare-fun m!4822881 () Bool)

(assert (=> b!4237518 m!4822881))

(assert (=> b!4237518 m!4822881))

(declare-fun m!4822883 () Bool)

(assert (=> b!4237518 m!4822883))

(declare-fun m!4822885 () Bool)

(assert (=> b!4237519 m!4822885))

(assert (=> b!4237474 d!1246575))

(declare-fun d!1246577 () Bool)

(declare-fun charsToBigInt!0 (List!46976 Int) Int)

(assert (=> d!1246577 (= (inv!15 (value!246256 (h!52274 tokens!581))) (= (charsToBigInt!0 (text!57499 (value!246256 (h!52274 tokens!581))) 0) (value!246251 (value!246256 (h!52274 tokens!581)))))))

(declare-fun bs!598171 () Bool)

(assert (= bs!598171 d!1246577))

(declare-fun m!4822887 () Bool)

(assert (=> bs!598171 m!4822887))

(assert (=> b!4237258 d!1246577))

(declare-fun d!1246579 () Bool)

(assert (=> d!1246579 (= (inv!15 (value!246256 (h!52274 addTokens!17))) (= (charsToBigInt!0 (text!57499 (value!246256 (h!52274 addTokens!17))) 0) (value!246251 (value!246256 (h!52274 addTokens!17)))))))

(declare-fun bs!598172 () Bool)

(assert (= bs!598172 d!1246579))

(declare-fun m!4822889 () Bool)

(assert (=> bs!598172 m!4822889))

(assert (=> b!4237404 d!1246579))

(declare-fun d!1246581 () Bool)

(assert (=> d!1246581 (= (isEmpty!27692 (originalCharacters!8264 (h!52274 tokens!581))) ((_ is Nil!46853) (originalCharacters!8264 (h!52274 tokens!581))))))

(assert (=> d!1246549 d!1246581))

(declare-fun d!1246583 () Bool)

(declare-fun isBalanced!3754 (Conc!14131) Bool)

(assert (=> d!1246583 (= (inv!61584 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17)))) (isBalanced!3754 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17))))))))

(declare-fun bs!598173 () Bool)

(assert (= bs!598173 d!1246583))

(declare-fun m!4822891 () Bool)

(assert (=> bs!598173 m!4822891))

(assert (=> tb!254159 d!1246583))

(declare-fun d!1246585 () Bool)

(assert (=> d!1246585 (= (inv!61576 (tag!8784 (h!52275 (t!349922 rules!2932)))) (= (mod (str.len (value!246255 (tag!8784 (h!52275 (t!349922 rules!2932))))) 2) 0))))

(assert (=> b!4237500 d!1246585))

(declare-fun d!1246587 () Bool)

(declare-fun res!1742687 () Bool)

(declare-fun e!2631494 () Bool)

(assert (=> d!1246587 (=> (not res!1742687) (not e!2631494))))

(assert (=> d!1246587 (= res!1742687 (semiInverseModEq!3443 (toChars!10523 (transformation!7920 (h!52275 (t!349922 rules!2932)))) (toValue!10664 (transformation!7920 (h!52275 (t!349922 rules!2932))))))))

(assert (=> d!1246587 (= (inv!61579 (transformation!7920 (h!52275 (t!349922 rules!2932)))) e!2631494)))

(declare-fun b!4237521 () Bool)

(assert (=> b!4237521 (= e!2631494 (equivClasses!3342 (toChars!10523 (transformation!7920 (h!52275 (t!349922 rules!2932)))) (toValue!10664 (transformation!7920 (h!52275 (t!349922 rules!2932))))))))

(assert (= (and d!1246587 res!1742687) b!4237521))

(declare-fun m!4822893 () Bool)

(assert (=> d!1246587 m!4822893))

(declare-fun m!4822895 () Bool)

(assert (=> b!4237521 m!4822895))

(assert (=> b!4237500 d!1246587))

(declare-fun d!1246589 () Bool)

(assert (=> d!1246589 (= (inv!16 (value!246256 (h!52274 addTokens!17))) (= (charsToInt!0 (text!57497 (value!246256 (h!52274 addTokens!17)))) (value!246247 (value!246256 (h!52274 addTokens!17)))))))

(declare-fun bs!598174 () Bool)

(assert (= bs!598174 d!1246589))

(declare-fun m!4822897 () Bool)

(assert (=> bs!598174 m!4822897))

(assert (=> b!4237402 d!1246589))

(declare-fun d!1246591 () Bool)

(declare-fun res!1742692 () Bool)

(declare-fun e!2631499 () Bool)

(assert (=> d!1246591 (=> res!1742692 e!2631499)))

(assert (=> d!1246591 (= res!1742692 ((_ is Nil!46855) rules!2932))))

(assert (=> d!1246591 (= (noDuplicateTag!3227 thiss!21540 rules!2932 Nil!46857) e!2631499)))

(declare-fun b!4237526 () Bool)

(declare-fun e!2631500 () Bool)

(assert (=> b!4237526 (= e!2631499 e!2631500)))

(declare-fun res!1742693 () Bool)

(assert (=> b!4237526 (=> (not res!1742693) (not e!2631500))))

(declare-fun contains!9716 (List!46981 String!54680) Bool)

(assert (=> b!4237526 (= res!1742693 (not (contains!9716 Nil!46857 (tag!8784 (h!52275 rules!2932)))))))

(declare-fun b!4237527 () Bool)

(assert (=> b!4237527 (= e!2631500 (noDuplicateTag!3227 thiss!21540 (t!349922 rules!2932) (Cons!46857 (tag!8784 (h!52275 rules!2932)) Nil!46857)))))

(assert (= (and d!1246591 (not res!1742692)) b!4237526))

(assert (= (and b!4237526 res!1742693) b!4237527))

(declare-fun m!4822899 () Bool)

(assert (=> b!4237526 m!4822899))

(declare-fun m!4822901 () Bool)

(assert (=> b!4237527 m!4822901))

(assert (=> b!4237281 d!1246591))

(declare-fun d!1246593 () Bool)

(assert (=> d!1246593 (= (inv!17 (value!246256 (h!52274 addTokens!17))) (= (charsToBigInt!1 (text!57498 (value!246256 (h!52274 addTokens!17)))) (value!246248 (value!246256 (h!52274 addTokens!17)))))))

(declare-fun bs!598175 () Bool)

(assert (= bs!598175 d!1246593))

(declare-fun m!4822903 () Bool)

(assert (=> bs!598175 m!4822903))

(assert (=> b!4237401 d!1246593))

(declare-fun d!1246595 () Bool)

(assert (=> d!1246595 true))

(declare-fun lambda!130067 () Int)

(declare-fun order!24651 () Int)

(declare-fun order!24653 () Int)

(declare-fun dynLambda!20079 (Int Int) Int)

(declare-fun dynLambda!20080 (Int Int) Int)

(assert (=> d!1246595 (< (dynLambda!20079 order!24651 (toValue!10664 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) (dynLambda!20080 order!24653 lambda!130067))))

(declare-fun Forall2!1191 (Int) Bool)

(assert (=> d!1246595 (= (equivClasses!3342 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) (Forall2!1191 lambda!130067))))

(declare-fun bs!598189 () Bool)

(assert (= bs!598189 d!1246595))

(declare-fun m!4822997 () Bool)

(assert (=> bs!598189 m!4822997))

(assert (=> b!4237353 d!1246595))

(declare-fun d!1246661 () Bool)

(declare-fun lt!1506019 () Int)

(assert (=> d!1246661 (>= lt!1506019 0)))

(declare-fun e!2631532 () Int)

(assert (=> d!1246661 (= lt!1506019 e!2631532)))

(declare-fun c!720126 () Bool)

(assert (=> d!1246661 (= c!720126 ((_ is Nil!46853) (t!349920 longerInput!51)))))

(assert (=> d!1246661 (= (size!34324 (t!349920 longerInput!51)) lt!1506019)))

(declare-fun b!4237585 () Bool)

(assert (=> b!4237585 (= e!2631532 0)))

(declare-fun b!4237586 () Bool)

(assert (=> b!4237586 (= e!2631532 (+ 1 (size!34324 (t!349920 (t!349920 longerInput!51)))))))

(assert (= (and d!1246661 c!720126) b!4237585))

(assert (= (and d!1246661 (not c!720126)) b!4237586))

(declare-fun m!4822999 () Bool)

(assert (=> b!4237586 m!4822999))

(assert (=> b!4237436 d!1246661))

(declare-fun d!1246663 () Bool)

(assert (=> d!1246663 true))

(declare-fun order!24655 () Int)

(declare-fun lambda!130070 () Int)

(declare-fun order!24657 () Int)

(declare-fun dynLambda!20081 (Int Int) Int)

(declare-fun dynLambda!20082 (Int Int) Int)

(assert (=> d!1246663 (< (dynLambda!20081 order!24655 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) (dynLambda!20082 order!24657 lambda!130070))))

(assert (=> d!1246663 true))

(assert (=> d!1246663 (< (dynLambda!20079 order!24651 (toValue!10664 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) (dynLambda!20082 order!24657 lambda!130070))))

(declare-fun Forall!1591 (Int) Bool)

(assert (=> d!1246663 (= (semiInverseModEq!3443 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) (Forall!1591 lambda!130070))))

(declare-fun bs!598190 () Bool)

(assert (= bs!598190 d!1246663))

(declare-fun m!4823001 () Bool)

(assert (=> bs!598190 m!4823001))

(assert (=> d!1246521 d!1246663))

(declare-fun d!1246665 () Bool)

(declare-fun lt!1506020 () Int)

(assert (=> d!1246665 (>= lt!1506020 0)))

(declare-fun e!2631533 () Int)

(assert (=> d!1246665 (= lt!1506020 e!2631533)))

(declare-fun c!720127 () Bool)

(assert (=> d!1246665 (= c!720127 ((_ is Nil!46854) (t!349921 addTokens!17)))))

(assert (=> d!1246665 (= (size!34325 (t!349921 addTokens!17)) lt!1506020)))

(declare-fun b!4237591 () Bool)

(assert (=> b!4237591 (= e!2631533 0)))

(declare-fun b!4237592 () Bool)

(assert (=> b!4237592 (= e!2631533 (+ 1 (size!34325 (t!349921 (t!349921 addTokens!17)))))))

(assert (= (and d!1246665 c!720127) b!4237591))

(assert (= (and d!1246665 (not c!720127)) b!4237592))

(declare-fun m!4823003 () Bool)

(assert (=> b!4237592 m!4823003))

(assert (=> b!4237397 d!1246665))

(declare-fun d!1246667 () Bool)

(declare-fun c!720130 () Bool)

(assert (=> d!1246667 (= c!720130 ((_ is Node!14131) (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17))))))))

(declare-fun e!2631538 () Bool)

(assert (=> d!1246667 (= (inv!61583 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17))))) e!2631538)))

(declare-fun b!4237599 () Bool)

(declare-fun inv!61587 (Conc!14131) Bool)

(assert (=> b!4237599 (= e!2631538 (inv!61587 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17))))))))

(declare-fun b!4237600 () Bool)

(declare-fun e!2631539 () Bool)

(assert (=> b!4237600 (= e!2631538 e!2631539)))

(declare-fun res!1742713 () Bool)

(assert (=> b!4237600 (= res!1742713 (not ((_ is Leaf!21850) (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17)))))))))

(assert (=> b!4237600 (=> res!1742713 e!2631539)))

(declare-fun b!4237601 () Bool)

(declare-fun inv!61588 (Conc!14131) Bool)

(assert (=> b!4237601 (= e!2631539 (inv!61588 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17))))))))

(assert (= (and d!1246667 c!720130) b!4237599))

(assert (= (and d!1246667 (not c!720130)) b!4237600))

(assert (= (and b!4237600 (not res!1742713)) b!4237601))

(declare-fun m!4823005 () Bool)

(assert (=> b!4237599 m!4823005))

(declare-fun m!4823007 () Bool)

(assert (=> b!4237601 m!4823007))

(assert (=> b!4237429 d!1246667))

(declare-fun bs!598191 () Bool)

(declare-fun d!1246669 () Bool)

(assert (= bs!598191 (and d!1246669 d!1246595)))

(declare-fun lambda!130071 () Int)

(assert (=> bs!598191 (= (= (toValue!10664 (transformation!7920 (h!52275 rules!2932))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) (= lambda!130071 lambda!130067))))

(assert (=> d!1246669 true))

(assert (=> d!1246669 (< (dynLambda!20079 order!24651 (toValue!10664 (transformation!7920 (h!52275 rules!2932)))) (dynLambda!20080 order!24653 lambda!130071))))

(assert (=> d!1246669 (= (equivClasses!3342 (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toValue!10664 (transformation!7920 (h!52275 rules!2932)))) (Forall2!1191 lambda!130071))))

(declare-fun bs!598192 () Bool)

(assert (= bs!598192 d!1246669))

(declare-fun m!4823009 () Bool)

(assert (=> bs!598192 m!4823009))

(assert (=> b!4237430 d!1246669))

(declare-fun d!1246671 () Bool)

(declare-fun c!720131 () Bool)

(assert (=> d!1246671 (= c!720131 ((_ is Node!14131) (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581))))))))

(declare-fun e!2631540 () Bool)

(assert (=> d!1246671 (= (inv!61583 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581))))) e!2631540)))

(declare-fun b!4237602 () Bool)

(assert (=> b!4237602 (= e!2631540 (inv!61587 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581))))))))

(declare-fun b!4237603 () Bool)

(declare-fun e!2631541 () Bool)

(assert (=> b!4237603 (= e!2631540 e!2631541)))

(declare-fun res!1742714 () Bool)

(assert (=> b!4237603 (= res!1742714 (not ((_ is Leaf!21850) (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581)))))))))

(assert (=> b!4237603 (=> res!1742714 e!2631541)))

(declare-fun b!4237604 () Bool)

(assert (=> b!4237604 (= e!2631541 (inv!61588 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581))))))))

(assert (= (and d!1246671 c!720131) b!4237602))

(assert (= (and d!1246671 (not c!720131)) b!4237603))

(assert (= (and b!4237603 (not res!1742714)) b!4237604))

(declare-fun m!4823011 () Bool)

(assert (=> b!4237602 m!4823011))

(declare-fun m!4823013 () Bool)

(assert (=> b!4237604 m!4823013))

(assert (=> b!4237442 d!1246671))

(declare-fun bs!598193 () Bool)

(declare-fun d!1246673 () Bool)

(assert (= bs!598193 (and d!1246673 d!1246595)))

(declare-fun lambda!130072 () Int)

(assert (=> bs!598193 (= (= (toValue!10664 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) (= lambda!130072 lambda!130067))))

(declare-fun bs!598194 () Bool)

(assert (= bs!598194 (and d!1246673 d!1246669)))

(assert (=> bs!598194 (= (= (toValue!10664 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toValue!10664 (transformation!7920 (h!52275 rules!2932)))) (= lambda!130072 lambda!130071))))

(assert (=> d!1246673 true))

(assert (=> d!1246673 (< (dynLambda!20079 order!24651 (toValue!10664 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) (dynLambda!20080 order!24653 lambda!130072))))

(assert (=> d!1246673 (= (equivClasses!3342 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) (Forall2!1191 lambda!130072))))

(declare-fun bs!598195 () Bool)

(assert (= bs!598195 d!1246673))

(declare-fun m!4823015 () Bool)

(assert (=> bs!598195 m!4823015))

(assert (=> b!4237439 d!1246673))

(declare-fun d!1246675 () Bool)

(declare-fun lt!1506021 () Int)

(assert (=> d!1246675 (>= lt!1506021 0)))

(declare-fun e!2631542 () Int)

(assert (=> d!1246675 (= lt!1506021 e!2631542)))

(declare-fun c!720132 () Bool)

(assert (=> d!1246675 (= c!720132 ((_ is Nil!46853) (originalCharacters!8264 (h!52274 addTokens!17))))))

(assert (=> d!1246675 (= (size!34324 (originalCharacters!8264 (h!52274 addTokens!17))) lt!1506021)))

(declare-fun b!4237605 () Bool)

(assert (=> b!4237605 (= e!2631542 0)))

(declare-fun b!4237606 () Bool)

(assert (=> b!4237606 (= e!2631542 (+ 1 (size!34324 (t!349920 (originalCharacters!8264 (h!52274 addTokens!17))))))))

(assert (= (and d!1246675 c!720132) b!4237605))

(assert (= (and d!1246675 (not c!720132)) b!4237606))

(declare-fun m!4823017 () Bool)

(assert (=> b!4237606 m!4823017))

(assert (=> b!4237424 d!1246675))

(declare-fun d!1246677 () Bool)

(assert (=> d!1246677 (= (list!16891 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17)))) (list!16893 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17))))))))

(declare-fun bs!598196 () Bool)

(assert (= bs!598196 d!1246677))

(declare-fun m!4823019 () Bool)

(assert (=> bs!598196 m!4823019))

(assert (=> b!4237423 d!1246677))

(declare-fun d!1246679 () Bool)

(declare-fun lt!1506022 () Int)

(assert (=> d!1246679 (>= lt!1506022 0)))

(declare-fun e!2631543 () Int)

(assert (=> d!1246679 (= lt!1506022 e!2631543)))

(declare-fun c!720133 () Bool)

(assert (=> d!1246679 (= c!720133 ((_ is Nil!46854) (_1!25348 lt!1505986)))))

(assert (=> d!1246679 (= (size!34325 (_1!25348 lt!1505986)) lt!1506022)))

(declare-fun b!4237607 () Bool)

(assert (=> b!4237607 (= e!2631543 0)))

(declare-fun b!4237608 () Bool)

(assert (=> b!4237608 (= e!2631543 (+ 1 (size!34325 (t!349921 (_1!25348 lt!1505986)))))))

(assert (= (and d!1246679 c!720133) b!4237607))

(assert (= (and d!1246679 (not c!720133)) b!4237608))

(declare-fun m!4823021 () Bool)

(assert (=> b!4237608 m!4823021))

(assert (=> d!1246495 d!1246679))

(declare-fun b!4237766 () Bool)

(declare-fun e!2631615 () Bool)

(declare-fun e!2631616 () Bool)

(assert (=> b!4237766 (= e!2631615 e!2631616)))

(declare-fun res!1742760 () Bool)

(assert (=> b!4237766 (=> (not res!1742760) (not e!2631616))))

(declare-fun lt!1506052 () Option!10055)

(declare-fun isDefined!7433 (Option!10055) Bool)

(assert (=> b!4237766 (= res!1742760 (isDefined!7433 lt!1506052))))

(declare-fun b!4237767 () Bool)

(declare-fun contains!9717 (List!46979 Rule!15640) Bool)

(declare-fun get!15235 (Option!10055) tuple2!44430)

(assert (=> b!4237767 (= e!2631616 (contains!9717 rules!2932 (rule!11044 (_1!25349 (get!15235 lt!1506052)))))))

(declare-fun b!4237768 () Bool)

(declare-fun e!2631617 () Option!10055)

(declare-fun call!293798 () Option!10055)

(assert (=> b!4237768 (= e!2631617 call!293798)))

(declare-fun b!4237769 () Bool)

(declare-fun res!1742756 () Bool)

(assert (=> b!4237769 (=> (not res!1742756) (not e!2631616))))

(declare-fun charsOf!5273 (Token!14466) BalanceConc!27856)

(assert (=> b!4237769 (= res!1742756 (= (list!16891 (charsOf!5273 (_1!25349 (get!15235 lt!1506052)))) (originalCharacters!8264 (_1!25349 (get!15235 lt!1506052)))))))

(declare-fun b!4237770 () Bool)

(declare-fun res!1742758 () Bool)

(assert (=> b!4237770 (=> (not res!1742758) (not e!2631616))))

(declare-fun apply!10745 (TokenValueInjection!15728 BalanceConc!27856) TokenValue!8150)

(declare-fun seqFromList!5805 (List!46977) BalanceConc!27856)

(assert (=> b!4237770 (= res!1742758 (= (value!246256 (_1!25349 (get!15235 lt!1506052))) (apply!10745 (transformation!7920 (rule!11044 (_1!25349 (get!15235 lt!1506052)))) (seqFromList!5805 (originalCharacters!8264 (_1!25349 (get!15235 lt!1506052)))))))))

(declare-fun d!1246681 () Bool)

(assert (=> d!1246681 e!2631615))

(declare-fun res!1742757 () Bool)

(assert (=> d!1246681 (=> res!1742757 e!2631615)))

(declare-fun isEmpty!27694 (Option!10055) Bool)

(assert (=> d!1246681 (= res!1742757 (isEmpty!27694 lt!1506052))))

(assert (=> d!1246681 (= lt!1506052 e!2631617)))

(declare-fun c!720140 () Bool)

(assert (=> d!1246681 (= c!720140 (and ((_ is Cons!46855) rules!2932) ((_ is Nil!46855) (t!349922 rules!2932))))))

(declare-datatypes ((Unit!65949 0))(
  ( (Unit!65950) )
))
(declare-fun lt!1506050 () Unit!65949)

(declare-fun lt!1506051 () Unit!65949)

(assert (=> d!1246681 (= lt!1506050 lt!1506051)))

(declare-fun isPrefix!4718 (List!46977 List!46977) Bool)

(assert (=> d!1246681 (isPrefix!4718 longerInput!51 longerInput!51)))

(declare-fun lemmaIsPrefixRefl!3115 (List!46977 List!46977) Unit!65949)

(assert (=> d!1246681 (= lt!1506051 (lemmaIsPrefixRefl!3115 longerInput!51 longerInput!51))))

(declare-fun rulesValidInductive!2968 (LexerInterface!7515 List!46979) Bool)

(assert (=> d!1246681 (rulesValidInductive!2968 thiss!21540 rules!2932)))

(assert (=> d!1246681 (= (maxPrefix!4472 thiss!21540 rules!2932 longerInput!51) lt!1506052)))

(declare-fun b!4237771 () Bool)

(declare-fun res!1742761 () Bool)

(assert (=> b!4237771 (=> (not res!1742761) (not e!2631616))))

(declare-fun ++!11930 (List!46977 List!46977) List!46977)

(assert (=> b!4237771 (= res!1742761 (= (++!11930 (list!16891 (charsOf!5273 (_1!25349 (get!15235 lt!1506052)))) (_2!25349 (get!15235 lt!1506052))) longerInput!51))))

(declare-fun bm!293793 () Bool)

(declare-fun maxPrefixOneRule!3443 (LexerInterface!7515 Rule!15640 List!46977) Option!10055)

(assert (=> bm!293793 (= call!293798 (maxPrefixOneRule!3443 thiss!21540 (h!52275 rules!2932) longerInput!51))))

(declare-fun b!4237772 () Bool)

(declare-fun res!1742762 () Bool)

(assert (=> b!4237772 (=> (not res!1742762) (not e!2631616))))

(declare-fun matchR!6440 (Regex!12825 List!46977) Bool)

(assert (=> b!4237772 (= res!1742762 (matchR!6440 (regex!7920 (rule!11044 (_1!25349 (get!15235 lt!1506052)))) (list!16891 (charsOf!5273 (_1!25349 (get!15235 lt!1506052))))))))

(declare-fun b!4237773 () Bool)

(declare-fun res!1742759 () Bool)

(assert (=> b!4237773 (=> (not res!1742759) (not e!2631616))))

(assert (=> b!4237773 (= res!1742759 (< (size!34324 (_2!25349 (get!15235 lt!1506052))) (size!34324 longerInput!51)))))

(declare-fun b!4237774 () Bool)

(declare-fun lt!1506053 () Option!10055)

(declare-fun lt!1506049 () Option!10055)

(assert (=> b!4237774 (= e!2631617 (ite (and ((_ is None!10054) lt!1506053) ((_ is None!10054) lt!1506049)) None!10054 (ite ((_ is None!10054) lt!1506049) lt!1506053 (ite ((_ is None!10054) lt!1506053) lt!1506049 (ite (>= (size!34323 (_1!25349 (v!41002 lt!1506053))) (size!34323 (_1!25349 (v!41002 lt!1506049)))) lt!1506053 lt!1506049)))))))

(assert (=> b!4237774 (= lt!1506053 call!293798)))

(assert (=> b!4237774 (= lt!1506049 (maxPrefix!4472 thiss!21540 (t!349922 rules!2932) longerInput!51))))

(assert (= (and d!1246681 c!720140) b!4237768))

(assert (= (and d!1246681 (not c!720140)) b!4237774))

(assert (= (or b!4237768 b!4237774) bm!293793))

(assert (= (and d!1246681 (not res!1742757)) b!4237766))

(assert (= (and b!4237766 res!1742760) b!4237769))

(assert (= (and b!4237769 res!1742756) b!4237773))

(assert (= (and b!4237773 res!1742759) b!4237771))

(assert (= (and b!4237771 res!1742761) b!4237770))

(assert (= (and b!4237770 res!1742758) b!4237772))

(assert (= (and b!4237772 res!1742762) b!4237767))

(declare-fun m!4823099 () Bool)

(assert (=> b!4237767 m!4823099))

(declare-fun m!4823101 () Bool)

(assert (=> b!4237767 m!4823101))

(declare-fun m!4823103 () Bool)

(assert (=> bm!293793 m!4823103))

(declare-fun m!4823105 () Bool)

(assert (=> d!1246681 m!4823105))

(declare-fun m!4823107 () Bool)

(assert (=> d!1246681 m!4823107))

(declare-fun m!4823109 () Bool)

(assert (=> d!1246681 m!4823109))

(declare-fun m!4823111 () Bool)

(assert (=> d!1246681 m!4823111))

(assert (=> b!4237771 m!4823099))

(declare-fun m!4823113 () Bool)

(assert (=> b!4237771 m!4823113))

(assert (=> b!4237771 m!4823113))

(declare-fun m!4823115 () Bool)

(assert (=> b!4237771 m!4823115))

(assert (=> b!4237771 m!4823115))

(declare-fun m!4823117 () Bool)

(assert (=> b!4237771 m!4823117))

(assert (=> b!4237770 m!4823099))

(declare-fun m!4823119 () Bool)

(assert (=> b!4237770 m!4823119))

(assert (=> b!4237770 m!4823119))

(declare-fun m!4823121 () Bool)

(assert (=> b!4237770 m!4823121))

(declare-fun m!4823123 () Bool)

(assert (=> b!4237774 m!4823123))

(assert (=> b!4237772 m!4823099))

(assert (=> b!4237772 m!4823113))

(assert (=> b!4237772 m!4823113))

(assert (=> b!4237772 m!4823115))

(assert (=> b!4237772 m!4823115))

(declare-fun m!4823125 () Bool)

(assert (=> b!4237772 m!4823125))

(assert (=> b!4237773 m!4823099))

(declare-fun m!4823127 () Bool)

(assert (=> b!4237773 m!4823127))

(assert (=> b!4237773 m!4822659))

(declare-fun m!4823129 () Bool)

(assert (=> b!4237766 m!4823129))

(assert (=> b!4237769 m!4823099))

(assert (=> b!4237769 m!4823113))

(assert (=> b!4237769 m!4823113))

(assert (=> b!4237769 m!4823115))

(assert (=> d!1246495 d!1246681))

(declare-fun bs!598205 () Bool)

(declare-fun d!1246695 () Bool)

(assert (= bs!598205 (and d!1246695 d!1246663)))

(declare-fun lambda!130075 () Int)

(assert (=> bs!598205 (= (and (= (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) (= (toValue!10664 (transformation!7920 (h!52275 rules!2932))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))))) (= lambda!130075 lambda!130070))))

(assert (=> d!1246695 true))

(assert (=> d!1246695 (< (dynLambda!20081 order!24655 (toChars!10523 (transformation!7920 (h!52275 rules!2932)))) (dynLambda!20082 order!24657 lambda!130075))))

(assert (=> d!1246695 true))

(assert (=> d!1246695 (< (dynLambda!20079 order!24651 (toValue!10664 (transformation!7920 (h!52275 rules!2932)))) (dynLambda!20082 order!24657 lambda!130075))))

(assert (=> d!1246695 (= (semiInverseModEq!3443 (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toValue!10664 (transformation!7920 (h!52275 rules!2932)))) (Forall!1591 lambda!130075))))

(declare-fun bs!598206 () Bool)

(assert (= bs!598206 d!1246695))

(declare-fun m!4823131 () Bool)

(assert (=> bs!598206 m!4823131))

(assert (=> d!1246539 d!1246695))

(declare-fun bs!598207 () Bool)

(declare-fun d!1246697 () Bool)

(assert (= bs!598207 (and d!1246697 d!1246663)))

(declare-fun lambda!130076 () Int)

(assert (=> bs!598207 (= (and (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) (= (toValue!10664 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))))) (= lambda!130076 lambda!130070))))

(declare-fun bs!598208 () Bool)

(assert (= bs!598208 (and d!1246697 d!1246695)))

(assert (=> bs!598208 (= (and (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toChars!10523 (transformation!7920 (h!52275 rules!2932)))) (= (toValue!10664 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toValue!10664 (transformation!7920 (h!52275 rules!2932))))) (= lambda!130076 lambda!130075))))

(assert (=> d!1246697 true))

(assert (=> d!1246697 (< (dynLambda!20081 order!24655 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) (dynLambda!20082 order!24657 lambda!130076))))

(assert (=> d!1246697 true))

(assert (=> d!1246697 (< (dynLambda!20079 order!24651 (toValue!10664 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) (dynLambda!20082 order!24657 lambda!130076))))

(assert (=> d!1246697 (= (semiInverseModEq!3443 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) (Forall!1591 lambda!130076))))

(declare-fun bs!598209 () Bool)

(assert (= bs!598209 d!1246697))

(declare-fun m!4823133 () Bool)

(assert (=> bs!598209 m!4823133))

(assert (=> d!1246547 d!1246697))

(declare-fun d!1246699 () Bool)

(assert (=> d!1246699 (= (isEmpty!27693 (_1!25348 lt!1505986)) ((_ is Nil!46854) (_1!25348 lt!1505986)))))

(assert (=> b!4237325 d!1246699))

(declare-fun d!1246701 () Bool)

(assert (=> d!1246701 (= (inv!61584 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581)))) (isBalanced!3754 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581))))))))

(declare-fun bs!598210 () Bool)

(assert (= bs!598210 d!1246701))

(declare-fun m!4823135 () Bool)

(assert (=> bs!598210 m!4823135))

(assert (=> tb!254165 d!1246701))

(declare-fun d!1246703 () Bool)

(assert (=> d!1246703 true))

(declare-fun lt!1506056 () Bool)

(assert (=> d!1246703 (= lt!1506056 (rulesValidInductive!2968 thiss!21540 rules!2932))))

(declare-fun lambda!130079 () Int)

(declare-fun forall!8532 (List!46979 Int) Bool)

(assert (=> d!1246703 (= lt!1506056 (forall!8532 rules!2932 lambda!130079))))

(assert (=> d!1246703 (= (rulesValid!3066 thiss!21540 rules!2932) lt!1506056)))

(declare-fun bs!598211 () Bool)

(assert (= bs!598211 d!1246703))

(assert (=> bs!598211 m!4823111))

(declare-fun m!4823137 () Bool)

(assert (=> bs!598211 m!4823137))

(assert (=> d!1246487 d!1246703))

(declare-fun d!1246705 () Bool)

(declare-fun lt!1506057 () Int)

(assert (=> d!1246705 (>= lt!1506057 0)))

(declare-fun e!2631618 () Int)

(assert (=> d!1246705 (= lt!1506057 e!2631618)))

(declare-fun c!720141 () Bool)

(assert (=> d!1246705 (= c!720141 ((_ is Nil!46853) (_2!25348 lt!1505986)))))

(assert (=> d!1246705 (= (size!34324 (_2!25348 lt!1505986)) lt!1506057)))

(declare-fun b!4237777 () Bool)

(assert (=> b!4237777 (= e!2631618 0)))

(declare-fun b!4237778 () Bool)

(assert (=> b!4237778 (= e!2631618 (+ 1 (size!34324 (t!349920 (_2!25348 lt!1505986)))))))

(assert (= (and d!1246705 c!720141) b!4237777))

(assert (= (and d!1246705 (not c!720141)) b!4237778))

(declare-fun m!4823139 () Bool)

(assert (=> b!4237778 m!4823139))

(assert (=> b!4237327 d!1246705))

(assert (=> b!4237327 d!1246541))

(declare-fun d!1246707 () Bool)

(assert (=> d!1246707 (= (inv!61576 (tag!8784 (rule!11044 (h!52274 (t!349921 tokens!581))))) (= (mod (str.len (value!246255 (tag!8784 (rule!11044 (h!52274 (t!349921 tokens!581)))))) 2) 0))))

(assert (=> b!4237488 d!1246707))

(declare-fun d!1246709 () Bool)

(declare-fun res!1742763 () Bool)

(declare-fun e!2631619 () Bool)

(assert (=> d!1246709 (=> (not res!1742763) (not e!2631619))))

(assert (=> d!1246709 (= res!1742763 (semiInverseModEq!3443 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))))))

(assert (=> d!1246709 (= (inv!61579 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) e!2631619)))

(declare-fun b!4237779 () Bool)

(assert (=> b!4237779 (= e!2631619 (equivClasses!3342 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (toValue!10664 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))))))

(assert (= (and d!1246709 res!1742763) b!4237779))

(declare-fun m!4823141 () Bool)

(assert (=> d!1246709 m!4823141))

(declare-fun m!4823143 () Bool)

(assert (=> b!4237779 m!4823143))

(assert (=> b!4237488 d!1246709))

(declare-fun d!1246711 () Bool)

(assert (=> d!1246711 (= (isEmpty!27692 (originalCharacters!8264 (h!52274 addTokens!17))) ((_ is Nil!46853) (originalCharacters!8264 (h!52274 addTokens!17))))))

(assert (=> d!1246533 d!1246711))

(declare-fun d!1246713 () Bool)

(declare-fun c!720142 () Bool)

(assert (=> d!1246713 (= c!720142 ((_ is IntegerValue!24450) (value!246256 (h!52274 (t!349921 tokens!581)))))))

(declare-fun e!2631621 () Bool)

(assert (=> d!1246713 (= (inv!21 (value!246256 (h!52274 (t!349921 tokens!581)))) e!2631621)))

(declare-fun b!4237780 () Bool)

(declare-fun e!2631620 () Bool)

(assert (=> b!4237780 (= e!2631621 e!2631620)))

(declare-fun c!720143 () Bool)

(assert (=> b!4237780 (= c!720143 ((_ is IntegerValue!24451) (value!246256 (h!52274 (t!349921 tokens!581)))))))

(declare-fun b!4237781 () Bool)

(assert (=> b!4237781 (= e!2631620 (inv!17 (value!246256 (h!52274 (t!349921 tokens!581)))))))

(declare-fun b!4237782 () Bool)

(assert (=> b!4237782 (= e!2631621 (inv!16 (value!246256 (h!52274 (t!349921 tokens!581)))))))

(declare-fun b!4237783 () Bool)

(declare-fun res!1742764 () Bool)

(declare-fun e!2631622 () Bool)

(assert (=> b!4237783 (=> res!1742764 e!2631622)))

(assert (=> b!4237783 (= res!1742764 (not ((_ is IntegerValue!24452) (value!246256 (h!52274 (t!349921 tokens!581))))))))

(assert (=> b!4237783 (= e!2631620 e!2631622)))

(declare-fun b!4237784 () Bool)

(assert (=> b!4237784 (= e!2631622 (inv!15 (value!246256 (h!52274 (t!349921 tokens!581)))))))

(assert (= (and d!1246713 c!720142) b!4237782))

(assert (= (and d!1246713 (not c!720142)) b!4237780))

(assert (= (and b!4237780 c!720143) b!4237781))

(assert (= (and b!4237780 (not c!720143)) b!4237783))

(assert (= (and b!4237783 (not res!1742764)) b!4237784))

(declare-fun m!4823145 () Bool)

(assert (=> b!4237781 m!4823145))

(declare-fun m!4823147 () Bool)

(assert (=> b!4237782 m!4823147))

(declare-fun m!4823149 () Bool)

(assert (=> b!4237784 m!4823149))

(assert (=> b!4237487 d!1246713))

(declare-fun b!4237785 () Bool)

(declare-fun e!2631625 () Bool)

(declare-fun lt!1506058 () tuple2!44428)

(assert (=> b!4237785 (= e!2631625 (not (isEmpty!27693 (_1!25348 lt!1506058))))))

(declare-fun b!4237786 () Bool)

(declare-fun e!2631623 () Bool)

(assert (=> b!4237786 (= e!2631623 (= (_2!25348 lt!1506058) (_2!25349 (v!41002 lt!1505987))))))

(declare-fun b!4237787 () Bool)

(assert (=> b!4237787 (= e!2631623 e!2631625)))

(declare-fun res!1742765 () Bool)

(assert (=> b!4237787 (= res!1742765 (< (size!34324 (_2!25348 lt!1506058)) (size!34324 (_2!25349 (v!41002 lt!1505987)))))))

(assert (=> b!4237787 (=> (not res!1742765) (not e!2631625))))

(declare-fun b!4237788 () Bool)

(declare-fun e!2631624 () tuple2!44428)

(assert (=> b!4237788 (= e!2631624 (tuple2!44429 Nil!46854 (_2!25349 (v!41002 lt!1505987))))))

(declare-fun d!1246715 () Bool)

(assert (=> d!1246715 e!2631623))

(declare-fun c!720145 () Bool)

(assert (=> d!1246715 (= c!720145 (> (size!34325 (_1!25348 lt!1506058)) 0))))

(assert (=> d!1246715 (= lt!1506058 e!2631624)))

(declare-fun c!720144 () Bool)

(declare-fun lt!1506059 () Option!10055)

(assert (=> d!1246715 (= c!720144 ((_ is Some!10054) lt!1506059))))

(assert (=> d!1246715 (= lt!1506059 (maxPrefix!4472 thiss!21540 rules!2932 (_2!25349 (v!41002 lt!1505987))))))

(assert (=> d!1246715 (= (lexList!2021 thiss!21540 rules!2932 (_2!25349 (v!41002 lt!1505987))) lt!1506058)))

(declare-fun b!4237789 () Bool)

(declare-fun lt!1506060 () tuple2!44428)

(assert (=> b!4237789 (= e!2631624 (tuple2!44429 (Cons!46854 (_1!25349 (v!41002 lt!1506059)) (_1!25348 lt!1506060)) (_2!25348 lt!1506060)))))

(assert (=> b!4237789 (= lt!1506060 (lexList!2021 thiss!21540 rules!2932 (_2!25349 (v!41002 lt!1506059))))))

(assert (= (and d!1246715 c!720144) b!4237789))

(assert (= (and d!1246715 (not c!720144)) b!4237788))

(assert (= (and d!1246715 c!720145) b!4237787))

(assert (= (and d!1246715 (not c!720145)) b!4237786))

(assert (= (and b!4237787 res!1742765) b!4237785))

(declare-fun m!4823151 () Bool)

(assert (=> b!4237785 m!4823151))

(declare-fun m!4823153 () Bool)

(assert (=> b!4237787 m!4823153))

(declare-fun m!4823155 () Bool)

(assert (=> b!4237787 m!4823155))

(declare-fun m!4823157 () Bool)

(assert (=> d!1246715 m!4823157))

(declare-fun m!4823159 () Bool)

(assert (=> d!1246715 m!4823159))

(declare-fun m!4823161 () Bool)

(assert (=> b!4237789 m!4823161))

(assert (=> b!4237329 d!1246715))

(declare-fun d!1246717 () Bool)

(declare-fun res!1742766 () Bool)

(declare-fun e!2631626 () Bool)

(assert (=> d!1246717 (=> (not res!1742766) (not e!2631626))))

(assert (=> d!1246717 (= res!1742766 (not (isEmpty!27692 (originalCharacters!8264 (h!52274 (t!349921 tokens!581))))))))

(assert (=> d!1246717 (= (inv!61580 (h!52274 (t!349921 tokens!581))) e!2631626)))

(declare-fun b!4237790 () Bool)

(declare-fun res!1742767 () Bool)

(assert (=> b!4237790 (=> (not res!1742767) (not e!2631626))))

(assert (=> b!4237790 (= res!1742767 (= (originalCharacters!8264 (h!52274 (t!349921 tokens!581))) (list!16891 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (value!246256 (h!52274 (t!349921 tokens!581)))))))))

(declare-fun b!4237791 () Bool)

(assert (=> b!4237791 (= e!2631626 (= (size!34323 (h!52274 (t!349921 tokens!581))) (size!34324 (originalCharacters!8264 (h!52274 (t!349921 tokens!581))))))))

(assert (= (and d!1246717 res!1742766) b!4237790))

(assert (= (and b!4237790 res!1742767) b!4237791))

(declare-fun b_lambda!124733 () Bool)

(assert (=> (not b_lambda!124733) (not b!4237790)))

(declare-fun tb!254243 () Bool)

(declare-fun t!350034 () Bool)

(assert (=> (and b!4237501 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 rules!2932)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) t!350034) tb!254243))

(declare-fun b!4237792 () Bool)

(declare-fun e!2631627 () Bool)

(declare-fun tp!1298431 () Bool)

(assert (=> b!4237792 (= e!2631627 (and (inv!61583 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (value!246256 (h!52274 (t!349921 tokens!581)))))) tp!1298431))))

(declare-fun result!310138 () Bool)

(assert (=> tb!254243 (= result!310138 (and (inv!61584 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (value!246256 (h!52274 (t!349921 tokens!581))))) e!2631627))))

(assert (= tb!254243 b!4237792))

(declare-fun m!4823163 () Bool)

(assert (=> b!4237792 m!4823163))

(declare-fun m!4823165 () Bool)

(assert (=> tb!254243 m!4823165))

(assert (=> b!4237790 t!350034))

(declare-fun b_and!334889 () Bool)

(assert (= b_and!334843 (and (=> t!350034 result!310138) b_and!334889)))

(declare-fun tb!254245 () Bool)

(declare-fun t!350036 () Bool)

(assert (=> (and b!4237240 (= (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) t!350036) tb!254245))

(declare-fun result!310140 () Bool)

(assert (= result!310140 result!310138))

(assert (=> b!4237790 t!350036))

(declare-fun b_and!334891 () Bool)

(assert (= b_and!334849 (and (=> t!350036 result!310140) b_and!334891)))

(declare-fun t!350038 () Bool)

(declare-fun tb!254247 () Bool)

(assert (=> (and b!4237489 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) t!350038) tb!254247))

(declare-fun result!310142 () Bool)

(assert (= result!310142 result!310138))

(assert (=> b!4237790 t!350038))

(declare-fun b_and!334893 () Bool)

(assert (= b_and!334841 (and (=> t!350038 result!310142) b_and!334893)))

(declare-fun tb!254249 () Bool)

(declare-fun t!350040 () Bool)

(assert (=> (and b!4237233 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) t!350040) tb!254249))

(declare-fun result!310144 () Bool)

(assert (= result!310144 result!310138))

(assert (=> b!4237790 t!350040))

(declare-fun b_and!334895 () Bool)

(assert (= b_and!334851 (and (=> t!350040 result!310144) b_and!334895)))

(declare-fun tb!254251 () Bool)

(declare-fun t!350042 () Bool)

(assert (=> (and b!4237477 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) t!350042) tb!254251))

(declare-fun result!310146 () Bool)

(assert (= result!310146 result!310138))

(assert (=> b!4237790 t!350042))

(declare-fun b_and!334897 () Bool)

(assert (= b_and!334847 (and (=> t!350042 result!310146) b_and!334897)))

(declare-fun t!350044 () Bool)

(declare-fun tb!254253 () Bool)

(assert (=> (and b!4237224 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) t!350044) tb!254253))

(declare-fun result!310148 () Bool)

(assert (= result!310148 result!310138))

(assert (=> b!4237790 t!350044))

(declare-fun b_and!334899 () Bool)

(assert (= b_and!334845 (and (=> t!350044 result!310148) b_and!334899)))

(declare-fun m!4823167 () Bool)

(assert (=> d!1246717 m!4823167))

(declare-fun m!4823169 () Bool)

(assert (=> b!4237790 m!4823169))

(assert (=> b!4237790 m!4823169))

(declare-fun m!4823171 () Bool)

(assert (=> b!4237790 m!4823171))

(declare-fun m!4823173 () Bool)

(assert (=> b!4237791 m!4823173))

(assert (=> b!4237486 d!1246717))

(declare-fun b!4237793 () Bool)

(declare-fun e!2631628 () Bool)

(assert (=> b!4237793 (= e!2631628 tp_is_empty!22641)))

(assert (=> b!4237481 (= tp!1298276 e!2631628)))

(declare-fun b!4237794 () Bool)

(declare-fun tp!1298435 () Bool)

(declare-fun tp!1298433 () Bool)

(assert (=> b!4237794 (= e!2631628 (and tp!1298435 tp!1298433))))

(declare-fun b!4237795 () Bool)

(declare-fun tp!1298436 () Bool)

(assert (=> b!4237795 (= e!2631628 tp!1298436)))

(declare-fun b!4237796 () Bool)

(declare-fun tp!1298432 () Bool)

(declare-fun tp!1298434 () Bool)

(assert (=> b!4237796 (= e!2631628 (and tp!1298432 tp!1298434))))

(assert (= (and b!4237481 ((_ is ElementMatch!12825) (regOne!26163 (regex!7920 (h!52275 rules!2932))))) b!4237793))

(assert (= (and b!4237481 ((_ is Concat!20976) (regOne!26163 (regex!7920 (h!52275 rules!2932))))) b!4237794))

(assert (= (and b!4237481 ((_ is Star!12825) (regOne!26163 (regex!7920 (h!52275 rules!2932))))) b!4237795))

(assert (= (and b!4237481 ((_ is Union!12825) (regOne!26163 (regex!7920 (h!52275 rules!2932))))) b!4237796))

(declare-fun b!4237797 () Bool)

(declare-fun e!2631629 () Bool)

(assert (=> b!4237797 (= e!2631629 tp_is_empty!22641)))

(assert (=> b!4237481 (= tp!1298278 e!2631629)))

(declare-fun b!4237798 () Bool)

(declare-fun tp!1298440 () Bool)

(declare-fun tp!1298438 () Bool)

(assert (=> b!4237798 (= e!2631629 (and tp!1298440 tp!1298438))))

(declare-fun b!4237799 () Bool)

(declare-fun tp!1298441 () Bool)

(assert (=> b!4237799 (= e!2631629 tp!1298441)))

(declare-fun b!4237800 () Bool)

(declare-fun tp!1298437 () Bool)

(declare-fun tp!1298439 () Bool)

(assert (=> b!4237800 (= e!2631629 (and tp!1298437 tp!1298439))))

(assert (= (and b!4237481 ((_ is ElementMatch!12825) (regTwo!26163 (regex!7920 (h!52275 rules!2932))))) b!4237797))

(assert (= (and b!4237481 ((_ is Concat!20976) (regTwo!26163 (regex!7920 (h!52275 rules!2932))))) b!4237798))

(assert (= (and b!4237481 ((_ is Star!12825) (regTwo!26163 (regex!7920 (h!52275 rules!2932))))) b!4237799))

(assert (= (and b!4237481 ((_ is Union!12825) (regTwo!26163 (regex!7920 (h!52275 rules!2932))))) b!4237800))

(declare-fun b!4237801 () Bool)

(declare-fun e!2631630 () Bool)

(assert (=> b!4237801 (= e!2631630 tp_is_empty!22641)))

(assert (=> b!4237476 (= tp!1298273 e!2631630)))

(declare-fun b!4237802 () Bool)

(declare-fun tp!1298445 () Bool)

(declare-fun tp!1298443 () Bool)

(assert (=> b!4237802 (= e!2631630 (and tp!1298445 tp!1298443))))

(declare-fun b!4237803 () Bool)

(declare-fun tp!1298446 () Bool)

(assert (=> b!4237803 (= e!2631630 tp!1298446)))

(declare-fun b!4237804 () Bool)

(declare-fun tp!1298442 () Bool)

(declare-fun tp!1298444 () Bool)

(assert (=> b!4237804 (= e!2631630 (and tp!1298442 tp!1298444))))

(assert (= (and b!4237476 ((_ is ElementMatch!12825) (regex!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) b!4237801))

(assert (= (and b!4237476 ((_ is Concat!20976) (regex!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) b!4237802))

(assert (= (and b!4237476 ((_ is Star!12825) (regex!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) b!4237803))

(assert (= (and b!4237476 ((_ is Union!12825) (regex!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) b!4237804))

(declare-fun b!4237805 () Bool)

(declare-fun e!2631631 () Bool)

(assert (=> b!4237805 (= e!2631631 tp_is_empty!22641)))

(assert (=> b!4237480 (= tp!1298280 e!2631631)))

(declare-fun b!4237806 () Bool)

(declare-fun tp!1298450 () Bool)

(declare-fun tp!1298448 () Bool)

(assert (=> b!4237806 (= e!2631631 (and tp!1298450 tp!1298448))))

(declare-fun b!4237807 () Bool)

(declare-fun tp!1298451 () Bool)

(assert (=> b!4237807 (= e!2631631 tp!1298451)))

(declare-fun b!4237808 () Bool)

(declare-fun tp!1298447 () Bool)

(declare-fun tp!1298449 () Bool)

(assert (=> b!4237808 (= e!2631631 (and tp!1298447 tp!1298449))))

(assert (= (and b!4237480 ((_ is ElementMatch!12825) (reg!13154 (regex!7920 (h!52275 rules!2932))))) b!4237805))

(assert (= (and b!4237480 ((_ is Concat!20976) (reg!13154 (regex!7920 (h!52275 rules!2932))))) b!4237806))

(assert (= (and b!4237480 ((_ is Star!12825) (reg!13154 (regex!7920 (h!52275 rules!2932))))) b!4237807))

(assert (= (and b!4237480 ((_ is Union!12825) (reg!13154 (regex!7920 (h!52275 rules!2932))))) b!4237808))

(declare-fun b!4237809 () Bool)

(declare-fun e!2631632 () Bool)

(declare-fun tp!1298452 () Bool)

(assert (=> b!4237809 (= e!2631632 (and tp_is_empty!22641 tp!1298452))))

(assert (=> b!4237475 (= tp!1298275 e!2631632)))

(assert (= (and b!4237475 ((_ is Cons!46853) (originalCharacters!8264 (h!52274 (t!349921 addTokens!17))))) b!4237809))

(declare-fun b!4237810 () Bool)

(declare-fun e!2631633 () Bool)

(assert (=> b!4237810 (= e!2631633 tp_is_empty!22641)))

(assert (=> b!4237479 (= tp!1298279 e!2631633)))

(declare-fun b!4237811 () Bool)

(declare-fun tp!1298456 () Bool)

(declare-fun tp!1298454 () Bool)

(assert (=> b!4237811 (= e!2631633 (and tp!1298456 tp!1298454))))

(declare-fun b!4237812 () Bool)

(declare-fun tp!1298457 () Bool)

(assert (=> b!4237812 (= e!2631633 tp!1298457)))

(declare-fun b!4237813 () Bool)

(declare-fun tp!1298453 () Bool)

(declare-fun tp!1298455 () Bool)

(assert (=> b!4237813 (= e!2631633 (and tp!1298453 tp!1298455))))

(assert (= (and b!4237479 ((_ is ElementMatch!12825) (regOne!26162 (regex!7920 (h!52275 rules!2932))))) b!4237810))

(assert (= (and b!4237479 ((_ is Concat!20976) (regOne!26162 (regex!7920 (h!52275 rules!2932))))) b!4237811))

(assert (= (and b!4237479 ((_ is Star!12825) (regOne!26162 (regex!7920 (h!52275 rules!2932))))) b!4237812))

(assert (= (and b!4237479 ((_ is Union!12825) (regOne!26162 (regex!7920 (h!52275 rules!2932))))) b!4237813))

(declare-fun b!4237814 () Bool)

(declare-fun e!2631634 () Bool)

(assert (=> b!4237814 (= e!2631634 tp_is_empty!22641)))

(assert (=> b!4237479 (= tp!1298277 e!2631634)))

(declare-fun b!4237815 () Bool)

(declare-fun tp!1298461 () Bool)

(declare-fun tp!1298459 () Bool)

(assert (=> b!4237815 (= e!2631634 (and tp!1298461 tp!1298459))))

(declare-fun b!4237816 () Bool)

(declare-fun tp!1298462 () Bool)

(assert (=> b!4237816 (= e!2631634 tp!1298462)))

(declare-fun b!4237817 () Bool)

(declare-fun tp!1298458 () Bool)

(declare-fun tp!1298460 () Bool)

(assert (=> b!4237817 (= e!2631634 (and tp!1298458 tp!1298460))))

(assert (= (and b!4237479 ((_ is ElementMatch!12825) (regTwo!26162 (regex!7920 (h!52275 rules!2932))))) b!4237814))

(assert (= (and b!4237479 ((_ is Concat!20976) (regTwo!26162 (regex!7920 (h!52275 rules!2932))))) b!4237815))

(assert (= (and b!4237479 ((_ is Star!12825) (regTwo!26162 (regex!7920 (h!52275 rules!2932))))) b!4237816))

(assert (= (and b!4237479 ((_ is Union!12825) (regTwo!26162 (regex!7920 (h!52275 rules!2932))))) b!4237817))

(declare-fun b!4237818 () Bool)

(declare-fun e!2631635 () Bool)

(declare-fun tp!1298463 () Bool)

(assert (=> b!4237818 (= e!2631635 (and tp_is_empty!22641 tp!1298463))))

(assert (=> b!4237490 (= tp!1298291 e!2631635)))

(assert (= (and b!4237490 ((_ is Cons!46853) (t!349920 (t!349920 shorterInput!51)))) b!4237818))

(declare-fun b!4237822 () Bool)

(declare-fun b_free!125359 () Bool)

(declare-fun b_next!126063 () Bool)

(assert (=> b!4237822 (= b_free!125359 (not b_next!126063))))

(declare-fun tp!1298465 () Bool)

(declare-fun b_and!334901 () Bool)

(assert (=> b!4237822 (= tp!1298465 b_and!334901)))

(declare-fun b_free!125361 () Bool)

(declare-fun b_next!126065 () Bool)

(assert (=> b!4237822 (= b_free!125361 (not b_next!126065))))

(declare-fun t!350046 () Bool)

(declare-fun tb!254255 () Bool)

(assert (=> (and b!4237822 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 addTokens!17)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) t!350046) tb!254255))

(declare-fun result!310150 () Bool)

(assert (= result!310150 result!310042))

(assert (=> b!4237423 t!350046))

(declare-fun t!350048 () Bool)

(declare-fun tb!254257 () Bool)

(assert (=> (and b!4237822 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 addTokens!17)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) t!350048) tb!254257))

(declare-fun result!310152 () Bool)

(assert (= result!310152 result!310050))

(assert (=> b!4237440 t!350048))

(declare-fun t!350050 () Bool)

(declare-fun tb!254259 () Bool)

(assert (=> (and b!4237822 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 addTokens!17)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) t!350050) tb!254259))

(declare-fun result!310154 () Bool)

(assert (= result!310154 result!310076))

(assert (=> b!4237518 t!350050))

(declare-fun t!350052 () Bool)

(declare-fun tb!254261 () Bool)

(assert (=> (and b!4237822 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 addTokens!17)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) t!350052) tb!254261))

(declare-fun result!310156 () Bool)

(assert (= result!310156 result!310138))

(assert (=> b!4237790 t!350052))

(declare-fun tp!1298467 () Bool)

(declare-fun b_and!334903 () Bool)

(assert (=> b!4237822 (= tp!1298467 (and (=> t!350046 result!310150) (=> t!350048 result!310152) (=> t!350050 result!310154) (=> t!350052 result!310156) b_and!334903))))

(declare-fun e!2631637 () Bool)

(declare-fun e!2631638 () Bool)

(declare-fun tp!1298468 () Bool)

(declare-fun b!4237820 () Bool)

(assert (=> b!4237820 (= e!2631637 (and (inv!21 (value!246256 (h!52274 (t!349921 (t!349921 addTokens!17))))) e!2631638 tp!1298468))))

(declare-fun e!2631641 () Bool)

(assert (=> b!4237474 (= tp!1298271 e!2631641)))

(declare-fun e!2631640 () Bool)

(assert (=> b!4237822 (= e!2631640 (and tp!1298465 tp!1298467))))

(declare-fun tp!1298464 () Bool)

(declare-fun b!4237819 () Bool)

(assert (=> b!4237819 (= e!2631641 (and (inv!61580 (h!52274 (t!349921 (t!349921 addTokens!17)))) e!2631637 tp!1298464))))

(declare-fun tp!1298466 () Bool)

(declare-fun b!4237821 () Bool)

(assert (=> b!4237821 (= e!2631638 (and tp!1298466 (inv!61576 (tag!8784 (rule!11044 (h!52274 (t!349921 (t!349921 addTokens!17)))))) (inv!61579 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 addTokens!17)))))) e!2631640))))

(assert (= b!4237821 b!4237822))

(assert (= b!4237820 b!4237821))

(assert (= b!4237819 b!4237820))

(assert (= (and b!4237474 ((_ is Cons!46854) (t!349921 (t!349921 addTokens!17)))) b!4237819))

(declare-fun m!4823175 () Bool)

(assert (=> b!4237820 m!4823175))

(declare-fun m!4823177 () Bool)

(assert (=> b!4237819 m!4823177))

(declare-fun m!4823179 () Bool)

(assert (=> b!4237821 m!4823179))

(declare-fun m!4823181 () Bool)

(assert (=> b!4237821 m!4823181))

(declare-fun b!4237823 () Bool)

(declare-fun e!2631642 () Bool)

(assert (=> b!4237823 (= e!2631642 tp_is_empty!22641)))

(assert (=> b!4237500 (= tp!1298303 e!2631642)))

(declare-fun b!4237824 () Bool)

(declare-fun tp!1298472 () Bool)

(declare-fun tp!1298470 () Bool)

(assert (=> b!4237824 (= e!2631642 (and tp!1298472 tp!1298470))))

(declare-fun b!4237825 () Bool)

(declare-fun tp!1298473 () Bool)

(assert (=> b!4237825 (= e!2631642 tp!1298473)))

(declare-fun b!4237826 () Bool)

(declare-fun tp!1298469 () Bool)

(declare-fun tp!1298471 () Bool)

(assert (=> b!4237826 (= e!2631642 (and tp!1298469 tp!1298471))))

(assert (= (and b!4237500 ((_ is ElementMatch!12825) (regex!7920 (h!52275 (t!349922 rules!2932))))) b!4237823))

(assert (= (and b!4237500 ((_ is Concat!20976) (regex!7920 (h!52275 (t!349922 rules!2932))))) b!4237824))

(assert (= (and b!4237500 ((_ is Star!12825) (regex!7920 (h!52275 (t!349922 rules!2932))))) b!4237825))

(assert (= (and b!4237500 ((_ is Union!12825) (regex!7920 (h!52275 (t!349922 rules!2932))))) b!4237826))

(declare-fun b!4237829 () Bool)

(declare-fun b_free!125363 () Bool)

(declare-fun b_next!126067 () Bool)

(assert (=> b!4237829 (= b_free!125363 (not b_next!126067))))

(declare-fun tp!1298475 () Bool)

(declare-fun b_and!334905 () Bool)

(assert (=> b!4237829 (= tp!1298475 b_and!334905)))

(declare-fun b_free!125365 () Bool)

(declare-fun b_next!126069 () Bool)

(assert (=> b!4237829 (= b_free!125365 (not b_next!126069))))

(declare-fun tb!254263 () Bool)

(declare-fun t!350054 () Bool)

(assert (=> (and b!4237829 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 (t!349922 rules!2932))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) t!350054) tb!254263))

(declare-fun result!310158 () Bool)

(assert (= result!310158 result!310042))

(assert (=> b!4237423 t!350054))

(declare-fun tb!254265 () Bool)

(declare-fun t!350056 () Bool)

(assert (=> (and b!4237829 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 (t!349922 rules!2932))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) t!350056) tb!254265))

(declare-fun result!310160 () Bool)

(assert (= result!310160 result!310050))

(assert (=> b!4237440 t!350056))

(declare-fun t!350058 () Bool)

(declare-fun tb!254267 () Bool)

(assert (=> (and b!4237829 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 (t!349922 rules!2932))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) t!350058) tb!254267))

(declare-fun result!310162 () Bool)

(assert (= result!310162 result!310076))

(assert (=> b!4237518 t!350058))

(declare-fun t!350060 () Bool)

(declare-fun tb!254269 () Bool)

(assert (=> (and b!4237829 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 (t!349922 rules!2932))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) t!350060) tb!254269))

(declare-fun result!310164 () Bool)

(assert (= result!310164 result!310138))

(assert (=> b!4237790 t!350060))

(declare-fun tp!1298474 () Bool)

(declare-fun b_and!334907 () Bool)

(assert (=> b!4237829 (= tp!1298474 (and (=> t!350054 result!310158) (=> t!350056 result!310160) (=> t!350058 result!310162) (=> t!350060 result!310164) b_and!334907))))

(declare-fun e!2631645 () Bool)

(assert (=> b!4237829 (= e!2631645 (and tp!1298475 tp!1298474))))

(declare-fun e!2631644 () Bool)

(declare-fun b!4237828 () Bool)

(declare-fun tp!1298477 () Bool)

(assert (=> b!4237828 (= e!2631644 (and tp!1298477 (inv!61576 (tag!8784 (h!52275 (t!349922 (t!349922 rules!2932))))) (inv!61579 (transformation!7920 (h!52275 (t!349922 (t!349922 rules!2932))))) e!2631645))))

(declare-fun b!4237827 () Bool)

(declare-fun e!2631646 () Bool)

(declare-fun tp!1298476 () Bool)

(assert (=> b!4237827 (= e!2631646 (and e!2631644 tp!1298476))))

(assert (=> b!4237499 (= tp!1298302 e!2631646)))

(assert (= b!4237828 b!4237829))

(assert (= b!4237827 b!4237828))

(assert (= (and b!4237499 ((_ is Cons!46855) (t!349922 (t!349922 rules!2932)))) b!4237827))

(declare-fun m!4823183 () Bool)

(assert (=> b!4237828 m!4823183))

(declare-fun m!4823185 () Bool)

(assert (=> b!4237828 m!4823185))

(declare-fun b!4237830 () Bool)

(declare-fun e!2631647 () Bool)

(declare-fun tp!1298478 () Bool)

(assert (=> b!4237830 (= e!2631647 (and tp_is_empty!22641 tp!1298478))))

(assert (=> b!4237447 (= tp!1298243 e!2631647)))

(assert (= (and b!4237447 ((_ is Cons!46853) (t!349920 (originalCharacters!8264 (h!52274 tokens!581))))) b!4237830))

(declare-fun b!4237831 () Bool)

(declare-fun e!2631648 () Bool)

(declare-fun tp!1298479 () Bool)

(assert (=> b!4237831 (= e!2631648 (and tp_is_empty!22641 tp!1298479))))

(assert (=> b!4237463 (= tp!1298260 e!2631648)))

(assert (= (and b!4237463 ((_ is Cons!46853) (t!349920 (originalCharacters!8264 (h!52274 addTokens!17))))) b!4237831))

(declare-fun b!4237832 () Bool)

(declare-fun e!2631649 () Bool)

(assert (=> b!4237832 (= e!2631649 tp_is_empty!22641)))

(assert (=> b!4237485 (= tp!1298281 e!2631649)))

(declare-fun b!4237833 () Bool)

(declare-fun tp!1298483 () Bool)

(declare-fun tp!1298481 () Bool)

(assert (=> b!4237833 (= e!2631649 (and tp!1298483 tp!1298481))))

(declare-fun b!4237834 () Bool)

(declare-fun tp!1298484 () Bool)

(assert (=> b!4237834 (= e!2631649 tp!1298484)))

(declare-fun b!4237835 () Bool)

(declare-fun tp!1298480 () Bool)

(declare-fun tp!1298482 () Bool)

(assert (=> b!4237835 (= e!2631649 (and tp!1298480 tp!1298482))))

(assert (= (and b!4237485 ((_ is ElementMatch!12825) (regOne!26163 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237832))

(assert (= (and b!4237485 ((_ is Concat!20976) (regOne!26163 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237833))

(assert (= (and b!4237485 ((_ is Star!12825) (regOne!26163 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237834))

(assert (= (and b!4237485 ((_ is Union!12825) (regOne!26163 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237835))

(declare-fun b!4237836 () Bool)

(declare-fun e!2631650 () Bool)

(assert (=> b!4237836 (= e!2631650 tp_is_empty!22641)))

(assert (=> b!4237485 (= tp!1298283 e!2631650)))

(declare-fun b!4237837 () Bool)

(declare-fun tp!1298488 () Bool)

(declare-fun tp!1298486 () Bool)

(assert (=> b!4237837 (= e!2631650 (and tp!1298488 tp!1298486))))

(declare-fun b!4237838 () Bool)

(declare-fun tp!1298489 () Bool)

(assert (=> b!4237838 (= e!2631650 tp!1298489)))

(declare-fun b!4237839 () Bool)

(declare-fun tp!1298485 () Bool)

(declare-fun tp!1298487 () Bool)

(assert (=> b!4237839 (= e!2631650 (and tp!1298485 tp!1298487))))

(assert (= (and b!4237485 ((_ is ElementMatch!12825) (regTwo!26163 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237836))

(assert (= (and b!4237485 ((_ is Concat!20976) (regTwo!26163 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237837))

(assert (= (and b!4237485 ((_ is Star!12825) (regTwo!26163 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237838))

(assert (= (and b!4237485 ((_ is Union!12825) (regTwo!26163 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237839))

(declare-fun e!2631656 () Bool)

(declare-fun tp!1298498 () Bool)

(declare-fun b!4237848 () Bool)

(declare-fun tp!1298496 () Bool)

(assert (=> b!4237848 (= e!2631656 (and (inv!61583 (left!34825 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17)))))) tp!1298496 (inv!61583 (right!35155 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17)))))) tp!1298498))))

(declare-fun b!4237850 () Bool)

(declare-fun e!2631655 () Bool)

(declare-fun tp!1298497 () Bool)

(assert (=> b!4237850 (= e!2631655 tp!1298497)))

(declare-fun b!4237849 () Bool)

(declare-fun inv!61590 (IArray!28267) Bool)

(assert (=> b!4237849 (= e!2631656 (and (inv!61590 (xs!17437 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17)))))) e!2631655))))

(assert (=> b!4237429 (= tp!1298239 (and (inv!61583 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17))))) e!2631656))))

(assert (= (and b!4237429 ((_ is Node!14131) (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17)))))) b!4237848))

(assert (= b!4237849 b!4237850))

(assert (= (and b!4237429 ((_ is Leaf!21850) (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (value!246256 (h!52274 addTokens!17)))))) b!4237849))

(declare-fun m!4823187 () Bool)

(assert (=> b!4237848 m!4823187))

(declare-fun m!4823189 () Bool)

(assert (=> b!4237848 m!4823189))

(declare-fun m!4823191 () Bool)

(assert (=> b!4237849 m!4823191))

(assert (=> b!4237429 m!4822783))

(declare-fun b!4237851 () Bool)

(declare-fun tp!1298501 () Bool)

(declare-fun tp!1298499 () Bool)

(declare-fun e!2631658 () Bool)

(assert (=> b!4237851 (= e!2631658 (and (inv!61583 (left!34825 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581)))))) tp!1298499 (inv!61583 (right!35155 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581)))))) tp!1298501))))

(declare-fun b!4237853 () Bool)

(declare-fun e!2631657 () Bool)

(declare-fun tp!1298500 () Bool)

(assert (=> b!4237853 (= e!2631657 tp!1298500)))

(declare-fun b!4237852 () Bool)

(assert (=> b!4237852 (= e!2631658 (and (inv!61590 (xs!17437 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581)))))) e!2631657))))

(assert (=> b!4237442 (= tp!1298240 (and (inv!61583 (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581))))) e!2631658))))

(assert (= (and b!4237442 ((_ is Node!14131) (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581)))))) b!4237851))

(assert (= b!4237852 b!4237853))

(assert (= (and b!4237442 ((_ is Leaf!21850) (c!720063 (dynLambda!20076 (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (value!246256 (h!52274 tokens!581)))))) b!4237852))

(declare-fun m!4823193 () Bool)

(assert (=> b!4237851 m!4823193))

(declare-fun m!4823195 () Bool)

(assert (=> b!4237851 m!4823195))

(declare-fun m!4823197 () Bool)

(assert (=> b!4237852 m!4823197))

(assert (=> b!4237442 m!4822807))

(declare-fun b!4237854 () Bool)

(declare-fun e!2631659 () Bool)

(assert (=> b!4237854 (= e!2631659 tp_is_empty!22641)))

(assert (=> b!4237484 (= tp!1298285 e!2631659)))

(declare-fun b!4237855 () Bool)

(declare-fun tp!1298505 () Bool)

(declare-fun tp!1298503 () Bool)

(assert (=> b!4237855 (= e!2631659 (and tp!1298505 tp!1298503))))

(declare-fun b!4237856 () Bool)

(declare-fun tp!1298506 () Bool)

(assert (=> b!4237856 (= e!2631659 tp!1298506)))

(declare-fun b!4237857 () Bool)

(declare-fun tp!1298502 () Bool)

(declare-fun tp!1298504 () Bool)

(assert (=> b!4237857 (= e!2631659 (and tp!1298502 tp!1298504))))

(assert (= (and b!4237484 ((_ is ElementMatch!12825) (reg!13154 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237854))

(assert (= (and b!4237484 ((_ is Concat!20976) (reg!13154 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237855))

(assert (= (and b!4237484 ((_ is Star!12825) (reg!13154 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237856))

(assert (= (and b!4237484 ((_ is Union!12825) (reg!13154 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237857))

(declare-fun b!4237858 () Bool)

(declare-fun e!2631660 () Bool)

(assert (=> b!4237858 (= e!2631660 tp_is_empty!22641)))

(assert (=> b!4237483 (= tp!1298284 e!2631660)))

(declare-fun b!4237859 () Bool)

(declare-fun tp!1298510 () Bool)

(declare-fun tp!1298508 () Bool)

(assert (=> b!4237859 (= e!2631660 (and tp!1298510 tp!1298508))))

(declare-fun b!4237860 () Bool)

(declare-fun tp!1298511 () Bool)

(assert (=> b!4237860 (= e!2631660 tp!1298511)))

(declare-fun b!4237861 () Bool)

(declare-fun tp!1298507 () Bool)

(declare-fun tp!1298509 () Bool)

(assert (=> b!4237861 (= e!2631660 (and tp!1298507 tp!1298509))))

(assert (= (and b!4237483 ((_ is ElementMatch!12825) (regOne!26162 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237858))

(assert (= (and b!4237483 ((_ is Concat!20976) (regOne!26162 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237859))

(assert (= (and b!4237483 ((_ is Star!12825) (regOne!26162 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237860))

(assert (= (and b!4237483 ((_ is Union!12825) (regOne!26162 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237861))

(declare-fun b!4237862 () Bool)

(declare-fun e!2631661 () Bool)

(assert (=> b!4237862 (= e!2631661 tp_is_empty!22641)))

(assert (=> b!4237483 (= tp!1298282 e!2631661)))

(declare-fun b!4237863 () Bool)

(declare-fun tp!1298515 () Bool)

(declare-fun tp!1298513 () Bool)

(assert (=> b!4237863 (= e!2631661 (and tp!1298515 tp!1298513))))

(declare-fun b!4237864 () Bool)

(declare-fun tp!1298516 () Bool)

(assert (=> b!4237864 (= e!2631661 tp!1298516)))

(declare-fun b!4237865 () Bool)

(declare-fun tp!1298512 () Bool)

(declare-fun tp!1298514 () Bool)

(assert (=> b!4237865 (= e!2631661 (and tp!1298512 tp!1298514))))

(assert (= (and b!4237483 ((_ is ElementMatch!12825) (regTwo!26162 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237862))

(assert (= (and b!4237483 ((_ is Concat!20976) (regTwo!26162 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237863))

(assert (= (and b!4237483 ((_ is Star!12825) (regTwo!26162 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237864))

(assert (= (and b!4237483 ((_ is Union!12825) (regTwo!26162 (regex!7920 (rule!11044 (h!52274 tokens!581)))))) b!4237865))

(declare-fun b!4237866 () Bool)

(declare-fun e!2631662 () Bool)

(declare-fun tp!1298517 () Bool)

(assert (=> b!4237866 (= e!2631662 (and tp_is_empty!22641 tp!1298517))))

(assert (=> b!4237462 (= tp!1298259 e!2631662)))

(assert (= (and b!4237462 ((_ is Cons!46853) (t!349920 (t!349920 longerInput!51)))) b!4237866))

(declare-fun b!4237867 () Bool)

(declare-fun e!2631663 () Bool)

(assert (=> b!4237867 (= e!2631663 tp_is_empty!22641)))

(assert (=> b!4237461 (= tp!1298254 e!2631663)))

(declare-fun b!4237868 () Bool)

(declare-fun tp!1298521 () Bool)

(declare-fun tp!1298519 () Bool)

(assert (=> b!4237868 (= e!2631663 (and tp!1298521 tp!1298519))))

(declare-fun b!4237869 () Bool)

(declare-fun tp!1298522 () Bool)

(assert (=> b!4237869 (= e!2631663 tp!1298522)))

(declare-fun b!4237870 () Bool)

(declare-fun tp!1298518 () Bool)

(declare-fun tp!1298520 () Bool)

(assert (=> b!4237870 (= e!2631663 (and tp!1298518 tp!1298520))))

(assert (= (and b!4237461 ((_ is ElementMatch!12825) (regOne!26163 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237867))

(assert (= (and b!4237461 ((_ is Concat!20976) (regOne!26163 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237868))

(assert (= (and b!4237461 ((_ is Star!12825) (regOne!26163 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237869))

(assert (= (and b!4237461 ((_ is Union!12825) (regOne!26163 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237870))

(declare-fun b!4237871 () Bool)

(declare-fun e!2631664 () Bool)

(assert (=> b!4237871 (= e!2631664 tp_is_empty!22641)))

(assert (=> b!4237461 (= tp!1298256 e!2631664)))

(declare-fun b!4237872 () Bool)

(declare-fun tp!1298526 () Bool)

(declare-fun tp!1298524 () Bool)

(assert (=> b!4237872 (= e!2631664 (and tp!1298526 tp!1298524))))

(declare-fun b!4237873 () Bool)

(declare-fun tp!1298527 () Bool)

(assert (=> b!4237873 (= e!2631664 tp!1298527)))

(declare-fun b!4237874 () Bool)

(declare-fun tp!1298523 () Bool)

(declare-fun tp!1298525 () Bool)

(assert (=> b!4237874 (= e!2631664 (and tp!1298523 tp!1298525))))

(assert (= (and b!4237461 ((_ is ElementMatch!12825) (regTwo!26163 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237871))

(assert (= (and b!4237461 ((_ is Concat!20976) (regTwo!26163 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237872))

(assert (= (and b!4237461 ((_ is Star!12825) (regTwo!26163 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237873))

(assert (= (and b!4237461 ((_ is Union!12825) (regTwo!26163 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237874))

(declare-fun b!4237875 () Bool)

(declare-fun e!2631665 () Bool)

(assert (=> b!4237875 (= e!2631665 tp_is_empty!22641)))

(assert (=> b!4237460 (= tp!1298258 e!2631665)))

(declare-fun b!4237876 () Bool)

(declare-fun tp!1298531 () Bool)

(declare-fun tp!1298529 () Bool)

(assert (=> b!4237876 (= e!2631665 (and tp!1298531 tp!1298529))))

(declare-fun b!4237877 () Bool)

(declare-fun tp!1298532 () Bool)

(assert (=> b!4237877 (= e!2631665 tp!1298532)))

(declare-fun b!4237878 () Bool)

(declare-fun tp!1298528 () Bool)

(declare-fun tp!1298530 () Bool)

(assert (=> b!4237878 (= e!2631665 (and tp!1298528 tp!1298530))))

(assert (= (and b!4237460 ((_ is ElementMatch!12825) (reg!13154 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237875))

(assert (= (and b!4237460 ((_ is Concat!20976) (reg!13154 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237876))

(assert (= (and b!4237460 ((_ is Star!12825) (reg!13154 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237877))

(assert (= (and b!4237460 ((_ is Union!12825) (reg!13154 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237878))

(declare-fun b!4237879 () Bool)

(declare-fun e!2631666 () Bool)

(declare-fun tp!1298533 () Bool)

(assert (=> b!4237879 (= e!2631666 (and tp_is_empty!22641 tp!1298533))))

(assert (=> b!4237502 (= tp!1298304 e!2631666)))

(assert (= (and b!4237502 ((_ is Cons!46853) (t!349920 (t!349920 suffix!1262)))) b!4237879))

(declare-fun b!4237880 () Bool)

(declare-fun e!2631667 () Bool)

(assert (=> b!4237880 (= e!2631667 tp_is_empty!22641)))

(assert (=> b!4237459 (= tp!1298257 e!2631667)))

(declare-fun b!4237881 () Bool)

(declare-fun tp!1298537 () Bool)

(declare-fun tp!1298535 () Bool)

(assert (=> b!4237881 (= e!2631667 (and tp!1298537 tp!1298535))))

(declare-fun b!4237882 () Bool)

(declare-fun tp!1298538 () Bool)

(assert (=> b!4237882 (= e!2631667 tp!1298538)))

(declare-fun b!4237883 () Bool)

(declare-fun tp!1298534 () Bool)

(declare-fun tp!1298536 () Bool)

(assert (=> b!4237883 (= e!2631667 (and tp!1298534 tp!1298536))))

(assert (= (and b!4237459 ((_ is ElementMatch!12825) (regOne!26162 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237880))

(assert (= (and b!4237459 ((_ is Concat!20976) (regOne!26162 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237881))

(assert (= (and b!4237459 ((_ is Star!12825) (regOne!26162 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237882))

(assert (= (and b!4237459 ((_ is Union!12825) (regOne!26162 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237883))

(declare-fun b!4237884 () Bool)

(declare-fun e!2631668 () Bool)

(assert (=> b!4237884 (= e!2631668 tp_is_empty!22641)))

(assert (=> b!4237459 (= tp!1298255 e!2631668)))

(declare-fun b!4237885 () Bool)

(declare-fun tp!1298542 () Bool)

(declare-fun tp!1298540 () Bool)

(assert (=> b!4237885 (= e!2631668 (and tp!1298542 tp!1298540))))

(declare-fun b!4237886 () Bool)

(declare-fun tp!1298543 () Bool)

(assert (=> b!4237886 (= e!2631668 tp!1298543)))

(declare-fun b!4237887 () Bool)

(declare-fun tp!1298539 () Bool)

(declare-fun tp!1298541 () Bool)

(assert (=> b!4237887 (= e!2631668 (and tp!1298539 tp!1298541))))

(assert (= (and b!4237459 ((_ is ElementMatch!12825) (regTwo!26162 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237884))

(assert (= (and b!4237459 ((_ is Concat!20976) (regTwo!26162 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237885))

(assert (= (and b!4237459 ((_ is Star!12825) (regTwo!26162 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237886))

(assert (= (and b!4237459 ((_ is Union!12825) (regTwo!26162 (regex!7920 (rule!11044 (h!52274 addTokens!17)))))) b!4237887))

(declare-fun b!4237888 () Bool)

(declare-fun e!2631669 () Bool)

(assert (=> b!4237888 (= e!2631669 tp_is_empty!22641)))

(assert (=> b!4237488 (= tp!1298288 e!2631669)))

(declare-fun b!4237889 () Bool)

(declare-fun tp!1298547 () Bool)

(declare-fun tp!1298545 () Bool)

(assert (=> b!4237889 (= e!2631669 (and tp!1298547 tp!1298545))))

(declare-fun b!4237890 () Bool)

(declare-fun tp!1298548 () Bool)

(assert (=> b!4237890 (= e!2631669 tp!1298548)))

(declare-fun b!4237891 () Bool)

(declare-fun tp!1298544 () Bool)

(declare-fun tp!1298546 () Bool)

(assert (=> b!4237891 (= e!2631669 (and tp!1298544 tp!1298546))))

(assert (= (and b!4237488 ((_ is ElementMatch!12825) (regex!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) b!4237888))

(assert (= (and b!4237488 ((_ is Concat!20976) (regex!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) b!4237889))

(assert (= (and b!4237488 ((_ is Star!12825) (regex!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) b!4237890))

(assert (= (and b!4237488 ((_ is Union!12825) (regex!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) b!4237891))

(declare-fun b!4237892 () Bool)

(declare-fun e!2631670 () Bool)

(declare-fun tp!1298549 () Bool)

(assert (=> b!4237892 (= e!2631670 (and tp_is_empty!22641 tp!1298549))))

(assert (=> b!4237487 (= tp!1298290 e!2631670)))

(assert (= (and b!4237487 ((_ is Cons!46853) (originalCharacters!8264 (h!52274 (t!349921 tokens!581))))) b!4237892))

(declare-fun b!4237896 () Bool)

(declare-fun b_free!125367 () Bool)

(declare-fun b_next!126071 () Bool)

(assert (=> b!4237896 (= b_free!125367 (not b_next!126071))))

(declare-fun tp!1298551 () Bool)

(declare-fun b_and!334909 () Bool)

(assert (=> b!4237896 (= tp!1298551 b_and!334909)))

(declare-fun b_free!125369 () Bool)

(declare-fun b_next!126073 () Bool)

(assert (=> b!4237896 (= b_free!125369 (not b_next!126073))))

(declare-fun t!350062 () Bool)

(declare-fun tb!254271 () Bool)

(assert (=> (and b!4237896 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 tokens!581)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17))))) t!350062) tb!254271))

(declare-fun result!310168 () Bool)

(assert (= result!310168 result!310042))

(assert (=> b!4237423 t!350062))

(declare-fun t!350064 () Bool)

(declare-fun tb!254273 () Bool)

(assert (=> (and b!4237896 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 tokens!581)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581))))) t!350064) tb!254273))

(declare-fun result!310170 () Bool)

(assert (= result!310170 result!310050))

(assert (=> b!4237440 t!350064))

(declare-fun tb!254275 () Bool)

(declare-fun t!350066 () Bool)

(assert (=> (and b!4237896 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 tokens!581)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17)))))) t!350066) tb!254275))

(declare-fun result!310172 () Bool)

(assert (= result!310172 result!310076))

(assert (=> b!4237518 t!350066))

(declare-fun t!350068 () Bool)

(declare-fun tb!254277 () Bool)

(assert (=> (and b!4237896 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 tokens!581)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581)))))) t!350068) tb!254277))

(declare-fun result!310174 () Bool)

(assert (= result!310174 result!310138))

(assert (=> b!4237790 t!350068))

(declare-fun tp!1298553 () Bool)

(declare-fun b_and!334911 () Bool)

(assert (=> b!4237896 (= tp!1298553 (and (=> t!350062 result!310168) (=> t!350064 result!310170) (=> t!350066 result!310172) (=> t!350068 result!310174) b_and!334911))))

(declare-fun b!4237894 () Bool)

(declare-fun e!2631672 () Bool)

(declare-fun tp!1298554 () Bool)

(declare-fun e!2631673 () Bool)

(assert (=> b!4237894 (= e!2631672 (and (inv!21 (value!246256 (h!52274 (t!349921 (t!349921 tokens!581))))) e!2631673 tp!1298554))))

(declare-fun e!2631676 () Bool)

(assert (=> b!4237486 (= tp!1298286 e!2631676)))

(declare-fun e!2631675 () Bool)

(assert (=> b!4237896 (= e!2631675 (and tp!1298551 tp!1298553))))

(declare-fun b!4237893 () Bool)

(declare-fun tp!1298550 () Bool)

(assert (=> b!4237893 (= e!2631676 (and (inv!61580 (h!52274 (t!349921 (t!349921 tokens!581)))) e!2631672 tp!1298550))))

(declare-fun tp!1298552 () Bool)

(declare-fun b!4237895 () Bool)

(assert (=> b!4237895 (= e!2631673 (and tp!1298552 (inv!61576 (tag!8784 (rule!11044 (h!52274 (t!349921 (t!349921 tokens!581)))))) (inv!61579 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 tokens!581)))))) e!2631675))))

(assert (= b!4237895 b!4237896))

(assert (= b!4237894 b!4237895))

(assert (= b!4237893 b!4237894))

(assert (= (and b!4237486 ((_ is Cons!46854) (t!349921 (t!349921 tokens!581)))) b!4237893))

(declare-fun m!4823199 () Bool)

(assert (=> b!4237894 m!4823199))

(declare-fun m!4823201 () Bool)

(assert (=> b!4237893 m!4823201))

(declare-fun m!4823203 () Bool)

(assert (=> b!4237895 m!4823203))

(declare-fun m!4823205 () Bool)

(assert (=> b!4237895 m!4823205))

(declare-fun b_lambda!124735 () Bool)

(assert (= b_lambda!124723 (or (and b!4237489 b_free!125341 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))))) (and b!4237501 b_free!125345 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 rules!2932)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))))) (and b!4237477 b_free!125337) (and b!4237896 b_free!125369 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 tokens!581)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))))) (and b!4237233 b_free!125321 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))))) (and b!4237829 b_free!125365 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 (t!349922 rules!2932))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))))) (and b!4237822 b_free!125361 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 addTokens!17)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))))) (and b!4237240 b_free!125313 (= (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))))) (and b!4237224 b_free!125317 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))))) b_lambda!124735)))

(declare-fun b_lambda!124737 () Bool)

(assert (= b_lambda!124733 (or (and b!4237501 b_free!125345 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 rules!2932)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))))) (and b!4237233 b_free!125321 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 addTokens!17)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))))) (and b!4237822 b_free!125361 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 addTokens!17)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))))) (and b!4237240 b_free!125313 (= (toChars!10523 (transformation!7920 (h!52275 rules!2932))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))))) (and b!4237896 b_free!125369 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 (t!349921 tokens!581)))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))))) (and b!4237829 b_free!125365 (= (toChars!10523 (transformation!7920 (h!52275 (t!349922 (t!349922 rules!2932))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))))) (and b!4237224 b_free!125317 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 tokens!581)))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))))) (and b!4237477 b_free!125337 (= (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 addTokens!17))))) (toChars!10523 (transformation!7920 (rule!11044 (h!52274 (t!349921 tokens!581))))))) (and b!4237489 b_free!125341) b_lambda!124737)))

(check-sat (not b!4237891) (not b!4237813) (not b!4237893) (not b!4237769) (not b!4237800) (not b!4237882) b_and!334893 (not b!4237808) (not d!1246593) (not b!4237771) b_and!334903 (not b!4237520) (not b!4237877) (not b!4237812) (not d!1246571) (not b!4237785) (not b_next!126043) (not b!4237515) (not b!4237766) (not b!4237803) (not b!4237856) b_and!334785 (not b_next!126065) (not b!4237592) (not b_next!126015) (not b!4237815) (not d!1246579) (not b!4237782) (not b!4237849) (not b_lambda!124721) b_and!334833 (not b!4237848) (not b!4237890) (not d!1246663) b_and!334837 (not b!4237881) (not b!4237770) (not b!4237887) (not b!4237794) (not b_next!126071) (not b!4237510) (not b!4237870) (not d!1246717) b_and!334911 b_and!334889 (not b!4237442) (not d!1246677) (not b!4237831) (not b!4237853) (not b!4237820) (not b!4237807) (not b!4237784) (not b!4237789) (not b!4237892) (not b!4237833) (not b!4237518) (not b!4237830) (not b_lambda!124737) (not b!4237852) b_and!334829 (not b!4237857) (not tb!254243) (not b_next!126069) (not b_next!126025) (not b!4237774) b_and!334897 (not b!4237601) (not b!4237519) (not d!1246709) (not b!4237772) (not b_next!126041) (not b!4237526) b_and!334895 (not d!1246587) (not tb!254183) (not d!1246577) (not d!1246565) b_and!334899 (not d!1246669) (not b!4237872) (not d!1246681) (not b!4237839) (not b!4237850) (not d!1246701) (not b!4237787) (not b!4237790) (not b!4237874) (not b!4237792) (not b!4237878) (not d!1246697) (not b!4237861) (not d!1246563) (not b!4237868) (not b!4237804) (not b_next!126063) (not b!4237606) (not b!4237802) (not b!4237795) (not b!4237514) (not b!4237799) (not b!4237828) (not bm!293793) (not b!4237779) (not b!4237791) (not b!4237608) (not d!1246575) (not b!4237819) (not b!4237429) (not b_next!126047) (not b!4237825) (not b_next!126019) (not b!4237586) b_and!334909 (not b!4237865) (not b_next!126073) (not d!1246715) (not b!4237821) (not b!4237859) (not b!4237895) (not b_lambda!124719) (not b!4237816) (not b!4237885) (not b_next!126049) (not b!4237886) b_and!334891 b_and!334905 (not b!4237855) (not b!4237838) (not b!4237876) (not b!4237781) (not b!4237834) (not b_next!126017) (not b!4237826) (not b!4237863) (not b!4237527) (not b!4237796) b_and!334907 (not b!4237851) (not b!4237811) (not d!1246673) (not b!4237817) (not b_next!126039) (not b_next!126021) (not b_lambda!124735) (not b!4237824) (not b!4237894) b_and!334789 (not b!4237837) (not b!4237767) (not b!4237889) (not d!1246573) (not b_next!126045) (not b!4237864) (not b!4237873) (not b!4237883) (not b!4237517) (not b!4237827) (not b!4237860) (not d!1246703) (not b_next!126067) (not d!1246589) (not b!4237866) (not b!4237773) (not b!4237798) (not b!4237602) (not b!4237521) b_and!334901 (not b!4237604) (not d!1246595) (not b!4237599) (not d!1246695) (not b_next!126023) (not b!4237512) b_and!334781 (not d!1246583) (not b!4237879) (not b!4237806) (not b!4237809) tp_is_empty!22641 (not b!4237818) (not b!4237509) (not b!4237778) (not b!4237869) (not b!4237835))
(check-sat (not b_next!126043) (not b_next!126071) b_and!334829 b_and!334899 (not b_next!126063) (not b_next!126047) (not b_next!126073) (not b_next!126017) b_and!334907 (not b_next!126045) (not b_next!126067) b_and!334901 b_and!334893 b_and!334903 b_and!334785 (not b_next!126065) (not b_next!126015) b_and!334833 b_and!334837 b_and!334911 b_and!334889 (not b_next!126069) (not b_next!126025) b_and!334897 (not b_next!126041) b_and!334895 (not b_next!126019) b_and!334909 (not b_next!126049) b_and!334891 b_and!334905 b_and!334789 (not b_next!126039) (not b_next!126021) (not b_next!126023) b_and!334781)
