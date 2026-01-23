; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!523196 () Bool)

(assert start!523196)

(declare-fun b!4962103 () Bool)

(declare-fun b_free!132659 () Bool)

(declare-fun b_next!133449 () Bool)

(assert (=> b!4962103 (= b_free!132659 (not b_next!133449))))

(declare-fun tp!1392003 () Bool)

(declare-fun b_and!347519 () Bool)

(assert (=> b!4962103 (= tp!1392003 b_and!347519)))

(declare-fun b_free!132661 () Bool)

(declare-fun b_next!133451 () Bool)

(assert (=> b!4962103 (= b_free!132661 (not b_next!133451))))

(declare-fun tp!1392004 () Bool)

(declare-fun b_and!347521 () Bool)

(assert (=> b!4962103 (= tp!1392004 b_and!347521)))

(declare-fun b!4962099 () Bool)

(declare-fun b_free!132663 () Bool)

(declare-fun b_next!133453 () Bool)

(assert (=> b!4962099 (= b_free!132663 (not b_next!133453))))

(declare-fun tp!1392010 () Bool)

(declare-fun b_and!347523 () Bool)

(assert (=> b!4962099 (= tp!1392010 b_and!347523)))

(declare-fun b_free!132665 () Bool)

(declare-fun b_next!133455 () Bool)

(assert (=> b!4962099 (= b_free!132665 (not b_next!133455))))

(declare-fun tp!1392008 () Bool)

(declare-fun b_and!347525 () Bool)

(assert (=> b!4962099 (= tp!1392008 b_and!347525)))

(declare-fun b!4962085 () Bool)

(declare-fun e!3101679 () Bool)

(declare-datatypes ((C!27482 0))(
  ( (C!27483 (val!23107 Int)) )
))
(declare-datatypes ((List!57535 0))(
  ( (Nil!57411) (Cons!57411 (h!63859 C!27482) (t!368113 List!57535)) )
))
(declare-datatypes ((IArray!30331 0))(
  ( (IArray!30332 (innerList!15223 List!57535)) )
))
(declare-datatypes ((Conc!15135 0))(
  ( (Node!15135 (left!41865 Conc!15135) (right!42195 Conc!15135) (csize!30500 Int) (cheight!15346 Int)) (Leaf!25152 (xs!18461 IArray!30331) (csize!30501 Int)) (Empty!15135) )
))
(declare-datatypes ((BalanceConc!29700 0))(
  ( (BalanceConc!29701 (c!846646 Conc!15135)) )
))
(declare-fun totalInput!464 () BalanceConc!29700)

(declare-fun tp!1392005 () Bool)

(declare-fun inv!75000 (Conc!15135) Bool)

(assert (=> b!4962085 (= e!3101679 (and (inv!75000 (c!846646 totalInput!464)) tp!1392005))))

(declare-fun b!4962086 () Bool)

(declare-fun res!2117971 () Bool)

(declare-fun e!3101665 () Bool)

(assert (=> b!4962086 (=> res!2117971 e!3101665)))

(declare-fun lt!2048751 () Bool)

(assert (=> b!4962086 (= res!2117971 lt!2048751)))

(declare-fun e!3101682 () Bool)

(declare-datatypes ((List!57536 0))(
  ( (Nil!57412) (Cons!57412 (h!63860 (_ BitVec 16)) (t!368114 List!57536)) )
))
(declare-datatypes ((TokenValue!8693 0))(
  ( (FloatLiteralValue!17386 (text!61296 List!57536)) (TokenValueExt!8692 (__x!34679 Int)) (Broken!43465 (value!268333 List!57536)) (Object!8816) (End!8693) (Def!8693) (Underscore!8693) (Match!8693) (Else!8693) (Error!8693) (Case!8693) (If!8693) (Extends!8693) (Abstract!8693) (Class!8693) (Val!8693) (DelimiterValue!17386 (del!8753 List!57536)) (KeywordValue!8699 (value!268334 List!57536)) (CommentValue!17386 (value!268335 List!57536)) (WhitespaceValue!17386 (value!268336 List!57536)) (IndentationValue!8693 (value!268337 List!57536)) (String!65340) (Int32!8693) (Broken!43466 (value!268338 List!57536)) (Boolean!8694) (Unit!148305) (OperatorValue!8696 (op!8753 List!57536)) (IdentifierValue!17386 (value!268339 List!57536)) (IdentifierValue!17387 (value!268340 List!57536)) (WhitespaceValue!17387 (value!268341 List!57536)) (True!17386) (False!17386) (Broken!43467 (value!268342 List!57536)) (Broken!43468 (value!268343 List!57536)) (True!17387) (RightBrace!8693) (RightBracket!8693) (Colon!8693) (Null!8693) (Comma!8693) (LeftBracket!8693) (False!17387) (LeftBrace!8693) (ImaginaryLiteralValue!8693 (text!61297 List!57536)) (StringLiteralValue!26079 (value!268344 List!57536)) (EOFValue!8693 (value!268345 List!57536)) (IdentValue!8693 (value!268346 List!57536)) (DelimiterValue!17387 (value!268347 List!57536)) (DedentValue!8693 (value!268348 List!57536)) (NewLineValue!8693 (value!268349 List!57536)) (IntegerValue!26079 (value!268350 (_ BitVec 32)) (text!61298 List!57536)) (IntegerValue!26080 (value!268351 Int) (text!61299 List!57536)) (Times!8693) (Or!8693) (Equal!8693) (Minus!8693) (Broken!43469 (value!268352 List!57536)) (And!8693) (Div!8693) (LessEqual!8693) (Mod!8693) (Concat!22309) (Not!8693) (Plus!8693) (SpaceValue!8693 (value!268353 List!57536)) (IntegerValue!26081 (value!268354 Int) (text!61300 List!57536)) (StringLiteralValue!26080 (text!61301 List!57536)) (FloatLiteralValue!17387 (text!61302 List!57536)) (BytesLiteralValue!8693 (value!268355 List!57536)) (CommentValue!17387 (value!268356 List!57536)) (StringLiteralValue!26081 (value!268357 List!57536)) (ErrorTokenValue!8693 (msg!8754 List!57536)) )
))
(declare-datatypes ((Regex!13616 0))(
  ( (ElementMatch!13616 (c!846647 C!27482)) (Concat!22310 (regOne!27744 Regex!13616) (regTwo!27744 Regex!13616)) (EmptyExpr!13616) (Star!13616 (reg!13945 Regex!13616)) (EmptyLang!13616) (Union!13616 (regOne!27745 Regex!13616) (regTwo!27745 Regex!13616)) )
))
(declare-datatypes ((String!65341 0))(
  ( (String!65342 (value!268358 String)) )
))
(declare-datatypes ((TokenValueInjection!16694 0))(
  ( (TokenValueInjection!16695 (toValue!11334 Int) (toChars!11193 Int)) )
))
(declare-datatypes ((Rule!16566 0))(
  ( (Rule!16567 (regex!8383 Regex!13616) (tag!9247 String!65341) (isSeparator!8383 Bool) (transformation!8383 TokenValueInjection!16694)) )
))
(declare-datatypes ((Token!15266 0))(
  ( (Token!15267 (value!268359 TokenValue!8693) (rule!11615 Rule!16566) (size!38039 Int) (originalCharacters!8664 List!57535)) )
))
(declare-datatypes ((tuple2!62108 0))(
  ( (tuple2!62109 (_1!34357 Token!15266) (_2!34357 BalanceConc!29700)) )
))
(declare-datatypes ((Option!14433 0))(
  ( (None!14432) (Some!14432 (v!50417 tuple2!62108)) )
))
(declare-fun err!4581 () Option!14433)

(declare-fun e!3101677 () Bool)

(declare-fun b!4962087 () Bool)

(declare-fun tp!1392006 () Bool)

(declare-fun inv!21 (TokenValue!8693) Bool)

(assert (=> b!4962087 (= e!3101677 (and (inv!21 (value!268359 (_1!34357 (v!50417 err!4581)))) e!3101682 tp!1392006))))

(declare-fun b!4962088 () Bool)

(declare-fun e!3101670 () Bool)

(declare-fun lt!2048746 () tuple2!62108)

(declare-datatypes ((tuple2!62110 0))(
  ( (tuple2!62111 (_1!34358 Token!15266) (_2!34358 List!57535)) )
))
(declare-fun lt!2048745 () tuple2!62110)

(declare-fun list!18342 (BalanceConc!29700) List!57535)

(assert (=> b!4962088 (= e!3101670 (not (= (list!18342 (_2!34357 lt!2048746)) (_2!34358 lt!2048745))))))

(declare-fun b!4962089 () Bool)

(declare-fun e!3101664 () Bool)

(declare-fun e!3101681 () Bool)

(declare-fun tp!1392011 () Bool)

(assert (=> b!4962089 (= e!3101664 (and e!3101681 tp!1392011))))

(declare-fun b!4962090 () Bool)

(declare-fun e!3101667 () Bool)

(assert (=> b!4962090 (= e!3101667 e!3101670)))

(declare-fun res!2117974 () Bool)

(assert (=> b!4962090 (=> res!2117974 e!3101670)))

(assert (=> b!4962090 (= res!2117974 (not (= (_1!34357 lt!2048746) (_1!34358 lt!2048745))))))

