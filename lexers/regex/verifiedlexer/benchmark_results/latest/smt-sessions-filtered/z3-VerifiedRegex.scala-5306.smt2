; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!271704 () Bool)

(assert start!271704)

(declare-fun b!2808657 () Bool)

(declare-fun b_free!80109 () Bool)

(declare-fun b_next!80813 () Bool)

(assert (=> b!2808657 (= b_free!80109 (not b_next!80813))))

(declare-fun tp!896621 () Bool)

(declare-fun b_and!205191 () Bool)

(assert (=> b!2808657 (= tp!896621 b_and!205191)))

(declare-fun b_free!80111 () Bool)

(declare-fun b_next!80815 () Bool)

(assert (=> b!2808657 (= b_free!80111 (not b_next!80815))))

(declare-fun tp!896619 () Bool)

(declare-fun b_and!205193 () Bool)

(assert (=> b!2808657 (= tp!896619 b_and!205193)))

(declare-fun b!2808658 () Bool)

(declare-fun b_free!80113 () Bool)

(declare-fun b_next!80817 () Bool)

(assert (=> b!2808658 (= b_free!80113 (not b_next!80817))))

(declare-fun tp!896618 () Bool)

(declare-fun b_and!205195 () Bool)

(assert (=> b!2808658 (= tp!896618 b_and!205195)))

(declare-fun b_free!80115 () Bool)

(declare-fun b_next!80819 () Bool)

(assert (=> b!2808658 (= b_free!80115 (not b_next!80819))))

(declare-fun tp!896626 () Bool)

(declare-fun b_and!205197 () Bool)

(assert (=> b!2808658 (= tp!896626 b_and!205197)))

(declare-fun b!2808651 () Bool)

(declare-datatypes ((List!32877 0))(
  ( (Nil!32777) (Cons!32777 (h!38197 (_ BitVec 16)) (t!229581 List!32877)) )
))
(declare-datatypes ((TokenValue!5129 0))(
  ( (FloatLiteralValue!10258 (text!36348 List!32877)) (TokenValueExt!5128 (__x!21915 Int)) (Broken!25645 (value!157733 List!32877)) (Object!5228) (End!5129) (Def!5129) (Underscore!5129) (Match!5129) (Else!5129) (Error!5129) (Case!5129) (If!5129) (Extends!5129) (Abstract!5129) (Class!5129) (Val!5129) (DelimiterValue!10258 (del!5189 List!32877)) (KeywordValue!5135 (value!157734 List!32877)) (CommentValue!10258 (value!157735 List!32877)) (WhitespaceValue!10258 (value!157736 List!32877)) (IndentationValue!5129 (value!157737 List!32877)) (String!35980) (Int32!5129) (Broken!25646 (value!157738 List!32877)) (Boolean!5130) (Unit!46807) (OperatorValue!5132 (op!5189 List!32877)) (IdentifierValue!10258 (value!157739 List!32877)) (IdentifierValue!10259 (value!157740 List!32877)) (WhitespaceValue!10259 (value!157741 List!32877)) (True!10258) (False!10258) (Broken!25647 (value!157742 List!32877)) (Broken!25648 (value!157743 List!32877)) (True!10259) (RightBrace!5129) (RightBracket!5129) (Colon!5129) (Null!5129) (Comma!5129) (LeftBracket!5129) (False!10259) (LeftBrace!5129) (ImaginaryLiteralValue!5129 (text!36349 List!32877)) (StringLiteralValue!15387 (value!157744 List!32877)) (EOFValue!5129 (value!157745 List!32877)) (IdentValue!5129 (value!157746 List!32877)) (DelimiterValue!10259 (value!157747 List!32877)) (DedentValue!5129 (value!157748 List!32877)) (NewLineValue!5129 (value!157749 List!32877)) (IntegerValue!15387 (value!157750 (_ BitVec 32)) (text!36350 List!32877)) (IntegerValue!15388 (value!157751 Int) (text!36351 List!32877)) (Times!5129) (Or!5129) (Equal!5129) (Minus!5129) (Broken!25649 (value!157752 List!32877)) (And!5129) (Div!5129) (LessEqual!5129) (Mod!5129) (Concat!13406) (Not!5129) (Plus!5129) (SpaceValue!5129 (value!157753 List!32877)) (IntegerValue!15389 (value!157754 Int) (text!36352 List!32877)) (StringLiteralValue!15388 (text!36353 List!32877)) (FloatLiteralValue!10259 (text!36354 List!32877)) (BytesLiteralValue!5129 (value!157755 List!32877)) (CommentValue!10259 (value!157756 List!32877)) (StringLiteralValue!15389 (value!157757 List!32877)) (ErrorTokenValue!5129 (msg!5190 List!32877)) )
))
(declare-datatypes ((String!35981 0))(
  ( (String!35982 (value!157758 String)) )
))
(declare-datatypes ((C!16712 0))(
  ( (C!16713 (val!10290 Int)) )
))
(declare-datatypes ((List!32878 0))(
  ( (Nil!32778) (Cons!32778 (h!38198 C!16712) (t!229582 List!32878)) )
))
(declare-datatypes ((IArray!20297 0))(
  ( (IArray!20298 (innerList!10206 List!32878)) )
))
(declare-datatypes ((Conc!10146 0))(
  ( (Node!10146 (left!24734 Conc!10146) (right!25064 Conc!10146) (csize!20522 Int) (cheight!10357 Int)) (Leaf!15453 (xs!13258 IArray!20297) (csize!20523 Int)) (Empty!10146) )
))
(declare-datatypes ((BalanceConc!19906 0))(
  ( (BalanceConc!19907 (c!454950 Conc!10146)) )
))
(declare-datatypes ((TokenValueInjection!9698 0))(
  ( (TokenValueInjection!9699 (toValue!6909 Int) (toChars!6768 Int)) )
))
(declare-datatypes ((Regex!8277 0))(
  ( (ElementMatch!8277 (c!454951 C!16712)) (Concat!13407 (regOne!17066 Regex!8277) (regTwo!17066 Regex!8277)) (EmptyExpr!8277) (Star!8277 (reg!8606 Regex!8277)) (EmptyLang!8277) (Union!8277 (regOne!17067 Regex!8277) (regTwo!17067 Regex!8277)) )
))
(declare-datatypes ((Rule!9614 0))(
  ( (Rule!9615 (regex!4907 Regex!8277) (tag!5411 String!35981) (isSeparator!4907 Bool) (transformation!4907 TokenValueInjection!9698)) )
))
(declare-datatypes ((Token!9216 0))(
  ( (Token!9217 (value!157759 TokenValue!5129) (rule!7335 Rule!9614) (size!25552 Int) (originalCharacters!5639 List!32878)) )
))
(declare-datatypes ((List!32879 0))(
  ( (Nil!32779) (Cons!32779 (h!38199 Token!9216) (t!229583 List!32879)) )
))
(declare-fun l!4240 () List!32879)

