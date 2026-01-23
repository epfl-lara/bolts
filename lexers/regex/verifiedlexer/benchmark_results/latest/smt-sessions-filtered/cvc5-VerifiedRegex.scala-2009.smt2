; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!102200 () Bool)

(assert start!102200)

(declare-fun b!1164783 () Bool)

(declare-fun res!525732 () Bool)

(declare-fun e!746277 () Bool)

(assert (=> b!1164783 (=> (not res!525732) (not e!746277))))

(declare-fun to!267 () Int)

(declare-datatypes ((List!11501 0))(
  ( (Nil!11477) (Cons!11477 (h!16878 (_ BitVec 16)) (t!110169 List!11501)) )
))
(declare-datatypes ((TokenValue!2064 0))(
  ( (FloatLiteralValue!4128 (text!14893 List!11501)) (TokenValueExt!2063 (__x!7839 Int)) (Broken!10320 (value!64915 List!11501)) (Object!2087) (End!2064) (Def!2064) (Underscore!2064) (Match!2064) (Else!2064) (Error!2064) (Case!2064) (If!2064) (Extends!2064) (Abstract!2064) (Class!2064) (Val!2064) (DelimiterValue!4128 (del!2124 List!11501)) (KeywordValue!2070 (value!64916 List!11501)) (CommentValue!4128 (value!64917 List!11501)) (WhitespaceValue!4128 (value!64918 List!11501)) (IndentationValue!2064 (value!64919 List!11501)) (String!13909) (Int32!2064) (Broken!10321 (value!64920 List!11501)) (Boolean!2065) (Unit!17573) (OperatorValue!2067 (op!2124 List!11501)) (IdentifierValue!4128 (value!64921 List!11501)) (IdentifierValue!4129 (value!64922 List!11501)) (WhitespaceValue!4129 (value!64923 List!11501)) (True!4128) (False!4128) (Broken!10322 (value!64924 List!11501)) (Broken!10323 (value!64925 List!11501)) (True!4129) (RightBrace!2064) (RightBracket!2064) (Colon!2064) (Null!2064) (Comma!2064) (LeftBracket!2064) (False!4129) (LeftBrace!2064) (ImaginaryLiteralValue!2064 (text!14894 List!11501)) (StringLiteralValue!6192 (value!64926 List!11501)) (EOFValue!2064 (value!64927 List!11501)) (IdentValue!2064 (value!64928 List!11501)) (DelimiterValue!4129 (value!64929 List!11501)) (DedentValue!2064 (value!64930 List!11501)) (NewLineValue!2064 (value!64931 List!11501)) (IntegerValue!6192 (value!64932 (_ BitVec 32)) (text!14895 List!11501)) (IntegerValue!6193 (value!64933 Int) (text!14896 List!11501)) (Times!2064) (Or!2064) (Equal!2064) (Minus!2064) (Broken!10324 (value!64934 List!11501)) (And!2064) (Div!2064) (LessEqual!2064) (Mod!2064) (Concat!5332) (Not!2064) (Plus!2064) (SpaceValue!2064 (value!64935 List!11501)) (IntegerValue!6194 (value!64936 Int) (text!14897 List!11501)) (StringLiteralValue!6193 (text!14898 List!11501)) (FloatLiteralValue!4129 (text!14899 List!11501)) (BytesLiteralValue!2064 (value!64937 List!11501)) (CommentValue!4129 (value!64938 List!11501)) (StringLiteralValue!6194 (value!64939 List!11501)) (ErrorTokenValue!2064 (msg!2125 List!11501)) )
))
(declare-datatypes ((C!6854 0))(
  ( (C!6855 (val!3683 Int)) )
))
(declare-datatypes ((Regex!3268 0))(
  ( (ElementMatch!3268 (c!194583 C!6854)) (Concat!5333 (regOne!7048 Regex!3268) (regTwo!7048 Regex!3268)) (EmptyExpr!3268) (Star!3268 (reg!3597 Regex!3268)) (EmptyLang!3268) (Union!3268 (regOne!7049 Regex!3268) (regTwo!7049 Regex!3268)) )
))
(declare-datatypes ((String!13910 0))(
  ( (String!13911 (value!64940 String)) )
))
(declare-datatypes ((List!11502 0))(
  ( (Nil!11478) (Cons!11478 (h!16879 C!6854) (t!110170 List!11502)) )
))
(declare-datatypes ((IArray!7521 0))(
  ( (IArray!7522 (innerList!3818 List!11502)) )
))
(declare-datatypes ((Conc!3758 0))(
  ( (Node!3758 (left!10035 Conc!3758) (right!10365 Conc!3758) (csize!7746 Int) (cheight!3969 Int)) (Leaf!5768 (xs!6463 IArray!7521) (csize!7747 Int)) (Empty!3758) )
))
(declare-datatypes ((BalanceConc!7538 0))(
  ( (BalanceConc!7539 (c!194584 Conc!3758)) )
))
(declare-datatypes ((TokenValueInjection!3828 0))(
  ( (TokenValueInjection!3829 (toValue!3099 Int) (toChars!2958 Int)) )
))
(declare-datatypes ((Rule!3796 0))(
  ( (Rule!3797 (regex!1998 Regex!3268) (tag!2260 String!13910) (isSeparator!1998 Bool) (transformation!1998 TokenValueInjection!3828)) )
))
(declare-datatypes ((Token!3658 0))(
  ( (Token!3659 (value!64941 TokenValue!2064) (rule!3419 Rule!3796) (size!9040 Int) (originalCharacters!2552 List!11502)) )
))
(declare-datatypes ((List!11503 0))(
  ( (Nil!11479) (Cons!11479 (h!16880 Token!3658) (t!110171 List!11503)) )
))
(declare-datatypes ((List!11504 0))(
  ( (Nil!11480) (Cons!11480 (h!16881 Rule!3796) (t!110172 List!11504)) )
))
(declare-datatypes ((IArray!7523 0))(
  ( (IArray!7524 (innerList!3819 List!11503)) )
))
(declare-datatypes ((Conc!3759 0))(
  ( (Node!3759 (left!10036 Conc!3759) (right!10366 Conc!3759) (csize!7748 Int) (cheight!3970 Int)) (Leaf!5769 (xs!6464 IArray!7523) (csize!7749 Int)) (Empty!3759) )
))
(declare-datatypes ((BalanceConc!7540 0))(
  ( (BalanceConc!7541 (c!194585 Conc!3759)) )
))
(declare-datatypes ((PrintableTokens!682 0))(
  ( (PrintableTokens!683 (rules!9557 List!11504) (tokens!1615 BalanceConc!7540)) )
))
(declare-fun thiss!10527 () PrintableTokens!682)