(declare-datatypes ((Option!14434 0))(
  ( (None!14433) (Some!14433 (v!50418 tuple2!62110)) )
))
(declare-fun lt!2048744 () Option!14434)

(declare-fun get!19919 (Option!14434) tuple2!62110)

(assert (=> b!4962090 (= lt!2048745 (get!19919 lt!2048744))))

(declare-fun lt!2048750 () Option!14433)

(declare-fun get!19920 (Option!14433) tuple2!62108)

(assert (=> b!4962090 (= lt!2048746 (get!19920 lt!2048750))))

(declare-fun b!4962091 () Bool)

(declare-fun e!3101666 () Bool)

(assert (=> b!4962091 (= e!3101666 e!3101665)))

(declare-fun res!2117979 () Bool)

(assert (=> b!4962091 (=> res!2117979 e!3101665)))

(assert (=> b!4962091 (= res!2117979 e!3101667)))

(declare-fun res!2117976 () Bool)

(assert (=> b!4962091 (=> (not res!2117976) (not e!3101667))))

(assert (=> b!4962091 (= res!2117976 (not lt!2048751))))

(declare-fun lt!2048743 () Bool)

(assert (=> b!4962091 (= lt!2048751 (not lt!2048743))))

(declare-fun b!4962092 () Bool)

(declare-fun e!3101676 () Bool)

(assert (=> b!4962092 (= e!3101665 e!3101676)))

(declare-fun res!2117980 () Bool)

(assert (=> b!4962092 (=> res!2117980 e!3101676)))

(declare-fun lt!2048748 () Option!14434)

(assert (=> b!4962092 (= res!2117980 (not (= (_1!34357 (get!19920 lt!2048750)) (_1!34358 (get!19919 lt!2048748)))))))

(declare-fun lt!2048747 () List!57535)

(declare-datatypes ((List!57537 0))(
  ( (Nil!57413) (Cons!57413 (h!63861 Rule!16566) (t!368115 List!57537)) )
))
(declare-fun rulesArg!259 () List!57537)

(declare-datatypes ((LexerInterface!7975 0))(
  ( (LexerInterfaceExt!7972 (__x!34680 Int)) (Lexer!7973) )
))
(declare-fun thiss!15247 () LexerInterface!7975)

(declare-fun maxPrefix!4654 (LexerInterface!7975 List!57537 List!57535) Option!14434)

(assert (=> b!4962092 (= lt!2048748 (maxPrefix!4654 thiss!15247 rulesArg!259 lt!2048747))))

(declare-fun b!4962093 () Bool)

(declare-fun e!3101674 () Bool)

(declare-fun e!3101668 () Bool)

(assert (=> b!4962093 (= e!3101674 (not e!3101668))))

(declare-fun res!2117977 () Bool)

(assert (=> b!4962093 (=> res!2117977 e!3101668)))

(assert (=> b!4962093 (= res!2117977 (or (and (is-Cons!57413 rulesArg!259) (is-Nil!57413 (t!368115 rulesArg!259))) (is-Cons!57413 rulesArg!259)))))

(declare-fun isPrefix!5236 (List!57535 List!57535) Bool)

(assert (=> b!4962093 (isPrefix!5236 lt!2048747 lt!2048747)))

(declare-datatypes ((Unit!148306 0))(
  ( (Unit!148307) )
))
(declare-fun lt!2048749 () Unit!148306)

(declare-fun lemmaIsPrefixRefl!3560 (List!57535 List!57535) Unit!148306)

(assert (=> b!4962093 (= lt!2048749 (lemmaIsPrefixRefl!3560 lt!2048747 lt!2048747))))

(declare-fun b!4962094 () Bool)

(assert (=> b!4962094 (= e!3101668 e!3101666)))

(declare-fun res!2117972 () Bool)

(assert (=> b!4962094 (=> res!2117972 e!3101666)))

(declare-fun isDefined!11346 (Option!14434) Bool)

(assert (=> b!4962094 (= res!2117972 (not (= lt!2048743 (isDefined!11346 lt!2048744))))))

(declare-fun isDefined!11347 (Option!14433) Bool)

(assert (=> b!4962094 (= lt!2048743 (isDefined!11347 lt!2048750))))

(declare-fun maxPrefixZipper!780 (LexerInterface!7975 List!57537 List!57535) Option!14434)

(assert (=> b!4962094 (= lt!2048744 (maxPrefixZipper!780 thiss!15247 rulesArg!259 lt!2048747))))

(assert (=> b!4962094 (= lt!2048750 err!4581)))

(assert (=> b!4962094 true))

(declare-fun e!3101675 () Bool)

(assert (=> b!4962094 e!3101675))

(declare-fun b!4962095 () Bool)

(declare-fun e!3101672 () Bool)

(declare-fun tp!1392007 () Bool)

(assert (=> b!4962095 (= e!3101672 (and (inv!75000 (c!846646 (_2!34357 (v!50417 err!4581)))) tp!1392007))))

(declare-fun tp!1392012 () Bool)

(declare-fun e!3101680 () Bool)

(declare-fun b!4962096 () Bool)

(declare-fun inv!74997 (String!65341) Bool)

(declare-fun inv!75001 (TokenValueInjection!16694) Bool)

(assert (=> b!4962096 (= e!3101682 (and tp!1392012 (inv!74997 (tag!9247 (rule!11615 (_1!34357 (v!50417 err!4581))))) (inv!75001 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581))))) e!3101680))))

(declare-fun b!4962097 () Bool)

(declare-fun res!2117975 () Bool)

(declare-fun e!3101669 () Bool)

(assert (=> b!4962097 (=> (not res!2117975) (not e!3101669))))

(declare-fun rulesValidInductive!3286 (LexerInterface!7975 List!57537) Bool)

(assert (=> b!4962097 (= res!2117975 (rulesValidInductive!3286 thiss!15247 rulesArg!259))))

(declare-fun b!4962098 () Bool)

(assert (=> b!4962098 (= e!3101669 e!3101674)))

(declare-fun res!2117973 () Bool)

(assert (=> b!4962098 (=> (not res!2117973) (not e!3101674))))

(declare-fun isSuffix!1182 (List!57535 List!57535) Bool)

