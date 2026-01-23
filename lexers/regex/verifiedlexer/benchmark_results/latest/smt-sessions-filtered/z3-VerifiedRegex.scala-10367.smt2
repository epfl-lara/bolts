; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537784 () Bool)

(assert start!537784)

(declare-fun b!5099420 () Bool)

(declare-fun e!3180377 () Bool)

(declare-datatypes ((C!28316 0))(
  ( (C!28317 (val!23810 Int)) )
))
(declare-datatypes ((List!58873 0))(
  ( (Nil!58749) (Cons!58749 (h!65197 C!28316) (t!371874 List!58873)) )
))
(declare-datatypes ((tuple2!63444 0))(
  ( (tuple2!63445 (_1!35025 List!58873) (_2!35025 List!58873)) )
))
(declare-fun lt!2096018 () tuple2!63444)

(declare-fun isEmpty!31778 (List!58873) Bool)

(assert (=> b!5099420 (= e!3180377 (not (isEmpty!31778 (_1!35025 lt!2096018))))))

(declare-fun b!5099421 () Bool)

(declare-fun e!3180379 () Bool)

(declare-fun tp!1422210 () Bool)

(assert (=> b!5099421 (= e!3180379 tp!1422210)))

(declare-fun b!5099422 () Bool)

(declare-fun e!3180387 () Bool)

(declare-fun tp!1422213 () Bool)

(assert (=> b!5099422 (= e!3180387 tp!1422213)))

(declare-fun b!5099423 () Bool)

(declare-fun res!2170352 () Bool)

(declare-fun e!3180376 () Bool)

(assert (=> b!5099423 (=> res!2170352 e!3180376)))

(declare-fun input!5654 () List!58873)

(declare-fun isPrefix!5434 (List!58873 List!58873) Bool)

(assert (=> b!5099423 (= res!2170352 (not (isPrefix!5434 (_1!35025 lt!2096018) input!5654)))))

(declare-fun setIsEmpty!29152 () Bool)

(declare-fun setRes!29152 () Bool)

(assert (=> setIsEmpty!29152 setRes!29152))

(declare-fun b!5099424 () Bool)

(declare-fun e!3180381 () Bool)

(declare-fun e!3180374 () Bool)

(assert (=> b!5099424 (= e!3180381 e!3180374)))

(declare-fun res!2170360 () Bool)

(assert (=> b!5099424 (=> (not res!2170360) (not e!3180374))))

(declare-fun lt!2096007 () List!58873)

(assert (=> b!5099424 (= res!2170360 (= lt!2096007 input!5654))))

(declare-fun lt!2096019 () tuple2!63444)

(declare-fun ++!12878 (List!58873 List!58873) List!58873)

(assert (=> b!5099424 (= lt!2096007 (++!12878 (_1!35025 lt!2096019) (_2!35025 lt!2096019)))))

(declare-fun res!2170350 () Bool)

(declare-fun e!3180383 () Bool)

(assert (=> start!537784 (=> (not res!2170350) (not e!3180383))))

(declare-datatypes ((Regex!14029 0))(
  ( (ElementMatch!14029 (c!876135 C!28316)) (Concat!22874 (regOne!28570 Regex!14029) (regTwo!28570 Regex!14029)) (EmptyExpr!14029) (Star!14029 (reg!14358 Regex!14029)) (EmptyLang!14029) (Union!14029 (regOne!28571 Regex!14029) (regTwo!28571 Regex!14029)) )
))
(declare-fun r!12920 () Regex!14029)

(declare-fun validRegex!6156 (Regex!14029) Bool)

(assert (=> start!537784 (= res!2170350 (validRegex!6156 r!12920))))

(assert (=> start!537784 e!3180383))

(assert (=> start!537784 e!3180387))

(declare-fun condSetEmpty!29152 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58874 0))(
  ( (Nil!58750) (Cons!58750 (h!65198 Regex!14029) (t!371875 List!58874)) )
))
(declare-datatypes ((Context!6826 0))(
  ( (Context!6827 (exprs!3913 List!58874)) )
))
(declare-fun z!4303 () (InoxSet Context!6826))

