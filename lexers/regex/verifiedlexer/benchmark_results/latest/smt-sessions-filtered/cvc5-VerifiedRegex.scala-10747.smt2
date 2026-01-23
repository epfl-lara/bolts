; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549564 () Bool)

(assert start!549564)

(declare-fun b!5192882 () Bool)

(assert (=> b!5192882 true))

(assert (=> b!5192882 true))

(declare-fun lambda!259675 () Int)

(declare-fun lambda!259674 () Int)

(assert (=> b!5192882 (not (= lambda!259675 lambda!259674))))

(assert (=> b!5192882 true))

(assert (=> b!5192882 true))

(declare-fun b!5192874 () Bool)

(declare-fun e!3234444 () Bool)

(declare-fun tp!1456735 () Bool)

(declare-fun tp!1456741 () Bool)

(assert (=> b!5192874 (= e!3234444 (and tp!1456735 tp!1456741))))

(declare-fun b!5192875 () Bool)

(declare-fun res!2205689 () Bool)

(declare-fun e!3234442 () Bool)

(assert (=> b!5192875 (=> res!2205689 e!3234442)))

(declare-datatypes ((C!29750 0))(
  ( (C!29751 (val!24577 Int)) )
))
(declare-datatypes ((Regex!14740 0))(
  ( (ElementMatch!14740 (c!895119 C!29750)) (Concat!23585 (regOne!29992 Regex!14740) (regTwo!29992 Regex!14740)) (EmptyExpr!14740) (Star!14740 (reg!15069 Regex!14740)) (EmptyLang!14740) (Union!14740 (regOne!29993 Regex!14740) (regTwo!29993 Regex!14740)) )
))
(declare-fun r!7292 () Regex!14740)

(declare-datatypes ((List!60519 0))(
  ( (Nil!60395) (Cons!60395 (h!66843 Regex!14740) (t!373672 List!60519)) )
))
(declare-datatypes ((Context!8248 0))(
  ( (Context!8249 (exprs!4624 List!60519)) )
))
(declare-datatypes ((List!60520 0))(
  ( (Nil!60396) (Cons!60396 (h!66844 Context!8248) (t!373673 List!60520)) )
))
(declare-fun zl!343 () List!60520)

(declare-fun generalisedUnion!669 (List!60519) Regex!14740)

(declare-fun unfocusZipperList!182 (List!60520) List!60519)

(assert (=> b!5192875 (= res!2205689 (not (= r!7292 (generalisedUnion!669 (unfocusZipperList!182 zl!343)))))))

(declare-fun b!5192876 () Bool)

(declare-fun res!2205683 () Bool)

(declare-fun e!3234440 () Bool)

(assert (=> b!5192876 (=> (not res!2205683) (not e!3234440))))

(declare-fun z!1189 () (Set Context!8248))

(declare-fun toList!8524 ((Set Context!8248)) List!60520)

(assert (=> b!5192876 (= res!2205683 (= (toList!8524 z!1189) zl!343))))

(declare-fun b!5192877 () Bool)

(declare-fun res!2205688 () Bool)

(assert (=> b!5192877 (=> (not res!2205688) (not e!3234440))))

(declare-fun unfocusZipper!482 (List!60520) Regex!14740)

(assert (=> b!5192877 (= res!2205688 (= r!7292 (unfocusZipper!482 zl!343)))))

(declare-fun b!5192878 () Bool)

(declare-fun res!2205690 () Bool)

(assert (=> b!5192878 (=> res!2205690 e!3234442)))

(assert (=> b!5192878 (= res!2205690 (or (is-EmptyExpr!14740 r!7292) (is-EmptyLang!14740 r!7292) (is-ElementMatch!14740 r!7292) (is-Union!14740 r!7292) (not (is-Concat!23585 r!7292))))))

(declare-fun b!5192879 () Bool)

(declare-fun e!3234438 () Bool)

(declare-fun tp!1456739 () Bool)

(assert (=> b!5192879 (= e!3234438 tp!1456739)))

(declare-fun tp!1456740 () Bool)

(declare-fun e!3234441 () Bool)

(declare-fun b!5192880 () Bool)

(declare-fun e!3234439 () Bool)

(declare-fun inv!80098 (Context!8248) Bool)

(assert (=> b!5192880 (= e!3234441 (and (inv!80098 (h!66844 zl!343)) e!3234439 tp!1456740))))

(declare-fun setIsEmpty!32815 () Bool)

(declare-fun setRes!32815 () Bool)

(assert (=> setIsEmpty!32815 setRes!32815))

(declare-fun b!5192881 () Bool)

(declare-fun tp!1456738 () Bool)

(assert (=> b!5192881 (= e!3234439 tp!1456738)))

(assert (=> b!5192882 (= e!3234442 true)))

(declare-fun Exists!1921 (Int) Bool)

