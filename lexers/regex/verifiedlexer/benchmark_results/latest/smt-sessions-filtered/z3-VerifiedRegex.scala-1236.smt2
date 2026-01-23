; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64572 () Bool)

(assert start!64572)

(declare-fun b!660522 () Bool)

(declare-fun res!293150 () Bool)

(declare-fun e!408507 () Bool)

(assert (=> b!660522 (=> (not res!293150) (not e!408507))))

(declare-datatypes ((List!7162 0))(
  ( (Nil!7148) (Cons!7148 (h!12549 (_ BitVec 16)) (t!86234 List!7162)) )
))
(declare-datatypes ((TokenValue!1476 0))(
  ( (FloatLiteralValue!2952 (text!10777 List!7162)) (TokenValueExt!1475 (__x!5057 Int)) (Broken!7380 (value!46222 List!7162)) (Object!1489) (End!1476) (Def!1476) (Underscore!1476) (Match!1476) (Else!1476) (Error!1476) (Case!1476) (If!1476) (Extends!1476) (Abstract!1476) (Class!1476) (Val!1476) (DelimiterValue!2952 (del!1536 List!7162)) (KeywordValue!1482 (value!46223 List!7162)) (CommentValue!2952 (value!46224 List!7162)) (WhitespaceValue!2952 (value!46225 List!7162)) (IndentationValue!1476 (value!46226 List!7162)) (String!9117) (Int32!1476) (Broken!7381 (value!46227 List!7162)) (Boolean!1477) (Unit!12422) (OperatorValue!1479 (op!1536 List!7162)) (IdentifierValue!2952 (value!46228 List!7162)) (IdentifierValue!2953 (value!46229 List!7162)) (WhitespaceValue!2953 (value!46230 List!7162)) (True!2952) (False!2952) (Broken!7382 (value!46231 List!7162)) (Broken!7383 (value!46232 List!7162)) (True!2953) (RightBrace!1476) (RightBracket!1476) (Colon!1476) (Null!1476) (Comma!1476) (LeftBracket!1476) (False!2953) (LeftBrace!1476) (ImaginaryLiteralValue!1476 (text!10778 List!7162)) (StringLiteralValue!4428 (value!46233 List!7162)) (EOFValue!1476 (value!46234 List!7162)) (IdentValue!1476 (value!46235 List!7162)) (DelimiterValue!2953 (value!46236 List!7162)) (DedentValue!1476 (value!46237 List!7162)) (NewLineValue!1476 (value!46238 List!7162)) (IntegerValue!4428 (value!46239 (_ BitVec 32)) (text!10779 List!7162)) (IntegerValue!4429 (value!46240 Int) (text!10780 List!7162)) (Times!1476) (Or!1476) (Equal!1476) (Minus!1476) (Broken!7384 (value!46241 List!7162)) (And!1476) (Div!1476) (LessEqual!1476) (Mod!1476) (Concat!3253) (Not!1476) (Plus!1476) (SpaceValue!1476 (value!46242 List!7162)) (IntegerValue!4430 (value!46243 Int) (text!10781 List!7162)) (StringLiteralValue!4429 (text!10782 List!7162)) (FloatLiteralValue!2953 (text!10783 List!7162)) (BytesLiteralValue!1476 (value!46244 List!7162)) (CommentValue!2953 (value!46245 List!7162)) (StringLiteralValue!4430 (value!46246 List!7162)) (ErrorTokenValue!1476 (msg!1537 List!7162)) )
))
(declare-datatypes ((Regex!1777 0))(
  ( (ElementMatch!1777 (c!118913 (_ BitVec 16))) (Concat!3254 (regOne!4066 Regex!1777) (regTwo!4066 Regex!1777)) (EmptyExpr!1777) (Star!1777 (reg!2106 Regex!1777)) (EmptyLang!1777) (Union!1777 (regOne!4067 Regex!1777) (regTwo!4067 Regex!1777)) )
))
(declare-datatypes ((String!9118 0))(
  ( (String!9119 (value!46247 String)) )
))
(declare-datatypes ((IArray!5051 0))(
  ( (IArray!5052 (innerList!2583 List!7162)) )
))
(declare-datatypes ((Conc!2525 0))(
  ( (Node!2525 (left!5795 Conc!2525) (right!6125 Conc!2525) (csize!5280 Int) (cheight!2736 Int)) (Leaf!3762 (xs!5174 IArray!5051) (csize!5281 Int)) (Empty!2525) )
))
(declare-datatypes ((BalanceConc!5062 0))(
  ( (BalanceConc!5063 (c!118914 Conc!2525)) )
))
(declare-datatypes ((TokenValueInjection!2704 0))(
  ( (TokenValueInjection!2705 (toValue!2383 Int) (toChars!2242 Int)) )
))
(declare-datatypes ((Rule!2684 0))(
  ( (Rule!2685 (regex!1442 Regex!1777) (tag!1704 String!9118) (isSeparator!1442 Bool) (transformation!1442 TokenValueInjection!2704)) )
))
(declare-datatypes ((Token!2606 0))(
  ( (Token!2607 (value!46248 TokenValue!1476) (rule!2237 Rule!2684) (size!5678 Int) (originalCharacters!1474 List!7162)) )
))
(declare-datatypes ((List!7163 0))(
  ( (Nil!7149) (Cons!7149 (h!12550 Token!2606) (t!86235 List!7163)) )
))
(declare-datatypes ((IArray!5053 0))(
  ( (IArray!5054 (innerList!2584 List!7163)) )
))
(declare-datatypes ((Conc!2526 0))(
  ( (Node!2526 (left!5796 Conc!2526) (right!6126 Conc!2526) (csize!5282 Int) (cheight!2737 Int)) (Leaf!3763 (xs!5175 IArray!5053) (csize!5283 Int)) (Empty!2526) )
))
(declare-datatypes ((List!7164 0))(
  ( (Nil!7150) (Cons!7150 (h!12551 Rule!2684) (t!86236 List!7164)) )
))
(declare-datatypes ((BalanceConc!5064 0))(
  ( (BalanceConc!5065 (c!118915 Conc!2526)) )
))
(declare-datatypes ((PrintableTokens!188 0))(
  ( (PrintableTokens!189 (rules!8283 List!7164) (tokens!1261 BalanceConc!5064)) )
))
(declare-fun sepL!1 () PrintableTokens!188)

