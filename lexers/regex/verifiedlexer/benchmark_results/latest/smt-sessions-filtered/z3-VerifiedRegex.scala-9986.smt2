; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522430 () Bool)

(assert start!522430)

(declare-fun b!4956606 () Bool)

(declare-fun b_free!132311 () Bool)

(declare-fun b_next!133101 () Bool)

(assert (=> b!4956606 (= b_free!132311 (not b_next!133101))))

(declare-fun tp!1390051 () Bool)

(declare-fun b_and!347163 () Bool)

(assert (=> b!4956606 (= tp!1390051 b_and!347163)))

(declare-fun b_free!132313 () Bool)

(declare-fun b_next!133103 () Bool)

(assert (=> b!4956606 (= b_free!132313 (not b_next!133103))))

(declare-fun tp!1390053 () Bool)

(declare-fun b_and!347165 () Bool)

(assert (=> b!4956606 (= tp!1390053 b_and!347165)))

(declare-fun b!4956601 () Bool)

(declare-fun res!2114910 () Bool)

(declare-fun e!3097440 () Bool)

(assert (=> b!4956601 (=> (not res!2114910) (not e!3097440))))

(declare-datatypes ((List!57358 0))(
  ( (Nil!57234) (Cons!57234 (h!63682 (_ BitVec 16)) (t!367924 List!57358)) )
))
(declare-datatypes ((TokenValue!8634 0))(
  ( (FloatLiteralValue!17268 (text!60883 List!57358)) (TokenValueExt!8633 (__x!34561 Int)) (Broken!43170 (value!266650 List!57358)) (Object!8757) (End!8634) (Def!8634) (Underscore!8634) (Match!8634) (Else!8634) (Error!8634) (Case!8634) (If!8634) (Extends!8634) (Abstract!8634) (Class!8634) (Val!8634) (DelimiterValue!17268 (del!8694 List!57358)) (KeywordValue!8640 (value!266651 List!57358)) (CommentValue!17268 (value!266652 List!57358)) (WhitespaceValue!17268 (value!266653 List!57358)) (IndentationValue!8634 (value!266654 List!57358)) (String!65043) (Int32!8634) (Broken!43171 (value!266655 List!57358)) (Boolean!8635) (Unit!148128) (OperatorValue!8637 (op!8694 List!57358)) (IdentifierValue!17268 (value!266656 List!57358)) (IdentifierValue!17269 (value!266657 List!57358)) (WhitespaceValue!17269 (value!266658 List!57358)) (True!17268) (False!17268) (Broken!43172 (value!266659 List!57358)) (Broken!43173 (value!266660 List!57358)) (True!17269) (RightBrace!8634) (RightBracket!8634) (Colon!8634) (Null!8634) (Comma!8634) (LeftBracket!8634) (False!17269) (LeftBrace!8634) (ImaginaryLiteralValue!8634 (text!60884 List!57358)) (StringLiteralValue!25902 (value!266661 List!57358)) (EOFValue!8634 (value!266662 List!57358)) (IdentValue!8634 (value!266663 List!57358)) (DelimiterValue!17269 (value!266664 List!57358)) (DedentValue!8634 (value!266665 List!57358)) (NewLineValue!8634 (value!266666 List!57358)) (IntegerValue!25902 (value!266667 (_ BitVec 32)) (text!60885 List!57358)) (IntegerValue!25903 (value!266668 Int) (text!60886 List!57358)) (Times!8634) (Or!8634) (Equal!8634) (Minus!8634) (Broken!43174 (value!266669 List!57358)) (And!8634) (Div!8634) (LessEqual!8634) (Mod!8634) (Concat!22191) (Not!8634) (Plus!8634) (SpaceValue!8634 (value!266670 List!57358)) (IntegerValue!25904 (value!266671 Int) (text!60887 List!57358)) (StringLiteralValue!25903 (text!60888 List!57358)) (FloatLiteralValue!17269 (text!60889 List!57358)) (BytesLiteralValue!8634 (value!266672 List!57358)) (CommentValue!17269 (value!266673 List!57358)) (StringLiteralValue!25904 (value!266674 List!57358)) (ErrorTokenValue!8634 (msg!8695 List!57358)) )
))
(declare-datatypes ((C!27364 0))(
  ( (C!27365 (val!23048 Int)) )
))
(declare-datatypes ((Regex!13557 0))(
  ( (ElementMatch!13557 (c!846179 C!27364)) (Concat!22192 (regOne!27626 Regex!13557) (regTwo!27626 Regex!13557)) (EmptyExpr!13557) (Star!13557 (reg!13886 Regex!13557)) (EmptyLang!13557) (Union!13557 (regOne!27627 Regex!13557) (regTwo!27627 Regex!13557)) )
))
(declare-datatypes ((String!65044 0))(
  ( (String!65045 (value!266675 String)) )
))
(declare-datatypes ((List!57359 0))(
  ( (Nil!57235) (Cons!57235 (h!63683 C!27364) (t!367925 List!57359)) )
))
(declare-datatypes ((IArray!30213 0))(
  ( (IArray!30214 (innerList!15164 List!57359)) )
))
(declare-datatypes ((Conc!15076 0))(
  ( (Node!15076 (left!41740 Conc!15076) (right!42070 Conc!15076) (csize!30382 Int) (cheight!15287 Int)) (Leaf!25063 (xs!18402 IArray!30213) (csize!30383 Int)) (Empty!15076) )
))
(declare-datatypes ((BalanceConc!29582 0))(
  ( (BalanceConc!29583 (c!846180 Conc!15076)) )
))
(declare-datatypes ((TokenValueInjection!16576 0))(
  ( (TokenValueInjection!16577 (toValue!11275 Int) (toChars!11134 Int)) )
))
(declare-datatypes ((Rule!16448 0))(
  ( (Rule!16449 (regex!8324 Regex!13557) (tag!9188 String!65044) (isSeparator!8324 Bool) (transformation!8324 TokenValueInjection!16576)) )
))
(declare-datatypes ((List!57360 0))(
  ( (Nil!57236) (Cons!57236 (h!63684 Rule!16448) (t!367926 List!57360)) )
))
(declare-fun rulesArg!259 () List!57360)

(declare-fun isEmpty!30764 (List!57360) Bool)

(assert (=> b!4956601 (= res!2114910 (not (isEmpty!30764 rulesArg!259)))))

(declare-fun res!2114906 () Bool)

(assert (=> start!522430 (=> (not res!2114906) (not e!3097440))))

(declare-datatypes ((LexerInterface!7916 0))(
  ( (LexerInterfaceExt!7913 (__x!34562 Int)) (Lexer!7914) )
))
(declare-fun thiss!15247 () LexerInterface!7916)

(get-info :version)

(assert (=> start!522430 (= res!2114906 ((_ is Lexer!7914) thiss!15247))))

(assert (=> start!522430 e!3097440))

(assert (=> start!522430 true))

(declare-fun e!3097438 () Bool)

(assert (=> start!522430 e!3097438))

(declare-fun input!1342 () BalanceConc!29582)

(declare-fun e!3097441 () Bool)

(declare-fun inv!74671 (BalanceConc!29582) Bool)

(assert (=> start!522430 (and (inv!74671 input!1342) e!3097441)))

(declare-fun totalInput!464 () BalanceConc!29582)

(declare-fun e!3097446 () Bool)

(assert (=> start!522430 (and (inv!74671 totalInput!464) e!3097446)))

(declare-fun b!4956602 () Bool)

(declare-fun res!2114912 () Bool)

(assert (=> b!4956602 (=> (not res!2114912) (not e!3097440))))

(declare-fun rulesValidInductive!3227 (LexerInterface!7916 List!57360) Bool)

(assert (=> b!4956602 (= res!2114912 (rulesValidInductive!3227 thiss!15247 rulesArg!259))))

(declare-fun b!4956603 () Bool)

(declare-fun res!2114904 () Bool)

(declare-fun e!3097445 () Bool)

(assert (=> b!4956603 (=> res!2114904 e!3097445)))

(declare-fun lt!2045790 () Bool)

(assert (=> b!4956603 (= res!2114904 lt!2045790)))

(declare-fun b!4956604 () Bool)

(declare-fun e!3097437 () Bool)

(declare-fun e!3097447 () Bool)

(assert (=> b!4956604 (= e!3097437 e!3097447)))

(declare-fun res!2114908 () Bool)

(assert (=> b!4956604 (=> res!2114908 e!3097447)))

(declare-fun lt!2045788 () Bool)

(declare-datatypes ((Token!15148 0))(
  ( (Token!15149 (value!266676 TokenValue!8634) (rule!11540 Rule!16448) (size!37946 Int) (originalCharacters!8605 List!57359)) )
))
(declare-datatypes ((tuple2!61812 0))(
  ( (tuple2!61813 (_1!34209 Token!15148) (_2!34209 List!57359)) )
))
(declare-datatypes ((Option!14317 0))(
  ( (None!14316) (Some!14316 (v!50301 tuple2!61812)) )
))
(declare-fun lt!2045794 () Option!14317)

(declare-fun isDefined!11244 (Option!14317) Bool)

(assert (=> b!4956604 (= res!2114908 (not (= lt!2045788 (isDefined!11244 lt!2045794))))))

(declare-datatypes ((tuple2!61814 0))(
  ( (tuple2!61815 (_1!34210 Token!15148) (_2!34210 BalanceConc!29582)) )
))
(declare-datatypes ((Option!14318 0))(
  ( (None!14317) (Some!14317 (v!50302 tuple2!61814)) )
))
(declare-fun lt!2045789 () Option!14318)

(declare-fun isDefined!11245 (Option!14318) Bool)

