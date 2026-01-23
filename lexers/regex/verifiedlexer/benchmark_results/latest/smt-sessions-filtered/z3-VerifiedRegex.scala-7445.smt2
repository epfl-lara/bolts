; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395538 () Bool)

(assert start!395538)

(declare-fun b!4154818 () Bool)

(declare-fun b_free!119131 () Bool)

(declare-fun b_next!119835 () Bool)

(assert (=> b!4154818 (= b_free!119131 (not b_next!119835))))

(declare-fun tp!1267065 () Bool)

(declare-fun b_and!323493 () Bool)

(assert (=> b!4154818 (= tp!1267065 b_and!323493)))

(declare-fun b_free!119133 () Bool)

(declare-fun b_next!119837 () Bool)

(assert (=> b!4154818 (= b_free!119133 (not b_next!119837))))

(declare-fun tp!1267066 () Bool)

(declare-fun b_and!323495 () Bool)

(assert (=> b!4154818 (= tp!1267066 b_and!323495)))

(declare-fun b!4154812 () Bool)

(declare-fun b_free!119135 () Bool)

(declare-fun b_next!119839 () Bool)

(assert (=> b!4154812 (= b_free!119135 (not b_next!119839))))

(declare-fun tp!1267071 () Bool)

(declare-fun b_and!323497 () Bool)

(assert (=> b!4154812 (= tp!1267071 b_and!323497)))

(declare-fun b_free!119137 () Bool)

(declare-fun b_next!119841 () Bool)

(assert (=> b!4154812 (= b_free!119137 (not b_next!119841))))

(declare-fun tp!1267069 () Bool)

(declare-fun b_and!323499 () Bool)

(assert (=> b!4154812 (= tp!1267069 b_and!323499)))

(declare-fun b!4154816 () Bool)

(declare-fun b_free!119139 () Bool)

(declare-fun b_next!119843 () Bool)

(assert (=> b!4154816 (= b_free!119139 (not b_next!119843))))

(declare-fun tp!1267064 () Bool)

(declare-fun b_and!323501 () Bool)

(assert (=> b!4154816 (= tp!1267064 b_and!323501)))

(declare-fun b_free!119141 () Bool)

(declare-fun b_next!119845 () Bool)

(assert (=> b!4154816 (= b_free!119141 (not b_next!119845))))

(declare-fun tp!1267067 () Bool)

(declare-fun b_and!323503 () Bool)

(assert (=> b!4154816 (= tp!1267067 b_and!323503)))

(declare-fun b!4154808 () Bool)

(declare-fun res!1701591 () Bool)

(declare-fun e!2578090 () Bool)

(assert (=> b!4154808 (=> (not res!1701591) (not e!2578090))))

