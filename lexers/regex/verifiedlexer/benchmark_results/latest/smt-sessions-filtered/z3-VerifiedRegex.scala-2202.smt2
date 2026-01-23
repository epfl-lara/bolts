; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108210 () Bool)

(assert start!108210)

(declare-fun b!1212339 () Bool)

(declare-fun b_free!28905 () Bool)

(declare-fun b_next!29609 () Bool)

(assert (=> b!1212339 (= b_free!28905 (not b_next!29609))))

(declare-fun tp!343609 () Bool)

(declare-fun b_and!82129 () Bool)

(assert (=> b!1212339 (= tp!343609 b_and!82129)))

(declare-fun b_free!28907 () Bool)

(declare-fun b_next!29611 () Bool)

(assert (=> b!1212339 (= b_free!28907 (not b_next!29611))))

(declare-fun tp!343604 () Bool)

(declare-fun b_and!82131 () Bool)

(assert (=> b!1212339 (= tp!343604 b_and!82131)))

(declare-fun b!1212335 () Bool)

(declare-fun b_free!28909 () Bool)

(declare-fun b_next!29613 () Bool)

(assert (=> b!1212335 (= b_free!28909 (not b_next!29613))))

(declare-fun tp!343606 () Bool)

(declare-fun b_and!82133 () Bool)

(assert (=> b!1212335 (= tp!343606 b_and!82133)))

(declare-fun b_free!28911 () Bool)

(declare-fun b_next!29615 () Bool)

(assert (=> b!1212335 (= b_free!28911 (not b_next!29615))))

(declare-fun tp!343612 () Bool)

(declare-fun b_and!82135 () Bool)

(assert (=> b!1212335 (= tp!343612 b_and!82135)))

(declare-datatypes ((List!12350 0))(
  ( (Nil!12292) (Cons!12292 (h!17693 (_ BitVec 16)) (t!112782 List!12350)) )
))
(declare-datatypes ((TokenValue!2177 0))(
  ( (FloatLiteralValue!4354 (text!15684 List!12350)) (TokenValueExt!2176 (__x!8069 Int)) (Broken!10885 (value!68677 List!12350)) (Object!2234) (End!2177) (Def!2177) (Underscore!2177) (Match!2177) (Else!2177) (Error!2177) (Case!2177) (If!2177) (Extends!2177) (Abstract!2177) (Class!2177) (Val!2177) (DelimiterValue!4354 (del!2237 List!12350)) (KeywordValue!2183 (value!68678 List!12350)) (CommentValue!4354 (value!68679 List!12350)) (WhitespaceValue!4354 (value!68680 List!12350)) (IndentationValue!2177 (value!68681 List!12350)) (String!15016) (Int32!2177) (Broken!10886 (value!68682 List!12350)) (Boolean!2178) (Unit!18621) (OperatorValue!2180 (op!2237 List!12350)) (IdentifierValue!4354 (value!68683 List!12350)) (IdentifierValue!4355 (value!68684 List!12350)) (WhitespaceValue!4355 (value!68685 List!12350)) (True!4354) (False!4354) (Broken!10887 (value!68686 List!12350)) (Broken!10888 (value!68687 List!12350)) (True!4355) (RightBrace!2177) (RightBracket!2177) (Colon!2177) (Null!2177) (Comma!2177) (LeftBracket!2177) (False!4355) (LeftBrace!2177) (ImaginaryLiteralValue!2177 (text!15685 List!12350)) (StringLiteralValue!6531 (value!68688 List!12350)) (EOFValue!2177 (value!68689 List!12350)) (IdentValue!2177 (value!68690 List!12350)) (DelimiterValue!4355 (value!68691 List!12350)) (DedentValue!2177 (value!68692 List!12350)) (NewLineValue!2177 (value!68693 List!12350)) (IntegerValue!6531 (value!68694 (_ BitVec 32)) (text!15686 List!12350)) (IntegerValue!6532 (value!68695 Int) (text!15687 List!12350)) (Times!2177) (Or!2177) (Equal!2177) (Minus!2177) (Broken!10889 (value!68696 List!12350)) (And!2177) (Div!2177) (LessEqual!2177) (Mod!2177) (Concat!5556) (Not!2177) (Plus!2177) (SpaceValue!2177 (value!68697 List!12350)) (IntegerValue!6533 (value!68698 Int) (text!15688 List!12350)) (StringLiteralValue!6532 (text!15689 List!12350)) (FloatLiteralValue!4355 (text!15690 List!12350)) (BytesLiteralValue!2177 (value!68699 List!12350)) (CommentValue!4355 (value!68700 List!12350)) (StringLiteralValue!6533 (value!68701 List!12350)) (ErrorTokenValue!2177 (msg!2238 List!12350)) )
))
(declare-datatypes ((C!7076 0))(
  ( (C!7077 (val!4068 Int)) )
))
(declare-datatypes ((List!12351 0))(
  ( (Nil!12293) (Cons!12293 (h!17694 C!7076) (t!112783 List!12351)) )
))
(declare-datatypes ((IArray!8073 0))(
  ( (IArray!8074 (innerList!4094 List!12351)) )
))
(declare-datatypes ((Conc!4034 0))(
  ( (Node!4034 (left!10664 Conc!4034) (right!10994 Conc!4034) (csize!8298 Int) (cheight!4245 Int)) (Leaf!6237 (xs!6745 IArray!8073) (csize!8299 Int)) (Empty!4034) )
))
(declare-datatypes ((Regex!3379 0))(
  ( (ElementMatch!3379 (c!202990 C!7076)) (Concat!5557 (regOne!7270 Regex!3379) (regTwo!7270 Regex!3379)) (EmptyExpr!3379) (Star!3379 (reg!3708 Regex!3379)) (EmptyLang!3379) (Union!3379 (regOne!7271 Regex!3379) (regTwo!7271 Regex!3379)) )
))
(declare-datatypes ((String!15017 0))(
  ( (String!15018 (value!68702 String)) )
))
(declare-datatypes ((BalanceConc!8000 0))(
  ( (BalanceConc!8001 (c!202991 Conc!4034)) )
))
(declare-datatypes ((TokenValueInjection!4050 0))(
  ( (TokenValueInjection!4051 (toValue!3230 Int) (toChars!3089 Int)) )
))
(declare-datatypes ((Rule!4018 0))(
  ( (Rule!4019 (regex!2109 Regex!3379) (tag!2371 String!15017) (isSeparator!2109 Bool) (transformation!2109 TokenValueInjection!4050)) )
))
(declare-datatypes ((List!12352 0))(
  ( (Nil!12294) (Cons!12294 (h!17695 Rule!4018) (t!112784 List!12352)) )
))
(declare-fun rules!2728 () List!12352)