(assert (=> b!4962098 (= res!2117973 (isSuffix!1182 lt!2048747 (list!18342 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29700)

(assert (=> b!4962098 (= lt!2048747 (list!18342 input!1342))))

(assert (=> b!4962099 (= e!3101680 (and tp!1392010 tp!1392008))))

(declare-fun res!2117978 () Bool)

(assert (=> start!523196 (=> (not res!2117978) (not e!3101669))))

(assert (=> start!523196 (= res!2117978 (is-Lexer!7973 thiss!15247))))

(assert (=> start!523196 e!3101669))

(assert (=> start!523196 true))

(assert (=> start!523196 e!3101664))

(declare-fun e!3101663 () Bool)

(declare-fun inv!75002 (BalanceConc!29700) Bool)

(assert (=> start!523196 (and (inv!75002 input!1342) e!3101663)))

(assert (=> start!523196 (and (inv!75002 totalInput!464) e!3101679)))

(declare-fun b!4962100 () Bool)

(assert (=> b!4962100 (= e!3101676 (isDefined!11346 lt!2048748))))

(declare-fun b!4962101 () Bool)

(declare-fun tp!1392013 () Bool)

(assert (=> b!4962101 (= e!3101663 (and (inv!75000 (c!846646 input!1342)) tp!1392013))))

(declare-fun b!4962102 () Bool)

(declare-fun tp!1392009 () Bool)

(declare-fun e!3101671 () Bool)

(assert (=> b!4962102 (= e!3101681 (and tp!1392009 (inv!74997 (tag!9247 (h!63861 rulesArg!259))) (inv!75001 (transformation!8383 (h!63861 rulesArg!259))) e!3101671))))

(assert (=> b!4962103 (= e!3101671 (and tp!1392003 tp!1392004))))

(declare-fun b!4962104 () Bool)

(declare-fun inv!75003 (Token!15266) Bool)

(assert (=> b!4962104 (= e!3101675 (and (inv!75003 (_1!34357 (v!50417 err!4581))) e!3101677 (inv!75002 (_2!34357 (v!50417 err!4581))) e!3101672))))

(declare-fun b!4962105 () Bool)

(declare-fun res!2117981 () Bool)

(assert (=> b!4962105 (=> (not res!2117981) (not e!3101669))))

(declare-fun isEmpty!30893 (List!57537) Bool)

(assert (=> b!4962105 (= res!2117981 (not (isEmpty!30893 rulesArg!259)))))

(assert (= (and start!523196 res!2117978) b!4962097))

(assert (= (and b!4962097 res!2117975) b!4962105))

(assert (= (and b!4962105 res!2117981) b!4962098))

(assert (= (and b!4962098 res!2117973) b!4962093))

(assert (= (and b!4962093 (not res!2117977)) b!4962094))

(assert (= b!4962096 b!4962099))

(assert (= b!4962087 b!4962096))

(assert (= b!4962104 b!4962087))

(assert (= b!4962104 b!4962095))

(assert (= (and b!4962094 (is-Some!14432 err!4581)) b!4962104))

(assert (= (and b!4962094 (not res!2117972)) b!4962091))

(assert (= (and b!4962091 res!2117976) b!4962090))

(assert (= (and b!4962090 (not res!2117974)) b!4962088))

(assert (= (and b!4962091 (not res!2117979)) b!4962086))

(assert (= (and b!4962086 (not res!2117971)) b!4962092))

(assert (= (and b!4962092 (not res!2117980)) b!4962100))

(assert (= b!4962102 b!4962103))

(assert (= b!4962089 b!4962102))

(assert (= (and start!523196 (is-Cons!57413 rulesArg!259)) b!4962089))

(assert (= start!523196 b!4962101))

(assert (= start!523196 b!4962085))

(declare-fun m!5986532 () Bool)

(assert (=> b!4962100 m!5986532))

(declare-fun m!5986534 () Bool)

(assert (=> b!4962098 m!5986534))

(assert (=> b!4962098 m!5986534))

(declare-fun m!5986536 () Bool)

(assert (=> b!4962098 m!5986536))

(declare-fun m!5986538 () Bool)

(assert (=> b!4962098 m!5986538))

(declare-fun m!5986540 () Bool)

(assert (=> b!4962097 m!5986540))

(declare-fun m!5986542 () Bool)

(assert (=> b!4962088 m!5986542))

(declare-fun m!5986544 () Bool)

(assert (=> b!4962096 m!5986544))

(declare-fun m!5986546 () Bool)

(assert (=> b!4962096 m!5986546))

(declare-fun m!5986548 () Bool)

(assert (=> b!4962105 m!5986548))

(declare-fun m!5986550 () Bool)

(assert (=> b!4962101 m!5986550))

(declare-fun m!5986552 () Bool)

(assert (=> b!4962093 m!5986552))

(declare-fun m!5986554 () Bool)

(assert (=> b!4962093 m!5986554))

(declare-fun m!5986556 () Bool)

(assert (=> b!4962102 m!5986556))

(declare-fun m!5986558 () Bool)

(assert (=> b!4962102 m!5986558))

(declare-fun m!5986560 () Bool)

(assert (=> b!4962094 m!5986560))

(declare-fun m!5986562 () Bool)

(assert (=> b!4962094 m!5986562))

(declare-fun m!5986564 () Bool)

(assert (=> b!4962094 m!5986564))

(declare-fun m!5986566 () Bool)

(assert (=> b!4962090 m!5986566))

(declare-fun m!5986568 () Bool)

(assert (=> b!4962090 m!5986568))

(assert (=> b!4962092 m!5986568))

(declare-fun m!5986570 () Bool)

(assert (=> b!4962092 m!5986570))

(declare-fun m!5986572 () Bool)

(assert (=> b!4962092 m!5986572))

(declare-fun m!5986574 () Bool)

(assert (=> b!4962095 m!5986574))

(declare-fun m!5986576 () Bool)

(assert (=> b!4962085 m!5986576))

(declare-fun m!5986578 () Bool)

(assert (=> start!523196 m!5986578))

(declare-fun m!5986580 () Bool)

(assert (=> start!523196 m!5986580))

(declare-fun m!5986582 () Bool)

(assert (=> b!4962104 m!5986582))

(declare-fun m!5986584 () Bool)

(assert (=> b!4962104 m!5986584))

(declare-fun m!5986586 () Bool)

(assert (=> b!4962087 m!5986586))

(push 1)

(assert b_and!347521)

(assert (not b!4962087))

(assert b_and!347523)

(assert (not b!4962092))

(assert (not b!4962101))

(assert (not b_next!133453))

(assert b_and!347519)

(assert (not b!4962094))

(assert (not b!4962085))

(assert (not b!4962102))

(assert (not b!4962100))

(assert (not b!4962098))

(assert (not b_next!133455))

(assert (not b!4962088))

(assert (not b!4962097))

(assert (not b!4962093))

(assert (not b!4962096))

(assert (not b!4962095))

(assert (not b!4962104))

(assert (not b_next!133451))

(assert (not start!523196))

(assert (not b_next!133449))

(assert (not b!4962090))

(assert (not b!4962105))

(assert b_and!347525)

(assert (not b!4962089))

(check-sat)

(pop 1)

(push 1)

(assert b_and!347521)

(assert b_and!347523)

(assert (not b_next!133455))

(assert (not b_next!133451))

(assert (not b_next!133449))

(assert (not b_next!133453))

(assert b_and!347519)

(assert b_and!347525)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1596493 () Bool)

(declare-fun isEmpty!30895 (Option!14434) Bool)

(assert (=> d!1596493 (= (isDefined!11346 lt!2048748) (not (isEmpty!30895 lt!2048748)))))

(declare-fun bs!1182759 () Bool)

(assert (= bs!1182759 d!1596493))

(declare-fun m!5986644 () Bool)

(assert (=> bs!1182759 m!5986644))

(assert (=> b!4962100 d!1596493))

(declare-fun d!1596495 () Bool)

(declare-fun list!18344 (Conc!15135) List!57535)

(assert (=> d!1596495 (= (list!18342 (_2!34357 lt!2048746)) (list!18344 (c!846646 (_2!34357 lt!2048746))))))

(declare-fun bs!1182760 () Bool)

(assert (= bs!1182760 d!1596495))

(declare-fun m!5986646 () Bool)

(assert (=> bs!1182760 m!5986646))

(assert (=> b!4962088 d!1596495))

(declare-fun d!1596497 () Bool)

(declare-fun e!3101748 () Bool)

(assert (=> d!1596497 e!3101748))

(declare-fun res!2118023 () Bool)

(assert (=> d!1596497 (=> res!2118023 e!3101748)))

(declare-fun lt!2048781 () Bool)

(assert (=> d!1596497 (= res!2118023 (not lt!2048781))))

(declare-fun drop!2340 (List!57535 Int) List!57535)

(declare-fun size!38041 (List!57535) Int)

(assert (=> d!1596497 (= lt!2048781 (= lt!2048747 (drop!2340 (list!18342 totalInput!464) (- (size!38041 (list!18342 totalInput!464)) (size!38041 lt!2048747)))))))

(assert (=> d!1596497 (= (isSuffix!1182 lt!2048747 (list!18342 totalInput!464)) lt!2048781)))

(declare-fun b!4962171 () Bool)

(assert (=> b!4962171 (= e!3101748 (>= (size!38041 (list!18342 totalInput!464)) (size!38041 lt!2048747)))))

(assert (= (and d!1596497 (not res!2118023)) b!4962171))

(assert (=> d!1596497 m!5986534))

(declare-fun m!5986648 () Bool)

(assert (=> d!1596497 m!5986648))

(declare-fun m!5986650 () Bool)

(assert (=> d!1596497 m!5986650))

(assert (=> d!1596497 m!5986534))

(declare-fun m!5986652 () Bool)

(assert (=> d!1596497 m!5986652))

(assert (=> b!4962171 m!5986534))

(assert (=> b!4962171 m!5986648))

(assert (=> b!4962171 m!5986650))

(assert (=> b!4962098 d!1596497))

(declare-fun d!1596499 () Bool)

(assert (=> d!1596499 (= (list!18342 totalInput!464) (list!18344 (c!846646 totalInput!464)))))

(declare-fun bs!1182761 () Bool)

(assert (= bs!1182761 d!1596499))

(declare-fun m!5986654 () Bool)

(assert (=> bs!1182761 m!5986654))

(assert (=> b!4962098 d!1596499))

(declare-fun d!1596501 () Bool)

(assert (=> d!1596501 (= (list!18342 input!1342) (list!18344 (c!846646 input!1342)))))

(declare-fun bs!1182762 () Bool)

(assert (= bs!1182762 d!1596501))

(declare-fun m!5986656 () Bool)

(assert (=> bs!1182762 m!5986656))

(assert (=> b!4962098 d!1596501))

(declare-fun d!1596503 () Bool)

(declare-fun c!846655 () Bool)

(assert (=> d!1596503 (= c!846655 (is-IntegerValue!26079 (value!268359 (_1!34357 (v!50417 err!4581)))))))

(declare-fun e!3101757 () Bool)

(assert (=> d!1596503 (= (inv!21 (value!268359 (_1!34357 (v!50417 err!4581)))) e!3101757)))

(declare-fun b!4962182 () Bool)

(declare-fun inv!16 (TokenValue!8693) Bool)

(assert (=> b!4962182 (= e!3101757 (inv!16 (value!268359 (_1!34357 (v!50417 err!4581)))))))

(declare-fun b!4962183 () Bool)

(declare-fun res!2118026 () Bool)

(declare-fun e!3101756 () Bool)

(assert (=> b!4962183 (=> res!2118026 e!3101756)))

(assert (=> b!4962183 (= res!2118026 (not (is-IntegerValue!26081 (value!268359 (_1!34357 (v!50417 err!4581))))))))

(declare-fun e!3101755 () Bool)

(assert (=> b!4962183 (= e!3101755 e!3101756)))

(declare-fun b!4962184 () Bool)

(assert (=> b!4962184 (= e!3101757 e!3101755)))

(declare-fun c!846656 () Bool)

(assert (=> b!4962184 (= c!846656 (is-IntegerValue!26080 (value!268359 (_1!34357 (v!50417 err!4581)))))))

(declare-fun b!4962185 () Bool)

(declare-fun inv!17 (TokenValue!8693) Bool)

(assert (=> b!4962185 (= e!3101755 (inv!17 (value!268359 (_1!34357 (v!50417 err!4581)))))))

(declare-fun b!4962186 () Bool)

(declare-fun inv!15 (TokenValue!8693) Bool)

(assert (=> b!4962186 (= e!3101756 (inv!15 (value!268359 (_1!34357 (v!50417 err!4581)))))))

(assert (= (and d!1596503 c!846655) b!4962182))

(assert (= (and d!1596503 (not c!846655)) b!4962184))

(assert (= (and b!4962184 c!846656) b!4962185))

(assert (= (and b!4962184 (not c!846656)) b!4962183))

(assert (= (and b!4962183 (not res!2118026)) b!4962186))

(declare-fun m!5986658 () Bool)

(assert (=> b!4962182 m!5986658))

(declare-fun m!5986660 () Bool)

(assert (=> b!4962185 m!5986660))

(declare-fun m!5986662 () Bool)

(assert (=> b!4962186 m!5986662))

(assert (=> b!4962087 d!1596503))

(declare-fun d!1596505 () Bool)

(assert (=> d!1596505 true))

(declare-fun lt!2048807 () Bool)

(declare-fun lambda!247237 () Int)

(declare-fun forall!13319 (List!57537 Int) Bool)

(assert (=> d!1596505 (= lt!2048807 (forall!13319 rulesArg!259 lambda!247237))))

(declare-fun e!3101800 () Bool)

(assert (=> d!1596505 (= lt!2048807 e!3101800)))

(declare-fun res!2118059 () Bool)

(assert (=> d!1596505 (=> res!2118059 e!3101800)))

(assert (=> d!1596505 (= res!2118059 (not (is-Cons!57413 rulesArg!259)))))

(assert (=> d!1596505 (= (rulesValidInductive!3286 thiss!15247 rulesArg!259) lt!2048807)))

(declare-fun b!4962248 () Bool)

(declare-fun e!3101799 () Bool)

(assert (=> b!4962248 (= e!3101800 e!3101799)))

(declare-fun res!2118060 () Bool)

(assert (=> b!4962248 (=> (not res!2118060) (not e!3101799))))

(declare-fun ruleValid!3793 (LexerInterface!7975 Rule!16566) Bool)

(assert (=> b!4962248 (= res!2118060 (ruleValid!3793 thiss!15247 (h!63861 rulesArg!259)))))

(declare-fun b!4962249 () Bool)

(assert (=> b!4962249 (= e!3101799 (rulesValidInductive!3286 thiss!15247 (t!368115 rulesArg!259)))))

(assert (= (and d!1596505 (not res!2118059)) b!4962248))

(assert (= (and b!4962248 res!2118060) b!4962249))

(declare-fun m!5986710 () Bool)

(assert (=> d!1596505 m!5986710))

(declare-fun m!5986712 () Bool)

(assert (=> b!4962248 m!5986712))

(declare-fun m!5986714 () Bool)

(assert (=> b!4962249 m!5986714))

(assert (=> b!4962097 d!1596505))

(declare-fun d!1596531 () Bool)

(assert (=> d!1596531 (= (inv!74997 (tag!9247 (rule!11615 (_1!34357 (v!50417 err!4581))))) (= (mod (str.len (value!268358 (tag!9247 (rule!11615 (_1!34357 (v!50417 err!4581)))))) 2) 0))))

(assert (=> b!4962096 d!1596531))

(declare-fun d!1596533 () Bool)

(declare-fun res!2118063 () Bool)

(declare-fun e!3101803 () Bool)

(assert (=> d!1596533 (=> (not res!2118063) (not e!3101803))))

(declare-fun semiInverseModEq!3691 (Int Int) Bool)

(assert (=> d!1596533 (= res!2118063 (semiInverseModEq!3691 (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581))))) (toValue!11334 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581)))))))))