(declare-datatypes ((List!45348 0))(
  ( (Nil!45224) (Cons!45224 (h!50644 (_ BitVec 16)) (t!343379 List!45348)) )
))
(declare-datatypes ((TokenValue!7692 0))(
  ( (FloatLiteralValue!15384 (text!54289 List!45348)) (TokenValueExt!7691 (__x!27601 Int)) (Broken!38460 (value!233170 List!45348)) (Object!7815) (End!7692) (Def!7692) (Underscore!7692) (Match!7692) (Else!7692) (Error!7692) (Case!7692) (If!7692) (Extends!7692) (Abstract!7692) (Class!7692) (Val!7692) (DelimiterValue!15384 (del!7752 List!45348)) (KeywordValue!7698 (value!233171 List!45348)) (CommentValue!15384 (value!233172 List!45348)) (WhitespaceValue!15384 (value!233173 List!45348)) (IndentationValue!7692 (value!233174 List!45348)) (String!52209) (Int32!7692) (Broken!38461 (value!233175 List!45348)) (Boolean!7693) (Unit!64440) (OperatorValue!7695 (op!7752 List!45348)) (IdentifierValue!15384 (value!233176 List!45348)) (IdentifierValue!15385 (value!233177 List!45348)) (WhitespaceValue!15385 (value!233178 List!45348)) (True!15384) (False!15384) (Broken!38462 (value!233179 List!45348)) (Broken!38463 (value!233180 List!45348)) (True!15385) (RightBrace!7692) (RightBracket!7692) (Colon!7692) (Null!7692) (Comma!7692) (LeftBracket!7692) (False!15385) (LeftBrace!7692) (ImaginaryLiteralValue!7692 (text!54290 List!45348)) (StringLiteralValue!23076 (value!233181 List!45348)) (EOFValue!7692 (value!233182 List!45348)) (IdentValue!7692 (value!233183 List!45348)) (DelimiterValue!15385 (value!233184 List!45348)) (DedentValue!7692 (value!233185 List!45348)) (NewLineValue!7692 (value!233186 List!45348)) (IntegerValue!23076 (value!233187 (_ BitVec 32)) (text!54291 List!45348)) (IntegerValue!23077 (value!233188 Int) (text!54292 List!45348)) (Times!7692) (Or!7692) (Equal!7692) (Minus!7692) (Broken!38464 (value!233189 List!45348)) (And!7692) (Div!7692) (LessEqual!7692) (Mod!7692) (Concat!20059) (Not!7692) (Plus!7692) (SpaceValue!7692 (value!233190 List!45348)) (IntegerValue!23078 (value!233191 Int) (text!54293 List!45348)) (StringLiteralValue!23077 (text!54294 List!45348)) (FloatLiteralValue!15385 (text!54295 List!45348)) (BytesLiteralValue!7692 (value!233192 List!45348)) (CommentValue!15385 (value!233193 List!45348)) (StringLiteralValue!23078 (value!233194 List!45348)) (ErrorTokenValue!7692 (msg!7753 List!45348)) )
))
(declare-datatypes ((C!24920 0))(
  ( (C!24921 (val!14570 Int)) )
))
(declare-datatypes ((List!45349 0))(
  ( (Nil!45225) (Cons!45225 (h!50645 C!24920) (t!343380 List!45349)) )
))
(declare-datatypes ((IArray!27351 0))(
  ( (IArray!27352 (innerList!13733 List!45349)) )
))
(declare-datatypes ((Conc!13673 0))(
  ( (Node!13673 (left!33826 Conc!13673) (right!34156 Conc!13673) (csize!27576 Int) (cheight!13884 Int)) (Leaf!21119 (xs!16979 IArray!27351) (csize!27577 Int)) (Empty!13673) )
))
(declare-datatypes ((Regex!12367 0))(
  ( (ElementMatch!12367 (c!711302 C!24920)) (Concat!20060 (regOne!25246 Regex!12367) (regTwo!25246 Regex!12367)) (EmptyExpr!12367) (Star!12367 (reg!12696 Regex!12367)) (EmptyLang!12367) (Union!12367 (regOne!25247 Regex!12367) (regTwo!25247 Regex!12367)) )
))
(declare-datatypes ((String!52210 0))(
  ( (String!52211 (value!233195 String)) )
))
(declare-datatypes ((BalanceConc!26940 0))(
  ( (BalanceConc!26941 (c!711303 Conc!13673)) )
))
(declare-datatypes ((TokenValueInjection!14812 0))(
  ( (TokenValueInjection!14813 (toValue!10126 Int) (toChars!9985 Int)) )
))
(declare-datatypes ((Rule!14724 0))(
  ( (Rule!14725 (regex!7462 Regex!12367) (tag!8324 String!52210) (isSeparator!7462 Bool) (transformation!7462 TokenValueInjection!14812)) )
))
(declare-datatypes ((List!45350 0))(
  ( (Nil!45226) (Cons!45226 (h!50646 Rule!14724) (t!343381 List!45350)) )
))
(declare-fun rules!4102 () List!45350)

(declare-fun r1!615 () Rule!14724)

(declare-fun contains!9159 (List!45350 Rule!14724) Bool)

(assert (=> b!4154808 (= res!1701591 (contains!9159 rules!4102 r1!615))))

(declare-fun b!4154809 () Bool)

(declare-fun res!1701593 () Bool)

(assert (=> b!4154809 (=> (not res!1701593) (not e!2578090))))

(declare-fun r2!597 () Rule!14724)

(declare-fun getIndex!804 (List!45350 Rule!14724) Int)

(assert (=> b!4154809 (= res!1701593 (< (getIndex!804 rules!4102 r1!615) (getIndex!804 rules!4102 r2!597)))))

(declare-fun b!4154811 () Bool)

(declare-fun res!1701588 () Bool)

(assert (=> b!4154811 (=> (not res!1701588) (not e!2578090))))

(declare-datatypes ((LexerInterface!7051 0))(
  ( (LexerInterfaceExt!7048 (__x!27602 Int)) (Lexer!7049) )
))
(declare-fun thiss!26968 () LexerInterface!7051)

(declare-datatypes ((List!45351 0))(
  ( (Nil!45227) (Cons!45227 (h!50647 String!52210) (t!343382 List!45351)) )
))
(declare-fun noDuplicateTag!3039 (LexerInterface!7051 List!45350 List!45351) Bool)

(declare-fun noDuplicateTag$default$2!44 (LexerInterface!7051) List!45351)

(assert (=> b!4154811 (= res!1701588 (noDuplicateTag!3039 thiss!26968 rules!4102 (noDuplicateTag$default$2!44 thiss!26968)))))

(declare-fun e!2578084 () Bool)

(assert (=> b!4154812 (= e!2578084 (and tp!1267071 tp!1267069))))

(declare-fun tp!1267070 () Bool)

(declare-fun e!2578092 () Bool)

(declare-fun e!2578083 () Bool)

(declare-fun b!4154813 () Bool)

(declare-fun inv!59800 (String!52210) Bool)

(declare-fun inv!59802 (TokenValueInjection!14812) Bool)

(assert (=> b!4154813 (= e!2578083 (and tp!1267070 (inv!59800 (tag!8324 r1!615)) (inv!59802 (transformation!7462 r1!615)) e!2578092))))