(declare-fun size!9041 (BalanceConc!7540) Int)

(assert (=> b!1164783 (= res!525732 (<= to!267 (size!9041 (tokens!1615 thiss!10527))))))

(declare-fun res!525733 () Bool)

(assert (=> start!102200 (=> (not res!525733) (not e!746277))))

(declare-fun from!787 () Int)

(assert (=> start!102200 (= res!525733 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102200 e!746277))

(assert (=> start!102200 true))

(declare-fun e!746276 () Bool)

(declare-fun inv!15112 (PrintableTokens!682) Bool)

(assert (=> start!102200 (and (inv!15112 thiss!10527) e!746276)))

(declare-fun b!1164786 () Bool)

(declare-fun e!746278 () Bool)

(declare-fun tp!334043 () Bool)

(declare-fun inv!15113 (Conc!3759) Bool)

(assert (=> b!1164786 (= e!746278 (and (inv!15113 (c!194585 (tokens!1615 thiss!10527))) tp!334043))))

(declare-fun b!1164785 () Bool)

(declare-fun tp!334044 () Bool)

(declare-fun inv!15114 (BalanceConc!7540) Bool)

(assert (=> b!1164785 (= e!746276 (and tp!334044 (inv!15114 (tokens!1615 thiss!10527)) e!746278))))

(declare-fun b!1164784 () Bool)

(declare-datatypes ((LexerInterface!1693 0))(
  ( (LexerInterfaceExt!1690 (__x!7840 Int)) (Lexer!1691) )
))
(declare-fun rulesInvariant!1567 (LexerInterface!1693 List!11504) Bool)

(assert (=> b!1164784 (= e!746277 (not (rulesInvariant!1567 Lexer!1691 (rules!9557 thiss!10527))))))

(declare-datatypes ((Unit!17574 0))(
  ( (Unit!17575) )
))
(declare-fun lt!398273 () Unit!17574)

(declare-fun lemmaInvariant!185 (PrintableTokens!682) Unit!17574)

(assert (=> b!1164784 (= lt!398273 (lemmaInvariant!185 thiss!10527))))

(assert (= (and start!102200 res!525733) b!1164783))

(assert (= (and b!1164783 res!525732) b!1164784))

(assert (= b!1164785 b!1164786))

(assert (= start!102200 b!1164785))

(declare-fun m!1334455 () Bool)

(assert (=> b!1164785 m!1334455))

(declare-fun m!1334457 () Bool)

(assert (=> start!102200 m!1334457))

(declare-fun m!1334459 () Bool)

(assert (=> b!1164783 m!1334459))

(declare-fun m!1334461 () Bool)

(assert (=> b!1164786 m!1334461))

(declare-fun m!1334463 () Bool)

(assert (=> b!1164784 m!1334463))

(declare-fun m!1334465 () Bool)

(assert (=> b!1164784 m!1334465))

(push 1)

(assert (not b!1164786))

(assert (not b!1164784))

(assert (not start!102200))

(assert (not b!1164785))

(assert (not b!1164783))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!332478 () Bool)