(assert (=> b!4956604 (= lt!2045788 (isDefined!11245 lt!2045789))))

(declare-fun lt!2045792 () List!57359)

(declare-fun maxPrefixZipper!721 (LexerInterface!7916 List!57360 List!57359) Option!14317)

(assert (=> b!4956604 (= lt!2045794 (maxPrefixZipper!721 thiss!15247 rulesArg!259 lt!2045792))))

(declare-fun e!3097448 () Bool)

(declare-fun e!3097439 () Bool)

(declare-fun tp!1390054 () Bool)

(declare-fun b!4956605 () Bool)

(declare-fun inv!74667 (String!65044) Bool)

(declare-fun inv!74672 (TokenValueInjection!16576) Bool)

(assert (=> b!4956605 (= e!3097448 (and tp!1390054 (inv!74667 (tag!9188 (h!63684 rulesArg!259))) (inv!74672 (transformation!8324 (h!63684 rulesArg!259))) e!3097439))))

(assert (=> b!4956606 (= e!3097439 (and tp!1390051 tp!1390053))))

(declare-fun b!4956607 () Bool)

(declare-fun e!3097444 () Bool)

(declare-fun lt!2045791 () tuple2!61814)

(declare-fun lt!2045796 () tuple2!61812)

(declare-fun list!18265 (BalanceConc!29582) List!57359)

(assert (=> b!4956607 (= e!3097444 (not (= (list!18265 (_2!34210 lt!2045791)) (_2!34209 lt!2045796))))))

(declare-fun b!4956608 () Bool)

(declare-fun e!3097449 () Bool)

(assert (=> b!4956608 (= e!3097440 e!3097449)))

(declare-fun res!2114905 () Bool)

(assert (=> b!4956608 (=> (not res!2114905) (not e!3097449))))

(declare-fun isSuffix!1123 (List!57359 List!57359) Bool)

(assert (=> b!4956608 (= res!2114905 (isSuffix!1123 lt!2045792 (list!18265 totalInput!464)))))

(assert (=> b!4956608 (= lt!2045792 (list!18265 input!1342))))

(declare-fun b!4956609 () Bool)

(declare-fun tp!1390052 () Bool)

(declare-fun inv!74673 (Conc!15076) Bool)

(assert (=> b!4956609 (= e!3097441 (and (inv!74673 (c!846180 input!1342)) tp!1390052))))

(declare-fun b!4956610 () Bool)

(declare-fun e!3097442 () Bool)

(assert (=> b!4956610 (= e!3097442 e!3097437)))

(declare-fun res!2114913 () Bool)

(assert (=> b!4956610 (=> res!2114913 e!3097437)))

(declare-fun lt!2045793 () Option!14318)

(assert (=> b!4956610 (= res!2114913 (or (and ((_ is None!14317) lt!2045789) ((_ is None!14317) lt!2045793)) (not ((_ is None!14317) lt!2045793))))))

(declare-fun maxPrefixZipperSequenceV2!655 (LexerInterface!7916 List!57360 BalanceConc!29582 BalanceConc!29582) Option!14318)

