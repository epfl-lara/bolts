; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!389902 () Bool)

(assert start!389902)

(declare-fun b!4114588 () Bool)

(declare-fun b_free!115883 () Bool)

(declare-fun b_next!116587 () Bool)

(assert (=> b!4114588 (= b_free!115883 (not b_next!116587))))

(declare-fun tp!1252953 () Bool)

(declare-fun b_and!317769 () Bool)

(assert (=> b!4114588 (= tp!1252953 b_and!317769)))

(declare-fun b_free!115885 () Bool)

(declare-fun b_next!116589 () Bool)

(assert (=> b!4114588 (= b_free!115885 (not b_next!116589))))

(declare-fun tp!1252954 () Bool)

(declare-fun b_and!317771 () Bool)

(assert (=> b!4114588 (= tp!1252954 b_and!317771)))

(declare-fun b!4114578 () Bool)

(declare-fun res!1680570 () Bool)

(declare-fun e!2552835 () Bool)

(assert (=> b!4114578 (=> (not res!1680570) (not e!2552835))))

(declare-datatypes ((String!51046 0))(
  ( (String!51047 (value!226572 String)) )
))
(declare-datatypes ((List!44516 0))(
  ( (Nil!44392) (Cons!44392 (h!49812 String!51046) (t!340267 List!44516)) )
))
(declare-fun lt!1468581 () List!44516)

(declare-datatypes ((List!44517 0))(
  ( (Nil!44393) (Cons!44393 (h!49813 (_ BitVec 16)) (t!340268 List!44517)) )
))
(declare-datatypes ((TokenValue!7459 0))(
  ( (FloatLiteralValue!14918 (text!52658 List!44517)) (TokenValueExt!7458 (__x!27135 Int)) (Broken!37295 (value!226573 List!44517)) (Object!7582) (End!7459) (Def!7459) (Underscore!7459) (Match!7459) (Else!7459) (Error!7459) (Case!7459) (If!7459) (Extends!7459) (Abstract!7459) (Class!7459) (Val!7459) (DelimiterValue!14918 (del!7519 List!44517)) (KeywordValue!7465 (value!226574 List!44517)) (CommentValue!14918 (value!226575 List!44517)) (WhitespaceValue!14918 (value!226576 List!44517)) (IndentationValue!7459 (value!226577 List!44517)) (String!51048) (Int32!7459) (Broken!37296 (value!226578 List!44517)) (Boolean!7460) (Unit!63767) (OperatorValue!7462 (op!7519 List!44517)) (IdentifierValue!14918 (value!226579 List!44517)) (IdentifierValue!14919 (value!226580 List!44517)) (WhitespaceValue!14919 (value!226581 List!44517)) (True!14918) (False!14918) (Broken!37297 (value!226582 List!44517)) (Broken!37298 (value!226583 List!44517)) (True!14919) (RightBrace!7459) (RightBracket!7459) (Colon!7459) (Null!7459) (Comma!7459) (LeftBracket!7459) (False!14919) (LeftBrace!7459) (ImaginaryLiteralValue!7459 (text!52659 List!44517)) (StringLiteralValue!22377 (value!226584 List!44517)) (EOFValue!7459 (value!226585 List!44517)) (IdentValue!7459 (value!226586 List!44517)) (DelimiterValue!14919 (value!226587 List!44517)) (DedentValue!7459 (value!226588 List!44517)) (NewLineValue!7459 (value!226589 List!44517)) (IntegerValue!22377 (value!226590 (_ BitVec 32)) (text!52660 List!44517)) (IntegerValue!22378 (value!226591 Int) (text!52661 List!44517)) (Times!7459) (Or!7459) (Equal!7459) (Minus!7459) (Broken!37299 (value!226592 List!44517)) (And!7459) (Div!7459) (LessEqual!7459) (Mod!7459) (Concat!19593) (Not!7459) (Plus!7459) (SpaceValue!7459 (value!226593 List!44517)) (IntegerValue!22379 (value!226594 Int) (text!52662 List!44517)) (StringLiteralValue!22378 (text!52663 List!44517)) (FloatLiteralValue!14919 (text!52664 List!44517)) (BytesLiteralValue!7459 (value!226595 List!44517)) (CommentValue!14919 (value!226596 List!44517)) (StringLiteralValue!22379 (value!226597 List!44517)) (ErrorTokenValue!7459 (msg!7520 List!44517)) )
))
(declare-datatypes ((C!24454 0))(
  ( (C!24455 (val!14337 Int)) )
))
(declare-datatypes ((List!44518 0))(
  ( (Nil!44394) (Cons!44394 (h!49814 C!24454) (t!340269 List!44518)) )
))
(declare-datatypes ((IArray!26885 0))(
  ( (IArray!26886 (innerList!13500 List!44518)) )
))
(declare-datatypes ((Conc!13440 0))(
  ( (Node!13440 (left!33269 Conc!13440) (right!33599 Conc!13440) (csize!27110 Int) (cheight!13651 Int)) (Leaf!20770 (xs!16746 IArray!26885) (csize!27111 Int)) (Empty!13440) )
))
(declare-datatypes ((BalanceConc!26474 0))(
  ( (BalanceConc!26475 (c!707014 Conc!13440)) )
))
(declare-datatypes ((TokenValueInjection!14346 0))(
  ( (TokenValueInjection!14347 (toValue!9873 Int) (toChars!9732 Int)) )
))
(declare-datatypes ((Regex!12134 0))(
  ( (ElementMatch!12134 (c!707015 C!24454)) (Concat!19594 (regOne!24780 Regex!12134) (regTwo!24780 Regex!12134)) (EmptyExpr!12134) (Star!12134 (reg!12463 Regex!12134)) (EmptyLang!12134) (Union!12134 (regOne!24781 Regex!12134) (regTwo!24781 Regex!12134)) )
))
(declare-datatypes ((Rule!14258 0))(
  ( (Rule!14259 (regex!7229 Regex!12134) (tag!8089 String!51046) (isSeparator!7229 Bool) (transformation!7229 TokenValueInjection!14346)) )
))
(declare-datatypes ((List!44519 0))(
  ( (Nil!44395) (Cons!44395 (h!49815 Rule!14258) (t!340270 List!44519)) )
))
(declare-fun l!6467 () List!44519)

