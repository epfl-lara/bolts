; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527458 () Bool)

(assert start!527458)

(declare-fun b!4990436 () Bool)

(declare-fun e!3119057 () Bool)

(declare-datatypes ((C!27752 0))(
  ( (C!27753 (val!23242 Int)) )
))
(declare-datatypes ((List!57857 0))(
  ( (Nil!57733) (Cons!57733 (h!64181 C!27752) (t!370183 List!57857)) )
))
(declare-datatypes ((tuple2!62832 0))(
  ( (tuple2!62833 (_1!34719 List!57857) (_2!34719 List!57857)) )
))
(declare-fun lt!2063919 () tuple2!62832)

(declare-fun isEmpty!31236 (List!57857) Bool)

(assert (=> b!4990436 (= e!3119057 (not (isEmpty!31236 (_1!34719 lt!2063919))))))

(declare-fun b!4990438 () Bool)

(declare-fun e!3119058 () Bool)

(declare-datatypes ((IArray!30601 0))(
  ( (IArray!30602 (innerList!15358 List!57857)) )
))
(declare-datatypes ((Conc!15270 0))(
  ( (Node!15270 (left!42235 Conc!15270) (right!42565 Conc!15270) (csize!30770 Int) (cheight!15481 Int)) (Leaf!25354 (xs!18596 IArray!30601) (csize!30771 Int)) (Empty!15270) )
))
(declare-datatypes ((BalanceConc!29970 0))(
  ( (BalanceConc!29971 (c!851367 Conc!15270)) )
))
(declare-fun totalInput!1012 () BalanceConc!29970)

(declare-fun tp!1398960 () Bool)

(declare-fun inv!75767 (Conc!15270) Bool)

(assert (=> b!4990438 (= e!3119058 (and (inv!75767 (c!851367 totalInput!1012)) tp!1398960))))

(declare-fun b!4990439 () Bool)

(declare-fun e!3119050 () Bool)

(declare-datatypes ((tuple2!62834 0))(
  ( (tuple2!62835 (_1!34720 BalanceConc!29970) (_2!34720 BalanceConc!29970)) )
))
(declare-fun lt!2063914 () tuple2!62834)

(declare-fun isEmpty!31237 (BalanceConc!29970) Bool)

(assert (=> b!4990439 (= e!3119050 (not (isEmpty!31237 (_1!34720 lt!2063914))))))

(declare-fun b!4990440 () Bool)

(declare-fun e!3119062 () Bool)

(declare-fun e!3119054 () Bool)

(assert (=> b!4990440 (= e!3119062 e!3119054)))

(declare-fun res!2130537 () Bool)

(assert (=> b!4990440 (=> (not res!2130537) (not e!3119054))))

(declare-fun lt!2063930 () List!57857)

(declare-fun lt!2063922 () List!57857)

(declare-fun isSuffix!1317 (List!57857 List!57857) Bool)

(assert (=> b!4990440 (= res!2130537 (isSuffix!1317 lt!2063930 lt!2063922))))

(declare-fun list!18554 (BalanceConc!29970) List!57857)