(assert (=> start!537784 (= condSetEmpty!29152 (= z!4303 ((as const (Array Context!6826 Bool)) false)))))

(assert (=> start!537784 setRes!29152))

(declare-fun e!3180380 () Bool)

(assert (=> start!537784 e!3180380))

(declare-fun b!5099425 () Bool)

(assert (=> b!5099425 (= e!3180376 true)))

(declare-fun lt!2096008 () Bool)

(assert (=> b!5099425 (= lt!2096008 (isPrefix!5434 (_1!35025 lt!2096019) input!5654))))

(declare-fun b!5099426 () Bool)

(declare-fun e!3180378 () Bool)

(assert (=> b!5099426 (= e!3180383 e!3180378)))

(declare-fun res!2170354 () Bool)

(assert (=> b!5099426 (=> (not res!2170354) (not e!3180378))))

(declare-datatypes ((List!58875 0))(
  ( (Nil!58751) (Cons!58751 (h!65199 Context!6826) (t!371876 List!58875)) )
))
(declare-fun lt!2096010 () List!58875)

(declare-fun unfocusZipper!371 (List!58875) Regex!14029)

(assert (=> b!5099426 (= res!2170354 (= (unfocusZipper!371 lt!2096010) r!12920))))

(declare-fun toList!8163 ((InoxSet Context!6826)) List!58875)

(assert (=> b!5099426 (= lt!2096010 (toList!8163 z!4303))))

(declare-fun b!5099427 () Bool)

(declare-fun e!3180386 () Bool)

(assert (=> b!5099427 (= e!3180386 (not (isEmpty!31778 (_1!35025 lt!2096019))))))

(declare-fun b!5099428 () Bool)

(assert (=> b!5099428 (= e!3180378 e!3180381)))

(declare-fun res!2170357 () Bool)

(assert (=> b!5099428 (=> (not res!2170357) (not e!3180381))))

(declare-fun lt!2096014 () List!58873)

(assert (=> b!5099428 (= res!2170357 (= lt!2096014 input!5654))))

(assert (=> b!5099428 (= lt!2096014 (++!12878 (_1!35025 lt!2096018) (_2!35025 lt!2096018)))))

(declare-fun findLongestMatch!1859 (Regex!14029 List!58873) tuple2!63444)