(declare-fun usesJsonRules!0 (PrintableTokens!188) Bool)

(assert (=> b!660522 (= res!293150 (usesJsonRules!0 sepL!1))))

(declare-fun b!660523 () Bool)

(declare-fun e!408505 () Bool)

(declare-fun sepR!1 () PrintableTokens!188)

(declare-fun tp!201384 () Bool)

(declare-fun inv!9167 (Conc!2526) Bool)

(assert (=> b!660523 (= e!408505 (and (inv!9167 (c!118915 (tokens!1261 sepR!1))) tp!201384))))

(declare-fun b!660524 () Bool)

(declare-fun e!408509 () Bool)

(assert (=> b!660524 (= e!408507 e!408509)))

(declare-fun res!293152 () Bool)

(assert (=> b!660524 (=> (not res!293152) (not e!408509))))

(declare-datatypes ((Option!1685 0))(
  ( (None!1684) (Some!1684 (v!17326 PrintableTokens!188)) )
))
(declare-fun lt!281554 () Option!1685)

(get-info :version)

(assert (=> b!660524 (= res!293152 ((_ is Some!1684) lt!281554))))

(declare-fun objs!31 () PrintableTokens!188)

(declare-fun append!266 (PrintableTokens!188 PrintableTokens!188) Option!1685)

(assert (=> b!660524 (= lt!281554 (append!266 sepL!1 objs!31))))

(declare-fun b!660525 () Bool)

(declare-fun e!408508 () Bool)

(declare-fun tp!201386 () Bool)

(assert (=> b!660525 (= e!408508 (and (inv!9167 (c!118915 (tokens!1261 objs!31))) tp!201386))))

(declare-fun b!660526 () Bool)

