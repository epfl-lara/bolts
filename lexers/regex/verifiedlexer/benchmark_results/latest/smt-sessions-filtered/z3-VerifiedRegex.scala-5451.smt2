; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276556 () Bool)

(assert start!276556)

(declare-fun b!2842653 () Bool)

(declare-fun b_free!82505 () Bool)

(declare-fun b_next!83209 () Bool)

(assert (=> b!2842653 (= b_free!82505 (not b_next!83209))))

(declare-fun tp!910850 () Bool)

(declare-fun b_and!208627 () Bool)

(assert (=> b!2842653 (= tp!910850 b_and!208627)))

(declare-fun b_free!82507 () Bool)

(declare-fun b_next!83211 () Bool)

(assert (=> b!2842653 (= b_free!82507 (not b_next!83211))))

(declare-fun tp!910852 () Bool)

(declare-fun b_and!208629 () Bool)

(assert (=> b!2842653 (= tp!910852 b_and!208629)))

(declare-fun b!2842657 () Bool)

(declare-fun b_free!82509 () Bool)

(declare-fun b_next!83213 () Bool)

(assert (=> b!2842657 (= b_free!82509 (not b_next!83213))))

(declare-fun tp!910849 () Bool)

(declare-fun b_and!208631 () Bool)

(assert (=> b!2842657 (= tp!910849 b_and!208631)))

(declare-fun b_free!82511 () Bool)

(declare-fun b_next!83215 () Bool)

(assert (=> b!2842657 (= b_free!82511 (not b_next!83215))))

(declare-fun tp!910851 () Bool)

(declare-fun b_and!208633 () Bool)

(assert (=> b!2842657 (= tp!910851 b_and!208633)))

(declare-fun b!2842655 () Bool)

(declare-fun b_free!82513 () Bool)

(declare-fun b_next!83217 () Bool)

(assert (=> b!2842655 (= b_free!82513 (not b_next!83217))))

(declare-fun tp!910842 () Bool)

(declare-fun b_and!208635 () Bool)

(assert (=> b!2842655 (= tp!910842 b_and!208635)))

(declare-fun b_free!82515 () Bool)

(declare-fun b_next!83219 () Bool)

(assert (=> b!2842655 (= b_free!82515 (not b_next!83219))))

(declare-fun tp!910844 () Bool)

(declare-fun b_and!208637 () Bool)

(assert (=> b!2842655 (= tp!910844 b_and!208637)))

(declare-fun b!2842644 () Bool)

(declare-fun res!1182584 () Bool)

(declare-fun e!1800989 () Bool)

(assert (=> b!2842644 (=> (not res!1182584) (not e!1800989))))

(declare-datatypes ((LexerInterface!4656 0))(
  ( (LexerInterfaceExt!4653 (__x!22330 Int)) (Lexer!4654) )
))
(declare-fun thiss!11361 () LexerInterface!4656)

(declare-datatypes ((List!33808 0))(
  ( (Nil!33684) (Cons!33684 (h!39104 (_ BitVec 16)) (t!232699 List!33808)) )
))
(declare-datatypes ((TokenValue!5296 0))(
  ( (FloatLiteralValue!10592 (text!37517 List!33808)) (TokenValueExt!5295 (__x!22331 Int)) (Broken!26480 (value!162757 List!33808)) (Object!5419) (End!5296) (Def!5296) (Underscore!5296) (Match!5296) (Else!5296) (Error!5296) (Case!5296) (If!5296) (Extends!5296) (Abstract!5296) (Class!5296) (Val!5296) (DelimiterValue!10592 (del!5356 List!33808)) (KeywordValue!5302 (value!162758 List!33808)) (CommentValue!10592 (value!162759 List!33808)) (WhitespaceValue!10592 (value!162760 List!33808)) (IndentationValue!5296 (value!162761 List!33808)) (String!37045) (Int32!5296) (Broken!26481 (value!162762 List!33808)) (Boolean!5297) (Unit!47496) (OperatorValue!5299 (op!5356 List!33808)) (IdentifierValue!10592 (value!162763 List!33808)) (IdentifierValue!10593 (value!162764 List!33808)) (WhitespaceValue!10593 (value!162765 List!33808)) (True!10592) (False!10592) (Broken!26482 (value!162766 List!33808)) (Broken!26483 (value!162767 List!33808)) (True!10593) (RightBrace!5296) (RightBracket!5296) (Colon!5296) (Null!5296) (Comma!5296) (LeftBracket!5296) (False!10593) (LeftBrace!5296) (ImaginaryLiteralValue!5296 (text!37518 List!33808)) (StringLiteralValue!15888 (value!162768 List!33808)) (EOFValue!5296 (value!162769 List!33808)) (IdentValue!5296 (value!162770 List!33808)) (DelimiterValue!10593 (value!162771 List!33808)) (DedentValue!5296 (value!162772 List!33808)) (NewLineValue!5296 (value!162773 List!33808)) (IntegerValue!15888 (value!162774 (_ BitVec 32)) (text!37519 List!33808)) (IntegerValue!15889 (value!162775 Int) (text!37520 List!33808)) (Times!5296) (Or!5296) (Equal!5296) (Minus!5296) (Broken!26484 (value!162776 List!33808)) (And!5296) (Div!5296) (LessEqual!5296) (Mod!5296) (Concat!13753) (Not!5296) (Plus!5296) (SpaceValue!5296 (value!162777 List!33808)) (IntegerValue!15890 (value!162778 Int) (text!37521 List!33808)) (StringLiteralValue!15889 (text!37522 List!33808)) (FloatLiteralValue!10593 (text!37523 List!33808)) (BytesLiteralValue!5296 (value!162779 List!33808)) (CommentValue!10593 (value!162780 List!33808)) (StringLiteralValue!15890 (value!162781 List!33808)) (ErrorTokenValue!5296 (msg!5357 List!33808)) )
))
(declare-datatypes ((C!17096 0))(
  ( (C!17097 (val!10582 Int)) )
))
(declare-datatypes ((List!33809 0))(
  ( (Nil!33685) (Cons!33685 (h!39105 C!17096) (t!232700 List!33809)) )
))
(declare-datatypes ((IArray!20901 0))(
  ( (IArray!20902 (innerList!10508 List!33809)) )
))
(declare-datatypes ((Conc!10448 0))(
  ( (Node!10448 (left!25383 Conc!10448) (right!25713 Conc!10448) (csize!21126 Int) (cheight!10659 Int)) (Leaf!15900 (xs!13560 IArray!20901) (csize!21127 Int)) (Empty!10448) )
))
(declare-datatypes ((BalanceConc!20534 0))(
  ( (BalanceConc!20535 (c!458814 Conc!10448)) )
))
(declare-datatypes ((String!37046 0))(
  ( (String!37047 (value!162782 String)) )
))
(declare-datatypes ((Regex!8457 0))(
  ( (ElementMatch!8457 (c!458815 C!17096)) (Concat!13754 (regOne!17426 Regex!8457) (regTwo!17426 Regex!8457)) (EmptyExpr!8457) (Star!8457 (reg!8786 Regex!8457)) (EmptyLang!8457) (Union!8457 (regOne!17427 Regex!8457) (regTwo!17427 Regex!8457)) )
))
(declare-datatypes ((TokenValueInjection!10020 0))(
  ( (TokenValueInjection!10021 (toValue!7112 Int) (toChars!6971 Int)) )
))
(declare-datatypes ((Rule!9932 0))(
  ( (Rule!9933 (regex!5066 Regex!8457) (tag!5570 String!37046) (isSeparator!5066 Bool) (transformation!5066 TokenValueInjection!10020)) )
))
(declare-datatypes ((Token!9534 0))(
  ( (Token!9535 (value!162783 TokenValue!5296) (rule!7494 Rule!9932) (size!26152 Int) (originalCharacters!5798 List!33809)) )
))
(declare-fun t2!27 () Token!9534)

(declare-datatypes ((List!33810 0))(
  ( (Nil!33686) (Cons!33686 (h!39106 Rule!9932) (t!232701 List!33810)) )
))
(declare-fun rules!1139 () List!33810)

(declare-fun rulesProduceIndividualToken!2167 (LexerInterface!4656 List!33810 Token!9534) Bool)

(assert (=> b!2842644 (= res!1182584 (rulesProduceIndividualToken!2167 thiss!11361 rules!1139 t2!27))))

(declare-fun b!2842645 () Bool)

(declare-fun e!1800980 () Bool)

(declare-fun lt!1011836 () BalanceConc!20534)

(declare-fun size!26153 (BalanceConc!20534) Int)

(assert (=> b!2842645 (= e!1800980 (>= 0 (size!26153 lt!1011836)))))

(declare-fun lt!1011835 () BalanceConc!20534)

(declare-fun t1!27 () Token!9534)

(declare-fun charsOf!3116 (Token!9534) BalanceConc!20534)

(assert (=> b!2842645 (= lt!1011835 (charsOf!3116 t1!27))))

(declare-fun lt!1011837 () Regex!8457)

(declare-fun rulesRegex!1002 (LexerInterface!4656 List!33810) Regex!8457)

(assert (=> b!2842645 (= lt!1011837 (rulesRegex!1002 thiss!11361 rules!1139))))

(declare-fun b!2842646 () Bool)

(declare-fun tp!910843 () Bool)

(declare-fun e!1800977 () Bool)

(declare-fun e!1800981 () Bool)

(declare-fun inv!21 (TokenValue!5296) Bool)

(assert (=> b!2842646 (= e!1800981 (and (inv!21 (value!162783 t1!27)) e!1800977 tp!910843))))

(declare-fun b!2842647 () Bool)

(assert (=> b!2842647 (= e!1800989 e!1800980)))

(declare-fun res!1182582 () Bool)

(assert (=> b!2842647 (=> (not res!1182582) (not e!1800980))))

(declare-fun isEmpty!18540 (BalanceConc!20534) Bool)

(assert (=> b!2842647 (= res!1182582 (not (isEmpty!18540 lt!1011836)))))

(assert (=> b!2842647 (= lt!1011836 (charsOf!3116 t2!27))))

(declare-fun b!2842648 () Bool)

(declare-fun res!1182585 () Bool)

(assert (=> b!2842648 (=> (not res!1182585) (not e!1800989))))

(declare-fun isEmpty!18541 (List!33810) Bool)

(assert (=> b!2842648 (= res!1182585 (not (isEmpty!18541 rules!1139)))))

(declare-fun e!1800982 () Bool)

(declare-fun tp!910846 () Bool)

(declare-fun b!2842649 () Bool)

(declare-fun e!1800985 () Bool)

(assert (=> b!2842649 (= e!1800985 (and (inv!21 (value!162783 t2!27)) e!1800982 tp!910846))))

(declare-fun e!1800978 () Bool)

(declare-fun tp!910845 () Bool)

(declare-fun b!2842650 () Bool)

(declare-fun inv!45677 (String!37046) Bool)

(declare-fun inv!45680 (TokenValueInjection!10020) Bool)

(assert (=> b!2842650 (= e!1800977 (and tp!910845 (inv!45677 (tag!5570 (rule!7494 t1!27))) (inv!45680 (transformation!5066 (rule!7494 t1!27))) e!1800978))))

(declare-fun b!2842651 () Bool)

(declare-fun e!1800987 () Bool)

(declare-fun e!1800979 () Bool)

(declare-fun tp!910848 () Bool)

(assert (=> b!2842651 (= e!1800987 (and e!1800979 tp!910848))))

(declare-fun tp!910841 () Bool)

(declare-fun b!2842652 () Bool)

(declare-fun e!1800975 () Bool)

(assert (=> b!2842652 (= e!1800982 (and tp!910841 (inv!45677 (tag!5570 (rule!7494 t2!27))) (inv!45680 (transformation!5066 (rule!7494 t2!27))) e!1800975))))

(declare-fun e!1800974 () Bool)

(assert (=> b!2842653 (= e!1800974 (and tp!910850 tp!910852))))

(assert (=> b!2842655 (= e!1800975 (and tp!910842 tp!910844))))

(declare-fun b!2842656 () Bool)

(declare-fun res!1182581 () Bool)

(assert (=> b!2842656 (=> (not res!1182581) (not e!1800989))))

(declare-fun rulesInvariant!4072 (LexerInterface!4656 List!33810) Bool)

(assert (=> b!2842656 (= res!1182581 (rulesInvariant!4072 thiss!11361 rules!1139))))

(assert (=> b!2842657 (= e!1800978 (and tp!910849 tp!910851))))

(declare-fun b!2842658 () Bool)

(declare-fun tp!910847 () Bool)

(assert (=> b!2842658 (= e!1800979 (and tp!910847 (inv!45677 (tag!5570 (h!39106 rules!1139))) (inv!45680 (transformation!5066 (h!39106 rules!1139))) e!1800974))))

(declare-fun b!2842654 () Bool)

(declare-fun res!1182583 () Bool)

(assert (=> b!2842654 (=> (not res!1182583) (not e!1800989))))

(assert (=> b!2842654 (= res!1182583 (rulesProduceIndividualToken!2167 thiss!11361 rules!1139 t1!27))))

(declare-fun res!1182580 () Bool)

(assert (=> start!276556 (=> (not res!1182580) (not e!1800989))))

(get-info :version)

(assert (=> start!276556 (= res!1182580 ((_ is Lexer!4654) thiss!11361))))

(assert (=> start!276556 e!1800989))

(assert (=> start!276556 true))

(assert (=> start!276556 e!1800987))

(declare-fun inv!45681 (Token!9534) Bool)

(assert (=> start!276556 (and (inv!45681 t1!27) e!1800981)))

(assert (=> start!276556 (and (inv!45681 t2!27) e!1800985)))

(assert (= (and start!276556 res!1182580) b!2842648))

(assert (= (and b!2842648 res!1182585) b!2842656))

(assert (= (and b!2842656 res!1182581) b!2842654))

(assert (= (and b!2842654 res!1182583) b!2842644))

(assert (= (and b!2842644 res!1182584) b!2842647))

(assert (= (and b!2842647 res!1182582) b!2842645))

(assert (= b!2842658 b!2842653))

(assert (= b!2842651 b!2842658))

(assert (= (and start!276556 ((_ is Cons!33686) rules!1139)) b!2842651))

(assert (= b!2842650 b!2842657))

(assert (= b!2842646 b!2842650))

(assert (= start!276556 b!2842646))

(assert (= b!2842652 b!2842655))

(assert (= b!2842649 b!2842652))

(assert (= start!276556 b!2842649))

(declare-fun m!3270385 () Bool)

(assert (=> b!2842650 m!3270385))

(declare-fun m!3270387 () Bool)

(assert (=> b!2842650 m!3270387))

(declare-fun m!3270389 () Bool)

(assert (=> b!2842647 m!3270389))

(declare-fun m!3270391 () Bool)

(assert (=> b!2842647 m!3270391))

(declare-fun m!3270393 () Bool)

(assert (=> b!2842654 m!3270393))

(declare-fun m!3270395 () Bool)

(assert (=> b!2842658 m!3270395))

(declare-fun m!3270397 () Bool)

(assert (=> b!2842658 m!3270397))

(declare-fun m!3270399 () Bool)

(assert (=> b!2842649 m!3270399))

(declare-fun m!3270401 () Bool)

(assert (=> start!276556 m!3270401))

(declare-fun m!3270403 () Bool)

(assert (=> start!276556 m!3270403))

(declare-fun m!3270405 () Bool)

(assert (=> b!2842644 m!3270405))

(declare-fun m!3270407 () Bool)

(assert (=> b!2842645 m!3270407))

(declare-fun m!3270409 () Bool)

(assert (=> b!2842645 m!3270409))

(declare-fun m!3270411 () Bool)

(assert (=> b!2842645 m!3270411))

(declare-fun m!3270413 () Bool)

(assert (=> b!2842648 m!3270413))

(declare-fun m!3270415 () Bool)

(assert (=> b!2842652 m!3270415))

(declare-fun m!3270417 () Bool)

(assert (=> b!2842652 m!3270417))

(declare-fun m!3270419 () Bool)

(assert (=> b!2842646 m!3270419))

(declare-fun m!3270421 () Bool)

(assert (=> b!2842656 m!3270421))

(check-sat (not b_next!83219) (not b!2842649) (not b!2842645) (not b!2842651) b_and!208627 b_and!208633 (not b!2842646) (not b!2842654) (not b!2842658) b_and!208637 b_and!208635 b_and!208631 (not b!2842648) (not b!2842650) (not b!2842652) (not b_next!83211) (not b_next!83209) (not b_next!83213) (not start!276556) (not b!2842647) (not b!2842644) (not b_next!83217) (not b_next!83215) (not b!2842656) b_and!208629)
(check-sat (not b_next!83219) b_and!208627 b_and!208633 (not b_next!83213) (not b_next!83217) b_and!208637 b_and!208635 b_and!208631 (not b_next!83211) (not b_next!83209) (not b_next!83215) b_and!208629)
(get-model)

(declare-fun d!824222 () Bool)

(assert (=> d!824222 (= (inv!45677 (tag!5570 (rule!7494 t1!27))) (= (mod (str.len (value!162782 (tag!5570 (rule!7494 t1!27)))) 2) 0))))

(assert (=> b!2842650 d!824222))

(declare-fun d!824224 () Bool)

(declare-fun res!1182599 () Bool)

(declare-fun e!1800995 () Bool)

(assert (=> d!824224 (=> (not res!1182599) (not e!1800995))))

(declare-fun semiInverseModEq!2112 (Int Int) Bool)

(assert (=> d!824224 (= res!1182599 (semiInverseModEq!2112 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (toValue!7112 (transformation!5066 (rule!7494 t1!27)))))))

(assert (=> d!824224 (= (inv!45680 (transformation!5066 (rule!7494 t1!27))) e!1800995)))

(declare-fun b!2842664 () Bool)

(declare-fun equivClasses!2011 (Int Int) Bool)

(assert (=> b!2842664 (= e!1800995 (equivClasses!2011 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (toValue!7112 (transformation!5066 (rule!7494 t1!27)))))))

(assert (= (and d!824224 res!1182599) b!2842664))

(declare-fun m!3270427 () Bool)

(assert (=> d!824224 m!3270427))

(declare-fun m!3270429 () Bool)

(assert (=> b!2842664 m!3270429))

(assert (=> b!2842650 d!824224))

(declare-fun b!2842675 () Bool)

(declare-fun res!1182602 () Bool)

(declare-fun e!1801002 () Bool)

(assert (=> b!2842675 (=> res!1182602 e!1801002)))

(assert (=> b!2842675 (= res!1182602 (not ((_ is IntegerValue!15890) (value!162783 t2!27))))))

(declare-fun e!1801003 () Bool)

(assert (=> b!2842675 (= e!1801003 e!1801002)))

(declare-fun b!2842676 () Bool)

(declare-fun inv!17 (TokenValue!5296) Bool)

(assert (=> b!2842676 (= e!1801003 (inv!17 (value!162783 t2!27)))))

(declare-fun b!2842677 () Bool)

(declare-fun e!1801004 () Bool)

(assert (=> b!2842677 (= e!1801004 e!1801003)))

(declare-fun c!458821 () Bool)