(assert (=> b!5099428 (= lt!2096019 (findLongestMatch!1859 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!53 ((InoxSet Context!6826) List!58873) tuple2!63444)

(assert (=> b!5099428 (= lt!2096018 (findLongestMatchZipper!53 z!4303 input!5654))))

(declare-fun b!5099429 () Bool)

(declare-fun tp_is_empty!37323 () Bool)

(declare-fun tp!1422209 () Bool)

(assert (=> b!5099429 (= e!3180380 (and tp_is_empty!37323 tp!1422209))))

(declare-fun b!5099430 () Bool)

(declare-fun e!3180382 () Bool)

(declare-fun lt!2096013 () tuple2!63444)

(declare-fun matchZipper!705 ((InoxSet Context!6826) List!58873) Bool)

(assert (=> b!5099430 (= e!3180382 (matchZipper!705 z!4303 (_1!35025 lt!2096013)))))

(declare-fun b!5099431 () Bool)

(declare-fun e!3180384 () Bool)

(assert (=> b!5099431 (= e!3180384 e!3180376)))

(declare-fun res!2170355 () Bool)

(assert (=> b!5099431 (=> res!2170355 e!3180376)))

(declare-fun lt!2096004 () Int)

(declare-fun lt!2096009 () Int)

(assert (=> b!5099431 (= res!2170355 (or (> lt!2096004 lt!2096009) (> lt!2096009 lt!2096004)))))

(declare-fun size!39331 (List!58873) Int)

(assert (=> b!5099431 (= lt!2096009 (size!39331 (_1!35025 lt!2096018)))))

(assert (=> b!5099431 (= lt!2096004 (size!39331 (_1!35025 lt!2096019)))))

(declare-fun lt!2096017 () Bool)

(declare-fun matchR!6818 (Regex!14029 List!58873) Bool)

(assert (=> b!5099431 (= (matchR!6818 r!12920 (_1!35025 lt!2096018)) lt!2096017)))

(declare-datatypes ((Unit!149782 0))(
  ( (Unit!149783) )
))
(declare-fun lt!2096001 () Unit!149782)

(declare-fun theoremZipperRegexEquiv!203 ((InoxSet Context!6826) List!58875 Regex!14029 List!58873) Unit!149782)

(assert (=> b!5099431 (= lt!2096001 (theoremZipperRegexEquiv!203 z!4303 lt!2096010 r!12920 (_1!35025 lt!2096018)))))

(declare-fun lt!2096006 () Bool)

(assert (=> b!5099431 (= lt!2096006 (matchZipper!705 z!4303 (_1!35025 lt!2096019)))))

(declare-fun lt!2096011 () Unit!149782)

(assert (=> b!5099431 (= lt!2096011 (theoremZipperRegexEquiv!203 z!4303 lt!2096010 r!12920 (_1!35025 lt!2096019)))))

(declare-fun b!5099432 () Bool)

(assert (=> b!5099432 (= e!3180387 tp_is_empty!37323)))

(declare-fun b!5099433 () Bool)

(declare-fun e!3180375 () Bool)

(assert (=> b!5099433 (= e!3180375 e!3180384)))

(declare-fun res!2170349 () Bool)

(assert (=> b!5099433 (=> res!2170349 e!3180384)))

(assert (=> b!5099433 (= res!2170349 e!3180386)))

(declare-fun res!2170351 () Bool)

(assert (=> b!5099433 (=> (not res!2170351) (not e!3180386))))

(assert (=> b!5099433 (= res!2170351 (not lt!2096006))))

(assert (=> b!5099433 (= lt!2096006 (matchR!6818 r!12920 (_1!35025 lt!2096019)))))

(declare-fun b!5099434 () Bool)

(assert (=> b!5099434 (= e!3180374 (not e!3180375))))

(declare-fun res!2170353 () Bool)

(assert (=> b!5099434 (=> res!2170353 e!3180375)))

(assert (=> b!5099434 (= res!2170353 e!3180377)))

(declare-fun res!2170359 () Bool)

(assert (=> b!5099434 (=> (not res!2170359) (not e!3180377))))

(assert (=> b!5099434 (= res!2170359 (not lt!2096017))))

(assert (=> b!5099434 (= lt!2096017 (matchZipper!705 z!4303 (_1!35025 lt!2096018)))))

(declare-fun e!3180385 () Bool)

(assert (=> b!5099434 e!3180385))

(declare-fun res!2170358 () Bool)

(assert (=> b!5099434 (=> res!2170358 e!3180385)))

(declare-fun lt!2096005 () tuple2!63444)

(assert (=> b!5099434 (= res!2170358 (isEmpty!31778 (_1!35025 lt!2096005)))))

(declare-fun lt!2096012 () Int)

(declare-fun lt!2096002 () Int)

(declare-fun findLongestMatchInner!2042 (Regex!14029 List!58873 Int List!58873 List!58873 Int) tuple2!63444)

(assert (=> b!5099434 (= lt!2096005 (findLongestMatchInner!2042 r!12920 Nil!58749 lt!2096012 input!5654 input!5654 lt!2096002))))

(declare-fun lt!2096015 () Unit!149782)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2012 (Regex!14029 List!58873) Unit!149782)

(assert (=> b!5099434 (= lt!2096015 (longestMatchIsAcceptedByMatchOrIsEmpty!2012 r!12920 input!5654))))

(assert (=> b!5099434 e!3180382))

(declare-fun res!2170356 () Bool)

(assert (=> b!5099434 (=> res!2170356 e!3180382)))

(assert (=> b!5099434 (= res!2170356 (isEmpty!31778 (_1!35025 lt!2096013)))))

(declare-fun findLongestMatchInnerZipper!103 ((InoxSet Context!6826) List!58873 Int List!58873 List!58873 Int) tuple2!63444)

(assert (=> b!5099434 (= lt!2096013 (findLongestMatchInnerZipper!103 z!4303 Nil!58749 lt!2096012 input!5654 input!5654 lt!2096002))))

(assert (=> b!5099434 (= lt!2096002 (size!39331 input!5654))))

(assert (=> b!5099434 (= lt!2096012 (size!39331 Nil!58749))))

(declare-fun lt!2096016 () Unit!149782)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2013 ((InoxSet Context!6826) List!58873) Unit!149782)

(assert (=> b!5099434 (= lt!2096016 (longestMatchIsAcceptedByMatchOrIsEmpty!2013 z!4303 input!5654))))

(assert (=> b!5099434 (isPrefix!5434 (_1!35025 lt!2096019) lt!2096007)))

(declare-fun lt!2096003 () Unit!149782)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3492 (List!58873 List!58873) Unit!149782)

