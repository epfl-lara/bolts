; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!184350 () Bool)

(assert start!184350)

(declare-datatypes ((List!20472 0))(
  ( (Nil!20400) (Cons!20400 (h!25801 (_ BitVec 16)) (t!172245 List!20472)) )
))
(declare-datatypes ((IArray!13527 0))(
  ( (IArray!13528 (innerList!6821 List!20472)) )
))
(declare-datatypes ((Conc!6761 0))(
  ( (Node!6761 (left!16366 Conc!6761) (right!16696 Conc!6761) (csize!13752 Int) (cheight!6972 Int)) (Leaf!9881 (xs!9637 IArray!13527) (csize!13753 Int)) (Empty!6761) )
))
(declare-datatypes ((BalanceConc!13444 0))(
  ( (BalanceConc!13445 (c!301598 Conc!6761)) )
))
(declare-fun v!5108 () BalanceConc!13444)

(declare-datatypes ((TokenValue!3777 0))(
  ( (FloatLiteralValue!7554 (text!26884 List!20472)) (TokenValueExt!3776 (__x!12831 Int)) (Broken!18885 (value!114846 List!20472)) (Object!3848) (End!3777) (Def!3777) (Underscore!3777) (Match!3777) (Else!3777) (Error!3777) (Case!3777) (If!3777) (Extends!3777) (Abstract!3777) (Class!3777) (Val!3777) (DelimiterValue!7554 (del!3837 List!20472)) (KeywordValue!3783 (value!114847 List!20472)) (CommentValue!7554 (value!114848 List!20472)) (WhitespaceValue!7554 (value!114849 List!20472)) (IndentationValue!3777 (value!114850 List!20472)) (String!23390) (Int32!3777) (Broken!18886 (value!114851 List!20472)) (Boolean!3778) (Unit!35066) (OperatorValue!3780 (op!3837 List!20472)) (IdentifierValue!7554 (value!114852 List!20472)) (IdentifierValue!7555 (value!114853 List!20472)) (WhitespaceValue!7555 (value!114854 List!20472)) (True!7554) (False!7554) (Broken!18887 (value!114855 List!20472)) (Broken!18888 (value!114856 List!20472)) (True!7555) (RightBrace!3777) (RightBracket!3777) (Colon!3777) (Null!3777) (Comma!3777) (LeftBracket!3777) (False!7555) (LeftBrace!3777) (ImaginaryLiteralValue!3777 (text!26885 List!20472)) (StringLiteralValue!11331 (value!114857 List!20472)) (EOFValue!3777 (value!114858 List!20472)) (IdentValue!3777 (value!114859 List!20472)) (DelimiterValue!7555 (value!114860 List!20472)) (DedentValue!3777 (value!114861 List!20472)) (NewLineValue!3777 (value!114862 List!20472)) (IntegerValue!11331 (value!114863 (_ BitVec 32)) (text!26886 List!20472)) (IntegerValue!11332 (value!114864 Int) (text!26887 List!20472)) (Times!3777) (Or!3777) (Equal!3777) (Minus!3777) (Broken!18889 (value!114865 List!20472)) (And!3777) (Div!3777) (LessEqual!3777) (Mod!3777) (Concat!8769) (Not!3777) (Plus!3777) (SpaceValue!3777 (value!114866 List!20472)) (IntegerValue!11333 (value!114867 Int) (text!26888 List!20472)) (StringLiteralValue!11332 (text!26889 List!20472)) (FloatLiteralValue!7555 (text!26890 List!20472)) (BytesLiteralValue!3777 (value!114868 List!20472)) (CommentValue!7555 (value!114869 List!20472)) (StringLiteralValue!11333 (value!114870 List!20472)) (ErrorTokenValue!3777 (msg!3838 List!20472)) )
))
(declare-fun inv!21 (TokenValue!3777) Bool)

(declare-fun efficientList!229 (BalanceConc!13444) List!20472)

(assert (=> start!184350 (not (inv!21 (ImaginaryLiteralValue!3777 (efficientList!229 v!5108))))))

(declare-fun e!1180389 () Bool)

(declare-fun inv!26773 (BalanceConc!13444) Bool)

