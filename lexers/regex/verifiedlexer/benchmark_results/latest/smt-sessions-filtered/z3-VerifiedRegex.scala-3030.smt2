; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181146 () Bool)

(assert start!181146)

(declare-fun b!1826864 () Bool)

(declare-fun b_free!50903 () Bool)

(declare-fun b_next!51607 () Bool)

(assert (=> b!1826864 (= b_free!50903 (not b_next!51607))))

(declare-fun tp!516551 () Bool)

(declare-fun b_and!141917 () Bool)

(assert (=> b!1826864 (= tp!516551 b_and!141917)))

(declare-fun b_free!50905 () Bool)

(declare-fun b_next!51609 () Bool)

(assert (=> b!1826864 (= b_free!50905 (not b_next!51609))))

(declare-fun tp!516553 () Bool)

(declare-fun b_and!141919 () Bool)

(assert (=> b!1826864 (= tp!516553 b_and!141919)))

(declare-fun b!1826866 () Bool)

(declare-fun b_free!50907 () Bool)

(declare-fun b_next!51611 () Bool)

(assert (=> b!1826866 (= b_free!50907 (not b_next!51611))))

(declare-fun tp!516552 () Bool)

(declare-fun b_and!141921 () Bool)

(assert (=> b!1826866 (= tp!516552 b_and!141921)))

(declare-fun b_free!50909 () Bool)

(declare-fun b_next!51613 () Bool)

(assert (=> b!1826866 (= b_free!50909 (not b_next!51613))))

(declare-fun tp!516550 () Bool)

(declare-fun b_and!141923 () Bool)

(assert (=> b!1826866 (= tp!516550 b_and!141923)))

(declare-fun b!1826870 () Bool)

(declare-fun b_free!50911 () Bool)

(declare-fun b_next!51615 () Bool)

(assert (=> b!1826870 (= b_free!50911 (not b_next!51615))))

(declare-fun tp!516555 () Bool)

(declare-fun b_and!141925 () Bool)

(assert (=> b!1826870 (= tp!516555 b_and!141925)))

(declare-fun b_free!50913 () Bool)

(declare-fun b_next!51617 () Bool)

(assert (=> b!1826870 (= b_free!50913 (not b_next!51617))))

(declare-fun tp!516554 () Bool)

(declare-fun b_and!141927 () Bool)

(assert (=> b!1826870 (= tp!516554 b_and!141927)))

(declare-fun b!1826863 () Bool)

(declare-fun e!1167671 () Bool)

(assert (=> b!1826863 (= e!1167671 false)))

(declare-datatypes ((C!10072 0))(
  ( (C!10073 (val!5632 Int)) )
))
(declare-datatypes ((List!20133 0))(
  ( (Nil!20063) (Cons!20063 (h!25464 C!10072) (t!170332 List!20133)) )
))
(declare-fun lt!709806 () List!20133)

