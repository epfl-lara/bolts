; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522226 () Bool)

(assert start!522226)

(declare-fun b!4954686 () Bool)

(declare-fun b_free!132143 () Bool)

(declare-fun b_next!132933 () Bool)

(assert (=> b!4954686 (= b_free!132143 (not b_next!132933))))

(declare-fun tp!1389172 () Bool)

(declare-fun b_and!346995 () Bool)

(assert (=> b!4954686 (= tp!1389172 b_and!346995)))

(declare-fun b_free!132145 () Bool)

(declare-fun b_next!132935 () Bool)

(assert (=> b!4954686 (= b_free!132145 (not b_next!132935))))

(declare-fun tp!1389173 () Bool)

(declare-fun b_and!346997 () Bool)

(assert (=> b!4954686 (= tp!1389173 b_and!346997)))

(declare-fun res!2113853 () Bool)

(declare-fun e!3095839 () Bool)

(assert (=> start!522226 (=> (not res!2113853) (not e!3095839))))

(declare-datatypes ((LexerInterface!7880 0))(
  ( (LexerInterfaceExt!7877 (__x!34489 Int)) (Lexer!7878) )
))
(declare-fun thiss!15247 () LexerInterface!7880)

(get-info :version)

(assert (=> start!522226 (= res!2113853 ((_ is Lexer!7878) thiss!15247))))

(assert (=> start!522226 e!3095839))

(assert (=> start!522226 true))

(declare-fun e!3095835 () Bool)

(assert (=> start!522226 e!3095835))

(declare-datatypes ((C!27292 0))(
  ( (C!27293 (val!23012 Int)) )
))
(declare-datatypes ((List!57250 0))(
  ( (Nil!57126) (Cons!57126 (h!63574 C!27292) (t!367816 List!57250)) )
))
(declare-datatypes ((IArray!30141 0))(
  ( (IArray!30142 (innerList!15128 List!57250)) )
))
(declare-datatypes ((Conc!15040 0))(
  ( (Node!15040 (left!41674 Conc!15040) (right!42004 Conc!15040) (csize!30310 Int) (cheight!15251 Int)) (Leaf!25009 (xs!18366 IArray!30141) (csize!30311 Int)) (Empty!15040) )
))
(declare-datatypes ((BalanceConc!29510 0))(
  ( (BalanceConc!29511 (c!846043 Conc!15040)) )
))
(declare-fun input!1342 () BalanceConc!29510)

(declare-fun e!3095832 () Bool)

(declare-fun inv!74492 (BalanceConc!29510) Bool)

(assert (=> start!522226 (and (inv!74492 input!1342) e!3095832)))

(declare-fun totalInput!464 () BalanceConc!29510)

(declare-fun e!3095838 () Bool)

(assert (=> start!522226 (and (inv!74492 totalInput!464) e!3095838)))

(declare-fun b!4954677 () Bool)

(declare-fun e!3095836 () Bool)

(declare-fun e!3095831 () Bool)

(assert (=> b!4954677 (= e!3095836 (not e!3095831))))

(declare-fun res!2113852 () Bool)

(assert (=> b!4954677 (=> res!2113852 e!3095831)))