(assert (=> b!2842677 (= c!458821 ((_ is IntegerValue!15889) (value!162783 t2!27)))))

(declare-fun b!2842678 () Bool)

(declare-fun inv!16 (TokenValue!5296) Bool)

(assert (=> b!2842678 (= e!1801004 (inv!16 (value!162783 t2!27)))))

(declare-fun b!2842679 () Bool)

(declare-fun inv!15 (TokenValue!5296) Bool)

(assert (=> b!2842679 (= e!1801002 (inv!15 (value!162783 t2!27)))))

(declare-fun d!824226 () Bool)

(declare-fun c!458820 () Bool)

(assert (=> d!824226 (= c!458820 ((_ is IntegerValue!15888) (value!162783 t2!27)))))

(assert (=> d!824226 (= (inv!21 (value!162783 t2!27)) e!1801004)))

(assert (= (and d!824226 c!458820) b!2842678))

(assert (= (and d!824226 (not c!458820)) b!2842677))

(assert (= (and b!2842677 c!458821) b!2842676))

(assert (= (and b!2842677 (not c!458821)) b!2842675))

(assert (= (and b!2842675 (not res!1182602)) b!2842679))

(declare-fun m!3270431 () Bool)

(assert (=> b!2842676 m!3270431))

(declare-fun m!3270433 () Bool)

(assert (=> b!2842678 m!3270433))

(declare-fun m!3270435 () Bool)

(assert (=> b!2842679 m!3270435))

(assert (=> b!2842649 d!824226))

(declare-fun d!824228 () Bool)

(declare-fun res!1182607 () Bool)

(declare-fun e!1801007 () Bool)

(assert (=> d!824228 (=> (not res!1182607) (not e!1801007))))

(declare-fun isEmpty!18542 (List!33809) Bool)

(assert (=> d!824228 (= res!1182607 (not (isEmpty!18542 (originalCharacters!5798 t1!27))))))

(assert (=> d!824228 (= (inv!45681 t1!27) e!1801007)))

(declare-fun b!2842684 () Bool)

(declare-fun res!1182608 () Bool)

(assert (=> b!2842684 (=> (not res!1182608) (not e!1801007))))

(declare-fun list!12548 (BalanceConc!20534) List!33809)

(declare-fun dynLambda!14173 (Int TokenValue!5296) BalanceConc!20534)

(assert (=> b!2842684 (= res!1182608 (= (originalCharacters!5798 t1!27) (list!12548 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27)))))))

(declare-fun b!2842685 () Bool)

(declare-fun size!26155 (List!33809) Int)

(assert (=> b!2842685 (= e!1801007 (= (size!26152 t1!27) (size!26155 (originalCharacters!5798 t1!27))))))

(assert (= (and d!824228 res!1182607) b!2842684))

(assert (= (and b!2842684 res!1182608) b!2842685))

(declare-fun b_lambda!85455 () Bool)

(assert (=> (not b_lambda!85455) (not b!2842684)))

(declare-fun t!232703 () Bool)

(declare-fun tb!154989 () Bool)

(assert (=> (and b!2842653 (= (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toChars!6971 (transformation!5066 (rule!7494 t1!27)))) t!232703) tb!154989))

(declare-fun b!2842690 () Bool)

(declare-fun e!1801010 () Bool)

(declare-fun tp!910855 () Bool)

(declare-fun inv!45682 (Conc!10448) Bool)

(assert (=> b!2842690 (= e!1801010 (and (inv!45682 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27)))) tp!910855))))

(declare-fun result!193398 () Bool)

(declare-fun inv!45683 (BalanceConc!20534) Bool)

(assert (=> tb!154989 (= result!193398 (and (inv!45683 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27))) e!1801010))))

(assert (= tb!154989 b!2842690))

(declare-fun m!3270437 () Bool)

(assert (=> b!2842690 m!3270437))

(declare-fun m!3270439 () Bool)

(assert (=> tb!154989 m!3270439))

(assert (=> b!2842684 t!232703))

(declare-fun b_and!208639 () Bool)

(assert (= b_and!208629 (and (=> t!232703 result!193398) b_and!208639)))

(declare-fun t!232705 () Bool)

(declare-fun tb!154991 () Bool)

(assert (=> (and b!2842657 (= (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (toChars!6971 (transformation!5066 (rule!7494 t1!27)))) t!232705) tb!154991))

(declare-fun result!193402 () Bool)

(assert (= result!193402 result!193398))

(assert (=> b!2842684 t!232705))

(declare-fun b_and!208641 () Bool)

(assert (= b_and!208633 (and (=> t!232705 result!193402) b_and!208641)))

(declare-fun t!232707 () Bool)

(declare-fun tb!154993 () Bool)

(assert (=> (and b!2842655 (= (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (toChars!6971 (transformation!5066 (rule!7494 t1!27)))) t!232707) tb!154993))

(declare-fun result!193404 () Bool)

(assert (= result!193404 result!193398))

(assert (=> b!2842684 t!232707))

(declare-fun b_and!208643 () Bool)

(assert (= b_and!208637 (and (=> t!232707 result!193404) b_and!208643)))

(declare-fun m!3270441 () Bool)

(assert (=> d!824228 m!3270441))

(declare-fun m!3270443 () Bool)

(assert (=> b!2842684 m!3270443))

(assert (=> b!2842684 m!3270443))

(declare-fun m!3270445 () Bool)

(assert (=> b!2842684 m!3270445))

(declare-fun m!3270447 () Bool)

(assert (=> b!2842685 m!3270447))

(assert (=> start!276556 d!824228))

(declare-fun d!824230 () Bool)

(declare-fun res!1182609 () Bool)

(declare-fun e!1801011 () Bool)

(assert (=> d!824230 (=> (not res!1182609) (not e!1801011))))

(assert (=> d!824230 (= res!1182609 (not (isEmpty!18542 (originalCharacters!5798 t2!27))))))

(assert (=> d!824230 (= (inv!45681 t2!27) e!1801011)))

(declare-fun b!2842691 () Bool)

(declare-fun res!1182610 () Bool)

(assert (=> b!2842691 (=> (not res!1182610) (not e!1801011))))

(assert (=> b!2842691 (= res!1182610 (= (originalCharacters!5798 t2!27) (list!12548 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27)))))))

(declare-fun b!2842692 () Bool)

(assert (=> b!2842692 (= e!1801011 (= (size!26152 t2!27) (size!26155 (originalCharacters!5798 t2!27))))))

(assert (= (and d!824230 res!1182609) b!2842691))

(assert (= (and b!2842691 res!1182610) b!2842692))

(declare-fun b_lambda!85457 () Bool)

(assert (=> (not b_lambda!85457) (not b!2842691)))

(declare-fun tb!154995 () Bool)

(declare-fun t!232709 () Bool)

(assert (=> (and b!2842653 (= (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toChars!6971 (transformation!5066 (rule!7494 t2!27)))) t!232709) tb!154995))

(declare-fun b!2842693 () Bool)

(declare-fun e!1801012 () Bool)

(declare-fun tp!910856 () Bool)

(assert (=> b!2842693 (= e!1801012 (and (inv!45682 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27)))) tp!910856))))

(declare-fun result!193406 () Bool)

(assert (=> tb!154995 (= result!193406 (and (inv!45683 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27))) e!1801012))))

(assert (= tb!154995 b!2842693))

(declare-fun m!3270449 () Bool)

(assert (=> b!2842693 m!3270449))

(declare-fun m!3270451 () Bool)

(assert (=> tb!154995 m!3270451))

(assert (=> b!2842691 t!232709))

(declare-fun b_and!208645 () Bool)

(assert (= b_and!208639 (and (=> t!232709 result!193406) b_and!208645)))

(declare-fun tb!154997 () Bool)

(declare-fun t!232711 () Bool)

(assert (=> (and b!2842657 (= (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (toChars!6971 (transformation!5066 (rule!7494 t2!27)))) t!232711) tb!154997))

(declare-fun result!193408 () Bool)

(assert (= result!193408 result!193406))

(assert (=> b!2842691 t!232711))

(declare-fun b_and!208647 () Bool)

(assert (= b_and!208641 (and (=> t!232711 result!193408) b_and!208647)))

(declare-fun t!232713 () Bool)

(declare-fun tb!154999 () Bool)

(assert (=> (and b!2842655 (= (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (toChars!6971 (transformation!5066 (rule!7494 t2!27)))) t!232713) tb!154999))

(declare-fun result!193410 () Bool)

(assert (= result!193410 result!193406))

(assert (=> b!2842691 t!232713))

(declare-fun b_and!208649 () Bool)

(assert (= b_and!208643 (and (=> t!232713 result!193410) b_and!208649)))

(declare-fun m!3270453 () Bool)

(assert (=> d!824230 m!3270453))

(declare-fun m!3270455 () Bool)

(assert (=> b!2842691 m!3270455))

(assert (=> b!2842691 m!3270455))

(declare-fun m!3270457 () Bool)

(assert (=> b!2842691 m!3270457))

(declare-fun m!3270459 () Bool)

(assert (=> b!2842692 m!3270459))

(assert (=> start!276556 d!824230))

(declare-fun d!824232 () Bool)

(assert (=> d!824232 (= (inv!45677 (tag!5570 (rule!7494 t2!27))) (= (mod (str.len (value!162782 (tag!5570 (rule!7494 t2!27)))) 2) 0))))

(assert (=> b!2842652 d!824232))

(declare-fun d!824234 () Bool)

(declare-fun res!1182611 () Bool)

(declare-fun e!1801013 () Bool)

(assert (=> d!824234 (=> (not res!1182611) (not e!1801013))))

(assert (=> d!824234 (= res!1182611 (semiInverseModEq!2112 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (toValue!7112 (transformation!5066 (rule!7494 t2!27)))))))

(assert (=> d!824234 (= (inv!45680 (transformation!5066 (rule!7494 t2!27))) e!1801013)))

(declare-fun b!2842694 () Bool)

(assert (=> b!2842694 (= e!1801013 (equivClasses!2011 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (toValue!7112 (transformation!5066 (rule!7494 t2!27)))))))

(assert (= (and d!824234 res!1182611) b!2842694))

(declare-fun m!3270461 () Bool)

(assert (=> d!824234 m!3270461))

(declare-fun m!3270463 () Bool)

(assert (=> b!2842694 m!3270463))

(assert (=> b!2842652 d!824234))

(declare-fun d!824236 () Bool)

(declare-fun lt!1011840 () Int)

(assert (=> d!824236 (= lt!1011840 (size!26155 (list!12548 lt!1011836)))))

(declare-fun size!26156 (Conc!10448) Int)

(assert (=> d!824236 (= lt!1011840 (size!26156 (c!458814 lt!1011836)))))

(assert (=> d!824236 (= (size!26153 lt!1011836) lt!1011840)))

(declare-fun bs!518996 () Bool)

(assert (= bs!518996 d!824236))

(declare-fun m!3270465 () Bool)

(assert (=> bs!518996 m!3270465))

(assert (=> bs!518996 m!3270465))

(declare-fun m!3270467 () Bool)

(assert (=> bs!518996 m!3270467))

(declare-fun m!3270469 () Bool)

(assert (=> bs!518996 m!3270469))

(assert (=> b!2842645 d!824236))

(declare-fun d!824238 () Bool)

(declare-fun lt!1011843 () BalanceConc!20534)

(assert (=> d!824238 (= (list!12548 lt!1011843) (originalCharacters!5798 t1!27))))

(assert (=> d!824238 (= lt!1011843 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27)))))

(assert (=> d!824238 (= (charsOf!3116 t1!27) lt!1011843)))

(declare-fun b_lambda!85459 () Bool)

(assert (=> (not b_lambda!85459) (not d!824238)))

(assert (=> d!824238 t!232703))

(declare-fun b_and!208651 () Bool)

(assert (= b_and!208645 (and (=> t!232703 result!193398) b_and!208651)))

(assert (=> d!824238 t!232705))

(declare-fun b_and!208653 () Bool)

(assert (= b_and!208647 (and (=> t!232705 result!193402) b_and!208653)))

(assert (=> d!824238 t!232707))

(declare-fun b_and!208655 () Bool)

(assert (= b_and!208649 (and (=> t!232707 result!193404) b_and!208655)))

(declare-fun m!3270471 () Bool)

(assert (=> d!824238 m!3270471))

(assert (=> d!824238 m!3270443))

(assert (=> b!2842645 d!824238))

(declare-fun d!824240 () Bool)

(declare-datatypes ((Unit!47497 0))(
  ( (Unit!47498) )
))
(declare-fun lt!1011846 () Unit!47497)

(declare-fun lemma!563 (List!33810 LexerInterface!4656 List!33810) Unit!47497)

(assert (=> d!824240 (= lt!1011846 (lemma!563 rules!1139 thiss!11361 rules!1139))))

(declare-fun lambda!104282 () Int)

(declare-datatypes ((List!33813 0))(
  ( (Nil!33689) (Cons!33689 (h!39109 Regex!8457) (t!232738 List!33813)) )
))
(declare-fun generalisedUnion!539 (List!33813) Regex!8457)

(declare-fun map!7230 (List!33810 Int) List!33813)

(assert (=> d!824240 (= (rulesRegex!1002 thiss!11361 rules!1139) (generalisedUnion!539 (map!7230 rules!1139 lambda!104282)))))

(declare-fun bs!518997 () Bool)

(assert (= bs!518997 d!824240))

(declare-fun m!3270473 () Bool)

(assert (=> bs!518997 m!3270473))

(declare-fun m!3270475 () Bool)

(assert (=> bs!518997 m!3270475))

(assert (=> bs!518997 m!3270475))

(declare-fun m!3270477 () Bool)

(assert (=> bs!518997 m!3270477))

(assert (=> b!2842645 d!824240))

(declare-fun d!824242 () Bool)

(declare-fun res!1182614 () Bool)

(declare-fun e!1801016 () Bool)

(assert (=> d!824242 (=> (not res!1182614) (not e!1801016))))

(declare-fun rulesValid!1882 (LexerInterface!4656 List!33810) Bool)

(assert (=> d!824242 (= res!1182614 (rulesValid!1882 thiss!11361 rules!1139))))

(assert (=> d!824242 (= (rulesInvariant!4072 thiss!11361 rules!1139) e!1801016)))

(declare-fun b!2842697 () Bool)

(declare-datatypes ((List!33814 0))(
  ( (Nil!33690) (Cons!33690 (h!39110 String!37046) (t!232739 List!33814)) )
))
(declare-fun noDuplicateTag!1878 (LexerInterface!4656 List!33810 List!33814) Bool)

(assert (=> b!2842697 (= e!1801016 (noDuplicateTag!1878 thiss!11361 rules!1139 Nil!33690))))

(assert (= (and d!824242 res!1182614) b!2842697))

(declare-fun m!3270479 () Bool)

(assert (=> d!824242 m!3270479))

(declare-fun m!3270481 () Bool)

(assert (=> b!2842697 m!3270481))

(assert (=> b!2842656 d!824242))

(declare-fun d!824244 () Bool)

(declare-fun lt!1011872 () Bool)

(declare-fun e!1801055 () Bool)

(assert (=> d!824244 (= lt!1011872 e!1801055)))

(declare-fun res!1182651 () Bool)

(assert (=> d!824244 (=> (not res!1182651) (not e!1801055))))

(declare-datatypes ((List!33815 0))(
  ( (Nil!33691) (Cons!33691 (h!39111 Token!9534) (t!232740 List!33815)) )
))
(declare-datatypes ((IArray!20905 0))(
  ( (IArray!20906 (innerList!10510 List!33815)) )
))
(declare-datatypes ((Conc!10450 0))(
  ( (Node!10450 (left!25385 Conc!10450) (right!25715 Conc!10450) (csize!21130 Int) (cheight!10661 Int)) (Leaf!15902 (xs!13562 IArray!20905) (csize!21131 Int)) (Empty!10450) )
))
(declare-datatypes ((BalanceConc!20538 0))(
  ( (BalanceConc!20539 (c!458833 Conc!10450)) )
))
(declare-fun list!12550 (BalanceConc!20538) List!33815)

(declare-datatypes ((tuple2!33564 0))(
  ( (tuple2!33565 (_1!19894 BalanceConc!20538) (_2!19894 BalanceConc!20534)) )
))
(declare-fun lex!2028 (LexerInterface!4656 List!33810 BalanceConc!20534) tuple2!33564)

(declare-fun print!1747 (LexerInterface!4656 BalanceConc!20538) BalanceConc!20534)

(declare-fun singletonSeq!2181 (Token!9534) BalanceConc!20538)

(assert (=> d!824244 (= res!1182651 (= (list!12550 (_1!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t1!27))))) (list!12550 (singletonSeq!2181 t1!27))))))

(declare-fun e!1801054 () Bool)

(assert (=> d!824244 (= lt!1011872 e!1801054)))

(declare-fun res!1182652 () Bool)

(assert (=> d!824244 (=> (not res!1182652) (not e!1801054))))

(declare-fun lt!1011871 () tuple2!33564)

(declare-fun size!26158 (BalanceConc!20538) Int)

(assert (=> d!824244 (= res!1182652 (= (size!26158 (_1!19894 lt!1011871)) 1))))

(assert (=> d!824244 (= lt!1011871 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t1!27))))))

(assert (=> d!824244 (not (isEmpty!18541 rules!1139))))

(assert (=> d!824244 (= (rulesProduceIndividualToken!2167 thiss!11361 rules!1139 t1!27) lt!1011872)))

(declare-fun b!2842755 () Bool)

(declare-fun res!1182650 () Bool)

(assert (=> b!2842755 (=> (not res!1182650) (not e!1801054))))

(declare-fun apply!7835 (BalanceConc!20538 Int) Token!9534)

(assert (=> b!2842755 (= res!1182650 (= (apply!7835 (_1!19894 lt!1011871) 0) t1!27))))

(declare-fun b!2842756 () Bool)

(assert (=> b!2842756 (= e!1801054 (isEmpty!18540 (_2!19894 lt!1011871)))))

(declare-fun b!2842757 () Bool)

(assert (=> b!2842757 (= e!1801055 (isEmpty!18540 (_2!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t1!27))))))))

(assert (= (and d!824244 res!1182652) b!2842755))

(assert (= (and b!2842755 res!1182650) b!2842756))

(assert (= (and d!824244 res!1182651) b!2842757))

(assert (=> d!824244 m!3270413))

(declare-fun m!3270583 () Bool)

(assert (=> d!824244 m!3270583))

(declare-fun m!3270587 () Bool)

(assert (=> d!824244 m!3270587))

(declare-fun m!3270589 () Bool)

(assert (=> d!824244 m!3270589))

(declare-fun m!3270593 () Bool)

(assert (=> d!824244 m!3270593))

(declare-fun m!3270595 () Bool)

(assert (=> d!824244 m!3270595))

(assert (=> d!824244 m!3270587))

(assert (=> d!824244 m!3270593))

(assert (=> d!824244 m!3270587))

(declare-fun m!3270597 () Bool)

(assert (=> d!824244 m!3270597))

(declare-fun m!3270599 () Bool)

(assert (=> b!2842755 m!3270599))

(declare-fun m!3270601 () Bool)

(assert (=> b!2842756 m!3270601))

