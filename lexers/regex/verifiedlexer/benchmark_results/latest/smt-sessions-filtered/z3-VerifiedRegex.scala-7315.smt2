; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389624 () Bool)

(assert start!389624)

(declare-fun b!4110927 () Bool)

(declare-fun b_free!115627 () Bool)

(declare-fun b_next!116331 () Bool)

(assert (=> b!4110927 (= b_free!115627 (not b_next!116331))))

(declare-fun tp!1249785 () Bool)

(declare-fun b_and!317513 () Bool)

(assert (=> b!4110927 (= tp!1249785 b_and!317513)))

(declare-fun b_free!115629 () Bool)

(declare-fun b_next!116333 () Bool)

(assert (=> b!4110927 (= b_free!115629 (not b_next!116333))))

(declare-fun tp!1249782 () Bool)

(declare-fun b_and!317515 () Bool)

(assert (=> b!4110927 (= tp!1249782 b_and!317515)))

(declare-fun b!4110931 () Bool)

(declare-fun b_free!115631 () Bool)

(declare-fun b_next!116335 () Bool)

(assert (=> b!4110931 (= b_free!115631 (not b_next!116335))))

(declare-fun tp!1249777 () Bool)

(declare-fun b_and!317517 () Bool)

(assert (=> b!4110931 (= tp!1249777 b_and!317517)))

(declare-fun b_free!115633 () Bool)

(declare-fun b_next!116337 () Bool)

(assert (=> b!4110931 (= b_free!115633 (not b_next!116337))))

(declare-fun tp!1249780 () Bool)

(declare-fun b_and!317519 () Bool)

(assert (=> b!4110931 (= tp!1249780 b_and!317519)))

(declare-fun b!4110933 () Bool)

(declare-fun b_free!115635 () Bool)

(declare-fun b_next!116339 () Bool)

(assert (=> b!4110933 (= b_free!115635 (not b_next!116339))))

(declare-fun tp!1249778 () Bool)

(declare-fun b_and!317521 () Bool)

(assert (=> b!4110933 (= tp!1249778 b_and!317521)))

(declare-fun b_free!115637 () Bool)

(declare-fun b_next!116341 () Bool)

(assert (=> b!4110933 (= b_free!115637 (not b_next!116341))))

(declare-fun tp!1249784 () Bool)

(declare-fun b_and!317523 () Bool)

(assert (=> b!4110933 (= tp!1249784 b_and!317523)))

(declare-fun b!4110925 () Bool)

(declare-fun e!2550662 () Bool)

(declare-fun e!2550653 () Bool)

(assert (=> b!4110925 (= e!2550662 e!2550653)))

(declare-fun res!1679704 () Bool)

(assert (=> b!4110925 (=> (not res!1679704) (not e!2550653))))

(declare-datatypes ((String!50909 0))(
  ( (String!50910 (value!225828 String)) )
))
(declare-datatypes ((List!44408 0))(
  ( (Nil!44284) (Cons!44284 (h!49704 String!50909) (t!340159 List!44408)) )
))
(declare-fun lt!1468231 () List!44408)

(declare-datatypes ((LexerInterface!6791 0))(
  ( (LexerInterfaceExt!6788 (__x!27081 Int)) (Lexer!6789) )
))
(declare-fun thiss!26878 () LexerInterface!6791)

(declare-datatypes ((List!44409 0))(
  ( (Nil!44285) (Cons!44285 (h!49705 (_ BitVec 16)) (t!340160 List!44409)) )
))
(declare-datatypes ((TokenValue!7432 0))(
  ( (FloatLiteralValue!14864 (text!52469 List!44409)) (TokenValueExt!7431 (__x!27082 Int)) (Broken!37160 (value!225829 List!44409)) (Object!7555) (End!7432) (Def!7432) (Underscore!7432) (Match!7432) (Else!7432) (Error!7432) (Case!7432) (If!7432) (Extends!7432) (Abstract!7432) (Class!7432) (Val!7432) (DelimiterValue!14864 (del!7492 List!44409)) (KeywordValue!7438 (value!225830 List!44409)) (CommentValue!14864 (value!225831 List!44409)) (WhitespaceValue!14864 (value!225832 List!44409)) (IndentationValue!7432 (value!225833 List!44409)) (String!50911) (Int32!7432) (Broken!37161 (value!225834 List!44409)) (Boolean!7433) (Unit!63708) (OperatorValue!7435 (op!7492 List!44409)) (IdentifierValue!14864 (value!225835 List!44409)) (IdentifierValue!14865 (value!225836 List!44409)) (WhitespaceValue!14865 (value!225837 List!44409)) (True!14864) (False!14864) (Broken!37162 (value!225838 List!44409)) (Broken!37163 (value!225839 List!44409)) (True!14865) (RightBrace!7432) (RightBracket!7432) (Colon!7432) (Null!7432) (Comma!7432) (LeftBracket!7432) (False!14865) (LeftBrace!7432) (ImaginaryLiteralValue!7432 (text!52470 List!44409)) (StringLiteralValue!22296 (value!225840 List!44409)) (EOFValue!7432 (value!225841 List!44409)) (IdentValue!7432 (value!225842 List!44409)) (DelimiterValue!14865 (value!225843 List!44409)) (DedentValue!7432 (value!225844 List!44409)) (NewLineValue!7432 (value!225845 List!44409)) (IntegerValue!22296 (value!225846 (_ BitVec 32)) (text!52471 List!44409)) (IntegerValue!22297 (value!225847 Int) (text!52472 List!44409)) (Times!7432) (Or!7432) (Equal!7432) (Minus!7432) (Broken!37164 (value!225848 List!44409)) (And!7432) (Div!7432) (LessEqual!7432) (Mod!7432) (Concat!19539) (Not!7432) (Plus!7432) (SpaceValue!7432 (value!225849 List!44409)) (IntegerValue!22298 (value!225850 Int) (text!52473 List!44409)) (StringLiteralValue!22297 (text!52474 List!44409)) (FloatLiteralValue!14865 (text!52475 List!44409)) (BytesLiteralValue!7432 (value!225851 List!44409)) (CommentValue!14865 (value!225852 List!44409)) (StringLiteralValue!22298 (value!225853 List!44409)) (ErrorTokenValue!7432 (msg!7493 List!44409)) )
))
(declare-datatypes ((C!24400 0))(
  ( (C!24401 (val!14310 Int)) )
))
(declare-datatypes ((List!44410 0))(
  ( (Nil!44286) (Cons!44286 (h!49706 C!24400) (t!340161 List!44410)) )
))
(declare-datatypes ((IArray!26831 0))(
  ( (IArray!26832 (innerList!13473 List!44410)) )
))
(declare-datatypes ((Conc!13413 0))(
  ( (Node!13413 (left!33204 Conc!13413) (right!33534 Conc!13413) (csize!27056 Int) (cheight!13624 Int)) (Leaf!20729 (xs!16719 IArray!26831) (csize!27057 Int)) (Empty!13413) )
))
(declare-datatypes ((BalanceConc!26420 0))(
  ( (BalanceConc!26421 (c!706856 Conc!13413)) )
))
(declare-datatypes ((Regex!12107 0))(
  ( (ElementMatch!12107 (c!706857 C!24400)) (Concat!19540 (regOne!24726 Regex!12107) (regTwo!24726 Regex!12107)) (EmptyExpr!12107) (Star!12107 (reg!12436 Regex!12107)) (EmptyLang!12107) (Union!12107 (regOne!24727 Regex!12107) (regTwo!24727 Regex!12107)) )
))
(declare-datatypes ((TokenValueInjection!14292 0))(
  ( (TokenValueInjection!14293 (toValue!9834 Int) (toChars!9693 Int)) )
))
(declare-datatypes ((Rule!14204 0))(
  ( (Rule!14205 (regex!7202 Regex!12107) (tag!8062 String!50909) (isSeparator!7202 Bool) (transformation!7202 TokenValueInjection!14292)) )
))
(declare-datatypes ((List!44411 0))(
  ( (Nil!44287) (Cons!44287 (h!49707 Rule!14204) (t!340162 List!44411)) )
))
(declare-fun l!6462 () List!44411)

(declare-fun noDuplicateTag!2879 (LexerInterface!6791 List!44411 List!44408) Bool)

(assert (=> b!4110925 (= res!1679704 (noDuplicateTag!2879 thiss!26878 l!6462 lt!1468231))))

(declare-fun e2!99 () Rule!14204)

(declare-fun lt!1468230 () List!44408)

(assert (=> b!4110925 (= lt!1468231 (Cons!44284 (tag!8062 e2!99) lt!1468230))))

(declare-fun b!4110926 () Bool)

(declare-fun e!2550661 () Bool)

(assert (=> b!4110926 (= e!2550661 e!2550662)))

(declare-fun res!1679703 () Bool)

(assert (=> b!4110926 (=> (not res!1679703) (not e!2550662))))

(declare-fun lt!1468229 () List!44411)

(assert (=> b!4110926 (= res!1679703 (noDuplicateTag!2879 thiss!26878 lt!1468229 lt!1468230))))

(declare-fun e1!99 () Rule!14204)

(assert (=> b!4110926 (= lt!1468230 (Cons!44284 (tag!8062 e1!99) Nil!44284))))

(declare-fun e!2550652 () Bool)

(assert (=> b!4110927 (= e!2550652 (and tp!1249785 tp!1249782))))

(declare-fun b!4110928 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toSet!7 (List!44408) (InoxSet String!50909))

(assert (=> b!4110928 (= e!2550653 (not (= (toSet!7 lt!1468231) (toSet!7 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284))))))))

(declare-fun tp!1249779 () Bool)

(declare-fun b!4110929 () Bool)

(declare-fun e!2550657 () Bool)

(declare-fun e!2550651 () Bool)

(declare-fun inv!58914 (String!50909) Bool)

(declare-fun inv!58916 (TokenValueInjection!14292) Bool)

(assert (=> b!4110929 (= e!2550657 (and tp!1249779 (inv!58914 (tag!8062 e2!99)) (inv!58916 (transformation!7202 e2!99)) e!2550651))))

(declare-fun b!4110930 () Bool)

(declare-fun e!2550663 () Bool)

(declare-fun e!2550660 () Bool)

(declare-fun tp!1249783 () Bool)

(assert (=> b!4110930 (= e!2550663 (and e!2550660 tp!1249783))))

(assert (=> b!4110931 (= e!2550651 (and tp!1249777 tp!1249780))))

(declare-fun tp!1249781 () Bool)

(declare-fun b!4110932 () Bool)

(declare-fun e!2550650 () Bool)

(assert (=> b!4110932 (= e!2550650 (and tp!1249781 (inv!58914 (tag!8062 e1!99)) (inv!58916 (transformation!7202 e1!99)) e!2550652))))

(declare-fun e!2550658 () Bool)

(assert (=> b!4110933 (= e!2550658 (and tp!1249778 tp!1249784))))

(declare-fun b!4110934 () Bool)

(declare-fun tp!1249786 () Bool)

(assert (=> b!4110934 (= e!2550660 (and tp!1249786 (inv!58914 (tag!8062 (h!49707 l!6462))) (inv!58916 (transformation!7202 (h!49707 l!6462))) e!2550658))))

(declare-fun b!4110935 () Bool)

(declare-fun e!2550654 () Bool)

(assert (=> b!4110935 (= e!2550654 e!2550661)))

(declare-fun res!1679702 () Bool)

(assert (=> b!4110935 (=> (not res!1679702) (not e!2550661))))

(assert (=> b!4110935 (= res!1679702 (noDuplicateTag!2879 thiss!26878 (Cons!44287 e1!99 lt!1468229) Nil!44284))))

(assert (=> b!4110935 (= lt!1468229 (Cons!44287 e2!99 l!6462))))

(declare-fun res!1679705 () Bool)

(assert (=> start!389624 (=> (not res!1679705) (not e!2550654))))

(get-info :version)

(assert (=> start!389624 (= res!1679705 ((_ is Lexer!6789) thiss!26878))))

(assert (=> start!389624 e!2550654))

(assert (=> start!389624 true))

(assert (=> start!389624 e!2550650))

(assert (=> start!389624 e!2550657))

(assert (=> start!389624 e!2550663))

(assert (= (and start!389624 res!1679705) b!4110935))

(assert (= (and b!4110935 res!1679702) b!4110926))

(assert (= (and b!4110926 res!1679703) b!4110925))

(assert (= (and b!4110925 res!1679704) b!4110928))

(assert (= b!4110932 b!4110927))

(assert (= start!389624 b!4110932))

(assert (= b!4110929 b!4110931))

(assert (= start!389624 b!4110929))

(assert (= b!4110934 b!4110933))

(assert (= b!4110930 b!4110934))

(assert (= (and start!389624 ((_ is Cons!44287) l!6462)) b!4110930))

(declare-fun m!4713059 () Bool)

(assert (=> b!4110928 m!4713059))

(declare-fun m!4713061 () Bool)

(assert (=> b!4110928 m!4713061))

(declare-fun m!4713063 () Bool)

(assert (=> b!4110935 m!4713063))

(declare-fun m!4713065 () Bool)

(assert (=> b!4110932 m!4713065))

(declare-fun m!4713067 () Bool)

(assert (=> b!4110932 m!4713067))

(declare-fun m!4713069 () Bool)

(assert (=> b!4110934 m!4713069))

(declare-fun m!4713071 () Bool)

(assert (=> b!4110934 m!4713071))

(declare-fun m!4713073 () Bool)

(assert (=> b!4110925 m!4713073))

(declare-fun m!4713075 () Bool)

(assert (=> b!4110926 m!4713075))

(declare-fun m!4713077 () Bool)

(assert (=> b!4110929 m!4713077))

(declare-fun m!4713079 () Bool)

(assert (=> b!4110929 m!4713079))

(check-sat (not b_next!116335) (not b!4110925) b_and!317515 b_and!317519 b_and!317523 (not b_next!116339) (not b_next!116341) (not b!4110926) (not b!4110932) (not b!4110934) b_and!317521 (not b!4110935) b_and!317513 (not b!4110929) (not b_next!116331) (not b!4110928) (not b_next!116333) b_and!317517 (not b_next!116337) (not b!4110930))
(check-sat (not b_next!116335) b_and!317521 b_and!317513 b_and!317515 b_and!317519 b_and!317523 (not b_next!116331) (not b_next!116339) (not b_next!116341) (not b_next!116333) b_and!317517 (not b_next!116337))
(get-model)

(declare-fun d!1219640 () Bool)

(declare-fun lambda!128438 () Int)

(declare-fun foldLeft!2 (List!44408 (InoxSet String!50909) Int) (InoxSet String!50909))

(assert (=> d!1219640 (= (toSet!7 lt!1468231) (foldLeft!2 lt!1468231 ((as const (Array String!50909 Bool)) false) lambda!128438))))

(declare-fun bs!594273 () Bool)

(assert (= bs!594273 d!1219640))

(declare-fun m!4713081 () Bool)

(assert (=> bs!594273 m!4713081))

(assert (=> b!4110928 d!1219640))

(declare-fun bs!594274 () Bool)

(declare-fun d!1219642 () Bool)

(assert (= bs!594274 (and d!1219642 d!1219640)))

(declare-fun lambda!128439 () Int)

(assert (=> bs!594274 (= lambda!128439 lambda!128438)))

(assert (=> d!1219642 (= (toSet!7 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284))) (foldLeft!2 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)) ((as const (Array String!50909 Bool)) false) lambda!128439))))

(declare-fun bs!594275 () Bool)

(assert (= bs!594275 d!1219642))

(declare-fun m!4713083 () Bool)

(assert (=> bs!594275 m!4713083))

(assert (=> b!4110928 d!1219642))

(declare-fun d!1219644 () Bool)

(declare-fun res!1679718 () Bool)

(declare-fun e!2550668 () Bool)

(assert (=> d!1219644 (=> res!1679718 e!2550668)))

(assert (=> d!1219644 (= res!1679718 ((_ is Nil!44287) lt!1468229))))

(assert (=> d!1219644 (= (noDuplicateTag!2879 thiss!26878 lt!1468229 lt!1468230) e!2550668)))

(declare-fun b!4110940 () Bool)

(declare-fun e!2550669 () Bool)

(assert (=> b!4110940 (= e!2550668 e!2550669)))

(declare-fun res!1679719 () Bool)

(assert (=> b!4110940 (=> (not res!1679719) (not e!2550669))))

(declare-fun contains!8877 (List!44408 String!50909) Bool)

(assert (=> b!4110940 (= res!1679719 (not (contains!8877 lt!1468230 (tag!8062 (h!49707 lt!1468229)))))))

(declare-fun b!4110941 () Bool)

(assert (=> b!4110941 (= e!2550669 (noDuplicateTag!2879 thiss!26878 (t!340162 lt!1468229) (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230)))))

(assert (= (and d!1219644 (not res!1679718)) b!4110940))

(assert (= (and b!4110940 res!1679719) b!4110941))

(declare-fun m!4713085 () Bool)

(assert (=> b!4110940 m!4713085))

(declare-fun m!4713087 () Bool)

(assert (=> b!4110941 m!4713087))

(assert (=> b!4110926 d!1219644))

(declare-fun d!1219648 () Bool)

(assert (=> d!1219648 (= (inv!58914 (tag!8062 e1!99)) (= (mod (str.len (value!225828 (tag!8062 e1!99))) 2) 0))))

(assert (=> b!4110932 d!1219648))

(declare-fun d!1219650 () Bool)

(declare-fun res!1679728 () Bool)

(declare-fun e!2550678 () Bool)

(assert (=> d!1219650 (=> (not res!1679728) (not e!2550678))))

(declare-fun semiInverseModEq!3103 (Int Int) Bool)

(assert (=> d!1219650 (= res!1679728 (semiInverseModEq!3103 (toChars!9693 (transformation!7202 e1!99)) (toValue!9834 (transformation!7202 e1!99))))))

(assert (=> d!1219650 (= (inv!58916 (transformation!7202 e1!99)) e!2550678)))

(declare-fun b!4110950 () Bool)

(declare-fun equivClasses!3002 (Int Int) Bool)

(assert (=> b!4110950 (= e!2550678 (equivClasses!3002 (toChars!9693 (transformation!7202 e1!99)) (toValue!9834 (transformation!7202 e1!99))))))

(assert (= (and d!1219650 res!1679728) b!4110950))

(declare-fun m!4713093 () Bool)

(assert (=> d!1219650 m!4713093))

(declare-fun m!4713095 () Bool)

(assert (=> b!4110950 m!4713095))

(assert (=> b!4110932 d!1219650))

(declare-fun d!1219656 () Bool)

(declare-fun res!1679729 () Bool)

(declare-fun e!2550679 () Bool)

(assert (=> d!1219656 (=> res!1679729 e!2550679)))

(assert (=> d!1219656 (= res!1679729 ((_ is Nil!44287) l!6462))))

(assert (=> d!1219656 (= (noDuplicateTag!2879 thiss!26878 l!6462 lt!1468231) e!2550679)))

(declare-fun b!4110951 () Bool)

(declare-fun e!2550680 () Bool)

(assert (=> b!4110951 (= e!2550679 e!2550680)))

(declare-fun res!1679730 () Bool)

(assert (=> b!4110951 (=> (not res!1679730) (not e!2550680))))

(assert (=> b!4110951 (= res!1679730 (not (contains!8877 lt!1468231 (tag!8062 (h!49707 l!6462)))))))

(declare-fun b!4110952 () Bool)

(assert (=> b!4110952 (= e!2550680 (noDuplicateTag!2879 thiss!26878 (t!340162 l!6462) (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231)))))

(assert (= (and d!1219656 (not res!1679729)) b!4110951))

(assert (= (and b!4110951 res!1679730) b!4110952))

(declare-fun m!4713097 () Bool)

(assert (=> b!4110951 m!4713097))

(declare-fun m!4713099 () Bool)

(assert (=> b!4110952 m!4713099))

(assert (=> b!4110925 d!1219656))

(declare-fun d!1219658 () Bool)

(assert (=> d!1219658 (= (inv!58914 (tag!8062 e2!99)) (= (mod (str.len (value!225828 (tag!8062 e2!99))) 2) 0))))

(assert (=> b!4110929 d!1219658))

(declare-fun d!1219660 () Bool)

(declare-fun res!1679731 () Bool)

(declare-fun e!2550681 () Bool)

(assert (=> d!1219660 (=> (not res!1679731) (not e!2550681))))

(assert (=> d!1219660 (= res!1679731 (semiInverseModEq!3103 (toChars!9693 (transformation!7202 e2!99)) (toValue!9834 (transformation!7202 e2!99))))))

(assert (=> d!1219660 (= (inv!58916 (transformation!7202 e2!99)) e!2550681)))

(declare-fun b!4110953 () Bool)

(assert (=> b!4110953 (= e!2550681 (equivClasses!3002 (toChars!9693 (transformation!7202 e2!99)) (toValue!9834 (transformation!7202 e2!99))))))

(assert (= (and d!1219660 res!1679731) b!4110953))

(declare-fun m!4713101 () Bool)

(assert (=> d!1219660 m!4713101))

(declare-fun m!4713103 () Bool)

(assert (=> b!4110953 m!4713103))

(assert (=> b!4110929 d!1219660))

(declare-fun d!1219662 () Bool)

(assert (=> d!1219662 (= (inv!58914 (tag!8062 (h!49707 l!6462))) (= (mod (str.len (value!225828 (tag!8062 (h!49707 l!6462)))) 2) 0))))

(assert (=> b!4110934 d!1219662))

(declare-fun d!1219664 () Bool)

(declare-fun res!1679732 () Bool)

(declare-fun e!2550682 () Bool)

(assert (=> d!1219664 (=> (not res!1679732) (not e!2550682))))

(assert (=> d!1219664 (= res!1679732 (semiInverseModEq!3103 (toChars!9693 (transformation!7202 (h!49707 l!6462))) (toValue!9834 (transformation!7202 (h!49707 l!6462)))))))

(assert (=> d!1219664 (= (inv!58916 (transformation!7202 (h!49707 l!6462))) e!2550682)))

(declare-fun b!4110954 () Bool)

(assert (=> b!4110954 (= e!2550682 (equivClasses!3002 (toChars!9693 (transformation!7202 (h!49707 l!6462))) (toValue!9834 (transformation!7202 (h!49707 l!6462)))))))

(assert (= (and d!1219664 res!1679732) b!4110954))

(declare-fun m!4713105 () Bool)

(assert (=> d!1219664 m!4713105))

(declare-fun m!4713107 () Bool)

(assert (=> b!4110954 m!4713107))

(assert (=> b!4110934 d!1219664))

(declare-fun d!1219666 () Bool)

(declare-fun res!1679733 () Bool)

(declare-fun e!2550683 () Bool)

(assert (=> d!1219666 (=> res!1679733 e!2550683)))

(assert (=> d!1219666 (= res!1679733 ((_ is Nil!44287) (Cons!44287 e1!99 lt!1468229)))))

(assert (=> d!1219666 (= (noDuplicateTag!2879 thiss!26878 (Cons!44287 e1!99 lt!1468229) Nil!44284) e!2550683)))

(declare-fun b!4110955 () Bool)

(declare-fun e!2550684 () Bool)

(assert (=> b!4110955 (= e!2550683 e!2550684)))

(declare-fun res!1679734 () Bool)

(assert (=> b!4110955 (=> (not res!1679734) (not e!2550684))))

(assert (=> b!4110955 (= res!1679734 (not (contains!8877 Nil!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))))))))

(declare-fun b!4110956 () Bool)

(assert (=> b!4110956 (= e!2550684 (noDuplicateTag!2879 thiss!26878 (t!340162 (Cons!44287 e1!99 lt!1468229)) (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284)))))

(assert (= (and d!1219666 (not res!1679733)) b!4110955))

(assert (= (and b!4110955 res!1679734) b!4110956))

(declare-fun m!4713109 () Bool)

(assert (=> b!4110955 m!4713109))

(declare-fun m!4713111 () Bool)

(assert (=> b!4110956 m!4713111))

(assert (=> b!4110935 d!1219666))

(declare-fun b!4110972 () Bool)

(declare-fun e!2550690 () Bool)

(declare-fun tp!1249798 () Bool)

(assert (=> b!4110972 (= e!2550690 tp!1249798)))

(declare-fun b!4110973 () Bool)

(declare-fun tp!1249797 () Bool)

(declare-fun tp!1249801 () Bool)

(assert (=> b!4110973 (= e!2550690 (and tp!1249797 tp!1249801))))

(assert (=> b!4110932 (= tp!1249781 e!2550690)))

(declare-fun b!4110971 () Bool)

(declare-fun tp!1249799 () Bool)

(declare-fun tp!1249800 () Bool)

(assert (=> b!4110971 (= e!2550690 (and tp!1249799 tp!1249800))))

(declare-fun b!4110970 () Bool)

(declare-fun tp_is_empty!21163 () Bool)

(assert (=> b!4110970 (= e!2550690 tp_is_empty!21163)))

(assert (= (and b!4110932 ((_ is ElementMatch!12107) (regex!7202 e1!99))) b!4110970))

(assert (= (and b!4110932 ((_ is Concat!19540) (regex!7202 e1!99))) b!4110971))

(assert (= (and b!4110932 ((_ is Star!12107) (regex!7202 e1!99))) b!4110972))

(assert (= (and b!4110932 ((_ is Union!12107) (regex!7202 e1!99))) b!4110973))

(declare-fun b!4110986 () Bool)

(declare-fun b_free!115639 () Bool)

(declare-fun b_next!116343 () Bool)

(assert (=> b!4110986 (= b_free!115639 (not b_next!116343))))

(declare-fun tp!1249813 () Bool)

(declare-fun b_and!317525 () Bool)

(assert (=> b!4110986 (= tp!1249813 b_and!317525)))

(declare-fun b_free!115641 () Bool)

(declare-fun b_next!116345 () Bool)

(assert (=> b!4110986 (= b_free!115641 (not b_next!116345))))

(declare-fun tp!1249812 () Bool)

(declare-fun b_and!317527 () Bool)

(assert (=> b!4110986 (= tp!1249812 b_and!317527)))

(declare-fun e!2550702 () Bool)

(assert (=> b!4110986 (= e!2550702 (and tp!1249813 tp!1249812))))

(declare-fun e!2550703 () Bool)

(declare-fun b!4110985 () Bool)

(declare-fun tp!1249811 () Bool)

(assert (=> b!4110985 (= e!2550703 (and tp!1249811 (inv!58914 (tag!8062 (h!49707 (t!340162 l!6462)))) (inv!58916 (transformation!7202 (h!49707 (t!340162 l!6462)))) e!2550702))))

(declare-fun b!4110984 () Bool)

(declare-fun e!2550701 () Bool)

(declare-fun tp!1249810 () Bool)

(assert (=> b!4110984 (= e!2550701 (and e!2550703 tp!1249810))))

(assert (=> b!4110930 (= tp!1249783 e!2550701)))

(assert (= b!4110985 b!4110986))

(assert (= b!4110984 b!4110985))

(assert (= (and b!4110930 ((_ is Cons!44287) (t!340162 l!6462))) b!4110984))

(declare-fun m!4713121 () Bool)

(assert (=> b!4110985 m!4713121))

(declare-fun m!4713123 () Bool)

(assert (=> b!4110985 m!4713123))

(declare-fun b!4110989 () Bool)

(declare-fun e!2550705 () Bool)

(declare-fun tp!1249815 () Bool)

(assert (=> b!4110989 (= e!2550705 tp!1249815)))

(declare-fun b!4110990 () Bool)

(declare-fun tp!1249814 () Bool)

(declare-fun tp!1249818 () Bool)

(assert (=> b!4110990 (= e!2550705 (and tp!1249814 tp!1249818))))

(assert (=> b!4110929 (= tp!1249779 e!2550705)))

(declare-fun b!4110988 () Bool)

(declare-fun tp!1249816 () Bool)

(declare-fun tp!1249817 () Bool)

(assert (=> b!4110988 (= e!2550705 (and tp!1249816 tp!1249817))))

(declare-fun b!4110987 () Bool)

(assert (=> b!4110987 (= e!2550705 tp_is_empty!21163)))

(assert (= (and b!4110929 ((_ is ElementMatch!12107) (regex!7202 e2!99))) b!4110987))

(assert (= (and b!4110929 ((_ is Concat!19540) (regex!7202 e2!99))) b!4110988))

(assert (= (and b!4110929 ((_ is Star!12107) (regex!7202 e2!99))) b!4110989))

(assert (= (and b!4110929 ((_ is Union!12107) (regex!7202 e2!99))) b!4110990))

(declare-fun b!4110993 () Bool)

(declare-fun e!2550706 () Bool)

(declare-fun tp!1249820 () Bool)

(assert (=> b!4110993 (= e!2550706 tp!1249820)))

(declare-fun b!4110994 () Bool)

(declare-fun tp!1249819 () Bool)

(declare-fun tp!1249823 () Bool)

(assert (=> b!4110994 (= e!2550706 (and tp!1249819 tp!1249823))))

(assert (=> b!4110934 (= tp!1249786 e!2550706)))

