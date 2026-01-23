; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129856 () Bool)

(assert start!129856)

(declare-fun b!1415502 () Bool)

(declare-fun e!903610 () Bool)

(declare-fun e!903612 () Bool)

(assert (=> b!1415502 (= e!903610 e!903612)))

(declare-fun res!640975 () Bool)

(assert (=> b!1415502 (=> (not res!640975) (not e!903612))))

(declare-datatypes ((List!14549 0))(
  ( (Nil!14483) (Cons!14483 (h!19884 (_ BitVec 16)) (t!123994 List!14549)) )
))
(declare-datatypes ((TokenValue!2609 0))(
  ( (FloatLiteralValue!5218 (text!18708 List!14549)) (TokenValueExt!2608 (__x!9033 Int)) (Broken!13045 (value!81398 List!14549)) (Object!2674) (End!2609) (Def!2609) (Underscore!2609) (Match!2609) (Else!2609) (Error!2609) (Case!2609) (If!2609) (Extends!2609) (Abstract!2609) (Class!2609) (Val!2609) (DelimiterValue!5218 (del!2669 List!14549)) (KeywordValue!2615 (value!81399 List!14549)) (CommentValue!5218 (value!81400 List!14549)) (WhitespaceValue!5218 (value!81401 List!14549)) (IndentationValue!2609 (value!81402 List!14549)) (String!17280) (Int32!2609) (Broken!13046 (value!81403 List!14549)) (Boolean!2610) (Unit!21299) (OperatorValue!2612 (op!2669 List!14549)) (IdentifierValue!5218 (value!81404 List!14549)) (IdentifierValue!5219 (value!81405 List!14549)) (WhitespaceValue!5219 (value!81406 List!14549)) (True!5218) (False!5218) (Broken!13047 (value!81407 List!14549)) (Broken!13048 (value!81408 List!14549)) (True!5219) (RightBrace!2609) (RightBracket!2609) (Colon!2609) (Null!2609) (Comma!2609) (LeftBracket!2609) (False!5219) (LeftBrace!2609) (ImaginaryLiteralValue!2609 (text!18709 List!14549)) (StringLiteralValue!7827 (value!81409 List!14549)) (EOFValue!2609 (value!81410 List!14549)) (IdentValue!2609 (value!81411 List!14549)) (DelimiterValue!5219 (value!81412 List!14549)) (DedentValue!2609 (value!81413 List!14549)) (NewLineValue!2609 (value!81414 List!14549)) (IntegerValue!7827 (value!81415 (_ BitVec 32)) (text!18710 List!14549)) (IntegerValue!7828 (value!81416 Int) (text!18711 List!14549)) (Times!2609) (Or!2609) (Equal!2609) (Minus!2609) (Broken!13049 (value!81417 List!14549)) (And!2609) (Div!2609) (LessEqual!2609) (Mod!2609) (Concat!6442) (Not!2609) (Plus!2609) (SpaceValue!2609 (value!81418 List!14549)) (IntegerValue!7829 (value!81419 Int) (text!18712 List!14549)) (StringLiteralValue!7828 (text!18713 List!14549)) (FloatLiteralValue!5219 (text!18714 List!14549)) (BytesLiteralValue!2609 (value!81420 List!14549)) (CommentValue!5219 (value!81421 List!14549)) (StringLiteralValue!7829 (value!81422 List!14549)) (ErrorTokenValue!2609 (msg!2670 List!14549)) )
))
(declare-datatypes ((Regex!3833 0))(
  ( (ElementMatch!3833 (c!232642 (_ BitVec 16))) (Concat!6443 (regOne!8178 Regex!3833) (regTwo!8178 Regex!3833)) (EmptyExpr!3833) (Star!3833 (reg!4162 Regex!3833)) (EmptyLang!3833) (Union!3833 (regOne!8179 Regex!3833) (regTwo!8179 Regex!3833)) )
))
(declare-datatypes ((String!17281 0))(
  ( (String!17282 (value!81423 String)) )
))
(declare-datatypes ((IArray!9667 0))(
  ( (IArray!9668 (innerList!4891 List!14549)) )
))
(declare-datatypes ((Conc!4831 0))(
  ( (Node!4831 (left!12376 Conc!4831) (right!12706 Conc!4831) (csize!9892 Int) (cheight!5042 Int)) (Leaf!7287 (xs!7558 IArray!9667) (csize!9893 Int)) (Empty!4831) )
))
(declare-datatypes ((BalanceConc!9602 0))(
  ( (BalanceConc!9603 (c!232643 Conc!4831)) )
))
(declare-datatypes ((TokenValueInjection!4878 0))(
  ( (TokenValueInjection!4879 (toValue!3818 Int) (toChars!3677 Int)) )
))
(declare-datatypes ((Rule!4838 0))(
  ( (Rule!4839 (regex!2519 Regex!3833) (tag!2781 String!17281) (isSeparator!2519 Bool) (transformation!2519 TokenValueInjection!4878)) )
))
(declare-datatypes ((Token!4700 0))(
  ( (Token!4701 (value!81424 TokenValue!2609) (rule!4282 Rule!4838) (size!11947 Int) (originalCharacters!3381 List!14549)) )
))
(declare-datatypes ((List!14550 0))(
  ( (Nil!14484) (Cons!14484 (h!19885 Token!4700) (t!123995 List!14550)) )
))
(declare-datatypes ((IArray!9669 0))(
  ( (IArray!9670 (innerList!4892 List!14550)) )
))
(declare-datatypes ((Conc!4832 0))(
  ( (Node!4832 (left!12377 Conc!4832) (right!12707 Conc!4832) (csize!9894 Int) (cheight!5043 Int)) (Leaf!7288 (xs!7559 IArray!9669) (csize!9895 Int)) (Empty!4832) )
))
(declare-datatypes ((List!14551 0))(
  ( (Nil!14485) (Cons!14485 (h!19886 Rule!4838) (t!123996 List!14551)) )
))
(declare-datatypes ((BalanceConc!9604 0))(
  ( (BalanceConc!9605 (c!232644 Conc!4832)) )
))
(declare-datatypes ((PrintableTokens!820 0))(
  ( (PrintableTokens!821 (rules!11076 List!14551) (tokens!1794 BalanceConc!9604)) )
))
(declare-datatypes ((Option!2780 0))(
  ( (None!2779) (Some!2779 (v!22019 PrintableTokens!820)) )
))
(declare-fun lt!475834 () Option!2780)

