; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!355588 () Bool)

(assert start!355588)

(declare-fun b!3793834 () Bool)

(declare-fun b_free!101213 () Bool)

(declare-fun b_next!101917 () Bool)

(assert (=> b!3793834 (= b_free!101213 (not b_next!101917))))

(declare-fun tp!1154037 () Bool)

(declare-fun b_and!281967 () Bool)

(assert (=> b!3793834 (= tp!1154037 b_and!281967)))

(declare-fun b_free!101215 () Bool)

(declare-fun b_next!101919 () Bool)

(assert (=> b!3793834 (= b_free!101215 (not b_next!101919))))

(declare-fun tp!1154038 () Bool)

(declare-fun b_and!281969 () Bool)

(assert (=> b!3793834 (= tp!1154038 b_and!281969)))

(declare-fun res!1535929 () Bool)

(declare-fun e!2344912 () Bool)

(assert (=> start!355588 (=> (not res!1535929) (not e!2344912))))

(declare-datatypes ((LexerInterface!5789 0))(
  ( (LexerInterfaceExt!5786 (__x!25077 Int)) (Lexer!5787) )
))
(declare-fun thiss!11876 () LexerInterface!5789)

(get-info :version)

(assert (=> start!355588 (= res!1535929 ((_ is Lexer!5787) thiss!11876))))

(assert (=> start!355588 e!2344912))

(declare-datatypes ((C!22396 0))(
  ( (C!22397 (val!13274 Int)) )
))
(declare-datatypes ((List!40434 0))(
  ( (Nil!40310) (Cons!40310 (h!45730 C!22396) (t!306485 List!40434)) )
))
(declare-datatypes ((IArray!24753 0))(
  ( (IArray!24754 (innerList!12434 List!40434)) )
))
(declare-datatypes ((Conc!12374 0))(
  ( (Node!12374 (left!31191 Conc!12374) (right!31521 Conc!12374) (csize!24978 Int) (cheight!12585 Int)) (Leaf!19172 (xs!15624 IArray!24753) (csize!24979 Int)) (Empty!12374) )
))
(declare-datatypes ((BalanceConc!24342 0))(
  ( (BalanceConc!24343 (c!659175 Conc!12374)) )
))
(declare-fun input!678 () BalanceConc!24342)

(declare-fun e!2344904 () Bool)

(declare-fun inv!54220 (BalanceConc!24342) Bool)

(assert (=> start!355588 (and (inv!54220 input!678) e!2344904)))