(declare-fun b!1212328 () Bool)

(declare-fun e!777863 () Bool)

(declare-fun e!777867 () Bool)

(declare-fun tp!343607 () Bool)

(declare-fun inv!16478 (String!15017) Bool)

(declare-fun inv!16481 (TokenValueInjection!4050) Bool)

(assert (=> b!1212328 (= e!777863 (and tp!343607 (inv!16478 (tag!2371 (h!17695 rules!2728))) (inv!16481 (transformation!2109 (h!17695 rules!2728))) e!777867))))

(declare-datatypes ((Token!3880 0))(
  ( (Token!3881 (value!68703 TokenValue!2177) (rule!3530 Rule!4018) (size!9769 Int) (originalCharacters!2663 List!12351)) )
))
(declare-datatypes ((List!12353 0))(
  ( (Nil!12295) (Cons!12295 (h!17696 Token!3880) (t!112785 List!12353)) )
))
(declare-fun tokens!556 () List!12353)

(declare-fun b!1212329 () Bool)

(declare-fun tp!343605 () Bool)

(declare-fun e!777857 () Bool)

(declare-fun e!777860 () Bool)

(assert (=> b!1212329 (= e!777857 (and tp!343605 (inv!16478 (tag!2371 (rule!3530 (h!17696 tokens!556)))) (inv!16481 (transformation!2109 (rule!3530 (h!17696 tokens!556)))) e!777860))))

(declare-fun b!1212330 () Bool)

(declare-fun res!545192 () Bool)

(declare-fun e!777868 () Bool)

(assert (=> b!1212330 (=> (not res!545192) (not e!777868))))

(get-info :version)

(assert (=> b!1212330 (= res!545192 (not ((_ is Nil!12295) tokens!556)))))

(declare-fun b!1212331 () Bool)

(declare-datatypes ((LexerInterface!1804 0))(
  ( (LexerInterfaceExt!1801 (__x!8070 Int)) (Lexer!1802) )
))
(declare-fun thiss!20528 () LexerInterface!1804)

(declare-fun rulesValidInductive!657 (LexerInterface!1804 List!12352) Bool)

(assert (=> b!1212331 (= e!777868 (not (rulesValidInductive!657 thiss!20528 rules!2728)))))

(declare-fun tp!343608 () Bool)

(declare-fun e!777861 () Bool)

(declare-fun b!1212332 () Bool)

(declare-fun e!777864 () Bool)

(declare-fun inv!16482 (Token!3880) Bool)

(assert (=> b!1212332 (= e!777861 (and (inv!16482 (h!17696 tokens!556)) e!777864 tp!343608))))

(declare-fun b!1212333 () Bool)

(declare-fun res!545191 () Bool)

(assert (=> b!1212333 (=> (not res!545191) (not e!777868))))

(declare-fun isEmpty!7323 (List!12352) Bool)

(assert (=> b!1212333 (= res!545191 (not (isEmpty!7323 rules!2728)))))

(declare-fun b!1212334 () Bool)

(declare-fun e!777859 () Bool)

(declare-fun tp!343613 () Bool)

(assert (=> b!1212334 (= e!777859 (and e!777863 tp!343613))))

(assert (=> b!1212335 (= e!777867 (and tp!343606 tp!343612))))

(declare-fun tp!343610 () Bool)

(declare-fun b!1212336 () Bool)

(declare-fun inv!21 (TokenValue!2177) Bool)

(assert (=> b!1212336 (= e!777864 (and (inv!21 (value!68703 (h!17696 tokens!556))) e!777857 tp!343610))))

(declare-fun b!1212338 () Bool)

(declare-fun e!777865 () Bool)

(declare-fun tp_is_empty!6279 () Bool)

(declare-fun tp!343611 () Bool)

(assert (=> b!1212338 (= e!777865 (and tp_is_empty!6279 tp!343611))))

(assert (=> b!1212339 (= e!777860 (and tp!343609 tp!343604))))

(declare-fun b!1212340 () Bool)

(declare-fun res!545189 () Bool)

(assert (=> b!1212340 (=> (not res!545189) (not e!777868))))

(declare-fun input!2346 () List!12351)

(declare-datatypes ((tuple2!12164 0))(
  ( (tuple2!12165 (_1!6929 Token!3880) (_2!6929 List!12351)) )
))
(declare-datatypes ((Option!2471 0))(
  ( (None!2470) (Some!2470 (v!20597 tuple2!12164)) )
))
(declare-fun isDefined!2109 (Option!2471) Bool)

(declare-fun maxPrefix!926 (LexerInterface!1804 List!12352 List!12351) Option!2471)

(assert (=> b!1212340 (= res!545189 (isDefined!2109 (maxPrefix!926 thiss!20528 rules!2728 input!2346)))))

(declare-fun b!1212341 () Bool)

(declare-fun res!545187 () Bool)

(assert (=> b!1212341 (=> (not res!545187) (not e!777868))))

(declare-datatypes ((tuple2!12166 0))(
  ( (tuple2!12167 (_1!6930 List!12353) (_2!6930 List!12351)) )
))
(declare-fun lexList!434 (LexerInterface!1804 List!12352 List!12351) tuple2!12166)

(assert (=> b!1212341 (= res!545187 (= (_1!6930 (lexList!434 thiss!20528 rules!2728 input!2346)) tokens!556))))

(declare-fun res!545188 () Bool)

(assert (=> start!108210 (=> (not res!545188) (not e!777868))))

(assert (=> start!108210 (= res!545188 ((_ is Lexer!1802) thiss!20528))))

(assert (=> start!108210 e!777868))

(assert (=> start!108210 true))

(assert (=> start!108210 e!777859))

(assert (=> start!108210 e!777865))

(assert (=> start!108210 e!777861))

(declare-fun b!1212337 () Bool)

(declare-fun res!545190 () Bool)

(assert (=> b!1212337 (=> (not res!545190) (not e!777868))))

(declare-fun rulesInvariant!1678 (LexerInterface!1804 List!12352) Bool)

(assert (=> b!1212337 (= res!545190 (rulesInvariant!1678 thiss!20528 rules!2728))))

(assert (= (and start!108210 res!545188) b!1212333))

(assert (= (and b!1212333 res!545191) b!1212337))