(assert (=> d!1596533 (= (inv!75001 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581))))) e!3101803)))

(declare-fun b!4962254 () Bool)

(declare-fun equivClasses!3539 (Int Int) Bool)

(assert (=> b!4962254 (= e!3101803 (equivClasses!3539 (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581))))) (toValue!11334 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581)))))))))

(assert (= (and d!1596533 res!2118063) b!4962254))

(declare-fun m!5986716 () Bool)

(assert (=> d!1596533 m!5986716))

(declare-fun m!5986718 () Bool)

(assert (=> b!4962254 m!5986718))

(assert (=> b!4962096 d!1596533))

(declare-fun d!1596535 () Bool)

(declare-fun isBalanced!4193 (Conc!15135) Bool)

(assert (=> d!1596535 (= (inv!75002 input!1342) (isBalanced!4193 (c!846646 input!1342)))))

(declare-fun bs!1182769 () Bool)

(assert (= bs!1182769 d!1596535))

(declare-fun m!5986720 () Bool)

(assert (=> bs!1182769 m!5986720))

(assert (=> start!523196 d!1596535))

(declare-fun d!1596537 () Bool)

(assert (=> d!1596537 (= (inv!75002 totalInput!464) (isBalanced!4193 (c!846646 totalInput!464)))))

(declare-fun bs!1182770 () Bool)

(assert (= bs!1182770 d!1596537))

(declare-fun m!5986722 () Bool)

(assert (=> bs!1182770 m!5986722))

(assert (=> start!523196 d!1596537))

(declare-fun d!1596539 () Bool)

(declare-fun c!846671 () Bool)

(assert (=> d!1596539 (= c!846671 (is-Node!15135 (c!846646 totalInput!464)))))

(declare-fun e!3101808 () Bool)

(assert (=> d!1596539 (= (inv!75000 (c!846646 totalInput!464)) e!3101808)))

(declare-fun b!4962261 () Bool)

(declare-fun inv!75008 (Conc!15135) Bool)

(assert (=> b!4962261 (= e!3101808 (inv!75008 (c!846646 totalInput!464)))))

(declare-fun b!4962262 () Bool)

(declare-fun e!3101809 () Bool)

(assert (=> b!4962262 (= e!3101808 e!3101809)))

(declare-fun res!2118066 () Bool)

(assert (=> b!4962262 (= res!2118066 (not (is-Leaf!25152 (c!846646 totalInput!464))))))

(assert (=> b!4962262 (=> res!2118066 e!3101809)))

(declare-fun b!4962263 () Bool)

(declare-fun inv!75009 (Conc!15135) Bool)

(assert (=> b!4962263 (= e!3101809 (inv!75009 (c!846646 totalInput!464)))))

(assert (= (and d!1596539 c!846671) b!4962261))

(assert (= (and d!1596539 (not c!846671)) b!4962262))

(assert (= (and b!4962262 (not res!2118066)) b!4962263))

(declare-fun m!5986724 () Bool)

(assert (=> b!4962261 m!5986724))

(declare-fun m!5986726 () Bool)

(assert (=> b!4962263 m!5986726))

(assert (=> b!4962085 d!1596539))

(declare-fun d!1596541 () Bool)

(declare-fun c!846672 () Bool)

(assert (=> d!1596541 (= c!846672 (is-Node!15135 (c!846646 (_2!34357 (v!50417 err!4581)))))))

(declare-fun e!3101810 () Bool)

(assert (=> d!1596541 (= (inv!75000 (c!846646 (_2!34357 (v!50417 err!4581)))) e!3101810)))

(declare-fun b!4962264 () Bool)

(assert (=> b!4962264 (= e!3101810 (inv!75008 (c!846646 (_2!34357 (v!50417 err!4581)))))))

(declare-fun b!4962265 () Bool)

(declare-fun e!3101811 () Bool)

(assert (=> b!4962265 (= e!3101810 e!3101811)))

(declare-fun res!2118067 () Bool)

(assert (=> b!4962265 (= res!2118067 (not (is-Leaf!25152 (c!846646 (_2!34357 (v!50417 err!4581))))))))

(assert (=> b!4962265 (=> res!2118067 e!3101811)))

(declare-fun b!4962266 () Bool)

(assert (=> b!4962266 (= e!3101811 (inv!75009 (c!846646 (_2!34357 (v!50417 err!4581)))))))

(assert (= (and d!1596541 c!846672) b!4962264))

(assert (= (and d!1596541 (not c!846672)) b!4962265))

(assert (= (and b!4962265 (not res!2118067)) b!4962266))

(declare-fun m!5986728 () Bool)

(assert (=> b!4962264 m!5986728))

(declare-fun m!5986730 () Bool)

(assert (=> b!4962266 m!5986730))

(assert (=> b!4962095 d!1596541))

(declare-fun d!1596543 () Bool)

(assert (=> d!1596543 (= (isDefined!11346 lt!2048744) (not (isEmpty!30895 lt!2048744)))))

(declare-fun bs!1182771 () Bool)

(assert (= bs!1182771 d!1596543))

(declare-fun m!5986732 () Bool)

(assert (=> bs!1182771 m!5986732))

(assert (=> b!4962094 d!1596543))

(declare-fun d!1596545 () Bool)

(declare-fun isEmpty!30896 (Option!14433) Bool)

(assert (=> d!1596545 (= (isDefined!11347 lt!2048750) (not (isEmpty!30896 lt!2048750)))))

(declare-fun bs!1182772 () Bool)

(assert (= bs!1182772 d!1596545))

(declare-fun m!5986734 () Bool)

(assert (=> bs!1182772 m!5986734))

(assert (=> b!4962094 d!1596545))

(declare-fun d!1596547 () Bool)

(declare-fun lt!2048821 () Option!14434)

(assert (=> d!1596547 (= lt!2048821 (maxPrefix!4654 thiss!15247 rulesArg!259 lt!2048747))))