(declare-datatypes ((List!40435 0))(
  ( (Nil!40311) (Cons!40311 (h!45731 (_ BitVec 16)) (t!306486 List!40435)) )
))
(declare-datatypes ((TokenValue!6430 0))(
  ( (FloatLiteralValue!12860 (text!45455 List!40435)) (TokenValueExt!6429 (__x!25078 Int)) (Broken!32150 (value!197281 List!40435)) (Object!6553) (End!6430) (Def!6430) (Underscore!6430) (Match!6430) (Else!6430) (Error!6430) (Case!6430) (If!6430) (Extends!6430) (Abstract!6430) (Class!6430) (Val!6430) (DelimiterValue!12860 (del!6490 List!40435)) (KeywordValue!6436 (value!197282 List!40435)) (CommentValue!12860 (value!197283 List!40435)) (WhitespaceValue!12860 (value!197284 List!40435)) (IndentationValue!6430 (value!197285 List!40435)) (String!45831) (Int32!6430) (Broken!32151 (value!197286 List!40435)) (Boolean!6431) (Unit!58047) (OperatorValue!6433 (op!6490 List!40435)) (IdentifierValue!12860 (value!197287 List!40435)) (IdentifierValue!12861 (value!197288 List!40435)) (WhitespaceValue!12861 (value!197289 List!40435)) (True!12860) (False!12860) (Broken!32152 (value!197290 List!40435)) (Broken!32153 (value!197291 List!40435)) (True!12861) (RightBrace!6430) (RightBracket!6430) (Colon!6430) (Null!6430) (Comma!6430) (LeftBracket!6430) (False!12861) (LeftBrace!6430) (ImaginaryLiteralValue!6430 (text!45456 List!40435)) (StringLiteralValue!19290 (value!197292 List!40435)) (EOFValue!6430 (value!197293 List!40435)) (IdentValue!6430 (value!197294 List!40435)) (DelimiterValue!12861 (value!197295 List!40435)) (DedentValue!6430 (value!197296 List!40435)) (NewLineValue!6430 (value!197297 List!40435)) (IntegerValue!19290 (value!197298 (_ BitVec 32)) (text!45457 List!40435)) (IntegerValue!19291 (value!197299 Int) (text!45458 List!40435)) (Times!6430) (Or!6430) (Equal!6430) (Minus!6430) (Broken!32154 (value!197300 List!40435)) (And!6430) (Div!6430) (LessEqual!6430) (Mod!6430) (Concat!17535) (Not!6430) (Plus!6430) (SpaceValue!6430 (value!197301 List!40435)) (IntegerValue!19292 (value!197302 Int) (text!45459 List!40435)) (StringLiteralValue!19291 (text!45460 List!40435)) (FloatLiteralValue!12861 (text!45461 List!40435)) (BytesLiteralValue!6430 (value!197303 List!40435)) (CommentValue!12861 (value!197304 List!40435)) (StringLiteralValue!19292 (value!197305 List!40435)) (ErrorTokenValue!6430 (msg!6491 List!40435)) )
))
(declare-datatypes ((Regex!11105 0))(
  ( (ElementMatch!11105 (c!659176 C!22396)) (Concat!17536 (regOne!22722 Regex!11105) (regTwo!22722 Regex!11105)) (EmptyExpr!11105) (Star!11105 (reg!11434 Regex!11105)) (EmptyLang!11105) (Union!11105 (regOne!22723 Regex!11105) (regTwo!22723 Regex!11105)) )
))
(declare-datatypes ((String!45832 0))(
  ( (String!45833 (value!197306 String)) )
))
(declare-datatypes ((TokenValueInjection!12288 0))(
  ( (TokenValueInjection!12289 (toValue!8576 Int) (toChars!8435 Int)) )
))
(declare-datatypes ((Rule!12200 0))(
  ( (Rule!12201 (regex!6200 Regex!11105) (tag!7060 String!45832) (isSeparator!6200 Bool) (transformation!6200 TokenValueInjection!12288)) )
))
(declare-datatypes ((Token!11538 0))(
  ( (Token!11539 (value!197307 TokenValue!6430) (rule!8988 Rule!12200) (size!30347 Int) (originalCharacters!6800 List!40434)) )
))
(declare-datatypes ((List!40436 0))(
  ( (Nil!40312) (Cons!40312 (h!45732 Token!11538) (t!306487 List!40436)) )
))
(declare-datatypes ((IArray!24755 0))(
  ( (IArray!24756 (innerList!12435 List!40436)) )
))
(declare-datatypes ((Conc!12375 0))(
  ( (Node!12375 (left!31192 Conc!12375) (right!31522 Conc!12375) (csize!24980 Int) (cheight!12586 Int)) (Leaf!19173 (xs!15625 IArray!24755) (csize!24981 Int)) (Empty!12375) )
))
(declare-datatypes ((BalanceConc!24344 0))(
  ( (BalanceConc!24345 (c!659177 Conc!12375)) )
))
(declare-fun acc!335 () BalanceConc!24344)

(declare-fun e!2344903 () Bool)

(declare-fun inv!54221 (BalanceConc!24344) Bool)

(assert (=> start!355588 (and (inv!54221 acc!335) e!2344903)))

(declare-fun treated!13 () BalanceConc!24342)

(declare-fun e!2344913 () Bool)

(assert (=> start!355588 (and (inv!54220 treated!13) e!2344913)))

(declare-fun e!2344910 () Bool)

(assert (=> start!355588 e!2344910))

(assert (=> start!355588 true))

(declare-fun totalInput!335 () BalanceConc!24342)

(declare-fun e!2344915 () Bool)

(assert (=> start!355588 (and (inv!54220 totalInput!335) e!2344915)))

(declare-fun b!3793829 () Bool)

(declare-fun e!2344916 () Bool)

(declare-fun e!2344909 () Bool)

(assert (=> b!3793829 (= e!2344916 e!2344909)))

