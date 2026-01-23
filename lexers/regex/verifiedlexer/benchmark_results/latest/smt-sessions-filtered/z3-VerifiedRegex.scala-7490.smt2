; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396354 () Bool)

(assert start!396354)

(declare-fun b!4159925 () Bool)

(declare-fun b_free!119639 () Bool)

(declare-fun b_next!120343 () Bool)

(assert (=> b!4159925 (= b_free!119639 (not b_next!120343))))

(declare-fun tp!1269197 () Bool)

(declare-fun b_and!324001 () Bool)

(assert (=> b!4159925 (= tp!1269197 b_and!324001)))

(declare-fun b_free!119641 () Bool)

(declare-fun b_next!120345 () Bool)

(assert (=> b!4159925 (= b_free!119641 (not b_next!120345))))

(declare-fun tp!1269196 () Bool)

(declare-fun b_and!324003 () Bool)

(assert (=> b!4159925 (= tp!1269196 b_and!324003)))

(declare-fun b!4159922 () Bool)

(declare-fun b_free!119643 () Bool)

(declare-fun b_next!120347 () Bool)

(assert (=> b!4159922 (= b_free!119643 (not b_next!120347))))

(declare-fun tp!1269200 () Bool)

(declare-fun b_and!324005 () Bool)

(assert (=> b!4159922 (= tp!1269200 b_and!324005)))

(declare-fun b_free!119645 () Bool)

(declare-fun b_next!120349 () Bool)

(assert (=> b!4159922 (= b_free!119645 (not b_next!120349))))

(declare-fun tp!1269198 () Bool)

(declare-fun b_and!324007 () Bool)

(assert (=> b!4159922 (= tp!1269198 b_and!324007)))

(declare-fun b!4159921 () Bool)

(declare-fun res!1704001 () Bool)

(declare-fun e!2581822 () Bool)

(assert (=> b!4159921 (=> (not res!1704001) (not e!2581822))))

