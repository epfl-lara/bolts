; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347990 () Bool)

(assert start!347990)

(declare-fun b!3695662 () Bool)

(declare-fun b_free!98281 () Bool)

(declare-fun b_next!98985 () Bool)

(assert (=> b!3695662 (= b_free!98281 (not b_next!98985))))

(declare-fun tp!1123264 () Bool)

(declare-fun b_and!276203 () Bool)

(assert (=> b!3695662 (= tp!1123264 b_and!276203)))

(declare-fun b_free!98283 () Bool)

(declare-fun b_next!98987 () Bool)

(assert (=> b!3695662 (= b_free!98283 (not b_next!98987))))

(declare-fun tp!1123263 () Bool)

(declare-fun b_and!276205 () Bool)

(assert (=> b!3695662 (= tp!1123263 b_and!276205)))

(declare-fun b!3695673 () Bool)

(declare-fun b_free!98285 () Bool)

(declare-fun b_next!98989 () Bool)

(assert (=> b!3695673 (= b_free!98285 (not b_next!98989))))

(declare-fun tp!1123265 () Bool)

(declare-fun b_and!276207 () Bool)

(assert (=> b!3695673 (= tp!1123265 b_and!276207)))

(declare-fun b_free!98287 () Bool)

(declare-fun b_next!98991 () Bool)

(assert (=> b!3695673 (= b_free!98287 (not b_next!98991))))

(declare-fun tp!1123266 () Bool)

(declare-fun b_and!276209 () Bool)

(assert (=> b!3695673 (= tp!1123266 b_and!276209)))