(declare-fun newAcc!81 () List!44516)

(declare-fun content!6847 (List!44516) (Set String!51046))

(assert (=> b!4114578 (= res!1680570 (= (content!6847 lt!1468581) (content!6847 (Cons!44392 (tag!8089 (h!49815 l!6467)) newAcc!81))))))

(declare-fun b!4114579 () Bool)

(declare-fun ListPrimitiveSize!282 (List!44519) Int)

(assert (=> b!4114579 (= e!2552835 (>= (ListPrimitiveSize!282 (t!340270 l!6467)) (ListPrimitiveSize!282 l!6467)))))

(declare-fun b!4114580 () Bool)

(declare-fun e!2552830 () Bool)

(declare-fun tp!1252952 () Bool)

(declare-fun inv!58982 (String!51046) Bool)

(assert (=> b!4114580 (= e!2552830 (and (inv!58982 (h!49812 newAcc!81)) tp!1252952))))

(declare-fun tp!1252951 () Bool)

(declare-fun b!4114581 () Bool)

(declare-fun e!2552828 () Bool)

(declare-fun e!2552829 () Bool)

(declare-fun inv!58985 (TokenValueInjection!14346) Bool)

(assert (=> b!4114581 (= e!2552829 (and tp!1252951 (inv!58982 (tag!8089 (h!49815 l!6467))) (inv!58985 (transformation!7229 (h!49815 l!6467))) e!2552828))))

(declare-fun res!1680569 () Bool)

(declare-fun e!2552833 () Bool)

(assert (=> start!389902 (=> (not res!1680569) (not e!2552833))))

(declare-datatypes ((LexerInterface!6818 0))(
  ( (LexerInterfaceExt!6815 (__x!27136 Int)) (Lexer!6816) )
))
(declare-fun thiss!26911 () LexerInterface!6818)

(assert (=> start!389902 (= res!1680569 (is-Lexer!6816 thiss!26911))))

(assert (=> start!389902 e!2552833))

(assert (=> start!389902 true))

(declare-fun e!2552836 () Bool)

(assert (=> start!389902 e!2552836))

(declare-fun e!2552834 () Bool)

(assert (=> start!389902 e!2552834))

(assert (=> start!389902 e!2552830))

(declare-fun b!4114582 () Bool)

(declare-fun tp!1252949 () Bool)

(assert (=> b!4114582 (= e!2552836 (and e!2552829 tp!1252949))))

(declare-fun b!4114583 () Bool)

(declare-fun res!1680571 () Bool)

(assert (=> b!4114583 (=> (not res!1680571) (not e!2552833))))

(assert (=> b!4114583 (= res!1680571 (is-Cons!44395 l!6467))))

(declare-fun b!4114584 () Bool)

(declare-fun acc!555 () List!44516)

(declare-fun tp!1252950 () Bool)

(assert (=> b!4114584 (= e!2552834 (and (inv!58982 (h!49812 acc!555)) tp!1252950))))

(declare-fun b!4114585 () Bool)

(declare-fun e!2552831 () Bool)

(assert (=> b!4114585 (= e!2552833 e!2552831)))

(declare-fun res!1680573 () Bool)

(assert (=> b!4114585 (=> (not res!1680573) (not e!2552831))))