(declare-fun e!3101814 () Option!14434)

(assert (=> d!1596547 (= lt!2048821 e!3101814)))

(declare-fun c!846675 () Bool)

(assert (=> d!1596547 (= c!846675 (and (is-Cons!57413 rulesArg!259) (is-Nil!57413 (t!368115 rulesArg!259))))))

(declare-fun lt!2048822 () Unit!148306)

(declare-fun lt!2048819 () Unit!148306)

(assert (=> d!1596547 (= lt!2048822 lt!2048819)))

(assert (=> d!1596547 (isPrefix!5236 lt!2048747 lt!2048747)))

(assert (=> d!1596547 (= lt!2048819 (lemmaIsPrefixRefl!3560 lt!2048747 lt!2048747))))

(assert (=> d!1596547 (rulesValidInductive!3286 thiss!15247 rulesArg!259)))

(assert (=> d!1596547 (= (maxPrefixZipper!780 thiss!15247 rulesArg!259 lt!2048747) lt!2048821)))

(declare-fun call!346045 () Option!14434)

(declare-fun bm!346040 () Bool)

(declare-fun maxPrefixOneRuleZipper!290 (LexerInterface!7975 Rule!16566 List!57535) Option!14434)

(assert (=> bm!346040 (= call!346045 (maxPrefixOneRuleZipper!290 thiss!15247 (h!63861 rulesArg!259) lt!2048747))))

(declare-fun b!4962271 () Bool)

(assert (=> b!4962271 (= e!3101814 call!346045)))

(declare-fun b!4962272 () Bool)

(declare-fun lt!2048820 () Option!14434)

(declare-fun lt!2048818 () Option!14434)

(assert (=> b!4962272 (= e!3101814 (ite (and (is-None!14433 lt!2048820) (is-None!14433 lt!2048818)) None!14433 (ite (is-None!14433 lt!2048818) lt!2048820 (ite (is-None!14433 lt!2048820) lt!2048818 (ite (>= (size!38039 (_1!34358 (v!50418 lt!2048820))) (size!38039 (_1!34358 (v!50418 lt!2048818)))) lt!2048820 lt!2048818)))))))

(assert (=> b!4962272 (= lt!2048820 call!346045)))

(assert (=> b!4962272 (= lt!2048818 (maxPrefixZipper!780 thiss!15247 (t!368115 rulesArg!259) lt!2048747))))

(assert (= (and d!1596547 c!846675) b!4962271))

(assert (= (and d!1596547 (not c!846675)) b!4962272))

(assert (= (or b!4962271 b!4962272) bm!346040))

(assert (=> d!1596547 m!5986572))

(assert (=> d!1596547 m!5986552))

(assert (=> d!1596547 m!5986554))

(assert (=> d!1596547 m!5986540))

(declare-fun m!5986736 () Bool)

(assert (=> bm!346040 m!5986736))

(declare-fun m!5986738 () Bool)

(assert (=> b!4962272 m!5986738))

(assert (=> b!4962094 d!1596547))

(declare-fun d!1596549 () Bool)

(assert (=> d!1596549 (= (isEmpty!30893 rulesArg!259) (is-Nil!57413 rulesArg!259))))

(assert (=> b!4962105 d!1596549))

(declare-fun d!1596551 () Bool)

(declare-fun res!2118072 () Bool)

(declare-fun e!3101817 () Bool)

(assert (=> d!1596551 (=> (not res!2118072) (not e!3101817))))

(declare-fun isEmpty!30897 (List!57535) Bool)

(assert (=> d!1596551 (= res!2118072 (not (isEmpty!30897 (originalCharacters!8664 (_1!34357 (v!50417 err!4581))))))))

(assert (=> d!1596551 (= (inv!75003 (_1!34357 (v!50417 err!4581))) e!3101817)))

(declare-fun b!4962277 () Bool)

(declare-fun res!2118073 () Bool)

(assert (=> b!4962277 (=> (not res!2118073) (not e!3101817))))

(declare-fun dynLambda!23119 (Int TokenValue!8693) BalanceConc!29700)

(assert (=> b!4962277 (= res!2118073 (= (originalCharacters!8664 (_1!34357 (v!50417 err!4581))) (list!18342 (dynLambda!23119 (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581))))) (value!268359 (_1!34357 (v!50417 err!4581)))))))))

(declare-fun b!4962278 () Bool)

(assert (=> b!4962278 (= e!3101817 (= (size!38039 (_1!34357 (v!50417 err!4581))) (size!38041 (originalCharacters!8664 (_1!34357 (v!50417 err!4581))))))))

(assert (= (and d!1596551 res!2118072) b!4962277))

(assert (= (and b!4962277 res!2118073) b!4962278))

(declare-fun b_lambda!196455 () Bool)

(assert (=> (not b_lambda!196455) (not b!4962277)))

(declare-fun t!368124 () Bool)

(declare-fun tb!260147 () Bool)

(assert (=> (and b!4962103 (= (toChars!11193 (transformation!8383 (h!63861 rulesArg!259))) (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581)))))) t!368124) tb!260147))

(declare-fun b!4962283 () Bool)

(declare-fun e!3101820 () Bool)

(declare-fun tp!1392052 () Bool)

(assert (=> b!4962283 (= e!3101820 (and (inv!75000 (c!846646 (dynLambda!23119 (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581))))) (value!268359 (_1!34357 (v!50417 err!4581)))))) tp!1392052))))

(declare-fun result!325152 () Bool)

(assert (=> tb!260147 (= result!325152 (and (inv!75002 (dynLambda!23119 (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581))))) (value!268359 (_1!34357 (v!50417 err!4581))))) e!3101820))))

(assert (= tb!260147 b!4962283))

(declare-fun m!5986740 () Bool)

(assert (=> b!4962283 m!5986740))

(declare-fun m!5986742 () Bool)

(assert (=> tb!260147 m!5986742))

(assert (=> b!4962277 t!368124))

(declare-fun b_and!347539 () Bool)

(assert (= b_and!347521 (and (=> t!368124 result!325152) b_and!347539)))

(declare-fun t!368126 () Bool)

(declare-fun tb!260149 () Bool)

(assert (=> (and b!4962099 (= (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581))))) (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581)))))) t!368126) tb!260149))

(declare-fun result!325156 () Bool)

(assert (= result!325156 result!325152))

(assert (=> b!4962277 t!368126))

(declare-fun b_and!347541 () Bool)

(assert (= b_and!347525 (and (=> t!368126 result!325156) b_and!347541)))

(declare-fun m!5986744 () Bool)

(assert (=> d!1596551 m!5986744))

(declare-fun m!5986746 () Bool)

(assert (=> b!4962277 m!5986746))

(assert (=> b!4962277 m!5986746))

(declare-fun m!5986748 () Bool)

(assert (=> b!4962277 m!5986748))

(declare-fun m!5986750 () Bool)

(assert (=> b!4962278 m!5986750))

(assert (=> b!4962104 d!1596551))

(declare-fun d!1596553 () Bool)

(assert (=> d!1596553 (= (inv!75002 (_2!34357 (v!50417 err!4581))) (isBalanced!4193 (c!846646 (_2!34357 (v!50417 err!4581)))))))

(declare-fun bs!1182773 () Bool)

(assert (= bs!1182773 d!1596553))

(declare-fun m!5986752 () Bool)

(assert (=> bs!1182773 m!5986752))

(assert (=> b!4962104 d!1596553))

(declare-fun b!4962294 () Bool)

(declare-fun e!3101829 () Bool)

(declare-fun tail!9793 (List!57535) List!57535)

(assert (=> b!4962294 (= e!3101829 (isPrefix!5236 (tail!9793 lt!2048747) (tail!9793 lt!2048747)))))

(declare-fun b!4962293 () Bool)

(declare-fun res!2118085 () Bool)

(assert (=> b!4962293 (=> (not res!2118085) (not e!3101829))))

(declare-fun head!10660 (List!57535) C!27482)

(assert (=> b!4962293 (= res!2118085 (= (head!10660 lt!2048747) (head!10660 lt!2048747)))))

(declare-fun d!1596555 () Bool)

(declare-fun e!3101827 () Bool)

(assert (=> d!1596555 e!3101827))

(declare-fun res!2118083 () Bool)

(assert (=> d!1596555 (=> res!2118083 e!3101827)))

(declare-fun lt!2048825 () Bool)

(assert (=> d!1596555 (= res!2118083 (not lt!2048825))))

(declare-fun e!3101828 () Bool)

(assert (=> d!1596555 (= lt!2048825 e!3101828)))

(declare-fun res!2118082 () Bool)

(assert (=> d!1596555 (=> res!2118082 e!3101828)))

(assert (=> d!1596555 (= res!2118082 (is-Nil!57411 lt!2048747))))

(assert (=> d!1596555 (= (isPrefix!5236 lt!2048747 lt!2048747) lt!2048825)))

(declare-fun b!4962292 () Bool)

(assert (=> b!4962292 (= e!3101828 e!3101829)))

(declare-fun res!2118084 () Bool)

(assert (=> b!4962292 (=> (not res!2118084) (not e!3101829))))

(assert (=> b!4962292 (= res!2118084 (not (is-Nil!57411 lt!2048747)))))

(declare-fun b!4962295 () Bool)

