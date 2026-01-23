; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!355592 () Bool)

(assert start!355592)

(declare-fun b!3793974 () Bool)

(declare-fun b_free!101221 () Bool)

(declare-fun b_next!101925 () Bool)

(assert (=> b!3793974 (= b_free!101221 (not b_next!101925))))

(declare-fun tp!1154084 () Bool)

(declare-fun b_and!281975 () Bool)

(assert (=> b!3793974 (= tp!1154084 b_and!281975)))

(declare-fun b_free!101223 () Bool)

(declare-fun b_next!101927 () Bool)

(assert (=> b!3793974 (= b_free!101223 (not b_next!101927))))

(declare-fun tp!1154082 () Bool)

(declare-fun b_and!281977 () Bool)

(assert (=> b!3793974 (= tp!1154082 b_and!281977)))

(declare-fun e!2345006 () Bool)

(declare-datatypes ((List!40442 0))(
  ( (Nil!40318) (Cons!40318 (h!45738 (_ BitVec 16)) (t!306493 List!40442)) )
))
(declare-datatypes ((TokenValue!6432 0))(
  ( (FloatLiteralValue!12864 (text!45469 List!40442)) (TokenValueExt!6431 (__x!25081 Int)) (Broken!32160 (value!197338 List!40442)) (Object!6555) (End!6432) (Def!6432) (Underscore!6432) (Match!6432) (Else!6432) (Error!6432) (Case!6432) (If!6432) (Extends!6432) (Abstract!6432) (Class!6432) (Val!6432) (DelimiterValue!12864 (del!6492 List!40442)) (KeywordValue!6438 (value!197339 List!40442)) (CommentValue!12864 (value!197340 List!40442)) (WhitespaceValue!12864 (value!197341 List!40442)) (IndentationValue!6432 (value!197342 List!40442)) (String!45841) (Int32!6432) (Broken!32161 (value!197343 List!40442)) (Boolean!6433) (Unit!58053) (OperatorValue!6435 (op!6492 List!40442)) (IdentifierValue!12864 (value!197344 List!40442)) (IdentifierValue!12865 (value!197345 List!40442)) (WhitespaceValue!12865 (value!197346 List!40442)) (True!12864) (False!12864) (Broken!32162 (value!197347 List!40442)) (Broken!32163 (value!197348 List!40442)) (True!12865) (RightBrace!6432) (RightBracket!6432) (Colon!6432) (Null!6432) (Comma!6432) (LeftBracket!6432) (False!12865) (LeftBrace!6432) (ImaginaryLiteralValue!6432 (text!45470 List!40442)) (StringLiteralValue!19296 (value!197349 List!40442)) (EOFValue!6432 (value!197350 List!40442)) (IdentValue!6432 (value!197351 List!40442)) (DelimiterValue!12865 (value!197352 List!40442)) (DedentValue!6432 (value!197353 List!40442)) (NewLineValue!6432 (value!197354 List!40442)) (IntegerValue!19296 (value!197355 (_ BitVec 32)) (text!45471 List!40442)) (IntegerValue!19297 (value!197356 Int) (text!45472 List!40442)) (Times!6432) (Or!6432) (Equal!6432) (Minus!6432) (Broken!32164 (value!197357 List!40442)) (And!6432) (Div!6432) (LessEqual!6432) (Mod!6432) (Concat!17539) (Not!6432) (Plus!6432) (SpaceValue!6432 (value!197358 List!40442)) (IntegerValue!19298 (value!197359 Int) (text!45473 List!40442)) (StringLiteralValue!19297 (text!45474 List!40442)) (FloatLiteralValue!12865 (text!45475 List!40442)) (BytesLiteralValue!6432 (value!197360 List!40442)) (CommentValue!12865 (value!197361 List!40442)) (StringLiteralValue!19298 (value!197362 List!40442)) (ErrorTokenValue!6432 (msg!6493 List!40442)) )
))
(declare-datatypes ((C!22400 0))(
  ( (C!22401 (val!13276 Int)) )
))
(declare-datatypes ((Regex!11107 0))(
  ( (ElementMatch!11107 (c!659195 C!22400)) (Concat!17540 (regOne!22726 Regex!11107) (regTwo!22726 Regex!11107)) (EmptyExpr!11107) (Star!11107 (reg!11436 Regex!11107)) (EmptyLang!11107) (Union!11107 (regOne!22727 Regex!11107) (regTwo!22727 Regex!11107)) )
))
(declare-datatypes ((String!45842 0))(
  ( (String!45843 (value!197363 String)) )
))
(declare-datatypes ((List!40443 0))(
  ( (Nil!40319) (Cons!40319 (h!45739 C!22400) (t!306494 List!40443)) )
))
(declare-datatypes ((IArray!24761 0))(
  ( (IArray!24762 (innerList!12438 List!40443)) )
))
(declare-datatypes ((Conc!12378 0))(
  ( (Node!12378 (left!31196 Conc!12378) (right!31526 Conc!12378) (csize!24986 Int) (cheight!12589 Int)) (Leaf!19177 (xs!15628 IArray!24761) (csize!24987 Int)) (Empty!12378) )
))
(declare-datatypes ((BalanceConc!24350 0))(
  ( (BalanceConc!24351 (c!659196 Conc!12378)) )
))
(declare-datatypes ((TokenValueInjection!12292 0))(
  ( (TokenValueInjection!12293 (toValue!8578 Int) (toChars!8437 Int)) )
))
(declare-datatypes ((Rule!12204 0))(
  ( (Rule!12205 (regex!6202 Regex!11107) (tag!7062 String!45842) (isSeparator!6202 Bool) (transformation!6202 TokenValueInjection!12292)) )
))
(declare-datatypes ((Token!11542 0))(
  ( (Token!11543 (value!197364 TokenValue!6432) (rule!8990 Rule!12204) (size!30349 Int) (originalCharacters!6802 List!40443)) )
))
(declare-datatypes ((List!40444 0))(
  ( (Nil!40320) (Cons!40320 (h!45740 Token!11542) (t!306495 List!40444)) )
))
(declare-datatypes ((IArray!24763 0))(
  ( (IArray!24764 (innerList!12439 List!40444)) )
))
(declare-datatypes ((Conc!12379 0))(
  ( (Node!12379 (left!31197 Conc!12379) (right!31527 Conc!12379) (csize!24988 Int) (cheight!12590 Int)) (Leaf!19178 (xs!15629 IArray!24763) (csize!24989 Int)) (Empty!12379) )
))
(declare-datatypes ((BalanceConc!24352 0))(
  ( (BalanceConc!24353 (c!659197 Conc!12379)) )
))
(declare-datatypes ((tuple2!39432 0))(
  ( (tuple2!39433 (_1!22850 BalanceConc!24352) (_2!22850 BalanceConc!24350)) )
))
(declare-fun lt!1315035 () tuple2!39432)

