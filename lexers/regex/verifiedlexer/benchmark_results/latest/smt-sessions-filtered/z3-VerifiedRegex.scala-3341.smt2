; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!189528 () Bool)

(assert start!189528)

(declare-fun res!844691 () Bool)

(declare-fun e!1207888 () Bool)

(assert (=> start!189528 (=> (not res!844691) (not e!1207888))))

(declare-datatypes ((LexerInterface!3371 0))(
  ( (LexerInterfaceExt!3368 (__x!13286 Int)) (Lexer!3369) )
))
(declare-fun thiss!13601 () LexerInterface!3371)

(declare-fun from!837 () Int)

(get-info :version)

(assert (=> start!189528 (= res!844691 (and ((_ is Lexer!3369) thiss!13601) (>= from!837 0)))))

(assert (=> start!189528 e!1207888))

(assert (=> start!189528 true))

(declare-datatypes ((List!21275 0))(
  ( (Nil!21193) (Cons!21193 (h!26594 (_ BitVec 16)) (t!175764 List!21275)) )
))
(declare-datatypes ((TokenValue!3894 0))(
  ( (FloatLiteralValue!7788 (text!27703 List!21275)) (TokenValueExt!3893 (__x!13287 Int)) (Broken!19470 (value!118668 List!21275)) (Object!3975) (End!3894) (Def!3894) (Underscore!3894) (Match!3894) (Else!3894) (Error!3894) (Case!3894) (If!3894) (Extends!3894) (Abstract!3894) (Class!3894) (Val!3894) (DelimiterValue!7788 (del!3954 List!21275)) (KeywordValue!3900 (value!118669 List!21275)) (CommentValue!7788 (value!118670 List!21275)) (WhitespaceValue!7788 (value!118671 List!21275)) (IndentationValue!3894 (value!118672 List!21275)) (String!24587) (Int32!3894) (Broken!19471 (value!118673 List!21275)) (Boolean!3895) (Unit!35569) (OperatorValue!3897 (op!3954 List!21275)) (IdentifierValue!7788 (value!118674 List!21275)) (IdentifierValue!7789 (value!118675 List!21275)) (WhitespaceValue!7789 (value!118676 List!21275)) (True!7788) (False!7788) (Broken!19472 (value!118677 List!21275)) (Broken!19473 (value!118678 List!21275)) (True!7789) (RightBrace!3894) (RightBracket!3894) (Colon!3894) (Null!3894) (Comma!3894) (LeftBracket!3894) (False!7789) (LeftBrace!3894) (ImaginaryLiteralValue!3894 (text!27704 List!21275)) (StringLiteralValue!11682 (value!118679 List!21275)) (EOFValue!3894 (value!118680 List!21275)) (IdentValue!3894 (value!118681 List!21275)) (DelimiterValue!7789 (value!118682 List!21275)) (DedentValue!3894 (value!118683 List!21275)) (NewLineValue!3894 (value!118684 List!21275)) (IntegerValue!11682 (value!118685 (_ BitVec 32)) (text!27705 List!21275)) (IntegerValue!11683 (value!118686 Int) (text!27706 List!21275)) (Times!3894) (Or!3894) (Equal!3894) (Minus!3894) (Broken!19474 (value!118687 List!21275)) (And!3894) (Div!3894) (LessEqual!3894) (Mod!3894) (Concat!9077) (Not!3894) (Plus!3894) (SpaceValue!3894 (value!118688 List!21275)) (IntegerValue!11684 (value!118689 Int) (text!27707 List!21275)) (StringLiteralValue!11683 (text!27708 List!21275)) (FloatLiteralValue!7789 (text!27709 List!21275)) (BytesLiteralValue!3894 (value!118690 List!21275)) (CommentValue!7789 (value!118691 List!21275)) (StringLiteralValue!11684 (value!118692 List!21275)) (ErrorTokenValue!3894 (msg!3955 List!21275)) )
))
(declare-datatypes ((C!10512 0))(
  ( (C!10513 (val!6208 Int)) )
))
(declare-datatypes ((List!21276 0))(
  ( (Nil!21194) (Cons!21194 (h!26595 C!10512) (t!175765 List!21276)) )
))
(declare-datatypes ((IArray!14113 0))(
  ( (IArray!14114 (innerList!7114 List!21276)) )
))
(declare-datatypes ((Conc!7054 0))(
  ( (Node!7054 (left!17011 Conc!7054) (right!17341 Conc!7054) (csize!14338 Int) (cheight!7265 Int)) (Leaf!10396 (xs!9944 IArray!14113) (csize!14339 Int)) (Empty!7054) )
))
(declare-datatypes ((BalanceConc!13924 0))(
  ( (BalanceConc!13925 (c!308722 Conc!7054)) )
))
(declare-datatypes ((String!24588 0))(
  ( (String!24589 (value!118693 String)) )
))
(declare-datatypes ((Regex!5183 0))(
  ( (ElementMatch!5183 (c!308723 C!10512)) (Concat!9078 (regOne!10878 Regex!5183) (regTwo!10878 Regex!5183)) (EmptyExpr!5183) (Star!5183 (reg!5512 Regex!5183)) (EmptyLang!5183) (Union!5183 (regOne!10879 Regex!5183) (regTwo!10879 Regex!5183)) )
))
(declare-datatypes ((TokenValueInjection!7372 0))(
  ( (TokenValueInjection!7373 (toValue!5367 Int) (toChars!5226 Int)) )
))
(declare-datatypes ((Rule!7316 0))(
  ( (Rule!7317 (regex!3758 Regex!5183) (tag!4172 String!24588) (isSeparator!3758 Bool) (transformation!3758 TokenValueInjection!7372)) )
))
(declare-datatypes ((Token!7068 0))(
  ( (Token!7069 (value!118694 TokenValue!3894) (rule!5951 Rule!7316) (size!16803 Int) (originalCharacters!4565 List!21276)) )
))
(declare-datatypes ((List!21277 0))(
  ( (Nil!21195) (Cons!21195 (h!26596 Token!7068) (t!175766 List!21277)) )
))
(declare-datatypes ((IArray!14115 0))(
  ( (IArray!14116 (innerList!7115 List!21277)) )
))
(declare-datatypes ((Conc!7055 0))(
  ( (Node!7055 (left!17012 Conc!7055) (right!17342 Conc!7055) (csize!14340 Int) (cheight!7266 Int)) (Leaf!10397 (xs!9945 IArray!14115) (csize!14341 Int)) (Empty!7055) )
))
(declare-datatypes ((BalanceConc!13926 0))(
  ( (BalanceConc!13927 (c!308724 Conc!7055)) )
))
(declare-fun v!6342 () BalanceConc!13926)