(declare-fun res!1535939 () Bool)

(assert (=> b!3793829 (=> res!1535939 e!2344909)))

(declare-fun lt!1314855 () List!40434)

(declare-fun lt!1314846 () List!40434)

(declare-fun isSuffix!974 (List!40434 List!40434) Bool)

(assert (=> b!3793829 (= res!1535939 (not (isSuffix!974 lt!1314855 lt!1314846)))))

(declare-fun lt!1314858 () List!40434)

(declare-fun ++!10087 (List!40434 List!40434) List!40434)

(assert (=> b!3793829 (isSuffix!974 lt!1314855 (++!10087 lt!1314858 lt!1314855))))

(declare-datatypes ((Unit!58048 0))(
  ( (Unit!58049) )
))
(declare-fun lt!1314851 () Unit!58048)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!659 (List!40434 List!40434) Unit!58048)

(assert (=> b!3793829 (= lt!1314851 (lemmaConcatTwoListThenFSndIsSuffix!659 lt!1314858 lt!1314855))))

(declare-fun lt!1314837 () BalanceConc!24342)

(declare-fun list!14951 (BalanceConc!24342) List!40434)

(assert (=> b!3793829 (= lt!1314858 (list!14951 lt!1314837))))

(declare-fun e!2344908 () Bool)

(assert (=> b!3793829 e!2344908))

(declare-fun c!659173 () Bool)

(declare-datatypes ((tuple2!39420 0))(
  ( (tuple2!39421 (_1!22844 Token!11538) (_2!22844 BalanceConc!24342)) )
))
(declare-datatypes ((Option!8610 0))(
  ( (None!8609) (Some!8609 (v!38819 tuple2!39420)) )
))
(declare-fun lt!1314845 () Option!8610)

(assert (=> b!3793829 (= c!659173 ((_ is Some!8609) lt!1314845))))

(declare-datatypes ((tuple2!39422 0))(
  ( (tuple2!39423 (_1!22845 BalanceConc!24344) (_2!22845 BalanceConc!24342)) )
))
(declare-fun lt!1314857 () tuple2!39422)

(declare-datatypes ((List!40437 0))(
  ( (Nil!40313) (Cons!40313 (h!45733 Rule!12200) (t!306488 List!40437)) )
))
(declare-fun rules!1265 () List!40437)

(declare-fun lexRec!813 (LexerInterface!5789 List!40437 BalanceConc!24342) tuple2!39422)

(assert (=> b!3793829 (= lt!1314857 (lexRec!813 thiss!11876 rules!1265 lt!1314837))))

(declare-fun maxPrefixZipperSequence!1197 (LexerInterface!5789 List!40437 BalanceConc!24342) Option!8610)

(assert (=> b!3793829 (= lt!1314845 (maxPrefixZipperSequence!1197 thiss!11876 rules!1265 lt!1314837))))

(declare-fun lt!1314840 () BalanceConc!24342)

(declare-fun ++!10088 (BalanceConc!24342 BalanceConc!24342) BalanceConc!24342)

(assert (=> b!3793829 (= lt!1314837 (++!10088 treated!13 lt!1314840))))

(declare-fun lt!1314861 () List!40436)

(declare-fun lt!1314839 () List!40434)

(declare-datatypes ((tuple2!39424 0))(
  ( (tuple2!39425 (_1!22846 List!40436) (_2!22846 List!40434)) )
))
(declare-fun lexList!1563 (LexerInterface!5789 List!40437 List!40434) tuple2!39424)

(assert (=> b!3793829 (= (lexList!1563 thiss!11876 rules!1265 lt!1314839) (tuple2!39425 lt!1314861 Nil!40310))))

(declare-fun lt!1314836 () Unit!58048)

(declare-fun lt!1314850 () List!40436)

(declare-fun lt!1314859 () tuple2!39422)

(declare-fun lemmaLexThenLexPrefix!565 (LexerInterface!5789 List!40437 List!40434 List!40434 List!40436 List!40436 List!40434) Unit!58048)

(assert (=> b!3793829 (= lt!1314836 (lemmaLexThenLexPrefix!565 thiss!11876 rules!1265 lt!1314839 lt!1314855 lt!1314861 lt!1314850 (list!14951 (_2!22845 lt!1314859))))))