(declare-datatypes ((List!57251 0))(
  ( (Nil!57127) (Cons!57127 (h!63575 (_ BitVec 16)) (t!367817 List!57251)) )
))
(declare-datatypes ((TokenValue!8598 0))(
  ( (FloatLiteralValue!17196 (text!60631 List!57251)) (TokenValueExt!8597 (__x!34490 Int)) (Broken!42990 (value!265627 List!57251)) (Object!8721) (End!8598) (Def!8598) (Underscore!8598) (Match!8598) (Else!8598) (Error!8598) (Case!8598) (If!8598) (Extends!8598) (Abstract!8598) (Class!8598) (Val!8598) (DelimiterValue!17196 (del!8658 List!57251)) (KeywordValue!8604 (value!265628 List!57251)) (CommentValue!17196 (value!265629 List!57251)) (WhitespaceValue!17196 (value!265630 List!57251)) (IndentationValue!8598 (value!265631 List!57251)) (String!64863) (Int32!8598) (Broken!42991 (value!265632 List!57251)) (Boolean!8599) (Unit!148020) (OperatorValue!8601 (op!8658 List!57251)) (IdentifierValue!17196 (value!265633 List!57251)) (IdentifierValue!17197 (value!265634 List!57251)) (WhitespaceValue!17197 (value!265635 List!57251)) (True!17196) (False!17196) (Broken!42992 (value!265636 List!57251)) (Broken!42993 (value!265637 List!57251)) (True!17197) (RightBrace!8598) (RightBracket!8598) (Colon!8598) (Null!8598) (Comma!8598) (LeftBracket!8598) (False!17197) (LeftBrace!8598) (ImaginaryLiteralValue!8598 (text!60632 List!57251)) (StringLiteralValue!25794 (value!265638 List!57251)) (EOFValue!8598 (value!265639 List!57251)) (IdentValue!8598 (value!265640 List!57251)) (DelimiterValue!17197 (value!265641 List!57251)) (DedentValue!8598 (value!265642 List!57251)) (NewLineValue!8598 (value!265643 List!57251)) (IntegerValue!25794 (value!265644 (_ BitVec 32)) (text!60633 List!57251)) (IntegerValue!25795 (value!265645 Int) (text!60634 List!57251)) (Times!8598) (Or!8598) (Equal!8598) (Minus!8598) (Broken!42994 (value!265646 List!57251)) (And!8598) (Div!8598) (LessEqual!8598) (Mod!8598) (Concat!22119) (Not!8598) (Plus!8598) (SpaceValue!8598 (value!265647 List!57251)) (IntegerValue!25796 (value!265648 Int) (text!60635 List!57251)) (StringLiteralValue!25795 (text!60636 List!57251)) (FloatLiteralValue!17197 (text!60637 List!57251)) (BytesLiteralValue!8598 (value!265649 List!57251)) (CommentValue!17197 (value!265650 List!57251)) (StringLiteralValue!25796 (value!265651 List!57251)) (ErrorTokenValue!8598 (msg!8659 List!57251)) )
))
(declare-datatypes ((Regex!13521 0))(
  ( (ElementMatch!13521 (c!846044 C!27292)) (Concat!22120 (regOne!27554 Regex!13521) (regTwo!27554 Regex!13521)) (EmptyExpr!13521) (Star!13521 (reg!13850 Regex!13521)) (EmptyLang!13521) (Union!13521 (regOne!27555 Regex!13521) (regTwo!27555 Regex!13521)) )
))
(declare-datatypes ((String!64864 0))(
  ( (String!64865 (value!265652 String)) )
))
(declare-datatypes ((TokenValueInjection!16504 0))(
  ( (TokenValueInjection!16505 (toValue!11239 Int) (toChars!11098 Int)) )
))
(declare-datatypes ((Rule!16376 0))(
  ( (Rule!16377 (regex!8288 Regex!13521) (tag!9152 String!64864) (isSeparator!8288 Bool) (transformation!8288 TokenValueInjection!16504)) )
))
(declare-datatypes ((List!57252 0))(
  ( (Nil!57128) (Cons!57128 (h!63576 Rule!16376) (t!367818 List!57252)) )
))
(declare-fun rulesArg!259 () List!57252)

(assert (=> b!4954677 (= res!2113852 (or (and ((_ is Cons!57128) rulesArg!259) ((_ is Nil!57128) (t!367818 rulesArg!259))) (not ((_ is Cons!57128) rulesArg!259))))))

(declare-fun lt!2044927 () List!57250)

(declare-fun isPrefix!5141 (List!57250 List!57250) Bool)

(assert (=> b!4954677 (isPrefix!5141 lt!2044927 lt!2044927)))

(declare-datatypes ((Unit!148021 0))(
  ( (Unit!148022) )
))
(declare-fun lt!2044928 () Unit!148021)

(declare-fun lemmaIsPrefixRefl!3465 (List!57250 List!57250) Unit!148021)

(assert (=> b!4954677 (= lt!2044928 (lemmaIsPrefixRefl!3465 lt!2044927 lt!2044927))))

(declare-fun b!4954678 () Bool)

(declare-fun tp!1389171 () Bool)

(declare-fun inv!74493 (Conc!15040) Bool)

(assert (=> b!4954678 (= e!3095832 (and (inv!74493 (c!846043 input!1342)) tp!1389171))))

(declare-fun b!4954679 () Bool)

(declare-fun res!2113855 () Bool)

(assert (=> b!4954679 (=> (not res!2113855) (not e!3095839))))

(declare-fun rulesValidInductive!3191 (LexerInterface!7880 List!57252) Bool)

(assert (=> b!4954679 (= res!2113855 (rulesValidInductive!3191 thiss!15247 rulesArg!259))))

(declare-fun b!4954680 () Bool)

(declare-fun tp!1389170 () Bool)

(assert (=> b!4954680 (= e!3095838 (and (inv!74493 (c!846043 totalInput!464)) tp!1389170))))

(declare-fun b!4954681 () Bool)