(assert (=> b!2842757 m!3270587))

(assert (=> b!2842757 m!3270587))

(assert (=> b!2842757 m!3270593))

(assert (=> b!2842757 m!3270593))

(assert (=> b!2842757 m!3270595))

(declare-fun m!3270603 () Bool)

(assert (=> b!2842757 m!3270603))

(assert (=> b!2842654 d!824244))

(declare-fun d!824280 () Bool)

(declare-fun lt!1011875 () Bool)

(declare-fun e!1801059 () Bool)

(assert (=> d!824280 (= lt!1011875 e!1801059)))

(declare-fun res!1182654 () Bool)

(assert (=> d!824280 (=> (not res!1182654) (not e!1801059))))

(assert (=> d!824280 (= res!1182654 (= (list!12550 (_1!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t2!27))))) (list!12550 (singletonSeq!2181 t2!27))))))

(declare-fun e!1801058 () Bool)

(assert (=> d!824280 (= lt!1011875 e!1801058)))

(declare-fun res!1182655 () Bool)

(assert (=> d!824280 (=> (not res!1182655) (not e!1801058))))

(declare-fun lt!1011874 () tuple2!33564)

(assert (=> d!824280 (= res!1182655 (= (size!26158 (_1!19894 lt!1011874)) 1))))

(assert (=> d!824280 (= lt!1011874 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t2!27))))))

(assert (=> d!824280 (not (isEmpty!18541 rules!1139))))

(assert (=> d!824280 (= (rulesProduceIndividualToken!2167 thiss!11361 rules!1139 t2!27) lt!1011875)))

(declare-fun b!2842762 () Bool)

(declare-fun res!1182653 () Bool)

(assert (=> b!2842762 (=> (not res!1182653) (not e!1801058))))

(assert (=> b!2842762 (= res!1182653 (= (apply!7835 (_1!19894 lt!1011874) 0) t2!27))))

(declare-fun b!2842763 () Bool)

(assert (=> b!2842763 (= e!1801058 (isEmpty!18540 (_2!19894 lt!1011874)))))

(declare-fun b!2842764 () Bool)

(assert (=> b!2842764 (= e!1801059 (isEmpty!18540 (_2!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t2!27))))))))

(assert (= (and d!824280 res!1182655) b!2842762))

(assert (= (and b!2842762 res!1182653) b!2842763))

(assert (= (and d!824280 res!1182654) b!2842764))

(assert (=> d!824280 m!3270413))

(declare-fun m!3270605 () Bool)

(assert (=> d!824280 m!3270605))

(declare-fun m!3270607 () Bool)

(assert (=> d!824280 m!3270607))

(declare-fun m!3270609 () Bool)

(assert (=> d!824280 m!3270609))

(declare-fun m!3270611 () Bool)

(assert (=> d!824280 m!3270611))

(declare-fun m!3270613 () Bool)

(assert (=> d!824280 m!3270613))

(assert (=> d!824280 m!3270607))

(assert (=> d!824280 m!3270611))

(assert (=> d!824280 m!3270607))

(declare-fun m!3270615 () Bool)

(assert (=> d!824280 m!3270615))

(declare-fun m!3270617 () Bool)

(assert (=> b!2842762 m!3270617))

(declare-fun m!3270619 () Bool)

(assert (=> b!2842763 m!3270619))

(assert (=> b!2842764 m!3270607))

(assert (=> b!2842764 m!3270607))

(assert (=> b!2842764 m!3270611))

(assert (=> b!2842764 m!3270611))

(assert (=> b!2842764 m!3270613))

(declare-fun m!3270621 () Bool)

(assert (=> b!2842764 m!3270621))

(assert (=> b!2842644 d!824280))

(declare-fun d!824282 () Bool)

(assert (=> d!824282 (= (inv!45677 (tag!5570 (h!39106 rules!1139))) (= (mod (str.len (value!162782 (tag!5570 (h!39106 rules!1139)))) 2) 0))))

(assert (=> b!2842658 d!824282))

(declare-fun d!824284 () Bool)

(declare-fun res!1182656 () Bool)

(declare-fun e!1801066 () Bool)

(assert (=> d!824284 (=> (not res!1182656) (not e!1801066))))

(assert (=> d!824284 (= res!1182656 (semiInverseModEq!2112 (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toValue!7112 (transformation!5066 (h!39106 rules!1139)))))))

(assert (=> d!824284 (= (inv!45680 (transformation!5066 (h!39106 rules!1139))) e!1801066)))

(declare-fun b!2842769 () Bool)

(assert (=> b!2842769 (= e!1801066 (equivClasses!2011 (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toValue!7112 (transformation!5066 (h!39106 rules!1139)))))))

(assert (= (and d!824284 res!1182656) b!2842769))

(declare-fun m!3270623 () Bool)

(assert (=> d!824284 m!3270623))

(declare-fun m!3270625 () Bool)

(assert (=> b!2842769 m!3270625))

(assert (=> b!2842658 d!824284))

(declare-fun d!824286 () Bool)

(assert (=> d!824286 (= (isEmpty!18541 rules!1139) ((_ is Nil!33686) rules!1139))))

(assert (=> b!2842648 d!824286))

(declare-fun b!2842773 () Bool)

(declare-fun res!1182657 () Bool)

(declare-fun e!1801071 () Bool)

(assert (=> b!2842773 (=> res!1182657 e!1801071)))

(assert (=> b!2842773 (= res!1182657 (not ((_ is IntegerValue!15890) (value!162783 t1!27))))))

(declare-fun e!1801072 () Bool)

(assert (=> b!2842773 (= e!1801072 e!1801071)))

(declare-fun b!2842774 () Bool)

(assert (=> b!2842774 (= e!1801072 (inv!17 (value!162783 t1!27)))))

(declare-fun b!2842775 () Bool)

(declare-fun e!1801073 () Bool)

(assert (=> b!2842775 (= e!1801073 e!1801072)))

(declare-fun c!458831 () Bool)

(assert (=> b!2842775 (= c!458831 ((_ is IntegerValue!15889) (value!162783 t1!27)))))

(declare-fun b!2842776 () Bool)

(assert (=> b!2842776 (= e!1801073 (inv!16 (value!162783 t1!27)))))

(declare-fun b!2842777 () Bool)

(assert (=> b!2842777 (= e!1801071 (inv!15 (value!162783 t1!27)))))

(declare-fun d!824288 () Bool)

(declare-fun c!458830 () Bool)

(assert (=> d!824288 (= c!458830 ((_ is IntegerValue!15888) (value!162783 t1!27)))))

(assert (=> d!824288 (= (inv!21 (value!162783 t1!27)) e!1801073)))

(assert (= (and d!824288 c!458830) b!2842776))

(assert (= (and d!824288 (not c!458830)) b!2842775))

(assert (= (and b!2842775 c!458831) b!2842774))

(assert (= (and b!2842775 (not c!458831)) b!2842773))

(assert (= (and b!2842773 (not res!1182657)) b!2842777))

(declare-fun m!3270631 () Bool)

(assert (=> b!2842774 m!3270631))

(declare-fun m!3270633 () Bool)

(assert (=> b!2842776 m!3270633))

(declare-fun m!3270635 () Bool)

(assert (=> b!2842777 m!3270635))

(assert (=> b!2842646 d!824288))

(declare-fun d!824290 () Bool)

(declare-fun lt!1011878 () Bool)

(assert (=> d!824290 (= lt!1011878 (isEmpty!18542 (list!12548 lt!1011836)))))

(declare-fun isEmpty!18545 (Conc!10448) Bool)

(assert (=> d!824290 (= lt!1011878 (isEmpty!18545 (c!458814 lt!1011836)))))

(assert (=> d!824290 (= (isEmpty!18540 lt!1011836) lt!1011878)))

(declare-fun bs!519001 () Bool)

(assert (= bs!519001 d!824290))

(assert (=> bs!519001 m!3270465))

(assert (=> bs!519001 m!3270465))

(declare-fun m!3270637 () Bool)

(assert (=> bs!519001 m!3270637))

(declare-fun m!3270639 () Bool)

(assert (=> bs!519001 m!3270639))

(assert (=> b!2842647 d!824290))

(declare-fun d!824292 () Bool)

(declare-fun lt!1011879 () BalanceConc!20534)

(assert (=> d!824292 (= (list!12548 lt!1011879) (originalCharacters!5798 t2!27))))

(assert (=> d!824292 (= lt!1011879 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27)))))

(assert (=> d!824292 (= (charsOf!3116 t2!27) lt!1011879)))

(declare-fun b_lambda!85477 () Bool)

(assert (=> (not b_lambda!85477) (not d!824292)))

(assert (=> d!824292 t!232709))

(declare-fun b_and!208685 () Bool)

(assert (= b_and!208651 (and (=> t!232709 result!193406) b_and!208685)))

(assert (=> d!824292 t!232711))

(declare-fun b_and!208687 () Bool)

(assert (= b_and!208653 (and (=> t!232711 result!193408) b_and!208687)))

(assert (=> d!824292 t!232713))

(declare-fun b_and!208689 () Bool)

(assert (= b_and!208655 (and (=> t!232713 result!193410) b_and!208689)))

(declare-fun m!3270641 () Bool)

(assert (=> d!824292 m!3270641))

(assert (=> d!824292 m!3270455))

(assert (=> b!2842647 d!824292))

(declare-fun b!2842816 () Bool)

(declare-fun e!1801085 () Bool)

(declare-fun tp_is_empty!14683 () Bool)

(assert (=> b!2842816 (= e!1801085 tp_is_empty!14683)))

(declare-fun b!2842818 () Bool)

(declare-fun tp!910913 () Bool)

(assert (=> b!2842818 (= e!1801085 tp!910913)))

(declare-fun b!2842819 () Bool)

(declare-fun tp!910915 () Bool)

(declare-fun tp!910914 () Bool)

(assert (=> b!2842819 (= e!1801085 (and tp!910915 tp!910914))))

(assert (=> b!2842650 (= tp!910845 e!1801085)))

(declare-fun b!2842817 () Bool)

(declare-fun tp!910912 () Bool)

(declare-fun tp!910916 () Bool)

(assert (=> b!2842817 (= e!1801085 (and tp!910912 tp!910916))))

(assert (= (and b!2842650 ((_ is ElementMatch!8457) (regex!5066 (rule!7494 t1!27)))) b!2842816))

(assert (= (and b!2842650 ((_ is Concat!13754) (regex!5066 (rule!7494 t1!27)))) b!2842817))

(assert (= (and b!2842650 ((_ is Star!8457) (regex!5066 (rule!7494 t1!27)))) b!2842818))

(assert (= (and b!2842650 ((_ is Union!8457) (regex!5066 (rule!7494 t1!27)))) b!2842819))

(declare-fun b!2842830 () Bool)

(declare-fun b_free!82521 () Bool)

(declare-fun b_next!83225 () Bool)

(assert (=> b!2842830 (= b_free!82521 (not b_next!83225))))

(declare-fun tp!910925 () Bool)

(declare-fun b_and!208691 () Bool)

(assert (=> b!2842830 (= tp!910925 b_and!208691)))

(declare-fun b_free!82523 () Bool)

(declare-fun b_next!83227 () Bool)

(assert (=> b!2842830 (= b_free!82523 (not b_next!83227))))

(declare-fun t!232734 () Bool)

(declare-fun tb!155017 () Bool)

(assert (=> (and b!2842830 (= (toChars!6971 (transformation!5066 (h!39106 (t!232701 rules!1139)))) (toChars!6971 (transformation!5066 (rule!7494 t1!27)))) t!232734) tb!155017))

(declare-fun result!193440 () Bool)

(assert (= result!193440 result!193398))

(assert (=> b!2842684 t!232734))

(declare-fun t!232736 () Bool)

(declare-fun tb!155019 () Bool)

(assert (=> (and b!2842830 (= (toChars!6971 (transformation!5066 (h!39106 (t!232701 rules!1139)))) (toChars!6971 (transformation!5066 (rule!7494 t2!27)))) t!232736) tb!155019))

(declare-fun result!193442 () Bool)

(assert (= result!193442 result!193406))

(assert (=> b!2842691 t!232736))

(assert (=> d!824238 t!232734))

(assert (=> d!824292 t!232736))

(declare-fun tp!910926 () Bool)

(declare-fun b_and!208693 () Bool)

(assert (=> b!2842830 (= tp!910926 (and (=> t!232734 result!193440) (=> t!232736 result!193442) b_and!208693))))

(declare-fun e!1801096 () Bool)

(assert (=> b!2842830 (= e!1801096 (and tp!910925 tp!910926))))

(declare-fun b!2842829 () Bool)

(declare-fun tp!910928 () Bool)

(declare-fun e!1801095 () Bool)

(assert (=> b!2842829 (= e!1801095 (and tp!910928 (inv!45677 (tag!5570 (h!39106 (t!232701 rules!1139)))) (inv!45680 (transformation!5066 (h!39106 (t!232701 rules!1139)))) e!1801096))))

(declare-fun b!2842828 () Bool)

(declare-fun e!1801094 () Bool)

(declare-fun tp!910927 () Bool)

(assert (=> b!2842828 (= e!1801094 (and e!1801095 tp!910927))))

(assert (=> b!2842651 (= tp!910848 e!1801094)))

(assert (= b!2842829 b!2842830))

(assert (= b!2842828 b!2842829))

(assert (= (and b!2842651 ((_ is Cons!33686) (t!232701 rules!1139))) b!2842828))

(declare-fun m!3270643 () Bool)

(assert (=> b!2842829 m!3270643))

(declare-fun m!3270645 () Bool)

(assert (=> b!2842829 m!3270645))

(declare-fun b!2842835 () Bool)

(declare-fun e!1801100 () Bool)

(declare-fun tp!910931 () Bool)

(assert (=> b!2842835 (= e!1801100 (and tp_is_empty!14683 tp!910931))))

(assert (=> b!2842649 (= tp!910846 e!1801100)))

(assert (= (and b!2842649 ((_ is Cons!33685) (originalCharacters!5798 t2!27))) b!2842835))

(declare-fun b!2842836 () Bool)

(declare-fun e!1801101 () Bool)

(assert (=> b!2842836 (= e!1801101 tp_is_empty!14683)))

(declare-fun b!2842838 () Bool)

(declare-fun tp!910933 () Bool)

(assert (=> b!2842838 (= e!1801101 tp!910933)))

(declare-fun b!2842839 () Bool)

(declare-fun tp!910935 () Bool)

(declare-fun tp!910934 () Bool)

(assert (=> b!2842839 (= e!1801101 (and tp!910935 tp!910934))))

(assert (=> b!2842658 (= tp!910847 e!1801101)))

(declare-fun b!2842837 () Bool)

(declare-fun tp!910932 () Bool)

(declare-fun tp!910936 () Bool)

(assert (=> b!2842837 (= e!1801101 (and tp!910932 tp!910936))))

(assert (= (and b!2842658 ((_ is ElementMatch!8457) (regex!5066 (h!39106 rules!1139)))) b!2842836))

(assert (= (and b!2842658 ((_ is Concat!13754) (regex!5066 (h!39106 rules!1139)))) b!2842837))

(assert (= (and b!2842658 ((_ is Star!8457) (regex!5066 (h!39106 rules!1139)))) b!2842838))

(assert (= (and b!2842658 ((_ is Union!8457) (regex!5066 (h!39106 rules!1139)))) b!2842839))

(declare-fun b!2842840 () Bool)

(declare-fun e!1801102 () Bool)

(declare-fun tp!910937 () Bool)

(assert (=> b!2842840 (= e!1801102 (and tp_is_empty!14683 tp!910937))))

(assert (=> b!2842646 (= tp!910843 e!1801102)))

(assert (= (and b!2842646 ((_ is Cons!33685) (originalCharacters!5798 t1!27))) b!2842840))

(declare-fun b!2842841 () Bool)

(declare-fun e!1801103 () Bool)

(assert (=> b!2842841 (= e!1801103 tp_is_empty!14683)))

(declare-fun b!2842843 () Bool)

(declare-fun tp!910939 () Bool)

(assert (=> b!2842843 (= e!1801103 tp!910939)))

(declare-fun b!2842844 () Bool)

(declare-fun tp!910941 () Bool)

(declare-fun tp!910940 () Bool)

(assert (=> b!2842844 (= e!1801103 (and tp!910941 tp!910940))))

(assert (=> b!2842652 (= tp!910841 e!1801103)))

(declare-fun b!2842842 () Bool)

(declare-fun tp!910938 () Bool)

(declare-fun tp!910942 () Bool)

(assert (=> b!2842842 (= e!1801103 (and tp!910938 tp!910942))))

(assert (= (and b!2842652 ((_ is ElementMatch!8457) (regex!5066 (rule!7494 t2!27)))) b!2842841))

(assert (= (and b!2842652 ((_ is Concat!13754) (regex!5066 (rule!7494 t2!27)))) b!2842842))

(assert (= (and b!2842652 ((_ is Star!8457) (regex!5066 (rule!7494 t2!27)))) b!2842843))

(assert (= (and b!2842652 ((_ is Union!8457) (regex!5066 (rule!7494 t2!27)))) b!2842844))

(declare-fun b_lambda!85479 () Bool)