(declare-fun lt!398279 () Int)

(declare-fun size!9044 (List!11503) Int)

(declare-fun list!4229 (BalanceConc!7540) List!11503)

(assert (=> d!332478 (= lt!398279 (size!9044 (list!4229 (tokens!1615 thiss!10527))))))

(declare-fun size!9045 (Conc!3759) Int)

(assert (=> d!332478 (= lt!398279 (size!9045 (c!194585 (tokens!1615 thiss!10527))))))

(assert (=> d!332478 (= (size!9041 (tokens!1615 thiss!10527)) lt!398279)))

(declare-fun bs!284149 () Bool)

(assert (= bs!284149 d!332478))

(declare-fun m!1334479 () Bool)

(assert (=> bs!284149 m!1334479))

(assert (=> bs!284149 m!1334479))

(declare-fun m!1334481 () Bool)

(assert (=> bs!284149 m!1334481))

(declare-fun m!1334483 () Bool)

(assert (=> bs!284149 m!1334483))

(assert (=> b!1164783 d!332478))

(declare-fun d!332480 () Bool)

(declare-fun res!525742 () Bool)

(declare-fun e!746290 () Bool)

(assert (=> d!332480 (=> (not res!525742) (not e!746290))))

(declare-fun rulesValid!697 (LexerInterface!1693 List!11504) Bool)

(assert (=> d!332480 (= res!525742 (rulesValid!697 Lexer!1691 (rules!9557 thiss!10527)))))

(assert (=> d!332480 (= (rulesInvariant!1567 Lexer!1691 (rules!9557 thiss!10527)) e!746290)))

(declare-fun b!1164801 () Bool)

(declare-datatypes ((List!11509 0))(
  ( (Nil!11485) (Cons!11485 (h!16886 String!13910) (t!110177 List!11509)) )
))
(declare-fun noDuplicateTag!697 (LexerInterface!1693 List!11504 List!11509) Bool)

(assert (=> b!1164801 (= e!746290 (noDuplicateTag!697 Lexer!1691 (rules!9557 thiss!10527) Nil!11485))))

(assert (= (and d!332480 res!525742) b!1164801))

(declare-fun m!1334485 () Bool)

(assert (=> d!332480 m!1334485))

(declare-fun m!1334487 () Bool)

(assert (=> b!1164801 m!1334487))

(assert (=> b!1164784 d!332480))

(declare-fun d!332482 () Bool)

(declare-fun e!746293 () Bool)

(assert (=> d!332482 e!746293))

(declare-fun res!525747 () Bool)

(assert (=> d!332482 (=> (not res!525747) (not e!746293))))

(assert (=> d!332482 (= res!525747 (rulesInvariant!1567 Lexer!1691 (rules!9557 thiss!10527)))))

(declare-fun Unit!17579 () Unit!17574)

(assert (=> d!332482 (= (lemmaInvariant!185 thiss!10527) Unit!17579)))

(declare-fun b!1164806 () Bool)

(declare-fun res!525748 () Bool)

(assert (=> b!1164806 (=> (not res!525748) (not e!746293))))

(declare-fun rulesProduceEachTokenIndividually!732 (LexerInterface!1693 List!11504 BalanceConc!7540) Bool)

(assert (=> b!1164806 (= res!525748 (rulesProduceEachTokenIndividually!732 Lexer!1691 (rules!9557 thiss!10527) (tokens!1615 thiss!10527)))))

(declare-fun b!1164807 () Bool)

(declare-fun separableTokens!135 (LexerInterface!1693 BalanceConc!7540 List!11504) Bool)

(assert (=> b!1164807 (= e!746293 (separableTokens!135 Lexer!1691 (tokens!1615 thiss!10527) (rules!9557 thiss!10527)))))