(declare-fun contains!8897 (List!44516 String!51046) Bool)

(assert (=> b!4114585 (= res!1680573 (= (contains!8897 acc!555 (tag!8089 (h!49815 l!6467))) (contains!8897 newAcc!81 (tag!8089 (h!49815 l!6467)))))))

(declare-datatypes ((Unit!63768 0))(
  ( (Unit!63769) )
))
(declare-fun lt!1468580 () Unit!63768)

(declare-fun subsetContains!89 (List!44516 List!44516) Unit!63768)

(assert (=> b!4114585 (= lt!1468580 (subsetContains!89 newAcc!81 acc!555))))

(declare-fun lt!1468579 () Unit!63768)

(assert (=> b!4114585 (= lt!1468579 (subsetContains!89 acc!555 newAcc!81))))

(declare-fun b!4114586 () Bool)

(assert (=> b!4114586 (= e!2552831 e!2552835)))

(declare-fun res!1680567 () Bool)

(assert (=> b!4114586 (=> (not res!1680567) (not e!2552835))))

(declare-fun noDuplicateTag!2906 (LexerInterface!6818 List!44519 List!44516) Bool)

(assert (=> b!4114586 (= res!1680567 (noDuplicateTag!2906 thiss!26911 (t!340270 l!6467) lt!1468581))))

(assert (=> b!4114586 (= lt!1468581 (Cons!44392 (tag!8089 (h!49815 l!6467)) acc!555))))

(declare-fun b!4114587 () Bool)

(declare-fun res!1680568 () Bool)

(assert (=> b!4114587 (=> (not res!1680568) (not e!2552833))))

(assert (=> b!4114587 (= res!1680568 (= (content!6847 acc!555) (content!6847 newAcc!81)))))

(assert (=> b!4114588 (= e!2552828 (and tp!1252953 tp!1252954))))

(declare-fun b!4114589 () Bool)

(declare-fun res!1680572 () Bool)

(assert (=> b!4114589 (=> (not res!1680572) (not e!2552833))))

(assert (=> b!4114589 (= res!1680572 (noDuplicateTag!2906 thiss!26911 l!6467 acc!555))))

(assert (= (and start!389902 res!1680569) b!4114589))

(assert (= (and b!4114589 res!1680572) b!4114587))

(assert (= (and b!4114587 res!1680568) b!4114583))

(assert (= (and b!4114583 res!1680571) b!4114585))

(assert (= (and b!4114585 res!1680573) b!4114586))

(assert (= (and b!4114586 res!1680567) b!4114578))

(assert (= (and b!4114578 res!1680570) b!4114579))

(assert (= b!4114581 b!4114588))

(assert (= b!4114582 b!4114581))

(assert (= (and start!389902 (is-Cons!44395 l!6467)) b!4114582))

(assert (= (and start!389902 (is-Cons!44392 acc!555)) b!4114584))

(assert (= (and start!389902 (is-Cons!44392 newAcc!81)) b!4114580))

(declare-fun m!4714953 () Bool)

(assert (=> b!4114584 m!4714953))

(declare-fun m!4714955 () Bool)

(assert (=> b!4114587 m!4714955))

(declare-fun m!4714957 () Bool)

(assert (=> b!4114587 m!4714957))

(declare-fun m!4714959 () Bool)

(assert (=> b!4114586 m!4714959))

(declare-fun m!4714961 () Bool)

(assert (=> b!4114579 m!4714961))

(declare-fun m!4714963 () Bool)

(assert (=> b!4114579 m!4714963))

(declare-fun m!4714965 () Bool)

(assert (=> b!4114581 m!4714965))

(declare-fun m!4714967 () Bool)

(assert (=> b!4114581 m!4714967))

(declare-fun m!4714969 () Bool)

(assert (=> b!4114580 m!4714969))

(declare-fun m!4714971 () Bool)

(assert (=> b!4114578 m!4714971))

(declare-fun m!4714973 () Bool)

(assert (=> b!4114578 m!4714973))

(declare-fun m!4714975 () Bool)

(assert (=> b!4114585 m!4714975))

(declare-fun m!4714977 () Bool)

(assert (=> b!4114585 m!4714977))

(declare-fun m!4714979 () Bool)

(assert (=> b!4114585 m!4714979))

(declare-fun m!4714981 () Bool)

(assert (=> b!4114585 m!4714981))

(declare-fun m!4714983 () Bool)

(assert (=> b!4114589 m!4714983))

(push 1)

(assert (not b!4114585))

(assert (not b!4114586))

(assert (not b!4114587))

(assert (not b!4114580))

(assert (not b!4114584))

(assert (not b!4114581))

(assert (not b_next!116589))

(assert (not b_next!116587))

(assert b_and!317769)

(assert (not b!4114589))