(declare-datatypes ((List!39336 0))(
  ( (Nil!39212) (Cons!39212 (h!44632 (_ BitVec 16)) (t!301671 List!39336)) )
))
(declare-datatypes ((TokenValue!6174 0))(
  ( (FloatLiteralValue!12348 (text!43663 List!39336)) (TokenValueExt!6173 (__x!24565 Int)) (Broken!30870 (value!189832 List!39336)) (Object!6297) (End!6174) (Def!6174) (Underscore!6174) (Match!6174) (Else!6174) (Error!6174) (Case!6174) (If!6174) (Extends!6174) (Abstract!6174) (Class!6174) (Val!6174) (DelimiterValue!12348 (del!6234 List!39336)) (KeywordValue!6180 (value!189833 List!39336)) (CommentValue!12348 (value!189834 List!39336)) (WhitespaceValue!12348 (value!189835 List!39336)) (IndentationValue!6174 (value!189836 List!39336)) (String!44203) (Int32!6174) (Broken!30871 (value!189837 List!39336)) (Boolean!6175) (Unit!57203) (OperatorValue!6177 (op!6234 List!39336)) (IdentifierValue!12348 (value!189838 List!39336)) (IdentifierValue!12349 (value!189839 List!39336)) (WhitespaceValue!12349 (value!189840 List!39336)) (True!12348) (False!12348) (Broken!30872 (value!189841 List!39336)) (Broken!30873 (value!189842 List!39336)) (True!12349) (RightBrace!6174) (RightBracket!6174) (Colon!6174) (Null!6174) (Comma!6174) (LeftBracket!6174) (False!12349) (LeftBrace!6174) (ImaginaryLiteralValue!6174 (text!43664 List!39336)) (StringLiteralValue!18522 (value!189843 List!39336)) (EOFValue!6174 (value!189844 List!39336)) (IdentValue!6174 (value!189845 List!39336)) (DelimiterValue!12349 (value!189846 List!39336)) (DedentValue!6174 (value!189847 List!39336)) (NewLineValue!6174 (value!189848 List!39336)) (IntegerValue!18522 (value!189849 (_ BitVec 32)) (text!43665 List!39336)) (IntegerValue!18523 (value!189850 Int) (text!43666 List!39336)) (Times!6174) (Or!6174) (Equal!6174) (Minus!6174) (Broken!30874 (value!189851 List!39336)) (And!6174) (Div!6174) (LessEqual!6174) (Mod!6174) (Concat!16877) (Not!6174) (Plus!6174) (SpaceValue!6174 (value!189852 List!39336)) (IntegerValue!18524 (value!189853 Int) (text!43667 List!39336)) (StringLiteralValue!18523 (text!43668 List!39336)) (FloatLiteralValue!12349 (text!43669 List!39336)) (BytesLiteralValue!6174 (value!189854 List!39336)) (CommentValue!12349 (value!189855 List!39336)) (StringLiteralValue!18524 (value!189856 List!39336)) (ErrorTokenValue!6174 (msg!6235 List!39336)) )
))
(declare-datatypes ((C!21592 0))(
  ( (C!21593 (val!12844 Int)) )
))
(declare-datatypes ((List!39337 0))(
  ( (Nil!39213) (Cons!39213 (h!44633 C!21592) (t!301672 List!39337)) )
))
(declare-datatypes ((IArray!24087 0))(
  ( (IArray!24088 (innerList!12101 List!39337)) )
))
(declare-datatypes ((Conc!12041 0))(
  ( (Node!12041 (left!30559 Conc!12041) (right!30889 Conc!12041) (csize!24312 Int) (cheight!12252 Int)) (Leaf!18624 (xs!15243 IArray!24087) (csize!24313 Int)) (Empty!12041) )
))
(declare-datatypes ((BalanceConc!23696 0))(
  ( (BalanceConc!23697 (c!638840 Conc!12041)) )
))
(declare-datatypes ((TokenValueInjection!11776 0))(
  ( (TokenValueInjection!11777 (toValue!8276 Int) (toChars!8135 Int)) )
))
(declare-datatypes ((Regex!10703 0))(
  ( (ElementMatch!10703 (c!638841 C!21592)) (Concat!16878 (regOne!21918 Regex!10703) (regTwo!21918 Regex!10703)) (EmptyExpr!10703) (Star!10703 (reg!11032 Regex!10703)) (EmptyLang!10703) (Union!10703 (regOne!21919 Regex!10703) (regTwo!21919 Regex!10703)) )
))
(declare-datatypes ((String!44204 0))(
  ( (String!44205 (value!189857 String)) )
))
(declare-datatypes ((Rule!11688 0))(
  ( (Rule!11689 (regex!5944 Regex!10703) (tag!6768 String!44204) (isSeparator!5944 Bool) (transformation!5944 TokenValueInjection!11776)) )
))
(declare-datatypes ((Token!11242 0))(
  ( (Token!11243 (value!189858 TokenValue!6174) (rule!8798 Rule!11688) (size!29922 Int) (originalCharacters!6652 List!39337)) )
))
(declare-fun token!544 () Token!11242)

(declare-fun e!2288596 () Bool)

(declare-fun b!3695657 () Bool)

(declare-fun e!2288597 () Bool)

(declare-fun tp!1123267 () Bool)

(declare-fun inv!21 (TokenValue!6174) Bool)

(assert (=> b!3695657 (= e!2288597 (and (inv!21 (value!189858 token!544)) e!2288596 tp!1123267))))

(declare-fun b!3695658 () Bool)

(declare-fun res!1502762 () Bool)

(declare-fun e!2288594 () Bool)

(assert (=> b!3695658 (=> res!1502762 e!2288594)))

(declare-fun lt!1293606 () Bool)

(assert (=> b!3695658 (= res!1502762 lt!1293606)))

(declare-fun b!3695659 () Bool)

(declare-fun e!2288602 () Bool)

(assert (=> b!3695659 (= e!2288602 (not e!2288594))))

(declare-fun res!1502755 () Bool)

(assert (=> b!3695659 (=> res!1502755 e!2288594)))