(assert (= b_lambda!85477 (or (and b!2842653 b_free!82507 (= (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toChars!6971 (transformation!5066 (rule!7494 t2!27))))) (and b!2842657 b_free!82511 (= (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (toChars!6971 (transformation!5066 (rule!7494 t2!27))))) (and b!2842655 b_free!82515) (and b!2842830 b_free!82523 (= (toChars!6971 (transformation!5066 (h!39106 (t!232701 rules!1139)))) (toChars!6971 (transformation!5066 (rule!7494 t2!27))))) b_lambda!85479)))

(declare-fun b_lambda!85481 () Bool)

(assert (= b_lambda!85457 (or (and b!2842653 b_free!82507 (= (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toChars!6971 (transformation!5066 (rule!7494 t2!27))))) (and b!2842657 b_free!82511 (= (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (toChars!6971 (transformation!5066 (rule!7494 t2!27))))) (and b!2842655 b_free!82515) (and b!2842830 b_free!82523 (= (toChars!6971 (transformation!5066 (h!39106 (t!232701 rules!1139)))) (toChars!6971 (transformation!5066 (rule!7494 t2!27))))) b_lambda!85481)))

(declare-fun b_lambda!85483 () Bool)

(assert (= b_lambda!85455 (or (and b!2842653 b_free!82507 (= (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toChars!6971 (transformation!5066 (rule!7494 t1!27))))) (and b!2842657 b_free!82511) (and b!2842655 b_free!82515 (= (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (toChars!6971 (transformation!5066 (rule!7494 t1!27))))) (and b!2842830 b_free!82523 (= (toChars!6971 (transformation!5066 (h!39106 (t!232701 rules!1139)))) (toChars!6971 (transformation!5066 (rule!7494 t1!27))))) b_lambda!85483)))

(declare-fun b_lambda!85485 () Bool)

(assert (= b_lambda!85459 (or (and b!2842653 b_free!82507 (= (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toChars!6971 (transformation!5066 (rule!7494 t1!27))))) (and b!2842657 b_free!82511) (and b!2842655 b_free!82515 (= (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (toChars!6971 (transformation!5066 (rule!7494 t1!27))))) (and b!2842830 b_free!82523 (= (toChars!6971 (transformation!5066 (h!39106 (t!232701 rules!1139)))) (toChars!6971 (transformation!5066 (rule!7494 t1!27))))) b_lambda!85485)))

(check-sat (not b!2842685) (not b!2842690) (not b!2842835) (not b!2842692) b_and!208685 (not b!2842774) (not b!2842818) (not b_next!83219) (not b!2842837) b_and!208635 (not b!2842676) b_and!208631 (not b!2842769) (not b!2842684) (not b!2842838) (not b_lambda!85485) (not b!2842691) (not b_lambda!85479) (not b_next!83227) (not d!824240) (not b!2842694) (not b!2842828) b_and!208627 (not d!824230) (not b!2842764) (not d!824236) (not b!2842697) (not d!824238) (not d!824292) (not b!2842843) (not b!2842693) (not b!2842757) (not b!2842755) (not d!824242) (not b!2842777) (not b!2842819) (not b!2842763) (not d!824280) b_and!208693 (not b!2842776) (not b!2842844) (not b_next!83211) (not tb!154989) (not b_lambda!85481) (not b_next!83209) (not b!2842756) (not b_next!83213) (not d!824224) (not b_next!83217) (not b!2842664) b_and!208691 (not tb!154995) (not d!824284) (not b!2842829) (not b_lambda!85483) (not b!2842679) (not b!2842839) b_and!208689 (not b!2842678) (not d!824234) (not b_next!83225) (not b_next!83215) tp_is_empty!14683 (not d!824290) (not b!2842842) (not d!824228) b_and!208687 (not b!2842762) (not b!2842817) (not d!824244) (not b!2842840))
(check-sat (not b_next!83219) (not b_next!83227) b_and!208627 b_and!208685 b_and!208693 (not b_next!83213) (not b_next!83217) b_and!208691 (not b_next!83215) b_and!208687 b_and!208635 b_and!208631 (not b_next!83211) (not b_next!83209) b_and!208689 (not b_next!83225))
(get-model)

(declare-fun d!824294 () Bool)

(declare-fun charsToBigInt!0 (List!33808 Int) Int)

(assert (=> d!824294 (= (inv!15 (value!162783 t2!27)) (= (charsToBigInt!0 (text!37521 (value!162783 t2!27)) 0) (value!162778 (value!162783 t2!27))))))

(declare-fun bs!519002 () Bool)

(assert (= bs!519002 d!824294))

(declare-fun m!3270647 () Bool)

(assert (=> bs!519002 m!3270647))

(assert (=> b!2842679 d!824294))

(declare-fun d!824296 () Bool)

(assert (=> d!824296 true))

(declare-fun order!18017 () Int)

(declare-fun lambda!104288 () Int)

(declare-fun order!18019 () Int)

(declare-fun dynLambda!14175 (Int Int) Int)

(declare-fun dynLambda!14176 (Int Int) Int)

(assert (=> d!824296 (< (dynLambda!14175 order!18017 (toValue!7112 (transformation!5066 (rule!7494 t1!27)))) (dynLambda!14176 order!18019 lambda!104288))))

(declare-fun Forall2!844 (Int) Bool)

(assert (=> d!824296 (= (equivClasses!2011 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (toValue!7112 (transformation!5066 (rule!7494 t1!27)))) (Forall2!844 lambda!104288))))

(declare-fun bs!519003 () Bool)

(assert (= bs!519003 d!824296))

(declare-fun m!3270649 () Bool)

(assert (=> bs!519003 m!3270649))

(assert (=> b!2842664 d!824296))

(declare-fun d!824302 () Bool)

(declare-fun lt!1011882 () Int)

(assert (=> d!824302 (>= lt!1011882 0)))

(declare-fun e!1801108 () Int)

(assert (=> d!824302 (= lt!1011882 e!1801108)))

(declare-fun c!458836 () Bool)

(assert (=> d!824302 (= c!458836 ((_ is Nil!33685) (originalCharacters!5798 t2!27)))))

(assert (=> d!824302 (= (size!26155 (originalCharacters!5798 t2!27)) lt!1011882)))

(declare-fun b!2842853 () Bool)

(assert (=> b!2842853 (= e!1801108 0)))

(declare-fun b!2842854 () Bool)

(assert (=> b!2842854 (= e!1801108 (+ 1 (size!26155 (t!232700 (originalCharacters!5798 t2!27)))))))

(assert (= (and d!824302 c!458836) b!2842853))

(assert (= (and d!824302 (not c!458836)) b!2842854))

(declare-fun m!3270651 () Bool)

(assert (=> b!2842854 m!3270651))

(assert (=> b!2842692 d!824302))

(declare-fun d!824304 () Bool)

(declare-fun charsToInt!0 (List!33808) (_ BitVec 32))

(assert (=> d!824304 (= (inv!16 (value!162783 t2!27)) (= (charsToInt!0 (text!37519 (value!162783 t2!27))) (value!162774 (value!162783 t2!27))))))

(declare-fun bs!519004 () Bool)

(assert (= bs!519004 d!824304))

(declare-fun m!3270653 () Bool)

(assert (=> bs!519004 m!3270653))

(assert (=> b!2842678 d!824304))

(declare-fun d!824306 () Bool)

(declare-fun charsToBigInt!1 (List!33808) Int)

(assert (=> d!824306 (= (inv!17 (value!162783 t1!27)) (= (charsToBigInt!1 (text!37520 (value!162783 t1!27))) (value!162775 (value!162783 t1!27))))))

(declare-fun bs!519005 () Bool)

(assert (= bs!519005 d!824306))

(declare-fun m!3270655 () Bool)

(assert (=> bs!519005 m!3270655))

(assert (=> b!2842774 d!824306))

(assert (=> d!824280 d!824286))

(declare-fun d!824308 () Bool)

(declare-fun lt!1011885 () Int)

(declare-fun size!26160 (List!33815) Int)

(assert (=> d!824308 (= lt!1011885 (size!26160 (list!12550 (_1!19894 lt!1011874))))))

(declare-fun size!26161 (Conc!10450) Int)

(assert (=> d!824308 (= lt!1011885 (size!26161 (c!458833 (_1!19894 lt!1011874))))))

(assert (=> d!824308 (= (size!26158 (_1!19894 lt!1011874)) lt!1011885)))

(declare-fun bs!519006 () Bool)

(assert (= bs!519006 d!824308))

(declare-fun m!3270657 () Bool)

(assert (=> bs!519006 m!3270657))

(assert (=> bs!519006 m!3270657))

(declare-fun m!3270659 () Bool)

(assert (=> bs!519006 m!3270659))

(declare-fun m!3270661 () Bool)

(assert (=> bs!519006 m!3270661))

(assert (=> d!824280 d!824308))

(declare-fun d!824310 () Bool)

(declare-fun list!12551 (Conc!10450) List!33815)

(assert (=> d!824310 (= (list!12550 (_1!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t2!27))))) (list!12551 (c!458833 (_1!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t2!27)))))))))

(declare-fun bs!519007 () Bool)

(assert (= bs!519007 d!824310))

(declare-fun m!3270663 () Bool)

(assert (=> bs!519007 m!3270663))

(assert (=> d!824280 d!824310))

(declare-fun d!824312 () Bool)

(assert (=> d!824312 (= (list!12550 (singletonSeq!2181 t2!27)) (list!12551 (c!458833 (singletonSeq!2181 t2!27))))))

(declare-fun bs!519008 () Bool)

(assert (= bs!519008 d!824312))

(declare-fun m!3270665 () Bool)

(assert (=> bs!519008 m!3270665))

(assert (=> d!824280 d!824312))

(declare-fun b!2842865 () Bool)

(declare-fun e!1801117 () Bool)

(declare-fun lt!1011888 () tuple2!33564)

(declare-fun isEmpty!18546 (BalanceConc!20538) Bool)

(assert (=> b!2842865 (= e!1801117 (not (isEmpty!18546 (_1!19894 lt!1011888))))))

(declare-fun b!2842866 () Bool)

(declare-fun e!1801116 () Bool)

(declare-datatypes ((tuple2!33566 0))(
  ( (tuple2!33567 (_1!19895 List!33815) (_2!19895 List!33809)) )
))
(declare-fun lexList!1261 (LexerInterface!4656 List!33810 List!33809) tuple2!33566)

(assert (=> b!2842866 (= e!1801116 (= (list!12548 (_2!19894 lt!1011888)) (_2!19895 (lexList!1261 thiss!11361 rules!1139 (list!12548 (print!1747 thiss!11361 (singletonSeq!2181 t2!27)))))))))

(declare-fun d!824314 () Bool)

(assert (=> d!824314 e!1801116))

(declare-fun res!1182672 () Bool)

(assert (=> d!824314 (=> (not res!1182672) (not e!1801116))))

(declare-fun e!1801115 () Bool)

(assert (=> d!824314 (= res!1182672 e!1801115)))

(declare-fun c!458840 () Bool)

(assert (=> d!824314 (= c!458840 (> (size!26158 (_1!19894 lt!1011888)) 0))))

(declare-fun lexTailRecV2!899 (LexerInterface!4656 List!33810 BalanceConc!20534 BalanceConc!20534 BalanceConc!20534 BalanceConc!20538) tuple2!33564)

(assert (=> d!824314 (= lt!1011888 (lexTailRecV2!899 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t2!27)) (BalanceConc!20535 Empty!10448) (print!1747 thiss!11361 (singletonSeq!2181 t2!27)) (BalanceConc!20539 Empty!10450)))))

(assert (=> d!824314 (= (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t2!27))) lt!1011888)))

(declare-fun b!2842867 () Bool)

(declare-fun res!1182670 () Bool)

(assert (=> b!2842867 (=> (not res!1182670) (not e!1801116))))

(assert (=> b!2842867 (= res!1182670 (= (list!12550 (_1!19894 lt!1011888)) (_1!19895 (lexList!1261 thiss!11361 rules!1139 (list!12548 (print!1747 thiss!11361 (singletonSeq!2181 t2!27)))))))))

(declare-fun b!2842868 () Bool)

(assert (=> b!2842868 (= e!1801115 (= (_2!19894 lt!1011888) (print!1747 thiss!11361 (singletonSeq!2181 t2!27))))))

(declare-fun b!2842869 () Bool)

(assert (=> b!2842869 (= e!1801115 e!1801117)))

(declare-fun res!1182671 () Bool)

(assert (=> b!2842869 (= res!1182671 (< (size!26153 (_2!19894 lt!1011888)) (size!26153 (print!1747 thiss!11361 (singletonSeq!2181 t2!27)))))))

(assert (=> b!2842869 (=> (not res!1182671) (not e!1801117))))

(assert (= (and d!824314 c!458840) b!2842869))

(assert (= (and d!824314 (not c!458840)) b!2842868))

(assert (= (and b!2842869 res!1182671) b!2842865))

(assert (= (and d!824314 res!1182672) b!2842867))

(assert (= (and b!2842867 res!1182670) b!2842866))

(declare-fun m!3270667 () Bool)

(assert (=> b!2842866 m!3270667))

(assert (=> b!2842866 m!3270611))

(declare-fun m!3270669 () Bool)

(assert (=> b!2842866 m!3270669))

(assert (=> b!2842866 m!3270669))

(declare-fun m!3270671 () Bool)

(assert (=> b!2842866 m!3270671))

(declare-fun m!3270673 () Bool)

(assert (=> b!2842867 m!3270673))

(assert (=> b!2842867 m!3270611))

(assert (=> b!2842867 m!3270669))

(assert (=> b!2842867 m!3270669))

(assert (=> b!2842867 m!3270671))

(declare-fun m!3270675 () Bool)

(assert (=> d!824314 m!3270675))

(assert (=> d!824314 m!3270611))

(assert (=> d!824314 m!3270611))

(declare-fun m!3270677 () Bool)

(assert (=> d!824314 m!3270677))

(declare-fun m!3270679 () Bool)

(assert (=> b!2842869 m!3270679))

(assert (=> b!2842869 m!3270611))

(declare-fun m!3270681 () Bool)

(assert (=> b!2842869 m!3270681))

(declare-fun m!3270683 () Bool)

(assert (=> b!2842865 m!3270683))

(assert (=> d!824280 d!824314))

(declare-fun d!824316 () Bool)

(declare-fun e!1801120 () Bool)

(assert (=> d!824316 e!1801120))

(declare-fun res!1182675 () Bool)

(assert (=> d!824316 (=> (not res!1182675) (not e!1801120))))

(declare-fun lt!1011891 () BalanceConc!20538)

(assert (=> d!824316 (= res!1182675 (= (list!12550 lt!1011891) (Cons!33691 t2!27 Nil!33691)))))

(declare-fun singleton!957 (Token!9534) BalanceConc!20538)

(assert (=> d!824316 (= lt!1011891 (singleton!957 t2!27))))

(assert (=> d!824316 (= (singletonSeq!2181 t2!27) lt!1011891)))

(declare-fun b!2842872 () Bool)

(declare-fun isBalanced!3145 (Conc!10450) Bool)

(assert (=> b!2842872 (= e!1801120 (isBalanced!3145 (c!458833 lt!1011891)))))

(assert (= (and d!824316 res!1182675) b!2842872))

(declare-fun m!3270685 () Bool)

(assert (=> d!824316 m!3270685))

(declare-fun m!3270687 () Bool)

(assert (=> d!824316 m!3270687))

(declare-fun m!3270689 () Bool)

(assert (=> b!2842872 m!3270689))

(assert (=> d!824280 d!824316))

(declare-fun d!824318 () Bool)

(declare-fun lt!1011894 () BalanceConc!20534)

(declare-fun printList!1235 (LexerInterface!4656 List!33815) List!33809)

(assert (=> d!824318 (= (list!12548 lt!1011894) (printList!1235 thiss!11361 (list!12550 (singletonSeq!2181 t2!27))))))

(declare-fun printTailRec!1178 (LexerInterface!4656 BalanceConc!20538 Int BalanceConc!20534) BalanceConc!20534)

(assert (=> d!824318 (= lt!1011894 (printTailRec!1178 thiss!11361 (singletonSeq!2181 t2!27) 0 (BalanceConc!20535 Empty!10448)))))

(assert (=> d!824318 (= (print!1747 thiss!11361 (singletonSeq!2181 t2!27)) lt!1011894)))

(declare-fun bs!519009 () Bool)

(assert (= bs!519009 d!824318))

(declare-fun m!3270691 () Bool)

(assert (=> bs!519009 m!3270691))

(assert (=> bs!519009 m!3270607))

(assert (=> bs!519009 m!3270609))

(assert (=> bs!519009 m!3270609))

(declare-fun m!3270693 () Bool)

(assert (=> bs!519009 m!3270693))

(assert (=> bs!519009 m!3270607))

(declare-fun m!3270695 () Bool)

(assert (=> bs!519009 m!3270695))

(assert (=> d!824280 d!824318))

(declare-fun d!824320 () Bool)

(declare-fun list!12552 (Conc!10448) List!33809)

(assert (=> d!824320 (= (list!12548 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27))) (list!12552 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27)))))))

(declare-fun bs!519010 () Bool)

(assert (= bs!519010 d!824320))

(declare-fun m!3270697 () Bool)

(assert (=> bs!519010 m!3270697))

(assert (=> b!2842691 d!824320))

(declare-fun d!824322 () Bool)

(assert (=> d!824322 true))

(declare-fun order!18023 () Int)

(declare-fun order!18021 () Int)

(declare-fun lambda!104291 () Int)

(declare-fun dynLambda!14177 (Int Int) Int)

(declare-fun dynLambda!14178 (Int Int) Int)

(assert (=> d!824322 (< (dynLambda!14177 order!18021 (toChars!6971 (transformation!5066 (rule!7494 t2!27)))) (dynLambda!14178 order!18023 lambda!104291))))

(assert (=> d!824322 true))

(assert (=> d!824322 (< (dynLambda!14175 order!18017 (toValue!7112 (transformation!5066 (rule!7494 t2!27)))) (dynLambda!14178 order!18023 lambda!104291))))

(declare-fun Forall!1247 (Int) Bool)

(assert (=> d!824322 (= (semiInverseModEq!2112 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (toValue!7112 (transformation!5066 (rule!7494 t2!27)))) (Forall!1247 lambda!104291))))

(declare-fun bs!519011 () Bool)

(assert (= bs!519011 d!824322))

(declare-fun m!3270699 () Bool)

(assert (=> bs!519011 m!3270699))

(assert (=> d!824234 d!824322))

(declare-fun d!824324 () Bool)

(declare-fun lt!1011897 () Token!9534)

(declare-fun apply!7836 (List!33815 Int) Token!9534)

(assert (=> d!824324 (= lt!1011897 (apply!7836 (list!12550 (_1!19894 lt!1011871)) 0))))

(declare-fun apply!7837 (Conc!10450 Int) Token!9534)

(assert (=> d!824324 (= lt!1011897 (apply!7837 (c!458833 (_1!19894 lt!1011871)) 0))))

(declare-fun e!1801123 () Bool)

(assert (=> d!824324 e!1801123))

(declare-fun res!1182678 () Bool)

(assert (=> d!824324 (=> (not res!1182678) (not e!1801123))))

(assert (=> d!824324 (= res!1182678 (<= 0 0))))

(assert (=> d!824324 (= (apply!7835 (_1!19894 lt!1011871) 0) lt!1011897)))

(declare-fun b!2842883 () Bool)

(assert (=> b!2842883 (= e!1801123 (< 0 (size!26158 (_1!19894 lt!1011871))))))

(assert (= (and d!824324 res!1182678) b!2842883))

(declare-fun m!3270707 () Bool)

(assert (=> d!824324 m!3270707))

(assert (=> d!824324 m!3270707))

(declare-fun m!3270709 () Bool)

(assert (=> d!824324 m!3270709))

(declare-fun m!3270711 () Bool)

(assert (=> d!824324 m!3270711))

(assert (=> b!2842883 m!3270597))

(assert (=> b!2842755 d!824324))

(declare-fun d!824332 () Bool)

(assert (=> d!824332 (= (list!12548 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27))) (list!12552 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27)))))))

(declare-fun bs!519015 () Bool)

(assert (= bs!519015 d!824332))

(declare-fun m!3270713 () Bool)

(assert (=> bs!519015 m!3270713))

(assert (=> b!2842684 d!824332))

(assert (=> d!824244 d!824286))

(declare-fun b!2842884 () Bool)

(declare-fun e!1801126 () Bool)

(declare-fun lt!1011898 () tuple2!33564)

(assert (=> b!2842884 (= e!1801126 (not (isEmpty!18546 (_1!19894 lt!1011898))))))

(declare-fun b!2842885 () Bool)

(declare-fun e!1801125 () Bool)

(assert (=> b!2842885 (= e!1801125 (= (list!12548 (_2!19894 lt!1011898)) (_2!19895 (lexList!1261 thiss!11361 rules!1139 (list!12548 (print!1747 thiss!11361 (singletonSeq!2181 t1!27)))))))))

(declare-fun d!824334 () Bool)

(assert (=> d!824334 e!1801125))