(assert (= (and d!332482 res!525747) b!1164806))

(assert (= (and b!1164806 res!525748) b!1164807))

(assert (=> d!332482 m!1334463))

(declare-fun m!1334489 () Bool)

(assert (=> b!1164806 m!1334489))

(declare-fun m!1334491 () Bool)

(assert (=> b!1164807 m!1334491))

(assert (=> b!1164784 d!332482))

(declare-fun d!332484 () Bool)

(declare-fun isBalanced!1056 (Conc!3759) Bool)

(assert (=> d!332484 (= (inv!15114 (tokens!1615 thiss!10527)) (isBalanced!1056 (c!194585 (tokens!1615 thiss!10527))))))

(declare-fun bs!284150 () Bool)

(assert (= bs!284150 d!332484))

(declare-fun m!1334493 () Bool)

(assert (=> bs!284150 m!1334493))

(assert (=> b!1164785 d!332484))

(declare-fun d!332486 () Bool)

(declare-fun c!194591 () Bool)

(assert (=> d!332486 (= c!194591 (is-Node!3759 (c!194585 (tokens!1615 thiss!10527))))))

(declare-fun e!746298 () Bool)

(assert (=> d!332486 (= (inv!15113 (c!194585 (tokens!1615 thiss!10527))) e!746298)))

(declare-fun b!1164814 () Bool)

(declare-fun inv!15118 (Conc!3759) Bool)

(assert (=> b!1164814 (= e!746298 (inv!15118 (c!194585 (tokens!1615 thiss!10527))))))

(declare-fun b!1164815 () Bool)

(declare-fun e!746299 () Bool)

(assert (=> b!1164815 (= e!746298 e!746299)))

(declare-fun res!525751 () Bool)

(assert (=> b!1164815 (= res!525751 (not (is-Leaf!5769 (c!194585 (tokens!1615 thiss!10527)))))))

(assert (=> b!1164815 (=> res!525751 e!746299)))

(declare-fun b!1164816 () Bool)

(declare-fun inv!15119 (Conc!3759) Bool)

(assert (=> b!1164816 (= e!746299 (inv!15119 (c!194585 (tokens!1615 thiss!10527))))))

(assert (= (and d!332486 c!194591) b!1164814))

(assert (= (and d!332486 (not c!194591)) b!1164815))

(assert (= (and b!1164815 (not res!525751)) b!1164816))

(declare-fun m!1334495 () Bool)

(assert (=> b!1164814 m!1334495))

(declare-fun m!1334497 () Bool)

(assert (=> b!1164816 m!1334497))

(assert (=> b!1164786 d!332486))

(declare-fun d!332488 () Bool)

(declare-fun res!525758 () Bool)

(declare-fun e!746302 () Bool)

(assert (=> d!332488 (=> (not res!525758) (not e!746302))))

(declare-fun isEmpty!6996 (List!11504) Bool)

(assert (=> d!332488 (= res!525758 (not (isEmpty!6996 (rules!9557 thiss!10527))))))

(assert (=> d!332488 (= (inv!15112 thiss!10527) e!746302)))

(declare-fun b!1164823 () Bool)

(declare-fun res!525759 () Bool)

(assert (=> b!1164823 (=> (not res!525759) (not e!746302))))

(assert (=> b!1164823 (= res!525759 (rulesInvariant!1567 Lexer!1691 (rules!9557 thiss!10527)))))

(declare-fun b!1164824 () Bool)

(declare-fun res!525760 () Bool)

(assert (=> b!1164824 (=> (not res!525760) (not e!746302))))

(assert (=> b!1164824 (= res!525760 (rulesProduceEachTokenIndividually!732 Lexer!1691 (rules!9557 thiss!10527) (tokens!1615 thiss!10527)))))

(declare-fun b!1164825 () Bool)

(assert (=> b!1164825 (= e!746302 (separableTokens!135 Lexer!1691 (tokens!1615 thiss!10527) (rules!9557 thiss!10527)))))

(assert (= (and d!332488 res!525758) b!1164823))

(assert (= (and b!1164823 res!525759) b!1164824))

(assert (= (and b!1164824 res!525760) b!1164825))

(declare-fun m!1334499 () Bool)

(assert (=> d!332488 m!1334499))

(assert (=> b!1164823 m!1334463))

(assert (=> b!1164824 m!1334489))

(assert (=> b!1164825 m!1334491))

(assert (=> start!102200 d!332488))

(declare-fun b!1164838 () Bool)

(declare-fun b_free!27769 () Bool)