(declare-fun tp!896623 () Bool)

(declare-fun e!1776056 () Bool)

(declare-fun e!1776064 () Bool)

(declare-fun inv!44469 (String!35981) Bool)

(declare-fun inv!44472 (TokenValueInjection!9698) Bool)

(assert (=> b!2808651 (= e!1776064 (and tp!896623 (inv!44469 (tag!5411 (rule!7335 (h!38199 l!4240)))) (inv!44472 (transformation!4907 (rule!7335 (h!38199 l!4240)))) e!1776056))))

(declare-fun b!2808653 () Bool)

(declare-fun e!1776065 () Bool)

(declare-fun ListPrimitiveSize!207 (List!32879) Int)

(assert (=> b!2808653 (= e!1776065 (>= (ListPrimitiveSize!207 (t!229583 l!4240)) (ListPrimitiveSize!207 l!4240)))))

(declare-fun tp!896620 () Bool)

(declare-fun b!2808654 () Bool)

(declare-fun e!1776066 () Bool)

(declare-fun e!1776055 () Bool)

(declare-fun separatorToken!99 () Token!9216)

(assert (=> b!2808654 (= e!1776066 (and tp!896620 (inv!44469 (tag!5411 (rule!7335 separatorToken!99))) (inv!44472 (transformation!4907 (rule!7335 separatorToken!99))) e!1776055))))

(declare-fun e!1776060 () Bool)

(declare-fun e!1776063 () Bool)

(declare-fun tp!896624 () Bool)

(declare-fun b!2808655 () Bool)

(declare-fun inv!44473 (Token!9216) Bool)

(assert (=> b!2808655 (= e!1776060 (and (inv!44473 (h!38199 l!4240)) e!1776063 tp!896624))))

(declare-fun tp!896625 () Bool)

(declare-fun b!2808656 () Bool)

(declare-fun inv!21 (TokenValue!5129) Bool)

(assert (=> b!2808656 (= e!1776063 (and (inv!21 (value!157759 (h!38199 l!4240))) e!1776064 tp!896625))))

(declare-fun b!2808652 () Bool)

(declare-fun e!1776061 () Bool)

(declare-fun tp!896622 () Bool)

(assert (=> b!2808652 (= e!1776061 (and (inv!21 (value!157759 separatorToken!99)) e!1776066 tp!896622))))

(declare-fun res!1169763 () Bool)

(assert (=> start!271704 (=> (not res!1169763) (not e!1776065))))

(declare-datatypes ((LexerInterface!4498 0))(
  ( (LexerInterfaceExt!4495 (__x!21916 Int)) (Lexer!4496) )
))
(declare-fun thiss!13843 () LexerInterface!4498)