(declare-fun res!1182681 () Bool)

(assert (=> d!824334 (=> (not res!1182681) (not e!1801125))))

(declare-fun e!1801124 () Bool)

(assert (=> d!824334 (= res!1182681 e!1801124)))

(declare-fun c!458841 () Bool)

(assert (=> d!824334 (= c!458841 (> (size!26158 (_1!19894 lt!1011898)) 0))))

(assert (=> d!824334 (= lt!1011898 (lexTailRecV2!899 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t1!27)) (BalanceConc!20535 Empty!10448) (print!1747 thiss!11361 (singletonSeq!2181 t1!27)) (BalanceConc!20539 Empty!10450)))))

(assert (=> d!824334 (= (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t1!27))) lt!1011898)))

(declare-fun b!2842886 () Bool)

(declare-fun res!1182679 () Bool)

(assert (=> b!2842886 (=> (not res!1182679) (not e!1801125))))

(assert (=> b!2842886 (= res!1182679 (= (list!12550 (_1!19894 lt!1011898)) (_1!19895 (lexList!1261 thiss!11361 rules!1139 (list!12548 (print!1747 thiss!11361 (singletonSeq!2181 t1!27)))))))))

(declare-fun b!2842887 () Bool)

(assert (=> b!2842887 (= e!1801124 (= (_2!19894 lt!1011898) (print!1747 thiss!11361 (singletonSeq!2181 t1!27))))))

(declare-fun b!2842888 () Bool)

(assert (=> b!2842888 (= e!1801124 e!1801126)))

(declare-fun res!1182680 () Bool)

(assert (=> b!2842888 (= res!1182680 (< (size!26153 (_2!19894 lt!1011898)) (size!26153 (print!1747 thiss!11361 (singletonSeq!2181 t1!27)))))))

(assert (=> b!2842888 (=> (not res!1182680) (not e!1801126))))

(assert (= (and d!824334 c!458841) b!2842888))

(assert (= (and d!824334 (not c!458841)) b!2842887))

(assert (= (and b!2842888 res!1182680) b!2842884))

(assert (= (and d!824334 res!1182681) b!2842886))

(assert (= (and b!2842886 res!1182679) b!2842885))

(declare-fun m!3270717 () Bool)

(assert (=> b!2842885 m!3270717))

(assert (=> b!2842885 m!3270593))

(declare-fun m!3270719 () Bool)

(assert (=> b!2842885 m!3270719))

(assert (=> b!2842885 m!3270719))

(declare-fun m!3270721 () Bool)

(assert (=> b!2842885 m!3270721))

(declare-fun m!3270723 () Bool)

(assert (=> b!2842886 m!3270723))

(assert (=> b!2842886 m!3270593))

(assert (=> b!2842886 m!3270719))

(assert (=> b!2842886 m!3270719))

(assert (=> b!2842886 m!3270721))

(declare-fun m!3270725 () Bool)

(assert (=> d!824334 m!3270725))

(assert (=> d!824334 m!3270593))

(assert (=> d!824334 m!3270593))

(declare-fun m!3270727 () Bool)

(assert (=> d!824334 m!3270727))

(declare-fun m!3270729 () Bool)

(assert (=> b!2842888 m!3270729))

(assert (=> b!2842888 m!3270593))

(declare-fun m!3270731 () Bool)

(assert (=> b!2842888 m!3270731))

(declare-fun m!3270733 () Bool)

(assert (=> b!2842884 m!3270733))

(assert (=> d!824244 d!824334))

(declare-fun d!824338 () Bool)

(assert (=> d!824338 (= (list!12550 (_1!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t1!27))))) (list!12551 (c!458833 (_1!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t1!27)))))))))

(declare-fun bs!519019 () Bool)

(assert (= bs!519019 d!824338))

(declare-fun m!3270737 () Bool)

(assert (=> bs!519019 m!3270737))

(assert (=> d!824244 d!824338))

(declare-fun d!824344 () Bool)

(declare-fun lt!1011899 () BalanceConc!20534)

(assert (=> d!824344 (= (list!12548 lt!1011899) (printList!1235 thiss!11361 (list!12550 (singletonSeq!2181 t1!27))))))

(assert (=> d!824344 (= lt!1011899 (printTailRec!1178 thiss!11361 (singletonSeq!2181 t1!27) 0 (BalanceConc!20535 Empty!10448)))))

(assert (=> d!824344 (= (print!1747 thiss!11361 (singletonSeq!2181 t1!27)) lt!1011899)))

(declare-fun bs!519021 () Bool)

(assert (= bs!519021 d!824344))

(declare-fun m!3270741 () Bool)

(assert (=> bs!519021 m!3270741))

(assert (=> bs!519021 m!3270587))

(assert (=> bs!519021 m!3270589))

(assert (=> bs!519021 m!3270589))

(declare-fun m!3270743 () Bool)

(assert (=> bs!519021 m!3270743))

(assert (=> bs!519021 m!3270587))

(declare-fun m!3270745 () Bool)

(assert (=> bs!519021 m!3270745))

(assert (=> d!824244 d!824344))

(declare-fun d!824348 () Bool)

(declare-fun e!1801127 () Bool)

(assert (=> d!824348 e!1801127))

(declare-fun res!1182682 () Bool)

(assert (=> d!824348 (=> (not res!1182682) (not e!1801127))))

(declare-fun lt!1011900 () BalanceConc!20538)

(assert (=> d!824348 (= res!1182682 (= (list!12550 lt!1011900) (Cons!33691 t1!27 Nil!33691)))))

(assert (=> d!824348 (= lt!1011900 (singleton!957 t1!27))))

(assert (=> d!824348 (= (singletonSeq!2181 t1!27) lt!1011900)))

(declare-fun b!2842889 () Bool)

(assert (=> b!2842889 (= e!1801127 (isBalanced!3145 (c!458833 lt!1011900)))))

(assert (= (and d!824348 res!1182682) b!2842889))

(declare-fun m!3270747 () Bool)

(assert (=> d!824348 m!3270747))

(declare-fun m!3270749 () Bool)

(assert (=> d!824348 m!3270749))

(declare-fun m!3270751 () Bool)

(assert (=> b!2842889 m!3270751))

(assert (=> d!824244 d!824348))

(declare-fun d!824350 () Bool)

(declare-fun lt!1011901 () Int)

(assert (=> d!824350 (= lt!1011901 (size!26160 (list!12550 (_1!19894 lt!1011871))))))

(assert (=> d!824350 (= lt!1011901 (size!26161 (c!458833 (_1!19894 lt!1011871))))))

(assert (=> d!824350 (= (size!26158 (_1!19894 lt!1011871)) lt!1011901)))

(declare-fun bs!519022 () Bool)

(assert (= bs!519022 d!824350))

(assert (=> bs!519022 m!3270707))

(assert (=> bs!519022 m!3270707))

(declare-fun m!3270753 () Bool)

(assert (=> bs!519022 m!3270753))

(declare-fun m!3270755 () Bool)

(assert (=> bs!519022 m!3270755))

(assert (=> d!824244 d!824350))

(declare-fun d!824352 () Bool)

(assert (=> d!824352 (= (list!12550 (singletonSeq!2181 t1!27)) (list!12551 (c!458833 (singletonSeq!2181 t1!27))))))

(declare-fun bs!519023 () Bool)

(assert (= bs!519023 d!824352))

(declare-fun m!3270757 () Bool)

(assert (=> bs!519023 m!3270757))

(assert (=> d!824244 d!824352))

(declare-fun d!824354 () Bool)

(assert (=> d!824354 (= (inv!15 (value!162783 t1!27)) (= (charsToBigInt!0 (text!37521 (value!162783 t1!27)) 0) (value!162778 (value!162783 t1!27))))))

(declare-fun bs!519024 () Bool)

(assert (= bs!519024 d!824354))

(declare-fun m!3270759 () Bool)

(assert (=> bs!519024 m!3270759))

(assert (=> b!2842777 d!824354))

(declare-fun d!824356 () Bool)

(declare-fun lt!1011902 () Bool)

(assert (=> d!824356 (= lt!1011902 (isEmpty!18542 (list!12548 (_2!19894 lt!1011871))))))

(assert (=> d!824356 (= lt!1011902 (isEmpty!18545 (c!458814 (_2!19894 lt!1011871))))))

(assert (=> d!824356 (= (isEmpty!18540 (_2!19894 lt!1011871)) lt!1011902)))

(declare-fun bs!519025 () Bool)

(assert (= bs!519025 d!824356))

(declare-fun m!3270761 () Bool)

(assert (=> bs!519025 m!3270761))

(assert (=> bs!519025 m!3270761))

(declare-fun m!3270763 () Bool)

(assert (=> bs!519025 m!3270763))

(declare-fun m!3270765 () Bool)

(assert (=> bs!519025 m!3270765))

(assert (=> b!2842756 d!824356))

(declare-fun bs!519027 () Bool)

(declare-fun d!824358 () Bool)

(assert (= bs!519027 (and d!824358 d!824240)))

(declare-fun lambda!104300 () Int)

(assert (=> bs!519027 (= lambda!104300 lambda!104282)))

(declare-fun lambda!104301 () Int)

(declare-fun forall!6917 (List!33813 Int) Bool)

(assert (=> d!824358 (forall!6917 (map!7230 rules!1139 lambda!104300) lambda!104301)))

(declare-fun lt!1011912 () Unit!47497)

(declare-fun e!1801132 () Unit!47497)

(assert (=> d!824358 (= lt!1011912 e!1801132)))

(declare-fun c!458844 () Bool)

(assert (=> d!824358 (= c!458844 ((_ is Nil!33686) rules!1139))))

(declare-fun rulesValidInductive!1733 (LexerInterface!4656 List!33810) Bool)

(assert (=> d!824358 (rulesValidInductive!1733 thiss!11361 rules!1139)))

(assert (=> d!824358 (= (lemma!563 rules!1139 thiss!11361 rules!1139) lt!1011912)))

(declare-fun b!2842896 () Bool)

(declare-fun Unit!47501 () Unit!47497)

(assert (=> b!2842896 (= e!1801132 Unit!47501)))

(declare-fun b!2842897 () Bool)

(declare-fun Unit!47502 () Unit!47497)

(assert (=> b!2842897 (= e!1801132 Unit!47502)))

(declare-fun lt!1011913 () Unit!47497)

(assert (=> b!2842897 (= lt!1011913 (lemma!563 rules!1139 thiss!11361 (t!232701 rules!1139)))))

(assert (= (and d!824358 c!458844) b!2842896))

(assert (= (and d!824358 (not c!458844)) b!2842897))

(declare-fun m!3270769 () Bool)

(assert (=> d!824358 m!3270769))

(assert (=> d!824358 m!3270769))

(declare-fun m!3270771 () Bool)

(assert (=> d!824358 m!3270771))

(declare-fun m!3270773 () Bool)

(assert (=> d!824358 m!3270773))

(declare-fun m!3270775 () Bool)

(assert (=> b!2842897 m!3270775))

(assert (=> d!824240 d!824358))

(declare-fun bs!519031 () Bool)

(declare-fun d!824362 () Bool)

(assert (= bs!519031 (and d!824362 d!824358)))

(declare-fun lambda!104307 () Int)

(assert (=> bs!519031 (= lambda!104307 lambda!104301)))

(declare-fun b!2842927 () Bool)

(declare-fun e!1801155 () Bool)

(declare-fun lt!1011920 () Regex!8457)

(declare-fun isUnion!148 (Regex!8457) Bool)

(assert (=> b!2842927 (= e!1801155 (isUnion!148 lt!1011920))))

(declare-fun e!1801153 () Bool)

(assert (=> d!824362 e!1801153))

(declare-fun res!1182693 () Bool)

(assert (=> d!824362 (=> (not res!1182693) (not e!1801153))))

(declare-fun validRegex!3352 (Regex!8457) Bool)

(assert (=> d!824362 (= res!1182693 (validRegex!3352 lt!1011920))))

(declare-fun e!1801154 () Regex!8457)

(assert (=> d!824362 (= lt!1011920 e!1801154)))

(declare-fun c!458857 () Bool)

(declare-fun e!1801151 () Bool)

(assert (=> d!824362 (= c!458857 e!1801151)))

(declare-fun res!1182692 () Bool)

(assert (=> d!824362 (=> (not res!1182692) (not e!1801151))))

(assert (=> d!824362 (= res!1182692 ((_ is Cons!33689) (map!7230 rules!1139 lambda!104282)))))

(assert (=> d!824362 (forall!6917 (map!7230 rules!1139 lambda!104282) lambda!104307)))

(assert (=> d!824362 (= (generalisedUnion!539 (map!7230 rules!1139 lambda!104282)) lt!1011920)))

(declare-fun b!2842928 () Bool)

(declare-fun e!1801156 () Bool)

(assert (=> b!2842928 (= e!1801153 e!1801156)))

(declare-fun c!458858 () Bool)

(declare-fun isEmpty!18547 (List!33813) Bool)

(assert (=> b!2842928 (= c!458858 (isEmpty!18547 (map!7230 rules!1139 lambda!104282)))))

(declare-fun b!2842929 () Bool)

(declare-fun e!1801152 () Regex!8457)

(assert (=> b!2842929 (= e!1801152 EmptyLang!8457)))

(declare-fun b!2842930 () Bool)

(assert (=> b!2842930 (= e!1801151 (isEmpty!18547 (t!232738 (map!7230 rules!1139 lambda!104282))))))

(declare-fun b!2842931 () Bool)

(declare-fun isEmptyLang!148 (Regex!8457) Bool)

(assert (=> b!2842931 (= e!1801156 (isEmptyLang!148 lt!1011920))))

(declare-fun b!2842932 () Bool)

(declare-fun head!6247 (List!33813) Regex!8457)

(assert (=> b!2842932 (= e!1801155 (= lt!1011920 (head!6247 (map!7230 rules!1139 lambda!104282))))))

(declare-fun b!2842933 () Bool)

(assert (=> b!2842933 (= e!1801154 e!1801152)))

(declare-fun c!458856 () Bool)

(assert (=> b!2842933 (= c!458856 ((_ is Cons!33689) (map!7230 rules!1139 lambda!104282)))))

(declare-fun b!2842934 () Bool)

(assert (=> b!2842934 (= e!1801156 e!1801155)))

(declare-fun c!458859 () Bool)

(declare-fun tail!4472 (List!33813) List!33813)

(assert (=> b!2842934 (= c!458859 (isEmpty!18547 (tail!4472 (map!7230 rules!1139 lambda!104282))))))

(declare-fun b!2842935 () Bool)

(assert (=> b!2842935 (= e!1801152 (Union!8457 (h!39109 (map!7230 rules!1139 lambda!104282)) (generalisedUnion!539 (t!232738 (map!7230 rules!1139 lambda!104282)))))))

(declare-fun b!2842936 () Bool)

(assert (=> b!2842936 (= e!1801154 (h!39109 (map!7230 rules!1139 lambda!104282)))))

(assert (= (and d!824362 res!1182692) b!2842930))

(assert (= (and d!824362 c!458857) b!2842936))

(assert (= (and d!824362 (not c!458857)) b!2842933))

(assert (= (and b!2842933 c!458856) b!2842935))

(assert (= (and b!2842933 (not c!458856)) b!2842929))

(assert (= (and d!824362 res!1182693) b!2842928))

(assert (= (and b!2842928 c!458858) b!2842931))

(assert (= (and b!2842928 (not c!458858)) b!2842934))

(assert (= (and b!2842934 c!458859) b!2842932))

(assert (= (and b!2842934 (not c!458859)) b!2842927))

(declare-fun m!3270793 () Bool)

(assert (=> b!2842930 m!3270793))

(assert (=> b!2842934 m!3270475))

(declare-fun m!3270795 () Bool)

(assert (=> b!2842934 m!3270795))

(assert (=> b!2842934 m!3270795))

(declare-fun m!3270797 () Bool)

(assert (=> b!2842934 m!3270797))

(assert (=> b!2842932 m!3270475))

(declare-fun m!3270799 () Bool)

(assert (=> b!2842932 m!3270799))

(declare-fun m!3270801 () Bool)

(assert (=> b!2842931 m!3270801))

(declare-fun m!3270803 () Bool)

(assert (=> b!2842927 m!3270803))

(declare-fun m!3270805 () Bool)

(assert (=> d!824362 m!3270805))

(assert (=> d!824362 m!3270475))

(declare-fun m!3270807 () Bool)

(assert (=> d!824362 m!3270807))

(assert (=> b!2842928 m!3270475))

(declare-fun m!3270809 () Bool)

(assert (=> b!2842928 m!3270809))

(declare-fun m!3270811 () Bool)

(assert (=> b!2842935 m!3270811))

(assert (=> d!824240 d!824362))

(declare-fun d!824376 () Bool)

(declare-fun lt!1011926 () List!33813)

(declare-fun size!26162 (List!33813) Int)

(declare-fun size!26163 (List!33810) Int)

(assert (=> d!824376 (= (size!26162 lt!1011926) (size!26163 rules!1139))))

(declare-fun e!1801161 () List!33813)

(assert (=> d!824376 (= lt!1011926 e!1801161)))

(declare-fun c!458863 () Bool)

(assert (=> d!824376 (= c!458863 ((_ is Nil!33686) rules!1139))))

(assert (=> d!824376 (= (map!7230 rules!1139 lambda!104282) lt!1011926)))

(declare-fun b!2842946 () Bool)

(assert (=> b!2842946 (= e!1801161 Nil!33689)))

(declare-fun b!2842947 () Bool)

(declare-fun $colon$colon!580 (List!33813 Regex!8457) List!33813)

(declare-fun dynLambda!14179 (Int Rule!9932) Regex!8457)

(assert (=> b!2842947 (= e!1801161 ($colon$colon!580 (map!7230 (t!232701 rules!1139) lambda!104282) (dynLambda!14179 lambda!104282 (h!39106 rules!1139))))))

(assert (= (and d!824376 c!458863) b!2842946))

(assert (= (and d!824376 (not c!458863)) b!2842947))

(declare-fun b_lambda!85487 () Bool)

(assert (=> (not b_lambda!85487) (not b!2842947)))

(declare-fun m!3270839 () Bool)

(assert (=> d!824376 m!3270839))

(declare-fun m!3270841 () Bool)

(assert (=> d!824376 m!3270841))

(declare-fun m!3270843 () Bool)

(assert (=> b!2842947 m!3270843))

(declare-fun m!3270845 () Bool)

(assert (=> b!2842947 m!3270845))

(assert (=> b!2842947 m!3270843))

(assert (=> b!2842947 m!3270845))

(declare-fun m!3270847 () Bool)

(assert (=> b!2842947 m!3270847))

(assert (=> d!824240 d!824376))

(declare-fun d!824396 () Bool)

(assert (=> d!824396 (= (inv!16 (value!162783 t1!27)) (= (charsToInt!0 (text!37519 (value!162783 t1!27))) (value!162774 (value!162783 t1!27))))))

(declare-fun bs!519041 () Bool)

(assert (= bs!519041 d!824396))

(declare-fun m!3270849 () Bool)

(assert (=> bs!519041 m!3270849))

(assert (=> b!2842776 d!824396))

(declare-fun d!824398 () Bool)