(declare-datatypes ((tuple2!39434 0))(
  ( (tuple2!39435 (_1!22851 Token!11542) (_2!22851 BalanceConc!24350)) )
))
(declare-datatypes ((Option!8612 0))(
  ( (None!8611) (Some!8611 (v!38821 tuple2!39434)) )
))
(declare-fun lt!1315030 () Option!8612)

(declare-fun b!3793961 () Bool)

(declare-fun lt!1315039 () tuple2!39432)

(declare-fun prepend!1344 (BalanceConc!24352 Token!11542) BalanceConc!24352)

(assert (=> b!3793961 (= e!2345006 (= lt!1315039 (tuple2!39433 (prepend!1344 (_1!22850 lt!1315035) (_1!22851 (v!38821 lt!1315030))) (_2!22850 lt!1315035))))))

(declare-datatypes ((List!40445 0))(
  ( (Nil!40321) (Cons!40321 (h!45741 Rule!12204) (t!306496 List!40445)) )
))
(declare-fun rules!1265 () List!40445)

(declare-datatypes ((LexerInterface!5791 0))(
  ( (LexerInterfaceExt!5788 (__x!25082 Int)) (Lexer!5789) )
))
(declare-fun thiss!11876 () LexerInterface!5791)

(declare-fun lexRec!815 (LexerInterface!5791 List!40445 BalanceConc!24350) tuple2!39432)

(assert (=> b!3793961 (= lt!1315035 (lexRec!815 thiss!11876 rules!1265 (_2!22851 (v!38821 lt!1315030))))))