(get-info :version)

(assert (=> b!1415502 (= res!640975 ((_ is Some!2779) lt!475834))))

(declare-datatypes ((List!14552 0))(
  ( (Nil!14486) (Cons!14486 (h!19887 PrintableTokens!820) (t!123997 List!14552)) )
))
(declare-datatypes ((IArray!9671 0))(
  ( (IArray!9672 (innerList!4893 List!14552)) )
))
(declare-datatypes ((Conc!4833 0))(
  ( (Node!4833 (left!12378 Conc!4833) (right!12708 Conc!4833) (csize!9896 Int) (cheight!5044 Int)) (Leaf!7289 (xs!7560 IArray!9671) (csize!9897 Int)) (Empty!4833) )
))
(declare-datatypes ((BalanceConc!9606 0))(
  ( (BalanceConc!9607 (c!232645 Conc!4833)) )
))
(declare-fun objs!24 () BalanceConc!9606)

(declare-fun sep!3 () PrintableTokens!820)

(declare-fun append!438 (PrintableTokens!820 PrintableTokens!820) Option!2780)

(declare-fun head!2723 (BalanceConc!9606) PrintableTokens!820)

(assert (=> b!1415502 (= lt!475834 (append!438 (head!2723 objs!24) sep!3))))

(declare-fun acc!229 () PrintableTokens!820)

(declare-fun tp!401588 () Bool)

(declare-fun b!1415503 () Bool)

(declare-fun e!903611 () Bool)

(declare-fun e!903615 () Bool)

(declare-fun inv!19005 (BalanceConc!9604) Bool)

(assert (=> b!1415503 (= e!903615 (and tp!401588 (inv!19005 (tokens!1794 acc!229)) e!903611))))

(declare-fun b!1415504 () Bool)

(declare-fun res!640973 () Bool)

(assert (=> b!1415504 (=> (not res!640973) (not e!903610))))

(declare-fun usesJsonRules!0 (PrintableTokens!820) Bool)

(assert (=> b!1415504 (= res!640973 (usesJsonRules!0 acc!229))))

(declare-fun b!1415505 () Bool)

(declare-fun res!640972 () Bool)

(assert (=> b!1415505 (=> (not res!640972) (not e!903610))))

(assert (=> b!1415505 (= res!640972 (usesJsonRules!0 sep!3))))

(declare-fun b!1415506 () Bool)

(declare-fun e!903614 () Bool)

(declare-fun tp!401587 () Bool)

(declare-fun inv!19006 (Conc!4833) Bool)

(assert (=> b!1415506 (= e!903614 (and (inv!19006 (c!232645 objs!24)) tp!401587))))

(declare-fun res!640974 () Bool)

(assert (=> start!129856 (=> (not res!640974) (not e!903610))))

(declare-fun lambda!62527 () Int)

(declare-fun forall!3575 (BalanceConc!9606 Int) Bool)

(assert (=> start!129856 (= res!640974 (forall!3575 objs!24 lambda!62527))))

(assert (=> start!129856 e!903610))