(assert (=> b!4990440 (= lt!2063922 (list!18554 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!29970)

(assert (=> b!4990440 (= lt!2063930 (list!18554 input!5597))))

(declare-fun lt!2063913 () Int)

(declare-fun b!4990441 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13751 0))(
  ( (ElementMatch!13751 (c!851368 C!27752)) (Concat!22544 (regOne!28014 Regex!13751) (regTwo!28014 Regex!13751)) (EmptyExpr!13751) (Star!13751 (reg!14080 Regex!13751)) (EmptyLang!13751) (Union!13751 (regOne!28015 Regex!13751) (regTwo!28015 Regex!13751)) )
))
(declare-datatypes ((List!57858 0))(
  ( (Nil!57734) (Cons!57734 (h!64182 Regex!13751) (t!370184 List!57858)) )
))
(declare-datatypes ((Context!6352 0))(
  ( (Context!6353 (exprs!3676 List!57858)) )
))
(declare-fun z!4183 () (InoxSet Context!6352))

(declare-fun e!3119059 () Bool)

(declare-fun lt!2063918 () Int)

(declare-fun matchZipper!527 ((InoxSet Context!6352) List!57857) Bool)

(declare-fun take!616 (List!57857 Int) List!57857)

(declare-fun drop!2414 (List!57857 Int) List!57857)

(assert (=> b!4990441 (= e!3119059 (matchZipper!527 z!4183 (take!616 (drop!2414 lt!2063922 lt!2063913) lt!2063918)))))

(declare-fun b!4990442 () Bool)

(declare-fun res!2130528 () Bool)

(declare-fun e!3119053 () Bool)

(assert (=> b!4990442 (=> res!2130528 e!3119053)))

(declare-fun lt!2063936 () List!57857)

(declare-fun isPrefix!5308 (List!57857 List!57857) Bool)

(assert (=> b!4990442 (= res!2130528 (not (isPrefix!5308 lt!2063936 lt!2063930)))))

(declare-fun b!4990443 () Bool)

(declare-fun e!3119052 () Bool)

(assert (=> b!4990443 (= e!3119052 e!3119053)))

(declare-fun res!2130539 () Bool)

(assert (=> b!4990443 (=> res!2130539 e!3119053)))

(declare-fun lt!2063935 () Int)

(declare-fun lt!2063925 () Int)

(assert (=> b!4990443 (= res!2130539 (or (> lt!2063935 lt!2063925) (<= lt!2063925 lt!2063935)))))

(declare-fun size!38354 (BalanceConc!29970) Int)

(assert (=> b!4990443 (= lt!2063925 (size!38354 (_1!34720 lt!2063914)))))

(declare-fun size!38355 (List!57857) Int)

(assert (=> b!4990443 (= lt!2063935 (size!38355 (_1!34719 lt!2063919)))))

(declare-fun r!12727 () Regex!13751)

(declare-fun lt!2063934 () Bool)

(declare-fun matchR!6723 (Regex!13751 List!57857) Bool)

(assert (=> b!4990443 (= (matchR!6723 r!12727 lt!2063936) lt!2063934)))

(declare-datatypes ((List!57859 0))(
  ( (Nil!57735) (Cons!57735 (h!64183 Context!6352) (t!370185 List!57859)) )
))
(declare-fun lt!2063927 () List!57859)

(declare-datatypes ((Unit!148867 0))(
  ( (Unit!148868) )
))
(declare-fun lt!2063931 () Unit!148867)

(declare-fun theoremZipperRegexEquiv!137 ((InoxSet Context!6352) List!57859 Regex!13751 List!57857) Unit!148867)

(assert (=> b!4990443 (= lt!2063931 (theoremZipperRegexEquiv!137 z!4183 lt!2063927 r!12727 lt!2063936))))

(declare-fun lt!2063912 () Bool)

(assert (=> b!4990443 (= lt!2063912 (matchZipper!527 z!4183 (_1!34719 lt!2063919)))))

(declare-fun lt!2063932 () Unit!148867)

(assert (=> b!4990443 (= lt!2063932 (theoremZipperRegexEquiv!137 z!4183 lt!2063927 r!12727 (_1!34719 lt!2063919)))))

(declare-fun b!4990444 () Bool)

(declare-fun e!3119056 () Bool)

(assert (=> b!4990444 (= e!3119056 e!3119062)))

(declare-fun res!2130534 () Bool)

(assert (=> b!4990444 (=> (not res!2130534) (not e!3119062))))

(declare-fun unfocusZipper!278 (List!57859) Regex!13751)

(assert (=> b!4990444 (= res!2130534 (= (unfocusZipper!278 lt!2063927) r!12727))))

(declare-fun toList!8036 ((InoxSet Context!6352)) List!57859)

(assert (=> b!4990444 (= lt!2063927 (toList!8036 z!4183))))

(declare-fun b!4990445 () Bool)

(declare-fun e!3119060 () Bool)

(declare-fun lt!2063921 () tuple2!62832)

(assert (=> b!4990445 (= e!3119060 (matchR!6723 r!12727 (_1!34719 lt!2063921)))))

(declare-fun b!4990446 () Bool)

(declare-fun e!3119051 () Bool)

(declare-fun e!3119048 () Bool)

(assert (=> b!4990446 (= e!3119051 e!3119048)))

(declare-fun res!2130536 () Bool)

(assert (=> b!4990446 (=> (not res!2130536) (not e!3119048))))

(declare-fun lt!2063923 () List!57857)

(assert (=> b!4990446 (= res!2130536 (= lt!2063923 lt!2063930))))

(declare-fun ++!12595 (List!57857 List!57857) List!57857)

(assert (=> b!4990446 (= lt!2063923 (++!12595 (_1!34719 lt!2063919) (_2!34719 lt!2063919)))))

(declare-fun b!4990447 () Bool)

(declare-fun e!3119049 () Bool)

(declare-fun tp!1398966 () Bool)

(declare-fun tp!1398964 () Bool)

(assert (=> b!4990447 (= e!3119049 (and tp!1398966 tp!1398964))))

(declare-fun setNonEmpty!28208 () Bool)

(declare-fun setRes!28208 () Bool)

(declare-fun setElem!28208 () Context!6352)

(declare-fun e!3119055 () Bool)

(declare-fun tp!1398962 () Bool)

(declare-fun inv!75768 (Context!6352) Bool)

(assert (=> setNonEmpty!28208 (= setRes!28208 (and tp!1398962 (inv!75768 setElem!28208) e!3119055))))

(declare-fun setRest!28208 () (InoxSet Context!6352))

(assert (=> setNonEmpty!28208 (= z!4183 ((_ map or) (store ((as const (Array Context!6352 Bool)) false) setElem!28208 true) setRest!28208))))

(declare-fun b!4990437 () Bool)

(declare-fun tp!1398963 () Bool)

(declare-fun tp!1398959 () Bool)

(assert (=> b!4990437 (= e!3119049 (and tp!1398963 tp!1398959))))

(declare-fun res!2130533 () Bool)

(assert (=> start!527458 (=> (not res!2130533) (not e!3119056))))

(declare-fun validRegex!6048 (Regex!13751) Bool)

(assert (=> start!527458 (= res!2130533 (validRegex!6048 r!12727))))

(assert (=> start!527458 e!3119056))

(assert (=> start!527458 e!3119049))

(declare-fun e!3119061 () Bool)

(declare-fun inv!75769 (BalanceConc!29970) Bool)

(assert (=> start!527458 (and (inv!75769 input!5597) e!3119061)))

(declare-fun condSetEmpty!28208 () Bool)

(assert (=> start!527458 (= condSetEmpty!28208 (= z!4183 ((as const (Array Context!6352 Bool)) false)))))

(assert (=> start!527458 setRes!28208))

(assert (=> start!527458 (and (inv!75769 totalInput!1012) e!3119058)))

(declare-fun b!4990448 () Bool)

(declare-fun e!3119063 () Bool)

(assert (=> b!4990448 (= e!3119063 e!3119052)))

(declare-fun res!2130535 () Bool)

(assert (=> b!4990448 (=> res!2130535 e!3119052)))

(assert (=> b!4990448 (= res!2130535 e!3119057)))

(declare-fun res!2130530 () Bool)

(assert (=> b!4990448 (=> (not res!2130530) (not e!3119057))))

(assert (=> b!4990448 (= res!2130530 (not lt!2063912))))

(assert (=> b!4990448 (= lt!2063912 (matchR!6723 r!12727 (_1!34719 lt!2063919)))))

(declare-fun b!4990449 () Bool)

(declare-fun tp_is_empty!36499 () Bool)

(assert (=> b!4990449 (= e!3119049 tp_is_empty!36499)))

(declare-fun b!4990450 () Bool)

(declare-fun tp!1398961 () Bool)

(assert (=> b!4990450 (= e!3119061 (and (inv!75767 (c!851367 input!5597)) tp!1398961))))

(declare-fun b!4990451 () Bool)

(assert (=> b!4990451 (= e!3119048 (not e!3119063))))

(declare-fun res!2130531 () Bool)

(assert (=> b!4990451 (=> res!2130531 e!3119063)))

(assert (=> b!4990451 (= res!2130531 e!3119050)))

(declare-fun res!2130532 () Bool)

(assert (=> b!4990451 (=> (not res!2130532) (not e!3119050))))

(assert (=> b!4990451 (= res!2130532 (not lt!2063934))))

(assert (=> b!4990451 (= lt!2063934 (matchZipper!527 z!4183 lt!2063936))))

(assert (=> b!4990451 e!3119060))

(declare-fun res!2130527 () Bool)

(assert (=> b!4990451 (=> res!2130527 e!3119060)))

(assert (=> b!4990451 (= res!2130527 (isEmpty!31236 (_1!34719 lt!2063921)))))

(declare-fun findLongestMatchInner!1940 (Regex!13751 List!57857 Int List!57857 List!57857 Int) tuple2!62832)

(assert (=> b!4990451 (= lt!2063921 (findLongestMatchInner!1940 r!12727 Nil!57733 (size!38355 Nil!57733) lt!2063930 lt!2063930 (size!38355 lt!2063930)))))

(declare-fun lt!2063915 () Unit!148867)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1901 (Regex!13751 List!57857) Unit!148867)