(declare-fun b!4110992 () Bool)

(declare-fun tp!1249821 () Bool)

(declare-fun tp!1249822 () Bool)

(assert (=> b!4110992 (= e!2550706 (and tp!1249821 tp!1249822))))

(declare-fun b!4110991 () Bool)

(assert (=> b!4110991 (= e!2550706 tp_is_empty!21163)))

(assert (= (and b!4110934 ((_ is ElementMatch!12107) (regex!7202 (h!49707 l!6462)))) b!4110991))

(assert (= (and b!4110934 ((_ is Concat!19540) (regex!7202 (h!49707 l!6462)))) b!4110992))

(assert (= (and b!4110934 ((_ is Star!12107) (regex!7202 (h!49707 l!6462)))) b!4110993))

(assert (= (and b!4110934 ((_ is Union!12107) (regex!7202 (h!49707 l!6462)))) b!4110994))

(check-sat (not b!4110993) b_and!317515 (not b!4110992) b_and!317519 (not b_next!116331) (not b!4110950) (not b!4110989) (not b!4110988) (not b_next!116341) (not b!4110985) (not b!4110941) (not b!4110956) (not b_next!116343) (not b_next!116335) tp_is_empty!21163 (not b!4110990) (not b!4110984) (not b!4110972) b_and!317521 (not b!4110940) (not b!4110951) (not b!4110954) (not d!1219642) b_and!317513 (not b!4110994) (not d!1219650) (not b_next!116345) b_and!317523 b_and!317527 (not b_next!116339) (not b!4110953) (not d!1219640) (not b!4110955) (not b_next!116333) (not b!4110971) b_and!317525 (not d!1219660) (not b!4110952) (not d!1219664) b_and!317517 (not b_next!116337) (not b!4110973))
(check-sat b_and!317521 b_and!317513 b_and!317515 b_and!317519 (not b_next!116331) (not b_next!116339) (not b_next!116341) (not b_next!116333) b_and!317525 (not b_next!116343) (not b_next!116335) (not b_next!116345) b_and!317523 b_and!317527 b_and!317517 (not b_next!116337))
(get-model)

(declare-fun d!1219684 () Bool)

(assert (=> d!1219684 true))

(declare-fun order!23297 () Int)

(declare-fun lambda!128446 () Int)

(declare-fun order!23295 () Int)

(declare-fun dynLambda!18928 (Int Int) Int)

(declare-fun dynLambda!18929 (Int Int) Int)

(assert (=> d!1219684 (< (dynLambda!18928 order!23295 (toChars!9693 (transformation!7202 e2!99))) (dynLambda!18929 order!23297 lambda!128446))))

(assert (=> d!1219684 true))

(declare-fun order!23299 () Int)

(declare-fun dynLambda!18930 (Int Int) Int)

(assert (=> d!1219684 (< (dynLambda!18930 order!23299 (toValue!9834 (transformation!7202 e2!99))) (dynLambda!18929 order!23297 lambda!128446))))

(declare-fun Forall!1535 (Int) Bool)

(assert (=> d!1219684 (= (semiInverseModEq!3103 (toChars!9693 (transformation!7202 e2!99)) (toValue!9834 (transformation!7202 e2!99))) (Forall!1535 lambda!128446))))

(declare-fun bs!594279 () Bool)

(assert (= bs!594279 d!1219684))

(declare-fun m!4713145 () Bool)

(assert (=> bs!594279 m!4713145))

(assert (=> d!1219660 d!1219684))

(declare-fun bs!594280 () Bool)

(declare-fun d!1219688 () Bool)

(assert (= bs!594280 (and d!1219688 d!1219684)))

(declare-fun lambda!128447 () Int)

(assert (=> bs!594280 (= (and (= (toChars!9693 (transformation!7202 (h!49707 l!6462))) (toChars!9693 (transformation!7202 e2!99))) (= (toValue!9834 (transformation!7202 (h!49707 l!6462))) (toValue!9834 (transformation!7202 e2!99)))) (= lambda!128447 lambda!128446))))

(assert (=> d!1219688 true))

(assert (=> d!1219688 (< (dynLambda!18928 order!23295 (toChars!9693 (transformation!7202 (h!49707 l!6462)))) (dynLambda!18929 order!23297 lambda!128447))))

(assert (=> d!1219688 true))

(assert (=> d!1219688 (< (dynLambda!18930 order!23299 (toValue!9834 (transformation!7202 (h!49707 l!6462)))) (dynLambda!18929 order!23297 lambda!128447))))

(assert (=> d!1219688 (= (semiInverseModEq!3103 (toChars!9693 (transformation!7202 (h!49707 l!6462))) (toValue!9834 (transformation!7202 (h!49707 l!6462)))) (Forall!1535 lambda!128447))))

(declare-fun bs!594281 () Bool)

(assert (= bs!594281 d!1219688))

(declare-fun m!4713147 () Bool)

(assert (=> bs!594281 m!4713147))

(assert (=> d!1219664 d!1219688))

(declare-fun d!1219690 () Bool)

(declare-fun res!1679752 () Bool)

(declare-fun e!2550728 () Bool)

(assert (=> d!1219690 (=> res!1679752 e!2550728)))

(assert (=> d!1219690 (= res!1679752 ((_ is Nil!44287) (t!340162 l!6462)))))

(assert (=> d!1219690 (= (noDuplicateTag!2879 thiss!26878 (t!340162 l!6462) (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231)) e!2550728)))

(declare-fun b!4111036 () Bool)

(declare-fun e!2550729 () Bool)

(assert (=> b!4111036 (= e!2550728 e!2550729)))

(declare-fun res!1679753 () Bool)

(assert (=> b!4111036 (=> (not res!1679753) (not e!2550729))))

(assert (=> b!4111036 (= res!1679753 (not (contains!8877 (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231) (tag!8062 (h!49707 (t!340162 l!6462))))))))

(declare-fun b!4111037 () Bool)

(assert (=> b!4111037 (= e!2550729 (noDuplicateTag!2879 thiss!26878 (t!340162 (t!340162 l!6462)) (Cons!44284 (tag!8062 (h!49707 (t!340162 l!6462))) (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231))))))

(assert (= (and d!1219690 (not res!1679752)) b!4111036))

(assert (= (and b!4111036 res!1679753) b!4111037))

(declare-fun m!4713149 () Bool)

(assert (=> b!4111036 m!4713149))

(declare-fun m!4713151 () Bool)

(assert (=> b!4111037 m!4713151))

(assert (=> b!4110952 d!1219690))

(declare-fun d!1219692 () Bool)

(assert (=> d!1219692 true))

(declare-fun order!23301 () Int)

(declare-fun lambda!128450 () Int)

(declare-fun dynLambda!18931 (Int Int) Int)

(assert (=> d!1219692 (< (dynLambda!18930 order!23299 (toValue!9834 (transformation!7202 (h!49707 l!6462)))) (dynLambda!18931 order!23301 lambda!128450))))

(declare-fun Forall2!1134 (Int) Bool)

(assert (=> d!1219692 (= (equivClasses!3002 (toChars!9693 (transformation!7202 (h!49707 l!6462))) (toValue!9834 (transformation!7202 (h!49707 l!6462)))) (Forall2!1134 lambda!128450))))

(declare-fun bs!594282 () Bool)

(assert (= bs!594282 d!1219692))

(declare-fun m!4713153 () Bool)

(assert (=> bs!594282 m!4713153))

(assert (=> b!4110954 d!1219692))

(declare-fun d!1219694 () Bool)

(declare-fun c!706860 () Bool)

(assert (=> d!1219694 (= c!706860 ((_ is Nil!44284) lt!1468231))))

(declare-fun e!2550734 () (InoxSet String!50909))

(assert (=> d!1219694 (= (foldLeft!2 lt!1468231 ((as const (Array String!50909 Bool)) false) lambda!128438) e!2550734)))

(declare-fun b!4111046 () Bool)

(assert (=> b!4111046 (= e!2550734 ((as const (Array String!50909 Bool)) false))))

(declare-fun b!4111047 () Bool)

(declare-fun dynLambda!18932 (Int (InoxSet String!50909) String!50909) (InoxSet String!50909))

(assert (=> b!4111047 (= e!2550734 (foldLeft!2 (t!340159 lt!1468231) (dynLambda!18932 lambda!128438 ((as const (Array String!50909 Bool)) false) (h!49704 lt!1468231)) lambda!128438))))

(assert (= (and d!1219694 c!706860) b!4111046))

(assert (= (and d!1219694 (not c!706860)) b!4111047))

(declare-fun b_lambda!120631 () Bool)

(assert (=> (not b_lambda!120631) (not b!4111047)))

(declare-fun m!4713155 () Bool)

(assert (=> b!4111047 m!4713155))

(assert (=> b!4111047 m!4713155))

(declare-fun m!4713157 () Bool)

(assert (=> b!4111047 m!4713157))

(assert (=> d!1219640 d!1219694))

(declare-fun bs!594283 () Bool)

(declare-fun d!1219696 () Bool)

(assert (= bs!594283 (and d!1219696 d!1219692)))

(declare-fun lambda!128451 () Int)

(assert (=> bs!594283 (= (= (toValue!9834 (transformation!7202 e2!99)) (toValue!9834 (transformation!7202 (h!49707 l!6462)))) (= lambda!128451 lambda!128450))))

(assert (=> d!1219696 true))

(assert (=> d!1219696 (< (dynLambda!18930 order!23299 (toValue!9834 (transformation!7202 e2!99))) (dynLambda!18931 order!23301 lambda!128451))))

(assert (=> d!1219696 (= (equivClasses!3002 (toChars!9693 (transformation!7202 e2!99)) (toValue!9834 (transformation!7202 e2!99))) (Forall2!1134 lambda!128451))))

(declare-fun bs!594284 () Bool)

(assert (= bs!594284 d!1219696))

(declare-fun m!4713159 () Bool)

(assert (=> bs!594284 m!4713159))

(assert (=> b!4110953 d!1219696))

(declare-fun bs!594285 () Bool)

(declare-fun d!1219698 () Bool)

(assert (= bs!594285 (and d!1219698 d!1219692)))

(declare-fun lambda!128452 () Int)

(assert (=> bs!594285 (= (= (toValue!9834 (transformation!7202 e1!99)) (toValue!9834 (transformation!7202 (h!49707 l!6462)))) (= lambda!128452 lambda!128450))))

(declare-fun bs!594286 () Bool)

(assert (= bs!594286 (and d!1219698 d!1219696)))

(assert (=> bs!594286 (= (= (toValue!9834 (transformation!7202 e1!99)) (toValue!9834 (transformation!7202 e2!99))) (= lambda!128452 lambda!128451))))

(assert (=> d!1219698 true))

(assert (=> d!1219698 (< (dynLambda!18930 order!23299 (toValue!9834 (transformation!7202 e1!99))) (dynLambda!18931 order!23301 lambda!128452))))

(assert (=> d!1219698 (= (equivClasses!3002 (toChars!9693 (transformation!7202 e1!99)) (toValue!9834 (transformation!7202 e1!99))) (Forall2!1134 lambda!128452))))

(declare-fun bs!594287 () Bool)

(assert (= bs!594287 d!1219698))

(declare-fun m!4713161 () Bool)

(assert (=> bs!594287 m!4713161))

(assert (=> b!4110950 d!1219698))

(declare-fun d!1219700 () Bool)

(declare-fun lt!1468234 () Bool)

(declare-fun content!6823 (List!44408) (InoxSet String!50909))

(assert (=> d!1219700 (= lt!1468234 (select (content!6823 lt!1468231) (tag!8062 (h!49707 l!6462))))))

(declare-fun e!2550740 () Bool)

(assert (=> d!1219700 (= lt!1468234 e!2550740)))

(declare-fun res!1679761 () Bool)

(assert (=> d!1219700 (=> (not res!1679761) (not e!2550740))))

(assert (=> d!1219700 (= res!1679761 ((_ is Cons!44284) lt!1468231))))

(assert (=> d!1219700 (= (contains!8877 lt!1468231 (tag!8062 (h!49707 l!6462))) lt!1468234)))

(declare-fun b!4111052 () Bool)

(declare-fun e!2550739 () Bool)

(assert (=> b!4111052 (= e!2550740 e!2550739)))

(declare-fun res!1679760 () Bool)

(assert (=> b!4111052 (=> res!1679760 e!2550739)))

(assert (=> b!4111052 (= res!1679760 (= (h!49704 lt!1468231) (tag!8062 (h!49707 l!6462))))))

(declare-fun b!4111053 () Bool)

(assert (=> b!4111053 (= e!2550739 (contains!8877 (t!340159 lt!1468231) (tag!8062 (h!49707 l!6462))))))

(assert (= (and d!1219700 res!1679761) b!4111052))

(assert (= (and b!4111052 (not res!1679760)) b!4111053))

(declare-fun m!4713163 () Bool)

(assert (=> d!1219700 m!4713163))

(declare-fun m!4713165 () Bool)

(assert (=> d!1219700 m!4713165))

(declare-fun m!4713167 () Bool)

(assert (=> b!4111053 m!4713167))

(assert (=> b!4110951 d!1219700))

(declare-fun d!1219702 () Bool)

(declare-fun lt!1468235 () Bool)

(assert (=> d!1219702 (= lt!1468235 (select (content!6823 Nil!44284) (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229)))))))

(declare-fun e!2550742 () Bool)

(assert (=> d!1219702 (= lt!1468235 e!2550742)))

(declare-fun res!1679763 () Bool)

(assert (=> d!1219702 (=> (not res!1679763) (not e!2550742))))

(assert (=> d!1219702 (= res!1679763 ((_ is Cons!44284) Nil!44284))))

(assert (=> d!1219702 (= (contains!8877 Nil!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229)))) lt!1468235)))

(declare-fun b!4111054 () Bool)

(declare-fun e!2550741 () Bool)

(assert (=> b!4111054 (= e!2550742 e!2550741)))

(declare-fun res!1679762 () Bool)

(assert (=> b!4111054 (=> res!1679762 e!2550741)))

(assert (=> b!4111054 (= res!1679762 (= (h!49704 Nil!44284) (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229)))))))

(declare-fun b!4111055 () Bool)

(assert (=> b!4111055 (= e!2550741 (contains!8877 (t!340159 Nil!44284) (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229)))))))

(assert (= (and d!1219702 res!1679763) b!4111054))

(assert (= (and b!4111054 (not res!1679762)) b!4111055))

(declare-fun m!4713169 () Bool)

(assert (=> d!1219702 m!4713169))

(declare-fun m!4713171 () Bool)

(assert (=> d!1219702 m!4713171))

(declare-fun m!4713173 () Bool)

(assert (=> b!4111055 m!4713173))

(assert (=> b!4110955 d!1219702))

(declare-fun d!1219704 () Bool)

(declare-fun res!1679764 () Bool)

(declare-fun e!2550743 () Bool)

(assert (=> d!1219704 (=> res!1679764 e!2550743)))

(assert (=> d!1219704 (= res!1679764 ((_ is Nil!44287) (t!340162 (Cons!44287 e1!99 lt!1468229))))))

(assert (=> d!1219704 (= (noDuplicateTag!2879 thiss!26878 (t!340162 (Cons!44287 e1!99 lt!1468229)) (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284)) e!2550743)))

(declare-fun b!4111056 () Bool)

(declare-fun e!2550744 () Bool)

(assert (=> b!4111056 (= e!2550743 e!2550744)))

(declare-fun res!1679765 () Bool)

(assert (=> b!4111056 (=> (not res!1679765) (not e!2550744))))

(assert (=> b!4111056 (= res!1679765 (not (contains!8877 (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284) (tag!8062 (h!49707 (t!340162 (Cons!44287 e1!99 lt!1468229)))))))))

(declare-fun b!4111057 () Bool)

(assert (=> b!4111057 (= e!2550744 (noDuplicateTag!2879 thiss!26878 (t!340162 (t!340162 (Cons!44287 e1!99 lt!1468229))) (Cons!44284 (tag!8062 (h!49707 (t!340162 (Cons!44287 e1!99 lt!1468229)))) (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284))))))

(assert (= (and d!1219704 (not res!1679764)) b!4111056))

(assert (= (and b!4111056 res!1679765) b!4111057))

(declare-fun m!4713175 () Bool)

(assert (=> b!4111056 m!4713175))

(declare-fun m!4713177 () Bool)

(assert (=> b!4111057 m!4713177))

(assert (=> b!4110956 d!1219704))

(declare-fun d!1219706 () Bool)

(assert (=> d!1219706 (= (inv!58914 (tag!8062 (h!49707 (t!340162 l!6462)))) (= (mod (str.len (value!225828 (tag!8062 (h!49707 (t!340162 l!6462))))) 2) 0))))

(assert (=> b!4110985 d!1219706))

(declare-fun d!1219708 () Bool)

(declare-fun res!1679766 () Bool)

(declare-fun e!2550745 () Bool)

(assert (=> d!1219708 (=> (not res!1679766) (not e!2550745))))

(assert (=> d!1219708 (= res!1679766 (semiInverseModEq!3103 (toChars!9693 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462))))))))

(assert (=> d!1219708 (= (inv!58916 (transformation!7202 (h!49707 (t!340162 l!6462)))) e!2550745)))

(declare-fun b!4111058 () Bool)

(assert (=> b!4111058 (= e!2550745 (equivClasses!3002 (toChars!9693 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462))))))))

(assert (= (and d!1219708 res!1679766) b!4111058))

(declare-fun m!4713179 () Bool)

(assert (=> d!1219708 m!4713179))

(declare-fun m!4713181 () Bool)

(assert (=> b!4111058 m!4713181))

(assert (=> b!4110985 d!1219708))

(declare-fun bs!594288 () Bool)

(declare-fun d!1219710 () Bool)

(assert (= bs!594288 (and d!1219710 d!1219684)))

(declare-fun lambda!128453 () Int)

(assert (=> bs!594288 (= (and (= (toChars!9693 (transformation!7202 e1!99)) (toChars!9693 (transformation!7202 e2!99))) (= (toValue!9834 (transformation!7202 e1!99)) (toValue!9834 (transformation!7202 e2!99)))) (= lambda!128453 lambda!128446))))

(declare-fun bs!594289 () Bool)

(assert (= bs!594289 (and d!1219710 d!1219688)))

(assert (=> bs!594289 (= (and (= (toChars!9693 (transformation!7202 e1!99)) (toChars!9693 (transformation!7202 (h!49707 l!6462)))) (= (toValue!9834 (transformation!7202 e1!99)) (toValue!9834 (transformation!7202 (h!49707 l!6462))))) (= lambda!128453 lambda!128447))))

(assert (=> d!1219710 true))

(assert (=> d!1219710 (< (dynLambda!18928 order!23295 (toChars!9693 (transformation!7202 e1!99))) (dynLambda!18929 order!23297 lambda!128453))))

(assert (=> d!1219710 true))

(assert (=> d!1219710 (< (dynLambda!18930 order!23299 (toValue!9834 (transformation!7202 e1!99))) (dynLambda!18929 order!23297 lambda!128453))))

(assert (=> d!1219710 (= (semiInverseModEq!3103 (toChars!9693 (transformation!7202 e1!99)) (toValue!9834 (transformation!7202 e1!99))) (Forall!1535 lambda!128453))))

(declare-fun bs!594290 () Bool)

(assert (= bs!594290 d!1219710))

(declare-fun m!4713183 () Bool)

(assert (=> bs!594290 m!4713183))

(assert (=> d!1219650 d!1219710))

(declare-fun d!1219712 () Bool)

(declare-fun res!1679767 () Bool)

(declare-fun e!2550746 () Bool)

(assert (=> d!1219712 (=> res!1679767 e!2550746)))

(assert (=> d!1219712 (= res!1679767 ((_ is Nil!44287) (t!340162 lt!1468229)))))

(assert (=> d!1219712 (= (noDuplicateTag!2879 thiss!26878 (t!340162 lt!1468229) (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230)) e!2550746)))

(declare-fun b!4111059 () Bool)

(declare-fun e!2550747 () Bool)

(assert (=> b!4111059 (= e!2550746 e!2550747)))

(declare-fun res!1679768 () Bool)

(assert (=> b!4111059 (=> (not res!1679768) (not e!2550747))))

(assert (=> b!4111059 (= res!1679768 (not (contains!8877 (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230) (tag!8062 (h!49707 (t!340162 lt!1468229))))))))

(declare-fun b!4111060 () Bool)

(assert (=> b!4111060 (= e!2550747 (noDuplicateTag!2879 thiss!26878 (t!340162 (t!340162 lt!1468229)) (Cons!44284 (tag!8062 (h!49707 (t!340162 lt!1468229))) (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230))))))

(assert (= (and d!1219712 (not res!1679767)) b!4111059))

(assert (= (and b!4111059 res!1679768) b!4111060))

(declare-fun m!4713185 () Bool)

(assert (=> b!4111059 m!4713185))

(declare-fun m!4713187 () Bool)

(assert (=> b!4111060 m!4713187))

(assert (=> b!4110941 d!1219712))

(declare-fun d!1219714 () Bool)

(declare-fun c!706861 () Bool)

(assert (=> d!1219714 (= c!706861 ((_ is Nil!44284) (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284))))))

(declare-fun e!2550748 () (InoxSet String!50909))

(assert (=> d!1219714 (= (foldLeft!2 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)) ((as const (Array String!50909 Bool)) false) lambda!128439) e!2550748)))

(declare-fun b!4111061 () Bool)

(assert (=> b!4111061 (= e!2550748 ((as const (Array String!50909 Bool)) false))))

(declare-fun b!4111062 () Bool)

(assert (=> b!4111062 (= e!2550748 (foldLeft!2 (t!340159 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284))) (dynLambda!18932 lambda!128439 ((as const (Array String!50909 Bool)) false) (h!49704 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)))) lambda!128439))))

(assert (= (and d!1219714 c!706861) b!4111061))

(assert (= (and d!1219714 (not c!706861)) b!4111062))

(declare-fun b_lambda!120633 () Bool)

(assert (=> (not b_lambda!120633) (not b!4111062)))

(declare-fun m!4713189 () Bool)

(assert (=> b!4111062 m!4713189))

(assert (=> b!4111062 m!4713189))

(declare-fun m!4713191 () Bool)

(assert (=> b!4111062 m!4713191))

(assert (=> d!1219642 d!1219714))

(declare-fun d!1219716 () Bool)

(declare-fun lt!1468236 () Bool)

(assert (=> d!1219716 (= lt!1468236 (select (content!6823 lt!1468230) (tag!8062 (h!49707 lt!1468229))))))

(declare-fun e!2550750 () Bool)

(assert (=> d!1219716 (= lt!1468236 e!2550750)))

(declare-fun res!1679770 () Bool)

(assert (=> d!1219716 (=> (not res!1679770) (not e!2550750))))

(assert (=> d!1219716 (= res!1679770 ((_ is Cons!44284) lt!1468230))))

(assert (=> d!1219716 (= (contains!8877 lt!1468230 (tag!8062 (h!49707 lt!1468229))) lt!1468236)))

(declare-fun b!4111063 () Bool)

(declare-fun e!2550749 () Bool)

(assert (=> b!4111063 (= e!2550750 e!2550749)))

(declare-fun res!1679769 () Bool)

(assert (=> b!4111063 (=> res!1679769 e!2550749)))

(assert (=> b!4111063 (= res!1679769 (= (h!49704 lt!1468230) (tag!8062 (h!49707 lt!1468229))))))

(declare-fun b!4111064 () Bool)

(assert (=> b!4111064 (= e!2550749 (contains!8877 (t!340159 lt!1468230) (tag!8062 (h!49707 lt!1468229))))))

(assert (= (and d!1219716 res!1679770) b!4111063))

(assert (= (and b!4111063 (not res!1679769)) b!4111064))

(declare-fun m!4713193 () Bool)

(assert (=> d!1219716 m!4713193))

(declare-fun m!4713195 () Bool)

(assert (=> d!1219716 m!4713195))

(declare-fun m!4713197 () Bool)

(assert (=> b!4111064 m!4713197))

(assert (=> b!4110940 d!1219716))

(declare-fun b!4111067 () Bool)

(declare-fun e!2550751 () Bool)

(declare-fun tp!1249862 () Bool)

(assert (=> b!4111067 (= e!2550751 tp!1249862)))

(declare-fun b!4111068 () Bool)

(declare-fun tp!1249861 () Bool)

(declare-fun tp!1249865 () Bool)

(assert (=> b!4111068 (= e!2550751 (and tp!1249861 tp!1249865))))

(assert (=> b!4110989 (= tp!1249815 e!2550751)))

(declare-fun b!4111066 () Bool)

(declare-fun tp!1249863 () Bool)

(declare-fun tp!1249864 () Bool)

(assert (=> b!4111066 (= e!2550751 (and tp!1249863 tp!1249864))))

(declare-fun b!4111065 () Bool)

(assert (=> b!4111065 (= e!2550751 tp_is_empty!21163)))

(assert (= (and b!4110989 ((_ is ElementMatch!12107) (reg!12436 (regex!7202 e2!99)))) b!4111065))

(assert (= (and b!4110989 ((_ is Concat!19540) (reg!12436 (regex!7202 e2!99)))) b!4111066))

(assert (= (and b!4110989 ((_ is Star!12107) (reg!12436 (regex!7202 e2!99)))) b!4111067))

(assert (= (and b!4110989 ((_ is Union!12107) (reg!12436 (regex!7202 e2!99)))) b!4111068))

(declare-fun b!4111071 () Bool)

(declare-fun e!2550752 () Bool)

(declare-fun tp!1249867 () Bool)

(assert (=> b!4111071 (= e!2550752 tp!1249867)))

(declare-fun b!4111072 () Bool)

(declare-fun tp!1249866 () Bool)

(declare-fun tp!1249870 () Bool)

(assert (=> b!4111072 (= e!2550752 (and tp!1249866 tp!1249870))))

(assert (=> b!4110973 (= tp!1249797 e!2550752)))

(declare-fun b!4111070 () Bool)

(declare-fun tp!1249868 () Bool)

(declare-fun tp!1249869 () Bool)

(assert (=> b!4111070 (= e!2550752 (and tp!1249868 tp!1249869))))

(declare-fun b!4111069 () Bool)

(assert (=> b!4111069 (= e!2550752 tp_is_empty!21163)))

(assert (= (and b!4110973 ((_ is ElementMatch!12107) (regOne!24727 (regex!7202 e1!99)))) b!4111069))

(assert (= (and b!4110973 ((_ is Concat!19540) (regOne!24727 (regex!7202 e1!99)))) b!4111070))

(assert (= (and b!4110973 ((_ is Star!12107) (regOne!24727 (regex!7202 e1!99)))) b!4111071))

(assert (= (and b!4110973 ((_ is Union!12107) (regOne!24727 (regex!7202 e1!99)))) b!4111072))

(declare-fun b!4111075 () Bool)

(declare-fun e!2550753 () Bool)

(declare-fun tp!1249872 () Bool)

(assert (=> b!4111075 (= e!2550753 tp!1249872)))

(declare-fun b!4111076 () Bool)

(declare-fun tp!1249871 () Bool)

(declare-fun tp!1249875 () Bool)

(assert (=> b!4111076 (= e!2550753 (and tp!1249871 tp!1249875))))

(assert (=> b!4110973 (= tp!1249801 e!2550753)))

(declare-fun b!4111074 () Bool)

(declare-fun tp!1249873 () Bool)

(declare-fun tp!1249874 () Bool)

(assert (=> b!4111074 (= e!2550753 (and tp!1249873 tp!1249874))))

(declare-fun b!4111073 () Bool)

(assert (=> b!4111073 (= e!2550753 tp_is_empty!21163)))

(assert (= (and b!4110973 ((_ is ElementMatch!12107) (regTwo!24727 (regex!7202 e1!99)))) b!4111073))

(assert (= (and b!4110973 ((_ is Concat!19540) (regTwo!24727 (regex!7202 e1!99)))) b!4111074))

(assert (= (and b!4110973 ((_ is Star!12107) (regTwo!24727 (regex!7202 e1!99)))) b!4111075))

(assert (= (and b!4110973 ((_ is Union!12107) (regTwo!24727 (regex!7202 e1!99)))) b!4111076))

(declare-fun b!4111079 () Bool)

(declare-fun e!2550754 () Bool)

(declare-fun tp!1249877 () Bool)

(assert (=> b!4111079 (= e!2550754 tp!1249877)))

(declare-fun b!4111080 () Bool)

(declare-fun tp!1249876 () Bool)

(declare-fun tp!1249880 () Bool)

(assert (=> b!4111080 (= e!2550754 (and tp!1249876 tp!1249880))))

(assert (=> b!4110988 (= tp!1249816 e!2550754)))

(declare-fun b!4111078 () Bool)

(declare-fun tp!1249878 () Bool)

(declare-fun tp!1249879 () Bool)

(assert (=> b!4111078 (= e!2550754 (and tp!1249878 tp!1249879))))

(declare-fun b!4111077 () Bool)

(assert (=> b!4111077 (= e!2550754 tp_is_empty!21163)))