(declare-datatypes ((List!45546 0))(
  ( (Nil!45422) (Cons!45422 (h!50842 (_ BitVec 16)) (t!343577 List!45546)) )
))
(declare-datatypes ((TokenValue!7728 0))(
  ( (FloatLiteralValue!15456 (text!54541 List!45546)) (TokenValueExt!7727 (__x!27675 Int)) (Broken!38640 (value!234243 List!45546)) (Object!7851) (End!7728) (Def!7728) (Underscore!7728) (Match!7728) (Else!7728) (Error!7728) (Case!7728) (If!7728) (Extends!7728) (Abstract!7728) (Class!7728) (Val!7728) (DelimiterValue!15456 (del!7788 List!45546)) (KeywordValue!7734 (value!234244 List!45546)) (CommentValue!15456 (value!234245 List!45546)) (WhitespaceValue!15456 (value!234246 List!45546)) (IndentationValue!7728 (value!234247 List!45546)) (String!52501) (Int32!7728) (Broken!38641 (value!234248 List!45546)) (Boolean!7729) (Unit!64574) (OperatorValue!7731 (op!7788 List!45546)) (IdentifierValue!15456 (value!234249 List!45546)) (IdentifierValue!15457 (value!234250 List!45546)) (WhitespaceValue!15457 (value!234251 List!45546)) (True!15456) (False!15456) (Broken!38642 (value!234252 List!45546)) (Broken!38643 (value!234253 List!45546)) (True!15457) (RightBrace!7728) (RightBracket!7728) (Colon!7728) (Null!7728) (Comma!7728) (LeftBracket!7728) (False!15457) (LeftBrace!7728) (ImaginaryLiteralValue!7728 (text!54542 List!45546)) (StringLiteralValue!23184 (value!234254 List!45546)) (EOFValue!7728 (value!234255 List!45546)) (IdentValue!7728 (value!234256 List!45546)) (DelimiterValue!15457 (value!234257 List!45546)) (DedentValue!7728 (value!234258 List!45546)) (NewLineValue!7728 (value!234259 List!45546)) (IntegerValue!23184 (value!234260 (_ BitVec 32)) (text!54543 List!45546)) (IntegerValue!23185 (value!234261 Int) (text!54544 List!45546)) (Times!7728) (Or!7728) (Equal!7728) (Minus!7728) (Broken!38644 (value!234262 List!45546)) (And!7728) (Div!7728) (LessEqual!7728) (Mod!7728) (Concat!20131) (Not!7728) (Plus!7728) (SpaceValue!7728 (value!234263 List!45546)) (IntegerValue!23186 (value!234264 Int) (text!54545 List!45546)) (StringLiteralValue!23185 (text!54546 List!45546)) (FloatLiteralValue!15457 (text!54547 List!45546)) (BytesLiteralValue!7728 (value!234265 List!45546)) (CommentValue!15457 (value!234266 List!45546)) (StringLiteralValue!23186 (value!234267 List!45546)) (ErrorTokenValue!7728 (msg!7789 List!45546)) )
))
(declare-datatypes ((C!24992 0))(
  ( (C!24993 (val!14658 Int)) )
))
(declare-datatypes ((Regex!12403 0))(
  ( (ElementMatch!12403 (c!711886 C!24992)) (Concat!20132 (regOne!25318 Regex!12403) (regTwo!25318 Regex!12403)) (EmptyExpr!12403) (Star!12403 (reg!12732 Regex!12403)) (EmptyLang!12403) (Union!12403 (regOne!25319 Regex!12403) (regTwo!25319 Regex!12403)) )
))
(declare-datatypes ((String!52502 0))(
  ( (String!52503 (value!234268 String)) )
))
(declare-datatypes ((List!45547 0))(
  ( (Nil!45423) (Cons!45423 (h!50843 C!24992) (t!343578 List!45547)) )
))
(declare-datatypes ((IArray!27423 0))(
  ( (IArray!27424 (innerList!13769 List!45547)) )
))
(declare-datatypes ((Conc!13709 0))(
  ( (Node!13709 (left!33907 Conc!13709) (right!34237 Conc!13709) (csize!27648 Int) (cheight!13920 Int)) (Leaf!21200 (xs!17015 IArray!27423) (csize!27649 Int)) (Empty!13709) )
))
(declare-datatypes ((BalanceConc!27012 0))(
  ( (BalanceConc!27013 (c!711887 Conc!13709)) )
))
(declare-datatypes ((TokenValueInjection!14884 0))(
  ( (TokenValueInjection!14885 (toValue!10162 Int) (toChars!10021 Int)) )
))
(declare-datatypes ((Rule!14796 0))(
  ( (Rule!14797 (regex!7498 Regex!12403) (tag!8362 String!52502) (isSeparator!7498 Bool) (transformation!7498 TokenValueInjection!14884)) )
))
(declare-datatypes ((List!45548 0))(
  ( (Nil!45424) (Cons!45424 (h!50844 Rule!14796) (t!343579 List!45548)) )
))
(declare-fun rules!4132 () List!45548)

(declare-fun r!4395 () Rule!14796)

(declare-fun contains!9274 (List!45548 Rule!14796) Bool)

(assert (=> b!4159921 (= res!1704001 (contains!9274 rules!4132 r!4395))))

(declare-fun e!2581828 () Bool)

(assert (=> b!4159922 (= e!2581828 (and tp!1269200 tp!1269198))))

(declare-fun b!4159923 () Bool)

(declare-fun e!2581829 () Bool)

(declare-fun e!2581830 () Bool)

(declare-fun tp!1269193 () Bool)

(assert (=> b!4159923 (= e!2581829 (and e!2581830 tp!1269193))))

(declare-fun b!4159924 () Bool)

(declare-fun res!1704002 () Bool)

(assert (=> b!4159924 (=> (not res!1704002) (not e!2581822))))

(declare-datatypes ((List!45549 0))(
  ( (Nil!45425) (Cons!45425 (h!50845 String!52502) (t!343580 List!45549)) )
))
(declare-fun acc!617 () List!45549)

(declare-fun tag!272 () String!52502)

(declare-fun contains!9275 (List!45549 String!52502) Bool)

(assert (=> b!4159924 (= res!1704002 (contains!9275 acc!617 tag!272))))