(assert (= (and b!1212337 res!545190) b!1212341))

(assert (= (and b!1212341 res!545187) b!1212330))

(assert (= (and b!1212330 res!545192) b!1212340))

(assert (= (and b!1212340 res!545189) b!1212331))

(assert (= b!1212328 b!1212335))

(assert (= b!1212334 b!1212328))

(assert (= (and start!108210 ((_ is Cons!12294) rules!2728)) b!1212334))

(assert (= (and start!108210 ((_ is Cons!12293) input!2346)) b!1212338))

(assert (= b!1212329 b!1212339))

(assert (= b!1212336 b!1212329))

(assert (= b!1212332 b!1212336))

(assert (= (and start!108210 ((_ is Cons!12295) tokens!556)) b!1212332))

(declare-fun m!1387639 () Bool)

(assert (=> b!1212341 m!1387639))

(declare-fun m!1387641 () Bool)

(assert (=> b!1212331 m!1387641))

(declare-fun m!1387643 () Bool)

(assert (=> b!1212337 m!1387643))

(declare-fun m!1387645 () Bool)

(assert (=> b!1212336 m!1387645))

(declare-fun m!1387647 () Bool)

(assert (=> b!1212328 m!1387647))

(declare-fun m!1387649 () Bool)

(assert (=> b!1212328 m!1387649))

(declare-fun m!1387651 () Bool)

(assert (=> b!1212333 m!1387651))

(declare-fun m!1387653 () Bool)

(assert (=> b!1212340 m!1387653))

(assert (=> b!1212340 m!1387653))

(declare-fun m!1387655 () Bool)

(assert (=> b!1212340 m!1387655))

(declare-fun m!1387657 () Bool)

(assert (=> b!1212332 m!1387657))

(declare-fun m!1387659 () Bool)

(assert (=> b!1212329 m!1387659))

(declare-fun m!1387661 () Bool)

(assert (=> b!1212329 m!1387661))

(check-sat (not b_next!29611) tp_is_empty!6279 b_and!82131 b_and!82129 (not b!1212341) (not b!1212328) (not b!1212331) b_and!82133 (not b_next!29615) b_and!82135 (not b!1212336) (not b_next!29613) (not b!1212332) (not b!1212340) (not b!1212329) (not b!1212337) (not b!1212333) (not b!1212334) (not b!1212338) (not b_next!29609))
(check-sat (not b_next!29611) b_and!82131 b_and!82129 (not b_next!29609) b_and!82133 (not b_next!29615) b_and!82135 (not b_next!29613))
(get-model)

(declare-fun d!346705 () Bool)

(declare-fun res!545199 () Bool)

(declare-fun e!777871 () Bool)

(assert (=> d!346705 (=> (not res!545199) (not e!777871))))

(declare-fun rulesValid!755 (LexerInterface!1804 List!12352) Bool)

(assert (=> d!346705 (= res!545199 (rulesValid!755 thiss!20528 rules!2728))))

(assert (=> d!346705 (= (rulesInvariant!1678 thiss!20528 rules!2728) e!777871)))

(declare-fun b!1212344 () Bool)

(declare-datatypes ((List!12354 0))(
  ( (Nil!12296) (Cons!12296 (h!17697 String!15017) (t!112794 List!12354)) )
))
(declare-fun noDuplicateTag!755 (LexerInterface!1804 List!12352 List!12354) Bool)

(assert (=> b!1212344 (= e!777871 (noDuplicateTag!755 thiss!20528 rules!2728 Nil!12296))))

(assert (= (and d!346705 res!545199) b!1212344))

(declare-fun m!1387663 () Bool)

(assert (=> d!346705 m!1387663))

(declare-fun m!1387665 () Bool)

(assert (=> b!1212344 m!1387665))

(assert (=> b!1212337 d!346705))

(declare-fun d!346707 () Bool)

(declare-fun res!545204 () Bool)

(declare-fun e!777874 () Bool)

(assert (=> d!346707 (=> (not res!545204) (not e!777874))))

(declare-fun isEmpty!7324 (List!12351) Bool)

(assert (=> d!346707 (= res!545204 (not (isEmpty!7324 (originalCharacters!2663 (h!17696 tokens!556)))))))

(assert (=> d!346707 (= (inv!16482 (h!17696 tokens!556)) e!777874)))

(declare-fun b!1212349 () Bool)

(declare-fun res!545205 () Bool)

(assert (=> b!1212349 (=> (not res!545205) (not e!777874))))

(declare-fun list!4544 (BalanceConc!8000) List!12351)

(declare-fun dynLambda!5393 (Int TokenValue!2177) BalanceConc!8000)

(assert (=> b!1212349 (= res!545205 (= (originalCharacters!2663 (h!17696 tokens!556)) (list!4544 (dynLambda!5393 (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556)))) (value!68703 (h!17696 tokens!556))))))))

(declare-fun b!1212350 () Bool)

(declare-fun size!9770 (List!12351) Int)

(assert (=> b!1212350 (= e!777874 (= (size!9769 (h!17696 tokens!556)) (size!9770 (originalCharacters!2663 (h!17696 tokens!556)))))))

(assert (= (and d!346707 res!545204) b!1212349))

(assert (= (and b!1212349 res!545205) b!1212350))

(declare-fun b_lambda!35767 () Bool)

(assert (=> (not b_lambda!35767) (not b!1212349)))

(declare-fun t!112787 () Bool)

(declare-fun tb!66521 () Bool)

(assert (=> (and b!1212339 (= (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556)))) (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556))))) t!112787) tb!66521))

(declare-fun b!1212355 () Bool)

(declare-fun e!777877 () Bool)

(declare-fun tp!343616 () Bool)

(declare-fun inv!16483 (Conc!4034) Bool)

(assert (=> b!1212355 (= e!777877 (and (inv!16483 (c!202991 (dynLambda!5393 (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556)))) (value!68703 (h!17696 tokens!556))))) tp!343616))))

(declare-fun result!80444 () Bool)

(declare-fun inv!16484 (BalanceConc!8000) Bool)

(assert (=> tb!66521 (= result!80444 (and (inv!16484 (dynLambda!5393 (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556)))) (value!68703 (h!17696 tokens!556)))) e!777877))))

(assert (= tb!66521 b!1212355))

(declare-fun m!1387667 () Bool)

(assert (=> b!1212355 m!1387667))

(declare-fun m!1387669 () Bool)

(assert (=> tb!66521 m!1387669))

(assert (=> b!1212349 t!112787))