(declare-fun b!4154814 () Bool)

(declare-fun e!2578088 () Bool)

(declare-fun e!2578087 () Bool)

(declare-fun tp!1267068 () Bool)

(assert (=> b!4154814 (= e!2578088 (and e!2578087 tp!1267068))))

(declare-fun b!4154815 () Bool)

(declare-fun res!1701592 () Bool)

(assert (=> b!4154815 (=> (not res!1701592) (not e!2578090))))

(assert (=> b!4154815 (= res!1701592 (contains!9159 rules!4102 r2!597))))

(declare-fun e!2578085 () Bool)

(assert (=> b!4154816 (= e!2578085 (and tp!1267064 tp!1267067))))

(declare-fun tp!1267072 () Bool)

(declare-fun b!4154817 () Bool)

(assert (=> b!4154817 (= e!2578087 (and tp!1267072 (inv!59800 (tag!8324 (h!50646 rules!4102))) (inv!59802 (transformation!7462 (h!50646 rules!4102))) e!2578085))))

(assert (=> b!4154818 (= e!2578092 (and tp!1267065 tp!1267066))))

(declare-fun b!4154810 () Bool)

(declare-fun res!1701590 () Bool)

(assert (=> b!4154810 (=> (not res!1701590) (not e!2578090))))

(declare-fun head!8788 (List!45350) Rule!14724)

(assert (=> b!4154810 (= res!1701590 (= (head!8788 rules!4102) r1!615))))

(declare-fun res!1701589 () Bool)

(assert (=> start!395538 (=> (not res!1701589) (not e!2578090))))

(get-info :version)

(assert (=> start!395538 (= res!1701589 ((_ is Lexer!7049) thiss!26968))))

(assert (=> start!395538 e!2578090))

(assert (=> start!395538 true))

(assert (=> start!395538 e!2578088))

(assert (=> start!395538 e!2578083))

(declare-fun e!2578091 () Bool)

(assert (=> start!395538 e!2578091))

(declare-fun b!4154819 () Bool)

(declare-fun tp!1267063 () Bool)

(assert (=> b!4154819 (= e!2578091 (and tp!1267063 (inv!59800 (tag!8324 r2!597)) (inv!59802 (transformation!7462 r2!597)) e!2578084))))

(declare-fun b!4154820 () Bool)

(declare-fun lt!1481308 () List!45351)

(declare-fun lt!1481307 () List!45350)

(assert (=> b!4154820 (= e!2578090 (not (noDuplicateTag!3039 thiss!26968 lt!1481307 lt!1481308)))))

(assert (=> b!4154820 (not (= (tag!8324 r2!597) (tag!8324 r1!615)))))

(declare-datatypes ((Unit!64441 0))(
  ( (Unit!64442) )
))
(declare-fun lt!1481306 () Unit!64441)

(declare-fun lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!12 (LexerInterface!7051 List!45350 Rule!14724 String!52210 List!45351) Unit!64441)

(assert (=> b!4154820 (= lt!1481306 (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!12 thiss!26968 lt!1481307 r2!597 (tag!8324 r1!615) lt!1481308))))

(assert (=> b!4154820 (= lt!1481308 (Cons!45227 (tag!8324 r1!615) Nil!45227))))

(declare-fun tail!6625 (List!45350) List!45350)

(assert (=> b!4154820 (= lt!1481307 (tail!6625 rules!4102))))

(assert (= (and start!395538 res!1701589) b!4154808))

(assert (= (and b!4154808 res!1701591) b!4154815))

(assert (= (and b!4154815 res!1701592) b!4154811))

(assert (= (and b!4154811 res!1701588) b!4154809))

(assert (= (and b!4154809 res!1701593) b!4154810))

(assert (= (and b!4154810 res!1701590) b!4154820))

(assert (= b!4154817 b!4154816))

(assert (= b!4154814 b!4154817))

(assert (= (and start!395538 ((_ is Cons!45226) rules!4102)) b!4154814))

(assert (= b!4154813 b!4154818))

(assert (= start!395538 b!4154813))

(assert (= b!4154819 b!4154812))

(assert (= start!395538 b!4154819))

(declare-fun m!4749529 () Bool)

(assert (=> b!4154815 m!4749529))

(declare-fun m!4749531 () Bool)

(assert (=> b!4154817 m!4749531))

(declare-fun m!4749533 () Bool)

(assert (=> b!4154817 m!4749533))

(declare-fun m!4749535 () Bool)

(assert (=> b!4154819 m!4749535))

(declare-fun m!4749537 () Bool)

(assert (=> b!4154819 m!4749537))

(declare-fun m!4749539 () Bool)

(assert (=> b!4154809 m!4749539))

(declare-fun m!4749541 () Bool)

(assert (=> b!4154809 m!4749541))

(declare-fun m!4749543 () Bool)

(assert (=> b!4154813 m!4749543))

(declare-fun m!4749545 () Bool)

(assert (=> b!4154813 m!4749545))

(declare-fun m!4749547 () Bool)

