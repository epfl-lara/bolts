; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187918 () Bool)

(assert start!187918)

(declare-fun b!1874798 () Bool)

(declare-fun b_free!52113 () Bool)

(declare-fun b_next!52817 () Bool)

(assert (=> b!1874798 (= b_free!52113 (not b_next!52817))))

(declare-fun tp!534250 () Bool)

(declare-fun b_and!144399 () Bool)

(assert (=> b!1874798 (= tp!534250 b_and!144399)))

(declare-fun b_free!52115 () Bool)

(declare-fun b_next!52819 () Bool)

(assert (=> b!1874798 (= b_free!52115 (not b_next!52819))))

(declare-fun tp!534253 () Bool)

(declare-fun b_and!144401 () Bool)

(assert (=> b!1874798 (= tp!534253 b_and!144401)))

(declare-fun b!1874797 () Bool)

(declare-fun e!1196374 () Bool)

(declare-datatypes ((List!20925 0))(
  ( (Nil!20843) (Cons!20843 (h!26244 (_ BitVec 16)) (t!173142 List!20925)) )
))
(declare-datatypes ((TokenValue!3822 0))(
  ( (FloatLiteralValue!7644 (text!27199 List!20925)) (TokenValueExt!3821 (__x!13082 Int)) (Broken!19110 (value!116490 List!20925)) (Object!3903) (End!3822) (Def!3822) (Underscore!3822) (Match!3822) (Else!3822) (Error!3822) (Case!3822) (If!3822) (Extends!3822) (Abstract!3822) (Class!3822) (Val!3822) (DelimiterValue!7644 (del!3882 List!20925)) (KeywordValue!3828 (value!116491 List!20925)) (CommentValue!7644 (value!116492 List!20925)) (WhitespaceValue!7644 (value!116493 List!20925)) (IndentationValue!3822 (value!116494 List!20925)) (String!24059) (Int32!3822) (Broken!19111 (value!116495 List!20925)) (Boolean!3823) (Unit!35369) (OperatorValue!3825 (op!3882 List!20925)) (IdentifierValue!7644 (value!116496 List!20925)) (IdentifierValue!7645 (value!116497 List!20925)) (WhitespaceValue!7645 (value!116498 List!20925)) (True!7644) (False!7644) (Broken!19112 (value!116499 List!20925)) (Broken!19113 (value!116500 List!20925)) (True!7645) (RightBrace!3822) (RightBracket!3822) (Colon!3822) (Null!3822) (Comma!3822) (LeftBracket!3822) (False!7645) (LeftBrace!3822) (ImaginaryLiteralValue!3822 (text!27200 List!20925)) (StringLiteralValue!11466 (value!116501 List!20925)) (EOFValue!3822 (value!116502 List!20925)) (IdentValue!3822 (value!116503 List!20925)) (DelimiterValue!7645 (value!116504 List!20925)) (DedentValue!3822 (value!116505 List!20925)) (NewLineValue!3822 (value!116506 List!20925)) (IntegerValue!11466 (value!116507 (_ BitVec 32)) (text!27201 List!20925)) (IntegerValue!11467 (value!116508 Int) (text!27202 List!20925)) (Times!3822) (Or!3822) (Equal!3822) (Minus!3822) (Broken!19114 (value!116509 List!20925)) (And!3822) (Div!3822) (LessEqual!3822) (Mod!3822) (Concat!8917) (Not!3822) (Plus!3822) (SpaceValue!3822 (value!116510 List!20925)) (IntegerValue!11468 (value!116511 Int) (text!27203 List!20925)) (StringLiteralValue!11467 (text!27204 List!20925)) (FloatLiteralValue!7645 (text!27205 List!20925)) (BytesLiteralValue!3822 (value!116512 List!20925)) (CommentValue!7645 (value!116513 List!20925)) (StringLiteralValue!11468 (value!116514 List!20925)) (ErrorTokenValue!3822 (msg!3883 List!20925)) )
))
(declare-datatypes ((C!10348 0))(
  ( (C!10349 (val!6062 Int)) )
))
(declare-datatypes ((Regex!5095 0))(
  ( (ElementMatch!5095 (c!305456 C!10348)) (Concat!8918 (regOne!10702 Regex!5095) (regTwo!10702 Regex!5095)) (EmptyExpr!5095) (Star!5095 (reg!5424 Regex!5095)) (EmptyLang!5095) (Union!5095 (regOne!10703 Regex!5095) (regTwo!10703 Regex!5095)) )
))
(declare-datatypes ((String!24060 0))(
  ( (String!24061 (value!116515 String)) )
))
(declare-datatypes ((List!20926 0))(
  ( (Nil!20844) (Cons!20844 (h!26245 C!10348) (t!173143 List!20926)) )
))
(declare-datatypes ((IArray!13807 0))(
  ( (IArray!13808 (innerList!6961 List!20926)) )
))
(declare-datatypes ((Conc!6901 0))(
  ( (Node!6901 (left!16750 Conc!6901) (right!17080 Conc!6901) (csize!14032 Int) (cheight!7112 Int)) (Leaf!10165 (xs!9785 IArray!13807) (csize!14033 Int)) (Empty!6901) )
))
(declare-datatypes ((BalanceConc!13618 0))(
  ( (BalanceConc!13619 (c!305457 Conc!6901)) )
))
(declare-datatypes ((TokenValueInjection!7228 0))(
  ( (TokenValueInjection!7229 (toValue!5283 Int) (toChars!5142 Int)) )
))
(declare-datatypes ((Rule!7172 0))(
  ( (Rule!7173 (regex!3686 Regex!5095) (tag!4100 String!24060) (isSeparator!3686 Bool) (transformation!3686 TokenValueInjection!7228)) )
))
(declare-datatypes ((Token!6924 0))(
  ( (Token!6925 (value!116516 TokenValue!3822) (rule!5879 Rule!7172) (size!16535 Int) (originalCharacters!4493 List!20926)) )
))
(declare-datatypes ((List!20927 0))(
  ( (Nil!20845) (Cons!20845 (h!26246 Token!6924) (t!173144 List!20927)) )
))
(declare-datatypes ((IArray!13809 0))(
  ( (IArray!13810 (innerList!6962 List!20927)) )
))
(declare-datatypes ((Conc!6902 0))(
  ( (Node!6902 (left!16751 Conc!6902) (right!17081 Conc!6902) (csize!14034 Int) (cheight!7113 Int)) (Leaf!10166 (xs!9786 IArray!13809) (csize!14035 Int)) (Empty!6902) )
))
(declare-datatypes ((BalanceConc!13620 0))(
  ( (BalanceConc!13621 (c!305458 Conc!6902)) )
))
(declare-fun acc!408 () BalanceConc!13620)