(declare-fun b_and!82137 () Bool)

(assert (= b_and!82131 (and (=> t!112787 result!80444) b_and!82137)))

(declare-fun tb!66523 () Bool)

(declare-fun t!112789 () Bool)

(assert (=> (and b!1212335 (= (toChars!3089 (transformation!2109 (h!17695 rules!2728))) (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556))))) t!112789) tb!66523))

(declare-fun result!80448 () Bool)

(assert (= result!80448 result!80444))

(assert (=> b!1212349 t!112789))

(declare-fun b_and!82139 () Bool)

(assert (= b_and!82135 (and (=> t!112789 result!80448) b_and!82139)))

(declare-fun m!1387671 () Bool)

(assert (=> d!346707 m!1387671))

(declare-fun m!1387673 () Bool)

(assert (=> b!1212349 m!1387673))

(assert (=> b!1212349 m!1387673))

(declare-fun m!1387675 () Bool)

(assert (=> b!1212349 m!1387675))

(declare-fun m!1387677 () Bool)

(assert (=> b!1212350 m!1387677))

(assert (=> b!1212332 d!346707))

(declare-fun b!1212385 () Bool)

(declare-fun e!777899 () tuple2!12166)

(declare-fun lt!414715 () Option!2471)

(declare-fun lt!414716 () tuple2!12166)

(assert (=> b!1212385 (= e!777899 (tuple2!12167 (Cons!12295 (_1!6929 (v!20597 lt!414715)) (_1!6930 lt!414716)) (_2!6930 lt!414716)))))

(assert (=> b!1212385 (= lt!414716 (lexList!434 thiss!20528 rules!2728 (_2!6929 (v!20597 lt!414715))))))

(declare-fun b!1212386 () Bool)

(declare-fun e!777897 () Bool)

(declare-fun lt!414714 () tuple2!12166)

(declare-fun isEmpty!7325 (List!12353) Bool)

(assert (=> b!1212386 (= e!777897 (not (isEmpty!7325 (_1!6930 lt!414714))))))

(declare-fun d!346711 () Bool)

(declare-fun e!777898 () Bool)

(assert (=> d!346711 e!777898))

(declare-fun c!203003 () Bool)

(declare-fun size!9771 (List!12353) Int)

(assert (=> d!346711 (= c!203003 (> (size!9771 (_1!6930 lt!414714)) 0))))

(assert (=> d!346711 (= lt!414714 e!777899)))

(declare-fun c!203002 () Bool)

(assert (=> d!346711 (= c!203002 ((_ is Some!2470) lt!414715))))

(assert (=> d!346711 (= lt!414715 (maxPrefix!926 thiss!20528 rules!2728 input!2346))))

(assert (=> d!346711 (= (lexList!434 thiss!20528 rules!2728 input!2346) lt!414714)))

(declare-fun b!1212387 () Bool)

(assert (=> b!1212387 (= e!777899 (tuple2!12167 Nil!12295 input!2346))))

(declare-fun b!1212388 () Bool)

(assert (=> b!1212388 (= e!777898 (= (_2!6930 lt!414714) input!2346))))

(declare-fun b!1212389 () Bool)

(assert (=> b!1212389 (= e!777898 e!777897)))

(declare-fun res!545215 () Bool)

(assert (=> b!1212389 (= res!545215 (< (size!9770 (_2!6930 lt!414714)) (size!9770 input!2346)))))

(assert (=> b!1212389 (=> (not res!545215) (not e!777897))))

(assert (= (and d!346711 c!203002) b!1212385))

(assert (= (and d!346711 (not c!203002)) b!1212387))

(assert (= (and d!346711 c!203003) b!1212389))

(assert (= (and d!346711 (not c!203003)) b!1212388))

(assert (= (and b!1212389 res!545215) b!1212386))

(declare-fun m!1387685 () Bool)

(assert (=> b!1212385 m!1387685))

(declare-fun m!1387687 () Bool)

(assert (=> b!1212386 m!1387687))

(declare-fun m!1387689 () Bool)

(assert (=> d!346711 m!1387689))

(assert (=> d!346711 m!1387653))

(declare-fun m!1387691 () Bool)

(assert (=> b!1212389 m!1387691))

(declare-fun m!1387693 () Bool)

(assert (=> b!1212389 m!1387693))

(assert (=> b!1212341 d!346711))

(declare-fun b!1212400 () Bool)

(declare-fun e!777906 () Bool)

(declare-fun e!777907 () Bool)

(assert (=> b!1212400 (= e!777906 e!777907)))

(declare-fun c!203008 () Bool)

(assert (=> b!1212400 (= c!203008 ((_ is IntegerValue!6532) (value!68703 (h!17696 tokens!556))))))

(declare-fun b!1212401 () Bool)

(declare-fun e!777908 () Bool)

(declare-fun inv!15 (TokenValue!2177) Bool)

(assert (=> b!1212401 (= e!777908 (inv!15 (value!68703 (h!17696 tokens!556))))))

(declare-fun b!1212402 () Bool)

(declare-fun res!545218 () Bool)

(assert (=> b!1212402 (=> res!545218 e!777908)))

(assert (=> b!1212402 (= res!545218 (not ((_ is IntegerValue!6533) (value!68703 (h!17696 tokens!556)))))))

(assert (=> b!1212402 (= e!777907 e!777908)))

(declare-fun b!1212403 () Bool)

(declare-fun inv!17 (TokenValue!2177) Bool)

(assert (=> b!1212403 (= e!777907 (inv!17 (value!68703 (h!17696 tokens!556))))))

(declare-fun b!1212404 () Bool)

(declare-fun inv!16 (TokenValue!2177) Bool)

(assert (=> b!1212404 (= e!777906 (inv!16 (value!68703 (h!17696 tokens!556))))))

(declare-fun d!346715 () Bool)

(declare-fun c!203009 () Bool)

(assert (=> d!346715 (= c!203009 ((_ is IntegerValue!6531) (value!68703 (h!17696 tokens!556))))))

(assert (=> d!346715 (= (inv!21 (value!68703 (h!17696 tokens!556))) e!777906)))

(assert (= (and d!346715 c!203009) b!1212404))

(assert (= (and d!346715 (not c!203009)) b!1212400))

(assert (= (and b!1212400 c!203008) b!1212403))

(assert (= (and b!1212400 (not c!203008)) b!1212402))

(assert (= (and b!1212402 (not res!545218)) b!1212401))

(declare-fun m!1387695 () Bool)