(declare-fun b!4159926 () Bool)

(declare-fun e!2581823 () Bool)

(declare-fun e!2581827 () Bool)

(declare-fun tp!1269195 () Bool)

(declare-fun inv!59971 (String!52502) Bool)

(declare-fun inv!59973 (TokenValueInjection!14884) Bool)

(assert (=> b!4159926 (= e!2581827 (and tp!1269195 (inv!59971 (tag!8362 r!4395)) (inv!59973 (transformation!7498 r!4395)) e!2581823))))

(declare-fun b!4159927 () Bool)

(declare-fun e!2581824 () Bool)

(declare-fun tp!1269194 () Bool)

(assert (=> b!4159927 (= e!2581824 (and (inv!59971 (h!50845 acc!617)) tp!1269194))))

(declare-fun b!4159928 () Bool)

(declare-fun res!1704000 () Bool)

(assert (=> b!4159928 (=> (not res!1704000) (not e!2581822))))

(declare-datatypes ((LexerInterface!7089 0))(
  ( (LexerInterfaceExt!7086 (__x!27676 Int)) (Lexer!7087) )
))
(declare-fun thiss!27036 () LexerInterface!7089)

(declare-fun noDuplicateTag!3075 (LexerInterface!7089 List!45548 List!45549) Bool)

(assert (=> b!4159928 (= res!1704000 (noDuplicateTag!3075 thiss!27036 rules!4132 acc!617))))

(declare-fun b!4159929 () Bool)

(declare-fun ListPrimitiveSize!293 (List!45548) Int)

(assert (=> b!4159929 (= e!2581822 (< (ListPrimitiveSize!293 rules!4132) 0))))

(declare-fun b!4159930 () Bool)

(declare-fun tp!1269199 () Bool)

(assert (=> b!4159930 (= e!2581830 (and tp!1269199 (inv!59971 (tag!8362 (h!50844 rules!4132))) (inv!59973 (transformation!7498 (h!50844 rules!4132))) e!2581828))))

(assert (=> b!4159925 (= e!2581823 (and tp!1269197 tp!1269196))))

(declare-fun res!1703999 () Bool)

(assert (=> start!396354 (=> (not res!1703999) (not e!2581822))))

(get-info :version)

(assert (=> start!396354 (= res!1703999 ((_ is Lexer!7087) thiss!27036))))

(assert (=> start!396354 e!2581822))

(assert (=> start!396354 (inv!59971 tag!272)))

(assert (=> start!396354 e!2581827))

(assert (=> start!396354 true))

(assert (=> start!396354 e!2581824))

(assert (=> start!396354 e!2581829))

(assert (= (and start!396354 res!1703999) b!4159924))

(assert (= (and b!4159924 res!1704002) b!4159928))

(assert (= (and b!4159928 res!1704000) b!4159921))

(assert (= (and b!4159921 res!1704001) b!4159929))

(assert (= b!4159926 b!4159925))

(assert (= start!396354 b!4159926))

(assert (= (and start!396354 ((_ is Cons!45425) acc!617)) b!4159927))

(assert (= b!4159930 b!4159922))

(assert (= b!4159923 b!4159930))

(assert (= (and start!396354 ((_ is Cons!45424) rules!4132)) b!4159923))

(declare-fun m!4753461 () Bool)

(assert (=> b!4159928 m!4753461))

(declare-fun m!4753463 () Bool)

(assert (=> start!396354 m!4753463))

(declare-fun m!4753465 () Bool)

(assert (=> b!4159929 m!4753465))

(declare-fun m!4753467 () Bool)

(assert (=> b!4159921 m!4753467))

(declare-fun m!4753469 () Bool)

(assert (=> b!4159924 m!4753469))

(declare-fun m!4753471 () Bool)

(assert (=> b!4159927 m!4753471))

(declare-fun m!4753473 () Bool)

(assert (=> b!4159926 m!4753473))

(declare-fun m!4753475 () Bool)

(assert (=> b!4159926 m!4753475))

(declare-fun m!4753477 () Bool)

(assert (=> b!4159930 m!4753477))