(declare-datatypes ((LexerInterface!5533 0))(
  ( (LexerInterfaceExt!5530 (__x!24566 Int)) (Lexer!5531) )
))
(declare-fun thiss!25322 () LexerInterface!5533)

(declare-datatypes ((List!39338 0))(
  ( (Nil!39214) (Cons!39214 (h!44634 Rule!11688) (t!301673 List!39338)) )
))
(declare-fun lt!1293609 () List!39338)

(declare-fun rulesInvariant!4930 (LexerInterface!5533 List!39338) Bool)

(assert (=> b!3695659 (= res!1502755 (not (rulesInvariant!4930 thiss!25322 lt!1293609)))))

(declare-fun rules!3598 () List!39338)

(assert (=> b!3695659 (= lt!1293609 (Cons!39214 (h!44634 rules!3598) (t!301673 rules!3598)))))

(declare-fun e!2288606 () Bool)

(assert (=> b!3695659 e!2288606))

(declare-fun res!1502753 () Bool)

(assert (=> b!3695659 (=> (not res!1502753) (not e!2288606))))

(assert (=> b!3695659 (= res!1502753 (not lt!1293606))))

(declare-datatypes ((Option!8467 0))(
  ( (None!8466) (Some!8466 (v!38424 Rule!11688)) )
))
(declare-fun lt!1293613 () Option!8467)

(declare-fun isDefined!6658 (Option!8467) Bool)

(assert (=> b!3695659 (= lt!1293606 (not (isDefined!6658 lt!1293613)))))

(declare-fun getRuleFromTag!1500 (LexerInterface!5533 List!39338 String!44204) Option!8467)

(assert (=> b!3695659 (= lt!1293613 (getRuleFromTag!1500 thiss!25322 (t!301673 rules!3598) (tag!6768 (rule!8798 token!544))))))

(declare-fun input!3172 () List!39337)

(declare-datatypes ((Unit!57204 0))(
  ( (Unit!57205) )
))
(declare-fun lt!1293614 () Unit!57204)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1494 (LexerInterface!5533 List!39338 List!39337 Token!11242) Unit!57204)

(assert (=> b!3695659 (= lt!1293614 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1494 thiss!25322 (t!301673 rules!3598) input!3172 token!544))))

(assert (=> b!3695659 (rulesInvariant!4930 thiss!25322 (t!301673 rules!3598))))

(declare-fun lt!1293607 () Unit!57204)

(declare-fun lemmaInvariantOnRulesThenOnTail!652 (LexerInterface!5533 Rule!11688 List!39338) Unit!57204)

(assert (=> b!3695659 (= lt!1293607 (lemmaInvariantOnRulesThenOnTail!652 thiss!25322 (h!44634 rules!3598) (t!301673 rules!3598)))))

(declare-fun b!3695660 () Bool)

(declare-fun e!2288609 () Bool)

(declare-fun lt!1293608 () Rule!11688)

(assert (=> b!3695660 (= e!2288609 (= (rule!8798 token!544) lt!1293608))))

(declare-fun b!3695661 () Bool)

(assert (=> b!3695661 (= e!2288606 e!2288609)))

(declare-fun res!1502751 () Bool)

(assert (=> b!3695661 (=> (not res!1502751) (not e!2288609))))

(declare-fun matchR!5242 (Regex!10703 List!39337) Bool)

(declare-fun list!14652 (BalanceConc!23696) List!39337)

(declare-fun charsOf!3939 (Token!11242) BalanceConc!23696)

(assert (=> b!3695661 (= res!1502751 (matchR!5242 (regex!5944 lt!1293608) (list!14652 (charsOf!3939 token!544))))))

(declare-fun get!13028 (Option!8467) Rule!11688)

(assert (=> b!3695661 (= lt!1293608 (get!13028 lt!1293613))))

(declare-fun e!2288607 () Bool)

(assert (=> b!3695662 (= e!2288607 (and tp!1123264 tp!1123263))))