(get-info :version)

(assert (=> start!271704 (= res!1169763 (and ((_ is Lexer!4496) thiss!13843) (isSeparator!4907 (rule!7335 separatorToken!99)) ((_ is Cons!32779) l!4240)))))

(assert (=> start!271704 e!1776065))

(assert (=> start!271704 true))

(assert (=> start!271704 (and (inv!44473 separatorToken!99) e!1776061)))

(assert (=> start!271704 e!1776060))

(assert (=> b!2808657 (= e!1776055 (and tp!896621 tp!896619))))

(assert (=> b!2808658 (= e!1776056 (and tp!896618 tp!896626))))

(assert (= (and start!271704 res!1169763) b!2808653))

(assert (= b!2808654 b!2808657))

(assert (= b!2808652 b!2808654))

(assert (= start!271704 b!2808652))

(assert (= b!2808651 b!2808658))

(assert (= b!2808656 b!2808651))

(assert (= b!2808655 b!2808656))

(assert (= (and start!271704 ((_ is Cons!32779) l!4240)) b!2808655))

(declare-fun m!3238161 () Bool)

(assert (=> b!2808654 m!3238161))

(declare-fun m!3238163 () Bool)

(assert (=> b!2808654 m!3238163))

(declare-fun m!3238165 () Bool)

(assert (=> b!2808651 m!3238165))

(declare-fun m!3238167 () Bool)

(assert (=> b!2808651 m!3238167))

(declare-fun m!3238169 () Bool)

(assert (=> b!2808653 m!3238169))

(declare-fun m!3238171 () Bool)

(assert (=> b!2808653 m!3238171))

(declare-fun m!3238173 () Bool)

(assert (=> start!271704 m!3238173))

(declare-fun m!3238175 () Bool)

(assert (=> b!2808655 m!3238175))

(declare-fun m!3238177 () Bool)

(assert (=> b!2808656 m!3238177))

(declare-fun m!3238179 () Bool)

(assert (=> b!2808652 m!3238179))

(check-sat (not b_next!80819) (not b!2808656) b_and!205193 (not b!2808655) (not b!2808653) (not start!271704) (not b_next!80817) (not b_next!80813) b_and!205197 (not b!2808651) (not b_next!80815) b_and!205191 (not b!2808654) (not b!2808652) b_and!205195)
(check-sat (not b_next!80819) b_and!205193 (not b_next!80815) b_and!205191 (not b_next!80817) b_and!205195 (not b_next!80813) b_and!205197)
(get-model)

(declare-fun d!815291 () Bool)

(declare-fun res!1169779 () Bool)

(declare-fun e!1776071 () Bool)

(assert (=> d!815291 (=> (not res!1169779) (not e!1776071))))

(declare-fun isEmpty!18205 (List!32878) Bool)

(assert (=> d!815291 (= res!1169779 (not (isEmpty!18205 (originalCharacters!5639 (h!38199 l!4240)))))))

(assert (=> d!815291 (= (inv!44473 (h!38199 l!4240)) e!1776071)))

(declare-fun b!2808667 () Bool)

(declare-fun res!1169780 () Bool)

(assert (=> b!2808667 (=> (not res!1169780) (not e!1776071))))

(declare-fun list!12270 (BalanceConc!19906) List!32878)

(declare-fun dynLambda!13722 (Int TokenValue!5129) BalanceConc!19906)

(assert (=> b!2808667 (= res!1169780 (= (originalCharacters!5639 (h!38199 l!4240)) (list!12270 (dynLambda!13722 (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240)))) (value!157759 (h!38199 l!4240))))))))

(declare-fun b!2808668 () Bool)

(declare-fun size!25553 (List!32878) Int)

(assert (=> b!2808668 (= e!1776071 (= (size!25552 (h!38199 l!4240)) (size!25553 (originalCharacters!5639 (h!38199 l!4240)))))))

(assert (= (and d!815291 res!1169779) b!2808667))

(assert (= (and b!2808667 res!1169780) b!2808668))

(declare-fun b_lambda!84011 () Bool)

(assert (=> (not b_lambda!84011) (not b!2808667)))

(declare-fun tb!153433 () Bool)

(declare-fun t!229585 () Bool)

(assert (=> (and b!2808657 (= (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99))) (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240))))) t!229585) tb!153433))

(declare-fun b!2808679 () Bool)

(declare-fun e!1776077 () Bool)

(declare-fun tp!896631 () Bool)

(declare-fun inv!44474 (Conc!10146) Bool)

(assert (=> b!2808679 (= e!1776077 (and (inv!44474 (c!454950 (dynLambda!13722 (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240)))) (value!157759 (h!38199 l!4240))))) tp!896631))))

(declare-fun result!190688 () Bool)

(declare-fun inv!44475 (BalanceConc!19906) Bool)