(declare-fun b!3793962 () Bool)

(declare-fun res!1536000 () Bool)

(declare-fun e!2345017 () Bool)

(assert (=> b!3793962 (=> (not res!1536000) (not e!2345017))))

(declare-fun lt!1315034 () tuple2!39432)

(declare-fun lt!1315032 () tuple2!39432)

(declare-fun list!14955 (BalanceConc!24350) List!40443)

(assert (=> b!3793962 (= res!1536000 (= (list!14955 (_2!22850 lt!1315034)) (list!14955 (_2!22850 lt!1315032))))))

(declare-fun b!3793963 () Bool)

(declare-fun e!2345002 () Bool)

(declare-fun totalInput!335 () BalanceConc!24350)

(declare-fun tp!1154085 () Bool)

(declare-fun inv!54233 (Conc!12378) Bool)

(assert (=> b!3793963 (= e!2345002 (and (inv!54233 (c!659196 totalInput!335)) tp!1154085))))

(declare-fun b!3793964 () Bool)

(declare-fun e!2345013 () Bool)

(declare-fun acc!335 () BalanceConc!24352)

(declare-fun tp!1154086 () Bool)

(declare-fun inv!54234 (Conc!12379) Bool)

(assert (=> b!3793964 (= e!2345013 (and (inv!54234 (c!659197 acc!335)) tp!1154086))))

(declare-fun b!3793965 () Bool)

(declare-fun e!2345008 () Bool)

(declare-fun e!2345009 () Bool)

(assert (=> b!3793965 (= e!2345008 e!2345009)))

(declare-fun res!1535998 () Bool)

(assert (=> b!3793965 (=> (not res!1535998) (not e!2345009))))

(declare-fun lt!1315040 () List!40444)

(declare-fun lt!1315031 () List!40444)

(assert (=> b!3793965 (= res!1535998 (= lt!1315040 lt!1315031))))

(declare-fun list!14956 (BalanceConc!24352) List!40444)

(assert (=> b!3793965 (= lt!1315031 (list!14956 acc!335))))

(declare-fun lt!1315028 () tuple2!39432)

(assert (=> b!3793965 (= lt!1315040 (list!14956 (_1!22850 lt!1315028)))))

(declare-fun treated!13 () BalanceConc!24350)