(declare-fun lt!1314844 () BalanceConc!24344)

(declare-fun list!14952 (BalanceConc!24344) List!40436)

(assert (=> b!3793829 (= lt!1314861 (list!14952 lt!1314844))))

(declare-fun lt!1314848 () Option!8610)

(declare-fun append!1048 (BalanceConc!24344 Token!11538) BalanceConc!24344)

(assert (=> b!3793829 (= lt!1314844 (append!1048 acc!335 (_1!22844 (v!38819 lt!1314848))))))

(declare-fun lt!1314835 () List!40436)

(declare-fun lt!1314865 () List!40436)

(declare-fun ++!10089 (List!40436 List!40436) List!40436)

(assert (=> b!3793829 (= (++!10089 (++!10089 lt!1314835 lt!1314865) lt!1314850) (++!10089 lt!1314835 (++!10089 lt!1314865 lt!1314850)))))

(declare-fun lt!1314854 () Unit!58048)

(declare-fun lemmaConcatAssociativity!2157 (List!40436 List!40436 List!40436) Unit!58048)

(assert (=> b!3793829 (= lt!1314854 (lemmaConcatAssociativity!2157 lt!1314835 lt!1314865 lt!1314850))))

(assert (=> b!3793829 (= lt!1314850 (list!14952 (_1!22845 lt!1314859)))))

(assert (=> b!3793829 (= lt!1314865 (Cons!40312 (_1!22844 (v!38819 lt!1314848)) Nil!40312))))

(declare-fun lt!1314860 () tuple2!39422)

(declare-fun e!2344906 () tuple2!39422)

(assert (=> b!3793829 (= lt!1314860 e!2344906)))

(declare-fun c!659174 () Bool)

(declare-fun lt!1314863 () Option!8610)

(assert (=> b!3793829 (= c!659174 ((_ is Some!8609) lt!1314863))))