(assert (=> b!4990451 (= lt!2063915 (longestMatchIsAcceptedByMatchOrIsEmpty!1901 r!12727 lt!2063930))))

(assert (=> b!4990451 e!3119059))

(declare-fun res!2130529 () Bool)

(assert (=> b!4990451 (=> res!2130529 e!3119059)))

(assert (=> b!4990451 (= res!2130529 (= lt!2063918 0))))

(declare-fun lt!2063916 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!91 ((InoxSet Context!6352) Int BalanceConc!29970 Int) Int)

(assert (=> b!4990451 (= lt!2063918 (findLongestMatchInnerZipperFastV2!91 z!4183 lt!2063913 totalInput!1012 lt!2063916))))

(declare-fun lt!2063928 () Unit!148867)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!18 ((InoxSet Context!6352) Int BalanceConc!29970) Unit!148867)

(assert (=> b!4990451 (= lt!2063928 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!18 z!4183 lt!2063913 totalInput!1012))))

(assert (=> b!4990451 (isPrefix!5308 (take!616 lt!2063922 lt!2063913) lt!2063922)))

(declare-fun lt!2063924 () Unit!148867)

(declare-fun lemmaTakeIsPrefix!110 (List!57857 Int) Unit!148867)

(assert (=> b!4990451 (= lt!2063924 (lemmaTakeIsPrefix!110 lt!2063922 lt!2063913))))