(assert (=> b!3793965 (= lt!1315028 (lexRec!815 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3793966 () Bool)

(declare-fun e!2345015 () Bool)

(declare-fun tp!1154083 () Bool)

(assert (=> b!3793966 (= e!2345015 (and (inv!54233 (c!659196 treated!13)) tp!1154083))))

(declare-fun b!3793967 () Bool)

(declare-fun e!2345004 () Bool)

(declare-fun input!678 () BalanceConc!24350)

(declare-fun tp!1154088 () Bool)

(assert (=> b!3793967 (= e!2345004 (and (inv!54233 (c!659196 input!678)) tp!1154088))))

(declare-fun b!3793968 () Bool)

(declare-fun res!1535997 () Bool)

(assert (=> b!3793968 (=> (not res!1535997) (not e!2345009))))

(declare-fun isEmpty!23719 (List!40443) Bool)

(assert (=> b!3793968 (= res!1535997 (isEmpty!23719 (list!14955 (_2!22850 lt!1315028))))))

(declare-fun b!3793969 () Bool)

(declare-fun e!2345014 () tuple2!39432)

(assert (=> b!3793969 (= e!2345014 (tuple2!39433 (BalanceConc!24353 Empty!12379) input!678))))

(declare-fun b!3793970 () Bool)

(declare-fun lt!1315056 () tuple2!39432)

(declare-fun lt!1315033 () Option!8612)

(assert (=> b!3793970 (= e!2345014 (tuple2!39433 (prepend!1344 (_1!22850 lt!1315056) (_1!22851 (v!38821 lt!1315033))) (_2!22850 lt!1315056)))))

(assert (=> b!3793970 (= lt!1315056 (lexRec!815 thiss!11876 rules!1265 (_2!22851 (v!38821 lt!1315033))))))

(declare-fun b!3793972 () Bool)

(declare-fun e!2345016 () Bool)

(assert (=> b!3793972 (= e!2345016 e!2345008)))

(declare-fun res!1535996 () Bool)

(assert (=> b!3793972 (=> (not res!1535996) (not e!2345008))))

(declare-fun lt!1315052 () List!40443)

(declare-fun lt!1315057 () List!40443)

(assert (=> b!3793972 (= res!1535996 (= lt!1315052 lt!1315057))))

(declare-fun lt!1315041 () List!40443)

(declare-fun lt!1315026 () List!40443)

(declare-fun ++!10095 (List!40443 List!40443) List!40443)

(assert (=> b!3793972 (= lt!1315057 (++!10095 lt!1315041 lt!1315026))))

(assert (=> b!3793972 (= lt!1315052 (list!14955 totalInput!335))))

(assert (=> b!3793972 (= lt!1315026 (list!14955 input!678))))

(assert (=> b!3793972 (= lt!1315041 (list!14955 treated!13))))

(declare-fun b!3793973 () Bool)

(declare-fun e!2345005 () Bool)

(assert (=> b!3793973 (= e!2345017 (not e!2345005))))

(declare-fun res!1536002 () Bool)

(assert (=> b!3793973 (=> res!1536002 e!2345005)))

(declare-fun isSuffix!976 (List!40443 List!40443) Bool)

(assert (=> b!3793973 (= res!1536002 (not (isSuffix!976 lt!1315026 lt!1315052)))))

(assert (=> b!3793973 (isSuffix!976 lt!1315026 lt!1315057)))

(declare-datatypes ((Unit!58054 0))(
  ( (Unit!58055) )
))
(declare-fun lt!1315038 () Unit!58054)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!661 (List!40443 List!40443) Unit!58054)

(assert (=> b!3793973 (= lt!1315038 (lemmaConcatTwoListThenFSndIsSuffix!661 lt!1315041 lt!1315026))))

(declare-fun e!2345010 () Bool)

(assert (=> b!3793974 (= e!2345010 (and tp!1154084 tp!1154082))))

(declare-fun b!3793975 () Bool)

(declare-fun e!2345003 () Bool)

(declare-fun e!2345011 () Bool)

(declare-fun tp!1154087 () Bool)

(assert (=> b!3793975 (= e!2345003 (and e!2345011 tp!1154087))))

(declare-fun tp!1154081 () Bool)

(declare-fun b!3793976 () Bool)

(declare-fun inv!54227 (String!45842) Bool)

(declare-fun inv!54235 (TokenValueInjection!12292) Bool)

(assert (=> b!3793976 (= e!2345011 (and tp!1154081 (inv!54227 (tag!7062 (h!45741 rules!1265))) (inv!54235 (transformation!6202 (h!45741 rules!1265))) e!2345010))))

(declare-fun b!3793977 () Bool)

(declare-fun e!2345018 () Bool)

(assert (=> b!3793977 (= e!2345005 e!2345018)))

(declare-fun res!1536004 () Bool)

(assert (=> b!3793977 (=> res!1536004 e!2345018)))

(declare-fun lt!1315047 () Option!8612)

(get-info :version)

(assert (=> b!3793977 (= res!1536004 (not ((_ is Some!8611) lt!1315047)))))

(declare-fun maxPrefixZipperSequenceV2!595 (LexerInterface!5791 List!40445 BalanceConc!24350 BalanceConc!24350) Option!8612)

(assert (=> b!3793977 (= lt!1315047 (maxPrefixZipperSequenceV2!595 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun b!3793978 () Bool)

(declare-fun e!2345007 () Bool)

(assert (=> b!3793978 (= e!2345018 e!2345007)))

(declare-fun res!1535995 () Bool)

(assert (=> b!3793978 (=> res!1535995 e!2345007)))

(declare-fun lt!1315050 () List!40443)

(assert (=> b!3793978 (= res!1535995 (not (isSuffix!976 lt!1315050 lt!1315052)))))

(declare-fun lt!1315054 () List!40443)

(assert (=> b!3793978 (isSuffix!976 lt!1315050 (++!10095 lt!1315054 lt!1315050))))

(declare-fun lt!1315048 () Unit!58054)

(assert (=> b!3793978 (= lt!1315048 (lemmaConcatTwoListThenFSndIsSuffix!661 lt!1315054 lt!1315050))))

(declare-fun lt!1315042 () BalanceConc!24350)

(assert (=> b!3793978 (= lt!1315054 (list!14955 lt!1315042))))

(assert (=> b!3793978 e!2345006))

(declare-fun c!659194 () Bool)

(assert (=> b!3793978 (= c!659194 ((_ is Some!8611) lt!1315030))))

(assert (=> b!3793978 (= lt!1315039 (lexRec!815 thiss!11876 rules!1265 lt!1315042))))

(declare-fun maxPrefixZipperSequence!1199 (LexerInterface!5791 List!40445 BalanceConc!24350) Option!8612)

(assert (=> b!3793978 (= lt!1315030 (maxPrefixZipperSequence!1199 thiss!11876 rules!1265 lt!1315042))))

(declare-fun lt!1315053 () BalanceConc!24350)

(declare-fun ++!10096 (BalanceConc!24350 BalanceConc!24350) BalanceConc!24350)

(assert (=> b!3793978 (= lt!1315042 (++!10096 treated!13 lt!1315053))))

(declare-fun lt!1315046 () List!40443)

(declare-fun lt!1315027 () List!40444)

(declare-datatypes ((tuple2!39436 0))(
  ( (tuple2!39437 (_1!22852 List!40444) (_2!22852 List!40443)) )
))
(declare-fun lexList!1565 (LexerInterface!5791 List!40445 List!40443) tuple2!39436)

(assert (=> b!3793978 (= (lexList!1565 thiss!11876 rules!1265 lt!1315046) (tuple2!39437 lt!1315027 Nil!40319))))

(declare-fun lt!1315051 () tuple2!39432)

(declare-fun lt!1315036 () List!40444)

(declare-fun lt!1315043 () Unit!58054)

(declare-fun lemmaLexThenLexPrefix!567 (LexerInterface!5791 List!40445 List!40443 List!40443 List!40444 List!40444 List!40443) Unit!58054)

(assert (=> b!3793978 (= lt!1315043 (lemmaLexThenLexPrefix!567 thiss!11876 rules!1265 lt!1315046 lt!1315050 lt!1315027 lt!1315036 (list!14955 (_2!22850 lt!1315051))))))

(declare-fun lt!1315029 () BalanceConc!24352)

(assert (=> b!3793978 (= lt!1315027 (list!14956 lt!1315029))))

(declare-fun append!1050 (BalanceConc!24352 Token!11542) BalanceConc!24352)

(assert (=> b!3793978 (= lt!1315029 (append!1050 acc!335 (_1!22851 (v!38821 lt!1315047))))))

(declare-fun lt!1315044 () List!40444)

(declare-fun ++!10097 (List!40444 List!40444) List!40444)

(assert (=> b!3793978 (= (++!10097 (++!10097 lt!1315031 lt!1315044) lt!1315036) (++!10097 lt!1315031 (++!10097 lt!1315044 lt!1315036)))))

(declare-fun lt!1315049 () Unit!58054)

(declare-fun lemmaConcatAssociativity!2161 (List!40444 List!40444 List!40444) Unit!58054)

(assert (=> b!3793978 (= lt!1315049 (lemmaConcatAssociativity!2161 lt!1315031 lt!1315044 lt!1315036))))

(assert (=> b!3793978 (= lt!1315036 (list!14956 (_1!22850 lt!1315051)))))

(assert (=> b!3793978 (= lt!1315044 (Cons!40320 (_1!22851 (v!38821 lt!1315047)) Nil!40320))))

(assert (=> b!3793978 (= lt!1315032 e!2345014)))

(declare-fun c!659193 () Bool)

(assert (=> b!3793978 (= c!659193 ((_ is Some!8611) lt!1315033))))

(assert (=> b!3793978 (= lt!1315033 (maxPrefixZipperSequence!1199 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1315037 () List!40443)

(assert (=> b!3793978 (= (++!10095 lt!1315046 lt!1315050) (++!10095 lt!1315041 (++!10095 lt!1315037 lt!1315050)))))

(assert (=> b!3793978 (= lt!1315046 (++!10095 lt!1315041 lt!1315037))))

(declare-fun lt!1315045 () Unit!58054)

(declare-fun lemmaConcatAssociativity!2162 (List!40443 List!40443 List!40443) Unit!58054)

(assert (=> b!3793978 (= lt!1315045 (lemmaConcatAssociativity!2162 lt!1315041 lt!1315037 lt!1315050))))

(assert (=> b!3793978 (= lt!1315050 (list!14955 (_2!22851 (v!38821 lt!1315047))))))

(assert (=> b!3793978 (= lt!1315037 (list!14955 lt!1315053))))

(declare-fun charsOf!4044 (Token!11542) BalanceConc!24350)

(assert (=> b!3793978 (= lt!1315053 (charsOf!4044 (_1!22851 (v!38821 lt!1315047))))))

(assert (=> b!3793978 (= lt!1315051 (lexRec!815 thiss!11876 rules!1265 (_2!22851 (v!38821 lt!1315047))))))

(declare-fun b!3793979 () Bool)

(assert (=> b!3793979 (= e!2345007 true)))

(declare-fun lt!1315055 () List!40444)

(declare-fun lexTailRecV2!1153 (LexerInterface!5791 List!40445 BalanceConc!24350 BalanceConc!24350 BalanceConc!24350 BalanceConc!24352) tuple2!39432)

(assert (=> b!3793979 (= lt!1315055 (list!14956 (_1!22850 (lexTailRecV2!1153 thiss!11876 rules!1265 totalInput!335 lt!1315042 (_2!22851 (v!38821 lt!1315047)) lt!1315029))))))

(declare-fun b!3793980 () Bool)

(assert (=> b!3793980 (= e!2345006 (= lt!1315039 (tuple2!39433 (BalanceConc!24353 Empty!12379) lt!1315042)))))

(declare-fun b!3793981 () Bool)

(assert (=> b!3793981 (= e!2345009 e!2345017)))

(declare-fun res!1536001 () Bool)

(assert (=> b!3793981 (=> (not res!1536001) (not e!2345017))))

(declare-fun ++!10098 (BalanceConc!24352 BalanceConc!24352) BalanceConc!24352)

(assert (=> b!3793981 (= res!1536001 (= (list!14956 (_1!22850 lt!1315034)) (list!14956 (++!10098 acc!335 (_1!22850 lt!1315032)))))))

(assert (=> b!3793981 (= lt!1315032 (lexRec!815 thiss!11876 rules!1265 input!678))))

(assert (=> b!3793981 (= lt!1315034 (lexRec!815 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3793982 () Bool)

(declare-fun res!1535999 () Bool)

(assert (=> b!3793982 (=> (not res!1535999) (not e!2345016))))

(declare-fun isEmpty!23720 (List!40445) Bool)

(assert (=> b!3793982 (= res!1535999 (not (isEmpty!23720 rules!1265)))))

(declare-fun res!1536005 () Bool)

(assert (=> start!355592 (=> (not res!1536005) (not e!2345016))))

(assert (=> start!355592 (= res!1536005 ((_ is Lexer!5789) thiss!11876))))

(assert (=> start!355592 e!2345016))

(declare-fun inv!54236 (BalanceConc!24350) Bool)

(assert (=> start!355592 (and (inv!54236 input!678) e!2345004)))

(declare-fun inv!54237 (BalanceConc!24352) Bool)

(assert (=> start!355592 (and (inv!54237 acc!335) e!2345013)))

(assert (=> start!355592 (and (inv!54236 treated!13) e!2345015)))

(assert (=> start!355592 e!2345003))

(assert (=> start!355592 true))

(assert (=> start!355592 (and (inv!54236 totalInput!335) e!2345002)))

(declare-fun b!3793971 () Bool)

(declare-fun res!1536003 () Bool)

(assert (=> b!3793971 (=> (not res!1536003) (not e!2345016))))

(declare-fun rulesInvariant!5134 (LexerInterface!5791 List!40445) Bool)

(assert (=> b!3793971 (= res!1536003 (rulesInvariant!5134 thiss!11876 rules!1265))))

(assert (= (and start!355592 res!1536005) b!3793982))

(assert (= (and b!3793982 res!1535999) b!3793971))

(assert (= (and b!3793971 res!1536003) b!3793972))

(assert (= (and b!3793972 res!1535996) b!3793965))

(assert (= (and b!3793965 res!1535998) b!3793968))

(assert (= (and b!3793968 res!1535997) b!3793981))

(assert (= (and b!3793981 res!1536001) b!3793962))

(assert (= (and b!3793962 res!1536000) b!3793973))

(assert (= (and b!3793973 (not res!1536002)) b!3793977))

(assert (= (and b!3793977 (not res!1536004)) b!3793978))

(assert (= (and b!3793978 c!659193) b!3793970))

(assert (= (and b!3793978 (not c!659193)) b!3793969))

(assert (= (and b!3793978 c!659194) b!3793961))

(assert (= (and b!3793978 (not c!659194)) b!3793980))

(assert (= (and b!3793978 (not res!1535995)) b!3793979))

(assert (= start!355592 b!3793967))

(assert (= start!355592 b!3793964))

(assert (= start!355592 b!3793966))

(assert (= b!3793976 b!3793974))

(assert (= b!3793975 b!3793976))

(assert (= (and start!355592 ((_ is Cons!40321) rules!1265)) b!3793975))

(assert (= start!355592 b!3793963))

(declare-fun m!4316619 () Bool)

(assert (=> start!355592 m!4316619))

(declare-fun m!4316621 () Bool)

(assert (=> start!355592 m!4316621))

(declare-fun m!4316623 () Bool)

(assert (=> start!355592 m!4316623))

(declare-fun m!4316625 () Bool)

(assert (=> start!355592 m!4316625))

(declare-fun m!4316627 () Bool)

(assert (=> b!3793976 m!4316627))

(declare-fun m!4316629 () Bool)

(assert (=> b!3793976 m!4316629))

(declare-fun m!4316631 () Bool)

(assert (=> b!3793973 m!4316631))

(declare-fun m!4316633 () Bool)

(assert (=> b!3793973 m!4316633))

(declare-fun m!4316635 () Bool)

(assert (=> b!3793973 m!4316635))

(declare-fun m!4316637 () Bool)

(assert (=> b!3793966 m!4316637))

(declare-fun m!4316639 () Bool)

(assert (=> b!3793972 m!4316639))

(declare-fun m!4316641 () Bool)

(assert (=> b!3793972 m!4316641))

(declare-fun m!4316643 () Bool)

(assert (=> b!3793972 m!4316643))

(declare-fun m!4316645 () Bool)

(assert (=> b!3793972 m!4316645))

(declare-fun m!4316647 () Bool)

(assert (=> b!3793968 m!4316647))

(assert (=> b!3793968 m!4316647))

(declare-fun m!4316649 () Bool)

(assert (=> b!3793968 m!4316649))

(declare-fun m!4316651 () Bool)

(assert (=> b!3793961 m!4316651))

(declare-fun m!4316653 () Bool)

(assert (=> b!3793961 m!4316653))

(declare-fun m!4316655 () Bool)

(assert (=> b!3793964 m!4316655))

(declare-fun m!4316657 () Bool)

(assert (=> b!3793963 m!4316657))

(declare-fun m!4316659 () Bool)

(assert (=> b!3793967 m!4316659))

(declare-fun m!4316661 () Bool)

(assert (=> b!3793982 m!4316661))

(declare-fun m!4316663 () Bool)

(assert (=> b!3793981 m!4316663))

(declare-fun m!4316665 () Bool)

(assert (=> b!3793981 m!4316665))

(assert (=> b!3793981 m!4316663))

(declare-fun m!4316667 () Bool)

(assert (=> b!3793981 m!4316667))

(declare-fun m!4316669 () Bool)

(assert (=> b!3793981 m!4316669))

(declare-fun m!4316671 () Bool)

(assert (=> b!3793981 m!4316671))

(declare-fun m!4316673 () Bool)

(assert (=> b!3793965 m!4316673))

(declare-fun m!4316675 () Bool)

(assert (=> b!3793965 m!4316675))

(declare-fun m!4316677 () Bool)

(assert (=> b!3793965 m!4316677))

(declare-fun m!4316679 () Bool)

(assert (=> b!3793971 m!4316679))

(declare-fun m!4316681 () Bool)

(assert (=> b!3793978 m!4316681))

(declare-fun m!4316683 () Bool)

(assert (=> b!3793978 m!4316683))

(declare-fun m!4316685 () Bool)

(assert (=> b!3793978 m!4316685))

(declare-fun m!4316687 () Bool)

(assert (=> b!3793978 m!4316687))

(declare-fun m!4316689 () Bool)

(assert (=> b!3793978 m!4316689))

(declare-fun m!4316691 () Bool)

(assert (=> b!3793978 m!4316691))

(declare-fun m!4316693 () Bool)

(assert (=> b!3793978 m!4316693))

(declare-fun m!4316695 () Bool)

(assert (=> b!3793978 m!4316695))

(declare-fun m!4316697 () Bool)

(assert (=> b!3793978 m!4316697))

(declare-fun m!4316699 () Bool)

(assert (=> b!3793978 m!4316699))

(declare-fun m!4316701 () Bool)

(assert (=> b!3793978 m!4316701))

(assert (=> b!3793978 m!4316685))

(declare-fun m!4316703 () Bool)

(assert (=> b!3793978 m!4316703))

(declare-fun m!4316705 () Bool)

(assert (=> b!3793978 m!4316705))

(declare-fun m!4316707 () Bool)

(assert (=> b!3793978 m!4316707))

(assert (=> b!3793978 m!4316689))

(declare-fun m!4316709 () Bool)

(assert (=> b!3793978 m!4316709))

(declare-fun m!4316711 () Bool)

(assert (=> b!3793978 m!4316711))

(declare-fun m!4316713 () Bool)

(assert (=> b!3793978 m!4316713))

(declare-fun m!4316715 () Bool)

(assert (=> b!3793978 m!4316715))

(declare-fun m!4316717 () Bool)

(assert (=> b!3793978 m!4316717))

(declare-fun m!4316719 () Bool)

(assert (=> b!3793978 m!4316719))

(declare-fun m!4316721 () Bool)

(assert (=> b!3793978 m!4316721))

(declare-fun m!4316723 () Bool)

(assert (=> b!3793978 m!4316723))

(declare-fun m!4316725 () Bool)

(assert (=> b!3793978 m!4316725))

(assert (=> b!3793978 m!4316721))

(declare-fun m!4316727 () Bool)

(assert (=> b!3793978 m!4316727))

(assert (=> b!3793978 m!4316715))

(declare-fun m!4316729 () Bool)

(assert (=> b!3793978 m!4316729))

(declare-fun m!4316731 () Bool)

(assert (=> b!3793978 m!4316731))

(declare-fun m!4316733 () Bool)

(assert (=> b!3793978 m!4316733))

(declare-fun m!4316735 () Bool)

(assert (=> b!3793978 m!4316735))

(assert (=> b!3793978 m!4316723))

(declare-fun m!4316737 () Bool)

(assert (=> b!3793978 m!4316737))

(declare-fun m!4316739 () Bool)

(assert (=> b!3793979 m!4316739))

(declare-fun m!4316741 () Bool)

(assert (=> b!3793979 m!4316741))

(declare-fun m!4316743 () Bool)

(assert (=> b!3793977 m!4316743))

(declare-fun m!4316745 () Bool)

(assert (=> b!3793970 m!4316745))

(declare-fun m!4316747 () Bool)

(assert (=> b!3793970 m!4316747))

(declare-fun m!4316749 () Bool)

(assert (=> b!3793962 m!4316749))

(declare-fun m!4316751 () Bool)

(assert (=> b!3793962 m!4316751))

(check-sat (not b!3793975) (not b!3793962) (not b!3793979) (not b!3793967) (not start!355592) (not b!3793982) (not b!3793970) (not b!3793978) b_and!281977 (not b!3793972) (not b_next!101925) (not b_next!101927) (not b!3793966) (not b!3793968) (not b!3793964) (not b!3793961) (not b!3793973) (not b!3793976) (not b!3793963) (not b!3793977) (not b!3793965) (not b!3793971) (not b!3793981) b_and!281975)
(check-sat b_and!281975 b_and!281977 (not b_next!101925) (not b_next!101927))