(declare-fun ruleValid!3768 (LexerInterface!7880 Rule!16376) Bool)

(assert (=> b!4954681 (= e!3095831 (ruleValid!3768 thiss!15247 (h!63576 rulesArg!259)))))

(declare-fun b!4954682 () Bool)

(declare-fun res!2113854 () Bool)

(assert (=> b!4954682 (=> (not res!2113854) (not e!3095839))))

(declare-fun isEmpty!30720 (List!57252) Bool)

(assert (=> b!4954682 (= res!2113854 (not (isEmpty!30720 rulesArg!259)))))

(declare-fun b!4954683 () Bool)

(assert (=> b!4954683 (= e!3095839 e!3095836)))

(declare-fun res!2113851 () Bool)

(assert (=> b!4954683 (=> (not res!2113851) (not e!3095836))))

(declare-fun isSuffix!1087 (List!57250 List!57250) Bool)

(declare-fun list!18223 (BalanceConc!29510) List!57250)

(assert (=> b!4954683 (= res!2113851 (isSuffix!1087 lt!2044927 (list!18223 totalInput!464)))))

(assert (=> b!4954683 (= lt!2044927 (list!18223 input!1342))))

(declare-fun tp!1389174 () Bool)

(declare-fun e!3095837 () Bool)

(declare-fun e!3095834 () Bool)

(declare-fun b!4954684 () Bool)

(declare-fun inv!74488 (String!64864) Bool)

(declare-fun inv!74494 (TokenValueInjection!16504) Bool)

(assert (=> b!4954684 (= e!3095837 (and tp!1389174 (inv!74488 (tag!9152 (h!63576 rulesArg!259))) (inv!74494 (transformation!8288 (h!63576 rulesArg!259))) e!3095834))))

(declare-fun b!4954685 () Bool)

(declare-fun tp!1389169 () Bool)

(assert (=> b!4954685 (= e!3095835 (and e!3095837 tp!1389169))))

(assert (=> b!4954686 (= e!3095834 (and tp!1389172 tp!1389173))))

(assert (= (and start!522226 res!2113853) b!4954679))

(assert (= (and b!4954679 res!2113855) b!4954682))

(assert (= (and b!4954682 res!2113854) b!4954683))

(assert (= (and b!4954683 res!2113851) b!4954677))

(assert (= (and b!4954677 (not res!2113852)) b!4954681))

(assert (= b!4954684 b!4954686))

(assert (= b!4954685 b!4954684))

(assert (= (and start!522226 ((_ is Cons!57128) rulesArg!259)) b!4954685))

(assert (= start!522226 b!4954678))

(assert (= start!522226 b!4954680))

(declare-fun m!5979360 () Bool)

(assert (=> b!4954678 m!5979360))

(declare-fun m!5979362 () Bool)

(assert (=> b!4954682 m!5979362))

(declare-fun m!5979364 () Bool)

(assert (=> b!4954683 m!5979364))

(assert (=> b!4954683 m!5979364))

(declare-fun m!5979366 () Bool)

(assert (=> b!4954683 m!5979366))

(declare-fun m!5979368 () Bool)

(assert (=> b!4954683 m!5979368))

(declare-fun m!5979370 () Bool)

(assert (=> start!522226 m!5979370))

(declare-fun m!5979372 () Bool)

(assert (=> start!522226 m!5979372))

(declare-fun m!5979374 () Bool)

(assert (=> b!4954679 m!5979374))

(declare-fun m!5979376 () Bool)

(assert (=> b!4954680 m!5979376))

(declare-fun m!5979378 () Bool)

(assert (=> b!4954684 m!5979378))

(declare-fun m!5979380 () Bool)

(assert (=> b!4954684 m!5979380))

(declare-fun m!5979382 () Bool)

(assert (=> b!4954677 m!5979382))

(declare-fun m!5979384 () Bool)

(assert (=> b!4954677 m!5979384))

(declare-fun m!5979386 () Bool)

(assert (=> b!4954681 m!5979386))

(check-sat (not b!4954683) (not b!4954681) (not b!4954680) (not b!4954685) (not start!522226) (not b!4954684) b_and!346995 (not b_next!132933) b_and!346997 (not b!4954679) (not b_next!132935) (not b!4954678) (not b!4954682) (not b!4954677))
(check-sat b_and!346995 b_and!346997 (not b_next!132933) (not b_next!132935))
(get-model)

(declare-fun d!1595405 () Bool)

(declare-fun c!846047 () Bool)

(assert (=> d!1595405 (= c!846047 ((_ is Node!15040) (c!846043 totalInput!464)))))

(declare-fun e!3095850 () Bool)