(assert (=> b!4154810 m!4749547))

(declare-fun m!4749549 () Bool)

(assert (=> b!4154811 m!4749549))

(assert (=> b!4154811 m!4749549))

(declare-fun m!4749551 () Bool)

(assert (=> b!4154811 m!4749551))

(declare-fun m!4749553 () Bool)

(assert (=> b!4154820 m!4749553))

(declare-fun m!4749555 () Bool)

(assert (=> b!4154820 m!4749555))

(declare-fun m!4749557 () Bool)

(assert (=> b!4154820 m!4749557))

(declare-fun m!4749559 () Bool)

(assert (=> b!4154808 m!4749559))

(check-sat (not b!4154808) (not b!4154813) (not b_next!119837) (not b_next!119843) b_and!323497 b_and!323501 b_and!323493 (not b!4154811) (not b!4154820) b_and!323495 b_and!323503 (not b!4154809) (not b!4154814) (not b!4154817) (not b!4154819) (not b_next!119845) b_and!323499 (not b!4154810) (not b_next!119839) (not b_next!119841) (not b!4154815) (not b_next!119835))
(check-sat (not b_next!119837) (not b_next!119843) b_and!323497 b_and!323501 b_and!323493 b_and!323495 b_and!323503 (not b_next!119839) (not b_next!119845) b_and!323499 (not b_next!119841) (not b_next!119835))
(get-model)

(declare-fun d!1228656 () Bool)

(declare-fun res!1701620 () Bool)

(declare-fun e!2578114 () Bool)

(assert (=> d!1228656 (=> res!1701620 e!2578114)))

(assert (=> d!1228656 (= res!1701620 ((_ is Nil!45226) rules!4102))))

(assert (=> d!1228656 (= (noDuplicateTag!3039 thiss!26968 rules!4102 (noDuplicateTag$default$2!44 thiss!26968)) e!2578114)))

(declare-fun b!4154845 () Bool)

(declare-fun e!2578115 () Bool)

(assert (=> b!4154845 (= e!2578114 e!2578115)))

(declare-fun res!1701621 () Bool)

(assert (=> b!4154845 (=> (not res!1701621) (not e!2578115))))

(declare-fun contains!9161 (List!45351 String!52210) Bool)

(assert (=> b!4154845 (= res!1701621 (not (contains!9161 (noDuplicateTag$default$2!44 thiss!26968) (tag!8324 (h!50646 rules!4102)))))))

(declare-fun b!4154846 () Bool)

(assert (=> b!4154846 (= e!2578115 (noDuplicateTag!3039 thiss!26968 (t!343381 rules!4102) (Cons!45227 (tag!8324 (h!50646 rules!4102)) (noDuplicateTag$default$2!44 thiss!26968))))))

(assert (= (and d!1228656 (not res!1701620)) b!4154845))

(assert (= (and b!4154845 res!1701621) b!4154846))

(assert (=> b!4154845 m!4749549))

(declare-fun m!4749571 () Bool)

(assert (=> b!4154845 m!4749571))

(declare-fun m!4749573 () Bool)

(assert (=> b!4154846 m!4749573))

(assert (=> b!4154811 d!1228656))

(declare-fun d!1228660 () Bool)

(assert (=> d!1228660 (= (noDuplicateTag$default$2!44 thiss!26968) Nil!45227)))

(assert (=> b!4154811 d!1228660))

(declare-fun d!1228662 () Bool)

(assert (=> d!1228662 (= (inv!59800 (tag!8324 (h!50646 rules!4102))) (= (mod (str.len (value!233195 (tag!8324 (h!50646 rules!4102)))) 2) 0))))

(assert (=> b!4154817 d!1228662))

(declare-fun d!1228664 () Bool)

(declare-fun res!1701626 () Bool)

(declare-fun e!2578124 () Bool)

(assert (=> d!1228664 (=> (not res!1701626) (not e!2578124))))

(declare-fun semiInverseModEq!3230 (Int Int) Bool)

(assert (=> d!1228664 (= res!1701626 (semiInverseModEq!3230 (toChars!9985 (transformation!7462 (h!50646 rules!4102))) (toValue!10126 (transformation!7462 (h!50646 rules!4102)))))))

(assert (=> d!1228664 (= (inv!59802 (transformation!7462 (h!50646 rules!4102))) e!2578124)))

(declare-fun b!4154859 () Bool)

(declare-fun equivClasses!3129 (Int Int) Bool)

(assert (=> b!4154859 (= e!2578124 (equivClasses!3129 (toChars!9985 (transformation!7462 (h!50646 rules!4102))) (toValue!10126 (transformation!7462 (h!50646 rules!4102)))))))

(assert (= (and d!1228664 res!1701626) b!4154859))

(declare-fun m!4749583 () Bool)

(assert (=> d!1228664 m!4749583))

(declare-fun m!4749585 () Bool)

(assert (=> b!4154859 m!4749585))

(assert (=> b!4154817 d!1228664))

(declare-fun d!1228676 () Bool)