(declare-fun b!3695663 () Bool)

(declare-fun e!2288600 () Bool)

(declare-fun tp_is_empty!18481 () Bool)

(declare-fun tp!1123260 () Bool)

(assert (=> b!3695663 (= e!2288600 (and tp_is_empty!18481 tp!1123260))))

(declare-fun b!3695664 () Bool)

(declare-fun res!1502761 () Bool)

(assert (=> b!3695664 (=> (not res!1502761) (not e!2288602))))

(declare-fun isEmpty!23364 (List!39338) Bool)

(assert (=> b!3695664 (= res!1502761 (not (isEmpty!23364 (t!301673 rules!3598))))))

(declare-fun b!3695665 () Bool)

(declare-fun e!2288601 () Bool)

(declare-datatypes ((tuple2!39096 0))(
  ( (tuple2!39097 (_1!22682 Token!11242) (_2!22682 List!39337)) )
))
(declare-datatypes ((Option!8468 0))(
  ( (None!8467) (Some!8467 (v!38425 tuple2!39096)) )
))
(declare-fun lt!1293610 () Option!8468)

(declare-fun get!13029 (Option!8468) tuple2!39096)

(assert (=> b!3695665 (= e!2288601 (not (= (_1!22682 (get!13029 lt!1293610)) token!544)))))

(declare-fun b!3695666 () Bool)

(declare-fun e!2288605 () Bool)

(assert (=> b!3695666 (= e!2288605 e!2288602)))

(declare-fun res!1502760 () Bool)

(assert (=> b!3695666 (=> (not res!1502760) (not e!2288602))))

(assert (=> b!3695666 (= res!1502760 e!2288601)))

(declare-fun res!1502759 () Bool)

(assert (=> b!3695666 (=> res!1502759 e!2288601)))

(declare-fun isDefined!6659 (Option!8468) Bool)

(assert (=> b!3695666 (= res!1502759 (not (isDefined!6659 lt!1293610)))))

(declare-fun maxPrefixOneRule!2169 (LexerInterface!5533 Rule!11688 List!39337) Option!8468)

(assert (=> b!3695666 (= lt!1293610 (maxPrefixOneRule!2169 thiss!25322 (h!44634 rules!3598) input!3172))))

(declare-fun b!3695668 () Bool)

(assert (=> b!3695668 (= e!2288594 true)))

(declare-fun lt!1293605 () Option!8467)

(assert (=> b!3695668 (= lt!1293605 (getRuleFromTag!1500 thiss!25322 rules!3598 (tag!6768 (rule!8798 token!544))))))

(assert (=> b!3695668 (= (get!13028 lt!1293613) (get!13028 (getRuleFromTag!1500 thiss!25322 lt!1293609 (tag!6768 (rule!8798 token!544)))))))

(declare-fun lt!1293612 () Unit!57204)

(declare-fun lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!4 (LexerInterface!5533 List!39338 Rule!11688 String!44204) Unit!57204)

(assert (=> b!3695668 (= lt!1293612 (lemmaGetRuleFromTagInListThenSameListWhenAddingARuleDiffTag!4 thiss!25322 (t!301673 rules!3598) (h!44634 rules!3598) (tag!6768 (rule!8798 token!544))))))

(declare-fun b!3695669 () Bool)

(declare-fun res!1502758 () Bool)

(assert (=> b!3695669 (=> (not res!1502758) (not e!2288605))))

(declare-fun lt!1293611 () Option!8468)

(assert (=> b!3695669 (= res!1502758 (= (_1!22682 (get!13029 lt!1293611)) token!544))))

(declare-fun tp!1123261 () Bool)

(declare-fun b!3695670 () Bool)

(declare-fun inv!52697 (String!44204) Bool)

(declare-fun inv!52700 (TokenValueInjection!11776) Bool)