(assert (=> d!1595405 (= (inv!74493 (c!846043 totalInput!464)) e!3095850)))

(declare-fun b!4954701 () Bool)

(declare-fun inv!74497 (Conc!15040) Bool)

(assert (=> b!4954701 (= e!3095850 (inv!74497 (c!846043 totalInput!464)))))

(declare-fun b!4954702 () Bool)

(declare-fun e!3095851 () Bool)

(assert (=> b!4954702 (= e!3095850 e!3095851)))

(declare-fun res!2113872 () Bool)

(assert (=> b!4954702 (= res!2113872 (not ((_ is Leaf!25009) (c!846043 totalInput!464))))))

(assert (=> b!4954702 (=> res!2113872 e!3095851)))

(declare-fun b!4954703 () Bool)

(declare-fun inv!74498 (Conc!15040) Bool)

(assert (=> b!4954703 (= e!3095851 (inv!74498 (c!846043 totalInput!464)))))

(assert (= (and d!1595405 c!846047) b!4954701))

(assert (= (and d!1595405 (not c!846047)) b!4954702))

(assert (= (and b!4954702 (not res!2113872)) b!4954703))

(declare-fun m!5979388 () Bool)

(assert (=> b!4954701 m!5979388))

(declare-fun m!5979390 () Bool)

(assert (=> b!4954703 m!5979390))

(assert (=> b!4954680 d!1595405))

(declare-fun d!1595409 () Bool)

(declare-fun isBalanced!4170 (Conc!15040) Bool)

(assert (=> d!1595409 (= (inv!74492 input!1342) (isBalanced!4170 (c!846043 input!1342)))))

(declare-fun bs!1182465 () Bool)

(assert (= bs!1182465 d!1595409))

(declare-fun m!5979400 () Bool)

(assert (=> bs!1182465 m!5979400))

(assert (=> start!522226 d!1595409))

(declare-fun d!1595413 () Bool)

(assert (=> d!1595413 (= (inv!74492 totalInput!464) (isBalanced!4170 (c!846043 totalInput!464)))))

(declare-fun bs!1182466 () Bool)

(assert (= bs!1182466 d!1595413))

(declare-fun m!5979402 () Bool)

(assert (=> bs!1182466 m!5979402))

(assert (=> start!522226 d!1595413))

(declare-fun d!1595415 () Bool)

(declare-fun res!2113883 () Bool)

(declare-fun e!3095861 () Bool)

(assert (=> d!1595415 (=> (not res!2113883) (not e!3095861))))

(declare-fun validRegex!5964 (Regex!13521) Bool)

(assert (=> d!1595415 (= res!2113883 (validRegex!5964 (regex!8288 (h!63576 rulesArg!259))))))

(assert (=> d!1595415 (= (ruleValid!3768 thiss!15247 (h!63576 rulesArg!259)) e!3095861)))

(declare-fun b!4954718 () Bool)

(declare-fun res!2113884 () Bool)

(assert (=> b!4954718 (=> (not res!2113884) (not e!3095861))))

(declare-fun nullable!4615 (Regex!13521) Bool)

(assert (=> b!4954718 (= res!2113884 (not (nullable!4615 (regex!8288 (h!63576 rulesArg!259)))))))

(declare-fun b!4954719 () Bool)

(assert (=> b!4954719 (= e!3095861 (not (= (tag!9152 (h!63576 rulesArg!259)) (String!64865 ""))))))

(assert (= (and d!1595415 res!2113883) b!4954718))

(assert (= (and b!4954718 res!2113884) b!4954719))

(declare-fun m!5979406 () Bool)

(assert (=> d!1595415 m!5979406))

(declare-fun m!5979408 () Bool)

(assert (=> b!4954718 m!5979408))

(assert (=> b!4954681 d!1595415))

(declare-fun d!1595419 () Bool)

(declare-fun e!3095866 () Bool)

(assert (=> d!1595419 e!3095866))

(declare-fun res!2113888 () Bool)

(assert (=> d!1595419 (=> res!2113888 e!3095866)))

(declare-fun lt!2044937 () Bool)

(assert (=> d!1595419 (= res!2113888 (not lt!2044937))))

(declare-fun drop!2318 (List!57250 Int) List!57250)

(declare-fun size!37904 (List!57250) Int)

(assert (=> d!1595419 (= lt!2044937 (= lt!2044927 (drop!2318 (list!18223 totalInput!464) (- (size!37904 (list!18223 totalInput!464)) (size!37904 lt!2044927)))))))

(assert (=> d!1595419 (= (isSuffix!1087 lt!2044927 (list!18223 totalInput!464)) lt!2044937)))