(assert (=> d!1228676 (= (inv!59800 (tag!8324 r1!615)) (= (mod (str.len (value!233195 (tag!8324 r1!615))) 2) 0))))

(assert (=> b!4154813 d!1228676))

(declare-fun d!1228678 () Bool)

(declare-fun res!1701627 () Bool)

(declare-fun e!2578125 () Bool)

(assert (=> d!1228678 (=> (not res!1701627) (not e!2578125))))

(assert (=> d!1228678 (= res!1701627 (semiInverseModEq!3230 (toChars!9985 (transformation!7462 r1!615)) (toValue!10126 (transformation!7462 r1!615))))))

(assert (=> d!1228678 (= (inv!59802 (transformation!7462 r1!615)) e!2578125)))

(declare-fun b!4154860 () Bool)

(assert (=> b!4154860 (= e!2578125 (equivClasses!3129 (toChars!9985 (transformation!7462 r1!615)) (toValue!10126 (transformation!7462 r1!615))))))

(assert (= (and d!1228678 res!1701627) b!4154860))

(declare-fun m!4749587 () Bool)

(assert (=> d!1228678 m!4749587))

(declare-fun m!4749589 () Bool)

(assert (=> b!4154860 m!4749589))

(assert (=> b!4154813 d!1228678))

(declare-fun d!1228680 () Bool)

(declare-fun lt!1481319 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6993 (List!45350) (InoxSet Rule!14724))

(assert (=> d!1228680 (= lt!1481319 (select (content!6993 rules!4102) r1!615))))

(declare-fun e!2578135 () Bool)

(assert (=> d!1228680 (= lt!1481319 e!2578135)))

(declare-fun res!1701638 () Bool)

(assert (=> d!1228680 (=> (not res!1701638) (not e!2578135))))

(assert (=> d!1228680 (= res!1701638 ((_ is Cons!45226) rules!4102))))

(assert (=> d!1228680 (= (contains!9159 rules!4102 r1!615) lt!1481319)))

(declare-fun b!4154870 () Bool)

(declare-fun e!2578136 () Bool)

(assert (=> b!4154870 (= e!2578135 e!2578136)))

(declare-fun res!1701637 () Bool)

(assert (=> b!4154870 (=> res!1701637 e!2578136)))

(assert (=> b!4154870 (= res!1701637 (= (h!50646 rules!4102) r1!615))))

(declare-fun b!4154871 () Bool)

(assert (=> b!4154871 (= e!2578136 (contains!9159 (t!343381 rules!4102) r1!615))))

(assert (= (and d!1228680 res!1701638) b!4154870))

(assert (= (and b!4154870 (not res!1701637)) b!4154871))

(declare-fun m!4749599 () Bool)

(assert (=> d!1228680 m!4749599))

(declare-fun m!4749601 () Bool)

(assert (=> d!1228680 m!4749601))

(declare-fun m!4749603 () Bool)

(assert (=> b!4154871 m!4749603))

(assert (=> b!4154808 d!1228680))

(declare-fun d!1228686 () Bool)

(assert (=> d!1228686 (= (inv!59800 (tag!8324 r2!597)) (= (mod (str.len (value!233195 (tag!8324 r2!597))) 2) 0))))

(assert (=> b!4154819 d!1228686))

(declare-fun d!1228688 () Bool)

(declare-fun res!1701639 () Bool)

(declare-fun e!2578137 () Bool)

(assert (=> d!1228688 (=> (not res!1701639) (not e!2578137))))

(assert (=> d!1228688 (= res!1701639 (semiInverseModEq!3230 (toChars!9985 (transformation!7462 r2!597)) (toValue!10126 (transformation!7462 r2!597))))))

(assert (=> d!1228688 (= (inv!59802 (transformation!7462 r2!597)) e!2578137)))

(declare-fun b!4154872 () Bool)

(assert (=> b!4154872 (= e!2578137 (equivClasses!3129 (toChars!9985 (transformation!7462 r2!597)) (toValue!10126 (transformation!7462 r2!597))))))

(assert (= (and d!1228688 res!1701639) b!4154872))

(declare-fun m!4749605 () Bool)

(assert (=> d!1228688 m!4749605))

(declare-fun m!4749607 () Bool)

(assert (=> b!4154872 m!4749607))

(assert (=> b!4154819 d!1228688))

(declare-fun b!4154908 () Bool)

(declare-fun e!2578156 () Int)

(assert (=> b!4154908 (= e!2578156 (- 1))))

(declare-fun b!4154907 () Bool)

(assert (=> b!4154907 (= e!2578156 (+ 1 (getIndex!804 (t!343381 rules!4102) r1!615)))))

(declare-fun d!1228690 () Bool)

(declare-fun lt!1481325 () Int)

(assert (=> d!1228690 (>= lt!1481325 0)))

(declare-fun e!2578157 () Int)

(assert (=> d!1228690 (= lt!1481325 e!2578157)))

(declare-fun c!711316 () Bool)

(assert (=> d!1228690 (= c!711316 (and ((_ is Cons!45226) rules!4102) (= (h!50646 rules!4102) r1!615)))))