(assert (=> b!4956610 (= lt!2045793 (maxPrefixZipperSequenceV2!655 thiss!15247 (t!367926 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!308 (LexerInterface!7916 Rule!16448 BalanceConc!29582 BalanceConc!29582) Option!14318)

(assert (=> b!4956610 (= lt!2045789 (maxPrefixOneRuleZipperSequenceV2!308 thiss!15247 (h!63684 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4956611 () Bool)

(declare-fun tp!1390055 () Bool)

(assert (=> b!4956611 (= e!3097438 (and e!3097448 tp!1390055))))

(declare-fun b!4956612 () Bool)

(declare-fun tp!1390056 () Bool)

(assert (=> b!4956612 (= e!3097446 (and (inv!74673 (c!846180 totalInput!464)) tp!1390056))))

(declare-fun b!4956613 () Bool)

(declare-fun e!3097443 () Bool)

(assert (=> b!4956613 (= e!3097443 e!3097444)))

(declare-fun res!2114911 () Bool)

(assert (=> b!4956613 (=> res!2114911 e!3097444)))

(assert (=> b!4956613 (= res!2114911 (not (= (_1!34210 lt!2045791) (_1!34209 lt!2045796))))))

(declare-fun get!19803 (Option!14317) tuple2!61812)

(assert (=> b!4956613 (= lt!2045796 (get!19803 lt!2045794))))

(declare-fun get!19804 (Option!14318) tuple2!61814)

(assert (=> b!4956613 (= lt!2045791 (get!19804 lt!2045789))))

(declare-fun b!4956614 () Bool)

(declare-fun maxPrefix!4627 (LexerInterface!7916 List!57360 List!57359) Option!14317)

(assert (=> b!4956614 (= e!3097445 (isDefined!11244 (maxPrefix!4627 thiss!15247 rulesArg!259 lt!2045792)))))

(declare-fun b!4956615 () Bool)

(assert (=> b!4956615 (= e!3097447 e!3097445)))

(declare-fun res!2114907 () Bool)

(assert (=> b!4956615 (=> res!2114907 e!3097445)))

(assert (=> b!4956615 (= res!2114907 e!3097443)))

(declare-fun res!2114903 () Bool)

(assert (=> b!4956615 (=> (not res!2114903) (not e!3097443))))

(assert (=> b!4956615 (= res!2114903 (not lt!2045790))))

(assert (=> b!4956615 (= lt!2045790 (not lt!2045788))))

(declare-fun b!4956616 () Bool)

(assert (=> b!4956616 (= e!3097449 (not e!3097442))))

(declare-fun res!2114909 () Bool)

(assert (=> b!4956616 (=> res!2114909 e!3097442)))

(assert (=> b!4956616 (= res!2114909 (or (and ((_ is Cons!57236) rulesArg!259) ((_ is Nil!57236) (t!367926 rulesArg!259))) (not ((_ is Cons!57236) rulesArg!259))))))

(declare-fun isPrefix!5177 (List!57359 List!57359) Bool)

(assert (=> b!4956616 (isPrefix!5177 lt!2045792 lt!2045792)))

(declare-datatypes ((Unit!148129 0))(
  ( (Unit!148130) )
))
(declare-fun lt!2045795 () Unit!148129)

(declare-fun lemmaIsPrefixRefl!3501 (List!57359 List!57359) Unit!148129)

(assert (=> b!4956616 (= lt!2045795 (lemmaIsPrefixRefl!3501 lt!2045792 lt!2045792))))

(assert (= (and start!522430 res!2114906) b!4956602))

(assert (= (and b!4956602 res!2114912) b!4956601))

(assert (= (and b!4956601 res!2114910) b!4956608))

(assert (= (and b!4956608 res!2114905) b!4956616))

(assert (= (and b!4956616 (not res!2114909)) b!4956610))

(assert (= (and b!4956610 (not res!2114913)) b!4956604))

(assert (= (and b!4956604 (not res!2114908)) b!4956615))

(assert (= (and b!4956615 res!2114903) b!4956613))

(assert (= (and b!4956613 (not res!2114911)) b!4956607))

(assert (= (and b!4956615 (not res!2114907)) b!4956603))

(assert (= (and b!4956603 (not res!2114904)) b!4956614))

(assert (= b!4956605 b!4956606))

(assert (= b!4956611 b!4956605))

(assert (= (and start!522430 ((_ is Cons!57236) rulesArg!259)) b!4956611))

(assert (= start!522430 b!4956609))

(assert (= start!522430 b!4956612))

(declare-fun m!5981174 () Bool)

(assert (=> b!4956610 m!5981174))

(declare-fun m!5981176 () Bool)

(assert (=> b!4956610 m!5981176))

(declare-fun m!5981178 () Bool)

(assert (=> b!4956613 m!5981178))

(declare-fun m!5981180 () Bool)

(assert (=> b!4956613 m!5981180))

(declare-fun m!5981182 () Bool)

(assert (=> b!4956616 m!5981182))

(declare-fun m!5981184 () Bool)

(assert (=> b!4956616 m!5981184))

(declare-fun m!5981186 () Bool)

(assert (=> b!4956602 m!5981186))

(declare-fun m!5981188 () Bool)

(assert (=> b!4956614 m!5981188))

(assert (=> b!4956614 m!5981188))

(declare-fun m!5981190 () Bool)

(assert (=> b!4956614 m!5981190))

(declare-fun m!5981192 () Bool)

(assert (=> b!4956605 m!5981192))

(declare-fun m!5981194 () Bool)

(assert (=> b!4956605 m!5981194))

(declare-fun m!5981196 () Bool)

(assert (=> b!4956604 m!5981196))

(declare-fun m!5981198 () Bool)

(assert (=> b!4956604 m!5981198))

(declare-fun m!5981200 () Bool)

(assert (=> b!4956604 m!5981200))

(declare-fun m!5981202 () Bool)

(assert (=> b!4956607 m!5981202))

(declare-fun m!5981204 () Bool)

(assert (=> b!4956612 m!5981204))

(declare-fun m!5981206 () Bool)

(assert (=> b!4956601 m!5981206))

(declare-fun m!5981208 () Bool)

(assert (=> start!522430 m!5981208))

(declare-fun m!5981210 () Bool)

(assert (=> start!522430 m!5981210))

(declare-fun m!5981212 () Bool)

(assert (=> b!4956608 m!5981212))

(assert (=> b!4956608 m!5981212))

(declare-fun m!5981214 () Bool)

(assert (=> b!4956608 m!5981214))

(declare-fun m!5981216 () Bool)

(assert (=> b!4956608 m!5981216))

(declare-fun m!5981218 () Bool)

(assert (=> b!4956609 m!5981218))

(check-sat (not b!4956612) (not b!4956609) (not start!522430) b_and!347165 (not b!4956614) (not b!4956608) (not b!4956610) (not b_next!133103) (not b_next!133101) (not b!4956616) (not b!4956605) (not b!4956613) (not b!4956602) (not b!4956607) (not b!4956601) (not b!4956611) (not b!4956604) b_and!347163)
(check-sat b_and!347163 b_and!347165 (not b_next!133101) (not b_next!133103))
(get-model)

(declare-fun d!1595613 () Bool)

(declare-fun e!3097472 () Bool)

(assert (=> d!1595613 e!3097472))

(declare-fun res!2114947 () Bool)

(assert (=> d!1595613 (=> res!2114947 e!3097472)))

(declare-fun lt!2045807 () Bool)

(assert (=> d!1595613 (= res!2114947 (not lt!2045807))))

(declare-fun drop!2324 (List!57359 Int) List!57359)

(declare-fun size!37949 (List!57359) Int)

(assert (=> d!1595613 (= lt!2045807 (= lt!2045792 (drop!2324 (list!18265 totalInput!464) (- (size!37949 (list!18265 totalInput!464)) (size!37949 lt!2045792)))))))

(assert (=> d!1595613 (= (isSuffix!1123 lt!2045792 (list!18265 totalInput!464)) lt!2045807)))

(declare-fun b!4956645 () Bool)

(assert (=> b!4956645 (= e!3097472 (>= (size!37949 (list!18265 totalInput!464)) (size!37949 lt!2045792)))))

(assert (= (and d!1595613 (not res!2114947)) b!4956645))

(assert (=> d!1595613 m!5981212))

(declare-fun m!5981238 () Bool)

(assert (=> d!1595613 m!5981238))

(declare-fun m!5981240 () Bool)

(assert (=> d!1595613 m!5981240))

(assert (=> d!1595613 m!5981212))

(declare-fun m!5981242 () Bool)

(assert (=> d!1595613 m!5981242))

(assert (=> b!4956645 m!5981212))

(assert (=> b!4956645 m!5981238))

(assert (=> b!4956645 m!5981240))

(assert (=> b!4956608 d!1595613))

(declare-fun d!1595621 () Bool)

(declare-fun list!18267 (Conc!15076) List!57359)

(assert (=> d!1595621 (= (list!18265 totalInput!464) (list!18267 (c!846180 totalInput!464)))))

(declare-fun bs!1182536 () Bool)

(assert (= bs!1182536 d!1595621))

(declare-fun m!5981248 () Bool)

(assert (=> bs!1182536 m!5981248))

(assert (=> b!4956608 d!1595621))

(declare-fun d!1595625 () Bool)

(assert (=> d!1595625 (= (list!18265 input!1342) (list!18267 (c!846180 input!1342)))))

(declare-fun bs!1182537 () Bool)

(assert (= bs!1182537 d!1595625))

(declare-fun m!5981250 () Bool)

(assert (=> bs!1182537 m!5981250))

(assert (=> b!4956608 d!1595625))

(declare-fun d!1595627 () Bool)

(declare-fun c!846187 () Bool)

(assert (=> d!1595627 (= c!846187 ((_ is Node!15076) (c!846180 input!1342)))))

(declare-fun e!3097480 () Bool)

(assert (=> d!1595627 (= (inv!74673 (c!846180 input!1342)) e!3097480)))

(declare-fun b!4956656 () Bool)

(declare-fun inv!74676 (Conc!15076) Bool)

(assert (=> b!4956656 (= e!3097480 (inv!74676 (c!846180 input!1342)))))

(declare-fun b!4956657 () Bool)

(declare-fun e!3097481 () Bool)

(assert (=> b!4956657 (= e!3097480 e!3097481)))

(declare-fun res!2114952 () Bool)

(assert (=> b!4956657 (= res!2114952 (not ((_ is Leaf!25063) (c!846180 input!1342))))))

(assert (=> b!4956657 (=> res!2114952 e!3097481)))

(declare-fun b!4956658 () Bool)

(declare-fun inv!74677 (Conc!15076) Bool)

(assert (=> b!4956658 (= e!3097481 (inv!74677 (c!846180 input!1342)))))

(assert (= (and d!1595627 c!846187) b!4956656))

(assert (= (and d!1595627 (not c!846187)) b!4956657))

(assert (= (and b!4956657 (not res!2114952)) b!4956658))

(declare-fun m!5981260 () Bool)

(assert (=> b!4956656 m!5981260))

(declare-fun m!5981262 () Bool)

(assert (=> b!4956658 m!5981262))

(assert (=> b!4956609 d!1595627))

(declare-fun d!1595635 () Bool)

(assert (=> d!1595635 (= (inv!74667 (tag!9188 (h!63684 rulesArg!259))) (= (mod (str.len (value!266675 (tag!9188 (h!63684 rulesArg!259)))) 2) 0))))

(assert (=> b!4956605 d!1595635))

(declare-fun d!1595637 () Bool)

(declare-fun res!2114955 () Bool)

(declare-fun e!3097484 () Bool)

(assert (=> d!1595637 (=> (not res!2114955) (not e!3097484))))

(declare-fun semiInverseModEq!3675 (Int Int) Bool)

(assert (=> d!1595637 (= res!2114955 (semiInverseModEq!3675 (toChars!11134 (transformation!8324 (h!63684 rulesArg!259))) (toValue!11275 (transformation!8324 (h!63684 rulesArg!259)))))))

(assert (=> d!1595637 (= (inv!74672 (transformation!8324 (h!63684 rulesArg!259))) e!3097484)))

(declare-fun b!4956661 () Bool)

(declare-fun equivClasses!3523 (Int Int) Bool)

(assert (=> b!4956661 (= e!3097484 (equivClasses!3523 (toChars!11134 (transformation!8324 (h!63684 rulesArg!259))) (toValue!11275 (transformation!8324 (h!63684 rulesArg!259)))))))

(assert (= (and d!1595637 res!2114955) b!4956661))

(declare-fun m!5981264 () Bool)

(assert (=> d!1595637 m!5981264))

(declare-fun m!5981266 () Bool)

(assert (=> b!4956661 m!5981266))

(assert (=> b!4956605 d!1595637))

(declare-fun b!4956673 () Bool)

(declare-fun e!3097492 () Bool)

(assert (=> b!4956673 (= e!3097492 (>= (size!37949 lt!2045792) (size!37949 lt!2045792)))))

(declare-fun d!1595639 () Bool)

(assert (=> d!1595639 e!3097492))

(declare-fun res!2114964 () Bool)

(assert (=> d!1595639 (=> res!2114964 e!3097492)))

(declare-fun lt!2045811 () Bool)

(assert (=> d!1595639 (= res!2114964 (not lt!2045811))))

(declare-fun e!3097493 () Bool)

(assert (=> d!1595639 (= lt!2045811 e!3097493)))

(declare-fun res!2114966 () Bool)

(assert (=> d!1595639 (=> res!2114966 e!3097493)))

(assert (=> d!1595639 (= res!2114966 ((_ is Nil!57235) lt!2045792))))

(assert (=> d!1595639 (= (isPrefix!5177 lt!2045792 lt!2045792) lt!2045811)))

(declare-fun b!4956671 () Bool)

(declare-fun res!2114965 () Bool)

(declare-fun e!3097491 () Bool)

(assert (=> b!4956671 (=> (not res!2114965) (not e!3097491))))

(declare-fun head!10644 (List!57359) C!27364)

(assert (=> b!4956671 (= res!2114965 (= (head!10644 lt!2045792) (head!10644 lt!2045792)))))

(declare-fun b!4956672 () Bool)

(declare-fun tail!9777 (List!57359) List!57359)

(assert (=> b!4956672 (= e!3097491 (isPrefix!5177 (tail!9777 lt!2045792) (tail!9777 lt!2045792)))))

(declare-fun b!4956670 () Bool)

(assert (=> b!4956670 (= e!3097493 e!3097491)))

(declare-fun res!2114967 () Bool)

(assert (=> b!4956670 (=> (not res!2114967) (not e!3097491))))

(assert (=> b!4956670 (= res!2114967 (not ((_ is Nil!57235) lt!2045792)))))

(assert (= (and d!1595639 (not res!2114966)) b!4956670))

(assert (= (and b!4956670 res!2114967) b!4956671))

(assert (= (and b!4956671 res!2114965) b!4956672))

(assert (= (and d!1595639 (not res!2114964)) b!4956673))

(assert (=> b!4956673 m!5981240))

(assert (=> b!4956673 m!5981240))

(declare-fun m!5981268 () Bool)

(assert (=> b!4956671 m!5981268))

(assert (=> b!4956671 m!5981268))

(declare-fun m!5981270 () Bool)

(assert (=> b!4956672 m!5981270))

(assert (=> b!4956672 m!5981270))

(assert (=> b!4956672 m!5981270))

(assert (=> b!4956672 m!5981270))

(declare-fun m!5981272 () Bool)

(assert (=> b!4956672 m!5981272))

(assert (=> b!4956616 d!1595639))

(declare-fun d!1595641 () Bool)

(assert (=> d!1595641 (isPrefix!5177 lt!2045792 lt!2045792)))

(declare-fun lt!2045814 () Unit!148129)

(declare-fun choose!36624 (List!57359 List!57359) Unit!148129)

(assert (=> d!1595641 (= lt!2045814 (choose!36624 lt!2045792 lt!2045792))))

(assert (=> d!1595641 (= (lemmaIsPrefixRefl!3501 lt!2045792 lt!2045792) lt!2045814)))

(declare-fun bs!1182540 () Bool)

(assert (= bs!1182540 d!1595641))

(assert (=> bs!1182540 m!5981182))

(declare-fun m!5981274 () Bool)

(assert (=> bs!1182540 m!5981274))

(assert (=> b!4956616 d!1595641))

(declare-fun d!1595643 () Bool)

(declare-fun isBalanced!4175 (Conc!15076) Bool)

(assert (=> d!1595643 (= (inv!74671 input!1342) (isBalanced!4175 (c!846180 input!1342)))))

(declare-fun bs!1182541 () Bool)

(assert (= bs!1182541 d!1595643))

(declare-fun m!5981276 () Bool)

(assert (=> bs!1182541 m!5981276))

(assert (=> start!522430 d!1595643))

(declare-fun d!1595645 () Bool)

(assert (=> d!1595645 (= (inv!74671 totalInput!464) (isBalanced!4175 (c!846180 totalInput!464)))))

(declare-fun bs!1182542 () Bool)

(assert (= bs!1182542 d!1595645))

(declare-fun m!5981278 () Bool)

(assert (=> bs!1182542 m!5981278))

(assert (=> start!522430 d!1595645))

(declare-fun d!1595647 () Bool)

(assert (=> d!1595647 (= (list!18265 (_2!34210 lt!2045791)) (list!18267 (c!846180 (_2!34210 lt!2045791))))))

(declare-fun bs!1182543 () Bool)

(assert (= bs!1182543 d!1595647))

(declare-fun m!5981280 () Bool)

(assert (=> bs!1182543 m!5981280))

(assert (=> b!4956607 d!1595647))

(declare-fun d!1595649 () Bool)

(assert (=> d!1595649 true))

(declare-fun lt!2045852 () Bool)

(declare-fun lambda!247103 () Int)

(declare-fun forall!13301 (List!57360 Int) Bool)

(assert (=> d!1595649 (= lt!2045852 (forall!13301 rulesArg!259 lambda!247103))))

(declare-fun e!3097520 () Bool)

(assert (=> d!1595649 (= lt!2045852 e!3097520)))

(declare-fun res!2114993 () Bool)

(assert (=> d!1595649 (=> res!2114993 e!3097520)))

(assert (=> d!1595649 (= res!2114993 (not ((_ is Cons!57236) rulesArg!259)))))

(assert (=> d!1595649 (= (rulesValidInductive!3227 thiss!15247 rulesArg!259) lt!2045852)))

(declare-fun b!4956708 () Bool)

(declare-fun e!3097521 () Bool)

(assert (=> b!4956708 (= e!3097520 e!3097521)))

(declare-fun res!2114992 () Bool)

(assert (=> b!4956708 (=> (not res!2114992) (not e!3097521))))

(declare-fun ruleValid!3776 (LexerInterface!7916 Rule!16448) Bool)

(assert (=> b!4956708 (= res!2114992 (ruleValid!3776 thiss!15247 (h!63684 rulesArg!259)))))

(declare-fun b!4956709 () Bool)

(assert (=> b!4956709 (= e!3097521 (rulesValidInductive!3227 thiss!15247 (t!367926 rulesArg!259)))))

(assert (= (and d!1595649 (not res!2114993)) b!4956708))

(assert (= (and b!4956708 res!2114992) b!4956709))

(declare-fun m!5981308 () Bool)

(assert (=> d!1595649 m!5981308))

(declare-fun m!5981310 () Bool)

(assert (=> b!4956708 m!5981310))

(declare-fun m!5981312 () Bool)

(assert (=> b!4956709 m!5981312))

(assert (=> b!4956602 d!1595649))

(declare-fun d!1595653 () Bool)

(assert (=> d!1595653 (= (get!19803 lt!2045794) (v!50301 lt!2045794))))

(assert (=> b!4956613 d!1595653))

(declare-fun d!1595655 () Bool)

(assert (=> d!1595655 (= (get!19804 lt!2045789) (v!50302 lt!2045789))))

(assert (=> b!4956613 d!1595655))

(declare-fun d!1595657 () Bool)

(declare-fun isEmpty!30769 (Option!14317) Bool)

(assert (=> d!1595657 (= (isDefined!11244 (maxPrefix!4627 thiss!15247 rulesArg!259 lt!2045792)) (not (isEmpty!30769 (maxPrefix!4627 thiss!15247 rulesArg!259 lt!2045792))))))

(declare-fun bs!1182544 () Bool)

(assert (= bs!1182544 d!1595657))

(assert (=> bs!1182544 m!5981188))

(declare-fun m!5981314 () Bool)

(assert (=> bs!1182544 m!5981314))

(assert (=> b!4956614 d!1595657))

(declare-fun b!4956742 () Bool)

(declare-fun e!3097541 () Bool)

(declare-fun lt!2045881 () Option!14317)

(declare-fun contains!19515 (List!57360 Rule!16448) Bool)

(assert (=> b!4956742 (= e!3097541 (contains!19515 rulesArg!259 (rule!11540 (_1!34209 (get!19803 lt!2045881)))))))

(declare-fun b!4956743 () Bool)

(declare-fun res!2115023 () Bool)

(assert (=> b!4956743 (=> (not res!2115023) (not e!3097541))))

(declare-fun ++!12509 (List!57359 List!57359) List!57359)

(declare-fun charsOf!5414 (Token!15148) BalanceConc!29582)

(assert (=> b!4956743 (= res!2115023 (= (++!12509 (list!18265 (charsOf!5414 (_1!34209 (get!19803 lt!2045881)))) (_2!34209 (get!19803 lt!2045881))) lt!2045792))))

(declare-fun b!4956744 () Bool)

(declare-fun e!3097540 () Option!14317)

(declare-fun lt!2045883 () Option!14317)

(declare-fun lt!2045879 () Option!14317)

(assert (=> b!4956744 (= e!3097540 (ite (and ((_ is None!14316) lt!2045883) ((_ is None!14316) lt!2045879)) None!14316 (ite ((_ is None!14316) lt!2045879) lt!2045883 (ite ((_ is None!14316) lt!2045883) lt!2045879 (ite (>= (size!37946 (_1!34209 (v!50301 lt!2045883))) (size!37946 (_1!34209 (v!50301 lt!2045879)))) lt!2045883 lt!2045879)))))))

(declare-fun call!345889 () Option!14317)

(assert (=> b!4956744 (= lt!2045883 call!345889)))

(assert (=> b!4956744 (= lt!2045879 (maxPrefix!4627 thiss!15247 (t!367926 rulesArg!259) lt!2045792))))

(declare-fun b!4956745 () Bool)

(declare-fun res!2115019 () Bool)

(assert (=> b!4956745 (=> (not res!2115019) (not e!3097541))))

(declare-fun apply!13879 (TokenValueInjection!16576 BalanceConc!29582) TokenValue!8634)

(declare-fun seqFromList!6011 (List!57359) BalanceConc!29582)

(assert (=> b!4956745 (= res!2115019 (= (value!266676 (_1!34209 (get!19803 lt!2045881))) (apply!13879 (transformation!8324 (rule!11540 (_1!34209 (get!19803 lt!2045881)))) (seqFromList!6011 (originalCharacters!8605 (_1!34209 (get!19803 lt!2045881)))))))))

(declare-fun b!4956746 () Bool)

(declare-fun res!2115018 () Bool)

(assert (=> b!4956746 (=> (not res!2115018) (not e!3097541))))

(declare-fun matchR!6611 (Regex!13557 List!57359) Bool)

(assert (=> b!4956746 (= res!2115018 (matchR!6611 (regex!8324 (rule!11540 (_1!34209 (get!19803 lt!2045881)))) (list!18265 (charsOf!5414 (_1!34209 (get!19803 lt!2045881))))))))

(declare-fun b!4956747 () Bool)

(assert (=> b!4956747 (= e!3097540 call!345889)))

(declare-fun bm!345884 () Bool)

(declare-fun maxPrefixOneRule!3604 (LexerInterface!7916 Rule!16448 List!57359) Option!14317)

(assert (=> bm!345884 (= call!345889 (maxPrefixOneRule!3604 thiss!15247 (h!63684 rulesArg!259) lt!2045792))))

(declare-fun b!4956748 () Bool)

(declare-fun e!3097539 () Bool)

(assert (=> b!4956748 (= e!3097539 e!3097541)))

(declare-fun res!2115024 () Bool)

(assert (=> b!4956748 (=> (not res!2115024) (not e!3097541))))

(assert (=> b!4956748 (= res!2115024 (isDefined!11244 lt!2045881))))

(declare-fun b!4956749 () Bool)

(declare-fun res!2115022 () Bool)

(assert (=> b!4956749 (=> (not res!2115022) (not e!3097541))))

(assert (=> b!4956749 (= res!2115022 (< (size!37949 (_2!34209 (get!19803 lt!2045881))) (size!37949 lt!2045792)))))

(declare-fun d!1595659 () Bool)

(assert (=> d!1595659 e!3097539))

(declare-fun res!2115021 () Bool)

(assert (=> d!1595659 (=> res!2115021 e!3097539)))

(assert (=> d!1595659 (= res!2115021 (isEmpty!30769 lt!2045881))))

(assert (=> d!1595659 (= lt!2045881 e!3097540)))

(declare-fun c!846196 () Bool)

(assert (=> d!1595659 (= c!846196 (and ((_ is Cons!57236) rulesArg!259) ((_ is Nil!57236) (t!367926 rulesArg!259))))))

(declare-fun lt!2045880 () Unit!148129)

(declare-fun lt!2045882 () Unit!148129)

(assert (=> d!1595659 (= lt!2045880 lt!2045882)))

(assert (=> d!1595659 (isPrefix!5177 lt!2045792 lt!2045792)))

(assert (=> d!1595659 (= lt!2045882 (lemmaIsPrefixRefl!3501 lt!2045792 lt!2045792))))

(assert (=> d!1595659 (rulesValidInductive!3227 thiss!15247 rulesArg!259)))

(assert (=> d!1595659 (= (maxPrefix!4627 thiss!15247 rulesArg!259 lt!2045792) lt!2045881)))

(declare-fun b!4956750 () Bool)

(declare-fun res!2115020 () Bool)

(assert (=> b!4956750 (=> (not res!2115020) (not e!3097541))))

(assert (=> b!4956750 (= res!2115020 (= (list!18265 (charsOf!5414 (_1!34209 (get!19803 lt!2045881)))) (originalCharacters!8605 (_1!34209 (get!19803 lt!2045881)))))))

(assert (= (and d!1595659 c!846196) b!4956747))

(assert (= (and d!1595659 (not c!846196)) b!4956744))

(assert (= (or b!4956747 b!4956744) bm!345884))

(assert (= (and d!1595659 (not res!2115021)) b!4956748))

(assert (= (and b!4956748 res!2115024) b!4956750))

(assert (= (and b!4956750 res!2115020) b!4956749))

(assert (= (and b!4956749 res!2115022) b!4956743))

(assert (= (and b!4956743 res!2115023) b!4956745))

(assert (= (and b!4956745 res!2115019) b!4956746))

(assert (= (and b!4956746 res!2115018) b!4956742))

(declare-fun m!5981316 () Bool)

(assert (=> d!1595659 m!5981316))

(assert (=> d!1595659 m!5981182))

(assert (=> d!1595659 m!5981184))

(assert (=> d!1595659 m!5981186))

(declare-fun m!5981318 () Bool)

(assert (=> b!4956743 m!5981318))

(declare-fun m!5981320 () Bool)

(assert (=> b!4956743 m!5981320))

(assert (=> b!4956743 m!5981320))

(declare-fun m!5981322 () Bool)

(assert (=> b!4956743 m!5981322))

(assert (=> b!4956743 m!5981322))

(declare-fun m!5981324 () Bool)

(assert (=> b!4956743 m!5981324))

(assert (=> b!4956750 m!5981318))

(assert (=> b!4956750 m!5981320))

(assert (=> b!4956750 m!5981320))

(assert (=> b!4956750 m!5981322))

(declare-fun m!5981326 () Bool)

(assert (=> b!4956744 m!5981326))

(assert (=> b!4956746 m!5981318))

(assert (=> b!4956746 m!5981320))

(assert (=> b!4956746 m!5981320))

(assert (=> b!4956746 m!5981322))

(assert (=> b!4956746 m!5981322))

(declare-fun m!5981328 () Bool)

(assert (=> b!4956746 m!5981328))

(assert (=> b!4956742 m!5981318))

(declare-fun m!5981330 () Bool)

(assert (=> b!4956742 m!5981330))

(declare-fun m!5981332 () Bool)

(assert (=> bm!345884 m!5981332))

(assert (=> b!4956745 m!5981318))

(declare-fun m!5981334 () Bool)

(assert (=> b!4956745 m!5981334))

(assert (=> b!4956745 m!5981334))

(declare-fun m!5981336 () Bool)

(assert (=> b!4956745 m!5981336))

(assert (=> b!4956749 m!5981318))

(declare-fun m!5981338 () Bool)

(assert (=> b!4956749 m!5981338))

(assert (=> b!4956749 m!5981240))

(declare-fun m!5981340 () Bool)

(assert (=> b!4956748 m!5981340))

(assert (=> b!4956614 d!1595659))

(declare-fun d!1595661 () Bool)

(assert (=> d!1595661 (= (isDefined!11244 lt!2045794) (not (isEmpty!30769 lt!2045794)))))

(declare-fun bs!1182545 () Bool)

(assert (= bs!1182545 d!1595661))

(declare-fun m!5981342 () Bool)

(assert (=> bs!1182545 m!5981342))

(assert (=> b!4956604 d!1595661))

(declare-fun d!1595663 () Bool)

(declare-fun isEmpty!30770 (Option!14318) Bool)

(assert (=> d!1595663 (= (isDefined!11245 lt!2045789) (not (isEmpty!30770 lt!2045789)))))

(declare-fun bs!1182546 () Bool)

(assert (= bs!1182546 d!1595663))

(declare-fun m!5981344 () Bool)

(assert (=> bs!1182546 m!5981344))

(assert (=> b!4956604 d!1595663))

(declare-fun lt!2045895 () Option!14317)

(declare-fun d!1595665 () Bool)

(assert (=> d!1595665 (= lt!2045895 (maxPrefix!4627 thiss!15247 rulesArg!259 lt!2045792))))

(declare-fun e!3097550 () Option!14317)

(assert (=> d!1595665 (= lt!2045895 e!3097550)))

(declare-fun c!846199 () Bool)

(assert (=> d!1595665 (= c!846199 (and ((_ is Cons!57236) rulesArg!259) ((_ is Nil!57236) (t!367926 rulesArg!259))))))

(declare-fun lt!2045898 () Unit!148129)

(declare-fun lt!2045897 () Unit!148129)

(assert (=> d!1595665 (= lt!2045898 lt!2045897)))

(assert (=> d!1595665 (isPrefix!5177 lt!2045792 lt!2045792)))

(assert (=> d!1595665 (= lt!2045897 (lemmaIsPrefixRefl!3501 lt!2045792 lt!2045792))))

(assert (=> d!1595665 (rulesValidInductive!3227 thiss!15247 rulesArg!259)))

(assert (=> d!1595665 (= (maxPrefixZipper!721 thiss!15247 rulesArg!259 lt!2045792) lt!2045895)))

(declare-fun bm!345887 () Bool)

(declare-fun call!345892 () Option!14317)

(declare-fun maxPrefixOneRuleZipper!273 (LexerInterface!7916 Rule!16448 List!57359) Option!14317)

(assert (=> bm!345887 (= call!345892 (maxPrefixOneRuleZipper!273 thiss!15247 (h!63684 rulesArg!259) lt!2045792))))

(declare-fun b!4956763 () Bool)

(assert (=> b!4956763 (= e!3097550 call!345892)))

(declare-fun b!4956764 () Bool)

(declare-fun lt!2045894 () Option!14317)

(declare-fun lt!2045896 () Option!14317)

(assert (=> b!4956764 (= e!3097550 (ite (and ((_ is None!14316) lt!2045894) ((_ is None!14316) lt!2045896)) None!14316 (ite ((_ is None!14316) lt!2045896) lt!2045894 (ite ((_ is None!14316) lt!2045894) lt!2045896 (ite (>= (size!37946 (_1!34209 (v!50301 lt!2045894))) (size!37946 (_1!34209 (v!50301 lt!2045896)))) lt!2045894 lt!2045896)))))))

(assert (=> b!4956764 (= lt!2045894 call!345892)))

(assert (=> b!4956764 (= lt!2045896 (maxPrefixZipper!721 thiss!15247 (t!367926 rulesArg!259) lt!2045792))))

(assert (= (and d!1595665 c!846199) b!4956763))

(assert (= (and d!1595665 (not c!846199)) b!4956764))

(assert (= (or b!4956763 b!4956764) bm!345887))

(assert (=> d!1595665 m!5981188))

(assert (=> d!1595665 m!5981182))

(assert (=> d!1595665 m!5981184))

(assert (=> d!1595665 m!5981186))

(declare-fun m!5981396 () Bool)

(assert (=> bm!345887 m!5981396))

(declare-fun m!5981398 () Bool)

(assert (=> b!4956764 m!5981398))

(assert (=> b!4956604 d!1595665))

(declare-fun lt!2045948 () Option!14318)

(declare-fun e!3097608 () Bool)

(declare-fun b!4956861 () Bool)

(assert (=> b!4956861 (= e!3097608 (= (list!18265 (_2!34210 (get!19804 lt!2045948))) (_2!34209 (get!19803 (maxPrefixZipper!721 thiss!15247 (t!367926 rulesArg!259) (list!18265 input!1342))))))))

(declare-fun b!4956862 () Bool)

(declare-fun e!3097605 () Bool)

(declare-fun e!3097607 () Bool)

(assert (=> b!4956862 (= e!3097605 e!3097607)))

(declare-fun res!2115067 () Bool)

(assert (=> b!4956862 (=> res!2115067 e!3097607)))

(assert (=> b!4956862 (= res!2115067 (not (isDefined!11245 lt!2045948)))))

(declare-fun b!4956863 () Bool)

(declare-fun e!3097606 () Bool)

(assert (=> b!4956863 (= e!3097606 e!3097608)))

(declare-fun res!2115068 () Bool)

(assert (=> b!4956863 (=> (not res!2115068) (not e!3097608))))

(assert (=> b!4956863 (= res!2115068 (= (_1!34210 (get!19804 lt!2045948)) (_1!34209 (get!19803 (maxPrefixZipper!721 thiss!15247 (t!367926 rulesArg!259) (list!18265 input!1342))))))))

(declare-fun e!3097604 () Bool)

(declare-fun b!4956864 () Bool)

(assert (=> b!4956864 (= e!3097604 (= (list!18265 (_2!34210 (get!19804 lt!2045948))) (_2!34209 (get!19803 (maxPrefix!4627 thiss!15247 (t!367926 rulesArg!259) (list!18265 input!1342))))))))

(declare-fun b!4956865 () Bool)

(declare-fun e!3097609 () Option!14318)

(declare-fun lt!2045949 () Option!14318)

(declare-fun lt!2045947 () Option!14318)

(assert (=> b!4956865 (= e!3097609 (ite (and ((_ is None!14317) lt!2045949) ((_ is None!14317) lt!2045947)) None!14317 (ite ((_ is None!14317) lt!2045947) lt!2045949 (ite ((_ is None!14317) lt!2045949) lt!2045947 (ite (>= (size!37946 (_1!34210 (v!50302 lt!2045949))) (size!37946 (_1!34210 (v!50302 lt!2045947)))) lt!2045949 lt!2045947)))))))

(declare-fun call!345901 () Option!14318)

(assert (=> b!4956865 (= lt!2045949 call!345901)))

(assert (=> b!4956865 (= lt!2045947 (maxPrefixZipperSequenceV2!655 thiss!15247 (t!367926 (t!367926 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun b!4956867 () Bool)

(assert (=> b!4956867 (= e!3097609 call!345901)))

(declare-fun b!4956868 () Bool)

(declare-fun res!2115065 () Bool)

(assert (=> b!4956868 (=> (not res!2115065) (not e!3097605))))

(assert (=> b!4956868 (= res!2115065 e!3097606)))

(declare-fun res!2115069 () Bool)

(assert (=> b!4956868 (=> res!2115069 e!3097606)))

(assert (=> b!4956868 (= res!2115069 (not (isDefined!11245 lt!2045948)))))

(declare-fun bm!345896 () Bool)

(assert (=> bm!345896 (= call!345901 (maxPrefixOneRuleZipperSequenceV2!308 thiss!15247 (h!63684 (t!367926 rulesArg!259)) input!1342 totalInput!464))))

(declare-fun d!1595673 () Bool)

(assert (=> d!1595673 e!3097605))

(declare-fun res!2115064 () Bool)

(assert (=> d!1595673 (=> (not res!2115064) (not e!3097605))))

(assert (=> d!1595673 (= res!2115064 (= (isDefined!11245 lt!2045948) (isDefined!11244 (maxPrefixZipper!721 thiss!15247 (t!367926 rulesArg!259) (list!18265 input!1342)))))))

(assert (=> d!1595673 (= lt!2045948 e!3097609)))

(declare-fun c!846208 () Bool)

(assert (=> d!1595673 (= c!846208 (and ((_ is Cons!57236) (t!367926 rulesArg!259)) ((_ is Nil!57236) (t!367926 (t!367926 rulesArg!259)))))))

(declare-fun lt!2045951 () Unit!148129)

(declare-fun lt!2045950 () Unit!148129)

(assert (=> d!1595673 (= lt!2045951 lt!2045950)))

(declare-fun lt!2045946 () List!57359)

(declare-fun lt!2045952 () List!57359)

(assert (=> d!1595673 (isPrefix!5177 lt!2045946 lt!2045952)))

(assert (=> d!1595673 (= lt!2045950 (lemmaIsPrefixRefl!3501 lt!2045946 lt!2045952))))

(assert (=> d!1595673 (= lt!2045952 (list!18265 input!1342))))

(assert (=> d!1595673 (= lt!2045946 (list!18265 input!1342))))

(assert (=> d!1595673 (rulesValidInductive!3227 thiss!15247 (t!367926 rulesArg!259))))

(assert (=> d!1595673 (= (maxPrefixZipperSequenceV2!655 thiss!15247 (t!367926 rulesArg!259) input!1342 totalInput!464) lt!2045948)))

(declare-fun b!4956866 () Bool)

(assert (=> b!4956866 (= e!3097607 e!3097604)))

(declare-fun res!2115066 () Bool)

(assert (=> b!4956866 (=> (not res!2115066) (not e!3097604))))

(assert (=> b!4956866 (= res!2115066 (= (_1!34210 (get!19804 lt!2045948)) (_1!34209 (get!19803 (maxPrefix!4627 thiss!15247 (t!367926 rulesArg!259) (list!18265 input!1342))))))))

(assert (= (and d!1595673 c!846208) b!4956867))

(assert (= (and d!1595673 (not c!846208)) b!4956865))

(assert (= (or b!4956867 b!4956865) bm!345896))

(assert (= (and d!1595673 res!2115064) b!4956868))

(assert (= (and b!4956868 (not res!2115069)) b!4956863))

(assert (= (and b!4956863 res!2115068) b!4956861))

(assert (= (and b!4956868 res!2115065) b!4956862))

(assert (= (and b!4956862 (not res!2115067)) b!4956866))

(assert (= (and b!4956866 res!2115066) b!4956864))

(declare-fun m!5981456 () Bool)

(assert (=> b!4956863 m!5981456))

(assert (=> b!4956863 m!5981216))

(assert (=> b!4956863 m!5981216))

(declare-fun m!5981458 () Bool)

(assert (=> b!4956863 m!5981458))

(assert (=> b!4956863 m!5981458))

(declare-fun m!5981460 () Bool)

(assert (=> b!4956863 m!5981460))

(assert (=> b!4956866 m!5981456))

(assert (=> b!4956866 m!5981216))

(assert (=> b!4956866 m!5981216))

(declare-fun m!5981462 () Bool)

(assert (=> b!4956866 m!5981462))

(assert (=> b!4956866 m!5981462))

(declare-fun m!5981464 () Bool)

(assert (=> b!4956866 m!5981464))

(assert (=> d!1595673 m!5981216))

(assert (=> d!1595673 m!5981458))

(declare-fun m!5981466 () Bool)

(assert (=> d!1595673 m!5981466))

(assert (=> d!1595673 m!5981458))

(declare-fun m!5981468 () Bool)

(assert (=> d!1595673 m!5981468))

(declare-fun m!5981470 () Bool)

(assert (=> d!1595673 m!5981470))

(assert (=> d!1595673 m!5981312))

(declare-fun m!5981472 () Bool)

(assert (=> d!1595673 m!5981472))

(assert (=> d!1595673 m!5981216))

(declare-fun m!5981474 () Bool)

(assert (=> bm!345896 m!5981474))

(assert (=> b!4956862 m!5981466))

(declare-fun m!5981476 () Bool)

(assert (=> b!4956865 m!5981476))

(assert (=> b!4956861 m!5981216))

(assert (=> b!4956861 m!5981458))

(assert (=> b!4956861 m!5981458))

(assert (=> b!4956861 m!5981460))

(assert (=> b!4956861 m!5981216))

(declare-fun m!5981478 () Bool)

(assert (=> b!4956861 m!5981478))

(assert (=> b!4956861 m!5981456))

(assert (=> b!4956868 m!5981466))

(assert (=> b!4956864 m!5981216))

(assert (=> b!4956864 m!5981462))

(assert (=> b!4956864 m!5981216))

(assert (=> b!4956864 m!5981462))

(assert (=> b!4956864 m!5981464))

(assert (=> b!4956864 m!5981478))

(assert (=> b!4956864 m!5981456))

(assert (=> b!4956610 d!1595673))

(declare-fun b!4956894 () Bool)

(declare-fun e!3097630 () Bool)

(assert (=> b!4956894 (= e!3097630 true)))

(declare-fun b!4956893 () Bool)

(declare-fun e!3097629 () Bool)

(assert (=> b!4956893 (= e!3097629 e!3097630)))

(declare-fun b!4956883 () Bool)

(assert (=> b!4956883 e!3097629))

(assert (= b!4956893 b!4956894))

(assert (= b!4956883 b!4956893))

(declare-fun order!26069 () Int)

(declare-fun lambda!247116 () Int)

(declare-fun order!26071 () Int)

(declare-fun dynLambda!23072 (Int Int) Int)

(declare-fun dynLambda!23073 (Int Int) Int)

(assert (=> b!4956894 (< (dynLambda!23072 order!26069 (toValue!11275 (transformation!8324 (h!63684 rulesArg!259)))) (dynLambda!23073 order!26071 lambda!247116))))

(declare-fun order!26073 () Int)

(declare-fun dynLambda!23074 (Int Int) Int)

(assert (=> b!4956894 (< (dynLambda!23074 order!26073 (toChars!11134 (transformation!8324 (h!63684 rulesArg!259)))) (dynLambda!23073 order!26071 lambda!247116))))

(declare-fun b!4956881 () Bool)

(declare-fun e!3097624 () Option!14318)

(assert (=> b!4956881 (= e!3097624 None!14317)))

(declare-fun b!4956882 () Bool)

(declare-fun e!3097620 () Bool)

(declare-fun e!3097623 () Bool)

(assert (=> b!4956882 (= e!3097620 e!3097623)))

(declare-fun res!2115081 () Bool)

(assert (=> b!4956882 (=> (not res!2115081) (not e!3097623))))

(declare-fun lt!2045981 () Option!14318)

(assert (=> b!4956882 (= res!2115081 (= (_1!34210 (get!19804 lt!2045981)) (_1!34209 (get!19803 (maxPrefixOneRule!3604 thiss!15247 (h!63684 rulesArg!259) (list!18265 input!1342))))))))

(declare-datatypes ((tuple2!61820 0))(
  ( (tuple2!61821 (_1!34213 BalanceConc!29582) (_2!34213 BalanceConc!29582)) )
))
(declare-fun lt!2045975 () tuple2!61820)

(declare-fun size!37950 (BalanceConc!29582) Int)

(assert (=> b!4956883 (= e!3097624 (Some!14317 (tuple2!61815 (Token!15149 (apply!13879 (transformation!8324 (h!63684 rulesArg!259)) (_1!34213 lt!2045975)) (h!63684 rulesArg!259) (size!37950 (_1!34213 lt!2045975)) (list!18265 (_1!34213 lt!2045975))) (_2!34213 lt!2045975))))))

(declare-fun lt!2045974 () List!57359)

(assert (=> b!4956883 (= lt!2045974 (list!18265 input!1342))))

(declare-fun lt!2045976 () Unit!148129)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1795 (Regex!13557 List!57359) Unit!148129)

(assert (=> b!4956883 (= lt!2045976 (longestMatchIsAcceptedByMatchOrIsEmpty!1795 (regex!8324 (h!63684 rulesArg!259)) lt!2045974))))

(declare-fun res!2115080 () Bool)

(declare-fun isEmpty!30771 (List!57359) Bool)

(declare-datatypes ((tuple2!61822 0))(
  ( (tuple2!61823 (_1!34214 List!57359) (_2!34214 List!57359)) )
))
(declare-fun findLongestMatchInner!1834 (Regex!13557 List!57359 Int List!57359 List!57359 Int) tuple2!61822)

(assert (=> b!4956883 (= res!2115080 (isEmpty!30771 (_1!34214 (findLongestMatchInner!1834 (regex!8324 (h!63684 rulesArg!259)) Nil!57235 (size!37949 Nil!57235) lt!2045974 lt!2045974 (size!37949 lt!2045974)))))))

(declare-fun e!3097622 () Bool)

(assert (=> b!4956883 (=> res!2115080 e!3097622)))

(assert (=> b!4956883 e!3097622))

(declare-fun lt!2045982 () Unit!148129)

(assert (=> b!4956883 (= lt!2045982 lt!2045976)))

(declare-fun lt!2045977 () Unit!148129)

(declare-fun lemmaInv!1313 (TokenValueInjection!16576) Unit!148129)

(assert (=> b!4956883 (= lt!2045977 (lemmaInv!1313 (transformation!8324 (h!63684 rulesArg!259))))))

(declare-fun lt!2045978 () Unit!148129)

(declare-fun ForallOf!1206 (Int BalanceConc!29582) Unit!148129)

(assert (=> b!4956883 (= lt!2045978 (ForallOf!1206 lambda!247116 (_1!34213 lt!2045975)))))

(declare-fun lt!2045980 () Unit!148129)

(assert (=> b!4956883 (= lt!2045980 (ForallOf!1206 lambda!247116 (seqFromList!6011 (list!18265 (_1!34213 lt!2045975)))))))

(declare-fun lt!2045973 () Option!14318)

(assert (=> b!4956883 (= lt!2045973 (Some!14317 (tuple2!61815 (Token!15149 (apply!13879 (transformation!8324 (h!63684 rulesArg!259)) (_1!34213 lt!2045975)) (h!63684 rulesArg!259) (size!37950 (_1!34213 lt!2045975)) (list!18265 (_1!34213 lt!2045975))) (_2!34213 lt!2045975))))))

(declare-fun lt!2045979 () Unit!148129)

(declare-fun lemmaEqSameImage!1147 (TokenValueInjection!16576 BalanceConc!29582 BalanceConc!29582) Unit!148129)

(assert (=> b!4956883 (= lt!2045979 (lemmaEqSameImage!1147 (transformation!8324 (h!63684 rulesArg!259)) (_1!34213 lt!2045975) (seqFromList!6011 (list!18265 (_1!34213 lt!2045975)))))))

(declare-fun b!4956884 () Bool)

(declare-fun e!3097621 () Bool)

(assert (=> b!4956884 (= e!3097621 e!3097620)))

(declare-fun res!2115079 () Bool)

(assert (=> b!4956884 (=> res!2115079 e!3097620)))

(assert (=> b!4956884 (= res!2115079 (not (isDefined!11245 lt!2045981)))))

(declare-fun d!1595689 () Bool)

(assert (=> d!1595689 e!3097621))

(declare-fun res!2115078 () Bool)

(assert (=> d!1595689 (=> (not res!2115078) (not e!3097621))))

(assert (=> d!1595689 (= res!2115078 (= (isDefined!11245 lt!2045981) (isDefined!11244 (maxPrefixOneRule!3604 thiss!15247 (h!63684 rulesArg!259) (list!18265 input!1342)))))))

(assert (=> d!1595689 (= lt!2045981 e!3097624)))

(declare-fun c!846211 () Bool)

(declare-fun isEmpty!30772 (BalanceConc!29582) Bool)

(assert (=> d!1595689 (= c!846211 (isEmpty!30772 (_1!34213 lt!2045975)))))

(declare-fun findLongestMatchWithZipperSequenceV2!143 (Regex!13557 BalanceConc!29582 BalanceConc!29582) tuple2!61820)

(assert (=> d!1595689 (= lt!2045975 (findLongestMatchWithZipperSequenceV2!143 (regex!8324 (h!63684 rulesArg!259)) input!1342 totalInput!464))))

(assert (=> d!1595689 (ruleValid!3776 thiss!15247 (h!63684 rulesArg!259))))

(assert (=> d!1595689 (= (maxPrefixOneRuleZipperSequenceV2!308 thiss!15247 (h!63684 rulesArg!259) input!1342 totalInput!464) lt!2045981)))

(declare-fun b!4956885 () Bool)

(assert (=> b!4956885 (= e!3097623 (= (list!18265 (_2!34210 (get!19804 lt!2045981))) (_2!34209 (get!19803 (maxPrefixOneRule!3604 thiss!15247 (h!63684 rulesArg!259) (list!18265 input!1342))))))))

(declare-fun b!4956886 () Bool)

(assert (=> b!4956886 (= e!3097622 (matchR!6611 (regex!8324 (h!63684 rulesArg!259)) (_1!34214 (findLongestMatchInner!1834 (regex!8324 (h!63684 rulesArg!259)) Nil!57235 (size!37949 Nil!57235) lt!2045974 lt!2045974 (size!37949 lt!2045974)))))))

(assert (= (and d!1595689 c!846211) b!4956881))

(assert (= (and d!1595689 (not c!846211)) b!4956883))

(assert (= (and b!4956883 (not res!2115080)) b!4956886))

(assert (= (and d!1595689 res!2115078) b!4956884))

(assert (= (and b!4956884 (not res!2115079)) b!4956882))

(assert (= (and b!4956882 res!2115081) b!4956885))

(declare-fun m!5981480 () Bool)

(assert (=> b!4956885 m!5981480))

(assert (=> b!4956885 m!5981216))

(declare-fun m!5981482 () Bool)

(assert (=> b!4956885 m!5981482))

(declare-fun m!5981484 () Bool)

(assert (=> b!4956885 m!5981484))

(assert (=> b!4956885 m!5981482))

(declare-fun m!5981486 () Bool)

(assert (=> b!4956885 m!5981486))

(assert (=> b!4956885 m!5981216))

(assert (=> b!4956882 m!5981480))

(assert (=> b!4956882 m!5981216))

(assert (=> b!4956882 m!5981216))

(assert (=> b!4956882 m!5981482))

(assert (=> b!4956882 m!5981482))

(assert (=> b!4956882 m!5981486))

(declare-fun m!5981488 () Bool)

(assert (=> d!1595689 m!5981488))

(assert (=> d!1595689 m!5981216))

(assert (=> d!1595689 m!5981482))

(assert (=> d!1595689 m!5981482))

(declare-fun m!5981490 () Bool)

(assert (=> d!1595689 m!5981490))

(declare-fun m!5981492 () Bool)

(assert (=> d!1595689 m!5981492))

(declare-fun m!5981494 () Bool)

(assert (=> d!1595689 m!5981494))

(assert (=> d!1595689 m!5981310))

(assert (=> d!1595689 m!5981216))

(declare-fun m!5981496 () Bool)

(assert (=> b!4956883 m!5981496))

(declare-fun m!5981498 () Bool)

(assert (=> b!4956883 m!5981498))

(declare-fun m!5981500 () Bool)

(assert (=> b!4956883 m!5981500))

(declare-fun m!5981502 () Bool)

(assert (=> b!4956883 m!5981502))

(assert (=> b!4956883 m!5981496))

(declare-fun m!5981504 () Bool)

(assert (=> b!4956883 m!5981504))

(declare-fun m!5981506 () Bool)

(assert (=> b!4956883 m!5981506))

(declare-fun m!5981508 () Bool)

(assert (=> b!4956883 m!5981508))

(declare-fun m!5981510 () Bool)

(assert (=> b!4956883 m!5981510))

(assert (=> b!4956883 m!5981510))

(assert (=> b!4956883 m!5981504))

(declare-fun m!5981512 () Bool)

(assert (=> b!4956883 m!5981512))

(assert (=> b!4956883 m!5981504))

(declare-fun m!5981514 () Bool)

(assert (=> b!4956883 m!5981514))

(declare-fun m!5981516 () Bool)

(assert (=> b!4956883 m!5981516))

(declare-fun m!5981518 () Bool)

(assert (=> b!4956883 m!5981518))

(assert (=> b!4956883 m!5981216))

(declare-fun m!5981520 () Bool)

(assert (=> b!4956883 m!5981520))

(assert (=> b!4956883 m!5981498))

(assert (=> b!4956886 m!5981496))

(assert (=> b!4956886 m!5981498))

(assert (=> b!4956886 m!5981496))

(assert (=> b!4956886 m!5981498))

(assert (=> b!4956886 m!5981500))

(declare-fun m!5981522 () Bool)

(assert (=> b!4956886 m!5981522))

(assert (=> b!4956884 m!5981488))

(assert (=> b!4956610 d!1595689))

(declare-fun d!1595691 () Bool)

(assert (=> d!1595691 (= (isEmpty!30764 rulesArg!259) ((_ is Nil!57236) rulesArg!259))))

(assert (=> b!4956601 d!1595691))

(declare-fun d!1595693 () Bool)

(declare-fun c!846212 () Bool)

(assert (=> d!1595693 (= c!846212 ((_ is Node!15076) (c!846180 totalInput!464)))))

(declare-fun e!3097631 () Bool)

(assert (=> d!1595693 (= (inv!74673 (c!846180 totalInput!464)) e!3097631)))

(declare-fun b!4956895 () Bool)

(assert (=> b!4956895 (= e!3097631 (inv!74676 (c!846180 totalInput!464)))))

(declare-fun b!4956896 () Bool)

(declare-fun e!3097632 () Bool)

(assert (=> b!4956896 (= e!3097631 e!3097632)))

(declare-fun res!2115082 () Bool)

(assert (=> b!4956896 (= res!2115082 (not ((_ is Leaf!25063) (c!846180 totalInput!464))))))

(assert (=> b!4956896 (=> res!2115082 e!3097632)))

(declare-fun b!4956897 () Bool)

(assert (=> b!4956897 (= e!3097632 (inv!74677 (c!846180 totalInput!464)))))

(assert (= (and d!1595693 c!846212) b!4956895))

(assert (= (and d!1595693 (not c!846212)) b!4956896))

(assert (= (and b!4956896 (not res!2115082)) b!4956897))

(declare-fun m!5981524 () Bool)

(assert (=> b!4956895 m!5981524))

(declare-fun m!5981526 () Bool)

(assert (=> b!4956897 m!5981526))

(assert (=> b!4956612 d!1595693))

(declare-fun tp!1390104 () Bool)

(declare-fun e!3097638 () Bool)

(declare-fun tp!1390102 () Bool)

(declare-fun b!4956906 () Bool)

(assert (=> b!4956906 (= e!3097638 (and (inv!74673 (left!41740 (c!846180 input!1342))) tp!1390104 (inv!74673 (right!42070 (c!846180 input!1342))) tp!1390102))))

(declare-fun b!4956908 () Bool)

(declare-fun e!3097637 () Bool)

(declare-fun tp!1390103 () Bool)

(assert (=> b!4956908 (= e!3097637 tp!1390103)))

(declare-fun b!4956907 () Bool)

(declare-fun inv!74679 (IArray!30213) Bool)

(assert (=> b!4956907 (= e!3097638 (and (inv!74679 (xs!18402 (c!846180 input!1342))) e!3097637))))

(assert (=> b!4956609 (= tp!1390052 (and (inv!74673 (c!846180 input!1342)) e!3097638))))

(assert (= (and b!4956609 ((_ is Node!15076) (c!846180 input!1342))) b!4956906))

(assert (= b!4956907 b!4956908))

(assert (= (and b!4956609 ((_ is Leaf!25063) (c!846180 input!1342))) b!4956907))

(declare-fun m!5981528 () Bool)

(assert (=> b!4956906 m!5981528))

(declare-fun m!5981530 () Bool)

(assert (=> b!4956906 m!5981530))

(declare-fun m!5981532 () Bool)

(assert (=> b!4956907 m!5981532))

(assert (=> b!4956609 m!5981218))

(declare-fun b!4956920 () Bool)

(declare-fun e!3097641 () Bool)

(declare-fun tp!1390118 () Bool)

(declare-fun tp!1390119 () Bool)

(assert (=> b!4956920 (= e!3097641 (and tp!1390118 tp!1390119))))

(declare-fun b!4956919 () Bool)

(declare-fun tp_is_empty!36279 () Bool)

(assert (=> b!4956919 (= e!3097641 tp_is_empty!36279)))

(assert (=> b!4956605 (= tp!1390054 e!3097641)))

(declare-fun b!4956921 () Bool)

(declare-fun tp!1390115 () Bool)

(assert (=> b!4956921 (= e!3097641 tp!1390115)))

(declare-fun b!4956922 () Bool)

(declare-fun tp!1390116 () Bool)

(declare-fun tp!1390117 () Bool)

(assert (=> b!4956922 (= e!3097641 (and tp!1390116 tp!1390117))))

(assert (= (and b!4956605 ((_ is ElementMatch!13557) (regex!8324 (h!63684 rulesArg!259)))) b!4956919))

(assert (= (and b!4956605 ((_ is Concat!22192) (regex!8324 (h!63684 rulesArg!259)))) b!4956920))

(assert (= (and b!4956605 ((_ is Star!13557) (regex!8324 (h!63684 rulesArg!259)))) b!4956921))

(assert (= (and b!4956605 ((_ is Union!13557) (regex!8324 (h!63684 rulesArg!259)))) b!4956922))

(declare-fun b!4956933 () Bool)

(declare-fun b_free!132319 () Bool)

(declare-fun b_next!133109 () Bool)

(assert (=> b!4956933 (= b_free!132319 (not b_next!133109))))

(declare-fun tp!1390130 () Bool)

(declare-fun b_and!347171 () Bool)

(assert (=> b!4956933 (= tp!1390130 b_and!347171)))

(declare-fun b_free!132321 () Bool)

(declare-fun b_next!133111 () Bool)

(assert (=> b!4956933 (= b_free!132321 (not b_next!133111))))

(declare-fun tp!1390131 () Bool)

(declare-fun b_and!347173 () Bool)

(assert (=> b!4956933 (= tp!1390131 b_and!347173)))

(declare-fun e!3097650 () Bool)

(assert (=> b!4956933 (= e!3097650 (and tp!1390130 tp!1390131))))

(declare-fun e!3097651 () Bool)

(declare-fun tp!1390129 () Bool)

(declare-fun b!4956932 () Bool)

(assert (=> b!4956932 (= e!3097651 (and tp!1390129 (inv!74667 (tag!9188 (h!63684 (t!367926 rulesArg!259)))) (inv!74672 (transformation!8324 (h!63684 (t!367926 rulesArg!259)))) e!3097650))))

(declare-fun b!4956931 () Bool)

(declare-fun e!3097653 () Bool)

(declare-fun tp!1390128 () Bool)

(assert (=> b!4956931 (= e!3097653 (and e!3097651 tp!1390128))))

(assert (=> b!4956611 (= tp!1390055 e!3097653)))

(assert (= b!4956932 b!4956933))

(assert (= b!4956931 b!4956932))

(assert (= (and b!4956611 ((_ is Cons!57236) (t!367926 rulesArg!259))) b!4956931))

(declare-fun m!5981534 () Bool)

(assert (=> b!4956932 m!5981534))

(declare-fun m!5981536 () Bool)

(assert (=> b!4956932 m!5981536))

(declare-fun tp!1390134 () Bool)

(declare-fun tp!1390132 () Bool)

(declare-fun b!4956934 () Bool)

(declare-fun e!3097655 () Bool)

(assert (=> b!4956934 (= e!3097655 (and (inv!74673 (left!41740 (c!846180 totalInput!464))) tp!1390134 (inv!74673 (right!42070 (c!846180 totalInput!464))) tp!1390132))))

(declare-fun b!4956936 () Bool)

(declare-fun e!3097654 () Bool)

(declare-fun tp!1390133 () Bool)

(assert (=> b!4956936 (= e!3097654 tp!1390133)))

(declare-fun b!4956935 () Bool)

(assert (=> b!4956935 (= e!3097655 (and (inv!74679 (xs!18402 (c!846180 totalInput!464))) e!3097654))))

(assert (=> b!4956612 (= tp!1390056 (and (inv!74673 (c!846180 totalInput!464)) e!3097655))))

(assert (= (and b!4956612 ((_ is Node!15076) (c!846180 totalInput!464))) b!4956934))

(assert (= b!4956935 b!4956936))

(assert (= (and b!4956612 ((_ is Leaf!25063) (c!846180 totalInput!464))) b!4956935))

(declare-fun m!5981538 () Bool)

(assert (=> b!4956934 m!5981538))

(declare-fun m!5981540 () Bool)

(assert (=> b!4956934 m!5981540))

(declare-fun m!5981542 () Bool)

(assert (=> b!4956935 m!5981542))

(assert (=> b!4956612 m!5981204))

(check-sat (not b!4956907) (not b!4956861) b_and!347173 (not b!4956645) (not b!4956743) tp_is_empty!36279 (not b!4956612) (not d!1595663) (not d!1595689) (not b!4956885) (not b!4956920) (not b!4956935) (not d!1595643) (not b!4956862) (not b!4956745) (not b!4956884) (not b!4956749) (not b!4956931) (not d!1595641) (not b_next!133101) (not d!1595637) (not d!1595647) (not b!4956883) (not b!4956672) (not b!4956708) (not b!4956609) (not d!1595661) b_and!347171 (not d!1595659) (not b!4956868) (not b_next!133109) (not d!1595665) b_and!347165 (not b!4956936) (not b!4956908) (not d!1595649) (not b!4956932) (not b!4956661) (not d!1595645) (not b!4956921) (not b!4956746) (not bm!345884) (not b!4956748) (not b!4956656) (not b!4956897) (not b!4956750) (not b!4956865) (not b!4956742) (not d!1595673) (not b!4956658) b_and!347163 (not b!4956863) (not b!4956882) (not b_next!133111) (not d!1595657) (not b!4956866) (not bm!345887) (not b!4956895) (not b!4956744) (not bm!345896) (not d!1595625) (not b!4956764) (not b!4956864) (not d!1595621) (not b_next!133103) (not b!4956886) (not b!4956934) (not b!4956922) (not d!1595613) (not b!4956709) (not b!4956673) (not b!4956671) (not b!4956906))
(check-sat (not b_next!133101) b_and!347165 b_and!347173 b_and!347163 (not b_next!133111) (not b_next!133103) b_and!347171 (not b_next!133109))