(declare-fun b!4954725 () Bool)

(assert (=> b!4954725 (= e!3095866 (>= (size!37904 (list!18223 totalInput!464)) (size!37904 lt!2044927)))))

(assert (= (and d!1595419 (not res!2113888)) b!4954725))

(assert (=> d!1595419 m!5979364))

(declare-fun m!5979414 () Bool)

(assert (=> d!1595419 m!5979414))

(declare-fun m!5979416 () Bool)

(assert (=> d!1595419 m!5979416))

(assert (=> d!1595419 m!5979364))

(declare-fun m!5979418 () Bool)

(assert (=> d!1595419 m!5979418))

(assert (=> b!4954725 m!5979364))

(assert (=> b!4954725 m!5979414))

(assert (=> b!4954725 m!5979416))

(assert (=> b!4954683 d!1595419))

(declare-fun d!1595425 () Bool)

(declare-fun list!18225 (Conc!15040) List!57250)

(assert (=> d!1595425 (= (list!18223 totalInput!464) (list!18225 (c!846043 totalInput!464)))))

(declare-fun bs!1182468 () Bool)

(assert (= bs!1182468 d!1595425))

(declare-fun m!5979420 () Bool)

(assert (=> bs!1182468 m!5979420))

(assert (=> b!4954683 d!1595425))

(declare-fun d!1595427 () Bool)

(assert (=> d!1595427 (= (list!18223 input!1342) (list!18225 (c!846043 input!1342)))))

(declare-fun bs!1182469 () Bool)

(assert (= bs!1182469 d!1595427))

(declare-fun m!5979422 () Bool)

(assert (=> bs!1182469 m!5979422))

(assert (=> b!4954683 d!1595427))

(declare-fun d!1595429 () Bool)

(assert (=> d!1595429 (= (isEmpty!30720 rulesArg!259) ((_ is Nil!57128) rulesArg!259))))

(assert (=> b!4954682 d!1595429))

(declare-fun b!4954744 () Bool)

(declare-fun e!3095882 () Bool)

(assert (=> b!4954744 (= e!3095882 (>= (size!37904 lt!2044927) (size!37904 lt!2044927)))))

(declare-fun b!4954742 () Bool)

(declare-fun res!2113905 () Bool)

(declare-fun e!3095881 () Bool)

(assert (=> b!4954742 (=> (not res!2113905) (not e!3095881))))

(declare-fun head!10638 (List!57250) C!27292)

(assert (=> b!4954742 (= res!2113905 (= (head!10638 lt!2044927) (head!10638 lt!2044927)))))

(declare-fun b!4954741 () Bool)

(declare-fun e!3095880 () Bool)

(assert (=> b!4954741 (= e!3095880 e!3095881)))

(declare-fun res!2113907 () Bool)

(assert (=> b!4954741 (=> (not res!2113907) (not e!3095881))))

(assert (=> b!4954741 (= res!2113907 (not ((_ is Nil!57126) lt!2044927)))))

(declare-fun d!1595433 () Bool)

(assert (=> d!1595433 e!3095882))

(declare-fun res!2113904 () Bool)

(assert (=> d!1595433 (=> res!2113904 e!3095882)))

(declare-fun lt!2044942 () Bool)

(assert (=> d!1595433 (= res!2113904 (not lt!2044942))))

(assert (=> d!1595433 (= lt!2044942 e!3095880)))

(declare-fun res!2113906 () Bool)

(assert (=> d!1595433 (=> res!2113906 e!3095880)))

(assert (=> d!1595433 (= res!2113906 ((_ is Nil!57126) lt!2044927))))

(assert (=> d!1595433 (= (isPrefix!5141 lt!2044927 lt!2044927) lt!2044942)))

(declare-fun b!4954743 () Bool)

(declare-fun tail!9771 (List!57250) List!57250)

(assert (=> b!4954743 (= e!3095881 (isPrefix!5141 (tail!9771 lt!2044927) (tail!9771 lt!2044927)))))

(assert (= (and d!1595433 (not res!2113906)) b!4954741))

(assert (= (and b!4954741 res!2113907) b!4954742))

(assert (= (and b!4954742 res!2113905) b!4954743))

(assert (= (and d!1595433 (not res!2113904)) b!4954744))

(assert (=> b!4954744 m!5979416))

(assert (=> b!4954744 m!5979416))

(declare-fun m!5979428 () Bool)

(assert (=> b!4954742 m!5979428))

(assert (=> b!4954742 m!5979428))

(declare-fun m!5979430 () Bool)

(assert (=> b!4954743 m!5979430))