(assert (=> b!5192882 (= (Exists!1921 lambda!259674) (Exists!1921 lambda!259675))))

(declare-datatypes ((Unit!152314 0))(
  ( (Unit!152315) )
))
(declare-fun lt!2138336 () Unit!152314)

(declare-datatypes ((List!60521 0))(
  ( (Nil!60397) (Cons!60397 (h!66845 C!29750) (t!373674 List!60521)) )
))
(declare-fun s!2326 () List!60521)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!575 (Regex!14740 Regex!14740 List!60521) Unit!152314)

(assert (=> b!5192882 (= lt!2138336 (lemmaExistCutMatchRandMatchRSpecEquivalent!575 (regOne!29992 r!7292) (regTwo!29992 r!7292) s!2326))))

(declare-datatypes ((tuple2!63878 0))(
  ( (tuple2!63879 (_1!35242 List!60521) (_2!35242 List!60521)) )
))
(declare-datatypes ((Option!14851 0))(
  ( (None!14850) (Some!14850 (v!50879 tuple2!63878)) )
))
(declare-fun isDefined!11554 (Option!14851) Bool)

(declare-fun findConcatSeparation!1265 (Regex!14740 Regex!14740 List!60521 List!60521 List!60521) Option!14851)

(assert (=> b!5192882 (= (isDefined!11554 (findConcatSeparation!1265 (regOne!29992 r!7292) (regTwo!29992 r!7292) Nil!60397 s!2326 s!2326)) (Exists!1921 lambda!259674))))

(declare-fun lt!2138338 () Unit!152314)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1029 (Regex!14740 Regex!14740 List!60521) Unit!152314)

(assert (=> b!5192882 (= lt!2138338 (lemmaFindConcatSeparationEquivalentToExists!1029 (regOne!29992 r!7292) (regTwo!29992 r!7292) s!2326))))

(declare-fun setNonEmpty!32815 () Bool)

(declare-fun tp!1456736 () Bool)

(declare-fun setElem!32815 () Context!8248)

(assert (=> setNonEmpty!32815 (= setRes!32815 (and tp!1456736 (inv!80098 setElem!32815) e!3234438))))

(declare-fun setRest!32815 () (Set Context!8248))

(assert (=> setNonEmpty!32815 (= z!1189 (set.union (set.insert setElem!32815 (as set.empty (Set Context!8248))) setRest!32815))))

(declare-fun b!5192883 () Bool)

(declare-fun tp!1456742 () Bool)

(declare-fun tp!1456734 () Bool)

(assert (=> b!5192883 (= e!3234444 (and tp!1456742 tp!1456734))))

(declare-fun res!2205691 () Bool)

(assert (=> start!549564 (=> (not res!2205691) (not e!3234440))))

(declare-fun validRegex!6476 (Regex!14740) Bool)

(assert (=> start!549564 (= res!2205691 (validRegex!6476 r!7292))))

(assert (=> start!549564 e!3234440))

(assert (=> start!549564 e!3234444))

(declare-fun condSetEmpty!32815 () Bool)

(assert (=> start!549564 (= condSetEmpty!32815 (= z!1189 (as set.empty (Set Context!8248))))))

(assert (=> start!549564 setRes!32815))

(assert (=> start!549564 e!3234441))

(declare-fun e!3234443 () Bool)

(assert (=> start!549564 e!3234443))

(declare-fun b!5192884 () Bool)

(declare-fun res!2205687 () Bool)

(assert (=> b!5192884 (=> res!2205687 e!3234442)))

(declare-fun generalisedConcat!409 (List!60519) Regex!14740)

(assert (=> b!5192884 (= res!2205687 (not (= r!7292 (generalisedConcat!409 (exprs!4624 (h!66844 zl!343))))))))

(declare-fun b!5192885 () Bool)

(assert (=> b!5192885 (= e!3234440 (not e!3234442))))

(declare-fun res!2205686 () Bool)

(assert (=> b!5192885 (=> res!2205686 e!3234442)))

(assert (=> b!5192885 (= res!2205686 (not (is-Cons!60396 zl!343)))))

(declare-fun matchR!6925 (Regex!14740 List!60521) Bool)

(declare-fun matchRSpec!1843 (Regex!14740 List!60521) Bool)

(assert (=> b!5192885 (= (matchR!6925 r!7292 s!2326) (matchRSpec!1843 r!7292 s!2326))))

(declare-fun lt!2138337 () Unit!152314)

(declare-fun mainMatchTheorem!1843 (Regex!14740 List!60521) Unit!152314)

(assert (=> b!5192885 (= lt!2138337 (mainMatchTheorem!1843 r!7292 s!2326))))

(declare-fun b!5192886 () Bool)

(declare-fun res!2205685 () Bool)

(assert (=> b!5192886 (=> res!2205685 e!3234442)))