(assert (=> b!4962295 (= e!3101827 (>= (size!38041 lt!2048747) (size!38041 lt!2048747)))))

(assert (= (and d!1596555 (not res!2118082)) b!4962292))

(assert (= (and b!4962292 res!2118084) b!4962293))

(assert (= (and b!4962293 res!2118085) b!4962294))

(assert (= (and d!1596555 (not res!2118083)) b!4962295))

(declare-fun m!5986754 () Bool)

(assert (=> b!4962294 m!5986754))

(assert (=> b!4962294 m!5986754))

(assert (=> b!4962294 m!5986754))

(assert (=> b!4962294 m!5986754))

(declare-fun m!5986756 () Bool)

(assert (=> b!4962294 m!5986756))

(declare-fun m!5986758 () Bool)

(assert (=> b!4962293 m!5986758))

(assert (=> b!4962293 m!5986758))

(assert (=> b!4962295 m!5986650))

(assert (=> b!4962295 m!5986650))

(assert (=> b!4962093 d!1596555))

(declare-fun d!1596557 () Bool)

(assert (=> d!1596557 (isPrefix!5236 lt!2048747 lt!2048747)))

(declare-fun lt!2048828 () Unit!148306)

(declare-fun choose!36640 (List!57535 List!57535) Unit!148306)

(assert (=> d!1596557 (= lt!2048828 (choose!36640 lt!2048747 lt!2048747))))

(assert (=> d!1596557 (= (lemmaIsPrefixRefl!3560 lt!2048747 lt!2048747) lt!2048828)))

(declare-fun bs!1182774 () Bool)

(assert (= bs!1182774 d!1596557))

(assert (=> bs!1182774 m!5986552))

(declare-fun m!5986760 () Bool)

(assert (=> bs!1182774 m!5986760))

(assert (=> b!4962093 d!1596557))

(declare-fun d!1596559 () Bool)

(assert (=> d!1596559 (= (get!19920 lt!2048750) (v!50417 lt!2048750))))

(assert (=> b!4962092 d!1596559))

(declare-fun d!1596561 () Bool)

(assert (=> d!1596561 (= (get!19919 lt!2048748) (v!50418 lt!2048748))))

(assert (=> b!4962092 d!1596561))

(declare-fun b!4962314 () Bool)

(declare-fun res!2118106 () Bool)

(declare-fun e!3101836 () Bool)

(assert (=> b!4962314 (=> (not res!2118106) (not e!3101836))))

(declare-fun lt!2048843 () Option!14434)

(declare-fun matchR!6628 (Regex!13616 List!57535) Bool)

(declare-fun charsOf!5431 (Token!15266) BalanceConc!29700)

(assert (=> b!4962314 (= res!2118106 (matchR!6628 (regex!8383 (rule!11615 (_1!34358 (get!19919 lt!2048843)))) (list!18342 (charsOf!5431 (_1!34358 (get!19919 lt!2048843))))))))

(declare-fun b!4962315 () Bool)

(declare-fun res!2118100 () Bool)

(assert (=> b!4962315 (=> (not res!2118100) (not e!3101836))))

(declare-fun apply!13896 (TokenValueInjection!16694 BalanceConc!29700) TokenValue!8693)

(declare-fun seqFromList!6028 (List!57535) BalanceConc!29700)

(assert (=> b!4962315 (= res!2118100 (= (value!268359 (_1!34358 (get!19919 lt!2048843))) (apply!13896 (transformation!8383 (rule!11615 (_1!34358 (get!19919 lt!2048843)))) (seqFromList!6028 (originalCharacters!8664 (_1!34358 (get!19919 lt!2048843)))))))))

(declare-fun b!4962316 () Bool)

(declare-fun res!2118102 () Bool)

(assert (=> b!4962316 (=> (not res!2118102) (not e!3101836))))

(assert (=> b!4962316 (= res!2118102 (< (size!38041 (_2!34358 (get!19919 lt!2048843))) (size!38041 lt!2048747)))))

(declare-fun b!4962317 () Bool)

(declare-fun e!3101837 () Bool)

(assert (=> b!4962317 (= e!3101837 e!3101836)))

(declare-fun res!2118101 () Bool)

(assert (=> b!4962317 (=> (not res!2118101) (not e!3101836))))

(assert (=> b!4962317 (= res!2118101 (isDefined!11346 lt!2048843))))

(declare-fun b!4962318 () Bool)

(declare-fun e!3101838 () Option!14434)

(declare-fun call!346048 () Option!14434)

(assert (=> b!4962318 (= e!3101838 call!346048)))

(declare-fun b!4962319 () Bool)

(declare-fun res!2118104 () Bool)

(assert (=> b!4962319 (=> (not res!2118104) (not e!3101836))))

(declare-fun ++!12526 (List!57535 List!57535) List!57535)

(assert (=> b!4962319 (= res!2118104 (= (++!12526 (list!18342 (charsOf!5431 (_1!34358 (get!19919 lt!2048843)))) (_2!34358 (get!19919 lt!2048843))) lt!2048747))))

(declare-fun d!1596563 () Bool)

(assert (=> d!1596563 e!3101837))

(declare-fun res!2118103 () Bool)

(assert (=> d!1596563 (=> res!2118103 e!3101837)))

(assert (=> d!1596563 (= res!2118103 (isEmpty!30895 lt!2048843))))

(assert (=> d!1596563 (= lt!2048843 e!3101838)))

(declare-fun c!846678 () Bool)

(assert (=> d!1596563 (= c!846678 (and (is-Cons!57413 rulesArg!259) (is-Nil!57413 (t!368115 rulesArg!259))))))

(declare-fun lt!2048842 () Unit!148306)

(declare-fun lt!2048839 () Unit!148306)

(assert (=> d!1596563 (= lt!2048842 lt!2048839)))

(assert (=> d!1596563 (isPrefix!5236 lt!2048747 lt!2048747)))

(assert (=> d!1596563 (= lt!2048839 (lemmaIsPrefixRefl!3560 lt!2048747 lt!2048747))))

(assert (=> d!1596563 (rulesValidInductive!3286 thiss!15247 rulesArg!259)))

(assert (=> d!1596563 (= (maxPrefix!4654 thiss!15247 rulesArg!259 lt!2048747) lt!2048843)))

(declare-fun b!4962320 () Bool)

(declare-fun contains!19532 (List!57537 Rule!16566) Bool)

(assert (=> b!4962320 (= e!3101836 (contains!19532 rulesArg!259 (rule!11615 (_1!34358 (get!19919 lt!2048843)))))))

(declare-fun bm!346043 () Bool)

(declare-fun maxPrefixOneRule!3621 (LexerInterface!7975 Rule!16566 List!57535) Option!14434)

(assert (=> bm!346043 (= call!346048 (maxPrefixOneRule!3621 thiss!15247 (h!63861 rulesArg!259) lt!2048747))))

(declare-fun b!4962321 () Bool)

(declare-fun res!2118105 () Bool)

(assert (=> b!4962321 (=> (not res!2118105) (not e!3101836))))

(assert (=> b!4962321 (= res!2118105 (= (list!18342 (charsOf!5431 (_1!34358 (get!19919 lt!2048843)))) (originalCharacters!8664 (_1!34358 (get!19919 lt!2048843)))))))

(declare-fun b!4962322 () Bool)

(declare-fun lt!2048841 () Option!14434)

(declare-fun lt!2048840 () Option!14434)

(assert (=> b!4962322 (= e!3101838 (ite (and (is-None!14433 lt!2048841) (is-None!14433 lt!2048840)) None!14433 (ite (is-None!14433 lt!2048840) lt!2048841 (ite (is-None!14433 lt!2048841) lt!2048840 (ite (>= (size!38039 (_1!34358 (v!50418 lt!2048841))) (size!38039 (_1!34358 (v!50418 lt!2048840)))) lt!2048841 lt!2048840)))))))

(assert (=> b!4962322 (= lt!2048841 call!346048)))

(assert (=> b!4962322 (= lt!2048840 (maxPrefix!4654 thiss!15247 (t!368115 rulesArg!259) lt!2048747))))

(assert (= (and d!1596563 c!846678) b!4962318))

(assert (= (and d!1596563 (not c!846678)) b!4962322))

(assert (= (or b!4962318 b!4962322) bm!346043))

(assert (= (and d!1596563 (not res!2118103)) b!4962317))

(assert (= (and b!4962317 res!2118101) b!4962321))

(assert (= (and b!4962321 res!2118105) b!4962316))

(assert (= (and b!4962316 res!2118102) b!4962319))

(assert (= (and b!4962319 res!2118104) b!4962315))

(assert (= (and b!4962315 res!2118100) b!4962314))

(assert (= (and b!4962314 res!2118106) b!4962320))

(declare-fun m!5986762 () Bool)

(assert (=> bm!346043 m!5986762))

(declare-fun m!5986764 () Bool)

(assert (=> b!4962316 m!5986764))

(declare-fun m!5986766 () Bool)

(assert (=> b!4962316 m!5986766))

(assert (=> b!4962316 m!5986650))

(assert (=> b!4962315 m!5986764))

(declare-fun m!5986768 () Bool)

(assert (=> b!4962315 m!5986768))

(assert (=> b!4962315 m!5986768))

(declare-fun m!5986770 () Bool)

(assert (=> b!4962315 m!5986770))

(assert (=> b!4962321 m!5986764))

