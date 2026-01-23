; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230260 () Bool)

(assert start!230260)

(declare-datatypes ((List!27930 0))(
  ( (Nil!27832) (Cons!27832 (h!33233 (_ BitVec 16)) (t!207789 List!27930)) )
))
(declare-datatypes ((IArray!18279 0))(
  ( (IArray!18280 (innerList!9197 List!27930)) )
))
(declare-datatypes ((Conc!9137 0))(
  ( (Node!9137 (left!21149 Conc!9137) (right!21479 Conc!9137) (csize!18504 Int) (cheight!9348 Int)) (Leaf!13426 (xs!12117 IArray!18279) (csize!18505 Int)) (Empty!9137) )
))
(declare-datatypes ((BalanceConc!17886 0))(
  ( (BalanceConc!17887 (c!370129 Conc!9137)) )
))
(declare-fun v!4194 () BalanceConc!17886)

(declare-datatypes ((TokenValue!4621 0))(
  ( (FloatLiteralValue!9242 (text!32792 List!27930)) (TokenValueExt!4620 (__x!18390 Int)) (Broken!23105 (value!141067 List!27930)) (Object!4718) (End!4621) (Def!4621) (Underscore!4621) (Match!4621) (Else!4621) (Error!4621) (Case!4621) (If!4621) (Extends!4621) (Abstract!4621) (Class!4621) (Val!4621) (DelimiterValue!9242 (del!4681 List!27930)) (KeywordValue!4627 (value!141068 List!27930)) (CommentValue!9242 (value!141069 List!27930)) (WhitespaceValue!9242 (value!141070 List!27930)) (IndentationValue!4621 (value!141071 List!27930)) (String!30458) (Int32!4621) (Broken!23106 (value!141072 List!27930)) (Boolean!4622) (Unit!40599) (OperatorValue!4624 (op!4681 List!27930)) (IdentifierValue!9242 (value!141073 List!27930)) (IdentifierValue!9243 (value!141074 List!27930)) (WhitespaceValue!9243 (value!141075 List!27930)) (True!9242) (False!9242) (Broken!23107 (value!141076 List!27930)) (Broken!23108 (value!141077 List!27930)) (True!9243) (RightBrace!4621) (RightBracket!4621) (Colon!4621) (Null!4621) (Comma!4621) (LeftBracket!4621) (False!9243) (LeftBrace!4621) (ImaginaryLiteralValue!4621 (text!32793 List!27930)) (StringLiteralValue!13863 (value!141078 List!27930)) (EOFValue!4621 (value!141079 List!27930)) (IdentValue!4621 (value!141080 List!27930)) (DelimiterValue!9243 (value!141081 List!27930)) (DedentValue!4621 (value!141082 List!27930)) (NewLineValue!4621 (value!141083 List!27930)) (IntegerValue!13863 (value!141084 (_ BitVec 32)) (text!32794 List!27930)) (IntegerValue!13864 (value!141085 Int) (text!32795 List!27930)) (Times!4621) (Or!4621) (Equal!4621) (Minus!4621) (Broken!23109 (value!141086 List!27930)) (And!4621) (Div!4621) (LessEqual!4621) (Mod!4621) (Concat!11437) (Not!4621) (Plus!4621) (SpaceValue!4621 (value!141087 List!27930)) (IntegerValue!13865 (value!141088 Int) (text!32796 List!27930)) (StringLiteralValue!13864 (text!32797 List!27930)) (FloatLiteralValue!9243 (text!32798 List!27930)) (BytesLiteralValue!4621 (value!141089 List!27930)) (CommentValue!9243 (value!141090 List!27930)) (StringLiteralValue!13865 (value!141091 List!27930)) (ErrorTokenValue!4621 (msg!4682 List!27930)) )
))
(declare-fun inv!21 (TokenValue!4621) Bool)

(declare-fun efficientList!340 (BalanceConc!17886) List!27930)

(assert (=> start!230260 (not (inv!21 (FloatLiteralValue!9242 (efficientList!340 v!4194))))))

(declare-fun e!1492982 () Bool)

(declare-fun inv!37932 (BalanceConc!17886) Bool)

