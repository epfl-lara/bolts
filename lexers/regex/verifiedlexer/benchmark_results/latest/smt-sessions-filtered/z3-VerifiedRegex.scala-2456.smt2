; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129860 () Bool)

(assert start!129860)

(declare-fun b!1415569 () Bool)

(declare-fun e!903650 () Bool)

(declare-datatypes ((List!14557 0))(
  ( (Nil!14491) (Cons!14491 (h!19892 (_ BitVec 16)) (t!124002 List!14557)) )
))
(declare-datatypes ((TokenValue!2611 0))(
  ( (FloatLiteralValue!5222 (text!18722 List!14557)) (TokenValueExt!2610 (__x!9035 Int)) (Broken!13055 (value!81455 List!14557)) (Object!2676) (End!2611) (Def!2611) (Underscore!2611) (Match!2611) (Else!2611) (Error!2611) (Case!2611) (If!2611) (Extends!2611) (Abstract!2611) (Class!2611) (Val!2611) (DelimiterValue!5222 (del!2671 List!14557)) (KeywordValue!2617 (value!81456 List!14557)) (CommentValue!5222 (value!81457 List!14557)) (WhitespaceValue!5222 (value!81458 List!14557)) (IndentationValue!2611 (value!81459 List!14557)) (String!17290) (Int32!2611) (Broken!13056 (value!81460 List!14557)) (Boolean!2612) (Unit!21301) (OperatorValue!2614 (op!2671 List!14557)) (IdentifierValue!5222 (value!81461 List!14557)) (IdentifierValue!5223 (value!81462 List!14557)) (WhitespaceValue!5223 (value!81463 List!14557)) (True!5222) (False!5222) (Broken!13057 (value!81464 List!14557)) (Broken!13058 (value!81465 List!14557)) (True!5223) (RightBrace!2611) (RightBracket!2611) (Colon!2611) (Null!2611) (Comma!2611) (LeftBracket!2611) (False!5223) (LeftBrace!2611) (ImaginaryLiteralValue!2611 (text!18723 List!14557)) (StringLiteralValue!7833 (value!81466 List!14557)) (EOFValue!2611 (value!81467 List!14557)) (IdentValue!2611 (value!81468 List!14557)) (DelimiterValue!5223 (value!81469 List!14557)) (DedentValue!2611 (value!81470 List!14557)) (NewLineValue!2611 (value!81471 List!14557)) (IntegerValue!7833 (value!81472 (_ BitVec 32)) (text!18724 List!14557)) (IntegerValue!7834 (value!81473 Int) (text!18725 List!14557)) (Times!2611) (Or!2611) (Equal!2611) (Minus!2611) (Broken!13059 (value!81474 List!14557)) (And!2611) (Div!2611) (LessEqual!2611) (Mod!2611) (Concat!6446) (Not!2611) (Plus!2611) (SpaceValue!2611 (value!81475 List!14557)) (IntegerValue!7835 (value!81476 Int) (text!18726 List!14557)) (StringLiteralValue!7834 (text!18727 List!14557)) (FloatLiteralValue!5223 (text!18728 List!14557)) (BytesLiteralValue!2611 (value!81477 List!14557)) (CommentValue!5223 (value!81478 List!14557)) (StringLiteralValue!7835 (value!81479 List!14557)) (ErrorTokenValue!2611 (msg!2672 List!14557)) )
))
(declare-datatypes ((Regex!3835 0))(
  ( (ElementMatch!3835 (c!232650 (_ BitVec 16))) (Concat!6447 (regOne!8182 Regex!3835) (regTwo!8182 Regex!3835)) (EmptyExpr!3835) (Star!3835 (reg!4164 Regex!3835)) (EmptyLang!3835) (Union!3835 (regOne!8183 Regex!3835) (regTwo!8183 Regex!3835)) )
))
(declare-datatypes ((String!17291 0))(
  ( (String!17292 (value!81480 String)) )
))
(declare-datatypes ((IArray!9679 0))(
  ( (IArray!9680 (innerList!4897 List!14557)) )
))
(declare-datatypes ((Conc!4837 0))(
  ( (Node!4837 (left!12383 Conc!4837) (right!12713 Conc!4837) (csize!9904 Int) (cheight!5048 Int)) (Leaf!7294 (xs!7564 IArray!9679) (csize!9905 Int)) (Empty!4837) )
))
(declare-datatypes ((BalanceConc!9614 0))(
  ( (BalanceConc!9615 (c!232651 Conc!4837)) )
))
(declare-datatypes ((TokenValueInjection!4882 0))(
  ( (TokenValueInjection!4883 (toValue!3820 Int) (toChars!3679 Int)) )
))
(declare-datatypes ((Rule!4842 0))(
  ( (Rule!4843 (regex!2521 Regex!3835) (tag!2783 String!17291) (isSeparator!2521 Bool) (transformation!2521 TokenValueInjection!4882)) )
))
(declare-datatypes ((Token!4704 0))(
  ( (Token!4705 (value!81481 TokenValue!2611) (rule!4284 Rule!4842) (size!11951 Int) (originalCharacters!3383 List!14557)) )
))
(declare-datatypes ((List!14558 0))(
  ( (Nil!14492) (Cons!14492 (h!19893 Token!4704) (t!124003 List!14558)) )
))
(declare-datatypes ((IArray!9681 0))(
  ( (IArray!9682 (innerList!4898 List!14558)) )
))
(declare-datatypes ((Conc!4838 0))(
  ( (Node!4838 (left!12384 Conc!4838) (right!12714 Conc!4838) (csize!9906 Int) (cheight!5049 Int)) (Leaf!7295 (xs!7565 IArray!9681) (csize!9907 Int)) (Empty!4838) )
))
(declare-datatypes ((List!14559 0))(
  ( (Nil!14493) (Cons!14493 (h!19894 Rule!4842) (t!124004 List!14559)) )
))
(declare-datatypes ((BalanceConc!9616 0))(
  ( (BalanceConc!9617 (c!232652 Conc!4838)) )
))
(declare-datatypes ((PrintableTokens!824 0))(
  ( (PrintableTokens!825 (rules!11078 List!14559) (tokens!1796 BalanceConc!9616)) )
))
(declare-datatypes ((List!14560 0))(
  ( (Nil!14494) (Cons!14494 (h!19895 PrintableTokens!824) (t!124005 List!14560)) )
))
(declare-datatypes ((IArray!9683 0))(
  ( (IArray!9684 (innerList!4899 List!14560)) )
))
(declare-datatypes ((Conc!4839 0))(
  ( (Node!4839 (left!12385 Conc!4839) (right!12715 Conc!4839) (csize!9908 Int) (cheight!5050 Int)) (Leaf!7296 (xs!7566 IArray!9683) (csize!9909 Int)) (Empty!4839) )
))
(declare-datatypes ((BalanceConc!9618 0))(
  ( (BalanceConc!9619 (c!232653 Conc!4839)) )
))
(declare-fun objs!24 () BalanceConc!9618)

