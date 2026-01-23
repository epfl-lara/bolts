; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384300 () Bool)

(assert start!384300)

(declare-fun b!4071783 () Bool)

(declare-fun b_free!113257 () Bool)

(declare-fun b_next!113961 () Bool)

(assert (=> b!4071783 (= b_free!113257 (not b_next!113961))))

(declare-fun tp!1232097 () Bool)

(declare-fun b_and!312835 () Bool)

(assert (=> b!4071783 (= tp!1232097 b_and!312835)))

(declare-fun b_free!113259 () Bool)

(declare-fun b_next!113963 () Bool)

(assert (=> b!4071783 (= b_free!113259 (not b_next!113963))))

(declare-fun tp!1232091 () Bool)

(declare-fun b_and!312837 () Bool)

(assert (=> b!4071783 (= tp!1232091 b_and!312837)))

(declare-fun b!4071785 () Bool)

(declare-fun b_free!113261 () Bool)

(declare-fun b_next!113965 () Bool)

(assert (=> b!4071785 (= b_free!113261 (not b_next!113965))))

(declare-fun tp!1232100 () Bool)

(declare-fun b_and!312839 () Bool)

(assert (=> b!4071785 (= tp!1232100 b_and!312839)))

(declare-fun b_free!113263 () Bool)

(declare-fun b_next!113967 () Bool)

(assert (=> b!4071785 (= b_free!113263 (not b_next!113967))))

(declare-fun tp!1232094 () Bool)

(declare-fun b_and!312841 () Bool)

(assert (=> b!4071785 (= tp!1232094 b_and!312841)))

(declare-fun b!4071781 () Bool)

(declare-fun res!1662709 () Bool)

(declare-fun e!2527060 () Bool)

(assert (=> b!4071781 (=> (not res!1662709) (not e!2527060))))

(declare-datatypes ((C!23976 0))(
  ( (C!23977 (val!14098 Int)) )
))
(declare-datatypes ((List!43623 0))(
  ( (Nil!43499) (Cons!43499 (h!48919 C!23976) (t!337070 List!43623)) )
))
(declare-fun p!2988 () List!43623)

(declare-fun isEmpty!25956 (List!43623) Bool)

(assert (=> b!4071781 (= res!1662709 (not (isEmpty!25956 p!2988)))))

(declare-fun b!4071782 () Bool)

(assert (=> b!4071782 (= e!2527060 false)))

(declare-datatypes ((Unit!63054 0))(
  ( (Unit!63055) )
))
(declare-fun lt!1457571 () Unit!63054)

(declare-datatypes ((List!43624 0))(
  ( (Nil!43500) (Cons!43500 (h!48920 (_ BitVec 16)) (t!337071 List!43624)) )
))
(declare-datatypes ((TokenValue!7220 0))(
  ( (FloatLiteralValue!14440 (text!50985 List!43624)) (TokenValueExt!7219 (__x!26657 Int)) (Broken!36100 (value!219846 List!43624)) (Object!7343) (End!7220) (Def!7220) (Underscore!7220) (Match!7220) (Else!7220) (Error!7220) (Case!7220) (If!7220) (Extends!7220) (Abstract!7220) (Class!7220) (Val!7220) (DelimiterValue!14440 (del!7280 List!43624)) (KeywordValue!7226 (value!219847 List!43624)) (CommentValue!14440 (value!219848 List!43624)) (WhitespaceValue!14440 (value!219849 List!43624)) (IndentationValue!7220 (value!219850 List!43624)) (String!49849) (Int32!7220) (Broken!36101 (value!219851 List!43624)) (Boolean!7221) (Unit!63056) (OperatorValue!7223 (op!7280 List!43624)) (IdentifierValue!14440 (value!219852 List!43624)) (IdentifierValue!14441 (value!219853 List!43624)) (WhitespaceValue!14441 (value!219854 List!43624)) (True!14440) (False!14440) (Broken!36102 (value!219855 List!43624)) (Broken!36103 (value!219856 List!43624)) (True!14441) (RightBrace!7220) (RightBracket!7220) (Colon!7220) (Null!7220) (Comma!7220) (LeftBracket!7220) (False!14441) (LeftBrace!7220) (ImaginaryLiteralValue!7220 (text!50986 List!43624)) (StringLiteralValue!21660 (value!219857 List!43624)) (EOFValue!7220 (value!219858 List!43624)) (IdentValue!7220 (value!219859 List!43624)) (DelimiterValue!14441 (value!219860 List!43624)) (DedentValue!7220 (value!219861 List!43624)) (NewLineValue!7220 (value!219862 List!43624)) (IntegerValue!21660 (value!219863 (_ BitVec 32)) (text!50987 List!43624)) (IntegerValue!21661 (value!219864 Int) (text!50988 List!43624)) (Times!7220) (Or!7220) (Equal!7220) (Minus!7220) (Broken!36104 (value!219865 List!43624)) (And!7220) (Div!7220) (LessEqual!7220) (Mod!7220) (Concat!19115) (Not!7220) (Plus!7220) (SpaceValue!7220 (value!219866 List!43624)) (IntegerValue!21662 (value!219867 Int) (text!50989 List!43624)) (StringLiteralValue!21661 (text!50990 List!43624)) (FloatLiteralValue!14441 (text!50991 List!43624)) (BytesLiteralValue!7220 (value!219868 List!43624)) (CommentValue!14441 (value!219869 List!43624)) (StringLiteralValue!21662 (value!219870 List!43624)) (ErrorTokenValue!7220 (msg!7281 List!43624)) )
))
(declare-datatypes ((Regex!11895 0))(
  ( (ElementMatch!11895 (c!702774 C!23976)) (Concat!19116 (regOne!24302 Regex!11895) (regTwo!24302 Regex!11895)) (EmptyExpr!11895) (Star!11895 (reg!12224 Regex!11895)) (EmptyLang!11895) (Union!11895 (regOne!24303 Regex!11895) (regTwo!24303 Regex!11895)) )
))
(declare-datatypes ((String!49850 0))(
  ( (String!49851 (value!219871 String)) )
))
(declare-datatypes ((IArray!26407 0))(
  ( (IArray!26408 (innerList!13261 List!43623)) )
))
(declare-datatypes ((Conc!13201 0))(
  ( (Node!13201 (left!32710 Conc!13201) (right!33040 Conc!13201) (csize!26632 Int) (cheight!13412 Int)) (Leaf!20411 (xs!16507 IArray!26407) (csize!26633 Int)) (Empty!13201) )
))
(declare-datatypes ((BalanceConc!25996 0))(
  ( (BalanceConc!25997 (c!702775 Conc!13201)) )
))
(declare-datatypes ((TokenValueInjection!13868 0))(
  ( (TokenValueInjection!13869 (toValue!9550 Int) (toChars!9409 Int)) )
))
(declare-datatypes ((Rule!13780 0))(
  ( (Rule!13781 (regex!6990 Regex!11895) (tag!7850 String!49850) (isSeparator!6990 Bool) (transformation!6990 TokenValueInjection!13868)) )
))
(declare-fun r!4213 () Rule!13780)