(assert (=> d!824398 (= (list!12548 lt!1011843) (list!12552 (c!458814 lt!1011843)))))

(declare-fun bs!519042 () Bool)

(assert (= bs!519042 d!824398))

(declare-fun m!3270851 () Bool)

(assert (=> bs!519042 m!3270851))

(assert (=> d!824238 d!824398))

(declare-fun bs!519043 () Bool)

(declare-fun d!824400 () Bool)

(assert (= bs!519043 (and d!824400 d!824296)))

(declare-fun lambda!104309 () Int)

(assert (=> bs!519043 (= (= (toValue!7112 (transformation!5066 (rule!7494 t2!27))) (toValue!7112 (transformation!5066 (rule!7494 t1!27)))) (= lambda!104309 lambda!104288))))

(assert (=> d!824400 true))

(assert (=> d!824400 (< (dynLambda!14175 order!18017 (toValue!7112 (transformation!5066 (rule!7494 t2!27)))) (dynLambda!14176 order!18019 lambda!104309))))

(assert (=> d!824400 (= (equivClasses!2011 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (toValue!7112 (transformation!5066 (rule!7494 t2!27)))) (Forall2!844 lambda!104309))))

(declare-fun bs!519044 () Bool)

(assert (= bs!519044 d!824400))

(declare-fun m!3270853 () Bool)

(assert (=> bs!519044 m!3270853))

(assert (=> b!2842694 d!824400))

(declare-fun d!824402 () Bool)

(assert (=> d!824402 true))

(declare-fun lt!1011929 () Bool)

(assert (=> d!824402 (= lt!1011929 (rulesValidInductive!1733 thiss!11361 rules!1139))))

(declare-fun lambda!104312 () Int)

(declare-fun forall!6918 (List!33810 Int) Bool)

(assert (=> d!824402 (= lt!1011929 (forall!6918 rules!1139 lambda!104312))))

(assert (=> d!824402 (= (rulesValid!1882 thiss!11361 rules!1139) lt!1011929)))

(declare-fun bs!519045 () Bool)

(assert (= bs!519045 d!824402))

(assert (=> bs!519045 m!3270773))

(declare-fun m!3270855 () Bool)

(assert (=> bs!519045 m!3270855))

(assert (=> d!824242 d!824402))

(declare-fun d!824404 () Bool)

(declare-fun c!458866 () Bool)

(assert (=> d!824404 (= c!458866 ((_ is Node!10448) (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27)))))))

(declare-fun e!1801166 () Bool)

(assert (=> d!824404 (= (inv!45682 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27)))) e!1801166)))

(declare-fun b!2842956 () Bool)

(declare-fun inv!45686 (Conc!10448) Bool)

(assert (=> b!2842956 (= e!1801166 (inv!45686 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27)))))))

(declare-fun b!2842957 () Bool)

(declare-fun e!1801167 () Bool)

(assert (=> b!2842957 (= e!1801166 e!1801167)))

(declare-fun res!1182697 () Bool)

(assert (=> b!2842957 (= res!1182697 (not ((_ is Leaf!15900) (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27))))))))

(assert (=> b!2842957 (=> res!1182697 e!1801167)))

(declare-fun b!2842958 () Bool)

(declare-fun inv!45687 (Conc!10448) Bool)

(assert (=> b!2842958 (= e!1801167 (inv!45687 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27)))))))

(assert (= (and d!824404 c!458866) b!2842956))

(assert (= (and d!824404 (not c!458866)) b!2842957))

(assert (= (and b!2842957 (not res!1182697)) b!2842958))

(declare-fun m!3270857 () Bool)

(assert (=> b!2842956 m!3270857))

(declare-fun m!3270859 () Bool)

(assert (=> b!2842958 m!3270859))

(assert (=> b!2842690 d!824404))

(declare-fun d!824406 () Bool)

(declare-fun lt!1011930 () Bool)

(assert (=> d!824406 (= lt!1011930 (isEmpty!18542 (list!12548 (_2!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t1!27)))))))))

(assert (=> d!824406 (= lt!1011930 (isEmpty!18545 (c!458814 (_2!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t1!27)))))))))

(assert (=> d!824406 (= (isEmpty!18540 (_2!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t1!27))))) lt!1011930)))

(declare-fun bs!519046 () Bool)

(assert (= bs!519046 d!824406))

(declare-fun m!3270861 () Bool)

(assert (=> bs!519046 m!3270861))

(assert (=> bs!519046 m!3270861))

(declare-fun m!3270863 () Bool)

(assert (=> bs!519046 m!3270863))

(declare-fun m!3270865 () Bool)

(assert (=> bs!519046 m!3270865))

(assert (=> b!2842757 d!824406))

(assert (=> b!2842757 d!824334))

(assert (=> b!2842757 d!824344))

(assert (=> b!2842757 d!824348))

(declare-fun d!824408 () Bool)

(assert (=> d!824408 (= (list!12548 lt!1011879) (list!12552 (c!458814 lt!1011879)))))

(declare-fun bs!519047 () Bool)

(assert (= bs!519047 d!824408))

(declare-fun m!3270867 () Bool)

(assert (=> bs!519047 m!3270867))

(assert (=> d!824292 d!824408))

(declare-fun d!824410 () Bool)

(declare-fun lt!1011931 () Int)

(assert (=> d!824410 (>= lt!1011931 0)))

(declare-fun e!1801168 () Int)

(assert (=> d!824410 (= lt!1011931 e!1801168)))

(declare-fun c!458867 () Bool)

(assert (=> d!824410 (= c!458867 ((_ is Nil!33685) (originalCharacters!5798 t1!27)))))

(assert (=> d!824410 (= (size!26155 (originalCharacters!5798 t1!27)) lt!1011931)))

(declare-fun b!2842959 () Bool)

(assert (=> b!2842959 (= e!1801168 0)))

(declare-fun b!2842960 () Bool)

(assert (=> b!2842960 (= e!1801168 (+ 1 (size!26155 (t!232700 (originalCharacters!5798 t1!27)))))))

(assert (= (and d!824410 c!458867) b!2842959))

(assert (= (and d!824410 (not c!458867)) b!2842960))

(declare-fun m!3270869 () Bool)

(assert (=> b!2842960 m!3270869))

(assert (=> b!2842685 d!824410))

(declare-fun d!824412 () Bool)

(assert (=> d!824412 (= (isEmpty!18542 (originalCharacters!5798 t1!27)) ((_ is Nil!33685) (originalCharacters!5798 t1!27)))))

(assert (=> d!824228 d!824412))

(declare-fun bs!519048 () Bool)

(declare-fun d!824414 () Bool)

(assert (= bs!519048 (and d!824414 d!824322)))

(declare-fun lambda!104313 () Int)

(assert (=> bs!519048 (= (and (= (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toChars!6971 (transformation!5066 (rule!7494 t2!27)))) (= (toValue!7112 (transformation!5066 (h!39106 rules!1139))) (toValue!7112 (transformation!5066 (rule!7494 t2!27))))) (= lambda!104313 lambda!104291))))

(assert (=> d!824414 true))

(assert (=> d!824414 (< (dynLambda!14177 order!18021 (toChars!6971 (transformation!5066 (h!39106 rules!1139)))) (dynLambda!14178 order!18023 lambda!104313))))

(assert (=> d!824414 true))

(assert (=> d!824414 (< (dynLambda!14175 order!18017 (toValue!7112 (transformation!5066 (h!39106 rules!1139)))) (dynLambda!14178 order!18023 lambda!104313))))

(assert (=> d!824414 (= (semiInverseModEq!2112 (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toValue!7112 (transformation!5066 (h!39106 rules!1139)))) (Forall!1247 lambda!104313))))

(declare-fun bs!519049 () Bool)

(assert (= bs!519049 d!824414))

(declare-fun m!3270871 () Bool)

(assert (=> bs!519049 m!3270871))

(assert (=> d!824284 d!824414))

(declare-fun d!824416 () Bool)

(declare-fun isBalanced!3146 (Conc!10448) Bool)

(assert (=> d!824416 (= (inv!45683 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27))) (isBalanced!3146 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27)))))))

(declare-fun bs!519050 () Bool)

(assert (= bs!519050 d!824416))

(declare-fun m!3270873 () Bool)

(assert (=> bs!519050 m!3270873))

(assert (=> tb!154995 d!824416))

(declare-fun d!824418 () Bool)

(assert (=> d!824418 (= (isEmpty!18542 (list!12548 lt!1011836)) ((_ is Nil!33685) (list!12548 lt!1011836)))))

(assert (=> d!824290 d!824418))

(declare-fun d!824420 () Bool)

(assert (=> d!824420 (= (list!12548 lt!1011836) (list!12552 (c!458814 lt!1011836)))))

(declare-fun bs!519051 () Bool)

(assert (= bs!519051 d!824420))

(declare-fun m!3270875 () Bool)

(assert (=> bs!519051 m!3270875))

(assert (=> d!824290 d!824420))

(declare-fun d!824422 () Bool)

(declare-fun lt!1011934 () Bool)

(assert (=> d!824422 (= lt!1011934 (isEmpty!18542 (list!12552 (c!458814 lt!1011836))))))

(assert (=> d!824422 (= lt!1011934 (= (size!26156 (c!458814 lt!1011836)) 0))))

(assert (=> d!824422 (= (isEmpty!18545 (c!458814 lt!1011836)) lt!1011934)))

(declare-fun bs!519052 () Bool)

(assert (= bs!519052 d!824422))

(assert (=> bs!519052 m!3270875))

(assert (=> bs!519052 m!3270875))

(declare-fun m!3270877 () Bool)

(assert (=> bs!519052 m!3270877))

(assert (=> bs!519052 m!3270469))

(assert (=> d!824290 d!824422))

(declare-fun d!824424 () Bool)

(declare-fun lt!1011935 () Token!9534)

(assert (=> d!824424 (= lt!1011935 (apply!7836 (list!12550 (_1!19894 lt!1011874)) 0))))

(assert (=> d!824424 (= lt!1011935 (apply!7837 (c!458833 (_1!19894 lt!1011874)) 0))))

(declare-fun e!1801169 () Bool)

(assert (=> d!824424 e!1801169))

(declare-fun res!1182698 () Bool)

(assert (=> d!824424 (=> (not res!1182698) (not e!1801169))))

(assert (=> d!824424 (= res!1182698 (<= 0 0))))

(assert (=> d!824424 (= (apply!7835 (_1!19894 lt!1011874) 0) lt!1011935)))

(declare-fun b!2842961 () Bool)

(assert (=> b!2842961 (= e!1801169 (< 0 (size!26158 (_1!19894 lt!1011874))))))

(assert (= (and d!824424 res!1182698) b!2842961))

(assert (=> d!824424 m!3270657))

(assert (=> d!824424 m!3270657))

(declare-fun m!3270879 () Bool)

(assert (=> d!824424 m!3270879))

(declare-fun m!3270881 () Bool)

(assert (=> d!824424 m!3270881))

(assert (=> b!2842961 m!3270615))

(assert (=> b!2842762 d!824424))

(declare-fun d!824426 () Bool)

(assert (=> d!824426 (= (inv!45683 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27))) (isBalanced!3146 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27)))))))

(declare-fun bs!519053 () Bool)

(assert (= bs!519053 d!824426))

(declare-fun m!3270883 () Bool)

(assert (=> bs!519053 m!3270883))

(assert (=> tb!154989 d!824426))

(declare-fun d!824428 () Bool)

(declare-fun lt!1011936 () Bool)

(assert (=> d!824428 (= lt!1011936 (isEmpty!18542 (list!12548 (_2!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t2!27)))))))))

(assert (=> d!824428 (= lt!1011936 (isEmpty!18545 (c!458814 (_2!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t2!27)))))))))

(assert (=> d!824428 (= (isEmpty!18540 (_2!19894 (lex!2028 thiss!11361 rules!1139 (print!1747 thiss!11361 (singletonSeq!2181 t2!27))))) lt!1011936)))

(declare-fun bs!519054 () Bool)

(assert (= bs!519054 d!824428))

(declare-fun m!3270885 () Bool)

(assert (=> bs!519054 m!3270885))

(assert (=> bs!519054 m!3270885))

(declare-fun m!3270887 () Bool)

(assert (=> bs!519054 m!3270887))

(declare-fun m!3270889 () Bool)

(assert (=> bs!519054 m!3270889))

(assert (=> b!2842764 d!824428))

(assert (=> b!2842764 d!824314))

(assert (=> b!2842764 d!824318))

(assert (=> b!2842764 d!824316))

(declare-fun d!824430 () Bool)

(declare-fun c!458868 () Bool)

(assert (=> d!824430 (= c!458868 ((_ is Node!10448) (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27)))))))

(declare-fun e!1801170 () Bool)

(assert (=> d!824430 (= (inv!45682 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27)))) e!1801170)))

(declare-fun b!2842962 () Bool)

(assert (=> b!2842962 (= e!1801170 (inv!45686 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27)))))))

(declare-fun b!2842963 () Bool)

(declare-fun e!1801171 () Bool)

(assert (=> b!2842963 (= e!1801170 e!1801171)))

(declare-fun res!1182699 () Bool)

(assert (=> b!2842963 (= res!1182699 (not ((_ is Leaf!15900) (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27))))))))

(assert (=> b!2842963 (=> res!1182699 e!1801171)))

(declare-fun b!2842964 () Bool)

(assert (=> b!2842964 (= e!1801171 (inv!45687 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27)))))))

(assert (= (and d!824430 c!458868) b!2842962))

(assert (= (and d!824430 (not c!458868)) b!2842963))

(assert (= (and b!2842963 (not res!1182699)) b!2842964))

(declare-fun m!3270891 () Bool)

(assert (=> b!2842962 m!3270891))

(declare-fun m!3270893 () Bool)

(assert (=> b!2842964 m!3270893))

(assert (=> b!2842693 d!824430))

(declare-fun d!824432 () Bool)

(declare-fun lt!1011937 () Bool)

(assert (=> d!824432 (= lt!1011937 (isEmpty!18542 (list!12548 (_2!19894 lt!1011874))))))

(assert (=> d!824432 (= lt!1011937 (isEmpty!18545 (c!458814 (_2!19894 lt!1011874))))))

(assert (=> d!824432 (= (isEmpty!18540 (_2!19894 lt!1011874)) lt!1011937)))

(declare-fun bs!519055 () Bool)

(assert (= bs!519055 d!824432))

(declare-fun m!3270895 () Bool)

(assert (=> bs!519055 m!3270895))

(assert (=> bs!519055 m!3270895))

(declare-fun m!3270897 () Bool)

(assert (=> bs!519055 m!3270897))

(declare-fun m!3270899 () Bool)

(assert (=> bs!519055 m!3270899))

(assert (=> b!2842763 d!824432))

(declare-fun bs!519056 () Bool)

(declare-fun d!824434 () Bool)

(assert (= bs!519056 (and d!824434 d!824322)))

(declare-fun lambda!104314 () Int)