(assert (= (and b!4110988 ((_ is ElementMatch!12107) (regOne!24726 (regex!7202 e2!99)))) b!4111077))

(assert (= (and b!4110988 ((_ is Concat!19540) (regOne!24726 (regex!7202 e2!99)))) b!4111078))

(assert (= (and b!4110988 ((_ is Star!12107) (regOne!24726 (regex!7202 e2!99)))) b!4111079))

(assert (= (and b!4110988 ((_ is Union!12107) (regOne!24726 (regex!7202 e2!99)))) b!4111080))

(declare-fun b!4111083 () Bool)

(declare-fun e!2550755 () Bool)

(declare-fun tp!1249882 () Bool)

(assert (=> b!4111083 (= e!2550755 tp!1249882)))

(declare-fun b!4111084 () Bool)

(declare-fun tp!1249881 () Bool)

(declare-fun tp!1249885 () Bool)

(assert (=> b!4111084 (= e!2550755 (and tp!1249881 tp!1249885))))

(assert (=> b!4110988 (= tp!1249817 e!2550755)))

(declare-fun b!4111082 () Bool)

(declare-fun tp!1249883 () Bool)

(declare-fun tp!1249884 () Bool)

(assert (=> b!4111082 (= e!2550755 (and tp!1249883 tp!1249884))))

(declare-fun b!4111081 () Bool)

(assert (=> b!4111081 (= e!2550755 tp_is_empty!21163)))

(assert (= (and b!4110988 ((_ is ElementMatch!12107) (regTwo!24726 (regex!7202 e2!99)))) b!4111081))

(assert (= (and b!4110988 ((_ is Concat!19540) (regTwo!24726 (regex!7202 e2!99)))) b!4111082))

(assert (= (and b!4110988 ((_ is Star!12107) (regTwo!24726 (regex!7202 e2!99)))) b!4111083))

(assert (= (and b!4110988 ((_ is Union!12107) (regTwo!24726 (regex!7202 e2!99)))) b!4111084))

(declare-fun b!4111087 () Bool)

(declare-fun b_free!115647 () Bool)

(declare-fun b_next!116351 () Bool)

(assert (=> b!4111087 (= b_free!115647 (not b_next!116351))))

(declare-fun tp!1249889 () Bool)

(declare-fun b_and!317533 () Bool)

(assert (=> b!4111087 (= tp!1249889 b_and!317533)))

(declare-fun b_free!115649 () Bool)

(declare-fun b_next!116353 () Bool)

(assert (=> b!4111087 (= b_free!115649 (not b_next!116353))))

(declare-fun tp!1249888 () Bool)

(declare-fun b_and!317535 () Bool)

(assert (=> b!4111087 (= tp!1249888 b_and!317535)))

(declare-fun e!2550757 () Bool)

(assert (=> b!4111087 (= e!2550757 (and tp!1249889 tp!1249888))))

(declare-fun e!2550758 () Bool)

(declare-fun tp!1249887 () Bool)

(declare-fun b!4111086 () Bool)

(assert (=> b!4111086 (= e!2550758 (and tp!1249887 (inv!58914 (tag!8062 (h!49707 (t!340162 (t!340162 l!6462))))) (inv!58916 (transformation!7202 (h!49707 (t!340162 (t!340162 l!6462))))) e!2550757))))

(declare-fun b!4111085 () Bool)

(declare-fun e!2550756 () Bool)

(declare-fun tp!1249886 () Bool)

(assert (=> b!4111085 (= e!2550756 (and e!2550758 tp!1249886))))

(assert (=> b!4110984 (= tp!1249810 e!2550756)))

(assert (= b!4111086 b!4111087))

(assert (= b!4111085 b!4111086))

(assert (= (and b!4110984 ((_ is Cons!44287) (t!340162 (t!340162 l!6462)))) b!4111085))

(declare-fun m!4713199 () Bool)

(assert (=> b!4111086 m!4713199))

(declare-fun m!4713201 () Bool)

(assert (=> b!4111086 m!4713201))

(declare-fun b!4111090 () Bool)

(declare-fun e!2550760 () Bool)

(declare-fun tp!1249891 () Bool)

(assert (=> b!4111090 (= e!2550760 tp!1249891)))

(declare-fun b!4111091 () Bool)

(declare-fun tp!1249890 () Bool)

(declare-fun tp!1249894 () Bool)

(assert (=> b!4111091 (= e!2550760 (and tp!1249890 tp!1249894))))

(assert (=> b!4110990 (= tp!1249814 e!2550760)))

(declare-fun b!4111089 () Bool)

(declare-fun tp!1249892 () Bool)

(declare-fun tp!1249893 () Bool)

(assert (=> b!4111089 (= e!2550760 (and tp!1249892 tp!1249893))))

(declare-fun b!4111088 () Bool)

(assert (=> b!4111088 (= e!2550760 tp_is_empty!21163)))

(assert (= (and b!4110990 ((_ is ElementMatch!12107) (regOne!24727 (regex!7202 e2!99)))) b!4111088))

(assert (= (and b!4110990 ((_ is Concat!19540) (regOne!24727 (regex!7202 e2!99)))) b!4111089))

(assert (= (and b!4110990 ((_ is Star!12107) (regOne!24727 (regex!7202 e2!99)))) b!4111090))

(assert (= (and b!4110990 ((_ is Union!12107) (regOne!24727 (regex!7202 e2!99)))) b!4111091))

(declare-fun b!4111094 () Bool)

(declare-fun e!2550761 () Bool)

(declare-fun tp!1249896 () Bool)

(assert (=> b!4111094 (= e!2550761 tp!1249896)))

(declare-fun b!4111095 () Bool)

(declare-fun tp!1249895 () Bool)

(declare-fun tp!1249899 () Bool)

(assert (=> b!4111095 (= e!2550761 (and tp!1249895 tp!1249899))))

(assert (=> b!4110990 (= tp!1249818 e!2550761)))

(declare-fun b!4111093 () Bool)

(declare-fun tp!1249897 () Bool)

(declare-fun tp!1249898 () Bool)

(assert (=> b!4111093 (= e!2550761 (and tp!1249897 tp!1249898))))

(declare-fun b!4111092 () Bool)

(assert (=> b!4111092 (= e!2550761 tp_is_empty!21163)))

(assert (= (and b!4110990 ((_ is ElementMatch!12107) (regTwo!24727 (regex!7202 e2!99)))) b!4111092))

(assert (= (and b!4110990 ((_ is Concat!19540) (regTwo!24727 (regex!7202 e2!99)))) b!4111093))

(assert (= (and b!4110990 ((_ is Star!12107) (regTwo!24727 (regex!7202 e2!99)))) b!4111094))

(assert (= (and b!4110990 ((_ is Union!12107) (regTwo!24727 (regex!7202 e2!99)))) b!4111095))

(declare-fun b!4111098 () Bool)

(declare-fun e!2550762 () Bool)

(declare-fun tp!1249901 () Bool)

(assert (=> b!4111098 (= e!2550762 tp!1249901)))

(declare-fun b!4111099 () Bool)

(declare-fun tp!1249900 () Bool)

(declare-fun tp!1249904 () Bool)

(assert (=> b!4111099 (= e!2550762 (and tp!1249900 tp!1249904))))

(assert (=> b!4110992 (= tp!1249821 e!2550762)))

(declare-fun b!4111097 () Bool)

(declare-fun tp!1249902 () Bool)

(declare-fun tp!1249903 () Bool)

(assert (=> b!4111097 (= e!2550762 (and tp!1249902 tp!1249903))))

(declare-fun b!4111096 () Bool)

(assert (=> b!4111096 (= e!2550762 tp_is_empty!21163)))

(assert (= (and b!4110992 ((_ is ElementMatch!12107) (regOne!24726 (regex!7202 (h!49707 l!6462))))) b!4111096))

(assert (= (and b!4110992 ((_ is Concat!19540) (regOne!24726 (regex!7202 (h!49707 l!6462))))) b!4111097))

(assert (= (and b!4110992 ((_ is Star!12107) (regOne!24726 (regex!7202 (h!49707 l!6462))))) b!4111098))

(assert (= (and b!4110992 ((_ is Union!12107) (regOne!24726 (regex!7202 (h!49707 l!6462))))) b!4111099))

(declare-fun b!4111102 () Bool)

(declare-fun e!2550763 () Bool)

(declare-fun tp!1249906 () Bool)

(assert (=> b!4111102 (= e!2550763 tp!1249906)))

(declare-fun b!4111103 () Bool)

(declare-fun tp!1249905 () Bool)

(declare-fun tp!1249909 () Bool)

(assert (=> b!4111103 (= e!2550763 (and tp!1249905 tp!1249909))))

(assert (=> b!4110992 (= tp!1249822 e!2550763)))

(declare-fun b!4111101 () Bool)

(declare-fun tp!1249907 () Bool)

(declare-fun tp!1249908 () Bool)

(assert (=> b!4111101 (= e!2550763 (and tp!1249907 tp!1249908))))

(declare-fun b!4111100 () Bool)

(assert (=> b!4111100 (= e!2550763 tp_is_empty!21163)))

(assert (= (and b!4110992 ((_ is ElementMatch!12107) (regTwo!24726 (regex!7202 (h!49707 l!6462))))) b!4111100))

(assert (= (and b!4110992 ((_ is Concat!19540) (regTwo!24726 (regex!7202 (h!49707 l!6462))))) b!4111101))

(assert (= (and b!4110992 ((_ is Star!12107) (regTwo!24726 (regex!7202 (h!49707 l!6462))))) b!4111102))

(assert (= (and b!4110992 ((_ is Union!12107) (regTwo!24726 (regex!7202 (h!49707 l!6462))))) b!4111103))

(declare-fun b!4111106 () Bool)

(declare-fun e!2550764 () Bool)

(declare-fun tp!1249911 () Bool)

(assert (=> b!4111106 (= e!2550764 tp!1249911)))

(declare-fun b!4111107 () Bool)

(declare-fun tp!1249910 () Bool)

(declare-fun tp!1249914 () Bool)

(assert (=> b!4111107 (= e!2550764 (and tp!1249910 tp!1249914))))

(assert (=> b!4110985 (= tp!1249811 e!2550764)))

(declare-fun b!4111105 () Bool)

(declare-fun tp!1249912 () Bool)

(declare-fun tp!1249913 () Bool)

(assert (=> b!4111105 (= e!2550764 (and tp!1249912 tp!1249913))))

(declare-fun b!4111104 () Bool)

(assert (=> b!4111104 (= e!2550764 tp_is_empty!21163)))

(assert (= (and b!4110985 ((_ is ElementMatch!12107) (regex!7202 (h!49707 (t!340162 l!6462))))) b!4111104))

(assert (= (and b!4110985 ((_ is Concat!19540) (regex!7202 (h!49707 (t!340162 l!6462))))) b!4111105))

(assert (= (and b!4110985 ((_ is Star!12107) (regex!7202 (h!49707 (t!340162 l!6462))))) b!4111106))

(assert (= (and b!4110985 ((_ is Union!12107) (regex!7202 (h!49707 (t!340162 l!6462))))) b!4111107))

(declare-fun b!4111110 () Bool)

(declare-fun e!2550765 () Bool)

(declare-fun tp!1249916 () Bool)

(assert (=> b!4111110 (= e!2550765 tp!1249916)))

(declare-fun b!4111111 () Bool)

(declare-fun tp!1249915 () Bool)

(declare-fun tp!1249919 () Bool)

(assert (=> b!4111111 (= e!2550765 (and tp!1249915 tp!1249919))))

(assert (=> b!4110994 (= tp!1249819 e!2550765)))

(declare-fun b!4111109 () Bool)

(declare-fun tp!1249917 () Bool)

(declare-fun tp!1249918 () Bool)

(assert (=> b!4111109 (= e!2550765 (and tp!1249917 tp!1249918))))

(declare-fun b!4111108 () Bool)

(assert (=> b!4111108 (= e!2550765 tp_is_empty!21163)))

(assert (= (and b!4110994 ((_ is ElementMatch!12107) (regOne!24727 (regex!7202 (h!49707 l!6462))))) b!4111108))

(assert (= (and b!4110994 ((_ is Concat!19540) (regOne!24727 (regex!7202 (h!49707 l!6462))))) b!4111109))

(assert (= (and b!4110994 ((_ is Star!12107) (regOne!24727 (regex!7202 (h!49707 l!6462))))) b!4111110))

(assert (= (and b!4110994 ((_ is Union!12107) (regOne!24727 (regex!7202 (h!49707 l!6462))))) b!4111111))

(declare-fun b!4111114 () Bool)

(declare-fun e!2550766 () Bool)

(declare-fun tp!1249921 () Bool)

(assert (=> b!4111114 (= e!2550766 tp!1249921)))

(declare-fun b!4111115 () Bool)

(declare-fun tp!1249920 () Bool)

(declare-fun tp!1249924 () Bool)

(assert (=> b!4111115 (= e!2550766 (and tp!1249920 tp!1249924))))

(assert (=> b!4110994 (= tp!1249823 e!2550766)))

(declare-fun b!4111113 () Bool)

(declare-fun tp!1249922 () Bool)

(declare-fun tp!1249923 () Bool)

(assert (=> b!4111113 (= e!2550766 (and tp!1249922 tp!1249923))))

(declare-fun b!4111112 () Bool)

(assert (=> b!4111112 (= e!2550766 tp_is_empty!21163)))

(assert (= (and b!4110994 ((_ is ElementMatch!12107) (regTwo!24727 (regex!7202 (h!49707 l!6462))))) b!4111112))

(assert (= (and b!4110994 ((_ is Concat!19540) (regTwo!24727 (regex!7202 (h!49707 l!6462))))) b!4111113))

(assert (= (and b!4110994 ((_ is Star!12107) (regTwo!24727 (regex!7202 (h!49707 l!6462))))) b!4111114))

(assert (= (and b!4110994 ((_ is Union!12107) (regTwo!24727 (regex!7202 (h!49707 l!6462))))) b!4111115))

(declare-fun b!4111118 () Bool)

(declare-fun e!2550767 () Bool)

(declare-fun tp!1249926 () Bool)

(assert (=> b!4111118 (= e!2550767 tp!1249926)))

(declare-fun b!4111119 () Bool)

(declare-fun tp!1249925 () Bool)

(declare-fun tp!1249929 () Bool)

(assert (=> b!4111119 (= e!2550767 (and tp!1249925 tp!1249929))))

(assert (=> b!4110972 (= tp!1249798 e!2550767)))

(declare-fun b!4111117 () Bool)

(declare-fun tp!1249927 () Bool)

(declare-fun tp!1249928 () Bool)

(assert (=> b!4111117 (= e!2550767 (and tp!1249927 tp!1249928))))

(declare-fun b!4111116 () Bool)

(assert (=> b!4111116 (= e!2550767 tp_is_empty!21163)))

(assert (= (and b!4110972 ((_ is ElementMatch!12107) (reg!12436 (regex!7202 e1!99)))) b!4111116))

(assert (= (and b!4110972 ((_ is Concat!19540) (reg!12436 (regex!7202 e1!99)))) b!4111117))

(assert (= (and b!4110972 ((_ is Star!12107) (reg!12436 (regex!7202 e1!99)))) b!4111118))

(assert (= (and b!4110972 ((_ is Union!12107) (reg!12436 (regex!7202 e1!99)))) b!4111119))

(declare-fun b!4111122 () Bool)

(declare-fun e!2550768 () Bool)

(declare-fun tp!1249931 () Bool)

(assert (=> b!4111122 (= e!2550768 tp!1249931)))

(declare-fun b!4111123 () Bool)

(declare-fun tp!1249930 () Bool)

(declare-fun tp!1249934 () Bool)

(assert (=> b!4111123 (= e!2550768 (and tp!1249930 tp!1249934))))

(assert (=> b!4110993 (= tp!1249820 e!2550768)))

(declare-fun b!4111121 () Bool)

(declare-fun tp!1249932 () Bool)

(declare-fun tp!1249933 () Bool)

(assert (=> b!4111121 (= e!2550768 (and tp!1249932 tp!1249933))))

(declare-fun b!4111120 () Bool)

(assert (=> b!4111120 (= e!2550768 tp_is_empty!21163)))

(assert (= (and b!4110993 ((_ is ElementMatch!12107) (reg!12436 (regex!7202 (h!49707 l!6462))))) b!4111120))

(assert (= (and b!4110993 ((_ is Concat!19540) (reg!12436 (regex!7202 (h!49707 l!6462))))) b!4111121))

(assert (= (and b!4110993 ((_ is Star!12107) (reg!12436 (regex!7202 (h!49707 l!6462))))) b!4111122))

(assert (= (and b!4110993 ((_ is Union!12107) (reg!12436 (regex!7202 (h!49707 l!6462))))) b!4111123))

(declare-fun b!4111126 () Bool)

(declare-fun e!2550769 () Bool)

(declare-fun tp!1249936 () Bool)

(assert (=> b!4111126 (= e!2550769 tp!1249936)))

(declare-fun b!4111127 () Bool)

(declare-fun tp!1249935 () Bool)

(declare-fun tp!1249939 () Bool)

(assert (=> b!4111127 (= e!2550769 (and tp!1249935 tp!1249939))))

(assert (=> b!4110971 (= tp!1249799 e!2550769)))

(declare-fun b!4111125 () Bool)

(declare-fun tp!1249937 () Bool)

(declare-fun tp!1249938 () Bool)

(assert (=> b!4111125 (= e!2550769 (and tp!1249937 tp!1249938))))

(declare-fun b!4111124 () Bool)

(assert (=> b!4111124 (= e!2550769 tp_is_empty!21163)))

(assert (= (and b!4110971 ((_ is ElementMatch!12107) (regOne!24726 (regex!7202 e1!99)))) b!4111124))

(assert (= (and b!4110971 ((_ is Concat!19540) (regOne!24726 (regex!7202 e1!99)))) b!4111125))

(assert (= (and b!4110971 ((_ is Star!12107) (regOne!24726 (regex!7202 e1!99)))) b!4111126))

(assert (= (and b!4110971 ((_ is Union!12107) (regOne!24726 (regex!7202 e1!99)))) b!4111127))

(declare-fun b!4111130 () Bool)

(declare-fun e!2550770 () Bool)

(declare-fun tp!1249941 () Bool)

(assert (=> b!4111130 (= e!2550770 tp!1249941)))

(declare-fun b!4111131 () Bool)

(declare-fun tp!1249940 () Bool)

(declare-fun tp!1249944 () Bool)

(assert (=> b!4111131 (= e!2550770 (and tp!1249940 tp!1249944))))

(assert (=> b!4110971 (= tp!1249800 e!2550770)))

(declare-fun b!4111129 () Bool)

(declare-fun tp!1249942 () Bool)

(declare-fun tp!1249943 () Bool)

(assert (=> b!4111129 (= e!2550770 (and tp!1249942 tp!1249943))))

(declare-fun b!4111128 () Bool)

(assert (=> b!4111128 (= e!2550770 tp_is_empty!21163)))

(assert (= (and b!4110971 ((_ is ElementMatch!12107) (regTwo!24726 (regex!7202 e1!99)))) b!4111128))

(assert (= (and b!4110971 ((_ is Concat!19540) (regTwo!24726 (regex!7202 e1!99)))) b!4111129))

(assert (= (and b!4110971 ((_ is Star!12107) (regTwo!24726 (regex!7202 e1!99)))) b!4111130))

(assert (= (and b!4110971 ((_ is Union!12107) (regTwo!24726 (regex!7202 e1!99)))) b!4111131))

(declare-fun b_lambda!120635 () Bool)

(assert (= b_lambda!120633 (or d!1219642 b_lambda!120635)))

(declare-fun bs!594291 () Bool)

(declare-fun d!1219718 () Bool)

(assert (= bs!594291 (and d!1219718 d!1219642)))

(assert (=> bs!594291 (= (dynLambda!18932 lambda!128439 ((as const (Array String!50909 Bool)) false) (h!49704 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)))) ((_ map or) ((as const (Array String!50909 Bool)) false) (store ((as const (Array String!50909 Bool)) false) (h!49704 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284))) true)))))

(declare-fun m!4713203 () Bool)

(assert (=> bs!594291 m!4713203))

(assert (=> b!4111062 d!1219718))

(declare-fun b_lambda!120637 () Bool)

(assert (= b_lambda!120631 (or d!1219640 b_lambda!120637)))

(declare-fun bs!594292 () Bool)

(declare-fun d!1219720 () Bool)

(assert (= bs!594292 (and d!1219720 d!1219640)))

(assert (=> bs!594292 (= (dynLambda!18932 lambda!128438 ((as const (Array String!50909 Bool)) false) (h!49704 lt!1468231)) ((_ map or) ((as const (Array String!50909 Bool)) false) (store ((as const (Array String!50909 Bool)) false) (h!49704 lt!1468231) true)))))

(declare-fun m!4713205 () Bool)

(assert (=> bs!594292 m!4713205))

(assert (=> b!4111047 d!1219720))

(check-sat (not b!4111059) (not b!4111082) (not d!1219702) (not b!4111115) (not b!4111099) (not b!4111090) (not b_next!116343) (not b_next!116335) tp_is_empty!21163 (not b!4111126) (not b!4111113) (not b!4111121) b_and!317521 (not b!4111066) (not b!4111070) (not b!4111062) (not b!4111111) (not b_next!116351) (not b!4111130) (not b!4111122) (not b!4111117) (not b!4111036) (not b!4111083) (not d!1219710) (not b!4111055) b_and!317513 (not b!4111060) (not d!1219684) (not b!4111057) (not b!4111101) (not b!4111037) (not b!4111110) b_and!317515 (not b!4111068) (not b!4111076) (not d!1219698) (not b!4111098) (not b!4111079) (not b!4111085) (not b!4111107) (not b!4111095) b_and!317519 (not b_next!116345) (not b!4111086) b_and!317523 b_and!317527 (not b!4111075) (not b!4111118) (not d!1219716) (not b!4111074) (not b_next!116353) (not b_next!116331) (not b!4111093) (not b!4111080) (not b_next!116339) (not b!4111091) (not d!1219692) (not b!4111094) (not b!4111064) (not b!4111114) (not b!4111084) (not b!4111123) (not d!1219700) (not b!4111106) b_and!317535 (not b_next!116341) (not b!4111078) (not b!4111047) (not b!4111067) (not d!1219708) (not b!4111125) (not b!4111097) (not b!4111053) (not d!1219688) (not b!4111105) (not b_lambda!120635) (not b_next!116333) (not b!4111109) b_and!317525 (not b!4111129) (not b!4111119) (not b!4111072) (not b!4111089) (not b!4111102) (not b!4111056) (not b!4111127) b_and!317517 (not b_next!116337) (not d!1219696) (not b!4111071) (not b_lambda!120637) (not b!4111103) (not b!4111131) (not b!4111058) b_and!317533)
(check-sat b_and!317521 (not b_next!116351) b_and!317513 b_and!317515 b_and!317519 (not b_next!116339) b_and!317535 (not b_next!116341) (not b_next!116333) b_and!317525 b_and!317533 (not b_next!116343) (not b_next!116335) (not b_next!116345) b_and!317523 b_and!317527 (not b_next!116353) (not b_next!116331) b_and!317517 (not b_next!116337))
(get-model)

(declare-fun bs!594307 () Bool)

(declare-fun d!1219756 () Bool)

(assert (= bs!594307 (and d!1219756 d!1219692)))

(declare-fun lambda!128464 () Int)

(assert (=> bs!594307 (= (= (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toValue!9834 (transformation!7202 (h!49707 l!6462)))) (= lambda!128464 lambda!128450))))

(declare-fun bs!594308 () Bool)

(assert (= bs!594308 (and d!1219756 d!1219696)))

(assert (=> bs!594308 (= (= (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toValue!9834 (transformation!7202 e2!99))) (= lambda!128464 lambda!128451))))

(declare-fun bs!594309 () Bool)

(assert (= bs!594309 (and d!1219756 d!1219698)))

(assert (=> bs!594309 (= (= (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toValue!9834 (transformation!7202 e1!99))) (= lambda!128464 lambda!128452))))

(assert (=> d!1219756 true))

(assert (=> d!1219756 (< (dynLambda!18930 order!23299 (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462))))) (dynLambda!18931 order!23301 lambda!128464))))

(assert (=> d!1219756 (= (equivClasses!3002 (toChars!9693 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462))))) (Forall2!1134 lambda!128464))))

(declare-fun bs!594310 () Bool)

(assert (= bs!594310 d!1219756))

(declare-fun m!4713269 () Bool)

(assert (=> bs!594310 m!4713269))

(assert (=> b!4111058 d!1219756))

(declare-fun d!1219758 () Bool)

(declare-fun res!1679792 () Bool)

(declare-fun e!2550814 () Bool)

(assert (=> d!1219758 (=> res!1679792 e!2550814)))

(assert (=> d!1219758 (= res!1679792 ((_ is Nil!44287) (t!340162 (t!340162 lt!1468229))))))

(assert (=> d!1219758 (= (noDuplicateTag!2879 thiss!26878 (t!340162 (t!340162 lt!1468229)) (Cons!44284 (tag!8062 (h!49707 (t!340162 lt!1468229))) (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230))) e!2550814)))

(declare-fun b!4111232 () Bool)

(declare-fun e!2550815 () Bool)

(assert (=> b!4111232 (= e!2550814 e!2550815)))

(declare-fun res!1679793 () Bool)

(assert (=> b!4111232 (=> (not res!1679793) (not e!2550815))))

(assert (=> b!4111232 (= res!1679793 (not (contains!8877 (Cons!44284 (tag!8062 (h!49707 (t!340162 lt!1468229))) (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230)) (tag!8062 (h!49707 (t!340162 (t!340162 lt!1468229)))))))))

(declare-fun b!4111233 () Bool)

(assert (=> b!4111233 (= e!2550815 (noDuplicateTag!2879 thiss!26878 (t!340162 (t!340162 (t!340162 lt!1468229))) (Cons!44284 (tag!8062 (h!49707 (t!340162 (t!340162 lt!1468229)))) (Cons!44284 (tag!8062 (h!49707 (t!340162 lt!1468229))) (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230)))))))

(assert (= (and d!1219758 (not res!1679792)) b!4111232))

(assert (= (and b!4111232 res!1679793) b!4111233))

(declare-fun m!4713271 () Bool)

(assert (=> b!4111232 m!4713271))

(declare-fun m!4713273 () Bool)

(assert (=> b!4111233 m!4713273))

(assert (=> b!4111060 d!1219758))

(declare-fun d!1219760 () Bool)

(declare-fun c!706868 () Bool)

(assert (=> d!1219760 (= c!706868 ((_ is Nil!44284) lt!1468231))))

(declare-fun e!2550818 () (InoxSet String!50909))

(assert (=> d!1219760 (= (content!6823 lt!1468231) e!2550818)))

(declare-fun b!4111238 () Bool)

(assert (=> b!4111238 (= e!2550818 ((as const (Array String!50909 Bool)) false))))

(declare-fun b!4111239 () Bool)

(assert (=> b!4111239 (= e!2550818 ((_ map or) (store ((as const (Array String!50909 Bool)) false) (h!49704 lt!1468231) true) (content!6823 (t!340159 lt!1468231))))))

(assert (= (and d!1219760 c!706868) b!4111238))

(assert (= (and d!1219760 (not c!706868)) b!4111239))

(assert (=> b!4111239 m!4713205))

(declare-fun m!4713275 () Bool)

(assert (=> b!4111239 m!4713275))

(assert (=> d!1219700 d!1219760))

(declare-fun d!1219762 () Bool)

(declare-fun lt!1468242 () Bool)

(assert (=> d!1219762 (= lt!1468242 (select (content!6823 (t!340159 lt!1468231)) (tag!8062 (h!49707 l!6462))))))

(declare-fun e!2550820 () Bool)

(assert (=> d!1219762 (= lt!1468242 e!2550820)))

(declare-fun res!1679795 () Bool)

(assert (=> d!1219762 (=> (not res!1679795) (not e!2550820))))

(assert (=> d!1219762 (= res!1679795 ((_ is Cons!44284) (t!340159 lt!1468231)))))

(assert (=> d!1219762 (= (contains!8877 (t!340159 lt!1468231) (tag!8062 (h!49707 l!6462))) lt!1468242)))

(declare-fun b!4111240 () Bool)

(declare-fun e!2550819 () Bool)

(assert (=> b!4111240 (= e!2550820 e!2550819)))

(declare-fun res!1679794 () Bool)

(assert (=> b!4111240 (=> res!1679794 e!2550819)))

(assert (=> b!4111240 (= res!1679794 (= (h!49704 (t!340159 lt!1468231)) (tag!8062 (h!49707 l!6462))))))

(declare-fun b!4111241 () Bool)

(assert (=> b!4111241 (= e!2550819 (contains!8877 (t!340159 (t!340159 lt!1468231)) (tag!8062 (h!49707 l!6462))))))

(assert (= (and d!1219762 res!1679795) b!4111240))

(assert (= (and b!4111240 (not res!1679794)) b!4111241))