(assert (=> tb!153433 (= result!190688 (and (inv!44475 (dynLambda!13722 (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240)))) (value!157759 (h!38199 l!4240)))) e!1776077))))

(assert (= tb!153433 b!2808679))

(declare-fun m!3238181 () Bool)

(assert (=> b!2808679 m!3238181))

(declare-fun m!3238183 () Bool)

(assert (=> tb!153433 m!3238183))

(assert (=> b!2808667 t!229585))

(declare-fun b_and!205199 () Bool)

(assert (= b_and!205193 (and (=> t!229585 result!190688) b_and!205199)))

(declare-fun t!229589 () Bool)

(declare-fun tb!153437 () Bool)

(assert (=> (and b!2808658 (= (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240)))) (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240))))) t!229589) tb!153437))

(declare-fun result!190696 () Bool)

(assert (= result!190696 result!190688))

(assert (=> b!2808667 t!229589))

(declare-fun b_and!205201 () Bool)

(assert (= b_and!205197 (and (=> t!229589 result!190696) b_and!205201)))

(declare-fun m!3238185 () Bool)

(assert (=> d!815291 m!3238185))

(declare-fun m!3238187 () Bool)

(assert (=> b!2808667 m!3238187))

(assert (=> b!2808667 m!3238187))

(declare-fun m!3238189 () Bool)

(assert (=> b!2808667 m!3238189))

(declare-fun m!3238193 () Bool)

(assert (=> b!2808668 m!3238193))

(assert (=> b!2808655 d!815291))

(declare-fun d!815295 () Bool)

(assert (=> d!815295 (= (inv!44469 (tag!5411 (rule!7335 separatorToken!99))) (= (mod (str.len (value!157758 (tag!5411 (rule!7335 separatorToken!99)))) 2) 0))))

(assert (=> b!2808654 d!815295))

(declare-fun d!815299 () Bool)

(declare-fun res!1169787 () Bool)

(declare-fun e!1776083 () Bool)

(assert (=> d!815299 (=> (not res!1169787) (not e!1776083))))

(declare-fun semiInverseModEq!2025 (Int Int) Bool)

(assert (=> d!815299 (= res!1169787 (semiInverseModEq!2025 (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99))) (toValue!6909 (transformation!4907 (rule!7335 separatorToken!99)))))))

(assert (=> d!815299 (= (inv!44472 (transformation!4907 (rule!7335 separatorToken!99))) e!1776083)))

(declare-fun b!2808685 () Bool)

(declare-fun equivClasses!1926 (Int Int) Bool)

(assert (=> b!2808685 (= e!1776083 (equivClasses!1926 (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99))) (toValue!6909 (transformation!4907 (rule!7335 separatorToken!99)))))))

(assert (= (and d!815299 res!1169787) b!2808685))

(declare-fun m!3238205 () Bool)

(assert (=> d!815299 m!3238205))

(declare-fun m!3238207 () Bool)

(assert (=> b!2808685 m!3238207))

(assert (=> b!2808654 d!815299))

(declare-fun d!815303 () Bool)

(declare-fun res!1169788 () Bool)

(declare-fun e!1776084 () Bool)

(assert (=> d!815303 (=> (not res!1169788) (not e!1776084))))

(assert (=> d!815303 (= res!1169788 (not (isEmpty!18205 (originalCharacters!5639 separatorToken!99))))))

(assert (=> d!815303 (= (inv!44473 separatorToken!99) e!1776084)))

(declare-fun b!2808686 () Bool)

(declare-fun res!1169789 () Bool)

(assert (=> b!2808686 (=> (not res!1169789) (not e!1776084))))

(assert (=> b!2808686 (= res!1169789 (= (originalCharacters!5639 separatorToken!99) (list!12270 (dynLambda!13722 (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99))) (value!157759 separatorToken!99)))))))

(declare-fun b!2808687 () Bool)

(assert (=> b!2808687 (= e!1776084 (= (size!25552 separatorToken!99) (size!25553 (originalCharacters!5639 separatorToken!99))))))

(assert (= (and d!815303 res!1169788) b!2808686))

(assert (= (and b!2808686 res!1169789) b!2808687))

(declare-fun b_lambda!84015 () Bool)

(assert (=> (not b_lambda!84015) (not b!2808686)))

(declare-fun t!229593 () Bool)

(declare-fun tb!153441 () Bool)

(assert (=> (and b!2808657 (= (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99))) (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99)))) t!229593) tb!153441))

(declare-fun b!2808689 () Bool)

(declare-fun e!1776086 () Bool)

(declare-fun tp!896633 () Bool)

(assert (=> b!2808689 (= e!1776086 (and (inv!44474 (c!454950 (dynLambda!13722 (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99))) (value!157759 separatorToken!99)))) tp!896633))))