(assert (=> b!4954743 m!5979430))

(assert (=> b!4954743 m!5979430))

(assert (=> b!4954743 m!5979430))

(declare-fun m!5979432 () Bool)

(assert (=> b!4954743 m!5979432))

(assert (=> b!4954677 d!1595433))

(declare-fun d!1595435 () Bool)

(assert (=> d!1595435 (isPrefix!5141 lt!2044927 lt!2044927)))

(declare-fun lt!2044945 () Unit!148021)

(declare-fun choose!36618 (List!57250 List!57250) Unit!148021)

(assert (=> d!1595435 (= lt!2044945 (choose!36618 lt!2044927 lt!2044927))))

(assert (=> d!1595435 (= (lemmaIsPrefixRefl!3465 lt!2044927 lt!2044927) lt!2044945)))

(declare-fun bs!1182470 () Bool)

(assert (= bs!1182470 d!1595435))

(assert (=> bs!1182470 m!5979382))

(declare-fun m!5979434 () Bool)

(assert (=> bs!1182470 m!5979434))

(assert (=> b!4954677 d!1595435))

(declare-fun d!1595437 () Bool)

(assert (=> d!1595437 (= (inv!74488 (tag!9152 (h!63576 rulesArg!259))) (= (mod (str.len (value!265652 (tag!9152 (h!63576 rulesArg!259)))) 2) 0))))

(assert (=> b!4954684 d!1595437))

(declare-fun d!1595439 () Bool)

(declare-fun res!2113910 () Bool)

(declare-fun e!3095885 () Bool)

(assert (=> d!1595439 (=> (not res!2113910) (not e!3095885))))

(declare-fun semiInverseModEq!3669 (Int Int) Bool)

(assert (=> d!1595439 (= res!2113910 (semiInverseModEq!3669 (toChars!11098 (transformation!8288 (h!63576 rulesArg!259))) (toValue!11239 (transformation!8288 (h!63576 rulesArg!259)))))))

(assert (=> d!1595439 (= (inv!74494 (transformation!8288 (h!63576 rulesArg!259))) e!3095885)))

(declare-fun b!4954747 () Bool)

(declare-fun equivClasses!3517 (Int Int) Bool)

(assert (=> b!4954747 (= e!3095885 (equivClasses!3517 (toChars!11098 (transformation!8288 (h!63576 rulesArg!259))) (toValue!11239 (transformation!8288 (h!63576 rulesArg!259)))))))

(assert (= (and d!1595439 res!2113910) b!4954747))

(declare-fun m!5979436 () Bool)

(assert (=> d!1595439 m!5979436))

(declare-fun m!5979438 () Bool)

(assert (=> b!4954747 m!5979438))

(assert (=> b!4954684 d!1595439))

(declare-fun d!1595441 () Bool)

(assert (=> d!1595441 true))

(declare-fun lt!2044952 () Bool)

(declare-fun lambda!247064 () Int)

(declare-fun forall!13296 (List!57252 Int) Bool)

(assert (=> d!1595441 (= lt!2044952 (forall!13296 rulesArg!259 lambda!247064))))

(declare-fun e!3095924 () Bool)

(assert (=> d!1595441 (= lt!2044952 e!3095924)))

(declare-fun res!2113927 () Bool)

(assert (=> d!1595441 (=> res!2113927 e!3095924)))

(assert (=> d!1595441 (= res!2113927 (not ((_ is Cons!57128) rulesArg!259)))))

(assert (=> d!1595441 (= (rulesValidInductive!3191 thiss!15247 rulesArg!259) lt!2044952)))

(declare-fun b!4954807 () Bool)

(declare-fun e!3095923 () Bool)

(assert (=> b!4954807 (= e!3095924 e!3095923)))

(declare-fun res!2113928 () Bool)

(assert (=> b!4954807 (=> (not res!2113928) (not e!3095923))))

(assert (=> b!4954807 (= res!2113928 (ruleValid!3768 thiss!15247 (h!63576 rulesArg!259)))))

(declare-fun b!4954808 () Bool)

(assert (=> b!4954808 (= e!3095923 (rulesValidInductive!3191 thiss!15247 (t!367818 rulesArg!259)))))

(assert (= (and d!1595441 (not res!2113927)) b!4954807))

(assert (= (and b!4954807 res!2113928) b!4954808))

(declare-fun m!5979480 () Bool)

(assert (=> d!1595441 m!5979480))

(assert (=> b!4954807 m!5979386))

(declare-fun m!5979482 () Bool)

(assert (=> b!4954808 m!5979482))

(assert (=> b!4954679 d!1595441))