(declare-datatypes ((List!20134 0))(
  ( (Nil!20064) (Cons!20064 (h!25465 (_ BitVec 16)) (t!170333 List!20134)) )
))
(declare-datatypes ((TokenValue!3711 0))(
  ( (FloatLiteralValue!7422 (text!26422 List!20134)) (TokenValueExt!3710 (__x!12724 Int)) (Broken!18555 (value!112839 List!20134)) (Object!3780) (End!3711) (Def!3711) (Underscore!3711) (Match!3711) (Else!3711) (Error!3711) (Case!3711) (If!3711) (Extends!3711) (Abstract!3711) (Class!3711) (Val!3711) (DelimiterValue!7422 (del!3771 List!20134)) (KeywordValue!3717 (value!112840 List!20134)) (CommentValue!7422 (value!112841 List!20134)) (WhitespaceValue!7422 (value!112842 List!20134)) (IndentationValue!3711 (value!112843 List!20134)) (String!22886) (Int32!3711) (Broken!18556 (value!112844 List!20134)) (Boolean!3712) (Unit!34738) (OperatorValue!3714 (op!3771 List!20134)) (IdentifierValue!7422 (value!112845 List!20134)) (IdentifierValue!7423 (value!112846 List!20134)) (WhitespaceValue!7423 (value!112847 List!20134)) (True!7422) (False!7422) (Broken!18557 (value!112848 List!20134)) (Broken!18558 (value!112849 List!20134)) (True!7423) (RightBrace!3711) (RightBracket!3711) (Colon!3711) (Null!3711) (Comma!3711) (LeftBracket!3711) (False!7423) (LeftBrace!3711) (ImaginaryLiteralValue!3711 (text!26423 List!20134)) (StringLiteralValue!11133 (value!112850 List!20134)) (EOFValue!3711 (value!112851 List!20134)) (IdentValue!3711 (value!112852 List!20134)) (DelimiterValue!7423 (value!112853 List!20134)) (DedentValue!3711 (value!112854 List!20134)) (NewLineValue!3711 (value!112855 List!20134)) (IntegerValue!11133 (value!112856 (_ BitVec 32)) (text!26424 List!20134)) (IntegerValue!11134 (value!112857 Int) (text!26425 List!20134)) (Times!3711) (Or!3711) (Equal!3711) (Minus!3711) (Broken!18559 (value!112858 List!20134)) (And!3711) (Div!3711) (LessEqual!3711) (Mod!3711) (Concat!8660) (Not!3711) (Plus!3711) (SpaceValue!3711 (value!112859 List!20134)) (IntegerValue!11135 (value!112860 Int) (text!26426 List!20134)) (StringLiteralValue!11134 (text!26427 List!20134)) (FloatLiteralValue!7423 (text!26428 List!20134)) (BytesLiteralValue!3711 (value!112861 List!20134)) (CommentValue!7423 (value!112862 List!20134)) (StringLiteralValue!11135 (value!112863 List!20134)) (ErrorTokenValue!3711 (msg!3772 List!20134)) )
))
(declare-datatypes ((IArray!13311 0))(
  ( (IArray!13312 (innerList!6713 List!20133)) )
))
(declare-datatypes ((Conc!6653 0))(
  ( (Node!6653 (left!16053 Conc!6653) (right!16383 Conc!6653) (csize!13536 Int) (cheight!6864 Int)) (Leaf!9684 (xs!9529 IArray!13311) (csize!13537 Int)) (Empty!6653) )
))
(declare-datatypes ((BalanceConc!13250 0))(
  ( (BalanceConc!13251 (c!298016 Conc!6653)) )
))
(declare-datatypes ((TokenValueInjection!7082 0))(
  ( (TokenValueInjection!7083 (toValue!5160 Int) (toChars!5019 Int)) )
))
(declare-datatypes ((Regex!4949 0))(
  ( (ElementMatch!4949 (c!298017 C!10072)) (Concat!8661 (regOne!10410 Regex!4949) (regTwo!10410 Regex!4949)) (EmptyExpr!4949) (Star!4949 (reg!5278 Regex!4949)) (EmptyLang!4949) (Union!4949 (regOne!10411 Regex!4949) (regTwo!10411 Regex!4949)) )
))
(declare-datatypes ((String!22887 0))(
  ( (String!22888 (value!112864 String)) )
))
(declare-datatypes ((Rule!7042 0))(
  ( (Rule!7043 (regex!3621 Regex!4949) (tag!4035 String!22887) (isSeparator!3621 Bool) (transformation!3621 TokenValueInjection!7082)) )
))
(declare-datatypes ((Token!6796 0))(
  ( (Token!6797 (value!112865 TokenValue!3711) (rule!5781 Rule!7042) (size!15918 Int) (originalCharacters!4429 List!20133)) )
))
(declare-fun token!556 () Token!6796)

(declare-fun suffix!1667 () List!20133)

(declare-fun ++!5445 (List!20133 List!20133) List!20133)

(declare-fun list!8151 (BalanceConc!13250) List!20133)

(declare-fun charsOf!2264 (Token!6796) BalanceConc!13250)

(assert (=> b!1826863 (= lt!709806 (++!5445 (list!8151 (charsOf!2264 token!556)) suffix!1667))))

(declare-fun e!1167661 () Bool)

(assert (=> b!1826864 (= e!1167661 (and tp!516551 tp!516553))))

(declare-fun b!1826865 () Bool)

(declare-fun res!821606 () Bool)

(assert (=> b!1826865 (=> (not res!821606) (not e!1167671))))

(declare-fun rule!559 () Rule!7042)

(assert (=> b!1826865 (= res!821606 (= (rule!5781 token!556) rule!559))))

(declare-fun e!1167667 () Bool)

(assert (=> b!1826866 (= e!1167667 (and tp!516552 tp!516550))))