(assert (=> b!1212401 m!1387695))

(declare-fun m!1387697 () Bool)

(assert (=> b!1212403 m!1387697))

(declare-fun m!1387699 () Bool)

(assert (=> b!1212404 m!1387699))

(assert (=> b!1212336 d!346715))

(declare-fun d!346717 () Bool)

(assert (=> d!346717 true))

(declare-fun lt!414719 () Bool)

(declare-fun lambda!49077 () Int)

(declare-fun forall!3170 (List!12352 Int) Bool)

(assert (=> d!346717 (= lt!414719 (forall!3170 rules!2728 lambda!49077))))

(declare-fun e!777914 () Bool)

(assert (=> d!346717 (= lt!414719 e!777914)))

(declare-fun res!545223 () Bool)

(assert (=> d!346717 (=> res!545223 e!777914)))

(assert (=> d!346717 (= res!545223 (not ((_ is Cons!12294) rules!2728)))))

(assert (=> d!346717 (= (rulesValidInductive!657 thiss!20528 rules!2728) lt!414719)))

(declare-fun b!1212409 () Bool)

(declare-fun e!777913 () Bool)

(assert (=> b!1212409 (= e!777914 e!777913)))

(declare-fun res!545224 () Bool)

(assert (=> b!1212409 (=> (not res!545224) (not e!777913))))

(declare-fun ruleValid!524 (LexerInterface!1804 Rule!4018) Bool)

(assert (=> b!1212409 (= res!545224 (ruleValid!524 thiss!20528 (h!17695 rules!2728)))))

(declare-fun b!1212410 () Bool)

(assert (=> b!1212410 (= e!777913 (rulesValidInductive!657 thiss!20528 (t!112784 rules!2728)))))

(assert (= (and d!346717 (not res!545223)) b!1212409))

(assert (= (and b!1212409 res!545224) b!1212410))

(declare-fun m!1387701 () Bool)

(assert (=> d!346717 m!1387701))

(declare-fun m!1387703 () Bool)

(assert (=> b!1212409 m!1387703))

(declare-fun m!1387705 () Bool)

(assert (=> b!1212410 m!1387705))

(assert (=> b!1212331 d!346717))

(declare-fun d!346719 () Bool)

(assert (=> d!346719 (= (inv!16478 (tag!2371 (rule!3530 (h!17696 tokens!556)))) (= (mod (str.len (value!68702 (tag!2371 (rule!3530 (h!17696 tokens!556))))) 2) 0))))

(assert (=> b!1212329 d!346719))

(declare-fun d!346721 () Bool)

(declare-fun res!545227 () Bool)

(declare-fun e!777917 () Bool)

(assert (=> d!346721 (=> (not res!545227) (not e!777917))))

(declare-fun semiInverseModEq!767 (Int Int) Bool)

(assert (=> d!346721 (= res!545227 (semiInverseModEq!767 (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556)))) (toValue!3230 (transformation!2109 (rule!3530 (h!17696 tokens!556))))))))

(assert (=> d!346721 (= (inv!16481 (transformation!2109 (rule!3530 (h!17696 tokens!556)))) e!777917)))

(declare-fun b!1212415 () Bool)

(declare-fun equivClasses!734 (Int Int) Bool)

(assert (=> b!1212415 (= e!777917 (equivClasses!734 (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556)))) (toValue!3230 (transformation!2109 (rule!3530 (h!17696 tokens!556))))))))

(assert (= (and d!346721 res!545227) b!1212415))

(declare-fun m!1387707 () Bool)

(assert (=> d!346721 m!1387707))

(declare-fun m!1387709 () Bool)

(assert (=> b!1212415 m!1387709))

(assert (=> b!1212329 d!346721))

(declare-fun d!346723 () Bool)

(declare-fun isEmpty!7326 (Option!2471) Bool)

(assert (=> d!346723 (= (isDefined!2109 (maxPrefix!926 thiss!20528 rules!2728 input!2346)) (not (isEmpty!7326 (maxPrefix!926 thiss!20528 rules!2728 input!2346))))))

(declare-fun bs!288685 () Bool)

(assert (= bs!288685 d!346723))

(assert (=> bs!288685 m!1387653))

(declare-fun m!1387711 () Bool)

(assert (=> bs!288685 m!1387711))

(assert (=> b!1212340 d!346723))

(declare-fun b!1212441 () Bool)

(declare-fun e!777931 () Bool)

(declare-fun e!777930 () Bool)

(assert (=> b!1212441 (= e!777931 e!777930)))

(declare-fun res!545253 () Bool)

(assert (=> b!1212441 (=> (not res!545253) (not e!777930))))

(declare-fun lt!414734 () Option!2471)

(assert (=> b!1212441 (= res!545253 (isDefined!2109 lt!414734))))

(declare-fun b!1212442 () Bool)

(declare-fun res!545248 () Bool)

(assert (=> b!1212442 (=> (not res!545248) (not e!777930))))

(declare-fun get!4044 (Option!2471) tuple2!12164)

(declare-fun apply!2640 (TokenValueInjection!4050 BalanceConc!8000) TokenValue!2177)

(declare-fun seqFromList!1541 (List!12351) BalanceConc!8000)

(assert (=> b!1212442 (= res!545248 (= (value!68703 (_1!6929 (get!4044 lt!414734))) (apply!2640 (transformation!2109 (rule!3530 (_1!6929 (get!4044 lt!414734)))) (seqFromList!1541 (originalCharacters!2663 (_1!6929 (get!4044 lt!414734)))))))))

(declare-fun b!1212443 () Bool)

(declare-fun contains!2067 (List!12352 Rule!4018) Bool)

(assert (=> b!1212443 (= e!777930 (contains!2067 rules!2728 (rule!3530 (_1!6929 (get!4044 lt!414734)))))))

(declare-fun b!1212444 () Bool)

(declare-fun res!545249 () Bool)

(assert (=> b!1212444 (=> (not res!545249) (not e!777930))))

(declare-fun ++!3148 (List!12351 List!12351) List!12351)

(declare-fun charsOf!1116 (Token!3880) BalanceConc!8000)

(assert (=> b!1212444 (= res!545249 (= (++!3148 (list!4544 (charsOf!1116 (_1!6929 (get!4044 lt!414734)))) (_2!6929 (get!4044 lt!414734))) input!2346))))

(declare-fun b!1212445 () Bool)

(declare-fun res!545252 () Bool)

(assert (=> b!1212445 (=> (not res!545252) (not e!777930))))