(declare-fun lemmaSemiInverse!1957 (TokenValueInjection!13868 BalanceConc!25996) Unit!63054)

(declare-fun seqFromList!5207 (List!43623) BalanceConc!25996)

(assert (=> b!4071782 (= lt!1457571 (lemmaSemiInverse!1957 (transformation!6990 r!4213) (seqFromList!5207 p!2988)))))

(declare-fun e!2527051 () Bool)

(assert (=> b!4071783 (= e!2527051 (and tp!1232097 tp!1232091))))

(declare-fun b!4071784 () Bool)

(declare-fun res!1662705 () Bool)

(assert (=> b!4071784 (=> (not res!1662705) (not e!2527060))))

(declare-fun suffix!1518 () List!43623)

(declare-fun input!3411 () List!43623)

(declare-fun ++!11396 (List!43623 List!43623) List!43623)

(assert (=> b!4071784 (= res!1662705 (= input!3411 (++!11396 p!2988 suffix!1518)))))

(declare-fun e!2527059 () Bool)

(assert (=> b!4071785 (= e!2527059 (and tp!1232100 tp!1232094))))

(declare-fun b!4071786 () Bool)

(declare-fun res!1662708 () Bool)

(assert (=> b!4071786 (=> (not res!1662708) (not e!2527060))))

(declare-datatypes ((LexerInterface!6579 0))(
  ( (LexerInterfaceExt!6576 (__x!26658 Int)) (Lexer!6577) )
))
(declare-fun thiss!26199 () LexerInterface!6579)

(declare-datatypes ((List!43625 0))(
  ( (Nil!43501) (Cons!43501 (h!48921 Rule!13780) (t!337072 List!43625)) )
))
(declare-fun rules!3870 () List!43625)

(declare-fun rulesInvariant!5922 (LexerInterface!6579 List!43625) Bool)

(assert (=> b!4071786 (= res!1662708 (rulesInvariant!5922 thiss!26199 rules!3870))))

(declare-fun b!4071787 () Bool)

(declare-fun e!2527057 () Bool)

(declare-fun tp_is_empty!20793 () Bool)

(declare-fun tp!1232098 () Bool)

(assert (=> b!4071787 (= e!2527057 (and tp_is_empty!20793 tp!1232098))))

(declare-fun b!4071788 () Bool)

(declare-fun e!2527058 () Bool)

(declare-fun e!2527056 () Bool)

(declare-fun tp!1232093 () Bool)

(assert (=> b!4071788 (= e!2527058 (and e!2527056 tp!1232093))))

(declare-fun res!1662710 () Bool)

(assert (=> start!384300 (=> (not res!1662710) (not e!2527060))))

(get-info :version)

(assert (=> start!384300 (= res!1662710 ((_ is Lexer!6577) thiss!26199))))