(assert (not b!4114579))

(assert b_and!317771)

(assert (not b!4114578))

(assert (not b!4114582))

(check-sat)

(pop 1)

(push 1)

(assert b_and!317771)

(assert b_and!317769)

(assert (not b_next!116589))

(assert (not b_next!116587))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1220464 () Bool)

(declare-fun c!707020 () Bool)

(assert (=> d!1220464 (= c!707020 (is-Nil!44392 lt!1468581))))

(declare-fun e!2552872 () (Set String!51046))

(assert (=> d!1220464 (= (content!6847 lt!1468581) e!2552872)))

(declare-fun b!4114630 () Bool)

(assert (=> b!4114630 (= e!2552872 (as set.empty (Set String!51046)))))

(declare-fun b!4114631 () Bool)

(assert (=> b!4114631 (= e!2552872 (set.union (set.insert (h!49812 lt!1468581) (as set.empty (Set String!51046))) (content!6847 (t!340267 lt!1468581))))))

(assert (= (and d!1220464 c!707020) b!4114630))

(assert (= (and d!1220464 (not c!707020)) b!4114631))

(declare-fun m!4715017 () Bool)

(assert (=> b!4114631 m!4715017))

(declare-fun m!4715019 () Bool)

(assert (=> b!4114631 m!4715019))

(assert (=> b!4114578 d!1220464))

(declare-fun d!1220468 () Bool)

(declare-fun c!707021 () Bool)

(assert (=> d!1220468 (= c!707021 (is-Nil!44392 (Cons!44392 (tag!8089 (h!49815 l!6467)) newAcc!81)))))

(declare-fun e!2552873 () (Set String!51046))

(assert (=> d!1220468 (= (content!6847 (Cons!44392 (tag!8089 (h!49815 l!6467)) newAcc!81)) e!2552873)))

(declare-fun b!4114632 () Bool)

(assert (=> b!4114632 (= e!2552873 (as set.empty (Set String!51046)))))

(declare-fun b!4114633 () Bool)

(assert (=> b!4114633 (= e!2552873 (set.union (set.insert (h!49812 (Cons!44392 (tag!8089 (h!49815 l!6467)) newAcc!81)) (as set.empty (Set String!51046))) (content!6847 (t!340267 (Cons!44392 (tag!8089 (h!49815 l!6467)) newAcc!81)))))))

(assert (= (and d!1220468 c!707021) b!4114632))

(assert (= (and d!1220468 (not c!707021)) b!4114633))

(declare-fun m!4715021 () Bool)

(assert (=> b!4114633 m!4715021))

(declare-fun m!4715023 () Bool)

(assert (=> b!4114633 m!4715023))

(assert (=> b!4114578 d!1220468))

(declare-fun d!1220470 () Bool)

(declare-fun res!1680611 () Bool)

(declare-fun e!2552886 () Bool)

(assert (=> d!1220470 (=> res!1680611 e!2552886)))

(assert (=> d!1220470 (= res!1680611 (is-Nil!44395 l!6467))))

(assert (=> d!1220470 (= (noDuplicateTag!2906 thiss!26911 l!6467 acc!555) e!2552886)))

(declare-fun b!4114646 () Bool)

(declare-fun e!2552887 () Bool)

(assert (=> b!4114646 (= e!2552886 e!2552887)))

(declare-fun res!1680612 () Bool)

(assert (=> b!4114646 (=> (not res!1680612) (not e!2552887))))

(assert (=> b!4114646 (= res!1680612 (not (contains!8897 acc!555 (tag!8089 (h!49815 l!6467)))))))

(declare-fun b!4114647 () Bool)

(assert (=> b!4114647 (= e!2552887 (noDuplicateTag!2906 thiss!26911 (t!340270 l!6467) (Cons!44392 (tag!8089 (h!49815 l!6467)) acc!555)))))

(assert (= (and d!1220470 (not res!1680611)) b!4114646))

(assert (= (and b!4114646 res!1680612) b!4114647))

(assert (=> b!4114646 m!4714975))

(declare-fun m!4715033 () Bool)

(assert (=> b!4114647 m!4715033))

(assert (=> b!4114589 d!1220470))

(declare-fun d!1220476 () Bool)

(assert (=> d!1220476 (= (inv!58982 (h!49812 acc!555)) (= (mod (str.len (value!226572 (h!49812 acc!555))) 2) 0))))

(assert (=> b!4114584 d!1220476))

(declare-fun d!1220478 () Bool)

(declare-fun lt!1468599 () Int)

(assert (=> d!1220478 (>= lt!1468599 0)))

(declare-fun e!2552890 () Int)

(assert (=> d!1220478 (= lt!1468599 e!2552890)))

(declare-fun c!707024 () Bool)

(assert (=> d!1220478 (= c!707024 (is-Nil!44395 (t!340270 l!6467)))))