(assert (=> bs!519056 (= (and (= (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (toChars!6971 (transformation!5066 (rule!7494 t2!27)))) (= (toValue!7112 (transformation!5066 (rule!7494 t1!27))) (toValue!7112 (transformation!5066 (rule!7494 t2!27))))) (= lambda!104314 lambda!104291))))

(declare-fun bs!519057 () Bool)

(assert (= bs!519057 (and d!824434 d!824414)))

(assert (=> bs!519057 (= (and (= (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (toChars!6971 (transformation!5066 (h!39106 rules!1139)))) (= (toValue!7112 (transformation!5066 (rule!7494 t1!27))) (toValue!7112 (transformation!5066 (h!39106 rules!1139))))) (= lambda!104314 lambda!104313))))

(assert (=> d!824434 true))

(assert (=> d!824434 (< (dynLambda!14177 order!18021 (toChars!6971 (transformation!5066 (rule!7494 t1!27)))) (dynLambda!14178 order!18023 lambda!104314))))

(assert (=> d!824434 true))

(assert (=> d!824434 (< (dynLambda!14175 order!18017 (toValue!7112 (transformation!5066 (rule!7494 t1!27)))) (dynLambda!14178 order!18023 lambda!104314))))

(assert (=> d!824434 (= (semiInverseModEq!2112 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (toValue!7112 (transformation!5066 (rule!7494 t1!27)))) (Forall!1247 lambda!104314))))

(declare-fun bs!519058 () Bool)

(assert (= bs!519058 d!824434))

(declare-fun m!3270901 () Bool)

(assert (=> bs!519058 m!3270901))

(assert (=> d!824224 d!824434))

(declare-fun bs!519059 () Bool)

(declare-fun d!824436 () Bool)

(assert (= bs!519059 (and d!824436 d!824296)))

(declare-fun lambda!104315 () Int)

(assert (=> bs!519059 (= (= (toValue!7112 (transformation!5066 (h!39106 rules!1139))) (toValue!7112 (transformation!5066 (rule!7494 t1!27)))) (= lambda!104315 lambda!104288))))

(declare-fun bs!519060 () Bool)

(assert (= bs!519060 (and d!824436 d!824400)))

(assert (=> bs!519060 (= (= (toValue!7112 (transformation!5066 (h!39106 rules!1139))) (toValue!7112 (transformation!5066 (rule!7494 t2!27)))) (= lambda!104315 lambda!104309))))

(assert (=> d!824436 true))

(assert (=> d!824436 (< (dynLambda!14175 order!18017 (toValue!7112 (transformation!5066 (h!39106 rules!1139)))) (dynLambda!14176 order!18019 lambda!104315))))

(assert (=> d!824436 (= (equivClasses!2011 (toChars!6971 (transformation!5066 (h!39106 rules!1139))) (toValue!7112 (transformation!5066 (h!39106 rules!1139)))) (Forall2!844 lambda!104315))))

(declare-fun bs!519061 () Bool)

(assert (= bs!519061 d!824436))

(declare-fun m!3270903 () Bool)

(assert (=> bs!519061 m!3270903))

(assert (=> b!2842769 d!824436))

(declare-fun d!824438 () Bool)

(declare-fun lt!1011938 () Int)

(assert (=> d!824438 (>= lt!1011938 0)))

(declare-fun e!1801172 () Int)

(assert (=> d!824438 (= lt!1011938 e!1801172)))

(declare-fun c!458869 () Bool)

(assert (=> d!824438 (= c!458869 ((_ is Nil!33685) (list!12548 lt!1011836)))))

(assert (=> d!824438 (= (size!26155 (list!12548 lt!1011836)) lt!1011938)))

(declare-fun b!2842965 () Bool)

(assert (=> b!2842965 (= e!1801172 0)))

(declare-fun b!2842966 () Bool)

(assert (=> b!2842966 (= e!1801172 (+ 1 (size!26155 (t!232700 (list!12548 lt!1011836)))))))

(assert (= (and d!824438 c!458869) b!2842965))

(assert (= (and d!824438 (not c!458869)) b!2842966))

(declare-fun m!3270905 () Bool)

(assert (=> b!2842966 m!3270905))

(assert (=> d!824236 d!824438))

(assert (=> d!824236 d!824420))

(declare-fun d!824440 () Bool)

(declare-fun lt!1011941 () Int)

(assert (=> d!824440 (= lt!1011941 (size!26155 (list!12552 (c!458814 lt!1011836))))))

(assert (=> d!824440 (= lt!1011941 (ite ((_ is Empty!10448) (c!458814 lt!1011836)) 0 (ite ((_ is Leaf!15900) (c!458814 lt!1011836)) (csize!21127 (c!458814 lt!1011836)) (csize!21126 (c!458814 lt!1011836)))))))

(assert (=> d!824440 (= (size!26156 (c!458814 lt!1011836)) lt!1011941)))

(declare-fun bs!519062 () Bool)

(assert (= bs!519062 d!824440))

(assert (=> bs!519062 m!3270875))

(assert (=> bs!519062 m!3270875))

(declare-fun m!3270907 () Bool)

(assert (=> bs!519062 m!3270907))

(assert (=> d!824236 d!824440))

(declare-fun d!824442 () Bool)

(assert (=> d!824442 (= (isEmpty!18542 (originalCharacters!5798 t2!27)) ((_ is Nil!33685) (originalCharacters!5798 t2!27)))))

(assert (=> d!824230 d!824442))

(declare-fun d!824444 () Bool)

(assert (=> d!824444 (= (inv!45677 (tag!5570 (h!39106 (t!232701 rules!1139)))) (= (mod (str.len (value!162782 (tag!5570 (h!39106 (t!232701 rules!1139))))) 2) 0))))

(assert (=> b!2842829 d!824444))

(declare-fun d!824446 () Bool)

(declare-fun res!1182700 () Bool)

(declare-fun e!1801173 () Bool)

(assert (=> d!824446 (=> (not res!1182700) (not e!1801173))))

(assert (=> d!824446 (= res!1182700 (semiInverseModEq!2112 (toChars!6971 (transformation!5066 (h!39106 (t!232701 rules!1139)))) (toValue!7112 (transformation!5066 (h!39106 (t!232701 rules!1139))))))))

(assert (=> d!824446 (= (inv!45680 (transformation!5066 (h!39106 (t!232701 rules!1139)))) e!1801173)))

(declare-fun b!2842967 () Bool)

(assert (=> b!2842967 (= e!1801173 (equivClasses!2011 (toChars!6971 (transformation!5066 (h!39106 (t!232701 rules!1139)))) (toValue!7112 (transformation!5066 (h!39106 (t!232701 rules!1139))))))))

(assert (= (and d!824446 res!1182700) b!2842967))

(declare-fun m!3270909 () Bool)

(assert (=> d!824446 m!3270909))

(declare-fun m!3270911 () Bool)

(assert (=> b!2842967 m!3270911))

(assert (=> b!2842829 d!824446))

(declare-fun d!824448 () Bool)

(declare-fun res!1182705 () Bool)

(declare-fun e!1801178 () Bool)

(assert (=> d!824448 (=> res!1182705 e!1801178)))

(assert (=> d!824448 (= res!1182705 ((_ is Nil!33686) rules!1139))))

(assert (=> d!824448 (= (noDuplicateTag!1878 thiss!11361 rules!1139 Nil!33690) e!1801178)))

(declare-fun b!2842972 () Bool)

(declare-fun e!1801179 () Bool)

(assert (=> b!2842972 (= e!1801178 e!1801179)))

(declare-fun res!1182706 () Bool)

(assert (=> b!2842972 (=> (not res!1182706) (not e!1801179))))

(declare-fun contains!6113 (List!33814 String!37046) Bool)

(assert (=> b!2842972 (= res!1182706 (not (contains!6113 Nil!33690 (tag!5570 (h!39106 rules!1139)))))))

(declare-fun b!2842973 () Bool)

(assert (=> b!2842973 (= e!1801179 (noDuplicateTag!1878 thiss!11361 (t!232701 rules!1139) (Cons!33690 (tag!5570 (h!39106 rules!1139)) Nil!33690)))))

(assert (= (and d!824448 (not res!1182705)) b!2842972))

(assert (= (and b!2842972 res!1182706) b!2842973))

(declare-fun m!3270913 () Bool)

(assert (=> b!2842972 m!3270913))

(declare-fun m!3270915 () Bool)

(assert (=> b!2842973 m!3270915))

(assert (=> b!2842697 d!824448))

(declare-fun d!824450 () Bool)

(assert (=> d!824450 (= (inv!17 (value!162783 t2!27)) (= (charsToBigInt!1 (text!37520 (value!162783 t2!27))) (value!162775 (value!162783 t2!27))))))

(declare-fun bs!519063 () Bool)

(assert (= bs!519063 d!824450))

(declare-fun m!3270917 () Bool)

(assert (=> bs!519063 m!3270917))

(assert (=> b!2842676 d!824450))

(declare-fun tp!910951 () Bool)

(declare-fun b!2842982 () Bool)

(declare-fun tp!910950 () Bool)

(declare-fun e!1801184 () Bool)

(assert (=> b!2842982 (= e!1801184 (and (inv!45682 (left!25383 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27))))) tp!910951 (inv!45682 (right!25713 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27))))) tp!910950))))

(declare-fun b!2842984 () Bool)

(declare-fun e!1801185 () Bool)

(declare-fun tp!910949 () Bool)

(assert (=> b!2842984 (= e!1801185 tp!910949)))

(declare-fun b!2842983 () Bool)

(declare-fun inv!45688 (IArray!20901) Bool)

(assert (=> b!2842983 (= e!1801184 (and (inv!45688 (xs!13560 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27))))) e!1801185))))

(assert (=> b!2842693 (= tp!910856 (and (inv!45682 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27)))) e!1801184))))

(assert (= (and b!2842693 ((_ is Node!10448) (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27))))) b!2842982))

(assert (= b!2842983 b!2842984))

(assert (= (and b!2842693 ((_ is Leaf!15900) (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t2!27))) (value!162783 t2!27))))) b!2842983))

(declare-fun m!3270919 () Bool)

(assert (=> b!2842982 m!3270919))

(declare-fun m!3270921 () Bool)

(assert (=> b!2842982 m!3270921))

(declare-fun m!3270923 () Bool)

(assert (=> b!2842983 m!3270923))

(assert (=> b!2842693 m!3270449))

(declare-fun b!2842985 () Bool)

(declare-fun e!1801186 () Bool)

(assert (=> b!2842985 (= e!1801186 tp_is_empty!14683)))

(declare-fun b!2842987 () Bool)

(declare-fun tp!910953 () Bool)

(assert (=> b!2842987 (= e!1801186 tp!910953)))

(declare-fun b!2842988 () Bool)

(declare-fun tp!910955 () Bool)

(declare-fun tp!910954 () Bool)

(assert (=> b!2842988 (= e!1801186 (and tp!910955 tp!910954))))

(assert (=> b!2842817 (= tp!910912 e!1801186)))

(declare-fun b!2842986 () Bool)

(declare-fun tp!910952 () Bool)

(declare-fun tp!910956 () Bool)

(assert (=> b!2842986 (= e!1801186 (and tp!910952 tp!910956))))

(assert (= (and b!2842817 ((_ is ElementMatch!8457) (regOne!17426 (regex!5066 (rule!7494 t1!27))))) b!2842985))

(assert (= (and b!2842817 ((_ is Concat!13754) (regOne!17426 (regex!5066 (rule!7494 t1!27))))) b!2842986))

(assert (= (and b!2842817 ((_ is Star!8457) (regOne!17426 (regex!5066 (rule!7494 t1!27))))) b!2842987))

(assert (= (and b!2842817 ((_ is Union!8457) (regOne!17426 (regex!5066 (rule!7494 t1!27))))) b!2842988))

(declare-fun b!2842989 () Bool)

(declare-fun e!1801187 () Bool)

(assert (=> b!2842989 (= e!1801187 tp_is_empty!14683)))

(declare-fun b!2842991 () Bool)

(declare-fun tp!910958 () Bool)

(assert (=> b!2842991 (= e!1801187 tp!910958)))

(declare-fun b!2842992 () Bool)

(declare-fun tp!910960 () Bool)

(declare-fun tp!910959 () Bool)

(assert (=> b!2842992 (= e!1801187 (and tp!910960 tp!910959))))

(assert (=> b!2842817 (= tp!910916 e!1801187)))

(declare-fun b!2842990 () Bool)

(declare-fun tp!910957 () Bool)

(declare-fun tp!910961 () Bool)

(assert (=> b!2842990 (= e!1801187 (and tp!910957 tp!910961))))

(assert (= (and b!2842817 ((_ is ElementMatch!8457) (regTwo!17426 (regex!5066 (rule!7494 t1!27))))) b!2842989))

(assert (= (and b!2842817 ((_ is Concat!13754) (regTwo!17426 (regex!5066 (rule!7494 t1!27))))) b!2842990))

(assert (= (and b!2842817 ((_ is Star!8457) (regTwo!17426 (regex!5066 (rule!7494 t1!27))))) b!2842991))

(assert (= (and b!2842817 ((_ is Union!8457) (regTwo!17426 (regex!5066 (rule!7494 t1!27))))) b!2842992))

(declare-fun b!2842993 () Bool)

(declare-fun e!1801188 () Bool)

(assert (=> b!2842993 (= e!1801188 tp_is_empty!14683)))

(declare-fun b!2842995 () Bool)

(declare-fun tp!910963 () Bool)

(assert (=> b!2842995 (= e!1801188 tp!910963)))

(declare-fun b!2842996 () Bool)

(declare-fun tp!910965 () Bool)

(declare-fun tp!910964 () Bool)

(assert (=> b!2842996 (= e!1801188 (and tp!910965 tp!910964))))

(assert (=> b!2842818 (= tp!910913 e!1801188)))

(declare-fun b!2842994 () Bool)

(declare-fun tp!910962 () Bool)

(declare-fun tp!910966 () Bool)

(assert (=> b!2842994 (= e!1801188 (and tp!910962 tp!910966))))

(assert (= (and b!2842818 ((_ is ElementMatch!8457) (reg!8786 (regex!5066 (rule!7494 t1!27))))) b!2842993))

(assert (= (and b!2842818 ((_ is Concat!13754) (reg!8786 (regex!5066 (rule!7494 t1!27))))) b!2842994))

(assert (= (and b!2842818 ((_ is Star!8457) (reg!8786 (regex!5066 (rule!7494 t1!27))))) b!2842995))

(assert (= (and b!2842818 ((_ is Union!8457) (reg!8786 (regex!5066 (rule!7494 t1!27))))) b!2842996))

(declare-fun b!2842997 () Bool)

(declare-fun e!1801189 () Bool)

(assert (=> b!2842997 (= e!1801189 tp_is_empty!14683)))

(declare-fun b!2842999 () Bool)

(declare-fun tp!910968 () Bool)

(assert (=> b!2842999 (= e!1801189 tp!910968)))

(declare-fun b!2843000 () Bool)

(declare-fun tp!910970 () Bool)

(declare-fun tp!910969 () Bool)

(assert (=> b!2843000 (= e!1801189 (and tp!910970 tp!910969))))

(assert (=> b!2842837 (= tp!910932 e!1801189)))

(declare-fun b!2842998 () Bool)

(declare-fun tp!910967 () Bool)

(declare-fun tp!910971 () Bool)

(assert (=> b!2842998 (= e!1801189 (and tp!910967 tp!910971))))

(assert (= (and b!2842837 ((_ is ElementMatch!8457) (regOne!17426 (regex!5066 (h!39106 rules!1139))))) b!2842997))

(assert (= (and b!2842837 ((_ is Concat!13754) (regOne!17426 (regex!5066 (h!39106 rules!1139))))) b!2842998))

(assert (= (and b!2842837 ((_ is Star!8457) (regOne!17426 (regex!5066 (h!39106 rules!1139))))) b!2842999))

(assert (= (and b!2842837 ((_ is Union!8457) (regOne!17426 (regex!5066 (h!39106 rules!1139))))) b!2843000))

(declare-fun b!2843001 () Bool)

(declare-fun e!1801190 () Bool)

(assert (=> b!2843001 (= e!1801190 tp_is_empty!14683)))

(declare-fun b!2843003 () Bool)

(declare-fun tp!910973 () Bool)

(assert (=> b!2843003 (= e!1801190 tp!910973)))

(declare-fun b!2843004 () Bool)

(declare-fun tp!910975 () Bool)

(declare-fun tp!910974 () Bool)

(assert (=> b!2843004 (= e!1801190 (and tp!910975 tp!910974))))

(assert (=> b!2842837 (= tp!910936 e!1801190)))

(declare-fun b!2843002 () Bool)

(declare-fun tp!910972 () Bool)

(declare-fun tp!910976 () Bool)

(assert (=> b!2843002 (= e!1801190 (and tp!910972 tp!910976))))

(assert (= (and b!2842837 ((_ is ElementMatch!8457) (regTwo!17426 (regex!5066 (h!39106 rules!1139))))) b!2843001))

(assert (= (and b!2842837 ((_ is Concat!13754) (regTwo!17426 (regex!5066 (h!39106 rules!1139))))) b!2843002))

(assert (= (and b!2842837 ((_ is Star!8457) (regTwo!17426 (regex!5066 (h!39106 rules!1139))))) b!2843003))

(assert (= (and b!2842837 ((_ is Union!8457) (regTwo!17426 (regex!5066 (h!39106 rules!1139))))) b!2843004))

(declare-fun b!2843007 () Bool)

(declare-fun b_free!82525 () Bool)

(declare-fun b_next!83229 () Bool)

(assert (=> b!2843007 (= b_free!82525 (not b_next!83229))))

(declare-fun tp!910977 () Bool)

(declare-fun b_and!208695 () Bool)

(assert (=> b!2843007 (= tp!910977 b_and!208695)))

(declare-fun b_free!82527 () Bool)

(declare-fun b_next!83231 () Bool)

(assert (=> b!2843007 (= b_free!82527 (not b_next!83231))))

(declare-fun t!232747 () Bool)

(declare-fun tb!155021 () Bool)

(assert (=> (and b!2843007 (= (toChars!6971 (transformation!5066 (h!39106 (t!232701 (t!232701 rules!1139))))) (toChars!6971 (transformation!5066 (rule!7494 t1!27)))) t!232747) tb!155021))

(declare-fun result!193448 () Bool)

(assert (= result!193448 result!193398))

(assert (=> b!2842684 t!232747))

(declare-fun tb!155023 () Bool)

(declare-fun t!232749 () Bool)

(assert (=> (and b!2843007 (= (toChars!6971 (transformation!5066 (h!39106 (t!232701 (t!232701 rules!1139))))) (toChars!6971 (transformation!5066 (rule!7494 t2!27)))) t!232749) tb!155023))

(declare-fun result!193450 () Bool)

(assert (= result!193450 result!193406))

(assert (=> b!2842691 t!232749))

(assert (=> d!824238 t!232747))

(assert (=> d!824292 t!232749))

(declare-fun tp!910978 () Bool)

(declare-fun b_and!208697 () Bool)

(assert (=> b!2843007 (= tp!910978 (and (=> t!232747 result!193448) (=> t!232749 result!193450) b_and!208697))))

(declare-fun e!1801193 () Bool)

(assert (=> b!2843007 (= e!1801193 (and tp!910977 tp!910978))))

(declare-fun tp!910980 () Bool)

(declare-fun b!2843006 () Bool)

(declare-fun e!1801192 () Bool)

(assert (=> b!2843006 (= e!1801192 (and tp!910980 (inv!45677 (tag!5570 (h!39106 (t!232701 (t!232701 rules!1139))))) (inv!45680 (transformation!5066 (h!39106 (t!232701 (t!232701 rules!1139))))) e!1801193))))

(declare-fun b!2843005 () Bool)

(declare-fun e!1801191 () Bool)

(declare-fun tp!910979 () Bool)

(assert (=> b!2843005 (= e!1801191 (and e!1801192 tp!910979))))

(assert (=> b!2842828 (= tp!910927 e!1801191)))

(assert (= b!2843006 b!2843007))

(assert (= b!2843005 b!2843006))

(assert (= (and b!2842828 ((_ is Cons!33686) (t!232701 (t!232701 rules!1139)))) b!2843005))

(declare-fun m!3270925 () Bool)

(assert (=> b!2843006 m!3270925))

(declare-fun m!3270927 () Bool)

(assert (=> b!2843006 m!3270927))

(declare-fun b!2843008 () Bool)

(declare-fun e!1801195 () Bool)

(assert (=> b!2843008 (= e!1801195 tp_is_empty!14683)))

(declare-fun b!2843010 () Bool)

(declare-fun tp!910982 () Bool)

(assert (=> b!2843010 (= e!1801195 tp!910982)))

(declare-fun b!2843011 () Bool)

(declare-fun tp!910984 () Bool)

(declare-fun tp!910983 () Bool)

(assert (=> b!2843011 (= e!1801195 (and tp!910984 tp!910983))))

(assert (=> b!2842819 (= tp!910915 e!1801195)))

(declare-fun b!2843009 () Bool)

(declare-fun tp!910981 () Bool)

(declare-fun tp!910985 () Bool)

(assert (=> b!2843009 (= e!1801195 (and tp!910981 tp!910985))))

(assert (= (and b!2842819 ((_ is ElementMatch!8457) (regOne!17427 (regex!5066 (rule!7494 t1!27))))) b!2843008))

(assert (= (and b!2842819 ((_ is Concat!13754) (regOne!17427 (regex!5066 (rule!7494 t1!27))))) b!2843009))

(assert (= (and b!2842819 ((_ is Star!8457) (regOne!17427 (regex!5066 (rule!7494 t1!27))))) b!2843010))

(assert (= (and b!2842819 ((_ is Union!8457) (regOne!17427 (regex!5066 (rule!7494 t1!27))))) b!2843011))

(declare-fun b!2843012 () Bool)

(declare-fun e!1801196 () Bool)

(assert (=> b!2843012 (= e!1801196 tp_is_empty!14683)))

(declare-fun b!2843014 () Bool)

(declare-fun tp!910987 () Bool)

(assert (=> b!2843014 (= e!1801196 tp!910987)))

(declare-fun b!2843015 () Bool)

(declare-fun tp!910989 () Bool)

(declare-fun tp!910988 () Bool)

(assert (=> b!2843015 (= e!1801196 (and tp!910989 tp!910988))))

(assert (=> b!2842819 (= tp!910914 e!1801196)))

(declare-fun b!2843013 () Bool)

(declare-fun tp!910986 () Bool)

(declare-fun tp!910990 () Bool)

(assert (=> b!2843013 (= e!1801196 (and tp!910986 tp!910990))))

(assert (= (and b!2842819 ((_ is ElementMatch!8457) (regTwo!17427 (regex!5066 (rule!7494 t1!27))))) b!2843012))

(assert (= (and b!2842819 ((_ is Concat!13754) (regTwo!17427 (regex!5066 (rule!7494 t1!27))))) b!2843013))

(assert (= (and b!2842819 ((_ is Star!8457) (regTwo!17427 (regex!5066 (rule!7494 t1!27))))) b!2843014))

(assert (= (and b!2842819 ((_ is Union!8457) (regTwo!17427 (regex!5066 (rule!7494 t1!27))))) b!2843015))

(declare-fun b!2843016 () Bool)

(declare-fun e!1801197 () Bool)