(declare-fun b_next!28473 () Bool)

(assert (=> b!1164838 (= b_free!27769 (not b_next!28473))))

(declare-fun tp!334059 () Bool)

(declare-fun b_and!80645 () Bool)

(assert (=> b!1164838 (= tp!334059 b_and!80645)))

(declare-fun b_free!27771 () Bool)

(declare-fun b_next!28475 () Bool)

(assert (=> b!1164838 (= b_free!27771 (not b_next!28475))))

(declare-fun tp!334060 () Bool)

(declare-fun b_and!80647 () Bool)

(assert (=> b!1164838 (= tp!334060 b_and!80647)))

(declare-fun e!746315 () Bool)

(assert (=> b!1164838 (= e!746315 (and tp!334059 tp!334060))))

(declare-fun tp!334061 () Bool)

(declare-fun e!746316 () Bool)

(declare-fun b!1164837 () Bool)

(declare-fun inv!15109 (String!13910) Bool)

(declare-fun inv!15120 (TokenValueInjection!3828) Bool)

(assert (=> b!1164837 (= e!746316 (and tp!334061 (inv!15109 (tag!2260 (h!16881 (rules!9557 thiss!10527)))) (inv!15120 (transformation!1998 (h!16881 (rules!9557 thiss!10527)))) e!746315))))

(declare-fun b!1164836 () Bool)

(declare-fun e!746314 () Bool)

(declare-fun tp!334062 () Bool)

(assert (=> b!1164836 (= e!746314 (and e!746316 tp!334062))))

(assert (=> b!1164785 (= tp!334044 e!746314)))

(assert (= b!1164837 b!1164838))

(assert (= b!1164836 b!1164837))

(assert (= (and b!1164785 (is-Cons!11480 (rules!9557 thiss!10527))) b!1164836))

(declare-fun m!1334501 () Bool)

(assert (=> b!1164837 m!1334501))

(declare-fun m!1334503 () Bool)

(assert (=> b!1164837 m!1334503))

(declare-fun e!746321 () Bool)

(declare-fun tp!334069 () Bool)

(declare-fun b!1164851 () Bool)

(declare-fun tp!334071 () Bool)

(assert (=> b!1164851 (= e!746321 (and (inv!15113 (left!10036 (c!194585 (tokens!1615 thiss!10527)))) tp!334069 (inv!15113 (right!10366 (c!194585 (tokens!1615 thiss!10527)))) tp!334071))))

(declare-fun b!1164853 () Bool)

(declare-fun e!746322 () Bool)

(declare-fun tp!334070 () Bool)

(assert (=> b!1164853 (= e!746322 tp!334070)))

(declare-fun b!1164852 () Bool)

(declare-fun inv!15121 (IArray!7523) Bool)

(assert (=> b!1164852 (= e!746321 (and (inv!15121 (xs!6464 (c!194585 (tokens!1615 thiss!10527)))) e!746322))))

(assert (=> b!1164786 (= tp!334043 (and (inv!15113 (c!194585 (tokens!1615 thiss!10527))) e!746321))))

(assert (= (and b!1164786 (is-Node!3759 (c!194585 (tokens!1615 thiss!10527)))) b!1164851))

(assert (= b!1164852 b!1164853))

(assert (= (and b!1164786 (is-Leaf!5769 (c!194585 (tokens!1615 thiss!10527)))) b!1164852))

(declare-fun m!1334505 () Bool)

(assert (=> b!1164851 m!1334505))

(declare-fun m!1334507 () Bool)

(assert (=> b!1164851 m!1334507))

(declare-fun m!1334509 () Bool)

(assert (=> b!1164852 m!1334509))

(assert (=> b!1164786 m!1334461))

(push 1)

(assert (not b!1164825))

(assert (not b!1164806))

(assert (not b!1164801))

(assert (not d!332482))

(assert (not b_next!28475))

(assert (not b!1164836))

(assert b_and!80647)

(assert (not b!1164852))

(assert (not b!1164851))

(assert (not b!1164814))

(assert (not b!1164853))

(assert (not b!1164786))

(assert (not d!332488))

(assert b_and!80645)

(assert (not b!1164816))

(assert (not d!332478))

(assert (not d!332484))

(assert (not b!1164837))

(assert (not b!1164824))

(assert (not b!1164807))

(assert (not d!332480))

(assert (not b!1164823))

(assert (not b_next!28473))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80645)

(assert b_and!80647)

(assert (not b_next!28473))

(assert (not b_next!28475))

(check-sat)

(pop 1)