(declare-fun result!190700 () Bool)

(assert (=> tb!153441 (= result!190700 (and (inv!44475 (dynLambda!13722 (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99))) (value!157759 separatorToken!99))) e!1776086))))

(assert (= tb!153441 b!2808689))

(declare-fun m!3238213 () Bool)

(assert (=> b!2808689 m!3238213))

(declare-fun m!3238215 () Bool)

(assert (=> tb!153441 m!3238215))

(assert (=> b!2808686 t!229593))

(declare-fun b_and!205207 () Bool)

(assert (= b_and!205199 (and (=> t!229593 result!190700) b_and!205207)))

(declare-fun tb!153443 () Bool)

(declare-fun t!229595 () Bool)

(assert (=> (and b!2808658 (= (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240)))) (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99)))) t!229595) tb!153443))

(declare-fun result!190702 () Bool)

(assert (= result!190702 result!190700))

(assert (=> b!2808686 t!229595))

(declare-fun b_and!205209 () Bool)

(assert (= b_and!205201 (and (=> t!229595 result!190702) b_and!205209)))

(declare-fun m!3238217 () Bool)

(assert (=> d!815303 m!3238217))

(declare-fun m!3238219 () Bool)

(assert (=> b!2808686 m!3238219))

(assert (=> b!2808686 m!3238219))

(declare-fun m!3238221 () Bool)

(assert (=> b!2808686 m!3238221))

(declare-fun m!3238223 () Bool)

(assert (=> b!2808687 m!3238223))

(assert (=> start!271704 d!815303))

(declare-fun d!815307 () Bool)

(declare-fun lt!1003561 () Int)

(assert (=> d!815307 (>= lt!1003561 0)))

(declare-fun e!1776095 () Int)

(assert (=> d!815307 (= lt!1003561 e!1776095)))

(declare-fun c!454958 () Bool)

(assert (=> d!815307 (= c!454958 ((_ is Nil!32779) (t!229583 l!4240)))))

(assert (=> d!815307 (= (ListPrimitiveSize!207 (t!229583 l!4240)) lt!1003561)))

(declare-fun b!2808704 () Bool)

(assert (=> b!2808704 (= e!1776095 0)))

(declare-fun b!2808705 () Bool)

(assert (=> b!2808705 (= e!1776095 (+ 1 (ListPrimitiveSize!207 (t!229583 (t!229583 l!4240)))))))

(assert (= (and d!815307 c!454958) b!2808704))

(assert (= (and d!815307 (not c!454958)) b!2808705))

(declare-fun m!3238225 () Bool)

(assert (=> b!2808705 m!3238225))

(assert (=> b!2808653 d!815307))

(declare-fun d!815309 () Bool)

(declare-fun lt!1003562 () Int)

(assert (=> d!815309 (>= lt!1003562 0)))

(declare-fun e!1776096 () Int)

(assert (=> d!815309 (= lt!1003562 e!1776096)))

(declare-fun c!454959 () Bool)

(assert (=> d!815309 (= c!454959 ((_ is Nil!32779) l!4240))))

(assert (=> d!815309 (= (ListPrimitiveSize!207 l!4240) lt!1003562)))

(declare-fun b!2808706 () Bool)

(assert (=> b!2808706 (= e!1776096 0)))

(declare-fun b!2808707 () Bool)

(assert (=> b!2808707 (= e!1776096 (+ 1 (ListPrimitiveSize!207 (t!229583 l!4240))))))

(assert (= (and d!815309 c!454959) b!2808706))

(assert (= (and d!815309 (not c!454959)) b!2808707))

(assert (=> b!2808707 m!3238169))

(assert (=> b!2808653 d!815309))

(declare-fun b!2808730 () Bool)

(declare-fun e!1776111 () Bool)

(declare-fun inv!16 (TokenValue!5129) Bool)

(assert (=> b!2808730 (= e!1776111 (inv!16 (value!157759 separatorToken!99)))))

(declare-fun d!815311 () Bool)

(declare-fun c!454969 () Bool)

(assert (=> d!815311 (= c!454969 ((_ is IntegerValue!15387) (value!157759 separatorToken!99)))))

(assert (=> d!815311 (= (inv!21 (value!157759 separatorToken!99)) e!1776111)))

(declare-fun b!2808731 () Bool)

(declare-fun res!1169798 () Bool)

(declare-fun e!1776110 () Bool)

(assert (=> b!2808731 (=> res!1169798 e!1776110)))

(assert (=> b!2808731 (= res!1169798 (not ((_ is IntegerValue!15389) (value!157759 separatorToken!99))))))

(declare-fun e!1776112 () Bool)

(assert (=> b!2808731 (= e!1776112 e!1776110)))

(declare-fun b!2808732 () Bool)

(declare-fun inv!15 (TokenValue!5129) Bool)