(declare-fun m!4753479 () Bool)

(assert (=> b!4159930 m!4753479))

(check-sat (not b_next!120343) (not start!396354) b_and!324003 b_and!324001 (not b!4159929) (not b!4159930) b_and!324007 (not b_next!120349) (not b_next!120347) (not b!4159927) (not b!4159924) (not b!4159926) (not b_next!120345) (not b!4159923) (not b!4159921) (not b!4159928) b_and!324005)
(check-sat (not b_next!120343) b_and!324003 b_and!324001 (not b_next!120345) b_and!324007 (not b_next!120349) b_and!324005 (not b_next!120347))
(get-model)

(declare-fun d!1229935 () Bool)

(assert (=> d!1229935 (= (inv!59971 (h!50845 acc!617)) (= (mod (str.len (value!234268 (h!50845 acc!617))) 2) 0))))

(assert (=> b!4159927 d!1229935))

(declare-fun d!1229939 () Bool)

(assert (=> d!1229939 (= (inv!59971 tag!272) (= (mod (str.len (value!234268 tag!272)) 2) 0))))

(assert (=> start!396354 d!1229939))

(declare-fun d!1229941 () Bool)

(declare-fun lt!1482779 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7051 (List!45548) (InoxSet Rule!14796))

(assert (=> d!1229941 (= lt!1482779 (select (content!7051 rules!4132) r!4395))))

(declare-fun e!2581838 () Bool)

(assert (=> d!1229941 (= lt!1482779 e!2581838)))

(declare-fun res!1704011 () Bool)

(assert (=> d!1229941 (=> (not res!1704011) (not e!2581838))))

(assert (=> d!1229941 (= res!1704011 ((_ is Cons!45424) rules!4132))))

(assert (=> d!1229941 (= (contains!9274 rules!4132 r!4395) lt!1482779)))

(declare-fun b!4159935 () Bool)

(declare-fun e!2581837 () Bool)

(assert (=> b!4159935 (= e!2581838 e!2581837)))

(declare-fun res!1704012 () Bool)

(assert (=> b!4159935 (=> res!1704012 e!2581837)))

(assert (=> b!4159935 (= res!1704012 (= (h!50844 rules!4132) r!4395))))

(declare-fun b!4159936 () Bool)

(assert (=> b!4159936 (= e!2581837 (contains!9274 (t!343579 rules!4132) r!4395))))

(assert (= (and d!1229941 res!1704011) b!4159935))

(assert (= (and b!4159935 (not res!1704012)) b!4159936))

(declare-fun m!4753481 () Bool)

(assert (=> d!1229941 m!4753481))

(declare-fun m!4753483 () Bool)

(assert (=> d!1229941 m!4753483))

(declare-fun m!4753485 () Bool)

(assert (=> b!4159936 m!4753485))

(assert (=> b!4159921 d!1229941))

(declare-fun d!1229945 () Bool)

(assert (=> d!1229945 (= (inv!59971 (tag!8362 r!4395)) (= (mod (str.len (value!234268 (tag!8362 r!4395))) 2) 0))))

(assert (=> b!4159926 d!1229945))

(declare-fun d!1229947 () Bool)

(declare-fun res!1704022 () Bool)

(declare-fun e!2581848 () Bool)

(assert (=> d!1229947 (=> (not res!1704022) (not e!2581848))))

(declare-fun semiInverseModEq!3253 (Int Int) Bool)

(assert (=> d!1229947 (= res!1704022 (semiInverseModEq!3253 (toChars!10021 (transformation!7498 r!4395)) (toValue!10162 (transformation!7498 r!4395))))))

(assert (=> d!1229947 (= (inv!59973 (transformation!7498 r!4395)) e!2581848)))

(declare-fun b!4159946 () Bool)

(declare-fun equivClasses!3152 (Int Int) Bool)

(assert (=> b!4159946 (= e!2581848 (equivClasses!3152 (toChars!10021 (transformation!7498 r!4395)) (toValue!10162 (transformation!7498 r!4395))))))

(assert (= (and d!1229947 res!1704022) b!4159946))