(assert (=> d!1219762 m!4713275))

(declare-fun m!4713277 () Bool)

(assert (=> d!1219762 m!4713277))

(declare-fun m!4713279 () Bool)

(assert (=> b!4111241 m!4713279))

(assert (=> b!4111053 d!1219762))

(declare-fun d!1219764 () Bool)

(declare-fun lt!1468243 () Bool)

(assert (=> d!1219764 (= lt!1468243 (select (content!6823 (t!340159 lt!1468230)) (tag!8062 (h!49707 lt!1468229))))))

(declare-fun e!2550822 () Bool)

(assert (=> d!1219764 (= lt!1468243 e!2550822)))

(declare-fun res!1679797 () Bool)

(assert (=> d!1219764 (=> (not res!1679797) (not e!2550822))))

(assert (=> d!1219764 (= res!1679797 ((_ is Cons!44284) (t!340159 lt!1468230)))))

(assert (=> d!1219764 (= (contains!8877 (t!340159 lt!1468230) (tag!8062 (h!49707 lt!1468229))) lt!1468243)))

(declare-fun b!4111242 () Bool)

(declare-fun e!2550821 () Bool)

(assert (=> b!4111242 (= e!2550822 e!2550821)))

(declare-fun res!1679796 () Bool)

(assert (=> b!4111242 (=> res!1679796 e!2550821)))

(assert (=> b!4111242 (= res!1679796 (= (h!49704 (t!340159 lt!1468230)) (tag!8062 (h!49707 lt!1468229))))))

(declare-fun b!4111243 () Bool)

(assert (=> b!4111243 (= e!2550821 (contains!8877 (t!340159 (t!340159 lt!1468230)) (tag!8062 (h!49707 lt!1468229))))))

(assert (= (and d!1219764 res!1679797) b!4111242))

(assert (= (and b!4111242 (not res!1679796)) b!4111243))

(declare-fun m!4713281 () Bool)

(assert (=> d!1219764 m!4713281))

(declare-fun m!4713283 () Bool)

(assert (=> d!1219764 m!4713283))

(declare-fun m!4713285 () Bool)

(assert (=> b!4111243 m!4713285))

(assert (=> b!4111064 d!1219764))

(declare-fun d!1219766 () Bool)

(declare-fun choose!25135 (Int) Bool)

(assert (=> d!1219766 (= (Forall2!1134 lambda!128450) (choose!25135 lambda!128450))))

(declare-fun bs!594311 () Bool)

(assert (= bs!594311 d!1219766))

(declare-fun m!4713287 () Bool)

(assert (=> bs!594311 m!4713287))

(assert (=> d!1219692 d!1219766))

(declare-fun d!1219768 () Bool)

(assert (=> d!1219768 (= (Forall2!1134 lambda!128451) (choose!25135 lambda!128451))))

(declare-fun bs!594312 () Bool)

(assert (= bs!594312 d!1219768))

(declare-fun m!4713289 () Bool)

(assert (=> bs!594312 m!4713289))

(assert (=> d!1219696 d!1219768))

(declare-fun d!1219770 () Bool)

(declare-fun choose!25136 (Int) Bool)

(assert (=> d!1219770 (= (Forall!1535 lambda!128453) (choose!25136 lambda!128453))))

(declare-fun bs!594313 () Bool)

(assert (= bs!594313 d!1219770))

(declare-fun m!4713291 () Bool)

(assert (=> bs!594313 m!4713291))

(assert (=> d!1219710 d!1219770))

(declare-fun d!1219772 () Bool)

(assert (=> d!1219772 (= (inv!58914 (tag!8062 (h!49707 (t!340162 (t!340162 l!6462))))) (= (mod (str.len (value!225828 (tag!8062 (h!49707 (t!340162 (t!340162 l!6462)))))) 2) 0))))

(assert (=> b!4111086 d!1219772))

(declare-fun d!1219774 () Bool)

(declare-fun res!1679798 () Bool)

(declare-fun e!2550823 () Bool)

(assert (=> d!1219774 (=> (not res!1679798) (not e!2550823))))

(assert (=> d!1219774 (= res!1679798 (semiInverseModEq!3103 (toChars!9693 (transformation!7202 (h!49707 (t!340162 (t!340162 l!6462))))) (toValue!9834 (transformation!7202 (h!49707 (t!340162 (t!340162 l!6462)))))))))

(assert (=> d!1219774 (= (inv!58916 (transformation!7202 (h!49707 (t!340162 (t!340162 l!6462))))) e!2550823)))

(declare-fun b!4111244 () Bool)

(assert (=> b!4111244 (= e!2550823 (equivClasses!3002 (toChars!9693 (transformation!7202 (h!49707 (t!340162 (t!340162 l!6462))))) (toValue!9834 (transformation!7202 (h!49707 (t!340162 (t!340162 l!6462)))))))))

(assert (= (and d!1219774 res!1679798) b!4111244))

(declare-fun m!4713293 () Bool)

(assert (=> d!1219774 m!4713293))

(declare-fun m!4713295 () Bool)

(assert (=> b!4111244 m!4713295))

(assert (=> b!4111086 d!1219774))

(declare-fun d!1219776 () Bool)

(assert (=> d!1219776 (= (Forall!1535 lambda!128447) (choose!25136 lambda!128447))))

(declare-fun bs!594314 () Bool)

(assert (= bs!594314 d!1219776))

(declare-fun m!4713297 () Bool)

(assert (=> bs!594314 m!4713297))

(assert (=> d!1219688 d!1219776))

(declare-fun d!1219778 () Bool)

(declare-fun c!706869 () Bool)

(assert (=> d!1219778 (= c!706869 ((_ is Nil!44284) (t!340159 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)))))))

(declare-fun e!2550824 () (InoxSet String!50909))

(assert (=> d!1219778 (= (foldLeft!2 (t!340159 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284))) (dynLambda!18932 lambda!128439 ((as const (Array String!50909 Bool)) false) (h!49704 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)))) lambda!128439) e!2550824)))

(declare-fun b!4111245 () Bool)

(assert (=> b!4111245 (= e!2550824 (dynLambda!18932 lambda!128439 ((as const (Array String!50909 Bool)) false) (h!49704 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)))))))

(declare-fun b!4111246 () Bool)

(assert (=> b!4111246 (= e!2550824 (foldLeft!2 (t!340159 (t!340159 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)))) (dynLambda!18932 lambda!128439 (dynLambda!18932 lambda!128439 ((as const (Array String!50909 Bool)) false) (h!49704 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)))) (h!49704 (t!340159 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284))))) lambda!128439))))

(assert (= (and d!1219778 c!706869) b!4111245))

(assert (= (and d!1219778 (not c!706869)) b!4111246))

(declare-fun b_lambda!120647 () Bool)

(assert (=> (not b_lambda!120647) (not b!4111246)))

(assert (=> b!4111246 m!4713189))

(declare-fun m!4713299 () Bool)

(assert (=> b!4111246 m!4713299))

(assert (=> b!4111246 m!4713299))

(declare-fun m!4713301 () Bool)

(assert (=> b!4111246 m!4713301))

(assert (=> b!4111062 d!1219778))

(declare-fun d!1219780 () Bool)

(assert (=> d!1219780 (= (content!6823 Nil!44284) ((as const (Array String!50909 Bool)) false))))

(assert (=> d!1219702 d!1219780))

(declare-fun d!1219782 () Bool)

(declare-fun lt!1468244 () Bool)

(assert (=> d!1219782 (= lt!1468244 (select (content!6823 (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284)) (tag!8062 (h!49707 (t!340162 (Cons!44287 e1!99 lt!1468229))))))))

(declare-fun e!2550826 () Bool)

(assert (=> d!1219782 (= lt!1468244 e!2550826)))

(declare-fun res!1679800 () Bool)

(assert (=> d!1219782 (=> (not res!1679800) (not e!2550826))))

(assert (=> d!1219782 (= res!1679800 ((_ is Cons!44284) (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284)))))

(assert (=> d!1219782 (= (contains!8877 (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284) (tag!8062 (h!49707 (t!340162 (Cons!44287 e1!99 lt!1468229))))) lt!1468244)))

(declare-fun b!4111247 () Bool)

(declare-fun e!2550825 () Bool)

(assert (=> b!4111247 (= e!2550826 e!2550825)))

(declare-fun res!1679799 () Bool)

(assert (=> b!4111247 (=> res!1679799 e!2550825)))

(assert (=> b!4111247 (= res!1679799 (= (h!49704 (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284)) (tag!8062 (h!49707 (t!340162 (Cons!44287 e1!99 lt!1468229))))))))

(declare-fun b!4111248 () Bool)

(assert (=> b!4111248 (= e!2550825 (contains!8877 (t!340159 (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284)) (tag!8062 (h!49707 (t!340162 (Cons!44287 e1!99 lt!1468229))))))))

(assert (= (and d!1219782 res!1679800) b!4111247))

(assert (= (and b!4111247 (not res!1679799)) b!4111248))

(declare-fun m!4713303 () Bool)

(assert (=> d!1219782 m!4713303))

(declare-fun m!4713305 () Bool)

(assert (=> d!1219782 m!4713305))

(declare-fun m!4713307 () Bool)

(assert (=> b!4111248 m!4713307))

(assert (=> b!4111056 d!1219782))

(declare-fun d!1219784 () Bool)

(declare-fun res!1679801 () Bool)

(declare-fun e!2550827 () Bool)

(assert (=> d!1219784 (=> res!1679801 e!2550827)))

(assert (=> d!1219784 (= res!1679801 ((_ is Nil!44287) (t!340162 (t!340162 (Cons!44287 e1!99 lt!1468229)))))))

(assert (=> d!1219784 (= (noDuplicateTag!2879 thiss!26878 (t!340162 (t!340162 (Cons!44287 e1!99 lt!1468229))) (Cons!44284 (tag!8062 (h!49707 (t!340162 (Cons!44287 e1!99 lt!1468229)))) (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284))) e!2550827)))

(declare-fun b!4111249 () Bool)

(declare-fun e!2550828 () Bool)

(assert (=> b!4111249 (= e!2550827 e!2550828)))

(declare-fun res!1679802 () Bool)

(assert (=> b!4111249 (=> (not res!1679802) (not e!2550828))))

(assert (=> b!4111249 (= res!1679802 (not (contains!8877 (Cons!44284 (tag!8062 (h!49707 (t!340162 (Cons!44287 e1!99 lt!1468229)))) (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284)) (tag!8062 (h!49707 (t!340162 (t!340162 (Cons!44287 e1!99 lt!1468229))))))))))

(declare-fun b!4111250 () Bool)

(assert (=> b!4111250 (= e!2550828 (noDuplicateTag!2879 thiss!26878 (t!340162 (t!340162 (t!340162 (Cons!44287 e1!99 lt!1468229)))) (Cons!44284 (tag!8062 (h!49707 (t!340162 (t!340162 (Cons!44287 e1!99 lt!1468229))))) (Cons!44284 (tag!8062 (h!49707 (t!340162 (Cons!44287 e1!99 lt!1468229)))) (Cons!44284 (tag!8062 (h!49707 (Cons!44287 e1!99 lt!1468229))) Nil!44284)))))))

(assert (= (and d!1219784 (not res!1679801)) b!4111249))

(assert (= (and b!4111249 res!1679802) b!4111250))

(declare-fun m!4713309 () Bool)

(assert (=> b!4111249 m!4713309))

(declare-fun m!4713311 () Bool)

(assert (=> b!4111250 m!4713311))

(assert (=> b!4111057 d!1219784))

(declare-fun d!1219786 () Bool)

(assert (=> d!1219786 (= (Forall2!1134 lambda!128452) (choose!25135 lambda!128452))))

(declare-fun bs!594315 () Bool)

(assert (= bs!594315 d!1219786))

(declare-fun m!4713313 () Bool)

(assert (=> bs!594315 m!4713313))

(assert (=> d!1219698 d!1219786))

(declare-fun d!1219788 () Bool)

(assert (=> d!1219788 (= (Forall!1535 lambda!128446) (choose!25136 lambda!128446))))

(declare-fun bs!594316 () Bool)

(assert (= bs!594316 d!1219788))

(declare-fun m!4713315 () Bool)

(assert (=> bs!594316 m!4713315))

(assert (=> d!1219684 d!1219788))

(declare-fun d!1219790 () Bool)

(declare-fun c!706870 () Bool)

(assert (=> d!1219790 (= c!706870 ((_ is Nil!44284) lt!1468230))))

(declare-fun e!2550829 () (InoxSet String!50909))

(assert (=> d!1219790 (= (content!6823 lt!1468230) e!2550829)))

(declare-fun b!4111251 () Bool)

(assert (=> b!4111251 (= e!2550829 ((as const (Array String!50909 Bool)) false))))

(declare-fun b!4111252 () Bool)

(assert (=> b!4111252 (= e!2550829 ((_ map or) (store ((as const (Array String!50909 Bool)) false) (h!49704 lt!1468230) true) (content!6823 (t!340159 lt!1468230))))))

(assert (= (and d!1219790 c!706870) b!4111251))

(assert (= (and d!1219790 (not c!706870)) b!4111252))

(declare-fun m!4713317 () Bool)

(assert (=> b!4111252 m!4713317))

(assert (=> b!4111252 m!4713281))

(assert (=> d!1219716 d!1219790))

(declare-fun d!1219792 () Bool)

(declare-fun lt!1468245 () Bool)

(assert (=> d!1219792 (= lt!1468245 (select (content!6823 (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231)) (tag!8062 (h!49707 (t!340162 l!6462)))))))

(declare-fun e!2550831 () Bool)

(assert (=> d!1219792 (= lt!1468245 e!2550831)))

(declare-fun res!1679804 () Bool)

(assert (=> d!1219792 (=> (not res!1679804) (not e!2550831))))

(assert (=> d!1219792 (= res!1679804 ((_ is Cons!44284) (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231)))))

(assert (=> d!1219792 (= (contains!8877 (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231) (tag!8062 (h!49707 (t!340162 l!6462)))) lt!1468245)))

(declare-fun b!4111253 () Bool)

(declare-fun e!2550830 () Bool)

(assert (=> b!4111253 (= e!2550831 e!2550830)))

(declare-fun res!1679803 () Bool)

(assert (=> b!4111253 (=> res!1679803 e!2550830)))

(assert (=> b!4111253 (= res!1679803 (= (h!49704 (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231)) (tag!8062 (h!49707 (t!340162 l!6462)))))))

(declare-fun b!4111254 () Bool)

(assert (=> b!4111254 (= e!2550830 (contains!8877 (t!340159 (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231)) (tag!8062 (h!49707 (t!340162 l!6462)))))))

(assert (= (and d!1219792 res!1679804) b!4111253))

(assert (= (and b!4111253 (not res!1679803)) b!4111254))

(declare-fun m!4713319 () Bool)

(assert (=> d!1219792 m!4713319))

(declare-fun m!4713321 () Bool)

(assert (=> d!1219792 m!4713321))

(declare-fun m!4713323 () Bool)

(assert (=> b!4111254 m!4713323))

(assert (=> b!4111036 d!1219792))

(declare-fun d!1219794 () Bool)

(declare-fun c!706871 () Bool)

(assert (=> d!1219794 (= c!706871 ((_ is Nil!44284) (t!340159 lt!1468231)))))

(declare-fun e!2550832 () (InoxSet String!50909))

(assert (=> d!1219794 (= (foldLeft!2 (t!340159 lt!1468231) (dynLambda!18932 lambda!128438 ((as const (Array String!50909 Bool)) false) (h!49704 lt!1468231)) lambda!128438) e!2550832)))

(declare-fun b!4111255 () Bool)

(assert (=> b!4111255 (= e!2550832 (dynLambda!18932 lambda!128438 ((as const (Array String!50909 Bool)) false) (h!49704 lt!1468231)))))

(declare-fun b!4111256 () Bool)

(assert (=> b!4111256 (= e!2550832 (foldLeft!2 (t!340159 (t!340159 lt!1468231)) (dynLambda!18932 lambda!128438 (dynLambda!18932 lambda!128438 ((as const (Array String!50909 Bool)) false) (h!49704 lt!1468231)) (h!49704 (t!340159 lt!1468231))) lambda!128438))))

(assert (= (and d!1219794 c!706871) b!4111255))

(assert (= (and d!1219794 (not c!706871)) b!4111256))

(declare-fun b_lambda!120649 () Bool)

(assert (=> (not b_lambda!120649) (not b!4111256)))

(assert (=> b!4111256 m!4713155))

(declare-fun m!4713325 () Bool)

(assert (=> b!4111256 m!4713325))

(assert (=> b!4111256 m!4713325))

(declare-fun m!4713327 () Bool)

(assert (=> b!4111256 m!4713327))

(assert (=> b!4111047 d!1219794))

(declare-fun d!1219796 () Bool)

(declare-fun lt!1468246 () Bool)

(assert (=> d!1219796 (= lt!1468246 (select (content!6823 (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230)) (tag!8062 (h!49707 (t!340162 lt!1468229)))))))

(declare-fun e!2550834 () Bool)

(assert (=> d!1219796 (= lt!1468246 e!2550834)))

(declare-fun res!1679806 () Bool)

(assert (=> d!1219796 (=> (not res!1679806) (not e!2550834))))

(assert (=> d!1219796 (= res!1679806 ((_ is Cons!44284) (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230)))))

(assert (=> d!1219796 (= (contains!8877 (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230) (tag!8062 (h!49707 (t!340162 lt!1468229)))) lt!1468246)))

(declare-fun b!4111257 () Bool)

(declare-fun e!2550833 () Bool)

(assert (=> b!4111257 (= e!2550834 e!2550833)))

(declare-fun res!1679805 () Bool)

(assert (=> b!4111257 (=> res!1679805 e!2550833)))

(assert (=> b!4111257 (= res!1679805 (= (h!49704 (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230)) (tag!8062 (h!49707 (t!340162 lt!1468229)))))))

(declare-fun b!4111258 () Bool)

(assert (=> b!4111258 (= e!2550833 (contains!8877 (t!340159 (Cons!44284 (tag!8062 (h!49707 lt!1468229)) lt!1468230)) (tag!8062 (h!49707 (t!340162 lt!1468229)))))))

(assert (= (and d!1219796 res!1679806) b!4111257))

(assert (= (and b!4111257 (not res!1679805)) b!4111258))

(declare-fun m!4713329 () Bool)

(assert (=> d!1219796 m!4713329))

(declare-fun m!4713331 () Bool)

(assert (=> d!1219796 m!4713331))

(declare-fun m!4713333 () Bool)

(assert (=> b!4111258 m!4713333))

(assert (=> b!4111059 d!1219796))

(declare-fun d!1219798 () Bool)

(assert (not d!1219798))

(assert (=> b!4111055 d!1219798))

(declare-fun d!1219800 () Bool)

(declare-fun res!1679807 () Bool)

(declare-fun e!2550835 () Bool)

(assert (=> d!1219800 (=> res!1679807 e!2550835)))

(assert (=> d!1219800 (= res!1679807 ((_ is Nil!44287) (t!340162 (t!340162 l!6462))))))

(assert (=> d!1219800 (= (noDuplicateTag!2879 thiss!26878 (t!340162 (t!340162 l!6462)) (Cons!44284 (tag!8062 (h!49707 (t!340162 l!6462))) (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231))) e!2550835)))

(declare-fun b!4111259 () Bool)

(declare-fun e!2550836 () Bool)

(assert (=> b!4111259 (= e!2550835 e!2550836)))

(declare-fun res!1679808 () Bool)

(assert (=> b!4111259 (=> (not res!1679808) (not e!2550836))))

(assert (=> b!4111259 (= res!1679808 (not (contains!8877 (Cons!44284 (tag!8062 (h!49707 (t!340162 l!6462))) (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231)) (tag!8062 (h!49707 (t!340162 (t!340162 l!6462)))))))))

(declare-fun b!4111260 () Bool)

(assert (=> b!4111260 (= e!2550836 (noDuplicateTag!2879 thiss!26878 (t!340162 (t!340162 (t!340162 l!6462))) (Cons!44284 (tag!8062 (h!49707 (t!340162 (t!340162 l!6462)))) (Cons!44284 (tag!8062 (h!49707 (t!340162 l!6462))) (Cons!44284 (tag!8062 (h!49707 l!6462)) lt!1468231)))))))

(assert (= (and d!1219800 (not res!1679807)) b!4111259))

(assert (= (and b!4111259 res!1679808) b!4111260))

(declare-fun m!4713335 () Bool)

(assert (=> b!4111259 m!4713335))

(declare-fun m!4713337 () Bool)

(assert (=> b!4111260 m!4713337))

(assert (=> b!4111037 d!1219800))

(declare-fun bs!594317 () Bool)

(declare-fun d!1219802 () Bool)

(assert (= bs!594317 (and d!1219802 d!1219684)))

(declare-fun lambda!128465 () Int)

(assert (=> bs!594317 (= (and (= (toChars!9693 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toChars!9693 (transformation!7202 e2!99))) (= (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toValue!9834 (transformation!7202 e2!99)))) (= lambda!128465 lambda!128446))))

(declare-fun bs!594318 () Bool)

(assert (= bs!594318 (and d!1219802 d!1219688)))

(assert (=> bs!594318 (= (and (= (toChars!9693 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toChars!9693 (transformation!7202 (h!49707 l!6462)))) (= (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toValue!9834 (transformation!7202 (h!49707 l!6462))))) (= lambda!128465 lambda!128447))))

(declare-fun bs!594319 () Bool)

(assert (= bs!594319 (and d!1219802 d!1219710)))

(assert (=> bs!594319 (= (and (= (toChars!9693 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toChars!9693 (transformation!7202 e1!99))) (= (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toValue!9834 (transformation!7202 e1!99)))) (= lambda!128465 lambda!128453))))

(assert (=> d!1219802 true))

(assert (=> d!1219802 (< (dynLambda!18928 order!23295 (toChars!9693 (transformation!7202 (h!49707 (t!340162 l!6462))))) (dynLambda!18929 order!23297 lambda!128465))))

(assert (=> d!1219802 true))

(assert (=> d!1219802 (< (dynLambda!18930 order!23299 (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462))))) (dynLambda!18929 order!23297 lambda!128465))))

(assert (=> d!1219802 (= (semiInverseModEq!3103 (toChars!9693 (transformation!7202 (h!49707 (t!340162 l!6462)))) (toValue!9834 (transformation!7202 (h!49707 (t!340162 l!6462))))) (Forall!1535 lambda!128465))))

(declare-fun bs!594320 () Bool)

(assert (= bs!594320 d!1219802))

(declare-fun m!4713339 () Bool)

(assert (=> bs!594320 m!4713339))

(assert (=> d!1219708 d!1219802))

(declare-fun b!4111263 () Bool)

(declare-fun e!2550837 () Bool)

(declare-fun tp!1250030 () Bool)

(assert (=> b!4111263 (= e!2550837 tp!1250030)))

(declare-fun b!4111264 () Bool)

(declare-fun tp!1250029 () Bool)

(declare-fun tp!1250033 () Bool)

(assert (=> b!4111264 (= e!2550837 (and tp!1250029 tp!1250033))))

(assert (=> b!4111121 (= tp!1249932 e!2550837)))

(declare-fun b!4111262 () Bool)

(declare-fun tp!1250031 () Bool)

(declare-fun tp!1250032 () Bool)

(assert (=> b!4111262 (= e!2550837 (and tp!1250031 tp!1250032))))

(declare-fun b!4111261 () Bool)

(assert (=> b!4111261 (= e!2550837 tp_is_empty!21163)))