(assert (=> d!1228690 (contains!9159 rules!4102 r1!615)))

(assert (=> d!1228690 (= (getIndex!804 rules!4102 r1!615) lt!1481325)))

(declare-fun b!4154905 () Bool)

(assert (=> b!4154905 (= e!2578157 0)))

(declare-fun b!4154906 () Bool)

(assert (=> b!4154906 (= e!2578157 e!2578156)))

(declare-fun c!711317 () Bool)

(assert (=> b!4154906 (= c!711317 (and ((_ is Cons!45226) rules!4102) (not (= (h!50646 rules!4102) r1!615))))))

(assert (= (and d!1228690 c!711316) b!4154905))

(assert (= (and d!1228690 (not c!711316)) b!4154906))

(assert (= (and b!4154906 c!711317) b!4154907))

(assert (= (and b!4154906 (not c!711317)) b!4154908))

(declare-fun m!4749621 () Bool)

(assert (=> b!4154907 m!4749621))

(assert (=> d!1228690 m!4749559))

(assert (=> b!4154809 d!1228690))

(declare-fun b!4154912 () Bool)

(declare-fun e!2578158 () Int)

(assert (=> b!4154912 (= e!2578158 (- 1))))

(declare-fun b!4154911 () Bool)

(assert (=> b!4154911 (= e!2578158 (+ 1 (getIndex!804 (t!343381 rules!4102) r2!597)))))

(declare-fun d!1228702 () Bool)

(declare-fun lt!1481326 () Int)

(assert (=> d!1228702 (>= lt!1481326 0)))

(declare-fun e!2578159 () Int)

(assert (=> d!1228702 (= lt!1481326 e!2578159)))

(declare-fun c!711318 () Bool)

(assert (=> d!1228702 (= c!711318 (and ((_ is Cons!45226) rules!4102) (= (h!50646 rules!4102) r2!597)))))

(assert (=> d!1228702 (contains!9159 rules!4102 r2!597)))

(assert (=> d!1228702 (= (getIndex!804 rules!4102 r2!597) lt!1481326)))

(declare-fun b!4154909 () Bool)

(assert (=> b!4154909 (= e!2578159 0)))

(declare-fun b!4154910 () Bool)

(assert (=> b!4154910 (= e!2578159 e!2578158)))

(declare-fun c!711319 () Bool)

(assert (=> b!4154910 (= c!711319 (and ((_ is Cons!45226) rules!4102) (not (= (h!50646 rules!4102) r2!597))))))

(assert (= (and d!1228702 c!711318) b!4154909))

(assert (= (and d!1228702 (not c!711318)) b!4154910))

(assert (= (and b!4154910 c!711319) b!4154911))

(assert (= (and b!4154910 (not c!711319)) b!4154912))

(declare-fun m!4749623 () Bool)

(assert (=> b!4154911 m!4749623))

(assert (=> d!1228702 m!4749529))

(assert (=> b!4154809 d!1228702))

(declare-fun d!1228704 () Bool)

(declare-fun res!1701642 () Bool)

(declare-fun e!2578164 () Bool)

(assert (=> d!1228704 (=> res!1701642 e!2578164)))

(assert (=> d!1228704 (= res!1701642 ((_ is Nil!45226) lt!1481307))))

(assert (=> d!1228704 (= (noDuplicateTag!3039 thiss!26968 lt!1481307 lt!1481308) e!2578164)))

(declare-fun b!4154916 () Bool)

(declare-fun e!2578165 () Bool)

(assert (=> b!4154916 (= e!2578164 e!2578165)))

(declare-fun res!1701643 () Bool)

(assert (=> b!4154916 (=> (not res!1701643) (not e!2578165))))

(assert (=> b!4154916 (= res!1701643 (not (contains!9161 lt!1481308 (tag!8324 (h!50646 lt!1481307)))))))

(declare-fun b!4154917 () Bool)

(assert (=> b!4154917 (= e!2578165 (noDuplicateTag!3039 thiss!26968 (t!343381 lt!1481307) (Cons!45227 (tag!8324 (h!50646 lt!1481307)) lt!1481308)))))

(assert (= (and d!1228704 (not res!1701642)) b!4154916))

(assert (= (and b!4154916 res!1701643) b!4154917))

(declare-fun m!4749625 () Bool)

(assert (=> b!4154916 m!4749625))

(declare-fun m!4749629 () Bool)

(assert (=> b!4154917 m!4749629))

(assert (=> b!4154820 d!1228704))

(declare-fun d!1228706 () Bool)

(assert (=> d!1228706 (not (= (tag!8324 r2!597) (tag!8324 r1!615)))))

(declare-fun lt!1481329 () Unit!64441)

(declare-fun choose!25441 (LexerInterface!7051 List!45350 Rule!14724 String!52210 List!45351) Unit!64441)

(assert (=> d!1228706 (= lt!1481329 (choose!25441 thiss!26968 lt!1481307 r2!597 (tag!8324 r1!615) lt!1481308))))