(declare-fun tp!534251 () Bool)

(declare-fun inv!27668 (Conc!6902) Bool)

(assert (=> b!1874797 (= e!1196374 (and (inv!27668 (c!305458 acc!408)) tp!534251))))

(declare-fun e!1196372 () Bool)

(assert (=> b!1874798 (= e!1196372 (and tp!534250 tp!534253))))

(declare-fun b!1874799 () Bool)

(declare-fun e!1196369 () Bool)

(declare-fun v!6352 () BalanceConc!13620)

(declare-fun tp!534248 () Bool)

(assert (=> b!1874799 (= e!1196369 (and (inv!27668 (c!305458 v!6352)) tp!534248))))

(declare-fun b!1874800 () Bool)

(declare-fun e!1196373 () Bool)

(declare-fun e!1196368 () Bool)

(declare-fun tp!534249 () Bool)

(declare-fun separatorToken!84 () Token!6924)

(declare-fun inv!21 (TokenValue!3822) Bool)

(assert (=> b!1874800 (= e!1196368 (and (inv!21 (value!116516 separatorToken!84)) e!1196373 tp!534249))))

(declare-fun b!1874801 () Bool)

(declare-fun e!1196367 () Bool)

(declare-fun from!845 () Int)

(assert (=> b!1874801 (= e!1196367 (not (<= 0 from!845)))))

(declare-fun lt!720090 () List!20927)

(declare-fun list!8500 (BalanceConc!13620) List!20927)

(assert (=> b!1874801 (= lt!720090 (list!8500 acc!408))))

(declare-fun lt!720091 () List!20927)

(declare-fun lt!720087 () List!20927)

(declare-fun tail!2886 (List!20927) List!20927)

(declare-fun drop!1006 (List!20927 Int) List!20927)

(assert (=> b!1874801 (= (tail!2886 lt!720091) (drop!1006 lt!720087 (+ 1 from!845)))))

(declare-datatypes ((Unit!35370 0))(
  ( (Unit!35371) )
))
(declare-fun lt!720089 () Unit!35370)

(declare-fun lemmaDropTail!624 (List!20927 Int) Unit!35370)

(assert (=> b!1874801 (= lt!720089 (lemmaDropTail!624 lt!720087 from!845))))

(declare-fun head!4357 (List!20927) Token!6924)

(declare-fun apply!5473 (List!20927 Int) Token!6924)

(assert (=> b!1874801 (= (head!4357 lt!720091) (apply!5473 lt!720087 from!845))))

(assert (=> b!1874801 (= lt!720091 (drop!1006 lt!720087 from!845))))

(declare-fun lt!720088 () Unit!35370)