(assert (=> b!3695670 (= e!2288596 (and tp!1123261 (inv!52697 (tag!6768 (rule!8798 token!544))) (inv!52700 (transformation!5944 (rule!8798 token!544))) e!2288607))))

(declare-fun b!3695671 () Bool)

(declare-fun res!1502752 () Bool)

(declare-fun e!2288603 () Bool)

(assert (=> b!3695671 (=> (not res!1502752) (not e!2288603))))

(assert (=> b!3695671 (= res!1502752 (not (isEmpty!23364 rules!3598)))))

(declare-fun b!3695672 () Bool)

(declare-fun res!1502756 () Bool)

(assert (=> b!3695672 (=> (not res!1502756) (not e!2288605))))

(get-info :version)

(assert (=> b!3695672 (= res!1502756 ((_ is Cons!39214) rules!3598))))

(declare-fun e!2288610 () Bool)

(assert (=> b!3695673 (= e!2288610 (and tp!1123265 tp!1123266))))

(declare-fun b!3695674 () Bool)

(declare-fun tp!1123262 () Bool)

(declare-fun e!2288604 () Bool)

(assert (=> b!3695674 (= e!2288604 (and tp!1123262 (inv!52697 (tag!6768 (h!44634 rules!3598))) (inv!52700 (transformation!5944 (h!44634 rules!3598))) e!2288610))))

(declare-fun b!3695675 () Bool)

(assert (=> b!3695675 (= e!2288603 e!2288605)))

(declare-fun res!1502754 () Bool)

(assert (=> b!3695675 (=> (not res!1502754) (not e!2288605))))

(assert (=> b!3695675 (= res!1502754 (isDefined!6659 lt!1293611))))

(declare-fun maxPrefix!3055 (LexerInterface!5533 List!39338 List!39337) Option!8468)