(declare-fun b!1826867 () Bool)

(declare-fun res!821605 () Bool)

(assert (=> b!1826867 (=> (not res!821605) (not e!1167671))))

(declare-datatypes ((LexerInterface!3250 0))(
  ( (LexerInterfaceExt!3247 (__x!12725 Int)) (Lexer!3248) )
))
(declare-fun thiss!28068 () LexerInterface!3250)

(declare-datatypes ((List!20135 0))(
  ( (Nil!20065) (Cons!20065 (h!25466 Rule!7042) (t!170334 List!20135)) )
))
(declare-fun rules!4538 () List!20135)

(declare-fun input!3612 () List!20133)

(declare-datatypes ((tuple2!19550 0))(
  ( (tuple2!19551 (_1!11177 Token!6796) (_2!11177 List!20133)) )
))
(declare-datatypes ((Option!4201 0))(
  ( (None!4200) (Some!4200 (v!25761 tuple2!19550)) )
))
(declare-fun maxPrefix!1798 (LexerInterface!3250 List!20135 List!20133) Option!4201)

(assert (=> b!1826867 (= res!821605 (= (maxPrefix!1798 thiss!28068 rules!4538 input!3612) (Some!4200 (tuple2!19551 token!556 suffix!1667))))))

(declare-fun b!1826868 () Bool)

(declare-fun res!821601 () Bool)

(assert (=> b!1826868 (=> (not res!821601) (not e!1167671))))

(declare-fun contains!3687 (List!20135 Rule!7042) Bool)

(assert (=> b!1826868 (= res!821601 (contains!3687 rules!4538 rule!559))))

(declare-fun e!1167665 () Bool)

(assert (=> b!1826870 (= e!1167665 (and tp!516555 tp!516554))))

(declare-fun b!1826871 () Bool)

(declare-fun e!1167664 () Bool)

(declare-fun tp_is_empty!8133 () Bool)

(declare-fun tp!516557 () Bool)

(assert (=> b!1826871 (= e!1167664 (and tp_is_empty!8133 tp!516557))))

(declare-fun b!1826872 () Bool)

(declare-fun e!1167660 () Bool)

(declare-fun tp!516562 () Bool)

(declare-fun inv!26104 (String!22887) Bool)

(declare-fun inv!26107 (TokenValueInjection!7082) Bool)

(assert (=> b!1826872 (= e!1167660 (and tp!516562 (inv!26104 (tag!4035 (rule!5781 token!556))) (inv!26107 (transformation!3621 (rule!5781 token!556))) e!1167665))))

(declare-fun b!1826873 () Bool)

(declare-fun res!821602 () Bool)

(assert (=> b!1826873 (=> (not res!821602) (not e!1167671))))

(declare-fun rulesInvariant!2919 (LexerInterface!3250 List!20135) Bool)

(assert (=> b!1826873 (= res!821602 (rulesInvariant!2919 thiss!28068 rules!4538))))

(declare-fun tp!516556 () Bool)

(declare-fun b!1826874 () Bool)

(declare-fun e!1167670 () Bool)

(assert (=> b!1826874 (= e!1167670 (and tp!516556 (inv!26104 (tag!4035 (h!25466 rules!4538))) (inv!26107 (transformation!3621 (h!25466 rules!4538))) e!1167667))))

(declare-fun res!821604 () Bool)

(assert (=> start!181146 (=> (not res!821604) (not e!1167671))))

(get-info :version)

(assert (=> start!181146 (= res!821604 ((_ is Lexer!3248) thiss!28068))))

(assert (=> start!181146 e!1167671))

(assert (=> start!181146 e!1167664))

(assert (=> start!181146 true))

(declare-fun e!1167672 () Bool)

(assert (=> start!181146 e!1167672))

(declare-fun e!1167668 () Bool)

(declare-fun inv!26108 (Token!6796) Bool)

(assert (=> start!181146 (and (inv!26108 token!556) e!1167668)))

(declare-fun e!1167662 () Bool)

(assert (=> start!181146 e!1167662))

(declare-fun e!1167673 () Bool)

(assert (=> start!181146 e!1167673))

(declare-fun tp!516561 () Bool)

(declare-fun b!1826869 () Bool)

(assert (=> b!1826869 (= e!1167662 (and tp!516561 (inv!26104 (tag!4035 rule!559)) (inv!26107 (transformation!3621 rule!559)) e!1167661))))