(assert (= (and b!4111121 ((_ is ElementMatch!12107) (regOne!24726 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111261))

(assert (= (and b!4111121 ((_ is Concat!19540) (regOne!24726 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111262))

(assert (= (and b!4111121 ((_ is Star!12107) (regOne!24726 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111263))

(assert (= (and b!4111121 ((_ is Union!12107) (regOne!24726 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111264))

(declare-fun b!4111267 () Bool)

(declare-fun e!2550838 () Bool)

(declare-fun tp!1250035 () Bool)

(assert (=> b!4111267 (= e!2550838 tp!1250035)))

(declare-fun b!4111268 () Bool)

(declare-fun tp!1250034 () Bool)

(declare-fun tp!1250038 () Bool)

(assert (=> b!4111268 (= e!2550838 (and tp!1250034 tp!1250038))))

(assert (=> b!4111121 (= tp!1249933 e!2550838)))

(declare-fun b!4111266 () Bool)

(declare-fun tp!1250036 () Bool)

(declare-fun tp!1250037 () Bool)

(assert (=> b!4111266 (= e!2550838 (and tp!1250036 tp!1250037))))

(declare-fun b!4111265 () Bool)

(assert (=> b!4111265 (= e!2550838 tp_is_empty!21163)))

(assert (= (and b!4111121 ((_ is ElementMatch!12107) (regTwo!24726 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111265))

(assert (= (and b!4111121 ((_ is Concat!19540) (regTwo!24726 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111266))

(assert (= (and b!4111121 ((_ is Star!12107) (regTwo!24726 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111267))

(assert (= (and b!4111121 ((_ is Union!12107) (regTwo!24726 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111268))

(declare-fun b!4111271 () Bool)

(declare-fun e!2550839 () Bool)

(declare-fun tp!1250040 () Bool)

(assert (=> b!4111271 (= e!2550839 tp!1250040)))

(declare-fun b!4111272 () Bool)

(declare-fun tp!1250039 () Bool)

(declare-fun tp!1250043 () Bool)

(assert (=> b!4111272 (= e!2550839 (and tp!1250039 tp!1250043))))

(assert (=> b!4111130 (= tp!1249941 e!2550839)))

(declare-fun b!4111270 () Bool)

(declare-fun tp!1250041 () Bool)

(declare-fun tp!1250042 () Bool)

(assert (=> b!4111270 (= e!2550839 (and tp!1250041 tp!1250042))))

(declare-fun b!4111269 () Bool)

(assert (=> b!4111269 (= e!2550839 tp_is_empty!21163)))

(assert (= (and b!4111130 ((_ is ElementMatch!12107) (reg!12436 (regTwo!24726 (regex!7202 e1!99))))) b!4111269))

(assert (= (and b!4111130 ((_ is Concat!19540) (reg!12436 (regTwo!24726 (regex!7202 e1!99))))) b!4111270))

(assert (= (and b!4111130 ((_ is Star!12107) (reg!12436 (regTwo!24726 (regex!7202 e1!99))))) b!4111271))

(assert (= (and b!4111130 ((_ is Union!12107) (reg!12436 (regTwo!24726 (regex!7202 e1!99))))) b!4111272))

(declare-fun b!4111275 () Bool)

(declare-fun e!2550840 () Bool)

(declare-fun tp!1250045 () Bool)

(assert (=> b!4111275 (= e!2550840 tp!1250045)))

(declare-fun b!4111276 () Bool)

(declare-fun tp!1250044 () Bool)

(declare-fun tp!1250048 () Bool)

(assert (=> b!4111276 (= e!2550840 (and tp!1250044 tp!1250048))))

(assert (=> b!4111105 (= tp!1249912 e!2550840)))

(declare-fun b!4111274 () Bool)

(declare-fun tp!1250046 () Bool)

(declare-fun tp!1250047 () Bool)

(assert (=> b!4111274 (= e!2550840 (and tp!1250046 tp!1250047))))

(declare-fun b!4111273 () Bool)

(assert (=> b!4111273 (= e!2550840 tp_is_empty!21163)))

(assert (= (and b!4111105 ((_ is ElementMatch!12107) (regOne!24726 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111273))

(assert (= (and b!4111105 ((_ is Concat!19540) (regOne!24726 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111274))

(assert (= (and b!4111105 ((_ is Star!12107) (regOne!24726 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111275))

(assert (= (and b!4111105 ((_ is Union!12107) (regOne!24726 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111276))

(declare-fun b!4111279 () Bool)

(declare-fun e!2550841 () Bool)

(declare-fun tp!1250050 () Bool)

(assert (=> b!4111279 (= e!2550841 tp!1250050)))

(declare-fun b!4111280 () Bool)

(declare-fun tp!1250049 () Bool)

(declare-fun tp!1250053 () Bool)

(assert (=> b!4111280 (= e!2550841 (and tp!1250049 tp!1250053))))

(assert (=> b!4111105 (= tp!1249913 e!2550841)))

(declare-fun b!4111278 () Bool)

(declare-fun tp!1250051 () Bool)

(declare-fun tp!1250052 () Bool)

(assert (=> b!4111278 (= e!2550841 (and tp!1250051 tp!1250052))))

(declare-fun b!4111277 () Bool)

(assert (=> b!4111277 (= e!2550841 tp_is_empty!21163)))

(assert (= (and b!4111105 ((_ is ElementMatch!12107) (regTwo!24726 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111277))

(assert (= (and b!4111105 ((_ is Concat!19540) (regTwo!24726 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111278))

(assert (= (and b!4111105 ((_ is Star!12107) (regTwo!24726 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111279))

(assert (= (and b!4111105 ((_ is Union!12107) (regTwo!24726 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111280))

(declare-fun b!4111283 () Bool)

(declare-fun e!2550842 () Bool)

(declare-fun tp!1250055 () Bool)

(assert (=> b!4111283 (= e!2550842 tp!1250055)))

(declare-fun b!4111284 () Bool)

(declare-fun tp!1250054 () Bool)

(declare-fun tp!1250058 () Bool)

(assert (=> b!4111284 (= e!2550842 (and tp!1250054 tp!1250058))))

(assert (=> b!4111086 (= tp!1249887 e!2550842)))

(declare-fun b!4111282 () Bool)

(declare-fun tp!1250056 () Bool)

(declare-fun tp!1250057 () Bool)

(assert (=> b!4111282 (= e!2550842 (and tp!1250056 tp!1250057))))

(declare-fun b!4111281 () Bool)

(assert (=> b!4111281 (= e!2550842 tp_is_empty!21163)))

(assert (= (and b!4111086 ((_ is ElementMatch!12107) (regex!7202 (h!49707 (t!340162 (t!340162 l!6462)))))) b!4111281))

(assert (= (and b!4111086 ((_ is Concat!19540) (regex!7202 (h!49707 (t!340162 (t!340162 l!6462)))))) b!4111282))

(assert (= (and b!4111086 ((_ is Star!12107) (regex!7202 (h!49707 (t!340162 (t!340162 l!6462)))))) b!4111283))

(assert (= (and b!4111086 ((_ is Union!12107) (regex!7202 (h!49707 (t!340162 (t!340162 l!6462)))))) b!4111284))

(declare-fun b!4111287 () Bool)

(declare-fun e!2550843 () Bool)

(declare-fun tp!1250060 () Bool)

(assert (=> b!4111287 (= e!2550843 tp!1250060)))

(declare-fun b!4111288 () Bool)

(declare-fun tp!1250059 () Bool)

(declare-fun tp!1250063 () Bool)

(assert (=> b!4111288 (= e!2550843 (and tp!1250059 tp!1250063))))

(assert (=> b!4111079 (= tp!1249877 e!2550843)))

(declare-fun b!4111286 () Bool)

(declare-fun tp!1250061 () Bool)

(declare-fun tp!1250062 () Bool)

(assert (=> b!4111286 (= e!2550843 (and tp!1250061 tp!1250062))))

(declare-fun b!4111285 () Bool)

(assert (=> b!4111285 (= e!2550843 tp_is_empty!21163)))

(assert (= (and b!4111079 ((_ is ElementMatch!12107) (reg!12436 (regOne!24726 (regex!7202 e2!99))))) b!4111285))

(assert (= (and b!4111079 ((_ is Concat!19540) (reg!12436 (regOne!24726 (regex!7202 e2!99))))) b!4111286))

(assert (= (and b!4111079 ((_ is Star!12107) (reg!12436 (regOne!24726 (regex!7202 e2!99))))) b!4111287))

(assert (= (and b!4111079 ((_ is Union!12107) (reg!12436 (regOne!24726 (regex!7202 e2!99))))) b!4111288))

(declare-fun b!4111291 () Bool)

(declare-fun e!2550844 () Bool)

(declare-fun tp!1250065 () Bool)

(assert (=> b!4111291 (= e!2550844 tp!1250065)))

(declare-fun b!4111292 () Bool)

(declare-fun tp!1250064 () Bool)

(declare-fun tp!1250068 () Bool)

(assert (=> b!4111292 (= e!2550844 (and tp!1250064 tp!1250068))))

(assert (=> b!4111123 (= tp!1249930 e!2550844)))

(declare-fun b!4111290 () Bool)

(declare-fun tp!1250066 () Bool)

(declare-fun tp!1250067 () Bool)

(assert (=> b!4111290 (= e!2550844 (and tp!1250066 tp!1250067))))

(declare-fun b!4111289 () Bool)

(assert (=> b!4111289 (= e!2550844 tp_is_empty!21163)))

(assert (= (and b!4111123 ((_ is ElementMatch!12107) (regOne!24727 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111289))

(assert (= (and b!4111123 ((_ is Concat!19540) (regOne!24727 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111290))

(assert (= (and b!4111123 ((_ is Star!12107) (regOne!24727 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111291))

(assert (= (and b!4111123 ((_ is Union!12107) (regOne!24727 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111292))

(declare-fun b!4111295 () Bool)

(declare-fun e!2550845 () Bool)

(declare-fun tp!1250070 () Bool)

(assert (=> b!4111295 (= e!2550845 tp!1250070)))

(declare-fun b!4111296 () Bool)

(declare-fun tp!1250069 () Bool)

(declare-fun tp!1250073 () Bool)

(assert (=> b!4111296 (= e!2550845 (and tp!1250069 tp!1250073))))

(assert (=> b!4111123 (= tp!1249934 e!2550845)))

(declare-fun b!4111294 () Bool)

(declare-fun tp!1250071 () Bool)

(declare-fun tp!1250072 () Bool)

(assert (=> b!4111294 (= e!2550845 (and tp!1250071 tp!1250072))))

(declare-fun b!4111293 () Bool)

(assert (=> b!4111293 (= e!2550845 tp_is_empty!21163)))

(assert (= (and b!4111123 ((_ is ElementMatch!12107) (regTwo!24727 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111293))

(assert (= (and b!4111123 ((_ is Concat!19540) (regTwo!24727 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111294))

(assert (= (and b!4111123 ((_ is Star!12107) (regTwo!24727 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111295))

(assert (= (and b!4111123 ((_ is Union!12107) (regTwo!24727 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111296))

(declare-fun b!4111299 () Bool)

(declare-fun e!2550846 () Bool)

(declare-fun tp!1250075 () Bool)

(assert (=> b!4111299 (= e!2550846 tp!1250075)))

(declare-fun b!4111300 () Bool)

(declare-fun tp!1250074 () Bool)

(declare-fun tp!1250078 () Bool)

(assert (=> b!4111300 (= e!2550846 (and tp!1250074 tp!1250078))))

(assert (=> b!4111070 (= tp!1249868 e!2550846)))

(declare-fun b!4111298 () Bool)

(declare-fun tp!1250076 () Bool)

(declare-fun tp!1250077 () Bool)

(assert (=> b!4111298 (= e!2550846 (and tp!1250076 tp!1250077))))

(declare-fun b!4111297 () Bool)

(assert (=> b!4111297 (= e!2550846 tp_is_empty!21163)))

(assert (= (and b!4111070 ((_ is ElementMatch!12107) (regOne!24726 (regOne!24727 (regex!7202 e1!99))))) b!4111297))

(assert (= (and b!4111070 ((_ is Concat!19540) (regOne!24726 (regOne!24727 (regex!7202 e1!99))))) b!4111298))

(assert (= (and b!4111070 ((_ is Star!12107) (regOne!24726 (regOne!24727 (regex!7202 e1!99))))) b!4111299))

(assert (= (and b!4111070 ((_ is Union!12107) (regOne!24726 (regOne!24727 (regex!7202 e1!99))))) b!4111300))

(declare-fun b!4111303 () Bool)

(declare-fun e!2550847 () Bool)

(declare-fun tp!1250080 () Bool)

(assert (=> b!4111303 (= e!2550847 tp!1250080)))

(declare-fun b!4111304 () Bool)

(declare-fun tp!1250079 () Bool)

(declare-fun tp!1250083 () Bool)

(assert (=> b!4111304 (= e!2550847 (and tp!1250079 tp!1250083))))

(assert (=> b!4111070 (= tp!1249869 e!2550847)))

(declare-fun b!4111302 () Bool)

(declare-fun tp!1250081 () Bool)

(declare-fun tp!1250082 () Bool)

(assert (=> b!4111302 (= e!2550847 (and tp!1250081 tp!1250082))))

(declare-fun b!4111301 () Bool)

(assert (=> b!4111301 (= e!2550847 tp_is_empty!21163)))

(assert (= (and b!4111070 ((_ is ElementMatch!12107) (regTwo!24726 (regOne!24727 (regex!7202 e1!99))))) b!4111301))

(assert (= (and b!4111070 ((_ is Concat!19540) (regTwo!24726 (regOne!24727 (regex!7202 e1!99))))) b!4111302))

(assert (= (and b!4111070 ((_ is Star!12107) (regTwo!24726 (regOne!24727 (regex!7202 e1!99))))) b!4111303))

(assert (= (and b!4111070 ((_ is Union!12107) (regTwo!24726 (regOne!24727 (regex!7202 e1!99))))) b!4111304))

(declare-fun b!4111307 () Bool)

(declare-fun e!2550848 () Bool)

(declare-fun tp!1250085 () Bool)

(assert (=> b!4111307 (= e!2550848 tp!1250085)))

(declare-fun b!4111308 () Bool)

(declare-fun tp!1250084 () Bool)

(declare-fun tp!1250088 () Bool)

(assert (=> b!4111308 (= e!2550848 (and tp!1250084 tp!1250088))))

(assert (=> b!4111114 (= tp!1249921 e!2550848)))

(declare-fun b!4111306 () Bool)

(declare-fun tp!1250086 () Bool)

(declare-fun tp!1250087 () Bool)

(assert (=> b!4111306 (= e!2550848 (and tp!1250086 tp!1250087))))

(declare-fun b!4111305 () Bool)

(assert (=> b!4111305 (= e!2550848 tp_is_empty!21163)))

(assert (= (and b!4111114 ((_ is ElementMatch!12107) (reg!12436 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111305))

(assert (= (and b!4111114 ((_ is Concat!19540) (reg!12436 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111306))

(assert (= (and b!4111114 ((_ is Star!12107) (reg!12436 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111307))

(assert (= (and b!4111114 ((_ is Union!12107) (reg!12436 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111308))

(declare-fun b!4111311 () Bool)

(declare-fun e!2550849 () Bool)

(declare-fun tp!1250090 () Bool)

(assert (=> b!4111311 (= e!2550849 tp!1250090)))

(declare-fun b!4111312 () Bool)

(declare-fun tp!1250089 () Bool)

(declare-fun tp!1250093 () Bool)

(assert (=> b!4111312 (= e!2550849 (and tp!1250089 tp!1250093))))

(assert (=> b!4111089 (= tp!1249892 e!2550849)))

(declare-fun b!4111310 () Bool)

(declare-fun tp!1250091 () Bool)

(declare-fun tp!1250092 () Bool)

(assert (=> b!4111310 (= e!2550849 (and tp!1250091 tp!1250092))))

(declare-fun b!4111309 () Bool)

(assert (=> b!4111309 (= e!2550849 tp_is_empty!21163)))

(assert (= (and b!4111089 ((_ is ElementMatch!12107) (regOne!24726 (regOne!24727 (regex!7202 e2!99))))) b!4111309))

(assert (= (and b!4111089 ((_ is Concat!19540) (regOne!24726 (regOne!24727 (regex!7202 e2!99))))) b!4111310))

(assert (= (and b!4111089 ((_ is Star!12107) (regOne!24726 (regOne!24727 (regex!7202 e2!99))))) b!4111311))

(assert (= (and b!4111089 ((_ is Union!12107) (regOne!24726 (regOne!24727 (regex!7202 e2!99))))) b!4111312))

(declare-fun b!4111315 () Bool)

(declare-fun e!2550850 () Bool)

(declare-fun tp!1250095 () Bool)

(assert (=> b!4111315 (= e!2550850 tp!1250095)))

(declare-fun b!4111316 () Bool)

(declare-fun tp!1250094 () Bool)

(declare-fun tp!1250098 () Bool)

(assert (=> b!4111316 (= e!2550850 (and tp!1250094 tp!1250098))))

(assert (=> b!4111089 (= tp!1249893 e!2550850)))

(declare-fun b!4111314 () Bool)

(declare-fun tp!1250096 () Bool)

(declare-fun tp!1250097 () Bool)

(assert (=> b!4111314 (= e!2550850 (and tp!1250096 tp!1250097))))

(declare-fun b!4111313 () Bool)

(assert (=> b!4111313 (= e!2550850 tp_is_empty!21163)))

(assert (= (and b!4111089 ((_ is ElementMatch!12107) (regTwo!24726 (regOne!24727 (regex!7202 e2!99))))) b!4111313))

(assert (= (and b!4111089 ((_ is Concat!19540) (regTwo!24726 (regOne!24727 (regex!7202 e2!99))))) b!4111314))

(assert (= (and b!4111089 ((_ is Star!12107) (regTwo!24726 (regOne!24727 (regex!7202 e2!99))))) b!4111315))

(assert (= (and b!4111089 ((_ is Union!12107) (regTwo!24726 (regOne!24727 (regex!7202 e2!99))))) b!4111316))

(declare-fun b!4111319 () Bool)

(declare-fun e!2550851 () Bool)

(declare-fun tp!1250100 () Bool)

(assert (=> b!4111319 (= e!2550851 tp!1250100)))

(declare-fun b!4111320 () Bool)

(declare-fun tp!1250099 () Bool)

(declare-fun tp!1250103 () Bool)

(assert (=> b!4111320 (= e!2550851 (and tp!1250099 tp!1250103))))

(assert (=> b!4111072 (= tp!1249866 e!2550851)))

(declare-fun b!4111318 () Bool)

(declare-fun tp!1250101 () Bool)

(declare-fun tp!1250102 () Bool)

(assert (=> b!4111318 (= e!2550851 (and tp!1250101 tp!1250102))))

(declare-fun b!4111317 () Bool)

(assert (=> b!4111317 (= e!2550851 tp_is_empty!21163)))

(assert (= (and b!4111072 ((_ is ElementMatch!12107) (regOne!24727 (regOne!24727 (regex!7202 e1!99))))) b!4111317))

(assert (= (and b!4111072 ((_ is Concat!19540) (regOne!24727 (regOne!24727 (regex!7202 e1!99))))) b!4111318))

(assert (= (and b!4111072 ((_ is Star!12107) (regOne!24727 (regOne!24727 (regex!7202 e1!99))))) b!4111319))

(assert (= (and b!4111072 ((_ is Union!12107) (regOne!24727 (regOne!24727 (regex!7202 e1!99))))) b!4111320))

(declare-fun b!4111323 () Bool)

(declare-fun e!2550852 () Bool)

(declare-fun tp!1250105 () Bool)

(assert (=> b!4111323 (= e!2550852 tp!1250105)))

(declare-fun b!4111324 () Bool)

(declare-fun tp!1250104 () Bool)

(declare-fun tp!1250108 () Bool)

(assert (=> b!4111324 (= e!2550852 (and tp!1250104 tp!1250108))))

(assert (=> b!4111072 (= tp!1249870 e!2550852)))

(declare-fun b!4111322 () Bool)

(declare-fun tp!1250106 () Bool)

(declare-fun tp!1250107 () Bool)

(assert (=> b!4111322 (= e!2550852 (and tp!1250106 tp!1250107))))

(declare-fun b!4111321 () Bool)

(assert (=> b!4111321 (= e!2550852 tp_is_empty!21163)))

(assert (= (and b!4111072 ((_ is ElementMatch!12107) (regTwo!24727 (regOne!24727 (regex!7202 e1!99))))) b!4111321))

(assert (= (and b!4111072 ((_ is Concat!19540) (regTwo!24727 (regOne!24727 (regex!7202 e1!99))))) b!4111322))

(assert (= (and b!4111072 ((_ is Star!12107) (regTwo!24727 (regOne!24727 (regex!7202 e1!99))))) b!4111323))

(assert (= (and b!4111072 ((_ is Union!12107) (regTwo!24727 (regOne!24727 (regex!7202 e1!99))))) b!4111324))

(declare-fun b!4111327 () Bool)

(declare-fun e!2550853 () Bool)

(declare-fun tp!1250110 () Bool)

(assert (=> b!4111327 (= e!2550853 tp!1250110)))

(declare-fun b!4111328 () Bool)

(declare-fun tp!1250109 () Bool)

(declare-fun tp!1250113 () Bool)

(assert (=> b!4111328 (= e!2550853 (and tp!1250109 tp!1250113))))

(assert (=> b!4111107 (= tp!1249910 e!2550853)))

(declare-fun b!4111326 () Bool)

(declare-fun tp!1250111 () Bool)

(declare-fun tp!1250112 () Bool)

(assert (=> b!4111326 (= e!2550853 (and tp!1250111 tp!1250112))))

(declare-fun b!4111325 () Bool)

(assert (=> b!4111325 (= e!2550853 tp_is_empty!21163)))

(assert (= (and b!4111107 ((_ is ElementMatch!12107) (regOne!24727 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111325))

(assert (= (and b!4111107 ((_ is Concat!19540) (regOne!24727 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111326))

(assert (= (and b!4111107 ((_ is Star!12107) (regOne!24727 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111327))

(assert (= (and b!4111107 ((_ is Union!12107) (regOne!24727 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111328))

(declare-fun b!4111331 () Bool)

(declare-fun e!2550854 () Bool)

(declare-fun tp!1250115 () Bool)

(assert (=> b!4111331 (= e!2550854 tp!1250115)))

(declare-fun b!4111332 () Bool)

(declare-fun tp!1250114 () Bool)

(declare-fun tp!1250118 () Bool)

(assert (=> b!4111332 (= e!2550854 (and tp!1250114 tp!1250118))))

(assert (=> b!4111107 (= tp!1249914 e!2550854)))

(declare-fun b!4111330 () Bool)

(declare-fun tp!1250116 () Bool)

(declare-fun tp!1250117 () Bool)

(assert (=> b!4111330 (= e!2550854 (and tp!1250116 tp!1250117))))

(declare-fun b!4111329 () Bool)

(assert (=> b!4111329 (= e!2550854 tp_is_empty!21163)))

(assert (= (and b!4111107 ((_ is ElementMatch!12107) (regTwo!24727 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111329))

(assert (= (and b!4111107 ((_ is Concat!19540) (regTwo!24727 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111330))

(assert (= (and b!4111107 ((_ is Star!12107) (regTwo!24727 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111331))

(assert (= (and b!4111107 ((_ is Union!12107) (regTwo!24727 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111332))

(declare-fun b!4111335 () Bool)

(declare-fun e!2550855 () Bool)

(declare-fun tp!1250120 () Bool)

(assert (=> b!4111335 (= e!2550855 tp!1250120)))

(declare-fun b!4111336 () Bool)

(declare-fun tp!1250119 () Bool)

(declare-fun tp!1250123 () Bool)

(assert (=> b!4111336 (= e!2550855 (and tp!1250119 tp!1250123))))

(assert (=> b!4111098 (= tp!1249901 e!2550855)))

(declare-fun b!4111334 () Bool)

(declare-fun tp!1250121 () Bool)

(declare-fun tp!1250122 () Bool)

(assert (=> b!4111334 (= e!2550855 (and tp!1250121 tp!1250122))))

(declare-fun b!4111333 () Bool)

(assert (=> b!4111333 (= e!2550855 tp_is_empty!21163)))

(assert (= (and b!4111098 ((_ is ElementMatch!12107) (reg!12436 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111333))

(assert (= (and b!4111098 ((_ is Concat!19540) (reg!12436 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111334))

(assert (= (and b!4111098 ((_ is Star!12107) (reg!12436 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111335))

(assert (= (and b!4111098 ((_ is Union!12107) (reg!12436 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111336))

(declare-fun b!4111339 () Bool)

(declare-fun e!2550856 () Bool)

(declare-fun tp!1250125 () Bool)

(assert (=> b!4111339 (= e!2550856 tp!1250125)))

(declare-fun b!4111340 () Bool)

(declare-fun tp!1250124 () Bool)

(declare-fun tp!1250128 () Bool)

(assert (=> b!4111340 (= e!2550856 (and tp!1250124 tp!1250128))))

(assert (=> b!4111091 (= tp!1249890 e!2550856)))

(declare-fun b!4111338 () Bool)

(declare-fun tp!1250126 () Bool)

(declare-fun tp!1250127 () Bool)

(assert (=> b!4111338 (= e!2550856 (and tp!1250126 tp!1250127))))

(declare-fun b!4111337 () Bool)

(assert (=> b!4111337 (= e!2550856 tp_is_empty!21163)))

(assert (= (and b!4111091 ((_ is ElementMatch!12107) (regOne!24727 (regOne!24727 (regex!7202 e2!99))))) b!4111337))

(assert (= (and b!4111091 ((_ is Concat!19540) (regOne!24727 (regOne!24727 (regex!7202 e2!99))))) b!4111338))

(assert (= (and b!4111091 ((_ is Star!12107) (regOne!24727 (regOne!24727 (regex!7202 e2!99))))) b!4111339))

(assert (= (and b!4111091 ((_ is Union!12107) (regOne!24727 (regOne!24727 (regex!7202 e2!99))))) b!4111340))

(declare-fun b!4111343 () Bool)

(declare-fun e!2550857 () Bool)

(declare-fun tp!1250130 () Bool)

(assert (=> b!4111343 (= e!2550857 tp!1250130)))

(declare-fun b!4111344 () Bool)

(declare-fun tp!1250129 () Bool)

(declare-fun tp!1250133 () Bool)

(assert (=> b!4111344 (= e!2550857 (and tp!1250129 tp!1250133))))

(assert (=> b!4111091 (= tp!1249894 e!2550857)))

(declare-fun b!4111342 () Bool)

(declare-fun tp!1250131 () Bool)

(declare-fun tp!1250132 () Bool)

(assert (=> b!4111342 (= e!2550857 (and tp!1250131 tp!1250132))))

(declare-fun b!4111341 () Bool)

(assert (=> b!4111341 (= e!2550857 tp_is_empty!21163)))

(assert (= (and b!4111091 ((_ is ElementMatch!12107) (regTwo!24727 (regOne!24727 (regex!7202 e2!99))))) b!4111341))

(assert (= (and b!4111091 ((_ is Concat!19540) (regTwo!24727 (regOne!24727 (regex!7202 e2!99))))) b!4111342))

(assert (= (and b!4111091 ((_ is Star!12107) (regTwo!24727 (regOne!24727 (regex!7202 e2!99))))) b!4111343))

(assert (= (and b!4111091 ((_ is Union!12107) (regTwo!24727 (regOne!24727 (regex!7202 e2!99))))) b!4111344))

(declare-fun b!4111347 () Bool)

(declare-fun e!2550858 () Bool)

(declare-fun tp!1250135 () Bool)

(assert (=> b!4111347 (= e!2550858 tp!1250135)))

(declare-fun b!4111348 () Bool)

(declare-fun tp!1250134 () Bool)

(declare-fun tp!1250138 () Bool)

(assert (=> b!4111348 (= e!2550858 (and tp!1250134 tp!1250138))))

(assert (=> b!4111125 (= tp!1249937 e!2550858)))

(declare-fun b!4111346 () Bool)

(declare-fun tp!1250136 () Bool)

(declare-fun tp!1250137 () Bool)

(assert (=> b!4111346 (= e!2550858 (and tp!1250136 tp!1250137))))

(declare-fun b!4111345 () Bool)

(assert (=> b!4111345 (= e!2550858 tp_is_empty!21163)))

(assert (= (and b!4111125 ((_ is ElementMatch!12107) (regOne!24726 (regOne!24726 (regex!7202 e1!99))))) b!4111345))

(assert (= (and b!4111125 ((_ is Concat!19540) (regOne!24726 (regOne!24726 (regex!7202 e1!99))))) b!4111346))

(assert (= (and b!4111125 ((_ is Star!12107) (regOne!24726 (regOne!24726 (regex!7202 e1!99))))) b!4111347))

(assert (= (and b!4111125 ((_ is Union!12107) (regOne!24726 (regOne!24726 (regex!7202 e1!99))))) b!4111348))

(declare-fun b!4111351 () Bool)

(declare-fun e!2550859 () Bool)

(declare-fun tp!1250140 () Bool)

(assert (=> b!4111351 (= e!2550859 tp!1250140)))

(declare-fun b!4111352 () Bool)

(declare-fun tp!1250139 () Bool)

(declare-fun tp!1250143 () Bool)

(assert (=> b!4111352 (= e!2550859 (and tp!1250139 tp!1250143))))

(assert (=> b!4111125 (= tp!1249938 e!2550859)))

(declare-fun b!4111350 () Bool)

(declare-fun tp!1250141 () Bool)

(declare-fun tp!1250142 () Bool)

(assert (=> b!4111350 (= e!2550859 (and tp!1250141 tp!1250142))))

(declare-fun b!4111349 () Bool)

(assert (=> b!4111349 (= e!2550859 tp_is_empty!21163)))

(assert (= (and b!4111125 ((_ is ElementMatch!12107) (regTwo!24726 (regOne!24726 (regex!7202 e1!99))))) b!4111349))

(assert (= (and b!4111125 ((_ is Concat!19540) (regTwo!24726 (regOne!24726 (regex!7202 e1!99))))) b!4111350))

(assert (= (and b!4111125 ((_ is Star!12107) (regTwo!24726 (regOne!24726 (regex!7202 e1!99))))) b!4111351))

(assert (= (and b!4111125 ((_ is Union!12107) (regTwo!24726 (regOne!24726 (regex!7202 e1!99))))) b!4111352))

(declare-fun b!4111355 () Bool)

(declare-fun e!2550860 () Bool)

(declare-fun tp!1250145 () Bool)

(assert (=> b!4111355 (= e!2550860 tp!1250145)))

(declare-fun b!4111356 () Bool)

(declare-fun tp!1250144 () Bool)

(declare-fun tp!1250148 () Bool)

(assert (=> b!4111356 (= e!2550860 (and tp!1250144 tp!1250148))))

(assert (=> b!4111076 (= tp!1249871 e!2550860)))

(declare-fun b!4111354 () Bool)

(declare-fun tp!1250146 () Bool)

(declare-fun tp!1250147 () Bool)

(assert (=> b!4111354 (= e!2550860 (and tp!1250146 tp!1250147))))

(declare-fun b!4111353 () Bool)

(assert (=> b!4111353 (= e!2550860 tp_is_empty!21163)))

(assert (= (and b!4111076 ((_ is ElementMatch!12107) (regOne!24727 (regTwo!24727 (regex!7202 e1!99))))) b!4111353))

(assert (= (and b!4111076 ((_ is Concat!19540) (regOne!24727 (regTwo!24727 (regex!7202 e1!99))))) b!4111354))

(assert (= (and b!4111076 ((_ is Star!12107) (regOne!24727 (regTwo!24727 (regex!7202 e1!99))))) b!4111355))

(assert (= (and b!4111076 ((_ is Union!12107) (regOne!24727 (regTwo!24727 (regex!7202 e1!99))))) b!4111356))

(declare-fun b!4111359 () Bool)

(declare-fun e!2550861 () Bool)

(declare-fun tp!1250150 () Bool)

(assert (=> b!4111359 (= e!2550861 tp!1250150)))

(declare-fun b!4111360 () Bool)

(declare-fun tp!1250149 () Bool)

(declare-fun tp!1250153 () Bool)

(assert (=> b!4111360 (= e!2550861 (and tp!1250149 tp!1250153))))

(assert (=> b!4111076 (= tp!1249875 e!2550861)))

(declare-fun b!4111358 () Bool)

(declare-fun tp!1250151 () Bool)

(declare-fun tp!1250152 () Bool)

(assert (=> b!4111358 (= e!2550861 (and tp!1250151 tp!1250152))))

(declare-fun b!4111357 () Bool)

(assert (=> b!4111357 (= e!2550861 tp_is_empty!21163)))

(assert (= (and b!4111076 ((_ is ElementMatch!12107) (regTwo!24727 (regTwo!24727 (regex!7202 e1!99))))) b!4111357))

(assert (= (and b!4111076 ((_ is Concat!19540) (regTwo!24727 (regTwo!24727 (regex!7202 e1!99))))) b!4111358))

(assert (= (and b!4111076 ((_ is Star!12107) (regTwo!24727 (regTwo!24727 (regex!7202 e1!99))))) b!4111359))

(assert (= (and b!4111076 ((_ is Union!12107) (regTwo!24727 (regTwo!24727 (regex!7202 e1!99))))) b!4111360))

(declare-fun b!4111363 () Bool)

(declare-fun e!2550862 () Bool)

(declare-fun tp!1250155 () Bool)

(assert (=> b!4111363 (= e!2550862 tp!1250155)))

(declare-fun b!4111364 () Bool)

(declare-fun tp!1250154 () Bool)

(declare-fun tp!1250158 () Bool)

(assert (=> b!4111364 (= e!2550862 (and tp!1250154 tp!1250158))))

(assert (=> b!4111083 (= tp!1249882 e!2550862)))

(declare-fun b!4111362 () Bool)

(declare-fun tp!1250156 () Bool)

(declare-fun tp!1250157 () Bool)

(assert (=> b!4111362 (= e!2550862 (and tp!1250156 tp!1250157))))

(declare-fun b!4111361 () Bool)

(assert (=> b!4111361 (= e!2550862 tp_is_empty!21163)))

(assert (= (and b!4111083 ((_ is ElementMatch!12107) (reg!12436 (regTwo!24726 (regex!7202 e2!99))))) b!4111361))

(assert (= (and b!4111083 ((_ is Concat!19540) (reg!12436 (regTwo!24726 (regex!7202 e2!99))))) b!4111362))

(assert (= (and b!4111083 ((_ is Star!12107) (reg!12436 (regTwo!24726 (regex!7202 e2!99))))) b!4111363))

(assert (= (and b!4111083 ((_ is Union!12107) (reg!12436 (regTwo!24726 (regex!7202 e2!99))))) b!4111364))

(declare-fun b!4111367 () Bool)

(declare-fun e!2550863 () Bool)

(declare-fun tp!1250160 () Bool)

(assert (=> b!4111367 (= e!2550863 tp!1250160)))

(declare-fun b!4111368 () Bool)

(declare-fun tp!1250159 () Bool)

(declare-fun tp!1250163 () Bool)

(assert (=> b!4111368 (= e!2550863 (and tp!1250159 tp!1250163))))

(assert (=> b!4111127 (= tp!1249935 e!2550863)))

(declare-fun b!4111366 () Bool)

(declare-fun tp!1250161 () Bool)

(declare-fun tp!1250162 () Bool)

(assert (=> b!4111366 (= e!2550863 (and tp!1250161 tp!1250162))))

(declare-fun b!4111365 () Bool)

(assert (=> b!4111365 (= e!2550863 tp_is_empty!21163)))

(assert (= (and b!4111127 ((_ is ElementMatch!12107) (regOne!24727 (regOne!24726 (regex!7202 e1!99))))) b!4111365))

(assert (= (and b!4111127 ((_ is Concat!19540) (regOne!24727 (regOne!24726 (regex!7202 e1!99))))) b!4111366))

(assert (= (and b!4111127 ((_ is Star!12107) (regOne!24727 (regOne!24726 (regex!7202 e1!99))))) b!4111367))

(assert (= (and b!4111127 ((_ is Union!12107) (regOne!24727 (regOne!24726 (regex!7202 e1!99))))) b!4111368))

(declare-fun b!4111371 () Bool)

(declare-fun e!2550864 () Bool)

(declare-fun tp!1250165 () Bool)

(assert (=> b!4111371 (= e!2550864 tp!1250165)))

(declare-fun b!4111372 () Bool)

(declare-fun tp!1250164 () Bool)

(declare-fun tp!1250168 () Bool)

(assert (=> b!4111372 (= e!2550864 (and tp!1250164 tp!1250168))))

(assert (=> b!4111127 (= tp!1249939 e!2550864)))

(declare-fun b!4111370 () Bool)

(declare-fun tp!1250166 () Bool)

(declare-fun tp!1250167 () Bool)

(assert (=> b!4111370 (= e!2550864 (and tp!1250166 tp!1250167))))

(declare-fun b!4111369 () Bool)

(assert (=> b!4111369 (= e!2550864 tp_is_empty!21163)))

(assert (= (and b!4111127 ((_ is ElementMatch!12107) (regTwo!24727 (regOne!24726 (regex!7202 e1!99))))) b!4111369))

(assert (= (and b!4111127 ((_ is Concat!19540) (regTwo!24727 (regOne!24726 (regex!7202 e1!99))))) b!4111370))

(assert (= (and b!4111127 ((_ is Star!12107) (regTwo!24727 (regOne!24726 (regex!7202 e1!99))))) b!4111371))

(assert (= (and b!4111127 ((_ is Union!12107) (regTwo!24727 (regOne!24726 (regex!7202 e1!99))))) b!4111372))

(declare-fun b!4111375 () Bool)

(declare-fun e!2550865 () Bool)

(declare-fun tp!1250170 () Bool)

(assert (=> b!4111375 (= e!2550865 tp!1250170)))

(declare-fun b!4111376 () Bool)

(declare-fun tp!1250169 () Bool)

(declare-fun tp!1250173 () Bool)

(assert (=> b!4111376 (= e!2550865 (and tp!1250169 tp!1250173))))

(assert (=> b!4111074 (= tp!1249873 e!2550865)))

(declare-fun b!4111374 () Bool)

(declare-fun tp!1250171 () Bool)

(declare-fun tp!1250172 () Bool)

(assert (=> b!4111374 (= e!2550865 (and tp!1250171 tp!1250172))))

(declare-fun b!4111373 () Bool)

(assert (=> b!4111373 (= e!2550865 tp_is_empty!21163)))

(assert (= (and b!4111074 ((_ is ElementMatch!12107) (regOne!24726 (regTwo!24727 (regex!7202 e1!99))))) b!4111373))

(assert (= (and b!4111074 ((_ is Concat!19540) (regOne!24726 (regTwo!24727 (regex!7202 e1!99))))) b!4111374))

(assert (= (and b!4111074 ((_ is Star!12107) (regOne!24726 (regTwo!24727 (regex!7202 e1!99))))) b!4111375))

(assert (= (and b!4111074 ((_ is Union!12107) (regOne!24726 (regTwo!24727 (regex!7202 e1!99))))) b!4111376))

(declare-fun b!4111379 () Bool)

(declare-fun e!2550866 () Bool)

(declare-fun tp!1250175 () Bool)

(assert (=> b!4111379 (= e!2550866 tp!1250175)))

(declare-fun b!4111380 () Bool)

(declare-fun tp!1250174 () Bool)

(declare-fun tp!1250178 () Bool)

(assert (=> b!4111380 (= e!2550866 (and tp!1250174 tp!1250178))))

(assert (=> b!4111074 (= tp!1249874 e!2550866)))

(declare-fun b!4111378 () Bool)

(declare-fun tp!1250176 () Bool)

(declare-fun tp!1250177 () Bool)

(assert (=> b!4111378 (= e!2550866 (and tp!1250176 tp!1250177))))

(declare-fun b!4111377 () Bool)

(assert (=> b!4111377 (= e!2550866 tp_is_empty!21163)))

(assert (= (and b!4111074 ((_ is ElementMatch!12107) (regTwo!24726 (regTwo!24727 (regex!7202 e1!99))))) b!4111377))

(assert (= (and b!4111074 ((_ is Concat!19540) (regTwo!24726 (regTwo!24727 (regex!7202 e1!99))))) b!4111378))

(assert (= (and b!4111074 ((_ is Star!12107) (regTwo!24726 (regTwo!24727 (regex!7202 e1!99))))) b!4111379))

(assert (= (and b!4111074 ((_ is Union!12107) (regTwo!24726 (regTwo!24727 (regex!7202 e1!99))))) b!4111380))

(declare-fun b!4111383 () Bool)

(declare-fun e!2550867 () Bool)

(declare-fun tp!1250180 () Bool)

(assert (=> b!4111383 (= e!2550867 tp!1250180)))

(declare-fun b!4111384 () Bool)

(declare-fun tp!1250179 () Bool)

(declare-fun tp!1250183 () Bool)

(assert (=> b!4111384 (= e!2550867 (and tp!1250179 tp!1250183))))

(assert (=> b!4111118 (= tp!1249926 e!2550867)))

(declare-fun b!4111382 () Bool)

(declare-fun tp!1250181 () Bool)

(declare-fun tp!1250182 () Bool)

(assert (=> b!4111382 (= e!2550867 (and tp!1250181 tp!1250182))))

(declare-fun b!4111381 () Bool)

(assert (=> b!4111381 (= e!2550867 tp_is_empty!21163)))

(assert (= (and b!4111118 ((_ is ElementMatch!12107) (reg!12436 (reg!12436 (regex!7202 e1!99))))) b!4111381))

(assert (= (and b!4111118 ((_ is Concat!19540) (reg!12436 (reg!12436 (regex!7202 e1!99))))) b!4111382))

(assert (= (and b!4111118 ((_ is Star!12107) (reg!12436 (reg!12436 (regex!7202 e1!99))))) b!4111383))

(assert (= (and b!4111118 ((_ is Union!12107) (reg!12436 (reg!12436 (regex!7202 e1!99))))) b!4111384))

(declare-fun b!4111387 () Bool)

(declare-fun e!2550868 () Bool)

(declare-fun tp!1250185 () Bool)

(assert (=> b!4111387 (= e!2550868 tp!1250185)))

(declare-fun b!4111388 () Bool)

(declare-fun tp!1250184 () Bool)

(declare-fun tp!1250188 () Bool)

(assert (=> b!4111388 (= e!2550868 (and tp!1250184 tp!1250188))))

(assert (=> b!4111109 (= tp!1249917 e!2550868)))

(declare-fun b!4111386 () Bool)

(declare-fun tp!1250186 () Bool)

(declare-fun tp!1250187 () Bool)

(assert (=> b!4111386 (= e!2550868 (and tp!1250186 tp!1250187))))

(declare-fun b!4111385 () Bool)

(assert (=> b!4111385 (= e!2550868 tp_is_empty!21163)))

(assert (= (and b!4111109 ((_ is ElementMatch!12107) (regOne!24726 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111385))

(assert (= (and b!4111109 ((_ is Concat!19540) (regOne!24726 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111386))

(assert (= (and b!4111109 ((_ is Star!12107) (regOne!24726 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111387))

(assert (= (and b!4111109 ((_ is Union!12107) (regOne!24726 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111388))

(declare-fun b!4111391 () Bool)

(declare-fun e!2550869 () Bool)

(declare-fun tp!1250190 () Bool)

(assert (=> b!4111391 (= e!2550869 tp!1250190)))

(declare-fun b!4111392 () Bool)

(declare-fun tp!1250189 () Bool)

(declare-fun tp!1250193 () Bool)

(assert (=> b!4111392 (= e!2550869 (and tp!1250189 tp!1250193))))

(assert (=> b!4111109 (= tp!1249918 e!2550869)))

(declare-fun b!4111390 () Bool)

(declare-fun tp!1250191 () Bool)

(declare-fun tp!1250192 () Bool)

(assert (=> b!4111390 (= e!2550869 (and tp!1250191 tp!1250192))))

(declare-fun b!4111389 () Bool)

(assert (=> b!4111389 (= e!2550869 tp_is_empty!21163)))

(assert (= (and b!4111109 ((_ is ElementMatch!12107) (regTwo!24726 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111389))

(assert (= (and b!4111109 ((_ is Concat!19540) (regTwo!24726 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111390))

(assert (= (and b!4111109 ((_ is Star!12107) (regTwo!24726 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111391))

(assert (= (and b!4111109 ((_ is Union!12107) (regTwo!24726 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111392))

(declare-fun b!4111395 () Bool)

(declare-fun e!2550870 () Bool)

(declare-fun tp!1250195 () Bool)

(assert (=> b!4111395 (= e!2550870 tp!1250195)))

(declare-fun b!4111396 () Bool)

(declare-fun tp!1250194 () Bool)

(declare-fun tp!1250198 () Bool)

(assert (=> b!4111396 (= e!2550870 (and tp!1250194 tp!1250198))))

(assert (=> b!4111067 (= tp!1249862 e!2550870)))

(declare-fun b!4111394 () Bool)

(declare-fun tp!1250196 () Bool)

(declare-fun tp!1250197 () Bool)

(assert (=> b!4111394 (= e!2550870 (and tp!1250196 tp!1250197))))

(declare-fun b!4111393 () Bool)

(assert (=> b!4111393 (= e!2550870 tp_is_empty!21163)))

(assert (= (and b!4111067 ((_ is ElementMatch!12107) (reg!12436 (reg!12436 (regex!7202 e2!99))))) b!4111393))

(assert (= (and b!4111067 ((_ is Concat!19540) (reg!12436 (reg!12436 (regex!7202 e2!99))))) b!4111394))

(assert (= (and b!4111067 ((_ is Star!12107) (reg!12436 (reg!12436 (regex!7202 e2!99))))) b!4111395))

(assert (= (and b!4111067 ((_ is Union!12107) (reg!12436 (reg!12436 (regex!7202 e2!99))))) b!4111396))

(declare-fun b!4111399 () Bool)

(declare-fun e!2550871 () Bool)

(declare-fun tp!1250200 () Bool)

(assert (=> b!4111399 (= e!2550871 tp!1250200)))

(declare-fun b!4111400 () Bool)

(declare-fun tp!1250199 () Bool)

(declare-fun tp!1250203 () Bool)

(assert (=> b!4111400 (= e!2550871 (and tp!1250199 tp!1250203))))

(assert (=> b!4111111 (= tp!1249915 e!2550871)))

(declare-fun b!4111398 () Bool)

(declare-fun tp!1250201 () Bool)

(declare-fun tp!1250202 () Bool)

(assert (=> b!4111398 (= e!2550871 (and tp!1250201 tp!1250202))))

(declare-fun b!4111397 () Bool)

(assert (=> b!4111397 (= e!2550871 tp_is_empty!21163)))

(assert (= (and b!4111111 ((_ is ElementMatch!12107) (regOne!24727 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111397))

(assert (= (and b!4111111 ((_ is Concat!19540) (regOne!24727 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111398))

(assert (= (and b!4111111 ((_ is Star!12107) (regOne!24727 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111399))

(assert (= (and b!4111111 ((_ is Union!12107) (regOne!24727 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111400))

(declare-fun b!4111403 () Bool)

(declare-fun e!2550872 () Bool)

(declare-fun tp!1250205 () Bool)

(assert (=> b!4111403 (= e!2550872 tp!1250205)))

(declare-fun b!4111404 () Bool)

(declare-fun tp!1250204 () Bool)

(declare-fun tp!1250208 () Bool)

(assert (=> b!4111404 (= e!2550872 (and tp!1250204 tp!1250208))))

(assert (=> b!4111111 (= tp!1249919 e!2550872)))

(declare-fun b!4111402 () Bool)

(declare-fun tp!1250206 () Bool)

(declare-fun tp!1250207 () Bool)

(assert (=> b!4111402 (= e!2550872 (and tp!1250206 tp!1250207))))

(declare-fun b!4111401 () Bool)

(assert (=> b!4111401 (= e!2550872 tp_is_empty!21163)))

(assert (= (and b!4111111 ((_ is ElementMatch!12107) (regTwo!24727 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111401))

(assert (= (and b!4111111 ((_ is Concat!19540) (regTwo!24727 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111402))

(assert (= (and b!4111111 ((_ is Star!12107) (regTwo!24727 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111403))

(assert (= (and b!4111111 ((_ is Union!12107) (regTwo!24727 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111404))

(declare-fun b!4111407 () Bool)

(declare-fun e!2550873 () Bool)

(declare-fun tp!1250210 () Bool)

(assert (=> b!4111407 (= e!2550873 tp!1250210)))

(declare-fun b!4111408 () Bool)

(declare-fun tp!1250209 () Bool)

(declare-fun tp!1250213 () Bool)

(assert (=> b!4111408 (= e!2550873 (and tp!1250209 tp!1250213))))

(assert (=> b!4111102 (= tp!1249906 e!2550873)))

(declare-fun b!4111406 () Bool)

(declare-fun tp!1250211 () Bool)

(declare-fun tp!1250212 () Bool)

(assert (=> b!4111406 (= e!2550873 (and tp!1250211 tp!1250212))))

(declare-fun b!4111405 () Bool)

(assert (=> b!4111405 (= e!2550873 tp_is_empty!21163)))

(assert (= (and b!4111102 ((_ is ElementMatch!12107) (reg!12436 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111405))

(assert (= (and b!4111102 ((_ is Concat!19540) (reg!12436 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111406))

(assert (= (and b!4111102 ((_ is Star!12107) (reg!12436 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111407))

(assert (= (and b!4111102 ((_ is Union!12107) (reg!12436 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111408))

(declare-fun b!4111411 () Bool)

(declare-fun e!2550874 () Bool)

(declare-fun tp!1250215 () Bool)

(assert (=> b!4111411 (= e!2550874 tp!1250215)))

(declare-fun b!4111412 () Bool)

(declare-fun tp!1250214 () Bool)

(declare-fun tp!1250218 () Bool)

(assert (=> b!4111412 (= e!2550874 (and tp!1250214 tp!1250218))))

(assert (=> b!4111093 (= tp!1249897 e!2550874)))

(declare-fun b!4111410 () Bool)

(declare-fun tp!1250216 () Bool)

(declare-fun tp!1250217 () Bool)

(assert (=> b!4111410 (= e!2550874 (and tp!1250216 tp!1250217))))

(declare-fun b!4111409 () Bool)

(assert (=> b!4111409 (= e!2550874 tp_is_empty!21163)))

(assert (= (and b!4111093 ((_ is ElementMatch!12107) (regOne!24726 (regTwo!24727 (regex!7202 e2!99))))) b!4111409))

(assert (= (and b!4111093 ((_ is Concat!19540) (regOne!24726 (regTwo!24727 (regex!7202 e2!99))))) b!4111410))

(assert (= (and b!4111093 ((_ is Star!12107) (regOne!24726 (regTwo!24727 (regex!7202 e2!99))))) b!4111411))

(assert (= (and b!4111093 ((_ is Union!12107) (regOne!24726 (regTwo!24727 (regex!7202 e2!99))))) b!4111412))

(declare-fun b!4111415 () Bool)

(declare-fun e!2550875 () Bool)

(declare-fun tp!1250220 () Bool)

(assert (=> b!4111415 (= e!2550875 tp!1250220)))

(declare-fun b!4111416 () Bool)

(declare-fun tp!1250219 () Bool)

(declare-fun tp!1250223 () Bool)

(assert (=> b!4111416 (= e!2550875 (and tp!1250219 tp!1250223))))

(assert (=> b!4111093 (= tp!1249898 e!2550875)))

(declare-fun b!4111414 () Bool)

(declare-fun tp!1250221 () Bool)

(declare-fun tp!1250222 () Bool)

(assert (=> b!4111414 (= e!2550875 (and tp!1250221 tp!1250222))))

(declare-fun b!4111413 () Bool)

(assert (=> b!4111413 (= e!2550875 tp_is_empty!21163)))

(assert (= (and b!4111093 ((_ is ElementMatch!12107) (regTwo!24726 (regTwo!24727 (regex!7202 e2!99))))) b!4111413))

(assert (= (and b!4111093 ((_ is Concat!19540) (regTwo!24726 (regTwo!24727 (regex!7202 e2!99))))) b!4111414))

(assert (= (and b!4111093 ((_ is Star!12107) (regTwo!24726 (regTwo!24727 (regex!7202 e2!99))))) b!4111415))

(assert (= (and b!4111093 ((_ is Union!12107) (regTwo!24726 (regTwo!24727 (regex!7202 e2!99))))) b!4111416))

(declare-fun b!4111419 () Bool)

(declare-fun e!2550876 () Bool)

(declare-fun tp!1250225 () Bool)

(assert (=> b!4111419 (= e!2550876 tp!1250225)))

(declare-fun b!4111420 () Bool)

(declare-fun tp!1250224 () Bool)

(declare-fun tp!1250228 () Bool)

(assert (=> b!4111420 (= e!2550876 (and tp!1250224 tp!1250228))))

(assert (=> b!4111095 (= tp!1249895 e!2550876)))

(declare-fun b!4111418 () Bool)

(declare-fun tp!1250226 () Bool)

(declare-fun tp!1250227 () Bool)

(assert (=> b!4111418 (= e!2550876 (and tp!1250226 tp!1250227))))

(declare-fun b!4111417 () Bool)

(assert (=> b!4111417 (= e!2550876 tp_is_empty!21163)))

(assert (= (and b!4111095 ((_ is ElementMatch!12107) (regOne!24727 (regTwo!24727 (regex!7202 e2!99))))) b!4111417))

(assert (= (and b!4111095 ((_ is Concat!19540) (regOne!24727 (regTwo!24727 (regex!7202 e2!99))))) b!4111418))

(assert (= (and b!4111095 ((_ is Star!12107) (regOne!24727 (regTwo!24727 (regex!7202 e2!99))))) b!4111419))

(assert (= (and b!4111095 ((_ is Union!12107) (regOne!24727 (regTwo!24727 (regex!7202 e2!99))))) b!4111420))

(declare-fun b!4111423 () Bool)

(declare-fun e!2550877 () Bool)

(declare-fun tp!1250230 () Bool)

(assert (=> b!4111423 (= e!2550877 tp!1250230)))

(declare-fun b!4111424 () Bool)

(declare-fun tp!1250229 () Bool)

(declare-fun tp!1250233 () Bool)

(assert (=> b!4111424 (= e!2550877 (and tp!1250229 tp!1250233))))

(assert (=> b!4111095 (= tp!1249899 e!2550877)))

(declare-fun b!4111422 () Bool)

(declare-fun tp!1250231 () Bool)

(declare-fun tp!1250232 () Bool)

(assert (=> b!4111422 (= e!2550877 (and tp!1250231 tp!1250232))))

(declare-fun b!4111421 () Bool)

(assert (=> b!4111421 (= e!2550877 tp_is_empty!21163)))

(assert (= (and b!4111095 ((_ is ElementMatch!12107) (regTwo!24727 (regTwo!24727 (regex!7202 e2!99))))) b!4111421))

(assert (= (and b!4111095 ((_ is Concat!19540) (regTwo!24727 (regTwo!24727 (regex!7202 e2!99))))) b!4111422))

(assert (= (and b!4111095 ((_ is Star!12107) (regTwo!24727 (regTwo!24727 (regex!7202 e2!99))))) b!4111423))

(assert (= (and b!4111095 ((_ is Union!12107) (regTwo!24727 (regTwo!24727 (regex!7202 e2!99))))) b!4111424))

(declare-fun b!4111427 () Bool)

(declare-fun b_free!115655 () Bool)

(declare-fun b_next!116359 () Bool)

(assert (=> b!4111427 (= b_free!115655 (not b_next!116359))))

(declare-fun tp!1250237 () Bool)

(declare-fun b_and!317541 () Bool)

(assert (=> b!4111427 (= tp!1250237 b_and!317541)))

(declare-fun b_free!115657 () Bool)

(declare-fun b_next!116361 () Bool)

(assert (=> b!4111427 (= b_free!115657 (not b_next!116361))))

(declare-fun tp!1250236 () Bool)

(declare-fun b_and!317543 () Bool)

(assert (=> b!4111427 (= tp!1250236 b_and!317543)))

(declare-fun e!2550879 () Bool)

(assert (=> b!4111427 (= e!2550879 (and tp!1250237 tp!1250236))))

(declare-fun tp!1250235 () Bool)

(declare-fun e!2550880 () Bool)

(declare-fun b!4111426 () Bool)

(assert (=> b!4111426 (= e!2550880 (and tp!1250235 (inv!58914 (tag!8062 (h!49707 (t!340162 (t!340162 (t!340162 l!6462)))))) (inv!58916 (transformation!7202 (h!49707 (t!340162 (t!340162 (t!340162 l!6462)))))) e!2550879))))

(declare-fun b!4111425 () Bool)

(declare-fun e!2550878 () Bool)

(declare-fun tp!1250234 () Bool)

(assert (=> b!4111425 (= e!2550878 (and e!2550880 tp!1250234))))

(assert (=> b!4111085 (= tp!1249886 e!2550878)))

(assert (= b!4111426 b!4111427))

(assert (= b!4111425 b!4111426))

(assert (= (and b!4111085 ((_ is Cons!44287) (t!340162 (t!340162 (t!340162 l!6462))))) b!4111425))

(declare-fun m!4713341 () Bool)

(assert (=> b!4111426 m!4713341))

(declare-fun m!4713343 () Bool)

(assert (=> b!4111426 m!4713343))

(declare-fun b!4111430 () Bool)

(declare-fun e!2550882 () Bool)

(declare-fun tp!1250239 () Bool)

(assert (=> b!4111430 (= e!2550882 tp!1250239)))

(declare-fun b!4111431 () Bool)

(declare-fun tp!1250238 () Bool)

(declare-fun tp!1250242 () Bool)

(assert (=> b!4111431 (= e!2550882 (and tp!1250238 tp!1250242))))

(assert (=> b!4111131 (= tp!1249940 e!2550882)))

(declare-fun b!4111429 () Bool)

(declare-fun tp!1250240 () Bool)

(declare-fun tp!1250241 () Bool)

(assert (=> b!4111429 (= e!2550882 (and tp!1250240 tp!1250241))))

(declare-fun b!4111428 () Bool)

(assert (=> b!4111428 (= e!2550882 tp_is_empty!21163)))

(assert (= (and b!4111131 ((_ is ElementMatch!12107) (regOne!24727 (regTwo!24726 (regex!7202 e1!99))))) b!4111428))

(assert (= (and b!4111131 ((_ is Concat!19540) (regOne!24727 (regTwo!24726 (regex!7202 e1!99))))) b!4111429))

(assert (= (and b!4111131 ((_ is Star!12107) (regOne!24727 (regTwo!24726 (regex!7202 e1!99))))) b!4111430))

(assert (= (and b!4111131 ((_ is Union!12107) (regOne!24727 (regTwo!24726 (regex!7202 e1!99))))) b!4111431))

(declare-fun b!4111434 () Bool)

(declare-fun e!2550883 () Bool)

(declare-fun tp!1250244 () Bool)

(assert (=> b!4111434 (= e!2550883 tp!1250244)))

(declare-fun b!4111435 () Bool)

(declare-fun tp!1250243 () Bool)

(declare-fun tp!1250247 () Bool)

(assert (=> b!4111435 (= e!2550883 (and tp!1250243 tp!1250247))))

(assert (=> b!4111131 (= tp!1249944 e!2550883)))

(declare-fun b!4111433 () Bool)

(declare-fun tp!1250245 () Bool)

(declare-fun tp!1250246 () Bool)

(assert (=> b!4111433 (= e!2550883 (and tp!1250245 tp!1250246))))

(declare-fun b!4111432 () Bool)

(assert (=> b!4111432 (= e!2550883 tp_is_empty!21163)))

(assert (= (and b!4111131 ((_ is ElementMatch!12107) (regTwo!24727 (regTwo!24726 (regex!7202 e1!99))))) b!4111432))

(assert (= (and b!4111131 ((_ is Concat!19540) (regTwo!24727 (regTwo!24726 (regex!7202 e1!99))))) b!4111433))

(assert (= (and b!4111131 ((_ is Star!12107) (regTwo!24727 (regTwo!24726 (regex!7202 e1!99))))) b!4111434))

(assert (= (and b!4111131 ((_ is Union!12107) (regTwo!24727 (regTwo!24726 (regex!7202 e1!99))))) b!4111435))

(declare-fun b!4111438 () Bool)

(declare-fun e!2550884 () Bool)

(declare-fun tp!1250249 () Bool)

(assert (=> b!4111438 (= e!2550884 tp!1250249)))

(declare-fun b!4111439 () Bool)

(declare-fun tp!1250248 () Bool)

(declare-fun tp!1250252 () Bool)

(assert (=> b!4111439 (= e!2550884 (and tp!1250248 tp!1250252))))

(assert (=> b!4111078 (= tp!1249878 e!2550884)))

(declare-fun b!4111437 () Bool)

(declare-fun tp!1250250 () Bool)

(declare-fun tp!1250251 () Bool)

(assert (=> b!4111437 (= e!2550884 (and tp!1250250 tp!1250251))))

(declare-fun b!4111436 () Bool)

(assert (=> b!4111436 (= e!2550884 tp_is_empty!21163)))

(assert (= (and b!4111078 ((_ is ElementMatch!12107) (regOne!24726 (regOne!24726 (regex!7202 e2!99))))) b!4111436))

(assert (= (and b!4111078 ((_ is Concat!19540) (regOne!24726 (regOne!24726 (regex!7202 e2!99))))) b!4111437))

(assert (= (and b!4111078 ((_ is Star!12107) (regOne!24726 (regOne!24726 (regex!7202 e2!99))))) b!4111438))

(assert (= (and b!4111078 ((_ is Union!12107) (regOne!24726 (regOne!24726 (regex!7202 e2!99))))) b!4111439))

(declare-fun b!4111442 () Bool)

(declare-fun e!2550885 () Bool)

(declare-fun tp!1250254 () Bool)

(assert (=> b!4111442 (= e!2550885 tp!1250254)))

(declare-fun b!4111443 () Bool)

(declare-fun tp!1250253 () Bool)

(declare-fun tp!1250257 () Bool)

(assert (=> b!4111443 (= e!2550885 (and tp!1250253 tp!1250257))))

(assert (=> b!4111078 (= tp!1249879 e!2550885)))

(declare-fun b!4111441 () Bool)

(declare-fun tp!1250255 () Bool)

(declare-fun tp!1250256 () Bool)

(assert (=> b!4111441 (= e!2550885 (and tp!1250255 tp!1250256))))

(declare-fun b!4111440 () Bool)

(assert (=> b!4111440 (= e!2550885 tp_is_empty!21163)))

(assert (= (and b!4111078 ((_ is ElementMatch!12107) (regTwo!24726 (regOne!24726 (regex!7202 e2!99))))) b!4111440))

(assert (= (and b!4111078 ((_ is Concat!19540) (regTwo!24726 (regOne!24726 (regex!7202 e2!99))))) b!4111441))

(assert (= (and b!4111078 ((_ is Star!12107) (regTwo!24726 (regOne!24726 (regex!7202 e2!99))))) b!4111442))

(assert (= (and b!4111078 ((_ is Union!12107) (regTwo!24726 (regOne!24726 (regex!7202 e2!99))))) b!4111443))

(declare-fun b!4111446 () Bool)

(declare-fun e!2550886 () Bool)

(declare-fun tp!1250259 () Bool)

(assert (=> b!4111446 (= e!2550886 tp!1250259)))

(declare-fun b!4111447 () Bool)

(declare-fun tp!1250258 () Bool)

(declare-fun tp!1250262 () Bool)

(assert (=> b!4111447 (= e!2550886 (and tp!1250258 tp!1250262))))

(assert (=> b!4111122 (= tp!1249931 e!2550886)))

(declare-fun b!4111445 () Bool)

(declare-fun tp!1250260 () Bool)

(declare-fun tp!1250261 () Bool)

(assert (=> b!4111445 (= e!2550886 (and tp!1250260 tp!1250261))))

(declare-fun b!4111444 () Bool)

(assert (=> b!4111444 (= e!2550886 tp_is_empty!21163)))

(assert (= (and b!4111122 ((_ is ElementMatch!12107) (reg!12436 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111444))

(assert (= (and b!4111122 ((_ is Concat!19540) (reg!12436 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111445))

(assert (= (and b!4111122 ((_ is Star!12107) (reg!12436 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111446))

(assert (= (and b!4111122 ((_ is Union!12107) (reg!12436 (reg!12436 (regex!7202 (h!49707 l!6462)))))) b!4111447))

(declare-fun b!4111450 () Bool)

(declare-fun e!2550887 () Bool)

(declare-fun tp!1250264 () Bool)

(assert (=> b!4111450 (= e!2550887 tp!1250264)))

(declare-fun b!4111451 () Bool)

(declare-fun tp!1250263 () Bool)

(declare-fun tp!1250267 () Bool)

(assert (=> b!4111451 (= e!2550887 (and tp!1250263 tp!1250267))))

(assert (=> b!4111129 (= tp!1249942 e!2550887)))

(declare-fun b!4111449 () Bool)

(declare-fun tp!1250265 () Bool)

(declare-fun tp!1250266 () Bool)

(assert (=> b!4111449 (= e!2550887 (and tp!1250265 tp!1250266))))

(declare-fun b!4111448 () Bool)

(assert (=> b!4111448 (= e!2550887 tp_is_empty!21163)))

(assert (= (and b!4111129 ((_ is ElementMatch!12107) (regOne!24726 (regTwo!24726 (regex!7202 e1!99))))) b!4111448))

(assert (= (and b!4111129 ((_ is Concat!19540) (regOne!24726 (regTwo!24726 (regex!7202 e1!99))))) b!4111449))

(assert (= (and b!4111129 ((_ is Star!12107) (regOne!24726 (regTwo!24726 (regex!7202 e1!99))))) b!4111450))

(assert (= (and b!4111129 ((_ is Union!12107) (regOne!24726 (regTwo!24726 (regex!7202 e1!99))))) b!4111451))

(declare-fun b!4111454 () Bool)

(declare-fun e!2550888 () Bool)

(declare-fun tp!1250269 () Bool)

(assert (=> b!4111454 (= e!2550888 tp!1250269)))

(declare-fun b!4111455 () Bool)

(declare-fun tp!1250268 () Bool)

(declare-fun tp!1250272 () Bool)

(assert (=> b!4111455 (= e!2550888 (and tp!1250268 tp!1250272))))

(assert (=> b!4111129 (= tp!1249943 e!2550888)))

(declare-fun b!4111453 () Bool)

(declare-fun tp!1250270 () Bool)

(declare-fun tp!1250271 () Bool)

(assert (=> b!4111453 (= e!2550888 (and tp!1250270 tp!1250271))))

(declare-fun b!4111452 () Bool)

(assert (=> b!4111452 (= e!2550888 tp_is_empty!21163)))

(assert (= (and b!4111129 ((_ is ElementMatch!12107) (regTwo!24726 (regTwo!24726 (regex!7202 e1!99))))) b!4111452))

(assert (= (and b!4111129 ((_ is Concat!19540) (regTwo!24726 (regTwo!24726 (regex!7202 e1!99))))) b!4111453))

(assert (= (and b!4111129 ((_ is Star!12107) (regTwo!24726 (regTwo!24726 (regex!7202 e1!99))))) b!4111454))

(assert (= (and b!4111129 ((_ is Union!12107) (regTwo!24726 (regTwo!24726 (regex!7202 e1!99))))) b!4111455))

(declare-fun b!4111458 () Bool)

(declare-fun e!2550889 () Bool)

(declare-fun tp!1250274 () Bool)

(assert (=> b!4111458 (= e!2550889 tp!1250274)))

(declare-fun b!4111459 () Bool)

(declare-fun tp!1250273 () Bool)

(declare-fun tp!1250277 () Bool)

(assert (=> b!4111459 (= e!2550889 (and tp!1250273 tp!1250277))))

(assert (=> b!4111080 (= tp!1249876 e!2550889)))

(declare-fun b!4111457 () Bool)

(declare-fun tp!1250275 () Bool)

(declare-fun tp!1250276 () Bool)

(assert (=> b!4111457 (= e!2550889 (and tp!1250275 tp!1250276))))

(declare-fun b!4111456 () Bool)

(assert (=> b!4111456 (= e!2550889 tp_is_empty!21163)))

(assert (= (and b!4111080 ((_ is ElementMatch!12107) (regOne!24727 (regOne!24726 (regex!7202 e2!99))))) b!4111456))

(assert (= (and b!4111080 ((_ is Concat!19540) (regOne!24727 (regOne!24726 (regex!7202 e2!99))))) b!4111457))

(assert (= (and b!4111080 ((_ is Star!12107) (regOne!24727 (regOne!24726 (regex!7202 e2!99))))) b!4111458))

(assert (= (and b!4111080 ((_ is Union!12107) (regOne!24727 (regOne!24726 (regex!7202 e2!99))))) b!4111459))

(declare-fun b!4111462 () Bool)

(declare-fun e!2550890 () Bool)

(declare-fun tp!1250279 () Bool)

(assert (=> b!4111462 (= e!2550890 tp!1250279)))

(declare-fun b!4111463 () Bool)

(declare-fun tp!1250278 () Bool)

(declare-fun tp!1250282 () Bool)

(assert (=> b!4111463 (= e!2550890 (and tp!1250278 tp!1250282))))

(assert (=> b!4111080 (= tp!1249880 e!2550890)))

(declare-fun b!4111461 () Bool)

(declare-fun tp!1250280 () Bool)

(declare-fun tp!1250281 () Bool)

(assert (=> b!4111461 (= e!2550890 (and tp!1250280 tp!1250281))))

(declare-fun b!4111460 () Bool)

(assert (=> b!4111460 (= e!2550890 tp_is_empty!21163)))

(assert (= (and b!4111080 ((_ is ElementMatch!12107) (regTwo!24727 (regOne!24726 (regex!7202 e2!99))))) b!4111460))

(assert (= (and b!4111080 ((_ is Concat!19540) (regTwo!24727 (regOne!24726 (regex!7202 e2!99))))) b!4111461))

(assert (= (and b!4111080 ((_ is Star!12107) (regTwo!24727 (regOne!24726 (regex!7202 e2!99))))) b!4111462))

(assert (= (and b!4111080 ((_ is Union!12107) (regTwo!24727 (regOne!24726 (regex!7202 e2!99))))) b!4111463))

(declare-fun b!4111466 () Bool)

(declare-fun e!2550891 () Bool)

(declare-fun tp!1250284 () Bool)

(assert (=> b!4111466 (= e!2550891 tp!1250284)))

(declare-fun b!4111467 () Bool)

(declare-fun tp!1250283 () Bool)

(declare-fun tp!1250287 () Bool)

(assert (=> b!4111467 (= e!2550891 (and tp!1250283 tp!1250287))))

(assert (=> b!4111071 (= tp!1249867 e!2550891)))

(declare-fun b!4111465 () Bool)

(declare-fun tp!1250285 () Bool)

(declare-fun tp!1250286 () Bool)

(assert (=> b!4111465 (= e!2550891 (and tp!1250285 tp!1250286))))

(declare-fun b!4111464 () Bool)

(assert (=> b!4111464 (= e!2550891 tp_is_empty!21163)))

(assert (= (and b!4111071 ((_ is ElementMatch!12107) (reg!12436 (regOne!24727 (regex!7202 e1!99))))) b!4111464))

(assert (= (and b!4111071 ((_ is Concat!19540) (reg!12436 (regOne!24727 (regex!7202 e1!99))))) b!4111465))

(assert (= (and b!4111071 ((_ is Star!12107) (reg!12436 (regOne!24727 (regex!7202 e1!99))))) b!4111466))

(assert (= (and b!4111071 ((_ is Union!12107) (reg!12436 (regOne!24727 (regex!7202 e1!99))))) b!4111467))

(declare-fun b!4111470 () Bool)

(declare-fun e!2550892 () Bool)

(declare-fun tp!1250289 () Bool)

(assert (=> b!4111470 (= e!2550892 tp!1250289)))

(declare-fun b!4111471 () Bool)

(declare-fun tp!1250288 () Bool)

(declare-fun tp!1250292 () Bool)

(assert (=> b!4111471 (= e!2550892 (and tp!1250288 tp!1250292))))

(assert (=> b!4111115 (= tp!1249920 e!2550892)))

(declare-fun b!4111469 () Bool)

(declare-fun tp!1250290 () Bool)

(declare-fun tp!1250291 () Bool)

(assert (=> b!4111469 (= e!2550892 (and tp!1250290 tp!1250291))))

(declare-fun b!4111468 () Bool)

(assert (=> b!4111468 (= e!2550892 tp_is_empty!21163)))

(assert (= (and b!4111115 ((_ is ElementMatch!12107) (regOne!24727 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111468))

(assert (= (and b!4111115 ((_ is Concat!19540) (regOne!24727 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111469))

(assert (= (and b!4111115 ((_ is Star!12107) (regOne!24727 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111470))

(assert (= (and b!4111115 ((_ is Union!12107) (regOne!24727 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111471))

(declare-fun b!4111474 () Bool)

(declare-fun e!2550893 () Bool)

(declare-fun tp!1250294 () Bool)

(assert (=> b!4111474 (= e!2550893 tp!1250294)))

(declare-fun b!4111475 () Bool)

(declare-fun tp!1250293 () Bool)

(declare-fun tp!1250297 () Bool)

(assert (=> b!4111475 (= e!2550893 (and tp!1250293 tp!1250297))))

(assert (=> b!4111115 (= tp!1249924 e!2550893)))

(declare-fun b!4111473 () Bool)

(declare-fun tp!1250295 () Bool)

(declare-fun tp!1250296 () Bool)

(assert (=> b!4111473 (= e!2550893 (and tp!1250295 tp!1250296))))

(declare-fun b!4111472 () Bool)

(assert (=> b!4111472 (= e!2550893 tp_is_empty!21163)))

(assert (= (and b!4111115 ((_ is ElementMatch!12107) (regTwo!24727 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111472))

(assert (= (and b!4111115 ((_ is Concat!19540) (regTwo!24727 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111473))

(assert (= (and b!4111115 ((_ is Star!12107) (regTwo!24727 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111474))

(assert (= (and b!4111115 ((_ is Union!12107) (regTwo!24727 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111475))

(declare-fun b!4111478 () Bool)

(declare-fun e!2550894 () Bool)

(declare-fun tp!1250299 () Bool)

(assert (=> b!4111478 (= e!2550894 tp!1250299)))

(declare-fun b!4111479 () Bool)

(declare-fun tp!1250298 () Bool)

(declare-fun tp!1250302 () Bool)

(assert (=> b!4111479 (= e!2550894 (and tp!1250298 tp!1250302))))

(assert (=> b!4111106 (= tp!1249911 e!2550894)))

(declare-fun b!4111477 () Bool)

(declare-fun tp!1250300 () Bool)

(declare-fun tp!1250301 () Bool)

(assert (=> b!4111477 (= e!2550894 (and tp!1250300 tp!1250301))))

(declare-fun b!4111476 () Bool)

(assert (=> b!4111476 (= e!2550894 tp_is_empty!21163)))

(assert (= (and b!4111106 ((_ is ElementMatch!12107) (reg!12436 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111476))

(assert (= (and b!4111106 ((_ is Concat!19540) (reg!12436 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111477))

(assert (= (and b!4111106 ((_ is Star!12107) (reg!12436 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111478))

(assert (= (and b!4111106 ((_ is Union!12107) (reg!12436 (regex!7202 (h!49707 (t!340162 l!6462)))))) b!4111479))

(declare-fun b!4111482 () Bool)

(declare-fun e!2550895 () Bool)

(declare-fun tp!1250304 () Bool)

(assert (=> b!4111482 (= e!2550895 tp!1250304)))

(declare-fun b!4111483 () Bool)

(declare-fun tp!1250303 () Bool)

(declare-fun tp!1250307 () Bool)

(assert (=> b!4111483 (= e!2550895 (and tp!1250303 tp!1250307))))

(assert (=> b!4111113 (= tp!1249922 e!2550895)))

(declare-fun b!4111481 () Bool)

(declare-fun tp!1250305 () Bool)

(declare-fun tp!1250306 () Bool)

(assert (=> b!4111481 (= e!2550895 (and tp!1250305 tp!1250306))))

(declare-fun b!4111480 () Bool)

(assert (=> b!4111480 (= e!2550895 tp_is_empty!21163)))

(assert (= (and b!4111113 ((_ is ElementMatch!12107) (regOne!24726 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111480))

(assert (= (and b!4111113 ((_ is Concat!19540) (regOne!24726 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111481))

(assert (= (and b!4111113 ((_ is Star!12107) (regOne!24726 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111482))

(assert (= (and b!4111113 ((_ is Union!12107) (regOne!24726 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111483))

(declare-fun b!4111486 () Bool)

(declare-fun e!2550896 () Bool)

(declare-fun tp!1250309 () Bool)

(assert (=> b!4111486 (= e!2550896 tp!1250309)))

(declare-fun b!4111487 () Bool)

(declare-fun tp!1250308 () Bool)

(declare-fun tp!1250312 () Bool)

(assert (=> b!4111487 (= e!2550896 (and tp!1250308 tp!1250312))))

(assert (=> b!4111113 (= tp!1249923 e!2550896)))

(declare-fun b!4111485 () Bool)

(declare-fun tp!1250310 () Bool)

(declare-fun tp!1250311 () Bool)

(assert (=> b!4111485 (= e!2550896 (and tp!1250310 tp!1250311))))

(declare-fun b!4111484 () Bool)

(assert (=> b!4111484 (= e!2550896 tp_is_empty!21163)))

(assert (= (and b!4111113 ((_ is ElementMatch!12107) (regTwo!24726 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111484))

(assert (= (and b!4111113 ((_ is Concat!19540) (regTwo!24726 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111485))

(assert (= (and b!4111113 ((_ is Star!12107) (regTwo!24726 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111486))

(assert (= (and b!4111113 ((_ is Union!12107) (regTwo!24726 (regTwo!24727 (regex!7202 (h!49707 l!6462)))))) b!4111487))

(declare-fun b!4111490 () Bool)

(declare-fun e!2550897 () Bool)

(declare-fun tp!1250314 () Bool)

(assert (=> b!4111490 (= e!2550897 tp!1250314)))

(declare-fun b!4111491 () Bool)

(declare-fun tp!1250313 () Bool)

(declare-fun tp!1250317 () Bool)

(assert (=> b!4111491 (= e!2550897 (and tp!1250313 tp!1250317))))

(assert (=> b!4111099 (= tp!1249900 e!2550897)))

(declare-fun b!4111489 () Bool)

(declare-fun tp!1250315 () Bool)

(declare-fun tp!1250316 () Bool)

(assert (=> b!4111489 (= e!2550897 (and tp!1250315 tp!1250316))))

(declare-fun b!4111488 () Bool)

(assert (=> b!4111488 (= e!2550897 tp_is_empty!21163)))

(assert (= (and b!4111099 ((_ is ElementMatch!12107) (regOne!24727 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111488))

(assert (= (and b!4111099 ((_ is Concat!19540) (regOne!24727 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111489))

(assert (= (and b!4111099 ((_ is Star!12107) (regOne!24727 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111490))

(assert (= (and b!4111099 ((_ is Union!12107) (regOne!24727 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111491))

(declare-fun b!4111494 () Bool)

(declare-fun e!2550898 () Bool)

(declare-fun tp!1250319 () Bool)

(assert (=> b!4111494 (= e!2550898 tp!1250319)))

(declare-fun b!4111495 () Bool)

(declare-fun tp!1250318 () Bool)

(declare-fun tp!1250322 () Bool)

(assert (=> b!4111495 (= e!2550898 (and tp!1250318 tp!1250322))))

(assert (=> b!4111099 (= tp!1249904 e!2550898)))

(declare-fun b!4111493 () Bool)

(declare-fun tp!1250320 () Bool)

(declare-fun tp!1250321 () Bool)

(assert (=> b!4111493 (= e!2550898 (and tp!1250320 tp!1250321))))

(declare-fun b!4111492 () Bool)

(assert (=> b!4111492 (= e!2550898 tp_is_empty!21163)))

(assert (= (and b!4111099 ((_ is ElementMatch!12107) (regTwo!24727 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111492))

(assert (= (and b!4111099 ((_ is Concat!19540) (regTwo!24727 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111493))

(assert (= (and b!4111099 ((_ is Star!12107) (regTwo!24727 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111494))

(assert (= (and b!4111099 ((_ is Union!12107) (regTwo!24727 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111495))

(declare-fun b!4111498 () Bool)

(declare-fun e!2550899 () Bool)

(declare-fun tp!1250324 () Bool)

(assert (=> b!4111498 (= e!2550899 tp!1250324)))

(declare-fun b!4111499 () Bool)

(declare-fun tp!1250323 () Bool)

(declare-fun tp!1250327 () Bool)

(assert (=> b!4111499 (= e!2550899 (and tp!1250323 tp!1250327))))

(assert (=> b!4111090 (= tp!1249891 e!2550899)))

(declare-fun b!4111497 () Bool)

(declare-fun tp!1250325 () Bool)

(declare-fun tp!1250326 () Bool)

(assert (=> b!4111497 (= e!2550899 (and tp!1250325 tp!1250326))))

(declare-fun b!4111496 () Bool)

(assert (=> b!4111496 (= e!2550899 tp_is_empty!21163)))

(assert (= (and b!4111090 ((_ is ElementMatch!12107) (reg!12436 (regOne!24727 (regex!7202 e2!99))))) b!4111496))

(assert (= (and b!4111090 ((_ is Concat!19540) (reg!12436 (regOne!24727 (regex!7202 e2!99))))) b!4111497))

(assert (= (and b!4111090 ((_ is Star!12107) (reg!12436 (regOne!24727 (regex!7202 e2!99))))) b!4111498))

(assert (= (and b!4111090 ((_ is Union!12107) (reg!12436 (regOne!24727 (regex!7202 e2!99))))) b!4111499))

(declare-fun b!4111502 () Bool)

(declare-fun e!2550900 () Bool)

(declare-fun tp!1250329 () Bool)

(assert (=> b!4111502 (= e!2550900 tp!1250329)))

(declare-fun b!4111503 () Bool)

(declare-fun tp!1250328 () Bool)

(declare-fun tp!1250332 () Bool)

(assert (=> b!4111503 (= e!2550900 (and tp!1250328 tp!1250332))))

(assert (=> b!4111097 (= tp!1249902 e!2550900)))

(declare-fun b!4111501 () Bool)

(declare-fun tp!1250330 () Bool)

(declare-fun tp!1250331 () Bool)

(assert (=> b!4111501 (= e!2550900 (and tp!1250330 tp!1250331))))

(declare-fun b!4111500 () Bool)

(assert (=> b!4111500 (= e!2550900 tp_is_empty!21163)))

(assert (= (and b!4111097 ((_ is ElementMatch!12107) (regOne!24726 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111500))

(assert (= (and b!4111097 ((_ is Concat!19540) (regOne!24726 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111501))

(assert (= (and b!4111097 ((_ is Star!12107) (regOne!24726 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111502))

(assert (= (and b!4111097 ((_ is Union!12107) (regOne!24726 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111503))

(declare-fun b!4111506 () Bool)

(declare-fun e!2550901 () Bool)

(declare-fun tp!1250334 () Bool)

(assert (=> b!4111506 (= e!2550901 tp!1250334)))

(declare-fun b!4111507 () Bool)

(declare-fun tp!1250333 () Bool)

(declare-fun tp!1250337 () Bool)

(assert (=> b!4111507 (= e!2550901 (and tp!1250333 tp!1250337))))

(assert (=> b!4111097 (= tp!1249903 e!2550901)))

(declare-fun b!4111505 () Bool)

(declare-fun tp!1250335 () Bool)

(declare-fun tp!1250336 () Bool)

(assert (=> b!4111505 (= e!2550901 (and tp!1250335 tp!1250336))))

(declare-fun b!4111504 () Bool)

(assert (=> b!4111504 (= e!2550901 tp_is_empty!21163)))

(assert (= (and b!4111097 ((_ is ElementMatch!12107) (regTwo!24726 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111504))

(assert (= (and b!4111097 ((_ is Concat!19540) (regTwo!24726 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111505))

(assert (= (and b!4111097 ((_ is Star!12107) (regTwo!24726 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111506))

(assert (= (and b!4111097 ((_ is Union!12107) (regTwo!24726 (regOne!24726 (regex!7202 (h!49707 l!6462)))))) b!4111507))

(declare-fun b!4111510 () Bool)

(declare-fun e!2550902 () Bool)

(declare-fun tp!1250339 () Bool)

(assert (=> b!4111510 (= e!2550902 tp!1250339)))

(declare-fun b!4111511 () Bool)

(declare-fun tp!1250338 () Bool)

(declare-fun tp!1250342 () Bool)

(assert (=> b!4111511 (= e!2550902 (and tp!1250338 tp!1250342))))

(assert (=> b!4111082 (= tp!1249883 e!2550902)))

(declare-fun b!4111509 () Bool)

(declare-fun tp!1250340 () Bool)

(declare-fun tp!1250341 () Bool)

(assert (=> b!4111509 (= e!2550902 (and tp!1250340 tp!1250341))))

(declare-fun b!4111508 () Bool)

(assert (=> b!4111508 (= e!2550902 tp_is_empty!21163)))

(assert (= (and b!4111082 ((_ is ElementMatch!12107) (regOne!24726 (regTwo!24726 (regex!7202 e2!99))))) b!4111508))

(assert (= (and b!4111082 ((_ is Concat!19540) (regOne!24726 (regTwo!24726 (regex!7202 e2!99))))) b!4111509))

(assert (= (and b!4111082 ((_ is Star!12107) (regOne!24726 (regTwo!24726 (regex!7202 e2!99))))) b!4111510))

(assert (= (and b!4111082 ((_ is Union!12107) (regOne!24726 (regTwo!24726 (regex!7202 e2!99))))) b!4111511))

(declare-fun b!4111514 () Bool)

(declare-fun e!2550903 () Bool)

(declare-fun tp!1250344 () Bool)

(assert (=> b!4111514 (= e!2550903 tp!1250344)))

(declare-fun b!4111515 () Bool)

(declare-fun tp!1250343 () Bool)

(declare-fun tp!1250347 () Bool)

(assert (=> b!4111515 (= e!2550903 (and tp!1250343 tp!1250347))))

(assert (=> b!4111082 (= tp!1249884 e!2550903)))

(declare-fun b!4111513 () Bool)

(declare-fun tp!1250345 () Bool)

(declare-fun tp!1250346 () Bool)

(assert (=> b!4111513 (= e!2550903 (and tp!1250345 tp!1250346))))

(declare-fun b!4111512 () Bool)

(assert (=> b!4111512 (= e!2550903 tp_is_empty!21163)))

(assert (= (and b!4111082 ((_ is ElementMatch!12107) (regTwo!24726 (regTwo!24726 (regex!7202 e2!99))))) b!4111512))

(assert (= (and b!4111082 ((_ is Concat!19540) (regTwo!24726 (regTwo!24726 (regex!7202 e2!99))))) b!4111513))

(assert (= (and b!4111082 ((_ is Star!12107) (regTwo!24726 (regTwo!24726 (regex!7202 e2!99))))) b!4111514))

(assert (= (and b!4111082 ((_ is Union!12107) (regTwo!24726 (regTwo!24726 (regex!7202 e2!99))))) b!4111515))

(declare-fun b!4111518 () Bool)

(declare-fun e!2550904 () Bool)

(declare-fun tp!1250349 () Bool)

(assert (=> b!4111518 (= e!2550904 tp!1250349)))

(declare-fun b!4111519 () Bool)

(declare-fun tp!1250348 () Bool)

(declare-fun tp!1250352 () Bool)

(assert (=> b!4111519 (= e!2550904 (and tp!1250348 tp!1250352))))

(assert (=> b!4111126 (= tp!1249936 e!2550904)))

(declare-fun b!4111517 () Bool)

(declare-fun tp!1250350 () Bool)

(declare-fun tp!1250351 () Bool)

(assert (=> b!4111517 (= e!2550904 (and tp!1250350 tp!1250351))))

(declare-fun b!4111516 () Bool)

(assert (=> b!4111516 (= e!2550904 tp_is_empty!21163)))

(assert (= (and b!4111126 ((_ is ElementMatch!12107) (reg!12436 (regOne!24726 (regex!7202 e1!99))))) b!4111516))

(assert (= (and b!4111126 ((_ is Concat!19540) (reg!12436 (regOne!24726 (regex!7202 e1!99))))) b!4111517))

(assert (= (and b!4111126 ((_ is Star!12107) (reg!12436 (regOne!24726 (regex!7202 e1!99))))) b!4111518))

(assert (= (and b!4111126 ((_ is Union!12107) (reg!12436 (regOne!24726 (regex!7202 e1!99))))) b!4111519))

(declare-fun b!4111522 () Bool)

(declare-fun e!2550905 () Bool)

(declare-fun tp!1250354 () Bool)

(assert (=> b!4111522 (= e!2550905 tp!1250354)))

(declare-fun b!4111523 () Bool)

(declare-fun tp!1250353 () Bool)

(declare-fun tp!1250357 () Bool)

(assert (=> b!4111523 (= e!2550905 (and tp!1250353 tp!1250357))))

(assert (=> b!4111117 (= tp!1249927 e!2550905)))

(declare-fun b!4111521 () Bool)

(declare-fun tp!1250355 () Bool)

(declare-fun tp!1250356 () Bool)

(assert (=> b!4111521 (= e!2550905 (and tp!1250355 tp!1250356))))

(declare-fun b!4111520 () Bool)

(assert (=> b!4111520 (= e!2550905 tp_is_empty!21163)))

(assert (= (and b!4111117 ((_ is ElementMatch!12107) (regOne!24726 (reg!12436 (regex!7202 e1!99))))) b!4111520))

(assert (= (and b!4111117 ((_ is Concat!19540) (regOne!24726 (reg!12436 (regex!7202 e1!99))))) b!4111521))

(assert (= (and b!4111117 ((_ is Star!12107) (regOne!24726 (reg!12436 (regex!7202 e1!99))))) b!4111522))

(assert (= (and b!4111117 ((_ is Union!12107) (regOne!24726 (reg!12436 (regex!7202 e1!99))))) b!4111523))

(declare-fun b!4111526 () Bool)

(declare-fun e!2550906 () Bool)

(declare-fun tp!1250359 () Bool)

(assert (=> b!4111526 (= e!2550906 tp!1250359)))

(declare-fun b!4111527 () Bool)

(declare-fun tp!1250358 () Bool)

(declare-fun tp!1250362 () Bool)

(assert (=> b!4111527 (= e!2550906 (and tp!1250358 tp!1250362))))

(assert (=> b!4111117 (= tp!1249928 e!2550906)))

(declare-fun b!4111525 () Bool)

(declare-fun tp!1250360 () Bool)

(declare-fun tp!1250361 () Bool)

(assert (=> b!4111525 (= e!2550906 (and tp!1250360 tp!1250361))))

(declare-fun b!4111524 () Bool)

(assert (=> b!4111524 (= e!2550906 tp_is_empty!21163)))

(assert (= (and b!4111117 ((_ is ElementMatch!12107) (regTwo!24726 (reg!12436 (regex!7202 e1!99))))) b!4111524))

(assert (= (and b!4111117 ((_ is Concat!19540) (regTwo!24726 (reg!12436 (regex!7202 e1!99))))) b!4111525))

(assert (= (and b!4111117 ((_ is Star!12107) (regTwo!24726 (reg!12436 (regex!7202 e1!99))))) b!4111526))

(assert (= (and b!4111117 ((_ is Union!12107) (regTwo!24726 (reg!12436 (regex!7202 e1!99))))) b!4111527))

(declare-fun b!4111530 () Bool)

(declare-fun e!2550907 () Bool)

(declare-fun tp!1250364 () Bool)

(assert (=> b!4111530 (= e!2550907 tp!1250364)))

(declare-fun b!4111531 () Bool)

(declare-fun tp!1250363 () Bool)

(declare-fun tp!1250367 () Bool)

(assert (=> b!4111531 (= e!2550907 (and tp!1250363 tp!1250367))))

(assert (=> b!4111075 (= tp!1249872 e!2550907)))

(declare-fun b!4111529 () Bool)

(declare-fun tp!1250365 () Bool)

(declare-fun tp!1250366 () Bool)

(assert (=> b!4111529 (= e!2550907 (and tp!1250365 tp!1250366))))

(declare-fun b!4111528 () Bool)

(assert (=> b!4111528 (= e!2550907 tp_is_empty!21163)))

(assert (= (and b!4111075 ((_ is ElementMatch!12107) (reg!12436 (regTwo!24727 (regex!7202 e1!99))))) b!4111528))

(assert (= (and b!4111075 ((_ is Concat!19540) (reg!12436 (regTwo!24727 (regex!7202 e1!99))))) b!4111529))

(assert (= (and b!4111075 ((_ is Star!12107) (reg!12436 (regTwo!24727 (regex!7202 e1!99))))) b!4111530))

(assert (= (and b!4111075 ((_ is Union!12107) (reg!12436 (regTwo!24727 (regex!7202 e1!99))))) b!4111531))

(declare-fun b!4111534 () Bool)

(declare-fun e!2550908 () Bool)

(declare-fun tp!1250369 () Bool)

(assert (=> b!4111534 (= e!2550908 tp!1250369)))

(declare-fun b!4111535 () Bool)

(declare-fun tp!1250368 () Bool)

(declare-fun tp!1250372 () Bool)

(assert (=> b!4111535 (= e!2550908 (and tp!1250368 tp!1250372))))

(assert (=> b!4111119 (= tp!1249925 e!2550908)))

(declare-fun b!4111533 () Bool)

(declare-fun tp!1250370 () Bool)

(declare-fun tp!1250371 () Bool)

(assert (=> b!4111533 (= e!2550908 (and tp!1250370 tp!1250371))))

(declare-fun b!4111532 () Bool)

(assert (=> b!4111532 (= e!2550908 tp_is_empty!21163)))

(assert (= (and b!4111119 ((_ is ElementMatch!12107) (regOne!24727 (reg!12436 (regex!7202 e1!99))))) b!4111532))

(assert (= (and b!4111119 ((_ is Concat!19540) (regOne!24727 (reg!12436 (regex!7202 e1!99))))) b!4111533))

(assert (= (and b!4111119 ((_ is Star!12107) (regOne!24727 (reg!12436 (regex!7202 e1!99))))) b!4111534))

(assert (= (and b!4111119 ((_ is Union!12107) (regOne!24727 (reg!12436 (regex!7202 e1!99))))) b!4111535))

(declare-fun b!4111538 () Bool)

(declare-fun e!2550909 () Bool)

(declare-fun tp!1250374 () Bool)

(assert (=> b!4111538 (= e!2550909 tp!1250374)))

(declare-fun b!4111539 () Bool)

(declare-fun tp!1250373 () Bool)

(declare-fun tp!1250377 () Bool)

(assert (=> b!4111539 (= e!2550909 (and tp!1250373 tp!1250377))))

(assert (=> b!4111119 (= tp!1249929 e!2550909)))

(declare-fun b!4111537 () Bool)

(declare-fun tp!1250375 () Bool)

(declare-fun tp!1250376 () Bool)

(assert (=> b!4111537 (= e!2550909 (and tp!1250375 tp!1250376))))

(declare-fun b!4111536 () Bool)

(assert (=> b!4111536 (= e!2550909 tp_is_empty!21163)))

(assert (= (and b!4111119 ((_ is ElementMatch!12107) (regTwo!24727 (reg!12436 (regex!7202 e1!99))))) b!4111536))

(assert (= (and b!4111119 ((_ is Concat!19540) (regTwo!24727 (reg!12436 (regex!7202 e1!99))))) b!4111537))

(assert (= (and b!4111119 ((_ is Star!12107) (regTwo!24727 (reg!12436 (regex!7202 e1!99))))) b!4111538))

(assert (= (and b!4111119 ((_ is Union!12107) (regTwo!24727 (reg!12436 (regex!7202 e1!99))))) b!4111539))

(declare-fun b!4111542 () Bool)

(declare-fun e!2550910 () Bool)

(declare-fun tp!1250379 () Bool)

(assert (=> b!4111542 (= e!2550910 tp!1250379)))

(declare-fun b!4111543 () Bool)

(declare-fun tp!1250378 () Bool)

(declare-fun tp!1250382 () Bool)

(assert (=> b!4111543 (= e!2550910 (and tp!1250378 tp!1250382))))

(assert (=> b!4111066 (= tp!1249863 e!2550910)))

(declare-fun b!4111541 () Bool)

(declare-fun tp!1250380 () Bool)

(declare-fun tp!1250381 () Bool)

(assert (=> b!4111541 (= e!2550910 (and tp!1250380 tp!1250381))))

(declare-fun b!4111540 () Bool)

(assert (=> b!4111540 (= e!2550910 tp_is_empty!21163)))

(assert (= (and b!4111066 ((_ is ElementMatch!12107) (regOne!24726 (reg!12436 (regex!7202 e2!99))))) b!4111540))

(assert (= (and b!4111066 ((_ is Concat!19540) (regOne!24726 (reg!12436 (regex!7202 e2!99))))) b!4111541))

(assert (= (and b!4111066 ((_ is Star!12107) (regOne!24726 (reg!12436 (regex!7202 e2!99))))) b!4111542))

(assert (= (and b!4111066 ((_ is Union!12107) (regOne!24726 (reg!12436 (regex!7202 e2!99))))) b!4111543))

(declare-fun b!4111546 () Bool)

(declare-fun e!2550911 () Bool)

(declare-fun tp!1250384 () Bool)

(assert (=> b!4111546 (= e!2550911 tp!1250384)))

(declare-fun b!4111547 () Bool)

(declare-fun tp!1250383 () Bool)

(declare-fun tp!1250387 () Bool)

(assert (=> b!4111547 (= e!2550911 (and tp!1250383 tp!1250387))))

(assert (=> b!4111066 (= tp!1249864 e!2550911)))

(declare-fun b!4111545 () Bool)

(declare-fun tp!1250385 () Bool)

(declare-fun tp!1250386 () Bool)

(assert (=> b!4111545 (= e!2550911 (and tp!1250385 tp!1250386))))

(declare-fun b!4111544 () Bool)

(assert (=> b!4111544 (= e!2550911 tp_is_empty!21163)))

(assert (= (and b!4111066 ((_ is ElementMatch!12107) (regTwo!24726 (reg!12436 (regex!7202 e2!99))))) b!4111544))

(assert (= (and b!4111066 ((_ is Concat!19540) (regTwo!24726 (reg!12436 (regex!7202 e2!99))))) b!4111545))

(assert (= (and b!4111066 ((_ is Star!12107) (regTwo!24726 (reg!12436 (regex!7202 e2!99))))) b!4111546))

(assert (= (and b!4111066 ((_ is Union!12107) (regTwo!24726 (reg!12436 (regex!7202 e2!99))))) b!4111547))

(declare-fun b!4111550 () Bool)

(declare-fun e!2550912 () Bool)

(declare-fun tp!1250389 () Bool)

(assert (=> b!4111550 (= e!2550912 tp!1250389)))

(declare-fun b!4111551 () Bool)

(declare-fun tp!1250388 () Bool)

(declare-fun tp!1250392 () Bool)

(assert (=> b!4111551 (= e!2550912 (and tp!1250388 tp!1250392))))

(assert (=> b!4111110 (= tp!1249916 e!2550912)))

(declare-fun b!4111549 () Bool)

(declare-fun tp!1250390 () Bool)

(declare-fun tp!1250391 () Bool)

(assert (=> b!4111549 (= e!2550912 (and tp!1250390 tp!1250391))))

(declare-fun b!4111548 () Bool)

(assert (=> b!4111548 (= e!2550912 tp_is_empty!21163)))

(assert (= (and b!4111110 ((_ is ElementMatch!12107) (reg!12436 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111548))

(assert (= (and b!4111110 ((_ is Concat!19540) (reg!12436 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111549))

(assert (= (and b!4111110 ((_ is Star!12107) (reg!12436 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111550))

(assert (= (and b!4111110 ((_ is Union!12107) (reg!12436 (regOne!24727 (regex!7202 (h!49707 l!6462)))))) b!4111551))

(declare-fun b!4111554 () Bool)

(declare-fun e!2550913 () Bool)

(declare-fun tp!1250394 () Bool)

(assert (=> b!4111554 (= e!2550913 tp!1250394)))

(declare-fun b!4111555 () Bool)

(declare-fun tp!1250393 () Bool)

(declare-fun tp!1250397 () Bool)

(assert (=> b!4111555 (= e!2550913 (and tp!1250393 tp!1250397))))

(assert (=> b!4111101 (= tp!1249907 e!2550913)))

(declare-fun b!4111553 () Bool)

(declare-fun tp!1250395 () Bool)

(declare-fun tp!1250396 () Bool)

(assert (=> b!4111553 (= e!2550913 (and tp!1250395 tp!1250396))))

(declare-fun b!4111552 () Bool)

(assert (=> b!4111552 (= e!2550913 tp_is_empty!21163)))

(assert (= (and b!4111101 ((_ is ElementMatch!12107) (regOne!24726 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111552))

(assert (= (and b!4111101 ((_ is Concat!19540) (regOne!24726 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111553))

(assert (= (and b!4111101 ((_ is Star!12107) (regOne!24726 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111554))

(assert (= (and b!4111101 ((_ is Union!12107) (regOne!24726 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111555))

(declare-fun b!4111558 () Bool)

(declare-fun e!2550914 () Bool)

(declare-fun tp!1250399 () Bool)

(assert (=> b!4111558 (= e!2550914 tp!1250399)))

(declare-fun b!4111559 () Bool)

(declare-fun tp!1250398 () Bool)

(declare-fun tp!1250402 () Bool)

(assert (=> b!4111559 (= e!2550914 (and tp!1250398 tp!1250402))))

(assert (=> b!4111101 (= tp!1249908 e!2550914)))

(declare-fun b!4111557 () Bool)

(declare-fun tp!1250400 () Bool)

(declare-fun tp!1250401 () Bool)

(assert (=> b!4111557 (= e!2550914 (and tp!1250400 tp!1250401))))

(declare-fun b!4111556 () Bool)

(assert (=> b!4111556 (= e!2550914 tp_is_empty!21163)))

(assert (= (and b!4111101 ((_ is ElementMatch!12107) (regTwo!24726 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111556))

(assert (= (and b!4111101 ((_ is Concat!19540) (regTwo!24726 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111557))

(assert (= (and b!4111101 ((_ is Star!12107) (regTwo!24726 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111558))

(assert (= (and b!4111101 ((_ is Union!12107) (regTwo!24726 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111559))

(declare-fun b!4111562 () Bool)

(declare-fun e!2550915 () Bool)

(declare-fun tp!1250404 () Bool)

(assert (=> b!4111562 (= e!2550915 tp!1250404)))

(declare-fun b!4111563 () Bool)

(declare-fun tp!1250403 () Bool)

(declare-fun tp!1250407 () Bool)

(assert (=> b!4111563 (= e!2550915 (and tp!1250403 tp!1250407))))

(assert (=> b!4111084 (= tp!1249881 e!2550915)))

(declare-fun b!4111561 () Bool)

(declare-fun tp!1250405 () Bool)

(declare-fun tp!1250406 () Bool)

(assert (=> b!4111561 (= e!2550915 (and tp!1250405 tp!1250406))))

(declare-fun b!4111560 () Bool)

(assert (=> b!4111560 (= e!2550915 tp_is_empty!21163)))

(assert (= (and b!4111084 ((_ is ElementMatch!12107) (regOne!24727 (regTwo!24726 (regex!7202 e2!99))))) b!4111560))

(assert (= (and b!4111084 ((_ is Concat!19540) (regOne!24727 (regTwo!24726 (regex!7202 e2!99))))) b!4111561))

(assert (= (and b!4111084 ((_ is Star!12107) (regOne!24727 (regTwo!24726 (regex!7202 e2!99))))) b!4111562))

(assert (= (and b!4111084 ((_ is Union!12107) (regOne!24727 (regTwo!24726 (regex!7202 e2!99))))) b!4111563))

(declare-fun b!4111566 () Bool)

(declare-fun e!2550916 () Bool)

(declare-fun tp!1250409 () Bool)

(assert (=> b!4111566 (= e!2550916 tp!1250409)))

(declare-fun b!4111567 () Bool)

(declare-fun tp!1250408 () Bool)

(declare-fun tp!1250412 () Bool)

(assert (=> b!4111567 (= e!2550916 (and tp!1250408 tp!1250412))))

(assert (=> b!4111084 (= tp!1249885 e!2550916)))

(declare-fun b!4111565 () Bool)

(declare-fun tp!1250410 () Bool)

(declare-fun tp!1250411 () Bool)

(assert (=> b!4111565 (= e!2550916 (and tp!1250410 tp!1250411))))

(declare-fun b!4111564 () Bool)

(assert (=> b!4111564 (= e!2550916 tp_is_empty!21163)))

(assert (= (and b!4111084 ((_ is ElementMatch!12107) (regTwo!24727 (regTwo!24726 (regex!7202 e2!99))))) b!4111564))

(assert (= (and b!4111084 ((_ is Concat!19540) (regTwo!24727 (regTwo!24726 (regex!7202 e2!99))))) b!4111565))

(assert (= (and b!4111084 ((_ is Star!12107) (regTwo!24727 (regTwo!24726 (regex!7202 e2!99))))) b!4111566))

(assert (= (and b!4111084 ((_ is Union!12107) (regTwo!24727 (regTwo!24726 (regex!7202 e2!99))))) b!4111567))

(declare-fun b!4111570 () Bool)

(declare-fun e!2550917 () Bool)

(declare-fun tp!1250414 () Bool)

(assert (=> b!4111570 (= e!2550917 tp!1250414)))

(declare-fun b!4111571 () Bool)

(declare-fun tp!1250413 () Bool)

(declare-fun tp!1250417 () Bool)

(assert (=> b!4111571 (= e!2550917 (and tp!1250413 tp!1250417))))

(assert (=> b!4111103 (= tp!1249905 e!2550917)))

(declare-fun b!4111569 () Bool)

(declare-fun tp!1250415 () Bool)

(declare-fun tp!1250416 () Bool)

(assert (=> b!4111569 (= e!2550917 (and tp!1250415 tp!1250416))))

(declare-fun b!4111568 () Bool)

(assert (=> b!4111568 (= e!2550917 tp_is_empty!21163)))

(assert (= (and b!4111103 ((_ is ElementMatch!12107) (regOne!24727 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111568))

(assert (= (and b!4111103 ((_ is Concat!19540) (regOne!24727 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111569))

(assert (= (and b!4111103 ((_ is Star!12107) (regOne!24727 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111570))

(assert (= (and b!4111103 ((_ is Union!12107) (regOne!24727 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111571))

(declare-fun b!4111574 () Bool)

(declare-fun e!2550918 () Bool)

(declare-fun tp!1250419 () Bool)

(assert (=> b!4111574 (= e!2550918 tp!1250419)))

(declare-fun b!4111575 () Bool)

(declare-fun tp!1250418 () Bool)

(declare-fun tp!1250422 () Bool)

(assert (=> b!4111575 (= e!2550918 (and tp!1250418 tp!1250422))))

(assert (=> b!4111103 (= tp!1249909 e!2550918)))

(declare-fun b!4111573 () Bool)

(declare-fun tp!1250420 () Bool)

(declare-fun tp!1250421 () Bool)

(assert (=> b!4111573 (= e!2550918 (and tp!1250420 tp!1250421))))

(declare-fun b!4111572 () Bool)

(assert (=> b!4111572 (= e!2550918 tp_is_empty!21163)))

(assert (= (and b!4111103 ((_ is ElementMatch!12107) (regTwo!24727 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111572))

(assert (= (and b!4111103 ((_ is Concat!19540) (regTwo!24727 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111573))

(assert (= (and b!4111103 ((_ is Star!12107) (regTwo!24727 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111574))

(assert (= (and b!4111103 ((_ is Union!12107) (regTwo!24727 (regTwo!24726 (regex!7202 (h!49707 l!6462)))))) b!4111575))

(declare-fun b!4111578 () Bool)

(declare-fun e!2550919 () Bool)

(declare-fun tp!1250424 () Bool)

(assert (=> b!4111578 (= e!2550919 tp!1250424)))

(declare-fun b!4111579 () Bool)

(declare-fun tp!1250423 () Bool)

(declare-fun tp!1250427 () Bool)

(assert (=> b!4111579 (= e!2550919 (and tp!1250423 tp!1250427))))

(assert (=> b!4111094 (= tp!1249896 e!2550919)))

(declare-fun b!4111577 () Bool)

(declare-fun tp!1250425 () Bool)

(declare-fun tp!1250426 () Bool)

(assert (=> b!4111577 (= e!2550919 (and tp!1250425 tp!1250426))))

(declare-fun b!4111576 () Bool)

(assert (=> b!4111576 (= e!2550919 tp_is_empty!21163)))

(assert (= (and b!4111094 ((_ is ElementMatch!12107) (reg!12436 (regTwo!24727 (regex!7202 e2!99))))) b!4111576))

(assert (= (and b!4111094 ((_ is Concat!19540) (reg!12436 (regTwo!24727 (regex!7202 e2!99))))) b!4111577))

(assert (= (and b!4111094 ((_ is Star!12107) (reg!12436 (regTwo!24727 (regex!7202 e2!99))))) b!4111578))

(assert (= (and b!4111094 ((_ is Union!12107) (reg!12436 (regTwo!24727 (regex!7202 e2!99))))) b!4111579))

(declare-fun b!4111582 () Bool)

(declare-fun e!2550920 () Bool)

(declare-fun tp!1250429 () Bool)

(assert (=> b!4111582 (= e!2550920 tp!1250429)))

(declare-fun b!4111583 () Bool)

(declare-fun tp!1250428 () Bool)

(declare-fun tp!1250432 () Bool)

(assert (=> b!4111583 (= e!2550920 (and tp!1250428 tp!1250432))))

(assert (=> b!4111068 (= tp!1249861 e!2550920)))

(declare-fun b!4111581 () Bool)

(declare-fun tp!1250430 () Bool)

(declare-fun tp!1250431 () Bool)

(assert (=> b!4111581 (= e!2550920 (and tp!1250430 tp!1250431))))

(declare-fun b!4111580 () Bool)

(assert (=> b!4111580 (= e!2550920 tp_is_empty!21163)))

(assert (= (and b!4111068 ((_ is ElementMatch!12107) (regOne!24727 (reg!12436 (regex!7202 e2!99))))) b!4111580))

(assert (= (and b!4111068 ((_ is Concat!19540) (regOne!24727 (reg!12436 (regex!7202 e2!99))))) b!4111581))

(assert (= (and b!4111068 ((_ is Star!12107) (regOne!24727 (reg!12436 (regex!7202 e2!99))))) b!4111582))

(assert (= (and b!4111068 ((_ is Union!12107) (regOne!24727 (reg!12436 (regex!7202 e2!99))))) b!4111583))

(declare-fun b!4111586 () Bool)

(declare-fun e!2550921 () Bool)

(declare-fun tp!1250434 () Bool)

(assert (=> b!4111586 (= e!2550921 tp!1250434)))

(declare-fun b!4111587 () Bool)

(declare-fun tp!1250433 () Bool)

(declare-fun tp!1250437 () Bool)

(assert (=> b!4111587 (= e!2550921 (and tp!1250433 tp!1250437))))

(assert (=> b!4111068 (= tp!1249865 e!2550921)))

(declare-fun b!4111585 () Bool)

(declare-fun tp!1250435 () Bool)

(declare-fun tp!1250436 () Bool)

(assert (=> b!4111585 (= e!2550921 (and tp!1250435 tp!1250436))))

(declare-fun b!4111584 () Bool)

(assert (=> b!4111584 (= e!2550921 tp_is_empty!21163)))

(assert (= (and b!4111068 ((_ is ElementMatch!12107) (regTwo!24727 (reg!12436 (regex!7202 e2!99))))) b!4111584))

(assert (= (and b!4111068 ((_ is Concat!19540) (regTwo!24727 (reg!12436 (regex!7202 e2!99))))) b!4111585))

(assert (= (and b!4111068 ((_ is Star!12107) (regTwo!24727 (reg!12436 (regex!7202 e2!99))))) b!4111586))

(assert (= (and b!4111068 ((_ is Union!12107) (regTwo!24727 (reg!12436 (regex!7202 e2!99))))) b!4111587))

(declare-fun b_lambda!120651 () Bool)

(assert (= b_lambda!120649 (or d!1219640 b_lambda!120651)))

(declare-fun bs!594321 () Bool)

(declare-fun d!1219804 () Bool)

(assert (= bs!594321 (and d!1219804 d!1219640)))

(assert (=> bs!594321 (= (dynLambda!18932 lambda!128438 (dynLambda!18932 lambda!128438 ((as const (Array String!50909 Bool)) false) (h!49704 lt!1468231)) (h!49704 (t!340159 lt!1468231))) ((_ map or) (dynLambda!18932 lambda!128438 ((as const (Array String!50909 Bool)) false) (h!49704 lt!1468231)) (store ((as const (Array String!50909 Bool)) false) (h!49704 (t!340159 lt!1468231)) true)))))

(declare-fun m!4713345 () Bool)

(assert (=> bs!594321 m!4713345))

(assert (=> b!4111256 d!1219804))

(declare-fun b_lambda!120653 () Bool)

(assert (= b_lambda!120647 (or d!1219642 b_lambda!120653)))

(declare-fun bs!594322 () Bool)

(declare-fun d!1219806 () Bool)

(assert (= bs!594322 (and d!1219806 d!1219642)))

(assert (=> bs!594322 (= (dynLambda!18932 lambda!128439 (dynLambda!18932 lambda!128439 ((as const (Array String!50909 Bool)) false) (h!49704 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)))) (h!49704 (t!340159 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284))))) ((_ map or) (dynLambda!18932 lambda!128439 ((as const (Array String!50909 Bool)) false) (h!49704 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)))) (store ((as const (Array String!50909 Bool)) false) (h!49704 (t!340159 (Cons!44284 (tag!8062 e1!99) (Cons!44284 (tag!8062 e2!99) Nil!44284)))) true)))))

(declare-fun m!4713347 () Bool)

(assert (=> bs!594322 m!4713347))

(assert (=> b!4111246 d!1219806))

(check-sat (not b!4111529) (not b_next!116343) (not b!4111404) (not b!4111414) (not b_next!116335) tp_is_empty!21163 (not b!4111339) (not b!4111290) (not b!4111507) (not b!4111549) (not b!4111239) (not b!4111542) (not b!4111450) (not b!4111543) (not b!4111473) (not b!4111513) (not b!4111384) (not b!4111310) (not b!4111342) (not b!4111420) (not b!4111466) (not b!4111304) (not b!4111502) (not b_lambda!120653) (not b!4111551) (not b!4111306) b_and!317521 (not b!4111506) (not b!4111482) (not b!4111416) (not b!4111439) (not b!4111579) (not b!4111395) (not b!4111394) (not b!4111259) (not b_next!116351) (not b!4111471) (not b!4111400) (not b!4111442) b_and!317543 (not b!4111486) (not b!4111387) (not b!4111501) (not b!4111347) (not b!4111283) (not d!1219756) (not b!4111272) (not b!4111441) (not d!1219774) (not b!4111522) (not b!4111465) (not b!4111398) (not b!4111567) (not b!4111419) (not b!4111430) (not b!4111407) (not b!4111503) (not b!4111390) (not b!4111388) (not d!1219762) (not b!4111423) (not b!4111380) (not b!4111371) (not b!4111366) (not d!1219786) (not b!4111425) (not b!4111335) (not b!4111336) (not b!4111408) (not b!4111534) (not d!1219768) (not b!4111558) (not b!4111232) (not b!4111298) (not b!4111478) b_and!317513 (not b!4111402) (not b!4111244) (not b!4111352) (not b!4111521) (not b!4111541) (not b!4111370) (not b!4111514) (not b!4111320) (not b!4111318) (not b!4111275) (not b!4111326) (not b!4111431) (not b!4111554) (not b!4111319) (not b!4111545) (not b!4111300) (not b!4111434) (not b!4111571) (not b!4111575) (not b!4111453) (not b!4111364) (not b!4111410) b_and!317515 (not b!4111284) (not b!4111418) (not b!4111372) (not b!4111570) (not b!4111252) (not b!4111396) (not b!4111538) (not d!1219788) (not b!4111527) (not b!4111454) (not b!4111563) (not b!4111334) (not b!4111315) (not b!4111346) (not b!4111367) (not b!4111412) (not b!4111392) (not b!4111279) (not b!4111344) (not b!4111467) (not b!4111491) (not b!4111358) (not b!4111533) (not b!4111537) (not b!4111331) (not b!4111494) (not b!4111268) (not b_next!116361) (not b!4111262) (not b!4111497) (not b!4111422) (not b!4111311) (not b!4111517) (not b!4111280) (not b!4111299) (not b!4111487) (not b!4111415) (not b!4111312) (not b!4111274) (not b!4111426) (not b_lambda!120651) (not b!4111302) (not b!4111332) (not b!4111278) (not b!4111577) (not b!4111254) (not b!4111296) b_and!317519 (not d!1219766) (not b_next!116345) (not b!4111338) (not b!4111429) (not b!4111376) (not b!4111270) b_and!317523 (not b!4111433) (not b!4111583) (not b!4111459) (not b!4111585) b_and!317527 (not b!4111511) (not b!4111233) (not b!4111316) (not b!4111291) (not b!4111378) (not b!4111573) (not b!4111363) (not b!4111292) (not b!4111323) (not b_next!116353) (not b_next!116331) (not b!4111569) (not b!4111451) (not b!4111266) (not b!4111449) (not b!4111360) (not b!4111351) (not b!4111531) (not b!4111523) (not b!4111550) (not b!4111586) (not b!4111462) (not b!4111355) (not b!4111314) (not b!4111350) (not b!4111308) (not b!4111485) (not b!4111263) (not b!4111565) (not b_next!116339) (not b!4111324) (not b!4111379) (not b!4111461) (not b!4111249) (not b!4111258) (not b!4111322) (not b!4111328) (not b!4111526) (not b!4111470) (not b!4111382) (not b!4111330) (not d!1219796) (not b!4111294) (not b!4111457) (not b!4111256) (not b!4111555) (not b!4111483) (not b!4111248) (not b!4111368) (not b!4111246) (not b!4111435) (not b!4111445) (not b!4111276) (not b!4111271) (not d!1219782) (not b!4111354) b_and!317535 (not b!4111386) (not b!4111267) (not b!4111479) (not b!4111499) (not b!4111241) (not b!4111546) (not b!4111243) (not b!4111510) (not b!4111535) (not b_next!116341) (not b!4111505) (not b!4111424) (not b!4111348) (not b!4111362) (not b!4111438) (not b!4111356) (not b!4111515) (not b!4111518) (not b!4111553) (not b!4111458) (not b_lambda!120635) (not b!4111530) (not b_next!116333) (not b!4111359) (not b!4111559) (not b!4111327) b_and!317541 (not b!4111481) (not b!4111581) b_and!317525 (not b!4111437) (not b!4111391) (not b!4111547) (not b!4111493) (not b!4111303) (not b!4111578) (not b!4111374) (not b!4111495) (not d!1219792) (not d!1219770) (not b!4111406) (not b!4111250) (not d!1219764) (not b!4111475) (not b!4111574) (not b!4111489) (not b!4111455) (not b!4111447) (not b!4111446) (not b_next!116359) (not b!4111264) (not b!4111383) (not b!4111566) (not b!4111260) (not b!4111340) (not b!4111411) (not b!4111539) (not b!4111474) (not b!4111286) (not b!4111582) (not b!4111469) (not b!4111463) b_and!317517 (not b!4111519) (not b!4111498) (not b_next!116337) (not b!4111557) (not d!1219802) (not b!4111375) (not b!4111562) (not b!4111509) (not b!4111587) (not b!4111295) (not b!4111477) (not b!4111399) (not b!4111287) (not b_lambda!120637) (not b!4111288) (not b!4111403) (not d!1219776) (not b!4111561) (not b!4111525) (not b!4111307) b_and!317533 (not b!4111282) (not b!4111443) (not b!4111343) (not b!4111490))
(check-sat b_and!317521 (not b_next!116351) b_and!317543 b_and!317513 b_and!317515 (not b_next!116361) b_and!317519 (not b_next!116339) b_and!317535 (not b_next!116341) (not b_next!116333) (not b_next!116359) b_and!317533 (not b_next!116343) (not b_next!116335) (not b_next!116345) b_and!317523 b_and!317527 (not b_next!116353) (not b_next!116331) b_and!317541 b_and!317525 b_and!317517 (not b_next!116337))