(assert (=> b!4990451 (isPrefix!5308 (_1!34719 lt!2063919) lt!2063923)))

(declare-fun lt!2063917 () Unit!148867)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3406 (List!57857 List!57857) Unit!148867)

(assert (=> b!4990451 (= lt!2063917 (lemmaConcatTwoListThenFirstIsPrefix!3406 (_1!34719 lt!2063919) (_2!34719 lt!2063919)))))

(declare-fun lt!2063920 () List!57857)

(assert (=> b!4990451 (isPrefix!5308 lt!2063936 lt!2063920)))

(declare-fun lt!2063933 () Unit!148867)

(declare-fun lt!2063926 () List!57857)

(assert (=> b!4990451 (= lt!2063933 (lemmaConcatTwoListThenFirstIsPrefix!3406 lt!2063936 lt!2063926))))

(declare-fun b!4990452 () Bool)

(declare-fun tp!1398958 () Bool)

(assert (=> b!4990452 (= e!3119055 tp!1398958)))

(declare-fun b!4990453 () Bool)

(declare-fun res!2130538 () Bool)

(assert (=> b!4990453 (=> res!2130538 e!3119053)))

(assert (=> b!4990453 (= res!2130538 (not (isPrefix!5308 (_1!34719 lt!2063919) lt!2063930)))))

(declare-fun b!4990454 () Bool)

(assert (=> b!4990454 (= e!3119053 true)))

(declare-fun lt!2063929 () Int)

(assert (=> b!4990454 (= lt!2063929 (size!38355 lt!2063936))))

(declare-fun setIsEmpty!28208 () Bool)

(assert (=> setIsEmpty!28208 setRes!28208))

(declare-fun b!4990455 () Bool)

(declare-fun tp!1398965 () Bool)

(assert (=> b!4990455 (= e!3119049 tp!1398965)))

(declare-fun b!4990456 () Bool)