(assert (=> b!2808732 (= e!1776110 (inv!15 (value!157759 separatorToken!99)))))

(declare-fun b!2808733 () Bool)

(declare-fun inv!17 (TokenValue!5129) Bool)

(assert (=> b!2808733 (= e!1776112 (inv!17 (value!157759 separatorToken!99)))))

(declare-fun b!2808734 () Bool)

(assert (=> b!2808734 (= e!1776111 e!1776112)))

(declare-fun c!454968 () Bool)

(assert (=> b!2808734 (= c!454968 ((_ is IntegerValue!15388) (value!157759 separatorToken!99)))))

(assert (= (and d!815311 c!454969) b!2808730))

(assert (= (and d!815311 (not c!454969)) b!2808734))

(assert (= (and b!2808734 c!454968) b!2808733))

(assert (= (and b!2808734 (not c!454968)) b!2808731))

(assert (= (and b!2808731 (not res!1169798)) b!2808732))

(declare-fun m!3238245 () Bool)

(assert (=> b!2808730 m!3238245))

(declare-fun m!3238247 () Bool)

(assert (=> b!2808732 m!3238247))

(declare-fun m!3238249 () Bool)

(assert (=> b!2808733 m!3238249))

(assert (=> b!2808652 d!815311))

(declare-fun d!815317 () Bool)

(assert (=> d!815317 (= (inv!44469 (tag!5411 (rule!7335 (h!38199 l!4240)))) (= (mod (str.len (value!157758 (tag!5411 (rule!7335 (h!38199 l!4240))))) 2) 0))))

(assert (=> b!2808651 d!815317))

(declare-fun d!815319 () Bool)

(declare-fun res!1169799 () Bool)

(declare-fun e!1776113 () Bool)

(assert (=> d!815319 (=> (not res!1169799) (not e!1776113))))

(assert (=> d!815319 (= res!1169799 (semiInverseModEq!2025 (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240)))) (toValue!6909 (transformation!4907 (rule!7335 (h!38199 l!4240))))))))

(assert (=> d!815319 (= (inv!44472 (transformation!4907 (rule!7335 (h!38199 l!4240)))) e!1776113)))

(declare-fun b!2808735 () Bool)

(assert (=> b!2808735 (= e!1776113 (equivClasses!1926 (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240)))) (toValue!6909 (transformation!4907 (rule!7335 (h!38199 l!4240))))))))

(assert (= (and d!815319 res!1169799) b!2808735))

(declare-fun m!3238251 () Bool)

(assert (=> d!815319 m!3238251))

(declare-fun m!3238253 () Bool)

(assert (=> b!2808735 m!3238253))

(assert (=> b!2808651 d!815319))

(declare-fun b!2808738 () Bool)

(declare-fun e!1776116 () Bool)

(assert (=> b!2808738 (= e!1776116 (inv!16 (value!157759 (h!38199 l!4240))))))

(declare-fun d!815321 () Bool)

(declare-fun c!454972 () Bool)

(assert (=> d!815321 (= c!454972 ((_ is IntegerValue!15387) (value!157759 (h!38199 l!4240))))))

(assert (=> d!815321 (= (inv!21 (value!157759 (h!38199 l!4240))) e!1776116)))

(declare-fun b!2808739 () Bool)

(declare-fun res!1169800 () Bool)

(declare-fun e!1776115 () Bool)

(assert (=> b!2808739 (=> res!1169800 e!1776115)))

(assert (=> b!2808739 (= res!1169800 (not ((_ is IntegerValue!15389) (value!157759 (h!38199 l!4240)))))))

(declare-fun e!1776117 () Bool)

(assert (=> b!2808739 (= e!1776117 e!1776115)))

(declare-fun b!2808740 () Bool)

(assert (=> b!2808740 (= e!1776115 (inv!15 (value!157759 (h!38199 l!4240))))))

(declare-fun b!2808741 () Bool)

(assert (=> b!2808741 (= e!1776117 (inv!17 (value!157759 (h!38199 l!4240))))))

(declare-fun b!2808742 () Bool)

(assert (=> b!2808742 (= e!1776116 e!1776117)))

(declare-fun c!454971 () Bool)

(assert (=> b!2808742 (= c!454971 ((_ is IntegerValue!15388) (value!157759 (h!38199 l!4240))))))

(assert (= (and d!815321 c!454972) b!2808738))

(assert (= (and d!815321 (not c!454972)) b!2808742))

(assert (= (and b!2808742 c!454971) b!2808741))

(assert (= (and b!2808742 (not c!454971)) b!2808739))

(assert (= (and b!2808739 (not res!1169800)) b!2808740))

(declare-fun m!3238257 () Bool)

(assert (=> b!2808738 m!3238257))

(declare-fun m!3238259 () Bool)

(assert (=> b!2808740 m!3238259))