(assert (=> d!1228706 (contains!9161 lt!1481308 (tag!8324 r1!615))))

(assert (=> d!1228706 (= (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!12 thiss!26968 lt!1481307 r2!597 (tag!8324 r1!615) lt!1481308) lt!1481329)))

(declare-fun bs!595511 () Bool)

(assert (= bs!595511 d!1228706))

(declare-fun m!4749633 () Bool)

(assert (=> bs!595511 m!4749633))

(declare-fun m!4749635 () Bool)

(assert (=> bs!595511 m!4749635))

(assert (=> b!4154820 d!1228706))

(declare-fun d!1228708 () Bool)

(assert (=> d!1228708 (= (tail!6625 rules!4102) (t!343381 rules!4102))))

(assert (=> b!4154820 d!1228708))

(declare-fun d!1228710 () Bool)

(declare-fun lt!1481330 () Bool)

(assert (=> d!1228710 (= lt!1481330 (select (content!6993 rules!4102) r2!597))))

(declare-fun e!2578168 () Bool)

(assert (=> d!1228710 (= lt!1481330 e!2578168)))

(declare-fun res!1701645 () Bool)

(assert (=> d!1228710 (=> (not res!1701645) (not e!2578168))))

(assert (=> d!1228710 (= res!1701645 ((_ is Cons!45226) rules!4102))))

(assert (=> d!1228710 (= (contains!9159 rules!4102 r2!597) lt!1481330)))

(declare-fun b!4154926 () Bool)

(declare-fun e!2578169 () Bool)

(assert (=> b!4154926 (= e!2578168 e!2578169)))

(declare-fun res!1701644 () Bool)

(assert (=> b!4154926 (=> res!1701644 e!2578169)))

(assert (=> b!4154926 (= res!1701644 (= (h!50646 rules!4102) r2!597))))

(declare-fun b!4154927 () Bool)

(assert (=> b!4154927 (= e!2578169 (contains!9159 (t!343381 rules!4102) r2!597))))

(assert (= (and d!1228710 res!1701645) b!4154926))

(assert (= (and b!4154926 (not res!1701644)) b!4154927))

(assert (=> d!1228710 m!4749599))

(declare-fun m!4749637 () Bool)

(assert (=> d!1228710 m!4749637))

(declare-fun m!4749639 () Bool)

(assert (=> b!4154927 m!4749639))

(assert (=> b!4154815 d!1228710))

(declare-fun d!1228712 () Bool)

(assert (=> d!1228712 (= (head!8788 rules!4102) (h!50646 rules!4102))))

(assert (=> b!4154810 d!1228712))

(declare-fun b!4154940 () Bool)

(declare-fun e!2578172 () Bool)

(declare-fun tp!1267121 () Bool)

(assert (=> b!4154940 (= e!2578172 tp!1267121)))

(declare-fun b!4154941 () Bool)

(declare-fun tp!1267124 () Bool)

(declare-fun tp!1267120 () Bool)

(assert (=> b!4154941 (= e!2578172 (and tp!1267124 tp!1267120))))

(declare-fun b!4154939 () Bool)

(declare-fun tp!1267123 () Bool)

(declare-fun tp!1267122 () Bool)

(assert (=> b!4154939 (= e!2578172 (and tp!1267123 tp!1267122))))

(assert (=> b!4154817 (= tp!1267072 e!2578172)))

(declare-fun b!4154938 () Bool)

(declare-fun tp_is_empty!21629 () Bool)

(assert (=> b!4154938 (= e!2578172 tp_is_empty!21629)))

(assert (= (and b!4154817 ((_ is ElementMatch!12367) (regex!7462 (h!50646 rules!4102)))) b!4154938))

(assert (= (and b!4154817 ((_ is Concat!20060) (regex!7462 (h!50646 rules!4102)))) b!4154939))

(assert (= (and b!4154817 ((_ is Star!12367) (regex!7462 (h!50646 rules!4102)))) b!4154940))

(assert (= (and b!4154817 ((_ is Union!12367) (regex!7462 (h!50646 rules!4102)))) b!4154941))

(declare-fun b!4154944 () Bool)

(declare-fun e!2578173 () Bool)

(declare-fun tp!1267126 () Bool)

(assert (=> b!4154944 (= e!2578173 tp!1267126)))

(declare-fun b!4154945 () Bool)

(declare-fun tp!1267129 () Bool)

(declare-fun tp!1267125 () Bool)

(assert (=> b!4154945 (= e!2578173 (and tp!1267129 tp!1267125))))

(declare-fun b!4154943 () Bool)

(declare-fun tp!1267128 () Bool)

(declare-fun tp!1267127 () Bool)

(assert (=> b!4154943 (= e!2578173 (and tp!1267128 tp!1267127))))

(assert (=> b!4154813 (= tp!1267070 e!2578173)))

(declare-fun b!4154942 () Bool)

(assert (=> b!4154942 (= e!2578173 tp_is_empty!21629)))