(assert (=> b!3793829 (= lt!1314863 (maxPrefixZipperSequence!1197 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1314853 () List!40434)

(declare-fun lt!1314834 () List!40434)

(assert (=> b!3793829 (= (++!10087 lt!1314839 lt!1314855) (++!10087 lt!1314834 (++!10087 lt!1314853 lt!1314855)))))

(assert (=> b!3793829 (= lt!1314839 (++!10087 lt!1314834 lt!1314853))))

(declare-fun lt!1314842 () Unit!58048)

(declare-fun lemmaConcatAssociativity!2158 (List!40434 List!40434 List!40434) Unit!58048)

(assert (=> b!3793829 (= lt!1314842 (lemmaConcatAssociativity!2158 lt!1314834 lt!1314853 lt!1314855))))

(assert (=> b!3793829 (= lt!1314855 (list!14951 (_2!22844 (v!38819 lt!1314848))))))

(assert (=> b!3793829 (= lt!1314853 (list!14951 lt!1314840))))

(declare-fun charsOf!4042 (Token!11538) BalanceConc!24342)

(assert (=> b!3793829 (= lt!1314840 (charsOf!4042 (_1!22844 (v!38819 lt!1314848))))))

(assert (=> b!3793829 (= lt!1314859 (lexRec!813 thiss!11876 rules!1265 (_2!22844 (v!38819 lt!1314848))))))

(declare-fun b!3793830 () Bool)

(declare-fun tp!1154034 () Bool)

(declare-fun inv!54222 (Conc!12375) Bool)

(assert (=> b!3793830 (= e!2344903 (and (inv!54222 (c!659177 acc!335)) tp!1154034))))

(declare-fun b!3793831 () Bool)

(assert (=> b!3793831 (= e!2344909 true)))

(declare-fun lt!1314838 () tuple2!39422)

(declare-fun lexTailRecV2!1151 (LexerInterface!5789 List!40437 BalanceConc!24342 BalanceConc!24342 BalanceConc!24342 BalanceConc!24344) tuple2!39422)

(assert (=> b!3793831 (= lt!1314838 (lexTailRecV2!1151 thiss!11876 rules!1265 totalInput!335 lt!1314837 (_2!22844 (v!38819 lt!1314848)) lt!1314844))))

(declare-fun b!3793832 () Bool)

(declare-fun res!1535937 () Bool)

(declare-fun e!2344901 () Bool)

(assert (=> b!3793832 (=> (not res!1535937) (not e!2344901))))

(declare-fun lt!1314841 () tuple2!39422)

(declare-fun isEmpty!23715 (List!40434) Bool)

(assert (=> b!3793832 (= res!1535937 (isEmpty!23715 (list!14951 (_2!22845 lt!1314841))))))

(declare-fun b!3793833 () Bool)

(declare-fun tp!1154040 () Bool)

(declare-fun inv!54223 (Conc!12374) Bool)

(assert (=> b!3793833 (= e!2344904 (and (inv!54223 (c!659175 input!678)) tp!1154040))))

(declare-fun e!2344905 () Bool)

(assert (=> b!3793834 (= e!2344905 (and tp!1154037 tp!1154038))))

(declare-fun b!3793835 () Bool)

(assert (=> b!3793835 (= e!2344906 (tuple2!39423 (BalanceConc!24345 Empty!12375) input!678))))

(declare-fun b!3793836 () Bool)

(declare-fun e!2344900 () Bool)

(declare-fun tp!1154035 () Bool)

(assert (=> b!3793836 (= e!2344910 (and e!2344900 tp!1154035))))

(declare-fun b!3793837 () Bool)

(declare-fun res!1535933 () Bool)

(assert (=> b!3793837 (=> (not res!1535933) (not e!2344912))))

(declare-fun rulesInvariant!5132 (LexerInterface!5789 List!40437) Bool)

(assert (=> b!3793837 (= res!1535933 (rulesInvariant!5132 thiss!11876 rules!1265))))

(declare-fun b!3793838 () Bool)

(declare-fun tp!1154036 () Bool)

(assert (=> b!3793838 (= e!2344913 (and (inv!54223 (c!659175 treated!13)) tp!1154036))))

(declare-fun b!3793839 () Bool)

(assert (=> b!3793839 (= e!2344908 (= lt!1314857 (tuple2!39423 (BalanceConc!24345 Empty!12375) lt!1314837)))))

(declare-fun b!3793840 () Bool)

(declare-fun res!1535931 () Bool)

(declare-fun e!2344911 () Bool)

(assert (=> b!3793840 (=> (not res!1535931) (not e!2344911))))

(declare-fun lt!1314862 () tuple2!39422)

(assert (=> b!3793840 (= res!1535931 (= (list!14951 (_2!22845 lt!1314862)) (list!14951 (_2!22845 lt!1314860))))))

(declare-fun b!3793841 () Bool)

(declare-fun tp!1154039 () Bool)

(assert (=> b!3793841 (= e!2344915 (and (inv!54223 (c!659175 totalInput!335)) tp!1154039))))

(declare-fun b!3793842 () Bool)

(declare-fun e!2344902 () Bool)

(assert (=> b!3793842 (= e!2344912 e!2344902)))

(declare-fun res!1535932 () Bool)

(assert (=> b!3793842 (=> (not res!1535932) (not e!2344902))))

(declare-fun lt!1314852 () List!40434)

(assert (=> b!3793842 (= res!1535932 (= lt!1314846 lt!1314852))))

(declare-fun lt!1314847 () List!40434)

(assert (=> b!3793842 (= lt!1314852 (++!10087 lt!1314834 lt!1314847))))

(assert (=> b!3793842 (= lt!1314846 (list!14951 totalInput!335))))

(assert (=> b!3793842 (= lt!1314847 (list!14951 input!678))))

(assert (=> b!3793842 (= lt!1314834 (list!14951 treated!13))))

(declare-fun b!3793843 () Bool)

(declare-fun res!1535936 () Bool)

(assert (=> b!3793843 (=> (not res!1535936) (not e!2344912))))

(declare-fun isEmpty!23716 (List!40437) Bool)

(assert (=> b!3793843 (= res!1535936 (not (isEmpty!23716 rules!1265)))))

(declare-fun b!3793844 () Bool)

(declare-fun e!2344914 () Bool)

(assert (=> b!3793844 (= e!2344911 (not e!2344914))))

(declare-fun res!1535935 () Bool)

(assert (=> b!3793844 (=> res!1535935 e!2344914)))

(assert (=> b!3793844 (= res!1535935 (not (isSuffix!974 lt!1314847 lt!1314846)))))

(assert (=> b!3793844 (isSuffix!974 lt!1314847 lt!1314852)))

(declare-fun lt!1314856 () Unit!58048)

(assert (=> b!3793844 (= lt!1314856 (lemmaConcatTwoListThenFSndIsSuffix!659 lt!1314834 lt!1314847))))

(declare-fun b!3793845 () Bool)

(declare-fun lt!1314843 () tuple2!39422)

(declare-fun prepend!1342 (BalanceConc!24344 Token!11538) BalanceConc!24344)

(assert (=> b!3793845 (= e!2344908 (= lt!1314857 (tuple2!39423 (prepend!1342 (_1!22845 lt!1314843) (_1!22844 (v!38819 lt!1314845))) (_2!22845 lt!1314843))))))

(assert (=> b!3793845 (= lt!1314843 (lexRec!813 thiss!11876 rules!1265 (_2!22844 (v!38819 lt!1314845))))))

(declare-fun b!3793846 () Bool)

(assert (=> b!3793846 (= e!2344902 e!2344901)))

(declare-fun res!1535930 () Bool)

(assert (=> b!3793846 (=> (not res!1535930) (not e!2344901))))

(declare-fun lt!1314849 () List!40436)

(assert (=> b!3793846 (= res!1535930 (= lt!1314849 lt!1314835))))

(assert (=> b!3793846 (= lt!1314835 (list!14952 acc!335))))

(assert (=> b!3793846 (= lt!1314849 (list!14952 (_1!22845 lt!1314841)))))

(assert (=> b!3793846 (= lt!1314841 (lexRec!813 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3793847 () Bool)

(declare-fun tp!1154033 () Bool)

(declare-fun inv!54214 (String!45832) Bool)

(declare-fun inv!54224 (TokenValueInjection!12288) Bool)

(assert (=> b!3793847 (= e!2344900 (and tp!1154033 (inv!54214 (tag!7060 (h!45733 rules!1265))) (inv!54224 (transformation!6200 (h!45733 rules!1265))) e!2344905))))

(declare-fun b!3793848 () Bool)

(declare-fun lt!1314864 () tuple2!39422)

(assert (=> b!3793848 (= e!2344906 (tuple2!39423 (prepend!1342 (_1!22845 lt!1314864) (_1!22844 (v!38819 lt!1314863))) (_2!22845 lt!1314864)))))

(assert (=> b!3793848 (= lt!1314864 (lexRec!813 thiss!11876 rules!1265 (_2!22844 (v!38819 lt!1314863))))))

(declare-fun b!3793849 () Bool)

(assert (=> b!3793849 (= e!2344901 e!2344911)))

(declare-fun res!1535938 () Bool)

(assert (=> b!3793849 (=> (not res!1535938) (not e!2344911))))

(declare-fun ++!10090 (BalanceConc!24344 BalanceConc!24344) BalanceConc!24344)

(assert (=> b!3793849 (= res!1535938 (= (list!14952 (_1!22845 lt!1314862)) (list!14952 (++!10090 acc!335 (_1!22845 lt!1314860)))))))

(assert (=> b!3793849 (= lt!1314860 (lexRec!813 thiss!11876 rules!1265 input!678))))

(assert (=> b!3793849 (= lt!1314862 (lexRec!813 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3793850 () Bool)

(assert (=> b!3793850 (= e!2344914 e!2344916)))

(declare-fun res!1535934 () Bool)

(assert (=> b!3793850 (=> res!1535934 e!2344916)))

(assert (=> b!3793850 (= res!1535934 (not ((_ is Some!8609) lt!1314848)))))

(declare-fun maxPrefixZipperSequenceV2!593 (LexerInterface!5789 List!40437 BalanceConc!24342 BalanceConc!24342) Option!8610)

(assert (=> b!3793850 (= lt!1314848 (maxPrefixZipperSequenceV2!593 thiss!11876 rules!1265 input!678 totalInput!335))))

(assert (= (and start!355588 res!1535929) b!3793843))

(assert (= (and b!3793843 res!1535936) b!3793837))

(assert (= (and b!3793837 res!1535933) b!3793842))

(assert (= (and b!3793842 res!1535932) b!3793846))

(assert (= (and b!3793846 res!1535930) b!3793832))

(assert (= (and b!3793832 res!1535937) b!3793849))

(assert (= (and b!3793849 res!1535938) b!3793840))

(assert (= (and b!3793840 res!1535931) b!3793844))

(assert (= (and b!3793844 (not res!1535935)) b!3793850))

(assert (= (and b!3793850 (not res!1535934)) b!3793829))

(assert (= (and b!3793829 c!659174) b!3793848))

(assert (= (and b!3793829 (not c!659174)) b!3793835))

(assert (= (and b!3793829 c!659173) b!3793845))

(assert (= (and b!3793829 (not c!659173)) b!3793839))

(assert (= (and b!3793829 (not res!1535939)) b!3793831))

(assert (= start!355588 b!3793833))

(assert (= start!355588 b!3793830))

(assert (= start!355588 b!3793838))

(assert (= b!3793847 b!3793834))

(assert (= b!3793836 b!3793847))

(assert (= (and start!355588 ((_ is Cons!40313) rules!1265)) b!3793836))

(assert (= start!355588 b!3793841))

(declare-fun m!4316353 () Bool)

(assert (=> b!3793833 m!4316353))

(declare-fun m!4316355 () Bool)

(assert (=> start!355588 m!4316355))

(declare-fun m!4316357 () Bool)

(assert (=> start!355588 m!4316357))

(declare-fun m!4316359 () Bool)

(assert (=> start!355588 m!4316359))

(declare-fun m!4316361 () Bool)

(assert (=> start!355588 m!4316361))

(declare-fun m!4316363 () Bool)

(assert (=> b!3793831 m!4316363))

(declare-fun m!4316365 () Bool)

(assert (=> b!3793842 m!4316365))

(declare-fun m!4316367 () Bool)

(assert (=> b!3793842 m!4316367))

(declare-fun m!4316369 () Bool)

(assert (=> b!3793842 m!4316369))

(declare-fun m!4316371 () Bool)

(assert (=> b!3793842 m!4316371))

(declare-fun m!4316373 () Bool)

(assert (=> b!3793847 m!4316373))

(declare-fun m!4316375 () Bool)

(assert (=> b!3793847 m!4316375))

(declare-fun m!4316377 () Bool)

(assert (=> b!3793832 m!4316377))

(assert (=> b!3793832 m!4316377))

(declare-fun m!4316379 () Bool)

(assert (=> b!3793832 m!4316379))

(declare-fun m!4316381 () Bool)

(assert (=> b!3793830 m!4316381))

(declare-fun m!4316383 () Bool)

(assert (=> b!3793841 m!4316383))

(declare-fun m!4316385 () Bool)

(assert (=> b!3793850 m!4316385))

(declare-fun m!4316387 () Bool)

(assert (=> b!3793849 m!4316387))

(declare-fun m!4316389 () Bool)

(assert (=> b!3793849 m!4316389))

(assert (=> b!3793849 m!4316387))

(declare-fun m!4316391 () Bool)

(assert (=> b!3793849 m!4316391))

(declare-fun m!4316393 () Bool)

(assert (=> b!3793849 m!4316393))

(declare-fun m!4316395 () Bool)

(assert (=> b!3793849 m!4316395))

(declare-fun m!4316397 () Bool)

(assert (=> b!3793845 m!4316397))

(declare-fun m!4316399 () Bool)

(assert (=> b!3793845 m!4316399))

(declare-fun m!4316401 () Bool)

(assert (=> b!3793840 m!4316401))

(declare-fun m!4316403 () Bool)

(assert (=> b!3793840 m!4316403))

(declare-fun m!4316405 () Bool)

(assert (=> b!3793838 m!4316405))

(declare-fun m!4316407 () Bool)

(assert (=> b!3793846 m!4316407))

(declare-fun m!4316409 () Bool)

(assert (=> b!3793846 m!4316409))

(declare-fun m!4316411 () Bool)

(assert (=> b!3793846 m!4316411))

(declare-fun m!4316413 () Bool)

(assert (=> b!3793844 m!4316413))

(declare-fun m!4316415 () Bool)

(assert (=> b!3793844 m!4316415))

(declare-fun m!4316417 () Bool)

(assert (=> b!3793844 m!4316417))

(declare-fun m!4316419 () Bool)

(assert (=> b!3793837 m!4316419))

(declare-fun m!4316421 () Bool)

(assert (=> b!3793848 m!4316421))

(declare-fun m!4316423 () Bool)

(assert (=> b!3793848 m!4316423))

(declare-fun m!4316425 () Bool)

(assert (=> b!3793843 m!4316425))

(declare-fun m!4316427 () Bool)

(assert (=> b!3793829 m!4316427))

(declare-fun m!4316429 () Bool)

(assert (=> b!3793829 m!4316429))

(declare-fun m!4316431 () Bool)

(assert (=> b!3793829 m!4316431))

(declare-fun m!4316433 () Bool)

(assert (=> b!3793829 m!4316433))

(declare-fun m!4316435 () Bool)

(assert (=> b!3793829 m!4316435))

(declare-fun m!4316437 () Bool)

(assert (=> b!3793829 m!4316437))

(declare-fun m!4316439 () Bool)

(assert (=> b!3793829 m!4316439))

(declare-fun m!4316441 () Bool)

(assert (=> b!3793829 m!4316441))

(assert (=> b!3793829 m!4316431))

(declare-fun m!4316443 () Bool)

(assert (=> b!3793829 m!4316443))

(declare-fun m!4316445 () Bool)

(assert (=> b!3793829 m!4316445))

(declare-fun m!4316447 () Bool)

(assert (=> b!3793829 m!4316447))

(declare-fun m!4316449 () Bool)

(assert (=> b!3793829 m!4316449))

(declare-fun m!4316451 () Bool)

(assert (=> b!3793829 m!4316451))

(declare-fun m!4316453 () Bool)

(assert (=> b!3793829 m!4316453))

(declare-fun m!4316455 () Bool)

(assert (=> b!3793829 m!4316455))

(declare-fun m!4316457 () Bool)

(assert (=> b!3793829 m!4316457))

(declare-fun m!4316459 () Bool)

(assert (=> b!3793829 m!4316459))

(declare-fun m!4316461 () Bool)

(assert (=> b!3793829 m!4316461))

(declare-fun m!4316463 () Bool)

(assert (=> b!3793829 m!4316463))

(assert (=> b!3793829 m!4316445))

(declare-fun m!4316465 () Bool)

(assert (=> b!3793829 m!4316465))

(assert (=> b!3793829 m!4316449))

(declare-fun m!4316467 () Bool)

(assert (=> b!3793829 m!4316467))

(declare-fun m!4316469 () Bool)

(assert (=> b!3793829 m!4316469))

(assert (=> b!3793829 m!4316455))

(declare-fun m!4316471 () Bool)

(assert (=> b!3793829 m!4316471))

(declare-fun m!4316473 () Bool)

(assert (=> b!3793829 m!4316473))

(declare-fun m!4316475 () Bool)

(assert (=> b!3793829 m!4316475))

(declare-fun m!4316477 () Bool)

(assert (=> b!3793829 m!4316477))

(declare-fun m!4316479 () Bool)

(assert (=> b!3793829 m!4316479))

(assert (=> b!3793829 m!4316459))

(declare-fun m!4316481 () Bool)

(assert (=> b!3793829 m!4316481))

(declare-fun m!4316483 () Bool)

(assert (=> b!3793829 m!4316483))

(check-sat (not b!3793838) (not b!3793842) (not start!355588) (not b!3793837) b_and!281969 (not b!3793829) (not b!3793833) (not b!3793840) (not b!3793831) (not b!3793836) (not b!3793843) (not b!3793850) b_and!281967 (not b!3793845) (not b!3793846) (not b!3793830) (not b!3793849) (not b!3793832) (not b_next!101917) (not b!3793844) (not b_next!101919) (not b!3793848) (not b!3793847) (not b!3793841))
(check-sat b_and!281967 b_and!281969 (not b_next!101917) (not b_next!101919))