(declare-fun m!5986772 () Bool)

(assert (=> b!4962321 m!5986772))

(assert (=> b!4962321 m!5986772))

(declare-fun m!5986774 () Bool)

(assert (=> b!4962321 m!5986774))

(declare-fun m!5986776 () Bool)

(assert (=> d!1596563 m!5986776))

(assert (=> d!1596563 m!5986552))

(assert (=> d!1596563 m!5986554))

(assert (=> d!1596563 m!5986540))

(declare-fun m!5986778 () Bool)

(assert (=> b!4962317 m!5986778))

(assert (=> b!4962320 m!5986764))

(declare-fun m!5986780 () Bool)

(assert (=> b!4962320 m!5986780))

(assert (=> b!4962314 m!5986764))

(assert (=> b!4962314 m!5986772))

(assert (=> b!4962314 m!5986772))

(assert (=> b!4962314 m!5986774))

(assert (=> b!4962314 m!5986774))

(declare-fun m!5986782 () Bool)

(assert (=> b!4962314 m!5986782))

(assert (=> b!4962319 m!5986764))

(assert (=> b!4962319 m!5986772))

(assert (=> b!4962319 m!5986772))

(assert (=> b!4962319 m!5986774))

(assert (=> b!4962319 m!5986774))

(declare-fun m!5986784 () Bool)

(assert (=> b!4962319 m!5986784))

(declare-fun m!5986786 () Bool)

(assert (=> b!4962322 m!5986786))

(assert (=> b!4962092 d!1596563))

(declare-fun d!1596565 () Bool)

(assert (=> d!1596565 (= (inv!74997 (tag!9247 (h!63861 rulesArg!259))) (= (mod (str.len (value!268358 (tag!9247 (h!63861 rulesArg!259)))) 2) 0))))

(assert (=> b!4962102 d!1596565))

(declare-fun d!1596567 () Bool)

(declare-fun res!2118107 () Bool)

(declare-fun e!3101839 () Bool)

(assert (=> d!1596567 (=> (not res!2118107) (not e!3101839))))

(assert (=> d!1596567 (= res!2118107 (semiInverseModEq!3691 (toChars!11193 (transformation!8383 (h!63861 rulesArg!259))) (toValue!11334 (transformation!8383 (h!63861 rulesArg!259)))))))

(assert (=> d!1596567 (= (inv!75001 (transformation!8383 (h!63861 rulesArg!259))) e!3101839)))

(declare-fun b!4962323 () Bool)

(assert (=> b!4962323 (= e!3101839 (equivClasses!3539 (toChars!11193 (transformation!8383 (h!63861 rulesArg!259))) (toValue!11334 (transformation!8383 (h!63861 rulesArg!259)))))))

(assert (= (and d!1596567 res!2118107) b!4962323))

(declare-fun m!5986788 () Bool)

(assert (=> d!1596567 m!5986788))

(declare-fun m!5986790 () Bool)

(assert (=> b!4962323 m!5986790))

(assert (=> b!4962102 d!1596567))

(declare-fun d!1596569 () Bool)

(assert (=> d!1596569 (= (get!19919 lt!2048744) (v!50418 lt!2048744))))

(assert (=> b!4962090 d!1596569))

(assert (=> b!4962090 d!1596559))

(declare-fun d!1596571 () Bool)

(declare-fun c!846679 () Bool)

(assert (=> d!1596571 (= c!846679 (is-Node!15135 (c!846646 input!1342)))))

(declare-fun e!3101840 () Bool)

(assert (=> d!1596571 (= (inv!75000 (c!846646 input!1342)) e!3101840)))

(declare-fun b!4962324 () Bool)

(assert (=> b!4962324 (= e!3101840 (inv!75008 (c!846646 input!1342)))))

(declare-fun b!4962325 () Bool)

(declare-fun e!3101841 () Bool)

(assert (=> b!4962325 (= e!3101840 e!3101841)))

(declare-fun res!2118108 () Bool)

(assert (=> b!4962325 (= res!2118108 (not (is-Leaf!25152 (c!846646 input!1342))))))

(assert (=> b!4962325 (=> res!2118108 e!3101841)))

(declare-fun b!4962326 () Bool)

(assert (=> b!4962326 (= e!3101841 (inv!75009 (c!846646 input!1342)))))

(assert (= (and d!1596571 c!846679) b!4962324))

(assert (= (and d!1596571 (not c!846679)) b!4962325))

(assert (= (and b!4962325 (not res!2118108)) b!4962326))

(declare-fun m!5986792 () Bool)

(assert (=> b!4962324 m!5986792))

(declare-fun m!5986794 () Bool)

(assert (=> b!4962326 m!5986794))

(assert (=> b!4962101 d!1596571))

(declare-fun e!3101846 () Bool)

(declare-fun tp!1392061 () Bool)

(declare-fun b!4962335 () Bool)

(declare-fun tp!1392060 () Bool)

(assert (=> b!4962335 (= e!3101846 (and (inv!75000 (left!41865 (c!846646 (_2!34357 (v!50417 err!4581))))) tp!1392061 (inv!75000 (right!42195 (c!846646 (_2!34357 (v!50417 err!4581))))) tp!1392060))))

(declare-fun b!4962337 () Bool)

(declare-fun e!3101847 () Bool)

(declare-fun tp!1392059 () Bool)

(assert (=> b!4962337 (= e!3101847 tp!1392059)))

(declare-fun b!4962336 () Bool)

(declare-fun inv!75010 (IArray!30331) Bool)

(assert (=> b!4962336 (= e!3101846 (and (inv!75010 (xs!18461 (c!846646 (_2!34357 (v!50417 err!4581))))) e!3101847))))

(assert (=> b!4962095 (= tp!1392007 (and (inv!75000 (c!846646 (_2!34357 (v!50417 err!4581)))) e!3101846))))

(assert (= (and b!4962095 (is-Node!15135 (c!846646 (_2!34357 (v!50417 err!4581))))) b!4962335))

(assert (= b!4962336 b!4962337))

(assert (= (and b!4962095 (is-Leaf!25152 (c!846646 (_2!34357 (v!50417 err!4581))))) b!4962336))

(declare-fun m!5986796 () Bool)

(assert (=> b!4962335 m!5986796))

(declare-fun m!5986798 () Bool)

(assert (=> b!4962335 m!5986798))

(declare-fun m!5986800 () Bool)

(assert (=> b!4962336 m!5986800))

(assert (=> b!4962095 m!5986574))

(declare-fun b!4962348 () Bool)

(declare-fun b_free!132675 () Bool)

(declare-fun b_next!133465 () Bool)

(assert (=> b!4962348 (= b_free!132675 (not b_next!133465))))

(declare-fun tp!1392073 () Bool)

(declare-fun b_and!347543 () Bool)

(assert (=> b!4962348 (= tp!1392073 b_and!347543)))

(declare-fun b_free!132677 () Bool)

(declare-fun b_next!133467 () Bool)

(assert (=> b!4962348 (= b_free!132677 (not b_next!133467))))

(declare-fun t!368128 () Bool)

(declare-fun tb!260151 () Bool)

(assert (=> (and b!4962348 (= (toChars!11193 (transformation!8383 (h!63861 (t!368115 rulesArg!259)))) (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581)))))) t!368128) tb!260151))

(declare-fun result!325162 () Bool)

(assert (= result!325162 result!325152))

(assert (=> b!4962277 t!368128))

(declare-fun b_and!347545 () Bool)

(declare-fun tp!1392070 () Bool)

(assert (=> b!4962348 (= tp!1392070 (and (=> t!368128 result!325162) b_and!347545))))

(declare-fun e!3101858 () Bool)

(assert (=> b!4962348 (= e!3101858 (and tp!1392073 tp!1392070))))

(declare-fun e!3101859 () Bool)

(declare-fun tp!1392071 () Bool)

(declare-fun b!4962347 () Bool)

(assert (=> b!4962347 (= e!3101859 (and tp!1392071 (inv!74997 (tag!9247 (h!63861 (t!368115 rulesArg!259)))) (inv!75001 (transformation!8383 (h!63861 (t!368115 rulesArg!259)))) e!3101858))))

(declare-fun b!4962346 () Bool)

(declare-fun e!3101857 () Bool)

(declare-fun tp!1392072 () Bool)

(assert (=> b!4962346 (= e!3101857 (and e!3101859 tp!1392072))))

(assert (=> b!4962089 (= tp!1392011 e!3101857)))

(assert (= b!4962347 b!4962348))

(assert (= b!4962346 b!4962347))

(assert (= (and b!4962089 (is-Cons!57413 (t!368115 rulesArg!259))) b!4962346))

(declare-fun m!5986802 () Bool)

(assert (=> b!4962347 m!5986802))

(declare-fun m!5986804 () Bool)

(assert (=> b!4962347 m!5986804))

(declare-fun b!4962353 () Bool)

(declare-fun e!3101862 () Bool)

(declare-fun tp_is_empty!36313 () Bool)

(declare-fun tp!1392076 () Bool)

(assert (=> b!4962353 (= e!3101862 (and tp_is_empty!36313 tp!1392076))))

(assert (=> b!4962087 (= tp!1392006 e!3101862)))

(assert (= (and b!4962087 (is-Cons!57411 (originalCharacters!8664 (_1!34357 (v!50417 err!4581))))) b!4962353))