(declare-fun m!3238261 () Bool)

(assert (=> b!2808741 m!3238261))

(assert (=> b!2808656 d!815321))

(declare-fun b!2808789 () Bool)

(declare-fun b_free!80117 () Bool)

(declare-fun b_next!80821 () Bool)

(assert (=> b!2808789 (= b_free!80117 (not b_next!80821))))

(declare-fun tp!896663 () Bool)

(declare-fun b_and!205215 () Bool)

(assert (=> b!2808789 (= tp!896663 b_and!205215)))

(declare-fun b_free!80119 () Bool)

(declare-fun b_next!80823 () Bool)

(assert (=> b!2808789 (= b_free!80119 (not b_next!80823))))

(declare-fun t!229601 () Bool)

(declare-fun tb!153449 () Bool)

(assert (=> (and b!2808789 (= (toChars!6768 (transformation!4907 (rule!7335 (h!38199 (t!229583 l!4240))))) (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240))))) t!229601) tb!153449))

(declare-fun result!190716 () Bool)

(assert (= result!190716 result!190688))

(assert (=> b!2808667 t!229601))

(declare-fun t!229603 () Bool)

(declare-fun tb!153451 () Bool)

(assert (=> (and b!2808789 (= (toChars!6768 (transformation!4907 (rule!7335 (h!38199 (t!229583 l!4240))))) (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99)))) t!229603) tb!153451))

(declare-fun result!190718 () Bool)

(assert (= result!190718 result!190700))

(assert (=> b!2808686 t!229603))

(declare-fun tp!896666 () Bool)

(declare-fun b_and!205217 () Bool)

(assert (=> b!2808789 (= tp!896666 (and (=> t!229601 result!190716) (=> t!229603 result!190718) b_and!205217))))

(declare-fun tp!896665 () Bool)

(declare-fun b!2808788 () Bool)

(declare-fun e!1776148 () Bool)

(declare-fun e!1776147 () Bool)

(assert (=> b!2808788 (= e!1776148 (and tp!896665 (inv!44469 (tag!5411 (rule!7335 (h!38199 (t!229583 l!4240))))) (inv!44472 (transformation!4907 (rule!7335 (h!38199 (t!229583 l!4240))))) e!1776147))))

(declare-fun e!1776145 () Bool)

(assert (=> b!2808655 (= tp!896624 e!1776145)))

(declare-fun b!2808786 () Bool)

(declare-fun e!1776146 () Bool)

(declare-fun tp!896664 () Bool)

(assert (=> b!2808786 (= e!1776145 (and (inv!44473 (h!38199 (t!229583 l!4240))) e!1776146 tp!896664))))

(assert (=> b!2808789 (= e!1776147 (and tp!896663 tp!896666))))

(declare-fun b!2808787 () Bool)

(declare-fun tp!896667 () Bool)

(assert (=> b!2808787 (= e!1776146 (and (inv!21 (value!157759 (h!38199 (t!229583 l!4240)))) e!1776148 tp!896667))))

(assert (= b!2808788 b!2808789))

(assert (= b!2808787 b!2808788))

(assert (= b!2808786 b!2808787))

(assert (= (and b!2808655 ((_ is Cons!32779) (t!229583 l!4240))) b!2808786))

(declare-fun m!3238273 () Bool)

(assert (=> b!2808788 m!3238273))

(declare-fun m!3238275 () Bool)

(assert (=> b!2808788 m!3238275))

(declare-fun m!3238277 () Bool)

(assert (=> b!2808786 m!3238277))

(declare-fun m!3238279 () Bool)

(assert (=> b!2808787 m!3238279))

(declare-fun b!2808804 () Bool)

(declare-fun e!1776161 () Bool)

(declare-fun tp_is_empty!14319 () Bool)

(assert (=> b!2808804 (= e!1776161 tp_is_empty!14319)))

(declare-fun b!2808807 () Bool)

(declare-fun tp!896691 () Bool)

(declare-fun tp!896690 () Bool)

(assert (=> b!2808807 (= e!1776161 (and tp!896691 tp!896690))))

(assert (=> b!2808654 (= tp!896620 e!1776161)))

(declare-fun b!2808805 () Bool)

(declare-fun tp!896689 () Bool)

(declare-fun tp!896692 () Bool)

(assert (=> b!2808805 (= e!1776161 (and tp!896689 tp!896692))))

(declare-fun b!2808806 () Bool)

(declare-fun tp!896688 () Bool)

(assert (=> b!2808806 (= e!1776161 tp!896688)))

(assert (= (and b!2808654 ((_ is ElementMatch!8277) (regex!4907 (rule!7335 separatorToken!99)))) b!2808804))

(assert (= (and b!2808654 ((_ is Concat!13407) (regex!4907 (rule!7335 separatorToken!99)))) b!2808805))