(declare-fun d!1595459 () Bool)

(declare-fun c!846052 () Bool)

(assert (=> d!1595459 (= c!846052 ((_ is Node!15040) (c!846043 input!1342)))))

(declare-fun e!3095925 () Bool)

(assert (=> d!1595459 (= (inv!74493 (c!846043 input!1342)) e!3095925)))

(declare-fun b!4954811 () Bool)

(assert (=> b!4954811 (= e!3095925 (inv!74497 (c!846043 input!1342)))))

(declare-fun b!4954812 () Bool)

(declare-fun e!3095926 () Bool)

(assert (=> b!4954812 (= e!3095925 e!3095926)))

(declare-fun res!2113929 () Bool)

(assert (=> b!4954812 (= res!2113929 (not ((_ is Leaf!25009) (c!846043 input!1342))))))

(assert (=> b!4954812 (=> res!2113929 e!3095926)))

(declare-fun b!4954813 () Bool)

(assert (=> b!4954813 (= e!3095926 (inv!74498 (c!846043 input!1342)))))

(assert (= (and d!1595459 c!846052) b!4954811))

(assert (= (and d!1595459 (not c!846052)) b!4954812))

(assert (= (and b!4954812 (not res!2113929)) b!4954813))

(declare-fun m!5979484 () Bool)

(assert (=> b!4954811 m!5979484))

(declare-fun m!5979486 () Bool)

(assert (=> b!4954813 m!5979486))

(assert (=> b!4954678 d!1595459))

(declare-fun tp!1389222 () Bool)

(declare-fun e!3095931 () Bool)

(declare-fun b!4954822 () Bool)

(declare-fun tp!1389220 () Bool)

(assert (=> b!4954822 (= e!3095931 (and (inv!74493 (left!41674 (c!846043 totalInput!464))) tp!1389222 (inv!74493 (right!42004 (c!846043 totalInput!464))) tp!1389220))))

(declare-fun b!4954824 () Bool)

(declare-fun e!3095932 () Bool)

(declare-fun tp!1389221 () Bool)

(assert (=> b!4954824 (= e!3095932 tp!1389221)))

(declare-fun b!4954823 () Bool)

(declare-fun inv!74500 (IArray!30141) Bool)

(assert (=> b!4954823 (= e!3095931 (and (inv!74500 (xs!18366 (c!846043 totalInput!464))) e!3095932))))

(assert (=> b!4954680 (= tp!1389170 (and (inv!74493 (c!846043 totalInput!464)) e!3095931))))

(assert (= (and b!4954680 ((_ is Node!15040) (c!846043 totalInput!464))) b!4954822))

(assert (= b!4954823 b!4954824))

(assert (= (and b!4954680 ((_ is Leaf!25009) (c!846043 totalInput!464))) b!4954823))

(declare-fun m!5979488 () Bool)

(assert (=> b!4954822 m!5979488))

(declare-fun m!5979490 () Bool)

(assert (=> b!4954822 m!5979490))

(declare-fun m!5979492 () Bool)

(assert (=> b!4954823 m!5979492))

(assert (=> b!4954680 m!5979376))

(declare-fun b!4954835 () Bool)

(declare-fun b_free!132151 () Bool)

(declare-fun b_next!132941 () Bool)

(assert (=> b!4954835 (= b_free!132151 (not b_next!132941))))

(declare-fun tp!1389231 () Bool)

(declare-fun b_and!347003 () Bool)

(assert (=> b!4954835 (= tp!1389231 b_and!347003)))

(declare-fun b_free!132153 () Bool)

(declare-fun b_next!132943 () Bool)

(assert (=> b!4954835 (= b_free!132153 (not b_next!132943))))

(declare-fun tp!1389233 () Bool)

(declare-fun b_and!347005 () Bool)

(assert (=> b!4954835 (= tp!1389233 b_and!347005)))

(declare-fun e!3095942 () Bool)

(assert (=> b!4954835 (= e!3095942 (and tp!1389231 tp!1389233))))

(declare-fun tp!1389232 () Bool)

(declare-fun e!3095941 () Bool)

(declare-fun b!4954834 () Bool)

(assert (=> b!4954834 (= e!3095941 (and tp!1389232 (inv!74488 (tag!9152 (h!63576 (t!367818 rulesArg!259)))) (inv!74494 (transformation!8288 (h!63576 (t!367818 rulesArg!259)))) e!3095942))))

(declare-fun b!4954833 () Bool)

(declare-fun e!3095944 () Bool)

(declare-fun tp!1389234 () Bool)

(assert (=> b!4954833 (= e!3095944 (and e!3095941 tp!1389234))))