(assert (=> start!230260 (and (inv!37932 v!4194) e!1492982)))

(declare-fun b!2330070 () Bool)

(declare-fun tp!738309 () Bool)

(declare-fun inv!37933 (Conc!9137) Bool)

(assert (=> b!2330070 (= e!1492982 (and (inv!37933 (c!370129 v!4194)) tp!738309))))

(assert (= start!230260 b!2330070))

(declare-fun m!2760451 () Bool)

(assert (=> start!230260 m!2760451))

(declare-fun m!2760453 () Bool)

(assert (=> start!230260 m!2760453))

(declare-fun m!2760455 () Bool)

(assert (=> start!230260 m!2760455))

(declare-fun m!2760457 () Bool)

(assert (=> b!2330070 m!2760457))

(check-sat (not start!230260) (not b!2330070))
(check-sat)
(get-model)

(declare-fun b!2330090 () Bool)

(declare-fun e!1492996 () Bool)

(declare-fun e!1492997 () Bool)

(assert (=> b!2330090 (= e!1492996 e!1492997)))

(declare-fun c!370137 () Bool)

(get-info :version)

(assert (=> b!2330090 (= c!370137 ((_ is IntegerValue!13864) (FloatLiteralValue!9242 (efficientList!340 v!4194))))))

(declare-fun d!689837 () Bool)

(declare-fun c!370138 () Bool)

(assert (=> d!689837 (= c!370138 ((_ is IntegerValue!13863) (FloatLiteralValue!9242 (efficientList!340 v!4194))))))

(assert (=> d!689837 (= (inv!21 (FloatLiteralValue!9242 (efficientList!340 v!4194))) e!1492996)))

(declare-fun b!2330091 () Bool)

(declare-fun inv!16 (TokenValue!4621) Bool)

(assert (=> b!2330091 (= e!1492996 (inv!16 (FloatLiteralValue!9242 (efficientList!340 v!4194))))))

(declare-fun b!2330092 () Bool)

(declare-fun inv!17 (TokenValue!4621) Bool)

(assert (=> b!2330092 (= e!1492997 (inv!17 (FloatLiteralValue!9242 (efficientList!340 v!4194))))))

(declare-fun b!2330093 () Bool)

(declare-fun e!1492995 () Bool)

(declare-fun inv!15 (TokenValue!4621) Bool)

(assert (=> b!2330093 (= e!1492995 (inv!15 (FloatLiteralValue!9242 (efficientList!340 v!4194))))))

(declare-fun b!2330094 () Bool)

(declare-fun res!994825 () Bool)

(assert (=> b!2330094 (=> res!994825 e!1492995)))

(assert (=> b!2330094 (= res!994825 (not ((_ is IntegerValue!13865) (FloatLiteralValue!9242 (efficientList!340 v!4194)))))))

(assert (=> b!2330094 (= e!1492997 e!1492995)))

(assert (= (and d!689837 c!370138) b!2330091))

(assert (= (and d!689837 (not c!370138)) b!2330090))

(assert (= (and b!2330090 c!370137) b!2330092))

(assert (= (and b!2330090 (not c!370137)) b!2330094))

(assert (= (and b!2330094 (not res!994825)) b!2330093))

(declare-fun m!2760463 () Bool)

(assert (=> b!2330091 m!2760463))

(declare-fun m!2760465 () Bool)

(assert (=> b!2330092 m!2760465))

(declare-fun m!2760467 () Bool)

(assert (=> b!2330093 m!2760467))

(assert (=> start!230260 d!689837))

(declare-fun d!689841 () Bool)

(declare-fun lt!862210 () List!27930)

(declare-fun list!11074 (BalanceConc!17886) List!27930)

(assert (=> d!689841 (= lt!862210 (list!11074 v!4194))))

(declare-fun efficientList!341 (Conc!9137 List!27930) List!27930)

(declare-fun efficientList$default$2!116 (Conc!9137) List!27930)

(assert (=> d!689841 (= lt!862210 (efficientList!341 (c!370129 v!4194) (efficientList$default$2!116 (c!370129 v!4194))))))