(declare-fun e!1207886 () Bool)

(declare-fun inv!28275 (BalanceConc!13926) Bool)

(assert (=> start!189528 (and (inv!28275 v!6342) e!1207886)))

(declare-fun b!1892218 () Bool)

(declare-fun e!1207887 () Bool)

(assert (=> b!1892218 (= e!1207888 e!1207887)))

(declare-fun res!844692 () Bool)

(assert (=> b!1892218 (=> (not res!844692) (not e!1207887))))

(declare-fun lt!724369 () Int)

(assert (=> b!1892218 (= res!844692 (and (<= from!837 lt!724369) (< from!837 lt!724369)))))

(declare-fun size!16804 (BalanceConc!13926) Int)

(assert (=> b!1892218 (= lt!724369 (size!16804 v!6342))))

(declare-fun b!1892219 () Bool)

(assert (=> b!1892219 (= e!1207887 (not (< (- lt!724369 (+ 1 from!837)) (- lt!724369 from!837))))))

(declare-fun lt!724370 () BalanceConc!13924)

(declare-fun charsOf!2314 (Token!7068) BalanceConc!13924)

(declare-fun apply!5576 (BalanceConc!13926 Int) Token!7068)

(assert (=> b!1892219 (= lt!724370 (charsOf!2314 (apply!5576 v!6342 from!837)))))

(declare-fun lt!724367 () List!21277)

(declare-fun lt!724372 () List!21277)

(declare-fun tail!2926 (List!21277) List!21277)

(declare-fun drop!1053 (List!21277 Int) List!21277)

(assert (=> b!1892219 (= (tail!2926 lt!724367) (drop!1053 lt!724372 (+ 1 from!837)))))

(declare-datatypes ((Unit!35570 0))(
  ( (Unit!35571) )
))
(declare-fun lt!724371 () Unit!35570)

(declare-fun lemmaDropTail!662 (List!21277 Int) Unit!35570)

(assert (=> b!1892219 (= lt!724371 (lemmaDropTail!662 lt!724372 from!837))))

(declare-fun head!4400 (List!21277) Token!7068)

(declare-fun apply!5577 (List!21277 Int) Token!7068)

(assert (=> b!1892219 (= (head!4400 lt!724367) (apply!5577 lt!724372 from!837))))

(assert (=> b!1892219 (= lt!724367 (drop!1053 lt!724372 from!837))))

(declare-fun lt!724368 () Unit!35570)

(declare-fun lemmaDropApply!686 (List!21277 Int) Unit!35570)

(assert (=> b!1892219 (= lt!724368 (lemmaDropApply!686 lt!724372 from!837))))

(declare-fun list!8604 (BalanceConc!13926) List!21277)

(assert (=> b!1892219 (= lt!724372 (list!8604 v!6342))))

(declare-fun b!1892220 () Bool)

(declare-fun tp!539774 () Bool)

(declare-fun inv!28276 (Conc!7055) Bool)

(assert (=> b!1892220 (= e!1207886 (and (inv!28276 (c!308724 v!6342)) tp!539774))))

(assert (= (and start!189528 res!844691) b!1892218))

(assert (= (and b!1892218 res!844692) b!1892219))

(assert (= start!189528 b!1892220))

(declare-fun m!2323565 () Bool)

(assert (=> start!189528 m!2323565))

(declare-fun m!2323567 () Bool)

(assert (=> b!1892218 m!2323567))

(declare-fun m!2323569 () Bool)

(assert (=> b!1892219 m!2323569))

(declare-fun m!2323571 () Bool)

(assert (=> b!1892219 m!2323571))

(declare-fun m!2323573 () Bool)

(assert (=> b!1892219 m!2323573))

(declare-fun m!2323575 () Bool)

(assert (=> b!1892219 m!2323575))

(declare-fun m!2323577 () Bool)

(assert (=> b!1892219 m!2323577))

(assert (=> b!1892219 m!2323577))

(declare-fun m!2323579 () Bool)

(assert (=> b!1892219 m!2323579))

(declare-fun m!2323581 () Bool)

(assert (=> b!1892219 m!2323581))

(declare-fun m!2323583 () Bool)

(assert (=> b!1892219 m!2323583))

(declare-fun m!2323585 () Bool)

(assert (=> b!1892219 m!2323585))

(declare-fun m!2323587 () Bool)

(assert (=> b!1892219 m!2323587))

(declare-fun m!2323589 () Bool)

(assert (=> b!1892220 m!2323589))

(check-sat (not b!1892220) (not b!1892218) (not b!1892219) (not start!189528))
(check-sat)