(declare-fun inv!19007 (BalanceConc!9606) Bool)

(assert (=> start!129856 (and (inv!19007 objs!24) e!903614)))

(declare-fun inv!19008 (PrintableTokens!820) Bool)

(assert (=> start!129856 (and (inv!19008 acc!229) e!903615)))

(declare-fun e!903613 () Bool)

(assert (=> start!129856 (and (inv!19008 sep!3) e!903613)))

(declare-fun b!1415507 () Bool)

(declare-fun e!903609 () Bool)

(declare-fun tp!401589 () Bool)

(declare-fun inv!19009 (Conc!4832) Bool)

(assert (=> b!1415507 (= e!903609 (and (inv!19009 (c!232644 (tokens!1794 sep!3))) tp!401589))))

(declare-fun b!1415508 () Bool)

(declare-fun res!640971 () Bool)

(assert (=> b!1415508 (=> (not res!640971) (not e!903610))))

(declare-fun isEmpty!8882 (BalanceConc!9606) Bool)

(assert (=> b!1415508 (= res!640971 (not (isEmpty!8882 objs!24)))))

(declare-fun b!1415509 () Bool)

(assert (=> b!1415509 (= e!903612 false)))

(declare-fun b!1415510 () Bool)

(declare-fun tp!401590 () Bool)

(assert (=> b!1415510 (= e!903613 (and tp!401590 (inv!19005 (tokens!1794 sep!3)) e!903609))))

(declare-fun b!1415511 () Bool)

(declare-fun res!640976 () Bool)

(assert (=> b!1415511 (=> (not res!640976) (not e!903610))))

(declare-fun size!11948 (BalanceConc!9606) Int)

(assert (=> b!1415511 (= res!640976 (not (= (size!11948 objs!24) 1)))))

(declare-fun b!1415512 () Bool)

(declare-fun res!640977 () Bool)

(assert (=> b!1415512 (=> (not res!640977) (not e!903612))))

(assert (=> b!1415512 (= res!640977 (not ((_ is Some!2779) (append!438 acc!229 (v!22019 lt!475834)))))))

(declare-fun b!1415513 () Bool)

(declare-fun tp!401586 () Bool)

(assert (=> b!1415513 (= e!903611 (and (inv!19009 (c!232644 (tokens!1794 acc!229))) tp!401586))))

(assert (= (and start!129856 res!640974) b!1415504))

(assert (= (and b!1415504 res!640973) b!1415505))

(assert (= (and b!1415505 res!640972) b!1415508))

(assert (= (and b!1415508 res!640971) b!1415511))

(assert (= (and b!1415511 res!640976) b!1415502))

(assert (= (and b!1415502 res!640975) b!1415512))

(assert (= (and b!1415512 res!640977) b!1415509))

(assert (= start!129856 b!1415506))

(assert (= b!1415503 b!1415513))

(assert (= start!129856 b!1415503))

(assert (= b!1415510 b!1415507))

(assert (= start!129856 b!1415510))

(declare-fun m!1600415 () Bool)

(assert (=> b!1415513 m!1600415))

(declare-fun m!1600417 () Bool)

(assert (=> b!1415507 m!1600417))

(declare-fun m!1600419 () Bool)

(assert (=> b!1415505 m!1600419))

(declare-fun m!1600421 () Bool)

(assert (=> b!1415511 m!1600421))

(declare-fun m!1600423 () Bool)

(assert (=> b!1415508 m!1600423))

(declare-fun m!1600425 () Bool)

(assert (=> b!1415503 m!1600425))

(declare-fun m!1600427 () Bool)

(assert (=> b!1415512 m!1600427))

(declare-fun m!1600429 () Bool)

(assert (=> b!1415506 m!1600429))

(declare-fun m!1600431 () Bool)

(assert (=> b!1415510 m!1600431))

(declare-fun m!1600433 () Bool)

(assert (=> b!1415502 m!1600433))

(assert (=> b!1415502 m!1600433))

(declare-fun m!1600435 () Bool)

(assert (=> b!1415502 m!1600435))

(declare-fun m!1600437 () Bool)

(assert (=> start!129856 m!1600437))

(declare-fun m!1600439 () Bool)

(assert (=> start!129856 m!1600439))

(declare-fun m!1600441 () Bool)

(assert (=> start!129856 m!1600441))

(declare-fun m!1600443 () Bool)

(assert (=> start!129856 m!1600443))

(declare-fun m!1600445 () Bool)

(assert (=> b!1415504 m!1600445))

(check-sat (not b!1415506) (not start!129856) (not b!1415504) (not b!1415503) (not b!1415505) (not b!1415510) (not b!1415508) (not b!1415511) (not b!1415513) (not b!1415507) (not b!1415502) (not b!1415512))
(check-sat)