(assert (=> d!689841 (= (efficientList!340 v!4194) lt!862210)))

(declare-fun bs!459769 () Bool)

(assert (= bs!459769 d!689841))

(declare-fun m!2760475 () Bool)

(assert (=> bs!459769 m!2760475))

(declare-fun m!2760477 () Bool)

(assert (=> bs!459769 m!2760477))

(assert (=> bs!459769 m!2760477))

(declare-fun m!2760479 () Bool)

(assert (=> bs!459769 m!2760479))

(assert (=> start!230260 d!689841))

(declare-fun d!689845 () Bool)

(declare-fun isBalanced!2785 (Conc!9137) Bool)

(assert (=> d!689845 (= (inv!37932 v!4194) (isBalanced!2785 (c!370129 v!4194)))))

(declare-fun bs!459770 () Bool)

(assert (= bs!459770 d!689845))

(declare-fun m!2760481 () Bool)

(assert (=> bs!459770 m!2760481))

(assert (=> start!230260 d!689845))

(declare-fun d!689847 () Bool)

(declare-fun c!370147 () Bool)

(assert (=> d!689847 (= c!370147 ((_ is Node!9137) (c!370129 v!4194)))))

(declare-fun e!1493013 () Bool)

(assert (=> d!689847 (= (inv!37933 (c!370129 v!4194)) e!1493013)))

(declare-fun b!2330120 () Bool)

(declare-fun inv!37936 (Conc!9137) Bool)

(assert (=> b!2330120 (= e!1493013 (inv!37936 (c!370129 v!4194)))))

(declare-fun b!2330121 () Bool)

(declare-fun e!1493014 () Bool)

(assert (=> b!2330121 (= e!1493013 e!1493014)))

(declare-fun res!994831 () Bool)

(assert (=> b!2330121 (= res!994831 (not ((_ is Leaf!13426) (c!370129 v!4194))))))

(assert (=> b!2330121 (=> res!994831 e!1493014)))

(declare-fun b!2330122 () Bool)

(declare-fun inv!37937 (Conc!9137) Bool)

(assert (=> b!2330122 (= e!1493014 (inv!37937 (c!370129 v!4194)))))

(assert (= (and d!689847 c!370147) b!2330120))

(assert (= (and d!689847 (not c!370147)) b!2330121))

(assert (= (and b!2330121 (not res!994831)) b!2330122))

(declare-fun m!2760491 () Bool)

(assert (=> b!2330120 m!2760491))

(declare-fun m!2760493 () Bool)

(assert (=> b!2330122 m!2760493))

(assert (=> b!2330070 d!689847))

(declare-fun tp!738320 () Bool)

(declare-fun b!2330133 () Bool)

(declare-fun tp!738321 () Bool)

(declare-fun e!1493023 () Bool)

(assert (=> b!2330133 (= e!1493023 (and (inv!37933 (left!21149 (c!370129 v!4194))) tp!738320 (inv!37933 (right!21479 (c!370129 v!4194))) tp!738321))))

(declare-fun b!2330134 () Bool)

(declare-fun inv!37938 (IArray!18279) Bool)

(assert (=> b!2330134 (= e!1493023 (inv!37938 (xs!12117 (c!370129 v!4194))))))

(assert (=> b!2330070 (= tp!738309 (and (inv!37933 (c!370129 v!4194)) e!1493023))))

(assert (= (and b!2330070 ((_ is Node!9137) (c!370129 v!4194))) b!2330133))

(assert (= (and b!2330070 ((_ is Leaf!13426) (c!370129 v!4194))) b!2330134))

(declare-fun m!2760501 () Bool)

(assert (=> b!2330133 m!2760501))

(declare-fun m!2760503 () Bool)

(assert (=> b!2330133 m!2760503))

(declare-fun m!2760505 () Bool)

(assert (=> b!2330134 m!2760505))

(assert (=> b!2330070 m!2760457))

(check-sat (not b!2330134) (not b!2330091) (not d!689845) (not b!2330120) (not b!2330092) (not b!2330093) (not b!2330070) (not b!2330133) (not d!689841) (not b!2330122))
(check-sat)