(assert (=> d!1220478 (= (ListPrimitiveSize!282 (t!340270 l!6467)) lt!1468599)))

(declare-fun b!4114652 () Bool)

(assert (=> b!4114652 (= e!2552890 0)))

(declare-fun b!4114653 () Bool)

(assert (=> b!4114653 (= e!2552890 (+ 1 (ListPrimitiveSize!282 (t!340270 (t!340270 l!6467)))))))

(assert (= (and d!1220478 c!707024) b!4114652))

(assert (= (and d!1220478 (not c!707024)) b!4114653))

(declare-fun m!4715035 () Bool)

(assert (=> b!4114653 m!4715035))

(assert (=> b!4114579 d!1220478))

(declare-fun d!1220480 () Bool)

(declare-fun lt!1468600 () Int)

(assert (=> d!1220480 (>= lt!1468600 0)))

(declare-fun e!2552891 () Int)

(assert (=> d!1220480 (= lt!1468600 e!2552891)))

(declare-fun c!707025 () Bool)

(assert (=> d!1220480 (= c!707025 (is-Nil!44395 l!6467))))

(assert (=> d!1220480 (= (ListPrimitiveSize!282 l!6467) lt!1468600)))

(declare-fun b!4114654 () Bool)

(assert (=> b!4114654 (= e!2552891 0)))

(declare-fun b!4114655 () Bool)

(assert (=> b!4114655 (= e!2552891 (+ 1 (ListPrimitiveSize!282 (t!340270 l!6467))))))

(assert (= (and d!1220480 c!707025) b!4114654))

(assert (= (and d!1220480 (not c!707025)) b!4114655))

(assert (=> b!4114655 m!4714961))

(assert (=> b!4114579 d!1220480))

(declare-fun d!1220482 () Bool)

(declare-fun lt!1468603 () Bool)

(assert (=> d!1220482 (= lt!1468603 (set.member (tag!8089 (h!49815 l!6467)) (content!6847 acc!555)))))

(declare-fun e!2552896 () Bool)

(assert (=> d!1220482 (= lt!1468603 e!2552896)))

(declare-fun res!1680617 () Bool)

(assert (=> d!1220482 (=> (not res!1680617) (not e!2552896))))

(assert (=> d!1220482 (= res!1680617 (is-Cons!44392 acc!555))))

(assert (=> d!1220482 (= (contains!8897 acc!555 (tag!8089 (h!49815 l!6467))) lt!1468603)))

(declare-fun b!4114660 () Bool)

(declare-fun e!2552897 () Bool)

(assert (=> b!4114660 (= e!2552896 e!2552897)))

(declare-fun res!1680618 () Bool)

(assert (=> b!4114660 (=> res!1680618 e!2552897)))

(assert (=> b!4114660 (= res!1680618 (= (h!49812 acc!555) (tag!8089 (h!49815 l!6467))))))

(declare-fun b!4114661 () Bool)

(assert (=> b!4114661 (= e!2552897 (contains!8897 (t!340267 acc!555) (tag!8089 (h!49815 l!6467))))))

(assert (= (and d!1220482 res!1680617) b!4114660))

(assert (= (and b!4114660 (not res!1680618)) b!4114661))

(assert (=> d!1220482 m!4714955))

(declare-fun m!4715037 () Bool)

(assert (=> d!1220482 m!4715037))

(declare-fun m!4715039 () Bool)

(assert (=> b!4114661 m!4715039))

(assert (=> b!4114585 d!1220482))

(declare-fun d!1220484 () Bool)

(declare-fun lt!1468604 () Bool)

(assert (=> d!1220484 (= lt!1468604 (set.member (tag!8089 (h!49815 l!6467)) (content!6847 newAcc!81)))))

(declare-fun e!2552898 () Bool)

(assert (=> d!1220484 (= lt!1468604 e!2552898)))

(declare-fun res!1680619 () Bool)

(assert (=> d!1220484 (=> (not res!1680619) (not e!2552898))))

(assert (=> d!1220484 (= res!1680619 (is-Cons!44392 newAcc!81))))

(assert (=> d!1220484 (= (contains!8897 newAcc!81 (tag!8089 (h!49815 l!6467))) lt!1468604)))

(declare-fun b!4114662 () Bool)

(declare-fun e!2552899 () Bool)

(assert (=> b!4114662 (= e!2552898 e!2552899)))

(declare-fun res!1680620 () Bool)

(assert (=> b!4114662 (=> res!1680620 e!2552899)))

(assert (=> b!4114662 (= res!1680620 (= (h!49812 newAcc!81) (tag!8089 (h!49815 l!6467))))))

(declare-fun b!4114663 () Bool)