(declare-fun tp!401616 () Bool)

(declare-fun inv!19018 (Conc!4839) Bool)

(assert (=> b!1415569 (= e!903650 (and (inv!19018 (c!232653 objs!24)) tp!401616))))

(declare-fun res!641013 () Bool)

(declare-fun e!903651 () Bool)

(assert (=> start!129860 (=> (not res!641013) (not e!903651))))

(declare-fun lambda!62533 () Int)

(declare-fun forall!3577 (BalanceConc!9618 Int) Bool)

(assert (=> start!129860 (= res!641013 (forall!3577 objs!24 lambda!62533))))

(assert (=> start!129860 e!903651))

(declare-fun inv!19019 (BalanceConc!9618) Bool)

(assert (=> start!129860 (and (inv!19019 objs!24) e!903650)))

(declare-fun acc!229 () PrintableTokens!824)

(declare-fun e!903648 () Bool)

(declare-fun inv!19020 (PrintableTokens!824) Bool)

(assert (=> start!129860 (and (inv!19020 acc!229) e!903648)))

(declare-fun sep!3 () PrintableTokens!824)

(declare-fun e!903647 () Bool)

(assert (=> start!129860 (and (inv!19020 sep!3) e!903647)))

(declare-fun b!1415570 () Bool)

(declare-fun res!641011 () Bool)

(assert (=> b!1415570 (=> (not res!641011) (not e!903651))))

(declare-fun isEmpty!8884 (BalanceConc!9618) Bool)

(assert (=> b!1415570 (= res!641011 (not (isEmpty!8884 objs!24)))))

(declare-fun b!1415571 () Bool)

(declare-fun e!903649 () Bool)

(declare-fun tp!401620 () Bool)

(declare-fun inv!19021 (Conc!4838) Bool)

(assert (=> b!1415571 (= e!903649 (and (inv!19021 (c!232652 (tokens!1796 sep!3))) tp!401620))))

(declare-fun b!1415572 () Bool)

(declare-fun res!641009 () Bool)

(assert (=> b!1415572 (=> (not res!641009) (not e!903651))))