(declare-fun e!408504 () Bool)

(declare-fun tp!201387 () Bool)

(assert (=> b!660526 (= e!408504 (and (inv!9167 (c!118915 (tokens!1261 sepL!1))) tp!201387))))

(declare-fun b!660527 () Bool)

(declare-fun res!293151 () Bool)

(assert (=> b!660527 (=> (not res!293151) (not e!408507))))

(assert (=> b!660527 (= res!293151 (usesJsonRules!0 sepR!1))))

(declare-fun res!293149 () Bool)

(assert (=> start!64572 (=> (not res!293149) (not e!408507))))

(assert (=> start!64572 (= res!293149 (usesJsonRules!0 objs!31))))

(assert (=> start!64572 e!408507))

(declare-fun e!408506 () Bool)

(declare-fun inv!9168 (PrintableTokens!188) Bool)

(assert (=> start!64572 (and (inv!9168 objs!31) e!408506)))

(declare-fun e!408510 () Bool)

(assert (=> start!64572 (and (inv!9168 sepL!1) e!408510)))

(declare-fun e!408503 () Bool)

(assert (=> start!64572 (and (inv!9168 sepR!1) e!408503)))

(declare-fun b!660528 () Bool)

(assert (=> b!660528 (= e!408509 false)))

(declare-fun lt!281555 () Option!1685)

(assert (=> b!660528 (= lt!281555 (append!266 (v!17326 lt!281554) sepR!1))))

(declare-fun tp!201383 () Bool)

(declare-fun b!660529 () Bool)

(declare-fun inv!9169 (BalanceConc!5064) Bool)

(assert (=> b!660529 (= e!408506 (and tp!201383 (inv!9169 (tokens!1261 objs!31)) e!408508))))

(declare-fun tp!201388 () Bool)

(declare-fun b!660530 () Bool)

(assert (=> b!660530 (= e!408510 (and tp!201388 (inv!9169 (tokens!1261 sepL!1)) e!408504))))

(declare-fun b!660531 () Bool)

(declare-fun tp!201385 () Bool)

(assert (=> b!660531 (= e!408503 (and tp!201385 (inv!9169 (tokens!1261 sepR!1)) e!408505))))

(assert (= (and start!64572 res!293149) b!660522))

(assert (= (and b!660522 res!293150) b!660527))

(assert (= (and b!660527 res!293151) b!660524))

(assert (= (and b!660524 res!293152) b!660528))

(assert (= b!660529 b!660525))

(assert (= start!64572 b!660529))

(assert (= b!660530 b!660526))

(assert (= start!64572 b!660530))

(assert (= b!660531 b!660523))

(assert (= start!64572 b!660531))

(declare-fun m!926667 () Bool)

(assert (=> b!660523 m!926667))

(declare-fun m!926669 () Bool)

(assert (=> start!64572 m!926669))

(declare-fun m!926671 () Bool)

(assert (=> start!64572 m!926671))

(declare-fun m!926673 () Bool)

(assert (=> start!64572 m!926673))

(declare-fun m!926675 () Bool)

(assert (=> start!64572 m!926675))

(declare-fun m!926677 () Bool)

(assert (=> b!660524 m!926677))

(declare-fun m!926679 () Bool)

(assert (=> b!660530 m!926679))

(declare-fun m!926681 () Bool)

(assert (=> b!660526 m!926681))

(declare-fun m!926683 () Bool)

(assert (=> b!660531 m!926683))

(declare-fun m!926685 () Bool)

(assert (=> b!660528 m!926685))

(declare-fun m!926687 () Bool)

(assert (=> b!660522 m!926687))

(declare-fun m!926689 () Bool)

(assert (=> b!660529 m!926689))

(declare-fun m!926691 () Bool)

(assert (=> b!660527 m!926691))

(declare-fun m!926693 () Bool)

(assert (=> b!660525 m!926693))

(check-sat (not b!660525) (not b!660530) (not b!660522) (not start!64572) (not b!660523) (not b!660524) (not b!660529) (not b!660531) (not b!660526) (not b!660528) (not b!660527))
(check-sat)