(assert (=> b!5099434 (= lt!2096003 (lemmaConcatTwoListThenFirstIsPrefix!3492 (_1!35025 lt!2096019) (_2!35025 lt!2096019)))))

(assert (=> b!5099434 (isPrefix!5434 (_1!35025 lt!2096018) lt!2096014)))

(declare-fun lt!2096020 () Unit!149782)

(assert (=> b!5099434 (= lt!2096020 (lemmaConcatTwoListThenFirstIsPrefix!3492 (_1!35025 lt!2096018) (_2!35025 lt!2096018)))))

(declare-fun b!5099435 () Bool)

(declare-fun tp!1422208 () Bool)

(declare-fun tp!1422212 () Bool)

(assert (=> b!5099435 (= e!3180387 (and tp!1422208 tp!1422212))))

(declare-fun b!5099436 () Bool)

(assert (=> b!5099436 (= e!3180385 (matchR!6818 r!12920 (_1!35025 lt!2096005)))))

(declare-fun b!5099437 () Bool)

(declare-fun tp!1422211 () Bool)

(declare-fun tp!1422214 () Bool)

(assert (=> b!5099437 (= e!3180387 (and tp!1422211 tp!1422214))))

(declare-fun tp!1422215 () Bool)

(declare-fun setElem!29152 () Context!6826)

(declare-fun setNonEmpty!29152 () Bool)

(declare-fun inv!78247 (Context!6826) Bool)

(assert (=> setNonEmpty!29152 (= setRes!29152 (and tp!1422215 (inv!78247 setElem!29152) e!3180379))))

(declare-fun setRest!29152 () (InoxSet Context!6826))

(assert (=> setNonEmpty!29152 (= z!4303 ((_ map or) (store ((as const (Array Context!6826 Bool)) false) setElem!29152 true) setRest!29152))))

(assert (= (and start!537784 res!2170350) b!5099426))

(assert (= (and b!5099426 res!2170354) b!5099428))

(assert (= (and b!5099428 res!2170357) b!5099424))

(assert (= (and b!5099424 res!2170360) b!5099434))

(assert (= (and b!5099434 (not res!2170356)) b!5099430))

(assert (= (and b!5099434 (not res!2170358)) b!5099436))

(assert (= (and b!5099434 res!2170359) b!5099420))

(assert (= (and b!5099434 (not res!2170353)) b!5099433))

(assert (= (and b!5099433 res!2170351) b!5099427))

(assert (= (and b!5099433 (not res!2170349)) b!5099431))

(assert (= (and b!5099431 (not res!2170355)) b!5099423))

(assert (= (and b!5099423 (not res!2170352)) b!5099425))

(get-info :version)

(assert (= (and start!537784 ((_ is ElementMatch!14029) r!12920)) b!5099432))

(assert (= (and start!537784 ((_ is Concat!22874) r!12920)) b!5099435))

(assert (= (and start!537784 ((_ is Star!14029) r!12920)) b!5099422))