(assert (=> b!2843016 (= e!1801197 tp_is_empty!14683)))

(declare-fun b!2843018 () Bool)

(declare-fun tp!910992 () Bool)

(assert (=> b!2843018 (= e!1801197 tp!910992)))

(declare-fun b!2843019 () Bool)

(declare-fun tp!910994 () Bool)

(declare-fun tp!910993 () Bool)

(assert (=> b!2843019 (= e!1801197 (and tp!910994 tp!910993))))

(assert (=> b!2842838 (= tp!910933 e!1801197)))

(declare-fun b!2843017 () Bool)

(declare-fun tp!910991 () Bool)

(declare-fun tp!910995 () Bool)

(assert (=> b!2843017 (= e!1801197 (and tp!910991 tp!910995))))

(assert (= (and b!2842838 ((_ is ElementMatch!8457) (reg!8786 (regex!5066 (h!39106 rules!1139))))) b!2843016))

(assert (= (and b!2842838 ((_ is Concat!13754) (reg!8786 (regex!5066 (h!39106 rules!1139))))) b!2843017))

(assert (= (and b!2842838 ((_ is Star!8457) (reg!8786 (regex!5066 (h!39106 rules!1139))))) b!2843018))

(assert (= (and b!2842838 ((_ is Union!8457) (reg!8786 (regex!5066 (h!39106 rules!1139))))) b!2843019))

(declare-fun b!2843020 () Bool)

(declare-fun tp!910998 () Bool)

(declare-fun e!1801198 () Bool)

(declare-fun tp!910997 () Bool)

(assert (=> b!2843020 (= e!1801198 (and (inv!45682 (left!25383 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27))))) tp!910998 (inv!45682 (right!25713 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27))))) tp!910997))))

(declare-fun b!2843022 () Bool)

(declare-fun e!1801199 () Bool)

(declare-fun tp!910996 () Bool)

(assert (=> b!2843022 (= e!1801199 tp!910996)))

(declare-fun b!2843021 () Bool)

(assert (=> b!2843021 (= e!1801198 (and (inv!45688 (xs!13560 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27))))) e!1801199))))

(assert (=> b!2842690 (= tp!910855 (and (inv!45682 (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27)))) e!1801198))))

(assert (= (and b!2842690 ((_ is Node!10448) (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27))))) b!2843020))

(assert (= b!2843021 b!2843022))

(assert (= (and b!2842690 ((_ is Leaf!15900) (c!458814 (dynLambda!14173 (toChars!6971 (transformation!5066 (rule!7494 t1!27))) (value!162783 t1!27))))) b!2843021))

(declare-fun m!3270929 () Bool)

(assert (=> b!2843020 m!3270929))

(declare-fun m!3270931 () Bool)

(assert (=> b!2843020 m!3270931))

(declare-fun m!3270933 () Bool)

(assert (=> b!2843021 m!3270933))

(assert (=> b!2842690 m!3270437))

(declare-fun b!2843023 () Bool)

(declare-fun e!1801200 () Bool)

(assert (=> b!2843023 (= e!1801200 tp_is_empty!14683)))

(declare-fun b!2843025 () Bool)

(declare-fun tp!911000 () Bool)

(assert (=> b!2843025 (= e!1801200 tp!911000)))

(declare-fun b!2843026 () Bool)

(declare-fun tp!911002 () Bool)

(declare-fun tp!911001 () Bool)

(assert (=> b!2843026 (= e!1801200 (and tp!911002 tp!911001))))

(assert (=> b!2842829 (= tp!910928 e!1801200)))

(declare-fun b!2843024 () Bool)

(declare-fun tp!910999 () Bool)

(declare-fun tp!911003 () Bool)

(assert (=> b!2843024 (= e!1801200 (and tp!910999 tp!911003))))

(assert (= (and b!2842829 ((_ is ElementMatch!8457) (regex!5066 (h!39106 (t!232701 rules!1139))))) b!2843023))

(assert (= (and b!2842829 ((_ is Concat!13754) (regex!5066 (h!39106 (t!232701 rules!1139))))) b!2843024))

(assert (= (and b!2842829 ((_ is Star!8457) (regex!5066 (h!39106 (t!232701 rules!1139))))) b!2843025))

(assert (= (and b!2842829 ((_ is Union!8457) (regex!5066 (h!39106 (t!232701 rules!1139))))) b!2843026))

(declare-fun b!2843027 () Bool)

(declare-fun e!1801201 () Bool)

(declare-fun tp!911004 () Bool)

(assert (=> b!2843027 (= e!1801201 (and tp_is_empty!14683 tp!911004))))

(assert (=> b!2842835 (= tp!910931 e!1801201)))

(assert (= (and b!2842835 ((_ is Cons!33685) (t!232700 (originalCharacters!5798 t2!27)))) b!2843027))

(declare-fun b!2843028 () Bool)

(declare-fun e!1801202 () Bool)

(assert (=> b!2843028 (= e!1801202 tp_is_empty!14683)))

(declare-fun b!2843030 () Bool)

(declare-fun tp!911006 () Bool)

(assert (=> b!2843030 (= e!1801202 tp!911006)))

(declare-fun b!2843031 () Bool)

(declare-fun tp!911008 () Bool)

(declare-fun tp!911007 () Bool)

(assert (=> b!2843031 (= e!1801202 (and tp!911008 tp!911007))))

(assert (=> b!2842842 (= tp!910938 e!1801202)))

(declare-fun b!2843029 () Bool)

(declare-fun tp!911005 () Bool)

(declare-fun tp!911009 () Bool)

(assert (=> b!2843029 (= e!1801202 (and tp!911005 tp!911009))))

(assert (= (and b!2842842 ((_ is ElementMatch!8457) (regOne!17426 (regex!5066 (rule!7494 t2!27))))) b!2843028))

(assert (= (and b!2842842 ((_ is Concat!13754) (regOne!17426 (regex!5066 (rule!7494 t2!27))))) b!2843029))

(assert (= (and b!2842842 ((_ is Star!8457) (regOne!17426 (regex!5066 (rule!7494 t2!27))))) b!2843030))

(assert (= (and b!2842842 ((_ is Union!8457) (regOne!17426 (regex!5066 (rule!7494 t2!27))))) b!2843031))

(declare-fun b!2843032 () Bool)

(declare-fun e!1801203 () Bool)

(assert (=> b!2843032 (= e!1801203 tp_is_empty!14683)))

(declare-fun b!2843034 () Bool)

(declare-fun tp!911011 () Bool)

(assert (=> b!2843034 (= e!1801203 tp!911011)))

(declare-fun b!2843035 () Bool)

(declare-fun tp!911013 () Bool)

(declare-fun tp!911012 () Bool)

(assert (=> b!2843035 (= e!1801203 (and tp!911013 tp!911012))))

(assert (=> b!2842842 (= tp!910942 e!1801203)))

(declare-fun b!2843033 () Bool)

(declare-fun tp!911010 () Bool)

(declare-fun tp!911014 () Bool)

(assert (=> b!2843033 (= e!1801203 (and tp!911010 tp!911014))))

(assert (= (and b!2842842 ((_ is ElementMatch!8457) (regTwo!17426 (regex!5066 (rule!7494 t2!27))))) b!2843032))

(assert (= (and b!2842842 ((_ is Concat!13754) (regTwo!17426 (regex!5066 (rule!7494 t2!27))))) b!2843033))

(assert (= (and b!2842842 ((_ is Star!8457) (regTwo!17426 (regex!5066 (rule!7494 t2!27))))) b!2843034))

(assert (= (and b!2842842 ((_ is Union!8457) (regTwo!17426 (regex!5066 (rule!7494 t2!27))))) b!2843035))

(declare-fun b!2843036 () Bool)

(declare-fun e!1801204 () Bool)

(assert (=> b!2843036 (= e!1801204 tp_is_empty!14683)))

(declare-fun b!2843038 () Bool)

(declare-fun tp!911016 () Bool)

(assert (=> b!2843038 (= e!1801204 tp!911016)))

(declare-fun b!2843039 () Bool)

(declare-fun tp!911018 () Bool)

(declare-fun tp!911017 () Bool)

(assert (=> b!2843039 (= e!1801204 (and tp!911018 tp!911017))))

(assert (=> b!2842839 (= tp!910935 e!1801204)))

(declare-fun b!2843037 () Bool)

(declare-fun tp!911015 () Bool)

(declare-fun tp!911019 () Bool)

(assert (=> b!2843037 (= e!1801204 (and tp!911015 tp!911019))))

(assert (= (and b!2842839 ((_ is ElementMatch!8457) (regOne!17427 (regex!5066 (h!39106 rules!1139))))) b!2843036))

(assert (= (and b!2842839 ((_ is Concat!13754) (regOne!17427 (regex!5066 (h!39106 rules!1139))))) b!2843037))

(assert (= (and b!2842839 ((_ is Star!8457) (regOne!17427 (regex!5066 (h!39106 rules!1139))))) b!2843038))

(assert (= (and b!2842839 ((_ is Union!8457) (regOne!17427 (regex!5066 (h!39106 rules!1139))))) b!2843039))

(declare-fun b!2843040 () Bool)

(declare-fun e!1801205 () Bool)

(assert (=> b!2843040 (= e!1801205 tp_is_empty!14683)))

(declare-fun b!2843042 () Bool)

(declare-fun tp!911021 () Bool)

(assert (=> b!2843042 (= e!1801205 tp!911021)))

(declare-fun b!2843043 () Bool)

(declare-fun tp!911023 () Bool)

(declare-fun tp!911022 () Bool)

(assert (=> b!2843043 (= e!1801205 (and tp!911023 tp!911022))))

(assert (=> b!2842839 (= tp!910934 e!1801205)))

(declare-fun b!2843041 () Bool)

(declare-fun tp!911020 () Bool)

(declare-fun tp!911024 () Bool)

(assert (=> b!2843041 (= e!1801205 (and tp!911020 tp!911024))))

(assert (= (and b!2842839 ((_ is ElementMatch!8457) (regTwo!17427 (regex!5066 (h!39106 rules!1139))))) b!2843040))

(assert (= (and b!2842839 ((_ is Concat!13754) (regTwo!17427 (regex!5066 (h!39106 rules!1139))))) b!2843041))

(assert (= (and b!2842839 ((_ is Star!8457) (regTwo!17427 (regex!5066 (h!39106 rules!1139))))) b!2843042))

(assert (= (and b!2842839 ((_ is Union!8457) (regTwo!17427 (regex!5066 (h!39106 rules!1139))))) b!2843043))

(declare-fun b!2843044 () Bool)

(declare-fun e!1801206 () Bool)

(assert (=> b!2843044 (= e!1801206 tp_is_empty!14683)))

(declare-fun b!2843046 () Bool)

(declare-fun tp!911026 () Bool)

(assert (=> b!2843046 (= e!1801206 tp!911026)))

(declare-fun b!2843047 () Bool)

(declare-fun tp!911028 () Bool)

(declare-fun tp!911027 () Bool)

(assert (=> b!2843047 (= e!1801206 (and tp!911028 tp!911027))))

(assert (=> b!2842843 (= tp!910939 e!1801206)))

(declare-fun b!2843045 () Bool)

(declare-fun tp!911025 () Bool)

(declare-fun tp!911029 () Bool)

(assert (=> b!2843045 (= e!1801206 (and tp!911025 tp!911029))))

(assert (= (and b!2842843 ((_ is ElementMatch!8457) (reg!8786 (regex!5066 (rule!7494 t2!27))))) b!2843044))

(assert (= (and b!2842843 ((_ is Concat!13754) (reg!8786 (regex!5066 (rule!7494 t2!27))))) b!2843045))

(assert (= (and b!2842843 ((_ is Star!8457) (reg!8786 (regex!5066 (rule!7494 t2!27))))) b!2843046))

(assert (= (and b!2842843 ((_ is Union!8457) (reg!8786 (regex!5066 (rule!7494 t2!27))))) b!2843047))

(declare-fun b!2843048 () Bool)

(declare-fun e!1801207 () Bool)

(declare-fun tp!911030 () Bool)

(assert (=> b!2843048 (= e!1801207 (and tp_is_empty!14683 tp!911030))))

(assert (=> b!2842840 (= tp!910937 e!1801207)))

(assert (= (and b!2842840 ((_ is Cons!33685) (t!232700 (originalCharacters!5798 t1!27)))) b!2843048))

(declare-fun b!2843049 () Bool)

(declare-fun e!1801208 () Bool)

(assert (=> b!2843049 (= e!1801208 tp_is_empty!14683)))

(declare-fun b!2843051 () Bool)

(declare-fun tp!911032 () Bool)

(assert (=> b!2843051 (= e!1801208 tp!911032)))

(declare-fun b!2843052 () Bool)

(declare-fun tp!911034 () Bool)

(declare-fun tp!911033 () Bool)

(assert (=> b!2843052 (= e!1801208 (and tp!911034 tp!911033))))

(assert (=> b!2842844 (= tp!910941 e!1801208)))

(declare-fun b!2843050 () Bool)

(declare-fun tp!911031 () Bool)

(declare-fun tp!911035 () Bool)

(assert (=> b!2843050 (= e!1801208 (and tp!911031 tp!911035))))

(assert (= (and b!2842844 ((_ is ElementMatch!8457) (regOne!17427 (regex!5066 (rule!7494 t2!27))))) b!2843049))

(assert (= (and b!2842844 ((_ is Concat!13754) (regOne!17427 (regex!5066 (rule!7494 t2!27))))) b!2843050))

(assert (= (and b!2842844 ((_ is Star!8457) (regOne!17427 (regex!5066 (rule!7494 t2!27))))) b!2843051))

(assert (= (and b!2842844 ((_ is Union!8457) (regOne!17427 (regex!5066 (rule!7494 t2!27))))) b!2843052))

(declare-fun b!2843053 () Bool)

(declare-fun e!1801209 () Bool)

(assert (=> b!2843053 (= e!1801209 tp_is_empty!14683)))

(declare-fun b!2843055 () Bool)

(declare-fun tp!911037 () Bool)

(assert (=> b!2843055 (= e!1801209 tp!911037)))

(declare-fun b!2843056 () Bool)

(declare-fun tp!911039 () Bool)

(declare-fun tp!911038 () Bool)

(assert (=> b!2843056 (= e!1801209 (and tp!911039 tp!911038))))

(assert (=> b!2842844 (= tp!910940 e!1801209)))

(declare-fun b!2843054 () Bool)

(declare-fun tp!911036 () Bool)

(declare-fun tp!911040 () Bool)

(assert (=> b!2843054 (= e!1801209 (and tp!911036 tp!911040))))

(assert (= (and b!2842844 ((_ is ElementMatch!8457) (regTwo!17427 (regex!5066 (rule!7494 t2!27))))) b!2843053))

(assert (= (and b!2842844 ((_ is Concat!13754) (regTwo!17427 (regex!5066 (rule!7494 t2!27))))) b!2843054))

(assert (= (and b!2842844 ((_ is Star!8457) (regTwo!17427 (regex!5066 (rule!7494 t2!27))))) b!2843055))

(assert (= (and b!2842844 ((_ is Union!8457) (regTwo!17427 (regex!5066 (rule!7494 t2!27))))) b!2843056))

(declare-fun b_lambda!85489 () Bool)

(assert (= b_lambda!85487 (or d!824240 b_lambda!85489)))

(declare-fun bs!519064 () Bool)

(declare-fun d!824452 () Bool)

(assert (= bs!519064 (and d!824452 d!824240)))

(assert (=> bs!519064 (= (dynLambda!14179 lambda!104282 (h!39106 rules!1139)) (regex!5066 (h!39106 rules!1139)))))

(assert (=> b!2842947 d!824452))

(check-sat (not b_next!83219) (not d!824402) (not b!2842854) (not b!2843022) (not b!2842931) (not b_lambda!85489) (not b!2842885) (not b!2842984) (not d!824296) b_and!208635 (not d!824316) b_and!208631 (not b!2843052) (not b_next!83229) (not b!2843045) (not b!2842996) (not d!824376) (not d!824304) (not b!2842998) (not b!2843017) (not b!2843013) (not b!2843011) (not d!824352) (not d!824414) (not b!2842690) (not b!2842934) (not b!2842888) (not b!2843050) (not b_lambda!85485) (not d!824446) (not b!2842967) (not b!2842992) (not b!2843018) (not b!2843033) (not b!2843019) (not b!2842932) (not b!2843000) (not d!824338) (not b!2842999) (not b!2843005) (not b!2843030) (not d!824416) (not d!824406) (not d!824322) (not b_lambda!85479) (not b!2843041) (not b!2842956) (not b_next!83227) (not d!824432) (not b!2842872) b_and!208627 (not b!2843055) (not b!2842982) (not d!824356) (not b!2843015) (not b!2843039) (not d!824424) (not d!824440) (not d!824354) (not b!2842884) (not b!2842869) (not b!2842947) (not b!2842972) (not d!824314) (not b!2842928) (not b!2843054) (not d!824396) (not d!824334) (not d!824408) (not b_next!83231) (not d!824450) (not b!2842865) (not d!824428) (not b!2843009) (not b!2843021) (not d!824426) (not b!2843024) (not b!2842962) (not b!2843004) (not d!824358) (not b!2842693) (not d!824350) (not b!2842986) (not d!824312) (not d!824294) (not b!2842987) (not b!2843006) (not b!2843026) (not b!2843020) (not b!2842897) b_and!208685 b_and!208697 (not b!2843056) (not b!2843031) (not b!2842983) (not b!2843038) (not b!2842935) (not d!824400) (not b!2842883) b_and!208693 (not b!2842964) (not b!2843047) (not b_next!83211) (not d!824348) (not b!2842886) (not d!824362) (not b_lambda!85481) (not b_next!83209) (not b!2842995) (not b!2843046) (not b!2843014) (not b_next!83213) (not b!2842966) (not d!824422) (not d!824308) (not b!2842990) (not b!2842927) (not b!2842960) (not b!2843034) (not b!2842991) b_and!208695 (not b!2843035) (not b!2843027) (not d!824398) (not d!824434) (not b!2842994) (not b_next!83217) (not b!2843003) (not d!824320) (not d!824344) b_and!208691 (not d!824318) (not b_lambda!85483) (not d!824306) (not d!824332) (not b!2842867) b_and!208689 (not b!2842866) (not b_next!83225) (not b_next!83215) tp_is_empty!14683 (not d!824420) (not b!2842930) (not b!2843037) (not b!2842973) (not d!824436) (not b!2842961) (not b!2843010) (not b!2842889) (not b!2843051) (not b!2843043) (not b!2843025) b_and!208687 (not b!2843042) (not b!2843029) (not b!2843048) (not d!824324) (not b!2842958) (not b!2842988) (not d!824310) (not b!2843002))
(check-sat (not b_next!83219) (not b_next!83227) b_and!208627 (not b_next!83231) b_and!208693 (not b_next!83213) b_and!208691 (not b_next!83215) b_and!208687 b_and!208635 b_and!208631 (not b_next!83229) b_and!208685 b_and!208697 (not b_next!83211) (not b_next!83209) b_and!208695 (not b_next!83217) b_and!208689 (not b_next!83225))