(assert (=> b!4114663 (= e!2552899 (contains!8897 (t!340267 newAcc!81) (tag!8089 (h!49815 l!6467))))))

(assert (= (and d!1220484 res!1680619) b!4114662))

(assert (= (and b!4114662 (not res!1680620)) b!4114663))

(assert (=> d!1220484 m!4714957))

(declare-fun m!4715041 () Bool)

(assert (=> d!1220484 m!4715041))

(declare-fun m!4715043 () Bool)

(assert (=> b!4114663 m!4715043))

(assert (=> b!4114585 d!1220484))

(declare-fun d!1220486 () Bool)

(assert (=> d!1220486 true))

(declare-fun lambda!128553 () Int)

(declare-fun forall!8440 (List!44516 Int) Bool)

(assert (=> d!1220486 (forall!8440 newAcc!81 lambda!128553)))

(declare-fun lt!1468607 () Unit!63768)

(declare-fun choose!25150 (List!44516 List!44516) Unit!63768)

(assert (=> d!1220486 (= lt!1468607 (choose!25150 newAcc!81 acc!555))))

(assert (=> d!1220486 (set.subset (content!6847 newAcc!81) (content!6847 acc!555))))

(assert (=> d!1220486 (= (subsetContains!89 newAcc!81 acc!555) lt!1468607)))

(declare-fun bs!594486 () Bool)

(assert (= bs!594486 d!1220486))

(declare-fun m!4715045 () Bool)

(assert (=> bs!594486 m!4715045))

(declare-fun m!4715047 () Bool)

(assert (=> bs!594486 m!4715047))

(assert (=> bs!594486 m!4714957))

(assert (=> bs!594486 m!4714955))

(assert (=> b!4114585 d!1220486))

(declare-fun bs!594487 () Bool)

(declare-fun d!1220488 () Bool)

(assert (= bs!594487 (and d!1220488 d!1220486)))

(declare-fun lambda!128554 () Int)

(assert (=> bs!594487 (= (= newAcc!81 acc!555) (= lambda!128554 lambda!128553))))

(assert (=> d!1220488 true))

(assert (=> d!1220488 (forall!8440 acc!555 lambda!128554)))

(declare-fun lt!1468608 () Unit!63768)

(assert (=> d!1220488 (= lt!1468608 (choose!25150 acc!555 newAcc!81))))

(assert (=> d!1220488 (set.subset (content!6847 acc!555) (content!6847 newAcc!81))))

(assert (=> d!1220488 (= (subsetContains!89 acc!555 newAcc!81) lt!1468608)))

(declare-fun bs!594488 () Bool)

(assert (= bs!594488 d!1220488))

(declare-fun m!4715049 () Bool)

(assert (=> bs!594488 m!4715049))

(declare-fun m!4715051 () Bool)

(assert (=> bs!594488 m!4715051))

(assert (=> bs!594488 m!4714955))

(assert (=> bs!594488 m!4714957))

(assert (=> b!4114585 d!1220488))

(declare-fun d!1220490 () Bool)

(assert (=> d!1220490 (= (inv!58982 (h!49812 newAcc!81)) (= (mod (str.len (value!226572 (h!49812 newAcc!81))) 2) 0))))

(assert (=> b!4114580 d!1220490))

(declare-fun d!1220492 () Bool)

(declare-fun res!1680621 () Bool)

(declare-fun e!2552900 () Bool)

(assert (=> d!1220492 (=> res!1680621 e!2552900)))

(assert (=> d!1220492 (= res!1680621 (is-Nil!44395 (t!340270 l!6467)))))

(assert (=> d!1220492 (= (noDuplicateTag!2906 thiss!26911 (t!340270 l!6467) lt!1468581) e!2552900)))

(declare-fun b!4114666 () Bool)

(declare-fun e!2552901 () Bool)

(assert (=> b!4114666 (= e!2552900 e!2552901)))

(declare-fun res!1680622 () Bool)

(assert (=> b!4114666 (=> (not res!1680622) (not e!2552901))))

(assert (=> b!4114666 (= res!1680622 (not (contains!8897 lt!1468581 (tag!8089 (h!49815 (t!340270 l!6467))))))))

(declare-fun b!4114667 () Bool)

(assert (=> b!4114667 (= e!2552901 (noDuplicateTag!2906 thiss!26911 (t!340270 (t!340270 l!6467)) (Cons!44392 (tag!8089 (h!49815 (t!340270 l!6467))) lt!1468581)))))

(assert (= (and d!1220492 (not res!1680621)) b!4114666))

(assert (= (and b!4114666 res!1680622) b!4114667))

(declare-fun m!4715053 () Bool)

(assert (=> b!4114666 m!4715053))

(declare-fun m!4715055 () Bool)

(assert (=> b!4114667 m!4715055))

(assert (=> b!4114586 d!1220492))