(declare-fun size!11952 (BalanceConc!9618) Int)

(assert (=> b!1415572 (= res!641009 (not (= (size!11952 objs!24) 1)))))

(declare-fun tp!401618 () Bool)

(declare-fun b!1415573 () Bool)

(declare-fun inv!19022 (BalanceConc!9616) Bool)

(assert (=> b!1415573 (= e!903647 (and tp!401618 (inv!19022 (tokens!1796 sep!3)) e!903649))))

(declare-fun b!1415574 () Bool)

(declare-fun res!641010 () Bool)

(assert (=> b!1415574 (=> (not res!641010) (not e!903651))))

(declare-fun usesJsonRules!0 (PrintableTokens!824) Bool)

(assert (=> b!1415574 (= res!641010 (usesJsonRules!0 sep!3))))

(declare-fun b!1415575 () Bool)

(declare-fun e!903646 () Bool)

(declare-fun tp!401617 () Bool)

(assert (=> b!1415575 (= e!903646 (and (inv!19021 (c!232652 (tokens!1796 acc!229))) tp!401617))))

(declare-fun b!1415576 () Bool)

(declare-fun tp!401619 () Bool)

(assert (=> b!1415576 (= e!903648 (and tp!401619 (inv!19022 (tokens!1796 acc!229)) e!903646))))

(declare-fun b!1415577 () Bool)

(declare-fun res!641012 () Bool)

(assert (=> b!1415577 (=> (not res!641012) (not e!903651))))

(get-info :version)

(declare-datatypes ((Option!2782 0))(
  ( (None!2781) (Some!2781 (v!22021 PrintableTokens!824)) )
))
(declare-fun append!440 (PrintableTokens!824 PrintableTokens!824) Option!2782)

(declare-fun head!2725 (BalanceConc!9618) PrintableTokens!824)

(assert (=> b!1415577 (= res!641012 (not ((_ is Some!2781) (append!440 (head!2725 objs!24) sep!3))))))

(declare-fun b!1415578 () Bool)

(assert (=> b!1415578 (= e!903651 false)))

(declare-fun b!1415579 () Bool)

(declare-fun res!641008 () Bool)

(assert (=> b!1415579 (=> (not res!641008) (not e!903651))))

(assert (=> b!1415579 (= res!641008 (usesJsonRules!0 acc!229))))

(assert (= (and start!129860 res!641013) b!1415579))

(assert (= (and b!1415579 res!641008) b!1415574))

(assert (= (and b!1415574 res!641010) b!1415570))

(assert (= (and b!1415570 res!641011) b!1415572))

(assert (= (and b!1415572 res!641009) b!1415577))

(assert (= (and b!1415577 res!641012) b!1415578))

(assert (= start!129860 b!1415569))

(assert (= b!1415576 b!1415575))

(assert (= start!129860 b!1415576))

(assert (= b!1415573 b!1415571))

(assert (= start!129860 b!1415573))

(declare-fun m!1600477 () Bool)

(assert (=> start!129860 m!1600477))

(declare-fun m!1600479 () Bool)

(assert (=> start!129860 m!1600479))

(declare-fun m!1600481 () Bool)

(assert (=> start!129860 m!1600481))

(declare-fun m!1600483 () Bool)

(assert (=> start!129860 m!1600483))

(declare-fun m!1600485 () Bool)

(assert (=> b!1415572 m!1600485))

(declare-fun m!1600487 () Bool)

(assert (=> b!1415571 m!1600487))

(declare-fun m!1600489 () Bool)

(assert (=> b!1415570 m!1600489))

(declare-fun m!1600491 () Bool)

(assert (=> b!1415579 m!1600491))

(declare-fun m!1600493 () Bool)

(assert (=> b!1415573 m!1600493))

(declare-fun m!1600495 () Bool)

(assert (=> b!1415576 m!1600495))

(declare-fun m!1600497 () Bool)

(assert (=> b!1415569 m!1600497))

(declare-fun m!1600499 () Bool)

(assert (=> b!1415574 m!1600499))

(declare-fun m!1600501 () Bool)

(assert (=> b!1415577 m!1600501))

(assert (=> b!1415577 m!1600501))

(declare-fun m!1600503 () Bool)

(assert (=> b!1415577 m!1600503))

(declare-fun m!1600505 () Bool)

(assert (=> b!1415575 m!1600505))

(check-sat (not b!1415569) (not b!1415573) (not b!1415579) (not b!1415574) (not b!1415577) (not b!1415575) (not start!129860) (not b!1415576) (not b!1415572) (not b!1415570) (not b!1415571))
(check-sat)
