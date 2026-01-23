; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508980 () Bool)

(assert start!508980)

(declare-fun b!4868405 () Bool)

(declare-fun b_free!130659 () Bool)

(declare-fun b_next!131449 () Bool)

(assert (=> b!4868405 (= b_free!130659 (not b_next!131449))))

(declare-fun tp!1369762 () Bool)

(declare-fun b_and!342791 () Bool)

(assert (=> b!4868405 (= tp!1369762 b_and!342791)))

(declare-fun b_free!130661 () Bool)

(declare-fun b_next!131451 () Bool)

(assert (=> b!4868405 (= b_free!130661 (not b_next!131451))))

(declare-fun tp!1369766 () Bool)

(declare-fun b_and!342793 () Bool)

(assert (=> b!4868405 (= tp!1369766 b_and!342793)))

(declare-fun b!4868401 () Bool)

(declare-fun e!3043519 () Bool)

(declare-fun e!3043517 () Bool)

(assert (=> b!4868401 (= e!3043519 e!3043517)))

(declare-fun res!2078220 () Bool)

(assert (=> b!4868401 (=> res!2078220 e!3043517)))

(declare-fun e!3043516 () Bool)

(assert (=> b!4868401 (= res!2078220 e!3043516)))

(declare-fun res!2078217 () Bool)

(assert (=> b!4868401 (=> (not res!2078217) (not e!3043516))))

(declare-datatypes ((List!56064 0))(
  ( (Nil!55940) (Cons!55940 (h!62388 (_ BitVec 16)) (t!363992 List!56064)) )
))
(declare-datatypes ((TokenValue!8342 0))(
  ( (FloatLiteralValue!16684 (text!58839 List!56064)) (TokenValueExt!8341 (__x!33977 Int)) (Broken!41710 (value!258028 List!56064)) (Object!8465) (End!8342) (Def!8342) (Underscore!8342) (Match!8342) (Else!8342) (Error!8342) (Case!8342) (If!8342) (Extends!8342) (Abstract!8342) (Class!8342) (Val!8342) (DelimiterValue!16684 (del!8402 List!56064)) (KeywordValue!8348 (value!258029 List!56064)) (CommentValue!16684 (value!258030 List!56064)) (WhitespaceValue!16684 (value!258031 List!56064)) (IndentationValue!8342 (value!258032 List!56064)) (String!63127) (Int32!8342) (Broken!41711 (value!258033 List!56064)) (Boolean!8343) (Unit!145949) (OperatorValue!8345 (op!8402 List!56064)) (IdentifierValue!16684 (value!258034 List!56064)) (IdentifierValue!16685 (value!258035 List!56064)) (WhitespaceValue!16685 (value!258036 List!56064)) (True!16684) (False!16684) (Broken!41712 (value!258037 List!56064)) (Broken!41713 (value!258038 List!56064)) (True!16685) (RightBrace!8342) (RightBracket!8342) (Colon!8342) (Null!8342) (Comma!8342) (LeftBracket!8342) (False!16685) (LeftBrace!8342) (ImaginaryLiteralValue!8342 (text!58840 List!56064)) (StringLiteralValue!25026 (value!258039 List!56064)) (EOFValue!8342 (value!258040 List!56064)) (IdentValue!8342 (value!258041 List!56064)) (DelimiterValue!16685 (value!258042 List!56064)) (DedentValue!8342 (value!258043 List!56064)) (NewLineValue!8342 (value!258044 List!56064)) (IntegerValue!25026 (value!258045 (_ BitVec 32)) (text!58841 List!56064)) (IntegerValue!25027 (value!258046 Int) (text!58842 List!56064)) (Times!8342) (Or!8342) (Equal!8342) (Minus!8342) (Broken!41714 (value!258047 List!56064)) (And!8342) (Div!8342) (LessEqual!8342) (Mod!8342) (Concat!21449) (Not!8342) (Plus!8342) (SpaceValue!8342 (value!258048 List!56064)) (IntegerValue!25028 (value!258049 Int) (text!58843 List!56064)) (StringLiteralValue!25027 (text!58844 List!56064)) (FloatLiteralValue!16685 (text!58845 List!56064)) (BytesLiteralValue!8342 (value!258050 List!56064)) (CommentValue!16685 (value!258051 List!56064)) (StringLiteralValue!25028 (value!258052 List!56064)) (ErrorTokenValue!8342 (msg!8403 List!56064)) )
))
(declare-datatypes ((C!26412 0))(
  ( (C!26413 (val!22528 Int)) )
))
(declare-datatypes ((List!56065 0))(
  ( (Nil!55941) (Cons!55941 (h!62389 C!26412) (t!363993 List!56065)) )
))
(declare-datatypes ((IArray!29207 0))(
  ( (IArray!29208 (innerList!14661 List!56065)) )
))
(declare-datatypes ((Conc!14573 0))(
  ( (Node!14573 (left!40633 Conc!14573) (right!40963 Conc!14573) (csize!29376 Int) (cheight!14784 Int)) (Leaf!24300 (xs!17881 IArray!29207) (csize!29377 Int)) (Empty!14573) )
))
(declare-datatypes ((BalanceConc!28588 0))(
  ( (BalanceConc!28589 (c!828058 Conc!14573)) )
))
(declare-datatypes ((TokenValueInjection!15992 0))(
  ( (TokenValueInjection!15993 (toValue!10899 Int) (toChars!10758 Int)) )
))
(declare-datatypes ((Regex!13107 0))(
  ( (ElementMatch!13107 (c!828059 C!26412)) (Concat!21450 (regOne!26726 Regex!13107) (regTwo!26726 Regex!13107)) (EmptyExpr!13107) (Star!13107 (reg!13436 Regex!13107)) (EmptyLang!13107) (Union!13107 (regOne!26727 Regex!13107) (regTwo!26727 Regex!13107)) )
))
(declare-datatypes ((String!63128 0))(
  ( (String!63129 (value!258053 String)) )
))
(declare-datatypes ((Rule!15864 0))(
  ( (Rule!15865 (regex!8032 Regex!13107) (tag!8896 String!63128) (isSeparator!8032 Bool) (transformation!8032 TokenValueInjection!15992)) )
))
(declare-datatypes ((Token!14648 0))(
  ( (Token!14649 (value!258054 TokenValue!8342) (rule!11164 Rule!15864) (size!36869 Int) (originalCharacters!8355 List!56065)) )
))
(declare-datatypes ((List!56066 0))(
  ( (Nil!55942) (Cons!55942 (h!62390 Token!14648) (t!363994 List!56066)) )
))
(declare-datatypes ((IArray!29209 0))(
  ( (IArray!29210 (innerList!14662 List!56066)) )
))
(declare-datatypes ((Conc!14574 0))(
  ( (Node!14574 (left!40634 Conc!14574) (right!40964 Conc!14574) (csize!29378 Int) (cheight!14785 Int)) (Leaf!24301 (xs!17882 IArray!29209) (csize!29379 Int)) (Empty!14574) )
))
(declare-datatypes ((BalanceConc!28590 0))(
  ( (BalanceConc!28591 (c!828060 Conc!14574)) )
))
(declare-fun size!36868 (BalanceConc!28590) Int)

(assert (=> b!4868401 (= res!2078217 (> (size!36868 (BalanceConc!28591 Empty!14574)) 0))))

(declare-fun b!4868402 () Bool)

(declare-fun e!3043515 () Bool)

(declare-fun totalInput!332 () BalanceConc!28588)

(declare-fun tp!1369767 () Bool)

(declare-fun inv!71852 (Conc!14573) Bool)

(assert (=> b!4868402 (= e!3043515 (and (inv!71852 (c!828058 totalInput!332)) tp!1369767))))

(declare-fun b!4868403 () Bool)

(declare-fun e!3043520 () Bool)

(declare-fun lt!1994850 () List!56065)

(declare-datatypes ((tuple2!59786 0))(
  ( (tuple2!59787 (_1!33196 List!56066) (_2!33196 List!56065)) )
))
(declare-fun lt!1994852 () tuple2!59786)

(assert (=> b!4868403 (= e!3043520 (not (= lt!1994850 (_2!33196 lt!1994852))))))

(declare-fun b!4868404 () Bool)

(declare-fun res!2078215 () Bool)

(declare-fun e!3043523 () Bool)

(assert (=> b!4868404 (=> (not res!2078215) (not e!3043523))))

(declare-datatypes ((LexerInterface!7624 0))(
  ( (LexerInterfaceExt!7621 (__x!33978 Int)) (Lexer!7622) )
))
(declare-fun thiss!11777 () LexerInterface!7624)

(declare-datatypes ((List!56067 0))(
  ( (Nil!55943) (Cons!55943 (h!62391 Rule!15864) (t!363995 List!56067)) )
))
(declare-fun rules!1248 () List!56067)

(declare-fun rulesInvariant!6722 (LexerInterface!7624 List!56067) Bool)

(assert (=> b!4868404 (= res!2078215 (rulesInvariant!6722 thiss!11777 rules!1248))))

(declare-fun tp!1369763 () Bool)

(declare-fun b!4868406 () Bool)

(declare-fun e!3043513 () Bool)

(declare-fun e!3043522 () Bool)

(declare-fun inv!71848 (String!63128) Bool)

(declare-fun inv!71853 (TokenValueInjection!15992) Bool)

(assert (=> b!4868406 (= e!3043513 (and tp!1369763 (inv!71848 (tag!8896 (h!62391 rules!1248))) (inv!71853 (transformation!8032 (h!62391 rules!1248))) e!3043522))))

(declare-fun b!4868407 () Bool)

(declare-fun res!2078219 () Bool)

(assert (=> b!4868407 (=> (not res!2078219) (not e!3043523))))

(declare-fun isEmpty!29931 (List!56067) Bool)

(assert (=> b!4868407 (= res!2078219 (not (isEmpty!29931 rules!1248)))))

(declare-fun b!4868408 () Bool)

(assert (=> b!4868408 (= e!3043516 true)))

(declare-fun lt!1994851 () Int)

(declare-fun input!661 () BalanceConc!28588)

(declare-fun size!36870 (BalanceConc!28588) Int)

(assert (=> b!4868408 (= lt!1994851 (size!36870 input!661))))

(declare-fun b!4868409 () Bool)

(declare-fun res!2078214 () Bool)

(assert (=> b!4868409 (=> (not res!2078214) (not e!3043519))))

(get-info :version)

(declare-datatypes ((tuple2!59788 0))(
  ( (tuple2!59789 (_1!33197 Token!14648) (_2!33197 BalanceConc!28588)) )
))
(declare-datatypes ((Option!13779 0))(
  ( (None!13778) (Some!13778 (v!49696 tuple2!59788)) )
))
(declare-fun maxPrefixZipperSequenceV2!629 (LexerInterface!7624 List!56067 BalanceConc!28588 BalanceConc!28588) Option!13779)

(assert (=> b!4868409 (= res!2078214 (not ((_ is Some!13778) (maxPrefixZipperSequenceV2!629 thiss!11777 rules!1248 input!661 totalInput!332))))))

(declare-fun b!4868410 () Bool)

(assert (=> b!4868410 (= e!3043517 e!3043520)))

(declare-fun res!2078218 () Bool)

(assert (=> b!4868410 (=> res!2078218 e!3043520)))

(declare-fun list!17491 (BalanceConc!28590) List!56066)

(assert (=> b!4868410 (= res!2078218 (not (= (list!17491 (BalanceConc!28591 Empty!14574)) (_1!33196 lt!1994852))))))

(declare-fun lexList!2103 (LexerInterface!7624 List!56067 List!56065) tuple2!59786)

(assert (=> b!4868410 (= lt!1994852 (lexList!2103 thiss!11777 rules!1248 lt!1994850))))

(declare-fun b!4868411 () Bool)

(declare-fun e!3043514 () Bool)

(declare-fun tp!1369765 () Bool)

(assert (=> b!4868411 (= e!3043514 (and e!3043513 tp!1369765))))

(declare-fun b!4868412 () Bool)

(declare-fun e!3043521 () Bool)

(declare-fun tp!1369764 () Bool)

(assert (=> b!4868412 (= e!3043521 (and (inv!71852 (c!828058 input!661)) tp!1369764))))

(declare-fun b!4868413 () Bool)

(assert (=> b!4868413 (= e!3043523 e!3043519)))

(declare-fun res!2078221 () Bool)

(assert (=> b!4868413 (=> (not res!2078221) (not e!3043519))))

(declare-fun isSuffix!1061 (List!56065 List!56065) Bool)

(declare-fun list!17492 (BalanceConc!28588) List!56065)

(assert (=> b!4868413 (= res!2078221 (isSuffix!1061 lt!1994850 (list!17492 totalInput!332)))))

(assert (=> b!4868413 (= lt!1994850 (list!17492 input!661))))

(assert (=> b!4868405 (= e!3043522 (and tp!1369762 tp!1369766))))

(declare-fun res!2078216 () Bool)

(assert (=> start!508980 (=> (not res!2078216) (not e!3043523))))

(assert (=> start!508980 (= res!2078216 ((_ is Lexer!7622) thiss!11777))))

(assert (=> start!508980 e!3043523))

(assert (=> start!508980 true))

(assert (=> start!508980 e!3043514))

(declare-fun inv!71854 (BalanceConc!28588) Bool)

(assert (=> start!508980 (and (inv!71854 totalInput!332) e!3043515)))

(assert (=> start!508980 (and (inv!71854 input!661) e!3043521)))

(assert (= (and start!508980 res!2078216) b!4868407))

(assert (= (and b!4868407 res!2078219) b!4868404))

(assert (= (and b!4868404 res!2078215) b!4868413))

(assert (= (and b!4868413 res!2078221) b!4868409))

(assert (= (and b!4868409 res!2078214) b!4868401))

(assert (= (and b!4868401 res!2078217) b!4868408))

(assert (= (and b!4868401 (not res!2078220)) b!4868410))

(assert (= (and b!4868410 (not res!2078218)) b!4868403))

(assert (= b!4868406 b!4868405))

(assert (= b!4868411 b!4868406))

(assert (= (and start!508980 ((_ is Cons!55943) rules!1248)) b!4868411))

(assert (= start!508980 b!4868402))

(assert (= start!508980 b!4868412))

(declare-fun m!5868120 () Bool)

(assert (=> start!508980 m!5868120))

(declare-fun m!5868122 () Bool)

(assert (=> start!508980 m!5868122))

(declare-fun m!5868124 () Bool)

(assert (=> b!4868409 m!5868124))

(declare-fun m!5868126 () Bool)

(assert (=> b!4868402 m!5868126))

(declare-fun m!5868128 () Bool)

(assert (=> b!4868407 m!5868128))

(declare-fun m!5868130 () Bool)

(assert (=> b!4868401 m!5868130))

(declare-fun m!5868132 () Bool)

(assert (=> b!4868410 m!5868132))

(declare-fun m!5868134 () Bool)

(assert (=> b!4868410 m!5868134))

(declare-fun m!5868136 () Bool)

(assert (=> b!4868408 m!5868136))

(declare-fun m!5868138 () Bool)

(assert (=> b!4868413 m!5868138))

(assert (=> b!4868413 m!5868138))

(declare-fun m!5868140 () Bool)

(assert (=> b!4868413 m!5868140))

(declare-fun m!5868142 () Bool)

(assert (=> b!4868413 m!5868142))

(declare-fun m!5868144 () Bool)

(assert (=> b!4868406 m!5868144))

(declare-fun m!5868146 () Bool)

(assert (=> b!4868406 m!5868146))

(declare-fun m!5868148 () Bool)

(assert (=> b!4868404 m!5868148))

(declare-fun m!5868150 () Bool)

(assert (=> b!4868412 m!5868150))

(check-sat (not b!4868404) b_and!342793 (not b!4868406) (not start!508980) (not b!4868408) (not b_next!131449) (not b!4868413) (not b!4868412) (not b!4868407) b_and!342791 (not b_next!131451) (not b!4868409) (not b!4868411) (not b!4868401) (not b!4868402) (not b!4868410))
(check-sat b_and!342793 b_and!342791 (not b_next!131449) (not b_next!131451))
(get-model)

(declare-fun d!1563153 () Bool)

(declare-fun isBalanced!3956 (Conc!14573) Bool)

(assert (=> d!1563153 (= (inv!71854 totalInput!332) (isBalanced!3956 (c!828058 totalInput!332)))))

(declare-fun bs!1174457 () Bool)

(assert (= bs!1174457 d!1563153))

(declare-fun m!5868152 () Bool)

(assert (=> bs!1174457 m!5868152))

(assert (=> start!508980 d!1563153))

(declare-fun d!1563155 () Bool)

(assert (=> d!1563155 (= (inv!71854 input!661) (isBalanced!3956 (c!828058 input!661)))))

(declare-fun bs!1174458 () Bool)

(assert (= bs!1174458 d!1563155))

(declare-fun m!5868154 () Bool)

(assert (=> bs!1174458 m!5868154))

(assert (=> start!508980 d!1563155))

(declare-fun d!1563157 () Bool)

(declare-fun e!3043526 () Bool)

(assert (=> d!1563157 e!3043526))

(declare-fun res!2078226 () Bool)

(assert (=> d!1563157 (=> res!2078226 e!3043526)))

(declare-fun lt!1994855 () Bool)

(assert (=> d!1563157 (= res!2078226 (not lt!1994855))))

(declare-fun drop!2202 (List!56065 Int) List!56065)

(declare-fun size!36875 (List!56065) Int)

(assert (=> d!1563157 (= lt!1994855 (= lt!1994850 (drop!2202 (list!17492 totalInput!332) (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)))))))

(assert (=> d!1563157 (= (isSuffix!1061 lt!1994850 (list!17492 totalInput!332)) lt!1994855)))

(declare-fun b!4868416 () Bool)

(assert (=> b!4868416 (= e!3043526 (>= (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)))))

(assert (= (and d!1563157 (not res!2078226)) b!4868416))

(assert (=> d!1563157 m!5868138))

(declare-fun m!5868156 () Bool)

(assert (=> d!1563157 m!5868156))

(declare-fun m!5868158 () Bool)

(assert (=> d!1563157 m!5868158))

(assert (=> d!1563157 m!5868138))

(declare-fun m!5868160 () Bool)

(assert (=> d!1563157 m!5868160))

(assert (=> b!4868416 m!5868138))

(assert (=> b!4868416 m!5868156))

(assert (=> b!4868416 m!5868158))

(assert (=> b!4868413 d!1563157))

(declare-fun d!1563161 () Bool)

(declare-fun list!17495 (Conc!14573) List!56065)

(assert (=> d!1563161 (= (list!17492 totalInput!332) (list!17495 (c!828058 totalInput!332)))))

(declare-fun bs!1174459 () Bool)

(assert (= bs!1174459 d!1563161))

(declare-fun m!5868162 () Bool)

(assert (=> bs!1174459 m!5868162))

(assert (=> b!4868413 d!1563161))

(declare-fun d!1563163 () Bool)

(assert (=> d!1563163 (= (list!17492 input!661) (list!17495 (c!828058 input!661)))))

(declare-fun bs!1174460 () Bool)

(assert (= bs!1174460 d!1563163))

(declare-fun m!5868164 () Bool)

(assert (=> bs!1174460 m!5868164))

(assert (=> b!4868413 d!1563163))

(declare-fun d!1563165 () Bool)

(declare-fun lt!1994858 () Int)

(assert (=> d!1563165 (= lt!1994858 (size!36875 (list!17492 input!661)))))

(declare-fun size!36876 (Conc!14573) Int)

(assert (=> d!1563165 (= lt!1994858 (size!36876 (c!828058 input!661)))))

(assert (=> d!1563165 (= (size!36870 input!661) lt!1994858)))

(declare-fun bs!1174461 () Bool)

(assert (= bs!1174461 d!1563165))

(assert (=> bs!1174461 m!5868142))

(assert (=> bs!1174461 m!5868142))

(declare-fun m!5868170 () Bool)

(assert (=> bs!1174461 m!5868170))

(declare-fun m!5868172 () Bool)

(assert (=> bs!1174461 m!5868172))

(assert (=> b!4868408 d!1563165))

(declare-fun d!1563171 () Bool)

(declare-fun list!17496 (Conc!14574) List!56066)

(assert (=> d!1563171 (= (list!17491 (BalanceConc!28591 Empty!14574)) (list!17496 (c!828060 (BalanceConc!28591 Empty!14574))))))

(declare-fun bs!1174462 () Bool)

(assert (= bs!1174462 d!1563171))

(declare-fun m!5868178 () Bool)

(assert (=> bs!1174462 m!5868178))

(assert (=> b!4868410 d!1563171))

(declare-fun b!4868448 () Bool)

(declare-fun e!3043549 () tuple2!59786)

(assert (=> b!4868448 (= e!3043549 (tuple2!59787 Nil!55942 lt!1994850))))

(declare-fun b!4868449 () Bool)

(declare-fun e!3043548 () Bool)

(declare-fun lt!1994875 () tuple2!59786)

(assert (=> b!4868449 (= e!3043548 (= (_2!33196 lt!1994875) lt!1994850))))

(declare-fun b!4868450 () Bool)

(declare-fun e!3043550 () Bool)

(assert (=> b!4868450 (= e!3043548 e!3043550)))

(declare-fun res!2078238 () Bool)

(assert (=> b!4868450 (= res!2078238 (< (size!36875 (_2!33196 lt!1994875)) (size!36875 lt!1994850)))))

(assert (=> b!4868450 (=> (not res!2078238) (not e!3043550))))

(declare-fun b!4868451 () Bool)

(declare-datatypes ((tuple2!59792 0))(
  ( (tuple2!59793 (_1!33199 Token!14648) (_2!33199 List!56065)) )
))
(declare-datatypes ((Option!13781 0))(
  ( (None!13780) (Some!13780 (v!49698 tuple2!59792)) )
))
(declare-fun lt!1994876 () Option!13781)

(declare-fun lt!1994874 () tuple2!59786)

(assert (=> b!4868451 (= e!3043549 (tuple2!59787 (Cons!55942 (_1!33199 (v!49698 lt!1994876)) (_1!33196 lt!1994874)) (_2!33196 lt!1994874)))))

(assert (=> b!4868451 (= lt!1994874 (lexList!2103 thiss!11777 rules!1248 (_2!33199 (v!49698 lt!1994876))))))

(declare-fun d!1563175 () Bool)

(assert (=> d!1563175 e!3043548))

(declare-fun c!828072 () Bool)

(declare-fun size!36877 (List!56066) Int)

(assert (=> d!1563175 (= c!828072 (> (size!36877 (_1!33196 lt!1994875)) 0))))

(assert (=> d!1563175 (= lt!1994875 e!3043549)))

(declare-fun c!828071 () Bool)

(assert (=> d!1563175 (= c!828071 ((_ is Some!13780) lt!1994876))))

(declare-fun maxPrefix!4549 (LexerInterface!7624 List!56067 List!56065) Option!13781)

(assert (=> d!1563175 (= lt!1994876 (maxPrefix!4549 thiss!11777 rules!1248 lt!1994850))))

(assert (=> d!1563175 (= (lexList!2103 thiss!11777 rules!1248 lt!1994850) lt!1994875)))

(declare-fun b!4868452 () Bool)

(declare-fun isEmpty!29933 (List!56066) Bool)

(assert (=> b!4868452 (= e!3043550 (not (isEmpty!29933 (_1!33196 lt!1994875))))))

(assert (= (and d!1563175 c!828071) b!4868451))

(assert (= (and d!1563175 (not c!828071)) b!4868448))

(assert (= (and d!1563175 c!828072) b!4868450))

(assert (= (and d!1563175 (not c!828072)) b!4868449))

(assert (= (and b!4868450 res!2078238) b!4868452))

(declare-fun m!5868194 () Bool)

(assert (=> b!4868450 m!5868194))

(assert (=> b!4868450 m!5868158))

(declare-fun m!5868196 () Bool)

(assert (=> b!4868451 m!5868196))

(declare-fun m!5868198 () Bool)

(assert (=> d!1563175 m!5868198))

(declare-fun m!5868200 () Bool)

(assert (=> d!1563175 m!5868200))

(declare-fun m!5868202 () Bool)

(assert (=> b!4868452 m!5868202))

(assert (=> b!4868410 d!1563175))

(declare-fun b!4868547 () Bool)

(declare-fun res!2078278 () Bool)

(declare-fun e!3043620 () Bool)

(assert (=> b!4868547 (=> (not res!2078278) (not e!3043620))))

(declare-fun e!3043618 () Bool)

(assert (=> b!4868547 (= res!2078278 e!3043618)))

(declare-fun res!2078280 () Bool)

(assert (=> b!4868547 (=> res!2078280 e!3043618)))

(declare-fun lt!1994924 () Option!13779)

(declare-fun isDefined!10848 (Option!13779) Bool)

(assert (=> b!4868547 (= res!2078280 (not (isDefined!10848 lt!1994924)))))

(declare-fun e!3043617 () Bool)

(declare-fun b!4868548 () Bool)

(declare-fun get!19227 (Option!13779) tuple2!59788)

(declare-fun get!19228 (Option!13781) tuple2!59792)

(declare-fun maxPrefixZipper!563 (LexerInterface!7624 List!56067 List!56065) Option!13781)

(assert (=> b!4868548 (= e!3043617 (= (list!17492 (_2!33197 (get!19227 lt!1994924))) (_2!33199 (get!19228 (maxPrefixZipper!563 thiss!11777 rules!1248 (list!17492 input!661))))))))

(declare-fun b!4868549 () Bool)

(assert (=> b!4868549 (= e!3043618 e!3043617)))

(declare-fun res!2078281 () Bool)

(assert (=> b!4868549 (=> (not res!2078281) (not e!3043617))))

(assert (=> b!4868549 (= res!2078281 (= (_1!33197 (get!19227 lt!1994924)) (_1!33199 (get!19228 (maxPrefixZipper!563 thiss!11777 rules!1248 (list!17492 input!661))))))))

(declare-fun d!1563181 () Bool)

(assert (=> d!1563181 e!3043620))

(declare-fun res!2078276 () Bool)

(assert (=> d!1563181 (=> (not res!2078276) (not e!3043620))))

(declare-fun isDefined!10849 (Option!13781) Bool)

(assert (=> d!1563181 (= res!2078276 (= (isDefined!10848 lt!1994924) (isDefined!10849 (maxPrefixZipper!563 thiss!11777 rules!1248 (list!17492 input!661)))))))

(declare-fun e!3043615 () Option!13779)

(assert (=> d!1563181 (= lt!1994924 e!3043615)))

(declare-fun c!828082 () Bool)

(assert (=> d!1563181 (= c!828082 (and ((_ is Cons!55943) rules!1248) ((_ is Nil!55943) (t!363995 rules!1248))))))

(declare-datatypes ((Unit!145952 0))(
  ( (Unit!145953) )
))
(declare-fun lt!1994923 () Unit!145952)

(declare-fun lt!1994925 () Unit!145952)

(assert (=> d!1563181 (= lt!1994923 lt!1994925)))

(declare-fun lt!1994927 () List!56065)

(declare-fun lt!1994921 () List!56065)

(declare-fun isPrefix!4766 (List!56065 List!56065) Bool)

(assert (=> d!1563181 (isPrefix!4766 lt!1994927 lt!1994921)))

(declare-fun lemmaIsPrefixRefl!3163 (List!56065 List!56065) Unit!145952)

(assert (=> d!1563181 (= lt!1994925 (lemmaIsPrefixRefl!3163 lt!1994927 lt!1994921))))

(assert (=> d!1563181 (= lt!1994921 (list!17492 input!661))))

(assert (=> d!1563181 (= lt!1994927 (list!17492 input!661))))

(declare-fun rulesValidInductive!3021 (LexerInterface!7624 List!56067) Bool)

(assert (=> d!1563181 (rulesValidInductive!3021 thiss!11777 rules!1248)))

(assert (=> d!1563181 (= (maxPrefixZipperSequenceV2!629 thiss!11777 rules!1248 input!661 totalInput!332) lt!1994924)))

(declare-fun b!4868550 () Bool)

(declare-fun e!3043619 () Bool)

(declare-fun e!3043616 () Bool)

(assert (=> b!4868550 (= e!3043619 e!3043616)))

(declare-fun res!2078277 () Bool)

(assert (=> b!4868550 (=> (not res!2078277) (not e!3043616))))

(assert (=> b!4868550 (= res!2078277 (= (_1!33197 (get!19227 lt!1994924)) (_1!33199 (get!19228 (maxPrefix!4549 thiss!11777 rules!1248 (list!17492 input!661))))))))

(declare-fun b!4868551 () Bool)

(declare-fun call!338118 () Option!13779)

(assert (=> b!4868551 (= e!3043615 call!338118)))

(declare-fun b!4868552 () Bool)

(declare-fun lt!1994926 () Option!13779)

(declare-fun lt!1994922 () Option!13779)

(assert (=> b!4868552 (= e!3043615 (ite (and ((_ is None!13778) lt!1994926) ((_ is None!13778) lt!1994922)) None!13778 (ite ((_ is None!13778) lt!1994922) lt!1994926 (ite ((_ is None!13778) lt!1994926) lt!1994922 (ite (>= (size!36869 (_1!33197 (v!49696 lt!1994926))) (size!36869 (_1!33197 (v!49696 lt!1994922)))) lt!1994926 lt!1994922)))))))

(assert (=> b!4868552 (= lt!1994926 call!338118)))

(assert (=> b!4868552 (= lt!1994922 (maxPrefixZipperSequenceV2!629 thiss!11777 (t!363995 rules!1248) input!661 totalInput!332))))

(declare-fun bm!338113 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!258 (LexerInterface!7624 Rule!15864 BalanceConc!28588 BalanceConc!28588) Option!13779)

(assert (=> bm!338113 (= call!338118 (maxPrefixOneRuleZipperSequenceV2!258 thiss!11777 (h!62391 rules!1248) input!661 totalInput!332))))

(declare-fun b!4868553 () Bool)

(assert (=> b!4868553 (= e!3043620 e!3043619)))

(declare-fun res!2078279 () Bool)

(assert (=> b!4868553 (=> res!2078279 e!3043619)))

(assert (=> b!4868553 (= res!2078279 (not (isDefined!10848 lt!1994924)))))

(declare-fun b!4868554 () Bool)

(assert (=> b!4868554 (= e!3043616 (= (list!17492 (_2!33197 (get!19227 lt!1994924))) (_2!33199 (get!19228 (maxPrefix!4549 thiss!11777 rules!1248 (list!17492 input!661))))))))

(assert (= (and d!1563181 c!828082) b!4868551))

(assert (= (and d!1563181 (not c!828082)) b!4868552))

(assert (= (or b!4868551 b!4868552) bm!338113))

(assert (= (and d!1563181 res!2078276) b!4868547))

(assert (= (and b!4868547 (not res!2078280)) b!4868549))

(assert (= (and b!4868549 res!2078281) b!4868548))

(assert (= (and b!4868547 res!2078278) b!4868553))

(assert (= (and b!4868553 (not res!2078279)) b!4868550))

(assert (= (and b!4868550 res!2078277) b!4868554))

(declare-fun m!5868274 () Bool)

(assert (=> b!4868547 m!5868274))

(declare-fun m!5868276 () Bool)

(assert (=> d!1563181 m!5868276))

(assert (=> d!1563181 m!5868142))

(declare-fun m!5868278 () Bool)

(assert (=> d!1563181 m!5868278))

(assert (=> d!1563181 m!5868278))

(declare-fun m!5868280 () Bool)

(assert (=> d!1563181 m!5868280))

(assert (=> d!1563181 m!5868142))

(declare-fun m!5868282 () Bool)

(assert (=> d!1563181 m!5868282))

(assert (=> d!1563181 m!5868274))

(declare-fun m!5868284 () Bool)

(assert (=> d!1563181 m!5868284))

(declare-fun m!5868286 () Bool)

(assert (=> b!4868554 m!5868286))

(declare-fun m!5868288 () Bool)

(assert (=> b!4868554 m!5868288))

(declare-fun m!5868290 () Bool)

(assert (=> b!4868554 m!5868290))

(assert (=> b!4868554 m!5868142))

(assert (=> b!4868554 m!5868142))

(assert (=> b!4868554 m!5868286))

(declare-fun m!5868292 () Bool)

(assert (=> b!4868554 m!5868292))

(assert (=> b!4868553 m!5868274))

(declare-fun m!5868294 () Bool)

(assert (=> b!4868552 m!5868294))

(assert (=> b!4868550 m!5868292))

(assert (=> b!4868550 m!5868142))

(assert (=> b!4868550 m!5868142))

(assert (=> b!4868550 m!5868286))

(assert (=> b!4868550 m!5868286))

(assert (=> b!4868550 m!5868288))

(declare-fun m!5868296 () Bool)

(assert (=> bm!338113 m!5868296))

(assert (=> b!4868549 m!5868292))

(assert (=> b!4868549 m!5868142))

(assert (=> b!4868549 m!5868142))

(assert (=> b!4868549 m!5868278))

(assert (=> b!4868549 m!5868278))

(declare-fun m!5868298 () Bool)

(assert (=> b!4868549 m!5868298))

(assert (=> b!4868548 m!5868142))

(assert (=> b!4868548 m!5868278))

(assert (=> b!4868548 m!5868290))

(assert (=> b!4868548 m!5868142))

(assert (=> b!4868548 m!5868278))

(assert (=> b!4868548 m!5868298))

(assert (=> b!4868548 m!5868292))

(assert (=> b!4868409 d!1563181))

(declare-fun d!1563203 () Bool)

(declare-fun res!2078284 () Bool)

(declare-fun e!3043623 () Bool)

(assert (=> d!1563203 (=> (not res!2078284) (not e!3043623))))

(declare-fun rulesValid!3122 (LexerInterface!7624 List!56067) Bool)

(assert (=> d!1563203 (= res!2078284 (rulesValid!3122 thiss!11777 rules!1248))))

(assert (=> d!1563203 (= (rulesInvariant!6722 thiss!11777 rules!1248) e!3043623)))

(declare-fun b!4868557 () Bool)

(declare-datatypes ((List!56069 0))(
  ( (Nil!55945) (Cons!55945 (h!62393 String!63128) (t!363997 List!56069)) )
))
(declare-fun noDuplicateTag!3283 (LexerInterface!7624 List!56067 List!56069) Bool)

(assert (=> b!4868557 (= e!3043623 (noDuplicateTag!3283 thiss!11777 rules!1248 Nil!55945))))

(assert (= (and d!1563203 res!2078284) b!4868557))

(declare-fun m!5868300 () Bool)

(assert (=> d!1563203 m!5868300))

(declare-fun m!5868302 () Bool)

(assert (=> b!4868557 m!5868302))

(assert (=> b!4868404 d!1563203))

(declare-fun d!1563205 () Bool)

(assert (=> d!1563205 (= (inv!71848 (tag!8896 (h!62391 rules!1248))) (= (mod (str.len (value!258053 (tag!8896 (h!62391 rules!1248)))) 2) 0))))

(assert (=> b!4868406 d!1563205))

(declare-fun d!1563207 () Bool)

(declare-fun res!2078287 () Bool)

(declare-fun e!3043626 () Bool)

(assert (=> d!1563207 (=> (not res!2078287) (not e!3043626))))

(declare-fun semiInverseModEq!3546 (Int Int) Bool)

(assert (=> d!1563207 (= res!2078287 (semiInverseModEq!3546 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))))))

(assert (=> d!1563207 (= (inv!71853 (transformation!8032 (h!62391 rules!1248))) e!3043626)))

(declare-fun b!4868560 () Bool)

(declare-fun equivClasses!3425 (Int Int) Bool)

(assert (=> b!4868560 (= e!3043626 (equivClasses!3425 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))))))

(assert (= (and d!1563207 res!2078287) b!4868560))

(declare-fun m!5868304 () Bool)

(assert (=> d!1563207 m!5868304))

(declare-fun m!5868306 () Bool)

(assert (=> b!4868560 m!5868306))

(assert (=> b!4868406 d!1563207))

(declare-fun d!1563209 () Bool)

(assert (=> d!1563209 (= (isEmpty!29931 rules!1248) ((_ is Nil!55943) rules!1248))))

(assert (=> b!4868407 d!1563209))

(declare-fun d!1563211 () Bool)

(declare-fun c!828085 () Bool)

(assert (=> d!1563211 (= c!828085 ((_ is Node!14573) (c!828058 totalInput!332)))))

(declare-fun e!3043631 () Bool)

(assert (=> d!1563211 (= (inv!71852 (c!828058 totalInput!332)) e!3043631)))

(declare-fun b!4868567 () Bool)

(declare-fun inv!71858 (Conc!14573) Bool)

(assert (=> b!4868567 (= e!3043631 (inv!71858 (c!828058 totalInput!332)))))

(declare-fun b!4868568 () Bool)

(declare-fun e!3043632 () Bool)

(assert (=> b!4868568 (= e!3043631 e!3043632)))

(declare-fun res!2078290 () Bool)

(assert (=> b!4868568 (= res!2078290 (not ((_ is Leaf!24300) (c!828058 totalInput!332))))))

(assert (=> b!4868568 (=> res!2078290 e!3043632)))

(declare-fun b!4868569 () Bool)

(declare-fun inv!71859 (Conc!14573) Bool)

(assert (=> b!4868569 (= e!3043632 (inv!71859 (c!828058 totalInput!332)))))

(assert (= (and d!1563211 c!828085) b!4868567))

(assert (= (and d!1563211 (not c!828085)) b!4868568))

(assert (= (and b!4868568 (not res!2078290)) b!4868569))

(declare-fun m!5868308 () Bool)

(assert (=> b!4868567 m!5868308))

(declare-fun m!5868310 () Bool)

(assert (=> b!4868569 m!5868310))

(assert (=> b!4868402 d!1563211))

(declare-fun d!1563213 () Bool)

(declare-fun lt!1994930 () Int)

(assert (=> d!1563213 (= lt!1994930 (size!36877 (list!17491 (BalanceConc!28591 Empty!14574))))))

(declare-fun size!36878 (Conc!14574) Int)

(assert (=> d!1563213 (= lt!1994930 (size!36878 (c!828060 (BalanceConc!28591 Empty!14574))))))

(assert (=> d!1563213 (= (size!36868 (BalanceConc!28591 Empty!14574)) lt!1994930)))

(declare-fun bs!1174470 () Bool)

(assert (= bs!1174470 d!1563213))

(assert (=> bs!1174470 m!5868132))

(assert (=> bs!1174470 m!5868132))

(declare-fun m!5868312 () Bool)

(assert (=> bs!1174470 m!5868312))

(declare-fun m!5868314 () Bool)

(assert (=> bs!1174470 m!5868314))

(assert (=> b!4868401 d!1563213))

(declare-fun d!1563215 () Bool)

(declare-fun c!828086 () Bool)

(assert (=> d!1563215 (= c!828086 ((_ is Node!14573) (c!828058 input!661)))))

(declare-fun e!3043633 () Bool)

(assert (=> d!1563215 (= (inv!71852 (c!828058 input!661)) e!3043633)))

(declare-fun b!4868570 () Bool)

(assert (=> b!4868570 (= e!3043633 (inv!71858 (c!828058 input!661)))))

(declare-fun b!4868571 () Bool)

(declare-fun e!3043634 () Bool)

(assert (=> b!4868571 (= e!3043633 e!3043634)))

(declare-fun res!2078291 () Bool)

(assert (=> b!4868571 (= res!2078291 (not ((_ is Leaf!24300) (c!828058 input!661))))))

(assert (=> b!4868571 (=> res!2078291 e!3043634)))

(declare-fun b!4868572 () Bool)

(assert (=> b!4868572 (= e!3043634 (inv!71859 (c!828058 input!661)))))

(assert (= (and d!1563215 c!828086) b!4868570))

(assert (= (and d!1563215 (not c!828086)) b!4868571))

(assert (= (and b!4868571 (not res!2078291)) b!4868572))

(declare-fun m!5868316 () Bool)

(assert (=> b!4868570 m!5868316))

(declare-fun m!5868318 () Bool)

(assert (=> b!4868572 m!5868318))

(assert (=> b!4868412 d!1563215))

(declare-fun b!4868583 () Bool)

(declare-fun b_free!130667 () Bool)

(declare-fun b_next!131457 () Bool)

(assert (=> b!4868583 (= b_free!130667 (not b_next!131457))))

(declare-fun tp!1369816 () Bool)

(declare-fun b_and!342799 () Bool)

(assert (=> b!4868583 (= tp!1369816 b_and!342799)))

(declare-fun b_free!130669 () Bool)

(declare-fun b_next!131459 () Bool)

(assert (=> b!4868583 (= b_free!130669 (not b_next!131459))))

(declare-fun tp!1369818 () Bool)

(declare-fun b_and!342801 () Bool)

(assert (=> b!4868583 (= tp!1369818 b_and!342801)))

(declare-fun e!3043646 () Bool)

(assert (=> b!4868583 (= e!3043646 (and tp!1369816 tp!1369818))))

(declare-fun tp!1369817 () Bool)

(declare-fun b!4868582 () Bool)

(declare-fun e!3043643 () Bool)

(assert (=> b!4868582 (= e!3043643 (and tp!1369817 (inv!71848 (tag!8896 (h!62391 (t!363995 rules!1248)))) (inv!71853 (transformation!8032 (h!62391 (t!363995 rules!1248)))) e!3043646))))

(declare-fun b!4868581 () Bool)

(declare-fun e!3043644 () Bool)

(declare-fun tp!1369815 () Bool)

(assert (=> b!4868581 (= e!3043644 (and e!3043643 tp!1369815))))

(assert (=> b!4868411 (= tp!1369765 e!3043644)))

(assert (= b!4868582 b!4868583))

(assert (= b!4868581 b!4868582))

(assert (= (and b!4868411 ((_ is Cons!55943) (t!363995 rules!1248))) b!4868581))

(declare-fun m!5868320 () Bool)

(assert (=> b!4868582 m!5868320))

(declare-fun m!5868322 () Bool)

(assert (=> b!4868582 m!5868322))

(declare-fun b!4868597 () Bool)

(declare-fun e!3043649 () Bool)

(declare-fun tp!1369833 () Bool)

(declare-fun tp!1369831 () Bool)

(assert (=> b!4868597 (= e!3043649 (and tp!1369833 tp!1369831))))

(declare-fun b!4868595 () Bool)

(declare-fun tp!1369829 () Bool)

(declare-fun tp!1369832 () Bool)

(assert (=> b!4868595 (= e!3043649 (and tp!1369829 tp!1369832))))

(declare-fun b!4868596 () Bool)

(declare-fun tp!1369830 () Bool)

(assert (=> b!4868596 (= e!3043649 tp!1369830)))

(assert (=> b!4868406 (= tp!1369763 e!3043649)))

(declare-fun b!4868594 () Bool)

(declare-fun tp_is_empty!35663 () Bool)

(assert (=> b!4868594 (= e!3043649 tp_is_empty!35663)))

(assert (= (and b!4868406 ((_ is ElementMatch!13107) (regex!8032 (h!62391 rules!1248)))) b!4868594))

(assert (= (and b!4868406 ((_ is Concat!21450) (regex!8032 (h!62391 rules!1248)))) b!4868595))

(assert (= (and b!4868406 ((_ is Star!13107) (regex!8032 (h!62391 rules!1248)))) b!4868596))

(assert (= (and b!4868406 ((_ is Union!13107) (regex!8032 (h!62391 rules!1248)))) b!4868597))

(declare-fun tp!1369840 () Bool)

(declare-fun tp!1369842 () Bool)

(declare-fun b!4868606 () Bool)

(declare-fun e!3043655 () Bool)

(assert (=> b!4868606 (= e!3043655 (and (inv!71852 (left!40633 (c!828058 totalInput!332))) tp!1369840 (inv!71852 (right!40963 (c!828058 totalInput!332))) tp!1369842))))

(declare-fun b!4868608 () Bool)

(declare-fun e!3043654 () Bool)

(declare-fun tp!1369841 () Bool)

(assert (=> b!4868608 (= e!3043654 tp!1369841)))

(declare-fun b!4868607 () Bool)

(declare-fun inv!71860 (IArray!29207) Bool)

(assert (=> b!4868607 (= e!3043655 (and (inv!71860 (xs!17881 (c!828058 totalInput!332))) e!3043654))))

(assert (=> b!4868402 (= tp!1369767 (and (inv!71852 (c!828058 totalInput!332)) e!3043655))))

(assert (= (and b!4868402 ((_ is Node!14573) (c!828058 totalInput!332))) b!4868606))

(assert (= b!4868607 b!4868608))

(assert (= (and b!4868402 ((_ is Leaf!24300) (c!828058 totalInput!332))) b!4868607))

(declare-fun m!5868324 () Bool)

(assert (=> b!4868606 m!5868324))

(declare-fun m!5868326 () Bool)

(assert (=> b!4868606 m!5868326))

(declare-fun m!5868328 () Bool)

(assert (=> b!4868607 m!5868328))

(assert (=> b!4868402 m!5868126))

(declare-fun b!4868609 () Bool)

(declare-fun e!3043657 () Bool)

(declare-fun tp!1369845 () Bool)

(declare-fun tp!1369843 () Bool)

(assert (=> b!4868609 (= e!3043657 (and (inv!71852 (left!40633 (c!828058 input!661))) tp!1369843 (inv!71852 (right!40963 (c!828058 input!661))) tp!1369845))))

(declare-fun b!4868611 () Bool)

(declare-fun e!3043656 () Bool)

(declare-fun tp!1369844 () Bool)

(assert (=> b!4868611 (= e!3043656 tp!1369844)))

(declare-fun b!4868610 () Bool)

(assert (=> b!4868610 (= e!3043657 (and (inv!71860 (xs!17881 (c!828058 input!661))) e!3043656))))

(assert (=> b!4868412 (= tp!1369764 (and (inv!71852 (c!828058 input!661)) e!3043657))))

(assert (= (and b!4868412 ((_ is Node!14573) (c!828058 input!661))) b!4868609))

(assert (= b!4868610 b!4868611))

(assert (= (and b!4868412 ((_ is Leaf!24300) (c!828058 input!661))) b!4868610))

(declare-fun m!5868330 () Bool)

(assert (=> b!4868609 m!5868330))

(declare-fun m!5868332 () Bool)

(assert (=> b!4868609 m!5868332))

(declare-fun m!5868334 () Bool)

(assert (=> b!4868610 m!5868334))

(assert (=> b!4868412 m!5868150))

(check-sat (not b!4868581) (not b!4868610) (not b!4868611) (not d!1563163) b_and!342801 (not b!4868416) (not b!4868567) (not b!4868450) (not b!4868452) (not b_next!131449) (not b!4868595) (not b!4868572) (not d!1563203) (not b!4868412) (not b_next!131459) b_and!342791 (not d!1563155) (not b!4868552) (not d!1563157) (not b!4868609) (not b!4868557) tp_is_empty!35663 (not b!4868553) (not b!4868582) (not b!4868451) (not b_next!131457) (not b!4868606) (not b!4868549) (not d!1563213) (not b!4868550) (not d!1563153) (not d!1563165) (not b_next!131451) (not b!4868597) (not b!4868554) (not b!4868608) (not b!4868547) (not b!4868570) (not b!4868548) (not d!1563181) (not bm!338113) (not b!4868560) b_and!342793 (not b!4868596) (not b!4868569) (not d!1563161) (not d!1563207) (not b!4868607) (not d!1563171) (not d!1563175) b_and!342799 (not b!4868402))
(check-sat (not b_next!131457) b_and!342801 (not b_next!131451) b_and!342793 (not b_next!131449) b_and!342799 (not b_next!131459) b_and!342791)
(get-model)

(declare-fun d!1563225 () Bool)

(declare-fun lt!1994940 () Int)

(assert (=> d!1563225 (>= lt!1994940 0)))

(declare-fun e!3043679 () Int)

(assert (=> d!1563225 (= lt!1994940 e!3043679)))

(declare-fun c!828105 () Bool)

(assert (=> d!1563225 (= c!828105 ((_ is Nil!55942) (_1!33196 lt!1994875)))))

(assert (=> d!1563225 (= (size!36877 (_1!33196 lt!1994875)) lt!1994940)))

(declare-fun b!4868651 () Bool)

(assert (=> b!4868651 (= e!3043679 0)))

(declare-fun b!4868652 () Bool)

(assert (=> b!4868652 (= e!3043679 (+ 1 (size!36877 (t!363994 (_1!33196 lt!1994875)))))))

(assert (= (and d!1563225 c!828105) b!4868651))

(assert (= (and d!1563225 (not c!828105)) b!4868652))

(declare-fun m!5868348 () Bool)

(assert (=> b!4868652 m!5868348))

(assert (=> d!1563175 d!1563225))

(declare-fun call!338124 () Option!13781)

(declare-fun bm!338119 () Bool)

(declare-fun maxPrefixOneRule!3491 (LexerInterface!7624 Rule!15864 List!56065) Option!13781)

(assert (=> bm!338119 (= call!338124 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) lt!1994850))))

(declare-fun b!4868671 () Bool)

(declare-fun res!2078319 () Bool)

(declare-fun e!3043688 () Bool)

(assert (=> b!4868671 (=> (not res!2078319) (not e!3043688))))

(declare-fun lt!1994952 () Option!13781)

(declare-fun matchR!6492 (Regex!13107 List!56065) Bool)

(declare-fun charsOf!5337 (Token!14648) BalanceConc!28588)

(assert (=> b!4868671 (= res!2078319 (matchR!6492 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))))))

(declare-fun b!4868672 () Bool)

(declare-fun res!2078323 () Bool)

(assert (=> b!4868672 (=> (not res!2078323) (not e!3043688))))

(assert (=> b!4868672 (= res!2078323 (= (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952)))) (originalCharacters!8355 (_1!33199 (get!19228 lt!1994952)))))))

(declare-fun b!4868674 () Bool)

(declare-fun e!3043686 () Option!13781)

(assert (=> b!4868674 (= e!3043686 call!338124)))

(declare-fun b!4868675 () Bool)

(declare-fun res!2078321 () Bool)

(assert (=> b!4868675 (=> (not res!2078321) (not e!3043688))))

(declare-fun ++!12186 (List!56065 List!56065) List!56065)

(assert (=> b!4868675 (= res!2078321 (= (++!12186 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952)))) (_2!33199 (get!19228 lt!1994952))) lt!1994850))))

(declare-fun b!4868676 () Bool)

(declare-fun lt!1994955 () Option!13781)

(declare-fun lt!1994953 () Option!13781)

(assert (=> b!4868676 (= e!3043686 (ite (and ((_ is None!13780) lt!1994955) ((_ is None!13780) lt!1994953)) None!13780 (ite ((_ is None!13780) lt!1994953) lt!1994955 (ite ((_ is None!13780) lt!1994955) lt!1994953 (ite (>= (size!36869 (_1!33199 (v!49698 lt!1994955))) (size!36869 (_1!33199 (v!49698 lt!1994953)))) lt!1994955 lt!1994953)))))))

(assert (=> b!4868676 (= lt!1994955 call!338124)))

(assert (=> b!4868676 (= lt!1994953 (maxPrefix!4549 thiss!11777 (t!363995 rules!1248) lt!1994850))))

(declare-fun b!4868677 () Bool)

(declare-fun e!3043687 () Bool)

(assert (=> b!4868677 (= e!3043687 e!3043688)))

(declare-fun res!2078324 () Bool)

(assert (=> b!4868677 (=> (not res!2078324) (not e!3043688))))

(assert (=> b!4868677 (= res!2078324 (isDefined!10849 lt!1994952))))

(declare-fun b!4868678 () Bool)

(declare-fun res!2078322 () Bool)

(assert (=> b!4868678 (=> (not res!2078322) (not e!3043688))))

(declare-fun apply!13502 (TokenValueInjection!15992 BalanceConc!28588) TokenValue!8342)

(declare-fun seqFromList!5898 (List!56065) BalanceConc!28588)

(assert (=> b!4868678 (= res!2078322 (= (value!258054 (_1!33199 (get!19228 lt!1994952))) (apply!13502 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1994952)))))))))

(declare-fun b!4868679 () Bool)

(declare-fun contains!19394 (List!56067 Rule!15864) Bool)

(assert (=> b!4868679 (= e!3043688 (contains!19394 rules!1248 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))))

(declare-fun b!4868673 () Bool)

(declare-fun res!2078320 () Bool)

(assert (=> b!4868673 (=> (not res!2078320) (not e!3043688))))

(assert (=> b!4868673 (= res!2078320 (< (size!36875 (_2!33199 (get!19228 lt!1994952))) (size!36875 lt!1994850)))))

(declare-fun d!1563227 () Bool)

(assert (=> d!1563227 e!3043687))

(declare-fun res!2078318 () Bool)

(assert (=> d!1563227 (=> res!2078318 e!3043687)))

(declare-fun isEmpty!29936 (Option!13781) Bool)

(assert (=> d!1563227 (= res!2078318 (isEmpty!29936 lt!1994952))))

(assert (=> d!1563227 (= lt!1994952 e!3043686)))

(declare-fun c!828108 () Bool)

(assert (=> d!1563227 (= c!828108 (and ((_ is Cons!55943) rules!1248) ((_ is Nil!55943) (t!363995 rules!1248))))))

(declare-fun lt!1994954 () Unit!145952)

(declare-fun lt!1994951 () Unit!145952)

(assert (=> d!1563227 (= lt!1994954 lt!1994951)))

(assert (=> d!1563227 (isPrefix!4766 lt!1994850 lt!1994850)))

(assert (=> d!1563227 (= lt!1994951 (lemmaIsPrefixRefl!3163 lt!1994850 lt!1994850))))

(assert (=> d!1563227 (rulesValidInductive!3021 thiss!11777 rules!1248)))

(assert (=> d!1563227 (= (maxPrefix!4549 thiss!11777 rules!1248 lt!1994850) lt!1994952)))

(assert (= (and d!1563227 c!828108) b!4868674))

(assert (= (and d!1563227 (not c!828108)) b!4868676))

(assert (= (or b!4868674 b!4868676) bm!338119))

(assert (= (and d!1563227 (not res!2078318)) b!4868677))

(assert (= (and b!4868677 res!2078324) b!4868672))

(assert (= (and b!4868672 res!2078323) b!4868673))

(assert (= (and b!4868673 res!2078320) b!4868675))

(assert (= (and b!4868675 res!2078321) b!4868678))

(assert (= (and b!4868678 res!2078322) b!4868671))

(assert (= (and b!4868671 res!2078319) b!4868679))

(declare-fun m!5868350 () Bool)

(assert (=> b!4868676 m!5868350))

(declare-fun m!5868352 () Bool)

(assert (=> b!4868679 m!5868352))

(declare-fun m!5868354 () Bool)

(assert (=> b!4868679 m!5868354))

(assert (=> b!4868675 m!5868352))

(declare-fun m!5868356 () Bool)

(assert (=> b!4868675 m!5868356))

(assert (=> b!4868675 m!5868356))

(declare-fun m!5868358 () Bool)

(assert (=> b!4868675 m!5868358))

(assert (=> b!4868675 m!5868358))

(declare-fun m!5868360 () Bool)

(assert (=> b!4868675 m!5868360))

(assert (=> b!4868671 m!5868352))

(assert (=> b!4868671 m!5868356))

(assert (=> b!4868671 m!5868356))

(assert (=> b!4868671 m!5868358))

(assert (=> b!4868671 m!5868358))

(declare-fun m!5868362 () Bool)

(assert (=> b!4868671 m!5868362))

(declare-fun m!5868364 () Bool)

(assert (=> b!4868677 m!5868364))

(assert (=> b!4868673 m!5868352))

(declare-fun m!5868366 () Bool)

(assert (=> b!4868673 m!5868366))

(assert (=> b!4868673 m!5868158))

(assert (=> b!4868672 m!5868352))

(assert (=> b!4868672 m!5868356))

(assert (=> b!4868672 m!5868356))

(assert (=> b!4868672 m!5868358))

(assert (=> b!4868678 m!5868352))

(declare-fun m!5868368 () Bool)

(assert (=> b!4868678 m!5868368))

(assert (=> b!4868678 m!5868368))

(declare-fun m!5868370 () Bool)

(assert (=> b!4868678 m!5868370))

(declare-fun m!5868372 () Bool)

(assert (=> d!1563227 m!5868372))

(declare-fun m!5868374 () Bool)

(assert (=> d!1563227 m!5868374))

(declare-fun m!5868376 () Bool)

(assert (=> d!1563227 m!5868376))

(assert (=> d!1563227 m!5868276))

(declare-fun m!5868378 () Bool)

(assert (=> bm!338119 m!5868378))

(assert (=> d!1563175 d!1563227))

(declare-fun d!1563229 () Bool)

(assert (=> d!1563229 (= (isDefined!10849 (maxPrefixZipper!563 thiss!11777 rules!1248 (list!17492 input!661))) (not (isEmpty!29936 (maxPrefixZipper!563 thiss!11777 rules!1248 (list!17492 input!661)))))))

(declare-fun bs!1174471 () Bool)

(assert (= bs!1174471 d!1563229))

(assert (=> bs!1174471 m!5868278))

(declare-fun m!5868380 () Bool)

(assert (=> bs!1174471 m!5868380))

(assert (=> d!1563181 d!1563229))

(declare-fun lt!1994969 () Option!13781)

(declare-fun d!1563231 () Bool)

(assert (=> d!1563231 (= lt!1994969 (maxPrefix!4549 thiss!11777 rules!1248 (list!17492 input!661)))))

(declare-fun e!3043691 () Option!13781)

(assert (=> d!1563231 (= lt!1994969 e!3043691)))

(declare-fun c!828111 () Bool)

(assert (=> d!1563231 (= c!828111 (and ((_ is Cons!55943) rules!1248) ((_ is Nil!55943) (t!363995 rules!1248))))))

(declare-fun lt!1994970 () Unit!145952)

(declare-fun lt!1994966 () Unit!145952)

(assert (=> d!1563231 (= lt!1994970 lt!1994966)))

(assert (=> d!1563231 (isPrefix!4766 (list!17492 input!661) (list!17492 input!661))))

(assert (=> d!1563231 (= lt!1994966 (lemmaIsPrefixRefl!3163 (list!17492 input!661) (list!17492 input!661)))))

(assert (=> d!1563231 (rulesValidInductive!3021 thiss!11777 rules!1248)))

(assert (=> d!1563231 (= (maxPrefixZipper!563 thiss!11777 rules!1248 (list!17492 input!661)) lt!1994969)))

(declare-fun bm!338122 () Bool)

(declare-fun call!338127 () Option!13781)

(declare-fun maxPrefixOneRuleZipper!225 (LexerInterface!7624 Rule!15864 List!56065) Option!13781)

(assert (=> bm!338122 (= call!338127 (maxPrefixOneRuleZipper!225 thiss!11777 (h!62391 rules!1248) (list!17492 input!661)))))

(declare-fun b!4868684 () Bool)

(assert (=> b!4868684 (= e!3043691 call!338127)))

(declare-fun b!4868685 () Bool)

(declare-fun lt!1994967 () Option!13781)

(declare-fun lt!1994968 () Option!13781)

(assert (=> b!4868685 (= e!3043691 (ite (and ((_ is None!13780) lt!1994967) ((_ is None!13780) lt!1994968)) None!13780 (ite ((_ is None!13780) lt!1994968) lt!1994967 (ite ((_ is None!13780) lt!1994967) lt!1994968 (ite (>= (size!36869 (_1!33199 (v!49698 lt!1994967))) (size!36869 (_1!33199 (v!49698 lt!1994968)))) lt!1994967 lt!1994968)))))))

(assert (=> b!4868685 (= lt!1994967 call!338127)))

(assert (=> b!4868685 (= lt!1994968 (maxPrefixZipper!563 thiss!11777 (t!363995 rules!1248) (list!17492 input!661)))))

(assert (= (and d!1563231 c!828111) b!4868684))

(assert (= (and d!1563231 (not c!828111)) b!4868685))

(assert (= (or b!4868684 b!4868685) bm!338122))

(assert (=> d!1563231 m!5868142))

(assert (=> d!1563231 m!5868286))

(assert (=> d!1563231 m!5868142))

(assert (=> d!1563231 m!5868142))

(declare-fun m!5868382 () Bool)

(assert (=> d!1563231 m!5868382))

(assert (=> d!1563231 m!5868142))

(assert (=> d!1563231 m!5868142))

(declare-fun m!5868384 () Bool)

(assert (=> d!1563231 m!5868384))

(assert (=> d!1563231 m!5868276))

(assert (=> bm!338122 m!5868142))

(declare-fun m!5868386 () Bool)

(assert (=> bm!338122 m!5868386))

(assert (=> b!4868685 m!5868142))

(declare-fun m!5868388 () Bool)

(assert (=> b!4868685 m!5868388))

(assert (=> d!1563181 d!1563231))

(declare-fun d!1563233 () Bool)

(assert (=> d!1563233 true))

(declare-fun lt!1995025 () Bool)

(declare-fun lambda!243452 () Int)

(declare-fun forall!13050 (List!56067 Int) Bool)

(assert (=> d!1563233 (= lt!1995025 (forall!13050 rules!1248 lambda!243452))))

(declare-fun e!3043755 () Bool)

(assert (=> d!1563233 (= lt!1995025 e!3043755)))

(declare-fun res!2078405 () Bool)

(assert (=> d!1563233 (=> res!2078405 e!3043755)))

(assert (=> d!1563233 (= res!2078405 (not ((_ is Cons!55943) rules!1248)))))

(assert (=> d!1563233 (= (rulesValidInductive!3021 thiss!11777 rules!1248) lt!1995025)))

(declare-fun b!4868827 () Bool)

(declare-fun e!3043756 () Bool)

(assert (=> b!4868827 (= e!3043755 e!3043756)))

(declare-fun res!2078404 () Bool)

(assert (=> b!4868827 (=> (not res!2078404) (not e!3043756))))

(declare-fun ruleValid!3629 (LexerInterface!7624 Rule!15864) Bool)

(assert (=> b!4868827 (= res!2078404 (ruleValid!3629 thiss!11777 (h!62391 rules!1248)))))

(declare-fun b!4868828 () Bool)

(assert (=> b!4868828 (= e!3043756 (rulesValidInductive!3021 thiss!11777 (t!363995 rules!1248)))))

(assert (= (and d!1563233 (not res!2078405)) b!4868827))

(assert (= (and b!4868827 res!2078404) b!4868828))

(declare-fun m!5868546 () Bool)

(assert (=> d!1563233 m!5868546))

(declare-fun m!5868548 () Bool)

(assert (=> b!4868827 m!5868548))

(declare-fun m!5868550 () Bool)

(assert (=> b!4868828 m!5868550))

(assert (=> d!1563181 d!1563233))

(assert (=> d!1563181 d!1563163))

(declare-fun d!1563289 () Bool)

(declare-fun e!3043765 () Bool)

(assert (=> d!1563289 e!3043765))

(declare-fun res!2078417 () Bool)

(assert (=> d!1563289 (=> res!2078417 e!3043765)))

(declare-fun lt!1995028 () Bool)

(assert (=> d!1563289 (= res!2078417 (not lt!1995028))))

(declare-fun e!3043764 () Bool)

(assert (=> d!1563289 (= lt!1995028 e!3043764)))

(declare-fun res!2078416 () Bool)

(assert (=> d!1563289 (=> res!2078416 e!3043764)))

(assert (=> d!1563289 (= res!2078416 ((_ is Nil!55941) lt!1994927))))

(assert (=> d!1563289 (= (isPrefix!4766 lt!1994927 lt!1994921) lt!1995028)))

(declare-fun b!4868839 () Bool)

(declare-fun e!3043763 () Bool)

(assert (=> b!4868839 (= e!3043764 e!3043763)))

(declare-fun res!2078414 () Bool)

(assert (=> b!4868839 (=> (not res!2078414) (not e!3043763))))

(assert (=> b!4868839 (= res!2078414 (not ((_ is Nil!55941) lt!1994921)))))

(declare-fun b!4868842 () Bool)

(assert (=> b!4868842 (= e!3043765 (>= (size!36875 lt!1994921) (size!36875 lt!1994927)))))

(declare-fun b!4868840 () Bool)

(declare-fun res!2078415 () Bool)

(assert (=> b!4868840 (=> (not res!2078415) (not e!3043763))))

(declare-fun head!10413 (List!56065) C!26412)

(assert (=> b!4868840 (= res!2078415 (= (head!10413 lt!1994927) (head!10413 lt!1994921)))))

(declare-fun b!4868841 () Bool)

(declare-fun tail!9559 (List!56065) List!56065)

(assert (=> b!4868841 (= e!3043763 (isPrefix!4766 (tail!9559 lt!1994927) (tail!9559 lt!1994921)))))

(assert (= (and d!1563289 (not res!2078416)) b!4868839))

(assert (= (and b!4868839 res!2078414) b!4868840))

(assert (= (and b!4868840 res!2078415) b!4868841))

(assert (= (and d!1563289 (not res!2078417)) b!4868842))

(declare-fun m!5868552 () Bool)

(assert (=> b!4868842 m!5868552))

(declare-fun m!5868554 () Bool)

(assert (=> b!4868842 m!5868554))

(declare-fun m!5868556 () Bool)

(assert (=> b!4868840 m!5868556))

(declare-fun m!5868558 () Bool)

(assert (=> b!4868840 m!5868558))

(declare-fun m!5868560 () Bool)

(assert (=> b!4868841 m!5868560))

(declare-fun m!5868562 () Bool)

(assert (=> b!4868841 m!5868562))

(assert (=> b!4868841 m!5868560))

(assert (=> b!4868841 m!5868562))

(declare-fun m!5868564 () Bool)

(assert (=> b!4868841 m!5868564))

(assert (=> d!1563181 d!1563289))

(declare-fun d!1563291 () Bool)

(declare-fun isEmpty!29937 (Option!13779) Bool)

(assert (=> d!1563291 (= (isDefined!10848 lt!1994924) (not (isEmpty!29937 lt!1994924)))))

(declare-fun bs!1174478 () Bool)

(assert (= bs!1174478 d!1563291))

(declare-fun m!5868566 () Bool)

(assert (=> bs!1174478 m!5868566))

(assert (=> d!1563181 d!1563291))

(declare-fun d!1563293 () Bool)

(assert (=> d!1563293 (isPrefix!4766 lt!1994927 lt!1994921)))

(declare-fun lt!1995031 () Unit!145952)

(declare-fun choose!35596 (List!56065 List!56065) Unit!145952)

(assert (=> d!1563293 (= lt!1995031 (choose!35596 lt!1994927 lt!1994921))))

(assert (=> d!1563293 (= (lemmaIsPrefixRefl!3163 lt!1994927 lt!1994921) lt!1995031)))

(declare-fun bs!1174479 () Bool)

(assert (= bs!1174479 d!1563293))

(assert (=> bs!1174479 m!5868282))

(declare-fun m!5868568 () Bool)

(assert (=> bs!1174479 m!5868568))

(assert (=> d!1563181 d!1563293))

(declare-fun d!1563295 () Bool)

(assert (=> d!1563295 true))

(declare-fun order!25219 () Int)

(declare-fun order!25217 () Int)

(declare-fun lambda!243455 () Int)

(declare-fun dynLambda!22460 (Int Int) Int)

(declare-fun dynLambda!22461 (Int Int) Int)

(assert (=> d!1563295 (< (dynLambda!22460 order!25217 (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) (dynLambda!22461 order!25219 lambda!243455))))

(assert (=> d!1563295 true))

(declare-fun order!25221 () Int)

(declare-fun dynLambda!22462 (Int Int) Int)

(assert (=> d!1563295 (< (dynLambda!22462 order!25221 (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) (dynLambda!22461 order!25219 lambda!243455))))

(declare-fun Forall!1675 (Int) Bool)

(assert (=> d!1563295 (= (semiInverseModEq!3546 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) (Forall!1675 lambda!243455))))

(declare-fun bs!1174480 () Bool)

(assert (= bs!1174480 d!1563295))

(declare-fun m!5868570 () Bool)

(assert (=> bs!1174480 m!5868570))

(assert (=> d!1563207 d!1563295))

(declare-fun b!4868871 () Bool)

(declare-fun e!3043781 () Bool)

(declare-fun e!3043780 () Bool)

(assert (=> b!4868871 (= e!3043781 e!3043780)))

(declare-fun res!2078438 () Bool)

(assert (=> b!4868871 (=> (not res!2078438) (not e!3043780))))

(declare-fun height!1929 (Conc!14573) Int)

(assert (=> b!4868871 (= res!2078438 (<= (- 1) (- (height!1929 (left!40633 (c!828058 totalInput!332))) (height!1929 (right!40963 (c!828058 totalInput!332))))))))

(declare-fun b!4868872 () Bool)

(declare-fun res!2078443 () Bool)

(assert (=> b!4868872 (=> (not res!2078443) (not e!3043780))))

(assert (=> b!4868872 (= res!2078443 (isBalanced!3956 (right!40963 (c!828058 totalInput!332))))))

(declare-fun d!1563297 () Bool)

(declare-fun res!2078439 () Bool)

(assert (=> d!1563297 (=> res!2078439 e!3043781)))

(assert (=> d!1563297 (= res!2078439 (not ((_ is Node!14573) (c!828058 totalInput!332))))))

(assert (=> d!1563297 (= (isBalanced!3956 (c!828058 totalInput!332)) e!3043781)))

(declare-fun b!4868873 () Bool)

(declare-fun res!2078442 () Bool)

(assert (=> b!4868873 (=> (not res!2078442) (not e!3043780))))

(assert (=> b!4868873 (= res!2078442 (isBalanced!3956 (left!40633 (c!828058 totalInput!332))))))

(declare-fun b!4868874 () Bool)

(declare-fun res!2078440 () Bool)

(assert (=> b!4868874 (=> (not res!2078440) (not e!3043780))))

(assert (=> b!4868874 (= res!2078440 (<= (- (height!1929 (left!40633 (c!828058 totalInput!332))) (height!1929 (right!40963 (c!828058 totalInput!332)))) 1))))

(declare-fun b!4868875 () Bool)

(declare-fun isEmpty!29938 (Conc!14573) Bool)

(assert (=> b!4868875 (= e!3043780 (not (isEmpty!29938 (right!40963 (c!828058 totalInput!332)))))))

(declare-fun b!4868876 () Bool)

(declare-fun res!2078441 () Bool)

(assert (=> b!4868876 (=> (not res!2078441) (not e!3043780))))

(assert (=> b!4868876 (= res!2078441 (not (isEmpty!29938 (left!40633 (c!828058 totalInput!332)))))))

(assert (= (and d!1563297 (not res!2078439)) b!4868871))

(assert (= (and b!4868871 res!2078438) b!4868874))

(assert (= (and b!4868874 res!2078440) b!4868873))

(assert (= (and b!4868873 res!2078442) b!4868872))

(assert (= (and b!4868872 res!2078443) b!4868876))

(assert (= (and b!4868876 res!2078441) b!4868875))

(declare-fun m!5868572 () Bool)

(assert (=> b!4868876 m!5868572))

(declare-fun m!5868574 () Bool)

(assert (=> b!4868872 m!5868574))

(declare-fun m!5868576 () Bool)

(assert (=> b!4868873 m!5868576))

(declare-fun m!5868578 () Bool)

(assert (=> b!4868874 m!5868578))

(declare-fun m!5868580 () Bool)

(assert (=> b!4868874 m!5868580))

(assert (=> b!4868871 m!5868578))

(assert (=> b!4868871 m!5868580))

(declare-fun m!5868582 () Bool)

(assert (=> b!4868875 m!5868582))

(assert (=> d!1563153 d!1563297))

(declare-fun d!1563299 () Bool)

(declare-fun lt!1995054 () Int)

(assert (=> d!1563299 (>= lt!1995054 0)))

(declare-fun e!3043784 () Int)

(assert (=> d!1563299 (= lt!1995054 e!3043784)))

(declare-fun c!828144 () Bool)

(assert (=> d!1563299 (= c!828144 ((_ is Nil!55941) (list!17492 totalInput!332)))))

(assert (=> d!1563299 (= (size!36875 (list!17492 totalInput!332)) lt!1995054)))

(declare-fun b!4868881 () Bool)

(assert (=> b!4868881 (= e!3043784 0)))

(declare-fun b!4868882 () Bool)

(assert (=> b!4868882 (= e!3043784 (+ 1 (size!36875 (t!363993 (list!17492 totalInput!332)))))))

(assert (= (and d!1563299 c!828144) b!4868881))

(assert (= (and d!1563299 (not c!828144)) b!4868882))

(declare-fun m!5868584 () Bool)

(assert (=> b!4868882 m!5868584))

(assert (=> b!4868416 d!1563299))

(declare-fun d!1563301 () Bool)

(declare-fun lt!1995055 () Int)

(assert (=> d!1563301 (>= lt!1995055 0)))

(declare-fun e!3043785 () Int)

(assert (=> d!1563301 (= lt!1995055 e!3043785)))

(declare-fun c!828145 () Bool)

(assert (=> d!1563301 (= c!828145 ((_ is Nil!55941) lt!1994850))))

(assert (=> d!1563301 (= (size!36875 lt!1994850) lt!1995055)))

(declare-fun b!4868883 () Bool)

(assert (=> b!4868883 (= e!3043785 0)))

(declare-fun b!4868884 () Bool)

(assert (=> b!4868884 (= e!3043785 (+ 1 (size!36875 (t!363993 lt!1994850))))))

(assert (= (and d!1563301 c!828145) b!4868883))

(assert (= (and d!1563301 (not c!828145)) b!4868884))

(declare-fun m!5868586 () Bool)

(assert (=> b!4868884 m!5868586))

(assert (=> b!4868416 d!1563301))

(declare-fun bs!1174481 () Bool)

(declare-fun d!1563303 () Bool)

(assert (= bs!1174481 (and d!1563303 d!1563233)))

(declare-fun lambda!243463 () Int)

(assert (=> bs!1174481 (= lambda!243463 lambda!243452)))

(assert (=> d!1563303 true))

(declare-fun lt!1995068 () Bool)

(assert (=> d!1563303 (= lt!1995068 (rulesValidInductive!3021 thiss!11777 rules!1248))))

(assert (=> d!1563303 (= lt!1995068 (forall!13050 rules!1248 lambda!243463))))

(assert (=> d!1563303 (= (rulesValid!3122 thiss!11777 rules!1248) lt!1995068)))

(declare-fun bs!1174482 () Bool)

(assert (= bs!1174482 d!1563303))

(assert (=> bs!1174482 m!5868276))

(declare-fun m!5868588 () Bool)

(assert (=> bs!1174482 m!5868588))

(assert (=> d!1563203 d!1563303))

(declare-fun b!4868910 () Bool)

(declare-fun e!3043802 () List!56066)

(declare-fun ++!12187 (List!56066 List!56066) List!56066)

(assert (=> b!4868910 (= e!3043802 (++!12187 (list!17496 (left!40634 (c!828060 (BalanceConc!28591 Empty!14574)))) (list!17496 (right!40964 (c!828060 (BalanceConc!28591 Empty!14574))))))))

(declare-fun b!4868909 () Bool)

(declare-fun list!17499 (IArray!29209) List!56066)

(assert (=> b!4868909 (= e!3043802 (list!17499 (xs!17882 (c!828060 (BalanceConc!28591 Empty!14574)))))))

(declare-fun d!1563305 () Bool)

(declare-fun c!828151 () Bool)

(assert (=> d!1563305 (= c!828151 ((_ is Empty!14574) (c!828060 (BalanceConc!28591 Empty!14574))))))

(declare-fun e!3043801 () List!56066)

(assert (=> d!1563305 (= (list!17496 (c!828060 (BalanceConc!28591 Empty!14574))) e!3043801)))

(declare-fun b!4868908 () Bool)

(assert (=> b!4868908 (= e!3043801 e!3043802)))

(declare-fun c!828152 () Bool)

(assert (=> b!4868908 (= c!828152 ((_ is Leaf!24301) (c!828060 (BalanceConc!28591 Empty!14574))))))

(declare-fun b!4868907 () Bool)

(assert (=> b!4868907 (= e!3043801 Nil!55942)))

(assert (= (and d!1563305 c!828151) b!4868907))

(assert (= (and d!1563305 (not c!828151)) b!4868908))

(assert (= (and b!4868908 c!828152) b!4868909))

(assert (= (and b!4868908 (not c!828152)) b!4868910))

(declare-fun m!5868608 () Bool)

(assert (=> b!4868910 m!5868608))

(declare-fun m!5868610 () Bool)

(assert (=> b!4868910 m!5868610))

(assert (=> b!4868910 m!5868608))

(assert (=> b!4868910 m!5868610))

(declare-fun m!5868614 () Bool)

(assert (=> b!4868910 m!5868614))

(declare-fun m!5868618 () Bool)

(assert (=> b!4868909 m!5868618))

(assert (=> d!1563171 d!1563305))

(declare-fun d!1563307 () Bool)

(assert (=> d!1563307 (= (inv!71848 (tag!8896 (h!62391 (t!363995 rules!1248)))) (= (mod (str.len (value!258053 (tag!8896 (h!62391 (t!363995 rules!1248))))) 2) 0))))

(assert (=> b!4868582 d!1563307))

(declare-fun d!1563309 () Bool)

(declare-fun res!2078448 () Bool)

(declare-fun e!3043803 () Bool)

(assert (=> d!1563309 (=> (not res!2078448) (not e!3043803))))

(assert (=> d!1563309 (= res!2078448 (semiInverseModEq!3546 (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248))))))))

(assert (=> d!1563309 (= (inv!71853 (transformation!8032 (h!62391 (t!363995 rules!1248)))) e!3043803)))

(declare-fun b!4868911 () Bool)

(assert (=> b!4868911 (= e!3043803 (equivClasses!3425 (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248))))))))

(assert (= (and d!1563309 res!2078448) b!4868911))

(declare-fun m!5868634 () Bool)

(assert (=> d!1563309 m!5868634))

(declare-fun m!5868638 () Bool)

(assert (=> b!4868911 m!5868638))

(assert (=> b!4868582 d!1563309))

(declare-fun d!1563311 () Bool)

(declare-fun lt!1995069 () Int)

(assert (=> d!1563311 (>= lt!1995069 0)))

(declare-fun e!3043804 () Int)

(assert (=> d!1563311 (= lt!1995069 e!3043804)))

(declare-fun c!828153 () Bool)

(assert (=> d!1563311 (= c!828153 ((_ is Nil!55942) (list!17491 (BalanceConc!28591 Empty!14574))))))

(assert (=> d!1563311 (= (size!36877 (list!17491 (BalanceConc!28591 Empty!14574))) lt!1995069)))

(declare-fun b!4868912 () Bool)

(assert (=> b!4868912 (= e!3043804 0)))

(declare-fun b!4868913 () Bool)

(assert (=> b!4868913 (= e!3043804 (+ 1 (size!36877 (t!363994 (list!17491 (BalanceConc!28591 Empty!14574))))))))

(assert (= (and d!1563311 c!828153) b!4868912))

(assert (= (and d!1563311 (not c!828153)) b!4868913))

(declare-fun m!5868646 () Bool)

(assert (=> b!4868913 m!5868646))

(assert (=> d!1563213 d!1563311))

(assert (=> d!1563213 d!1563171))

(declare-fun d!1563315 () Bool)

(declare-fun lt!1995073 () Int)

(assert (=> d!1563315 (= lt!1995073 (size!36877 (list!17496 (c!828060 (BalanceConc!28591 Empty!14574)))))))

(assert (=> d!1563315 (= lt!1995073 (ite ((_ is Empty!14574) (c!828060 (BalanceConc!28591 Empty!14574))) 0 (ite ((_ is Leaf!24301) (c!828060 (BalanceConc!28591 Empty!14574))) (csize!29379 (c!828060 (BalanceConc!28591 Empty!14574))) (csize!29378 (c!828060 (BalanceConc!28591 Empty!14574))))))))

(assert (=> d!1563315 (= (size!36878 (c!828060 (BalanceConc!28591 Empty!14574))) lt!1995073)))

(declare-fun bs!1174485 () Bool)

(assert (= bs!1174485 d!1563315))

(assert (=> bs!1174485 m!5868178))

(assert (=> bs!1174485 m!5868178))

(declare-fun m!5868666 () Bool)

(assert (=> bs!1174485 m!5868666))

(assert (=> d!1563213 d!1563315))

(declare-fun d!1563327 () Bool)

(declare-fun res!2078457 () Bool)

(declare-fun e!3043816 () Bool)

(assert (=> d!1563327 (=> (not res!2078457) (not e!3043816))))

(declare-fun list!17500 (IArray!29207) List!56065)

(assert (=> d!1563327 (= res!2078457 (<= (size!36875 (list!17500 (xs!17881 (c!828058 input!661)))) 512))))

(assert (=> d!1563327 (= (inv!71859 (c!828058 input!661)) e!3043816)))

(declare-fun b!4868932 () Bool)

(declare-fun res!2078458 () Bool)

(assert (=> b!4868932 (=> (not res!2078458) (not e!3043816))))

(assert (=> b!4868932 (= res!2078458 (= (csize!29377 (c!828058 input!661)) (size!36875 (list!17500 (xs!17881 (c!828058 input!661))))))))

(declare-fun b!4868933 () Bool)

(assert (=> b!4868933 (= e!3043816 (and (> (csize!29377 (c!828058 input!661)) 0) (<= (csize!29377 (c!828058 input!661)) 512)))))

(assert (= (and d!1563327 res!2078457) b!4868932))

(assert (= (and b!4868932 res!2078458) b!4868933))

(declare-fun m!5868668 () Bool)

(assert (=> d!1563327 m!5868668))

(assert (=> d!1563327 m!5868668))

(declare-fun m!5868670 () Bool)

(assert (=> d!1563327 m!5868670))

(assert (=> b!4868932 m!5868668))

(assert (=> b!4868932 m!5868668))

(assert (=> b!4868932 m!5868670))

(assert (=> b!4868572 d!1563327))

(declare-fun d!1563329 () Bool)

(assert (=> d!1563329 true))

(declare-fun order!25225 () Int)

(declare-fun lambda!243469 () Int)

(declare-fun dynLambda!22463 (Int Int) Int)

(assert (=> d!1563329 (< (dynLambda!22462 order!25221 (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) (dynLambda!22463 order!25225 lambda!243469))))

(declare-fun Forall2!1254 (Int) Bool)

(assert (=> d!1563329 (= (equivClasses!3425 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) (Forall2!1254 lambda!243469))))

(declare-fun bs!1174489 () Bool)

(assert (= bs!1174489 d!1563329))

(declare-fun m!5868678 () Bool)

(assert (=> bs!1174489 m!5868678))

(assert (=> b!4868560 d!1563329))

(assert (=> b!4868402 d!1563211))

(declare-fun d!1563337 () Bool)

(declare-fun c!828159 () Bool)

(assert (=> d!1563337 (= c!828159 ((_ is Node!14573) (left!40633 (c!828058 totalInput!332))))))

(declare-fun e!3043819 () Bool)

(assert (=> d!1563337 (= (inv!71852 (left!40633 (c!828058 totalInput!332))) e!3043819)))

(declare-fun b!4868940 () Bool)

(assert (=> b!4868940 (= e!3043819 (inv!71858 (left!40633 (c!828058 totalInput!332))))))

(declare-fun b!4868941 () Bool)

(declare-fun e!3043820 () Bool)

(assert (=> b!4868941 (= e!3043819 e!3043820)))

(declare-fun res!2078461 () Bool)

(assert (=> b!4868941 (= res!2078461 (not ((_ is Leaf!24300) (left!40633 (c!828058 totalInput!332)))))))

(assert (=> b!4868941 (=> res!2078461 e!3043820)))

(declare-fun b!4868942 () Bool)

(assert (=> b!4868942 (= e!3043820 (inv!71859 (left!40633 (c!828058 totalInput!332))))))

(assert (= (and d!1563337 c!828159) b!4868940))

(assert (= (and d!1563337 (not c!828159)) b!4868941))

(assert (= (and b!4868941 (not res!2078461)) b!4868942))

(declare-fun m!5868680 () Bool)

(assert (=> b!4868940 m!5868680))

(declare-fun m!5868682 () Bool)

(assert (=> b!4868942 m!5868682))

(assert (=> b!4868606 d!1563337))

(declare-fun d!1563339 () Bool)

(declare-fun c!828160 () Bool)

(assert (=> d!1563339 (= c!828160 ((_ is Node!14573) (right!40963 (c!828058 totalInput!332))))))

(declare-fun e!3043825 () Bool)

(assert (=> d!1563339 (= (inv!71852 (right!40963 (c!828058 totalInput!332))) e!3043825)))

(declare-fun b!4868949 () Bool)

(assert (=> b!4868949 (= e!3043825 (inv!71858 (right!40963 (c!828058 totalInput!332))))))

(declare-fun b!4868950 () Bool)

(declare-fun e!3043826 () Bool)

(assert (=> b!4868950 (= e!3043825 e!3043826)))

(declare-fun res!2078468 () Bool)

(assert (=> b!4868950 (= res!2078468 (not ((_ is Leaf!24300) (right!40963 (c!828058 totalInput!332)))))))

(assert (=> b!4868950 (=> res!2078468 e!3043826)))

(declare-fun b!4868951 () Bool)

(assert (=> b!4868951 (= e!3043826 (inv!71859 (right!40963 (c!828058 totalInput!332))))))

(assert (= (and d!1563339 c!828160) b!4868949))

(assert (= (and d!1563339 (not c!828160)) b!4868950))

(assert (= (and b!4868950 (not res!2078468)) b!4868951))

(declare-fun m!5868684 () Bool)

(assert (=> b!4868949 m!5868684))

(declare-fun m!5868686 () Bool)

(assert (=> b!4868951 m!5868686))

(assert (=> b!4868606 d!1563339))

(declare-fun d!1563341 () Bool)

(assert (=> d!1563341 (= (get!19227 lt!1994924) (v!49696 lt!1994924))))

(assert (=> b!4868554 d!1563341))

(declare-fun d!1563343 () Bool)

(assert (=> d!1563343 (= (list!17492 (_2!33197 (get!19227 lt!1994924))) (list!17495 (c!828058 (_2!33197 (get!19227 lt!1994924)))))))

(declare-fun bs!1174490 () Bool)

(assert (= bs!1174490 d!1563343))

(declare-fun m!5868688 () Bool)

(assert (=> bs!1174490 m!5868688))

(assert (=> b!4868554 d!1563343))

(assert (=> b!4868554 d!1563163))

(declare-fun call!338135 () Option!13781)

(declare-fun bm!338130 () Bool)

(assert (=> bm!338130 (= call!338135 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (list!17492 input!661)))))

(declare-fun b!4868954 () Bool)

(declare-fun res!2078472 () Bool)

(declare-fun e!3043831 () Bool)

(assert (=> b!4868954 (=> (not res!2078472) (not e!3043831))))

(declare-fun lt!1995077 () Option!13781)

(assert (=> b!4868954 (= res!2078472 (matchR!6492 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))))))

(declare-fun b!4868955 () Bool)

(declare-fun res!2078476 () Bool)

(assert (=> b!4868955 (=> (not res!2078476) (not e!3043831))))

(assert (=> b!4868955 (= res!2078476 (= (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077)))) (originalCharacters!8355 (_1!33199 (get!19228 lt!1995077)))))))

(declare-fun b!4868957 () Bool)

(declare-fun e!3043829 () Option!13781)

(assert (=> b!4868957 (= e!3043829 call!338135)))

(declare-fun b!4868958 () Bool)

(declare-fun res!2078474 () Bool)

(assert (=> b!4868958 (=> (not res!2078474) (not e!3043831))))

(assert (=> b!4868958 (= res!2078474 (= (++!12186 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077)))) (_2!33199 (get!19228 lt!1995077))) (list!17492 input!661)))))

(declare-fun b!4868959 () Bool)

(declare-fun lt!1995080 () Option!13781)

(declare-fun lt!1995078 () Option!13781)

(assert (=> b!4868959 (= e!3043829 (ite (and ((_ is None!13780) lt!1995080) ((_ is None!13780) lt!1995078)) None!13780 (ite ((_ is None!13780) lt!1995078) lt!1995080 (ite ((_ is None!13780) lt!1995080) lt!1995078 (ite (>= (size!36869 (_1!33199 (v!49698 lt!1995080))) (size!36869 (_1!33199 (v!49698 lt!1995078)))) lt!1995080 lt!1995078)))))))

(assert (=> b!4868959 (= lt!1995080 call!338135)))

(assert (=> b!4868959 (= lt!1995078 (maxPrefix!4549 thiss!11777 (t!363995 rules!1248) (list!17492 input!661)))))

(declare-fun b!4868960 () Bool)

(declare-fun e!3043830 () Bool)

(assert (=> b!4868960 (= e!3043830 e!3043831)))

(declare-fun res!2078477 () Bool)

(assert (=> b!4868960 (=> (not res!2078477) (not e!3043831))))

(assert (=> b!4868960 (= res!2078477 (isDefined!10849 lt!1995077))))

(declare-fun b!4868961 () Bool)

(declare-fun res!2078475 () Bool)

(assert (=> b!4868961 (=> (not res!2078475) (not e!3043831))))

(assert (=> b!4868961 (= res!2078475 (= (value!258054 (_1!33199 (get!19228 lt!1995077))) (apply!13502 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995077)))))))))

(declare-fun b!4868962 () Bool)

(assert (=> b!4868962 (= e!3043831 (contains!19394 rules!1248 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))))

(declare-fun b!4868956 () Bool)

(declare-fun res!2078473 () Bool)

(assert (=> b!4868956 (=> (not res!2078473) (not e!3043831))))

(assert (=> b!4868956 (= res!2078473 (< (size!36875 (_2!33199 (get!19228 lt!1995077))) (size!36875 (list!17492 input!661))))))

(declare-fun d!1563345 () Bool)

(assert (=> d!1563345 e!3043830))

(declare-fun res!2078471 () Bool)

(assert (=> d!1563345 (=> res!2078471 e!3043830)))

(assert (=> d!1563345 (= res!2078471 (isEmpty!29936 lt!1995077))))

(assert (=> d!1563345 (= lt!1995077 e!3043829)))

(declare-fun c!828161 () Bool)

(assert (=> d!1563345 (= c!828161 (and ((_ is Cons!55943) rules!1248) ((_ is Nil!55943) (t!363995 rules!1248))))))

(declare-fun lt!1995079 () Unit!145952)

(declare-fun lt!1995076 () Unit!145952)

(assert (=> d!1563345 (= lt!1995079 lt!1995076)))

(assert (=> d!1563345 (isPrefix!4766 (list!17492 input!661) (list!17492 input!661))))

(assert (=> d!1563345 (= lt!1995076 (lemmaIsPrefixRefl!3163 (list!17492 input!661) (list!17492 input!661)))))

(assert (=> d!1563345 (rulesValidInductive!3021 thiss!11777 rules!1248)))

(assert (=> d!1563345 (= (maxPrefix!4549 thiss!11777 rules!1248 (list!17492 input!661)) lt!1995077)))

(assert (= (and d!1563345 c!828161) b!4868957))

(assert (= (and d!1563345 (not c!828161)) b!4868959))

(assert (= (or b!4868957 b!4868959) bm!338130))

(assert (= (and d!1563345 (not res!2078471)) b!4868960))

(assert (= (and b!4868960 res!2078477) b!4868955))

(assert (= (and b!4868955 res!2078476) b!4868956))

(assert (= (and b!4868956 res!2078473) b!4868958))

(assert (= (and b!4868958 res!2078474) b!4868961))

(assert (= (and b!4868961 res!2078475) b!4868954))

(assert (= (and b!4868954 res!2078472) b!4868962))

(assert (=> b!4868959 m!5868142))

(declare-fun m!5868704 () Bool)

(assert (=> b!4868959 m!5868704))

(declare-fun m!5868706 () Bool)

(assert (=> b!4868962 m!5868706))

(declare-fun m!5868708 () Bool)

(assert (=> b!4868962 m!5868708))

(assert (=> b!4868958 m!5868706))

(declare-fun m!5868710 () Bool)

(assert (=> b!4868958 m!5868710))

(assert (=> b!4868958 m!5868710))

(declare-fun m!5868712 () Bool)

(assert (=> b!4868958 m!5868712))

(assert (=> b!4868958 m!5868712))

(declare-fun m!5868714 () Bool)

(assert (=> b!4868958 m!5868714))

(assert (=> b!4868954 m!5868706))

(assert (=> b!4868954 m!5868710))

(assert (=> b!4868954 m!5868710))

(assert (=> b!4868954 m!5868712))

(assert (=> b!4868954 m!5868712))

(declare-fun m!5868716 () Bool)

(assert (=> b!4868954 m!5868716))

(declare-fun m!5868718 () Bool)

(assert (=> b!4868960 m!5868718))

(assert (=> b!4868956 m!5868706))

(declare-fun m!5868720 () Bool)

(assert (=> b!4868956 m!5868720))

(assert (=> b!4868956 m!5868142))

(assert (=> b!4868956 m!5868170))

(assert (=> b!4868955 m!5868706))

(assert (=> b!4868955 m!5868710))

(assert (=> b!4868955 m!5868710))

(assert (=> b!4868955 m!5868712))

(assert (=> b!4868961 m!5868706))

(declare-fun m!5868722 () Bool)

(assert (=> b!4868961 m!5868722))

(assert (=> b!4868961 m!5868722))

(declare-fun m!5868724 () Bool)

(assert (=> b!4868961 m!5868724))

(declare-fun m!5868726 () Bool)

(assert (=> d!1563345 m!5868726))

(assert (=> d!1563345 m!5868142))

(assert (=> d!1563345 m!5868142))

(assert (=> d!1563345 m!5868382))

(assert (=> d!1563345 m!5868142))

(assert (=> d!1563345 m!5868142))

(assert (=> d!1563345 m!5868384))

(assert (=> d!1563345 m!5868276))

(assert (=> bm!338130 m!5868142))

(declare-fun m!5868728 () Bool)

(assert (=> bm!338130 m!5868728))

(assert (=> b!4868554 d!1563345))

(declare-fun d!1563349 () Bool)

(assert (=> d!1563349 (= (get!19228 (maxPrefix!4549 thiss!11777 rules!1248 (list!17492 input!661))) (v!49698 (maxPrefix!4549 thiss!11777 rules!1248 (list!17492 input!661))))))

(assert (=> b!4868554 d!1563349))

(declare-fun d!1563351 () Bool)

(declare-fun lt!1995084 () Int)

(assert (=> d!1563351 (>= lt!1995084 0)))

(declare-fun e!3043839 () Int)

(assert (=> d!1563351 (= lt!1995084 e!3043839)))

(declare-fun c!828162 () Bool)

(assert (=> d!1563351 (= c!828162 ((_ is Nil!55941) (list!17492 input!661)))))

(assert (=> d!1563351 (= (size!36875 (list!17492 input!661)) lt!1995084)))

(declare-fun b!4868971 () Bool)

(assert (=> b!4868971 (= e!3043839 0)))

(declare-fun b!4868972 () Bool)

(assert (=> b!4868972 (= e!3043839 (+ 1 (size!36875 (t!363993 (list!17492 input!661)))))))

(assert (= (and d!1563351 c!828162) b!4868971))

(assert (= (and d!1563351 (not c!828162)) b!4868972))

(declare-fun m!5868730 () Bool)

(assert (=> b!4868972 m!5868730))

(assert (=> d!1563165 d!1563351))

(assert (=> d!1563165 d!1563163))

(declare-fun d!1563353 () Bool)

(declare-fun lt!1995088 () Int)

(assert (=> d!1563353 (= lt!1995088 (size!36875 (list!17495 (c!828058 input!661))))))

(assert (=> d!1563353 (= lt!1995088 (ite ((_ is Empty!14573) (c!828058 input!661)) 0 (ite ((_ is Leaf!24300) (c!828058 input!661)) (csize!29377 (c!828058 input!661)) (csize!29376 (c!828058 input!661)))))))

(assert (=> d!1563353 (= (size!36876 (c!828058 input!661)) lt!1995088)))

(declare-fun bs!1174492 () Bool)

(assert (= bs!1174492 d!1563353))

(assert (=> bs!1174492 m!5868164))

(assert (=> bs!1174492 m!5868164))

(declare-fun m!5868736 () Bool)

(assert (=> bs!1174492 m!5868736))

(assert (=> d!1563165 d!1563353))

(declare-fun b!4869027 () Bool)

(declare-fun e!3043870 () List!56065)

(assert (=> b!4869027 (= e!3043870 (drop!2202 (t!363993 (list!17492 totalInput!332)) (- (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)) 1)))))

(declare-fun b!4869028 () Bool)

(declare-fun e!3043871 () Int)

(declare-fun call!338139 () Int)

(assert (=> b!4869028 (= e!3043871 (- call!338139 (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850))))))

(declare-fun b!4869029 () Bool)

(declare-fun e!3043873 () List!56065)

(assert (=> b!4869029 (= e!3043873 Nil!55941)))

(declare-fun b!4869030 () Bool)

(assert (=> b!4869030 (= e!3043871 0)))

(declare-fun b!4869031 () Bool)

(assert (=> b!4869031 (= e!3043870 (list!17492 totalInput!332))))

(declare-fun b!4869032 () Bool)

(declare-fun e!3043872 () Int)

(assert (=> b!4869032 (= e!3043872 call!338139)))

(declare-fun b!4869033 () Bool)

(assert (=> b!4869033 (= e!3043873 e!3043870)))

(declare-fun c!828173 () Bool)

(assert (=> b!4869033 (= c!828173 (<= (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)) 0))))

(declare-fun b!4869034 () Bool)

(assert (=> b!4869034 (= e!3043872 e!3043871)))

(declare-fun c!828174 () Bool)

(assert (=> b!4869034 (= c!828174 (>= (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)) call!338139))))

(declare-fun d!1563357 () Bool)

(declare-fun e!3043874 () Bool)

(assert (=> d!1563357 e!3043874))

(declare-fun res!2078503 () Bool)

(assert (=> d!1563357 (=> (not res!2078503) (not e!3043874))))

(declare-fun lt!1995101 () List!56065)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9976 (List!56065) (InoxSet C!26412))

(assert (=> d!1563357 (= res!2078503 (= ((_ map implies) (content!9976 lt!1995101) (content!9976 (list!17492 totalInput!332))) ((as const (InoxSet C!26412)) true)))))

(assert (=> d!1563357 (= lt!1995101 e!3043873)))

(declare-fun c!828175 () Bool)

(assert (=> d!1563357 (= c!828175 ((_ is Nil!55941) (list!17492 totalInput!332)))))

(assert (=> d!1563357 (= (drop!2202 (list!17492 totalInput!332) (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850))) lt!1995101)))

(declare-fun bm!338134 () Bool)

(assert (=> bm!338134 (= call!338139 (size!36875 (list!17492 totalInput!332)))))

(declare-fun b!4869035 () Bool)

(assert (=> b!4869035 (= e!3043874 (= (size!36875 lt!1995101) e!3043872))))

(declare-fun c!828172 () Bool)

(assert (=> b!4869035 (= c!828172 (<= (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)) 0))))

(assert (= (and d!1563357 c!828175) b!4869029))

(assert (= (and d!1563357 (not c!828175)) b!4869033))

(assert (= (and b!4869033 c!828173) b!4869031))

(assert (= (and b!4869033 (not c!828173)) b!4869027))

(assert (= (and d!1563357 res!2078503) b!4869035))

(assert (= (and b!4869035 c!828172) b!4869032))

(assert (= (and b!4869035 (not c!828172)) b!4869034))

(assert (= (and b!4869034 c!828174) b!4869030))

(assert (= (and b!4869034 (not c!828174)) b!4869028))

(assert (= (or b!4869032 b!4869034 b!4869028) bm!338134))

(declare-fun m!5868784 () Bool)

(assert (=> b!4869027 m!5868784))

(declare-fun m!5868786 () Bool)

(assert (=> d!1563357 m!5868786))

(assert (=> d!1563357 m!5868138))

(declare-fun m!5868788 () Bool)

(assert (=> d!1563357 m!5868788))

(assert (=> bm!338134 m!5868138))

(assert (=> bm!338134 m!5868156))

(declare-fun m!5868790 () Bool)

(assert (=> b!4869035 m!5868790))

(assert (=> d!1563157 d!1563357))

(assert (=> d!1563157 d!1563299))

(assert (=> d!1563157 d!1563301))

(declare-fun d!1563367 () Bool)

(declare-fun res!2078508 () Bool)

(declare-fun e!3043892 () Bool)

(assert (=> d!1563367 (=> res!2078508 e!3043892)))

(assert (=> d!1563367 (= res!2078508 ((_ is Nil!55943) rules!1248))))

(assert (=> d!1563367 (= (noDuplicateTag!3283 thiss!11777 rules!1248 Nil!55945) e!3043892)))

(declare-fun b!4869066 () Bool)

(declare-fun e!3043893 () Bool)

(assert (=> b!4869066 (= e!3043892 e!3043893)))

(declare-fun res!2078509 () Bool)

(assert (=> b!4869066 (=> (not res!2078509) (not e!3043893))))

(declare-fun contains!19396 (List!56069 String!63128) Bool)

(assert (=> b!4869066 (= res!2078509 (not (contains!19396 Nil!55945 (tag!8896 (h!62391 rules!1248)))))))

(declare-fun b!4869067 () Bool)

(assert (=> b!4869067 (= e!3043893 (noDuplicateTag!3283 thiss!11777 (t!363995 rules!1248) (Cons!55945 (tag!8896 (h!62391 rules!1248)) Nil!55945)))))

(assert (= (and d!1563367 (not res!2078508)) b!4869066))

(assert (= (and b!4869066 res!2078509) b!4869067))

(declare-fun m!5868808 () Bool)

(assert (=> b!4869066 m!5868808))

(declare-fun m!5868810 () Bool)

(assert (=> b!4869067 m!5868810))

(assert (=> b!4868557 d!1563367))

(declare-fun d!1563369 () Bool)

(declare-fun res!2078516 () Bool)

(declare-fun e!3043896 () Bool)

(assert (=> d!1563369 (=> (not res!2078516) (not e!3043896))))

(assert (=> d!1563369 (= res!2078516 (= (csize!29376 (c!828058 input!661)) (+ (size!36876 (left!40633 (c!828058 input!661))) (size!36876 (right!40963 (c!828058 input!661))))))))

(assert (=> d!1563369 (= (inv!71858 (c!828058 input!661)) e!3043896)))

(declare-fun b!4869074 () Bool)

(declare-fun res!2078517 () Bool)

(assert (=> b!4869074 (=> (not res!2078517) (not e!3043896))))

(assert (=> b!4869074 (= res!2078517 (and (not (= (left!40633 (c!828058 input!661)) Empty!14573)) (not (= (right!40963 (c!828058 input!661)) Empty!14573))))))

(declare-fun b!4869075 () Bool)

(declare-fun res!2078518 () Bool)

(assert (=> b!4869075 (=> (not res!2078518) (not e!3043896))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4869075 (= res!2078518 (= (cheight!14784 (c!828058 input!661)) (+ (max!0 (height!1929 (left!40633 (c!828058 input!661))) (height!1929 (right!40963 (c!828058 input!661)))) 1)))))

(declare-fun b!4869076 () Bool)

(assert (=> b!4869076 (= e!3043896 (<= 0 (cheight!14784 (c!828058 input!661))))))

(assert (= (and d!1563369 res!2078516) b!4869074))

(assert (= (and b!4869074 res!2078517) b!4869075))

(assert (= (and b!4869075 res!2078518) b!4869076))

(declare-fun m!5868812 () Bool)

(assert (=> d!1563369 m!5868812))

(declare-fun m!5868814 () Bool)

(assert (=> d!1563369 m!5868814))

(declare-fun m!5868816 () Bool)

(assert (=> b!4869075 m!5868816))

(declare-fun m!5868818 () Bool)

(assert (=> b!4869075 m!5868818))

(assert (=> b!4869075 m!5868816))

(assert (=> b!4869075 m!5868818))

(declare-fun m!5868820 () Bool)

(assert (=> b!4869075 m!5868820))

(assert (=> b!4868570 d!1563369))

(declare-fun d!1563371 () Bool)

(assert (=> d!1563371 (= (inv!71860 (xs!17881 (c!828058 totalInput!332))) (<= (size!36875 (innerList!14661 (xs!17881 (c!828058 totalInput!332)))) 2147483647))))

(declare-fun bs!1174494 () Bool)

(assert (= bs!1174494 d!1563371))

(declare-fun m!5868822 () Bool)

(assert (=> bs!1174494 m!5868822))

(assert (=> b!4868607 d!1563371))

(declare-fun d!1563373 () Bool)

(declare-fun lt!1995102 () Int)

(assert (=> d!1563373 (>= lt!1995102 0)))

(declare-fun e!3043897 () Int)

(assert (=> d!1563373 (= lt!1995102 e!3043897)))

(declare-fun c!828176 () Bool)

(assert (=> d!1563373 (= c!828176 ((_ is Nil!55941) (_2!33196 lt!1994875)))))

(assert (=> d!1563373 (= (size!36875 (_2!33196 lt!1994875)) lt!1995102)))

(declare-fun b!4869077 () Bool)

(assert (=> b!4869077 (= e!3043897 0)))

(declare-fun b!4869078 () Bool)

(assert (=> b!4869078 (= e!3043897 (+ 1 (size!36875 (t!363993 (_2!33196 lt!1994875)))))))

(assert (= (and d!1563373 c!828176) b!4869077))

(assert (= (and d!1563373 (not c!828176)) b!4869078))

(declare-fun m!5868824 () Bool)

(assert (=> b!4869078 m!5868824))

(assert (=> b!4868450 d!1563373))

(assert (=> b!4868450 d!1563301))

(declare-fun b!4869079 () Bool)

(declare-fun res!2078521 () Bool)

(declare-fun e!3043903 () Bool)

(assert (=> b!4869079 (=> (not res!2078521) (not e!3043903))))

(declare-fun e!3043901 () Bool)

(assert (=> b!4869079 (= res!2078521 e!3043901)))

(declare-fun res!2078523 () Bool)

(assert (=> b!4869079 (=> res!2078523 e!3043901)))

(declare-fun lt!1995106 () Option!13779)

(assert (=> b!4869079 (= res!2078523 (not (isDefined!10848 lt!1995106)))))

(declare-fun e!3043900 () Bool)

(declare-fun b!4869080 () Bool)

(assert (=> b!4869080 (= e!3043900 (= (list!17492 (_2!33197 (get!19227 lt!1995106))) (_2!33199 (get!19228 (maxPrefixZipper!563 thiss!11777 (t!363995 rules!1248) (list!17492 input!661))))))))

(declare-fun b!4869081 () Bool)

(assert (=> b!4869081 (= e!3043901 e!3043900)))

(declare-fun res!2078524 () Bool)

(assert (=> b!4869081 (=> (not res!2078524) (not e!3043900))))

(assert (=> b!4869081 (= res!2078524 (= (_1!33197 (get!19227 lt!1995106)) (_1!33199 (get!19228 (maxPrefixZipper!563 thiss!11777 (t!363995 rules!1248) (list!17492 input!661))))))))

(declare-fun d!1563375 () Bool)

(assert (=> d!1563375 e!3043903))

(declare-fun res!2078519 () Bool)

(assert (=> d!1563375 (=> (not res!2078519) (not e!3043903))))

(assert (=> d!1563375 (= res!2078519 (= (isDefined!10848 lt!1995106) (isDefined!10849 (maxPrefixZipper!563 thiss!11777 (t!363995 rules!1248) (list!17492 input!661)))))))

(declare-fun e!3043898 () Option!13779)

(assert (=> d!1563375 (= lt!1995106 e!3043898)))

(declare-fun c!828177 () Bool)

(assert (=> d!1563375 (= c!828177 (and ((_ is Cons!55943) (t!363995 rules!1248)) ((_ is Nil!55943) (t!363995 (t!363995 rules!1248)))))))

(declare-fun lt!1995105 () Unit!145952)

(declare-fun lt!1995107 () Unit!145952)

(assert (=> d!1563375 (= lt!1995105 lt!1995107)))

(declare-fun lt!1995109 () List!56065)

(declare-fun lt!1995103 () List!56065)

(assert (=> d!1563375 (isPrefix!4766 lt!1995109 lt!1995103)))

(assert (=> d!1563375 (= lt!1995107 (lemmaIsPrefixRefl!3163 lt!1995109 lt!1995103))))

(assert (=> d!1563375 (= lt!1995103 (list!17492 input!661))))

(assert (=> d!1563375 (= lt!1995109 (list!17492 input!661))))

(assert (=> d!1563375 (rulesValidInductive!3021 thiss!11777 (t!363995 rules!1248))))

(assert (=> d!1563375 (= (maxPrefixZipperSequenceV2!629 thiss!11777 (t!363995 rules!1248) input!661 totalInput!332) lt!1995106)))

(declare-fun b!4869082 () Bool)

(declare-fun e!3043902 () Bool)

(declare-fun e!3043899 () Bool)

(assert (=> b!4869082 (= e!3043902 e!3043899)))

(declare-fun res!2078520 () Bool)

(assert (=> b!4869082 (=> (not res!2078520) (not e!3043899))))

(assert (=> b!4869082 (= res!2078520 (= (_1!33197 (get!19227 lt!1995106)) (_1!33199 (get!19228 (maxPrefix!4549 thiss!11777 (t!363995 rules!1248) (list!17492 input!661))))))))

(declare-fun b!4869083 () Bool)

(declare-fun call!338140 () Option!13779)

(assert (=> b!4869083 (= e!3043898 call!338140)))

(declare-fun b!4869084 () Bool)

(declare-fun lt!1995108 () Option!13779)

(declare-fun lt!1995104 () Option!13779)

(assert (=> b!4869084 (= e!3043898 (ite (and ((_ is None!13778) lt!1995108) ((_ is None!13778) lt!1995104)) None!13778 (ite ((_ is None!13778) lt!1995104) lt!1995108 (ite ((_ is None!13778) lt!1995108) lt!1995104 (ite (>= (size!36869 (_1!33197 (v!49696 lt!1995108))) (size!36869 (_1!33197 (v!49696 lt!1995104)))) lt!1995108 lt!1995104)))))))

(assert (=> b!4869084 (= lt!1995108 call!338140)))

(assert (=> b!4869084 (= lt!1995104 (maxPrefixZipperSequenceV2!629 thiss!11777 (t!363995 (t!363995 rules!1248)) input!661 totalInput!332))))

(declare-fun bm!338135 () Bool)

(assert (=> bm!338135 (= call!338140 (maxPrefixOneRuleZipperSequenceV2!258 thiss!11777 (h!62391 (t!363995 rules!1248)) input!661 totalInput!332))))

(declare-fun b!4869085 () Bool)

(assert (=> b!4869085 (= e!3043903 e!3043902)))

(declare-fun res!2078522 () Bool)

(assert (=> b!4869085 (=> res!2078522 e!3043902)))

(assert (=> b!4869085 (= res!2078522 (not (isDefined!10848 lt!1995106)))))

(declare-fun b!4869086 () Bool)

(assert (=> b!4869086 (= e!3043899 (= (list!17492 (_2!33197 (get!19227 lt!1995106))) (_2!33199 (get!19228 (maxPrefix!4549 thiss!11777 (t!363995 rules!1248) (list!17492 input!661))))))))

(assert (= (and d!1563375 c!828177) b!4869083))

(assert (= (and d!1563375 (not c!828177)) b!4869084))

(assert (= (or b!4869083 b!4869084) bm!338135))

(assert (= (and d!1563375 res!2078519) b!4869079))

(assert (= (and b!4869079 (not res!2078523)) b!4869081))

(assert (= (and b!4869081 res!2078524) b!4869080))

(assert (= (and b!4869079 res!2078521) b!4869085))

(assert (= (and b!4869085 (not res!2078522)) b!4869082))

(assert (= (and b!4869082 res!2078520) b!4869086))

(declare-fun m!5868826 () Bool)

(assert (=> b!4869079 m!5868826))

(assert (=> d!1563375 m!5868550))

(assert (=> d!1563375 m!5868142))

(assert (=> d!1563375 m!5868388))

(assert (=> d!1563375 m!5868388))

(declare-fun m!5868828 () Bool)

(assert (=> d!1563375 m!5868828))

(assert (=> d!1563375 m!5868142))

(declare-fun m!5868830 () Bool)

(assert (=> d!1563375 m!5868830))

(assert (=> d!1563375 m!5868826))

(declare-fun m!5868832 () Bool)

(assert (=> d!1563375 m!5868832))

(assert (=> b!4869086 m!5868704))

(declare-fun m!5868834 () Bool)

(assert (=> b!4869086 m!5868834))

(declare-fun m!5868836 () Bool)

(assert (=> b!4869086 m!5868836))

(assert (=> b!4869086 m!5868142))

(assert (=> b!4869086 m!5868142))

(assert (=> b!4869086 m!5868704))

(declare-fun m!5868838 () Bool)

(assert (=> b!4869086 m!5868838))

(assert (=> b!4869085 m!5868826))

(declare-fun m!5868840 () Bool)

(assert (=> b!4869084 m!5868840))

(assert (=> b!4869082 m!5868838))

(assert (=> b!4869082 m!5868142))

(assert (=> b!4869082 m!5868142))

(assert (=> b!4869082 m!5868704))

(assert (=> b!4869082 m!5868704))

(assert (=> b!4869082 m!5868834))

(declare-fun m!5868842 () Bool)

(assert (=> bm!338135 m!5868842))

(assert (=> b!4869081 m!5868838))

(assert (=> b!4869081 m!5868142))

(assert (=> b!4869081 m!5868142))

(assert (=> b!4869081 m!5868388))

(assert (=> b!4869081 m!5868388))

(declare-fun m!5868844 () Bool)

(assert (=> b!4869081 m!5868844))

(assert (=> b!4869080 m!5868142))

(assert (=> b!4869080 m!5868388))

(assert (=> b!4869080 m!5868836))

(assert (=> b!4869080 m!5868142))

(assert (=> b!4869080 m!5868388))

(assert (=> b!4869080 m!5868844))

(assert (=> b!4869080 m!5868838))

(assert (=> b!4868552 d!1563375))

(declare-fun bs!1174495 () Bool)

(declare-fun b!4869101 () Bool)

(assert (= bs!1174495 (and b!4869101 d!1563295)))

(declare-fun lambda!243477 () Int)

(assert (=> bs!1174495 (= lambda!243477 lambda!243455)))

(declare-fun b!4869112 () Bool)

(declare-fun e!3043924 () Bool)

(assert (=> b!4869112 (= e!3043924 true)))

(declare-fun b!4869111 () Bool)

(declare-fun e!3043923 () Bool)

(assert (=> b!4869111 (= e!3043923 e!3043924)))

(assert (=> b!4869101 e!3043923))

(assert (= b!4869111 b!4869112))

(assert (= b!4869101 b!4869111))

(assert (=> b!4869112 (< (dynLambda!22462 order!25221 (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) (dynLambda!22461 order!25219 lambda!243477))))

(assert (=> b!4869112 (< (dynLambda!22460 order!25217 (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) (dynLambda!22461 order!25219 lambda!243477))))

(declare-fun b!4869099 () Bool)

(declare-fun e!3043915 () Bool)

(declare-fun lt!1995136 () List!56065)

(declare-datatypes ((tuple2!59798 0))(
  ( (tuple2!59799 (_1!33202 List!56065) (_2!33202 List!56065)) )
))
(declare-fun findLongestMatchInner!1721 (Regex!13107 List!56065 Int List!56065 List!56065 Int) tuple2!59798)

(assert (=> b!4869099 (= e!3043915 (matchR!6492 (regex!8032 (h!62391 rules!1248)) (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))))))

(declare-fun b!4869100 () Bool)

(declare-fun e!3043917 () Bool)

(declare-fun e!3043916 () Bool)

(assert (=> b!4869100 (= e!3043917 e!3043916)))

(declare-fun res!2078535 () Bool)

(assert (=> b!4869100 (=> res!2078535 e!3043916)))

(declare-fun lt!1995135 () Option!13779)

(assert (=> b!4869100 (= res!2078535 (not (isDefined!10848 lt!1995135)))))

(declare-fun d!1563377 () Bool)

(assert (=> d!1563377 e!3043917))

(declare-fun res!2078533 () Bool)

(assert (=> d!1563377 (=> (not res!2078533) (not e!3043917))))

(assert (=> d!1563377 (= res!2078533 (= (isDefined!10848 lt!1995135) (isDefined!10849 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (list!17492 input!661)))))))

(declare-fun e!3043918 () Option!13779)

(assert (=> d!1563377 (= lt!1995135 e!3043918)))

(declare-fun c!828180 () Bool)

(declare-datatypes ((tuple2!59800 0))(
  ( (tuple2!59801 (_1!33203 BalanceConc!28588) (_2!33203 BalanceConc!28588)) )
))
(declare-fun lt!1995134 () tuple2!59800)

(declare-fun isEmpty!29942 (BalanceConc!28588) Bool)

(assert (=> d!1563377 (= c!828180 (isEmpty!29942 (_1!33203 lt!1995134)))))

(declare-fun findLongestMatchWithZipperSequenceV2!134 (Regex!13107 BalanceConc!28588 BalanceConc!28588) tuple2!59800)

(assert (=> d!1563377 (= lt!1995134 (findLongestMatchWithZipperSequenceV2!134 (regex!8032 (h!62391 rules!1248)) input!661 totalInput!332))))

(assert (=> d!1563377 (ruleValid!3629 thiss!11777 (h!62391 rules!1248))))

(assert (=> d!1563377 (= (maxPrefixOneRuleZipperSequenceV2!258 thiss!11777 (h!62391 rules!1248) input!661 totalInput!332) lt!1995135)))

(assert (=> b!4869101 (= e!3043918 (Some!13778 (tuple2!59789 (Token!14649 (apply!13502 (transformation!8032 (h!62391 rules!1248)) (_1!33203 lt!1995134)) (h!62391 rules!1248) (size!36870 (_1!33203 lt!1995134)) (list!17492 (_1!33203 lt!1995134))) (_2!33203 lt!1995134))))))

(assert (=> b!4869101 (= lt!1995136 (list!17492 input!661))))

(declare-fun lt!1995137 () Unit!145952)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1684 (Regex!13107 List!56065) Unit!145952)

(assert (=> b!4869101 (= lt!1995137 (longestMatchIsAcceptedByMatchOrIsEmpty!1684 (regex!8032 (h!62391 rules!1248)) lt!1995136))))

(declare-fun res!2078534 () Bool)

(declare-fun isEmpty!29943 (List!56065) Bool)

(assert (=> b!4869101 (= res!2078534 (isEmpty!29943 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))))))

(assert (=> b!4869101 (=> res!2078534 e!3043915)))

(assert (=> b!4869101 e!3043915))

(declare-fun lt!1995132 () Unit!145952)

(assert (=> b!4869101 (= lt!1995132 lt!1995137)))

(declare-fun lt!1995130 () Unit!145952)

(declare-fun lemmaInv!1204 (TokenValueInjection!15992) Unit!145952)

(assert (=> b!4869101 (= lt!1995130 (lemmaInv!1204 (transformation!8032 (h!62391 rules!1248))))))

(declare-fun lt!1995131 () Unit!145952)

(declare-fun ForallOf!1101 (Int BalanceConc!28588) Unit!145952)

(assert (=> b!4869101 (= lt!1995131 (ForallOf!1101 lambda!243477 (_1!33203 lt!1995134)))))

(declare-fun lt!1995133 () Unit!145952)

(assert (=> b!4869101 (= lt!1995133 (ForallOf!1101 lambda!243477 (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))))))

(declare-fun lt!1995138 () Option!13779)

(assert (=> b!4869101 (= lt!1995138 (Some!13778 (tuple2!59789 (Token!14649 (apply!13502 (transformation!8032 (h!62391 rules!1248)) (_1!33203 lt!1995134)) (h!62391 rules!1248) (size!36870 (_1!33203 lt!1995134)) (list!17492 (_1!33203 lt!1995134))) (_2!33203 lt!1995134))))))

(declare-fun lt!1995139 () Unit!145952)

(declare-fun lemmaEqSameImage!1058 (TokenValueInjection!15992 BalanceConc!28588 BalanceConc!28588) Unit!145952)

(assert (=> b!4869101 (= lt!1995139 (lemmaEqSameImage!1058 (transformation!8032 (h!62391 rules!1248)) (_1!33203 lt!1995134) (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))))))

(declare-fun b!4869102 () Bool)

(declare-fun e!3043914 () Bool)

(assert (=> b!4869102 (= e!3043914 (= (list!17492 (_2!33197 (get!19227 lt!1995135))) (_2!33199 (get!19228 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (list!17492 input!661))))))))

(declare-fun b!4869103 () Bool)

(assert (=> b!4869103 (= e!3043918 None!13778)))

(declare-fun b!4869104 () Bool)

(assert (=> b!4869104 (= e!3043916 e!3043914)))

(declare-fun res!2078536 () Bool)

(assert (=> b!4869104 (=> (not res!2078536) (not e!3043914))))

(assert (=> b!4869104 (= res!2078536 (= (_1!33197 (get!19227 lt!1995135)) (_1!33199 (get!19228 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (list!17492 input!661))))))))

(assert (= (and d!1563377 c!828180) b!4869103))

(assert (= (and d!1563377 (not c!828180)) b!4869101))

(assert (= (and b!4869101 (not res!2078534)) b!4869099))

(assert (= (and d!1563377 res!2078533) b!4869100))

(assert (= (and b!4869100 (not res!2078535)) b!4869104))

(assert (= (and b!4869104 res!2078536) b!4869102))

(declare-fun m!5868846 () Bool)

(assert (=> d!1563377 m!5868846))

(declare-fun m!5868848 () Bool)

(assert (=> d!1563377 m!5868848))

(assert (=> d!1563377 m!5868728))

(declare-fun m!5868850 () Bool)

(assert (=> d!1563377 m!5868850))

(assert (=> d!1563377 m!5868548))

(assert (=> d!1563377 m!5868142))

(assert (=> d!1563377 m!5868728))

(assert (=> d!1563377 m!5868142))

(declare-fun m!5868852 () Bool)

(assert (=> d!1563377 m!5868852))

(declare-fun m!5868854 () Bool)

(assert (=> b!4869104 m!5868854))

(assert (=> b!4869104 m!5868142))

(assert (=> b!4869104 m!5868142))

(assert (=> b!4869104 m!5868728))

(assert (=> b!4869104 m!5868728))

(declare-fun m!5868856 () Bool)

(assert (=> b!4869104 m!5868856))

(assert (=> b!4869102 m!5868854))

(declare-fun m!5868858 () Bool)

(assert (=> b!4869102 m!5868858))

(assert (=> b!4869102 m!5868728))

(assert (=> b!4869102 m!5868856))

(assert (=> b!4869102 m!5868142))

(assert (=> b!4869102 m!5868728))

(assert (=> b!4869102 m!5868142))

(declare-fun m!5868860 () Bool)

(assert (=> b!4869099 m!5868860))

(declare-fun m!5868862 () Bool)

(assert (=> b!4869099 m!5868862))

(assert (=> b!4869099 m!5868860))

(assert (=> b!4869099 m!5868862))

(declare-fun m!5868864 () Bool)

(assert (=> b!4869099 m!5868864))

(declare-fun m!5868866 () Bool)

(assert (=> b!4869099 m!5868866))

(declare-fun m!5868868 () Bool)

(assert (=> b!4869101 m!5868868))

(assert (=> b!4869101 m!5868860))

(declare-fun m!5868870 () Bool)

(assert (=> b!4869101 m!5868870))

(declare-fun m!5868872 () Bool)

(assert (=> b!4869101 m!5868872))

(assert (=> b!4869101 m!5868862))

(declare-fun m!5868874 () Bool)

(assert (=> b!4869101 m!5868874))

(assert (=> b!4869101 m!5868860))

(assert (=> b!4869101 m!5868862))

(assert (=> b!4869101 m!5868864))

(declare-fun m!5868876 () Bool)

(assert (=> b!4869101 m!5868876))

(declare-fun m!5868878 () Bool)

(assert (=> b!4869101 m!5868878))

(declare-fun m!5868880 () Bool)

(assert (=> b!4869101 m!5868880))

(assert (=> b!4869101 m!5868880))

(declare-fun m!5868882 () Bool)

(assert (=> b!4869101 m!5868882))

(assert (=> b!4869101 m!5868142))

(assert (=> b!4869101 m!5868882))

(declare-fun m!5868884 () Bool)

(assert (=> b!4869101 m!5868884))

(assert (=> b!4869101 m!5868882))

(declare-fun m!5868886 () Bool)

(assert (=> b!4869101 m!5868886))

(assert (=> b!4869100 m!5868852))

(assert (=> bm!338113 d!1563377))

(declare-fun b!4869113 () Bool)

(declare-fun e!3043926 () tuple2!59786)

(assert (=> b!4869113 (= e!3043926 (tuple2!59787 Nil!55942 (_2!33199 (v!49698 lt!1994876))))))

(declare-fun b!4869114 () Bool)

(declare-fun e!3043925 () Bool)

(declare-fun lt!1995141 () tuple2!59786)

(assert (=> b!4869114 (= e!3043925 (= (_2!33196 lt!1995141) (_2!33199 (v!49698 lt!1994876))))))

(declare-fun b!4869115 () Bool)

(declare-fun e!3043927 () Bool)

(assert (=> b!4869115 (= e!3043925 e!3043927)))

(declare-fun res!2078537 () Bool)

(assert (=> b!4869115 (= res!2078537 (< (size!36875 (_2!33196 lt!1995141)) (size!36875 (_2!33199 (v!49698 lt!1994876)))))))

(assert (=> b!4869115 (=> (not res!2078537) (not e!3043927))))

(declare-fun b!4869116 () Bool)

(declare-fun lt!1995142 () Option!13781)

(declare-fun lt!1995140 () tuple2!59786)

(assert (=> b!4869116 (= e!3043926 (tuple2!59787 (Cons!55942 (_1!33199 (v!49698 lt!1995142)) (_1!33196 lt!1995140)) (_2!33196 lt!1995140)))))

(assert (=> b!4869116 (= lt!1995140 (lexList!2103 thiss!11777 rules!1248 (_2!33199 (v!49698 lt!1995142))))))

(declare-fun d!1563379 () Bool)

(assert (=> d!1563379 e!3043925))

(declare-fun c!828182 () Bool)

(assert (=> d!1563379 (= c!828182 (> (size!36877 (_1!33196 lt!1995141)) 0))))

(assert (=> d!1563379 (= lt!1995141 e!3043926)))

(declare-fun c!828181 () Bool)

(assert (=> d!1563379 (= c!828181 ((_ is Some!13780) lt!1995142))))

(assert (=> d!1563379 (= lt!1995142 (maxPrefix!4549 thiss!11777 rules!1248 (_2!33199 (v!49698 lt!1994876))))))

(assert (=> d!1563379 (= (lexList!2103 thiss!11777 rules!1248 (_2!33199 (v!49698 lt!1994876))) lt!1995141)))

(declare-fun b!4869117 () Bool)

(assert (=> b!4869117 (= e!3043927 (not (isEmpty!29933 (_1!33196 lt!1995141))))))

(assert (= (and d!1563379 c!828181) b!4869116))

(assert (= (and d!1563379 (not c!828181)) b!4869113))

(assert (= (and d!1563379 c!828182) b!4869115))

(assert (= (and d!1563379 (not c!828182)) b!4869114))

(assert (= (and b!4869115 res!2078537) b!4869117))

(declare-fun m!5868888 () Bool)

(assert (=> b!4869115 m!5868888))

(declare-fun m!5868890 () Bool)

(assert (=> b!4869115 m!5868890))

(declare-fun m!5868892 () Bool)

(assert (=> b!4869116 m!5868892))

(declare-fun m!5868894 () Bool)

(assert (=> d!1563379 m!5868894))

(declare-fun m!5868896 () Bool)

(assert (=> d!1563379 m!5868896))

(declare-fun m!5868898 () Bool)

(assert (=> b!4869117 m!5868898))

(assert (=> b!4868451 d!1563379))

(declare-fun d!1563381 () Bool)

(assert (=> d!1563381 (= (isEmpty!29933 (_1!33196 lt!1994875)) ((_ is Nil!55942) (_1!33196 lt!1994875)))))

(assert (=> b!4868452 d!1563381))

(assert (=> b!4868553 d!1563291))

(declare-fun b!4869118 () Bool)

(declare-fun e!3043929 () Bool)

(declare-fun e!3043928 () Bool)

(assert (=> b!4869118 (= e!3043929 e!3043928)))

(declare-fun res!2078538 () Bool)

(assert (=> b!4869118 (=> (not res!2078538) (not e!3043928))))

(assert (=> b!4869118 (= res!2078538 (<= (- 1) (- (height!1929 (left!40633 (c!828058 input!661))) (height!1929 (right!40963 (c!828058 input!661))))))))

(declare-fun b!4869119 () Bool)

(declare-fun res!2078543 () Bool)

(assert (=> b!4869119 (=> (not res!2078543) (not e!3043928))))

(assert (=> b!4869119 (= res!2078543 (isBalanced!3956 (right!40963 (c!828058 input!661))))))

(declare-fun d!1563383 () Bool)

(declare-fun res!2078539 () Bool)

(assert (=> d!1563383 (=> res!2078539 e!3043929)))

(assert (=> d!1563383 (= res!2078539 (not ((_ is Node!14573) (c!828058 input!661))))))

(assert (=> d!1563383 (= (isBalanced!3956 (c!828058 input!661)) e!3043929)))

(declare-fun b!4869120 () Bool)

(declare-fun res!2078542 () Bool)

(assert (=> b!4869120 (=> (not res!2078542) (not e!3043928))))

(assert (=> b!4869120 (= res!2078542 (isBalanced!3956 (left!40633 (c!828058 input!661))))))

(declare-fun b!4869121 () Bool)

(declare-fun res!2078540 () Bool)

(assert (=> b!4869121 (=> (not res!2078540) (not e!3043928))))

(assert (=> b!4869121 (= res!2078540 (<= (- (height!1929 (left!40633 (c!828058 input!661))) (height!1929 (right!40963 (c!828058 input!661)))) 1))))

(declare-fun b!4869122 () Bool)

(assert (=> b!4869122 (= e!3043928 (not (isEmpty!29938 (right!40963 (c!828058 input!661)))))))

(declare-fun b!4869123 () Bool)

(declare-fun res!2078541 () Bool)

(assert (=> b!4869123 (=> (not res!2078541) (not e!3043928))))

(assert (=> b!4869123 (= res!2078541 (not (isEmpty!29938 (left!40633 (c!828058 input!661)))))))

(assert (= (and d!1563383 (not res!2078539)) b!4869118))

(assert (= (and b!4869118 res!2078538) b!4869121))

(assert (= (and b!4869121 res!2078540) b!4869120))

(assert (= (and b!4869120 res!2078542) b!4869119))

(assert (= (and b!4869119 res!2078543) b!4869123))

(assert (= (and b!4869123 res!2078541) b!4869122))

(declare-fun m!5868900 () Bool)

(assert (=> b!4869123 m!5868900))

(declare-fun m!5868902 () Bool)

(assert (=> b!4869119 m!5868902))

(declare-fun m!5868904 () Bool)

(assert (=> b!4869120 m!5868904))

(assert (=> b!4869121 m!5868816))

(assert (=> b!4869121 m!5868818))

(assert (=> b!4869118 m!5868816))

(assert (=> b!4869118 m!5868818))

(declare-fun m!5868906 () Bool)

(assert (=> b!4869122 m!5868906))

(assert (=> d!1563155 d!1563383))

(declare-fun b!4869134 () Bool)

(declare-fun e!3043935 () List!56065)

(assert (=> b!4869134 (= e!3043935 (list!17500 (xs!17881 (c!828058 totalInput!332))))))

(declare-fun b!4869135 () Bool)

(assert (=> b!4869135 (= e!3043935 (++!12186 (list!17495 (left!40633 (c!828058 totalInput!332))) (list!17495 (right!40963 (c!828058 totalInput!332)))))))

(declare-fun d!1563385 () Bool)

(declare-fun c!828187 () Bool)

(assert (=> d!1563385 (= c!828187 ((_ is Empty!14573) (c!828058 totalInput!332)))))

(declare-fun e!3043934 () List!56065)

(assert (=> d!1563385 (= (list!17495 (c!828058 totalInput!332)) e!3043934)))

(declare-fun b!4869133 () Bool)

(assert (=> b!4869133 (= e!3043934 e!3043935)))

(declare-fun c!828188 () Bool)

(assert (=> b!4869133 (= c!828188 ((_ is Leaf!24300) (c!828058 totalInput!332)))))

(declare-fun b!4869132 () Bool)

(assert (=> b!4869132 (= e!3043934 Nil!55941)))

(assert (= (and d!1563385 c!828187) b!4869132))

(assert (= (and d!1563385 (not c!828187)) b!4869133))

(assert (= (and b!4869133 c!828188) b!4869134))

(assert (= (and b!4869133 (not c!828188)) b!4869135))

(declare-fun m!5868908 () Bool)

(assert (=> b!4869134 m!5868908))

(declare-fun m!5868910 () Bool)

(assert (=> b!4869135 m!5868910))

(declare-fun m!5868912 () Bool)

(assert (=> b!4869135 m!5868912))

(assert (=> b!4869135 m!5868910))

(assert (=> b!4869135 m!5868912))

(declare-fun m!5868914 () Bool)

(assert (=> b!4869135 m!5868914))

(assert (=> d!1563161 d!1563385))

(declare-fun d!1563387 () Bool)

(declare-fun res!2078544 () Bool)

(declare-fun e!3043936 () Bool)

(assert (=> d!1563387 (=> (not res!2078544) (not e!3043936))))

(assert (=> d!1563387 (= res!2078544 (= (csize!29376 (c!828058 totalInput!332)) (+ (size!36876 (left!40633 (c!828058 totalInput!332))) (size!36876 (right!40963 (c!828058 totalInput!332))))))))

(assert (=> d!1563387 (= (inv!71858 (c!828058 totalInput!332)) e!3043936)))

(declare-fun b!4869136 () Bool)

(declare-fun res!2078545 () Bool)

(assert (=> b!4869136 (=> (not res!2078545) (not e!3043936))))

(assert (=> b!4869136 (= res!2078545 (and (not (= (left!40633 (c!828058 totalInput!332)) Empty!14573)) (not (= (right!40963 (c!828058 totalInput!332)) Empty!14573))))))

(declare-fun b!4869137 () Bool)

(declare-fun res!2078546 () Bool)

(assert (=> b!4869137 (=> (not res!2078546) (not e!3043936))))

(assert (=> b!4869137 (= res!2078546 (= (cheight!14784 (c!828058 totalInput!332)) (+ (max!0 (height!1929 (left!40633 (c!828058 totalInput!332))) (height!1929 (right!40963 (c!828058 totalInput!332)))) 1)))))

(declare-fun b!4869138 () Bool)

(assert (=> b!4869138 (= e!3043936 (<= 0 (cheight!14784 (c!828058 totalInput!332))))))

(assert (= (and d!1563387 res!2078544) b!4869136))

(assert (= (and b!4869136 res!2078545) b!4869137))

(assert (= (and b!4869137 res!2078546) b!4869138))

(declare-fun m!5868916 () Bool)

(assert (=> d!1563387 m!5868916))

(declare-fun m!5868918 () Bool)

(assert (=> d!1563387 m!5868918))

(assert (=> b!4869137 m!5868578))

(assert (=> b!4869137 m!5868580))

(assert (=> b!4869137 m!5868578))

(assert (=> b!4869137 m!5868580))

(declare-fun m!5868920 () Bool)

(assert (=> b!4869137 m!5868920))

(assert (=> b!4868567 d!1563387))

(assert (=> b!4868550 d!1563341))

(assert (=> b!4868550 d!1563349))

(assert (=> b!4868550 d!1563345))

(assert (=> b!4868550 d!1563163))

(declare-fun d!1563389 () Bool)

(declare-fun res!2078547 () Bool)

(declare-fun e!3043937 () Bool)

(assert (=> d!1563389 (=> (not res!2078547) (not e!3043937))))

(assert (=> d!1563389 (= res!2078547 (<= (size!36875 (list!17500 (xs!17881 (c!828058 totalInput!332)))) 512))))

(assert (=> d!1563389 (= (inv!71859 (c!828058 totalInput!332)) e!3043937)))

(declare-fun b!4869139 () Bool)

(declare-fun res!2078548 () Bool)

(assert (=> b!4869139 (=> (not res!2078548) (not e!3043937))))

(assert (=> b!4869139 (= res!2078548 (= (csize!29377 (c!828058 totalInput!332)) (size!36875 (list!17500 (xs!17881 (c!828058 totalInput!332))))))))

(declare-fun b!4869140 () Bool)

(assert (=> b!4869140 (= e!3043937 (and (> (csize!29377 (c!828058 totalInput!332)) 0) (<= (csize!29377 (c!828058 totalInput!332)) 512)))))

(assert (= (and d!1563389 res!2078547) b!4869139))

(assert (= (and b!4869139 res!2078548) b!4869140))

(assert (=> d!1563389 m!5868908))

(assert (=> d!1563389 m!5868908))

(declare-fun m!5868922 () Bool)

(assert (=> d!1563389 m!5868922))

(assert (=> b!4869139 m!5868908))

(assert (=> b!4869139 m!5868908))

(assert (=> b!4869139 m!5868922))

(assert (=> b!4868569 d!1563389))

(assert (=> b!4868547 d!1563291))

(declare-fun d!1563391 () Bool)

(declare-fun c!828189 () Bool)

(assert (=> d!1563391 (= c!828189 ((_ is Node!14573) (left!40633 (c!828058 input!661))))))

(declare-fun e!3043938 () Bool)

(assert (=> d!1563391 (= (inv!71852 (left!40633 (c!828058 input!661))) e!3043938)))

(declare-fun b!4869141 () Bool)

(assert (=> b!4869141 (= e!3043938 (inv!71858 (left!40633 (c!828058 input!661))))))

(declare-fun b!4869142 () Bool)

(declare-fun e!3043939 () Bool)

(assert (=> b!4869142 (= e!3043938 e!3043939)))

(declare-fun res!2078549 () Bool)

(assert (=> b!4869142 (= res!2078549 (not ((_ is Leaf!24300) (left!40633 (c!828058 input!661)))))))

(assert (=> b!4869142 (=> res!2078549 e!3043939)))

(declare-fun b!4869143 () Bool)

(assert (=> b!4869143 (= e!3043939 (inv!71859 (left!40633 (c!828058 input!661))))))

(assert (= (and d!1563391 c!828189) b!4869141))

(assert (= (and d!1563391 (not c!828189)) b!4869142))

(assert (= (and b!4869142 (not res!2078549)) b!4869143))

(declare-fun m!5868924 () Bool)

(assert (=> b!4869141 m!5868924))

(declare-fun m!5868926 () Bool)

(assert (=> b!4869143 m!5868926))

(assert (=> b!4868609 d!1563391))

(declare-fun d!1563393 () Bool)

(declare-fun c!828190 () Bool)

(assert (=> d!1563393 (= c!828190 ((_ is Node!14573) (right!40963 (c!828058 input!661))))))

(declare-fun e!3043940 () Bool)

(assert (=> d!1563393 (= (inv!71852 (right!40963 (c!828058 input!661))) e!3043940)))

(declare-fun b!4869144 () Bool)

(assert (=> b!4869144 (= e!3043940 (inv!71858 (right!40963 (c!828058 input!661))))))

(declare-fun b!4869145 () Bool)

(declare-fun e!3043941 () Bool)

(assert (=> b!4869145 (= e!3043940 e!3043941)))

(declare-fun res!2078550 () Bool)

(assert (=> b!4869145 (= res!2078550 (not ((_ is Leaf!24300) (right!40963 (c!828058 input!661)))))))

(assert (=> b!4869145 (=> res!2078550 e!3043941)))

(declare-fun b!4869146 () Bool)

(assert (=> b!4869146 (= e!3043941 (inv!71859 (right!40963 (c!828058 input!661))))))

(assert (= (and d!1563393 c!828190) b!4869144))

(assert (= (and d!1563393 (not c!828190)) b!4869145))

(assert (= (and b!4869145 (not res!2078550)) b!4869146))

(declare-fun m!5868928 () Bool)

(assert (=> b!4869144 m!5868928))

(declare-fun m!5868930 () Bool)

(assert (=> b!4869146 m!5868930))

(assert (=> b!4868609 d!1563393))

(declare-fun b!4869149 () Bool)

(declare-fun e!3043943 () List!56065)

(assert (=> b!4869149 (= e!3043943 (list!17500 (xs!17881 (c!828058 input!661))))))

(declare-fun b!4869150 () Bool)

(assert (=> b!4869150 (= e!3043943 (++!12186 (list!17495 (left!40633 (c!828058 input!661))) (list!17495 (right!40963 (c!828058 input!661)))))))

(declare-fun d!1563395 () Bool)

(declare-fun c!828191 () Bool)

(assert (=> d!1563395 (= c!828191 ((_ is Empty!14573) (c!828058 input!661)))))

(declare-fun e!3043942 () List!56065)

(assert (=> d!1563395 (= (list!17495 (c!828058 input!661)) e!3043942)))

(declare-fun b!4869148 () Bool)

(assert (=> b!4869148 (= e!3043942 e!3043943)))

(declare-fun c!828192 () Bool)

(assert (=> b!4869148 (= c!828192 ((_ is Leaf!24300) (c!828058 input!661)))))

(declare-fun b!4869147 () Bool)

(assert (=> b!4869147 (= e!3043942 Nil!55941)))

(assert (= (and d!1563395 c!828191) b!4869147))

(assert (= (and d!1563395 (not c!828191)) b!4869148))

(assert (= (and b!4869148 c!828192) b!4869149))

(assert (= (and b!4869148 (not c!828192)) b!4869150))

(assert (=> b!4869149 m!5868668))

(declare-fun m!5868932 () Bool)

(assert (=> b!4869150 m!5868932))

(declare-fun m!5868934 () Bool)

(assert (=> b!4869150 m!5868934))

(assert (=> b!4869150 m!5868932))

(assert (=> b!4869150 m!5868934))

(declare-fun m!5868936 () Bool)

(assert (=> b!4869150 m!5868936))

(assert (=> d!1563163 d!1563395))

(assert (=> b!4868548 d!1563341))

(assert (=> b!4868548 d!1563231))

(assert (=> b!4868548 d!1563343))

(assert (=> b!4868548 d!1563163))

(declare-fun d!1563397 () Bool)

(assert (=> d!1563397 (= (get!19228 (maxPrefixZipper!563 thiss!11777 rules!1248 (list!17492 input!661))) (v!49698 (maxPrefixZipper!563 thiss!11777 rules!1248 (list!17492 input!661))))))

(assert (=> b!4868548 d!1563397))

(assert (=> b!4868549 d!1563341))

(assert (=> b!4868549 d!1563397))

(assert (=> b!4868549 d!1563231))

(assert (=> b!4868549 d!1563163))

(assert (=> b!4868412 d!1563215))

(declare-fun d!1563399 () Bool)

(assert (=> d!1563399 (= (inv!71860 (xs!17881 (c!828058 input!661))) (<= (size!36875 (innerList!14661 (xs!17881 (c!828058 input!661)))) 2147483647))))

(declare-fun bs!1174496 () Bool)

(assert (= bs!1174496 d!1563399))

(declare-fun m!5868938 () Bool)

(assert (=> bs!1174496 m!5868938))

(assert (=> b!4868610 d!1563399))

(declare-fun b!4869155 () Bool)

(declare-fun e!3043946 () Bool)

(declare-fun tp!1369898 () Bool)

(assert (=> b!4869155 (= e!3043946 (and tp_is_empty!35663 tp!1369898))))

(assert (=> b!4868611 (= tp!1369844 e!3043946)))

(assert (= (and b!4868611 ((_ is Cons!55941) (innerList!14661 (xs!17881 (c!828058 input!661))))) b!4869155))

(declare-fun tp!1369901 () Bool)

(declare-fun e!3043948 () Bool)

(declare-fun tp!1369899 () Bool)

(declare-fun b!4869156 () Bool)

(assert (=> b!4869156 (= e!3043948 (and (inv!71852 (left!40633 (left!40633 (c!828058 totalInput!332)))) tp!1369899 (inv!71852 (right!40963 (left!40633 (c!828058 totalInput!332)))) tp!1369901))))

(declare-fun b!4869158 () Bool)

(declare-fun e!3043947 () Bool)

(declare-fun tp!1369900 () Bool)

(assert (=> b!4869158 (= e!3043947 tp!1369900)))

(declare-fun b!4869157 () Bool)

(assert (=> b!4869157 (= e!3043948 (and (inv!71860 (xs!17881 (left!40633 (c!828058 totalInput!332)))) e!3043947))))

(assert (=> b!4868606 (= tp!1369840 (and (inv!71852 (left!40633 (c!828058 totalInput!332))) e!3043948))))

(assert (= (and b!4868606 ((_ is Node!14573) (left!40633 (c!828058 totalInput!332)))) b!4869156))

(assert (= b!4869157 b!4869158))

(assert (= (and b!4868606 ((_ is Leaf!24300) (left!40633 (c!828058 totalInput!332)))) b!4869157))

(declare-fun m!5868940 () Bool)

(assert (=> b!4869156 m!5868940))

(declare-fun m!5868942 () Bool)

(assert (=> b!4869156 m!5868942))

(declare-fun m!5868944 () Bool)

(assert (=> b!4869157 m!5868944))

(assert (=> b!4868606 m!5868324))

(declare-fun tp!1369902 () Bool)

(declare-fun tp!1369904 () Bool)

(declare-fun e!3043950 () Bool)

(declare-fun b!4869159 () Bool)

(assert (=> b!4869159 (= e!3043950 (and (inv!71852 (left!40633 (right!40963 (c!828058 totalInput!332)))) tp!1369902 (inv!71852 (right!40963 (right!40963 (c!828058 totalInput!332)))) tp!1369904))))

(declare-fun b!4869161 () Bool)

(declare-fun e!3043949 () Bool)

(declare-fun tp!1369903 () Bool)

(assert (=> b!4869161 (= e!3043949 tp!1369903)))

(declare-fun b!4869160 () Bool)

(assert (=> b!4869160 (= e!3043950 (and (inv!71860 (xs!17881 (right!40963 (c!828058 totalInput!332)))) e!3043949))))

(assert (=> b!4868606 (= tp!1369842 (and (inv!71852 (right!40963 (c!828058 totalInput!332))) e!3043950))))

(assert (= (and b!4868606 ((_ is Node!14573) (right!40963 (c!828058 totalInput!332)))) b!4869159))

(assert (= b!4869160 b!4869161))

(assert (= (and b!4868606 ((_ is Leaf!24300) (right!40963 (c!828058 totalInput!332)))) b!4869160))

(declare-fun m!5868946 () Bool)

(assert (=> b!4869159 m!5868946))

(declare-fun m!5868948 () Bool)

(assert (=> b!4869159 m!5868948))

(declare-fun m!5868950 () Bool)

(assert (=> b!4869160 m!5868950))

(assert (=> b!4868606 m!5868326))

(declare-fun b!4869164 () Bool)

(declare-fun b_free!130675 () Bool)

(declare-fun b_next!131465 () Bool)

(assert (=> b!4869164 (= b_free!130675 (not b_next!131465))))

(declare-fun tp!1369906 () Bool)

(declare-fun b_and!342807 () Bool)

(assert (=> b!4869164 (= tp!1369906 b_and!342807)))

(declare-fun b_free!130677 () Bool)

(declare-fun b_next!131467 () Bool)

(assert (=> b!4869164 (= b_free!130677 (not b_next!131467))))

(declare-fun tp!1369908 () Bool)

(declare-fun b_and!342809 () Bool)

(assert (=> b!4869164 (= tp!1369908 b_and!342809)))

(declare-fun e!3043954 () Bool)

(assert (=> b!4869164 (= e!3043954 (and tp!1369906 tp!1369908))))

(declare-fun e!3043951 () Bool)

(declare-fun b!4869163 () Bool)

(declare-fun tp!1369907 () Bool)

(assert (=> b!4869163 (= e!3043951 (and tp!1369907 (inv!71848 (tag!8896 (h!62391 (t!363995 (t!363995 rules!1248))))) (inv!71853 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) e!3043954))))

(declare-fun b!4869162 () Bool)

(declare-fun e!3043952 () Bool)

(declare-fun tp!1369905 () Bool)

(assert (=> b!4869162 (= e!3043952 (and e!3043951 tp!1369905))))

(assert (=> b!4868581 (= tp!1369815 e!3043952)))

(assert (= b!4869163 b!4869164))

(assert (= b!4869162 b!4869163))

(assert (= (and b!4868581 ((_ is Cons!55943) (t!363995 (t!363995 rules!1248)))) b!4869162))

(declare-fun m!5868952 () Bool)

(assert (=> b!4869163 m!5868952))

(declare-fun m!5868954 () Bool)

(assert (=> b!4869163 m!5868954))

(declare-fun b!4869168 () Bool)

(declare-fun e!3043955 () Bool)

(declare-fun tp!1369913 () Bool)

(declare-fun tp!1369911 () Bool)

(assert (=> b!4869168 (= e!3043955 (and tp!1369913 tp!1369911))))

(declare-fun b!4869166 () Bool)

(declare-fun tp!1369909 () Bool)

(declare-fun tp!1369912 () Bool)

(assert (=> b!4869166 (= e!3043955 (and tp!1369909 tp!1369912))))

(declare-fun b!4869167 () Bool)

(declare-fun tp!1369910 () Bool)

(assert (=> b!4869167 (= e!3043955 tp!1369910)))

(assert (=> b!4868595 (= tp!1369829 e!3043955)))

(declare-fun b!4869165 () Bool)

(assert (=> b!4869165 (= e!3043955 tp_is_empty!35663)))

(assert (= (and b!4868595 ((_ is ElementMatch!13107) (regOne!26726 (regex!8032 (h!62391 rules!1248))))) b!4869165))

(assert (= (and b!4868595 ((_ is Concat!21450) (regOne!26726 (regex!8032 (h!62391 rules!1248))))) b!4869166))

(assert (= (and b!4868595 ((_ is Star!13107) (regOne!26726 (regex!8032 (h!62391 rules!1248))))) b!4869167))

(assert (= (and b!4868595 ((_ is Union!13107) (regOne!26726 (regex!8032 (h!62391 rules!1248))))) b!4869168))

(declare-fun b!4869172 () Bool)

(declare-fun e!3043956 () Bool)

(declare-fun tp!1369918 () Bool)

(declare-fun tp!1369916 () Bool)

(assert (=> b!4869172 (= e!3043956 (and tp!1369918 tp!1369916))))

(declare-fun b!4869170 () Bool)

(declare-fun tp!1369914 () Bool)

(declare-fun tp!1369917 () Bool)

(assert (=> b!4869170 (= e!3043956 (and tp!1369914 tp!1369917))))

(declare-fun b!4869171 () Bool)

(declare-fun tp!1369915 () Bool)

(assert (=> b!4869171 (= e!3043956 tp!1369915)))

(assert (=> b!4868595 (= tp!1369832 e!3043956)))

(declare-fun b!4869169 () Bool)

(assert (=> b!4869169 (= e!3043956 tp_is_empty!35663)))

(assert (= (and b!4868595 ((_ is ElementMatch!13107) (regTwo!26726 (regex!8032 (h!62391 rules!1248))))) b!4869169))

(assert (= (and b!4868595 ((_ is Concat!21450) (regTwo!26726 (regex!8032 (h!62391 rules!1248))))) b!4869170))

(assert (= (and b!4868595 ((_ is Star!13107) (regTwo!26726 (regex!8032 (h!62391 rules!1248))))) b!4869171))

(assert (= (and b!4868595 ((_ is Union!13107) (regTwo!26726 (regex!8032 (h!62391 rules!1248))))) b!4869172))

(declare-fun b!4869173 () Bool)

(declare-fun e!3043957 () Bool)

(declare-fun tp!1369919 () Bool)

(assert (=> b!4869173 (= e!3043957 (and tp_is_empty!35663 tp!1369919))))

(assert (=> b!4868608 (= tp!1369841 e!3043957)))

(assert (= (and b!4868608 ((_ is Cons!55941) (innerList!14661 (xs!17881 (c!828058 totalInput!332))))) b!4869173))

(declare-fun b!4869177 () Bool)

(declare-fun e!3043958 () Bool)

(declare-fun tp!1369924 () Bool)

(declare-fun tp!1369922 () Bool)

(assert (=> b!4869177 (= e!3043958 (and tp!1369924 tp!1369922))))

(declare-fun b!4869175 () Bool)

(declare-fun tp!1369920 () Bool)

(declare-fun tp!1369923 () Bool)

(assert (=> b!4869175 (= e!3043958 (and tp!1369920 tp!1369923))))

(declare-fun b!4869176 () Bool)

(declare-fun tp!1369921 () Bool)

(assert (=> b!4869176 (= e!3043958 tp!1369921)))

(assert (=> b!4868582 (= tp!1369817 e!3043958)))

(declare-fun b!4869174 () Bool)

(assert (=> b!4869174 (= e!3043958 tp_is_empty!35663)))

(assert (= (and b!4868582 ((_ is ElementMatch!13107) (regex!8032 (h!62391 (t!363995 rules!1248))))) b!4869174))

(assert (= (and b!4868582 ((_ is Concat!21450) (regex!8032 (h!62391 (t!363995 rules!1248))))) b!4869175))

(assert (= (and b!4868582 ((_ is Star!13107) (regex!8032 (h!62391 (t!363995 rules!1248))))) b!4869176))

(assert (= (and b!4868582 ((_ is Union!13107) (regex!8032 (h!62391 (t!363995 rules!1248))))) b!4869177))

(declare-fun e!3043960 () Bool)

(declare-fun tp!1369927 () Bool)

(declare-fun b!4869178 () Bool)

(declare-fun tp!1369925 () Bool)

(assert (=> b!4869178 (= e!3043960 (and (inv!71852 (left!40633 (left!40633 (c!828058 input!661)))) tp!1369925 (inv!71852 (right!40963 (left!40633 (c!828058 input!661)))) tp!1369927))))

(declare-fun b!4869180 () Bool)

(declare-fun e!3043959 () Bool)

(declare-fun tp!1369926 () Bool)

(assert (=> b!4869180 (= e!3043959 tp!1369926)))

(declare-fun b!4869179 () Bool)

(assert (=> b!4869179 (= e!3043960 (and (inv!71860 (xs!17881 (left!40633 (c!828058 input!661)))) e!3043959))))

(assert (=> b!4868609 (= tp!1369843 (and (inv!71852 (left!40633 (c!828058 input!661))) e!3043960))))

(assert (= (and b!4868609 ((_ is Node!14573) (left!40633 (c!828058 input!661)))) b!4869178))

(assert (= b!4869179 b!4869180))

(assert (= (and b!4868609 ((_ is Leaf!24300) (left!40633 (c!828058 input!661)))) b!4869179))

(declare-fun m!5868956 () Bool)

(assert (=> b!4869178 m!5868956))

(declare-fun m!5868958 () Bool)

(assert (=> b!4869178 m!5868958))

(declare-fun m!5868960 () Bool)

(assert (=> b!4869179 m!5868960))

(assert (=> b!4868609 m!5868330))

(declare-fun tp!1369928 () Bool)

(declare-fun e!3043962 () Bool)

(declare-fun b!4869181 () Bool)

(declare-fun tp!1369930 () Bool)

(assert (=> b!4869181 (= e!3043962 (and (inv!71852 (left!40633 (right!40963 (c!828058 input!661)))) tp!1369928 (inv!71852 (right!40963 (right!40963 (c!828058 input!661)))) tp!1369930))))

(declare-fun b!4869183 () Bool)

(declare-fun e!3043961 () Bool)

(declare-fun tp!1369929 () Bool)

(assert (=> b!4869183 (= e!3043961 tp!1369929)))

(declare-fun b!4869182 () Bool)

(assert (=> b!4869182 (= e!3043962 (and (inv!71860 (xs!17881 (right!40963 (c!828058 input!661)))) e!3043961))))

(assert (=> b!4868609 (= tp!1369845 (and (inv!71852 (right!40963 (c!828058 input!661))) e!3043962))))

(assert (= (and b!4868609 ((_ is Node!14573) (right!40963 (c!828058 input!661)))) b!4869181))

(assert (= b!4869182 b!4869183))

(assert (= (and b!4868609 ((_ is Leaf!24300) (right!40963 (c!828058 input!661)))) b!4869182))

(declare-fun m!5868962 () Bool)

(assert (=> b!4869181 m!5868962))

(declare-fun m!5868964 () Bool)

(assert (=> b!4869181 m!5868964))

(declare-fun m!5868966 () Bool)

(assert (=> b!4869182 m!5868966))

(assert (=> b!4868609 m!5868332))

(declare-fun b!4869187 () Bool)

(declare-fun e!3043963 () Bool)

(declare-fun tp!1369935 () Bool)

(declare-fun tp!1369933 () Bool)

(assert (=> b!4869187 (= e!3043963 (and tp!1369935 tp!1369933))))

(declare-fun b!4869185 () Bool)

(declare-fun tp!1369931 () Bool)

(declare-fun tp!1369934 () Bool)

(assert (=> b!4869185 (= e!3043963 (and tp!1369931 tp!1369934))))

(declare-fun b!4869186 () Bool)

(declare-fun tp!1369932 () Bool)

(assert (=> b!4869186 (= e!3043963 tp!1369932)))

(assert (=> b!4868596 (= tp!1369830 e!3043963)))

(declare-fun b!4869184 () Bool)

(assert (=> b!4869184 (= e!3043963 tp_is_empty!35663)))

(assert (= (and b!4868596 ((_ is ElementMatch!13107) (reg!13436 (regex!8032 (h!62391 rules!1248))))) b!4869184))

(assert (= (and b!4868596 ((_ is Concat!21450) (reg!13436 (regex!8032 (h!62391 rules!1248))))) b!4869185))

(assert (= (and b!4868596 ((_ is Star!13107) (reg!13436 (regex!8032 (h!62391 rules!1248))))) b!4869186))

(assert (= (and b!4868596 ((_ is Union!13107) (reg!13436 (regex!8032 (h!62391 rules!1248))))) b!4869187))

(declare-fun b!4869191 () Bool)

(declare-fun e!3043964 () Bool)

(declare-fun tp!1369940 () Bool)

(declare-fun tp!1369938 () Bool)

(assert (=> b!4869191 (= e!3043964 (and tp!1369940 tp!1369938))))

(declare-fun b!4869189 () Bool)

(declare-fun tp!1369936 () Bool)

(declare-fun tp!1369939 () Bool)

(assert (=> b!4869189 (= e!3043964 (and tp!1369936 tp!1369939))))

(declare-fun b!4869190 () Bool)

(declare-fun tp!1369937 () Bool)

(assert (=> b!4869190 (= e!3043964 tp!1369937)))

(assert (=> b!4868597 (= tp!1369833 e!3043964)))

(declare-fun b!4869188 () Bool)

(assert (=> b!4869188 (= e!3043964 tp_is_empty!35663)))

(assert (= (and b!4868597 ((_ is ElementMatch!13107) (regOne!26727 (regex!8032 (h!62391 rules!1248))))) b!4869188))

(assert (= (and b!4868597 ((_ is Concat!21450) (regOne!26727 (regex!8032 (h!62391 rules!1248))))) b!4869189))

(assert (= (and b!4868597 ((_ is Star!13107) (regOne!26727 (regex!8032 (h!62391 rules!1248))))) b!4869190))

(assert (= (and b!4868597 ((_ is Union!13107) (regOne!26727 (regex!8032 (h!62391 rules!1248))))) b!4869191))

(declare-fun b!4869195 () Bool)

(declare-fun e!3043965 () Bool)

(declare-fun tp!1369945 () Bool)

(declare-fun tp!1369943 () Bool)

(assert (=> b!4869195 (= e!3043965 (and tp!1369945 tp!1369943))))

(declare-fun b!4869193 () Bool)

(declare-fun tp!1369941 () Bool)

(declare-fun tp!1369944 () Bool)

(assert (=> b!4869193 (= e!3043965 (and tp!1369941 tp!1369944))))

(declare-fun b!4869194 () Bool)

(declare-fun tp!1369942 () Bool)

(assert (=> b!4869194 (= e!3043965 tp!1369942)))

(assert (=> b!4868597 (= tp!1369831 e!3043965)))

(declare-fun b!4869192 () Bool)

(assert (=> b!4869192 (= e!3043965 tp_is_empty!35663)))

(assert (= (and b!4868597 ((_ is ElementMatch!13107) (regTwo!26727 (regex!8032 (h!62391 rules!1248))))) b!4869192))

(assert (= (and b!4868597 ((_ is Concat!21450) (regTwo!26727 (regex!8032 (h!62391 rules!1248))))) b!4869193))

(assert (= (and b!4868597 ((_ is Star!13107) (regTwo!26727 (regex!8032 (h!62391 rules!1248))))) b!4869194))

(assert (= (and b!4868597 ((_ is Union!13107) (regTwo!26727 (regex!8032 (h!62391 rules!1248))))) b!4869195))

(check-sat (not b!4869150) (not b_next!131459) b_and!342791 (not b!4869027) (not b!4869080) (not b!4869123) (not b!4869082) (not b!4869177) (not b!4869121) (not b!4868609) (not d!1563375) (not b!4868672) (not d!1563309) (not b!4869171) (not b!4869115) (not b!4868932) (not b!4869194) (not b!4869067) (not b!4868959) (not d!1563329) (not b_next!131465) tp_is_empty!35663 (not b!4869166) (not b_next!131457) (not b!4868954) (not b!4869078) (not b!4868972) (not b!4869189) (not b!4868876) (not b!4869120) (not b!4869183) (not b!4869146) (not b!4868678) (not b!4869118) (not b!4869158) (not b!4868951) (not b!4869168) (not b!4868606) (not b!4869180) (not b!4868910) (not b!4869075) (not b!4869185) (not b!4868911) (not bm!338130) (not b!4869195) (not b!4869116) (not d!1563327) (not d!1563293) (not b!4868677) (not b!4869181) (not b!4869149) (not b!4868827) (not b!4869104) (not b!4869159) (not b!4869100) (not b!4869193) (not b!4869162) b_and!342801 (not b!4869167) b_and!342809 (not b!4869156) (not d!1563353) (not d!1563231) (not d!1563227) (not b!4868874) (not b_next!131451) (not b!4869155) (not b!4868882) (not d!1563399) (not b!4869101) (not b!4868840) (not d!1563233) (not b!4869191) (not b_next!131467) (not d!1563377) (not b!4869179) (not b!4869117) (not b!4868828) (not b!4869157) (not b!4869122) (not b!4868940) (not d!1563291) (not b!4868675) (not b!4869035) (not b!4868960) (not b!4869102) (not d!1563371) (not bm!338119) (not d!1563345) (not b!4869186) (not b!4868949) (not b!4869178) (not b!4868913) (not d!1563343) (not bm!338122) (not b!4869135) (not d!1563357) (not b!4869175) b_and!342793 (not b!4868884) (not d!1563229) (not bm!338134) (not b!4869163) (not b!4869084) (not d!1563303) (not b!4869161) (not b!4869144) (not d!1563389) (not b!4868909) (not b!4869079) (not b!4868872) (not d!1563295) (not b!4869190) (not b!4869187) b_and!342807 (not b!4868671) (not d!1563369) (not b!4868673) (not b!4868942) (not b!4868961) (not b!4869143) (not b!4868875) (not b!4869141) (not d!1563315) (not b!4868958) (not b!4869182) (not b!4868871) (not b_next!131449) (not b!4869099) (not b!4869173) (not b!4868652) (not b!4869137) (not b!4869176) (not b!4868841) (not b!4869066) (not b!4868685) (not b!4869081) (not b!4869134) (not b!4869160) (not b!4869085) (not b!4869170) (not b!4868842) (not d!1563387) (not b!4868956) b_and!342799 (not d!1563379) (not b!4869172) (not b!4868679) (not b!4868962) (not b!4868873) (not b!4869119) (not b!4868955) (not b!4869086) (not b!4868676) (not bm!338135) (not b!4869139))
(check-sat (not b_next!131465) (not b_next!131457) (not b_next!131451) (not b_next!131467) b_and!342793 b_and!342807 (not b_next!131449) b_and!342799 (not b_next!131459) b_and!342791 b_and!342801 b_and!342809)
(get-model)

(declare-fun d!1563459 () Bool)

(declare-fun res!2078622 () Bool)

(declare-fun e!3044009 () Bool)

(assert (=> d!1563459 (=> (not res!2078622) (not e!3044009))))

(assert (=> d!1563459 (= res!2078622 (<= (size!36875 (list!17500 (xs!17881 (right!40963 (c!828058 totalInput!332))))) 512))))

(assert (=> d!1563459 (= (inv!71859 (right!40963 (c!828058 totalInput!332))) e!3044009)))

(declare-fun b!4869286 () Bool)

(declare-fun res!2078623 () Bool)

(assert (=> b!4869286 (=> (not res!2078623) (not e!3044009))))

(assert (=> b!4869286 (= res!2078623 (= (csize!29377 (right!40963 (c!828058 totalInput!332))) (size!36875 (list!17500 (xs!17881 (right!40963 (c!828058 totalInput!332)))))))))

(declare-fun b!4869287 () Bool)

(assert (=> b!4869287 (= e!3044009 (and (> (csize!29377 (right!40963 (c!828058 totalInput!332))) 0) (<= (csize!29377 (right!40963 (c!828058 totalInput!332))) 512)))))

(assert (= (and d!1563459 res!2078622) b!4869286))

(assert (= (and b!4869286 res!2078623) b!4869287))

(declare-fun m!5869118 () Bool)

(assert (=> d!1563459 m!5869118))

(assert (=> d!1563459 m!5869118))

(declare-fun m!5869120 () Bool)

(assert (=> d!1563459 m!5869120))

(assert (=> b!4869286 m!5869118))

(assert (=> b!4869286 m!5869118))

(assert (=> b!4869286 m!5869120))

(assert (=> b!4868951 d!1563459))

(declare-fun d!1563467 () Bool)

(declare-fun c!828212 () Bool)

(assert (=> d!1563467 (= c!828212 ((_ is Node!14573) (left!40633 (left!40633 (c!828058 totalInput!332)))))))

(declare-fun e!3044013 () Bool)

(assert (=> d!1563467 (= (inv!71852 (left!40633 (left!40633 (c!828058 totalInput!332)))) e!3044013)))

(declare-fun b!4869297 () Bool)

(assert (=> b!4869297 (= e!3044013 (inv!71858 (left!40633 (left!40633 (c!828058 totalInput!332)))))))

(declare-fun b!4869298 () Bool)

(declare-fun e!3044014 () Bool)

(assert (=> b!4869298 (= e!3044013 e!3044014)))

(declare-fun res!2078631 () Bool)

(assert (=> b!4869298 (= res!2078631 (not ((_ is Leaf!24300) (left!40633 (left!40633 (c!828058 totalInput!332))))))))

(assert (=> b!4869298 (=> res!2078631 e!3044014)))

(declare-fun b!4869299 () Bool)

(assert (=> b!4869299 (= e!3044014 (inv!71859 (left!40633 (left!40633 (c!828058 totalInput!332)))))))

(assert (= (and d!1563467 c!828212) b!4869297))

(assert (= (and d!1563467 (not c!828212)) b!4869298))

(assert (= (and b!4869298 (not res!2078631)) b!4869299))

(declare-fun m!5869122 () Bool)

(assert (=> b!4869297 m!5869122))

(declare-fun m!5869124 () Bool)

(assert (=> b!4869299 m!5869124))

(assert (=> b!4869156 d!1563467))

(declare-fun d!1563469 () Bool)

(declare-fun c!828213 () Bool)

(assert (=> d!1563469 (= c!828213 ((_ is Node!14573) (right!40963 (left!40633 (c!828058 totalInput!332)))))))

(declare-fun e!3044015 () Bool)

(assert (=> d!1563469 (= (inv!71852 (right!40963 (left!40633 (c!828058 totalInput!332)))) e!3044015)))

(declare-fun b!4869300 () Bool)

(assert (=> b!4869300 (= e!3044015 (inv!71858 (right!40963 (left!40633 (c!828058 totalInput!332)))))))

(declare-fun b!4869301 () Bool)

(declare-fun e!3044016 () Bool)

(assert (=> b!4869301 (= e!3044015 e!3044016)))

(declare-fun res!2078632 () Bool)

(assert (=> b!4869301 (= res!2078632 (not ((_ is Leaf!24300) (right!40963 (left!40633 (c!828058 totalInput!332))))))))

(assert (=> b!4869301 (=> res!2078632 e!3044016)))

(declare-fun b!4869302 () Bool)

(assert (=> b!4869302 (= e!3044016 (inv!71859 (right!40963 (left!40633 (c!828058 totalInput!332)))))))

(assert (= (and d!1563469 c!828213) b!4869300))

(assert (= (and d!1563469 (not c!828213)) b!4869301))

(assert (= (and b!4869301 (not res!2078632)) b!4869302))

(declare-fun m!5869126 () Bool)

(assert (=> b!4869300 m!5869126))

(declare-fun m!5869128 () Bool)

(assert (=> b!4869302 m!5869128))

(assert (=> b!4869156 d!1563469))

(declare-fun d!1563471 () Bool)

(assert (=> d!1563471 (= (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077)))) (list!17495 (c!828058 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))))))

(declare-fun bs!1174502 () Bool)

(assert (= bs!1174502 d!1563471))

(declare-fun m!5869130 () Bool)

(assert (=> bs!1174502 m!5869130))

(assert (=> b!4868955 d!1563471))

(declare-fun d!1563473 () Bool)

(declare-fun lt!1995183 () BalanceConc!28588)

(assert (=> d!1563473 (= (list!17492 lt!1995183) (originalCharacters!8355 (_1!33199 (get!19228 lt!1995077))))))

(declare-fun dynLambda!22465 (Int TokenValue!8342) BalanceConc!28588)

(assert (=> d!1563473 (= lt!1995183 (dynLambda!22465 (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077))))) (value!258054 (_1!33199 (get!19228 lt!1995077)))))))

(assert (=> d!1563473 (= (charsOf!5337 (_1!33199 (get!19228 lt!1995077))) lt!1995183)))

(declare-fun b_lambda!193585 () Bool)

(assert (=> (not b_lambda!193585) (not d!1563473)))

(declare-fun tb!257835 () Bool)

(declare-fun t!364010 () Bool)

(assert (=> (and b!4868405 (= (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))) t!364010) tb!257835))

(declare-fun b!4869312 () Bool)

(declare-fun e!3044023 () Bool)

(declare-fun tp!1369948 () Bool)

(assert (=> b!4869312 (= e!3044023 (and (inv!71852 (c!828058 (dynLambda!22465 (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077))))) (value!258054 (_1!33199 (get!19228 lt!1995077)))))) tp!1369948))))

(declare-fun result!320986 () Bool)

(assert (=> tb!257835 (= result!320986 (and (inv!71854 (dynLambda!22465 (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077))))) (value!258054 (_1!33199 (get!19228 lt!1995077))))) e!3044023))))

(assert (= tb!257835 b!4869312))

(declare-fun m!5869174 () Bool)

(assert (=> b!4869312 m!5869174))

(declare-fun m!5869176 () Bool)

(assert (=> tb!257835 m!5869176))

(assert (=> d!1563473 t!364010))

(declare-fun b_and!342811 () Bool)

(assert (= b_and!342793 (and (=> t!364010 result!320986) b_and!342811)))

(declare-fun t!364012 () Bool)

(declare-fun tb!257837 () Bool)

(assert (=> (and b!4868583 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))) t!364012) tb!257837))

(declare-fun result!320990 () Bool)

(assert (= result!320990 result!320986))

(assert (=> d!1563473 t!364012))

(declare-fun b_and!342813 () Bool)

(assert (= b_and!342801 (and (=> t!364012 result!320990) b_and!342813)))

(declare-fun t!364014 () Bool)

(declare-fun tb!257839 () Bool)

(assert (=> (and b!4869164 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))) t!364014) tb!257839))

(declare-fun result!320992 () Bool)

(assert (= result!320992 result!320986))

(assert (=> d!1563473 t!364014))

(declare-fun b_and!342815 () Bool)

(assert (= b_and!342809 (and (=> t!364014 result!320992) b_and!342815)))

(declare-fun m!5869178 () Bool)

(assert (=> d!1563473 m!5869178))

(declare-fun m!5869180 () Bool)

(assert (=> d!1563473 m!5869180))

(assert (=> b!4868955 d!1563473))

(declare-fun d!1563493 () Bool)

(assert (=> d!1563493 (= (get!19228 lt!1995077) (v!49698 lt!1995077))))

(assert (=> b!4868955 d!1563493))

(assert (=> d!1563303 d!1563233))

(declare-fun d!1563495 () Bool)

(declare-fun res!2078645 () Bool)

(declare-fun e!3044031 () Bool)

(assert (=> d!1563495 (=> res!2078645 e!3044031)))

(assert (=> d!1563495 (= res!2078645 ((_ is Nil!55943) rules!1248))))

(assert (=> d!1563495 (= (forall!13050 rules!1248 lambda!243463) e!3044031)))

(declare-fun b!4869322 () Bool)

(declare-fun e!3044032 () Bool)

(assert (=> b!4869322 (= e!3044031 e!3044032)))

(declare-fun res!2078646 () Bool)

(assert (=> b!4869322 (=> (not res!2078646) (not e!3044032))))

(declare-fun dynLambda!22466 (Int Rule!15864) Bool)

(assert (=> b!4869322 (= res!2078646 (dynLambda!22466 lambda!243463 (h!62391 rules!1248)))))

(declare-fun b!4869323 () Bool)

(assert (=> b!4869323 (= e!3044032 (forall!13050 (t!363995 rules!1248) lambda!243463))))

(assert (= (and d!1563495 (not res!2078645)) b!4869322))

(assert (= (and b!4869322 res!2078646) b!4869323))

(declare-fun b_lambda!193587 () Bool)

(assert (=> (not b_lambda!193587) (not b!4869322)))

(declare-fun m!5869196 () Bool)

(assert (=> b!4869322 m!5869196))

(declare-fun m!5869198 () Bool)

(assert (=> b!4869323 m!5869198))

(assert (=> d!1563303 d!1563495))

(declare-fun bs!1174506 () Bool)

(declare-fun b!4869326 () Bool)

(assert (= bs!1174506 (and b!4869326 d!1563295)))

(declare-fun lambda!243479 () Int)

(assert (=> bs!1174506 (= (and (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) (= lambda!243479 lambda!243455))))

(declare-fun bs!1174507 () Bool)

(assert (= bs!1174507 (and b!4869326 b!4869101)))

(assert (=> bs!1174507 (= (and (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) (= lambda!243479 lambda!243477))))

(declare-fun b!4869331 () Bool)

(declare-fun e!3044039 () Bool)

(assert (=> b!4869331 (= e!3044039 true)))

(declare-fun b!4869330 () Bool)

(declare-fun e!3044038 () Bool)

(assert (=> b!4869330 (= e!3044038 e!3044039)))

(assert (=> b!4869326 e!3044038))

(assert (= b!4869330 b!4869331))

(assert (= b!4869326 b!4869330))

(assert (=> b!4869331 (< (dynLambda!22462 order!25221 (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248))))) (dynLambda!22461 order!25219 lambda!243479))))

(assert (=> b!4869331 (< (dynLambda!22460 order!25217 (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248))))) (dynLambda!22461 order!25219 lambda!243479))))

(declare-fun b!4869324 () Bool)

(declare-fun e!3044034 () Bool)

(declare-fun lt!1995192 () List!56065)

(assert (=> b!4869324 (= e!3044034 (matchR!6492 (regex!8032 (h!62391 (t!363995 rules!1248))) (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 (t!363995 rules!1248))) Nil!55941 (size!36875 Nil!55941) lt!1995192 lt!1995192 (size!36875 lt!1995192)))))))

(declare-fun b!4869325 () Bool)

(declare-fun e!3044036 () Bool)

(declare-fun e!3044035 () Bool)

(assert (=> b!4869325 (= e!3044036 e!3044035)))

(declare-fun res!2078649 () Bool)

(assert (=> b!4869325 (=> res!2078649 e!3044035)))

(declare-fun lt!1995191 () Option!13779)

(assert (=> b!4869325 (= res!2078649 (not (isDefined!10848 lt!1995191)))))

(declare-fun d!1563503 () Bool)

(assert (=> d!1563503 e!3044036))

(declare-fun res!2078647 () Bool)

(assert (=> d!1563503 (=> (not res!2078647) (not e!3044036))))

(assert (=> d!1563503 (= res!2078647 (= (isDefined!10848 lt!1995191) (isDefined!10849 (maxPrefixOneRule!3491 thiss!11777 (h!62391 (t!363995 rules!1248)) (list!17492 input!661)))))))

(declare-fun e!3044037 () Option!13779)

(assert (=> d!1563503 (= lt!1995191 e!3044037)))

(declare-fun c!828215 () Bool)

(declare-fun lt!1995190 () tuple2!59800)

(assert (=> d!1563503 (= c!828215 (isEmpty!29942 (_1!33203 lt!1995190)))))

(assert (=> d!1563503 (= lt!1995190 (findLongestMatchWithZipperSequenceV2!134 (regex!8032 (h!62391 (t!363995 rules!1248))) input!661 totalInput!332))))

(assert (=> d!1563503 (ruleValid!3629 thiss!11777 (h!62391 (t!363995 rules!1248)))))

(assert (=> d!1563503 (= (maxPrefixOneRuleZipperSequenceV2!258 thiss!11777 (h!62391 (t!363995 rules!1248)) input!661 totalInput!332) lt!1995191)))

(assert (=> b!4869326 (= e!3044037 (Some!13778 (tuple2!59789 (Token!14649 (apply!13502 (transformation!8032 (h!62391 (t!363995 rules!1248))) (_1!33203 lt!1995190)) (h!62391 (t!363995 rules!1248)) (size!36870 (_1!33203 lt!1995190)) (list!17492 (_1!33203 lt!1995190))) (_2!33203 lt!1995190))))))

(assert (=> b!4869326 (= lt!1995192 (list!17492 input!661))))

(declare-fun lt!1995193 () Unit!145952)

(assert (=> b!4869326 (= lt!1995193 (longestMatchIsAcceptedByMatchOrIsEmpty!1684 (regex!8032 (h!62391 (t!363995 rules!1248))) lt!1995192))))

(declare-fun res!2078648 () Bool)

(assert (=> b!4869326 (= res!2078648 (isEmpty!29943 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 (t!363995 rules!1248))) Nil!55941 (size!36875 Nil!55941) lt!1995192 lt!1995192 (size!36875 lt!1995192)))))))

(assert (=> b!4869326 (=> res!2078648 e!3044034)))

(assert (=> b!4869326 e!3044034))

(declare-fun lt!1995188 () Unit!145952)

(assert (=> b!4869326 (= lt!1995188 lt!1995193)))

(declare-fun lt!1995186 () Unit!145952)

(assert (=> b!4869326 (= lt!1995186 (lemmaInv!1204 (transformation!8032 (h!62391 (t!363995 rules!1248)))))))

(declare-fun lt!1995187 () Unit!145952)

(assert (=> b!4869326 (= lt!1995187 (ForallOf!1101 lambda!243479 (_1!33203 lt!1995190)))))

(declare-fun lt!1995189 () Unit!145952)

(assert (=> b!4869326 (= lt!1995189 (ForallOf!1101 lambda!243479 (seqFromList!5898 (list!17492 (_1!33203 lt!1995190)))))))

(declare-fun lt!1995194 () Option!13779)

(assert (=> b!4869326 (= lt!1995194 (Some!13778 (tuple2!59789 (Token!14649 (apply!13502 (transformation!8032 (h!62391 (t!363995 rules!1248))) (_1!33203 lt!1995190)) (h!62391 (t!363995 rules!1248)) (size!36870 (_1!33203 lt!1995190)) (list!17492 (_1!33203 lt!1995190))) (_2!33203 lt!1995190))))))

(declare-fun lt!1995195 () Unit!145952)

(assert (=> b!4869326 (= lt!1995195 (lemmaEqSameImage!1058 (transformation!8032 (h!62391 (t!363995 rules!1248))) (_1!33203 lt!1995190) (seqFromList!5898 (list!17492 (_1!33203 lt!1995190)))))))

(declare-fun b!4869327 () Bool)

(declare-fun e!3044033 () Bool)

(assert (=> b!4869327 (= e!3044033 (= (list!17492 (_2!33197 (get!19227 lt!1995191))) (_2!33199 (get!19228 (maxPrefixOneRule!3491 thiss!11777 (h!62391 (t!363995 rules!1248)) (list!17492 input!661))))))))

(declare-fun b!4869328 () Bool)

(assert (=> b!4869328 (= e!3044037 None!13778)))

(declare-fun b!4869329 () Bool)

(assert (=> b!4869329 (= e!3044035 e!3044033)))

(declare-fun res!2078650 () Bool)

(assert (=> b!4869329 (=> (not res!2078650) (not e!3044033))))

(assert (=> b!4869329 (= res!2078650 (= (_1!33197 (get!19227 lt!1995191)) (_1!33199 (get!19228 (maxPrefixOneRule!3491 thiss!11777 (h!62391 (t!363995 rules!1248)) (list!17492 input!661))))))))

(assert (= (and d!1563503 c!828215) b!4869328))

(assert (= (and d!1563503 (not c!828215)) b!4869326))

(assert (= (and b!4869326 (not res!2078648)) b!4869324))

(assert (= (and d!1563503 res!2078647) b!4869325))

(assert (= (and b!4869325 (not res!2078649)) b!4869329))

(assert (= (and b!4869329 res!2078650) b!4869327))

(declare-fun m!5869200 () Bool)

(assert (=> d!1563503 m!5869200))

(declare-fun m!5869202 () Bool)

(assert (=> d!1563503 m!5869202))

(declare-fun m!5869204 () Bool)

(assert (=> d!1563503 m!5869204))

(declare-fun m!5869206 () Bool)

(assert (=> d!1563503 m!5869206))

(declare-fun m!5869208 () Bool)

(assert (=> d!1563503 m!5869208))

(assert (=> d!1563503 m!5868142))

(assert (=> d!1563503 m!5869204))

(assert (=> d!1563503 m!5868142))

(declare-fun m!5869210 () Bool)

(assert (=> d!1563503 m!5869210))

(declare-fun m!5869212 () Bool)

(assert (=> b!4869329 m!5869212))

(assert (=> b!4869329 m!5868142))

(assert (=> b!4869329 m!5868142))

(assert (=> b!4869329 m!5869204))

(assert (=> b!4869329 m!5869204))

(declare-fun m!5869214 () Bool)

(assert (=> b!4869329 m!5869214))

(assert (=> b!4869327 m!5869212))

(declare-fun m!5869216 () Bool)

(assert (=> b!4869327 m!5869216))

(assert (=> b!4869327 m!5869204))

(assert (=> b!4869327 m!5869214))

(assert (=> b!4869327 m!5868142))

(assert (=> b!4869327 m!5869204))

(assert (=> b!4869327 m!5868142))

(assert (=> b!4869324 m!5868860))

(declare-fun m!5869218 () Bool)

(assert (=> b!4869324 m!5869218))

(assert (=> b!4869324 m!5868860))

(assert (=> b!4869324 m!5869218))

(declare-fun m!5869220 () Bool)

(assert (=> b!4869324 m!5869220))

(declare-fun m!5869222 () Bool)

(assert (=> b!4869324 m!5869222))

(declare-fun m!5869224 () Bool)

(assert (=> b!4869326 m!5869224))

(assert (=> b!4869326 m!5868860))

(declare-fun m!5869226 () Bool)

(assert (=> b!4869326 m!5869226))

(declare-fun m!5869228 () Bool)

(assert (=> b!4869326 m!5869228))

(assert (=> b!4869326 m!5869218))

(declare-fun m!5869230 () Bool)

(assert (=> b!4869326 m!5869230))

(assert (=> b!4869326 m!5868860))

(assert (=> b!4869326 m!5869218))

(assert (=> b!4869326 m!5869220))

(declare-fun m!5869232 () Bool)

(assert (=> b!4869326 m!5869232))

(declare-fun m!5869234 () Bool)

(assert (=> b!4869326 m!5869234))

(declare-fun m!5869236 () Bool)

(assert (=> b!4869326 m!5869236))

(assert (=> b!4869326 m!5869236))

(declare-fun m!5869238 () Bool)

(assert (=> b!4869326 m!5869238))

(assert (=> b!4869326 m!5868142))

(assert (=> b!4869326 m!5869238))

(declare-fun m!5869240 () Bool)

(assert (=> b!4869326 m!5869240))

(assert (=> b!4869326 m!5869238))

(declare-fun m!5869242 () Bool)

(assert (=> b!4869326 m!5869242))

(assert (=> b!4869325 m!5869210))

(assert (=> bm!338135 d!1563503))

(declare-fun b!4869360 () Bool)

(declare-fun e!3044055 () Bool)

(declare-fun e!3044054 () Bool)

(assert (=> b!4869360 (= e!3044055 e!3044054)))

(declare-fun res!2078667 () Bool)

(assert (=> b!4869360 (=> (not res!2078667) (not e!3044054))))

(assert (=> b!4869360 (= res!2078667 (<= (- 1) (- (height!1929 (left!40633 (right!40963 (c!828058 input!661)))) (height!1929 (right!40963 (right!40963 (c!828058 input!661)))))))))

(declare-fun b!4869361 () Bool)

(declare-fun res!2078672 () Bool)

(assert (=> b!4869361 (=> (not res!2078672) (not e!3044054))))

(assert (=> b!4869361 (= res!2078672 (isBalanced!3956 (right!40963 (right!40963 (c!828058 input!661)))))))

(declare-fun d!1563505 () Bool)

(declare-fun res!2078668 () Bool)

(assert (=> d!1563505 (=> res!2078668 e!3044055)))

(assert (=> d!1563505 (= res!2078668 (not ((_ is Node!14573) (right!40963 (c!828058 input!661)))))))

(assert (=> d!1563505 (= (isBalanced!3956 (right!40963 (c!828058 input!661))) e!3044055)))

(declare-fun b!4869362 () Bool)

(declare-fun res!2078671 () Bool)

(assert (=> b!4869362 (=> (not res!2078671) (not e!3044054))))

(assert (=> b!4869362 (= res!2078671 (isBalanced!3956 (left!40633 (right!40963 (c!828058 input!661)))))))

(declare-fun b!4869363 () Bool)

(declare-fun res!2078669 () Bool)

(assert (=> b!4869363 (=> (not res!2078669) (not e!3044054))))

(assert (=> b!4869363 (= res!2078669 (<= (- (height!1929 (left!40633 (right!40963 (c!828058 input!661)))) (height!1929 (right!40963 (right!40963 (c!828058 input!661))))) 1))))

(declare-fun b!4869364 () Bool)

(assert (=> b!4869364 (= e!3044054 (not (isEmpty!29938 (right!40963 (right!40963 (c!828058 input!661))))))))

(declare-fun b!4869365 () Bool)

(declare-fun res!2078670 () Bool)

(assert (=> b!4869365 (=> (not res!2078670) (not e!3044054))))

(assert (=> b!4869365 (= res!2078670 (not (isEmpty!29938 (left!40633 (right!40963 (c!828058 input!661))))))))

(assert (= (and d!1563505 (not res!2078668)) b!4869360))

(assert (= (and b!4869360 res!2078667) b!4869363))

(assert (= (and b!4869363 res!2078669) b!4869362))

(assert (= (and b!4869362 res!2078671) b!4869361))

(assert (= (and b!4869361 res!2078672) b!4869365))

(assert (= (and b!4869365 res!2078670) b!4869364))

(declare-fun m!5869244 () Bool)

(assert (=> b!4869365 m!5869244))

(declare-fun m!5869246 () Bool)

(assert (=> b!4869361 m!5869246))

(declare-fun m!5869248 () Bool)

(assert (=> b!4869362 m!5869248))

(declare-fun m!5869250 () Bool)

(assert (=> b!4869363 m!5869250))

(declare-fun m!5869252 () Bool)

(assert (=> b!4869363 m!5869252))

(assert (=> b!4869360 m!5869250))

(assert (=> b!4869360 m!5869252))

(declare-fun m!5869254 () Bool)

(assert (=> b!4869364 m!5869254))

(assert (=> b!4869119 d!1563505))

(declare-fun d!1563507 () Bool)

(declare-fun c!828222 () Bool)

(assert (=> d!1563507 (= c!828222 ((_ is Node!14573) (left!40633 (left!40633 (c!828058 input!661)))))))

(declare-fun e!3044056 () Bool)

(assert (=> d!1563507 (= (inv!71852 (left!40633 (left!40633 (c!828058 input!661)))) e!3044056)))

(declare-fun b!4869366 () Bool)

(assert (=> b!4869366 (= e!3044056 (inv!71858 (left!40633 (left!40633 (c!828058 input!661)))))))

(declare-fun b!4869367 () Bool)

(declare-fun e!3044057 () Bool)

(assert (=> b!4869367 (= e!3044056 e!3044057)))

(declare-fun res!2078673 () Bool)

(assert (=> b!4869367 (= res!2078673 (not ((_ is Leaf!24300) (left!40633 (left!40633 (c!828058 input!661))))))))

(assert (=> b!4869367 (=> res!2078673 e!3044057)))

(declare-fun b!4869368 () Bool)

(assert (=> b!4869368 (= e!3044057 (inv!71859 (left!40633 (left!40633 (c!828058 input!661)))))))

(assert (= (and d!1563507 c!828222) b!4869366))

(assert (= (and d!1563507 (not c!828222)) b!4869367))

(assert (= (and b!4869367 (not res!2078673)) b!4869368))

(declare-fun m!5869256 () Bool)

(assert (=> b!4869366 m!5869256))

(declare-fun m!5869258 () Bool)

(assert (=> b!4869368 m!5869258))

(assert (=> b!4869178 d!1563507))

(declare-fun d!1563509 () Bool)

(declare-fun c!828223 () Bool)

(assert (=> d!1563509 (= c!828223 ((_ is Node!14573) (right!40963 (left!40633 (c!828058 input!661)))))))

(declare-fun e!3044058 () Bool)

(assert (=> d!1563509 (= (inv!71852 (right!40963 (left!40633 (c!828058 input!661)))) e!3044058)))

(declare-fun b!4869369 () Bool)

(assert (=> b!4869369 (= e!3044058 (inv!71858 (right!40963 (left!40633 (c!828058 input!661)))))))

(declare-fun b!4869370 () Bool)

(declare-fun e!3044059 () Bool)

(assert (=> b!4869370 (= e!3044058 e!3044059)))

(declare-fun res!2078674 () Bool)

(assert (=> b!4869370 (= res!2078674 (not ((_ is Leaf!24300) (right!40963 (left!40633 (c!828058 input!661))))))))

(assert (=> b!4869370 (=> res!2078674 e!3044059)))

(declare-fun b!4869371 () Bool)

(assert (=> b!4869371 (= e!3044059 (inv!71859 (right!40963 (left!40633 (c!828058 input!661)))))))

(assert (= (and d!1563509 c!828223) b!4869369))

(assert (= (and d!1563509 (not c!828223)) b!4869370))

(assert (= (and b!4869370 (not res!2078674)) b!4869371))

(declare-fun m!5869260 () Bool)

(assert (=> b!4869369 m!5869260))

(declare-fun m!5869262 () Bool)

(assert (=> b!4869371 m!5869262))

(assert (=> b!4869178 d!1563509))

(declare-fun d!1563511 () Bool)

(declare-fun lt!1995200 () Bool)

(assert (=> d!1563511 (= lt!1995200 (isEmpty!29943 (list!17495 (right!40963 (c!828058 totalInput!332)))))))

(assert (=> d!1563511 (= lt!1995200 (= (size!36876 (right!40963 (c!828058 totalInput!332))) 0))))

(assert (=> d!1563511 (= (isEmpty!29938 (right!40963 (c!828058 totalInput!332))) lt!1995200)))

(declare-fun bs!1174508 () Bool)

(assert (= bs!1174508 d!1563511))

(assert (=> bs!1174508 m!5868912))

(assert (=> bs!1174508 m!5868912))

(declare-fun m!5869264 () Bool)

(assert (=> bs!1174508 m!5869264))

(assert (=> bs!1174508 m!5868918))

(assert (=> b!4868875 d!1563511))

(declare-fun d!1563513 () Bool)

(assert (=> d!1563513 (= (isDefined!10849 lt!1994952) (not (isEmpty!29936 lt!1994952)))))

(declare-fun bs!1174509 () Bool)

(assert (= bs!1174509 d!1563513))

(assert (=> bs!1174509 m!5868372))

(assert (=> b!4868677 d!1563513))

(declare-fun d!1563515 () Bool)

(declare-fun lt!1995201 () Int)

(assert (=> d!1563515 (>= lt!1995201 0)))

(declare-fun e!3044060 () Int)

(assert (=> d!1563515 (= lt!1995201 e!3044060)))

(declare-fun c!828224 () Bool)

(assert (=> d!1563515 (= c!828224 ((_ is Nil!55941) (t!363993 lt!1994850)))))

(assert (=> d!1563515 (= (size!36875 (t!363993 lt!1994850)) lt!1995201)))

(declare-fun b!4869372 () Bool)

(assert (=> b!4869372 (= e!3044060 0)))

(declare-fun b!4869373 () Bool)

(assert (=> b!4869373 (= e!3044060 (+ 1 (size!36875 (t!363993 (t!363993 lt!1994850)))))))

(assert (= (and d!1563515 c!828224) b!4869372))

(assert (= (and d!1563515 (not c!828224)) b!4869373))

(declare-fun m!5869266 () Bool)

(assert (=> b!4869373 m!5869266))

(assert (=> b!4868884 d!1563515))

(declare-fun d!1563517 () Bool)

(assert (=> d!1563517 (= (get!19227 lt!1995106) (v!49696 lt!1995106))))

(assert (=> b!4869081 d!1563517))

(declare-fun d!1563519 () Bool)

(assert (=> d!1563519 (= (get!19228 (maxPrefixZipper!563 thiss!11777 (t!363995 rules!1248) (list!17492 input!661))) (v!49698 (maxPrefixZipper!563 thiss!11777 (t!363995 rules!1248) (list!17492 input!661))))))

(assert (=> b!4869081 d!1563519))

(declare-fun lt!1995205 () Option!13781)

(declare-fun d!1563521 () Bool)

(assert (=> d!1563521 (= lt!1995205 (maxPrefix!4549 thiss!11777 (t!363995 rules!1248) (list!17492 input!661)))))

(declare-fun e!3044061 () Option!13781)

(assert (=> d!1563521 (= lt!1995205 e!3044061)))

(declare-fun c!828225 () Bool)

(assert (=> d!1563521 (= c!828225 (and ((_ is Cons!55943) (t!363995 rules!1248)) ((_ is Nil!55943) (t!363995 (t!363995 rules!1248)))))))

(declare-fun lt!1995206 () Unit!145952)

(declare-fun lt!1995202 () Unit!145952)

(assert (=> d!1563521 (= lt!1995206 lt!1995202)))

(assert (=> d!1563521 (isPrefix!4766 (list!17492 input!661) (list!17492 input!661))))

(assert (=> d!1563521 (= lt!1995202 (lemmaIsPrefixRefl!3163 (list!17492 input!661) (list!17492 input!661)))))

(assert (=> d!1563521 (rulesValidInductive!3021 thiss!11777 (t!363995 rules!1248))))

(assert (=> d!1563521 (= (maxPrefixZipper!563 thiss!11777 (t!363995 rules!1248) (list!17492 input!661)) lt!1995205)))

(declare-fun call!338145 () Option!13781)

(declare-fun bm!338140 () Bool)

(assert (=> bm!338140 (= call!338145 (maxPrefixOneRuleZipper!225 thiss!11777 (h!62391 (t!363995 rules!1248)) (list!17492 input!661)))))

(declare-fun b!4869374 () Bool)

(assert (=> b!4869374 (= e!3044061 call!338145)))

(declare-fun b!4869375 () Bool)

(declare-fun lt!1995203 () Option!13781)

(declare-fun lt!1995204 () Option!13781)

(assert (=> b!4869375 (= e!3044061 (ite (and ((_ is None!13780) lt!1995203) ((_ is None!13780) lt!1995204)) None!13780 (ite ((_ is None!13780) lt!1995204) lt!1995203 (ite ((_ is None!13780) lt!1995203) lt!1995204 (ite (>= (size!36869 (_1!33199 (v!49698 lt!1995203))) (size!36869 (_1!33199 (v!49698 lt!1995204)))) lt!1995203 lt!1995204)))))))

(assert (=> b!4869375 (= lt!1995203 call!338145)))

(assert (=> b!4869375 (= lt!1995204 (maxPrefixZipper!563 thiss!11777 (t!363995 (t!363995 rules!1248)) (list!17492 input!661)))))

(assert (= (and d!1563521 c!828225) b!4869374))

(assert (= (and d!1563521 (not c!828225)) b!4869375))

(assert (= (or b!4869374 b!4869375) bm!338140))

(assert (=> d!1563521 m!5868142))

(assert (=> d!1563521 m!5868704))

(assert (=> d!1563521 m!5868142))

(assert (=> d!1563521 m!5868142))

(assert (=> d!1563521 m!5868382))

(assert (=> d!1563521 m!5868142))

(assert (=> d!1563521 m!5868142))

(assert (=> d!1563521 m!5868384))

(assert (=> d!1563521 m!5868550))

(assert (=> bm!338140 m!5868142))

(declare-fun m!5869268 () Bool)

(assert (=> bm!338140 m!5869268))

(assert (=> b!4869375 m!5868142))

(declare-fun m!5869270 () Bool)

(assert (=> b!4869375 m!5869270))

(assert (=> b!4869081 d!1563521))

(assert (=> b!4869081 d!1563163))

(declare-fun d!1563523 () Bool)

(declare-fun choose!35598 (Int) Bool)

(assert (=> d!1563523 (= (Forall2!1254 lambda!243469) (choose!35598 lambda!243469))))

(declare-fun bs!1174510 () Bool)

(assert (= bs!1174510 d!1563523))

(declare-fun m!5869282 () Bool)

(assert (=> bs!1174510 m!5869282))

(assert (=> d!1563329 d!1563523))

(declare-fun d!1563525 () Bool)

(assert (=> d!1563525 (= (isEmpty!29936 lt!1994952) (not ((_ is Some!13780) lt!1994952)))))

(assert (=> d!1563227 d!1563525))

(declare-fun d!1563529 () Bool)

(declare-fun e!3044071 () Bool)

(assert (=> d!1563529 e!3044071))

(declare-fun res!2078686 () Bool)

(assert (=> d!1563529 (=> res!2078686 e!3044071)))

(declare-fun lt!1995208 () Bool)

(assert (=> d!1563529 (= res!2078686 (not lt!1995208))))

(declare-fun e!3044070 () Bool)

(assert (=> d!1563529 (= lt!1995208 e!3044070)))

(declare-fun res!2078685 () Bool)

(assert (=> d!1563529 (=> res!2078685 e!3044070)))

(assert (=> d!1563529 (= res!2078685 ((_ is Nil!55941) lt!1994850))))

(assert (=> d!1563529 (= (isPrefix!4766 lt!1994850 lt!1994850) lt!1995208)))

(declare-fun b!4869390 () Bool)

(declare-fun e!3044069 () Bool)

(assert (=> b!4869390 (= e!3044070 e!3044069)))

(declare-fun res!2078683 () Bool)

(assert (=> b!4869390 (=> (not res!2078683) (not e!3044069))))

(assert (=> b!4869390 (= res!2078683 (not ((_ is Nil!55941) lt!1994850)))))

(declare-fun b!4869393 () Bool)

(assert (=> b!4869393 (= e!3044071 (>= (size!36875 lt!1994850) (size!36875 lt!1994850)))))

(declare-fun b!4869391 () Bool)

(declare-fun res!2078684 () Bool)

(assert (=> b!4869391 (=> (not res!2078684) (not e!3044069))))

(assert (=> b!4869391 (= res!2078684 (= (head!10413 lt!1994850) (head!10413 lt!1994850)))))

(declare-fun b!4869392 () Bool)

(assert (=> b!4869392 (= e!3044069 (isPrefix!4766 (tail!9559 lt!1994850) (tail!9559 lt!1994850)))))

(assert (= (and d!1563529 (not res!2078685)) b!4869390))

(assert (= (and b!4869390 res!2078683) b!4869391))

(assert (= (and b!4869391 res!2078684) b!4869392))

(assert (= (and d!1563529 (not res!2078686)) b!4869393))

(assert (=> b!4869393 m!5868158))

(assert (=> b!4869393 m!5868158))

(declare-fun m!5869288 () Bool)

(assert (=> b!4869391 m!5869288))

(assert (=> b!4869391 m!5869288))

(declare-fun m!5869290 () Bool)

(assert (=> b!4869392 m!5869290))

(assert (=> b!4869392 m!5869290))

(assert (=> b!4869392 m!5869290))

(assert (=> b!4869392 m!5869290))

(declare-fun m!5869292 () Bool)

(assert (=> b!4869392 m!5869292))

(assert (=> d!1563227 d!1563529))

(declare-fun d!1563531 () Bool)

(assert (=> d!1563531 (isPrefix!4766 lt!1994850 lt!1994850)))

(declare-fun lt!1995209 () Unit!145952)

(assert (=> d!1563531 (= lt!1995209 (choose!35596 lt!1994850 lt!1994850))))

(assert (=> d!1563531 (= (lemmaIsPrefixRefl!3163 lt!1994850 lt!1994850) lt!1995209)))

(declare-fun bs!1174511 () Bool)

(assert (= bs!1174511 d!1563531))

(assert (=> bs!1174511 m!5868374))

(declare-fun m!5869294 () Bool)

(assert (=> bs!1174511 m!5869294))

(assert (=> d!1563227 d!1563531))

(assert (=> d!1563227 d!1563233))

(declare-fun d!1563533 () Bool)

(declare-fun lt!1995210 () Int)

(assert (=> d!1563533 (>= lt!1995210 0)))

(declare-fun e!3044072 () Int)

(assert (=> d!1563533 (= lt!1995210 e!3044072)))

(declare-fun c!828229 () Bool)

(assert (=> d!1563533 (= c!828229 ((_ is Nil!55942) (t!363994 (_1!33196 lt!1994875))))))

(assert (=> d!1563533 (= (size!36877 (t!363994 (_1!33196 lt!1994875))) lt!1995210)))

(declare-fun b!4869394 () Bool)

(assert (=> b!4869394 (= e!3044072 0)))

(declare-fun b!4869395 () Bool)

(assert (=> b!4869395 (= e!3044072 (+ 1 (size!36877 (t!363994 (t!363994 (_1!33196 lt!1994875))))))))

(assert (= (and d!1563533 c!828229) b!4869394))

(assert (= (and d!1563533 (not c!828229)) b!4869395))

(declare-fun m!5869296 () Bool)

(assert (=> b!4869395 m!5869296))

(assert (=> b!4868652 d!1563533))

(declare-fun d!1563535 () Bool)

(declare-fun c!828232 () Bool)

(assert (=> d!1563535 (= c!828232 ((_ is Nil!55941) lt!1995101))))

(declare-fun e!3044075 () (InoxSet C!26412))

(assert (=> d!1563535 (= (content!9976 lt!1995101) e!3044075)))

(declare-fun b!4869400 () Bool)

(assert (=> b!4869400 (= e!3044075 ((as const (Array C!26412 Bool)) false))))

(declare-fun b!4869401 () Bool)

(assert (=> b!4869401 (= e!3044075 ((_ map or) (store ((as const (Array C!26412 Bool)) false) (h!62389 lt!1995101) true) (content!9976 (t!363993 lt!1995101))))))

(assert (= (and d!1563535 c!828232) b!4869400))

(assert (= (and d!1563535 (not c!828232)) b!4869401))

(declare-fun m!5869298 () Bool)

(assert (=> b!4869401 m!5869298))

(declare-fun m!5869300 () Bool)

(assert (=> b!4869401 m!5869300))

(assert (=> d!1563357 d!1563535))

(declare-fun d!1563537 () Bool)

(declare-fun c!828233 () Bool)

(assert (=> d!1563537 (= c!828233 ((_ is Nil!55941) (list!17492 totalInput!332)))))

(declare-fun e!3044076 () (InoxSet C!26412))

(assert (=> d!1563537 (= (content!9976 (list!17492 totalInput!332)) e!3044076)))

(declare-fun b!4869402 () Bool)

(assert (=> b!4869402 (= e!3044076 ((as const (Array C!26412 Bool)) false))))

(declare-fun b!4869403 () Bool)

(assert (=> b!4869403 (= e!3044076 ((_ map or) (store ((as const (Array C!26412 Bool)) false) (h!62389 (list!17492 totalInput!332)) true) (content!9976 (t!363993 (list!17492 totalInput!332)))))))

(assert (= (and d!1563537 c!828233) b!4869402))

(assert (= (and d!1563537 (not c!828233)) b!4869403))

(declare-fun m!5869302 () Bool)

(assert (=> b!4869403 m!5869302))

(declare-fun m!5869304 () Bool)

(assert (=> b!4869403 m!5869304))

(assert (=> d!1563357 d!1563537))

(declare-fun d!1563539 () Bool)

(declare-fun lt!1995211 () Int)

(assert (=> d!1563539 (>= lt!1995211 0)))

(declare-fun e!3044077 () Int)

(assert (=> d!1563539 (= lt!1995211 e!3044077)))

(declare-fun c!828234 () Bool)

(assert (=> d!1563539 (= c!828234 ((_ is Nil!55941) (innerList!14661 (xs!17881 (c!828058 input!661)))))))

(assert (=> d!1563539 (= (size!36875 (innerList!14661 (xs!17881 (c!828058 input!661)))) lt!1995211)))

(declare-fun b!4869404 () Bool)

(assert (=> b!4869404 (= e!3044077 0)))

(declare-fun b!4869405 () Bool)

(assert (=> b!4869405 (= e!3044077 (+ 1 (size!36875 (t!363993 (innerList!14661 (xs!17881 (c!828058 input!661)))))))))

(assert (= (and d!1563539 c!828234) b!4869404))

(assert (= (and d!1563539 (not c!828234)) b!4869405))

(declare-fun m!5869306 () Bool)

(assert (=> b!4869405 m!5869306))

(assert (=> d!1563399 d!1563539))

(declare-fun d!1563541 () Bool)

(declare-fun dynLambda!22467 (Int BalanceConc!28588) Bool)

(assert (=> d!1563541 (dynLambda!22467 lambda!243477 (seqFromList!5898 (list!17492 (_1!33203 lt!1995134))))))

(declare-fun lt!1995214 () Unit!145952)

(declare-fun choose!35599 (Int BalanceConc!28588) Unit!145952)

(assert (=> d!1563541 (= lt!1995214 (choose!35599 lambda!243477 (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))))))

(assert (=> d!1563541 (Forall!1675 lambda!243477)))

(assert (=> d!1563541 (= (ForallOf!1101 lambda!243477 (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))) lt!1995214)))

(declare-fun b_lambda!193589 () Bool)

(assert (=> (not b_lambda!193589) (not d!1563541)))

(declare-fun bs!1174512 () Bool)

(assert (= bs!1174512 d!1563541))

(assert (=> bs!1174512 m!5868882))

(declare-fun m!5869308 () Bool)

(assert (=> bs!1174512 m!5869308))

(assert (=> bs!1174512 m!5868882))

(declare-fun m!5869310 () Bool)

(assert (=> bs!1174512 m!5869310))

(declare-fun m!5869312 () Bool)

(assert (=> bs!1174512 m!5869312))

(assert (=> b!4869101 d!1563541))

(declare-fun d!1563543 () Bool)

(assert (=> d!1563543 (= (isEmpty!29943 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))) ((_ is Nil!55941) (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))))))

(assert (=> b!4869101 d!1563543))

(declare-fun d!1563545 () Bool)

(assert (=> d!1563545 (= (list!17492 (_1!33203 lt!1995134)) (list!17495 (c!828058 (_1!33203 lt!1995134))))))

(declare-fun bs!1174513 () Bool)

(assert (= bs!1174513 d!1563545))

(declare-fun m!5869314 () Bool)

(assert (=> bs!1174513 m!5869314))

(assert (=> b!4869101 d!1563545))

(declare-fun d!1563547 () Bool)

(declare-fun e!3044080 () Bool)

(assert (=> d!1563547 e!3044080))

(declare-fun res!2078689 () Bool)

(assert (=> d!1563547 (=> res!2078689 e!3044080)))

(assert (=> d!1563547 (= res!2078689 (isEmpty!29943 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))))))

(declare-fun lt!1995217 () Unit!145952)

(declare-fun choose!35601 (Regex!13107 List!56065) Unit!145952)

(assert (=> d!1563547 (= lt!1995217 (choose!35601 (regex!8032 (h!62391 rules!1248)) lt!1995136))))

(declare-fun validRegex!5867 (Regex!13107) Bool)

(assert (=> d!1563547 (validRegex!5867 (regex!8032 (h!62391 rules!1248)))))

(assert (=> d!1563547 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1684 (regex!8032 (h!62391 rules!1248)) lt!1995136) lt!1995217)))

(declare-fun b!4869408 () Bool)

(assert (=> b!4869408 (= e!3044080 (matchR!6492 (regex!8032 (h!62391 rules!1248)) (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))))))

(assert (= (and d!1563547 (not res!2078689)) b!4869408))

(assert (=> d!1563547 m!5868872))

(declare-fun m!5869316 () Bool)

(assert (=> d!1563547 m!5869316))

(assert (=> d!1563547 m!5868860))

(assert (=> d!1563547 m!5868860))

(assert (=> d!1563547 m!5868862))

(assert (=> d!1563547 m!5868864))

(declare-fun m!5869318 () Bool)

(assert (=> d!1563547 m!5869318))

(assert (=> d!1563547 m!5868862))

(assert (=> b!4869408 m!5868860))

(assert (=> b!4869408 m!5868862))

(assert (=> b!4869408 m!5868860))

(assert (=> b!4869408 m!5868862))

(assert (=> b!4869408 m!5868864))

(assert (=> b!4869408 m!5868866))

(assert (=> b!4869101 d!1563547))

(assert (=> b!4869101 d!1563163))

(declare-fun b!4869491 () Bool)

(declare-fun e!3044136 () Unit!145952)

(declare-fun Unit!145954 () Unit!145952)

(assert (=> b!4869491 (= e!3044136 Unit!145954)))

(declare-fun b!4869492 () Bool)

(declare-fun e!3044132 () tuple2!59798)

(declare-fun lt!1995394 () tuple2!59798)

(assert (=> b!4869492 (= e!3044132 lt!1995394)))

(declare-fun call!338190 () Regex!13107)

(declare-fun call!338192 () tuple2!59798)

(declare-fun call!338191 () List!56065)

(declare-fun bm!338182 () Bool)

(declare-fun lt!1995370 () List!56065)

(assert (=> bm!338182 (= call!338192 (findLongestMatchInner!1721 call!338190 lt!1995370 (+ (size!36875 Nil!55941) 1) call!338191 lt!1995136 (size!36875 lt!1995136)))))

(declare-fun b!4869493 () Bool)

(declare-fun c!828271 () Bool)

(declare-fun call!338194 () Bool)

(assert (=> b!4869493 (= c!828271 call!338194)))

(declare-fun lt!1995377 () Unit!145952)

(declare-fun lt!1995368 () Unit!145952)

(assert (=> b!4869493 (= lt!1995377 lt!1995368)))

(assert (=> b!4869493 (= lt!1995136 Nil!55941)))

(declare-fun call!338193 () Unit!145952)

(assert (=> b!4869493 (= lt!1995368 call!338193)))

(declare-fun lt!1995374 () Unit!145952)

(declare-fun lt!1995375 () Unit!145952)

(assert (=> b!4869493 (= lt!1995374 lt!1995375)))

(declare-fun call!338187 () Bool)

(assert (=> b!4869493 call!338187))

(declare-fun call!338188 () Unit!145952)

(assert (=> b!4869493 (= lt!1995375 call!338188)))

(declare-fun e!3044130 () tuple2!59798)

(declare-fun e!3044131 () tuple2!59798)

(assert (=> b!4869493 (= e!3044130 e!3044131)))

(declare-fun bm!338183 () Bool)

(assert (=> bm!338183 (= call!338188 (lemmaIsPrefixRefl!3163 lt!1995136 lt!1995136))))

(declare-fun bm!338184 () Bool)

(assert (=> bm!338184 (= call!338187 (isPrefix!4766 lt!1995136 lt!1995136))))

(declare-fun d!1563549 () Bool)

(declare-fun e!3044133 () Bool)

(assert (=> d!1563549 e!3044133))

(declare-fun res!2078703 () Bool)

(assert (=> d!1563549 (=> (not res!2078703) (not e!3044133))))

(declare-fun lt!1995378 () tuple2!59798)

(assert (=> d!1563549 (= res!2078703 (= (++!12186 (_1!33202 lt!1995378) (_2!33202 lt!1995378)) lt!1995136))))

(declare-fun e!3044135 () tuple2!59798)

(assert (=> d!1563549 (= lt!1995378 e!3044135)))

(declare-fun c!828270 () Bool)

(declare-fun lostCause!1072 (Regex!13107) Bool)

(assert (=> d!1563549 (= c!828270 (lostCause!1072 (regex!8032 (h!62391 rules!1248))))))

(declare-fun lt!1995371 () Unit!145952)

(declare-fun Unit!145955 () Unit!145952)

(assert (=> d!1563549 (= lt!1995371 Unit!145955)))

(declare-fun getSuffix!2873 (List!56065 List!56065) List!56065)

(assert (=> d!1563549 (= (getSuffix!2873 lt!1995136 Nil!55941) lt!1995136)))

(declare-fun lt!1995372 () Unit!145952)

(declare-fun lt!1995380 () Unit!145952)

(assert (=> d!1563549 (= lt!1995372 lt!1995380)))

(declare-fun lt!1995391 () List!56065)

(assert (=> d!1563549 (= lt!1995136 lt!1995391)))

(declare-fun lemmaSamePrefixThenSameSuffix!2289 (List!56065 List!56065 List!56065 List!56065 List!56065) Unit!145952)

(assert (=> d!1563549 (= lt!1995380 (lemmaSamePrefixThenSameSuffix!2289 Nil!55941 lt!1995136 Nil!55941 lt!1995391 lt!1995136))))

(assert (=> d!1563549 (= lt!1995391 (getSuffix!2873 lt!1995136 Nil!55941))))

(declare-fun lt!1995389 () Unit!145952)

(declare-fun lt!1995381 () Unit!145952)

(assert (=> d!1563549 (= lt!1995389 lt!1995381)))

(assert (=> d!1563549 (isPrefix!4766 Nil!55941 (++!12186 Nil!55941 lt!1995136))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3109 (List!56065 List!56065) Unit!145952)

(assert (=> d!1563549 (= lt!1995381 (lemmaConcatTwoListThenFirstIsPrefix!3109 Nil!55941 lt!1995136))))

(assert (=> d!1563549 (validRegex!5867 (regex!8032 (h!62391 rules!1248)))))

(assert (=> d!1563549 (= (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)) lt!1995378)))

(declare-fun bm!338185 () Bool)

(declare-fun call!338189 () C!26412)

(declare-fun derivativeStep!3865 (Regex!13107 C!26412) Regex!13107)

(assert (=> bm!338185 (= call!338190 (derivativeStep!3865 (regex!8032 (h!62391 rules!1248)) call!338189))))

(declare-fun b!4869494 () Bool)

(declare-fun e!3044137 () tuple2!59798)

(assert (=> b!4869494 (= e!3044137 call!338192)))

(declare-fun b!4869495 () Bool)

(assert (=> b!4869495 (= e!3044135 e!3044130)))

(declare-fun c!828274 () Bool)

(assert (=> b!4869495 (= c!828274 (= (size!36875 Nil!55941) (size!36875 lt!1995136)))))

(declare-fun b!4869496 () Bool)

(assert (=> b!4869496 (= e!3044131 (tuple2!59799 Nil!55941 Nil!55941))))

(declare-fun b!4869497 () Bool)

(assert (=> b!4869497 (= e!3044137 e!3044132)))

(assert (=> b!4869497 (= lt!1995394 call!338192)))

(declare-fun c!828273 () Bool)

(assert (=> b!4869497 (= c!828273 (isEmpty!29943 (_1!33202 lt!1995394)))))

(declare-fun bm!338186 () Bool)

(assert (=> bm!338186 (= call!338191 (tail!9559 lt!1995136))))

(declare-fun bm!338187 () Bool)

(assert (=> bm!338187 (= call!338189 (head!10413 lt!1995136))))

(declare-fun b!4869498 () Bool)

(declare-fun c!828272 () Bool)

(assert (=> b!4869498 (= c!828272 call!338194)))

(declare-fun lt!1995383 () Unit!145952)

(declare-fun lt!1995388 () Unit!145952)

(assert (=> b!4869498 (= lt!1995383 lt!1995388)))

(declare-fun lt!1995385 () C!26412)

(declare-fun lt!1995393 () List!56065)

(assert (=> b!4869498 (= (++!12186 (++!12186 Nil!55941 (Cons!55941 lt!1995385 Nil!55941)) lt!1995393) lt!1995136)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1316 (List!56065 C!26412 List!56065 List!56065) Unit!145952)

(assert (=> b!4869498 (= lt!1995388 (lemmaMoveElementToOtherListKeepsConcatEq!1316 Nil!55941 lt!1995385 lt!1995393 lt!1995136))))

(assert (=> b!4869498 (= lt!1995393 (tail!9559 lt!1995136))))

(assert (=> b!4869498 (= lt!1995385 (head!10413 lt!1995136))))

(declare-fun lt!1995367 () Unit!145952)

(declare-fun lt!1995369 () Unit!145952)

(assert (=> b!4869498 (= lt!1995367 lt!1995369)))

(assert (=> b!4869498 (isPrefix!4766 (++!12186 Nil!55941 (Cons!55941 (head!10413 (getSuffix!2873 lt!1995136 Nil!55941)) Nil!55941)) lt!1995136)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!698 (List!56065 List!56065) Unit!145952)

(assert (=> b!4869498 (= lt!1995369 (lemmaAddHeadSuffixToPrefixStillPrefix!698 Nil!55941 lt!1995136))))

(declare-fun lt!1995373 () Unit!145952)

(declare-fun lt!1995379 () Unit!145952)

(assert (=> b!4869498 (= lt!1995373 lt!1995379)))

(assert (=> b!4869498 (= lt!1995379 (lemmaAddHeadSuffixToPrefixStillPrefix!698 Nil!55941 lt!1995136))))

(assert (=> b!4869498 (= lt!1995370 (++!12186 Nil!55941 (Cons!55941 (head!10413 lt!1995136) Nil!55941)))))

(declare-fun lt!1995386 () Unit!145952)

(assert (=> b!4869498 (= lt!1995386 e!3044136)))

(declare-fun c!828269 () Bool)

(assert (=> b!4869498 (= c!828269 (= (size!36875 Nil!55941) (size!36875 lt!1995136)))))

(declare-fun lt!1995376 () Unit!145952)

(declare-fun lt!1995387 () Unit!145952)

(assert (=> b!4869498 (= lt!1995376 lt!1995387)))

(assert (=> b!4869498 (<= (size!36875 Nil!55941) (size!36875 lt!1995136))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!610 (List!56065 List!56065) Unit!145952)

(assert (=> b!4869498 (= lt!1995387 (lemmaIsPrefixThenSmallerEqSize!610 Nil!55941 lt!1995136))))

(assert (=> b!4869498 (= e!3044130 e!3044137)))

(declare-fun bm!338188 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1044 (List!56065 List!56065 List!56065) Unit!145952)

(assert (=> bm!338188 (= call!338193 (lemmaIsPrefixSameLengthThenSameList!1044 lt!1995136 Nil!55941 lt!1995136))))

(declare-fun bm!338189 () Bool)

(declare-fun nullable!4541 (Regex!13107) Bool)

(assert (=> bm!338189 (= call!338194 (nullable!4541 (regex!8032 (h!62391 rules!1248))))))

(declare-fun b!4869499 () Bool)

(declare-fun e!3044134 () Bool)

(assert (=> b!4869499 (= e!3044134 (>= (size!36875 (_1!33202 lt!1995378)) (size!36875 Nil!55941)))))

(declare-fun b!4869500 () Bool)

(assert (=> b!4869500 (= e!3044131 (tuple2!59799 Nil!55941 lt!1995136))))

(declare-fun b!4869501 () Bool)

(declare-fun Unit!145957 () Unit!145952)

(assert (=> b!4869501 (= e!3044136 Unit!145957)))

(declare-fun lt!1995390 () Unit!145952)

(assert (=> b!4869501 (= lt!1995390 call!338188)))

(assert (=> b!4869501 call!338187))

(declare-fun lt!1995384 () Unit!145952)

(assert (=> b!4869501 (= lt!1995384 lt!1995390)))

(declare-fun lt!1995392 () Unit!145952)

(assert (=> b!4869501 (= lt!1995392 call!338193)))

(assert (=> b!4869501 (= lt!1995136 Nil!55941)))

(declare-fun lt!1995382 () Unit!145952)

(assert (=> b!4869501 (= lt!1995382 lt!1995392)))

(assert (=> b!4869501 false))

(declare-fun b!4869502 () Bool)

(assert (=> b!4869502 (= e!3044133 e!3044134)))

(declare-fun res!2078702 () Bool)

(assert (=> b!4869502 (=> res!2078702 e!3044134)))

(assert (=> b!4869502 (= res!2078702 (isEmpty!29943 (_1!33202 lt!1995378)))))

(declare-fun b!4869503 () Bool)

(assert (=> b!4869503 (= e!3044135 (tuple2!59799 Nil!55941 lt!1995136))))

(declare-fun b!4869504 () Bool)

(assert (=> b!4869504 (= e!3044132 (tuple2!59799 Nil!55941 lt!1995136))))

(assert (= (and d!1563549 c!828270) b!4869503))

(assert (= (and d!1563549 (not c!828270)) b!4869495))

(assert (= (and b!4869495 c!828274) b!4869493))

(assert (= (and b!4869495 (not c!828274)) b!4869498))

(assert (= (and b!4869493 c!828271) b!4869496))

(assert (= (and b!4869493 (not c!828271)) b!4869500))

(assert (= (and b!4869498 c!828269) b!4869501))

(assert (= (and b!4869498 (not c!828269)) b!4869491))

(assert (= (and b!4869498 c!828272) b!4869497))

(assert (= (and b!4869498 (not c!828272)) b!4869494))

(assert (= (and b!4869497 c!828273) b!4869504))

(assert (= (and b!4869497 (not c!828273)) b!4869492))

(assert (= (or b!4869497 b!4869494) bm!338186))

(assert (= (or b!4869497 b!4869494) bm!338187))

(assert (= (or b!4869497 b!4869494) bm!338185))

(assert (= (or b!4869497 b!4869494) bm!338182))

(assert (= (or b!4869493 b!4869501) bm!338183))

(assert (= (or b!4869493 b!4869501) bm!338188))

(assert (= (or b!4869493 b!4869498) bm!338189))

(assert (= (or b!4869493 b!4869501) bm!338184))

(assert (= (and d!1563549 res!2078703) b!4869502))

(assert (= (and b!4869502 (not res!2078702)) b!4869499))

(declare-fun m!5869394 () Bool)

(assert (=> bm!338183 m!5869394))

(declare-fun m!5869396 () Bool)

(assert (=> bm!338185 m!5869396))

(declare-fun m!5869398 () Bool)

(assert (=> bm!338189 m!5869398))

(declare-fun m!5869400 () Bool)

(assert (=> d!1563549 m!5869400))

(assert (=> d!1563549 m!5869316))

(declare-fun m!5869402 () Bool)

(assert (=> d!1563549 m!5869402))

(declare-fun m!5869404 () Bool)

(assert (=> d!1563549 m!5869404))

(declare-fun m!5869406 () Bool)

(assert (=> d!1563549 m!5869406))

(declare-fun m!5869408 () Bool)

(assert (=> d!1563549 m!5869408))

(assert (=> d!1563549 m!5869404))

(declare-fun m!5869410 () Bool)

(assert (=> d!1563549 m!5869410))

(declare-fun m!5869412 () Bool)

(assert (=> d!1563549 m!5869412))

(declare-fun m!5869414 () Bool)

(assert (=> b!4869499 m!5869414))

(assert (=> b!4869499 m!5868860))

(declare-fun m!5869416 () Bool)

(assert (=> bm!338186 m!5869416))

(declare-fun m!5869418 () Bool)

(assert (=> bm!338184 m!5869418))

(declare-fun m!5869420 () Bool)

(assert (=> bm!338188 m!5869420))

(declare-fun m!5869422 () Bool)

(assert (=> b!4869497 m!5869422))

(declare-fun m!5869424 () Bool)

(assert (=> bm!338187 m!5869424))

(assert (=> bm!338182 m!5868862))

(declare-fun m!5869426 () Bool)

(assert (=> bm!338182 m!5869426))

(declare-fun m!5869428 () Bool)

(assert (=> b!4869502 m!5869428))

(assert (=> b!4869498 m!5869416))

(declare-fun m!5869430 () Bool)

(assert (=> b!4869498 m!5869430))

(assert (=> b!4869498 m!5868862))

(declare-fun m!5869432 () Bool)

(assert (=> b!4869498 m!5869432))

(declare-fun m!5869434 () Bool)

(assert (=> b!4869498 m!5869434))

(assert (=> b!4869498 m!5869402))

(declare-fun m!5869436 () Bool)

(assert (=> b!4869498 m!5869436))

(assert (=> b!4869498 m!5869424))

(assert (=> b!4869498 m!5869402))

(declare-fun m!5869438 () Bool)

(assert (=> b!4869498 m!5869438))

(declare-fun m!5869440 () Bool)

(assert (=> b!4869498 m!5869440))

(declare-fun m!5869442 () Bool)

(assert (=> b!4869498 m!5869442))

(declare-fun m!5869444 () Bool)

(assert (=> b!4869498 m!5869444))

(assert (=> b!4869498 m!5869434))

(declare-fun m!5869446 () Bool)

(assert (=> b!4869498 m!5869446))

(assert (=> b!4869498 m!5868860))

(assert (=> b!4869498 m!5869442))

(assert (=> b!4869101 d!1563549))

(declare-fun d!1563573 () Bool)

(declare-fun e!3044145 () Bool)

(assert (=> d!1563573 e!3044145))

(declare-fun res!2078706 () Bool)

(assert (=> d!1563573 (=> (not res!2078706) (not e!3044145))))

(assert (=> d!1563573 (= res!2078706 (semiInverseModEq!3546 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))))))

(declare-fun Unit!145958 () Unit!145952)

(assert (=> d!1563573 (= (lemmaInv!1204 (transformation!8032 (h!62391 rules!1248))) Unit!145958)))

(declare-fun b!4869512 () Bool)

(assert (=> b!4869512 (= e!3044145 (equivClasses!3425 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))))))

(assert (= (and d!1563573 res!2078706) b!4869512))

(assert (=> d!1563573 m!5868304))

(assert (=> b!4869512 m!5868306))

(assert (=> b!4869101 d!1563573))

(declare-fun d!1563579 () Bool)

(declare-fun lt!1995398 () Int)

(assert (=> d!1563579 (= lt!1995398 (size!36875 (list!17492 (_1!33203 lt!1995134))))))

(assert (=> d!1563579 (= lt!1995398 (size!36876 (c!828058 (_1!33203 lt!1995134))))))

(assert (=> d!1563579 (= (size!36870 (_1!33203 lt!1995134)) lt!1995398)))

(declare-fun bs!1174521 () Bool)

(assert (= bs!1174521 d!1563579))

(assert (=> bs!1174521 m!5868880))

(assert (=> bs!1174521 m!5868880))

(declare-fun m!5869460 () Bool)

(assert (=> bs!1174521 m!5869460))

(declare-fun m!5869462 () Bool)

(assert (=> bs!1174521 m!5869462))

(assert (=> b!4869101 d!1563579))

(declare-fun d!1563581 () Bool)

(assert (=> d!1563581 (dynLambda!22467 lambda!243477 (_1!33203 lt!1995134))))

(declare-fun lt!1995399 () Unit!145952)

(assert (=> d!1563581 (= lt!1995399 (choose!35599 lambda!243477 (_1!33203 lt!1995134)))))

(assert (=> d!1563581 (Forall!1675 lambda!243477)))

(assert (=> d!1563581 (= (ForallOf!1101 lambda!243477 (_1!33203 lt!1995134)) lt!1995399)))

(declare-fun b_lambda!193599 () Bool)

(assert (=> (not b_lambda!193599) (not d!1563581)))

(declare-fun bs!1174522 () Bool)

(assert (= bs!1174522 d!1563581))

(declare-fun m!5869464 () Bool)

(assert (=> bs!1174522 m!5869464))

(declare-fun m!5869466 () Bool)

(assert (=> bs!1174522 m!5869466))

(assert (=> bs!1174522 m!5869312))

(assert (=> b!4869101 d!1563581))

(declare-fun d!1563583 () Bool)

(declare-fun lt!1995401 () Int)

(assert (=> d!1563583 (>= lt!1995401 0)))

(declare-fun e!3044146 () Int)

(assert (=> d!1563583 (= lt!1995401 e!3044146)))

(declare-fun c!828275 () Bool)

(assert (=> d!1563583 (= c!828275 ((_ is Nil!55941) Nil!55941))))

(assert (=> d!1563583 (= (size!36875 Nil!55941) lt!1995401)))

(declare-fun b!4869513 () Bool)

(assert (=> b!4869513 (= e!3044146 0)))

(declare-fun b!4869514 () Bool)

(assert (=> b!4869514 (= e!3044146 (+ 1 (size!36875 (t!363993 Nil!55941))))))

(assert (= (and d!1563583 c!828275) b!4869513))

(assert (= (and d!1563583 (not c!828275)) b!4869514))

(declare-fun m!5869476 () Bool)

(assert (=> b!4869514 m!5869476))

(assert (=> b!4869101 d!1563583))

(declare-fun d!1563589 () Bool)

(declare-fun dynLambda!22468 (Int BalanceConc!28588) TokenValue!8342)

(assert (=> d!1563589 (= (apply!13502 (transformation!8032 (h!62391 rules!1248)) (_1!33203 lt!1995134)) (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (_1!33203 lt!1995134)))))

(declare-fun b_lambda!193605 () Bool)

(assert (=> (not b_lambda!193605) (not d!1563589)))

(declare-fun t!364036 () Bool)

(declare-fun tb!257859 () Bool)

(assert (=> (and b!4868405 (= (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) t!364036) tb!257859))

(declare-fun result!321014 () Bool)

(declare-fun inv!21 (TokenValue!8342) Bool)

(assert (=> tb!257859 (= result!321014 (inv!21 (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (_1!33203 lt!1995134))))))

(declare-fun m!5869484 () Bool)

(assert (=> tb!257859 m!5869484))

(assert (=> d!1563589 t!364036))

(declare-fun b_and!342841 () Bool)

(assert (= b_and!342791 (and (=> t!364036 result!321014) b_and!342841)))

(declare-fun t!364038 () Bool)

(declare-fun tb!257861 () Bool)

(assert (=> (and b!4868583 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) t!364038) tb!257861))

(declare-fun result!321018 () Bool)

(assert (= result!321018 result!321014))

(assert (=> d!1563589 t!364038))

(declare-fun b_and!342843 () Bool)

(assert (= b_and!342799 (and (=> t!364038 result!321018) b_and!342843)))

(declare-fun t!364040 () Bool)

(declare-fun tb!257863 () Bool)

(assert (=> (and b!4869164 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) t!364040) tb!257863))

(declare-fun result!321020 () Bool)

(assert (= result!321020 result!321014))

(assert (=> d!1563589 t!364040))

(declare-fun b_and!342845 () Bool)

(assert (= b_and!342807 (and (=> t!364040 result!321020) b_and!342845)))

(declare-fun m!5869486 () Bool)

(assert (=> d!1563589 m!5869486))

(assert (=> b!4869101 d!1563589))

(declare-fun d!1563595 () Bool)

(declare-fun lt!1995403 () Int)

(assert (=> d!1563595 (>= lt!1995403 0)))

(declare-fun e!3044150 () Int)

(assert (=> d!1563595 (= lt!1995403 e!3044150)))

(declare-fun c!828276 () Bool)

(assert (=> d!1563595 (= c!828276 ((_ is Nil!55941) lt!1995136))))

(assert (=> d!1563595 (= (size!36875 lt!1995136) lt!1995403)))

(declare-fun b!4869517 () Bool)

(assert (=> b!4869517 (= e!3044150 0)))

(declare-fun b!4869518 () Bool)

(assert (=> b!4869518 (= e!3044150 (+ 1 (size!36875 (t!363993 lt!1995136))))))

(assert (= (and d!1563595 c!828276) b!4869517))

(assert (= (and d!1563595 (not c!828276)) b!4869518))

(declare-fun m!5869488 () Bool)

(assert (=> b!4869518 m!5869488))

(assert (=> b!4869101 d!1563595))

(declare-fun d!1563597 () Bool)

(declare-fun fromListB!2678 (List!56065) BalanceConc!28588)

(assert (=> d!1563597 (= (seqFromList!5898 (list!17492 (_1!33203 lt!1995134))) (fromListB!2678 (list!17492 (_1!33203 lt!1995134))))))

(declare-fun bs!1174527 () Bool)

(assert (= bs!1174527 d!1563597))

(assert (=> bs!1174527 m!5868880))

(declare-fun m!5869490 () Bool)

(assert (=> bs!1174527 m!5869490))

(assert (=> b!4869101 d!1563597))

(declare-fun bs!1174529 () Bool)

(declare-fun d!1563599 () Bool)

(assert (= bs!1174529 (and d!1563599 d!1563329)))

(declare-fun lambda!243485 () Int)

(assert (=> bs!1174529 (= lambda!243485 lambda!243469)))

(declare-fun b!4869528 () Bool)

(declare-fun e!3044158 () Bool)

(assert (=> b!4869528 (= e!3044158 true)))

(assert (=> d!1563599 e!3044158))

(assert (= d!1563599 b!4869528))

(assert (=> b!4869528 (< (dynLambda!22462 order!25221 (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) (dynLambda!22463 order!25225 lambda!243485))))

(assert (=> b!4869528 (< (dynLambda!22460 order!25217 (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) (dynLambda!22463 order!25225 lambda!243485))))

(assert (=> d!1563599 (= (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (_1!33203 lt!1995134)) (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))))))

(declare-fun lt!1995409 () Unit!145952)

(declare-fun Forall2of!433 (Int BalanceConc!28588 BalanceConc!28588) Unit!145952)

(assert (=> d!1563599 (= lt!1995409 (Forall2of!433 lambda!243485 (_1!33203 lt!1995134) (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))))))

(assert (=> d!1563599 (= (list!17492 (_1!33203 lt!1995134)) (list!17492 (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))))))

(assert (=> d!1563599 (= (lemmaEqSameImage!1058 (transformation!8032 (h!62391 rules!1248)) (_1!33203 lt!1995134) (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))) lt!1995409)))

(declare-fun b_lambda!193607 () Bool)

(assert (=> (not b_lambda!193607) (not d!1563599)))

(assert (=> d!1563599 t!364036))

(declare-fun b_and!342847 () Bool)

(assert (= b_and!342841 (and (=> t!364036 result!321014) b_and!342847)))

(assert (=> d!1563599 t!364038))

(declare-fun b_and!342849 () Bool)

(assert (= b_and!342843 (and (=> t!364038 result!321018) b_and!342849)))

(assert (=> d!1563599 t!364040))

(declare-fun b_and!342851 () Bool)

(assert (= b_and!342845 (and (=> t!364040 result!321020) b_and!342851)))

(declare-fun b_lambda!193609 () Bool)

(assert (=> (not b_lambda!193609) (not d!1563599)))

(declare-fun t!364042 () Bool)

(declare-fun tb!257865 () Bool)

(assert (=> (and b!4868405 (= (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) t!364042) tb!257865))

(declare-fun result!321022 () Bool)

(assert (=> tb!257865 (= result!321022 (inv!21 (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (seqFromList!5898 (list!17492 (_1!33203 lt!1995134))))))))

(declare-fun m!5869498 () Bool)

(assert (=> tb!257865 m!5869498))

(assert (=> d!1563599 t!364042))

(declare-fun b_and!342853 () Bool)

(assert (= b_and!342847 (and (=> t!364042 result!321022) b_and!342853)))

(declare-fun t!364044 () Bool)

(declare-fun tb!257867 () Bool)

(assert (=> (and b!4868583 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) t!364044) tb!257867))

(declare-fun result!321024 () Bool)

(assert (= result!321024 result!321022))

(assert (=> d!1563599 t!364044))

(declare-fun b_and!342855 () Bool)

(assert (= b_and!342849 (and (=> t!364044 result!321024) b_and!342855)))

(declare-fun t!364046 () Bool)

(declare-fun tb!257869 () Bool)

(assert (=> (and b!4869164 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) t!364046) tb!257869))

(declare-fun result!321026 () Bool)

(assert (= result!321026 result!321022))

(assert (=> d!1563599 t!364046))

(declare-fun b_and!342857 () Bool)

(assert (= b_and!342851 (and (=> t!364046 result!321026) b_and!342857)))

(assert (=> d!1563599 m!5868880))

(assert (=> d!1563599 m!5868882))

(declare-fun m!5869500 () Bool)

(assert (=> d!1563599 m!5869500))

(assert (=> d!1563599 m!5868882))

(declare-fun m!5869502 () Bool)

(assert (=> d!1563599 m!5869502))

(assert (=> d!1563599 m!5868882))

(declare-fun m!5869504 () Bool)

(assert (=> d!1563599 m!5869504))

(assert (=> d!1563599 m!5869486))

(assert (=> b!4869101 d!1563599))

(declare-fun d!1563607 () Bool)

(assert (not d!1563607))

(assert (=> b!4868913 d!1563607))

(declare-fun b!4869536 () Bool)

(declare-fun e!3044165 () List!56065)

(assert (=> b!4869536 (= e!3044165 (list!17500 (xs!17881 (c!828058 (_2!33197 (get!19227 lt!1994924))))))))

(declare-fun b!4869537 () Bool)

(assert (=> b!4869537 (= e!3044165 (++!12186 (list!17495 (left!40633 (c!828058 (_2!33197 (get!19227 lt!1994924))))) (list!17495 (right!40963 (c!828058 (_2!33197 (get!19227 lt!1994924)))))))))

(declare-fun d!1563613 () Bool)

(declare-fun c!828278 () Bool)

(assert (=> d!1563613 (= c!828278 ((_ is Empty!14573) (c!828058 (_2!33197 (get!19227 lt!1994924)))))))

(declare-fun e!3044164 () List!56065)

(assert (=> d!1563613 (= (list!17495 (c!828058 (_2!33197 (get!19227 lt!1994924)))) e!3044164)))

(declare-fun b!4869535 () Bool)

(assert (=> b!4869535 (= e!3044164 e!3044165)))

(declare-fun c!828279 () Bool)

(assert (=> b!4869535 (= c!828279 ((_ is Leaf!24300) (c!828058 (_2!33197 (get!19227 lt!1994924)))))))

(declare-fun b!4869534 () Bool)

(assert (=> b!4869534 (= e!3044164 Nil!55941)))

(assert (= (and d!1563613 c!828278) b!4869534))

(assert (= (and d!1563613 (not c!828278)) b!4869535))

(assert (= (and b!4869535 c!828279) b!4869536))

(assert (= (and b!4869535 (not c!828279)) b!4869537))

(declare-fun m!5869508 () Bool)

(assert (=> b!4869536 m!5869508))

(declare-fun m!5869510 () Bool)

(assert (=> b!4869537 m!5869510))

(declare-fun m!5869512 () Bool)

(assert (=> b!4869537 m!5869512))

(assert (=> b!4869537 m!5869510))

(assert (=> b!4869537 m!5869512))

(declare-fun m!5869514 () Bool)

(assert (=> b!4869537 m!5869514))

(assert (=> d!1563343 d!1563613))

(assert (=> d!1563231 d!1563345))

(declare-fun d!1563615 () Bool)

(declare-fun e!3044168 () Bool)

(assert (=> d!1563615 e!3044168))

(declare-fun res!2078718 () Bool)

(assert (=> d!1563615 (=> res!2078718 e!3044168)))

(declare-fun lt!1995412 () Bool)

(assert (=> d!1563615 (= res!2078718 (not lt!1995412))))

(declare-fun e!3044167 () Bool)

(assert (=> d!1563615 (= lt!1995412 e!3044167)))

(declare-fun res!2078717 () Bool)

(assert (=> d!1563615 (=> res!2078717 e!3044167)))

(assert (=> d!1563615 (= res!2078717 ((_ is Nil!55941) (list!17492 input!661)))))

(assert (=> d!1563615 (= (isPrefix!4766 (list!17492 input!661) (list!17492 input!661)) lt!1995412)))

(declare-fun b!4869538 () Bool)

(declare-fun e!3044166 () Bool)

(assert (=> b!4869538 (= e!3044167 e!3044166)))

(declare-fun res!2078715 () Bool)

(assert (=> b!4869538 (=> (not res!2078715) (not e!3044166))))

(assert (=> b!4869538 (= res!2078715 (not ((_ is Nil!55941) (list!17492 input!661))))))

(declare-fun b!4869541 () Bool)

(assert (=> b!4869541 (= e!3044168 (>= (size!36875 (list!17492 input!661)) (size!36875 (list!17492 input!661))))))

(declare-fun b!4869539 () Bool)

(declare-fun res!2078716 () Bool)

(assert (=> b!4869539 (=> (not res!2078716) (not e!3044166))))

(assert (=> b!4869539 (= res!2078716 (= (head!10413 (list!17492 input!661)) (head!10413 (list!17492 input!661))))))

(declare-fun b!4869540 () Bool)

(assert (=> b!4869540 (= e!3044166 (isPrefix!4766 (tail!9559 (list!17492 input!661)) (tail!9559 (list!17492 input!661))))))

(assert (= (and d!1563615 (not res!2078717)) b!4869538))

(assert (= (and b!4869538 res!2078715) b!4869539))

(assert (= (and b!4869539 res!2078716) b!4869540))

(assert (= (and d!1563615 (not res!2078718)) b!4869541))

(assert (=> b!4869541 m!5868142))

(assert (=> b!4869541 m!5868170))

(assert (=> b!4869541 m!5868142))

(assert (=> b!4869541 m!5868170))

(assert (=> b!4869539 m!5868142))

(declare-fun m!5869516 () Bool)

(assert (=> b!4869539 m!5869516))

(assert (=> b!4869539 m!5868142))

(assert (=> b!4869539 m!5869516))

(assert (=> b!4869540 m!5868142))

(declare-fun m!5869518 () Bool)

(assert (=> b!4869540 m!5869518))

(assert (=> b!4869540 m!5868142))

(assert (=> b!4869540 m!5869518))

(assert (=> b!4869540 m!5869518))

(assert (=> b!4869540 m!5869518))

(declare-fun m!5869520 () Bool)

(assert (=> b!4869540 m!5869520))

(assert (=> d!1563231 d!1563615))

(declare-fun d!1563619 () Bool)

(assert (=> d!1563619 (isPrefix!4766 (list!17492 input!661) (list!17492 input!661))))

(declare-fun lt!1995414 () Unit!145952)

(assert (=> d!1563619 (= lt!1995414 (choose!35596 (list!17492 input!661) (list!17492 input!661)))))

(assert (=> d!1563619 (= (lemmaIsPrefixRefl!3163 (list!17492 input!661) (list!17492 input!661)) lt!1995414)))

(declare-fun bs!1174531 () Bool)

(assert (= bs!1174531 d!1563619))

(assert (=> bs!1174531 m!5868142))

(assert (=> bs!1174531 m!5868142))

(assert (=> bs!1174531 m!5868382))

(assert (=> bs!1174531 m!5868142))

(assert (=> bs!1174531 m!5868142))

(declare-fun m!5869522 () Bool)

(assert (=> bs!1174531 m!5869522))

(assert (=> d!1563231 d!1563619))

(assert (=> d!1563231 d!1563233))

(declare-fun d!1563621 () Bool)

(declare-fun res!2078727 () Bool)

(declare-fun e!3044176 () Bool)

(assert (=> d!1563621 (=> res!2078727 e!3044176)))

(assert (=> d!1563621 (= res!2078727 ((_ is Nil!55943) (t!363995 rules!1248)))))

(assert (=> d!1563621 (= (noDuplicateTag!3283 thiss!11777 (t!363995 rules!1248) (Cons!55945 (tag!8896 (h!62391 rules!1248)) Nil!55945)) e!3044176)))

(declare-fun b!4869556 () Bool)

(declare-fun e!3044177 () Bool)

(assert (=> b!4869556 (= e!3044176 e!3044177)))

(declare-fun res!2078728 () Bool)

(assert (=> b!4869556 (=> (not res!2078728) (not e!3044177))))

(assert (=> b!4869556 (= res!2078728 (not (contains!19396 (Cons!55945 (tag!8896 (h!62391 rules!1248)) Nil!55945) (tag!8896 (h!62391 (t!363995 rules!1248))))))))

(declare-fun b!4869557 () Bool)

(assert (=> b!4869557 (= e!3044177 (noDuplicateTag!3283 thiss!11777 (t!363995 (t!363995 rules!1248)) (Cons!55945 (tag!8896 (h!62391 (t!363995 rules!1248))) (Cons!55945 (tag!8896 (h!62391 rules!1248)) Nil!55945))))))

(assert (= (and d!1563621 (not res!2078727)) b!4869556))

(assert (= (and b!4869556 res!2078728) b!4869557))

(declare-fun m!5869524 () Bool)

(assert (=> b!4869556 m!5869524))

(declare-fun m!5869528 () Bool)

(assert (=> b!4869557 m!5869528))

(assert (=> b!4869067 d!1563621))

(declare-fun d!1563623 () Bool)

(assert (=> d!1563623 (= (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952)))) (list!17495 (c!828058 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))))))

(declare-fun bs!1174532 () Bool)

(assert (= bs!1174532 d!1563623))

(declare-fun m!5869536 () Bool)

(assert (=> bs!1174532 m!5869536))

(assert (=> b!4868672 d!1563623))

(declare-fun d!1563625 () Bool)

(declare-fun lt!1995415 () BalanceConc!28588)

(assert (=> d!1563625 (= (list!17492 lt!1995415) (originalCharacters!8355 (_1!33199 (get!19228 lt!1994952))))))

(assert (=> d!1563625 (= lt!1995415 (dynLambda!22465 (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952))))) (value!258054 (_1!33199 (get!19228 lt!1994952)))))))

(assert (=> d!1563625 (= (charsOf!5337 (_1!33199 (get!19228 lt!1994952))) lt!1995415)))

(declare-fun b_lambda!193611 () Bool)

(assert (=> (not b_lambda!193611) (not d!1563625)))

(declare-fun tb!257871 () Bool)

(declare-fun t!364048 () Bool)

(assert (=> (and b!4868405 (= (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))) t!364048) tb!257871))

(declare-fun b!4869558 () Bool)

(declare-fun e!3044178 () Bool)

(declare-fun tp!1369949 () Bool)

(assert (=> b!4869558 (= e!3044178 (and (inv!71852 (c!828058 (dynLambda!22465 (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952))))) (value!258054 (_1!33199 (get!19228 lt!1994952)))))) tp!1369949))))

(declare-fun result!321028 () Bool)

(assert (=> tb!257871 (= result!321028 (and (inv!71854 (dynLambda!22465 (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952))))) (value!258054 (_1!33199 (get!19228 lt!1994952))))) e!3044178))))

(assert (= tb!257871 b!4869558))

(declare-fun m!5869546 () Bool)

(assert (=> b!4869558 m!5869546))

(declare-fun m!5869550 () Bool)

(assert (=> tb!257871 m!5869550))

(assert (=> d!1563625 t!364048))

(declare-fun b_and!342859 () Bool)

(assert (= b_and!342811 (and (=> t!364048 result!321028) b_and!342859)))

(declare-fun t!364050 () Bool)

(declare-fun tb!257873 () Bool)

(assert (=> (and b!4868583 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))) t!364050) tb!257873))

(declare-fun result!321030 () Bool)

(assert (= result!321030 result!321028))

(assert (=> d!1563625 t!364050))

(declare-fun b_and!342861 () Bool)

(assert (= b_and!342813 (and (=> t!364050 result!321030) b_and!342861)))

(declare-fun tb!257875 () Bool)

(declare-fun t!364052 () Bool)

(assert (=> (and b!4869164 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))) t!364052) tb!257875))

(declare-fun result!321032 () Bool)

(assert (= result!321032 result!321028))

(assert (=> d!1563625 t!364052))

(declare-fun b_and!342863 () Bool)

(assert (= b_and!342815 (and (=> t!364052 result!321032) b_and!342863)))

(declare-fun m!5869552 () Bool)

(assert (=> d!1563625 m!5869552))

(declare-fun m!5869554 () Bool)

(assert (=> d!1563625 m!5869554))

(assert (=> b!4868672 d!1563625))

(declare-fun d!1563631 () Bool)

(assert (=> d!1563631 (= (get!19228 lt!1994952) (v!49698 lt!1994952))))

(assert (=> b!4868672 d!1563631))

(declare-fun d!1563633 () Bool)

(declare-fun lt!1995416 () Int)

(assert (=> d!1563633 (>= lt!1995416 0)))

(declare-fun e!3044179 () Int)

(assert (=> d!1563633 (= lt!1995416 e!3044179)))

(declare-fun c!828283 () Bool)

(assert (=> d!1563633 (= c!828283 ((_ is Nil!55941) (t!363993 (list!17492 input!661))))))

(assert (=> d!1563633 (= (size!36875 (t!363993 (list!17492 input!661))) lt!1995416)))

(declare-fun b!4869559 () Bool)

(assert (=> b!4869559 (= e!3044179 0)))

(declare-fun b!4869560 () Bool)

(assert (=> b!4869560 (= e!3044179 (+ 1 (size!36875 (t!363993 (t!363993 (list!17492 input!661))))))))

(assert (= (and d!1563633 c!828283) b!4869559))

(assert (= (and d!1563633 (not c!828283)) b!4869560))

(declare-fun m!5869556 () Bool)

(assert (=> b!4869560 m!5869556))

(assert (=> b!4868972 d!1563633))

(declare-fun d!1563635 () Bool)

(assert (not d!1563635))

(assert (=> b!4868910 d!1563635))

(declare-fun d!1563637 () Bool)

(assert (not d!1563637))

(assert (=> b!4868910 d!1563637))

(declare-fun d!1563639 () Bool)

(assert (not d!1563639))

(assert (=> b!4868910 d!1563639))

(declare-fun d!1563641 () Bool)

(declare-fun res!2078729 () Bool)

(declare-fun e!3044180 () Bool)

(assert (=> d!1563641 (=> (not res!2078729) (not e!3044180))))

(assert (=> d!1563641 (= res!2078729 (= (csize!29376 (right!40963 (c!828058 input!661))) (+ (size!36876 (left!40633 (right!40963 (c!828058 input!661)))) (size!36876 (right!40963 (right!40963 (c!828058 input!661)))))))))

(assert (=> d!1563641 (= (inv!71858 (right!40963 (c!828058 input!661))) e!3044180)))

(declare-fun b!4869561 () Bool)

(declare-fun res!2078730 () Bool)

(assert (=> b!4869561 (=> (not res!2078730) (not e!3044180))))

(assert (=> b!4869561 (= res!2078730 (and (not (= (left!40633 (right!40963 (c!828058 input!661))) Empty!14573)) (not (= (right!40963 (right!40963 (c!828058 input!661))) Empty!14573))))))

(declare-fun b!4869562 () Bool)

(declare-fun res!2078731 () Bool)

(assert (=> b!4869562 (=> (not res!2078731) (not e!3044180))))

(assert (=> b!4869562 (= res!2078731 (= (cheight!14784 (right!40963 (c!828058 input!661))) (+ (max!0 (height!1929 (left!40633 (right!40963 (c!828058 input!661)))) (height!1929 (right!40963 (right!40963 (c!828058 input!661))))) 1)))))

(declare-fun b!4869563 () Bool)

(assert (=> b!4869563 (= e!3044180 (<= 0 (cheight!14784 (right!40963 (c!828058 input!661)))))))

(assert (= (and d!1563641 res!2078729) b!4869561))

(assert (= (and b!4869561 res!2078730) b!4869562))

(assert (= (and b!4869562 res!2078731) b!4869563))

(declare-fun m!5869558 () Bool)

(assert (=> d!1563641 m!5869558))

(declare-fun m!5869560 () Bool)

(assert (=> d!1563641 m!5869560))

(assert (=> b!4869562 m!5869250))

(assert (=> b!4869562 m!5869252))

(assert (=> b!4869562 m!5869250))

(assert (=> b!4869562 m!5869252))

(declare-fun m!5869562 () Bool)

(assert (=> b!4869562 m!5869562))

(assert (=> b!4869144 d!1563641))

(assert (=> b!4868685 d!1563521))

(declare-fun bs!1174534 () Bool)

(declare-fun d!1563643 () Bool)

(assert (= bs!1174534 (and d!1563643 d!1563295)))

(declare-fun lambda!243486 () Int)

(assert (=> bs!1174534 (= (and (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) (= lambda!243486 lambda!243455))))

(declare-fun bs!1174535 () Bool)

(assert (= bs!1174535 (and d!1563643 b!4869101)))

(assert (=> bs!1174535 (= (and (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) (= lambda!243486 lambda!243477))))

(declare-fun bs!1174536 () Bool)

(assert (= bs!1174536 (and d!1563643 b!4869326)))

(assert (=> bs!1174536 (= lambda!243486 lambda!243479)))

(assert (=> d!1563643 true))

(assert (=> d!1563643 (< (dynLambda!22460 order!25217 (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248))))) (dynLambda!22461 order!25219 lambda!243486))))

(assert (=> d!1563643 true))

(assert (=> d!1563643 (< (dynLambda!22462 order!25221 (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248))))) (dynLambda!22461 order!25219 lambda!243486))))

(assert (=> d!1563643 (= (semiInverseModEq!3546 (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248))))) (Forall!1675 lambda!243486))))

(declare-fun bs!1174537 () Bool)

(assert (= bs!1174537 d!1563643))

(declare-fun m!5869574 () Bool)

(assert (=> bs!1174537 m!5869574))

(assert (=> d!1563309 d!1563643))

(declare-fun bm!338191 () Bool)

(declare-fun call!338196 () Option!13781)

(assert (=> bm!338191 (= call!338196 (maxPrefixOneRule!3491 thiss!11777 (h!62391 (t!363995 rules!1248)) (list!17492 input!661)))))

(declare-fun b!4869575 () Bool)

(declare-fun res!2078735 () Bool)

(declare-fun e!3044190 () Bool)

(assert (=> b!4869575 (=> (not res!2078735) (not e!3044190))))

(declare-fun lt!1995421 () Option!13781)

(assert (=> b!4869575 (= res!2078735 (matchR!6492 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995421)))) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995421))))))))

(declare-fun b!4869576 () Bool)

(declare-fun res!2078739 () Bool)

(assert (=> b!4869576 (=> (not res!2078739) (not e!3044190))))

(assert (=> b!4869576 (= res!2078739 (= (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995421)))) (originalCharacters!8355 (_1!33199 (get!19228 lt!1995421)))))))

(declare-fun b!4869578 () Bool)

(declare-fun e!3044188 () Option!13781)

(assert (=> b!4869578 (= e!3044188 call!338196)))

(declare-fun b!4869579 () Bool)

(declare-fun res!2078737 () Bool)

(assert (=> b!4869579 (=> (not res!2078737) (not e!3044190))))

(assert (=> b!4869579 (= res!2078737 (= (++!12186 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995421)))) (_2!33199 (get!19228 lt!1995421))) (list!17492 input!661)))))

(declare-fun b!4869580 () Bool)

(declare-fun lt!1995424 () Option!13781)

(declare-fun lt!1995422 () Option!13781)

(assert (=> b!4869580 (= e!3044188 (ite (and ((_ is None!13780) lt!1995424) ((_ is None!13780) lt!1995422)) None!13780 (ite ((_ is None!13780) lt!1995422) lt!1995424 (ite ((_ is None!13780) lt!1995424) lt!1995422 (ite (>= (size!36869 (_1!33199 (v!49698 lt!1995424))) (size!36869 (_1!33199 (v!49698 lt!1995422)))) lt!1995424 lt!1995422)))))))

(assert (=> b!4869580 (= lt!1995424 call!338196)))

(assert (=> b!4869580 (= lt!1995422 (maxPrefix!4549 thiss!11777 (t!363995 (t!363995 rules!1248)) (list!17492 input!661)))))

(declare-fun b!4869581 () Bool)

(declare-fun e!3044189 () Bool)

(assert (=> b!4869581 (= e!3044189 e!3044190)))

(declare-fun res!2078740 () Bool)

(assert (=> b!4869581 (=> (not res!2078740) (not e!3044190))))

(assert (=> b!4869581 (= res!2078740 (isDefined!10849 lt!1995421))))

(declare-fun b!4869582 () Bool)

(declare-fun res!2078738 () Bool)

(assert (=> b!4869582 (=> (not res!2078738) (not e!3044190))))

(assert (=> b!4869582 (= res!2078738 (= (value!258054 (_1!33199 (get!19228 lt!1995421))) (apply!13502 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995421)))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995421)))))))))

(declare-fun b!4869583 () Bool)

(assert (=> b!4869583 (= e!3044190 (contains!19394 (t!363995 rules!1248) (rule!11164 (_1!33199 (get!19228 lt!1995421)))))))

(declare-fun b!4869577 () Bool)

(declare-fun res!2078736 () Bool)

(assert (=> b!4869577 (=> (not res!2078736) (not e!3044190))))

(assert (=> b!4869577 (= res!2078736 (< (size!36875 (_2!33199 (get!19228 lt!1995421))) (size!36875 (list!17492 input!661))))))

(declare-fun d!1563649 () Bool)

(assert (=> d!1563649 e!3044189))

(declare-fun res!2078734 () Bool)

(assert (=> d!1563649 (=> res!2078734 e!3044189)))

(assert (=> d!1563649 (= res!2078734 (isEmpty!29936 lt!1995421))))

(assert (=> d!1563649 (= lt!1995421 e!3044188)))

(declare-fun c!828286 () Bool)

(assert (=> d!1563649 (= c!828286 (and ((_ is Cons!55943) (t!363995 rules!1248)) ((_ is Nil!55943) (t!363995 (t!363995 rules!1248)))))))

(declare-fun lt!1995423 () Unit!145952)

(declare-fun lt!1995420 () Unit!145952)

(assert (=> d!1563649 (= lt!1995423 lt!1995420)))

(assert (=> d!1563649 (isPrefix!4766 (list!17492 input!661) (list!17492 input!661))))

(assert (=> d!1563649 (= lt!1995420 (lemmaIsPrefixRefl!3163 (list!17492 input!661) (list!17492 input!661)))))

(assert (=> d!1563649 (rulesValidInductive!3021 thiss!11777 (t!363995 rules!1248))))

(assert (=> d!1563649 (= (maxPrefix!4549 thiss!11777 (t!363995 rules!1248) (list!17492 input!661)) lt!1995421)))

(assert (= (and d!1563649 c!828286) b!4869578))

(assert (= (and d!1563649 (not c!828286)) b!4869580))

(assert (= (or b!4869578 b!4869580) bm!338191))

(assert (= (and d!1563649 (not res!2078734)) b!4869581))

(assert (= (and b!4869581 res!2078740) b!4869576))

(assert (= (and b!4869576 res!2078739) b!4869577))

(assert (= (and b!4869577 res!2078736) b!4869579))

(assert (= (and b!4869579 res!2078737) b!4869582))

(assert (= (and b!4869582 res!2078738) b!4869575))

(assert (= (and b!4869575 res!2078735) b!4869583))

(assert (=> b!4869580 m!5868142))

(declare-fun m!5869586 () Bool)

(assert (=> b!4869580 m!5869586))

(declare-fun m!5869588 () Bool)

(assert (=> b!4869583 m!5869588))

(declare-fun m!5869590 () Bool)

(assert (=> b!4869583 m!5869590))

(assert (=> b!4869579 m!5869588))

(declare-fun m!5869592 () Bool)

(assert (=> b!4869579 m!5869592))

(assert (=> b!4869579 m!5869592))

(declare-fun m!5869594 () Bool)

(assert (=> b!4869579 m!5869594))

(assert (=> b!4869579 m!5869594))

(declare-fun m!5869596 () Bool)

(assert (=> b!4869579 m!5869596))

(assert (=> b!4869575 m!5869588))

(assert (=> b!4869575 m!5869592))

(assert (=> b!4869575 m!5869592))

(assert (=> b!4869575 m!5869594))

(assert (=> b!4869575 m!5869594))

(declare-fun m!5869608 () Bool)

(assert (=> b!4869575 m!5869608))

(declare-fun m!5869612 () Bool)

(assert (=> b!4869581 m!5869612))

(assert (=> b!4869577 m!5869588))

(declare-fun m!5869616 () Bool)

(assert (=> b!4869577 m!5869616))

(assert (=> b!4869577 m!5868142))

(assert (=> b!4869577 m!5868170))

(assert (=> b!4869576 m!5869588))

(assert (=> b!4869576 m!5869592))

(assert (=> b!4869576 m!5869592))

(assert (=> b!4869576 m!5869594))

(assert (=> b!4869582 m!5869588))

(declare-fun m!5869624 () Bool)

(assert (=> b!4869582 m!5869624))

(assert (=> b!4869582 m!5869624))

(declare-fun m!5869628 () Bool)

(assert (=> b!4869582 m!5869628))

(declare-fun m!5869630 () Bool)

(assert (=> d!1563649 m!5869630))

(assert (=> d!1563649 m!5868142))

(assert (=> d!1563649 m!5868142))

(assert (=> d!1563649 m!5868382))

(assert (=> d!1563649 m!5868142))

(assert (=> d!1563649 m!5868142))

(assert (=> d!1563649 m!5868384))

(assert (=> d!1563649 m!5868550))

(assert (=> bm!338191 m!5868142))

(assert (=> bm!338191 m!5869204))

(assert (=> b!4868959 d!1563649))

(declare-fun d!1563655 () Bool)

(declare-fun lt!1995433 () Int)

(assert (=> d!1563655 (>= lt!1995433 0)))

(declare-fun e!3044198 () Int)

(assert (=> d!1563655 (= lt!1995433 e!3044198)))

(declare-fun c!828288 () Bool)

(assert (=> d!1563655 (= c!828288 ((_ is Nil!55942) (list!17496 (c!828060 (BalanceConc!28591 Empty!14574)))))))

(assert (=> d!1563655 (= (size!36877 (list!17496 (c!828060 (BalanceConc!28591 Empty!14574)))) lt!1995433)))

(declare-fun b!4869594 () Bool)

(assert (=> b!4869594 (= e!3044198 0)))

(declare-fun b!4869595 () Bool)

(assert (=> b!4869595 (= e!3044198 (+ 1 (size!36877 (t!363994 (list!17496 (c!828060 (BalanceConc!28591 Empty!14574)))))))))

(assert (= (and d!1563655 c!828288) b!4869594))

(assert (= (and d!1563655 (not c!828288)) b!4869595))

(declare-fun m!5869636 () Bool)

(assert (=> b!4869595 m!5869636))

(assert (=> d!1563315 d!1563655))

(assert (=> d!1563315 d!1563305))

(declare-fun d!1563661 () Bool)

(declare-fun lt!1995435 () Bool)

(assert (=> d!1563661 (= lt!1995435 (isEmpty!29943 (list!17495 (left!40633 (c!828058 input!661)))))))

(assert (=> d!1563661 (= lt!1995435 (= (size!36876 (left!40633 (c!828058 input!661))) 0))))

(assert (=> d!1563661 (= (isEmpty!29938 (left!40633 (c!828058 input!661))) lt!1995435)))

(declare-fun bs!1174539 () Bool)

(assert (= bs!1174539 d!1563661))

(assert (=> bs!1174539 m!5868932))

(assert (=> bs!1174539 m!5868932))

(declare-fun m!5869638 () Bool)

(assert (=> bs!1174539 m!5869638))

(assert (=> bs!1174539 m!5868812))

(assert (=> b!4869123 d!1563661))

(declare-fun d!1563663 () Bool)

(declare-fun lt!1995436 () Int)

(assert (=> d!1563663 (>= lt!1995436 0)))

(declare-fun e!3044201 () Int)

(assert (=> d!1563663 (= lt!1995436 e!3044201)))

(declare-fun c!828290 () Bool)

(assert (=> d!1563663 (= c!828290 ((_ is Nil!55941) (t!363993 (list!17492 totalInput!332))))))

(assert (=> d!1563663 (= (size!36875 (t!363993 (list!17492 totalInput!332))) lt!1995436)))

(declare-fun b!4869600 () Bool)

(assert (=> b!4869600 (= e!3044201 0)))

(declare-fun b!4869601 () Bool)

(assert (=> b!4869601 (= e!3044201 (+ 1 (size!36875 (t!363993 (t!363993 (list!17492 totalInput!332))))))))

(assert (= (and d!1563663 c!828290) b!4869600))

(assert (= (and d!1563663 (not c!828290)) b!4869601))

(declare-fun m!5869654 () Bool)

(assert (=> b!4869601 m!5869654))

(assert (=> b!4868882 d!1563663))

(declare-fun d!1563667 () Bool)

(declare-fun lt!1995437 () Int)

(assert (=> d!1563667 (>= lt!1995437 0)))

(declare-fun e!3044204 () Int)

(assert (=> d!1563667 (= lt!1995437 e!3044204)))

(declare-fun c!828293 () Bool)

(assert (=> d!1563667 (= c!828293 ((_ is Nil!55941) (list!17500 (xs!17881 (c!828058 input!661)))))))

(assert (=> d!1563667 (= (size!36875 (list!17500 (xs!17881 (c!828058 input!661)))) lt!1995437)))

(declare-fun b!4869606 () Bool)

(assert (=> b!4869606 (= e!3044204 0)))

(declare-fun b!4869607 () Bool)

(assert (=> b!4869607 (= e!3044204 (+ 1 (size!36875 (t!363993 (list!17500 (xs!17881 (c!828058 input!661)))))))))

(assert (= (and d!1563667 c!828293) b!4869606))

(assert (= (and d!1563667 (not c!828293)) b!4869607))

(declare-fun m!5869656 () Bool)

(assert (=> b!4869607 m!5869656))

(assert (=> b!4868932 d!1563667))

(declare-fun d!1563669 () Bool)

(assert (=> d!1563669 (= (list!17500 (xs!17881 (c!828058 input!661))) (innerList!14661 (xs!17881 (c!828058 input!661))))))

(assert (=> b!4868932 d!1563669))

(declare-fun d!1563673 () Bool)

(declare-fun res!2078751 () Bool)

(declare-fun e!3044207 () Bool)

(assert (=> d!1563673 (=> (not res!2078751) (not e!3044207))))

(assert (=> d!1563673 (= res!2078751 (= (csize!29376 (left!40633 (c!828058 input!661))) (+ (size!36876 (left!40633 (left!40633 (c!828058 input!661)))) (size!36876 (right!40963 (left!40633 (c!828058 input!661)))))))))

(assert (=> d!1563673 (= (inv!71858 (left!40633 (c!828058 input!661))) e!3044207)))

(declare-fun b!4869612 () Bool)

(declare-fun res!2078752 () Bool)

(assert (=> b!4869612 (=> (not res!2078752) (not e!3044207))))

(assert (=> b!4869612 (= res!2078752 (and (not (= (left!40633 (left!40633 (c!828058 input!661))) Empty!14573)) (not (= (right!40963 (left!40633 (c!828058 input!661))) Empty!14573))))))

(declare-fun b!4869613 () Bool)

(declare-fun res!2078753 () Bool)

(assert (=> b!4869613 (=> (not res!2078753) (not e!3044207))))

(assert (=> b!4869613 (= res!2078753 (= (cheight!14784 (left!40633 (c!828058 input!661))) (+ (max!0 (height!1929 (left!40633 (left!40633 (c!828058 input!661)))) (height!1929 (right!40963 (left!40633 (c!828058 input!661))))) 1)))))

(declare-fun b!4869614 () Bool)

(assert (=> b!4869614 (= e!3044207 (<= 0 (cheight!14784 (left!40633 (c!828058 input!661)))))))

(assert (= (and d!1563673 res!2078751) b!4869612))

(assert (= (and b!4869612 res!2078752) b!4869613))

(assert (= (and b!4869613 res!2078753) b!4869614))

(declare-fun m!5869672 () Bool)

(assert (=> d!1563673 m!5869672))

(declare-fun m!5869674 () Bool)

(assert (=> d!1563673 m!5869674))

(declare-fun m!5869676 () Bool)

(assert (=> b!4869613 m!5869676))

(declare-fun m!5869678 () Bool)

(assert (=> b!4869613 m!5869678))

(assert (=> b!4869613 m!5869676))

(assert (=> b!4869613 m!5869678))

(declare-fun m!5869680 () Bool)

(assert (=> b!4869613 m!5869680))

(assert (=> b!4869141 d!1563673))

(declare-fun d!1563677 () Bool)

(assert (=> d!1563677 (= (get!19227 lt!1995135) (v!49696 lt!1995135))))

(assert (=> b!4869104 d!1563677))

(declare-fun d!1563681 () Bool)

(assert (=> d!1563681 (= (get!19228 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (list!17492 input!661))) (v!49698 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (list!17492 input!661))))))

(assert (=> b!4869104 d!1563681))

(declare-fun b!4869672 () Bool)

(declare-fun e!3044245 () Option!13781)

(assert (=> b!4869672 (= e!3044245 None!13780)))

(declare-fun b!4869673 () Bool)

(declare-fun res!2078790 () Bool)

(declare-fun e!3044244 () Bool)

(assert (=> b!4869673 (=> (not res!2078790) (not e!3044244))))

(declare-fun lt!1995471 () Option!13781)

(assert (=> b!4869673 (= res!2078790 (< (size!36875 (_2!33199 (get!19228 lt!1995471))) (size!36875 (list!17492 input!661))))))

(declare-fun b!4869674 () Bool)

(declare-fun lt!1995467 () tuple2!59798)

(assert (=> b!4869674 (= e!3044245 (Some!13780 (tuple2!59793 (Token!14649 (apply!13502 (transformation!8032 (h!62391 rules!1248)) (seqFromList!5898 (_1!33202 lt!1995467))) (h!62391 rules!1248) (size!36870 (seqFromList!5898 (_1!33202 lt!1995467))) (_1!33202 lt!1995467)) (_2!33202 lt!1995467))))))

(declare-fun lt!1995470 () Unit!145952)

(assert (=> b!4869674 (= lt!1995470 (longestMatchIsAcceptedByMatchOrIsEmpty!1684 (regex!8032 (h!62391 rules!1248)) (list!17492 input!661)))))

(declare-fun res!2078788 () Bool)

(assert (=> b!4869674 (= res!2078788 (isEmpty!29943 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) (list!17492 input!661) (list!17492 input!661) (size!36875 (list!17492 input!661))))))))

(declare-fun e!3044243 () Bool)

(assert (=> b!4869674 (=> res!2078788 e!3044243)))

(assert (=> b!4869674 e!3044243))

(declare-fun lt!1995469 () Unit!145952)

(assert (=> b!4869674 (= lt!1995469 lt!1995470)))

(declare-fun lt!1995468 () Unit!145952)

(declare-fun lemmaSemiInverse!2552 (TokenValueInjection!15992 BalanceConc!28588) Unit!145952)

(assert (=> b!4869674 (= lt!1995468 (lemmaSemiInverse!2552 (transformation!8032 (h!62391 rules!1248)) (seqFromList!5898 (_1!33202 lt!1995467))))))

(declare-fun b!4869675 () Bool)

(declare-fun e!3044246 () Bool)

(assert (=> b!4869675 (= e!3044246 e!3044244)))

(declare-fun res!2078789 () Bool)

(assert (=> b!4869675 (=> (not res!2078789) (not e!3044244))))

(assert (=> b!4869675 (= res!2078789 (matchR!6492 (regex!8032 (h!62391 rules!1248)) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995471))))))))

(declare-fun b!4869676 () Bool)

(assert (=> b!4869676 (= e!3044243 (matchR!6492 (regex!8032 (h!62391 rules!1248)) (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) (list!17492 input!661) (list!17492 input!661) (size!36875 (list!17492 input!661))))))))

(declare-fun b!4869677 () Bool)

(declare-fun res!2078793 () Bool)

(assert (=> b!4869677 (=> (not res!2078793) (not e!3044244))))

(assert (=> b!4869677 (= res!2078793 (= (value!258054 (_1!33199 (get!19228 lt!1995471))) (apply!13502 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995471)))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995471)))))))))

(declare-fun b!4869678 () Bool)

(assert (=> b!4869678 (= e!3044244 (= (size!36869 (_1!33199 (get!19228 lt!1995471))) (size!36875 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995471))))))))

(declare-fun d!1563683 () Bool)

(assert (=> d!1563683 e!3044246))

(declare-fun res!2078791 () Bool)

(assert (=> d!1563683 (=> res!2078791 e!3044246)))

(assert (=> d!1563683 (= res!2078791 (isEmpty!29936 lt!1995471))))

(assert (=> d!1563683 (= lt!1995471 e!3044245)))

(declare-fun c!828306 () Bool)

(assert (=> d!1563683 (= c!828306 (isEmpty!29943 (_1!33202 lt!1995467)))))

(declare-fun findLongestMatch!1635 (Regex!13107 List!56065) tuple2!59798)

(assert (=> d!1563683 (= lt!1995467 (findLongestMatch!1635 (regex!8032 (h!62391 rules!1248)) (list!17492 input!661)))))

(assert (=> d!1563683 (ruleValid!3629 thiss!11777 (h!62391 rules!1248))))

(assert (=> d!1563683 (= (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (list!17492 input!661)) lt!1995471)))

(declare-fun b!4869679 () Bool)

(declare-fun res!2078792 () Bool)

(assert (=> b!4869679 (=> (not res!2078792) (not e!3044244))))

(assert (=> b!4869679 (= res!2078792 (= (++!12186 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995471)))) (_2!33199 (get!19228 lt!1995471))) (list!17492 input!661)))))

(declare-fun b!4869680 () Bool)

(declare-fun res!2078794 () Bool)

(assert (=> b!4869680 (=> (not res!2078794) (not e!3044244))))

(assert (=> b!4869680 (= res!2078794 (= (rule!11164 (_1!33199 (get!19228 lt!1995471))) (h!62391 rules!1248)))))

(assert (= (and d!1563683 c!828306) b!4869672))

(assert (= (and d!1563683 (not c!828306)) b!4869674))

(assert (= (and b!4869674 (not res!2078788)) b!4869676))

(assert (= (and d!1563683 (not res!2078791)) b!4869675))

(assert (= (and b!4869675 res!2078789) b!4869679))

(assert (= (and b!4869679 res!2078792) b!4869673))

(assert (= (and b!4869673 res!2078790) b!4869680))

(assert (= (and b!4869680 res!2078794) b!4869677))

(assert (= (and b!4869677 res!2078793) b!4869678))

(assert (=> b!4869674 m!5868142))

(assert (=> b!4869674 m!5868170))

(declare-fun m!5869778 () Bool)

(assert (=> b!4869674 m!5869778))

(declare-fun m!5869780 () Bool)

(assert (=> b!4869674 m!5869780))

(assert (=> b!4869674 m!5869778))

(declare-fun m!5869782 () Bool)

(assert (=> b!4869674 m!5869782))

(declare-fun m!5869784 () Bool)

(assert (=> b!4869674 m!5869784))

(assert (=> b!4869674 m!5868860))

(assert (=> b!4869674 m!5868142))

(declare-fun m!5869786 () Bool)

(assert (=> b!4869674 m!5869786))

(assert (=> b!4869674 m!5869778))

(declare-fun m!5869788 () Bool)

(assert (=> b!4869674 m!5869788))

(assert (=> b!4869674 m!5868860))

(assert (=> b!4869674 m!5868142))

(assert (=> b!4869674 m!5868142))

(assert (=> b!4869674 m!5868170))

(declare-fun m!5869790 () Bool)

(assert (=> b!4869674 m!5869790))

(assert (=> b!4869674 m!5869778))

(declare-fun m!5869792 () Bool)

(assert (=> b!4869679 m!5869792))

(declare-fun m!5869794 () Bool)

(assert (=> b!4869679 m!5869794))

(assert (=> b!4869679 m!5869794))

(declare-fun m!5869796 () Bool)

(assert (=> b!4869679 m!5869796))

(assert (=> b!4869679 m!5869796))

(declare-fun m!5869798 () Bool)

(assert (=> b!4869679 m!5869798))

(assert (=> b!4869680 m!5869792))

(assert (=> b!4869676 m!5868860))

(assert (=> b!4869676 m!5868142))

(assert (=> b!4869676 m!5868170))

(assert (=> b!4869676 m!5868860))

(assert (=> b!4869676 m!5868142))

(assert (=> b!4869676 m!5868142))

(assert (=> b!4869676 m!5868170))

(assert (=> b!4869676 m!5869790))

(declare-fun m!5869800 () Bool)

(assert (=> b!4869676 m!5869800))

(assert (=> b!4869675 m!5869792))

(assert (=> b!4869675 m!5869794))

(assert (=> b!4869675 m!5869794))

(assert (=> b!4869675 m!5869796))

(assert (=> b!4869675 m!5869796))

(declare-fun m!5869802 () Bool)

(assert (=> b!4869675 m!5869802))

(assert (=> b!4869673 m!5869792))

(declare-fun m!5869804 () Bool)

(assert (=> b!4869673 m!5869804))

(assert (=> b!4869673 m!5868142))

(assert (=> b!4869673 m!5868170))

(assert (=> b!4869677 m!5869792))

(declare-fun m!5869806 () Bool)

(assert (=> b!4869677 m!5869806))

(assert (=> b!4869677 m!5869806))

(declare-fun m!5869808 () Bool)

(assert (=> b!4869677 m!5869808))

(declare-fun m!5869810 () Bool)

(assert (=> d!1563683 m!5869810))

(declare-fun m!5869812 () Bool)

(assert (=> d!1563683 m!5869812))

(assert (=> d!1563683 m!5868142))

(declare-fun m!5869814 () Bool)

(assert (=> d!1563683 m!5869814))

(assert (=> d!1563683 m!5868548))

(assert (=> b!4869678 m!5869792))

(declare-fun m!5869816 () Bool)

(assert (=> b!4869678 m!5869816))

(assert (=> b!4869104 d!1563683))

(assert (=> b!4869104 d!1563163))

(declare-fun b!4869710 () Bool)

(declare-fun e!3044262 () Bool)

(declare-fun lt!1995474 () Bool)

(declare-fun call!338201 () Bool)

(assert (=> b!4869710 (= e!3044262 (= lt!1995474 call!338201))))

(declare-fun b!4869711 () Bool)

(declare-fun res!2078813 () Bool)

(declare-fun e!3044263 () Bool)

(assert (=> b!4869711 (=> (not res!2078813) (not e!3044263))))

(assert (=> b!4869711 (= res!2078813 (isEmpty!29943 (tail!9559 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077)))))))))

(declare-fun bm!338196 () Bool)

(assert (=> bm!338196 (= call!338201 (isEmpty!29943 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))))))

(declare-fun b!4869712 () Bool)

(declare-fun res!2078811 () Bool)

(declare-fun e!3044261 () Bool)

(assert (=> b!4869712 (=> res!2078811 e!3044261)))

(assert (=> b!4869712 (= res!2078811 (not ((_ is ElementMatch!13107) (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))))))

(declare-fun e!3044264 () Bool)

(assert (=> b!4869712 (= e!3044264 e!3044261)))

(declare-fun b!4869713 () Bool)

(declare-fun e!3044267 () Bool)

(declare-fun e!3044265 () Bool)

(assert (=> b!4869713 (= e!3044267 e!3044265)))

(declare-fun res!2078818 () Bool)

(assert (=> b!4869713 (=> res!2078818 e!3044265)))

(assert (=> b!4869713 (= res!2078818 call!338201)))

(declare-fun b!4869714 () Bool)

(assert (=> b!4869714 (= e!3044262 e!3044264)))

(declare-fun c!828315 () Bool)

(assert (=> b!4869714 (= c!828315 ((_ is EmptyLang!13107) (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077))))))))

(declare-fun b!4869715 () Bool)

(assert (=> b!4869715 (= e!3044261 e!3044267)))

(declare-fun res!2078815 () Bool)

(assert (=> b!4869715 (=> (not res!2078815) (not e!3044267))))

(assert (=> b!4869715 (= res!2078815 (not lt!1995474))))

(declare-fun b!4869716 () Bool)

(declare-fun res!2078817 () Bool)

(assert (=> b!4869716 (=> res!2078817 e!3044261)))

(assert (=> b!4869716 (= res!2078817 e!3044263)))

(declare-fun res!2078816 () Bool)

(assert (=> b!4869716 (=> (not res!2078816) (not e!3044263))))

(assert (=> b!4869716 (= res!2078816 lt!1995474)))

(declare-fun b!4869717 () Bool)

(assert (=> b!4869717 (= e!3044264 (not lt!1995474))))

(declare-fun b!4869718 () Bool)

(assert (=> b!4869718 (= e!3044263 (= (head!10413 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))) (c!828059 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))))))

(declare-fun d!1563713 () Bool)

(assert (=> d!1563713 e!3044262))

(declare-fun c!828313 () Bool)

(assert (=> d!1563713 (= c!828313 ((_ is EmptyExpr!13107) (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077))))))))

(declare-fun e!3044266 () Bool)

(assert (=> d!1563713 (= lt!1995474 e!3044266)))

(declare-fun c!828314 () Bool)

(assert (=> d!1563713 (= c!828314 (isEmpty!29943 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))))))

(assert (=> d!1563713 (validRegex!5867 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))))

(assert (=> d!1563713 (= (matchR!6492 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))) lt!1995474)))

(declare-fun b!4869709 () Bool)

(declare-fun res!2078814 () Bool)

(assert (=> b!4869709 (=> res!2078814 e!3044265)))

(assert (=> b!4869709 (= res!2078814 (not (isEmpty!29943 (tail!9559 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))))))))

(declare-fun b!4869719 () Bool)

(declare-fun res!2078812 () Bool)

(assert (=> b!4869719 (=> (not res!2078812) (not e!3044263))))

(assert (=> b!4869719 (= res!2078812 (not call!338201))))

(declare-fun b!4869720 () Bool)

(assert (=> b!4869720 (= e!3044266 (matchR!6492 (derivativeStep!3865 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))) (head!10413 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077)))))) (tail!9559 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077)))))))))

(declare-fun b!4869721 () Bool)

(assert (=> b!4869721 (= e!3044266 (nullable!4541 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077))))))))

(declare-fun b!4869722 () Bool)

(assert (=> b!4869722 (= e!3044265 (not (= (head!10413 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))) (c!828059 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077))))))))))

(assert (= (and d!1563713 c!828314) b!4869721))

(assert (= (and d!1563713 (not c!828314)) b!4869720))

(assert (= (and d!1563713 c!828313) b!4869710))

(assert (= (and d!1563713 (not c!828313)) b!4869714))

(assert (= (and b!4869714 c!828315) b!4869717))

(assert (= (and b!4869714 (not c!828315)) b!4869712))

(assert (= (and b!4869712 (not res!2078811)) b!4869716))

(assert (= (and b!4869716 res!2078816) b!4869719))

(assert (= (and b!4869719 res!2078812) b!4869711))

(assert (= (and b!4869711 res!2078813) b!4869718))

(assert (= (and b!4869716 (not res!2078817)) b!4869715))

(assert (= (and b!4869715 res!2078815) b!4869713))

(assert (= (and b!4869713 (not res!2078818)) b!4869709))

(assert (= (and b!4869709 (not res!2078814)) b!4869722))

(assert (= (or b!4869710 b!4869719 b!4869713) bm!338196))

(assert (=> d!1563713 m!5868712))

(declare-fun m!5869818 () Bool)

(assert (=> d!1563713 m!5869818))

(declare-fun m!5869820 () Bool)

(assert (=> d!1563713 m!5869820))

(assert (=> b!4869718 m!5868712))

(declare-fun m!5869822 () Bool)

(assert (=> b!4869718 m!5869822))

(assert (=> b!4869720 m!5868712))

(assert (=> b!4869720 m!5869822))

(assert (=> b!4869720 m!5869822))

(declare-fun m!5869824 () Bool)

(assert (=> b!4869720 m!5869824))

(assert (=> b!4869720 m!5868712))

(declare-fun m!5869826 () Bool)

(assert (=> b!4869720 m!5869826))

(assert (=> b!4869720 m!5869824))

(assert (=> b!4869720 m!5869826))

(declare-fun m!5869828 () Bool)

(assert (=> b!4869720 m!5869828))

(assert (=> bm!338196 m!5868712))

(assert (=> bm!338196 m!5869818))

(assert (=> b!4869709 m!5868712))

(assert (=> b!4869709 m!5869826))

(assert (=> b!4869709 m!5869826))

(declare-fun m!5869830 () Bool)

(assert (=> b!4869709 m!5869830))

(declare-fun m!5869832 () Bool)

(assert (=> b!4869721 m!5869832))

(assert (=> b!4869711 m!5868712))

(assert (=> b!4869711 m!5869826))

(assert (=> b!4869711 m!5869826))

(assert (=> b!4869711 m!5869830))

(assert (=> b!4869722 m!5868712))

(assert (=> b!4869722 m!5869822))

(assert (=> b!4868954 d!1563713))

(assert (=> b!4868954 d!1563493))

(assert (=> b!4868954 d!1563471))

(assert (=> b!4868954 d!1563473))

(declare-fun bs!1174549 () Bool)

(declare-fun d!1563715 () Bool)

(assert (= bs!1174549 (and d!1563715 d!1563233)))

(declare-fun lambda!243489 () Int)

(assert (=> bs!1174549 (= lambda!243489 lambda!243452)))

(declare-fun bs!1174550 () Bool)

(assert (= bs!1174550 (and d!1563715 d!1563303)))

(assert (=> bs!1174550 (= lambda!243489 lambda!243463)))

(assert (=> d!1563715 true))

(declare-fun lt!1995475 () Bool)

(assert (=> d!1563715 (= lt!1995475 (forall!13050 (t!363995 rules!1248) lambda!243489))))

(declare-fun e!3044268 () Bool)

(assert (=> d!1563715 (= lt!1995475 e!3044268)))

(declare-fun res!2078820 () Bool)

(assert (=> d!1563715 (=> res!2078820 e!3044268)))

(assert (=> d!1563715 (= res!2078820 (not ((_ is Cons!55943) (t!363995 rules!1248))))))

(assert (=> d!1563715 (= (rulesValidInductive!3021 thiss!11777 (t!363995 rules!1248)) lt!1995475)))

(declare-fun b!4869723 () Bool)

(declare-fun e!3044269 () Bool)

(assert (=> b!4869723 (= e!3044268 e!3044269)))

(declare-fun res!2078819 () Bool)

(assert (=> b!4869723 (=> (not res!2078819) (not e!3044269))))

(assert (=> b!4869723 (= res!2078819 (ruleValid!3629 thiss!11777 (h!62391 (t!363995 rules!1248))))))

(declare-fun b!4869724 () Bool)

(assert (=> b!4869724 (= e!3044269 (rulesValidInductive!3021 thiss!11777 (t!363995 (t!363995 rules!1248))))))

(assert (= (and d!1563715 (not res!2078820)) b!4869723))

(assert (= (and b!4869723 res!2078819) b!4869724))

(declare-fun m!5869834 () Bool)

(assert (=> d!1563715 m!5869834))

(assert (=> b!4869723 m!5869208))

(declare-fun m!5869836 () Bool)

(assert (=> b!4869724 m!5869836))

(assert (=> b!4868828 d!1563715))

(declare-fun b!4869733 () Bool)

(declare-fun e!3044275 () List!56065)

(assert (=> b!4869733 (= e!3044275 (_2!33199 (get!19228 lt!1995077)))))

(declare-fun b!4869734 () Bool)

(assert (=> b!4869734 (= e!3044275 (Cons!55941 (h!62389 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))) (++!12186 (t!363993 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))) (_2!33199 (get!19228 lt!1995077)))))))

(declare-fun d!1563717 () Bool)

(declare-fun e!3044274 () Bool)

(assert (=> d!1563717 e!3044274))

(declare-fun res!2078825 () Bool)

(assert (=> d!1563717 (=> (not res!2078825) (not e!3044274))))

(declare-fun lt!1995478 () List!56065)

(assert (=> d!1563717 (= res!2078825 (= (content!9976 lt!1995478) ((_ map or) (content!9976 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))) (content!9976 (_2!33199 (get!19228 lt!1995077))))))))

(assert (=> d!1563717 (= lt!1995478 e!3044275)))

(declare-fun c!828318 () Bool)

(assert (=> d!1563717 (= c!828318 ((_ is Nil!55941) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))))))

(assert (=> d!1563717 (= (++!12186 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077)))) (_2!33199 (get!19228 lt!1995077))) lt!1995478)))

(declare-fun b!4869735 () Bool)

(declare-fun res!2078826 () Bool)

(assert (=> b!4869735 (=> (not res!2078826) (not e!3044274))))

(assert (=> b!4869735 (= res!2078826 (= (size!36875 lt!1995478) (+ (size!36875 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077))))) (size!36875 (_2!33199 (get!19228 lt!1995077))))))))

(declare-fun b!4869736 () Bool)

(assert (=> b!4869736 (= e!3044274 (or (not (= (_2!33199 (get!19228 lt!1995077)) Nil!55941)) (= lt!1995478 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995077)))))))))

(assert (= (and d!1563717 c!828318) b!4869733))

(assert (= (and d!1563717 (not c!828318)) b!4869734))

(assert (= (and d!1563717 res!2078825) b!4869735))

(assert (= (and b!4869735 res!2078826) b!4869736))

(declare-fun m!5869838 () Bool)

(assert (=> b!4869734 m!5869838))

(declare-fun m!5869840 () Bool)

(assert (=> d!1563717 m!5869840))

(assert (=> d!1563717 m!5868712))

(declare-fun m!5869842 () Bool)

(assert (=> d!1563717 m!5869842))

(declare-fun m!5869844 () Bool)

(assert (=> d!1563717 m!5869844))

(declare-fun m!5869846 () Bool)

(assert (=> b!4869735 m!5869846))

(assert (=> b!4869735 m!5868712))

(declare-fun m!5869848 () Bool)

(assert (=> b!4869735 m!5869848))

(assert (=> b!4869735 m!5868720))

(assert (=> b!4868958 d!1563717))

(assert (=> b!4868958 d!1563471))

(assert (=> b!4868958 d!1563473))

(assert (=> b!4868958 d!1563493))

(declare-fun d!1563719 () Bool)

(assert (=> d!1563719 (= (height!1929 (left!40633 (c!828058 input!661))) (ite ((_ is Empty!14573) (left!40633 (c!828058 input!661))) 0 (ite ((_ is Leaf!24300) (left!40633 (c!828058 input!661))) 1 (cheight!14784 (left!40633 (c!828058 input!661))))))))

(assert (=> b!4869118 d!1563719))

(declare-fun d!1563721 () Bool)

(assert (=> d!1563721 (= (height!1929 (right!40963 (c!828058 input!661))) (ite ((_ is Empty!14573) (right!40963 (c!828058 input!661))) 0 (ite ((_ is Leaf!24300) (right!40963 (c!828058 input!661))) 1 (cheight!14784 (right!40963 (c!828058 input!661))))))))

(assert (=> b!4869118 d!1563721))

(assert (=> d!1563377 d!1563683))

(declare-fun d!1563723 () Bool)

(assert (=> d!1563723 (= (isDefined!10848 lt!1995135) (not (isEmpty!29937 lt!1995135)))))

(declare-fun bs!1174551 () Bool)

(assert (= bs!1174551 d!1563723))

(declare-fun m!5869850 () Bool)

(assert (=> bs!1174551 m!5869850))

(assert (=> d!1563377 d!1563723))

(assert (=> d!1563377 d!1563163))

(declare-fun d!1563725 () Bool)

(declare-fun lt!1995481 () tuple2!59800)

(assert (=> d!1563725 (= (tuple2!59799 (list!17492 (_1!33203 lt!1995481)) (list!17492 (_2!33203 lt!1995481))) (findLongestMatch!1635 (regex!8032 (h!62391 rules!1248)) (list!17492 input!661)))))

(declare-fun choose!35605 (Regex!13107 BalanceConc!28588 BalanceConc!28588) tuple2!59800)

(assert (=> d!1563725 (= lt!1995481 (choose!35605 (regex!8032 (h!62391 rules!1248)) input!661 totalInput!332))))

(assert (=> d!1563725 (validRegex!5867 (regex!8032 (h!62391 rules!1248)))))

(assert (=> d!1563725 (= (findLongestMatchWithZipperSequenceV2!134 (regex!8032 (h!62391 rules!1248)) input!661 totalInput!332) lt!1995481)))

(declare-fun bs!1174552 () Bool)

(assert (= bs!1174552 d!1563725))

(declare-fun m!5869852 () Bool)

(assert (=> bs!1174552 m!5869852))

(declare-fun m!5869854 () Bool)

(assert (=> bs!1174552 m!5869854))

(declare-fun m!5869856 () Bool)

(assert (=> bs!1174552 m!5869856))

(assert (=> bs!1174552 m!5868142))

(assert (=> bs!1174552 m!5869316))

(assert (=> bs!1174552 m!5868142))

(assert (=> bs!1174552 m!5869814))

(assert (=> d!1563377 d!1563725))

(declare-fun d!1563727 () Bool)

(assert (=> d!1563727 (= (isDefined!10849 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (list!17492 input!661))) (not (isEmpty!29936 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (list!17492 input!661)))))))

(declare-fun bs!1174553 () Bool)

(assert (= bs!1174553 d!1563727))

(assert (=> bs!1174553 m!5868728))

(declare-fun m!5869858 () Bool)

(assert (=> bs!1174553 m!5869858))

(assert (=> d!1563377 d!1563727))

(declare-fun d!1563729 () Bool)

(declare-fun res!2078831 () Bool)

(declare-fun e!3044278 () Bool)

(assert (=> d!1563729 (=> (not res!2078831) (not e!3044278))))

(assert (=> d!1563729 (= res!2078831 (validRegex!5867 (regex!8032 (h!62391 rules!1248))))))

(assert (=> d!1563729 (= (ruleValid!3629 thiss!11777 (h!62391 rules!1248)) e!3044278)))

(declare-fun b!4869741 () Bool)

(declare-fun res!2078832 () Bool)

(assert (=> b!4869741 (=> (not res!2078832) (not e!3044278))))

(assert (=> b!4869741 (= res!2078832 (not (nullable!4541 (regex!8032 (h!62391 rules!1248)))))))

(declare-fun b!4869742 () Bool)

(assert (=> b!4869742 (= e!3044278 (not (= (tag!8896 (h!62391 rules!1248)) (String!63129 ""))))))

(assert (= (and d!1563729 res!2078831) b!4869741))

(assert (= (and b!4869741 res!2078832) b!4869742))

(assert (=> d!1563729 m!5869316))

(assert (=> b!4869741 m!5869398))

(assert (=> d!1563377 d!1563729))

(declare-fun d!1563731 () Bool)

(declare-fun lt!1995496 () Bool)

(assert (=> d!1563731 (= lt!1995496 (isEmpty!29943 (list!17492 (_1!33203 lt!1995134))))))

(assert (=> d!1563731 (= lt!1995496 (isEmpty!29938 (c!828058 (_1!33203 lt!1995134))))))

(assert (=> d!1563731 (= (isEmpty!29942 (_1!33203 lt!1995134)) lt!1995496)))

(declare-fun bs!1174554 () Bool)

(assert (= bs!1174554 d!1563731))

(assert (=> bs!1174554 m!5868880))

(assert (=> bs!1174554 m!5868880))

(declare-fun m!5869860 () Bool)

(assert (=> bs!1174554 m!5869860))

(declare-fun m!5869862 () Bool)

(assert (=> bs!1174554 m!5869862))

(assert (=> d!1563377 d!1563731))

(declare-fun d!1563733 () Bool)

(declare-fun lt!1995499 () Bool)

(declare-fun content!9978 (List!56069) (InoxSet String!63128))

(assert (=> d!1563733 (= lt!1995499 (select (content!9978 Nil!55945) (tag!8896 (h!62391 rules!1248))))))

(declare-fun e!3044287 () Bool)

(assert (=> d!1563733 (= lt!1995499 e!3044287)))

(declare-fun res!2078839 () Bool)

(assert (=> d!1563733 (=> (not res!2078839) (not e!3044287))))

(assert (=> d!1563733 (= res!2078839 ((_ is Cons!55945) Nil!55945))))

(assert (=> d!1563733 (= (contains!19396 Nil!55945 (tag!8896 (h!62391 rules!1248))) lt!1995499)))

(declare-fun b!4869753 () Bool)

(declare-fun e!3044288 () Bool)

(assert (=> b!4869753 (= e!3044287 e!3044288)))

(declare-fun res!2078840 () Bool)

(assert (=> b!4869753 (=> res!2078840 e!3044288)))

(assert (=> b!4869753 (= res!2078840 (= (h!62393 Nil!55945) (tag!8896 (h!62391 rules!1248))))))

(declare-fun b!4869754 () Bool)

(assert (=> b!4869754 (= e!3044288 (contains!19396 (t!363997 Nil!55945) (tag!8896 (h!62391 rules!1248))))))

(assert (= (and d!1563733 res!2078839) b!4869753))

(assert (= (and b!4869753 (not res!2078840)) b!4869754))

(declare-fun m!5869864 () Bool)

(assert (=> d!1563733 m!5869864))

(declare-fun m!5869866 () Bool)

(assert (=> d!1563733 m!5869866))

(declare-fun m!5869868 () Bool)

(assert (=> b!4869754 m!5869868))

(assert (=> b!4869066 d!1563733))

(declare-fun d!1563735 () Bool)

(assert (=> d!1563735 (= (isEmpty!29933 (_1!33196 lt!1995141)) ((_ is Nil!55942) (_1!33196 lt!1995141)))))

(assert (=> b!4869117 d!1563735))

(declare-fun d!1563737 () Bool)

(assert (=> d!1563737 (= (height!1929 (left!40633 (c!828058 totalInput!332))) (ite ((_ is Empty!14573) (left!40633 (c!828058 totalInput!332))) 0 (ite ((_ is Leaf!24300) (left!40633 (c!828058 totalInput!332))) 1 (cheight!14784 (left!40633 (c!828058 totalInput!332))))))))

(assert (=> b!4868874 d!1563737))

(declare-fun d!1563739 () Bool)

(assert (=> d!1563739 (= (height!1929 (right!40963 (c!828058 totalInput!332))) (ite ((_ is Empty!14573) (right!40963 (c!828058 totalInput!332))) 0 (ite ((_ is Leaf!24300) (right!40963 (c!828058 totalInput!332))) 1 (cheight!14784 (right!40963 (c!828058 totalInput!332))))))))

(assert (=> b!4868874 d!1563739))

(assert (=> b!4869080 d!1563517))

(assert (=> b!4869080 d!1563521))

(declare-fun d!1563741 () Bool)

(assert (=> d!1563741 (= (list!17492 (_2!33197 (get!19227 lt!1995106))) (list!17495 (c!828058 (_2!33197 (get!19227 lt!1995106)))))))

(declare-fun bs!1174555 () Bool)

(assert (= bs!1174555 d!1563741))

(declare-fun m!5869870 () Bool)

(assert (=> bs!1174555 m!5869870))

(assert (=> b!4869080 d!1563741))

(assert (=> b!4869080 d!1563163))

(assert (=> b!4869080 d!1563519))

(declare-fun d!1563743 () Bool)

(declare-fun lt!1995500 () Int)

(assert (=> d!1563743 (>= lt!1995500 0)))

(declare-fun e!3044289 () Int)

(assert (=> d!1563743 (= lt!1995500 e!3044289)))

(declare-fun c!828321 () Bool)

(assert (=> d!1563743 (= c!828321 ((_ is Nil!55941) lt!1994921))))

(assert (=> d!1563743 (= (size!36875 lt!1994921) lt!1995500)))

(declare-fun b!4869755 () Bool)

(assert (=> b!4869755 (= e!3044289 0)))

(declare-fun b!4869756 () Bool)

(assert (=> b!4869756 (= e!3044289 (+ 1 (size!36875 (t!363993 lt!1994921))))))

(assert (= (and d!1563743 c!828321) b!4869755))

(assert (= (and d!1563743 (not c!828321)) b!4869756))

(declare-fun m!5869872 () Bool)

(assert (=> b!4869756 m!5869872))

(assert (=> b!4868842 d!1563743))

(declare-fun d!1563745 () Bool)

(declare-fun lt!1995501 () Int)

(assert (=> d!1563745 (>= lt!1995501 0)))

(declare-fun e!3044290 () Int)

(assert (=> d!1563745 (= lt!1995501 e!3044290)))

(declare-fun c!828322 () Bool)

(assert (=> d!1563745 (= c!828322 ((_ is Nil!55941) lt!1994927))))

(assert (=> d!1563745 (= (size!36875 lt!1994927) lt!1995501)))

(declare-fun b!4869757 () Bool)

(assert (=> b!4869757 (= e!3044290 0)))

(declare-fun b!4869758 () Bool)

(assert (=> b!4869758 (= e!3044290 (+ 1 (size!36875 (t!363993 lt!1994927))))))

(assert (= (and d!1563745 c!828322) b!4869757))

(assert (= (and d!1563745 (not c!828322)) b!4869758))

(declare-fun m!5869874 () Bool)

(assert (=> b!4869758 m!5869874))

(assert (=> b!4868842 d!1563745))

(declare-fun d!1563747 () Bool)

(declare-fun lt!1995502 () Int)

(assert (=> d!1563747 (= lt!1995502 (size!36875 (list!17495 (left!40633 (c!828058 totalInput!332)))))))

(assert (=> d!1563747 (= lt!1995502 (ite ((_ is Empty!14573) (left!40633 (c!828058 totalInput!332))) 0 (ite ((_ is Leaf!24300) (left!40633 (c!828058 totalInput!332))) (csize!29377 (left!40633 (c!828058 totalInput!332))) (csize!29376 (left!40633 (c!828058 totalInput!332))))))))

(assert (=> d!1563747 (= (size!36876 (left!40633 (c!828058 totalInput!332))) lt!1995502)))

(declare-fun bs!1174556 () Bool)

(assert (= bs!1174556 d!1563747))

(assert (=> bs!1174556 m!5868910))

(assert (=> bs!1174556 m!5868910))

(declare-fun m!5869876 () Bool)

(assert (=> bs!1174556 m!5869876))

(assert (=> d!1563387 d!1563747))

(declare-fun d!1563749 () Bool)

(declare-fun lt!1995509 () Int)

(assert (=> d!1563749 (= lt!1995509 (size!36875 (list!17495 (right!40963 (c!828058 totalInput!332)))))))

(assert (=> d!1563749 (= lt!1995509 (ite ((_ is Empty!14573) (right!40963 (c!828058 totalInput!332))) 0 (ite ((_ is Leaf!24300) (right!40963 (c!828058 totalInput!332))) (csize!29377 (right!40963 (c!828058 totalInput!332))) (csize!29376 (right!40963 (c!828058 totalInput!332))))))))

(assert (=> d!1563749 (= (size!36876 (right!40963 (c!828058 totalInput!332))) lt!1995509)))

(declare-fun bs!1174557 () Bool)

(assert (= bs!1174557 d!1563749))

(assert (=> bs!1174557 m!5868912))

(assert (=> bs!1174557 m!5868912))

(declare-fun m!5869878 () Bool)

(assert (=> bs!1174557 m!5869878))

(assert (=> d!1563387 d!1563749))

(declare-fun d!1563751 () Bool)

(declare-fun lt!1995510 () Int)

(assert (=> d!1563751 (>= lt!1995510 0)))

(declare-fun e!3044293 () Int)

(assert (=> d!1563751 (= lt!1995510 e!3044293)))

(declare-fun c!828324 () Bool)

(assert (=> d!1563751 (= c!828324 ((_ is Nil!55941) (list!17495 (c!828058 input!661))))))

(assert (=> d!1563751 (= (size!36875 (list!17495 (c!828058 input!661))) lt!1995510)))

(declare-fun b!4869762 () Bool)

(assert (=> b!4869762 (= e!3044293 0)))

(declare-fun b!4869763 () Bool)

(assert (=> b!4869763 (= e!3044293 (+ 1 (size!36875 (t!363993 (list!17495 (c!828058 input!661))))))))

(assert (= (and d!1563751 c!828324) b!4869762))

(assert (= (and d!1563751 (not c!828324)) b!4869763))

(declare-fun m!5869880 () Bool)

(assert (=> b!4869763 m!5869880))

(assert (=> d!1563353 d!1563751))

(assert (=> d!1563353 d!1563395))

(declare-fun b!4869764 () Bool)

(declare-fun res!2078844 () Bool)

(declare-fun e!3044299 () Bool)

(assert (=> b!4869764 (=> (not res!2078844) (not e!3044299))))

(declare-fun e!3044297 () Bool)

(assert (=> b!4869764 (= res!2078844 e!3044297)))

(declare-fun res!2078846 () Bool)

(assert (=> b!4869764 (=> res!2078846 e!3044297)))

(declare-fun lt!1995514 () Option!13779)

(assert (=> b!4869764 (= res!2078846 (not (isDefined!10848 lt!1995514)))))

(declare-fun b!4869765 () Bool)

(declare-fun e!3044296 () Bool)

(assert (=> b!4869765 (= e!3044296 (= (list!17492 (_2!33197 (get!19227 lt!1995514))) (_2!33199 (get!19228 (maxPrefixZipper!563 thiss!11777 (t!363995 (t!363995 rules!1248)) (list!17492 input!661))))))))

(declare-fun b!4869766 () Bool)

(assert (=> b!4869766 (= e!3044297 e!3044296)))

(declare-fun res!2078847 () Bool)

(assert (=> b!4869766 (=> (not res!2078847) (not e!3044296))))

(assert (=> b!4869766 (= res!2078847 (= (_1!33197 (get!19227 lt!1995514)) (_1!33199 (get!19228 (maxPrefixZipper!563 thiss!11777 (t!363995 (t!363995 rules!1248)) (list!17492 input!661))))))))

(declare-fun d!1563753 () Bool)

(assert (=> d!1563753 e!3044299))

(declare-fun res!2078842 () Bool)

(assert (=> d!1563753 (=> (not res!2078842) (not e!3044299))))

(assert (=> d!1563753 (= res!2078842 (= (isDefined!10848 lt!1995514) (isDefined!10849 (maxPrefixZipper!563 thiss!11777 (t!363995 (t!363995 rules!1248)) (list!17492 input!661)))))))

(declare-fun e!3044294 () Option!13779)

(assert (=> d!1563753 (= lt!1995514 e!3044294)))

(declare-fun c!828325 () Bool)

(assert (=> d!1563753 (= c!828325 (and ((_ is Cons!55943) (t!363995 (t!363995 rules!1248))) ((_ is Nil!55943) (t!363995 (t!363995 (t!363995 rules!1248))))))))

(declare-fun lt!1995513 () Unit!145952)

(declare-fun lt!1995515 () Unit!145952)

(assert (=> d!1563753 (= lt!1995513 lt!1995515)))

(declare-fun lt!1995517 () List!56065)

(declare-fun lt!1995511 () List!56065)

(assert (=> d!1563753 (isPrefix!4766 lt!1995517 lt!1995511)))

(assert (=> d!1563753 (= lt!1995515 (lemmaIsPrefixRefl!3163 lt!1995517 lt!1995511))))

(assert (=> d!1563753 (= lt!1995511 (list!17492 input!661))))

(assert (=> d!1563753 (= lt!1995517 (list!17492 input!661))))

(assert (=> d!1563753 (rulesValidInductive!3021 thiss!11777 (t!363995 (t!363995 rules!1248)))))

(assert (=> d!1563753 (= (maxPrefixZipperSequenceV2!629 thiss!11777 (t!363995 (t!363995 rules!1248)) input!661 totalInput!332) lt!1995514)))

(declare-fun b!4869767 () Bool)

(declare-fun e!3044298 () Bool)

(declare-fun e!3044295 () Bool)

(assert (=> b!4869767 (= e!3044298 e!3044295)))

(declare-fun res!2078843 () Bool)

(assert (=> b!4869767 (=> (not res!2078843) (not e!3044295))))

(assert (=> b!4869767 (= res!2078843 (= (_1!33197 (get!19227 lt!1995514)) (_1!33199 (get!19228 (maxPrefix!4549 thiss!11777 (t!363995 (t!363995 rules!1248)) (list!17492 input!661))))))))

(declare-fun b!4869768 () Bool)

(declare-fun call!338202 () Option!13779)

(assert (=> b!4869768 (= e!3044294 call!338202)))

(declare-fun b!4869769 () Bool)

(declare-fun lt!1995516 () Option!13779)

(declare-fun lt!1995512 () Option!13779)

(assert (=> b!4869769 (= e!3044294 (ite (and ((_ is None!13778) lt!1995516) ((_ is None!13778) lt!1995512)) None!13778 (ite ((_ is None!13778) lt!1995512) lt!1995516 (ite ((_ is None!13778) lt!1995516) lt!1995512 (ite (>= (size!36869 (_1!33197 (v!49696 lt!1995516))) (size!36869 (_1!33197 (v!49696 lt!1995512)))) lt!1995516 lt!1995512)))))))

(assert (=> b!4869769 (= lt!1995516 call!338202)))

(assert (=> b!4869769 (= lt!1995512 (maxPrefixZipperSequenceV2!629 thiss!11777 (t!363995 (t!363995 (t!363995 rules!1248))) input!661 totalInput!332))))

(declare-fun bm!338197 () Bool)

(assert (=> bm!338197 (= call!338202 (maxPrefixOneRuleZipperSequenceV2!258 thiss!11777 (h!62391 (t!363995 (t!363995 rules!1248))) input!661 totalInput!332))))

(declare-fun b!4869770 () Bool)

(assert (=> b!4869770 (= e!3044299 e!3044298)))

(declare-fun res!2078845 () Bool)

(assert (=> b!4869770 (=> res!2078845 e!3044298)))

(assert (=> b!4869770 (= res!2078845 (not (isDefined!10848 lt!1995514)))))

(declare-fun b!4869771 () Bool)

(assert (=> b!4869771 (= e!3044295 (= (list!17492 (_2!33197 (get!19227 lt!1995514))) (_2!33199 (get!19228 (maxPrefix!4549 thiss!11777 (t!363995 (t!363995 rules!1248)) (list!17492 input!661))))))))

(assert (= (and d!1563753 c!828325) b!4869768))

(assert (= (and d!1563753 (not c!828325)) b!4869769))

(assert (= (or b!4869768 b!4869769) bm!338197))

(assert (= (and d!1563753 res!2078842) b!4869764))

(assert (= (and b!4869764 (not res!2078846)) b!4869766))

(assert (= (and b!4869766 res!2078847) b!4869765))

(assert (= (and b!4869764 res!2078844) b!4869770))

(assert (= (and b!4869770 (not res!2078845)) b!4869767))

(assert (= (and b!4869767 res!2078843) b!4869771))

(declare-fun m!5869896 () Bool)

(assert (=> b!4869764 m!5869896))

(assert (=> d!1563753 m!5869836))

(assert (=> d!1563753 m!5868142))

(assert (=> d!1563753 m!5869270))

(assert (=> d!1563753 m!5869270))

(declare-fun m!5869898 () Bool)

(assert (=> d!1563753 m!5869898))

(assert (=> d!1563753 m!5868142))

(declare-fun m!5869900 () Bool)

(assert (=> d!1563753 m!5869900))

(assert (=> d!1563753 m!5869896))

(declare-fun m!5869906 () Bool)

(assert (=> d!1563753 m!5869906))

(assert (=> b!4869771 m!5869586))

(declare-fun m!5869908 () Bool)

(assert (=> b!4869771 m!5869908))

(declare-fun m!5869912 () Bool)

(assert (=> b!4869771 m!5869912))

(assert (=> b!4869771 m!5868142))

(assert (=> b!4869771 m!5868142))

(assert (=> b!4869771 m!5869586))

(declare-fun m!5869914 () Bool)

(assert (=> b!4869771 m!5869914))

(assert (=> b!4869770 m!5869896))

(declare-fun m!5869916 () Bool)

(assert (=> b!4869769 m!5869916))

(assert (=> b!4869767 m!5869914))

(assert (=> b!4869767 m!5868142))

(assert (=> b!4869767 m!5868142))

(assert (=> b!4869767 m!5869586))

(assert (=> b!4869767 m!5869586))

(assert (=> b!4869767 m!5869908))

(declare-fun m!5869920 () Bool)

(assert (=> bm!338197 m!5869920))

(assert (=> b!4869766 m!5869914))

(assert (=> b!4869766 m!5868142))

(assert (=> b!4869766 m!5868142))

(assert (=> b!4869766 m!5869270))

(assert (=> b!4869766 m!5869270))

(declare-fun m!5869922 () Bool)

(assert (=> b!4869766 m!5869922))

(assert (=> b!4869765 m!5868142))

(assert (=> b!4869765 m!5869270))

(assert (=> b!4869765 m!5869912))

(assert (=> b!4869765 m!5868142))

(assert (=> b!4869765 m!5869270))

(assert (=> b!4869765 m!5869922))

(assert (=> b!4869765 m!5869914))

(assert (=> b!4869084 d!1563753))

(declare-fun call!338203 () Option!13781)

(declare-fun bm!338198 () Bool)

(assert (=> bm!338198 (= call!338203 (maxPrefixOneRule!3491 thiss!11777 (h!62391 (t!363995 rules!1248)) lt!1994850))))

(declare-fun b!4869783 () Bool)

(declare-fun res!2078854 () Bool)

(declare-fun e!3044307 () Bool)

(assert (=> b!4869783 (=> (not res!2078854) (not e!3044307))))

(declare-fun lt!1995522 () Option!13781)

(assert (=> b!4869783 (= res!2078854 (matchR!6492 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995522)))) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995522))))))))

(declare-fun b!4869784 () Bool)

(declare-fun res!2078858 () Bool)

(assert (=> b!4869784 (=> (not res!2078858) (not e!3044307))))

(assert (=> b!4869784 (= res!2078858 (= (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995522)))) (originalCharacters!8355 (_1!33199 (get!19228 lt!1995522)))))))

(declare-fun b!4869786 () Bool)

(declare-fun e!3044305 () Option!13781)

(assert (=> b!4869786 (= e!3044305 call!338203)))

(declare-fun b!4869787 () Bool)

(declare-fun res!2078856 () Bool)

(assert (=> b!4869787 (=> (not res!2078856) (not e!3044307))))

(assert (=> b!4869787 (= res!2078856 (= (++!12186 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995522)))) (_2!33199 (get!19228 lt!1995522))) lt!1994850))))

(declare-fun b!4869788 () Bool)

(declare-fun lt!1995525 () Option!13781)

(declare-fun lt!1995523 () Option!13781)

(assert (=> b!4869788 (= e!3044305 (ite (and ((_ is None!13780) lt!1995525) ((_ is None!13780) lt!1995523)) None!13780 (ite ((_ is None!13780) lt!1995523) lt!1995525 (ite ((_ is None!13780) lt!1995525) lt!1995523 (ite (>= (size!36869 (_1!33199 (v!49698 lt!1995525))) (size!36869 (_1!33199 (v!49698 lt!1995523)))) lt!1995525 lt!1995523)))))))

(assert (=> b!4869788 (= lt!1995525 call!338203)))

(assert (=> b!4869788 (= lt!1995523 (maxPrefix!4549 thiss!11777 (t!363995 (t!363995 rules!1248)) lt!1994850))))

(declare-fun b!4869789 () Bool)

(declare-fun e!3044306 () Bool)

(assert (=> b!4869789 (= e!3044306 e!3044307)))

(declare-fun res!2078859 () Bool)

(assert (=> b!4869789 (=> (not res!2078859) (not e!3044307))))

(assert (=> b!4869789 (= res!2078859 (isDefined!10849 lt!1995522))))

(declare-fun b!4869790 () Bool)

(declare-fun res!2078857 () Bool)

(assert (=> b!4869790 (=> (not res!2078857) (not e!3044307))))

(assert (=> b!4869790 (= res!2078857 (= (value!258054 (_1!33199 (get!19228 lt!1995522))) (apply!13502 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995522)))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995522)))))))))

(declare-fun b!4869791 () Bool)

(assert (=> b!4869791 (= e!3044307 (contains!19394 (t!363995 rules!1248) (rule!11164 (_1!33199 (get!19228 lt!1995522)))))))

(declare-fun b!4869785 () Bool)

(declare-fun res!2078855 () Bool)

(assert (=> b!4869785 (=> (not res!2078855) (not e!3044307))))

(assert (=> b!4869785 (= res!2078855 (< (size!36875 (_2!33199 (get!19228 lt!1995522))) (size!36875 lt!1994850)))))

(declare-fun d!1563765 () Bool)

(assert (=> d!1563765 e!3044306))

(declare-fun res!2078853 () Bool)

(assert (=> d!1563765 (=> res!2078853 e!3044306)))

(assert (=> d!1563765 (= res!2078853 (isEmpty!29936 lt!1995522))))

(assert (=> d!1563765 (= lt!1995522 e!3044305)))

(declare-fun c!828329 () Bool)

(assert (=> d!1563765 (= c!828329 (and ((_ is Cons!55943) (t!363995 rules!1248)) ((_ is Nil!55943) (t!363995 (t!363995 rules!1248)))))))

(declare-fun lt!1995524 () Unit!145952)

(declare-fun lt!1995521 () Unit!145952)

(assert (=> d!1563765 (= lt!1995524 lt!1995521)))

(assert (=> d!1563765 (isPrefix!4766 lt!1994850 lt!1994850)))

(assert (=> d!1563765 (= lt!1995521 (lemmaIsPrefixRefl!3163 lt!1994850 lt!1994850))))

(assert (=> d!1563765 (rulesValidInductive!3021 thiss!11777 (t!363995 rules!1248))))

(assert (=> d!1563765 (= (maxPrefix!4549 thiss!11777 (t!363995 rules!1248) lt!1994850) lt!1995522)))

(assert (= (and d!1563765 c!828329) b!4869786))

(assert (= (and d!1563765 (not c!828329)) b!4869788))

(assert (= (or b!4869786 b!4869788) bm!338198))

(assert (= (and d!1563765 (not res!2078853)) b!4869789))

(assert (= (and b!4869789 res!2078859) b!4869784))

(assert (= (and b!4869784 res!2078858) b!4869785))

(assert (= (and b!4869785 res!2078855) b!4869787))

(assert (= (and b!4869787 res!2078856) b!4869790))

(assert (= (and b!4869790 res!2078857) b!4869783))

(assert (= (and b!4869783 res!2078854) b!4869791))

(declare-fun m!5869940 () Bool)

(assert (=> b!4869788 m!5869940))

(declare-fun m!5869942 () Bool)

(assert (=> b!4869791 m!5869942))

(declare-fun m!5869944 () Bool)

(assert (=> b!4869791 m!5869944))

(assert (=> b!4869787 m!5869942))

(declare-fun m!5869946 () Bool)

(assert (=> b!4869787 m!5869946))

(assert (=> b!4869787 m!5869946))

(declare-fun m!5869948 () Bool)

(assert (=> b!4869787 m!5869948))

(assert (=> b!4869787 m!5869948))

(declare-fun m!5869950 () Bool)

(assert (=> b!4869787 m!5869950))

(assert (=> b!4869783 m!5869942))

(assert (=> b!4869783 m!5869946))

(assert (=> b!4869783 m!5869946))

(assert (=> b!4869783 m!5869948))

(assert (=> b!4869783 m!5869948))

(declare-fun m!5869952 () Bool)

(assert (=> b!4869783 m!5869952))

(declare-fun m!5869954 () Bool)

(assert (=> b!4869789 m!5869954))

(assert (=> b!4869785 m!5869942))

(declare-fun m!5869956 () Bool)

(assert (=> b!4869785 m!5869956))

(assert (=> b!4869785 m!5868158))

(assert (=> b!4869784 m!5869942))

(assert (=> b!4869784 m!5869946))

(assert (=> b!4869784 m!5869946))

(assert (=> b!4869784 m!5869948))

(assert (=> b!4869790 m!5869942))

(declare-fun m!5869958 () Bool)

(assert (=> b!4869790 m!5869958))

(assert (=> b!4869790 m!5869958))

(declare-fun m!5869960 () Bool)

(assert (=> b!4869790 m!5869960))

(declare-fun m!5869962 () Bool)

(assert (=> d!1563765 m!5869962))

(assert (=> d!1563765 m!5868374))

(assert (=> d!1563765 m!5868376))

(assert (=> d!1563765 m!5868550))

(declare-fun m!5869964 () Bool)

(assert (=> bm!338198 m!5869964))

(assert (=> b!4868676 d!1563765))

(assert (=> b!4869100 d!1563723))

(declare-fun d!1563771 () Bool)

(assert (=> d!1563771 (= (inv!71848 (tag!8896 (h!62391 (t!363995 (t!363995 rules!1248))))) (= (mod (str.len (value!258053 (tag!8896 (h!62391 (t!363995 (t!363995 rules!1248)))))) 2) 0))))

(assert (=> b!4869163 d!1563771))

(declare-fun d!1563773 () Bool)

(declare-fun res!2078866 () Bool)

(declare-fun e!3044313 () Bool)

(assert (=> d!1563773 (=> (not res!2078866) (not e!3044313))))

(assert (=> d!1563773 (= res!2078866 (semiInverseModEq!3546 (toChars!10758 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248)))))))))

(assert (=> d!1563773 (= (inv!71853 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) e!3044313)))

(declare-fun b!4869798 () Bool)

(assert (=> b!4869798 (= e!3044313 (equivClasses!3425 (toChars!10758 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248)))))))))

(assert (= (and d!1563773 res!2078866) b!4869798))

(declare-fun m!5869966 () Bool)

(assert (=> d!1563773 m!5869966))

(declare-fun m!5869968 () Bool)

(assert (=> b!4869798 m!5869968))

(assert (=> b!4869163 d!1563773))

(declare-fun d!1563775 () Bool)

(assert (=> d!1563775 (= (isEmpty!29937 lt!1994924) (not ((_ is Some!13778) lt!1994924)))))

(assert (=> d!1563291 d!1563775))

(declare-fun d!1563777 () Bool)

(declare-fun e!3044318 () Bool)

(assert (=> d!1563777 e!3044318))

(declare-fun res!2078872 () Bool)

(assert (=> d!1563777 (=> res!2078872 e!3044318)))

(declare-fun lt!1995529 () Bool)

(assert (=> d!1563777 (= res!2078872 (not lt!1995529))))

(declare-fun e!3044317 () Bool)

(assert (=> d!1563777 (= lt!1995529 e!3044317)))

(declare-fun res!2078871 () Bool)

(assert (=> d!1563777 (=> res!2078871 e!3044317)))

(assert (=> d!1563777 (= res!2078871 ((_ is Nil!55941) (tail!9559 lt!1994927)))))

(assert (=> d!1563777 (= (isPrefix!4766 (tail!9559 lt!1994927) (tail!9559 lt!1994921)) lt!1995529)))

(declare-fun b!4869801 () Bool)

(declare-fun e!3044316 () Bool)

(assert (=> b!4869801 (= e!3044317 e!3044316)))

(declare-fun res!2078869 () Bool)

(assert (=> b!4869801 (=> (not res!2078869) (not e!3044316))))

(assert (=> b!4869801 (= res!2078869 (not ((_ is Nil!55941) (tail!9559 lt!1994921))))))

(declare-fun b!4869804 () Bool)

(assert (=> b!4869804 (= e!3044318 (>= (size!36875 (tail!9559 lt!1994921)) (size!36875 (tail!9559 lt!1994927))))))

(declare-fun b!4869802 () Bool)

(declare-fun res!2078870 () Bool)

(assert (=> b!4869802 (=> (not res!2078870) (not e!3044316))))

(assert (=> b!4869802 (= res!2078870 (= (head!10413 (tail!9559 lt!1994927)) (head!10413 (tail!9559 lt!1994921))))))

(declare-fun b!4869803 () Bool)

(assert (=> b!4869803 (= e!3044316 (isPrefix!4766 (tail!9559 (tail!9559 lt!1994927)) (tail!9559 (tail!9559 lt!1994921))))))

(assert (= (and d!1563777 (not res!2078871)) b!4869801))

(assert (= (and b!4869801 res!2078869) b!4869802))

(assert (= (and b!4869802 res!2078870) b!4869803))

(assert (= (and d!1563777 (not res!2078872)) b!4869804))

(assert (=> b!4869804 m!5868562))

(declare-fun m!5869976 () Bool)

(assert (=> b!4869804 m!5869976))

(assert (=> b!4869804 m!5868560))

(declare-fun m!5869978 () Bool)

(assert (=> b!4869804 m!5869978))

(assert (=> b!4869802 m!5868560))

(declare-fun m!5869980 () Bool)

(assert (=> b!4869802 m!5869980))

(assert (=> b!4869802 m!5868562))

(declare-fun m!5869982 () Bool)

(assert (=> b!4869802 m!5869982))

(assert (=> b!4869803 m!5868560))

(declare-fun m!5869984 () Bool)

(assert (=> b!4869803 m!5869984))

(assert (=> b!4869803 m!5868562))

(declare-fun m!5869986 () Bool)

(assert (=> b!4869803 m!5869986))

(assert (=> b!4869803 m!5869984))

(assert (=> b!4869803 m!5869986))

(declare-fun m!5869988 () Bool)

(assert (=> b!4869803 m!5869988))

(assert (=> b!4868841 d!1563777))

(declare-fun d!1563783 () Bool)

(assert (=> d!1563783 (= (tail!9559 lt!1994927) (t!363993 lt!1994927))))

(assert (=> b!4868841 d!1563783))

(declare-fun d!1563787 () Bool)

(assert (=> d!1563787 (= (tail!9559 lt!1994921) (t!363993 lt!1994921))))

(assert (=> b!4868841 d!1563787))

(declare-fun d!1563789 () Bool)

(assert (=> d!1563789 (= (isDefined!10848 lt!1995106) (not (isEmpty!29937 lt!1995106)))))

(declare-fun bs!1174559 () Bool)

(assert (= bs!1174559 d!1563789))

(declare-fun m!5869998 () Bool)

(assert (=> bs!1174559 m!5869998))

(assert (=> b!4869079 d!1563789))

(declare-fun b!4869814 () Bool)

(declare-fun e!3044323 () Bool)

(declare-fun lt!1995535 () Bool)

(declare-fun call!338205 () Bool)

(assert (=> b!4869814 (= e!3044323 (= lt!1995535 call!338205))))

(declare-fun b!4869815 () Bool)

(declare-fun res!2078881 () Bool)

(declare-fun e!3044324 () Bool)

(assert (=> b!4869815 (=> (not res!2078881) (not e!3044324))))

(assert (=> b!4869815 (= res!2078881 (isEmpty!29943 (tail!9559 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952)))))))))

(declare-fun bm!338200 () Bool)

(assert (=> bm!338200 (= call!338205 (isEmpty!29943 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))))))

(declare-fun b!4869816 () Bool)

(declare-fun res!2078879 () Bool)

(declare-fun e!3044322 () Bool)

(assert (=> b!4869816 (=> res!2078879 e!3044322)))

(assert (=> b!4869816 (= res!2078879 (not ((_ is ElementMatch!13107) (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))))))

(declare-fun e!3044325 () Bool)

(assert (=> b!4869816 (= e!3044325 e!3044322)))

(declare-fun b!4869817 () Bool)

(declare-fun e!3044328 () Bool)

(declare-fun e!3044326 () Bool)

(assert (=> b!4869817 (= e!3044328 e!3044326)))

(declare-fun res!2078886 () Bool)

(assert (=> b!4869817 (=> res!2078886 e!3044326)))

(assert (=> b!4869817 (= res!2078886 call!338205)))

(declare-fun b!4869818 () Bool)

(assert (=> b!4869818 (= e!3044323 e!3044325)))

(declare-fun c!828333 () Bool)

(assert (=> b!4869818 (= c!828333 ((_ is EmptyLang!13107) (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952))))))))

(declare-fun b!4869819 () Bool)

(assert (=> b!4869819 (= e!3044322 e!3044328)))

(declare-fun res!2078883 () Bool)

(assert (=> b!4869819 (=> (not res!2078883) (not e!3044328))))

(assert (=> b!4869819 (= res!2078883 (not lt!1995535))))

(declare-fun b!4869820 () Bool)

(declare-fun res!2078885 () Bool)

(assert (=> b!4869820 (=> res!2078885 e!3044322)))

(assert (=> b!4869820 (= res!2078885 e!3044324)))

(declare-fun res!2078884 () Bool)

(assert (=> b!4869820 (=> (not res!2078884) (not e!3044324))))

(assert (=> b!4869820 (= res!2078884 lt!1995535)))

(declare-fun b!4869821 () Bool)

(assert (=> b!4869821 (= e!3044325 (not lt!1995535))))

(declare-fun b!4869822 () Bool)

(assert (=> b!4869822 (= e!3044324 (= (head!10413 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))) (c!828059 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))))))

(declare-fun d!1563791 () Bool)

(assert (=> d!1563791 e!3044323))

(declare-fun c!828331 () Bool)

(assert (=> d!1563791 (= c!828331 ((_ is EmptyExpr!13107) (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952))))))))

(declare-fun e!3044327 () Bool)

(assert (=> d!1563791 (= lt!1995535 e!3044327)))

(declare-fun c!828332 () Bool)

(assert (=> d!1563791 (= c!828332 (isEmpty!29943 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))))))

(assert (=> d!1563791 (validRegex!5867 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))))

(assert (=> d!1563791 (= (matchR!6492 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))) lt!1995535)))

(declare-fun b!4869813 () Bool)

(declare-fun res!2078882 () Bool)

(assert (=> b!4869813 (=> res!2078882 e!3044326)))

(assert (=> b!4869813 (= res!2078882 (not (isEmpty!29943 (tail!9559 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))))))))

(declare-fun b!4869823 () Bool)

(declare-fun res!2078880 () Bool)

(assert (=> b!4869823 (=> (not res!2078880) (not e!3044324))))

(assert (=> b!4869823 (= res!2078880 (not call!338205))))

(declare-fun b!4869824 () Bool)

(assert (=> b!4869824 (= e!3044327 (matchR!6492 (derivativeStep!3865 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))) (head!10413 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952)))))) (tail!9559 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952)))))))))

(declare-fun b!4869825 () Bool)

(assert (=> b!4869825 (= e!3044327 (nullable!4541 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952))))))))

(declare-fun b!4869826 () Bool)

(assert (=> b!4869826 (= e!3044326 (not (= (head!10413 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))) (c!828059 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952))))))))))

(assert (= (and d!1563791 c!828332) b!4869825))

(assert (= (and d!1563791 (not c!828332)) b!4869824))

(assert (= (and d!1563791 c!828331) b!4869814))

(assert (= (and d!1563791 (not c!828331)) b!4869818))

(assert (= (and b!4869818 c!828333) b!4869821))

(assert (= (and b!4869818 (not c!828333)) b!4869816))

(assert (= (and b!4869816 (not res!2078879)) b!4869820))

(assert (= (and b!4869820 res!2078884) b!4869823))

(assert (= (and b!4869823 res!2078880) b!4869815))

(assert (= (and b!4869815 res!2078881) b!4869822))

(assert (= (and b!4869820 (not res!2078885)) b!4869819))

(assert (= (and b!4869819 res!2078883) b!4869817))

(assert (= (and b!4869817 (not res!2078886)) b!4869813))

(assert (= (and b!4869813 (not res!2078882)) b!4869826))

(assert (= (or b!4869814 b!4869823 b!4869817) bm!338200))

(assert (=> d!1563791 m!5868358))

(declare-fun m!5870004 () Bool)

(assert (=> d!1563791 m!5870004))

(declare-fun m!5870006 () Bool)

(assert (=> d!1563791 m!5870006))

(assert (=> b!4869822 m!5868358))

(declare-fun m!5870008 () Bool)

(assert (=> b!4869822 m!5870008))

(assert (=> b!4869824 m!5868358))

(assert (=> b!4869824 m!5870008))

(assert (=> b!4869824 m!5870008))

(declare-fun m!5870010 () Bool)

(assert (=> b!4869824 m!5870010))

(assert (=> b!4869824 m!5868358))

(declare-fun m!5870012 () Bool)

(assert (=> b!4869824 m!5870012))

(assert (=> b!4869824 m!5870010))

(assert (=> b!4869824 m!5870012))

(declare-fun m!5870014 () Bool)

(assert (=> b!4869824 m!5870014))

(assert (=> bm!338200 m!5868358))

(assert (=> bm!338200 m!5870004))

(assert (=> b!4869813 m!5868358))

(assert (=> b!4869813 m!5870012))

(assert (=> b!4869813 m!5870012))

(declare-fun m!5870016 () Bool)

(assert (=> b!4869813 m!5870016))

(declare-fun m!5870018 () Bool)

(assert (=> b!4869825 m!5870018))

(assert (=> b!4869815 m!5868358))

(assert (=> b!4869815 m!5870012))

(assert (=> b!4869815 m!5870012))

(assert (=> b!4869815 m!5870016))

(assert (=> b!4869826 m!5868358))

(assert (=> b!4869826 m!5870008))

(assert (=> b!4868671 d!1563791))

(assert (=> b!4868671 d!1563631))

(assert (=> b!4868671 d!1563623))

(assert (=> b!4868671 d!1563625))

(declare-fun d!1563803 () Bool)

(declare-fun lt!1995536 () Bool)

(assert (=> d!1563803 (= lt!1995536 (isEmpty!29943 (list!17495 (right!40963 (c!828058 input!661)))))))

(assert (=> d!1563803 (= lt!1995536 (= (size!36876 (right!40963 (c!828058 input!661))) 0))))

(assert (=> d!1563803 (= (isEmpty!29938 (right!40963 (c!828058 input!661))) lt!1995536)))

(declare-fun bs!1174561 () Bool)

(assert (= bs!1174561 d!1563803))

(assert (=> bs!1174561 m!5868934))

(assert (=> bs!1174561 m!5868934))

(declare-fun m!5870020 () Bool)

(assert (=> bs!1174561 m!5870020))

(assert (=> bs!1174561 m!5868814))

(assert (=> b!4869122 d!1563803))

(declare-fun b!4869831 () Bool)

(declare-fun e!3044334 () List!56065)

(assert (=> b!4869831 (= e!3044334 (list!17495 (right!40963 (c!828058 input!661))))))

(declare-fun b!4869832 () Bool)

(assert (=> b!4869832 (= e!3044334 (Cons!55941 (h!62389 (list!17495 (left!40633 (c!828058 input!661)))) (++!12186 (t!363993 (list!17495 (left!40633 (c!828058 input!661)))) (list!17495 (right!40963 (c!828058 input!661))))))))

(declare-fun d!1563805 () Bool)

(declare-fun e!3044333 () Bool)

(assert (=> d!1563805 e!3044333))

(declare-fun res!2078891 () Bool)

(assert (=> d!1563805 (=> (not res!2078891) (not e!3044333))))

(declare-fun lt!1995537 () List!56065)

(assert (=> d!1563805 (= res!2078891 (= (content!9976 lt!1995537) ((_ map or) (content!9976 (list!17495 (left!40633 (c!828058 input!661)))) (content!9976 (list!17495 (right!40963 (c!828058 input!661)))))))))

(assert (=> d!1563805 (= lt!1995537 e!3044334)))

(declare-fun c!828334 () Bool)

(assert (=> d!1563805 (= c!828334 ((_ is Nil!55941) (list!17495 (left!40633 (c!828058 input!661)))))))

(assert (=> d!1563805 (= (++!12186 (list!17495 (left!40633 (c!828058 input!661))) (list!17495 (right!40963 (c!828058 input!661)))) lt!1995537)))

(declare-fun b!4869833 () Bool)

(declare-fun res!2078892 () Bool)

(assert (=> b!4869833 (=> (not res!2078892) (not e!3044333))))

(assert (=> b!4869833 (= res!2078892 (= (size!36875 lt!1995537) (+ (size!36875 (list!17495 (left!40633 (c!828058 input!661)))) (size!36875 (list!17495 (right!40963 (c!828058 input!661)))))))))

(declare-fun b!4869834 () Bool)

(assert (=> b!4869834 (= e!3044333 (or (not (= (list!17495 (right!40963 (c!828058 input!661))) Nil!55941)) (= lt!1995537 (list!17495 (left!40633 (c!828058 input!661))))))))

(assert (= (and d!1563805 c!828334) b!4869831))

(assert (= (and d!1563805 (not c!828334)) b!4869832))

(assert (= (and d!1563805 res!2078891) b!4869833))

(assert (= (and b!4869833 res!2078892) b!4869834))

(assert (=> b!4869832 m!5868934))

(declare-fun m!5870022 () Bool)

(assert (=> b!4869832 m!5870022))

(declare-fun m!5870024 () Bool)

(assert (=> d!1563805 m!5870024))

(assert (=> d!1563805 m!5868932))

(declare-fun m!5870026 () Bool)

(assert (=> d!1563805 m!5870026))

(assert (=> d!1563805 m!5868934))

(declare-fun m!5870028 () Bool)

(assert (=> d!1563805 m!5870028))

(declare-fun m!5870030 () Bool)

(assert (=> b!4869833 m!5870030))

(assert (=> b!4869833 m!5868932))

(declare-fun m!5870032 () Bool)

(assert (=> b!4869833 m!5870032))

(assert (=> b!4869833 m!5868934))

(declare-fun m!5870034 () Bool)

(assert (=> b!4869833 m!5870034))

(assert (=> b!4869150 d!1563805))

(declare-fun b!4869837 () Bool)

(declare-fun e!3044336 () List!56065)

(assert (=> b!4869837 (= e!3044336 (list!17500 (xs!17881 (left!40633 (c!828058 input!661)))))))

(declare-fun b!4869838 () Bool)

(assert (=> b!4869838 (= e!3044336 (++!12186 (list!17495 (left!40633 (left!40633 (c!828058 input!661)))) (list!17495 (right!40963 (left!40633 (c!828058 input!661))))))))

(declare-fun d!1563807 () Bool)

(declare-fun c!828335 () Bool)

(assert (=> d!1563807 (= c!828335 ((_ is Empty!14573) (left!40633 (c!828058 input!661))))))

(declare-fun e!3044335 () List!56065)

(assert (=> d!1563807 (= (list!17495 (left!40633 (c!828058 input!661))) e!3044335)))

(declare-fun b!4869836 () Bool)

(assert (=> b!4869836 (= e!3044335 e!3044336)))

(declare-fun c!828336 () Bool)

(assert (=> b!4869836 (= c!828336 ((_ is Leaf!24300) (left!40633 (c!828058 input!661))))))

(declare-fun b!4869835 () Bool)

(assert (=> b!4869835 (= e!3044335 Nil!55941)))

(assert (= (and d!1563807 c!828335) b!4869835))

(assert (= (and d!1563807 (not c!828335)) b!4869836))

(assert (= (and b!4869836 c!828336) b!4869837))

(assert (= (and b!4869836 (not c!828336)) b!4869838))

(declare-fun m!5870036 () Bool)

(assert (=> b!4869837 m!5870036))

(declare-fun m!5870038 () Bool)

(assert (=> b!4869838 m!5870038))

(declare-fun m!5870040 () Bool)

(assert (=> b!4869838 m!5870040))

(assert (=> b!4869838 m!5870038))

(assert (=> b!4869838 m!5870040))

(declare-fun m!5870042 () Bool)

(assert (=> b!4869838 m!5870042))

(assert (=> b!4869150 d!1563807))

(declare-fun b!4869843 () Bool)

(declare-fun e!3044340 () List!56065)

(assert (=> b!4869843 (= e!3044340 (list!17500 (xs!17881 (right!40963 (c!828058 input!661)))))))

(declare-fun b!4869844 () Bool)

(assert (=> b!4869844 (= e!3044340 (++!12186 (list!17495 (left!40633 (right!40963 (c!828058 input!661)))) (list!17495 (right!40963 (right!40963 (c!828058 input!661))))))))

(declare-fun d!1563809 () Bool)

(declare-fun c!828337 () Bool)

(assert (=> d!1563809 (= c!828337 ((_ is Empty!14573) (right!40963 (c!828058 input!661))))))

(declare-fun e!3044339 () List!56065)

(assert (=> d!1563809 (= (list!17495 (right!40963 (c!828058 input!661))) e!3044339)))

(declare-fun b!4869842 () Bool)

(assert (=> b!4869842 (= e!3044339 e!3044340)))

(declare-fun c!828338 () Bool)

(assert (=> b!4869842 (= c!828338 ((_ is Leaf!24300) (right!40963 (c!828058 input!661))))))

(declare-fun b!4869841 () Bool)

(assert (=> b!4869841 (= e!3044339 Nil!55941)))

(assert (= (and d!1563809 c!828337) b!4869841))

(assert (= (and d!1563809 (not c!828337)) b!4869842))

(assert (= (and b!4869842 c!828338) b!4869843))

(assert (= (and b!4869842 (not c!828338)) b!4869844))

(declare-fun m!5870048 () Bool)

(assert (=> b!4869843 m!5870048))

(declare-fun m!5870050 () Bool)

(assert (=> b!4869844 m!5870050))

(declare-fun m!5870052 () Bool)

(assert (=> b!4869844 m!5870052))

(assert (=> b!4869844 m!5870050))

(assert (=> b!4869844 m!5870052))

(declare-fun m!5870054 () Bool)

(assert (=> b!4869844 m!5870054))

(assert (=> b!4869150 d!1563809))

(declare-fun d!1563813 () Bool)

(assert (not d!1563813))

(assert (=> b!4868909 d!1563813))

(assert (=> b!4868609 d!1563391))

(assert (=> b!4868609 d!1563393))

(declare-fun d!1563819 () Bool)

(declare-fun res!2078897 () Bool)

(declare-fun e!3044346 () Bool)

(assert (=> d!1563819 (=> (not res!2078897) (not e!3044346))))

(assert (=> d!1563819 (= res!2078897 (<= (size!36875 (list!17500 (xs!17881 (left!40633 (c!828058 totalInput!332))))) 512))))

(assert (=> d!1563819 (= (inv!71859 (left!40633 (c!828058 totalInput!332))) e!3044346)))

(declare-fun b!4869853 () Bool)

(declare-fun res!2078898 () Bool)

(assert (=> b!4869853 (=> (not res!2078898) (not e!3044346))))

(assert (=> b!4869853 (= res!2078898 (= (csize!29377 (left!40633 (c!828058 totalInput!332))) (size!36875 (list!17500 (xs!17881 (left!40633 (c!828058 totalInput!332)))))))))

(declare-fun b!4869854 () Bool)

(assert (=> b!4869854 (= e!3044346 (and (> (csize!29377 (left!40633 (c!828058 totalInput!332))) 0) (<= (csize!29377 (left!40633 (c!828058 totalInput!332))) 512)))))

(assert (= (and d!1563819 res!2078897) b!4869853))

(assert (= (and b!4869853 res!2078898) b!4869854))

(declare-fun m!5870066 () Bool)

(assert (=> d!1563819 m!5870066))

(assert (=> d!1563819 m!5870066))

(declare-fun m!5870068 () Bool)

(assert (=> d!1563819 m!5870068))

(assert (=> b!4869853 m!5870066))

(assert (=> b!4869853 m!5870066))

(assert (=> b!4869853 m!5870068))

(assert (=> b!4868942 d!1563819))

(declare-fun d!1563825 () Bool)

(declare-fun lt!1995544 () Bool)

(declare-fun content!9979 (List!56067) (InoxSet Rule!15864))

(assert (=> d!1563825 (= lt!1995544 (select (content!9979 rules!1248) (rule!11164 (_1!33199 (get!19228 lt!1995077)))))))

(declare-fun e!3044356 () Bool)

(assert (=> d!1563825 (= lt!1995544 e!3044356)))

(declare-fun res!2078908 () Bool)

(assert (=> d!1563825 (=> (not res!2078908) (not e!3044356))))

(assert (=> d!1563825 (= res!2078908 ((_ is Cons!55943) rules!1248))))

(assert (=> d!1563825 (= (contains!19394 rules!1248 (rule!11164 (_1!33199 (get!19228 lt!1995077)))) lt!1995544)))

(declare-fun b!4869865 () Bool)

(declare-fun e!3044355 () Bool)

(assert (=> b!4869865 (= e!3044356 e!3044355)))

(declare-fun res!2078907 () Bool)

(assert (=> b!4869865 (=> res!2078907 e!3044355)))

(assert (=> b!4869865 (= res!2078907 (= (h!62391 rules!1248) (rule!11164 (_1!33199 (get!19228 lt!1995077)))))))

(declare-fun b!4869866 () Bool)

(assert (=> b!4869866 (= e!3044355 (contains!19394 (t!363995 rules!1248) (rule!11164 (_1!33199 (get!19228 lt!1995077)))))))

(assert (= (and d!1563825 res!2078908) b!4869865))

(assert (= (and b!4869865 (not res!2078907)) b!4869866))

(declare-fun m!5870084 () Bool)

(assert (=> d!1563825 m!5870084))

(declare-fun m!5870086 () Bool)

(assert (=> d!1563825 m!5870086))

(declare-fun m!5870088 () Bool)

(assert (=> b!4869866 m!5870088))

(assert (=> b!4868962 d!1563825))

(assert (=> b!4868962 d!1563493))

(declare-fun d!1563837 () Bool)

(assert (=> d!1563837 (= (get!19228 (maxPrefix!4549 thiss!11777 (t!363995 rules!1248) (list!17492 input!661))) (v!49698 (maxPrefix!4549 thiss!11777 (t!363995 rules!1248) (list!17492 input!661))))))

(assert (=> b!4869086 d!1563837))

(assert (=> b!4869086 d!1563517))

(assert (=> b!4869086 d!1563741))

(assert (=> b!4869086 d!1563163))

(assert (=> b!4869086 d!1563649))

(declare-fun d!1563841 () Bool)

(declare-fun res!2078909 () Bool)

(declare-fun e!3044357 () Bool)

(assert (=> d!1563841 (=> (not res!2078909) (not e!3044357))))

(assert (=> d!1563841 (= res!2078909 (= (csize!29376 (right!40963 (c!828058 totalInput!332))) (+ (size!36876 (left!40633 (right!40963 (c!828058 totalInput!332)))) (size!36876 (right!40963 (right!40963 (c!828058 totalInput!332)))))))))

(assert (=> d!1563841 (= (inv!71858 (right!40963 (c!828058 totalInput!332))) e!3044357)))

(declare-fun b!4869867 () Bool)

(declare-fun res!2078910 () Bool)

(assert (=> b!4869867 (=> (not res!2078910) (not e!3044357))))

(assert (=> b!4869867 (= res!2078910 (and (not (= (left!40633 (right!40963 (c!828058 totalInput!332))) Empty!14573)) (not (= (right!40963 (right!40963 (c!828058 totalInput!332))) Empty!14573))))))

(declare-fun b!4869868 () Bool)

(declare-fun res!2078911 () Bool)

(assert (=> b!4869868 (=> (not res!2078911) (not e!3044357))))

(assert (=> b!4869868 (= res!2078911 (= (cheight!14784 (right!40963 (c!828058 totalInput!332))) (+ (max!0 (height!1929 (left!40633 (right!40963 (c!828058 totalInput!332)))) (height!1929 (right!40963 (right!40963 (c!828058 totalInput!332))))) 1)))))

(declare-fun b!4869869 () Bool)

(assert (=> b!4869869 (= e!3044357 (<= 0 (cheight!14784 (right!40963 (c!828058 totalInput!332)))))))

(assert (= (and d!1563841 res!2078909) b!4869867))

(assert (= (and b!4869867 res!2078910) b!4869868))

(assert (= (and b!4869868 res!2078911) b!4869869))

(declare-fun m!5870090 () Bool)

(assert (=> d!1563841 m!5870090))

(declare-fun m!5870092 () Bool)

(assert (=> d!1563841 m!5870092))

(declare-fun m!5870094 () Bool)

(assert (=> b!4869868 m!5870094))

(declare-fun m!5870096 () Bool)

(assert (=> b!4869868 m!5870096))

(assert (=> b!4869868 m!5870094))

(assert (=> b!4869868 m!5870096))

(declare-fun m!5870098 () Bool)

(assert (=> b!4869868 m!5870098))

(assert (=> b!4868949 d!1563841))

(declare-fun d!1563847 () Bool)

(declare-fun lt!1995545 () Int)

(assert (=> d!1563847 (>= lt!1995545 0)))

(declare-fun e!3044358 () Int)

(assert (=> d!1563847 (= lt!1995545 e!3044358)))

(declare-fun c!828343 () Bool)

(assert (=> d!1563847 (= c!828343 ((_ is Nil!55942) (_1!33196 lt!1995141)))))

(assert (=> d!1563847 (= (size!36877 (_1!33196 lt!1995141)) lt!1995545)))

(declare-fun b!4869870 () Bool)

(assert (=> b!4869870 (= e!3044358 0)))

(declare-fun b!4869871 () Bool)

(assert (=> b!4869871 (= e!3044358 (+ 1 (size!36877 (t!363994 (_1!33196 lt!1995141)))))))

(assert (= (and d!1563847 c!828343) b!4869870))

(assert (= (and d!1563847 (not c!828343)) b!4869871))

(declare-fun m!5870100 () Bool)

(assert (=> b!4869871 m!5870100))

(assert (=> d!1563379 d!1563847))

(declare-fun bm!338201 () Bool)

(declare-fun call!338206 () Option!13781)

(assert (=> bm!338201 (= call!338206 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (_2!33199 (v!49698 lt!1994876))))))

(declare-fun b!4869872 () Bool)

(declare-fun res!2078913 () Bool)

(declare-fun e!3044361 () Bool)

(assert (=> b!4869872 (=> (not res!2078913) (not e!3044361))))

(declare-fun lt!1995547 () Option!13781)

(assert (=> b!4869872 (= res!2078913 (matchR!6492 (regex!8032 (rule!11164 (_1!33199 (get!19228 lt!1995547)))) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995547))))))))

(declare-fun b!4869873 () Bool)

(declare-fun res!2078917 () Bool)

(assert (=> b!4869873 (=> (not res!2078917) (not e!3044361))))

(assert (=> b!4869873 (= res!2078917 (= (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995547)))) (originalCharacters!8355 (_1!33199 (get!19228 lt!1995547)))))))

(declare-fun b!4869875 () Bool)

(declare-fun e!3044359 () Option!13781)

(assert (=> b!4869875 (= e!3044359 call!338206)))

(declare-fun b!4869876 () Bool)

(declare-fun res!2078915 () Bool)

(assert (=> b!4869876 (=> (not res!2078915) (not e!3044361))))

(assert (=> b!4869876 (= res!2078915 (= (++!12186 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995547)))) (_2!33199 (get!19228 lt!1995547))) (_2!33199 (v!49698 lt!1994876))))))

(declare-fun b!4869877 () Bool)

(declare-fun lt!1995550 () Option!13781)

(declare-fun lt!1995548 () Option!13781)

(assert (=> b!4869877 (= e!3044359 (ite (and ((_ is None!13780) lt!1995550) ((_ is None!13780) lt!1995548)) None!13780 (ite ((_ is None!13780) lt!1995548) lt!1995550 (ite ((_ is None!13780) lt!1995550) lt!1995548 (ite (>= (size!36869 (_1!33199 (v!49698 lt!1995550))) (size!36869 (_1!33199 (v!49698 lt!1995548)))) lt!1995550 lt!1995548)))))))

(assert (=> b!4869877 (= lt!1995550 call!338206)))

(assert (=> b!4869877 (= lt!1995548 (maxPrefix!4549 thiss!11777 (t!363995 rules!1248) (_2!33199 (v!49698 lt!1994876))))))

(declare-fun b!4869878 () Bool)

(declare-fun e!3044360 () Bool)

(assert (=> b!4869878 (= e!3044360 e!3044361)))

(declare-fun res!2078918 () Bool)

(assert (=> b!4869878 (=> (not res!2078918) (not e!3044361))))

(assert (=> b!4869878 (= res!2078918 (isDefined!10849 lt!1995547))))

(declare-fun b!4869879 () Bool)

(declare-fun res!2078916 () Bool)

(assert (=> b!4869879 (=> (not res!2078916) (not e!3044361))))

(assert (=> b!4869879 (= res!2078916 (= (value!258054 (_1!33199 (get!19228 lt!1995547))) (apply!13502 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995547)))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995547)))))))))

(declare-fun b!4869880 () Bool)

(assert (=> b!4869880 (= e!3044361 (contains!19394 rules!1248 (rule!11164 (_1!33199 (get!19228 lt!1995547)))))))

(declare-fun b!4869874 () Bool)

(declare-fun res!2078914 () Bool)

(assert (=> b!4869874 (=> (not res!2078914) (not e!3044361))))

(assert (=> b!4869874 (= res!2078914 (< (size!36875 (_2!33199 (get!19228 lt!1995547))) (size!36875 (_2!33199 (v!49698 lt!1994876)))))))

(declare-fun d!1563849 () Bool)

(assert (=> d!1563849 e!3044360))

(declare-fun res!2078912 () Bool)

(assert (=> d!1563849 (=> res!2078912 e!3044360)))

(assert (=> d!1563849 (= res!2078912 (isEmpty!29936 lt!1995547))))

(assert (=> d!1563849 (= lt!1995547 e!3044359)))

(declare-fun c!828344 () Bool)

(assert (=> d!1563849 (= c!828344 (and ((_ is Cons!55943) rules!1248) ((_ is Nil!55943) (t!363995 rules!1248))))))

(declare-fun lt!1995549 () Unit!145952)

(declare-fun lt!1995546 () Unit!145952)

(assert (=> d!1563849 (= lt!1995549 lt!1995546)))

(assert (=> d!1563849 (isPrefix!4766 (_2!33199 (v!49698 lt!1994876)) (_2!33199 (v!49698 lt!1994876)))))

(assert (=> d!1563849 (= lt!1995546 (lemmaIsPrefixRefl!3163 (_2!33199 (v!49698 lt!1994876)) (_2!33199 (v!49698 lt!1994876))))))

(assert (=> d!1563849 (rulesValidInductive!3021 thiss!11777 rules!1248)))

(assert (=> d!1563849 (= (maxPrefix!4549 thiss!11777 rules!1248 (_2!33199 (v!49698 lt!1994876))) lt!1995547)))

(assert (= (and d!1563849 c!828344) b!4869875))

(assert (= (and d!1563849 (not c!828344)) b!4869877))

(assert (= (or b!4869875 b!4869877) bm!338201))

(assert (= (and d!1563849 (not res!2078912)) b!4869878))

(assert (= (and b!4869878 res!2078918) b!4869873))

(assert (= (and b!4869873 res!2078917) b!4869874))

(assert (= (and b!4869874 res!2078914) b!4869876))

(assert (= (and b!4869876 res!2078915) b!4869879))

(assert (= (and b!4869879 res!2078916) b!4869872))

(assert (= (and b!4869872 res!2078913) b!4869880))

(declare-fun m!5870114 () Bool)

(assert (=> b!4869877 m!5870114))

(declare-fun m!5870116 () Bool)

(assert (=> b!4869880 m!5870116))

(declare-fun m!5870118 () Bool)

(assert (=> b!4869880 m!5870118))

(assert (=> b!4869876 m!5870116))

(declare-fun m!5870120 () Bool)

(assert (=> b!4869876 m!5870120))

(assert (=> b!4869876 m!5870120))

(declare-fun m!5870122 () Bool)

(assert (=> b!4869876 m!5870122))

(assert (=> b!4869876 m!5870122))

(declare-fun m!5870126 () Bool)

(assert (=> b!4869876 m!5870126))

(assert (=> b!4869872 m!5870116))

(assert (=> b!4869872 m!5870120))

(assert (=> b!4869872 m!5870120))

(assert (=> b!4869872 m!5870122))

(assert (=> b!4869872 m!5870122))

(declare-fun m!5870128 () Bool)

(assert (=> b!4869872 m!5870128))

(declare-fun m!5870130 () Bool)

(assert (=> b!4869878 m!5870130))

(assert (=> b!4869874 m!5870116))

(declare-fun m!5870132 () Bool)

(assert (=> b!4869874 m!5870132))

(assert (=> b!4869874 m!5868890))

(assert (=> b!4869873 m!5870116))

(assert (=> b!4869873 m!5870120))

(assert (=> b!4869873 m!5870120))

(assert (=> b!4869873 m!5870122))

(assert (=> b!4869879 m!5870116))

(declare-fun m!5870134 () Bool)

(assert (=> b!4869879 m!5870134))

(assert (=> b!4869879 m!5870134))

(declare-fun m!5870136 () Bool)

(assert (=> b!4869879 m!5870136))

(declare-fun m!5870138 () Bool)

(assert (=> d!1563849 m!5870138))

(declare-fun m!5870140 () Bool)

(assert (=> d!1563849 m!5870140))

(declare-fun m!5870142 () Bool)

(assert (=> d!1563849 m!5870142))

(assert (=> d!1563849 m!5868276))

(declare-fun m!5870144 () Bool)

(assert (=> bm!338201 m!5870144))

(assert (=> d!1563379 d!1563849))

(declare-fun d!1563859 () Bool)

(declare-fun lt!1995557 () Int)

(assert (=> d!1563859 (= lt!1995557 (size!36875 (list!17495 (left!40633 (c!828058 input!661)))))))

(assert (=> d!1563859 (= lt!1995557 (ite ((_ is Empty!14573) (left!40633 (c!828058 input!661))) 0 (ite ((_ is Leaf!24300) (left!40633 (c!828058 input!661))) (csize!29377 (left!40633 (c!828058 input!661))) (csize!29376 (left!40633 (c!828058 input!661))))))))

(assert (=> d!1563859 (= (size!36876 (left!40633 (c!828058 input!661))) lt!1995557)))

(declare-fun bs!1174568 () Bool)

(assert (= bs!1174568 d!1563859))

(assert (=> bs!1174568 m!5868932))

(assert (=> bs!1174568 m!5868932))

(assert (=> bs!1174568 m!5870032))

(assert (=> d!1563369 d!1563859))

(declare-fun d!1563861 () Bool)

(declare-fun lt!1995558 () Int)

(assert (=> d!1563861 (= lt!1995558 (size!36875 (list!17495 (right!40963 (c!828058 input!661)))))))

(assert (=> d!1563861 (= lt!1995558 (ite ((_ is Empty!14573) (right!40963 (c!828058 input!661))) 0 (ite ((_ is Leaf!24300) (right!40963 (c!828058 input!661))) (csize!29377 (right!40963 (c!828058 input!661))) (csize!29376 (right!40963 (c!828058 input!661))))))))

(assert (=> d!1563861 (= (size!36876 (right!40963 (c!828058 input!661))) lt!1995558)))

(declare-fun bs!1174569 () Bool)

(assert (= bs!1174569 d!1563861))

(assert (=> bs!1174569 m!5868934))

(assert (=> bs!1174569 m!5868934))

(assert (=> bs!1174569 m!5870034))

(assert (=> d!1563369 d!1563861))

(declare-fun d!1563863 () Bool)

(declare-fun res!2078932 () Bool)

(declare-fun e!3044368 () Bool)

(assert (=> d!1563863 (=> res!2078932 e!3044368)))

(assert (=> d!1563863 (= res!2078932 ((_ is Nil!55943) rules!1248))))

(assert (=> d!1563863 (= (forall!13050 rules!1248 lambda!243452) e!3044368)))

(declare-fun b!4869898 () Bool)

(declare-fun e!3044369 () Bool)

(assert (=> b!4869898 (= e!3044368 e!3044369)))

(declare-fun res!2078933 () Bool)

(assert (=> b!4869898 (=> (not res!2078933) (not e!3044369))))

(assert (=> b!4869898 (= res!2078933 (dynLambda!22466 lambda!243452 (h!62391 rules!1248)))))

(declare-fun b!4869899 () Bool)

(assert (=> b!4869899 (= e!3044369 (forall!13050 (t!363995 rules!1248) lambda!243452))))

(assert (= (and d!1563863 (not res!2078932)) b!4869898))

(assert (= (and b!4869898 res!2078933) b!4869899))

(declare-fun b_lambda!193621 () Bool)

(assert (=> (not b_lambda!193621) (not b!4869898)))

(declare-fun m!5870146 () Bool)

(assert (=> b!4869898 m!5870146))

(declare-fun m!5870148 () Bool)

(assert (=> b!4869899 m!5870148))

(assert (=> d!1563233 d!1563863))

(declare-fun d!1563865 () Bool)

(assert (=> d!1563865 (= (inv!71860 (xs!17881 (right!40963 (c!828058 totalInput!332)))) (<= (size!36875 (innerList!14661 (xs!17881 (right!40963 (c!828058 totalInput!332))))) 2147483647))))

(declare-fun bs!1174570 () Bool)

(assert (= bs!1174570 d!1563865))

(declare-fun m!5870154 () Bool)

(assert (=> bs!1174570 m!5870154))

(assert (=> b!4869160 d!1563865))

(declare-fun b!4869901 () Bool)

(declare-fun e!3044371 () Bool)

(declare-fun lt!1995559 () Bool)

(declare-fun call!338208 () Bool)

(assert (=> b!4869901 (= e!3044371 (= lt!1995559 call!338208))))

(declare-fun b!4869902 () Bool)

(declare-fun res!2078936 () Bool)

(declare-fun e!3044372 () Bool)

(assert (=> b!4869902 (=> (not res!2078936) (not e!3044372))))

(assert (=> b!4869902 (= res!2078936 (isEmpty!29943 (tail!9559 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136))))))))

(declare-fun bm!338203 () Bool)

(assert (=> bm!338203 (= call!338208 (isEmpty!29943 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))))))

(declare-fun b!4869903 () Bool)

(declare-fun res!2078934 () Bool)

(declare-fun e!3044370 () Bool)

(assert (=> b!4869903 (=> res!2078934 e!3044370)))

(assert (=> b!4869903 (= res!2078934 (not ((_ is ElementMatch!13107) (regex!8032 (h!62391 rules!1248)))))))

(declare-fun e!3044373 () Bool)

(assert (=> b!4869903 (= e!3044373 e!3044370)))

(declare-fun b!4869904 () Bool)

(declare-fun e!3044376 () Bool)

(declare-fun e!3044374 () Bool)

(assert (=> b!4869904 (= e!3044376 e!3044374)))

(declare-fun res!2078941 () Bool)

(assert (=> b!4869904 (=> res!2078941 e!3044374)))

(assert (=> b!4869904 (= res!2078941 call!338208)))

(declare-fun b!4869905 () Bool)

(assert (=> b!4869905 (= e!3044371 e!3044373)))

(declare-fun c!828349 () Bool)

(assert (=> b!4869905 (= c!828349 ((_ is EmptyLang!13107) (regex!8032 (h!62391 rules!1248))))))

(declare-fun b!4869906 () Bool)

(assert (=> b!4869906 (= e!3044370 e!3044376)))

(declare-fun res!2078938 () Bool)

(assert (=> b!4869906 (=> (not res!2078938) (not e!3044376))))

(assert (=> b!4869906 (= res!2078938 (not lt!1995559))))

(declare-fun b!4869907 () Bool)

(declare-fun res!2078940 () Bool)

(assert (=> b!4869907 (=> res!2078940 e!3044370)))

(assert (=> b!4869907 (= res!2078940 e!3044372)))

(declare-fun res!2078939 () Bool)

(assert (=> b!4869907 (=> (not res!2078939) (not e!3044372))))

(assert (=> b!4869907 (= res!2078939 lt!1995559)))

(declare-fun b!4869908 () Bool)

(assert (=> b!4869908 (= e!3044373 (not lt!1995559))))

(declare-fun b!4869909 () Bool)

(assert (=> b!4869909 (= e!3044372 (= (head!10413 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))) (c!828059 (regex!8032 (h!62391 rules!1248)))))))

(declare-fun d!1563867 () Bool)

(assert (=> d!1563867 e!3044371))

(declare-fun c!828347 () Bool)

(assert (=> d!1563867 (= c!828347 ((_ is EmptyExpr!13107) (regex!8032 (h!62391 rules!1248))))))

(declare-fun e!3044375 () Bool)

(assert (=> d!1563867 (= lt!1995559 e!3044375)))

(declare-fun c!828348 () Bool)

(assert (=> d!1563867 (= c!828348 (isEmpty!29943 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))))))

(assert (=> d!1563867 (validRegex!5867 (regex!8032 (h!62391 rules!1248)))))

(assert (=> d!1563867 (= (matchR!6492 (regex!8032 (h!62391 rules!1248)) (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))) lt!1995559)))

(declare-fun b!4869900 () Bool)

(declare-fun res!2078937 () Bool)

(assert (=> b!4869900 (=> res!2078937 e!3044374)))

(assert (=> b!4869900 (= res!2078937 (not (isEmpty!29943 (tail!9559 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))))))))

(declare-fun b!4869910 () Bool)

(declare-fun res!2078935 () Bool)

(assert (=> b!4869910 (=> (not res!2078935) (not e!3044372))))

(assert (=> b!4869910 (= res!2078935 (not call!338208))))

(declare-fun b!4869911 () Bool)

(assert (=> b!4869911 (= e!3044375 (matchR!6492 (derivativeStep!3865 (regex!8032 (h!62391 rules!1248)) (head!10413 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136))))) (tail!9559 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136))))))))

(declare-fun b!4869912 () Bool)

(assert (=> b!4869912 (= e!3044375 (nullable!4541 (regex!8032 (h!62391 rules!1248))))))

(declare-fun b!4869913 () Bool)

(assert (=> b!4869913 (= e!3044374 (not (= (head!10413 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1995136 lt!1995136 (size!36875 lt!1995136)))) (c!828059 (regex!8032 (h!62391 rules!1248))))))))

(assert (= (and d!1563867 c!828348) b!4869912))

(assert (= (and d!1563867 (not c!828348)) b!4869911))

(assert (= (and d!1563867 c!828347) b!4869901))

(assert (= (and d!1563867 (not c!828347)) b!4869905))

(assert (= (and b!4869905 c!828349) b!4869908))

(assert (= (and b!4869905 (not c!828349)) b!4869903))

(assert (= (and b!4869903 (not res!2078934)) b!4869907))

(assert (= (and b!4869907 res!2078939) b!4869910))

(assert (= (and b!4869910 res!2078935) b!4869902))

(assert (= (and b!4869902 res!2078936) b!4869909))

(assert (= (and b!4869907 (not res!2078940)) b!4869906))

(assert (= (and b!4869906 res!2078938) b!4869904))

(assert (= (and b!4869904 (not res!2078941)) b!4869900))

(assert (= (and b!4869900 (not res!2078937)) b!4869913))

(assert (= (or b!4869901 b!4869910 b!4869904) bm!338203))

(assert (=> d!1563867 m!5868872))

(assert (=> d!1563867 m!5869316))

(declare-fun m!5870182 () Bool)

(assert (=> b!4869909 m!5870182))

(assert (=> b!4869911 m!5870182))

(assert (=> b!4869911 m!5870182))

(declare-fun m!5870184 () Bool)

(assert (=> b!4869911 m!5870184))

(declare-fun m!5870186 () Bool)

(assert (=> b!4869911 m!5870186))

(assert (=> b!4869911 m!5870184))

(assert (=> b!4869911 m!5870186))

(declare-fun m!5870188 () Bool)

(assert (=> b!4869911 m!5870188))

(assert (=> bm!338203 m!5868872))

(assert (=> b!4869900 m!5870186))

(assert (=> b!4869900 m!5870186))

(declare-fun m!5870190 () Bool)

(assert (=> b!4869900 m!5870190))

(assert (=> b!4869912 m!5869398))

(assert (=> b!4869902 m!5870186))

(assert (=> b!4869902 m!5870186))

(assert (=> b!4869902 m!5870190))

(assert (=> b!4869913 m!5870182))

(assert (=> b!4869099 d!1563867))

(assert (=> b!4869099 d!1563549))

(assert (=> b!4869099 d!1563583))

(assert (=> b!4869099 d!1563595))

(assert (=> b!4868827 d!1563729))

(declare-fun b!4869918 () Bool)

(declare-fun e!3044380 () Bool)

(declare-fun e!3044379 () Bool)

(assert (=> b!4869918 (= e!3044380 e!3044379)))

(declare-fun res!2078944 () Bool)

(assert (=> b!4869918 (=> (not res!2078944) (not e!3044379))))

(assert (=> b!4869918 (= res!2078944 (<= (- 1) (- (height!1929 (left!40633 (left!40633 (c!828058 totalInput!332)))) (height!1929 (right!40963 (left!40633 (c!828058 totalInput!332)))))))))

(declare-fun b!4869919 () Bool)

(declare-fun res!2078949 () Bool)

(assert (=> b!4869919 (=> (not res!2078949) (not e!3044379))))

(assert (=> b!4869919 (= res!2078949 (isBalanced!3956 (right!40963 (left!40633 (c!828058 totalInput!332)))))))

(declare-fun d!1563871 () Bool)

(declare-fun res!2078945 () Bool)

(assert (=> d!1563871 (=> res!2078945 e!3044380)))

(assert (=> d!1563871 (= res!2078945 (not ((_ is Node!14573) (left!40633 (c!828058 totalInput!332)))))))

(assert (=> d!1563871 (= (isBalanced!3956 (left!40633 (c!828058 totalInput!332))) e!3044380)))

(declare-fun b!4869920 () Bool)

(declare-fun res!2078948 () Bool)

(assert (=> b!4869920 (=> (not res!2078948) (not e!3044379))))

(assert (=> b!4869920 (= res!2078948 (isBalanced!3956 (left!40633 (left!40633 (c!828058 totalInput!332)))))))

(declare-fun b!4869921 () Bool)

(declare-fun res!2078946 () Bool)

(assert (=> b!4869921 (=> (not res!2078946) (not e!3044379))))

(assert (=> b!4869921 (= res!2078946 (<= (- (height!1929 (left!40633 (left!40633 (c!828058 totalInput!332)))) (height!1929 (right!40963 (left!40633 (c!828058 totalInput!332))))) 1))))

(declare-fun b!4869922 () Bool)

(assert (=> b!4869922 (= e!3044379 (not (isEmpty!29938 (right!40963 (left!40633 (c!828058 totalInput!332))))))))

(declare-fun b!4869923 () Bool)

(declare-fun res!2078947 () Bool)

(assert (=> b!4869923 (=> (not res!2078947) (not e!3044379))))

(assert (=> b!4869923 (= res!2078947 (not (isEmpty!29938 (left!40633 (left!40633 (c!828058 totalInput!332))))))))

(assert (= (and d!1563871 (not res!2078945)) b!4869918))

(assert (= (and b!4869918 res!2078944) b!4869921))

(assert (= (and b!4869921 res!2078946) b!4869920))

(assert (= (and b!4869920 res!2078948) b!4869919))

(assert (= (and b!4869919 res!2078949) b!4869923))

(assert (= (and b!4869923 res!2078947) b!4869922))

(declare-fun m!5870204 () Bool)

(assert (=> b!4869923 m!5870204))

(declare-fun m!5870206 () Bool)

(assert (=> b!4869919 m!5870206))

(declare-fun m!5870208 () Bool)

(assert (=> b!4869920 m!5870208))

(declare-fun m!5870210 () Bool)

(assert (=> b!4869921 m!5870210))

(declare-fun m!5870212 () Bool)

(assert (=> b!4869921 m!5870212))

(assert (=> b!4869918 m!5870210))

(assert (=> b!4869918 m!5870212))

(declare-fun m!5870214 () Bool)

(assert (=> b!4869922 m!5870214))

(assert (=> b!4868873 d!1563871))

(declare-fun d!1563875 () Bool)

(declare-fun lt!1995561 () Bool)

(assert (=> d!1563875 (= lt!1995561 (select (content!9979 rules!1248) (rule!11164 (_1!33199 (get!19228 lt!1994952)))))))

(declare-fun e!3044382 () Bool)

(assert (=> d!1563875 (= lt!1995561 e!3044382)))

(declare-fun res!2078951 () Bool)

(assert (=> d!1563875 (=> (not res!2078951) (not e!3044382))))

(assert (=> d!1563875 (= res!2078951 ((_ is Cons!55943) rules!1248))))

(assert (=> d!1563875 (= (contains!19394 rules!1248 (rule!11164 (_1!33199 (get!19228 lt!1994952)))) lt!1995561)))

(declare-fun b!4869924 () Bool)

(declare-fun e!3044381 () Bool)

(assert (=> b!4869924 (= e!3044382 e!3044381)))

(declare-fun res!2078950 () Bool)

(assert (=> b!4869924 (=> res!2078950 e!3044381)))

(assert (=> b!4869924 (= res!2078950 (= (h!62391 rules!1248) (rule!11164 (_1!33199 (get!19228 lt!1994952)))))))

(declare-fun b!4869925 () Bool)

(assert (=> b!4869925 (= e!3044381 (contains!19394 (t!363995 rules!1248) (rule!11164 (_1!33199 (get!19228 lt!1994952)))))))

(assert (= (and d!1563875 res!2078951) b!4869924))

(assert (= (and b!4869924 (not res!2078950)) b!4869925))

(assert (=> d!1563875 m!5870084))

(declare-fun m!5870216 () Bool)

(assert (=> d!1563875 m!5870216))

(declare-fun m!5870218 () Bool)

(assert (=> b!4869925 m!5870218))

(assert (=> b!4868679 d!1563875))

(assert (=> b!4868679 d!1563631))

(declare-fun b!4869926 () Bool)

(declare-fun e!3044384 () tuple2!59786)

(assert (=> b!4869926 (= e!3044384 (tuple2!59787 Nil!55942 (_2!33199 (v!49698 lt!1995142))))))

(declare-fun b!4869927 () Bool)

(declare-fun e!3044383 () Bool)

(declare-fun lt!1995563 () tuple2!59786)

(assert (=> b!4869927 (= e!3044383 (= (_2!33196 lt!1995563) (_2!33199 (v!49698 lt!1995142))))))

(declare-fun b!4869928 () Bool)

(declare-fun e!3044385 () Bool)

(assert (=> b!4869928 (= e!3044383 e!3044385)))

(declare-fun res!2078952 () Bool)

(assert (=> b!4869928 (= res!2078952 (< (size!36875 (_2!33196 lt!1995563)) (size!36875 (_2!33199 (v!49698 lt!1995142)))))))

(assert (=> b!4869928 (=> (not res!2078952) (not e!3044385))))

(declare-fun b!4869929 () Bool)

(declare-fun lt!1995564 () Option!13781)

(declare-fun lt!1995562 () tuple2!59786)

(assert (=> b!4869929 (= e!3044384 (tuple2!59787 (Cons!55942 (_1!33199 (v!49698 lt!1995564)) (_1!33196 lt!1995562)) (_2!33196 lt!1995562)))))

(assert (=> b!4869929 (= lt!1995562 (lexList!2103 thiss!11777 rules!1248 (_2!33199 (v!49698 lt!1995564))))))

(declare-fun d!1563877 () Bool)

(assert (=> d!1563877 e!3044383))

(declare-fun c!828352 () Bool)

(assert (=> d!1563877 (= c!828352 (> (size!36877 (_1!33196 lt!1995563)) 0))))

(assert (=> d!1563877 (= lt!1995563 e!3044384)))

(declare-fun c!828351 () Bool)

(assert (=> d!1563877 (= c!828351 ((_ is Some!13780) lt!1995564))))

(assert (=> d!1563877 (= lt!1995564 (maxPrefix!4549 thiss!11777 rules!1248 (_2!33199 (v!49698 lt!1995142))))))

(assert (=> d!1563877 (= (lexList!2103 thiss!11777 rules!1248 (_2!33199 (v!49698 lt!1995142))) lt!1995563)))

(declare-fun b!4869930 () Bool)

(assert (=> b!4869930 (= e!3044385 (not (isEmpty!29933 (_1!33196 lt!1995563))))))

(assert (= (and d!1563877 c!828351) b!4869929))

(assert (= (and d!1563877 (not c!828351)) b!4869926))

(assert (= (and d!1563877 c!828352) b!4869928))

(assert (= (and d!1563877 (not c!828352)) b!4869927))

(assert (= (and b!4869928 res!2078952) b!4869930))

(declare-fun m!5870220 () Bool)

(assert (=> b!4869928 m!5870220))

(declare-fun m!5870222 () Bool)

(assert (=> b!4869928 m!5870222))

(declare-fun m!5870224 () Bool)

(assert (=> b!4869929 m!5870224))

(declare-fun m!5870226 () Bool)

(assert (=> d!1563877 m!5870226))

(declare-fun m!5870228 () Bool)

(assert (=> d!1563877 m!5870228))

(declare-fun m!5870230 () Bool)

(assert (=> b!4869930 m!5870230))

(assert (=> b!4869116 d!1563877))

(assert (=> bm!338130 d!1563683))

(declare-fun d!1563879 () Bool)

(assert (=> d!1563879 (= (inv!71860 (xs!17881 (right!40963 (c!828058 input!661)))) (<= (size!36875 (innerList!14661 (xs!17881 (right!40963 (c!828058 input!661))))) 2147483647))))

(declare-fun bs!1174571 () Bool)

(assert (= bs!1174571 d!1563879))

(declare-fun m!5870232 () Bool)

(assert (=> bs!1174571 m!5870232))

(assert (=> b!4869182 d!1563879))

(declare-fun b!4869931 () Bool)

(declare-fun e!3044387 () List!56065)

(assert (=> b!4869931 (= e!3044387 (_2!33199 (get!19228 lt!1994952)))))

(declare-fun b!4869932 () Bool)

(assert (=> b!4869932 (= e!3044387 (Cons!55941 (h!62389 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))) (++!12186 (t!363993 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))) (_2!33199 (get!19228 lt!1994952)))))))

(declare-fun d!1563881 () Bool)

(declare-fun e!3044386 () Bool)

(assert (=> d!1563881 e!3044386))

(declare-fun res!2078953 () Bool)

(assert (=> d!1563881 (=> (not res!2078953) (not e!3044386))))

(declare-fun lt!1995565 () List!56065)

(assert (=> d!1563881 (= res!2078953 (= (content!9976 lt!1995565) ((_ map or) (content!9976 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))) (content!9976 (_2!33199 (get!19228 lt!1994952))))))))

(assert (=> d!1563881 (= lt!1995565 e!3044387)))

(declare-fun c!828353 () Bool)

(assert (=> d!1563881 (= c!828353 ((_ is Nil!55941) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))))))

(assert (=> d!1563881 (= (++!12186 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952)))) (_2!33199 (get!19228 lt!1994952))) lt!1995565)))

(declare-fun b!4869933 () Bool)

(declare-fun res!2078954 () Bool)

(assert (=> b!4869933 (=> (not res!2078954) (not e!3044386))))

(assert (=> b!4869933 (= res!2078954 (= (size!36875 lt!1995565) (+ (size!36875 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952))))) (size!36875 (_2!33199 (get!19228 lt!1994952))))))))

(declare-fun b!4869934 () Bool)

(assert (=> b!4869934 (= e!3044386 (or (not (= (_2!33199 (get!19228 lt!1994952)) Nil!55941)) (= lt!1995565 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1994952)))))))))

(assert (= (and d!1563881 c!828353) b!4869931))

(assert (= (and d!1563881 (not c!828353)) b!4869932))

(assert (= (and d!1563881 res!2078953) b!4869933))

(assert (= (and b!4869933 res!2078954) b!4869934))

(declare-fun m!5870234 () Bool)

(assert (=> b!4869932 m!5870234))

(declare-fun m!5870236 () Bool)

(assert (=> d!1563881 m!5870236))

(assert (=> d!1563881 m!5868358))

(declare-fun m!5870238 () Bool)

(assert (=> d!1563881 m!5870238))

(declare-fun m!5870240 () Bool)

(assert (=> d!1563881 m!5870240))

(declare-fun m!5870242 () Bool)

(assert (=> b!4869933 m!5870242))

(assert (=> b!4869933 m!5868358))

(declare-fun m!5870244 () Bool)

(assert (=> b!4869933 m!5870244))

(assert (=> b!4869933 m!5868366))

(assert (=> b!4868675 d!1563881))

(assert (=> b!4868675 d!1563623))

(assert (=> b!4868675 d!1563625))

(assert (=> b!4868675 d!1563631))

(assert (=> d!1563293 d!1563289))

(declare-fun d!1563883 () Bool)

(assert (=> d!1563883 (isPrefix!4766 lt!1994927 lt!1994921)))

(assert (=> d!1563883 true))

(declare-fun _$45!2129 () Unit!145952)

(assert (=> d!1563883 (= (choose!35596 lt!1994927 lt!1994921) _$45!2129)))

(declare-fun bs!1174572 () Bool)

(assert (= bs!1174572 d!1563883))

(assert (=> bs!1174572 m!5868282))

(assert (=> d!1563293 d!1563883))

(assert (=> b!4868606 d!1563337))

(assert (=> b!4868606 d!1563339))

(declare-fun d!1563885 () Bool)

(declare-fun lt!1995566 () Int)

(assert (=> d!1563885 (>= lt!1995566 0)))

(declare-fun e!3044388 () Int)

(assert (=> d!1563885 (= lt!1995566 e!3044388)))

(declare-fun c!828354 () Bool)

(assert (=> d!1563885 (= c!828354 ((_ is Nil!55941) (t!363993 (_2!33196 lt!1994875))))))

(assert (=> d!1563885 (= (size!36875 (t!363993 (_2!33196 lt!1994875))) lt!1995566)))

(declare-fun b!4869935 () Bool)

(assert (=> b!4869935 (= e!3044388 0)))

(declare-fun b!4869936 () Bool)

(assert (=> b!4869936 (= e!3044388 (+ 1 (size!36875 (t!363993 (t!363993 (_2!33196 lt!1994875))))))))

(assert (= (and d!1563885 c!828354) b!4869935))

(assert (= (and d!1563885 (not c!828354)) b!4869936))

(declare-fun m!5870246 () Bool)

(assert (=> b!4869936 m!5870246))

(assert (=> b!4869078 d!1563885))

(declare-fun d!1563887 () Bool)

(declare-fun lt!1995567 () Int)

(assert (=> d!1563887 (>= lt!1995567 0)))

(declare-fun e!3044389 () Int)

(assert (=> d!1563887 (= lt!1995567 e!3044389)))

(declare-fun c!828355 () Bool)

(assert (=> d!1563887 (= c!828355 ((_ is Nil!55941) (_2!33196 lt!1995141)))))

(assert (=> d!1563887 (= (size!36875 (_2!33196 lt!1995141)) lt!1995567)))

(declare-fun b!4869937 () Bool)

(assert (=> b!4869937 (= e!3044389 0)))

(declare-fun b!4869938 () Bool)

(assert (=> b!4869938 (= e!3044389 (+ 1 (size!36875 (t!363993 (_2!33196 lt!1995141)))))))

(assert (= (and d!1563887 c!828355) b!4869937))

(assert (= (and d!1563887 (not c!828355)) b!4869938))

(declare-fun m!5870248 () Bool)

(assert (=> b!4869938 m!5870248))

(assert (=> b!4869115 d!1563887))

(declare-fun d!1563889 () Bool)

(declare-fun lt!1995568 () Int)

(assert (=> d!1563889 (>= lt!1995568 0)))

(declare-fun e!3044390 () Int)

(assert (=> d!1563889 (= lt!1995568 e!3044390)))

(declare-fun c!828356 () Bool)

(assert (=> d!1563889 (= c!828356 ((_ is Nil!55941) (_2!33199 (v!49698 lt!1994876))))))

(assert (=> d!1563889 (= (size!36875 (_2!33199 (v!49698 lt!1994876))) lt!1995568)))

(declare-fun b!4869939 () Bool)

(assert (=> b!4869939 (= e!3044390 0)))

(declare-fun b!4869940 () Bool)

(assert (=> b!4869940 (= e!3044390 (+ 1 (size!36875 (t!363993 (_2!33199 (v!49698 lt!1994876))))))))

(assert (= (and d!1563889 c!828356) b!4869939))

(assert (= (and d!1563889 (not c!828356)) b!4869940))

(declare-fun m!5870250 () Bool)

(assert (=> b!4869940 m!5870250))

(assert (=> b!4869115 d!1563889))

(declare-fun b!4869941 () Bool)

(declare-fun e!3044392 () Bool)

(declare-fun e!3044391 () Bool)

(assert (=> b!4869941 (= e!3044392 e!3044391)))

(declare-fun res!2078955 () Bool)

(assert (=> b!4869941 (=> (not res!2078955) (not e!3044391))))

(assert (=> b!4869941 (= res!2078955 (<= (- 1) (- (height!1929 (left!40633 (right!40963 (c!828058 totalInput!332)))) (height!1929 (right!40963 (right!40963 (c!828058 totalInput!332)))))))))

(declare-fun b!4869942 () Bool)

(declare-fun res!2078960 () Bool)

(assert (=> b!4869942 (=> (not res!2078960) (not e!3044391))))

(assert (=> b!4869942 (= res!2078960 (isBalanced!3956 (right!40963 (right!40963 (c!828058 totalInput!332)))))))

(declare-fun d!1563891 () Bool)

(declare-fun res!2078956 () Bool)

(assert (=> d!1563891 (=> res!2078956 e!3044392)))

(assert (=> d!1563891 (= res!2078956 (not ((_ is Node!14573) (right!40963 (c!828058 totalInput!332)))))))

(assert (=> d!1563891 (= (isBalanced!3956 (right!40963 (c!828058 totalInput!332))) e!3044392)))

(declare-fun b!4869943 () Bool)

(declare-fun res!2078959 () Bool)

(assert (=> b!4869943 (=> (not res!2078959) (not e!3044391))))

(assert (=> b!4869943 (= res!2078959 (isBalanced!3956 (left!40633 (right!40963 (c!828058 totalInput!332)))))))

(declare-fun b!4869944 () Bool)

(declare-fun res!2078957 () Bool)

(assert (=> b!4869944 (=> (not res!2078957) (not e!3044391))))

(assert (=> b!4869944 (= res!2078957 (<= (- (height!1929 (left!40633 (right!40963 (c!828058 totalInput!332)))) (height!1929 (right!40963 (right!40963 (c!828058 totalInput!332))))) 1))))

(declare-fun b!4869945 () Bool)

(assert (=> b!4869945 (= e!3044391 (not (isEmpty!29938 (right!40963 (right!40963 (c!828058 totalInput!332))))))))

(declare-fun b!4869946 () Bool)

(declare-fun res!2078958 () Bool)

(assert (=> b!4869946 (=> (not res!2078958) (not e!3044391))))

(assert (=> b!4869946 (= res!2078958 (not (isEmpty!29938 (left!40633 (right!40963 (c!828058 totalInput!332))))))))

(assert (= (and d!1563891 (not res!2078956)) b!4869941))

(assert (= (and b!4869941 res!2078955) b!4869944))

(assert (= (and b!4869944 res!2078957) b!4869943))

(assert (= (and b!4869943 res!2078959) b!4869942))

(assert (= (and b!4869942 res!2078960) b!4869946))

(assert (= (and b!4869946 res!2078958) b!4869945))

(declare-fun m!5870252 () Bool)

(assert (=> b!4869946 m!5870252))

(declare-fun m!5870254 () Bool)

(assert (=> b!4869942 m!5870254))

(declare-fun m!5870256 () Bool)

(assert (=> b!4869943 m!5870256))

(assert (=> b!4869944 m!5870094))

(assert (=> b!4869944 m!5870096))

(assert (=> b!4869941 m!5870094))

(assert (=> b!4869941 m!5870096))

(declare-fun m!5870258 () Bool)

(assert (=> b!4869945 m!5870258))

(assert (=> b!4868872 d!1563891))

(assert (=> d!1563375 d!1563789))

(assert (=> d!1563375 d!1563521))

(declare-fun d!1563893 () Bool)

(assert (=> d!1563893 (= (isDefined!10849 (maxPrefixZipper!563 thiss!11777 (t!363995 rules!1248) (list!17492 input!661))) (not (isEmpty!29936 (maxPrefixZipper!563 thiss!11777 (t!363995 rules!1248) (list!17492 input!661)))))))

(declare-fun bs!1174573 () Bool)

(assert (= bs!1174573 d!1563893))

(assert (=> bs!1174573 m!5868388))

(declare-fun m!5870260 () Bool)

(assert (=> bs!1174573 m!5870260))

(assert (=> d!1563375 d!1563893))

(assert (=> d!1563375 d!1563715))

(declare-fun d!1563895 () Bool)

(assert (=> d!1563895 (isPrefix!4766 lt!1995109 lt!1995103)))

(declare-fun lt!1995569 () Unit!145952)

(assert (=> d!1563895 (= lt!1995569 (choose!35596 lt!1995109 lt!1995103))))

(assert (=> d!1563895 (= (lemmaIsPrefixRefl!3163 lt!1995109 lt!1995103) lt!1995569)))

(declare-fun bs!1174574 () Bool)

(assert (= bs!1174574 d!1563895))

(assert (=> bs!1174574 m!5868830))

(declare-fun m!5870262 () Bool)

(assert (=> bs!1174574 m!5870262))

(assert (=> d!1563375 d!1563895))

(declare-fun d!1563897 () Bool)

(declare-fun e!3044395 () Bool)

(assert (=> d!1563897 e!3044395))

(declare-fun res!2078964 () Bool)

(assert (=> d!1563897 (=> res!2078964 e!3044395)))

(declare-fun lt!1995570 () Bool)

(assert (=> d!1563897 (= res!2078964 (not lt!1995570))))

(declare-fun e!3044394 () Bool)

(assert (=> d!1563897 (= lt!1995570 e!3044394)))

(declare-fun res!2078963 () Bool)

(assert (=> d!1563897 (=> res!2078963 e!3044394)))

(assert (=> d!1563897 (= res!2078963 ((_ is Nil!55941) lt!1995109))))

(assert (=> d!1563897 (= (isPrefix!4766 lt!1995109 lt!1995103) lt!1995570)))

(declare-fun b!4869947 () Bool)

(declare-fun e!3044393 () Bool)

(assert (=> b!4869947 (= e!3044394 e!3044393)))

(declare-fun res!2078961 () Bool)

(assert (=> b!4869947 (=> (not res!2078961) (not e!3044393))))

(assert (=> b!4869947 (= res!2078961 (not ((_ is Nil!55941) lt!1995103)))))

(declare-fun b!4869950 () Bool)

(assert (=> b!4869950 (= e!3044395 (>= (size!36875 lt!1995103) (size!36875 lt!1995109)))))

(declare-fun b!4869948 () Bool)

(declare-fun res!2078962 () Bool)

(assert (=> b!4869948 (=> (not res!2078962) (not e!3044393))))

(assert (=> b!4869948 (= res!2078962 (= (head!10413 lt!1995109) (head!10413 lt!1995103)))))

(declare-fun b!4869949 () Bool)

(assert (=> b!4869949 (= e!3044393 (isPrefix!4766 (tail!9559 lt!1995109) (tail!9559 lt!1995103)))))

(assert (= (and d!1563897 (not res!2078963)) b!4869947))

(assert (= (and b!4869947 res!2078961) b!4869948))

(assert (= (and b!4869948 res!2078962) b!4869949))

(assert (= (and d!1563897 (not res!2078964)) b!4869950))

(declare-fun m!5870264 () Bool)

(assert (=> b!4869950 m!5870264))

(declare-fun m!5870266 () Bool)

(assert (=> b!4869950 m!5870266))

(declare-fun m!5870268 () Bool)

(assert (=> b!4869948 m!5870268))

(declare-fun m!5870270 () Bool)

(assert (=> b!4869948 m!5870270))

(declare-fun m!5870272 () Bool)

(assert (=> b!4869949 m!5870272))

(declare-fun m!5870274 () Bool)

(assert (=> b!4869949 m!5870274))

(assert (=> b!4869949 m!5870272))

(assert (=> b!4869949 m!5870274))

(declare-fun m!5870276 () Bool)

(assert (=> b!4869949 m!5870276))

(assert (=> d!1563375 d!1563897))

(assert (=> d!1563375 d!1563163))

(declare-fun b!4869951 () Bool)

(declare-fun e!3044398 () Option!13781)

(assert (=> b!4869951 (= e!3044398 None!13780)))

(declare-fun b!4869952 () Bool)

(declare-fun res!2078967 () Bool)

(declare-fun e!3044397 () Bool)

(assert (=> b!4869952 (=> (not res!2078967) (not e!3044397))))

(declare-fun lt!1995575 () Option!13781)

(assert (=> b!4869952 (= res!2078967 (< (size!36875 (_2!33199 (get!19228 lt!1995575))) (size!36875 lt!1994850)))))

(declare-fun b!4869953 () Bool)

(declare-fun lt!1995571 () tuple2!59798)

(assert (=> b!4869953 (= e!3044398 (Some!13780 (tuple2!59793 (Token!14649 (apply!13502 (transformation!8032 (h!62391 rules!1248)) (seqFromList!5898 (_1!33202 lt!1995571))) (h!62391 rules!1248) (size!36870 (seqFromList!5898 (_1!33202 lt!1995571))) (_1!33202 lt!1995571)) (_2!33202 lt!1995571))))))

(declare-fun lt!1995574 () Unit!145952)

(assert (=> b!4869953 (= lt!1995574 (longestMatchIsAcceptedByMatchOrIsEmpty!1684 (regex!8032 (h!62391 rules!1248)) lt!1994850))))

(declare-fun res!2078965 () Bool)

(assert (=> b!4869953 (= res!2078965 (isEmpty!29943 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1994850 lt!1994850 (size!36875 lt!1994850)))))))

(declare-fun e!3044396 () Bool)

(assert (=> b!4869953 (=> res!2078965 e!3044396)))

(assert (=> b!4869953 e!3044396))

(declare-fun lt!1995573 () Unit!145952)

(assert (=> b!4869953 (= lt!1995573 lt!1995574)))

(declare-fun lt!1995572 () Unit!145952)

(assert (=> b!4869953 (= lt!1995572 (lemmaSemiInverse!2552 (transformation!8032 (h!62391 rules!1248)) (seqFromList!5898 (_1!33202 lt!1995571))))))

(declare-fun b!4869954 () Bool)

(declare-fun e!3044399 () Bool)

(assert (=> b!4869954 (= e!3044399 e!3044397)))

(declare-fun res!2078966 () Bool)

(assert (=> b!4869954 (=> (not res!2078966) (not e!3044397))))

(assert (=> b!4869954 (= res!2078966 (matchR!6492 (regex!8032 (h!62391 rules!1248)) (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995575))))))))

(declare-fun b!4869955 () Bool)

(assert (=> b!4869955 (= e!3044396 (matchR!6492 (regex!8032 (h!62391 rules!1248)) (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) lt!1994850 lt!1994850 (size!36875 lt!1994850)))))))

(declare-fun b!4869956 () Bool)

(declare-fun res!2078970 () Bool)

(assert (=> b!4869956 (=> (not res!2078970) (not e!3044397))))

(assert (=> b!4869956 (= res!2078970 (= (value!258054 (_1!33199 (get!19228 lt!1995575))) (apply!13502 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995575)))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995575)))))))))

(declare-fun b!4869957 () Bool)

(assert (=> b!4869957 (= e!3044397 (= (size!36869 (_1!33199 (get!19228 lt!1995575))) (size!36875 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995575))))))))

(declare-fun d!1563899 () Bool)

(assert (=> d!1563899 e!3044399))

(declare-fun res!2078968 () Bool)

(assert (=> d!1563899 (=> res!2078968 e!3044399)))

(assert (=> d!1563899 (= res!2078968 (isEmpty!29936 lt!1995575))))

(assert (=> d!1563899 (= lt!1995575 e!3044398)))

(declare-fun c!828357 () Bool)

(assert (=> d!1563899 (= c!828357 (isEmpty!29943 (_1!33202 lt!1995571)))))

(assert (=> d!1563899 (= lt!1995571 (findLongestMatch!1635 (regex!8032 (h!62391 rules!1248)) lt!1994850))))

(assert (=> d!1563899 (ruleValid!3629 thiss!11777 (h!62391 rules!1248))))

(assert (=> d!1563899 (= (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) lt!1994850) lt!1995575)))

(declare-fun b!4869958 () Bool)

(declare-fun res!2078969 () Bool)

(assert (=> b!4869958 (=> (not res!2078969) (not e!3044397))))

(assert (=> b!4869958 (= res!2078969 (= (++!12186 (list!17492 (charsOf!5337 (_1!33199 (get!19228 lt!1995575)))) (_2!33199 (get!19228 lt!1995575))) lt!1994850))))

(declare-fun b!4869959 () Bool)

(declare-fun res!2078971 () Bool)

(assert (=> b!4869959 (=> (not res!2078971) (not e!3044397))))

(assert (=> b!4869959 (= res!2078971 (= (rule!11164 (_1!33199 (get!19228 lt!1995575))) (h!62391 rules!1248)))))

(assert (= (and d!1563899 c!828357) b!4869951))

(assert (= (and d!1563899 (not c!828357)) b!4869953))

(assert (= (and b!4869953 (not res!2078965)) b!4869955))

(assert (= (and d!1563899 (not res!2078968)) b!4869954))

(assert (= (and b!4869954 res!2078966) b!4869958))

(assert (= (and b!4869958 res!2078969) b!4869952))

(assert (= (and b!4869952 res!2078967) b!4869959))

(assert (= (and b!4869959 res!2078971) b!4869956))

(assert (= (and b!4869956 res!2078970) b!4869957))

(assert (=> b!4869953 m!5868158))

(declare-fun m!5870278 () Bool)

(assert (=> b!4869953 m!5870278))

(declare-fun m!5870280 () Bool)

(assert (=> b!4869953 m!5870280))

(assert (=> b!4869953 m!5870278))

(declare-fun m!5870282 () Bool)

(assert (=> b!4869953 m!5870282))

(declare-fun m!5870286 () Bool)

(assert (=> b!4869953 m!5870286))

(assert (=> b!4869953 m!5868860))

(declare-fun m!5870290 () Bool)

(assert (=> b!4869953 m!5870290))

(assert (=> b!4869953 m!5870278))

(declare-fun m!5870294 () Bool)

(assert (=> b!4869953 m!5870294))

(assert (=> b!4869953 m!5868860))

(assert (=> b!4869953 m!5868158))

(declare-fun m!5870296 () Bool)

(assert (=> b!4869953 m!5870296))

(assert (=> b!4869953 m!5870278))

(declare-fun m!5870298 () Bool)

(assert (=> b!4869958 m!5870298))

(declare-fun m!5870300 () Bool)

(assert (=> b!4869958 m!5870300))

(assert (=> b!4869958 m!5870300))

(declare-fun m!5870302 () Bool)

(assert (=> b!4869958 m!5870302))

(assert (=> b!4869958 m!5870302))

(declare-fun m!5870306 () Bool)

(assert (=> b!4869958 m!5870306))

(assert (=> b!4869959 m!5870298))

(assert (=> b!4869955 m!5868860))

(assert (=> b!4869955 m!5868158))

(assert (=> b!4869955 m!5868860))

(assert (=> b!4869955 m!5868158))

(assert (=> b!4869955 m!5870296))

(declare-fun m!5870308 () Bool)

(assert (=> b!4869955 m!5870308))

(assert (=> b!4869954 m!5870298))

(assert (=> b!4869954 m!5870300))

(assert (=> b!4869954 m!5870300))

(assert (=> b!4869954 m!5870302))

(assert (=> b!4869954 m!5870302))

(declare-fun m!5870310 () Bool)

(assert (=> b!4869954 m!5870310))

(assert (=> b!4869952 m!5870298))

(declare-fun m!5870312 () Bool)

(assert (=> b!4869952 m!5870312))

(assert (=> b!4869952 m!5868158))

(assert (=> b!4869956 m!5870298))

(declare-fun m!5870314 () Bool)

(assert (=> b!4869956 m!5870314))

(assert (=> b!4869956 m!5870314))

(declare-fun m!5870316 () Bool)

(assert (=> b!4869956 m!5870316))

(declare-fun m!5870318 () Bool)

(assert (=> d!1563899 m!5870318))

(declare-fun m!5870320 () Bool)

(assert (=> d!1563899 m!5870320))

(declare-fun m!5870322 () Bool)

(assert (=> d!1563899 m!5870322))

(assert (=> d!1563899 m!5868548))

(assert (=> b!4869957 m!5870298))

(declare-fun m!5870324 () Bool)

(assert (=> b!4869957 m!5870324))

(assert (=> bm!338119 d!1563899))

(declare-fun d!1563905 () Bool)

(assert (=> d!1563905 (= (head!10413 lt!1994927) (h!62389 lt!1994927))))

(assert (=> b!4868840 d!1563905))

(declare-fun d!1563907 () Bool)

(assert (=> d!1563907 (= (head!10413 lt!1994921) (h!62389 lt!1994921))))

(assert (=> b!4868840 d!1563907))

(declare-fun d!1563909 () Bool)

(declare-fun lt!1995579 () Int)

(assert (=> d!1563909 (>= lt!1995579 0)))

(declare-fun e!3044402 () Int)

(assert (=> d!1563909 (= lt!1995579 e!3044402)))

(declare-fun c!828358 () Bool)

(assert (=> d!1563909 (= c!828358 ((_ is Nil!55941) (list!17500 (xs!17881 (c!828058 totalInput!332)))))))

(assert (=> d!1563909 (= (size!36875 (list!17500 (xs!17881 (c!828058 totalInput!332)))) lt!1995579)))

(declare-fun b!4869964 () Bool)

(assert (=> b!4869964 (= e!3044402 0)))

(declare-fun b!4869965 () Bool)

(assert (=> b!4869965 (= e!3044402 (+ 1 (size!36875 (t!363993 (list!17500 (xs!17881 (c!828058 totalInput!332)))))))))

(assert (= (and d!1563909 c!828358) b!4869964))

(assert (= (and d!1563909 (not c!828358)) b!4869965))

(declare-fun m!5870326 () Bool)

(assert (=> b!4869965 m!5870326))

(assert (=> b!4869139 d!1563909))

(declare-fun d!1563911 () Bool)

(assert (=> d!1563911 (= (list!17500 (xs!17881 (c!828058 totalInput!332))) (innerList!14661 (xs!17881 (c!828058 totalInput!332))))))

(assert (=> b!4869139 d!1563911))

(assert (=> b!4868961 d!1563493))

(declare-fun d!1563913 () Bool)

(assert (=> d!1563913 (= (apply!13502 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995077))))) (dynLambda!22468 (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077))))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995077))))))))

(declare-fun b_lambda!193623 () Bool)

(assert (=> (not b_lambda!193623) (not d!1563913)))

(declare-fun t!364073 () Bool)

(declare-fun tb!257895 () Bool)

(assert (=> (and b!4868405 (= (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))) t!364073) tb!257895))

(declare-fun result!321054 () Bool)

(assert (=> tb!257895 (= result!321054 (inv!21 (dynLambda!22468 (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077))))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995077)))))))))

(declare-fun m!5870328 () Bool)

(assert (=> tb!257895 m!5870328))

(assert (=> d!1563913 t!364073))

(declare-fun b_and!342883 () Bool)

(assert (= b_and!342853 (and (=> t!364073 result!321054) b_and!342883)))

(declare-fun tb!257897 () Bool)

(declare-fun t!364075 () Bool)

(assert (=> (and b!4868583 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))) t!364075) tb!257897))

(declare-fun result!321056 () Bool)

(assert (= result!321056 result!321054))

(assert (=> d!1563913 t!364075))

(declare-fun b_and!342885 () Bool)

(assert (= b_and!342855 (and (=> t!364075 result!321056) b_and!342885)))

(declare-fun tb!257899 () Bool)

(declare-fun t!364077 () Bool)

(assert (=> (and b!4869164 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))) t!364077) tb!257899))

(declare-fun result!321058 () Bool)

(assert (= result!321058 result!321054))

(assert (=> d!1563913 t!364077))

(declare-fun b_and!342887 () Bool)

(assert (= b_and!342857 (and (=> t!364077 result!321058) b_and!342887)))

(assert (=> d!1563913 m!5868722))

(declare-fun m!5870330 () Bool)

(assert (=> d!1563913 m!5870330))

(assert (=> b!4868961 d!1563913))

(declare-fun d!1563917 () Bool)

(assert (=> d!1563917 (= (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995077)))) (fromListB!2678 (originalCharacters!8355 (_1!33199 (get!19228 lt!1995077)))))))

(declare-fun bs!1174577 () Bool)

(assert (= bs!1174577 d!1563917))

(declare-fun m!5870332 () Bool)

(assert (=> bs!1174577 m!5870332))

(assert (=> b!4868961 d!1563917))

(assert (=> b!4869121 d!1563719))

(assert (=> b!4869121 d!1563721))

(declare-fun b!4869968 () Bool)

(declare-fun e!3044406 () List!56065)

(assert (=> b!4869968 (= e!3044406 (list!17495 (right!40963 (c!828058 totalInput!332))))))

(declare-fun b!4869969 () Bool)

(assert (=> b!4869969 (= e!3044406 (Cons!55941 (h!62389 (list!17495 (left!40633 (c!828058 totalInput!332)))) (++!12186 (t!363993 (list!17495 (left!40633 (c!828058 totalInput!332)))) (list!17495 (right!40963 (c!828058 totalInput!332))))))))

(declare-fun d!1563919 () Bool)

(declare-fun e!3044405 () Bool)

(assert (=> d!1563919 e!3044405))

(declare-fun res!2078978 () Bool)

(assert (=> d!1563919 (=> (not res!2078978) (not e!3044405))))

(declare-fun lt!1995580 () List!56065)

(assert (=> d!1563919 (= res!2078978 (= (content!9976 lt!1995580) ((_ map or) (content!9976 (list!17495 (left!40633 (c!828058 totalInput!332)))) (content!9976 (list!17495 (right!40963 (c!828058 totalInput!332)))))))))

(assert (=> d!1563919 (= lt!1995580 e!3044406)))

(declare-fun c!828359 () Bool)

(assert (=> d!1563919 (= c!828359 ((_ is Nil!55941) (list!17495 (left!40633 (c!828058 totalInput!332)))))))

(assert (=> d!1563919 (= (++!12186 (list!17495 (left!40633 (c!828058 totalInput!332))) (list!17495 (right!40963 (c!828058 totalInput!332)))) lt!1995580)))

(declare-fun b!4869970 () Bool)

(declare-fun res!2078979 () Bool)

(assert (=> b!4869970 (=> (not res!2078979) (not e!3044405))))

(assert (=> b!4869970 (= res!2078979 (= (size!36875 lt!1995580) (+ (size!36875 (list!17495 (left!40633 (c!828058 totalInput!332)))) (size!36875 (list!17495 (right!40963 (c!828058 totalInput!332)))))))))

(declare-fun b!4869971 () Bool)

(assert (=> b!4869971 (= e!3044405 (or (not (= (list!17495 (right!40963 (c!828058 totalInput!332))) Nil!55941)) (= lt!1995580 (list!17495 (left!40633 (c!828058 totalInput!332))))))))

(assert (= (and d!1563919 c!828359) b!4869968))

(assert (= (and d!1563919 (not c!828359)) b!4869969))

(assert (= (and d!1563919 res!2078978) b!4869970))

(assert (= (and b!4869970 res!2078979) b!4869971))

(assert (=> b!4869969 m!5868912))

(declare-fun m!5870334 () Bool)

(assert (=> b!4869969 m!5870334))

(declare-fun m!5870336 () Bool)

(assert (=> d!1563919 m!5870336))

(assert (=> d!1563919 m!5868910))

(declare-fun m!5870338 () Bool)

(assert (=> d!1563919 m!5870338))

(assert (=> d!1563919 m!5868912))

(declare-fun m!5870340 () Bool)

(assert (=> d!1563919 m!5870340))

(declare-fun m!5870342 () Bool)

(assert (=> b!4869970 m!5870342))

(assert (=> b!4869970 m!5868910))

(assert (=> b!4869970 m!5869876))

(assert (=> b!4869970 m!5868912))

(assert (=> b!4869970 m!5869878))

(assert (=> b!4869135 d!1563919))

(declare-fun b!4869974 () Bool)

(declare-fun e!3044408 () List!56065)

(assert (=> b!4869974 (= e!3044408 (list!17500 (xs!17881 (left!40633 (c!828058 totalInput!332)))))))

(declare-fun b!4869975 () Bool)

(assert (=> b!4869975 (= e!3044408 (++!12186 (list!17495 (left!40633 (left!40633 (c!828058 totalInput!332)))) (list!17495 (right!40963 (left!40633 (c!828058 totalInput!332))))))))

(declare-fun d!1563921 () Bool)

(declare-fun c!828360 () Bool)

(assert (=> d!1563921 (= c!828360 ((_ is Empty!14573) (left!40633 (c!828058 totalInput!332))))))

(declare-fun e!3044407 () List!56065)

(assert (=> d!1563921 (= (list!17495 (left!40633 (c!828058 totalInput!332))) e!3044407)))

(declare-fun b!4869973 () Bool)

(assert (=> b!4869973 (= e!3044407 e!3044408)))

(declare-fun c!828361 () Bool)

(assert (=> b!4869973 (= c!828361 ((_ is Leaf!24300) (left!40633 (c!828058 totalInput!332))))))

(declare-fun b!4869972 () Bool)

(assert (=> b!4869972 (= e!3044407 Nil!55941)))

(assert (= (and d!1563921 c!828360) b!4869972))

(assert (= (and d!1563921 (not c!828360)) b!4869973))

(assert (= (and b!4869973 c!828361) b!4869974))

(assert (= (and b!4869973 (not c!828361)) b!4869975))

(assert (=> b!4869974 m!5870066))

(declare-fun m!5870348 () Bool)

(assert (=> b!4869975 m!5870348))

(declare-fun m!5870350 () Bool)

(assert (=> b!4869975 m!5870350))

(assert (=> b!4869975 m!5870348))

(assert (=> b!4869975 m!5870350))

(declare-fun m!5870352 () Bool)

(assert (=> b!4869975 m!5870352))

(assert (=> b!4869135 d!1563921))

(declare-fun b!4869978 () Bool)

(declare-fun e!3044410 () List!56065)

(assert (=> b!4869978 (= e!3044410 (list!17500 (xs!17881 (right!40963 (c!828058 totalInput!332)))))))

(declare-fun b!4869979 () Bool)

(assert (=> b!4869979 (= e!3044410 (++!12186 (list!17495 (left!40633 (right!40963 (c!828058 totalInput!332)))) (list!17495 (right!40963 (right!40963 (c!828058 totalInput!332))))))))

(declare-fun d!1563925 () Bool)

(declare-fun c!828362 () Bool)

(assert (=> d!1563925 (= c!828362 ((_ is Empty!14573) (right!40963 (c!828058 totalInput!332))))))

(declare-fun e!3044409 () List!56065)

(assert (=> d!1563925 (= (list!17495 (right!40963 (c!828058 totalInput!332))) e!3044409)))

(declare-fun b!4869977 () Bool)

(assert (=> b!4869977 (= e!3044409 e!3044410)))

(declare-fun c!828363 () Bool)

(assert (=> b!4869977 (= c!828363 ((_ is Leaf!24300) (right!40963 (c!828058 totalInput!332))))))

(declare-fun b!4869976 () Bool)

(assert (=> b!4869976 (= e!3044409 Nil!55941)))

(assert (= (and d!1563925 c!828362) b!4869976))

(assert (= (and d!1563925 (not c!828362)) b!4869977))

(assert (= (and b!4869977 c!828363) b!4869978))

(assert (= (and b!4869977 (not c!828363)) b!4869979))

(assert (=> b!4869978 m!5869118))

(declare-fun m!5870358 () Bool)

(assert (=> b!4869979 m!5870358))

(declare-fun m!5870360 () Bool)

(assert (=> b!4869979 m!5870360))

(assert (=> b!4869979 m!5870358))

(assert (=> b!4869979 m!5870360))

(declare-fun m!5870362 () Bool)

(assert (=> b!4869979 m!5870362))

(assert (=> b!4869135 d!1563925))

(declare-fun d!1563931 () Bool)

(declare-fun lt!1995586 () Int)

(assert (=> d!1563931 (>= lt!1995586 0)))

(declare-fun e!3044414 () Int)

(assert (=> d!1563931 (= lt!1995586 e!3044414)))

(declare-fun c!828364 () Bool)

(assert (=> d!1563931 (= c!828364 ((_ is Nil!55941) lt!1995101))))

(assert (=> d!1563931 (= (size!36875 lt!1995101) lt!1995586)))

(declare-fun b!4869984 () Bool)

(assert (=> b!4869984 (= e!3044414 0)))

(declare-fun b!4869985 () Bool)

(assert (=> b!4869985 (= e!3044414 (+ 1 (size!36875 (t!363993 lt!1995101))))))

(assert (= (and d!1563931 c!828364) b!4869984))

(assert (= (and d!1563931 (not c!828364)) b!4869985))

(declare-fun m!5870364 () Bool)

(assert (=> b!4869985 m!5870364))

(assert (=> b!4869035 d!1563931))

(declare-fun d!1563933 () Bool)

(declare-fun choose!35606 (Int) Bool)

(assert (=> d!1563933 (= (Forall!1675 lambda!243455) (choose!35606 lambda!243455))))

(declare-fun bs!1174581 () Bool)

(assert (= bs!1174581 d!1563933))

(declare-fun m!5870382 () Bool)

(assert (=> bs!1174581 m!5870382))

(assert (=> d!1563295 d!1563933))

(assert (=> d!1563389 d!1563909))

(assert (=> d!1563389 d!1563911))

(assert (=> b!4869149 d!1563669))

(declare-fun d!1563939 () Bool)

(declare-fun lt!1995589 () Int)

(assert (=> d!1563939 (>= lt!1995589 0)))

(declare-fun e!3044417 () Int)

(assert (=> d!1563939 (= lt!1995589 e!3044417)))

(declare-fun c!828367 () Bool)

(assert (=> d!1563939 (= c!828367 ((_ is Nil!55941) (_2!33199 (get!19228 lt!1995077))))))

(assert (=> d!1563939 (= (size!36875 (_2!33199 (get!19228 lt!1995077))) lt!1995589)))

(declare-fun b!4869990 () Bool)

(assert (=> b!4869990 (= e!3044417 0)))

(declare-fun b!4869991 () Bool)

(assert (=> b!4869991 (= e!3044417 (+ 1 (size!36875 (t!363993 (_2!33199 (get!19228 lt!1995077))))))))

(assert (= (and d!1563939 c!828367) b!4869990))

(assert (= (and d!1563939 (not c!828367)) b!4869991))

(declare-fun m!5870386 () Bool)

(assert (=> b!4869991 m!5870386))

(assert (=> b!4868956 d!1563939))

(assert (=> b!4868956 d!1563493))

(assert (=> b!4868956 d!1563351))

(assert (=> b!4869085 d!1563789))

(declare-fun d!1563943 () Bool)

(assert (=> d!1563943 (= (max!0 (height!1929 (left!40633 (c!828058 totalInput!332))) (height!1929 (right!40963 (c!828058 totalInput!332)))) (ite (< (height!1929 (left!40633 (c!828058 totalInput!332))) (height!1929 (right!40963 (c!828058 totalInput!332)))) (height!1929 (right!40963 (c!828058 totalInput!332))) (height!1929 (left!40633 (c!828058 totalInput!332)))))))

(assert (=> b!4869137 d!1563943))

(assert (=> b!4869137 d!1563737))

(assert (=> b!4869137 d!1563739))

(declare-fun b!4870003 () Bool)

(declare-fun e!3044425 () List!56065)

(assert (=> b!4870003 (= e!3044425 (drop!2202 (t!363993 (t!363993 (list!17492 totalInput!332))) (- (- (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)) 1) 1)))))

(declare-fun b!4870004 () Bool)

(declare-fun e!3044426 () Int)

(declare-fun call!338209 () Int)

(assert (=> b!4870004 (= e!3044426 (- call!338209 (- (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)) 1)))))

(declare-fun b!4870005 () Bool)

(declare-fun e!3044428 () List!56065)

(assert (=> b!4870005 (= e!3044428 Nil!55941)))

(declare-fun b!4870006 () Bool)

(assert (=> b!4870006 (= e!3044426 0)))

(declare-fun b!4870007 () Bool)

(assert (=> b!4870007 (= e!3044425 (t!363993 (list!17492 totalInput!332)))))

(declare-fun b!4870008 () Bool)

(declare-fun e!3044427 () Int)

(assert (=> b!4870008 (= e!3044427 call!338209)))

(declare-fun b!4870009 () Bool)

(assert (=> b!4870009 (= e!3044428 e!3044425)))

(declare-fun c!828373 () Bool)

(assert (=> b!4870009 (= c!828373 (<= (- (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)) 1) 0))))

(declare-fun b!4870010 () Bool)

(assert (=> b!4870010 (= e!3044427 e!3044426)))

(declare-fun c!828374 () Bool)

(assert (=> b!4870010 (= c!828374 (>= (- (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)) 1) call!338209))))

(declare-fun d!1563951 () Bool)

(declare-fun e!3044429 () Bool)

(assert (=> d!1563951 e!3044429))

(declare-fun res!2078987 () Bool)

(assert (=> d!1563951 (=> (not res!2078987) (not e!3044429))))

(declare-fun lt!1995593 () List!56065)

(assert (=> d!1563951 (= res!2078987 (= ((_ map implies) (content!9976 lt!1995593) (content!9976 (t!363993 (list!17492 totalInput!332)))) ((as const (InoxSet C!26412)) true)))))

(assert (=> d!1563951 (= lt!1995593 e!3044428)))

(declare-fun c!828375 () Bool)

(assert (=> d!1563951 (= c!828375 ((_ is Nil!55941) (t!363993 (list!17492 totalInput!332))))))

(assert (=> d!1563951 (= (drop!2202 (t!363993 (list!17492 totalInput!332)) (- (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)) 1)) lt!1995593)))

(declare-fun bm!338204 () Bool)

(assert (=> bm!338204 (= call!338209 (size!36875 (t!363993 (list!17492 totalInput!332))))))

(declare-fun b!4870011 () Bool)

(assert (=> b!4870011 (= e!3044429 (= (size!36875 lt!1995593) e!3044427))))

(declare-fun c!828372 () Bool)

(assert (=> b!4870011 (= c!828372 (<= (- (- (size!36875 (list!17492 totalInput!332)) (size!36875 lt!1994850)) 1) 0))))

(assert (= (and d!1563951 c!828375) b!4870005))

(assert (= (and d!1563951 (not c!828375)) b!4870009))

(assert (= (and b!4870009 c!828373) b!4870007))

(assert (= (and b!4870009 (not c!828373)) b!4870003))

(assert (= (and d!1563951 res!2078987) b!4870011))

(assert (= (and b!4870011 c!828372) b!4870008))

(assert (= (and b!4870011 (not c!828372)) b!4870010))

(assert (= (and b!4870010 c!828374) b!4870006))

(assert (= (and b!4870010 (not c!828374)) b!4870004))

(assert (= (or b!4870008 b!4870010 b!4870004) bm!338204))

(declare-fun m!5870408 () Bool)

(assert (=> b!4870003 m!5870408))

(declare-fun m!5870410 () Bool)

(assert (=> d!1563951 m!5870410))

(assert (=> d!1563951 m!5869304))

(assert (=> bm!338204 m!5868584))

(declare-fun m!5870412 () Bool)

(assert (=> b!4870011 m!5870412))

(assert (=> b!4869027 d!1563951))

(assert (=> b!4869134 d!1563911))

(declare-fun d!1563955 () Bool)

(declare-fun res!2078990 () Bool)

(declare-fun e!3044432 () Bool)

(assert (=> d!1563955 (=> (not res!2078990) (not e!3044432))))

(assert (=> d!1563955 (= res!2078990 (<= (size!36875 (list!17500 (xs!17881 (left!40633 (c!828058 input!661))))) 512))))

(assert (=> d!1563955 (= (inv!71859 (left!40633 (c!828058 input!661))) e!3044432)))

(declare-fun b!4870014 () Bool)

(declare-fun res!2078991 () Bool)

(assert (=> b!4870014 (=> (not res!2078991) (not e!3044432))))

(assert (=> b!4870014 (= res!2078991 (= (csize!29377 (left!40633 (c!828058 input!661))) (size!36875 (list!17500 (xs!17881 (left!40633 (c!828058 input!661)))))))))

(declare-fun b!4870015 () Bool)

(assert (=> b!4870015 (= e!3044432 (and (> (csize!29377 (left!40633 (c!828058 input!661))) 0) (<= (csize!29377 (left!40633 (c!828058 input!661))) 512)))))

(assert (= (and d!1563955 res!2078990) b!4870014))

(assert (= (and b!4870014 res!2078991) b!4870015))

(assert (=> d!1563955 m!5870036))

(assert (=> d!1563955 m!5870036))

(declare-fun m!5870418 () Bool)

(assert (=> d!1563955 m!5870418))

(assert (=> b!4870014 m!5870036))

(assert (=> b!4870014 m!5870036))

(assert (=> b!4870014 m!5870418))

(assert (=> b!4869143 d!1563955))

(declare-fun d!1563959 () Bool)

(assert (=> d!1563959 (= (inv!71860 (xs!17881 (left!40633 (c!828058 totalInput!332)))) (<= (size!36875 (innerList!14661 (xs!17881 (left!40633 (c!828058 totalInput!332))))) 2147483647))))

(declare-fun bs!1174583 () Bool)

(assert (= bs!1174583 d!1563959))

(declare-fun m!5870421 () Bool)

(assert (=> bs!1174583 m!5870421))

(assert (=> b!4869157 d!1563959))

(declare-fun d!1563961 () Bool)

(assert (=> d!1563961 (= (isEmpty!29936 lt!1995077) (not ((_ is Some!13780) lt!1995077)))))

(assert (=> d!1563345 d!1563961))

(assert (=> d!1563345 d!1563615))

(assert (=> d!1563345 d!1563619))

(assert (=> d!1563345 d!1563233))

(declare-fun d!1563963 () Bool)

(declare-fun res!2078996 () Bool)

(declare-fun e!3044436 () Bool)

(assert (=> d!1563963 (=> (not res!2078996) (not e!3044436))))

(assert (=> d!1563963 (= res!2078996 (<= (size!36875 (list!17500 (xs!17881 (right!40963 (c!828058 input!661))))) 512))))

(assert (=> d!1563963 (= (inv!71859 (right!40963 (c!828058 input!661))) e!3044436)))

(declare-fun b!4870020 () Bool)

(declare-fun res!2078997 () Bool)

(assert (=> b!4870020 (=> (not res!2078997) (not e!3044436))))

(assert (=> b!4870020 (= res!2078997 (= (csize!29377 (right!40963 (c!828058 input!661))) (size!36875 (list!17500 (xs!17881 (right!40963 (c!828058 input!661)))))))))

(declare-fun b!4870021 () Bool)

(assert (=> b!4870021 (= e!3044436 (and (> (csize!29377 (right!40963 (c!828058 input!661))) 0) (<= (csize!29377 (right!40963 (c!828058 input!661))) 512)))))

(assert (= (and d!1563963 res!2078996) b!4870020))

(assert (= (and b!4870020 res!2078997) b!4870021))

(assert (=> d!1563963 m!5870048))

(assert (=> d!1563963 m!5870048))

(declare-fun m!5870436 () Bool)

(assert (=> d!1563963 m!5870436))

(assert (=> b!4870020 m!5870048))

(assert (=> b!4870020 m!5870048))

(assert (=> b!4870020 m!5870436))

(assert (=> b!4869146 d!1563963))

(assert (=> b!4868678 d!1563631))

(declare-fun d!1563967 () Bool)

(assert (=> d!1563967 (= (apply!13502 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1994952))))) (dynLambda!22468 (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952))))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1994952))))))))

(declare-fun b_lambda!193627 () Bool)

(assert (=> (not b_lambda!193627) (not d!1563967)))

(declare-fun t!364079 () Bool)

(declare-fun tb!257901 () Bool)

(assert (=> (and b!4868405 (= (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))) t!364079) tb!257901))

(declare-fun result!321060 () Bool)

(assert (=> tb!257901 (= result!321060 (inv!21 (dynLambda!22468 (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952))))) (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1994952)))))))))

(declare-fun m!5870440 () Bool)

(assert (=> tb!257901 m!5870440))

(assert (=> d!1563967 t!364079))

(declare-fun b_and!342889 () Bool)

(assert (= b_and!342883 (and (=> t!364079 result!321060) b_and!342889)))

(declare-fun t!364081 () Bool)

(declare-fun tb!257903 () Bool)

(assert (=> (and b!4868583 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))) t!364081) tb!257903))

(declare-fun result!321062 () Bool)

(assert (= result!321062 result!321060))

(assert (=> d!1563967 t!364081))

(declare-fun b_and!342891 () Bool)

(assert (= b_and!342885 (and (=> t!364081 result!321062) b_and!342891)))

(declare-fun t!364083 () Bool)

(declare-fun tb!257905 () Bool)

(assert (=> (and b!4869164 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))) t!364083) tb!257905))

(declare-fun result!321064 () Bool)

(assert (= result!321064 result!321060))

(assert (=> d!1563967 t!364083))

(declare-fun b_and!342893 () Bool)

(assert (= b_and!342887 (and (=> t!364083 result!321064) b_and!342893)))

(assert (=> d!1563967 m!5868368))

(declare-fun m!5870442 () Bool)

(assert (=> d!1563967 m!5870442))

(assert (=> b!4868678 d!1563967))

(declare-fun d!1563975 () Bool)

(assert (=> d!1563975 (= (seqFromList!5898 (originalCharacters!8355 (_1!33199 (get!19228 lt!1994952)))) (fromListB!2678 (originalCharacters!8355 (_1!33199 (get!19228 lt!1994952)))))))

(declare-fun bs!1174584 () Bool)

(assert (= bs!1174584 d!1563975))

(declare-fun m!5870444 () Bool)

(assert (=> bs!1174584 m!5870444))

(assert (=> b!4868678 d!1563975))

(declare-fun d!1563977 () Bool)

(declare-fun c!828380 () Bool)

(assert (=> d!1563977 (= c!828380 ((_ is Node!14573) (left!40633 (right!40963 (c!828058 totalInput!332)))))))

(declare-fun e!3044444 () Bool)

(assert (=> d!1563977 (= (inv!71852 (left!40633 (right!40963 (c!828058 totalInput!332)))) e!3044444)))

(declare-fun b!4870033 () Bool)

(assert (=> b!4870033 (= e!3044444 (inv!71858 (left!40633 (right!40963 (c!828058 totalInput!332)))))))

(declare-fun b!4870034 () Bool)

(declare-fun e!3044445 () Bool)

(assert (=> b!4870034 (= e!3044444 e!3044445)))

(declare-fun res!2079001 () Bool)

(assert (=> b!4870034 (= res!2079001 (not ((_ is Leaf!24300) (left!40633 (right!40963 (c!828058 totalInput!332))))))))

(assert (=> b!4870034 (=> res!2079001 e!3044445)))

(declare-fun b!4870035 () Bool)

(assert (=> b!4870035 (= e!3044445 (inv!71859 (left!40633 (right!40963 (c!828058 totalInput!332)))))))

(assert (= (and d!1563977 c!828380) b!4870033))

(assert (= (and d!1563977 (not c!828380)) b!4870034))

(assert (= (and b!4870034 (not res!2079001)) b!4870035))

(declare-fun m!5870454 () Bool)

(assert (=> b!4870033 m!5870454))

(declare-fun m!5870456 () Bool)

(assert (=> b!4870035 m!5870456))

(assert (=> b!4869159 d!1563977))

(declare-fun d!1563981 () Bool)

(declare-fun c!828381 () Bool)

(assert (=> d!1563981 (= c!828381 ((_ is Node!14573) (right!40963 (right!40963 (c!828058 totalInput!332)))))))

(declare-fun e!3044446 () Bool)

(assert (=> d!1563981 (= (inv!71852 (right!40963 (right!40963 (c!828058 totalInput!332)))) e!3044446)))

(declare-fun b!4870036 () Bool)

(assert (=> b!4870036 (= e!3044446 (inv!71858 (right!40963 (right!40963 (c!828058 totalInput!332)))))))

(declare-fun b!4870037 () Bool)

(declare-fun e!3044447 () Bool)

(assert (=> b!4870037 (= e!3044446 e!3044447)))

(declare-fun res!2079002 () Bool)

(assert (=> b!4870037 (= res!2079002 (not ((_ is Leaf!24300) (right!40963 (right!40963 (c!828058 totalInput!332))))))))

(assert (=> b!4870037 (=> res!2079002 e!3044447)))

(declare-fun b!4870038 () Bool)

(assert (=> b!4870038 (= e!3044447 (inv!71859 (right!40963 (right!40963 (c!828058 totalInput!332)))))))

(assert (= (and d!1563981 c!828381) b!4870036))

(assert (= (and d!1563981 (not c!828381)) b!4870037))

(assert (= (and b!4870037 (not res!2079002)) b!4870038))

(declare-fun m!5870460 () Bool)

(assert (=> b!4870036 m!5870460))

(declare-fun m!5870462 () Bool)

(assert (=> b!4870038 m!5870462))

(assert (=> b!4869159 d!1563981))

(assert (=> b!4869102 d!1563681))

(assert (=> b!4869102 d!1563677))

(assert (=> b!4869102 d!1563163))

(declare-fun d!1563985 () Bool)

(assert (=> d!1563985 (= (list!17492 (_2!33197 (get!19227 lt!1995135))) (list!17495 (c!828058 (_2!33197 (get!19227 lt!1995135)))))))

(declare-fun bs!1174586 () Bool)

(assert (= bs!1174586 d!1563985))

(declare-fun m!5870464 () Bool)

(assert (=> bs!1174586 m!5870464))

(assert (=> b!4869102 d!1563985))

(assert (=> b!4869102 d!1563683))

(declare-fun d!1563987 () Bool)

(declare-fun lt!1995598 () Int)

(assert (=> d!1563987 (>= lt!1995598 0)))

(declare-fun e!3044449 () Int)

(assert (=> d!1563987 (= lt!1995598 e!3044449)))

(declare-fun c!828383 () Bool)

(assert (=> d!1563987 (= c!828383 ((_ is Nil!55941) (innerList!14661 (xs!17881 (c!828058 totalInput!332)))))))

(assert (=> d!1563987 (= (size!36875 (innerList!14661 (xs!17881 (c!828058 totalInput!332)))) lt!1995598)))

(declare-fun b!4870041 () Bool)

(assert (=> b!4870041 (= e!3044449 0)))

(declare-fun b!4870042 () Bool)

(assert (=> b!4870042 (= e!3044449 (+ 1 (size!36875 (t!363993 (innerList!14661 (xs!17881 (c!828058 totalInput!332)))))))))

(assert (= (and d!1563987 c!828383) b!4870041))

(assert (= (and d!1563987 (not c!828383)) b!4870042))

(declare-fun m!5870468 () Bool)

(assert (=> b!4870042 m!5870468))

(assert (=> d!1563371 d!1563987))

(declare-fun d!1563991 () Bool)

(declare-fun lt!1995599 () Bool)

(assert (=> d!1563991 (= lt!1995599 (isEmpty!29943 (list!17495 (left!40633 (c!828058 totalInput!332)))))))

(assert (=> d!1563991 (= lt!1995599 (= (size!36876 (left!40633 (c!828058 totalInput!332))) 0))))

(assert (=> d!1563991 (= (isEmpty!29938 (left!40633 (c!828058 totalInput!332))) lt!1995599)))

(declare-fun bs!1174587 () Bool)

(assert (= bs!1174587 d!1563991))

(assert (=> bs!1174587 m!5868910))

(assert (=> bs!1174587 m!5868910))

(declare-fun m!5870470 () Bool)

(assert (=> bs!1174587 m!5870470))

(assert (=> bs!1174587 m!5868916))

(assert (=> b!4868876 d!1563991))

(assert (=> b!4869082 d!1563517))

(assert (=> b!4869082 d!1563837))

(assert (=> b!4869082 d!1563649))

(assert (=> b!4869082 d!1563163))

(declare-fun d!1563993 () Bool)

(declare-fun c!828384 () Bool)

(assert (=> d!1563993 (= c!828384 ((_ is Node!14573) (left!40633 (right!40963 (c!828058 input!661)))))))

(declare-fun e!3044451 () Bool)

(assert (=> d!1563993 (= (inv!71852 (left!40633 (right!40963 (c!828058 input!661)))) e!3044451)))

(declare-fun b!4870046 () Bool)

(assert (=> b!4870046 (= e!3044451 (inv!71858 (left!40633 (right!40963 (c!828058 input!661)))))))

(declare-fun b!4870047 () Bool)

(declare-fun e!3044452 () Bool)

(assert (=> b!4870047 (= e!3044451 e!3044452)))

(declare-fun res!2079006 () Bool)

(assert (=> b!4870047 (= res!2079006 (not ((_ is Leaf!24300) (left!40633 (right!40963 (c!828058 input!661))))))))

(assert (=> b!4870047 (=> res!2079006 e!3044452)))

(declare-fun b!4870048 () Bool)

(assert (=> b!4870048 (= e!3044452 (inv!71859 (left!40633 (right!40963 (c!828058 input!661)))))))

(assert (= (and d!1563993 c!828384) b!4870046))

(assert (= (and d!1563993 (not c!828384)) b!4870047))

(assert (= (and b!4870047 (not res!2079006)) b!4870048))

(declare-fun m!5870478 () Bool)

(assert (=> b!4870046 m!5870478))

(declare-fun m!5870480 () Bool)

(assert (=> b!4870048 m!5870480))

(assert (=> b!4869181 d!1563993))

(declare-fun d!1563997 () Bool)

(declare-fun c!828386 () Bool)

(assert (=> d!1563997 (= c!828386 ((_ is Node!14573) (right!40963 (right!40963 (c!828058 input!661)))))))

(declare-fun e!3044457 () Bool)

(assert (=> d!1563997 (= (inv!71852 (right!40963 (right!40963 (c!828058 input!661)))) e!3044457)))

(declare-fun b!4870058 () Bool)

(assert (=> b!4870058 (= e!3044457 (inv!71858 (right!40963 (right!40963 (c!828058 input!661)))))))

(declare-fun b!4870059 () Bool)

(declare-fun e!3044458 () Bool)

(assert (=> b!4870059 (= e!3044457 e!3044458)))

(declare-fun res!2079014 () Bool)

(assert (=> b!4870059 (= res!2079014 (not ((_ is Leaf!24300) (right!40963 (right!40963 (c!828058 input!661))))))))

(assert (=> b!4870059 (=> res!2079014 e!3044458)))

(declare-fun b!4870060 () Bool)

(assert (=> b!4870060 (= e!3044458 (inv!71859 (right!40963 (right!40963 (c!828058 input!661)))))))

(assert (= (and d!1563997 c!828386) b!4870058))

(assert (= (and d!1563997 (not c!828386)) b!4870059))

(assert (= (and b!4870059 (not res!2079014)) b!4870060))

(declare-fun m!5870482 () Bool)

(assert (=> b!4870058 m!5870482))

(declare-fun m!5870484 () Bool)

(assert (=> b!4870060 m!5870484))

(assert (=> b!4869181 d!1563997))

(declare-fun lt!1995619 () Option!13781)

(declare-fun d!1563999 () Bool)

(assert (=> d!1563999 (= lt!1995619 (maxPrefixOneRule!3491 thiss!11777 (h!62391 rules!1248) (list!17492 input!661)))))

(declare-fun e!3044528 () Option!13781)

(assert (=> d!1563999 (= lt!1995619 e!3044528)))

(declare-fun c!828393 () Bool)

(declare-fun lt!1995618 () tuple2!59798)

(assert (=> d!1563999 (= c!828393 (isEmpty!29943 (_1!33202 lt!1995618)))))

(declare-fun findLongestMatchWithZipper!70 (Regex!13107 List!56065) tuple2!59798)

(assert (=> d!1563999 (= lt!1995618 (findLongestMatchWithZipper!70 (regex!8032 (h!62391 rules!1248)) (list!17492 input!661)))))

(assert (=> d!1563999 (ruleValid!3629 thiss!11777 (h!62391 rules!1248))))

(assert (=> d!1563999 (= (maxPrefixOneRuleZipper!225 thiss!11777 (h!62391 rules!1248) (list!17492 input!661)) lt!1995619)))

(declare-fun b!4870237 () Bool)

(assert (=> b!4870237 (= e!3044528 None!13780)))

(declare-fun b!4870238 () Bool)

(assert (=> b!4870238 (= e!3044528 (Some!13780 (tuple2!59793 (Token!14649 (apply!13502 (transformation!8032 (h!62391 rules!1248)) (seqFromList!5898 (_1!33202 lt!1995618))) (h!62391 rules!1248) (size!36875 (_1!33202 lt!1995618)) (_1!33202 lt!1995618)) (_2!33202 lt!1995618))))))

(declare-fun lt!1995621 () Unit!145952)

(assert (=> b!4870238 (= lt!1995621 (longestMatchIsAcceptedByMatchOrIsEmpty!1684 (regex!8032 (h!62391 rules!1248)) (list!17492 input!661)))))

(declare-fun res!2079020 () Bool)

(assert (=> b!4870238 (= res!2079020 (isEmpty!29943 (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) (list!17492 input!661) (list!17492 input!661) (size!36875 (list!17492 input!661))))))))

(declare-fun e!3044527 () Bool)

(assert (=> b!4870238 (=> res!2079020 e!3044527)))

(assert (=> b!4870238 e!3044527))

(declare-fun lt!1995620 () Unit!145952)

(assert (=> b!4870238 (= lt!1995620 lt!1995621)))

(declare-fun lt!1995622 () Unit!145952)

(assert (=> b!4870238 (= lt!1995622 (lemmaInv!1204 (transformation!8032 (h!62391 rules!1248))))))

(declare-fun lt!1995623 () Unit!145952)

(assert (=> b!4870238 (= lt!1995623 (lemmaSemiInverse!2552 (transformation!8032 (h!62391 rules!1248)) (seqFromList!5898 (_1!33202 lt!1995618))))))

(declare-fun b!4870239 () Bool)

(assert (=> b!4870239 (= e!3044527 (matchR!6492 (regex!8032 (h!62391 rules!1248)) (_1!33202 (findLongestMatchInner!1721 (regex!8032 (h!62391 rules!1248)) Nil!55941 (size!36875 Nil!55941) (list!17492 input!661) (list!17492 input!661) (size!36875 (list!17492 input!661))))))))

(assert (= (and d!1563999 c!828393) b!4870237))

(assert (= (and d!1563999 (not c!828393)) b!4870238))

(assert (= (and b!4870238 (not res!2079020)) b!4870239))

(assert (=> d!1563999 m!5868142))

(assert (=> d!1563999 m!5868728))

(declare-fun m!5870608 () Bool)

(assert (=> d!1563999 m!5870608))

(assert (=> d!1563999 m!5868142))

(declare-fun m!5870610 () Bool)

(assert (=> d!1563999 m!5870610))

(assert (=> d!1563999 m!5868548))

(declare-fun m!5870612 () Bool)

(assert (=> b!4870238 m!5870612))

(declare-fun m!5870614 () Bool)

(assert (=> b!4870238 m!5870614))

(assert (=> b!4870238 m!5870612))

(declare-fun m!5870616 () Bool)

(assert (=> b!4870238 m!5870616))

(assert (=> b!4870238 m!5868878))

(assert (=> b!4870238 m!5868860))

(assert (=> b!4870238 m!5868142))

(assert (=> b!4870238 m!5868142))

(assert (=> b!4870238 m!5868170))

(assert (=> b!4870238 m!5869790))

(assert (=> b!4870238 m!5869784))

(assert (=> b!4870238 m!5868142))

(assert (=> b!4870238 m!5868170))

(assert (=> b!4870238 m!5868142))

(assert (=> b!4870238 m!5869786))

(assert (=> b!4870238 m!5870612))

(declare-fun m!5870618 () Bool)

(assert (=> b!4870238 m!5870618))

(assert (=> b!4870238 m!5868860))

(assert (=> b!4870239 m!5868860))

(assert (=> b!4870239 m!5868142))

(assert (=> b!4870239 m!5868170))

(assert (=> b!4870239 m!5868860))

(assert (=> b!4870239 m!5868142))

(assert (=> b!4870239 m!5868142))

(assert (=> b!4870239 m!5868170))

(assert (=> b!4870239 m!5869790))

(assert (=> b!4870239 m!5869800))

(assert (=> bm!338122 d!1563999))

(declare-fun d!1564025 () Bool)

(declare-fun lt!1995624 () Int)

(assert (=> d!1564025 (>= lt!1995624 0)))

(declare-fun e!3044529 () Int)

(assert (=> d!1564025 (= lt!1995624 e!3044529)))

(declare-fun c!828394 () Bool)

(assert (=> d!1564025 (= c!828394 ((_ is Nil!55941) (_2!33199 (get!19228 lt!1994952))))))

(assert (=> d!1564025 (= (size!36875 (_2!33199 (get!19228 lt!1994952))) lt!1995624)))

(declare-fun b!4870240 () Bool)

(assert (=> b!4870240 (= e!3044529 0)))

(declare-fun b!4870241 () Bool)

(assert (=> b!4870241 (= e!3044529 (+ 1 (size!36875 (t!363993 (_2!33199 (get!19228 lt!1994952))))))))

(assert (= (and d!1564025 c!828394) b!4870240))

(assert (= (and d!1564025 (not c!828394)) b!4870241))

(declare-fun m!5870620 () Bool)

(assert (=> b!4870241 m!5870620))

(assert (=> b!4868673 d!1564025))

(assert (=> b!4868673 d!1563631))

(assert (=> b!4868673 d!1563301))

(declare-fun bs!1174594 () Bool)

(declare-fun d!1564027 () Bool)

(assert (= bs!1174594 (and d!1564027 d!1563329)))

(declare-fun lambda!243491 () Int)

(assert (=> bs!1174594 (= (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) (= lambda!243491 lambda!243469))))

(declare-fun bs!1174595 () Bool)

(assert (= bs!1174595 (and d!1564027 d!1563599)))

(assert (=> bs!1174595 (= (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) (= lambda!243491 lambda!243485))))

(assert (=> d!1564027 true))

(assert (=> d!1564027 (< (dynLambda!22462 order!25221 (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248))))) (dynLambda!22463 order!25225 lambda!243491))))

(assert (=> d!1564027 (= (equivClasses!3425 (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248))))) (Forall2!1254 lambda!243491))))

(declare-fun bs!1174596 () Bool)

(assert (= bs!1174596 d!1564027))

(declare-fun m!5870622 () Bool)

(assert (=> bs!1174596 m!5870622))

(assert (=> b!4868911 d!1564027))

(assert (=> b!4868871 d!1563737))

(assert (=> b!4868871 d!1563739))

(declare-fun d!1564029 () Bool)

(declare-fun res!2079021 () Bool)

(declare-fun e!3044530 () Bool)

(assert (=> d!1564029 (=> (not res!2079021) (not e!3044530))))

(assert (=> d!1564029 (= res!2079021 (= (csize!29376 (left!40633 (c!828058 totalInput!332))) (+ (size!36876 (left!40633 (left!40633 (c!828058 totalInput!332)))) (size!36876 (right!40963 (left!40633 (c!828058 totalInput!332)))))))))

(assert (=> d!1564029 (= (inv!71858 (left!40633 (c!828058 totalInput!332))) e!3044530)))

(declare-fun b!4870242 () Bool)

(declare-fun res!2079022 () Bool)

(assert (=> b!4870242 (=> (not res!2079022) (not e!3044530))))

(assert (=> b!4870242 (= res!2079022 (and (not (= (left!40633 (left!40633 (c!828058 totalInput!332))) Empty!14573)) (not (= (right!40963 (left!40633 (c!828058 totalInput!332))) Empty!14573))))))

(declare-fun b!4870243 () Bool)

(declare-fun res!2079023 () Bool)

(assert (=> b!4870243 (=> (not res!2079023) (not e!3044530))))

(assert (=> b!4870243 (= res!2079023 (= (cheight!14784 (left!40633 (c!828058 totalInput!332))) (+ (max!0 (height!1929 (left!40633 (left!40633 (c!828058 totalInput!332)))) (height!1929 (right!40963 (left!40633 (c!828058 totalInput!332))))) 1)))))

(declare-fun b!4870244 () Bool)

(assert (=> b!4870244 (= e!3044530 (<= 0 (cheight!14784 (left!40633 (c!828058 totalInput!332)))))))

(assert (= (and d!1564029 res!2079021) b!4870242))

(assert (= (and b!4870242 res!2079022) b!4870243))

(assert (= (and b!4870243 res!2079023) b!4870244))

(declare-fun m!5870624 () Bool)

(assert (=> d!1564029 m!5870624))

(declare-fun m!5870626 () Bool)

(assert (=> d!1564029 m!5870626))

(assert (=> b!4870243 m!5870210))

(assert (=> b!4870243 m!5870212))

(assert (=> b!4870243 m!5870210))

(assert (=> b!4870243 m!5870212))

(declare-fun m!5870628 () Bool)

(assert (=> b!4870243 m!5870628))

(assert (=> b!4868940 d!1564029))

(declare-fun d!1564031 () Bool)

(assert (=> d!1564031 (= (isDefined!10849 lt!1995077) (not (isEmpty!29936 lt!1995077)))))

(declare-fun bs!1174597 () Bool)

(assert (= bs!1174597 d!1564031))

(assert (=> bs!1174597 m!5868726))

(assert (=> b!4868960 d!1564031))

(declare-fun d!1564033 () Bool)

(assert (=> d!1564033 (= (inv!71860 (xs!17881 (left!40633 (c!828058 input!661)))) (<= (size!36875 (innerList!14661 (xs!17881 (left!40633 (c!828058 input!661))))) 2147483647))))

(declare-fun bs!1174598 () Bool)

(assert (= bs!1174598 d!1564033))

(declare-fun m!5870630 () Bool)

(assert (=> bs!1174598 m!5870630))

(assert (=> b!4869179 d!1564033))

(declare-fun d!1564035 () Bool)

(assert (=> d!1564035 (= (max!0 (height!1929 (left!40633 (c!828058 input!661))) (height!1929 (right!40963 (c!828058 input!661)))) (ite (< (height!1929 (left!40633 (c!828058 input!661))) (height!1929 (right!40963 (c!828058 input!661)))) (height!1929 (right!40963 (c!828058 input!661))) (height!1929 (left!40633 (c!828058 input!661)))))))

(assert (=> b!4869075 d!1564035))

(assert (=> b!4869075 d!1563719))

(assert (=> b!4869075 d!1563721))

(declare-fun d!1564037 () Bool)

(assert (=> d!1564037 (= (isEmpty!29936 (maxPrefixZipper!563 thiss!11777 rules!1248 (list!17492 input!661))) (not ((_ is Some!13780) (maxPrefixZipper!563 thiss!11777 rules!1248 (list!17492 input!661)))))))

(assert (=> d!1563229 d!1564037))

(declare-fun b!4870245 () Bool)

(declare-fun e!3044532 () Bool)

(declare-fun e!3044531 () Bool)

(assert (=> b!4870245 (= e!3044532 e!3044531)))

(declare-fun res!2079024 () Bool)

(assert (=> b!4870245 (=> (not res!2079024) (not e!3044531))))

(assert (=> b!4870245 (= res!2079024 (<= (- 1) (- (height!1929 (left!40633 (left!40633 (c!828058 input!661)))) (height!1929 (right!40963 (left!40633 (c!828058 input!661)))))))))

(declare-fun b!4870246 () Bool)

(declare-fun res!2079029 () Bool)

(assert (=> b!4870246 (=> (not res!2079029) (not e!3044531))))

(assert (=> b!4870246 (= res!2079029 (isBalanced!3956 (right!40963 (left!40633 (c!828058 input!661)))))))

(declare-fun d!1564039 () Bool)

(declare-fun res!2079025 () Bool)

(assert (=> d!1564039 (=> res!2079025 e!3044532)))

(assert (=> d!1564039 (= res!2079025 (not ((_ is Node!14573) (left!40633 (c!828058 input!661)))))))

(assert (=> d!1564039 (= (isBalanced!3956 (left!40633 (c!828058 input!661))) e!3044532)))

(declare-fun b!4870247 () Bool)

(declare-fun res!2079028 () Bool)

(assert (=> b!4870247 (=> (not res!2079028) (not e!3044531))))

(assert (=> b!4870247 (= res!2079028 (isBalanced!3956 (left!40633 (left!40633 (c!828058 input!661)))))))

(declare-fun b!4870248 () Bool)

(declare-fun res!2079026 () Bool)

(assert (=> b!4870248 (=> (not res!2079026) (not e!3044531))))

(assert (=> b!4870248 (= res!2079026 (<= (- (height!1929 (left!40633 (left!40633 (c!828058 input!661)))) (height!1929 (right!40963 (left!40633 (c!828058 input!661))))) 1))))

(declare-fun b!4870249 () Bool)

(assert (=> b!4870249 (= e!3044531 (not (isEmpty!29938 (right!40963 (left!40633 (c!828058 input!661))))))))

(declare-fun b!4870250 () Bool)

(declare-fun res!2079027 () Bool)

(assert (=> b!4870250 (=> (not res!2079027) (not e!3044531))))

(assert (=> b!4870250 (= res!2079027 (not (isEmpty!29938 (left!40633 (left!40633 (c!828058 input!661))))))))

(assert (= (and d!1564039 (not res!2079025)) b!4870245))

(assert (= (and b!4870245 res!2079024) b!4870248))

(assert (= (and b!4870248 res!2079026) b!4870247))

(assert (= (and b!4870247 res!2079028) b!4870246))

(assert (= (and b!4870246 res!2079029) b!4870250))

(assert (= (and b!4870250 res!2079027) b!4870249))

(declare-fun m!5870632 () Bool)

(assert (=> b!4870250 m!5870632))

(declare-fun m!5870634 () Bool)

(assert (=> b!4870246 m!5870634))

(declare-fun m!5870636 () Bool)

(assert (=> b!4870247 m!5870636))

(assert (=> b!4870248 m!5869676))

(assert (=> b!4870248 m!5869678))

(assert (=> b!4870245 m!5869676))

(assert (=> b!4870245 m!5869678))

(declare-fun m!5870638 () Bool)

(assert (=> b!4870249 m!5870638))

(assert (=> b!4869120 d!1564039))

(assert (=> d!1563327 d!1563667))

(assert (=> d!1563327 d!1563669))

(assert (=> bm!338134 d!1563299))

(declare-fun e!3044534 () Bool)

(declare-fun tp!1370145 () Bool)

(declare-fun b!4870251 () Bool)

(declare-fun tp!1370147 () Bool)

(assert (=> b!4870251 (= e!3044534 (and (inv!71852 (left!40633 (left!40633 (left!40633 (c!828058 totalInput!332))))) tp!1370145 (inv!71852 (right!40963 (left!40633 (left!40633 (c!828058 totalInput!332))))) tp!1370147))))

(declare-fun b!4870253 () Bool)

(declare-fun e!3044533 () Bool)

(declare-fun tp!1370146 () Bool)

(assert (=> b!4870253 (= e!3044533 tp!1370146)))

(declare-fun b!4870252 () Bool)

(assert (=> b!4870252 (= e!3044534 (and (inv!71860 (xs!17881 (left!40633 (left!40633 (c!828058 totalInput!332))))) e!3044533))))

(assert (=> b!4869156 (= tp!1369899 (and (inv!71852 (left!40633 (left!40633 (c!828058 totalInput!332)))) e!3044534))))

(assert (= (and b!4869156 ((_ is Node!14573) (left!40633 (left!40633 (c!828058 totalInput!332))))) b!4870251))

(assert (= b!4870252 b!4870253))

(assert (= (and b!4869156 ((_ is Leaf!24300) (left!40633 (left!40633 (c!828058 totalInput!332))))) b!4870252))

(declare-fun m!5870640 () Bool)

(assert (=> b!4870251 m!5870640))

(declare-fun m!5870642 () Bool)

(assert (=> b!4870251 m!5870642))

(declare-fun m!5870644 () Bool)

(assert (=> b!4870252 m!5870644))

(assert (=> b!4869156 m!5868940))

(declare-fun e!3044536 () Bool)

(declare-fun tp!1370148 () Bool)

(declare-fun b!4870254 () Bool)

(declare-fun tp!1370150 () Bool)

(assert (=> b!4870254 (= e!3044536 (and (inv!71852 (left!40633 (right!40963 (left!40633 (c!828058 totalInput!332))))) tp!1370148 (inv!71852 (right!40963 (right!40963 (left!40633 (c!828058 totalInput!332))))) tp!1370150))))

(declare-fun b!4870256 () Bool)

(declare-fun e!3044535 () Bool)

(declare-fun tp!1370149 () Bool)

(assert (=> b!4870256 (= e!3044535 tp!1370149)))

(declare-fun b!4870255 () Bool)

(assert (=> b!4870255 (= e!3044536 (and (inv!71860 (xs!17881 (right!40963 (left!40633 (c!828058 totalInput!332))))) e!3044535))))

(assert (=> b!4869156 (= tp!1369901 (and (inv!71852 (right!40963 (left!40633 (c!828058 totalInput!332)))) e!3044536))))

(assert (= (and b!4869156 ((_ is Node!14573) (right!40963 (left!40633 (c!828058 totalInput!332))))) b!4870254))

(assert (= b!4870255 b!4870256))

(assert (= (and b!4869156 ((_ is Leaf!24300) (right!40963 (left!40633 (c!828058 totalInput!332))))) b!4870255))

(declare-fun m!5870646 () Bool)

(assert (=> b!4870254 m!5870646))

(declare-fun m!5870648 () Bool)

(assert (=> b!4870254 m!5870648))

(declare-fun m!5870650 () Bool)

(assert (=> b!4870255 m!5870650))

(assert (=> b!4869156 m!5868942))

(declare-fun b!4870260 () Bool)

(declare-fun e!3044537 () Bool)

(declare-fun tp!1370155 () Bool)

(declare-fun tp!1370153 () Bool)

(assert (=> b!4870260 (= e!3044537 (and tp!1370155 tp!1370153))))

(declare-fun b!4870258 () Bool)

(declare-fun tp!1370151 () Bool)

(declare-fun tp!1370154 () Bool)

(assert (=> b!4870258 (= e!3044537 (and tp!1370151 tp!1370154))))

(declare-fun b!4870259 () Bool)

(declare-fun tp!1370152 () Bool)

(assert (=> b!4870259 (= e!3044537 tp!1370152)))

(assert (=> b!4869189 (= tp!1369936 e!3044537)))

(declare-fun b!4870257 () Bool)

(assert (=> b!4870257 (= e!3044537 tp_is_empty!35663)))

(assert (= (and b!4869189 ((_ is ElementMatch!13107) (regOne!26726 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870257))

(assert (= (and b!4869189 ((_ is Concat!21450) (regOne!26726 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870258))

(assert (= (and b!4869189 ((_ is Star!13107) (regOne!26726 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870259))

(assert (= (and b!4869189 ((_ is Union!13107) (regOne!26726 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870260))

(declare-fun b!4870264 () Bool)

(declare-fun e!3044538 () Bool)

(declare-fun tp!1370160 () Bool)

(declare-fun tp!1370158 () Bool)

(assert (=> b!4870264 (= e!3044538 (and tp!1370160 tp!1370158))))

(declare-fun b!4870262 () Bool)

(declare-fun tp!1370156 () Bool)

(declare-fun tp!1370159 () Bool)

(assert (=> b!4870262 (= e!3044538 (and tp!1370156 tp!1370159))))

(declare-fun b!4870263 () Bool)

(declare-fun tp!1370157 () Bool)

(assert (=> b!4870263 (= e!3044538 tp!1370157)))

(assert (=> b!4869189 (= tp!1369939 e!3044538)))

(declare-fun b!4870261 () Bool)

(assert (=> b!4870261 (= e!3044538 tp_is_empty!35663)))

(assert (= (and b!4869189 ((_ is ElementMatch!13107) (regTwo!26726 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870261))

(assert (= (and b!4869189 ((_ is Concat!21450) (regTwo!26726 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870262))

(assert (= (and b!4869189 ((_ is Star!13107) (regTwo!26726 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870263))

(assert (= (and b!4869189 ((_ is Union!13107) (regTwo!26726 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870264))

(declare-fun b!4870265 () Bool)

(declare-fun e!3044540 () Bool)

(declare-fun tp!1370161 () Bool)

(declare-fun tp!1370163 () Bool)

(assert (=> b!4870265 (= e!3044540 (and (inv!71852 (left!40633 (left!40633 (left!40633 (c!828058 input!661))))) tp!1370161 (inv!71852 (right!40963 (left!40633 (left!40633 (c!828058 input!661))))) tp!1370163))))

(declare-fun b!4870267 () Bool)

(declare-fun e!3044539 () Bool)

(declare-fun tp!1370162 () Bool)

(assert (=> b!4870267 (= e!3044539 tp!1370162)))

(declare-fun b!4870266 () Bool)

(assert (=> b!4870266 (= e!3044540 (and (inv!71860 (xs!17881 (left!40633 (left!40633 (c!828058 input!661))))) e!3044539))))

(assert (=> b!4869178 (= tp!1369925 (and (inv!71852 (left!40633 (left!40633 (c!828058 input!661)))) e!3044540))))

(assert (= (and b!4869178 ((_ is Node!14573) (left!40633 (left!40633 (c!828058 input!661))))) b!4870265))

(assert (= b!4870266 b!4870267))

(assert (= (and b!4869178 ((_ is Leaf!24300) (left!40633 (left!40633 (c!828058 input!661))))) b!4870266))

(declare-fun m!5870652 () Bool)

(assert (=> b!4870265 m!5870652))

(declare-fun m!5870654 () Bool)

(assert (=> b!4870265 m!5870654))

(declare-fun m!5870656 () Bool)

(assert (=> b!4870266 m!5870656))

(assert (=> b!4869178 m!5868956))

(declare-fun tp!1370166 () Bool)

(declare-fun tp!1370164 () Bool)

(declare-fun e!3044542 () Bool)

(declare-fun b!4870268 () Bool)

(assert (=> b!4870268 (= e!3044542 (and (inv!71852 (left!40633 (right!40963 (left!40633 (c!828058 input!661))))) tp!1370164 (inv!71852 (right!40963 (right!40963 (left!40633 (c!828058 input!661))))) tp!1370166))))

(declare-fun b!4870270 () Bool)

(declare-fun e!3044541 () Bool)

(declare-fun tp!1370165 () Bool)

(assert (=> b!4870270 (= e!3044541 tp!1370165)))

(declare-fun b!4870269 () Bool)

(assert (=> b!4870269 (= e!3044542 (and (inv!71860 (xs!17881 (right!40963 (left!40633 (c!828058 input!661))))) e!3044541))))

(assert (=> b!4869178 (= tp!1369927 (and (inv!71852 (right!40963 (left!40633 (c!828058 input!661)))) e!3044542))))

(assert (= (and b!4869178 ((_ is Node!14573) (right!40963 (left!40633 (c!828058 input!661))))) b!4870268))

(assert (= b!4870269 b!4870270))

(assert (= (and b!4869178 ((_ is Leaf!24300) (right!40963 (left!40633 (c!828058 input!661))))) b!4870269))

(declare-fun m!5870658 () Bool)

(assert (=> b!4870268 m!5870658))

(declare-fun m!5870660 () Bool)

(assert (=> b!4870268 m!5870660))

(declare-fun m!5870662 () Bool)

(assert (=> b!4870269 m!5870662))

(assert (=> b!4869178 m!5868958))

(declare-fun b!4870271 () Bool)

(declare-fun e!3044543 () Bool)

(declare-fun tp!1370167 () Bool)

(assert (=> b!4870271 (= e!3044543 (and tp_is_empty!35663 tp!1370167))))

(assert (=> b!4869158 (= tp!1369900 e!3044543)))

(assert (= (and b!4869158 ((_ is Cons!55941) (innerList!14661 (xs!17881 (left!40633 (c!828058 totalInput!332)))))) b!4870271))

(declare-fun b!4870275 () Bool)

(declare-fun e!3044544 () Bool)

(declare-fun tp!1370172 () Bool)

(declare-fun tp!1370170 () Bool)

(assert (=> b!4870275 (= e!3044544 (and tp!1370172 tp!1370170))))

(declare-fun b!4870273 () Bool)

(declare-fun tp!1370168 () Bool)

(declare-fun tp!1370171 () Bool)

(assert (=> b!4870273 (= e!3044544 (and tp!1370168 tp!1370171))))

(declare-fun b!4870274 () Bool)

(declare-fun tp!1370169 () Bool)

(assert (=> b!4870274 (= e!3044544 tp!1370169)))

(assert (=> b!4869191 (= tp!1369940 e!3044544)))

(declare-fun b!4870272 () Bool)

(assert (=> b!4870272 (= e!3044544 tp_is_empty!35663)))

(assert (= (and b!4869191 ((_ is ElementMatch!13107) (regOne!26727 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870272))

(assert (= (and b!4869191 ((_ is Concat!21450) (regOne!26727 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870273))

(assert (= (and b!4869191 ((_ is Star!13107) (regOne!26727 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870274))

(assert (= (and b!4869191 ((_ is Union!13107) (regOne!26727 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870275))

(declare-fun b!4870279 () Bool)

(declare-fun e!3044545 () Bool)

(declare-fun tp!1370177 () Bool)

(declare-fun tp!1370175 () Bool)

(assert (=> b!4870279 (= e!3044545 (and tp!1370177 tp!1370175))))

(declare-fun b!4870277 () Bool)

(declare-fun tp!1370173 () Bool)

(declare-fun tp!1370176 () Bool)

(assert (=> b!4870277 (= e!3044545 (and tp!1370173 tp!1370176))))

(declare-fun b!4870278 () Bool)

(declare-fun tp!1370174 () Bool)

(assert (=> b!4870278 (= e!3044545 tp!1370174)))

(assert (=> b!4869191 (= tp!1369938 e!3044545)))

(declare-fun b!4870276 () Bool)

(assert (=> b!4870276 (= e!3044545 tp_is_empty!35663)))

(assert (= (and b!4869191 ((_ is ElementMatch!13107) (regTwo!26727 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870276))

(assert (= (and b!4869191 ((_ is Concat!21450) (regTwo!26727 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870277))

(assert (= (and b!4869191 ((_ is Star!13107) (regTwo!26727 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870278))

(assert (= (and b!4869191 ((_ is Union!13107) (regTwo!26727 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870279))

(declare-fun b!4870283 () Bool)

(declare-fun e!3044546 () Bool)

(declare-fun tp!1370182 () Bool)

(declare-fun tp!1370180 () Bool)

(assert (=> b!4870283 (= e!3044546 (and tp!1370182 tp!1370180))))

(declare-fun b!4870281 () Bool)

(declare-fun tp!1370178 () Bool)

(declare-fun tp!1370181 () Bool)

(assert (=> b!4870281 (= e!3044546 (and tp!1370178 tp!1370181))))

(declare-fun b!4870282 () Bool)

(declare-fun tp!1370179 () Bool)

(assert (=> b!4870282 (= e!3044546 tp!1370179)))

(assert (=> b!4869190 (= tp!1369937 e!3044546)))

(declare-fun b!4870280 () Bool)

(assert (=> b!4870280 (= e!3044546 tp_is_empty!35663)))

(assert (= (and b!4869190 ((_ is ElementMatch!13107) (reg!13436 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870280))

(assert (= (and b!4869190 ((_ is Concat!21450) (reg!13436 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870281))

(assert (= (and b!4869190 ((_ is Star!13107) (reg!13436 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870282))

(assert (= (and b!4869190 ((_ is Union!13107) (reg!13436 (regOne!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870283))

(declare-fun b!4870284 () Bool)

(declare-fun e!3044547 () Bool)

(declare-fun tp!1370183 () Bool)

(assert (=> b!4870284 (= e!3044547 (and tp_is_empty!35663 tp!1370183))))

(assert (=> b!4869161 (= tp!1369903 e!3044547)))

(assert (= (and b!4869161 ((_ is Cons!55941) (innerList!14661 (xs!17881 (right!40963 (c!828058 totalInput!332)))))) b!4870284))

(declare-fun b!4870288 () Bool)

(declare-fun e!3044548 () Bool)

(declare-fun tp!1370188 () Bool)

(declare-fun tp!1370186 () Bool)

(assert (=> b!4870288 (= e!3044548 (and tp!1370188 tp!1370186))))

(declare-fun b!4870286 () Bool)

(declare-fun tp!1370184 () Bool)

(declare-fun tp!1370187 () Bool)

(assert (=> b!4870286 (= e!3044548 (and tp!1370184 tp!1370187))))

(declare-fun b!4870287 () Bool)

(declare-fun tp!1370185 () Bool)

(assert (=> b!4870287 (= e!3044548 tp!1370185)))

(assert (=> b!4869175 (= tp!1369920 e!3044548)))

(declare-fun b!4870285 () Bool)

(assert (=> b!4870285 (= e!3044548 tp_is_empty!35663)))

(assert (= (and b!4869175 ((_ is ElementMatch!13107) (regOne!26726 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870285))

(assert (= (and b!4869175 ((_ is Concat!21450) (regOne!26726 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870286))

(assert (= (and b!4869175 ((_ is Star!13107) (regOne!26726 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870287))

(assert (= (and b!4869175 ((_ is Union!13107) (regOne!26726 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870288))

(declare-fun b!4870292 () Bool)

(declare-fun e!3044549 () Bool)

(declare-fun tp!1370193 () Bool)

(declare-fun tp!1370191 () Bool)

(assert (=> b!4870292 (= e!3044549 (and tp!1370193 tp!1370191))))

(declare-fun b!4870290 () Bool)

(declare-fun tp!1370189 () Bool)

(declare-fun tp!1370192 () Bool)

(assert (=> b!4870290 (= e!3044549 (and tp!1370189 tp!1370192))))

(declare-fun b!4870291 () Bool)

(declare-fun tp!1370190 () Bool)

(assert (=> b!4870291 (= e!3044549 tp!1370190)))

(assert (=> b!4869175 (= tp!1369923 e!3044549)))

(declare-fun b!4870289 () Bool)

(assert (=> b!4870289 (= e!3044549 tp_is_empty!35663)))

(assert (= (and b!4869175 ((_ is ElementMatch!13107) (regTwo!26726 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870289))

(assert (= (and b!4869175 ((_ is Concat!21450) (regTwo!26726 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870290))

(assert (= (and b!4869175 ((_ is Star!13107) (regTwo!26726 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870291))

(assert (= (and b!4869175 ((_ is Union!13107) (regTwo!26726 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870292))

(declare-fun b!4870296 () Bool)

(declare-fun e!3044550 () Bool)

(declare-fun tp!1370198 () Bool)

(declare-fun tp!1370196 () Bool)

(assert (=> b!4870296 (= e!3044550 (and tp!1370198 tp!1370196))))

(declare-fun b!4870294 () Bool)

(declare-fun tp!1370194 () Bool)

(declare-fun tp!1370197 () Bool)

(assert (=> b!4870294 (= e!3044550 (and tp!1370194 tp!1370197))))

(declare-fun b!4870295 () Bool)

(declare-fun tp!1370195 () Bool)

(assert (=> b!4870295 (= e!3044550 tp!1370195)))

(assert (=> b!4869167 (= tp!1369910 e!3044550)))

(declare-fun b!4870293 () Bool)

(assert (=> b!4870293 (= e!3044550 tp_is_empty!35663)))

(assert (= (and b!4869167 ((_ is ElementMatch!13107) (reg!13436 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870293))

(assert (= (and b!4869167 ((_ is Concat!21450) (reg!13436 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870294))

(assert (= (and b!4869167 ((_ is Star!13107) (reg!13436 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870295))

(assert (= (and b!4869167 ((_ is Union!13107) (reg!13436 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870296))

(declare-fun b!4870297 () Bool)

(declare-fun e!3044551 () Bool)

(declare-fun tp!1370199 () Bool)

(assert (=> b!4870297 (= e!3044551 (and tp_is_empty!35663 tp!1370199))))

(assert (=> b!4869155 (= tp!1369898 e!3044551)))

(assert (= (and b!4869155 ((_ is Cons!55941) (t!363993 (innerList!14661 (xs!17881 (c!828058 input!661)))))) b!4870297))

(declare-fun b!4870301 () Bool)

(declare-fun e!3044552 () Bool)

(declare-fun tp!1370204 () Bool)

(declare-fun tp!1370202 () Bool)

(assert (=> b!4870301 (= e!3044552 (and tp!1370204 tp!1370202))))

(declare-fun b!4870299 () Bool)

(declare-fun tp!1370200 () Bool)

(declare-fun tp!1370203 () Bool)

(assert (=> b!4870299 (= e!3044552 (and tp!1370200 tp!1370203))))

(declare-fun b!4870300 () Bool)

(declare-fun tp!1370201 () Bool)

(assert (=> b!4870300 (= e!3044552 tp!1370201)))

(assert (=> b!4869166 (= tp!1369909 e!3044552)))

(declare-fun b!4870298 () Bool)

(assert (=> b!4870298 (= e!3044552 tp_is_empty!35663)))

(assert (= (and b!4869166 ((_ is ElementMatch!13107) (regOne!26726 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870298))

(assert (= (and b!4869166 ((_ is Concat!21450) (regOne!26726 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870299))

(assert (= (and b!4869166 ((_ is Star!13107) (regOne!26726 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870300))

(assert (= (and b!4869166 ((_ is Union!13107) (regOne!26726 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870301))

(declare-fun b!4870305 () Bool)

(declare-fun e!3044553 () Bool)

(declare-fun tp!1370209 () Bool)

(declare-fun tp!1370207 () Bool)

(assert (=> b!4870305 (= e!3044553 (and tp!1370209 tp!1370207))))

(declare-fun b!4870303 () Bool)

(declare-fun tp!1370205 () Bool)

(declare-fun tp!1370208 () Bool)

(assert (=> b!4870303 (= e!3044553 (and tp!1370205 tp!1370208))))

(declare-fun b!4870304 () Bool)

(declare-fun tp!1370206 () Bool)

(assert (=> b!4870304 (= e!3044553 tp!1370206)))

(assert (=> b!4869166 (= tp!1369912 e!3044553)))

(declare-fun b!4870302 () Bool)

(assert (=> b!4870302 (= e!3044553 tp_is_empty!35663)))

(assert (= (and b!4869166 ((_ is ElementMatch!13107) (regTwo!26726 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870302))

(assert (= (and b!4869166 ((_ is Concat!21450) (regTwo!26726 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870303))

(assert (= (and b!4869166 ((_ is Star!13107) (regTwo!26726 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870304))

(assert (= (and b!4869166 ((_ is Union!13107) (regTwo!26726 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870305))

(declare-fun b!4870306 () Bool)

(declare-fun tp!1370210 () Bool)

(declare-fun e!3044555 () Bool)

(declare-fun tp!1370212 () Bool)

(assert (=> b!4870306 (= e!3044555 (and (inv!71852 (left!40633 (left!40633 (right!40963 (c!828058 totalInput!332))))) tp!1370210 (inv!71852 (right!40963 (left!40633 (right!40963 (c!828058 totalInput!332))))) tp!1370212))))

(declare-fun b!4870308 () Bool)

(declare-fun e!3044554 () Bool)

(declare-fun tp!1370211 () Bool)

(assert (=> b!4870308 (= e!3044554 tp!1370211)))

(declare-fun b!4870307 () Bool)

(assert (=> b!4870307 (= e!3044555 (and (inv!71860 (xs!17881 (left!40633 (right!40963 (c!828058 totalInput!332))))) e!3044554))))

(assert (=> b!4869159 (= tp!1369902 (and (inv!71852 (left!40633 (right!40963 (c!828058 totalInput!332)))) e!3044555))))

(assert (= (and b!4869159 ((_ is Node!14573) (left!40633 (right!40963 (c!828058 totalInput!332))))) b!4870306))

(assert (= b!4870307 b!4870308))

(assert (= (and b!4869159 ((_ is Leaf!24300) (left!40633 (right!40963 (c!828058 totalInput!332))))) b!4870307))

(declare-fun m!5870664 () Bool)

(assert (=> b!4870306 m!5870664))

(declare-fun m!5870666 () Bool)

(assert (=> b!4870306 m!5870666))

(declare-fun m!5870668 () Bool)

(assert (=> b!4870307 m!5870668))

(assert (=> b!4869159 m!5868946))

(declare-fun tp!1370213 () Bool)

(declare-fun b!4870309 () Bool)

(declare-fun tp!1370215 () Bool)

(declare-fun e!3044557 () Bool)

(assert (=> b!4870309 (= e!3044557 (and (inv!71852 (left!40633 (right!40963 (right!40963 (c!828058 totalInput!332))))) tp!1370213 (inv!71852 (right!40963 (right!40963 (right!40963 (c!828058 totalInput!332))))) tp!1370215))))

(declare-fun b!4870311 () Bool)

(declare-fun e!3044556 () Bool)

(declare-fun tp!1370214 () Bool)

(assert (=> b!4870311 (= e!3044556 tp!1370214)))

(declare-fun b!4870310 () Bool)

(assert (=> b!4870310 (= e!3044557 (and (inv!71860 (xs!17881 (right!40963 (right!40963 (c!828058 totalInput!332))))) e!3044556))))

(assert (=> b!4869159 (= tp!1369904 (and (inv!71852 (right!40963 (right!40963 (c!828058 totalInput!332)))) e!3044557))))

(assert (= (and b!4869159 ((_ is Node!14573) (right!40963 (right!40963 (c!828058 totalInput!332))))) b!4870309))

(assert (= b!4870310 b!4870311))

(assert (= (and b!4869159 ((_ is Leaf!24300) (right!40963 (right!40963 (c!828058 totalInput!332))))) b!4870310))

(declare-fun m!5870670 () Bool)

(assert (=> b!4870309 m!5870670))

(declare-fun m!5870672 () Bool)

(assert (=> b!4870309 m!5870672))

(declare-fun m!5870674 () Bool)

(assert (=> b!4870310 m!5870674))

(assert (=> b!4869159 m!5868948))

(declare-fun b!4870312 () Bool)

(declare-fun e!3044558 () Bool)

(declare-fun tp!1370216 () Bool)

(assert (=> b!4870312 (= e!3044558 (and tp_is_empty!35663 tp!1370216))))

(assert (=> b!4869183 (= tp!1369929 e!3044558)))

(assert (= (and b!4869183 ((_ is Cons!55941) (innerList!14661 (xs!17881 (right!40963 (c!828058 input!661)))))) b!4870312))

(declare-fun b!4870316 () Bool)

(declare-fun e!3044559 () Bool)

(declare-fun tp!1370221 () Bool)

(declare-fun tp!1370219 () Bool)

(assert (=> b!4870316 (= e!3044559 (and tp!1370221 tp!1370219))))

(declare-fun b!4870314 () Bool)

(declare-fun tp!1370217 () Bool)

(declare-fun tp!1370220 () Bool)

(assert (=> b!4870314 (= e!3044559 (and tp!1370217 tp!1370220))))

(declare-fun b!4870315 () Bool)

(declare-fun tp!1370218 () Bool)

(assert (=> b!4870315 (= e!3044559 tp!1370218)))

(assert (=> b!4869177 (= tp!1369924 e!3044559)))

(declare-fun b!4870313 () Bool)

(assert (=> b!4870313 (= e!3044559 tp_is_empty!35663)))

(assert (= (and b!4869177 ((_ is ElementMatch!13107) (regOne!26727 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870313))

(assert (= (and b!4869177 ((_ is Concat!21450) (regOne!26727 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870314))

(assert (= (and b!4869177 ((_ is Star!13107) (regOne!26727 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870315))

(assert (= (and b!4869177 ((_ is Union!13107) (regOne!26727 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870316))

(declare-fun b!4870320 () Bool)

(declare-fun e!3044560 () Bool)

(declare-fun tp!1370226 () Bool)

(declare-fun tp!1370224 () Bool)

(assert (=> b!4870320 (= e!3044560 (and tp!1370226 tp!1370224))))

(declare-fun b!4870318 () Bool)

(declare-fun tp!1370222 () Bool)

(declare-fun tp!1370225 () Bool)

(assert (=> b!4870318 (= e!3044560 (and tp!1370222 tp!1370225))))

(declare-fun b!4870319 () Bool)

(declare-fun tp!1370223 () Bool)

(assert (=> b!4870319 (= e!3044560 tp!1370223)))

(assert (=> b!4869177 (= tp!1369922 e!3044560)))

(declare-fun b!4870317 () Bool)

(assert (=> b!4870317 (= e!3044560 tp_is_empty!35663)))

(assert (= (and b!4869177 ((_ is ElementMatch!13107) (regTwo!26727 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870317))

(assert (= (and b!4869177 ((_ is Concat!21450) (regTwo!26727 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870318))

(assert (= (and b!4869177 ((_ is Star!13107) (regTwo!26727 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870319))

(assert (= (and b!4869177 ((_ is Union!13107) (regTwo!26727 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870320))

(declare-fun b!4870324 () Bool)

(declare-fun e!3044561 () Bool)

(declare-fun tp!1370231 () Bool)

(declare-fun tp!1370229 () Bool)

(assert (=> b!4870324 (= e!3044561 (and tp!1370231 tp!1370229))))

(declare-fun b!4870322 () Bool)

(declare-fun tp!1370227 () Bool)

(declare-fun tp!1370230 () Bool)

(assert (=> b!4870322 (= e!3044561 (and tp!1370227 tp!1370230))))

(declare-fun b!4870323 () Bool)

(declare-fun tp!1370228 () Bool)

(assert (=> b!4870323 (= e!3044561 tp!1370228)))

(assert (=> b!4869176 (= tp!1369921 e!3044561)))

(declare-fun b!4870321 () Bool)

(assert (=> b!4870321 (= e!3044561 tp_is_empty!35663)))

(assert (= (and b!4869176 ((_ is ElementMatch!13107) (reg!13436 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870321))

(assert (= (and b!4869176 ((_ is Concat!21450) (reg!13436 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870322))

(assert (= (and b!4869176 ((_ is Star!13107) (reg!13436 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870323))

(assert (= (and b!4869176 ((_ is Union!13107) (reg!13436 (regex!8032 (h!62391 (t!363995 rules!1248)))))) b!4870324))

(declare-fun b!4870328 () Bool)

(declare-fun e!3044562 () Bool)

(declare-fun tp!1370236 () Bool)

(declare-fun tp!1370234 () Bool)

(assert (=> b!4870328 (= e!3044562 (and tp!1370236 tp!1370234))))

(declare-fun b!4870326 () Bool)

(declare-fun tp!1370232 () Bool)

(declare-fun tp!1370235 () Bool)

(assert (=> b!4870326 (= e!3044562 (and tp!1370232 tp!1370235))))

(declare-fun b!4870327 () Bool)

(declare-fun tp!1370233 () Bool)

(assert (=> b!4870327 (= e!3044562 tp!1370233)))

(assert (=> b!4869168 (= tp!1369913 e!3044562)))

(declare-fun b!4870325 () Bool)

(assert (=> b!4870325 (= e!3044562 tp_is_empty!35663)))

(assert (= (and b!4869168 ((_ is ElementMatch!13107) (regOne!26727 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870325))

(assert (= (and b!4869168 ((_ is Concat!21450) (regOne!26727 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870326))

(assert (= (and b!4869168 ((_ is Star!13107) (regOne!26727 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870327))

(assert (= (and b!4869168 ((_ is Union!13107) (regOne!26727 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870328))

(declare-fun b!4870332 () Bool)

(declare-fun e!3044563 () Bool)

(declare-fun tp!1370241 () Bool)

(declare-fun tp!1370239 () Bool)

(assert (=> b!4870332 (= e!3044563 (and tp!1370241 tp!1370239))))

(declare-fun b!4870330 () Bool)

(declare-fun tp!1370237 () Bool)

(declare-fun tp!1370240 () Bool)

(assert (=> b!4870330 (= e!3044563 (and tp!1370237 tp!1370240))))

(declare-fun b!4870331 () Bool)

(declare-fun tp!1370238 () Bool)

(assert (=> b!4870331 (= e!3044563 tp!1370238)))

(assert (=> b!4869168 (= tp!1369911 e!3044563)))

(declare-fun b!4870329 () Bool)

(assert (=> b!4870329 (= e!3044563 tp_is_empty!35663)))

(assert (= (and b!4869168 ((_ is ElementMatch!13107) (regTwo!26727 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870329))

(assert (= (and b!4869168 ((_ is Concat!21450) (regTwo!26727 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870330))

(assert (= (and b!4869168 ((_ is Star!13107) (regTwo!26727 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870331))

(assert (= (and b!4869168 ((_ is Union!13107) (regTwo!26727 (regOne!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870332))

(declare-fun tp!1370244 () Bool)

(declare-fun tp!1370242 () Bool)

(declare-fun e!3044565 () Bool)

(declare-fun b!4870333 () Bool)

(assert (=> b!4870333 (= e!3044565 (and (inv!71852 (left!40633 (left!40633 (right!40963 (c!828058 input!661))))) tp!1370242 (inv!71852 (right!40963 (left!40633 (right!40963 (c!828058 input!661))))) tp!1370244))))

(declare-fun b!4870335 () Bool)

(declare-fun e!3044564 () Bool)

(declare-fun tp!1370243 () Bool)

(assert (=> b!4870335 (= e!3044564 tp!1370243)))

(declare-fun b!4870334 () Bool)

(assert (=> b!4870334 (= e!3044565 (and (inv!71860 (xs!17881 (left!40633 (right!40963 (c!828058 input!661))))) e!3044564))))

(assert (=> b!4869181 (= tp!1369928 (and (inv!71852 (left!40633 (right!40963 (c!828058 input!661)))) e!3044565))))

(assert (= (and b!4869181 ((_ is Node!14573) (left!40633 (right!40963 (c!828058 input!661))))) b!4870333))

(assert (= b!4870334 b!4870335))

(assert (= (and b!4869181 ((_ is Leaf!24300) (left!40633 (right!40963 (c!828058 input!661))))) b!4870334))

(declare-fun m!5870676 () Bool)

(assert (=> b!4870333 m!5870676))

(declare-fun m!5870678 () Bool)

(assert (=> b!4870333 m!5870678))

(declare-fun m!5870680 () Bool)

(assert (=> b!4870334 m!5870680))

(assert (=> b!4869181 m!5868962))

(declare-fun tp!1370247 () Bool)

(declare-fun tp!1370245 () Bool)

(declare-fun b!4870336 () Bool)

(declare-fun e!3044567 () Bool)

(assert (=> b!4870336 (= e!3044567 (and (inv!71852 (left!40633 (right!40963 (right!40963 (c!828058 input!661))))) tp!1370245 (inv!71852 (right!40963 (right!40963 (right!40963 (c!828058 input!661))))) tp!1370247))))

(declare-fun b!4870338 () Bool)

(declare-fun e!3044566 () Bool)

(declare-fun tp!1370246 () Bool)

(assert (=> b!4870338 (= e!3044566 tp!1370246)))

(declare-fun b!4870337 () Bool)

(assert (=> b!4870337 (= e!3044567 (and (inv!71860 (xs!17881 (right!40963 (right!40963 (c!828058 input!661))))) e!3044566))))

(assert (=> b!4869181 (= tp!1369930 (and (inv!71852 (right!40963 (right!40963 (c!828058 input!661)))) e!3044567))))

(assert (= (and b!4869181 ((_ is Node!14573) (right!40963 (right!40963 (c!828058 input!661))))) b!4870336))

(assert (= b!4870337 b!4870338))

(assert (= (and b!4869181 ((_ is Leaf!24300) (right!40963 (right!40963 (c!828058 input!661))))) b!4870337))

(declare-fun m!5870682 () Bool)

(assert (=> b!4870336 m!5870682))

(declare-fun m!5870684 () Bool)

(assert (=> b!4870336 m!5870684))

(declare-fun m!5870686 () Bool)

(assert (=> b!4870337 m!5870686))

(assert (=> b!4869181 m!5868964))

(declare-fun b!4870342 () Bool)

(declare-fun e!3044568 () Bool)

(declare-fun tp!1370252 () Bool)

(declare-fun tp!1370250 () Bool)

(assert (=> b!4870342 (= e!3044568 (and tp!1370252 tp!1370250))))

(declare-fun b!4870340 () Bool)

(declare-fun tp!1370248 () Bool)

(declare-fun tp!1370251 () Bool)

(assert (=> b!4870340 (= e!3044568 (and tp!1370248 tp!1370251))))

(declare-fun b!4870341 () Bool)

(declare-fun tp!1370249 () Bool)

(assert (=> b!4870341 (= e!3044568 tp!1370249)))

(assert (=> b!4869163 (= tp!1369907 e!3044568)))

(declare-fun b!4870339 () Bool)

(assert (=> b!4870339 (= e!3044568 tp_is_empty!35663)))

(assert (= (and b!4869163 ((_ is ElementMatch!13107) (regex!8032 (h!62391 (t!363995 (t!363995 rules!1248)))))) b!4870339))

(assert (= (and b!4869163 ((_ is Concat!21450) (regex!8032 (h!62391 (t!363995 (t!363995 rules!1248)))))) b!4870340))

(assert (= (and b!4869163 ((_ is Star!13107) (regex!8032 (h!62391 (t!363995 (t!363995 rules!1248)))))) b!4870341))

(assert (= (and b!4869163 ((_ is Union!13107) (regex!8032 (h!62391 (t!363995 (t!363995 rules!1248)))))) b!4870342))

(declare-fun b!4870345 () Bool)

(declare-fun b_free!130683 () Bool)

(declare-fun b_next!131473 () Bool)

(assert (=> b!4870345 (= b_free!130683 (not b_next!131473))))

(declare-fun t!364113 () Bool)

(declare-fun tb!257935 () Bool)

(assert (=> (and b!4870345 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) t!364113) tb!257935))

(declare-fun result!321094 () Bool)

(assert (= result!321094 result!321022))

(assert (=> d!1563599 t!364113))

(declare-fun t!364115 () Bool)

(declare-fun tb!257937 () Bool)

(assert (=> (and b!4870345 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toValue!10899 (transformation!8032 (h!62391 rules!1248)))) t!364115) tb!257937))

(declare-fun result!321096 () Bool)

(assert (= result!321096 result!321014))

(assert (=> d!1563589 t!364115))

(assert (=> d!1563599 t!364115))

(declare-fun tb!257939 () Bool)

(declare-fun t!364117 () Bool)

(assert (=> (and b!4870345 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))) t!364117) tb!257939))

(declare-fun result!321098 () Bool)

(assert (= result!321098 result!321060))

(assert (=> d!1563967 t!364117))

(declare-fun t!364119 () Bool)

(declare-fun tb!257941 () Bool)

(assert (=> (and b!4870345 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toValue!10899 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))) t!364119) tb!257941))

(declare-fun result!321100 () Bool)

(assert (= result!321100 result!321054))

(assert (=> d!1563913 t!364119))

(declare-fun tp!1370254 () Bool)

(declare-fun b_and!342931 () Bool)

(assert (=> b!4870345 (= tp!1370254 (and (=> t!364119 result!321100) (=> t!364115 result!321096) (=> t!364117 result!321098) (=> t!364113 result!321094) b_and!342931))))

(declare-fun b_free!130685 () Bool)

(declare-fun b_next!131475 () Bool)

(assert (=> b!4870345 (= b_free!130685 (not b_next!131475))))

(declare-fun tb!257943 () Bool)

(declare-fun t!364121 () Bool)

(assert (=> (and b!4870345 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1995077)))))) t!364121) tb!257943))

(declare-fun result!321102 () Bool)

(assert (= result!321102 result!320986))

(assert (=> d!1563473 t!364121))

(declare-fun tb!257945 () Bool)

(declare-fun t!364123 () Bool)

(assert (=> (and b!4870345 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toChars!10758 (transformation!8032 (rule!11164 (_1!33199 (get!19228 lt!1994952)))))) t!364123) tb!257945))

(declare-fun result!321104 () Bool)

(assert (= result!321104 result!321028))

(assert (=> d!1563625 t!364123))

(declare-fun tp!1370256 () Bool)

(declare-fun b_and!342933 () Bool)

(assert (=> b!4870345 (= tp!1370256 (and (=> t!364121 result!321102) (=> t!364123 result!321104) b_and!342933))))

(declare-fun e!3044572 () Bool)

(assert (=> b!4870345 (= e!3044572 (and tp!1370254 tp!1370256))))

(declare-fun e!3044569 () Bool)

(declare-fun b!4870344 () Bool)

(declare-fun tp!1370255 () Bool)

(assert (=> b!4870344 (= e!3044569 (and tp!1370255 (inv!71848 (tag!8896 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (inv!71853 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) e!3044572))))

(declare-fun b!4870343 () Bool)

(declare-fun e!3044570 () Bool)

(declare-fun tp!1370253 () Bool)

(assert (=> b!4870343 (= e!3044570 (and e!3044569 tp!1370253))))

(assert (=> b!4869162 (= tp!1369905 e!3044570)))

(assert (= b!4870344 b!4870345))

(assert (= b!4870343 b!4870344))

(assert (= (and b!4869162 ((_ is Cons!55943) (t!363995 (t!363995 (t!363995 rules!1248))))) b!4870343))

(declare-fun m!5870688 () Bool)

(assert (=> b!4870344 m!5870688))

(declare-fun m!5870690 () Bool)

(assert (=> b!4870344 m!5870690))

(declare-fun b!4870349 () Bool)

(declare-fun e!3044573 () Bool)

(declare-fun tp!1370261 () Bool)

(declare-fun tp!1370259 () Bool)

(assert (=> b!4870349 (= e!3044573 (and tp!1370261 tp!1370259))))

(declare-fun b!4870347 () Bool)

(declare-fun tp!1370257 () Bool)

(declare-fun tp!1370260 () Bool)

(assert (=> b!4870347 (= e!3044573 (and tp!1370257 tp!1370260))))

(declare-fun b!4870348 () Bool)

(declare-fun tp!1370258 () Bool)

(assert (=> b!4870348 (= e!3044573 tp!1370258)))

(assert (=> b!4869193 (= tp!1369941 e!3044573)))

(declare-fun b!4870346 () Bool)

(assert (=> b!4870346 (= e!3044573 tp_is_empty!35663)))

(assert (= (and b!4869193 ((_ is ElementMatch!13107) (regOne!26726 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870346))

(assert (= (and b!4869193 ((_ is Concat!21450) (regOne!26726 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870347))

(assert (= (and b!4869193 ((_ is Star!13107) (regOne!26726 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870348))

(assert (= (and b!4869193 ((_ is Union!13107) (regOne!26726 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870349))

(declare-fun b!4870353 () Bool)

(declare-fun e!3044574 () Bool)

(declare-fun tp!1370266 () Bool)

(declare-fun tp!1370264 () Bool)

(assert (=> b!4870353 (= e!3044574 (and tp!1370266 tp!1370264))))

(declare-fun b!4870351 () Bool)

(declare-fun tp!1370262 () Bool)

(declare-fun tp!1370265 () Bool)

(assert (=> b!4870351 (= e!3044574 (and tp!1370262 tp!1370265))))

(declare-fun b!4870352 () Bool)

(declare-fun tp!1370263 () Bool)

(assert (=> b!4870352 (= e!3044574 tp!1370263)))

(assert (=> b!4869193 (= tp!1369944 e!3044574)))

(declare-fun b!4870350 () Bool)

(assert (=> b!4870350 (= e!3044574 tp_is_empty!35663)))

(assert (= (and b!4869193 ((_ is ElementMatch!13107) (regTwo!26726 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870350))

(assert (= (and b!4869193 ((_ is Concat!21450) (regTwo!26726 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870351))

(assert (= (and b!4869193 ((_ is Star!13107) (regTwo!26726 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870352))

(assert (= (and b!4869193 ((_ is Union!13107) (regTwo!26726 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870353))

(declare-fun b!4870357 () Bool)

(declare-fun e!3044575 () Bool)

(declare-fun tp!1370271 () Bool)

(declare-fun tp!1370269 () Bool)

(assert (=> b!4870357 (= e!3044575 (and tp!1370271 tp!1370269))))

(declare-fun b!4870355 () Bool)

(declare-fun tp!1370267 () Bool)

(declare-fun tp!1370270 () Bool)

(assert (=> b!4870355 (= e!3044575 (and tp!1370267 tp!1370270))))

(declare-fun b!4870356 () Bool)

(declare-fun tp!1370268 () Bool)

(assert (=> b!4870356 (= e!3044575 tp!1370268)))

(assert (=> b!4869187 (= tp!1369935 e!3044575)))

(declare-fun b!4870354 () Bool)

(assert (=> b!4870354 (= e!3044575 tp_is_empty!35663)))

(assert (= (and b!4869187 ((_ is ElementMatch!13107) (regOne!26727 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870354))

(assert (= (and b!4869187 ((_ is Concat!21450) (regOne!26727 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870355))

(assert (= (and b!4869187 ((_ is Star!13107) (regOne!26727 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870356))

(assert (= (and b!4869187 ((_ is Union!13107) (regOne!26727 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870357))

(declare-fun b!4870361 () Bool)

(declare-fun e!3044576 () Bool)

(declare-fun tp!1370276 () Bool)

(declare-fun tp!1370274 () Bool)

(assert (=> b!4870361 (= e!3044576 (and tp!1370276 tp!1370274))))

(declare-fun b!4870359 () Bool)

(declare-fun tp!1370272 () Bool)

(declare-fun tp!1370275 () Bool)

(assert (=> b!4870359 (= e!3044576 (and tp!1370272 tp!1370275))))

(declare-fun b!4870360 () Bool)

(declare-fun tp!1370273 () Bool)

(assert (=> b!4870360 (= e!3044576 tp!1370273)))

(assert (=> b!4869187 (= tp!1369933 e!3044576)))

(declare-fun b!4870358 () Bool)

(assert (=> b!4870358 (= e!3044576 tp_is_empty!35663)))

(assert (= (and b!4869187 ((_ is ElementMatch!13107) (regTwo!26727 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870358))

(assert (= (and b!4869187 ((_ is Concat!21450) (regTwo!26727 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870359))

(assert (= (and b!4869187 ((_ is Star!13107) (regTwo!26727 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870360))

(assert (= (and b!4869187 ((_ is Union!13107) (regTwo!26727 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870361))

(declare-fun b!4870365 () Bool)

(declare-fun e!3044577 () Bool)

(declare-fun tp!1370281 () Bool)

(declare-fun tp!1370279 () Bool)

(assert (=> b!4870365 (= e!3044577 (and tp!1370281 tp!1370279))))

(declare-fun b!4870363 () Bool)

(declare-fun tp!1370277 () Bool)

(declare-fun tp!1370280 () Bool)

(assert (=> b!4870363 (= e!3044577 (and tp!1370277 tp!1370280))))

(declare-fun b!4870364 () Bool)

(declare-fun tp!1370278 () Bool)

(assert (=> b!4870364 (= e!3044577 tp!1370278)))

(assert (=> b!4869186 (= tp!1369932 e!3044577)))

(declare-fun b!4870362 () Bool)

(assert (=> b!4870362 (= e!3044577 tp_is_empty!35663)))

(assert (= (and b!4869186 ((_ is ElementMatch!13107) (reg!13436 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870362))

(assert (= (and b!4869186 ((_ is Concat!21450) (reg!13436 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870363))

(assert (= (and b!4869186 ((_ is Star!13107) (reg!13436 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870364))

(assert (= (and b!4869186 ((_ is Union!13107) (reg!13436 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870365))

(declare-fun b!4870369 () Bool)

(declare-fun e!3044578 () Bool)

(declare-fun tp!1370286 () Bool)

(declare-fun tp!1370284 () Bool)

(assert (=> b!4870369 (= e!3044578 (and tp!1370286 tp!1370284))))

(declare-fun b!4870367 () Bool)

(declare-fun tp!1370282 () Bool)

(declare-fun tp!1370285 () Bool)

(assert (=> b!4870367 (= e!3044578 (and tp!1370282 tp!1370285))))

(declare-fun b!4870368 () Bool)

(declare-fun tp!1370283 () Bool)

(assert (=> b!4870368 (= e!3044578 tp!1370283)))

(assert (=> b!4869195 (= tp!1369945 e!3044578)))

(declare-fun b!4870366 () Bool)

(assert (=> b!4870366 (= e!3044578 tp_is_empty!35663)))

(assert (= (and b!4869195 ((_ is ElementMatch!13107) (regOne!26727 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870366))

(assert (= (and b!4869195 ((_ is Concat!21450) (regOne!26727 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870367))

(assert (= (and b!4869195 ((_ is Star!13107) (regOne!26727 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870368))

(assert (= (and b!4869195 ((_ is Union!13107) (regOne!26727 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870369))

(declare-fun b!4870373 () Bool)

(declare-fun e!3044579 () Bool)

(declare-fun tp!1370291 () Bool)

(declare-fun tp!1370289 () Bool)

(assert (=> b!4870373 (= e!3044579 (and tp!1370291 tp!1370289))))

(declare-fun b!4870371 () Bool)

(declare-fun tp!1370287 () Bool)

(declare-fun tp!1370290 () Bool)

(assert (=> b!4870371 (= e!3044579 (and tp!1370287 tp!1370290))))

(declare-fun b!4870372 () Bool)

(declare-fun tp!1370288 () Bool)

(assert (=> b!4870372 (= e!3044579 tp!1370288)))

(assert (=> b!4869195 (= tp!1369943 e!3044579)))

(declare-fun b!4870370 () Bool)

(assert (=> b!4870370 (= e!3044579 tp_is_empty!35663)))

(assert (= (and b!4869195 ((_ is ElementMatch!13107) (regTwo!26727 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870370))

(assert (= (and b!4869195 ((_ is Concat!21450) (regTwo!26727 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870371))

(assert (= (and b!4869195 ((_ is Star!13107) (regTwo!26727 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870372))

(assert (= (and b!4869195 ((_ is Union!13107) (regTwo!26727 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870373))

(declare-fun b!4870377 () Bool)

(declare-fun e!3044580 () Bool)

(declare-fun tp!1370296 () Bool)

(declare-fun tp!1370294 () Bool)

(assert (=> b!4870377 (= e!3044580 (and tp!1370296 tp!1370294))))

(declare-fun b!4870375 () Bool)

(declare-fun tp!1370292 () Bool)

(declare-fun tp!1370295 () Bool)

(assert (=> b!4870375 (= e!3044580 (and tp!1370292 tp!1370295))))

(declare-fun b!4870376 () Bool)

(declare-fun tp!1370293 () Bool)

(assert (=> b!4870376 (= e!3044580 tp!1370293)))

(assert (=> b!4869194 (= tp!1369942 e!3044580)))

(declare-fun b!4870374 () Bool)

(assert (=> b!4870374 (= e!3044580 tp_is_empty!35663)))

(assert (= (and b!4869194 ((_ is ElementMatch!13107) (reg!13436 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870374))

(assert (= (and b!4869194 ((_ is Concat!21450) (reg!13436 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870375))

(assert (= (and b!4869194 ((_ is Star!13107) (reg!13436 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870376))

(assert (= (and b!4869194 ((_ is Union!13107) (reg!13436 (regTwo!26727 (regex!8032 (h!62391 rules!1248)))))) b!4870377))

(declare-fun b!4870381 () Bool)

(declare-fun e!3044581 () Bool)

(declare-fun tp!1370301 () Bool)

(declare-fun tp!1370299 () Bool)

(assert (=> b!4870381 (= e!3044581 (and tp!1370301 tp!1370299))))

(declare-fun b!4870379 () Bool)

(declare-fun tp!1370297 () Bool)

(declare-fun tp!1370300 () Bool)

(assert (=> b!4870379 (= e!3044581 (and tp!1370297 tp!1370300))))

(declare-fun b!4870380 () Bool)

(declare-fun tp!1370298 () Bool)

(assert (=> b!4870380 (= e!3044581 tp!1370298)))

(assert (=> b!4869185 (= tp!1369931 e!3044581)))

(declare-fun b!4870378 () Bool)

(assert (=> b!4870378 (= e!3044581 tp_is_empty!35663)))

(assert (= (and b!4869185 ((_ is ElementMatch!13107) (regOne!26726 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870378))

(assert (= (and b!4869185 ((_ is Concat!21450) (regOne!26726 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870379))

(assert (= (and b!4869185 ((_ is Star!13107) (regOne!26726 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870380))

(assert (= (and b!4869185 ((_ is Union!13107) (regOne!26726 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870381))

(declare-fun b!4870385 () Bool)

(declare-fun e!3044582 () Bool)

(declare-fun tp!1370306 () Bool)

(declare-fun tp!1370304 () Bool)

(assert (=> b!4870385 (= e!3044582 (and tp!1370306 tp!1370304))))

(declare-fun b!4870383 () Bool)

(declare-fun tp!1370302 () Bool)

(declare-fun tp!1370305 () Bool)

(assert (=> b!4870383 (= e!3044582 (and tp!1370302 tp!1370305))))

(declare-fun b!4870384 () Bool)

(declare-fun tp!1370303 () Bool)

(assert (=> b!4870384 (= e!3044582 tp!1370303)))

(assert (=> b!4869185 (= tp!1369934 e!3044582)))

(declare-fun b!4870382 () Bool)

(assert (=> b!4870382 (= e!3044582 tp_is_empty!35663)))

(assert (= (and b!4869185 ((_ is ElementMatch!13107) (regTwo!26726 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870382))

(assert (= (and b!4869185 ((_ is Concat!21450) (regTwo!26726 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870383))

(assert (= (and b!4869185 ((_ is Star!13107) (regTwo!26726 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870384))

(assert (= (and b!4869185 ((_ is Union!13107) (regTwo!26726 (reg!13436 (regex!8032 (h!62391 rules!1248)))))) b!4870385))

(declare-fun b!4870389 () Bool)

(declare-fun e!3044583 () Bool)

(declare-fun tp!1370311 () Bool)

(declare-fun tp!1370309 () Bool)

(assert (=> b!4870389 (= e!3044583 (and tp!1370311 tp!1370309))))

(declare-fun b!4870387 () Bool)

(declare-fun tp!1370307 () Bool)

(declare-fun tp!1370310 () Bool)

(assert (=> b!4870387 (= e!3044583 (and tp!1370307 tp!1370310))))

(declare-fun b!4870388 () Bool)

(declare-fun tp!1370308 () Bool)

(assert (=> b!4870388 (= e!3044583 tp!1370308)))

(assert (=> b!4869172 (= tp!1369918 e!3044583)))

(declare-fun b!4870386 () Bool)

(assert (=> b!4870386 (= e!3044583 tp_is_empty!35663)))

(assert (= (and b!4869172 ((_ is ElementMatch!13107) (regOne!26727 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870386))

(assert (= (and b!4869172 ((_ is Concat!21450) (regOne!26727 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870387))

(assert (= (and b!4869172 ((_ is Star!13107) (regOne!26727 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870388))

(assert (= (and b!4869172 ((_ is Union!13107) (regOne!26727 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870389))

(declare-fun b!4870393 () Bool)

(declare-fun e!3044584 () Bool)

(declare-fun tp!1370316 () Bool)

(declare-fun tp!1370314 () Bool)

(assert (=> b!4870393 (= e!3044584 (and tp!1370316 tp!1370314))))

(declare-fun b!4870391 () Bool)

(declare-fun tp!1370312 () Bool)

(declare-fun tp!1370315 () Bool)

(assert (=> b!4870391 (= e!3044584 (and tp!1370312 tp!1370315))))

(declare-fun b!4870392 () Bool)

(declare-fun tp!1370313 () Bool)

(assert (=> b!4870392 (= e!3044584 tp!1370313)))

(assert (=> b!4869172 (= tp!1369916 e!3044584)))

(declare-fun b!4870390 () Bool)

(assert (=> b!4870390 (= e!3044584 tp_is_empty!35663)))

(assert (= (and b!4869172 ((_ is ElementMatch!13107) (regTwo!26727 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870390))

(assert (= (and b!4869172 ((_ is Concat!21450) (regTwo!26727 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870391))

(assert (= (and b!4869172 ((_ is Star!13107) (regTwo!26727 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870392))

(assert (= (and b!4869172 ((_ is Union!13107) (regTwo!26727 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870393))

(declare-fun b!4870394 () Bool)

(declare-fun e!3044585 () Bool)

(declare-fun tp!1370317 () Bool)

(assert (=> b!4870394 (= e!3044585 (and tp_is_empty!35663 tp!1370317))))

(assert (=> b!4869180 (= tp!1369926 e!3044585)))

(assert (= (and b!4869180 ((_ is Cons!55941) (innerList!14661 (xs!17881 (left!40633 (c!828058 input!661)))))) b!4870394))

(declare-fun b!4870398 () Bool)

(declare-fun e!3044586 () Bool)

(declare-fun tp!1370322 () Bool)

(declare-fun tp!1370320 () Bool)

(assert (=> b!4870398 (= e!3044586 (and tp!1370322 tp!1370320))))

(declare-fun b!4870396 () Bool)

(declare-fun tp!1370318 () Bool)

(declare-fun tp!1370321 () Bool)

(assert (=> b!4870396 (= e!3044586 (and tp!1370318 tp!1370321))))

(declare-fun b!4870397 () Bool)

(declare-fun tp!1370319 () Bool)

(assert (=> b!4870397 (= e!3044586 tp!1370319)))

(assert (=> b!4869171 (= tp!1369915 e!3044586)))

(declare-fun b!4870395 () Bool)

(assert (=> b!4870395 (= e!3044586 tp_is_empty!35663)))

(assert (= (and b!4869171 ((_ is ElementMatch!13107) (reg!13436 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870395))

(assert (= (and b!4869171 ((_ is Concat!21450) (reg!13436 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870396))

(assert (= (and b!4869171 ((_ is Star!13107) (reg!13436 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870397))

(assert (= (and b!4869171 ((_ is Union!13107) (reg!13436 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870398))

(declare-fun b!4870402 () Bool)

(declare-fun e!3044587 () Bool)

(declare-fun tp!1370327 () Bool)

(declare-fun tp!1370325 () Bool)

(assert (=> b!4870402 (= e!3044587 (and tp!1370327 tp!1370325))))

(declare-fun b!4870400 () Bool)

(declare-fun tp!1370323 () Bool)

(declare-fun tp!1370326 () Bool)

(assert (=> b!4870400 (= e!3044587 (and tp!1370323 tp!1370326))))

(declare-fun b!4870401 () Bool)

(declare-fun tp!1370324 () Bool)

(assert (=> b!4870401 (= e!3044587 tp!1370324)))

(assert (=> b!4869170 (= tp!1369914 e!3044587)))

(declare-fun b!4870399 () Bool)

(assert (=> b!4870399 (= e!3044587 tp_is_empty!35663)))

(assert (= (and b!4869170 ((_ is ElementMatch!13107) (regOne!26726 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870399))

(assert (= (and b!4869170 ((_ is Concat!21450) (regOne!26726 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870400))

(assert (= (and b!4869170 ((_ is Star!13107) (regOne!26726 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870401))

(assert (= (and b!4869170 ((_ is Union!13107) (regOne!26726 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870402))

(declare-fun b!4870406 () Bool)

(declare-fun e!3044588 () Bool)

(declare-fun tp!1370332 () Bool)

(declare-fun tp!1370330 () Bool)

(assert (=> b!4870406 (= e!3044588 (and tp!1370332 tp!1370330))))

(declare-fun b!4870404 () Bool)

(declare-fun tp!1370328 () Bool)

(declare-fun tp!1370331 () Bool)

(assert (=> b!4870404 (= e!3044588 (and tp!1370328 tp!1370331))))

(declare-fun b!4870405 () Bool)

(declare-fun tp!1370329 () Bool)

(assert (=> b!4870405 (= e!3044588 tp!1370329)))

(assert (=> b!4869170 (= tp!1369917 e!3044588)))

(declare-fun b!4870403 () Bool)

(assert (=> b!4870403 (= e!3044588 tp_is_empty!35663)))

(assert (= (and b!4869170 ((_ is ElementMatch!13107) (regTwo!26726 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870403))

(assert (= (and b!4869170 ((_ is Concat!21450) (regTwo!26726 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870404))

(assert (= (and b!4869170 ((_ is Star!13107) (regTwo!26726 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870405))

(assert (= (and b!4869170 ((_ is Union!13107) (regTwo!26726 (regTwo!26726 (regex!8032 (h!62391 rules!1248)))))) b!4870406))

(declare-fun b!4870407 () Bool)

(declare-fun e!3044589 () Bool)

(declare-fun tp!1370333 () Bool)

(assert (=> b!4870407 (= e!3044589 (and tp_is_empty!35663 tp!1370333))))

(assert (=> b!4869173 (= tp!1369919 e!3044589)))

(assert (= (and b!4869173 ((_ is Cons!55941) (t!363993 (innerList!14661 (xs!17881 (c!828058 totalInput!332)))))) b!4870407))

(declare-fun b_lambda!193651 () Bool)

(assert (= b_lambda!193609 (or (and b!4868405 b_free!130659) (and b!4868583 b_free!130667 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) (and b!4869164 b_free!130675 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) (and b!4870345 b_free!130683 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) b_lambda!193651)))

(declare-fun b_lambda!193653 () Bool)

(assert (= b_lambda!193599 (or b!4869101 b_lambda!193653)))

(declare-fun bs!1174599 () Bool)

(declare-fun d!1564041 () Bool)

(assert (= bs!1174599 (and d!1564041 b!4869101)))

(assert (=> bs!1174599 (= (dynLambda!22467 lambda!243477 (_1!33203 lt!1995134)) (= (list!17492 (dynLambda!22465 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (_1!33203 lt!1995134)))) (list!17492 (_1!33203 lt!1995134))))))

(declare-fun b_lambda!193665 () Bool)

(assert (=> (not b_lambda!193665) (not bs!1174599)))

(declare-fun t!364125 () Bool)

(declare-fun tb!257947 () Bool)

(assert (=> (and b!4868405 (= (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) t!364125) tb!257947))

(declare-fun tp!1370334 () Bool)

(declare-fun e!3044590 () Bool)

(declare-fun b!4870408 () Bool)

(assert (=> b!4870408 (= e!3044590 (and (inv!71852 (c!828058 (dynLambda!22465 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (_1!33203 lt!1995134))))) tp!1370334))))

(declare-fun result!321106 () Bool)

(assert (=> tb!257947 (= result!321106 (and (inv!71854 (dynLambda!22465 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (_1!33203 lt!1995134)))) e!3044590))))

(assert (= tb!257947 b!4870408))

(declare-fun m!5870692 () Bool)

(assert (=> b!4870408 m!5870692))

(declare-fun m!5870694 () Bool)

(assert (=> tb!257947 m!5870694))

(assert (=> bs!1174599 t!364125))

(declare-fun b_and!342935 () Bool)

(assert (= b_and!342859 (and (=> t!364125 result!321106) b_and!342935)))

(declare-fun t!364127 () Bool)

(declare-fun tb!257949 () Bool)

(assert (=> (and b!4868583 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) t!364127) tb!257949))

(declare-fun result!321108 () Bool)

(assert (= result!321108 result!321106))

(assert (=> bs!1174599 t!364127))

(declare-fun b_and!342937 () Bool)

(assert (= b_and!342861 (and (=> t!364127 result!321108) b_and!342937)))

(declare-fun t!364129 () Bool)

(declare-fun tb!257951 () Bool)

(assert (=> (and b!4869164 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) t!364129) tb!257951))

(declare-fun result!321110 () Bool)

(assert (= result!321110 result!321106))

(assert (=> bs!1174599 t!364129))

(declare-fun b_and!342939 () Bool)

(assert (= b_and!342863 (and (=> t!364129 result!321110) b_and!342939)))

(declare-fun t!364131 () Bool)

(declare-fun tb!257953 () Bool)

(assert (=> (and b!4870345 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) t!364131) tb!257953))

(declare-fun result!321112 () Bool)

(assert (= result!321112 result!321106))

(assert (=> bs!1174599 t!364131))

(declare-fun b_and!342941 () Bool)

(assert (= b_and!342933 (and (=> t!364131 result!321112) b_and!342941)))

(declare-fun b_lambda!193667 () Bool)

(assert (=> (not b_lambda!193667) (not bs!1174599)))

(assert (=> bs!1174599 t!364036))

(declare-fun b_and!342943 () Bool)

(assert (= b_and!342889 (and (=> t!364036 result!321014) b_and!342943)))

(assert (=> bs!1174599 t!364038))

(declare-fun b_and!342945 () Bool)

(assert (= b_and!342891 (and (=> t!364038 result!321018) b_and!342945)))

(assert (=> bs!1174599 t!364040))

(declare-fun b_and!342947 () Bool)

(assert (= b_and!342893 (and (=> t!364040 result!321020) b_and!342947)))

(assert (=> bs!1174599 t!364115))

(declare-fun b_and!342949 () Bool)

(assert (= b_and!342931 (and (=> t!364115 result!321096) b_and!342949)))

(declare-fun m!5870696 () Bool)

(assert (=> bs!1174599 m!5870696))

(declare-fun m!5870698 () Bool)

(assert (=> bs!1174599 m!5870698))

(assert (=> bs!1174599 m!5868880))

(assert (=> bs!1174599 m!5869486))

(assert (=> bs!1174599 m!5869486))

(assert (=> bs!1174599 m!5870696))

(assert (=> d!1563581 d!1564041))

(declare-fun b_lambda!193655 () Bool)

(assert (= b_lambda!193589 (or b!4869101 b_lambda!193655)))

(declare-fun bs!1174600 () Bool)

(declare-fun d!1564043 () Bool)

(assert (= bs!1174600 (and d!1564043 b!4869101)))

(assert (=> bs!1174600 (= (dynLambda!22467 lambda!243477 (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))) (= (list!17492 (dynLambda!22465 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))))) (list!17492 (seqFromList!5898 (list!17492 (_1!33203 lt!1995134))))))))

(declare-fun b_lambda!193669 () Bool)

(assert (=> (not b_lambda!193669) (not bs!1174600)))

(declare-fun t!364133 () Bool)

(declare-fun tb!257955 () Bool)

(assert (=> (and b!4868405 (= (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) t!364133) tb!257955))

(declare-fun e!3044591 () Bool)

(declare-fun b!4870409 () Bool)

(declare-fun tp!1370335 () Bool)

(assert (=> b!4870409 (= e!3044591 (and (inv!71852 (c!828058 (dynLambda!22465 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (seqFromList!5898 (list!17492 (_1!33203 lt!1995134))))))) tp!1370335))))

(declare-fun result!321114 () Bool)

(assert (=> tb!257955 (= result!321114 (and (inv!71854 (dynLambda!22465 (toChars!10758 (transformation!8032 (h!62391 rules!1248))) (dynLambda!22468 (toValue!10899 (transformation!8032 (h!62391 rules!1248))) (seqFromList!5898 (list!17492 (_1!33203 lt!1995134)))))) e!3044591))))

(assert (= tb!257955 b!4870409))

(declare-fun m!5870700 () Bool)

(assert (=> b!4870409 m!5870700))

(declare-fun m!5870702 () Bool)

(assert (=> tb!257955 m!5870702))

(assert (=> bs!1174600 t!364133))

(declare-fun b_and!342951 () Bool)

(assert (= b_and!342935 (and (=> t!364133 result!321114) b_and!342951)))

(declare-fun t!364135 () Bool)

(declare-fun tb!257957 () Bool)

(assert (=> (and b!4868583 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) t!364135) tb!257957))

(declare-fun result!321116 () Bool)

(assert (= result!321116 result!321114))

(assert (=> bs!1174600 t!364135))

(declare-fun b_and!342953 () Bool)

(assert (= b_and!342937 (and (=> t!364135 result!321116) b_and!342953)))

(declare-fun t!364137 () Bool)

(declare-fun tb!257959 () Bool)

(assert (=> (and b!4869164 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) t!364137) tb!257959))

(declare-fun result!321118 () Bool)

(assert (= result!321118 result!321114))

(assert (=> bs!1174600 t!364137))

(declare-fun b_and!342955 () Bool)

(assert (= b_and!342939 (and (=> t!364137 result!321118) b_and!342955)))

(declare-fun t!364139 () Bool)

(declare-fun tb!257961 () Bool)

(assert (=> (and b!4870345 (= (toChars!10758 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toChars!10758 (transformation!8032 (h!62391 rules!1248)))) t!364139) tb!257961))

(declare-fun result!321120 () Bool)

(assert (= result!321120 result!321114))

(assert (=> bs!1174600 t!364139))

(declare-fun b_and!342957 () Bool)

(assert (= b_and!342941 (and (=> t!364139 result!321120) b_and!342957)))

(declare-fun b_lambda!193671 () Bool)

(assert (=> (not b_lambda!193671) (not bs!1174600)))

(assert (=> bs!1174600 t!364042))

(declare-fun b_and!342959 () Bool)

(assert (= b_and!342943 (and (=> t!364042 result!321022) b_and!342959)))

(assert (=> bs!1174600 t!364044))

(declare-fun b_and!342961 () Bool)

(assert (= b_and!342945 (and (=> t!364044 result!321024) b_and!342961)))

(assert (=> bs!1174600 t!364046))

(declare-fun b_and!342963 () Bool)

(assert (= b_and!342947 (and (=> t!364046 result!321026) b_and!342963)))

(assert (=> bs!1174600 t!364113))

(declare-fun b_and!342965 () Bool)

(assert (= b_and!342949 (and (=> t!364113 result!321094) b_and!342965)))

(declare-fun m!5870704 () Bool)

(assert (=> bs!1174600 m!5870704))

(declare-fun m!5870706 () Bool)

(assert (=> bs!1174600 m!5870706))

(assert (=> bs!1174600 m!5868882))

(assert (=> bs!1174600 m!5869500))

(assert (=> bs!1174600 m!5868882))

(assert (=> bs!1174600 m!5869504))

(assert (=> bs!1174600 m!5869504))

(assert (=> bs!1174600 m!5870704))

(assert (=> d!1563541 d!1564043))

(declare-fun b_lambda!193657 () Bool)

(assert (= b_lambda!193587 (or d!1563303 b_lambda!193657)))

(declare-fun bs!1174601 () Bool)

(declare-fun d!1564045 () Bool)

(assert (= bs!1174601 (and d!1564045 d!1563303)))

(assert (=> bs!1174601 (= (dynLambda!22466 lambda!243463 (h!62391 rules!1248)) (ruleValid!3629 thiss!11777 (h!62391 rules!1248)))))

(assert (=> bs!1174601 m!5868548))

(assert (=> b!4869322 d!1564045))

(declare-fun b_lambda!193659 () Bool)

(assert (= b_lambda!193605 (or (and b!4868405 b_free!130659) (and b!4868583 b_free!130667 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) (and b!4869164 b_free!130675 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) (and b!4870345 b_free!130683 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) b_lambda!193659)))

(declare-fun b_lambda!193661 () Bool)

(assert (= b_lambda!193607 (or (and b!4868405 b_free!130659) (and b!4868583 b_free!130667 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 rules!1248)))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) (and b!4869164 b_free!130675 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 rules!1248))))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) (and b!4870345 b_free!130683 (= (toValue!10899 (transformation!8032 (h!62391 (t!363995 (t!363995 (t!363995 rules!1248)))))) (toValue!10899 (transformation!8032 (h!62391 rules!1248))))) b_lambda!193661)))

(declare-fun b_lambda!193663 () Bool)

(assert (= b_lambda!193621 (or d!1563233 b_lambda!193663)))

(declare-fun bs!1174602 () Bool)

(declare-fun d!1564047 () Bool)

(assert (= bs!1174602 (and d!1564047 d!1563233)))

(assert (=> bs!1174602 (= (dynLambda!22466 lambda!243452 (h!62391 rules!1248)) (ruleValid!3629 thiss!11777 (h!62391 rules!1248)))))

(assert (=> bs!1174602 m!5868548))

(assert (=> b!4869898 d!1564047))

(check-sat (not b_next!131459) b_and!342955 (not b_lambda!193623) (not d!1564033) (not d!1563899) (not b!4869361) (not b!4870060) (not b!4869556) (not b!4869371) (not b_lambda!193651) (not b!4869763) (not b!4869783) (not b!4870303) (not b!4869754) (not b!4869874) (not b!4870336) (not d!1563803) (not b_lambda!193659) (not b!4870377) (not b!4870318) (not bm!338186) (not b!4869312) (not b!4870367) (not tb!257835) (not b!4870264) (not b_lambda!193585) (not b!4870254) (not b!4870247) (not b!4870351) (not bm!338187) (not b!4870388) (not b!4870380) (not d!1563975) (not b!4869368) (not b!4870319) (not bm!338184) (not b!4870048) (not b!4869938) (not b!4870238) (not b_next!131465) (not d!1563531) (not b!4869974) (not tb!257865) (not b!4869920) (not b!4870385) (not b!4869911) (not d!1563717) tp_is_empty!35663 (not b!4870296) (not b_lambda!193671) (not d!1563879) (not bs!1174599) (not tb!257901) (not b!4870243) (not b_next!131457) (not tb!257947) (not b!4869952) (not b!4870404) (not b!4869392) (not b!4869675) (not b!4869940) (not d!1563733) (not b!4869765) (not b!4870364) (not d!1563895) (not d!1563789) (not b!4870283) (not d!1563963) (not b!4869900) (not b!4870020) (not b!4870330) (not d!1563881) (not b!4870347) (not b!4869735) (not b!4869979) (not b!4869948) (not b!4869595) (not d!1563623) (not d!1563683) (not b!4870309) (not b!4870312) (not b_lambda!193627) (not b!4869327) (not b!4869919) (not d!1563883) (not b!4870287) (not b!4869815) (not b!4869393) (not d!1563985) (not b!4869582) (not b!4870373) b_and!342961 (not b!4870038) (not b!4870259) (not b!4869297) (not b!4870292) (not b!4870297) (not b!4869902) (not b!4869825) (not b!4870304) (not b!4870305) (not b!4870361) (not b!4870291) (not d!1563473) (not b!4870393) (not b!4869575) (not b!4870320) (not b!4869922) (not b!4869925) (not b!4869880) (not b!4870271) (not b!4870379) (not b!4869853) (not tb!257955) (not b!4869913) (not b!4869405) (not b!4869824) (not d!1563773) (not bs!1174602) (not d!1563541) (not d!1563641) (not d!1563849) (not b!4869709) (not b_lambda!193665) (not b!4870284) (not b!4869363) (not b!4869514) (not b!4869539) (not d!1563731) (not b!4870387) (not d!1563619) (not d!1563877) (not d!1563951) (not b!4869876) (not d!1563791) (not b_lambda!193661) (not d!1563503) (not b!4870255) (not b!4869607) (not b!4869679) (not b!4869950) (not d!1563959) (not b!4869181) (not b!4870251) (not d!1563523) (not b!4870348) (not b!4869872) (not b!4870389) (not b!4870316) (not b!4869766) (not b!4869540) (not bs!1174601) (not b!4870033) (not b!4870273) (not b!4869724) (not b!4869978) (not b!4870409) (not b!4869159) (not b!4870340) (not b!4869674) (not b!4870327) (not b!4869991) (not b!4870400) (not b!4870383) (not b!4869789) (not b!4869933) (not b!4870308) (not bm!338191) (not b!4869956) (not b!4870394) (not d!1563545) (not b!4869758) (not b!4870042) (not b!4870342) (not bm!338197) b_and!342957 (not b!4869787) (not d!1563765) (not b!4869838) (not bm!338182) (not b!4869156) (not b!4869975) (not b!4869769) (not b!4869403) (not d!1563991) (not b!4870407) (not d!1563741) (not d!1563867) (not bm!338189) (not b!4870344) (not b!4870239) (not b!4869928) (not d!1563999) (not b!4870376) (not b!4870258) (not b!4870408) (not b!4870349) (not b!4870343) (not d!1563549) (not b!4869537) (not b!4869923) (not b!4869958) (not b!4870369) (not d!1563753) (not b!4869756) (not b!4869300) (not b!4869912) (not b!4869375) (not b!4869764) (not b!4869373) (not b!4870381) (not b_next!131451) (not b!4870058) (not b!4869613) (not b!4869942) (not b!4869680) (not b!4870275) (not d!1563933) (not d!1563723) (not b!4869676) (not b!4869957) (not bm!338183) (not b!4870268) (not b!4869723) (not b!4869323) (not tb!257871) (not b!4870314) (not b!4870402) (not b!4870249) (not d!1563715) (not b_lambda!193663) (not b!4869803) (not d!1563805) (not b!4869366) (not b!4869721) (not b_next!131467) (not bm!338188) (not b!4869878) (not b!4869785) (not b!4869945) (not b_lambda!193657) (not b!4869868) (not b!4869498) (not b!4870307) (not d!1563521) (not b!4869324) (not b!4869365) (not b!4869536) (not tb!257859) (not b!4869718) (not b!4869837) (not b!4869302) (not b!4869879) (not b!4869959) (not b!4869921) (not d!1563727) (not b!4869944) (not b!4870035) (not d!1563713) (not d!1563579) (not b!4870279) (not b!4869909) (not b!4870357) (not b!4869577) (not b!4869832) (not b!4869970) (not b!4869965) (not b!4870246) (not b!4869866) (not d!1563893) (not b!4870401) (not d!1563547) (not b!4869767) (not b!4869677) (not b!4869954) (not d!1563471) (not b!4869877) (not b!4869408) (not b!4869871) (not bm!338203) (not b!4870391) (not b!4869560) (not b!4869512) (not bm!338204) (not b!4870277) (not bm!338200) (not b!4869502) (not b!4870252) (not b!4869580) (not b!4870300) (not b!4869798) (not b!4870315) (not b!4870324) (not b!4870260) (not d!1563599) (not bm!338201) (not b!4869741) (not b!4869579) (not b!4869178) (not b!4870306) (not b!4870269) (not b!4869985) (not b!4870341) (not b!4869949) (not b!4870323) (not b_next!131475) (not b!4869401) (not b!4870360) (not b!4870250) (not bm!338196) (not b!4870267) (not b!4870363) (not b!4869558) (not b_lambda!193667) (not d!1563861) (not d!1563581) (not b!4869953) (not d!1563649) (not b!4870368) (not b!4869673) (not b!4870310) (not b!4870256) b_and!342953 (not b!4870335) (not b!4870384) (not b!4870265) (not d!1564031) (not b!4870405) (not b!4869946) (not b!4870282) (not d!1563573) (not b_lambda!193655) (not b!4870322) (not d!1563955) (not b!4870334) (not b_lambda!193611) (not b!4869791) (not b!4869557) (not b!4869930) (not b!4870241) (not d!1563661) (not bm!338198) (not b!4869369) (not d!1563825) (not b!4870278) (not b!4869826) (not b!4869932) (not b!4869601) (not b!4869873) (not b!4870353) (not b!4869391) (not b!4870355) (not b!4869326) (not b!4870406) (not b!4870274) (not b!4869286) (not d!1564029) (not b!4870270) (not b!4869802) (not b!4870290) (not b!4869936) b_and!342965 (not b!4870281) (not b!4870295) (not b!4869822) (not d!1564027) (not b!4869843) (not b!4870311) (not b!4870301) (not b!4870011) (not b_next!131449) (not b_next!131473) (not b!4869583) (not d!1563597) (not bs!1174600) (not b!4870262) (not b!4870392) (not b!4869497) (not b!4870328) (not b!4870337) b_and!342959 (not b!4869362) (not d!1563459) (not b!4869813) (not b!4870331) (not b!4870359) (not d!1563729) (not b!4870326) (not b!4870253) (not d!1563643) (not d!1563917) (not b!4869969) (not b!4869804) (not tb!257895) (not d!1563819) (not d!1563841) (not b!4870266) (not d!1563747) (not b!4869720) (not b!4869770) (not b!4870294) (not b!4869541) (not b!4869833) b_and!342951 (not b!4869518) (not bm!338140) (not d!1563673) (not b!4870375) (not b!4869581) (not d!1563919) (not d!1563859) (not d!1563749) (not b!4869790) (not b!4869943) (not b!4870046) (not b!4869499) (not d!1563511) (not b!4870365) (not b!4870372) (not b!4869299) (not b!4869771) (not b!4870299) (not b!4869918) (not d!1563875) (not b!4869325) (not b!4870263) (not b!4870245) (not b!4870352) (not b!4869576) (not b!4870398) (not d!1563513) (not b!4869734) (not b!4870036) (not d!1563725) (not b!4869329) (not b!4870288) (not b!4869929) (not b!4869955) (not b!4870396) (not b!4870371) (not b!4869364) (not b!4870014) (not b!4869562) b_and!342963 (not b!4870286) (not b!4870338) (not b!4870003) (not b!4869941) (not b!4869711) (not bm!338185) (not b!4870397) (not b!4869722) (not b!4870333) (not b!4869899) (not b!4869360) (not b!4869678) (not d!1563625) (not b!4869784) (not b!4869395) (not b!4870332) (not d!1563865) (not b!4870248) (not b_lambda!193653) (not b!4869844) (not b_lambda!193669) (not b!4869788) (not b!4870356))
(check-sat (not b_next!131465) (not b_next!131457) b_and!342961 b_and!342957 (not b_next!131451) (not b_next!131467) (not b_next!131475) b_and!342953 b_and!342965 b_and!342959 b_and!342951 b_and!342963 (not b_next!131459) b_and!342955 (not b_next!131449) (not b_next!131473))