(assert (=> start!184350 (and (inv!26773 v!5108) e!1180389)))

(declare-fun b!1847014 () Bool)

(declare-fun tp!522159 () Bool)

(declare-fun inv!26774 (Conc!6761) Bool)

(assert (=> b!1847014 (= e!1180389 (and (inv!26774 (c!301598 v!5108)) tp!522159))))

(assert (= start!184350 b!1847014))

(declare-fun m!2275477 () Bool)

(assert (=> start!184350 m!2275477))

(declare-fun m!2275479 () Bool)

(assert (=> start!184350 m!2275479))

(declare-fun m!2275481 () Bool)

(assert (=> start!184350 m!2275481))

(declare-fun m!2275483 () Bool)

(assert (=> b!1847014 m!2275483))

(check-sat (not start!184350) (not b!1847014))
(check-sat)
(get-model)

(declare-fun b!1847040 () Bool)

(declare-fun e!1180405 () Bool)

(declare-fun inv!17 (TokenValue!3777) Bool)

(assert (=> b!1847040 (= e!1180405 (inv!17 (ImaginaryLiteralValue!3777 (efficientList!229 v!5108))))))

(declare-fun b!1847041 () Bool)

(declare-fun res!829318 () Bool)

(declare-fun e!1180406 () Bool)

(assert (=> b!1847041 (=> res!829318 e!1180406)))

(get-info :version)

(assert (=> b!1847041 (= res!829318 (not ((_ is IntegerValue!11333) (ImaginaryLiteralValue!3777 (efficientList!229 v!5108)))))))

(assert (=> b!1847041 (= e!1180405 e!1180406)))

(declare-fun b!1847042 () Bool)

(declare-fun inv!15 (TokenValue!3777) Bool)

(assert (=> b!1847042 (= e!1180406 (inv!15 (ImaginaryLiteralValue!3777 (efficientList!229 v!5108))))))

(declare-fun d!565426 () Bool)

(declare-fun c!301609 () Bool)

(assert (=> d!565426 (= c!301609 ((_ is IntegerValue!11331) (ImaginaryLiteralValue!3777 (efficientList!229 v!5108))))))

(declare-fun e!1180407 () Bool)

(assert (=> d!565426 (= (inv!21 (ImaginaryLiteralValue!3777 (efficientList!229 v!5108))) e!1180407)))

(declare-fun b!1847043 () Bool)

(assert (=> b!1847043 (= e!1180407 e!1180405)))

(declare-fun c!301610 () Bool)

(assert (=> b!1847043 (= c!301610 ((_ is IntegerValue!11332) (ImaginaryLiteralValue!3777 (efficientList!229 v!5108))))))

(declare-fun b!1847044 () Bool)

(declare-fun inv!16 (TokenValue!3777) Bool)

(assert (=> b!1847044 (= e!1180407 (inv!16 (ImaginaryLiteralValue!3777 (efficientList!229 v!5108))))))

(assert (= (and d!565426 c!301609) b!1847044))

(assert (= (and d!565426 (not c!301609)) b!1847043))

(assert (= (and b!1847043 c!301610) b!1847040))

(assert (= (and b!1847043 (not c!301610)) b!1847041))

(assert (= (and b!1847041 (not res!829318)) b!1847042))

(declare-fun m!2275491 () Bool)

(assert (=> b!1847040 m!2275491))

(declare-fun m!2275493 () Bool)

(assert (=> b!1847042 m!2275493))

(declare-fun m!2275495 () Bool)

(assert (=> b!1847044 m!2275495))

(assert (=> start!184350 d!565426))

(declare-fun d!565430 () Bool)

(declare-fun lt!715064 () List!20472)

(declare-fun list!8306 (BalanceConc!13444) List!20472)

(assert (=> d!565430 (= lt!715064 (list!8306 v!5108))))

(declare-fun efficientList!230 (Conc!6761 List!20472) List!20472)

(declare-fun efficientList$default$2!77 (Conc!6761) List!20472)

(assert (=> d!565430 (= lt!715064 (efficientList!230 (c!301598 v!5108) (efficientList$default$2!77 (c!301598 v!5108))))))