(declare-fun m!4753491 () Bool)

(assert (=> d!1229947 m!4753491))

(declare-fun m!4753493 () Bool)

(assert (=> b!4159946 m!4753493))

(assert (=> b!4159926 d!1229947))

(declare-fun d!1229951 () Bool)

(assert (=> d!1229951 (= (inv!59971 (tag!8362 (h!50844 rules!4132))) (= (mod (str.len (value!234268 (tag!8362 (h!50844 rules!4132)))) 2) 0))))

(assert (=> b!4159930 d!1229951))

(declare-fun d!1229953 () Bool)

(declare-fun res!1704023 () Bool)

(declare-fun e!2581849 () Bool)

(assert (=> d!1229953 (=> (not res!1704023) (not e!2581849))))

(assert (=> d!1229953 (= res!1704023 (semiInverseModEq!3253 (toChars!10021 (transformation!7498 (h!50844 rules!4132))) (toValue!10162 (transformation!7498 (h!50844 rules!4132)))))))

(assert (=> d!1229953 (= (inv!59973 (transformation!7498 (h!50844 rules!4132))) e!2581849)))

(declare-fun b!4159947 () Bool)

(assert (=> b!4159947 (= e!2581849 (equivClasses!3152 (toChars!10021 (transformation!7498 (h!50844 rules!4132))) (toValue!10162 (transformation!7498 (h!50844 rules!4132)))))))

(assert (= (and d!1229953 res!1704023) b!4159947))

(declare-fun m!4753495 () Bool)

(assert (=> d!1229953 m!4753495))

(declare-fun m!4753497 () Bool)

(assert (=> b!4159947 m!4753497))

(assert (=> b!4159930 d!1229953))

(declare-fun d!1229955 () Bool)

(declare-fun lt!1482787 () Bool)

(declare-fun content!7053 (List!45549) (InoxSet String!52502))

(assert (=> d!1229955 (= lt!1482787 (select (content!7053 acc!617) tag!272))))

(declare-fun e!2581860 () Bool)

(assert (=> d!1229955 (= lt!1482787 e!2581860)))

(declare-fun res!1704031 () Bool)

(assert (=> d!1229955 (=> (not res!1704031) (not e!2581860))))

(assert (=> d!1229955 (= res!1704031 ((_ is Cons!45425) acc!617))))

(assert (=> d!1229955 (= (contains!9275 acc!617 tag!272) lt!1482787)))

(declare-fun b!4159959 () Bool)

(declare-fun e!2581859 () Bool)

(assert (=> b!4159959 (= e!2581860 e!2581859)))

(declare-fun res!1704032 () Bool)

(assert (=> b!4159959 (=> res!1704032 e!2581859)))

(assert (=> b!4159959 (= res!1704032 (= (h!50845 acc!617) tag!272))))

(declare-fun b!4159960 () Bool)

(assert (=> b!4159960 (= e!2581859 (contains!9275 (t!343580 acc!617) tag!272))))

(assert (= (and d!1229955 res!1704031) b!4159959))

(assert (= (and b!4159959 (not res!1704032)) b!4159960))

(declare-fun m!4753511 () Bool)

(assert (=> d!1229955 m!4753511))

(declare-fun m!4753513 () Bool)

(assert (=> d!1229955 m!4753513))

(declare-fun m!4753515 () Bool)

(assert (=> b!4159960 m!4753515))

(assert (=> b!4159924 d!1229955))

(declare-fun d!1229969 () Bool)

(declare-fun lt!1482791 () Int)

(assert (=> d!1229969 (>= lt!1482791 0)))

(declare-fun e!2581868 () Int)

(assert (=> d!1229969 (= lt!1482791 e!2581868)))

(declare-fun c!711893 () Bool)

(assert (=> d!1229969 (= c!711893 ((_ is Nil!45424) rules!4132))))

(assert (=> d!1229969 (= (ListPrimitiveSize!293 rules!4132) lt!1482791)))

(declare-fun b!4159971 () Bool)

(assert (=> b!4159971 (= e!2581868 0)))

(declare-fun b!4159972 () Bool)