(assert (=> b!1212445 (= res!545252 (< (size!9770 (_2!6929 (get!4044 lt!414734))) (size!9770 input!2346)))))

(declare-fun call!84488 () Option!2471)

(declare-fun bm!84483 () Bool)

(declare-fun maxPrefixOneRule!541 (LexerInterface!1804 Rule!4018 List!12351) Option!2471)

(assert (=> bm!84483 (= call!84488 (maxPrefixOneRule!541 thiss!20528 (h!17695 rules!2728) input!2346))))

(declare-fun b!1212447 () Bool)

(declare-fun res!545250 () Bool)

(assert (=> b!1212447 (=> (not res!545250) (not e!777930))))

(assert (=> b!1212447 (= res!545250 (= (list!4544 (charsOf!1116 (_1!6929 (get!4044 lt!414734)))) (originalCharacters!2663 (_1!6929 (get!4044 lt!414734)))))))

(declare-fun b!1212448 () Bool)

(declare-fun e!777929 () Option!2471)

(assert (=> b!1212448 (= e!777929 call!84488)))

(declare-fun b!1212449 () Bool)

(declare-fun lt!414732 () Option!2471)

(declare-fun lt!414735 () Option!2471)

(assert (=> b!1212449 (= e!777929 (ite (and ((_ is None!2470) lt!414732) ((_ is None!2470) lt!414735)) None!2470 (ite ((_ is None!2470) lt!414735) lt!414732 (ite ((_ is None!2470) lt!414732) lt!414735 (ite (>= (size!9769 (_1!6929 (v!20597 lt!414732))) (size!9769 (_1!6929 (v!20597 lt!414735)))) lt!414732 lt!414735)))))))

(assert (=> b!1212449 (= lt!414732 call!84488)))

(assert (=> b!1212449 (= lt!414735 (maxPrefix!926 thiss!20528 (t!112784 rules!2728) input!2346))))

(declare-fun d!346725 () Bool)

(assert (=> d!346725 e!777931))

(declare-fun res!545247 () Bool)

(assert (=> d!346725 (=> res!545247 e!777931)))

(assert (=> d!346725 (= res!545247 (isEmpty!7326 lt!414734))))

(assert (=> d!346725 (= lt!414734 e!777929)))

(declare-fun c!203012 () Bool)

(assert (=> d!346725 (= c!203012 (and ((_ is Cons!12294) rules!2728) ((_ is Nil!12294) (t!112784 rules!2728))))))

(declare-datatypes ((Unit!18622 0))(
  ( (Unit!18623) )
))
(declare-fun lt!414731 () Unit!18622)

(declare-fun lt!414733 () Unit!18622)

(assert (=> d!346725 (= lt!414731 lt!414733)))

(declare-fun isPrefix!1022 (List!12351 List!12351) Bool)

(assert (=> d!346725 (isPrefix!1022 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!715 (List!12351 List!12351) Unit!18622)

(assert (=> d!346725 (= lt!414733 (lemmaIsPrefixRefl!715 input!2346 input!2346))))

(assert (=> d!346725 (rulesValidInductive!657 thiss!20528 rules!2728)))

(assert (=> d!346725 (= (maxPrefix!926 thiss!20528 rules!2728 input!2346) lt!414734)))

(declare-fun b!1212446 () Bool)

(declare-fun res!545251 () Bool)

(assert (=> b!1212446 (=> (not res!545251) (not e!777930))))

(declare-fun matchR!1502 (Regex!3379 List!12351) Bool)

(assert (=> b!1212446 (= res!545251 (matchR!1502 (regex!2109 (rule!3530 (_1!6929 (get!4044 lt!414734)))) (list!4544 (charsOf!1116 (_1!6929 (get!4044 lt!414734))))))))

(assert (= (and d!346725 c!203012) b!1212448))

(assert (= (and d!346725 (not c!203012)) b!1212449))

(assert (= (or b!1212448 b!1212449) bm!84483))

(assert (= (and d!346725 (not res!545247)) b!1212441))

(assert (= (and b!1212441 res!545253) b!1212447))

(assert (= (and b!1212447 res!545250) b!1212445))

(assert (= (and b!1212445 res!545252) b!1212444))

(assert (= (and b!1212444 res!545249) b!1212442))

(assert (= (and b!1212442 res!545248) b!1212446))

(assert (= (and b!1212446 res!545251) b!1212443))

(declare-fun m!1387725 () Bool)

(assert (=> b!1212441 m!1387725))

(declare-fun m!1387727 () Bool)

(assert (=> b!1212445 m!1387727))

(declare-fun m!1387729 () Bool)

(assert (=> b!1212445 m!1387729))

(assert (=> b!1212445 m!1387693))

(declare-fun m!1387731 () Bool)

(assert (=> d!346725 m!1387731))

(declare-fun m!1387733 () Bool)

(assert (=> d!346725 m!1387733))

(declare-fun m!1387735 () Bool)

(assert (=> d!346725 m!1387735))

(assert (=> d!346725 m!1387641))

(declare-fun m!1387737 () Bool)

(assert (=> bm!84483 m!1387737))

(declare-fun m!1387739 () Bool)

(assert (=> b!1212449 m!1387739))

(assert (=> b!1212443 m!1387727))

(declare-fun m!1387741 () Bool)

(assert (=> b!1212443 m!1387741))

(assert (=> b!1212447 m!1387727))

(declare-fun m!1387743 () Bool)

(assert (=> b!1212447 m!1387743))

(assert (=> b!1212447 m!1387743))

(declare-fun m!1387745 () Bool)

(assert (=> b!1212447 m!1387745))

(assert (=> b!1212446 m!1387727))

(assert (=> b!1212446 m!1387743))

(assert (=> b!1212446 m!1387743))

(assert (=> b!1212446 m!1387745))

(assert (=> b!1212446 m!1387745))

(declare-fun m!1387747 () Bool)

(assert (=> b!1212446 m!1387747))

(assert (=> b!1212442 m!1387727))

(declare-fun m!1387749 () Bool)

(assert (=> b!1212442 m!1387749))

(assert (=> b!1212442 m!1387749))

(declare-fun m!1387751 () Bool)

(assert (=> b!1212442 m!1387751))

(assert (=> b!1212444 m!1387727))

(assert (=> b!1212444 m!1387743))

(assert (=> b!1212444 m!1387743))

(assert (=> b!1212444 m!1387745))

(assert (=> b!1212444 m!1387745))

(declare-fun m!1387753 () Bool)

(assert (=> b!1212444 m!1387753))

(assert (=> b!1212340 d!346725))

(declare-fun d!346735 () Bool)

(assert (=> d!346735 (= (isEmpty!7323 rules!2728) ((_ is Nil!12294) rules!2728))))

(assert (=> b!1212333 d!346735))

(declare-fun d!346737 () Bool)

(assert (=> d!346737 (= (inv!16478 (tag!2371 (h!17695 rules!2728))) (= (mod (str.len (value!68702 (tag!2371 (h!17695 rules!2728)))) 2) 0))))

(assert (=> b!1212328 d!346737))

(declare-fun d!346739 () Bool)

(declare-fun res!545254 () Bool)

(declare-fun e!777932 () Bool)

(assert (=> d!346739 (=> (not res!545254) (not e!777932))))

(assert (=> d!346739 (= res!545254 (semiInverseModEq!767 (toChars!3089 (transformation!2109 (h!17695 rules!2728))) (toValue!3230 (transformation!2109 (h!17695 rules!2728)))))))

(assert (=> d!346739 (= (inv!16481 (transformation!2109 (h!17695 rules!2728))) e!777932)))

(declare-fun b!1212450 () Bool)

(assert (=> b!1212450 (= e!777932 (equivClasses!734 (toChars!3089 (transformation!2109 (h!17695 rules!2728))) (toValue!3230 (transformation!2109 (h!17695 rules!2728)))))))

(assert (= (and d!346739 res!545254) b!1212450))

(declare-fun m!1387755 () Bool)

(assert (=> d!346739 m!1387755))

(declare-fun m!1387757 () Bool)

(assert (=> b!1212450 m!1387757))

(assert (=> b!1212328 d!346739))

(declare-fun b!1212464 () Bool)

(declare-fun b_free!28913 () Bool)

(declare-fun b_next!29617 () Bool)

(assert (=> b!1212464 (= b_free!28913 (not b_next!29617))))

(declare-fun tp!343631 () Bool)

(declare-fun b_and!82141 () Bool)

(assert (=> b!1212464 (= tp!343631 b_and!82141)))

(declare-fun b_free!28915 () Bool)

(declare-fun b_next!29619 () Bool)

(assert (=> b!1212464 (= b_free!28915 (not b_next!29619))))

(declare-fun t!112791 () Bool)

(declare-fun tb!66525 () Bool)

(assert (=> (and b!1212464 (= (toChars!3089 (transformation!2109 (rule!3530 (h!17696 (t!112785 tokens!556))))) (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556))))) t!112791) tb!66525))

