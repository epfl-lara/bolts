; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!263456 () Bool)

(assert start!263456)

(declare-fun b!2715037 () Bool)

(declare-fun b_free!76537 () Bool)

(declare-fun b_next!77241 () Bool)

(assert (=> b!2715037 (= b_free!76537 (not b_next!77241))))

(declare-fun tp!857508 () Bool)

(declare-fun b_and!200285 () Bool)

(assert (=> b!2715037 (= tp!857508 b_and!200285)))

(declare-fun b_free!76539 () Bool)

(declare-fun b_next!77243 () Bool)

(assert (=> b!2715037 (= b_free!76539 (not b_next!77243))))

(declare-fun tp!857515 () Bool)

(declare-fun b_and!200287 () Bool)

(assert (=> b!2715037 (= tp!857515 b_and!200287)))

(declare-datatypes ((List!31427 0))(
  ( (Nil!31327) (Cons!31327 (h!36747 (_ BitVec 16)) (t!226245 List!31427)) )
))
(declare-datatypes ((TokenValue!5013 0))(
  ( (FloatLiteralValue!10026 (text!35536 List!31427)) (TokenValueExt!5012 (__x!20161 Int)) (Broken!25065 (value!154130 List!31427)) (Object!5112) (End!5013) (Def!5013) (Underscore!5013) (Match!5013) (Else!5013) (Error!5013) (Case!5013) (If!5013) (Extends!5013) (Abstract!5013) (Class!5013) (Val!5013) (DelimiterValue!10026 (del!5073 List!31427)) (KeywordValue!5019 (value!154131 List!31427)) (CommentValue!10026 (value!154132 List!31427)) (WhitespaceValue!10026 (value!154133 List!31427)) (IndentationValue!5013 (value!154134 List!31427)) (String!34964) (Int32!5013) (Broken!25066 (value!154135 List!31427)) (Boolean!5014) (Unit!45355) (OperatorValue!5016 (op!5073 List!31427)) (IdentifierValue!10026 (value!154136 List!31427)) (IdentifierValue!10027 (value!154137 List!31427)) (WhitespaceValue!10027 (value!154138 List!31427)) (True!10026) (False!10026) (Broken!25067 (value!154139 List!31427)) (Broken!25068 (value!154140 List!31427)) (True!10027) (RightBrace!5013) (RightBracket!5013) (Colon!5013) (Null!5013) (Comma!5013) (LeftBracket!5013) (False!10027) (LeftBrace!5013) (ImaginaryLiteralValue!5013 (text!35537 List!31427)) (StringLiteralValue!15039 (value!154141 List!31427)) (EOFValue!5013 (value!154142 List!31427)) (IdentValue!5013 (value!154143 List!31427)) (DelimiterValue!10027 (value!154144 List!31427)) (DedentValue!5013 (value!154145 List!31427)) (NewLineValue!5013 (value!154146 List!31427)) (IntegerValue!15039 (value!154147 (_ BitVec 32)) (text!35538 List!31427)) (IntegerValue!15040 (value!154148 Int) (text!35539 List!31427)) (Times!5013) (Or!5013) (Equal!5013) (Minus!5013) (Broken!25069 (value!154149 List!31427)) (And!5013) (Div!5013) (LessEqual!5013) (Mod!5013) (Concat!12956) (Not!5013) (Plus!5013) (SpaceValue!5013 (value!154150 List!31427)) (IntegerValue!15041 (value!154151 Int) (text!35540 List!31427)) (StringLiteralValue!15040 (text!35541 List!31427)) (FloatLiteralValue!10027 (text!35542 List!31427)) (BytesLiteralValue!5013 (value!154152 List!31427)) (CommentValue!10027 (value!154153 List!31427)) (StringLiteralValue!15041 (value!154154 List!31427)) (ErrorTokenValue!5013 (msg!5074 List!31427)) )
))
(declare-datatypes ((C!16044 0))(
  ( (C!16045 (val!9956 Int)) )
))
(declare-datatypes ((Regex!7943 0))(
  ( (ElementMatch!7943 (c!438565 C!16044)) (Concat!12957 (regOne!16398 Regex!7943) (regTwo!16398 Regex!7943)) (EmptyExpr!7943) (Star!7943 (reg!8272 Regex!7943)) (EmptyLang!7943) (Union!7943 (regOne!16399 Regex!7943) (regTwo!16399 Regex!7943)) )
))
(declare-datatypes ((String!34965 0))(
  ( (String!34966 (value!154155 String)) )
))
(declare-datatypes ((List!31428 0))(
  ( (Nil!31328) (Cons!31328 (h!36748 C!16044) (t!226246 List!31428)) )
))
(declare-datatypes ((IArray!19623 0))(
  ( (IArray!19624 (innerList!9869 List!31428)) )
))
(declare-datatypes ((Conc!9809 0))(
  ( (Node!9809 (left!24086 Conc!9809) (right!24416 Conc!9809) (csize!19848 Int) (cheight!10020 Int)) (Leaf!14949 (xs!12872 IArray!19623) (csize!19849 Int)) (Empty!9809) )
))
(declare-datatypes ((BalanceConc!19232 0))(
  ( (BalanceConc!19233 (c!438566 Conc!9809)) )
))
(declare-datatypes ((TokenValueInjection!9466 0))(
  ( (TokenValueInjection!9467 (toValue!6761 Int) (toChars!6620 Int)) )
))
(declare-datatypes ((Rule!9382 0))(
  ( (Rule!9383 (regex!4791 Regex!7943) (tag!5295 String!34965) (isSeparator!4791 Bool) (transformation!4791 TokenValueInjection!9466)) )
))
(declare-datatypes ((Token!9044 0))(
  ( (Token!9045 (value!154156 TokenValue!5013) (rule!7217 Rule!9382) (size!24166 Int) (originalCharacters!5553 List!31428)) )
))
(declare-datatypes ((List!31429 0))(
  ( (Nil!31329) (Cons!31329 (h!36749 Token!9044) (t!226247 List!31429)) )
))
(declare-datatypes ((IArray!19625 0))(
  ( (IArray!19626 (innerList!9870 List!31429)) )
))
(declare-datatypes ((Conc!9810 0))(
  ( (Node!9810 (left!24087 Conc!9810) (right!24417 Conc!9810) (csize!19850 Int) (cheight!10021 Int)) (Leaf!14950 (xs!12873 IArray!19625) (csize!19851 Int)) (Empty!9810) )
))
(declare-datatypes ((BalanceConc!19234 0))(
  ( (BalanceConc!19235 (c!438567 Conc!9810)) )
))
(declare-datatypes ((tuple2!30990 0))(
  ( (tuple2!30991 (_1!18127 BalanceConc!19234) (_2!18127 BalanceConc!19232)) )
))
(declare-fun lt!960687 () tuple2!30990)

(declare-fun e!1711360 () Bool)

(declare-fun b!2715024 () Bool)

(declare-datatypes ((tuple2!30992 0))(
  ( (tuple2!30993 (_1!18128 Token!9044) (_2!18128 BalanceConc!19232)) )
))
(declare-datatypes ((Option!6183 0))(
  ( (None!6182) (Some!6182 (v!33014 tuple2!30992)) )
))
(declare-fun lt!960677 () Option!6183)

(declare-fun lt!960682 () tuple2!30990)

(declare-fun prepend!1117 (BalanceConc!19234 Token!9044) BalanceConc!19234)

(assert (=> b!2715024 (= e!1711360 (= lt!960682 (tuple2!30991 (prepend!1117 (_1!18127 lt!960687) (_1!18128 (v!33014 lt!960677))) (_2!18127 lt!960687))))))

(declare-datatypes ((LexerInterface!4387 0))(
  ( (LexerInterfaceExt!4384 (__x!20162 Int)) (Lexer!4385) )
))
(declare-fun thiss!11556 () LexerInterface!4387)

(declare-datatypes ((List!31430 0))(
  ( (Nil!31330) (Cons!31330 (h!36750 Rule!9382) (t!226248 List!31430)) )
))
(declare-fun rules!1182 () List!31430)

(declare-fun lexRec!647 (LexerInterface!4387 List!31430 BalanceConc!19232) tuple2!30990)

(assert (=> b!2715024 (= lt!960687 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960677))))))

(declare-fun b!2715025 () Bool)

(declare-fun e!1711359 () Bool)

(declare-fun input!603 () BalanceConc!19232)

(declare-fun tp!857512 () Bool)

(declare-fun inv!42514 (Conc!9809) Bool)

(assert (=> b!2715025 (= e!1711359 (and (inv!42514 (c!438566 input!603)) tp!857512))))

(declare-fun lt!960665 () tuple2!30990)

(declare-fun b!2715026 () Bool)

(declare-fun e!1711357 () Bool)

(declare-fun lt!960670 () tuple2!30990)

(declare-fun lt!960664 () Option!6183)

(assert (=> b!2715026 (= e!1711357 (= lt!960665 (tuple2!30991 (prepend!1117 (_1!18127 lt!960670) (_1!18128 (v!33014 lt!960664))) (_2!18127 lt!960670))))))

(declare-fun b!2715027 () Bool)

(declare-fun e!1711356 () Bool)

(declare-fun e!1711366 () Bool)

(assert (=> b!2715027 (= e!1711356 e!1711366)))

(declare-fun res!1140219 () Bool)

(assert (=> b!2715027 (=> (not res!1140219) (not e!1711366))))

(declare-fun lt!960683 () List!31428)

(declare-fun lt!960681 () List!31428)

(declare-fun lt!960667 () List!31428)

(declare-fun ++!7768 (List!31428 List!31428) List!31428)

(assert (=> b!2715027 (= res!1140219 (= lt!960667 (++!7768 lt!960683 lt!960681)))))

(declare-fun totalInput!328 () BalanceConc!19232)

(declare-fun list!11856 (BalanceConc!19232) List!31428)

(assert (=> b!2715027 (= lt!960667 (list!11856 totalInput!328))))

(assert (=> b!2715027 (= lt!960681 (list!11856 input!603))))

(declare-fun treated!9 () BalanceConc!19232)

(assert (=> b!2715027 (= lt!960683 (list!11856 treated!9))))

(declare-fun b!2715028 () Bool)

(declare-fun e!1711353 () Bool)

(declare-fun tp!857513 () Bool)

(assert (=> b!2715028 (= e!1711353 (and (inv!42514 (c!438566 treated!9)) tp!857513))))

(declare-fun b!2715029 () Bool)

(declare-fun res!1140226 () Bool)

(declare-fun e!1711362 () Bool)

(assert (=> b!2715029 (=> res!1140226 e!1711362)))

(declare-fun isEmpty!17857 (List!31428) Bool)

(assert (=> b!2715029 (= res!1140226 (not (isEmpty!17857 (list!11856 (_2!18127 lt!960682)))))))

(declare-fun b!2715031 () Bool)

(declare-fun res!1140222 () Bool)

(declare-fun e!1711358 () Bool)

(assert (=> b!2715031 (=> (not res!1140222) (not e!1711358))))

(declare-fun lt!960690 () tuple2!30990)

(assert (=> b!2715031 (= res!1140222 (isEmpty!17857 (list!11856 (_2!18127 lt!960690))))))

(declare-fun b!2715032 () Bool)

(declare-fun res!1140224 () Bool)

(assert (=> b!2715032 (=> (not res!1140224) (not e!1711356))))

(declare-fun rulesInvariant!3872 (LexerInterface!4387 List!31430) Bool)

(assert (=> b!2715032 (= res!1140224 (rulesInvariant!3872 thiss!11556 rules!1182))))

(declare-fun b!2715033 () Bool)

(declare-fun e!1711365 () Bool)

(declare-fun acc!331 () BalanceConc!19234)

(declare-fun tp!857511 () Bool)

(declare-fun inv!42515 (Conc!9810) Bool)

(assert (=> b!2715033 (= e!1711365 (and (inv!42515 (c!438567 acc!331)) tp!857511))))

(declare-fun b!2715034 () Bool)

(declare-fun e!1711367 () Bool)

(assert (=> b!2715034 (= e!1711367 (not e!1711362))))

(declare-fun res!1140223 () Bool)

(assert (=> b!2715034 (=> res!1140223 e!1711362)))

(declare-fun lt!960675 () BalanceConc!19232)

(declare-fun lt!960680 () List!31428)

(assert (=> b!2715034 (= res!1140223 (not (= lt!960667 (++!7768 (list!11856 lt!960675) lt!960680))))))

(assert (=> b!2715034 e!1711360))

(declare-fun c!438564 () Bool)

(get-info :version)

(assert (=> b!2715034 (= c!438564 ((_ is Some!6182) lt!960677))))

(assert (=> b!2715034 (= lt!960682 (lexRec!647 thiss!11556 rules!1182 lt!960675))))

(declare-fun maxPrefixZipperSequence!1035 (LexerInterface!4387 List!31430 BalanceConc!19232) Option!6183)

(assert (=> b!2715034 (= lt!960677 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 lt!960675))))

(declare-fun lt!960679 () BalanceConc!19232)

(declare-fun ++!7769 (BalanceConc!19232 BalanceConc!19232) BalanceConc!19232)

(assert (=> b!2715034 (= lt!960675 (++!7769 treated!9 lt!960679))))

(declare-fun lt!960673 () List!31429)

(declare-fun lt!960685 () List!31428)

(declare-datatypes ((tuple2!30994 0))(
  ( (tuple2!30995 (_1!18129 List!31429) (_2!18129 List!31428)) )
))
(declare-fun lexList!1218 (LexerInterface!4387 List!31430 List!31428) tuple2!30994)

(assert (=> b!2715034 (= (lexList!1218 thiss!11556 rules!1182 lt!960685) (tuple2!30995 lt!960673 Nil!31328))))

(declare-fun lt!960688 () List!31429)

(declare-datatypes ((Unit!45356 0))(
  ( (Unit!45357) )
))
(declare-fun lt!960689 () Unit!45356)

(declare-fun lemmaLexThenLexPrefix!426 (LexerInterface!4387 List!31430 List!31428 List!31428 List!31429 List!31429 List!31428) Unit!45356)

(assert (=> b!2715034 (= lt!960689 (lemmaLexThenLexPrefix!426 thiss!11556 rules!1182 lt!960685 lt!960680 lt!960673 lt!960688 (list!11856 (_2!18127 lt!960670))))))

(declare-fun lt!960678 () BalanceConc!19234)

(declare-fun list!11857 (BalanceConc!19234) List!31429)

(assert (=> b!2715034 (= lt!960673 (list!11857 lt!960678))))

(declare-fun append!807 (BalanceConc!19234 Token!9044) BalanceConc!19234)

(assert (=> b!2715034 (= lt!960678 (append!807 acc!331 (_1!18128 (v!33014 lt!960664))))))

(declare-fun lt!960666 () List!31429)

(declare-fun lt!960676 () List!31429)

(declare-fun ++!7770 (List!31429 List!31429) List!31429)

(assert (=> b!2715034 (= (++!7770 (++!7770 lt!960666 lt!960676) lt!960688) (++!7770 lt!960666 (++!7770 lt!960676 lt!960688)))))

(declare-fun lt!960674 () Unit!45356)

(declare-fun lemmaConcatAssociativity!1601 (List!31429 List!31429 List!31429) Unit!45356)

(assert (=> b!2715034 (= lt!960674 (lemmaConcatAssociativity!1601 lt!960666 lt!960676 lt!960688))))

(assert (=> b!2715034 (= lt!960688 (list!11857 (_1!18127 lt!960670)))))

(assert (=> b!2715034 (= lt!960676 (Cons!31329 (_1!18128 (v!33014 lt!960664)) Nil!31329))))

(assert (=> b!2715034 e!1711357))

(declare-fun res!1140227 () Bool)

(assert (=> b!2715034 (=> (not res!1140227) (not e!1711357))))

(declare-fun lt!960668 () List!31428)

(assert (=> b!2715034 (= res!1140227 (= (++!7768 lt!960685 lt!960680) (++!7768 lt!960683 (++!7768 lt!960668 lt!960680))))))

(assert (=> b!2715034 (= lt!960685 (++!7768 lt!960683 lt!960668))))

(declare-fun lt!960686 () Unit!45356)

(declare-fun lemmaConcatAssociativity!1602 (List!31428 List!31428 List!31428) Unit!45356)

(assert (=> b!2715034 (= lt!960686 (lemmaConcatAssociativity!1602 lt!960683 lt!960668 lt!960680))))

(assert (=> b!2715034 (= lt!960680 (list!11856 (_2!18128 (v!33014 lt!960664))))))

(assert (=> b!2715034 (= lt!960668 (list!11856 lt!960679))))

(declare-fun charsOf!3014 (Token!9044) BalanceConc!19232)

(assert (=> b!2715034 (= lt!960679 (charsOf!3014 (_1!18128 (v!33014 lt!960664))))))

(assert (=> b!2715034 (= lt!960670 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960664))))))

(declare-fun lt!960669 () List!31429)

(declare-fun b!2715035 () Bool)

(declare-fun ++!7771 (BalanceConc!19234 BalanceConc!19234) BalanceConc!19234)

(assert (=> b!2715035 (= e!1711362 (= lt!960669 (list!11857 (++!7771 lt!960678 (_1!18127 lt!960670)))))))

(declare-fun b!2715036 () Bool)

(declare-fun e!1711361 () Bool)

(assert (=> b!2715036 (= e!1711358 e!1711361)))

(declare-fun res!1140230 () Bool)

(assert (=> b!2715036 (=> (not res!1140230) (not e!1711361))))

(declare-fun lt!960671 () BalanceConc!19234)

(assert (=> b!2715036 (= res!1140230 (= lt!960669 (list!11857 lt!960671)))))

(declare-fun lt!960684 () tuple2!30990)

(assert (=> b!2715036 (= lt!960669 (list!11857 (_1!18127 lt!960684)))))

(assert (=> b!2715036 (= lt!960671 (++!7771 acc!331 (_1!18127 lt!960665)))))

(assert (=> b!2715036 (= lt!960665 (lexRec!647 thiss!11556 rules!1182 input!603))))

(assert (=> b!2715036 (= lt!960684 (lexRec!647 thiss!11556 rules!1182 totalInput!328))))

(declare-fun e!1711352 () Bool)

(assert (=> b!2715037 (= e!1711352 (and tp!857508 tp!857515))))

(declare-fun b!2715038 () Bool)

(declare-fun res!1140231 () Bool)

(assert (=> b!2715038 (=> res!1140231 e!1711362)))

(assert (=> b!2715038 (= res!1140231 (not (= (list!11857 (_1!18127 lt!960682)) lt!960673)))))

(declare-fun b!2715039 () Bool)

(assert (=> b!2715039 (= e!1711360 (= lt!960682 (tuple2!30991 (BalanceConc!19235 Empty!9810) lt!960675)))))

(declare-fun b!2715040 () Bool)

(assert (=> b!2715040 (= e!1711361 e!1711367)))

(declare-fun res!1140225 () Bool)

(assert (=> b!2715040 (=> (not res!1140225) (not e!1711367))))

(assert (=> b!2715040 (= res!1140225 ((_ is Some!6182) lt!960664))))

(assert (=> b!2715040 (= lt!960664 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 input!603))))

(declare-fun res!1140221 () Bool)

(assert (=> start!263456 (=> (not res!1140221) (not e!1711356))))

(assert (=> start!263456 (= res!1140221 ((_ is Lexer!4385) thiss!11556))))

(assert (=> start!263456 e!1711356))

(declare-fun inv!42516 (BalanceConc!19232) Bool)

(assert (=> start!263456 (and (inv!42516 treated!9) e!1711353)))

(assert (=> start!263456 (and (inv!42516 input!603) e!1711359)))

(assert (=> start!263456 true))

(declare-fun e!1711354 () Bool)

(assert (=> start!263456 e!1711354))

(declare-fun e!1711363 () Bool)

(assert (=> start!263456 (and (inv!42516 totalInput!328) e!1711363)))

(declare-fun inv!42517 (BalanceConc!19234) Bool)

(assert (=> start!263456 (and (inv!42517 acc!331) e!1711365)))

(declare-fun b!2715030 () Bool)

(declare-fun e!1711364 () Bool)

(declare-fun tp!857510 () Bool)

(declare-fun inv!42508 (String!34965) Bool)

(declare-fun inv!42518 (TokenValueInjection!9466) Bool)

(assert (=> b!2715030 (= e!1711364 (and tp!857510 (inv!42508 (tag!5295 (h!36750 rules!1182))) (inv!42518 (transformation!4791 (h!36750 rules!1182))) e!1711352))))

(declare-fun b!2715041 () Bool)

(declare-fun tp!857514 () Bool)

(assert (=> b!2715041 (= e!1711354 (and e!1711364 tp!857514))))

(declare-fun b!2715042 () Bool)

(declare-fun res!1140229 () Bool)

(assert (=> b!2715042 (=> (not res!1140229) (not e!1711356))))

(declare-fun isEmpty!17858 (List!31430) Bool)

(assert (=> b!2715042 (= res!1140229 (not (isEmpty!17858 rules!1182)))))

(declare-fun b!2715043 () Bool)

(assert (=> b!2715043 (= e!1711366 e!1711358)))

(declare-fun res!1140228 () Bool)

(assert (=> b!2715043 (=> (not res!1140228) (not e!1711358))))

(declare-fun lt!960672 () List!31429)

(assert (=> b!2715043 (= res!1140228 (= lt!960672 lt!960666))))

(assert (=> b!2715043 (= lt!960666 (list!11857 acc!331))))

(assert (=> b!2715043 (= lt!960672 (list!11857 (_1!18127 lt!960690)))))

(assert (=> b!2715043 (= lt!960690 (lexRec!647 thiss!11556 rules!1182 treated!9))))

(declare-fun b!2715044 () Bool)

(declare-fun res!1140220 () Bool)

(assert (=> b!2715044 (=> (not res!1140220) (not e!1711361))))

(assert (=> b!2715044 (= res!1140220 (= (list!11856 (_2!18127 lt!960684)) (list!11856 (_2!18127 lt!960665))))))

(declare-fun b!2715045 () Bool)

(declare-fun tp!857509 () Bool)

(assert (=> b!2715045 (= e!1711363 (and (inv!42514 (c!438566 totalInput!328)) tp!857509))))

(assert (= (and start!263456 res!1140221) b!2715042))

(assert (= (and b!2715042 res!1140229) b!2715032))

(assert (= (and b!2715032 res!1140224) b!2715027))

(assert (= (and b!2715027 res!1140219) b!2715043))

(assert (= (and b!2715043 res!1140228) b!2715031))

(assert (= (and b!2715031 res!1140222) b!2715036))

(assert (= (and b!2715036 res!1140230) b!2715044))

(assert (= (and b!2715044 res!1140220) b!2715040))

(assert (= (and b!2715040 res!1140225) b!2715034))

(assert (= (and b!2715034 res!1140227) b!2715026))

(assert (= (and b!2715034 c!438564) b!2715024))

(assert (= (and b!2715034 (not c!438564)) b!2715039))

(assert (= (and b!2715034 (not res!1140223)) b!2715038))

(assert (= (and b!2715038 (not res!1140231)) b!2715029))

(assert (= (and b!2715029 (not res!1140226)) b!2715035))

(assert (= start!263456 b!2715028))

(assert (= start!263456 b!2715025))

(assert (= b!2715030 b!2715037))

(assert (= b!2715041 b!2715030))

(assert (= (and start!263456 ((_ is Cons!31330) rules!1182)) b!2715041))

(assert (= start!263456 b!2715045))

(assert (= start!263456 b!2715033))

(declare-fun m!3112259 () Bool)

(assert (=> b!2715025 m!3112259))

(declare-fun m!3112261 () Bool)

(assert (=> b!2715038 m!3112261))

(declare-fun m!3112263 () Bool)

(assert (=> b!2715028 m!3112263))

(declare-fun m!3112265 () Bool)

(assert (=> b!2715031 m!3112265))

(assert (=> b!2715031 m!3112265))

(declare-fun m!3112267 () Bool)

(assert (=> b!2715031 m!3112267))

(declare-fun m!3112269 () Bool)

(assert (=> b!2715036 m!3112269))

(declare-fun m!3112271 () Bool)

(assert (=> b!2715036 m!3112271))

(declare-fun m!3112273 () Bool)

(assert (=> b!2715036 m!3112273))

(declare-fun m!3112275 () Bool)

(assert (=> b!2715036 m!3112275))

(declare-fun m!3112277 () Bool)

(assert (=> b!2715036 m!3112277))

(declare-fun m!3112279 () Bool)

(assert (=> start!263456 m!3112279))

(declare-fun m!3112281 () Bool)

(assert (=> start!263456 m!3112281))

(declare-fun m!3112283 () Bool)

(assert (=> start!263456 m!3112283))

(declare-fun m!3112285 () Bool)

(assert (=> start!263456 m!3112285))

(declare-fun m!3112287 () Bool)

(assert (=> b!2715034 m!3112287))

(declare-fun m!3112289 () Bool)

(assert (=> b!2715034 m!3112289))

(declare-fun m!3112291 () Bool)

(assert (=> b!2715034 m!3112291))

(declare-fun m!3112293 () Bool)

(assert (=> b!2715034 m!3112293))

(declare-fun m!3112295 () Bool)

(assert (=> b!2715034 m!3112295))

(declare-fun m!3112297 () Bool)

(assert (=> b!2715034 m!3112297))

(declare-fun m!3112299 () Bool)

(assert (=> b!2715034 m!3112299))

(declare-fun m!3112301 () Bool)

(assert (=> b!2715034 m!3112301))

(assert (=> b!2715034 m!3112287))

(declare-fun m!3112303 () Bool)

(assert (=> b!2715034 m!3112303))

(declare-fun m!3112305 () Bool)

(assert (=> b!2715034 m!3112305))

(declare-fun m!3112307 () Bool)

(assert (=> b!2715034 m!3112307))

(declare-fun m!3112309 () Bool)

(assert (=> b!2715034 m!3112309))

(declare-fun m!3112311 () Bool)

(assert (=> b!2715034 m!3112311))

(declare-fun m!3112313 () Bool)

(assert (=> b!2715034 m!3112313))

(declare-fun m!3112315 () Bool)

(assert (=> b!2715034 m!3112315))

(declare-fun m!3112317 () Bool)

(assert (=> b!2715034 m!3112317))

(declare-fun m!3112319 () Bool)

(assert (=> b!2715034 m!3112319))

(declare-fun m!3112321 () Bool)

(assert (=> b!2715034 m!3112321))

(declare-fun m!3112323 () Bool)

(assert (=> b!2715034 m!3112323))

(declare-fun m!3112325 () Bool)

(assert (=> b!2715034 m!3112325))

(declare-fun m!3112327 () Bool)

(assert (=> b!2715034 m!3112327))

(assert (=> b!2715034 m!3112299))

(assert (=> b!2715034 m!3112317))

(declare-fun m!3112329 () Bool)

(assert (=> b!2715034 m!3112329))

(declare-fun m!3112331 () Bool)

(assert (=> b!2715034 m!3112331))

(assert (=> b!2715034 m!3112291))

(declare-fun m!3112333 () Bool)

(assert (=> b!2715034 m!3112333))

(declare-fun m!3112335 () Bool)

(assert (=> b!2715034 m!3112335))

(assert (=> b!2715034 m!3112333))

(declare-fun m!3112337 () Bool)

(assert (=> b!2715032 m!3112337))

(declare-fun m!3112339 () Bool)

(assert (=> b!2715045 m!3112339))

(declare-fun m!3112341 () Bool)

(assert (=> b!2715043 m!3112341))

(declare-fun m!3112343 () Bool)

(assert (=> b!2715043 m!3112343))

(declare-fun m!3112345 () Bool)

(assert (=> b!2715043 m!3112345))

(declare-fun m!3112347 () Bool)

(assert (=> b!2715042 m!3112347))

(declare-fun m!3112349 () Bool)

(assert (=> b!2715026 m!3112349))

(declare-fun m!3112351 () Bool)

(assert (=> b!2715044 m!3112351))

(declare-fun m!3112353 () Bool)

(assert (=> b!2715044 m!3112353))

(declare-fun m!3112355 () Bool)

(assert (=> b!2715040 m!3112355))

(declare-fun m!3112357 () Bool)

(assert (=> b!2715035 m!3112357))

(assert (=> b!2715035 m!3112357))

(declare-fun m!3112359 () Bool)

(assert (=> b!2715035 m!3112359))

(declare-fun m!3112361 () Bool)

(assert (=> b!2715024 m!3112361))

(declare-fun m!3112363 () Bool)

(assert (=> b!2715024 m!3112363))

(declare-fun m!3112365 () Bool)

(assert (=> b!2715029 m!3112365))

(assert (=> b!2715029 m!3112365))

(declare-fun m!3112367 () Bool)

(assert (=> b!2715029 m!3112367))

(declare-fun m!3112369 () Bool)

(assert (=> b!2715030 m!3112369))

(declare-fun m!3112371 () Bool)

(assert (=> b!2715030 m!3112371))

(declare-fun m!3112373 () Bool)

(assert (=> b!2715027 m!3112373))

(declare-fun m!3112375 () Bool)

(assert (=> b!2715027 m!3112375))

(declare-fun m!3112377 () Bool)

(assert (=> b!2715027 m!3112377))

(declare-fun m!3112379 () Bool)

(assert (=> b!2715027 m!3112379))

(declare-fun m!3112381 () Bool)

(assert (=> b!2715033 m!3112381))

(check-sat (not b!2715040) (not b!2715031) (not b!2715042) (not b!2715036) (not start!263456) (not b!2715035) (not b!2715029) (not b!2715026) (not b!2715043) b_and!200285 (not b!2715033) (not b!2715027) (not b!2715038) (not b!2715034) (not b!2715030) (not b_next!77243) b_and!200287 (not b!2715044) (not b!2715045) (not b_next!77241) (not b!2715028) (not b!2715041) (not b!2715032) (not b!2715025) (not b!2715024))
(check-sat b_and!200287 b_and!200285 (not b_next!77243) (not b_next!77241))
(get-model)

(declare-fun d!781790 () Bool)

(assert (=> d!781790 (= (isEmpty!17857 (list!11856 (_2!18127 lt!960690))) ((_ is Nil!31328) (list!11856 (_2!18127 lt!960690))))))

(assert (=> b!2715031 d!781790))

(declare-fun d!781794 () Bool)

(declare-fun list!11860 (Conc!9809) List!31428)

(assert (=> d!781794 (= (list!11856 (_2!18127 lt!960690)) (list!11860 (c!438566 (_2!18127 lt!960690))))))

(declare-fun bs!488053 () Bool)

(assert (= bs!488053 d!781794))

(declare-fun m!3112389 () Bool)

(assert (=> bs!488053 m!3112389))

(assert (=> b!2715031 d!781794))

(declare-fun d!781800 () Bool)

(assert (=> d!781800 (= (inv!42508 (tag!5295 (h!36750 rules!1182))) (= (mod (str.len (value!154155 (tag!5295 (h!36750 rules!1182)))) 2) 0))))

(assert (=> b!2715030 d!781800))

(declare-fun d!781802 () Bool)

(declare-fun res!1140246 () Bool)

(declare-fun e!1711380 () Bool)

(assert (=> d!781802 (=> (not res!1140246) (not e!1711380))))

(declare-fun semiInverseModEq!1975 (Int Int) Bool)

(assert (=> d!781802 (= res!1140246 (semiInverseModEq!1975 (toChars!6620 (transformation!4791 (h!36750 rules!1182))) (toValue!6761 (transformation!4791 (h!36750 rules!1182)))))))

(assert (=> d!781802 (= (inv!42518 (transformation!4791 (h!36750 rules!1182))) e!1711380)))

(declare-fun b!2715060 () Bool)

(declare-fun equivClasses!1876 (Int Int) Bool)

(assert (=> b!2715060 (= e!1711380 (equivClasses!1876 (toChars!6620 (transformation!4791 (h!36750 rules!1182))) (toValue!6761 (transformation!4791 (h!36750 rules!1182)))))))

(assert (= (and d!781802 res!1140246) b!2715060))

(declare-fun m!3112397 () Bool)

(assert (=> d!781802 m!3112397))

(declare-fun m!3112399 () Bool)

(assert (=> b!2715060 m!3112399))

(assert (=> b!2715030 d!781802))

(declare-fun d!781806 () Bool)

(declare-fun res!1140251 () Bool)

(declare-fun e!1711386 () Bool)

(assert (=> d!781806 (=> (not res!1140251) (not e!1711386))))

(declare-fun rulesValid!1781 (LexerInterface!4387 List!31430) Bool)

(assert (=> d!781806 (= res!1140251 (rulesValid!1781 thiss!11556 rules!1182))))

(assert (=> d!781806 (= (rulesInvariant!3872 thiss!11556 rules!1182) e!1711386)))

(declare-fun b!2715067 () Bool)

(declare-datatypes ((List!31431 0))(
  ( (Nil!31331) (Cons!31331 (h!36751 String!34965) (t!226257 List!31431)) )
))
(declare-fun noDuplicateTag!1777 (LexerInterface!4387 List!31430 List!31431) Bool)

(assert (=> b!2715067 (= e!1711386 (noDuplicateTag!1777 thiss!11556 rules!1182 Nil!31331))))

(assert (= (and d!781806 res!1140251) b!2715067))

(declare-fun m!3112413 () Bool)

(assert (=> d!781806 m!3112413))

(declare-fun m!3112415 () Bool)

(assert (=> b!2715067 m!3112415))

(assert (=> b!2715032 d!781806))

(declare-fun d!781812 () Bool)

(declare-fun list!11861 (Conc!9810) List!31429)

(assert (=> d!781812 (= (list!11857 acc!331) (list!11861 (c!438567 acc!331)))))

(declare-fun bs!488054 () Bool)

(assert (= bs!488054 d!781812))

(declare-fun m!3112417 () Bool)

(assert (=> bs!488054 m!3112417))

(assert (=> b!2715043 d!781812))

(declare-fun d!781814 () Bool)

(assert (=> d!781814 (= (list!11857 (_1!18127 lt!960690)) (list!11861 (c!438567 (_1!18127 lt!960690))))))

(declare-fun bs!488055 () Bool)

(assert (= bs!488055 d!781814))

(declare-fun m!3112419 () Bool)

(assert (=> bs!488055 m!3112419))

(assert (=> b!2715043 d!781814))

(declare-fun d!781816 () Bool)

(declare-fun e!1711445 () Bool)

(assert (=> d!781816 e!1711445))

(declare-fun res!1140304 () Bool)

(assert (=> d!781816 (=> (not res!1140304) (not e!1711445))))

(declare-fun e!1711444 () Bool)

(assert (=> d!781816 (= res!1140304 e!1711444)))

(declare-fun c!438600 () Bool)

(declare-fun lt!960742 () tuple2!30990)

(declare-fun size!24170 (BalanceConc!19234) Int)

(assert (=> d!781816 (= c!438600 (> (size!24170 (_1!18127 lt!960742)) 0))))

(declare-fun e!1711447 () tuple2!30990)

(assert (=> d!781816 (= lt!960742 e!1711447)))

(declare-fun c!438601 () Bool)

(declare-fun lt!960740 () Option!6183)

(assert (=> d!781816 (= c!438601 ((_ is Some!6182) lt!960740))))

(assert (=> d!781816 (= lt!960740 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 treated!9))))

(assert (=> d!781816 (= (lexRec!647 thiss!11556 rules!1182 treated!9) lt!960742)))

(declare-fun b!2715172 () Bool)

(declare-fun res!1140303 () Bool)

(assert (=> b!2715172 (=> (not res!1140303) (not e!1711445))))

(assert (=> b!2715172 (= res!1140303 (= (list!11857 (_1!18127 lt!960742)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 treated!9)))))))

(declare-fun b!2715173 () Bool)

(declare-fun e!1711446 () Bool)

(assert (=> b!2715173 (= e!1711444 e!1711446)))

(declare-fun res!1140305 () Bool)

(declare-fun size!24171 (BalanceConc!19232) Int)

(assert (=> b!2715173 (= res!1140305 (< (size!24171 (_2!18127 lt!960742)) (size!24171 treated!9)))))

(assert (=> b!2715173 (=> (not res!1140305) (not e!1711446))))

(declare-fun b!2715174 () Bool)

(assert (=> b!2715174 (= e!1711447 (tuple2!30991 (BalanceConc!19235 Empty!9810) treated!9))))

(declare-fun b!2715175 () Bool)

(declare-fun isEmpty!17860 (BalanceConc!19234) Bool)

(assert (=> b!2715175 (= e!1711446 (not (isEmpty!17860 (_1!18127 lt!960742))))))

(declare-fun b!2715176 () Bool)

(assert (=> b!2715176 (= e!1711444 (= (list!11856 (_2!18127 lt!960742)) (list!11856 treated!9)))))

(declare-fun b!2715177 () Bool)

(assert (=> b!2715177 (= e!1711445 (= (list!11856 (_2!18127 lt!960742)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 treated!9)))))))

(declare-fun b!2715178 () Bool)

(declare-fun lt!960741 () tuple2!30990)

(assert (=> b!2715178 (= e!1711447 (tuple2!30991 (prepend!1117 (_1!18127 lt!960741) (_1!18128 (v!33014 lt!960740))) (_2!18127 lt!960741)))))

(assert (=> b!2715178 (= lt!960741 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960740))))))

(assert (= (and d!781816 c!438601) b!2715178))

(assert (= (and d!781816 (not c!438601)) b!2715174))

(assert (= (and d!781816 c!438600) b!2715173))

(assert (= (and d!781816 (not c!438600)) b!2715176))

(assert (= (and b!2715173 res!1140305) b!2715175))

(assert (= (and d!781816 res!1140304) b!2715172))

(assert (= (and b!2715172 res!1140303) b!2715177))

(declare-fun m!3112601 () Bool)

(assert (=> b!2715173 m!3112601))

(declare-fun m!3112603 () Bool)

(assert (=> b!2715173 m!3112603))

(declare-fun m!3112605 () Bool)

(assert (=> b!2715175 m!3112605))

(declare-fun m!3112607 () Bool)

(assert (=> b!2715172 m!3112607))

(assert (=> b!2715172 m!3112379))

(assert (=> b!2715172 m!3112379))

(declare-fun m!3112609 () Bool)

(assert (=> b!2715172 m!3112609))

(declare-fun m!3112611 () Bool)

(assert (=> d!781816 m!3112611))

(declare-fun m!3112613 () Bool)

(assert (=> d!781816 m!3112613))

(declare-fun m!3112615 () Bool)

(assert (=> b!2715176 m!3112615))

(assert (=> b!2715176 m!3112379))

(assert (=> b!2715177 m!3112615))

(assert (=> b!2715177 m!3112379))

(assert (=> b!2715177 m!3112379))

(assert (=> b!2715177 m!3112609))

(declare-fun m!3112617 () Bool)

(assert (=> b!2715178 m!3112617))

(declare-fun m!3112619 () Bool)

(assert (=> b!2715178 m!3112619))

(assert (=> b!2715043 d!781816))

(declare-fun d!781878 () Bool)

(assert (=> d!781878 (= (isEmpty!17858 rules!1182) ((_ is Nil!31330) rules!1182))))

(assert (=> b!2715042 d!781878))

(declare-fun d!781880 () Bool)

(assert (=> d!781880 (= (list!11856 (_2!18127 lt!960684)) (list!11860 (c!438566 (_2!18127 lt!960684))))))

(declare-fun bs!488073 () Bool)

(assert (= bs!488073 d!781880))

(declare-fun m!3112631 () Bool)

(assert (=> bs!488073 m!3112631))

(assert (=> b!2715044 d!781880))

(declare-fun d!781884 () Bool)

(assert (=> d!781884 (= (list!11856 (_2!18127 lt!960665)) (list!11860 (c!438566 (_2!18127 lt!960665))))))

(declare-fun bs!488075 () Bool)

(assert (= bs!488075 d!781884))

(declare-fun m!3112635 () Bool)

(assert (=> bs!488075 m!3112635))

(assert (=> b!2715044 d!781884))

(declare-fun d!781890 () Bool)

(declare-fun c!438613 () Bool)

(assert (=> d!781890 (= c!438613 ((_ is Node!9810) (c!438567 acc!331)))))

(declare-fun e!1711461 () Bool)

(assert (=> d!781890 (= (inv!42515 (c!438567 acc!331)) e!1711461)))

(declare-fun b!2715200 () Bool)

(declare-fun inv!42523 (Conc!9810) Bool)

(assert (=> b!2715200 (= e!1711461 (inv!42523 (c!438567 acc!331)))))

(declare-fun b!2715201 () Bool)

(declare-fun e!1711464 () Bool)

(assert (=> b!2715201 (= e!1711461 e!1711464)))

(declare-fun res!1140313 () Bool)

(assert (=> b!2715201 (= res!1140313 (not ((_ is Leaf!14950) (c!438567 acc!331))))))

(assert (=> b!2715201 (=> res!1140313 e!1711464)))

(declare-fun b!2715202 () Bool)

(declare-fun inv!42524 (Conc!9810) Bool)

(assert (=> b!2715202 (= e!1711464 (inv!42524 (c!438567 acc!331)))))

(assert (= (and d!781890 c!438613) b!2715200))

(assert (= (and d!781890 (not c!438613)) b!2715201))

(assert (= (and b!2715201 (not res!1140313)) b!2715202))

(declare-fun m!3112641 () Bool)

(assert (=> b!2715200 m!3112641))

(declare-fun m!3112643 () Bool)

(assert (=> b!2715202 m!3112643))

(assert (=> b!2715033 d!781890))

(declare-fun d!781894 () Bool)

(declare-fun e!1711478 () Bool)

(assert (=> d!781894 e!1711478))

(declare-fun res!1140335 () Bool)

(assert (=> d!781894 (=> (not res!1140335) (not e!1711478))))

(declare-fun isBalanced!2971 (Conc!9810) Bool)

(declare-fun prepend!1119 (Conc!9810 Token!9044) Conc!9810)

(assert (=> d!781894 (= res!1140335 (isBalanced!2971 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677)))))))

(declare-fun lt!960759 () BalanceConc!19234)

(assert (=> d!781894 (= lt!960759 (BalanceConc!19235 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677)))))))

(assert (=> d!781894 (= (prepend!1117 (_1!18127 lt!960687) (_1!18128 (v!33014 lt!960677))) lt!960759)))

(declare-fun b!2715236 () Bool)

(assert (=> b!2715236 (= e!1711478 (= (list!11857 lt!960759) (Cons!31329 (_1!18128 (v!33014 lt!960677)) (list!11857 (_1!18127 lt!960687)))))))

(assert (= (and d!781894 res!1140335) b!2715236))

(declare-fun m!3112695 () Bool)

(assert (=> d!781894 m!3112695))

(assert (=> d!781894 m!3112695))

(declare-fun m!3112699 () Bool)

(assert (=> d!781894 m!3112699))

(declare-fun m!3112701 () Bool)

(assert (=> b!2715236 m!3112701))

(declare-fun m!3112703 () Bool)

(assert (=> b!2715236 m!3112703))

(assert (=> b!2715024 d!781894))

(declare-fun d!781904 () Bool)

(declare-fun e!1711482 () Bool)

(assert (=> d!781904 e!1711482))

(declare-fun res!1140339 () Bool)

(assert (=> d!781904 (=> (not res!1140339) (not e!1711482))))

(declare-fun e!1711481 () Bool)

(assert (=> d!781904 (= res!1140339 e!1711481)))

(declare-fun c!438621 () Bool)

(declare-fun lt!960763 () tuple2!30990)

(assert (=> d!781904 (= c!438621 (> (size!24170 (_1!18127 lt!960763)) 0))))

(declare-fun e!1711484 () tuple2!30990)

(assert (=> d!781904 (= lt!960763 e!1711484)))

(declare-fun c!438622 () Bool)

(declare-fun lt!960761 () Option!6183)

(assert (=> d!781904 (= c!438622 ((_ is Some!6182) lt!960761))))

(assert (=> d!781904 (= lt!960761 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960677))))))

(assert (=> d!781904 (= (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960677))) lt!960763)))

(declare-fun b!2715241 () Bool)

(declare-fun res!1140338 () Bool)

(assert (=> b!2715241 (=> (not res!1140338) (not e!1711482))))

(assert (=> b!2715241 (= res!1140338 (= (list!11857 (_1!18127 lt!960763)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960677)))))))))

(declare-fun b!2715242 () Bool)

(declare-fun e!1711483 () Bool)

(assert (=> b!2715242 (= e!1711481 e!1711483)))

(declare-fun res!1140340 () Bool)

(assert (=> b!2715242 (= res!1140340 (< (size!24171 (_2!18127 lt!960763)) (size!24171 (_2!18128 (v!33014 lt!960677)))))))

(assert (=> b!2715242 (=> (not res!1140340) (not e!1711483))))

(declare-fun b!2715243 () Bool)

(assert (=> b!2715243 (= e!1711484 (tuple2!30991 (BalanceConc!19235 Empty!9810) (_2!18128 (v!33014 lt!960677))))))

(declare-fun b!2715244 () Bool)

(assert (=> b!2715244 (= e!1711483 (not (isEmpty!17860 (_1!18127 lt!960763))))))

(declare-fun b!2715245 () Bool)

(assert (=> b!2715245 (= e!1711481 (= (list!11856 (_2!18127 lt!960763)) (list!11856 (_2!18128 (v!33014 lt!960677)))))))

(declare-fun b!2715246 () Bool)

(assert (=> b!2715246 (= e!1711482 (= (list!11856 (_2!18127 lt!960763)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960677)))))))))

(declare-fun b!2715247 () Bool)

(declare-fun lt!960762 () tuple2!30990)

(assert (=> b!2715247 (= e!1711484 (tuple2!30991 (prepend!1117 (_1!18127 lt!960762) (_1!18128 (v!33014 lt!960761))) (_2!18127 lt!960762)))))

(assert (=> b!2715247 (= lt!960762 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960761))))))

(assert (= (and d!781904 c!438622) b!2715247))

(assert (= (and d!781904 (not c!438622)) b!2715243))

(assert (= (and d!781904 c!438621) b!2715242))

(assert (= (and d!781904 (not c!438621)) b!2715245))

(assert (= (and b!2715242 res!1140340) b!2715244))

(assert (= (and d!781904 res!1140339) b!2715241))

(assert (= (and b!2715241 res!1140338) b!2715246))

(declare-fun m!3112715 () Bool)

(assert (=> b!2715242 m!3112715))

(declare-fun m!3112717 () Bool)

(assert (=> b!2715242 m!3112717))

(declare-fun m!3112719 () Bool)

(assert (=> b!2715244 m!3112719))

(declare-fun m!3112721 () Bool)

(assert (=> b!2715241 m!3112721))

(declare-fun m!3112723 () Bool)

(assert (=> b!2715241 m!3112723))

(assert (=> b!2715241 m!3112723))

(declare-fun m!3112725 () Bool)

(assert (=> b!2715241 m!3112725))

(declare-fun m!3112727 () Bool)

(assert (=> d!781904 m!3112727))

(declare-fun m!3112729 () Bool)

(assert (=> d!781904 m!3112729))

(declare-fun m!3112731 () Bool)

(assert (=> b!2715245 m!3112731))

(assert (=> b!2715245 m!3112723))

(assert (=> b!2715246 m!3112731))

(assert (=> b!2715246 m!3112723))

(assert (=> b!2715246 m!3112723))

(assert (=> b!2715246 m!3112725))

(declare-fun m!3112733 () Bool)

(assert (=> b!2715247 m!3112733))

(declare-fun m!3112735 () Bool)

(assert (=> b!2715247 m!3112735))

(assert (=> b!2715024 d!781904))

(declare-fun d!781908 () Bool)

(assert (=> d!781908 (= (list!11857 (++!7771 lt!960678 (_1!18127 lt!960670))) (list!11861 (c!438567 (++!7771 lt!960678 (_1!18127 lt!960670)))))))

(declare-fun bs!488079 () Bool)

(assert (= bs!488079 d!781908))

(declare-fun m!3112737 () Bool)

(assert (=> bs!488079 m!3112737))

(assert (=> b!2715035 d!781908))

(declare-fun e!1711487 () Bool)

(declare-fun b!2715259 () Bool)

(declare-fun lt!960766 () BalanceConc!19234)

(assert (=> b!2715259 (= e!1711487 (= (list!11857 lt!960766) (++!7770 (list!11857 lt!960678) (list!11857 (_1!18127 lt!960670)))))))

(declare-fun d!781910 () Bool)

(assert (=> d!781910 e!1711487))

(declare-fun res!1140352 () Bool)

(assert (=> d!781910 (=> (not res!1140352) (not e!1711487))))

(declare-fun appendAssocInst!688 (Conc!9810 Conc!9810) Bool)

(assert (=> d!781910 (= res!1140352 (appendAssocInst!688 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670))))))

(declare-fun ++!7774 (Conc!9810 Conc!9810) Conc!9810)

(assert (=> d!781910 (= lt!960766 (BalanceConc!19235 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))))))

(assert (=> d!781910 (= (++!7771 lt!960678 (_1!18127 lt!960670)) lt!960766)))

(declare-fun b!2715256 () Bool)

(declare-fun res!1140351 () Bool)

(assert (=> b!2715256 (=> (not res!1140351) (not e!1711487))))

(assert (=> b!2715256 (= res!1140351 (isBalanced!2971 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))))))

(declare-fun b!2715257 () Bool)

(declare-fun res!1140349 () Bool)

(assert (=> b!2715257 (=> (not res!1140349) (not e!1711487))))

(declare-fun height!1451 (Conc!9810) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2715257 (= res!1140349 (<= (height!1451 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))) (+ (max!0 (height!1451 (c!438567 lt!960678)) (height!1451 (c!438567 (_1!18127 lt!960670)))) 1)))))

(declare-fun b!2715258 () Bool)

(declare-fun res!1140350 () Bool)

(assert (=> b!2715258 (=> (not res!1140350) (not e!1711487))))

(assert (=> b!2715258 (= res!1140350 (>= (height!1451 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))) (max!0 (height!1451 (c!438567 lt!960678)) (height!1451 (c!438567 (_1!18127 lt!960670))))))))

(assert (= (and d!781910 res!1140352) b!2715256))

(assert (= (and b!2715256 res!1140351) b!2715257))

(assert (= (and b!2715257 res!1140349) b!2715258))

(assert (= (and b!2715258 res!1140350) b!2715259))

(declare-fun m!3112739 () Bool)

(assert (=> b!2715257 m!3112739))

(declare-fun m!3112741 () Bool)

(assert (=> b!2715257 m!3112741))

(assert (=> b!2715257 m!3112739))

(declare-fun m!3112743 () Bool)

(assert (=> b!2715257 m!3112743))

(declare-fun m!3112745 () Bool)

(assert (=> b!2715257 m!3112745))

(declare-fun m!3112747 () Bool)

(assert (=> b!2715257 m!3112747))

(assert (=> b!2715257 m!3112743))

(assert (=> b!2715257 m!3112745))

(declare-fun m!3112749 () Bool)

(assert (=> b!2715259 m!3112749))

(assert (=> b!2715259 m!3112289))

(assert (=> b!2715259 m!3112295))

(assert (=> b!2715259 m!3112289))

(assert (=> b!2715259 m!3112295))

(declare-fun m!3112751 () Bool)

(assert (=> b!2715259 m!3112751))

(declare-fun m!3112753 () Bool)

(assert (=> d!781910 m!3112753))

(assert (=> d!781910 m!3112739))

(assert (=> b!2715258 m!3112739))

(assert (=> b!2715258 m!3112741))

(assert (=> b!2715258 m!3112739))

(assert (=> b!2715258 m!3112743))

(assert (=> b!2715258 m!3112745))

(assert (=> b!2715258 m!3112747))

(assert (=> b!2715258 m!3112743))

(assert (=> b!2715258 m!3112745))

(assert (=> b!2715256 m!3112739))

(assert (=> b!2715256 m!3112739))

(declare-fun m!3112755 () Bool)

(assert (=> b!2715256 m!3112755))

(assert (=> b!2715035 d!781910))

(declare-fun d!781912 () Bool)

(declare-fun e!1711493 () Bool)

(assert (=> d!781912 e!1711493))

(declare-fun res!1140357 () Bool)

(assert (=> d!781912 (=> (not res!1140357) (not e!1711493))))

(declare-fun lt!960769 () List!31429)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4437 (List!31429) (InoxSet Token!9044))

(assert (=> d!781912 (= res!1140357 (= (content!4437 lt!960769) ((_ map or) (content!4437 lt!960666) (content!4437 (++!7770 lt!960676 lt!960688)))))))

(declare-fun e!1711492 () List!31429)

(assert (=> d!781912 (= lt!960769 e!1711492)))

(declare-fun c!438628 () Bool)

(assert (=> d!781912 (= c!438628 ((_ is Nil!31329) lt!960666))))

(assert (=> d!781912 (= (++!7770 lt!960666 (++!7770 lt!960676 lt!960688)) lt!960769)))

(declare-fun b!2715271 () Bool)

(assert (=> b!2715271 (= e!1711493 (or (not (= (++!7770 lt!960676 lt!960688) Nil!31329)) (= lt!960769 lt!960666)))))

(declare-fun b!2715268 () Bool)

(assert (=> b!2715268 (= e!1711492 (++!7770 lt!960676 lt!960688))))

(declare-fun b!2715269 () Bool)

(assert (=> b!2715269 (= e!1711492 (Cons!31329 (h!36749 lt!960666) (++!7770 (t!226247 lt!960666) (++!7770 lt!960676 lt!960688))))))

(declare-fun b!2715270 () Bool)

(declare-fun res!1140358 () Bool)

(assert (=> b!2715270 (=> (not res!1140358) (not e!1711493))))

(declare-fun size!24173 (List!31429) Int)

(assert (=> b!2715270 (= res!1140358 (= (size!24173 lt!960769) (+ (size!24173 lt!960666) (size!24173 (++!7770 lt!960676 lt!960688)))))))

(assert (= (and d!781912 c!438628) b!2715268))

(assert (= (and d!781912 (not c!438628)) b!2715269))

(assert (= (and d!781912 res!1140357) b!2715270))

(assert (= (and b!2715270 res!1140358) b!2715271))

(declare-fun m!3112757 () Bool)

(assert (=> d!781912 m!3112757))

(declare-fun m!3112759 () Bool)

(assert (=> d!781912 m!3112759))

(assert (=> d!781912 m!3112291))

(declare-fun m!3112761 () Bool)

(assert (=> d!781912 m!3112761))

(assert (=> b!2715269 m!3112291))

(declare-fun m!3112763 () Bool)

(assert (=> b!2715269 m!3112763))

(declare-fun m!3112765 () Bool)

(assert (=> b!2715270 m!3112765))

(declare-fun m!3112767 () Bool)

(assert (=> b!2715270 m!3112767))

(assert (=> b!2715270 m!3112291))

(declare-fun m!3112769 () Bool)

(assert (=> b!2715270 m!3112769))

(assert (=> b!2715034 d!781912))

(declare-fun d!781914 () Bool)

(assert (=> d!781914 (= (list!11856 (_2!18128 (v!33014 lt!960664))) (list!11860 (c!438566 (_2!18128 (v!33014 lt!960664)))))))

(declare-fun bs!488080 () Bool)

(assert (= bs!488080 d!781914))

(declare-fun m!3112771 () Bool)

(assert (=> bs!488080 m!3112771))

(assert (=> b!2715034 d!781914))

(declare-fun e!1711498 () List!31428)

(declare-fun b!2715281 () Bool)

(assert (=> b!2715281 (= e!1711498 (Cons!31328 (h!36748 lt!960683) (++!7768 (t!226246 lt!960683) (++!7768 lt!960668 lt!960680))))))

(declare-fun b!2715282 () Bool)

(declare-fun res!1140363 () Bool)

(declare-fun e!1711499 () Bool)

(assert (=> b!2715282 (=> (not res!1140363) (not e!1711499))))

(declare-fun lt!960772 () List!31428)

(declare-fun size!24174 (List!31428) Int)

(assert (=> b!2715282 (= res!1140363 (= (size!24174 lt!960772) (+ (size!24174 lt!960683) (size!24174 (++!7768 lt!960668 lt!960680)))))))

(declare-fun b!2715283 () Bool)

(assert (=> b!2715283 (= e!1711499 (or (not (= (++!7768 lt!960668 lt!960680) Nil!31328)) (= lt!960772 lt!960683)))))

(declare-fun d!781916 () Bool)

(assert (=> d!781916 e!1711499))

(declare-fun res!1140364 () Bool)

(assert (=> d!781916 (=> (not res!1140364) (not e!1711499))))

(declare-fun content!4438 (List!31428) (InoxSet C!16044))

(assert (=> d!781916 (= res!1140364 (= (content!4438 lt!960772) ((_ map or) (content!4438 lt!960683) (content!4438 (++!7768 lt!960668 lt!960680)))))))

(assert (=> d!781916 (= lt!960772 e!1711498)))

(declare-fun c!438631 () Bool)

(assert (=> d!781916 (= c!438631 ((_ is Nil!31328) lt!960683))))

(assert (=> d!781916 (= (++!7768 lt!960683 (++!7768 lt!960668 lt!960680)) lt!960772)))

(declare-fun b!2715280 () Bool)

(assert (=> b!2715280 (= e!1711498 (++!7768 lt!960668 lt!960680))))

(assert (= (and d!781916 c!438631) b!2715280))

(assert (= (and d!781916 (not c!438631)) b!2715281))

(assert (= (and d!781916 res!1140364) b!2715282))

(assert (= (and b!2715282 res!1140363) b!2715283))

(assert (=> b!2715281 m!3112317))

(declare-fun m!3112773 () Bool)

(assert (=> b!2715281 m!3112773))

(declare-fun m!3112775 () Bool)

(assert (=> b!2715282 m!3112775))

(declare-fun m!3112777 () Bool)

(assert (=> b!2715282 m!3112777))

(assert (=> b!2715282 m!3112317))

(declare-fun m!3112779 () Bool)

(assert (=> b!2715282 m!3112779))

(declare-fun m!3112781 () Bool)

(assert (=> d!781916 m!3112781))

(declare-fun m!3112783 () Bool)

(assert (=> d!781916 m!3112783))

(assert (=> d!781916 m!3112317))

(declare-fun m!3112785 () Bool)

(assert (=> d!781916 m!3112785))

(assert (=> b!2715034 d!781916))

(declare-fun b!2715285 () Bool)

(declare-fun e!1711500 () List!31428)

(assert (=> b!2715285 (= e!1711500 (Cons!31328 (h!36748 lt!960668) (++!7768 (t!226246 lt!960668) lt!960680)))))

(declare-fun b!2715286 () Bool)

(declare-fun res!1140365 () Bool)

(declare-fun e!1711501 () Bool)

(assert (=> b!2715286 (=> (not res!1140365) (not e!1711501))))

(declare-fun lt!960773 () List!31428)

(assert (=> b!2715286 (= res!1140365 (= (size!24174 lt!960773) (+ (size!24174 lt!960668) (size!24174 lt!960680))))))

(declare-fun b!2715287 () Bool)

(assert (=> b!2715287 (= e!1711501 (or (not (= lt!960680 Nil!31328)) (= lt!960773 lt!960668)))))

(declare-fun d!781918 () Bool)

(assert (=> d!781918 e!1711501))

(declare-fun res!1140366 () Bool)

(assert (=> d!781918 (=> (not res!1140366) (not e!1711501))))

(assert (=> d!781918 (= res!1140366 (= (content!4438 lt!960773) ((_ map or) (content!4438 lt!960668) (content!4438 lt!960680))))))

(assert (=> d!781918 (= lt!960773 e!1711500)))

(declare-fun c!438632 () Bool)

(assert (=> d!781918 (= c!438632 ((_ is Nil!31328) lt!960668))))

(assert (=> d!781918 (= (++!7768 lt!960668 lt!960680) lt!960773)))

(declare-fun b!2715284 () Bool)

(assert (=> b!2715284 (= e!1711500 lt!960680)))

(assert (= (and d!781918 c!438632) b!2715284))

(assert (= (and d!781918 (not c!438632)) b!2715285))

(assert (= (and d!781918 res!1140366) b!2715286))

(assert (= (and b!2715286 res!1140365) b!2715287))

(declare-fun m!3112787 () Bool)

(assert (=> b!2715285 m!3112787))

(declare-fun m!3112789 () Bool)

(assert (=> b!2715286 m!3112789))

(declare-fun m!3112791 () Bool)

(assert (=> b!2715286 m!3112791))

(declare-fun m!3112793 () Bool)

(assert (=> b!2715286 m!3112793))

(declare-fun m!3112795 () Bool)

(assert (=> d!781918 m!3112795))

(declare-fun m!3112797 () Bool)

(assert (=> d!781918 m!3112797))

(declare-fun m!3112799 () Bool)

(assert (=> d!781918 m!3112799))

(assert (=> b!2715034 d!781918))

(declare-fun d!781920 () Bool)

(declare-fun e!1711503 () Bool)

(assert (=> d!781920 e!1711503))

(declare-fun res!1140367 () Bool)

(assert (=> d!781920 (=> (not res!1140367) (not e!1711503))))

(declare-fun lt!960774 () List!31429)

(assert (=> d!781920 (= res!1140367 (= (content!4437 lt!960774) ((_ map or) (content!4437 (++!7770 lt!960666 lt!960676)) (content!4437 lt!960688))))))

(declare-fun e!1711502 () List!31429)

(assert (=> d!781920 (= lt!960774 e!1711502)))

(declare-fun c!438633 () Bool)

(assert (=> d!781920 (= c!438633 ((_ is Nil!31329) (++!7770 lt!960666 lt!960676)))))

(assert (=> d!781920 (= (++!7770 (++!7770 lt!960666 lt!960676) lt!960688) lt!960774)))

(declare-fun b!2715291 () Bool)

(assert (=> b!2715291 (= e!1711503 (or (not (= lt!960688 Nil!31329)) (= lt!960774 (++!7770 lt!960666 lt!960676))))))

(declare-fun b!2715288 () Bool)

(assert (=> b!2715288 (= e!1711502 lt!960688)))

(declare-fun b!2715289 () Bool)

(assert (=> b!2715289 (= e!1711502 (Cons!31329 (h!36749 (++!7770 lt!960666 lt!960676)) (++!7770 (t!226247 (++!7770 lt!960666 lt!960676)) lt!960688)))))

(declare-fun b!2715290 () Bool)

(declare-fun res!1140368 () Bool)

(assert (=> b!2715290 (=> (not res!1140368) (not e!1711503))))

(assert (=> b!2715290 (= res!1140368 (= (size!24173 lt!960774) (+ (size!24173 (++!7770 lt!960666 lt!960676)) (size!24173 lt!960688))))))

(assert (= (and d!781920 c!438633) b!2715288))

(assert (= (and d!781920 (not c!438633)) b!2715289))

(assert (= (and d!781920 res!1140367) b!2715290))

(assert (= (and b!2715290 res!1140368) b!2715291))

(declare-fun m!3112801 () Bool)

(assert (=> d!781920 m!3112801))

(assert (=> d!781920 m!3112333))

(declare-fun m!3112803 () Bool)

(assert (=> d!781920 m!3112803))

(declare-fun m!3112805 () Bool)

(assert (=> d!781920 m!3112805))

(declare-fun m!3112807 () Bool)

(assert (=> b!2715289 m!3112807))

(declare-fun m!3112809 () Bool)

(assert (=> b!2715290 m!3112809))

(assert (=> b!2715290 m!3112333))

(declare-fun m!3112811 () Bool)

(assert (=> b!2715290 m!3112811))

(declare-fun m!3112813 () Bool)

(assert (=> b!2715290 m!3112813))

(assert (=> b!2715034 d!781920))

(declare-fun d!781922 () Bool)

(declare-fun e!1711505 () Bool)

(assert (=> d!781922 e!1711505))

(declare-fun res!1140370 () Bool)

(assert (=> d!781922 (=> (not res!1140370) (not e!1711505))))

(declare-fun e!1711504 () Bool)

(assert (=> d!781922 (= res!1140370 e!1711504)))

(declare-fun c!438634 () Bool)

(declare-fun lt!960777 () tuple2!30990)

(assert (=> d!781922 (= c!438634 (> (size!24170 (_1!18127 lt!960777)) 0))))

(declare-fun e!1711507 () tuple2!30990)

(assert (=> d!781922 (= lt!960777 e!1711507)))

(declare-fun c!438635 () Bool)

(declare-fun lt!960775 () Option!6183)

(assert (=> d!781922 (= c!438635 ((_ is Some!6182) lt!960775))))

(assert (=> d!781922 (= lt!960775 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960664))))))

(assert (=> d!781922 (= (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960664))) lt!960777)))

(declare-fun b!2715292 () Bool)

(declare-fun res!1140369 () Bool)

(assert (=> b!2715292 (=> (not res!1140369) (not e!1711505))))

(assert (=> b!2715292 (= res!1140369 (= (list!11857 (_1!18127 lt!960777)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960664)))))))))

(declare-fun b!2715293 () Bool)

(declare-fun e!1711506 () Bool)

(assert (=> b!2715293 (= e!1711504 e!1711506)))

(declare-fun res!1140371 () Bool)

(assert (=> b!2715293 (= res!1140371 (< (size!24171 (_2!18127 lt!960777)) (size!24171 (_2!18128 (v!33014 lt!960664)))))))

(assert (=> b!2715293 (=> (not res!1140371) (not e!1711506))))

(declare-fun b!2715294 () Bool)

(assert (=> b!2715294 (= e!1711507 (tuple2!30991 (BalanceConc!19235 Empty!9810) (_2!18128 (v!33014 lt!960664))))))

(declare-fun b!2715295 () Bool)

(assert (=> b!2715295 (= e!1711506 (not (isEmpty!17860 (_1!18127 lt!960777))))))

(declare-fun b!2715296 () Bool)

(assert (=> b!2715296 (= e!1711504 (= (list!11856 (_2!18127 lt!960777)) (list!11856 (_2!18128 (v!33014 lt!960664)))))))

(declare-fun b!2715297 () Bool)

(assert (=> b!2715297 (= e!1711505 (= (list!11856 (_2!18127 lt!960777)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960664)))))))))

(declare-fun b!2715298 () Bool)

(declare-fun lt!960776 () tuple2!30990)

(assert (=> b!2715298 (= e!1711507 (tuple2!30991 (prepend!1117 (_1!18127 lt!960776) (_1!18128 (v!33014 lt!960775))) (_2!18127 lt!960776)))))

(assert (=> b!2715298 (= lt!960776 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960775))))))

(assert (= (and d!781922 c!438635) b!2715298))

(assert (= (and d!781922 (not c!438635)) b!2715294))

(assert (= (and d!781922 c!438634) b!2715293))

(assert (= (and d!781922 (not c!438634)) b!2715296))

(assert (= (and b!2715293 res!1140371) b!2715295))

(assert (= (and d!781922 res!1140370) b!2715292))

(assert (= (and b!2715292 res!1140369) b!2715297))

(declare-fun m!3112815 () Bool)

(assert (=> b!2715293 m!3112815))

(declare-fun m!3112817 () Bool)

(assert (=> b!2715293 m!3112817))

(declare-fun m!3112819 () Bool)

(assert (=> b!2715295 m!3112819))

(declare-fun m!3112821 () Bool)

(assert (=> b!2715292 m!3112821))

(assert (=> b!2715292 m!3112315))

(assert (=> b!2715292 m!3112315))

(declare-fun m!3112823 () Bool)

(assert (=> b!2715292 m!3112823))

(declare-fun m!3112825 () Bool)

(assert (=> d!781922 m!3112825))

(declare-fun m!3112827 () Bool)

(assert (=> d!781922 m!3112827))

(declare-fun m!3112829 () Bool)

(assert (=> b!2715296 m!3112829))

(assert (=> b!2715296 m!3112315))

(assert (=> b!2715297 m!3112829))

(assert (=> b!2715297 m!3112315))

(assert (=> b!2715297 m!3112315))

(assert (=> b!2715297 m!3112823))

(declare-fun m!3112831 () Bool)

(assert (=> b!2715298 m!3112831))

(declare-fun m!3112833 () Bool)

(assert (=> b!2715298 m!3112833))

(assert (=> b!2715034 d!781922))

(declare-fun b!2715353 () Bool)

(declare-fun e!1711542 () tuple2!30994)

(declare-datatypes ((tuple2!30998 0))(
  ( (tuple2!30999 (_1!18131 Token!9044) (_2!18131 List!31428)) )
))
(declare-datatypes ((Option!6185 0))(
  ( (None!6184) (Some!6184 (v!33020 tuple2!30998)) )
))
(declare-fun lt!960812 () Option!6185)

(declare-fun lt!960814 () tuple2!30994)

(assert (=> b!2715353 (= e!1711542 (tuple2!30995 (Cons!31329 (_1!18131 (v!33020 lt!960812)) (_1!18129 lt!960814)) (_2!18129 lt!960814)))))

(assert (=> b!2715353 (= lt!960814 (lexList!1218 thiss!11556 rules!1182 (_2!18131 (v!33020 lt!960812))))))

(declare-fun b!2715354 () Bool)

(assert (=> b!2715354 (= e!1711542 (tuple2!30995 Nil!31329 lt!960685))))

(declare-fun d!781924 () Bool)

(declare-fun e!1711543 () Bool)

(assert (=> d!781924 e!1711543))

(declare-fun c!438648 () Bool)

(declare-fun lt!960813 () tuple2!30994)

(assert (=> d!781924 (= c!438648 (> (size!24173 (_1!18129 lt!960813)) 0))))

(assert (=> d!781924 (= lt!960813 e!1711542)))

(declare-fun c!438649 () Bool)

(assert (=> d!781924 (= c!438649 ((_ is Some!6184) lt!960812))))

(declare-fun maxPrefix!2366 (LexerInterface!4387 List!31430 List!31428) Option!6185)

(assert (=> d!781924 (= lt!960812 (maxPrefix!2366 thiss!11556 rules!1182 lt!960685))))

(assert (=> d!781924 (= (lexList!1218 thiss!11556 rules!1182 lt!960685) lt!960813)))

(declare-fun b!2715355 () Bool)

(declare-fun e!1711544 () Bool)

(assert (=> b!2715355 (= e!1711543 e!1711544)))

(declare-fun res!1140402 () Bool)

(assert (=> b!2715355 (= res!1140402 (< (size!24174 (_2!18129 lt!960813)) (size!24174 lt!960685)))))

(assert (=> b!2715355 (=> (not res!1140402) (not e!1711544))))

(declare-fun b!2715356 () Bool)

(declare-fun isEmpty!17862 (List!31429) Bool)

(assert (=> b!2715356 (= e!1711544 (not (isEmpty!17862 (_1!18129 lt!960813))))))

(declare-fun b!2715357 () Bool)

(assert (=> b!2715357 (= e!1711543 (= (_2!18129 lt!960813) lt!960685))))

(assert (= (and d!781924 c!438649) b!2715353))

(assert (= (and d!781924 (not c!438649)) b!2715354))

(assert (= (and d!781924 c!438648) b!2715355))

(assert (= (and d!781924 (not c!438648)) b!2715357))

(assert (= (and b!2715355 res!1140402) b!2715356))

(declare-fun m!3112909 () Bool)

(assert (=> b!2715353 m!3112909))

(declare-fun m!3112913 () Bool)

(assert (=> d!781924 m!3112913))

(declare-fun m!3112915 () Bool)

(assert (=> d!781924 m!3112915))

(declare-fun m!3112919 () Bool)

(assert (=> b!2715355 m!3112919))

(declare-fun m!3112921 () Bool)

(assert (=> b!2715355 m!3112921))

(declare-fun m!3112923 () Bool)

(assert (=> b!2715356 m!3112923))

(assert (=> b!2715034 d!781924))

(declare-fun b!2715359 () Bool)

(declare-fun e!1711545 () List!31428)

(assert (=> b!2715359 (= e!1711545 (Cons!31328 (h!36748 lt!960685) (++!7768 (t!226246 lt!960685) lt!960680)))))

(declare-fun b!2715360 () Bool)

(declare-fun res!1140403 () Bool)

(declare-fun e!1711546 () Bool)

(assert (=> b!2715360 (=> (not res!1140403) (not e!1711546))))

(declare-fun lt!960816 () List!31428)

(assert (=> b!2715360 (= res!1140403 (= (size!24174 lt!960816) (+ (size!24174 lt!960685) (size!24174 lt!960680))))))

(declare-fun b!2715361 () Bool)

(assert (=> b!2715361 (= e!1711546 (or (not (= lt!960680 Nil!31328)) (= lt!960816 lt!960685)))))

(declare-fun d!781942 () Bool)

(assert (=> d!781942 e!1711546))

(declare-fun res!1140404 () Bool)

(assert (=> d!781942 (=> (not res!1140404) (not e!1711546))))

(assert (=> d!781942 (= res!1140404 (= (content!4438 lt!960816) ((_ map or) (content!4438 lt!960685) (content!4438 lt!960680))))))

(assert (=> d!781942 (= lt!960816 e!1711545)))

(declare-fun c!438650 () Bool)

(assert (=> d!781942 (= c!438650 ((_ is Nil!31328) lt!960685))))

(assert (=> d!781942 (= (++!7768 lt!960685 lt!960680) lt!960816)))

(declare-fun b!2715358 () Bool)

(assert (=> b!2715358 (= e!1711545 lt!960680)))

(assert (= (and d!781942 c!438650) b!2715358))

(assert (= (and d!781942 (not c!438650)) b!2715359))

(assert (= (and d!781942 res!1140404) b!2715360))

(assert (= (and b!2715360 res!1140403) b!2715361))

(declare-fun m!3112925 () Bool)

(assert (=> b!2715359 m!3112925))

(declare-fun m!3112927 () Bool)

(assert (=> b!2715360 m!3112927))

(assert (=> b!2715360 m!3112921))

(assert (=> b!2715360 m!3112793))

(declare-fun m!3112929 () Bool)

(assert (=> d!781942 m!3112929))

(declare-fun m!3112931 () Bool)

(assert (=> d!781942 m!3112931))

(assert (=> d!781942 m!3112799))

(assert (=> b!2715034 d!781942))

(declare-fun b!2715363 () Bool)

(declare-fun e!1711547 () List!31428)

(assert (=> b!2715363 (= e!1711547 (Cons!31328 (h!36748 (list!11856 lt!960675)) (++!7768 (t!226246 (list!11856 lt!960675)) lt!960680)))))

(declare-fun b!2715364 () Bool)

(declare-fun res!1140405 () Bool)

(declare-fun e!1711548 () Bool)

(assert (=> b!2715364 (=> (not res!1140405) (not e!1711548))))

(declare-fun lt!960817 () List!31428)

(assert (=> b!2715364 (= res!1140405 (= (size!24174 lt!960817) (+ (size!24174 (list!11856 lt!960675)) (size!24174 lt!960680))))))

(declare-fun b!2715365 () Bool)

(assert (=> b!2715365 (= e!1711548 (or (not (= lt!960680 Nil!31328)) (= lt!960817 (list!11856 lt!960675))))))

(declare-fun d!781944 () Bool)

(assert (=> d!781944 e!1711548))

(declare-fun res!1140406 () Bool)

(assert (=> d!781944 (=> (not res!1140406) (not e!1711548))))

(assert (=> d!781944 (= res!1140406 (= (content!4438 lt!960817) ((_ map or) (content!4438 (list!11856 lt!960675)) (content!4438 lt!960680))))))

(assert (=> d!781944 (= lt!960817 e!1711547)))

(declare-fun c!438651 () Bool)

(assert (=> d!781944 (= c!438651 ((_ is Nil!31328) (list!11856 lt!960675)))))

(assert (=> d!781944 (= (++!7768 (list!11856 lt!960675) lt!960680) lt!960817)))

(declare-fun b!2715362 () Bool)

(assert (=> b!2715362 (= e!1711547 lt!960680)))

(assert (= (and d!781944 c!438651) b!2715362))

(assert (= (and d!781944 (not c!438651)) b!2715363))

(assert (= (and d!781944 res!1140406) b!2715364))

(assert (= (and b!2715364 res!1140405) b!2715365))

(declare-fun m!3112933 () Bool)

(assert (=> b!2715363 m!3112933))

(declare-fun m!3112935 () Bool)

(assert (=> b!2715364 m!3112935))

(assert (=> b!2715364 m!3112299))

(declare-fun m!3112937 () Bool)

(assert (=> b!2715364 m!3112937))

(assert (=> b!2715364 m!3112793))

(declare-fun m!3112939 () Bool)

(assert (=> d!781944 m!3112939))

(assert (=> d!781944 m!3112299))

(declare-fun m!3112941 () Bool)

(assert (=> d!781944 m!3112941))

(assert (=> d!781944 m!3112799))

(assert (=> b!2715034 d!781944))

(declare-fun d!781946 () Bool)

(declare-fun e!1711550 () Bool)

(assert (=> d!781946 e!1711550))

(declare-fun res!1140407 () Bool)

(assert (=> d!781946 (=> (not res!1140407) (not e!1711550))))

(declare-fun lt!960818 () List!31429)

(assert (=> d!781946 (= res!1140407 (= (content!4437 lt!960818) ((_ map or) (content!4437 lt!960666) (content!4437 lt!960676))))))

(declare-fun e!1711549 () List!31429)

(assert (=> d!781946 (= lt!960818 e!1711549)))

(declare-fun c!438652 () Bool)

(assert (=> d!781946 (= c!438652 ((_ is Nil!31329) lt!960666))))

(assert (=> d!781946 (= (++!7770 lt!960666 lt!960676) lt!960818)))

(declare-fun b!2715369 () Bool)

(assert (=> b!2715369 (= e!1711550 (or (not (= lt!960676 Nil!31329)) (= lt!960818 lt!960666)))))

(declare-fun b!2715366 () Bool)

(assert (=> b!2715366 (= e!1711549 lt!960676)))

(declare-fun b!2715367 () Bool)

(assert (=> b!2715367 (= e!1711549 (Cons!31329 (h!36749 lt!960666) (++!7770 (t!226247 lt!960666) lt!960676)))))

(declare-fun b!2715368 () Bool)

(declare-fun res!1140408 () Bool)

(assert (=> b!2715368 (=> (not res!1140408) (not e!1711550))))

(assert (=> b!2715368 (= res!1140408 (= (size!24173 lt!960818) (+ (size!24173 lt!960666) (size!24173 lt!960676))))))

(assert (= (and d!781946 c!438652) b!2715366))

(assert (= (and d!781946 (not c!438652)) b!2715367))

(assert (= (and d!781946 res!1140407) b!2715368))

(assert (= (and b!2715368 res!1140408) b!2715369))

(declare-fun m!3112943 () Bool)

(assert (=> d!781946 m!3112943))

(assert (=> d!781946 m!3112759))

(declare-fun m!3112945 () Bool)

(assert (=> d!781946 m!3112945))

(declare-fun m!3112947 () Bool)

(assert (=> b!2715367 m!3112947))

(declare-fun m!3112949 () Bool)

(assert (=> b!2715368 m!3112949))

(assert (=> b!2715368 m!3112767))

(declare-fun m!3112951 () Bool)

(assert (=> b!2715368 m!3112951))

(assert (=> b!2715034 d!781946))

(declare-fun d!781948 () Bool)

(assert (=> d!781948 (= (++!7770 (++!7770 lt!960666 lt!960676) lt!960688) (++!7770 lt!960666 (++!7770 lt!960676 lt!960688)))))

(declare-fun lt!960828 () Unit!45356)

(declare-fun choose!15968 (List!31429 List!31429 List!31429) Unit!45356)

(assert (=> d!781948 (= lt!960828 (choose!15968 lt!960666 lt!960676 lt!960688))))

(assert (=> d!781948 (= (lemmaConcatAssociativity!1601 lt!960666 lt!960676 lt!960688) lt!960828)))

(declare-fun bs!488083 () Bool)

(assert (= bs!488083 d!781948))

(assert (=> bs!488083 m!3112333))

(assert (=> bs!488083 m!3112335))

(declare-fun m!3112965 () Bool)

(assert (=> bs!488083 m!3112965))

(assert (=> bs!488083 m!3112291))

(assert (=> bs!488083 m!3112333))

(assert (=> bs!488083 m!3112291))

(assert (=> bs!488083 m!3112293))

(assert (=> b!2715034 d!781948))

(declare-fun d!781952 () Bool)

(assert (=> d!781952 (= (lexList!1218 thiss!11556 rules!1182 lt!960685) (tuple2!30995 lt!960673 Nil!31328))))

(declare-fun lt!960838 () Unit!45356)

(declare-fun choose!15969 (LexerInterface!4387 List!31430 List!31428 List!31428 List!31429 List!31429 List!31428) Unit!45356)

(assert (=> d!781952 (= lt!960838 (choose!15969 thiss!11556 rules!1182 lt!960685 lt!960680 lt!960673 lt!960688 (list!11856 (_2!18127 lt!960670))))))

(assert (=> d!781952 (not (isEmpty!17858 rules!1182))))

(assert (=> d!781952 (= (lemmaLexThenLexPrefix!426 thiss!11556 rules!1182 lt!960685 lt!960680 lt!960673 lt!960688 (list!11856 (_2!18127 lt!960670))) lt!960838)))

(declare-fun bs!488086 () Bool)

(assert (= bs!488086 d!781952))

(assert (=> bs!488086 m!3112307))

(assert (=> bs!488086 m!3112287))

(declare-fun m!3113073 () Bool)

(assert (=> bs!488086 m!3113073))

(assert (=> bs!488086 m!3112347))

(assert (=> b!2715034 d!781952))

(declare-fun d!781964 () Bool)

(assert (=> d!781964 (= (list!11856 (_2!18127 lt!960670)) (list!11860 (c!438566 (_2!18127 lt!960670))))))

(declare-fun bs!488087 () Bool)

(assert (= bs!488087 d!781964))

(declare-fun m!3113075 () Bool)

(assert (=> bs!488087 m!3113075))

(assert (=> b!2715034 d!781964))

(declare-fun d!781966 () Bool)

(assert (=> d!781966 (= (list!11856 lt!960679) (list!11860 (c!438566 lt!960679)))))

(declare-fun bs!488088 () Bool)

(assert (= bs!488088 d!781966))

(declare-fun m!3113077 () Bool)

(assert (=> bs!488088 m!3113077))

(assert (=> b!2715034 d!781966))

(declare-fun b!2715453 () Bool)

(declare-fun e!1711600 () List!31428)

(assert (=> b!2715453 (= e!1711600 (Cons!31328 (h!36748 lt!960683) (++!7768 (t!226246 lt!960683) lt!960668)))))

(declare-fun b!2715454 () Bool)

(declare-fun res!1140428 () Bool)

(declare-fun e!1711601 () Bool)

(assert (=> b!2715454 (=> (not res!1140428) (not e!1711601))))

(declare-fun lt!960839 () List!31428)

(assert (=> b!2715454 (= res!1140428 (= (size!24174 lt!960839) (+ (size!24174 lt!960683) (size!24174 lt!960668))))))

(declare-fun b!2715455 () Bool)

(assert (=> b!2715455 (= e!1711601 (or (not (= lt!960668 Nil!31328)) (= lt!960839 lt!960683)))))

(declare-fun d!781968 () Bool)

(assert (=> d!781968 e!1711601))

(declare-fun res!1140429 () Bool)

(assert (=> d!781968 (=> (not res!1140429) (not e!1711601))))

(assert (=> d!781968 (= res!1140429 (= (content!4438 lt!960839) ((_ map or) (content!4438 lt!960683) (content!4438 lt!960668))))))

(assert (=> d!781968 (= lt!960839 e!1711600)))

(declare-fun c!438658 () Bool)

(assert (=> d!781968 (= c!438658 ((_ is Nil!31328) lt!960683))))

(assert (=> d!781968 (= (++!7768 lt!960683 lt!960668) lt!960839)))

(declare-fun b!2715452 () Bool)

(assert (=> b!2715452 (= e!1711600 lt!960668)))

(assert (= (and d!781968 c!438658) b!2715452))

(assert (= (and d!781968 (not c!438658)) b!2715453))

(assert (= (and d!781968 res!1140429) b!2715454))

(assert (= (and b!2715454 res!1140428) b!2715455))

(declare-fun m!3113079 () Bool)

(assert (=> b!2715453 m!3113079))

(declare-fun m!3113081 () Bool)

(assert (=> b!2715454 m!3113081))

(assert (=> b!2715454 m!3112777))

(assert (=> b!2715454 m!3112791))

(declare-fun m!3113083 () Bool)

(assert (=> d!781968 m!3113083))

(assert (=> d!781968 m!3112783))

(assert (=> d!781968 m!3112797))

(assert (=> b!2715034 d!781968))

(declare-fun d!781970 () Bool)

(declare-fun e!1711604 () Bool)

(assert (=> d!781970 e!1711604))

(declare-fun res!1140432 () Bool)

(assert (=> d!781970 (=> (not res!1140432) (not e!1711604))))

(declare-fun append!809 (Conc!9810 Token!9044) Conc!9810)

(assert (=> d!781970 (= res!1140432 (isBalanced!2971 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664)))))))

(declare-fun lt!960842 () BalanceConc!19234)

(assert (=> d!781970 (= lt!960842 (BalanceConc!19235 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664)))))))

(assert (=> d!781970 (= (append!807 acc!331 (_1!18128 (v!33014 lt!960664))) lt!960842)))

(declare-fun b!2715458 () Bool)

(declare-fun $colon+!179 (List!31429 Token!9044) List!31429)

(assert (=> b!2715458 (= e!1711604 (= (list!11857 lt!960842) ($colon+!179 (list!11857 acc!331) (_1!18128 (v!33014 lt!960664)))))))

(assert (= (and d!781970 res!1140432) b!2715458))

(declare-fun m!3113085 () Bool)

(assert (=> d!781970 m!3113085))

(assert (=> d!781970 m!3113085))

(declare-fun m!3113087 () Bool)

(assert (=> d!781970 m!3113087))

(declare-fun m!3113089 () Bool)

(assert (=> b!2715458 m!3113089))

(assert (=> b!2715458 m!3112341))

(assert (=> b!2715458 m!3112341))

(declare-fun m!3113091 () Bool)

(assert (=> b!2715458 m!3113091))

(assert (=> b!2715034 d!781970))

(declare-fun d!781972 () Bool)

(assert (=> d!781972 (= (list!11856 lt!960675) (list!11860 (c!438566 lt!960675)))))

(declare-fun bs!488089 () Bool)

(assert (= bs!488089 d!781972))

(declare-fun m!3113093 () Bool)

(assert (=> bs!488089 m!3113093))

(assert (=> b!2715034 d!781972))

(declare-fun d!781974 () Bool)

(assert (=> d!781974 (= (list!11857 lt!960678) (list!11861 (c!438567 lt!960678)))))

(declare-fun bs!488090 () Bool)

(assert (= bs!488090 d!781974))

(declare-fun m!3113095 () Bool)

(assert (=> bs!488090 m!3113095))

(assert (=> b!2715034 d!781974))

(declare-fun d!781976 () Bool)

(declare-fun e!1711606 () Bool)

(assert (=> d!781976 e!1711606))

(declare-fun res!1140433 () Bool)

(assert (=> d!781976 (=> (not res!1140433) (not e!1711606))))

(declare-fun lt!960843 () List!31429)

(assert (=> d!781976 (= res!1140433 (= (content!4437 lt!960843) ((_ map or) (content!4437 lt!960676) (content!4437 lt!960688))))))

(declare-fun e!1711605 () List!31429)

(assert (=> d!781976 (= lt!960843 e!1711605)))

(declare-fun c!438660 () Bool)

(assert (=> d!781976 (= c!438660 ((_ is Nil!31329) lt!960676))))

(assert (=> d!781976 (= (++!7770 lt!960676 lt!960688) lt!960843)))

(declare-fun b!2715462 () Bool)

(assert (=> b!2715462 (= e!1711606 (or (not (= lt!960688 Nil!31329)) (= lt!960843 lt!960676)))))

(declare-fun b!2715459 () Bool)

(assert (=> b!2715459 (= e!1711605 lt!960688)))

(declare-fun b!2715460 () Bool)

(assert (=> b!2715460 (= e!1711605 (Cons!31329 (h!36749 lt!960676) (++!7770 (t!226247 lt!960676) lt!960688)))))

(declare-fun b!2715461 () Bool)

(declare-fun res!1140434 () Bool)

(assert (=> b!2715461 (=> (not res!1140434) (not e!1711606))))

(assert (=> b!2715461 (= res!1140434 (= (size!24173 lt!960843) (+ (size!24173 lt!960676) (size!24173 lt!960688))))))

(assert (= (and d!781976 c!438660) b!2715459))

(assert (= (and d!781976 (not c!438660)) b!2715460))

(assert (= (and d!781976 res!1140433) b!2715461))

(assert (= (and b!2715461 res!1140434) b!2715462))

(declare-fun m!3113097 () Bool)

(assert (=> d!781976 m!3113097))

(assert (=> d!781976 m!3112945))

(assert (=> d!781976 m!3112805))

(declare-fun m!3113099 () Bool)

(assert (=> b!2715460 m!3113099))

(declare-fun m!3113101 () Bool)

(assert (=> b!2715461 m!3113101))

(assert (=> b!2715461 m!3112951))

(assert (=> b!2715461 m!3112813))

(assert (=> b!2715034 d!781976))

(declare-fun d!781978 () Bool)

(assert (=> d!781978 (= (list!11857 (_1!18127 lt!960670)) (list!11861 (c!438567 (_1!18127 lt!960670))))))

(declare-fun bs!488091 () Bool)

(assert (= bs!488091 d!781978))

(declare-fun m!3113103 () Bool)

(assert (=> bs!488091 m!3113103))

(assert (=> b!2715034 d!781978))

(declare-fun d!781980 () Bool)

(declare-fun e!1711608 () Bool)

(assert (=> d!781980 e!1711608))

(declare-fun res!1140436 () Bool)

(assert (=> d!781980 (=> (not res!1140436) (not e!1711608))))

(declare-fun e!1711607 () Bool)

(assert (=> d!781980 (= res!1140436 e!1711607)))

(declare-fun c!438661 () Bool)

(declare-fun lt!960846 () tuple2!30990)

(assert (=> d!781980 (= c!438661 (> (size!24170 (_1!18127 lt!960846)) 0))))

(declare-fun e!1711610 () tuple2!30990)

(assert (=> d!781980 (= lt!960846 e!1711610)))

(declare-fun c!438662 () Bool)

(declare-fun lt!960844 () Option!6183)

(assert (=> d!781980 (= c!438662 ((_ is Some!6182) lt!960844))))

(assert (=> d!781980 (= lt!960844 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 lt!960675))))

(assert (=> d!781980 (= (lexRec!647 thiss!11556 rules!1182 lt!960675) lt!960846)))

(declare-fun b!2715463 () Bool)

(declare-fun res!1140435 () Bool)

(assert (=> b!2715463 (=> (not res!1140435) (not e!1711608))))

(assert (=> b!2715463 (= res!1140435 (= (list!11857 (_1!18127 lt!960846)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 lt!960675)))))))

(declare-fun b!2715464 () Bool)

(declare-fun e!1711609 () Bool)

(assert (=> b!2715464 (= e!1711607 e!1711609)))

(declare-fun res!1140437 () Bool)

(assert (=> b!2715464 (= res!1140437 (< (size!24171 (_2!18127 lt!960846)) (size!24171 lt!960675)))))

(assert (=> b!2715464 (=> (not res!1140437) (not e!1711609))))

(declare-fun b!2715465 () Bool)

(assert (=> b!2715465 (= e!1711610 (tuple2!30991 (BalanceConc!19235 Empty!9810) lt!960675))))

(declare-fun b!2715466 () Bool)

(assert (=> b!2715466 (= e!1711609 (not (isEmpty!17860 (_1!18127 lt!960846))))))

(declare-fun b!2715467 () Bool)

(assert (=> b!2715467 (= e!1711607 (= (list!11856 (_2!18127 lt!960846)) (list!11856 lt!960675)))))

(declare-fun b!2715468 () Bool)

(assert (=> b!2715468 (= e!1711608 (= (list!11856 (_2!18127 lt!960846)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 lt!960675)))))))

(declare-fun b!2715469 () Bool)

(declare-fun lt!960845 () tuple2!30990)

(assert (=> b!2715469 (= e!1711610 (tuple2!30991 (prepend!1117 (_1!18127 lt!960845) (_1!18128 (v!33014 lt!960844))) (_2!18127 lt!960845)))))

(assert (=> b!2715469 (= lt!960845 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960844))))))

(assert (= (and d!781980 c!438662) b!2715469))

(assert (= (and d!781980 (not c!438662)) b!2715465))

(assert (= (and d!781980 c!438661) b!2715464))

(assert (= (and d!781980 (not c!438661)) b!2715467))

(assert (= (and b!2715464 res!1140437) b!2715466))

(assert (= (and d!781980 res!1140436) b!2715463))

(assert (= (and b!2715463 res!1140435) b!2715468))

(declare-fun m!3113105 () Bool)

(assert (=> b!2715464 m!3113105))

(declare-fun m!3113107 () Bool)

(assert (=> b!2715464 m!3113107))

(declare-fun m!3113109 () Bool)

(assert (=> b!2715466 m!3113109))

(declare-fun m!3113111 () Bool)

(assert (=> b!2715463 m!3113111))

(assert (=> b!2715463 m!3112299))

(assert (=> b!2715463 m!3112299))

(declare-fun m!3113113 () Bool)

(assert (=> b!2715463 m!3113113))

(declare-fun m!3113115 () Bool)

(assert (=> d!781980 m!3113115))

(assert (=> d!781980 m!3112331))

(declare-fun m!3113117 () Bool)

(assert (=> b!2715467 m!3113117))

(assert (=> b!2715467 m!3112299))

(assert (=> b!2715468 m!3113117))

(assert (=> b!2715468 m!3112299))

(assert (=> b!2715468 m!3112299))

(assert (=> b!2715468 m!3113113))

(declare-fun m!3113119 () Bool)

(assert (=> b!2715469 m!3113119))

(declare-fun m!3113121 () Bool)

(assert (=> b!2715469 m!3113121))

(assert (=> b!2715034 d!781980))

(declare-fun d!781982 () Bool)

(assert (=> d!781982 (= (++!7768 (++!7768 lt!960683 lt!960668) lt!960680) (++!7768 lt!960683 (++!7768 lt!960668 lt!960680)))))

(declare-fun lt!960849 () Unit!45356)

(declare-fun choose!15970 (List!31428 List!31428 List!31428) Unit!45356)

(assert (=> d!781982 (= lt!960849 (choose!15970 lt!960683 lt!960668 lt!960680))))

(assert (=> d!781982 (= (lemmaConcatAssociativity!1602 lt!960683 lt!960668 lt!960680) lt!960849)))

(declare-fun bs!488092 () Bool)

(assert (= bs!488092 d!781982))

(assert (=> bs!488092 m!3112297))

(assert (=> bs!488092 m!3112317))

(assert (=> bs!488092 m!3112317))

(assert (=> bs!488092 m!3112319))

(declare-fun m!3113123 () Bool)

(assert (=> bs!488092 m!3113123))

(assert (=> bs!488092 m!3112297))

(declare-fun m!3113125 () Bool)

(assert (=> bs!488092 m!3113125))

(assert (=> b!2715034 d!781982))

(declare-fun d!781984 () Bool)

(declare-fun lt!960852 () BalanceConc!19232)

(assert (=> d!781984 (= (list!11856 lt!960852) (originalCharacters!5553 (_1!18128 (v!33014 lt!960664))))))

(declare-fun dynLambda!13494 (Int TokenValue!5013) BalanceConc!19232)

(assert (=> d!781984 (= lt!960852 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664)))))))

(assert (=> d!781984 (= (charsOf!3014 (_1!18128 (v!33014 lt!960664))) lt!960852)))

(declare-fun b_lambda!82529 () Bool)

(assert (=> (not b_lambda!82529) (not d!781984)))

(declare-fun tb!151833 () Bool)

(declare-fun t!226254 () Bool)

(assert (=> (and b!2715037 (= (toChars!6620 (transformation!4791 (h!36750 rules!1182))) (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664)))))) t!226254) tb!151833))

(declare-fun b!2715474 () Bool)

(declare-fun e!1711613 () Bool)

(declare-fun tp!857572 () Bool)

(assert (=> b!2715474 (= e!1711613 (and (inv!42514 (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664)))))) tp!857572))))

(declare-fun result!187568 () Bool)

(assert (=> tb!151833 (= result!187568 (and (inv!42516 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664))))) e!1711613))))

(assert (= tb!151833 b!2715474))

(declare-fun m!3113127 () Bool)

(assert (=> b!2715474 m!3113127))

(declare-fun m!3113129 () Bool)

(assert (=> tb!151833 m!3113129))

(assert (=> d!781984 t!226254))

(declare-fun b_and!200295 () Bool)

(assert (= b_and!200287 (and (=> t!226254 result!187568) b_and!200295)))

(declare-fun m!3113131 () Bool)

(assert (=> d!781984 m!3113131))

(declare-fun m!3113133 () Bool)

(assert (=> d!781984 m!3113133))

(assert (=> b!2715034 d!781984))

(declare-fun b!2715485 () Bool)

(declare-fun res!1140446 () Bool)

(declare-fun e!1711616 () Bool)

(assert (=> b!2715485 (=> (not res!1140446) (not e!1711616))))

(declare-fun height!1452 (Conc!9809) Int)

(declare-fun ++!7775 (Conc!9809 Conc!9809) Conc!9809)

(assert (=> b!2715485 (= res!1140446 (>= (height!1452 (++!7775 (c!438566 treated!9) (c!438566 lt!960679))) (max!0 (height!1452 (c!438566 treated!9)) (height!1452 (c!438566 lt!960679)))))))

(declare-fun d!781986 () Bool)

(assert (=> d!781986 e!1711616))

(declare-fun res!1140447 () Bool)

(assert (=> d!781986 (=> (not res!1140447) (not e!1711616))))

(declare-fun appendAssocInst!689 (Conc!9809 Conc!9809) Bool)

(assert (=> d!781986 (= res!1140447 (appendAssocInst!689 (c!438566 treated!9) (c!438566 lt!960679)))))

(declare-fun lt!960855 () BalanceConc!19232)

(assert (=> d!781986 (= lt!960855 (BalanceConc!19233 (++!7775 (c!438566 treated!9) (c!438566 lt!960679))))))

(assert (=> d!781986 (= (++!7769 treated!9 lt!960679) lt!960855)))

(declare-fun b!2715483 () Bool)

(declare-fun res!1140448 () Bool)

(assert (=> b!2715483 (=> (not res!1140448) (not e!1711616))))

(declare-fun isBalanced!2972 (Conc!9809) Bool)

(assert (=> b!2715483 (= res!1140448 (isBalanced!2972 (++!7775 (c!438566 treated!9) (c!438566 lt!960679))))))

(declare-fun b!2715486 () Bool)

(assert (=> b!2715486 (= e!1711616 (= (list!11856 lt!960855) (++!7768 (list!11856 treated!9) (list!11856 lt!960679))))))

(declare-fun b!2715484 () Bool)

(declare-fun res!1140449 () Bool)

(assert (=> b!2715484 (=> (not res!1140449) (not e!1711616))))

(assert (=> b!2715484 (= res!1140449 (<= (height!1452 (++!7775 (c!438566 treated!9) (c!438566 lt!960679))) (+ (max!0 (height!1452 (c!438566 treated!9)) (height!1452 (c!438566 lt!960679))) 1)))))

(assert (= (and d!781986 res!1140447) b!2715483))

(assert (= (and b!2715483 res!1140448) b!2715484))

(assert (= (and b!2715484 res!1140449) b!2715485))

(assert (= (and b!2715485 res!1140446) b!2715486))

(declare-fun m!3113135 () Bool)

(assert (=> b!2715484 m!3113135))

(declare-fun m!3113137 () Bool)

(assert (=> b!2715484 m!3113137))

(assert (=> b!2715484 m!3113135))

(declare-fun m!3113139 () Bool)

(assert (=> b!2715484 m!3113139))

(declare-fun m!3113141 () Bool)

(assert (=> b!2715484 m!3113141))

(assert (=> b!2715484 m!3113137))

(declare-fun m!3113143 () Bool)

(assert (=> b!2715484 m!3113143))

(assert (=> b!2715484 m!3113139))

(assert (=> b!2715483 m!3113137))

(assert (=> b!2715483 m!3113137))

(declare-fun m!3113145 () Bool)

(assert (=> b!2715483 m!3113145))

(declare-fun m!3113147 () Bool)

(assert (=> b!2715486 m!3113147))

(assert (=> b!2715486 m!3112379))

(assert (=> b!2715486 m!3112313))

(assert (=> b!2715486 m!3112379))

(assert (=> b!2715486 m!3112313))

(declare-fun m!3113149 () Bool)

(assert (=> b!2715486 m!3113149))

(declare-fun m!3113151 () Bool)

(assert (=> d!781986 m!3113151))

(assert (=> d!781986 m!3113137))

(assert (=> b!2715485 m!3113135))

(assert (=> b!2715485 m!3113137))

(assert (=> b!2715485 m!3113135))

(assert (=> b!2715485 m!3113139))

(assert (=> b!2715485 m!3113141))

(assert (=> b!2715485 m!3113137))

(assert (=> b!2715485 m!3113143))

(assert (=> b!2715485 m!3113139))

(assert (=> b!2715034 d!781986))

(declare-fun d!781988 () Bool)

(declare-fun e!1711632 () Bool)

(assert (=> d!781988 e!1711632))

(declare-fun res!1140463 () Bool)

(assert (=> d!781988 (=> (not res!1140463) (not e!1711632))))

(declare-fun lt!960871 () Option!6183)

(declare-fun isDefined!4893 (Option!6183) Bool)

(declare-fun isDefined!4894 (Option!6185) Bool)

(declare-fun maxPrefixZipper!470 (LexerInterface!4387 List!31430 List!31428) Option!6185)

(assert (=> d!781988 (= res!1140463 (= (isDefined!4893 lt!960871) (isDefined!4894 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 lt!960675)))))))

(declare-fun e!1711630 () Option!6183)

(assert (=> d!781988 (= lt!960871 e!1711630)))

(declare-fun c!438668 () Bool)

(assert (=> d!781988 (= c!438668 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!960876 () Unit!45356)

(declare-fun lt!960875 () Unit!45356)

(assert (=> d!781988 (= lt!960876 lt!960875)))

(declare-fun lt!960872 () List!31428)

(declare-fun lt!960873 () List!31428)

(declare-fun isPrefix!2483 (List!31428 List!31428) Bool)

(assert (=> d!781988 (isPrefix!2483 lt!960872 lt!960873)))

(declare-fun lemmaIsPrefixRefl!1609 (List!31428 List!31428) Unit!45356)

(assert (=> d!781988 (= lt!960875 (lemmaIsPrefixRefl!1609 lt!960872 lt!960873))))

(assert (=> d!781988 (= lt!960873 (list!11856 lt!960675))))

(assert (=> d!781988 (= lt!960872 (list!11856 lt!960675))))

(declare-fun rulesValidInductive!1667 (LexerInterface!4387 List!31430) Bool)

(assert (=> d!781988 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!781988 (= (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 lt!960675) lt!960871)))

(declare-fun b!2715503 () Bool)

(declare-fun call!175039 () Option!6183)

(assert (=> b!2715503 (= e!1711630 call!175039)))

(declare-fun b!2715504 () Bool)

(declare-fun e!1711634 () Bool)

(declare-fun get!9776 (Option!6183) tuple2!30992)

(declare-fun get!9777 (Option!6185) tuple2!30998)

(assert (=> b!2715504 (= e!1711634 (= (list!11856 (_2!18128 (get!9776 lt!960871))) (_2!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 lt!960675))))))))

(declare-fun b!2715505 () Bool)

(declare-fun e!1711629 () Bool)

(declare-fun e!1711631 () Bool)

(assert (=> b!2715505 (= e!1711629 e!1711631)))

(declare-fun res!1140466 () Bool)

(assert (=> b!2715505 (=> (not res!1140466) (not e!1711631))))

(assert (=> b!2715505 (= res!1140466 (= (_1!18128 (get!9776 lt!960871)) (_1!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 lt!960675))))))))

(declare-fun b!2715506 () Bool)

(assert (=> b!2715506 (= e!1711632 e!1711629)))

(declare-fun res!1140462 () Bool)

(assert (=> b!2715506 (=> res!1140462 e!1711629)))

(assert (=> b!2715506 (= res!1140462 (not (isDefined!4893 lt!960871)))))

(declare-fun b!2715507 () Bool)

(declare-fun e!1711633 () Bool)

(assert (=> b!2715507 (= e!1711633 e!1711634)))

(declare-fun res!1140467 () Bool)

(assert (=> b!2715507 (=> (not res!1140467) (not e!1711634))))

(assert (=> b!2715507 (= res!1140467 (= (_1!18128 (get!9776 lt!960871)) (_1!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 lt!960675))))))))

(declare-fun b!2715508 () Bool)

(declare-fun res!1140464 () Bool)

(assert (=> b!2715508 (=> (not res!1140464) (not e!1711632))))

(assert (=> b!2715508 (= res!1140464 e!1711633)))

(declare-fun res!1140465 () Bool)

(assert (=> b!2715508 (=> res!1140465 e!1711633)))

(assert (=> b!2715508 (= res!1140465 (not (isDefined!4893 lt!960871)))))

(declare-fun b!2715509 () Bool)

(declare-fun lt!960870 () Option!6183)

(declare-fun lt!960874 () Option!6183)

(assert (=> b!2715509 (= e!1711630 (ite (and ((_ is None!6182) lt!960870) ((_ is None!6182) lt!960874)) None!6182 (ite ((_ is None!6182) lt!960874) lt!960870 (ite ((_ is None!6182) lt!960870) lt!960874 (ite (>= (size!24166 (_1!18128 (v!33014 lt!960870))) (size!24166 (_1!18128 (v!33014 lt!960874)))) lt!960870 lt!960874)))))))

(assert (=> b!2715509 (= lt!960870 call!175039)))

(assert (=> b!2715509 (= lt!960874 (maxPrefixZipperSequence!1035 thiss!11556 (t!226248 rules!1182) lt!960675))))

(declare-fun bm!175034 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!479 (LexerInterface!4387 Rule!9382 BalanceConc!19232) Option!6183)

(assert (=> bm!175034 (= call!175039 (maxPrefixOneRuleZipperSequence!479 thiss!11556 (h!36750 rules!1182) lt!960675))))

(declare-fun b!2715510 () Bool)

(assert (=> b!2715510 (= e!1711631 (= (list!11856 (_2!18128 (get!9776 lt!960871))) (_2!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 lt!960675))))))))

(assert (= (and d!781988 c!438668) b!2715503))

(assert (= (and d!781988 (not c!438668)) b!2715509))

(assert (= (or b!2715503 b!2715509) bm!175034))

(assert (= (and d!781988 res!1140463) b!2715508))

(assert (= (and b!2715508 (not res!1140465)) b!2715507))

(assert (= (and b!2715507 res!1140467) b!2715504))

(assert (= (and b!2715508 res!1140464) b!2715506))

(assert (= (and b!2715506 (not res!1140462)) b!2715505))

(assert (= (and b!2715505 res!1140466) b!2715510))

(declare-fun m!3113153 () Bool)

(assert (=> b!2715504 m!3113153))

(declare-fun m!3113155 () Bool)

(assert (=> b!2715504 m!3113155))

(declare-fun m!3113157 () Bool)

(assert (=> b!2715504 m!3113157))

(assert (=> b!2715504 m!3112299))

(assert (=> b!2715504 m!3112299))

(assert (=> b!2715504 m!3113153))

(declare-fun m!3113159 () Bool)

(assert (=> b!2715504 m!3113159))

(declare-fun m!3113161 () Bool)

(assert (=> b!2715508 m!3113161))

(assert (=> b!2715507 m!3113159))

(assert (=> b!2715507 m!3112299))

(assert (=> b!2715507 m!3112299))

(assert (=> b!2715507 m!3113153))

(assert (=> b!2715507 m!3113153))

(assert (=> b!2715507 m!3113155))

(declare-fun m!3113163 () Bool)

(assert (=> bm!175034 m!3113163))

(declare-fun m!3113165 () Bool)

(assert (=> b!2715509 m!3113165))

(assert (=> d!781988 m!3113161))

(assert (=> d!781988 m!3113153))

(declare-fun m!3113167 () Bool)

(assert (=> d!781988 m!3113167))

(declare-fun m!3113169 () Bool)

(assert (=> d!781988 m!3113169))

(declare-fun m!3113171 () Bool)

(assert (=> d!781988 m!3113171))

(assert (=> d!781988 m!3112299))

(assert (=> d!781988 m!3112299))

(assert (=> d!781988 m!3113153))

(declare-fun m!3113173 () Bool)

(assert (=> d!781988 m!3113173))

(declare-fun m!3113175 () Bool)

(assert (=> b!2715510 m!3113175))

(declare-fun m!3113177 () Bool)

(assert (=> b!2715510 m!3113177))

(assert (=> b!2715510 m!3113157))

(assert (=> b!2715510 m!3112299))

(assert (=> b!2715510 m!3112299))

(assert (=> b!2715510 m!3113175))

(assert (=> b!2715510 m!3113159))

(assert (=> b!2715506 m!3113161))

(assert (=> b!2715505 m!3113159))

(assert (=> b!2715505 m!3112299))

(assert (=> b!2715505 m!3112299))

(assert (=> b!2715505 m!3113175))

(assert (=> b!2715505 m!3113175))

(assert (=> b!2715505 m!3113177))

(assert (=> b!2715034 d!781988))

(declare-fun d!781990 () Bool)

(declare-fun c!438671 () Bool)

(assert (=> d!781990 (= c!438671 ((_ is Node!9809) (c!438566 totalInput!328)))))

(declare-fun e!1711639 () Bool)

(assert (=> d!781990 (= (inv!42514 (c!438566 totalInput!328)) e!1711639)))

(declare-fun b!2715517 () Bool)

(declare-fun inv!42525 (Conc!9809) Bool)

(assert (=> b!2715517 (= e!1711639 (inv!42525 (c!438566 totalInput!328)))))

(declare-fun b!2715518 () Bool)

(declare-fun e!1711640 () Bool)

(assert (=> b!2715518 (= e!1711639 e!1711640)))

(declare-fun res!1140470 () Bool)

(assert (=> b!2715518 (= res!1140470 (not ((_ is Leaf!14949) (c!438566 totalInput!328))))))

(assert (=> b!2715518 (=> res!1140470 e!1711640)))

(declare-fun b!2715519 () Bool)

(declare-fun inv!42526 (Conc!9809) Bool)

(assert (=> b!2715519 (= e!1711640 (inv!42526 (c!438566 totalInput!328)))))

(assert (= (and d!781990 c!438671) b!2715517))

(assert (= (and d!781990 (not c!438671)) b!2715518))

(assert (= (and b!2715518 (not res!1140470)) b!2715519))

(declare-fun m!3113179 () Bool)

(assert (=> b!2715517 m!3113179))

(declare-fun m!3113181 () Bool)

(assert (=> b!2715519 m!3113181))

(assert (=> b!2715045 d!781990))

(declare-fun d!781992 () Bool)

(declare-fun e!1711642 () Bool)

(assert (=> d!781992 e!1711642))

(declare-fun res!1140472 () Bool)

(assert (=> d!781992 (=> (not res!1140472) (not e!1711642))))

(declare-fun e!1711641 () Bool)

(assert (=> d!781992 (= res!1140472 e!1711641)))

(declare-fun c!438672 () Bool)

(declare-fun lt!960879 () tuple2!30990)

(assert (=> d!781992 (= c!438672 (> (size!24170 (_1!18127 lt!960879)) 0))))

(declare-fun e!1711644 () tuple2!30990)

(assert (=> d!781992 (= lt!960879 e!1711644)))

(declare-fun c!438673 () Bool)

(declare-fun lt!960877 () Option!6183)

(assert (=> d!781992 (= c!438673 ((_ is Some!6182) lt!960877))))

(assert (=> d!781992 (= lt!960877 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 input!603))))

(assert (=> d!781992 (= (lexRec!647 thiss!11556 rules!1182 input!603) lt!960879)))

(declare-fun b!2715520 () Bool)

(declare-fun res!1140471 () Bool)

(assert (=> b!2715520 (=> (not res!1140471) (not e!1711642))))

(assert (=> b!2715520 (= res!1140471 (= (list!11857 (_1!18127 lt!960879)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 input!603)))))))

(declare-fun b!2715521 () Bool)

(declare-fun e!1711643 () Bool)

(assert (=> b!2715521 (= e!1711641 e!1711643)))

(declare-fun res!1140473 () Bool)

(assert (=> b!2715521 (= res!1140473 (< (size!24171 (_2!18127 lt!960879)) (size!24171 input!603)))))

(assert (=> b!2715521 (=> (not res!1140473) (not e!1711643))))

(declare-fun b!2715522 () Bool)

(assert (=> b!2715522 (= e!1711644 (tuple2!30991 (BalanceConc!19235 Empty!9810) input!603))))

(declare-fun b!2715523 () Bool)

(assert (=> b!2715523 (= e!1711643 (not (isEmpty!17860 (_1!18127 lt!960879))))))

(declare-fun b!2715524 () Bool)

(assert (=> b!2715524 (= e!1711641 (= (list!11856 (_2!18127 lt!960879)) (list!11856 input!603)))))

(declare-fun b!2715525 () Bool)

(assert (=> b!2715525 (= e!1711642 (= (list!11856 (_2!18127 lt!960879)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 input!603)))))))

(declare-fun b!2715526 () Bool)

(declare-fun lt!960878 () tuple2!30990)

(assert (=> b!2715526 (= e!1711644 (tuple2!30991 (prepend!1117 (_1!18127 lt!960878) (_1!18128 (v!33014 lt!960877))) (_2!18127 lt!960878)))))

(assert (=> b!2715526 (= lt!960878 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960877))))))

(assert (= (and d!781992 c!438673) b!2715526))

(assert (= (and d!781992 (not c!438673)) b!2715522))

(assert (= (and d!781992 c!438672) b!2715521))

(assert (= (and d!781992 (not c!438672)) b!2715524))

(assert (= (and b!2715521 res!1140473) b!2715523))

(assert (= (and d!781992 res!1140472) b!2715520))

(assert (= (and b!2715520 res!1140471) b!2715525))

(declare-fun m!3113183 () Bool)

(assert (=> b!2715521 m!3113183))

(declare-fun m!3113185 () Bool)

(assert (=> b!2715521 m!3113185))

(declare-fun m!3113187 () Bool)

(assert (=> b!2715523 m!3113187))

(declare-fun m!3113189 () Bool)

(assert (=> b!2715520 m!3113189))

(assert (=> b!2715520 m!3112377))

(assert (=> b!2715520 m!3112377))

(declare-fun m!3113191 () Bool)

(assert (=> b!2715520 m!3113191))

(declare-fun m!3113193 () Bool)

(assert (=> d!781992 m!3113193))

(assert (=> d!781992 m!3112355))

(declare-fun m!3113195 () Bool)

(assert (=> b!2715524 m!3113195))

(assert (=> b!2715524 m!3112377))

(assert (=> b!2715525 m!3113195))

(assert (=> b!2715525 m!3112377))

(assert (=> b!2715525 m!3112377))

(assert (=> b!2715525 m!3113191))

(declare-fun m!3113197 () Bool)

(assert (=> b!2715526 m!3113197))

(declare-fun m!3113199 () Bool)

(assert (=> b!2715526 m!3113199))

(assert (=> b!2715036 d!781992))

(declare-fun lt!960880 () BalanceConc!19234)

(declare-fun b!2715530 () Bool)

(declare-fun e!1711645 () Bool)

(assert (=> b!2715530 (= e!1711645 (= (list!11857 lt!960880) (++!7770 (list!11857 acc!331) (list!11857 (_1!18127 lt!960665)))))))

(declare-fun d!781994 () Bool)

(assert (=> d!781994 e!1711645))

(declare-fun res!1140477 () Bool)

(assert (=> d!781994 (=> (not res!1140477) (not e!1711645))))

(assert (=> d!781994 (= res!1140477 (appendAssocInst!688 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665))))))

(assert (=> d!781994 (= lt!960880 (BalanceConc!19235 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))))))

(assert (=> d!781994 (= (++!7771 acc!331 (_1!18127 lt!960665)) lt!960880)))

(declare-fun b!2715527 () Bool)

(declare-fun res!1140476 () Bool)

(assert (=> b!2715527 (=> (not res!1140476) (not e!1711645))))

(assert (=> b!2715527 (= res!1140476 (isBalanced!2971 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))))))

(declare-fun b!2715528 () Bool)

(declare-fun res!1140474 () Bool)

(assert (=> b!2715528 (=> (not res!1140474) (not e!1711645))))

(assert (=> b!2715528 (= res!1140474 (<= (height!1451 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))) (+ (max!0 (height!1451 (c!438567 acc!331)) (height!1451 (c!438567 (_1!18127 lt!960665)))) 1)))))

(declare-fun b!2715529 () Bool)

(declare-fun res!1140475 () Bool)

(assert (=> b!2715529 (=> (not res!1140475) (not e!1711645))))

(assert (=> b!2715529 (= res!1140475 (>= (height!1451 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))) (max!0 (height!1451 (c!438567 acc!331)) (height!1451 (c!438567 (_1!18127 lt!960665))))))))

(assert (= (and d!781994 res!1140477) b!2715527))

(assert (= (and b!2715527 res!1140476) b!2715528))

(assert (= (and b!2715528 res!1140474) b!2715529))

(assert (= (and b!2715529 res!1140475) b!2715530))

(declare-fun m!3113201 () Bool)

(assert (=> b!2715528 m!3113201))

(declare-fun m!3113203 () Bool)

(assert (=> b!2715528 m!3113203))

(assert (=> b!2715528 m!3113201))

(declare-fun m!3113205 () Bool)

(assert (=> b!2715528 m!3113205))

(declare-fun m!3113207 () Bool)

(assert (=> b!2715528 m!3113207))

(declare-fun m!3113209 () Bool)

(assert (=> b!2715528 m!3113209))

(assert (=> b!2715528 m!3113205))

(assert (=> b!2715528 m!3113207))

(declare-fun m!3113211 () Bool)

(assert (=> b!2715530 m!3113211))

(assert (=> b!2715530 m!3112341))

(declare-fun m!3113213 () Bool)

(assert (=> b!2715530 m!3113213))

(assert (=> b!2715530 m!3112341))

(assert (=> b!2715530 m!3113213))

(declare-fun m!3113215 () Bool)

(assert (=> b!2715530 m!3113215))

(declare-fun m!3113217 () Bool)

(assert (=> d!781994 m!3113217))

(assert (=> d!781994 m!3113201))

(assert (=> b!2715529 m!3113201))

(assert (=> b!2715529 m!3113203))

(assert (=> b!2715529 m!3113201))

(assert (=> b!2715529 m!3113205))

(assert (=> b!2715529 m!3113207))

(assert (=> b!2715529 m!3113209))

(assert (=> b!2715529 m!3113205))

(assert (=> b!2715529 m!3113207))

(assert (=> b!2715527 m!3113201))

(assert (=> b!2715527 m!3113201))

(declare-fun m!3113219 () Bool)

(assert (=> b!2715527 m!3113219))

(assert (=> b!2715036 d!781994))

(declare-fun d!781996 () Bool)

(declare-fun e!1711647 () Bool)

(assert (=> d!781996 e!1711647))

(declare-fun res!1140479 () Bool)

(assert (=> d!781996 (=> (not res!1140479) (not e!1711647))))

(declare-fun e!1711646 () Bool)

(assert (=> d!781996 (= res!1140479 e!1711646)))

(declare-fun c!438674 () Bool)

(declare-fun lt!960883 () tuple2!30990)

(assert (=> d!781996 (= c!438674 (> (size!24170 (_1!18127 lt!960883)) 0))))

(declare-fun e!1711649 () tuple2!30990)

(assert (=> d!781996 (= lt!960883 e!1711649)))

(declare-fun c!438675 () Bool)

(declare-fun lt!960881 () Option!6183)

(assert (=> d!781996 (= c!438675 ((_ is Some!6182) lt!960881))))

(assert (=> d!781996 (= lt!960881 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 totalInput!328))))

(assert (=> d!781996 (= (lexRec!647 thiss!11556 rules!1182 totalInput!328) lt!960883)))

(declare-fun b!2715531 () Bool)

(declare-fun res!1140478 () Bool)

(assert (=> b!2715531 (=> (not res!1140478) (not e!1711647))))

(assert (=> b!2715531 (= res!1140478 (= (list!11857 (_1!18127 lt!960883)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 totalInput!328)))))))

(declare-fun b!2715532 () Bool)

(declare-fun e!1711648 () Bool)

(assert (=> b!2715532 (= e!1711646 e!1711648)))

(declare-fun res!1140480 () Bool)

(assert (=> b!2715532 (= res!1140480 (< (size!24171 (_2!18127 lt!960883)) (size!24171 totalInput!328)))))

(assert (=> b!2715532 (=> (not res!1140480) (not e!1711648))))

(declare-fun b!2715533 () Bool)

(assert (=> b!2715533 (= e!1711649 (tuple2!30991 (BalanceConc!19235 Empty!9810) totalInput!328))))

(declare-fun b!2715534 () Bool)

(assert (=> b!2715534 (= e!1711648 (not (isEmpty!17860 (_1!18127 lt!960883))))))

(declare-fun b!2715535 () Bool)

(assert (=> b!2715535 (= e!1711646 (= (list!11856 (_2!18127 lt!960883)) (list!11856 totalInput!328)))))

(declare-fun b!2715536 () Bool)

(assert (=> b!2715536 (= e!1711647 (= (list!11856 (_2!18127 lt!960883)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 totalInput!328)))))))

(declare-fun b!2715537 () Bool)

(declare-fun lt!960882 () tuple2!30990)

(assert (=> b!2715537 (= e!1711649 (tuple2!30991 (prepend!1117 (_1!18127 lt!960882) (_1!18128 (v!33014 lt!960881))) (_2!18127 lt!960882)))))

(assert (=> b!2715537 (= lt!960882 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960881))))))

(assert (= (and d!781996 c!438675) b!2715537))

(assert (= (and d!781996 (not c!438675)) b!2715533))

(assert (= (and d!781996 c!438674) b!2715532))

(assert (= (and d!781996 (not c!438674)) b!2715535))

(assert (= (and b!2715532 res!1140480) b!2715534))

(assert (= (and d!781996 res!1140479) b!2715531))

(assert (= (and b!2715531 res!1140478) b!2715536))

(declare-fun m!3113221 () Bool)

(assert (=> b!2715532 m!3113221))

(declare-fun m!3113223 () Bool)

(assert (=> b!2715532 m!3113223))

(declare-fun m!3113225 () Bool)

(assert (=> b!2715534 m!3113225))

(declare-fun m!3113227 () Bool)

(assert (=> b!2715531 m!3113227))

(assert (=> b!2715531 m!3112375))

(assert (=> b!2715531 m!3112375))

(declare-fun m!3113229 () Bool)

(assert (=> b!2715531 m!3113229))

(declare-fun m!3113231 () Bool)

(assert (=> d!781996 m!3113231))

(declare-fun m!3113233 () Bool)

(assert (=> d!781996 m!3113233))

(declare-fun m!3113235 () Bool)

(assert (=> b!2715535 m!3113235))

(assert (=> b!2715535 m!3112375))

(assert (=> b!2715536 m!3113235))

(assert (=> b!2715536 m!3112375))

(assert (=> b!2715536 m!3112375))

(assert (=> b!2715536 m!3113229))

(declare-fun m!3113237 () Bool)

(assert (=> b!2715537 m!3113237))

(declare-fun m!3113239 () Bool)

(assert (=> b!2715537 m!3113239))

(assert (=> b!2715036 d!781996))

(declare-fun d!781998 () Bool)

(assert (=> d!781998 (= (list!11857 lt!960671) (list!11861 (c!438567 lt!960671)))))

(declare-fun bs!488093 () Bool)

(assert (= bs!488093 d!781998))

(declare-fun m!3113241 () Bool)

(assert (=> bs!488093 m!3113241))

(assert (=> b!2715036 d!781998))

(declare-fun d!782000 () Bool)

(assert (=> d!782000 (= (list!11857 (_1!18127 lt!960684)) (list!11861 (c!438567 (_1!18127 lt!960684))))))

(declare-fun bs!488094 () Bool)

(assert (= bs!488094 d!782000))

(declare-fun m!3113243 () Bool)

(assert (=> bs!488094 m!3113243))

(assert (=> b!2715036 d!782000))

(declare-fun d!782002 () Bool)

(declare-fun c!438676 () Bool)

(assert (=> d!782002 (= c!438676 ((_ is Node!9809) (c!438566 input!603)))))

(declare-fun e!1711650 () Bool)

(assert (=> d!782002 (= (inv!42514 (c!438566 input!603)) e!1711650)))

(declare-fun b!2715538 () Bool)

(assert (=> b!2715538 (= e!1711650 (inv!42525 (c!438566 input!603)))))

(declare-fun b!2715539 () Bool)

(declare-fun e!1711651 () Bool)

(assert (=> b!2715539 (= e!1711650 e!1711651)))

(declare-fun res!1140481 () Bool)

(assert (=> b!2715539 (= res!1140481 (not ((_ is Leaf!14949) (c!438566 input!603))))))

(assert (=> b!2715539 (=> res!1140481 e!1711651)))

(declare-fun b!2715540 () Bool)

(assert (=> b!2715540 (= e!1711651 (inv!42526 (c!438566 input!603)))))

(assert (= (and d!782002 c!438676) b!2715538))

(assert (= (and d!782002 (not c!438676)) b!2715539))

(assert (= (and b!2715539 (not res!1140481)) b!2715540))

(declare-fun m!3113245 () Bool)

(assert (=> b!2715538 m!3113245))

(declare-fun m!3113247 () Bool)

(assert (=> b!2715540 m!3113247))

(assert (=> b!2715025 d!782002))

(declare-fun b!2715542 () Bool)

(declare-fun e!1711652 () List!31428)

(assert (=> b!2715542 (= e!1711652 (Cons!31328 (h!36748 lt!960683) (++!7768 (t!226246 lt!960683) lt!960681)))))

(declare-fun b!2715543 () Bool)

(declare-fun res!1140482 () Bool)

(declare-fun e!1711653 () Bool)

(assert (=> b!2715543 (=> (not res!1140482) (not e!1711653))))

(declare-fun lt!960884 () List!31428)

(assert (=> b!2715543 (= res!1140482 (= (size!24174 lt!960884) (+ (size!24174 lt!960683) (size!24174 lt!960681))))))

(declare-fun b!2715544 () Bool)

(assert (=> b!2715544 (= e!1711653 (or (not (= lt!960681 Nil!31328)) (= lt!960884 lt!960683)))))

(declare-fun d!782004 () Bool)

(assert (=> d!782004 e!1711653))

(declare-fun res!1140483 () Bool)

(assert (=> d!782004 (=> (not res!1140483) (not e!1711653))))

(assert (=> d!782004 (= res!1140483 (= (content!4438 lt!960884) ((_ map or) (content!4438 lt!960683) (content!4438 lt!960681))))))

(assert (=> d!782004 (= lt!960884 e!1711652)))

(declare-fun c!438677 () Bool)

(assert (=> d!782004 (= c!438677 ((_ is Nil!31328) lt!960683))))

(assert (=> d!782004 (= (++!7768 lt!960683 lt!960681) lt!960884)))

(declare-fun b!2715541 () Bool)

(assert (=> b!2715541 (= e!1711652 lt!960681)))

(assert (= (and d!782004 c!438677) b!2715541))

(assert (= (and d!782004 (not c!438677)) b!2715542))

(assert (= (and d!782004 res!1140483) b!2715543))

(assert (= (and b!2715543 res!1140482) b!2715544))

(declare-fun m!3113249 () Bool)

(assert (=> b!2715542 m!3113249))

(declare-fun m!3113251 () Bool)

(assert (=> b!2715543 m!3113251))

(assert (=> b!2715543 m!3112777))

(declare-fun m!3113253 () Bool)

(assert (=> b!2715543 m!3113253))

(declare-fun m!3113255 () Bool)

(assert (=> d!782004 m!3113255))

(assert (=> d!782004 m!3112783))

(declare-fun m!3113257 () Bool)

(assert (=> d!782004 m!3113257))

(assert (=> b!2715027 d!782004))

(declare-fun d!782006 () Bool)

(assert (=> d!782006 (= (list!11856 totalInput!328) (list!11860 (c!438566 totalInput!328)))))

(declare-fun bs!488095 () Bool)

(assert (= bs!488095 d!782006))

(declare-fun m!3113259 () Bool)

(assert (=> bs!488095 m!3113259))

(assert (=> b!2715027 d!782006))

(declare-fun d!782008 () Bool)

(assert (=> d!782008 (= (list!11856 input!603) (list!11860 (c!438566 input!603)))))

(declare-fun bs!488096 () Bool)

(assert (= bs!488096 d!782008))

(declare-fun m!3113261 () Bool)

(assert (=> bs!488096 m!3113261))

(assert (=> b!2715027 d!782008))

(declare-fun d!782010 () Bool)

(assert (=> d!782010 (= (list!11856 treated!9) (list!11860 (c!438566 treated!9)))))

(declare-fun bs!488097 () Bool)

(assert (= bs!488097 d!782010))

(declare-fun m!3113263 () Bool)

(assert (=> bs!488097 m!3113263))

(assert (=> b!2715027 d!782010))

(declare-fun d!782012 () Bool)

(declare-fun e!1711654 () Bool)

(assert (=> d!782012 e!1711654))

(declare-fun res!1140484 () Bool)

(assert (=> d!782012 (=> (not res!1140484) (not e!1711654))))

(assert (=> d!782012 (= res!1140484 (isBalanced!2971 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664)))))))

(declare-fun lt!960885 () BalanceConc!19234)

(assert (=> d!782012 (= lt!960885 (BalanceConc!19235 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664)))))))

(assert (=> d!782012 (= (prepend!1117 (_1!18127 lt!960670) (_1!18128 (v!33014 lt!960664))) lt!960885)))

(declare-fun b!2715545 () Bool)

(assert (=> b!2715545 (= e!1711654 (= (list!11857 lt!960885) (Cons!31329 (_1!18128 (v!33014 lt!960664)) (list!11857 (_1!18127 lt!960670)))))))

(assert (= (and d!782012 res!1140484) b!2715545))

(declare-fun m!3113265 () Bool)

(assert (=> d!782012 m!3113265))

(assert (=> d!782012 m!3113265))

(declare-fun m!3113267 () Bool)

(assert (=> d!782012 m!3113267))

(declare-fun m!3113269 () Bool)

(assert (=> b!2715545 m!3113269))

(assert (=> b!2715545 m!3112295))

(assert (=> b!2715026 d!782012))

(declare-fun d!782014 () Bool)

(assert (=> d!782014 (= (inv!42516 treated!9) (isBalanced!2972 (c!438566 treated!9)))))

(declare-fun bs!488098 () Bool)

(assert (= bs!488098 d!782014))

(declare-fun m!3113271 () Bool)

(assert (=> bs!488098 m!3113271))

(assert (=> start!263456 d!782014))

(declare-fun d!782016 () Bool)

(assert (=> d!782016 (= (inv!42516 input!603) (isBalanced!2972 (c!438566 input!603)))))

(declare-fun bs!488099 () Bool)

(assert (= bs!488099 d!782016))

(declare-fun m!3113273 () Bool)

(assert (=> bs!488099 m!3113273))

(assert (=> start!263456 d!782016))

(declare-fun d!782018 () Bool)

(assert (=> d!782018 (= (inv!42516 totalInput!328) (isBalanced!2972 (c!438566 totalInput!328)))))

(declare-fun bs!488100 () Bool)

(assert (= bs!488100 d!782018))

(declare-fun m!3113275 () Bool)

(assert (=> bs!488100 m!3113275))

(assert (=> start!263456 d!782018))

(declare-fun d!782020 () Bool)

(assert (=> d!782020 (= (inv!42517 acc!331) (isBalanced!2971 (c!438567 acc!331)))))

(declare-fun bs!488101 () Bool)

(assert (= bs!488101 d!782020))

(declare-fun m!3113277 () Bool)

(assert (=> bs!488101 m!3113277))

(assert (=> start!263456 d!782020))

(declare-fun d!782022 () Bool)

(declare-fun c!438678 () Bool)

(assert (=> d!782022 (= c!438678 ((_ is Node!9809) (c!438566 treated!9)))))

(declare-fun e!1711655 () Bool)

(assert (=> d!782022 (= (inv!42514 (c!438566 treated!9)) e!1711655)))

(declare-fun b!2715546 () Bool)

(assert (=> b!2715546 (= e!1711655 (inv!42525 (c!438566 treated!9)))))

(declare-fun b!2715547 () Bool)

(declare-fun e!1711656 () Bool)

(assert (=> b!2715547 (= e!1711655 e!1711656)))

(declare-fun res!1140485 () Bool)

(assert (=> b!2715547 (= res!1140485 (not ((_ is Leaf!14949) (c!438566 treated!9))))))

(assert (=> b!2715547 (=> res!1140485 e!1711656)))

(declare-fun b!2715548 () Bool)

(assert (=> b!2715548 (= e!1711656 (inv!42526 (c!438566 treated!9)))))

(assert (= (and d!782022 c!438678) b!2715546))

(assert (= (and d!782022 (not c!438678)) b!2715547))

(assert (= (and b!2715547 (not res!1140485)) b!2715548))

(declare-fun m!3113279 () Bool)

(assert (=> b!2715546 m!3113279))

(declare-fun m!3113281 () Bool)

(assert (=> b!2715548 m!3113281))

(assert (=> b!2715028 d!782022))

(declare-fun d!782024 () Bool)

(assert (=> d!782024 (= (list!11857 (_1!18127 lt!960682)) (list!11861 (c!438567 (_1!18127 lt!960682))))))

(declare-fun bs!488102 () Bool)

(assert (= bs!488102 d!782024))

(declare-fun m!3113283 () Bool)

(assert (=> bs!488102 m!3113283))

(assert (=> b!2715038 d!782024))

(declare-fun d!782026 () Bool)

(declare-fun e!1711660 () Bool)

(assert (=> d!782026 e!1711660))

(declare-fun res!1140487 () Bool)

(assert (=> d!782026 (=> (not res!1140487) (not e!1711660))))

(declare-fun lt!960887 () Option!6183)

(assert (=> d!782026 (= res!1140487 (= (isDefined!4893 lt!960887) (isDefined!4894 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 input!603)))))))

(declare-fun e!1711658 () Option!6183)

(assert (=> d!782026 (= lt!960887 e!1711658)))

(declare-fun c!438679 () Bool)

(assert (=> d!782026 (= c!438679 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!960892 () Unit!45356)

(declare-fun lt!960891 () Unit!45356)

(assert (=> d!782026 (= lt!960892 lt!960891)))

(declare-fun lt!960888 () List!31428)

(declare-fun lt!960889 () List!31428)

(assert (=> d!782026 (isPrefix!2483 lt!960888 lt!960889)))

(assert (=> d!782026 (= lt!960891 (lemmaIsPrefixRefl!1609 lt!960888 lt!960889))))

(assert (=> d!782026 (= lt!960889 (list!11856 input!603))))

(assert (=> d!782026 (= lt!960888 (list!11856 input!603))))

(assert (=> d!782026 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!782026 (= (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 input!603) lt!960887)))

(declare-fun b!2715549 () Bool)

(declare-fun call!175040 () Option!6183)

(assert (=> b!2715549 (= e!1711658 call!175040)))

(declare-fun e!1711662 () Bool)

(declare-fun b!2715550 () Bool)

(assert (=> b!2715550 (= e!1711662 (= (list!11856 (_2!18128 (get!9776 lt!960887))) (_2!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 input!603))))))))

(declare-fun b!2715551 () Bool)

(declare-fun e!1711657 () Bool)

(declare-fun e!1711659 () Bool)

(assert (=> b!2715551 (= e!1711657 e!1711659)))

(declare-fun res!1140490 () Bool)

(assert (=> b!2715551 (=> (not res!1140490) (not e!1711659))))

(assert (=> b!2715551 (= res!1140490 (= (_1!18128 (get!9776 lt!960887)) (_1!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 input!603))))))))

(declare-fun b!2715552 () Bool)

(assert (=> b!2715552 (= e!1711660 e!1711657)))

(declare-fun res!1140486 () Bool)

(assert (=> b!2715552 (=> res!1140486 e!1711657)))

(assert (=> b!2715552 (= res!1140486 (not (isDefined!4893 lt!960887)))))

(declare-fun b!2715553 () Bool)

(declare-fun e!1711661 () Bool)

(assert (=> b!2715553 (= e!1711661 e!1711662)))

(declare-fun res!1140491 () Bool)

(assert (=> b!2715553 (=> (not res!1140491) (not e!1711662))))

(assert (=> b!2715553 (= res!1140491 (= (_1!18128 (get!9776 lt!960887)) (_1!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 input!603))))))))

(declare-fun b!2715554 () Bool)

(declare-fun res!1140488 () Bool)

(assert (=> b!2715554 (=> (not res!1140488) (not e!1711660))))

(assert (=> b!2715554 (= res!1140488 e!1711661)))

(declare-fun res!1140489 () Bool)

(assert (=> b!2715554 (=> res!1140489 e!1711661)))

(assert (=> b!2715554 (= res!1140489 (not (isDefined!4893 lt!960887)))))

(declare-fun b!2715555 () Bool)

(declare-fun lt!960886 () Option!6183)

(declare-fun lt!960890 () Option!6183)

(assert (=> b!2715555 (= e!1711658 (ite (and ((_ is None!6182) lt!960886) ((_ is None!6182) lt!960890)) None!6182 (ite ((_ is None!6182) lt!960890) lt!960886 (ite ((_ is None!6182) lt!960886) lt!960890 (ite (>= (size!24166 (_1!18128 (v!33014 lt!960886))) (size!24166 (_1!18128 (v!33014 lt!960890)))) lt!960886 lt!960890)))))))

(assert (=> b!2715555 (= lt!960886 call!175040)))

(assert (=> b!2715555 (= lt!960890 (maxPrefixZipperSequence!1035 thiss!11556 (t!226248 rules!1182) input!603))))

(declare-fun bm!175035 () Bool)

(assert (=> bm!175035 (= call!175040 (maxPrefixOneRuleZipperSequence!479 thiss!11556 (h!36750 rules!1182) input!603))))

(declare-fun b!2715556 () Bool)

(assert (=> b!2715556 (= e!1711659 (= (list!11856 (_2!18128 (get!9776 lt!960887))) (_2!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 input!603))))))))

(assert (= (and d!782026 c!438679) b!2715549))

(assert (= (and d!782026 (not c!438679)) b!2715555))

(assert (= (or b!2715549 b!2715555) bm!175035))

(assert (= (and d!782026 res!1140487) b!2715554))

(assert (= (and b!2715554 (not res!1140489)) b!2715553))

(assert (= (and b!2715553 res!1140491) b!2715550))

(assert (= (and b!2715554 res!1140488) b!2715552))

(assert (= (and b!2715552 (not res!1140486)) b!2715551))

(assert (= (and b!2715551 res!1140490) b!2715556))

(declare-fun m!3113285 () Bool)

(assert (=> b!2715550 m!3113285))

(declare-fun m!3113287 () Bool)

(assert (=> b!2715550 m!3113287))

(declare-fun m!3113289 () Bool)

(assert (=> b!2715550 m!3113289))

(assert (=> b!2715550 m!3112377))

(assert (=> b!2715550 m!3112377))

(assert (=> b!2715550 m!3113285))

(declare-fun m!3113291 () Bool)

(assert (=> b!2715550 m!3113291))

(declare-fun m!3113293 () Bool)

(assert (=> b!2715554 m!3113293))

(assert (=> b!2715553 m!3113291))

(assert (=> b!2715553 m!3112377))

(assert (=> b!2715553 m!3112377))

(assert (=> b!2715553 m!3113285))

(assert (=> b!2715553 m!3113285))

(assert (=> b!2715553 m!3113287))

(declare-fun m!3113295 () Bool)

(assert (=> bm!175035 m!3113295))

(declare-fun m!3113297 () Bool)

(assert (=> b!2715555 m!3113297))

(assert (=> d!782026 m!3113293))

(assert (=> d!782026 m!3113285))

(declare-fun m!3113299 () Bool)

(assert (=> d!782026 m!3113299))

(declare-fun m!3113301 () Bool)

(assert (=> d!782026 m!3113301))

(assert (=> d!782026 m!3113171))

(assert (=> d!782026 m!3112377))

(assert (=> d!782026 m!3112377))

(assert (=> d!782026 m!3113285))

(declare-fun m!3113303 () Bool)

(assert (=> d!782026 m!3113303))

(declare-fun m!3113305 () Bool)

(assert (=> b!2715556 m!3113305))

(declare-fun m!3113307 () Bool)

(assert (=> b!2715556 m!3113307))

(assert (=> b!2715556 m!3113289))

(assert (=> b!2715556 m!3112377))

(assert (=> b!2715556 m!3112377))

(assert (=> b!2715556 m!3113305))

(assert (=> b!2715556 m!3113291))

(assert (=> b!2715552 m!3113293))

(assert (=> b!2715551 m!3113291))

(assert (=> b!2715551 m!3112377))

(assert (=> b!2715551 m!3112377))

(assert (=> b!2715551 m!3113305))

(assert (=> b!2715551 m!3113305))

(assert (=> b!2715551 m!3113307))

(assert (=> b!2715040 d!782026))

(declare-fun d!782028 () Bool)

(assert (=> d!782028 (= (isEmpty!17857 (list!11856 (_2!18127 lt!960682))) ((_ is Nil!31328) (list!11856 (_2!18127 lt!960682))))))

(assert (=> b!2715029 d!782028))

(declare-fun d!782030 () Bool)

(assert (=> d!782030 (= (list!11856 (_2!18127 lt!960682)) (list!11860 (c!438566 (_2!18127 lt!960682))))))

(declare-fun bs!488103 () Bool)

(assert (= bs!488103 d!782030))

(declare-fun m!3113309 () Bool)

(assert (=> bs!488103 m!3113309))

(assert (=> b!2715029 d!782030))

(declare-fun b!2715567 () Bool)

(declare-fun e!1711665 () Bool)

(declare-fun tp_is_empty!13881 () Bool)

(assert (=> b!2715567 (= e!1711665 tp_is_empty!13881)))

(declare-fun b!2715568 () Bool)

(declare-fun tp!857586 () Bool)

(declare-fun tp!857585 () Bool)

(assert (=> b!2715568 (= e!1711665 (and tp!857586 tp!857585))))

(declare-fun b!2715570 () Bool)

(declare-fun tp!857584 () Bool)

(declare-fun tp!857583 () Bool)

(assert (=> b!2715570 (= e!1711665 (and tp!857584 tp!857583))))

(declare-fun b!2715569 () Bool)

(declare-fun tp!857587 () Bool)

(assert (=> b!2715569 (= e!1711665 tp!857587)))

(assert (=> b!2715030 (= tp!857510 e!1711665)))

(assert (= (and b!2715030 ((_ is ElementMatch!7943) (regex!4791 (h!36750 rules!1182)))) b!2715567))

(assert (= (and b!2715030 ((_ is Concat!12957) (regex!4791 (h!36750 rules!1182)))) b!2715568))

(assert (= (and b!2715030 ((_ is Star!7943) (regex!4791 (h!36750 rules!1182)))) b!2715569))

(assert (= (and b!2715030 ((_ is Union!7943) (regex!4791 (h!36750 rules!1182)))) b!2715570))

(declare-fun b!2715581 () Bool)

(declare-fun b_free!76545 () Bool)

(declare-fun b_next!77249 () Bool)

(assert (=> b!2715581 (= b_free!76545 (not b_next!77249))))

(declare-fun tp!857596 () Bool)

(declare-fun b_and!200297 () Bool)

(assert (=> b!2715581 (= tp!857596 b_and!200297)))

(declare-fun b_free!76547 () Bool)

(declare-fun b_next!77251 () Bool)

(assert (=> b!2715581 (= b_free!76547 (not b_next!77251))))

(declare-fun tb!151835 () Bool)

(declare-fun t!226256 () Bool)

(assert (=> (and b!2715581 (= (toChars!6620 (transformation!4791 (h!36750 (t!226248 rules!1182)))) (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664)))))) t!226256) tb!151835))

(declare-fun result!187576 () Bool)

(assert (= result!187576 result!187568))

(assert (=> d!781984 t!226256))

(declare-fun tp!857599 () Bool)

(declare-fun b_and!200299 () Bool)

(assert (=> b!2715581 (= tp!857599 (and (=> t!226256 result!187576) b_and!200299))))

(declare-fun e!1711677 () Bool)

(assert (=> b!2715581 (= e!1711677 (and tp!857596 tp!857599))))

(declare-fun e!1711675 () Bool)

(declare-fun b!2715580 () Bool)

(declare-fun tp!857598 () Bool)

(assert (=> b!2715580 (= e!1711675 (and tp!857598 (inv!42508 (tag!5295 (h!36750 (t!226248 rules!1182)))) (inv!42518 (transformation!4791 (h!36750 (t!226248 rules!1182)))) e!1711677))))

(declare-fun b!2715579 () Bool)

(declare-fun e!1711674 () Bool)

(declare-fun tp!857597 () Bool)

(assert (=> b!2715579 (= e!1711674 (and e!1711675 tp!857597))))

(assert (=> b!2715041 (= tp!857514 e!1711674)))

(assert (= b!2715580 b!2715581))

(assert (= b!2715579 b!2715580))

(assert (= (and b!2715041 ((_ is Cons!31330) (t!226248 rules!1182))) b!2715579))

(declare-fun m!3113311 () Bool)

(assert (=> b!2715580 m!3113311))

(declare-fun m!3113313 () Bool)

(assert (=> b!2715580 m!3113313))

(declare-fun tp!857607 () Bool)

(declare-fun tp!857606 () Bool)

(declare-fun e!1711682 () Bool)

(declare-fun b!2715590 () Bool)

(assert (=> b!2715590 (= e!1711682 (and (inv!42514 (left!24086 (c!438566 input!603))) tp!857606 (inv!42514 (right!24416 (c!438566 input!603))) tp!857607))))

(declare-fun b!2715592 () Bool)

(declare-fun e!1711683 () Bool)

(declare-fun tp!857608 () Bool)

(assert (=> b!2715592 (= e!1711683 tp!857608)))

(declare-fun b!2715591 () Bool)

(declare-fun inv!42529 (IArray!19623) Bool)

(assert (=> b!2715591 (= e!1711682 (and (inv!42529 (xs!12872 (c!438566 input!603))) e!1711683))))

(assert (=> b!2715025 (= tp!857512 (and (inv!42514 (c!438566 input!603)) e!1711682))))

(assert (= (and b!2715025 ((_ is Node!9809) (c!438566 input!603))) b!2715590))

(assert (= b!2715591 b!2715592))

(assert (= (and b!2715025 ((_ is Leaf!14949) (c!438566 input!603))) b!2715591))

(declare-fun m!3113315 () Bool)

(assert (=> b!2715590 m!3113315))

(declare-fun m!3113317 () Bool)

(assert (=> b!2715590 m!3113317))

(declare-fun m!3113319 () Bool)

(assert (=> b!2715591 m!3113319))

(assert (=> b!2715025 m!3112259))

(declare-fun tp!857609 () Bool)

(declare-fun b!2715593 () Bool)

(declare-fun e!1711684 () Bool)

(declare-fun tp!857610 () Bool)

(assert (=> b!2715593 (= e!1711684 (and (inv!42514 (left!24086 (c!438566 treated!9))) tp!857609 (inv!42514 (right!24416 (c!438566 treated!9))) tp!857610))))

(declare-fun b!2715595 () Bool)

(declare-fun e!1711685 () Bool)

(declare-fun tp!857611 () Bool)

(assert (=> b!2715595 (= e!1711685 tp!857611)))

(declare-fun b!2715594 () Bool)

(assert (=> b!2715594 (= e!1711684 (and (inv!42529 (xs!12872 (c!438566 treated!9))) e!1711685))))

(assert (=> b!2715028 (= tp!857513 (and (inv!42514 (c!438566 treated!9)) e!1711684))))

(assert (= (and b!2715028 ((_ is Node!9809) (c!438566 treated!9))) b!2715593))

(assert (= b!2715594 b!2715595))

(assert (= (and b!2715028 ((_ is Leaf!14949) (c!438566 treated!9))) b!2715594))

(declare-fun m!3113321 () Bool)

(assert (=> b!2715593 m!3113321))

(declare-fun m!3113323 () Bool)

(assert (=> b!2715593 m!3113323))

(declare-fun m!3113325 () Bool)

(assert (=> b!2715594 m!3113325))

(assert (=> b!2715028 m!3112263))

(declare-fun tp!857620 () Bool)

(declare-fun e!1711691 () Bool)

(declare-fun b!2715604 () Bool)

(declare-fun tp!857619 () Bool)

(assert (=> b!2715604 (= e!1711691 (and (inv!42515 (left!24087 (c!438567 acc!331))) tp!857620 (inv!42515 (right!24417 (c!438567 acc!331))) tp!857619))))

(declare-fun b!2715606 () Bool)

(declare-fun e!1711690 () Bool)

(declare-fun tp!857618 () Bool)

(assert (=> b!2715606 (= e!1711690 tp!857618)))

(declare-fun b!2715605 () Bool)

(declare-fun inv!42530 (IArray!19625) Bool)

(assert (=> b!2715605 (= e!1711691 (and (inv!42530 (xs!12873 (c!438567 acc!331))) e!1711690))))

(assert (=> b!2715033 (= tp!857511 (and (inv!42515 (c!438567 acc!331)) e!1711691))))

(assert (= (and b!2715033 ((_ is Node!9810) (c!438567 acc!331))) b!2715604))

(assert (= b!2715605 b!2715606))

(assert (= (and b!2715033 ((_ is Leaf!14950) (c!438567 acc!331))) b!2715605))

(declare-fun m!3113327 () Bool)

(assert (=> b!2715604 m!3113327))

(declare-fun m!3113329 () Bool)

(assert (=> b!2715604 m!3113329))

(declare-fun m!3113331 () Bool)

(assert (=> b!2715605 m!3113331))

(assert (=> b!2715033 m!3112381))

(declare-fun b!2715607 () Bool)

(declare-fun e!1711692 () Bool)

(declare-fun tp!857622 () Bool)

(declare-fun tp!857621 () Bool)

(assert (=> b!2715607 (= e!1711692 (and (inv!42514 (left!24086 (c!438566 totalInput!328))) tp!857621 (inv!42514 (right!24416 (c!438566 totalInput!328))) tp!857622))))

(declare-fun b!2715609 () Bool)

(declare-fun e!1711693 () Bool)

(declare-fun tp!857623 () Bool)

(assert (=> b!2715609 (= e!1711693 tp!857623)))

(declare-fun b!2715608 () Bool)

(assert (=> b!2715608 (= e!1711692 (and (inv!42529 (xs!12872 (c!438566 totalInput!328))) e!1711693))))

(assert (=> b!2715045 (= tp!857509 (and (inv!42514 (c!438566 totalInput!328)) e!1711692))))

(assert (= (and b!2715045 ((_ is Node!9809) (c!438566 totalInput!328))) b!2715607))

(assert (= b!2715608 b!2715609))

(assert (= (and b!2715045 ((_ is Leaf!14949) (c!438566 totalInput!328))) b!2715608))

(declare-fun m!3113333 () Bool)

(assert (=> b!2715607 m!3113333))

(declare-fun m!3113335 () Bool)

(assert (=> b!2715607 m!3113335))

(declare-fun m!3113337 () Bool)

(assert (=> b!2715608 m!3113337))

(assert (=> b!2715045 m!3112339))

(check-sat (not d!781884) (not b!2715530) (not b!2715535) (not d!782010) (not b!2715604) (not d!782014) (not d!781880) (not b!2715550) (not d!781972) (not b!2715256) (not b!2715569) (not b!2715172) (not b!2715592) (not b!2715545) (not b!2715368) (not b!2715486) (not b!2715270) (not b!2715363) (not b!2715245) (not b_next!77243) (not d!781944) (not b!2715608) (not d!781912) (not b!2715202) (not b!2715469) (not d!782026) (not b!2715607) (not b!2715458) (not b_next!77251) (not d!781982) (not d!782000) (not b!2715506) (not b!2715555) (not d!781942) b_and!200295 (not b!2715593) (not b!2715367) (not b!2715258) (not b!2715247) (not d!781916) (not b!2715282) (not d!781988) (not b!2715269) (not b!2715298) (not b!2715520) (not d!781952) (not b!2715045) (not b_next!77241) (not b!2715527) (not d!781998) (not b!2715355) (not d!781904) (not b!2715553) (not b!2715200) (not b!2715028) (not d!781922) (not b!2715286) (not b!2715466) (not b!2715293) b_and!200297 (not b!2715525) (not b!2715590) (not b!2715580) (not b!2715523) (not b!2715461) tp_is_empty!13881 (not d!781984) (not b!2715595) (not d!781974) (not d!781966) (not d!781794) (not d!781976) (not b!2715521) (not d!782008) (not d!782024) (not b!2715453) (not b!2715176) (not b!2715259) (not d!781806) (not bm!175035) (not b!2715540) (not d!781814) (not b!2715241) (not b!2715067) (not b!2715360) (not d!781970) (not b!2715364) (not d!781812) (not b!2715504) (not b!2715606) (not b!2715556) (not b!2715509) (not b!2715359) (not b!2715468) (not b!2715554) (not b!2715568) (not b!2715178) (not d!782016) (not d!781914) (not d!781910) (not b!2715531) (not b!2715591) (not b!2715281) (not d!781980) (not d!781948) (not d!782020) (not b!2715173) (not b!2715464) (not b!2715609) (not b!2715246) (not b!2715534) (not b!2715517) (not b!2715505) (not b!2715484) (not d!781992) (not b!2715532) (not b!2715177) (not d!782030) (not b!2715519) (not d!781968) (not b!2715507) (not b!2715175) (not b!2715295) (not b!2715297) (not b!2715579) (not d!781996) (not b!2715543) (not b!2715510) (not b!2715244) (not d!781924) (not d!781894) (not bm!175034) (not d!781920) (not b!2715353) (not b!2715485) (not b!2715605) (not d!782012) (not d!781918) (not b!2715289) (not b!2715524) (not b!2715528) (not b!2715542) (not b!2715257) (not b!2715551) (not b_next!77249) (not d!781946) (not b!2715242) (not tb!151833) (not d!781986) (not d!782004) (not b!2715463) (not b!2715356) (not b!2715292) (not b!2715060) b_and!200285 (not d!782018) (not b!2715467) (not b!2715285) (not b!2715552) (not b!2715033) (not b!2715537) (not b!2715546) (not b!2715236) (not b!2715548) (not b!2715290) (not b!2715460) (not b_lambda!82529) (not b!2715025) (not d!781908) (not b!2715508) b_and!200299 (not b!2715526) (not d!781802) (not d!782006) (not d!781964) (not b!2715594) (not b!2715538) (not b!2715570) (not d!781816) (not b!2715483) (not b!2715529) (not b!2715474) (not d!781994) (not b!2715536) (not b!2715296) (not b!2715454) (not d!781978))
(check-sat (not b_next!77243) (not b_next!77251) b_and!200295 (not b_next!77241) b_and!200297 (not b_next!77249) b_and!200285 b_and!200299)
(get-model)

(declare-fun d!782032 () Bool)

(declare-fun c!438684 () Bool)

(assert (=> d!782032 (= c!438684 ((_ is Empty!9810) (c!438567 lt!960678)))))

(declare-fun e!1711698 () List!31429)

(assert (=> d!782032 (= (list!11861 (c!438567 lt!960678)) e!1711698)))

(declare-fun b!2715620 () Bool)

(declare-fun e!1711699 () List!31429)

(declare-fun list!11862 (IArray!19625) List!31429)

(assert (=> b!2715620 (= e!1711699 (list!11862 (xs!12873 (c!438567 lt!960678))))))

(declare-fun b!2715619 () Bool)

(assert (=> b!2715619 (= e!1711698 e!1711699)))

(declare-fun c!438685 () Bool)

(assert (=> b!2715619 (= c!438685 ((_ is Leaf!14950) (c!438567 lt!960678)))))

(declare-fun b!2715618 () Bool)

(assert (=> b!2715618 (= e!1711698 Nil!31329)))

(declare-fun b!2715621 () Bool)

(assert (=> b!2715621 (= e!1711699 (++!7770 (list!11861 (left!24087 (c!438567 lt!960678))) (list!11861 (right!24417 (c!438567 lt!960678)))))))

(assert (= (and d!782032 c!438684) b!2715618))

(assert (= (and d!782032 (not c!438684)) b!2715619))

(assert (= (and b!2715619 c!438685) b!2715620))

(assert (= (and b!2715619 (not c!438685)) b!2715621))

(declare-fun m!3113339 () Bool)

(assert (=> b!2715620 m!3113339))

(declare-fun m!3113341 () Bool)

(assert (=> b!2715621 m!3113341))

(declare-fun m!3113343 () Bool)

(assert (=> b!2715621 m!3113343))

(assert (=> b!2715621 m!3113341))

(assert (=> b!2715621 m!3113343))

(declare-fun m!3113345 () Bool)

(assert (=> b!2715621 m!3113345))

(assert (=> d!781974 d!782032))

(declare-fun b!2715634 () Bool)

(declare-fun res!1140518 () Bool)

(declare-fun e!1711704 () Bool)

(assert (=> b!2715634 (=> (not res!1140518) (not e!1711704))))

(declare-fun isEmpty!17864 (Conc!9809) Bool)

(assert (=> b!2715634 (= res!1140518 (not (isEmpty!17864 (left!24086 (c!438566 treated!9)))))))

(declare-fun b!2715635 () Bool)

(declare-fun res!1140517 () Bool)

(assert (=> b!2715635 (=> (not res!1140517) (not e!1711704))))

(assert (=> b!2715635 (= res!1140517 (<= (- (height!1452 (left!24086 (c!438566 treated!9))) (height!1452 (right!24416 (c!438566 treated!9)))) 1))))

(declare-fun b!2715636 () Bool)

(declare-fun res!1140519 () Bool)

(assert (=> b!2715636 (=> (not res!1140519) (not e!1711704))))

(assert (=> b!2715636 (= res!1140519 (isBalanced!2972 (right!24416 (c!438566 treated!9))))))

(declare-fun d!782034 () Bool)

(declare-fun res!1140520 () Bool)

(declare-fun e!1711705 () Bool)

(assert (=> d!782034 (=> res!1140520 e!1711705)))

(assert (=> d!782034 (= res!1140520 (not ((_ is Node!9809) (c!438566 treated!9))))))

(assert (=> d!782034 (= (isBalanced!2972 (c!438566 treated!9)) e!1711705)))

(declare-fun b!2715637 () Bool)

(assert (=> b!2715637 (= e!1711705 e!1711704)))

(declare-fun res!1140521 () Bool)

(assert (=> b!2715637 (=> (not res!1140521) (not e!1711704))))

(assert (=> b!2715637 (= res!1140521 (<= (- 1) (- (height!1452 (left!24086 (c!438566 treated!9))) (height!1452 (right!24416 (c!438566 treated!9))))))))

(declare-fun b!2715638 () Bool)

(declare-fun res!1140522 () Bool)

(assert (=> b!2715638 (=> (not res!1140522) (not e!1711704))))

(assert (=> b!2715638 (= res!1140522 (isBalanced!2972 (left!24086 (c!438566 treated!9))))))

(declare-fun b!2715639 () Bool)

(assert (=> b!2715639 (= e!1711704 (not (isEmpty!17864 (right!24416 (c!438566 treated!9)))))))

(assert (= (and d!782034 (not res!1140520)) b!2715637))

(assert (= (and b!2715637 res!1140521) b!2715635))

(assert (= (and b!2715635 res!1140517) b!2715638))

(assert (= (and b!2715638 res!1140522) b!2715636))

(assert (= (and b!2715636 res!1140519) b!2715634))

(assert (= (and b!2715634 res!1140518) b!2715639))

(declare-fun m!3113347 () Bool)

(assert (=> b!2715638 m!3113347))

(declare-fun m!3113349 () Bool)

(assert (=> b!2715637 m!3113349))

(declare-fun m!3113351 () Bool)

(assert (=> b!2715637 m!3113351))

(assert (=> b!2715635 m!3113349))

(assert (=> b!2715635 m!3113351))

(declare-fun m!3113353 () Bool)

(assert (=> b!2715639 m!3113353))

(declare-fun m!3113355 () Bool)

(assert (=> b!2715636 m!3113355))

(declare-fun m!3113357 () Bool)

(assert (=> b!2715634 m!3113357))

(assert (=> d!782014 d!782034))

(declare-fun d!782036 () Bool)

(declare-fun lt!960895 () Int)

(assert (=> d!782036 (= lt!960895 (size!24174 (list!11856 (_2!18127 lt!960846))))))

(declare-fun size!24176 (Conc!9809) Int)

(assert (=> d!782036 (= lt!960895 (size!24176 (c!438566 (_2!18127 lt!960846))))))

(assert (=> d!782036 (= (size!24171 (_2!18127 lt!960846)) lt!960895)))

(declare-fun bs!488104 () Bool)

(assert (= bs!488104 d!782036))

(assert (=> bs!488104 m!3113117))

(assert (=> bs!488104 m!3113117))

(declare-fun m!3113359 () Bool)

(assert (=> bs!488104 m!3113359))

(declare-fun m!3113361 () Bool)

(assert (=> bs!488104 m!3113361))

(assert (=> b!2715464 d!782036))

(declare-fun d!782040 () Bool)

(declare-fun lt!960896 () Int)

(assert (=> d!782040 (= lt!960896 (size!24174 (list!11856 lt!960675)))))

(assert (=> d!782040 (= lt!960896 (size!24176 (c!438566 lt!960675)))))

(assert (=> d!782040 (= (size!24171 lt!960675) lt!960896)))

(declare-fun bs!488105 () Bool)

(assert (= bs!488105 d!782040))

(assert (=> bs!488105 m!3112299))

(assert (=> bs!488105 m!3112299))

(assert (=> bs!488105 m!3112937))

(declare-fun m!3113363 () Bool)

(assert (=> bs!488105 m!3113363))

(assert (=> b!2715464 d!782040))

(declare-fun b!2715665 () Bool)

(declare-fun e!1711718 () Bool)

(declare-fun e!1711717 () Bool)

(assert (=> b!2715665 (= e!1711718 e!1711717)))

(declare-fun res!1140541 () Bool)

(assert (=> b!2715665 (=> (not res!1140541) (not e!1711717))))

(assert (=> b!2715665 (= res!1140541 (<= (- 1) (- (height!1451 (left!24087 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677))))) (height!1451 (right!24417 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677))))))))))

(declare-fun b!2715666 () Bool)

(declare-fun res!1140536 () Bool)

(assert (=> b!2715666 (=> (not res!1140536) (not e!1711717))))

(declare-fun isEmpty!17866 (Conc!9810) Bool)

(assert (=> b!2715666 (= res!1140536 (not (isEmpty!17866 (left!24087 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677)))))))))

(declare-fun d!782042 () Bool)

(declare-fun res!1140539 () Bool)

(assert (=> d!782042 (=> res!1140539 e!1711718)))

(assert (=> d!782042 (= res!1140539 (not ((_ is Node!9810) (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677))))))))

(assert (=> d!782042 (= (isBalanced!2971 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677)))) e!1711718)))

(declare-fun b!2715667 () Bool)

(declare-fun res!1140538 () Bool)

(assert (=> b!2715667 (=> (not res!1140538) (not e!1711717))))

(assert (=> b!2715667 (= res!1140538 (isBalanced!2971 (left!24087 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677))))))))

(declare-fun b!2715668 () Bool)

(assert (=> b!2715668 (= e!1711717 (not (isEmpty!17866 (right!24417 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677)))))))))

(declare-fun b!2715669 () Bool)

(declare-fun res!1140540 () Bool)

(assert (=> b!2715669 (=> (not res!1140540) (not e!1711717))))

(assert (=> b!2715669 (= res!1140540 (<= (- (height!1451 (left!24087 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677))))) (height!1451 (right!24417 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677)))))) 1))))

(declare-fun b!2715670 () Bool)

(declare-fun res!1140537 () Bool)

(assert (=> b!2715670 (=> (not res!1140537) (not e!1711717))))

(assert (=> b!2715670 (= res!1140537 (isBalanced!2971 (right!24417 (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677))))))))

(assert (= (and d!782042 (not res!1140539)) b!2715665))

(assert (= (and b!2715665 res!1140541) b!2715669))

(assert (= (and b!2715669 res!1140540) b!2715667))

(assert (= (and b!2715667 res!1140538) b!2715670))

(assert (= (and b!2715670 res!1140537) b!2715666))

(assert (= (and b!2715666 res!1140536) b!2715668))

(declare-fun m!3113387 () Bool)

(assert (=> b!2715665 m!3113387))

(declare-fun m!3113389 () Bool)

(assert (=> b!2715665 m!3113389))

(declare-fun m!3113391 () Bool)

(assert (=> b!2715670 m!3113391))

(declare-fun m!3113393 () Bool)

(assert (=> b!2715668 m!3113393))

(declare-fun m!3113395 () Bool)

(assert (=> b!2715666 m!3113395))

(declare-fun m!3113397 () Bool)

(assert (=> b!2715667 m!3113397))

(assert (=> b!2715669 m!3113387))

(assert (=> b!2715669 m!3113389))

(assert (=> d!781894 d!782042))

(declare-fun d!782056 () Bool)

(declare-fun e!1711727 () Bool)

(assert (=> d!782056 e!1711727))

(declare-fun res!1140562 () Bool)

(assert (=> d!782056 (=> (not res!1140562) (not e!1711727))))

(declare-fun lt!960903 () Conc!9810)

(assert (=> d!782056 (= res!1140562 (isBalanced!2971 lt!960903))))

(declare-fun fill!142 (Int Token!9044) IArray!19625)

(assert (=> d!782056 (= lt!960903 (++!7774 (Leaf!14950 (fill!142 1 (_1!18128 (v!33014 lt!960677))) 1) (c!438567 (_1!18127 lt!960687))))))

(assert (=> d!782056 (isBalanced!2971 (c!438567 (_1!18127 lt!960687)))))

(assert (=> d!782056 (= (prepend!1119 (c!438567 (_1!18127 lt!960687)) (_1!18128 (v!33014 lt!960677))) lt!960903)))

(declare-fun b!2715691 () Bool)

(assert (=> b!2715691 (= e!1711727 (= (list!11861 lt!960903) (Cons!31329 (_1!18128 (v!33014 lt!960677)) (list!11861 (c!438567 (_1!18127 lt!960687))))))))

(assert (= (and d!782056 res!1140562) b!2715691))

(declare-fun m!3113403 () Bool)

(assert (=> d!782056 m!3113403))

(declare-fun m!3113405 () Bool)

(assert (=> d!782056 m!3113405))

(declare-fun m!3113407 () Bool)

(assert (=> d!782056 m!3113407))

(declare-fun m!3113409 () Bool)

(assert (=> d!782056 m!3113409))

(declare-fun m!3113411 () Bool)

(assert (=> b!2715691 m!3113411))

(declare-fun m!3113413 () Bool)

(assert (=> b!2715691 m!3113413))

(assert (=> d!781894 d!782056))

(declare-fun d!782062 () Bool)

(assert (=> d!782062 (= (inv!42529 (xs!12872 (c!438566 totalInput!328))) (<= (size!24174 (innerList!9869 (xs!12872 (c!438566 totalInput!328)))) 2147483647))))

(declare-fun bs!488111 () Bool)

(assert (= bs!488111 d!782062))

(declare-fun m!3113435 () Bool)

(assert (=> bs!488111 m!3113435))

(assert (=> b!2715608 d!782062))

(declare-fun b!2715826 () Bool)

(declare-fun e!1711810 () Conc!9810)

(declare-fun call!175089 () Conc!9810)

(assert (=> b!2715826 (= e!1711810 call!175089)))

(declare-fun b!2715827 () Bool)

(declare-fun e!1711812 () Conc!9810)

(declare-fun call!175075 () Conc!9810)

(assert (=> b!2715827 (= e!1711812 call!175075)))

(declare-fun c!438738 () Bool)

(declare-fun c!438739 () Bool)

(declare-fun call!175090 () Conc!9810)

(declare-fun call!175085 () Conc!9810)

(declare-fun call!175076 () Conc!9810)

(declare-fun lt!960954 () Conc!9810)

(declare-fun lt!960957 () Conc!9810)

(declare-fun c!438734 () Bool)

(declare-fun bm!175070 () Bool)

(declare-fun c!438735 () Bool)

(declare-fun <>!252 (Conc!9810 Conc!9810) Conc!9810)

(assert (=> bm!175070 (= call!175085 (<>!252 (ite c!438735 (ite c!438738 (left!24087 (c!438567 lt!960678)) call!175076) (ite c!438739 call!175090 (ite c!438734 lt!960957 (right!24417 (left!24087 (c!438567 (_1!18127 lt!960670))))))) (ite c!438735 (ite c!438738 call!175076 lt!960954) (ite c!438739 (right!24417 (c!438567 (_1!18127 lt!960670))) (ite c!438734 (right!24417 (left!24087 (c!438567 (_1!18127 lt!960670)))) (right!24417 (c!438567 (_1!18127 lt!960670))))))))))

(declare-fun bm!175071 () Bool)

(declare-fun call!175078 () Int)

(assert (=> bm!175071 (= call!175078 (height!1451 (ite c!438735 lt!960954 (left!24087 (c!438567 (_1!18127 lt!960670))))))))

(declare-fun bm!175072 () Bool)

(declare-fun call!175080 () Conc!9810)

(declare-fun call!175077 () Conc!9810)

(assert (=> bm!175072 (= call!175080 call!175077)))

(declare-fun b!2715828 () Bool)

(declare-fun e!1711813 () Conc!9810)

(assert (=> b!2715828 (= e!1711813 (c!438567 (_1!18127 lt!960670)))))

(declare-fun call!175079 () Conc!9810)

(declare-fun bm!175073 () Bool)

(declare-fun c!438736 () Bool)

(declare-fun c!438741 () Bool)

(assert (=> bm!175073 (= call!175075 (<>!252 (ite c!438741 (c!438567 lt!960678) (ite c!438735 (ite c!438736 (left!24087 (c!438567 lt!960678)) (ite c!438738 (left!24087 (right!24417 (c!438567 lt!960678))) (left!24087 (c!438567 lt!960678)))) (ite c!438734 call!175079 lt!960957))) (ite c!438741 (c!438567 (_1!18127 lt!960670)) (ite c!438735 (ite c!438736 call!175080 (ite c!438738 lt!960954 (left!24087 (right!24417 (c!438567 lt!960678))))) (ite c!438734 (right!24417 (c!438567 (_1!18127 lt!960670))) call!175079)))))))

(declare-fun b!2715829 () Bool)

(declare-fun call!175087 () Int)

(assert (=> b!2715829 (= c!438739 (>= call!175087 call!175078))))

(declare-fun e!1711806 () Conc!9810)

(declare-fun e!1711805 () Conc!9810)

(assert (=> b!2715829 (= e!1711806 e!1711805)))

(declare-fun bm!175074 () Bool)

(declare-fun call!175083 () Conc!9810)

(assert (=> bm!175074 (= call!175083 call!175075)))

(declare-fun b!2715830 () Bool)

(declare-fun call!175081 () Conc!9810)

(assert (=> b!2715830 (= e!1711805 call!175081)))

(declare-fun b!2715831 () Bool)

(declare-fun e!1711811 () Conc!9810)

(assert (=> b!2715831 (= e!1711811 (c!438567 lt!960678))))

(declare-fun b!2715832 () Bool)

(assert (=> b!2715832 (= e!1711810 call!175089)))

(declare-fun b!2715833 () Bool)

(declare-fun e!1711809 () Conc!9810)

(assert (=> b!2715833 (= e!1711805 e!1711809)))

(assert (=> b!2715833 (= lt!960957 call!175090)))

(declare-fun call!175082 () Int)

(declare-fun call!175084 () Int)

(assert (=> b!2715833 (= c!438734 (= call!175082 (- call!175084 3)))))

(declare-fun b!2715834 () Bool)

(declare-fun e!1711807 () Conc!9810)

(assert (=> b!2715834 (= e!1711807 e!1711810)))

(assert (=> b!2715834 (= lt!960954 call!175080)))

(assert (=> b!2715834 (= c!438738 (= call!175078 (- call!175087 3)))))

(declare-fun bm!175075 () Bool)

(assert (=> bm!175075 (= call!175079 call!175081)))

(declare-fun bm!175076 () Bool)

(assert (=> bm!175076 (= call!175090 call!175077)))

(declare-fun b!2715835 () Bool)

(assert (=> b!2715835 (= c!438736 (>= call!175082 call!175084))))

(assert (=> b!2715835 (= e!1711806 e!1711807)))

(declare-fun bm!175077 () Bool)

(assert (=> bm!175077 (= call!175077 (++!7774 (ite c!438735 (ite c!438736 (right!24417 (c!438567 lt!960678)) (right!24417 (right!24417 (c!438567 lt!960678)))) (c!438567 lt!960678)) (ite c!438735 (c!438567 (_1!18127 lt!960670)) (ite c!438739 (left!24087 (c!438567 (_1!18127 lt!960670))) (left!24087 (left!24087 (c!438567 (_1!18127 lt!960670))))))))))

(declare-fun b!2715836 () Bool)

(declare-fun res!1140616 () Bool)

(declare-fun e!1711808 () Bool)

(assert (=> b!2715836 (=> (not res!1140616) (not e!1711808))))

(declare-fun lt!960955 () Conc!9810)

(assert (=> b!2715836 (= res!1140616 (<= (height!1451 lt!960955) (+ (max!0 (height!1451 (c!438567 lt!960678)) (height!1451 (c!438567 (_1!18127 lt!960670)))) 1)))))

(declare-fun d!782070 () Bool)

(assert (=> d!782070 e!1711808))

(declare-fun res!1140615 () Bool)

(assert (=> d!782070 (=> (not res!1140615) (not e!1711808))))

(assert (=> d!782070 (= res!1140615 (appendAssocInst!688 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670))))))

(assert (=> d!782070 (= lt!960955 e!1711813)))

(declare-fun c!438740 () Bool)

(assert (=> d!782070 (= c!438740 (= (c!438567 lt!960678) Empty!9810))))

(declare-fun e!1711804 () Bool)

(assert (=> d!782070 e!1711804))

(declare-fun res!1140613 () Bool)

(assert (=> d!782070 (=> (not res!1140613) (not e!1711804))))

(assert (=> d!782070 (= res!1140613 (isBalanced!2971 (c!438567 lt!960678)))))

(assert (=> d!782070 (= (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670))) lt!960955)))

(declare-fun bm!175078 () Bool)

(assert (=> bm!175078 (= call!175089 call!175085)))

(declare-fun b!2715837 () Bool)

(assert (=> b!2715837 (= e!1711813 e!1711811)))

(declare-fun c!438737 () Bool)

(assert (=> b!2715837 (= c!438737 (= (c!438567 (_1!18127 lt!960670)) Empty!9810))))

(declare-fun b!2715838 () Bool)

(assert (=> b!2715838 (= e!1711812 e!1711806)))

(declare-fun lt!960956 () Int)

(assert (=> b!2715838 (= c!438735 (< lt!960956 (- 1)))))

(declare-fun bm!175079 () Bool)

(declare-fun call!175088 () Conc!9810)

(assert (=> bm!175079 (= call!175076 call!175088)))

(declare-fun bm!175080 () Bool)

(assert (=> bm!175080 (= call!175088 call!175083)))

(declare-fun bm!175081 () Bool)

(assert (=> bm!175081 (= call!175081 call!175085)))

(declare-fun b!2715839 () Bool)

(declare-fun res!1140617 () Bool)

(assert (=> b!2715839 (=> (not res!1140617) (not e!1711808))))

(assert (=> b!2715839 (= res!1140617 (>= (height!1451 lt!960955) (max!0 (height!1451 (c!438567 lt!960678)) (height!1451 (c!438567 (_1!18127 lt!960670))))))))

(declare-fun bm!175082 () Bool)

(declare-fun call!175086 () Conc!9810)

(assert (=> bm!175082 (= call!175086 call!175083)))

(declare-fun bm!175083 () Bool)

(assert (=> bm!175083 (= call!175084 (height!1451 (ite c!438735 (right!24417 (c!438567 lt!960678)) (c!438567 (_1!18127 lt!960670)))))))

(declare-fun b!2715840 () Bool)

(assert (=> b!2715840 (= c!438741 (and (<= (- 1) lt!960956) (<= lt!960956 1)))))

(assert (=> b!2715840 (= lt!960956 (- (height!1451 (c!438567 (_1!18127 lt!960670))) (height!1451 (c!438567 lt!960678))))))

(assert (=> b!2715840 (= e!1711811 e!1711812)))

(declare-fun b!2715841 () Bool)

(assert (=> b!2715841 (= e!1711809 call!175086)))

(declare-fun b!2715842 () Bool)

(assert (=> b!2715842 (= e!1711807 call!175088)))

(declare-fun b!2715843 () Bool)

(assert (=> b!2715843 (= e!1711809 call!175086)))

(declare-fun b!2715844 () Bool)

(declare-fun res!1140614 () Bool)

(assert (=> b!2715844 (=> (not res!1140614) (not e!1711808))))

(assert (=> b!2715844 (= res!1140614 (isBalanced!2971 lt!960955))))

(declare-fun b!2715845 () Bool)

(assert (=> b!2715845 (= e!1711804 (isBalanced!2971 (c!438567 (_1!18127 lt!960670))))))

(declare-fun bm!175084 () Bool)

(assert (=> bm!175084 (= call!175087 (height!1451 (ite c!438735 (c!438567 lt!960678) (right!24417 (c!438567 (_1!18127 lt!960670))))))))

(declare-fun b!2715846 () Bool)

(assert (=> b!2715846 (= e!1711808 (= (list!11861 lt!960955) (++!7770 (list!11861 (c!438567 lt!960678)) (list!11861 (c!438567 (_1!18127 lt!960670))))))))

(declare-fun bm!175085 () Bool)

(assert (=> bm!175085 (= call!175082 (height!1451 (ite c!438735 (left!24087 (c!438567 lt!960678)) lt!960957)))))

(assert (= (and d!782070 res!1140613) b!2715845))

(assert (= (and d!782070 c!438740) b!2715828))

(assert (= (and d!782070 (not c!438740)) b!2715837))

(assert (= (and b!2715837 c!438737) b!2715831))

(assert (= (and b!2715837 (not c!438737)) b!2715840))

(assert (= (and b!2715840 c!438741) b!2715827))

(assert (= (and b!2715840 (not c!438741)) b!2715838))

(assert (= (and b!2715838 c!438735) b!2715835))

(assert (= (and b!2715838 (not c!438735)) b!2715829))

(assert (= (and b!2715835 c!438736) b!2715842))

(assert (= (and b!2715835 (not c!438736)) b!2715834))

(assert (= (and b!2715834 c!438738) b!2715832))

(assert (= (and b!2715834 (not c!438738)) b!2715826))

(assert (= (or b!2715832 b!2715826) bm!175079))

(assert (= (or b!2715832 b!2715826) bm!175078))

(assert (= (or b!2715842 b!2715834) bm!175072))

(assert (= (or b!2715842 bm!175079) bm!175080))

(assert (= (and b!2715829 c!438739) b!2715830))

(assert (= (and b!2715829 (not c!438739)) b!2715833))

(assert (= (and b!2715833 c!438734) b!2715843))

(assert (= (and b!2715833 (not c!438734)) b!2715841))

(assert (= (or b!2715843 b!2715841) bm!175075))

(assert (= (or b!2715843 b!2715841) bm!175082))

(assert (= (or b!2715830 b!2715833) bm!175076))

(assert (= (or b!2715830 bm!175075) bm!175081))

(assert (= (or b!2715835 b!2715833) bm!175085))

(assert (= (or b!2715835 b!2715833) bm!175083))

(assert (= (or b!2715834 b!2715829) bm!175084))

(assert (= (or bm!175080 bm!175082) bm!175074))

(assert (= (or bm!175072 bm!175076) bm!175077))

(assert (= (or b!2715834 b!2715829) bm!175071))

(assert (= (or bm!175078 bm!175081) bm!175070))

(assert (= (or b!2715827 bm!175074) bm!175073))

(assert (= (and d!782070 res!1140615) b!2715844))

(assert (= (and b!2715844 res!1140614) b!2715836))

(assert (= (and b!2715836 res!1140616) b!2715839))

(assert (= (and b!2715839 res!1140617) b!2715846))

(declare-fun m!3113591 () Bool)

(assert (=> b!2715836 m!3113591))

(assert (=> b!2715836 m!3112743))

(assert (=> b!2715836 m!3112745))

(assert (=> b!2715836 m!3112743))

(assert (=> b!2715836 m!3112745))

(assert (=> b!2715836 m!3112747))

(declare-fun m!3113593 () Bool)

(assert (=> bm!175071 m!3113593))

(declare-fun m!3113595 () Bool)

(assert (=> bm!175083 m!3113595))

(declare-fun m!3113597 () Bool)

(assert (=> b!2715846 m!3113597))

(assert (=> b!2715846 m!3113095))

(assert (=> b!2715846 m!3113103))

(assert (=> b!2715846 m!3113095))

(assert (=> b!2715846 m!3113103))

(declare-fun m!3113599 () Bool)

(assert (=> b!2715846 m!3113599))

(assert (=> b!2715839 m!3113591))

(assert (=> b!2715839 m!3112743))

(assert (=> b!2715839 m!3112745))

(assert (=> b!2715839 m!3112743))

(assert (=> b!2715839 m!3112745))

(assert (=> b!2715839 m!3112747))

(declare-fun m!3113601 () Bool)

(assert (=> bm!175070 m!3113601))

(declare-fun m!3113603 () Bool)

(assert (=> bm!175077 m!3113603))

(declare-fun m!3113605 () Bool)

(assert (=> b!2715845 m!3113605))

(declare-fun m!3113607 () Bool)

(assert (=> b!2715844 m!3113607))

(assert (=> b!2715840 m!3112745))

(assert (=> b!2715840 m!3112743))

(assert (=> d!782070 m!3112753))

(declare-fun m!3113609 () Bool)

(assert (=> d!782070 m!3113609))

(declare-fun m!3113611 () Bool)

(assert (=> bm!175084 m!3113611))

(declare-fun m!3113613 () Bool)

(assert (=> bm!175085 m!3113613))

(declare-fun m!3113615 () Bool)

(assert (=> bm!175073 m!3113615))

(assert (=> b!2715257 d!782070))

(declare-fun d!782124 () Bool)

(assert (=> d!782124 (= (max!0 (height!1451 (c!438567 lt!960678)) (height!1451 (c!438567 (_1!18127 lt!960670)))) (ite (< (height!1451 (c!438567 lt!960678)) (height!1451 (c!438567 (_1!18127 lt!960670)))) (height!1451 (c!438567 (_1!18127 lt!960670))) (height!1451 (c!438567 lt!960678))))))

(assert (=> b!2715257 d!782124))

(declare-fun d!782126 () Bool)

(assert (=> d!782126 (= (height!1451 (c!438567 (_1!18127 lt!960670))) (ite ((_ is Empty!9810) (c!438567 (_1!18127 lt!960670))) 0 (ite ((_ is Leaf!14950) (c!438567 (_1!18127 lt!960670))) 1 (cheight!10021 (c!438567 (_1!18127 lt!960670))))))))

(assert (=> b!2715257 d!782126))

(declare-fun d!782128 () Bool)

(assert (=> d!782128 (= (height!1451 (c!438567 lt!960678)) (ite ((_ is Empty!9810) (c!438567 lt!960678)) 0 (ite ((_ is Leaf!14950) (c!438567 lt!960678)) 1 (cheight!10021 (c!438567 lt!960678)))))))

(assert (=> b!2715257 d!782128))

(declare-fun d!782130 () Bool)

(assert (=> d!782130 (= (height!1451 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))) (ite ((_ is Empty!9810) (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))) 0 (ite ((_ is Leaf!14950) (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))) 1 (cheight!10021 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))))))))

(assert (=> b!2715257 d!782130))

(declare-fun d!782132 () Bool)

(assert (=> d!782132 (= (list!11856 lt!960852) (list!11860 (c!438566 lt!960852)))))

(declare-fun bs!488120 () Bool)

(assert (= bs!488120 d!782132))

(declare-fun m!3113617 () Bool)

(assert (=> bs!488120 m!3113617))

(assert (=> d!781984 d!782132))

(declare-fun d!782134 () Bool)

(declare-fun c!438742 () Bool)

(assert (=> d!782134 (= c!438742 ((_ is Empty!9810) (c!438567 acc!331)))))

(declare-fun e!1711814 () List!31429)

(assert (=> d!782134 (= (list!11861 (c!438567 acc!331)) e!1711814)))

(declare-fun b!2715849 () Bool)

(declare-fun e!1711815 () List!31429)

(assert (=> b!2715849 (= e!1711815 (list!11862 (xs!12873 (c!438567 acc!331))))))

(declare-fun b!2715848 () Bool)

(assert (=> b!2715848 (= e!1711814 e!1711815)))

(declare-fun c!438743 () Bool)

(assert (=> b!2715848 (= c!438743 ((_ is Leaf!14950) (c!438567 acc!331)))))

(declare-fun b!2715847 () Bool)

(assert (=> b!2715847 (= e!1711814 Nil!31329)))

(declare-fun b!2715850 () Bool)

(assert (=> b!2715850 (= e!1711815 (++!7770 (list!11861 (left!24087 (c!438567 acc!331))) (list!11861 (right!24417 (c!438567 acc!331)))))))

(assert (= (and d!782134 c!438742) b!2715847))

(assert (= (and d!782134 (not c!438742)) b!2715848))

(assert (= (and b!2715848 c!438743) b!2715849))

(assert (= (and b!2715848 (not c!438743)) b!2715850))

(declare-fun m!3113619 () Bool)

(assert (=> b!2715849 m!3113619))

(declare-fun m!3113621 () Bool)

(assert (=> b!2715850 m!3113621))

(declare-fun m!3113623 () Bool)

(assert (=> b!2715850 m!3113623))

(assert (=> b!2715850 m!3113621))

(assert (=> b!2715850 m!3113623))

(declare-fun m!3113625 () Bool)

(assert (=> b!2715850 m!3113625))

(assert (=> d!781812 d!782134))

(declare-fun d!782136 () Bool)

(declare-fun lt!960958 () Int)

(assert (=> d!782136 (= lt!960958 (size!24174 (list!11856 (_2!18127 lt!960879))))))

(assert (=> d!782136 (= lt!960958 (size!24176 (c!438566 (_2!18127 lt!960879))))))

(assert (=> d!782136 (= (size!24171 (_2!18127 lt!960879)) lt!960958)))

(declare-fun bs!488121 () Bool)

(assert (= bs!488121 d!782136))

(assert (=> bs!488121 m!3113195))

(assert (=> bs!488121 m!3113195))

(declare-fun m!3113627 () Bool)

(assert (=> bs!488121 m!3113627))

(declare-fun m!3113629 () Bool)

(assert (=> bs!488121 m!3113629))

(assert (=> b!2715521 d!782136))

(declare-fun d!782138 () Bool)

(declare-fun lt!960959 () Int)

(assert (=> d!782138 (= lt!960959 (size!24174 (list!11856 input!603)))))

(assert (=> d!782138 (= lt!960959 (size!24176 (c!438566 input!603)))))

(assert (=> d!782138 (= (size!24171 input!603) lt!960959)))

(declare-fun bs!488122 () Bool)

(assert (= bs!488122 d!782138))

(assert (=> bs!488122 m!3112377))

(assert (=> bs!488122 m!3112377))

(declare-fun m!3113631 () Bool)

(assert (=> bs!488122 m!3113631))

(declare-fun m!3113633 () Bool)

(assert (=> bs!488122 m!3113633))

(assert (=> b!2715521 d!782138))

(declare-fun d!782140 () Bool)

(declare-fun lt!960960 () Int)

(assert (=> d!782140 (= lt!960960 (size!24174 (list!11856 (_2!18127 lt!960777))))))

(assert (=> d!782140 (= lt!960960 (size!24176 (c!438566 (_2!18127 lt!960777))))))

(assert (=> d!782140 (= (size!24171 (_2!18127 lt!960777)) lt!960960)))

(declare-fun bs!488123 () Bool)

(assert (= bs!488123 d!782140))

(assert (=> bs!488123 m!3112829))

(assert (=> bs!488123 m!3112829))

(declare-fun m!3113635 () Bool)

(assert (=> bs!488123 m!3113635))

(declare-fun m!3113637 () Bool)

(assert (=> bs!488123 m!3113637))

(assert (=> b!2715293 d!782140))

(declare-fun d!782142 () Bool)

(declare-fun lt!960961 () Int)

(assert (=> d!782142 (= lt!960961 (size!24174 (list!11856 (_2!18128 (v!33014 lt!960664)))))))

(assert (=> d!782142 (= lt!960961 (size!24176 (c!438566 (_2!18128 (v!33014 lt!960664)))))))

(assert (=> d!782142 (= (size!24171 (_2!18128 (v!33014 lt!960664))) lt!960961)))

(declare-fun bs!488124 () Bool)

(assert (= bs!488124 d!782142))

(assert (=> bs!488124 m!3112315))

(assert (=> bs!488124 m!3112315))

(declare-fun m!3113639 () Bool)

(assert (=> bs!488124 m!3113639))

(declare-fun m!3113641 () Bool)

(assert (=> bs!488124 m!3113641))

(assert (=> b!2715293 d!782142))

(declare-fun d!782144 () Bool)

(declare-fun lt!960964 () Int)

(assert (=> d!782144 (>= lt!960964 0)))

(declare-fun e!1711818 () Int)

(assert (=> d!782144 (= lt!960964 e!1711818)))

(declare-fun c!438746 () Bool)

(assert (=> d!782144 (= c!438746 ((_ is Nil!31328) lt!960839))))

(assert (=> d!782144 (= (size!24174 lt!960839) lt!960964)))

(declare-fun b!2715855 () Bool)

(assert (=> b!2715855 (= e!1711818 0)))

(declare-fun b!2715856 () Bool)

(assert (=> b!2715856 (= e!1711818 (+ 1 (size!24174 (t!226246 lt!960839))))))

(assert (= (and d!782144 c!438746) b!2715855))

(assert (= (and d!782144 (not c!438746)) b!2715856))

(declare-fun m!3113643 () Bool)

(assert (=> b!2715856 m!3113643))

(assert (=> b!2715454 d!782144))

(declare-fun d!782146 () Bool)

(declare-fun lt!960965 () Int)

(assert (=> d!782146 (>= lt!960965 0)))

(declare-fun e!1711819 () Int)

(assert (=> d!782146 (= lt!960965 e!1711819)))

(declare-fun c!438747 () Bool)

(assert (=> d!782146 (= c!438747 ((_ is Nil!31328) lt!960683))))

(assert (=> d!782146 (= (size!24174 lt!960683) lt!960965)))

(declare-fun b!2715857 () Bool)

(assert (=> b!2715857 (= e!1711819 0)))

(declare-fun b!2715858 () Bool)

(assert (=> b!2715858 (= e!1711819 (+ 1 (size!24174 (t!226246 lt!960683))))))

(assert (= (and d!782146 c!438747) b!2715857))

(assert (= (and d!782146 (not c!438747)) b!2715858))

(declare-fun m!3113645 () Bool)

(assert (=> b!2715858 m!3113645))

(assert (=> b!2715454 d!782146))

(declare-fun d!782148 () Bool)

(declare-fun lt!960966 () Int)

(assert (=> d!782148 (>= lt!960966 0)))

(declare-fun e!1711820 () Int)

(assert (=> d!782148 (= lt!960966 e!1711820)))

(declare-fun c!438748 () Bool)

(assert (=> d!782148 (= c!438748 ((_ is Nil!31328) lt!960668))))

(assert (=> d!782148 (= (size!24174 lt!960668) lt!960966)))

(declare-fun b!2715859 () Bool)

(assert (=> b!2715859 (= e!1711820 0)))

(declare-fun b!2715860 () Bool)

(assert (=> b!2715860 (= e!1711820 (+ 1 (size!24174 (t!226246 lt!960668))))))

(assert (= (and d!782148 c!438748) b!2715859))

(assert (= (and d!782148 (not c!438748)) b!2715860))

(declare-fun m!3113647 () Bool)

(assert (=> b!2715860 m!3113647))

(assert (=> b!2715454 d!782148))

(declare-fun b!2715861 () Bool)

(declare-fun e!1711821 () tuple2!30994)

(declare-fun lt!960967 () Option!6185)

(declare-fun lt!960969 () tuple2!30994)

(assert (=> b!2715861 (= e!1711821 (tuple2!30995 (Cons!31329 (_1!18131 (v!33020 lt!960967)) (_1!18129 lt!960969)) (_2!18129 lt!960969)))))

(assert (=> b!2715861 (= lt!960969 (lexList!1218 thiss!11556 rules!1182 (_2!18131 (v!33020 lt!960967))))))

(declare-fun b!2715862 () Bool)

(assert (=> b!2715862 (= e!1711821 (tuple2!30995 Nil!31329 (_2!18131 (v!33020 lt!960812))))))

(declare-fun d!782150 () Bool)

(declare-fun e!1711822 () Bool)

(assert (=> d!782150 e!1711822))

(declare-fun c!438749 () Bool)

(declare-fun lt!960968 () tuple2!30994)

(assert (=> d!782150 (= c!438749 (> (size!24173 (_1!18129 lt!960968)) 0))))

(assert (=> d!782150 (= lt!960968 e!1711821)))

(declare-fun c!438750 () Bool)

(assert (=> d!782150 (= c!438750 ((_ is Some!6184) lt!960967))))

(assert (=> d!782150 (= lt!960967 (maxPrefix!2366 thiss!11556 rules!1182 (_2!18131 (v!33020 lt!960812))))))

(assert (=> d!782150 (= (lexList!1218 thiss!11556 rules!1182 (_2!18131 (v!33020 lt!960812))) lt!960968)))

(declare-fun b!2715863 () Bool)

(declare-fun e!1711823 () Bool)

(assert (=> b!2715863 (= e!1711822 e!1711823)))

(declare-fun res!1140618 () Bool)

(assert (=> b!2715863 (= res!1140618 (< (size!24174 (_2!18129 lt!960968)) (size!24174 (_2!18131 (v!33020 lt!960812)))))))

(assert (=> b!2715863 (=> (not res!1140618) (not e!1711823))))

(declare-fun b!2715864 () Bool)

(assert (=> b!2715864 (= e!1711823 (not (isEmpty!17862 (_1!18129 lt!960968))))))

(declare-fun b!2715865 () Bool)

(assert (=> b!2715865 (= e!1711822 (= (_2!18129 lt!960968) (_2!18131 (v!33020 lt!960812))))))

(assert (= (and d!782150 c!438750) b!2715861))

(assert (= (and d!782150 (not c!438750)) b!2715862))

(assert (= (and d!782150 c!438749) b!2715863))

(assert (= (and d!782150 (not c!438749)) b!2715865))

(assert (= (and b!2715863 res!1140618) b!2715864))

(declare-fun m!3113649 () Bool)

(assert (=> b!2715861 m!3113649))

(declare-fun m!3113651 () Bool)

(assert (=> d!782150 m!3113651))

(declare-fun m!3113653 () Bool)

(assert (=> d!782150 m!3113653))

(declare-fun m!3113655 () Bool)

(assert (=> b!2715863 m!3113655))

(declare-fun m!3113657 () Bool)

(assert (=> b!2715863 m!3113657))

(declare-fun m!3113659 () Bool)

(assert (=> b!2715864 m!3113659))

(assert (=> b!2715353 d!782150))

(declare-fun d!782152 () Bool)

(assert (=> d!782152 (= (get!9776 lt!960887) (v!33014 lt!960887))))

(assert (=> b!2715553 d!782152))

(declare-fun d!782154 () Bool)

(assert (=> d!782154 (= (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 input!603))) (v!33020 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 input!603))))))

(assert (=> b!2715553 d!782154))

(declare-fun lt!960980 () Option!6185)

(declare-fun d!782156 () Bool)

(assert (=> d!782156 (= lt!960980 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 input!603)))))

(declare-fun e!1711826 () Option!6185)

(assert (=> d!782156 (= lt!960980 e!1711826)))

(declare-fun c!438753 () Bool)

(assert (=> d!782156 (= c!438753 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!960982 () Unit!45356)

(declare-fun lt!960983 () Unit!45356)

(assert (=> d!782156 (= lt!960982 lt!960983)))

(assert (=> d!782156 (isPrefix!2483 (list!11856 input!603) (list!11856 input!603))))

(assert (=> d!782156 (= lt!960983 (lemmaIsPrefixRefl!1609 (list!11856 input!603) (list!11856 input!603)))))

(assert (=> d!782156 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!782156 (= (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 input!603)) lt!960980)))

(declare-fun call!175093 () Option!6185)

(declare-fun bm!175088 () Bool)

(declare-fun maxPrefixOneRuleZipper!178 (LexerInterface!4387 Rule!9382 List!31428) Option!6185)

(assert (=> bm!175088 (= call!175093 (maxPrefixOneRuleZipper!178 thiss!11556 (h!36750 rules!1182) (list!11856 input!603)))))

(declare-fun b!2715870 () Bool)

(assert (=> b!2715870 (= e!1711826 call!175093)))

(declare-fun b!2715871 () Bool)

(declare-fun lt!960984 () Option!6185)

(declare-fun lt!960981 () Option!6185)

(assert (=> b!2715871 (= e!1711826 (ite (and ((_ is None!6184) lt!960984) ((_ is None!6184) lt!960981)) None!6184 (ite ((_ is None!6184) lt!960981) lt!960984 (ite ((_ is None!6184) lt!960984) lt!960981 (ite (>= (size!24166 (_1!18131 (v!33020 lt!960984))) (size!24166 (_1!18131 (v!33020 lt!960981)))) lt!960984 lt!960981)))))))

(assert (=> b!2715871 (= lt!960984 call!175093)))

(assert (=> b!2715871 (= lt!960981 (maxPrefixZipper!470 thiss!11556 (t!226248 rules!1182) (list!11856 input!603)))))

(assert (= (and d!782156 c!438753) b!2715870))

(assert (= (and d!782156 (not c!438753)) b!2715871))

(assert (= (or b!2715870 b!2715871) bm!175088))

(assert (=> d!782156 m!3112377))

(assert (=> d!782156 m!3113305))

(assert (=> d!782156 m!3112377))

(assert (=> d!782156 m!3112377))

(declare-fun m!3113661 () Bool)

(assert (=> d!782156 m!3113661))

(assert (=> d!782156 m!3112377))

(assert (=> d!782156 m!3112377))

(declare-fun m!3113663 () Bool)

(assert (=> d!782156 m!3113663))

(assert (=> d!782156 m!3113171))

(assert (=> bm!175088 m!3112377))

(declare-fun m!3113665 () Bool)

(assert (=> bm!175088 m!3113665))

(assert (=> b!2715871 m!3112377))

(declare-fun m!3113667 () Bool)

(assert (=> b!2715871 m!3113667))

(assert (=> b!2715553 d!782156))

(assert (=> b!2715553 d!782008))

(declare-fun d!782158 () Bool)

(declare-fun c!438754 () Bool)

(assert (=> d!782158 (= c!438754 ((_ is Node!9809) (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664)))))))))

(declare-fun e!1711827 () Bool)

(assert (=> d!782158 (= (inv!42514 (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664)))))) e!1711827)))

(declare-fun b!2715872 () Bool)

(assert (=> b!2715872 (= e!1711827 (inv!42525 (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664)))))))))

(declare-fun b!2715873 () Bool)

(declare-fun e!1711828 () Bool)

(assert (=> b!2715873 (= e!1711827 e!1711828)))

(declare-fun res!1140619 () Bool)

(assert (=> b!2715873 (= res!1140619 (not ((_ is Leaf!14949) (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664))))))))))

(assert (=> b!2715873 (=> res!1140619 e!1711828)))

(declare-fun b!2715874 () Bool)

(assert (=> b!2715874 (= e!1711828 (inv!42526 (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664)))))))))

(assert (= (and d!782158 c!438754) b!2715872))

(assert (= (and d!782158 (not c!438754)) b!2715873))

(assert (= (and b!2715873 (not res!1140619)) b!2715874))

(declare-fun m!3113669 () Bool)

(assert (=> b!2715872 m!3113669))

(declare-fun m!3113671 () Bool)

(assert (=> b!2715874 m!3113671))

(assert (=> b!2715474 d!782158))

(declare-fun d!782160 () Bool)

(declare-fun lt!960987 () Int)

(assert (=> d!782160 (= lt!960987 (size!24173 (list!11857 (_1!18127 lt!960742))))))

(declare-fun size!24178 (Conc!9810) Int)

(assert (=> d!782160 (= lt!960987 (size!24178 (c!438567 (_1!18127 lt!960742))))))

(assert (=> d!782160 (= (size!24170 (_1!18127 lt!960742)) lt!960987)))

(declare-fun bs!488125 () Bool)

(assert (= bs!488125 d!782160))

(assert (=> bs!488125 m!3112607))

(assert (=> bs!488125 m!3112607))

(declare-fun m!3113673 () Bool)

(assert (=> bs!488125 m!3113673))

(declare-fun m!3113675 () Bool)

(assert (=> bs!488125 m!3113675))

(assert (=> d!781816 d!782160))

(declare-fun d!782162 () Bool)

(declare-fun e!1711832 () Bool)

(assert (=> d!782162 e!1711832))

(declare-fun res!1140621 () Bool)

(assert (=> d!782162 (=> (not res!1140621) (not e!1711832))))

(declare-fun lt!960989 () Option!6183)

(assert (=> d!782162 (= res!1140621 (= (isDefined!4893 lt!960989) (isDefined!4894 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 treated!9)))))))

(declare-fun e!1711830 () Option!6183)

(assert (=> d!782162 (= lt!960989 e!1711830)))

(declare-fun c!438755 () Bool)

(assert (=> d!782162 (= c!438755 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!960994 () Unit!45356)

(declare-fun lt!960993 () Unit!45356)

(assert (=> d!782162 (= lt!960994 lt!960993)))

(declare-fun lt!960990 () List!31428)

(declare-fun lt!960991 () List!31428)

(assert (=> d!782162 (isPrefix!2483 lt!960990 lt!960991)))

(assert (=> d!782162 (= lt!960993 (lemmaIsPrefixRefl!1609 lt!960990 lt!960991))))

(assert (=> d!782162 (= lt!960991 (list!11856 treated!9))))

(assert (=> d!782162 (= lt!960990 (list!11856 treated!9))))

(assert (=> d!782162 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!782162 (= (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 treated!9) lt!960989)))

(declare-fun b!2715875 () Bool)

(declare-fun call!175094 () Option!6183)

(assert (=> b!2715875 (= e!1711830 call!175094)))

(declare-fun e!1711834 () Bool)

(declare-fun b!2715876 () Bool)

(assert (=> b!2715876 (= e!1711834 (= (list!11856 (_2!18128 (get!9776 lt!960989))) (_2!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 treated!9))))))))

(declare-fun b!2715877 () Bool)

(declare-fun e!1711829 () Bool)

(declare-fun e!1711831 () Bool)

(assert (=> b!2715877 (= e!1711829 e!1711831)))

(declare-fun res!1140624 () Bool)

(assert (=> b!2715877 (=> (not res!1140624) (not e!1711831))))

(assert (=> b!2715877 (= res!1140624 (= (_1!18128 (get!9776 lt!960989)) (_1!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 treated!9))))))))

(declare-fun b!2715878 () Bool)

(assert (=> b!2715878 (= e!1711832 e!1711829)))

(declare-fun res!1140620 () Bool)

(assert (=> b!2715878 (=> res!1140620 e!1711829)))

(assert (=> b!2715878 (= res!1140620 (not (isDefined!4893 lt!960989)))))

(declare-fun b!2715879 () Bool)

(declare-fun e!1711833 () Bool)

(assert (=> b!2715879 (= e!1711833 e!1711834)))

(declare-fun res!1140625 () Bool)

(assert (=> b!2715879 (=> (not res!1140625) (not e!1711834))))

(assert (=> b!2715879 (= res!1140625 (= (_1!18128 (get!9776 lt!960989)) (_1!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 treated!9))))))))

(declare-fun b!2715880 () Bool)

(declare-fun res!1140622 () Bool)

(assert (=> b!2715880 (=> (not res!1140622) (not e!1711832))))

(assert (=> b!2715880 (= res!1140622 e!1711833)))

(declare-fun res!1140623 () Bool)

(assert (=> b!2715880 (=> res!1140623 e!1711833)))

(assert (=> b!2715880 (= res!1140623 (not (isDefined!4893 lt!960989)))))

(declare-fun b!2715881 () Bool)

(declare-fun lt!960988 () Option!6183)

(declare-fun lt!960992 () Option!6183)

(assert (=> b!2715881 (= e!1711830 (ite (and ((_ is None!6182) lt!960988) ((_ is None!6182) lt!960992)) None!6182 (ite ((_ is None!6182) lt!960992) lt!960988 (ite ((_ is None!6182) lt!960988) lt!960992 (ite (>= (size!24166 (_1!18128 (v!33014 lt!960988))) (size!24166 (_1!18128 (v!33014 lt!960992)))) lt!960988 lt!960992)))))))

(assert (=> b!2715881 (= lt!960988 call!175094)))

(assert (=> b!2715881 (= lt!960992 (maxPrefixZipperSequence!1035 thiss!11556 (t!226248 rules!1182) treated!9))))

(declare-fun bm!175089 () Bool)

(assert (=> bm!175089 (= call!175094 (maxPrefixOneRuleZipperSequence!479 thiss!11556 (h!36750 rules!1182) treated!9))))

(declare-fun b!2715882 () Bool)

(assert (=> b!2715882 (= e!1711831 (= (list!11856 (_2!18128 (get!9776 lt!960989))) (_2!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 treated!9))))))))

(assert (= (and d!782162 c!438755) b!2715875))

(assert (= (and d!782162 (not c!438755)) b!2715881))

(assert (= (or b!2715875 b!2715881) bm!175089))

(assert (= (and d!782162 res!1140621) b!2715880))

(assert (= (and b!2715880 (not res!1140623)) b!2715879))

(assert (= (and b!2715879 res!1140625) b!2715876))

(assert (= (and b!2715880 res!1140622) b!2715878))

(assert (= (and b!2715878 (not res!1140620)) b!2715877))

(assert (= (and b!2715877 res!1140624) b!2715882))

(declare-fun m!3113677 () Bool)

(assert (=> b!2715876 m!3113677))

(declare-fun m!3113679 () Bool)

(assert (=> b!2715876 m!3113679))

(declare-fun m!3113681 () Bool)

(assert (=> b!2715876 m!3113681))

(assert (=> b!2715876 m!3112379))

(assert (=> b!2715876 m!3112379))

(assert (=> b!2715876 m!3113677))

(declare-fun m!3113683 () Bool)

(assert (=> b!2715876 m!3113683))

(declare-fun m!3113685 () Bool)

(assert (=> b!2715880 m!3113685))

(assert (=> b!2715879 m!3113683))

(assert (=> b!2715879 m!3112379))

(assert (=> b!2715879 m!3112379))

(assert (=> b!2715879 m!3113677))

(assert (=> b!2715879 m!3113677))

(assert (=> b!2715879 m!3113679))

(declare-fun m!3113687 () Bool)

(assert (=> bm!175089 m!3113687))

(declare-fun m!3113689 () Bool)

(assert (=> b!2715881 m!3113689))

(assert (=> d!782162 m!3113685))

(assert (=> d!782162 m!3113677))

(declare-fun m!3113691 () Bool)

(assert (=> d!782162 m!3113691))

(declare-fun m!3113693 () Bool)

(assert (=> d!782162 m!3113693))

(assert (=> d!782162 m!3113171))

(assert (=> d!782162 m!3112379))

(assert (=> d!782162 m!3112379))

(assert (=> d!782162 m!3113677))

(declare-fun m!3113695 () Bool)

(assert (=> d!782162 m!3113695))

(declare-fun m!3113697 () Bool)

(assert (=> b!2715882 m!3113697))

(declare-fun m!3113699 () Bool)

(assert (=> b!2715882 m!3113699))

(assert (=> b!2715882 m!3113681))

(assert (=> b!2715882 m!3112379))

(assert (=> b!2715882 m!3112379))

(assert (=> b!2715882 m!3113697))

(assert (=> b!2715882 m!3113683))

(assert (=> b!2715878 m!3113685))

(assert (=> b!2715877 m!3113683))

(assert (=> b!2715877 m!3112379))

(assert (=> b!2715877 m!3112379))

(assert (=> b!2715877 m!3113697))

(assert (=> b!2715877 m!3113697))

(assert (=> b!2715877 m!3113699))

(assert (=> d!781816 d!782162))

(declare-fun d!782164 () Bool)

(declare-fun lt!960995 () Int)

(assert (=> d!782164 (= lt!960995 (size!24174 (list!11856 (_2!18127 lt!960883))))))

(assert (=> d!782164 (= lt!960995 (size!24176 (c!438566 (_2!18127 lt!960883))))))

(assert (=> d!782164 (= (size!24171 (_2!18127 lt!960883)) lt!960995)))

(declare-fun bs!488126 () Bool)

(assert (= bs!488126 d!782164))

(assert (=> bs!488126 m!3113235))

(assert (=> bs!488126 m!3113235))

(declare-fun m!3113701 () Bool)

(assert (=> bs!488126 m!3113701))

(declare-fun m!3113703 () Bool)

(assert (=> bs!488126 m!3113703))

(assert (=> b!2715532 d!782164))

(declare-fun d!782166 () Bool)

(declare-fun lt!960996 () Int)

(assert (=> d!782166 (= lt!960996 (size!24174 (list!11856 totalInput!328)))))

(assert (=> d!782166 (= lt!960996 (size!24176 (c!438566 totalInput!328)))))

(assert (=> d!782166 (= (size!24171 totalInput!328) lt!960996)))

(declare-fun bs!488127 () Bool)

(assert (= bs!488127 d!782166))

(assert (=> bs!488127 m!3112375))

(assert (=> bs!488127 m!3112375))

(declare-fun m!3113705 () Bool)

(assert (=> bs!488127 m!3113705))

(declare-fun m!3113707 () Bool)

(assert (=> bs!488127 m!3113707))

(assert (=> b!2715532 d!782166))

(declare-fun d!782168 () Bool)

(declare-fun c!438760 () Bool)

(assert (=> d!782168 (= c!438760 ((_ is Empty!9809) (c!438566 treated!9)))))

(declare-fun e!1711839 () List!31428)

(assert (=> d!782168 (= (list!11860 (c!438566 treated!9)) e!1711839)))

(declare-fun b!2715894 () Bool)

(declare-fun e!1711840 () List!31428)

(assert (=> b!2715894 (= e!1711840 (++!7768 (list!11860 (left!24086 (c!438566 treated!9))) (list!11860 (right!24416 (c!438566 treated!9)))))))

(declare-fun b!2715891 () Bool)

(assert (=> b!2715891 (= e!1711839 Nil!31328)))

(declare-fun b!2715893 () Bool)

(declare-fun list!11864 (IArray!19623) List!31428)

(assert (=> b!2715893 (= e!1711840 (list!11864 (xs!12872 (c!438566 treated!9))))))

(declare-fun b!2715892 () Bool)

(assert (=> b!2715892 (= e!1711839 e!1711840)))

(declare-fun c!438761 () Bool)

(assert (=> b!2715892 (= c!438761 ((_ is Leaf!14949) (c!438566 treated!9)))))

(assert (= (and d!782168 c!438760) b!2715891))

(assert (= (and d!782168 (not c!438760)) b!2715892))

(assert (= (and b!2715892 c!438761) b!2715893))

(assert (= (and b!2715892 (not c!438761)) b!2715894))

(declare-fun m!3113709 () Bool)

(assert (=> b!2715894 m!3113709))

(declare-fun m!3113711 () Bool)

(assert (=> b!2715894 m!3113711))

(assert (=> b!2715894 m!3113709))

(assert (=> b!2715894 m!3113711))

(declare-fun m!3113713 () Bool)

(assert (=> b!2715894 m!3113713))

(declare-fun m!3113715 () Bool)

(assert (=> b!2715893 m!3113715))

(assert (=> d!782010 d!782168))

(declare-fun d!782170 () Bool)

(declare-fun c!438764 () Bool)

(assert (=> d!782170 (= c!438764 ((_ is Nil!31328) lt!960817))))

(declare-fun e!1711843 () (InoxSet C!16044))

(assert (=> d!782170 (= (content!4438 lt!960817) e!1711843)))

(declare-fun b!2715899 () Bool)

(assert (=> b!2715899 (= e!1711843 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2715900 () Bool)

(assert (=> b!2715900 (= e!1711843 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960817) true) (content!4438 (t!226246 lt!960817))))))

(assert (= (and d!782170 c!438764) b!2715899))

(assert (= (and d!782170 (not c!438764)) b!2715900))

(declare-fun m!3113717 () Bool)

(assert (=> b!2715900 m!3113717))

(declare-fun m!3113719 () Bool)

(assert (=> b!2715900 m!3113719))

(assert (=> d!781944 d!782170))

(declare-fun d!782172 () Bool)

(declare-fun c!438765 () Bool)

(assert (=> d!782172 (= c!438765 ((_ is Nil!31328) (list!11856 lt!960675)))))

(declare-fun e!1711844 () (InoxSet C!16044))

(assert (=> d!782172 (= (content!4438 (list!11856 lt!960675)) e!1711844)))

(declare-fun b!2715901 () Bool)

(assert (=> b!2715901 (= e!1711844 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2715902 () Bool)

(assert (=> b!2715902 (= e!1711844 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 (list!11856 lt!960675)) true) (content!4438 (t!226246 (list!11856 lt!960675)))))))

(assert (= (and d!782172 c!438765) b!2715901))

(assert (= (and d!782172 (not c!438765)) b!2715902))

(declare-fun m!3113721 () Bool)

(assert (=> b!2715902 m!3113721))

(declare-fun m!3113723 () Bool)

(assert (=> b!2715902 m!3113723))

(assert (=> d!781944 d!782172))

(declare-fun d!782174 () Bool)

(declare-fun c!438766 () Bool)

(assert (=> d!782174 (= c!438766 ((_ is Nil!31328) lt!960680))))

(declare-fun e!1711845 () (InoxSet C!16044))

(assert (=> d!782174 (= (content!4438 lt!960680) e!1711845)))

(declare-fun b!2715903 () Bool)

(assert (=> b!2715903 (= e!1711845 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2715904 () Bool)

(assert (=> b!2715904 (= e!1711845 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960680) true) (content!4438 (t!226246 lt!960680))))))

(assert (= (and d!782174 c!438766) b!2715903))

(assert (= (and d!782174 (not c!438766)) b!2715904))

(declare-fun m!3113725 () Bool)

(assert (=> b!2715904 m!3113725))

(declare-fun m!3113727 () Bool)

(assert (=> b!2715904 m!3113727))

(assert (=> d!781944 d!782174))

(declare-fun d!782176 () Bool)

(assert (=> d!782176 (= (list!11856 (_2!18127 lt!960846)) (list!11860 (c!438566 (_2!18127 lt!960846))))))

(declare-fun bs!488128 () Bool)

(assert (= bs!488128 d!782176))

(declare-fun m!3113729 () Bool)

(assert (=> bs!488128 m!3113729))

(assert (=> b!2715468 d!782176))

(declare-fun b!2715905 () Bool)

(declare-fun e!1711846 () tuple2!30994)

(declare-fun lt!960997 () Option!6185)

(declare-fun lt!960999 () tuple2!30994)

(assert (=> b!2715905 (= e!1711846 (tuple2!30995 (Cons!31329 (_1!18131 (v!33020 lt!960997)) (_1!18129 lt!960999)) (_2!18129 lt!960999)))))

(assert (=> b!2715905 (= lt!960999 (lexList!1218 thiss!11556 rules!1182 (_2!18131 (v!33020 lt!960997))))))

(declare-fun b!2715906 () Bool)

(assert (=> b!2715906 (= e!1711846 (tuple2!30995 Nil!31329 (list!11856 lt!960675)))))

(declare-fun d!782178 () Bool)

(declare-fun e!1711847 () Bool)

(assert (=> d!782178 e!1711847))

(declare-fun c!438767 () Bool)

(declare-fun lt!960998 () tuple2!30994)

(assert (=> d!782178 (= c!438767 (> (size!24173 (_1!18129 lt!960998)) 0))))

(assert (=> d!782178 (= lt!960998 e!1711846)))

(declare-fun c!438768 () Bool)

(assert (=> d!782178 (= c!438768 ((_ is Some!6184) lt!960997))))

(assert (=> d!782178 (= lt!960997 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 lt!960675)))))

(assert (=> d!782178 (= (lexList!1218 thiss!11556 rules!1182 (list!11856 lt!960675)) lt!960998)))

(declare-fun b!2715907 () Bool)

(declare-fun e!1711848 () Bool)

(assert (=> b!2715907 (= e!1711847 e!1711848)))

(declare-fun res!1140626 () Bool)

(assert (=> b!2715907 (= res!1140626 (< (size!24174 (_2!18129 lt!960998)) (size!24174 (list!11856 lt!960675))))))

(assert (=> b!2715907 (=> (not res!1140626) (not e!1711848))))

(declare-fun b!2715908 () Bool)

(assert (=> b!2715908 (= e!1711848 (not (isEmpty!17862 (_1!18129 lt!960998))))))

(declare-fun b!2715909 () Bool)

(assert (=> b!2715909 (= e!1711847 (= (_2!18129 lt!960998) (list!11856 lt!960675)))))

(assert (= (and d!782178 c!438768) b!2715905))

(assert (= (and d!782178 (not c!438768)) b!2715906))

(assert (= (and d!782178 c!438767) b!2715907))

(assert (= (and d!782178 (not c!438767)) b!2715909))

(assert (= (and b!2715907 res!1140626) b!2715908))

(declare-fun m!3113731 () Bool)

(assert (=> b!2715905 m!3113731))

(declare-fun m!3113733 () Bool)

(assert (=> d!782178 m!3113733))

(assert (=> d!782178 m!3112299))

(assert (=> d!782178 m!3113175))

(declare-fun m!3113735 () Bool)

(assert (=> b!2715907 m!3113735))

(assert (=> b!2715907 m!3112299))

(assert (=> b!2715907 m!3112937))

(declare-fun m!3113737 () Bool)

(assert (=> b!2715908 m!3113737))

(assert (=> b!2715468 d!782178))

(assert (=> b!2715468 d!781972))

(assert (=> d!781982 d!781916))

(assert (=> d!781982 d!781968))

(declare-fun e!1711849 () List!31428)

(declare-fun b!2715911 () Bool)

(assert (=> b!2715911 (= e!1711849 (Cons!31328 (h!36748 (++!7768 lt!960683 lt!960668)) (++!7768 (t!226246 (++!7768 lt!960683 lt!960668)) lt!960680)))))

(declare-fun b!2715912 () Bool)

(declare-fun res!1140627 () Bool)

(declare-fun e!1711850 () Bool)

(assert (=> b!2715912 (=> (not res!1140627) (not e!1711850))))

(declare-fun lt!961000 () List!31428)

(assert (=> b!2715912 (= res!1140627 (= (size!24174 lt!961000) (+ (size!24174 (++!7768 lt!960683 lt!960668)) (size!24174 lt!960680))))))

(declare-fun b!2715913 () Bool)

(assert (=> b!2715913 (= e!1711850 (or (not (= lt!960680 Nil!31328)) (= lt!961000 (++!7768 lt!960683 lt!960668))))))

(declare-fun d!782180 () Bool)

(assert (=> d!782180 e!1711850))

(declare-fun res!1140628 () Bool)

(assert (=> d!782180 (=> (not res!1140628) (not e!1711850))))

(assert (=> d!782180 (= res!1140628 (= (content!4438 lt!961000) ((_ map or) (content!4438 (++!7768 lt!960683 lt!960668)) (content!4438 lt!960680))))))

(assert (=> d!782180 (= lt!961000 e!1711849)))

(declare-fun c!438769 () Bool)

(assert (=> d!782180 (= c!438769 ((_ is Nil!31328) (++!7768 lt!960683 lt!960668)))))

(assert (=> d!782180 (= (++!7768 (++!7768 lt!960683 lt!960668) lt!960680) lt!961000)))

(declare-fun b!2715910 () Bool)

(assert (=> b!2715910 (= e!1711849 lt!960680)))

(assert (= (and d!782180 c!438769) b!2715910))

(assert (= (and d!782180 (not c!438769)) b!2715911))

(assert (= (and d!782180 res!1140628) b!2715912))

(assert (= (and b!2715912 res!1140627) b!2715913))

(declare-fun m!3113739 () Bool)

(assert (=> b!2715911 m!3113739))

(declare-fun m!3113741 () Bool)

(assert (=> b!2715912 m!3113741))

(assert (=> b!2715912 m!3112297))

(declare-fun m!3113743 () Bool)

(assert (=> b!2715912 m!3113743))

(assert (=> b!2715912 m!3112793))

(declare-fun m!3113745 () Bool)

(assert (=> d!782180 m!3113745))

(assert (=> d!782180 m!3112297))

(declare-fun m!3113747 () Bool)

(assert (=> d!782180 m!3113747))

(assert (=> d!782180 m!3112799))

(assert (=> d!781982 d!782180))

(assert (=> d!781982 d!781918))

(declare-fun d!782182 () Bool)

(assert (=> d!782182 (= (++!7768 (++!7768 lt!960683 lt!960668) lt!960680) (++!7768 lt!960683 (++!7768 lt!960668 lt!960680)))))

(assert (=> d!782182 true))

(declare-fun _$52!1427 () Unit!45356)

(assert (=> d!782182 (= (choose!15970 lt!960683 lt!960668 lt!960680) _$52!1427)))

(declare-fun bs!488129 () Bool)

(assert (= bs!488129 d!782182))

(assert (=> bs!488129 m!3112297))

(assert (=> bs!488129 m!3112297))

(assert (=> bs!488129 m!3113125))

(assert (=> bs!488129 m!3112317))

(assert (=> bs!488129 m!3112317))

(assert (=> bs!488129 m!3112319))

(assert (=> d!781982 d!782182))

(declare-fun d!782184 () Bool)

(assert (=> d!782184 (= (list!11856 (_2!18127 lt!960879)) (list!11860 (c!438566 (_2!18127 lt!960879))))))

(declare-fun bs!488130 () Bool)

(assert (= bs!488130 d!782184))

(declare-fun m!3113749 () Bool)

(assert (=> bs!488130 m!3113749))

(assert (=> b!2715525 d!782184))

(declare-fun b!2715914 () Bool)

(declare-fun e!1711851 () tuple2!30994)

(declare-fun lt!961001 () Option!6185)

(declare-fun lt!961003 () tuple2!30994)

(assert (=> b!2715914 (= e!1711851 (tuple2!30995 (Cons!31329 (_1!18131 (v!33020 lt!961001)) (_1!18129 lt!961003)) (_2!18129 lt!961003)))))

(assert (=> b!2715914 (= lt!961003 (lexList!1218 thiss!11556 rules!1182 (_2!18131 (v!33020 lt!961001))))))

(declare-fun b!2715915 () Bool)

(assert (=> b!2715915 (= e!1711851 (tuple2!30995 Nil!31329 (list!11856 input!603)))))

(declare-fun d!782186 () Bool)

(declare-fun e!1711852 () Bool)

(assert (=> d!782186 e!1711852))

(declare-fun c!438770 () Bool)

(declare-fun lt!961002 () tuple2!30994)

(assert (=> d!782186 (= c!438770 (> (size!24173 (_1!18129 lt!961002)) 0))))

(assert (=> d!782186 (= lt!961002 e!1711851)))

(declare-fun c!438771 () Bool)

(assert (=> d!782186 (= c!438771 ((_ is Some!6184) lt!961001))))

(assert (=> d!782186 (= lt!961001 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 input!603)))))

(assert (=> d!782186 (= (lexList!1218 thiss!11556 rules!1182 (list!11856 input!603)) lt!961002)))

(declare-fun b!2715916 () Bool)

(declare-fun e!1711853 () Bool)

(assert (=> b!2715916 (= e!1711852 e!1711853)))

(declare-fun res!1140629 () Bool)

(assert (=> b!2715916 (= res!1140629 (< (size!24174 (_2!18129 lt!961002)) (size!24174 (list!11856 input!603))))))

(assert (=> b!2715916 (=> (not res!1140629) (not e!1711853))))

(declare-fun b!2715917 () Bool)

(assert (=> b!2715917 (= e!1711853 (not (isEmpty!17862 (_1!18129 lt!961002))))))

(declare-fun b!2715918 () Bool)

(assert (=> b!2715918 (= e!1711852 (= (_2!18129 lt!961002) (list!11856 input!603)))))

(assert (= (and d!782186 c!438771) b!2715914))

(assert (= (and d!782186 (not c!438771)) b!2715915))

(assert (= (and d!782186 c!438770) b!2715916))

(assert (= (and d!782186 (not c!438770)) b!2715918))

(assert (= (and b!2715916 res!1140629) b!2715917))

(declare-fun m!3113751 () Bool)

(assert (=> b!2715914 m!3113751))

(declare-fun m!3113753 () Bool)

(assert (=> d!782186 m!3113753))

(assert (=> d!782186 m!3112377))

(assert (=> d!782186 m!3113305))

(declare-fun m!3113755 () Bool)

(assert (=> b!2715916 m!3113755))

(assert (=> b!2715916 m!3112377))

(assert (=> b!2715916 m!3113631))

(declare-fun m!3113757 () Bool)

(assert (=> b!2715917 m!3113757))

(assert (=> b!2715525 d!782186))

(assert (=> b!2715525 d!782008))

(declare-fun b!2715937 () Bool)

(declare-fun e!1711878 () Bool)

(declare-fun e!1711873 () Bool)

(assert (=> b!2715937 (= e!1711878 e!1711873)))

(declare-fun res!1140648 () Bool)

(assert (=> b!2715937 (=> (not res!1140648) (not e!1711873))))

(declare-fun appendAssoc!194 (List!31429 List!31429 List!31429) Bool)

(assert (=> b!2715937 (= res!1140648 (appendAssoc!194 (list!11861 (c!438567 acc!331)) (list!11861 (left!24087 (left!24087 (c!438567 (_1!18127 lt!960665))))) (list!11861 (right!24417 (left!24087 (c!438567 (_1!18127 lt!960665)))))))))

(declare-fun b!2715938 () Bool)

(declare-fun e!1711876 () Bool)

(declare-fun e!1711875 () Bool)

(assert (=> b!2715938 (= e!1711876 e!1711875)))

(declare-fun res!1140655 () Bool)

(assert (=> b!2715938 (=> res!1140655 e!1711875)))

(assert (=> b!2715938 (= res!1140655 (not ((_ is Node!9810) (right!24417 (c!438567 acc!331)))))))

(declare-fun b!2715939 () Bool)

(declare-fun e!1711874 () Bool)

(assert (=> b!2715939 (= e!1711875 e!1711874)))

(declare-fun res!1140652 () Bool)

(assert (=> b!2715939 (=> (not res!1140652) (not e!1711874))))

(assert (=> b!2715939 (= res!1140652 (appendAssoc!194 (list!11861 (left!24087 (right!24417 (c!438567 acc!331)))) (list!11861 (right!24417 (right!24417 (c!438567 acc!331)))) (list!11861 (c!438567 (_1!18127 lt!960665)))))))

(declare-fun b!2715940 () Bool)

(assert (=> b!2715940 (= e!1711874 (appendAssoc!194 (list!11861 (left!24087 (c!438567 acc!331))) (list!11861 (left!24087 (right!24417 (c!438567 acc!331)))) (++!7770 (list!11861 (right!24417 (right!24417 (c!438567 acc!331)))) (list!11861 (c!438567 (_1!18127 lt!960665))))))))

(declare-fun b!2715941 () Bool)

(declare-fun e!1711872 () Bool)

(assert (=> b!2715941 (= e!1711872 e!1711876)))

(declare-fun res!1140650 () Bool)

(assert (=> b!2715941 (=> (not res!1140650) (not e!1711876))))

(assert (=> b!2715941 (= res!1140650 (appendAssoc!194 (list!11861 (left!24087 (c!438567 acc!331))) (list!11861 (right!24417 (c!438567 acc!331))) (list!11861 (c!438567 (_1!18127 lt!960665)))))))

(declare-fun d!782188 () Bool)

(declare-fun e!1711880 () Bool)

(assert (=> d!782188 e!1711880))

(declare-fun res!1140649 () Bool)

(assert (=> d!782188 (=> (not res!1140649) (not e!1711880))))

(assert (=> d!782188 (= res!1140649 e!1711872)))

(declare-fun res!1140653 () Bool)

(assert (=> d!782188 (=> res!1140653 e!1711872)))

(assert (=> d!782188 (= res!1140653 (not ((_ is Node!9810) (c!438567 acc!331))))))

(assert (=> d!782188 (= (appendAssocInst!688 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665))) true)))

(declare-fun b!2715942 () Bool)

(declare-fun e!1711879 () Bool)

(assert (=> b!2715942 (= e!1711880 e!1711879)))

(declare-fun res!1140651 () Bool)

(assert (=> b!2715942 (=> res!1140651 e!1711879)))

(assert (=> b!2715942 (= res!1140651 (not ((_ is Node!9810) (c!438567 (_1!18127 lt!960665)))))))

(declare-fun b!2715943 () Bool)

(declare-fun e!1711877 () Bool)

(assert (=> b!2715943 (= e!1711879 e!1711877)))

(declare-fun res!1140656 () Bool)

(assert (=> b!2715943 (=> (not res!1140656) (not e!1711877))))

(assert (=> b!2715943 (= res!1140656 (appendAssoc!194 (list!11861 (c!438567 acc!331)) (list!11861 (left!24087 (c!438567 (_1!18127 lt!960665)))) (list!11861 (right!24417 (c!438567 (_1!18127 lt!960665))))))))

(declare-fun b!2715944 () Bool)

(assert (=> b!2715944 (= e!1711873 (appendAssoc!194 (++!7770 (list!11861 (c!438567 acc!331)) (list!11861 (left!24087 (left!24087 (c!438567 (_1!18127 lt!960665)))))) (list!11861 (right!24417 (left!24087 (c!438567 (_1!18127 lt!960665))))) (list!11861 (right!24417 (c!438567 (_1!18127 lt!960665))))))))

(declare-fun b!2715945 () Bool)

(assert (=> b!2715945 (= e!1711877 e!1711878)))

(declare-fun res!1140654 () Bool)

(assert (=> b!2715945 (=> res!1140654 e!1711878)))

(assert (=> b!2715945 (= res!1140654 (not ((_ is Node!9810) (left!24087 (c!438567 (_1!18127 lt!960665))))))))

(assert (= (and d!782188 (not res!1140653)) b!2715941))

(assert (= (and b!2715941 res!1140650) b!2715938))

(assert (= (and b!2715938 (not res!1140655)) b!2715939))

(assert (= (and b!2715939 res!1140652) b!2715940))

(assert (= (and d!782188 res!1140649) b!2715942))

(assert (= (and b!2715942 (not res!1140651)) b!2715943))

(assert (= (and b!2715943 res!1140656) b!2715945))

(assert (= (and b!2715945 (not res!1140654)) b!2715937))

(assert (= (and b!2715937 res!1140648) b!2715944))

(assert (=> b!2715944 m!3112417))

(assert (=> b!2715944 m!3112417))

(declare-fun m!3113759 () Bool)

(assert (=> b!2715944 m!3113759))

(declare-fun m!3113761 () Bool)

(assert (=> b!2715944 m!3113761))

(declare-fun m!3113763 () Bool)

(assert (=> b!2715944 m!3113763))

(assert (=> b!2715944 m!3113761))

(declare-fun m!3113765 () Bool)

(assert (=> b!2715944 m!3113765))

(assert (=> b!2715944 m!3113763))

(declare-fun m!3113767 () Bool)

(assert (=> b!2715944 m!3113767))

(assert (=> b!2715944 m!3113759))

(assert (=> b!2715944 m!3113765))

(declare-fun m!3113769 () Bool)

(assert (=> b!2715939 m!3113769))

(declare-fun m!3113771 () Bool)

(assert (=> b!2715939 m!3113771))

(declare-fun m!3113773 () Bool)

(assert (=> b!2715939 m!3113773))

(assert (=> b!2715939 m!3113769))

(assert (=> b!2715939 m!3113771))

(assert (=> b!2715939 m!3113773))

(declare-fun m!3113775 () Bool)

(assert (=> b!2715939 m!3113775))

(assert (=> b!2715943 m!3112417))

(declare-fun m!3113777 () Bool)

(assert (=> b!2715943 m!3113777))

(assert (=> b!2715943 m!3113763))

(assert (=> b!2715943 m!3112417))

(assert (=> b!2715943 m!3113777))

(assert (=> b!2715943 m!3113763))

(declare-fun m!3113779 () Bool)

(assert (=> b!2715943 m!3113779))

(assert (=> b!2715940 m!3113771))

(assert (=> b!2715940 m!3113773))

(declare-fun m!3113781 () Bool)

(assert (=> b!2715940 m!3113781))

(assert (=> b!2715940 m!3113773))

(assert (=> b!2715940 m!3113771))

(assert (=> b!2715940 m!3113769))

(assert (=> b!2715940 m!3113621))

(assert (=> b!2715940 m!3113769))

(assert (=> b!2715940 m!3113781))

(declare-fun m!3113783 () Bool)

(assert (=> b!2715940 m!3113783))

(assert (=> b!2715940 m!3113621))

(assert (=> b!2715937 m!3112417))

(assert (=> b!2715937 m!3113759))

(assert (=> b!2715937 m!3113765))

(assert (=> b!2715937 m!3112417))

(assert (=> b!2715937 m!3113759))

(assert (=> b!2715937 m!3113765))

(declare-fun m!3113785 () Bool)

(assert (=> b!2715937 m!3113785))

(assert (=> b!2715941 m!3113621))

(assert (=> b!2715941 m!3113623))

(assert (=> b!2715941 m!3113773))

(assert (=> b!2715941 m!3113621))

(assert (=> b!2715941 m!3113623))

(assert (=> b!2715941 m!3113773))

(declare-fun m!3113787 () Bool)

(assert (=> b!2715941 m!3113787))

(assert (=> d!781994 d!782188))

(declare-fun b!2715946 () Bool)

(declare-fun e!1711887 () Conc!9810)

(declare-fun call!175109 () Conc!9810)

(assert (=> b!2715946 (= e!1711887 call!175109)))

(declare-fun b!2715947 () Bool)

(declare-fun e!1711889 () Conc!9810)

(declare-fun call!175095 () Conc!9810)

(assert (=> b!2715947 (= e!1711889 call!175095)))

(declare-fun call!175096 () Conc!9810)

(declare-fun c!438773 () Bool)

(declare-fun call!175105 () Conc!9810)

(declare-fun c!438777 () Bool)

(declare-fun lt!961004 () Conc!9810)

(declare-fun bm!175090 () Bool)

(declare-fun c!438772 () Bool)

(declare-fun c!438776 () Bool)

(declare-fun call!175110 () Conc!9810)

(declare-fun lt!961007 () Conc!9810)

(assert (=> bm!175090 (= call!175105 (<>!252 (ite c!438773 (ite c!438776 (left!24087 (c!438567 acc!331)) call!175096) (ite c!438777 call!175110 (ite c!438772 lt!961007 (right!24417 (left!24087 (c!438567 (_1!18127 lt!960665))))))) (ite c!438773 (ite c!438776 call!175096 lt!961004) (ite c!438777 (right!24417 (c!438567 (_1!18127 lt!960665))) (ite c!438772 (right!24417 (left!24087 (c!438567 (_1!18127 lt!960665)))) (right!24417 (c!438567 (_1!18127 lt!960665))))))))))

(declare-fun bm!175091 () Bool)

(declare-fun call!175098 () Int)

(assert (=> bm!175091 (= call!175098 (height!1451 (ite c!438773 lt!961004 (left!24087 (c!438567 (_1!18127 lt!960665))))))))

(declare-fun bm!175092 () Bool)

(declare-fun call!175100 () Conc!9810)

(declare-fun call!175097 () Conc!9810)

(assert (=> bm!175092 (= call!175100 call!175097)))

(declare-fun b!2715948 () Bool)

(declare-fun e!1711890 () Conc!9810)

(assert (=> b!2715948 (= e!1711890 (c!438567 (_1!18127 lt!960665)))))

(declare-fun c!438774 () Bool)

(declare-fun bm!175093 () Bool)

(declare-fun call!175099 () Conc!9810)

(declare-fun c!438779 () Bool)

(assert (=> bm!175093 (= call!175095 (<>!252 (ite c!438779 (c!438567 acc!331) (ite c!438773 (ite c!438774 (left!24087 (c!438567 acc!331)) (ite c!438776 (left!24087 (right!24417 (c!438567 acc!331))) (left!24087 (c!438567 acc!331)))) (ite c!438772 call!175099 lt!961007))) (ite c!438779 (c!438567 (_1!18127 lt!960665)) (ite c!438773 (ite c!438774 call!175100 (ite c!438776 lt!961004 (left!24087 (right!24417 (c!438567 acc!331))))) (ite c!438772 (right!24417 (c!438567 (_1!18127 lt!960665))) call!175099)))))))

(declare-fun b!2715949 () Bool)

(declare-fun call!175107 () Int)

(assert (=> b!2715949 (= c!438777 (>= call!175107 call!175098))))

(declare-fun e!1711883 () Conc!9810)

(declare-fun e!1711882 () Conc!9810)

(assert (=> b!2715949 (= e!1711883 e!1711882)))

(declare-fun bm!175094 () Bool)

(declare-fun call!175103 () Conc!9810)

(assert (=> bm!175094 (= call!175103 call!175095)))

(declare-fun b!2715950 () Bool)

(declare-fun call!175101 () Conc!9810)

(assert (=> b!2715950 (= e!1711882 call!175101)))

(declare-fun b!2715951 () Bool)

(declare-fun e!1711888 () Conc!9810)

(assert (=> b!2715951 (= e!1711888 (c!438567 acc!331))))

(declare-fun b!2715952 () Bool)

(assert (=> b!2715952 (= e!1711887 call!175109)))

(declare-fun b!2715953 () Bool)

(declare-fun e!1711886 () Conc!9810)

(assert (=> b!2715953 (= e!1711882 e!1711886)))

(assert (=> b!2715953 (= lt!961007 call!175110)))

(declare-fun call!175102 () Int)

(declare-fun call!175104 () Int)

(assert (=> b!2715953 (= c!438772 (= call!175102 (- call!175104 3)))))

(declare-fun b!2715954 () Bool)

(declare-fun e!1711884 () Conc!9810)

(assert (=> b!2715954 (= e!1711884 e!1711887)))

(assert (=> b!2715954 (= lt!961004 call!175100)))

(assert (=> b!2715954 (= c!438776 (= call!175098 (- call!175107 3)))))

(declare-fun bm!175095 () Bool)

(assert (=> bm!175095 (= call!175099 call!175101)))

(declare-fun bm!175096 () Bool)

(assert (=> bm!175096 (= call!175110 call!175097)))

(declare-fun b!2715955 () Bool)

(assert (=> b!2715955 (= c!438774 (>= call!175102 call!175104))))

(assert (=> b!2715955 (= e!1711883 e!1711884)))

(declare-fun bm!175097 () Bool)

(assert (=> bm!175097 (= call!175097 (++!7774 (ite c!438773 (ite c!438774 (right!24417 (c!438567 acc!331)) (right!24417 (right!24417 (c!438567 acc!331)))) (c!438567 acc!331)) (ite c!438773 (c!438567 (_1!18127 lt!960665)) (ite c!438777 (left!24087 (c!438567 (_1!18127 lt!960665))) (left!24087 (left!24087 (c!438567 (_1!18127 lt!960665))))))))))

(declare-fun b!2715956 () Bool)

(declare-fun res!1140660 () Bool)

(declare-fun e!1711885 () Bool)

(assert (=> b!2715956 (=> (not res!1140660) (not e!1711885))))

(declare-fun lt!961005 () Conc!9810)

(assert (=> b!2715956 (= res!1140660 (<= (height!1451 lt!961005) (+ (max!0 (height!1451 (c!438567 acc!331)) (height!1451 (c!438567 (_1!18127 lt!960665)))) 1)))))

(declare-fun d!782190 () Bool)

(assert (=> d!782190 e!1711885))

(declare-fun res!1140659 () Bool)

(assert (=> d!782190 (=> (not res!1140659) (not e!1711885))))

(assert (=> d!782190 (= res!1140659 (appendAssocInst!688 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665))))))

(assert (=> d!782190 (= lt!961005 e!1711890)))

(declare-fun c!438778 () Bool)

(assert (=> d!782190 (= c!438778 (= (c!438567 acc!331) Empty!9810))))

(declare-fun e!1711881 () Bool)

(assert (=> d!782190 e!1711881))

(declare-fun res!1140657 () Bool)

(assert (=> d!782190 (=> (not res!1140657) (not e!1711881))))

(assert (=> d!782190 (= res!1140657 (isBalanced!2971 (c!438567 acc!331)))))

(assert (=> d!782190 (= (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665))) lt!961005)))

(declare-fun bm!175098 () Bool)

(assert (=> bm!175098 (= call!175109 call!175105)))

(declare-fun b!2715957 () Bool)

(assert (=> b!2715957 (= e!1711890 e!1711888)))

(declare-fun c!438775 () Bool)

(assert (=> b!2715957 (= c!438775 (= (c!438567 (_1!18127 lt!960665)) Empty!9810))))

(declare-fun b!2715958 () Bool)

(assert (=> b!2715958 (= e!1711889 e!1711883)))

(declare-fun lt!961006 () Int)

(assert (=> b!2715958 (= c!438773 (< lt!961006 (- 1)))))

(declare-fun bm!175099 () Bool)

(declare-fun call!175108 () Conc!9810)

(assert (=> bm!175099 (= call!175096 call!175108)))

(declare-fun bm!175100 () Bool)

(assert (=> bm!175100 (= call!175108 call!175103)))

(declare-fun bm!175101 () Bool)

(assert (=> bm!175101 (= call!175101 call!175105)))

(declare-fun b!2715959 () Bool)

(declare-fun res!1140661 () Bool)

(assert (=> b!2715959 (=> (not res!1140661) (not e!1711885))))

(assert (=> b!2715959 (= res!1140661 (>= (height!1451 lt!961005) (max!0 (height!1451 (c!438567 acc!331)) (height!1451 (c!438567 (_1!18127 lt!960665))))))))

(declare-fun bm!175102 () Bool)

(declare-fun call!175106 () Conc!9810)

(assert (=> bm!175102 (= call!175106 call!175103)))

(declare-fun bm!175103 () Bool)

(assert (=> bm!175103 (= call!175104 (height!1451 (ite c!438773 (right!24417 (c!438567 acc!331)) (c!438567 (_1!18127 lt!960665)))))))

(declare-fun b!2715960 () Bool)

(assert (=> b!2715960 (= c!438779 (and (<= (- 1) lt!961006) (<= lt!961006 1)))))

(assert (=> b!2715960 (= lt!961006 (- (height!1451 (c!438567 (_1!18127 lt!960665))) (height!1451 (c!438567 acc!331))))))

(assert (=> b!2715960 (= e!1711888 e!1711889)))

(declare-fun b!2715961 () Bool)

(assert (=> b!2715961 (= e!1711886 call!175106)))

(declare-fun b!2715962 () Bool)

(assert (=> b!2715962 (= e!1711884 call!175108)))

(declare-fun b!2715963 () Bool)

(assert (=> b!2715963 (= e!1711886 call!175106)))

(declare-fun b!2715964 () Bool)

(declare-fun res!1140658 () Bool)

(assert (=> b!2715964 (=> (not res!1140658) (not e!1711885))))

(assert (=> b!2715964 (= res!1140658 (isBalanced!2971 lt!961005))))

(declare-fun b!2715965 () Bool)

(assert (=> b!2715965 (= e!1711881 (isBalanced!2971 (c!438567 (_1!18127 lt!960665))))))

(declare-fun bm!175104 () Bool)

(assert (=> bm!175104 (= call!175107 (height!1451 (ite c!438773 (c!438567 acc!331) (right!24417 (c!438567 (_1!18127 lt!960665))))))))

(declare-fun b!2715966 () Bool)

(assert (=> b!2715966 (= e!1711885 (= (list!11861 lt!961005) (++!7770 (list!11861 (c!438567 acc!331)) (list!11861 (c!438567 (_1!18127 lt!960665))))))))

(declare-fun bm!175105 () Bool)

(assert (=> bm!175105 (= call!175102 (height!1451 (ite c!438773 (left!24087 (c!438567 acc!331)) lt!961007)))))

(assert (= (and d!782190 res!1140657) b!2715965))

(assert (= (and d!782190 c!438778) b!2715948))

(assert (= (and d!782190 (not c!438778)) b!2715957))

(assert (= (and b!2715957 c!438775) b!2715951))

(assert (= (and b!2715957 (not c!438775)) b!2715960))

(assert (= (and b!2715960 c!438779) b!2715947))

(assert (= (and b!2715960 (not c!438779)) b!2715958))

(assert (= (and b!2715958 c!438773) b!2715955))

(assert (= (and b!2715958 (not c!438773)) b!2715949))

(assert (= (and b!2715955 c!438774) b!2715962))

(assert (= (and b!2715955 (not c!438774)) b!2715954))

(assert (= (and b!2715954 c!438776) b!2715952))

(assert (= (and b!2715954 (not c!438776)) b!2715946))

(assert (= (or b!2715952 b!2715946) bm!175099))

(assert (= (or b!2715952 b!2715946) bm!175098))

(assert (= (or b!2715962 b!2715954) bm!175092))

(assert (= (or b!2715962 bm!175099) bm!175100))

(assert (= (and b!2715949 c!438777) b!2715950))

(assert (= (and b!2715949 (not c!438777)) b!2715953))

(assert (= (and b!2715953 c!438772) b!2715963))

(assert (= (and b!2715953 (not c!438772)) b!2715961))

(assert (= (or b!2715963 b!2715961) bm!175095))

(assert (= (or b!2715963 b!2715961) bm!175102))

(assert (= (or b!2715950 b!2715953) bm!175096))

(assert (= (or b!2715950 bm!175095) bm!175101))

(assert (= (or b!2715955 b!2715953) bm!175105))

(assert (= (or b!2715955 b!2715953) bm!175103))

(assert (= (or b!2715954 b!2715949) bm!175104))

(assert (= (or bm!175100 bm!175102) bm!175094))

(assert (= (or bm!175092 bm!175096) bm!175097))

(assert (= (or b!2715954 b!2715949) bm!175091))

(assert (= (or bm!175098 bm!175101) bm!175090))

(assert (= (or b!2715947 bm!175094) bm!175093))

(assert (= (and d!782190 res!1140659) b!2715964))

(assert (= (and b!2715964 res!1140658) b!2715956))

(assert (= (and b!2715956 res!1140660) b!2715959))

(assert (= (and b!2715959 res!1140661) b!2715966))

(declare-fun m!3113789 () Bool)

(assert (=> b!2715956 m!3113789))

(assert (=> b!2715956 m!3113205))

(assert (=> b!2715956 m!3113207))

(assert (=> b!2715956 m!3113205))

(assert (=> b!2715956 m!3113207))

(assert (=> b!2715956 m!3113209))

(declare-fun m!3113791 () Bool)

(assert (=> bm!175091 m!3113791))

(declare-fun m!3113793 () Bool)

(assert (=> bm!175103 m!3113793))

(declare-fun m!3113795 () Bool)

(assert (=> b!2715966 m!3113795))

(assert (=> b!2715966 m!3112417))

(assert (=> b!2715966 m!3113773))

(assert (=> b!2715966 m!3112417))

(assert (=> b!2715966 m!3113773))

(declare-fun m!3113797 () Bool)

(assert (=> b!2715966 m!3113797))

(assert (=> b!2715959 m!3113789))

(assert (=> b!2715959 m!3113205))

(assert (=> b!2715959 m!3113207))

(assert (=> b!2715959 m!3113205))

(assert (=> b!2715959 m!3113207))

(assert (=> b!2715959 m!3113209))

(declare-fun m!3113799 () Bool)

(assert (=> bm!175090 m!3113799))

(declare-fun m!3113801 () Bool)

(assert (=> bm!175097 m!3113801))

(declare-fun m!3113803 () Bool)

(assert (=> b!2715965 m!3113803))

(declare-fun m!3113805 () Bool)

(assert (=> b!2715964 m!3113805))

(assert (=> b!2715960 m!3113207))

(assert (=> b!2715960 m!3113205))

(assert (=> d!782190 m!3113217))

(assert (=> d!782190 m!3113277))

(declare-fun m!3113807 () Bool)

(assert (=> bm!175104 m!3113807))

(declare-fun m!3113809 () Bool)

(assert (=> bm!175105 m!3113809))

(declare-fun m!3113811 () Bool)

(assert (=> bm!175093 m!3113811))

(assert (=> d!781994 d!782190))

(declare-fun d!782192 () Bool)

(declare-fun res!1140666 () Bool)

(declare-fun e!1711893 () Bool)

(assert (=> d!782192 (=> (not res!1140666) (not e!1711893))))

(assert (=> d!782192 (= res!1140666 (<= (size!24174 (list!11864 (xs!12872 (c!438566 treated!9)))) 512))))

(assert (=> d!782192 (= (inv!42526 (c!438566 treated!9)) e!1711893)))

(declare-fun b!2715971 () Bool)

(declare-fun res!1140667 () Bool)

(assert (=> b!2715971 (=> (not res!1140667) (not e!1711893))))

(assert (=> b!2715971 (= res!1140667 (= (csize!19849 (c!438566 treated!9)) (size!24174 (list!11864 (xs!12872 (c!438566 treated!9))))))))

(declare-fun b!2715972 () Bool)

(assert (=> b!2715972 (= e!1711893 (and (> (csize!19849 (c!438566 treated!9)) 0) (<= (csize!19849 (c!438566 treated!9)) 512)))))

(assert (= (and d!782192 res!1140666) b!2715971))

(assert (= (and b!2715971 res!1140667) b!2715972))

(assert (=> d!782192 m!3113715))

(assert (=> d!782192 m!3113715))

(declare-fun m!3113813 () Bool)

(assert (=> d!782192 m!3113813))

(assert (=> b!2715971 m!3113715))

(assert (=> b!2715971 m!3113715))

(assert (=> b!2715971 m!3113813))

(assert (=> b!2715548 d!782192))

(declare-fun d!782194 () Bool)

(declare-fun c!438780 () Bool)

(assert (=> d!782194 (= c!438780 ((_ is Empty!9809) (c!438566 (_2!18128 (v!33014 lt!960664)))))))

(declare-fun e!1711894 () List!31428)

(assert (=> d!782194 (= (list!11860 (c!438566 (_2!18128 (v!33014 lt!960664)))) e!1711894)))

(declare-fun b!2715976 () Bool)

(declare-fun e!1711895 () List!31428)

(assert (=> b!2715976 (= e!1711895 (++!7768 (list!11860 (left!24086 (c!438566 (_2!18128 (v!33014 lt!960664))))) (list!11860 (right!24416 (c!438566 (_2!18128 (v!33014 lt!960664)))))))))

(declare-fun b!2715973 () Bool)

(assert (=> b!2715973 (= e!1711894 Nil!31328)))

(declare-fun b!2715975 () Bool)

(assert (=> b!2715975 (= e!1711895 (list!11864 (xs!12872 (c!438566 (_2!18128 (v!33014 lt!960664))))))))

(declare-fun b!2715974 () Bool)

(assert (=> b!2715974 (= e!1711894 e!1711895)))

(declare-fun c!438781 () Bool)

(assert (=> b!2715974 (= c!438781 ((_ is Leaf!14949) (c!438566 (_2!18128 (v!33014 lt!960664)))))))

(assert (= (and d!782194 c!438780) b!2715973))

(assert (= (and d!782194 (not c!438780)) b!2715974))

(assert (= (and b!2715974 c!438781) b!2715975))

(assert (= (and b!2715974 (not c!438781)) b!2715976))

(declare-fun m!3113815 () Bool)

(assert (=> b!2715976 m!3113815))

(declare-fun m!3113817 () Bool)

(assert (=> b!2715976 m!3113817))

(assert (=> b!2715976 m!3113815))

(assert (=> b!2715976 m!3113817))

(declare-fun m!3113819 () Bool)

(assert (=> b!2715976 m!3113819))

(declare-fun m!3113821 () Bool)

(assert (=> b!2715975 m!3113821))

(assert (=> d!781914 d!782194))

(declare-fun d!782196 () Bool)

(assert (=> d!782196 (= (max!0 (height!1451 (c!438567 acc!331)) (height!1451 (c!438567 (_1!18127 lt!960665)))) (ite (< (height!1451 (c!438567 acc!331)) (height!1451 (c!438567 (_1!18127 lt!960665)))) (height!1451 (c!438567 (_1!18127 lt!960665))) (height!1451 (c!438567 acc!331))))))

(assert (=> b!2715529 d!782196))

(declare-fun d!782198 () Bool)

(assert (=> d!782198 (= (height!1451 (c!438567 (_1!18127 lt!960665))) (ite ((_ is Empty!9810) (c!438567 (_1!18127 lt!960665))) 0 (ite ((_ is Leaf!14950) (c!438567 (_1!18127 lt!960665))) 1 (cheight!10021 (c!438567 (_1!18127 lt!960665))))))))

(assert (=> b!2715529 d!782198))

(declare-fun d!782200 () Bool)

(assert (=> d!782200 (= (height!1451 (c!438567 acc!331)) (ite ((_ is Empty!9810) (c!438567 acc!331)) 0 (ite ((_ is Leaf!14950) (c!438567 acc!331)) 1 (cheight!10021 (c!438567 acc!331)))))))

(assert (=> b!2715529 d!782200))

(declare-fun d!782202 () Bool)

(assert (=> d!782202 (= (height!1451 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))) (ite ((_ is Empty!9810) (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))) 0 (ite ((_ is Leaf!14950) (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))) 1 (cheight!10021 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))))))))

(assert (=> b!2715529 d!782202))

(assert (=> b!2715529 d!782190))

(declare-fun d!782204 () Bool)

(declare-fun e!1711896 () Bool)

(assert (=> d!782204 e!1711896))

(declare-fun res!1140668 () Bool)

(assert (=> d!782204 (=> (not res!1140668) (not e!1711896))))

(assert (=> d!782204 (= res!1140668 (isBalanced!2971 (prepend!1119 (c!438567 (_1!18127 lt!960882)) (_1!18128 (v!33014 lt!960881)))))))

(declare-fun lt!961008 () BalanceConc!19234)

(assert (=> d!782204 (= lt!961008 (BalanceConc!19235 (prepend!1119 (c!438567 (_1!18127 lt!960882)) (_1!18128 (v!33014 lt!960881)))))))

(assert (=> d!782204 (= (prepend!1117 (_1!18127 lt!960882) (_1!18128 (v!33014 lt!960881))) lt!961008)))

(declare-fun b!2715977 () Bool)

(assert (=> b!2715977 (= e!1711896 (= (list!11857 lt!961008) (Cons!31329 (_1!18128 (v!33014 lt!960881)) (list!11857 (_1!18127 lt!960882)))))))

(assert (= (and d!782204 res!1140668) b!2715977))

(declare-fun m!3113823 () Bool)

(assert (=> d!782204 m!3113823))

(assert (=> d!782204 m!3113823))

(declare-fun m!3113825 () Bool)

(assert (=> d!782204 m!3113825))

(declare-fun m!3113827 () Bool)

(assert (=> b!2715977 m!3113827))

(declare-fun m!3113829 () Bool)

(assert (=> b!2715977 m!3113829))

(assert (=> b!2715537 d!782204))

(declare-fun d!782206 () Bool)

(declare-fun e!1711898 () Bool)

(assert (=> d!782206 e!1711898))

(declare-fun res!1140670 () Bool)

(assert (=> d!782206 (=> (not res!1140670) (not e!1711898))))

(declare-fun e!1711897 () Bool)

(assert (=> d!782206 (= res!1140670 e!1711897)))

(declare-fun c!438782 () Bool)

(declare-fun lt!961011 () tuple2!30990)

(assert (=> d!782206 (= c!438782 (> (size!24170 (_1!18127 lt!961011)) 0))))

(declare-fun e!1711900 () tuple2!30990)

(assert (=> d!782206 (= lt!961011 e!1711900)))

(declare-fun c!438783 () Bool)

(declare-fun lt!961009 () Option!6183)

(assert (=> d!782206 (= c!438783 ((_ is Some!6182) lt!961009))))

(assert (=> d!782206 (= lt!961009 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960881))))))

(assert (=> d!782206 (= (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960881))) lt!961011)))

(declare-fun b!2715978 () Bool)

(declare-fun res!1140669 () Bool)

(assert (=> b!2715978 (=> (not res!1140669) (not e!1711898))))

(assert (=> b!2715978 (= res!1140669 (= (list!11857 (_1!18127 lt!961011)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960881)))))))))

(declare-fun b!2715979 () Bool)

(declare-fun e!1711899 () Bool)

(assert (=> b!2715979 (= e!1711897 e!1711899)))

(declare-fun res!1140671 () Bool)

(assert (=> b!2715979 (= res!1140671 (< (size!24171 (_2!18127 lt!961011)) (size!24171 (_2!18128 (v!33014 lt!960881)))))))

(assert (=> b!2715979 (=> (not res!1140671) (not e!1711899))))

(declare-fun b!2715980 () Bool)

(assert (=> b!2715980 (= e!1711900 (tuple2!30991 (BalanceConc!19235 Empty!9810) (_2!18128 (v!33014 lt!960881))))))

(declare-fun b!2715981 () Bool)

(assert (=> b!2715981 (= e!1711899 (not (isEmpty!17860 (_1!18127 lt!961011))))))

(declare-fun b!2715982 () Bool)

(assert (=> b!2715982 (= e!1711897 (= (list!11856 (_2!18127 lt!961011)) (list!11856 (_2!18128 (v!33014 lt!960881)))))))

(declare-fun b!2715983 () Bool)

(assert (=> b!2715983 (= e!1711898 (= (list!11856 (_2!18127 lt!961011)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960881)))))))))

(declare-fun b!2715984 () Bool)

(declare-fun lt!961010 () tuple2!30990)

(assert (=> b!2715984 (= e!1711900 (tuple2!30991 (prepend!1117 (_1!18127 lt!961010) (_1!18128 (v!33014 lt!961009))) (_2!18127 lt!961010)))))

(assert (=> b!2715984 (= lt!961010 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!961009))))))

(assert (= (and d!782206 c!438783) b!2715984))

(assert (= (and d!782206 (not c!438783)) b!2715980))

(assert (= (and d!782206 c!438782) b!2715979))

(assert (= (and d!782206 (not c!438782)) b!2715982))

(assert (= (and b!2715979 res!1140671) b!2715981))

(assert (= (and d!782206 res!1140670) b!2715978))

(assert (= (and b!2715978 res!1140669) b!2715983))

(declare-fun m!3113831 () Bool)

(assert (=> b!2715979 m!3113831))

(declare-fun m!3113833 () Bool)

(assert (=> b!2715979 m!3113833))

(declare-fun m!3113835 () Bool)

(assert (=> b!2715981 m!3113835))

(declare-fun m!3113837 () Bool)

(assert (=> b!2715978 m!3113837))

(declare-fun m!3113839 () Bool)

(assert (=> b!2715978 m!3113839))

(assert (=> b!2715978 m!3113839))

(declare-fun m!3113841 () Bool)

(assert (=> b!2715978 m!3113841))

(declare-fun m!3113843 () Bool)

(assert (=> d!782206 m!3113843))

(declare-fun m!3113845 () Bool)

(assert (=> d!782206 m!3113845))

(declare-fun m!3113847 () Bool)

(assert (=> b!2715982 m!3113847))

(assert (=> b!2715982 m!3113839))

(assert (=> b!2715983 m!3113847))

(assert (=> b!2715983 m!3113839))

(assert (=> b!2715983 m!3113839))

(assert (=> b!2715983 m!3113841))

(declare-fun m!3113849 () Bool)

(assert (=> b!2715984 m!3113849))

(declare-fun m!3113851 () Bool)

(assert (=> b!2715984 m!3113851))

(assert (=> b!2715537 d!782206))

(declare-fun b!2715985 () Bool)

(declare-fun e!1711902 () Bool)

(declare-fun e!1711901 () Bool)

(assert (=> b!2715985 (= e!1711902 e!1711901)))

(declare-fun res!1140677 () Bool)

(assert (=> b!2715985 (=> (not res!1140677) (not e!1711901))))

(assert (=> b!2715985 (= res!1140677 (<= (- 1) (- (height!1451 (left!24087 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664))))) (height!1451 (right!24417 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664))))))))))

(declare-fun b!2715986 () Bool)

(declare-fun res!1140672 () Bool)

(assert (=> b!2715986 (=> (not res!1140672) (not e!1711901))))

(assert (=> b!2715986 (= res!1140672 (not (isEmpty!17866 (left!24087 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664)))))))))

(declare-fun d!782208 () Bool)

(declare-fun res!1140675 () Bool)

(assert (=> d!782208 (=> res!1140675 e!1711902)))

(assert (=> d!782208 (= res!1140675 (not ((_ is Node!9810) (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664))))))))

(assert (=> d!782208 (= (isBalanced!2971 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664)))) e!1711902)))

(declare-fun b!2715987 () Bool)

(declare-fun res!1140674 () Bool)

(assert (=> b!2715987 (=> (not res!1140674) (not e!1711901))))

(assert (=> b!2715987 (= res!1140674 (isBalanced!2971 (left!24087 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664))))))))

(declare-fun b!2715988 () Bool)

(assert (=> b!2715988 (= e!1711901 (not (isEmpty!17866 (right!24417 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664)))))))))

(declare-fun b!2715989 () Bool)

(declare-fun res!1140676 () Bool)

(assert (=> b!2715989 (=> (not res!1140676) (not e!1711901))))

(assert (=> b!2715989 (= res!1140676 (<= (- (height!1451 (left!24087 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664))))) (height!1451 (right!24417 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664)))))) 1))))

(declare-fun b!2715990 () Bool)

(declare-fun res!1140673 () Bool)

(assert (=> b!2715990 (=> (not res!1140673) (not e!1711901))))

(assert (=> b!2715990 (= res!1140673 (isBalanced!2971 (right!24417 (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664))))))))

(assert (= (and d!782208 (not res!1140675)) b!2715985))

(assert (= (and b!2715985 res!1140677) b!2715989))

(assert (= (and b!2715989 res!1140676) b!2715987))

(assert (= (and b!2715987 res!1140674) b!2715990))

(assert (= (and b!2715990 res!1140673) b!2715986))

(assert (= (and b!2715986 res!1140672) b!2715988))

(declare-fun m!3113853 () Bool)

(assert (=> b!2715985 m!3113853))

(declare-fun m!3113855 () Bool)

(assert (=> b!2715985 m!3113855))

(declare-fun m!3113857 () Bool)

(assert (=> b!2715990 m!3113857))

(declare-fun m!3113859 () Bool)

(assert (=> b!2715988 m!3113859))

(declare-fun m!3113861 () Bool)

(assert (=> b!2715986 m!3113861))

(declare-fun m!3113863 () Bool)

(assert (=> b!2715987 m!3113863))

(assert (=> b!2715989 m!3113853))

(assert (=> b!2715989 m!3113855))

(assert (=> d!782012 d!782208))

(declare-fun d!782210 () Bool)

(declare-fun e!1711903 () Bool)

(assert (=> d!782210 e!1711903))

(declare-fun res!1140678 () Bool)

(assert (=> d!782210 (=> (not res!1140678) (not e!1711903))))

(declare-fun lt!961012 () Conc!9810)

(assert (=> d!782210 (= res!1140678 (isBalanced!2971 lt!961012))))

(assert (=> d!782210 (= lt!961012 (++!7774 (Leaf!14950 (fill!142 1 (_1!18128 (v!33014 lt!960664))) 1) (c!438567 (_1!18127 lt!960670))))))

(assert (=> d!782210 (isBalanced!2971 (c!438567 (_1!18127 lt!960670)))))

(assert (=> d!782210 (= (prepend!1119 (c!438567 (_1!18127 lt!960670)) (_1!18128 (v!33014 lt!960664))) lt!961012)))

(declare-fun b!2715991 () Bool)

(assert (=> b!2715991 (= e!1711903 (= (list!11861 lt!961012) (Cons!31329 (_1!18128 (v!33014 lt!960664)) (list!11861 (c!438567 (_1!18127 lt!960670))))))))

(assert (= (and d!782210 res!1140678) b!2715991))

(declare-fun m!3113865 () Bool)

(assert (=> d!782210 m!3113865))

(declare-fun m!3113867 () Bool)

(assert (=> d!782210 m!3113867))

(declare-fun m!3113869 () Bool)

(assert (=> d!782210 m!3113869))

(assert (=> d!782210 m!3113605))

(declare-fun m!3113871 () Bool)

(assert (=> b!2715991 m!3113871))

(assert (=> b!2715991 m!3113103))

(assert (=> d!782012 d!782210))

(declare-fun d!782212 () Bool)

(declare-fun isEmpty!17869 (Option!6183) Bool)

(assert (=> d!782212 (= (isDefined!4893 lt!960871) (not (isEmpty!17869 lt!960871)))))

(declare-fun bs!488131 () Bool)

(assert (= bs!488131 d!782212))

(declare-fun m!3113873 () Bool)

(assert (=> bs!488131 m!3113873))

(assert (=> b!2715508 d!782212))

(declare-fun b!2715992 () Bool)

(declare-fun res!1140680 () Bool)

(declare-fun e!1711904 () Bool)

(assert (=> b!2715992 (=> (not res!1140680) (not e!1711904))))

(assert (=> b!2715992 (= res!1140680 (not (isEmpty!17864 (left!24086 (c!438566 input!603)))))))

(declare-fun b!2715993 () Bool)

(declare-fun res!1140679 () Bool)

(assert (=> b!2715993 (=> (not res!1140679) (not e!1711904))))

(assert (=> b!2715993 (= res!1140679 (<= (- (height!1452 (left!24086 (c!438566 input!603))) (height!1452 (right!24416 (c!438566 input!603)))) 1))))

(declare-fun b!2715994 () Bool)

(declare-fun res!1140681 () Bool)

(assert (=> b!2715994 (=> (not res!1140681) (not e!1711904))))

(assert (=> b!2715994 (= res!1140681 (isBalanced!2972 (right!24416 (c!438566 input!603))))))

(declare-fun d!782214 () Bool)

(declare-fun res!1140682 () Bool)

(declare-fun e!1711905 () Bool)

(assert (=> d!782214 (=> res!1140682 e!1711905)))

(assert (=> d!782214 (= res!1140682 (not ((_ is Node!9809) (c!438566 input!603))))))

(assert (=> d!782214 (= (isBalanced!2972 (c!438566 input!603)) e!1711905)))

(declare-fun b!2715995 () Bool)

(assert (=> b!2715995 (= e!1711905 e!1711904)))

(declare-fun res!1140683 () Bool)

(assert (=> b!2715995 (=> (not res!1140683) (not e!1711904))))

(assert (=> b!2715995 (= res!1140683 (<= (- 1) (- (height!1452 (left!24086 (c!438566 input!603))) (height!1452 (right!24416 (c!438566 input!603))))))))

(declare-fun b!2715996 () Bool)

(declare-fun res!1140684 () Bool)

(assert (=> b!2715996 (=> (not res!1140684) (not e!1711904))))

(assert (=> b!2715996 (= res!1140684 (isBalanced!2972 (left!24086 (c!438566 input!603))))))

(declare-fun b!2715997 () Bool)

(assert (=> b!2715997 (= e!1711904 (not (isEmpty!17864 (right!24416 (c!438566 input!603)))))))

(assert (= (and d!782214 (not res!1140682)) b!2715995))

(assert (= (and b!2715995 res!1140683) b!2715993))

(assert (= (and b!2715993 res!1140679) b!2715996))

(assert (= (and b!2715996 res!1140684) b!2715994))

(assert (= (and b!2715994 res!1140681) b!2715992))

(assert (= (and b!2715992 res!1140680) b!2715997))

(declare-fun m!3113875 () Bool)

(assert (=> b!2715996 m!3113875))

(declare-fun m!3113877 () Bool)

(assert (=> b!2715995 m!3113877))

(declare-fun m!3113879 () Bool)

(assert (=> b!2715995 m!3113879))

(assert (=> b!2715993 m!3113877))

(assert (=> b!2715993 m!3113879))

(declare-fun m!3113881 () Bool)

(assert (=> b!2715997 m!3113881))

(declare-fun m!3113883 () Bool)

(assert (=> b!2715994 m!3113883))

(declare-fun m!3113885 () Bool)

(assert (=> b!2715992 m!3113885))

(assert (=> d!782016 d!782214))

(declare-fun d!782216 () Bool)

(declare-fun e!1711906 () Bool)

(assert (=> d!782216 e!1711906))

(declare-fun res!1140685 () Bool)

(assert (=> d!782216 (=> (not res!1140685) (not e!1711906))))

(assert (=> d!782216 (= res!1140685 (isBalanced!2971 (prepend!1119 (c!438567 (_1!18127 lt!960741)) (_1!18128 (v!33014 lt!960740)))))))

(declare-fun lt!961013 () BalanceConc!19234)

(assert (=> d!782216 (= lt!961013 (BalanceConc!19235 (prepend!1119 (c!438567 (_1!18127 lt!960741)) (_1!18128 (v!33014 lt!960740)))))))

(assert (=> d!782216 (= (prepend!1117 (_1!18127 lt!960741) (_1!18128 (v!33014 lt!960740))) lt!961013)))

(declare-fun b!2715998 () Bool)

(assert (=> b!2715998 (= e!1711906 (= (list!11857 lt!961013) (Cons!31329 (_1!18128 (v!33014 lt!960740)) (list!11857 (_1!18127 lt!960741)))))))

(assert (= (and d!782216 res!1140685) b!2715998))

(declare-fun m!3113887 () Bool)

(assert (=> d!782216 m!3113887))

(assert (=> d!782216 m!3113887))

(declare-fun m!3113889 () Bool)

(assert (=> d!782216 m!3113889))

(declare-fun m!3113891 () Bool)

(assert (=> b!2715998 m!3113891))

(declare-fun m!3113893 () Bool)

(assert (=> b!2715998 m!3113893))

(assert (=> b!2715178 d!782216))

(declare-fun d!782218 () Bool)

(declare-fun e!1711908 () Bool)

(assert (=> d!782218 e!1711908))

(declare-fun res!1140687 () Bool)

(assert (=> d!782218 (=> (not res!1140687) (not e!1711908))))

(declare-fun e!1711907 () Bool)

(assert (=> d!782218 (= res!1140687 e!1711907)))

(declare-fun c!438784 () Bool)

(declare-fun lt!961016 () tuple2!30990)

(assert (=> d!782218 (= c!438784 (> (size!24170 (_1!18127 lt!961016)) 0))))

(declare-fun e!1711910 () tuple2!30990)

(assert (=> d!782218 (= lt!961016 e!1711910)))

(declare-fun c!438785 () Bool)

(declare-fun lt!961014 () Option!6183)

(assert (=> d!782218 (= c!438785 ((_ is Some!6182) lt!961014))))

(assert (=> d!782218 (= lt!961014 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960740))))))

(assert (=> d!782218 (= (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960740))) lt!961016)))

(declare-fun b!2715999 () Bool)

(declare-fun res!1140686 () Bool)

(assert (=> b!2715999 (=> (not res!1140686) (not e!1711908))))

(assert (=> b!2715999 (= res!1140686 (= (list!11857 (_1!18127 lt!961016)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960740)))))))))

(declare-fun b!2716000 () Bool)

(declare-fun e!1711909 () Bool)

(assert (=> b!2716000 (= e!1711907 e!1711909)))

(declare-fun res!1140688 () Bool)

(assert (=> b!2716000 (= res!1140688 (< (size!24171 (_2!18127 lt!961016)) (size!24171 (_2!18128 (v!33014 lt!960740)))))))

(assert (=> b!2716000 (=> (not res!1140688) (not e!1711909))))

(declare-fun b!2716001 () Bool)

(assert (=> b!2716001 (= e!1711910 (tuple2!30991 (BalanceConc!19235 Empty!9810) (_2!18128 (v!33014 lt!960740))))))

(declare-fun b!2716002 () Bool)

(assert (=> b!2716002 (= e!1711909 (not (isEmpty!17860 (_1!18127 lt!961016))))))

(declare-fun b!2716003 () Bool)

(assert (=> b!2716003 (= e!1711907 (= (list!11856 (_2!18127 lt!961016)) (list!11856 (_2!18128 (v!33014 lt!960740)))))))

(declare-fun b!2716004 () Bool)

(assert (=> b!2716004 (= e!1711908 (= (list!11856 (_2!18127 lt!961016)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960740)))))))))

(declare-fun b!2716005 () Bool)

(declare-fun lt!961015 () tuple2!30990)

(assert (=> b!2716005 (= e!1711910 (tuple2!30991 (prepend!1117 (_1!18127 lt!961015) (_1!18128 (v!33014 lt!961014))) (_2!18127 lt!961015)))))

(assert (=> b!2716005 (= lt!961015 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!961014))))))

(assert (= (and d!782218 c!438785) b!2716005))

(assert (= (and d!782218 (not c!438785)) b!2716001))

(assert (= (and d!782218 c!438784) b!2716000))

(assert (= (and d!782218 (not c!438784)) b!2716003))

(assert (= (and b!2716000 res!1140688) b!2716002))

(assert (= (and d!782218 res!1140687) b!2715999))

(assert (= (and b!2715999 res!1140686) b!2716004))

(declare-fun m!3113895 () Bool)

(assert (=> b!2716000 m!3113895))

(declare-fun m!3113897 () Bool)

(assert (=> b!2716000 m!3113897))

(declare-fun m!3113899 () Bool)

(assert (=> b!2716002 m!3113899))

(declare-fun m!3113901 () Bool)

(assert (=> b!2715999 m!3113901))

(declare-fun m!3113903 () Bool)

(assert (=> b!2715999 m!3113903))

(assert (=> b!2715999 m!3113903))

(declare-fun m!3113905 () Bool)

(assert (=> b!2715999 m!3113905))

(declare-fun m!3113907 () Bool)

(assert (=> d!782218 m!3113907))

(declare-fun m!3113909 () Bool)

(assert (=> d!782218 m!3113909))

(declare-fun m!3113911 () Bool)

(assert (=> b!2716003 m!3113911))

(assert (=> b!2716003 m!3113903))

(assert (=> b!2716004 m!3113911))

(assert (=> b!2716004 m!3113903))

(assert (=> b!2716004 m!3113903))

(assert (=> b!2716004 m!3113905))

(declare-fun m!3113913 () Bool)

(assert (=> b!2716005 m!3113913))

(declare-fun m!3113915 () Bool)

(assert (=> b!2716005 m!3113915))

(assert (=> b!2715178 d!782218))

(declare-fun d!782220 () Bool)

(declare-fun lt!961019 () Int)

(assert (=> d!782220 (>= lt!961019 0)))

(declare-fun e!1711913 () Int)

(assert (=> d!782220 (= lt!961019 e!1711913)))

(declare-fun c!438788 () Bool)

(assert (=> d!782220 (= c!438788 ((_ is Nil!31329) lt!960769))))

(assert (=> d!782220 (= (size!24173 lt!960769) lt!961019)))

(declare-fun b!2716010 () Bool)

(assert (=> b!2716010 (= e!1711913 0)))

(declare-fun b!2716011 () Bool)

(assert (=> b!2716011 (= e!1711913 (+ 1 (size!24173 (t!226247 lt!960769))))))

(assert (= (and d!782220 c!438788) b!2716010))

(assert (= (and d!782220 (not c!438788)) b!2716011))

(declare-fun m!3113917 () Bool)

(assert (=> b!2716011 m!3113917))

(assert (=> b!2715270 d!782220))

(declare-fun d!782222 () Bool)

(declare-fun lt!961020 () Int)

(assert (=> d!782222 (>= lt!961020 0)))

(declare-fun e!1711914 () Int)

(assert (=> d!782222 (= lt!961020 e!1711914)))

(declare-fun c!438789 () Bool)

(assert (=> d!782222 (= c!438789 ((_ is Nil!31329) lt!960666))))

(assert (=> d!782222 (= (size!24173 lt!960666) lt!961020)))

(declare-fun b!2716012 () Bool)

(assert (=> b!2716012 (= e!1711914 0)))

(declare-fun b!2716013 () Bool)

(assert (=> b!2716013 (= e!1711914 (+ 1 (size!24173 (t!226247 lt!960666))))))

(assert (= (and d!782222 c!438789) b!2716012))

(assert (= (and d!782222 (not c!438789)) b!2716013))

(declare-fun m!3113919 () Bool)

(assert (=> b!2716013 m!3113919))

(assert (=> b!2715270 d!782222))

(declare-fun d!782224 () Bool)

(declare-fun lt!961021 () Int)

(assert (=> d!782224 (>= lt!961021 0)))

(declare-fun e!1711915 () Int)

(assert (=> d!782224 (= lt!961021 e!1711915)))

(declare-fun c!438790 () Bool)

(assert (=> d!782224 (= c!438790 ((_ is Nil!31329) (++!7770 lt!960676 lt!960688)))))

(assert (=> d!782224 (= (size!24173 (++!7770 lt!960676 lt!960688)) lt!961021)))

(declare-fun b!2716014 () Bool)

(assert (=> b!2716014 (= e!1711915 0)))

(declare-fun b!2716015 () Bool)

(assert (=> b!2716015 (= e!1711915 (+ 1 (size!24173 (t!226247 (++!7770 lt!960676 lt!960688)))))))

(assert (= (and d!782224 c!438790) b!2716014))

(assert (= (and d!782224 (not c!438790)) b!2716015))

(declare-fun m!3113921 () Bool)

(assert (=> b!2716015 m!3113921))

(assert (=> b!2715270 d!782224))

(declare-fun d!782226 () Bool)

(assert (=> d!782226 (= (isDefined!4893 lt!960887) (not (isEmpty!17869 lt!960887)))))

(declare-fun bs!488132 () Bool)

(assert (= bs!488132 d!782226))

(declare-fun m!3113923 () Bool)

(assert (=> bs!488132 m!3113923))

(assert (=> b!2715554 d!782226))

(declare-fun d!782228 () Bool)

(declare-fun lt!961022 () Int)

(assert (=> d!782228 (>= lt!961022 0)))

(declare-fun e!1711916 () Int)

(assert (=> d!782228 (= lt!961022 e!1711916)))

(declare-fun c!438791 () Bool)

(assert (=> d!782228 (= c!438791 ((_ is Nil!31328) lt!960772))))

(assert (=> d!782228 (= (size!24174 lt!960772) lt!961022)))

(declare-fun b!2716016 () Bool)

(assert (=> b!2716016 (= e!1711916 0)))

(declare-fun b!2716017 () Bool)

(assert (=> b!2716017 (= e!1711916 (+ 1 (size!24174 (t!226246 lt!960772))))))

(assert (= (and d!782228 c!438791) b!2716016))

(assert (= (and d!782228 (not c!438791)) b!2716017))

(declare-fun m!3113925 () Bool)

(assert (=> b!2716017 m!3113925))

(assert (=> b!2715282 d!782228))

(assert (=> b!2715282 d!782146))

(declare-fun d!782230 () Bool)

(declare-fun lt!961023 () Int)

(assert (=> d!782230 (>= lt!961023 0)))

(declare-fun e!1711917 () Int)

(assert (=> d!782230 (= lt!961023 e!1711917)))

(declare-fun c!438792 () Bool)

(assert (=> d!782230 (= c!438792 ((_ is Nil!31328) (++!7768 lt!960668 lt!960680)))))

(assert (=> d!782230 (= (size!24174 (++!7768 lt!960668 lt!960680)) lt!961023)))

(declare-fun b!2716018 () Bool)

(assert (=> b!2716018 (= e!1711917 0)))

(declare-fun b!2716019 () Bool)

(assert (=> b!2716019 (= e!1711917 (+ 1 (size!24174 (t!226246 (++!7768 lt!960668 lt!960680)))))))

(assert (= (and d!782230 c!438792) b!2716018))

(assert (= (and d!782230 (not c!438792)) b!2716019))

(declare-fun m!3113927 () Bool)

(assert (=> b!2716019 m!3113927))

(assert (=> b!2715282 d!782230))

(declare-fun d!782232 () Bool)

(declare-fun e!1711919 () Bool)

(assert (=> d!782232 e!1711919))

(declare-fun res!1140689 () Bool)

(assert (=> d!782232 (=> (not res!1140689) (not e!1711919))))

(declare-fun lt!961024 () List!31429)

(assert (=> d!782232 (= res!1140689 (= (content!4437 lt!961024) ((_ map or) (content!4437 (t!226247 lt!960666)) (content!4437 lt!960676))))))

(declare-fun e!1711918 () List!31429)

(assert (=> d!782232 (= lt!961024 e!1711918)))

(declare-fun c!438793 () Bool)

(assert (=> d!782232 (= c!438793 ((_ is Nil!31329) (t!226247 lt!960666)))))

(assert (=> d!782232 (= (++!7770 (t!226247 lt!960666) lt!960676) lt!961024)))

(declare-fun b!2716023 () Bool)

(assert (=> b!2716023 (= e!1711919 (or (not (= lt!960676 Nil!31329)) (= lt!961024 (t!226247 lt!960666))))))

(declare-fun b!2716020 () Bool)

(assert (=> b!2716020 (= e!1711918 lt!960676)))

(declare-fun b!2716021 () Bool)

(assert (=> b!2716021 (= e!1711918 (Cons!31329 (h!36749 (t!226247 lt!960666)) (++!7770 (t!226247 (t!226247 lt!960666)) lt!960676)))))

(declare-fun b!2716022 () Bool)

(declare-fun res!1140690 () Bool)

(assert (=> b!2716022 (=> (not res!1140690) (not e!1711919))))

(assert (=> b!2716022 (= res!1140690 (= (size!24173 lt!961024) (+ (size!24173 (t!226247 lt!960666)) (size!24173 lt!960676))))))

(assert (= (and d!782232 c!438793) b!2716020))

(assert (= (and d!782232 (not c!438793)) b!2716021))

(assert (= (and d!782232 res!1140689) b!2716022))

(assert (= (and b!2716022 res!1140690) b!2716023))

(declare-fun m!3113929 () Bool)

(assert (=> d!782232 m!3113929))

(declare-fun m!3113931 () Bool)

(assert (=> d!782232 m!3113931))

(assert (=> d!782232 m!3112945))

(declare-fun m!3113933 () Bool)

(assert (=> b!2716021 m!3113933))

(declare-fun m!3113935 () Bool)

(assert (=> b!2716022 m!3113935))

(assert (=> b!2716022 m!3113919))

(assert (=> b!2716022 m!3112951))

(assert (=> b!2715367 d!782232))

(declare-fun d!782234 () Bool)

(declare-fun lt!961025 () Int)

(assert (=> d!782234 (>= lt!961025 0)))

(declare-fun e!1711920 () Int)

(assert (=> d!782234 (= lt!961025 e!1711920)))

(declare-fun c!438794 () Bool)

(assert (=> d!782234 (= c!438794 ((_ is Nil!31328) lt!960817))))

(assert (=> d!782234 (= (size!24174 lt!960817) lt!961025)))

(declare-fun b!2716024 () Bool)

(assert (=> b!2716024 (= e!1711920 0)))

(declare-fun b!2716025 () Bool)

(assert (=> b!2716025 (= e!1711920 (+ 1 (size!24174 (t!226246 lt!960817))))))

(assert (= (and d!782234 c!438794) b!2716024))

(assert (= (and d!782234 (not c!438794)) b!2716025))

(declare-fun m!3113937 () Bool)

(assert (=> b!2716025 m!3113937))

(assert (=> b!2715364 d!782234))

(declare-fun d!782236 () Bool)

(declare-fun lt!961026 () Int)

(assert (=> d!782236 (>= lt!961026 0)))

(declare-fun e!1711921 () Int)

(assert (=> d!782236 (= lt!961026 e!1711921)))

(declare-fun c!438795 () Bool)

(assert (=> d!782236 (= c!438795 ((_ is Nil!31328) (list!11856 lt!960675)))))

(assert (=> d!782236 (= (size!24174 (list!11856 lt!960675)) lt!961026)))

(declare-fun b!2716026 () Bool)

(assert (=> b!2716026 (= e!1711921 0)))

(declare-fun b!2716027 () Bool)

(assert (=> b!2716027 (= e!1711921 (+ 1 (size!24174 (t!226246 (list!11856 lt!960675)))))))

(assert (= (and d!782236 c!438795) b!2716026))

(assert (= (and d!782236 (not c!438795)) b!2716027))

(declare-fun m!3113939 () Bool)

(assert (=> b!2716027 m!3113939))

(assert (=> b!2715364 d!782236))

(declare-fun d!782238 () Bool)

(declare-fun lt!961027 () Int)

(assert (=> d!782238 (>= lt!961027 0)))

(declare-fun e!1711922 () Int)

(assert (=> d!782238 (= lt!961027 e!1711922)))

(declare-fun c!438796 () Bool)

(assert (=> d!782238 (= c!438796 ((_ is Nil!31328) lt!960680))))

(assert (=> d!782238 (= (size!24174 lt!960680) lt!961027)))

(declare-fun b!2716028 () Bool)

(assert (=> b!2716028 (= e!1711922 0)))

(declare-fun b!2716029 () Bool)

(assert (=> b!2716029 (= e!1711922 (+ 1 (size!24174 (t!226246 lt!960680))))))

(assert (= (and d!782238 c!438796) b!2716028))

(assert (= (and d!782238 (not c!438796)) b!2716029))

(declare-fun m!3113941 () Bool)

(assert (=> b!2716029 m!3113941))

(assert (=> b!2715364 d!782238))

(declare-fun b!2716031 () Bool)

(declare-fun e!1711923 () List!31428)

(assert (=> b!2716031 (= e!1711923 (Cons!31328 (h!36748 (t!226246 lt!960685)) (++!7768 (t!226246 (t!226246 lt!960685)) lt!960680)))))

(declare-fun b!2716032 () Bool)

(declare-fun res!1140691 () Bool)

(declare-fun e!1711924 () Bool)

(assert (=> b!2716032 (=> (not res!1140691) (not e!1711924))))

(declare-fun lt!961028 () List!31428)

(assert (=> b!2716032 (= res!1140691 (= (size!24174 lt!961028) (+ (size!24174 (t!226246 lt!960685)) (size!24174 lt!960680))))))

(declare-fun b!2716033 () Bool)

(assert (=> b!2716033 (= e!1711924 (or (not (= lt!960680 Nil!31328)) (= lt!961028 (t!226246 lt!960685))))))

(declare-fun d!782240 () Bool)

(assert (=> d!782240 e!1711924))

(declare-fun res!1140692 () Bool)

(assert (=> d!782240 (=> (not res!1140692) (not e!1711924))))

(assert (=> d!782240 (= res!1140692 (= (content!4438 lt!961028) ((_ map or) (content!4438 (t!226246 lt!960685)) (content!4438 lt!960680))))))

(assert (=> d!782240 (= lt!961028 e!1711923)))

(declare-fun c!438797 () Bool)

(assert (=> d!782240 (= c!438797 ((_ is Nil!31328) (t!226246 lt!960685)))))

(assert (=> d!782240 (= (++!7768 (t!226246 lt!960685) lt!960680) lt!961028)))

(declare-fun b!2716030 () Bool)

(assert (=> b!2716030 (= e!1711923 lt!960680)))

(assert (= (and d!782240 c!438797) b!2716030))

(assert (= (and d!782240 (not c!438797)) b!2716031))

(assert (= (and d!782240 res!1140692) b!2716032))

(assert (= (and b!2716032 res!1140691) b!2716033))

(declare-fun m!3113943 () Bool)

(assert (=> b!2716031 m!3113943))

(declare-fun m!3113945 () Bool)

(assert (=> b!2716032 m!3113945))

(declare-fun m!3113947 () Bool)

(assert (=> b!2716032 m!3113947))

(assert (=> b!2716032 m!3112793))

(declare-fun m!3113949 () Bool)

(assert (=> d!782240 m!3113949))

(declare-fun m!3113951 () Bool)

(assert (=> d!782240 m!3113951))

(assert (=> d!782240 m!3112799))

(assert (=> b!2715359 d!782240))

(declare-fun d!782242 () Bool)

(assert (=> d!782242 (= (height!1452 (++!7775 (c!438566 treated!9) (c!438566 lt!960679))) (ite ((_ is Empty!9809) (++!7775 (c!438566 treated!9) (c!438566 lt!960679))) 0 (ite ((_ is Leaf!14949) (++!7775 (c!438566 treated!9) (c!438566 lt!960679))) 1 (cheight!10020 (++!7775 (c!438566 treated!9) (c!438566 lt!960679))))))))

(assert (=> b!2715485 d!782242))

(declare-fun d!782244 () Bool)

(assert (=> d!782244 (= (height!1452 (c!438566 treated!9)) (ite ((_ is Empty!9809) (c!438566 treated!9)) 0 (ite ((_ is Leaf!14949) (c!438566 treated!9)) 1 (cheight!10020 (c!438566 treated!9)))))))

(assert (=> b!2715485 d!782244))

(declare-fun d!782246 () Bool)

(assert (=> d!782246 (= (max!0 (height!1452 (c!438566 treated!9)) (height!1452 (c!438566 lt!960679))) (ite (< (height!1452 (c!438566 treated!9)) (height!1452 (c!438566 lt!960679))) (height!1452 (c!438566 lt!960679)) (height!1452 (c!438566 treated!9))))))

(assert (=> b!2715485 d!782246))

(declare-fun d!782248 () Bool)

(assert (=> d!782248 (= (height!1452 (c!438566 lt!960679)) (ite ((_ is Empty!9809) (c!438566 lt!960679)) 0 (ite ((_ is Leaf!14949) (c!438566 lt!960679)) 1 (cheight!10020 (c!438566 lt!960679)))))))

(assert (=> b!2715485 d!782248))

(declare-fun bm!175138 () Bool)

(declare-fun call!175144 () Conc!9809)

(declare-fun call!175147 () Conc!9809)

(assert (=> bm!175138 (= call!175144 call!175147)))

(declare-fun b!2716076 () Bool)

(declare-fun res!1140703 () Bool)

(declare-fun e!1711946 () Bool)

(assert (=> b!2716076 (=> (not res!1140703) (not e!1711946))))

(declare-fun lt!961039 () Conc!9809)

(assert (=> b!2716076 (= res!1140703 (>= (height!1452 lt!961039) (max!0 (height!1452 (c!438566 treated!9)) (height!1452 (c!438566 lt!960679)))))))

(declare-fun b!2716077 () Bool)

(declare-fun e!1711947 () Conc!9809)

(declare-fun call!175148 () Conc!9809)

(assert (=> b!2716077 (= e!1711947 call!175148)))

(declare-fun b!2716078 () Bool)

(declare-fun e!1711949 () Conc!9809)

(declare-fun e!1711945 () Conc!9809)

(assert (=> b!2716078 (= e!1711949 e!1711945)))

(declare-fun c!438821 () Bool)

(declare-fun lt!961040 () Int)

(assert (=> b!2716078 (= c!438821 (< lt!961040 (- 1)))))

(declare-fun b!2716079 () Bool)

(declare-fun e!1711951 () Conc!9809)

(declare-fun call!175149 () Conc!9809)

(assert (=> b!2716079 (= e!1711951 call!175149)))

(declare-fun b!2716080 () Bool)

(declare-fun e!1711950 () Conc!9809)

(assert (=> b!2716080 (= e!1711950 (c!438566 lt!960679))))

(declare-fun b!2716081 () Bool)

(declare-fun res!1140705 () Bool)

(assert (=> b!2716081 (=> (not res!1140705) (not e!1711946))))

(assert (=> b!2716081 (= res!1140705 (isBalanced!2972 lt!961039))))

(declare-fun b!2716082 () Bool)

(declare-fun e!1711952 () Conc!9809)

(assert (=> b!2716082 (= e!1711952 e!1711951)))

(declare-fun lt!961037 () Conc!9809)

(declare-fun call!175158 () Conc!9809)

(assert (=> b!2716082 (= lt!961037 call!175158)))

(declare-fun c!438816 () Bool)

(declare-fun call!175143 () Int)

(declare-fun call!175157 () Int)

(assert (=> b!2716082 (= c!438816 (= call!175143 (- call!175157 3)))))

(declare-fun b!2716083 () Bool)

(assert (=> b!2716083 (= e!1711952 call!175144)))

(declare-fun b!2716084 () Bool)

(declare-fun e!1711948 () Bool)

(assert (=> b!2716084 (= e!1711948 (isBalanced!2972 (c!438566 lt!960679)))))

(declare-fun b!2716085 () Bool)

(assert (=> b!2716085 (= e!1711947 call!175148)))

(declare-fun bm!175139 () Bool)

(declare-fun call!175156 () Int)

(assert (=> bm!175139 (= call!175156 (height!1452 (ite c!438821 (right!24416 (c!438566 treated!9)) (left!24086 (c!438566 lt!960679)))))))

(declare-fun b!2716086 () Bool)

(declare-fun c!438818 () Bool)

(declare-fun call!175150 () Int)

(assert (=> b!2716086 (= c!438818 (>= call!175150 call!175156))))

(assert (=> b!2716086 (= e!1711945 e!1711952)))

(declare-fun b!2716087 () Bool)

(assert (=> b!2716087 (= e!1711946 (= (list!11860 lt!961039) (++!7768 (list!11860 (c!438566 treated!9)) (list!11860 (c!438566 lt!960679)))))))

(declare-fun bm!175140 () Bool)

(declare-fun call!175152 () Conc!9809)

(declare-fun call!175145 () Conc!9809)

(assert (=> bm!175140 (= call!175152 call!175145)))

(declare-fun b!2716088 () Bool)

(declare-fun e!1711954 () Conc!9809)

(assert (=> b!2716088 (= e!1711950 e!1711954)))

(declare-fun c!438815 () Bool)

(assert (=> b!2716088 (= c!438815 (= (c!438566 lt!960679) Empty!9809))))

(declare-fun bm!175141 () Bool)

(declare-fun call!175155 () Conc!9809)

(assert (=> bm!175141 (= call!175155 call!175144)))

(declare-fun b!2716089 () Bool)

(declare-fun e!1711953 () Conc!9809)

(assert (=> b!2716089 (= e!1711953 e!1711947)))

(declare-fun lt!961038 () Conc!9809)

(declare-fun call!175153 () Conc!9809)

(assert (=> b!2716089 (= lt!961038 call!175153)))

(declare-fun c!438819 () Bool)

(assert (=> b!2716089 (= c!438819 (= call!175143 (- call!175157 3)))))

(declare-fun b!2716090 () Bool)

(declare-fun c!438820 () Bool)

(assert (=> b!2716090 (= c!438820 (>= call!175150 call!175156))))

(assert (=> b!2716090 (= e!1711945 e!1711953)))

(declare-fun bm!175142 () Bool)

(declare-fun call!175151 () Conc!9809)

(assert (=> bm!175142 (= call!175153 call!175151)))

(declare-fun b!2716091 () Bool)

(declare-fun c!438817 () Bool)

(assert (=> b!2716091 (= c!438817 (and (<= (- 1) lt!961040) (<= lt!961040 1)))))

(assert (=> b!2716091 (= lt!961040 (- (height!1452 (c!438566 lt!960679)) (height!1452 (c!438566 treated!9))))))

(assert (=> b!2716091 (= e!1711954 e!1711949)))

(declare-fun bm!175143 () Bool)

(declare-fun call!175146 () Conc!9809)

(assert (=> bm!175143 (= call!175146 call!175152)))

(declare-fun b!2716092 () Bool)

(declare-fun res!1140706 () Bool)

(assert (=> b!2716092 (=> (not res!1140706) (not e!1711946))))

(assert (=> b!2716092 (= res!1140706 (<= (height!1452 lt!961039) (+ (max!0 (height!1452 (c!438566 treated!9)) (height!1452 (c!438566 lt!960679))) 1)))))

(declare-fun bm!175144 () Bool)

(declare-fun call!175154 () Conc!9809)

(assert (=> bm!175144 (= call!175154 call!175147)))

(declare-fun bm!175145 () Bool)

(assert (=> bm!175145 (= call!175143 (height!1452 (ite c!438821 lt!961038 lt!961037)))))

(declare-fun b!2716093 () Bool)

(assert (=> b!2716093 (= e!1711951 call!175149)))

(declare-fun bm!175146 () Bool)

(assert (=> bm!175146 (= call!175158 call!175151)))

(declare-fun bm!175147 () Bool)

(assert (=> bm!175147 (= call!175157 (height!1452 (ite c!438821 (c!438566 treated!9) (c!438566 lt!960679))))))

(declare-fun bm!175148 () Bool)

(declare-fun <>!254 (Conc!9809 Conc!9809) Conc!9809)

(assert (=> bm!175148 (= call!175147 (<>!254 (ite c!438821 (ite (or c!438820 c!438819) (left!24086 (c!438566 treated!9)) call!175146) (ite c!438818 call!175158 (ite c!438816 lt!961037 (right!24416 (left!24086 (c!438566 lt!960679)))))) (ite c!438821 (ite c!438820 call!175153 (ite c!438819 call!175146 lt!961038)) (ite c!438818 (right!24416 (c!438566 lt!960679)) (ite c!438816 (right!24416 (left!24086 (c!438566 lt!960679))) (right!24416 (c!438566 lt!960679)))))))))

(declare-fun bm!175149 () Bool)

(assert (=> bm!175149 (= call!175151 (++!7775 (ite c!438821 (ite c!438820 (right!24416 (c!438566 treated!9)) (right!24416 (right!24416 (c!438566 treated!9)))) (c!438566 treated!9)) (ite c!438821 (c!438566 lt!960679) (ite c!438818 (left!24086 (c!438566 lt!960679)) (left!24086 (left!24086 (c!438566 lt!960679)))))))))

(declare-fun bm!175150 () Bool)

(assert (=> bm!175150 (= call!175148 call!175154)))

(declare-fun b!2716094 () Bool)

(assert (=> b!2716094 (= e!1711954 (c!438566 treated!9))))

(declare-fun bm!175151 () Bool)

(assert (=> bm!175151 (= call!175149 call!175152)))

(declare-fun bm!175152 () Bool)

(assert (=> bm!175152 (= call!175150 (height!1452 (ite c!438821 (left!24086 (c!438566 treated!9)) (right!24416 (c!438566 lt!960679)))))))

(declare-fun d!782250 () Bool)

(assert (=> d!782250 e!1711946))

(declare-fun res!1140707 () Bool)

(assert (=> d!782250 (=> (not res!1140707) (not e!1711946))))

(assert (=> d!782250 (= res!1140707 (appendAssocInst!689 (c!438566 treated!9) (c!438566 lt!960679)))))

(assert (=> d!782250 (= lt!961039 e!1711950)))

(declare-fun c!438814 () Bool)

(assert (=> d!782250 (= c!438814 (= (c!438566 treated!9) Empty!9809))))

(assert (=> d!782250 e!1711948))

(declare-fun res!1140704 () Bool)

(assert (=> d!782250 (=> (not res!1140704) (not e!1711948))))

(assert (=> d!782250 (= res!1140704 (isBalanced!2972 (c!438566 treated!9)))))

(assert (=> d!782250 (= (++!7775 (c!438566 treated!9) (c!438566 lt!960679)) lt!961039)))

(declare-fun b!2716095 () Bool)

(assert (=> b!2716095 (= e!1711953 call!175154)))

(declare-fun b!2716096 () Bool)

(assert (=> b!2716096 (= e!1711949 call!175145)))

(declare-fun bm!175153 () Bool)

(assert (=> bm!175153 (= call!175145 (<>!254 (ite c!438817 (c!438566 treated!9) (ite c!438821 (ite c!438819 (left!24086 (right!24416 (c!438566 treated!9))) (left!24086 (c!438566 treated!9))) (ite c!438816 call!175155 lt!961037))) (ite c!438817 (c!438566 lt!960679) (ite c!438821 (ite c!438819 lt!961038 (left!24086 (right!24416 (c!438566 treated!9)))) (ite c!438816 (right!24416 (c!438566 lt!960679)) call!175155)))))))

(assert (= (and d!782250 res!1140704) b!2716084))

(assert (= (and d!782250 c!438814) b!2716080))

(assert (= (and d!782250 (not c!438814)) b!2716088))

(assert (= (and b!2716088 c!438815) b!2716094))

(assert (= (and b!2716088 (not c!438815)) b!2716091))

(assert (= (and b!2716091 c!438817) b!2716096))

(assert (= (and b!2716091 (not c!438817)) b!2716078))

(assert (= (and b!2716078 c!438821) b!2716090))

(assert (= (and b!2716078 (not c!438821)) b!2716086))

(assert (= (and b!2716090 c!438820) b!2716095))

(assert (= (and b!2716090 (not c!438820)) b!2716089))

(assert (= (and b!2716089 c!438819) b!2716085))

(assert (= (and b!2716089 (not c!438819)) b!2716077))

(assert (= (or b!2716085 b!2716077) bm!175143))

(assert (= (or b!2716085 b!2716077) bm!175150))

(assert (= (or b!2716095 b!2716089) bm!175142))

(assert (= (or b!2716095 bm!175150) bm!175144))

(assert (= (and b!2716086 c!438818) b!2716083))

(assert (= (and b!2716086 (not c!438818)) b!2716082))

(assert (= (and b!2716082 c!438816) b!2716079))

(assert (= (and b!2716082 (not c!438816)) b!2716093))

(assert (= (or b!2716079 b!2716093) bm!175141))

(assert (= (or b!2716079 b!2716093) bm!175151))

(assert (= (or b!2716083 b!2716082) bm!175146))

(assert (= (or b!2716083 bm!175141) bm!175138))

(assert (= (or b!2716090 b!2716086) bm!175152))

(assert (= (or bm!175143 bm!175151) bm!175140))

(assert (= (or b!2716089 b!2716082) bm!175145))

(assert (= (or b!2716090 b!2716086) bm!175139))

(assert (= (or bm!175142 bm!175146) bm!175149))

(assert (= (or b!2716089 b!2716082) bm!175147))

(assert (= (or bm!175144 bm!175138) bm!175148))

(assert (= (or b!2716096 bm!175140) bm!175153))

(assert (= (and d!782250 res!1140707) b!2716081))

(assert (= (and b!2716081 res!1140705) b!2716092))

(assert (= (and b!2716092 res!1140706) b!2716076))

(assert (= (and b!2716076 res!1140703) b!2716087))

(declare-fun m!3113953 () Bool)

(assert (=> bm!175152 m!3113953))

(declare-fun m!3113955 () Bool)

(assert (=> bm!175149 m!3113955))

(declare-fun m!3113957 () Bool)

(assert (=> b!2716081 m!3113957))

(declare-fun m!3113959 () Bool)

(assert (=> bm!175147 m!3113959))

(assert (=> b!2716091 m!3113139))

(assert (=> b!2716091 m!3113135))

(declare-fun m!3113961 () Bool)

(assert (=> b!2716087 m!3113961))

(assert (=> b!2716087 m!3113263))

(assert (=> b!2716087 m!3113077))

(assert (=> b!2716087 m!3113263))

(assert (=> b!2716087 m!3113077))

(declare-fun m!3113963 () Bool)

(assert (=> b!2716087 m!3113963))

(declare-fun m!3113965 () Bool)

(assert (=> b!2716076 m!3113965))

(assert (=> b!2716076 m!3113135))

(assert (=> b!2716076 m!3113139))

(assert (=> b!2716076 m!3113135))

(assert (=> b!2716076 m!3113139))

(assert (=> b!2716076 m!3113141))

(declare-fun m!3113967 () Bool)

(assert (=> bm!175153 m!3113967))

(declare-fun m!3113969 () Bool)

(assert (=> bm!175148 m!3113969))

(declare-fun m!3113971 () Bool)

(assert (=> b!2716084 m!3113971))

(assert (=> d!782250 m!3113151))

(assert (=> d!782250 m!3113271))

(declare-fun m!3113973 () Bool)

(assert (=> bm!175145 m!3113973))

(declare-fun m!3113975 () Bool)

(assert (=> bm!175139 m!3113975))

(assert (=> b!2716092 m!3113965))

(assert (=> b!2716092 m!3113135))

(assert (=> b!2716092 m!3113139))

(assert (=> b!2716092 m!3113135))

(assert (=> b!2716092 m!3113139))

(assert (=> b!2716092 m!3113141))

(assert (=> b!2715485 d!782250))

(assert (=> d!781988 d!782212))

(declare-fun d!782252 () Bool)

(assert (=> d!782252 (isPrefix!2483 lt!960872 lt!960873)))

(declare-fun lt!961043 () Unit!45356)

(declare-fun choose!15973 (List!31428 List!31428) Unit!45356)

(assert (=> d!782252 (= lt!961043 (choose!15973 lt!960872 lt!960873))))

(assert (=> d!782252 (= (lemmaIsPrefixRefl!1609 lt!960872 lt!960873) lt!961043)))

(declare-fun bs!488133 () Bool)

(assert (= bs!488133 d!782252))

(assert (=> bs!488133 m!3113173))

(declare-fun m!3113977 () Bool)

(assert (=> bs!488133 m!3113977))

(assert (=> d!781988 d!782252))

(declare-fun d!782254 () Bool)

(declare-fun isEmpty!17871 (Option!6185) Bool)

(assert (=> d!782254 (= (isDefined!4894 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 lt!960675))) (not (isEmpty!17871 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 lt!960675)))))))

(declare-fun bs!488134 () Bool)

(assert (= bs!488134 d!782254))

(assert (=> bs!488134 m!3113153))

(declare-fun m!3113979 () Bool)

(assert (=> bs!488134 m!3113979))

(assert (=> d!781988 d!782254))

(declare-fun d!782256 () Bool)

(declare-fun e!1711962 () Bool)

(assert (=> d!782256 e!1711962))

(declare-fun res!1140719 () Bool)

(assert (=> d!782256 (=> res!1140719 e!1711962)))

(declare-fun lt!961046 () Bool)

(assert (=> d!782256 (= res!1140719 (not lt!961046))))

(declare-fun e!1711961 () Bool)

(assert (=> d!782256 (= lt!961046 e!1711961)))

(declare-fun res!1140717 () Bool)

(assert (=> d!782256 (=> res!1140717 e!1711961)))

(assert (=> d!782256 (= res!1140717 ((_ is Nil!31328) lt!960872))))

(assert (=> d!782256 (= (isPrefix!2483 lt!960872 lt!960873) lt!961046)))

(declare-fun b!2716105 () Bool)

(declare-fun e!1711963 () Bool)

(assert (=> b!2716105 (= e!1711961 e!1711963)))

(declare-fun res!1140718 () Bool)

(assert (=> b!2716105 (=> (not res!1140718) (not e!1711963))))

(assert (=> b!2716105 (= res!1140718 (not ((_ is Nil!31328) lt!960873)))))

(declare-fun b!2716107 () Bool)

(declare-fun tail!4334 (List!31428) List!31428)

(assert (=> b!2716107 (= e!1711963 (isPrefix!2483 (tail!4334 lt!960872) (tail!4334 lt!960873)))))

(declare-fun b!2716106 () Bool)

(declare-fun res!1140716 () Bool)

(assert (=> b!2716106 (=> (not res!1140716) (not e!1711963))))

(declare-fun head!6096 (List!31428) C!16044)

(assert (=> b!2716106 (= res!1140716 (= (head!6096 lt!960872) (head!6096 lt!960873)))))

(declare-fun b!2716108 () Bool)

(assert (=> b!2716108 (= e!1711962 (>= (size!24174 lt!960873) (size!24174 lt!960872)))))

(assert (= (and d!782256 (not res!1140717)) b!2716105))

(assert (= (and b!2716105 res!1140718) b!2716106))

(assert (= (and b!2716106 res!1140716) b!2716107))

(assert (= (and d!782256 (not res!1140719)) b!2716108))

(declare-fun m!3113981 () Bool)

(assert (=> b!2716107 m!3113981))

(declare-fun m!3113983 () Bool)

(assert (=> b!2716107 m!3113983))

(assert (=> b!2716107 m!3113981))

(assert (=> b!2716107 m!3113983))

(declare-fun m!3113985 () Bool)

(assert (=> b!2716107 m!3113985))

(declare-fun m!3113987 () Bool)

(assert (=> b!2716106 m!3113987))

(declare-fun m!3113989 () Bool)

(assert (=> b!2716106 m!3113989))

(declare-fun m!3113991 () Bool)

(assert (=> b!2716108 m!3113991))

(declare-fun m!3113993 () Bool)

(assert (=> b!2716108 m!3113993))

(assert (=> d!781988 d!782256))

(declare-fun d!782258 () Bool)

(assert (=> d!782258 true))

(declare-fun lt!961120 () Bool)

(declare-fun lambda!100545 () Int)

(declare-fun forall!6559 (List!31430 Int) Bool)

(assert (=> d!782258 (= lt!961120 (forall!6559 rules!1182 lambda!100545))))

(declare-fun e!1712046 () Bool)

(assert (=> d!782258 (= lt!961120 e!1712046)))

(declare-fun res!1140780 () Bool)

(assert (=> d!782258 (=> res!1140780 e!1712046)))

(assert (=> d!782258 (= res!1140780 (not ((_ is Cons!31330) rules!1182)))))

(assert (=> d!782258 (= (rulesValidInductive!1667 thiss!11556 rules!1182) lt!961120)))

(declare-fun b!2716263 () Bool)

(declare-fun e!1712045 () Bool)

(assert (=> b!2716263 (= e!1712046 e!1712045)))

(declare-fun res!1140781 () Bool)

(assert (=> b!2716263 (=> (not res!1140781) (not e!1712045))))

(declare-fun ruleValid!1567 (LexerInterface!4387 Rule!9382) Bool)

(assert (=> b!2716263 (= res!1140781 (ruleValid!1567 thiss!11556 (h!36750 rules!1182)))))

(declare-fun b!2716264 () Bool)

(assert (=> b!2716264 (= e!1712045 (rulesValidInductive!1667 thiss!11556 (t!226248 rules!1182)))))

(assert (= (and d!782258 (not res!1140780)) b!2716263))

(assert (= (and b!2716263 res!1140781) b!2716264))

(declare-fun m!3114159 () Bool)

(assert (=> d!782258 m!3114159))

(declare-fun m!3114161 () Bool)

(assert (=> b!2716263 m!3114161))

(declare-fun m!3114163 () Bool)

(assert (=> b!2716264 m!3114163))

(assert (=> d!781988 d!782258))

(declare-fun d!782322 () Bool)

(declare-fun lt!961121 () Option!6185)

(assert (=> d!782322 (= lt!961121 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 lt!960675)))))

(declare-fun e!1712047 () Option!6185)

(assert (=> d!782322 (= lt!961121 e!1712047)))

(declare-fun c!438868 () Bool)

(assert (=> d!782322 (= c!438868 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!961123 () Unit!45356)

(declare-fun lt!961124 () Unit!45356)

(assert (=> d!782322 (= lt!961123 lt!961124)))

(assert (=> d!782322 (isPrefix!2483 (list!11856 lt!960675) (list!11856 lt!960675))))

(assert (=> d!782322 (= lt!961124 (lemmaIsPrefixRefl!1609 (list!11856 lt!960675) (list!11856 lt!960675)))))

(assert (=> d!782322 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!782322 (= (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 lt!960675)) lt!961121)))

(declare-fun call!175211 () Option!6185)

(declare-fun bm!175206 () Bool)

(assert (=> bm!175206 (= call!175211 (maxPrefixOneRuleZipper!178 thiss!11556 (h!36750 rules!1182) (list!11856 lt!960675)))))

(declare-fun b!2716267 () Bool)

(assert (=> b!2716267 (= e!1712047 call!175211)))

(declare-fun b!2716268 () Bool)

(declare-fun lt!961125 () Option!6185)

(declare-fun lt!961122 () Option!6185)

(assert (=> b!2716268 (= e!1712047 (ite (and ((_ is None!6184) lt!961125) ((_ is None!6184) lt!961122)) None!6184 (ite ((_ is None!6184) lt!961122) lt!961125 (ite ((_ is None!6184) lt!961125) lt!961122 (ite (>= (size!24166 (_1!18131 (v!33020 lt!961125))) (size!24166 (_1!18131 (v!33020 lt!961122)))) lt!961125 lt!961122)))))))

(assert (=> b!2716268 (= lt!961125 call!175211)))

(assert (=> b!2716268 (= lt!961122 (maxPrefixZipper!470 thiss!11556 (t!226248 rules!1182) (list!11856 lt!960675)))))

(assert (= (and d!782322 c!438868) b!2716267))

(assert (= (and d!782322 (not c!438868)) b!2716268))

(assert (= (or b!2716267 b!2716268) bm!175206))

(assert (=> d!782322 m!3112299))

(assert (=> d!782322 m!3113175))

(assert (=> d!782322 m!3112299))

(assert (=> d!782322 m!3112299))

(declare-fun m!3114165 () Bool)

(assert (=> d!782322 m!3114165))

(assert (=> d!782322 m!3112299))

(assert (=> d!782322 m!3112299))

(declare-fun m!3114167 () Bool)

(assert (=> d!782322 m!3114167))

(assert (=> d!782322 m!3113171))

(assert (=> bm!175206 m!3112299))

(declare-fun m!3114169 () Bool)

(assert (=> bm!175206 m!3114169))

(assert (=> b!2716268 m!3112299))

(declare-fun m!3114171 () Bool)

(assert (=> b!2716268 m!3114171))

(assert (=> d!781988 d!782322))

(assert (=> d!781988 d!781972))

(declare-fun d!782324 () Bool)

(declare-fun e!1712048 () Bool)

(assert (=> d!782324 e!1712048))

(declare-fun res!1140782 () Bool)

(assert (=> d!782324 (=> (not res!1140782) (not e!1712048))))

(assert (=> d!782324 (= res!1140782 (isBalanced!2971 (prepend!1119 (c!438567 (_1!18127 lt!960776)) (_1!18128 (v!33014 lt!960775)))))))

(declare-fun lt!961126 () BalanceConc!19234)

(assert (=> d!782324 (= lt!961126 (BalanceConc!19235 (prepend!1119 (c!438567 (_1!18127 lt!960776)) (_1!18128 (v!33014 lt!960775)))))))

(assert (=> d!782324 (= (prepend!1117 (_1!18127 lt!960776) (_1!18128 (v!33014 lt!960775))) lt!961126)))

(declare-fun b!2716269 () Bool)

(assert (=> b!2716269 (= e!1712048 (= (list!11857 lt!961126) (Cons!31329 (_1!18128 (v!33014 lt!960775)) (list!11857 (_1!18127 lt!960776)))))))

(assert (= (and d!782324 res!1140782) b!2716269))

(declare-fun m!3114173 () Bool)

(assert (=> d!782324 m!3114173))

(assert (=> d!782324 m!3114173))

(declare-fun m!3114175 () Bool)

(assert (=> d!782324 m!3114175))

(declare-fun m!3114177 () Bool)

(assert (=> b!2716269 m!3114177))

(declare-fun m!3114179 () Bool)

(assert (=> b!2716269 m!3114179))

(assert (=> b!2715298 d!782324))

(declare-fun d!782326 () Bool)

(declare-fun e!1712050 () Bool)

(assert (=> d!782326 e!1712050))

(declare-fun res!1140784 () Bool)

(assert (=> d!782326 (=> (not res!1140784) (not e!1712050))))

(declare-fun e!1712049 () Bool)

(assert (=> d!782326 (= res!1140784 e!1712049)))

(declare-fun c!438869 () Bool)

(declare-fun lt!961129 () tuple2!30990)

(assert (=> d!782326 (= c!438869 (> (size!24170 (_1!18127 lt!961129)) 0))))

(declare-fun e!1712052 () tuple2!30990)

(assert (=> d!782326 (= lt!961129 e!1712052)))

(declare-fun c!438870 () Bool)

(declare-fun lt!961127 () Option!6183)

(assert (=> d!782326 (= c!438870 ((_ is Some!6182) lt!961127))))

(assert (=> d!782326 (= lt!961127 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960775))))))

(assert (=> d!782326 (= (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960775))) lt!961129)))

(declare-fun b!2716270 () Bool)

(declare-fun res!1140783 () Bool)

(assert (=> b!2716270 (=> (not res!1140783) (not e!1712050))))

(assert (=> b!2716270 (= res!1140783 (= (list!11857 (_1!18127 lt!961129)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960775)))))))))

(declare-fun b!2716271 () Bool)

(declare-fun e!1712051 () Bool)

(assert (=> b!2716271 (= e!1712049 e!1712051)))

(declare-fun res!1140785 () Bool)

(assert (=> b!2716271 (= res!1140785 (< (size!24171 (_2!18127 lt!961129)) (size!24171 (_2!18128 (v!33014 lt!960775)))))))

(assert (=> b!2716271 (=> (not res!1140785) (not e!1712051))))

(declare-fun b!2716272 () Bool)

(assert (=> b!2716272 (= e!1712052 (tuple2!30991 (BalanceConc!19235 Empty!9810) (_2!18128 (v!33014 lt!960775))))))

(declare-fun b!2716273 () Bool)

(assert (=> b!2716273 (= e!1712051 (not (isEmpty!17860 (_1!18127 lt!961129))))))

(declare-fun b!2716274 () Bool)

(assert (=> b!2716274 (= e!1712049 (= (list!11856 (_2!18127 lt!961129)) (list!11856 (_2!18128 (v!33014 lt!960775)))))))

(declare-fun b!2716275 () Bool)

(assert (=> b!2716275 (= e!1712050 (= (list!11856 (_2!18127 lt!961129)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960775)))))))))

(declare-fun b!2716276 () Bool)

(declare-fun lt!961128 () tuple2!30990)

(assert (=> b!2716276 (= e!1712052 (tuple2!30991 (prepend!1117 (_1!18127 lt!961128) (_1!18128 (v!33014 lt!961127))) (_2!18127 lt!961128)))))

(assert (=> b!2716276 (= lt!961128 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!961127))))))

(assert (= (and d!782326 c!438870) b!2716276))

(assert (= (and d!782326 (not c!438870)) b!2716272))

(assert (= (and d!782326 c!438869) b!2716271))

(assert (= (and d!782326 (not c!438869)) b!2716274))

(assert (= (and b!2716271 res!1140785) b!2716273))

(assert (= (and d!782326 res!1140784) b!2716270))

(assert (= (and b!2716270 res!1140783) b!2716275))

(declare-fun m!3114181 () Bool)

(assert (=> b!2716271 m!3114181))

(declare-fun m!3114183 () Bool)

(assert (=> b!2716271 m!3114183))

(declare-fun m!3114185 () Bool)

(assert (=> b!2716273 m!3114185))

(declare-fun m!3114187 () Bool)

(assert (=> b!2716270 m!3114187))

(declare-fun m!3114189 () Bool)

(assert (=> b!2716270 m!3114189))

(assert (=> b!2716270 m!3114189))

(declare-fun m!3114191 () Bool)

(assert (=> b!2716270 m!3114191))

(declare-fun m!3114193 () Bool)

(assert (=> d!782326 m!3114193))

(declare-fun m!3114195 () Bool)

(assert (=> d!782326 m!3114195))

(declare-fun m!3114197 () Bool)

(assert (=> b!2716274 m!3114197))

(assert (=> b!2716274 m!3114189))

(assert (=> b!2716275 m!3114197))

(assert (=> b!2716275 m!3114189))

(assert (=> b!2716275 m!3114189))

(assert (=> b!2716275 m!3114191))

(declare-fun m!3114199 () Bool)

(assert (=> b!2716276 m!3114199))

(declare-fun m!3114201 () Bool)

(assert (=> b!2716276 m!3114201))

(assert (=> b!2715298 d!782326))

(declare-fun d!782328 () Bool)

(declare-fun lt!961140 () Int)

(assert (=> d!782328 (= lt!961140 (size!24174 (list!11856 (_2!18127 lt!960763))))))

(assert (=> d!782328 (= lt!961140 (size!24176 (c!438566 (_2!18127 lt!960763))))))

(assert (=> d!782328 (= (size!24171 (_2!18127 lt!960763)) lt!961140)))

(declare-fun bs!488143 () Bool)

(assert (= bs!488143 d!782328))

(assert (=> bs!488143 m!3112731))

(assert (=> bs!488143 m!3112731))

(declare-fun m!3114203 () Bool)

(assert (=> bs!488143 m!3114203))

(declare-fun m!3114205 () Bool)

(assert (=> bs!488143 m!3114205))

(assert (=> b!2715242 d!782328))

(declare-fun d!782330 () Bool)

(declare-fun lt!961141 () Int)

(assert (=> d!782330 (= lt!961141 (size!24174 (list!11856 (_2!18128 (v!33014 lt!960677)))))))

(assert (=> d!782330 (= lt!961141 (size!24176 (c!438566 (_2!18128 (v!33014 lt!960677)))))))

(assert (=> d!782330 (= (size!24171 (_2!18128 (v!33014 lt!960677))) lt!961141)))

(declare-fun bs!488144 () Bool)

(assert (= bs!488144 d!782330))

(assert (=> bs!488144 m!3112723))

(assert (=> bs!488144 m!3112723))

(declare-fun m!3114207 () Bool)

(assert (=> bs!488144 m!3114207))

(declare-fun m!3114209 () Bool)

(assert (=> bs!488144 m!3114209))

(assert (=> b!2715242 d!782330))

(declare-fun d!782332 () Bool)

(declare-fun c!438872 () Bool)

(assert (=> d!782332 (= c!438872 ((_ is Nil!31328) lt!960884))))

(declare-fun e!1712060 () (InoxSet C!16044))

(assert (=> d!782332 (= (content!4438 lt!960884) e!1712060)))

(declare-fun b!2716287 () Bool)

(assert (=> b!2716287 (= e!1712060 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2716288 () Bool)

(assert (=> b!2716288 (= e!1712060 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960884) true) (content!4438 (t!226246 lt!960884))))))

(assert (= (and d!782332 c!438872) b!2716287))

(assert (= (and d!782332 (not c!438872)) b!2716288))

(declare-fun m!3114211 () Bool)

(assert (=> b!2716288 m!3114211))

(declare-fun m!3114213 () Bool)

(assert (=> b!2716288 m!3114213))

(assert (=> d!782004 d!782332))

(declare-fun d!782334 () Bool)

(declare-fun c!438873 () Bool)

(assert (=> d!782334 (= c!438873 ((_ is Nil!31328) lt!960683))))

(declare-fun e!1712063 () (InoxSet C!16044))

(assert (=> d!782334 (= (content!4438 lt!960683) e!1712063)))

(declare-fun b!2716291 () Bool)

(assert (=> b!2716291 (= e!1712063 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2716292 () Bool)

(assert (=> b!2716292 (= e!1712063 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960683) true) (content!4438 (t!226246 lt!960683))))))

(assert (= (and d!782334 c!438873) b!2716291))

(assert (= (and d!782334 (not c!438873)) b!2716292))

(declare-fun m!3114215 () Bool)

(assert (=> b!2716292 m!3114215))

(declare-fun m!3114217 () Bool)

(assert (=> b!2716292 m!3114217))

(assert (=> d!782004 d!782334))

(declare-fun d!782336 () Bool)

(declare-fun c!438874 () Bool)

(assert (=> d!782336 (= c!438874 ((_ is Nil!31328) lt!960681))))

(declare-fun e!1712064 () (InoxSet C!16044))

(assert (=> d!782336 (= (content!4438 lt!960681) e!1712064)))

(declare-fun b!2716293 () Bool)

(assert (=> b!2716293 (= e!1712064 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2716294 () Bool)

(assert (=> b!2716294 (= e!1712064 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960681) true) (content!4438 (t!226246 lt!960681))))))

(assert (= (and d!782336 c!438874) b!2716293))

(assert (= (and d!782336 (not c!438874)) b!2716294))

(declare-fun m!3114219 () Bool)

(assert (=> b!2716294 m!3114219))

(declare-fun m!3114221 () Bool)

(assert (=> b!2716294 m!3114221))

(assert (=> d!782004 d!782336))

(assert (=> d!781952 d!781924))

(declare-fun d!782338 () Bool)

(assert (=> d!782338 (= (lexList!1218 thiss!11556 rules!1182 lt!960685) (tuple2!30995 lt!960673 Nil!31328))))

(assert (=> d!782338 true))

(declare-fun _$42!259 () Unit!45356)

(assert (=> d!782338 (= (choose!15969 thiss!11556 rules!1182 lt!960685 lt!960680 lt!960673 lt!960688 (list!11856 (_2!18127 lt!960670))) _$42!259)))

(declare-fun bs!488147 () Bool)

(assert (= bs!488147 d!782338))

(assert (=> bs!488147 m!3112307))

(assert (=> d!781952 d!782338))

(assert (=> d!781952 d!781878))

(declare-fun b!2716312 () Bool)

(declare-fun e!1712072 () List!31428)

(assert (=> b!2716312 (= e!1712072 (Cons!31328 (h!36748 (t!226246 lt!960668)) (++!7768 (t!226246 (t!226246 lt!960668)) lt!960680)))))

(declare-fun b!2716313 () Bool)

(declare-fun res!1140796 () Bool)

(declare-fun e!1712073 () Bool)

(assert (=> b!2716313 (=> (not res!1140796) (not e!1712073))))

(declare-fun lt!961144 () List!31428)

(assert (=> b!2716313 (= res!1140796 (= (size!24174 lt!961144) (+ (size!24174 (t!226246 lt!960668)) (size!24174 lt!960680))))))

(declare-fun b!2716314 () Bool)

(assert (=> b!2716314 (= e!1712073 (or (not (= lt!960680 Nil!31328)) (= lt!961144 (t!226246 lt!960668))))))

(declare-fun d!782350 () Bool)

(assert (=> d!782350 e!1712073))

(declare-fun res!1140797 () Bool)

(assert (=> d!782350 (=> (not res!1140797) (not e!1712073))))

(assert (=> d!782350 (= res!1140797 (= (content!4438 lt!961144) ((_ map or) (content!4438 (t!226246 lt!960668)) (content!4438 lt!960680))))))

(assert (=> d!782350 (= lt!961144 e!1712072)))

(declare-fun c!438877 () Bool)

(assert (=> d!782350 (= c!438877 ((_ is Nil!31328) (t!226246 lt!960668)))))

(assert (=> d!782350 (= (++!7768 (t!226246 lt!960668) lt!960680) lt!961144)))

(declare-fun b!2716311 () Bool)

(assert (=> b!2716311 (= e!1712072 lt!960680)))

(assert (= (and d!782350 c!438877) b!2716311))

(assert (= (and d!782350 (not c!438877)) b!2716312))

(assert (= (and d!782350 res!1140797) b!2716313))

(assert (= (and b!2716313 res!1140796) b!2716314))

(declare-fun m!3114277 () Bool)

(assert (=> b!2716312 m!3114277))

(declare-fun m!3114279 () Bool)

(assert (=> b!2716313 m!3114279))

(assert (=> b!2716313 m!3113647))

(assert (=> b!2716313 m!3112793))

(declare-fun m!3114281 () Bool)

(assert (=> d!782350 m!3114281))

(declare-fun m!3114283 () Bool)

(assert (=> d!782350 m!3114283))

(assert (=> d!782350 m!3112799))

(assert (=> b!2715285 d!782350))

(declare-fun d!782352 () Bool)

(declare-fun e!1712075 () Bool)

(assert (=> d!782352 e!1712075))

(declare-fun res!1140798 () Bool)

(assert (=> d!782352 (=> (not res!1140798) (not e!1712075))))

(declare-fun lt!961145 () List!31429)

(assert (=> d!782352 (= res!1140798 (= (content!4437 lt!961145) ((_ map or) (content!4437 (t!226247 lt!960676)) (content!4437 lt!960688))))))

(declare-fun e!1712074 () List!31429)

(assert (=> d!782352 (= lt!961145 e!1712074)))

(declare-fun c!438878 () Bool)

(assert (=> d!782352 (= c!438878 ((_ is Nil!31329) (t!226247 lt!960676)))))

(assert (=> d!782352 (= (++!7770 (t!226247 lt!960676) lt!960688) lt!961145)))

(declare-fun b!2716318 () Bool)

(assert (=> b!2716318 (= e!1712075 (or (not (= lt!960688 Nil!31329)) (= lt!961145 (t!226247 lt!960676))))))

(declare-fun b!2716315 () Bool)

(assert (=> b!2716315 (= e!1712074 lt!960688)))

(declare-fun b!2716316 () Bool)

(assert (=> b!2716316 (= e!1712074 (Cons!31329 (h!36749 (t!226247 lt!960676)) (++!7770 (t!226247 (t!226247 lt!960676)) lt!960688)))))

(declare-fun b!2716317 () Bool)

(declare-fun res!1140799 () Bool)

(assert (=> b!2716317 (=> (not res!1140799) (not e!1712075))))

(assert (=> b!2716317 (= res!1140799 (= (size!24173 lt!961145) (+ (size!24173 (t!226247 lt!960676)) (size!24173 lt!960688))))))

(assert (= (and d!782352 c!438878) b!2716315))

(assert (= (and d!782352 (not c!438878)) b!2716316))

(assert (= (and d!782352 res!1140798) b!2716317))

(assert (= (and b!2716317 res!1140799) b!2716318))

(declare-fun m!3114285 () Bool)

(assert (=> d!782352 m!3114285))

(declare-fun m!3114287 () Bool)

(assert (=> d!782352 m!3114287))

(assert (=> d!782352 m!3112805))

(declare-fun m!3114289 () Bool)

(assert (=> b!2716316 m!3114289))

(declare-fun m!3114291 () Bool)

(assert (=> b!2716317 m!3114291))

(declare-fun m!3114293 () Bool)

(assert (=> b!2716317 m!3114293))

(assert (=> b!2716317 m!3112813))

(assert (=> b!2715460 d!782352))

(declare-fun d!782354 () Bool)

(assert (=> d!782354 (= (list!11857 lt!960885) (list!11861 (c!438567 lt!960885)))))

(declare-fun bs!488148 () Bool)

(assert (= bs!488148 d!782354))

(declare-fun m!3114295 () Bool)

(assert (=> bs!488148 m!3114295))

(assert (=> b!2715545 d!782354))

(assert (=> b!2715545 d!781978))

(declare-fun d!782356 () Bool)

(assert (=> d!782356 (= (inv!42529 (xs!12872 (c!438566 treated!9))) (<= (size!24174 (innerList!9869 (xs!12872 (c!438566 treated!9)))) 2147483647))))

(declare-fun bs!488149 () Bool)

(assert (= bs!488149 d!782356))

(declare-fun m!3114297 () Bool)

(assert (=> bs!488149 m!3114297))

(assert (=> b!2715594 d!782356))

(assert (=> b!2715524 d!782184))

(assert (=> b!2715524 d!782008))

(declare-fun d!782358 () Bool)

(declare-fun res!1140806 () Bool)

(declare-fun e!1712078 () Bool)

(assert (=> d!782358 (=> (not res!1140806) (not e!1712078))))

(assert (=> d!782358 (= res!1140806 (= (csize!19850 (c!438567 acc!331)) (+ (size!24178 (left!24087 (c!438567 acc!331))) (size!24178 (right!24417 (c!438567 acc!331))))))))

(assert (=> d!782358 (= (inv!42523 (c!438567 acc!331)) e!1712078)))

(declare-fun b!2716325 () Bool)

(declare-fun res!1140807 () Bool)

(assert (=> b!2716325 (=> (not res!1140807) (not e!1712078))))

(assert (=> b!2716325 (= res!1140807 (and (not (= (left!24087 (c!438567 acc!331)) Empty!9810)) (not (= (right!24417 (c!438567 acc!331)) Empty!9810))))))

(declare-fun b!2716326 () Bool)

(declare-fun res!1140808 () Bool)

(assert (=> b!2716326 (=> (not res!1140808) (not e!1712078))))

(assert (=> b!2716326 (= res!1140808 (= (cheight!10021 (c!438567 acc!331)) (+ (max!0 (height!1451 (left!24087 (c!438567 acc!331))) (height!1451 (right!24417 (c!438567 acc!331)))) 1)))))

(declare-fun b!2716327 () Bool)

(assert (=> b!2716327 (= e!1712078 (<= 0 (cheight!10021 (c!438567 acc!331))))))

(assert (= (and d!782358 res!1140806) b!2716325))

(assert (= (and b!2716325 res!1140807) b!2716326))

(assert (= (and b!2716326 res!1140808) b!2716327))

(declare-fun m!3114299 () Bool)

(assert (=> d!782358 m!3114299))

(declare-fun m!3114301 () Bool)

(assert (=> d!782358 m!3114301))

(declare-fun m!3114303 () Bool)

(assert (=> b!2716326 m!3114303))

(declare-fun m!3114305 () Bool)

(assert (=> b!2716326 m!3114305))

(assert (=> b!2716326 m!3114303))

(assert (=> b!2716326 m!3114305))

(declare-fun m!3114307 () Bool)

(assert (=> b!2716326 m!3114307))

(assert (=> b!2715200 d!782358))

(declare-fun b!2716328 () Bool)

(declare-fun e!1712080 () Bool)

(declare-fun e!1712079 () Bool)

(assert (=> b!2716328 (= e!1712080 e!1712079)))

(declare-fun res!1140814 () Bool)

(assert (=> b!2716328 (=> (not res!1140814) (not e!1712079))))

(assert (=> b!2716328 (= res!1140814 (<= (- 1) (- (height!1451 (left!24087 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670))))) (height!1451 (right!24417 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670))))))))))

(declare-fun b!2716329 () Bool)

(declare-fun res!1140809 () Bool)

(assert (=> b!2716329 (=> (not res!1140809) (not e!1712079))))

(assert (=> b!2716329 (= res!1140809 (not (isEmpty!17866 (left!24087 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))))))))

(declare-fun d!782360 () Bool)

(declare-fun res!1140812 () Bool)

(assert (=> d!782360 (=> res!1140812 e!1712080)))

(assert (=> d!782360 (= res!1140812 (not ((_ is Node!9810) (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670))))))))

(assert (=> d!782360 (= (isBalanced!2971 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))) e!1712080)))

(declare-fun b!2716330 () Bool)

(declare-fun res!1140811 () Bool)

(assert (=> b!2716330 (=> (not res!1140811) (not e!1712079))))

(assert (=> b!2716330 (= res!1140811 (isBalanced!2971 (left!24087 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670))))))))

(declare-fun b!2716331 () Bool)

(assert (=> b!2716331 (= e!1712079 (not (isEmpty!17866 (right!24417 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))))))))

(declare-fun b!2716332 () Bool)

(declare-fun res!1140813 () Bool)

(assert (=> b!2716332 (=> (not res!1140813) (not e!1712079))))

(assert (=> b!2716332 (= res!1140813 (<= (- (height!1451 (left!24087 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670))))) (height!1451 (right!24417 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670)))))) 1))))

(declare-fun b!2716333 () Bool)

(declare-fun res!1140810 () Bool)

(assert (=> b!2716333 (=> (not res!1140810) (not e!1712079))))

(assert (=> b!2716333 (= res!1140810 (isBalanced!2971 (right!24417 (++!7774 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670))))))))

(assert (= (and d!782360 (not res!1140812)) b!2716328))

(assert (= (and b!2716328 res!1140814) b!2716332))

(assert (= (and b!2716332 res!1140813) b!2716330))

(assert (= (and b!2716330 res!1140811) b!2716333))

(assert (= (and b!2716333 res!1140810) b!2716329))

(assert (= (and b!2716329 res!1140809) b!2716331))

(declare-fun m!3114309 () Bool)

(assert (=> b!2716328 m!3114309))

(declare-fun m!3114311 () Bool)

(assert (=> b!2716328 m!3114311))

(declare-fun m!3114313 () Bool)

(assert (=> b!2716333 m!3114313))

(declare-fun m!3114315 () Bool)

(assert (=> b!2716331 m!3114315))

(declare-fun m!3114317 () Bool)

(assert (=> b!2716329 m!3114317))

(declare-fun m!3114319 () Bool)

(assert (=> b!2716330 m!3114319))

(assert (=> b!2716332 m!3114309))

(assert (=> b!2716332 m!3114311))

(assert (=> b!2715256 d!782360))

(assert (=> b!2715256 d!782070))

(declare-fun d!782362 () Bool)

(declare-fun c!438879 () Bool)

(assert (=> d!782362 (= c!438879 ((_ is Empty!9809) (c!438566 input!603)))))

(declare-fun e!1712081 () List!31428)

(assert (=> d!782362 (= (list!11860 (c!438566 input!603)) e!1712081)))

(declare-fun b!2716337 () Bool)

(declare-fun e!1712082 () List!31428)

(assert (=> b!2716337 (= e!1712082 (++!7768 (list!11860 (left!24086 (c!438566 input!603))) (list!11860 (right!24416 (c!438566 input!603)))))))

(declare-fun b!2716334 () Bool)

(assert (=> b!2716334 (= e!1712081 Nil!31328)))

(declare-fun b!2716336 () Bool)

(assert (=> b!2716336 (= e!1712082 (list!11864 (xs!12872 (c!438566 input!603))))))

(declare-fun b!2716335 () Bool)

(assert (=> b!2716335 (= e!1712081 e!1712082)))

(declare-fun c!438880 () Bool)

(assert (=> b!2716335 (= c!438880 ((_ is Leaf!14949) (c!438566 input!603)))))

(assert (= (and d!782362 c!438879) b!2716334))

(assert (= (and d!782362 (not c!438879)) b!2716335))

(assert (= (and b!2716335 c!438880) b!2716336))

(assert (= (and b!2716335 (not c!438880)) b!2716337))

(declare-fun m!3114321 () Bool)

(assert (=> b!2716337 m!3114321))

(declare-fun m!3114323 () Bool)

(assert (=> b!2716337 m!3114323))

(assert (=> b!2716337 m!3114321))

(assert (=> b!2716337 m!3114323))

(declare-fun m!3114325 () Bool)

(assert (=> b!2716337 m!3114325))

(declare-fun m!3114327 () Bool)

(assert (=> b!2716336 m!3114327))

(assert (=> d!782008 d!782362))

(declare-fun d!782364 () Bool)

(assert (=> d!782364 (= (inv!42529 (xs!12872 (c!438566 input!603))) (<= (size!24174 (innerList!9869 (xs!12872 (c!438566 input!603)))) 2147483647))))

(declare-fun bs!488150 () Bool)

(assert (= bs!488150 d!782364))

(declare-fun m!3114329 () Bool)

(assert (=> bs!488150 m!3114329))

(assert (=> b!2715591 d!782364))

(declare-fun d!782366 () Bool)

(assert (=> d!782366 (= (list!11857 (_1!18127 lt!960777)) (list!11861 (c!438567 (_1!18127 lt!960777))))))

(declare-fun bs!488151 () Bool)

(assert (= bs!488151 d!782366))

(declare-fun m!3114331 () Bool)

(assert (=> bs!488151 m!3114331))

(assert (=> b!2715292 d!782366))

(declare-fun b!2716338 () Bool)

(declare-fun e!1712083 () tuple2!30994)

(declare-fun lt!961146 () Option!6185)

(declare-fun lt!961148 () tuple2!30994)

(assert (=> b!2716338 (= e!1712083 (tuple2!30995 (Cons!31329 (_1!18131 (v!33020 lt!961146)) (_1!18129 lt!961148)) (_2!18129 lt!961148)))))

(assert (=> b!2716338 (= lt!961148 (lexList!1218 thiss!11556 rules!1182 (_2!18131 (v!33020 lt!961146))))))

(declare-fun b!2716339 () Bool)

(assert (=> b!2716339 (= e!1712083 (tuple2!30995 Nil!31329 (list!11856 (_2!18128 (v!33014 lt!960664)))))))

(declare-fun d!782368 () Bool)

(declare-fun e!1712084 () Bool)

(assert (=> d!782368 e!1712084))

(declare-fun c!438881 () Bool)

(declare-fun lt!961147 () tuple2!30994)

(assert (=> d!782368 (= c!438881 (> (size!24173 (_1!18129 lt!961147)) 0))))

(assert (=> d!782368 (= lt!961147 e!1712083)))

(declare-fun c!438882 () Bool)

(assert (=> d!782368 (= c!438882 ((_ is Some!6184) lt!961146))))

(assert (=> d!782368 (= lt!961146 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960664)))))))

(assert (=> d!782368 (= (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960664)))) lt!961147)))

(declare-fun b!2716340 () Bool)

(declare-fun e!1712085 () Bool)

(assert (=> b!2716340 (= e!1712084 e!1712085)))

(declare-fun res!1140815 () Bool)

(assert (=> b!2716340 (= res!1140815 (< (size!24174 (_2!18129 lt!961147)) (size!24174 (list!11856 (_2!18128 (v!33014 lt!960664))))))))

(assert (=> b!2716340 (=> (not res!1140815) (not e!1712085))))

(declare-fun b!2716341 () Bool)

(assert (=> b!2716341 (= e!1712085 (not (isEmpty!17862 (_1!18129 lt!961147))))))

(declare-fun b!2716342 () Bool)

(assert (=> b!2716342 (= e!1712084 (= (_2!18129 lt!961147) (list!11856 (_2!18128 (v!33014 lt!960664)))))))

(assert (= (and d!782368 c!438882) b!2716338))

(assert (= (and d!782368 (not c!438882)) b!2716339))

(assert (= (and d!782368 c!438881) b!2716340))

(assert (= (and d!782368 (not c!438881)) b!2716342))

(assert (= (and b!2716340 res!1140815) b!2716341))

(declare-fun m!3114333 () Bool)

(assert (=> b!2716338 m!3114333))

(declare-fun m!3114335 () Bool)

(assert (=> d!782368 m!3114335))

(assert (=> d!782368 m!3112315))

(declare-fun m!3114337 () Bool)

(assert (=> d!782368 m!3114337))

(declare-fun m!3114339 () Bool)

(assert (=> b!2716340 m!3114339))

(assert (=> b!2716340 m!3112315))

(assert (=> b!2716340 m!3113639))

(declare-fun m!3114341 () Bool)

(assert (=> b!2716341 m!3114341))

(assert (=> b!2715292 d!782368))

(assert (=> b!2715292 d!781914))

(declare-fun d!782370 () Bool)

(assert (=> d!782370 (= (list!11857 (_1!18127 lt!960846)) (list!11861 (c!438567 (_1!18127 lt!960846))))))

(declare-fun bs!488152 () Bool)

(assert (= bs!488152 d!782370))

(declare-fun m!3114343 () Bool)

(assert (=> bs!488152 m!3114343))

(assert (=> b!2715463 d!782370))

(assert (=> b!2715463 d!782178))

(assert (=> b!2715463 d!781972))

(declare-fun d!782372 () Bool)

(declare-fun c!438883 () Bool)

(assert (=> d!782372 (= c!438883 ((_ is Node!9809) (left!24086 (c!438566 totalInput!328))))))

(declare-fun e!1712086 () Bool)

(assert (=> d!782372 (= (inv!42514 (left!24086 (c!438566 totalInput!328))) e!1712086)))

(declare-fun b!2716343 () Bool)

(assert (=> b!2716343 (= e!1712086 (inv!42525 (left!24086 (c!438566 totalInput!328))))))

(declare-fun b!2716344 () Bool)

(declare-fun e!1712087 () Bool)

(assert (=> b!2716344 (= e!1712086 e!1712087)))

(declare-fun res!1140816 () Bool)

(assert (=> b!2716344 (= res!1140816 (not ((_ is Leaf!14949) (left!24086 (c!438566 totalInput!328)))))))

(assert (=> b!2716344 (=> res!1140816 e!1712087)))

(declare-fun b!2716345 () Bool)

(assert (=> b!2716345 (= e!1712087 (inv!42526 (left!24086 (c!438566 totalInput!328))))))

(assert (= (and d!782372 c!438883) b!2716343))

(assert (= (and d!782372 (not c!438883)) b!2716344))

(assert (= (and b!2716344 (not res!1140816)) b!2716345))

(declare-fun m!3114345 () Bool)

(assert (=> b!2716343 m!3114345))

(declare-fun m!3114347 () Bool)

(assert (=> b!2716345 m!3114347))

(assert (=> b!2715607 d!782372))

(declare-fun d!782374 () Bool)

(declare-fun c!438884 () Bool)

(assert (=> d!782374 (= c!438884 ((_ is Node!9809) (right!24416 (c!438566 totalInput!328))))))

(declare-fun e!1712088 () Bool)

(assert (=> d!782374 (= (inv!42514 (right!24416 (c!438566 totalInput!328))) e!1712088)))

(declare-fun b!2716346 () Bool)

(assert (=> b!2716346 (= e!1712088 (inv!42525 (right!24416 (c!438566 totalInput!328))))))

(declare-fun b!2716347 () Bool)

(declare-fun e!1712089 () Bool)

(assert (=> b!2716347 (= e!1712088 e!1712089)))

(declare-fun res!1140817 () Bool)

(assert (=> b!2716347 (= res!1140817 (not ((_ is Leaf!14949) (right!24416 (c!438566 totalInput!328)))))))

(assert (=> b!2716347 (=> res!1140817 e!1712089)))

(declare-fun b!2716348 () Bool)

(assert (=> b!2716348 (= e!1712089 (inv!42526 (right!24416 (c!438566 totalInput!328))))))

(assert (= (and d!782374 c!438884) b!2716346))

(assert (= (and d!782374 (not c!438884)) b!2716347))

(assert (= (and b!2716347 (not res!1140817)) b!2716348))

(declare-fun m!3114349 () Bool)

(assert (=> b!2716346 m!3114349))

(declare-fun m!3114351 () Bool)

(assert (=> b!2716348 m!3114351))

(assert (=> b!2715607 d!782374))

(declare-fun d!782376 () Bool)

(assert (=> d!782376 true))

(declare-fun lambda!100552 () Int)

(declare-fun order!17115 () Int)

(declare-fun order!17117 () Int)

(declare-fun dynLambda!13498 (Int Int) Int)

(declare-fun dynLambda!13499 (Int Int) Int)

(assert (=> d!782376 (< (dynLambda!13498 order!17115 (toChars!6620 (transformation!4791 (h!36750 rules!1182)))) (dynLambda!13499 order!17117 lambda!100552))))

(assert (=> d!782376 true))

(declare-fun order!17119 () Int)

(declare-fun dynLambda!13500 (Int Int) Int)

(assert (=> d!782376 (< (dynLambda!13500 order!17119 (toValue!6761 (transformation!4791 (h!36750 rules!1182)))) (dynLambda!13499 order!17117 lambda!100552))))

(declare-fun Forall!1208 (Int) Bool)

(assert (=> d!782376 (= (semiInverseModEq!1975 (toChars!6620 (transformation!4791 (h!36750 rules!1182))) (toValue!6761 (transformation!4791 (h!36750 rules!1182)))) (Forall!1208 lambda!100552))))

(declare-fun bs!488153 () Bool)

(assert (= bs!488153 d!782376))

(declare-fun m!3114353 () Bool)

(assert (=> bs!488153 m!3114353))

(assert (=> d!781802 d!782376))

(declare-fun d!782378 () Bool)

(declare-fun res!1140826 () Bool)

(declare-fun e!1712110 () Bool)

(assert (=> d!782378 (=> (not res!1140826) (not e!1712110))))

(assert (=> d!782378 (= res!1140826 (= (csize!19848 (c!438566 totalInput!328)) (+ (size!24176 (left!24086 (c!438566 totalInput!328))) (size!24176 (right!24416 (c!438566 totalInput!328))))))))

(assert (=> d!782378 (= (inv!42525 (c!438566 totalInput!328)) e!1712110)))

(declare-fun b!2716393 () Bool)

(declare-fun res!1140827 () Bool)

(assert (=> b!2716393 (=> (not res!1140827) (not e!1712110))))

(assert (=> b!2716393 (= res!1140827 (and (not (= (left!24086 (c!438566 totalInput!328)) Empty!9809)) (not (= (right!24416 (c!438566 totalInput!328)) Empty!9809))))))

(declare-fun b!2716394 () Bool)

(declare-fun res!1140828 () Bool)

(assert (=> b!2716394 (=> (not res!1140828) (not e!1712110))))

(assert (=> b!2716394 (= res!1140828 (= (cheight!10020 (c!438566 totalInput!328)) (+ (max!0 (height!1452 (left!24086 (c!438566 totalInput!328))) (height!1452 (right!24416 (c!438566 totalInput!328)))) 1)))))

(declare-fun b!2716395 () Bool)

(assert (=> b!2716395 (= e!1712110 (<= 0 (cheight!10020 (c!438566 totalInput!328))))))

(assert (= (and d!782378 res!1140826) b!2716393))

(assert (= (and b!2716393 res!1140827) b!2716394))

(assert (= (and b!2716394 res!1140828) b!2716395))

(declare-fun m!3114355 () Bool)

(assert (=> d!782378 m!3114355))

(declare-fun m!3114357 () Bool)

(assert (=> d!782378 m!3114357))

(declare-fun m!3114359 () Bool)

(assert (=> b!2716394 m!3114359))

(declare-fun m!3114361 () Bool)

(assert (=> b!2716394 m!3114361))

(assert (=> b!2716394 m!3114359))

(assert (=> b!2716394 m!3114361))

(declare-fun m!3114363 () Bool)

(assert (=> b!2716394 m!3114363))

(assert (=> b!2715517 d!782378))

(declare-fun d!782380 () Bool)

(assert (=> d!782380 (= (list!11857 (_1!18127 lt!960879)) (list!11861 (c!438567 (_1!18127 lt!960879))))))

(declare-fun bs!488154 () Bool)

(assert (= bs!488154 d!782380))

(declare-fun m!3114365 () Bool)

(assert (=> bs!488154 m!3114365))

(assert (=> b!2715520 d!782380))

(assert (=> b!2715520 d!782186))

(assert (=> b!2715520 d!782008))

(declare-fun b!2716422 () Bool)

(declare-fun e!1712133 () Bool)

(declare-fun e!1712131 () Bool)

(assert (=> b!2716422 (= e!1712133 e!1712131)))

(declare-fun res!1140856 () Bool)

(assert (=> b!2716422 (=> res!1140856 e!1712131)))

(assert (=> b!2716422 (= res!1140856 (not ((_ is Node!9809) (left!24086 (c!438566 lt!960679)))))))

(declare-fun d!782382 () Bool)

(declare-fun e!1712135 () Bool)

(assert (=> d!782382 e!1712135))

(declare-fun res!1140859 () Bool)

(assert (=> d!782382 (=> (not res!1140859) (not e!1712135))))

(declare-fun e!1712132 () Bool)

(assert (=> d!782382 (= res!1140859 e!1712132)))

(declare-fun res!1140860 () Bool)

(assert (=> d!782382 (=> res!1140860 e!1712132)))

(assert (=> d!782382 (= res!1140860 (not ((_ is Node!9809) (c!438566 treated!9))))))

(assert (=> d!782382 (= (appendAssocInst!689 (c!438566 treated!9) (c!438566 lt!960679)) true)))

(declare-fun b!2716423 () Bool)

(declare-fun e!1712138 () Bool)

(declare-fun appendAssoc!195 (List!31428 List!31428 List!31428) Bool)

(assert (=> b!2716423 (= e!1712138 (appendAssoc!195 (++!7768 (list!11860 (c!438566 treated!9)) (list!11860 (left!24086 (left!24086 (c!438566 lt!960679))))) (list!11860 (right!24416 (left!24086 (c!438566 lt!960679)))) (list!11860 (right!24416 (c!438566 lt!960679)))))))

(declare-fun b!2716424 () Bool)

(declare-fun e!1712139 () Bool)

(assert (=> b!2716424 (= e!1712135 e!1712139)))

(declare-fun res!1140862 () Bool)

(assert (=> b!2716424 (=> res!1140862 e!1712139)))

(assert (=> b!2716424 (= res!1140862 (not ((_ is Node!9809) (c!438566 lt!960679))))))

(declare-fun b!2716425 () Bool)

(declare-fun e!1712134 () Bool)

(assert (=> b!2716425 (= e!1712134 (appendAssoc!195 (list!11860 (left!24086 (c!438566 treated!9))) (list!11860 (left!24086 (right!24416 (c!438566 treated!9)))) (++!7768 (list!11860 (right!24416 (right!24416 (c!438566 treated!9)))) (list!11860 (c!438566 lt!960679)))))))

(declare-fun b!2716426 () Bool)

(declare-fun e!1712137 () Bool)

(assert (=> b!2716426 (= e!1712137 e!1712134)))

(declare-fun res!1140858 () Bool)

(assert (=> b!2716426 (=> (not res!1140858) (not e!1712134))))

(assert (=> b!2716426 (= res!1140858 (appendAssoc!195 (list!11860 (left!24086 (right!24416 (c!438566 treated!9)))) (list!11860 (right!24416 (right!24416 (c!438566 treated!9)))) (list!11860 (c!438566 lt!960679))))))

(declare-fun b!2716427 () Bool)

(declare-fun e!1712136 () Bool)

(assert (=> b!2716427 (= e!1712136 e!1712137)))

(declare-fun res!1140863 () Bool)

(assert (=> b!2716427 (=> res!1140863 e!1712137)))

(assert (=> b!2716427 (= res!1140863 (not ((_ is Node!9809) (right!24416 (c!438566 treated!9)))))))

(declare-fun b!2716428 () Bool)

(assert (=> b!2716428 (= e!1712132 e!1712136)))

(declare-fun res!1140855 () Bool)

(assert (=> b!2716428 (=> (not res!1140855) (not e!1712136))))

(assert (=> b!2716428 (= res!1140855 (appendAssoc!195 (list!11860 (left!24086 (c!438566 treated!9))) (list!11860 (right!24416 (c!438566 treated!9))) (list!11860 (c!438566 lt!960679))))))

(declare-fun b!2716429 () Bool)

(assert (=> b!2716429 (= e!1712131 e!1712138)))

(declare-fun res!1140861 () Bool)

(assert (=> b!2716429 (=> (not res!1140861) (not e!1712138))))

(assert (=> b!2716429 (= res!1140861 (appendAssoc!195 (list!11860 (c!438566 treated!9)) (list!11860 (left!24086 (left!24086 (c!438566 lt!960679)))) (list!11860 (right!24416 (left!24086 (c!438566 lt!960679))))))))

(declare-fun b!2716430 () Bool)

(assert (=> b!2716430 (= e!1712139 e!1712133)))

(declare-fun res!1140857 () Bool)

(assert (=> b!2716430 (=> (not res!1140857) (not e!1712133))))

(assert (=> b!2716430 (= res!1140857 (appendAssoc!195 (list!11860 (c!438566 treated!9)) (list!11860 (left!24086 (c!438566 lt!960679))) (list!11860 (right!24416 (c!438566 lt!960679)))))))

(assert (= (and d!782382 (not res!1140860)) b!2716428))

(assert (= (and b!2716428 res!1140855) b!2716427))

(assert (= (and b!2716427 (not res!1140863)) b!2716426))

(assert (= (and b!2716426 res!1140858) b!2716425))

(assert (= (and d!782382 res!1140859) b!2716424))

(assert (= (and b!2716424 (not res!1140862)) b!2716430))

(assert (= (and b!2716430 res!1140857) b!2716422))

(assert (= (and b!2716422 (not res!1140856)) b!2716429))

(assert (= (and b!2716429 res!1140861) b!2716423))

(assert (=> b!2716428 m!3113709))

(assert (=> b!2716428 m!3113711))

(assert (=> b!2716428 m!3113077))

(assert (=> b!2716428 m!3113709))

(assert (=> b!2716428 m!3113711))

(assert (=> b!2716428 m!3113077))

(declare-fun m!3114367 () Bool)

(assert (=> b!2716428 m!3114367))

(declare-fun m!3114369 () Bool)

(assert (=> b!2716423 m!3114369))

(declare-fun m!3114371 () Bool)

(assert (=> b!2716423 m!3114371))

(declare-fun m!3114373 () Bool)

(assert (=> b!2716423 m!3114373))

(declare-fun m!3114375 () Bool)

(assert (=> b!2716423 m!3114375))

(declare-fun m!3114377 () Bool)

(assert (=> b!2716423 m!3114377))

(assert (=> b!2716423 m!3113263))

(assert (=> b!2716423 m!3114375))

(assert (=> b!2716423 m!3113263))

(assert (=> b!2716423 m!3114369))

(assert (=> b!2716423 m!3114371))

(assert (=> b!2716423 m!3114373))

(declare-fun m!3114379 () Bool)

(assert (=> b!2716425 m!3114379))

(assert (=> b!2716425 m!3113077))

(declare-fun m!3114381 () Bool)

(assert (=> b!2716425 m!3114381))

(assert (=> b!2716425 m!3113077))

(declare-fun m!3114383 () Bool)

(assert (=> b!2716425 m!3114383))

(assert (=> b!2716425 m!3113709))

(assert (=> b!2716425 m!3113709))

(assert (=> b!2716425 m!3114379))

(assert (=> b!2716425 m!3114383))

(declare-fun m!3114385 () Bool)

(assert (=> b!2716425 m!3114385))

(assert (=> b!2716425 m!3114381))

(assert (=> b!2716426 m!3114379))

(assert (=> b!2716426 m!3114381))

(assert (=> b!2716426 m!3113077))

(assert (=> b!2716426 m!3114379))

(assert (=> b!2716426 m!3114381))

(assert (=> b!2716426 m!3113077))

(declare-fun m!3114387 () Bool)

(assert (=> b!2716426 m!3114387))

(assert (=> b!2716429 m!3113263))

(assert (=> b!2716429 m!3114369))

(assert (=> b!2716429 m!3114373))

(assert (=> b!2716429 m!3113263))

(assert (=> b!2716429 m!3114369))

(assert (=> b!2716429 m!3114373))

(declare-fun m!3114389 () Bool)

(assert (=> b!2716429 m!3114389))

(assert (=> b!2716430 m!3113263))

(declare-fun m!3114391 () Bool)

(assert (=> b!2716430 m!3114391))

(assert (=> b!2716430 m!3114375))

(assert (=> b!2716430 m!3113263))

(assert (=> b!2716430 m!3114391))

(assert (=> b!2716430 m!3114375))

(declare-fun m!3114393 () Bool)

(assert (=> b!2716430 m!3114393))

(assert (=> d!781986 d!782382))

(assert (=> d!781986 d!782250))

(declare-fun d!782384 () Bool)

(declare-fun e!1712140 () Bool)

(assert (=> d!782384 e!1712140))

(declare-fun res!1140864 () Bool)

(assert (=> d!782384 (=> (not res!1140864) (not e!1712140))))

(assert (=> d!782384 (= res!1140864 (isBalanced!2971 (prepend!1119 (c!438567 (_1!18127 lt!960762)) (_1!18128 (v!33014 lt!960761)))))))

(declare-fun lt!961157 () BalanceConc!19234)

(assert (=> d!782384 (= lt!961157 (BalanceConc!19235 (prepend!1119 (c!438567 (_1!18127 lt!960762)) (_1!18128 (v!33014 lt!960761)))))))

(assert (=> d!782384 (= (prepend!1117 (_1!18127 lt!960762) (_1!18128 (v!33014 lt!960761))) lt!961157)))

(declare-fun b!2716431 () Bool)

(assert (=> b!2716431 (= e!1712140 (= (list!11857 lt!961157) (Cons!31329 (_1!18128 (v!33014 lt!960761)) (list!11857 (_1!18127 lt!960762)))))))

(assert (= (and d!782384 res!1140864) b!2716431))

(declare-fun m!3114395 () Bool)

(assert (=> d!782384 m!3114395))

(assert (=> d!782384 m!3114395))

(declare-fun m!3114397 () Bool)

(assert (=> d!782384 m!3114397))

(declare-fun m!3114399 () Bool)

(assert (=> b!2716431 m!3114399))

(declare-fun m!3114401 () Bool)

(assert (=> b!2716431 m!3114401))

(assert (=> b!2715247 d!782384))

(declare-fun d!782386 () Bool)

(declare-fun e!1712142 () Bool)

(assert (=> d!782386 e!1712142))

(declare-fun res!1140866 () Bool)

(assert (=> d!782386 (=> (not res!1140866) (not e!1712142))))

(declare-fun e!1712141 () Bool)

(assert (=> d!782386 (= res!1140866 e!1712141)))

(declare-fun c!438901 () Bool)

(declare-fun lt!961160 () tuple2!30990)

(assert (=> d!782386 (= c!438901 (> (size!24170 (_1!18127 lt!961160)) 0))))

(declare-fun e!1712144 () tuple2!30990)

(assert (=> d!782386 (= lt!961160 e!1712144)))

(declare-fun c!438902 () Bool)

(declare-fun lt!961158 () Option!6183)

(assert (=> d!782386 (= c!438902 ((_ is Some!6182) lt!961158))))

(assert (=> d!782386 (= lt!961158 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960761))))))

(assert (=> d!782386 (= (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960761))) lt!961160)))

(declare-fun b!2716432 () Bool)

(declare-fun res!1140865 () Bool)

(assert (=> b!2716432 (=> (not res!1140865) (not e!1712142))))

(assert (=> b!2716432 (= res!1140865 (= (list!11857 (_1!18127 lt!961160)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960761)))))))))

(declare-fun b!2716433 () Bool)

(declare-fun e!1712143 () Bool)

(assert (=> b!2716433 (= e!1712141 e!1712143)))

(declare-fun res!1140867 () Bool)

(assert (=> b!2716433 (= res!1140867 (< (size!24171 (_2!18127 lt!961160)) (size!24171 (_2!18128 (v!33014 lt!960761)))))))

(assert (=> b!2716433 (=> (not res!1140867) (not e!1712143))))

(declare-fun b!2716434 () Bool)

(assert (=> b!2716434 (= e!1712144 (tuple2!30991 (BalanceConc!19235 Empty!9810) (_2!18128 (v!33014 lt!960761))))))

(declare-fun b!2716435 () Bool)

(assert (=> b!2716435 (= e!1712143 (not (isEmpty!17860 (_1!18127 lt!961160))))))

(declare-fun b!2716436 () Bool)

(assert (=> b!2716436 (= e!1712141 (= (list!11856 (_2!18127 lt!961160)) (list!11856 (_2!18128 (v!33014 lt!960761)))))))

(declare-fun b!2716437 () Bool)

(assert (=> b!2716437 (= e!1712142 (= (list!11856 (_2!18127 lt!961160)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960761)))))))))

(declare-fun b!2716438 () Bool)

(declare-fun lt!961159 () tuple2!30990)

(assert (=> b!2716438 (= e!1712144 (tuple2!30991 (prepend!1117 (_1!18127 lt!961159) (_1!18128 (v!33014 lt!961158))) (_2!18127 lt!961159)))))

(assert (=> b!2716438 (= lt!961159 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!961158))))))

(assert (= (and d!782386 c!438902) b!2716438))

(assert (= (and d!782386 (not c!438902)) b!2716434))

(assert (= (and d!782386 c!438901) b!2716433))

(assert (= (and d!782386 (not c!438901)) b!2716436))

(assert (= (and b!2716433 res!1140867) b!2716435))

(assert (= (and d!782386 res!1140866) b!2716432))

(assert (= (and b!2716432 res!1140865) b!2716437))

(declare-fun m!3114403 () Bool)

(assert (=> b!2716433 m!3114403))

(declare-fun m!3114405 () Bool)

(assert (=> b!2716433 m!3114405))

(declare-fun m!3114407 () Bool)

(assert (=> b!2716435 m!3114407))

(declare-fun m!3114409 () Bool)

(assert (=> b!2716432 m!3114409))

(declare-fun m!3114411 () Bool)

(assert (=> b!2716432 m!3114411))

(assert (=> b!2716432 m!3114411))

(declare-fun m!3114413 () Bool)

(assert (=> b!2716432 m!3114413))

(declare-fun m!3114415 () Bool)

(assert (=> d!782386 m!3114415))

(declare-fun m!3114417 () Bool)

(assert (=> d!782386 m!3114417))

(declare-fun m!3114419 () Bool)

(assert (=> b!2716436 m!3114419))

(assert (=> b!2716436 m!3114411))

(assert (=> b!2716437 m!3114419))

(assert (=> b!2716437 m!3114411))

(assert (=> b!2716437 m!3114411))

(assert (=> b!2716437 m!3114413))

(declare-fun m!3114421 () Bool)

(assert (=> b!2716438 m!3114421))

(declare-fun m!3114423 () Bool)

(assert (=> b!2716438 m!3114423))

(assert (=> b!2715247 d!782386))

(declare-fun d!782388 () Bool)

(declare-fun lt!961165 () Int)

(assert (=> d!782388 (= lt!961165 (size!24173 (list!11857 (_1!18127 lt!960846))))))

(assert (=> d!782388 (= lt!961165 (size!24178 (c!438567 (_1!18127 lt!960846))))))

(assert (=> d!782388 (= (size!24170 (_1!18127 lt!960846)) lt!961165)))

(declare-fun bs!488155 () Bool)

(assert (= bs!488155 d!782388))

(assert (=> bs!488155 m!3113111))

(assert (=> bs!488155 m!3113111))

(declare-fun m!3114425 () Bool)

(assert (=> bs!488155 m!3114425))

(declare-fun m!3114427 () Bool)

(assert (=> bs!488155 m!3114427))

(assert (=> d!781980 d!782388))

(assert (=> d!781980 d!781988))

(assert (=> b!2715506 d!782212))

(declare-fun d!782390 () Bool)

(assert (=> d!782390 (= (inv!42530 (xs!12873 (c!438567 acc!331))) (<= (size!24173 (innerList!9870 (xs!12873 (c!438567 acc!331)))) 2147483647))))

(declare-fun bs!488156 () Bool)

(assert (= bs!488156 d!782390))

(declare-fun m!3114429 () Bool)

(assert (=> bs!488156 m!3114429))

(assert (=> b!2715605 d!782390))

(declare-fun d!782392 () Bool)

(declare-fun lt!961166 () Int)

(assert (=> d!782392 (= lt!961166 (size!24173 (list!11857 (_1!18127 lt!960879))))))

(assert (=> d!782392 (= lt!961166 (size!24178 (c!438567 (_1!18127 lt!960879))))))

(assert (=> d!782392 (= (size!24170 (_1!18127 lt!960879)) lt!961166)))

(declare-fun bs!488157 () Bool)

(assert (= bs!488157 d!782392))

(assert (=> bs!488157 m!3113189))

(assert (=> bs!488157 m!3113189))

(declare-fun m!3114431 () Bool)

(assert (=> bs!488157 m!3114431))

(declare-fun m!3114433 () Bool)

(assert (=> bs!488157 m!3114433))

(assert (=> d!781992 d!782392))

(assert (=> d!781992 d!782026))

(assert (=> b!2715552 d!782226))

(declare-fun d!782394 () Bool)

(assert (=> d!782394 (= (list!11857 (_1!18127 lt!960883)) (list!11861 (c!438567 (_1!18127 lt!960883))))))

(declare-fun bs!488158 () Bool)

(assert (= bs!488158 d!782394))

(declare-fun m!3114435 () Bool)

(assert (=> bs!488158 m!3114435))

(assert (=> b!2715531 d!782394))

(declare-fun b!2716460 () Bool)

(declare-fun e!1712155 () tuple2!30994)

(declare-fun lt!961167 () Option!6185)

(declare-fun lt!961169 () tuple2!30994)

(assert (=> b!2716460 (= e!1712155 (tuple2!30995 (Cons!31329 (_1!18131 (v!33020 lt!961167)) (_1!18129 lt!961169)) (_2!18129 lt!961169)))))

(assert (=> b!2716460 (= lt!961169 (lexList!1218 thiss!11556 rules!1182 (_2!18131 (v!33020 lt!961167))))))

(declare-fun b!2716461 () Bool)

(assert (=> b!2716461 (= e!1712155 (tuple2!30995 Nil!31329 (list!11856 totalInput!328)))))

(declare-fun d!782396 () Bool)

(declare-fun e!1712156 () Bool)

(assert (=> d!782396 e!1712156))

(declare-fun c!438911 () Bool)

(declare-fun lt!961168 () tuple2!30994)

(assert (=> d!782396 (= c!438911 (> (size!24173 (_1!18129 lt!961168)) 0))))

(assert (=> d!782396 (= lt!961168 e!1712155)))

(declare-fun c!438912 () Bool)

(assert (=> d!782396 (= c!438912 ((_ is Some!6184) lt!961167))))

(assert (=> d!782396 (= lt!961167 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 totalInput!328)))))

(assert (=> d!782396 (= (lexList!1218 thiss!11556 rules!1182 (list!11856 totalInput!328)) lt!961168)))

(declare-fun b!2716462 () Bool)

(declare-fun e!1712157 () Bool)

(assert (=> b!2716462 (= e!1712156 e!1712157)))

(declare-fun res!1140873 () Bool)

(assert (=> b!2716462 (= res!1140873 (< (size!24174 (_2!18129 lt!961168)) (size!24174 (list!11856 totalInput!328))))))

(assert (=> b!2716462 (=> (not res!1140873) (not e!1712157))))

(declare-fun b!2716463 () Bool)

(assert (=> b!2716463 (= e!1712157 (not (isEmpty!17862 (_1!18129 lt!961168))))))

(declare-fun b!2716464 () Bool)

(assert (=> b!2716464 (= e!1712156 (= (_2!18129 lt!961168) (list!11856 totalInput!328)))))

(assert (= (and d!782396 c!438912) b!2716460))

(assert (= (and d!782396 (not c!438912)) b!2716461))

(assert (= (and d!782396 c!438911) b!2716462))

(assert (= (and d!782396 (not c!438911)) b!2716464))

(assert (= (and b!2716462 res!1140873) b!2716463))

(declare-fun m!3114447 () Bool)

(assert (=> b!2716460 m!3114447))

(declare-fun m!3114449 () Bool)

(assert (=> d!782396 m!3114449))

(assert (=> d!782396 m!3112375))

(declare-fun m!3114453 () Bool)

(assert (=> d!782396 m!3114453))

(declare-fun m!3114455 () Bool)

(assert (=> b!2716462 m!3114455))

(assert (=> b!2716462 m!3112375))

(assert (=> b!2716462 m!3113705))

(declare-fun m!3114459 () Bool)

(assert (=> b!2716463 m!3114459))

(assert (=> b!2715531 d!782396))

(assert (=> b!2715531 d!782006))

(declare-fun d!782398 () Bool)

(declare-fun c!438913 () Bool)

(assert (=> d!782398 (= c!438913 ((_ is Empty!9809) (c!438566 lt!960679)))))

(declare-fun e!1712158 () List!31428)

(assert (=> d!782398 (= (list!11860 (c!438566 lt!960679)) e!1712158)))

(declare-fun b!2716468 () Bool)

(declare-fun e!1712159 () List!31428)

(assert (=> b!2716468 (= e!1712159 (++!7768 (list!11860 (left!24086 (c!438566 lt!960679))) (list!11860 (right!24416 (c!438566 lt!960679)))))))

(declare-fun b!2716465 () Bool)

(assert (=> b!2716465 (= e!1712158 Nil!31328)))

(declare-fun b!2716467 () Bool)

(assert (=> b!2716467 (= e!1712159 (list!11864 (xs!12872 (c!438566 lt!960679))))))

(declare-fun b!2716466 () Bool)

(assert (=> b!2716466 (= e!1712158 e!1712159)))

(declare-fun c!438914 () Bool)

(assert (=> b!2716466 (= c!438914 ((_ is Leaf!14949) (c!438566 lt!960679)))))

(assert (= (and d!782398 c!438913) b!2716465))

(assert (= (and d!782398 (not c!438913)) b!2716466))

(assert (= (and b!2716466 c!438914) b!2716467))

(assert (= (and b!2716466 (not c!438914)) b!2716468))

(assert (=> b!2716468 m!3114391))

(assert (=> b!2716468 m!3114375))

(assert (=> b!2716468 m!3114391))

(assert (=> b!2716468 m!3114375))

(declare-fun m!3114473 () Bool)

(assert (=> b!2716468 m!3114473))

(declare-fun m!3114475 () Bool)

(assert (=> b!2716467 m!3114475))

(assert (=> d!781966 d!782398))

(declare-fun d!782400 () Bool)

(assert (=> d!782400 (= (isEmpty!17862 (_1!18129 lt!960813)) ((_ is Nil!31329) (_1!18129 lt!960813)))))

(assert (=> b!2715356 d!782400))

(assert (=> b!2715467 d!782176))

(assert (=> b!2715467 d!781972))

(declare-fun d!782406 () Bool)

(assert (=> d!782406 (= (isDefined!4894 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 input!603))) (not (isEmpty!17871 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 input!603)))))))

(declare-fun bs!488159 () Bool)

(assert (= bs!488159 d!782406))

(assert (=> bs!488159 m!3113285))

(declare-fun m!3114477 () Bool)

(assert (=> bs!488159 m!3114477))

(assert (=> d!782026 d!782406))

(assert (=> d!782026 d!782258))

(assert (=> d!782026 d!782008))

(declare-fun d!782408 () Bool)

(declare-fun e!1712161 () Bool)

(assert (=> d!782408 e!1712161))

(declare-fun res!1140877 () Bool)

(assert (=> d!782408 (=> res!1140877 e!1712161)))

(declare-fun lt!961170 () Bool)

(assert (=> d!782408 (= res!1140877 (not lt!961170))))

(declare-fun e!1712160 () Bool)

(assert (=> d!782408 (= lt!961170 e!1712160)))

(declare-fun res!1140875 () Bool)

(assert (=> d!782408 (=> res!1140875 e!1712160)))

(assert (=> d!782408 (= res!1140875 ((_ is Nil!31328) lt!960888))))

(assert (=> d!782408 (= (isPrefix!2483 lt!960888 lt!960889) lt!961170)))

(declare-fun b!2716469 () Bool)

(declare-fun e!1712162 () Bool)

(assert (=> b!2716469 (= e!1712160 e!1712162)))

(declare-fun res!1140876 () Bool)

(assert (=> b!2716469 (=> (not res!1140876) (not e!1712162))))

(assert (=> b!2716469 (= res!1140876 (not ((_ is Nil!31328) lt!960889)))))

(declare-fun b!2716471 () Bool)

(assert (=> b!2716471 (= e!1712162 (isPrefix!2483 (tail!4334 lt!960888) (tail!4334 lt!960889)))))

(declare-fun b!2716470 () Bool)

(declare-fun res!1140874 () Bool)

(assert (=> b!2716470 (=> (not res!1140874) (not e!1712162))))

(assert (=> b!2716470 (= res!1140874 (= (head!6096 lt!960888) (head!6096 lt!960889)))))

(declare-fun b!2716472 () Bool)

(assert (=> b!2716472 (= e!1712161 (>= (size!24174 lt!960889) (size!24174 lt!960888)))))

(assert (= (and d!782408 (not res!1140875)) b!2716469))

(assert (= (and b!2716469 res!1140876) b!2716470))

(assert (= (and b!2716470 res!1140874) b!2716471))

(assert (= (and d!782408 (not res!1140877)) b!2716472))

(declare-fun m!3114479 () Bool)

(assert (=> b!2716471 m!3114479))

(declare-fun m!3114481 () Bool)

(assert (=> b!2716471 m!3114481))

(assert (=> b!2716471 m!3114479))

(assert (=> b!2716471 m!3114481))

(declare-fun m!3114483 () Bool)

(assert (=> b!2716471 m!3114483))

(declare-fun m!3114485 () Bool)

(assert (=> b!2716470 m!3114485))

(declare-fun m!3114487 () Bool)

(assert (=> b!2716470 m!3114487))

(declare-fun m!3114489 () Bool)

(assert (=> b!2716472 m!3114489))

(declare-fun m!3114491 () Bool)

(assert (=> b!2716472 m!3114491))

(assert (=> d!782026 d!782408))

(assert (=> d!782026 d!782156))

(declare-fun d!782416 () Bool)

(assert (=> d!782416 (isPrefix!2483 lt!960888 lt!960889)))

(declare-fun lt!961171 () Unit!45356)

(assert (=> d!782416 (= lt!961171 (choose!15973 lt!960888 lt!960889))))

(assert (=> d!782416 (= (lemmaIsPrefixRefl!1609 lt!960888 lt!960889) lt!961171)))

(declare-fun bs!488160 () Bool)

(assert (= bs!488160 d!782416))

(assert (=> bs!488160 m!3113303))

(declare-fun m!3114493 () Bool)

(assert (=> bs!488160 m!3114493))

(assert (=> d!782026 d!782416))

(assert (=> d!782026 d!782226))

(declare-fun d!782418 () Bool)

(declare-fun c!438915 () Bool)

(assert (=> d!782418 (= c!438915 ((_ is Node!9809) (left!24086 (c!438566 treated!9))))))

(declare-fun e!1712163 () Bool)

(assert (=> d!782418 (= (inv!42514 (left!24086 (c!438566 treated!9))) e!1712163)))

(declare-fun b!2716473 () Bool)

(assert (=> b!2716473 (= e!1712163 (inv!42525 (left!24086 (c!438566 treated!9))))))

(declare-fun b!2716474 () Bool)

(declare-fun e!1712164 () Bool)

(assert (=> b!2716474 (= e!1712163 e!1712164)))

(declare-fun res!1140878 () Bool)

(assert (=> b!2716474 (= res!1140878 (not ((_ is Leaf!14949) (left!24086 (c!438566 treated!9)))))))

(assert (=> b!2716474 (=> res!1140878 e!1712164)))

(declare-fun b!2716475 () Bool)

(assert (=> b!2716475 (= e!1712164 (inv!42526 (left!24086 (c!438566 treated!9))))))

(assert (= (and d!782418 c!438915) b!2716473))

(assert (= (and d!782418 (not c!438915)) b!2716474))

(assert (= (and b!2716474 (not res!1140878)) b!2716475))

(declare-fun m!3114495 () Bool)

(assert (=> b!2716473 m!3114495))

(declare-fun m!3114497 () Bool)

(assert (=> b!2716475 m!3114497))

(assert (=> b!2715593 d!782418))

(declare-fun d!782420 () Bool)

(declare-fun c!438916 () Bool)

(assert (=> d!782420 (= c!438916 ((_ is Node!9809) (right!24416 (c!438566 treated!9))))))

(declare-fun e!1712165 () Bool)

(assert (=> d!782420 (= (inv!42514 (right!24416 (c!438566 treated!9))) e!1712165)))

(declare-fun b!2716476 () Bool)

(assert (=> b!2716476 (= e!1712165 (inv!42525 (right!24416 (c!438566 treated!9))))))

(declare-fun b!2716477 () Bool)

(declare-fun e!1712166 () Bool)

(assert (=> b!2716477 (= e!1712165 e!1712166)))

(declare-fun res!1140879 () Bool)

(assert (=> b!2716477 (= res!1140879 (not ((_ is Leaf!14949) (right!24416 (c!438566 treated!9)))))))

(assert (=> b!2716477 (=> res!1140879 e!1712166)))

(declare-fun b!2716478 () Bool)

(assert (=> b!2716478 (= e!1712166 (inv!42526 (right!24416 (c!438566 treated!9))))))

(assert (= (and d!782420 c!438916) b!2716476))

(assert (= (and d!782420 (not c!438916)) b!2716477))

(assert (= (and b!2716477 (not res!1140879)) b!2716478))

(declare-fun m!3114499 () Bool)

(assert (=> b!2716476 m!3114499))

(declare-fun m!3114501 () Bool)

(assert (=> b!2716478 m!3114501))

(assert (=> b!2715593 d!782420))

(declare-fun d!782422 () Bool)

(declare-fun c!438919 () Bool)

(assert (=> d!782422 (= c!438919 ((_ is Empty!9810) (c!438567 (_1!18127 lt!960690))))))

(declare-fun e!1712169 () List!31429)

(assert (=> d!782422 (= (list!11861 (c!438567 (_1!18127 lt!960690))) e!1712169)))

(declare-fun b!2716485 () Bool)

(declare-fun e!1712170 () List!31429)

(assert (=> b!2716485 (= e!1712170 (list!11862 (xs!12873 (c!438567 (_1!18127 lt!960690)))))))

(declare-fun b!2716484 () Bool)

(assert (=> b!2716484 (= e!1712169 e!1712170)))

(declare-fun c!438920 () Bool)

(assert (=> b!2716484 (= c!438920 ((_ is Leaf!14950) (c!438567 (_1!18127 lt!960690))))))

(declare-fun b!2716483 () Bool)

(assert (=> b!2716483 (= e!1712169 Nil!31329)))

(declare-fun b!2716486 () Bool)

(assert (=> b!2716486 (= e!1712170 (++!7770 (list!11861 (left!24087 (c!438567 (_1!18127 lt!960690)))) (list!11861 (right!24417 (c!438567 (_1!18127 lt!960690))))))))

(assert (= (and d!782422 c!438919) b!2716483))

(assert (= (and d!782422 (not c!438919)) b!2716484))

(assert (= (and b!2716484 c!438920) b!2716485))

(assert (= (and b!2716484 (not c!438920)) b!2716486))

(declare-fun m!3114503 () Bool)

(assert (=> b!2716485 m!3114503))

(declare-fun m!3114505 () Bool)

(assert (=> b!2716486 m!3114505))

(declare-fun m!3114507 () Bool)

(assert (=> b!2716486 m!3114507))

(assert (=> b!2716486 m!3114505))

(assert (=> b!2716486 m!3114507))

(declare-fun m!3114509 () Bool)

(assert (=> b!2716486 m!3114509))

(assert (=> d!781814 d!782422))

(declare-fun d!782424 () Bool)

(assert (=> d!782424 (= (get!9776 lt!960871) (v!33014 lt!960871))))

(assert (=> b!2715510 d!782424))

(declare-fun d!782426 () Bool)

(assert (=> d!782426 (= (list!11856 (_2!18128 (get!9776 lt!960871))) (list!11860 (c!438566 (_2!18128 (get!9776 lt!960871)))))))

(declare-fun bs!488161 () Bool)

(assert (= bs!488161 d!782426))

(declare-fun m!3114511 () Bool)

(assert (=> bs!488161 m!3114511))

(assert (=> b!2715510 d!782426))

(declare-fun b!2716561 () Bool)

(declare-fun res!1140927 () Bool)

(declare-fun e!1712205 () Bool)

(assert (=> b!2716561 (=> (not res!1140927) (not e!1712205))))

(declare-fun lt!961197 () Option!6185)

(assert (=> b!2716561 (= res!1140927 (< (size!24174 (_2!18131 (get!9777 lt!961197))) (size!24174 (list!11856 lt!960675))))))

(declare-fun b!2716562 () Bool)

(declare-fun e!1712206 () Bool)

(assert (=> b!2716562 (= e!1712206 e!1712205)))

(declare-fun res!1140928 () Bool)

(assert (=> b!2716562 (=> (not res!1140928) (not e!1712205))))

(assert (=> b!2716562 (= res!1140928 (isDefined!4894 lt!961197))))

(declare-fun b!2716563 () Bool)

(declare-fun e!1712204 () Option!6185)

(declare-fun call!175269 () Option!6185)

(assert (=> b!2716563 (= e!1712204 call!175269)))

(declare-fun b!2716564 () Bool)

(declare-fun lt!961198 () Option!6185)

(declare-fun lt!961199 () Option!6185)

(assert (=> b!2716564 (= e!1712204 (ite (and ((_ is None!6184) lt!961198) ((_ is None!6184) lt!961199)) None!6184 (ite ((_ is None!6184) lt!961199) lt!961198 (ite ((_ is None!6184) lt!961198) lt!961199 (ite (>= (size!24166 (_1!18131 (v!33020 lt!961198))) (size!24166 (_1!18131 (v!33020 lt!961199)))) lt!961198 lt!961199)))))))

(assert (=> b!2716564 (= lt!961198 call!175269)))

(assert (=> b!2716564 (= lt!961199 (maxPrefix!2366 thiss!11556 (t!226248 rules!1182) (list!11856 lt!960675)))))

(declare-fun b!2716565 () Bool)

(declare-fun res!1140922 () Bool)

(assert (=> b!2716565 (=> (not res!1140922) (not e!1712205))))

(assert (=> b!2716565 (= res!1140922 (= (list!11856 (charsOf!3014 (_1!18131 (get!9777 lt!961197)))) (originalCharacters!5553 (_1!18131 (get!9777 lt!961197)))))))

(declare-fun b!2716567 () Bool)

(declare-fun res!1140925 () Bool)

(assert (=> b!2716567 (=> (not res!1140925) (not e!1712205))))

(declare-fun matchR!3639 (Regex!7943 List!31428) Bool)

(assert (=> b!2716567 (= res!1140925 (matchR!3639 (regex!4791 (rule!7217 (_1!18131 (get!9777 lt!961197)))) (list!11856 (charsOf!3014 (_1!18131 (get!9777 lt!961197))))))))

(declare-fun bm!175264 () Bool)

(declare-fun maxPrefixOneRule!1497 (LexerInterface!4387 Rule!9382 List!31428) Option!6185)

(assert (=> bm!175264 (= call!175269 (maxPrefixOneRule!1497 thiss!11556 (h!36750 rules!1182) (list!11856 lt!960675)))))

(declare-fun b!2716568 () Bool)

(declare-fun res!1140923 () Bool)

(assert (=> b!2716568 (=> (not res!1140923) (not e!1712205))))

(declare-fun apply!7411 (TokenValueInjection!9466 BalanceConc!19232) TokenValue!5013)

(declare-fun seqFromList!3216 (List!31428) BalanceConc!19232)

(assert (=> b!2716568 (= res!1140923 (= (value!154156 (_1!18131 (get!9777 lt!961197))) (apply!7411 (transformation!4791 (rule!7217 (_1!18131 (get!9777 lt!961197)))) (seqFromList!3216 (originalCharacters!5553 (_1!18131 (get!9777 lt!961197)))))))))

(declare-fun b!2716569 () Bool)

(declare-fun res!1140926 () Bool)

(assert (=> b!2716569 (=> (not res!1140926) (not e!1712205))))

(assert (=> b!2716569 (= res!1140926 (= (++!7768 (list!11856 (charsOf!3014 (_1!18131 (get!9777 lt!961197)))) (_2!18131 (get!9777 lt!961197))) (list!11856 lt!960675)))))

(declare-fun d!782428 () Bool)

(assert (=> d!782428 e!1712206))

(declare-fun res!1140924 () Bool)

(assert (=> d!782428 (=> res!1140924 e!1712206)))

(assert (=> d!782428 (= res!1140924 (isEmpty!17871 lt!961197))))

(assert (=> d!782428 (= lt!961197 e!1712204)))

(declare-fun c!438937 () Bool)

(assert (=> d!782428 (= c!438937 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!961201 () Unit!45356)

(declare-fun lt!961200 () Unit!45356)

(assert (=> d!782428 (= lt!961201 lt!961200)))

(assert (=> d!782428 (isPrefix!2483 (list!11856 lt!960675) (list!11856 lt!960675))))

(assert (=> d!782428 (= lt!961200 (lemmaIsPrefixRefl!1609 (list!11856 lt!960675) (list!11856 lt!960675)))))

(assert (=> d!782428 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!782428 (= (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 lt!960675)) lt!961197)))

(declare-fun b!2716566 () Bool)

(declare-fun contains!5953 (List!31430 Rule!9382) Bool)

(assert (=> b!2716566 (= e!1712205 (contains!5953 rules!1182 (rule!7217 (_1!18131 (get!9777 lt!961197)))))))

(assert (= (and d!782428 c!438937) b!2716563))

(assert (= (and d!782428 (not c!438937)) b!2716564))

(assert (= (or b!2716563 b!2716564) bm!175264))

(assert (= (and d!782428 (not res!1140924)) b!2716562))

(assert (= (and b!2716562 res!1140928) b!2716565))

(assert (= (and b!2716565 res!1140922) b!2716561))

(assert (= (and b!2716561 res!1140927) b!2716569))

(assert (= (and b!2716569 res!1140926) b!2716568))

(assert (= (and b!2716568 res!1140923) b!2716567))

(assert (= (and b!2716567 res!1140925) b!2716566))

(assert (=> b!2716564 m!3112299))

(declare-fun m!3114619 () Bool)

(assert (=> b!2716564 m!3114619))

(assert (=> bm!175264 m!3112299))

(declare-fun m!3114621 () Bool)

(assert (=> bm!175264 m!3114621))

(declare-fun m!3114623 () Bool)

(assert (=> b!2716562 m!3114623))

(declare-fun m!3114625 () Bool)

(assert (=> b!2716568 m!3114625))

(declare-fun m!3114627 () Bool)

(assert (=> b!2716568 m!3114627))

(assert (=> b!2716568 m!3114627))

(declare-fun m!3114629 () Bool)

(assert (=> b!2716568 m!3114629))

(declare-fun m!3114631 () Bool)

(assert (=> d!782428 m!3114631))

(assert (=> d!782428 m!3112299))

(assert (=> d!782428 m!3112299))

(assert (=> d!782428 m!3114165))

(assert (=> d!782428 m!3112299))

(assert (=> d!782428 m!3112299))

(assert (=> d!782428 m!3114167))

(assert (=> d!782428 m!3113171))

(assert (=> b!2716567 m!3114625))

(declare-fun m!3114633 () Bool)

(assert (=> b!2716567 m!3114633))

(assert (=> b!2716567 m!3114633))

(declare-fun m!3114635 () Bool)

(assert (=> b!2716567 m!3114635))

(assert (=> b!2716567 m!3114635))

(declare-fun m!3114637 () Bool)

(assert (=> b!2716567 m!3114637))

(assert (=> b!2716565 m!3114625))

(assert (=> b!2716565 m!3114633))

(assert (=> b!2716565 m!3114633))

(assert (=> b!2716565 m!3114635))

(assert (=> b!2716569 m!3114625))

(assert (=> b!2716569 m!3114633))

(assert (=> b!2716569 m!3114633))

(assert (=> b!2716569 m!3114635))

(assert (=> b!2716569 m!3114635))

(declare-fun m!3114639 () Bool)

(assert (=> b!2716569 m!3114639))

(assert (=> b!2716561 m!3114625))

(declare-fun m!3114641 () Bool)

(assert (=> b!2716561 m!3114641))

(assert (=> b!2716561 m!3112299))

(assert (=> b!2716561 m!3112937))

(assert (=> b!2716566 m!3114625))

(declare-fun m!3114643 () Bool)

(assert (=> b!2716566 m!3114643))

(assert (=> b!2715510 d!782428))

(assert (=> b!2715510 d!781972))

(declare-fun d!782462 () Bool)

(assert (=> d!782462 (= (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 lt!960675))) (v!33020 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 lt!960675))))))

(assert (=> b!2715510 d!782462))

(declare-fun d!782464 () Bool)

(assert (=> d!782464 (= (inv!42516 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664))))) (isBalanced!2972 (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664)))))))))

(declare-fun bs!488165 () Bool)

(assert (= bs!488165 d!782464))

(declare-fun m!3114645 () Bool)

(assert (=> bs!488165 m!3114645))

(assert (=> tb!151833 d!782464))

(declare-fun b!2716570 () Bool)

(declare-fun res!1140934 () Bool)

(declare-fun e!1712208 () Bool)

(assert (=> b!2716570 (=> (not res!1140934) (not e!1712208))))

(declare-fun lt!961202 () Option!6185)

(assert (=> b!2716570 (= res!1140934 (< (size!24174 (_2!18131 (get!9777 lt!961202))) (size!24174 (list!11856 input!603))))))

(declare-fun b!2716571 () Bool)

(declare-fun e!1712209 () Bool)

(assert (=> b!2716571 (= e!1712209 e!1712208)))

(declare-fun res!1140935 () Bool)

(assert (=> b!2716571 (=> (not res!1140935) (not e!1712208))))

(assert (=> b!2716571 (= res!1140935 (isDefined!4894 lt!961202))))

(declare-fun b!2716572 () Bool)

(declare-fun e!1712207 () Option!6185)

(declare-fun call!175270 () Option!6185)

(assert (=> b!2716572 (= e!1712207 call!175270)))

(declare-fun b!2716573 () Bool)

(declare-fun lt!961203 () Option!6185)

(declare-fun lt!961204 () Option!6185)

(assert (=> b!2716573 (= e!1712207 (ite (and ((_ is None!6184) lt!961203) ((_ is None!6184) lt!961204)) None!6184 (ite ((_ is None!6184) lt!961204) lt!961203 (ite ((_ is None!6184) lt!961203) lt!961204 (ite (>= (size!24166 (_1!18131 (v!33020 lt!961203))) (size!24166 (_1!18131 (v!33020 lt!961204)))) lt!961203 lt!961204)))))))

(assert (=> b!2716573 (= lt!961203 call!175270)))

(assert (=> b!2716573 (= lt!961204 (maxPrefix!2366 thiss!11556 (t!226248 rules!1182) (list!11856 input!603)))))

(declare-fun b!2716574 () Bool)

(declare-fun res!1140929 () Bool)

(assert (=> b!2716574 (=> (not res!1140929) (not e!1712208))))

(assert (=> b!2716574 (= res!1140929 (= (list!11856 (charsOf!3014 (_1!18131 (get!9777 lt!961202)))) (originalCharacters!5553 (_1!18131 (get!9777 lt!961202)))))))

(declare-fun b!2716576 () Bool)

(declare-fun res!1140932 () Bool)

(assert (=> b!2716576 (=> (not res!1140932) (not e!1712208))))

(assert (=> b!2716576 (= res!1140932 (matchR!3639 (regex!4791 (rule!7217 (_1!18131 (get!9777 lt!961202)))) (list!11856 (charsOf!3014 (_1!18131 (get!9777 lt!961202))))))))

(declare-fun bm!175265 () Bool)

(assert (=> bm!175265 (= call!175270 (maxPrefixOneRule!1497 thiss!11556 (h!36750 rules!1182) (list!11856 input!603)))))

(declare-fun b!2716577 () Bool)

(declare-fun res!1140930 () Bool)

(assert (=> b!2716577 (=> (not res!1140930) (not e!1712208))))

(assert (=> b!2716577 (= res!1140930 (= (value!154156 (_1!18131 (get!9777 lt!961202))) (apply!7411 (transformation!4791 (rule!7217 (_1!18131 (get!9777 lt!961202)))) (seqFromList!3216 (originalCharacters!5553 (_1!18131 (get!9777 lt!961202)))))))))

(declare-fun b!2716578 () Bool)

(declare-fun res!1140933 () Bool)

(assert (=> b!2716578 (=> (not res!1140933) (not e!1712208))))

(assert (=> b!2716578 (= res!1140933 (= (++!7768 (list!11856 (charsOf!3014 (_1!18131 (get!9777 lt!961202)))) (_2!18131 (get!9777 lt!961202))) (list!11856 input!603)))))

(declare-fun d!782466 () Bool)

(assert (=> d!782466 e!1712209))

(declare-fun res!1140931 () Bool)

(assert (=> d!782466 (=> res!1140931 e!1712209)))

(assert (=> d!782466 (= res!1140931 (isEmpty!17871 lt!961202))))

(assert (=> d!782466 (= lt!961202 e!1712207)))

(declare-fun c!438938 () Bool)

(assert (=> d!782466 (= c!438938 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!961206 () Unit!45356)

(declare-fun lt!961205 () Unit!45356)

(assert (=> d!782466 (= lt!961206 lt!961205)))

(assert (=> d!782466 (isPrefix!2483 (list!11856 input!603) (list!11856 input!603))))

(assert (=> d!782466 (= lt!961205 (lemmaIsPrefixRefl!1609 (list!11856 input!603) (list!11856 input!603)))))

(assert (=> d!782466 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!782466 (= (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 input!603)) lt!961202)))

(declare-fun b!2716575 () Bool)

(assert (=> b!2716575 (= e!1712208 (contains!5953 rules!1182 (rule!7217 (_1!18131 (get!9777 lt!961202)))))))

(assert (= (and d!782466 c!438938) b!2716572))

(assert (= (and d!782466 (not c!438938)) b!2716573))

(assert (= (or b!2716572 b!2716573) bm!175265))

(assert (= (and d!782466 (not res!1140931)) b!2716571))

(assert (= (and b!2716571 res!1140935) b!2716574))

(assert (= (and b!2716574 res!1140929) b!2716570))

(assert (= (and b!2716570 res!1140934) b!2716578))

(assert (= (and b!2716578 res!1140933) b!2716577))

(assert (= (and b!2716577 res!1140930) b!2716576))

(assert (= (and b!2716576 res!1140932) b!2716575))

(assert (=> b!2716573 m!3112377))

(declare-fun m!3114647 () Bool)

(assert (=> b!2716573 m!3114647))

(assert (=> bm!175265 m!3112377))

(declare-fun m!3114649 () Bool)

(assert (=> bm!175265 m!3114649))

(declare-fun m!3114651 () Bool)

(assert (=> b!2716571 m!3114651))

(declare-fun m!3114653 () Bool)

(assert (=> b!2716577 m!3114653))

(declare-fun m!3114655 () Bool)

(assert (=> b!2716577 m!3114655))

(assert (=> b!2716577 m!3114655))

(declare-fun m!3114657 () Bool)

(assert (=> b!2716577 m!3114657))

(declare-fun m!3114659 () Bool)

(assert (=> d!782466 m!3114659))

(assert (=> d!782466 m!3112377))

(assert (=> d!782466 m!3112377))

(assert (=> d!782466 m!3113661))

(assert (=> d!782466 m!3112377))

(assert (=> d!782466 m!3112377))

(assert (=> d!782466 m!3113663))

(assert (=> d!782466 m!3113171))

(assert (=> b!2716576 m!3114653))

(declare-fun m!3114661 () Bool)

(assert (=> b!2716576 m!3114661))

(assert (=> b!2716576 m!3114661))

(declare-fun m!3114663 () Bool)

(assert (=> b!2716576 m!3114663))

(assert (=> b!2716576 m!3114663))

(declare-fun m!3114665 () Bool)

(assert (=> b!2716576 m!3114665))

(assert (=> b!2716574 m!3114653))

(assert (=> b!2716574 m!3114661))

(assert (=> b!2716574 m!3114661))

(assert (=> b!2716574 m!3114663))

(assert (=> b!2716578 m!3114653))

(assert (=> b!2716578 m!3114661))

(assert (=> b!2716578 m!3114661))

(assert (=> b!2716578 m!3114663))

(assert (=> b!2716578 m!3114663))

(declare-fun m!3114667 () Bool)

(assert (=> b!2716578 m!3114667))

(assert (=> b!2716570 m!3114653))

(declare-fun m!3114669 () Bool)

(assert (=> b!2716570 m!3114669))

(assert (=> b!2716570 m!3112377))

(assert (=> b!2716570 m!3113631))

(assert (=> b!2716575 m!3114653))

(declare-fun m!3114671 () Bool)

(assert (=> b!2716575 m!3114671))

(assert (=> b!2715556 d!782466))

(declare-fun d!782468 () Bool)

(assert (=> d!782468 (= (list!11856 (_2!18128 (get!9776 lt!960887))) (list!11860 (c!438566 (_2!18128 (get!9776 lt!960887)))))))

(declare-fun bs!488166 () Bool)

(assert (= bs!488166 d!782468))

(declare-fun m!3114673 () Bool)

(assert (=> bs!488166 m!3114673))

(assert (=> b!2715556 d!782468))

(assert (=> b!2715556 d!782152))

(declare-fun d!782470 () Bool)

(assert (=> d!782470 (= (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 input!603))) (v!33020 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 input!603))))))

(assert (=> b!2715556 d!782470))

(assert (=> b!2715556 d!782008))

(assert (=> b!2715528 d!782196))

(assert (=> b!2715528 d!782198))

(assert (=> b!2715528 d!782200))

(assert (=> b!2715528 d!782202))

(assert (=> b!2715528 d!782190))

(declare-fun d!782472 () Bool)

(assert (=> d!782472 (= (list!11856 (_2!18127 lt!960742)) (list!11860 (c!438566 (_2!18127 lt!960742))))))

(declare-fun bs!488167 () Bool)

(assert (= bs!488167 d!782472))

(declare-fun m!3114675 () Bool)

(assert (=> bs!488167 m!3114675))

(assert (=> b!2715177 d!782472))

(declare-fun b!2716579 () Bool)

(declare-fun e!1712210 () tuple2!30994)

(declare-fun lt!961207 () Option!6185)

(declare-fun lt!961209 () tuple2!30994)

(assert (=> b!2716579 (= e!1712210 (tuple2!30995 (Cons!31329 (_1!18131 (v!33020 lt!961207)) (_1!18129 lt!961209)) (_2!18129 lt!961209)))))

(assert (=> b!2716579 (= lt!961209 (lexList!1218 thiss!11556 rules!1182 (_2!18131 (v!33020 lt!961207))))))

(declare-fun b!2716580 () Bool)

(assert (=> b!2716580 (= e!1712210 (tuple2!30995 Nil!31329 (list!11856 treated!9)))))

(declare-fun d!782474 () Bool)

(declare-fun e!1712211 () Bool)

(assert (=> d!782474 e!1712211))

(declare-fun c!438939 () Bool)

(declare-fun lt!961208 () tuple2!30994)

(assert (=> d!782474 (= c!438939 (> (size!24173 (_1!18129 lt!961208)) 0))))

(assert (=> d!782474 (= lt!961208 e!1712210)))

(declare-fun c!438940 () Bool)

(assert (=> d!782474 (= c!438940 ((_ is Some!6184) lt!961207))))

(assert (=> d!782474 (= lt!961207 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 treated!9)))))

(assert (=> d!782474 (= (lexList!1218 thiss!11556 rules!1182 (list!11856 treated!9)) lt!961208)))

(declare-fun b!2716581 () Bool)

(declare-fun e!1712212 () Bool)

(assert (=> b!2716581 (= e!1712211 e!1712212)))

(declare-fun res!1140936 () Bool)

(assert (=> b!2716581 (= res!1140936 (< (size!24174 (_2!18129 lt!961208)) (size!24174 (list!11856 treated!9))))))

(assert (=> b!2716581 (=> (not res!1140936) (not e!1712212))))

(declare-fun b!2716582 () Bool)

(assert (=> b!2716582 (= e!1712212 (not (isEmpty!17862 (_1!18129 lt!961208))))))

(declare-fun b!2716583 () Bool)

(assert (=> b!2716583 (= e!1712211 (= (_2!18129 lt!961208) (list!11856 treated!9)))))

(assert (= (and d!782474 c!438940) b!2716579))

(assert (= (and d!782474 (not c!438940)) b!2716580))

(assert (= (and d!782474 c!438939) b!2716581))

(assert (= (and d!782474 (not c!438939)) b!2716583))

(assert (= (and b!2716581 res!1140936) b!2716582))

(declare-fun m!3114677 () Bool)

(assert (=> b!2716579 m!3114677))

(declare-fun m!3114679 () Bool)

(assert (=> d!782474 m!3114679))

(assert (=> d!782474 m!3112379))

(assert (=> d!782474 m!3113697))

(declare-fun m!3114681 () Bool)

(assert (=> b!2716581 m!3114681))

(assert (=> b!2716581 m!3112379))

(declare-fun m!3114683 () Bool)

(assert (=> b!2716581 m!3114683))

(declare-fun m!3114685 () Bool)

(assert (=> b!2716582 m!3114685))

(assert (=> b!2715177 d!782474))

(assert (=> b!2715177 d!782010))

(declare-fun d!782476 () Bool)

(assert (=> d!782476 (= (list!11856 (_2!18127 lt!960883)) (list!11860 (c!438566 (_2!18127 lt!960883))))))

(declare-fun bs!488168 () Bool)

(assert (= bs!488168 d!782476))

(declare-fun m!3114687 () Bool)

(assert (=> bs!488168 m!3114687))

(assert (=> b!2715536 d!782476))

(assert (=> b!2715536 d!782396))

(assert (=> b!2715536 d!782006))

(declare-fun d!782478 () Bool)

(declare-fun c!438941 () Bool)

(assert (=> d!782478 (= c!438941 ((_ is Nil!31328) lt!960839))))

(declare-fun e!1712213 () (InoxSet C!16044))

(assert (=> d!782478 (= (content!4438 lt!960839) e!1712213)))

(declare-fun b!2716584 () Bool)

(assert (=> b!2716584 (= e!1712213 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2716585 () Bool)

(assert (=> b!2716585 (= e!1712213 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960839) true) (content!4438 (t!226246 lt!960839))))))

(assert (= (and d!782478 c!438941) b!2716584))

(assert (= (and d!782478 (not c!438941)) b!2716585))

(declare-fun m!3114689 () Bool)

(assert (=> b!2716585 m!3114689))

(declare-fun m!3114691 () Bool)

(assert (=> b!2716585 m!3114691))

(assert (=> d!781968 d!782478))

(assert (=> d!781968 d!782334))

(declare-fun d!782480 () Bool)

(declare-fun c!438942 () Bool)

(assert (=> d!782480 (= c!438942 ((_ is Nil!31328) lt!960668))))

(declare-fun e!1712214 () (InoxSet C!16044))

(assert (=> d!782480 (= (content!4438 lt!960668) e!1712214)))

(declare-fun b!2716586 () Bool)

(assert (=> b!2716586 (= e!1712214 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2716587 () Bool)

(assert (=> b!2716587 (= e!1712214 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960668) true) (content!4438 (t!226246 lt!960668))))))

(assert (= (and d!782480 c!438942) b!2716586))

(assert (= (and d!782480 (not c!438942)) b!2716587))

(declare-fun m!3114693 () Bool)

(assert (=> b!2716587 m!3114693))

(assert (=> b!2716587 m!3114283))

(assert (=> d!781968 d!782480))

(declare-fun d!782482 () Bool)

(declare-fun e!1712216 () Bool)

(assert (=> d!782482 e!1712216))

(declare-fun res!1140937 () Bool)

(assert (=> d!782482 (=> (not res!1140937) (not e!1712216))))

(declare-fun lt!961212 () List!31429)

(assert (=> d!782482 (= res!1140937 (= (content!4437 lt!961212) ((_ map or) (content!4437 (t!226247 lt!960666)) (content!4437 (++!7770 lt!960676 lt!960688)))))))

(declare-fun e!1712215 () List!31429)

(assert (=> d!782482 (= lt!961212 e!1712215)))

(declare-fun c!438943 () Bool)

(assert (=> d!782482 (= c!438943 ((_ is Nil!31329) (t!226247 lt!960666)))))

(assert (=> d!782482 (= (++!7770 (t!226247 lt!960666) (++!7770 lt!960676 lt!960688)) lt!961212)))

(declare-fun b!2716593 () Bool)

(assert (=> b!2716593 (= e!1712216 (or (not (= (++!7770 lt!960676 lt!960688) Nil!31329)) (= lt!961212 (t!226247 lt!960666))))))

(declare-fun b!2716590 () Bool)

(assert (=> b!2716590 (= e!1712215 (++!7770 lt!960676 lt!960688))))

(declare-fun b!2716591 () Bool)

(assert (=> b!2716591 (= e!1712215 (Cons!31329 (h!36749 (t!226247 lt!960666)) (++!7770 (t!226247 (t!226247 lt!960666)) (++!7770 lt!960676 lt!960688))))))

(declare-fun b!2716592 () Bool)

(declare-fun res!1140938 () Bool)

(assert (=> b!2716592 (=> (not res!1140938) (not e!1712216))))

(assert (=> b!2716592 (= res!1140938 (= (size!24173 lt!961212) (+ (size!24173 (t!226247 lt!960666)) (size!24173 (++!7770 lt!960676 lt!960688)))))))

(assert (= (and d!782482 c!438943) b!2716590))

(assert (= (and d!782482 (not c!438943)) b!2716591))

(assert (= (and d!782482 res!1140937) b!2716592))

(assert (= (and b!2716592 res!1140938) b!2716593))

(declare-fun m!3114695 () Bool)

(assert (=> d!782482 m!3114695))

(assert (=> d!782482 m!3113931))

(assert (=> d!782482 m!3112291))

(assert (=> d!782482 m!3112761))

(assert (=> b!2716591 m!3112291))

(declare-fun m!3114697 () Bool)

(assert (=> b!2716591 m!3114697))

(declare-fun m!3114699 () Bool)

(assert (=> b!2716592 m!3114699))

(assert (=> b!2716592 m!3113919))

(assert (=> b!2716592 m!3112291))

(assert (=> b!2716592 m!3112769))

(assert (=> b!2715269 d!782482))

(assert (=> b!2715507 d!782424))

(declare-fun d!782484 () Bool)

(assert (=> d!782484 (= (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 lt!960675))) (v!33020 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 lt!960675))))))

(assert (=> b!2715507 d!782484))

(assert (=> b!2715507 d!782322))

(assert (=> b!2715507 d!781972))

(declare-fun e!1712223 () List!31428)

(declare-fun b!2716605 () Bool)

(assert (=> b!2716605 (= e!1712223 (Cons!31328 (h!36748 (t!226246 lt!960683)) (++!7768 (t!226246 (t!226246 lt!960683)) (++!7768 lt!960668 lt!960680))))))

(declare-fun b!2716606 () Bool)

(declare-fun res!1140939 () Bool)

(declare-fun e!1712224 () Bool)

(assert (=> b!2716606 (=> (not res!1140939) (not e!1712224))))

(declare-fun lt!961231 () List!31428)

(assert (=> b!2716606 (= res!1140939 (= (size!24174 lt!961231) (+ (size!24174 (t!226246 lt!960683)) (size!24174 (++!7768 lt!960668 lt!960680)))))))

(declare-fun b!2716607 () Bool)

(assert (=> b!2716607 (= e!1712224 (or (not (= (++!7768 lt!960668 lt!960680) Nil!31328)) (= lt!961231 (t!226246 lt!960683))))))

(declare-fun d!782486 () Bool)

(assert (=> d!782486 e!1712224))

(declare-fun res!1140940 () Bool)

(assert (=> d!782486 (=> (not res!1140940) (not e!1712224))))

(assert (=> d!782486 (= res!1140940 (= (content!4438 lt!961231) ((_ map or) (content!4438 (t!226246 lt!960683)) (content!4438 (++!7768 lt!960668 lt!960680)))))))

(assert (=> d!782486 (= lt!961231 e!1712223)))

(declare-fun c!438950 () Bool)

(assert (=> d!782486 (= c!438950 ((_ is Nil!31328) (t!226246 lt!960683)))))

(assert (=> d!782486 (= (++!7768 (t!226246 lt!960683) (++!7768 lt!960668 lt!960680)) lt!961231)))

(declare-fun b!2716604 () Bool)

(assert (=> b!2716604 (= e!1712223 (++!7768 lt!960668 lt!960680))))

(assert (= (and d!782486 c!438950) b!2716604))

(assert (= (and d!782486 (not c!438950)) b!2716605))

(assert (= (and d!782486 res!1140940) b!2716606))

(assert (= (and b!2716606 res!1140939) b!2716607))

(assert (=> b!2716605 m!3112317))

(declare-fun m!3114701 () Bool)

(assert (=> b!2716605 m!3114701))

(declare-fun m!3114703 () Bool)

(assert (=> b!2716606 m!3114703))

(assert (=> b!2716606 m!3113645))

(assert (=> b!2716606 m!3112317))

(assert (=> b!2716606 m!3112779))

(declare-fun m!3114705 () Bool)

(assert (=> d!782486 m!3114705))

(assert (=> d!782486 m!3114217))

(assert (=> d!782486 m!3112317))

(assert (=> d!782486 m!3112785))

(assert (=> b!2715281 d!782486))

(declare-fun b!2716609 () Bool)

(declare-fun e!1712225 () List!31428)

(assert (=> b!2716609 (= e!1712225 (Cons!31328 (h!36748 (t!226246 lt!960683)) (++!7768 (t!226246 (t!226246 lt!960683)) lt!960668)))))

(declare-fun b!2716610 () Bool)

(declare-fun res!1140941 () Bool)

(declare-fun e!1712226 () Bool)

(assert (=> b!2716610 (=> (not res!1140941) (not e!1712226))))

(declare-fun lt!961246 () List!31428)

(assert (=> b!2716610 (= res!1140941 (= (size!24174 lt!961246) (+ (size!24174 (t!226246 lt!960683)) (size!24174 lt!960668))))))

(declare-fun b!2716611 () Bool)

(assert (=> b!2716611 (= e!1712226 (or (not (= lt!960668 Nil!31328)) (= lt!961246 (t!226246 lt!960683))))))

(declare-fun d!782488 () Bool)

(assert (=> d!782488 e!1712226))

(declare-fun res!1140942 () Bool)

(assert (=> d!782488 (=> (not res!1140942) (not e!1712226))))

(assert (=> d!782488 (= res!1140942 (= (content!4438 lt!961246) ((_ map or) (content!4438 (t!226246 lt!960683)) (content!4438 lt!960668))))))

(assert (=> d!782488 (= lt!961246 e!1712225)))

(declare-fun c!438951 () Bool)

(assert (=> d!782488 (= c!438951 ((_ is Nil!31328) (t!226246 lt!960683)))))

(assert (=> d!782488 (= (++!7768 (t!226246 lt!960683) lt!960668) lt!961246)))

(declare-fun b!2716608 () Bool)

(assert (=> b!2716608 (= e!1712225 lt!960668)))

(assert (= (and d!782488 c!438951) b!2716608))

(assert (= (and d!782488 (not c!438951)) b!2716609))

(assert (= (and d!782488 res!1140942) b!2716610))

(assert (= (and b!2716610 res!1140941) b!2716611))

(declare-fun m!3114707 () Bool)

(assert (=> b!2716609 m!3114707))

(declare-fun m!3114709 () Bool)

(assert (=> b!2716610 m!3114709))

(assert (=> b!2716610 m!3113645))

(assert (=> b!2716610 m!3112791))

(declare-fun m!3114711 () Bool)

(assert (=> d!782488 m!3114711))

(assert (=> d!782488 m!3114217))

(assert (=> d!782488 m!3112797))

(assert (=> b!2715453 d!782488))

(declare-fun d!782490 () Bool)

(declare-fun c!438952 () Bool)

(assert (=> d!782490 (= c!438952 ((_ is Empty!9810) (c!438567 (_1!18127 lt!960684))))))

(declare-fun e!1712227 () List!31429)

(assert (=> d!782490 (= (list!11861 (c!438567 (_1!18127 lt!960684))) e!1712227)))

(declare-fun b!2716614 () Bool)

(declare-fun e!1712228 () List!31429)

(assert (=> b!2716614 (= e!1712228 (list!11862 (xs!12873 (c!438567 (_1!18127 lt!960684)))))))

(declare-fun b!2716613 () Bool)

(assert (=> b!2716613 (= e!1712227 e!1712228)))

(declare-fun c!438953 () Bool)

(assert (=> b!2716613 (= c!438953 ((_ is Leaf!14950) (c!438567 (_1!18127 lt!960684))))))

(declare-fun b!2716612 () Bool)

(assert (=> b!2716612 (= e!1712227 Nil!31329)))

(declare-fun b!2716615 () Bool)

(assert (=> b!2716615 (= e!1712228 (++!7770 (list!11861 (left!24087 (c!438567 (_1!18127 lt!960684)))) (list!11861 (right!24417 (c!438567 (_1!18127 lt!960684))))))))

(assert (= (and d!782490 c!438952) b!2716612))

(assert (= (and d!782490 (not c!438952)) b!2716613))

(assert (= (and b!2716613 c!438953) b!2716614))

(assert (= (and b!2716613 (not c!438953)) b!2716615))

(declare-fun m!3114713 () Bool)

(assert (=> b!2716614 m!3114713))

(declare-fun m!3114715 () Bool)

(assert (=> b!2716615 m!3114715))

(declare-fun m!3114717 () Bool)

(assert (=> b!2716615 m!3114717))

(assert (=> b!2716615 m!3114715))

(assert (=> b!2716615 m!3114717))

(declare-fun m!3114719 () Bool)

(assert (=> b!2716615 m!3114719))

(assert (=> d!782000 d!782490))

(declare-fun b!2716617 () Bool)

(declare-fun e!1712229 () List!31428)

(assert (=> b!2716617 (= e!1712229 (Cons!31328 (h!36748 (t!226246 (list!11856 lt!960675))) (++!7768 (t!226246 (t!226246 (list!11856 lt!960675))) lt!960680)))))

(declare-fun b!2716618 () Bool)

(declare-fun res!1140943 () Bool)

(declare-fun e!1712230 () Bool)

(assert (=> b!2716618 (=> (not res!1140943) (not e!1712230))))

(declare-fun lt!961247 () List!31428)

(assert (=> b!2716618 (= res!1140943 (= (size!24174 lt!961247) (+ (size!24174 (t!226246 (list!11856 lt!960675))) (size!24174 lt!960680))))))

(declare-fun b!2716619 () Bool)

(assert (=> b!2716619 (= e!1712230 (or (not (= lt!960680 Nil!31328)) (= lt!961247 (t!226246 (list!11856 lt!960675)))))))

(declare-fun d!782492 () Bool)

(assert (=> d!782492 e!1712230))

(declare-fun res!1140944 () Bool)

(assert (=> d!782492 (=> (not res!1140944) (not e!1712230))))

(assert (=> d!782492 (= res!1140944 (= (content!4438 lt!961247) ((_ map or) (content!4438 (t!226246 (list!11856 lt!960675))) (content!4438 lt!960680))))))

(assert (=> d!782492 (= lt!961247 e!1712229)))

(declare-fun c!438954 () Bool)

(assert (=> d!782492 (= c!438954 ((_ is Nil!31328) (t!226246 (list!11856 lt!960675))))))

(assert (=> d!782492 (= (++!7768 (t!226246 (list!11856 lt!960675)) lt!960680) lt!961247)))

(declare-fun b!2716616 () Bool)

(assert (=> b!2716616 (= e!1712229 lt!960680)))

(assert (= (and d!782492 c!438954) b!2716616))

(assert (= (and d!782492 (not c!438954)) b!2716617))

(assert (= (and d!782492 res!1140944) b!2716618))

(assert (= (and b!2716618 res!1140943) b!2716619))

(declare-fun m!3114721 () Bool)

(assert (=> b!2716617 m!3114721))

(declare-fun m!3114723 () Bool)

(assert (=> b!2716618 m!3114723))

(assert (=> b!2716618 m!3113939))

(assert (=> b!2716618 m!3112793))

(declare-fun m!3114725 () Bool)

(assert (=> d!782492 m!3114725))

(assert (=> d!782492 m!3113723))

(assert (=> d!782492 m!3112799))

(assert (=> b!2715363 d!782492))

(declare-fun d!782494 () Bool)

(declare-fun c!438955 () Bool)

(assert (=> d!782494 (= c!438955 ((_ is Empty!9809) (c!438566 lt!960675)))))

(declare-fun e!1712231 () List!31428)

(assert (=> d!782494 (= (list!11860 (c!438566 lt!960675)) e!1712231)))

(declare-fun b!2716623 () Bool)

(declare-fun e!1712232 () List!31428)

(assert (=> b!2716623 (= e!1712232 (++!7768 (list!11860 (left!24086 (c!438566 lt!960675))) (list!11860 (right!24416 (c!438566 lt!960675)))))))

(declare-fun b!2716620 () Bool)

(assert (=> b!2716620 (= e!1712231 Nil!31328)))

(declare-fun b!2716622 () Bool)

(assert (=> b!2716622 (= e!1712232 (list!11864 (xs!12872 (c!438566 lt!960675))))))

(declare-fun b!2716621 () Bool)

(assert (=> b!2716621 (= e!1712231 e!1712232)))

(declare-fun c!438956 () Bool)

(assert (=> b!2716621 (= c!438956 ((_ is Leaf!14949) (c!438566 lt!960675)))))

(assert (= (and d!782494 c!438955) b!2716620))

(assert (= (and d!782494 (not c!438955)) b!2716621))

(assert (= (and b!2716621 c!438956) b!2716622))

(assert (= (and b!2716621 (not c!438956)) b!2716623))

(declare-fun m!3114727 () Bool)

(assert (=> b!2716623 m!3114727))

(declare-fun m!3114729 () Bool)

(assert (=> b!2716623 m!3114729))

(assert (=> b!2716623 m!3114727))

(assert (=> b!2716623 m!3114729))

(declare-fun m!3114731 () Bool)

(assert (=> b!2716623 m!3114731))

(declare-fun m!3114733 () Bool)

(assert (=> b!2716622 m!3114733))

(assert (=> d!781972 d!782494))

(declare-fun d!782496 () Bool)

(assert (=> d!782496 (= (list!11856 (_2!18127 lt!960777)) (list!11860 (c!438566 (_2!18127 lt!960777))))))

(declare-fun bs!488169 () Bool)

(assert (= bs!488169 d!782496))

(declare-fun m!3114735 () Bool)

(assert (=> bs!488169 m!3114735))

(assert (=> b!2715297 d!782496))

(assert (=> b!2715297 d!782368))

(assert (=> b!2715297 d!781914))

(declare-fun d!782498 () Bool)

(assert (=> d!782498 (= (list!11857 (_1!18127 lt!960763)) (list!11861 (c!438567 (_1!18127 lt!960763))))))

(declare-fun bs!488170 () Bool)

(assert (= bs!488170 d!782498))

(declare-fun m!3114737 () Bool)

(assert (=> bs!488170 m!3114737))

(assert (=> b!2715241 d!782498))

(declare-fun b!2716624 () Bool)

(declare-fun e!1712233 () tuple2!30994)

(declare-fun lt!961248 () Option!6185)

(declare-fun lt!961250 () tuple2!30994)

(assert (=> b!2716624 (= e!1712233 (tuple2!30995 (Cons!31329 (_1!18131 (v!33020 lt!961248)) (_1!18129 lt!961250)) (_2!18129 lt!961250)))))

(assert (=> b!2716624 (= lt!961250 (lexList!1218 thiss!11556 rules!1182 (_2!18131 (v!33020 lt!961248))))))

(declare-fun b!2716625 () Bool)

(assert (=> b!2716625 (= e!1712233 (tuple2!30995 Nil!31329 (list!11856 (_2!18128 (v!33014 lt!960677)))))))

(declare-fun d!782500 () Bool)

(declare-fun e!1712234 () Bool)

(assert (=> d!782500 e!1712234))

(declare-fun c!438957 () Bool)

(declare-fun lt!961249 () tuple2!30994)

(assert (=> d!782500 (= c!438957 (> (size!24173 (_1!18129 lt!961249)) 0))))

(assert (=> d!782500 (= lt!961249 e!1712233)))

(declare-fun c!438958 () Bool)

(assert (=> d!782500 (= c!438958 ((_ is Some!6184) lt!961248))))

(assert (=> d!782500 (= lt!961248 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960677)))))))

(assert (=> d!782500 (= (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960677)))) lt!961249)))

(declare-fun b!2716626 () Bool)

(declare-fun e!1712235 () Bool)

(assert (=> b!2716626 (= e!1712234 e!1712235)))

(declare-fun res!1140945 () Bool)

(assert (=> b!2716626 (= res!1140945 (< (size!24174 (_2!18129 lt!961249)) (size!24174 (list!11856 (_2!18128 (v!33014 lt!960677))))))))

(assert (=> b!2716626 (=> (not res!1140945) (not e!1712235))))

(declare-fun b!2716627 () Bool)

(assert (=> b!2716627 (= e!1712235 (not (isEmpty!17862 (_1!18129 lt!961249))))))

(declare-fun b!2716628 () Bool)

(assert (=> b!2716628 (= e!1712234 (= (_2!18129 lt!961249) (list!11856 (_2!18128 (v!33014 lt!960677)))))))

(assert (= (and d!782500 c!438958) b!2716624))

(assert (= (and d!782500 (not c!438958)) b!2716625))

(assert (= (and d!782500 c!438957) b!2716626))

(assert (= (and d!782500 (not c!438957)) b!2716628))

(assert (= (and b!2716626 res!1140945) b!2716627))

(declare-fun m!3114739 () Bool)

(assert (=> b!2716624 m!3114739))

(declare-fun m!3114741 () Bool)

(assert (=> d!782500 m!3114741))

(assert (=> d!782500 m!3112723))

(declare-fun m!3114743 () Bool)

(assert (=> d!782500 m!3114743))

(declare-fun m!3114745 () Bool)

(assert (=> b!2716626 m!3114745))

(assert (=> b!2716626 m!3112723))

(assert (=> b!2716626 m!3114207))

(declare-fun m!3114747 () Bool)

(assert (=> b!2716627 m!3114747))

(assert (=> b!2715241 d!782500))

(declare-fun d!782502 () Bool)

(assert (=> d!782502 (= (list!11856 (_2!18128 (v!33014 lt!960677))) (list!11860 (c!438566 (_2!18128 (v!33014 lt!960677)))))))

(declare-fun bs!488171 () Bool)

(assert (= bs!488171 d!782502))

(declare-fun m!3114749 () Bool)

(assert (=> bs!488171 m!3114749))

(assert (=> b!2715241 d!782502))

(declare-fun d!782504 () Bool)

(declare-fun lt!961251 () Int)

(assert (=> d!782504 (= lt!961251 (size!24174 (list!11856 (_2!18127 lt!960742))))))

(assert (=> d!782504 (= lt!961251 (size!24176 (c!438566 (_2!18127 lt!960742))))))

(assert (=> d!782504 (= (size!24171 (_2!18127 lt!960742)) lt!961251)))

(declare-fun bs!488172 () Bool)

(assert (= bs!488172 d!782504))

(assert (=> bs!488172 m!3112615))

(assert (=> bs!488172 m!3112615))

(declare-fun m!3114751 () Bool)

(assert (=> bs!488172 m!3114751))

(declare-fun m!3114753 () Bool)

(assert (=> bs!488172 m!3114753))

(assert (=> b!2715173 d!782504))

(declare-fun d!782506 () Bool)

(declare-fun lt!961254 () Int)

(assert (=> d!782506 (= lt!961254 (size!24174 (list!11856 treated!9)))))

(assert (=> d!782506 (= lt!961254 (size!24176 (c!438566 treated!9)))))

(assert (=> d!782506 (= (size!24171 treated!9) lt!961254)))

(declare-fun bs!488173 () Bool)

(assert (= bs!488173 d!782506))

(assert (=> bs!488173 m!3112379))

(assert (=> bs!488173 m!3112379))

(assert (=> bs!488173 m!3114683))

(declare-fun m!3114755 () Bool)

(assert (=> bs!488173 m!3114755))

(assert (=> b!2715173 d!782506))

(assert (=> b!2715484 d!782242))

(assert (=> b!2715484 d!782244))

(assert (=> b!2715484 d!782246))

(assert (=> b!2715484 d!782248))

(assert (=> b!2715484 d!782250))

(assert (=> d!781948 d!781912))

(assert (=> d!781948 d!781946))

(declare-fun d!782508 () Bool)

(assert (=> d!782508 (= (++!7770 (++!7770 lt!960666 lt!960676) lt!960688) (++!7770 lt!960666 (++!7770 lt!960676 lt!960688)))))

(assert (=> d!782508 true))

(declare-fun _$52!1433 () Unit!45356)

(assert (=> d!782508 (= (choose!15968 lt!960666 lt!960676 lt!960688) _$52!1433)))

(declare-fun bs!488174 () Bool)

(assert (= bs!488174 d!782508))

(assert (=> bs!488174 m!3112333))

(assert (=> bs!488174 m!3112333))

(assert (=> bs!488174 m!3112335))

(assert (=> bs!488174 m!3112291))

(assert (=> bs!488174 m!3112291))

(assert (=> bs!488174 m!3112293))

(assert (=> d!781948 d!782508))

(assert (=> d!781948 d!781976))

(assert (=> d!781948 d!781920))

(declare-fun d!782510 () Bool)

(declare-fun c!438963 () Bool)

(assert (=> d!782510 (= c!438963 ((_ is Empty!9810) (c!438567 (_1!18127 lt!960670))))))

(declare-fun e!1712240 () List!31429)

(assert (=> d!782510 (= (list!11861 (c!438567 (_1!18127 lt!960670))) e!1712240)))

(declare-fun b!2716639 () Bool)

(declare-fun e!1712241 () List!31429)

(assert (=> b!2716639 (= e!1712241 (list!11862 (xs!12873 (c!438567 (_1!18127 lt!960670)))))))

(declare-fun b!2716638 () Bool)

(assert (=> b!2716638 (= e!1712240 e!1712241)))

(declare-fun c!438964 () Bool)

(assert (=> b!2716638 (= c!438964 ((_ is Leaf!14950) (c!438567 (_1!18127 lt!960670))))))

(declare-fun b!2716637 () Bool)

(assert (=> b!2716637 (= e!1712240 Nil!31329)))

(declare-fun b!2716640 () Bool)

(assert (=> b!2716640 (= e!1712241 (++!7770 (list!11861 (left!24087 (c!438567 (_1!18127 lt!960670)))) (list!11861 (right!24417 (c!438567 (_1!18127 lt!960670))))))))

(assert (= (and d!782510 c!438963) b!2716637))

(assert (= (and d!782510 (not c!438963)) b!2716638))

(assert (= (and b!2716638 c!438964) b!2716639))

(assert (= (and b!2716638 (not c!438964)) b!2716640))

(declare-fun m!3114757 () Bool)

(assert (=> b!2716639 m!3114757))

(declare-fun m!3114759 () Bool)

(assert (=> b!2716640 m!3114759))

(declare-fun m!3114761 () Bool)

(assert (=> b!2716640 m!3114761))

(assert (=> b!2716640 m!3114759))

(assert (=> b!2716640 m!3114761))

(declare-fun m!3114763 () Bool)

(assert (=> b!2716640 m!3114763))

(assert (=> d!781978 d!782510))

(declare-fun d!782512 () Bool)

(declare-fun lt!961257 () Bool)

(assert (=> d!782512 (= lt!961257 (isEmpty!17862 (list!11857 (_1!18127 lt!960846))))))

(assert (=> d!782512 (= lt!961257 (isEmpty!17866 (c!438567 (_1!18127 lt!960846))))))

(assert (=> d!782512 (= (isEmpty!17860 (_1!18127 lt!960846)) lt!961257)))

(declare-fun bs!488175 () Bool)

(assert (= bs!488175 d!782512))

(assert (=> bs!488175 m!3113111))

(assert (=> bs!488175 m!3113111))

(declare-fun m!3114765 () Bool)

(assert (=> bs!488175 m!3114765))

(declare-fun m!3114767 () Bool)

(assert (=> bs!488175 m!3114767))

(assert (=> b!2715466 d!782512))

(declare-fun d!782514 () Bool)

(declare-fun lt!961258 () Bool)

(assert (=> d!782514 (= lt!961258 (isEmpty!17862 (list!11857 (_1!18127 lt!960879))))))

(assert (=> d!782514 (= lt!961258 (isEmpty!17866 (c!438567 (_1!18127 lt!960879))))))

(assert (=> d!782514 (= (isEmpty!17860 (_1!18127 lt!960879)) lt!961258)))

(declare-fun bs!488176 () Bool)

(assert (= bs!488176 d!782514))

(assert (=> bs!488176 m!3113189))

(assert (=> bs!488176 m!3113189))

(declare-fun m!3114769 () Bool)

(assert (=> bs!488176 m!3114769))

(declare-fun m!3114771 () Bool)

(assert (=> bs!488176 m!3114771))

(assert (=> b!2715523 d!782514))

(declare-fun d!782516 () Bool)

(declare-fun c!438965 () Bool)

(assert (=> d!782516 (= c!438965 ((_ is Empty!9809) (c!438566 (_2!18127 lt!960670))))))

(declare-fun e!1712244 () List!31428)

(assert (=> d!782516 (= (list!11860 (c!438566 (_2!18127 lt!960670))) e!1712244)))

(declare-fun b!2716650 () Bool)

(declare-fun e!1712245 () List!31428)

(assert (=> b!2716650 (= e!1712245 (++!7768 (list!11860 (left!24086 (c!438566 (_2!18127 lt!960670)))) (list!11860 (right!24416 (c!438566 (_2!18127 lt!960670))))))))

(declare-fun b!2716647 () Bool)

(assert (=> b!2716647 (= e!1712244 Nil!31328)))

(declare-fun b!2716649 () Bool)

(assert (=> b!2716649 (= e!1712245 (list!11864 (xs!12872 (c!438566 (_2!18127 lt!960670)))))))

(declare-fun b!2716648 () Bool)

(assert (=> b!2716648 (= e!1712244 e!1712245)))

(declare-fun c!438966 () Bool)

(assert (=> b!2716648 (= c!438966 ((_ is Leaf!14949) (c!438566 (_2!18127 lt!960670))))))

(assert (= (and d!782516 c!438965) b!2716647))

(assert (= (and d!782516 (not c!438965)) b!2716648))

(assert (= (and b!2716648 c!438966) b!2716649))

(assert (= (and b!2716648 (not c!438966)) b!2716650))

(declare-fun m!3114773 () Bool)

(assert (=> b!2716650 m!3114773))

(declare-fun m!3114775 () Bool)

(assert (=> b!2716650 m!3114775))

(assert (=> b!2716650 m!3114773))

(assert (=> b!2716650 m!3114775))

(declare-fun m!3114777 () Bool)

(assert (=> b!2716650 m!3114777))

(declare-fun m!3114779 () Bool)

(assert (=> b!2716649 m!3114779))

(assert (=> d!781964 d!782516))

(assert (=> b!2715033 d!781890))

(declare-fun d!782518 () Bool)

(declare-fun c!438967 () Bool)

(assert (=> d!782518 (= c!438967 ((_ is Node!9809) (left!24086 (c!438566 input!603))))))

(declare-fun e!1712246 () Bool)

(assert (=> d!782518 (= (inv!42514 (left!24086 (c!438566 input!603))) e!1712246)))

(declare-fun b!2716651 () Bool)

(assert (=> b!2716651 (= e!1712246 (inv!42525 (left!24086 (c!438566 input!603))))))

(declare-fun b!2716652 () Bool)

(declare-fun e!1712247 () Bool)

(assert (=> b!2716652 (= e!1712246 e!1712247)))

(declare-fun res!1140952 () Bool)

(assert (=> b!2716652 (= res!1140952 (not ((_ is Leaf!14949) (left!24086 (c!438566 input!603)))))))

(assert (=> b!2716652 (=> res!1140952 e!1712247)))

(declare-fun b!2716653 () Bool)

(assert (=> b!2716653 (= e!1712247 (inv!42526 (left!24086 (c!438566 input!603))))))

(assert (= (and d!782518 c!438967) b!2716651))

(assert (= (and d!782518 (not c!438967)) b!2716652))

(assert (= (and b!2716652 (not res!1140952)) b!2716653))

(declare-fun m!3114781 () Bool)

(assert (=> b!2716651 m!3114781))

(declare-fun m!3114783 () Bool)

(assert (=> b!2716653 m!3114783))

(assert (=> b!2715590 d!782518))

(declare-fun d!782520 () Bool)

(declare-fun c!438968 () Bool)

(assert (=> d!782520 (= c!438968 ((_ is Node!9809) (right!24416 (c!438566 input!603))))))

(declare-fun e!1712248 () Bool)

(assert (=> d!782520 (= (inv!42514 (right!24416 (c!438566 input!603))) e!1712248)))

(declare-fun b!2716654 () Bool)

(assert (=> b!2716654 (= e!1712248 (inv!42525 (right!24416 (c!438566 input!603))))))

(declare-fun b!2716655 () Bool)

(declare-fun e!1712249 () Bool)

(assert (=> b!2716655 (= e!1712248 e!1712249)))

(declare-fun res!1140953 () Bool)

(assert (=> b!2716655 (= res!1140953 (not ((_ is Leaf!14949) (right!24416 (c!438566 input!603)))))))

(assert (=> b!2716655 (=> res!1140953 e!1712249)))

(declare-fun b!2716656 () Bool)

(assert (=> b!2716656 (= e!1712249 (inv!42526 (right!24416 (c!438566 input!603))))))

(assert (= (and d!782520 c!438968) b!2716654))

(assert (= (and d!782520 (not c!438968)) b!2716655))

(assert (= (and b!2716655 (not res!1140953)) b!2716656))

(declare-fun m!3114785 () Bool)

(assert (=> b!2716654 m!3114785))

(declare-fun m!3114787 () Bool)

(assert (=> b!2716656 m!3114787))

(assert (=> b!2715590 d!782520))

(declare-fun b!2716657 () Bool)

(declare-fun e!1712251 () Bool)

(declare-fun e!1712250 () Bool)

(assert (=> b!2716657 (= e!1712251 e!1712250)))

(declare-fun res!1140959 () Bool)

(assert (=> b!2716657 (=> (not res!1140959) (not e!1712250))))

(assert (=> b!2716657 (= res!1140959 (<= (- 1) (- (height!1451 (left!24087 (c!438567 acc!331))) (height!1451 (right!24417 (c!438567 acc!331))))))))

(declare-fun b!2716658 () Bool)

(declare-fun res!1140954 () Bool)

(assert (=> b!2716658 (=> (not res!1140954) (not e!1712250))))

(assert (=> b!2716658 (= res!1140954 (not (isEmpty!17866 (left!24087 (c!438567 acc!331)))))))

(declare-fun d!782522 () Bool)

(declare-fun res!1140957 () Bool)

(assert (=> d!782522 (=> res!1140957 e!1712251)))

(assert (=> d!782522 (= res!1140957 (not ((_ is Node!9810) (c!438567 acc!331))))))

(assert (=> d!782522 (= (isBalanced!2971 (c!438567 acc!331)) e!1712251)))

(declare-fun b!2716659 () Bool)

(declare-fun res!1140956 () Bool)

(assert (=> b!2716659 (=> (not res!1140956) (not e!1712250))))

(assert (=> b!2716659 (= res!1140956 (isBalanced!2971 (left!24087 (c!438567 acc!331))))))

(declare-fun b!2716660 () Bool)

(assert (=> b!2716660 (= e!1712250 (not (isEmpty!17866 (right!24417 (c!438567 acc!331)))))))

(declare-fun b!2716661 () Bool)

(declare-fun res!1140958 () Bool)

(assert (=> b!2716661 (=> (not res!1140958) (not e!1712250))))

(assert (=> b!2716661 (= res!1140958 (<= (- (height!1451 (left!24087 (c!438567 acc!331))) (height!1451 (right!24417 (c!438567 acc!331)))) 1))))

(declare-fun b!2716662 () Bool)

(declare-fun res!1140955 () Bool)

(assert (=> b!2716662 (=> (not res!1140955) (not e!1712250))))

(assert (=> b!2716662 (= res!1140955 (isBalanced!2971 (right!24417 (c!438567 acc!331))))))

(assert (= (and d!782522 (not res!1140957)) b!2716657))

(assert (= (and b!2716657 res!1140959) b!2716661))

(assert (= (and b!2716661 res!1140958) b!2716659))

(assert (= (and b!2716659 res!1140956) b!2716662))

(assert (= (and b!2716662 res!1140955) b!2716658))

(assert (= (and b!2716658 res!1140954) b!2716660))

(assert (=> b!2716657 m!3114303))

(assert (=> b!2716657 m!3114305))

(declare-fun m!3114789 () Bool)

(assert (=> b!2716662 m!3114789))

(declare-fun m!3114791 () Bool)

(assert (=> b!2716660 m!3114791))

(declare-fun m!3114793 () Bool)

(assert (=> b!2716658 m!3114793))

(declare-fun m!3114795 () Bool)

(assert (=> b!2716659 m!3114795))

(assert (=> b!2716661 m!3114303))

(assert (=> b!2716661 m!3114305))

(assert (=> d!782020 d!782522))

(declare-fun d!782524 () Bool)

(declare-fun c!438969 () Bool)

(assert (=> d!782524 (= c!438969 ((_ is Empty!9810) (c!438567 (_1!18127 lt!960682))))))

(declare-fun e!1712252 () List!31429)

(assert (=> d!782524 (= (list!11861 (c!438567 (_1!18127 lt!960682))) e!1712252)))

(declare-fun b!2716665 () Bool)

(declare-fun e!1712253 () List!31429)

(assert (=> b!2716665 (= e!1712253 (list!11862 (xs!12873 (c!438567 (_1!18127 lt!960682)))))))

(declare-fun b!2716664 () Bool)

(assert (=> b!2716664 (= e!1712252 e!1712253)))

(declare-fun c!438970 () Bool)

(assert (=> b!2716664 (= c!438970 ((_ is Leaf!14950) (c!438567 (_1!18127 lt!960682))))))

(declare-fun b!2716663 () Bool)

(assert (=> b!2716663 (= e!1712252 Nil!31329)))

(declare-fun b!2716666 () Bool)

(assert (=> b!2716666 (= e!1712253 (++!7770 (list!11861 (left!24087 (c!438567 (_1!18127 lt!960682)))) (list!11861 (right!24417 (c!438567 (_1!18127 lt!960682))))))))

(assert (= (and d!782524 c!438969) b!2716663))

(assert (= (and d!782524 (not c!438969)) b!2716664))

(assert (= (and b!2716664 c!438970) b!2716665))

(assert (= (and b!2716664 (not c!438970)) b!2716666))

(declare-fun m!3114797 () Bool)

(assert (=> b!2716665 m!3114797))

(declare-fun m!3114799 () Bool)

(assert (=> b!2716666 m!3114799))

(declare-fun m!3114801 () Bool)

(assert (=> b!2716666 m!3114801))

(assert (=> b!2716666 m!3114799))

(assert (=> b!2716666 m!3114801))

(declare-fun m!3114803 () Bool)

(assert (=> b!2716666 m!3114803))

(assert (=> d!782024 d!782524))

(declare-fun d!782526 () Bool)

(assert (=> d!782526 (= (list!11857 lt!960766) (list!11861 (c!438567 lt!960766)))))

(declare-fun bs!488177 () Bool)

(assert (= bs!488177 d!782526))

(declare-fun m!3114805 () Bool)

(assert (=> bs!488177 m!3114805))

(assert (=> b!2715259 d!782526))

(declare-fun d!782528 () Bool)

(declare-fun e!1712255 () Bool)

(assert (=> d!782528 e!1712255))

(declare-fun res!1140960 () Bool)

(assert (=> d!782528 (=> (not res!1140960) (not e!1712255))))

(declare-fun lt!961259 () List!31429)

(assert (=> d!782528 (= res!1140960 (= (content!4437 lt!961259) ((_ map or) (content!4437 (list!11857 lt!960678)) (content!4437 (list!11857 (_1!18127 lt!960670))))))))

(declare-fun e!1712254 () List!31429)

(assert (=> d!782528 (= lt!961259 e!1712254)))

(declare-fun c!438971 () Bool)

(assert (=> d!782528 (= c!438971 ((_ is Nil!31329) (list!11857 lt!960678)))))

(assert (=> d!782528 (= (++!7770 (list!11857 lt!960678) (list!11857 (_1!18127 lt!960670))) lt!961259)))

(declare-fun b!2716670 () Bool)

(assert (=> b!2716670 (= e!1712255 (or (not (= (list!11857 (_1!18127 lt!960670)) Nil!31329)) (= lt!961259 (list!11857 lt!960678))))))

(declare-fun b!2716667 () Bool)

(assert (=> b!2716667 (= e!1712254 (list!11857 (_1!18127 lt!960670)))))

(declare-fun b!2716668 () Bool)

(assert (=> b!2716668 (= e!1712254 (Cons!31329 (h!36749 (list!11857 lt!960678)) (++!7770 (t!226247 (list!11857 lt!960678)) (list!11857 (_1!18127 lt!960670)))))))

(declare-fun b!2716669 () Bool)

(declare-fun res!1140961 () Bool)

(assert (=> b!2716669 (=> (not res!1140961) (not e!1712255))))

(assert (=> b!2716669 (= res!1140961 (= (size!24173 lt!961259) (+ (size!24173 (list!11857 lt!960678)) (size!24173 (list!11857 (_1!18127 lt!960670))))))))

(assert (= (and d!782528 c!438971) b!2716667))

(assert (= (and d!782528 (not c!438971)) b!2716668))

(assert (= (and d!782528 res!1140960) b!2716669))

(assert (= (and b!2716669 res!1140961) b!2716670))

(declare-fun m!3114807 () Bool)

(assert (=> d!782528 m!3114807))

(assert (=> d!782528 m!3112289))

(declare-fun m!3114809 () Bool)

(assert (=> d!782528 m!3114809))

(assert (=> d!782528 m!3112295))

(declare-fun m!3114811 () Bool)

(assert (=> d!782528 m!3114811))

(assert (=> b!2716668 m!3112295))

(declare-fun m!3114813 () Bool)

(assert (=> b!2716668 m!3114813))

(declare-fun m!3114815 () Bool)

(assert (=> b!2716669 m!3114815))

(assert (=> b!2716669 m!3112289))

(declare-fun m!3114817 () Bool)

(assert (=> b!2716669 m!3114817))

(assert (=> b!2716669 m!3112295))

(declare-fun m!3114819 () Bool)

(assert (=> b!2716669 m!3114819))

(assert (=> b!2715259 d!782528))

(assert (=> b!2715259 d!781974))

(assert (=> b!2715259 d!781978))

(declare-fun d!782530 () Bool)

(assert (=> d!782530 (= (list!11857 lt!960759) (list!11861 (c!438567 lt!960759)))))

(declare-fun bs!488178 () Bool)

(assert (= bs!488178 d!782530))

(declare-fun m!3114821 () Bool)

(assert (=> bs!488178 m!3114821))

(assert (=> b!2715236 d!782530))

(declare-fun d!782532 () Bool)

(assert (=> d!782532 (= (list!11857 (_1!18127 lt!960687)) (list!11861 (c!438567 (_1!18127 lt!960687))))))

(declare-fun bs!488179 () Bool)

(assert (= bs!488179 d!782532))

(assert (=> bs!488179 m!3113413))

(assert (=> b!2715236 d!782532))

(declare-fun b!2716671 () Bool)

(declare-fun e!1712257 () Bool)

(declare-fun e!1712256 () Bool)

(assert (=> b!2716671 (= e!1712257 e!1712256)))

(declare-fun res!1140967 () Bool)

(assert (=> b!2716671 (=> (not res!1140967) (not e!1712256))))

(assert (=> b!2716671 (= res!1140967 (<= (- 1) (- (height!1451 (left!24087 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664))))) (height!1451 (right!24417 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664))))))))))

(declare-fun b!2716672 () Bool)

(declare-fun res!1140962 () Bool)

(assert (=> b!2716672 (=> (not res!1140962) (not e!1712256))))

(assert (=> b!2716672 (= res!1140962 (not (isEmpty!17866 (left!24087 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664)))))))))

(declare-fun d!782534 () Bool)

(declare-fun res!1140965 () Bool)

(assert (=> d!782534 (=> res!1140965 e!1712257)))

(assert (=> d!782534 (= res!1140965 (not ((_ is Node!9810) (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664))))))))

(assert (=> d!782534 (= (isBalanced!2971 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664)))) e!1712257)))

(declare-fun b!2716673 () Bool)

(declare-fun res!1140964 () Bool)

(assert (=> b!2716673 (=> (not res!1140964) (not e!1712256))))

(assert (=> b!2716673 (= res!1140964 (isBalanced!2971 (left!24087 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664))))))))

(declare-fun b!2716674 () Bool)

(assert (=> b!2716674 (= e!1712256 (not (isEmpty!17866 (right!24417 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664)))))))))

(declare-fun b!2716675 () Bool)

(declare-fun res!1140966 () Bool)

(assert (=> b!2716675 (=> (not res!1140966) (not e!1712256))))

(assert (=> b!2716675 (= res!1140966 (<= (- (height!1451 (left!24087 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664))))) (height!1451 (right!24417 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664)))))) 1))))

(declare-fun b!2716676 () Bool)

(declare-fun res!1140963 () Bool)

(assert (=> b!2716676 (=> (not res!1140963) (not e!1712256))))

(assert (=> b!2716676 (= res!1140963 (isBalanced!2971 (right!24417 (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664))))))))

(assert (= (and d!782534 (not res!1140965)) b!2716671))

(assert (= (and b!2716671 res!1140967) b!2716675))

(assert (= (and b!2716675 res!1140966) b!2716673))

(assert (= (and b!2716673 res!1140964) b!2716676))

(assert (= (and b!2716676 res!1140963) b!2716672))

(assert (= (and b!2716672 res!1140962) b!2716674))

(declare-fun m!3114823 () Bool)

(assert (=> b!2716671 m!3114823))

(declare-fun m!3114825 () Bool)

(assert (=> b!2716671 m!3114825))

(declare-fun m!3114827 () Bool)

(assert (=> b!2716676 m!3114827))

(declare-fun m!3114829 () Bool)

(assert (=> b!2716674 m!3114829))

(declare-fun m!3114831 () Bool)

(assert (=> b!2716672 m!3114831))

(declare-fun m!3114833 () Bool)

(assert (=> b!2716673 m!3114833))

(assert (=> b!2716675 m!3114823))

(assert (=> b!2716675 m!3114825))

(assert (=> d!781970 d!782534))

(declare-fun bm!175332 () Bool)

(declare-fun lt!961330 () List!31429)

(declare-fun lt!961335 () List!31429)

(declare-fun lt!961338 () List!31429)

(declare-fun lt!961342 () List!31429)

(declare-fun call!175338 () List!31429)

(declare-fun c!439004 () Bool)

(assert (=> bm!175332 (= call!175338 (++!7770 (ite c!439004 lt!961335 lt!961338) (ite c!439004 lt!961342 lt!961330)))))

(declare-fun b!2716805 () Bool)

(declare-fun res!1141036 () Bool)

(declare-fun e!1712337 () Bool)

(assert (=> b!2716805 (=> (not res!1141036) (not e!1712337))))

(declare-fun lt!961339 () Conc!9810)

(assert (=> b!2716805 (= res!1141036 (<= (height!1451 lt!961339) (+ (height!1451 (c!438567 acc!331)) 1)))))

(declare-fun b!2716807 () Bool)

(declare-fun c!439002 () Bool)

(assert (=> b!2716807 (= c!439002 (< (csize!19851 (c!438567 acc!331)) 512))))

(declare-fun e!1712336 () Conc!9810)

(declare-fun e!1712335 () Conc!9810)

(assert (=> b!2716807 (= e!1712336 e!1712335)))

(declare-fun b!2716808 () Bool)

(declare-fun append!811 (IArray!19625 Token!9044) IArray!19625)

(assert (=> b!2716808 (= e!1712335 (Leaf!14950 (append!811 (xs!12873 (c!438567 acc!331)) (_1!18128 (v!33014 lt!960664))) (+ (csize!19851 (c!438567 acc!331)) 1)))))

(declare-fun lt!961332 () List!31429)

(assert (=> b!2716808 (= lt!961332 ($colon+!179 (list!11862 (xs!12873 (c!438567 acc!331))) (_1!18128 (v!33014 lt!960664))))))

(declare-fun b!2716809 () Bool)

(declare-fun e!1712339 () Conc!9810)

(declare-fun lt!961333 () Conc!9810)

(assert (=> b!2716809 (= e!1712339 (right!24417 lt!961333))))

(declare-fun bm!175333 () Bool)

(declare-fun call!175340 () List!31429)

(assert (=> bm!175333 (= call!175340 (list!11861 (ite c!439004 (left!24087 (c!438567 acc!331)) (right!24417 lt!961333))))))

(declare-fun bm!175334 () Bool)

(declare-fun lt!961343 () List!31429)

(declare-fun lt!961345 () List!31429)

(declare-fun call!175346 () List!31429)

(declare-fun lt!961336 () List!31429)

(assert (=> bm!175334 (= call!175346 (++!7770 (ite c!439004 call!175338 lt!961345) (ite c!439004 lt!961336 lt!961343)))))

(declare-fun bm!175335 () Bool)

(declare-fun call!175343 () List!31429)

(declare-fun call!175339 () List!31429)

(declare-fun lt!961340 () List!31429)

(assert (=> bm!175335 (= call!175339 (++!7770 (ite c!439004 lt!961335 lt!961340) (ite c!439004 call!175343 lt!961345)))))

(declare-fun b!2716810 () Bool)

(assert (=> b!2716810 (= e!1712337 (= (list!11861 lt!961339) ($colon+!179 (list!11861 (c!438567 acc!331)) (_1!18128 (v!33014 lt!960664)))))))

(declare-fun bm!175336 () Bool)

(declare-fun call!175342 () Conc!9810)

(assert (=> bm!175336 (= call!175342 (<>!252 (left!24087 (c!438567 acc!331)) (ite c!439004 lt!961333 (left!24087 lt!961333))))))

(declare-fun bm!175337 () Bool)

(declare-fun call!175344 () List!31429)

(assert (=> bm!175337 (= call!175344 (list!11861 (right!24417 (c!438567 acc!331))))))

(declare-fun lt!961328 () List!31429)

(declare-fun bm!175338 () Bool)

(assert (=> bm!175338 (= call!175343 (++!7770 (ite c!439004 lt!961342 lt!961328) (ite c!439004 lt!961336 lt!961338)))))

(declare-fun d!782536 () Bool)

(assert (=> d!782536 e!1712337))

(declare-fun res!1141037 () Bool)

(assert (=> d!782536 (=> (not res!1141037) (not e!1712337))))

(assert (=> d!782536 (= res!1141037 (isBalanced!2971 lt!961339))))

(declare-fun e!1712334 () Conc!9810)

(assert (=> d!782536 (= lt!961339 e!1712334)))

(declare-fun c!439005 () Bool)

(assert (=> d!782536 (= c!439005 ((_ is Empty!9810) (c!438567 acc!331)))))

(assert (=> d!782536 (isBalanced!2971 (c!438567 acc!331))))

(assert (=> d!782536 (= (append!809 (c!438567 acc!331) (_1!18128 (v!33014 lt!960664))) lt!961339)))

(declare-fun b!2716806 () Bool)

(assert (=> b!2716806 (= e!1712334 e!1712336)))

(declare-fun c!439003 () Bool)

(assert (=> b!2716806 (= c!439003 ((_ is Node!9810) (c!438567 acc!331)))))

(declare-fun bm!175339 () Bool)

(declare-fun call!175345 () IArray!19625)

(assert (=> bm!175339 (= call!175345 (fill!142 1 (_1!18128 (v!33014 lt!960664))))))

(declare-fun b!2716811 () Bool)

(assert (=> b!2716811 (= e!1712334 (Leaf!14950 call!175345 1))))

(declare-fun bm!175340 () Bool)

(declare-fun c!439006 () Bool)

(assert (=> bm!175340 (= c!439006 c!439003)))

(declare-fun call!175341 () Conc!9810)

(assert (=> bm!175340 (= call!175341 (<>!252 (ite c!439003 call!175342 (c!438567 acc!331)) e!1712339))))

(declare-fun b!2716812 () Bool)

(declare-fun e!1712338 () Conc!9810)

(assert (=> b!2716812 (= e!1712338 call!175342)))

(assert (=> b!2716812 (= lt!961335 call!175340)))

(assert (=> b!2716812 (= lt!961342 call!175344)))

(assert (=> b!2716812 (= lt!961336 (Cons!31329 (_1!18128 (v!33014 lt!960664)) Nil!31329))))

(declare-fun lt!961329 () Unit!45356)

(declare-fun call!175337 () Unit!45356)

(assert (=> b!2716812 (= lt!961329 call!175337)))

(assert (=> b!2716812 (= call!175346 call!175339)))

(declare-fun lt!961341 () Unit!45356)

(assert (=> b!2716812 (= lt!961341 lt!961329)))

(declare-fun b!2716813 () Bool)

(assert (=> b!2716813 (= e!1712339 (Leaf!14950 call!175345 1))))

(declare-fun b!2716814 () Bool)

(assert (=> b!2716814 (= c!439004 (<= (height!1451 lt!961333) (+ (height!1451 (left!24087 (c!438567 acc!331))) 1)))))

(assert (=> b!2716814 (= lt!961333 (append!809 (right!24417 (c!438567 acc!331)) (_1!18128 (v!33014 lt!960664))))))

(assert (=> b!2716814 (= e!1712336 e!1712338)))

(declare-fun b!2716815 () Bool)

(assert (=> b!2716815 (= e!1712335 call!175341)))

(declare-fun b!2716816 () Bool)

(declare-fun res!1141038 () Bool)

(assert (=> b!2716816 (=> (not res!1141038) (not e!1712337))))

(assert (=> b!2716816 (= res!1141038 (<= (height!1451 (c!438567 acc!331)) (height!1451 lt!961339)))))

(declare-fun b!2716817 () Bool)

(assert (=> b!2716817 (= e!1712338 call!175341)))

(assert (=> b!2716817 (= lt!961340 (list!11861 (left!24087 (c!438567 acc!331))))))

(assert (=> b!2716817 (= lt!961345 (list!11861 (left!24087 lt!961333)))))

(assert (=> b!2716817 (= lt!961343 call!175340)))

(declare-fun lt!961344 () Unit!45356)

(declare-fun lemmaConcatAssociativity!1604 (List!31429 List!31429 List!31429) Unit!45356)

(assert (=> b!2716817 (= lt!961344 (lemmaConcatAssociativity!1604 lt!961340 lt!961345 lt!961343))))

(assert (=> b!2716817 (= (++!7770 call!175339 lt!961343) (++!7770 lt!961340 call!175346))))

(declare-fun lt!961331 () Unit!45356)

(assert (=> b!2716817 (= lt!961331 lt!961344)))

(assert (=> b!2716817 (= lt!961328 (list!11861 (left!24087 (c!438567 acc!331))))))

(assert (=> b!2716817 (= lt!961338 call!175344)))

(assert (=> b!2716817 (= lt!961330 (Cons!31329 (_1!18128 (v!33014 lt!960664)) Nil!31329))))

(declare-fun lt!961334 () Unit!45356)

(assert (=> b!2716817 (= lt!961334 call!175337)))

(assert (=> b!2716817 (= (++!7770 call!175343 lt!961330) (++!7770 lt!961328 call!175338))))

(declare-fun lt!961337 () Unit!45356)

(assert (=> b!2716817 (= lt!961337 lt!961334)))

(declare-fun bm!175341 () Bool)

(assert (=> bm!175341 (= call!175337 (lemmaConcatAssociativity!1604 (ite c!439004 lt!961335 lt!961328) (ite c!439004 lt!961342 lt!961338) (ite c!439004 lt!961336 lt!961330)))))

(assert (= (and d!782536 c!439005) b!2716811))

(assert (= (and d!782536 (not c!439005)) b!2716806))

(assert (= (and b!2716806 c!439003) b!2716814))

(assert (= (and b!2716806 (not c!439003)) b!2716807))

(assert (= (and b!2716814 c!439004) b!2716812))

(assert (= (and b!2716814 (not c!439004)) b!2716817))

(assert (= (or b!2716812 b!2716817) bm!175333))

(assert (= (or b!2716812 b!2716817) bm!175332))

(assert (= (or b!2716812 b!2716817) bm!175341))

(assert (= (or b!2716812 b!2716817) bm!175338))

(assert (= (or b!2716812 b!2716817) bm!175337))

(assert (= (or b!2716812 b!2716817) bm!175336))

(assert (= (or b!2716812 b!2716817) bm!175335))

(assert (= (or b!2716812 b!2716817) bm!175334))

(assert (= (and b!2716807 c!439002) b!2716808))

(assert (= (and b!2716807 (not c!439002)) b!2716815))

(assert (= (or b!2716817 b!2716815) bm!175340))

(assert (= (and bm!175340 c!439006) b!2716809))

(assert (= (and bm!175340 (not c!439006)) b!2716813))

(assert (= (or b!2716811 b!2716813) bm!175339))

(assert (= (and d!782536 res!1141037) b!2716816))

(assert (= (and b!2716816 res!1141038) b!2716805))

(assert (= (and b!2716805 res!1141036) b!2716810))

(declare-fun m!3115039 () Bool)

(assert (=> b!2716817 m!3115039))

(declare-fun m!3115041 () Bool)

(assert (=> b!2716817 m!3115041))

(declare-fun m!3115043 () Bool)

(assert (=> b!2716817 m!3115043))

(declare-fun m!3115045 () Bool)

(assert (=> b!2716817 m!3115045))

(assert (=> b!2716817 m!3113621))

(declare-fun m!3115047 () Bool)

(assert (=> b!2716817 m!3115047))

(declare-fun m!3115049 () Bool)

(assert (=> b!2716817 m!3115049))

(declare-fun m!3115051 () Bool)

(assert (=> bm!175341 m!3115051))

(declare-fun m!3115053 () Bool)

(assert (=> bm!175334 m!3115053))

(declare-fun m!3115055 () Bool)

(assert (=> bm!175338 m!3115055))

(declare-fun m!3115057 () Bool)

(assert (=> b!2716805 m!3115057))

(assert (=> b!2716805 m!3113205))

(declare-fun m!3115059 () Bool)

(assert (=> bm!175340 m!3115059))

(declare-fun m!3115061 () Bool)

(assert (=> b!2716810 m!3115061))

(assert (=> b!2716810 m!3112417))

(assert (=> b!2716810 m!3112417))

(declare-fun m!3115063 () Bool)

(assert (=> b!2716810 m!3115063))

(declare-fun m!3115065 () Bool)

(assert (=> bm!175333 m!3115065))

(declare-fun m!3115067 () Bool)

(assert (=> bm!175335 m!3115067))

(assert (=> b!2716816 m!3113205))

(assert (=> b!2716816 m!3115057))

(declare-fun m!3115069 () Bool)

(assert (=> d!782536 m!3115069))

(assert (=> d!782536 m!3113277))

(declare-fun m!3115071 () Bool)

(assert (=> b!2716814 m!3115071))

(assert (=> b!2716814 m!3114303))

(declare-fun m!3115073 () Bool)

(assert (=> b!2716814 m!3115073))

(declare-fun m!3115075 () Bool)

(assert (=> bm!175336 m!3115075))

(assert (=> bm!175339 m!3113867))

(declare-fun m!3115077 () Bool)

(assert (=> b!2716808 m!3115077))

(assert (=> b!2716808 m!3113619))

(assert (=> b!2716808 m!3113619))

(declare-fun m!3115079 () Bool)

(assert (=> b!2716808 m!3115079))

(declare-fun m!3115081 () Bool)

(assert (=> bm!175332 m!3115081))

(assert (=> bm!175337 m!3113623))

(assert (=> d!781970 d!782536))

(declare-fun d!782572 () Bool)

(assert (=> d!782572 (= (list!11857 lt!960842) (list!11861 (c!438567 lt!960842)))))

(declare-fun bs!488184 () Bool)

(assert (= bs!488184 d!782572))

(declare-fun m!3115083 () Bool)

(assert (=> bs!488184 m!3115083))

(assert (=> b!2715458 d!782572))

(declare-fun bm!175346 () Bool)

(declare-fun call!175352 () (_ BitVec 32))

(declare-fun lt!961348 () List!31429)

(declare-fun isize!52 (List!31429) (_ BitVec 32))

(assert (=> bm!175346 (= call!175352 (isize!52 lt!961348))))

(declare-fun b!2716834 () Bool)

(declare-fun e!1712348 () List!31429)

(assert (=> b!2716834 (= e!1712348 (Cons!31329 (_1!18128 (v!33014 lt!960664)) (list!11857 acc!331)))))

(declare-fun d!782574 () Bool)

(declare-fun e!1712347 () Bool)

(assert (=> d!782574 e!1712347))

(declare-fun res!1141047 () Bool)

(assert (=> d!782574 (=> (not res!1141047) (not e!1712347))))

(assert (=> d!782574 (= res!1141047 ((_ is Cons!31329) lt!961348))))

(assert (=> d!782574 (= lt!961348 e!1712348)))

(declare-fun c!439011 () Bool)

(assert (=> d!782574 (= c!439011 ((_ is Nil!31329) (list!11857 acc!331)))))

(assert (=> d!782574 (= ($colon+!179 (list!11857 acc!331) (_1!18128 (v!33014 lt!960664))) lt!961348)))

(declare-fun bm!175347 () Bool)

(declare-fun call!175351 () (_ BitVec 32))

(assert (=> bm!175347 (= call!175351 (isize!52 (list!11857 acc!331)))))

(declare-fun b!2716835 () Bool)

(declare-fun res!1141050 () Bool)

(assert (=> b!2716835 (=> (not res!1141050) (not e!1712347))))

(declare-fun e!1712346 () Bool)

(assert (=> b!2716835 (= res!1141050 e!1712346)))

(declare-fun c!439012 () Bool)

(assert (=> b!2716835 (= c!439012 (bvslt (isize!52 (list!11857 acc!331)) #b01111111111111111111111111111111))))

(declare-fun b!2716836 () Bool)

(assert (=> b!2716836 (= e!1712348 (Cons!31329 (h!36749 (list!11857 acc!331)) ($colon+!179 (t!226247 (list!11857 acc!331)) (_1!18128 (v!33014 lt!960664)))))))

(declare-fun b!2716837 () Bool)

(assert (=> b!2716837 (= e!1712347 (= lt!961348 (++!7770 (list!11857 acc!331) (Cons!31329 (_1!18128 (v!33014 lt!960664)) Nil!31329))))))

(declare-fun b!2716838 () Bool)

(declare-fun res!1141048 () Bool)

(assert (=> b!2716838 (=> (not res!1141048) (not e!1712347))))

(assert (=> b!2716838 (= res!1141048 (= (size!24173 lt!961348) (+ (size!24173 (list!11857 acc!331)) 1)))))

(declare-fun b!2716839 () Bool)

(assert (=> b!2716839 (= e!1712346 (= call!175352 call!175351))))

(declare-fun b!2716840 () Bool)

(assert (=> b!2716840 (= e!1712346 (= call!175352 (bvadd call!175351 #b00000000000000000000000000000001)))))

(declare-fun b!2716841 () Bool)

(declare-fun res!1141049 () Bool)

(assert (=> b!2716841 (=> (not res!1141049) (not e!1712347))))

(assert (=> b!2716841 (= res!1141049 (= (content!4437 lt!961348) ((_ map or) (content!4437 (list!11857 acc!331)) (store ((as const (Array Token!9044 Bool)) false) (_1!18128 (v!33014 lt!960664)) true))))))

(assert (= (and d!782574 c!439011) b!2716834))

(assert (= (and d!782574 (not c!439011)) b!2716836))

(assert (= (and d!782574 res!1141047) b!2716838))

(assert (= (and b!2716838 res!1141048) b!2716835))

(assert (= (and b!2716835 c!439012) b!2716840))

(assert (= (and b!2716835 (not c!439012)) b!2716839))

(assert (= (or b!2716840 b!2716839) bm!175347))

(assert (= (or b!2716840 b!2716839) bm!175346))

(assert (= (and b!2716835 res!1141050) b!2716841))

(assert (= (and b!2716841 res!1141049) b!2716837))

(assert (=> bm!175347 m!3112341))

(declare-fun m!3115085 () Bool)

(assert (=> bm!175347 m!3115085))

(declare-fun m!3115087 () Bool)

(assert (=> b!2716836 m!3115087))

(declare-fun m!3115089 () Bool)

(assert (=> bm!175346 m!3115089))

(declare-fun m!3115091 () Bool)

(assert (=> b!2716841 m!3115091))

(assert (=> b!2716841 m!3112341))

(declare-fun m!3115093 () Bool)

(assert (=> b!2716841 m!3115093))

(declare-fun m!3115095 () Bool)

(assert (=> b!2716841 m!3115095))

(declare-fun m!3115097 () Bool)

(assert (=> b!2716838 m!3115097))

(assert (=> b!2716838 m!3112341))

(declare-fun m!3115099 () Bool)

(assert (=> b!2716838 m!3115099))

(assert (=> b!2716837 m!3112341))

(declare-fun m!3115101 () Bool)

(assert (=> b!2716837 m!3115101))

(assert (=> b!2716835 m!3112341))

(assert (=> b!2716835 m!3115085))

(assert (=> b!2715458 d!782574))

(assert (=> b!2715458 d!781812))

(assert (=> b!2715025 d!782002))

(assert (=> b!2715505 d!782424))

(assert (=> b!2715505 d!782462))

(assert (=> b!2715505 d!782428))

(assert (=> b!2715505 d!781972))

(declare-fun d!782576 () Bool)

(declare-fun c!439013 () Bool)

(assert (=> d!782576 (= c!439013 ((_ is Node!9810) (left!24087 (c!438567 acc!331))))))

(declare-fun e!1712349 () Bool)

(assert (=> d!782576 (= (inv!42515 (left!24087 (c!438567 acc!331))) e!1712349)))

(declare-fun b!2716842 () Bool)

(assert (=> b!2716842 (= e!1712349 (inv!42523 (left!24087 (c!438567 acc!331))))))

(declare-fun b!2716843 () Bool)

(declare-fun e!1712350 () Bool)

(assert (=> b!2716843 (= e!1712349 e!1712350)))

(declare-fun res!1141051 () Bool)

(assert (=> b!2716843 (= res!1141051 (not ((_ is Leaf!14950) (left!24087 (c!438567 acc!331)))))))

(assert (=> b!2716843 (=> res!1141051 e!1712350)))

(declare-fun b!2716844 () Bool)

(assert (=> b!2716844 (= e!1712350 (inv!42524 (left!24087 (c!438567 acc!331))))))

(assert (= (and d!782576 c!439013) b!2716842))

(assert (= (and d!782576 (not c!439013)) b!2716843))

(assert (= (and b!2716843 (not res!1141051)) b!2716844))

(declare-fun m!3115103 () Bool)

(assert (=> b!2716842 m!3115103))

(declare-fun m!3115105 () Bool)

(assert (=> b!2716844 m!3115105))

(assert (=> b!2715604 d!782576))

(declare-fun d!782578 () Bool)

(declare-fun c!439014 () Bool)

(assert (=> d!782578 (= c!439014 ((_ is Node!9810) (right!24417 (c!438567 acc!331))))))

(declare-fun e!1712351 () Bool)

(assert (=> d!782578 (= (inv!42515 (right!24417 (c!438567 acc!331))) e!1712351)))

(declare-fun b!2716845 () Bool)

(assert (=> b!2716845 (= e!1712351 (inv!42523 (right!24417 (c!438567 acc!331))))))

(declare-fun b!2716846 () Bool)

(declare-fun e!1712352 () Bool)

(assert (=> b!2716846 (= e!1712351 e!1712352)))

(declare-fun res!1141052 () Bool)

(assert (=> b!2716846 (= res!1141052 (not ((_ is Leaf!14950) (right!24417 (c!438567 acc!331)))))))

(assert (=> b!2716846 (=> res!1141052 e!1712352)))

(declare-fun b!2716847 () Bool)

(assert (=> b!2716847 (= e!1712352 (inv!42524 (right!24417 (c!438567 acc!331))))))

(assert (= (and d!782578 c!439014) b!2716845))

(assert (= (and d!782578 (not c!439014)) b!2716846))

(assert (= (and b!2716846 (not res!1141052)) b!2716847))

(declare-fun m!3115107 () Bool)

(assert (=> b!2716845 m!3115107))

(declare-fun m!3115109 () Bool)

(assert (=> b!2716847 m!3115109))

(assert (=> b!2715604 d!782578))

(declare-fun d!782580 () Bool)

(declare-fun lt!961349 () Int)

(assert (=> d!782580 (>= lt!961349 0)))

(declare-fun e!1712353 () Int)

(assert (=> d!782580 (= lt!961349 e!1712353)))

(declare-fun c!439015 () Bool)

(assert (=> d!782580 (= c!439015 ((_ is Nil!31328) (_2!18129 lt!960813)))))

(assert (=> d!782580 (= (size!24174 (_2!18129 lt!960813)) lt!961349)))

(declare-fun b!2716848 () Bool)

(assert (=> b!2716848 (= e!1712353 0)))

(declare-fun b!2716849 () Bool)

(assert (=> b!2716849 (= e!1712353 (+ 1 (size!24174 (t!226246 (_2!18129 lt!960813)))))))

(assert (= (and d!782580 c!439015) b!2716848))

(assert (= (and d!782580 (not c!439015)) b!2716849))

(declare-fun m!3115111 () Bool)

(assert (=> b!2716849 m!3115111))

(assert (=> b!2715355 d!782580))

(declare-fun d!782582 () Bool)

(declare-fun lt!961350 () Int)

(assert (=> d!782582 (>= lt!961350 0)))

(declare-fun e!1712354 () Int)

(assert (=> d!782582 (= lt!961350 e!1712354)))

(declare-fun c!439016 () Bool)

(assert (=> d!782582 (= c!439016 ((_ is Nil!31328) lt!960685))))

(assert (=> d!782582 (= (size!24174 lt!960685) lt!961350)))

(declare-fun b!2716850 () Bool)

(assert (=> b!2716850 (= e!1712354 0)))

(declare-fun b!2716851 () Bool)

(assert (=> b!2716851 (= e!1712354 (+ 1 (size!24174 (t!226246 lt!960685))))))

(assert (= (and d!782582 c!439016) b!2716850))

(assert (= (and d!782582 (not c!439016)) b!2716851))

(assert (=> b!2716851 m!3113947))

(assert (=> b!2715355 d!782582))

(assert (=> b!2715551 d!782152))

(assert (=> b!2715551 d!782470))

(assert (=> b!2715551 d!782466))

(assert (=> b!2715551 d!782008))

(declare-fun d!782584 () Bool)

(declare-fun res!1141057 () Bool)

(declare-fun e!1712359 () Bool)

(assert (=> d!782584 (=> res!1141057 e!1712359)))

(assert (=> d!782584 (= res!1141057 ((_ is Nil!31330) rules!1182))))

(assert (=> d!782584 (= (noDuplicateTag!1777 thiss!11556 rules!1182 Nil!31331) e!1712359)))

(declare-fun b!2716856 () Bool)

(declare-fun e!1712360 () Bool)

(assert (=> b!2716856 (= e!1712359 e!1712360)))

(declare-fun res!1141058 () Bool)

(assert (=> b!2716856 (=> (not res!1141058) (not e!1712360))))

(declare-fun contains!5955 (List!31431 String!34965) Bool)

(assert (=> b!2716856 (= res!1141058 (not (contains!5955 Nil!31331 (tag!5295 (h!36750 rules!1182)))))))

(declare-fun b!2716857 () Bool)

(assert (=> b!2716857 (= e!1712360 (noDuplicateTag!1777 thiss!11556 (t!226248 rules!1182) (Cons!31331 (tag!5295 (h!36750 rules!1182)) Nil!31331)))))

(assert (= (and d!782584 (not res!1141057)) b!2716856))

(assert (= (and b!2716856 res!1141058) b!2716857))

(declare-fun m!3115113 () Bool)

(assert (=> b!2716856 m!3115113))

(declare-fun m!3115115 () Bool)

(assert (=> b!2716857 m!3115115))

(assert (=> b!2715067 d!782584))

(declare-fun d!782586 () Bool)

(declare-fun c!439017 () Bool)

(assert (=> d!782586 (= c!439017 ((_ is Empty!9809) (c!438566 (_2!18127 lt!960684))))))

(declare-fun e!1712361 () List!31428)

(assert (=> d!782586 (= (list!11860 (c!438566 (_2!18127 lt!960684))) e!1712361)))

(declare-fun b!2716861 () Bool)

(declare-fun e!1712362 () List!31428)

(assert (=> b!2716861 (= e!1712362 (++!7768 (list!11860 (left!24086 (c!438566 (_2!18127 lt!960684)))) (list!11860 (right!24416 (c!438566 (_2!18127 lt!960684))))))))

(declare-fun b!2716858 () Bool)

(assert (=> b!2716858 (= e!1712361 Nil!31328)))

(declare-fun b!2716860 () Bool)

(assert (=> b!2716860 (= e!1712362 (list!11864 (xs!12872 (c!438566 (_2!18127 lt!960684)))))))

(declare-fun b!2716859 () Bool)

(assert (=> b!2716859 (= e!1712361 e!1712362)))

(declare-fun c!439018 () Bool)

(assert (=> b!2716859 (= c!439018 ((_ is Leaf!14949) (c!438566 (_2!18127 lt!960684))))))

(assert (= (and d!782586 c!439017) b!2716858))

(assert (= (and d!782586 (not c!439017)) b!2716859))

(assert (= (and b!2716859 c!439018) b!2716860))

(assert (= (and b!2716859 (not c!439018)) b!2716861))

(declare-fun m!3115117 () Bool)

(assert (=> b!2716861 m!3115117))

(declare-fun m!3115119 () Bool)

(assert (=> b!2716861 m!3115119))

(assert (=> b!2716861 m!3115117))

(assert (=> b!2716861 m!3115119))

(declare-fun m!3115121 () Bool)

(assert (=> b!2716861 m!3115121))

(declare-fun m!3115123 () Bool)

(assert (=> b!2716860 m!3115123))

(assert (=> d!781880 d!782586))

(declare-fun d!782588 () Bool)

(declare-fun lt!961351 () Int)

(assert (=> d!782588 (>= lt!961351 0)))

(declare-fun e!1712363 () Int)

(assert (=> d!782588 (= lt!961351 e!1712363)))

(declare-fun c!439019 () Bool)

(assert (=> d!782588 (= c!439019 ((_ is Nil!31328) lt!960884))))

(assert (=> d!782588 (= (size!24174 lt!960884) lt!961351)))

(declare-fun b!2716862 () Bool)

(assert (=> b!2716862 (= e!1712363 0)))

(declare-fun b!2716863 () Bool)

(assert (=> b!2716863 (= e!1712363 (+ 1 (size!24174 (t!226246 lt!960884))))))

(assert (= (and d!782588 c!439019) b!2716862))

(assert (= (and d!782588 (not c!439019)) b!2716863))

(declare-fun m!3115125 () Bool)

(assert (=> b!2716863 m!3115125))

(assert (=> b!2715543 d!782588))

(assert (=> b!2715543 d!782146))

(declare-fun d!782590 () Bool)

(declare-fun lt!961352 () Int)

(assert (=> d!782590 (>= lt!961352 0)))

(declare-fun e!1712364 () Int)

(assert (=> d!782590 (= lt!961352 e!1712364)))

(declare-fun c!439020 () Bool)

(assert (=> d!782590 (= c!439020 ((_ is Nil!31328) lt!960681))))

(assert (=> d!782590 (= (size!24174 lt!960681) lt!961352)))

(declare-fun b!2716864 () Bool)

(assert (=> b!2716864 (= e!1712364 0)))

(declare-fun b!2716865 () Bool)

(assert (=> b!2716865 (= e!1712364 (+ 1 (size!24174 (t!226246 lt!960681))))))

(assert (= (and d!782590 c!439020) b!2716864))

(assert (= (and d!782590 (not c!439020)) b!2716865))

(declare-fun m!3115127 () Bool)

(assert (=> b!2716865 m!3115127))

(assert (=> b!2715543 d!782590))

(declare-fun b!2716866 () Bool)

(declare-fun e!1712371 () Bool)

(declare-fun e!1712366 () Bool)

(assert (=> b!2716866 (= e!1712371 e!1712366)))

(declare-fun res!1141059 () Bool)

(assert (=> b!2716866 (=> (not res!1141059) (not e!1712366))))

(assert (=> b!2716866 (= res!1141059 (appendAssoc!194 (list!11861 (c!438567 lt!960678)) (list!11861 (left!24087 (left!24087 (c!438567 (_1!18127 lt!960670))))) (list!11861 (right!24417 (left!24087 (c!438567 (_1!18127 lt!960670)))))))))

(declare-fun b!2716867 () Bool)

(declare-fun e!1712369 () Bool)

(declare-fun e!1712368 () Bool)

(assert (=> b!2716867 (= e!1712369 e!1712368)))

(declare-fun res!1141066 () Bool)

(assert (=> b!2716867 (=> res!1141066 e!1712368)))

(assert (=> b!2716867 (= res!1141066 (not ((_ is Node!9810) (right!24417 (c!438567 lt!960678)))))))

(declare-fun b!2716868 () Bool)

(declare-fun e!1712367 () Bool)

(assert (=> b!2716868 (= e!1712368 e!1712367)))

(declare-fun res!1141063 () Bool)

(assert (=> b!2716868 (=> (not res!1141063) (not e!1712367))))

(assert (=> b!2716868 (= res!1141063 (appendAssoc!194 (list!11861 (left!24087 (right!24417 (c!438567 lt!960678)))) (list!11861 (right!24417 (right!24417 (c!438567 lt!960678)))) (list!11861 (c!438567 (_1!18127 lt!960670)))))))

(declare-fun b!2716869 () Bool)

(assert (=> b!2716869 (= e!1712367 (appendAssoc!194 (list!11861 (left!24087 (c!438567 lt!960678))) (list!11861 (left!24087 (right!24417 (c!438567 lt!960678)))) (++!7770 (list!11861 (right!24417 (right!24417 (c!438567 lt!960678)))) (list!11861 (c!438567 (_1!18127 lt!960670))))))))

(declare-fun b!2716870 () Bool)

(declare-fun e!1712365 () Bool)

(assert (=> b!2716870 (= e!1712365 e!1712369)))

(declare-fun res!1141061 () Bool)

(assert (=> b!2716870 (=> (not res!1141061) (not e!1712369))))

(assert (=> b!2716870 (= res!1141061 (appendAssoc!194 (list!11861 (left!24087 (c!438567 lt!960678))) (list!11861 (right!24417 (c!438567 lt!960678))) (list!11861 (c!438567 (_1!18127 lt!960670)))))))

(declare-fun d!782592 () Bool)

(declare-fun e!1712373 () Bool)

(assert (=> d!782592 e!1712373))

(declare-fun res!1141060 () Bool)

(assert (=> d!782592 (=> (not res!1141060) (not e!1712373))))

(assert (=> d!782592 (= res!1141060 e!1712365)))

(declare-fun res!1141064 () Bool)

(assert (=> d!782592 (=> res!1141064 e!1712365)))

(assert (=> d!782592 (= res!1141064 (not ((_ is Node!9810) (c!438567 lt!960678))))))

(assert (=> d!782592 (= (appendAssocInst!688 (c!438567 lt!960678) (c!438567 (_1!18127 lt!960670))) true)))

(declare-fun b!2716871 () Bool)

(declare-fun e!1712372 () Bool)

(assert (=> b!2716871 (= e!1712373 e!1712372)))

(declare-fun res!1141062 () Bool)

(assert (=> b!2716871 (=> res!1141062 e!1712372)))

(assert (=> b!2716871 (= res!1141062 (not ((_ is Node!9810) (c!438567 (_1!18127 lt!960670)))))))

(declare-fun b!2716872 () Bool)

(declare-fun e!1712370 () Bool)

(assert (=> b!2716872 (= e!1712372 e!1712370)))

(declare-fun res!1141067 () Bool)

(assert (=> b!2716872 (=> (not res!1141067) (not e!1712370))))

(assert (=> b!2716872 (= res!1141067 (appendAssoc!194 (list!11861 (c!438567 lt!960678)) (list!11861 (left!24087 (c!438567 (_1!18127 lt!960670)))) (list!11861 (right!24417 (c!438567 (_1!18127 lt!960670))))))))

(declare-fun b!2716873 () Bool)

(assert (=> b!2716873 (= e!1712366 (appendAssoc!194 (++!7770 (list!11861 (c!438567 lt!960678)) (list!11861 (left!24087 (left!24087 (c!438567 (_1!18127 lt!960670)))))) (list!11861 (right!24417 (left!24087 (c!438567 (_1!18127 lt!960670))))) (list!11861 (right!24417 (c!438567 (_1!18127 lt!960670))))))))

(declare-fun b!2716874 () Bool)

(assert (=> b!2716874 (= e!1712370 e!1712371)))

(declare-fun res!1141065 () Bool)

(assert (=> b!2716874 (=> res!1141065 e!1712371)))

(assert (=> b!2716874 (= res!1141065 (not ((_ is Node!9810) (left!24087 (c!438567 (_1!18127 lt!960670))))))))

(assert (= (and d!782592 (not res!1141064)) b!2716870))

(assert (= (and b!2716870 res!1141061) b!2716867))

(assert (= (and b!2716867 (not res!1141066)) b!2716868))

(assert (= (and b!2716868 res!1141063) b!2716869))

(assert (= (and d!782592 res!1141060) b!2716871))

(assert (= (and b!2716871 (not res!1141062)) b!2716872))

(assert (= (and b!2716872 res!1141067) b!2716874))

(assert (= (and b!2716874 (not res!1141065)) b!2716866))

(assert (= (and b!2716866 res!1141059) b!2716873))

(assert (=> b!2716873 m!3113095))

(assert (=> b!2716873 m!3113095))

(declare-fun m!3115129 () Bool)

(assert (=> b!2716873 m!3115129))

(declare-fun m!3115131 () Bool)

(assert (=> b!2716873 m!3115131))

(assert (=> b!2716873 m!3114761))

(assert (=> b!2716873 m!3115131))

(declare-fun m!3115133 () Bool)

(assert (=> b!2716873 m!3115133))

(assert (=> b!2716873 m!3114761))

(declare-fun m!3115135 () Bool)

(assert (=> b!2716873 m!3115135))

(assert (=> b!2716873 m!3115129))

(assert (=> b!2716873 m!3115133))

(declare-fun m!3115137 () Bool)

(assert (=> b!2716868 m!3115137))

(declare-fun m!3115139 () Bool)

(assert (=> b!2716868 m!3115139))

(assert (=> b!2716868 m!3113103))

(assert (=> b!2716868 m!3115137))

(assert (=> b!2716868 m!3115139))

(assert (=> b!2716868 m!3113103))

(declare-fun m!3115141 () Bool)

(assert (=> b!2716868 m!3115141))

(assert (=> b!2716872 m!3113095))

(assert (=> b!2716872 m!3114759))

(assert (=> b!2716872 m!3114761))

(assert (=> b!2716872 m!3113095))

(assert (=> b!2716872 m!3114759))

(assert (=> b!2716872 m!3114761))

(declare-fun m!3115143 () Bool)

(assert (=> b!2716872 m!3115143))

(assert (=> b!2716869 m!3115139))

(assert (=> b!2716869 m!3113103))

(declare-fun m!3115145 () Bool)

(assert (=> b!2716869 m!3115145))

(assert (=> b!2716869 m!3113103))

(assert (=> b!2716869 m!3115139))

(assert (=> b!2716869 m!3115137))

(assert (=> b!2716869 m!3113341))

(assert (=> b!2716869 m!3115137))

(assert (=> b!2716869 m!3115145))

(declare-fun m!3115147 () Bool)

(assert (=> b!2716869 m!3115147))

(assert (=> b!2716869 m!3113341))

(assert (=> b!2716866 m!3113095))

(assert (=> b!2716866 m!3115129))

(assert (=> b!2716866 m!3115133))

(assert (=> b!2716866 m!3113095))

(assert (=> b!2716866 m!3115129))

(assert (=> b!2716866 m!3115133))

(declare-fun m!3115149 () Bool)

(assert (=> b!2716866 m!3115149))

(assert (=> b!2716870 m!3113341))

(assert (=> b!2716870 m!3113343))

(assert (=> b!2716870 m!3113103))

(assert (=> b!2716870 m!3113341))

(assert (=> b!2716870 m!3113343))

(assert (=> b!2716870 m!3113103))

(declare-fun m!3115151 () Bool)

(assert (=> b!2716870 m!3115151))

(assert (=> d!781910 d!782592))

(assert (=> d!781910 d!782070))

(declare-fun d!782594 () Bool)

(declare-fun c!439021 () Bool)

(assert (=> d!782594 (= c!439021 ((_ is Empty!9810) (c!438567 lt!960671)))))

(declare-fun e!1712374 () List!31429)

(assert (=> d!782594 (= (list!11861 (c!438567 lt!960671)) e!1712374)))

(declare-fun b!2716877 () Bool)

(declare-fun e!1712375 () List!31429)

(assert (=> b!2716877 (= e!1712375 (list!11862 (xs!12873 (c!438567 lt!960671))))))

(declare-fun b!2716876 () Bool)

(assert (=> b!2716876 (= e!1712374 e!1712375)))

(declare-fun c!439022 () Bool)

(assert (=> b!2716876 (= c!439022 ((_ is Leaf!14950) (c!438567 lt!960671)))))

(declare-fun b!2716875 () Bool)

(assert (=> b!2716875 (= e!1712374 Nil!31329)))

(declare-fun b!2716878 () Bool)

(assert (=> b!2716878 (= e!1712375 (++!7770 (list!11861 (left!24087 (c!438567 lt!960671))) (list!11861 (right!24417 (c!438567 lt!960671)))))))

(assert (= (and d!782594 c!439021) b!2716875))

(assert (= (and d!782594 (not c!439021)) b!2716876))

(assert (= (and b!2716876 c!439022) b!2716877))

(assert (= (and b!2716876 (not c!439022)) b!2716878))

(declare-fun m!3115153 () Bool)

(assert (=> b!2716877 m!3115153))

(declare-fun m!3115155 () Bool)

(assert (=> b!2716878 m!3115155))

(declare-fun m!3115157 () Bool)

(assert (=> b!2716878 m!3115157))

(assert (=> b!2716878 m!3115155))

(assert (=> b!2716878 m!3115157))

(declare-fun m!3115159 () Bool)

(assert (=> b!2716878 m!3115159))

(assert (=> d!781998 d!782594))

(declare-fun d!782596 () Bool)

(declare-fun lt!961359 () Bool)

(assert (=> d!782596 (= lt!961359 (isEmpty!17862 (list!11857 (_1!18127 lt!960763))))))

(assert (=> d!782596 (= lt!961359 (isEmpty!17866 (c!438567 (_1!18127 lt!960763))))))

(assert (=> d!782596 (= (isEmpty!17860 (_1!18127 lt!960763)) lt!961359)))

(declare-fun bs!488185 () Bool)

(assert (= bs!488185 d!782596))

(assert (=> bs!488185 m!3112721))

(assert (=> bs!488185 m!3112721))

(declare-fun m!3115161 () Bool)

(assert (=> bs!488185 m!3115161))

(declare-fun m!3115163 () Bool)

(assert (=> bs!488185 m!3115163))

(assert (=> b!2715244 d!782596))

(declare-fun d!782598 () Bool)

(declare-fun lt!961364 () Int)

(assert (=> d!782598 (= lt!961364 (size!24173 (list!11857 (_1!18127 lt!960777))))))

(assert (=> d!782598 (= lt!961364 (size!24178 (c!438567 (_1!18127 lt!960777))))))

(assert (=> d!782598 (= (size!24170 (_1!18127 lt!960777)) lt!961364)))

(declare-fun bs!488186 () Bool)

(assert (= bs!488186 d!782598))

(assert (=> bs!488186 m!3112821))

(assert (=> bs!488186 m!3112821))

(declare-fun m!3115165 () Bool)

(assert (=> bs!488186 m!3115165))

(declare-fun m!3115167 () Bool)

(assert (=> bs!488186 m!3115167))

(assert (=> d!781922 d!782598))

(declare-fun d!782600 () Bool)

(declare-fun e!1712381 () Bool)

(assert (=> d!782600 e!1712381))

(declare-fun res!1141069 () Bool)

(assert (=> d!782600 (=> (not res!1141069) (not e!1712381))))

(declare-fun lt!961366 () Option!6183)

(assert (=> d!782600 (= res!1141069 (= (isDefined!4893 lt!961366) (isDefined!4894 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960664)))))))))

(declare-fun e!1712379 () Option!6183)

(assert (=> d!782600 (= lt!961366 e!1712379)))

(declare-fun c!439025 () Bool)

(assert (=> d!782600 (= c!439025 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!961371 () Unit!45356)

(declare-fun lt!961370 () Unit!45356)

(assert (=> d!782600 (= lt!961371 lt!961370)))

(declare-fun lt!961367 () List!31428)

(declare-fun lt!961368 () List!31428)

(assert (=> d!782600 (isPrefix!2483 lt!961367 lt!961368)))

(assert (=> d!782600 (= lt!961370 (lemmaIsPrefixRefl!1609 lt!961367 lt!961368))))

(assert (=> d!782600 (= lt!961368 (list!11856 (_2!18128 (v!33014 lt!960664))))))

(assert (=> d!782600 (= lt!961367 (list!11856 (_2!18128 (v!33014 lt!960664))))))

(assert (=> d!782600 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!782600 (= (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960664))) lt!961366)))

(declare-fun b!2716883 () Bool)

(declare-fun call!175355 () Option!6183)

(assert (=> b!2716883 (= e!1712379 call!175355)))

(declare-fun e!1712383 () Bool)

(declare-fun b!2716884 () Bool)

(assert (=> b!2716884 (= e!1712383 (= (list!11856 (_2!18128 (get!9776 lt!961366))) (_2!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960664))))))))))

(declare-fun b!2716885 () Bool)

(declare-fun e!1712378 () Bool)

(declare-fun e!1712380 () Bool)

(assert (=> b!2716885 (= e!1712378 e!1712380)))

(declare-fun res!1141072 () Bool)

(assert (=> b!2716885 (=> (not res!1141072) (not e!1712380))))

(assert (=> b!2716885 (= res!1141072 (= (_1!18128 (get!9776 lt!961366)) (_1!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960664))))))))))

(declare-fun b!2716886 () Bool)

(assert (=> b!2716886 (= e!1712381 e!1712378)))

(declare-fun res!1141068 () Bool)

(assert (=> b!2716886 (=> res!1141068 e!1712378)))

(assert (=> b!2716886 (= res!1141068 (not (isDefined!4893 lt!961366)))))

(declare-fun b!2716887 () Bool)

(declare-fun e!1712382 () Bool)

(assert (=> b!2716887 (= e!1712382 e!1712383)))

(declare-fun res!1141073 () Bool)

(assert (=> b!2716887 (=> (not res!1141073) (not e!1712383))))

(assert (=> b!2716887 (= res!1141073 (= (_1!18128 (get!9776 lt!961366)) (_1!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960664))))))))))

(declare-fun b!2716888 () Bool)

(declare-fun res!1141070 () Bool)

(assert (=> b!2716888 (=> (not res!1141070) (not e!1712381))))

(assert (=> b!2716888 (= res!1141070 e!1712382)))

(declare-fun res!1141071 () Bool)

(assert (=> b!2716888 (=> res!1141071 e!1712382)))

(assert (=> b!2716888 (= res!1141071 (not (isDefined!4893 lt!961366)))))

(declare-fun b!2716889 () Bool)

(declare-fun lt!961365 () Option!6183)

(declare-fun lt!961369 () Option!6183)

(assert (=> b!2716889 (= e!1712379 (ite (and ((_ is None!6182) lt!961365) ((_ is None!6182) lt!961369)) None!6182 (ite ((_ is None!6182) lt!961369) lt!961365 (ite ((_ is None!6182) lt!961365) lt!961369 (ite (>= (size!24166 (_1!18128 (v!33014 lt!961365))) (size!24166 (_1!18128 (v!33014 lt!961369)))) lt!961365 lt!961369)))))))

(assert (=> b!2716889 (= lt!961365 call!175355)))

(assert (=> b!2716889 (= lt!961369 (maxPrefixZipperSequence!1035 thiss!11556 (t!226248 rules!1182) (_2!18128 (v!33014 lt!960664))))))

(declare-fun bm!175350 () Bool)

(assert (=> bm!175350 (= call!175355 (maxPrefixOneRuleZipperSequence!479 thiss!11556 (h!36750 rules!1182) (_2!18128 (v!33014 lt!960664))))))

(declare-fun b!2716890 () Bool)

(assert (=> b!2716890 (= e!1712380 (= (list!11856 (_2!18128 (get!9776 lt!961366))) (_2!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960664))))))))))

(assert (= (and d!782600 c!439025) b!2716883))

(assert (= (and d!782600 (not c!439025)) b!2716889))

(assert (= (or b!2716883 b!2716889) bm!175350))

(assert (= (and d!782600 res!1141069) b!2716888))

(assert (= (and b!2716888 (not res!1141071)) b!2716887))

(assert (= (and b!2716887 res!1141073) b!2716884))

(assert (= (and b!2716888 res!1141070) b!2716886))

(assert (= (and b!2716886 (not res!1141068)) b!2716885))

(assert (= (and b!2716885 res!1141072) b!2716890))

(declare-fun m!3115169 () Bool)

(assert (=> b!2716884 m!3115169))

(declare-fun m!3115171 () Bool)

(assert (=> b!2716884 m!3115171))

(declare-fun m!3115173 () Bool)

(assert (=> b!2716884 m!3115173))

(assert (=> b!2716884 m!3112315))

(assert (=> b!2716884 m!3112315))

(assert (=> b!2716884 m!3115169))

(declare-fun m!3115175 () Bool)

(assert (=> b!2716884 m!3115175))

(declare-fun m!3115177 () Bool)

(assert (=> b!2716888 m!3115177))

(assert (=> b!2716887 m!3115175))

(assert (=> b!2716887 m!3112315))

(assert (=> b!2716887 m!3112315))

(assert (=> b!2716887 m!3115169))

(assert (=> b!2716887 m!3115169))

(assert (=> b!2716887 m!3115171))

(declare-fun m!3115179 () Bool)

(assert (=> bm!175350 m!3115179))

(declare-fun m!3115181 () Bool)

(assert (=> b!2716889 m!3115181))

(assert (=> d!782600 m!3115177))

(assert (=> d!782600 m!3115169))

(declare-fun m!3115183 () Bool)

(assert (=> d!782600 m!3115183))

(declare-fun m!3115185 () Bool)

(assert (=> d!782600 m!3115185))

(assert (=> d!782600 m!3113171))

(assert (=> d!782600 m!3112315))

(assert (=> d!782600 m!3112315))

(assert (=> d!782600 m!3115169))

(declare-fun m!3115187 () Bool)

(assert (=> d!782600 m!3115187))

(assert (=> b!2716890 m!3114337))

(declare-fun m!3115189 () Bool)

(assert (=> b!2716890 m!3115189))

(assert (=> b!2716890 m!3115173))

(assert (=> b!2716890 m!3112315))

(assert (=> b!2716890 m!3112315))

(assert (=> b!2716890 m!3114337))

(assert (=> b!2716890 m!3115175))

(assert (=> b!2716886 m!3115177))

(assert (=> b!2716885 m!3115175))

(assert (=> b!2716885 m!3112315))

(assert (=> b!2716885 m!3112315))

(assert (=> b!2716885 m!3114337))

(assert (=> b!2716885 m!3114337))

(assert (=> b!2716885 m!3115189))

(assert (=> d!781922 d!782600))

(declare-fun d!782602 () Bool)

(declare-fun c!439026 () Bool)

(assert (=> d!782602 (= c!439026 ((_ is Empty!9809) (c!438566 (_2!18127 lt!960665))))))

(declare-fun e!1712388 () List!31428)

(assert (=> d!782602 (= (list!11860 (c!438566 (_2!18127 lt!960665))) e!1712388)))

(declare-fun b!2716908 () Bool)

(declare-fun e!1712389 () List!31428)

(assert (=> b!2716908 (= e!1712389 (++!7768 (list!11860 (left!24086 (c!438566 (_2!18127 lt!960665)))) (list!11860 (right!24416 (c!438566 (_2!18127 lt!960665))))))))

(declare-fun b!2716905 () Bool)

(assert (=> b!2716905 (= e!1712388 Nil!31328)))

(declare-fun b!2716907 () Bool)

(assert (=> b!2716907 (= e!1712389 (list!11864 (xs!12872 (c!438566 (_2!18127 lt!960665)))))))

(declare-fun b!2716906 () Bool)

(assert (=> b!2716906 (= e!1712388 e!1712389)))

(declare-fun c!439027 () Bool)

(assert (=> b!2716906 (= c!439027 ((_ is Leaf!14949) (c!438566 (_2!18127 lt!960665))))))

(assert (= (and d!782602 c!439026) b!2716905))

(assert (= (and d!782602 (not c!439026)) b!2716906))

(assert (= (and b!2716906 c!439027) b!2716907))

(assert (= (and b!2716906 (not c!439027)) b!2716908))

(declare-fun m!3115191 () Bool)

(assert (=> b!2716908 m!3115191))

(declare-fun m!3115193 () Bool)

(assert (=> b!2716908 m!3115193))

(assert (=> b!2716908 m!3115191))

(assert (=> b!2716908 m!3115193))

(declare-fun m!3115195 () Bool)

(assert (=> b!2716908 m!3115195))

(declare-fun m!3115197 () Bool)

(assert (=> b!2716907 m!3115197))

(assert (=> d!781884 d!782602))

(declare-fun bs!488204 () Bool)

(declare-fun b!2717139 () Bool)

(assert (= bs!488204 (and b!2717139 d!782376)))

(declare-fun lambda!100560 () Int)

(assert (=> bs!488204 (= lambda!100560 lambda!100552)))

(declare-fun b!2717154 () Bool)

(declare-fun e!1712531 () Bool)

(assert (=> b!2717154 (= e!1712531 true)))

(declare-fun b!2717153 () Bool)

(declare-fun e!1712530 () Bool)

(assert (=> b!2717153 (= e!1712530 e!1712531)))

(assert (=> b!2717139 e!1712530))

(assert (= b!2717153 b!2717154))

(assert (= b!2717139 b!2717153))

(assert (=> b!2717154 (< (dynLambda!13500 order!17119 (toValue!6761 (transformation!4791 (h!36750 rules!1182)))) (dynLambda!13499 order!17117 lambda!100560))))

(assert (=> b!2717154 (< (dynLambda!13498 order!17115 (toChars!6620 (transformation!4791 (h!36750 rules!1182)))) (dynLambda!13499 order!17117 lambda!100560))))

(declare-fun b!2717134 () Bool)

(declare-fun lt!961460 () Option!6183)

(declare-fun e!1712521 () Bool)

(assert (=> b!2717134 (= e!1712521 (= (list!11856 (_2!18128 (get!9776 lt!961460))) (_2!18131 (get!9777 (maxPrefixOneRule!1497 thiss!11556 (h!36750 rules!1182) (list!11856 lt!960675))))))))

(declare-fun b!2717135 () Bool)

(declare-fun e!1712522 () Bool)

(declare-fun lt!961452 () List!31428)

(declare-datatypes ((tuple2!31004 0))(
  ( (tuple2!31005 (_1!18134 List!31428) (_2!18134 List!31428)) )
))
(declare-fun findLongestMatchInner!786 (Regex!7943 List!31428 Int List!31428 List!31428 Int) tuple2!31004)

(assert (=> b!2717135 (= e!1712522 (matchR!3639 (regex!4791 (h!36750 rules!1182)) (_1!18134 (findLongestMatchInner!786 (regex!4791 (h!36750 rules!1182)) Nil!31328 (size!24174 Nil!31328) lt!961452 lt!961452 (size!24174 lt!961452)))))))

(declare-fun b!2717136 () Bool)

(declare-fun e!1712519 () Bool)

(declare-fun e!1712520 () Bool)

(assert (=> b!2717136 (= e!1712519 e!1712520)))

(declare-fun res!1141184 () Bool)

(assert (=> b!2717136 (=> res!1141184 e!1712520)))

(assert (=> b!2717136 (= res!1141184 (not (isDefined!4893 lt!961460)))))

(declare-fun b!2717137 () Bool)

(declare-fun e!1712518 () Option!6183)

(assert (=> b!2717137 (= e!1712518 None!6182)))

(declare-fun b!2717138 () Bool)

(assert (=> b!2717138 (= e!1712520 e!1712521)))

(declare-fun res!1141186 () Bool)

(assert (=> b!2717138 (=> (not res!1141186) (not e!1712521))))

(assert (=> b!2717138 (= res!1141186 (= (_1!18128 (get!9776 lt!961460)) (_1!18131 (get!9777 (maxPrefixOneRule!1497 thiss!11556 (h!36750 rules!1182) (list!11856 lt!960675))))))))

(declare-fun d!782604 () Bool)

(assert (=> d!782604 e!1712519))

(declare-fun res!1141185 () Bool)

(assert (=> d!782604 (=> (not res!1141185) (not e!1712519))))

(assert (=> d!782604 (= res!1141185 (= (isDefined!4893 lt!961460) (isDefined!4894 (maxPrefixOneRule!1497 thiss!11556 (h!36750 rules!1182) (list!11856 lt!960675)))))))

(assert (=> d!782604 (= lt!961460 e!1712518)))

(declare-fun c!439092 () Bool)

(declare-datatypes ((tuple2!31006 0))(
  ( (tuple2!31007 (_1!18135 BalanceConc!19232) (_2!18135 BalanceConc!19232)) )
))
(declare-fun lt!961451 () tuple2!31006)

(declare-fun isEmpty!17872 (BalanceConc!19232) Bool)

(assert (=> d!782604 (= c!439092 (isEmpty!17872 (_1!18135 lt!961451)))))

(declare-fun findLongestMatchWithZipperSequence!179 (Regex!7943 BalanceConc!19232) tuple2!31006)

(assert (=> d!782604 (= lt!961451 (findLongestMatchWithZipperSequence!179 (regex!4791 (h!36750 rules!1182)) lt!960675))))

(assert (=> d!782604 (ruleValid!1567 thiss!11556 (h!36750 rules!1182))))

(assert (=> d!782604 (= (maxPrefixOneRuleZipperSequence!479 thiss!11556 (h!36750 rules!1182) lt!960675) lt!961460)))

(assert (=> b!2717139 (= e!1712518 (Some!6182 (tuple2!30993 (Token!9045 (apply!7411 (transformation!4791 (h!36750 rules!1182)) (_1!18135 lt!961451)) (h!36750 rules!1182) (size!24171 (_1!18135 lt!961451)) (list!11856 (_1!18135 lt!961451))) (_2!18135 lt!961451))))))

(assert (=> b!2717139 (= lt!961452 (list!11856 lt!960675))))

(declare-fun lt!961458 () Unit!45356)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!759 (Regex!7943 List!31428) Unit!45356)

(assert (=> b!2717139 (= lt!961458 (longestMatchIsAcceptedByMatchOrIsEmpty!759 (regex!4791 (h!36750 rules!1182)) lt!961452))))

(declare-fun res!1141183 () Bool)

(assert (=> b!2717139 (= res!1141183 (isEmpty!17857 (_1!18134 (findLongestMatchInner!786 (regex!4791 (h!36750 rules!1182)) Nil!31328 (size!24174 Nil!31328) lt!961452 lt!961452 (size!24174 lt!961452)))))))

(assert (=> b!2717139 (=> res!1141183 e!1712522)))

(assert (=> b!2717139 e!1712522))

(declare-fun lt!961456 () Unit!45356)

(assert (=> b!2717139 (= lt!961456 lt!961458)))

(declare-fun lt!961457 () Unit!45356)

(declare-fun lemmaInv!826 (TokenValueInjection!9466) Unit!45356)

(assert (=> b!2717139 (= lt!961457 (lemmaInv!826 (transformation!4791 (h!36750 rules!1182))))))

(declare-fun lt!961453 () Unit!45356)

(declare-fun ForallOf!530 (Int BalanceConc!19232) Unit!45356)

(assert (=> b!2717139 (= lt!961453 (ForallOf!530 lambda!100560 (_1!18135 lt!961451)))))

(declare-fun lt!961455 () Unit!45356)

(assert (=> b!2717139 (= lt!961455 (ForallOf!530 lambda!100560 (seqFromList!3216 (list!11856 (_1!18135 lt!961451)))))))

(declare-fun lt!961459 () Option!6183)

(assert (=> b!2717139 (= lt!961459 (Some!6182 (tuple2!30993 (Token!9045 (apply!7411 (transformation!4791 (h!36750 rules!1182)) (_1!18135 lt!961451)) (h!36750 rules!1182) (size!24171 (_1!18135 lt!961451)) (list!11856 (_1!18135 lt!961451))) (_2!18135 lt!961451))))))

(declare-fun lt!961454 () Unit!45356)

(declare-fun lemmaEqSameImage!732 (TokenValueInjection!9466 BalanceConc!19232 BalanceConc!19232) Unit!45356)

(assert (=> b!2717139 (= lt!961454 (lemmaEqSameImage!732 (transformation!4791 (h!36750 rules!1182)) (_1!18135 lt!961451) (seqFromList!3216 (list!11856 (_1!18135 lt!961451)))))))

(assert (= (and d!782604 c!439092) b!2717137))

(assert (= (and d!782604 (not c!439092)) b!2717139))

(assert (= (and b!2717139 (not res!1141183)) b!2717135))

(assert (= (and d!782604 res!1141185) b!2717136))

(assert (= (and b!2717136 (not res!1141184)) b!2717138))

(assert (= (and b!2717138 res!1141186) b!2717134))

(declare-fun m!3115677 () Bool)

(assert (=> b!2717134 m!3115677))

(assert (=> b!2717134 m!3112299))

(assert (=> b!2717134 m!3114621))

(declare-fun m!3115679 () Bool)

(assert (=> b!2717134 m!3115679))

(assert (=> b!2717134 m!3112299))

(assert (=> b!2717134 m!3114621))

(declare-fun m!3115681 () Bool)

(assert (=> b!2717134 m!3115681))

(assert (=> b!2717138 m!3115681))

(assert (=> b!2717138 m!3112299))

(assert (=> b!2717138 m!3112299))

(assert (=> b!2717138 m!3114621))

(assert (=> b!2717138 m!3114621))

(assert (=> b!2717138 m!3115679))

(declare-fun m!3115683 () Bool)

(assert (=> b!2717135 m!3115683))

(declare-fun m!3115685 () Bool)

(assert (=> b!2717135 m!3115685))

(assert (=> b!2717135 m!3115683))

(assert (=> b!2717135 m!3115685))

(declare-fun m!3115687 () Bool)

(assert (=> b!2717135 m!3115687))

(declare-fun m!3115689 () Bool)

(assert (=> b!2717135 m!3115689))

(assert (=> b!2717139 m!3115683))

(assert (=> b!2717139 m!3115685))

(assert (=> b!2717139 m!3115687))

(declare-fun m!3115691 () Bool)

(assert (=> b!2717139 m!3115691))

(declare-fun m!3115693 () Bool)

(assert (=> b!2717139 m!3115693))

(declare-fun m!3115695 () Bool)

(assert (=> b!2717139 m!3115695))

(assert (=> b!2717139 m!3115691))

(declare-fun m!3115697 () Bool)

(assert (=> b!2717139 m!3115697))

(declare-fun m!3115699 () Bool)

(assert (=> b!2717139 m!3115699))

(assert (=> b!2717139 m!3115691))

(declare-fun m!3115701 () Bool)

(assert (=> b!2717139 m!3115701))

(assert (=> b!2717139 m!3115685))

(declare-fun m!3115703 () Bool)

(assert (=> b!2717139 m!3115703))

(declare-fun m!3115705 () Bool)

(assert (=> b!2717139 m!3115705))

(declare-fun m!3115707 () Bool)

(assert (=> b!2717139 m!3115707))

(assert (=> b!2717139 m!3115699))

(declare-fun m!3115709 () Bool)

(assert (=> b!2717139 m!3115709))

(assert (=> b!2717139 m!3115683))

(assert (=> b!2717139 m!3112299))

(assert (=> d!782604 m!3114161))

(assert (=> d!782604 m!3112299))

(assert (=> d!782604 m!3114621))

(declare-fun m!3115711 () Bool)

(assert (=> d!782604 m!3115711))

(declare-fun m!3115713 () Bool)

(assert (=> d!782604 m!3115713))

(assert (=> d!782604 m!3112299))

(assert (=> d!782604 m!3114621))

(declare-fun m!3115715 () Bool)

(assert (=> d!782604 m!3115715))

(declare-fun m!3115717 () Bool)

(assert (=> d!782604 m!3115717))

(assert (=> b!2717136 m!3115717))

(assert (=> bm!175034 d!782604))

(declare-fun d!782766 () Bool)

(declare-fun res!1141201 () Bool)

(declare-fun e!1712536 () Bool)

(assert (=> d!782766 (=> (not res!1141201) (not e!1712536))))

(assert (=> d!782766 (= res!1141201 (= (csize!19848 (c!438566 treated!9)) (+ (size!24176 (left!24086 (c!438566 treated!9))) (size!24176 (right!24416 (c!438566 treated!9))))))))

(assert (=> d!782766 (= (inv!42525 (c!438566 treated!9)) e!1712536)))

(declare-fun b!2717166 () Bool)

(declare-fun res!1141202 () Bool)

(assert (=> b!2717166 (=> (not res!1141202) (not e!1712536))))

(assert (=> b!2717166 (= res!1141202 (and (not (= (left!24086 (c!438566 treated!9)) Empty!9809)) (not (= (right!24416 (c!438566 treated!9)) Empty!9809))))))

(declare-fun b!2717167 () Bool)

(declare-fun res!1141203 () Bool)

(assert (=> b!2717167 (=> (not res!1141203) (not e!1712536))))

(assert (=> b!2717167 (= res!1141203 (= (cheight!10020 (c!438566 treated!9)) (+ (max!0 (height!1452 (left!24086 (c!438566 treated!9))) (height!1452 (right!24416 (c!438566 treated!9)))) 1)))))

(declare-fun b!2717168 () Bool)

(assert (=> b!2717168 (= e!1712536 (<= 0 (cheight!10020 (c!438566 treated!9))))))

(assert (= (and d!782766 res!1141201) b!2717166))

(assert (= (and b!2717166 res!1141202) b!2717167))

(assert (= (and b!2717167 res!1141203) b!2717168))

(declare-fun m!3115729 () Bool)

(assert (=> d!782766 m!3115729))

(declare-fun m!3115731 () Bool)

(assert (=> d!782766 m!3115731))

(assert (=> b!2717167 m!3113349))

(assert (=> b!2717167 m!3113351))

(assert (=> b!2717167 m!3113349))

(assert (=> b!2717167 m!3113351))

(declare-fun m!3115733 () Bool)

(assert (=> b!2717167 m!3115733))

(assert (=> b!2715546 d!782766))

(assert (=> b!2715176 d!782472))

(assert (=> b!2715176 d!782010))

(declare-fun bs!488208 () Bool)

(declare-fun b!2717174 () Bool)

(assert (= bs!488208 (and b!2717174 d!782376)))

(declare-fun lambda!100561 () Int)

(assert (=> bs!488208 (= lambda!100561 lambda!100552)))

(declare-fun bs!488209 () Bool)

(assert (= bs!488209 (and b!2717174 b!2717139)))

(assert (=> bs!488209 (= lambda!100561 lambda!100560)))

(declare-fun b!2717176 () Bool)

(declare-fun e!1712543 () Bool)

(assert (=> b!2717176 (= e!1712543 true)))

(declare-fun b!2717175 () Bool)

(declare-fun e!1712542 () Bool)

(assert (=> b!2717175 (= e!1712542 e!1712543)))

(assert (=> b!2717174 e!1712542))

(assert (= b!2717175 b!2717176))

(assert (= b!2717174 b!2717175))

(assert (=> b!2717176 (< (dynLambda!13500 order!17119 (toValue!6761 (transformation!4791 (h!36750 rules!1182)))) (dynLambda!13499 order!17117 lambda!100561))))

(assert (=> b!2717176 (< (dynLambda!13498 order!17115 (toChars!6620 (transformation!4791 (h!36750 rules!1182)))) (dynLambda!13499 order!17117 lambda!100561))))

(declare-fun b!2717169 () Bool)

(declare-fun e!1712540 () Bool)

(declare-fun lt!961477 () Option!6183)

(assert (=> b!2717169 (= e!1712540 (= (list!11856 (_2!18128 (get!9776 lt!961477))) (_2!18131 (get!9777 (maxPrefixOneRule!1497 thiss!11556 (h!36750 rules!1182) (list!11856 input!603))))))))

(declare-fun b!2717170 () Bool)

(declare-fun e!1712541 () Bool)

(declare-fun lt!961469 () List!31428)

(assert (=> b!2717170 (= e!1712541 (matchR!3639 (regex!4791 (h!36750 rules!1182)) (_1!18134 (findLongestMatchInner!786 (regex!4791 (h!36750 rules!1182)) Nil!31328 (size!24174 Nil!31328) lt!961469 lt!961469 (size!24174 lt!961469)))))))

(declare-fun b!2717171 () Bool)

(declare-fun e!1712538 () Bool)

(declare-fun e!1712539 () Bool)

(assert (=> b!2717171 (= e!1712538 e!1712539)))

(declare-fun res!1141205 () Bool)

(assert (=> b!2717171 (=> res!1141205 e!1712539)))

(assert (=> b!2717171 (= res!1141205 (not (isDefined!4893 lt!961477)))))

(declare-fun b!2717172 () Bool)

(declare-fun e!1712537 () Option!6183)

(assert (=> b!2717172 (= e!1712537 None!6182)))

(declare-fun b!2717173 () Bool)

(assert (=> b!2717173 (= e!1712539 e!1712540)))

(declare-fun res!1141207 () Bool)

(assert (=> b!2717173 (=> (not res!1141207) (not e!1712540))))

(assert (=> b!2717173 (= res!1141207 (= (_1!18128 (get!9776 lt!961477)) (_1!18131 (get!9777 (maxPrefixOneRule!1497 thiss!11556 (h!36750 rules!1182) (list!11856 input!603))))))))

(declare-fun d!782768 () Bool)

(assert (=> d!782768 e!1712538))

(declare-fun res!1141206 () Bool)

(assert (=> d!782768 (=> (not res!1141206) (not e!1712538))))

(assert (=> d!782768 (= res!1141206 (= (isDefined!4893 lt!961477) (isDefined!4894 (maxPrefixOneRule!1497 thiss!11556 (h!36750 rules!1182) (list!11856 input!603)))))))

(assert (=> d!782768 (= lt!961477 e!1712537)))

(declare-fun c!439095 () Bool)

(declare-fun lt!961468 () tuple2!31006)

(assert (=> d!782768 (= c!439095 (isEmpty!17872 (_1!18135 lt!961468)))))

(assert (=> d!782768 (= lt!961468 (findLongestMatchWithZipperSequence!179 (regex!4791 (h!36750 rules!1182)) input!603))))

(assert (=> d!782768 (ruleValid!1567 thiss!11556 (h!36750 rules!1182))))

(assert (=> d!782768 (= (maxPrefixOneRuleZipperSequence!479 thiss!11556 (h!36750 rules!1182) input!603) lt!961477)))

(assert (=> b!2717174 (= e!1712537 (Some!6182 (tuple2!30993 (Token!9045 (apply!7411 (transformation!4791 (h!36750 rules!1182)) (_1!18135 lt!961468)) (h!36750 rules!1182) (size!24171 (_1!18135 lt!961468)) (list!11856 (_1!18135 lt!961468))) (_2!18135 lt!961468))))))

(assert (=> b!2717174 (= lt!961469 (list!11856 input!603))))

(declare-fun lt!961475 () Unit!45356)

(assert (=> b!2717174 (= lt!961475 (longestMatchIsAcceptedByMatchOrIsEmpty!759 (regex!4791 (h!36750 rules!1182)) lt!961469))))

(declare-fun res!1141204 () Bool)

(assert (=> b!2717174 (= res!1141204 (isEmpty!17857 (_1!18134 (findLongestMatchInner!786 (regex!4791 (h!36750 rules!1182)) Nil!31328 (size!24174 Nil!31328) lt!961469 lt!961469 (size!24174 lt!961469)))))))

(assert (=> b!2717174 (=> res!1141204 e!1712541)))

(assert (=> b!2717174 e!1712541))

(declare-fun lt!961473 () Unit!45356)

(assert (=> b!2717174 (= lt!961473 lt!961475)))

(declare-fun lt!961474 () Unit!45356)

(assert (=> b!2717174 (= lt!961474 (lemmaInv!826 (transformation!4791 (h!36750 rules!1182))))))

(declare-fun lt!961470 () Unit!45356)

(assert (=> b!2717174 (= lt!961470 (ForallOf!530 lambda!100561 (_1!18135 lt!961468)))))

(declare-fun lt!961472 () Unit!45356)

(assert (=> b!2717174 (= lt!961472 (ForallOf!530 lambda!100561 (seqFromList!3216 (list!11856 (_1!18135 lt!961468)))))))

(declare-fun lt!961476 () Option!6183)

(assert (=> b!2717174 (= lt!961476 (Some!6182 (tuple2!30993 (Token!9045 (apply!7411 (transformation!4791 (h!36750 rules!1182)) (_1!18135 lt!961468)) (h!36750 rules!1182) (size!24171 (_1!18135 lt!961468)) (list!11856 (_1!18135 lt!961468))) (_2!18135 lt!961468))))))

(declare-fun lt!961471 () Unit!45356)

(assert (=> b!2717174 (= lt!961471 (lemmaEqSameImage!732 (transformation!4791 (h!36750 rules!1182)) (_1!18135 lt!961468) (seqFromList!3216 (list!11856 (_1!18135 lt!961468)))))))

(assert (= (and d!782768 c!439095) b!2717172))

(assert (= (and d!782768 (not c!439095)) b!2717174))

(assert (= (and b!2717174 (not res!1141204)) b!2717170))

(assert (= (and d!782768 res!1141206) b!2717171))

(assert (= (and b!2717171 (not res!1141205)) b!2717173))

(assert (= (and b!2717173 res!1141207) b!2717169))

(declare-fun m!3115777 () Bool)

(assert (=> b!2717169 m!3115777))

(assert (=> b!2717169 m!3112377))

(assert (=> b!2717169 m!3114649))

(declare-fun m!3115781 () Bool)

(assert (=> b!2717169 m!3115781))

(assert (=> b!2717169 m!3112377))

(assert (=> b!2717169 m!3114649))

(declare-fun m!3115787 () Bool)

(assert (=> b!2717169 m!3115787))

(assert (=> b!2717173 m!3115787))

(assert (=> b!2717173 m!3112377))

(assert (=> b!2717173 m!3112377))

(assert (=> b!2717173 m!3114649))

(assert (=> b!2717173 m!3114649))

(assert (=> b!2717173 m!3115781))

(assert (=> b!2717170 m!3115683))

(declare-fun m!3115795 () Bool)

(assert (=> b!2717170 m!3115795))

(assert (=> b!2717170 m!3115683))

(assert (=> b!2717170 m!3115795))

(declare-fun m!3115797 () Bool)

(assert (=> b!2717170 m!3115797))

(declare-fun m!3115799 () Bool)

(assert (=> b!2717170 m!3115799))

(assert (=> b!2717174 m!3115683))

(assert (=> b!2717174 m!3115795))

(assert (=> b!2717174 m!3115797))

(declare-fun m!3115801 () Bool)

(assert (=> b!2717174 m!3115801))

(declare-fun m!3115803 () Bool)

(assert (=> b!2717174 m!3115803))

(declare-fun m!3115805 () Bool)

(assert (=> b!2717174 m!3115805))

(assert (=> b!2717174 m!3115801))

(declare-fun m!3115807 () Bool)

(assert (=> b!2717174 m!3115807))

(declare-fun m!3115809 () Bool)

(assert (=> b!2717174 m!3115809))

(assert (=> b!2717174 m!3115801))

(declare-fun m!3115813 () Bool)

(assert (=> b!2717174 m!3115813))

(assert (=> b!2717174 m!3115795))

(declare-fun m!3115817 () Bool)

(assert (=> b!2717174 m!3115817))

(declare-fun m!3115821 () Bool)

(assert (=> b!2717174 m!3115821))

(assert (=> b!2717174 m!3115707))

(assert (=> b!2717174 m!3115809))

(declare-fun m!3115827 () Bool)

(assert (=> b!2717174 m!3115827))

(assert (=> b!2717174 m!3115683))

(assert (=> b!2717174 m!3112377))

(assert (=> d!782768 m!3114161))

(assert (=> d!782768 m!3112377))

(assert (=> d!782768 m!3114649))

(declare-fun m!3115829 () Bool)

(assert (=> d!782768 m!3115829))

(declare-fun m!3115831 () Bool)

(assert (=> d!782768 m!3115831))

(assert (=> d!782768 m!3112377))

(assert (=> d!782768 m!3114649))

(declare-fun m!3115833 () Bool)

(assert (=> d!782768 m!3115833))

(declare-fun m!3115837 () Bool)

(assert (=> d!782768 m!3115837))

(assert (=> b!2717171 m!3115837))

(assert (=> bm!175035 d!782768))

(declare-fun b!2717202 () Bool)

(declare-fun e!1712558 () Bool)

(declare-fun e!1712557 () Bool)

(assert (=> b!2717202 (= e!1712558 e!1712557)))

(declare-fun res!1141230 () Bool)

(assert (=> b!2717202 (=> (not res!1141230) (not e!1712557))))

(assert (=> b!2717202 (= res!1141230 (<= (- 1) (- (height!1451 (left!24087 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665))))) (height!1451 (right!24417 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665))))))))))

(declare-fun b!2717203 () Bool)

(declare-fun res!1141225 () Bool)

(assert (=> b!2717203 (=> (not res!1141225) (not e!1712557))))

(assert (=> b!2717203 (= res!1141225 (not (isEmpty!17866 (left!24087 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))))))))

(declare-fun d!782790 () Bool)

(declare-fun res!1141228 () Bool)

(assert (=> d!782790 (=> res!1141228 e!1712558)))

(assert (=> d!782790 (= res!1141228 (not ((_ is Node!9810) (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665))))))))

(assert (=> d!782790 (= (isBalanced!2971 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))) e!1712558)))

(declare-fun b!2717204 () Bool)

(declare-fun res!1141227 () Bool)

(assert (=> b!2717204 (=> (not res!1141227) (not e!1712557))))

(assert (=> b!2717204 (= res!1141227 (isBalanced!2971 (left!24087 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665))))))))

(declare-fun b!2717205 () Bool)

(assert (=> b!2717205 (= e!1712557 (not (isEmpty!17866 (right!24417 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))))))))

(declare-fun b!2717206 () Bool)

(declare-fun res!1141229 () Bool)

(assert (=> b!2717206 (=> (not res!1141229) (not e!1712557))))

(assert (=> b!2717206 (= res!1141229 (<= (- (height!1451 (left!24087 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665))))) (height!1451 (right!24417 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665)))))) 1))))

(declare-fun b!2717207 () Bool)

(declare-fun res!1141226 () Bool)

(assert (=> b!2717207 (=> (not res!1141226) (not e!1712557))))

(assert (=> b!2717207 (= res!1141226 (isBalanced!2971 (right!24417 (++!7774 (c!438567 acc!331) (c!438567 (_1!18127 lt!960665))))))))

(assert (= (and d!782790 (not res!1141228)) b!2717202))

(assert (= (and b!2717202 res!1141230) b!2717206))

(assert (= (and b!2717206 res!1141229) b!2717204))

(assert (= (and b!2717204 res!1141227) b!2717207))

(assert (= (and b!2717207 res!1141226) b!2717203))

(assert (= (and b!2717203 res!1141225) b!2717205))

(declare-fun m!3115841 () Bool)

(assert (=> b!2717202 m!3115841))

(declare-fun m!3115843 () Bool)

(assert (=> b!2717202 m!3115843))

(declare-fun m!3115845 () Bool)

(assert (=> b!2717207 m!3115845))

(declare-fun m!3115847 () Bool)

(assert (=> b!2717205 m!3115847))

(declare-fun m!3115849 () Bool)

(assert (=> b!2717203 m!3115849))

(declare-fun m!3115851 () Bool)

(assert (=> b!2717204 m!3115851))

(assert (=> b!2717206 m!3115841))

(assert (=> b!2717206 m!3115843))

(assert (=> b!2715527 d!782790))

(assert (=> b!2715527 d!782190))

(assert (=> b!2715535 d!782476))

(assert (=> b!2715535 d!782006))

(declare-fun d!782792 () Bool)

(assert (=> d!782792 true))

(declare-fun order!17123 () Int)

(declare-fun lambda!100565 () Int)

(declare-fun dynLambda!13501 (Int Int) Int)

(assert (=> d!782792 (< (dynLambda!13500 order!17119 (toValue!6761 (transformation!4791 (h!36750 rules!1182)))) (dynLambda!13501 order!17123 lambda!100565))))

(declare-fun Forall2!806 (Int) Bool)

(assert (=> d!782792 (= (equivClasses!1876 (toChars!6620 (transformation!4791 (h!36750 rules!1182))) (toValue!6761 (transformation!4791 (h!36750 rules!1182)))) (Forall2!806 lambda!100565))))

(declare-fun bs!488216 () Bool)

(assert (= bs!488216 d!782792))

(declare-fun m!3115901 () Bool)

(assert (=> bs!488216 m!3115901))

(assert (=> b!2715060 d!782792))

(declare-fun d!782800 () Bool)

(assert (=> d!782800 (= (list!11856 (_2!18127 lt!960763)) (list!11860 (c!438566 (_2!18127 lt!960763))))))

(declare-fun bs!488217 () Bool)

(assert (= bs!488217 d!782800))

(declare-fun m!3115903 () Bool)

(assert (=> bs!488217 m!3115903))

(assert (=> b!2715246 d!782800))

(assert (=> b!2715246 d!782500))

(assert (=> b!2715246 d!782502))

(declare-fun d!782802 () Bool)

(declare-fun res!1141237 () Bool)

(declare-fun e!1712568 () Bool)

(assert (=> d!782802 (=> (not res!1141237) (not e!1712568))))

(assert (=> d!782802 (= res!1141237 (<= (size!24174 (list!11864 (xs!12872 (c!438566 input!603)))) 512))))

(assert (=> d!782802 (= (inv!42526 (c!438566 input!603)) e!1712568)))

(declare-fun b!2717222 () Bool)

(declare-fun res!1141238 () Bool)

(assert (=> b!2717222 (=> (not res!1141238) (not e!1712568))))

(assert (=> b!2717222 (= res!1141238 (= (csize!19849 (c!438566 input!603)) (size!24174 (list!11864 (xs!12872 (c!438566 input!603))))))))

(declare-fun b!2717223 () Bool)

(assert (=> b!2717223 (= e!1712568 (and (> (csize!19849 (c!438566 input!603)) 0) (<= (csize!19849 (c!438566 input!603)) 512)))))

(assert (= (and d!782802 res!1141237) b!2717222))

(assert (= (and b!2717222 res!1141238) b!2717223))

(assert (=> d!782802 m!3114327))

(assert (=> d!782802 m!3114327))

(declare-fun m!3115919 () Bool)

(assert (=> d!782802 m!3115919))

(assert (=> b!2717222 m!3114327))

(assert (=> b!2717222 m!3114327))

(assert (=> b!2717222 m!3115919))

(assert (=> b!2715540 d!782802))

(declare-fun d!782804 () Bool)

(declare-fun lt!961499 () Int)

(assert (=> d!782804 (>= lt!961499 0)))

(declare-fun e!1712569 () Int)

(assert (=> d!782804 (= lt!961499 e!1712569)))

(declare-fun c!439102 () Bool)

(assert (=> d!782804 (= c!439102 ((_ is Nil!31329) lt!960774))))

(assert (=> d!782804 (= (size!24173 lt!960774) lt!961499)))

(declare-fun b!2717224 () Bool)

(assert (=> b!2717224 (= e!1712569 0)))

(declare-fun b!2717225 () Bool)

(assert (=> b!2717225 (= e!1712569 (+ 1 (size!24173 (t!226247 lt!960774))))))

(assert (= (and d!782804 c!439102) b!2717224))

(assert (= (and d!782804 (not c!439102)) b!2717225))

(declare-fun m!3115929 () Bool)

(assert (=> b!2717225 m!3115929))

(assert (=> b!2715290 d!782804))

(declare-fun d!782808 () Bool)

(declare-fun lt!961500 () Int)

(assert (=> d!782808 (>= lt!961500 0)))

(declare-fun e!1712570 () Int)

(assert (=> d!782808 (= lt!961500 e!1712570)))

(declare-fun c!439103 () Bool)

(assert (=> d!782808 (= c!439103 ((_ is Nil!31329) (++!7770 lt!960666 lt!960676)))))

(assert (=> d!782808 (= (size!24173 (++!7770 lt!960666 lt!960676)) lt!961500)))

(declare-fun b!2717226 () Bool)

(assert (=> b!2717226 (= e!1712570 0)))

(declare-fun b!2717227 () Bool)

(assert (=> b!2717227 (= e!1712570 (+ 1 (size!24173 (t!226247 (++!7770 lt!960666 lt!960676)))))))

(assert (= (and d!782808 c!439103) b!2717226))

(assert (= (and d!782808 (not c!439103)) b!2717227))

(declare-fun m!3115933 () Bool)

(assert (=> b!2717227 m!3115933))

(assert (=> b!2715290 d!782808))

(declare-fun d!782812 () Bool)

(declare-fun lt!961502 () Int)

(assert (=> d!782812 (>= lt!961502 0)))

(declare-fun e!1712571 () Int)

(assert (=> d!782812 (= lt!961502 e!1712571)))

(declare-fun c!439104 () Bool)

(assert (=> d!782812 (= c!439104 ((_ is Nil!31329) lt!960688))))

(assert (=> d!782812 (= (size!24173 lt!960688) lt!961502)))

(declare-fun b!2717228 () Bool)

(assert (=> b!2717228 (= e!1712571 0)))

(declare-fun b!2717229 () Bool)

(assert (=> b!2717229 (= e!1712571 (+ 1 (size!24173 (t!226247 lt!960688))))))

(assert (= (and d!782812 c!439104) b!2717228))

(assert (= (and d!782812 (not c!439104)) b!2717229))

(declare-fun m!3115939 () Bool)

(assert (=> b!2717229 m!3115939))

(assert (=> b!2715290 d!782812))

(declare-fun d!782816 () Bool)

(declare-fun c!439105 () Bool)

(assert (=> d!782816 (= c!439105 ((_ is Empty!9809) (c!438566 (_2!18127 lt!960682))))))

(declare-fun e!1712572 () List!31428)

(assert (=> d!782816 (= (list!11860 (c!438566 (_2!18127 lt!960682))) e!1712572)))

(declare-fun b!2717233 () Bool)

(declare-fun e!1712573 () List!31428)

(assert (=> b!2717233 (= e!1712573 (++!7768 (list!11860 (left!24086 (c!438566 (_2!18127 lt!960682)))) (list!11860 (right!24416 (c!438566 (_2!18127 lt!960682))))))))

(declare-fun b!2717230 () Bool)

(assert (=> b!2717230 (= e!1712572 Nil!31328)))

(declare-fun b!2717232 () Bool)

(assert (=> b!2717232 (= e!1712573 (list!11864 (xs!12872 (c!438566 (_2!18127 lt!960682)))))))

(declare-fun b!2717231 () Bool)

(assert (=> b!2717231 (= e!1712572 e!1712573)))

(declare-fun c!439106 () Bool)

(assert (=> b!2717231 (= c!439106 ((_ is Leaf!14949) (c!438566 (_2!18127 lt!960682))))))

(assert (= (and d!782816 c!439105) b!2717230))

(assert (= (and d!782816 (not c!439105)) b!2717231))

(assert (= (and b!2717231 c!439106) b!2717232))

(assert (= (and b!2717231 (not c!439106)) b!2717233))

(declare-fun m!3115943 () Bool)

(assert (=> b!2717233 m!3115943))

(declare-fun m!3115945 () Bool)

(assert (=> b!2717233 m!3115945))

(assert (=> b!2717233 m!3115943))

(assert (=> b!2717233 m!3115945))

(declare-fun m!3115951 () Bool)

(assert (=> b!2717233 m!3115951))

(declare-fun m!3115953 () Bool)

(assert (=> b!2717232 m!3115953))

(assert (=> d!782030 d!782816))

(assert (=> b!2715296 d!782496))

(assert (=> b!2715296 d!781914))

(declare-fun bs!488221 () Bool)

(declare-fun d!782820 () Bool)

(assert (= bs!488221 (and d!782820 d!782258)))

(declare-fun lambda!100570 () Int)

(assert (=> bs!488221 (= lambda!100570 lambda!100545)))

(assert (=> d!782820 true))

(declare-fun lt!961508 () Bool)

(assert (=> d!782820 (= lt!961508 (rulesValidInductive!1667 thiss!11556 rules!1182))))

(assert (=> d!782820 (= lt!961508 (forall!6559 rules!1182 lambda!100570))))

(assert (=> d!782820 (= (rulesValid!1781 thiss!11556 rules!1182) lt!961508)))

(declare-fun bs!488222 () Bool)

(assert (= bs!488222 d!782820))

(assert (=> bs!488222 m!3113171))

(declare-fun m!3115959 () Bool)

(assert (=> bs!488222 m!3115959))

(assert (=> d!781806 d!782820))

(declare-fun d!782824 () Bool)

(declare-fun c!439109 () Bool)

(assert (=> d!782824 (= c!439109 ((_ is Empty!9809) (c!438566 totalInput!328)))))

(declare-fun e!1712576 () List!31428)

(assert (=> d!782824 (= (list!11860 (c!438566 totalInput!328)) e!1712576)))

(declare-fun b!2717241 () Bool)

(declare-fun e!1712577 () List!31428)

(assert (=> b!2717241 (= e!1712577 (++!7768 (list!11860 (left!24086 (c!438566 totalInput!328))) (list!11860 (right!24416 (c!438566 totalInput!328)))))))

(declare-fun b!2717238 () Bool)

(assert (=> b!2717238 (= e!1712576 Nil!31328)))

(declare-fun b!2717240 () Bool)

(assert (=> b!2717240 (= e!1712577 (list!11864 (xs!12872 (c!438566 totalInput!328))))))

(declare-fun b!2717239 () Bool)

(assert (=> b!2717239 (= e!1712576 e!1712577)))

(declare-fun c!439110 () Bool)

(assert (=> b!2717239 (= c!439110 ((_ is Leaf!14949) (c!438566 totalInput!328)))))

(assert (= (and d!782824 c!439109) b!2717238))

(assert (= (and d!782824 (not c!439109)) b!2717239))

(assert (= (and b!2717239 c!439110) b!2717240))

(assert (= (and b!2717239 (not c!439110)) b!2717241))

(declare-fun m!3115963 () Bool)

(assert (=> b!2717241 m!3115963))

(declare-fun m!3115965 () Bool)

(assert (=> b!2717241 m!3115965))

(assert (=> b!2717241 m!3115963))

(assert (=> b!2717241 m!3115965))

(declare-fun m!3115967 () Bool)

(assert (=> b!2717241 m!3115967))

(declare-fun m!3115969 () Bool)

(assert (=> b!2717240 m!3115969))

(assert (=> d!782006 d!782824))

(declare-fun d!782828 () Bool)

(assert (=> d!782828 (= (list!11857 (_1!18127 lt!960742)) (list!11861 (c!438567 (_1!18127 lt!960742))))))

(declare-fun bs!488226 () Bool)

(assert (= bs!488226 d!782828))

(declare-fun m!3115975 () Bool)

(assert (=> bs!488226 m!3115975))

(assert (=> b!2715172 d!782828))

(assert (=> b!2715172 d!782474))

(assert (=> b!2715172 d!782010))

(declare-fun b!2717242 () Bool)

(declare-fun res!1141240 () Bool)

(declare-fun e!1712578 () Bool)

(assert (=> b!2717242 (=> (not res!1141240) (not e!1712578))))

(assert (=> b!2717242 (= res!1141240 (not (isEmpty!17864 (left!24086 (++!7775 (c!438566 treated!9) (c!438566 lt!960679))))))))

(declare-fun b!2717243 () Bool)

(declare-fun res!1141239 () Bool)

(assert (=> b!2717243 (=> (not res!1141239) (not e!1712578))))

(assert (=> b!2717243 (= res!1141239 (<= (- (height!1452 (left!24086 (++!7775 (c!438566 treated!9) (c!438566 lt!960679)))) (height!1452 (right!24416 (++!7775 (c!438566 treated!9) (c!438566 lt!960679))))) 1))))

(declare-fun b!2717245 () Bool)

(declare-fun res!1141241 () Bool)

(assert (=> b!2717245 (=> (not res!1141241) (not e!1712578))))

(assert (=> b!2717245 (= res!1141241 (isBalanced!2972 (right!24416 (++!7775 (c!438566 treated!9) (c!438566 lt!960679)))))))

(declare-fun d!782832 () Bool)

(declare-fun res!1141242 () Bool)

(declare-fun e!1712579 () Bool)

(assert (=> d!782832 (=> res!1141242 e!1712579)))

(assert (=> d!782832 (= res!1141242 (not ((_ is Node!9809) (++!7775 (c!438566 treated!9) (c!438566 lt!960679)))))))

(assert (=> d!782832 (= (isBalanced!2972 (++!7775 (c!438566 treated!9) (c!438566 lt!960679))) e!1712579)))

(declare-fun b!2717247 () Bool)

(assert (=> b!2717247 (= e!1712579 e!1712578)))

(declare-fun res!1141243 () Bool)

(assert (=> b!2717247 (=> (not res!1141243) (not e!1712578))))

(assert (=> b!2717247 (= res!1141243 (<= (- 1) (- (height!1452 (left!24086 (++!7775 (c!438566 treated!9) (c!438566 lt!960679)))) (height!1452 (right!24416 (++!7775 (c!438566 treated!9) (c!438566 lt!960679)))))))))

(declare-fun b!2717249 () Bool)

(declare-fun res!1141244 () Bool)

(assert (=> b!2717249 (=> (not res!1141244) (not e!1712578))))

(assert (=> b!2717249 (= res!1141244 (isBalanced!2972 (left!24086 (++!7775 (c!438566 treated!9) (c!438566 lt!960679)))))))

(declare-fun b!2717251 () Bool)

(assert (=> b!2717251 (= e!1712578 (not (isEmpty!17864 (right!24416 (++!7775 (c!438566 treated!9) (c!438566 lt!960679))))))))

(assert (= (and d!782832 (not res!1141242)) b!2717247))

(assert (= (and b!2717247 res!1141243) b!2717243))

(assert (= (and b!2717243 res!1141239) b!2717249))

(assert (= (and b!2717249 res!1141244) b!2717245))

(assert (= (and b!2717245 res!1141241) b!2717242))

(assert (= (and b!2717242 res!1141240) b!2717251))

(declare-fun m!3115989 () Bool)

(assert (=> b!2717249 m!3115989))

(declare-fun m!3115991 () Bool)

(assert (=> b!2717247 m!3115991))

(declare-fun m!3115993 () Bool)

(assert (=> b!2717247 m!3115993))

(assert (=> b!2717243 m!3115991))

(assert (=> b!2717243 m!3115993))

(declare-fun m!3115995 () Bool)

(assert (=> b!2717251 m!3115995))

(declare-fun m!3115997 () Bool)

(assert (=> b!2717245 m!3115997))

(declare-fun m!3115999 () Bool)

(assert (=> b!2717242 m!3115999))

(assert (=> b!2715483 d!782832))

(assert (=> b!2715483 d!782250))

(declare-fun d!782840 () Bool)

(declare-fun lt!961515 () Int)

(assert (=> d!782840 (= lt!961515 (size!24173 (list!11857 (_1!18127 lt!960883))))))

(assert (=> d!782840 (= lt!961515 (size!24178 (c!438567 (_1!18127 lt!960883))))))

(assert (=> d!782840 (= (size!24170 (_1!18127 lt!960883)) lt!961515)))

(declare-fun bs!488229 () Bool)

(assert (= bs!488229 d!782840))

(assert (=> bs!488229 m!3113227))

(assert (=> bs!488229 m!3113227))

(declare-fun m!3116001 () Bool)

(assert (=> bs!488229 m!3116001))

(declare-fun m!3116003 () Bool)

(assert (=> bs!488229 m!3116003))

(assert (=> d!781996 d!782840))

(declare-fun d!782842 () Bool)

(declare-fun e!1712588 () Bool)

(assert (=> d!782842 e!1712588))

(declare-fun res!1141247 () Bool)

(assert (=> d!782842 (=> (not res!1141247) (not e!1712588))))

(declare-fun lt!961517 () Option!6183)

(assert (=> d!782842 (= res!1141247 (= (isDefined!4893 lt!961517) (isDefined!4894 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 totalInput!328)))))))

(declare-fun e!1712586 () Option!6183)

(assert (=> d!782842 (= lt!961517 e!1712586)))

(declare-fun c!439115 () Bool)

(assert (=> d!782842 (= c!439115 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!961522 () Unit!45356)

(declare-fun lt!961521 () Unit!45356)

(assert (=> d!782842 (= lt!961522 lt!961521)))

(declare-fun lt!961518 () List!31428)

(declare-fun lt!961519 () List!31428)

(assert (=> d!782842 (isPrefix!2483 lt!961518 lt!961519)))

(assert (=> d!782842 (= lt!961521 (lemmaIsPrefixRefl!1609 lt!961518 lt!961519))))

(assert (=> d!782842 (= lt!961519 (list!11856 totalInput!328))))

(assert (=> d!782842 (= lt!961518 (list!11856 totalInput!328))))

(assert (=> d!782842 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!782842 (= (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 totalInput!328) lt!961517)))

(declare-fun b!2717257 () Bool)

(declare-fun call!175361 () Option!6183)

(assert (=> b!2717257 (= e!1712586 call!175361)))

(declare-fun b!2717258 () Bool)

(declare-fun e!1712590 () Bool)

(assert (=> b!2717258 (= e!1712590 (= (list!11856 (_2!18128 (get!9776 lt!961517))) (_2!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 totalInput!328))))))))

(declare-fun b!2717259 () Bool)

(declare-fun e!1712585 () Bool)

(declare-fun e!1712587 () Bool)

(assert (=> b!2717259 (= e!1712585 e!1712587)))

(declare-fun res!1141250 () Bool)

(assert (=> b!2717259 (=> (not res!1141250) (not e!1712587))))

(assert (=> b!2717259 (= res!1141250 (= (_1!18128 (get!9776 lt!961517)) (_1!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 totalInput!328))))))))

(declare-fun b!2717260 () Bool)

(assert (=> b!2717260 (= e!1712588 e!1712585)))

(declare-fun res!1141246 () Bool)

(assert (=> b!2717260 (=> res!1141246 e!1712585)))

(assert (=> b!2717260 (= res!1141246 (not (isDefined!4893 lt!961517)))))

(declare-fun b!2717261 () Bool)

(declare-fun e!1712589 () Bool)

(assert (=> b!2717261 (= e!1712589 e!1712590)))

(declare-fun res!1141251 () Bool)

(assert (=> b!2717261 (=> (not res!1141251) (not e!1712590))))

(assert (=> b!2717261 (= res!1141251 (= (_1!18128 (get!9776 lt!961517)) (_1!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 totalInput!328))))))))

(declare-fun b!2717262 () Bool)

(declare-fun res!1141248 () Bool)

(assert (=> b!2717262 (=> (not res!1141248) (not e!1712588))))

(assert (=> b!2717262 (= res!1141248 e!1712589)))

(declare-fun res!1141249 () Bool)

(assert (=> b!2717262 (=> res!1141249 e!1712589)))

(assert (=> b!2717262 (= res!1141249 (not (isDefined!4893 lt!961517)))))

(declare-fun b!2717263 () Bool)

(declare-fun lt!961516 () Option!6183)

(declare-fun lt!961520 () Option!6183)

(assert (=> b!2717263 (= e!1712586 (ite (and ((_ is None!6182) lt!961516) ((_ is None!6182) lt!961520)) None!6182 (ite ((_ is None!6182) lt!961520) lt!961516 (ite ((_ is None!6182) lt!961516) lt!961520 (ite (>= (size!24166 (_1!18128 (v!33014 lt!961516))) (size!24166 (_1!18128 (v!33014 lt!961520)))) lt!961516 lt!961520)))))))

(assert (=> b!2717263 (= lt!961516 call!175361)))

(assert (=> b!2717263 (= lt!961520 (maxPrefixZipperSequence!1035 thiss!11556 (t!226248 rules!1182) totalInput!328))))

(declare-fun bm!175356 () Bool)

(assert (=> bm!175356 (= call!175361 (maxPrefixOneRuleZipperSequence!479 thiss!11556 (h!36750 rules!1182) totalInput!328))))

(declare-fun b!2717264 () Bool)

(assert (=> b!2717264 (= e!1712587 (= (list!11856 (_2!18128 (get!9776 lt!961517))) (_2!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 totalInput!328))))))))

(assert (= (and d!782842 c!439115) b!2717257))

(assert (= (and d!782842 (not c!439115)) b!2717263))

(assert (= (or b!2717257 b!2717263) bm!175356))

(assert (= (and d!782842 res!1141247) b!2717262))

(assert (= (and b!2717262 (not res!1141249)) b!2717261))

(assert (= (and b!2717261 res!1141251) b!2717258))

(assert (= (and b!2717262 res!1141248) b!2717260))

(assert (= (and b!2717260 (not res!1141246)) b!2717259))

(assert (= (and b!2717259 res!1141250) b!2717264))

(declare-fun m!3116029 () Bool)

(assert (=> b!2717258 m!3116029))

(declare-fun m!3116031 () Bool)

(assert (=> b!2717258 m!3116031))

(declare-fun m!3116033 () Bool)

(assert (=> b!2717258 m!3116033))

(assert (=> b!2717258 m!3112375))

(assert (=> b!2717258 m!3112375))

(assert (=> b!2717258 m!3116029))

(declare-fun m!3116037 () Bool)

(assert (=> b!2717258 m!3116037))

(declare-fun m!3116041 () Bool)

(assert (=> b!2717262 m!3116041))

(assert (=> b!2717261 m!3116037))

(assert (=> b!2717261 m!3112375))

(assert (=> b!2717261 m!3112375))

(assert (=> b!2717261 m!3116029))

(assert (=> b!2717261 m!3116029))

(assert (=> b!2717261 m!3116031))

(declare-fun m!3116051 () Bool)

(assert (=> bm!175356 m!3116051))

(declare-fun m!3116053 () Bool)

(assert (=> b!2717263 m!3116053))

(assert (=> d!782842 m!3116041))

(assert (=> d!782842 m!3116029))

(declare-fun m!3116055 () Bool)

(assert (=> d!782842 m!3116055))

(declare-fun m!3116057 () Bool)

(assert (=> d!782842 m!3116057))

(assert (=> d!782842 m!3113171))

(assert (=> d!782842 m!3112375))

(assert (=> d!782842 m!3112375))

(assert (=> d!782842 m!3116029))

(declare-fun m!3116059 () Bool)

(assert (=> d!782842 m!3116059))

(assert (=> b!2717264 m!3114453))

(declare-fun m!3116061 () Bool)

(assert (=> b!2717264 m!3116061))

(assert (=> b!2717264 m!3116033))

(assert (=> b!2717264 m!3112375))

(assert (=> b!2717264 m!3112375))

(assert (=> b!2717264 m!3114453))

(assert (=> b!2717264 m!3116037))

(assert (=> b!2717260 m!3116041))

(assert (=> b!2717259 m!3116037))

(assert (=> b!2717259 m!3112375))

(assert (=> b!2717259 m!3112375))

(assert (=> b!2717259 m!3114453))

(assert (=> b!2717259 m!3114453))

(assert (=> b!2717259 m!3116061))

(assert (=> d!781996 d!782842))

(declare-fun b!2717280 () Bool)

(declare-fun e!1712598 () List!31428)

(assert (=> b!2717280 (= e!1712598 (Cons!31328 (h!36748 (t!226246 lt!960683)) (++!7768 (t!226246 (t!226246 lt!960683)) lt!960681)))))

(declare-fun b!2717281 () Bool)

(declare-fun res!1141254 () Bool)

(declare-fun e!1712599 () Bool)

(assert (=> b!2717281 (=> (not res!1141254) (not e!1712599))))

(declare-fun lt!961526 () List!31428)

(assert (=> b!2717281 (= res!1141254 (= (size!24174 lt!961526) (+ (size!24174 (t!226246 lt!960683)) (size!24174 lt!960681))))))

(declare-fun b!2717282 () Bool)

(assert (=> b!2717282 (= e!1712599 (or (not (= lt!960681 Nil!31328)) (= lt!961526 (t!226246 lt!960683))))))

(declare-fun d!782856 () Bool)

(assert (=> d!782856 e!1712599))

(declare-fun res!1141255 () Bool)

(assert (=> d!782856 (=> (not res!1141255) (not e!1712599))))

(assert (=> d!782856 (= res!1141255 (= (content!4438 lt!961526) ((_ map or) (content!4438 (t!226246 lt!960683)) (content!4438 lt!960681))))))

(assert (=> d!782856 (= lt!961526 e!1712598)))

(declare-fun c!439122 () Bool)

(assert (=> d!782856 (= c!439122 ((_ is Nil!31328) (t!226246 lt!960683)))))

(assert (=> d!782856 (= (++!7768 (t!226246 lt!960683) lt!960681) lt!961526)))

(declare-fun b!2717279 () Bool)

(assert (=> b!2717279 (= e!1712598 lt!960681)))

(assert (= (and d!782856 c!439122) b!2717279))

(assert (= (and d!782856 (not c!439122)) b!2717280))

(assert (= (and d!782856 res!1141255) b!2717281))

(assert (= (and b!2717281 res!1141254) b!2717282))

(declare-fun m!3116075 () Bool)

(assert (=> b!2717280 m!3116075))

(declare-fun m!3116077 () Bool)

(assert (=> b!2717281 m!3116077))

(assert (=> b!2717281 m!3113645))

(assert (=> b!2717281 m!3113253))

(declare-fun m!3116081 () Bool)

(assert (=> d!782856 m!3116081))

(assert (=> d!782856 m!3114217))

(assert (=> d!782856 m!3113257))

(assert (=> b!2715542 d!782856))

(declare-fun d!782862 () Bool)

(declare-fun c!439123 () Bool)

(assert (=> d!782862 (= c!439123 ((_ is Nil!31328) lt!960773))))

(declare-fun e!1712602 () (InoxSet C!16044))

(assert (=> d!782862 (= (content!4438 lt!960773) e!1712602)))

(declare-fun b!2717287 () Bool)

(assert (=> b!2717287 (= e!1712602 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2717288 () Bool)

(assert (=> b!2717288 (= e!1712602 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960773) true) (content!4438 (t!226246 lt!960773))))))

(assert (= (and d!782862 c!439123) b!2717287))

(assert (= (and d!782862 (not c!439123)) b!2717288))

(declare-fun m!3116083 () Bool)

(assert (=> b!2717288 m!3116083))

(declare-fun m!3116087 () Bool)

(assert (=> b!2717288 m!3116087))

(assert (=> d!781918 d!782862))

(assert (=> d!781918 d!782480))

(assert (=> d!781918 d!782174))

(declare-fun d!782864 () Bool)

(declare-fun res!1141260 () Bool)

(declare-fun e!1712603 () Bool)

(assert (=> d!782864 (=> (not res!1141260) (not e!1712603))))

(assert (=> d!782864 (= res!1141260 (<= (size!24174 (list!11864 (xs!12872 (c!438566 totalInput!328)))) 512))))

(assert (=> d!782864 (= (inv!42526 (c!438566 totalInput!328)) e!1712603)))

(declare-fun b!2717289 () Bool)

(declare-fun res!1141261 () Bool)

(assert (=> b!2717289 (=> (not res!1141261) (not e!1712603))))

(assert (=> b!2717289 (= res!1141261 (= (csize!19849 (c!438566 totalInput!328)) (size!24174 (list!11864 (xs!12872 (c!438566 totalInput!328))))))))

(declare-fun b!2717290 () Bool)

(assert (=> b!2717290 (= e!1712603 (and (> (csize!19849 (c!438566 totalInput!328)) 0) (<= (csize!19849 (c!438566 totalInput!328)) 512)))))

(assert (= (and d!782864 res!1141260) b!2717289))

(assert (= (and b!2717289 res!1141261) b!2717290))

(assert (=> d!782864 m!3115969))

(assert (=> d!782864 m!3115969))

(declare-fun m!3116091 () Bool)

(assert (=> d!782864 m!3116091))

(assert (=> b!2717289 m!3115969))

(assert (=> b!2717289 m!3115969))

(assert (=> b!2717289 m!3116091))

(assert (=> b!2715519 d!782864))

(declare-fun d!782870 () Bool)

(declare-fun c!439126 () Bool)

(assert (=> d!782870 (= c!439126 ((_ is Empty!9809) (c!438566 (_2!18127 lt!960690))))))

(declare-fun e!1712606 () List!31428)

(assert (=> d!782870 (= (list!11860 (c!438566 (_2!18127 lt!960690))) e!1712606)))

(declare-fun b!2717298 () Bool)

(declare-fun e!1712607 () List!31428)

(assert (=> b!2717298 (= e!1712607 (++!7768 (list!11860 (left!24086 (c!438566 (_2!18127 lt!960690)))) (list!11860 (right!24416 (c!438566 (_2!18127 lt!960690))))))))

(declare-fun b!2717295 () Bool)

(assert (=> b!2717295 (= e!1712606 Nil!31328)))

(declare-fun b!2717297 () Bool)

(assert (=> b!2717297 (= e!1712607 (list!11864 (xs!12872 (c!438566 (_2!18127 lt!960690)))))))

(declare-fun b!2717296 () Bool)

(assert (=> b!2717296 (= e!1712606 e!1712607)))

(declare-fun c!439127 () Bool)

(assert (=> b!2717296 (= c!439127 ((_ is Leaf!14949) (c!438566 (_2!18127 lt!960690))))))

(assert (= (and d!782870 c!439126) b!2717295))

(assert (= (and d!782870 (not c!439126)) b!2717296))

(assert (= (and b!2717296 c!439127) b!2717297))

(assert (= (and b!2717296 (not c!439127)) b!2717298))

(declare-fun m!3116095 () Bool)

(assert (=> b!2717298 m!3116095))

(declare-fun m!3116097 () Bool)

(assert (=> b!2717298 m!3116097))

(assert (=> b!2717298 m!3116095))

(assert (=> b!2717298 m!3116097))

(declare-fun m!3116099 () Bool)

(assert (=> b!2717298 m!3116099))

(declare-fun m!3116101 () Bool)

(assert (=> b!2717297 m!3116101))

(assert (=> d!781794 d!782870))

(declare-fun d!782874 () Bool)

(declare-fun c!439132 () Bool)

(assert (=> d!782874 (= c!439132 ((_ is Nil!31329) lt!960769))))

(declare-fun e!1712618 () (InoxSet Token!9044))

(assert (=> d!782874 (= (content!4437 lt!960769) e!1712618)))

(declare-fun b!2717315 () Bool)

(assert (=> b!2717315 (= e!1712618 ((as const (Array Token!9044 Bool)) false))))

(declare-fun b!2717316 () Bool)

(assert (=> b!2717316 (= e!1712618 ((_ map or) (store ((as const (Array Token!9044 Bool)) false) (h!36749 lt!960769) true) (content!4437 (t!226247 lt!960769))))))

(assert (= (and d!782874 c!439132) b!2717315))

(assert (= (and d!782874 (not c!439132)) b!2717316))

(declare-fun m!3116113 () Bool)

(assert (=> b!2717316 m!3116113))

(declare-fun m!3116115 () Bool)

(assert (=> b!2717316 m!3116115))

(assert (=> d!781912 d!782874))

(declare-fun d!782880 () Bool)

(declare-fun c!439133 () Bool)

(assert (=> d!782880 (= c!439133 ((_ is Nil!31329) lt!960666))))

(declare-fun e!1712619 () (InoxSet Token!9044))

(assert (=> d!782880 (= (content!4437 lt!960666) e!1712619)))

(declare-fun b!2717317 () Bool)

(assert (=> b!2717317 (= e!1712619 ((as const (Array Token!9044 Bool)) false))))

(declare-fun b!2717318 () Bool)

(assert (=> b!2717318 (= e!1712619 ((_ map or) (store ((as const (Array Token!9044 Bool)) false) (h!36749 lt!960666) true) (content!4437 (t!226247 lt!960666))))))

(assert (= (and d!782880 c!439133) b!2717317))

(assert (= (and d!782880 (not c!439133)) b!2717318))

(declare-fun m!3116125 () Bool)

(assert (=> b!2717318 m!3116125))

(assert (=> b!2717318 m!3113931))

(assert (=> d!781912 d!782880))

(declare-fun d!782882 () Bool)

(declare-fun c!439134 () Bool)

(assert (=> d!782882 (= c!439134 ((_ is Nil!31329) (++!7770 lt!960676 lt!960688)))))

(declare-fun e!1712620 () (InoxSet Token!9044))

(assert (=> d!782882 (= (content!4437 (++!7770 lt!960676 lt!960688)) e!1712620)))

(declare-fun b!2717319 () Bool)

(assert (=> b!2717319 (= e!1712620 ((as const (Array Token!9044 Bool)) false))))

(declare-fun b!2717320 () Bool)

(assert (=> b!2717320 (= e!1712620 ((_ map or) (store ((as const (Array Token!9044 Bool)) false) (h!36749 (++!7770 lt!960676 lt!960688)) true) (content!4437 (t!226247 (++!7770 lt!960676 lt!960688)))))))

(assert (= (and d!782882 c!439134) b!2717319))

(assert (= (and d!782882 (not c!439134)) b!2717320))

(declare-fun m!3116139 () Bool)

(assert (=> b!2717320 m!3116139))

(declare-fun m!3116141 () Bool)

(assert (=> b!2717320 m!3116141))

(assert (=> d!781912 d!782882))

(declare-fun d!782884 () Bool)

(declare-fun res!1141276 () Bool)

(declare-fun e!1712626 () Bool)

(assert (=> d!782884 (=> (not res!1141276) (not e!1712626))))

(assert (=> d!782884 (= res!1141276 (<= (size!24173 (list!11862 (xs!12873 (c!438567 acc!331)))) 512))))

(assert (=> d!782884 (= (inv!42524 (c!438567 acc!331)) e!1712626)))

(declare-fun b!2717331 () Bool)

(declare-fun res!1141277 () Bool)

(assert (=> b!2717331 (=> (not res!1141277) (not e!1712626))))

(assert (=> b!2717331 (= res!1141277 (= (csize!19851 (c!438567 acc!331)) (size!24173 (list!11862 (xs!12873 (c!438567 acc!331))))))))

(declare-fun b!2717332 () Bool)

(assert (=> b!2717332 (= e!1712626 (and (> (csize!19851 (c!438567 acc!331)) 0) (<= (csize!19851 (c!438567 acc!331)) 512)))))

(assert (= (and d!782884 res!1141276) b!2717331))

(assert (= (and b!2717331 res!1141277) b!2717332))

(assert (=> d!782884 m!3113619))

(assert (=> d!782884 m!3113619))

(declare-fun m!3116169 () Bool)

(assert (=> d!782884 m!3116169))

(assert (=> b!2717331 m!3113619))

(assert (=> b!2717331 m!3113619))

(assert (=> b!2717331 m!3116169))

(assert (=> b!2715202 d!782884))

(assert (=> b!2715258 d!782070))

(assert (=> b!2715258 d!782124))

(assert (=> b!2715258 d!782126))

(assert (=> b!2715258 d!782128))

(assert (=> b!2715258 d!782130))

(declare-fun d!782896 () Bool)

(declare-fun c!439137 () Bool)

(assert (=> d!782896 (= c!439137 ((_ is Nil!31328) lt!960772))))

(declare-fun e!1712627 () (InoxSet C!16044))

(assert (=> d!782896 (= (content!4438 lt!960772) e!1712627)))

(declare-fun b!2717333 () Bool)

(assert (=> b!2717333 (= e!1712627 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2717334 () Bool)

(assert (=> b!2717334 (= e!1712627 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960772) true) (content!4438 (t!226246 lt!960772))))))

(assert (= (and d!782896 c!439137) b!2717333))

(assert (= (and d!782896 (not c!439137)) b!2717334))

(declare-fun m!3116171 () Bool)

(assert (=> b!2717334 m!3116171))

(declare-fun m!3116173 () Bool)

(assert (=> b!2717334 m!3116173))

(assert (=> d!781916 d!782896))

(assert (=> d!781916 d!782334))

(declare-fun d!782898 () Bool)

(declare-fun c!439138 () Bool)

(assert (=> d!782898 (= c!439138 ((_ is Nil!31328) (++!7768 lt!960668 lt!960680)))))

(declare-fun e!1712628 () (InoxSet C!16044))

(assert (=> d!782898 (= (content!4438 (++!7768 lt!960668 lt!960680)) e!1712628)))

(declare-fun b!2717335 () Bool)

(assert (=> b!2717335 (= e!1712628 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2717336 () Bool)

(assert (=> b!2717336 (= e!1712628 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 (++!7768 lt!960668 lt!960680)) true) (content!4438 (t!226246 (++!7768 lt!960668 lt!960680)))))))

(assert (= (and d!782898 c!439138) b!2717335))

(assert (= (and d!782898 (not c!439138)) b!2717336))

(declare-fun m!3116175 () Bool)

(assert (=> b!2717336 m!3116175))

(declare-fun m!3116177 () Bool)

(assert (=> b!2717336 m!3116177))

(assert (=> d!781916 d!782898))

(declare-fun d!782900 () Bool)

(declare-fun res!1141278 () Bool)

(declare-fun e!1712629 () Bool)

(assert (=> d!782900 (=> (not res!1141278) (not e!1712629))))

(assert (=> d!782900 (= res!1141278 (= (csize!19848 (c!438566 input!603)) (+ (size!24176 (left!24086 (c!438566 input!603))) (size!24176 (right!24416 (c!438566 input!603))))))))

(assert (=> d!782900 (= (inv!42525 (c!438566 input!603)) e!1712629)))

(declare-fun b!2717337 () Bool)

(declare-fun res!1141279 () Bool)

(assert (=> b!2717337 (=> (not res!1141279) (not e!1712629))))

(assert (=> b!2717337 (= res!1141279 (and (not (= (left!24086 (c!438566 input!603)) Empty!9809)) (not (= (right!24416 (c!438566 input!603)) Empty!9809))))))

(declare-fun b!2717338 () Bool)

(declare-fun res!1141280 () Bool)

(assert (=> b!2717338 (=> (not res!1141280) (not e!1712629))))

(assert (=> b!2717338 (= res!1141280 (= (cheight!10020 (c!438566 input!603)) (+ (max!0 (height!1452 (left!24086 (c!438566 input!603))) (height!1452 (right!24416 (c!438566 input!603)))) 1)))))

(declare-fun b!2717339 () Bool)

(assert (=> b!2717339 (= e!1712629 (<= 0 (cheight!10020 (c!438566 input!603))))))

(assert (= (and d!782900 res!1141278) b!2717337))

(assert (= (and b!2717337 res!1141279) b!2717338))

(assert (= (and b!2717338 res!1141280) b!2717339))

(declare-fun m!3116179 () Bool)

(assert (=> d!782900 m!3116179))

(declare-fun m!3116181 () Bool)

(assert (=> d!782900 m!3116181))

(assert (=> b!2717338 m!3113877))

(assert (=> b!2717338 m!3113879))

(assert (=> b!2717338 m!3113877))

(assert (=> b!2717338 m!3113879))

(declare-fun m!3116183 () Bool)

(assert (=> b!2717338 m!3116183))

(assert (=> b!2715538 d!782900))

(declare-fun d!782902 () Bool)

(declare-fun c!439139 () Bool)

(assert (=> d!782902 (= c!439139 ((_ is Nil!31329) lt!960843))))

(declare-fun e!1712630 () (InoxSet Token!9044))

(assert (=> d!782902 (= (content!4437 lt!960843) e!1712630)))

(declare-fun b!2717340 () Bool)

(assert (=> b!2717340 (= e!1712630 ((as const (Array Token!9044 Bool)) false))))

(declare-fun b!2717341 () Bool)

(assert (=> b!2717341 (= e!1712630 ((_ map or) (store ((as const (Array Token!9044 Bool)) false) (h!36749 lt!960843) true) (content!4437 (t!226247 lt!960843))))))

(assert (= (and d!782902 c!439139) b!2717340))

(assert (= (and d!782902 (not c!439139)) b!2717341))

(declare-fun m!3116185 () Bool)

(assert (=> b!2717341 m!3116185))

(declare-fun m!3116187 () Bool)

(assert (=> b!2717341 m!3116187))

(assert (=> d!781976 d!782902))

(declare-fun d!782904 () Bool)

(declare-fun c!439140 () Bool)

(assert (=> d!782904 (= c!439140 ((_ is Nil!31329) lt!960676))))

(declare-fun e!1712633 () (InoxSet Token!9044))

(assert (=> d!782904 (= (content!4437 lt!960676) e!1712633)))

(declare-fun b!2717346 () Bool)

(assert (=> b!2717346 (= e!1712633 ((as const (Array Token!9044 Bool)) false))))

(declare-fun b!2717347 () Bool)

(assert (=> b!2717347 (= e!1712633 ((_ map or) (store ((as const (Array Token!9044 Bool)) false) (h!36749 lt!960676) true) (content!4437 (t!226247 lt!960676))))))

(assert (= (and d!782904 c!439140) b!2717346))

(assert (= (and d!782904 (not c!439140)) b!2717347))

(declare-fun m!3116189 () Bool)

(assert (=> b!2717347 m!3116189))

(assert (=> b!2717347 m!3114287))

(assert (=> d!781976 d!782904))

(declare-fun d!782906 () Bool)

(declare-fun c!439141 () Bool)

(assert (=> d!782906 (= c!439141 ((_ is Nil!31329) lt!960688))))

(declare-fun e!1712634 () (InoxSet Token!9044))

(assert (=> d!782906 (= (content!4437 lt!960688) e!1712634)))

(declare-fun b!2717350 () Bool)

(assert (=> b!2717350 (= e!1712634 ((as const (Array Token!9044 Bool)) false))))

(declare-fun b!2717351 () Bool)

(assert (=> b!2717351 (= e!1712634 ((_ map or) (store ((as const (Array Token!9044 Bool)) false) (h!36749 lt!960688) true) (content!4437 (t!226247 lt!960688))))))

(assert (= (and d!782906 c!439141) b!2717350))

(assert (= (and d!782906 (not c!439141)) b!2717351))

(declare-fun m!3116191 () Bool)

(assert (=> b!2717351 m!3116191))

(declare-fun m!3116193 () Bool)

(assert (=> b!2717351 m!3116193))

(assert (=> d!781976 d!782906))

(assert (=> b!2715504 d!782484))

(assert (=> b!2715504 d!782424))

(assert (=> b!2715504 d!782426))

(assert (=> b!2715504 d!782322))

(assert (=> b!2715504 d!781972))

(assert (=> b!2715028 d!782022))

(declare-fun d!782908 () Bool)

(declare-fun e!1712635 () Bool)

(assert (=> d!782908 e!1712635))

(declare-fun res!1141287 () Bool)

(assert (=> d!782908 (=> (not res!1141287) (not e!1712635))))

(assert (=> d!782908 (= res!1141287 (isBalanced!2971 (prepend!1119 (c!438567 (_1!18127 lt!960845)) (_1!18128 (v!33014 lt!960844)))))))

(declare-fun lt!961540 () BalanceConc!19234)

(assert (=> d!782908 (= lt!961540 (BalanceConc!19235 (prepend!1119 (c!438567 (_1!18127 lt!960845)) (_1!18128 (v!33014 lt!960844)))))))

(assert (=> d!782908 (= (prepend!1117 (_1!18127 lt!960845) (_1!18128 (v!33014 lt!960844))) lt!961540)))

(declare-fun b!2717352 () Bool)

(assert (=> b!2717352 (= e!1712635 (= (list!11857 lt!961540) (Cons!31329 (_1!18128 (v!33014 lt!960844)) (list!11857 (_1!18127 lt!960845)))))))

(assert (= (and d!782908 res!1141287) b!2717352))

(declare-fun m!3116195 () Bool)

(assert (=> d!782908 m!3116195))

(assert (=> d!782908 m!3116195))

(declare-fun m!3116197 () Bool)

(assert (=> d!782908 m!3116197))

(declare-fun m!3116199 () Bool)

(assert (=> b!2717352 m!3116199))

(declare-fun m!3116201 () Bool)

(assert (=> b!2717352 m!3116201))

(assert (=> b!2715469 d!782908))

(declare-fun d!782910 () Bool)

(declare-fun e!1712637 () Bool)

(assert (=> d!782910 e!1712637))

(declare-fun res!1141289 () Bool)

(assert (=> d!782910 (=> (not res!1141289) (not e!1712637))))

(declare-fun e!1712636 () Bool)

(assert (=> d!782910 (= res!1141289 e!1712636)))

(declare-fun c!439142 () Bool)

(declare-fun lt!961543 () tuple2!30990)

(assert (=> d!782910 (= c!439142 (> (size!24170 (_1!18127 lt!961543)) 0))))

(declare-fun e!1712639 () tuple2!30990)

(assert (=> d!782910 (= lt!961543 e!1712639)))

(declare-fun c!439143 () Bool)

(declare-fun lt!961541 () Option!6183)

(assert (=> d!782910 (= c!439143 ((_ is Some!6182) lt!961541))))

(assert (=> d!782910 (= lt!961541 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960844))))))

(assert (=> d!782910 (= (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960844))) lt!961543)))

(declare-fun b!2717353 () Bool)

(declare-fun res!1141288 () Bool)

(assert (=> b!2717353 (=> (not res!1141288) (not e!1712637))))

(assert (=> b!2717353 (= res!1141288 (= (list!11857 (_1!18127 lt!961543)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960844)))))))))

(declare-fun b!2717354 () Bool)

(declare-fun e!1712638 () Bool)

(assert (=> b!2717354 (= e!1712636 e!1712638)))

(declare-fun res!1141290 () Bool)

(assert (=> b!2717354 (= res!1141290 (< (size!24171 (_2!18127 lt!961543)) (size!24171 (_2!18128 (v!33014 lt!960844)))))))

(assert (=> b!2717354 (=> (not res!1141290) (not e!1712638))))

(declare-fun b!2717355 () Bool)

(assert (=> b!2717355 (= e!1712639 (tuple2!30991 (BalanceConc!19235 Empty!9810) (_2!18128 (v!33014 lt!960844))))))

(declare-fun b!2717356 () Bool)

(assert (=> b!2717356 (= e!1712638 (not (isEmpty!17860 (_1!18127 lt!961543))))))

(declare-fun b!2717357 () Bool)

(assert (=> b!2717357 (= e!1712636 (= (list!11856 (_2!18127 lt!961543)) (list!11856 (_2!18128 (v!33014 lt!960844)))))))

(declare-fun b!2717358 () Bool)

(assert (=> b!2717358 (= e!1712637 (= (list!11856 (_2!18127 lt!961543)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960844)))))))))

(declare-fun b!2717359 () Bool)

(declare-fun lt!961542 () tuple2!30990)

(assert (=> b!2717359 (= e!1712639 (tuple2!30991 (prepend!1117 (_1!18127 lt!961542) (_1!18128 (v!33014 lt!961541))) (_2!18127 lt!961542)))))

(assert (=> b!2717359 (= lt!961542 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!961541))))))

(assert (= (and d!782910 c!439143) b!2717359))

(assert (= (and d!782910 (not c!439143)) b!2717355))

(assert (= (and d!782910 c!439142) b!2717354))

(assert (= (and d!782910 (not c!439142)) b!2717357))

(assert (= (and b!2717354 res!1141290) b!2717356))

(assert (= (and d!782910 res!1141289) b!2717353))

(assert (= (and b!2717353 res!1141288) b!2717358))

(declare-fun m!3116209 () Bool)

(assert (=> b!2717354 m!3116209))

(declare-fun m!3116211 () Bool)

(assert (=> b!2717354 m!3116211))

(declare-fun m!3116213 () Bool)

(assert (=> b!2717356 m!3116213))

(declare-fun m!3116215 () Bool)

(assert (=> b!2717353 m!3116215))

(declare-fun m!3116217 () Bool)

(assert (=> b!2717353 m!3116217))

(assert (=> b!2717353 m!3116217))

(declare-fun m!3116219 () Bool)

(assert (=> b!2717353 m!3116219))

(declare-fun m!3116221 () Bool)

(assert (=> d!782910 m!3116221))

(declare-fun m!3116223 () Bool)

(assert (=> d!782910 m!3116223))

(declare-fun m!3116225 () Bool)

(assert (=> b!2717357 m!3116225))

(assert (=> b!2717357 m!3116217))

(assert (=> b!2717358 m!3116225))

(assert (=> b!2717358 m!3116217))

(assert (=> b!2717358 m!3116217))

(assert (=> b!2717358 m!3116219))

(declare-fun m!3116227 () Bool)

(assert (=> b!2717359 m!3116227))

(declare-fun m!3116229 () Bool)

(assert (=> b!2717359 m!3116229))

(assert (=> b!2715469 d!782910))

(assert (=> b!2715550 d!782468))

(assert (=> b!2715550 d!782152))

(assert (=> b!2715550 d!782154))

(assert (=> b!2715550 d!782008))

(assert (=> b!2715550 d!782156))

(declare-fun d!782914 () Bool)

(declare-fun e!1712643 () Bool)

(assert (=> d!782914 e!1712643))

(declare-fun res!1141294 () Bool)

(assert (=> d!782914 (=> (not res!1141294) (not e!1712643))))

(assert (=> d!782914 (= res!1141294 (isBalanced!2971 (prepend!1119 (c!438567 (_1!18127 lt!960878)) (_1!18128 (v!33014 lt!960877)))))))

(declare-fun lt!961544 () BalanceConc!19234)

(assert (=> d!782914 (= lt!961544 (BalanceConc!19235 (prepend!1119 (c!438567 (_1!18127 lt!960878)) (_1!18128 (v!33014 lt!960877)))))))

(assert (=> d!782914 (= (prepend!1117 (_1!18127 lt!960878) (_1!18128 (v!33014 lt!960877))) lt!961544)))

(declare-fun b!2717367 () Bool)

(assert (=> b!2717367 (= e!1712643 (= (list!11857 lt!961544) (Cons!31329 (_1!18128 (v!33014 lt!960877)) (list!11857 (_1!18127 lt!960878)))))))

(assert (= (and d!782914 res!1141294) b!2717367))

(declare-fun m!3116235 () Bool)

(assert (=> d!782914 m!3116235))

(assert (=> d!782914 m!3116235))

(declare-fun m!3116237 () Bool)

(assert (=> d!782914 m!3116237))

(declare-fun m!3116239 () Bool)

(assert (=> b!2717367 m!3116239))

(declare-fun m!3116241 () Bool)

(assert (=> b!2717367 m!3116241))

(assert (=> b!2715526 d!782914))

(declare-fun d!782918 () Bool)

(declare-fun e!1712647 () Bool)

(assert (=> d!782918 e!1712647))

(declare-fun res!1141302 () Bool)

(assert (=> d!782918 (=> (not res!1141302) (not e!1712647))))

(declare-fun e!1712646 () Bool)

(assert (=> d!782918 (= res!1141302 e!1712646)))

(declare-fun c!439146 () Bool)

(declare-fun lt!961547 () tuple2!30990)

(assert (=> d!782918 (= c!439146 (> (size!24170 (_1!18127 lt!961547)) 0))))

(declare-fun e!1712649 () tuple2!30990)

(assert (=> d!782918 (= lt!961547 e!1712649)))

(declare-fun c!439147 () Bool)

(declare-fun lt!961545 () Option!6183)

(assert (=> d!782918 (= c!439147 ((_ is Some!6182) lt!961545))))

(assert (=> d!782918 (= lt!961545 (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960877))))))

(assert (=> d!782918 (= (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960877))) lt!961547)))

(declare-fun b!2717374 () Bool)

(declare-fun res!1141301 () Bool)

(assert (=> b!2717374 (=> (not res!1141301) (not e!1712647))))

(assert (=> b!2717374 (= res!1141301 (= (list!11857 (_1!18127 lt!961547)) (_1!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960877)))))))))

(declare-fun b!2717375 () Bool)

(declare-fun e!1712648 () Bool)

(assert (=> b!2717375 (= e!1712646 e!1712648)))

(declare-fun res!1141303 () Bool)

(assert (=> b!2717375 (= res!1141303 (< (size!24171 (_2!18127 lt!961547)) (size!24171 (_2!18128 (v!33014 lt!960877)))))))

(assert (=> b!2717375 (=> (not res!1141303) (not e!1712648))))

(declare-fun b!2717376 () Bool)

(assert (=> b!2717376 (= e!1712649 (tuple2!30991 (BalanceConc!19235 Empty!9810) (_2!18128 (v!33014 lt!960877))))))

(declare-fun b!2717377 () Bool)

(assert (=> b!2717377 (= e!1712648 (not (isEmpty!17860 (_1!18127 lt!961547))))))

(declare-fun b!2717378 () Bool)

(assert (=> b!2717378 (= e!1712646 (= (list!11856 (_2!18127 lt!961547)) (list!11856 (_2!18128 (v!33014 lt!960877)))))))

(declare-fun b!2717379 () Bool)

(assert (=> b!2717379 (= e!1712647 (= (list!11856 (_2!18127 lt!961547)) (_2!18129 (lexList!1218 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960877)))))))))

(declare-fun b!2717380 () Bool)

(declare-fun lt!961546 () tuple2!30990)

(assert (=> b!2717380 (= e!1712649 (tuple2!30991 (prepend!1117 (_1!18127 lt!961546) (_1!18128 (v!33014 lt!961545))) (_2!18127 lt!961546)))))

(assert (=> b!2717380 (= lt!961546 (lexRec!647 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!961545))))))

(assert (= (and d!782918 c!439147) b!2717380))

(assert (= (and d!782918 (not c!439147)) b!2717376))

(assert (= (and d!782918 c!439146) b!2717375))

(assert (= (and d!782918 (not c!439146)) b!2717378))

(assert (= (and b!2717375 res!1141303) b!2717377))

(assert (= (and d!782918 res!1141302) b!2717374))

(assert (= (and b!2717374 res!1141301) b!2717379))

(declare-fun m!3116255 () Bool)

(assert (=> b!2717375 m!3116255))

(declare-fun m!3116257 () Bool)

(assert (=> b!2717375 m!3116257))

(declare-fun m!3116259 () Bool)

(assert (=> b!2717377 m!3116259))

(declare-fun m!3116261 () Bool)

(assert (=> b!2717374 m!3116261))

(declare-fun m!3116263 () Bool)

(assert (=> b!2717374 m!3116263))

(assert (=> b!2717374 m!3116263))

(declare-fun m!3116265 () Bool)

(assert (=> b!2717374 m!3116265))

(declare-fun m!3116267 () Bool)

(assert (=> d!782918 m!3116267))

(declare-fun m!3116269 () Bool)

(assert (=> d!782918 m!3116269))

(declare-fun m!3116273 () Bool)

(assert (=> b!2717378 m!3116273))

(assert (=> b!2717378 m!3116263))

(assert (=> b!2717379 m!3116273))

(assert (=> b!2717379 m!3116263))

(assert (=> b!2717379 m!3116263))

(assert (=> b!2717379 m!3116265))

(declare-fun m!3116277 () Bool)

(assert (=> b!2717380 m!3116277))

(declare-fun m!3116279 () Bool)

(assert (=> b!2717380 m!3116279))

(assert (=> b!2715526 d!782918))

(declare-fun d!782924 () Bool)

(declare-fun c!439150 () Bool)

(assert (=> d!782924 (= c!439150 ((_ is Nil!31329) lt!960818))))

(declare-fun e!1712654 () (InoxSet Token!9044))

(assert (=> d!782924 (= (content!4437 lt!960818) e!1712654)))

(declare-fun b!2717387 () Bool)

(assert (=> b!2717387 (= e!1712654 ((as const (Array Token!9044 Bool)) false))))

(declare-fun b!2717388 () Bool)

(assert (=> b!2717388 (= e!1712654 ((_ map or) (store ((as const (Array Token!9044 Bool)) false) (h!36749 lt!960818) true) (content!4437 (t!226247 lt!960818))))))

(assert (= (and d!782924 c!439150) b!2717387))

(assert (= (and d!782924 (not c!439150)) b!2717388))

(declare-fun m!3116285 () Bool)

(assert (=> b!2717388 m!3116285))

(declare-fun m!3116287 () Bool)

(assert (=> b!2717388 m!3116287))

(assert (=> d!781946 d!782924))

(assert (=> d!781946 d!782880))

(assert (=> d!781946 d!782904))

(declare-fun d!782928 () Bool)

(declare-fun c!439151 () Bool)

(assert (=> d!782928 (= c!439151 ((_ is Nil!31328) lt!960816))))

(declare-fun e!1712655 () (InoxSet C!16044))

(assert (=> d!782928 (= (content!4438 lt!960816) e!1712655)))

(declare-fun b!2717389 () Bool)

(assert (=> b!2717389 (= e!1712655 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2717390 () Bool)

(assert (=> b!2717390 (= e!1712655 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960816) true) (content!4438 (t!226246 lt!960816))))))

(assert (= (and d!782928 c!439151) b!2717389))

(assert (= (and d!782928 (not c!439151)) b!2717390))

(declare-fun m!3116289 () Bool)

(assert (=> b!2717390 m!3116289))

(declare-fun m!3116291 () Bool)

(assert (=> b!2717390 m!3116291))

(assert (=> d!781942 d!782928))

(declare-fun d!782930 () Bool)

(declare-fun c!439152 () Bool)

(assert (=> d!782930 (= c!439152 ((_ is Nil!31328) lt!960685))))

(declare-fun e!1712656 () (InoxSet C!16044))

(assert (=> d!782930 (= (content!4438 lt!960685) e!1712656)))

(declare-fun b!2717391 () Bool)

(assert (=> b!2717391 (= e!1712656 ((as const (Array C!16044 Bool)) false))))

(declare-fun b!2717392 () Bool)

(assert (=> b!2717392 (= e!1712656 ((_ map or) (store ((as const (Array C!16044 Bool)) false) (h!36748 lt!960685) true) (content!4438 (t!226246 lt!960685))))))

(assert (= (and d!782930 c!439152) b!2717391))

(assert (= (and d!782930 (not c!439152)) b!2717392))

(declare-fun m!3116293 () Bool)

(assert (=> b!2717392 m!3116293))

(assert (=> b!2717392 m!3113951))

(assert (=> d!781942 d!782930))

(assert (=> d!781942 d!782174))

(declare-fun d!782932 () Bool)

(declare-fun lt!961548 () Int)

(assert (=> d!782932 (>= lt!961548 0)))

(declare-fun e!1712657 () Int)

(assert (=> d!782932 (= lt!961548 e!1712657)))

(declare-fun c!439153 () Bool)

(assert (=> d!782932 (= c!439153 ((_ is Nil!31328) lt!960773))))

(assert (=> d!782932 (= (size!24174 lt!960773) lt!961548)))

(declare-fun b!2717393 () Bool)

(assert (=> b!2717393 (= e!1712657 0)))

(declare-fun b!2717394 () Bool)

(assert (=> b!2717394 (= e!1712657 (+ 1 (size!24174 (t!226246 lt!960773))))))

(assert (= (and d!782932 c!439153) b!2717393))

(assert (= (and d!782932 (not c!439153)) b!2717394))

(declare-fun m!3116295 () Bool)

(assert (=> b!2717394 m!3116295))

(assert (=> b!2715286 d!782932))

(assert (=> b!2715286 d!782148))

(assert (=> b!2715286 d!782238))

(declare-fun d!782934 () Bool)

(assert (=> d!782934 (= (list!11857 lt!960880) (list!11861 (c!438567 lt!960880)))))

(declare-fun bs!488235 () Bool)

(assert (= bs!488235 d!782934))

(declare-fun m!3116297 () Bool)

(assert (=> bs!488235 m!3116297))

(assert (=> b!2715530 d!782934))

(declare-fun d!782936 () Bool)

(declare-fun e!1712659 () Bool)

(assert (=> d!782936 e!1712659))

(declare-fun res!1141306 () Bool)

(assert (=> d!782936 (=> (not res!1141306) (not e!1712659))))

(declare-fun lt!961549 () List!31429)

(assert (=> d!782936 (= res!1141306 (= (content!4437 lt!961549) ((_ map or) (content!4437 (list!11857 acc!331)) (content!4437 (list!11857 (_1!18127 lt!960665))))))))

(declare-fun e!1712658 () List!31429)

(assert (=> d!782936 (= lt!961549 e!1712658)))

(declare-fun c!439154 () Bool)

(assert (=> d!782936 (= c!439154 ((_ is Nil!31329) (list!11857 acc!331)))))

(assert (=> d!782936 (= (++!7770 (list!11857 acc!331) (list!11857 (_1!18127 lt!960665))) lt!961549)))

(declare-fun b!2717398 () Bool)

(assert (=> b!2717398 (= e!1712659 (or (not (= (list!11857 (_1!18127 lt!960665)) Nil!31329)) (= lt!961549 (list!11857 acc!331))))))

(declare-fun b!2717395 () Bool)

(assert (=> b!2717395 (= e!1712658 (list!11857 (_1!18127 lt!960665)))))

(declare-fun b!2717396 () Bool)

(assert (=> b!2717396 (= e!1712658 (Cons!31329 (h!36749 (list!11857 acc!331)) (++!7770 (t!226247 (list!11857 acc!331)) (list!11857 (_1!18127 lt!960665)))))))

(declare-fun b!2717397 () Bool)

(declare-fun res!1141307 () Bool)

(assert (=> b!2717397 (=> (not res!1141307) (not e!1712659))))

(assert (=> b!2717397 (= res!1141307 (= (size!24173 lt!961549) (+ (size!24173 (list!11857 acc!331)) (size!24173 (list!11857 (_1!18127 lt!960665))))))))

(assert (= (and d!782936 c!439154) b!2717395))

(assert (= (and d!782936 (not c!439154)) b!2717396))

(assert (= (and d!782936 res!1141306) b!2717397))

(assert (= (and b!2717397 res!1141307) b!2717398))

(declare-fun m!3116299 () Bool)

(assert (=> d!782936 m!3116299))

(assert (=> d!782936 m!3112341))

(assert (=> d!782936 m!3115093))

(assert (=> d!782936 m!3113213))

(declare-fun m!3116301 () Bool)

(assert (=> d!782936 m!3116301))

(assert (=> b!2717396 m!3113213))

(declare-fun m!3116303 () Bool)

(assert (=> b!2717396 m!3116303))

(declare-fun m!3116305 () Bool)

(assert (=> b!2717397 m!3116305))

(assert (=> b!2717397 m!3112341))

(assert (=> b!2717397 m!3115099))

(assert (=> b!2717397 m!3113213))

(declare-fun m!3116307 () Bool)

(assert (=> b!2717397 m!3116307))

(assert (=> b!2715530 d!782936))

(assert (=> b!2715530 d!781812))

(declare-fun d!782938 () Bool)

(assert (=> d!782938 (= (list!11857 (_1!18127 lt!960665)) (list!11861 (c!438567 (_1!18127 lt!960665))))))

(declare-fun bs!488236 () Bool)

(assert (= bs!488236 d!782938))

(assert (=> bs!488236 m!3113773))

(assert (=> b!2715530 d!782938))

(declare-fun d!782940 () Bool)

(declare-fun lt!961550 () Bool)

(assert (=> d!782940 (= lt!961550 (isEmpty!17862 (list!11857 (_1!18127 lt!960742))))))

(assert (=> d!782940 (= lt!961550 (isEmpty!17866 (c!438567 (_1!18127 lt!960742))))))

(assert (=> d!782940 (= (isEmpty!17860 (_1!18127 lt!960742)) lt!961550)))

(declare-fun bs!488237 () Bool)

(assert (= bs!488237 d!782940))

(assert (=> bs!488237 m!3112607))

(assert (=> bs!488237 m!3112607))

(declare-fun m!3116309 () Bool)

(assert (=> bs!488237 m!3116309))

(declare-fun m!3116311 () Bool)

(assert (=> bs!488237 m!3116311))

(assert (=> b!2715175 d!782940))

(declare-fun d!782942 () Bool)

(assert (=> d!782942 (= (inv!42508 (tag!5295 (h!36750 (t!226248 rules!1182)))) (= (mod (str.len (value!154155 (tag!5295 (h!36750 (t!226248 rules!1182))))) 2) 0))))

(assert (=> b!2715580 d!782942))

(declare-fun d!782944 () Bool)

(declare-fun res!1141308 () Bool)

(declare-fun e!1712660 () Bool)

(assert (=> d!782944 (=> (not res!1141308) (not e!1712660))))

(assert (=> d!782944 (= res!1141308 (semiInverseModEq!1975 (toChars!6620 (transformation!4791 (h!36750 (t!226248 rules!1182)))) (toValue!6761 (transformation!4791 (h!36750 (t!226248 rules!1182))))))))

(assert (=> d!782944 (= (inv!42518 (transformation!4791 (h!36750 (t!226248 rules!1182)))) e!1712660)))

(declare-fun b!2717399 () Bool)

(assert (=> b!2717399 (= e!1712660 (equivClasses!1876 (toChars!6620 (transformation!4791 (h!36750 (t!226248 rules!1182)))) (toValue!6761 (transformation!4791 (h!36750 (t!226248 rules!1182))))))))

(assert (= (and d!782944 res!1141308) b!2717399))

(declare-fun m!3116313 () Bool)

(assert (=> d!782944 m!3116313))

(declare-fun m!3116315 () Bool)

(assert (=> b!2717399 m!3116315))

(assert (=> b!2715580 d!782944))

(declare-fun d!782946 () Bool)

(declare-fun e!1712664 () Bool)

(assert (=> d!782946 e!1712664))

(declare-fun res!1141310 () Bool)

(assert (=> d!782946 (=> (not res!1141310) (not e!1712664))))

(declare-fun lt!961552 () Option!6183)

(assert (=> d!782946 (= res!1141310 (= (isDefined!4893 lt!961552) (isDefined!4894 (maxPrefixZipper!470 thiss!11556 (t!226248 rules!1182) (list!11856 lt!960675)))))))

(declare-fun e!1712662 () Option!6183)

(assert (=> d!782946 (= lt!961552 e!1712662)))

(declare-fun c!439155 () Bool)

(assert (=> d!782946 (= c!439155 (and ((_ is Cons!31330) (t!226248 rules!1182)) ((_ is Nil!31330) (t!226248 (t!226248 rules!1182)))))))

(declare-fun lt!961557 () Unit!45356)

(declare-fun lt!961556 () Unit!45356)

(assert (=> d!782946 (= lt!961557 lt!961556)))

(declare-fun lt!961553 () List!31428)

(declare-fun lt!961554 () List!31428)

(assert (=> d!782946 (isPrefix!2483 lt!961553 lt!961554)))

(assert (=> d!782946 (= lt!961556 (lemmaIsPrefixRefl!1609 lt!961553 lt!961554))))

(assert (=> d!782946 (= lt!961554 (list!11856 lt!960675))))

(assert (=> d!782946 (= lt!961553 (list!11856 lt!960675))))

(assert (=> d!782946 (rulesValidInductive!1667 thiss!11556 (t!226248 rules!1182))))

(assert (=> d!782946 (= (maxPrefixZipperSequence!1035 thiss!11556 (t!226248 rules!1182) lt!960675) lt!961552)))

(declare-fun b!2717400 () Bool)

(declare-fun call!175363 () Option!6183)

(assert (=> b!2717400 (= e!1712662 call!175363)))

(declare-fun e!1712666 () Bool)

(declare-fun b!2717401 () Bool)

(assert (=> b!2717401 (= e!1712666 (= (list!11856 (_2!18128 (get!9776 lt!961552))) (_2!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 (t!226248 rules!1182) (list!11856 lt!960675))))))))

(declare-fun b!2717402 () Bool)

(declare-fun e!1712661 () Bool)

(declare-fun e!1712663 () Bool)

(assert (=> b!2717402 (= e!1712661 e!1712663)))

(declare-fun res!1141313 () Bool)

(assert (=> b!2717402 (=> (not res!1141313) (not e!1712663))))

(assert (=> b!2717402 (= res!1141313 (= (_1!18128 (get!9776 lt!961552)) (_1!18131 (get!9777 (maxPrefix!2366 thiss!11556 (t!226248 rules!1182) (list!11856 lt!960675))))))))

(declare-fun b!2717403 () Bool)

(assert (=> b!2717403 (= e!1712664 e!1712661)))

(declare-fun res!1141309 () Bool)

(assert (=> b!2717403 (=> res!1141309 e!1712661)))

(assert (=> b!2717403 (= res!1141309 (not (isDefined!4893 lt!961552)))))

(declare-fun b!2717404 () Bool)

(declare-fun e!1712665 () Bool)

(assert (=> b!2717404 (= e!1712665 e!1712666)))

(declare-fun res!1141314 () Bool)

(assert (=> b!2717404 (=> (not res!1141314) (not e!1712666))))

(assert (=> b!2717404 (= res!1141314 (= (_1!18128 (get!9776 lt!961552)) (_1!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 (t!226248 rules!1182) (list!11856 lt!960675))))))))

(declare-fun b!2717405 () Bool)

(declare-fun res!1141311 () Bool)

(assert (=> b!2717405 (=> (not res!1141311) (not e!1712664))))

(assert (=> b!2717405 (= res!1141311 e!1712665)))

(declare-fun res!1141312 () Bool)

(assert (=> b!2717405 (=> res!1141312 e!1712665)))

(assert (=> b!2717405 (= res!1141312 (not (isDefined!4893 lt!961552)))))

(declare-fun b!2717406 () Bool)

(declare-fun lt!961551 () Option!6183)

(declare-fun lt!961555 () Option!6183)

(assert (=> b!2717406 (= e!1712662 (ite (and ((_ is None!6182) lt!961551) ((_ is None!6182) lt!961555)) None!6182 (ite ((_ is None!6182) lt!961555) lt!961551 (ite ((_ is None!6182) lt!961551) lt!961555 (ite (>= (size!24166 (_1!18128 (v!33014 lt!961551))) (size!24166 (_1!18128 (v!33014 lt!961555)))) lt!961551 lt!961555)))))))

(assert (=> b!2717406 (= lt!961551 call!175363)))

(assert (=> b!2717406 (= lt!961555 (maxPrefixZipperSequence!1035 thiss!11556 (t!226248 (t!226248 rules!1182)) lt!960675))))

(declare-fun bm!175358 () Bool)

(assert (=> bm!175358 (= call!175363 (maxPrefixOneRuleZipperSequence!479 thiss!11556 (h!36750 (t!226248 rules!1182)) lt!960675))))

(declare-fun b!2717407 () Bool)

(assert (=> b!2717407 (= e!1712663 (= (list!11856 (_2!18128 (get!9776 lt!961552))) (_2!18131 (get!9777 (maxPrefix!2366 thiss!11556 (t!226248 rules!1182) (list!11856 lt!960675))))))))

(assert (= (and d!782946 c!439155) b!2717400))

(assert (= (and d!782946 (not c!439155)) b!2717406))

(assert (= (or b!2717400 b!2717406) bm!175358))

(assert (= (and d!782946 res!1141310) b!2717405))

(assert (= (and b!2717405 (not res!1141312)) b!2717404))

(assert (= (and b!2717404 res!1141314) b!2717401))

(assert (= (and b!2717405 res!1141311) b!2717403))

(assert (= (and b!2717403 (not res!1141309)) b!2717402))

(assert (= (and b!2717402 res!1141313) b!2717407))

(assert (=> b!2717401 m!3114171))

(declare-fun m!3116317 () Bool)

(assert (=> b!2717401 m!3116317))

(declare-fun m!3116319 () Bool)

(assert (=> b!2717401 m!3116319))

(assert (=> b!2717401 m!3112299))

(assert (=> b!2717401 m!3112299))

(assert (=> b!2717401 m!3114171))

(declare-fun m!3116321 () Bool)

(assert (=> b!2717401 m!3116321))

(declare-fun m!3116323 () Bool)

(assert (=> b!2717405 m!3116323))

(assert (=> b!2717404 m!3116321))

(assert (=> b!2717404 m!3112299))

(assert (=> b!2717404 m!3112299))

(assert (=> b!2717404 m!3114171))

(assert (=> b!2717404 m!3114171))

(assert (=> b!2717404 m!3116317))

(declare-fun m!3116325 () Bool)

(assert (=> bm!175358 m!3116325))

(declare-fun m!3116327 () Bool)

(assert (=> b!2717406 m!3116327))

(assert (=> d!782946 m!3116323))

(assert (=> d!782946 m!3114171))

(declare-fun m!3116329 () Bool)

(assert (=> d!782946 m!3116329))

(declare-fun m!3116331 () Bool)

(assert (=> d!782946 m!3116331))

(assert (=> d!782946 m!3114163))

(assert (=> d!782946 m!3112299))

(assert (=> d!782946 m!3112299))

(assert (=> d!782946 m!3114171))

(declare-fun m!3116333 () Bool)

(assert (=> d!782946 m!3116333))

(assert (=> b!2717407 m!3114619))

(declare-fun m!3116335 () Bool)

(assert (=> b!2717407 m!3116335))

(assert (=> b!2717407 m!3116319))

(assert (=> b!2717407 m!3112299))

(assert (=> b!2717407 m!3112299))

(assert (=> b!2717407 m!3114619))

(assert (=> b!2717407 m!3116321))

(assert (=> b!2717403 m!3116323))

(assert (=> b!2717402 m!3116321))

(assert (=> b!2717402 m!3112299))

(assert (=> b!2717402 m!3112299))

(assert (=> b!2717402 m!3114619))

(assert (=> b!2717402 m!3114619))

(assert (=> b!2717402 m!3116335))

(assert (=> b!2715509 d!782946))

(assert (=> b!2715245 d!782800))

(assert (=> b!2715245 d!782502))

(declare-fun d!782948 () Bool)

(declare-fun e!1712670 () Bool)

(assert (=> d!782948 e!1712670))

(declare-fun res!1141316 () Bool)

(assert (=> d!782948 (=> (not res!1141316) (not e!1712670))))

(declare-fun lt!961559 () Option!6183)

(assert (=> d!782948 (= res!1141316 (= (isDefined!4893 lt!961559) (isDefined!4894 (maxPrefixZipper!470 thiss!11556 (t!226248 rules!1182) (list!11856 input!603)))))))

(declare-fun e!1712668 () Option!6183)

(assert (=> d!782948 (= lt!961559 e!1712668)))

(declare-fun c!439156 () Bool)

(assert (=> d!782948 (= c!439156 (and ((_ is Cons!31330) (t!226248 rules!1182)) ((_ is Nil!31330) (t!226248 (t!226248 rules!1182)))))))

(declare-fun lt!961564 () Unit!45356)

(declare-fun lt!961563 () Unit!45356)

(assert (=> d!782948 (= lt!961564 lt!961563)))

(declare-fun lt!961560 () List!31428)

(declare-fun lt!961561 () List!31428)

(assert (=> d!782948 (isPrefix!2483 lt!961560 lt!961561)))

(assert (=> d!782948 (= lt!961563 (lemmaIsPrefixRefl!1609 lt!961560 lt!961561))))

(assert (=> d!782948 (= lt!961561 (list!11856 input!603))))

(assert (=> d!782948 (= lt!961560 (list!11856 input!603))))

(assert (=> d!782948 (rulesValidInductive!1667 thiss!11556 (t!226248 rules!1182))))

(assert (=> d!782948 (= (maxPrefixZipperSequence!1035 thiss!11556 (t!226248 rules!1182) input!603) lt!961559)))

(declare-fun b!2717408 () Bool)

(declare-fun call!175364 () Option!6183)

(assert (=> b!2717408 (= e!1712668 call!175364)))

(declare-fun b!2717409 () Bool)

(declare-fun e!1712672 () Bool)

(assert (=> b!2717409 (= e!1712672 (= (list!11856 (_2!18128 (get!9776 lt!961559))) (_2!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 (t!226248 rules!1182) (list!11856 input!603))))))))

(declare-fun b!2717410 () Bool)

(declare-fun e!1712667 () Bool)

(declare-fun e!1712669 () Bool)

(assert (=> b!2717410 (= e!1712667 e!1712669)))

(declare-fun res!1141319 () Bool)

(assert (=> b!2717410 (=> (not res!1141319) (not e!1712669))))

(assert (=> b!2717410 (= res!1141319 (= (_1!18128 (get!9776 lt!961559)) (_1!18131 (get!9777 (maxPrefix!2366 thiss!11556 (t!226248 rules!1182) (list!11856 input!603))))))))

(declare-fun b!2717411 () Bool)

(assert (=> b!2717411 (= e!1712670 e!1712667)))

(declare-fun res!1141315 () Bool)

(assert (=> b!2717411 (=> res!1141315 e!1712667)))

(assert (=> b!2717411 (= res!1141315 (not (isDefined!4893 lt!961559)))))

(declare-fun b!2717412 () Bool)

(declare-fun e!1712671 () Bool)

(assert (=> b!2717412 (= e!1712671 e!1712672)))

(declare-fun res!1141320 () Bool)

(assert (=> b!2717412 (=> (not res!1141320) (not e!1712672))))

(assert (=> b!2717412 (= res!1141320 (= (_1!18128 (get!9776 lt!961559)) (_1!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 (t!226248 rules!1182) (list!11856 input!603))))))))

(declare-fun b!2717413 () Bool)

(declare-fun res!1141317 () Bool)

(assert (=> b!2717413 (=> (not res!1141317) (not e!1712670))))

(assert (=> b!2717413 (= res!1141317 e!1712671)))

(declare-fun res!1141318 () Bool)

(assert (=> b!2717413 (=> res!1141318 e!1712671)))

(assert (=> b!2717413 (= res!1141318 (not (isDefined!4893 lt!961559)))))

(declare-fun b!2717414 () Bool)

(declare-fun lt!961558 () Option!6183)

(declare-fun lt!961562 () Option!6183)

(assert (=> b!2717414 (= e!1712668 (ite (and ((_ is None!6182) lt!961558) ((_ is None!6182) lt!961562)) None!6182 (ite ((_ is None!6182) lt!961562) lt!961558 (ite ((_ is None!6182) lt!961558) lt!961562 (ite (>= (size!24166 (_1!18128 (v!33014 lt!961558))) (size!24166 (_1!18128 (v!33014 lt!961562)))) lt!961558 lt!961562)))))))

(assert (=> b!2717414 (= lt!961558 call!175364)))

(assert (=> b!2717414 (= lt!961562 (maxPrefixZipperSequence!1035 thiss!11556 (t!226248 (t!226248 rules!1182)) input!603))))

(declare-fun bm!175359 () Bool)

(assert (=> bm!175359 (= call!175364 (maxPrefixOneRuleZipperSequence!479 thiss!11556 (h!36750 (t!226248 rules!1182)) input!603))))

(declare-fun b!2717415 () Bool)

(assert (=> b!2717415 (= e!1712669 (= (list!11856 (_2!18128 (get!9776 lt!961559))) (_2!18131 (get!9777 (maxPrefix!2366 thiss!11556 (t!226248 rules!1182) (list!11856 input!603))))))))

(assert (= (and d!782948 c!439156) b!2717408))

(assert (= (and d!782948 (not c!439156)) b!2717414))

(assert (= (or b!2717408 b!2717414) bm!175359))

(assert (= (and d!782948 res!1141316) b!2717413))

(assert (= (and b!2717413 (not res!1141318)) b!2717412))

(assert (= (and b!2717412 res!1141320) b!2717409))

(assert (= (and b!2717413 res!1141317) b!2717411))

(assert (= (and b!2717411 (not res!1141315)) b!2717410))

(assert (= (and b!2717410 res!1141319) b!2717415))

(assert (=> b!2717409 m!3113667))

(declare-fun m!3116337 () Bool)

(assert (=> b!2717409 m!3116337))

(declare-fun m!3116339 () Bool)

(assert (=> b!2717409 m!3116339))

(assert (=> b!2717409 m!3112377))

(assert (=> b!2717409 m!3112377))

(assert (=> b!2717409 m!3113667))

(declare-fun m!3116341 () Bool)

(assert (=> b!2717409 m!3116341))

(declare-fun m!3116343 () Bool)

(assert (=> b!2717413 m!3116343))

(assert (=> b!2717412 m!3116341))

(assert (=> b!2717412 m!3112377))

(assert (=> b!2717412 m!3112377))

(assert (=> b!2717412 m!3113667))

(assert (=> b!2717412 m!3113667))

(assert (=> b!2717412 m!3116337))

(declare-fun m!3116345 () Bool)

(assert (=> bm!175359 m!3116345))

(declare-fun m!3116347 () Bool)

(assert (=> b!2717414 m!3116347))

(assert (=> d!782948 m!3116343))

(assert (=> d!782948 m!3113667))

(declare-fun m!3116349 () Bool)

(assert (=> d!782948 m!3116349))

(declare-fun m!3116351 () Bool)

(assert (=> d!782948 m!3116351))

(assert (=> d!782948 m!3114163))

(assert (=> d!782948 m!3112377))

(assert (=> d!782948 m!3112377))

(assert (=> d!782948 m!3113667))

(declare-fun m!3116353 () Bool)

(assert (=> d!782948 m!3116353))

(assert (=> b!2717415 m!3114647))

(declare-fun m!3116355 () Bool)

(assert (=> b!2717415 m!3116355))

(assert (=> b!2717415 m!3116339))

(assert (=> b!2717415 m!3112377))

(assert (=> b!2717415 m!3112377))

(assert (=> b!2717415 m!3114647))

(assert (=> b!2717415 m!3116341))

(assert (=> b!2717411 m!3116343))

(assert (=> b!2717410 m!3116341))

(assert (=> b!2717410 m!3112377))

(assert (=> b!2717410 m!3112377))

(assert (=> b!2717410 m!3114647))

(assert (=> b!2717410 m!3114647))

(assert (=> b!2717410 m!3116355))

(assert (=> b!2715555 d!782948))

(declare-fun d!782950 () Bool)

(declare-fun lt!961565 () Int)

(assert (=> d!782950 (= lt!961565 (size!24173 (list!11857 (_1!18127 lt!960763))))))

(assert (=> d!782950 (= lt!961565 (size!24178 (c!438567 (_1!18127 lt!960763))))))

(assert (=> d!782950 (= (size!24170 (_1!18127 lt!960763)) lt!961565)))

(declare-fun bs!488238 () Bool)

(assert (= bs!488238 d!782950))

(assert (=> bs!488238 m!3112721))

(assert (=> bs!488238 m!3112721))

(declare-fun m!3116357 () Bool)

(assert (=> bs!488238 m!3116357))

(declare-fun m!3116359 () Bool)

(assert (=> bs!488238 m!3116359))

(assert (=> d!781904 d!782950))

(declare-fun d!782952 () Bool)

(declare-fun e!1712694 () Bool)

(assert (=> d!782952 e!1712694))

(declare-fun res!1141340 () Bool)

(assert (=> d!782952 (=> (not res!1141340) (not e!1712694))))

(declare-fun lt!961567 () Option!6183)

(assert (=> d!782952 (= res!1141340 (= (isDefined!4893 lt!961567) (isDefined!4894 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960677)))))))))

(declare-fun e!1712692 () Option!6183)

(assert (=> d!782952 (= lt!961567 e!1712692)))

(declare-fun c!439157 () Bool)

(assert (=> d!782952 (= c!439157 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!961572 () Unit!45356)

(declare-fun lt!961571 () Unit!45356)

(assert (=> d!782952 (= lt!961572 lt!961571)))

(declare-fun lt!961568 () List!31428)

(declare-fun lt!961569 () List!31428)

(assert (=> d!782952 (isPrefix!2483 lt!961568 lt!961569)))

(assert (=> d!782952 (= lt!961571 (lemmaIsPrefixRefl!1609 lt!961568 lt!961569))))

(assert (=> d!782952 (= lt!961569 (list!11856 (_2!18128 (v!33014 lt!960677))))))

(assert (=> d!782952 (= lt!961568 (list!11856 (_2!18128 (v!33014 lt!960677))))))

(assert (=> d!782952 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!782952 (= (maxPrefixZipperSequence!1035 thiss!11556 rules!1182 (_2!18128 (v!33014 lt!960677))) lt!961567)))

(declare-fun b!2717434 () Bool)

(declare-fun call!175365 () Option!6183)

(assert (=> b!2717434 (= e!1712692 call!175365)))

(declare-fun e!1712696 () Bool)

(declare-fun b!2717435 () Bool)

(assert (=> b!2717435 (= e!1712696 (= (list!11856 (_2!18128 (get!9776 lt!961567))) (_2!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960677))))))))))

(declare-fun b!2717436 () Bool)

(declare-fun e!1712691 () Bool)

(declare-fun e!1712693 () Bool)

(assert (=> b!2717436 (= e!1712691 e!1712693)))

(declare-fun res!1141343 () Bool)

(assert (=> b!2717436 (=> (not res!1141343) (not e!1712693))))

(assert (=> b!2717436 (= res!1141343 (= (_1!18128 (get!9776 lt!961567)) (_1!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960677))))))))))

(declare-fun b!2717437 () Bool)

(assert (=> b!2717437 (= e!1712694 e!1712691)))

(declare-fun res!1141339 () Bool)

(assert (=> b!2717437 (=> res!1141339 e!1712691)))

(assert (=> b!2717437 (= res!1141339 (not (isDefined!4893 lt!961567)))))

(declare-fun b!2717438 () Bool)

(declare-fun e!1712695 () Bool)

(assert (=> b!2717438 (= e!1712695 e!1712696)))

(declare-fun res!1141344 () Bool)

(assert (=> b!2717438 (=> (not res!1141344) (not e!1712696))))

(assert (=> b!2717438 (= res!1141344 (= (_1!18128 (get!9776 lt!961567)) (_1!18131 (get!9777 (maxPrefixZipper!470 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960677))))))))))

(declare-fun b!2717439 () Bool)

(declare-fun res!1141341 () Bool)

(assert (=> b!2717439 (=> (not res!1141341) (not e!1712694))))

(assert (=> b!2717439 (= res!1141341 e!1712695)))

(declare-fun res!1141342 () Bool)

(assert (=> b!2717439 (=> res!1141342 e!1712695)))

(assert (=> b!2717439 (= res!1141342 (not (isDefined!4893 lt!961567)))))

(declare-fun b!2717440 () Bool)

(declare-fun lt!961566 () Option!6183)

(declare-fun lt!961570 () Option!6183)

(assert (=> b!2717440 (= e!1712692 (ite (and ((_ is None!6182) lt!961566) ((_ is None!6182) lt!961570)) None!6182 (ite ((_ is None!6182) lt!961570) lt!961566 (ite ((_ is None!6182) lt!961566) lt!961570 (ite (>= (size!24166 (_1!18128 (v!33014 lt!961566))) (size!24166 (_1!18128 (v!33014 lt!961570)))) lt!961566 lt!961570)))))))

(assert (=> b!2717440 (= lt!961566 call!175365)))

(assert (=> b!2717440 (= lt!961570 (maxPrefixZipperSequence!1035 thiss!11556 (t!226248 rules!1182) (_2!18128 (v!33014 lt!960677))))))

(declare-fun bm!175360 () Bool)

(assert (=> bm!175360 (= call!175365 (maxPrefixOneRuleZipperSequence!479 thiss!11556 (h!36750 rules!1182) (_2!18128 (v!33014 lt!960677))))))

(declare-fun b!2717441 () Bool)

(assert (=> b!2717441 (= e!1712693 (= (list!11856 (_2!18128 (get!9776 lt!961567))) (_2!18131 (get!9777 (maxPrefix!2366 thiss!11556 rules!1182 (list!11856 (_2!18128 (v!33014 lt!960677))))))))))

(assert (= (and d!782952 c!439157) b!2717434))

(assert (= (and d!782952 (not c!439157)) b!2717440))

(assert (= (or b!2717434 b!2717440) bm!175360))

(assert (= (and d!782952 res!1141340) b!2717439))

(assert (= (and b!2717439 (not res!1141342)) b!2717438))

(assert (= (and b!2717438 res!1141344) b!2717435))

(assert (= (and b!2717439 res!1141341) b!2717437))

(assert (= (and b!2717437 (not res!1141339)) b!2717436))

(assert (= (and b!2717436 res!1141343) b!2717441))

(declare-fun m!3116361 () Bool)

(assert (=> b!2717435 m!3116361))

(declare-fun m!3116363 () Bool)

(assert (=> b!2717435 m!3116363))

(declare-fun m!3116365 () Bool)

(assert (=> b!2717435 m!3116365))

(assert (=> b!2717435 m!3112723))

(assert (=> b!2717435 m!3112723))

(assert (=> b!2717435 m!3116361))

(declare-fun m!3116367 () Bool)

(assert (=> b!2717435 m!3116367))

(declare-fun m!3116369 () Bool)

(assert (=> b!2717439 m!3116369))

(assert (=> b!2717438 m!3116367))

(assert (=> b!2717438 m!3112723))

(assert (=> b!2717438 m!3112723))

(assert (=> b!2717438 m!3116361))

(assert (=> b!2717438 m!3116361))

(assert (=> b!2717438 m!3116363))

(declare-fun m!3116371 () Bool)

(assert (=> bm!175360 m!3116371))

(declare-fun m!3116373 () Bool)

(assert (=> b!2717440 m!3116373))

(assert (=> d!782952 m!3116369))

(assert (=> d!782952 m!3116361))

(declare-fun m!3116375 () Bool)

(assert (=> d!782952 m!3116375))

(declare-fun m!3116377 () Bool)

(assert (=> d!782952 m!3116377))

(assert (=> d!782952 m!3113171))

(assert (=> d!782952 m!3112723))

(assert (=> d!782952 m!3112723))

(assert (=> d!782952 m!3116361))

(declare-fun m!3116379 () Bool)

(assert (=> d!782952 m!3116379))

(assert (=> b!2717441 m!3114743))

(declare-fun m!3116381 () Bool)

(assert (=> b!2717441 m!3116381))

(assert (=> b!2717441 m!3116365))

(assert (=> b!2717441 m!3112723))

(assert (=> b!2717441 m!3112723))

(assert (=> b!2717441 m!3114743))

(assert (=> b!2717441 m!3116367))

(assert (=> b!2717437 m!3116369))

(assert (=> b!2717436 m!3116367))

(assert (=> b!2717436 m!3112723))

(assert (=> b!2717436 m!3112723))

(assert (=> b!2717436 m!3114743))

(assert (=> b!2717436 m!3114743))

(assert (=> b!2717436 m!3116381))

(assert (=> d!781904 d!782952))

(declare-fun d!782954 () Bool)

(declare-fun e!1712698 () Bool)

(assert (=> d!782954 e!1712698))

(declare-fun res!1141345 () Bool)

(assert (=> d!782954 (=> (not res!1141345) (not e!1712698))))

(declare-fun lt!961573 () List!31429)

(assert (=> d!782954 (= res!1141345 (= (content!4437 lt!961573) ((_ map or) (content!4437 (t!226247 (++!7770 lt!960666 lt!960676))) (content!4437 lt!960688))))))

(declare-fun e!1712697 () List!31429)

(assert (=> d!782954 (= lt!961573 e!1712697)))

(declare-fun c!439158 () Bool)

(assert (=> d!782954 (= c!439158 ((_ is Nil!31329) (t!226247 (++!7770 lt!960666 lt!960676))))))

(assert (=> d!782954 (= (++!7770 (t!226247 (++!7770 lt!960666 lt!960676)) lt!960688) lt!961573)))

(declare-fun b!2717445 () Bool)

(assert (=> b!2717445 (= e!1712698 (or (not (= lt!960688 Nil!31329)) (= lt!961573 (t!226247 (++!7770 lt!960666 lt!960676)))))))

(declare-fun b!2717442 () Bool)

(assert (=> b!2717442 (= e!1712697 lt!960688)))

(declare-fun b!2717443 () Bool)

(assert (=> b!2717443 (= e!1712697 (Cons!31329 (h!36749 (t!226247 (++!7770 lt!960666 lt!960676))) (++!7770 (t!226247 (t!226247 (++!7770 lt!960666 lt!960676))) lt!960688)))))

(declare-fun b!2717444 () Bool)

(declare-fun res!1141346 () Bool)

(assert (=> b!2717444 (=> (not res!1141346) (not e!1712698))))

(assert (=> b!2717444 (= res!1141346 (= (size!24173 lt!961573) (+ (size!24173 (t!226247 (++!7770 lt!960666 lt!960676))) (size!24173 lt!960688))))))

(assert (= (and d!782954 c!439158) b!2717442))

(assert (= (and d!782954 (not c!439158)) b!2717443))

(assert (= (and d!782954 res!1141345) b!2717444))

(assert (= (and b!2717444 res!1141346) b!2717445))

(declare-fun m!3116383 () Bool)

(assert (=> d!782954 m!3116383))

(declare-fun m!3116385 () Bool)

(assert (=> d!782954 m!3116385))

(assert (=> d!782954 m!3112805))

(declare-fun m!3116387 () Bool)

(assert (=> b!2717443 m!3116387))

(declare-fun m!3116389 () Bool)

(assert (=> b!2717444 m!3116389))

(assert (=> b!2717444 m!3115933))

(assert (=> b!2717444 m!3112813))

(assert (=> b!2715289 d!782954))

(assert (=> b!2715045 d!781990))

(declare-fun d!782956 () Bool)

(declare-fun lt!961574 () Bool)

(assert (=> d!782956 (= lt!961574 (isEmpty!17862 (list!11857 (_1!18127 lt!960883))))))

(assert (=> d!782956 (= lt!961574 (isEmpty!17866 (c!438567 (_1!18127 lt!960883))))))

(assert (=> d!782956 (= (isEmpty!17860 (_1!18127 lt!960883)) lt!961574)))

(declare-fun bs!488239 () Bool)

(assert (= bs!488239 d!782956))

(assert (=> bs!488239 m!3113227))

(assert (=> bs!488239 m!3113227))

(declare-fun m!3116391 () Bool)

(assert (=> bs!488239 m!3116391))

(declare-fun m!3116393 () Bool)

(assert (=> bs!488239 m!3116393))

(assert (=> b!2715534 d!782956))

(declare-fun d!782958 () Bool)

(declare-fun c!439159 () Bool)

(assert (=> d!782958 (= c!439159 ((_ is Empty!9810) (c!438567 (++!7771 lt!960678 (_1!18127 lt!960670)))))))

(declare-fun e!1712699 () List!31429)

(assert (=> d!782958 (= (list!11861 (c!438567 (++!7771 lt!960678 (_1!18127 lt!960670)))) e!1712699)))

(declare-fun b!2717448 () Bool)

(declare-fun e!1712700 () List!31429)

(assert (=> b!2717448 (= e!1712700 (list!11862 (xs!12873 (c!438567 (++!7771 lt!960678 (_1!18127 lt!960670))))))))

(declare-fun b!2717447 () Bool)

(assert (=> b!2717447 (= e!1712699 e!1712700)))

(declare-fun c!439160 () Bool)

(assert (=> b!2717447 (= c!439160 ((_ is Leaf!14950) (c!438567 (++!7771 lt!960678 (_1!18127 lt!960670)))))))

(declare-fun b!2717446 () Bool)

(assert (=> b!2717446 (= e!1712699 Nil!31329)))

(declare-fun b!2717449 () Bool)

(assert (=> b!2717449 (= e!1712700 (++!7770 (list!11861 (left!24087 (c!438567 (++!7771 lt!960678 (_1!18127 lt!960670))))) (list!11861 (right!24417 (c!438567 (++!7771 lt!960678 (_1!18127 lt!960670)))))))))

(assert (= (and d!782958 c!439159) b!2717446))

(assert (= (and d!782958 (not c!439159)) b!2717447))

(assert (= (and b!2717447 c!439160) b!2717448))

(assert (= (and b!2717447 (not c!439160)) b!2717449))

(declare-fun m!3116395 () Bool)

(assert (=> b!2717448 m!3116395))

(declare-fun m!3116397 () Bool)

(assert (=> b!2717449 m!3116397))

(declare-fun m!3116399 () Bool)

(assert (=> b!2717449 m!3116399))

(assert (=> b!2717449 m!3116397))

(assert (=> b!2717449 m!3116399))

(declare-fun m!3116401 () Bool)

(assert (=> b!2717449 m!3116401))

(assert (=> d!781908 d!782958))

(declare-fun d!782960 () Bool)

(declare-fun lt!961575 () Bool)

(assert (=> d!782960 (= lt!961575 (isEmpty!17862 (list!11857 (_1!18127 lt!960777))))))

(assert (=> d!782960 (= lt!961575 (isEmpty!17866 (c!438567 (_1!18127 lt!960777))))))

(assert (=> d!782960 (= (isEmpty!17860 (_1!18127 lt!960777)) lt!961575)))

(declare-fun bs!488240 () Bool)

(assert (= bs!488240 d!782960))

(assert (=> bs!488240 m!3112821))

(assert (=> bs!488240 m!3112821))

(declare-fun m!3116403 () Bool)

(assert (=> bs!488240 m!3116403))

(declare-fun m!3116405 () Bool)

(assert (=> bs!488240 m!3116405))

(assert (=> b!2715295 d!782960))

(declare-fun d!782962 () Bool)

(declare-fun c!439161 () Bool)

(assert (=> d!782962 (= c!439161 ((_ is Nil!31329) lt!960774))))

(declare-fun e!1712710 () (InoxSet Token!9044))

(assert (=> d!782962 (= (content!4437 lt!960774) e!1712710)))

(declare-fun b!2717459 () Bool)

(assert (=> b!2717459 (= e!1712710 ((as const (Array Token!9044 Bool)) false))))

(declare-fun b!2717460 () Bool)

(assert (=> b!2717460 (= e!1712710 ((_ map or) (store ((as const (Array Token!9044 Bool)) false) (h!36749 lt!960774) true) (content!4437 (t!226247 lt!960774))))))

(assert (= (and d!782962 c!439161) b!2717459))

(assert (= (and d!782962 (not c!439161)) b!2717460))

(declare-fun m!3116407 () Bool)

(assert (=> b!2717460 m!3116407))

(declare-fun m!3116409 () Bool)

(assert (=> b!2717460 m!3116409))

(assert (=> d!781920 d!782962))

(declare-fun d!782964 () Bool)

(declare-fun c!439162 () Bool)

(assert (=> d!782964 (= c!439162 ((_ is Nil!31329) (++!7770 lt!960666 lt!960676)))))

(declare-fun e!1712711 () (InoxSet Token!9044))

(assert (=> d!782964 (= (content!4437 (++!7770 lt!960666 lt!960676)) e!1712711)))

(declare-fun b!2717461 () Bool)

(assert (=> b!2717461 (= e!1712711 ((as const (Array Token!9044 Bool)) false))))

(declare-fun b!2717462 () Bool)

(assert (=> b!2717462 (= e!1712711 ((_ map or) (store ((as const (Array Token!9044 Bool)) false) (h!36749 (++!7770 lt!960666 lt!960676)) true) (content!4437 (t!226247 (++!7770 lt!960666 lt!960676)))))))

(assert (= (and d!782964 c!439162) b!2717461))

(assert (= (and d!782964 (not c!439162)) b!2717462))

(declare-fun m!3116411 () Bool)

(assert (=> b!2717462 m!3116411))

(assert (=> b!2717462 m!3116385))

(assert (=> d!781920 d!782964))

(assert (=> d!781920 d!782906))

(declare-fun d!782966 () Bool)

(assert (=> d!782966 (= (list!11856 lt!960855) (list!11860 (c!438566 lt!960855)))))

(declare-fun bs!488241 () Bool)

(assert (= bs!488241 d!782966))

(declare-fun m!3116413 () Bool)

(assert (=> bs!488241 m!3116413))

(assert (=> b!2715486 d!782966))

(declare-fun b!2717464 () Bool)

(declare-fun e!1712712 () List!31428)

(assert (=> b!2717464 (= e!1712712 (Cons!31328 (h!36748 (list!11856 treated!9)) (++!7768 (t!226246 (list!11856 treated!9)) (list!11856 lt!960679))))))

(declare-fun b!2717465 () Bool)

(declare-fun res!1141356 () Bool)

(declare-fun e!1712713 () Bool)

(assert (=> b!2717465 (=> (not res!1141356) (not e!1712713))))

(declare-fun lt!961576 () List!31428)

(assert (=> b!2717465 (= res!1141356 (= (size!24174 lt!961576) (+ (size!24174 (list!11856 treated!9)) (size!24174 (list!11856 lt!960679)))))))

(declare-fun b!2717466 () Bool)

(assert (=> b!2717466 (= e!1712713 (or (not (= (list!11856 lt!960679) Nil!31328)) (= lt!961576 (list!11856 treated!9))))))

(declare-fun d!782968 () Bool)

(assert (=> d!782968 e!1712713))

(declare-fun res!1141357 () Bool)

(assert (=> d!782968 (=> (not res!1141357) (not e!1712713))))

(assert (=> d!782968 (= res!1141357 (= (content!4438 lt!961576) ((_ map or) (content!4438 (list!11856 treated!9)) (content!4438 (list!11856 lt!960679)))))))

(assert (=> d!782968 (= lt!961576 e!1712712)))

(declare-fun c!439163 () Bool)

(assert (=> d!782968 (= c!439163 ((_ is Nil!31328) (list!11856 treated!9)))))

(assert (=> d!782968 (= (++!7768 (list!11856 treated!9) (list!11856 lt!960679)) lt!961576)))

(declare-fun b!2717463 () Bool)

(assert (=> b!2717463 (= e!1712712 (list!11856 lt!960679))))

(assert (= (and d!782968 c!439163) b!2717463))

(assert (= (and d!782968 (not c!439163)) b!2717464))

(assert (= (and d!782968 res!1141357) b!2717465))

(assert (= (and b!2717465 res!1141356) b!2717466))

(assert (=> b!2717464 m!3112313))

(declare-fun m!3116421 () Bool)

(assert (=> b!2717464 m!3116421))

(declare-fun m!3116423 () Bool)

(assert (=> b!2717465 m!3116423))

(assert (=> b!2717465 m!3112379))

(assert (=> b!2717465 m!3114683))

(assert (=> b!2717465 m!3112313))

(declare-fun m!3116427 () Bool)

(assert (=> b!2717465 m!3116427))

(declare-fun m!3116429 () Bool)

(assert (=> d!782968 m!3116429))

(assert (=> d!782968 m!3112379))

(declare-fun m!3116431 () Bool)

(assert (=> d!782968 m!3116431))

(assert (=> d!782968 m!3112313))

(declare-fun m!3116433 () Bool)

(assert (=> d!782968 m!3116433))

(assert (=> b!2715486 d!782968))

(assert (=> b!2715486 d!782010))

(assert (=> b!2715486 d!781966))

(declare-fun d!782970 () Bool)

(declare-fun lt!961577 () Int)

(assert (=> d!782970 (>= lt!961577 0)))

(declare-fun e!1712714 () Int)

(assert (=> d!782970 (= lt!961577 e!1712714)))

(declare-fun c!439164 () Bool)

(assert (=> d!782970 (= c!439164 ((_ is Nil!31329) lt!960818))))

(assert (=> d!782970 (= (size!24173 lt!960818) lt!961577)))

(declare-fun b!2717467 () Bool)

(assert (=> b!2717467 (= e!1712714 0)))

(declare-fun b!2717468 () Bool)

(assert (=> b!2717468 (= e!1712714 (+ 1 (size!24173 (t!226247 lt!960818))))))

(assert (= (and d!782970 c!439164) b!2717467))

(assert (= (and d!782970 (not c!439164)) b!2717468))

(declare-fun m!3116443 () Bool)

(assert (=> b!2717468 m!3116443))

(assert (=> b!2715368 d!782970))

(assert (=> b!2715368 d!782222))

(declare-fun d!782972 () Bool)

(declare-fun lt!961578 () Int)

(assert (=> d!782972 (>= lt!961578 0)))

(declare-fun e!1712715 () Int)

(assert (=> d!782972 (= lt!961578 e!1712715)))

(declare-fun c!439165 () Bool)

(assert (=> d!782972 (= c!439165 ((_ is Nil!31329) lt!960676))))

(assert (=> d!782972 (= (size!24173 lt!960676) lt!961578)))

(declare-fun b!2717469 () Bool)

(assert (=> b!2717469 (= e!1712715 0)))

(declare-fun b!2717470 () Bool)

(assert (=> b!2717470 (= e!1712715 (+ 1 (size!24173 (t!226247 lt!960676))))))

(assert (= (and d!782972 c!439165) b!2717469))

(assert (= (and d!782972 (not c!439165)) b!2717470))

(assert (=> b!2717470 m!3114293))

(assert (=> b!2715368 d!782972))

(declare-fun d!782974 () Bool)

(declare-fun lt!961579 () Int)

(assert (=> d!782974 (>= lt!961579 0)))

(declare-fun e!1712716 () Int)

(assert (=> d!782974 (= lt!961579 e!1712716)))

(declare-fun c!439166 () Bool)

(assert (=> d!782974 (= c!439166 ((_ is Nil!31328) lt!960816))))

(assert (=> d!782974 (= (size!24174 lt!960816) lt!961579)))

(declare-fun b!2717471 () Bool)

(assert (=> b!2717471 (= e!1712716 0)))

(declare-fun b!2717472 () Bool)

(assert (=> b!2717472 (= e!1712716 (+ 1 (size!24174 (t!226246 lt!960816))))))

(assert (= (and d!782974 c!439166) b!2717471))

(assert (= (and d!782974 (not c!439166)) b!2717472))

(declare-fun m!3116451 () Bool)

(assert (=> b!2717472 m!3116451))

(assert (=> b!2715360 d!782974))

(assert (=> b!2715360 d!782582))

(assert (=> b!2715360 d!782238))

(declare-fun d!782976 () Bool)

(declare-fun lt!961580 () Int)

(assert (=> d!782976 (>= lt!961580 0)))

(declare-fun e!1712717 () Int)

(assert (=> d!782976 (= lt!961580 e!1712717)))

(declare-fun c!439167 () Bool)

(assert (=> d!782976 (= c!439167 ((_ is Nil!31329) lt!960843))))

(assert (=> d!782976 (= (size!24173 lt!960843) lt!961580)))

(declare-fun b!2717473 () Bool)

(assert (=> b!2717473 (= e!1712717 0)))

(declare-fun b!2717474 () Bool)

(assert (=> b!2717474 (= e!1712717 (+ 1 (size!24173 (t!226247 lt!960843))))))

(assert (= (and d!782976 c!439167) b!2717473))

(assert (= (and d!782976 (not c!439167)) b!2717474))

(declare-fun m!3116455 () Bool)

(assert (=> b!2717474 m!3116455))

(assert (=> b!2715461 d!782976))

(assert (=> b!2715461 d!782972))

(assert (=> b!2715461 d!782812))

(declare-fun b!2717475 () Bool)

(declare-fun res!1141359 () Bool)

(declare-fun e!1712718 () Bool)

(assert (=> b!2717475 (=> (not res!1141359) (not e!1712718))))

(assert (=> b!2717475 (= res!1141359 (not (isEmpty!17864 (left!24086 (c!438566 totalInput!328)))))))

(declare-fun b!2717476 () Bool)

(declare-fun res!1141358 () Bool)

(assert (=> b!2717476 (=> (not res!1141358) (not e!1712718))))

(assert (=> b!2717476 (= res!1141358 (<= (- (height!1452 (left!24086 (c!438566 totalInput!328))) (height!1452 (right!24416 (c!438566 totalInput!328)))) 1))))

(declare-fun b!2717477 () Bool)

(declare-fun res!1141360 () Bool)

(assert (=> b!2717477 (=> (not res!1141360) (not e!1712718))))

(assert (=> b!2717477 (= res!1141360 (isBalanced!2972 (right!24416 (c!438566 totalInput!328))))))

(declare-fun d!782978 () Bool)

(declare-fun res!1141361 () Bool)

(declare-fun e!1712719 () Bool)

(assert (=> d!782978 (=> res!1141361 e!1712719)))

(assert (=> d!782978 (= res!1141361 (not ((_ is Node!9809) (c!438566 totalInput!328))))))

(assert (=> d!782978 (= (isBalanced!2972 (c!438566 totalInput!328)) e!1712719)))

(declare-fun b!2717478 () Bool)

(assert (=> b!2717478 (= e!1712719 e!1712718)))

(declare-fun res!1141362 () Bool)

(assert (=> b!2717478 (=> (not res!1141362) (not e!1712718))))

(assert (=> b!2717478 (= res!1141362 (<= (- 1) (- (height!1452 (left!24086 (c!438566 totalInput!328))) (height!1452 (right!24416 (c!438566 totalInput!328))))))))

(declare-fun b!2717479 () Bool)

(declare-fun res!1141363 () Bool)

(assert (=> b!2717479 (=> (not res!1141363) (not e!1712718))))

(assert (=> b!2717479 (= res!1141363 (isBalanced!2972 (left!24086 (c!438566 totalInput!328))))))

(declare-fun b!2717480 () Bool)

(assert (=> b!2717480 (= e!1712718 (not (isEmpty!17864 (right!24416 (c!438566 totalInput!328)))))))

(assert (= (and d!782978 (not res!1141361)) b!2717478))

(assert (= (and b!2717478 res!1141362) b!2717476))

(assert (= (and b!2717476 res!1141358) b!2717479))

(assert (= (and b!2717479 res!1141363) b!2717477))

(assert (= (and b!2717477 res!1141360) b!2717475))

(assert (= (and b!2717475 res!1141359) b!2717480))

(declare-fun m!3116457 () Bool)

(assert (=> b!2717479 m!3116457))

(assert (=> b!2717478 m!3114359))

(assert (=> b!2717478 m!3114361))

(assert (=> b!2717476 m!3114359))

(assert (=> b!2717476 m!3114361))

(declare-fun m!3116459 () Bool)

(assert (=> b!2717480 m!3116459))

(declare-fun m!3116461 () Bool)

(assert (=> b!2717477 m!3116461))

(declare-fun m!3116463 () Bool)

(assert (=> b!2717475 m!3116463))

(assert (=> d!782018 d!782978))

(declare-fun d!782980 () Bool)

(declare-fun lt!961581 () Int)

(assert (=> d!782980 (>= lt!961581 0)))

(declare-fun e!1712723 () Int)

(assert (=> d!782980 (= lt!961581 e!1712723)))

(declare-fun c!439168 () Bool)

(assert (=> d!782980 (= c!439168 ((_ is Nil!31329) (_1!18129 lt!960813)))))

(assert (=> d!782980 (= (size!24173 (_1!18129 lt!960813)) lt!961581)))

(declare-fun b!2717488 () Bool)

(assert (=> b!2717488 (= e!1712723 0)))

(declare-fun b!2717489 () Bool)

(assert (=> b!2717489 (= e!1712723 (+ 1 (size!24173 (t!226247 (_1!18129 lt!960813)))))))

(assert (= (and d!782980 c!439168) b!2717488))

(assert (= (and d!782980 (not c!439168)) b!2717489))

(declare-fun m!3116465 () Bool)

(assert (=> b!2717489 m!3116465))

(assert (=> d!781924 d!782980))

(declare-fun b!2717493 () Bool)

(declare-fun res!1141369 () Bool)

(declare-fun e!1712727 () Bool)

(assert (=> b!2717493 (=> (not res!1141369) (not e!1712727))))

(declare-fun lt!961582 () Option!6185)

(assert (=> b!2717493 (= res!1141369 (< (size!24174 (_2!18131 (get!9777 lt!961582))) (size!24174 lt!960685)))))

(declare-fun b!2717494 () Bool)

(declare-fun e!1712728 () Bool)

(assert (=> b!2717494 (= e!1712728 e!1712727)))

(declare-fun res!1141370 () Bool)

(assert (=> b!2717494 (=> (not res!1141370) (not e!1712727))))

(assert (=> b!2717494 (= res!1141370 (isDefined!4894 lt!961582))))

(declare-fun b!2717495 () Bool)

(declare-fun e!1712725 () Option!6185)

(declare-fun call!175366 () Option!6185)

(assert (=> b!2717495 (= e!1712725 call!175366)))

(declare-fun b!2717496 () Bool)

(declare-fun lt!961583 () Option!6185)

(declare-fun lt!961584 () Option!6185)

(assert (=> b!2717496 (= e!1712725 (ite (and ((_ is None!6184) lt!961583) ((_ is None!6184) lt!961584)) None!6184 (ite ((_ is None!6184) lt!961584) lt!961583 (ite ((_ is None!6184) lt!961583) lt!961584 (ite (>= (size!24166 (_1!18131 (v!33020 lt!961583))) (size!24166 (_1!18131 (v!33020 lt!961584)))) lt!961583 lt!961584)))))))

(assert (=> b!2717496 (= lt!961583 call!175366)))

(assert (=> b!2717496 (= lt!961584 (maxPrefix!2366 thiss!11556 (t!226248 rules!1182) lt!960685))))

(declare-fun b!2717497 () Bool)

(declare-fun res!1141364 () Bool)

(assert (=> b!2717497 (=> (not res!1141364) (not e!1712727))))

(assert (=> b!2717497 (= res!1141364 (= (list!11856 (charsOf!3014 (_1!18131 (get!9777 lt!961582)))) (originalCharacters!5553 (_1!18131 (get!9777 lt!961582)))))))

(declare-fun b!2717499 () Bool)

(declare-fun res!1141367 () Bool)

(assert (=> b!2717499 (=> (not res!1141367) (not e!1712727))))

(assert (=> b!2717499 (= res!1141367 (matchR!3639 (regex!4791 (rule!7217 (_1!18131 (get!9777 lt!961582)))) (list!11856 (charsOf!3014 (_1!18131 (get!9777 lt!961582))))))))

(declare-fun bm!175361 () Bool)

(assert (=> bm!175361 (= call!175366 (maxPrefixOneRule!1497 thiss!11556 (h!36750 rules!1182) lt!960685))))

(declare-fun b!2717500 () Bool)

(declare-fun res!1141365 () Bool)

(assert (=> b!2717500 (=> (not res!1141365) (not e!1712727))))

(assert (=> b!2717500 (= res!1141365 (= (value!154156 (_1!18131 (get!9777 lt!961582))) (apply!7411 (transformation!4791 (rule!7217 (_1!18131 (get!9777 lt!961582)))) (seqFromList!3216 (originalCharacters!5553 (_1!18131 (get!9777 lt!961582)))))))))

(declare-fun b!2717501 () Bool)

(declare-fun res!1141368 () Bool)

(assert (=> b!2717501 (=> (not res!1141368) (not e!1712727))))

(assert (=> b!2717501 (= res!1141368 (= (++!7768 (list!11856 (charsOf!3014 (_1!18131 (get!9777 lt!961582)))) (_2!18131 (get!9777 lt!961582))) lt!960685))))

(declare-fun d!782982 () Bool)

(assert (=> d!782982 e!1712728))

(declare-fun res!1141366 () Bool)

(assert (=> d!782982 (=> res!1141366 e!1712728)))

(assert (=> d!782982 (= res!1141366 (isEmpty!17871 lt!961582))))

(assert (=> d!782982 (= lt!961582 e!1712725)))

(declare-fun c!439169 () Bool)

(assert (=> d!782982 (= c!439169 (and ((_ is Cons!31330) rules!1182) ((_ is Nil!31330) (t!226248 rules!1182))))))

(declare-fun lt!961586 () Unit!45356)

(declare-fun lt!961585 () Unit!45356)

(assert (=> d!782982 (= lt!961586 lt!961585)))

(assert (=> d!782982 (isPrefix!2483 lt!960685 lt!960685)))

(assert (=> d!782982 (= lt!961585 (lemmaIsPrefixRefl!1609 lt!960685 lt!960685))))

(assert (=> d!782982 (rulesValidInductive!1667 thiss!11556 rules!1182)))

(assert (=> d!782982 (= (maxPrefix!2366 thiss!11556 rules!1182 lt!960685) lt!961582)))

(declare-fun b!2717498 () Bool)

(assert (=> b!2717498 (= e!1712727 (contains!5953 rules!1182 (rule!7217 (_1!18131 (get!9777 lt!961582)))))))

(assert (= (and d!782982 c!439169) b!2717495))

(assert (= (and d!782982 (not c!439169)) b!2717496))

(assert (= (or b!2717495 b!2717496) bm!175361))

(assert (= (and d!782982 (not res!1141366)) b!2717494))

(assert (= (and b!2717494 res!1141370) b!2717497))

(assert (= (and b!2717497 res!1141364) b!2717493))

(assert (= (and b!2717493 res!1141369) b!2717501))

(assert (= (and b!2717501 res!1141368) b!2717500))

(assert (= (and b!2717500 res!1141365) b!2717499))

(assert (= (and b!2717499 res!1141367) b!2717498))

(declare-fun m!3116483 () Bool)

(assert (=> b!2717496 m!3116483))

(declare-fun m!3116485 () Bool)

(assert (=> bm!175361 m!3116485))

(declare-fun m!3116487 () Bool)

(assert (=> b!2717494 m!3116487))

(declare-fun m!3116489 () Bool)

(assert (=> b!2717500 m!3116489))

(declare-fun m!3116491 () Bool)

(assert (=> b!2717500 m!3116491))

(assert (=> b!2717500 m!3116491))

(declare-fun m!3116493 () Bool)

(assert (=> b!2717500 m!3116493))

(declare-fun m!3116495 () Bool)

(assert (=> d!782982 m!3116495))

(declare-fun m!3116497 () Bool)

(assert (=> d!782982 m!3116497))

(declare-fun m!3116499 () Bool)

(assert (=> d!782982 m!3116499))

(assert (=> d!782982 m!3113171))

(assert (=> b!2717499 m!3116489))

(declare-fun m!3116501 () Bool)

(assert (=> b!2717499 m!3116501))

(assert (=> b!2717499 m!3116501))

(declare-fun m!3116503 () Bool)

(assert (=> b!2717499 m!3116503))

(assert (=> b!2717499 m!3116503))

(declare-fun m!3116505 () Bool)

(assert (=> b!2717499 m!3116505))

(assert (=> b!2717497 m!3116489))

(assert (=> b!2717497 m!3116501))

(assert (=> b!2717497 m!3116501))

(assert (=> b!2717497 m!3116503))

(assert (=> b!2717501 m!3116489))

(assert (=> b!2717501 m!3116501))

(assert (=> b!2717501 m!3116501))

(assert (=> b!2717501 m!3116503))

(assert (=> b!2717501 m!3116503))

(declare-fun m!3116507 () Bool)

(assert (=> b!2717501 m!3116507))

(assert (=> b!2717493 m!3116489))

(declare-fun m!3116509 () Bool)

(assert (=> b!2717493 m!3116509))

(assert (=> b!2717493 m!3112921))

(assert (=> b!2717498 m!3116489))

(declare-fun m!3116511 () Bool)

(assert (=> b!2717498 m!3116511))

(assert (=> d!781924 d!782982))

(declare-fun tp!857648 () Bool)

(declare-fun e!1712748 () Bool)

(declare-fun tp!857651 () Bool)

(declare-fun b!2717520 () Bool)

(assert (=> b!2717520 (= e!1712748 (and (inv!42514 (left!24086 (left!24086 (c!438566 treated!9)))) tp!857648 (inv!42514 (right!24416 (left!24086 (c!438566 treated!9)))) tp!857651))))

(declare-fun b!2717522 () Bool)

(declare-fun e!1712749 () Bool)

(declare-fun tp!857652 () Bool)

(assert (=> b!2717522 (= e!1712749 tp!857652)))

(declare-fun b!2717521 () Bool)

(assert (=> b!2717521 (= e!1712748 (and (inv!42529 (xs!12872 (left!24086 (c!438566 treated!9)))) e!1712749))))

(assert (=> b!2715593 (= tp!857609 (and (inv!42514 (left!24086 (c!438566 treated!9))) e!1712748))))

(assert (= (and b!2715593 ((_ is Node!9809) (left!24086 (c!438566 treated!9)))) b!2717520))

(assert (= b!2717521 b!2717522))

(assert (= (and b!2715593 ((_ is Leaf!14949) (left!24086 (c!438566 treated!9)))) b!2717521))

(declare-fun m!3116513 () Bool)

(assert (=> b!2717520 m!3116513))

(declare-fun m!3116515 () Bool)

(assert (=> b!2717520 m!3116515))

(declare-fun m!3116517 () Bool)

(assert (=> b!2717521 m!3116517))

(assert (=> b!2715593 m!3113321))

(declare-fun e!1712750 () Bool)

(declare-fun tp!857655 () Bool)

(declare-fun tp!857656 () Bool)

(declare-fun b!2717523 () Bool)

(assert (=> b!2717523 (= e!1712750 (and (inv!42514 (left!24086 (right!24416 (c!438566 treated!9)))) tp!857655 (inv!42514 (right!24416 (right!24416 (c!438566 treated!9)))) tp!857656))))

(declare-fun b!2717525 () Bool)

(declare-fun e!1712751 () Bool)

(declare-fun tp!857657 () Bool)

(assert (=> b!2717525 (= e!1712751 tp!857657)))

(declare-fun b!2717524 () Bool)

(assert (=> b!2717524 (= e!1712750 (and (inv!42529 (xs!12872 (right!24416 (c!438566 treated!9)))) e!1712751))))

(assert (=> b!2715593 (= tp!857610 (and (inv!42514 (right!24416 (c!438566 treated!9))) e!1712750))))

(assert (= (and b!2715593 ((_ is Node!9809) (right!24416 (c!438566 treated!9)))) b!2717523))

(assert (= b!2717524 b!2717525))

(assert (= (and b!2715593 ((_ is Leaf!14949) (right!24416 (c!438566 treated!9)))) b!2717524))

(declare-fun m!3116519 () Bool)

(assert (=> b!2717523 m!3116519))

(declare-fun m!3116521 () Bool)

(assert (=> b!2717523 m!3116521))

(declare-fun m!3116523 () Bool)

(assert (=> b!2717524 m!3116523))

(assert (=> b!2715593 m!3113323))

(declare-fun b!2717526 () Bool)

(declare-fun e!1712752 () Bool)

(assert (=> b!2717526 (= e!1712752 tp_is_empty!13881)))

(declare-fun b!2717527 () Bool)

(declare-fun tp!857661 () Bool)

(declare-fun tp!857660 () Bool)

(assert (=> b!2717527 (= e!1712752 (and tp!857661 tp!857660))))

(declare-fun b!2717529 () Bool)

(declare-fun tp!857659 () Bool)

(declare-fun tp!857658 () Bool)

(assert (=> b!2717529 (= e!1712752 (and tp!857659 tp!857658))))

(declare-fun b!2717528 () Bool)

(declare-fun tp!857662 () Bool)

(assert (=> b!2717528 (= e!1712752 tp!857662)))

(assert (=> b!2715580 (= tp!857598 e!1712752)))

(assert (= (and b!2715580 ((_ is ElementMatch!7943) (regex!4791 (h!36750 (t!226248 rules!1182))))) b!2717526))

(assert (= (and b!2715580 ((_ is Concat!12957) (regex!4791 (h!36750 (t!226248 rules!1182))))) b!2717527))

(assert (= (and b!2715580 ((_ is Star!7943) (regex!4791 (h!36750 (t!226248 rules!1182))))) b!2717528))

(assert (= (and b!2715580 ((_ is Union!7943) (regex!4791 (h!36750 (t!226248 rules!1182))))) b!2717529))

(declare-fun b!2717538 () Bool)

(declare-fun e!1712761 () Bool)

(declare-fun tp!857670 () Bool)

(assert (=> b!2717538 (= e!1712761 (and tp_is_empty!13881 tp!857670))))

(assert (=> b!2715592 (= tp!857608 e!1712761)))

(assert (= (and b!2715592 ((_ is Cons!31328) (innerList!9869 (xs!12872 (c!438566 input!603))))) b!2717538))

(declare-fun b!2717539 () Bool)

(declare-fun e!1712762 () Bool)

(declare-fun tp!857671 () Bool)

(assert (=> b!2717539 (= e!1712762 (and tp_is_empty!13881 tp!857671))))

(assert (=> b!2715609 (= tp!857623 e!1712762)))

(assert (= (and b!2715609 ((_ is Cons!31328) (innerList!9869 (xs!12872 (c!438566 totalInput!328))))) b!2717539))

(declare-fun b!2717542 () Bool)

(declare-fun b_free!76557 () Bool)

(declare-fun b_next!77261 () Bool)

(assert (=> b!2717542 (= b_free!76557 (not b_next!77261))))

(declare-fun tp!857672 () Bool)

(declare-fun b_and!200309 () Bool)

(assert (=> b!2717542 (= tp!857672 b_and!200309)))

(declare-fun b_free!76559 () Bool)

(declare-fun b_next!77263 () Bool)

(assert (=> b!2717542 (= b_free!76559 (not b_next!77263))))

(declare-fun t!226282 () Bool)

(declare-fun tb!151841 () Bool)

(assert (=> (and b!2717542 (= (toChars!6620 (transformation!4791 (h!36750 (t!226248 (t!226248 rules!1182))))) (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664)))))) t!226282) tb!151841))

(declare-fun result!187592 () Bool)

(assert (= result!187592 result!187568))

(assert (=> d!781984 t!226282))

(declare-fun tp!857675 () Bool)

(declare-fun b_and!200311 () Bool)

(assert (=> b!2717542 (= tp!857675 (and (=> t!226282 result!187592) b_and!200311))))

(declare-fun e!1712766 () Bool)

(assert (=> b!2717542 (= e!1712766 (and tp!857672 tp!857675))))

(declare-fun b!2717541 () Bool)

(declare-fun e!1712764 () Bool)

(declare-fun tp!857674 () Bool)

(assert (=> b!2717541 (= e!1712764 (and tp!857674 (inv!42508 (tag!5295 (h!36750 (t!226248 (t!226248 rules!1182))))) (inv!42518 (transformation!4791 (h!36750 (t!226248 (t!226248 rules!1182))))) e!1712766))))

(declare-fun b!2717540 () Bool)

(declare-fun e!1712763 () Bool)

(declare-fun tp!857673 () Bool)

(assert (=> b!2717540 (= e!1712763 (and e!1712764 tp!857673))))

(assert (=> b!2715579 (= tp!857597 e!1712763)))

(assert (= b!2717541 b!2717542))

(assert (= b!2717540 b!2717541))

(assert (= (and b!2715579 ((_ is Cons!31330) (t!226248 (t!226248 rules!1182)))) b!2717540))

(declare-fun m!3116533 () Bool)

(assert (=> b!2717541 m!3116533))

(declare-fun m!3116535 () Bool)

(assert (=> b!2717541 m!3116535))

(declare-fun b!2717546 () Bool)

(declare-fun e!1712769 () Bool)

(declare-fun tp!857679 () Bool)

(declare-fun tp!857680 () Bool)

(assert (=> b!2717546 (= e!1712769 (and (inv!42514 (left!24086 (left!24086 (c!438566 input!603)))) tp!857679 (inv!42514 (right!24416 (left!24086 (c!438566 input!603)))) tp!857680))))

(declare-fun b!2717548 () Bool)

(declare-fun e!1712770 () Bool)

(declare-fun tp!857681 () Bool)

(assert (=> b!2717548 (= e!1712770 tp!857681)))

(declare-fun b!2717547 () Bool)

(assert (=> b!2717547 (= e!1712769 (and (inv!42529 (xs!12872 (left!24086 (c!438566 input!603)))) e!1712770))))

(assert (=> b!2715590 (= tp!857606 (and (inv!42514 (left!24086 (c!438566 input!603))) e!1712769))))

(assert (= (and b!2715590 ((_ is Node!9809) (left!24086 (c!438566 input!603)))) b!2717546))

(assert (= b!2717547 b!2717548))

(assert (= (and b!2715590 ((_ is Leaf!14949) (left!24086 (c!438566 input!603)))) b!2717547))

(declare-fun m!3116543 () Bool)

(assert (=> b!2717546 m!3116543))

(declare-fun m!3116545 () Bool)

(assert (=> b!2717546 m!3116545))

(declare-fun m!3116547 () Bool)

(assert (=> b!2717547 m!3116547))

(assert (=> b!2715590 m!3113315))

(declare-fun tp!857685 () Bool)

(declare-fun b!2717552 () Bool)

(declare-fun tp!857686 () Bool)

(declare-fun e!1712773 () Bool)

(assert (=> b!2717552 (= e!1712773 (and (inv!42514 (left!24086 (right!24416 (c!438566 input!603)))) tp!857685 (inv!42514 (right!24416 (right!24416 (c!438566 input!603)))) tp!857686))))

(declare-fun b!2717554 () Bool)

(declare-fun e!1712774 () Bool)

(declare-fun tp!857687 () Bool)

(assert (=> b!2717554 (= e!1712774 tp!857687)))

(declare-fun b!2717553 () Bool)

(assert (=> b!2717553 (= e!1712773 (and (inv!42529 (xs!12872 (right!24416 (c!438566 input!603)))) e!1712774))))

(assert (=> b!2715590 (= tp!857607 (and (inv!42514 (right!24416 (c!438566 input!603))) e!1712773))))

(assert (= (and b!2715590 ((_ is Node!9809) (right!24416 (c!438566 input!603)))) b!2717552))

(assert (= b!2717553 b!2717554))

(assert (= (and b!2715590 ((_ is Leaf!14949) (right!24416 (c!438566 input!603)))) b!2717553))

(declare-fun m!3116555 () Bool)

(assert (=> b!2717552 m!3116555))

(declare-fun m!3116557 () Bool)

(assert (=> b!2717552 m!3116557))

(declare-fun m!3116559 () Bool)

(assert (=> b!2717553 m!3116559))

(assert (=> b!2715590 m!3113317))

(declare-fun e!1712777 () Bool)

(declare-fun b!2717560 () Bool)

(declare-fun tp!857695 () Bool)

(declare-fun tp!857694 () Bool)

(assert (=> b!2717560 (= e!1712777 (and (inv!42514 (left!24086 (left!24086 (c!438566 totalInput!328)))) tp!857694 (inv!42514 (right!24416 (left!24086 (c!438566 totalInput!328)))) tp!857695))))

(declare-fun b!2717562 () Bool)

(declare-fun e!1712778 () Bool)

(declare-fun tp!857696 () Bool)

(assert (=> b!2717562 (= e!1712778 tp!857696)))

(declare-fun b!2717561 () Bool)

(assert (=> b!2717561 (= e!1712777 (and (inv!42529 (xs!12872 (left!24086 (c!438566 totalInput!328)))) e!1712778))))

(assert (=> b!2715607 (= tp!857621 (and (inv!42514 (left!24086 (c!438566 totalInput!328))) e!1712777))))

(assert (= (and b!2715607 ((_ is Node!9809) (left!24086 (c!438566 totalInput!328)))) b!2717560))

(assert (= b!2717561 b!2717562))

(assert (= (and b!2715607 ((_ is Leaf!14949) (left!24086 (c!438566 totalInput!328)))) b!2717561))

(declare-fun m!3116561 () Bool)

(assert (=> b!2717560 m!3116561))

(declare-fun m!3116563 () Bool)

(assert (=> b!2717560 m!3116563))

(declare-fun m!3116565 () Bool)

(assert (=> b!2717561 m!3116565))

(assert (=> b!2715607 m!3113333))

(declare-fun tp!857703 () Bool)

(declare-fun tp!857702 () Bool)

(declare-fun e!1712780 () Bool)

(declare-fun b!2717567 () Bool)

(assert (=> b!2717567 (= e!1712780 (and (inv!42514 (left!24086 (right!24416 (c!438566 totalInput!328)))) tp!857702 (inv!42514 (right!24416 (right!24416 (c!438566 totalInput!328)))) tp!857703))))

(declare-fun b!2717569 () Bool)

(declare-fun e!1712781 () Bool)

(declare-fun tp!857704 () Bool)

(assert (=> b!2717569 (= e!1712781 tp!857704)))

(declare-fun b!2717568 () Bool)

(assert (=> b!2717568 (= e!1712780 (and (inv!42529 (xs!12872 (right!24416 (c!438566 totalInput!328)))) e!1712781))))

(assert (=> b!2715607 (= tp!857622 (and (inv!42514 (right!24416 (c!438566 totalInput!328))) e!1712780))))

(assert (= (and b!2715607 ((_ is Node!9809) (right!24416 (c!438566 totalInput!328)))) b!2717567))

(assert (= b!2717568 b!2717569))

(assert (= (and b!2715607 ((_ is Leaf!14949) (right!24416 (c!438566 totalInput!328)))) b!2717568))

(declare-fun m!3116567 () Bool)

(assert (=> b!2717567 m!3116567))

(declare-fun m!3116569 () Bool)

(assert (=> b!2717567 m!3116569))

(declare-fun m!3116571 () Bool)

(assert (=> b!2717568 m!3116571))

(assert (=> b!2715607 m!3113335))

(declare-fun b!2717611 () Bool)

(declare-fun b_free!76561 () Bool)

(declare-fun b_next!77265 () Bool)

(assert (=> b!2717611 (= b_free!76561 (not b_next!77265))))

(declare-fun tp!857747 () Bool)

(declare-fun b_and!200313 () Bool)

(assert (=> b!2717611 (= tp!857747 b_and!200313)))

(declare-fun b_free!76563 () Bool)

(declare-fun b_next!77267 () Bool)

(assert (=> b!2717611 (= b_free!76563 (not b_next!77267))))

(declare-fun t!226284 () Bool)

(declare-fun tb!151843 () Bool)

(assert (=> (and b!2717611 (= (toChars!6620 (transformation!4791 (rule!7217 (h!36749 (innerList!9870 (xs!12873 (c!438567 acc!331))))))) (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664)))))) t!226284) tb!151843))

(declare-fun result!187596 () Bool)

(assert (= result!187596 result!187568))

(assert (=> d!781984 t!226284))

(declare-fun tp!857748 () Bool)

(declare-fun b_and!200315 () Bool)

(assert (=> b!2717611 (= tp!857748 (and (=> t!226284 result!187596) b_and!200315))))

(declare-fun b!2717609 () Bool)

(declare-fun tp!857750 () Bool)

(declare-fun e!1712811 () Bool)

(declare-fun e!1712808 () Bool)

(declare-fun inv!21 (TokenValue!5013) Bool)

(assert (=> b!2717609 (= e!1712808 (and (inv!21 (value!154156 (h!36749 (innerList!9870 (xs!12873 (c!438567 acc!331)))))) e!1712811 tp!857750))))

(declare-fun e!1712810 () Bool)

(assert (=> b!2717611 (= e!1712810 (and tp!857747 tp!857748))))

(declare-fun tp!857746 () Bool)

(declare-fun b!2717610 () Bool)

(assert (=> b!2717610 (= e!1712811 (and tp!857746 (inv!42508 (tag!5295 (rule!7217 (h!36749 (innerList!9870 (xs!12873 (c!438567 acc!331))))))) (inv!42518 (transformation!4791 (rule!7217 (h!36749 (innerList!9870 (xs!12873 (c!438567 acc!331))))))) e!1712810))))

(declare-fun tp!857749 () Bool)

(declare-fun e!1712813 () Bool)

(declare-fun b!2717608 () Bool)

(declare-fun inv!42531 (Token!9044) Bool)

(assert (=> b!2717608 (= e!1712813 (and (inv!42531 (h!36749 (innerList!9870 (xs!12873 (c!438567 acc!331))))) e!1712808 tp!857749))))

(assert (=> b!2715606 (= tp!857618 e!1712813)))

(assert (= b!2717610 b!2717611))

(assert (= b!2717609 b!2717610))

(assert (= b!2717608 b!2717609))

(assert (= (and b!2715606 ((_ is Cons!31329) (innerList!9870 (xs!12873 (c!438567 acc!331))))) b!2717608))

(declare-fun m!3116603 () Bool)

(assert (=> b!2717609 m!3116603))

(declare-fun m!3116605 () Bool)

(assert (=> b!2717610 m!3116605))

(declare-fun m!3116607 () Bool)

(assert (=> b!2717610 m!3116607))

(declare-fun m!3116609 () Bool)

(assert (=> b!2717608 m!3116609))

(declare-fun e!1712814 () Bool)

(declare-fun tp!857751 () Bool)

(declare-fun b!2717612 () Bool)

(declare-fun tp!857752 () Bool)

(assert (=> b!2717612 (= e!1712814 (and (inv!42514 (left!24086 (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664))))))) tp!857751 (inv!42514 (right!24416 (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664))))))) tp!857752))))

(declare-fun b!2717614 () Bool)

(declare-fun e!1712815 () Bool)

(declare-fun tp!857753 () Bool)

(assert (=> b!2717614 (= e!1712815 tp!857753)))

(declare-fun b!2717613 () Bool)

(assert (=> b!2717613 (= e!1712814 (and (inv!42529 (xs!12872 (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664))))))) e!1712815))))

(assert (=> b!2715474 (= tp!857572 (and (inv!42514 (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664)))))) e!1712814))))

(assert (= (and b!2715474 ((_ is Node!9809) (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664))))))) b!2717612))

(assert (= b!2717613 b!2717614))

(assert (= (and b!2715474 ((_ is Leaf!14949) (c!438566 (dynLambda!13494 (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))) (value!154156 (_1!18128 (v!33014 lt!960664))))))) b!2717613))

(declare-fun m!3116611 () Bool)

(assert (=> b!2717612 m!3116611))

(declare-fun m!3116613 () Bool)

(assert (=> b!2717612 m!3116613))

(declare-fun m!3116615 () Bool)

(assert (=> b!2717613 m!3116615))

(assert (=> b!2715474 m!3113127))

(declare-fun tp!857756 () Bool)

(declare-fun tp!857755 () Bool)

(declare-fun b!2717615 () Bool)

(declare-fun e!1712817 () Bool)

(assert (=> b!2717615 (= e!1712817 (and (inv!42515 (left!24087 (left!24087 (c!438567 acc!331)))) tp!857756 (inv!42515 (right!24417 (left!24087 (c!438567 acc!331)))) tp!857755))))

(declare-fun b!2717617 () Bool)

(declare-fun e!1712816 () Bool)

(declare-fun tp!857754 () Bool)

(assert (=> b!2717617 (= e!1712816 tp!857754)))

(declare-fun b!2717616 () Bool)

(assert (=> b!2717616 (= e!1712817 (and (inv!42530 (xs!12873 (left!24087 (c!438567 acc!331)))) e!1712816))))

(assert (=> b!2715604 (= tp!857620 (and (inv!42515 (left!24087 (c!438567 acc!331))) e!1712817))))

(assert (= (and b!2715604 ((_ is Node!9810) (left!24087 (c!438567 acc!331)))) b!2717615))

(assert (= b!2717616 b!2717617))

(assert (= (and b!2715604 ((_ is Leaf!14950) (left!24087 (c!438567 acc!331)))) b!2717616))

(declare-fun m!3116617 () Bool)

(assert (=> b!2717615 m!3116617))

(declare-fun m!3116619 () Bool)

(assert (=> b!2717615 m!3116619))

(declare-fun m!3116621 () Bool)

(assert (=> b!2717616 m!3116621))

(assert (=> b!2715604 m!3113327))

(declare-fun tp!857759 () Bool)

(declare-fun e!1712819 () Bool)

(declare-fun tp!857758 () Bool)

(declare-fun b!2717618 () Bool)

(assert (=> b!2717618 (= e!1712819 (and (inv!42515 (left!24087 (right!24417 (c!438567 acc!331)))) tp!857759 (inv!42515 (right!24417 (right!24417 (c!438567 acc!331)))) tp!857758))))

(declare-fun b!2717620 () Bool)

(declare-fun e!1712818 () Bool)

(declare-fun tp!857757 () Bool)

(assert (=> b!2717620 (= e!1712818 tp!857757)))

(declare-fun b!2717619 () Bool)

(assert (=> b!2717619 (= e!1712819 (and (inv!42530 (xs!12873 (right!24417 (c!438567 acc!331)))) e!1712818))))

(assert (=> b!2715604 (= tp!857619 (and (inv!42515 (right!24417 (c!438567 acc!331))) e!1712819))))

(assert (= (and b!2715604 ((_ is Node!9810) (right!24417 (c!438567 acc!331)))) b!2717618))

(assert (= b!2717619 b!2717620))

(assert (= (and b!2715604 ((_ is Leaf!14950) (right!24417 (c!438567 acc!331)))) b!2717619))

(declare-fun m!3116623 () Bool)

(assert (=> b!2717618 m!3116623))

(declare-fun m!3116625 () Bool)

(assert (=> b!2717618 m!3116625))

(declare-fun m!3116627 () Bool)

(assert (=> b!2717619 m!3116627))

(assert (=> b!2715604 m!3113329))

(declare-fun b!2717621 () Bool)

(declare-fun e!1712820 () Bool)

(assert (=> b!2717621 (= e!1712820 tp_is_empty!13881)))

(declare-fun b!2717622 () Bool)

(declare-fun tp!857763 () Bool)

(declare-fun tp!857762 () Bool)

(assert (=> b!2717622 (= e!1712820 (and tp!857763 tp!857762))))

(declare-fun b!2717624 () Bool)

(declare-fun tp!857761 () Bool)

(declare-fun tp!857760 () Bool)

(assert (=> b!2717624 (= e!1712820 (and tp!857761 tp!857760))))

(declare-fun b!2717623 () Bool)

(declare-fun tp!857764 () Bool)

(assert (=> b!2717623 (= e!1712820 tp!857764)))

(assert (=> b!2715570 (= tp!857584 e!1712820)))

(assert (= (and b!2715570 ((_ is ElementMatch!7943) (regOne!16399 (regex!4791 (h!36750 rules!1182))))) b!2717621))

(assert (= (and b!2715570 ((_ is Concat!12957) (regOne!16399 (regex!4791 (h!36750 rules!1182))))) b!2717622))

(assert (= (and b!2715570 ((_ is Star!7943) (regOne!16399 (regex!4791 (h!36750 rules!1182))))) b!2717623))

(assert (= (and b!2715570 ((_ is Union!7943) (regOne!16399 (regex!4791 (h!36750 rules!1182))))) b!2717624))

(declare-fun b!2717625 () Bool)

(declare-fun e!1712821 () Bool)

(assert (=> b!2717625 (= e!1712821 tp_is_empty!13881)))

(declare-fun b!2717626 () Bool)

(declare-fun tp!857768 () Bool)

(declare-fun tp!857767 () Bool)

(assert (=> b!2717626 (= e!1712821 (and tp!857768 tp!857767))))

(declare-fun b!2717628 () Bool)

(declare-fun tp!857766 () Bool)

(declare-fun tp!857765 () Bool)

(assert (=> b!2717628 (= e!1712821 (and tp!857766 tp!857765))))

(declare-fun b!2717627 () Bool)

(declare-fun tp!857769 () Bool)

(assert (=> b!2717627 (= e!1712821 tp!857769)))

(assert (=> b!2715570 (= tp!857583 e!1712821)))

(assert (= (and b!2715570 ((_ is ElementMatch!7943) (regTwo!16399 (regex!4791 (h!36750 rules!1182))))) b!2717625))

(assert (= (and b!2715570 ((_ is Concat!12957) (regTwo!16399 (regex!4791 (h!36750 rules!1182))))) b!2717626))

(assert (= (and b!2715570 ((_ is Star!7943) (regTwo!16399 (regex!4791 (h!36750 rules!1182))))) b!2717627))

(assert (= (and b!2715570 ((_ is Union!7943) (regTwo!16399 (regex!4791 (h!36750 rules!1182))))) b!2717628))

(declare-fun b!2717629 () Bool)

(declare-fun e!1712822 () Bool)

(assert (=> b!2717629 (= e!1712822 tp_is_empty!13881)))

(declare-fun b!2717630 () Bool)

(declare-fun tp!857773 () Bool)

(declare-fun tp!857772 () Bool)

(assert (=> b!2717630 (= e!1712822 (and tp!857773 tp!857772))))

(declare-fun b!2717632 () Bool)

(declare-fun tp!857771 () Bool)

(declare-fun tp!857770 () Bool)

(assert (=> b!2717632 (= e!1712822 (and tp!857771 tp!857770))))

(declare-fun b!2717631 () Bool)

(declare-fun tp!857774 () Bool)

(assert (=> b!2717631 (= e!1712822 tp!857774)))

(assert (=> b!2715569 (= tp!857587 e!1712822)))

(assert (= (and b!2715569 ((_ is ElementMatch!7943) (reg!8272 (regex!4791 (h!36750 rules!1182))))) b!2717629))

(assert (= (and b!2715569 ((_ is Concat!12957) (reg!8272 (regex!4791 (h!36750 rules!1182))))) b!2717630))

(assert (= (and b!2715569 ((_ is Star!7943) (reg!8272 (regex!4791 (h!36750 rules!1182))))) b!2717631))

(assert (= (and b!2715569 ((_ is Union!7943) (reg!8272 (regex!4791 (h!36750 rules!1182))))) b!2717632))

(declare-fun b!2717633 () Bool)

(declare-fun e!1712823 () Bool)

(declare-fun tp!857775 () Bool)

(assert (=> b!2717633 (= e!1712823 (and tp_is_empty!13881 tp!857775))))

(assert (=> b!2715595 (= tp!857611 e!1712823)))

(assert (= (and b!2715595 ((_ is Cons!31328) (innerList!9869 (xs!12872 (c!438566 treated!9))))) b!2717633))

(declare-fun b!2717634 () Bool)

(declare-fun e!1712824 () Bool)

(assert (=> b!2717634 (= e!1712824 tp_is_empty!13881)))

(declare-fun b!2717635 () Bool)

(declare-fun tp!857779 () Bool)

(declare-fun tp!857778 () Bool)

(assert (=> b!2717635 (= e!1712824 (and tp!857779 tp!857778))))

(declare-fun b!2717637 () Bool)

(declare-fun tp!857777 () Bool)

(declare-fun tp!857776 () Bool)

(assert (=> b!2717637 (= e!1712824 (and tp!857777 tp!857776))))

(declare-fun b!2717636 () Bool)

(declare-fun tp!857780 () Bool)

(assert (=> b!2717636 (= e!1712824 tp!857780)))

(assert (=> b!2715568 (= tp!857586 e!1712824)))

(assert (= (and b!2715568 ((_ is ElementMatch!7943) (regOne!16398 (regex!4791 (h!36750 rules!1182))))) b!2717634))

(assert (= (and b!2715568 ((_ is Concat!12957) (regOne!16398 (regex!4791 (h!36750 rules!1182))))) b!2717635))

(assert (= (and b!2715568 ((_ is Star!7943) (regOne!16398 (regex!4791 (h!36750 rules!1182))))) b!2717636))

(assert (= (and b!2715568 ((_ is Union!7943) (regOne!16398 (regex!4791 (h!36750 rules!1182))))) b!2717637))

(declare-fun b!2717638 () Bool)

(declare-fun e!1712825 () Bool)

(assert (=> b!2717638 (= e!1712825 tp_is_empty!13881)))

(declare-fun b!2717639 () Bool)

(declare-fun tp!857784 () Bool)

(declare-fun tp!857783 () Bool)

(assert (=> b!2717639 (= e!1712825 (and tp!857784 tp!857783))))

(declare-fun b!2717641 () Bool)

(declare-fun tp!857782 () Bool)

(declare-fun tp!857781 () Bool)

(assert (=> b!2717641 (= e!1712825 (and tp!857782 tp!857781))))

(declare-fun b!2717640 () Bool)

(declare-fun tp!857785 () Bool)

(assert (=> b!2717640 (= e!1712825 tp!857785)))

(assert (=> b!2715568 (= tp!857585 e!1712825)))

(assert (= (and b!2715568 ((_ is ElementMatch!7943) (regTwo!16398 (regex!4791 (h!36750 rules!1182))))) b!2717638))

(assert (= (and b!2715568 ((_ is Concat!12957) (regTwo!16398 (regex!4791 (h!36750 rules!1182))))) b!2717639))

(assert (= (and b!2715568 ((_ is Star!7943) (regTwo!16398 (regex!4791 (h!36750 rules!1182))))) b!2717640))

(assert (= (and b!2715568 ((_ is Union!7943) (regTwo!16398 (regex!4791 (h!36750 rules!1182))))) b!2717641))

(declare-fun b_lambda!82533 () Bool)

(assert (= b_lambda!82529 (or (and b!2715037 b_free!76539 (= (toChars!6620 (transformation!4791 (h!36750 rules!1182))) (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))))) (and b!2715581 b_free!76547 (= (toChars!6620 (transformation!4791 (h!36750 (t!226248 rules!1182)))) (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))))) (and b!2717542 b_free!76559 (= (toChars!6620 (transformation!4791 (h!36750 (t!226248 (t!226248 rules!1182))))) (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))))) (and b!2717611 b_free!76563 (= (toChars!6620 (transformation!4791 (rule!7217 (h!36749 (innerList!9870 (xs!12873 (c!438567 acc!331))))))) (toChars!6620 (transformation!4791 (rule!7217 (_1!18128 (v!33014 lt!960664))))))) b_lambda!82533)))

(check-sat (not b!2716865) (not b!2717354) (not b!2715979) (not b!2716575) (not bm!175332) (not bm!175077) (not b!2716021) (not bm!175347) (not b!2715604) (not b!2717167) (not b!2717553) (not d!782180) (not b!2716674) (not b!2715971) (not b!2717331) (not b!2715914) (not b!2716003) (not b!2717608) (not b!2716885) (not b!2717173) (not b!2715666) (not b!2715993) (not b!2716624) (not b!2716814) (not d!782950) (not d!782802) (not d!782394) (not b!2715639) (not b!2716574) (not b!2716849) (not d!782766) (not bm!175152) (not b!2716661) (not bm!175358) (not bm!175073) (not bm!175356) (not b!2716463) (not d!782216) (not d!782908) (not b!2716863) (not b!2716672) (not b!2716336) (not b!2715977) (not b!2716587) (not b!2717138) (not d!782600) (not d!782428) (not b!2715638) (not d!782132) (not b!2716640) (not d!782514) (not b!2717411) (not b!2716658) (not b!2716468) (not b!2716561) (not b!2716618) (not b!2716623) (not b!2715960) (not d!782252) (not b!2715991) (not d!782426) (not d!782406) (not b!2716650) (not b!2717560) (not b!2716669) (not d!782884) (not b!2717440) (not b!2716022) (not b!2716877) (not b!2717436) (not bm!175339) (not b!2716592) (not b!2716887) (not b!2715637) (not b!2715988) (not b!2717610) (not d!782502) (not b!2716470) (not b!2715894) (not d!782326) (not b!2715959) (not b!2716577) (not b!2716884) (not b!2716432) (not b!2717298) (not b!2715665) (not d!782370) (not b_next!77243) (not b!2717392) (not d!782218) (not b!2717475) (not b!2717499) (not b!2717613) (not b!2717367) (not b!2716268) (not b!2715607) (not bm!175093) (not b!2716579) (not b_next!77251) (not b!2716436) (not d!782070) (not b!2716312) (not d!782474) (not b!2715983) (not b!2715911) (not b!2715956) (not b!2717401) (not b!2716002) (not b!2717399) (not b!2717541) (not bm!175089) (not d!782056) (not b!2715635) (not b!2717619) (not b!2715917) (not b!2716269) (not b!2717379) (not b!2717567) (not b!2717396) (not b!2717204) (not b!2715982) (not d!782036) (not b!2717561) (not b!2716866) (not b!2715905) (not b!2716337) (not b!2717529) (not b!2716430) (not b!2717569) (not d!782156) b_and!200295 (not d!782464) (not b!2717620) (not bm!175361) (not b!2715593) (not b!2716106) (not b!2717474) (not b!2716869) (not b!2717633) (not bm!175091) (not b!2717614) (not d!782176) (not b!2717630) (not b!2715863) (not b!2717227) (not b!2717562) (not d!782966) (not b!2716274) (not b!2716346) (not d!782190) (not b!2717637) (not b!2717243) (not b!2717439) b_and!200309 (not b!2716651) (not d!782356) (not bm!175083) (not d!782526) (not d!782596) (not b!2717338) (not b_next!77241) (not b!2716585) (not b!2716091) (not b!2717479) (not d!782934) (not b!2717524) (not d!782486) (not b!2717405) (not b!2717554) (not b!2717624) (not d!782948) (not b!2715878) (not b!2717548) (not b!2716485) (not b!2717489) (not b!2716011) (not b!2716292) (not b!2715860) (not d!782960) (not d!782856) (not b!2717351) (not bm!175148) (not b_lambda!82533) (not b!2715590) (not b!2716025) (not b!2717477) (not b!2716076) tp_is_empty!13881 (not b!2716568) (not b!2716656) (not b!2717261) (not b!2716317) (not b!2716816) b_and!200297 (not b!2717377) (not b!2716907) (not d!782768) (not d!782322) (not d!782944) (not b!2715984) (not b!2717493) (not b!2717522) (not d!782936) (not b!2715845) (not b!2715858) (not b!2717414) (not d!782364) (not d!782598) (not b!2717449) (not b!2717263) (not b!2717498) (not b!2716460) (not d!782940) (not d!782328) (not b!2717626) (not b!2717242) (not d!782358) (not b!2717404) (not b!2716270) (not bm!175337) (not b!2716328) (not b!2717258) (not b!2717205) (not b!2717232) (not d!782350) (not b!2717622) (not b!2715992) (not b!2717171) (not bm!175336) (not b!2716294) (not d!782512) (not b!2715966) (not b!2717437) (not bm!175335) (not b!2716841) (not b!2716668) (not b!2717390) (not b!2717540) (not b!2717260) b_and!200315 (not d!782330) (not b!2716666) (not b!2716817) (not b!2716341) (not b!2716851) (not b!2716878) (not b!2716032) (not b!2717623) (not b!2716582) (not b!2716332) (not b!2716004) (not bm!175097) (not b!2715994) (not b!2716431) (not b!2716609) (not b!2717388) (not b!2717609) (not b!2716345) (not b!2717636) (not b!2716013) (not b!2716394) (not d!782140) (not b!2717568) (not b!2715881) (not b!2717552) (not b!2717406) (not d!782380) (not b!2716870) (not d!782226) (not d!782254) (not d!782982) (not b!2717497) (not b!2717207) (not d!782498) (not b!2715667) (not b!2716614) (not d!782212) (not bm!175145) (not b!2715879) (not b!2717413) (not b!2715975) (not b!2717496) (not d!782820) (not b!2717245) (not d!782828) (not b!2717412) (not d!782062) (not b!2716860) (not b!2717618) (not b!2716343) (not b!2716569) (not b!2715916) (not b!2716316) (not b!2716276) (not d!782136) (not b!2717632) (not b!2717174) (not b!2716005) (not bm!175149) (not b!2716467) (not b!2716567) (not b!2717222) (not b!2715999) (not b!2716478) (not b!2717288) (not b!2717229) (not b!2716429) (not b!2717476) (not bm!175333) (not d!782506) (not b!2717170) (not b!2716639) (not b!2717240) (not bm!175084) (not b!2717465) (not b!2715861) (not d!782492) (not b!2716888) (not b!2717462) (not b!2717435) (not b!2717264) (not b!2716861) (not b!2717280) (not d!782166) (not b!2717375) (not d!782378) (not b_next!77265) (not b!2717356) (not b!2717336) (not b!2717202) (not b!2715620) (not b!2715965) (not d!782396) (not b!2715939) (not b!2717468) (not b!2716433) (not b!2715902) (not d!782210) (not b!2717628) (not b!2716610) (not d!782572) (not b!2716029) (not bm!175338) (not b!2716313) (not bm!175090) (not b!2716340) (not bm!175346) (not d!782468) (not b!2717539) (not b!2717341) (not b!2715996) (not d!782508) (not b!2716027) (not b!2717521) (not b!2715908) (not b!2717402) (not b!2717241) (not bm!175088) (not b!2716581) (not d!782956) (not b!2717134) (not d!782142) (not b!2717378) (not b!2716472) (not b!2716578) (not b!2715912) (not d!782968) (not b!2716348) (not bm!175206) (not b!2716591) (not b!2717206) (not b!2715668) (not b!2716573) (not b!2716605) (not b!2716015) (not d!782192) (not d!782900) (not b!2717289) (not b!2717247) (not b!2716842) (not d!782530) (not d!782952) b_and!200311 (not b!2717617) (not b!2716087) (not b!2717470) (not d!782354) (not b!2715944) (not d!782138) (not b!2716615) (not b!2717639) (not b!2717262) (not b!2717527) (not b!2716847) (not b!2717259) (not b!2716288) (not bm!175105) (not b!2716564) (not b!2715872) (not b!2716908) (not d!782536) (not b!2716805) (not b!2715882) (not b!2717520) (not b!2715941) (not b!2715987) (not b!2716462) (not b!2717523) (not b!2717225) (not b!2717352) (not b!2715691) (not bm!175350) (not d!782840) (not b!2717615) (not b!2715998) (not b!2717374) (not b!2716428) (not b!2716836) (not b!2715997) (not b!2716425) (not b!2717359) (not b!2716622) (not b!2715871) (not b_next!77267) (not d!782184) (not b!2717448) (not d!782338) (not b!2715634) (not bm!175341) (not d!782392) (not b!2716476) (not b!2717136) (not b!2716081) (not bm!175070) (not b!2715989) (not b!2717501) (not b!2717203) (not b!2715846) (not b!2716626) (not d!782324) (not d!782496) (not d!782842) (not b!2717500) (not b!2716845) (not d!782186) (not b!2716437) (not b!2715877) (not d!782162) (not b!2715995) (not d!782918) (not b!2716271) (not b!2717297) (not b!2716562) (not b!2717380) (not b!2716475) (not b!2715893) (not b!2716326) (not b!2717410) (not b!2717233) (not b!2716856) (not b!2715850) (not b!2716676) (not d!782800) (not b!2716435) (not b!2717251) (not b!2715669) (not b!2717394) (not b!2716031) (not d!782376) (not b!2716438) (not b!2717407) (not d!782500) (not b!2717528) (not bm!175147) (not d!782482) (not d!782366) (not b!2715836) (not b!2717358) (not b!2715849) (not d!782528) (not d!782476) (not b!2715840) (not b!2716890) (not d!782204) (not b!2717281) (not b!2717334) (not b!2717403) (not b!2717249) (not b!2717415) (not b!2717635) (not b!2715937) (not b!2716844) (not b!2715904) (not b!2716331) (not b!2716872) (not d!782160) (not b!2717612) (not d!782384) (not b!2717444) (not b!2715990) (not b!2717169) (not b!2716808) (not d!782938) (not b!2716471) (not b!2716837) (not bm!175153) (not b!2716329) (not b!2715900) (not b!2716084) (not b!2716665) (not b_next!77249) (not b!2717464) (not b!2716660) (not b!2717316) (not d!782914) b_and!200285 (not b!2716338) (not b!2716654) (not b!2716657) (not d!782792) (not d!782250) (not b!2716330) (not b!2717409) (not b!2716017) (not b!2716264) (not d!782504) (not bm!175071) (not d!782240) (not b!2716426) (not bm!175334) (not d!782206) (not b!2716570) (not b!2716673) (not b!2716473) (not b!2717443) (not b!2716333) (not b!2716671) (not b!2715978) (not bm!175103) (not b!2715621) (not b!2717627) (not b!2715976) (not b!2717357) (not b!2717546) (not d!782390) (not d!782368) (not b!2715985) (not b!2717547) (not b!2716835) (not b!2717139) (not b!2716649) (not b!2717494) (not d!782178) (not d!782388) (not b!2716275) (not b_next!77261) (not b!2716675) (not b!2715864) (not d!782864) (not b!2716659) (not b!2716263) b_and!200313 (not b!2715874) (not d!782472) (not b!2716627) (not b!2716873) (not b!2716889) (not b!2715986) (not d!782604) (not b!2717441) (not b!2716838) (not b!2717460) (not b!2716108) (not d!782910) (not d!782954) (not bm!175264) (not b!2715636) (not b!2717631) (not b!2715856) (not b!2716617) (not b!2717318) (not bm!175104) (not b!2717480) (not b!2717472) (not b!2717478) (not b!2715907) (not b!2716107) b_and!200299 (not bm!175265) (not b!2717538) (not bm!175139) (not b!2717397) (not d!782232) (not d!782182) (not b!2716566) (not b!2716886) (not b!2715876) (not b!2716019) (not d!782532) (not b!2716273) (not b!2716565) (not b!2717616) (not b!2717353) (not b!2715943) (not b!2715844) (not b!2715839) (not bm!175359) (not d!782150) (not b!2716606) (not b!2716000) (not b!2716868) (not b!2716092) (not b!2716576) (not d!782488) (not b!2717347) (not b!2716662) (not b!2717640) (not b!2717438) (not b!2715880) (not d!782164) (not bm!175340) (not b!2715940) (not b!2715670) (not b!2715474) (not d!782466) (not b!2716857) (not b!2716423) (not d!782258) (not b!2717135) (not b!2716486) (not d!782946) (not d!782386) (not b!2716653) (not b!2717641) (not b!2717320) (not b!2715981) (not b!2716810) (not d!782352) (not b!2717525) (not d!782040) (not b_next!77263) (not bm!175360) (not bm!175085) (not b!2715964) (not d!782416) (not b!2716571))
(check-sat (not b_next!77243) (not b_next!77251) b_and!200295 b_and!200297 b_and!200315 (not b_next!77265) b_and!200311 (not b_next!77267) (not b_next!77249) b_and!200285 b_and!200299 (not b_next!77263) (not b_next!77241) b_and!200309 (not b_next!77261) b_and!200313)