(assert (=> b!4159972 (= e!2581868 (+ 1 (ListPrimitiveSize!293 (t!343579 rules!4132))))))

(assert (= (and d!1229969 c!711893) b!4159971))

(assert (= (and d!1229969 (not c!711893)) b!4159972))

(declare-fun m!4753517 () Bool)

(assert (=> b!4159972 m!4753517))

(assert (=> b!4159929 d!1229969))

(declare-fun d!1229971 () Bool)

(declare-fun res!1704047 () Bool)

(declare-fun e!2581879 () Bool)

(assert (=> d!1229971 (=> res!1704047 e!2581879)))

(assert (=> d!1229971 (= res!1704047 ((_ is Nil!45424) rules!4132))))

(assert (=> d!1229971 (= (noDuplicateTag!3075 thiss!27036 rules!4132 acc!617) e!2581879)))

(declare-fun b!4159983 () Bool)

(declare-fun e!2581880 () Bool)

(assert (=> b!4159983 (= e!2581879 e!2581880)))

(declare-fun res!1704048 () Bool)

(assert (=> b!4159983 (=> (not res!1704048) (not e!2581880))))

(assert (=> b!4159983 (= res!1704048 (not (contains!9275 acc!617 (tag!8362 (h!50844 rules!4132)))))))

(declare-fun b!4159984 () Bool)

(assert (=> b!4159984 (= e!2581880 (noDuplicateTag!3075 thiss!27036 (t!343579 rules!4132) (Cons!45425 (tag!8362 (h!50844 rules!4132)) acc!617)))))

(assert (= (and d!1229971 (not res!1704047)) b!4159983))

(assert (= (and b!4159983 res!1704048) b!4159984))

(declare-fun m!4753523 () Bool)

(assert (=> b!4159983 m!4753523))

(declare-fun m!4753525 () Bool)

(assert (=> b!4159984 m!4753525))

(assert (=> b!4159928 d!1229971))

(declare-fun b!4159991 () Bool)

(declare-fun e!2581887 () Bool)

(declare-fun tp!1269203 () Bool)

(assert (=> b!4159991 (= e!2581887 (and (inv!59971 (h!50845 (t!343580 acc!617))) tp!1269203))))

(assert (=> b!4159927 (= tp!1269194 e!2581887)))

(assert (= (and b!4159927 ((_ is Cons!45425) (t!343580 acc!617))) b!4159991))

(declare-fun m!4753533 () Bool)

(assert (=> b!4159991 m!4753533))

(declare-fun b!4160017 () Bool)

(declare-fun e!2581894 () Bool)

(declare-fun tp!1269232 () Bool)

(declare-fun tp!1269233 () Bool)

(assert (=> b!4160017 (= e!2581894 (and tp!1269232 tp!1269233))))

(declare-fun b!4160018 () Bool)

(declare-fun tp!1269230 () Bool)

(assert (=> b!4160018 (= e!2581894 tp!1269230)))

(assert (=> b!4159926 (= tp!1269195 e!2581894)))

(declare-fun b!4160016 () Bool)

(declare-fun tp_is_empty!21777 () Bool)

(assert (=> b!4160016 (= e!2581894 tp_is_empty!21777)))

(declare-fun b!4160019 () Bool)

(declare-fun tp!1269231 () Bool)

(declare-fun tp!1269229 () Bool)

(assert (=> b!4160019 (= e!2581894 (and tp!1269231 tp!1269229))))

(assert (= (and b!4159926 ((_ is ElementMatch!12403) (regex!7498 r!4395))) b!4160016))

(assert (= (and b!4159926 ((_ is Concat!20132) (regex!7498 r!4395))) b!4160017))

(assert (= (and b!4159926 ((_ is Star!12403) (regex!7498 r!4395))) b!4160018))

(assert (= (and b!4159926 ((_ is Union!12403) (regex!7498 r!4395))) b!4160019))

(declare-fun b!4160023 () Bool)

(declare-fun e!2581895 () Bool)

(declare-fun tp!1269237 () Bool)

(declare-fun tp!1269238 () Bool)

(assert (=> b!4160023 (= e!2581895 (and tp!1269237 tp!1269238))))