(assert (=> b!3695675 (= lt!1293611 (maxPrefix!3055 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3695676 () Bool)

(declare-fun e!2288595 () Bool)

(declare-fun tp!1123268 () Bool)

(assert (=> b!3695676 (= e!2288595 (and e!2288604 tp!1123268))))

(declare-fun res!1502757 () Bool)

(assert (=> start!347990 (=> (not res!1502757) (not e!2288603))))

(assert (=> start!347990 (= res!1502757 ((_ is Lexer!5531) thiss!25322))))

(assert (=> start!347990 e!2288603))

(assert (=> start!347990 true))

(assert (=> start!347990 e!2288595))

(declare-fun inv!52701 (Token!11242) Bool)

(assert (=> start!347990 (and (inv!52701 token!544) e!2288597)))

(assert (=> start!347990 e!2288600))

(declare-fun b!3695667 () Bool)

(declare-fun res!1502763 () Bool)

(assert (=> b!3695667 (=> (not res!1502763) (not e!2288603))))

(assert (=> b!3695667 (= res!1502763 (rulesInvariant!4930 thiss!25322 rules!3598))))

(assert (= (and start!347990 res!1502757) b!3695667))

(assert (= (and b!3695667 res!1502763) b!3695671))

(assert (= (and b!3695671 res!1502752) b!3695675))

(assert (= (and b!3695675 res!1502754) b!3695669))

(assert (= (and b!3695669 res!1502758) b!3695672))

(assert (= (and b!3695672 res!1502756) b!3695666))

(assert (= (and b!3695666 (not res!1502759)) b!3695665))

(assert (= (and b!3695666 res!1502760) b!3695664))

(assert (= (and b!3695664 res!1502761) b!3695659))

(assert (= (and b!3695659 res!1502753) b!3695661))

(assert (= (and b!3695661 res!1502751) b!3695660))

(assert (= (and b!3695659 (not res!1502755)) b!3695658))

(assert (= (and b!3695658 (not res!1502762)) b!3695668))

(assert (= b!3695674 b!3695673))

(assert (= b!3695676 b!3695674))

(assert (= (and start!347990 ((_ is Cons!39214) rules!3598)) b!3695676))

(assert (= b!3695670 b!3695662))

(assert (= b!3695657 b!3695670))

(assert (= start!347990 b!3695657))

(assert (= (and start!347990 ((_ is Cons!39213) input!3172)) b!3695663))

(declare-fun m!4207411 () Bool)

(assert (=> b!3695661 m!4207411))

(assert (=> b!3695661 m!4207411))

(declare-fun m!4207413 () Bool)

(assert (=> b!3695661 m!4207413))

(assert (=> b!3695661 m!4207413))

(declare-fun m!4207415 () Bool)

(assert (=> b!3695661 m!4207415))

(declare-fun m!4207417 () Bool)

(assert (=> b!3695661 m!4207417))

(declare-fun m!4207419 () Bool)

(assert (=> b!3695668 m!4207419))

(declare-fun m!4207421 () Bool)

(assert (=> b!3695668 m!4207421))

(assert (=> b!3695668 m!4207417))

(declare-fun m!4207423 () Bool)

(assert (=> b!3695668 m!4207423))

(assert (=> b!3695668 m!4207419))

(declare-fun m!4207425 () Bool)

(assert (=> b!3695668 m!4207425))

(declare-fun m!4207427 () Bool)

(assert (=> b!3695657 m!4207427))

(declare-fun m!4207429 () Bool)

(assert (=> b!3695666 m!4207429))

(declare-fun m!4207431 () Bool)

(assert (=> b!3695666 m!4207431))

(declare-fun m!4207433 () Bool)

(assert (=> b!3695670 m!4207433))

(declare-fun m!4207435 () Bool)

(assert (=> b!3695670 m!4207435))

(declare-fun m!4207437 () Bool)

(assert (=> b!3695674 m!4207437))

(declare-fun m!4207439 () Bool)

(assert (=> b!3695674 m!4207439))

(declare-fun m!4207441 () Bool)

(assert (=> b!3695664 m!4207441))

(declare-fun m!4207443 () Bool)

(assert (=> b!3695665 m!4207443))

(declare-fun m!4207445 () Bool)

(assert (=> b!3695659 m!4207445))

(declare-fun m!4207447 () Bool)

(assert (=> b!3695659 m!4207447))

(declare-fun m!4207449 () Bool)

(assert (=> b!3695659 m!4207449))

(declare-fun m!4207451 () Bool)

(assert (=> b!3695659 m!4207451))

(declare-fun m!4207453 () Bool)

(assert (=> b!3695659 m!4207453))

(declare-fun m!4207455 () Bool)

(assert (=> b!3695659 m!4207455))

(declare-fun m!4207457 () Bool)

(assert (=> b!3695671 m!4207457))

(declare-fun m!4207459 () Bool)

(assert (=> b!3695675 m!4207459))

(declare-fun m!4207461 () Bool)

(assert (=> b!3695675 m!4207461))

(declare-fun m!4207463 () Bool)

(assert (=> start!347990 m!4207463))

(declare-fun m!4207465 () Bool)

(assert (=> b!3695669 m!4207465))

(declare-fun m!4207467 () Bool)

(assert (=> b!3695667 m!4207467))

(check-sat (not b_next!98991) (not b!3695671) (not b!3695659) (not b!3695665) b_and!276203 (not b!3695663) (not b!3695670) tp_is_empty!18481 (not b!3695667) (not b!3695669) b_and!276209 (not b!3695675) (not b_next!98987) b_and!276205 b_and!276207 (not start!347990) (not b!3695657) (not b!3695668) (not b!3695664) (not b!3695674) (not b!3695676) (not b!3695661) (not b_next!98985) (not b!3695666) (not b_next!98989))
(check-sat (not b_next!98991) b_and!276209 b_and!276203 b_and!276207 (not b_next!98987) b_and!276205 (not b_next!98985) (not b_next!98989))