(declare-fun d!1220494 () Bool)

(assert (=> d!1220494 (= (inv!58982 (tag!8089 (h!49815 l!6467))) (= (mod (str.len (value!226572 (tag!8089 (h!49815 l!6467)))) 2) 0))))

(assert (=> b!4114581 d!1220494))

(declare-fun d!1220496 () Bool)

(declare-fun res!1680625 () Bool)

(declare-fun e!2552904 () Bool)

(assert (=> d!1220496 (=> (not res!1680625) (not e!2552904))))

(declare-fun semiInverseModEq!3116 (Int Int) Bool)

(assert (=> d!1220496 (= res!1680625 (semiInverseModEq!3116 (toChars!9732 (transformation!7229 (h!49815 l!6467))) (toValue!9873 (transformation!7229 (h!49815 l!6467)))))))

(assert (=> d!1220496 (= (inv!58985 (transformation!7229 (h!49815 l!6467))) e!2552904)))

(declare-fun b!4114670 () Bool)

(declare-fun equivClasses!3015 (Int Int) Bool)

(assert (=> b!4114670 (= e!2552904 (equivClasses!3015 (toChars!9732 (transformation!7229 (h!49815 l!6467))) (toValue!9873 (transformation!7229 (h!49815 l!6467)))))))

(assert (= (and d!1220496 res!1680625) b!4114670))

(declare-fun m!4715057 () Bool)

(assert (=> d!1220496 m!4715057))

(declare-fun m!4715059 () Bool)

(assert (=> b!4114670 m!4715059))

(assert (=> b!4114581 d!1220496))

(declare-fun d!1220498 () Bool)

(declare-fun c!707026 () Bool)

(assert (=> d!1220498 (= c!707026 (is-Nil!44392 acc!555))))

(declare-fun e!2552905 () (Set String!51046))

(assert (=> d!1220498 (= (content!6847 acc!555) e!2552905)))

(declare-fun b!4114671 () Bool)

(assert (=> b!4114671 (= e!2552905 (as set.empty (Set String!51046)))))

(declare-fun b!4114672 () Bool)

(assert (=> b!4114672 (= e!2552905 (set.union (set.insert (h!49812 acc!555) (as set.empty (Set String!51046))) (content!6847 (t!340267 acc!555))))))

(assert (= (and d!1220498 c!707026) b!4114671))

(assert (= (and d!1220498 (not c!707026)) b!4114672))

(declare-fun m!4715061 () Bool)

(assert (=> b!4114672 m!4715061))

(declare-fun m!4715063 () Bool)

(assert (=> b!4114672 m!4715063))

(assert (=> b!4114587 d!1220498))

(declare-fun d!1220500 () Bool)

(declare-fun c!707027 () Bool)

(assert (=> d!1220500 (= c!707027 (is-Nil!44392 newAcc!81))))

(declare-fun e!2552906 () (Set String!51046))

(assert (=> d!1220500 (= (content!6847 newAcc!81) e!2552906)))

(declare-fun b!4114673 () Bool)

(assert (=> b!4114673 (= e!2552906 (as set.empty (Set String!51046)))))

(declare-fun b!4114674 () Bool)

(assert (=> b!4114674 (= e!2552906 (set.union (set.insert (h!49812 newAcc!81) (as set.empty (Set String!51046))) (content!6847 (t!340267 newAcc!81))))))

(assert (= (and d!1220500 c!707027) b!4114673))

(assert (= (and d!1220500 (not c!707027)) b!4114674))

(declare-fun m!4715065 () Bool)

(assert (=> b!4114674 m!4715065))

(declare-fun m!4715067 () Bool)

(assert (=> b!4114674 m!4715067))

(assert (=> b!4114587 d!1220500))

(declare-fun b!4114679 () Bool)

(declare-fun e!2552911 () Bool)

(declare-fun tp!1252975 () Bool)

(assert (=> b!4114679 (= e!2552911 (and (inv!58982 (h!49812 (t!340267 acc!555))) tp!1252975))))

(assert (=> b!4114584 (= tp!1252950 e!2552911)))

(assert (= (and b!4114584 (is-Cons!44392 (t!340267 acc!555))) b!4114679))

(declare-fun m!4715069 () Bool)

(assert (=> b!4114679 m!4715069))

(declare-fun b!4114680 () Bool)

(declare-fun e!2552913 () Bool)

(declare-fun tp!1252976 () Bool)

(assert (=> b!4114680 (= e!2552913 (and (inv!58982 (h!49812 (t!340267 newAcc!81))) tp!1252976))))

(assert (=> b!4114580 (= tp!1252952 e!2552913)))

(assert (= (and b!4114580 (is-Cons!44392 (t!340267 newAcc!81))) b!4114680))

(declare-fun m!4715071 () Bool)