(assert (=> b!4990456 (= e!3119054 e!3119051)))

(declare-fun res!2130526 () Bool)

(assert (=> b!4990456 (=> (not res!2130526) (not e!3119051))))

(assert (=> b!4990456 (= res!2130526 (= lt!2063920 lt!2063930))))

(assert (=> b!4990456 (= lt!2063920 (++!12595 lt!2063936 lt!2063926))))

(assert (=> b!4990456 (= lt!2063926 (list!18554 (_2!34720 lt!2063914)))))

(assert (=> b!4990456 (= lt!2063936 (list!18554 (_1!34720 lt!2063914)))))

(declare-fun findLongestMatch!1764 (Regex!13751 List!57857) tuple2!62832)

(assert (=> b!4990456 (= lt!2063919 (findLongestMatch!1764 r!12727 lt!2063930))))

(assert (=> b!4990456 (= lt!2063913 (- lt!2063916 (size!38354 input!5597)))))

(assert (=> b!4990456 (= lt!2063916 (size!38354 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!53 ((InoxSet Context!6352) BalanceConc!29970 BalanceConc!29970) tuple2!62834)

(assert (=> b!4990456 (= lt!2063914 (findLongestMatchZipperFastV2!53 z!4183 input!5597 totalInput!1012))))

(assert (= (and start!527458 res!2130533) b!4990444))

(assert (= (and b!4990444 res!2130534) b!4990440))

(assert (= (and b!4990440 res!2130537) b!4990456))

(assert (= (and b!4990456 res!2130526) b!4990446))

(assert (= (and b!4990446 res!2130536) b!4990451))

(assert (= (and b!4990451 (not res!2130529)) b!4990441))

(assert (= (and b!4990451 (not res!2130527)) b!4990445))

(assert (= (and b!4990451 res!2130532) b!4990439))

(assert (= (and b!4990451 (not res!2130531)) b!4990448))

(assert (= (and b!4990448 res!2130530) b!4990436))

(assert (= (and b!4990448 (not res!2130535)) b!4990443))

(assert (= (and b!4990443 (not res!2130539)) b!4990453))

(assert (= (and b!4990453 (not res!2130538)) b!4990442))

(assert (= (and b!4990442 (not res!2130528)) b!4990454))

(get-info :version)

(assert (= (and start!527458 ((_ is ElementMatch!13751) r!12727)) b!4990449))

(assert (= (and start!527458 ((_ is Concat!22544) r!12727)) b!4990437))

(assert (= (and start!527458 ((_ is Star!13751) r!12727)) b!4990455))

(assert (= (and start!527458 ((_ is Union!13751) r!12727)) b!4990447))

(assert (= start!527458 b!4990450))

(assert (= (and start!527458 condSetEmpty!28208) setIsEmpty!28208))

(assert (= (and start!527458 (not condSetEmpty!28208)) setNonEmpty!28208))

(assert (= setNonEmpty!28208 b!4990452))

(assert (= start!527458 b!4990438))

(declare-fun m!6022974 () Bool)

(assert (=> b!4990439 m!6022974))

(declare-fun m!6022976 () Bool)

(assert (=> b!4990456 m!6022976))

(declare-fun m!6022978 () Bool)

(assert (=> b!4990456 m!6022978))

(declare-fun m!6022980 () Bool)

(assert (=> b!4990456 m!6022980))

(declare-fun m!6022982 () Bool)

(assert (=> b!4990456 m!6022982))

(declare-fun m!6022984 () Bool)

(assert (=> b!4990456 m!6022984))

(declare-fun m!6022986 () Bool)

(assert (=> b!4990456 m!6022986))

(declare-fun m!6022988 () Bool)

(assert (=> b!4990456 m!6022988))

(declare-fun m!6022990 () Bool)

(assert (=> b!4990440 m!6022990))

(declare-fun m!6022992 () Bool)

(assert (=> b!4990440 m!6022992))

(declare-fun m!6022994 () Bool)

(assert (=> b!4990440 m!6022994))

(declare-fun m!6022996 () Bool)

(assert (=> b!4990436 m!6022996))

(declare-fun m!6022998 () Bool)

(assert (=> b!4990443 m!6022998))

(declare-fun m!6023000 () Bool)

(assert (=> b!4990443 m!6023000))

(declare-fun m!6023002 () Bool)

(assert (=> b!4990443 m!6023002))

(declare-fun m!6023004 () Bool)

(assert (=> b!4990443 m!6023004))

(declare-fun m!6023006 () Bool)

(assert (=> b!4990443 m!6023006))

(declare-fun m!6023008 () Bool)

(assert (=> b!4990443 m!6023008))

(declare-fun m!6023010 () Bool)

(assert (=> setNonEmpty!28208 m!6023010))

(declare-fun m!6023012 () Bool)

(assert (=> start!527458 m!6023012))

(declare-fun m!6023014 () Bool)

(assert (=> start!527458 m!6023014))

(declare-fun m!6023016 () Bool)

(assert (=> start!527458 m!6023016))

(declare-fun m!6023018 () Bool)

(assert (=> b!4990441 m!6023018))

(assert (=> b!4990441 m!6023018))

(declare-fun m!6023020 () Bool)

(assert (=> b!4990441 m!6023020))

(assert (=> b!4990441 m!6023020))

(declare-fun m!6023022 () Bool)

(assert (=> b!4990441 m!6023022))

(declare-fun m!6023024 () Bool)

(assert (=> b!4990454 m!6023024))

(declare-fun m!6023026 () Bool)

(assert (=> b!4990451 m!6023026))

(declare-fun m!6023028 () Bool)

(assert (=> b!4990451 m!6023028))

(declare-fun m!6023030 () Bool)

(assert (=> b!4990451 m!6023030))

(declare-fun m!6023032 () Bool)

(assert (=> b!4990451 m!6023032))

(declare-fun m!6023034 () Bool)

(assert (=> b!4990451 m!6023034))

(declare-fun m!6023036 () Bool)

(assert (=> b!4990451 m!6023036))

(declare-fun m!6023038 () Bool)

(assert (=> b!4990451 m!6023038))

(declare-fun m!6023040 () Bool)

(assert (=> b!4990451 m!6023040))

(declare-fun m!6023042 () Bool)

(assert (=> b!4990451 m!6023042))

(declare-fun m!6023044 () Bool)

(assert (=> b!4990451 m!6023044))

(declare-fun m!6023046 () Bool)

(assert (=> b!4990451 m!6023046))

(declare-fun m!6023048 () Bool)

(assert (=> b!4990451 m!6023048))

(declare-fun m!6023050 () Bool)

(assert (=> b!4990451 m!6023050))

(assert (=> b!4990451 m!6023026))

(assert (=> b!4990451 m!6023030))

(declare-fun m!6023052 () Bool)

(assert (=> b!4990451 m!6023052))

(assert (=> b!4990451 m!6023032))

(declare-fun m!6023054 () Bool)

(assert (=> b!4990451 m!6023054))

(declare-fun m!6023056 () Bool)

(assert (=> b!4990438 m!6023056))

(declare-fun m!6023058 () Bool)

(assert (=> b!4990442 m!6023058))

(declare-fun m!6023060 () Bool)

(assert (=> b!4990450 m!6023060))

(declare-fun m!6023062 () Bool)

(assert (=> b!4990444 m!6023062))

(declare-fun m!6023064 () Bool)

(assert (=> b!4990444 m!6023064))

(declare-fun m!6023066 () Bool)

(assert (=> b!4990445 m!6023066))

(declare-fun m!6023068 () Bool)

(assert (=> b!4990448 m!6023068))

(declare-fun m!6023070 () Bool)

(assert (=> b!4990453 m!6023070))

(declare-fun m!6023072 () Bool)

(assert (=> b!4990446 m!6023072))

(check-sat (not b!4990439) (not b!4990451) (not b!4990437) (not b!4990447) (not b!4990442) (not b!4990443) (not b!4990446) (not b!4990448) (not b!4990445) (not b!4990440) tp_is_empty!36499 (not b!4990450) (not b!4990438) (not b!4990436) (not b!4990455) (not setNonEmpty!28208) (not b!4990453) (not b!4990454) (not b!4990444) (not start!527458) (not b!4990456) (not b!4990452) (not b!4990441))
(check-sat)