(declare-fun lemmaDropApply!644 (List!20927 Int) Unit!35370)

(assert (=> b!1874801 (= lt!720088 (lemmaDropApply!644 lt!720087 from!845))))

(assert (=> b!1874801 (= lt!720087 (list!8500 v!6352))))

(declare-fun res!838491 () Bool)

(declare-fun e!1196375 () Bool)

(assert (=> start!187918 (=> (not res!838491) (not e!1196375))))

(declare-datatypes ((LexerInterface!3308 0))(
  ( (LexerInterfaceExt!3305 (__x!13083 Int)) (Lexer!3306) )
))
(declare-fun thiss!13718 () LexerInterface!3308)

(get-info :version)

(assert (=> start!187918 (= res!838491 (and ((_ is Lexer!3306) thiss!13718) (>= from!845 0)))))

(assert (=> start!187918 e!1196375))

(assert (=> start!187918 true))

(declare-fun inv!27669 (BalanceConc!13620) Bool)

(assert (=> start!187918 (and (inv!27669 acc!408) e!1196374)))

(assert (=> start!187918 (and (inv!27669 v!6352) e!1196369)))

(declare-fun inv!27670 (Token!6924) Bool)

(assert (=> start!187918 (and (inv!27670 separatorToken!84) e!1196368)))

(declare-fun tp!534252 () Bool)

(declare-fun b!1874802 () Bool)

(declare-fun inv!27663 (String!24060) Bool)

(declare-fun inv!27671 (TokenValueInjection!7228) Bool)

(assert (=> b!1874802 (= e!1196373 (and tp!534252 (inv!27663 (tag!4100 (rule!5879 separatorToken!84))) (inv!27671 (transformation!3686 (rule!5879 separatorToken!84))) e!1196372))))

(declare-fun b!1874803 () Bool)

(assert (=> b!1874803 (= e!1196375 e!1196367)))

(declare-fun res!838490 () Bool)

(assert (=> b!1874803 (=> (not res!838490) (not e!1196367))))

(declare-fun lt!720086 () Int)

(assert (=> b!1874803 (= res!838490 (and (<= from!845 lt!720086) (isSeparator!3686 (rule!5879 separatorToken!84)) (< from!845 lt!720086)))))

(declare-fun size!16536 (BalanceConc!13620) Int)

(assert (=> b!1874803 (= lt!720086 (size!16536 v!6352))))

(assert (= (and start!187918 res!838491) b!1874803))

(assert (= (and b!1874803 res!838490) b!1874801))

(assert (= start!187918 b!1874797))

(assert (= start!187918 b!1874799))

(assert (= b!1874802 b!1874798))

(assert (= b!1874800 b!1874802))

(assert (= start!187918 b!1874800))

(declare-fun m!2299671 () Bool)

(assert (=> b!1874799 m!2299671))

(declare-fun m!2299673 () Bool)

(assert (=> b!1874801 m!2299673))

(declare-fun m!2299675 () Bool)

(assert (=> b!1874801 m!2299675))

(declare-fun m!2299677 () Bool)

(assert (=> b!1874801 m!2299677))

(declare-fun m!2299679 () Bool)

(assert (=> b!1874801 m!2299679))

(declare-fun m!2299681 () Bool)

(assert (=> b!1874801 m!2299681))

(declare-fun m!2299683 () Bool)

(assert (=> b!1874801 m!2299683))

(declare-fun m!2299685 () Bool)

(assert (=> b!1874801 m!2299685))

(declare-fun m!2299687 () Bool)

(assert (=> b!1874801 m!2299687))

(declare-fun m!2299689 () Bool)

(assert (=> b!1874801 m!2299689))

(declare-fun m!2299691 () Bool)

(assert (=> b!1874797 m!2299691))

(declare-fun m!2299693 () Bool)

(assert (=> b!1874803 m!2299693))

(declare-fun m!2299695 () Bool)

(assert (=> b!1874802 m!2299695))

(declare-fun m!2299697 () Bool)

(assert (=> b!1874802 m!2299697))

(declare-fun m!2299699 () Bool)

(assert (=> start!187918 m!2299699))

(declare-fun m!2299701 () Bool)

(assert (=> start!187918 m!2299701))

(declare-fun m!2299703 () Bool)

(assert (=> start!187918 m!2299703))

(declare-fun m!2299705 () Bool)

(assert (=> b!1874800 m!2299705))

(check-sat (not b!1874801) (not b_next!52819) (not b!1874797) (not b!1874799) (not b!1874800) (not b!1874803) (not b_next!52817) (not b!1874802) b_and!144399 (not start!187918) b_and!144401)
(check-sat b_and!144401 b_and!144399 (not b_next!52817) (not b_next!52819))
