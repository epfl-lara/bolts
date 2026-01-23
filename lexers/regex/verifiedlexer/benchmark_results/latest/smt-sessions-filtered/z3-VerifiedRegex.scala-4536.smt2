; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!240130 () Bool)

(assert start!240130)

(declare-fun b!2462446 () Bool)

(declare-fun b_free!70741 () Bool)

(declare-fun b_next!71445 () Bool)

(assert (=> b!2462446 (= b_free!70741 (not b_next!71445))))

(declare-fun tp!784319 () Bool)

(declare-fun b_and!185909 () Bool)

(assert (=> b!2462446 (= tp!784319 b_and!185909)))

(declare-fun b_free!70743 () Bool)

(declare-fun b_next!71447 () Bool)

(assert (=> b!2462446 (= b_free!70743 (not b_next!71447))))

(declare-fun tp!784322 () Bool)

(declare-fun b_and!185911 () Bool)

(assert (=> b!2462446 (= tp!784322 b_and!185911)))

(declare-fun b!2462453 () Bool)

(declare-fun b_free!70745 () Bool)

(declare-fun b_next!71449 () Bool)

(assert (=> b!2462453 (= b_free!70745 (not b_next!71449))))

(declare-fun tp!784328 () Bool)

(declare-fun b_and!185913 () Bool)

(assert (=> b!2462453 (= tp!784328 b_and!185913)))

(declare-fun b_free!70747 () Bool)

(declare-fun b_next!71451 () Bool)

(assert (=> b!2462453 (= b_free!70747 (not b_next!71451))))

(declare-fun tp!784332 () Bool)

(declare-fun b_and!185915 () Bool)

(assert (=> b!2462453 (= tp!784332 b_and!185915)))

(declare-fun b!2462465 () Bool)

(declare-fun b_free!70749 () Bool)

(declare-fun b_next!71453 () Bool)

(assert (=> b!2462465 (= b_free!70749 (not b_next!71453))))

(declare-fun tp!784321 () Bool)

(declare-fun b_and!185917 () Bool)

(assert (=> b!2462465 (= tp!784321 b_and!185917)))

(declare-fun b_free!70751 () Bool)

(declare-fun b_next!71455 () Bool)

(assert (=> b!2462465 (= b_free!70751 (not b_next!71455))))

(declare-fun tp!784326 () Bool)

(declare-fun b_and!185919 () Bool)

(assert (=> b!2462465 (= tp!784326 b_and!185919)))

(declare-fun b!2462445 () Bool)

(declare-fun b_free!70753 () Bool)

(declare-fun b_next!71457 () Bool)

(assert (=> b!2462445 (= b_free!70753 (not b_next!71457))))

(declare-fun tp!784320 () Bool)

(declare-fun b_and!185921 () Bool)

(assert (=> b!2462445 (= tp!784320 b_and!185921)))

(declare-fun b_free!70755 () Bool)

(declare-fun b_next!71459 () Bool)

(assert (=> b!2462445 (= b_free!70755 (not b_next!71459))))

(declare-fun tp!784333 () Bool)

(declare-fun b_and!185923 () Bool)

(assert (=> b!2462445 (= tp!784333 b_and!185923)))

(declare-fun b!2462443 () Bool)

(declare-fun res!1043443 () Bool)

(declare-fun e!1561877 () Bool)

(assert (=> b!2462443 (=> (not res!1043443) (not e!1561877))))

(declare-datatypes ((List!28772 0))(
  ( (Nil!28672) (Cons!28672 (h!34073 (_ BitVec 16)) (t!208929 List!28772)) )
))
(declare-datatypes ((TokenValue!4645 0))(
  ( (FloatLiteralValue!9290 (text!32960 List!28772)) (TokenValueExt!4644 (__x!18545 Int)) (Broken!23225 (value!142461 List!28772)) (Object!4744) (End!4645) (Def!4645) (Underscore!4645) (Match!4645) (Else!4645) (Error!4645) (Case!4645) (If!4645) (Extends!4645) (Abstract!4645) (Class!4645) (Val!4645) (DelimiterValue!9290 (del!4705 List!28772)) (KeywordValue!4651 (value!142462 List!28772)) (CommentValue!9290 (value!142463 List!28772)) (WhitespaceValue!9290 (value!142464 List!28772)) (IndentationValue!4645 (value!142465 List!28772)) (String!31520) (Int32!4645) (Broken!23226 (value!142466 List!28772)) (Boolean!4646) (Unit!42000) (OperatorValue!4648 (op!4705 List!28772)) (IdentifierValue!9290 (value!142467 List!28772)) (IdentifierValue!9291 (value!142468 List!28772)) (WhitespaceValue!9291 (value!142469 List!28772)) (True!9290) (False!9290) (Broken!23227 (value!142470 List!28772)) (Broken!23228 (value!142471 List!28772)) (True!9291) (RightBrace!4645) (RightBracket!4645) (Colon!4645) (Null!4645) (Comma!4645) (LeftBracket!4645) (False!9291) (LeftBrace!4645) (ImaginaryLiteralValue!4645 (text!32961 List!28772)) (StringLiteralValue!13935 (value!142472 List!28772)) (EOFValue!4645 (value!142473 List!28772)) (IdentValue!4645 (value!142474 List!28772)) (DelimiterValue!9291 (value!142475 List!28772)) (DedentValue!4645 (value!142476 List!28772)) (NewLineValue!4645 (value!142477 List!28772)) (IntegerValue!13935 (value!142478 (_ BitVec 32)) (text!32962 List!28772)) (IntegerValue!13936 (value!142479 Int) (text!32963 List!28772)) (Times!4645) (Or!4645) (Equal!4645) (Minus!4645) (Broken!23229 (value!142480 List!28772)) (And!4645) (Div!4645) (LessEqual!4645) (Mod!4645) (Concat!11892) (Not!4645) (Plus!4645) (SpaceValue!4645 (value!142481 List!28772)) (IntegerValue!13937 (value!142482 Int) (text!32964 List!28772)) (StringLiteralValue!13936 (text!32965 List!28772)) (FloatLiteralValue!9291 (text!32966 List!28772)) (BytesLiteralValue!4645 (value!142483 List!28772)) (CommentValue!9291 (value!142484 List!28772)) (StringLiteralValue!13937 (value!142485 List!28772)) (ErrorTokenValue!4645 (msg!4706 List!28772)) )
))
(declare-datatypes ((C!14652 0))(
  ( (C!14653 (val!8586 Int)) )
))
(declare-datatypes ((List!28773 0))(
  ( (Nil!28673) (Cons!28673 (h!34074 C!14652) (t!208930 List!28773)) )
))
(declare-datatypes ((IArray!18335 0))(
  ( (IArray!18336 (innerList!9225 List!28773)) )
))
(declare-datatypes ((Conc!9165 0))(
  ( (Node!9165 (left!22021 Conc!9165) (right!22351 Conc!9165) (csize!18560 Int) (cheight!9376 Int)) (Leaf!13702 (xs!12145 IArray!18335) (csize!18561 Int)) (Empty!9165) )
))
(declare-datatypes ((BalanceConc!17944 0))(
  ( (BalanceConc!17945 (c!392914 Conc!9165)) )
))
(declare-datatypes ((Regex!7247 0))(
  ( (ElementMatch!7247 (c!392915 C!14652)) (Concat!11893 (regOne!15006 Regex!7247) (regTwo!15006 Regex!7247)) (EmptyExpr!7247) (Star!7247 (reg!7576 Regex!7247)) (EmptyLang!7247) (Union!7247 (regOne!15007 Regex!7247) (regTwo!15007 Regex!7247)) )
))
(declare-datatypes ((String!31521 0))(
  ( (String!31522 (value!142486 String)) )
))
(declare-datatypes ((TokenValueInjection!8790 0))(
  ( (TokenValueInjection!8791 (toValue!6315 Int) (toChars!6174 Int)) )
))
(declare-datatypes ((Rule!8718 0))(
  ( (Rule!8719 (regex!4459 Regex!7247) (tag!4949 String!31521) (isSeparator!4459 Bool) (transformation!4459 TokenValueInjection!8790)) )
))
(declare-datatypes ((Token!8388 0))(
  ( (Token!8389 (value!142487 TokenValue!4645) (rule!6817 Rule!8718) (size!22314 Int) (originalCharacters!5225 List!28773)) )
))
(declare-datatypes ((List!28774 0))(
  ( (Nil!28674) (Cons!28674 (h!34075 Token!8388) (t!208931 List!28774)) )
))
(declare-fun l!6611 () List!28774)

(declare-fun i!1803 () Int)

(declare-fun t1!67 () Token!8388)

(declare-fun apply!6729 (List!28774 Int) Token!8388)

(assert (=> b!2462443 (= res!1043443 (= (apply!6729 l!6611 i!1803) t1!67))))

(declare-fun tp!784327 () Bool)

(declare-fun e!1561872 () Bool)

(declare-fun e!1561874 () Bool)

(declare-fun b!2462444 () Bool)

(declare-fun inv!38755 (String!31521) Bool)

(declare-fun inv!38758 (TokenValueInjection!8790) Bool)

(assert (=> b!2462444 (= e!1561874 (and tp!784327 (inv!38755 (tag!4949 (rule!6817 (h!34075 l!6611)))) (inv!38758 (transformation!4459 (rule!6817 (h!34075 l!6611)))) e!1561872))))

(declare-fun e!1561859 () Bool)

(assert (=> b!2462445 (= e!1561859 (and tp!784320 tp!784333))))

(assert (=> b!2462446 (= e!1561872 (and tp!784319 tp!784322))))

(declare-fun b!2462447 () Bool)

(declare-fun res!1043445 () Bool)

(assert (=> b!2462447 (=> (not res!1043445) (not e!1561877))))

(declare-datatypes ((LexerInterface!4056 0))(
  ( (LexerInterfaceExt!4053 (__x!18546 Int)) (Lexer!4054) )
))
(declare-fun thiss!27932 () LexerInterface!4056)

(declare-datatypes ((List!28775 0))(
  ( (Nil!28675) (Cons!28675 (h!34076 Rule!8718) (t!208932 List!28775)) )
))
(declare-fun rules!4472 () List!28775)

(declare-fun rulesInvariant!3556 (LexerInterface!4056 List!28775) Bool)

(assert (=> b!2462447 (= res!1043445 (rulesInvariant!3556 thiss!27932 rules!4472))))

(declare-fun t2!67 () Token!8388)

(declare-fun b!2462448 () Bool)

(declare-fun rulesProduceIndividualToken!1793 (LexerInterface!4056 List!28775 Token!8388) Bool)

(assert (=> b!2462448 (= e!1561877 (not (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 t2!67)))))

(declare-fun b!2462449 () Bool)

(declare-fun e!1561876 () Bool)

(declare-fun tp!784323 () Bool)

(declare-fun e!1561858 () Bool)

(declare-fun inv!21 (TokenValue!4645) Bool)

(assert (=> b!2462449 (= e!1561858 (and (inv!21 (value!142487 t2!67)) e!1561876 tp!784323))))

(declare-fun b!2462450 () Bool)

(declare-fun e!1561868 () Bool)

(declare-fun e!1561865 () Bool)

(declare-fun tp!784329 () Bool)

(assert (=> b!2462450 (= e!1561868 (and e!1561865 tp!784329))))

(declare-fun b!2462451 () Bool)

(declare-fun res!1043442 () Bool)

(assert (=> b!2462451 (=> (not res!1043442) (not e!1561877))))

(declare-fun isEmpty!16663 (List!28775) Bool)

(assert (=> b!2462451 (= res!1043442 (not (isEmpty!16663 rules!4472)))))

(declare-fun b!2462452 () Bool)

(declare-fun res!1043435 () Bool)

(assert (=> b!2462452 (=> (not res!1043435) (not e!1561877))))

(declare-fun size!22315 (List!28774) Int)

(assert (=> b!2462452 (= res!1043435 (< (+ 1 i!1803) (size!22315 l!6611)))))

(declare-fun e!1561869 () Bool)

(assert (=> b!2462453 (= e!1561869 (and tp!784328 tp!784332))))

(declare-fun e!1561860 () Bool)

(declare-fun tp!784335 () Bool)

(declare-fun b!2462455 () Bool)

(assert (=> b!2462455 (= e!1561860 (and tp!784335 (inv!38755 (tag!4949 (rule!6817 t1!67))) (inv!38758 (transformation!4459 (rule!6817 t1!67))) e!1561859))))

(declare-fun tp!784330 () Bool)

(declare-fun e!1561867 () Bool)

(declare-fun b!2462456 () Bool)

(assert (=> b!2462456 (= e!1561876 (and tp!784330 (inv!38755 (tag!4949 (rule!6817 t2!67))) (inv!38758 (transformation!4459 (rule!6817 t2!67))) e!1561867))))

(declare-fun b!2462457 () Bool)

(declare-fun res!1043437 () Bool)

(assert (=> b!2462457 (=> (not res!1043437) (not e!1561877))))

(declare-fun rulesProduceEachTokenIndividuallyList!1372 (LexerInterface!4056 List!28775 List!28774) Bool)

(assert (=> b!2462457 (= res!1043437 (rulesProduceEachTokenIndividuallyList!1372 thiss!27932 rules!4472 l!6611))))

(declare-fun b!2462458 () Bool)

(declare-fun tp!784324 () Bool)

(declare-fun e!1561862 () Bool)

(assert (=> b!2462458 (= e!1561862 (and (inv!21 (value!142487 (h!34075 l!6611))) e!1561874 tp!784324))))

(declare-fun tp!784325 () Bool)

(declare-fun b!2462459 () Bool)

(declare-fun e!1561863 () Bool)

(declare-fun inv!38759 (Token!8388) Bool)

(assert (=> b!2462459 (= e!1561863 (and (inv!38759 (h!34075 l!6611)) e!1561862 tp!784325))))

(declare-fun b!2462460 () Bool)

(declare-fun res!1043441 () Bool)

(assert (=> b!2462460 (=> (not res!1043441) (not e!1561877))))

(assert (=> b!2462460 (= res!1043441 (= i!1803 0))))

(declare-fun b!2462461 () Bool)

(declare-fun e!1561870 () Bool)

(declare-fun tp!784331 () Bool)

(assert (=> b!2462461 (= e!1561870 (and (inv!21 (value!142487 t1!67)) e!1561860 tp!784331))))

(declare-fun b!2462462 () Bool)

(declare-fun tp!784334 () Bool)

(assert (=> b!2462462 (= e!1561865 (and tp!784334 (inv!38755 (tag!4949 (h!34076 rules!4472))) (inv!38758 (transformation!4459 (h!34076 rules!4472))) e!1561869))))

(declare-fun b!2462463 () Bool)

(declare-fun res!1043439 () Bool)

(assert (=> b!2462463 (=> (not res!1043439) (not e!1561877))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!595 (LexerInterface!4056 List!28774 List!28775) Bool)

(assert (=> b!2462463 (= res!1043439 (tokensListTwoByTwoPredicateSeparableList!595 thiss!27932 l!6611 rules!4472))))

(declare-fun b!2462464 () Bool)

(declare-fun res!1043444 () Bool)

(assert (=> b!2462464 (=> (not res!1043444) (not e!1561877))))

(assert (=> b!2462464 (= res!1043444 (= (apply!6729 l!6611 (+ 1 i!1803)) t2!67))))

(assert (=> b!2462465 (= e!1561867 (and tp!784321 tp!784326))))

(declare-fun b!2462466 () Bool)

(declare-fun res!1043438 () Bool)

(assert (=> b!2462466 (=> (not res!1043438) (not e!1561877))))

(assert (=> b!2462466 (= res!1043438 (>= i!1803 0))))

(declare-fun b!2462454 () Bool)

(declare-fun res!1043436 () Bool)

(assert (=> b!2462454 (=> (not res!1043436) (not e!1561877))))

(assert (=> b!2462454 (= res!1043436 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 t1!67))))

(declare-fun res!1043440 () Bool)

(assert (=> start!240130 (=> (not res!1043440) (not e!1561877))))

(get-info :version)

(assert (=> start!240130 (= res!1043440 ((_ is Lexer!4054) thiss!27932))))

(assert (=> start!240130 e!1561877))

(assert (=> start!240130 true))

(assert (=> start!240130 e!1561868))

(assert (=> start!240130 (and (inv!38759 t2!67) e!1561858)))

(assert (=> start!240130 e!1561863))

(assert (=> start!240130 (and (inv!38759 t1!67) e!1561870)))

(assert (= (and start!240130 res!1043440) b!2462451))

(assert (= (and b!2462451 res!1043442) b!2462447))

(assert (= (and b!2462447 res!1043445) b!2462457))

(assert (= (and b!2462457 res!1043437) b!2462463))

(assert (= (and b!2462463 res!1043439) b!2462466))

(assert (= (and b!2462466 res!1043438) b!2462452))

(assert (= (and b!2462452 res!1043435) b!2462443))

(assert (= (and b!2462443 res!1043443) b!2462464))

(assert (= (and b!2462464 res!1043444) b!2462460))

(assert (= (and b!2462460 res!1043441) b!2462454))

(assert (= (and b!2462454 res!1043436) b!2462448))

(assert (= b!2462462 b!2462453))

(assert (= b!2462450 b!2462462))

(assert (= (and start!240130 ((_ is Cons!28675) rules!4472)) b!2462450))

(assert (= b!2462456 b!2462465))

(assert (= b!2462449 b!2462456))

(assert (= start!240130 b!2462449))

(assert (= b!2462444 b!2462446))

(assert (= b!2462458 b!2462444))

(assert (= b!2462459 b!2462458))

(assert (= (and start!240130 ((_ is Cons!28674) l!6611)) b!2462459))

(assert (= b!2462455 b!2462445))

(assert (= b!2462461 b!2462455))

(assert (= start!240130 b!2462461))

(declare-fun m!2831453 () Bool)

(assert (=> b!2462443 m!2831453))

(declare-fun m!2831455 () Bool)

(assert (=> b!2462459 m!2831455))

(declare-fun m!2831457 () Bool)

(assert (=> b!2462447 m!2831457))

(declare-fun m!2831459 () Bool)

(assert (=> b!2462444 m!2831459))

(declare-fun m!2831461 () Bool)

(assert (=> b!2462444 m!2831461))

(declare-fun m!2831463 () Bool)

(assert (=> b!2462452 m!2831463))

(declare-fun m!2831465 () Bool)

(assert (=> b!2462451 m!2831465))

(declare-fun m!2831467 () Bool)

(assert (=> b!2462456 m!2831467))

(declare-fun m!2831469 () Bool)

(assert (=> b!2462456 m!2831469))

(declare-fun m!2831471 () Bool)

(assert (=> b!2462449 m!2831471))

(declare-fun m!2831473 () Bool)

(assert (=> b!2462455 m!2831473))

(declare-fun m!2831475 () Bool)

(assert (=> b!2462455 m!2831475))

(declare-fun m!2831477 () Bool)

(assert (=> b!2462463 m!2831477))

(declare-fun m!2831479 () Bool)

(assert (=> b!2462457 m!2831479))

(declare-fun m!2831481 () Bool)

(assert (=> b!2462454 m!2831481))

(declare-fun m!2831483 () Bool)

(assert (=> b!2462458 m!2831483))

(declare-fun m!2831485 () Bool)

(assert (=> b!2462461 m!2831485))

(declare-fun m!2831487 () Bool)

(assert (=> b!2462462 m!2831487))

(declare-fun m!2831489 () Bool)

(assert (=> b!2462462 m!2831489))

(declare-fun m!2831491 () Bool)

(assert (=> start!240130 m!2831491))

(declare-fun m!2831493 () Bool)

(assert (=> start!240130 m!2831493))

(declare-fun m!2831495 () Bool)

(assert (=> b!2462448 m!2831495))

(declare-fun m!2831497 () Bool)

(assert (=> b!2462464 m!2831497))

(check-sat (not b_next!71453) (not b!2462456) b_and!185919 b_and!185913 (not b!2462457) (not b!2462444) (not b!2462449) (not b!2462455) b_and!185909 (not b_next!71447) (not b_next!71445) (not b!2462451) (not b!2462452) b_and!185921 (not b_next!71459) (not b!2462448) (not b!2462443) (not b!2462463) (not b_next!71449) (not b!2462450) (not start!240130) (not b_next!71451) (not b!2462462) (not b!2462447) (not b_next!71457) b_and!185923 (not b!2462461) (not b!2462458) b_and!185917 b_and!185911 (not b!2462464) (not b_next!71455) (not b!2462454) (not b!2462459) b_and!185915)
(check-sat (not b_next!71453) b_and!185919 b_and!185913 (not b_next!71449) (not b_next!71451) b_and!185909 b_and!185917 b_and!185911 (not b_next!71455) b_and!185915 (not b_next!71447) (not b_next!71445) b_and!185921 (not b_next!71459) (not b_next!71457) b_and!185923)
(get-model)

(declare-fun b!2462491 () Bool)

(declare-fun e!1561894 () Bool)

(declare-fun inv!15 (TokenValue!4645) Bool)

(assert (=> b!2462491 (= e!1561894 (inv!15 (value!142487 t2!67)))))

(declare-fun b!2462492 () Bool)

(declare-fun res!1043465 () Bool)

(assert (=> b!2462492 (=> res!1043465 e!1561894)))

(assert (=> b!2462492 (= res!1043465 (not ((_ is IntegerValue!13937) (value!142487 t2!67))))))

(declare-fun e!1561895 () Bool)

(assert (=> b!2462492 (= e!1561895 e!1561894)))

(declare-fun b!2462493 () Bool)

(declare-fun e!1561896 () Bool)

(assert (=> b!2462493 (= e!1561896 e!1561895)))

(declare-fun c!392920 () Bool)

(assert (=> b!2462493 (= c!392920 ((_ is IntegerValue!13936) (value!142487 t2!67)))))

(declare-fun d!708821 () Bool)

(declare-fun c!392921 () Bool)

(assert (=> d!708821 (= c!392921 ((_ is IntegerValue!13935) (value!142487 t2!67)))))

(assert (=> d!708821 (= (inv!21 (value!142487 t2!67)) e!1561896)))

(declare-fun b!2462494 () Bool)

(declare-fun inv!17 (TokenValue!4645) Bool)

(assert (=> b!2462494 (= e!1561895 (inv!17 (value!142487 t2!67)))))

(declare-fun b!2462495 () Bool)

(declare-fun inv!16 (TokenValue!4645) Bool)

(assert (=> b!2462495 (= e!1561896 (inv!16 (value!142487 t2!67)))))

(assert (= (and d!708821 c!392921) b!2462495))

(assert (= (and d!708821 (not c!392921)) b!2462493))

(assert (= (and b!2462493 c!392920) b!2462494))

(assert (= (and b!2462493 (not c!392920)) b!2462492))

(assert (= (and b!2462492 (not res!1043465)) b!2462491))

(declare-fun m!2831515 () Bool)

(assert (=> b!2462491 m!2831515))

(declare-fun m!2831517 () Bool)

(assert (=> b!2462494 m!2831517))

(declare-fun m!2831519 () Bool)

(assert (=> b!2462495 m!2831519))

(assert (=> b!2462449 d!708821))

(declare-fun d!708827 () Bool)

(declare-fun res!1043470 () Bool)

(declare-fun e!1561899 () Bool)

(assert (=> d!708827 (=> (not res!1043470) (not e!1561899))))

(declare-fun isEmpty!16666 (List!28773) Bool)

(assert (=> d!708827 (= res!1043470 (not (isEmpty!16666 (originalCharacters!5225 (h!34075 l!6611)))))))

(assert (=> d!708827 (= (inv!38759 (h!34075 l!6611)) e!1561899)))

(declare-fun b!2462500 () Bool)

(declare-fun res!1043471 () Bool)

(assert (=> b!2462500 (=> (not res!1043471) (not e!1561899))))

(declare-fun list!11106 (BalanceConc!17944) List!28773)

(declare-fun dynLambda!12307 (Int TokenValue!4645) BalanceConc!17944)

(assert (=> b!2462500 (= res!1043471 (= (originalCharacters!5225 (h!34075 l!6611)) (list!11106 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))

(declare-fun b!2462501 () Bool)

(declare-fun size!22319 (List!28773) Int)

(assert (=> b!2462501 (= e!1561899 (= (size!22314 (h!34075 l!6611)) (size!22319 (originalCharacters!5225 (h!34075 l!6611)))))))

(assert (= (and d!708827 res!1043470) b!2462500))

(assert (= (and b!2462500 res!1043471) b!2462501))

(declare-fun b_lambda!75441 () Bool)

(assert (=> (not b_lambda!75441) (not b!2462500)))

(declare-fun t!208942 () Bool)

(declare-fun tb!139017 () Bool)

(assert (=> (and b!2462446 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) t!208942) tb!139017))

(declare-fun b!2462506 () Bool)

(declare-fun e!1561902 () Bool)

(declare-fun tp!784341 () Bool)

(declare-fun inv!38762 (Conc!9165) Bool)

(assert (=> b!2462506 (= e!1561902 (and (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) tp!784341))))

(declare-fun result!171602 () Bool)

(declare-fun inv!38763 (BalanceConc!17944) Bool)

(assert (=> tb!139017 (= result!171602 (and (inv!38763 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))) e!1561902))))

(assert (= tb!139017 b!2462506))

(declare-fun m!2831521 () Bool)

(assert (=> b!2462506 m!2831521))

(declare-fun m!2831523 () Bool)

(assert (=> tb!139017 m!2831523))

(assert (=> b!2462500 t!208942))

(declare-fun b_and!185933 () Bool)

(assert (= b_and!185911 (and (=> t!208942 result!171602) b_and!185933)))

(declare-fun t!208944 () Bool)

(declare-fun tb!139019 () Bool)

(assert (=> (and b!2462453 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) t!208944) tb!139019))

(declare-fun result!171606 () Bool)

(assert (= result!171606 result!171602))

(assert (=> b!2462500 t!208944))

(declare-fun b_and!185935 () Bool)

(assert (= b_and!185915 (and (=> t!208944 result!171606) b_and!185935)))

(declare-fun t!208946 () Bool)

(declare-fun tb!139021 () Bool)

(assert (=> (and b!2462465 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) t!208946) tb!139021))

(declare-fun result!171608 () Bool)

(assert (= result!171608 result!171602))

(assert (=> b!2462500 t!208946))

(declare-fun b_and!185937 () Bool)

(assert (= b_and!185919 (and (=> t!208946 result!171608) b_and!185937)))

(declare-fun tb!139023 () Bool)

(declare-fun t!208948 () Bool)

(assert (=> (and b!2462445 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) t!208948) tb!139023))

(declare-fun result!171610 () Bool)

(assert (= result!171610 result!171602))

(assert (=> b!2462500 t!208948))

(declare-fun b_and!185939 () Bool)

(assert (= b_and!185923 (and (=> t!208948 result!171610) b_and!185939)))

(declare-fun m!2831525 () Bool)

(assert (=> d!708827 m!2831525))

(declare-fun m!2831527 () Bool)

(assert (=> b!2462500 m!2831527))

(assert (=> b!2462500 m!2831527))

(declare-fun m!2831529 () Bool)

(assert (=> b!2462500 m!2831529))

(declare-fun m!2831531 () Bool)

(assert (=> b!2462501 m!2831531))

(assert (=> b!2462459 d!708827))

(declare-fun d!708829 () Bool)

(declare-fun lt!881278 () Bool)

(declare-fun e!1561932 () Bool)

(assert (=> d!708829 (= lt!881278 e!1561932)))

(declare-fun res!1043500 () Bool)

(assert (=> d!708829 (=> (not res!1043500) (not e!1561932))))

(declare-datatypes ((IArray!18339 0))(
  ( (IArray!18340 (innerList!9227 List!28774)) )
))
(declare-datatypes ((Conc!9167 0))(
  ( (Node!9167 (left!22027 Conc!9167) (right!22357 Conc!9167) (csize!18564 Int) (cheight!9378 Int)) (Leaf!13704 (xs!12147 IArray!18339) (csize!18565 Int)) (Empty!9167) )
))
(declare-datatypes ((BalanceConc!17948 0))(
  ( (BalanceConc!17949 (c!392951 Conc!9167)) )
))
(declare-fun list!11107 (BalanceConc!17948) List!28774)

(declare-datatypes ((tuple2!28214 0))(
  ( (tuple2!28215 (_1!16648 BalanceConc!17948) (_2!16648 BalanceConc!17944)) )
))
(declare-fun lex!1853 (LexerInterface!4056 List!28775 BalanceConc!17944) tuple2!28214)

(declare-fun print!1575 (LexerInterface!4056 BalanceConc!17948) BalanceConc!17944)

(declare-fun singletonSeq!1977 (Token!8388) BalanceConc!17948)

(assert (=> d!708829 (= res!1043500 (= (list!11107 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))) (list!11107 (singletonSeq!1977 t2!67))))))

(declare-fun e!1561933 () Bool)

(assert (=> d!708829 (= lt!881278 e!1561933)))

(declare-fun res!1043499 () Bool)

(assert (=> d!708829 (=> (not res!1043499) (not e!1561933))))

(declare-fun lt!881277 () tuple2!28214)

(declare-fun size!22320 (BalanceConc!17948) Int)

(assert (=> d!708829 (= res!1043499 (= (size!22320 (_1!16648 lt!881277)) 1))))

(assert (=> d!708829 (= lt!881277 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))

(assert (=> d!708829 (not (isEmpty!16663 rules!4472))))

(assert (=> d!708829 (= (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 t2!67) lt!881278)))

(declare-fun b!2462549 () Bool)

(declare-fun res!1043498 () Bool)

(assert (=> b!2462549 (=> (not res!1043498) (not e!1561933))))

(declare-fun apply!6731 (BalanceConc!17948 Int) Token!8388)

(assert (=> b!2462549 (= res!1043498 (= (apply!6731 (_1!16648 lt!881277) 0) t2!67))))

(declare-fun b!2462550 () Bool)

(declare-fun isEmpty!16667 (BalanceConc!17944) Bool)

(assert (=> b!2462550 (= e!1561933 (isEmpty!16667 (_2!16648 lt!881277)))))

(declare-fun b!2462551 () Bool)

(assert (=> b!2462551 (= e!1561932 (isEmpty!16667 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))))

(assert (= (and d!708829 res!1043499) b!2462549))

(assert (= (and b!2462549 res!1043498) b!2462550))

(assert (= (and d!708829 res!1043500) b!2462551))

(declare-fun m!2831567 () Bool)

(assert (=> d!708829 m!2831567))

(assert (=> d!708829 m!2831465))

(declare-fun m!2831569 () Bool)

(assert (=> d!708829 m!2831569))

(declare-fun m!2831571 () Bool)

(assert (=> d!708829 m!2831571))

(assert (=> d!708829 m!2831567))

(assert (=> d!708829 m!2831569))

(assert (=> d!708829 m!2831567))

(declare-fun m!2831573 () Bool)

(assert (=> d!708829 m!2831573))

(declare-fun m!2831575 () Bool)

(assert (=> d!708829 m!2831575))

(declare-fun m!2831577 () Bool)

(assert (=> d!708829 m!2831577))

(declare-fun m!2831579 () Bool)

(assert (=> b!2462549 m!2831579))

(declare-fun m!2831581 () Bool)

(assert (=> b!2462550 m!2831581))

(assert (=> b!2462551 m!2831567))

(assert (=> b!2462551 m!2831567))

(assert (=> b!2462551 m!2831569))

(assert (=> b!2462551 m!2831569))

(assert (=> b!2462551 m!2831571))

(declare-fun m!2831583 () Bool)

(assert (=> b!2462551 m!2831583))

(assert (=> b!2462448 d!708829))

(declare-fun d!708841 () Bool)

(declare-fun res!1043503 () Bool)

(declare-fun e!1561936 () Bool)

(assert (=> d!708841 (=> (not res!1043503) (not e!1561936))))

(declare-fun rulesValid!1659 (LexerInterface!4056 List!28775) Bool)

(assert (=> d!708841 (= res!1043503 (rulesValid!1659 thiss!27932 rules!4472))))

(assert (=> d!708841 (= (rulesInvariant!3556 thiss!27932 rules!4472) e!1561936)))

(declare-fun b!2462554 () Bool)

(declare-datatypes ((List!28777 0))(
  ( (Nil!28677) (Cons!28677 (h!34078 String!31521) (t!209012 List!28777)) )
))
(declare-fun noDuplicateTag!1657 (LexerInterface!4056 List!28775 List!28777) Bool)

(assert (=> b!2462554 (= e!1561936 (noDuplicateTag!1657 thiss!27932 rules!4472 Nil!28677))))

(assert (= (and d!708841 res!1043503) b!2462554))

(declare-fun m!2831585 () Bool)

(assert (=> d!708841 m!2831585))

(declare-fun m!2831587 () Bool)

(assert (=> b!2462554 m!2831587))

(assert (=> b!2462447 d!708841))

(declare-fun b!2462555 () Bool)

(declare-fun e!1561937 () Bool)

(assert (=> b!2462555 (= e!1561937 (inv!15 (value!142487 (h!34075 l!6611))))))

(declare-fun b!2462556 () Bool)

(declare-fun res!1043504 () Bool)

(assert (=> b!2462556 (=> res!1043504 e!1561937)))

(assert (=> b!2462556 (= res!1043504 (not ((_ is IntegerValue!13937) (value!142487 (h!34075 l!6611)))))))

(declare-fun e!1561938 () Bool)

(assert (=> b!2462556 (= e!1561938 e!1561937)))

(declare-fun b!2462557 () Bool)

(declare-fun e!1561939 () Bool)

(assert (=> b!2462557 (= e!1561939 e!1561938)))

(declare-fun c!392930 () Bool)

(assert (=> b!2462557 (= c!392930 ((_ is IntegerValue!13936) (value!142487 (h!34075 l!6611))))))

(declare-fun d!708843 () Bool)

(declare-fun c!392931 () Bool)

(assert (=> d!708843 (= c!392931 ((_ is IntegerValue!13935) (value!142487 (h!34075 l!6611))))))

(assert (=> d!708843 (= (inv!21 (value!142487 (h!34075 l!6611))) e!1561939)))

(declare-fun b!2462558 () Bool)

(assert (=> b!2462558 (= e!1561938 (inv!17 (value!142487 (h!34075 l!6611))))))

(declare-fun b!2462559 () Bool)

(assert (=> b!2462559 (= e!1561939 (inv!16 (value!142487 (h!34075 l!6611))))))

(assert (= (and d!708843 c!392931) b!2462559))

(assert (= (and d!708843 (not c!392931)) b!2462557))

(assert (= (and b!2462557 c!392930) b!2462558))

(assert (= (and b!2462557 (not c!392930)) b!2462556))

(assert (= (and b!2462556 (not res!1043504)) b!2462555))

(declare-fun m!2831589 () Bool)

(assert (=> b!2462555 m!2831589))

(declare-fun m!2831591 () Bool)

(assert (=> b!2462558 m!2831591))

(declare-fun m!2831593 () Bool)

(assert (=> b!2462559 m!2831593))

(assert (=> b!2462458 d!708843))

(declare-fun b!2462681 () Bool)

(declare-fun e!1562032 () Bool)

(assert (=> b!2462681 (= e!1562032 true)))

(declare-fun b!2462680 () Bool)

(declare-fun e!1562031 () Bool)

(assert (=> b!2462680 (= e!1562031 e!1562032)))

(declare-fun b!2462679 () Bool)

(declare-fun e!1562030 () Bool)

(assert (=> b!2462679 (= e!1562030 e!1562031)))

(declare-fun d!708845 () Bool)

(assert (=> d!708845 e!1562030))

(assert (= b!2462680 b!2462681))

(assert (= b!2462679 b!2462680))

(assert (= (and d!708845 ((_ is Cons!28675) rules!4472)) b!2462679))

(declare-fun order!15525 () Int)

(declare-fun order!15523 () Int)

(declare-fun lambda!93169 () Int)

(declare-fun dynLambda!12308 (Int Int) Int)

(declare-fun dynLambda!12309 (Int Int) Int)

(assert (=> b!2462681 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (h!34076 rules!4472)))) (dynLambda!12309 order!15525 lambda!93169))))

(declare-fun order!15527 () Int)

(declare-fun dynLambda!12310 (Int Int) Int)

(assert (=> b!2462681 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (h!34076 rules!4472)))) (dynLambda!12309 order!15525 lambda!93169))))

(assert (=> d!708845 true))

(declare-fun lt!881312 () Bool)

(declare-fun forall!5889 (List!28774 Int) Bool)

(assert (=> d!708845 (= lt!881312 (forall!5889 l!6611 lambda!93169))))

(declare-fun e!1562008 () Bool)

(assert (=> d!708845 (= lt!881312 e!1562008)))

(declare-fun res!1043533 () Bool)

(assert (=> d!708845 (=> res!1043533 e!1562008)))

(assert (=> d!708845 (= res!1043533 (not ((_ is Cons!28674) l!6611)))))

(assert (=> d!708845 (not (isEmpty!16663 rules!4472))))

(assert (=> d!708845 (= (rulesProduceEachTokenIndividuallyList!1372 thiss!27932 rules!4472 l!6611) lt!881312)))

(declare-fun b!2462652 () Bool)

(declare-fun e!1562009 () Bool)

(assert (=> b!2462652 (= e!1562008 e!1562009)))

(declare-fun res!1043532 () Bool)

(assert (=> b!2462652 (=> (not res!1043532) (not e!1562009))))

(assert (=> b!2462652 (= res!1043532 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 l!6611)))))

(declare-fun b!2462654 () Bool)

(assert (=> b!2462654 (= e!1562009 (rulesProduceEachTokenIndividuallyList!1372 thiss!27932 rules!4472 (t!208931 l!6611)))))

(assert (= (and d!708845 (not res!1043533)) b!2462652))

(assert (= (and b!2462652 res!1043532) b!2462654))

(declare-fun m!2831701 () Bool)

(assert (=> d!708845 m!2831701))

(assert (=> d!708845 m!2831465))

(declare-fun m!2831703 () Bool)

(assert (=> b!2462652 m!2831703))

(declare-fun m!2831705 () Bool)

(assert (=> b!2462654 m!2831705))

(assert (=> b!2462457 d!708845))

(declare-fun d!708877 () Bool)

(assert (=> d!708877 (= (inv!38755 (tag!4949 (rule!6817 t2!67))) (= (mod (str.len (value!142486 (tag!4949 (rule!6817 t2!67)))) 2) 0))))

(assert (=> b!2462456 d!708877))

(declare-fun d!708879 () Bool)

(declare-fun res!1043536 () Bool)

(declare-fun e!1562038 () Bool)

(assert (=> d!708879 (=> (not res!1043536) (not e!1562038))))

(declare-fun semiInverseModEq!1834 (Int Int) Bool)

(assert (=> d!708879 (= res!1043536 (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toValue!6315 (transformation!4459 (rule!6817 t2!67)))))))

(assert (=> d!708879 (= (inv!38758 (transformation!4459 (rule!6817 t2!67))) e!1562038)))

(declare-fun b!2462695 () Bool)

(declare-fun equivClasses!1745 (Int Int) Bool)

(assert (=> b!2462695 (= e!1562038 (equivClasses!1745 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toValue!6315 (transformation!4459 (rule!6817 t2!67)))))))

(assert (= (and d!708879 res!1043536) b!2462695))

(declare-fun m!2831707 () Bool)

(assert (=> d!708879 m!2831707))

(declare-fun m!2831709 () Bool)

(assert (=> b!2462695 m!2831709))

(assert (=> b!2462456 d!708879))

(declare-fun d!708881 () Bool)

(assert (=> d!708881 (= (inv!38755 (tag!4949 (rule!6817 t1!67))) (= (mod (str.len (value!142486 (tag!4949 (rule!6817 t1!67)))) 2) 0))))

(assert (=> b!2462455 d!708881))

(declare-fun d!708883 () Bool)

(declare-fun res!1043537 () Bool)

(declare-fun e!1562039 () Bool)

(assert (=> d!708883 (=> (not res!1043537) (not e!1562039))))

(assert (=> d!708883 (= res!1043537 (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toValue!6315 (transformation!4459 (rule!6817 t1!67)))))))

(assert (=> d!708883 (= (inv!38758 (transformation!4459 (rule!6817 t1!67))) e!1562039)))

(declare-fun b!2462696 () Bool)

(assert (=> b!2462696 (= e!1562039 (equivClasses!1745 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toValue!6315 (transformation!4459 (rule!6817 t1!67)))))))

(assert (= (and d!708883 res!1043537) b!2462696))

(declare-fun m!2831711 () Bool)

(assert (=> d!708883 m!2831711))

(declare-fun m!2831713 () Bool)

(assert (=> b!2462696 m!2831713))

(assert (=> b!2462455 d!708883))

(declare-fun d!708885 () Bool)

(assert (=> d!708885 (= (inv!38755 (tag!4949 (rule!6817 (h!34075 l!6611)))) (= (mod (str.len (value!142486 (tag!4949 (rule!6817 (h!34075 l!6611))))) 2) 0))))

(assert (=> b!2462444 d!708885))

(declare-fun d!708887 () Bool)

(declare-fun res!1043538 () Bool)

(declare-fun e!1562040 () Bool)

(assert (=> d!708887 (=> (not res!1043538) (not e!1562040))))

(assert (=> d!708887 (= res!1043538 (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611))))))))

(assert (=> d!708887 (= (inv!38758 (transformation!4459 (rule!6817 (h!34075 l!6611)))) e!1562040)))

(declare-fun b!2462697 () Bool)

(assert (=> b!2462697 (= e!1562040 (equivClasses!1745 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611))))))))

(assert (= (and d!708887 res!1043538) b!2462697))

(declare-fun m!2831715 () Bool)

(assert (=> d!708887 m!2831715))

(declare-fun m!2831717 () Bool)

(assert (=> b!2462697 m!2831717))

(assert (=> b!2462444 d!708887))

(declare-fun d!708889 () Bool)

(declare-fun lt!881315 () Token!8388)

(declare-fun contains!4893 (List!28774 Token!8388) Bool)

(assert (=> d!708889 (contains!4893 l!6611 lt!881315)))

(declare-fun e!1562046 () Token!8388)

(assert (=> d!708889 (= lt!881315 e!1562046)))

(declare-fun c!392943 () Bool)

(assert (=> d!708889 (= c!392943 (= i!1803 0))))

(declare-fun e!1562045 () Bool)

(assert (=> d!708889 e!1562045))

(declare-fun res!1043541 () Bool)

(assert (=> d!708889 (=> (not res!1043541) (not e!1562045))))

(assert (=> d!708889 (= res!1043541 (<= 0 i!1803))))

(assert (=> d!708889 (= (apply!6729 l!6611 i!1803) lt!881315)))

(declare-fun b!2462704 () Bool)

(assert (=> b!2462704 (= e!1562045 (< i!1803 (size!22315 l!6611)))))

(declare-fun b!2462705 () Bool)

(declare-fun head!5625 (List!28774) Token!8388)

(assert (=> b!2462705 (= e!1562046 (head!5625 l!6611))))

(declare-fun b!2462706 () Bool)

(declare-fun tail!3898 (List!28774) List!28774)

(assert (=> b!2462706 (= e!1562046 (apply!6729 (tail!3898 l!6611) (- i!1803 1)))))

(assert (= (and d!708889 res!1043541) b!2462704))

(assert (= (and d!708889 c!392943) b!2462705))

(assert (= (and d!708889 (not c!392943)) b!2462706))

(declare-fun m!2831719 () Bool)

(assert (=> d!708889 m!2831719))

(assert (=> b!2462704 m!2831463))

(declare-fun m!2831721 () Bool)

(assert (=> b!2462705 m!2831721))

(declare-fun m!2831723 () Bool)

(assert (=> b!2462706 m!2831723))

(assert (=> b!2462706 m!2831723))

(declare-fun m!2831725 () Bool)

(assert (=> b!2462706 m!2831725))

(assert (=> b!2462443 d!708889))

(declare-fun d!708891 () Bool)

(declare-fun lt!881317 () Bool)

(declare-fun e!1562047 () Bool)

(assert (=> d!708891 (= lt!881317 e!1562047)))

(declare-fun res!1043544 () Bool)

(assert (=> d!708891 (=> (not res!1043544) (not e!1562047))))

(assert (=> d!708891 (= res!1043544 (= (list!11107 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))) (list!11107 (singletonSeq!1977 t1!67))))))

(declare-fun e!1562048 () Bool)

(assert (=> d!708891 (= lt!881317 e!1562048)))

(declare-fun res!1043543 () Bool)

(assert (=> d!708891 (=> (not res!1043543) (not e!1562048))))

(declare-fun lt!881316 () tuple2!28214)

(assert (=> d!708891 (= res!1043543 (= (size!22320 (_1!16648 lt!881316)) 1))))

(assert (=> d!708891 (= lt!881316 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))

(assert (=> d!708891 (not (isEmpty!16663 rules!4472))))

(assert (=> d!708891 (= (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 t1!67) lt!881317)))

(declare-fun b!2462707 () Bool)

(declare-fun res!1043542 () Bool)

(assert (=> b!2462707 (=> (not res!1043542) (not e!1562048))))

(assert (=> b!2462707 (= res!1043542 (= (apply!6731 (_1!16648 lt!881316) 0) t1!67))))

(declare-fun b!2462708 () Bool)

(assert (=> b!2462708 (= e!1562048 (isEmpty!16667 (_2!16648 lt!881316)))))

(declare-fun b!2462709 () Bool)

(assert (=> b!2462709 (= e!1562047 (isEmpty!16667 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))))

(assert (= (and d!708891 res!1043543) b!2462707))

(assert (= (and b!2462707 res!1043542) b!2462708))

(assert (= (and d!708891 res!1043544) b!2462709))

(declare-fun m!2831727 () Bool)

(assert (=> d!708891 m!2831727))

(assert (=> d!708891 m!2831465))

(declare-fun m!2831729 () Bool)

(assert (=> d!708891 m!2831729))

(declare-fun m!2831731 () Bool)

(assert (=> d!708891 m!2831731))

(assert (=> d!708891 m!2831727))

(assert (=> d!708891 m!2831729))

(assert (=> d!708891 m!2831727))

(declare-fun m!2831733 () Bool)

(assert (=> d!708891 m!2831733))

(declare-fun m!2831735 () Bool)

(assert (=> d!708891 m!2831735))

(declare-fun m!2831737 () Bool)

(assert (=> d!708891 m!2831737))

(declare-fun m!2831739 () Bool)

(assert (=> b!2462707 m!2831739))

(declare-fun m!2831741 () Bool)

(assert (=> b!2462708 m!2831741))

(assert (=> b!2462709 m!2831727))

(assert (=> b!2462709 m!2831727))

(assert (=> b!2462709 m!2831729))

(assert (=> b!2462709 m!2831729))

(assert (=> b!2462709 m!2831731))

(declare-fun m!2831743 () Bool)

(assert (=> b!2462709 m!2831743))

(assert (=> b!2462454 d!708891))

(declare-fun d!708893 () Bool)

(declare-fun lt!881318 () Token!8388)

(assert (=> d!708893 (contains!4893 l!6611 lt!881318)))

(declare-fun e!1562050 () Token!8388)

(assert (=> d!708893 (= lt!881318 e!1562050)))

(declare-fun c!392944 () Bool)

(assert (=> d!708893 (= c!392944 (= (+ 1 i!1803) 0))))

(declare-fun e!1562049 () Bool)

(assert (=> d!708893 e!1562049))

(declare-fun res!1043545 () Bool)

(assert (=> d!708893 (=> (not res!1043545) (not e!1562049))))

(assert (=> d!708893 (= res!1043545 (<= 0 (+ 1 i!1803)))))

(assert (=> d!708893 (= (apply!6729 l!6611 (+ 1 i!1803)) lt!881318)))

(declare-fun b!2462710 () Bool)

(assert (=> b!2462710 (= e!1562049 (< (+ 1 i!1803) (size!22315 l!6611)))))

(declare-fun b!2462711 () Bool)

(assert (=> b!2462711 (= e!1562050 (head!5625 l!6611))))

(declare-fun b!2462712 () Bool)

(assert (=> b!2462712 (= e!1562050 (apply!6729 (tail!3898 l!6611) (- (+ 1 i!1803) 1)))))

(assert (= (and d!708893 res!1043545) b!2462710))

(assert (= (and d!708893 c!392944) b!2462711))

(assert (= (and d!708893 (not c!392944)) b!2462712))

(declare-fun m!2831745 () Bool)

(assert (=> d!708893 m!2831745))

(assert (=> b!2462710 m!2831463))

(assert (=> b!2462711 m!2831721))

(assert (=> b!2462712 m!2831723))

(assert (=> b!2462712 m!2831723))

(declare-fun m!2831747 () Bool)

(assert (=> b!2462712 m!2831747))

(assert (=> b!2462464 d!708893))

(declare-fun d!708895 () Bool)

(declare-fun res!1043550 () Bool)

(declare-fun e!1562055 () Bool)

(assert (=> d!708895 (=> res!1043550 e!1562055)))

(assert (=> d!708895 (= res!1043550 (or (not ((_ is Cons!28674) l!6611)) (not ((_ is Cons!28674) (t!208931 l!6611)))))))

(assert (=> d!708895 (= (tokensListTwoByTwoPredicateSeparableList!595 thiss!27932 l!6611 rules!4472) e!1562055)))

(declare-fun b!2462717 () Bool)

(declare-fun e!1562056 () Bool)

(assert (=> b!2462717 (= e!1562055 e!1562056)))

(declare-fun res!1043551 () Bool)

(assert (=> b!2462717 (=> (not res!1043551) (not e!1562056))))

(declare-fun separableTokensPredicate!836 (LexerInterface!4056 Token!8388 Token!8388 List!28775) Bool)

(assert (=> b!2462717 (= res!1043551 (separableTokensPredicate!836 thiss!27932 (h!34075 l!6611) (h!34075 (t!208931 l!6611)) rules!4472))))

(declare-datatypes ((Unit!42006 0))(
  ( (Unit!42007) )
))
(declare-fun lt!881337 () Unit!42006)

(declare-fun Unit!42008 () Unit!42006)

(assert (=> b!2462717 (= lt!881337 Unit!42008)))

(declare-fun size!22321 (BalanceConc!17944) Int)

(declare-fun charsOf!2813 (Token!8388) BalanceConc!17944)

(assert (=> b!2462717 (> (size!22321 (charsOf!2813 (h!34075 (t!208931 l!6611)))) 0)))

(declare-fun lt!881336 () Unit!42006)

(declare-fun Unit!42009 () Unit!42006)

(assert (=> b!2462717 (= lt!881336 Unit!42009)))

(assert (=> b!2462717 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 l!6611)))))

(declare-fun lt!881339 () Unit!42006)

(declare-fun Unit!42010 () Unit!42006)

(assert (=> b!2462717 (= lt!881339 Unit!42010)))

(assert (=> b!2462717 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 l!6611))))

(declare-fun lt!881338 () Unit!42006)

(declare-fun lt!881335 () Unit!42006)

(assert (=> b!2462717 (= lt!881338 lt!881335)))

(assert (=> b!2462717 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 l!6611)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 (LexerInterface!4056 List!28775 List!28774 Token!8388) Unit!42006)

(assert (=> b!2462717 (= lt!881335 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 thiss!27932 rules!4472 l!6611 (h!34075 (t!208931 l!6611))))))

(declare-fun lt!881334 () Unit!42006)

(declare-fun lt!881333 () Unit!42006)

(assert (=> b!2462717 (= lt!881334 lt!881333)))

(assert (=> b!2462717 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 l!6611))))

(assert (=> b!2462717 (= lt!881333 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 thiss!27932 rules!4472 l!6611 (h!34075 l!6611)))))

(declare-fun b!2462718 () Bool)

(assert (=> b!2462718 (= e!1562056 (tokensListTwoByTwoPredicateSeparableList!595 thiss!27932 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))) rules!4472))))

(assert (= (and d!708895 (not res!1043550)) b!2462717))

(assert (= (and b!2462717 res!1043551) b!2462718))

(assert (=> b!2462717 m!2831703))

(declare-fun m!2831749 () Bool)

(assert (=> b!2462717 m!2831749))

(declare-fun m!2831751 () Bool)

(assert (=> b!2462717 m!2831751))

(declare-fun m!2831753 () Bool)

(assert (=> b!2462717 m!2831753))

(declare-fun m!2831755 () Bool)

(assert (=> b!2462717 m!2831755))

(declare-fun m!2831757 () Bool)

(assert (=> b!2462717 m!2831757))

(assert (=> b!2462717 m!2831751))

(declare-fun m!2831759 () Bool)

(assert (=> b!2462717 m!2831759))

(declare-fun m!2831761 () Bool)

(assert (=> b!2462718 m!2831761))

(assert (=> b!2462463 d!708895))

(declare-fun d!708897 () Bool)

(declare-fun lt!881342 () Int)

(assert (=> d!708897 (>= lt!881342 0)))

(declare-fun e!1562059 () Int)

(assert (=> d!708897 (= lt!881342 e!1562059)))

(declare-fun c!392948 () Bool)

(assert (=> d!708897 (= c!392948 ((_ is Nil!28674) l!6611))))

(assert (=> d!708897 (= (size!22315 l!6611) lt!881342)))

(declare-fun b!2462723 () Bool)

(assert (=> b!2462723 (= e!1562059 0)))

(declare-fun b!2462724 () Bool)

(assert (=> b!2462724 (= e!1562059 (+ 1 (size!22315 (t!208931 l!6611))))))

(assert (= (and d!708897 c!392948) b!2462723))

(assert (= (and d!708897 (not c!392948)) b!2462724))

(declare-fun m!2831763 () Bool)

(assert (=> b!2462724 m!2831763))

(assert (=> b!2462452 d!708897))

(declare-fun d!708899 () Bool)

(assert (=> d!708899 (= (isEmpty!16663 rules!4472) ((_ is Nil!28675) rules!4472))))

(assert (=> b!2462451 d!708899))

(declare-fun d!708901 () Bool)

(assert (=> d!708901 (= (inv!38755 (tag!4949 (h!34076 rules!4472))) (= (mod (str.len (value!142486 (tag!4949 (h!34076 rules!4472)))) 2) 0))))

(assert (=> b!2462462 d!708901))

(declare-fun d!708903 () Bool)

(declare-fun res!1043552 () Bool)

(declare-fun e!1562060 () Bool)

(assert (=> d!708903 (=> (not res!1043552) (not e!1562060))))

(assert (=> d!708903 (= res!1043552 (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toValue!6315 (transformation!4459 (h!34076 rules!4472)))))))

(assert (=> d!708903 (= (inv!38758 (transformation!4459 (h!34076 rules!4472))) e!1562060)))

(declare-fun b!2462725 () Bool)

(assert (=> b!2462725 (= e!1562060 (equivClasses!1745 (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toValue!6315 (transformation!4459 (h!34076 rules!4472)))))))

(assert (= (and d!708903 res!1043552) b!2462725))

(declare-fun m!2831765 () Bool)

(assert (=> d!708903 m!2831765))

(declare-fun m!2831767 () Bool)

(assert (=> b!2462725 m!2831767))

(assert (=> b!2462462 d!708903))

(declare-fun b!2462726 () Bool)

(declare-fun e!1562061 () Bool)

(assert (=> b!2462726 (= e!1562061 (inv!15 (value!142487 t1!67)))))

(declare-fun b!2462727 () Bool)

(declare-fun res!1043553 () Bool)

(assert (=> b!2462727 (=> res!1043553 e!1562061)))

(assert (=> b!2462727 (= res!1043553 (not ((_ is IntegerValue!13937) (value!142487 t1!67))))))

(declare-fun e!1562062 () Bool)

(assert (=> b!2462727 (= e!1562062 e!1562061)))

(declare-fun b!2462728 () Bool)

(declare-fun e!1562063 () Bool)

(assert (=> b!2462728 (= e!1562063 e!1562062)))

(declare-fun c!392949 () Bool)

(assert (=> b!2462728 (= c!392949 ((_ is IntegerValue!13936) (value!142487 t1!67)))))

(declare-fun d!708905 () Bool)

(declare-fun c!392950 () Bool)

(assert (=> d!708905 (= c!392950 ((_ is IntegerValue!13935) (value!142487 t1!67)))))

(assert (=> d!708905 (= (inv!21 (value!142487 t1!67)) e!1562063)))

(declare-fun b!2462729 () Bool)

(assert (=> b!2462729 (= e!1562062 (inv!17 (value!142487 t1!67)))))

(declare-fun b!2462730 () Bool)

(assert (=> b!2462730 (= e!1562063 (inv!16 (value!142487 t1!67)))))

(assert (= (and d!708905 c!392950) b!2462730))

(assert (= (and d!708905 (not c!392950)) b!2462728))

(assert (= (and b!2462728 c!392949) b!2462729))

(assert (= (and b!2462728 (not c!392949)) b!2462727))

(assert (= (and b!2462727 (not res!1043553)) b!2462726))

(declare-fun m!2831769 () Bool)

(assert (=> b!2462726 m!2831769))

(declare-fun m!2831771 () Bool)

(assert (=> b!2462729 m!2831771))

(declare-fun m!2831773 () Bool)

(assert (=> b!2462730 m!2831773))

(assert (=> b!2462461 d!708905))

(declare-fun d!708907 () Bool)

(declare-fun res!1043554 () Bool)

(declare-fun e!1562064 () Bool)

(assert (=> d!708907 (=> (not res!1043554) (not e!1562064))))

(assert (=> d!708907 (= res!1043554 (not (isEmpty!16666 (originalCharacters!5225 t2!67))))))

(assert (=> d!708907 (= (inv!38759 t2!67) e!1562064)))

(declare-fun b!2462731 () Bool)

(declare-fun res!1043555 () Bool)

(assert (=> b!2462731 (=> (not res!1043555) (not e!1562064))))

(assert (=> b!2462731 (= res!1043555 (= (originalCharacters!5225 t2!67) (list!11106 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))

(declare-fun b!2462732 () Bool)

(assert (=> b!2462732 (= e!1562064 (= (size!22314 t2!67) (size!22319 (originalCharacters!5225 t2!67))))))

(assert (= (and d!708907 res!1043554) b!2462731))

(assert (= (and b!2462731 res!1043555) b!2462732))

(declare-fun b_lambda!75453 () Bool)

(assert (=> (not b_lambda!75453) (not b!2462731)))

(declare-fun t!208985 () Bool)

(declare-fun tb!139053 () Bool)

(assert (=> (and b!2462446 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) t!208985) tb!139053))

(declare-fun b!2462733 () Bool)

(declare-fun e!1562065 () Bool)

(declare-fun tp!784406 () Bool)

(assert (=> b!2462733 (= e!1562065 (and (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) tp!784406))))

(declare-fun result!171648 () Bool)

(assert (=> tb!139053 (= result!171648 (and (inv!38763 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))) e!1562065))))

(assert (= tb!139053 b!2462733))

(declare-fun m!2831775 () Bool)

(assert (=> b!2462733 m!2831775))

(declare-fun m!2831777 () Bool)

(assert (=> tb!139053 m!2831777))

(assert (=> b!2462731 t!208985))

(declare-fun b_and!185965 () Bool)

(assert (= b_and!185933 (and (=> t!208985 result!171648) b_and!185965)))

(declare-fun t!208987 () Bool)

(declare-fun tb!139055 () Bool)

(assert (=> (and b!2462453 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) t!208987) tb!139055))

(declare-fun result!171650 () Bool)

(assert (= result!171650 result!171648))

(assert (=> b!2462731 t!208987))

(declare-fun b_and!185967 () Bool)

(assert (= b_and!185935 (and (=> t!208987 result!171650) b_and!185967)))

(declare-fun t!208989 () Bool)

(declare-fun tb!139057 () Bool)

(assert (=> (and b!2462465 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) t!208989) tb!139057))

(declare-fun result!171652 () Bool)

(assert (= result!171652 result!171648))

(assert (=> b!2462731 t!208989))

(declare-fun b_and!185969 () Bool)

(assert (= b_and!185937 (and (=> t!208989 result!171652) b_and!185969)))

(declare-fun tb!139059 () Bool)

(declare-fun t!208991 () Bool)

(assert (=> (and b!2462445 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) t!208991) tb!139059))

(declare-fun result!171654 () Bool)

(assert (= result!171654 result!171648))

(assert (=> b!2462731 t!208991))

(declare-fun b_and!185971 () Bool)

(assert (= b_and!185939 (and (=> t!208991 result!171654) b_and!185971)))

(declare-fun m!2831779 () Bool)

(assert (=> d!708907 m!2831779))

(declare-fun m!2831781 () Bool)

(assert (=> b!2462731 m!2831781))

(assert (=> b!2462731 m!2831781))

(declare-fun m!2831783 () Bool)

(assert (=> b!2462731 m!2831783))

(declare-fun m!2831785 () Bool)

(assert (=> b!2462732 m!2831785))

(assert (=> start!240130 d!708907))

(declare-fun d!708909 () Bool)

(declare-fun res!1043556 () Bool)

(declare-fun e!1562066 () Bool)

(assert (=> d!708909 (=> (not res!1043556) (not e!1562066))))

(assert (=> d!708909 (= res!1043556 (not (isEmpty!16666 (originalCharacters!5225 t1!67))))))

(assert (=> d!708909 (= (inv!38759 t1!67) e!1562066)))

(declare-fun b!2462734 () Bool)

(declare-fun res!1043557 () Bool)

(assert (=> b!2462734 (=> (not res!1043557) (not e!1562066))))

(assert (=> b!2462734 (= res!1043557 (= (originalCharacters!5225 t1!67) (list!11106 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))

(declare-fun b!2462735 () Bool)

(assert (=> b!2462735 (= e!1562066 (= (size!22314 t1!67) (size!22319 (originalCharacters!5225 t1!67))))))

(assert (= (and d!708909 res!1043556) b!2462734))

(assert (= (and b!2462734 res!1043557) b!2462735))

(declare-fun b_lambda!75455 () Bool)

(assert (=> (not b_lambda!75455) (not b!2462734)))

(declare-fun tb!139061 () Bool)

(declare-fun t!208993 () Bool)

(assert (=> (and b!2462446 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) t!208993) tb!139061))

(declare-fun b!2462736 () Bool)

(declare-fun e!1562067 () Bool)

(declare-fun tp!784407 () Bool)

(assert (=> b!2462736 (= e!1562067 (and (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) tp!784407))))

(declare-fun result!171656 () Bool)

(assert (=> tb!139061 (= result!171656 (and (inv!38763 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))) e!1562067))))

(assert (= tb!139061 b!2462736))

(declare-fun m!2831787 () Bool)

(assert (=> b!2462736 m!2831787))

(declare-fun m!2831789 () Bool)

(assert (=> tb!139061 m!2831789))

(assert (=> b!2462734 t!208993))

(declare-fun b_and!185973 () Bool)

(assert (= b_and!185965 (and (=> t!208993 result!171656) b_and!185973)))

(declare-fun t!208995 () Bool)

(declare-fun tb!139063 () Bool)

(assert (=> (and b!2462453 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) t!208995) tb!139063))

(declare-fun result!171658 () Bool)

(assert (= result!171658 result!171656))

(assert (=> b!2462734 t!208995))

(declare-fun b_and!185975 () Bool)

(assert (= b_and!185967 (and (=> t!208995 result!171658) b_and!185975)))

(declare-fun tb!139065 () Bool)

(declare-fun t!208997 () Bool)

(assert (=> (and b!2462465 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) t!208997) tb!139065))

(declare-fun result!171660 () Bool)

(assert (= result!171660 result!171656))

(assert (=> b!2462734 t!208997))

(declare-fun b_and!185977 () Bool)

(assert (= b_and!185969 (and (=> t!208997 result!171660) b_and!185977)))

(declare-fun t!208999 () Bool)

(declare-fun tb!139067 () Bool)

(assert (=> (and b!2462445 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) t!208999) tb!139067))

(declare-fun result!171662 () Bool)

(assert (= result!171662 result!171656))

(assert (=> b!2462734 t!208999))

(declare-fun b_and!185979 () Bool)

(assert (= b_and!185971 (and (=> t!208999 result!171662) b_and!185979)))

(declare-fun m!2831791 () Bool)

(assert (=> d!708909 m!2831791))

(declare-fun m!2831793 () Bool)

(assert (=> b!2462734 m!2831793))

(assert (=> b!2462734 m!2831793))

(declare-fun m!2831795 () Bool)

(assert (=> b!2462734 m!2831795))

(declare-fun m!2831797 () Bool)

(assert (=> b!2462735 m!2831797))

(assert (=> start!240130 d!708909))

(declare-fun b!2462741 () Bool)

(declare-fun e!1562070 () Bool)

(declare-fun tp_is_empty!11931 () Bool)

(declare-fun tp!784410 () Bool)

(assert (=> b!2462741 (= e!1562070 (and tp_is_empty!11931 tp!784410))))

(assert (=> b!2462449 (= tp!784323 e!1562070)))

(assert (= (and b!2462449 ((_ is Cons!28673) (originalCharacters!5225 t2!67))) b!2462741))

(declare-fun b!2462755 () Bool)

(declare-fun b_free!70765 () Bool)

(declare-fun b_next!71469 () Bool)

(assert (=> b!2462755 (= b_free!70765 (not b_next!71469))))

(declare-fun tp!784424 () Bool)

(declare-fun b_and!185981 () Bool)

(assert (=> b!2462755 (= tp!784424 b_and!185981)))

(declare-fun b_free!70767 () Bool)

(declare-fun b_next!71471 () Bool)

(assert (=> b!2462755 (= b_free!70767 (not b_next!71471))))

(declare-fun t!209001 () Bool)

(declare-fun tb!139069 () Bool)

(assert (=> (and b!2462755 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) t!209001) tb!139069))

(declare-fun result!171668 () Bool)

(assert (= result!171668 result!171602))

(assert (=> b!2462500 t!209001))

(declare-fun tb!139071 () Bool)

(declare-fun t!209003 () Bool)

(assert (=> (and b!2462755 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) t!209003) tb!139071))

(declare-fun result!171670 () Bool)

(assert (= result!171670 result!171648))

(assert (=> b!2462731 t!209003))

(declare-fun t!209005 () Bool)

(declare-fun tb!139073 () Bool)

(assert (=> (and b!2462755 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) t!209005) tb!139073))

(declare-fun result!171672 () Bool)

(assert (= result!171672 result!171656))

(assert (=> b!2462734 t!209005))

(declare-fun b_and!185983 () Bool)

(declare-fun tp!784423 () Bool)

(assert (=> b!2462755 (= tp!784423 (and (=> t!209001 result!171668) (=> t!209003 result!171670) (=> t!209005 result!171672) b_and!185983))))

(declare-fun e!1562088 () Bool)

(assert (=> b!2462459 (= tp!784325 e!1562088)))

(declare-fun e!1562085 () Bool)

(assert (=> b!2462755 (= e!1562085 (and tp!784424 tp!784423))))

(declare-fun e!1562084 () Bool)

(declare-fun tp!784425 () Bool)

(declare-fun b!2462754 () Bool)

(assert (=> b!2462754 (= e!1562084 (and tp!784425 (inv!38755 (tag!4949 (rule!6817 (h!34075 (t!208931 l!6611))))) (inv!38758 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) e!1562085))))

(declare-fun tp!784422 () Bool)

(declare-fun e!1562086 () Bool)

(declare-fun b!2462753 () Bool)

(assert (=> b!2462753 (= e!1562086 (and (inv!21 (value!142487 (h!34075 (t!208931 l!6611)))) e!1562084 tp!784422))))

(declare-fun b!2462752 () Bool)

(declare-fun tp!784421 () Bool)

(assert (=> b!2462752 (= e!1562088 (and (inv!38759 (h!34075 (t!208931 l!6611))) e!1562086 tp!784421))))

(assert (= b!2462754 b!2462755))

(assert (= b!2462753 b!2462754))

(assert (= b!2462752 b!2462753))

(assert (= (and b!2462459 ((_ is Cons!28674) (t!208931 l!6611))) b!2462752))

(declare-fun m!2831799 () Bool)

(assert (=> b!2462754 m!2831799))

(declare-fun m!2831801 () Bool)

(assert (=> b!2462754 m!2831801))

(declare-fun m!2831803 () Bool)

(assert (=> b!2462753 m!2831803))

(declare-fun m!2831805 () Bool)

(assert (=> b!2462752 m!2831805))

(declare-fun b!2462756 () Bool)

(declare-fun e!1562089 () Bool)

(declare-fun tp!784426 () Bool)

(assert (=> b!2462756 (= e!1562089 (and tp_is_empty!11931 tp!784426))))

(assert (=> b!2462458 (= tp!784324 e!1562089)))

(assert (= (and b!2462458 ((_ is Cons!28673) (originalCharacters!5225 (h!34075 l!6611)))) b!2462756))

(declare-fun b!2462768 () Bool)

(declare-fun e!1562092 () Bool)

(declare-fun tp!784439 () Bool)

(declare-fun tp!784441 () Bool)

(assert (=> b!2462768 (= e!1562092 (and tp!784439 tp!784441))))

(declare-fun b!2462769 () Bool)

(declare-fun tp!784440 () Bool)

(assert (=> b!2462769 (= e!1562092 tp!784440)))

(declare-fun b!2462767 () Bool)

(assert (=> b!2462767 (= e!1562092 tp_is_empty!11931)))

(declare-fun b!2462770 () Bool)

(declare-fun tp!784437 () Bool)

(declare-fun tp!784438 () Bool)

(assert (=> b!2462770 (= e!1562092 (and tp!784437 tp!784438))))

(assert (=> b!2462456 (= tp!784330 e!1562092)))

(assert (= (and b!2462456 ((_ is ElementMatch!7247) (regex!4459 (rule!6817 t2!67)))) b!2462767))

(assert (= (and b!2462456 ((_ is Concat!11893) (regex!4459 (rule!6817 t2!67)))) b!2462768))

(assert (= (and b!2462456 ((_ is Star!7247) (regex!4459 (rule!6817 t2!67)))) b!2462769))

(assert (= (and b!2462456 ((_ is Union!7247) (regex!4459 (rule!6817 t2!67)))) b!2462770))

(declare-fun b!2462772 () Bool)

(declare-fun e!1562093 () Bool)

(declare-fun tp!784444 () Bool)

(declare-fun tp!784446 () Bool)

(assert (=> b!2462772 (= e!1562093 (and tp!784444 tp!784446))))

(declare-fun b!2462773 () Bool)

(declare-fun tp!784445 () Bool)

(assert (=> b!2462773 (= e!1562093 tp!784445)))

(declare-fun b!2462771 () Bool)

(assert (=> b!2462771 (= e!1562093 tp_is_empty!11931)))

(declare-fun b!2462774 () Bool)

(declare-fun tp!784442 () Bool)

(declare-fun tp!784443 () Bool)

(assert (=> b!2462774 (= e!1562093 (and tp!784442 tp!784443))))

(assert (=> b!2462455 (= tp!784335 e!1562093)))

(assert (= (and b!2462455 ((_ is ElementMatch!7247) (regex!4459 (rule!6817 t1!67)))) b!2462771))

(assert (= (and b!2462455 ((_ is Concat!11893) (regex!4459 (rule!6817 t1!67)))) b!2462772))

(assert (= (and b!2462455 ((_ is Star!7247) (regex!4459 (rule!6817 t1!67)))) b!2462773))

(assert (= (and b!2462455 ((_ is Union!7247) (regex!4459 (rule!6817 t1!67)))) b!2462774))

(declare-fun b!2462776 () Bool)

(declare-fun e!1562094 () Bool)

(declare-fun tp!784449 () Bool)

(declare-fun tp!784451 () Bool)

(assert (=> b!2462776 (= e!1562094 (and tp!784449 tp!784451))))

(declare-fun b!2462777 () Bool)

(declare-fun tp!784450 () Bool)

(assert (=> b!2462777 (= e!1562094 tp!784450)))

(declare-fun b!2462775 () Bool)

(assert (=> b!2462775 (= e!1562094 tp_is_empty!11931)))

(declare-fun b!2462778 () Bool)

(declare-fun tp!784447 () Bool)

(declare-fun tp!784448 () Bool)

(assert (=> b!2462778 (= e!1562094 (and tp!784447 tp!784448))))

(assert (=> b!2462444 (= tp!784327 e!1562094)))

(assert (= (and b!2462444 ((_ is ElementMatch!7247) (regex!4459 (rule!6817 (h!34075 l!6611))))) b!2462775))

(assert (= (and b!2462444 ((_ is Concat!11893) (regex!4459 (rule!6817 (h!34075 l!6611))))) b!2462776))

(assert (= (and b!2462444 ((_ is Star!7247) (regex!4459 (rule!6817 (h!34075 l!6611))))) b!2462777))

(assert (= (and b!2462444 ((_ is Union!7247) (regex!4459 (rule!6817 (h!34075 l!6611))))) b!2462778))

(declare-fun b!2462780 () Bool)

(declare-fun e!1562095 () Bool)

(declare-fun tp!784454 () Bool)

(declare-fun tp!784456 () Bool)

(assert (=> b!2462780 (= e!1562095 (and tp!784454 tp!784456))))

(declare-fun b!2462781 () Bool)

(declare-fun tp!784455 () Bool)

(assert (=> b!2462781 (= e!1562095 tp!784455)))

(declare-fun b!2462779 () Bool)

(assert (=> b!2462779 (= e!1562095 tp_is_empty!11931)))

(declare-fun b!2462782 () Bool)

(declare-fun tp!784452 () Bool)

(declare-fun tp!784453 () Bool)

(assert (=> b!2462782 (= e!1562095 (and tp!784452 tp!784453))))

(assert (=> b!2462462 (= tp!784334 e!1562095)))

(assert (= (and b!2462462 ((_ is ElementMatch!7247) (regex!4459 (h!34076 rules!4472)))) b!2462779))

(assert (= (and b!2462462 ((_ is Concat!11893) (regex!4459 (h!34076 rules!4472)))) b!2462780))

(assert (= (and b!2462462 ((_ is Star!7247) (regex!4459 (h!34076 rules!4472)))) b!2462781))

(assert (= (and b!2462462 ((_ is Union!7247) (regex!4459 (h!34076 rules!4472)))) b!2462782))

(declare-fun b!2462783 () Bool)

(declare-fun e!1562096 () Bool)

(declare-fun tp!784457 () Bool)

(assert (=> b!2462783 (= e!1562096 (and tp_is_empty!11931 tp!784457))))

(assert (=> b!2462461 (= tp!784331 e!1562096)))

(assert (= (and b!2462461 ((_ is Cons!28673) (originalCharacters!5225 t1!67))) b!2462783))

(declare-fun b!2462794 () Bool)

(declare-fun b_free!70769 () Bool)

(declare-fun b_next!71473 () Bool)

(assert (=> b!2462794 (= b_free!70769 (not b_next!71473))))

(declare-fun tp!784469 () Bool)

(declare-fun b_and!185985 () Bool)

(assert (=> b!2462794 (= tp!784469 b_and!185985)))

(declare-fun b_free!70771 () Bool)

(declare-fun b_next!71475 () Bool)

(assert (=> b!2462794 (= b_free!70771 (not b_next!71475))))

(declare-fun tb!139075 () Bool)

(declare-fun t!209007 () Bool)

(assert (=> (and b!2462794 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) t!209007) tb!139075))

(declare-fun result!171678 () Bool)

(assert (= result!171678 result!171602))

(assert (=> b!2462500 t!209007))

(declare-fun tb!139077 () Bool)

(declare-fun t!209009 () Bool)

(assert (=> (and b!2462794 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) t!209009) tb!139077))

(declare-fun result!171680 () Bool)

(assert (= result!171680 result!171648))

(assert (=> b!2462731 t!209009))

(declare-fun tb!139079 () Bool)

(declare-fun t!209011 () Bool)

(assert (=> (and b!2462794 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) t!209011) tb!139079))

(declare-fun result!171682 () Bool)

(assert (= result!171682 result!171656))

(assert (=> b!2462734 t!209011))

(declare-fun tp!784468 () Bool)

(declare-fun b_and!185987 () Bool)

(assert (=> b!2462794 (= tp!784468 (and (=> t!209007 result!171678) (=> t!209009 result!171680) (=> t!209011 result!171682) b_and!185987))))

(declare-fun e!1562107 () Bool)

(assert (=> b!2462794 (= e!1562107 (and tp!784469 tp!784468))))

(declare-fun b!2462793 () Bool)

(declare-fun e!1562105 () Bool)

(declare-fun tp!784466 () Bool)

(assert (=> b!2462793 (= e!1562105 (and tp!784466 (inv!38755 (tag!4949 (h!34076 (t!208932 rules!4472)))) (inv!38758 (transformation!4459 (h!34076 (t!208932 rules!4472)))) e!1562107))))

(declare-fun b!2462792 () Bool)

(declare-fun e!1562106 () Bool)

(declare-fun tp!784467 () Bool)

(assert (=> b!2462792 (= e!1562106 (and e!1562105 tp!784467))))

(assert (=> b!2462450 (= tp!784329 e!1562106)))

(assert (= b!2462793 b!2462794))

(assert (= b!2462792 b!2462793))

(assert (= (and b!2462450 ((_ is Cons!28675) (t!208932 rules!4472))) b!2462792))

(declare-fun m!2831807 () Bool)

(assert (=> b!2462793 m!2831807))

(declare-fun m!2831809 () Bool)

(assert (=> b!2462793 m!2831809))

(declare-fun b_lambda!75457 () Bool)

(assert (= b_lambda!75441 (or (and b!2462794 b_free!70771 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2462453 b_free!70747 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2462465 b_free!70751 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2462446 b_free!70743) (and b!2462755 b_free!70767 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2462445 b_free!70755 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) b_lambda!75457)))

(declare-fun b_lambda!75459 () Bool)

(assert (= b_lambda!75455 (or (and b!2462755 b_free!70767 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67))))) (and b!2462794 b_free!70771 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 t1!67))))) (and b!2462465 b_free!70751 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 t1!67))))) (and b!2462453 b_free!70747 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 t1!67))))) (and b!2462445 b_free!70755) (and b!2462446 b_free!70743 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 t1!67))))) b_lambda!75459)))

(declare-fun b_lambda!75461 () Bool)

(assert (= b_lambda!75453 (or (and b!2462794 b_free!70771 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 t2!67))))) (and b!2462446 b_free!70743 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 t2!67))))) (and b!2462755 b_free!70767 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67))))) (and b!2462445 b_free!70755 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 t2!67))))) (and b!2462453 b_free!70747 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 t2!67))))) (and b!2462465 b_free!70751) b_lambda!75461)))

(check-sat (not b!2462558) (not b!2462732) (not d!708845) (not b!2462494) (not b!2462780) (not b!2462793) tp_is_empty!11931 (not d!708841) (not b!2462724) (not b!2462695) (not b!2462712) (not b!2462652) (not b!2462501) (not b!2462550) (not d!708893) (not b_next!71453) (not b!2462726) (not b!2462754) (not b!2462753) (not b_next!71447) (not b_next!71445) (not d!708887) (not b!2462710) (not b!2462777) (not b!2462654) (not b_next!71473) (not tb!139061) (not b_lambda!75461) (not b_lambda!75457) (not d!708829) (not b!2462730) b_and!185985 b_and!185913 (not b!2462774) (not b!2462718) (not b!2462709) (not b_next!71475) (not b!2462711) (not tb!139053) b_and!185921 (not b!2462725) (not b_next!71459) (not b!2462705) (not b!2462733) (not b!2462770) (not b!2462756) b_and!185983 (not b!2462752) (not b!2462731) (not b!2462559) (not d!708903) (not b!2462741) b_and!185979 (not b!2462772) (not b_next!71449) (not b!2462735) (not b_next!71451) b_and!185981 (not b!2462783) (not b!2462679) (not b!2462776) (not tb!139017) (not b!2462506) (not b_next!71469) (not b!2462554) (not d!708889) (not b!2462708) (not b!2462696) (not b!2462555) (not b_lambda!75459) (not b!2462769) (not d!708827) (not b_next!71471) (not b!2462734) (not b!2462495) b_and!185975 (not b!2462706) b_and!185977 (not b!2462773) (not b!2462792) (not d!708879) (not b!2462704) b_and!185909 (not b!2462782) (not b_next!71457) (not d!708891) (not b!2462697) (not d!708883) (not b!2462707) (not b!2462500) b_and!185917 (not b!2462551) (not b!2462549) (not b!2462717) (not b!2462781) (not b!2462491) (not b!2462729) (not b_next!71455) b_and!185973 (not b!2462778) (not b!2462736) (not b!2462768) (not d!708909) (not d!708907) b_and!185987)
(check-sat (not b_next!71453) (not b_next!71473) b_and!185985 b_and!185983 (not b_next!71451) b_and!185981 (not b_next!71469) b_and!185977 b_and!185909 (not b_next!71457) b_and!185917 b_and!185987 (not b_next!71447) (not b_next!71445) b_and!185913 (not b_next!71475) b_and!185921 (not b_next!71459) (not b_next!71449) b_and!185979 (not b_next!71471) b_and!185975 (not b_next!71455) b_and!185973)
(get-model)

(declare-fun d!708925 () Bool)

(declare-fun list!11109 (Conc!9167) List!28774)

(assert (=> d!708925 (= (list!11107 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))) (list!11109 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(declare-fun bs!466329 () Bool)

(assert (= bs!466329 d!708925))

(declare-fun m!2831833 () Bool)

(assert (=> bs!466329 m!2831833))

(assert (=> d!708829 d!708925))

(declare-fun d!708927 () Bool)

(assert (=> d!708927 (= (list!11107 (singletonSeq!1977 t2!67)) (list!11109 (c!392951 (singletonSeq!1977 t2!67))))))

(declare-fun bs!466330 () Bool)

(assert (= bs!466330 d!708927))

(declare-fun m!2831835 () Bool)

(assert (=> bs!466330 m!2831835))

(assert (=> d!708829 d!708927))

(declare-fun b!2462835 () Bool)

(declare-fun res!1043589 () Bool)

(declare-fun e!1562135 () Bool)

(assert (=> b!2462835 (=> (not res!1043589) (not e!1562135))))

(declare-fun lt!881355 () tuple2!28214)

(declare-datatypes ((tuple2!28218 0))(
  ( (tuple2!28219 (_1!16650 List!28774) (_2!16650 List!28773)) )
))
(declare-fun lexList!1146 (LexerInterface!4056 List!28775 List!28773) tuple2!28218)

(assert (=> b!2462835 (= res!1043589 (= (list!11107 (_1!16648 lt!881355)) (_1!16650 (lexList!1146 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(declare-fun b!2462836 () Bool)

(assert (=> b!2462836 (= e!1562135 (= (list!11106 (_2!16648 lt!881355)) (_2!16650 (lexList!1146 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(declare-fun b!2462837 () Bool)

(declare-fun e!1562134 () Bool)

(declare-fun e!1562136 () Bool)

(assert (=> b!2462837 (= e!1562134 e!1562136)))

(declare-fun res!1043587 () Bool)

(assert (=> b!2462837 (= res!1043587 (< (size!22321 (_2!16648 lt!881355)) (size!22321 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))

(assert (=> b!2462837 (=> (not res!1043587) (not e!1562136))))

(declare-fun d!708929 () Bool)

(assert (=> d!708929 e!1562135))

(declare-fun res!1043588 () Bool)

(assert (=> d!708929 (=> (not res!1043588) (not e!1562135))))

(assert (=> d!708929 (= res!1043588 e!1562134)))

(declare-fun c!392962 () Bool)

(assert (=> d!708929 (= c!392962 (> (size!22320 (_1!16648 lt!881355)) 0))))

(declare-fun lexTailRecV2!821 (LexerInterface!4056 List!28775 BalanceConc!17944 BalanceConc!17944 BalanceConc!17944 BalanceConc!17948) tuple2!28214)

(assert (=> d!708929 (= lt!881355 (lexTailRecV2!821 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)) (BalanceConc!17945 Empty!9165) (print!1575 thiss!27932 (singletonSeq!1977 t2!67)) (BalanceConc!17949 Empty!9167)))))

(assert (=> d!708929 (= (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))) lt!881355)))

(declare-fun b!2462838 () Bool)

(assert (=> b!2462838 (= e!1562134 (= (_2!16648 lt!881355) (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))

(declare-fun b!2462839 () Bool)

(declare-fun isEmpty!16669 (BalanceConc!17948) Bool)

(assert (=> b!2462839 (= e!1562136 (not (isEmpty!16669 (_1!16648 lt!881355))))))

(assert (= (and d!708929 c!392962) b!2462837))

(assert (= (and d!708929 (not c!392962)) b!2462838))

(assert (= (and b!2462837 res!1043587) b!2462839))

(assert (= (and d!708929 res!1043588) b!2462835))

(assert (= (and b!2462835 res!1043589) b!2462836))

(declare-fun m!2831867 () Bool)

(assert (=> b!2462837 m!2831867))

(assert (=> b!2462837 m!2831569))

(declare-fun m!2831869 () Bool)

(assert (=> b!2462837 m!2831869))

(declare-fun m!2831871 () Bool)

(assert (=> b!2462835 m!2831871))

(assert (=> b!2462835 m!2831569))

(declare-fun m!2831873 () Bool)

(assert (=> b!2462835 m!2831873))

(assert (=> b!2462835 m!2831873))

(declare-fun m!2831875 () Bool)

(assert (=> b!2462835 m!2831875))

(declare-fun m!2831877 () Bool)

(assert (=> b!2462836 m!2831877))

(assert (=> b!2462836 m!2831569))

(assert (=> b!2462836 m!2831873))

(assert (=> b!2462836 m!2831873))

(assert (=> b!2462836 m!2831875))

(declare-fun m!2831879 () Bool)

(assert (=> d!708929 m!2831879))

(assert (=> d!708929 m!2831569))

(assert (=> d!708929 m!2831569))

(declare-fun m!2831881 () Bool)

(assert (=> d!708929 m!2831881))

(declare-fun m!2831883 () Bool)

(assert (=> b!2462839 m!2831883))

(assert (=> d!708829 d!708929))

(declare-fun d!708937 () Bool)

(declare-fun e!1562139 () Bool)

(assert (=> d!708937 e!1562139))

(declare-fun res!1043592 () Bool)

(assert (=> d!708937 (=> (not res!1043592) (not e!1562139))))

(declare-fun lt!881360 () BalanceConc!17948)

(assert (=> d!708937 (= res!1043592 (= (list!11107 lt!881360) (Cons!28674 t2!67 Nil!28674)))))

(declare-fun singleton!890 (Token!8388) BalanceConc!17948)

(assert (=> d!708937 (= lt!881360 (singleton!890 t2!67))))

(assert (=> d!708937 (= (singletonSeq!1977 t2!67) lt!881360)))

(declare-fun b!2462842 () Bool)

(declare-fun isBalanced!2798 (Conc!9167) Bool)

(assert (=> b!2462842 (= e!1562139 (isBalanced!2798 (c!392951 lt!881360)))))

(assert (= (and d!708937 res!1043592) b!2462842))

(declare-fun m!2831887 () Bool)

(assert (=> d!708937 m!2831887))

(declare-fun m!2831889 () Bool)

(assert (=> d!708937 m!2831889))

(declare-fun m!2831891 () Bool)

(assert (=> b!2462842 m!2831891))

(assert (=> d!708829 d!708937))

(declare-fun d!708939 () Bool)

(declare-fun lt!881364 () Int)

(assert (=> d!708939 (= lt!881364 (size!22315 (list!11107 (_1!16648 lt!881277))))))

(declare-fun size!22323 (Conc!9167) Int)

(assert (=> d!708939 (= lt!881364 (size!22323 (c!392951 (_1!16648 lt!881277))))))

(assert (=> d!708939 (= (size!22320 (_1!16648 lt!881277)) lt!881364)))

(declare-fun bs!466333 () Bool)

(assert (= bs!466333 d!708939))

(declare-fun m!2831897 () Bool)

(assert (=> bs!466333 m!2831897))

(assert (=> bs!466333 m!2831897))

(declare-fun m!2831899 () Bool)

(assert (=> bs!466333 m!2831899))

(declare-fun m!2831901 () Bool)

(assert (=> bs!466333 m!2831901))

(assert (=> d!708829 d!708939))

(declare-fun d!708943 () Bool)

(declare-fun lt!881377 () BalanceConc!17944)

(declare-fun printList!1130 (LexerInterface!4056 List!28774) List!28773)

(assert (=> d!708943 (= (list!11106 lt!881377) (printList!1130 thiss!27932 (list!11107 (singletonSeq!1977 t2!67))))))

(declare-fun printTailRec!1081 (LexerInterface!4056 BalanceConc!17948 Int BalanceConc!17944) BalanceConc!17944)

(assert (=> d!708943 (= lt!881377 (printTailRec!1081 thiss!27932 (singletonSeq!1977 t2!67) 0 (BalanceConc!17945 Empty!9165)))))

(assert (=> d!708943 (= (print!1575 thiss!27932 (singletonSeq!1977 t2!67)) lt!881377)))

(declare-fun bs!466341 () Bool)

(assert (= bs!466341 d!708943))

(declare-fun m!2831935 () Bool)

(assert (=> bs!466341 m!2831935))

(assert (=> bs!466341 m!2831567))

(assert (=> bs!466341 m!2831573))

(assert (=> bs!466341 m!2831573))

(declare-fun m!2831937 () Bool)

(assert (=> bs!466341 m!2831937))

(assert (=> bs!466341 m!2831567))

(declare-fun m!2831939 () Bool)

(assert (=> bs!466341 m!2831939))

(assert (=> d!708829 d!708943))

(assert (=> d!708829 d!708899))

(declare-fun d!708961 () Bool)

(declare-fun lt!881378 () Token!8388)

(assert (=> d!708961 (contains!4893 (tail!3898 l!6611) lt!881378)))

(declare-fun e!1562146 () Token!8388)

(assert (=> d!708961 (= lt!881378 e!1562146)))

(declare-fun c!392963 () Bool)

(assert (=> d!708961 (= c!392963 (= (- (+ 1 i!1803) 1) 0))))

(declare-fun e!1562145 () Bool)

(assert (=> d!708961 e!1562145))

(declare-fun res!1043598 () Bool)

(assert (=> d!708961 (=> (not res!1043598) (not e!1562145))))

(assert (=> d!708961 (= res!1043598 (<= 0 (- (+ 1 i!1803) 1)))))

(assert (=> d!708961 (= (apply!6729 (tail!3898 l!6611) (- (+ 1 i!1803) 1)) lt!881378)))

(declare-fun b!2462848 () Bool)

(assert (=> b!2462848 (= e!1562145 (< (- (+ 1 i!1803) 1) (size!22315 (tail!3898 l!6611))))))

(declare-fun b!2462849 () Bool)

(assert (=> b!2462849 (= e!1562146 (head!5625 (tail!3898 l!6611)))))

(declare-fun b!2462850 () Bool)

(assert (=> b!2462850 (= e!1562146 (apply!6729 (tail!3898 (tail!3898 l!6611)) (- (- (+ 1 i!1803) 1) 1)))))

(assert (= (and d!708961 res!1043598) b!2462848))

(assert (= (and d!708961 c!392963) b!2462849))

(assert (= (and d!708961 (not c!392963)) b!2462850))

(assert (=> d!708961 m!2831723))

(declare-fun m!2831941 () Bool)

(assert (=> d!708961 m!2831941))

(assert (=> b!2462848 m!2831723))

(declare-fun m!2831943 () Bool)

(assert (=> b!2462848 m!2831943))

(assert (=> b!2462849 m!2831723))

(declare-fun m!2831945 () Bool)

(assert (=> b!2462849 m!2831945))

(assert (=> b!2462850 m!2831723))

(declare-fun m!2831947 () Bool)

(assert (=> b!2462850 m!2831947))

(assert (=> b!2462850 m!2831947))

(declare-fun m!2831949 () Bool)

(assert (=> b!2462850 m!2831949))

(assert (=> b!2462712 d!708961))

(declare-fun d!708963 () Bool)

(assert (=> d!708963 (= (tail!3898 l!6611) (t!208931 l!6611))))

(assert (=> b!2462712 d!708963))

(declare-fun d!708965 () Bool)

(declare-fun list!11110 (Conc!9165) List!28773)

(assert (=> d!708965 (= (list!11106 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))) (list!11110 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))

(declare-fun bs!466342 () Bool)

(assert (= bs!466342 d!708965))

(declare-fun m!2831951 () Bool)

(assert (=> bs!466342 m!2831951))

(assert (=> b!2462734 d!708965))

(assert (=> b!2462710 d!708897))

(declare-fun d!708967 () Bool)

(declare-fun c!392969 () Bool)

(assert (=> d!708967 (= c!392969 ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))

(declare-fun e!1562157 () Bool)

(assert (=> d!708967 (= (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) e!1562157)))

(declare-fun b!2462866 () Bool)

(declare-fun inv!38764 (Conc!9165) Bool)

(assert (=> b!2462866 (= e!1562157 (inv!38764 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))

(declare-fun b!2462867 () Bool)

(declare-fun e!1562158 () Bool)

(assert (=> b!2462867 (= e!1562157 e!1562158)))

(declare-fun res!1043604 () Bool)

(assert (=> b!2462867 (= res!1043604 (not ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(assert (=> b!2462867 (=> res!1043604 e!1562158)))

(declare-fun b!2462868 () Bool)

(declare-fun inv!38765 (Conc!9165) Bool)

(assert (=> b!2462868 (= e!1562158 (inv!38765 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))

(assert (= (and d!708967 c!392969) b!2462866))

(assert (= (and d!708967 (not c!392969)) b!2462867))

(assert (= (and b!2462867 (not res!1043604)) b!2462868))

(declare-fun m!2831959 () Bool)

(assert (=> b!2462866 m!2831959))

(declare-fun m!2831961 () Bool)

(assert (=> b!2462868 m!2831961))

(assert (=> b!2462733 d!708967))

(declare-fun d!708977 () Bool)

(assert (=> d!708977 true))

(declare-fun lambda!93180 () Int)

(declare-fun order!15533 () Int)

(declare-fun dynLambda!12312 (Int Int) Int)

(assert (=> d!708977 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (dynLambda!12312 order!15533 lambda!93180))))

(assert (=> d!708977 true))

(assert (=> d!708977 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (dynLambda!12312 order!15533 lambda!93180))))

(declare-fun Forall!1135 (Int) Bool)

(assert (=> d!708977 (= (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (Forall!1135 lambda!93180))))

(declare-fun bs!466347 () Bool)

(assert (= bs!466347 d!708977))

(declare-fun m!2831969 () Bool)

(assert (=> bs!466347 m!2831969))

(assert (=> d!708887 d!708977))

(declare-fun bs!466348 () Bool)

(declare-fun d!708983 () Bool)

(assert (= bs!466348 (and d!708983 d!708977)))

(declare-fun lambda!93181 () Int)

(assert (=> bs!466348 (= (and (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (= (toValue!6315 (transformation!4459 (h!34076 rules!4472))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (= lambda!93181 lambda!93180))))

(assert (=> d!708983 true))

(assert (=> d!708983 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (h!34076 rules!4472)))) (dynLambda!12312 order!15533 lambda!93181))))

(assert (=> d!708983 true))

(assert (=> d!708983 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (h!34076 rules!4472)))) (dynLambda!12312 order!15533 lambda!93181))))

(assert (=> d!708983 (= (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toValue!6315 (transformation!4459 (h!34076 rules!4472)))) (Forall!1135 lambda!93181))))

(declare-fun bs!466349 () Bool)

(assert (= bs!466349 d!708983))

(declare-fun m!2831975 () Bool)

(assert (=> bs!466349 m!2831975))

(assert (=> d!708903 d!708983))

(declare-fun d!708989 () Bool)

(declare-fun charsToBigInt!1 (List!28772) Int)

(assert (=> d!708989 (= (inv!17 (value!142487 t1!67)) (= (charsToBigInt!1 (text!32963 (value!142487 t1!67))) (value!142479 (value!142487 t1!67))))))

(declare-fun bs!466351 () Bool)

(assert (= bs!466351 d!708989))

(declare-fun m!2831999 () Bool)

(assert (=> bs!466351 m!2831999))

(assert (=> b!2462729 d!708989))

(declare-fun d!708993 () Bool)

(assert (=> d!708993 (= (isEmpty!16666 (originalCharacters!5225 t1!67)) ((_ is Nil!28673) (originalCharacters!5225 t1!67)))))

(assert (=> d!708909 d!708993))

(declare-fun d!709001 () Bool)

(declare-fun lt!881391 () Bool)

(assert (=> d!709001 (= lt!881391 (isEmpty!16666 (list!11106 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(declare-fun isEmpty!16670 (Conc!9165) Bool)

(assert (=> d!709001 (= lt!881391 (isEmpty!16670 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(assert (=> d!709001 (= (isEmpty!16667 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))) lt!881391)))

(declare-fun bs!466355 () Bool)

(assert (= bs!466355 d!709001))

(declare-fun m!2832019 () Bool)

(assert (=> bs!466355 m!2832019))

(assert (=> bs!466355 m!2832019))

(declare-fun m!2832021 () Bool)

(assert (=> bs!466355 m!2832021))

(declare-fun m!2832023 () Bool)

(assert (=> bs!466355 m!2832023))

(assert (=> b!2462551 d!709001))

(assert (=> b!2462551 d!708929))

(assert (=> b!2462551 d!708943))

(assert (=> b!2462551 d!708937))

(declare-fun b!2462894 () Bool)

(declare-fun res!1043612 () Bool)

(declare-fun e!1562170 () Bool)

(assert (=> b!2462894 (=> (not res!1043612) (not e!1562170))))

(declare-fun lt!881393 () tuple2!28214)

(assert (=> b!2462894 (= res!1043612 (= (list!11107 (_1!16648 lt!881393)) (_1!16650 (lexList!1146 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(declare-fun b!2462895 () Bool)

(assert (=> b!2462895 (= e!1562170 (= (list!11106 (_2!16648 lt!881393)) (_2!16650 (lexList!1146 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(declare-fun b!2462896 () Bool)

(declare-fun e!1562169 () Bool)

(declare-fun e!1562171 () Bool)

(assert (=> b!2462896 (= e!1562169 e!1562171)))

(declare-fun res!1043610 () Bool)

(assert (=> b!2462896 (= res!1043610 (< (size!22321 (_2!16648 lt!881393)) (size!22321 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))

(assert (=> b!2462896 (=> (not res!1043610) (not e!1562171))))

(declare-fun d!709007 () Bool)

(assert (=> d!709007 e!1562170))

(declare-fun res!1043611 () Bool)

(assert (=> d!709007 (=> (not res!1043611) (not e!1562170))))

(assert (=> d!709007 (= res!1043611 e!1562169)))

(declare-fun c!392976 () Bool)

(assert (=> d!709007 (= c!392976 (> (size!22320 (_1!16648 lt!881393)) 0))))

(assert (=> d!709007 (= lt!881393 (lexTailRecV2!821 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)) (BalanceConc!17945 Empty!9165) (print!1575 thiss!27932 (singletonSeq!1977 t1!67)) (BalanceConc!17949 Empty!9167)))))

(assert (=> d!709007 (= (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))) lt!881393)))

(declare-fun b!2462897 () Bool)

(assert (=> b!2462897 (= e!1562169 (= (_2!16648 lt!881393) (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))

(declare-fun b!2462898 () Bool)

(assert (=> b!2462898 (= e!1562171 (not (isEmpty!16669 (_1!16648 lt!881393))))))

(assert (= (and d!709007 c!392976) b!2462896))

(assert (= (and d!709007 (not c!392976)) b!2462897))

(assert (= (and b!2462896 res!1043610) b!2462898))

(assert (= (and d!709007 res!1043611) b!2462894))

(assert (= (and b!2462894 res!1043612) b!2462895))

(declare-fun m!2832031 () Bool)

(assert (=> b!2462896 m!2832031))

(assert (=> b!2462896 m!2831729))

(declare-fun m!2832033 () Bool)

(assert (=> b!2462896 m!2832033))

(declare-fun m!2832035 () Bool)

(assert (=> b!2462894 m!2832035))

(assert (=> b!2462894 m!2831729))

(declare-fun m!2832037 () Bool)

(assert (=> b!2462894 m!2832037))

(assert (=> b!2462894 m!2832037))

(declare-fun m!2832039 () Bool)

(assert (=> b!2462894 m!2832039))

(declare-fun m!2832041 () Bool)

(assert (=> b!2462895 m!2832041))

(assert (=> b!2462895 m!2831729))

(assert (=> b!2462895 m!2832037))

(assert (=> b!2462895 m!2832037))

(assert (=> b!2462895 m!2832039))

(declare-fun m!2832043 () Bool)

(assert (=> d!709007 m!2832043))

(assert (=> d!709007 m!2831729))

(assert (=> d!709007 m!2831729))

(declare-fun m!2832045 () Bool)

(assert (=> d!709007 m!2832045))

(declare-fun m!2832047 () Bool)

(assert (=> b!2462898 m!2832047))

(assert (=> d!708891 d!709007))

(declare-fun d!709011 () Bool)

(declare-fun lt!881394 () BalanceConc!17944)

(assert (=> d!709011 (= (list!11106 lt!881394) (printList!1130 thiss!27932 (list!11107 (singletonSeq!1977 t1!67))))))

(assert (=> d!709011 (= lt!881394 (printTailRec!1081 thiss!27932 (singletonSeq!1977 t1!67) 0 (BalanceConc!17945 Empty!9165)))))

(assert (=> d!709011 (= (print!1575 thiss!27932 (singletonSeq!1977 t1!67)) lt!881394)))

(declare-fun bs!466358 () Bool)

(assert (= bs!466358 d!709011))

(declare-fun m!2832051 () Bool)

(assert (=> bs!466358 m!2832051))

(assert (=> bs!466358 m!2831727))

(assert (=> bs!466358 m!2831733))

(assert (=> bs!466358 m!2831733))

(declare-fun m!2832053 () Bool)

(assert (=> bs!466358 m!2832053))

(assert (=> bs!466358 m!2831727))

(declare-fun m!2832055 () Bool)

(assert (=> bs!466358 m!2832055))

(assert (=> d!708891 d!709011))

(declare-fun d!709015 () Bool)

(declare-fun lt!881396 () Int)

(assert (=> d!709015 (= lt!881396 (size!22315 (list!11107 (_1!16648 lt!881316))))))

(assert (=> d!709015 (= lt!881396 (size!22323 (c!392951 (_1!16648 lt!881316))))))

(assert (=> d!709015 (= (size!22320 (_1!16648 lt!881316)) lt!881396)))

(declare-fun bs!466359 () Bool)

(assert (= bs!466359 d!709015))

(declare-fun m!2832057 () Bool)

(assert (=> bs!466359 m!2832057))

(assert (=> bs!466359 m!2832057))

(declare-fun m!2832059 () Bool)

(assert (=> bs!466359 m!2832059))

(declare-fun m!2832063 () Bool)

(assert (=> bs!466359 m!2832063))

(assert (=> d!708891 d!709015))

(declare-fun d!709017 () Bool)

(assert (=> d!709017 (= (list!11107 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))) (list!11109 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(declare-fun bs!466360 () Bool)

(assert (= bs!466360 d!709017))

(declare-fun m!2832067 () Bool)

(assert (=> bs!466360 m!2832067))

(assert (=> d!708891 d!709017))

(assert (=> d!708891 d!708899))

(declare-fun d!709021 () Bool)

(assert (=> d!709021 (= (list!11107 (singletonSeq!1977 t1!67)) (list!11109 (c!392951 (singletonSeq!1977 t1!67))))))

(declare-fun bs!466361 () Bool)

(assert (= bs!466361 d!709021))

(declare-fun m!2832069 () Bool)

(assert (=> bs!466361 m!2832069))

(assert (=> d!708891 d!709021))

(declare-fun d!709023 () Bool)

(declare-fun e!1562174 () Bool)

(assert (=> d!709023 e!1562174))

(declare-fun res!1043614 () Bool)

(assert (=> d!709023 (=> (not res!1043614) (not e!1562174))))

(declare-fun lt!881397 () BalanceConc!17948)

(assert (=> d!709023 (= res!1043614 (= (list!11107 lt!881397) (Cons!28674 t1!67 Nil!28674)))))

(assert (=> d!709023 (= lt!881397 (singleton!890 t1!67))))

(assert (=> d!709023 (= (singletonSeq!1977 t1!67) lt!881397)))

(declare-fun b!2462902 () Bool)

(assert (=> b!2462902 (= e!1562174 (isBalanced!2798 (c!392951 lt!881397)))))

(assert (= (and d!709023 res!1043614) b!2462902))

(declare-fun m!2832071 () Bool)

(assert (=> d!709023 m!2832071))

(declare-fun m!2832073 () Bool)

(assert (=> d!709023 m!2832073))

(declare-fun m!2832075 () Bool)

(assert (=> b!2462902 m!2832075))

(assert (=> d!708891 d!709023))

(declare-fun d!709025 () Bool)

(declare-fun c!392978 () Bool)

(assert (=> d!709025 (= c!392978 ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))

(declare-fun e!1562175 () Bool)

(assert (=> d!709025 (= (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) e!1562175)))

(declare-fun b!2462903 () Bool)

(assert (=> b!2462903 (= e!1562175 (inv!38764 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))

(declare-fun b!2462904 () Bool)

(declare-fun e!1562176 () Bool)

(assert (=> b!2462904 (= e!1562175 e!1562176)))

(declare-fun res!1043615 () Bool)

(assert (=> b!2462904 (= res!1043615 (not ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(assert (=> b!2462904 (=> res!1043615 e!1562176)))

(declare-fun b!2462905 () Bool)

(assert (=> b!2462905 (= e!1562176 (inv!38765 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))

(assert (= (and d!709025 c!392978) b!2462903))

(assert (= (and d!709025 (not c!392978)) b!2462904))

(assert (= (and b!2462904 (not res!1043615)) b!2462905))

(declare-fun m!2832077 () Bool)

(assert (=> b!2462903 m!2832077))

(declare-fun m!2832079 () Bool)

(assert (=> b!2462905 m!2832079))

(assert (=> b!2462506 d!709025))

(declare-fun d!709027 () Bool)

(declare-fun lt!881403 () Token!8388)

(assert (=> d!709027 (= lt!881403 (apply!6729 (list!11107 (_1!16648 lt!881277)) 0))))

(declare-fun apply!6733 (Conc!9167 Int) Token!8388)

(assert (=> d!709027 (= lt!881403 (apply!6733 (c!392951 (_1!16648 lt!881277)) 0))))

(declare-fun e!1562187 () Bool)

(assert (=> d!709027 e!1562187))

(declare-fun res!1043627 () Bool)

(assert (=> d!709027 (=> (not res!1043627) (not e!1562187))))

(assert (=> d!709027 (= res!1043627 (<= 0 0))))

(assert (=> d!709027 (= (apply!6731 (_1!16648 lt!881277) 0) lt!881403)))

(declare-fun b!2462917 () Bool)

(assert (=> b!2462917 (= e!1562187 (< 0 (size!22320 (_1!16648 lt!881277))))))

(assert (= (and d!709027 res!1043627) b!2462917))

(assert (=> d!709027 m!2831897))

(assert (=> d!709027 m!2831897))

(declare-fun m!2832113 () Bool)

(assert (=> d!709027 m!2832113))

(declare-fun m!2832117 () Bool)

(assert (=> d!709027 m!2832117))

(assert (=> b!2462917 m!2831577))

(assert (=> b!2462549 d!709027))

(declare-fun d!709041 () Bool)

(declare-fun lt!881406 () Int)

(assert (=> d!709041 (>= lt!881406 0)))

(declare-fun e!1562194 () Int)

(assert (=> d!709041 (= lt!881406 e!1562194)))

(declare-fun c!392981 () Bool)

(assert (=> d!709041 (= c!392981 ((_ is Nil!28673) (originalCharacters!5225 (h!34075 l!6611))))))

(assert (=> d!709041 (= (size!22319 (originalCharacters!5225 (h!34075 l!6611))) lt!881406)))

(declare-fun b!2462926 () Bool)

(assert (=> b!2462926 (= e!1562194 0)))

(declare-fun b!2462927 () Bool)

(assert (=> b!2462927 (= e!1562194 (+ 1 (size!22319 (t!208930 (originalCharacters!5225 (h!34075 l!6611))))))))

(assert (= (and d!709041 c!392981) b!2462926))

(assert (= (and d!709041 (not c!392981)) b!2462927))

(declare-fun m!2832119 () Bool)

(assert (=> b!2462927 m!2832119))

(assert (=> b!2462501 d!709041))

(declare-fun d!709043 () Bool)

(assert (=> d!709043 (= (inv!17 (value!142487 (h!34075 l!6611))) (= (charsToBigInt!1 (text!32963 (value!142487 (h!34075 l!6611)))) (value!142479 (value!142487 (h!34075 l!6611)))))))

(declare-fun bs!466366 () Bool)

(assert (= bs!466366 d!709043))

(declare-fun m!2832121 () Bool)

(assert (=> bs!466366 m!2832121))

(assert (=> b!2462558 d!709043))

(declare-fun d!709045 () Bool)

(assert (=> d!709045 true))

(declare-fun lambda!93185 () Int)

(declare-fun order!15535 () Int)

(declare-fun dynLambda!12314 (Int Int) Int)

(assert (=> d!709045 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (rule!6817 t1!67)))) (dynLambda!12314 order!15535 lambda!93185))))

(declare-fun Forall2!745 (Int) Bool)

(assert (=> d!709045 (= (equivClasses!1745 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toValue!6315 (transformation!4459 (rule!6817 t1!67)))) (Forall2!745 lambda!93185))))

(declare-fun bs!466371 () Bool)

(assert (= bs!466371 d!709045))

(declare-fun m!2832149 () Bool)

(assert (=> bs!466371 m!2832149))

(assert (=> b!2462696 d!709045))

(declare-fun b!2462938 () Bool)

(declare-fun e!1562202 () Bool)

(assert (=> b!2462938 (= e!1562202 (inv!15 (value!142487 (h!34075 (t!208931 l!6611)))))))

(declare-fun b!2462939 () Bool)

(declare-fun res!1043639 () Bool)

(assert (=> b!2462939 (=> res!1043639 e!1562202)))

(assert (=> b!2462939 (= res!1043639 (not ((_ is IntegerValue!13937) (value!142487 (h!34075 (t!208931 l!6611))))))))

(declare-fun e!1562203 () Bool)

(assert (=> b!2462939 (= e!1562203 e!1562202)))

(declare-fun b!2462940 () Bool)

(declare-fun e!1562204 () Bool)

(assert (=> b!2462940 (= e!1562204 e!1562203)))

(declare-fun c!392982 () Bool)

(assert (=> b!2462940 (= c!392982 ((_ is IntegerValue!13936) (value!142487 (h!34075 (t!208931 l!6611)))))))

(declare-fun d!709063 () Bool)

(declare-fun c!392983 () Bool)

(assert (=> d!709063 (= c!392983 ((_ is IntegerValue!13935) (value!142487 (h!34075 (t!208931 l!6611)))))))

(assert (=> d!709063 (= (inv!21 (value!142487 (h!34075 (t!208931 l!6611)))) e!1562204)))

(declare-fun b!2462941 () Bool)

(assert (=> b!2462941 (= e!1562203 (inv!17 (value!142487 (h!34075 (t!208931 l!6611)))))))

(declare-fun b!2462942 () Bool)

(assert (=> b!2462942 (= e!1562204 (inv!16 (value!142487 (h!34075 (t!208931 l!6611)))))))

(assert (= (and d!709063 c!392983) b!2462942))

(assert (= (and d!709063 (not c!392983)) b!2462940))

(assert (= (and b!2462940 c!392982) b!2462941))

(assert (= (and b!2462940 (not c!392982)) b!2462939))

(assert (= (and b!2462939 (not res!1043639)) b!2462938))

(declare-fun m!2832151 () Bool)

(assert (=> b!2462938 m!2832151))

(declare-fun m!2832153 () Bool)

(assert (=> b!2462941 m!2832153))

(declare-fun m!2832155 () Bool)

(assert (=> b!2462942 m!2832155))

(assert (=> b!2462753 d!709063))

(declare-fun d!709065 () Bool)

(declare-fun isBalanced!2799 (Conc!9165) Bool)

(assert (=> d!709065 (= (inv!38763 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))) (isBalanced!2799 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))

(declare-fun bs!466376 () Bool)

(assert (= bs!466376 d!709065))

(declare-fun m!2832165 () Bool)

(assert (=> bs!466376 m!2832165))

(assert (=> tb!139061 d!709065))

(declare-fun d!709073 () Bool)

(assert (=> d!709073 (= (list!11106 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))) (list!11110 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))

(declare-fun bs!466377 () Bool)

(assert (= bs!466377 d!709073))

(declare-fun m!2832167 () Bool)

(assert (=> bs!466377 m!2832167))

(assert (=> b!2462731 d!709073))

(declare-fun d!709075 () Bool)

(declare-fun lt!881412 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3949 (List!28774) (InoxSet Token!8388))

(assert (=> d!709075 (= lt!881412 (select (content!3949 l!6611) lt!881315))))

(declare-fun e!1562218 () Bool)

(assert (=> d!709075 (= lt!881412 e!1562218)))

(declare-fun res!1043651 () Bool)

(assert (=> d!709075 (=> (not res!1043651) (not e!1562218))))

(assert (=> d!709075 (= res!1043651 ((_ is Cons!28674) l!6611))))

(assert (=> d!709075 (= (contains!4893 l!6611 lt!881315) lt!881412)))

(declare-fun b!2462956 () Bool)

(declare-fun e!1562217 () Bool)

(assert (=> b!2462956 (= e!1562218 e!1562217)))

(declare-fun res!1043652 () Bool)

(assert (=> b!2462956 (=> res!1043652 e!1562217)))

(assert (=> b!2462956 (= res!1043652 (= (h!34075 l!6611) lt!881315))))

(declare-fun b!2462957 () Bool)

(assert (=> b!2462957 (= e!1562217 (contains!4893 (t!208931 l!6611) lt!881315))))

(assert (= (and d!709075 res!1043651) b!2462956))

(assert (= (and b!2462956 (not res!1043652)) b!2462957))

(declare-fun m!2832175 () Bool)

(assert (=> d!709075 m!2832175))

(declare-fun m!2832177 () Bool)

(assert (=> d!709075 m!2832177))

(declare-fun m!2832179 () Bool)

(assert (=> b!2462957 m!2832179))

(assert (=> d!708889 d!709075))

(declare-fun d!709079 () Bool)

(declare-fun lt!881418 () Int)

(assert (=> d!709079 (= lt!881418 (size!22319 (list!11106 (charsOf!2813 (h!34075 (t!208931 l!6611))))))))

(declare-fun size!22324 (Conc!9165) Int)

(assert (=> d!709079 (= lt!881418 (size!22324 (c!392914 (charsOf!2813 (h!34075 (t!208931 l!6611))))))))

(assert (=> d!709079 (= (size!22321 (charsOf!2813 (h!34075 (t!208931 l!6611)))) lt!881418)))

(declare-fun bs!466379 () Bool)

(assert (= bs!466379 d!709079))

(assert (=> bs!466379 m!2831751))

(declare-fun m!2832187 () Bool)

(assert (=> bs!466379 m!2832187))

(assert (=> bs!466379 m!2832187))

(declare-fun m!2832189 () Bool)

(assert (=> bs!466379 m!2832189))

(declare-fun m!2832191 () Bool)

(assert (=> bs!466379 m!2832191))

(assert (=> b!2462717 d!709079))

(declare-fun d!709083 () Bool)

(declare-fun prefixMatchZipperSequence!713 (Regex!7247 BalanceConc!17944) Bool)

(declare-fun rulesRegex!973 (LexerInterface!4056 List!28775) Regex!7247)

(declare-fun ++!7127 (BalanceConc!17944 BalanceConc!17944) BalanceConc!17944)

(declare-fun singletonSeq!1978 (C!14652) BalanceConc!17944)

(declare-fun apply!6734 (BalanceConc!17944 Int) C!14652)

(assert (=> d!709083 (= (separableTokensPredicate!836 thiss!27932 (h!34075 l!6611) (h!34075 (t!208931 l!6611)) rules!4472) (not (prefixMatchZipperSequence!713 (rulesRegex!973 thiss!27932 rules!4472) (++!7127 (charsOf!2813 (h!34075 l!6611)) (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))))))))

(declare-fun bs!466381 () Bool)

(assert (= bs!466381 d!709083))

(assert (=> bs!466381 m!2831751))

(declare-fun m!2832205 () Bool)

(assert (=> bs!466381 m!2832205))

(declare-fun m!2832207 () Bool)

(assert (=> bs!466381 m!2832207))

(declare-fun m!2832209 () Bool)

(assert (=> bs!466381 m!2832209))

(declare-fun m!2832211 () Bool)

(assert (=> bs!466381 m!2832211))

(assert (=> bs!466381 m!2832209))

(assert (=> bs!466381 m!2832207))

(declare-fun m!2832213 () Bool)

(assert (=> bs!466381 m!2832213))

(assert (=> bs!466381 m!2832211))

(assert (=> bs!466381 m!2832213))

(declare-fun m!2832215 () Bool)

(assert (=> bs!466381 m!2832215))

(assert (=> bs!466381 m!2831751))

(assert (=> bs!466381 m!2832205))

(assert (=> b!2462717 d!709083))

(declare-fun d!709087 () Bool)

(declare-fun lt!881426 () BalanceConc!17944)

(assert (=> d!709087 (= (list!11106 lt!881426) (originalCharacters!5225 (h!34075 (t!208931 l!6611))))))

(assert (=> d!709087 (= lt!881426 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611)))))))

(assert (=> d!709087 (= (charsOf!2813 (h!34075 (t!208931 l!6611))) lt!881426)))

(declare-fun b_lambda!75469 () Bool)

(assert (=> (not b_lambda!75469) (not d!709087)))

(declare-fun t!209028 () Bool)

(declare-fun tb!139093 () Bool)

(assert (=> (and b!2462446 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) t!209028) tb!139093))

(declare-fun b!2462961 () Bool)

(declare-fun e!1562221 () Bool)

(declare-fun tp!784471 () Bool)

(assert (=> b!2462961 (= e!1562221 (and (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611)))))) tp!784471))))

(declare-fun result!171696 () Bool)

(assert (=> tb!139093 (= result!171696 (and (inv!38763 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611))))) e!1562221))))

(assert (= tb!139093 b!2462961))

(declare-fun m!2832235 () Bool)

(assert (=> b!2462961 m!2832235))

(declare-fun m!2832237 () Bool)

(assert (=> tb!139093 m!2832237))

(assert (=> d!709087 t!209028))

(declare-fun b_and!186013 () Bool)

(assert (= b_and!185973 (and (=> t!209028 result!171696) b_and!186013)))

(declare-fun t!209030 () Bool)

(declare-fun tb!139095 () Bool)

(assert (=> (and b!2462453 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) t!209030) tb!139095))

(declare-fun result!171698 () Bool)

(assert (= result!171698 result!171696))

(assert (=> d!709087 t!209030))

(declare-fun b_and!186015 () Bool)

(assert (= b_and!185975 (and (=> t!209030 result!171698) b_and!186015)))

(declare-fun t!209032 () Bool)

(declare-fun tb!139097 () Bool)

(assert (=> (and b!2462794 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) t!209032) tb!139097))

(declare-fun result!171700 () Bool)

(assert (= result!171700 result!171696))

(assert (=> d!709087 t!209032))

(declare-fun b_and!186017 () Bool)

(assert (= b_and!185987 (and (=> t!209032 result!171700) b_and!186017)))

(declare-fun t!209034 () Bool)

(declare-fun tb!139099 () Bool)

(assert (=> (and b!2462755 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) t!209034) tb!139099))

(declare-fun result!171702 () Bool)

(assert (= result!171702 result!171696))

(assert (=> d!709087 t!209034))

(declare-fun b_and!186019 () Bool)

(assert (= b_and!185983 (and (=> t!209034 result!171702) b_and!186019)))

(declare-fun t!209036 () Bool)

(declare-fun tb!139101 () Bool)

(assert (=> (and b!2462465 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) t!209036) tb!139101))

(declare-fun result!171704 () Bool)

(assert (= result!171704 result!171696))

(assert (=> d!709087 t!209036))

(declare-fun b_and!186021 () Bool)

(assert (= b_and!185977 (and (=> t!209036 result!171704) b_and!186021)))

(declare-fun tb!139103 () Bool)

(declare-fun t!209038 () Bool)

(assert (=> (and b!2462445 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) t!209038) tb!139103))

(declare-fun result!171706 () Bool)

(assert (= result!171706 result!171696))

(assert (=> d!709087 t!209038))

(declare-fun b_and!186023 () Bool)

(assert (= b_and!185979 (and (=> t!209038 result!171706) b_and!186023)))

(declare-fun m!2832241 () Bool)

(assert (=> d!709087 m!2832241))

(declare-fun m!2832243 () Bool)

(assert (=> d!709087 m!2832243))

(assert (=> b!2462717 d!709087))

(declare-fun d!709093 () Bool)

(declare-fun lt!881428 () Bool)

(declare-fun e!1562222 () Bool)

(assert (=> d!709093 (= lt!881428 e!1562222)))

(declare-fun res!1043658 () Bool)

(assert (=> d!709093 (=> (not res!1043658) (not e!1562222))))

(assert (=> d!709093 (= res!1043658 (= (list!11107 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611))))))) (list!11107 (singletonSeq!1977 (h!34075 (t!208931 l!6611))))))))

(declare-fun e!1562223 () Bool)

(assert (=> d!709093 (= lt!881428 e!1562223)))

(declare-fun res!1043657 () Bool)

(assert (=> d!709093 (=> (not res!1043657) (not e!1562223))))

(declare-fun lt!881427 () tuple2!28214)

(assert (=> d!709093 (= res!1043657 (= (size!22320 (_1!16648 lt!881427)) 1))))

(assert (=> d!709093 (= lt!881427 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611))))))))

(assert (=> d!709093 (not (isEmpty!16663 rules!4472))))

(assert (=> d!709093 (= (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 l!6611))) lt!881428)))

(declare-fun b!2462962 () Bool)

(declare-fun res!1043656 () Bool)

(assert (=> b!2462962 (=> (not res!1043656) (not e!1562223))))

(assert (=> b!2462962 (= res!1043656 (= (apply!6731 (_1!16648 lt!881427) 0) (h!34075 (t!208931 l!6611))))))

(declare-fun b!2462963 () Bool)

(assert (=> b!2462963 (= e!1562223 (isEmpty!16667 (_2!16648 lt!881427)))))

(declare-fun b!2462964 () Bool)

(assert (=> b!2462964 (= e!1562222 (isEmpty!16667 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611))))))))))

(assert (= (and d!709093 res!1043657) b!2462962))

(assert (= (and b!2462962 res!1043656) b!2462963))

(assert (= (and d!709093 res!1043658) b!2462964))

(declare-fun m!2832245 () Bool)

(assert (=> d!709093 m!2832245))

(assert (=> d!709093 m!2831465))

(declare-fun m!2832247 () Bool)

(assert (=> d!709093 m!2832247))

(declare-fun m!2832249 () Bool)

(assert (=> d!709093 m!2832249))

(assert (=> d!709093 m!2832245))

(assert (=> d!709093 m!2832247))

(assert (=> d!709093 m!2832245))

(declare-fun m!2832251 () Bool)

(assert (=> d!709093 m!2832251))

(declare-fun m!2832253 () Bool)

(assert (=> d!709093 m!2832253))

(declare-fun m!2832255 () Bool)

(assert (=> d!709093 m!2832255))

(declare-fun m!2832257 () Bool)

(assert (=> b!2462962 m!2832257))

(declare-fun m!2832259 () Bool)

(assert (=> b!2462963 m!2832259))

(assert (=> b!2462964 m!2832245))

(assert (=> b!2462964 m!2832245))

(assert (=> b!2462964 m!2832247))

(assert (=> b!2462964 m!2832247))

(assert (=> b!2462964 m!2832249))

(declare-fun m!2832261 () Bool)

(assert (=> b!2462964 m!2832261))

(assert (=> b!2462717 d!709093))

(declare-fun d!709095 () Bool)

(assert (=> d!709095 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 l!6611))))

(declare-fun lt!881437 () Unit!42006)

(declare-fun choose!14566 (LexerInterface!4056 List!28775 List!28774 Token!8388) Unit!42006)

(assert (=> d!709095 (= lt!881437 (choose!14566 thiss!27932 rules!4472 l!6611 (h!34075 l!6611)))))

(assert (=> d!709095 (not (isEmpty!16663 rules!4472))))

(assert (=> d!709095 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 thiss!27932 rules!4472 l!6611 (h!34075 l!6611)) lt!881437)))

(declare-fun bs!466385 () Bool)

(assert (= bs!466385 d!709095))

(assert (=> bs!466385 m!2831703))

(declare-fun m!2832269 () Bool)

(assert (=> bs!466385 m!2832269))

(assert (=> bs!466385 m!2831465))

(assert (=> b!2462717 d!709095))

(declare-fun d!709103 () Bool)

(assert (=> d!709103 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 l!6611)))))

(declare-fun lt!881438 () Unit!42006)

(assert (=> d!709103 (= lt!881438 (choose!14566 thiss!27932 rules!4472 l!6611 (h!34075 (t!208931 l!6611))))))

(assert (=> d!709103 (not (isEmpty!16663 rules!4472))))

(assert (=> d!709103 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 thiss!27932 rules!4472 l!6611 (h!34075 (t!208931 l!6611))) lt!881438)))

(declare-fun bs!466386 () Bool)

(assert (= bs!466386 d!709103))

(assert (=> bs!466386 m!2831753))

(declare-fun m!2832271 () Bool)

(assert (=> bs!466386 m!2832271))

(assert (=> bs!466386 m!2831465))

(assert (=> b!2462717 d!709103))

(declare-fun d!709105 () Bool)

(declare-fun lt!881440 () Bool)

(declare-fun e!1562224 () Bool)

(assert (=> d!709105 (= lt!881440 e!1562224)))

(declare-fun res!1043661 () Bool)

(assert (=> d!709105 (=> (not res!1043661) (not e!1562224))))

(assert (=> d!709105 (= res!1043661 (= (list!11107 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611)))))) (list!11107 (singletonSeq!1977 (h!34075 l!6611)))))))

(declare-fun e!1562225 () Bool)

(assert (=> d!709105 (= lt!881440 e!1562225)))

(declare-fun res!1043660 () Bool)

(assert (=> d!709105 (=> (not res!1043660) (not e!1562225))))

(declare-fun lt!881439 () tuple2!28214)

(assert (=> d!709105 (= res!1043660 (= (size!22320 (_1!16648 lt!881439)) 1))))

(assert (=> d!709105 (= lt!881439 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611)))))))

(assert (=> d!709105 (not (isEmpty!16663 rules!4472))))

(assert (=> d!709105 (= (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 l!6611)) lt!881440)))

(declare-fun b!2462965 () Bool)

(declare-fun res!1043659 () Bool)

(assert (=> b!2462965 (=> (not res!1043659) (not e!1562225))))

(assert (=> b!2462965 (= res!1043659 (= (apply!6731 (_1!16648 lt!881439) 0) (h!34075 l!6611)))))

(declare-fun b!2462966 () Bool)

(assert (=> b!2462966 (= e!1562225 (isEmpty!16667 (_2!16648 lt!881439)))))

(declare-fun b!2462967 () Bool)

(assert (=> b!2462967 (= e!1562224 (isEmpty!16667 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611)))))))))

(assert (= (and d!709105 res!1043660) b!2462965))

(assert (= (and b!2462965 res!1043659) b!2462966))

(assert (= (and d!709105 res!1043661) b!2462967))

(declare-fun m!2832273 () Bool)

(assert (=> d!709105 m!2832273))

(assert (=> d!709105 m!2831465))

(declare-fun m!2832275 () Bool)

(assert (=> d!709105 m!2832275))

(declare-fun m!2832279 () Bool)

(assert (=> d!709105 m!2832279))

(assert (=> d!709105 m!2832273))

(assert (=> d!709105 m!2832275))

(assert (=> d!709105 m!2832273))

(declare-fun m!2832283 () Bool)

(assert (=> d!709105 m!2832283))

(declare-fun m!2832285 () Bool)

(assert (=> d!709105 m!2832285))

(declare-fun m!2832287 () Bool)

(assert (=> d!709105 m!2832287))

(declare-fun m!2832291 () Bool)

(assert (=> b!2462965 m!2832291))

(declare-fun m!2832293 () Bool)

(assert (=> b!2462966 m!2832293))

(assert (=> b!2462967 m!2832273))

(assert (=> b!2462967 m!2832273))

(assert (=> b!2462967 m!2832275))

(assert (=> b!2462967 m!2832275))

(assert (=> b!2462967 m!2832279))

(declare-fun m!2832297 () Bool)

(assert (=> b!2462967 m!2832297))

(assert (=> b!2462717 d!709105))

(declare-fun d!709113 () Bool)

(assert (=> d!709113 (= (inv!17 (value!142487 t2!67)) (= (charsToBigInt!1 (text!32963 (value!142487 t2!67))) (value!142479 (value!142487 t2!67))))))

(declare-fun bs!466390 () Bool)

(assert (= bs!466390 d!709113))

(declare-fun m!2832299 () Bool)

(assert (=> bs!466390 m!2832299))

(assert (=> b!2462494 d!709113))

(declare-fun d!709115 () Bool)

(declare-fun lt!881442 () Token!8388)

(assert (=> d!709115 (contains!4893 (tail!3898 l!6611) lt!881442)))

(declare-fun e!1562227 () Token!8388)

(assert (=> d!709115 (= lt!881442 e!1562227)))

(declare-fun c!392985 () Bool)

(assert (=> d!709115 (= c!392985 (= (- i!1803 1) 0))))

(declare-fun e!1562226 () Bool)

(assert (=> d!709115 e!1562226))

(declare-fun res!1043662 () Bool)

(assert (=> d!709115 (=> (not res!1043662) (not e!1562226))))

(assert (=> d!709115 (= res!1043662 (<= 0 (- i!1803 1)))))

(assert (=> d!709115 (= (apply!6729 (tail!3898 l!6611) (- i!1803 1)) lt!881442)))

(declare-fun b!2462970 () Bool)

(assert (=> b!2462970 (= e!1562226 (< (- i!1803 1) (size!22315 (tail!3898 l!6611))))))

(declare-fun b!2462971 () Bool)

(assert (=> b!2462971 (= e!1562227 (head!5625 (tail!3898 l!6611)))))

(declare-fun b!2462972 () Bool)

(assert (=> b!2462972 (= e!1562227 (apply!6729 (tail!3898 (tail!3898 l!6611)) (- (- i!1803 1) 1)))))

(assert (= (and d!709115 res!1043662) b!2462970))

(assert (= (and d!709115 c!392985) b!2462971))

(assert (= (and d!709115 (not c!392985)) b!2462972))

(assert (=> d!709115 m!2831723))

(declare-fun m!2832301 () Bool)

(assert (=> d!709115 m!2832301))

(assert (=> b!2462970 m!2831723))

(assert (=> b!2462970 m!2831943))

(assert (=> b!2462971 m!2831723))

(assert (=> b!2462971 m!2831945))

(assert (=> b!2462972 m!2831723))

(assert (=> b!2462972 m!2831947))

(assert (=> b!2462972 m!2831947))

(declare-fun m!2832303 () Bool)

(assert (=> b!2462972 m!2832303))

(assert (=> b!2462706 d!709115))

(assert (=> b!2462706 d!708963))

(assert (=> b!2462704 d!708897))

(declare-fun d!709117 () Bool)

(declare-fun lt!881443 () Bool)

(assert (=> d!709117 (= lt!881443 (isEmpty!16666 (list!11106 (_2!16648 lt!881316))))))

(assert (=> d!709117 (= lt!881443 (isEmpty!16670 (c!392914 (_2!16648 lt!881316))))))

(assert (=> d!709117 (= (isEmpty!16667 (_2!16648 lt!881316)) lt!881443)))

(declare-fun bs!466395 () Bool)

(assert (= bs!466395 d!709117))

(declare-fun m!2832307 () Bool)

(assert (=> bs!466395 m!2832307))

(assert (=> bs!466395 m!2832307))

(declare-fun m!2832309 () Bool)

(assert (=> bs!466395 m!2832309))

(declare-fun m!2832311 () Bool)

(assert (=> bs!466395 m!2832311))

(assert (=> b!2462708 d!709117))

(declare-fun d!709121 () Bool)

(declare-fun lt!881445 () Bool)

(assert (=> d!709121 (= lt!881445 (select (content!3949 l!6611) lt!881318))))

(declare-fun e!1562230 () Bool)

(assert (=> d!709121 (= lt!881445 e!1562230)))

(declare-fun res!1043663 () Bool)

(assert (=> d!709121 (=> (not res!1043663) (not e!1562230))))

(assert (=> d!709121 (= res!1043663 ((_ is Cons!28674) l!6611))))

(assert (=> d!709121 (= (contains!4893 l!6611 lt!881318) lt!881445)))

(declare-fun b!2462975 () Bool)

(declare-fun e!1562229 () Bool)

(assert (=> b!2462975 (= e!1562230 e!1562229)))

(declare-fun res!1043664 () Bool)

(assert (=> b!2462975 (=> res!1043664 e!1562229)))

(assert (=> b!2462975 (= res!1043664 (= (h!34075 l!6611) lt!881318))))

(declare-fun b!2462976 () Bool)

(assert (=> b!2462976 (= e!1562229 (contains!4893 (t!208931 l!6611) lt!881318))))

(assert (= (and d!709121 res!1043663) b!2462975))

(assert (= (and b!2462975 (not res!1043664)) b!2462976))

(assert (=> d!709121 m!2832175))

(declare-fun m!2832315 () Bool)

(assert (=> d!709121 m!2832315))

(declare-fun m!2832317 () Bool)

(assert (=> b!2462976 m!2832317))

(assert (=> d!708893 d!709121))

(assert (=> b!2462652 d!709105))

(declare-fun bs!466397 () Bool)

(declare-fun d!709127 () Bool)

(assert (= bs!466397 (and d!709127 d!709045)))

(declare-fun lambda!93191 () Int)

(assert (=> bs!466397 (= (= (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toValue!6315 (transformation!4459 (rule!6817 t1!67)))) (= lambda!93191 lambda!93185))))

(assert (=> d!709127 true))

(assert (=> d!709127 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (dynLambda!12314 order!15535 lambda!93191))))

(assert (=> d!709127 (= (equivClasses!1745 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (Forall2!745 lambda!93191))))

(declare-fun bs!466398 () Bool)

(assert (= bs!466398 d!709127))

(declare-fun m!2832329 () Bool)

(assert (=> bs!466398 m!2832329))

(assert (=> b!2462697 d!709127))

(declare-fun d!709135 () Bool)

(assert (=> d!709135 (= (list!11106 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))) (list!11110 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))

(declare-fun bs!466399 () Bool)

(assert (= bs!466399 d!709135))

(declare-fun m!2832333 () Bool)

(assert (=> bs!466399 m!2832333))

(assert (=> b!2462500 d!709135))

(declare-fun d!709139 () Bool)

(assert (=> d!709139 (= (head!5625 l!6611) (h!34075 l!6611))))

(assert (=> b!2462711 d!709139))

(declare-fun d!709143 () Bool)

(declare-fun res!1043674 () Bool)

(declare-fun e!1562244 () Bool)

(assert (=> d!709143 (=> res!1043674 e!1562244)))

(assert (=> d!709143 (= res!1043674 ((_ is Nil!28674) l!6611))))

(assert (=> d!709143 (= (forall!5889 l!6611 lambda!93169) e!1562244)))

(declare-fun b!2462991 () Bool)

(declare-fun e!1562245 () Bool)

(assert (=> b!2462991 (= e!1562244 e!1562245)))

(declare-fun res!1043675 () Bool)

(assert (=> b!2462991 (=> (not res!1043675) (not e!1562245))))

(declare-fun dynLambda!12316 (Int Token!8388) Bool)

(assert (=> b!2462991 (= res!1043675 (dynLambda!12316 lambda!93169 (h!34075 l!6611)))))

(declare-fun b!2462992 () Bool)

(assert (=> b!2462992 (= e!1562245 (forall!5889 (t!208931 l!6611) lambda!93169))))

(assert (= (and d!709143 (not res!1043674)) b!2462991))

(assert (= (and b!2462991 res!1043675) b!2462992))

(declare-fun b_lambda!75471 () Bool)

(assert (=> (not b_lambda!75471) (not b!2462991)))

(declare-fun m!2832351 () Bool)

(assert (=> b!2462991 m!2832351))

(declare-fun m!2832353 () Bool)

(assert (=> b!2462992 m!2832353))

(assert (=> d!708845 d!709143))

(assert (=> d!708845 d!708899))

(declare-fun bs!466406 () Bool)

(declare-fun d!709151 () Bool)

(assert (= bs!466406 (and d!709151 d!709045)))

(declare-fun lambda!93194 () Int)

(assert (=> bs!466406 (= (= (toValue!6315 (transformation!4459 (rule!6817 t2!67))) (toValue!6315 (transformation!4459 (rule!6817 t1!67)))) (= lambda!93194 lambda!93185))))

(declare-fun bs!466407 () Bool)

(assert (= bs!466407 (and d!709151 d!709127)))

(assert (=> bs!466407 (= (= (toValue!6315 (transformation!4459 (rule!6817 t2!67))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (= lambda!93194 lambda!93191))))

(assert (=> d!709151 true))

(assert (=> d!709151 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (rule!6817 t2!67)))) (dynLambda!12314 order!15535 lambda!93194))))

(assert (=> d!709151 (= (equivClasses!1745 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toValue!6315 (transformation!4459 (rule!6817 t2!67)))) (Forall2!745 lambda!93194))))

(declare-fun bs!466408 () Bool)

(assert (= bs!466408 d!709151))

(declare-fun m!2832359 () Bool)

(assert (=> bs!466408 m!2832359))

(assert (=> b!2462695 d!709151))

(declare-fun d!709153 () Bool)

(declare-fun charsToInt!0 (List!28772) (_ BitVec 32))

(assert (=> d!709153 (= (inv!16 (value!142487 t2!67)) (= (charsToInt!0 (text!32962 (value!142487 t2!67))) (value!142478 (value!142487 t2!67))))))

(declare-fun bs!466409 () Bool)

(assert (= bs!466409 d!709153))

(declare-fun m!2832369 () Bool)

(assert (=> bs!466409 m!2832369))

(assert (=> b!2462495 d!709153))

(declare-fun d!709155 () Bool)

(declare-fun res!1043677 () Bool)

(declare-fun e!1562256 () Bool)

(assert (=> d!709155 (=> res!1043677 e!1562256)))

(assert (=> d!709155 (= res!1043677 (or (not ((_ is Cons!28674) (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (not ((_ is Cons!28674) (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))))

(assert (=> d!709155 (= (tokensListTwoByTwoPredicateSeparableList!595 thiss!27932 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))) rules!4472) e!1562256)))

(declare-fun b!2463007 () Bool)

(declare-fun e!1562257 () Bool)

(assert (=> b!2463007 (= e!1562256 e!1562257)))

(declare-fun res!1043678 () Bool)

(assert (=> b!2463007 (=> (not res!1043678) (not e!1562257))))

(assert (=> b!2463007 (= res!1043678 (separableTokensPredicate!836 thiss!27932 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))) (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) rules!4472))))

(declare-fun lt!881456 () Unit!42006)

(declare-fun Unit!42014 () Unit!42006)

(assert (=> b!2463007 (= lt!881456 Unit!42014)))

(assert (=> b!2463007 (> (size!22321 (charsOf!2813 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))) 0)))

(declare-fun lt!881455 () Unit!42006)

(declare-fun Unit!42015 () Unit!42006)

(assert (=> b!2463007 (= lt!881455 Unit!42015)))

(assert (=> b!2463007 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))

(declare-fun lt!881458 () Unit!42006)

(declare-fun Unit!42016 () Unit!42006)

(assert (=> b!2463007 (= lt!881458 Unit!42016)))

(assert (=> b!2463007 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))

(declare-fun lt!881457 () Unit!42006)

(declare-fun lt!881454 () Unit!42006)

(assert (=> b!2463007 (= lt!881457 lt!881454)))

(assert (=> b!2463007 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))

(assert (=> b!2463007 (= lt!881454 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 thiss!27932 rules!4472 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))) (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))

(declare-fun lt!881453 () Unit!42006)

(declare-fun lt!881452 () Unit!42006)

(assert (=> b!2463007 (= lt!881453 lt!881452)))

(assert (=> b!2463007 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))

(assert (=> b!2463007 (= lt!881452 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 thiss!27932 rules!4472 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))) (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))

(declare-fun b!2463008 () Bool)

(assert (=> b!2463008 (= e!1562257 (tokensListTwoByTwoPredicateSeparableList!595 thiss!27932 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))) rules!4472))))

(assert (= (and d!709155 (not res!1043677)) b!2463007))

(assert (= (and b!2463007 res!1043678) b!2463008))

(declare-fun m!2832371 () Bool)

(assert (=> b!2463007 m!2832371))

(declare-fun m!2832373 () Bool)

(assert (=> b!2463007 m!2832373))

(declare-fun m!2832375 () Bool)

(assert (=> b!2463007 m!2832375))

(declare-fun m!2832377 () Bool)

(assert (=> b!2463007 m!2832377))

(declare-fun m!2832379 () Bool)

(assert (=> b!2463007 m!2832379))

(declare-fun m!2832381 () Bool)

(assert (=> b!2463007 m!2832381))

(assert (=> b!2463007 m!2832375))

(declare-fun m!2832383 () Bool)

(assert (=> b!2463007 m!2832383))

(declare-fun m!2832385 () Bool)

(assert (=> b!2463008 m!2832385))

(assert (=> b!2462718 d!709155))

(declare-fun d!709157 () Bool)

(assert (=> d!709157 (= (inv!16 (value!142487 t1!67)) (= (charsToInt!0 (text!32962 (value!142487 t1!67))) (value!142478 (value!142487 t1!67))))))

(declare-fun bs!466410 () Bool)

(assert (= bs!466410 d!709157))

(declare-fun m!2832387 () Bool)

(assert (=> bs!466410 m!2832387))

(assert (=> b!2462730 d!709157))

(declare-fun d!709159 () Bool)

(assert (=> d!709159 (= (isEmpty!16666 (originalCharacters!5225 (h!34075 l!6611))) ((_ is Nil!28673) (originalCharacters!5225 (h!34075 l!6611))))))

(assert (=> d!708827 d!709159))

(declare-fun d!709161 () Bool)

(declare-fun lt!881459 () Bool)

(assert (=> d!709161 (= lt!881459 (isEmpty!16666 (list!11106 (_2!16648 lt!881277))))))

(assert (=> d!709161 (= lt!881459 (isEmpty!16670 (c!392914 (_2!16648 lt!881277))))))

(assert (=> d!709161 (= (isEmpty!16667 (_2!16648 lt!881277)) lt!881459)))

(declare-fun bs!466411 () Bool)

(assert (= bs!466411 d!709161))

(declare-fun m!2832389 () Bool)

(assert (=> bs!466411 m!2832389))

(assert (=> bs!466411 m!2832389))

(declare-fun m!2832391 () Bool)

(assert (=> bs!466411 m!2832391))

(declare-fun m!2832393 () Bool)

(assert (=> bs!466411 m!2832393))

(assert (=> b!2462550 d!709161))

(declare-fun d!709163 () Bool)

(assert (=> d!709163 true))

(declare-fun lt!881462 () Bool)

(declare-fun rulesValidInductive!1582 (LexerInterface!4056 List!28775) Bool)

(assert (=> d!709163 (= lt!881462 (rulesValidInductive!1582 thiss!27932 rules!4472))))

(declare-fun lambda!93197 () Int)

(declare-fun forall!5890 (List!28775 Int) Bool)

(assert (=> d!709163 (= lt!881462 (forall!5890 rules!4472 lambda!93197))))

(assert (=> d!709163 (= (rulesValid!1659 thiss!27932 rules!4472) lt!881462)))

(declare-fun bs!466412 () Bool)

(assert (= bs!466412 d!709163))

(declare-fun m!2832399 () Bool)

(assert (=> bs!466412 m!2832399))

(declare-fun m!2832401 () Bool)

(assert (=> bs!466412 m!2832401))

(assert (=> d!708841 d!709163))

(declare-fun d!709165 () Bool)

(assert (=> d!709165 (= (isEmpty!16666 (originalCharacters!5225 t2!67)) ((_ is Nil!28673) (originalCharacters!5225 t2!67)))))

(assert (=> d!708907 d!709165))

(declare-fun bs!466413 () Bool)

(declare-fun d!709167 () Bool)

(assert (= bs!466413 (and d!709167 d!709045)))

(declare-fun lambda!93198 () Int)

(assert (=> bs!466413 (= (= (toValue!6315 (transformation!4459 (h!34076 rules!4472))) (toValue!6315 (transformation!4459 (rule!6817 t1!67)))) (= lambda!93198 lambda!93185))))

(declare-fun bs!466414 () Bool)

(assert (= bs!466414 (and d!709167 d!709127)))

(assert (=> bs!466414 (= (= (toValue!6315 (transformation!4459 (h!34076 rules!4472))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (= lambda!93198 lambda!93191))))

(declare-fun bs!466415 () Bool)

(assert (= bs!466415 (and d!709167 d!709151)))

(assert (=> bs!466415 (= (= (toValue!6315 (transformation!4459 (h!34076 rules!4472))) (toValue!6315 (transformation!4459 (rule!6817 t2!67)))) (= lambda!93198 lambda!93194))))

(assert (=> d!709167 true))

(assert (=> d!709167 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (h!34076 rules!4472)))) (dynLambda!12314 order!15535 lambda!93198))))

(assert (=> d!709167 (= (equivClasses!1745 (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toValue!6315 (transformation!4459 (h!34076 rules!4472)))) (Forall2!745 lambda!93198))))

(declare-fun bs!466416 () Bool)

(assert (= bs!466416 d!709167))

(declare-fun m!2832415 () Bool)

(assert (=> bs!466416 m!2832415))

(assert (=> b!2462725 d!709167))

(declare-fun bs!466417 () Bool)

(declare-fun d!709169 () Bool)

(assert (= bs!466417 (and d!709169 d!708845)))

(declare-fun lambda!93199 () Int)

(assert (=> bs!466417 (= lambda!93199 lambda!93169)))

(declare-fun b!2463093 () Bool)

(declare-fun e!1562290 () Bool)

(assert (=> b!2463093 (= e!1562290 true)))

(declare-fun b!2463092 () Bool)

(declare-fun e!1562289 () Bool)

(assert (=> b!2463092 (= e!1562289 e!1562290)))

(declare-fun b!2463091 () Bool)

(declare-fun e!1562288 () Bool)

(assert (=> b!2463091 (= e!1562288 e!1562289)))

(assert (=> d!709169 e!1562288))

(assert (= b!2463092 b!2463093))

(assert (= b!2463091 b!2463092))

(assert (= (and d!709169 ((_ is Cons!28675) rules!4472)) b!2463091))

(assert (=> b!2463093 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (h!34076 rules!4472)))) (dynLambda!12309 order!15525 lambda!93199))))

(assert (=> b!2463093 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (h!34076 rules!4472)))) (dynLambda!12309 order!15525 lambda!93199))))

(assert (=> d!709169 true))

(declare-fun lt!881463 () Bool)

(assert (=> d!709169 (= lt!881463 (forall!5889 (t!208931 l!6611) lambda!93199))))

(declare-fun e!1562285 () Bool)

(assert (=> d!709169 (= lt!881463 e!1562285)))

(declare-fun res!1043680 () Bool)

(assert (=> d!709169 (=> res!1043680 e!1562285)))

(assert (=> d!709169 (= res!1043680 (not ((_ is Cons!28674) (t!208931 l!6611))))))

(assert (=> d!709169 (not (isEmpty!16663 rules!4472))))

(assert (=> d!709169 (= (rulesProduceEachTokenIndividuallyList!1372 thiss!27932 rules!4472 (t!208931 l!6611)) lt!881463)))

(declare-fun b!2463085 () Bool)

(declare-fun e!1562286 () Bool)

(assert (=> b!2463085 (= e!1562285 e!1562286)))

(declare-fun res!1043679 () Bool)

(assert (=> b!2463085 (=> (not res!1043679) (not e!1562286))))

(assert (=> b!2463085 (= res!1043679 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 l!6611))))))

(declare-fun b!2463086 () Bool)

(assert (=> b!2463086 (= e!1562286 (rulesProduceEachTokenIndividuallyList!1372 thiss!27932 rules!4472 (t!208931 (t!208931 l!6611))))))

(assert (= (and d!709169 (not res!1043680)) b!2463085))

(assert (= (and b!2463085 res!1043679) b!2463086))

(declare-fun m!2832419 () Bool)

(assert (=> d!709169 m!2832419))

(assert (=> d!709169 m!2831465))

(assert (=> b!2463085 m!2831753))

(declare-fun m!2832425 () Bool)

(assert (=> b!2463086 m!2832425))

(assert (=> b!2462654 d!709169))

(declare-fun d!709171 () Bool)

(declare-fun lt!881464 () Int)

(assert (=> d!709171 (>= lt!881464 0)))

(declare-fun e!1562299 () Int)

(assert (=> d!709171 (= lt!881464 e!1562299)))

(declare-fun c!392988 () Bool)

(assert (=> d!709171 (= c!392988 ((_ is Nil!28673) (originalCharacters!5225 t1!67)))))

(assert (=> d!709171 (= (size!22319 (originalCharacters!5225 t1!67)) lt!881464)))

(declare-fun b!2463106 () Bool)

(assert (=> b!2463106 (= e!1562299 0)))

(declare-fun b!2463107 () Bool)

(assert (=> b!2463107 (= e!1562299 (+ 1 (size!22319 (t!208930 (originalCharacters!5225 t1!67)))))))

(assert (= (and d!709171 c!392988) b!2463106))

(assert (= (and d!709171 (not c!392988)) b!2463107))

(declare-fun m!2832427 () Bool)

(assert (=> b!2463107 m!2832427))

(assert (=> b!2462735 d!709171))

(declare-fun d!709173 () Bool)

(assert (=> d!709173 (= (inv!38755 (tag!4949 (h!34076 (t!208932 rules!4472)))) (= (mod (str.len (value!142486 (tag!4949 (h!34076 (t!208932 rules!4472))))) 2) 0))))

(assert (=> b!2462793 d!709173))

(declare-fun d!709175 () Bool)

(declare-fun res!1043681 () Bool)

(declare-fun e!1562302 () Bool)

(assert (=> d!709175 (=> (not res!1043681) (not e!1562302))))

(assert (=> d!709175 (= res!1043681 (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472))))))))

(assert (=> d!709175 (= (inv!38758 (transformation!4459 (h!34076 (t!208932 rules!4472)))) e!1562302)))

(declare-fun b!2463115 () Bool)

(assert (=> b!2463115 (= e!1562302 (equivClasses!1745 (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472))))))))

(assert (= (and d!709175 res!1043681) b!2463115))

(declare-fun m!2832429 () Bool)

(assert (=> d!709175 m!2832429))

(declare-fun m!2832431 () Bool)

(assert (=> b!2463115 m!2832431))

(assert (=> b!2462793 d!709175))

(declare-fun d!709177 () Bool)

(assert (=> d!709177 (= (inv!38755 (tag!4949 (rule!6817 (h!34075 (t!208931 l!6611))))) (= (mod (str.len (value!142486 (tag!4949 (rule!6817 (h!34075 (t!208931 l!6611)))))) 2) 0))))

(assert (=> b!2462754 d!709177))

(declare-fun d!709179 () Bool)

(declare-fun res!1043682 () Bool)

(declare-fun e!1562304 () Bool)

(assert (=> d!709179 (=> (not res!1043682) (not e!1562304))))

(assert (=> d!709179 (= res!1043682 (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))))))

(assert (=> d!709179 (= (inv!38758 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) e!1562304)))

(declare-fun b!2463121 () Bool)

(assert (=> b!2463121 (= e!1562304 (equivClasses!1745 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))))))

(assert (= (and d!709179 res!1043682) b!2463121))

(declare-fun m!2832433 () Bool)

(assert (=> d!709179 m!2832433))

(declare-fun m!2832435 () Bool)

(assert (=> b!2463121 m!2832435))

(assert (=> b!2462754 d!709179))

(declare-fun d!709181 () Bool)

(declare-fun res!1043683 () Bool)

(declare-fun e!1562306 () Bool)

(assert (=> d!709181 (=> (not res!1043683) (not e!1562306))))

(assert (=> d!709181 (= res!1043683 (not (isEmpty!16666 (originalCharacters!5225 (h!34075 (t!208931 l!6611))))))))

(assert (=> d!709181 (= (inv!38759 (h!34075 (t!208931 l!6611))) e!1562306)))

(declare-fun b!2463126 () Bool)

(declare-fun res!1043684 () Bool)

(assert (=> b!2463126 (=> (not res!1043684) (not e!1562306))))

(assert (=> b!2463126 (= res!1043684 (= (originalCharacters!5225 (h!34075 (t!208931 l!6611))) (list!11106 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611)))))))))

(declare-fun b!2463127 () Bool)

(assert (=> b!2463127 (= e!1562306 (= (size!22314 (h!34075 (t!208931 l!6611))) (size!22319 (originalCharacters!5225 (h!34075 (t!208931 l!6611))))))))

(assert (= (and d!709181 res!1043683) b!2463126))

(assert (= (and b!2463126 res!1043684) b!2463127))

(declare-fun b_lambda!75479 () Bool)

(assert (=> (not b_lambda!75479) (not b!2463126)))

(assert (=> b!2463126 t!209030))

(declare-fun b_and!186033 () Bool)

(assert (= b_and!186015 (and (=> t!209030 result!171698) b_and!186033)))

(assert (=> b!2463126 t!209028))

(declare-fun b_and!186035 () Bool)

(assert (= b_and!186013 (and (=> t!209028 result!171696) b_and!186035)))

(assert (=> b!2463126 t!209032))

(declare-fun b_and!186037 () Bool)

(assert (= b_and!186017 (and (=> t!209032 result!171700) b_and!186037)))

(assert (=> b!2463126 t!209036))

(declare-fun b_and!186039 () Bool)

(assert (= b_and!186021 (and (=> t!209036 result!171704) b_and!186039)))

(assert (=> b!2463126 t!209038))

(declare-fun b_and!186041 () Bool)

(assert (= b_and!186023 (and (=> t!209038 result!171706) b_and!186041)))

(assert (=> b!2463126 t!209034))

(declare-fun b_and!186043 () Bool)

(assert (= b_and!186019 (and (=> t!209034 result!171702) b_and!186043)))

(declare-fun m!2832437 () Bool)

(assert (=> d!709181 m!2832437))

(assert (=> b!2463126 m!2832243))

(assert (=> b!2463126 m!2832243))

(declare-fun m!2832439 () Bool)

(assert (=> b!2463126 m!2832439))

(declare-fun m!2832441 () Bool)

(assert (=> b!2463127 m!2832441))

(assert (=> b!2462752 d!709181))

(declare-fun d!709185 () Bool)

(declare-fun lt!881465 () Int)

(assert (=> d!709185 (>= lt!881465 0)))

(declare-fun e!1562307 () Int)

(assert (=> d!709185 (= lt!881465 e!1562307)))

(declare-fun c!392989 () Bool)

(assert (=> d!709185 (= c!392989 ((_ is Nil!28673) (originalCharacters!5225 t2!67)))))

(assert (=> d!709185 (= (size!22319 (originalCharacters!5225 t2!67)) lt!881465)))

(declare-fun b!2463128 () Bool)

(assert (=> b!2463128 (= e!1562307 0)))

(declare-fun b!2463129 () Bool)

(assert (=> b!2463129 (= e!1562307 (+ 1 (size!22319 (t!208930 (originalCharacters!5225 t2!67)))))))

(assert (= (and d!709185 c!392989) b!2463128))

(assert (= (and d!709185 (not c!392989)) b!2463129))

(declare-fun m!2832443 () Bool)

(assert (=> b!2463129 m!2832443))

(assert (=> b!2462732 d!709185))

(declare-fun bs!466419 () Bool)

(declare-fun d!709187 () Bool)

(assert (= bs!466419 (and d!709187 d!708977)))

(declare-fun lambda!93200 () Int)

(assert (=> bs!466419 (= (and (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (= (toValue!6315 (transformation!4459 (rule!6817 t1!67))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (= lambda!93200 lambda!93180))))

(declare-fun bs!466420 () Bool)

(assert (= bs!466420 (and d!709187 d!708983)))

(assert (=> bs!466420 (= (and (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (h!34076 rules!4472)))) (= (toValue!6315 (transformation!4459 (rule!6817 t1!67))) (toValue!6315 (transformation!4459 (h!34076 rules!4472))))) (= lambda!93200 lambda!93181))))

(assert (=> d!709187 true))

(assert (=> d!709187 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) (dynLambda!12312 order!15533 lambda!93200))))

(assert (=> d!709187 true))

(assert (=> d!709187 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (rule!6817 t1!67)))) (dynLambda!12312 order!15533 lambda!93200))))

(assert (=> d!709187 (= (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toValue!6315 (transformation!4459 (rule!6817 t1!67)))) (Forall!1135 lambda!93200))))

(declare-fun bs!466421 () Bool)

(assert (= bs!466421 d!709187))

(declare-fun m!2832445 () Bool)

(assert (=> bs!466421 m!2832445))

(assert (=> d!708883 d!709187))

(declare-fun d!709189 () Bool)

(declare-fun lt!881466 () Int)

(assert (=> d!709189 (>= lt!881466 0)))

(declare-fun e!1562308 () Int)

(assert (=> d!709189 (= lt!881466 e!1562308)))

(declare-fun c!392990 () Bool)

(assert (=> d!709189 (= c!392990 ((_ is Nil!28674) (t!208931 l!6611)))))

(assert (=> d!709189 (= (size!22315 (t!208931 l!6611)) lt!881466)))

(declare-fun b!2463130 () Bool)

(assert (=> b!2463130 (= e!1562308 0)))

(declare-fun b!2463131 () Bool)

(assert (=> b!2463131 (= e!1562308 (+ 1 (size!22315 (t!208931 (t!208931 l!6611)))))))

(assert (= (and d!709189 c!392990) b!2463130))

(assert (= (and d!709189 (not c!392990)) b!2463131))

(declare-fun m!2832447 () Bool)

(assert (=> b!2463131 m!2832447))

(assert (=> b!2462724 d!709189))

(declare-fun d!709191 () Bool)

(declare-fun charsToBigInt!0 (List!28772 Int) Int)

(assert (=> d!709191 (= (inv!15 (value!142487 (h!34075 l!6611))) (= (charsToBigInt!0 (text!32964 (value!142487 (h!34075 l!6611))) 0) (value!142482 (value!142487 (h!34075 l!6611)))))))

(declare-fun bs!466422 () Bool)

(assert (= bs!466422 d!709191))

(declare-fun m!2832449 () Bool)

(assert (=> bs!466422 m!2832449))

(assert (=> b!2462555 d!709191))

(declare-fun d!709193 () Bool)

(assert (=> d!709193 (= (inv!38763 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))) (isBalanced!2799 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))

(declare-fun bs!466423 () Bool)

(assert (= bs!466423 d!709193))

(declare-fun m!2832451 () Bool)

(assert (=> bs!466423 m!2832451))

(assert (=> tb!139017 d!709193))

(declare-fun bs!466424 () Bool)

(declare-fun d!709195 () Bool)

(assert (= bs!466424 (and d!709195 d!708977)))

(declare-fun lambda!93201 () Int)

(assert (=> bs!466424 (= (and (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (= (toValue!6315 (transformation!4459 (rule!6817 t2!67))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (= lambda!93201 lambda!93180))))

(declare-fun bs!466425 () Bool)

(assert (= bs!466425 (and d!709195 d!708983)))

(assert (=> bs!466425 (= (and (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (h!34076 rules!4472)))) (= (toValue!6315 (transformation!4459 (rule!6817 t2!67))) (toValue!6315 (transformation!4459 (h!34076 rules!4472))))) (= lambda!93201 lambda!93181))))

(declare-fun bs!466426 () Bool)

(assert (= bs!466426 (and d!709195 d!709187)))

(assert (=> bs!466426 (= (and (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) (= (toValue!6315 (transformation!4459 (rule!6817 t2!67))) (toValue!6315 (transformation!4459 (rule!6817 t1!67))))) (= lambda!93201 lambda!93200))))

(assert (=> d!709195 true))

(assert (=> d!709195 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) (dynLambda!12312 order!15533 lambda!93201))))

(assert (=> d!709195 true))

(assert (=> d!709195 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (rule!6817 t2!67)))) (dynLambda!12312 order!15533 lambda!93201))))

(assert (=> d!709195 (= (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toValue!6315 (transformation!4459 (rule!6817 t2!67)))) (Forall!1135 lambda!93201))))

(declare-fun bs!466427 () Bool)

(assert (= bs!466427 d!709195))

(declare-fun m!2832453 () Bool)

(assert (=> bs!466427 m!2832453))

(assert (=> d!708879 d!709195))

(declare-fun d!709197 () Bool)

(assert (=> d!709197 (= (inv!38763 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))) (isBalanced!2799 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))

(declare-fun bs!466428 () Bool)

(assert (= bs!466428 d!709197))

(declare-fun m!2832455 () Bool)

(assert (=> bs!466428 m!2832455))

(assert (=> tb!139053 d!709197))

(declare-fun d!709199 () Bool)

(declare-fun res!1043689 () Bool)

(declare-fun e!1562313 () Bool)

(assert (=> d!709199 (=> res!1043689 e!1562313)))

(assert (=> d!709199 (= res!1043689 ((_ is Nil!28675) rules!4472))))

(assert (=> d!709199 (= (noDuplicateTag!1657 thiss!27932 rules!4472 Nil!28677) e!1562313)))

(declare-fun b!2463136 () Bool)

(declare-fun e!1562314 () Bool)

(assert (=> b!2463136 (= e!1562313 e!1562314)))

(declare-fun res!1043690 () Bool)

(assert (=> b!2463136 (=> (not res!1043690) (not e!1562314))))

(declare-fun contains!4895 (List!28777 String!31521) Bool)

(assert (=> b!2463136 (= res!1043690 (not (contains!4895 Nil!28677 (tag!4949 (h!34076 rules!4472)))))))

(declare-fun b!2463137 () Bool)

(assert (=> b!2463137 (= e!1562314 (noDuplicateTag!1657 thiss!27932 (t!208932 rules!4472) (Cons!28677 (tag!4949 (h!34076 rules!4472)) Nil!28677)))))

(assert (= (and d!709199 (not res!1043689)) b!2463136))

(assert (= (and b!2463136 res!1043690) b!2463137))

(declare-fun m!2832457 () Bool)

(assert (=> b!2463136 m!2832457))

(declare-fun m!2832459 () Bool)

(assert (=> b!2463137 m!2832459))

(assert (=> b!2462554 d!709199))

(assert (=> b!2462705 d!709139))

(declare-fun d!709201 () Bool)

(declare-fun lt!881467 () Bool)

(assert (=> d!709201 (= lt!881467 (isEmpty!16666 (list!11106 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(assert (=> d!709201 (= lt!881467 (isEmpty!16670 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(assert (=> d!709201 (= (isEmpty!16667 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))) lt!881467)))

(declare-fun bs!466429 () Bool)

(assert (= bs!466429 d!709201))

(declare-fun m!2832461 () Bool)

(assert (=> bs!466429 m!2832461))

(assert (=> bs!466429 m!2832461))

(declare-fun m!2832463 () Bool)

(assert (=> bs!466429 m!2832463))

(declare-fun m!2832465 () Bool)

(assert (=> bs!466429 m!2832465))

(assert (=> b!2462709 d!709201))

(assert (=> b!2462709 d!709007))

(assert (=> b!2462709 d!709011))

(assert (=> b!2462709 d!709023))

(declare-fun d!709203 () Bool)

(assert (=> d!709203 (= (inv!15 (value!142487 t2!67)) (= (charsToBigInt!0 (text!32964 (value!142487 t2!67)) 0) (value!142482 (value!142487 t2!67))))))

(declare-fun bs!466430 () Bool)

(assert (= bs!466430 d!709203))

(declare-fun m!2832467 () Bool)

(assert (=> bs!466430 m!2832467))

(assert (=> b!2462491 d!709203))

(declare-fun d!709205 () Bool)

(declare-fun lt!881468 () Token!8388)

(assert (=> d!709205 (= lt!881468 (apply!6729 (list!11107 (_1!16648 lt!881316)) 0))))

(assert (=> d!709205 (= lt!881468 (apply!6733 (c!392951 (_1!16648 lt!881316)) 0))))

(declare-fun e!1562315 () Bool)

(assert (=> d!709205 e!1562315))

(declare-fun res!1043691 () Bool)

(assert (=> d!709205 (=> (not res!1043691) (not e!1562315))))

(assert (=> d!709205 (= res!1043691 (<= 0 0))))

(assert (=> d!709205 (= (apply!6731 (_1!16648 lt!881316) 0) lt!881468)))

(declare-fun b!2463138 () Bool)

(assert (=> b!2463138 (= e!1562315 (< 0 (size!22320 (_1!16648 lt!881316))))))

(assert (= (and d!709205 res!1043691) b!2463138))

(assert (=> d!709205 m!2832057))

(assert (=> d!709205 m!2832057))

(declare-fun m!2832469 () Bool)

(assert (=> d!709205 m!2832469))

(declare-fun m!2832471 () Bool)

(assert (=> d!709205 m!2832471))

(assert (=> b!2463138 m!2831737))

(assert (=> b!2462707 d!709205))

(declare-fun d!709207 () Bool)

(assert (=> d!709207 (= (inv!15 (value!142487 t1!67)) (= (charsToBigInt!0 (text!32964 (value!142487 t1!67)) 0) (value!142482 (value!142487 t1!67))))))

(declare-fun bs!466431 () Bool)

(assert (= bs!466431 d!709207))

(declare-fun m!2832473 () Bool)

(assert (=> bs!466431 m!2832473))

(assert (=> b!2462726 d!709207))

(declare-fun d!709209 () Bool)

(assert (=> d!709209 (= (inv!16 (value!142487 (h!34075 l!6611))) (= (charsToInt!0 (text!32962 (value!142487 (h!34075 l!6611)))) (value!142478 (value!142487 (h!34075 l!6611)))))))

(declare-fun bs!466432 () Bool)

(assert (= bs!466432 d!709209))

(declare-fun m!2832475 () Bool)

(assert (=> bs!466432 m!2832475))

(assert (=> b!2462559 d!709209))

(declare-fun d!709211 () Bool)

(declare-fun c!392991 () Bool)

(assert (=> d!709211 (= c!392991 ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))

(declare-fun e!1562316 () Bool)

(assert (=> d!709211 (= (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) e!1562316)))

(declare-fun b!2463139 () Bool)

(assert (=> b!2463139 (= e!1562316 (inv!38764 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))

(declare-fun b!2463140 () Bool)

(declare-fun e!1562317 () Bool)

(assert (=> b!2463140 (= e!1562316 e!1562317)))

(declare-fun res!1043692 () Bool)

(assert (=> b!2463140 (= res!1043692 (not ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(assert (=> b!2463140 (=> res!1043692 e!1562317)))

(declare-fun b!2463141 () Bool)

(assert (=> b!2463141 (= e!1562317 (inv!38765 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))

(assert (= (and d!709211 c!392991) b!2463139))

(assert (= (and d!709211 (not c!392991)) b!2463140))

(assert (= (and b!2463140 (not res!1043692)) b!2463141))

(declare-fun m!2832477 () Bool)

(assert (=> b!2463139 m!2832477))

(declare-fun m!2832479 () Bool)

(assert (=> b!2463141 m!2832479))

(assert (=> b!2462736 d!709211))

(declare-fun b!2463143 () Bool)

(declare-fun e!1562318 () Bool)

(declare-fun tp!784612 () Bool)

(declare-fun tp!784614 () Bool)

(assert (=> b!2463143 (= e!1562318 (and tp!784612 tp!784614))))

(declare-fun b!2463144 () Bool)

(declare-fun tp!784613 () Bool)

(assert (=> b!2463144 (= e!1562318 tp!784613)))

(declare-fun b!2463142 () Bool)

(assert (=> b!2463142 (= e!1562318 tp_is_empty!11931)))

(declare-fun b!2463145 () Bool)

(declare-fun tp!784610 () Bool)

(declare-fun tp!784611 () Bool)

(assert (=> b!2463145 (= e!1562318 (and tp!784610 tp!784611))))

(assert (=> b!2462776 (= tp!784449 e!1562318)))

(assert (= (and b!2462776 ((_ is ElementMatch!7247) (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463142))

(assert (= (and b!2462776 ((_ is Concat!11893) (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463143))

(assert (= (and b!2462776 ((_ is Star!7247) (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463144))

(assert (= (and b!2462776 ((_ is Union!7247) (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463145))

(declare-fun b!2463147 () Bool)

(declare-fun e!1562319 () Bool)

(declare-fun tp!784617 () Bool)

(declare-fun tp!784619 () Bool)

(assert (=> b!2463147 (= e!1562319 (and tp!784617 tp!784619))))

(declare-fun b!2463148 () Bool)

(declare-fun tp!784618 () Bool)

(assert (=> b!2463148 (= e!1562319 tp!784618)))

(declare-fun b!2463146 () Bool)

(assert (=> b!2463146 (= e!1562319 tp_is_empty!11931)))

(declare-fun b!2463149 () Bool)

(declare-fun tp!784615 () Bool)

(declare-fun tp!784616 () Bool)

(assert (=> b!2463149 (= e!1562319 (and tp!784615 tp!784616))))

(assert (=> b!2462776 (= tp!784451 e!1562319)))

(assert (= (and b!2462776 ((_ is ElementMatch!7247) (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463146))

(assert (= (and b!2462776 ((_ is Concat!11893) (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463147))

(assert (= (and b!2462776 ((_ is Star!7247) (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463148))

(assert (= (and b!2462776 ((_ is Union!7247) (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463149))

(declare-fun tp!784628 () Bool)

(declare-fun e!1562324 () Bool)

(declare-fun b!2463158 () Bool)

(declare-fun tp!784626 () Bool)

(assert (=> b!2463158 (= e!1562324 (and (inv!38762 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) tp!784626 (inv!38762 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) tp!784628))))

(declare-fun b!2463160 () Bool)

(declare-fun e!1562325 () Bool)

(declare-fun tp!784627 () Bool)

(assert (=> b!2463160 (= e!1562325 tp!784627)))

(declare-fun b!2463159 () Bool)

(declare-fun inv!38768 (IArray!18335) Bool)

(assert (=> b!2463159 (= e!1562324 (and (inv!38768 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) e!1562325))))

(assert (=> b!2462733 (= tp!784406 (and (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) e!1562324))))

(assert (= (and b!2462733 ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) b!2463158))

(assert (= b!2463159 b!2463160))

(assert (= (and b!2462733 ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) b!2463159))

(declare-fun m!2832481 () Bool)

(assert (=> b!2463158 m!2832481))

(declare-fun m!2832483 () Bool)

(assert (=> b!2463158 m!2832483))

(declare-fun m!2832485 () Bool)

(assert (=> b!2463159 m!2832485))

(assert (=> b!2462733 m!2831775))

(declare-fun b!2463161 () Bool)

(declare-fun e!1562326 () Bool)

(declare-fun tp!784629 () Bool)

(assert (=> b!2463161 (= e!1562326 (and tp_is_empty!11931 tp!784629))))

(assert (=> b!2462741 (= tp!784410 e!1562326)))

(assert (= (and b!2462741 ((_ is Cons!28673) (t!208930 (originalCharacters!5225 t2!67)))) b!2463161))

(declare-fun b!2463163 () Bool)

(declare-fun e!1562327 () Bool)

(declare-fun tp!784632 () Bool)

(declare-fun tp!784634 () Bool)

(assert (=> b!2463163 (= e!1562327 (and tp!784632 tp!784634))))

(declare-fun b!2463164 () Bool)

(declare-fun tp!784633 () Bool)

(assert (=> b!2463164 (= e!1562327 tp!784633)))

(declare-fun b!2463162 () Bool)

(assert (=> b!2463162 (= e!1562327 tp_is_empty!11931)))

(declare-fun b!2463165 () Bool)

(declare-fun tp!784630 () Bool)

(declare-fun tp!784631 () Bool)

(assert (=> b!2463165 (= e!1562327 (and tp!784630 tp!784631))))

(assert (=> b!2462770 (= tp!784437 e!1562327)))

(assert (= (and b!2462770 ((_ is ElementMatch!7247) (regOne!15007 (regex!4459 (rule!6817 t2!67))))) b!2463162))

(assert (= (and b!2462770 ((_ is Concat!11893) (regOne!15007 (regex!4459 (rule!6817 t2!67))))) b!2463163))

(assert (= (and b!2462770 ((_ is Star!7247) (regOne!15007 (regex!4459 (rule!6817 t2!67))))) b!2463164))

(assert (= (and b!2462770 ((_ is Union!7247) (regOne!15007 (regex!4459 (rule!6817 t2!67))))) b!2463165))

(declare-fun b!2463167 () Bool)

(declare-fun e!1562328 () Bool)

(declare-fun tp!784637 () Bool)

(declare-fun tp!784639 () Bool)

(assert (=> b!2463167 (= e!1562328 (and tp!784637 tp!784639))))

(declare-fun b!2463168 () Bool)

(declare-fun tp!784638 () Bool)

(assert (=> b!2463168 (= e!1562328 tp!784638)))

(declare-fun b!2463166 () Bool)

(assert (=> b!2463166 (= e!1562328 tp_is_empty!11931)))

(declare-fun b!2463169 () Bool)

(declare-fun tp!784635 () Bool)

(declare-fun tp!784636 () Bool)

(assert (=> b!2463169 (= e!1562328 (and tp!784635 tp!784636))))

(assert (=> b!2462770 (= tp!784438 e!1562328)))

(assert (= (and b!2462770 ((_ is ElementMatch!7247) (regTwo!15007 (regex!4459 (rule!6817 t2!67))))) b!2463166))

(assert (= (and b!2462770 ((_ is Concat!11893) (regTwo!15007 (regex!4459 (rule!6817 t2!67))))) b!2463167))

(assert (= (and b!2462770 ((_ is Star!7247) (regTwo!15007 (regex!4459 (rule!6817 t2!67))))) b!2463168))

(assert (= (and b!2462770 ((_ is Union!7247) (regTwo!15007 (regex!4459 (rule!6817 t2!67))))) b!2463169))

(declare-fun b!2463171 () Bool)

(declare-fun e!1562329 () Bool)

(declare-fun tp!784642 () Bool)

(declare-fun tp!784644 () Bool)

(assert (=> b!2463171 (= e!1562329 (and tp!784642 tp!784644))))

(declare-fun b!2463172 () Bool)

(declare-fun tp!784643 () Bool)

(assert (=> b!2463172 (= e!1562329 tp!784643)))

(declare-fun b!2463170 () Bool)

(assert (=> b!2463170 (= e!1562329 tp_is_empty!11931)))

(declare-fun b!2463173 () Bool)

(declare-fun tp!784640 () Bool)

(declare-fun tp!784641 () Bool)

(assert (=> b!2463173 (= e!1562329 (and tp!784640 tp!784641))))

(assert (=> b!2462778 (= tp!784447 e!1562329)))

(assert (= (and b!2462778 ((_ is ElementMatch!7247) (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463170))

(assert (= (and b!2462778 ((_ is Concat!11893) (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463171))

(assert (= (and b!2462778 ((_ is Star!7247) (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463172))

(assert (= (and b!2462778 ((_ is Union!7247) (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463173))

(declare-fun b!2463175 () Bool)

(declare-fun e!1562330 () Bool)

(declare-fun tp!784647 () Bool)

(declare-fun tp!784649 () Bool)

(assert (=> b!2463175 (= e!1562330 (and tp!784647 tp!784649))))

(declare-fun b!2463176 () Bool)

(declare-fun tp!784648 () Bool)

(assert (=> b!2463176 (= e!1562330 tp!784648)))

(declare-fun b!2463174 () Bool)

(assert (=> b!2463174 (= e!1562330 tp_is_empty!11931)))

(declare-fun b!2463177 () Bool)

(declare-fun tp!784645 () Bool)

(declare-fun tp!784646 () Bool)

(assert (=> b!2463177 (= e!1562330 (and tp!784645 tp!784646))))

(assert (=> b!2462778 (= tp!784448 e!1562330)))

(assert (= (and b!2462778 ((_ is ElementMatch!7247) (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463174))

(assert (= (and b!2462778 ((_ is Concat!11893) (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463175))

(assert (= (and b!2462778 ((_ is Star!7247) (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463176))

(assert (= (and b!2462778 ((_ is Union!7247) (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463177))

(declare-fun b!2463179 () Bool)

(declare-fun e!1562331 () Bool)

(declare-fun tp!784652 () Bool)

(declare-fun tp!784654 () Bool)

(assert (=> b!2463179 (= e!1562331 (and tp!784652 tp!784654))))

(declare-fun b!2463180 () Bool)

(declare-fun tp!784653 () Bool)

(assert (=> b!2463180 (= e!1562331 tp!784653)))

(declare-fun b!2463178 () Bool)

(assert (=> b!2463178 (= e!1562331 tp_is_empty!11931)))

(declare-fun b!2463181 () Bool)

(declare-fun tp!784650 () Bool)

(declare-fun tp!784651 () Bool)

(assert (=> b!2463181 (= e!1562331 (and tp!784650 tp!784651))))

(assert (=> b!2462769 (= tp!784440 e!1562331)))

(assert (= (and b!2462769 ((_ is ElementMatch!7247) (reg!7576 (regex!4459 (rule!6817 t2!67))))) b!2463178))

(assert (= (and b!2462769 ((_ is Concat!11893) (reg!7576 (regex!4459 (rule!6817 t2!67))))) b!2463179))

(assert (= (and b!2462769 ((_ is Star!7247) (reg!7576 (regex!4459 (rule!6817 t2!67))))) b!2463180))

(assert (= (and b!2462769 ((_ is Union!7247) (reg!7576 (regex!4459 (rule!6817 t2!67))))) b!2463181))

(declare-fun b!2463182 () Bool)

(declare-fun tp!784655 () Bool)

(declare-fun tp!784657 () Bool)

(declare-fun e!1562332 () Bool)

(assert (=> b!2463182 (= e!1562332 (and (inv!38762 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) tp!784655 (inv!38762 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) tp!784657))))

(declare-fun b!2463184 () Bool)

(declare-fun e!1562333 () Bool)

(declare-fun tp!784656 () Bool)

(assert (=> b!2463184 (= e!1562333 tp!784656)))

(declare-fun b!2463183 () Bool)

(assert (=> b!2463183 (= e!1562332 (and (inv!38768 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) e!1562333))))

(assert (=> b!2462506 (= tp!784341 (and (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) e!1562332))))

(assert (= (and b!2462506 ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) b!2463182))

(assert (= b!2463183 b!2463184))

(assert (= (and b!2462506 ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) b!2463183))

(declare-fun m!2832487 () Bool)

(assert (=> b!2463182 m!2832487))

(declare-fun m!2832489 () Bool)

(assert (=> b!2463182 m!2832489))

(declare-fun m!2832491 () Bool)

(assert (=> b!2463183 m!2832491))

(assert (=> b!2462506 m!2831521))

(declare-fun b!2463186 () Bool)

(declare-fun e!1562334 () Bool)

(declare-fun tp!784660 () Bool)

(declare-fun tp!784662 () Bool)

(assert (=> b!2463186 (= e!1562334 (and tp!784660 tp!784662))))

(declare-fun b!2463187 () Bool)

(declare-fun tp!784661 () Bool)

(assert (=> b!2463187 (= e!1562334 tp!784661)))

(declare-fun b!2463185 () Bool)

(assert (=> b!2463185 (= e!1562334 tp_is_empty!11931)))

(declare-fun b!2463188 () Bool)

(declare-fun tp!784658 () Bool)

(declare-fun tp!784659 () Bool)

(assert (=> b!2463188 (= e!1562334 (and tp!784658 tp!784659))))

(assert (=> b!2462777 (= tp!784450 e!1562334)))

(assert (= (and b!2462777 ((_ is ElementMatch!7247) (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463185))

(assert (= (and b!2462777 ((_ is Concat!11893) (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463186))

(assert (= (and b!2462777 ((_ is Star!7247) (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463187))

(assert (= (and b!2462777 ((_ is Union!7247) (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611)))))) b!2463188))

(declare-fun b!2463190 () Bool)

(declare-fun e!1562335 () Bool)

(declare-fun tp!784665 () Bool)

(declare-fun tp!784667 () Bool)

(assert (=> b!2463190 (= e!1562335 (and tp!784665 tp!784667))))

(declare-fun b!2463191 () Bool)

(declare-fun tp!784666 () Bool)

(assert (=> b!2463191 (= e!1562335 tp!784666)))

(declare-fun b!2463189 () Bool)

(assert (=> b!2463189 (= e!1562335 tp_is_empty!11931)))

(declare-fun b!2463192 () Bool)

(declare-fun tp!784663 () Bool)

(declare-fun tp!784664 () Bool)

(assert (=> b!2463192 (= e!1562335 (and tp!784663 tp!784664))))

(assert (=> b!2462768 (= tp!784439 e!1562335)))

(assert (= (and b!2462768 ((_ is ElementMatch!7247) (regOne!15006 (regex!4459 (rule!6817 t2!67))))) b!2463189))

(assert (= (and b!2462768 ((_ is Concat!11893) (regOne!15006 (regex!4459 (rule!6817 t2!67))))) b!2463190))

(assert (= (and b!2462768 ((_ is Star!7247) (regOne!15006 (regex!4459 (rule!6817 t2!67))))) b!2463191))

(assert (= (and b!2462768 ((_ is Union!7247) (regOne!15006 (regex!4459 (rule!6817 t2!67))))) b!2463192))

(declare-fun b!2463194 () Bool)

(declare-fun e!1562336 () Bool)

(declare-fun tp!784670 () Bool)

(declare-fun tp!784672 () Bool)

(assert (=> b!2463194 (= e!1562336 (and tp!784670 tp!784672))))

(declare-fun b!2463195 () Bool)

(declare-fun tp!784671 () Bool)

(assert (=> b!2463195 (= e!1562336 tp!784671)))

(declare-fun b!2463193 () Bool)

(assert (=> b!2463193 (= e!1562336 tp_is_empty!11931)))

(declare-fun b!2463196 () Bool)

(declare-fun tp!784668 () Bool)

(declare-fun tp!784669 () Bool)

(assert (=> b!2463196 (= e!1562336 (and tp!784668 tp!784669))))

(assert (=> b!2462768 (= tp!784441 e!1562336)))

(assert (= (and b!2462768 ((_ is ElementMatch!7247) (regTwo!15006 (regex!4459 (rule!6817 t2!67))))) b!2463193))

(assert (= (and b!2462768 ((_ is Concat!11893) (regTwo!15006 (regex!4459 (rule!6817 t2!67))))) b!2463194))

(assert (= (and b!2462768 ((_ is Star!7247) (regTwo!15006 (regex!4459 (rule!6817 t2!67))))) b!2463195))

(assert (= (and b!2462768 ((_ is Union!7247) (regTwo!15006 (regex!4459 (rule!6817 t2!67))))) b!2463196))

(declare-fun b!2463197 () Bool)

(declare-fun e!1562337 () Bool)

(declare-fun tp!784673 () Bool)

(assert (=> b!2463197 (= e!1562337 (and tp_is_empty!11931 tp!784673))))

(assert (=> b!2462756 (= tp!784426 e!1562337)))

(assert (= (and b!2462756 ((_ is Cons!28673) (t!208930 (originalCharacters!5225 (h!34075 l!6611))))) b!2463197))

(declare-fun b!2463199 () Bool)

(declare-fun e!1562338 () Bool)

(declare-fun tp!784676 () Bool)

(declare-fun tp!784678 () Bool)

(assert (=> b!2463199 (= e!1562338 (and tp!784676 tp!784678))))

(declare-fun b!2463200 () Bool)

(declare-fun tp!784677 () Bool)

(assert (=> b!2463200 (= e!1562338 tp!784677)))

(declare-fun b!2463198 () Bool)

(assert (=> b!2463198 (= e!1562338 tp_is_empty!11931)))

(declare-fun b!2463201 () Bool)

(declare-fun tp!784674 () Bool)

(declare-fun tp!784675 () Bool)

(assert (=> b!2463201 (= e!1562338 (and tp!784674 tp!784675))))

(assert (=> b!2462780 (= tp!784454 e!1562338)))

(assert (= (and b!2462780 ((_ is ElementMatch!7247) (regOne!15006 (regex!4459 (h!34076 rules!4472))))) b!2463198))

(assert (= (and b!2462780 ((_ is Concat!11893) (regOne!15006 (regex!4459 (h!34076 rules!4472))))) b!2463199))

(assert (= (and b!2462780 ((_ is Star!7247) (regOne!15006 (regex!4459 (h!34076 rules!4472))))) b!2463200))

(assert (= (and b!2462780 ((_ is Union!7247) (regOne!15006 (regex!4459 (h!34076 rules!4472))))) b!2463201))

(declare-fun b!2463203 () Bool)

(declare-fun e!1562339 () Bool)

(declare-fun tp!784681 () Bool)

(declare-fun tp!784683 () Bool)

(assert (=> b!2463203 (= e!1562339 (and tp!784681 tp!784683))))

(declare-fun b!2463204 () Bool)

(declare-fun tp!784682 () Bool)

(assert (=> b!2463204 (= e!1562339 tp!784682)))

(declare-fun b!2463202 () Bool)

(assert (=> b!2463202 (= e!1562339 tp_is_empty!11931)))

(declare-fun b!2463205 () Bool)

(declare-fun tp!784679 () Bool)

(declare-fun tp!784680 () Bool)

(assert (=> b!2463205 (= e!1562339 (and tp!784679 tp!784680))))

(assert (=> b!2462780 (= tp!784456 e!1562339)))

(assert (= (and b!2462780 ((_ is ElementMatch!7247) (regTwo!15006 (regex!4459 (h!34076 rules!4472))))) b!2463202))

(assert (= (and b!2462780 ((_ is Concat!11893) (regTwo!15006 (regex!4459 (h!34076 rules!4472))))) b!2463203))

(assert (= (and b!2462780 ((_ is Star!7247) (regTwo!15006 (regex!4459 (h!34076 rules!4472))))) b!2463204))

(assert (= (and b!2462780 ((_ is Union!7247) (regTwo!15006 (regex!4459 (h!34076 rules!4472))))) b!2463205))

(declare-fun b!2463207 () Bool)

(declare-fun e!1562340 () Bool)

(declare-fun tp!784686 () Bool)

(declare-fun tp!784688 () Bool)

(assert (=> b!2463207 (= e!1562340 (and tp!784686 tp!784688))))

(declare-fun b!2463208 () Bool)

(declare-fun tp!784687 () Bool)

(assert (=> b!2463208 (= e!1562340 tp!784687)))

(declare-fun b!2463206 () Bool)

(assert (=> b!2463206 (= e!1562340 tp_is_empty!11931)))

(declare-fun b!2463209 () Bool)

(declare-fun tp!784684 () Bool)

(declare-fun tp!784685 () Bool)

(assert (=> b!2463209 (= e!1562340 (and tp!784684 tp!784685))))

(assert (=> b!2462793 (= tp!784466 e!1562340)))

(assert (= (and b!2462793 ((_ is ElementMatch!7247) (regex!4459 (h!34076 (t!208932 rules!4472))))) b!2463206))

(assert (= (and b!2462793 ((_ is Concat!11893) (regex!4459 (h!34076 (t!208932 rules!4472))))) b!2463207))

(assert (= (and b!2462793 ((_ is Star!7247) (regex!4459 (h!34076 (t!208932 rules!4472))))) b!2463208))

(assert (= (and b!2462793 ((_ is Union!7247) (regex!4459 (h!34076 (t!208932 rules!4472))))) b!2463209))

(declare-fun b!2463211 () Bool)

(declare-fun e!1562341 () Bool)

(declare-fun tp!784691 () Bool)

(declare-fun tp!784693 () Bool)

(assert (=> b!2463211 (= e!1562341 (and tp!784691 tp!784693))))

(declare-fun b!2463212 () Bool)

(declare-fun tp!784692 () Bool)

(assert (=> b!2463212 (= e!1562341 tp!784692)))

(declare-fun b!2463210 () Bool)

(assert (=> b!2463210 (= e!1562341 tp_is_empty!11931)))

(declare-fun b!2463213 () Bool)

(declare-fun tp!784689 () Bool)

(declare-fun tp!784690 () Bool)

(assert (=> b!2463213 (= e!1562341 (and tp!784689 tp!784690))))

(assert (=> b!2462754 (= tp!784425 e!1562341)))

(assert (= (and b!2462754 ((_ is ElementMatch!7247) (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) b!2463210))

(assert (= (and b!2462754 ((_ is Concat!11893) (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) b!2463211))

(assert (= (and b!2462754 ((_ is Star!7247) (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) b!2463212))

(assert (= (and b!2462754 ((_ is Union!7247) (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) b!2463213))

(declare-fun b!2463215 () Bool)

(declare-fun e!1562342 () Bool)

(declare-fun tp!784696 () Bool)

(declare-fun tp!784698 () Bool)

(assert (=> b!2463215 (= e!1562342 (and tp!784696 tp!784698))))

(declare-fun b!2463216 () Bool)

(declare-fun tp!784697 () Bool)

(assert (=> b!2463216 (= e!1562342 tp!784697)))

(declare-fun b!2463214 () Bool)

(assert (=> b!2463214 (= e!1562342 tp_is_empty!11931)))

(declare-fun b!2463217 () Bool)

(declare-fun tp!784694 () Bool)

(declare-fun tp!784695 () Bool)

(assert (=> b!2463217 (= e!1562342 (and tp!784694 tp!784695))))

(assert (=> b!2462781 (= tp!784455 e!1562342)))

(assert (= (and b!2462781 ((_ is ElementMatch!7247) (reg!7576 (regex!4459 (h!34076 rules!4472))))) b!2463214))

(assert (= (and b!2462781 ((_ is Concat!11893) (reg!7576 (regex!4459 (h!34076 rules!4472))))) b!2463215))

(assert (= (and b!2462781 ((_ is Star!7247) (reg!7576 (regex!4459 (h!34076 rules!4472))))) b!2463216))

(assert (= (and b!2462781 ((_ is Union!7247) (reg!7576 (regex!4459 (h!34076 rules!4472))))) b!2463217))

(declare-fun b!2463221 () Bool)

(declare-fun b_free!70781 () Bool)

(declare-fun b_next!71485 () Bool)

(assert (=> b!2463221 (= b_free!70781 (not b_next!71485))))

(declare-fun tp!784702 () Bool)

(declare-fun b_and!186045 () Bool)

(assert (=> b!2463221 (= tp!784702 b_and!186045)))

(declare-fun b_free!70783 () Bool)

(declare-fun b_next!71487 () Bool)

(assert (=> b!2463221 (= b_free!70783 (not b_next!71487))))

(declare-fun t!209058 () Bool)

(declare-fun tb!139121 () Bool)

(assert (=> (and b!2463221 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) t!209058) tb!139121))

(declare-fun result!171728 () Bool)

(assert (= result!171728 result!171656))

(assert (=> b!2462734 t!209058))

(declare-fun tb!139123 () Bool)

(declare-fun t!209060 () Bool)

(assert (=> (and b!2463221 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) t!209060) tb!139123))

(declare-fun result!171730 () Bool)

(assert (= result!171730 result!171648))

(assert (=> b!2462731 t!209060))

(declare-fun t!209062 () Bool)

(declare-fun tb!139125 () Bool)

(assert (=> (and b!2463221 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) t!209062) tb!139125))

(declare-fun result!171732 () Bool)

(assert (= result!171732 result!171602))

(assert (=> b!2462500 t!209062))

(declare-fun t!209064 () Bool)

(declare-fun tb!139127 () Bool)

(assert (=> (and b!2463221 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) t!209064) tb!139127))

(declare-fun result!171734 () Bool)

(assert (= result!171734 result!171696))

(assert (=> b!2463126 t!209064))

(assert (=> d!709087 t!209064))

(declare-fun tp!784701 () Bool)

(declare-fun b_and!186047 () Bool)

(assert (=> b!2463221 (= tp!784701 (and (=> t!209064 result!171734) (=> t!209060 result!171730) (=> t!209062 result!171732) (=> t!209058 result!171728) b_and!186047))))

(declare-fun e!1562348 () Bool)

(assert (=> b!2462752 (= tp!784421 e!1562348)))

(declare-fun e!1562345 () Bool)

(assert (=> b!2463221 (= e!1562345 (and tp!784702 tp!784701))))

(declare-fun tp!784703 () Bool)

(declare-fun e!1562344 () Bool)

(declare-fun b!2463220 () Bool)

(assert (=> b!2463220 (= e!1562344 (and tp!784703 (inv!38755 (tag!4949 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (inv!38758 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) e!1562345))))

(declare-fun tp!784700 () Bool)

(declare-fun b!2463219 () Bool)

(declare-fun e!1562346 () Bool)

(assert (=> b!2463219 (= e!1562346 (and (inv!21 (value!142487 (h!34075 (t!208931 (t!208931 l!6611))))) e!1562344 tp!784700))))

(declare-fun b!2463218 () Bool)

(declare-fun tp!784699 () Bool)

(assert (=> b!2463218 (= e!1562348 (and (inv!38759 (h!34075 (t!208931 (t!208931 l!6611)))) e!1562346 tp!784699))))

(assert (= b!2463220 b!2463221))

(assert (= b!2463219 b!2463220))

(assert (= b!2463218 b!2463219))

(assert (= (and b!2462752 ((_ is Cons!28674) (t!208931 (t!208931 l!6611)))) b!2463218))

(declare-fun m!2832493 () Bool)

(assert (=> b!2463220 m!2832493))

(declare-fun m!2832495 () Bool)

(assert (=> b!2463220 m!2832495))

(declare-fun m!2832497 () Bool)

(assert (=> b!2463219 m!2832497))

(declare-fun m!2832499 () Bool)

(assert (=> b!2463218 m!2832499))

(declare-fun b!2463224 () Bool)

(declare-fun b_free!70785 () Bool)

(declare-fun b_next!71489 () Bool)

(assert (=> b!2463224 (= b_free!70785 (not b_next!71489))))

(declare-fun tp!784707 () Bool)

(declare-fun b_and!186049 () Bool)

(assert (=> b!2463224 (= tp!784707 b_and!186049)))

(declare-fun b_free!70787 () Bool)

(declare-fun b_next!71491 () Bool)

(assert (=> b!2463224 (= b_free!70787 (not b_next!71491))))

(declare-fun tb!139129 () Bool)

(declare-fun t!209066 () Bool)

(assert (=> (and b!2463224 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) t!209066) tb!139129))

(declare-fun result!171736 () Bool)

(assert (= result!171736 result!171656))

(assert (=> b!2462734 t!209066))

(declare-fun t!209068 () Bool)

(declare-fun tb!139131 () Bool)

(assert (=> (and b!2463224 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) t!209068) tb!139131))

(declare-fun result!171738 () Bool)

(assert (= result!171738 result!171648))

(assert (=> b!2462731 t!209068))

(declare-fun tb!139133 () Bool)

(declare-fun t!209070 () Bool)

(assert (=> (and b!2463224 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) t!209070) tb!139133))

(declare-fun result!171740 () Bool)

(assert (= result!171740 result!171602))

(assert (=> b!2462500 t!209070))

(declare-fun t!209072 () Bool)

(declare-fun tb!139135 () Bool)

(assert (=> (and b!2463224 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) t!209072) tb!139135))

(declare-fun result!171742 () Bool)

(assert (= result!171742 result!171696))

(assert (=> b!2463126 t!209072))

(assert (=> d!709087 t!209072))

(declare-fun b_and!186051 () Bool)

(declare-fun tp!784706 () Bool)

(assert (=> b!2463224 (= tp!784706 (and (=> t!209072 result!171742) (=> t!209070 result!171740) (=> t!209066 result!171736) (=> t!209068 result!171738) b_and!186051))))

(declare-fun e!1562351 () Bool)

(assert (=> b!2463224 (= e!1562351 (and tp!784707 tp!784706))))

(declare-fun b!2463223 () Bool)

(declare-fun tp!784704 () Bool)

(declare-fun e!1562349 () Bool)

(assert (=> b!2463223 (= e!1562349 (and tp!784704 (inv!38755 (tag!4949 (h!34076 (t!208932 (t!208932 rules!4472))))) (inv!38758 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) e!1562351))))

(declare-fun b!2463222 () Bool)

(declare-fun e!1562350 () Bool)

(declare-fun tp!784705 () Bool)

(assert (=> b!2463222 (= e!1562350 (and e!1562349 tp!784705))))

(assert (=> b!2462792 (= tp!784467 e!1562350)))

(assert (= b!2463223 b!2463224))

(assert (= b!2463222 b!2463223))

(assert (= (and b!2462792 ((_ is Cons!28675) (t!208932 (t!208932 rules!4472)))) b!2463222))

(declare-fun m!2832501 () Bool)

(assert (=> b!2463223 m!2832501))

(declare-fun m!2832503 () Bool)

(assert (=> b!2463223 m!2832503))

(declare-fun b!2463225 () Bool)

(declare-fun e!1562353 () Bool)

(declare-fun tp!784708 () Bool)

(assert (=> b!2463225 (= e!1562353 (and tp_is_empty!11931 tp!784708))))

(assert (=> b!2462753 (= tp!784422 e!1562353)))

(assert (= (and b!2462753 ((_ is Cons!28673) (originalCharacters!5225 (h!34075 (t!208931 l!6611))))) b!2463225))

(declare-fun b!2463226 () Bool)

(declare-fun e!1562354 () Bool)

(declare-fun tp!784709 () Bool)

(assert (=> b!2463226 (= e!1562354 (and tp_is_empty!11931 tp!784709))))

(assert (=> b!2462783 (= tp!784457 e!1562354)))

(assert (= (and b!2462783 ((_ is Cons!28673) (t!208930 (originalCharacters!5225 t1!67)))) b!2463226))

(declare-fun b!2463228 () Bool)

(declare-fun e!1562355 () Bool)

(declare-fun tp!784712 () Bool)

(declare-fun tp!784714 () Bool)

(assert (=> b!2463228 (= e!1562355 (and tp!784712 tp!784714))))

(declare-fun b!2463229 () Bool)

(declare-fun tp!784713 () Bool)

(assert (=> b!2463229 (= e!1562355 tp!784713)))

(declare-fun b!2463227 () Bool)

(assert (=> b!2463227 (= e!1562355 tp_is_empty!11931)))

(declare-fun b!2463230 () Bool)

(declare-fun tp!784710 () Bool)

(declare-fun tp!784711 () Bool)

(assert (=> b!2463230 (= e!1562355 (and tp!784710 tp!784711))))

(assert (=> b!2462774 (= tp!784442 e!1562355)))

(assert (= (and b!2462774 ((_ is ElementMatch!7247) (regOne!15007 (regex!4459 (rule!6817 t1!67))))) b!2463227))

(assert (= (and b!2462774 ((_ is Concat!11893) (regOne!15007 (regex!4459 (rule!6817 t1!67))))) b!2463228))

(assert (= (and b!2462774 ((_ is Star!7247) (regOne!15007 (regex!4459 (rule!6817 t1!67))))) b!2463229))

(assert (= (and b!2462774 ((_ is Union!7247) (regOne!15007 (regex!4459 (rule!6817 t1!67))))) b!2463230))

(declare-fun b!2463232 () Bool)

(declare-fun e!1562356 () Bool)

(declare-fun tp!784717 () Bool)

(declare-fun tp!784719 () Bool)

(assert (=> b!2463232 (= e!1562356 (and tp!784717 tp!784719))))

(declare-fun b!2463233 () Bool)

(declare-fun tp!784718 () Bool)

(assert (=> b!2463233 (= e!1562356 tp!784718)))

(declare-fun b!2463231 () Bool)

(assert (=> b!2463231 (= e!1562356 tp_is_empty!11931)))

(declare-fun b!2463234 () Bool)

(declare-fun tp!784715 () Bool)

(declare-fun tp!784716 () Bool)

(assert (=> b!2463234 (= e!1562356 (and tp!784715 tp!784716))))

(assert (=> b!2462774 (= tp!784443 e!1562356)))

(assert (= (and b!2462774 ((_ is ElementMatch!7247) (regTwo!15007 (regex!4459 (rule!6817 t1!67))))) b!2463231))

(assert (= (and b!2462774 ((_ is Concat!11893) (regTwo!15007 (regex!4459 (rule!6817 t1!67))))) b!2463232))

(assert (= (and b!2462774 ((_ is Star!7247) (regTwo!15007 (regex!4459 (rule!6817 t1!67))))) b!2463233))

(assert (= (and b!2462774 ((_ is Union!7247) (regTwo!15007 (regex!4459 (rule!6817 t1!67))))) b!2463234))

(declare-fun b!2463236 () Bool)

(declare-fun e!1562357 () Bool)

(declare-fun tp!784722 () Bool)

(declare-fun tp!784724 () Bool)

(assert (=> b!2463236 (= e!1562357 (and tp!784722 tp!784724))))

(declare-fun b!2463237 () Bool)

(declare-fun tp!784723 () Bool)

(assert (=> b!2463237 (= e!1562357 tp!784723)))

(declare-fun b!2463235 () Bool)

(assert (=> b!2463235 (= e!1562357 tp_is_empty!11931)))

(declare-fun b!2463238 () Bool)

(declare-fun tp!784720 () Bool)

(declare-fun tp!784721 () Bool)

(assert (=> b!2463238 (= e!1562357 (and tp!784720 tp!784721))))

(assert (=> b!2462772 (= tp!784444 e!1562357)))

(assert (= (and b!2462772 ((_ is ElementMatch!7247) (regOne!15006 (regex!4459 (rule!6817 t1!67))))) b!2463235))

(assert (= (and b!2462772 ((_ is Concat!11893) (regOne!15006 (regex!4459 (rule!6817 t1!67))))) b!2463236))

(assert (= (and b!2462772 ((_ is Star!7247) (regOne!15006 (regex!4459 (rule!6817 t1!67))))) b!2463237))

(assert (= (and b!2462772 ((_ is Union!7247) (regOne!15006 (regex!4459 (rule!6817 t1!67))))) b!2463238))

(declare-fun b!2463240 () Bool)

(declare-fun e!1562358 () Bool)

(declare-fun tp!784727 () Bool)

(declare-fun tp!784729 () Bool)

(assert (=> b!2463240 (= e!1562358 (and tp!784727 tp!784729))))

(declare-fun b!2463241 () Bool)

(declare-fun tp!784728 () Bool)

(assert (=> b!2463241 (= e!1562358 tp!784728)))

(declare-fun b!2463239 () Bool)

(assert (=> b!2463239 (= e!1562358 tp_is_empty!11931)))

(declare-fun b!2463242 () Bool)

(declare-fun tp!784725 () Bool)

(declare-fun tp!784726 () Bool)

(assert (=> b!2463242 (= e!1562358 (and tp!784725 tp!784726))))

(assert (=> b!2462772 (= tp!784446 e!1562358)))

(assert (= (and b!2462772 ((_ is ElementMatch!7247) (regTwo!15006 (regex!4459 (rule!6817 t1!67))))) b!2463239))

(assert (= (and b!2462772 ((_ is Concat!11893) (regTwo!15006 (regex!4459 (rule!6817 t1!67))))) b!2463240))

(assert (= (and b!2462772 ((_ is Star!7247) (regTwo!15006 (regex!4459 (rule!6817 t1!67))))) b!2463241))

(assert (= (and b!2462772 ((_ is Union!7247) (regTwo!15006 (regex!4459 (rule!6817 t1!67))))) b!2463242))

(declare-fun b!2463245 () Bool)

(declare-fun e!1562361 () Bool)

(assert (=> b!2463245 (= e!1562361 true)))

(declare-fun b!2463244 () Bool)

(declare-fun e!1562360 () Bool)

(assert (=> b!2463244 (= e!1562360 e!1562361)))

(declare-fun b!2463243 () Bool)

(declare-fun e!1562359 () Bool)

(assert (=> b!2463243 (= e!1562359 e!1562360)))

(assert (=> b!2462679 e!1562359))

(assert (= b!2463244 b!2463245))

(assert (= b!2463243 b!2463244))

(assert (= (and b!2462679 ((_ is Cons!28675) (t!208932 rules!4472))) b!2463243))

(assert (=> b!2463245 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472))))) (dynLambda!12309 order!15525 lambda!93169))))

(assert (=> b!2463245 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472))))) (dynLambda!12309 order!15525 lambda!93169))))

(declare-fun b!2463247 () Bool)

(declare-fun e!1562362 () Bool)

(declare-fun tp!784732 () Bool)

(declare-fun tp!784734 () Bool)

(assert (=> b!2463247 (= e!1562362 (and tp!784732 tp!784734))))

(declare-fun b!2463248 () Bool)

(declare-fun tp!784733 () Bool)

(assert (=> b!2463248 (= e!1562362 tp!784733)))

(declare-fun b!2463246 () Bool)

(assert (=> b!2463246 (= e!1562362 tp_is_empty!11931)))

(declare-fun b!2463249 () Bool)

(declare-fun tp!784730 () Bool)

(declare-fun tp!784731 () Bool)

(assert (=> b!2463249 (= e!1562362 (and tp!784730 tp!784731))))

(assert (=> b!2462782 (= tp!784452 e!1562362)))

(assert (= (and b!2462782 ((_ is ElementMatch!7247) (regOne!15007 (regex!4459 (h!34076 rules!4472))))) b!2463246))

(assert (= (and b!2462782 ((_ is Concat!11893) (regOne!15007 (regex!4459 (h!34076 rules!4472))))) b!2463247))

(assert (= (and b!2462782 ((_ is Star!7247) (regOne!15007 (regex!4459 (h!34076 rules!4472))))) b!2463248))

(assert (= (and b!2462782 ((_ is Union!7247) (regOne!15007 (regex!4459 (h!34076 rules!4472))))) b!2463249))

(declare-fun b!2463251 () Bool)

(declare-fun e!1562363 () Bool)

(declare-fun tp!784737 () Bool)

(declare-fun tp!784739 () Bool)

(assert (=> b!2463251 (= e!1562363 (and tp!784737 tp!784739))))

(declare-fun b!2463252 () Bool)

(declare-fun tp!784738 () Bool)

(assert (=> b!2463252 (= e!1562363 tp!784738)))

(declare-fun b!2463250 () Bool)

(assert (=> b!2463250 (= e!1562363 tp_is_empty!11931)))

(declare-fun b!2463253 () Bool)

(declare-fun tp!784735 () Bool)

(declare-fun tp!784736 () Bool)

(assert (=> b!2463253 (= e!1562363 (and tp!784735 tp!784736))))

(assert (=> b!2462782 (= tp!784453 e!1562363)))

(assert (= (and b!2462782 ((_ is ElementMatch!7247) (regTwo!15007 (regex!4459 (h!34076 rules!4472))))) b!2463250))

(assert (= (and b!2462782 ((_ is Concat!11893) (regTwo!15007 (regex!4459 (h!34076 rules!4472))))) b!2463251))

(assert (= (and b!2462782 ((_ is Star!7247) (regTwo!15007 (regex!4459 (h!34076 rules!4472))))) b!2463252))

(assert (= (and b!2462782 ((_ is Union!7247) (regTwo!15007 (regex!4459 (h!34076 rules!4472))))) b!2463253))

(declare-fun e!1562364 () Bool)

(declare-fun b!2463254 () Bool)

(declare-fun tp!784740 () Bool)

(declare-fun tp!784742 () Bool)

(assert (=> b!2463254 (= e!1562364 (and (inv!38762 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) tp!784740 (inv!38762 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) tp!784742))))

(declare-fun b!2463256 () Bool)

(declare-fun e!1562365 () Bool)

(declare-fun tp!784741 () Bool)

(assert (=> b!2463256 (= e!1562365 tp!784741)))

(declare-fun b!2463255 () Bool)

(assert (=> b!2463255 (= e!1562364 (and (inv!38768 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) e!1562365))))

(assert (=> b!2462736 (= tp!784407 (and (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) e!1562364))))

(assert (= (and b!2462736 ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) b!2463254))

(assert (= b!2463255 b!2463256))

(assert (= (and b!2462736 ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) b!2463255))

(declare-fun m!2832505 () Bool)

(assert (=> b!2463254 m!2832505))

(declare-fun m!2832507 () Bool)

(assert (=> b!2463254 m!2832507))

(declare-fun m!2832509 () Bool)

(assert (=> b!2463255 m!2832509))

(assert (=> b!2462736 m!2831787))

(declare-fun b!2463258 () Bool)

(declare-fun e!1562366 () Bool)

(declare-fun tp!784745 () Bool)

(declare-fun tp!784747 () Bool)

(assert (=> b!2463258 (= e!1562366 (and tp!784745 tp!784747))))

(declare-fun b!2463259 () Bool)

(declare-fun tp!784746 () Bool)

(assert (=> b!2463259 (= e!1562366 tp!784746)))

(declare-fun b!2463257 () Bool)

(assert (=> b!2463257 (= e!1562366 tp_is_empty!11931)))

(declare-fun b!2463260 () Bool)

(declare-fun tp!784743 () Bool)

(declare-fun tp!784744 () Bool)

(assert (=> b!2463260 (= e!1562366 (and tp!784743 tp!784744))))

(assert (=> b!2462773 (= tp!784445 e!1562366)))

(assert (= (and b!2462773 ((_ is ElementMatch!7247) (reg!7576 (regex!4459 (rule!6817 t1!67))))) b!2463257))

(assert (= (and b!2462773 ((_ is Concat!11893) (reg!7576 (regex!4459 (rule!6817 t1!67))))) b!2463258))

(assert (= (and b!2462773 ((_ is Star!7247) (reg!7576 (regex!4459 (rule!6817 t1!67))))) b!2463259))

(assert (= (and b!2462773 ((_ is Union!7247) (reg!7576 (regex!4459 (rule!6817 t1!67))))) b!2463260))

(declare-fun b_lambda!75481 () Bool)

(assert (= b_lambda!75469 (or (and b!2462465 b_free!70751 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2462445 b_free!70755 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2462794 b_free!70771 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2462453 b_free!70747 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2462755 b_free!70767) (and b!2463224 b_free!70787 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2462446 b_free!70743 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2463221 b_free!70783 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b_lambda!75481)))

(declare-fun b_lambda!75483 () Bool)

(assert (= b_lambda!75479 (or (and b!2462465 b_free!70751 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2462445 b_free!70755 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2462794 b_free!70771 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2462453 b_free!70747 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2462755 b_free!70767) (and b!2463224 b_free!70787 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2462446 b_free!70743 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (and b!2463221 b_free!70783 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b_lambda!75483)))

(declare-fun b_lambda!75485 () Bool)

(assert (= b_lambda!75471 (or d!708845 b_lambda!75485)))

(declare-fun bs!466433 () Bool)

(declare-fun d!709213 () Bool)

(assert (= bs!466433 (and d!709213 d!708845)))

(assert (=> bs!466433 (= (dynLambda!12316 lambda!93169 (h!34075 l!6611)) (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 l!6611)))))

(assert (=> bs!466433 m!2831703))

(assert (=> b!2462991 d!709213))

(check-sat (not d!709095) (not b_next!71485) (not b!2463129) tp_is_empty!11931 (not b!2463186) b_and!186037 (not b!2463167) (not b!2463086) (not b!2463205) (not d!709117) (not b!2463107) (not d!709135) (not b!2463190) (not d!709169) (not b!2463177) (not d!709203) (not b!2463256) (not b!2463149) (not d!709201) (not b!2463161) (not d!709207) (not b_next!71453) (not b_next!71487) (not b!2463247) (not d!708925) (not b_next!71447) (not d!709167) (not b_next!71445) (not b!2462898) (not b!2462895) (not b!2463254) (not d!709113) (not b!2462835) (not d!708939) b_and!186041 (not b!2463204) b_and!186045 (not b_next!71473) (not d!709157) (not bs!466433) (not b_next!71491) (not b!2463228) (not b!2463182) (not b!2462850) (not d!709209) (not b!2463194) (not b!2463211) (not b!2462942) (not b_lambda!75461) (not b!2463208) (not b!2462849) (not b!2462992) (not b!2462905) (not b_lambda!75485) (not b!2463147) (not b!2463145) (not b!2463233) (not b!2463176) (not b!2463249) (not d!709197) (not b_lambda!75457) (not d!709187) (not b!2462970) (not b!2463131) (not b!2463127) (not b!2463209) (not b_next!71489) (not b!2463255) b_and!185985 (not d!709105) (not b!2463091) (not b!2463207) (not b!2463121) (not d!709017) (not d!708943) (not b_next!71475) (not b!2463200) (not b!2462848) b_and!185913 (not b!2463136) (not b!2462972) (not d!709073) (not b!2463238) b_and!185921 b_and!186043 (not b!2463139) (not d!709205) (not b!2463196) (not b!2463199) (not b!2462961) (not b_next!71459) (not b!2463171) (not d!709115) (not b!2462837) (not b!2462733) (not d!709065) (not b!2463175) (not b!2463115) (not b!2462894) (not b!2463163) (not b!2463165) (not b!2463212) (not d!709087) (not b!2463192) b_and!186033 (not b_next!71449) (not d!709181) (not d!709075) (not b!2463159) (not b!2463201) (not b!2463191) b_and!186051 (not d!709015) (not b!2463248) (not d!709179) (not b_next!71451) (not d!708937) (not d!709103) (not d!709161) (not b!2463180) (not d!709093) b_and!185981 (not b!2463203) (not b!2463230) (not d!708983) b_and!186049 (not b!2463141) (not d!708927) (not b!2463197) (not b!2463008) (not b!2463252) (not b!2462506) (not b_next!71469) (not b!2463188) (not b!2463220) (not d!709021) (not b!2463195) (not d!709083) (not d!709175) (not b!2463225) (not b!2463241) (not b!2463144) (not b!2462941) (not b!2462976) (not b!2462965) (not b_lambda!75459) (not b!2463173) (not b!2462938) (not b!2463126) (not b!2463236) b_and!186047 b_and!186035 (not b!2463237) (not b_lambda!75481) (not d!709079) (not b!2462836) (not b!2463179) (not b!2462866) (not b_next!71471) (not d!709127) (not b!2463213) (not b!2462902) (not b!2463187) (not b!2463216) (not b!2462839) (not b!2463143) (not d!709163) (not d!708965) (not b!2462967) (not b!2463160) (not b!2463253) (not d!709023) (not b!2463181) (not d!708929) (not b!2462957) (not b_lambda!75483) (not b!2462842) (not b!2462971) b_and!185909 (not d!709193) (not d!708989) (not b!2463259) (not b!2462903) (not b!2463223) (not b!2463168) (not tb!139093) (not b!2463243) (not b_next!71457) (not b!2463137) (not b!2463217) (not b!2463232) (not b!2463184) (not b!2462962) (not d!709001) (not b!2463258) (not b!2462964) (not b!2462966) (not d!709121) (not d!709043) (not b!2463148) (not b!2463242) (not d!709045) (not b!2463085) b_and!185917 (not b!2462927) (not b!2463158) (not b!2462896) (not b!2463234) (not b!2463260) (not b!2463215) (not d!709011) (not d!709007) (not d!709191) (not b!2463164) (not b!2463169) b_and!186039 (not b!2462736) (not b!2463172) (not b!2463226) (not b!2463183) (not b_next!71455) (not b!2463218) (not b!2462963) (not d!709027) (not b!2463240) (not b!2463222) (not b!2463138) (not b!2462917) (not b!2463007) (not b!2463251) (not d!708977) (not b!2462868) (not b!2463219) (not d!709195) (not d!708961) (not d!709151) (not b!2463229) (not d!709153))
(check-sat b_and!186033 (not b_next!71451) (not b_next!71469) (not b_next!71471) b_and!185909 (not b_next!71457) b_and!185917 (not b_next!71485) b_and!186037 (not b_next!71453) (not b_next!71487) (not b_next!71447) (not b_next!71445) b_and!186041 b_and!186045 (not b_next!71473) (not b_next!71491) (not b_next!71489) b_and!185985 b_and!185913 (not b_next!71475) b_and!185921 b_and!186043 (not b_next!71459) (not b_next!71449) b_and!186051 b_and!185981 b_and!186049 b_and!186047 b_and!186035 (not b_next!71455) b_and!186039)
(get-model)

(declare-fun b!2463277 () Bool)

(declare-fun e!1562375 () List!28773)

(declare-fun list!11112 (IArray!18335) List!28773)

(assert (=> b!2463277 (= e!1562375 (list!11112 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(declare-fun b!2463276 () Bool)

(declare-fun e!1562374 () List!28773)

(assert (=> b!2463276 (= e!1562374 e!1562375)))

(declare-fun c!392997 () Bool)

(assert (=> b!2463276 (= c!392997 ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))

(declare-fun b!2463278 () Bool)

(declare-fun ++!7129 (List!28773 List!28773) List!28773)

(assert (=> b!2463278 (= e!1562375 (++!7129 (list!11110 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) (list!11110 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))))

(declare-fun b!2463275 () Bool)

(assert (=> b!2463275 (= e!1562374 Nil!28673)))

(declare-fun d!709217 () Bool)

(declare-fun c!392996 () Bool)

(assert (=> d!709217 (= c!392996 ((_ is Empty!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))

(assert (=> d!709217 (= (list!11110 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) e!1562374)))

(assert (= (and d!709217 c!392996) b!2463275))

(assert (= (and d!709217 (not c!392996)) b!2463276))

(assert (= (and b!2463276 c!392997) b!2463277))

(assert (= (and b!2463276 (not c!392997)) b!2463278))

(declare-fun m!2832527 () Bool)

(assert (=> b!2463277 m!2832527))

(declare-fun m!2832529 () Bool)

(assert (=> b!2463278 m!2832529))

(declare-fun m!2832531 () Bool)

(assert (=> b!2463278 m!2832531))

(assert (=> b!2463278 m!2832529))

(assert (=> b!2463278 m!2832531))

(declare-fun m!2832533 () Bool)

(assert (=> b!2463278 m!2832533))

(assert (=> d!709073 d!709217))

(declare-fun d!709229 () Bool)

(declare-fun lt!881471 () Bool)

(assert (=> d!709229 (= lt!881471 (select (content!3949 (t!208931 l!6611)) lt!881315))))

(declare-fun e!1562380 () Bool)

(assert (=> d!709229 (= lt!881471 e!1562380)))

(declare-fun res!1043709 () Bool)

(assert (=> d!709229 (=> (not res!1043709) (not e!1562380))))

(assert (=> d!709229 (= res!1043709 ((_ is Cons!28674) (t!208931 l!6611)))))

(assert (=> d!709229 (= (contains!4893 (t!208931 l!6611) lt!881315) lt!881471)))

(declare-fun b!2463284 () Bool)

(declare-fun e!1562379 () Bool)

(assert (=> b!2463284 (= e!1562380 e!1562379)))

(declare-fun res!1043710 () Bool)

(assert (=> b!2463284 (=> res!1043710 e!1562379)))

(assert (=> b!2463284 (= res!1043710 (= (h!34075 (t!208931 l!6611)) lt!881315))))

(declare-fun b!2463285 () Bool)

(assert (=> b!2463285 (= e!1562379 (contains!4893 (t!208931 (t!208931 l!6611)) lt!881315))))

(assert (= (and d!709229 res!1043709) b!2463284))

(assert (= (and b!2463284 (not res!1043710)) b!2463285))

(declare-fun m!2832535 () Bool)

(assert (=> d!709229 m!2832535))

(declare-fun m!2832537 () Bool)

(assert (=> d!709229 m!2832537))

(declare-fun m!2832539 () Bool)

(assert (=> b!2463285 m!2832539))

(assert (=> b!2462957 d!709229))

(declare-fun d!709231 () Bool)

(assert (=> d!709231 (= (inv!17 (value!142487 (h!34075 (t!208931 l!6611)))) (= (charsToBigInt!1 (text!32963 (value!142487 (h!34075 (t!208931 l!6611))))) (value!142479 (value!142487 (h!34075 (t!208931 l!6611))))))))

(declare-fun bs!466438 () Bool)

(assert (= bs!466438 d!709231))

(declare-fun m!2832541 () Bool)

(assert (=> bs!466438 m!2832541))

(assert (=> b!2462941 d!709231))

(declare-fun d!709233 () Bool)

(declare-fun lt!881472 () Int)

(assert (=> d!709233 (>= lt!881472 0)))

(declare-fun e!1562381 () Int)

(assert (=> d!709233 (= lt!881472 e!1562381)))

(declare-fun c!392999 () Bool)

(assert (=> d!709233 (= c!392999 ((_ is Nil!28674) (t!208931 (t!208931 l!6611))))))

(assert (=> d!709233 (= (size!22315 (t!208931 (t!208931 l!6611))) lt!881472)))

(declare-fun b!2463286 () Bool)

(assert (=> b!2463286 (= e!1562381 0)))

(declare-fun b!2463287 () Bool)

(assert (=> b!2463287 (= e!1562381 (+ 1 (size!22315 (t!208931 (t!208931 (t!208931 l!6611))))))))

(assert (= (and d!709233 c!392999) b!2463286))

(assert (= (and d!709233 (not c!392999)) b!2463287))

(declare-fun m!2832543 () Bool)

(assert (=> b!2463287 m!2832543))

(assert (=> b!2463131 d!709233))

(declare-fun d!709235 () Bool)

(assert (=> d!709235 (= (inv!38768 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) (<= (size!22319 (innerList!9225 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) 2147483647))))

(declare-fun bs!466439 () Bool)

(assert (= bs!466439 d!709235))

(declare-fun m!2832561 () Bool)

(assert (=> bs!466439 m!2832561))

(assert (=> b!2463255 d!709235))

(declare-fun d!709237 () Bool)

(assert (=> d!709237 (= (head!5625 (tail!3898 l!6611)) (h!34075 (tail!3898 l!6611)))))

(assert (=> b!2462971 d!709237))

(declare-fun d!709239 () Bool)

(declare-fun choose!14568 (Int) Bool)

(assert (=> d!709239 (= (Forall!1135 lambda!93201) (choose!14568 lambda!93201))))

(declare-fun bs!466441 () Bool)

(assert (= bs!466441 d!709239))

(declare-fun m!2832571 () Bool)

(assert (=> bs!466441 m!2832571))

(assert (=> d!709195 d!709239))

(declare-fun d!709245 () Bool)

(declare-fun res!1043712 () Bool)

(declare-fun e!1562383 () Bool)

(assert (=> d!709245 (=> res!1043712 e!1562383)))

(assert (=> d!709245 (= res!1043712 (or (not ((_ is Cons!28674) (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))) (not ((_ is Cons!28674) (t!208931 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))))))

(assert (=> d!709245 (= (tokensListTwoByTwoPredicateSeparableList!595 thiss!27932 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))) rules!4472) e!1562383)))

(declare-fun b!2463289 () Bool)

(declare-fun e!1562384 () Bool)

(assert (=> b!2463289 (= e!1562383 e!1562384)))

(declare-fun res!1043713 () Bool)

(assert (=> b!2463289 (=> (not res!1043713) (not e!1562384))))

(assert (=> b!2463289 (= res!1043713 (separableTokensPredicate!836 thiss!27932 (h!34075 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))) (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))) rules!4472))))

(declare-fun lt!881479 () Unit!42006)

(declare-fun Unit!42017 () Unit!42006)

(assert (=> b!2463289 (= lt!881479 Unit!42017)))

(assert (=> b!2463289 (> (size!22321 (charsOf!2813 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))) 0)))

(declare-fun lt!881478 () Unit!42006)

(declare-fun Unit!42018 () Unit!42006)

(assert (=> b!2463289 (= lt!881478 Unit!42018)))

(assert (=> b!2463289 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))))

(declare-fun lt!881481 () Unit!42006)

(declare-fun Unit!42019 () Unit!42006)

(assert (=> b!2463289 (= lt!881481 Unit!42019)))

(assert (=> b!2463289 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))))

(declare-fun lt!881480 () Unit!42006)

(declare-fun lt!881477 () Unit!42006)

(assert (=> b!2463289 (= lt!881480 lt!881477)))

(assert (=> b!2463289 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))))

(assert (=> b!2463289 (= lt!881477 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 thiss!27932 rules!4472 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))) (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))))))

(declare-fun lt!881476 () Unit!42006)

(declare-fun lt!881475 () Unit!42006)

(assert (=> b!2463289 (= lt!881476 lt!881475)))

(assert (=> b!2463289 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))))

(assert (=> b!2463289 (= lt!881475 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 thiss!27932 rules!4472 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))) (h!34075 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))))

(declare-fun b!2463290 () Bool)

(assert (=> b!2463290 (= e!1562384 (tokensListTwoByTwoPredicateSeparableList!595 thiss!27932 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (t!208931 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) rules!4472))))

(assert (= (and d!709245 (not res!1043712)) b!2463289))

(assert (= (and b!2463289 res!1043713) b!2463290))

(declare-fun m!2832579 () Bool)

(assert (=> b!2463289 m!2832579))

(declare-fun m!2832581 () Bool)

(assert (=> b!2463289 m!2832581))

(declare-fun m!2832583 () Bool)

(assert (=> b!2463289 m!2832583))

(declare-fun m!2832585 () Bool)

(assert (=> b!2463289 m!2832585))

(declare-fun m!2832587 () Bool)

(assert (=> b!2463289 m!2832587))

(declare-fun m!2832589 () Bool)

(assert (=> b!2463289 m!2832589))

(assert (=> b!2463289 m!2832583))

(declare-fun m!2832591 () Bool)

(assert (=> b!2463289 m!2832591))

(declare-fun m!2832593 () Bool)

(assert (=> b!2463290 m!2832593))

(assert (=> b!2463008 d!709245))

(declare-fun bs!466442 () Bool)

(declare-fun d!709249 () Bool)

(assert (= bs!466442 (and d!709249 d!709163)))

(declare-fun lambda!93204 () Int)

(assert (=> bs!466442 (= lambda!93204 lambda!93197)))

(assert (=> d!709249 true))

(declare-fun lt!881484 () Bool)

(assert (=> d!709249 (= lt!881484 (forall!5890 rules!4472 lambda!93204))))

(declare-fun e!1562393 () Bool)

(assert (=> d!709249 (= lt!881484 e!1562393)))

(declare-fun res!1043718 () Bool)

(assert (=> d!709249 (=> res!1043718 e!1562393)))

(assert (=> d!709249 (= res!1043718 (not ((_ is Cons!28675) rules!4472)))))

(assert (=> d!709249 (= (rulesValidInductive!1582 thiss!27932 rules!4472) lt!881484)))

(declare-fun b!2463303 () Bool)

(declare-fun e!1562394 () Bool)

(assert (=> b!2463303 (= e!1562393 e!1562394)))

(declare-fun res!1043719 () Bool)

(assert (=> b!2463303 (=> (not res!1043719) (not e!1562394))))

(declare-fun ruleValid!1512 (LexerInterface!4056 Rule!8718) Bool)

(assert (=> b!2463303 (= res!1043719 (ruleValid!1512 thiss!27932 (h!34076 rules!4472)))))

(declare-fun b!2463304 () Bool)

(assert (=> b!2463304 (= e!1562394 (rulesValidInductive!1582 thiss!27932 (t!208932 rules!4472)))))

(assert (= (and d!709249 (not res!1043718)) b!2463303))

(assert (= (and b!2463303 res!1043719) b!2463304))

(declare-fun m!2832595 () Bool)

(assert (=> d!709249 m!2832595))

(declare-fun m!2832597 () Bool)

(assert (=> b!2463303 m!2832597))

(declare-fun m!2832599 () Bool)

(assert (=> b!2463304 m!2832599))

(assert (=> d!709163 d!709249))

(declare-fun d!709251 () Bool)

(declare-fun res!1043724 () Bool)

(declare-fun e!1562401 () Bool)

(assert (=> d!709251 (=> res!1043724 e!1562401)))

(assert (=> d!709251 (= res!1043724 ((_ is Nil!28675) rules!4472))))

(assert (=> d!709251 (= (forall!5890 rules!4472 lambda!93197) e!1562401)))

(declare-fun b!2463313 () Bool)

(declare-fun e!1562402 () Bool)

(assert (=> b!2463313 (= e!1562401 e!1562402)))

(declare-fun res!1043725 () Bool)

(assert (=> b!2463313 (=> (not res!1043725) (not e!1562402))))

(declare-fun dynLambda!12317 (Int Rule!8718) Bool)

(assert (=> b!2463313 (= res!1043725 (dynLambda!12317 lambda!93197 (h!34076 rules!4472)))))

(declare-fun b!2463314 () Bool)

(assert (=> b!2463314 (= e!1562402 (forall!5890 (t!208932 rules!4472) lambda!93197))))

(assert (= (and d!709251 (not res!1043724)) b!2463313))

(assert (= (and b!2463313 res!1043725) b!2463314))

(declare-fun b_lambda!75487 () Bool)

(assert (=> (not b_lambda!75487) (not b!2463313)))

(declare-fun m!2832609 () Bool)

(assert (=> b!2463313 m!2832609))

(declare-fun m!2832611 () Bool)

(assert (=> b!2463314 m!2832611))

(assert (=> d!709163 d!709251))

(declare-fun d!709255 () Bool)

(assert (=> d!709255 (= (inv!38763 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611))))) (isBalanced!2799 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611)))))))))

(declare-fun bs!466443 () Bool)

(assert (= bs!466443 d!709255))

(declare-fun m!2832613 () Bool)

(assert (=> bs!466443 m!2832613))

(assert (=> tb!139093 d!709255))

(declare-fun d!709257 () Bool)

(declare-fun lt!881485 () Int)

(assert (=> d!709257 (>= lt!881485 0)))

(declare-fun e!1562403 () Int)

(assert (=> d!709257 (= lt!881485 e!1562403)))

(declare-fun c!393006 () Bool)

(assert (=> d!709257 (= c!393006 ((_ is Nil!28673) (t!208930 (originalCharacters!5225 t2!67))))))

(assert (=> d!709257 (= (size!22319 (t!208930 (originalCharacters!5225 t2!67))) lt!881485)))

(declare-fun b!2463315 () Bool)

(assert (=> b!2463315 (= e!1562403 0)))

(declare-fun b!2463316 () Bool)

(assert (=> b!2463316 (= e!1562403 (+ 1 (size!22319 (t!208930 (t!208930 (originalCharacters!5225 t2!67))))))))

(assert (= (and d!709257 c!393006) b!2463315))

(assert (= (and d!709257 (not c!393006)) b!2463316))

(declare-fun m!2832615 () Bool)

(assert (=> b!2463316 m!2832615))

(assert (=> b!2463129 d!709257))

(declare-fun d!709259 () Bool)

(declare-fun choose!14569 (Int) Bool)

(assert (=> d!709259 (= (Forall2!745 lambda!93191) (choose!14569 lambda!93191))))

(declare-fun bs!466444 () Bool)

(assert (= bs!466444 d!709259))

(declare-fun m!2832617 () Bool)

(assert (=> bs!466444 m!2832617))

(assert (=> d!709127 d!709259))

(declare-fun d!709261 () Bool)

(declare-fun c!393009 () Bool)

(assert (=> d!709261 (= c!393009 ((_ is Nil!28672) (text!32964 (value!142487 (h!34075 l!6611)))))))

(declare-fun e!1562406 () Int)

(assert (=> d!709261 (= (charsToBigInt!0 (text!32964 (value!142487 (h!34075 l!6611))) 0) e!1562406)))

(declare-fun b!2463321 () Bool)

(assert (=> b!2463321 (= e!1562406 0)))

(declare-fun b!2463322 () Bool)

(declare-fun charToBigInt!0 ((_ BitVec 16)) Int)

(assert (=> b!2463322 (= e!1562406 (charsToBigInt!0 (t!208929 (text!32964 (value!142487 (h!34075 l!6611)))) (+ (* 0 10) (charToBigInt!0 (h!34073 (text!32964 (value!142487 (h!34075 l!6611))))))))))

(assert (= (and d!709261 c!393009) b!2463321))

(assert (= (and d!709261 (not c!393009)) b!2463322))

(declare-fun m!2832619 () Bool)

(assert (=> b!2463322 m!2832619))

(declare-fun m!2832621 () Bool)

(assert (=> b!2463322 m!2832621))

(assert (=> d!709191 d!709261))

(declare-fun d!709263 () Bool)

(declare-fun choose!644 (List!28772) Int)

(assert (=> d!709263 (= (charsToBigInt!1 (text!32963 (value!142487 t2!67))) (choose!644 (text!32963 (value!142487 t2!67))))))

(declare-fun bs!466445 () Bool)

(assert (= bs!466445 d!709263))

(declare-fun m!2832623 () Bool)

(assert (=> bs!466445 m!2832623))

(assert (=> d!709113 d!709263))

(declare-fun d!709265 () Bool)

(declare-fun choose!625 (List!28772) (_ BitVec 32))

(assert (=> d!709265 (= (charsToInt!0 (text!32962 (value!142487 t2!67))) (choose!625 (text!32962 (value!142487 t2!67))))))

(declare-fun bs!466446 () Bool)

(assert (= bs!466446 d!709265))

(declare-fun m!2832625 () Bool)

(assert (=> bs!466446 m!2832625))

(assert (=> d!709153 d!709265))

(declare-fun d!709267 () Bool)

(declare-fun lt!881486 () Bool)

(assert (=> d!709267 (= lt!881486 (isEmpty!16666 (list!11106 (_2!16648 lt!881439))))))

(assert (=> d!709267 (= lt!881486 (isEmpty!16670 (c!392914 (_2!16648 lt!881439))))))

(assert (=> d!709267 (= (isEmpty!16667 (_2!16648 lt!881439)) lt!881486)))

(declare-fun bs!466447 () Bool)

(assert (= bs!466447 d!709267))

(declare-fun m!2832627 () Bool)

(assert (=> bs!466447 m!2832627))

(assert (=> bs!466447 m!2832627))

(declare-fun m!2832629 () Bool)

(assert (=> bs!466447 m!2832629))

(declare-fun m!2832631 () Bool)

(assert (=> bs!466447 m!2832631))

(assert (=> b!2462966 d!709267))

(assert (=> b!2462506 d!709025))

(declare-fun bs!466448 () Bool)

(declare-fun d!709269 () Bool)

(assert (= bs!466448 (and d!709269 d!708845)))

(declare-fun lambda!93205 () Int)

(assert (=> bs!466448 (= lambda!93205 lambda!93169)))

(declare-fun bs!466449 () Bool)

(assert (= bs!466449 (and d!709269 d!709169)))

(assert (=> bs!466449 (= lambda!93205 lambda!93199)))

(declare-fun b!2463333 () Bool)

(declare-fun e!1562413 () Bool)

(assert (=> b!2463333 (= e!1562413 true)))

(declare-fun b!2463332 () Bool)

(declare-fun e!1562412 () Bool)

(assert (=> b!2463332 (= e!1562412 e!1562413)))

(declare-fun b!2463331 () Bool)

(declare-fun e!1562411 () Bool)

(assert (=> b!2463331 (= e!1562411 e!1562412)))

(assert (=> d!709269 e!1562411))

(assert (= b!2463332 b!2463333))

(assert (= b!2463331 b!2463332))

(assert (= (and d!709269 ((_ is Cons!28675) rules!4472)) b!2463331))

(assert (=> b!2463333 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (h!34076 rules!4472)))) (dynLambda!12309 order!15525 lambda!93205))))

(assert (=> b!2463333 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (h!34076 rules!4472)))) (dynLambda!12309 order!15525 lambda!93205))))

(assert (=> d!709269 true))

(declare-fun lt!881487 () Bool)

(assert (=> d!709269 (= lt!881487 (forall!5889 (t!208931 (t!208931 l!6611)) lambda!93205))))

(declare-fun e!1562409 () Bool)

(assert (=> d!709269 (= lt!881487 e!1562409)))

(declare-fun res!1043733 () Bool)

(assert (=> d!709269 (=> res!1043733 e!1562409)))

(assert (=> d!709269 (= res!1043733 (not ((_ is Cons!28674) (t!208931 (t!208931 l!6611)))))))

(assert (=> d!709269 (not (isEmpty!16663 rules!4472))))

(assert (=> d!709269 (= (rulesProduceEachTokenIndividuallyList!1372 thiss!27932 rules!4472 (t!208931 (t!208931 l!6611))) lt!881487)))

(declare-fun b!2463329 () Bool)

(declare-fun e!1562410 () Bool)

(assert (=> b!2463329 (= e!1562409 e!1562410)))

(declare-fun res!1043732 () Bool)

(assert (=> b!2463329 (=> (not res!1043732) (not e!1562410))))

(assert (=> b!2463329 (= res!1043732 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 (t!208931 l!6611)))))))

(declare-fun b!2463330 () Bool)

(assert (=> b!2463330 (= e!1562410 (rulesProduceEachTokenIndividuallyList!1372 thiss!27932 rules!4472 (t!208931 (t!208931 (t!208931 l!6611)))))))

(assert (= (and d!709269 (not res!1043733)) b!2463329))

(assert (= (and b!2463329 res!1043732) b!2463330))

(declare-fun m!2832633 () Bool)

(assert (=> d!709269 m!2832633))

(assert (=> d!709269 m!2831465))

(declare-fun m!2832635 () Bool)

(assert (=> b!2463329 m!2832635))

(declare-fun m!2832637 () Bool)

(assert (=> b!2463330 m!2832637))

(assert (=> b!2463086 d!709269))

(declare-fun d!709271 () Bool)

(declare-fun lt!881488 () Bool)

(assert (=> d!709271 (= lt!881488 (select (content!3949 (tail!3898 l!6611)) lt!881442))))

(declare-fun e!1562416 () Bool)

(assert (=> d!709271 (= lt!881488 e!1562416)))

(declare-fun res!1043736 () Bool)

(assert (=> d!709271 (=> (not res!1043736) (not e!1562416))))

(assert (=> d!709271 (= res!1043736 ((_ is Cons!28674) (tail!3898 l!6611)))))

(assert (=> d!709271 (= (contains!4893 (tail!3898 l!6611) lt!881442) lt!881488)))

(declare-fun b!2463337 () Bool)

(declare-fun e!1562415 () Bool)

(assert (=> b!2463337 (= e!1562416 e!1562415)))

(declare-fun res!1043738 () Bool)

(assert (=> b!2463337 (=> res!1043738 e!1562415)))

(assert (=> b!2463337 (= res!1043738 (= (h!34075 (tail!3898 l!6611)) lt!881442))))

(declare-fun b!2463338 () Bool)

(assert (=> b!2463338 (= e!1562415 (contains!4893 (t!208931 (tail!3898 l!6611)) lt!881442))))

(assert (= (and d!709271 res!1043736) b!2463337))

(assert (= (and b!2463337 (not res!1043738)) b!2463338))

(assert (=> d!709271 m!2831723))

(declare-fun m!2832639 () Bool)

(assert (=> d!709271 m!2832639))

(declare-fun m!2832641 () Bool)

(assert (=> d!709271 m!2832641))

(declare-fun m!2832643 () Bool)

(assert (=> b!2463338 m!2832643))

(assert (=> d!709115 d!709271))

(declare-fun d!709273 () Bool)

(assert (=> d!709273 (= (list!11106 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611))))) (list!11110 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611)))))))))

(declare-fun bs!466450 () Bool)

(assert (= bs!466450 d!709273))

(declare-fun m!2832645 () Bool)

(assert (=> bs!466450 m!2832645))

(assert (=> b!2463126 d!709273))

(declare-fun d!709275 () Bool)

(declare-fun c!393010 () Bool)

(assert (=> d!709275 (= c!393010 ((_ is Node!9165) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(declare-fun e!1562417 () Bool)

(assert (=> d!709275 (= (inv!38762 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) e!1562417)))

(declare-fun b!2463339 () Bool)

(assert (=> b!2463339 (= e!1562417 (inv!38764 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(declare-fun b!2463340 () Bool)

(declare-fun e!1562418 () Bool)

(assert (=> b!2463340 (= e!1562417 e!1562418)))

(declare-fun res!1043739 () Bool)

(assert (=> b!2463340 (= res!1043739 (not ((_ is Leaf!13702) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))))

(assert (=> b!2463340 (=> res!1043739 e!1562418)))

(declare-fun b!2463341 () Bool)

(assert (=> b!2463341 (= e!1562418 (inv!38765 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(assert (= (and d!709275 c!393010) b!2463339))

(assert (= (and d!709275 (not c!393010)) b!2463340))

(assert (= (and b!2463340 (not res!1043739)) b!2463341))

(declare-fun m!2832653 () Bool)

(assert (=> b!2463339 m!2832653))

(declare-fun m!2832657 () Bool)

(assert (=> b!2463341 m!2832657))

(assert (=> b!2463182 d!709275))

(declare-fun d!709277 () Bool)

(declare-fun c!393011 () Bool)

(assert (=> d!709277 (= c!393011 ((_ is Node!9165) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(declare-fun e!1562419 () Bool)

(assert (=> d!709277 (= (inv!38762 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) e!1562419)))

(declare-fun b!2463342 () Bool)

(assert (=> b!2463342 (= e!1562419 (inv!38764 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(declare-fun b!2463343 () Bool)

(declare-fun e!1562420 () Bool)

(assert (=> b!2463343 (= e!1562419 e!1562420)))

(declare-fun res!1043740 () Bool)

(assert (=> b!2463343 (= res!1043740 (not ((_ is Leaf!13702) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))))

(assert (=> b!2463343 (=> res!1043740 e!1562420)))

(declare-fun b!2463344 () Bool)

(assert (=> b!2463344 (= e!1562420 (inv!38765 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(assert (= (and d!709277 c!393011) b!2463342))

(assert (= (and d!709277 (not c!393011)) b!2463343))

(assert (= (and b!2463343 (not res!1043740)) b!2463344))

(declare-fun m!2832661 () Bool)

(assert (=> b!2463342 m!2832661))

(declare-fun m!2832663 () Bool)

(assert (=> b!2463344 m!2832663))

(assert (=> b!2463182 d!709277))

(declare-fun bs!466451 () Bool)

(declare-fun d!709281 () Bool)

(assert (= bs!466451 (and d!709281 d!709045)))

(declare-fun lambda!93206 () Int)

(assert (=> bs!466451 (= (= (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (rule!6817 t1!67)))) (= lambda!93206 lambda!93185))))

(declare-fun bs!466452 () Bool)

(assert (= bs!466452 (and d!709281 d!709127)))

(assert (=> bs!466452 (= (= (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (= lambda!93206 lambda!93191))))

(declare-fun bs!466453 () Bool)

(assert (= bs!466453 (and d!709281 d!709151)))

(assert (=> bs!466453 (= (= (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (rule!6817 t2!67)))) (= lambda!93206 lambda!93194))))

(declare-fun bs!466455 () Bool)

(assert (= bs!466455 (and d!709281 d!709167)))

(assert (=> bs!466455 (= (= (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (h!34076 rules!4472)))) (= lambda!93206 lambda!93198))))

(assert (=> d!709281 true))

(assert (=> d!709281 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472))))) (dynLambda!12314 order!15535 lambda!93206))))

(assert (=> d!709281 (= (equivClasses!1745 (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472))))) (Forall2!745 lambda!93206))))

(declare-fun bs!466456 () Bool)

(assert (= bs!466456 d!709281))

(declare-fun m!2832667 () Bool)

(assert (=> bs!466456 m!2832667))

(assert (=> b!2463115 d!709281))

(declare-fun d!709285 () Bool)

(assert (=> d!709285 (= (list!11106 lt!881394) (list!11110 (c!392914 lt!881394)))))

(declare-fun bs!466458 () Bool)

(assert (= bs!466458 d!709285))

(declare-fun m!2832671 () Bool)

(assert (=> bs!466458 m!2832671))

(assert (=> d!709011 d!709285))

(declare-fun d!709287 () Bool)

(declare-fun c!393014 () Bool)

(assert (=> d!709287 (= c!393014 ((_ is Cons!28674) (list!11107 (singletonSeq!1977 t1!67))))))

(declare-fun e!1562423 () List!28773)

(assert (=> d!709287 (= (printList!1130 thiss!27932 (list!11107 (singletonSeq!1977 t1!67))) e!1562423)))

(declare-fun b!2463349 () Bool)

(assert (=> b!2463349 (= e!1562423 (++!7129 (list!11106 (charsOf!2813 (h!34075 (list!11107 (singletonSeq!1977 t1!67))))) (printList!1130 thiss!27932 (t!208931 (list!11107 (singletonSeq!1977 t1!67))))))))

(declare-fun b!2463350 () Bool)

(assert (=> b!2463350 (= e!1562423 Nil!28673)))

(assert (= (and d!709287 c!393014) b!2463349))

(assert (= (and d!709287 (not c!393014)) b!2463350))

(declare-fun m!2832675 () Bool)

(assert (=> b!2463349 m!2832675))

(assert (=> b!2463349 m!2832675))

(declare-fun m!2832677 () Bool)

(assert (=> b!2463349 m!2832677))

(declare-fun m!2832679 () Bool)

(assert (=> b!2463349 m!2832679))

(assert (=> b!2463349 m!2832677))

(assert (=> b!2463349 m!2832679))

(declare-fun m!2832681 () Bool)

(assert (=> b!2463349 m!2832681))

(assert (=> d!709011 d!709287))

(assert (=> d!709011 d!709021))

(declare-fun d!709291 () Bool)

(declare-fun lt!881508 () BalanceConc!17944)

(declare-fun printListTailRec!492 (LexerInterface!4056 List!28774 List!28773) List!28773)

(declare-fun dropList!823 (BalanceConc!17948 Int) List!28774)

(assert (=> d!709291 (= (list!11106 lt!881508) (printListTailRec!492 thiss!27932 (dropList!823 (singletonSeq!1977 t1!67) 0) (list!11106 (BalanceConc!17945 Empty!9165))))))

(declare-fun e!1562428 () BalanceConc!17944)

(assert (=> d!709291 (= lt!881508 e!1562428)))

(declare-fun c!393017 () Bool)

(assert (=> d!709291 (= c!393017 (>= 0 (size!22320 (singletonSeq!1977 t1!67))))))

(declare-fun e!1562429 () Bool)

(assert (=> d!709291 e!1562429))

(declare-fun res!1043743 () Bool)

(assert (=> d!709291 (=> (not res!1043743) (not e!1562429))))

(assert (=> d!709291 (= res!1043743 (>= 0 0))))

(assert (=> d!709291 (= (printTailRec!1081 thiss!27932 (singletonSeq!1977 t1!67) 0 (BalanceConc!17945 Empty!9165)) lt!881508)))

(declare-fun b!2463357 () Bool)

(assert (=> b!2463357 (= e!1562429 (<= 0 (size!22320 (singletonSeq!1977 t1!67))))))

(declare-fun b!2463358 () Bool)

(assert (=> b!2463358 (= e!1562428 (BalanceConc!17945 Empty!9165))))

(declare-fun b!2463359 () Bool)

(assert (=> b!2463359 (= e!1562428 (printTailRec!1081 thiss!27932 (singletonSeq!1977 t1!67) (+ 0 1) (++!7127 (BalanceConc!17945 Empty!9165) (charsOf!2813 (apply!6731 (singletonSeq!1977 t1!67) 0)))))))

(declare-fun lt!881507 () List!28774)

(assert (=> b!2463359 (= lt!881507 (list!11107 (singletonSeq!1977 t1!67)))))

(declare-fun lt!881510 () Unit!42006)

(declare-fun lemmaDropApply!747 (List!28774 Int) Unit!42006)

(assert (=> b!2463359 (= lt!881510 (lemmaDropApply!747 lt!881507 0))))

(declare-fun drop!1523 (List!28774 Int) List!28774)

(assert (=> b!2463359 (= (head!5625 (drop!1523 lt!881507 0)) (apply!6729 lt!881507 0))))

(declare-fun lt!881506 () Unit!42006)

(assert (=> b!2463359 (= lt!881506 lt!881510)))

(declare-fun lt!881504 () List!28774)

(assert (=> b!2463359 (= lt!881504 (list!11107 (singletonSeq!1977 t1!67)))))

(declare-fun lt!881509 () Unit!42006)

(declare-fun lemmaDropTail!723 (List!28774 Int) Unit!42006)

(assert (=> b!2463359 (= lt!881509 (lemmaDropTail!723 lt!881504 0))))

(assert (=> b!2463359 (= (tail!3898 (drop!1523 lt!881504 0)) (drop!1523 lt!881504 (+ 0 1)))))

(declare-fun lt!881505 () Unit!42006)

(assert (=> b!2463359 (= lt!881505 lt!881509)))

(assert (= (and d!709291 res!1043743) b!2463357))

(assert (= (and d!709291 c!393017) b!2463358))

(assert (= (and d!709291 (not c!393017)) b!2463359))

(assert (=> d!709291 m!2831727))

(declare-fun m!2832683 () Bool)

(assert (=> d!709291 m!2832683))

(assert (=> d!709291 m!2832683))

(declare-fun m!2832685 () Bool)

(assert (=> d!709291 m!2832685))

(declare-fun m!2832687 () Bool)

(assert (=> d!709291 m!2832687))

(declare-fun m!2832689 () Bool)

(assert (=> d!709291 m!2832689))

(assert (=> d!709291 m!2831727))

(declare-fun m!2832691 () Bool)

(assert (=> d!709291 m!2832691))

(assert (=> d!709291 m!2832685))

(assert (=> b!2463357 m!2831727))

(assert (=> b!2463357 m!2832691))

(declare-fun m!2832693 () Bool)

(assert (=> b!2463359 m!2832693))

(declare-fun m!2832695 () Bool)

(assert (=> b!2463359 m!2832695))

(declare-fun m!2832697 () Bool)

(assert (=> b!2463359 m!2832697))

(assert (=> b!2463359 m!2832697))

(declare-fun m!2832699 () Bool)

(assert (=> b!2463359 m!2832699))

(assert (=> b!2463359 m!2831727))

(declare-fun m!2832701 () Bool)

(assert (=> b!2463359 m!2832701))

(declare-fun m!2832703 () Bool)

(assert (=> b!2463359 m!2832703))

(assert (=> b!2463359 m!2831727))

(assert (=> b!2463359 m!2831733))

(declare-fun m!2832705 () Bool)

(assert (=> b!2463359 m!2832705))

(declare-fun m!2832707 () Bool)

(assert (=> b!2463359 m!2832707))

(assert (=> b!2463359 m!2832701))

(declare-fun m!2832709 () Bool)

(assert (=> b!2463359 m!2832709))

(declare-fun m!2832711 () Bool)

(assert (=> b!2463359 m!2832711))

(assert (=> b!2463359 m!2832709))

(declare-fun m!2832713 () Bool)

(assert (=> b!2463359 m!2832713))

(assert (=> b!2463359 m!2832707))

(assert (=> b!2463359 m!2831727))

(assert (=> b!2463359 m!2832713))

(declare-fun m!2832715 () Bool)

(assert (=> b!2463359 m!2832715))

(assert (=> d!709011 d!709291))

(declare-fun d!709293 () Bool)

(declare-fun c!393018 () Bool)

(assert (=> d!709293 (= c!393018 ((_ is Node!9165) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(declare-fun e!1562430 () Bool)

(assert (=> d!709293 (= (inv!38762 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) e!1562430)))

(declare-fun b!2463360 () Bool)

(assert (=> b!2463360 (= e!1562430 (inv!38764 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(declare-fun b!2463361 () Bool)

(declare-fun e!1562431 () Bool)

(assert (=> b!2463361 (= e!1562430 e!1562431)))

(declare-fun res!1043744 () Bool)

(assert (=> b!2463361 (= res!1043744 (not ((_ is Leaf!13702) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))))

(assert (=> b!2463361 (=> res!1043744 e!1562431)))

(declare-fun b!2463362 () Bool)

(assert (=> b!2463362 (= e!1562431 (inv!38765 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(assert (= (and d!709293 c!393018) b!2463360))

(assert (= (and d!709293 (not c!393018)) b!2463361))

(assert (= (and b!2463361 (not res!1043744)) b!2463362))

(declare-fun m!2832717 () Bool)

(assert (=> b!2463360 m!2832717))

(declare-fun m!2832719 () Bool)

(assert (=> b!2463362 m!2832719))

(assert (=> b!2463158 d!709293))

(declare-fun d!709295 () Bool)

(declare-fun c!393019 () Bool)

(assert (=> d!709295 (= c!393019 ((_ is Node!9165) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(declare-fun e!1562432 () Bool)

(assert (=> d!709295 (= (inv!38762 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) e!1562432)))

(declare-fun b!2463363 () Bool)

(assert (=> b!2463363 (= e!1562432 (inv!38764 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(declare-fun b!2463364 () Bool)

(declare-fun e!1562433 () Bool)

(assert (=> b!2463364 (= e!1562432 e!1562433)))

(declare-fun res!1043745 () Bool)

(assert (=> b!2463364 (= res!1043745 (not ((_ is Leaf!13702) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))))

(assert (=> b!2463364 (=> res!1043745 e!1562433)))

(declare-fun b!2463365 () Bool)

(assert (=> b!2463365 (= e!1562433 (inv!38765 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(assert (= (and d!709295 c!393019) b!2463363))

(assert (= (and d!709295 (not c!393019)) b!2463364))

(assert (= (and b!2463364 (not res!1043745)) b!2463365))

(declare-fun m!2832721 () Bool)

(assert (=> b!2463363 m!2832721))

(declare-fun m!2832723 () Bool)

(assert (=> b!2463365 m!2832723))

(assert (=> b!2463158 d!709295))

(declare-fun d!709297 () Bool)

(declare-fun lt!881511 () Int)

(assert (=> d!709297 (= lt!881511 (size!22319 (list!11106 (_2!16648 lt!881355))))))

(assert (=> d!709297 (= lt!881511 (size!22324 (c!392914 (_2!16648 lt!881355))))))

(assert (=> d!709297 (= (size!22321 (_2!16648 lt!881355)) lt!881511)))

(declare-fun bs!466459 () Bool)

(assert (= bs!466459 d!709297))

(assert (=> bs!466459 m!2831877))

(assert (=> bs!466459 m!2831877))

(declare-fun m!2832725 () Bool)

(assert (=> bs!466459 m!2832725))

(declare-fun m!2832727 () Bool)

(assert (=> bs!466459 m!2832727))

(assert (=> b!2462837 d!709297))

(declare-fun d!709299 () Bool)

(declare-fun lt!881512 () Int)

(assert (=> d!709299 (= lt!881512 (size!22319 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))

(assert (=> d!709299 (= lt!881512 (size!22324 (c!392914 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))

(assert (=> d!709299 (= (size!22321 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))) lt!881512)))

(declare-fun bs!466460 () Bool)

(assert (= bs!466460 d!709299))

(assert (=> bs!466460 m!2831569))

(assert (=> bs!466460 m!2831873))

(assert (=> bs!466460 m!2831873))

(declare-fun m!2832729 () Bool)

(assert (=> bs!466460 m!2832729))

(declare-fun m!2832731 () Bool)

(assert (=> bs!466460 m!2832731))

(assert (=> b!2462837 d!709299))

(declare-fun d!709301 () Bool)

(declare-fun c!393020 () Bool)

(assert (=> d!709301 (= c!393020 ((_ is Nil!28672) (text!32964 (value!142487 t2!67))))))

(declare-fun e!1562434 () Int)

(assert (=> d!709301 (= (charsToBigInt!0 (text!32964 (value!142487 t2!67)) 0) e!1562434)))

(declare-fun b!2463366 () Bool)

(assert (=> b!2463366 (= e!1562434 0)))

(declare-fun b!2463367 () Bool)

(assert (=> b!2463367 (= e!1562434 (charsToBigInt!0 (t!208929 (text!32964 (value!142487 t2!67))) (+ (* 0 10) (charToBigInt!0 (h!34073 (text!32964 (value!142487 t2!67)))))))))

(assert (= (and d!709301 c!393020) b!2463366))

(assert (= (and d!709301 (not c!393020)) b!2463367))

(declare-fun m!2832733 () Bool)

(assert (=> b!2463367 m!2832733))

(declare-fun m!2832735 () Bool)

(assert (=> b!2463367 m!2832735))

(assert (=> d!709203 d!709301))

(declare-fun b!2463368 () Bool)

(declare-fun e!1562435 () Bool)

(assert (=> b!2463368 (= e!1562435 (inv!15 (value!142487 (h!34075 (t!208931 (t!208931 l!6611))))))))

(declare-fun b!2463369 () Bool)

(declare-fun res!1043746 () Bool)

(assert (=> b!2463369 (=> res!1043746 e!1562435)))

(assert (=> b!2463369 (= res!1043746 (not ((_ is IntegerValue!13937) (value!142487 (h!34075 (t!208931 (t!208931 l!6611)))))))))

(declare-fun e!1562436 () Bool)

(assert (=> b!2463369 (= e!1562436 e!1562435)))

(declare-fun b!2463370 () Bool)

(declare-fun e!1562437 () Bool)

(assert (=> b!2463370 (= e!1562437 e!1562436)))

(declare-fun c!393021 () Bool)

(assert (=> b!2463370 (= c!393021 ((_ is IntegerValue!13936) (value!142487 (h!34075 (t!208931 (t!208931 l!6611))))))))

(declare-fun d!709303 () Bool)

(declare-fun c!393022 () Bool)

(assert (=> d!709303 (= c!393022 ((_ is IntegerValue!13935) (value!142487 (h!34075 (t!208931 (t!208931 l!6611))))))))

(assert (=> d!709303 (= (inv!21 (value!142487 (h!34075 (t!208931 (t!208931 l!6611))))) e!1562437)))

(declare-fun b!2463371 () Bool)

(assert (=> b!2463371 (= e!1562436 (inv!17 (value!142487 (h!34075 (t!208931 (t!208931 l!6611))))))))

(declare-fun b!2463372 () Bool)

(assert (=> b!2463372 (= e!1562437 (inv!16 (value!142487 (h!34075 (t!208931 (t!208931 l!6611))))))))

(assert (= (and d!709303 c!393022) b!2463372))

(assert (= (and d!709303 (not c!393022)) b!2463370))

(assert (= (and b!2463370 c!393021) b!2463371))

(assert (= (and b!2463370 (not c!393021)) b!2463369))

(assert (= (and b!2463369 (not res!1043746)) b!2463368))

(declare-fun m!2832737 () Bool)

(assert (=> b!2463368 m!2832737))

(declare-fun m!2832739 () Bool)

(assert (=> b!2463371 m!2832739))

(declare-fun m!2832741 () Bool)

(assert (=> b!2463372 m!2832741))

(assert (=> b!2463219 d!709303))

(declare-fun d!709305 () Bool)

(declare-fun res!1043751 () Bool)

(declare-fun e!1562440 () Bool)

(assert (=> d!709305 (=> (not res!1043751) (not e!1562440))))

(assert (=> d!709305 (= res!1043751 (<= (size!22319 (list!11112 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) 512))))

(assert (=> d!709305 (= (inv!38765 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) e!1562440)))

(declare-fun b!2463377 () Bool)

(declare-fun res!1043752 () Bool)

(assert (=> b!2463377 (=> (not res!1043752) (not e!1562440))))

(assert (=> b!2463377 (= res!1043752 (= (csize!18561 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) (size!22319 (list!11112 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))))

(declare-fun b!2463378 () Bool)

(assert (=> b!2463378 (= e!1562440 (and (> (csize!18561 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) 0) (<= (csize!18561 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) 512)))))

(assert (= (and d!709305 res!1043751) b!2463377))

(assert (= (and b!2463377 res!1043752) b!2463378))

(assert (=> d!709305 m!2832527))

(assert (=> d!709305 m!2832527))

(declare-fun m!2832743 () Bool)

(assert (=> d!709305 m!2832743))

(assert (=> b!2463377 m!2832527))

(assert (=> b!2463377 m!2832527))

(assert (=> b!2463377 m!2832743))

(assert (=> b!2462868 d!709305))

(declare-fun d!709307 () Bool)

(declare-fun lt!881515 () Unit!42006)

(declare-fun lemma!555 (List!28775 LexerInterface!4056 List!28775) Unit!42006)

(assert (=> d!709307 (= lt!881515 (lemma!555 rules!4472 thiss!27932 rules!4472))))

(declare-fun lambda!93209 () Int)

(declare-datatypes ((List!28778 0))(
  ( (Nil!28678) (Cons!28678 (h!34079 Regex!7247) (t!209207 List!28778)) )
))
(declare-fun generalisedUnion!532 (List!28778) Regex!7247)

(declare-fun map!5971 (List!28775 Int) List!28778)

(assert (=> d!709307 (= (rulesRegex!973 thiss!27932 rules!4472) (generalisedUnion!532 (map!5971 rules!4472 lambda!93209)))))

(declare-fun bs!466461 () Bool)

(assert (= bs!466461 d!709307))

(declare-fun m!2832745 () Bool)

(assert (=> bs!466461 m!2832745))

(declare-fun m!2832747 () Bool)

(assert (=> bs!466461 m!2832747))

(assert (=> bs!466461 m!2832747))

(declare-fun m!2832749 () Bool)

(assert (=> bs!466461 m!2832749))

(assert (=> d!709083 d!709307))

(declare-fun b!2463388 () Bool)

(declare-fun res!1043763 () Bool)

(declare-fun e!1562443 () Bool)

(assert (=> b!2463388 (=> (not res!1043763) (not e!1562443))))

(declare-fun height!1338 (Conc!9165) Int)

(declare-fun ++!7132 (Conc!9165 Conc!9165) Conc!9165)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2463388 (= res!1043763 (<= (height!1338 (++!7132 (c!392914 (charsOf!2813 (h!34075 l!6611))) (c!392914 (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))))) (+ (max!0 (height!1338 (c!392914 (charsOf!2813 (h!34075 l!6611)))) (height!1338 (c!392914 (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))))) 1)))))

(declare-fun b!2463389 () Bool)

(declare-fun res!1043762 () Bool)

(assert (=> b!2463389 (=> (not res!1043762) (not e!1562443))))

(assert (=> b!2463389 (= res!1043762 (>= (height!1338 (++!7132 (c!392914 (charsOf!2813 (h!34075 l!6611))) (c!392914 (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))))) (max!0 (height!1338 (c!392914 (charsOf!2813 (h!34075 l!6611)))) (height!1338 (c!392914 (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0)))))))))

(declare-fun b!2463390 () Bool)

(declare-fun lt!881518 () BalanceConc!17944)

(assert (=> b!2463390 (= e!1562443 (= (list!11106 lt!881518) (++!7129 (list!11106 (charsOf!2813 (h!34075 l!6611))) (list!11106 (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))))))))

(declare-fun b!2463387 () Bool)

(declare-fun res!1043761 () Bool)

(assert (=> b!2463387 (=> (not res!1043761) (not e!1562443))))

(assert (=> b!2463387 (= res!1043761 (isBalanced!2799 (++!7132 (c!392914 (charsOf!2813 (h!34075 l!6611))) (c!392914 (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))))))))

(declare-fun d!709309 () Bool)

(assert (=> d!709309 e!1562443))

(declare-fun res!1043764 () Bool)

(assert (=> d!709309 (=> (not res!1043764) (not e!1562443))))

(declare-fun appendAssocInst!613 (Conc!9165 Conc!9165) Bool)

(assert (=> d!709309 (= res!1043764 (appendAssocInst!613 (c!392914 (charsOf!2813 (h!34075 l!6611))) (c!392914 (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0)))))))

(assert (=> d!709309 (= lt!881518 (BalanceConc!17945 (++!7132 (c!392914 (charsOf!2813 (h!34075 l!6611))) (c!392914 (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))))))))

(assert (=> d!709309 (= (++!7127 (charsOf!2813 (h!34075 l!6611)) (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))) lt!881518)))

(assert (= (and d!709309 res!1043764) b!2463387))

(assert (= (and b!2463387 res!1043761) b!2463388))

(assert (= (and b!2463388 res!1043763) b!2463389))

(assert (= (and b!2463389 res!1043762) b!2463390))

(declare-fun m!2832751 () Bool)

(assert (=> b!2463390 m!2832751))

(assert (=> b!2463390 m!2832209))

(declare-fun m!2832753 () Bool)

(assert (=> b!2463390 m!2832753))

(assert (=> b!2463390 m!2832207))

(declare-fun m!2832755 () Bool)

(assert (=> b!2463390 m!2832755))

(assert (=> b!2463390 m!2832753))

(assert (=> b!2463390 m!2832755))

(declare-fun m!2832757 () Bool)

(assert (=> b!2463390 m!2832757))

(declare-fun m!2832759 () Bool)

(assert (=> d!709309 m!2832759))

(declare-fun m!2832761 () Bool)

(assert (=> d!709309 m!2832761))

(declare-fun m!2832763 () Bool)

(assert (=> b!2463388 m!2832763))

(declare-fun m!2832765 () Bool)

(assert (=> b!2463388 m!2832765))

(assert (=> b!2463388 m!2832761))

(assert (=> b!2463388 m!2832765))

(assert (=> b!2463388 m!2832763))

(declare-fun m!2832767 () Bool)

(assert (=> b!2463388 m!2832767))

(assert (=> b!2463388 m!2832761))

(declare-fun m!2832769 () Bool)

(assert (=> b!2463388 m!2832769))

(assert (=> b!2463387 m!2832761))

(assert (=> b!2463387 m!2832761))

(declare-fun m!2832771 () Bool)

(assert (=> b!2463387 m!2832771))

(assert (=> b!2463389 m!2832763))

(assert (=> b!2463389 m!2832765))

(assert (=> b!2463389 m!2832761))

(assert (=> b!2463389 m!2832765))

(assert (=> b!2463389 m!2832763))

(assert (=> b!2463389 m!2832767))

(assert (=> b!2463389 m!2832761))

(assert (=> b!2463389 m!2832769))

(assert (=> d!709083 d!709309))

(declare-fun d!709311 () Bool)

(declare-fun e!1562446 () Bool)

(assert (=> d!709311 e!1562446))

(declare-fun res!1043767 () Bool)

(assert (=> d!709311 (=> (not res!1043767) (not e!1562446))))

(declare-fun lt!881521 () BalanceConc!17944)

(assert (=> d!709311 (= res!1043767 (= (list!11106 lt!881521) (Cons!28673 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0) Nil!28673)))))

(declare-fun singleton!891 (C!14652) BalanceConc!17944)

(assert (=> d!709311 (= lt!881521 (singleton!891 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0)))))

(assert (=> d!709311 (= (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0)) lt!881521)))

(declare-fun b!2463393 () Bool)

(assert (=> b!2463393 (= e!1562446 (isBalanced!2799 (c!392914 lt!881521)))))

(assert (= (and d!709311 res!1043767) b!2463393))

(declare-fun m!2832773 () Bool)

(assert (=> d!709311 m!2832773))

(assert (=> d!709311 m!2832205))

(declare-fun m!2832775 () Bool)

(assert (=> d!709311 m!2832775))

(declare-fun m!2832777 () Bool)

(assert (=> b!2463393 m!2832777))

(assert (=> d!709083 d!709311))

(declare-fun lt!881543 () Bool)

(declare-fun d!709313 () Bool)

(declare-fun prefixMatch!803 (Regex!7247 List!28773) Bool)

(assert (=> d!709313 (= lt!881543 (prefixMatch!803 (rulesRegex!973 thiss!27932 rules!4472) (list!11106 (++!7127 (charsOf!2813 (h!34075 l!6611)) (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))))))))

(declare-datatypes ((Context!4232 0))(
  ( (Context!4233 (exprs!2616 List!28778)) )
))
(declare-fun prefixMatchZipperSequence!715 ((InoxSet Context!4232) BalanceConc!17944 Int) Bool)

(declare-fun focus!280 (Regex!7247) (InoxSet Context!4232))

(assert (=> d!709313 (= lt!881543 (prefixMatchZipperSequence!715 (focus!280 (rulesRegex!973 thiss!27932 rules!4472)) (++!7127 (charsOf!2813 (h!34075 l!6611)) (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))) 0))))

(declare-fun lt!881551 () Unit!42006)

(declare-fun lt!881546 () Unit!42006)

(assert (=> d!709313 (= lt!881551 lt!881546)))

(declare-fun lt!881548 () (InoxSet Context!4232))

(declare-fun lt!881542 () List!28773)

(declare-fun prefixMatchZipper!219 ((InoxSet Context!4232) List!28773) Bool)

(assert (=> d!709313 (= (prefixMatch!803 (rulesRegex!973 thiss!27932 rules!4472) lt!881542) (prefixMatchZipper!219 lt!881548 lt!881542))))

(declare-datatypes ((List!28779 0))(
  ( (Nil!28679) (Cons!28679 (h!34080 Context!4232) (t!209208 List!28779)) )
))
(declare-fun lt!881549 () List!28779)

(declare-fun prefixMatchZipperRegexEquiv!219 ((InoxSet Context!4232) List!28779 Regex!7247 List!28773) Unit!42006)

(assert (=> d!709313 (= lt!881546 (prefixMatchZipperRegexEquiv!219 lt!881548 lt!881549 (rulesRegex!973 thiss!27932 rules!4472) lt!881542))))

(assert (=> d!709313 (= lt!881542 (list!11106 (++!7127 (charsOf!2813 (h!34075 l!6611)) (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0)))))))

(declare-fun toList!1431 ((InoxSet Context!4232)) List!28779)

(assert (=> d!709313 (= lt!881549 (toList!1431 (focus!280 (rulesRegex!973 thiss!27932 rules!4472))))))

(assert (=> d!709313 (= lt!881548 (focus!280 (rulesRegex!973 thiss!27932 rules!4472)))))

(declare-fun lt!881544 () Unit!42006)

(declare-fun lt!881545 () Unit!42006)

(assert (=> d!709313 (= lt!881544 lt!881545)))

(declare-fun lt!881550 () (InoxSet Context!4232))

(declare-fun lt!881547 () Int)

(declare-fun dropList!825 (BalanceConc!17944 Int) List!28773)

(assert (=> d!709313 (= (prefixMatchZipper!219 lt!881550 (dropList!825 (++!7127 (charsOf!2813 (h!34075 l!6611)) (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))) lt!881547)) (prefixMatchZipperSequence!715 lt!881550 (++!7127 (charsOf!2813 (h!34075 l!6611)) (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))) lt!881547))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!219 ((InoxSet Context!4232) BalanceConc!17944 Int) Unit!42006)

(assert (=> d!709313 (= lt!881545 (lemmaprefixMatchZipperSequenceEquivalent!219 lt!881550 (++!7127 (charsOf!2813 (h!34075 l!6611)) (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0))) lt!881547))))

(assert (=> d!709313 (= lt!881547 0)))

(assert (=> d!709313 (= lt!881550 (focus!280 (rulesRegex!973 thiss!27932 rules!4472)))))

(declare-fun validRegex!2920 (Regex!7247) Bool)

(assert (=> d!709313 (validRegex!2920 (rulesRegex!973 thiss!27932 rules!4472))))

(assert (=> d!709313 (= (prefixMatchZipperSequence!713 (rulesRegex!973 thiss!27932 rules!4472) (++!7127 (charsOf!2813 (h!34075 l!6611)) (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0)))) lt!881543)))

(declare-fun bs!466462 () Bool)

(assert (= bs!466462 d!709313))

(declare-fun m!2832779 () Bool)

(assert (=> bs!466462 m!2832779))

(assert (=> bs!466462 m!2832211))

(declare-fun m!2832781 () Bool)

(assert (=> bs!466462 m!2832781))

(assert (=> bs!466462 m!2832211))

(declare-fun m!2832783 () Bool)

(assert (=> bs!466462 m!2832783))

(declare-fun m!2832785 () Bool)

(assert (=> bs!466462 m!2832785))

(assert (=> bs!466462 m!2832213))

(declare-fun m!2832787 () Bool)

(assert (=> bs!466462 m!2832787))

(declare-fun m!2832789 () Bool)

(assert (=> bs!466462 m!2832789))

(declare-fun m!2832791 () Bool)

(assert (=> bs!466462 m!2832791))

(assert (=> bs!466462 m!2832213))

(declare-fun m!2832793 () Bool)

(assert (=> bs!466462 m!2832793))

(assert (=> bs!466462 m!2832213))

(declare-fun m!2832795 () Bool)

(assert (=> bs!466462 m!2832795))

(assert (=> bs!466462 m!2832211))

(declare-fun m!2832797 () Bool)

(assert (=> bs!466462 m!2832797))

(assert (=> bs!466462 m!2832211))

(assert (=> bs!466462 m!2832789))

(assert (=> bs!466462 m!2832211))

(declare-fun m!2832799 () Bool)

(assert (=> bs!466462 m!2832799))

(assert (=> bs!466462 m!2832795))

(declare-fun m!2832801 () Bool)

(assert (=> bs!466462 m!2832801))

(assert (=> bs!466462 m!2832213))

(assert (=> bs!466462 m!2832783))

(assert (=> bs!466462 m!2832789))

(assert (=> bs!466462 m!2832213))

(declare-fun m!2832803 () Bool)

(assert (=> bs!466462 m!2832803))

(assert (=> d!709083 d!709313))

(assert (=> d!709083 d!709087))

(declare-fun d!709315 () Bool)

(declare-fun lt!881554 () C!14652)

(declare-fun apply!6736 (List!28773 Int) C!14652)

(assert (=> d!709315 (= lt!881554 (apply!6736 (list!11106 (charsOf!2813 (h!34075 (t!208931 l!6611)))) 0))))

(declare-fun apply!6737 (Conc!9165 Int) C!14652)

(assert (=> d!709315 (= lt!881554 (apply!6737 (c!392914 (charsOf!2813 (h!34075 (t!208931 l!6611)))) 0))))

(declare-fun e!1562449 () Bool)

(assert (=> d!709315 e!1562449))

(declare-fun res!1043770 () Bool)

(assert (=> d!709315 (=> (not res!1043770) (not e!1562449))))

(assert (=> d!709315 (= res!1043770 (<= 0 0))))

(assert (=> d!709315 (= (apply!6734 (charsOf!2813 (h!34075 (t!208931 l!6611))) 0) lt!881554)))

(declare-fun b!2463396 () Bool)

(assert (=> b!2463396 (= e!1562449 (< 0 (size!22321 (charsOf!2813 (h!34075 (t!208931 l!6611))))))))

(assert (= (and d!709315 res!1043770) b!2463396))

(assert (=> d!709315 m!2831751))

(assert (=> d!709315 m!2832187))

(assert (=> d!709315 m!2832187))

(declare-fun m!2832805 () Bool)

(assert (=> d!709315 m!2832805))

(declare-fun m!2832807 () Bool)

(assert (=> d!709315 m!2832807))

(assert (=> b!2463396 m!2831751))

(assert (=> b!2463396 m!2831759))

(assert (=> d!709083 d!709315))

(declare-fun d!709317 () Bool)

(declare-fun lt!881555 () BalanceConc!17944)

(assert (=> d!709317 (= (list!11106 lt!881555) (originalCharacters!5225 (h!34075 l!6611)))))

(assert (=> d!709317 (= lt!881555 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))

(assert (=> d!709317 (= (charsOf!2813 (h!34075 l!6611)) lt!881555)))

(declare-fun b_lambda!75489 () Bool)

(assert (=> (not b_lambda!75489) (not d!709317)))

(assert (=> d!709317 t!208944))

(declare-fun b_and!186053 () Bool)

(assert (= b_and!186033 (and (=> t!208944 result!171606) b_and!186053)))

(assert (=> d!709317 t!209001))

(declare-fun b_and!186055 () Bool)

(assert (= b_and!186043 (and (=> t!209001 result!171668) b_and!186055)))

(assert (=> d!709317 t!208948))

(declare-fun b_and!186057 () Bool)

(assert (= b_and!186041 (and (=> t!208948 result!171610) b_and!186057)))

(assert (=> d!709317 t!209062))

(declare-fun b_and!186059 () Bool)

(assert (= b_and!186047 (and (=> t!209062 result!171732) b_and!186059)))

(assert (=> d!709317 t!209007))

(declare-fun b_and!186061 () Bool)

(assert (= b_and!186037 (and (=> t!209007 result!171678) b_and!186061)))

(assert (=> d!709317 t!209070))

(declare-fun b_and!186063 () Bool)

(assert (= b_and!186051 (and (=> t!209070 result!171740) b_and!186063)))

(assert (=> d!709317 t!208946))

(declare-fun b_and!186065 () Bool)

(assert (= b_and!186039 (and (=> t!208946 result!171608) b_and!186065)))

(assert (=> d!709317 t!208942))

(declare-fun b_and!186067 () Bool)

(assert (= b_and!186035 (and (=> t!208942 result!171602) b_and!186067)))

(declare-fun m!2832809 () Bool)

(assert (=> d!709317 m!2832809))

(assert (=> d!709317 m!2831527))

(assert (=> d!709083 d!709317))

(declare-fun d!709319 () Bool)

(assert (=> d!709319 (= (list!11106 lt!881426) (list!11110 (c!392914 lt!881426)))))

(declare-fun bs!466463 () Bool)

(assert (= bs!466463 d!709319))

(declare-fun m!2832811 () Bool)

(assert (=> bs!466463 m!2832811))

(assert (=> d!709087 d!709319))

(declare-fun d!709321 () Bool)

(declare-fun lt!881556 () Int)

(assert (=> d!709321 (= lt!881556 (size!22319 (list!11106 (_2!16648 lt!881393))))))

(assert (=> d!709321 (= lt!881556 (size!22324 (c!392914 (_2!16648 lt!881393))))))

(assert (=> d!709321 (= (size!22321 (_2!16648 lt!881393)) lt!881556)))

(declare-fun bs!466464 () Bool)

(assert (= bs!466464 d!709321))

(assert (=> bs!466464 m!2832041))

(assert (=> bs!466464 m!2832041))

(declare-fun m!2832813 () Bool)

(assert (=> bs!466464 m!2832813))

(declare-fun m!2832815 () Bool)

(assert (=> bs!466464 m!2832815))

(assert (=> b!2462896 d!709321))

(declare-fun d!709323 () Bool)

(declare-fun lt!881557 () Int)

(assert (=> d!709323 (= lt!881557 (size!22319 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))

(assert (=> d!709323 (= lt!881557 (size!22324 (c!392914 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))

(assert (=> d!709323 (= (size!22321 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))) lt!881557)))

(declare-fun bs!466465 () Bool)

(assert (= bs!466465 d!709323))

(assert (=> bs!466465 m!2831729))

(assert (=> bs!466465 m!2832037))

(assert (=> bs!466465 m!2832037))

(declare-fun m!2832817 () Bool)

(assert (=> bs!466465 m!2832817))

(declare-fun m!2832819 () Bool)

(assert (=> bs!466465 m!2832819))

(assert (=> b!2462896 d!709323))

(declare-fun d!709325 () Bool)

(declare-fun lt!881560 () Bool)

(declare-fun content!3951 (List!28777) (InoxSet String!31521))

(assert (=> d!709325 (= lt!881560 (select (content!3951 Nil!28677) (tag!4949 (h!34076 rules!4472))))))

(declare-fun e!1562455 () Bool)

(assert (=> d!709325 (= lt!881560 e!1562455)))

(declare-fun res!1043776 () Bool)

(assert (=> d!709325 (=> (not res!1043776) (not e!1562455))))

(assert (=> d!709325 (= res!1043776 ((_ is Cons!28677) Nil!28677))))

(assert (=> d!709325 (= (contains!4895 Nil!28677 (tag!4949 (h!34076 rules!4472))) lt!881560)))

(declare-fun b!2463401 () Bool)

(declare-fun e!1562454 () Bool)

(assert (=> b!2463401 (= e!1562455 e!1562454)))

(declare-fun res!1043775 () Bool)

(assert (=> b!2463401 (=> res!1043775 e!1562454)))

(assert (=> b!2463401 (= res!1043775 (= (h!34078 Nil!28677) (tag!4949 (h!34076 rules!4472))))))

(declare-fun b!2463402 () Bool)

(assert (=> b!2463402 (= e!1562454 (contains!4895 (t!209012 Nil!28677) (tag!4949 (h!34076 rules!4472))))))

(assert (= (and d!709325 res!1043776) b!2463401))

(assert (= (and b!2463401 (not res!1043775)) b!2463402))

(declare-fun m!2832821 () Bool)

(assert (=> d!709325 m!2832821))

(declare-fun m!2832823 () Bool)

(assert (=> d!709325 m!2832823))

(declare-fun m!2832825 () Bool)

(assert (=> b!2463402 m!2832825))

(assert (=> b!2463136 d!709325))

(assert (=> b!2462849 d!709237))

(declare-fun d!709327 () Bool)

(declare-fun lt!881561 () Token!8388)

(assert (=> d!709327 (= lt!881561 (apply!6729 (list!11107 (_1!16648 lt!881439)) 0))))

(assert (=> d!709327 (= lt!881561 (apply!6733 (c!392951 (_1!16648 lt!881439)) 0))))

(declare-fun e!1562456 () Bool)

(assert (=> d!709327 e!1562456))

(declare-fun res!1043777 () Bool)

(assert (=> d!709327 (=> (not res!1043777) (not e!1562456))))

(assert (=> d!709327 (= res!1043777 (<= 0 0))))

(assert (=> d!709327 (= (apply!6731 (_1!16648 lt!881439) 0) lt!881561)))

(declare-fun b!2463403 () Bool)

(assert (=> b!2463403 (= e!1562456 (< 0 (size!22320 (_1!16648 lt!881439))))))

(assert (= (and d!709327 res!1043777) b!2463403))

(declare-fun m!2832827 () Bool)

(assert (=> d!709327 m!2832827))

(assert (=> d!709327 m!2832827))

(declare-fun m!2832829 () Bool)

(assert (=> d!709327 m!2832829))

(declare-fun m!2832831 () Bool)

(assert (=> d!709327 m!2832831))

(assert (=> b!2463403 m!2832287))

(assert (=> b!2462965 d!709327))

(declare-fun b!2463416 () Bool)

(declare-fun res!1043790 () Bool)

(declare-fun e!1562461 () Bool)

(assert (=> b!2463416 (=> (not res!1043790) (not e!1562461))))

(assert (=> b!2463416 (= res!1043790 (isBalanced!2798 (left!22027 (c!392951 lt!881397))))))

(declare-fun b!2463417 () Bool)

(declare-fun isEmpty!16672 (Conc!9167) Bool)

(assert (=> b!2463417 (= e!1562461 (not (isEmpty!16672 (right!22357 (c!392951 lt!881397)))))))

(declare-fun b!2463418 () Bool)

(declare-fun res!1043791 () Bool)

(assert (=> b!2463418 (=> (not res!1043791) (not e!1562461))))

(assert (=> b!2463418 (= res!1043791 (isBalanced!2798 (right!22357 (c!392951 lt!881397))))))

(declare-fun b!2463419 () Bool)

(declare-fun res!1043795 () Bool)

(assert (=> b!2463419 (=> (not res!1043795) (not e!1562461))))

(declare-fun height!1339 (Conc!9167) Int)

(assert (=> b!2463419 (= res!1043795 (<= (- (height!1339 (left!22027 (c!392951 lt!881397))) (height!1339 (right!22357 (c!392951 lt!881397)))) 1))))

(declare-fun b!2463420 () Bool)

(declare-fun e!1562462 () Bool)

(assert (=> b!2463420 (= e!1562462 e!1562461)))

(declare-fun res!1043792 () Bool)

(assert (=> b!2463420 (=> (not res!1043792) (not e!1562461))))

(assert (=> b!2463420 (= res!1043792 (<= (- 1) (- (height!1339 (left!22027 (c!392951 lt!881397))) (height!1339 (right!22357 (c!392951 lt!881397))))))))

(declare-fun b!2463421 () Bool)

(declare-fun res!1043793 () Bool)

(assert (=> b!2463421 (=> (not res!1043793) (not e!1562461))))

(assert (=> b!2463421 (= res!1043793 (not (isEmpty!16672 (left!22027 (c!392951 lt!881397)))))))

(declare-fun d!709329 () Bool)

(declare-fun res!1043794 () Bool)

(assert (=> d!709329 (=> res!1043794 e!1562462)))

(assert (=> d!709329 (= res!1043794 (not ((_ is Node!9167) (c!392951 lt!881397))))))

(assert (=> d!709329 (= (isBalanced!2798 (c!392951 lt!881397)) e!1562462)))

(assert (= (and d!709329 (not res!1043794)) b!2463420))

(assert (= (and b!2463420 res!1043792) b!2463419))

(assert (= (and b!2463419 res!1043795) b!2463416))

(assert (= (and b!2463416 res!1043790) b!2463418))

(assert (= (and b!2463418 res!1043791) b!2463421))

(assert (= (and b!2463421 res!1043793) b!2463417))

(declare-fun m!2832833 () Bool)

(assert (=> b!2463416 m!2832833))

(declare-fun m!2832835 () Bool)

(assert (=> b!2463421 m!2832835))

(declare-fun m!2832837 () Bool)

(assert (=> b!2463417 m!2832837))

(declare-fun m!2832839 () Bool)

(assert (=> b!2463420 m!2832839))

(declare-fun m!2832841 () Bool)

(assert (=> b!2463420 m!2832841))

(declare-fun m!2832843 () Bool)

(assert (=> b!2463418 m!2832843))

(assert (=> b!2463419 m!2832839))

(assert (=> b!2463419 m!2832841))

(assert (=> b!2462902 d!709329))

(declare-fun d!709331 () Bool)

(declare-fun lt!881562 () Token!8388)

(assert (=> d!709331 (contains!4893 (list!11107 (_1!16648 lt!881277)) lt!881562)))

(declare-fun e!1562464 () Token!8388)

(assert (=> d!709331 (= lt!881562 e!1562464)))

(declare-fun c!393026 () Bool)

(assert (=> d!709331 (= c!393026 (= 0 0))))

(declare-fun e!1562463 () Bool)

(assert (=> d!709331 e!1562463))

(declare-fun res!1043796 () Bool)

(assert (=> d!709331 (=> (not res!1043796) (not e!1562463))))

(assert (=> d!709331 (= res!1043796 (<= 0 0))))

(assert (=> d!709331 (= (apply!6729 (list!11107 (_1!16648 lt!881277)) 0) lt!881562)))

(declare-fun b!2463422 () Bool)

(assert (=> b!2463422 (= e!1562463 (< 0 (size!22315 (list!11107 (_1!16648 lt!881277)))))))

(declare-fun b!2463423 () Bool)

(assert (=> b!2463423 (= e!1562464 (head!5625 (list!11107 (_1!16648 lt!881277))))))

(declare-fun b!2463424 () Bool)

(assert (=> b!2463424 (= e!1562464 (apply!6729 (tail!3898 (list!11107 (_1!16648 lt!881277))) (- 0 1)))))

(assert (= (and d!709331 res!1043796) b!2463422))

(assert (= (and d!709331 c!393026) b!2463423))

(assert (= (and d!709331 (not c!393026)) b!2463424))

(assert (=> d!709331 m!2831897))

(declare-fun m!2832845 () Bool)

(assert (=> d!709331 m!2832845))

(assert (=> b!2463422 m!2831897))

(assert (=> b!2463422 m!2831899))

(assert (=> b!2463423 m!2831897))

(declare-fun m!2832847 () Bool)

(assert (=> b!2463423 m!2832847))

(assert (=> b!2463424 m!2831897))

(declare-fun m!2832849 () Bool)

(assert (=> b!2463424 m!2832849))

(assert (=> b!2463424 m!2832849))

(declare-fun m!2832851 () Bool)

(assert (=> b!2463424 m!2832851))

(assert (=> d!709027 d!709331))

(declare-fun d!709333 () Bool)

(assert (=> d!709333 (= (list!11107 (_1!16648 lt!881277)) (list!11109 (c!392951 (_1!16648 lt!881277))))))

(declare-fun bs!466466 () Bool)

(assert (= bs!466466 d!709333))

(declare-fun m!2832853 () Bool)

(assert (=> bs!466466 m!2832853))

(assert (=> d!709027 d!709333))

(declare-fun d!709335 () Bool)

(declare-fun lt!881567 () Token!8388)

(assert (=> d!709335 (= lt!881567 (apply!6729 (list!11109 (c!392951 (_1!16648 lt!881277))) 0))))

(declare-fun e!1562474 () Token!8388)

(assert (=> d!709335 (= lt!881567 e!1562474)))

(declare-fun c!393033 () Bool)

(assert (=> d!709335 (= c!393033 ((_ is Leaf!13704) (c!392951 (_1!16648 lt!881277))))))

(declare-fun e!1562476 () Bool)

(assert (=> d!709335 e!1562476))

(declare-fun res!1043799 () Bool)

(assert (=> d!709335 (=> (not res!1043799) (not e!1562476))))

(assert (=> d!709335 (= res!1043799 (<= 0 0))))

(assert (=> d!709335 (= (apply!6733 (c!392951 (_1!16648 lt!881277)) 0) lt!881567)))

(declare-fun bm!151412 () Bool)

(declare-fun c!393034 () Bool)

(declare-fun c!393035 () Bool)

(assert (=> bm!151412 (= c!393034 c!393035)))

(declare-fun e!1562475 () Int)

(declare-fun call!151417 () Token!8388)

(assert (=> bm!151412 (= call!151417 (apply!6733 (ite c!393035 (left!22027 (c!392951 (_1!16648 lt!881277))) (right!22357 (c!392951 (_1!16648 lt!881277)))) e!1562475))))

(declare-fun b!2463439 () Bool)

(declare-fun e!1562473 () Token!8388)

(assert (=> b!2463439 (= e!1562474 e!1562473)))

(declare-fun lt!881568 () Bool)

(declare-fun appendIndex!257 (List!28774 List!28774 Int) Bool)

(assert (=> b!2463439 (= lt!881568 (appendIndex!257 (list!11109 (left!22027 (c!392951 (_1!16648 lt!881277)))) (list!11109 (right!22357 (c!392951 (_1!16648 lt!881277)))) 0))))

(assert (=> b!2463439 (= c!393035 (< 0 (size!22323 (left!22027 (c!392951 (_1!16648 lt!881277))))))))

(declare-fun b!2463440 () Bool)

(assert (=> b!2463440 (= e!1562475 (- 0 (size!22323 (left!22027 (c!392951 (_1!16648 lt!881277))))))))

(declare-fun b!2463441 () Bool)

(declare-fun apply!6739 (IArray!18339 Int) Token!8388)

(assert (=> b!2463441 (= e!1562474 (apply!6739 (xs!12147 (c!392951 (_1!16648 lt!881277))) 0))))

(declare-fun b!2463442 () Bool)

(assert (=> b!2463442 (= e!1562473 call!151417)))

(declare-fun b!2463443 () Bool)

(assert (=> b!2463443 (= e!1562476 (< 0 (size!22323 (c!392951 (_1!16648 lt!881277)))))))

(declare-fun b!2463444 () Bool)

(assert (=> b!2463444 (= e!1562473 call!151417)))

(declare-fun b!2463445 () Bool)

(assert (=> b!2463445 (= e!1562475 0)))

(assert (= (and d!709335 res!1043799) b!2463443))

(assert (= (and d!709335 c!393033) b!2463441))

(assert (= (and d!709335 (not c!393033)) b!2463439))

(assert (= (and b!2463439 c!393035) b!2463442))

(assert (= (and b!2463439 (not c!393035)) b!2463444))

(assert (= (or b!2463442 b!2463444) bm!151412))

(assert (= (and bm!151412 c!393034) b!2463445))

(assert (= (and bm!151412 (not c!393034)) b!2463440))

(assert (=> b!2463443 m!2831901))

(declare-fun m!2832855 () Bool)

(assert (=> b!2463441 m!2832855))

(assert (=> d!709335 m!2832853))

(assert (=> d!709335 m!2832853))

(declare-fun m!2832857 () Bool)

(assert (=> d!709335 m!2832857))

(declare-fun m!2832859 () Bool)

(assert (=> b!2463439 m!2832859))

(declare-fun m!2832861 () Bool)

(assert (=> b!2463439 m!2832861))

(assert (=> b!2463439 m!2832859))

(assert (=> b!2463439 m!2832861))

(declare-fun m!2832863 () Bool)

(assert (=> b!2463439 m!2832863))

(declare-fun m!2832865 () Bool)

(assert (=> b!2463439 m!2832865))

(assert (=> b!2463440 m!2832865))

(declare-fun m!2832867 () Bool)

(assert (=> bm!151412 m!2832867))

(assert (=> d!709027 d!709335))

(declare-fun d!709337 () Bool)

(declare-fun lt!881569 () Int)

(assert (=> d!709337 (>= lt!881569 0)))

(declare-fun e!1562477 () Int)

(assert (=> d!709337 (= lt!881569 e!1562477)))

(declare-fun c!393036 () Bool)

(assert (=> d!709337 (= c!393036 ((_ is Nil!28674) (tail!3898 l!6611)))))

(assert (=> d!709337 (= (size!22315 (tail!3898 l!6611)) lt!881569)))

(declare-fun b!2463446 () Bool)

(assert (=> b!2463446 (= e!1562477 0)))

(declare-fun b!2463447 () Bool)

(assert (=> b!2463447 (= e!1562477 (+ 1 (size!22315 (t!208931 (tail!3898 l!6611)))))))

(assert (= (and d!709337 c!393036) b!2463446))

(assert (= (and d!709337 (not c!393036)) b!2463447))

(declare-fun m!2832869 () Bool)

(assert (=> b!2463447 m!2832869))

(assert (=> b!2462970 d!709337))

(declare-fun d!709339 () Bool)

(declare-fun res!1043800 () Bool)

(declare-fun e!1562478 () Bool)

(assert (=> d!709339 (=> (not res!1043800) (not e!1562478))))

(assert (=> d!709339 (= res!1043800 (<= (size!22319 (list!11112 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) 512))))

(assert (=> d!709339 (= (inv!38765 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) e!1562478)))

(declare-fun b!2463448 () Bool)

(declare-fun res!1043801 () Bool)

(assert (=> b!2463448 (=> (not res!1043801) (not e!1562478))))

(assert (=> b!2463448 (= res!1043801 (= (csize!18561 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) (size!22319 (list!11112 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))))

(declare-fun b!2463449 () Bool)

(assert (=> b!2463449 (= e!1562478 (and (> (csize!18561 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) 0) (<= (csize!18561 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) 512)))))

(assert (= (and d!709339 res!1043800) b!2463448))

(assert (= (and b!2463448 res!1043801) b!2463449))

(declare-fun m!2832871 () Bool)

(assert (=> d!709339 m!2832871))

(assert (=> d!709339 m!2832871))

(declare-fun m!2832873 () Bool)

(assert (=> d!709339 m!2832873))

(assert (=> b!2463448 m!2832871))

(assert (=> b!2463448 m!2832871))

(assert (=> b!2463448 m!2832873))

(assert (=> b!2463141 d!709339))

(declare-fun d!709341 () Bool)

(declare-fun lt!881570 () Bool)

(assert (=> d!709341 (= lt!881570 (isEmpty!16666 (list!11106 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611)))))))))))

(assert (=> d!709341 (= lt!881570 (isEmpty!16670 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611)))))))))))

(assert (=> d!709341 (= (isEmpty!16667 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611))))))) lt!881570)))

(declare-fun bs!466467 () Bool)

(assert (= bs!466467 d!709341))

(declare-fun m!2832875 () Bool)

(assert (=> bs!466467 m!2832875))

(assert (=> bs!466467 m!2832875))

(declare-fun m!2832877 () Bool)

(assert (=> bs!466467 m!2832877))

(declare-fun m!2832879 () Bool)

(assert (=> bs!466467 m!2832879))

(assert (=> b!2462964 d!709341))

(declare-fun b!2463450 () Bool)

(declare-fun res!1043804 () Bool)

(declare-fun e!1562480 () Bool)

(assert (=> b!2463450 (=> (not res!1043804) (not e!1562480))))

(declare-fun lt!881571 () tuple2!28214)

(assert (=> b!2463450 (= res!1043804 (= (list!11107 (_1!16648 lt!881571)) (_1!16650 (lexList!1146 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611)))))))))))

(declare-fun b!2463451 () Bool)

(assert (=> b!2463451 (= e!1562480 (= (list!11106 (_2!16648 lt!881571)) (_2!16650 (lexList!1146 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611)))))))))))

(declare-fun b!2463452 () Bool)

(declare-fun e!1562479 () Bool)

(declare-fun e!1562481 () Bool)

(assert (=> b!2463452 (= e!1562479 e!1562481)))

(declare-fun res!1043802 () Bool)

(assert (=> b!2463452 (= res!1043802 (< (size!22321 (_2!16648 lt!881571)) (size!22321 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611)))))))))

(assert (=> b!2463452 (=> (not res!1043802) (not e!1562481))))

(declare-fun d!709343 () Bool)

(assert (=> d!709343 e!1562480))

(declare-fun res!1043803 () Bool)

(assert (=> d!709343 (=> (not res!1043803) (not e!1562480))))

(assert (=> d!709343 (= res!1043803 e!1562479)))

(declare-fun c!393037 () Bool)

(assert (=> d!709343 (= c!393037 (> (size!22320 (_1!16648 lt!881571)) 0))))

(assert (=> d!709343 (= lt!881571 (lexTailRecV2!821 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611)))) (BalanceConc!17945 Empty!9165) (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611)))) (BalanceConc!17949 Empty!9167)))))

(assert (=> d!709343 (= (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611))))) lt!881571)))

(declare-fun b!2463453 () Bool)

(assert (=> b!2463453 (= e!1562479 (= (_2!16648 lt!881571) (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611))))))))

(declare-fun b!2463454 () Bool)

(assert (=> b!2463454 (= e!1562481 (not (isEmpty!16669 (_1!16648 lt!881571))))))

(assert (= (and d!709343 c!393037) b!2463452))

(assert (= (and d!709343 (not c!393037)) b!2463453))

(assert (= (and b!2463452 res!1043802) b!2463454))

(assert (= (and d!709343 res!1043803) b!2463450))

(assert (= (and b!2463450 res!1043804) b!2463451))

(declare-fun m!2832881 () Bool)

(assert (=> b!2463452 m!2832881))

(assert (=> b!2463452 m!2832247))

(declare-fun m!2832883 () Bool)

(assert (=> b!2463452 m!2832883))

(declare-fun m!2832885 () Bool)

(assert (=> b!2463450 m!2832885))

(assert (=> b!2463450 m!2832247))

(declare-fun m!2832887 () Bool)

(assert (=> b!2463450 m!2832887))

(assert (=> b!2463450 m!2832887))

(declare-fun m!2832889 () Bool)

(assert (=> b!2463450 m!2832889))

(declare-fun m!2832891 () Bool)

(assert (=> b!2463451 m!2832891))

(assert (=> b!2463451 m!2832247))

(assert (=> b!2463451 m!2832887))

(assert (=> b!2463451 m!2832887))

(assert (=> b!2463451 m!2832889))

(declare-fun m!2832893 () Bool)

(assert (=> d!709343 m!2832893))

(assert (=> d!709343 m!2832247))

(assert (=> d!709343 m!2832247))

(declare-fun m!2832895 () Bool)

(assert (=> d!709343 m!2832895))

(declare-fun m!2832897 () Bool)

(assert (=> b!2463454 m!2832897))

(assert (=> b!2462964 d!709343))

(declare-fun d!709345 () Bool)

(declare-fun lt!881572 () BalanceConc!17944)

(assert (=> d!709345 (= (list!11106 lt!881572) (printList!1130 thiss!27932 (list!11107 (singletonSeq!1977 (h!34075 (t!208931 l!6611))))))))

(assert (=> d!709345 (= lt!881572 (printTailRec!1081 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611))) 0 (BalanceConc!17945 Empty!9165)))))

(assert (=> d!709345 (= (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611)))) lt!881572)))

(declare-fun bs!466468 () Bool)

(assert (= bs!466468 d!709345))

(declare-fun m!2832899 () Bool)

(assert (=> bs!466468 m!2832899))

(assert (=> bs!466468 m!2832245))

(assert (=> bs!466468 m!2832251))

(assert (=> bs!466468 m!2832251))

(declare-fun m!2832901 () Bool)

(assert (=> bs!466468 m!2832901))

(assert (=> bs!466468 m!2832245))

(declare-fun m!2832903 () Bool)

(assert (=> bs!466468 m!2832903))

(assert (=> b!2462964 d!709345))

(declare-fun d!709347 () Bool)

(declare-fun e!1562482 () Bool)

(assert (=> d!709347 e!1562482))

(declare-fun res!1043805 () Bool)

(assert (=> d!709347 (=> (not res!1043805) (not e!1562482))))

(declare-fun lt!881573 () BalanceConc!17948)

(assert (=> d!709347 (= res!1043805 (= (list!11107 lt!881573) (Cons!28674 (h!34075 (t!208931 l!6611)) Nil!28674)))))

(assert (=> d!709347 (= lt!881573 (singleton!890 (h!34075 (t!208931 l!6611))))))

(assert (=> d!709347 (= (singletonSeq!1977 (h!34075 (t!208931 l!6611))) lt!881573)))

(declare-fun b!2463455 () Bool)

(assert (=> b!2463455 (= e!1562482 (isBalanced!2798 (c!392951 lt!881573)))))

(assert (= (and d!709347 res!1043805) b!2463455))

(declare-fun m!2832905 () Bool)

(assert (=> d!709347 m!2832905))

(declare-fun m!2832907 () Bool)

(assert (=> d!709347 m!2832907))

(declare-fun m!2832909 () Bool)

(assert (=> b!2463455 m!2832909))

(assert (=> b!2462964 d!709347))

(declare-fun d!709349 () Bool)

(assert (=> d!709349 (= (isEmpty!16666 (list!11106 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))) ((_ is Nil!28673) (list!11106 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(assert (=> d!709201 d!709349))

(declare-fun d!709351 () Bool)

(assert (=> d!709351 (= (list!11106 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))) (list!11110 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(declare-fun bs!466469 () Bool)

(assert (= bs!466469 d!709351))

(declare-fun m!2832911 () Bool)

(assert (=> bs!466469 m!2832911))

(assert (=> d!709201 d!709351))

(declare-fun lt!881576 () Bool)

(declare-fun d!709353 () Bool)

(assert (=> d!709353 (= lt!881576 (isEmpty!16666 (list!11110 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))))))

(assert (=> d!709353 (= lt!881576 (= (size!22324 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))) 0))))

(assert (=> d!709353 (= (isEmpty!16670 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))) lt!881576)))

(declare-fun bs!466470 () Bool)

(assert (= bs!466470 d!709353))

(assert (=> bs!466470 m!2832911))

(assert (=> bs!466470 m!2832911))

(declare-fun m!2832913 () Bool)

(assert (=> bs!466470 m!2832913))

(declare-fun m!2832915 () Bool)

(assert (=> bs!466470 m!2832915))

(assert (=> d!709201 d!709353))

(declare-fun d!709355 () Bool)

(declare-fun res!1043812 () Bool)

(declare-fun e!1562485 () Bool)

(assert (=> d!709355 (=> (not res!1043812) (not e!1562485))))

(assert (=> d!709355 (= res!1043812 (= (csize!18560 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) (+ (size!22324 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) (size!22324 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))))

(assert (=> d!709355 (= (inv!38764 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) e!1562485)))

(declare-fun b!2463462 () Bool)

(declare-fun res!1043813 () Bool)

(assert (=> b!2463462 (=> (not res!1043813) (not e!1562485))))

(assert (=> b!2463462 (= res!1043813 (and (not (= (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) Empty!9165)) (not (= (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) Empty!9165))))))

(declare-fun b!2463463 () Bool)

(declare-fun res!1043814 () Bool)

(assert (=> b!2463463 (=> (not res!1043814) (not e!1562485))))

(assert (=> b!2463463 (= res!1043814 (= (cheight!9376 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) (+ (max!0 (height!1338 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) (height!1338 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) 1)))))

(declare-fun b!2463464 () Bool)

(assert (=> b!2463464 (= e!1562485 (<= 0 (cheight!9376 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(assert (= (and d!709355 res!1043812) b!2463462))

(assert (= (and b!2463462 res!1043813) b!2463463))

(assert (= (and b!2463463 res!1043814) b!2463464))

(declare-fun m!2832917 () Bool)

(assert (=> d!709355 m!2832917))

(declare-fun m!2832919 () Bool)

(assert (=> d!709355 m!2832919))

(declare-fun m!2832921 () Bool)

(assert (=> b!2463463 m!2832921))

(declare-fun m!2832923 () Bool)

(assert (=> b!2463463 m!2832923))

(assert (=> b!2463463 m!2832921))

(assert (=> b!2463463 m!2832923))

(declare-fun m!2832925 () Bool)

(assert (=> b!2463463 m!2832925))

(assert (=> b!2462866 d!709355))

(assert (=> b!2463085 d!709093))

(declare-fun d!709357 () Bool)

(declare-fun c!393038 () Bool)

(assert (=> d!709357 (= c!393038 ((_ is Nil!28672) (text!32964 (value!142487 t1!67))))))

(declare-fun e!1562486 () Int)

(assert (=> d!709357 (= (charsToBigInt!0 (text!32964 (value!142487 t1!67)) 0) e!1562486)))

(declare-fun b!2463465 () Bool)

(assert (=> b!2463465 (= e!1562486 0)))

(declare-fun b!2463466 () Bool)

(assert (=> b!2463466 (= e!1562486 (charsToBigInt!0 (t!208929 (text!32964 (value!142487 t1!67))) (+ (* 0 10) (charToBigInt!0 (h!34073 (text!32964 (value!142487 t1!67)))))))))

(assert (= (and d!709357 c!393038) b!2463465))

(assert (= (and d!709357 (not c!393038)) b!2463466))

(declare-fun m!2832927 () Bool)

(assert (=> b!2463466 m!2832927))

(declare-fun m!2832929 () Bool)

(assert (=> b!2463466 m!2832929))

(assert (=> d!709207 d!709357))

(declare-fun d!709359 () Bool)

(declare-fun lt!881577 () Int)

(assert (=> d!709359 (>= lt!881577 0)))

(declare-fun e!1562487 () Int)

(assert (=> d!709359 (= lt!881577 e!1562487)))

(declare-fun c!393039 () Bool)

(assert (=> d!709359 (= c!393039 ((_ is Nil!28674) (list!11107 (_1!16648 lt!881277))))))

(assert (=> d!709359 (= (size!22315 (list!11107 (_1!16648 lt!881277))) lt!881577)))

(declare-fun b!2463467 () Bool)

(assert (=> b!2463467 (= e!1562487 0)))

(declare-fun b!2463468 () Bool)

(assert (=> b!2463468 (= e!1562487 (+ 1 (size!22315 (t!208931 (list!11107 (_1!16648 lt!881277))))))))

(assert (= (and d!709359 c!393039) b!2463467))

(assert (= (and d!709359 (not c!393039)) b!2463468))

(declare-fun m!2832931 () Bool)

(assert (=> b!2463468 m!2832931))

(assert (=> d!708939 d!709359))

(assert (=> d!708939 d!709333))

(declare-fun d!709361 () Bool)

(declare-fun lt!881580 () Int)

(assert (=> d!709361 (= lt!881580 (size!22315 (list!11109 (c!392951 (_1!16648 lt!881277)))))))

(assert (=> d!709361 (= lt!881580 (ite ((_ is Empty!9167) (c!392951 (_1!16648 lt!881277))) 0 (ite ((_ is Leaf!13704) (c!392951 (_1!16648 lt!881277))) (csize!18565 (c!392951 (_1!16648 lt!881277))) (csize!18564 (c!392951 (_1!16648 lt!881277))))))))

(assert (=> d!709361 (= (size!22323 (c!392951 (_1!16648 lt!881277))) lt!881580)))

(declare-fun bs!466471 () Bool)

(assert (= bs!466471 d!709361))

(assert (=> bs!466471 m!2832853))

(assert (=> bs!466471 m!2832853))

(declare-fun m!2832933 () Bool)

(assert (=> bs!466471 m!2832933))

(assert (=> d!708939 d!709361))

(declare-fun b!2463469 () Bool)

(declare-fun res!1043815 () Bool)

(declare-fun e!1562488 () Bool)

(assert (=> b!2463469 (=> (not res!1043815) (not e!1562488))))

(assert (=> b!2463469 (= res!1043815 (isBalanced!2798 (left!22027 (c!392951 lt!881360))))))

(declare-fun b!2463470 () Bool)

(assert (=> b!2463470 (= e!1562488 (not (isEmpty!16672 (right!22357 (c!392951 lt!881360)))))))

(declare-fun b!2463471 () Bool)

(declare-fun res!1043816 () Bool)

(assert (=> b!2463471 (=> (not res!1043816) (not e!1562488))))

(assert (=> b!2463471 (= res!1043816 (isBalanced!2798 (right!22357 (c!392951 lt!881360))))))

(declare-fun b!2463472 () Bool)

(declare-fun res!1043820 () Bool)

(assert (=> b!2463472 (=> (not res!1043820) (not e!1562488))))

(assert (=> b!2463472 (= res!1043820 (<= (- (height!1339 (left!22027 (c!392951 lt!881360))) (height!1339 (right!22357 (c!392951 lt!881360)))) 1))))

(declare-fun b!2463473 () Bool)

(declare-fun e!1562489 () Bool)

(assert (=> b!2463473 (= e!1562489 e!1562488)))

(declare-fun res!1043817 () Bool)

(assert (=> b!2463473 (=> (not res!1043817) (not e!1562488))))

(assert (=> b!2463473 (= res!1043817 (<= (- 1) (- (height!1339 (left!22027 (c!392951 lt!881360))) (height!1339 (right!22357 (c!392951 lt!881360))))))))

(declare-fun b!2463474 () Bool)

(declare-fun res!1043818 () Bool)

(assert (=> b!2463474 (=> (not res!1043818) (not e!1562488))))

(assert (=> b!2463474 (= res!1043818 (not (isEmpty!16672 (left!22027 (c!392951 lt!881360)))))))

(declare-fun d!709363 () Bool)

(declare-fun res!1043819 () Bool)

(assert (=> d!709363 (=> res!1043819 e!1562489)))

(assert (=> d!709363 (= res!1043819 (not ((_ is Node!9167) (c!392951 lt!881360))))))

(assert (=> d!709363 (= (isBalanced!2798 (c!392951 lt!881360)) e!1562489)))

(assert (= (and d!709363 (not res!1043819)) b!2463473))

(assert (= (and b!2463473 res!1043817) b!2463472))

(assert (= (and b!2463472 res!1043820) b!2463469))

(assert (= (and b!2463469 res!1043815) b!2463471))

(assert (= (and b!2463471 res!1043816) b!2463474))

(assert (= (and b!2463474 res!1043818) b!2463470))

(declare-fun m!2832935 () Bool)

(assert (=> b!2463469 m!2832935))

(declare-fun m!2832937 () Bool)

(assert (=> b!2463474 m!2832937))

(declare-fun m!2832939 () Bool)

(assert (=> b!2463470 m!2832939))

(declare-fun m!2832941 () Bool)

(assert (=> b!2463473 m!2832941))

(declare-fun m!2832943 () Bool)

(assert (=> b!2463473 m!2832943))

(declare-fun m!2832945 () Bool)

(assert (=> b!2463471 m!2832945))

(assert (=> b!2463472 m!2832941))

(assert (=> b!2463472 m!2832943))

(assert (=> b!2462842 d!709363))

(declare-fun d!709365 () Bool)

(declare-fun res!1043821 () Bool)

(declare-fun e!1562490 () Bool)

(assert (=> d!709365 (=> (not res!1043821) (not e!1562490))))

(assert (=> d!709365 (= res!1043821 (= (csize!18560 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) (+ (size!22324 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) (size!22324 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))))

(assert (=> d!709365 (= (inv!38764 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) e!1562490)))

(declare-fun b!2463475 () Bool)

(declare-fun res!1043822 () Bool)

(assert (=> b!2463475 (=> (not res!1043822) (not e!1562490))))

(assert (=> b!2463475 (= res!1043822 (and (not (= (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) Empty!9165)) (not (= (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) Empty!9165))))))

(declare-fun b!2463476 () Bool)

(declare-fun res!1043823 () Bool)

(assert (=> b!2463476 (=> (not res!1043823) (not e!1562490))))

(assert (=> b!2463476 (= res!1043823 (= (cheight!9376 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) (+ (max!0 (height!1338 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) (height!1338 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) 1)))))

(declare-fun b!2463477 () Bool)

(assert (=> b!2463477 (= e!1562490 (<= 0 (cheight!9376 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(assert (= (and d!709365 res!1043821) b!2463475))

(assert (= (and b!2463475 res!1043822) b!2463476))

(assert (= (and b!2463476 res!1043823) b!2463477))

(declare-fun m!2832947 () Bool)

(assert (=> d!709365 m!2832947))

(declare-fun m!2832949 () Bool)

(assert (=> d!709365 m!2832949))

(declare-fun m!2832951 () Bool)

(assert (=> b!2463476 m!2832951))

(declare-fun m!2832953 () Bool)

(assert (=> b!2463476 m!2832953))

(assert (=> b!2463476 m!2832951))

(assert (=> b!2463476 m!2832953))

(declare-fun m!2832955 () Bool)

(assert (=> b!2463476 m!2832955))

(assert (=> b!2462903 d!709365))

(declare-fun d!709367 () Bool)

(assert (=> d!709367 (= (charsToInt!0 (text!32962 (value!142487 (h!34075 l!6611)))) (choose!625 (text!32962 (value!142487 (h!34075 l!6611)))))))

(declare-fun bs!466472 () Bool)

(assert (= bs!466472 d!709367))

(declare-fun m!2832957 () Bool)

(assert (=> bs!466472 m!2832957))

(assert (=> d!709209 d!709367))

(declare-fun d!709369 () Bool)

(declare-fun lt!881581 () Int)

(assert (=> d!709369 (>= lt!881581 0)))

(declare-fun e!1562491 () Int)

(assert (=> d!709369 (= lt!881581 e!1562491)))

(declare-fun c!393040 () Bool)

(assert (=> d!709369 (= c!393040 ((_ is Nil!28673) (list!11106 (charsOf!2813 (h!34075 (t!208931 l!6611))))))))

(assert (=> d!709369 (= (size!22319 (list!11106 (charsOf!2813 (h!34075 (t!208931 l!6611))))) lt!881581)))

(declare-fun b!2463478 () Bool)

(assert (=> b!2463478 (= e!1562491 0)))

(declare-fun b!2463479 () Bool)

(assert (=> b!2463479 (= e!1562491 (+ 1 (size!22319 (t!208930 (list!11106 (charsOf!2813 (h!34075 (t!208931 l!6611))))))))))

(assert (= (and d!709369 c!393040) b!2463478))

(assert (= (and d!709369 (not c!393040)) b!2463479))

(declare-fun m!2832959 () Bool)

(assert (=> b!2463479 m!2832959))

(assert (=> d!709079 d!709369))

(declare-fun d!709371 () Bool)

(assert (=> d!709371 (= (list!11106 (charsOf!2813 (h!34075 (t!208931 l!6611)))) (list!11110 (c!392914 (charsOf!2813 (h!34075 (t!208931 l!6611))))))))

(declare-fun bs!466473 () Bool)

(assert (= bs!466473 d!709371))

(declare-fun m!2832961 () Bool)

(assert (=> bs!466473 m!2832961))

(assert (=> d!709079 d!709371))

(declare-fun d!709373 () Bool)

(declare-fun lt!881584 () Int)

(assert (=> d!709373 (= lt!881584 (size!22319 (list!11110 (c!392914 (charsOf!2813 (h!34075 (t!208931 l!6611)))))))))

(assert (=> d!709373 (= lt!881584 (ite ((_ is Empty!9165) (c!392914 (charsOf!2813 (h!34075 (t!208931 l!6611))))) 0 (ite ((_ is Leaf!13702) (c!392914 (charsOf!2813 (h!34075 (t!208931 l!6611))))) (csize!18561 (c!392914 (charsOf!2813 (h!34075 (t!208931 l!6611))))) (csize!18560 (c!392914 (charsOf!2813 (h!34075 (t!208931 l!6611))))))))))

(assert (=> d!709373 (= (size!22324 (c!392914 (charsOf!2813 (h!34075 (t!208931 l!6611))))) lt!881584)))

(declare-fun bs!466474 () Bool)

(assert (= bs!466474 d!709373))

(assert (=> bs!466474 m!2832961))

(assert (=> bs!466474 m!2832961))

(declare-fun m!2832963 () Bool)

(assert (=> bs!466474 m!2832963))

(assert (=> d!709079 d!709373))

(declare-fun d!709375 () Bool)

(assert (=> d!709375 (= (isEmpty!16666 (list!11106 (_2!16648 lt!881277))) ((_ is Nil!28673) (list!11106 (_2!16648 lt!881277))))))

(assert (=> d!709161 d!709375))

(declare-fun d!709377 () Bool)

(assert (=> d!709377 (= (list!11106 (_2!16648 lt!881277)) (list!11110 (c!392914 (_2!16648 lt!881277))))))

(declare-fun bs!466475 () Bool)

(assert (= bs!466475 d!709377))

(declare-fun m!2832965 () Bool)

(assert (=> bs!466475 m!2832965))

(assert (=> d!709161 d!709377))

(declare-fun d!709379 () Bool)

(declare-fun lt!881585 () Bool)

(assert (=> d!709379 (= lt!881585 (isEmpty!16666 (list!11110 (c!392914 (_2!16648 lt!881277)))))))

(assert (=> d!709379 (= lt!881585 (= (size!22324 (c!392914 (_2!16648 lt!881277))) 0))))

(assert (=> d!709379 (= (isEmpty!16670 (c!392914 (_2!16648 lt!881277))) lt!881585)))

(declare-fun bs!466476 () Bool)

(assert (= bs!466476 d!709379))

(assert (=> bs!466476 m!2832965))

(assert (=> bs!466476 m!2832965))

(declare-fun m!2832967 () Bool)

(assert (=> bs!466476 m!2832967))

(declare-fun m!2832969 () Bool)

(assert (=> bs!466476 m!2832969))

(assert (=> d!709161 d!709379))

(declare-fun d!709381 () Bool)

(declare-fun res!1043824 () Bool)

(declare-fun e!1562492 () Bool)

(assert (=> d!709381 (=> (not res!1043824) (not e!1562492))))

(assert (=> d!709381 (= res!1043824 (not (isEmpty!16666 (originalCharacters!5225 (h!34075 (t!208931 (t!208931 l!6611)))))))))

(assert (=> d!709381 (= (inv!38759 (h!34075 (t!208931 (t!208931 l!6611)))) e!1562492)))

(declare-fun b!2463480 () Bool)

(declare-fun res!1043825 () Bool)

(assert (=> b!2463480 (=> (not res!1043825) (not e!1562492))))

(assert (=> b!2463480 (= res!1043825 (= (originalCharacters!5225 (h!34075 (t!208931 (t!208931 l!6611)))) (list!11106 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (value!142487 (h!34075 (t!208931 (t!208931 l!6611))))))))))

(declare-fun b!2463481 () Bool)

(assert (=> b!2463481 (= e!1562492 (= (size!22314 (h!34075 (t!208931 (t!208931 l!6611)))) (size!22319 (originalCharacters!5225 (h!34075 (t!208931 (t!208931 l!6611)))))))))

(assert (= (and d!709381 res!1043824) b!2463480))

(assert (= (and b!2463480 res!1043825) b!2463481))

(declare-fun b_lambda!75491 () Bool)

(assert (=> (not b_lambda!75491) (not b!2463480)))

(declare-fun t!209082 () Bool)

(declare-fun tb!139137 () Bool)

(assert (=> (and b!2463221 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) t!209082) tb!139137))

(declare-fun b!2463482 () Bool)

(declare-fun e!1562493 () Bool)

(declare-fun tp!784748 () Bool)

(assert (=> b!2463482 (= e!1562493 (and (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (value!142487 (h!34075 (t!208931 (t!208931 l!6611))))))) tp!784748))))

(declare-fun result!171744 () Bool)

(assert (=> tb!139137 (= result!171744 (and (inv!38763 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (value!142487 (h!34075 (t!208931 (t!208931 l!6611)))))) e!1562493))))

(assert (= tb!139137 b!2463482))

(declare-fun m!2832971 () Bool)

(assert (=> b!2463482 m!2832971))

(declare-fun m!2832973 () Bool)

(assert (=> tb!139137 m!2832973))

(assert (=> b!2463480 t!209082))

(declare-fun b_and!186069 () Bool)

(assert (= b_and!186059 (and (=> t!209082 result!171744) b_and!186069)))

(declare-fun t!209084 () Bool)

(declare-fun tb!139139 () Bool)

(assert (=> (and b!2462446 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) t!209084) tb!139139))

(declare-fun result!171746 () Bool)

(assert (= result!171746 result!171744))

(assert (=> b!2463480 t!209084))

(declare-fun b_and!186071 () Bool)

(assert (= b_and!186067 (and (=> t!209084 result!171746) b_and!186071)))

(declare-fun t!209086 () Bool)

(declare-fun tb!139141 () Bool)

(assert (=> (and b!2462794 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) t!209086) tb!139141))

(declare-fun result!171748 () Bool)

(assert (= result!171748 result!171744))

(assert (=> b!2463480 t!209086))

(declare-fun b_and!186073 () Bool)

(assert (= b_and!186061 (and (=> t!209086 result!171748) b_and!186073)))

(declare-fun t!209088 () Bool)

(declare-fun tb!139143 () Bool)

(assert (=> (and b!2462453 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) t!209088) tb!139143))

(declare-fun result!171750 () Bool)

(assert (= result!171750 result!171744))

(assert (=> b!2463480 t!209088))

(declare-fun b_and!186075 () Bool)

(assert (= b_and!186053 (and (=> t!209088 result!171750) b_and!186075)))

(declare-fun t!209090 () Bool)

(declare-fun tb!139145 () Bool)

(assert (=> (and b!2462755 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) t!209090) tb!139145))

(declare-fun result!171752 () Bool)

(assert (= result!171752 result!171744))

(assert (=> b!2463480 t!209090))

(declare-fun b_and!186077 () Bool)

(assert (= b_and!186055 (and (=> t!209090 result!171752) b_and!186077)))

(declare-fun t!209092 () Bool)

(declare-fun tb!139147 () Bool)

(assert (=> (and b!2462465 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) t!209092) tb!139147))

(declare-fun result!171754 () Bool)

(assert (= result!171754 result!171744))

(assert (=> b!2463480 t!209092))

(declare-fun b_and!186079 () Bool)

(assert (= b_and!186065 (and (=> t!209092 result!171754) b_and!186079)))

(declare-fun tb!139149 () Bool)

(declare-fun t!209094 () Bool)

(assert (=> (and b!2463224 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) t!209094) tb!139149))

(declare-fun result!171756 () Bool)

(assert (= result!171756 result!171744))

(assert (=> b!2463480 t!209094))

(declare-fun b_and!186081 () Bool)

(assert (= b_and!186063 (and (=> t!209094 result!171756) b_and!186081)))

(declare-fun tb!139151 () Bool)

(declare-fun t!209096 () Bool)

(assert (=> (and b!2462445 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) t!209096) tb!139151))

(declare-fun result!171758 () Bool)

(assert (= result!171758 result!171744))

(assert (=> b!2463480 t!209096))

(declare-fun b_and!186083 () Bool)

(assert (= b_and!186057 (and (=> t!209096 result!171758) b_and!186083)))

(declare-fun m!2832975 () Bool)

(assert (=> d!709381 m!2832975))

(declare-fun m!2832977 () Bool)

(assert (=> b!2463480 m!2832977))

(assert (=> b!2463480 m!2832977))

(declare-fun m!2832979 () Bool)

(assert (=> b!2463480 m!2832979))

(declare-fun m!2832981 () Bool)

(assert (=> b!2463481 m!2832981))

(assert (=> b!2463218 d!709381))

(declare-fun d!709383 () Bool)

(assert (=> d!709383 (= (Forall!1135 lambda!93200) (choose!14568 lambda!93200))))

(declare-fun bs!466477 () Bool)

(assert (= bs!466477 d!709383))

(declare-fun m!2832983 () Bool)

(assert (=> bs!466477 m!2832983))

(assert (=> d!709187 d!709383))

(declare-fun d!709385 () Bool)

(assert (=> d!709385 (= (list!11106 (_2!16648 lt!881355)) (list!11110 (c!392914 (_2!16648 lt!881355))))))

(declare-fun bs!466478 () Bool)

(assert (= bs!466478 d!709385))

(declare-fun m!2832985 () Bool)

(assert (=> bs!466478 m!2832985))

(assert (=> b!2462836 d!709385))

(declare-fun b!2463493 () Bool)

(declare-fun e!1562500 () Bool)

(declare-fun lt!881593 () tuple2!28218)

(declare-fun isEmpty!16675 (List!28774) Bool)

(assert (=> b!2463493 (= e!1562500 (not (isEmpty!16675 (_1!16650 lt!881593))))))

(declare-fun d!709387 () Bool)

(declare-fun e!1562501 () Bool)

(assert (=> d!709387 e!1562501))

(declare-fun c!393045 () Bool)

(assert (=> d!709387 (= c!393045 (> (size!22315 (_1!16650 lt!881593)) 0))))

(declare-fun e!1562502 () tuple2!28218)

(assert (=> d!709387 (= lt!881593 e!1562502)))

(declare-fun c!393046 () Bool)

(declare-datatypes ((tuple2!28222 0))(
  ( (tuple2!28223 (_1!16652 Token!8388) (_2!16652 List!28773)) )
))
(declare-datatypes ((Option!5714 0))(
  ( (None!5713) (Some!5713 (v!31137 tuple2!28222)) )
))
(declare-fun lt!881592 () Option!5714)

(assert (=> d!709387 (= c!393046 ((_ is Some!5713) lt!881592))))

(declare-fun maxPrefix!2277 (LexerInterface!4056 List!28775 List!28773) Option!5714)

(assert (=> d!709387 (= lt!881592 (maxPrefix!2277 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))

(assert (=> d!709387 (= (lexList!1146 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))) lt!881593)))

(declare-fun b!2463494 () Bool)

(assert (=> b!2463494 (= e!1562501 (= (_2!16650 lt!881593) (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))

(declare-fun b!2463495 () Bool)

(declare-fun lt!881594 () tuple2!28218)

(assert (=> b!2463495 (= e!1562502 (tuple2!28219 (Cons!28674 (_1!16652 (v!31137 lt!881592)) (_1!16650 lt!881594)) (_2!16650 lt!881594)))))

(assert (=> b!2463495 (= lt!881594 (lexList!1146 thiss!27932 rules!4472 (_2!16652 (v!31137 lt!881592))))))

(declare-fun b!2463496 () Bool)

(assert (=> b!2463496 (= e!1562502 (tuple2!28219 Nil!28674 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))

(declare-fun b!2463497 () Bool)

(assert (=> b!2463497 (= e!1562501 e!1562500)))

(declare-fun res!1043828 () Bool)

(assert (=> b!2463497 (= res!1043828 (< (size!22319 (_2!16650 lt!881593)) (size!22319 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))))

(assert (=> b!2463497 (=> (not res!1043828) (not e!1562500))))

(assert (= (and d!709387 c!393046) b!2463495))

(assert (= (and d!709387 (not c!393046)) b!2463496))

(assert (= (and d!709387 c!393045) b!2463497))

(assert (= (and d!709387 (not c!393045)) b!2463494))

(assert (= (and b!2463497 res!1043828) b!2463493))

(declare-fun m!2832987 () Bool)

(assert (=> b!2463493 m!2832987))

(declare-fun m!2832989 () Bool)

(assert (=> d!709387 m!2832989))

(assert (=> d!709387 m!2831873))

(declare-fun m!2832991 () Bool)

(assert (=> d!709387 m!2832991))

(declare-fun m!2832993 () Bool)

(assert (=> b!2463495 m!2832993))

(declare-fun m!2832995 () Bool)

(assert (=> b!2463497 m!2832995))

(assert (=> b!2463497 m!2831873))

(assert (=> b!2463497 m!2832729))

(assert (=> b!2462836 d!709387))

(declare-fun d!709389 () Bool)

(assert (=> d!709389 (= (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))) (list!11110 (c!392914 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))

(declare-fun bs!466479 () Bool)

(assert (= bs!466479 d!709389))

(declare-fun m!2832997 () Bool)

(assert (=> bs!466479 m!2832997))

(assert (=> b!2462836 d!709389))

(declare-fun d!709391 () Bool)

(assert (=> d!709391 (= (Forall2!745 lambda!93198) (choose!14569 lambda!93198))))

(declare-fun bs!466480 () Bool)

(assert (= bs!466480 d!709391))

(declare-fun m!2832999 () Bool)

(assert (=> bs!466480 m!2832999))

(assert (=> d!709167 d!709391))

(declare-fun d!709393 () Bool)

(assert (=> d!709393 (= (list!11106 (_2!16648 lt!881393)) (list!11110 (c!392914 (_2!16648 lt!881393))))))

(declare-fun bs!466481 () Bool)

(assert (= bs!466481 d!709393))

(declare-fun m!2833001 () Bool)

(assert (=> bs!466481 m!2833001))

(assert (=> b!2462895 d!709393))

(declare-fun b!2463498 () Bool)

(declare-fun e!1562503 () Bool)

(declare-fun lt!881596 () tuple2!28218)

(assert (=> b!2463498 (= e!1562503 (not (isEmpty!16675 (_1!16650 lt!881596))))))

(declare-fun d!709395 () Bool)

(declare-fun e!1562504 () Bool)

(assert (=> d!709395 e!1562504))

(declare-fun c!393047 () Bool)

(assert (=> d!709395 (= c!393047 (> (size!22315 (_1!16650 lt!881596)) 0))))

(declare-fun e!1562505 () tuple2!28218)

(assert (=> d!709395 (= lt!881596 e!1562505)))

(declare-fun c!393048 () Bool)

(declare-fun lt!881595 () Option!5714)

(assert (=> d!709395 (= c!393048 ((_ is Some!5713) lt!881595))))

(assert (=> d!709395 (= lt!881595 (maxPrefix!2277 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))

(assert (=> d!709395 (= (lexList!1146 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))) lt!881596)))

(declare-fun b!2463499 () Bool)

(assert (=> b!2463499 (= e!1562504 (= (_2!16650 lt!881596) (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))

(declare-fun b!2463500 () Bool)

(declare-fun lt!881597 () tuple2!28218)

(assert (=> b!2463500 (= e!1562505 (tuple2!28219 (Cons!28674 (_1!16652 (v!31137 lt!881595)) (_1!16650 lt!881597)) (_2!16650 lt!881597)))))

(assert (=> b!2463500 (= lt!881597 (lexList!1146 thiss!27932 rules!4472 (_2!16652 (v!31137 lt!881595))))))

(declare-fun b!2463501 () Bool)

(assert (=> b!2463501 (= e!1562505 (tuple2!28219 Nil!28674 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))

(declare-fun b!2463502 () Bool)

(assert (=> b!2463502 (= e!1562504 e!1562503)))

(declare-fun res!1043829 () Bool)

(assert (=> b!2463502 (= res!1043829 (< (size!22319 (_2!16650 lt!881596)) (size!22319 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))))

(assert (=> b!2463502 (=> (not res!1043829) (not e!1562503))))

(assert (= (and d!709395 c!393048) b!2463500))

(assert (= (and d!709395 (not c!393048)) b!2463501))

(assert (= (and d!709395 c!393047) b!2463502))

(assert (= (and d!709395 (not c!393047)) b!2463499))

(assert (= (and b!2463502 res!1043829) b!2463498))

(declare-fun m!2833003 () Bool)

(assert (=> b!2463498 m!2833003))

(declare-fun m!2833005 () Bool)

(assert (=> d!709395 m!2833005))

(assert (=> d!709395 m!2832037))

(declare-fun m!2833007 () Bool)

(assert (=> d!709395 m!2833007))

(declare-fun m!2833009 () Bool)

(assert (=> b!2463500 m!2833009))

(declare-fun m!2833011 () Bool)

(assert (=> b!2463502 m!2833011))

(assert (=> b!2463502 m!2832037))

(assert (=> b!2463502 m!2832817))

(assert (=> b!2462895 d!709395))

(declare-fun d!709397 () Bool)

(assert (=> d!709397 (= (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))) (list!11110 (c!392914 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))

(declare-fun bs!466482 () Bool)

(assert (= bs!466482 d!709397))

(declare-fun m!2833013 () Bool)

(assert (=> bs!466482 m!2833013))

(assert (=> b!2462895 d!709397))

(declare-fun d!709399 () Bool)

(assert (=> d!709399 (= (separableTokensPredicate!836 thiss!27932 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))) (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) rules!4472) (not (prefixMatchZipperSequence!713 (rulesRegex!973 thiss!27932 rules!4472) (++!7127 (charsOf!2813 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) (singletonSeq!1978 (apply!6734 (charsOf!2813 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))) 0))))))))

(declare-fun bs!466483 () Bool)

(assert (= bs!466483 d!709399))

(assert (=> bs!466483 m!2832375))

(declare-fun m!2833015 () Bool)

(assert (=> bs!466483 m!2833015))

(declare-fun m!2833017 () Bool)

(assert (=> bs!466483 m!2833017))

(declare-fun m!2833019 () Bool)

(assert (=> bs!466483 m!2833019))

(assert (=> bs!466483 m!2832211))

(assert (=> bs!466483 m!2833019))

(assert (=> bs!466483 m!2833017))

(declare-fun m!2833021 () Bool)

(assert (=> bs!466483 m!2833021))

(assert (=> bs!466483 m!2832211))

(assert (=> bs!466483 m!2833021))

(declare-fun m!2833023 () Bool)

(assert (=> bs!466483 m!2833023))

(assert (=> bs!466483 m!2832375))

(assert (=> bs!466483 m!2833015))

(assert (=> b!2463007 d!709399))

(declare-fun d!709401 () Bool)

(assert (=> d!709401 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))

(declare-fun lt!881612 () Unit!42006)

(assert (=> d!709401 (= lt!881612 (choose!14566 thiss!27932 rules!4472 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))) (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))

(assert (=> d!709401 (not (isEmpty!16663 rules!4472))))

(assert (=> d!709401 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 thiss!27932 rules!4472 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))) (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))) lt!881612)))

(declare-fun bs!466484 () Bool)

(assert (= bs!466484 d!709401))

(assert (=> bs!466484 m!2832377))

(declare-fun m!2833025 () Bool)

(assert (=> bs!466484 m!2833025))

(assert (=> bs!466484 m!2831465))

(assert (=> b!2463007 d!709401))

(declare-fun d!709403 () Bool)

(declare-fun lt!881621 () BalanceConc!17944)

(assert (=> d!709403 (= (list!11106 lt!881621) (originalCharacters!5225 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))

(assert (=> d!709403 (= lt!881621 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))) (value!142487 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))))

(assert (=> d!709403 (= (charsOf!2813 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))) lt!881621)))

(declare-fun b_lambda!75493 () Bool)

(assert (=> (not b_lambda!75493) (not d!709403)))

(declare-fun tb!139153 () Bool)

(declare-fun t!209098 () Bool)

(assert (=> (and b!2462465 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) t!209098) tb!139153))

(declare-fun b!2463511 () Bool)

(declare-fun e!1562510 () Bool)

(declare-fun tp!784749 () Bool)

(assert (=> b!2463511 (= e!1562510 (and (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))) (value!142487 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) tp!784749))))

(declare-fun result!171760 () Bool)

(assert (=> tb!139153 (= result!171760 (and (inv!38763 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))) (value!142487 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))) e!1562510))))

(assert (= tb!139153 b!2463511))

(declare-fun m!2833027 () Bool)

(assert (=> b!2463511 m!2833027))

(declare-fun m!2833029 () Bool)

(assert (=> tb!139153 m!2833029))

(assert (=> d!709403 t!209098))

(declare-fun b_and!186085 () Bool)

(assert (= b_and!186079 (and (=> t!209098 result!171760) b_and!186085)))

(declare-fun t!209100 () Bool)

(declare-fun tb!139155 () Bool)

(assert (=> (and b!2462794 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) t!209100) tb!139155))

(declare-fun result!171762 () Bool)

(assert (= result!171762 result!171760))

(assert (=> d!709403 t!209100))

(declare-fun b_and!186087 () Bool)

(assert (= b_and!186073 (and (=> t!209100 result!171762) b_and!186087)))

(declare-fun tb!139157 () Bool)

(declare-fun t!209102 () Bool)

(assert (=> (and b!2462445 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) t!209102) tb!139157))

(declare-fun result!171764 () Bool)

(assert (= result!171764 result!171760))

(assert (=> d!709403 t!209102))

(declare-fun b_and!186089 () Bool)

(assert (= b_and!186083 (and (=> t!209102 result!171764) b_and!186089)))

(declare-fun t!209104 () Bool)

(declare-fun tb!139159 () Bool)

(assert (=> (and b!2462446 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) t!209104) tb!139159))

(declare-fun result!171766 () Bool)

(assert (= result!171766 result!171760))

(assert (=> d!709403 t!209104))

(declare-fun b_and!186091 () Bool)

(assert (= b_and!186071 (and (=> t!209104 result!171766) b_and!186091)))

(declare-fun t!209106 () Bool)

(declare-fun tb!139161 () Bool)

(assert (=> (and b!2462755 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) t!209106) tb!139161))

(declare-fun result!171768 () Bool)

(assert (= result!171768 result!171760))

(assert (=> d!709403 t!209106))

(declare-fun b_and!186093 () Bool)

(assert (= b_and!186077 (and (=> t!209106 result!171768) b_and!186093)))

(declare-fun t!209108 () Bool)

(declare-fun tb!139163 () Bool)

(assert (=> (and b!2463224 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) t!209108) tb!139163))

(declare-fun result!171770 () Bool)

(assert (= result!171770 result!171760))

(assert (=> d!709403 t!209108))

(declare-fun b_and!186095 () Bool)

(assert (= b_and!186081 (and (=> t!209108 result!171770) b_and!186095)))

(declare-fun tb!139165 () Bool)

(declare-fun t!209110 () Bool)

(assert (=> (and b!2462453 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) t!209110) tb!139165))

(declare-fun result!171772 () Bool)

(assert (= result!171772 result!171760))

(assert (=> d!709403 t!209110))

(declare-fun b_and!186097 () Bool)

(assert (= b_and!186075 (and (=> t!209110 result!171772) b_and!186097)))

(declare-fun t!209112 () Bool)

(declare-fun tb!139167 () Bool)

(assert (=> (and b!2463221 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) t!209112) tb!139167))

(declare-fun result!171774 () Bool)

(assert (= result!171774 result!171760))

(assert (=> d!709403 t!209112))

(declare-fun b_and!186099 () Bool)

(assert (= b_and!186069 (and (=> t!209112 result!171774) b_and!186099)))

(declare-fun m!2833031 () Bool)

(assert (=> d!709403 m!2833031))

(declare-fun m!2833033 () Bool)

(assert (=> d!709403 m!2833033))

(assert (=> b!2463007 d!709403))

(declare-fun d!709405 () Bool)

(declare-fun lt!881657 () Bool)

(declare-fun e!1562511 () Bool)

(assert (=> d!709405 (= lt!881657 e!1562511)))

(declare-fun res!1043832 () Bool)

(assert (=> d!709405 (=> (not res!1043832) (not e!1562511))))

(assert (=> d!709405 (= res!1043832 (= (list!11107 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))) (list!11107 (singletonSeq!1977 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))))

(declare-fun e!1562512 () Bool)

(assert (=> d!709405 (= lt!881657 e!1562512)))

(declare-fun res!1043831 () Bool)

(assert (=> d!709405 (=> (not res!1043831) (not e!1562512))))

(declare-fun lt!881654 () tuple2!28214)

(assert (=> d!709405 (= res!1043831 (= (size!22320 (_1!16648 lt!881654)) 1))))

(assert (=> d!709405 (= lt!881654 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))))

(assert (=> d!709405 (not (isEmpty!16663 rules!4472))))

(assert (=> d!709405 (= (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))) lt!881657)))

(declare-fun b!2463512 () Bool)

(declare-fun res!1043830 () Bool)

(assert (=> b!2463512 (=> (not res!1043830) (not e!1562512))))

(assert (=> b!2463512 (= res!1043830 (= (apply!6731 (_1!16648 lt!881654) 0) (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))

(declare-fun b!2463513 () Bool)

(assert (=> b!2463513 (= e!1562512 (isEmpty!16667 (_2!16648 lt!881654)))))

(declare-fun b!2463514 () Bool)

(assert (=> b!2463514 (= e!1562511 (isEmpty!16667 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))))))

(assert (= (and d!709405 res!1043831) b!2463512))

(assert (= (and b!2463512 res!1043830) b!2463513))

(assert (= (and d!709405 res!1043832) b!2463514))

(declare-fun m!2833035 () Bool)

(assert (=> d!709405 m!2833035))

(assert (=> d!709405 m!2831465))

(declare-fun m!2833037 () Bool)

(assert (=> d!709405 m!2833037))

(declare-fun m!2833039 () Bool)

(assert (=> d!709405 m!2833039))

(assert (=> d!709405 m!2833035))

(assert (=> d!709405 m!2833037))

(assert (=> d!709405 m!2833035))

(declare-fun m!2833041 () Bool)

(assert (=> d!709405 m!2833041))

(declare-fun m!2833043 () Bool)

(assert (=> d!709405 m!2833043))

(declare-fun m!2833045 () Bool)

(assert (=> d!709405 m!2833045))

(declare-fun m!2833047 () Bool)

(assert (=> b!2463512 m!2833047))

(declare-fun m!2833049 () Bool)

(assert (=> b!2463513 m!2833049))

(assert (=> b!2463514 m!2833035))

(assert (=> b!2463514 m!2833035))

(assert (=> b!2463514 m!2833037))

(assert (=> b!2463514 m!2833037))

(assert (=> b!2463514 m!2833039))

(declare-fun m!2833051 () Bool)

(assert (=> b!2463514 m!2833051))

(assert (=> b!2463007 d!709405))

(declare-fun d!709407 () Bool)

(assert (=> d!709407 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))

(declare-fun lt!881670 () Unit!42006)

(assert (=> d!709407 (= lt!881670 (choose!14566 thiss!27932 rules!4472 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))) (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))

(assert (=> d!709407 (not (isEmpty!16663 rules!4472))))

(assert (=> d!709407 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!654 thiss!27932 rules!4472 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))) (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) lt!881670)))

(declare-fun bs!466485 () Bool)

(assert (= bs!466485 d!709407))

(assert (=> bs!466485 m!2832371))

(declare-fun m!2833053 () Bool)

(assert (=> bs!466485 m!2833053))

(assert (=> bs!466485 m!2831465))

(assert (=> b!2463007 d!709407))

(declare-fun d!709409 () Bool)

(declare-fun lt!881671 () Int)

(assert (=> d!709409 (= lt!881671 (size!22319 (list!11106 (charsOf!2813 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))))

(assert (=> d!709409 (= lt!881671 (size!22324 (c!392914 (charsOf!2813 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611)))))))))))

(assert (=> d!709409 (= (size!22321 (charsOf!2813 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))) lt!881671)))

(declare-fun bs!466486 () Bool)

(assert (= bs!466486 d!709409))

(assert (=> bs!466486 m!2832375))

(declare-fun m!2833055 () Bool)

(assert (=> bs!466486 m!2833055))

(assert (=> bs!466486 m!2833055))

(declare-fun m!2833057 () Bool)

(assert (=> bs!466486 m!2833057))

(declare-fun m!2833059 () Bool)

(assert (=> bs!466486 m!2833059))

(assert (=> b!2463007 d!709409))

(declare-fun d!709411 () Bool)

(declare-fun lt!881673 () Bool)

(declare-fun e!1562515 () Bool)

(assert (=> d!709411 (= lt!881673 e!1562515)))

(declare-fun res!1043835 () Bool)

(assert (=> d!709411 (=> (not res!1043835) (not e!1562515))))

(assert (=> d!709411 (= res!1043835 (= (list!11107 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) (list!11107 (singletonSeq!1977 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))))

(declare-fun e!1562516 () Bool)

(assert (=> d!709411 (= lt!881673 e!1562516)))

(declare-fun res!1043834 () Bool)

(assert (=> d!709411 (=> (not res!1043834) (not e!1562516))))

(declare-fun lt!881672 () tuple2!28214)

(assert (=> d!709411 (= res!1043834 (= (size!22320 (_1!16648 lt!881672)) 1))))

(assert (=> d!709411 (= lt!881672 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))))

(assert (=> d!709411 (not (isEmpty!16663 rules!4472))))

(assert (=> d!709411 (= (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))) lt!881673)))

(declare-fun b!2463519 () Bool)

(declare-fun res!1043833 () Bool)

(assert (=> b!2463519 (=> (not res!1043833) (not e!1562516))))

(assert (=> b!2463519 (= res!1043833 (= (apply!6731 (_1!16648 lt!881672) 0) (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))

(declare-fun b!2463520 () Bool)

(assert (=> b!2463520 (= e!1562516 (isEmpty!16667 (_2!16648 lt!881672)))))

(declare-fun b!2463521 () Bool)

(assert (=> b!2463521 (= e!1562515 (isEmpty!16667 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))))))

(assert (= (and d!709411 res!1043834) b!2463519))

(assert (= (and b!2463519 res!1043833) b!2463520))

(assert (= (and d!709411 res!1043835) b!2463521))

(declare-fun m!2833061 () Bool)

(assert (=> d!709411 m!2833061))

(assert (=> d!709411 m!2831465))

(declare-fun m!2833063 () Bool)

(assert (=> d!709411 m!2833063))

(declare-fun m!2833065 () Bool)

(assert (=> d!709411 m!2833065))

(assert (=> d!709411 m!2833061))

(assert (=> d!709411 m!2833063))

(assert (=> d!709411 m!2833061))

(declare-fun m!2833067 () Bool)

(assert (=> d!709411 m!2833067))

(declare-fun m!2833069 () Bool)

(assert (=> d!709411 m!2833069))

(declare-fun m!2833071 () Bool)

(assert (=> d!709411 m!2833071))

(declare-fun m!2833073 () Bool)

(assert (=> b!2463519 m!2833073))

(declare-fun m!2833075 () Bool)

(assert (=> b!2463520 m!2833075))

(assert (=> b!2463521 m!2833061))

(assert (=> b!2463521 m!2833061))

(assert (=> b!2463521 m!2833063))

(assert (=> b!2463521 m!2833063))

(assert (=> b!2463521 m!2833065))

(declare-fun m!2833077 () Bool)

(assert (=> b!2463521 m!2833077))

(assert (=> b!2463007 d!709411))

(declare-fun d!709413 () Bool)

(declare-fun c!393055 () Bool)

(assert (=> d!709413 (= c!393055 ((_ is Node!9165) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(declare-fun e!1562519 () Bool)

(assert (=> d!709413 (= (inv!38762 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) e!1562519)))

(declare-fun b!2463524 () Bool)

(assert (=> b!2463524 (= e!1562519 (inv!38764 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(declare-fun b!2463525 () Bool)

(declare-fun e!1562520 () Bool)

(assert (=> b!2463525 (= e!1562519 e!1562520)))

(declare-fun res!1043838 () Bool)

(assert (=> b!2463525 (= res!1043838 (not ((_ is Leaf!13702) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))))

(assert (=> b!2463525 (=> res!1043838 e!1562520)))

(declare-fun b!2463526 () Bool)

(assert (=> b!2463526 (= e!1562520 (inv!38765 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(assert (= (and d!709413 c!393055) b!2463524))

(assert (= (and d!709413 (not c!393055)) b!2463525))

(assert (= (and b!2463525 (not res!1043838)) b!2463526))

(declare-fun m!2833079 () Bool)

(assert (=> b!2463524 m!2833079))

(declare-fun m!2833081 () Bool)

(assert (=> b!2463526 m!2833081))

(assert (=> b!2463254 d!709413))

(declare-fun d!709415 () Bool)

(declare-fun c!393056 () Bool)

(assert (=> d!709415 (= c!393056 ((_ is Node!9165) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(declare-fun e!1562521 () Bool)

(assert (=> d!709415 (= (inv!38762 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) e!1562521)))

(declare-fun b!2463527 () Bool)

(assert (=> b!2463527 (= e!1562521 (inv!38764 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(declare-fun b!2463528 () Bool)

(declare-fun e!1562522 () Bool)

(assert (=> b!2463528 (= e!1562521 e!1562522)))

(declare-fun res!1043839 () Bool)

(assert (=> b!2463528 (= res!1043839 (not ((_ is Leaf!13702) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))))

(assert (=> b!2463528 (=> res!1043839 e!1562522)))

(declare-fun b!2463529 () Bool)

(assert (=> b!2463529 (= e!1562522 (inv!38765 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(assert (= (and d!709415 c!393056) b!2463527))

(assert (= (and d!709415 (not c!393056)) b!2463528))

(assert (= (and b!2463528 (not res!1043839)) b!2463529))

(declare-fun m!2833083 () Bool)

(assert (=> b!2463527 m!2833083))

(declare-fun m!2833085 () Bool)

(assert (=> b!2463529 m!2833085))

(assert (=> b!2463254 d!709415))

(declare-fun d!709417 () Bool)

(declare-fun lt!881674 () Bool)

(assert (=> d!709417 (= lt!881674 (select (content!3949 (t!208931 l!6611)) lt!881318))))

(declare-fun e!1562524 () Bool)

(assert (=> d!709417 (= lt!881674 e!1562524)))

(declare-fun res!1043840 () Bool)

(assert (=> d!709417 (=> (not res!1043840) (not e!1562524))))

(assert (=> d!709417 (= res!1043840 ((_ is Cons!28674) (t!208931 l!6611)))))

(assert (=> d!709417 (= (contains!4893 (t!208931 l!6611) lt!881318) lt!881674)))

(declare-fun b!2463530 () Bool)

(declare-fun e!1562523 () Bool)

(assert (=> b!2463530 (= e!1562524 e!1562523)))

(declare-fun res!1043841 () Bool)

(assert (=> b!2463530 (=> res!1043841 e!1562523)))

(assert (=> b!2463530 (= res!1043841 (= (h!34075 (t!208931 l!6611)) lt!881318))))

(declare-fun b!2463531 () Bool)

(assert (=> b!2463531 (= e!1562523 (contains!4893 (t!208931 (t!208931 l!6611)) lt!881318))))

(assert (= (and d!709417 res!1043840) b!2463530))

(assert (= (and b!2463530 (not res!1043841)) b!2463531))

(assert (=> d!709417 m!2832535))

(declare-fun m!2833087 () Bool)

(assert (=> d!709417 m!2833087))

(declare-fun m!2833089 () Bool)

(assert (=> b!2463531 m!2833089))

(assert (=> b!2462976 d!709417))

(declare-fun b!2463544 () Bool)

(declare-fun e!1562529 () Bool)

(assert (=> b!2463544 (= e!1562529 (not (isEmpty!16670 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))))

(declare-fun b!2463545 () Bool)

(declare-fun res!1043855 () Bool)

(assert (=> b!2463545 (=> (not res!1043855) (not e!1562529))))

(assert (=> b!2463545 (= res!1043855 (isBalanced!2799 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(declare-fun b!2463546 () Bool)

(declare-fun res!1043858 () Bool)

(assert (=> b!2463546 (=> (not res!1043858) (not e!1562529))))

(assert (=> b!2463546 (= res!1043858 (isBalanced!2799 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(declare-fun d!709419 () Bool)

(declare-fun res!1043856 () Bool)

(declare-fun e!1562530 () Bool)

(assert (=> d!709419 (=> res!1043856 e!1562530)))

(assert (=> d!709419 (= res!1043856 (not ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(assert (=> d!709419 (= (isBalanced!2799 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) e!1562530)))

(declare-fun b!2463547 () Bool)

(declare-fun res!1043859 () Bool)

(assert (=> b!2463547 (=> (not res!1043859) (not e!1562529))))

(assert (=> b!2463547 (= res!1043859 (not (isEmpty!16670 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))))

(declare-fun b!2463548 () Bool)

(assert (=> b!2463548 (= e!1562530 e!1562529)))

(declare-fun res!1043854 () Bool)

(assert (=> b!2463548 (=> (not res!1043854) (not e!1562529))))

(assert (=> b!2463548 (= res!1043854 (<= (- 1) (- (height!1338 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) (height!1338 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))))

(declare-fun b!2463549 () Bool)

(declare-fun res!1043857 () Bool)

(assert (=> b!2463549 (=> (not res!1043857) (not e!1562529))))

(assert (=> b!2463549 (= res!1043857 (<= (- (height!1338 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) (height!1338 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) 1))))

(assert (= (and d!709419 (not res!1043856)) b!2463548))

(assert (= (and b!2463548 res!1043854) b!2463549))

(assert (= (and b!2463549 res!1043857) b!2463546))

(assert (= (and b!2463546 res!1043858) b!2463545))

(assert (= (and b!2463545 res!1043855) b!2463547))

(assert (= (and b!2463547 res!1043859) b!2463544))

(assert (=> b!2463548 m!2832951))

(assert (=> b!2463548 m!2832953))

(assert (=> b!2463549 m!2832951))

(assert (=> b!2463549 m!2832953))

(declare-fun m!2833091 () Bool)

(assert (=> b!2463544 m!2833091))

(declare-fun m!2833093 () Bool)

(assert (=> b!2463545 m!2833093))

(declare-fun m!2833095 () Bool)

(assert (=> b!2463546 m!2833095))

(declare-fun m!2833097 () Bool)

(assert (=> b!2463547 m!2833097))

(assert (=> d!709193 d!709419))

(assert (=> b!2462848 d!709337))

(declare-fun d!709421 () Bool)

(assert (=> d!709421 (= (list!11107 lt!881397) (list!11109 (c!392951 lt!881397)))))

(declare-fun bs!466487 () Bool)

(assert (= bs!466487 d!709421))

(declare-fun m!2833099 () Bool)

(assert (=> bs!466487 m!2833099))

(assert (=> d!709023 d!709421))

(declare-fun d!709423 () Bool)

(declare-fun e!1562537 () Bool)

(assert (=> d!709423 e!1562537))

(declare-fun res!1043863 () Bool)

(assert (=> d!709423 (=> (not res!1043863) (not e!1562537))))

(declare-fun lt!881711 () BalanceConc!17948)

(assert (=> d!709423 (= res!1043863 (= (list!11107 lt!881711) (Cons!28674 t1!67 Nil!28674)))))

(declare-fun choose!14572 (Token!8388) BalanceConc!17948)

(assert (=> d!709423 (= lt!881711 (choose!14572 t1!67))))

(assert (=> d!709423 (= (singleton!890 t1!67) lt!881711)))

(declare-fun b!2463559 () Bool)

(assert (=> b!2463559 (= e!1562537 (isBalanced!2798 (c!392951 lt!881711)))))

(assert (= (and d!709423 res!1043863) b!2463559))

(declare-fun m!2833101 () Bool)

(assert (=> d!709423 m!2833101))

(declare-fun m!2833103 () Bool)

(assert (=> d!709423 m!2833103))

(declare-fun m!2833105 () Bool)

(assert (=> b!2463559 m!2833105))

(assert (=> d!709023 d!709423))

(declare-fun d!709425 () Bool)

(declare-fun lt!881712 () Int)

(assert (=> d!709425 (= lt!881712 (size!22315 (list!11107 (_1!16648 lt!881439))))))

(assert (=> d!709425 (= lt!881712 (size!22323 (c!392951 (_1!16648 lt!881439))))))

(assert (=> d!709425 (= (size!22320 (_1!16648 lt!881439)) lt!881712)))

(declare-fun bs!466488 () Bool)

(assert (= bs!466488 d!709425))

(assert (=> bs!466488 m!2832827))

(assert (=> bs!466488 m!2832827))

(declare-fun m!2833107 () Bool)

(assert (=> bs!466488 m!2833107))

(declare-fun m!2833109 () Bool)

(assert (=> bs!466488 m!2833109))

(assert (=> d!709105 d!709425))

(declare-fun d!709427 () Bool)

(assert (=> d!709427 (= (list!11107 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611)))))) (list!11109 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611))))))))))

(declare-fun bs!466489 () Bool)

(assert (= bs!466489 d!709427))

(declare-fun m!2833111 () Bool)

(assert (=> bs!466489 m!2833111))

(assert (=> d!709105 d!709427))

(declare-fun d!709429 () Bool)

(declare-fun e!1562538 () Bool)

(assert (=> d!709429 e!1562538))

(declare-fun res!1043864 () Bool)

(assert (=> d!709429 (=> (not res!1043864) (not e!1562538))))

(declare-fun lt!881713 () BalanceConc!17948)

(assert (=> d!709429 (= res!1043864 (= (list!11107 lt!881713) (Cons!28674 (h!34075 l!6611) Nil!28674)))))

(assert (=> d!709429 (= lt!881713 (singleton!890 (h!34075 l!6611)))))

(assert (=> d!709429 (= (singletonSeq!1977 (h!34075 l!6611)) lt!881713)))

(declare-fun b!2463560 () Bool)

(assert (=> b!2463560 (= e!1562538 (isBalanced!2798 (c!392951 lt!881713)))))

(assert (= (and d!709429 res!1043864) b!2463560))

(declare-fun m!2833115 () Bool)

(assert (=> d!709429 m!2833115))

(declare-fun m!2833119 () Bool)

(assert (=> d!709429 m!2833119))

(declare-fun m!2833121 () Bool)

(assert (=> b!2463560 m!2833121))

(assert (=> d!709105 d!709429))

(declare-fun d!709431 () Bool)

(declare-fun lt!881714 () BalanceConc!17944)

(assert (=> d!709431 (= (list!11106 lt!881714) (printList!1130 thiss!27932 (list!11107 (singletonSeq!1977 (h!34075 l!6611)))))))

(assert (=> d!709431 (= lt!881714 (printTailRec!1081 thiss!27932 (singletonSeq!1977 (h!34075 l!6611)) 0 (BalanceConc!17945 Empty!9165)))))

(assert (=> d!709431 (= (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611))) lt!881714)))

(declare-fun bs!466490 () Bool)

(assert (= bs!466490 d!709431))

(declare-fun m!2833133 () Bool)

(assert (=> bs!466490 m!2833133))

(assert (=> bs!466490 m!2832273))

(assert (=> bs!466490 m!2832283))

(assert (=> bs!466490 m!2832283))

(declare-fun m!2833141 () Bool)

(assert (=> bs!466490 m!2833141))

(assert (=> bs!466490 m!2832273))

(declare-fun m!2833145 () Bool)

(assert (=> bs!466490 m!2833145))

(assert (=> d!709105 d!709431))

(declare-fun b!2463561 () Bool)

(declare-fun res!1043867 () Bool)

(declare-fun e!1562540 () Bool)

(assert (=> b!2463561 (=> (not res!1043867) (not e!1562540))))

(declare-fun lt!881715 () tuple2!28214)

(assert (=> b!2463561 (= res!1043867 (= (list!11107 (_1!16648 lt!881715)) (_1!16650 (lexList!1146 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611))))))))))

(declare-fun b!2463562 () Bool)

(assert (=> b!2463562 (= e!1562540 (= (list!11106 (_2!16648 lt!881715)) (_2!16650 (lexList!1146 thiss!27932 rules!4472 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611))))))))))

(declare-fun b!2463563 () Bool)

(declare-fun e!1562539 () Bool)

(declare-fun e!1562541 () Bool)

(assert (=> b!2463563 (= e!1562539 e!1562541)))

(declare-fun res!1043865 () Bool)

(assert (=> b!2463563 (= res!1043865 (< (size!22321 (_2!16648 lt!881715)) (size!22321 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611))))))))

(assert (=> b!2463563 (=> (not res!1043865) (not e!1562541))))

(declare-fun d!709433 () Bool)

(assert (=> d!709433 e!1562540))

(declare-fun res!1043866 () Bool)

(assert (=> d!709433 (=> (not res!1043866) (not e!1562540))))

(assert (=> d!709433 (= res!1043866 e!1562539)))

(declare-fun c!393060 () Bool)

(assert (=> d!709433 (= c!393060 (> (size!22320 (_1!16648 lt!881715)) 0))))

(assert (=> d!709433 (= lt!881715 (lexTailRecV2!821 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611))) (BalanceConc!17945 Empty!9165) (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611))) (BalanceConc!17949 Empty!9167)))))

(assert (=> d!709433 (= (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611)))) lt!881715)))

(declare-fun b!2463564 () Bool)

(assert (=> b!2463564 (= e!1562539 (= (_2!16648 lt!881715) (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611)))))))

(declare-fun b!2463565 () Bool)

(assert (=> b!2463565 (= e!1562541 (not (isEmpty!16669 (_1!16648 lt!881715))))))

(assert (= (and d!709433 c!393060) b!2463563))

(assert (= (and d!709433 (not c!393060)) b!2463564))

(assert (= (and b!2463563 res!1043865) b!2463565))

(assert (= (and d!709433 res!1043866) b!2463561))

(assert (= (and b!2463561 res!1043867) b!2463562))

(declare-fun m!2833179 () Bool)

(assert (=> b!2463563 m!2833179))

(assert (=> b!2463563 m!2832275))

(declare-fun m!2833183 () Bool)

(assert (=> b!2463563 m!2833183))

(declare-fun m!2833187 () Bool)

(assert (=> b!2463561 m!2833187))

(assert (=> b!2463561 m!2832275))

(declare-fun m!2833191 () Bool)

(assert (=> b!2463561 m!2833191))

(assert (=> b!2463561 m!2833191))

(declare-fun m!2833193 () Bool)

(assert (=> b!2463561 m!2833193))

(declare-fun m!2833197 () Bool)

(assert (=> b!2463562 m!2833197))

(assert (=> b!2463562 m!2832275))

(assert (=> b!2463562 m!2833191))

(assert (=> b!2463562 m!2833191))

(assert (=> b!2463562 m!2833193))

(declare-fun m!2833203 () Bool)

(assert (=> d!709433 m!2833203))

(assert (=> d!709433 m!2832275))

(assert (=> d!709433 m!2832275))

(declare-fun m!2833209 () Bool)

(assert (=> d!709433 m!2833209))

(declare-fun m!2833211 () Bool)

(assert (=> b!2463565 m!2833211))

(assert (=> d!709105 d!709433))

(declare-fun d!709435 () Bool)

(assert (=> d!709435 (= (list!11107 (singletonSeq!1977 (h!34075 l!6611))) (list!11109 (c!392951 (singletonSeq!1977 (h!34075 l!6611)))))))

(declare-fun bs!466491 () Bool)

(assert (= bs!466491 d!709435))

(declare-fun m!2833221 () Bool)

(assert (=> bs!466491 m!2833221))

(assert (=> d!709105 d!709435))

(assert (=> d!709105 d!708899))

(assert (=> b!2462736 d!709211))

(declare-fun d!709437 () Bool)

(assert (=> d!709437 (= (Forall!1135 lambda!93181) (choose!14568 lambda!93181))))

(declare-fun bs!466492 () Bool)

(assert (= bs!466492 d!709437))

(declare-fun m!2833227 () Bool)

(assert (=> bs!466492 m!2833227))

(assert (=> d!708983 d!709437))

(declare-fun d!709439 () Bool)

(assert (=> d!709439 (= (Forall2!745 lambda!93185) (choose!14569 lambda!93185))))

(declare-fun bs!466493 () Bool)

(assert (= bs!466493 d!709439))

(declare-fun m!2833233 () Bool)

(assert (=> bs!466493 m!2833233))

(assert (=> d!709045 d!709439))

(declare-fun d!709441 () Bool)

(assert (=> d!709441 (= (inv!38755 (tag!4949 (h!34076 (t!208932 (t!208932 rules!4472))))) (= (mod (str.len (value!142486 (tag!4949 (h!34076 (t!208932 (t!208932 rules!4472)))))) 2) 0))))

(assert (=> b!2463223 d!709441))

(declare-fun d!709443 () Bool)

(declare-fun res!1043868 () Bool)

(declare-fun e!1562542 () Bool)

(assert (=> d!709443 (=> (not res!1043868) (not e!1562542))))

(assert (=> d!709443 (= res!1043868 (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toValue!6315 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472)))))))))

(assert (=> d!709443 (= (inv!38758 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) e!1562542)))

(declare-fun b!2463566 () Bool)

(assert (=> b!2463566 (= e!1562542 (equivClasses!1745 (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toValue!6315 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472)))))))))

(assert (= (and d!709443 res!1043868) b!2463566))

(declare-fun m!2833239 () Bool)

(assert (=> d!709443 m!2833239))

(declare-fun m!2833241 () Bool)

(assert (=> b!2463566 m!2833241))

(assert (=> b!2463223 d!709443))

(assert (=> b!2462733 d!708967))

(declare-fun d!709447 () Bool)

(declare-fun c!393065 () Bool)

(assert (=> d!709447 (= c!393065 ((_ is Empty!9167) (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(declare-fun e!1562549 () List!28774)

(assert (=> d!709447 (= (list!11109 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))) e!1562549)))

(declare-fun b!2463580 () Bool)

(declare-fun e!1562550 () List!28774)

(declare-fun ++!7133 (List!28774 List!28774) List!28774)

(assert (=> b!2463580 (= e!1562550 (++!7133 (list!11109 (left!22027 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))) (list!11109 (right!22357 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))))

(declare-fun b!2463577 () Bool)

(assert (=> b!2463577 (= e!1562549 Nil!28674)))

(declare-fun b!2463578 () Bool)

(assert (=> b!2463578 (= e!1562549 e!1562550)))

(declare-fun c!393066 () Bool)

(assert (=> b!2463578 (= c!393066 ((_ is Leaf!13704) (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(declare-fun b!2463579 () Bool)

(declare-fun list!11115 (IArray!18339) List!28774)

(assert (=> b!2463579 (= e!1562550 (list!11115 (xs!12147 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))))))

(assert (= (and d!709447 c!393065) b!2463577))

(assert (= (and d!709447 (not c!393065)) b!2463578))

(assert (= (and b!2463578 c!393066) b!2463579))

(assert (= (and b!2463578 (not c!393066)) b!2463580))

(declare-fun m!2833257 () Bool)

(assert (=> b!2463580 m!2833257))

(declare-fun m!2833259 () Bool)

(assert (=> b!2463580 m!2833259))

(assert (=> b!2463580 m!2833257))

(assert (=> b!2463580 m!2833259))

(declare-fun m!2833261 () Bool)

(assert (=> b!2463580 m!2833261))

(declare-fun m!2833263 () Bool)

(assert (=> b!2463579 m!2833263))

(assert (=> d!709017 d!709447))

(declare-fun d!709461 () Bool)

(declare-fun lt!881721 () Bool)

(assert (=> d!709461 (= lt!881721 (isEmpty!16675 (list!11107 (_1!16648 lt!881393))))))

(assert (=> d!709461 (= lt!881721 (isEmpty!16672 (c!392951 (_1!16648 lt!881393))))))

(assert (=> d!709461 (= (isEmpty!16669 (_1!16648 lt!881393)) lt!881721)))

(declare-fun bs!466498 () Bool)

(assert (= bs!466498 d!709461))

(assert (=> bs!466498 m!2832035))

(assert (=> bs!466498 m!2832035))

(declare-fun m!2833269 () Bool)

(assert (=> bs!466498 m!2833269))

(declare-fun m!2833271 () Bool)

(assert (=> bs!466498 m!2833271))

(assert (=> b!2462898 d!709461))

(assert (=> d!709095 d!709105))

(declare-fun d!709463 () Bool)

(assert (=> d!709463 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 l!6611))))

(assert (=> d!709463 true))

(declare-fun _$77!719 () Unit!42006)

(assert (=> d!709463 (= (choose!14566 thiss!27932 rules!4472 l!6611 (h!34075 l!6611)) _$77!719)))

(declare-fun bs!466522 () Bool)

(assert (= bs!466522 d!709463))

(assert (=> bs!466522 m!2831703))

(assert (=> d!709095 d!709463))

(assert (=> d!709095 d!708899))

(declare-fun d!709537 () Bool)

(declare-fun lt!881808 () Bool)

(assert (=> d!709537 (= lt!881808 (isEmpty!16666 (list!11106 (_2!16648 lt!881427))))))

(assert (=> d!709537 (= lt!881808 (isEmpty!16670 (c!392914 (_2!16648 lt!881427))))))

(assert (=> d!709537 (= (isEmpty!16667 (_2!16648 lt!881427)) lt!881808)))

(declare-fun bs!466523 () Bool)

(assert (= bs!466523 d!709537))

(declare-fun m!2833573 () Bool)

(assert (=> bs!466523 m!2833573))

(assert (=> bs!466523 m!2833573))

(declare-fun m!2833577 () Bool)

(assert (=> bs!466523 m!2833577))

(declare-fun m!2833579 () Bool)

(assert (=> bs!466523 m!2833579))

(assert (=> b!2462963 d!709537))

(declare-fun d!709541 () Bool)

(declare-fun lt!881809 () Int)

(assert (=> d!709541 (>= lt!881809 0)))

(declare-fun e!1562622 () Int)

(assert (=> d!709541 (= lt!881809 e!1562622)))

(declare-fun c!393110 () Bool)

(assert (=> d!709541 (= c!393110 ((_ is Nil!28673) (t!208930 (originalCharacters!5225 t1!67))))))

(assert (=> d!709541 (= (size!22319 (t!208930 (originalCharacters!5225 t1!67))) lt!881809)))

(declare-fun b!2463708 () Bool)

(assert (=> b!2463708 (= e!1562622 0)))

(declare-fun b!2463709 () Bool)

(assert (=> b!2463709 (= e!1562622 (+ 1 (size!22319 (t!208930 (t!208930 (originalCharacters!5225 t1!67))))))))

(assert (= (and d!709541 c!393110) b!2463708))

(assert (= (and d!709541 (not c!393110)) b!2463709))

(declare-fun m!2833583 () Bool)

(assert (=> b!2463709 m!2833583))

(assert (=> b!2463107 d!709541))

(declare-fun d!709545 () Bool)

(declare-fun lt!881811 () Int)

(assert (=> d!709545 (= lt!881811 (size!22315 (list!11107 (_1!16648 lt!881355))))))

(assert (=> d!709545 (= lt!881811 (size!22323 (c!392951 (_1!16648 lt!881355))))))

(assert (=> d!709545 (= (size!22320 (_1!16648 lt!881355)) lt!881811)))

(declare-fun bs!466525 () Bool)

(assert (= bs!466525 d!709545))

(assert (=> bs!466525 m!2831871))

(assert (=> bs!466525 m!2831871))

(declare-fun m!2833587 () Bool)

(assert (=> bs!466525 m!2833587))

(declare-fun m!2833589 () Bool)

(assert (=> bs!466525 m!2833589))

(assert (=> d!708929 d!709545))

(declare-fun lt!881923 () tuple2!28214)

(declare-fun e!1562689 () Bool)

(declare-fun b!2463820 () Bool)

(declare-fun lexRec!557 (LexerInterface!4056 List!28775 BalanceConc!17944) tuple2!28214)

(assert (=> b!2463820 (= e!1562689 (= (list!11106 (_2!16648 lt!881923)) (list!11106 (_2!16648 (lexRec!557 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(declare-fun b!2463821 () Bool)

(declare-fun e!1562690 () tuple2!28214)

(assert (=> b!2463821 (= e!1562690 (tuple2!28215 (BalanceConc!17949 Empty!9167) (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))

(declare-datatypes ((tuple2!28224 0))(
  ( (tuple2!28225 (_1!16653 Token!8388) (_2!16653 BalanceConc!17944)) )
))
(declare-datatypes ((Option!5715 0))(
  ( (None!5714) (Some!5714 (v!31138 tuple2!28224)) )
))
(declare-fun lt!881925 () Option!5715)

(declare-fun lt!881912 () tuple2!28214)

(declare-fun b!2463822 () Bool)

(assert (=> b!2463822 (= lt!881912 (lexRec!557 thiss!27932 rules!4472 (_2!16653 (v!31138 lt!881925))))))

(declare-fun e!1562692 () tuple2!28214)

(declare-fun prepend!1027 (BalanceConc!17948 Token!8388) BalanceConc!17948)

(assert (=> b!2463822 (= e!1562692 (tuple2!28215 (prepend!1027 (_1!16648 lt!881912) (_1!16653 (v!31138 lt!881925))) (_2!16648 lt!881912)))))

(declare-fun b!2463823 () Bool)

(declare-fun lt!881941 () BalanceConc!17944)

(assert (=> b!2463823 (= e!1562692 (tuple2!28215 (BalanceConc!17949 Empty!9167) lt!881941))))

(declare-fun d!709549 () Bool)

(assert (=> d!709549 e!1562689))

(declare-fun res!1043990 () Bool)

(assert (=> d!709549 (=> (not res!1043990) (not e!1562689))))

(assert (=> d!709549 (= res!1043990 (= (list!11107 (_1!16648 lt!881923)) (list!11107 (_1!16648 (lexRec!557 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(assert (=> d!709549 (= lt!881923 e!1562690)))

(declare-fun c!393131 () Bool)

(declare-fun lt!881929 () Option!5715)

(assert (=> d!709549 (= c!393131 ((_ is Some!5714) lt!881929))))

(declare-fun maxPrefixZipperSequenceV2!427 (LexerInterface!4056 List!28775 BalanceConc!17944 BalanceConc!17944) Option!5715)

(assert (=> d!709549 (= lt!881929 (maxPrefixZipperSequenceV2!427 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)) (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))

(declare-fun lt!881926 () Unit!42006)

(declare-fun lt!881931 () Unit!42006)

(assert (=> d!709549 (= lt!881926 lt!881931)))

(declare-fun lt!881943 () List!28773)

(declare-fun lt!881934 () List!28773)

(declare-fun isSuffix!802 (List!28773 List!28773) Bool)

(assert (=> d!709549 (isSuffix!802 lt!881943 (++!7129 lt!881934 lt!881943))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!487 (List!28773 List!28773) Unit!42006)

(assert (=> d!709549 (= lt!881931 (lemmaConcatTwoListThenFSndIsSuffix!487 lt!881934 lt!881943))))

(assert (=> d!709549 (= lt!881943 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))

(assert (=> d!709549 (= lt!881934 (list!11106 (BalanceConc!17945 Empty!9165)))))

(assert (=> d!709549 (= (lexTailRecV2!821 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)) (BalanceConc!17945 Empty!9165) (print!1575 thiss!27932 (singletonSeq!1977 t2!67)) (BalanceConc!17949 Empty!9167)) lt!881923)))

(declare-fun b!2463824 () Bool)

(declare-fun e!1562691 () tuple2!28214)

(assert (=> b!2463824 (= e!1562691 (tuple2!28215 (BalanceConc!17949 Empty!9167) (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))

(declare-fun lt!881944 () BalanceConc!17944)

(declare-fun b!2463825 () Bool)

(declare-fun append!720 (BalanceConc!17948 Token!8388) BalanceConc!17948)

(assert (=> b!2463825 (= e!1562690 (lexTailRecV2!821 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)) lt!881944 (_2!16653 (v!31138 lt!881929)) (append!720 (BalanceConc!17949 Empty!9167) (_1!16653 (v!31138 lt!881929)))))))

(declare-fun lt!881917 () tuple2!28214)

(assert (=> b!2463825 (= lt!881917 (lexRec!557 thiss!27932 rules!4472 (_2!16653 (v!31138 lt!881929))))))

(declare-fun lt!881942 () List!28773)

(assert (=> b!2463825 (= lt!881942 (list!11106 (BalanceConc!17945 Empty!9165)))))

(declare-fun lt!881919 () List!28773)

(assert (=> b!2463825 (= lt!881919 (list!11106 (charsOf!2813 (_1!16653 (v!31138 lt!881929)))))))

(declare-fun lt!881930 () List!28773)

(assert (=> b!2463825 (= lt!881930 (list!11106 (_2!16653 (v!31138 lt!881929))))))

(declare-fun lt!881935 () Unit!42006)

(declare-fun lemmaConcatAssociativity!1467 (List!28773 List!28773 List!28773) Unit!42006)

(assert (=> b!2463825 (= lt!881935 (lemmaConcatAssociativity!1467 lt!881942 lt!881919 lt!881930))))

(assert (=> b!2463825 (= (++!7129 (++!7129 lt!881942 lt!881919) lt!881930) (++!7129 lt!881942 (++!7129 lt!881919 lt!881930)))))

(declare-fun lt!881933 () Unit!42006)

(assert (=> b!2463825 (= lt!881933 lt!881935)))

(declare-fun lt!881914 () Option!5715)

(declare-fun maxPrefixZipperSequence!892 (LexerInterface!4056 List!28775 BalanceConc!17944) Option!5715)

(assert (=> b!2463825 (= lt!881914 (maxPrefixZipperSequence!892 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))

(declare-fun c!393130 () Bool)

(assert (=> b!2463825 (= c!393130 ((_ is Some!5714) lt!881914))))

(assert (=> b!2463825 (= (lexRec!557 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))) e!1562691)))

(declare-fun lt!881915 () Unit!42006)

(declare-fun Unit!42027 () Unit!42006)

(assert (=> b!2463825 (= lt!881915 Unit!42027)))

(declare-fun lt!881921 () List!28774)

(assert (=> b!2463825 (= lt!881921 (list!11107 (BalanceConc!17949 Empty!9167)))))

(declare-fun lt!881911 () List!28774)

(assert (=> b!2463825 (= lt!881911 (Cons!28674 (_1!16653 (v!31138 lt!881929)) Nil!28674))))

(declare-fun lt!881913 () List!28774)

(assert (=> b!2463825 (= lt!881913 (list!11107 (_1!16648 lt!881917)))))

(declare-fun lt!881918 () Unit!42006)

(declare-fun lemmaConcatAssociativity!1468 (List!28774 List!28774 List!28774) Unit!42006)

(assert (=> b!2463825 (= lt!881918 (lemmaConcatAssociativity!1468 lt!881921 lt!881911 lt!881913))))

(assert (=> b!2463825 (= (++!7133 (++!7133 lt!881921 lt!881911) lt!881913) (++!7133 lt!881921 (++!7133 lt!881911 lt!881913)))))

(declare-fun lt!881938 () Unit!42006)

(assert (=> b!2463825 (= lt!881938 lt!881918)))

(declare-fun lt!881936 () List!28773)

(assert (=> b!2463825 (= lt!881936 (++!7129 (list!11106 (BalanceConc!17945 Empty!9165)) (list!11106 (charsOf!2813 (_1!16653 (v!31138 lt!881929))))))))

(declare-fun lt!881928 () List!28773)

(assert (=> b!2463825 (= lt!881928 (list!11106 (_2!16653 (v!31138 lt!881929))))))

(declare-fun lt!881939 () List!28774)

(assert (=> b!2463825 (= lt!881939 (list!11107 (append!720 (BalanceConc!17949 Empty!9167) (_1!16653 (v!31138 lt!881929)))))))

(declare-fun lt!881916 () Unit!42006)

(declare-fun lemmaLexThenLexPrefix!371 (LexerInterface!4056 List!28775 List!28773 List!28773 List!28774 List!28774 List!28773) Unit!42006)

(assert (=> b!2463825 (= lt!881916 (lemmaLexThenLexPrefix!371 thiss!27932 rules!4472 lt!881936 lt!881928 lt!881939 (list!11107 (_1!16648 lt!881917)) (list!11106 (_2!16648 lt!881917))))))

(assert (=> b!2463825 (= (lexList!1146 thiss!27932 rules!4472 lt!881936) (tuple2!28219 lt!881939 Nil!28673))))

(declare-fun lt!881932 () Unit!42006)

(assert (=> b!2463825 (= lt!881932 lt!881916)))

(assert (=> b!2463825 (= lt!881941 (++!7127 (BalanceConc!17945 Empty!9165) (charsOf!2813 (_1!16653 (v!31138 lt!881929)))))))

(assert (=> b!2463825 (= lt!881925 (maxPrefixZipperSequence!892 thiss!27932 rules!4472 lt!881941))))

(declare-fun c!393129 () Bool)

(assert (=> b!2463825 (= c!393129 ((_ is Some!5714) lt!881925))))

(assert (=> b!2463825 (= (lexRec!557 thiss!27932 rules!4472 (++!7127 (BalanceConc!17945 Empty!9165) (charsOf!2813 (_1!16653 (v!31138 lt!881929))))) e!1562692)))

(declare-fun lt!881922 () Unit!42006)

(declare-fun Unit!42028 () Unit!42006)

(assert (=> b!2463825 (= lt!881922 Unit!42028)))

(assert (=> b!2463825 (= lt!881944 (++!7127 (BalanceConc!17945 Empty!9165) (charsOf!2813 (_1!16653 (v!31138 lt!881929)))))))

(declare-fun lt!881927 () List!28773)

(assert (=> b!2463825 (= lt!881927 (list!11106 lt!881944))))

(declare-fun lt!881920 () List!28773)

(assert (=> b!2463825 (= lt!881920 (list!11106 (_2!16653 (v!31138 lt!881929))))))

(declare-fun lt!881937 () Unit!42006)

(assert (=> b!2463825 (= lt!881937 (lemmaConcatTwoListThenFSndIsSuffix!487 lt!881927 lt!881920))))

(assert (=> b!2463825 (isSuffix!802 lt!881920 (++!7129 lt!881927 lt!881920))))

(declare-fun lt!881940 () Unit!42006)

(assert (=> b!2463825 (= lt!881940 lt!881937)))

(declare-fun lt!881924 () tuple2!28214)

(declare-fun b!2463826 () Bool)

(assert (=> b!2463826 (= lt!881924 (lexRec!557 thiss!27932 rules!4472 (_2!16653 (v!31138 lt!881914))))))

(assert (=> b!2463826 (= e!1562691 (tuple2!28215 (prepend!1027 (_1!16648 lt!881924) (_1!16653 (v!31138 lt!881914))) (_2!16648 lt!881924)))))

(assert (= (and d!709549 c!393131) b!2463825))

(assert (= (and d!709549 (not c!393131)) b!2463821))

(assert (= (and b!2463825 c!393130) b!2463826))

(assert (= (and b!2463825 (not c!393130)) b!2463824))

(assert (= (and b!2463825 c!393129) b!2463822))

(assert (= (and b!2463825 (not c!393129)) b!2463823))

(assert (= (and d!709549 res!1043990) b!2463820))

(declare-fun m!2833819 () Bool)

(assert (=> b!2463825 m!2833819))

(assert (=> b!2463825 m!2831569))

(declare-fun m!2833821 () Bool)

(assert (=> b!2463825 m!2833821))

(declare-fun m!2833823 () Bool)

(assert (=> b!2463825 m!2833823))

(assert (=> b!2463825 m!2831569))

(declare-fun m!2833825 () Bool)

(assert (=> b!2463825 m!2833825))

(declare-fun m!2833827 () Bool)

(assert (=> b!2463825 m!2833827))

(declare-fun m!2833829 () Bool)

(assert (=> b!2463825 m!2833829))

(declare-fun m!2833831 () Bool)

(assert (=> b!2463825 m!2833831))

(declare-fun m!2833833 () Bool)

(assert (=> b!2463825 m!2833833))

(declare-fun m!2833835 () Bool)

(assert (=> b!2463825 m!2833835))

(assert (=> b!2463825 m!2833829))

(assert (=> b!2463825 m!2833823))

(declare-fun m!2833837 () Bool)

(assert (=> b!2463825 m!2833837))

(declare-fun m!2833839 () Bool)

(assert (=> b!2463825 m!2833839))

(declare-fun m!2833841 () Bool)

(assert (=> b!2463825 m!2833841))

(declare-fun m!2833843 () Bool)

(assert (=> b!2463825 m!2833843))

(declare-fun m!2833845 () Bool)

(assert (=> b!2463825 m!2833845))

(assert (=> b!2463825 m!2832685))

(declare-fun m!2833847 () Bool)

(assert (=> b!2463825 m!2833847))

(declare-fun m!2833849 () Bool)

(assert (=> b!2463825 m!2833849))

(declare-fun m!2833851 () Bool)

(assert (=> b!2463825 m!2833851))

(declare-fun m!2833853 () Bool)

(assert (=> b!2463825 m!2833853))

(assert (=> b!2463825 m!2833847))

(assert (=> b!2463825 m!2833825))

(declare-fun m!2833855 () Bool)

(assert (=> b!2463825 m!2833855))

(declare-fun m!2833857 () Bool)

(assert (=> b!2463825 m!2833857))

(assert (=> b!2463825 m!2833853))

(assert (=> b!2463825 m!2833853))

(assert (=> b!2463825 m!2833833))

(assert (=> b!2463825 m!2833825))

(declare-fun m!2833859 () Bool)

(assert (=> b!2463825 m!2833859))

(declare-fun m!2833861 () Bool)

(assert (=> b!2463825 m!2833861))

(declare-fun m!2833863 () Bool)

(assert (=> b!2463825 m!2833863))

(declare-fun m!2833865 () Bool)

(assert (=> b!2463825 m!2833865))

(declare-fun m!2833867 () Bool)

(assert (=> b!2463825 m!2833867))

(declare-fun m!2833869 () Bool)

(assert (=> b!2463825 m!2833869))

(declare-fun m!2833871 () Bool)

(assert (=> b!2463825 m!2833871))

(assert (=> b!2463825 m!2833869))

(assert (=> b!2463825 m!2831569))

(declare-fun m!2833873 () Bool)

(assert (=> b!2463825 m!2833873))

(declare-fun m!2833875 () Bool)

(assert (=> b!2463825 m!2833875))

(declare-fun m!2833877 () Bool)

(assert (=> b!2463825 m!2833877))

(assert (=> b!2463825 m!2833841))

(assert (=> b!2463825 m!2833865))

(assert (=> b!2463825 m!2833863))

(declare-fun m!2833879 () Bool)

(assert (=> b!2463825 m!2833879))

(assert (=> b!2463825 m!2833839))

(declare-fun m!2833881 () Bool)

(assert (=> b!2463825 m!2833881))

(assert (=> b!2463825 m!2832685))

(declare-fun m!2833883 () Bool)

(assert (=> b!2463822 m!2833883))

(declare-fun m!2833885 () Bool)

(assert (=> b!2463822 m!2833885))

(declare-fun m!2833887 () Bool)

(assert (=> b!2463826 m!2833887))

(declare-fun m!2833889 () Bool)

(assert (=> b!2463826 m!2833889))

(assert (=> d!709549 m!2831569))

(assert (=> d!709549 m!2831873))

(assert (=> d!709549 m!2831569))

(assert (=> d!709549 m!2831569))

(declare-fun m!2833891 () Bool)

(assert (=> d!709549 m!2833891))

(declare-fun m!2833893 () Bool)

(assert (=> d!709549 m!2833893))

(assert (=> d!709549 m!2831569))

(assert (=> d!709549 m!2833873))

(declare-fun m!2833895 () Bool)

(assert (=> d!709549 m!2833895))

(declare-fun m!2833897 () Bool)

(assert (=> d!709549 m!2833897))

(assert (=> d!709549 m!2833895))

(declare-fun m!2833899 () Bool)

(assert (=> d!709549 m!2833899))

(declare-fun m!2833901 () Bool)

(assert (=> d!709549 m!2833901))

(assert (=> d!709549 m!2832685))

(declare-fun m!2833903 () Bool)

(assert (=> b!2463820 m!2833903))

(assert (=> b!2463820 m!2831569))

(assert (=> b!2463820 m!2833873))

(declare-fun m!2833905 () Bool)

(assert (=> b!2463820 m!2833905))

(assert (=> d!708929 d!709549))

(declare-fun d!709633 () Bool)

(assert (=> d!709633 (= (list!11106 lt!881377) (list!11110 (c!392914 lt!881377)))))

(declare-fun bs!466543 () Bool)

(assert (= bs!466543 d!709633))

(declare-fun m!2833907 () Bool)

(assert (=> bs!466543 m!2833907))

(assert (=> d!708943 d!709633))

(declare-fun d!709635 () Bool)

(declare-fun c!393132 () Bool)

(assert (=> d!709635 (= c!393132 ((_ is Cons!28674) (list!11107 (singletonSeq!1977 t2!67))))))

(declare-fun e!1562693 () List!28773)

(assert (=> d!709635 (= (printList!1130 thiss!27932 (list!11107 (singletonSeq!1977 t2!67))) e!1562693)))

(declare-fun b!2463827 () Bool)

(assert (=> b!2463827 (= e!1562693 (++!7129 (list!11106 (charsOf!2813 (h!34075 (list!11107 (singletonSeq!1977 t2!67))))) (printList!1130 thiss!27932 (t!208931 (list!11107 (singletonSeq!1977 t2!67))))))))

(declare-fun b!2463828 () Bool)

(assert (=> b!2463828 (= e!1562693 Nil!28673)))

(assert (= (and d!709635 c!393132) b!2463827))

(assert (= (and d!709635 (not c!393132)) b!2463828))

(declare-fun m!2833909 () Bool)

(assert (=> b!2463827 m!2833909))

(assert (=> b!2463827 m!2833909))

(declare-fun m!2833911 () Bool)

(assert (=> b!2463827 m!2833911))

(declare-fun m!2833913 () Bool)

(assert (=> b!2463827 m!2833913))

(assert (=> b!2463827 m!2833911))

(assert (=> b!2463827 m!2833913))

(declare-fun m!2833915 () Bool)

(assert (=> b!2463827 m!2833915))

(assert (=> d!708943 d!709635))

(assert (=> d!708943 d!708927))

(declare-fun d!709637 () Bool)

(declare-fun lt!881949 () BalanceConc!17944)

(assert (=> d!709637 (= (list!11106 lt!881949) (printListTailRec!492 thiss!27932 (dropList!823 (singletonSeq!1977 t2!67) 0) (list!11106 (BalanceConc!17945 Empty!9165))))))

(declare-fun e!1562694 () BalanceConc!17944)

(assert (=> d!709637 (= lt!881949 e!1562694)))

(declare-fun c!393133 () Bool)

(assert (=> d!709637 (= c!393133 (>= 0 (size!22320 (singletonSeq!1977 t2!67))))))

(declare-fun e!1562695 () Bool)

(assert (=> d!709637 e!1562695))

(declare-fun res!1043991 () Bool)

(assert (=> d!709637 (=> (not res!1043991) (not e!1562695))))

(assert (=> d!709637 (= res!1043991 (>= 0 0))))

(assert (=> d!709637 (= (printTailRec!1081 thiss!27932 (singletonSeq!1977 t2!67) 0 (BalanceConc!17945 Empty!9165)) lt!881949)))

(declare-fun b!2463829 () Bool)

(assert (=> b!2463829 (= e!1562695 (<= 0 (size!22320 (singletonSeq!1977 t2!67))))))

(declare-fun b!2463830 () Bool)

(assert (=> b!2463830 (= e!1562694 (BalanceConc!17945 Empty!9165))))

(declare-fun b!2463831 () Bool)

(assert (=> b!2463831 (= e!1562694 (printTailRec!1081 thiss!27932 (singletonSeq!1977 t2!67) (+ 0 1) (++!7127 (BalanceConc!17945 Empty!9165) (charsOf!2813 (apply!6731 (singletonSeq!1977 t2!67) 0)))))))

(declare-fun lt!881948 () List!28774)

(assert (=> b!2463831 (= lt!881948 (list!11107 (singletonSeq!1977 t2!67)))))

(declare-fun lt!881951 () Unit!42006)

(assert (=> b!2463831 (= lt!881951 (lemmaDropApply!747 lt!881948 0))))

(assert (=> b!2463831 (= (head!5625 (drop!1523 lt!881948 0)) (apply!6729 lt!881948 0))))

(declare-fun lt!881947 () Unit!42006)

(assert (=> b!2463831 (= lt!881947 lt!881951)))

(declare-fun lt!881945 () List!28774)

(assert (=> b!2463831 (= lt!881945 (list!11107 (singletonSeq!1977 t2!67)))))

(declare-fun lt!881950 () Unit!42006)

(assert (=> b!2463831 (= lt!881950 (lemmaDropTail!723 lt!881945 0))))

(assert (=> b!2463831 (= (tail!3898 (drop!1523 lt!881945 0)) (drop!1523 lt!881945 (+ 0 1)))))

(declare-fun lt!881946 () Unit!42006)

(assert (=> b!2463831 (= lt!881946 lt!881950)))

(assert (= (and d!709637 res!1043991) b!2463829))

(assert (= (and d!709637 c!393133) b!2463830))

(assert (= (and d!709637 (not c!393133)) b!2463831))

(assert (=> d!709637 m!2831567))

(declare-fun m!2833917 () Bool)

(assert (=> d!709637 m!2833917))

(assert (=> d!709637 m!2833917))

(assert (=> d!709637 m!2832685))

(declare-fun m!2833919 () Bool)

(assert (=> d!709637 m!2833919))

(declare-fun m!2833921 () Bool)

(assert (=> d!709637 m!2833921))

(assert (=> d!709637 m!2831567))

(declare-fun m!2833923 () Bool)

(assert (=> d!709637 m!2833923))

(assert (=> d!709637 m!2832685))

(assert (=> b!2463829 m!2831567))

(assert (=> b!2463829 m!2833923))

(declare-fun m!2833925 () Bool)

(assert (=> b!2463831 m!2833925))

(declare-fun m!2833927 () Bool)

(assert (=> b!2463831 m!2833927))

(declare-fun m!2833929 () Bool)

(assert (=> b!2463831 m!2833929))

(assert (=> b!2463831 m!2833929))

(declare-fun m!2833931 () Bool)

(assert (=> b!2463831 m!2833931))

(assert (=> b!2463831 m!2831567))

(declare-fun m!2833933 () Bool)

(assert (=> b!2463831 m!2833933))

(declare-fun m!2833935 () Bool)

(assert (=> b!2463831 m!2833935))

(assert (=> b!2463831 m!2831567))

(assert (=> b!2463831 m!2831573))

(declare-fun m!2833937 () Bool)

(assert (=> b!2463831 m!2833937))

(declare-fun m!2833939 () Bool)

(assert (=> b!2463831 m!2833939))

(assert (=> b!2463831 m!2833933))

(declare-fun m!2833941 () Bool)

(assert (=> b!2463831 m!2833941))

(declare-fun m!2833943 () Bool)

(assert (=> b!2463831 m!2833943))

(assert (=> b!2463831 m!2833941))

(declare-fun m!2833945 () Bool)

(assert (=> b!2463831 m!2833945))

(assert (=> b!2463831 m!2833939))

(assert (=> b!2463831 m!2831567))

(assert (=> b!2463831 m!2833945))

(declare-fun m!2833947 () Bool)

(assert (=> b!2463831 m!2833947))

(assert (=> d!708943 d!709637))

(assert (=> b!2462917 d!708939))

(assert (=> bs!466433 d!709105))

(declare-fun d!709639 () Bool)

(declare-fun lt!881952 () Bool)

(assert (=> d!709639 (= lt!881952 (isEmpty!16675 (list!11107 (_1!16648 lt!881355))))))

(assert (=> d!709639 (= lt!881952 (isEmpty!16672 (c!392951 (_1!16648 lt!881355))))))

(assert (=> d!709639 (= (isEmpty!16669 (_1!16648 lt!881355)) lt!881952)))

(declare-fun bs!466544 () Bool)

(assert (= bs!466544 d!709639))

(assert (=> bs!466544 m!2831871))

(assert (=> bs!466544 m!2831871))

(declare-fun m!2833949 () Bool)

(assert (=> bs!466544 m!2833949))

(declare-fun m!2833951 () Bool)

(assert (=> bs!466544 m!2833951))

(assert (=> b!2462839 d!709639))

(declare-fun d!709641 () Bool)

(assert (=> d!709641 (= (charsToInt!0 (text!32962 (value!142487 t1!67))) (choose!625 (text!32962 (value!142487 t1!67))))))

(declare-fun bs!466545 () Bool)

(assert (= bs!466545 d!709641))

(declare-fun m!2833953 () Bool)

(assert (=> bs!466545 m!2833953))

(assert (=> d!709157 d!709641))

(declare-fun d!709643 () Bool)

(assert (=> d!709643 (= (Forall2!745 lambda!93194) (choose!14569 lambda!93194))))

(declare-fun bs!466546 () Bool)

(assert (= bs!466546 d!709643))

(declare-fun m!2833955 () Bool)

(assert (=> bs!466546 m!2833955))

(assert (=> d!709151 d!709643))

(declare-fun d!709645 () Bool)

(declare-fun lt!881953 () Int)

(assert (=> d!709645 (>= lt!881953 0)))

(declare-fun e!1562696 () Int)

(assert (=> d!709645 (= lt!881953 e!1562696)))

(declare-fun c!393134 () Bool)

(assert (=> d!709645 (= c!393134 ((_ is Nil!28674) (list!11107 (_1!16648 lt!881316))))))

(assert (=> d!709645 (= (size!22315 (list!11107 (_1!16648 lt!881316))) lt!881953)))

(declare-fun b!2463832 () Bool)

(assert (=> b!2463832 (= e!1562696 0)))

(declare-fun b!2463833 () Bool)

(assert (=> b!2463833 (= e!1562696 (+ 1 (size!22315 (t!208931 (list!11107 (_1!16648 lt!881316))))))))

(assert (= (and d!709645 c!393134) b!2463832))

(assert (= (and d!709645 (not c!393134)) b!2463833))

(declare-fun m!2833957 () Bool)

(assert (=> b!2463833 m!2833957))

(assert (=> d!709015 d!709645))

(declare-fun d!709647 () Bool)

(assert (=> d!709647 (= (list!11107 (_1!16648 lt!881316)) (list!11109 (c!392951 (_1!16648 lt!881316))))))

(declare-fun bs!466547 () Bool)

(assert (= bs!466547 d!709647))

(declare-fun m!2833959 () Bool)

(assert (=> bs!466547 m!2833959))

(assert (=> d!709015 d!709647))

(declare-fun d!709649 () Bool)

(declare-fun lt!881954 () Int)

(assert (=> d!709649 (= lt!881954 (size!22315 (list!11109 (c!392951 (_1!16648 lt!881316)))))))

(assert (=> d!709649 (= lt!881954 (ite ((_ is Empty!9167) (c!392951 (_1!16648 lt!881316))) 0 (ite ((_ is Leaf!13704) (c!392951 (_1!16648 lt!881316))) (csize!18565 (c!392951 (_1!16648 lt!881316))) (csize!18564 (c!392951 (_1!16648 lt!881316))))))))

(assert (=> d!709649 (= (size!22323 (c!392951 (_1!16648 lt!881316))) lt!881954)))

(declare-fun bs!466548 () Bool)

(assert (= bs!466548 d!709649))

(assert (=> bs!466548 m!2833959))

(assert (=> bs!466548 m!2833959))

(declare-fun m!2833961 () Bool)

(assert (=> bs!466548 m!2833961))

(assert (=> d!709015 d!709649))

(declare-fun b!2463834 () Bool)

(declare-fun e!1562697 () Bool)

(assert (=> b!2463834 (= e!1562697 (not (isEmpty!16670 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))))

(declare-fun b!2463835 () Bool)

(declare-fun res!1043993 () Bool)

(assert (=> b!2463835 (=> (not res!1043993) (not e!1562697))))

(assert (=> b!2463835 (= res!1043993 (isBalanced!2799 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(declare-fun b!2463836 () Bool)

(declare-fun res!1043996 () Bool)

(assert (=> b!2463836 (=> (not res!1043996) (not e!1562697))))

(assert (=> b!2463836 (= res!1043996 (isBalanced!2799 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(declare-fun d!709651 () Bool)

(declare-fun res!1043994 () Bool)

(declare-fun e!1562698 () Bool)

(assert (=> d!709651 (=> res!1043994 e!1562698)))

(assert (=> d!709651 (= res!1043994 (not ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(assert (=> d!709651 (= (isBalanced!2799 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) e!1562698)))

(declare-fun b!2463837 () Bool)

(declare-fun res!1043997 () Bool)

(assert (=> b!2463837 (=> (not res!1043997) (not e!1562697))))

(assert (=> b!2463837 (= res!1043997 (not (isEmpty!16670 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))))

(declare-fun b!2463838 () Bool)

(assert (=> b!2463838 (= e!1562698 e!1562697)))

(declare-fun res!1043992 () Bool)

(assert (=> b!2463838 (=> (not res!1043992) (not e!1562697))))

(assert (=> b!2463838 (= res!1043992 (<= (- 1) (- (height!1338 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) (height!1338 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))))

(declare-fun b!2463839 () Bool)

(declare-fun res!1043995 () Bool)

(assert (=> b!2463839 (=> (not res!1043995) (not e!1562697))))

(assert (=> b!2463839 (= res!1043995 (<= (- (height!1338 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) (height!1338 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) 1))))

(assert (= (and d!709651 (not res!1043994)) b!2463838))

(assert (= (and b!2463838 res!1043992) b!2463839))

(assert (= (and b!2463839 res!1043995) b!2463836))

(assert (= (and b!2463836 res!1043996) b!2463835))

(assert (= (and b!2463835 res!1043993) b!2463837))

(assert (= (and b!2463837 res!1043997) b!2463834))

(declare-fun m!2833963 () Bool)

(assert (=> b!2463838 m!2833963))

(declare-fun m!2833965 () Bool)

(assert (=> b!2463838 m!2833965))

(assert (=> b!2463839 m!2833963))

(assert (=> b!2463839 m!2833965))

(declare-fun m!2833967 () Bool)

(assert (=> b!2463834 m!2833967))

(declare-fun m!2833969 () Bool)

(assert (=> b!2463835 m!2833969))

(declare-fun m!2833971 () Bool)

(assert (=> b!2463836 m!2833971))

(declare-fun m!2833973 () Bool)

(assert (=> b!2463837 m!2833973))

(assert (=> d!709065 d!709651))

(declare-fun d!709653 () Bool)

(assert (=> d!709653 (= (list!11107 (_1!16648 lt!881355)) (list!11109 (c!392951 (_1!16648 lt!881355))))))

(declare-fun bs!466549 () Bool)

(assert (= bs!466549 d!709653))

(declare-fun m!2833975 () Bool)

(assert (=> bs!466549 m!2833975))

(assert (=> b!2462835 d!709653))

(assert (=> b!2462835 d!709387))

(assert (=> b!2462835 d!709389))

(declare-fun d!709655 () Bool)

(declare-fun c!393135 () Bool)

(assert (=> d!709655 (= c!393135 ((_ is Empty!9167) (c!392951 (singletonSeq!1977 t1!67))))))

(declare-fun e!1562699 () List!28774)

(assert (=> d!709655 (= (list!11109 (c!392951 (singletonSeq!1977 t1!67))) e!1562699)))

(declare-fun b!2463843 () Bool)

(declare-fun e!1562700 () List!28774)

(assert (=> b!2463843 (= e!1562700 (++!7133 (list!11109 (left!22027 (c!392951 (singletonSeq!1977 t1!67)))) (list!11109 (right!22357 (c!392951 (singletonSeq!1977 t1!67))))))))

(declare-fun b!2463840 () Bool)

(assert (=> b!2463840 (= e!1562699 Nil!28674)))

(declare-fun b!2463841 () Bool)

(assert (=> b!2463841 (= e!1562699 e!1562700)))

(declare-fun c!393136 () Bool)

(assert (=> b!2463841 (= c!393136 ((_ is Leaf!13704) (c!392951 (singletonSeq!1977 t1!67))))))

(declare-fun b!2463842 () Bool)

(assert (=> b!2463842 (= e!1562700 (list!11115 (xs!12147 (c!392951 (singletonSeq!1977 t1!67)))))))

(assert (= (and d!709655 c!393135) b!2463840))

(assert (= (and d!709655 (not c!393135)) b!2463841))

(assert (= (and b!2463841 c!393136) b!2463842))

(assert (= (and b!2463841 (not c!393136)) b!2463843))

(declare-fun m!2833977 () Bool)

(assert (=> b!2463843 m!2833977))

(declare-fun m!2833979 () Bool)

(assert (=> b!2463843 m!2833979))

(assert (=> b!2463843 m!2833977))

(assert (=> b!2463843 m!2833979))

(declare-fun m!2833981 () Bool)

(assert (=> b!2463843 m!2833981))

(declare-fun m!2833983 () Bool)

(assert (=> b!2463842 m!2833983))

(assert (=> d!709021 d!709655))

(declare-fun bs!466550 () Bool)

(declare-fun d!709657 () Bool)

(assert (= bs!466550 (and d!709657 d!708977)))

(declare-fun lambda!93218 () Int)

(assert (=> bs!466550 (= (and (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (= (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (= lambda!93218 lambda!93180))))

(declare-fun bs!466551 () Bool)

(assert (= bs!466551 (and d!709657 d!708983)))

(assert (=> bs!466551 (= (and (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (h!34076 rules!4472)))) (= (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (h!34076 rules!4472))))) (= lambda!93218 lambda!93181))))

(declare-fun bs!466552 () Bool)

(assert (= bs!466552 (and d!709657 d!709187)))

(assert (=> bs!466552 (= (and (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) (= (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (rule!6817 t1!67))))) (= lambda!93218 lambda!93200))))

(declare-fun bs!466553 () Bool)

(assert (= bs!466553 (and d!709657 d!709195)))

(assert (=> bs!466553 (= (and (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) (= (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (rule!6817 t2!67))))) (= lambda!93218 lambda!93201))))

(assert (=> d!709657 true))

(assert (=> d!709657 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) (dynLambda!12312 order!15533 lambda!93218))))

(assert (=> d!709657 true))

(assert (=> d!709657 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) (dynLambda!12312 order!15533 lambda!93218))))

(assert (=> d!709657 (= (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) (Forall!1135 lambda!93218))))

(declare-fun bs!466554 () Bool)

(assert (= bs!466554 d!709657))

(declare-fun m!2833985 () Bool)

(assert (=> bs!466554 m!2833985))

(assert (=> d!709179 d!709657))

(declare-fun d!709659 () Bool)

(declare-fun c!393137 () Bool)

(assert (=> d!709659 (= c!393137 ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611)))))))))

(declare-fun e!1562701 () Bool)

(assert (=> d!709659 (= (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611)))))) e!1562701)))

(declare-fun b!2463844 () Bool)

(assert (=> b!2463844 (= e!1562701 (inv!38764 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611)))))))))

(declare-fun b!2463845 () Bool)

(declare-fun e!1562702 () Bool)

(assert (=> b!2463845 (= e!1562701 e!1562702)))

(declare-fun res!1043998 () Bool)

(assert (=> b!2463845 (= res!1043998 (not ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611))))))))))

(assert (=> b!2463845 (=> res!1043998 e!1562702)))

(declare-fun b!2463846 () Bool)

(assert (=> b!2463846 (= e!1562702 (inv!38765 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611)))))))))

(assert (= (and d!709659 c!393137) b!2463844))

(assert (= (and d!709659 (not c!393137)) b!2463845))

(assert (= (and b!2463845 (not res!1043998)) b!2463846))

(declare-fun m!2833987 () Bool)

(assert (=> b!2463844 m!2833987))

(declare-fun m!2833989 () Bool)

(assert (=> b!2463846 m!2833989))

(assert (=> b!2462961 d!709659))

(declare-fun b!2463849 () Bool)

(declare-fun e!1562704 () List!28773)

(assert (=> b!2463849 (= e!1562704 (list!11112 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))

(declare-fun b!2463848 () Bool)

(declare-fun e!1562703 () List!28773)

(assert (=> b!2463848 (= e!1562703 e!1562704)))

(declare-fun c!393139 () Bool)

(assert (=> b!2463848 (= c!393139 ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))

(declare-fun b!2463850 () Bool)

(assert (=> b!2463850 (= e!1562704 (++!7129 (list!11110 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) (list!11110 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))))

(declare-fun b!2463847 () Bool)

(assert (=> b!2463847 (= e!1562703 Nil!28673)))

(declare-fun d!709661 () Bool)

(declare-fun c!393138 () Bool)

(assert (=> d!709661 (= c!393138 ((_ is Empty!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))))

(assert (=> d!709661 (= (list!11110 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) e!1562703)))

(assert (= (and d!709661 c!393138) b!2463847))

(assert (= (and d!709661 (not c!393138)) b!2463848))

(assert (= (and b!2463848 c!393139) b!2463849))

(assert (= (and b!2463848 (not c!393139)) b!2463850))

(declare-fun m!2833991 () Bool)

(assert (=> b!2463849 m!2833991))

(declare-fun m!2833993 () Bool)

(assert (=> b!2463850 m!2833993))

(declare-fun m!2833995 () Bool)

(assert (=> b!2463850 m!2833995))

(assert (=> b!2463850 m!2833993))

(assert (=> b!2463850 m!2833995))

(declare-fun m!2833997 () Bool)

(assert (=> b!2463850 m!2833997))

(assert (=> d!709135 d!709661))

(declare-fun d!709663 () Bool)

(assert (=> d!709663 (= (charsToBigInt!1 (text!32963 (value!142487 t1!67))) (choose!644 (text!32963 (value!142487 t1!67))))))

(declare-fun bs!466555 () Bool)

(assert (= bs!466555 d!709663))

(declare-fun m!2833999 () Bool)

(assert (=> bs!466555 m!2833999))

(assert (=> d!708989 d!709663))

(declare-fun d!709665 () Bool)

(assert (=> d!709665 (= (list!11107 (_1!16648 lt!881393)) (list!11109 (c!392951 (_1!16648 lt!881393))))))

(declare-fun bs!466556 () Bool)

(assert (= bs!466556 d!709665))

(declare-fun m!2834001 () Bool)

(assert (=> bs!466556 m!2834001))

(assert (=> b!2462894 d!709665))

(assert (=> b!2462894 d!709395))

(assert (=> b!2462894 d!709397))

(declare-fun bs!466557 () Bool)

(declare-fun d!709667 () Bool)

(assert (= bs!466557 (and d!709667 d!709195)))

(declare-fun lambda!93219 () Int)

(assert (=> bs!466557 (= (and (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) (= (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (rule!6817 t2!67))))) (= lambda!93219 lambda!93201))))

(declare-fun bs!466558 () Bool)

(assert (= bs!466558 (and d!709667 d!709657)))

(assert (=> bs!466558 (= (and (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) (= (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) (= lambda!93219 lambda!93218))))

(declare-fun bs!466559 () Bool)

(assert (= bs!466559 (and d!709667 d!708983)))

(assert (=> bs!466559 (= (and (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (h!34076 rules!4472)))) (= (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (h!34076 rules!4472))))) (= lambda!93219 lambda!93181))))

(declare-fun bs!466560 () Bool)

(assert (= bs!466560 (and d!709667 d!708977)))

(assert (=> bs!466560 (= (and (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (= (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (= lambda!93219 lambda!93180))))

(declare-fun bs!466561 () Bool)

(assert (= bs!466561 (and d!709667 d!709187)))

(assert (=> bs!466561 (= (and (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) (= (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (rule!6817 t1!67))))) (= lambda!93219 lambda!93200))))

(assert (=> d!709667 true))

(assert (=> d!709667 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472))))) (dynLambda!12312 order!15533 lambda!93219))))

(assert (=> d!709667 true))

(assert (=> d!709667 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472))))) (dynLambda!12312 order!15533 lambda!93219))))

(assert (=> d!709667 (= (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472))))) (Forall!1135 lambda!93219))))

(declare-fun bs!466562 () Bool)

(assert (= bs!466562 d!709667))

(declare-fun m!2834003 () Bool)

(assert (=> bs!466562 m!2834003))

(assert (=> d!709175 d!709667))

(declare-fun d!709669 () Bool)

(declare-fun c!393140 () Bool)

(assert (=> d!709669 (= c!393140 ((_ is Empty!9167) (c!392951 (singletonSeq!1977 t2!67))))))

(declare-fun e!1562705 () List!28774)

(assert (=> d!709669 (= (list!11109 (c!392951 (singletonSeq!1977 t2!67))) e!1562705)))

(declare-fun b!2463854 () Bool)

(declare-fun e!1562706 () List!28774)

(assert (=> b!2463854 (= e!1562706 (++!7133 (list!11109 (left!22027 (c!392951 (singletonSeq!1977 t2!67)))) (list!11109 (right!22357 (c!392951 (singletonSeq!1977 t2!67))))))))

(declare-fun b!2463851 () Bool)

(assert (=> b!2463851 (= e!1562705 Nil!28674)))

(declare-fun b!2463852 () Bool)

(assert (=> b!2463852 (= e!1562705 e!1562706)))

(declare-fun c!393141 () Bool)

(assert (=> b!2463852 (= c!393141 ((_ is Leaf!13704) (c!392951 (singletonSeq!1977 t2!67))))))

(declare-fun b!2463853 () Bool)

(assert (=> b!2463853 (= e!1562706 (list!11115 (xs!12147 (c!392951 (singletonSeq!1977 t2!67)))))))

(assert (= (and d!709669 c!393140) b!2463851))

(assert (= (and d!709669 (not c!393140)) b!2463852))

(assert (= (and b!2463852 c!393141) b!2463853))

(assert (= (and b!2463852 (not c!393141)) b!2463854))

(declare-fun m!2834005 () Bool)

(assert (=> b!2463854 m!2834005))

(declare-fun m!2834007 () Bool)

(assert (=> b!2463854 m!2834007))

(assert (=> b!2463854 m!2834005))

(assert (=> b!2463854 m!2834007))

(declare-fun m!2834009 () Bool)

(assert (=> b!2463854 m!2834009))

(declare-fun m!2834011 () Bool)

(assert (=> b!2463853 m!2834011))

(assert (=> d!708927 d!709669))

(assert (=> b!2463138 d!709015))

(declare-fun d!709671 () Bool)

(assert (=> d!709671 (= (charsToBigInt!1 (text!32963 (value!142487 (h!34075 l!6611)))) (choose!644 (text!32963 (value!142487 (h!34075 l!6611)))))))

(declare-fun bs!466563 () Bool)

(assert (= bs!466563 d!709671))

(declare-fun m!2834013 () Bool)

(assert (=> bs!466563 m!2834013))

(assert (=> d!709043 d!709671))

(declare-fun d!709673 () Bool)

(declare-fun lt!881955 () Token!8388)

(assert (=> d!709673 (= lt!881955 (apply!6729 (list!11107 (_1!16648 lt!881427)) 0))))

(assert (=> d!709673 (= lt!881955 (apply!6733 (c!392951 (_1!16648 lt!881427)) 0))))

(declare-fun e!1562707 () Bool)

(assert (=> d!709673 e!1562707))

(declare-fun res!1043999 () Bool)

(assert (=> d!709673 (=> (not res!1043999) (not e!1562707))))

(assert (=> d!709673 (= res!1043999 (<= 0 0))))

(assert (=> d!709673 (= (apply!6731 (_1!16648 lt!881427) 0) lt!881955)))

(declare-fun b!2463855 () Bool)

(assert (=> b!2463855 (= e!1562707 (< 0 (size!22320 (_1!16648 lt!881427))))))

(assert (= (and d!709673 res!1043999) b!2463855))

(declare-fun m!2834015 () Bool)

(assert (=> d!709673 m!2834015))

(assert (=> d!709673 m!2834015))

(declare-fun m!2834017 () Bool)

(assert (=> d!709673 m!2834017))

(declare-fun m!2834019 () Bool)

(assert (=> d!709673 m!2834019))

(assert (=> b!2463855 m!2832255))

(assert (=> b!2462962 d!709673))

(declare-fun d!709675 () Bool)

(declare-fun res!1044000 () Bool)

(declare-fun e!1562708 () Bool)

(assert (=> d!709675 (=> res!1044000 e!1562708)))

(assert (=> d!709675 (= res!1044000 ((_ is Nil!28674) (t!208931 l!6611)))))

(assert (=> d!709675 (= (forall!5889 (t!208931 l!6611) lambda!93199) e!1562708)))

(declare-fun b!2463856 () Bool)

(declare-fun e!1562709 () Bool)

(assert (=> b!2463856 (= e!1562708 e!1562709)))

(declare-fun res!1044001 () Bool)

(assert (=> b!2463856 (=> (not res!1044001) (not e!1562709))))

(assert (=> b!2463856 (= res!1044001 (dynLambda!12316 lambda!93199 (h!34075 (t!208931 l!6611))))))

(declare-fun b!2463857 () Bool)

(assert (=> b!2463857 (= e!1562709 (forall!5889 (t!208931 (t!208931 l!6611)) lambda!93199))))

(assert (= (and d!709675 (not res!1044000)) b!2463856))

(assert (= (and b!2463856 res!1044001) b!2463857))

(declare-fun b_lambda!75503 () Bool)

(assert (=> (not b_lambda!75503) (not b!2463856)))

(declare-fun m!2834021 () Bool)

(assert (=> b!2463856 m!2834021))

(declare-fun m!2834023 () Bool)

(assert (=> b!2463857 m!2834023))

(assert (=> d!709169 d!709675))

(assert (=> d!709169 d!708899))

(declare-fun d!709677 () Bool)

(declare-fun lt!881956 () Token!8388)

(assert (=> d!709677 (contains!4893 (tail!3898 (tail!3898 l!6611)) lt!881956)))

(declare-fun e!1562711 () Token!8388)

(assert (=> d!709677 (= lt!881956 e!1562711)))

(declare-fun c!393142 () Bool)

(assert (=> d!709677 (= c!393142 (= (- (- i!1803 1) 1) 0))))

(declare-fun e!1562710 () Bool)

(assert (=> d!709677 e!1562710))

(declare-fun res!1044002 () Bool)

(assert (=> d!709677 (=> (not res!1044002) (not e!1562710))))

(assert (=> d!709677 (= res!1044002 (<= 0 (- (- i!1803 1) 1)))))

(assert (=> d!709677 (= (apply!6729 (tail!3898 (tail!3898 l!6611)) (- (- i!1803 1) 1)) lt!881956)))

(declare-fun b!2463858 () Bool)

(assert (=> b!2463858 (= e!1562710 (< (- (- i!1803 1) 1) (size!22315 (tail!3898 (tail!3898 l!6611)))))))

(declare-fun b!2463859 () Bool)

(assert (=> b!2463859 (= e!1562711 (head!5625 (tail!3898 (tail!3898 l!6611))))))

(declare-fun b!2463860 () Bool)

(assert (=> b!2463860 (= e!1562711 (apply!6729 (tail!3898 (tail!3898 (tail!3898 l!6611))) (- (- (- i!1803 1) 1) 1)))))

(assert (= (and d!709677 res!1044002) b!2463858))

(assert (= (and d!709677 c!393142) b!2463859))

(assert (= (and d!709677 (not c!393142)) b!2463860))

(assert (=> d!709677 m!2831947))

(declare-fun m!2834025 () Bool)

(assert (=> d!709677 m!2834025))

(assert (=> b!2463858 m!2831947))

(declare-fun m!2834027 () Bool)

(assert (=> b!2463858 m!2834027))

(assert (=> b!2463859 m!2831947))

(declare-fun m!2834029 () Bool)

(assert (=> b!2463859 m!2834029))

(assert (=> b!2463860 m!2831947))

(declare-fun m!2834031 () Bool)

(assert (=> b!2463860 m!2834031))

(assert (=> b!2463860 m!2834031))

(declare-fun m!2834033 () Bool)

(assert (=> b!2463860 m!2834033))

(assert (=> b!2462972 d!709677))

(declare-fun d!709679 () Bool)

(assert (=> d!709679 (= (tail!3898 (tail!3898 l!6611)) (t!208931 (tail!3898 l!6611)))))

(assert (=> b!2462972 d!709679))

(declare-fun d!709681 () Bool)

(assert (=> d!709681 (= (inv!15 (value!142487 (h!34075 (t!208931 l!6611)))) (= (charsToBigInt!0 (text!32964 (value!142487 (h!34075 (t!208931 l!6611)))) 0) (value!142482 (value!142487 (h!34075 (t!208931 l!6611))))))))

(declare-fun bs!466564 () Bool)

(assert (= bs!466564 d!709681))

(declare-fun m!2834035 () Bool)

(assert (=> bs!466564 m!2834035))

(assert (=> b!2462938 d!709681))

(declare-fun d!709683 () Bool)

(declare-fun c!393145 () Bool)

(assert (=> d!709683 (= c!393145 ((_ is Nil!28674) l!6611))))

(declare-fun e!1562714 () (InoxSet Token!8388))

(assert (=> d!709683 (= (content!3949 l!6611) e!1562714)))

(declare-fun b!2463865 () Bool)

(assert (=> b!2463865 (= e!1562714 ((as const (Array Token!8388 Bool)) false))))

(declare-fun b!2463866 () Bool)

(assert (=> b!2463866 (= e!1562714 ((_ map or) (store ((as const (Array Token!8388 Bool)) false) (h!34075 l!6611) true) (content!3949 (t!208931 l!6611))))))

(assert (= (and d!709683 c!393145) b!2463865))

(assert (= (and d!709683 (not c!393145)) b!2463866))

(declare-fun m!2834037 () Bool)

(assert (=> b!2463866 m!2834037))

(assert (=> b!2463866 m!2832535))

(assert (=> d!709075 d!709683))

(declare-fun d!709685 () Bool)

(declare-fun lt!881977 () Int)

(assert (=> d!709685 (= lt!881977 (size!22315 (list!11107 (_1!16648 lt!881393))))))

(assert (=> d!709685 (= lt!881977 (size!22323 (c!392951 (_1!16648 lt!881393))))))

(assert (=> d!709685 (= (size!22320 (_1!16648 lt!881393)) lt!881977)))

(declare-fun bs!466565 () Bool)

(assert (= bs!466565 d!709685))

(assert (=> bs!466565 m!2832035))

(assert (=> bs!466565 m!2832035))

(declare-fun m!2834039 () Bool)

(assert (=> bs!466565 m!2834039))

(declare-fun m!2834041 () Bool)

(assert (=> bs!466565 m!2834041))

(assert (=> d!709007 d!709685))

(declare-fun e!1562715 () Bool)

(declare-fun lt!881990 () tuple2!28214)

(declare-fun b!2463867 () Bool)

(assert (=> b!2463867 (= e!1562715 (= (list!11106 (_2!16648 lt!881990)) (list!11106 (_2!16648 (lexRec!557 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(declare-fun b!2463868 () Bool)

(declare-fun e!1562716 () tuple2!28214)

(assert (=> b!2463868 (= e!1562716 (tuple2!28215 (BalanceConc!17949 Empty!9167) (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))

(declare-fun lt!881979 () tuple2!28214)

(declare-fun b!2463869 () Bool)

(declare-fun lt!881992 () Option!5715)

(assert (=> b!2463869 (= lt!881979 (lexRec!557 thiss!27932 rules!4472 (_2!16653 (v!31138 lt!881992))))))

(declare-fun e!1562718 () tuple2!28214)

(assert (=> b!2463869 (= e!1562718 (tuple2!28215 (prepend!1027 (_1!16648 lt!881979) (_1!16653 (v!31138 lt!881992))) (_2!16648 lt!881979)))))

(declare-fun b!2463870 () Bool)

(declare-fun lt!882008 () BalanceConc!17944)

(assert (=> b!2463870 (= e!1562718 (tuple2!28215 (BalanceConc!17949 Empty!9167) lt!882008))))

(declare-fun d!709687 () Bool)

(assert (=> d!709687 e!1562715))

(declare-fun res!1044003 () Bool)

(assert (=> d!709687 (=> (not res!1044003) (not e!1562715))))

(assert (=> d!709687 (= res!1044003 (= (list!11107 (_1!16648 lt!881990)) (list!11107 (_1!16648 (lexRec!557 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)))))))))

(assert (=> d!709687 (= lt!881990 e!1562716)))

(declare-fun c!393148 () Bool)

(declare-fun lt!881996 () Option!5715)

(assert (=> d!709687 (= c!393148 ((_ is Some!5714) lt!881996))))

(assert (=> d!709687 (= lt!881996 (maxPrefixZipperSequenceV2!427 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)) (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))

(declare-fun lt!881993 () Unit!42006)

(declare-fun lt!881998 () Unit!42006)

(assert (=> d!709687 (= lt!881993 lt!881998)))

(declare-fun lt!882010 () List!28773)

(declare-fun lt!882001 () List!28773)

(assert (=> d!709687 (isSuffix!802 lt!882010 (++!7129 lt!882001 lt!882010))))

(assert (=> d!709687 (= lt!881998 (lemmaConcatTwoListThenFSndIsSuffix!487 lt!882001 lt!882010))))

(assert (=> d!709687 (= lt!882010 (list!11106 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))

(assert (=> d!709687 (= lt!882001 (list!11106 (BalanceConc!17945 Empty!9165)))))

(assert (=> d!709687 (= (lexTailRecV2!821 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)) (BalanceConc!17945 Empty!9165) (print!1575 thiss!27932 (singletonSeq!1977 t1!67)) (BalanceConc!17949 Empty!9167)) lt!881990)))

(declare-fun b!2463871 () Bool)

(declare-fun e!1562717 () tuple2!28214)

(assert (=> b!2463871 (= e!1562717 (tuple2!28215 (BalanceConc!17949 Empty!9167) (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))

(declare-fun b!2463872 () Bool)

(declare-fun lt!882011 () BalanceConc!17944)

(assert (=> b!2463872 (= e!1562716 (lexTailRecV2!821 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67)) lt!882011 (_2!16653 (v!31138 lt!881996)) (append!720 (BalanceConc!17949 Empty!9167) (_1!16653 (v!31138 lt!881996)))))))

(declare-fun lt!881984 () tuple2!28214)

(assert (=> b!2463872 (= lt!881984 (lexRec!557 thiss!27932 rules!4472 (_2!16653 (v!31138 lt!881996))))))

(declare-fun lt!882009 () List!28773)

(assert (=> b!2463872 (= lt!882009 (list!11106 (BalanceConc!17945 Empty!9165)))))

(declare-fun lt!881986 () List!28773)

(assert (=> b!2463872 (= lt!881986 (list!11106 (charsOf!2813 (_1!16653 (v!31138 lt!881996)))))))

(declare-fun lt!881997 () List!28773)

(assert (=> b!2463872 (= lt!881997 (list!11106 (_2!16653 (v!31138 lt!881996))))))

(declare-fun lt!882002 () Unit!42006)

(assert (=> b!2463872 (= lt!882002 (lemmaConcatAssociativity!1467 lt!882009 lt!881986 lt!881997))))

(assert (=> b!2463872 (= (++!7129 (++!7129 lt!882009 lt!881986) lt!881997) (++!7129 lt!882009 (++!7129 lt!881986 lt!881997)))))

(declare-fun lt!882000 () Unit!42006)

(assert (=> b!2463872 (= lt!882000 lt!882002)))

(declare-fun lt!881981 () Option!5715)

(assert (=> b!2463872 (= lt!881981 (maxPrefixZipperSequence!892 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))))))

(declare-fun c!393147 () Bool)

(assert (=> b!2463872 (= c!393147 ((_ is Some!5714) lt!881981))))

(assert (=> b!2463872 (= (lexRec!557 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t1!67))) e!1562717)))

(declare-fun lt!881982 () Unit!42006)

(declare-fun Unit!42029 () Unit!42006)

(assert (=> b!2463872 (= lt!881982 Unit!42029)))

(declare-fun lt!881988 () List!28774)

(assert (=> b!2463872 (= lt!881988 (list!11107 (BalanceConc!17949 Empty!9167)))))

(declare-fun lt!881978 () List!28774)

(assert (=> b!2463872 (= lt!881978 (Cons!28674 (_1!16653 (v!31138 lt!881996)) Nil!28674))))

(declare-fun lt!881980 () List!28774)

(assert (=> b!2463872 (= lt!881980 (list!11107 (_1!16648 lt!881984)))))

(declare-fun lt!881985 () Unit!42006)

(assert (=> b!2463872 (= lt!881985 (lemmaConcatAssociativity!1468 lt!881988 lt!881978 lt!881980))))

(assert (=> b!2463872 (= (++!7133 (++!7133 lt!881988 lt!881978) lt!881980) (++!7133 lt!881988 (++!7133 lt!881978 lt!881980)))))

(declare-fun lt!882005 () Unit!42006)

(assert (=> b!2463872 (= lt!882005 lt!881985)))

(declare-fun lt!882003 () List!28773)

(assert (=> b!2463872 (= lt!882003 (++!7129 (list!11106 (BalanceConc!17945 Empty!9165)) (list!11106 (charsOf!2813 (_1!16653 (v!31138 lt!881996))))))))

(declare-fun lt!881995 () List!28773)

(assert (=> b!2463872 (= lt!881995 (list!11106 (_2!16653 (v!31138 lt!881996))))))

(declare-fun lt!882006 () List!28774)

(assert (=> b!2463872 (= lt!882006 (list!11107 (append!720 (BalanceConc!17949 Empty!9167) (_1!16653 (v!31138 lt!881996)))))))

(declare-fun lt!881983 () Unit!42006)

(assert (=> b!2463872 (= lt!881983 (lemmaLexThenLexPrefix!371 thiss!27932 rules!4472 lt!882003 lt!881995 lt!882006 (list!11107 (_1!16648 lt!881984)) (list!11106 (_2!16648 lt!881984))))))

(assert (=> b!2463872 (= (lexList!1146 thiss!27932 rules!4472 lt!882003) (tuple2!28219 lt!882006 Nil!28673))))

(declare-fun lt!881999 () Unit!42006)

(assert (=> b!2463872 (= lt!881999 lt!881983)))

(assert (=> b!2463872 (= lt!882008 (++!7127 (BalanceConc!17945 Empty!9165) (charsOf!2813 (_1!16653 (v!31138 lt!881996)))))))

(assert (=> b!2463872 (= lt!881992 (maxPrefixZipperSequence!892 thiss!27932 rules!4472 lt!882008))))

(declare-fun c!393146 () Bool)

(assert (=> b!2463872 (= c!393146 ((_ is Some!5714) lt!881992))))

(assert (=> b!2463872 (= (lexRec!557 thiss!27932 rules!4472 (++!7127 (BalanceConc!17945 Empty!9165) (charsOf!2813 (_1!16653 (v!31138 lt!881996))))) e!1562718)))

(declare-fun lt!881989 () Unit!42006)

(declare-fun Unit!42030 () Unit!42006)

(assert (=> b!2463872 (= lt!881989 Unit!42030)))

(assert (=> b!2463872 (= lt!882011 (++!7127 (BalanceConc!17945 Empty!9165) (charsOf!2813 (_1!16653 (v!31138 lt!881996)))))))

(declare-fun lt!881994 () List!28773)

(assert (=> b!2463872 (= lt!881994 (list!11106 lt!882011))))

(declare-fun lt!881987 () List!28773)

(assert (=> b!2463872 (= lt!881987 (list!11106 (_2!16653 (v!31138 lt!881996))))))

(declare-fun lt!882004 () Unit!42006)

(assert (=> b!2463872 (= lt!882004 (lemmaConcatTwoListThenFSndIsSuffix!487 lt!881994 lt!881987))))

(assert (=> b!2463872 (isSuffix!802 lt!881987 (++!7129 lt!881994 lt!881987))))

(declare-fun lt!882007 () Unit!42006)

(assert (=> b!2463872 (= lt!882007 lt!882004)))

(declare-fun b!2463873 () Bool)

(declare-fun lt!881991 () tuple2!28214)

(assert (=> b!2463873 (= lt!881991 (lexRec!557 thiss!27932 rules!4472 (_2!16653 (v!31138 lt!881981))))))

(assert (=> b!2463873 (= e!1562717 (tuple2!28215 (prepend!1027 (_1!16648 lt!881991) (_1!16653 (v!31138 lt!881981))) (_2!16648 lt!881991)))))

(assert (= (and d!709687 c!393148) b!2463872))

(assert (= (and d!709687 (not c!393148)) b!2463868))

(assert (= (and b!2463872 c!393147) b!2463873))

(assert (= (and b!2463872 (not c!393147)) b!2463871))

(assert (= (and b!2463872 c!393146) b!2463869))

(assert (= (and b!2463872 (not c!393146)) b!2463870))

(assert (= (and d!709687 res!1044003) b!2463867))

(declare-fun m!2834069 () Bool)

(assert (=> b!2463872 m!2834069))

(assert (=> b!2463872 m!2831729))

(declare-fun m!2834071 () Bool)

(assert (=> b!2463872 m!2834071))

(declare-fun m!2834073 () Bool)

(assert (=> b!2463872 m!2834073))

(assert (=> b!2463872 m!2831729))

(declare-fun m!2834075 () Bool)

(assert (=> b!2463872 m!2834075))

(declare-fun m!2834077 () Bool)

(assert (=> b!2463872 m!2834077))

(declare-fun m!2834079 () Bool)

(assert (=> b!2463872 m!2834079))

(declare-fun m!2834081 () Bool)

(assert (=> b!2463872 m!2834081))

(declare-fun m!2834083 () Bool)

(assert (=> b!2463872 m!2834083))

(declare-fun m!2834085 () Bool)

(assert (=> b!2463872 m!2834085))

(assert (=> b!2463872 m!2834079))

(assert (=> b!2463872 m!2834073))

(declare-fun m!2834087 () Bool)

(assert (=> b!2463872 m!2834087))

(declare-fun m!2834089 () Bool)

(assert (=> b!2463872 m!2834089))

(declare-fun m!2834091 () Bool)

(assert (=> b!2463872 m!2834091))

(declare-fun m!2834093 () Bool)

(assert (=> b!2463872 m!2834093))

(declare-fun m!2834095 () Bool)

(assert (=> b!2463872 m!2834095))

(assert (=> b!2463872 m!2832685))

(declare-fun m!2834097 () Bool)

(assert (=> b!2463872 m!2834097))

(declare-fun m!2834099 () Bool)

(assert (=> b!2463872 m!2834099))

(declare-fun m!2834101 () Bool)

(assert (=> b!2463872 m!2834101))

(declare-fun m!2834103 () Bool)

(assert (=> b!2463872 m!2834103))

(assert (=> b!2463872 m!2834097))

(assert (=> b!2463872 m!2834075))

(declare-fun m!2834105 () Bool)

(assert (=> b!2463872 m!2834105))

(declare-fun m!2834107 () Bool)

(assert (=> b!2463872 m!2834107))

(assert (=> b!2463872 m!2834103))

(assert (=> b!2463872 m!2834103))

(assert (=> b!2463872 m!2834083))

(assert (=> b!2463872 m!2834075))

(declare-fun m!2834109 () Bool)

(assert (=> b!2463872 m!2834109))

(declare-fun m!2834111 () Bool)

(assert (=> b!2463872 m!2834111))

(declare-fun m!2834113 () Bool)

(assert (=> b!2463872 m!2834113))

(declare-fun m!2834115 () Bool)

(assert (=> b!2463872 m!2834115))

(declare-fun m!2834117 () Bool)

(assert (=> b!2463872 m!2834117))

(declare-fun m!2834119 () Bool)

(assert (=> b!2463872 m!2834119))

(declare-fun m!2834121 () Bool)

(assert (=> b!2463872 m!2834121))

(assert (=> b!2463872 m!2834119))

(assert (=> b!2463872 m!2831729))

(declare-fun m!2834123 () Bool)

(assert (=> b!2463872 m!2834123))

(declare-fun m!2834125 () Bool)

(assert (=> b!2463872 m!2834125))

(assert (=> b!2463872 m!2833877))

(assert (=> b!2463872 m!2834091))

(assert (=> b!2463872 m!2834115))

(assert (=> b!2463872 m!2834113))

(declare-fun m!2834127 () Bool)

(assert (=> b!2463872 m!2834127))

(assert (=> b!2463872 m!2834089))

(declare-fun m!2834129 () Bool)

(assert (=> b!2463872 m!2834129))

(assert (=> b!2463872 m!2832685))

(declare-fun m!2834131 () Bool)

(assert (=> b!2463869 m!2834131))

(declare-fun m!2834133 () Bool)

(assert (=> b!2463869 m!2834133))

(declare-fun m!2834135 () Bool)

(assert (=> b!2463873 m!2834135))

(declare-fun m!2834137 () Bool)

(assert (=> b!2463873 m!2834137))

(assert (=> d!709687 m!2831729))

(assert (=> d!709687 m!2832037))

(assert (=> d!709687 m!2831729))

(assert (=> d!709687 m!2831729))

(declare-fun m!2834139 () Bool)

(assert (=> d!709687 m!2834139))

(declare-fun m!2834141 () Bool)

(assert (=> d!709687 m!2834141))

(assert (=> d!709687 m!2831729))

(assert (=> d!709687 m!2834123))

(declare-fun m!2834143 () Bool)

(assert (=> d!709687 m!2834143))

(declare-fun m!2834145 () Bool)

(assert (=> d!709687 m!2834145))

(assert (=> d!709687 m!2834143))

(declare-fun m!2834147 () Bool)

(assert (=> d!709687 m!2834147))

(declare-fun m!2834149 () Bool)

(assert (=> d!709687 m!2834149))

(assert (=> d!709687 m!2832685))

(declare-fun m!2834151 () Bool)

(assert (=> b!2463867 m!2834151))

(assert (=> b!2463867 m!2831729))

(assert (=> b!2463867 m!2834123))

(declare-fun m!2834153 () Bool)

(assert (=> b!2463867 m!2834153))

(assert (=> d!709007 d!709687))

(declare-fun b!2463874 () Bool)

(declare-fun e!1562719 () Bool)

(assert (=> b!2463874 (= e!1562719 (not (isEmpty!16670 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))))

(declare-fun b!2463875 () Bool)

(declare-fun res!1044005 () Bool)

(assert (=> b!2463875 (=> (not res!1044005) (not e!1562719))))

(assert (=> b!2463875 (= res!1044005 (isBalanced!2799 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(declare-fun b!2463876 () Bool)

(declare-fun res!1044008 () Bool)

(assert (=> b!2463876 (=> (not res!1044008) (not e!1562719))))

(assert (=> b!2463876 (= res!1044008 (isBalanced!2799 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(declare-fun d!709691 () Bool)

(declare-fun res!1044006 () Bool)

(declare-fun e!1562720 () Bool)

(assert (=> d!709691 (=> res!1044006 e!1562720)))

(assert (=> d!709691 (= res!1044006 (not ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))

(assert (=> d!709691 (= (isBalanced!2799 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))) e!1562720)))

(declare-fun b!2463877 () Bool)

(declare-fun res!1044009 () Bool)

(assert (=> b!2463877 (=> (not res!1044009) (not e!1562719))))

(assert (=> b!2463877 (= res!1044009 (not (isEmpty!16670 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))))))

(declare-fun b!2463878 () Bool)

(assert (=> b!2463878 (= e!1562720 e!1562719)))

(declare-fun res!1044004 () Bool)

(assert (=> b!2463878 (=> (not res!1044004) (not e!1562719))))

(assert (=> b!2463878 (= res!1044004 (<= (- 1) (- (height!1338 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) (height!1338 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))))))

(declare-fun b!2463879 () Bool)

(declare-fun res!1044007 () Bool)

(assert (=> b!2463879 (=> (not res!1044007) (not e!1562719))))

(assert (=> b!2463879 (= res!1044007 (<= (- (height!1338 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) (height!1338 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) 1))))

(assert (= (and d!709691 (not res!1044006)) b!2463878))

(assert (= (and b!2463878 res!1044004) b!2463879))

(assert (= (and b!2463879 res!1044007) b!2463876))

(assert (= (and b!2463876 res!1044008) b!2463875))

(assert (= (and b!2463875 res!1044005) b!2463877))

(assert (= (and b!2463877 res!1044009) b!2463874))

(assert (=> b!2463878 m!2832921))

(assert (=> b!2463878 m!2832923))

(assert (=> b!2463879 m!2832921))

(assert (=> b!2463879 m!2832923))

(declare-fun m!2834155 () Bool)

(assert (=> b!2463874 m!2834155))

(declare-fun m!2834157 () Bool)

(assert (=> b!2463875 m!2834157))

(declare-fun m!2834159 () Bool)

(assert (=> b!2463876 m!2834159))

(declare-fun m!2834161 () Bool)

(assert (=> b!2463877 m!2834161))

(assert (=> d!709197 d!709691))

(declare-fun d!709693 () Bool)

(assert (=> d!709693 (= (isEmpty!16666 (originalCharacters!5225 (h!34075 (t!208931 l!6611)))) ((_ is Nil!28673) (originalCharacters!5225 (h!34075 (t!208931 l!6611)))))))

(assert (=> d!709181 d!709693))

(assert (=> d!709121 d!709683))

(declare-fun d!709695 () Bool)

(assert (=> d!709695 (= (inv!16 (value!142487 (h!34075 (t!208931 l!6611)))) (= (charsToInt!0 (text!32962 (value!142487 (h!34075 (t!208931 l!6611))))) (value!142478 (value!142487 (h!34075 (t!208931 l!6611))))))))

(declare-fun bs!466567 () Bool)

(assert (= bs!466567 d!709695))

(declare-fun m!2834163 () Bool)

(assert (=> bs!466567 m!2834163))

(assert (=> b!2462942 d!709695))

(declare-fun d!709697 () Bool)

(declare-fun lt!882022 () Bool)

(assert (=> d!709697 (= lt!882022 (isEmpty!16666 (list!11106 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611))))))))))

(assert (=> d!709697 (= lt!882022 (isEmpty!16670 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611))))))))))

(assert (=> d!709697 (= (isEmpty!16667 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 l!6611)))))) lt!882022)))

(declare-fun bs!466568 () Bool)

(assert (= bs!466568 d!709697))

(declare-fun m!2834165 () Bool)

(assert (=> bs!466568 m!2834165))

(assert (=> bs!466568 m!2834165))

(declare-fun m!2834167 () Bool)

(assert (=> bs!466568 m!2834167))

(declare-fun m!2834169 () Bool)

(assert (=> bs!466568 m!2834169))

(assert (=> b!2462967 d!709697))

(assert (=> b!2462967 d!709433))

(assert (=> b!2462967 d!709431))

(assert (=> b!2462967 d!709429))

(declare-fun b!2463884 () Bool)

(declare-fun e!1562724 () List!28773)

(assert (=> b!2463884 (= e!1562724 (list!11112 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(declare-fun b!2463883 () Bool)

(declare-fun e!1562723 () List!28773)

(assert (=> b!2463883 (= e!1562723 e!1562724)))

(declare-fun c!393150 () Bool)

(assert (=> b!2463883 (= c!393150 ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))

(declare-fun b!2463885 () Bool)

(assert (=> b!2463885 (= e!1562724 (++!7129 (list!11110 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) (list!11110 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))))

(declare-fun b!2463882 () Bool)

(assert (=> b!2463882 (= e!1562723 Nil!28673)))

(declare-fun d!709699 () Bool)

(declare-fun c!393149 () Bool)

(assert (=> d!709699 (= c!393149 ((_ is Empty!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))))

(assert (=> d!709699 (= (list!11110 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) e!1562723)))

(assert (= (and d!709699 c!393149) b!2463882))

(assert (= (and d!709699 (not c!393149)) b!2463883))

(assert (= (and b!2463883 c!393150) b!2463884))

(assert (= (and b!2463883 (not c!393150)) b!2463885))

(assert (=> b!2463884 m!2832871))

(declare-fun m!2834171 () Bool)

(assert (=> b!2463885 m!2834171))

(declare-fun m!2834173 () Bool)

(assert (=> b!2463885 m!2834173))

(assert (=> b!2463885 m!2834171))

(assert (=> b!2463885 m!2834173))

(declare-fun m!2834175 () Bool)

(assert (=> b!2463885 m!2834175))

(assert (=> d!708965 d!709699))

(declare-fun d!709701 () Bool)

(assert (=> d!709701 (= (isEmpty!16666 (list!11106 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))) ((_ is Nil!28673) (list!11106 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(assert (=> d!709001 d!709701))

(declare-fun d!709703 () Bool)

(assert (=> d!709703 (= (list!11106 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))) (list!11110 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(declare-fun bs!466569 () Bool)

(assert (= bs!466569 d!709703))

(declare-fun m!2834177 () Bool)

(assert (=> bs!466569 m!2834177))

(assert (=> d!709001 d!709703))

(declare-fun d!709705 () Bool)

(declare-fun lt!882025 () Bool)

(assert (=> d!709705 (= lt!882025 (isEmpty!16666 (list!11110 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))))))

(assert (=> d!709705 (= lt!882025 (= (size!22324 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))) 0))))

(assert (=> d!709705 (= (isEmpty!16670 (c!392914 (_2!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))) lt!882025)))

(declare-fun bs!466570 () Bool)

(assert (= bs!466570 d!709705))

(assert (=> bs!466570 m!2834177))

(assert (=> bs!466570 m!2834177))

(declare-fun m!2834179 () Bool)

(assert (=> bs!466570 m!2834179))

(declare-fun m!2834181 () Bool)

(assert (=> bs!466570 m!2834181))

(assert (=> d!709001 d!709705))

(declare-fun d!709707 () Bool)

(assert (=> d!709707 (= (inv!38755 (tag!4949 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (= (mod (str.len (value!142486 (tag!4949 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) 2) 0))))

(assert (=> b!2463220 d!709707))

(declare-fun d!709709 () Bool)

(declare-fun res!1044013 () Bool)

(declare-fun e!1562726 () Bool)

(assert (=> d!709709 (=> (not res!1044013) (not e!1562726))))

(assert (=> d!709709 (= res!1044013 (semiInverseModEq!1834 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))))))

(assert (=> d!709709 (= (inv!38758 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) e!1562726)))

(declare-fun b!2463887 () Bool)

(assert (=> b!2463887 (= e!1562726 (equivClasses!1745 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))))))

(assert (= (and d!709709 res!1044013) b!2463887))

(declare-fun m!2834187 () Bool)

(assert (=> d!709709 m!2834187))

(declare-fun m!2834189 () Bool)

(assert (=> b!2463887 m!2834189))

(assert (=> b!2463220 d!709709))

(assert (=> d!709093 d!709345))

(declare-fun d!709713 () Bool)

(assert (=> d!709713 (= (list!11107 (singletonSeq!1977 (h!34075 (t!208931 l!6611)))) (list!11109 (c!392951 (singletonSeq!1977 (h!34075 (t!208931 l!6611))))))))

(declare-fun bs!466571 () Bool)

(assert (= bs!466571 d!709713))

(declare-fun m!2834191 () Bool)

(assert (=> bs!466571 m!2834191))

(assert (=> d!709093 d!709713))

(declare-fun d!709715 () Bool)

(assert (=> d!709715 (= (list!11107 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611))))))) (list!11109 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 (h!34075 (t!208931 l!6611)))))))))))

(declare-fun bs!466572 () Bool)

(assert (= bs!466572 d!709715))

(declare-fun m!2834193 () Bool)

(assert (=> bs!466572 m!2834193))

(assert (=> d!709093 d!709715))

(assert (=> d!709093 d!709343))

(declare-fun d!709717 () Bool)

(declare-fun lt!882028 () Int)

(assert (=> d!709717 (= lt!882028 (size!22315 (list!11107 (_1!16648 lt!881427))))))

(assert (=> d!709717 (= lt!882028 (size!22323 (c!392951 (_1!16648 lt!881427))))))

(assert (=> d!709717 (= (size!22320 (_1!16648 lt!881427)) lt!882028)))

(declare-fun bs!466573 () Bool)

(assert (= bs!466573 d!709717))

(assert (=> bs!466573 m!2834015))

(assert (=> bs!466573 m!2834015))

(declare-fun m!2834195 () Bool)

(assert (=> bs!466573 m!2834195))

(declare-fun m!2834199 () Bool)

(assert (=> bs!466573 m!2834199))

(assert (=> d!709093 d!709717))

(assert (=> d!709093 d!709347))

(assert (=> d!709093 d!708899))

(declare-fun d!709719 () Bool)

(assert (=> d!709719 (= (list!11107 lt!881360) (list!11109 (c!392951 lt!881360)))))

(declare-fun bs!466574 () Bool)

(assert (= bs!466574 d!709719))

(declare-fun m!2834201 () Bool)

(assert (=> bs!466574 m!2834201))

(assert (=> d!708937 d!709719))

(declare-fun d!709723 () Bool)

(declare-fun e!1562729 () Bool)

(assert (=> d!709723 e!1562729))

(declare-fun res!1044015 () Bool)

(assert (=> d!709723 (=> (not res!1044015) (not e!1562729))))

(declare-fun lt!882029 () BalanceConc!17948)

(assert (=> d!709723 (= res!1044015 (= (list!11107 lt!882029) (Cons!28674 t2!67 Nil!28674)))))

(assert (=> d!709723 (= lt!882029 (choose!14572 t2!67))))

(assert (=> d!709723 (= (singleton!890 t2!67) lt!882029)))

(declare-fun b!2463891 () Bool)

(assert (=> b!2463891 (= e!1562729 (isBalanced!2798 (c!392951 lt!882029)))))

(assert (= (and d!709723 res!1044015) b!2463891))

(declare-fun m!2834203 () Bool)

(assert (=> d!709723 m!2834203))

(declare-fun m!2834207 () Bool)

(assert (=> d!709723 m!2834207))

(declare-fun m!2834211 () Bool)

(assert (=> b!2463891 m!2834211))

(assert (=> d!708937 d!709723))

(declare-fun d!709727 () Bool)

(declare-fun res!1044016 () Bool)

(declare-fun e!1562731 () Bool)

(assert (=> d!709727 (=> (not res!1044016) (not e!1562731))))

(assert (=> d!709727 (= res!1044016 (<= (size!22319 (list!11112 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) 512))))

(assert (=> d!709727 (= (inv!38765 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) e!1562731)))

(declare-fun b!2463892 () Bool)

(declare-fun res!1044017 () Bool)

(assert (=> b!2463892 (=> (not res!1044017) (not e!1562731))))

(assert (=> b!2463892 (= res!1044017 (= (csize!18561 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) (size!22319 (list!11112 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))))))

(declare-fun b!2463894 () Bool)

(assert (=> b!2463894 (= e!1562731 (and (> (csize!18561 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) 0) (<= (csize!18561 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))) 512)))))

(assert (= (and d!709727 res!1044016) b!2463892))

(assert (= (and b!2463892 res!1044017) b!2463894))

(assert (=> d!709727 m!2833991))

(assert (=> d!709727 m!2833991))

(declare-fun m!2834217 () Bool)

(assert (=> d!709727 m!2834217))

(assert (=> b!2463892 m!2833991))

(assert (=> b!2463892 m!2833991))

(assert (=> b!2463892 m!2834217))

(assert (=> b!2462905 d!709727))

(declare-fun d!709731 () Bool)

(declare-fun lt!882031 () Int)

(assert (=> d!709731 (>= lt!882031 0)))

(declare-fun e!1562734 () Int)

(assert (=> d!709731 (= lt!882031 e!1562734)))

(declare-fun c!393154 () Bool)

(assert (=> d!709731 (= c!393154 ((_ is Nil!28673) (originalCharacters!5225 (h!34075 (t!208931 l!6611)))))))

(assert (=> d!709731 (= (size!22319 (originalCharacters!5225 (h!34075 (t!208931 l!6611)))) lt!882031)))

(declare-fun b!2463899 () Bool)

(assert (=> b!2463899 (= e!1562734 0)))

(declare-fun b!2463900 () Bool)

(assert (=> b!2463900 (= e!1562734 (+ 1 (size!22319 (t!208930 (originalCharacters!5225 (h!34075 (t!208931 l!6611)))))))))

(assert (= (and d!709731 c!393154) b!2463899))

(assert (= (and d!709731 (not c!393154)) b!2463900))

(declare-fun m!2834221 () Bool)

(assert (=> b!2463900 m!2834221))

(assert (=> b!2463127 d!709731))

(declare-fun d!709735 () Bool)

(assert (=> d!709735 (= (inv!38768 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) (<= (size!22319 (innerList!9225 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) 2147483647))))

(declare-fun bs!466575 () Bool)

(assert (= bs!466575 d!709735))

(declare-fun m!2834223 () Bool)

(assert (=> bs!466575 m!2834223))

(assert (=> b!2463183 d!709735))

(declare-fun bs!466576 () Bool)

(declare-fun d!709737 () Bool)

(assert (= bs!466576 (and d!709737 d!709167)))

(declare-fun lambda!93220 () Int)

(assert (=> bs!466576 (= (= (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (h!34076 rules!4472)))) (= lambda!93220 lambda!93198))))

(declare-fun bs!466577 () Bool)

(assert (= bs!466577 (and d!709737 d!709281)))

(assert (=> bs!466577 (= (= (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472))))) (= lambda!93220 lambda!93206))))

(declare-fun bs!466578 () Bool)

(assert (= bs!466578 (and d!709737 d!709045)))

(assert (=> bs!466578 (= (= (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (rule!6817 t1!67)))) (= lambda!93220 lambda!93185))))

(declare-fun bs!466579 () Bool)

(assert (= bs!466579 (and d!709737 d!709127)))

(assert (=> bs!466579 (= (= (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 l!6611))))) (= lambda!93220 lambda!93191))))

(declare-fun bs!466580 () Bool)

(assert (= bs!466580 (and d!709737 d!709151)))

(assert (=> bs!466580 (= (= (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (rule!6817 t2!67)))) (= lambda!93220 lambda!93194))))

(assert (=> d!709737 true))

(assert (=> d!709737 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) (dynLambda!12314 order!15535 lambda!93220))))

(assert (=> d!709737 (= (equivClasses!1745 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toValue!6315 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) (Forall2!745 lambda!93220))))

(declare-fun bs!466581 () Bool)

(assert (= bs!466581 d!709737))

(declare-fun m!2834243 () Bool)

(assert (=> bs!466581 m!2834243))

(assert (=> b!2463121 d!709737))

(declare-fun d!709745 () Bool)

(declare-fun lt!882033 () Bool)

(assert (=> d!709745 (= lt!882033 (select (content!3949 (tail!3898 l!6611)) lt!881378))))

(declare-fun e!1562739 () Bool)

(assert (=> d!709745 (= lt!882033 e!1562739)))

(declare-fun res!1044028 () Bool)

(assert (=> d!709745 (=> (not res!1044028) (not e!1562739))))

(assert (=> d!709745 (= res!1044028 ((_ is Cons!28674) (tail!3898 l!6611)))))

(assert (=> d!709745 (= (contains!4893 (tail!3898 l!6611) lt!881378) lt!882033)))

(declare-fun b!2463910 () Bool)

(declare-fun e!1562738 () Bool)

(assert (=> b!2463910 (= e!1562739 e!1562738)))

(declare-fun res!1044029 () Bool)

(assert (=> b!2463910 (=> res!1044029 e!1562738)))

(assert (=> b!2463910 (= res!1044029 (= (h!34075 (tail!3898 l!6611)) lt!881378))))

(declare-fun b!2463911 () Bool)

(assert (=> b!2463911 (= e!1562738 (contains!4893 (t!208931 (tail!3898 l!6611)) lt!881378))))

(assert (= (and d!709745 res!1044028) b!2463910))

(assert (= (and b!2463910 (not res!1044029)) b!2463911))

(assert (=> d!709745 m!2831723))

(assert (=> d!709745 m!2832639))

(declare-fun m!2834251 () Bool)

(assert (=> d!709745 m!2834251))

(declare-fun m!2834253 () Bool)

(assert (=> b!2463911 m!2834253))

(assert (=> d!708961 d!709745))

(declare-fun d!709751 () Bool)

(assert (=> d!709751 (= (isEmpty!16666 (list!11106 (_2!16648 lt!881316))) ((_ is Nil!28673) (list!11106 (_2!16648 lt!881316))))))

(assert (=> d!709117 d!709751))

(declare-fun d!709755 () Bool)

(assert (=> d!709755 (= (list!11106 (_2!16648 lt!881316)) (list!11110 (c!392914 (_2!16648 lt!881316))))))

(declare-fun bs!466585 () Bool)

(assert (= bs!466585 d!709755))

(declare-fun m!2834255 () Bool)

(assert (=> bs!466585 m!2834255))

(assert (=> d!709117 d!709755))

(declare-fun d!709757 () Bool)

(declare-fun lt!882034 () Bool)

(assert (=> d!709757 (= lt!882034 (isEmpty!16666 (list!11110 (c!392914 (_2!16648 lt!881316)))))))

(assert (=> d!709757 (= lt!882034 (= (size!22324 (c!392914 (_2!16648 lt!881316))) 0))))

(assert (=> d!709757 (= (isEmpty!16670 (c!392914 (_2!16648 lt!881316))) lt!882034)))

(declare-fun bs!466586 () Bool)

(assert (= bs!466586 d!709757))

(assert (=> bs!466586 m!2834255))

(assert (=> bs!466586 m!2834255))

(declare-fun m!2834257 () Bool)

(assert (=> bs!466586 m!2834257))

(declare-fun m!2834259 () Bool)

(assert (=> bs!466586 m!2834259))

(assert (=> d!709117 d!709757))

(declare-fun d!709759 () Bool)

(assert (=> d!709759 (= (inv!38768 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) (<= (size!22319 (innerList!9225 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) 2147483647))))

(declare-fun bs!466587 () Bool)

(assert (= bs!466587 d!709759))

(declare-fun m!2834261 () Bool)

(assert (=> bs!466587 m!2834261))

(assert (=> b!2463159 d!709759))

(assert (=> d!709103 d!709093))

(declare-fun d!709761 () Bool)

(assert (=> d!709761 (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 l!6611)))))

(assert (=> d!709761 true))

(declare-fun _$77!724 () Unit!42006)

(assert (=> d!709761 (= (choose!14566 thiss!27932 rules!4472 l!6611 (h!34075 (t!208931 l!6611))) _$77!724)))

(declare-fun bs!466590 () Bool)

(assert (= bs!466590 d!709761))

(assert (=> bs!466590 m!2831753))

(assert (=> d!709103 d!709761))

(assert (=> d!709103 d!708899))

(declare-fun d!709763 () Bool)

(declare-fun lt!882035 () Token!8388)

(assert (=> d!709763 (contains!4893 (tail!3898 (tail!3898 l!6611)) lt!882035)))

(declare-fun e!1562741 () Token!8388)

(assert (=> d!709763 (= lt!882035 e!1562741)))

(declare-fun c!393155 () Bool)

(assert (=> d!709763 (= c!393155 (= (- (- (+ 1 i!1803) 1) 1) 0))))

(declare-fun e!1562740 () Bool)

(assert (=> d!709763 e!1562740))

(declare-fun res!1044030 () Bool)

(assert (=> d!709763 (=> (not res!1044030) (not e!1562740))))

(assert (=> d!709763 (= res!1044030 (<= 0 (- (- (+ 1 i!1803) 1) 1)))))

(assert (=> d!709763 (= (apply!6729 (tail!3898 (tail!3898 l!6611)) (- (- (+ 1 i!1803) 1) 1)) lt!882035)))

(declare-fun b!2463912 () Bool)

(assert (=> b!2463912 (= e!1562740 (< (- (- (+ 1 i!1803) 1) 1) (size!22315 (tail!3898 (tail!3898 l!6611)))))))

(declare-fun b!2463913 () Bool)

(assert (=> b!2463913 (= e!1562741 (head!5625 (tail!3898 (tail!3898 l!6611))))))

(declare-fun b!2463914 () Bool)

(assert (=> b!2463914 (= e!1562741 (apply!6729 (tail!3898 (tail!3898 (tail!3898 l!6611))) (- (- (- (+ 1 i!1803) 1) 1) 1)))))

(assert (= (and d!709763 res!1044030) b!2463912))

(assert (= (and d!709763 c!393155) b!2463913))

(assert (= (and d!709763 (not c!393155)) b!2463914))

(assert (=> d!709763 m!2831947))

(declare-fun m!2834263 () Bool)

(assert (=> d!709763 m!2834263))

(assert (=> b!2463912 m!2831947))

(assert (=> b!2463912 m!2834027))

(assert (=> b!2463913 m!2831947))

(assert (=> b!2463913 m!2834029))

(assert (=> b!2463914 m!2831947))

(assert (=> b!2463914 m!2834031))

(assert (=> b!2463914 m!2834031))

(declare-fun m!2834267 () Bool)

(assert (=> b!2463914 m!2834267))

(assert (=> b!2462850 d!709763))

(assert (=> b!2462850 d!709679))

(declare-fun d!709769 () Bool)

(assert (=> d!709769 (= (Forall!1135 lambda!93180) (choose!14568 lambda!93180))))

(declare-fun bs!466596 () Bool)

(assert (= bs!466596 d!709769))

(declare-fun m!2834271 () Bool)

(assert (=> bs!466596 m!2834271))

(assert (=> d!708977 d!709769))

(declare-fun d!709773 () Bool)

(declare-fun res!1044031 () Bool)

(declare-fun e!1562742 () Bool)

(assert (=> d!709773 (=> (not res!1044031) (not e!1562742))))

(assert (=> d!709773 (= res!1044031 (= (csize!18560 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) (+ (size!22324 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) (size!22324 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))))

(assert (=> d!709773 (= (inv!38764 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) e!1562742)))

(declare-fun b!2463915 () Bool)

(declare-fun res!1044032 () Bool)

(assert (=> b!2463915 (=> (not res!1044032) (not e!1562742))))

(assert (=> b!2463915 (= res!1044032 (and (not (= (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) Empty!9165)) (not (= (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) Empty!9165))))))

(declare-fun b!2463916 () Bool)

(declare-fun res!1044033 () Bool)

(assert (=> b!2463916 (=> (not res!1044033) (not e!1562742))))

(assert (=> b!2463916 (= res!1044033 (= (cheight!9376 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))) (+ (max!0 (height!1338 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) (height!1338 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) 1)))))

(declare-fun b!2463917 () Bool)

(assert (=> b!2463917 (= e!1562742 (<= 0 (cheight!9376 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))))

(assert (= (and d!709773 res!1044031) b!2463915))

(assert (= (and b!2463915 res!1044032) b!2463916))

(assert (= (and b!2463916 res!1044033) b!2463917))

(declare-fun m!2834277 () Bool)

(assert (=> d!709773 m!2834277))

(declare-fun m!2834279 () Bool)

(assert (=> d!709773 m!2834279))

(assert (=> b!2463916 m!2833963))

(assert (=> b!2463916 m!2833965))

(assert (=> b!2463916 m!2833963))

(assert (=> b!2463916 m!2833965))

(declare-fun m!2834283 () Bool)

(assert (=> b!2463916 m!2834283))

(assert (=> b!2463139 d!709773))

(declare-fun d!709779 () Bool)

(declare-fun res!1044038 () Bool)

(declare-fun e!1562746 () Bool)

(assert (=> d!709779 (=> res!1044038 e!1562746)))

(assert (=> d!709779 (= res!1044038 ((_ is Nil!28674) (t!208931 l!6611)))))

(assert (=> d!709779 (= (forall!5889 (t!208931 l!6611) lambda!93169) e!1562746)))

(declare-fun b!2463922 () Bool)

(declare-fun e!1562747 () Bool)

(assert (=> b!2463922 (= e!1562746 e!1562747)))

(declare-fun res!1044039 () Bool)

(assert (=> b!2463922 (=> (not res!1044039) (not e!1562747))))

(assert (=> b!2463922 (= res!1044039 (dynLambda!12316 lambda!93169 (h!34075 (t!208931 l!6611))))))

(declare-fun b!2463923 () Bool)

(assert (=> b!2463923 (= e!1562747 (forall!5889 (t!208931 (t!208931 l!6611)) lambda!93169))))

(assert (= (and d!709779 (not res!1044038)) b!2463922))

(assert (= (and b!2463922 res!1044039) b!2463923))

(declare-fun b_lambda!75507 () Bool)

(assert (=> (not b_lambda!75507) (not b!2463922)))

(declare-fun m!2834285 () Bool)

(assert (=> b!2463922 m!2834285))

(declare-fun m!2834287 () Bool)

(assert (=> b!2463923 m!2834287))

(assert (=> b!2462992 d!709779))

(declare-fun d!709781 () Bool)

(declare-fun res!1044040 () Bool)

(declare-fun e!1562751 () Bool)

(assert (=> d!709781 (=> res!1044040 e!1562751)))

(assert (=> d!709781 (= res!1044040 ((_ is Nil!28675) (t!208932 rules!4472)))))

(assert (=> d!709781 (= (noDuplicateTag!1657 thiss!27932 (t!208932 rules!4472) (Cons!28677 (tag!4949 (h!34076 rules!4472)) Nil!28677)) e!1562751)))

(declare-fun b!2463927 () Bool)

(declare-fun e!1562752 () Bool)

(assert (=> b!2463927 (= e!1562751 e!1562752)))

(declare-fun res!1044041 () Bool)

(assert (=> b!2463927 (=> (not res!1044041) (not e!1562752))))

(assert (=> b!2463927 (= res!1044041 (not (contains!4895 (Cons!28677 (tag!4949 (h!34076 rules!4472)) Nil!28677) (tag!4949 (h!34076 (t!208932 rules!4472))))))))

(declare-fun b!2463928 () Bool)

(assert (=> b!2463928 (= e!1562752 (noDuplicateTag!1657 thiss!27932 (t!208932 (t!208932 rules!4472)) (Cons!28677 (tag!4949 (h!34076 (t!208932 rules!4472))) (Cons!28677 (tag!4949 (h!34076 rules!4472)) Nil!28677))))))

(assert (= (and d!709781 (not res!1044040)) b!2463927))

(assert (= (and b!2463927 res!1044041) b!2463928))

(declare-fun m!2834289 () Bool)

(assert (=> b!2463927 m!2834289))

(declare-fun m!2834293 () Bool)

(assert (=> b!2463928 m!2834293))

(assert (=> b!2463137 d!709781))

(declare-fun c!393156 () Bool)

(declare-fun d!709783 () Bool)

(assert (=> d!709783 (= c!393156 ((_ is Empty!9167) (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(declare-fun e!1562753 () List!28774)

(assert (=> d!709783 (= (list!11109 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))) e!1562753)))

(declare-fun b!2463932 () Bool)

(declare-fun e!1562754 () List!28774)

(assert (=> b!2463932 (= e!1562754 (++!7133 (list!11109 (left!22027 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))) (list!11109 (right!22357 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))))

(declare-fun b!2463929 () Bool)

(assert (=> b!2463929 (= e!1562753 Nil!28674)))

(declare-fun b!2463930 () Bool)

(assert (=> b!2463930 (= e!1562753 e!1562754)))

(declare-fun c!393157 () Bool)

(assert (=> b!2463930 (= c!393157 ((_ is Leaf!13704) (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67)))))))))

(declare-fun b!2463931 () Bool)

(assert (=> b!2463931 (= e!1562754 (list!11115 (xs!12147 (c!392951 (_1!16648 (lex!1853 thiss!27932 rules!4472 (print!1575 thiss!27932 (singletonSeq!1977 t2!67))))))))))

(assert (= (and d!709783 c!393156) b!2463929))

(assert (= (and d!709783 (not c!393156)) b!2463930))

(assert (= (and b!2463930 c!393157) b!2463931))

(assert (= (and b!2463930 (not c!393157)) b!2463932))

(declare-fun m!2834301 () Bool)

(assert (=> b!2463932 m!2834301))

(declare-fun m!2834303 () Bool)

(assert (=> b!2463932 m!2834303))

(assert (=> b!2463932 m!2834301))

(assert (=> b!2463932 m!2834303))

(declare-fun m!2834307 () Bool)

(assert (=> b!2463932 m!2834307))

(declare-fun m!2834309 () Bool)

(assert (=> b!2463931 m!2834309))

(assert (=> d!708925 d!709783))

(declare-fun d!709791 () Bool)

(declare-fun lt!882039 () Token!8388)

(assert (=> d!709791 (contains!4893 (list!11107 (_1!16648 lt!881316)) lt!882039)))

(declare-fun e!1562757 () Token!8388)

(assert (=> d!709791 (= lt!882039 e!1562757)))

(declare-fun c!393159 () Bool)

(assert (=> d!709791 (= c!393159 (= 0 0))))

(declare-fun e!1562756 () Bool)

(assert (=> d!709791 e!1562756))

(declare-fun res!1044042 () Bool)

(assert (=> d!709791 (=> (not res!1044042) (not e!1562756))))

(assert (=> d!709791 (= res!1044042 (<= 0 0))))

(assert (=> d!709791 (= (apply!6729 (list!11107 (_1!16648 lt!881316)) 0) lt!882039)))

(declare-fun b!2463935 () Bool)

(assert (=> b!2463935 (= e!1562756 (< 0 (size!22315 (list!11107 (_1!16648 lt!881316)))))))

(declare-fun b!2463936 () Bool)

(assert (=> b!2463936 (= e!1562757 (head!5625 (list!11107 (_1!16648 lt!881316))))))

(declare-fun b!2463937 () Bool)

(assert (=> b!2463937 (= e!1562757 (apply!6729 (tail!3898 (list!11107 (_1!16648 lt!881316))) (- 0 1)))))

(assert (= (and d!709791 res!1044042) b!2463935))

(assert (= (and d!709791 c!393159) b!2463936))

(assert (= (and d!709791 (not c!393159)) b!2463937))

(assert (=> d!709791 m!2832057))

(declare-fun m!2834311 () Bool)

(assert (=> d!709791 m!2834311))

(assert (=> b!2463935 m!2832057))

(assert (=> b!2463935 m!2832059))

(assert (=> b!2463936 m!2832057))

(declare-fun m!2834313 () Bool)

(assert (=> b!2463936 m!2834313))

(assert (=> b!2463937 m!2832057))

(declare-fun m!2834315 () Bool)

(assert (=> b!2463937 m!2834315))

(assert (=> b!2463937 m!2834315))

(declare-fun m!2834317 () Bool)

(assert (=> b!2463937 m!2834317))

(assert (=> d!709205 d!709791))

(assert (=> d!709205 d!709647))

(declare-fun d!709793 () Bool)

(declare-fun lt!882040 () Token!8388)

(assert (=> d!709793 (= lt!882040 (apply!6729 (list!11109 (c!392951 (_1!16648 lt!881316))) 0))))

(declare-fun e!1562759 () Token!8388)

(assert (=> d!709793 (= lt!882040 e!1562759)))

(declare-fun c!393160 () Bool)

(assert (=> d!709793 (= c!393160 ((_ is Leaf!13704) (c!392951 (_1!16648 lt!881316))))))

(declare-fun e!1562761 () Bool)

(assert (=> d!709793 e!1562761))

(declare-fun res!1044043 () Bool)

(assert (=> d!709793 (=> (not res!1044043) (not e!1562761))))

(assert (=> d!709793 (= res!1044043 (<= 0 0))))

(assert (=> d!709793 (= (apply!6733 (c!392951 (_1!16648 lt!881316)) 0) lt!882040)))

(declare-fun bm!151417 () Bool)

(declare-fun c!393161 () Bool)

(declare-fun c!393162 () Bool)

(assert (=> bm!151417 (= c!393161 c!393162)))

(declare-fun e!1562760 () Int)

(declare-fun call!151422 () Token!8388)

(assert (=> bm!151417 (= call!151422 (apply!6733 (ite c!393162 (left!22027 (c!392951 (_1!16648 lt!881316))) (right!22357 (c!392951 (_1!16648 lt!881316)))) e!1562760))))

(declare-fun b!2463938 () Bool)

(declare-fun e!1562758 () Token!8388)

(assert (=> b!2463938 (= e!1562759 e!1562758)))

(declare-fun lt!882041 () Bool)

(assert (=> b!2463938 (= lt!882041 (appendIndex!257 (list!11109 (left!22027 (c!392951 (_1!16648 lt!881316)))) (list!11109 (right!22357 (c!392951 (_1!16648 lt!881316)))) 0))))

(assert (=> b!2463938 (= c!393162 (< 0 (size!22323 (left!22027 (c!392951 (_1!16648 lt!881316))))))))

(declare-fun b!2463939 () Bool)

(assert (=> b!2463939 (= e!1562760 (- 0 (size!22323 (left!22027 (c!392951 (_1!16648 lt!881316))))))))

(declare-fun b!2463940 () Bool)

(assert (=> b!2463940 (= e!1562759 (apply!6739 (xs!12147 (c!392951 (_1!16648 lt!881316))) 0))))

(declare-fun b!2463941 () Bool)

(assert (=> b!2463941 (= e!1562758 call!151422)))

(declare-fun b!2463942 () Bool)

(assert (=> b!2463942 (= e!1562761 (< 0 (size!22323 (c!392951 (_1!16648 lt!881316)))))))

(declare-fun b!2463943 () Bool)

(assert (=> b!2463943 (= e!1562758 call!151422)))

(declare-fun b!2463944 () Bool)

(assert (=> b!2463944 (= e!1562760 0)))

(assert (= (and d!709793 res!1044043) b!2463942))

(assert (= (and d!709793 c!393160) b!2463940))

(assert (= (and d!709793 (not c!393160)) b!2463938))

(assert (= (and b!2463938 c!393162) b!2463941))

(assert (= (and b!2463938 (not c!393162)) b!2463943))

(assert (= (or b!2463941 b!2463943) bm!151417))

(assert (= (and bm!151417 c!393161) b!2463944))

(assert (= (and bm!151417 (not c!393161)) b!2463939))

(assert (=> b!2463942 m!2832063))

(declare-fun m!2834319 () Bool)

(assert (=> b!2463940 m!2834319))

(assert (=> d!709793 m!2833959))

(assert (=> d!709793 m!2833959))

(declare-fun m!2834321 () Bool)

(assert (=> d!709793 m!2834321))

(declare-fun m!2834323 () Bool)

(assert (=> b!2463938 m!2834323))

(declare-fun m!2834325 () Bool)

(assert (=> b!2463938 m!2834325))

(assert (=> b!2463938 m!2834323))

(assert (=> b!2463938 m!2834325))

(declare-fun m!2834327 () Bool)

(assert (=> b!2463938 m!2834327))

(declare-fun m!2834329 () Bool)

(assert (=> b!2463938 m!2834329))

(assert (=> b!2463939 m!2834329))

(declare-fun m!2834331 () Bool)

(assert (=> bm!151417 m!2834331))

(assert (=> d!709205 d!709793))

(declare-fun d!709795 () Bool)

(declare-fun lt!882045 () Int)

(assert (=> d!709795 (>= lt!882045 0)))

(declare-fun e!1562762 () Int)

(assert (=> d!709795 (= lt!882045 e!1562762)))

(declare-fun c!393163 () Bool)

(assert (=> d!709795 (= c!393163 ((_ is Nil!28673) (t!208930 (originalCharacters!5225 (h!34075 l!6611)))))))

(assert (=> d!709795 (= (size!22319 (t!208930 (originalCharacters!5225 (h!34075 l!6611)))) lt!882045)))

(declare-fun b!2463945 () Bool)

(assert (=> b!2463945 (= e!1562762 0)))

(declare-fun b!2463946 () Bool)

(assert (=> b!2463946 (= e!1562762 (+ 1 (size!22319 (t!208930 (t!208930 (originalCharacters!5225 (h!34075 l!6611)))))))))

(assert (= (and d!709795 c!393163) b!2463945))

(assert (= (and d!709795 (not c!393163)) b!2463946))

(declare-fun m!2834335 () Bool)

(assert (=> b!2463946 m!2834335))

(assert (=> b!2462927 d!709795))

(declare-fun b!2463954 () Bool)

(declare-fun e!1562766 () Bool)

(declare-fun tp!784754 () Bool)

(declare-fun tp!784756 () Bool)

(assert (=> b!2463954 (= e!1562766 (and tp!784754 tp!784756))))

(declare-fun b!2463955 () Bool)

(declare-fun tp!784755 () Bool)

(assert (=> b!2463955 (= e!1562766 tp!784755)))

(declare-fun b!2463953 () Bool)

(assert (=> b!2463953 (= e!1562766 tp_is_empty!11931)))

(declare-fun b!2463956 () Bool)

(declare-fun tp!784752 () Bool)

(declare-fun tp!784753 () Bool)

(assert (=> b!2463956 (= e!1562766 (and tp!784752 tp!784753))))

(assert (=> b!2463247 (= tp!784732 e!1562766)))

(assert (= (and b!2463247 ((_ is ElementMatch!7247) (regOne!15006 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463953))

(assert (= (and b!2463247 ((_ is Concat!11893) (regOne!15006 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463954))

(assert (= (and b!2463247 ((_ is Star!7247) (regOne!15006 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463955))

(assert (= (and b!2463247 ((_ is Union!7247) (regOne!15006 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463956))

(declare-fun b!2463958 () Bool)

(declare-fun e!1562767 () Bool)

(declare-fun tp!784759 () Bool)

(declare-fun tp!784761 () Bool)

(assert (=> b!2463958 (= e!1562767 (and tp!784759 tp!784761))))

(declare-fun b!2463959 () Bool)

(declare-fun tp!784760 () Bool)

(assert (=> b!2463959 (= e!1562767 tp!784760)))

(declare-fun b!2463957 () Bool)

(assert (=> b!2463957 (= e!1562767 tp_is_empty!11931)))

(declare-fun b!2463960 () Bool)

(declare-fun tp!784757 () Bool)

(declare-fun tp!784758 () Bool)

(assert (=> b!2463960 (= e!1562767 (and tp!784757 tp!784758))))

(assert (=> b!2463247 (= tp!784734 e!1562767)))

(assert (= (and b!2463247 ((_ is ElementMatch!7247) (regTwo!15006 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463957))

(assert (= (and b!2463247 ((_ is Concat!11893) (regTwo!15006 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463958))

(assert (= (and b!2463247 ((_ is Star!7247) (regTwo!15006 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463959))

(assert (= (and b!2463247 ((_ is Union!7247) (regTwo!15006 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463960))

(declare-fun b!2463962 () Bool)

(declare-fun e!1562768 () Bool)

(declare-fun tp!784764 () Bool)

(declare-fun tp!784766 () Bool)

(assert (=> b!2463962 (= e!1562768 (and tp!784764 tp!784766))))

(declare-fun b!2463963 () Bool)

(declare-fun tp!784765 () Bool)

(assert (=> b!2463963 (= e!1562768 tp!784765)))

(declare-fun b!2463961 () Bool)

(assert (=> b!2463961 (= e!1562768 tp_is_empty!11931)))

(declare-fun b!2463964 () Bool)

(declare-fun tp!784762 () Bool)

(declare-fun tp!784763 () Bool)

(assert (=> b!2463964 (= e!1562768 (and tp!784762 tp!784763))))

(assert (=> b!2463149 (= tp!784615 e!1562768)))

(assert (= (and b!2463149 ((_ is ElementMatch!7247) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2463961))

(assert (= (and b!2463149 ((_ is Concat!11893) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2463962))

(assert (= (and b!2463149 ((_ is Star!7247) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2463963))

(assert (= (and b!2463149 ((_ is Union!7247) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2463964))

(declare-fun b!2463966 () Bool)

(declare-fun e!1562769 () Bool)

(declare-fun tp!784769 () Bool)

(declare-fun tp!784771 () Bool)

(assert (=> b!2463966 (= e!1562769 (and tp!784769 tp!784771))))

(declare-fun b!2463967 () Bool)

(declare-fun tp!784770 () Bool)

(assert (=> b!2463967 (= e!1562769 tp!784770)))

(declare-fun b!2463965 () Bool)

(assert (=> b!2463965 (= e!1562769 tp_is_empty!11931)))

(declare-fun b!2463968 () Bool)

(declare-fun tp!784767 () Bool)

(declare-fun tp!784768 () Bool)

(assert (=> b!2463968 (= e!1562769 (and tp!784767 tp!784768))))

(assert (=> b!2463149 (= tp!784616 e!1562769)))

(assert (= (and b!2463149 ((_ is ElementMatch!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2463965))

(assert (= (and b!2463149 ((_ is Concat!11893) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2463966))

(assert (= (and b!2463149 ((_ is Star!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2463967))

(assert (= (and b!2463149 ((_ is Union!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2463968))

(declare-fun b!2463973 () Bool)

(declare-fun e!1562772 () Bool)

(declare-fun tp!784774 () Bool)

(declare-fun tp!784776 () Bool)

(assert (=> b!2463973 (= e!1562772 (and tp!784774 tp!784776))))

(declare-fun b!2463974 () Bool)

(declare-fun tp!784775 () Bool)

(assert (=> b!2463974 (= e!1562772 tp!784775)))

(declare-fun b!2463972 () Bool)

(assert (=> b!2463972 (= e!1562772 tp_is_empty!11931)))

(declare-fun b!2463975 () Bool)

(declare-fun tp!784772 () Bool)

(declare-fun tp!784773 () Bool)

(assert (=> b!2463975 (= e!1562772 (and tp!784772 tp!784773))))

(assert (=> b!2463223 (= tp!784704 e!1562772)))

(assert (= (and b!2463223 ((_ is ElementMatch!7247) (regex!4459 (h!34076 (t!208932 (t!208932 rules!4472)))))) b!2463972))

(assert (= (and b!2463223 ((_ is Concat!11893) (regex!4459 (h!34076 (t!208932 (t!208932 rules!4472)))))) b!2463973))

(assert (= (and b!2463223 ((_ is Star!7247) (regex!4459 (h!34076 (t!208932 (t!208932 rules!4472)))))) b!2463974))

(assert (= (and b!2463223 ((_ is Union!7247) (regex!4459 (h!34076 (t!208932 (t!208932 rules!4472)))))) b!2463975))

(declare-fun b!2463977 () Bool)

(declare-fun e!1562773 () Bool)

(declare-fun tp!784779 () Bool)

(declare-fun tp!784781 () Bool)

(assert (=> b!2463977 (= e!1562773 (and tp!784779 tp!784781))))

(declare-fun b!2463978 () Bool)

(declare-fun tp!784780 () Bool)

(assert (=> b!2463978 (= e!1562773 tp!784780)))

(declare-fun b!2463976 () Bool)

(assert (=> b!2463976 (= e!1562773 tp_is_empty!11931)))

(declare-fun b!2463979 () Bool)

(declare-fun tp!784777 () Bool)

(declare-fun tp!784778 () Bool)

(assert (=> b!2463979 (= e!1562773 (and tp!784777 tp!784778))))

(assert (=> b!2463241 (= tp!784728 e!1562773)))

(assert (= (and b!2463241 ((_ is ElementMatch!7247) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2463976))

(assert (= (and b!2463241 ((_ is Concat!11893) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2463977))

(assert (= (and b!2463241 ((_ is Star!7247) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2463978))

(assert (= (and b!2463241 ((_ is Union!7247) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2463979))

(declare-fun b!2463981 () Bool)

(declare-fun e!1562774 () Bool)

(declare-fun tp!784784 () Bool)

(declare-fun tp!784786 () Bool)

(assert (=> b!2463981 (= e!1562774 (and tp!784784 tp!784786))))

(declare-fun b!2463982 () Bool)

(declare-fun tp!784785 () Bool)

(assert (=> b!2463982 (= e!1562774 tp!784785)))

(declare-fun b!2463980 () Bool)

(assert (=> b!2463980 (= e!1562774 tp_is_empty!11931)))

(declare-fun b!2463983 () Bool)

(declare-fun tp!784782 () Bool)

(declare-fun tp!784783 () Bool)

(assert (=> b!2463983 (= e!1562774 (and tp!784782 tp!784783))))

(assert (=> b!2463249 (= tp!784730 e!1562774)))

(assert (= (and b!2463249 ((_ is ElementMatch!7247) (regOne!15007 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463980))

(assert (= (and b!2463249 ((_ is Concat!11893) (regOne!15007 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463981))

(assert (= (and b!2463249 ((_ is Star!7247) (regOne!15007 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463982))

(assert (= (and b!2463249 ((_ is Union!7247) (regOne!15007 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463983))

(declare-fun b!2463985 () Bool)

(declare-fun e!1562775 () Bool)

(declare-fun tp!784789 () Bool)

(declare-fun tp!784791 () Bool)

(assert (=> b!2463985 (= e!1562775 (and tp!784789 tp!784791))))

(declare-fun b!2463986 () Bool)

(declare-fun tp!784790 () Bool)

(assert (=> b!2463986 (= e!1562775 tp!784790)))

(declare-fun b!2463984 () Bool)

(assert (=> b!2463984 (= e!1562775 tp_is_empty!11931)))

(declare-fun b!2463987 () Bool)

(declare-fun tp!784787 () Bool)

(declare-fun tp!784788 () Bool)

(assert (=> b!2463987 (= e!1562775 (and tp!784787 tp!784788))))

(assert (=> b!2463249 (= tp!784731 e!1562775)))

(assert (= (and b!2463249 ((_ is ElementMatch!7247) (regTwo!15007 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463984))

(assert (= (and b!2463249 ((_ is Concat!11893) (regTwo!15007 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463985))

(assert (= (and b!2463249 ((_ is Star!7247) (regTwo!15007 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463986))

(assert (= (and b!2463249 ((_ is Union!7247) (regTwo!15007 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2463987))

(declare-fun b!2463990 () Bool)

(declare-fun e!1562778 () Bool)

(assert (=> b!2463990 (= e!1562778 true)))

(declare-fun b!2463989 () Bool)

(declare-fun e!1562777 () Bool)

(assert (=> b!2463989 (= e!1562777 e!1562778)))

(declare-fun b!2463988 () Bool)

(declare-fun e!1562776 () Bool)

(assert (=> b!2463988 (= e!1562776 e!1562777)))

(assert (=> b!2463091 e!1562776))

(assert (= b!2463989 b!2463990))

(assert (= b!2463988 b!2463989))

(assert (= (and b!2463091 ((_ is Cons!28675) (t!208932 rules!4472))) b!2463988))

(assert (=> b!2463990 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (h!34076 (t!208932 rules!4472))))) (dynLambda!12309 order!15525 lambda!93199))))

(assert (=> b!2463990 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472))))) (dynLambda!12309 order!15525 lambda!93199))))

(declare-fun b!2463992 () Bool)

(declare-fun e!1562779 () Bool)

(declare-fun tp!784794 () Bool)

(declare-fun tp!784796 () Bool)

(assert (=> b!2463992 (= e!1562779 (and tp!784794 tp!784796))))

(declare-fun b!2463993 () Bool)

(declare-fun tp!784795 () Bool)

(assert (=> b!2463993 (= e!1562779 tp!784795)))

(declare-fun b!2463991 () Bool)

(assert (=> b!2463991 (= e!1562779 tp_is_empty!11931)))

(declare-fun b!2463994 () Bool)

(declare-fun tp!784792 () Bool)

(declare-fun tp!784793 () Bool)

(assert (=> b!2463994 (= e!1562779 (and tp!784792 tp!784793))))

(assert (=> b!2463199 (= tp!784676 e!1562779)))

(assert (= (and b!2463199 ((_ is ElementMatch!7247) (regOne!15006 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2463991))

(assert (= (and b!2463199 ((_ is Concat!11893) (regOne!15006 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2463992))

(assert (= (and b!2463199 ((_ is Star!7247) (regOne!15006 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2463993))

(assert (= (and b!2463199 ((_ is Union!7247) (regOne!15006 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2463994))

(declare-fun b!2463996 () Bool)

(declare-fun e!1562780 () Bool)

(declare-fun tp!784799 () Bool)

(declare-fun tp!784801 () Bool)

(assert (=> b!2463996 (= e!1562780 (and tp!784799 tp!784801))))

(declare-fun b!2463997 () Bool)

(declare-fun tp!784800 () Bool)

(assert (=> b!2463997 (= e!1562780 tp!784800)))

(declare-fun b!2463995 () Bool)

(assert (=> b!2463995 (= e!1562780 tp_is_empty!11931)))

(declare-fun b!2463998 () Bool)

(declare-fun tp!784797 () Bool)

(declare-fun tp!784798 () Bool)

(assert (=> b!2463998 (= e!1562780 (and tp!784797 tp!784798))))

(assert (=> b!2463199 (= tp!784678 e!1562780)))

(assert (= (and b!2463199 ((_ is ElementMatch!7247) (regTwo!15006 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2463995))

(assert (= (and b!2463199 ((_ is Concat!11893) (regTwo!15006 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2463996))

(assert (= (and b!2463199 ((_ is Star!7247) (regTwo!15006 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2463997))

(assert (= (and b!2463199 ((_ is Union!7247) (regTwo!15006 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2463998))

(declare-fun b!2464000 () Bool)

(declare-fun e!1562781 () Bool)

(declare-fun tp!784804 () Bool)

(declare-fun tp!784806 () Bool)

(assert (=> b!2464000 (= e!1562781 (and tp!784804 tp!784806))))

(declare-fun b!2464001 () Bool)

(declare-fun tp!784805 () Bool)

(assert (=> b!2464001 (= e!1562781 tp!784805)))

(declare-fun b!2463999 () Bool)

(assert (=> b!2463999 (= e!1562781 tp_is_empty!11931)))

(declare-fun b!2464002 () Bool)

(declare-fun tp!784802 () Bool)

(declare-fun tp!784803 () Bool)

(assert (=> b!2464002 (= e!1562781 (and tp!784802 tp!784803))))

(assert (=> b!2463147 (= tp!784617 e!1562781)))

(assert (= (and b!2463147 ((_ is ElementMatch!7247) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2463999))

(assert (= (and b!2463147 ((_ is Concat!11893) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464000))

(assert (= (and b!2463147 ((_ is Star!7247) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464001))

(assert (= (and b!2463147 ((_ is Union!7247) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464002))

(declare-fun b!2464004 () Bool)

(declare-fun e!1562782 () Bool)

(declare-fun tp!784809 () Bool)

(declare-fun tp!784811 () Bool)

(assert (=> b!2464004 (= e!1562782 (and tp!784809 tp!784811))))

(declare-fun b!2464005 () Bool)

(declare-fun tp!784810 () Bool)

(assert (=> b!2464005 (= e!1562782 tp!784810)))

(declare-fun b!2464003 () Bool)

(assert (=> b!2464003 (= e!1562782 tp_is_empty!11931)))

(declare-fun b!2464006 () Bool)

(declare-fun tp!784807 () Bool)

(declare-fun tp!784808 () Bool)

(assert (=> b!2464006 (= e!1562782 (and tp!784807 tp!784808))))

(assert (=> b!2463147 (= tp!784619 e!1562782)))

(assert (= (and b!2463147 ((_ is ElementMatch!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464003))

(assert (= (and b!2463147 ((_ is Concat!11893) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464004))

(assert (= (and b!2463147 ((_ is Star!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464005))

(assert (= (and b!2463147 ((_ is Union!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464006))

(declare-fun b!2464007 () Bool)

(declare-fun e!1562783 () Bool)

(declare-fun tp!784812 () Bool)

(assert (=> b!2464007 (= e!1562783 (and tp_is_empty!11931 tp!784812))))

(assert (=> b!2463256 (= tp!784741 e!1562783)))

(assert (= (and b!2463256 ((_ is Cons!28673) (innerList!9225 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))))) b!2464007))

(declare-fun b!2464009 () Bool)

(declare-fun e!1562784 () Bool)

(declare-fun tp!784815 () Bool)

(declare-fun tp!784817 () Bool)

(assert (=> b!2464009 (= e!1562784 (and tp!784815 tp!784817))))

(declare-fun b!2464010 () Bool)

(declare-fun tp!784816 () Bool)

(assert (=> b!2464010 (= e!1562784 tp!784816)))

(declare-fun b!2464008 () Bool)

(assert (=> b!2464008 (= e!1562784 tp_is_empty!11931)))

(declare-fun b!2464011 () Bool)

(declare-fun tp!784813 () Bool)

(declare-fun tp!784814 () Bool)

(assert (=> b!2464011 (= e!1562784 (and tp!784813 tp!784814))))

(assert (=> b!2463201 (= tp!784674 e!1562784)))

(assert (= (and b!2463201 ((_ is ElementMatch!7247) (regOne!15007 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464008))

(assert (= (and b!2463201 ((_ is Concat!11893) (regOne!15007 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464009))

(assert (= (and b!2463201 ((_ is Star!7247) (regOne!15007 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464010))

(assert (= (and b!2463201 ((_ is Union!7247) (regOne!15007 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464011))

(declare-fun b!2464013 () Bool)

(declare-fun e!1562785 () Bool)

(declare-fun tp!784820 () Bool)

(declare-fun tp!784822 () Bool)

(assert (=> b!2464013 (= e!1562785 (and tp!784820 tp!784822))))

(declare-fun b!2464014 () Bool)

(declare-fun tp!784821 () Bool)

(assert (=> b!2464014 (= e!1562785 tp!784821)))

(declare-fun b!2464012 () Bool)

(assert (=> b!2464012 (= e!1562785 tp_is_empty!11931)))

(declare-fun b!2464015 () Bool)

(declare-fun tp!784818 () Bool)

(declare-fun tp!784819 () Bool)

(assert (=> b!2464015 (= e!1562785 (and tp!784818 tp!784819))))

(assert (=> b!2463201 (= tp!784675 e!1562785)))

(assert (= (and b!2463201 ((_ is ElementMatch!7247) (regTwo!15007 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464012))

(assert (= (and b!2463201 ((_ is Concat!11893) (regTwo!15007 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464013))

(assert (= (and b!2463201 ((_ is Star!7247) (regTwo!15007 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464014))

(assert (= (and b!2463201 ((_ is Union!7247) (regTwo!15007 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464015))

(declare-fun b!2464017 () Bool)

(declare-fun e!1562786 () Bool)

(declare-fun tp!784825 () Bool)

(declare-fun tp!784827 () Bool)

(assert (=> b!2464017 (= e!1562786 (and tp!784825 tp!784827))))

(declare-fun b!2464018 () Bool)

(declare-fun tp!784826 () Bool)

(assert (=> b!2464018 (= e!1562786 tp!784826)))

(declare-fun b!2464016 () Bool)

(assert (=> b!2464016 (= e!1562786 tp_is_empty!11931)))

(declare-fun b!2464019 () Bool)

(declare-fun tp!784823 () Bool)

(declare-fun tp!784824 () Bool)

(assert (=> b!2464019 (= e!1562786 (and tp!784823 tp!784824))))

(assert (=> b!2463195 (= tp!784671 e!1562786)))

(assert (= (and b!2463195 ((_ is ElementMatch!7247) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464016))

(assert (= (and b!2463195 ((_ is Concat!11893) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464017))

(assert (= (and b!2463195 ((_ is Star!7247) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464018))

(assert (= (and b!2463195 ((_ is Union!7247) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464019))

(declare-fun b!2464021 () Bool)

(declare-fun e!1562787 () Bool)

(declare-fun tp!784830 () Bool)

(declare-fun tp!784832 () Bool)

(assert (=> b!2464021 (= e!1562787 (and tp!784830 tp!784832))))

(declare-fun b!2464022 () Bool)

(declare-fun tp!784831 () Bool)

(assert (=> b!2464022 (= e!1562787 tp!784831)))

(declare-fun b!2464020 () Bool)

(assert (=> b!2464020 (= e!1562787 tp_is_empty!11931)))

(declare-fun b!2464023 () Bool)

(declare-fun tp!784828 () Bool)

(declare-fun tp!784829 () Bool)

(assert (=> b!2464023 (= e!1562787 (and tp!784828 tp!784829))))

(assert (=> b!2463186 (= tp!784660 e!1562787)))

(assert (= (and b!2463186 ((_ is ElementMatch!7247) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464020))

(assert (= (and b!2463186 ((_ is Concat!11893) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464021))

(assert (= (and b!2463186 ((_ is Star!7247) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464022))

(assert (= (and b!2463186 ((_ is Union!7247) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464023))

(declare-fun b!2464025 () Bool)

(declare-fun e!1562788 () Bool)

(declare-fun tp!784835 () Bool)

(declare-fun tp!784837 () Bool)

(assert (=> b!2464025 (= e!1562788 (and tp!784835 tp!784837))))

(declare-fun b!2464026 () Bool)

(declare-fun tp!784836 () Bool)

(assert (=> b!2464026 (= e!1562788 tp!784836)))

(declare-fun b!2464024 () Bool)

(assert (=> b!2464024 (= e!1562788 tp_is_empty!11931)))

(declare-fun b!2464027 () Bool)

(declare-fun tp!784833 () Bool)

(declare-fun tp!784834 () Bool)

(assert (=> b!2464027 (= e!1562788 (and tp!784833 tp!784834))))

(assert (=> b!2463186 (= tp!784662 e!1562788)))

(assert (= (and b!2463186 ((_ is ElementMatch!7247) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464024))

(assert (= (and b!2463186 ((_ is Concat!11893) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464025))

(assert (= (and b!2463186 ((_ is Star!7247) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464026))

(assert (= (and b!2463186 ((_ is Union!7247) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464027))

(declare-fun b!2464029 () Bool)

(declare-fun e!1562789 () Bool)

(declare-fun tp!784840 () Bool)

(declare-fun tp!784842 () Bool)

(assert (=> b!2464029 (= e!1562789 (and tp!784840 tp!784842))))

(declare-fun b!2464030 () Bool)

(declare-fun tp!784841 () Bool)

(assert (=> b!2464030 (= e!1562789 tp!784841)))

(declare-fun b!2464028 () Bool)

(assert (=> b!2464028 (= e!1562789 tp_is_empty!11931)))

(declare-fun b!2464031 () Bool)

(declare-fun tp!784838 () Bool)

(declare-fun tp!784839 () Bool)

(assert (=> b!2464031 (= e!1562789 (and tp!784838 tp!784839))))

(assert (=> b!2463164 (= tp!784633 e!1562789)))

(assert (= (and b!2463164 ((_ is ElementMatch!7247) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464028))

(assert (= (and b!2463164 ((_ is Concat!11893) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464029))

(assert (= (and b!2463164 ((_ is Star!7247) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464030))

(assert (= (and b!2463164 ((_ is Union!7247) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464031))

(declare-fun b!2464033 () Bool)

(declare-fun e!1562790 () Bool)

(declare-fun tp!784845 () Bool)

(declare-fun tp!784847 () Bool)

(assert (=> b!2464033 (= e!1562790 (and tp!784845 tp!784847))))

(declare-fun b!2464034 () Bool)

(declare-fun tp!784846 () Bool)

(assert (=> b!2464034 (= e!1562790 tp!784846)))

(declare-fun b!2464032 () Bool)

(assert (=> b!2464032 (= e!1562790 tp_is_empty!11931)))

(declare-fun b!2464035 () Bool)

(declare-fun tp!784843 () Bool)

(declare-fun tp!784844 () Bool)

(assert (=> b!2464035 (= e!1562790 (and tp!784843 tp!784844))))

(assert (=> b!2463212 (= tp!784692 e!1562790)))

(assert (= (and b!2463212 ((_ is ElementMatch!7247) (reg!7576 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464032))

(assert (= (and b!2463212 ((_ is Concat!11893) (reg!7576 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464033))

(assert (= (and b!2463212 ((_ is Star!7247) (reg!7576 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464034))

(assert (= (and b!2463212 ((_ is Union!7247) (reg!7576 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464035))

(declare-fun b!2464037 () Bool)

(declare-fun e!1562791 () Bool)

(declare-fun tp!784850 () Bool)

(declare-fun tp!784852 () Bool)

(assert (=> b!2464037 (= e!1562791 (and tp!784850 tp!784852))))

(declare-fun b!2464038 () Bool)

(declare-fun tp!784851 () Bool)

(assert (=> b!2464038 (= e!1562791 tp!784851)))

(declare-fun b!2464036 () Bool)

(assert (=> b!2464036 (= e!1562791 tp_is_empty!11931)))

(declare-fun b!2464039 () Bool)

(declare-fun tp!784848 () Bool)

(declare-fun tp!784849 () Bool)

(assert (=> b!2464039 (= e!1562791 (and tp!784848 tp!784849))))

(assert (=> b!2463173 (= tp!784640 e!1562791)))

(assert (= (and b!2463173 ((_ is ElementMatch!7247) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464036))

(assert (= (and b!2463173 ((_ is Concat!11893) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464037))

(assert (= (and b!2463173 ((_ is Star!7247) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464038))

(assert (= (and b!2463173 ((_ is Union!7247) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464039))

(declare-fun b!2464041 () Bool)

(declare-fun e!1562792 () Bool)

(declare-fun tp!784855 () Bool)

(declare-fun tp!784857 () Bool)

(assert (=> b!2464041 (= e!1562792 (and tp!784855 tp!784857))))

(declare-fun b!2464042 () Bool)

(declare-fun tp!784856 () Bool)

(assert (=> b!2464042 (= e!1562792 tp!784856)))

(declare-fun b!2464040 () Bool)

(assert (=> b!2464040 (= e!1562792 tp_is_empty!11931)))

(declare-fun b!2464043 () Bool)

(declare-fun tp!784853 () Bool)

(declare-fun tp!784854 () Bool)

(assert (=> b!2464043 (= e!1562792 (and tp!784853 tp!784854))))

(assert (=> b!2463173 (= tp!784641 e!1562792)))

(assert (= (and b!2463173 ((_ is ElementMatch!7247) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464040))

(assert (= (and b!2463173 ((_ is Concat!11893) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464041))

(assert (= (and b!2463173 ((_ is Star!7247) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464042))

(assert (= (and b!2463173 ((_ is Union!7247) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464043))

(declare-fun b!2464045 () Bool)

(declare-fun e!1562793 () Bool)

(declare-fun tp!784860 () Bool)

(declare-fun tp!784862 () Bool)

(assert (=> b!2464045 (= e!1562793 (and tp!784860 tp!784862))))

(declare-fun b!2464046 () Bool)

(declare-fun tp!784861 () Bool)

(assert (=> b!2464046 (= e!1562793 tp!784861)))

(declare-fun b!2464044 () Bool)

(assert (=> b!2464044 (= e!1562793 tp_is_empty!11931)))

(declare-fun b!2464047 () Bool)

(declare-fun tp!784858 () Bool)

(declare-fun tp!784859 () Bool)

(assert (=> b!2464047 (= e!1562793 (and tp!784858 tp!784859))))

(assert (=> b!2463203 (= tp!784681 e!1562793)))

(assert (= (and b!2463203 ((_ is ElementMatch!7247) (regOne!15006 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464044))

(assert (= (and b!2463203 ((_ is Concat!11893) (regOne!15006 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464045))

(assert (= (and b!2463203 ((_ is Star!7247) (regOne!15006 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464046))

(assert (= (and b!2463203 ((_ is Union!7247) (regOne!15006 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464047))

(declare-fun b!2464049 () Bool)

(declare-fun e!1562794 () Bool)

(declare-fun tp!784865 () Bool)

(declare-fun tp!784867 () Bool)

(assert (=> b!2464049 (= e!1562794 (and tp!784865 tp!784867))))

(declare-fun b!2464050 () Bool)

(declare-fun tp!784866 () Bool)

(assert (=> b!2464050 (= e!1562794 tp!784866)))

(declare-fun b!2464048 () Bool)

(assert (=> b!2464048 (= e!1562794 tp_is_empty!11931)))

(declare-fun b!2464051 () Bool)

(declare-fun tp!784863 () Bool)

(declare-fun tp!784864 () Bool)

(assert (=> b!2464051 (= e!1562794 (and tp!784863 tp!784864))))

(assert (=> b!2463203 (= tp!784683 e!1562794)))

(assert (= (and b!2463203 ((_ is ElementMatch!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464048))

(assert (= (and b!2463203 ((_ is Concat!11893) (regTwo!15006 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464049))

(assert (= (and b!2463203 ((_ is Star!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464050))

(assert (= (and b!2463203 ((_ is Union!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464051))

(declare-fun b!2464052 () Bool)

(declare-fun e!1562795 () Bool)

(declare-fun tp!784868 () Bool)

(assert (=> b!2464052 (= e!1562795 (and tp_is_empty!11931 tp!784868))))

(assert (=> b!2463225 (= tp!784708 e!1562795)))

(assert (= (and b!2463225 ((_ is Cons!28673) (t!208930 (originalCharacters!5225 (h!34075 (t!208931 l!6611)))))) b!2464052))

(declare-fun b!2464054 () Bool)

(declare-fun e!1562796 () Bool)

(declare-fun tp!784871 () Bool)

(declare-fun tp!784873 () Bool)

(assert (=> b!2464054 (= e!1562796 (and tp!784871 tp!784873))))

(declare-fun b!2464055 () Bool)

(declare-fun tp!784872 () Bool)

(assert (=> b!2464055 (= e!1562796 tp!784872)))

(declare-fun b!2464053 () Bool)

(assert (=> b!2464053 (= e!1562796 tp_is_empty!11931)))

(declare-fun b!2464056 () Bool)

(declare-fun tp!784869 () Bool)

(declare-fun tp!784870 () Bool)

(assert (=> b!2464056 (= e!1562796 (and tp!784869 tp!784870))))

(assert (=> b!2463232 (= tp!784717 e!1562796)))

(assert (= (and b!2463232 ((_ is ElementMatch!7247) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464053))

(assert (= (and b!2463232 ((_ is Concat!11893) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464054))

(assert (= (and b!2463232 ((_ is Star!7247) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464055))

(assert (= (and b!2463232 ((_ is Union!7247) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464056))

(declare-fun b!2464058 () Bool)

(declare-fun e!1562797 () Bool)

(declare-fun tp!784876 () Bool)

(declare-fun tp!784878 () Bool)

(assert (=> b!2464058 (= e!1562797 (and tp!784876 tp!784878))))

(declare-fun b!2464059 () Bool)

(declare-fun tp!784877 () Bool)

(assert (=> b!2464059 (= e!1562797 tp!784877)))

(declare-fun b!2464057 () Bool)

(assert (=> b!2464057 (= e!1562797 tp_is_empty!11931)))

(declare-fun b!2464060 () Bool)

(declare-fun tp!784874 () Bool)

(declare-fun tp!784875 () Bool)

(assert (=> b!2464060 (= e!1562797 (and tp!784874 tp!784875))))

(assert (=> b!2463232 (= tp!784719 e!1562797)))

(assert (= (and b!2463232 ((_ is ElementMatch!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464057))

(assert (= (and b!2463232 ((_ is Concat!11893) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464058))

(assert (= (and b!2463232 ((_ is Star!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464059))

(assert (= (and b!2463232 ((_ is Union!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464060))

(declare-fun b!2464062 () Bool)

(declare-fun e!1562798 () Bool)

(declare-fun tp!784881 () Bool)

(declare-fun tp!784883 () Bool)

(assert (=> b!2464062 (= e!1562798 (and tp!784881 tp!784883))))

(declare-fun b!2464063 () Bool)

(declare-fun tp!784882 () Bool)

(assert (=> b!2464063 (= e!1562798 tp!784882)))

(declare-fun b!2464061 () Bool)

(assert (=> b!2464061 (= e!1562798 tp_is_empty!11931)))

(declare-fun b!2464064 () Bool)

(declare-fun tp!784879 () Bool)

(declare-fun tp!784880 () Bool)

(assert (=> b!2464064 (= e!1562798 (and tp!784879 tp!784880))))

(assert (=> b!2463180 (= tp!784653 e!1562798)))

(assert (= (and b!2463180 ((_ is ElementMatch!7247) (reg!7576 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464061))

(assert (= (and b!2463180 ((_ is Concat!11893) (reg!7576 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464062))

(assert (= (and b!2463180 ((_ is Star!7247) (reg!7576 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464063))

(assert (= (and b!2463180 ((_ is Union!7247) (reg!7576 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464064))

(declare-fun b!2464066 () Bool)

(declare-fun e!1562799 () Bool)

(declare-fun tp!784886 () Bool)

(declare-fun tp!784888 () Bool)

(assert (=> b!2464066 (= e!1562799 (and tp!784886 tp!784888))))

(declare-fun b!2464067 () Bool)

(declare-fun tp!784887 () Bool)

(assert (=> b!2464067 (= e!1562799 tp!784887)))

(declare-fun b!2464065 () Bool)

(assert (=> b!2464065 (= e!1562799 tp_is_empty!11931)))

(declare-fun b!2464068 () Bool)

(declare-fun tp!784884 () Bool)

(declare-fun tp!784885 () Bool)

(assert (=> b!2464068 (= e!1562799 (and tp!784884 tp!784885))))

(assert (=> b!2463171 (= tp!784642 e!1562799)))

(assert (= (and b!2463171 ((_ is ElementMatch!7247) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464065))

(assert (= (and b!2463171 ((_ is Concat!11893) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464066))

(assert (= (and b!2463171 ((_ is Star!7247) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464067))

(assert (= (and b!2463171 ((_ is Union!7247) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464068))

(declare-fun b!2464070 () Bool)

(declare-fun e!1562800 () Bool)

(declare-fun tp!784891 () Bool)

(declare-fun tp!784893 () Bool)

(assert (=> b!2464070 (= e!1562800 (and tp!784891 tp!784893))))

(declare-fun b!2464071 () Bool)

(declare-fun tp!784892 () Bool)

(assert (=> b!2464071 (= e!1562800 tp!784892)))

(declare-fun b!2464069 () Bool)

(assert (=> b!2464069 (= e!1562800 tp_is_empty!11931)))

(declare-fun b!2464072 () Bool)

(declare-fun tp!784889 () Bool)

(declare-fun tp!784890 () Bool)

(assert (=> b!2464072 (= e!1562800 (and tp!784889 tp!784890))))

(assert (=> b!2463171 (= tp!784644 e!1562800)))

(assert (= (and b!2463171 ((_ is ElementMatch!7247) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464069))

(assert (= (and b!2463171 ((_ is Concat!11893) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464070))

(assert (= (and b!2463171 ((_ is Star!7247) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464071))

(assert (= (and b!2463171 ((_ is Union!7247) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464072))

(declare-fun b!2464074 () Bool)

(declare-fun e!1562801 () Bool)

(declare-fun tp!784896 () Bool)

(declare-fun tp!784898 () Bool)

(assert (=> b!2464074 (= e!1562801 (and tp!784896 tp!784898))))

(declare-fun b!2464075 () Bool)

(declare-fun tp!784897 () Bool)

(assert (=> b!2464075 (= e!1562801 tp!784897)))

(declare-fun b!2464073 () Bool)

(assert (=> b!2464073 (= e!1562801 tp_is_empty!11931)))

(declare-fun b!2464076 () Bool)

(declare-fun tp!784894 () Bool)

(declare-fun tp!784895 () Bool)

(assert (=> b!2464076 (= e!1562801 (and tp!784894 tp!784895))))

(assert (=> b!2463234 (= tp!784715 e!1562801)))

(assert (= (and b!2463234 ((_ is ElementMatch!7247) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464073))

(assert (= (and b!2463234 ((_ is Concat!11893) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464074))

(assert (= (and b!2463234 ((_ is Star!7247) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464075))

(assert (= (and b!2463234 ((_ is Union!7247) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464076))

(declare-fun b!2464078 () Bool)

(declare-fun e!1562802 () Bool)

(declare-fun tp!784901 () Bool)

(declare-fun tp!784903 () Bool)

(assert (=> b!2464078 (= e!1562802 (and tp!784901 tp!784903))))

(declare-fun b!2464079 () Bool)

(declare-fun tp!784902 () Bool)

(assert (=> b!2464079 (= e!1562802 tp!784902)))

(declare-fun b!2464077 () Bool)

(assert (=> b!2464077 (= e!1562802 tp_is_empty!11931)))

(declare-fun b!2464080 () Bool)

(declare-fun tp!784899 () Bool)

(declare-fun tp!784900 () Bool)

(assert (=> b!2464080 (= e!1562802 (and tp!784899 tp!784900))))

(assert (=> b!2463234 (= tp!784716 e!1562802)))

(assert (= (and b!2463234 ((_ is ElementMatch!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464077))

(assert (= (and b!2463234 ((_ is Concat!11893) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464078))

(assert (= (and b!2463234 ((_ is Star!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464079))

(assert (= (and b!2463234 ((_ is Union!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464080))

(declare-fun b!2464082 () Bool)

(declare-fun e!1562803 () Bool)

(declare-fun tp!784906 () Bool)

(declare-fun tp!784908 () Bool)

(assert (=> b!2464082 (= e!1562803 (and tp!784906 tp!784908))))

(declare-fun b!2464083 () Bool)

(declare-fun tp!784907 () Bool)

(assert (=> b!2464083 (= e!1562803 tp!784907)))

(declare-fun b!2464081 () Bool)

(assert (=> b!2464081 (= e!1562803 tp_is_empty!11931)))

(declare-fun b!2464084 () Bool)

(declare-fun tp!784904 () Bool)

(declare-fun tp!784905 () Bool)

(assert (=> b!2464084 (= e!1562803 (and tp!784904 tp!784905))))

(assert (=> b!2463143 (= tp!784612 e!1562803)))

(assert (= (and b!2463143 ((_ is ElementMatch!7247) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464081))

(assert (= (and b!2463143 ((_ is Concat!11893) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464082))

(assert (= (and b!2463143 ((_ is Star!7247) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464083))

(assert (= (and b!2463143 ((_ is Union!7247) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464084))

(declare-fun b!2464086 () Bool)

(declare-fun e!1562804 () Bool)

(declare-fun tp!784911 () Bool)

(declare-fun tp!784913 () Bool)

(assert (=> b!2464086 (= e!1562804 (and tp!784911 tp!784913))))

(declare-fun b!2464087 () Bool)

(declare-fun tp!784912 () Bool)

(assert (=> b!2464087 (= e!1562804 tp!784912)))

(declare-fun b!2464085 () Bool)

(assert (=> b!2464085 (= e!1562804 tp_is_empty!11931)))

(declare-fun b!2464088 () Bool)

(declare-fun tp!784909 () Bool)

(declare-fun tp!784910 () Bool)

(assert (=> b!2464088 (= e!1562804 (and tp!784909 tp!784910))))

(assert (=> b!2463143 (= tp!784614 e!1562804)))

(assert (= (and b!2463143 ((_ is ElementMatch!7247) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464085))

(assert (= (and b!2463143 ((_ is Concat!11893) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464086))

(assert (= (and b!2463143 ((_ is Star!7247) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464087))

(assert (= (and b!2463143 ((_ is Union!7247) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464088))

(declare-fun b!2464090 () Bool)

(declare-fun e!1562805 () Bool)

(declare-fun tp!784916 () Bool)

(declare-fun tp!784918 () Bool)

(assert (=> b!2464090 (= e!1562805 (and tp!784916 tp!784918))))

(declare-fun b!2464091 () Bool)

(declare-fun tp!784917 () Bool)

(assert (=> b!2464091 (= e!1562805 tp!784917)))

(declare-fun b!2464089 () Bool)

(assert (=> b!2464089 (= e!1562805 tp_is_empty!11931)))

(declare-fun b!2464092 () Bool)

(declare-fun tp!784914 () Bool)

(declare-fun tp!784915 () Bool)

(assert (=> b!2464092 (= e!1562805 (and tp!784914 tp!784915))))

(assert (=> b!2463252 (= tp!784738 e!1562805)))

(assert (= (and b!2463252 ((_ is ElementMatch!7247) (reg!7576 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464089))

(assert (= (and b!2463252 ((_ is Concat!11893) (reg!7576 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464090))

(assert (= (and b!2463252 ((_ is Star!7247) (reg!7576 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464091))

(assert (= (and b!2463252 ((_ is Union!7247) (reg!7576 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464092))

(declare-fun b!2464093 () Bool)

(declare-fun e!1562806 () Bool)

(declare-fun tp!784919 () Bool)

(assert (=> b!2464093 (= e!1562806 (and tp_is_empty!11931 tp!784919))))

(assert (=> b!2463197 (= tp!784673 e!1562806)))

(assert (= (and b!2463197 ((_ is Cons!28673) (t!208930 (t!208930 (originalCharacters!5225 (h!34075 l!6611)))))) b!2464093))

(declare-fun tp!784920 () Bool)

(declare-fun b!2464094 () Bool)

(declare-fun tp!784922 () Bool)

(declare-fun e!1562807 () Bool)

(assert (=> b!2464094 (= e!1562807 (and (inv!38762 (left!22021 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) tp!784920 (inv!38762 (right!22351 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) tp!784922))))

(declare-fun b!2464096 () Bool)

(declare-fun e!1562808 () Bool)

(declare-fun tp!784921 () Bool)

(assert (=> b!2464096 (= e!1562808 tp!784921)))

(declare-fun b!2464095 () Bool)

(assert (=> b!2464095 (= e!1562807 (and (inv!38768 (xs!12145 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) e!1562808))))

(assert (=> b!2463182 (= tp!784655 (and (inv!38762 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) e!1562807))))

(assert (= (and b!2463182 ((_ is Node!9165) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) b!2464094))

(assert (= b!2464095 b!2464096))

(assert (= (and b!2463182 ((_ is Leaf!13702) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) b!2464095))

(declare-fun m!2834363 () Bool)

(assert (=> b!2464094 m!2834363))

(declare-fun m!2834365 () Bool)

(assert (=> b!2464094 m!2834365))

(declare-fun m!2834367 () Bool)

(assert (=> b!2464095 m!2834367))

(assert (=> b!2463182 m!2832487))

(declare-fun e!1562809 () Bool)

(declare-fun b!2464097 () Bool)

(declare-fun tp!784923 () Bool)

(declare-fun tp!784925 () Bool)

(assert (=> b!2464097 (= e!1562809 (and (inv!38762 (left!22021 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) tp!784923 (inv!38762 (right!22351 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) tp!784925))))

(declare-fun b!2464099 () Bool)

(declare-fun e!1562810 () Bool)

(declare-fun tp!784924 () Bool)

(assert (=> b!2464099 (= e!1562810 tp!784924)))

(declare-fun b!2464098 () Bool)

(assert (=> b!2464098 (= e!1562809 (and (inv!38768 (xs!12145 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) e!1562810))))

(assert (=> b!2463182 (= tp!784657 (and (inv!38762 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))) e!1562809))))

(assert (= (and b!2463182 ((_ is Node!9165) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) b!2464097))

(assert (= b!2464098 b!2464099))

(assert (= (and b!2463182 ((_ is Leaf!13702) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611))))))) b!2464098))

(declare-fun m!2834369 () Bool)

(assert (=> b!2464097 m!2834369))

(declare-fun m!2834371 () Bool)

(assert (=> b!2464097 m!2834371))

(declare-fun m!2834373 () Bool)

(assert (=> b!2464098 m!2834373))

(assert (=> b!2463182 m!2832489))

(declare-fun b!2464101 () Bool)

(declare-fun e!1562811 () Bool)

(declare-fun tp!784928 () Bool)

(declare-fun tp!784930 () Bool)

(assert (=> b!2464101 (= e!1562811 (and tp!784928 tp!784930))))

(declare-fun b!2464102 () Bool)

(declare-fun tp!784929 () Bool)

(assert (=> b!2464102 (= e!1562811 tp!784929)))

(declare-fun b!2464100 () Bool)

(assert (=> b!2464100 (= e!1562811 tp_is_empty!11931)))

(declare-fun b!2464103 () Bool)

(declare-fun tp!784926 () Bool)

(declare-fun tp!784927 () Bool)

(assert (=> b!2464103 (= e!1562811 (and tp!784926 tp!784927))))

(assert (=> b!2463145 (= tp!784610 e!1562811)))

(assert (= (and b!2463145 ((_ is ElementMatch!7247) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464100))

(assert (= (and b!2463145 ((_ is Concat!11893) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464101))

(assert (= (and b!2463145 ((_ is Star!7247) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464102))

(assert (= (and b!2463145 ((_ is Union!7247) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464103))

(declare-fun b!2464105 () Bool)

(declare-fun e!1562812 () Bool)

(declare-fun tp!784933 () Bool)

(declare-fun tp!784935 () Bool)

(assert (=> b!2464105 (= e!1562812 (and tp!784933 tp!784935))))

(declare-fun b!2464106 () Bool)

(declare-fun tp!784934 () Bool)

(assert (=> b!2464106 (= e!1562812 tp!784934)))

(declare-fun b!2464104 () Bool)

(assert (=> b!2464104 (= e!1562812 tp_is_empty!11931)))

(declare-fun b!2464107 () Bool)

(declare-fun tp!784931 () Bool)

(declare-fun tp!784932 () Bool)

(assert (=> b!2464107 (= e!1562812 (and tp!784931 tp!784932))))

(assert (=> b!2463145 (= tp!784611 e!1562812)))

(assert (= (and b!2463145 ((_ is ElementMatch!7247) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464104))

(assert (= (and b!2463145 ((_ is Concat!11893) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464105))

(assert (= (and b!2463145 ((_ is Star!7247) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464106))

(assert (= (and b!2463145 ((_ is Union!7247) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464107))

(declare-fun tp!784936 () Bool)

(declare-fun tp!784938 () Bool)

(declare-fun e!1562813 () Bool)

(declare-fun b!2464108 () Bool)

(assert (=> b!2464108 (= e!1562813 (and (inv!38762 (left!22021 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) tp!784936 (inv!38762 (right!22351 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) tp!784938))))

(declare-fun b!2464110 () Bool)

(declare-fun e!1562814 () Bool)

(declare-fun tp!784937 () Bool)

(assert (=> b!2464110 (= e!1562814 tp!784937)))

(declare-fun b!2464109 () Bool)

(assert (=> b!2464109 (= e!1562813 (and (inv!38768 (xs!12145 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) e!1562814))))

(assert (=> b!2463158 (= tp!784626 (and (inv!38762 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) e!1562813))))

(assert (= (and b!2463158 ((_ is Node!9165) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) b!2464108))

(assert (= b!2464109 b!2464110))

(assert (= (and b!2463158 ((_ is Leaf!13702) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) b!2464109))

(declare-fun m!2834375 () Bool)

(assert (=> b!2464108 m!2834375))

(declare-fun m!2834377 () Bool)

(assert (=> b!2464108 m!2834377))

(declare-fun m!2834379 () Bool)

(assert (=> b!2464109 m!2834379))

(assert (=> b!2463158 m!2832481))

(declare-fun tp!784939 () Bool)

(declare-fun tp!784941 () Bool)

(declare-fun b!2464111 () Bool)

(declare-fun e!1562815 () Bool)

(assert (=> b!2464111 (= e!1562815 (and (inv!38762 (left!22021 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) tp!784939 (inv!38762 (right!22351 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) tp!784941))))

(declare-fun b!2464113 () Bool)

(declare-fun e!1562816 () Bool)

(declare-fun tp!784940 () Bool)

(assert (=> b!2464113 (= e!1562816 tp!784940)))

(declare-fun b!2464112 () Bool)

(assert (=> b!2464112 (= e!1562815 (and (inv!38768 (xs!12145 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) e!1562816))))

(assert (=> b!2463158 (= tp!784628 (and (inv!38762 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))) e!1562815))))

(assert (= (and b!2463158 ((_ is Node!9165) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) b!2464111))

(assert (= b!2464112 b!2464113))

(assert (= (and b!2463158 ((_ is Leaf!13702) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67)))))) b!2464112))

(declare-fun m!2834381 () Bool)

(assert (=> b!2464111 m!2834381))

(declare-fun m!2834383 () Bool)

(assert (=> b!2464111 m!2834383))

(declare-fun m!2834385 () Bool)

(assert (=> b!2464112 m!2834385))

(assert (=> b!2463158 m!2832483))

(declare-fun b!2464115 () Bool)

(declare-fun e!1562817 () Bool)

(declare-fun tp!784944 () Bool)

(declare-fun tp!784946 () Bool)

(assert (=> b!2464115 (= e!1562817 (and tp!784944 tp!784946))))

(declare-fun b!2464116 () Bool)

(declare-fun tp!784945 () Bool)

(assert (=> b!2464116 (= e!1562817 tp!784945)))

(declare-fun b!2464114 () Bool)

(assert (=> b!2464114 (= e!1562817 tp_is_empty!11931)))

(declare-fun b!2464117 () Bool)

(declare-fun tp!784942 () Bool)

(declare-fun tp!784943 () Bool)

(assert (=> b!2464117 (= e!1562817 (and tp!784942 tp!784943))))

(assert (=> b!2463204 (= tp!784682 e!1562817)))

(assert (= (and b!2463204 ((_ is ElementMatch!7247) (reg!7576 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464114))

(assert (= (and b!2463204 ((_ is Concat!11893) (reg!7576 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464115))

(assert (= (and b!2463204 ((_ is Star!7247) (reg!7576 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464116))

(assert (= (and b!2463204 ((_ is Union!7247) (reg!7576 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464117))

(declare-fun b!2464119 () Bool)

(declare-fun e!1562818 () Bool)

(declare-fun tp!784949 () Bool)

(declare-fun tp!784951 () Bool)

(assert (=> b!2464119 (= e!1562818 (and tp!784949 tp!784951))))

(declare-fun b!2464120 () Bool)

(declare-fun tp!784950 () Bool)

(assert (=> b!2464120 (= e!1562818 tp!784950)))

(declare-fun b!2464118 () Bool)

(assert (=> b!2464118 (= e!1562818 tp_is_empty!11931)))

(declare-fun b!2464121 () Bool)

(declare-fun tp!784947 () Bool)

(declare-fun tp!784948 () Bool)

(assert (=> b!2464121 (= e!1562818 (and tp!784947 tp!784948))))

(assert (=> b!2463165 (= tp!784630 e!1562818)))

(assert (= (and b!2463165 ((_ is ElementMatch!7247) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464118))

(assert (= (and b!2463165 ((_ is Concat!11893) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464119))

(assert (= (and b!2463165 ((_ is Star!7247) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464120))

(assert (= (and b!2463165 ((_ is Union!7247) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464121))

(declare-fun b!2464123 () Bool)

(declare-fun e!1562819 () Bool)

(declare-fun tp!784954 () Bool)

(declare-fun tp!784956 () Bool)

(assert (=> b!2464123 (= e!1562819 (and tp!784954 tp!784956))))

(declare-fun b!2464124 () Bool)

(declare-fun tp!784955 () Bool)

(assert (=> b!2464124 (= e!1562819 tp!784955)))

(declare-fun b!2464122 () Bool)

(assert (=> b!2464122 (= e!1562819 tp_is_empty!11931)))

(declare-fun b!2464125 () Bool)

(declare-fun tp!784952 () Bool)

(declare-fun tp!784953 () Bool)

(assert (=> b!2464125 (= e!1562819 (and tp!784952 tp!784953))))

(assert (=> b!2463165 (= tp!784631 e!1562819)))

(assert (= (and b!2463165 ((_ is ElementMatch!7247) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464122))

(assert (= (and b!2463165 ((_ is Concat!11893) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464123))

(assert (= (and b!2463165 ((_ is Star!7247) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464124))

(assert (= (and b!2463165 ((_ is Union!7247) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464125))

(declare-fun b!2464127 () Bool)

(declare-fun e!1562820 () Bool)

(declare-fun tp!784959 () Bool)

(declare-fun tp!784961 () Bool)

(assert (=> b!2464127 (= e!1562820 (and tp!784959 tp!784961))))

(declare-fun b!2464128 () Bool)

(declare-fun tp!784960 () Bool)

(assert (=> b!2464128 (= e!1562820 tp!784960)))

(declare-fun b!2464126 () Bool)

(assert (=> b!2464126 (= e!1562820 tp_is_empty!11931)))

(declare-fun b!2464129 () Bool)

(declare-fun tp!784957 () Bool)

(declare-fun tp!784958 () Bool)

(assert (=> b!2464129 (= e!1562820 (and tp!784957 tp!784958))))

(assert (=> b!2463213 (= tp!784689 e!1562820)))

(assert (= (and b!2463213 ((_ is ElementMatch!7247) (regOne!15007 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464126))

(assert (= (and b!2463213 ((_ is Concat!11893) (regOne!15007 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464127))

(assert (= (and b!2463213 ((_ is Star!7247) (regOne!15007 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464128))

(assert (= (and b!2463213 ((_ is Union!7247) (regOne!15007 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464129))

(declare-fun b!2464131 () Bool)

(declare-fun e!1562821 () Bool)

(declare-fun tp!784964 () Bool)

(declare-fun tp!784966 () Bool)

(assert (=> b!2464131 (= e!1562821 (and tp!784964 tp!784966))))

(declare-fun b!2464132 () Bool)

(declare-fun tp!784965 () Bool)

(assert (=> b!2464132 (= e!1562821 tp!784965)))

(declare-fun b!2464130 () Bool)

(assert (=> b!2464130 (= e!1562821 tp_is_empty!11931)))

(declare-fun b!2464133 () Bool)

(declare-fun tp!784962 () Bool)

(declare-fun tp!784963 () Bool)

(assert (=> b!2464133 (= e!1562821 (and tp!784962 tp!784963))))

(assert (=> b!2463213 (= tp!784690 e!1562821)))

(assert (= (and b!2463213 ((_ is ElementMatch!7247) (regTwo!15007 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464130))

(assert (= (and b!2463213 ((_ is Concat!11893) (regTwo!15007 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464131))

(assert (= (and b!2463213 ((_ is Star!7247) (regTwo!15007 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464132))

(assert (= (and b!2463213 ((_ is Union!7247) (regTwo!15007 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464133))

(declare-fun b!2464134 () Bool)

(declare-fun e!1562822 () Bool)

(declare-fun tp!784967 () Bool)

(assert (=> b!2464134 (= e!1562822 (and tp_is_empty!11931 tp!784967))))

(assert (=> b!2463219 (= tp!784700 e!1562822)))

(assert (= (and b!2463219 ((_ is Cons!28673) (originalCharacters!5225 (h!34075 (t!208931 (t!208931 l!6611)))))) b!2464134))

(declare-fun b!2464135 () Bool)

(declare-fun e!1562823 () Bool)

(declare-fun tp!784968 () Bool)

(assert (=> b!2464135 (= e!1562823 (and tp_is_empty!11931 tp!784968))))

(assert (=> b!2463160 (= tp!784627 e!1562823)))

(assert (= (and b!2463160 ((_ is Cons!28673) (innerList!9225 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (value!142487 t2!67))))))) b!2464135))

(declare-fun tp!784969 () Bool)

(declare-fun e!1562824 () Bool)

(declare-fun tp!784971 () Bool)

(declare-fun b!2464136 () Bool)

(assert (=> b!2464136 (= e!1562824 (and (inv!38762 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611))))))) tp!784969 (inv!38762 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611))))))) tp!784971))))

(declare-fun b!2464138 () Bool)

(declare-fun e!1562825 () Bool)

(declare-fun tp!784970 () Bool)

(assert (=> b!2464138 (= e!1562825 tp!784970)))

(declare-fun b!2464137 () Bool)

(assert (=> b!2464137 (= e!1562824 (and (inv!38768 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611))))))) e!1562825))))

(assert (=> b!2462961 (= tp!784471 (and (inv!38762 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611)))))) e!1562824))))

(assert (= (and b!2462961 ((_ is Node!9165) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611))))))) b!2464136))

(assert (= b!2464137 b!2464138))

(assert (= (and b!2462961 ((_ is Leaf!13702) (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (value!142487 (h!34075 (t!208931 l!6611))))))) b!2464137))

(declare-fun m!2834387 () Bool)

(assert (=> b!2464136 m!2834387))

(declare-fun m!2834389 () Bool)

(assert (=> b!2464136 m!2834389))

(declare-fun m!2834391 () Bool)

(assert (=> b!2464137 m!2834391))

(assert (=> b!2462961 m!2832235))

(declare-fun b!2464140 () Bool)

(declare-fun e!1562826 () Bool)

(declare-fun tp!784974 () Bool)

(declare-fun tp!784976 () Bool)

(assert (=> b!2464140 (= e!1562826 (and tp!784974 tp!784976))))

(declare-fun b!2464141 () Bool)

(declare-fun tp!784975 () Bool)

(assert (=> b!2464141 (= e!1562826 tp!784975)))

(declare-fun b!2464139 () Bool)

(assert (=> b!2464139 (= e!1562826 tp_is_empty!11931)))

(declare-fun b!2464142 () Bool)

(declare-fun tp!784972 () Bool)

(declare-fun tp!784973 () Bool)

(assert (=> b!2464142 (= e!1562826 (and tp!784972 tp!784973))))

(assert (=> b!2463167 (= tp!784637 e!1562826)))

(assert (= (and b!2463167 ((_ is ElementMatch!7247) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464139))

(assert (= (and b!2463167 ((_ is Concat!11893) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464140))

(assert (= (and b!2463167 ((_ is Star!7247) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464141))

(assert (= (and b!2463167 ((_ is Union!7247) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464142))

(declare-fun b!2464144 () Bool)

(declare-fun e!1562827 () Bool)

(declare-fun tp!784979 () Bool)

(declare-fun tp!784981 () Bool)

(assert (=> b!2464144 (= e!1562827 (and tp!784979 tp!784981))))

(declare-fun b!2464145 () Bool)

(declare-fun tp!784980 () Bool)

(assert (=> b!2464145 (= e!1562827 tp!784980)))

(declare-fun b!2464143 () Bool)

(assert (=> b!2464143 (= e!1562827 tp_is_empty!11931)))

(declare-fun b!2464146 () Bool)

(declare-fun tp!784977 () Bool)

(declare-fun tp!784978 () Bool)

(assert (=> b!2464146 (= e!1562827 (and tp!784977 tp!784978))))

(assert (=> b!2463167 (= tp!784639 e!1562827)))

(assert (= (and b!2463167 ((_ is ElementMatch!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464143))

(assert (= (and b!2463167 ((_ is Concat!11893) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464144))

(assert (= (and b!2463167 ((_ is Star!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464145))

(assert (= (and b!2463167 ((_ is Union!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464146))

(declare-fun b!2464148 () Bool)

(declare-fun e!1562828 () Bool)

(declare-fun tp!784984 () Bool)

(declare-fun tp!784986 () Bool)

(assert (=> b!2464148 (= e!1562828 (and tp!784984 tp!784986))))

(declare-fun b!2464149 () Bool)

(declare-fun tp!784985 () Bool)

(assert (=> b!2464149 (= e!1562828 tp!784985)))

(declare-fun b!2464147 () Bool)

(assert (=> b!2464147 (= e!1562828 tp_is_empty!11931)))

(declare-fun b!2464150 () Bool)

(declare-fun tp!784982 () Bool)

(declare-fun tp!784983 () Bool)

(assert (=> b!2464150 (= e!1562828 (and tp!784982 tp!784983))))

(assert (=> b!2463230 (= tp!784710 e!1562828)))

(assert (= (and b!2463230 ((_ is ElementMatch!7247) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464147))

(assert (= (and b!2463230 ((_ is Concat!11893) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464148))

(assert (= (and b!2463230 ((_ is Star!7247) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464149))

(assert (= (and b!2463230 ((_ is Union!7247) (regOne!15007 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464150))

(declare-fun b!2464152 () Bool)

(declare-fun e!1562829 () Bool)

(declare-fun tp!784989 () Bool)

(declare-fun tp!784991 () Bool)

(assert (=> b!2464152 (= e!1562829 (and tp!784989 tp!784991))))

(declare-fun b!2464153 () Bool)

(declare-fun tp!784990 () Bool)

(assert (=> b!2464153 (= e!1562829 tp!784990)))

(declare-fun b!2464151 () Bool)

(assert (=> b!2464151 (= e!1562829 tp_is_empty!11931)))

(declare-fun b!2464154 () Bool)

(declare-fun tp!784987 () Bool)

(declare-fun tp!784988 () Bool)

(assert (=> b!2464154 (= e!1562829 (and tp!784987 tp!784988))))

(assert (=> b!2463230 (= tp!784711 e!1562829)))

(assert (= (and b!2463230 ((_ is ElementMatch!7247) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464151))

(assert (= (and b!2463230 ((_ is Concat!11893) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464152))

(assert (= (and b!2463230 ((_ is Star!7247) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464153))

(assert (= (and b!2463230 ((_ is Union!7247) (regTwo!15007 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464154))

(declare-fun b!2464156 () Bool)

(declare-fun e!1562830 () Bool)

(declare-fun tp!784994 () Bool)

(declare-fun tp!784996 () Bool)

(assert (=> b!2464156 (= e!1562830 (and tp!784994 tp!784996))))

(declare-fun b!2464157 () Bool)

(declare-fun tp!784995 () Bool)

(assert (=> b!2464157 (= e!1562830 tp!784995)))

(declare-fun b!2464155 () Bool)

(assert (=> b!2464155 (= e!1562830 tp_is_empty!11931)))

(declare-fun b!2464158 () Bool)

(declare-fun tp!784992 () Bool)

(declare-fun tp!784993 () Bool)

(assert (=> b!2464158 (= e!1562830 (and tp!784992 tp!784993))))

(assert (=> b!2463215 (= tp!784696 e!1562830)))

(assert (= (and b!2463215 ((_ is ElementMatch!7247) (regOne!15006 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464155))

(assert (= (and b!2463215 ((_ is Concat!11893) (regOne!15006 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464156))

(assert (= (and b!2463215 ((_ is Star!7247) (regOne!15006 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464157))

(assert (= (and b!2463215 ((_ is Union!7247) (regOne!15006 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464158))

(declare-fun b!2464160 () Bool)

(declare-fun e!1562831 () Bool)

(declare-fun tp!784999 () Bool)

(declare-fun tp!785001 () Bool)

(assert (=> b!2464160 (= e!1562831 (and tp!784999 tp!785001))))

(declare-fun b!2464161 () Bool)

(declare-fun tp!785000 () Bool)

(assert (=> b!2464161 (= e!1562831 tp!785000)))

(declare-fun b!2464159 () Bool)

(assert (=> b!2464159 (= e!1562831 tp_is_empty!11931)))

(declare-fun b!2464162 () Bool)

(declare-fun tp!784997 () Bool)

(declare-fun tp!784998 () Bool)

(assert (=> b!2464162 (= e!1562831 (and tp!784997 tp!784998))))

(assert (=> b!2463215 (= tp!784698 e!1562831)))

(assert (= (and b!2463215 ((_ is ElementMatch!7247) (regTwo!15006 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464159))

(assert (= (and b!2463215 ((_ is Concat!11893) (regTwo!15006 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464160))

(assert (= (and b!2463215 ((_ is Star!7247) (regTwo!15006 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464161))

(assert (= (and b!2463215 ((_ is Union!7247) (regTwo!15006 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464162))

(declare-fun b!2464164 () Bool)

(declare-fun e!1562832 () Bool)

(declare-fun tp!785004 () Bool)

(declare-fun tp!785006 () Bool)

(assert (=> b!2464164 (= e!1562832 (and tp!785004 tp!785006))))

(declare-fun b!2464165 () Bool)

(declare-fun tp!785005 () Bool)

(assert (=> b!2464165 (= e!1562832 tp!785005)))

(declare-fun b!2464163 () Bool)

(assert (=> b!2464163 (= e!1562832 tp_is_empty!11931)))

(declare-fun b!2464166 () Bool)

(declare-fun tp!785002 () Bool)

(declare-fun tp!785003 () Bool)

(assert (=> b!2464166 (= e!1562832 (and tp!785002 tp!785003))))

(assert (=> b!2463191 (= tp!784666 e!1562832)))

(assert (= (and b!2463191 ((_ is ElementMatch!7247) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464163))

(assert (= (and b!2463191 ((_ is Concat!11893) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464164))

(assert (= (and b!2463191 ((_ is Star!7247) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464165))

(assert (= (and b!2463191 ((_ is Union!7247) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464166))

(declare-fun b!2464168 () Bool)

(declare-fun e!1562833 () Bool)

(declare-fun tp!785009 () Bool)

(declare-fun tp!785011 () Bool)

(assert (=> b!2464168 (= e!1562833 (and tp!785009 tp!785011))))

(declare-fun b!2464169 () Bool)

(declare-fun tp!785010 () Bool)

(assert (=> b!2464169 (= e!1562833 tp!785010)))

(declare-fun b!2464167 () Bool)

(assert (=> b!2464167 (= e!1562833 tp_is_empty!11931)))

(declare-fun b!2464170 () Bool)

(declare-fun tp!785007 () Bool)

(declare-fun tp!785008 () Bool)

(assert (=> b!2464170 (= e!1562833 (and tp!785007 tp!785008))))

(assert (=> b!2463208 (= tp!784687 e!1562833)))

(assert (= (and b!2463208 ((_ is ElementMatch!7247) (reg!7576 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464167))

(assert (= (and b!2463208 ((_ is Concat!11893) (reg!7576 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464168))

(assert (= (and b!2463208 ((_ is Star!7247) (reg!7576 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464169))

(assert (= (and b!2463208 ((_ is Union!7247) (reg!7576 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464170))

(declare-fun b!2464172 () Bool)

(declare-fun e!1562834 () Bool)

(declare-fun tp!785014 () Bool)

(declare-fun tp!785016 () Bool)

(assert (=> b!2464172 (= e!1562834 (and tp!785014 tp!785016))))

(declare-fun b!2464173 () Bool)

(declare-fun tp!785015 () Bool)

(assert (=> b!2464173 (= e!1562834 tp!785015)))

(declare-fun b!2464171 () Bool)

(assert (=> b!2464171 (= e!1562834 tp_is_empty!11931)))

(declare-fun b!2464174 () Bool)

(declare-fun tp!785012 () Bool)

(declare-fun tp!785013 () Bool)

(assert (=> b!2464174 (= e!1562834 (and tp!785012 tp!785013))))

(assert (=> b!2463169 (= tp!784635 e!1562834)))

(assert (= (and b!2463169 ((_ is ElementMatch!7247) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464171))

(assert (= (and b!2463169 ((_ is Concat!11893) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464172))

(assert (= (and b!2463169 ((_ is Star!7247) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464173))

(assert (= (and b!2463169 ((_ is Union!7247) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464174))

(declare-fun b!2464176 () Bool)

(declare-fun e!1562835 () Bool)

(declare-fun tp!785019 () Bool)

(declare-fun tp!785021 () Bool)

(assert (=> b!2464176 (= e!1562835 (and tp!785019 tp!785021))))

(declare-fun b!2464177 () Bool)

(declare-fun tp!785020 () Bool)

(assert (=> b!2464177 (= e!1562835 tp!785020)))

(declare-fun b!2464175 () Bool)

(assert (=> b!2464175 (= e!1562835 tp_is_empty!11931)))

(declare-fun b!2464178 () Bool)

(declare-fun tp!785017 () Bool)

(declare-fun tp!785018 () Bool)

(assert (=> b!2464178 (= e!1562835 (and tp!785017 tp!785018))))

(assert (=> b!2463169 (= tp!784636 e!1562835)))

(assert (= (and b!2463169 ((_ is ElementMatch!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464175))

(assert (= (and b!2463169 ((_ is Concat!11893) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464176))

(assert (= (and b!2463169 ((_ is Star!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464177))

(assert (= (and b!2463169 ((_ is Union!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464178))

(declare-fun b!2464180 () Bool)

(declare-fun e!1562836 () Bool)

(declare-fun tp!785024 () Bool)

(declare-fun tp!785026 () Bool)

(assert (=> b!2464180 (= e!1562836 (and tp!785024 tp!785026))))

(declare-fun b!2464181 () Bool)

(declare-fun tp!785025 () Bool)

(assert (=> b!2464181 (= e!1562836 tp!785025)))

(declare-fun b!2464179 () Bool)

(assert (=> b!2464179 (= e!1562836 tp_is_empty!11931)))

(declare-fun b!2464182 () Bool)

(declare-fun tp!785022 () Bool)

(declare-fun tp!785023 () Bool)

(assert (=> b!2464182 (= e!1562836 (and tp!785022 tp!785023))))

(assert (=> b!2463217 (= tp!784694 e!1562836)))

(assert (= (and b!2463217 ((_ is ElementMatch!7247) (regOne!15007 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464179))

(assert (= (and b!2463217 ((_ is Concat!11893) (regOne!15007 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464180))

(assert (= (and b!2463217 ((_ is Star!7247) (regOne!15007 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464181))

(assert (= (and b!2463217 ((_ is Union!7247) (regOne!15007 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464182))

(declare-fun b!2464184 () Bool)

(declare-fun e!1562837 () Bool)

(declare-fun tp!785029 () Bool)

(declare-fun tp!785031 () Bool)

(assert (=> b!2464184 (= e!1562837 (and tp!785029 tp!785031))))

(declare-fun b!2464185 () Bool)

(declare-fun tp!785030 () Bool)

(assert (=> b!2464185 (= e!1562837 tp!785030)))

(declare-fun b!2464183 () Bool)

(assert (=> b!2464183 (= e!1562837 tp_is_empty!11931)))

(declare-fun b!2464186 () Bool)

(declare-fun tp!785027 () Bool)

(declare-fun tp!785028 () Bool)

(assert (=> b!2464186 (= e!1562837 (and tp!785027 tp!785028))))

(assert (=> b!2463217 (= tp!784695 e!1562837)))

(assert (= (and b!2463217 ((_ is ElementMatch!7247) (regTwo!15007 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464183))

(assert (= (and b!2463217 ((_ is Concat!11893) (regTwo!15007 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464184))

(assert (= (and b!2463217 ((_ is Star!7247) (regTwo!15007 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464185))

(assert (= (and b!2463217 ((_ is Union!7247) (regTwo!15007 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464186))

(declare-fun b!2464188 () Bool)

(declare-fun e!1562838 () Bool)

(declare-fun tp!785034 () Bool)

(declare-fun tp!785036 () Bool)

(assert (=> b!2464188 (= e!1562838 (and tp!785034 tp!785036))))

(declare-fun b!2464189 () Bool)

(declare-fun tp!785035 () Bool)

(assert (=> b!2464189 (= e!1562838 tp!785035)))

(declare-fun b!2464187 () Bool)

(assert (=> b!2464187 (= e!1562838 tp_is_empty!11931)))

(declare-fun b!2464190 () Bool)

(declare-fun tp!785032 () Bool)

(declare-fun tp!785033 () Bool)

(assert (=> b!2464190 (= e!1562838 (and tp!785032 tp!785033))))

(assert (=> b!2463237 (= tp!784723 e!1562838)))

(assert (= (and b!2463237 ((_ is ElementMatch!7247) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464187))

(assert (= (and b!2463237 ((_ is Concat!11893) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464188))

(assert (= (and b!2463237 ((_ is Star!7247) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464189))

(assert (= (and b!2463237 ((_ is Union!7247) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464190))

(declare-fun b!2464191 () Bool)

(declare-fun e!1562839 () Bool)

(declare-fun tp!785037 () Bool)

(assert (=> b!2464191 (= e!1562839 (and tp_is_empty!11931 tp!785037))))

(assert (=> b!2463184 (= tp!784656 e!1562839)))

(assert (= (and b!2463184 ((_ is Cons!28673) (innerList!9225 (xs!12145 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (value!142487 (h!34075 l!6611)))))))) b!2464191))

(declare-fun b!2464193 () Bool)

(declare-fun e!1562840 () Bool)

(declare-fun tp!785040 () Bool)

(declare-fun tp!785042 () Bool)

(assert (=> b!2464193 (= e!1562840 (and tp!785040 tp!785042))))

(declare-fun b!2464194 () Bool)

(declare-fun tp!785041 () Bool)

(assert (=> b!2464194 (= e!1562840 tp!785041)))

(declare-fun b!2464192 () Bool)

(assert (=> b!2464192 (= e!1562840 tp_is_empty!11931)))

(declare-fun b!2464195 () Bool)

(declare-fun tp!785038 () Bool)

(declare-fun tp!785039 () Bool)

(assert (=> b!2464195 (= e!1562840 (and tp!785038 tp!785039))))

(assert (=> b!2463228 (= tp!784712 e!1562840)))

(assert (= (and b!2463228 ((_ is ElementMatch!7247) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464192))

(assert (= (and b!2463228 ((_ is Concat!11893) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464193))

(assert (= (and b!2463228 ((_ is Star!7247) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464194))

(assert (= (and b!2463228 ((_ is Union!7247) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464195))

(declare-fun b!2464197 () Bool)

(declare-fun e!1562841 () Bool)

(declare-fun tp!785045 () Bool)

(declare-fun tp!785047 () Bool)

(assert (=> b!2464197 (= e!1562841 (and tp!785045 tp!785047))))

(declare-fun b!2464198 () Bool)

(declare-fun tp!785046 () Bool)

(assert (=> b!2464198 (= e!1562841 tp!785046)))

(declare-fun b!2464196 () Bool)

(assert (=> b!2464196 (= e!1562841 tp_is_empty!11931)))

(declare-fun b!2464199 () Bool)

(declare-fun tp!785043 () Bool)

(declare-fun tp!785044 () Bool)

(assert (=> b!2464199 (= e!1562841 (and tp!785043 tp!785044))))

(assert (=> b!2463228 (= tp!784714 e!1562841)))

(assert (= (and b!2463228 ((_ is ElementMatch!7247) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464196))

(assert (= (and b!2463228 ((_ is Concat!11893) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464197))

(assert (= (and b!2463228 ((_ is Star!7247) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464198))

(assert (= (and b!2463228 ((_ is Union!7247) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464199))

(declare-fun b!2464201 () Bool)

(declare-fun e!1562842 () Bool)

(declare-fun tp!785050 () Bool)

(declare-fun tp!785052 () Bool)

(assert (=> b!2464201 (= e!1562842 (and tp!785050 tp!785052))))

(declare-fun b!2464202 () Bool)

(declare-fun tp!785051 () Bool)

(assert (=> b!2464202 (= e!1562842 tp!785051)))

(declare-fun b!2464200 () Bool)

(assert (=> b!2464200 (= e!1562842 tp_is_empty!11931)))

(declare-fun b!2464203 () Bool)

(declare-fun tp!785048 () Bool)

(declare-fun tp!785049 () Bool)

(assert (=> b!2464203 (= e!1562842 (and tp!785048 tp!785049))))

(assert (=> b!2463259 (= tp!784746 e!1562842)))

(assert (= (and b!2463259 ((_ is ElementMatch!7247) (reg!7576 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464200))

(assert (= (and b!2463259 ((_ is Concat!11893) (reg!7576 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464201))

(assert (= (and b!2463259 ((_ is Star!7247) (reg!7576 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464202))

(assert (= (and b!2463259 ((_ is Union!7247) (reg!7576 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464203))

(declare-fun b!2464205 () Bool)

(declare-fun e!1562843 () Bool)

(declare-fun tp!785055 () Bool)

(declare-fun tp!785057 () Bool)

(assert (=> b!2464205 (= e!1562843 (and tp!785055 tp!785057))))

(declare-fun b!2464206 () Bool)

(declare-fun tp!785056 () Bool)

(assert (=> b!2464206 (= e!1562843 tp!785056)))

(declare-fun b!2464204 () Bool)

(assert (=> b!2464204 (= e!1562843 tp_is_empty!11931)))

(declare-fun b!2464207 () Bool)

(declare-fun tp!785053 () Bool)

(declare-fun tp!785054 () Bool)

(assert (=> b!2464207 (= e!1562843 (and tp!785053 tp!785054))))

(assert (=> b!2463176 (= tp!784648 e!1562843)))

(assert (= (and b!2463176 ((_ is ElementMatch!7247) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464204))

(assert (= (and b!2463176 ((_ is Concat!11893) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464205))

(assert (= (and b!2463176 ((_ is Star!7247) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464206))

(assert (= (and b!2463176 ((_ is Union!7247) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464207))

(declare-fun b!2464209 () Bool)

(declare-fun e!1562844 () Bool)

(declare-fun tp!785060 () Bool)

(declare-fun tp!785062 () Bool)

(assert (=> b!2464209 (= e!1562844 (and tp!785060 tp!785062))))

(declare-fun b!2464210 () Bool)

(declare-fun tp!785061 () Bool)

(assert (=> b!2464210 (= e!1562844 tp!785061)))

(declare-fun b!2464208 () Bool)

(assert (=> b!2464208 (= e!1562844 tp_is_empty!11931)))

(declare-fun b!2464211 () Bool)

(declare-fun tp!785058 () Bool)

(declare-fun tp!785059 () Bool)

(assert (=> b!2464211 (= e!1562844 (and tp!785058 tp!785059))))

(assert (=> b!2463248 (= tp!784733 e!1562844)))

(assert (= (and b!2463248 ((_ is ElementMatch!7247) (reg!7576 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464208))

(assert (= (and b!2463248 ((_ is Concat!11893) (reg!7576 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464209))

(assert (= (and b!2463248 ((_ is Star!7247) (reg!7576 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464210))

(assert (= (and b!2463248 ((_ is Union!7247) (reg!7576 (regOne!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464211))

(declare-fun b!2464213 () Bool)

(declare-fun e!1562845 () Bool)

(declare-fun tp!785065 () Bool)

(declare-fun tp!785067 () Bool)

(assert (=> b!2464213 (= e!1562845 (and tp!785065 tp!785067))))

(declare-fun b!2464214 () Bool)

(declare-fun tp!785066 () Bool)

(assert (=> b!2464214 (= e!1562845 tp!785066)))

(declare-fun b!2464212 () Bool)

(assert (=> b!2464212 (= e!1562845 tp_is_empty!11931)))

(declare-fun b!2464215 () Bool)

(declare-fun tp!785063 () Bool)

(declare-fun tp!785064 () Bool)

(assert (=> b!2464215 (= e!1562845 (and tp!785063 tp!785064))))

(assert (=> b!2463148 (= tp!784618 e!1562845)))

(assert (= (and b!2463148 ((_ is ElementMatch!7247) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464212))

(assert (= (and b!2463148 ((_ is Concat!11893) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464213))

(assert (= (and b!2463148 ((_ is Star!7247) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464214))

(assert (= (and b!2463148 ((_ is Union!7247) (reg!7576 (regTwo!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464215))

(declare-fun b!2464218 () Bool)

(declare-fun b_free!70789 () Bool)

(declare-fun b_next!71493 () Bool)

(assert (=> b!2464218 (= b_free!70789 (not b_next!71493))))

(declare-fun tp!785071 () Bool)

(declare-fun b_and!186149 () Bool)

(assert (=> b!2464218 (= tp!785071 b_and!186149)))

(declare-fun b_free!70791 () Bool)

(declare-fun b_next!71495 () Bool)

(assert (=> b!2464218 (= b_free!70791 (not b_next!71495))))

(declare-fun t!209159 () Bool)

(declare-fun tb!139201 () Bool)

(assert (=> (and b!2464218 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) t!209159) tb!139201))

(declare-fun result!171808 () Bool)

(assert (= result!171808 result!171656))

(assert (=> b!2462734 t!209159))

(declare-fun t!209161 () Bool)

(declare-fun tb!139203 () Bool)

(assert (=> (and b!2464218 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) t!209161) tb!139203))

(declare-fun result!171810 () Bool)

(assert (= result!171810 result!171648))

(assert (=> b!2462731 t!209161))

(declare-fun t!209163 () Bool)

(declare-fun tb!139205 () Bool)

(assert (=> (and b!2464218 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) t!209163) tb!139205))

(declare-fun result!171812 () Bool)

(assert (= result!171812 result!171602))

(assert (=> b!2462500 t!209163))

(declare-fun t!209165 () Bool)

(declare-fun tb!139207 () Bool)

(assert (=> (and b!2464218 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) t!209165) tb!139207))

(declare-fun result!171814 () Bool)

(assert (= result!171814 result!171696))

(assert (=> b!2463126 t!209165))

(declare-fun t!209167 () Bool)

(declare-fun tb!139209 () Bool)

(assert (=> (and b!2464218 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) t!209167) tb!139209))

(declare-fun result!171816 () Bool)

(assert (= result!171816 result!171744))

(assert (=> b!2463480 t!209167))

(declare-fun t!209169 () Bool)

(declare-fun tb!139211 () Bool)

(assert (=> (and b!2464218 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) t!209169) tb!139211))

(declare-fun result!171818 () Bool)

(assert (= result!171818 result!171760))

(assert (=> d!709403 t!209169))

(assert (=> d!709087 t!209165))

(assert (=> d!709317 t!209163))

(declare-fun tp!785070 () Bool)

(declare-fun b_and!186151 () Bool)

(assert (=> b!2464218 (= tp!785070 (and (=> t!209169 result!171818) (=> t!209165 result!171814) (=> t!209163 result!171812) (=> t!209167 result!171816) (=> t!209161 result!171810) (=> t!209159 result!171808) b_and!186151))))

(declare-fun e!1562848 () Bool)

(assert (=> b!2464218 (= e!1562848 (and tp!785071 tp!785070))))

(declare-fun tp!785068 () Bool)

(declare-fun e!1562846 () Bool)

(declare-fun b!2464217 () Bool)

(assert (=> b!2464217 (= e!1562846 (and tp!785068 (inv!38755 (tag!4949 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (inv!38758 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) e!1562848))))

(declare-fun b!2464216 () Bool)

(declare-fun e!1562847 () Bool)

(declare-fun tp!785069 () Bool)

(assert (=> b!2464216 (= e!1562847 (and e!1562846 tp!785069))))

(assert (=> b!2463222 (= tp!784705 e!1562847)))

(assert (= b!2464217 b!2464218))

(assert (= b!2464216 b!2464217))

(assert (= (and b!2463222 ((_ is Cons!28675) (t!208932 (t!208932 (t!208932 rules!4472))))) b!2464216))

(declare-fun m!2834393 () Bool)

(assert (=> b!2464217 m!2834393))

(declare-fun m!2834395 () Bool)

(assert (=> b!2464217 m!2834395))

(declare-fun b!2464220 () Bool)

(declare-fun e!1562850 () Bool)

(declare-fun tp!785074 () Bool)

(declare-fun tp!785076 () Bool)

(assert (=> b!2464220 (= e!1562850 (and tp!785074 tp!785076))))

(declare-fun b!2464221 () Bool)

(declare-fun tp!785075 () Bool)

(assert (=> b!2464221 (= e!1562850 tp!785075)))

(declare-fun b!2464219 () Bool)

(assert (=> b!2464219 (= e!1562850 tp_is_empty!11931)))

(declare-fun b!2464222 () Bool)

(declare-fun tp!785072 () Bool)

(declare-fun tp!785073 () Bool)

(assert (=> b!2464222 (= e!1562850 (and tp!785072 tp!785073))))

(assert (=> b!2463240 (= tp!784727 e!1562850)))

(assert (= (and b!2463240 ((_ is ElementMatch!7247) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464219))

(assert (= (and b!2463240 ((_ is Concat!11893) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464220))

(assert (= (and b!2463240 ((_ is Star!7247) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464221))

(assert (= (and b!2463240 ((_ is Union!7247) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464222))

(declare-fun b!2464224 () Bool)

(declare-fun e!1562851 () Bool)

(declare-fun tp!785079 () Bool)

(declare-fun tp!785081 () Bool)

(assert (=> b!2464224 (= e!1562851 (and tp!785079 tp!785081))))

(declare-fun b!2464225 () Bool)

(declare-fun tp!785080 () Bool)

(assert (=> b!2464225 (= e!1562851 tp!785080)))

(declare-fun b!2464223 () Bool)

(assert (=> b!2464223 (= e!1562851 tp_is_empty!11931)))

(declare-fun b!2464226 () Bool)

(declare-fun tp!785077 () Bool)

(declare-fun tp!785078 () Bool)

(assert (=> b!2464226 (= e!1562851 (and tp!785077 tp!785078))))

(assert (=> b!2463240 (= tp!784729 e!1562851)))

(assert (= (and b!2463240 ((_ is ElementMatch!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464223))

(assert (= (and b!2463240 ((_ is Concat!11893) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464224))

(assert (= (and b!2463240 ((_ is Star!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464225))

(assert (= (and b!2463240 ((_ is Union!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464226))

(declare-fun b!2464228 () Bool)

(declare-fun e!1562852 () Bool)

(declare-fun tp!785084 () Bool)

(declare-fun tp!785086 () Bool)

(assert (=> b!2464228 (= e!1562852 (and tp!785084 tp!785086))))

(declare-fun b!2464229 () Bool)

(declare-fun tp!785085 () Bool)

(assert (=> b!2464229 (= e!1562852 tp!785085)))

(declare-fun b!2464227 () Bool)

(assert (=> b!2464227 (= e!1562852 tp_is_empty!11931)))

(declare-fun b!2464230 () Bool)

(declare-fun tp!785082 () Bool)

(declare-fun tp!785083 () Bool)

(assert (=> b!2464230 (= e!1562852 (and tp!785082 tp!785083))))

(assert (=> b!2463200 (= tp!784677 e!1562852)))

(assert (= (and b!2463200 ((_ is ElementMatch!7247) (reg!7576 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464227))

(assert (= (and b!2463200 ((_ is Concat!11893) (reg!7576 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464228))

(assert (= (and b!2463200 ((_ is Star!7247) (reg!7576 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464229))

(assert (= (and b!2463200 ((_ is Union!7247) (reg!7576 (regOne!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464230))

(declare-fun b!2464231 () Bool)

(declare-fun e!1562853 () Bool)

(declare-fun tp!785087 () Bool)

(assert (=> b!2464231 (= e!1562853 (and tp_is_empty!11931 tp!785087))))

(assert (=> b!2463161 (= tp!784629 e!1562853)))

(assert (= (and b!2463161 ((_ is Cons!28673) (t!208930 (t!208930 (originalCharacters!5225 t2!67))))) b!2464231))

(declare-fun b!2464233 () Bool)

(declare-fun e!1562854 () Bool)

(declare-fun tp!785090 () Bool)

(declare-fun tp!785092 () Bool)

(assert (=> b!2464233 (= e!1562854 (and tp!785090 tp!785092))))

(declare-fun b!2464234 () Bool)

(declare-fun tp!785091 () Bool)

(assert (=> b!2464234 (= e!1562854 tp!785091)))

(declare-fun b!2464232 () Bool)

(assert (=> b!2464232 (= e!1562854 tp_is_empty!11931)))

(declare-fun b!2464235 () Bool)

(declare-fun tp!785088 () Bool)

(declare-fun tp!785089 () Bool)

(assert (=> b!2464235 (= e!1562854 (and tp!785088 tp!785089))))

(assert (=> b!2463209 (= tp!784684 e!1562854)))

(assert (= (and b!2463209 ((_ is ElementMatch!7247) (regOne!15007 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464232))

(assert (= (and b!2463209 ((_ is Concat!11893) (regOne!15007 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464233))

(assert (= (and b!2463209 ((_ is Star!7247) (regOne!15007 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464234))

(assert (= (and b!2463209 ((_ is Union!7247) (regOne!15007 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464235))

(declare-fun b!2464237 () Bool)

(declare-fun e!1562855 () Bool)

(declare-fun tp!785095 () Bool)

(declare-fun tp!785097 () Bool)

(assert (=> b!2464237 (= e!1562855 (and tp!785095 tp!785097))))

(declare-fun b!2464238 () Bool)

(declare-fun tp!785096 () Bool)

(assert (=> b!2464238 (= e!1562855 tp!785096)))

(declare-fun b!2464236 () Bool)

(assert (=> b!2464236 (= e!1562855 tp_is_empty!11931)))

(declare-fun b!2464239 () Bool)

(declare-fun tp!785093 () Bool)

(declare-fun tp!785094 () Bool)

(assert (=> b!2464239 (= e!1562855 (and tp!785093 tp!785094))))

(assert (=> b!2463209 (= tp!784685 e!1562855)))

(assert (= (and b!2463209 ((_ is ElementMatch!7247) (regTwo!15007 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464236))

(assert (= (and b!2463209 ((_ is Concat!11893) (regTwo!15007 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464237))

(assert (= (and b!2463209 ((_ is Star!7247) (regTwo!15007 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464238))

(assert (= (and b!2463209 ((_ is Union!7247) (regTwo!15007 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464239))

(declare-fun b!2464241 () Bool)

(declare-fun e!1562856 () Bool)

(declare-fun tp!785100 () Bool)

(declare-fun tp!785102 () Bool)

(assert (=> b!2464241 (= e!1562856 (and tp!785100 tp!785102))))

(declare-fun b!2464242 () Bool)

(declare-fun tp!785101 () Bool)

(assert (=> b!2464242 (= e!1562856 tp!785101)))

(declare-fun b!2464240 () Bool)

(assert (=> b!2464240 (= e!1562856 tp_is_empty!11931)))

(declare-fun b!2464243 () Bool)

(declare-fun tp!785098 () Bool)

(declare-fun tp!785099 () Bool)

(assert (=> b!2464243 (= e!1562856 (and tp!785098 tp!785099))))

(assert (=> b!2463172 (= tp!784643 e!1562856)))

(assert (= (and b!2463172 ((_ is ElementMatch!7247) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464240))

(assert (= (and b!2463172 ((_ is Concat!11893) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464241))

(assert (= (and b!2463172 ((_ is Star!7247) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464242))

(assert (= (and b!2463172 ((_ is Union!7247) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464243))

(declare-fun b!2464245 () Bool)

(declare-fun e!1562857 () Bool)

(declare-fun tp!785105 () Bool)

(declare-fun tp!785107 () Bool)

(assert (=> b!2464245 (= e!1562857 (and tp!785105 tp!785107))))

(declare-fun b!2464246 () Bool)

(declare-fun tp!785106 () Bool)

(assert (=> b!2464246 (= e!1562857 tp!785106)))

(declare-fun b!2464244 () Bool)

(assert (=> b!2464244 (= e!1562857 tp_is_empty!11931)))

(declare-fun b!2464247 () Bool)

(declare-fun tp!785103 () Bool)

(declare-fun tp!785104 () Bool)

(assert (=> b!2464247 (= e!1562857 (and tp!785103 tp!785104))))

(assert (=> b!2463181 (= tp!784650 e!1562857)))

(assert (= (and b!2463181 ((_ is ElementMatch!7247) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464244))

(assert (= (and b!2463181 ((_ is Concat!11893) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464245))

(assert (= (and b!2463181 ((_ is Star!7247) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464246))

(assert (= (and b!2463181 ((_ is Union!7247) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464247))

(declare-fun b!2464249 () Bool)

(declare-fun e!1562858 () Bool)

(declare-fun tp!785110 () Bool)

(declare-fun tp!785112 () Bool)

(assert (=> b!2464249 (= e!1562858 (and tp!785110 tp!785112))))

(declare-fun b!2464250 () Bool)

(declare-fun tp!785111 () Bool)

(assert (=> b!2464250 (= e!1562858 tp!785111)))

(declare-fun b!2464248 () Bool)

(assert (=> b!2464248 (= e!1562858 tp_is_empty!11931)))

(declare-fun b!2464251 () Bool)

(declare-fun tp!785108 () Bool)

(declare-fun tp!785109 () Bool)

(assert (=> b!2464251 (= e!1562858 (and tp!785108 tp!785109))))

(assert (=> b!2463181 (= tp!784651 e!1562858)))

(assert (= (and b!2463181 ((_ is ElementMatch!7247) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464248))

(assert (= (and b!2463181 ((_ is Concat!11893) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464249))

(assert (= (and b!2463181 ((_ is Star!7247) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464250))

(assert (= (and b!2463181 ((_ is Union!7247) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464251))

(declare-fun b!2464253 () Bool)

(declare-fun e!1562859 () Bool)

(declare-fun tp!785115 () Bool)

(declare-fun tp!785117 () Bool)

(assert (=> b!2464253 (= e!1562859 (and tp!785115 tp!785117))))

(declare-fun b!2464254 () Bool)

(declare-fun tp!785116 () Bool)

(assert (=> b!2464254 (= e!1562859 tp!785116)))

(declare-fun b!2464252 () Bool)

(assert (=> b!2464252 (= e!1562859 tp_is_empty!11931)))

(declare-fun b!2464255 () Bool)

(declare-fun tp!785113 () Bool)

(declare-fun tp!785114 () Bool)

(assert (=> b!2464255 (= e!1562859 (and tp!785113 tp!785114))))

(assert (=> b!2463163 (= tp!784632 e!1562859)))

(assert (= (and b!2463163 ((_ is ElementMatch!7247) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464252))

(assert (= (and b!2463163 ((_ is Concat!11893) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464253))

(assert (= (and b!2463163 ((_ is Star!7247) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464254))

(assert (= (and b!2463163 ((_ is Union!7247) (regOne!15006 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464255))

(declare-fun b!2464257 () Bool)

(declare-fun e!1562860 () Bool)

(declare-fun tp!785120 () Bool)

(declare-fun tp!785122 () Bool)

(assert (=> b!2464257 (= e!1562860 (and tp!785120 tp!785122))))

(declare-fun b!2464258 () Bool)

(declare-fun tp!785121 () Bool)

(assert (=> b!2464258 (= e!1562860 tp!785121)))

(declare-fun b!2464256 () Bool)

(assert (=> b!2464256 (= e!1562860 tp_is_empty!11931)))

(declare-fun b!2464259 () Bool)

(declare-fun tp!785118 () Bool)

(declare-fun tp!785119 () Bool)

(assert (=> b!2464259 (= e!1562860 (and tp!785118 tp!785119))))

(assert (=> b!2463163 (= tp!784634 e!1562860)))

(assert (= (and b!2463163 ((_ is ElementMatch!7247) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464256))

(assert (= (and b!2463163 ((_ is Concat!11893) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464257))

(assert (= (and b!2463163 ((_ is Star!7247) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464258))

(assert (= (and b!2463163 ((_ is Union!7247) (regTwo!15006 (regOne!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464259))

(declare-fun b!2464264 () Bool)

(declare-fun e!1562863 () Bool)

(declare-fun tp!785123 () Bool)

(assert (=> b!2464264 (= e!1562863 (and tp_is_empty!11931 tp!785123))))

(assert (=> b!2463226 (= tp!784709 e!1562863)))

(assert (= (and b!2463226 ((_ is Cons!28673) (t!208930 (t!208930 (originalCharacters!5225 t1!67))))) b!2464264))

(declare-fun b!2464266 () Bool)

(declare-fun e!1562864 () Bool)

(declare-fun tp!785126 () Bool)

(declare-fun tp!785128 () Bool)

(assert (=> b!2464266 (= e!1562864 (and tp!785126 tp!785128))))

(declare-fun b!2464267 () Bool)

(declare-fun tp!785127 () Bool)

(assert (=> b!2464267 (= e!1562864 tp!785127)))

(declare-fun b!2464265 () Bool)

(assert (=> b!2464265 (= e!1562864 tp_is_empty!11931)))

(declare-fun b!2464268 () Bool)

(declare-fun tp!785124 () Bool)

(declare-fun tp!785125 () Bool)

(assert (=> b!2464268 (= e!1562864 (and tp!785124 tp!785125))))

(assert (=> b!2463211 (= tp!784691 e!1562864)))

(assert (= (and b!2463211 ((_ is ElementMatch!7247) (regOne!15006 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464265))

(assert (= (and b!2463211 ((_ is Concat!11893) (regOne!15006 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464266))

(assert (= (and b!2463211 ((_ is Star!7247) (regOne!15006 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464267))

(assert (= (and b!2463211 ((_ is Union!7247) (regOne!15006 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464268))

(declare-fun b!2464270 () Bool)

(declare-fun e!1562865 () Bool)

(declare-fun tp!785131 () Bool)

(declare-fun tp!785133 () Bool)

(assert (=> b!2464270 (= e!1562865 (and tp!785131 tp!785133))))

(declare-fun b!2464271 () Bool)

(declare-fun tp!785132 () Bool)

(assert (=> b!2464271 (= e!1562865 tp!785132)))

(declare-fun b!2464269 () Bool)

(assert (=> b!2464269 (= e!1562865 tp_is_empty!11931)))

(declare-fun b!2464272 () Bool)

(declare-fun tp!785129 () Bool)

(declare-fun tp!785130 () Bool)

(assert (=> b!2464272 (= e!1562865 (and tp!785129 tp!785130))))

(assert (=> b!2463211 (= tp!784693 e!1562865)))

(assert (= (and b!2463211 ((_ is ElementMatch!7247) (regTwo!15006 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464269))

(assert (= (and b!2463211 ((_ is Concat!11893) (regTwo!15006 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464270))

(assert (= (and b!2463211 ((_ is Star!7247) (regTwo!15006 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464271))

(assert (= (and b!2463211 ((_ is Union!7247) (regTwo!15006 (regex!4459 (rule!6817 (h!34075 (t!208931 l!6611))))))) b!2464272))

(declare-fun b!2464278 () Bool)

(declare-fun e!1562868 () Bool)

(declare-fun tp!785136 () Bool)

(declare-fun tp!785138 () Bool)

(assert (=> b!2464278 (= e!1562868 (and tp!785136 tp!785138))))

(declare-fun b!2464279 () Bool)

(declare-fun tp!785137 () Bool)

(assert (=> b!2464279 (= e!1562868 tp!785137)))

(declare-fun b!2464277 () Bool)

(assert (=> b!2464277 (= e!1562868 tp_is_empty!11931)))

(declare-fun b!2464280 () Bool)

(declare-fun tp!785134 () Bool)

(declare-fun tp!785135 () Bool)

(assert (=> b!2464280 (= e!1562868 (and tp!785134 tp!785135))))

(assert (=> b!2463187 (= tp!784661 e!1562868)))

(assert (= (and b!2463187 ((_ is ElementMatch!7247) (reg!7576 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464277))

(assert (= (and b!2463187 ((_ is Concat!11893) (reg!7576 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464278))

(assert (= (and b!2463187 ((_ is Star!7247) (reg!7576 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464279))

(assert (= (and b!2463187 ((_ is Union!7247) (reg!7576 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464280))

(declare-fun b!2464284 () Bool)

(declare-fun e!1562871 () Bool)

(declare-fun tp!785141 () Bool)

(declare-fun tp!785143 () Bool)

(assert (=> b!2464284 (= e!1562871 (and tp!785141 tp!785143))))

(declare-fun b!2464285 () Bool)

(declare-fun tp!785142 () Bool)

(assert (=> b!2464285 (= e!1562871 tp!785142)))

(declare-fun b!2464283 () Bool)

(assert (=> b!2464283 (= e!1562871 tp_is_empty!11931)))

(declare-fun b!2464286 () Bool)

(declare-fun tp!785139 () Bool)

(declare-fun tp!785140 () Bool)

(assert (=> b!2464286 (= e!1562871 (and tp!785139 tp!785140))))

(assert (=> b!2463196 (= tp!784668 e!1562871)))

(assert (= (and b!2463196 ((_ is ElementMatch!7247) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464283))

(assert (= (and b!2463196 ((_ is Concat!11893) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464284))

(assert (= (and b!2463196 ((_ is Star!7247) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464285))

(assert (= (and b!2463196 ((_ is Union!7247) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464286))

(declare-fun b!2464288 () Bool)

(declare-fun e!1562872 () Bool)

(declare-fun tp!785146 () Bool)

(declare-fun tp!785148 () Bool)

(assert (=> b!2464288 (= e!1562872 (and tp!785146 tp!785148))))

(declare-fun b!2464289 () Bool)

(declare-fun tp!785147 () Bool)

(assert (=> b!2464289 (= e!1562872 tp!785147)))

(declare-fun b!2464287 () Bool)

(assert (=> b!2464287 (= e!1562872 tp_is_empty!11931)))

(declare-fun b!2464290 () Bool)

(declare-fun tp!785144 () Bool)

(declare-fun tp!785145 () Bool)

(assert (=> b!2464290 (= e!1562872 (and tp!785144 tp!785145))))

(assert (=> b!2463196 (= tp!784669 e!1562872)))

(assert (= (and b!2463196 ((_ is ElementMatch!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464287))

(assert (= (and b!2463196 ((_ is Concat!11893) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464288))

(assert (= (and b!2463196 ((_ is Star!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464289))

(assert (= (and b!2463196 ((_ is Union!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464290))

(declare-fun b!2464293 () Bool)

(declare-fun e!1562875 () Bool)

(assert (=> b!2464293 (= e!1562875 true)))

(declare-fun b!2464292 () Bool)

(declare-fun e!1562874 () Bool)

(assert (=> b!2464292 (= e!1562874 e!1562875)))

(declare-fun b!2464291 () Bool)

(declare-fun e!1562873 () Bool)

(assert (=> b!2464291 (= e!1562873 e!1562874)))

(assert (=> b!2463243 e!1562873))

(assert (= b!2464292 b!2464293))

(assert (= b!2464291 b!2464292))

(assert (= (and b!2463243 ((_ is Cons!28675) (t!208932 (t!208932 rules!4472)))) b!2464291))

(assert (=> b!2464293 (< (dynLambda!12308 order!15523 (toValue!6315 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472)))))) (dynLambda!12309 order!15525 lambda!93169))))

(assert (=> b!2464293 (< (dynLambda!12310 order!15527 (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472)))))) (dynLambda!12309 order!15525 lambda!93169))))

(declare-fun b!2464295 () Bool)

(declare-fun e!1562876 () Bool)

(declare-fun tp!785151 () Bool)

(declare-fun tp!785153 () Bool)

(assert (=> b!2464295 (= e!1562876 (and tp!785151 tp!785153))))

(declare-fun b!2464296 () Bool)

(declare-fun tp!785152 () Bool)

(assert (=> b!2464296 (= e!1562876 tp!785152)))

(declare-fun b!2464294 () Bool)

(assert (=> b!2464294 (= e!1562876 tp_is_empty!11931)))

(declare-fun b!2464297 () Bool)

(declare-fun tp!785149 () Bool)

(declare-fun tp!785150 () Bool)

(assert (=> b!2464297 (= e!1562876 (and tp!785149 tp!785150))))

(assert (=> b!2463233 (= tp!784718 e!1562876)))

(assert (= (and b!2463233 ((_ is ElementMatch!7247) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464294))

(assert (= (and b!2463233 ((_ is Concat!11893) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464295))

(assert (= (and b!2463233 ((_ is Star!7247) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464296))

(assert (= (and b!2463233 ((_ is Union!7247) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464297))

(declare-fun b!2464299 () Bool)

(declare-fun e!1562877 () Bool)

(declare-fun tp!785156 () Bool)

(declare-fun tp!785158 () Bool)

(assert (=> b!2464299 (= e!1562877 (and tp!785156 tp!785158))))

(declare-fun b!2464300 () Bool)

(declare-fun tp!785157 () Bool)

(assert (=> b!2464300 (= e!1562877 tp!785157)))

(declare-fun b!2464298 () Bool)

(assert (=> b!2464298 (= e!1562877 tp_is_empty!11931)))

(declare-fun b!2464301 () Bool)

(declare-fun tp!785154 () Bool)

(declare-fun tp!785155 () Bool)

(assert (=> b!2464301 (= e!1562877 (and tp!785154 tp!785155))))

(assert (=> b!2463179 (= tp!784652 e!1562877)))

(assert (= (and b!2463179 ((_ is ElementMatch!7247) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464298))

(assert (= (and b!2463179 ((_ is Concat!11893) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464299))

(assert (= (and b!2463179 ((_ is Star!7247) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464300))

(assert (= (and b!2463179 ((_ is Union!7247) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464301))

(declare-fun b!2464303 () Bool)

(declare-fun e!1562878 () Bool)

(declare-fun tp!785161 () Bool)

(declare-fun tp!785163 () Bool)

(assert (=> b!2464303 (= e!1562878 (and tp!785161 tp!785163))))

(declare-fun b!2464304 () Bool)

(declare-fun tp!785162 () Bool)

(assert (=> b!2464304 (= e!1562878 tp!785162)))

(declare-fun b!2464302 () Bool)

(assert (=> b!2464302 (= e!1562878 tp_is_empty!11931)))

(declare-fun b!2464305 () Bool)

(declare-fun tp!785159 () Bool)

(declare-fun tp!785160 () Bool)

(assert (=> b!2464305 (= e!1562878 (and tp!785159 tp!785160))))

(assert (=> b!2463179 (= tp!784654 e!1562878)))

(assert (= (and b!2463179 ((_ is ElementMatch!7247) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464302))

(assert (= (and b!2463179 ((_ is Concat!11893) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464303))

(assert (= (and b!2463179 ((_ is Star!7247) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464304))

(assert (= (and b!2463179 ((_ is Union!7247) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 t2!67)))))) b!2464305))

(declare-fun b!2464307 () Bool)

(declare-fun e!1562879 () Bool)

(declare-fun tp!785166 () Bool)

(declare-fun tp!785168 () Bool)

(assert (=> b!2464307 (= e!1562879 (and tp!785166 tp!785168))))

(declare-fun b!2464308 () Bool)

(declare-fun tp!785167 () Bool)

(assert (=> b!2464308 (= e!1562879 tp!785167)))

(declare-fun b!2464306 () Bool)

(assert (=> b!2464306 (= e!1562879 tp_is_empty!11931)))

(declare-fun b!2464309 () Bool)

(declare-fun tp!785164 () Bool)

(declare-fun tp!785165 () Bool)

(assert (=> b!2464309 (= e!1562879 (and tp!785164 tp!785165))))

(assert (=> b!2463242 (= tp!784725 e!1562879)))

(assert (= (and b!2463242 ((_ is ElementMatch!7247) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464306))

(assert (= (and b!2463242 ((_ is Concat!11893) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464307))

(assert (= (and b!2463242 ((_ is Star!7247) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464308))

(assert (= (and b!2463242 ((_ is Union!7247) (regOne!15007 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464309))

(declare-fun b!2464311 () Bool)

(declare-fun e!1562880 () Bool)

(declare-fun tp!785171 () Bool)

(declare-fun tp!785173 () Bool)

(assert (=> b!2464311 (= e!1562880 (and tp!785171 tp!785173))))

(declare-fun b!2464312 () Bool)

(declare-fun tp!785172 () Bool)

(assert (=> b!2464312 (= e!1562880 tp!785172)))

(declare-fun b!2464310 () Bool)

(assert (=> b!2464310 (= e!1562880 tp_is_empty!11931)))

(declare-fun b!2464313 () Bool)

(declare-fun tp!785169 () Bool)

(declare-fun tp!785170 () Bool)

(assert (=> b!2464313 (= e!1562880 (and tp!785169 tp!785170))))

(assert (=> b!2463242 (= tp!784726 e!1562880)))

(assert (= (and b!2463242 ((_ is ElementMatch!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464310))

(assert (= (and b!2463242 ((_ is Concat!11893) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464311))

(assert (= (and b!2463242 ((_ is Star!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464312))

(assert (= (and b!2463242 ((_ is Union!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464313))

(declare-fun b!2464315 () Bool)

(declare-fun e!1562881 () Bool)

(declare-fun tp!785176 () Bool)

(declare-fun tp!785178 () Bool)

(assert (=> b!2464315 (= e!1562881 (and tp!785176 tp!785178))))

(declare-fun b!2464316 () Bool)

(declare-fun tp!785177 () Bool)

(assert (=> b!2464316 (= e!1562881 tp!785177)))

(declare-fun b!2464314 () Bool)

(assert (=> b!2464314 (= e!1562881 tp_is_empty!11931)))

(declare-fun b!2464317 () Bool)

(declare-fun tp!785174 () Bool)

(declare-fun tp!785175 () Bool)

(assert (=> b!2464317 (= e!1562881 (and tp!785174 tp!785175))))

(assert (=> b!2463194 (= tp!784670 e!1562881)))

(assert (= (and b!2463194 ((_ is ElementMatch!7247) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464314))

(assert (= (and b!2463194 ((_ is Concat!11893) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464315))

(assert (= (and b!2463194 ((_ is Star!7247) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464316))

(assert (= (and b!2463194 ((_ is Union!7247) (regOne!15006 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464317))

(declare-fun b!2464319 () Bool)

(declare-fun e!1562882 () Bool)

(declare-fun tp!785181 () Bool)

(declare-fun tp!785183 () Bool)

(assert (=> b!2464319 (= e!1562882 (and tp!785181 tp!785183))))

(declare-fun b!2464320 () Bool)

(declare-fun tp!785182 () Bool)

(assert (=> b!2464320 (= e!1562882 tp!785182)))

(declare-fun b!2464318 () Bool)

(assert (=> b!2464318 (= e!1562882 tp_is_empty!11931)))

(declare-fun b!2464321 () Bool)

(declare-fun tp!785179 () Bool)

(declare-fun tp!785180 () Bool)

(assert (=> b!2464321 (= e!1562882 (and tp!785179 tp!785180))))

(assert (=> b!2463194 (= tp!784672 e!1562882)))

(assert (= (and b!2463194 ((_ is ElementMatch!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464318))

(assert (= (and b!2463194 ((_ is Concat!11893) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464319))

(assert (= (and b!2463194 ((_ is Star!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464320))

(assert (= (and b!2463194 ((_ is Union!7247) (regTwo!15006 (regTwo!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464321))

(declare-fun b!2464323 () Bool)

(declare-fun e!1562883 () Bool)

(declare-fun tp!785186 () Bool)

(declare-fun tp!785188 () Bool)

(assert (=> b!2464323 (= e!1562883 (and tp!785186 tp!785188))))

(declare-fun b!2464324 () Bool)

(declare-fun tp!785187 () Bool)

(assert (=> b!2464324 (= e!1562883 tp!785187)))

(declare-fun b!2464322 () Bool)

(assert (=> b!2464322 (= e!1562883 tp_is_empty!11931)))

(declare-fun b!2464325 () Bool)

(declare-fun tp!785184 () Bool)

(declare-fun tp!785185 () Bool)

(assert (=> b!2464325 (= e!1562883 (and tp!785184 tp!785185))))

(assert (=> b!2463220 (= tp!784703 e!1562883)))

(assert (= (and b!2463220 ((_ is ElementMatch!7247) (regex!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) b!2464322))

(assert (= (and b!2463220 ((_ is Concat!11893) (regex!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) b!2464323))

(assert (= (and b!2463220 ((_ is Star!7247) (regex!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) b!2464324))

(assert (= (and b!2463220 ((_ is Union!7247) (regex!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) b!2464325))

(declare-fun b!2464327 () Bool)

(declare-fun e!1562884 () Bool)

(declare-fun tp!785191 () Bool)

(declare-fun tp!785193 () Bool)

(assert (=> b!2464327 (= e!1562884 (and tp!785191 tp!785193))))

(declare-fun b!2464328 () Bool)

(declare-fun tp!785192 () Bool)

(assert (=> b!2464328 (= e!1562884 tp!785192)))

(declare-fun b!2464326 () Bool)

(assert (=> b!2464326 (= e!1562884 tp_is_empty!11931)))

(declare-fun b!2464329 () Bool)

(declare-fun tp!785189 () Bool)

(declare-fun tp!785190 () Bool)

(assert (=> b!2464329 (= e!1562884 (and tp!785189 tp!785190))))

(assert (=> b!2463144 (= tp!784613 e!1562884)))

(assert (= (and b!2463144 ((_ is ElementMatch!7247) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464326))

(assert (= (and b!2463144 ((_ is Concat!11893) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464327))

(assert (= (and b!2463144 ((_ is Star!7247) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464328))

(assert (= (and b!2463144 ((_ is Union!7247) (reg!7576 (regOne!15006 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464329))

(declare-fun b!2464331 () Bool)

(declare-fun e!1562887 () Bool)

(declare-fun tp!785196 () Bool)

(declare-fun tp!785198 () Bool)

(assert (=> b!2464331 (= e!1562887 (and tp!785196 tp!785198))))

(declare-fun b!2464332 () Bool)

(declare-fun tp!785197 () Bool)

(assert (=> b!2464332 (= e!1562887 tp!785197)))

(declare-fun b!2464330 () Bool)

(assert (=> b!2464330 (= e!1562887 tp_is_empty!11931)))

(declare-fun b!2464334 () Bool)

(declare-fun tp!785194 () Bool)

(declare-fun tp!785195 () Bool)

(assert (=> b!2464334 (= e!1562887 (and tp!785194 tp!785195))))

(assert (=> b!2463253 (= tp!784735 e!1562887)))

(assert (= (and b!2463253 ((_ is ElementMatch!7247) (regOne!15007 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464330))

(assert (= (and b!2463253 ((_ is Concat!11893) (regOne!15007 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464331))

(assert (= (and b!2463253 ((_ is Star!7247) (regOne!15007 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464332))

(assert (= (and b!2463253 ((_ is Union!7247) (regOne!15007 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464334))

(declare-fun b!2464340 () Bool)

(declare-fun e!1562889 () Bool)

(declare-fun tp!785201 () Bool)

(declare-fun tp!785203 () Bool)

(assert (=> b!2464340 (= e!1562889 (and tp!785201 tp!785203))))

(declare-fun b!2464341 () Bool)

(declare-fun tp!785202 () Bool)

(assert (=> b!2464341 (= e!1562889 tp!785202)))

(declare-fun b!2464339 () Bool)

(assert (=> b!2464339 (= e!1562889 tp_is_empty!11931)))

(declare-fun b!2464342 () Bool)

(declare-fun tp!785199 () Bool)

(declare-fun tp!785200 () Bool)

(assert (=> b!2464342 (= e!1562889 (and tp!785199 tp!785200))))

(assert (=> b!2463253 (= tp!784736 e!1562889)))

(assert (= (and b!2463253 ((_ is ElementMatch!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464339))

(assert (= (and b!2463253 ((_ is Concat!11893) (regTwo!15007 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464340))

(assert (= (and b!2463253 ((_ is Star!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464341))

(assert (= (and b!2463253 ((_ is Union!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464342))

(declare-fun b!2464344 () Bool)

(declare-fun e!1562890 () Bool)

(declare-fun tp!785206 () Bool)

(declare-fun tp!785208 () Bool)

(assert (=> b!2464344 (= e!1562890 (and tp!785206 tp!785208))))

(declare-fun b!2464345 () Bool)

(declare-fun tp!785207 () Bool)

(assert (=> b!2464345 (= e!1562890 tp!785207)))

(declare-fun b!2464343 () Bool)

(assert (=> b!2464343 (= e!1562890 tp_is_empty!11931)))

(declare-fun b!2464346 () Bool)

(declare-fun tp!785204 () Bool)

(declare-fun tp!785205 () Bool)

(assert (=> b!2464346 (= e!1562890 (and tp!785204 tp!785205))))

(assert (=> b!2463236 (= tp!784722 e!1562890)))

(assert (= (and b!2463236 ((_ is ElementMatch!7247) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464343))

(assert (= (and b!2463236 ((_ is Concat!11893) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464344))

(assert (= (and b!2463236 ((_ is Star!7247) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464345))

(assert (= (and b!2463236 ((_ is Union!7247) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464346))

(declare-fun b!2464348 () Bool)

(declare-fun e!1562891 () Bool)

(declare-fun tp!785211 () Bool)

(declare-fun tp!785213 () Bool)

(assert (=> b!2464348 (= e!1562891 (and tp!785211 tp!785213))))

(declare-fun b!2464349 () Bool)

(declare-fun tp!785212 () Bool)

(assert (=> b!2464349 (= e!1562891 tp!785212)))

(declare-fun b!2464347 () Bool)

(assert (=> b!2464347 (= e!1562891 tp_is_empty!11931)))

(declare-fun b!2464350 () Bool)

(declare-fun tp!785209 () Bool)

(declare-fun tp!785210 () Bool)

(assert (=> b!2464350 (= e!1562891 (and tp!785209 tp!785210))))

(assert (=> b!2463236 (= tp!784724 e!1562891)))

(assert (= (and b!2463236 ((_ is ElementMatch!7247) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464347))

(assert (= (and b!2463236 ((_ is Concat!11893) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464348))

(assert (= (and b!2463236 ((_ is Star!7247) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464349))

(assert (= (and b!2463236 ((_ is Union!7247) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464350))

(declare-fun b!2464352 () Bool)

(declare-fun e!1562892 () Bool)

(declare-fun tp!785216 () Bool)

(declare-fun tp!785218 () Bool)

(assert (=> b!2464352 (= e!1562892 (and tp!785216 tp!785218))))

(declare-fun b!2464353 () Bool)

(declare-fun tp!785217 () Bool)

(assert (=> b!2464353 (= e!1562892 tp!785217)))

(declare-fun b!2464351 () Bool)

(assert (=> b!2464351 (= e!1562892 tp_is_empty!11931)))

(declare-fun b!2464354 () Bool)

(declare-fun tp!785214 () Bool)

(declare-fun tp!785215 () Bool)

(assert (=> b!2464354 (= e!1562892 (and tp!785214 tp!785215))))

(assert (=> b!2463188 (= tp!784658 e!1562892)))

(assert (= (and b!2463188 ((_ is ElementMatch!7247) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464351))

(assert (= (and b!2463188 ((_ is Concat!11893) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464352))

(assert (= (and b!2463188 ((_ is Star!7247) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464353))

(assert (= (and b!2463188 ((_ is Union!7247) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464354))

(declare-fun b!2464356 () Bool)

(declare-fun e!1562893 () Bool)

(declare-fun tp!785221 () Bool)

(declare-fun tp!785223 () Bool)

(assert (=> b!2464356 (= e!1562893 (and tp!785221 tp!785223))))

(declare-fun b!2464357 () Bool)

(declare-fun tp!785222 () Bool)

(assert (=> b!2464357 (= e!1562893 tp!785222)))

(declare-fun b!2464355 () Bool)

(assert (=> b!2464355 (= e!1562893 tp_is_empty!11931)))

(declare-fun b!2464358 () Bool)

(declare-fun tp!785219 () Bool)

(declare-fun tp!785220 () Bool)

(assert (=> b!2464358 (= e!1562893 (and tp!785219 tp!785220))))

(assert (=> b!2463188 (= tp!784659 e!1562893)))

(assert (= (and b!2463188 ((_ is ElementMatch!7247) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464355))

(assert (= (and b!2463188 ((_ is Concat!11893) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464356))

(assert (= (and b!2463188 ((_ is Star!7247) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464357))

(assert (= (and b!2463188 ((_ is Union!7247) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464358))

(declare-fun b!2464362 () Bool)

(declare-fun b_free!70793 () Bool)

(declare-fun b_next!71497 () Bool)

(assert (=> b!2464362 (= b_free!70793 (not b_next!71497))))

(declare-fun tp!785227 () Bool)

(declare-fun b_and!186153 () Bool)

(assert (=> b!2464362 (= tp!785227 b_and!186153)))

(declare-fun b_free!70795 () Bool)

(declare-fun b_next!71499 () Bool)

(assert (=> b!2464362 (= b_free!70795 (not b_next!71499))))

(declare-fun tb!139213 () Bool)

(declare-fun t!209171 () Bool)

(assert (=> (and b!2464362 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67)))) t!209171) tb!139213))

(declare-fun result!171820 () Bool)

(assert (= result!171820 result!171656))

(assert (=> b!2462734 t!209171))

(declare-fun tb!139215 () Bool)

(declare-fun t!209173 () Bool)

(assert (=> (and b!2464362 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67)))) t!209173) tb!139215))

(declare-fun result!171822 () Bool)

(assert (= result!171822 result!171648))

(assert (=> b!2462731 t!209173))

(declare-fun t!209175 () Bool)

(declare-fun tb!139217 () Bool)

(assert (=> (and b!2464362 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611))))) t!209175) tb!139217))

(declare-fun result!171824 () Bool)

(assert (= result!171824 result!171602))

(assert (=> b!2462500 t!209175))

(declare-fun t!209177 () Bool)

(declare-fun tb!139219 () Bool)

(assert (=> (and b!2464362 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611)))))) t!209177) tb!139219))

(declare-fun result!171826 () Bool)

(assert (= result!171826 result!171696))

(assert (=> b!2463126 t!209177))

(declare-fun t!209179 () Bool)

(declare-fun tb!139221 () Bool)

(assert (=> (and b!2464362 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611))))))) t!209179) tb!139221))

(declare-fun result!171828 () Bool)

(assert (= result!171828 result!171744))

(assert (=> b!2463480 t!209179))

(declare-fun t!209181 () Bool)

(declare-fun tb!139223 () Bool)

(assert (=> (and b!2464362 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (Cons!28674 (h!34075 (t!208931 l!6611)) (t!208931 (t!208931 l!6611))))))))) t!209181) tb!139223))

(declare-fun result!171830 () Bool)

(assert (= result!171830 result!171760))

(assert (=> d!709403 t!209181))

(assert (=> d!709087 t!209177))

(assert (=> d!709317 t!209175))

(declare-fun b_and!186155 () Bool)

(declare-fun tp!785226 () Bool)

(assert (=> b!2464362 (= tp!785226 (and (=> t!209179 result!171828) (=> t!209171 result!171820) (=> t!209173 result!171822) (=> t!209175 result!171824) (=> t!209177 result!171826) (=> t!209181 result!171830) b_and!186155))))

(declare-fun e!1562899 () Bool)

(assert (=> b!2463218 (= tp!784699 e!1562899)))

(declare-fun e!1562896 () Bool)

(assert (=> b!2464362 (= e!1562896 (and tp!785227 tp!785226))))

(declare-fun e!1562895 () Bool)

(declare-fun b!2464361 () Bool)

(declare-fun tp!785228 () Bool)

(assert (=> b!2464361 (= e!1562895 (and tp!785228 (inv!38755 (tag!4949 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (inv!38758 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) e!1562896))))

(declare-fun b!2464360 () Bool)

(declare-fun e!1562897 () Bool)

(declare-fun tp!785225 () Bool)

(assert (=> b!2464360 (= e!1562897 (and (inv!21 (value!142487 (h!34075 (t!208931 (t!208931 (t!208931 l!6611)))))) e!1562895 tp!785225))))

(declare-fun tp!785224 () Bool)

(declare-fun b!2464359 () Bool)

(assert (=> b!2464359 (= e!1562899 (and (inv!38759 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))) e!1562897 tp!785224))))

(assert (= b!2464361 b!2464362))

(assert (= b!2464360 b!2464361))

(assert (= b!2464359 b!2464360))

(assert (= (and b!2463218 ((_ is Cons!28674) (t!208931 (t!208931 (t!208931 l!6611))))) b!2464359))

(declare-fun m!2834423 () Bool)

(assert (=> b!2464361 m!2834423))

(declare-fun m!2834425 () Bool)

(assert (=> b!2464361 m!2834425))

(declare-fun m!2834427 () Bool)

(assert (=> b!2464360 m!2834427))

(declare-fun m!2834429 () Bool)

(assert (=> b!2464359 m!2834429))

(declare-fun b!2464369 () Bool)

(declare-fun e!1562905 () Bool)

(declare-fun tp!785231 () Bool)

(declare-fun tp!785233 () Bool)

(assert (=> b!2464369 (= e!1562905 (and tp!785231 tp!785233))))

(declare-fun b!2464370 () Bool)

(declare-fun tp!785232 () Bool)

(assert (=> b!2464370 (= e!1562905 tp!785232)))

(declare-fun b!2464368 () Bool)

(assert (=> b!2464368 (= e!1562905 tp_is_empty!11931)))

(declare-fun b!2464371 () Bool)

(declare-fun tp!785229 () Bool)

(declare-fun tp!785230 () Bool)

(assert (=> b!2464371 (= e!1562905 (and tp!785229 tp!785230))))

(assert (=> b!2463205 (= tp!784679 e!1562905)))

(assert (= (and b!2463205 ((_ is ElementMatch!7247) (regOne!15007 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464368))

(assert (= (and b!2463205 ((_ is Concat!11893) (regOne!15007 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464369))

(assert (= (and b!2463205 ((_ is Star!7247) (regOne!15007 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464370))

(assert (= (and b!2463205 ((_ is Union!7247) (regOne!15007 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464371))

(declare-fun b!2464373 () Bool)

(declare-fun e!1562906 () Bool)

(declare-fun tp!785236 () Bool)

(declare-fun tp!785238 () Bool)

(assert (=> b!2464373 (= e!1562906 (and tp!785236 tp!785238))))

(declare-fun b!2464374 () Bool)

(declare-fun tp!785237 () Bool)

(assert (=> b!2464374 (= e!1562906 tp!785237)))

(declare-fun b!2464372 () Bool)

(assert (=> b!2464372 (= e!1562906 tp_is_empty!11931)))

(declare-fun b!2464375 () Bool)

(declare-fun tp!785234 () Bool)

(declare-fun tp!785235 () Bool)

(assert (=> b!2464375 (= e!1562906 (and tp!785234 tp!785235))))

(assert (=> b!2463205 (= tp!784680 e!1562906)))

(assert (= (and b!2463205 ((_ is ElementMatch!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464372))

(assert (= (and b!2463205 ((_ is Concat!11893) (regTwo!15007 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464373))

(assert (= (and b!2463205 ((_ is Star!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464374))

(assert (= (and b!2463205 ((_ is Union!7247) (regTwo!15007 (regTwo!15006 (regex!4459 (h!34076 rules!4472)))))) b!2464375))

(declare-fun b!2464381 () Bool)

(declare-fun e!1562909 () Bool)

(declare-fun tp!785241 () Bool)

(declare-fun tp!785243 () Bool)

(assert (=> b!2464381 (= e!1562909 (and tp!785241 tp!785243))))

(declare-fun b!2464382 () Bool)

(declare-fun tp!785242 () Bool)

(assert (=> b!2464382 (= e!1562909 tp!785242)))

(declare-fun b!2464380 () Bool)

(assert (=> b!2464380 (= e!1562909 tp_is_empty!11931)))

(declare-fun b!2464383 () Bool)

(declare-fun tp!785239 () Bool)

(declare-fun tp!785240 () Bool)

(assert (=> b!2464383 (= e!1562909 (and tp!785239 tp!785240))))

(assert (=> b!2463251 (= tp!784737 e!1562909)))

(assert (= (and b!2463251 ((_ is ElementMatch!7247) (regOne!15006 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464380))

(assert (= (and b!2463251 ((_ is Concat!11893) (regOne!15006 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464381))

(assert (= (and b!2463251 ((_ is Star!7247) (regOne!15006 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464382))

(assert (= (and b!2463251 ((_ is Union!7247) (regOne!15006 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464383))

(declare-fun b!2464385 () Bool)

(declare-fun e!1562910 () Bool)

(declare-fun tp!785246 () Bool)

(declare-fun tp!785248 () Bool)

(assert (=> b!2464385 (= e!1562910 (and tp!785246 tp!785248))))

(declare-fun b!2464386 () Bool)

(declare-fun tp!785247 () Bool)

(assert (=> b!2464386 (= e!1562910 tp!785247)))

(declare-fun b!2464384 () Bool)

(assert (=> b!2464384 (= e!1562910 tp_is_empty!11931)))

(declare-fun b!2464387 () Bool)

(declare-fun tp!785244 () Bool)

(declare-fun tp!785245 () Bool)

(assert (=> b!2464387 (= e!1562910 (and tp!785244 tp!785245))))

(assert (=> b!2463251 (= tp!784739 e!1562910)))

(assert (= (and b!2463251 ((_ is ElementMatch!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464384))

(assert (= (and b!2463251 ((_ is Concat!11893) (regTwo!15006 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464385))

(assert (= (and b!2463251 ((_ is Star!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464386))

(assert (= (and b!2463251 ((_ is Union!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (h!34076 rules!4472)))))) b!2464387))

(declare-fun b!2464389 () Bool)

(declare-fun e!1562911 () Bool)

(declare-fun tp!785251 () Bool)

(declare-fun tp!785253 () Bool)

(assert (=> b!2464389 (= e!1562911 (and tp!785251 tp!785253))))

(declare-fun b!2464390 () Bool)

(declare-fun tp!785252 () Bool)

(assert (=> b!2464390 (= e!1562911 tp!785252)))

(declare-fun b!2464388 () Bool)

(assert (=> b!2464388 (= e!1562911 tp_is_empty!11931)))

(declare-fun b!2464391 () Bool)

(declare-fun tp!785249 () Bool)

(declare-fun tp!785250 () Bool)

(assert (=> b!2464391 (= e!1562911 (and tp!785249 tp!785250))))

(assert (=> b!2463190 (= tp!784665 e!1562911)))

(assert (= (and b!2463190 ((_ is ElementMatch!7247) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464388))

(assert (= (and b!2463190 ((_ is Concat!11893) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464389))

(assert (= (and b!2463190 ((_ is Star!7247) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464390))

(assert (= (and b!2463190 ((_ is Union!7247) (regOne!15006 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464391))

(declare-fun b!2464393 () Bool)

(declare-fun e!1562912 () Bool)

(declare-fun tp!785256 () Bool)

(declare-fun tp!785258 () Bool)

(assert (=> b!2464393 (= e!1562912 (and tp!785256 tp!785258))))

(declare-fun b!2464394 () Bool)

(declare-fun tp!785257 () Bool)

(assert (=> b!2464394 (= e!1562912 tp!785257)))

(declare-fun b!2464392 () Bool)

(assert (=> b!2464392 (= e!1562912 tp_is_empty!11931)))

(declare-fun b!2464395 () Bool)

(declare-fun tp!785254 () Bool)

(declare-fun tp!785255 () Bool)

(assert (=> b!2464395 (= e!1562912 (and tp!785254 tp!785255))))

(assert (=> b!2463190 (= tp!784667 e!1562912)))

(assert (= (and b!2463190 ((_ is ElementMatch!7247) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464392))

(assert (= (and b!2463190 ((_ is Concat!11893) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464393))

(assert (= (and b!2463190 ((_ is Star!7247) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464394))

(assert (= (and b!2463190 ((_ is Union!7247) (regTwo!15006 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464395))

(declare-fun b!2464399 () Bool)

(declare-fun e!1562914 () Bool)

(declare-fun tp!785261 () Bool)

(declare-fun tp!785263 () Bool)

(assert (=> b!2464399 (= e!1562914 (and tp!785261 tp!785263))))

(declare-fun b!2464400 () Bool)

(declare-fun tp!785262 () Bool)

(assert (=> b!2464400 (= e!1562914 tp!785262)))

(declare-fun b!2464398 () Bool)

(assert (=> b!2464398 (= e!1562914 tp_is_empty!11931)))

(declare-fun b!2464401 () Bool)

(declare-fun tp!785259 () Bool)

(declare-fun tp!785260 () Bool)

(assert (=> b!2464401 (= e!1562914 (and tp!785259 tp!785260))))

(assert (=> b!2463168 (= tp!784638 e!1562914)))

(assert (= (and b!2463168 ((_ is ElementMatch!7247) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464398))

(assert (= (and b!2463168 ((_ is Concat!11893) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464399))

(assert (= (and b!2463168 ((_ is Star!7247) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464400))

(assert (= (and b!2463168 ((_ is Union!7247) (reg!7576 (regTwo!15007 (regex!4459 (rule!6817 t2!67)))))) b!2464401))

(declare-fun b!2464403 () Bool)

(declare-fun e!1562915 () Bool)

(declare-fun tp!785266 () Bool)

(declare-fun tp!785268 () Bool)

(assert (=> b!2464403 (= e!1562915 (and tp!785266 tp!785268))))

(declare-fun b!2464404 () Bool)

(declare-fun tp!785267 () Bool)

(assert (=> b!2464404 (= e!1562915 tp!785267)))

(declare-fun b!2464402 () Bool)

(assert (=> b!2464402 (= e!1562915 tp_is_empty!11931)))

(declare-fun b!2464405 () Bool)

(declare-fun tp!785264 () Bool)

(declare-fun tp!785265 () Bool)

(assert (=> b!2464405 (= e!1562915 (and tp!785264 tp!785265))))

(assert (=> b!2463216 (= tp!784697 e!1562915)))

(assert (= (and b!2463216 ((_ is ElementMatch!7247) (reg!7576 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464402))

(assert (= (and b!2463216 ((_ is Concat!11893) (reg!7576 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464403))

(assert (= (and b!2463216 ((_ is Star!7247) (reg!7576 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464404))

(assert (= (and b!2463216 ((_ is Union!7247) (reg!7576 (reg!7576 (regex!4459 (h!34076 rules!4472)))))) b!2464405))

(declare-fun b!2464407 () Bool)

(declare-fun e!1562916 () Bool)

(declare-fun tp!785271 () Bool)

(declare-fun tp!785273 () Bool)

(assert (=> b!2464407 (= e!1562916 (and tp!785271 tp!785273))))

(declare-fun b!2464408 () Bool)

(declare-fun tp!785272 () Bool)

(assert (=> b!2464408 (= e!1562916 tp!785272)))

(declare-fun b!2464406 () Bool)

(assert (=> b!2464406 (= e!1562916 tp_is_empty!11931)))

(declare-fun b!2464409 () Bool)

(declare-fun tp!785269 () Bool)

(declare-fun tp!785270 () Bool)

(assert (=> b!2464409 (= e!1562916 (and tp!785269 tp!785270))))

(assert (=> b!2463177 (= tp!784645 e!1562916)))

(assert (= (and b!2463177 ((_ is ElementMatch!7247) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464406))

(assert (= (and b!2463177 ((_ is Concat!11893) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464407))

(assert (= (and b!2463177 ((_ is Star!7247) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464408))

(assert (= (and b!2463177 ((_ is Union!7247) (regOne!15007 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464409))

(declare-fun b!2464411 () Bool)

(declare-fun e!1562917 () Bool)

(declare-fun tp!785276 () Bool)

(declare-fun tp!785278 () Bool)

(assert (=> b!2464411 (= e!1562917 (and tp!785276 tp!785278))))

(declare-fun b!2464412 () Bool)

(declare-fun tp!785277 () Bool)

(assert (=> b!2464412 (= e!1562917 tp!785277)))

(declare-fun b!2464410 () Bool)

(assert (=> b!2464410 (= e!1562917 tp_is_empty!11931)))

(declare-fun b!2464413 () Bool)

(declare-fun tp!785274 () Bool)

(declare-fun tp!785275 () Bool)

(assert (=> b!2464413 (= e!1562917 (and tp!785274 tp!785275))))

(assert (=> b!2463177 (= tp!784646 e!1562917)))

(assert (= (and b!2463177 ((_ is ElementMatch!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464410))

(assert (= (and b!2463177 ((_ is Concat!11893) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464411))

(assert (= (and b!2463177 ((_ is Star!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464412))

(assert (= (and b!2463177 ((_ is Union!7247) (regTwo!15007 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464413))

(declare-fun b!2464415 () Bool)

(declare-fun e!1562918 () Bool)

(declare-fun tp!785281 () Bool)

(declare-fun tp!785283 () Bool)

(assert (=> b!2464415 (= e!1562918 (and tp!785281 tp!785283))))

(declare-fun b!2464416 () Bool)

(declare-fun tp!785282 () Bool)

(assert (=> b!2464416 (= e!1562918 tp!785282)))

(declare-fun b!2464414 () Bool)

(assert (=> b!2464414 (= e!1562918 tp_is_empty!11931)))

(declare-fun b!2464417 () Bool)

(declare-fun tp!785279 () Bool)

(declare-fun tp!785280 () Bool)

(assert (=> b!2464417 (= e!1562918 (and tp!785279 tp!785280))))

(assert (=> b!2463207 (= tp!784686 e!1562918)))

(assert (= (and b!2463207 ((_ is ElementMatch!7247) (regOne!15006 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464414))

(assert (= (and b!2463207 ((_ is Concat!11893) (regOne!15006 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464415))

(assert (= (and b!2463207 ((_ is Star!7247) (regOne!15006 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464416))

(assert (= (and b!2463207 ((_ is Union!7247) (regOne!15006 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464417))

(declare-fun b!2464422 () Bool)

(declare-fun e!1562921 () Bool)

(declare-fun tp!785286 () Bool)

(declare-fun tp!785288 () Bool)

(assert (=> b!2464422 (= e!1562921 (and tp!785286 tp!785288))))

(declare-fun b!2464423 () Bool)

(declare-fun tp!785287 () Bool)

(assert (=> b!2464423 (= e!1562921 tp!785287)))

(declare-fun b!2464421 () Bool)

(assert (=> b!2464421 (= e!1562921 tp_is_empty!11931)))

(declare-fun b!2464424 () Bool)

(declare-fun tp!785284 () Bool)

(declare-fun tp!785285 () Bool)

(assert (=> b!2464424 (= e!1562921 (and tp!785284 tp!785285))))

(assert (=> b!2463207 (= tp!784688 e!1562921)))

(assert (= (and b!2463207 ((_ is ElementMatch!7247) (regTwo!15006 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464421))

(assert (= (and b!2463207 ((_ is Concat!11893) (regTwo!15006 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464422))

(assert (= (and b!2463207 ((_ is Star!7247) (regTwo!15006 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464423))

(assert (= (and b!2463207 ((_ is Union!7247) (regTwo!15006 (regex!4459 (h!34076 (t!208932 rules!4472)))))) b!2464424))

(declare-fun b!2464426 () Bool)

(declare-fun e!1562922 () Bool)

(declare-fun tp!785291 () Bool)

(declare-fun tp!785293 () Bool)

(assert (=> b!2464426 (= e!1562922 (and tp!785291 tp!785293))))

(declare-fun b!2464427 () Bool)

(declare-fun tp!785292 () Bool)

(assert (=> b!2464427 (= e!1562922 tp!785292)))

(declare-fun b!2464425 () Bool)

(assert (=> b!2464425 (= e!1562922 tp_is_empty!11931)))

(declare-fun b!2464428 () Bool)

(declare-fun tp!785289 () Bool)

(declare-fun tp!785290 () Bool)

(assert (=> b!2464428 (= e!1562922 (and tp!785289 tp!785290))))

(assert (=> b!2463192 (= tp!784663 e!1562922)))

(assert (= (and b!2463192 ((_ is ElementMatch!7247) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464425))

(assert (= (and b!2463192 ((_ is Concat!11893) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464426))

(assert (= (and b!2463192 ((_ is Star!7247) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464427))

(assert (= (and b!2463192 ((_ is Union!7247) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464428))

(declare-fun b!2464430 () Bool)

(declare-fun e!1562923 () Bool)

(declare-fun tp!785296 () Bool)

(declare-fun tp!785298 () Bool)

(assert (=> b!2464430 (= e!1562923 (and tp!785296 tp!785298))))

(declare-fun b!2464431 () Bool)

(declare-fun tp!785297 () Bool)

(assert (=> b!2464431 (= e!1562923 tp!785297)))

(declare-fun b!2464429 () Bool)

(assert (=> b!2464429 (= e!1562923 tp_is_empty!11931)))

(declare-fun b!2464432 () Bool)

(declare-fun tp!785294 () Bool)

(declare-fun tp!785295 () Bool)

(assert (=> b!2464432 (= e!1562923 (and tp!785294 tp!785295))))

(assert (=> b!2463192 (= tp!784664 e!1562923)))

(assert (= (and b!2463192 ((_ is ElementMatch!7247) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464429))

(assert (= (and b!2463192 ((_ is Concat!11893) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464430))

(assert (= (and b!2463192 ((_ is Star!7247) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464431))

(assert (= (and b!2463192 ((_ is Union!7247) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 t2!67)))))) b!2464432))

(declare-fun tp!785301 () Bool)

(declare-fun b!2464433 () Bool)

(declare-fun tp!785299 () Bool)

(declare-fun e!1562924 () Bool)

(assert (=> b!2464433 (= e!1562924 (and (inv!38762 (left!22021 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) tp!785299 (inv!38762 (right!22351 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) tp!785301))))

(declare-fun b!2464435 () Bool)

(declare-fun e!1562925 () Bool)

(declare-fun tp!785300 () Bool)

(assert (=> b!2464435 (= e!1562925 tp!785300)))

(declare-fun b!2464434 () Bool)

(assert (=> b!2464434 (= e!1562924 (and (inv!38768 (xs!12145 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) e!1562925))))

(assert (=> b!2463254 (= tp!784740 (and (inv!38762 (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) e!1562924))))

(assert (= (and b!2463254 ((_ is Node!9165) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) b!2464433))

(assert (= b!2464434 b!2464435))

(assert (= (and b!2463254 ((_ is Leaf!13702) (left!22021 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) b!2464434))

(declare-fun m!2834461 () Bool)

(assert (=> b!2464433 m!2834461))

(declare-fun m!2834465 () Bool)

(assert (=> b!2464433 m!2834465))

(declare-fun m!2834469 () Bool)

(assert (=> b!2464434 m!2834469))

(assert (=> b!2463254 m!2832505))

(declare-fun tp!785304 () Bool)

(declare-fun tp!785302 () Bool)

(declare-fun b!2464436 () Bool)

(declare-fun e!1562926 () Bool)

(assert (=> b!2464436 (= e!1562926 (and (inv!38762 (left!22021 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) tp!785302 (inv!38762 (right!22351 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) tp!785304))))

(declare-fun b!2464438 () Bool)

(declare-fun e!1562927 () Bool)

(declare-fun tp!785303 () Bool)

(assert (=> b!2464438 (= e!1562927 tp!785303)))

(declare-fun b!2464437 () Bool)

(assert (=> b!2464437 (= e!1562926 (and (inv!38768 (xs!12145 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) e!1562927))))

(assert (=> b!2463254 (= tp!784742 (and (inv!38762 (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67))))) e!1562926))))

(assert (= (and b!2463254 ((_ is Node!9165) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) b!2464436))

(assert (= b!2464437 b!2464438))

(assert (= (and b!2463254 ((_ is Leaf!13702) (right!22351 (c!392914 (dynLambda!12307 (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (value!142487 t1!67)))))) b!2464437))

(declare-fun m!2834483 () Bool)

(assert (=> b!2464436 m!2834483))

(declare-fun m!2834487 () Bool)

(assert (=> b!2464436 m!2834487))

(declare-fun m!2834489 () Bool)

(assert (=> b!2464437 m!2834489))

(assert (=> b!2463254 m!2832507))

(declare-fun b!2464440 () Bool)

(declare-fun e!1562928 () Bool)

(declare-fun tp!785307 () Bool)

(declare-fun tp!785309 () Bool)

(assert (=> b!2464440 (= e!1562928 (and tp!785307 tp!785309))))

(declare-fun b!2464441 () Bool)

(declare-fun tp!785308 () Bool)

(assert (=> b!2464441 (= e!1562928 tp!785308)))

(declare-fun b!2464439 () Bool)

(assert (=> b!2464439 (= e!1562928 tp_is_empty!11931)))

(declare-fun b!2464442 () Bool)

(declare-fun tp!785305 () Bool)

(declare-fun tp!785306 () Bool)

(assert (=> b!2464442 (= e!1562928 (and tp!785305 tp!785306))))

(assert (=> b!2463258 (= tp!784745 e!1562928)))

(assert (= (and b!2463258 ((_ is ElementMatch!7247) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464439))

(assert (= (and b!2463258 ((_ is Concat!11893) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464440))

(assert (= (and b!2463258 ((_ is Star!7247) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464441))

(assert (= (and b!2463258 ((_ is Union!7247) (regOne!15006 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464442))

(declare-fun b!2464444 () Bool)

(declare-fun e!1562929 () Bool)

(declare-fun tp!785312 () Bool)

(declare-fun tp!785314 () Bool)

(assert (=> b!2464444 (= e!1562929 (and tp!785312 tp!785314))))

(declare-fun b!2464445 () Bool)

(declare-fun tp!785313 () Bool)

(assert (=> b!2464445 (= e!1562929 tp!785313)))

(declare-fun b!2464443 () Bool)

(assert (=> b!2464443 (= e!1562929 tp_is_empty!11931)))

(declare-fun b!2464446 () Bool)

(declare-fun tp!785310 () Bool)

(declare-fun tp!785311 () Bool)

(assert (=> b!2464446 (= e!1562929 (and tp!785310 tp!785311))))

(assert (=> b!2463258 (= tp!784747 e!1562929)))

(assert (= (and b!2463258 ((_ is ElementMatch!7247) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464443))

(assert (= (and b!2463258 ((_ is Concat!11893) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464444))

(assert (= (and b!2463258 ((_ is Star!7247) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464445))

(assert (= (and b!2463258 ((_ is Union!7247) (regTwo!15006 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464446))

(declare-fun b!2464448 () Bool)

(declare-fun e!1562931 () Bool)

(declare-fun tp!785317 () Bool)

(declare-fun tp!785319 () Bool)

(assert (=> b!2464448 (= e!1562931 (and tp!785317 tp!785319))))

(declare-fun b!2464449 () Bool)

(declare-fun tp!785318 () Bool)

(assert (=> b!2464449 (= e!1562931 tp!785318)))

(declare-fun b!2464447 () Bool)

(assert (=> b!2464447 (= e!1562931 tp_is_empty!11931)))

(declare-fun b!2464450 () Bool)

(declare-fun tp!785315 () Bool)

(declare-fun tp!785316 () Bool)

(assert (=> b!2464450 (= e!1562931 (and tp!785315 tp!785316))))

(assert (=> b!2463229 (= tp!784713 e!1562931)))

(assert (= (and b!2463229 ((_ is ElementMatch!7247) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464447))

(assert (= (and b!2463229 ((_ is Concat!11893) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464448))

(assert (= (and b!2463229 ((_ is Star!7247) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464449))

(assert (= (and b!2463229 ((_ is Union!7247) (reg!7576 (regOne!15007 (regex!4459 (rule!6817 t1!67)))))) b!2464450))

(declare-fun b!2464457 () Bool)

(declare-fun e!1562934 () Bool)

(declare-fun tp!785322 () Bool)

(declare-fun tp!785324 () Bool)

(assert (=> b!2464457 (= e!1562934 (and tp!785322 tp!785324))))

(declare-fun b!2464458 () Bool)

(declare-fun tp!785323 () Bool)

(assert (=> b!2464458 (= e!1562934 tp!785323)))

(declare-fun b!2464456 () Bool)

(assert (=> b!2464456 (= e!1562934 tp_is_empty!11931)))

(declare-fun b!2464459 () Bool)

(declare-fun tp!785320 () Bool)

(declare-fun tp!785321 () Bool)

(assert (=> b!2464459 (= e!1562934 (and tp!785320 tp!785321))))

(assert (=> b!2463175 (= tp!784647 e!1562934)))

(assert (= (and b!2463175 ((_ is ElementMatch!7247) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464456))

(assert (= (and b!2463175 ((_ is Concat!11893) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464457))

(assert (= (and b!2463175 ((_ is Star!7247) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464458))

(assert (= (and b!2463175 ((_ is Union!7247) (regOne!15006 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464459))

(declare-fun b!2464461 () Bool)

(declare-fun e!1562935 () Bool)

(declare-fun tp!785327 () Bool)

(declare-fun tp!785329 () Bool)

(assert (=> b!2464461 (= e!1562935 (and tp!785327 tp!785329))))

(declare-fun b!2464462 () Bool)

(declare-fun tp!785328 () Bool)

(assert (=> b!2464462 (= e!1562935 tp!785328)))

(declare-fun b!2464460 () Bool)

(assert (=> b!2464460 (= e!1562935 tp_is_empty!11931)))

(declare-fun b!2464463 () Bool)

(declare-fun tp!785325 () Bool)

(declare-fun tp!785326 () Bool)

(assert (=> b!2464463 (= e!1562935 (and tp!785325 tp!785326))))

(assert (=> b!2463175 (= tp!784649 e!1562935)))

(assert (= (and b!2463175 ((_ is ElementMatch!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464460))

(assert (= (and b!2463175 ((_ is Concat!11893) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464461))

(assert (= (and b!2463175 ((_ is Star!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464462))

(assert (= (and b!2463175 ((_ is Union!7247) (regTwo!15006 (regTwo!15007 (regex!4459 (rule!6817 (h!34075 l!6611))))))) b!2464463))

(declare-fun b!2464465 () Bool)

(declare-fun e!1562936 () Bool)

(declare-fun tp!785332 () Bool)

(declare-fun tp!785334 () Bool)

(assert (=> b!2464465 (= e!1562936 (and tp!785332 tp!785334))))

(declare-fun b!2464466 () Bool)

(declare-fun tp!785333 () Bool)

(assert (=> b!2464466 (= e!1562936 tp!785333)))

(declare-fun b!2464464 () Bool)

(assert (=> b!2464464 (= e!1562936 tp_is_empty!11931)))

(declare-fun b!2464467 () Bool)

(declare-fun tp!785330 () Bool)

(declare-fun tp!785331 () Bool)

(assert (=> b!2464467 (= e!1562936 (and tp!785330 tp!785331))))

(assert (=> b!2463238 (= tp!784720 e!1562936)))

(assert (= (and b!2463238 ((_ is ElementMatch!7247) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464464))

(assert (= (and b!2463238 ((_ is Concat!11893) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464465))

(assert (= (and b!2463238 ((_ is Star!7247) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464466))

(assert (= (and b!2463238 ((_ is Union!7247) (regOne!15007 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464467))

(declare-fun b!2464469 () Bool)

(declare-fun e!1562937 () Bool)

(declare-fun tp!785337 () Bool)

(declare-fun tp!785339 () Bool)

(assert (=> b!2464469 (= e!1562937 (and tp!785337 tp!785339))))

(declare-fun b!2464470 () Bool)

(declare-fun tp!785338 () Bool)

(assert (=> b!2464470 (= e!1562937 tp!785338)))

(declare-fun b!2464468 () Bool)

(assert (=> b!2464468 (= e!1562937 tp_is_empty!11931)))

(declare-fun b!2464471 () Bool)

(declare-fun tp!785335 () Bool)

(declare-fun tp!785336 () Bool)

(assert (=> b!2464471 (= e!1562937 (and tp!785335 tp!785336))))

(assert (=> b!2463238 (= tp!784721 e!1562937)))

(assert (= (and b!2463238 ((_ is ElementMatch!7247) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464468))

(assert (= (and b!2463238 ((_ is Concat!11893) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464469))

(assert (= (and b!2463238 ((_ is Star!7247) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464470))

(assert (= (and b!2463238 ((_ is Union!7247) (regTwo!15007 (regOne!15006 (regex!4459 (rule!6817 t1!67)))))) b!2464471))

(declare-fun b!2464473 () Bool)

(declare-fun e!1562938 () Bool)

(declare-fun tp!785342 () Bool)

(declare-fun tp!785344 () Bool)

(assert (=> b!2464473 (= e!1562938 (and tp!785342 tp!785344))))

(declare-fun b!2464474 () Bool)

(declare-fun tp!785343 () Bool)

(assert (=> b!2464474 (= e!1562938 tp!785343)))

(declare-fun b!2464472 () Bool)

(assert (=> b!2464472 (= e!1562938 tp_is_empty!11931)))

(declare-fun b!2464475 () Bool)

(declare-fun tp!785340 () Bool)

(declare-fun tp!785341 () Bool)

(assert (=> b!2464475 (= e!1562938 (and tp!785340 tp!785341))))

(assert (=> b!2463260 (= tp!784743 e!1562938)))

(assert (= (and b!2463260 ((_ is ElementMatch!7247) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464472))

(assert (= (and b!2463260 ((_ is Concat!11893) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464473))

(assert (= (and b!2463260 ((_ is Star!7247) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464474))

(assert (= (and b!2463260 ((_ is Union!7247) (regOne!15007 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464475))

(declare-fun b!2464477 () Bool)

(declare-fun e!1562939 () Bool)

(declare-fun tp!785347 () Bool)

(declare-fun tp!785349 () Bool)

(assert (=> b!2464477 (= e!1562939 (and tp!785347 tp!785349))))

(declare-fun b!2464478 () Bool)

(declare-fun tp!785348 () Bool)

(assert (=> b!2464478 (= e!1562939 tp!785348)))

(declare-fun b!2464476 () Bool)

(assert (=> b!2464476 (= e!1562939 tp_is_empty!11931)))

(declare-fun b!2464479 () Bool)

(declare-fun tp!785345 () Bool)

(declare-fun tp!785346 () Bool)

(assert (=> b!2464479 (= e!1562939 (and tp!785345 tp!785346))))

(assert (=> b!2463260 (= tp!784744 e!1562939)))

(assert (= (and b!2463260 ((_ is ElementMatch!7247) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464476))

(assert (= (and b!2463260 ((_ is Concat!11893) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464477))

(assert (= (and b!2463260 ((_ is Star!7247) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464478))

(assert (= (and b!2463260 ((_ is Union!7247) (regTwo!15007 (reg!7576 (regex!4459 (rule!6817 t1!67)))))) b!2464479))

(declare-fun b_lambda!75511 () Bool)

(assert (= b_lambda!75507 (or d!708845 b_lambda!75511)))

(declare-fun bs!466613 () Bool)

(declare-fun d!709845 () Bool)

(assert (= bs!466613 (and d!709845 d!708845)))

(assert (=> bs!466613 (= (dynLambda!12316 lambda!93169 (h!34075 (t!208931 l!6611))) (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 l!6611))))))

(assert (=> bs!466613 m!2831753))

(assert (=> b!2463922 d!709845))

(declare-fun b_lambda!75513 () Bool)

(assert (= b_lambda!75457 (or (and b!2463221 b_free!70783 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2463224 b_free!70787 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2464218 b_free!70791 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2464362 b_free!70795 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) b_lambda!75513)))

(declare-fun b_lambda!75515 () Bool)

(assert (= b_lambda!75459 (or (and b!2463221 b_free!70783 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67))))) (and b!2463224 b_free!70787 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67))))) (and b!2464218 b_free!70791 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67))))) (and b!2464362 b_free!70795 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 t1!67))))) b_lambda!75515)))

(declare-fun b_lambda!75517 () Bool)

(assert (= b_lambda!75503 (or d!709169 b_lambda!75517)))

(declare-fun bs!466614 () Bool)

(declare-fun d!709847 () Bool)

(assert (= bs!466614 (and d!709847 d!709169)))

(assert (=> bs!466614 (= (dynLambda!12316 lambda!93199 (h!34075 (t!208931 l!6611))) (rulesProduceIndividualToken!1793 thiss!27932 rules!4472 (h!34075 (t!208931 l!6611))))))

(assert (=> bs!466614 m!2831753))

(assert (=> b!2463856 d!709847))

(declare-fun b_lambda!75519 () Bool)

(assert (= b_lambda!75487 (or d!709163 b_lambda!75519)))

(declare-fun bs!466615 () Bool)

(declare-fun d!709849 () Bool)

(assert (= bs!466615 (and d!709849 d!709163)))

(assert (=> bs!466615 (= (dynLambda!12317 lambda!93197 (h!34076 rules!4472)) (ruleValid!1512 thiss!27932 (h!34076 rules!4472)))))

(assert (=> bs!466615 m!2832597))

(assert (=> b!2463313 d!709849))

(declare-fun b_lambda!75521 () Bool)

(assert (= b_lambda!75491 (or (and b!2462465 b_free!70751 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))))) (and b!2462755 b_free!70767 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))))) (and b!2462794 b_free!70771 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))))) (and b!2464218 b_free!70791 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))))) (and b!2462453 b_free!70747 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))))) (and b!2463224 b_free!70787 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))))) (and b!2463221 b_free!70783) (and b!2462445 b_free!70755 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))))) (and b!2462446 b_free!70743 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))))) (and b!2464362 b_free!70795 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))))) b_lambda!75521)))

(declare-fun b_lambda!75523 () Bool)

(assert (= b_lambda!75489 (or (and b!2464218 b_free!70791 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2462453 b_free!70747 (= (toChars!6174 (transformation!4459 (h!34076 rules!4472))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2463224 b_free!70787 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2462465 b_free!70751 (= (toChars!6174 (transformation!4459 (rule!6817 t2!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2464362 b_free!70795 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2462446 b_free!70743) (and b!2463221 b_free!70783 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2462794 b_free!70771 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 rules!4472)))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2462755 b_free!70767 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 l!6611))))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) (and b!2462445 b_free!70755 (= (toChars!6174 (transformation!4459 (rule!6817 t1!67))) (toChars!6174 (transformation!4459 (rule!6817 (h!34075 l!6611)))))) b_lambda!75523)))

(declare-fun b_lambda!75525 () Bool)

(assert (= b_lambda!75461 (or (and b!2463221 b_free!70783 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 l!6611)))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67))))) (and b!2463224 b_free!70787 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 rules!4472))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67))))) (and b!2464218 b_free!70791 (= (toChars!6174 (transformation!4459 (h!34076 (t!208932 (t!208932 (t!208932 rules!4472)))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67))))) (and b!2464362 b_free!70795 (= (toChars!6174 (transformation!4459 (rule!6817 (h!34075 (t!208931 (t!208931 (t!208931 l!6611))))))) (toChars!6174 (transformation!4459 (rule!6817 t2!67))))) b_lambda!75525)))

(check-sat (not b_next!71485) (not b!2464205) (not b!2464084) (not b!2464074) tp_is_empty!11931 (not b!2463849) (not b!2464459) (not d!709269) (not b_lambda!75521) (not b!2464309) (not b!2464416) (not b!2463843) (not b!2463357) (not b!2464352) (not b!2464108) (not b!2463549) (not b!2464186) (not b!2464321) (not b!2464107) (not b!2464113) (not d!709647) (not b!2464202) (not b!2463979) (not b!2464190) (not b!2463314) (not b!2463966) (not b!2464092) (not b!2464165) (not b!2464295) (not b!2464291) (not b!2464226) (not b!2464180) (not d!709391) (not b!2463854) (not b!2464079) (not d!709423) (not b!2464058) (not b!2464103) (not d!709717) (not d!709315) (not b!2463303) (not d!709537) (not b!2463935) (not b!2463520) (not b!2464211) (not b!2464301) (not b!2463939) (not d!709431) (not b!2463928) (not b!2464099) (not b!2464041) (not b_next!71453) (not b_next!71487) (not b!2463858) (not b!2463500) (not b!2464141) (not b!2464271) (not b!2463316) (not b!2463562) (not b!2464088) (not b!2464086) (not d!709545) (not d!709429) b_and!186095 (not b!2463982) (not b!2464014) (not b_next!71447) (not d!709339) (not b!2464121) (not b!2464123) (not b!2463479) (not b!2463349) (not b!2464458) (not b!2464050) (not b!2463986) (not b!2464224) (not b!2463916) (not b_next!71445) (not b!2463960) (not b!2464395) (not b!2463254) (not b!2463419) (not b!2464140) (not bm!151412) (not b!2463876) (not b!2464072) (not b!2464051) (not b!2464154) (not b!2464436) (not b!2464434) (not d!709267) (not b!2463454) (not b!2463820) (not b!2464284) (not b!2463390) (not b!2464413) (not b!2464438) (not b!2464401) (not b!2464387) (not b!2464332) (not d!709657) (not d!709273) (not d!709549) (not b!2464090) (not b!2463472) (not b!2464427) (not d!709387) (not d!709385) (not b!2464149) b_and!186045 (not d!709421) (not b!2463341) (not d!709321) (not b!2464412) (not b!2463182) (not d!709373) (not b!2464280) (not b!2464254) (not b!2464157) (not b!2464083) (not b!2464201) (not b_lambda!75519) (not b!2464078) (not d!709681) (not d!709341) (not b!2464259) (not b_next!71473) (not b!2463387) (not b!2464357) (not b_next!71491) (not b!2464225) (not b!2464110) b_and!186087 (not b!2464319) (not d!709405) (not d!709355) b_and!186099 (not b!2464391) (not b!2463836) (not b!2464005) (not b!2464134) (not b!2464253) (not b_next!71499) (not b!2464399) (not b!2463519) (not b!2464176) (not b!2464120) (not b!2464303) (not b!2464228) (not b!2464324) (not b_next!71497) (not b!2463867) (not b!2463977) (not d!709791) (not b!2463360) (not d!709633) (not b_lambda!75485) (not b!2463900) (not bs!466615) (not b!2464046) (not d!709335) (not b!2464230) (not b!2463987) (not d!709677) (not d!709255) (not b!2463936) (not b!2463566) (not b!2463497) (not b_lambda!75513) (not b!2463362) (not d!709317) (not d!709653) (not b!2464096) (not b!2464475) (not b!2463365) (not b!2463942) (not b!2463546) (not b!2463372) (not b!2464131) (not d!709399) (not b!2464239) (not b!2464166) (not b!2463277) (not b!2463417) (not b!2463469) (not b!2464267) (not b!2464403) (not b!2464437) (not b!2463447) (not d!709637) (not b!2464450) (not b!2464235) (not b!2463993) b_and!185985 (not b!2463931) b_and!186089 (not b!2463521) (not b!2464422) (not b!2464375) (not b!2463580) (not d!709723) (not b_next!71489) (not b!2463996) (not b!2463842) (not b!2463331) (not b!2463480) (not b!2464234) (not b!2464136) (not d!709323) (not b!2463954) (not b!2463290) (not b!2464146) (not b!2463833) (not b!2463579) (not b!2464034) (not b!2464471) (not b!2464184) (not b!2463981) (not b!2464188) (not b!2463448) (not b!2464019) (not b!2463511) (not d!709705) (not b_next!71475) (not d!709443) (not b!2463389) (not b!2463468) b_and!185913 (not d!709371) (not d!709417) (not b!2463466) (not d!709345) (not b!2464214) (not b!2463937) (not b!2463827) (not b!2464000) (not b!2463495) (not b!2464444) b_and!185921 (not b!2464435) (not b!2464278) (not b!2464203) (not b!2464033) (not b!2464251) (not b!2463874) (not b!2463956) (not b!2462961) (not b!2464461) (not d!709713) (not b!2464426) (not b!2464442) (not b!2464001) (not b!2464080) (not b_next!71459) (not b!2464341) (not b!2464237) (not b!2464250) (not d!709639) (not b!2464297) (not b!2464296) (not b!2464369) (not b!2464255) (not b!2464325) (not b!2464101) (not b!2464393) (not b!2463344) (not b!2463914) (not b!2464433) (not b!2464233) (not b_lambda!75517) (not b_lambda!75511) b_and!186149 (not b!2463548) (not b!2464002) (not b!2464182) (not b!2464441) (not d!709407) (not d!709401) (not d!709313) (not b!2464124) (not b!2464242) (not b!2464285) (not b!2464158) (not b!2464128) (not b!2464279) (not b!2464038) (not b!2464241) b_and!186093 (not b!2463473) (not d!709249) (not b!2464288) (not d!709643) (not b!2463997) (not d!709667) (not b!2464344) (not d!709649) (not b!2463471) (not b!2464340) (not b!2463826) (not b!2464168) (not b!2463443) (not d!709671) (not d!709291) (not b!2463339) (not b_next!71449) (not b!2464150) (not b!2464082) b_and!186153 (not b!2464350) (not d!709773) (not d!709365) (not b!2464094) (not b!2464129) (not b!2464400) (not b!2463958) (not b!2463388) (not b_next!71451) (not d!709663) (not b!2464478) (not b!2463912) (not b!2464173) (not b!2464170) (not b!2463463) (not b!2464007) (not b!2463450) (not b!2464174) (not b!2464022) b_and!185981 (not b!2464112) (not d!709425) b_and!186049 (not b!2464356) (not b!2464266) (not d!709305) (not b!2463837) (not b!2463873) (not b!2464290) (not b!2464142) (not b!2463962) (not b!2464320) (not d!709229) (not b!2464446) (not b!2464066) (not b!2464054) (not d!709409) (not b!2464102) (not d!709281) (not b!2464249) (not b!2464264) (not d!709757) (not bm!151417) (not b!2463514) (not b!2464004) (not b!2463923) (not b!2463502) (not b!2463526) (not b!2464018) (not b!2464467) (not b!2464348) (not b!2464317) (not b!2463878) (not b_next!71469) (not b!2464076) (not b!2464213) (not d!709641) (not b!2463524) (not d!709331) (not b!2463470) (not b!2464064) (not b!2464404) (not b!2464349) b_and!186155 (not b!2464056) (not b!2464181) (not d!709395) (not b!2464374) (not b!2464311) (not b!2463547) (not b!2463439) (not b!2464300) (not b!2463403) (not b!2463850) (not d!709719) (not b!2463452) (not d!709319) (not b!2463985) (not b!2464047) (not b!2464440) (not d!709727) (not d!709695) (not b!2463938) (not b!2463887) (not b!2464148) (not b!2464023) (not d!709263) (not d!709439) (not b!2463946) (not b!2464071) (not b!2463844) (not b!2464045) (not d!709761) (not b!2464177) (not b!2464217) (not b!2464299) (not b!2463998) (not b!2464067) (not b!2463368) (not b!2464199) (not b!2464327) (not b!2464015) (not b!2463884) (not b!2464049) (not b!2463544) (not b!2464210) (not b_next!71493) (not b!2463927) (not b!2463967) (not b!2463872) (not b!2464162) (not b!2464132) (not b!2463420) (not b!2464289) (not b!2464021) (not b!2463531) (not d!709745) (not b!2464172) (not b!2464215) (not b!2464030) (not b_lambda!75481) (not b!2464191) (not d!709435) (not d!709367) (not tb!139137) (not b!2463839) (not b!2464243) (not b!2464457) (not d!709685) (not d!709231) (not d!709361) (not b!2463932) (not b!2463359) (not b!2464358) (not b!2464115) (not d!709763) (not b!2464029) (not d!709703) (not b!2463978) (not b!2464424) (not b!2463363) (not b!2464268) (not b!2463367) (not b!2463285) (not d!709463) (not b!2464042) (not b!2463869) (not b!2463402) (not b!2464220) (not b!2464305) (not d!709383) (not b!2463835) (not b!2463955) b_and!186151 (not b!2464043) (not b!2464222) (not b!2464144) (not b_next!71471) (not b!2464463) (not b!2464231) (not b!2464133) (not b!2463891) (not b!2463860) (not d!709343) (not d!709325) (not b!2463424) (not d!709697) (not b_lambda!75515) b_and!186085 (not b!2463846) (not b!2464194) (not b!2463913) (not d!709759) (not d!709715) (not b!2464195) (not b!2464415) (not b!2464135) (not b!2463416) (not b!2464189) (not b!2463338) (not d!709333) (not b!2464389) (not d!709433) (not b!2463476) (not tb!139153) (not b!2464152) (not b!2464370) (not b!2464477) (not b!2463834) (not b!2464469) b_and!186091 (not b!2464329) (not d!709347) (not b!2464408) (not b_lambda!75523) (not b!2463322) (not b_lambda!75525) (not b!2464315) (not b!2464153) (not b!2463959) (not b!2464346) (not b!2464087) (not b!2464286) (not b!2464006) (not b!2464238) (not b!2464221) (not b!2464010) (not d!709309) (not d!709379) (not b_lambda!75493) (not b!2464431) (not b!2463879) (not b!2463393) (not b!2464345) (not b!2464063) (not b!2464381) b_and!185909 (not b!2464474) (not d!709235) (not b!2464272) (not b!2464445) (not b!2464216) (not b!2463422) (not b!2463560) (not b!2464390) (not b!2464313) (not b_lambda!75483) (not b!2463527) (not b!2464411) (not b!2463877) (not d!709735) (not b!2464479) (not b!2463968) (not b!2464449) (not b!2464465) (not b!2463289) (not d!709687) (not b!2464385) (not b!2463513) (not b!2463287) (not b!2463377) (not d!709709) (not b!2464371) (not b!2464354) (not b!2464116) (not d!709437) (not d!709737) (not b!2463992) (not b!2464027) (not bs!466614) (not d!709271) (not b!2463875) (not b!2463342) (not d!709285) (not d!709397) (not b!2464009) (not b!2464031) (not b!2464011) (not b!2464145) (not b!2464373) (not b!2464138) (not b!2463493) (not b!2464106) (not d!709793) (not b_next!71457) (not b!2464462) (not b!2463440) (not b!2463545) (not b!2464097) (not b!2464407) (not d!709351) (not b!2463892) (not b!2463329) (not b!2463825) (not d!709769) (not b!2463963) (not b!2464316) (not b!2464025) (not b!2464312) (not b!2463396) (not b!2464095) (not b!2464470) (not b!2463885) (not b!2464062) (not b!2464105) (not b!2463988) (not b!2464119) (not b!2464026) (not b!2464093) (not b!2464359) (not b!2463158) (not b!2464428) (not b!2463423) (not b!2464164) (not d!709381) (not b!2464017) (not b!2463304) (not d!709239) b_and!185917 (not b!2463857) (not b!2464430) (not b!2463994) (not b!2464247) (not b!2463964) (not b!2464361) (not b!2464353) (not b!2463418) (not b!2464052) (not b!2464127) (not b!2464037) (not b!2464091) (not b!2464409) (not b!2464193) (not b!2464270) (not b!2464342) (not b!2463974) (not b!2463421) (not b!2464137) (not b!2463940) (not b!2464013) (not b!2463973) (not b!2463474) (not b!2463565) (not b!2464075) (not b!2464185) (not d!709461) (not d!709427) (not b!2464383) (not b!2464169) (not b!2464334) (not b!2464448) (not b!2464109) (not d!709307) (not b!2464386) (not b!2464039) (not b!2463278) (not b!2464423) (not d!709755) (not b!2464258) (not d!709299) (not b!2463838) (not b!2464394) (not b_next!71455) (not b!2464207) (not b!2464209) (not b!2464156) (not d!709665) (not b!2464417) (not b!2464466) (not b!2464098) (not b!2464405) (not b_next!71495) (not b!2464304) (not b!2464331) (not b!2463983) (not b!2463451) (not b!2463559) (not d!709673) (not b!2464161) (not b!2464111) (not b!2464197) (not b!2464245) (not b!2464473) (not d!709297) (not b!2463563) (not d!709389) (not b!2464125) (not b!2464117) (not b!2464229) (not d!709393) (not b!2464060) (not b!2463561) (not b!2464360) (not b!2464198) (not b!2463529) (not b!2464308) (not b!2464246) (not b!2464432) (not b!2463512) (not b!2464035) (not b!2463709) (not b!2463482) (not d!709265) (not b!2464059) b_and!186097 (not d!709327) (not d!709377) (not b!2463371) (not b!2464328) (not b!2463859) (not b!2463822) (not b!2463441) (not b!2464257) (not b!2463866) (not b!2464178) (not b!2463975) (not b!2463455) (not b!2463498) (not b!2463831) (not b!2464382) (not b!2464307) (not d!709403) (not b!2464068) (not d!709311) (not b!2463911) (not b!2464323) (not b!2463855) (not b!2463330) (not d!709259) (not b!2464160) (not b!2464206) (not b!2463853) (not b!2464070) (not b!2464055) (not b!2463481) (not bs!466613) (not b!2463829) (not d!709353) (not d!709411))
(check-sat (not b_next!71485) b_and!186149 b_and!186093 (not b_next!71451) (not b_next!71493) b_and!186085 b_and!186091 b_and!185909 (not b_next!71457) b_and!185917 b_and!186097 (not b_next!71453) (not b_next!71487) b_and!186095 (not b_next!71447) (not b_next!71445) b_and!186045 (not b_next!71473) (not b_next!71491) b_and!186087 (not b_next!71499) b_and!186099 (not b_next!71497) (not b_next!71489) b_and!185985 b_and!186089 b_and!185913 (not b_next!71475) b_and!185921 (not b_next!71459) (not b_next!71449) b_and!186153 b_and!185981 b_and!186049 b_and!186155 (not b_next!71469) b_and!186151 (not b_next!71471) (not b_next!71455) (not b_next!71495))