(declare-fun b!4160024 () Bool)

(declare-fun tp!1269235 () Bool)

(assert (=> b!4160024 (= e!2581895 tp!1269235)))

(assert (=> b!4159930 (= tp!1269199 e!2581895)))

(declare-fun b!4160022 () Bool)

(assert (=> b!4160022 (= e!2581895 tp_is_empty!21777)))

(declare-fun b!4160025 () Bool)

(declare-fun tp!1269236 () Bool)

(declare-fun tp!1269234 () Bool)

(assert (=> b!4160025 (= e!2581895 (and tp!1269236 tp!1269234))))

(assert (= (and b!4159930 ((_ is ElementMatch!12403) (regex!7498 (h!50844 rules!4132)))) b!4160022))

(assert (= (and b!4159930 ((_ is Concat!20132) (regex!7498 (h!50844 rules!4132)))) b!4160023))

(assert (= (and b!4159930 ((_ is Star!12403) (regex!7498 (h!50844 rules!4132)))) b!4160024))

(assert (= (and b!4159930 ((_ is Union!12403) (regex!7498 (h!50844 rules!4132)))) b!4160025))

(declare-fun b!4160045 () Bool)

(declare-fun b_free!119651 () Bool)

(declare-fun b_next!120355 () Bool)

(assert (=> b!4160045 (= b_free!119651 (not b_next!120355))))

(declare-fun tp!1269260 () Bool)

(declare-fun b_and!324013 () Bool)

(assert (=> b!4160045 (= tp!1269260 b_and!324013)))

(declare-fun b_free!119653 () Bool)

(declare-fun b_next!120357 () Bool)

(assert (=> b!4160045 (= b_free!119653 (not b_next!120357))))

(declare-fun tp!1269262 () Bool)

(declare-fun b_and!324015 () Bool)

(assert (=> b!4160045 (= tp!1269262 b_and!324015)))

(declare-fun e!2581919 () Bool)

(assert (=> b!4160045 (= e!2581919 (and tp!1269260 tp!1269262))))

(declare-fun b!4160044 () Bool)

(declare-fun tp!1269259 () Bool)

(declare-fun e!2581916 () Bool)

(assert (=> b!4160044 (= e!2581916 (and tp!1269259 (inv!59971 (tag!8362 (h!50844 (t!343579 rules!4132)))) (inv!59973 (transformation!7498 (h!50844 (t!343579 rules!4132)))) e!2581919))))

(declare-fun b!4160043 () Bool)

(declare-fun e!2581918 () Bool)

(declare-fun tp!1269261 () Bool)

(assert (=> b!4160043 (= e!2581918 (and e!2581916 tp!1269261))))

(assert (=> b!4159923 (= tp!1269193 e!2581918)))

(assert (= b!4160044 b!4160045))

(assert (= b!4160043 b!4160044))

(assert (= (and b!4159923 ((_ is Cons!45424) (t!343579 rules!4132))) b!4160043))

(declare-fun m!4753539 () Bool)

(assert (=> b!4160044 m!4753539))

(declare-fun m!4753541 () Bool)

(assert (=> b!4160044 m!4753541))

(check-sat b_and!324003 b_and!324001 (not d!1229941) (not b!4159983) (not b_next!120345) (not b_next!120357) b_and!324007 (not d!1229955) b_and!324005 (not b_next!120347) (not b!4160025) (not b_next!120343) (not b!4160024) (not b!4160044) (not b!4159947) b_and!324015 (not b!4159984) (not b!4159991) (not b!4160023) (not b!4159946) (not b!4160017) tp_is_empty!21777 (not b!4160043) (not b!4159960) (not d!1229953) (not d!1229947) (not b!4160018) (not b_next!120355) (not b!4160019) (not b!4159972) (not b_next!120349) b_and!324013 (not b!4159936))
(check-sat (not b_next!120343) b_and!324003 b_and!324015 b_and!324001 (not b_next!120355) (not b_next!120345) (not b_next!120357) b_and!324007 (not b_next!120349) b_and!324005 (not b_next!120347) b_and!324013)