(declare-fun result!80452 () Bool)

(assert (= result!80452 result!80444))

(assert (=> b!1212349 t!112791))

(declare-fun tp!343630 () Bool)

(declare-fun b_and!82143 () Bool)

(assert (=> b!1212464 (= tp!343630 (and (=> t!112791 result!80452) b_and!82143))))

(declare-fun e!777947 () Bool)

(assert (=> b!1212464 (= e!777947 (and tp!343631 tp!343630))))

(declare-fun tp!343629 () Bool)

(declare-fun e!777948 () Bool)

(declare-fun e!777946 () Bool)

(declare-fun b!1212462 () Bool)

(assert (=> b!1212462 (= e!777948 (and (inv!21 (value!68703 (h!17696 (t!112785 tokens!556)))) e!777946 tp!343629))))

(declare-fun e!777950 () Bool)

(declare-fun b!1212461 () Bool)

(declare-fun tp!343628 () Bool)

(assert (=> b!1212461 (= e!777950 (and (inv!16482 (h!17696 (t!112785 tokens!556))) e!777948 tp!343628))))

(declare-fun b!1212463 () Bool)

(declare-fun tp!343627 () Bool)

(assert (=> b!1212463 (= e!777946 (and tp!343627 (inv!16478 (tag!2371 (rule!3530 (h!17696 (t!112785 tokens!556))))) (inv!16481 (transformation!2109 (rule!3530 (h!17696 (t!112785 tokens!556))))) e!777947))))

(assert (=> b!1212332 (= tp!343608 e!777950)))

(assert (= b!1212463 b!1212464))

(assert (= b!1212462 b!1212463))

(assert (= b!1212461 b!1212462))

(assert (= (and b!1212332 ((_ is Cons!12295) (t!112785 tokens!556))) b!1212461))

(declare-fun m!1387759 () Bool)

(assert (=> b!1212462 m!1387759))

(declare-fun m!1387761 () Bool)

(assert (=> b!1212461 m!1387761))

(declare-fun m!1387763 () Bool)

(assert (=> b!1212463 m!1387763))

(declare-fun m!1387765 () Bool)

(assert (=> b!1212463 m!1387765))

(declare-fun b!1212469 () Bool)

(declare-fun e!777953 () Bool)

(declare-fun tp!343634 () Bool)

(assert (=> b!1212469 (= e!777953 (and tp_is_empty!6279 tp!343634))))

(assert (=> b!1212336 (= tp!343610 e!777953)))

(assert (= (and b!1212336 ((_ is Cons!12293) (originalCharacters!2663 (h!17696 tokens!556)))) b!1212469))

(declare-fun b!1212480 () Bool)

(declare-fun b_free!28917 () Bool)

(declare-fun b_next!29621 () Bool)

(assert (=> b!1212480 (= b_free!28917 (not b_next!29621))))

(declare-fun tp!343644 () Bool)

(declare-fun b_and!82145 () Bool)

(assert (=> b!1212480 (= tp!343644 b_and!82145)))

(declare-fun b_free!28919 () Bool)

(declare-fun b_next!29623 () Bool)

(assert (=> b!1212480 (= b_free!28919 (not b_next!29623))))

(declare-fun t!112793 () Bool)

(declare-fun tb!66527 () Bool)

(assert (=> (and b!1212480 (= (toChars!3089 (transformation!2109 (h!17695 (t!112784 rules!2728)))) (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556))))) t!112793) tb!66527))

(declare-fun result!80458 () Bool)

(assert (= result!80458 result!80444))

(assert (=> b!1212349 t!112793))

(declare-fun b_and!82147 () Bool)

(declare-fun tp!343646 () Bool)

(assert (=> b!1212480 (= tp!343646 (and (=> t!112793 result!80458) b_and!82147))))

(declare-fun e!777963 () Bool)

(assert (=> b!1212480 (= e!777963 (and tp!343644 tp!343646))))

(declare-fun tp!343645 () Bool)

(declare-fun b!1212479 () Bool)