(assert (= (and start!537784 ((_ is Union!14029) r!12920)) b!5099437))

(assert (= (and start!537784 condSetEmpty!29152) setIsEmpty!29152))

(assert (= (and start!537784 (not condSetEmpty!29152)) setNonEmpty!29152))

(assert (= setNonEmpty!29152 b!5099421))

(assert (= (and start!537784 ((_ is Cons!58749) input!5654)) b!5099429))

(declare-fun m!6156830 () Bool)

(assert (=> setNonEmpty!29152 m!6156830))

(declare-fun m!6156832 () Bool)

(assert (=> start!537784 m!6156832))

(declare-fun m!6156834 () Bool)

(assert (=> b!5099434 m!6156834))

(declare-fun m!6156836 () Bool)

(assert (=> b!5099434 m!6156836))

(declare-fun m!6156838 () Bool)

(assert (=> b!5099434 m!6156838))

(declare-fun m!6156840 () Bool)

(assert (=> b!5099434 m!6156840))

(declare-fun m!6156842 () Bool)

(assert (=> b!5099434 m!6156842))

(declare-fun m!6156844 () Bool)

(assert (=> b!5099434 m!6156844))

(declare-fun m!6156846 () Bool)

(assert (=> b!5099434 m!6156846))

(declare-fun m!6156848 () Bool)

(assert (=> b!5099434 m!6156848))

(declare-fun m!6156850 () Bool)

(assert (=> b!5099434 m!6156850))

(declare-fun m!6156852 () Bool)

(assert (=> b!5099434 m!6156852))

(declare-fun m!6156854 () Bool)

(assert (=> b!5099434 m!6156854))

(declare-fun m!6156856 () Bool)

(assert (=> b!5099434 m!6156856))

(declare-fun m!6156858 () Bool)

(assert (=> b!5099434 m!6156858))

(declare-fun m!6156860 () Bool)

(assert (=> b!5099430 m!6156860))

(declare-fun m!6156862 () Bool)

(assert (=> b!5099428 m!6156862))

(declare-fun m!6156864 () Bool)

(assert (=> b!5099428 m!6156864))

(declare-fun m!6156866 () Bool)

(assert (=> b!5099428 m!6156866))

(declare-fun m!6156868 () Bool)

(assert (=> b!5099420 m!6156868))

(declare-fun m!6156870 () Bool)

(assert (=> b!5099424 m!6156870))

(declare-fun m!6156872 () Bool)

(assert (=> b!5099425 m!6156872))

(declare-fun m!6156874 () Bool)

(assert (=> b!5099427 m!6156874))

(declare-fun m!6156876 () Bool)

(assert (=> b!5099436 m!6156876))

(declare-fun m!6156878 () Bool)

(assert (=> b!5099426 m!6156878))

(declare-fun m!6156880 () Bool)

(assert (=> b!5099426 m!6156880))

(declare-fun m!6156882 () Bool)

(assert (=> b!5099433 m!6156882))

(declare-fun m!6156884 () Bool)

(assert (=> b!5099423 m!6156884))

(declare-fun m!6156886 () Bool)

(assert (=> b!5099431 m!6156886))

(declare-fun m!6156888 () Bool)

(assert (=> b!5099431 m!6156888))

(declare-fun m!6156890 () Bool)

(assert (=> b!5099431 m!6156890))

(declare-fun m!6156892 () Bool)

(assert (=> b!5099431 m!6156892))

(declare-fun m!6156894 () Bool)

(assert (=> b!5099431 m!6156894))

(declare-fun m!6156896 () Bool)

(assert (=> b!5099431 m!6156896))

(check-sat (not start!537784) (not b!5099437) (not b!5099429) (not b!5099428) (not setNonEmpty!29152) (not b!5099436) (not b!5099425) (not b!5099421) (not b!5099433) (not b!5099422) (not b!5099424) (not b!5099431) (not b!5099434) (not b!5099427) (not b!5099430) (not b!5099435) (not b!5099423) (not b!5099420) tp_is_empty!37323 (not b!5099426))
(check-sat)