(assert (=> b!4954685 (= tp!1389169 e!3095944)))

(assert (= b!4954834 b!4954835))

(assert (= b!4954833 b!4954834))

(assert (= (and b!4954685 ((_ is Cons!57128) (t!367818 rulesArg!259))) b!4954833))

(declare-fun m!5979494 () Bool)

(assert (=> b!4954834 m!5979494))

(declare-fun m!5979496 () Bool)

(assert (=> b!4954834 m!5979496))

(declare-fun b!4954846 () Bool)

(declare-fun e!3095947 () Bool)

(declare-fun tp_is_empty!36267 () Bool)

(assert (=> b!4954846 (= e!3095947 tp_is_empty!36267)))

(declare-fun b!4954848 () Bool)

(declare-fun tp!1389246 () Bool)

(assert (=> b!4954848 (= e!3095947 tp!1389246)))

(declare-fun b!4954849 () Bool)

(declare-fun tp!1389249 () Bool)

(declare-fun tp!1389248 () Bool)

(assert (=> b!4954849 (= e!3095947 (and tp!1389249 tp!1389248))))

(declare-fun b!4954847 () Bool)

(declare-fun tp!1389247 () Bool)

(declare-fun tp!1389245 () Bool)

(assert (=> b!4954847 (= e!3095947 (and tp!1389247 tp!1389245))))

(assert (=> b!4954684 (= tp!1389174 e!3095947)))

(assert (= (and b!4954684 ((_ is ElementMatch!13521) (regex!8288 (h!63576 rulesArg!259)))) b!4954846))

(assert (= (and b!4954684 ((_ is Concat!22120) (regex!8288 (h!63576 rulesArg!259)))) b!4954847))

(assert (= (and b!4954684 ((_ is Star!13521) (regex!8288 (h!63576 rulesArg!259)))) b!4954848))

(assert (= (and b!4954684 ((_ is Union!13521) (regex!8288 (h!63576 rulesArg!259)))) b!4954849))

(declare-fun e!3095948 () Bool)

(declare-fun b!4954850 () Bool)

(declare-fun tp!1389252 () Bool)

(declare-fun tp!1389250 () Bool)

(assert (=> b!4954850 (= e!3095948 (and (inv!74493 (left!41674 (c!846043 input!1342))) tp!1389252 (inv!74493 (right!42004 (c!846043 input!1342))) tp!1389250))))

(declare-fun b!4954852 () Bool)

(declare-fun e!3095949 () Bool)

(declare-fun tp!1389251 () Bool)

(assert (=> b!4954852 (= e!3095949 tp!1389251)))

(declare-fun b!4954851 () Bool)

(assert (=> b!4954851 (= e!3095948 (and (inv!74500 (xs!18366 (c!846043 input!1342))) e!3095949))))

(assert (=> b!4954678 (= tp!1389171 (and (inv!74493 (c!846043 input!1342)) e!3095948))))

(assert (= (and b!4954678 ((_ is Node!15040) (c!846043 input!1342))) b!4954850))

(assert (= b!4954851 b!4954852))

(assert (= (and b!4954678 ((_ is Leaf!25009) (c!846043 input!1342))) b!4954851))

(declare-fun m!5979498 () Bool)

(assert (=> b!4954850 m!5979498))

(declare-fun m!5979500 () Bool)

(assert (=> b!4954850 m!5979500))

(declare-fun m!5979502 () Bool)

(assert (=> b!4954851 m!5979502))

(assert (=> b!4954678 m!5979360))

(check-sat (not b!4954851) (not d!1595409) (not b!4954680) (not b!4954718) (not b!4954701) (not b!4954743) b_and!347005 (not d!1595427) b_and!347003 b_and!346995 (not b!4954848) tp_is_empty!36267 (not d!1595413) (not b!4954822) (not b_next!132935) (not b!4954747) (not d!1595441) (not d!1595439) (not b!4954813) (not d!1595425) (not b!4954725) (not b!4954703) (not b!4954807) (not b_next!132943) (not b!4954824) (not b!4954847) (not b_next!132933) (not b!4954742) (not b!4954833) (not b!4954811) (not b!4954849) (not b!4954834) b_and!346997 (not b!4954744) (not b_next!132941) (not d!1595415) (not d!1595435) (not b!4954808) (not b!4954850) (not b!4954823) (not b!4954852) (not b!4954678) (not d!1595419))
(check-sat (not b_next!132943) b_and!347005 b_and!347003 b_and!346995 (not b_next!132933) (not b_next!132935) b_and!346997 (not b_next!132941))