(assert (=> start!384300 e!2527060))

(assert (=> start!384300 true))

(assert (=> start!384300 e!2527057))

(assert (=> start!384300 e!2527058))

(declare-fun e!2527054 () Bool)

(assert (=> start!384300 e!2527054))

(declare-fun e!2527050 () Bool)

(assert (=> start!384300 e!2527050))

(declare-fun e!2527052 () Bool)

(assert (=> start!384300 e!2527052))

(declare-fun b!4071789 () Bool)

(declare-fun tp!1232095 () Bool)

(declare-fun inv!58152 (String!49850) Bool)

(declare-fun inv!58154 (TokenValueInjection!13868) Bool)

(assert (=> b!4071789 (= e!2527056 (and tp!1232095 (inv!58152 (tag!7850 (h!48921 rules!3870))) (inv!58154 (transformation!6990 (h!48921 rules!3870))) e!2527059))))

(declare-fun b!4071790 () Bool)

(declare-fun tp!1232092 () Bool)

(assert (=> b!4071790 (= e!2527054 (and tp_is_empty!20793 tp!1232092))))

(declare-fun b!4071791 () Bool)

(declare-fun res!1662707 () Bool)

(assert (=> b!4071791 (=> (not res!1662707) (not e!2527060))))

(declare-fun contains!8656 (List!43625 Rule!13780) Bool)

(assert (=> b!4071791 (= res!1662707 (contains!8656 rules!3870 r!4213))))

(declare-fun tp!1232096 () Bool)

(declare-fun b!4071792 () Bool)

(assert (=> b!4071792 (= e!2527052 (and tp!1232096 (inv!58152 (tag!7850 r!4213)) (inv!58154 (transformation!6990 r!4213)) e!2527051))))

(declare-fun b!4071793 () Bool)

(declare-fun tp!1232099 () Bool)

(assert (=> b!4071793 (= e!2527050 (and tp_is_empty!20793 tp!1232099))))

(declare-fun b!4071794 () Bool)

(declare-fun res!1662706 () Bool)

(assert (=> b!4071794 (=> (not res!1662706) (not e!2527060))))

(declare-fun isEmpty!25957 (List!43625) Bool)

(assert (=> b!4071794 (= res!1662706 (not (isEmpty!25957 rules!3870)))))

(assert (= (and start!384300 res!1662710) b!4071794))

(assert (= (and b!4071794 res!1662706) b!4071786))

(assert (= (and b!4071786 res!1662708) b!4071791))

(assert (= (and b!4071791 res!1662707) b!4071784))

(assert (= (and b!4071784 res!1662705) b!4071781))

(assert (= (and b!4071781 res!1662709) b!4071782))

(assert (= (and start!384300 ((_ is Cons!43499) suffix!1518)) b!4071787))

(assert (= b!4071789 b!4071785))

(assert (= b!4071788 b!4071789))

(assert (= (and start!384300 ((_ is Cons!43501) rules!3870)) b!4071788))

(assert (= (and start!384300 ((_ is Cons!43499) p!2988)) b!4071790))

(assert (= (and start!384300 ((_ is Cons!43499) input!3411)) b!4071793))

(assert (= b!4071792 b!4071783))

(assert (= start!384300 b!4071792))

(declare-fun m!4681047 () Bool)

(assert (=> b!4071792 m!4681047))

(declare-fun m!4681049 () Bool)

(assert (=> b!4071792 m!4681049))

(declare-fun m!4681051 () Bool)

(assert (=> b!4071784 m!4681051))

(declare-fun m!4681053 () Bool)

(assert (=> b!4071786 m!4681053))

(declare-fun m!4681055 () Bool)

(assert (=> b!4071791 m!4681055))

(declare-fun m!4681057 () Bool)

(assert (=> b!4071794 m!4681057))

(declare-fun m!4681059 () Bool)

(assert (=> b!4071781 m!4681059))

(declare-fun m!4681061 () Bool)

(assert (=> b!4071789 m!4681061))

(declare-fun m!4681063 () Bool)

(assert (=> b!4071789 m!4681063))

(declare-fun m!4681065 () Bool)

(assert (=> b!4071782 m!4681065))

(assert (=> b!4071782 m!4681065))

(declare-fun m!4681067 () Bool)

(assert (=> b!4071782 m!4681067))

(check-sat (not b_next!113963) (not b!4071787) (not b!4071790) b_and!312841 (not b!4071788) (not b!4071786) (not b!4071784) (not b!4071793) tp_is_empty!20793 (not b!4071782) (not b!4071794) b_and!312835 b_and!312839 (not b_next!113965) (not b_next!113961) (not b!4071781) (not b_next!113967) (not b!4071791) (not b!4071789) (not b!4071792) b_and!312837)
(check-sat (not b_next!113963) b_and!312835 b_and!312841 (not b_next!113961) (not b_next!113967) b_and!312837 b_and!312839 (not b_next!113965))