(declare-fun isEmpty!32329 (List!60520) Bool)

(assert (=> b!5192886 (= res!2205685 (not (isEmpty!32329 (t!373673 zl!343))))))

(declare-fun b!5192887 () Bool)

(declare-fun tp_is_empty!38733 () Bool)

(declare-fun tp!1456737 () Bool)

(assert (=> b!5192887 (= e!3234443 (and tp_is_empty!38733 tp!1456737))))

(declare-fun b!5192888 () Bool)

(declare-fun tp!1456743 () Bool)

(assert (=> b!5192888 (= e!3234444 tp!1456743)))

(declare-fun b!5192889 () Bool)

(assert (=> b!5192889 (= e!3234444 tp_is_empty!38733)))

(declare-fun b!5192890 () Bool)

(declare-fun res!2205684 () Bool)

(assert (=> b!5192890 (=> res!2205684 e!3234442)))

(assert (=> b!5192890 (= res!2205684 (not (is-Cons!60395 (exprs!4624 (h!66844 zl!343)))))))

(assert (= (and start!549564 res!2205691) b!5192876))

(assert (= (and b!5192876 res!2205683) b!5192877))

(assert (= (and b!5192877 res!2205688) b!5192885))

(assert (= (and b!5192885 (not res!2205686)) b!5192886))

(assert (= (and b!5192886 (not res!2205685)) b!5192884))

(assert (= (and b!5192884 (not res!2205687)) b!5192890))

(assert (= (and b!5192890 (not res!2205684)) b!5192875))

(assert (= (and b!5192875 (not res!2205689)) b!5192878))

(assert (= (and b!5192878 (not res!2205690)) b!5192882))

(assert (= (and start!549564 (is-ElementMatch!14740 r!7292)) b!5192889))

(assert (= (and start!549564 (is-Concat!23585 r!7292)) b!5192883))

(assert (= (and start!549564 (is-Star!14740 r!7292)) b!5192888))

(assert (= (and start!549564 (is-Union!14740 r!7292)) b!5192874))

(assert (= (and start!549564 condSetEmpty!32815) setIsEmpty!32815))

(assert (= (and start!549564 (not condSetEmpty!32815)) setNonEmpty!32815))

(assert (= setNonEmpty!32815 b!5192879))

(assert (= b!5192880 b!5192881))

(assert (= (and start!549564 (is-Cons!60396 zl!343)) b!5192880))

(assert (= (and start!549564 (is-Cons!60397 s!2326)) b!5192887))

(declare-fun m!6248466 () Bool)

(assert (=> b!5192876 m!6248466))

(declare-fun m!6248468 () Bool)

(assert (=> setNonEmpty!32815 m!6248468))

(declare-fun m!6248470 () Bool)

(assert (=> b!5192882 m!6248470))

(declare-fun m!6248472 () Bool)

(assert (=> b!5192882 m!6248472))

(declare-fun m!6248474 () Bool)

(assert (=> b!5192882 m!6248474))

(declare-fun m!6248476 () Bool)

(assert (=> b!5192882 m!6248476))

(assert (=> b!5192882 m!6248470))

(declare-fun m!6248478 () Bool)

(assert (=> b!5192882 m!6248478))

(assert (=> b!5192882 m!6248474))

(declare-fun m!6248480 () Bool)

(assert (=> b!5192882 m!6248480))

(declare-fun m!6248482 () Bool)

(assert (=> b!5192886 m!6248482))

(declare-fun m!6248484 () Bool)

(assert (=> b!5192877 m!6248484))

(declare-fun m!6248486 () Bool)

(assert (=> b!5192875 m!6248486))

(assert (=> b!5192875 m!6248486))

(declare-fun m!6248488 () Bool)

(assert (=> b!5192875 m!6248488))

(declare-fun m!6248490 () Bool)

(assert (=> start!549564 m!6248490))

(declare-fun m!6248492 () Bool)

(assert (=> b!5192885 m!6248492))

(declare-fun m!6248494 () Bool)

(assert (=> b!5192885 m!6248494))

(declare-fun m!6248496 () Bool)

(assert (=> b!5192885 m!6248496))

(declare-fun m!6248498 () Bool)

(assert (=> b!5192880 m!6248498))

(declare-fun m!6248500 () Bool)

(assert (=> b!5192884 m!6248500))

(push 1)

(assert (not b!5192875))

(assert (not b!5192886))

(assert (not b!5192885))

(assert (not b!5192880))

(assert (not b!5192874))

(assert (not setNonEmpty!32815))

(assert (not b!5192884))

(assert tp_is_empty!38733)

(assert (not b!5192888))

(assert (not b!5192877))

(assert (not b!5192887))

(assert (not start!549564))

(assert (not b!5192876))

(assert (not b!5192879))

(assert (not b!5192882))

(assert (not b!5192883))

(assert (not b!5192881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