(assert (=> b!4114680 m!4715071))

(declare-fun b!4114692 () Bool)

(declare-fun e!2552917 () Bool)

(declare-fun tp!1252987 () Bool)

(declare-fun tp!1252990 () Bool)

(assert (=> b!4114692 (= e!2552917 (and tp!1252987 tp!1252990))))

(assert (=> b!4114581 (= tp!1252951 e!2552917)))

(declare-fun b!4114693 () Bool)

(declare-fun tp!1252988 () Bool)

(assert (=> b!4114693 (= e!2552917 tp!1252988)))

(declare-fun b!4114694 () Bool)

(declare-fun tp!1252989 () Bool)

(declare-fun tp!1252991 () Bool)

(assert (=> b!4114694 (= e!2552917 (and tp!1252989 tp!1252991))))

(declare-fun b!4114691 () Bool)

(declare-fun tp_is_empty!21191 () Bool)

(assert (=> b!4114691 (= e!2552917 tp_is_empty!21191)))

(assert (= (and b!4114581 (is-ElementMatch!12134 (regex!7229 (h!49815 l!6467)))) b!4114691))

(assert (= (and b!4114581 (is-Concat!19594 (regex!7229 (h!49815 l!6467)))) b!4114692))

(assert (= (and b!4114581 (is-Star!12134 (regex!7229 (h!49815 l!6467)))) b!4114693))

(assert (= (and b!4114581 (is-Union!12134 (regex!7229 (h!49815 l!6467)))) b!4114694))

(declare-fun b!4114705 () Bool)

(declare-fun b_free!115891 () Bool)

(declare-fun b_next!116595 () Bool)

(assert (=> b!4114705 (= b_free!115891 (not b_next!116595))))

(declare-fun tp!1253000 () Bool)

(declare-fun b_and!317777 () Bool)

(assert (=> b!4114705 (= tp!1253000 b_and!317777)))

(declare-fun b_free!115893 () Bool)

(declare-fun b_next!116597 () Bool)

(assert (=> b!4114705 (= b_free!115893 (not b_next!116597))))

(declare-fun tp!1253003 () Bool)

(declare-fun b_and!317779 () Bool)

(assert (=> b!4114705 (= tp!1253003 b_and!317779)))

(declare-fun e!2552926 () Bool)

(assert (=> b!4114705 (= e!2552926 (and tp!1253000 tp!1253003))))

(declare-fun tp!1253001 () Bool)

(declare-fun b!4114704 () Bool)

(declare-fun e!2552929 () Bool)

(assert (=> b!4114704 (= e!2552929 (and tp!1253001 (inv!58982 (tag!8089 (h!49815 (t!340270 l!6467)))) (inv!58985 (transformation!7229 (h!49815 (t!340270 l!6467)))) e!2552926))))

(declare-fun b!4114703 () Bool)

(declare-fun e!2552927 () Bool)

(declare-fun tp!1253002 () Bool)

(assert (=> b!4114703 (= e!2552927 (and e!2552929 tp!1253002))))

(assert (=> b!4114582 (= tp!1252949 e!2552927)))

(assert (= b!4114704 b!4114705))

(assert (= b!4114703 b!4114704))

(assert (= (and b!4114582 (is-Cons!44395 (t!340270 l!6467))) b!4114703))

(declare-fun m!4715073 () Bool)

(assert (=> b!4114704 m!4715073))

(declare-fun m!4715075 () Bool)

(assert (=> b!4114704 m!4715075))

(push 1)

(assert (not d!1220482))

(assert (not b_next!116597))

(assert (not b!4114653))

(assert (not b!4114704))

(assert (not d!1220484))

(assert b_and!317779)

(assert (not b!4114666))

(assert (not b!4114692))

(assert (not b!4114655))

(assert (not b!4114672))

(assert (not b_next!116595))

(assert (not d!1220486))

(assert (not b!4114694))

(assert tp_is_empty!21191)

(assert (not b!4114663))

(assert (not b!4114661))

(assert (not d!1220496))

(assert (not b!4114646))

(assert (not b!4114667))

(assert (not b!4114674))

(assert (not b!4114631))

(assert (not b!4114703))

(assert (not b!4114693))

(assert (not b!4114680))

(assert (not b_next!116589))

(assert (not b!4114679))

(assert (not b_next!116587))

(assert (not b!4114647))

(assert b_and!317769)

(assert (not b!4114670))

(assert b_and!317777)

(assert b_and!317771)

(assert (not b!4114633))

(assert (not d!1220488))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!116597))

(assert b_and!317779)

(assert (not b_next!116589))

(assert (not b_next!116595))

(assert (not b_next!116587))

(assert b_and!317769)

(assert b_and!317777)

(assert b_and!317771)

(check-sat)

(pop 1)