(assert (= (and b!2808654 ((_ is Star!8277) (regex!4907 (rule!7335 separatorToken!99)))) b!2808806))

(assert (= (and b!2808654 ((_ is Union!8277) (regex!4907 (rule!7335 separatorToken!99)))) b!2808807))

(declare-fun b!2808816 () Bool)

(declare-fun e!1776170 () Bool)

(declare-fun tp!896700 () Bool)

(assert (=> b!2808816 (= e!1776170 (and tp_is_empty!14319 tp!896700))))

(assert (=> b!2808652 (= tp!896622 e!1776170)))

(assert (= (and b!2808652 ((_ is Cons!32778) (originalCharacters!5639 separatorToken!99))) b!2808816))

(declare-fun b!2808817 () Bool)

(declare-fun e!1776171 () Bool)

(assert (=> b!2808817 (= e!1776171 tp_is_empty!14319)))

(declare-fun b!2808820 () Bool)

(declare-fun tp!896704 () Bool)

(declare-fun tp!896703 () Bool)

(assert (=> b!2808820 (= e!1776171 (and tp!896704 tp!896703))))

(assert (=> b!2808651 (= tp!896623 e!1776171)))

(declare-fun b!2808818 () Bool)

(declare-fun tp!896702 () Bool)

(declare-fun tp!896705 () Bool)

(assert (=> b!2808818 (= e!1776171 (and tp!896702 tp!896705))))

(declare-fun b!2808819 () Bool)

(declare-fun tp!896701 () Bool)

(assert (=> b!2808819 (= e!1776171 tp!896701)))

(assert (= (and b!2808651 ((_ is ElementMatch!8277) (regex!4907 (rule!7335 (h!38199 l!4240))))) b!2808817))

(assert (= (and b!2808651 ((_ is Concat!13407) (regex!4907 (rule!7335 (h!38199 l!4240))))) b!2808818))

(assert (= (and b!2808651 ((_ is Star!8277) (regex!4907 (rule!7335 (h!38199 l!4240))))) b!2808819))

(assert (= (and b!2808651 ((_ is Union!8277) (regex!4907 (rule!7335 (h!38199 l!4240))))) b!2808820))

(declare-fun b!2808821 () Bool)

(declare-fun e!1776172 () Bool)

(declare-fun tp!896706 () Bool)

(assert (=> b!2808821 (= e!1776172 (and tp_is_empty!14319 tp!896706))))

(assert (=> b!2808656 (= tp!896625 e!1776172)))

(assert (= (and b!2808656 ((_ is Cons!32778) (originalCharacters!5639 (h!38199 l!4240)))) b!2808821))

(declare-fun b_lambda!84019 () Bool)

(assert (= b_lambda!84011 (or (and b!2808657 b_free!80111 (= (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99))) (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240)))))) (and b!2808658 b_free!80115) (and b!2808789 b_free!80119 (= (toChars!6768 (transformation!4907 (rule!7335 (h!38199 (t!229583 l!4240))))) (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240)))))) b_lambda!84019)))

(declare-fun b_lambda!84021 () Bool)

(assert (= b_lambda!84015 (or (and b!2808657 b_free!80111) (and b!2808658 b_free!80115 (= (toChars!6768 (transformation!4907 (rule!7335 (h!38199 l!4240)))) (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99))))) (and b!2808789 b_free!80119 (= (toChars!6768 (transformation!4907 (rule!7335 (h!38199 (t!229583 l!4240))))) (toChars!6768 (transformation!4907 (rule!7335 separatorToken!99))))) b_lambda!84021)))

(check-sat (not b!2808741) b_and!205209 tp_is_empty!14319 (not b!2808685) (not b!2808689) (not b!2808686) (not b_next!80821) (not b_next!80823) (not b!2808740) (not b_lambda!84021) (not b!2808818) b_and!205195 (not tb!153441) (not b!2808787) (not b!2808707) b_and!205207 (not b!2808732) (not b_next!80819) (not b!2808805) (not d!815319) (not b!2808668) (not b!2808687) (not b!2808733) (not tb!153433) (not b!2808816) (not b!2808667) (not b!2808806) (not b!2808819) (not b!2808821) (not b!2808807) (not b!2808730) (not d!815303) (not b_next!80815) b_and!205191 (not b!2808705) (not b!2808735) (not d!815299) b_and!205215 (not b!2808786) (not b_lambda!84019) (not b_next!80817) b_and!205217 (not b!2808788) (not b!2808679) (not b_next!80813) (not b!2808738) (not d!815291) (not b!2808820))
(check-sat b_and!205207 (not b_next!80819) b_and!205209 (not b_next!80815) b_and!205191 b_and!205215 (not b_next!80821) (not b_next!80823) b_and!205195 (not b_next!80813) (not b_next!80817) b_and!205217)