(assert (=> d!565430 (= (efficientList!229 v!5108) lt!715064)))

(declare-fun bs!409703 () Bool)

(assert (= bs!409703 d!565430))

(declare-fun m!2275503 () Bool)

(assert (=> bs!409703 m!2275503))

(declare-fun m!2275505 () Bool)

(assert (=> bs!409703 m!2275505))

(assert (=> bs!409703 m!2275505))

(declare-fun m!2275507 () Bool)

(assert (=> bs!409703 m!2275507))

(assert (=> start!184350 d!565430))

(declare-fun d!565434 () Bool)

(declare-fun isBalanced!2110 (Conc!6761) Bool)

(assert (=> d!565434 (= (inv!26773 v!5108) (isBalanced!2110 (c!301598 v!5108)))))

(declare-fun bs!409705 () Bool)

(assert (= bs!409705 d!565434))

(declare-fun m!2275511 () Bool)

(assert (=> bs!409705 m!2275511))

(assert (=> start!184350 d!565434))

(declare-fun d!565438 () Bool)

(declare-fun c!301616 () Bool)

(assert (=> d!565438 (= c!301616 ((_ is Node!6761) (c!301598 v!5108)))))

(declare-fun e!1180418 () Bool)

(assert (=> d!565438 (= (inv!26774 (c!301598 v!5108)) e!1180418)))

(declare-fun b!1847060 () Bool)

(declare-fun inv!26775 (Conc!6761) Bool)

(assert (=> b!1847060 (= e!1180418 (inv!26775 (c!301598 v!5108)))))

(declare-fun b!1847061 () Bool)

(declare-fun e!1180419 () Bool)

(assert (=> b!1847061 (= e!1180418 e!1180419)))

(declare-fun res!829324 () Bool)

(assert (=> b!1847061 (= res!829324 (not ((_ is Leaf!9881) (c!301598 v!5108))))))

(assert (=> b!1847061 (=> res!829324 e!1180419)))

(declare-fun b!1847062 () Bool)

(declare-fun inv!26776 (Conc!6761) Bool)

(assert (=> b!1847062 (= e!1180419 (inv!26776 (c!301598 v!5108)))))

(assert (= (and d!565438 c!301616) b!1847060))

(assert (= (and d!565438 (not c!301616)) b!1847061))

(assert (= (and b!1847061 (not res!829324)) b!1847062))

(declare-fun m!2275517 () Bool)

(assert (=> b!1847060 m!2275517))

(declare-fun m!2275519 () Bool)

(assert (=> b!1847062 m!2275519))

(assert (=> b!1847014 d!565438))

(declare-fun b!1847077 () Bool)

(declare-fun e!1180430 () Bool)

(declare-fun tp!522170 () Bool)

(declare-fun tp!522171 () Bool)

(assert (=> b!1847077 (= e!1180430 (and (inv!26774 (left!16366 (c!301598 v!5108))) tp!522170 (inv!26774 (right!16696 (c!301598 v!5108))) tp!522171))))

(declare-fun b!1847078 () Bool)

(declare-fun inv!26779 (IArray!13527) Bool)

(assert (=> b!1847078 (= e!1180430 (inv!26779 (xs!9637 (c!301598 v!5108))))))

(assert (=> b!1847014 (= tp!522159 (and (inv!26774 (c!301598 v!5108)) e!1180430))))

(assert (= (and b!1847014 ((_ is Node!6761) (c!301598 v!5108))) b!1847077))

(assert (= (and b!1847014 ((_ is Leaf!9881) (c!301598 v!5108))) b!1847078))

(declare-fun m!2275527 () Bool)

(assert (=> b!1847077 m!2275527))

(declare-fun m!2275529 () Bool)

(assert (=> b!1847077 m!2275529))

(declare-fun m!2275531 () Bool)

(assert (=> b!1847078 m!2275531))

(assert (=> b!1847014 m!2275483))

(check-sat (not d!565434) (not d!565430) (not b!1847062) (not b!1847077) (not b!1847078) (not b!1847014) (not b!1847044) (not b!1847042) (not b!1847060) (not b!1847040))
(check-sat)