(assert (= (and b!4154813 ((_ is ElementMatch!12367) (regex!7462 r1!615))) b!4154942))

(assert (= (and b!4154813 ((_ is Concat!20060) (regex!7462 r1!615))) b!4154943))

(assert (= (and b!4154813 ((_ is Star!12367) (regex!7462 r1!615))) b!4154944))

(assert (= (and b!4154813 ((_ is Union!12367) (regex!7462 r1!615))) b!4154945))

(declare-fun b!4154948 () Bool)

(declare-fun e!2578174 () Bool)

(declare-fun tp!1267131 () Bool)

(assert (=> b!4154948 (= e!2578174 tp!1267131)))

(declare-fun b!4154949 () Bool)

(declare-fun tp!1267134 () Bool)

(declare-fun tp!1267130 () Bool)

(assert (=> b!4154949 (= e!2578174 (and tp!1267134 tp!1267130))))

(declare-fun b!4154947 () Bool)

(declare-fun tp!1267133 () Bool)

(declare-fun tp!1267132 () Bool)

(assert (=> b!4154947 (= e!2578174 (and tp!1267133 tp!1267132))))

(assert (=> b!4154819 (= tp!1267063 e!2578174)))

(declare-fun b!4154946 () Bool)

(assert (=> b!4154946 (= e!2578174 tp_is_empty!21629)))

(assert (= (and b!4154819 ((_ is ElementMatch!12367) (regex!7462 r2!597))) b!4154946))

(assert (= (and b!4154819 ((_ is Concat!20060) (regex!7462 r2!597))) b!4154947))

(assert (= (and b!4154819 ((_ is Star!12367) (regex!7462 r2!597))) b!4154948))

(assert (= (and b!4154819 ((_ is Union!12367) (regex!7462 r2!597))) b!4154949))

(declare-fun b!4154960 () Bool)

(declare-fun b_free!119147 () Bool)

(declare-fun b_next!119851 () Bool)

(assert (=> b!4154960 (= b_free!119147 (not b_next!119851))))

(declare-fun tp!1267144 () Bool)

(declare-fun b_and!323509 () Bool)

(assert (=> b!4154960 (= tp!1267144 b_and!323509)))

(declare-fun b_free!119149 () Bool)

(declare-fun b_next!119853 () Bool)

(assert (=> b!4154960 (= b_free!119149 (not b_next!119853))))

(declare-fun tp!1267145 () Bool)

(declare-fun b_and!323511 () Bool)

(assert (=> b!4154960 (= tp!1267145 b_and!323511)))

(declare-fun e!2578184 () Bool)

(assert (=> b!4154960 (= e!2578184 (and tp!1267144 tp!1267145))))

(declare-fun tp!1267146 () Bool)

(declare-fun e!2578185 () Bool)

(declare-fun b!4154959 () Bool)

(assert (=> b!4154959 (= e!2578185 (and tp!1267146 (inv!59800 (tag!8324 (h!50646 (t!343381 rules!4102)))) (inv!59802 (transformation!7462 (h!50646 (t!343381 rules!4102)))) e!2578184))))

(declare-fun b!4154958 () Bool)

(declare-fun e!2578186 () Bool)

(declare-fun tp!1267143 () Bool)

(assert (=> b!4154958 (= e!2578186 (and e!2578185 tp!1267143))))

(assert (=> b!4154814 (= tp!1267068 e!2578186)))

(assert (= b!4154959 b!4154960))

(assert (= b!4154958 b!4154959))

(assert (= (and b!4154814 ((_ is Cons!45226) (t!343381 rules!4102))) b!4154958))

(declare-fun m!4749641 () Bool)

(assert (=> b!4154959 m!4749641))

(declare-fun m!4749643 () Bool)

(assert (=> b!4154959 m!4749643))

(check-sat (not b_next!119851) (not b!4154948) (not d!1228706) (not b!4154947) (not b!4154846) b_and!323497 (not b!4154940) (not b_next!119853) (not b!4154943) b_and!323511 (not b!4154941) (not b_next!119839) (not b!4154859) (not d!1228688) (not d!1228702) (not b!4154860) b_and!323509 (not b!4154845) (not b_next!119837) (not b!4154911) (not b_next!119843) (not b!4154871) b_and!323501 (not b!4154907) (not b!4154945) (not d!1228710) (not d!1228678) (not b!4154944) (not b!4154916) b_and!323493 (not d!1228664) (not b!4154872) tp_is_empty!21629 b_and!323495 (not d!1228690) (not b!4154959) b_and!323503 (not b!4154958) (not b_next!119845) b_and!323499 (not b!4154917) (not b!4154927) (not b!4154949) (not b_next!119841) (not b!4154939) (not d!1228680) (not b_next!119835))
(check-sat b_and!323509 (not b_next!119851) (not b_next!119837) (not b_next!119843) b_and!323497 b_and!323501 (not b_next!119853) b_and!323493 b_and!323495 b_and!323503 b_and!323511 (not b_next!119839) (not b_next!119845) b_and!323499 (not b_next!119841) (not b_next!119835))