(declare-fun b!4962364 () Bool)

(declare-fun e!3101865 () Bool)

(assert (=> b!4962364 (= e!3101865 tp_is_empty!36313)))

(declare-fun b!4962366 () Bool)

(declare-fun tp!1392089 () Bool)

(assert (=> b!4962366 (= e!3101865 tp!1392089)))

(declare-fun b!4962367 () Bool)

(declare-fun tp!1392087 () Bool)

(declare-fun tp!1392091 () Bool)

(assert (=> b!4962367 (= e!3101865 (and tp!1392087 tp!1392091))))

(assert (=> b!4962102 (= tp!1392009 e!3101865)))

(declare-fun b!4962365 () Bool)

(declare-fun tp!1392090 () Bool)

(declare-fun tp!1392088 () Bool)

(assert (=> b!4962365 (= e!3101865 (and tp!1392090 tp!1392088))))

(assert (= (and b!4962102 (is-ElementMatch!13616 (regex!8383 (h!63861 rulesArg!259)))) b!4962364))

(assert (= (and b!4962102 (is-Concat!22310 (regex!8383 (h!63861 rulesArg!259)))) b!4962365))

(assert (= (and b!4962102 (is-Star!13616 (regex!8383 (h!63861 rulesArg!259)))) b!4962366))

(assert (= (and b!4962102 (is-Union!13616 (regex!8383 (h!63861 rulesArg!259)))) b!4962367))

(declare-fun b!4962368 () Bool)

(declare-fun e!3101866 () Bool)

(assert (=> b!4962368 (= e!3101866 tp_is_empty!36313)))

(declare-fun b!4962370 () Bool)

(declare-fun tp!1392094 () Bool)

(assert (=> b!4962370 (= e!3101866 tp!1392094)))

(declare-fun b!4962371 () Bool)

(declare-fun tp!1392092 () Bool)

(declare-fun tp!1392096 () Bool)

(assert (=> b!4962371 (= e!3101866 (and tp!1392092 tp!1392096))))

(assert (=> b!4962096 (= tp!1392012 e!3101866)))

(declare-fun b!4962369 () Bool)

(declare-fun tp!1392095 () Bool)

(declare-fun tp!1392093 () Bool)

(assert (=> b!4962369 (= e!3101866 (and tp!1392095 tp!1392093))))

(assert (= (and b!4962096 (is-ElementMatch!13616 (regex!8383 (rule!11615 (_1!34357 (v!50417 err!4581)))))) b!4962368))

(assert (= (and b!4962096 (is-Concat!22310 (regex!8383 (rule!11615 (_1!34357 (v!50417 err!4581)))))) b!4962369))

(assert (= (and b!4962096 (is-Star!13616 (regex!8383 (rule!11615 (_1!34357 (v!50417 err!4581)))))) b!4962370))

(assert (= (and b!4962096 (is-Union!13616 (regex!8383 (rule!11615 (_1!34357 (v!50417 err!4581)))))) b!4962371))

(declare-fun b!4962372 () Bool)

(declare-fun e!3101867 () Bool)

(declare-fun tp!1392098 () Bool)

(declare-fun tp!1392099 () Bool)

(assert (=> b!4962372 (= e!3101867 (and (inv!75000 (left!41865 (c!846646 totalInput!464))) tp!1392099 (inv!75000 (right!42195 (c!846646 totalInput!464))) tp!1392098))))

(declare-fun b!4962374 () Bool)

(declare-fun e!3101868 () Bool)

(declare-fun tp!1392097 () Bool)

(assert (=> b!4962374 (= e!3101868 tp!1392097)))

(declare-fun b!4962373 () Bool)

(assert (=> b!4962373 (= e!3101867 (and (inv!75010 (xs!18461 (c!846646 totalInput!464))) e!3101868))))

(assert (=> b!4962085 (= tp!1392005 (and (inv!75000 (c!846646 totalInput!464)) e!3101867))))

(assert (= (and b!4962085 (is-Node!15135 (c!846646 totalInput!464))) b!4962372))

(assert (= b!4962373 b!4962374))

(assert (= (and b!4962085 (is-Leaf!25152 (c!846646 totalInput!464))) b!4962373))

(declare-fun m!5986806 () Bool)

(assert (=> b!4962372 m!5986806))

(declare-fun m!5986808 () Bool)

(assert (=> b!4962372 m!5986808))

(declare-fun m!5986810 () Bool)

(assert (=> b!4962373 m!5986810))

(assert (=> b!4962085 m!5986576))

(declare-fun tp!1392101 () Bool)

(declare-fun tp!1392102 () Bool)

(declare-fun b!4962375 () Bool)

(declare-fun e!3101869 () Bool)

(assert (=> b!4962375 (= e!3101869 (and (inv!75000 (left!41865 (c!846646 input!1342))) tp!1392102 (inv!75000 (right!42195 (c!846646 input!1342))) tp!1392101))))

(declare-fun b!4962377 () Bool)

(declare-fun e!3101870 () Bool)

(declare-fun tp!1392100 () Bool)

(assert (=> b!4962377 (= e!3101870 tp!1392100)))

(declare-fun b!4962376 () Bool)

(assert (=> b!4962376 (= e!3101869 (and (inv!75010 (xs!18461 (c!846646 input!1342))) e!3101870))))

(assert (=> b!4962101 (= tp!1392013 (and (inv!75000 (c!846646 input!1342)) e!3101869))))

(assert (= (and b!4962101 (is-Node!15135 (c!846646 input!1342))) b!4962375))

(assert (= b!4962376 b!4962377))

(assert (= (and b!4962101 (is-Leaf!25152 (c!846646 input!1342))) b!4962376))

(declare-fun m!5986812 () Bool)

(assert (=> b!4962375 m!5986812))

(declare-fun m!5986814 () Bool)

(assert (=> b!4962375 m!5986814))

(declare-fun m!5986816 () Bool)

(assert (=> b!4962376 m!5986816))

(assert (=> b!4962101 m!5986550))

(declare-fun b_lambda!196457 () Bool)

(assert (= b_lambda!196455 (or (and b!4962103 b_free!132661 (= (toChars!11193 (transformation!8383 (h!63861 rulesArg!259))) (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581))))))) (and b!4962099 b_free!132665) (and b!4962348 b_free!132677 (= (toChars!11193 (transformation!8383 (h!63861 (t!368115 rulesArg!259)))) (toChars!11193 (transformation!8383 (rule!11615 (_1!34357 (v!50417 err!4581))))))) b_lambda!196457)))

(push 1)

(assert (not b!4962293))

(assert (not b!4962369))

(assert b_and!347523)

(assert (not b_next!133455))

(assert (not b!4962185))

(assert (not b!4962254))

(assert (not bm!346040))

(assert (not d!1596551))

(assert (not b!4962261))

(assert (not bm!346043))

(assert (not d!1596501))

(assert (not d!1596553))

(assert (not b!4962376))

(assert (not b!4962353))

(assert (not b_next!133467))

(assert (not b!4962277))

(assert (not d!1596495))

(assert (not b!4962085))

(assert (not d!1596545))

(assert (not b!4962248))

(assert (not b!4962266))

(assert (not d!1596535))

(assert (not b!4962323))

(assert (not b!4962337))

(assert (not b!4962377))

(assert b_and!347539)

(assert b_and!347545)

(assert (not b!4962316))

(assert (not b!4962295))

(assert (not b!4962372))

(assert (not b!4962319))

(assert (not d!1596499))

(assert (not b!4962272))

(assert (not b!4962278))

(assert (not b!4962365))

(assert b_and!347541)

(assert (not b!4962370))

(assert (not b!4962264))

(assert (not b!4962283))

(assert (not b!4962294))

(assert (not b!4962321))

(assert (not b!4962367))

(assert (not b!4962375))

(assert (not b!4962336))

(assert (not d!1596567))

(assert (not b!4962101))

(assert (not b!4962263))

(assert (not b!4962095))

(assert b_and!347543)

(assert (not d!1596547))

(assert (not b_next!133451))

(assert (not b!4962186))

(assert tp_is_empty!36313)

(assert (not b_next!133465))

(assert (not d!1596537))

(assert (not b!4962315))

(assert (not b_next!133449))

(assert (not b!4962249))

(assert (not b_next!133453))

(assert (not b!4962171))

(assert (not b!4962324))

(assert b_and!347519)

(assert (not b!4962347))

(assert (not d!1596563))

(assert (not b!4962335))

(assert (not b!4962326))

(assert (not d!1596505))

(assert (not b!4962366))

(assert (not tb!260147))

(assert (not d!1596533))

(assert (not b!4962320))

(assert (not b!4962322))

(assert (not b!4962371))

(assert (not b!4962182))

(assert (not d!1596493))

(assert (not b!4962346))

(assert (not b!4962374))

(assert (not d!1596543))

(assert (not b!4962314))

(assert (not b!4962317))

(assert (not b!4962373))

(assert (not d!1596557))

(assert (not d!1596497))

(assert (not b_lambda!196457))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!133467))

(assert b_and!347523)

(assert b_and!347541)

(assert (not b_next!133455))

(assert (not b_next!133453))

(assert b_and!347519)

(assert b_and!347539)

(assert b_and!347545)

(assert b_and!347543)

(assert (not b_next!133451))

(assert (not b_next!133449))

(assert (not b_next!133465))

(check-sat)

(pop 1)