(declare-fun b!1826875 () Bool)

(declare-fun tp!516559 () Bool)

(assert (=> b!1826875 (= e!1167672 (and e!1167670 tp!516559))))

(declare-fun b!1826876 () Bool)

(declare-fun tp!516560 () Bool)

(assert (=> b!1826876 (= e!1167673 (and tp_is_empty!8133 tp!516560))))

(declare-fun tp!516558 () Bool)

(declare-fun b!1826877 () Bool)

(declare-fun inv!21 (TokenValue!3711) Bool)

(assert (=> b!1826877 (= e!1167668 (and (inv!21 (value!112865 token!556)) e!1167660 tp!516558))))

(declare-fun b!1826878 () Bool)

(declare-fun res!821603 () Bool)

(assert (=> b!1826878 (=> (not res!821603) (not e!1167671))))

(declare-fun isEmpty!12669 (List!20135) Bool)

(assert (=> b!1826878 (= res!821603 (not (isEmpty!12669 rules!4538)))))

(assert (= (and start!181146 res!821604) b!1826878))

(assert (= (and b!1826878 res!821603) b!1826873))

(assert (= (and b!1826873 res!821602) b!1826868))

(assert (= (and b!1826868 res!821601) b!1826867))

(assert (= (and b!1826867 res!821605) b!1826865))

(assert (= (and b!1826865 res!821606) b!1826863))

(assert (= (and start!181146 ((_ is Cons!20063) suffix!1667)) b!1826871))

(assert (= b!1826874 b!1826866))

(assert (= b!1826875 b!1826874))

(assert (= (and start!181146 ((_ is Cons!20065) rules!4538)) b!1826875))

(assert (= b!1826872 b!1826870))

(assert (= b!1826877 b!1826872))

(assert (= start!181146 b!1826877))

(assert (= b!1826869 b!1826864))

(assert (= start!181146 b!1826869))

(assert (= (and start!181146 ((_ is Cons!20063) input!3612)) b!1826876))

(declare-fun m!2255151 () Bool)

(assert (=> b!1826869 m!2255151))

(declare-fun m!2255153 () Bool)

(assert (=> b!1826869 m!2255153))

(declare-fun m!2255155 () Bool)

(assert (=> b!1826863 m!2255155))

(assert (=> b!1826863 m!2255155))

(declare-fun m!2255157 () Bool)

(assert (=> b!1826863 m!2255157))

(assert (=> b!1826863 m!2255157))

(declare-fun m!2255159 () Bool)

(assert (=> b!1826863 m!2255159))

(declare-fun m!2255161 () Bool)

(assert (=> b!1826867 m!2255161))

(declare-fun m!2255163 () Bool)

(assert (=> start!181146 m!2255163))

(declare-fun m!2255165 () Bool)

(assert (=> b!1826877 m!2255165))

(declare-fun m!2255167 () Bool)

(assert (=> b!1826873 m!2255167))

(declare-fun m!2255169 () Bool)

(assert (=> b!1826874 m!2255169))

(declare-fun m!2255171 () Bool)

(assert (=> b!1826874 m!2255171))

(declare-fun m!2255173 () Bool)

(assert (=> b!1826878 m!2255173))

(declare-fun m!2255175 () Bool)

(assert (=> b!1826868 m!2255175))

(declare-fun m!2255177 () Bool)

(assert (=> b!1826872 m!2255177))

(declare-fun m!2255179 () Bool)

(assert (=> b!1826872 m!2255179))

(check-sat (not b!1826872) b_and!141919 b_and!141925 (not b_next!51609) (not b_next!51607) (not b!1826878) (not b_next!51611) b_and!141921 b_and!141923 (not start!181146) (not b!1826877) (not b!1826874) (not b!1826863) (not b!1826873) (not b!1826871) b_and!141927 (not b!1826869) (not b_next!51613) (not b!1826868) (not b_next!51617) tp_is_empty!8133 (not b!1826867) (not b_next!51615) (not b!1826876) b_and!141917 (not b!1826875))
(check-sat b_and!141919 b_and!141925 (not b_next!51609) b_and!141927 (not b_next!51607) (not b_next!51611) b_and!141921 (not b_next!51613) b_and!141923 (not b_next!51617) (not b_next!51615) b_and!141917)