(declare-fun e!777962 () Bool)

(assert (=> b!1212479 (= e!777962 (and tp!343645 (inv!16478 (tag!2371 (h!17695 (t!112784 rules!2728)))) (inv!16481 (transformation!2109 (h!17695 (t!112784 rules!2728)))) e!777963))))

(declare-fun b!1212478 () Bool)

(declare-fun e!777964 () Bool)

(declare-fun tp!343643 () Bool)

(assert (=> b!1212478 (= e!777964 (and e!777962 tp!343643))))

(assert (=> b!1212334 (= tp!343613 e!777964)))

(assert (= b!1212479 b!1212480))

(assert (= b!1212478 b!1212479))

(assert (= (and b!1212334 ((_ is Cons!12294) (t!112784 rules!2728))) b!1212478))

(declare-fun m!1387767 () Bool)

(assert (=> b!1212479 m!1387767))

(declare-fun m!1387769 () Bool)

(assert (=> b!1212479 m!1387769))

(declare-fun b!1212491 () Bool)

(declare-fun e!777968 () Bool)

(assert (=> b!1212491 (= e!777968 tp_is_empty!6279)))

(declare-fun b!1212493 () Bool)

(declare-fun tp!343659 () Bool)

(assert (=> b!1212493 (= e!777968 tp!343659)))

(assert (=> b!1212329 (= tp!343605 e!777968)))

(declare-fun b!1212494 () Bool)

(declare-fun tp!343657 () Bool)

(declare-fun tp!343658 () Bool)

(assert (=> b!1212494 (= e!777968 (and tp!343657 tp!343658))))

(declare-fun b!1212492 () Bool)

(declare-fun tp!343660 () Bool)

(declare-fun tp!343661 () Bool)

(assert (=> b!1212492 (= e!777968 (and tp!343660 tp!343661))))

(assert (= (and b!1212329 ((_ is ElementMatch!3379) (regex!2109 (rule!3530 (h!17696 tokens!556))))) b!1212491))

(assert (= (and b!1212329 ((_ is Concat!5557) (regex!2109 (rule!3530 (h!17696 tokens!556))))) b!1212492))

(assert (= (and b!1212329 ((_ is Star!3379) (regex!2109 (rule!3530 (h!17696 tokens!556))))) b!1212493))

(assert (= (and b!1212329 ((_ is Union!3379) (regex!2109 (rule!3530 (h!17696 tokens!556))))) b!1212494))

(declare-fun b!1212495 () Bool)

(declare-fun e!777969 () Bool)

(declare-fun tp!343662 () Bool)

(assert (=> b!1212495 (= e!777969 (and tp_is_empty!6279 tp!343662))))

(assert (=> b!1212338 (= tp!343611 e!777969)))

(assert (= (and b!1212338 ((_ is Cons!12293) (t!112783 input!2346))) b!1212495))

(declare-fun b!1212496 () Bool)

(declare-fun e!777970 () Bool)

(assert (=> b!1212496 (= e!777970 tp_is_empty!6279)))

(declare-fun b!1212498 () Bool)

(declare-fun tp!343665 () Bool)

(assert (=> b!1212498 (= e!777970 tp!343665)))

(assert (=> b!1212328 (= tp!343607 e!777970)))

(declare-fun b!1212499 () Bool)

(declare-fun tp!343663 () Bool)

(declare-fun tp!343664 () Bool)

(assert (=> b!1212499 (= e!777970 (and tp!343663 tp!343664))))

(declare-fun b!1212497 () Bool)

(declare-fun tp!343666 () Bool)

(declare-fun tp!343667 () Bool)

(assert (=> b!1212497 (= e!777970 (and tp!343666 tp!343667))))

(assert (= (and b!1212328 ((_ is ElementMatch!3379) (regex!2109 (h!17695 rules!2728)))) b!1212496))

(assert (= (and b!1212328 ((_ is Concat!5557) (regex!2109 (h!17695 rules!2728)))) b!1212497))

(assert (= (and b!1212328 ((_ is Star!3379) (regex!2109 (h!17695 rules!2728)))) b!1212498))

(assert (= (and b!1212328 ((_ is Union!3379) (regex!2109 (h!17695 rules!2728)))) b!1212499))

(declare-fun b_lambda!35769 () Bool)

(assert (= b_lambda!35767 (or (and b!1212339 b_free!28907) (and b!1212335 b_free!28911 (= (toChars!3089 (transformation!2109 (h!17695 rules!2728))) (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556)))))) (and b!1212464 b_free!28915 (= (toChars!3089 (transformation!2109 (rule!3530 (h!17696 (t!112785 tokens!556))))) (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556)))))) (and b!1212480 b_free!28919 (= (toChars!3089 (transformation!2109 (h!17695 (t!112784 rules!2728)))) (toChars!3089 (transformation!2109 (rule!3530 (h!17696 tokens!556)))))) b_lambda!35769)))

(check-sat (not b!1212444) (not b_next!29623) (not b!1212494) (not b!1212404) (not b!1212461) b_and!82129 (not b!1212409) (not b_next!29609) (not b!1212462) (not b!1212349) (not b_next!29615) (not b!1212450) (not b!1212449) b_and!82147 (not b!1212495) (not b_next!29611) (not b!1212386) (not b!1212442) (not b_lambda!35769) (not bm!84483) (not b!1212415) (not b!1212493) (not b!1212492) tp_is_empty!6279 (not b!1212410) b_and!82141 (not d!346723) (not d!346717) (not b!1212403) (not b!1212389) (not b!1212385) (not b!1212479) (not b!1212441) (not b_next!29617) (not b!1212445) (not b!1212344) b_and!82139 (not b!1212447) (not b!1212401) (not b_next!29621) (not d!346707) (not d!346721) (not b!1212355) (not d!346705) (not b!1212478) b_and!82133 b_and!82143 (not b!1212497) (not b!1212498) (not tb!66521) (not d!346739) b_and!82145 (not b!1212463) b_and!82137 (not b!1212443) (not b!1212350) (not b_next!29619) (not b!1212469) (not b_next!29613) (not d!346711) (not b!1212446) (not d!346725) (not b!1212499))
(check-sat (not b_next!29611) (not b_next!29623) b_and!82141 b_and!82129 (not b_next!29617) b_and!82139 (not b_next!29621) (not b_next!29609) (not b_next!29615) b_and!82145 b_and!82137 b_and!82147 b_and!82133 b_and!82143 (not b_next!29619) (not b_next!29613))
